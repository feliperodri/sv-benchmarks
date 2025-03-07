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
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
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
struct net_device;
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
typedef atomic64_t atomic_long_t;
typedef int pao_T__;
typedef int pao_T_____0;
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
struct static_key {
   atomic_t enabled ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_33 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_33 seqlock_t;
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
struct bio_vec;
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
struct __anonstruct_ldv_13760_129 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_13762_128 {
   struct __anonstruct_ldv_13760_129 ldv_13760 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_13762_128 ldv_13762 ;
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
struct __anonstruct_ldv_15969_157 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_15975_158 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_15976_156 {
   struct __anonstruct_ldv_15969_157 ldv_15969 ;
   struct __anonstruct_ldv_15975_158 ldv_15975 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_15976_156 ldv_15976 ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct iwl_trans;
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
struct iwl_cfg;
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
union __anonunion_ldv_17779_159 {
   struct iovec const *iov ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion_ldv_17779_159 ldv_17779 ;
   unsigned long nr_segs ;
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
enum ldv_15794 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_15794 socket_state;
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
   int (*set_peek_off)(struct sock * , int ) ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct sk_buff;
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
struct user_struct;
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
typedef u64 netdev_features_t;
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_head {
   struct list_head node_list ;
};
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
struct __anonstruct_sigset_t_162 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_162 sigset_t;
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
struct __anonstruct__kill_164 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_165 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_166 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_167 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_168 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_169 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_170 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_163 {
   int _pad[28U] ;
   struct __anonstruct__kill_164 _kill ;
   struct __anonstruct__timer_165 _timer ;
   struct __anonstruct__rt_166 _rt ;
   struct __anonstruct__sigchld_167 _sigchld ;
   struct __anonstruct__sigfault_168 _sigfault ;
   struct __anonstruct__sigpoll_169 _sigpoll ;
   struct __anonstruct__sigsys_170 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_163 _sifields ;
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
union __anonunion_ldv_24309_173 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_24317_174 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_24330_176 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_24331_175 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_24330_176 ldv_24330 ;
};
union __anonunion_type_data_177 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_179 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_24346_178 {
   union __anonunion_payload_179 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_24309_173 ldv_24309 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_24317_174 ldv_24317 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_24331_175 ldv_24331 ;
   union __anonunion_type_data_177 type_data ;
   union __anonunion_ldv_24346_178 ldv_24346 ;
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
struct uts_namespace;
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
typedef unsigned int sk_buff_data_t;
struct __anonstruct_ldv_26092_184 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion_ldv_26093_183 {
   u64 v64 ;
   struct __anonstruct_ldv_26092_184 ldv_26092 ;
};
struct skb_mstamp {
   union __anonunion_ldv_26093_183 ldv_26093 ;
};
union __anonunion_ldv_26112_185 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct sec_path;
struct __anonstruct_ldv_26128_187 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_26129_186 {
   __wsum csum ;
   struct __anonstruct_ldv_26128_187 ldv_26128 ;
};
union __anonunion_ldv_26168_188 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion_ldv_26174_189 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion_ldv_26112_185 ldv_26112 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion_ldv_26129_186 ldv_26129 ;
   __u32 priority ;
   unsigned char ignore_df : 1 ;
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
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_hash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char encapsulation : 1 ;
   unsigned char encap_hdr_csum : 1 ;
   unsigned char csum_valid : 1 ;
   unsigned char csum_complete_sw : 1 ;
   union __anonunion_ldv_26168_188 ldv_26168 ;
   __u32 secmark ;
   union __anonunion_ldv_26174_189 ldv_26174 ;
   __be16 inner_protocol ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct ieee80211_mcs_info {
   u8 rx_mask[10U] ;
   __le16 rx_highest ;
   u8 tx_params ;
   u8 reserved[3U] ;
};
struct ieee80211_ht_cap {
   __le16 cap_info ;
   u8 ampdu_params_info ;
   struct ieee80211_mcs_info mcs ;
   __le16 extended_ht_cap_info ;
   __le32 tx_BF_cap_info ;
   u8 antenna_selection_info ;
};
struct ieee80211_vht_mcs_info {
   __le16 rx_mcs_map ;
   __le16 rx_highest ;
   __le16 tx_mcs_map ;
   __le16 tx_highest ;
};
struct ieee80211_vht_cap {
   __le32 vht_cap_info ;
   struct ieee80211_vht_mcs_info supp_mcs ;
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
    DEV_PM_QOS_RESUME_LATENCY = 1,
    DEV_PM_QOS_LATENCY_TOLERANCE = 2,
    DEV_PM_QOS_FLAGS = 3
} ;
union __anonunion_data_226 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_226 data ;
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
   s32 no_constraint_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints resume_latency ;
   struct pm_qos_constraints latency_tolerance ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *resume_latency_req ;
   struct dev_pm_qos_request *latency_tolerance_req ;
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
struct __anonstruct_sync_serial_settings_227 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_227 sync_serial_settings;
struct __anonstruct_te1_settings_228 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_228 te1_settings;
struct __anonstruct_raw_hdlc_proto_229 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_229 raw_hdlc_proto;
struct __anonstruct_fr_proto_230 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_230 fr_proto;
struct __anonstruct_fr_proto_pvc_231 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_231 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_232 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_232 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_233 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_233 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_234 {
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
   union __anonunion_ifs_ifsu_234 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_235 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_236 {
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
   union __anonunion_ifr_ifrn_235 ifr_ifrn ;
   union __anonunion_ifr_ifru_236 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_28872_239 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_28873_238 {
   struct __anonstruct_ldv_28872_239 ldv_28872 ;
};
struct lockref {
   union __anonunion_ldv_28873_238 ldv_28873 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_28896_241 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_28898_240 {
   struct __anonstruct_ldv_28896_241 ldv_28896 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_28898_240 ldv_28898 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_242 {
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
   union __anonunion_d_u_242 d_u ;
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
struct __anonstruct_ldv_29259_244 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_29261_243 {
   struct __anonstruct_ldv_29259_244 ldv_29259 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_29261_243 ldv_29261 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
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
struct block_device;
struct cgroup_subsys_state;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
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
struct __anonstruct_kprojid_t_245 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_245 kprojid_t;
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
union __anonunion_ldv_29786_246 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_29786_246 ldv_29786 ;
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
union __anonunion_ldv_30200_249 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_30220_250 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_30237_251 {
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
   union __anonunion_ldv_30200_249 ldv_30200 ;
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
   union __anonunion_ldv_30220_250 ldv_30220 ;
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
   union __anonunion_ldv_30237_251 ldv_30237 ;
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
union __anonunion_f_u_252 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_252 f_u ;
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
struct __anonstruct_afs_254 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_253 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_254 afs ;
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
   union __anonunion_fl_u_253 fl_u ;
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
   u32 (*get_rxfh_key_size)(struct net_device * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh)(struct net_device * , u32 * , u8 * ) ;
   int (*set_rxfh)(struct net_device * , u32 const * , u8 const * ) ;
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
   u64 mibs[36U] ;
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
   unsigned long mibs[103U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
struct proc_dir_entry;
struct netns_mib {
   struct tcp_mib *tcp_statistics ;
   struct ipstats_mib *ip_statistics ;
   struct linux_mib *net_statistics ;
   struct udp_mib *udp_statistics ;
   struct udp_mib *udplite_statistics ;
   struct icmp_mib *icmp_statistics ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6 ;
   struct udp_mib *udplite_stats_in6 ;
   struct ipstats_mib *ipv6_statistics ;
   struct icmpv6_mib *icmpv6_statistics ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics ;
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
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
};
struct ping_group_range {
   seqlock_t lock ;
   kgid_t range[2U] ;
};
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
   struct local_ports ip_local_ports ;
   int sysctl_tcp_ecn ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   int sysctl_fwmark_reflect ;
   int sysctl_tcp_fwmark_accept ;
   struct ping_group_range ping_group_range ;
   atomic_t dev_addr_genid ;
   unsigned long *sysctl_local_reserved_ports ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
   atomic_t rt_genid ;
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
   int flowlabel_consistency ;
   int icmpv6_time ;
   int anycast_src_echo_reply ;
   int fwmark_reflect ;
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
   atomic_t rt_genid ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct netns_sysctl_lowpan {
   struct ctl_table_header *frags_hdr ;
};
struct netns_ieee802154_lowpan {
   struct netns_sysctl_lowpan sysctl ;
   struct netns_frags frags ;
   u16 max_dsize ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics ;
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
   bool ulog_warn_deprecated ;
   bool ebt_ulog_warn_deprecated ;
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
struct ct_pcpu {
   spinlock_t lock ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct hlist_nulls_head tmpl ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_events ;
   int sysctl_acct ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int htable_size ;
   seqcount_t generation ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct ct_pcpu *pcpu_lists ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   struct nf_ip_net nf_ct_proto ;
   unsigned int labels_used ;
   u8 label_words ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
};
struct nft_af_info;
struct netns_nftables {
   struct list_head af_info ;
   struct list_head commit_list ;
   struct nft_af_info *ipv4 ;
   struct nft_af_info *ipv6 ;
   struct nft_af_info *inet ;
   struct nft_af_info *arp ;
   struct nft_af_info *bridge ;
   u8 gencursor ;
   u8 genctr ;
};
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct flow_cache_percpu {
   struct hlist_head *hash_table ;
   int hash_count ;
   u32 hash_rnd ;
   int hash_rnd_recalc ;
   struct tasklet_struct flush_tasklet ;
};
struct flow_cache {
   u32 hash_shift ;
   struct flow_cache_percpu *percpu ;
   struct notifier_block hotcpu_notifier ;
   int low_watermark ;
   int high_watermark ;
   struct timer_list rnd_timer ;
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
   spinlock_t xfrm_state_lock ;
   rwlock_t xfrm_policy_lock ;
   struct mutex xfrm_cfg_mutex ;
   struct flow_cache flow_cache_global ;
   atomic_t flow_cache_genid ;
   struct list_head flow_cache_gc_list ;
   spinlock_t flow_cache_gc_lock ;
   struct work_struct flow_cache_gc_work ;
   struct work_struct flow_cache_flush_work ;
   struct mutex flow_flush_sem ;
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
   unsigned int dev_unreg_count ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_ieee802154_lowpan ieee802154_lowpan ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_nf nf ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nftables nft ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
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
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_t count ;
   unsigned int *pcpu_count ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_kill ;
   struct callback_head rcu ;
};
struct cgroup_root;
struct cgroup_subsys;
struct cgroup;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   struct cgroup_subsys *ss ;
   struct percpu_ref refcnt ;
   struct cgroup_subsys_state *parent ;
   struct list_head sibling ;
   struct list_head children ;
   int id ;
   unsigned int flags ;
   u64 serial_nr ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
};
struct cgroup {
   struct cgroup_subsys_state self ;
   unsigned long flags ;
   int id ;
   int populated_cnt ;
   struct kernfs_node *kn ;
   struct kernfs_node *populated_kn ;
   unsigned int child_subsys_mask ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroup_root *root ;
   struct list_head cset_links ;
   struct list_head e_csets[12U] ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   wait_queue_head_t offline_waitq ;
};
struct cgroup_root {
   struct kernfs_root *kf_root ;
   unsigned int subsys_mask ;
   int hierarchy_id ;
   struct cgroup cgrp ;
   atomic_t nr_cgrps ;
   struct list_head root_list ;
   unsigned int flags ;
   struct idr cgroup_idr ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head mg_tasks ;
   struct list_head cgrp_links ;
   struct cgroup *dfl_cgrp ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct list_head mg_preload_node ;
   struct list_head mg_node ;
   struct cgroup *mg_src_cgrp ;
   struct css_set *mg_dst_cset ;
   struct list_head e_cset_node[12U] ;
   struct callback_head callback_head ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct cgroup_subsys *ss ;
   struct list_head node ;
   struct kernfs_ops *kf_ops ;
   u64 (*read_u64)(struct cgroup_subsys_state * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup_subsys_state * , struct cftype * ) ;
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   int (*write_u64)(struct cgroup_subsys_state * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup_subsys_state * , struct cftype * , s64 ) ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   struct lock_class_key lockdep_key ;
};
struct cgroup_taskset;
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   int (*can_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup_subsys_state * , struct cgroup_subsys_state * , struct task_struct * ) ;
   void (*bind)(struct cgroup_subsys_state * ) ;
   int disabled ;
   int early_init ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   int id ;
   char const *name ;
   struct cgroup_root *root ;
   struct idr css_idr ;
   struct list_head cfts ;
   struct cftype *base_cftypes ;
};
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct mnt_namespace;
struct ipc_namespace;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns_for_children ;
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
   __u32 spoofchk ;
   __u32 linkstate ;
   __u32 min_tx_rate ;
   __u32 max_tx_rate ;
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
   struct hlist_node napi_hash_node ;
   unsigned int napi_id ;
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
struct netdev_phys_port_id {
   unsigned char id[32U] ;
   unsigned char id_len ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * , void * , u16 (*)(struct net_device * ,
                                                                                     struct sk_buff * ) ) ;
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
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_rate)(struct net_device * , int , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_link_state)(struct net_device * , int , int ) ;
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
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_port_id * ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
   int (*ndo_get_lock_subclass)(struct net_device * ) ;
};
struct __anonstruct_adj_list_282 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_283 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct forwarding_accel_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion_ldv_41355_284 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_sw_netstats *tstats ;
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
   int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct __anonstruct_adj_list_282 adj_list ;
   struct __anonstruct_all_adj_list_283 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   atomic_long_t tx_dropped ;
   atomic_t carrier_changes ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct forwarding_accel_ops const *fwd_ops ;
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
   unsigned short neigh_priv_len ;
   unsigned short dev_id ;
   unsigned short dev_port ;
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
   struct tipc_bearer *tipc_ptr ;
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
   union __anonunion_ldv_41355_284 ldv_41355 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
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
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
};
enum nl80211_iftype {
    NL80211_IFTYPE_UNSPECIFIED = 0,
    NL80211_IFTYPE_ADHOC = 1,
    NL80211_IFTYPE_STATION = 2,
    NL80211_IFTYPE_AP = 3,
    NL80211_IFTYPE_AP_VLAN = 4,
    NL80211_IFTYPE_WDS = 5,
    NL80211_IFTYPE_MONITOR = 6,
    NL80211_IFTYPE_MESH_POINT = 7,
    NL80211_IFTYPE_P2P_CLIENT = 8,
    NL80211_IFTYPE_P2P_GO = 9,
    NL80211_IFTYPE_P2P_DEVICE = 10,
    NUM_NL80211_IFTYPES = 11,
    NL80211_IFTYPE_MAX = 10
} ;
enum nl80211_reg_initiator {
    NL80211_REGDOM_SET_BY_CORE = 0,
    NL80211_REGDOM_SET_BY_USER = 1,
    NL80211_REGDOM_SET_BY_DRIVER = 2,
    NL80211_REGDOM_SET_BY_COUNTRY_IE = 3
} ;
enum nl80211_dfs_regions {
    NL80211_DFS_UNSET = 0,
    NL80211_DFS_FCC = 1,
    NL80211_DFS_ETSI = 2,
    NL80211_DFS_JP = 3
} ;
enum nl80211_user_reg_hint_type {
    NL80211_USER_REG_HINT_USER = 0,
    NL80211_USER_REG_HINT_CELL_BASE = 1,
    NL80211_USER_REG_HINT_INDOOR = 2
} ;
enum nl80211_chan_width {
    NL80211_CHAN_WIDTH_20_NOHT = 0,
    NL80211_CHAN_WIDTH_20 = 1,
    NL80211_CHAN_WIDTH_40 = 2,
    NL80211_CHAN_WIDTH_80 = 3,
    NL80211_CHAN_WIDTH_80P80 = 4,
    NL80211_CHAN_WIDTH_160 = 5,
    NL80211_CHAN_WIDTH_5 = 6,
    NL80211_CHAN_WIDTH_10 = 7
} ;
enum nl80211_auth_type {
    NL80211_AUTHTYPE_OPEN_SYSTEM = 0,
    NL80211_AUTHTYPE_SHARED_KEY = 1,
    NL80211_AUTHTYPE_FT = 2,
    NL80211_AUTHTYPE_NETWORK_EAP = 3,
    NL80211_AUTHTYPE_SAE = 4,
    __NL80211_AUTHTYPE_NUM = 5,
    NL80211_AUTHTYPE_MAX = 4,
    NL80211_AUTHTYPE_AUTOMATIC = 5
} ;
enum nl80211_mfp {
    NL80211_MFP_NO = 0,
    NL80211_MFP_REQUIRED = 1
} ;
struct nl80211_wowlan_tcp_data_seq {
   __u32 start ;
   __u32 offset ;
   __u32 len ;
};
struct nl80211_wowlan_tcp_data_token {
   __u32 offset ;
   __u32 len ;
   __u8 token_stream[] ;
};
struct nl80211_wowlan_tcp_data_token_feature {
   __u32 min_len ;
   __u32 max_len ;
   __u32 bufsize ;
};
enum nl80211_dfs_state {
    NL80211_DFS_USABLE = 0,
    NL80211_DFS_UNAVAILABLE = 1,
    NL80211_DFS_AVAILABLE = 2
} ;
struct nl80211_vendor_cmd_info {
   __u32 vendor_id ;
   __u32 subcmd ;
};
enum environment_cap {
    ENVIRON_ANY = 0,
    ENVIRON_INDOOR = 1,
    ENVIRON_OUTDOOR = 2
} ;
struct regulatory_request {
   struct callback_head callback_head ;
   int wiphy_idx ;
   enum nl80211_reg_initiator initiator ;
   enum nl80211_user_reg_hint_type user_reg_hint_type ;
   char alpha2[2U] ;
   enum nl80211_dfs_regions dfs_region ;
   bool intersect ;
   bool processed ;
   enum environment_cap country_ie_env ;
   struct list_head list ;
};
struct ieee80211_freq_range {
   u32 start_freq_khz ;
   u32 end_freq_khz ;
   u32 max_bandwidth_khz ;
};
struct ieee80211_power_rule {
   u32 max_antenna_gain ;
   u32 max_eirp ;
};
struct ieee80211_reg_rule {
   struct ieee80211_freq_range freq_range ;
   struct ieee80211_power_rule power_rule ;
   u32 flags ;
   u32 dfs_cac_ms ;
};
struct ieee80211_regdomain {
   struct callback_head callback_head ;
   u32 n_reg_rules ;
   char alpha2[2U] ;
   enum nl80211_dfs_regions dfs_region ;
   struct ieee80211_reg_rule reg_rules[] ;
};
struct wiphy;
enum ieee80211_band {
    IEEE80211_BAND_2GHZ = 0,
    IEEE80211_BAND_5GHZ = 1,
    IEEE80211_BAND_60GHZ = 2,
    IEEE80211_NUM_BANDS = 3
} ;
struct ieee80211_channel {
   enum ieee80211_band band ;
   u16 center_freq ;
   u16 hw_value ;
   u32 flags ;
   int max_antenna_gain ;
   int max_power ;
   int max_reg_power ;
   bool beacon_found ;
   u32 orig_flags ;
   int orig_mag ;
   int orig_mpwr ;
   enum nl80211_dfs_state dfs_state ;
   unsigned long dfs_state_entered ;
   unsigned int dfs_cac_ms ;
};
struct ieee80211_rate {
   u32 flags ;
   u16 bitrate ;
   u16 hw_value ;
   u16 hw_value_short ;
};
struct ieee80211_sta_ht_cap {
   u16 cap ;
   bool ht_supported ;
   u8 ampdu_factor ;
   u8 ampdu_density ;
   struct ieee80211_mcs_info mcs ;
};
struct ieee80211_sta_vht_cap {
   bool vht_supported ;
   u32 cap ;
   struct ieee80211_vht_mcs_info vht_mcs ;
};
struct ieee80211_supported_band {
   struct ieee80211_channel *channels ;
   struct ieee80211_rate *bitrates ;
   enum ieee80211_band band ;
   int n_channels ;
   int n_bitrates ;
   struct ieee80211_sta_ht_cap ht_cap ;
   struct ieee80211_sta_vht_cap vht_cap ;
};
struct cfg80211_chan_def {
   struct ieee80211_channel *chan ;
   enum nl80211_chan_width width ;
   u32 center_freq1 ;
   u32 center_freq2 ;
};
struct cfg80211_crypto_settings {
   u32 wpa_versions ;
   u32 cipher_group ;
   int n_ciphers_pairwise ;
   u32 ciphers_pairwise[5U] ;
   int n_akm_suites ;
   u32 akm_suites[2U] ;
   bool control_port ;
   __be16 control_port_ethertype ;
   bool control_port_no_encrypt ;
};
struct mac_address {
   u8 addr[6U] ;
};
enum cfg80211_signal_type {
    CFG80211_SIGNAL_TYPE_NONE = 0,
    CFG80211_SIGNAL_TYPE_MBM = 1,
    CFG80211_SIGNAL_TYPE_UNSPEC = 2
} ;
struct cfg80211_ibss_params {
   u8 const *ssid ;
   u8 const *bssid ;
   struct cfg80211_chan_def chandef ;
   u8 const *ie ;
   u8 ssid_len ;
   u8 ie_len ;
   u16 beacon_interval ;
   u32 basic_rates ;
   bool channel_fixed ;
   bool privacy ;
   bool control_port ;
   bool userspace_handles_dfs ;
   int mcast_rate[3U] ;
   struct ieee80211_ht_cap ht_capa ;
   struct ieee80211_ht_cap ht_capa_mask ;
};
struct cfg80211_connect_params {
   struct ieee80211_channel *channel ;
   struct ieee80211_channel *channel_hint ;
   u8 const *bssid ;
   u8 const *bssid_hint ;
   u8 const *ssid ;
   size_t ssid_len ;
   enum nl80211_auth_type auth_type ;
   u8 const *ie ;
   size_t ie_len ;
   bool privacy ;
   enum nl80211_mfp mfp ;
   struct cfg80211_crypto_settings crypto ;
   u8 const *key ;
   u8 key_len ;
   u8 key_idx ;
   u32 flags ;
   int bg_scan_period ;
   struct ieee80211_ht_cap ht_capa ;
   struct ieee80211_ht_cap ht_capa_mask ;
   struct ieee80211_vht_cap vht_capa ;
   struct ieee80211_vht_cap vht_capa_mask ;
};
struct cfg80211_pkt_pattern {
   u8 const *mask ;
   u8 const *pattern ;
   int pattern_len ;
   int pkt_offset ;
};
struct cfg80211_wowlan_tcp {
   struct socket *sock ;
   __be32 src ;
   __be32 dst ;
   u16 src_port ;
   u16 dst_port ;
   u8 dst_mac[6U] ;
   int payload_len ;
   u8 const *payload ;
   struct nl80211_wowlan_tcp_data_seq payload_seq ;
   u32 data_interval ;
   u32 wake_len ;
   u8 const *wake_data ;
   u8 const *wake_mask ;
   u32 tokens_size ;
   struct nl80211_wowlan_tcp_data_token payload_tok ;
};
struct cfg80211_wowlan {
   bool any ;
   bool disconnect ;
   bool magic_pkt ;
   bool gtk_rekey_failure ;
   bool eap_identity_req ;
   bool four_way_handshake ;
   bool rfkill_release ;
   struct cfg80211_pkt_pattern *patterns ;
   struct cfg80211_wowlan_tcp *tcp ;
   int n_patterns ;
};
struct ieee80211_iface_limit {
   u16 max ;
   u16 types ;
};
struct ieee80211_iface_combination {
   struct ieee80211_iface_limit const *limits ;
   u32 num_different_channels ;
   u16 max_interfaces ;
   u8 n_limits ;
   bool beacon_int_infra_match ;
   u8 radar_detect_widths ;
   u8 radar_detect_regions ;
};
struct ieee80211_txrx_stypes {
   u16 tx ;
   u16 rx ;
};
struct wiphy_wowlan_tcp_support {
   struct nl80211_wowlan_tcp_data_token_feature const *tok ;
   u32 data_payload_max ;
   u32 data_interval_max ;
   u32 wake_payload_max ;
   bool seq ;
};
struct wiphy_wowlan_support {
   u32 flags ;
   int n_patterns ;
   int pattern_max_len ;
   int pattern_min_len ;
   int max_pkt_offset ;
   struct wiphy_wowlan_tcp_support const *tcp ;
};
struct wiphy_coalesce_support {
   int n_rules ;
   int max_delay ;
   int n_patterns ;
   int pattern_max_len ;
   int pattern_min_len ;
   int max_pkt_offset ;
};
struct wiphy_vendor_command {
   struct nl80211_vendor_cmd_info info ;
   u32 flags ;
   int (*doit)(struct wiphy * , struct wireless_dev * , void const * , int ) ;
};
struct wiphy {
   u8 perm_addr[6U] ;
   u8 addr_mask[6U] ;
   struct mac_address *addresses ;
   struct ieee80211_txrx_stypes const *mgmt_stypes ;
   struct ieee80211_iface_combination const *iface_combinations ;
   int n_iface_combinations ;
   u16 software_iftypes ;
   u16 n_addresses ;
   u16 interface_modes ;
   u16 max_acl_mac_addrs ;
   u32 flags ;
   u32 regulatory_flags ;
   u32 features ;
   u32 ap_sme_capa ;
   enum cfg80211_signal_type signal_type ;
   int bss_priv_size ;
   u8 max_scan_ssids ;
   u8 max_sched_scan_ssids ;
   u8 max_match_sets ;
   u16 max_scan_ie_len ;
   u16 max_sched_scan_ie_len ;
   int n_cipher_suites ;
   u32 const *cipher_suites ;
   u8 retry_short ;
   u8 retry_long ;
   u32 frag_threshold ;
   u32 rts_threshold ;
   u8 coverage_class ;
   char fw_version[32U] ;
   u32 hw_version ;
   struct wiphy_wowlan_support const *wowlan ;
   struct cfg80211_wowlan *wowlan_config ;
   u16 max_remain_on_channel_duration ;
   u8 max_num_pmkids ;
   u32 available_antennas_tx ;
   u32 available_antennas_rx ;
   u32 probe_resp_offload ;
   u8 const *extended_capabilities ;
   u8 const *extended_capabilities_mask ;
   u8 extended_capabilities_len ;
   void const *privid ;
   struct ieee80211_supported_band *bands[3U] ;
   void (*reg_notifier)(struct wiphy * , struct regulatory_request * ) ;
   struct ieee80211_regdomain const *regd ;
   struct device dev ;
   bool registered ;
   struct dentry *debugfsdir ;
   struct ieee80211_ht_cap const *ht_capa_mod_mask ;
   struct ieee80211_vht_cap const *vht_capa_mod_mask ;
   struct net *_net ;
   struct iw_handler_def const *wext ;
   struct wiphy_coalesce_support const *coalesce ;
   struct wiphy_vendor_command const *vendor_commands ;
   struct nl80211_vendor_cmd_info const *vendor_events ;
   int n_vendor_commands ;
   int n_vendor_events ;
   u16 max_ap_assoc_sta ;
   u8 max_num_csa_counters ;
   u8 max_adj_channel_rssi_comp ;
   char priv[0U] ;
};
struct cfg80211_conn;
struct cfg80211_internal_bss;
struct cfg80211_cached_keys;
struct __anonstruct_wext_286 {
   struct cfg80211_ibss_params ibss ;
   struct cfg80211_connect_params connect ;
   struct cfg80211_cached_keys *keys ;
   u8 const *ie ;
   size_t ie_len ;
   u8 bssid[6U] ;
   u8 prev_bssid[6U] ;
   u8 ssid[32U] ;
   s8 default_key ;
   s8 default_mgmt_key ;
   bool prev_bssid_valid ;
};
struct wireless_dev {
   struct wiphy *wiphy ;
   enum nl80211_iftype iftype ;
   struct list_head list ;
   struct net_device *netdev ;
   u32 identifier ;
   struct list_head mgmt_registrations ;
   spinlock_t mgmt_registrations_lock ;
   struct mutex mtx ;
   bool use_4addr ;
   bool p2p_started ;
   u8 address[6U] ;
   u8 ssid[32U] ;
   u8 ssid_len ;
   u8 mesh_id_len ;
   u8 mesh_id_up_len ;
   struct cfg80211_conn *conn ;
   struct cfg80211_cached_keys *connect_keys ;
   struct list_head event_list ;
   spinlock_t event_lock ;
   struct cfg80211_internal_bss *current_bss ;
   struct cfg80211_chan_def preset_chandef ;
   struct cfg80211_chan_def chandef ;
   bool ibss_fixed ;
   bool ibss_dfs_possible ;
   bool ps ;
   int ps_timeout ;
   int beacon_interval ;
   u32 ap_unexpected_nlportid ;
   bool cac_started ;
   unsigned long cac_start_time ;
   unsigned int cac_time_ms ;
   u32 owner_nlportid ;
   struct __anonstruct_wext_286 wext ;
};
enum ieee80211_smps_mode {
    IEEE80211_SMPS_AUTOMATIC = 0,
    IEEE80211_SMPS_OFF = 1,
    IEEE80211_SMPS_STATIC = 2,
    IEEE80211_SMPS_DYNAMIC = 3,
    IEEE80211_SMPS_NUM_MODES = 4
} ;
struct ieee80211_cipher_scheme {
   u32 cipher ;
   u16 iftype ;
   u8 hdr_len ;
   u8 pn_len ;
   u8 pn_off ;
   u8 key_idx_off ;
   u8 key_idx_mask ;
   u8 key_idx_shift ;
   u8 mic_len ;
};
enum iwl_device_family {
    IWL_DEVICE_FAMILY_UNDEFINED = 0,
    IWL_DEVICE_FAMILY_1000 = 1,
    IWL_DEVICE_FAMILY_100 = 2,
    IWL_DEVICE_FAMILY_2000 = 3,
    IWL_DEVICE_FAMILY_2030 = 4,
    IWL_DEVICE_FAMILY_105 = 5,
    IWL_DEVICE_FAMILY_135 = 6,
    IWL_DEVICE_FAMILY_5000 = 7,
    IWL_DEVICE_FAMILY_5150 = 8,
    IWL_DEVICE_FAMILY_6000 = 9,
    IWL_DEVICE_FAMILY_6000i = 10,
    IWL_DEVICE_FAMILY_6005 = 11,
    IWL_DEVICE_FAMILY_6030 = 12,
    IWL_DEVICE_FAMILY_6050 = 13,
    IWL_DEVICE_FAMILY_6150 = 14,
    IWL_DEVICE_FAMILY_7000 = 15,
    IWL_DEVICE_FAMILY_8000 = 16
} ;
enum iwl_led_mode {
    IWL_LED_DEFAULT = 0,
    IWL_LED_RF_STATE = 1,
    IWL_LED_BLINK = 2,
    IWL_LED_DISABLE = 3
} ;
struct iwl_base_params {
   int eeprom_size ;
   int num_of_queues ;
   u32 pll_cfg_val ;
   u16 const max_ll_items ;
   bool const shadow_ram_support ;
   u16 led_compensation ;
   unsigned int wd_timeout ;
   u32 max_event_log_size ;
   bool const shadow_reg_enable ;
   bool const pcie_l1_allowed ;
   bool const apmg_wake_up_wa ;
   bool const scd_chain_ext_wa ;
};
struct iwl_ht_params {
   enum ieee80211_smps_mode smps_mode ;
   bool const ht_greenfield_support ;
   bool const stbc ;
   bool use_rts_for_aggregation ;
   u8 ht40_bands ;
};
struct iwl_eeprom_params {
   u8 const regulatory_bands[7U] ;
   bool enhanced_txpower ;
};
struct iwl_pwr_tx_backoff {
   u32 pwr ;
   u32 backoff ;
};
struct iwl_cfg {
   char const *name ;
   char const *fw_name_pre ;
   unsigned int const ucode_api_max ;
   unsigned int const ucode_api_ok ;
   unsigned int const ucode_api_min ;
   enum iwl_device_family const device_family ;
   u32 const max_data_size ;
   u32 const max_inst_size ;
   u8 valid_tx_ant ;
   u8 valid_rx_ant ;
   bool bt_shared_single_ant ;
   u16 nvm_ver ;
   u16 nvm_calib_ver ;
   struct iwl_base_params const *base_params ;
   struct iwl_ht_params const *ht_params ;
   struct iwl_eeprom_params const *eeprom_params ;
   enum iwl_led_mode led_mode ;
   bool const rx_with_siso_diversity ;
   bool const internal_wimax_coex ;
   bool const host_interrupt_operation_mode ;
   bool high_temp ;
   bool d0i3 ;
   u8 nvm_hw_section_num ;
   bool lp_xtal_workaround ;
   struct iwl_pwr_tx_backoff const *pwr_tx_backoffs ;
   bool no_power_up_nic_in_init ;
   char const *default_nvm_file ;
};
struct iwl_ucode_capabilities {
   u32 max_probe_length ;
   u32 standard_phy_calibration_size ;
   u32 flags ;
   u32 api[1U] ;
   u32 capa[1U] ;
};
struct fw_desc {
   void const *data ;
   u32 len ;
   u32 offset ;
};
struct fw_img {
   struct fw_desc sec[12U] ;
   bool is_secure ;
   bool is_dual_cpus ;
};
struct iwl_sf_region {
   u32 addr ;
   u32 size ;
};
struct iwl_tlv_calib_ctrl {
   __le32 flow_trigger ;
   __le32 event_trigger ;
};
struct iwl_fw {
   u32 ucode_ver ;
   char fw_version[32U] ;
   struct fw_img img[3U] ;
   struct iwl_ucode_capabilities ucode_capa ;
   bool enhance_sensitivity_table ;
   u32 init_evtlog_ptr ;
   u32 init_evtlog_size ;
   u32 init_errlog_ptr ;
   u32 inst_evtlog_ptr ;
   u32 inst_evtlog_size ;
   u32 inst_errlog_ptr ;
   struct iwl_tlv_calib_ctrl default_calib[3U] ;
   u32 phy_config ;
   u8 valid_tx_ant ;
   u8 valid_rx_ant ;
   bool mvm_fw ;
   struct ieee80211_cipher_scheme cs[1U] ;
};
struct iwl_op_mode;
struct iwl_device_cmd;
struct iwl_rx_cmd_buffer;
struct iwl_op_mode_ops {
   struct iwl_op_mode *(*start)(struct iwl_trans * , struct iwl_cfg const * , struct iwl_fw const * ,
                                struct dentry * ) ;
   void (*stop)(struct iwl_op_mode * ) ;
   int (*rx)(struct iwl_op_mode * , struct iwl_rx_cmd_buffer * , struct iwl_device_cmd * ) ;
   void (*napi_add)(struct iwl_op_mode * , struct napi_struct * , struct net_device * ,
                    int (*)(struct napi_struct * , int ) , int ) ;
   void (*queue_full)(struct iwl_op_mode * , int ) ;
   void (*queue_not_full)(struct iwl_op_mode * , int ) ;
   bool (*hw_rf_kill)(struct iwl_op_mode * , bool ) ;
   void (*free_skb)(struct iwl_op_mode * , struct sk_buff * ) ;
   void (*nic_error)(struct iwl_op_mode * ) ;
   void (*cmd_queue_full)(struct iwl_op_mode * ) ;
   void (*nic_config)(struct iwl_op_mode * ) ;
   void (*wimax_active)(struct iwl_op_mode * ) ;
   int (*enter_d0i3)(struct iwl_op_mode * ) ;
   int (*exit_d0i3)(struct iwl_op_mode * ) ;
};
struct iwl_op_mode {
   struct iwl_op_mode_ops const *ops ;
   char op_mode_specific[0U] ;
};
struct iwl_cmd_header {
   u8 cmd ;
   u8 flags ;
   __le16 sequence ;
};
struct iwl_rx_packet {
   __le32 len_n_flags ;
   struct iwl_cmd_header hdr ;
   u8 data[] ;
};
struct iwl_device_cmd {
   struct iwl_cmd_header hdr ;
   u8 payload[320U] ;
};
struct iwl_host_cmd {
   void const *data[2U] ;
   struct iwl_rx_packet *resp_pkt ;
   unsigned long _rx_page_addr ;
   u32 _rx_page_order ;
   int handler_status ;
   u32 flags ;
   u16 len[2U] ;
   u8 dataflags[2U] ;
   u8 id ;
};
struct iwl_rx_cmd_buffer {
   struct page *_page ;
   int _offset ;
   bool _page_stolen ;
   u32 _rx_page_order ;
   unsigned int truesize ;
};
enum iwl_d3_status {
    IWL_D3_STATUS_ALIVE = 0,
    IWL_D3_STATUS_RESET = 1
} ;
struct iwl_trans_config {
   struct iwl_op_mode *op_mode ;
   u8 cmd_queue ;
   u8 cmd_fifo ;
   u8 const *no_reclaim_cmds ;
   unsigned int n_no_reclaim_cmds ;
   bool rx_buf_size_8k ;
   bool bc_table_dword ;
   unsigned int queue_watchdog_timeout ;
   char const * const *command_names ;
};
struct iwl_trans_ops {
   int (*start_hw)(struct iwl_trans * ) ;
   void (*op_mode_leave)(struct iwl_trans * ) ;
   int (*start_fw)(struct iwl_trans * , struct fw_img const * , bool ) ;
   int (*update_sf)(struct iwl_trans * , struct iwl_sf_region * ) ;
   void (*fw_alive)(struct iwl_trans * , u32 ) ;
   void (*stop_device)(struct iwl_trans * ) ;
   void (*d3_suspend)(struct iwl_trans * , bool ) ;
   int (*d3_resume)(struct iwl_trans * , enum iwl_d3_status * , bool ) ;
   int (*send_cmd)(struct iwl_trans * , struct iwl_host_cmd * ) ;
   int (*tx)(struct iwl_trans * , struct sk_buff * , struct iwl_device_cmd * , int ) ;
   void (*reclaim)(struct iwl_trans * , int , int , struct sk_buff_head * ) ;
   void (*txq_enable)(struct iwl_trans * , int , int , int , int , int , u16 ) ;
   void (*txq_disable)(struct iwl_trans * , int ) ;
   int (*dbgfs_register)(struct iwl_trans * , struct dentry * ) ;
   int (*wait_tx_queue_empty)(struct iwl_trans * , u32 ) ;
   void (*write8)(struct iwl_trans * , u32 , u8 ) ;
   void (*write32)(struct iwl_trans * , u32 , u32 ) ;
   u32 (*read32)(struct iwl_trans * , u32 ) ;
   u32 (*read_prph)(struct iwl_trans * , u32 ) ;
   void (*write_prph)(struct iwl_trans * , u32 , u32 ) ;
   int (*read_mem)(struct iwl_trans * , u32 , void * , int ) ;
   int (*write_mem)(struct iwl_trans * , u32 , void const * , int ) ;
   void (*configure)(struct iwl_trans * , struct iwl_trans_config const * ) ;
   void (*set_pmi)(struct iwl_trans * , bool ) ;
   bool (*grab_nic_access)(struct iwl_trans * , bool , unsigned long * ) ;
   void (*release_nic_access)(struct iwl_trans * , unsigned long * ) ;
   void (*set_bits_mask)(struct iwl_trans * , u32 , u32 , u32 ) ;
   void (*ref)(struct iwl_trans * ) ;
   void (*unref)(struct iwl_trans * ) ;
   u32 (*dump_data)(struct iwl_trans * , void * , u32 ) ;
};
enum iwl_trans_state {
    IWL_TRANS_NO_FW = 0,
    IWL_TRANS_FW_ALIVE = 1
} ;
struct iwl_trans {
   struct iwl_trans_ops const *ops ;
   struct iwl_op_mode *op_mode ;
   struct iwl_cfg const *cfg ;
   enum iwl_trans_state state ;
   unsigned long status ;
   struct device *dev ;
   u32 hw_rev ;
   u32 hw_id ;
   char hw_id_str[52U] ;
   u8 rx_mpdu_cmd ;
   u8 rx_mpdu_cmd_hdr_size ;
   bool pm_support ;
   struct kmem_cache *dev_cmd_pool ;
   size_t dev_cmd_headroom ;
   char dev_cmd_pool_name[50U] ;
   struct dentry *dbgfs_dir ;
   struct lockdep_map sync_cmd_lockdep_map ;
   u64 dflt_pwr_limit ;
   char trans_specific[0U] ;
};
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
typedef int ldv_func_ret_type___2;
typedef __u64 __le64;
struct pci_dev;
enum hrtimer_restart;
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
struct iwl_drv;
struct iwl_mod_params;
struct iwl_mod_params {
   int sw_crypto ;
   unsigned int disable_11n ;
   int amsdu_size_8K ;
   bool restart_fw ;
   int wd_disable ;
   bool bt_coex_active ;
   int led_mode ;
   bool power_save ;
   int power_level ;
   u32 debug_level ;
   int ant_coupling ;
   char *nvm_file ;
   bool uapsd_disable ;
};
enum iwl_ucode_type {
    IWL_UCODE_REGULAR = 0,
    IWL_UCODE_INIT = 1,
    IWL_UCODE_WOWLAN = 2,
    IWL_UCODE_TYPE_MAX = 3
} ;
struct iwl_fw_cipher_scheme {
   __le32 cipher ;
   u8 flags ;
   u8 hdr_len ;
   u8 pn_len ;
   u8 pn_off ;
   u8 key_idx_off ;
   u8 key_idx_mask ;
   u8 key_idx_shift ;
   u8 mic_len ;
   u8 hw_cipher ;
};
struct iwl_fw_cscheme_list {
   u8 size ;
   struct iwl_fw_cipher_scheme cs[] ;
};
struct __anonstruct_v1_300 {
   __le32 inst_size ;
   __le32 data_size ;
   __le32 init_size ;
   __le32 init_data_size ;
   __le32 boot_size ;
   u8 data[0U] ;
};
struct __anonstruct_v2_301 {
   __le32 build ;
   __le32 inst_size ;
   __le32 data_size ;
   __le32 init_size ;
   __le32 init_data_size ;
   __le32 boot_size ;
   u8 data[0U] ;
};
union __anonunion_u_299 {
   struct __anonstruct_v1_300 v1 ;
   struct __anonstruct_v2_301 v2 ;
};
struct iwl_ucode_header {
   __le32 ver ;
   union __anonunion_u_299 u ;
};
enum iwl_ucode_tlv_type {
    IWL_UCODE_TLV_INVALID = 0,
    IWL_UCODE_TLV_INST = 1,
    IWL_UCODE_TLV_DATA = 2,
    IWL_UCODE_TLV_INIT = 3,
    IWL_UCODE_TLV_INIT_DATA = 4,
    IWL_UCODE_TLV_BOOT = 5,
    IWL_UCODE_TLV_PROBE_MAX_LEN = 6,
    IWL_UCODE_TLV_PAN = 7,
    IWL_UCODE_TLV_RUNT_EVTLOG_PTR = 8,
    IWL_UCODE_TLV_RUNT_EVTLOG_SIZE = 9,
    IWL_UCODE_TLV_RUNT_ERRLOG_PTR = 10,
    IWL_UCODE_TLV_INIT_EVTLOG_PTR = 11,
    IWL_UCODE_TLV_INIT_EVTLOG_SIZE = 12,
    IWL_UCODE_TLV_INIT_ERRLOG_PTR = 13,
    IWL_UCODE_TLV_ENHANCE_SENS_TBL = 14,
    IWL_UCODE_TLV_PHY_CALIBRATION_SIZE = 15,
    IWL_UCODE_TLV_WOWLAN_INST = 16,
    IWL_UCODE_TLV_WOWLAN_DATA = 17,
    IWL_UCODE_TLV_FLAGS = 18,
    IWL_UCODE_TLV_SEC_RT = 19,
    IWL_UCODE_TLV_SEC_INIT = 20,
    IWL_UCODE_TLV_SEC_WOWLAN = 21,
    IWL_UCODE_TLV_DEF_CALIB = 22,
    IWL_UCODE_TLV_PHY_SKU = 23,
    IWL_UCODE_TLV_SECURE_SEC_RT = 24,
    IWL_UCODE_TLV_SECURE_SEC_INIT = 25,
    IWL_UCODE_TLV_SECURE_SEC_WOWLAN = 26,
    IWL_UCODE_TLV_NUM_OF_CPU = 27,
    IWL_UCODE_TLV_CSCHEME = 28,
    IWL_UCODE_TLV_API_CHANGES_SET = 29,
    IWL_UCODE_TLV_ENABLED_CAPABILITIES = 30
} ;
struct iwl_ucode_tlv {
   __le32 type ;
   __le32 length ;
   u8 data[0U] ;
};
struct iwl_tlv_ucode_header {
   __le32 zero ;
   __le32 magic ;
   u8 human_readable[64U] ;
   __le32 ver ;
   __le32 build ;
   __le64 ignore ;
   u8 data[0U] ;
};
struct iwl_ucode_api {
   __le32 api_index ;
   __le32 api_flags ;
};
struct iwl_ucode_capa {
   __le32 api_index ;
   __le32 api_capa ;
};
struct iwl_drv {
   struct list_head list ;
   struct iwl_fw fw ;
   struct iwl_op_mode *op_mode ;
   struct iwl_trans *trans ;
   struct device *dev ;
   struct iwl_cfg const *cfg ;
   int fw_index ;
   char firmware_name[32U] ;
   struct completion request_firmware_complete ;
   struct dentry *dbgfs_drv ;
   struct dentry *dbgfs_trans ;
   struct dentry *dbgfs_op_mode ;
};
struct iwlwifi_opmode_table {
   char const *name ;
   struct iwl_op_mode_ops const *ops ;
   struct list_head drv ;
};
struct fw_sec {
   void const *data ;
   size_t size ;
   u32 offset ;
};
struct fw_img_parsing {
   struct fw_sec sec[12U] ;
   int sec_counter ;
};
struct fw_sec_parsing {
   __le32 offset ;
   u8 const data[] ;
};
struct iwl_tlv_calib_data {
   __le32 ucode_type ;
   struct iwl_tlv_calib_ctrl calib ;
};
struct iwl_firmware_pieces {
   struct fw_img_parsing img[3U] ;
   u32 init_evtlog_ptr ;
   u32 init_evtlog_size ;
   u32 init_errlog_ptr ;
   u32 inst_evtlog_ptr ;
   u32 inst_evtlog_size ;
   u32 inst_errlog_ptr ;
};
struct __va_list_tag;
typedef struct __va_list_tag __va_list_tag;
typedef __builtin_va_list __gnuc_va_list;
typedef __gnuc_va_list va_list;
struct va_format {
   char const *fmt ;
   va_list *va ;
};
enum hrtimer_restart;
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
enum hrtimer_restart;
struct iwl_notif_wait_data {
   struct list_head notif_waits ;
   spinlock_t notif_wait_lock ;
   wait_queue_head_t notif_waitq ;
};
struct iwl_notification_wait {
   struct list_head list ;
   bool (*fn)(struct iwl_notif_wait_data * , struct iwl_rx_packet * , void * ) ;
   void *fn_data ;
   u8 cmds[5U] ;
   u8 n_cmds ;
   bool triggered ;
   bool aborted ;
};
enum hrtimer_restart;
enum hrtimer_restart;
struct iwl_nvm_data {
   int n_hw_addrs ;
   u8 hw_addr[6U] ;
   u8 calib_version ;
   __le16 calib_voltage ;
   __le16 raw_temperature ;
   __le16 kelvin_temperature ;
   __le16 kelvin_voltage ;
   __le16 xtal_calib[2U] ;
   bool sku_cap_band_24GHz_enable ;
   bool sku_cap_band_52GHz_enable ;
   bool sku_cap_11n_enable ;
   bool sku_cap_11ac_enable ;
   bool sku_cap_amt_enable ;
   bool sku_cap_ipan_enable ;
   u16 radio_cfg_type ;
   u8 radio_cfg_step ;
   u8 radio_cfg_dash ;
   u8 radio_cfg_pnum ;
   u8 valid_tx_ant ;
   u8 valid_rx_ant ;
   u32 nvm_version ;
   s8 max_tx_pwr_half_dbm ;
   struct ieee80211_supported_band bands[3U] ;
   struct ieee80211_channel channels[] ;
};
struct iwl_eeprom_calib_hdr {
   u8 version ;
   u8 pa_type ;
   __le16 voltage ;
};
struct iwl_eeprom_channel {
   u8 flags ;
   s8 max_power_avg ;
};
struct iwl_eeprom_enhanced_txpwr {
   u8 flags ;
   u8 channel ;
   s8 chain_a_max ;
   s8 chain_b_max ;
   s8 chain_c_max ;
   u8 delta_20_in_40 ;
   s8 mimo2_max ;
   s8 mimo3_max ;
};
enum hrtimer_restart;
struct iwl_phy_db;
struct iwl_phy_db_entry {
   u16 size ;
   u8 *data ;
};
struct iwl_phy_db {
   struct iwl_phy_db_entry cfg ;
   struct iwl_phy_db_entry calib_nch ;
   struct iwl_phy_db_entry calib_ch_group_papd[7U] ;
   struct iwl_phy_db_entry calib_ch_group_txp[9U] ;
   struct iwl_trans *trans ;
};
enum iwl_phy_db_section_type {
    IWL_PHY_DB_CFG = 1,
    IWL_PHY_DB_CALIB_NCH = 2,
    IWL_PHY_DB_UNUSED = 3,
    IWL_PHY_DB_CALIB_CHG_PAPD = 4,
    IWL_PHY_DB_CALIB_CHG_TXP = 5,
    IWL_PHY_DB_MAX = 6
} ;
struct iwl_phy_db_cmd {
   __le16 type ;
   __le16 length ;
   u8 data[] ;
};
struct iwl_phy_db_chg_txp {
   __le32 space ;
   __le16 max_channel_idx ;
};
struct iwl_calib_res_notif_phy_db {
   __le16 type ;
   __le16 length ;
   u8 data[] ;
};
enum hrtimer_restart;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
enum hrtimer_restart;
struct pci_bus;
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
union __anonunion_ldv_18008_162 {
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
   union __anonunion_ldv_18008_162 ldv_18008 ;
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
typedef u64 acpi_size;
typedef u64 acpi_io_address;
typedef u32 acpi_status;
typedef char *acpi_string;
typedef void *acpi_handle;
typedef u32 acpi_object_type;
struct __anonstruct_integer_183 {
   acpi_object_type type ;
   u64 value ;
};
struct __anonstruct_string_184 {
   acpi_object_type type ;
   u32 length ;
   char *pointer ;
};
struct __anonstruct_buffer_185 {
   acpi_object_type type ;
   u32 length ;
   u8 *pointer ;
};
struct __anonstruct_package_186 {
   acpi_object_type type ;
   u32 count ;
   union acpi_object *elements ;
};
struct __anonstruct_reference_187 {
   acpi_object_type type ;
   acpi_object_type actual_type ;
   acpi_handle handle ;
};
struct __anonstruct_processor_188 {
   acpi_object_type type ;
   u32 proc_id ;
   acpi_io_address pblk_address ;
   u32 pblk_length ;
};
struct __anonstruct_power_resource_189 {
   acpi_object_type type ;
   u32 system_level ;
   u32 resource_order ;
};
union acpi_object {
   acpi_object_type type ;
   struct __anonstruct_integer_183 integer ;
   struct __anonstruct_string_184 string ;
   struct __anonstruct_buffer_185 buffer ;
   struct __anonstruct_package_186 package ;
   struct __anonstruct_reference_187 reference ;
   struct __anonstruct_processor_188 processor ;
   struct __anonstruct_power_resource_189 power_resource ;
};
struct acpi_object_list {
   u32 count ;
   union acpi_object *pointer ;
};
struct acpi_buffer {
   acpi_size length ;
   void *pointer ;
};
struct acpi_driver;
struct acpi_hotplug_profile {
   struct kobject kobj ;
   int (*scan_dependent)(struct acpi_device * ) ;
   bool enabled ;
   bool demand_offline ;
};
struct acpi_scan_handler {
   struct acpi_device_id const *ids ;
   struct list_head list_node ;
   bool (*match)(char * , struct acpi_device_id const ** ) ;
   int (*attach)(struct acpi_device * , struct acpi_device_id const * ) ;
   void (*detach)(struct acpi_device * ) ;
   void (*bind)(struct device * ) ;
   void (*unbind)(struct device * ) ;
   struct acpi_hotplug_profile hotplug ;
};
struct acpi_hotplug_context {
   struct acpi_device *self ;
   int (*notify)(struct acpi_device * , u32 ) ;
   void (*uevent)(struct acpi_device * , u32 ) ;
   void (*fixup)(struct acpi_device * ) ;
};
struct acpi_device_ops {
   int (*add)(struct acpi_device * ) ;
   int (*remove)(struct acpi_device * ) ;
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
   unsigned char removable : 1 ;
   unsigned char ejectable : 1 ;
   unsigned char power_manageable : 1 ;
   unsigned char match_driver : 1 ;
   unsigned char initialized : 1 ;
   unsigned char visited : 1 ;
   unsigned char no_hotplug : 1 ;
   unsigned char hotplug_notify : 1 ;
   unsigned char is_dock_station : 1 ;
   unsigned int reserved : 22 ;
};
struct acpi_device_dir {
   struct proc_dir_entry *entry ;
};
typedef char acpi_bus_id[8U];
typedef unsigned long acpi_bus_address;
typedef char acpi_device_name[40U];
typedef char acpi_device_class[20U];
struct acpi_pnp_type {
   unsigned char hardware_id : 1 ;
   unsigned char bus_address : 1 ;
   unsigned char platform_id : 1 ;
   unsigned int reserved : 29 ;
};
struct acpi_device_pnp {
   acpi_bus_id bus_id ;
   struct acpi_pnp_type type ;
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
   unsigned char ignore_parent : 1 ;
   unsigned char dsw_present : 1 ;
   unsigned int reserved : 26 ;
};
struct __anonstruct_flags_207 {
   unsigned char valid : 1 ;
   unsigned char os_accessible : 1 ;
   unsigned char explicit_set : 1 ;
   unsigned char reserved : 6 ;
};
struct acpi_device_power_state {
   struct __anonstruct_flags_207 flags ;
   int power ;
   int latency ;
   struct list_head resources ;
};
struct acpi_device_power {
   int state ;
   struct acpi_device_power_flags flags ;
   struct acpi_device_power_state states[5U] ;
};
struct acpi_device_perf_flags {
   u8 reserved ;
};
struct __anonstruct_flags_208 {
   unsigned char valid : 1 ;
   unsigned char reserved : 7 ;
};
struct acpi_device_perf_state {
   struct __anonstruct_flags_208 flags ;
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
   struct list_head resources ;
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
   struct list_head del_list ;
   struct acpi_device_status status ;
   struct acpi_device_flags flags ;
   struct acpi_device_pnp pnp ;
   struct acpi_device_power power ;
   struct acpi_device_wakeup wakeup ;
   struct acpi_device_perf performance ;
   struct acpi_device_dir dir ;
   struct acpi_scan_handler *handler ;
   struct acpi_hotplug_context *hp ;
   struct acpi_driver *driver ;
   void *driver_data ;
   struct device dev ;
   unsigned int physical_node_count ;
   struct list_head physical_node_list ;
   struct mutex physical_node_lock ;
   void (*remove)(struct acpi_device * ) ;
};
struct iwl_rb_status {
   __le16 closed_rb_num ;
   __le16 closed_fr_num ;
   __le16 finished_rb_num ;
   __le16 finished_fr_nam ;
   __le32 __unused ;
};
struct iwl_tfd_tb {
   __le32 lo ;
   __le16 hi_n_len ;
};
struct iwl_tfd {
   u8 __reserved1[3U] ;
   u8 num_tbs ;
   struct iwl_tfd_tb tbs[20U] ;
   __le32 __pad ;
};
struct iwl_rx_mem_buffer {
   dma_addr_t page_dma ;
   struct page *page ;
   struct list_head list ;
};
struct isr_statistics {
   u32 hw ;
   u32 sw ;
   u32 err_code ;
   u32 sch ;
   u32 alive ;
   u32 rfkill ;
   u32 ctkill ;
   u32 wakeup ;
   u32 rx ;
   u32 tx ;
   u32 unhandled ;
};
struct iwl_rxq {
   __le32 *bd ;
   dma_addr_t bd_dma ;
   struct iwl_rx_mem_buffer pool[320U] ;
   struct iwl_rx_mem_buffer *queue[256U] ;
   u32 read ;
   u32 write ;
   u32 free_count ;
   u32 write_actual ;
   struct list_head rx_free ;
   struct list_head rx_used ;
   bool need_update ;
   struct iwl_rb_status *rb_stts ;
   dma_addr_t rb_stts_dma ;
   spinlock_t lock ;
};
struct iwl_dma_ptr {
   dma_addr_t dma ;
   void *addr ;
   size_t size ;
};
struct iwl_cmd_meta {
   struct iwl_host_cmd *source ;
   u32 flags ;
};
struct iwl_queue {
   int write_ptr ;
   int read_ptr ;
   dma_addr_t dma_addr ;
   int n_window ;
   u32 id ;
   int low_mark ;
   int high_mark ;
};
struct iwl_pcie_txq_entry {
   struct iwl_device_cmd *cmd ;
   struct sk_buff *skb ;
   void const *free_buf ;
   struct iwl_cmd_meta meta ;
};
struct iwl_pcie_txq_scratch_buf {
   struct iwl_cmd_header hdr ;
   u8 buf[8U] ;
   __le32 scratch ;
};
struct iwl_trans_pcie;
struct iwl_txq {
   struct iwl_queue q ;
   struct iwl_tfd *tfds ;
   struct iwl_pcie_txq_scratch_buf *scratchbufs ;
   dma_addr_t scratchbufs_dma ;
   struct iwl_pcie_txq_entry *entries ;
   spinlock_t lock ;
   struct timer_list stuck_timer ;
   struct iwl_trans_pcie *trans_pcie ;
   bool need_update ;
   u8 active ;
   bool ampdu ;
};
struct iwl_trans_pcie {
   struct iwl_rxq rxq ;
   struct work_struct rx_replenish ;
   struct iwl_trans *trans ;
   struct iwl_drv *drv ;
   struct net_device napi_dev ;
   struct napi_struct napi ;
   __le32 *ict_tbl ;
   dma_addr_t ict_tbl_dma ;
   int ict_index ;
   bool use_ict ;
   struct isr_statistics isr_stats ;
   spinlock_t irq_lock ;
   u32 inta_mask ;
   u32 scd_base_addr ;
   struct iwl_dma_ptr scd_bc_tbls ;
   struct iwl_dma_ptr kw ;
   struct iwl_txq *txq ;
   unsigned long queue_used[1U] ;
   unsigned long queue_stopped[1U] ;
   struct pci_dev *pci_dev ;
   void *hw_base ;
   bool ucode_write_complete ;
   wait_queue_head_t ucode_write_waitq ;
   wait_queue_head_t wait_command_queue ;
   u8 cmd_queue ;
   u8 cmd_fifo ;
   u8 n_no_reclaim_cmds ;
   u8 no_reclaim_cmds[6U] ;
   bool rx_buf_size_8k ;
   bool bc_table_dword ;
   u32 rx_page_order ;
   char const * const *command_names ;
   unsigned long wd_timeout ;
   spinlock_t reg_lock ;
   bool cmd_in_flight ;
};
enum hrtimer_restart;
enum hrtimer_restart;
struct ieee80211_hdr {
   __le16 frame_control ;
   __le16 duration_id ;
   u8 addr1[6U] ;
   u8 addr2[6U] ;
   u8 addr3[6U] ;
   __le16 seq_ctrl ;
   u8 addr4[6U] ;
};
struct iwlagn_scd_bc_tbl {
   __le16 tfd_offset[320U] ;
};
struct iwl_dram_scratch {
   u8 try_cnt ;
   u8 bt_kill_cnt ;
   __le16 reserved ;
};
union __anonunion_stop_time_303 {
   __le32 life_time ;
   __le32 attempt ;
};
union __anonunion_timeout_304 {
   __le16 pm_frame_timeout ;
   __le16 attempt_duration ;
};
struct iwl_tx_cmd {
   __le16 len ;
   __le16 next_frame_len ;
   __le32 tx_flags ;
   struct iwl_dram_scratch scratch ;
   __le32 rate_n_flags ;
   u8 sta_id ;
   u8 sec_ctl ;
   u8 initial_rate_index ;
   u8 reserved ;
   u8 key[16U] ;
   __le16 next_frame_flags ;
   __le16 reserved2 ;
   union __anonunion_stop_time_303 stop_time ;
   __le32 dram_lsb_ptr ;
   u8 dram_msb_ptr ;
   u8 rts_retry_limit ;
   u8 data_retry_limit ;
   u8 tid_tspec ;
   union __anonunion_timeout_304 timeout ;
   __le16 driver_txop ;
   u8 payload[0U] ;
   struct ieee80211_hdr hdr[0U] ;
};
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
enum hrtimer_restart;
struct iwl_fw_error_dump_data {
   __le32 type ;
   __le32 len ;
   __u8 data[] ;
};
struct iwl_fw_error_dump_txcmd {
   __le32 cmdlen ;
   __le32 caplen ;
   u8 data[] ;
};
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct ring_buffer;
struct ring_buffer_iter;
struct trace_seq;
struct trace_seq {
   unsigned char buffer[4096U] ;
   unsigned int len ;
   unsigned int readpos ;
   int full ;
};
union __anonunion_ldv_49264_300 {
   __u64 sample_period ;
   __u64 sample_freq ;
};
union __anonunion_ldv_49295_301 {
   __u32 wakeup_events ;
   __u32 wakeup_watermark ;
};
union __anonunion_ldv_49300_302 {
   __u64 bp_addr ;
   __u64 config1 ;
};
union __anonunion_ldv_49304_303 {
   __u64 bp_len ;
   __u64 config2 ;
};
struct perf_event_attr {
   __u32 type ;
   __u32 size ;
   __u64 config ;
   union __anonunion_ldv_49264_300 ldv_49264 ;
   __u64 sample_type ;
   __u64 read_format ;
   unsigned char disabled : 1 ;
   unsigned char inherit : 1 ;
   unsigned char pinned : 1 ;
   unsigned char exclusive : 1 ;
   unsigned char exclude_user : 1 ;
   unsigned char exclude_kernel : 1 ;
   unsigned char exclude_hv : 1 ;
   unsigned char exclude_idle : 1 ;
   unsigned char mmap : 1 ;
   unsigned char comm : 1 ;
   unsigned char freq : 1 ;
   unsigned char inherit_stat : 1 ;
   unsigned char enable_on_exec : 1 ;
   unsigned char task : 1 ;
   unsigned char watermark : 1 ;
   unsigned char precise_ip : 2 ;
   unsigned char mmap_data : 1 ;
   unsigned char sample_id_all : 1 ;
   unsigned char exclude_host : 1 ;
   unsigned char exclude_guest : 1 ;
   unsigned char exclude_callchain_kernel : 1 ;
   unsigned char exclude_callchain_user : 1 ;
   unsigned char mmap2 : 1 ;
   unsigned char comm_exec : 1 ;
   unsigned long __reserved_1 : 39 ;
   union __anonunion_ldv_49295_301 ldv_49295 ;
   __u32 bp_type ;
   union __anonunion_ldv_49300_302 ldv_49300 ;
   union __anonunion_ldv_49304_303 ldv_49304 ;
   __u64 branch_sample_type ;
   __u64 sample_regs_user ;
   __u32 sample_stack_user ;
   __u32 __reserved_2 ;
};
struct __anonstruct_ldv_49372_306 {
   unsigned char mem_op : 5 ;
   unsigned short mem_lvl : 14 ;
   unsigned char mem_snoop : 5 ;
   unsigned char mem_lock : 2 ;
   unsigned char mem_dtlb : 7 ;
   unsigned int mem_rsvd : 31 ;
};
union perf_mem_data_src {
   __u64 val ;
   struct __anonstruct_ldv_49372_306 ldv_49372 ;
};
struct perf_branch_entry {
   __u64 from ;
   __u64 to ;
   unsigned char mispred : 1 ;
   unsigned char predicted : 1 ;
   unsigned char in_tx : 1 ;
   unsigned char abort : 1 ;
   unsigned long reserved : 60 ;
};
struct pidmap {
   atomic_t nr_free ;
   void *page ;
};
struct bsd_acct_struct;
struct pid_namespace {
   struct kref kref ;
   struct pidmap pidmap[128U] ;
   struct callback_head rcu ;
   int last_pid ;
   unsigned int nr_hashed ;
   struct task_struct *child_reaper ;
   struct kmem_cache *pid_cachep ;
   unsigned int level ;
   struct pid_namespace *parent ;
   struct vfsmount *proc_mnt ;
   struct dentry *proc_self ;
   struct bsd_acct_struct *bacct ;
   struct user_namespace *user_ns ;
   struct work_struct proc_work ;
   kgid_t pid_gid ;
   int hide_pid ;
   int reboot ;
   unsigned int proc_inum ;
};
struct __anonstruct_local_t_310 {
   atomic_long_t a ;
};
typedef struct __anonstruct_local_t_310 local_t;
struct __anonstruct_local64_t_311 {
   local_t a ;
};
typedef struct __anonstruct_local64_t_311 local64_t;
struct arch_hw_breakpoint {
   unsigned long address ;
   u8 len ;
   u8 type ;
};
struct pmu;
struct ftrace_hash;
struct ftrace_ops;
struct ftrace_ops {
   void (*func)(unsigned long , unsigned long , struct ftrace_ops * , struct pt_regs * ) ;
   struct ftrace_ops *next ;
   unsigned long flags ;
   int *disabled ;
   void *private ;
   struct ftrace_hash *notrace_hash ;
   struct ftrace_hash *filter_hash ;
   struct mutex regex_lock ;
};
struct ftrace_ret_stack {
   unsigned long ret ;
   unsigned long func ;
   unsigned long long calltime ;
   unsigned long long subtime ;
   unsigned long fp ;
};
struct irq_work {
   unsigned long flags ;
   struct llist_node llnode ;
   void (*func)(struct irq_work * ) ;
};
struct perf_callchain_entry {
   __u64 nr ;
   __u64 ip[127U] ;
};
struct perf_raw_record {
   u32 size ;
   void *data ;
};
struct perf_branch_stack {
   __u64 nr ;
   struct perf_branch_entry entries[0U] ;
};
struct perf_regs_user {
   __u64 abi ;
   struct pt_regs *regs ;
};
struct hw_perf_event_extra {
   u64 config ;
   unsigned int reg ;
   int alloc ;
   int idx ;
};
struct event_constraint;
struct __anonstruct_ldv_50520_313 {
   u64 config ;
   u64 last_tag ;
   unsigned long config_base ;
   unsigned long event_base ;
   int event_base_rdpmc ;
   int idx ;
   int last_cpu ;
   int flags ;
   struct hw_perf_event_extra extra_reg ;
   struct hw_perf_event_extra branch_reg ;
   struct event_constraint *constraint ;
};
struct __anonstruct_ldv_50523_314 {
   struct hrtimer hrtimer ;
};
struct __anonstruct_ldv_50527_315 {
   struct task_struct *tp_target ;
   struct list_head tp_list ;
};
struct __anonstruct_ldv_50532_316 {
   struct task_struct *bp_target ;
   struct arch_hw_breakpoint info ;
   struct list_head bp_list ;
};
union __anonunion_ldv_50533_312 {
   struct __anonstruct_ldv_50520_313 ldv_50520 ;
   struct __anonstruct_ldv_50523_314 ldv_50523 ;
   struct __anonstruct_ldv_50527_315 ldv_50527 ;
   struct __anonstruct_ldv_50532_316 ldv_50532 ;
};
struct hw_perf_event {
   union __anonunion_ldv_50533_312 ldv_50533 ;
   int state ;
   local64_t prev_count ;
   u64 sample_period ;
   u64 last_period ;
   local64_t period_left ;
   u64 interrupts_seq ;
   u64 interrupts ;
   u64 freq_time_stamp ;
   u64 freq_count_stamp ;
};
struct perf_cpu_context;
struct pmu {
   struct list_head entry ;
   struct module *module ;
   struct device *dev ;
   struct attribute_group const **attr_groups ;
   char const *name ;
   int type ;
   int capabilities ;
   int *pmu_disable_count ;
   struct perf_cpu_context *pmu_cpu_context ;
   int task_ctx_nr ;
   int hrtimer_interval_ms ;
   void (*pmu_enable)(struct pmu * ) ;
   void (*pmu_disable)(struct pmu * ) ;
   int (*event_init)(struct perf_event * ) ;
   int (*add)(struct perf_event * , int ) ;
   void (*del)(struct perf_event * , int ) ;
   void (*start)(struct perf_event * , int ) ;
   void (*stop)(struct perf_event * , int ) ;
   void (*read)(struct perf_event * ) ;
   void (*start_txn)(struct pmu * ) ;
   int (*commit_txn)(struct pmu * ) ;
   void (*cancel_txn)(struct pmu * ) ;
   int (*event_idx)(struct perf_event * ) ;
   void (*flush_branch_stack)(void) ;
};
enum perf_event_active_state {
    PERF_EVENT_STATE_ERROR = -2,
    PERF_EVENT_STATE_OFF = -1,
    PERF_EVENT_STATE_INACTIVE = 0,
    PERF_EVENT_STATE_ACTIVE = 1
} ;
struct perf_sample_data;
struct perf_cgroup;
struct event_filter;
struct perf_event {
   struct list_head event_entry ;
   struct list_head group_entry ;
   struct list_head sibling_list ;
   struct list_head migrate_entry ;
   struct hlist_node hlist_entry ;
   struct list_head active_entry ;
   int nr_siblings ;
   int group_flags ;
   struct perf_event *group_leader ;
   struct pmu *pmu ;
   enum perf_event_active_state state ;
   unsigned int attach_state ;
   local64_t count ;
   atomic64_t child_count ;
   u64 total_time_enabled ;
   u64 total_time_running ;
   u64 tstamp_enabled ;
   u64 tstamp_running ;
   u64 tstamp_stopped ;
   u64 shadow_ctx_time ;
   struct perf_event_attr attr ;
   u16 header_size ;
   u16 id_header_size ;
   u16 read_size ;
   struct hw_perf_event hw ;
   struct perf_event_context *ctx ;
   atomic_long_t refcount ;
   atomic64_t child_total_time_enabled ;
   atomic64_t child_total_time_running ;
   struct mutex child_mutex ;
   struct list_head child_list ;
   struct perf_event *parent ;
   int oncpu ;
   int cpu ;
   struct list_head owner_entry ;
   struct task_struct *owner ;
   struct mutex mmap_mutex ;
   atomic_t mmap_count ;
   struct ring_buffer *rb ;
   struct list_head rb_entry ;
   unsigned long rcu_batches ;
   int rcu_pending ;
   wait_queue_head_t waitq ;
   struct fasync_struct *fasync ;
   int pending_wakeup ;
   int pending_kill ;
   int pending_disable ;
   struct irq_work pending ;
   atomic_t event_limit ;
   void (*destroy)(struct perf_event * ) ;
   struct callback_head callback_head ;
   struct pid_namespace *ns ;
   u64 id ;
   void (*overflow_handler)(struct perf_event * , struct perf_sample_data * , struct pt_regs * ) ;
   void *overflow_handler_context ;
   struct ftrace_event_call *tp_event ;
   struct event_filter *filter ;
   struct ftrace_ops ftrace_ops ;
   struct perf_cgroup *cgrp ;
   int cgrp_defer_enabled ;
};
enum perf_event_context_type {
    task_context = 0,
    cpu_context = 1
} ;
struct perf_event_context {
   struct pmu *pmu ;
   enum perf_event_context_type type ;
   raw_spinlock_t lock ;
   struct mutex mutex ;
   struct list_head pinned_groups ;
   struct list_head flexible_groups ;
   struct list_head event_list ;
   int nr_events ;
   int nr_active ;
   int is_active ;
   int nr_stat ;
   int nr_freq ;
   int rotate_disable ;
   atomic_t refcount ;
   struct task_struct *task ;
   u64 time ;
   u64 timestamp ;
   struct perf_event_context *parent_ctx ;
   u64 parent_gen ;
   u64 generation ;
   int pin_count ;
   int nr_cgroups ;
   int nr_branch_stack ;
   struct callback_head callback_head ;
};
struct perf_cpu_context {
   struct perf_event_context ctx ;
   struct perf_event_context *task_ctx ;
   int active_oncpu ;
   int exclusive ;
   struct hrtimer hrtimer ;
   ktime_t hrtimer_interval ;
   struct list_head rotation_list ;
   struct pmu *unique_pmu ;
   struct perf_cgroup *cgrp ;
};
struct __anonstruct_tid_entry_317 {
   u32 pid ;
   u32 tid ;
};
struct __anonstruct_cpu_entry_318 {
   u32 cpu ;
   u32 reserved ;
};
struct perf_sample_data {
   u64 type ;
   u64 ip ;
   struct __anonstruct_tid_entry_317 tid_entry ;
   u64 time ;
   u64 addr ;
   u64 id ;
   u64 stream_id ;
   struct __anonstruct_cpu_entry_318 cpu_entry ;
   u64 period ;
   union perf_mem_data_src data_src ;
   struct perf_callchain_entry *callchain ;
   struct perf_raw_record *raw ;
   struct perf_branch_stack *br_stack ;
   struct perf_regs_user regs_user ;
   u64 stack_user_size ;
   u64 weight ;
   u64 txn ;
};
struct trace_array;
struct trace_buffer;
struct tracer;
struct trace_iterator;
struct trace_event;
struct trace_entry {
   unsigned short type ;
   unsigned char flags ;
   unsigned char preempt_count ;
   int pid ;
};
struct trace_iterator {
   struct trace_array *tr ;
   struct tracer *trace ;
   struct trace_buffer *trace_buffer ;
   void *private ;
   int cpu_file ;
   struct mutex mutex ;
   struct ring_buffer_iter **buffer_iter ;
   unsigned long iter_flags ;
   struct trace_seq tmp_seq ;
   cpumask_var_t started ;
   bool snapshot ;
   struct trace_seq seq ;
   struct trace_entry *ent ;
   unsigned long lost_events ;
   int leftover ;
   int ent_size ;
   int cpu ;
   u64 ts ;
   loff_t pos ;
   long idx ;
};
enum print_line_t;
struct trace_event_functions {
   enum print_line_t (*trace)(struct trace_iterator * , int , struct trace_event * ) ;
   enum print_line_t (*raw)(struct trace_iterator * , int , struct trace_event * ) ;
   enum print_line_t (*hex)(struct trace_iterator * , int , struct trace_event * ) ;
   enum print_line_t (*binary)(struct trace_iterator * , int , struct trace_event * ) ;
};
struct trace_event {
   struct hlist_node node ;
   struct list_head list ;
   int type ;
   struct trace_event_functions *funcs ;
};
enum print_line_t {
    TRACE_TYPE_PARTIAL_LINE = 0,
    TRACE_TYPE_HANDLED = 1,
    TRACE_TYPE_UNHANDLED = 2,
    TRACE_TYPE_NO_CONSUME = 3
} ;
enum trace_reg {
    TRACE_REG_REGISTER = 0,
    TRACE_REG_UNREGISTER = 1,
    TRACE_REG_PERF_REGISTER = 2,
    TRACE_REG_PERF_UNREGISTER = 3,
    TRACE_REG_PERF_OPEN = 4,
    TRACE_REG_PERF_CLOSE = 5,
    TRACE_REG_PERF_ADD = 6,
    TRACE_REG_PERF_DEL = 7
} ;
struct ftrace_event_class {
   char *system ;
   void *probe ;
   void *perf_probe ;
   int (*reg)(struct ftrace_event_call * , enum trace_reg , void * ) ;
   int (*define_fields)(struct ftrace_event_call * ) ;
   struct list_head *(*get_fields)(struct ftrace_event_call * ) ;
   struct list_head fields ;
   int (*raw_init)(struct ftrace_event_call * ) ;
};
union __anonunion_ldv_51149_319 {
   char *name ;
   struct tracepoint *tp ;
};
struct ftrace_event_call {
   struct list_head list ;
   struct ftrace_event_class *class ;
   union __anonunion_ldv_51149_319 ldv_51149 ;
   struct trace_event event ;
   char const *print_fmt ;
   struct event_filter *filter ;
   struct list_head *files ;
   void *mod ;
   void *data ;
   int flags ;
   int perf_refcount ;
   struct hlist_head *perf_events ;
   int (*perf_perm)(struct ftrace_event_call * , struct perf_event * ) ;
};
struct ftrace_raw_iwlwifi_dev_ioread32 {
   struct trace_entry ent ;
   u32 __data_loc_dev ;
   u32 offs ;
   u32 val ;
   char __data[0U] ;
};
struct ftrace_raw_iwlwifi_dev_iowrite8 {
   struct trace_entry ent ;
   u32 __data_loc_dev ;
   u32 offs ;
   u8 val ;
   char __data[0U] ;
};
struct ftrace_raw_iwlwifi_dev_iowrite32 {
   struct trace_entry ent ;
   u32 __data_loc_dev ;
   u32 offs ;
   u32 val ;
   char __data[0U] ;
};
struct ftrace_raw_iwlwifi_dev_iowrite_prph32 {
   struct trace_entry ent ;
   u32 __data_loc_dev ;
   u32 offs ;
   u32 val ;
   char __data[0U] ;
};
struct ftrace_raw_iwlwifi_dev_ioread_prph32 {
   struct trace_entry ent ;
   u32 __data_loc_dev ;
   u32 offs ;
   u32 val ;
   char __data[0U] ;
};
struct ftrace_raw_iwlwifi_dev_irq {
   struct trace_entry ent ;
   u32 __data_loc_dev ;
   char __data[0U] ;
};
struct ftrace_raw_iwlwifi_dev_ict_read {
   struct trace_entry ent ;
   u32 __data_loc_dev ;
   u32 index ;
   u32 value ;
   char __data[0U] ;
};
struct ftrace_raw_iwlwifi_dev_ucode_cont_event {
   struct trace_entry ent ;
   u32 __data_loc_dev ;
   u32 time ;
   u32 data ;
   u32 ev ;
   char __data[0U] ;
};
struct ftrace_raw_iwlwifi_dev_ucode_wrap_event {
   struct trace_entry ent ;
   u32 __data_loc_dev ;
   u32 wraps ;
   u32 n_entry ;
   u32 p_entry ;
   char __data[0U] ;
};
struct ftrace_raw_iwlwifi_msg_event {
   struct trace_entry ent ;
   u32 __data_loc_msg ;
   char __data[0U] ;
};
struct ftrace_raw_iwlwifi_dbg {
   struct trace_entry ent ;
   u32 level ;
   u8 in_interrupt ;
   u32 __data_loc_function ;
   u32 __data_loc_msg ;
   char __data[0U] ;
};
struct ftrace_raw_iwlwifi_dev_tx_data {
   struct trace_entry ent ;
   u32 __data_loc_dev ;
   u32 __data_loc_data ;
   char __data[0U] ;
};
struct ftrace_raw_iwlwifi_dev_rx_data {
   struct trace_entry ent ;
   u32 __data_loc_dev ;
   u32 __data_loc_data ;
   char __data[0U] ;
};
struct ftrace_raw_iwlwifi_dev_hcmd {
   struct trace_entry ent ;
   u32 __data_loc_dev ;
   u32 __data_loc_hcmd ;
   u32 flags ;
   char __data[0U] ;
};
struct ftrace_raw_iwlwifi_dev_rx {
   struct trace_entry ent ;
   u32 __data_loc_dev ;
   u32 __data_loc_rxbuf ;
   char __data[0U] ;
};
struct ftrace_raw_iwlwifi_dev_tx {
   struct trace_entry ent ;
   u32 __data_loc_dev ;
   size_t framelen ;
   u32 __data_loc_tfd ;
   u32 __data_loc_buf0 ;
   u32 __data_loc_buf1 ;
   char __data[0U] ;
};
struct ftrace_raw_iwlwifi_dev_ucode_error {
   struct trace_entry ent ;
   u32 __data_loc_dev ;
   u32 desc ;
   u32 tsf_low ;
   u32 data1 ;
   u32 data2 ;
   u32 line ;
   u32 blink1 ;
   u32 blink2 ;
   u32 ilink1 ;
   u32 ilink2 ;
   u32 bcon_time ;
   u32 gp1 ;
   u32 gp2 ;
   u32 gp3 ;
   u32 ucode_ver ;
   u32 hw_ver ;
   u32 brd_ver ;
   char __data[0U] ;
};
struct ftrace_raw_iwlwifi_dev_ucode_event {
   struct trace_entry ent ;
   u32 __data_loc_dev ;
   u32 time ;
   u32 data ;
   u32 ev ;
   char __data[0U] ;
};
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
extern struct pv_irq_ops pv_irq_ops ;
extern int scnprintf(char * , size_t , char const * , ...) ;
extern void __bad_percpu_size(void) ;
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
extern int __preempt_count ;
__inline static int preempt_count(void)
{
  int pfo_ret__ ;
  {
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6004;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6004;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6004;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6004;
  default:
  __bad_percpu_size();
  }
  ldv_6004: ;
  return (pfo_ret__ & 2147483647);
}
}
__inline static void __preempt_count_add(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (__preempt_count): "qi" (val));
  }
  goto ldv_6061;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6061;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6061;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_6061;
  default:
  __bad_percpu_size();
  }
  ldv_6061: ;
  return;
}
}
__inline static void __preempt_count_sub(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (__preempt_count): "qi" (- val));
  }
  goto ldv_6073;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6073;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6073;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6073;
  default:
  __bad_percpu_size();
  }
  ldv_6073: ;
  return;
}
}
extern int debug_locks ;
extern int lock_is_held(struct lockdep_map * ) ;
extern void lockdep_rcu_suspicious(char const * , int const , char const * ) ;
__inline static int static_key_count(struct static_key *key )
{
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& key->enabled));
  return (tmp);
}
}
__inline static bool static_key_false(struct static_key *key )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = static_key_count(key);
  tmp___0 = ldv__builtin_expect(tmp > 0, 0L);
  if (tmp___0 != 0L) {
    return (1);
  } else {
  }
  return (0);
}
}
extern bool rcu_is_watching(void) ;
extern bool rcu_lockdep_current_cpu_online(void) ;
extern struct lockdep_map rcu_sched_lock_map ;
extern int debug_lockdep_rcu_enabled(void) ;
__inline static int rcu_read_lock_sched_held(void)
{
  int lockdep_opinion ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  unsigned long _flags ;
  int tmp___5 ;
  int tmp___6 ;
  {
  lockdep_opinion = 0;
  tmp = debug_lockdep_rcu_enabled();
  if (tmp == 0) {
    return (1);
  } else {
  }
  tmp___0 = rcu_is_watching();
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
  }
  tmp___2 = rcu_lockdep_current_cpu_online();
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    return (0);
  } else {
  }
  if (debug_locks != 0) {
    lockdep_opinion = lock_is_held(& rcu_sched_lock_map);
  } else {
  }
  if (lockdep_opinion != 0) {
    tmp___6 = 1;
  } else {
    tmp___4 = preempt_count();
    if (tmp___4 != 0) {
      tmp___6 = 1;
    } else {
      _flags = arch_local_save_flags();
      tmp___5 = arch_irqs_disabled_flags(_flags);
      if (tmp___5 != 0) {
        tmp___6 = 1;
      } else {
        tmp___6 = 0;
      }
    }
  }
  return (tmp___6);
}
}
__inline static void rcu_read_lock_sched_notrace(void)
{
  {
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void rcu_read_unlock_sched_notrace(void)
{
  {
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  return;
}
}
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
int ldv_irq_2_0 = 0;
int ldv_irq_2_1 = 0;
int ldv_irq_1_3 = 0;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_1 = 0;
int ldv_irq_2_2 = 0;
int ldv_irq_1_0 = 0;
int ldv_irq_1_2 = 0;
int ldv_irq_2_3 = 0;
void activate_suitable_irq_2(int line , void *data ) ;
int reg_check_2(irqreturn_t (*handler)(int , void * ) , irqreturn_t (*thread_fn)(int ,
                                                                                  void * ) ) ;
extern void __const_udelay(unsigned long ) ;
extern struct sk_buff *skb_clone(struct sk_buff * , gfp_t ) ;
struct sk_buff *ldv_skb_clone_24(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_33(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
extern struct sk_buff *skb_copy(struct sk_buff const * , gfp_t ) ;
struct sk_buff *ldv_skb_copy_26(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
extern int pskb_expand_head(struct sk_buff * , int , int , gfp_t ) ;
int ldv_pskb_expand_head_22(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_30(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
void *ldv_malloc(size_t size ) ;
struct sk_buff *ldv___netdev_alloc_skb_27(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_28(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_29(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
int ldv_request_threaded_irq_32(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                    void * ) ,
                                irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                char const *ldv_func_arg5 , void *ldv_func_arg6 ) ;
void __iwl_err(struct device *dev , bool rfkill_prefix , bool trace_only , char const *fmt
               , ...) ;
__inline static void iwl_trans_write32(struct iwl_trans *trans , u32 ofs , u32 val )
{
  {
  (*((trans->ops)->write32))(trans, ofs, val);
  return;
}
}
__inline static u32 iwl_trans_read32(struct iwl_trans *trans , u32 ofs )
{
  u32 tmp ;
  {
  tmp = (*((trans->ops)->read32))(trans, ofs);
  return (tmp);
}
}
__inline static u32 iwl_trans_read_prph(struct iwl_trans *trans , u32 ofs )
{
  u32 tmp ;
  {
  tmp = (*((trans->ops)->read_prph))(trans, ofs);
  return (tmp);
}
}
__inline static void iwl_trans_write_prph(struct iwl_trans *trans , u32 ofs , u32 val )
{
  {
  return;
}
}
__inline static void iwl_trans_release_nic_access(struct iwl_trans *trans , unsigned long *flags )
{
  {
  (*((trans->ops)->release_nic_access))(trans, flags);
  return;
}
}
struct tracepoint __tracepoint_iwlwifi_dev_ioread32 ;
__inline static void trace_iwlwifi_dev_ioread32(struct device const *dev , u32 offs ,
                                                u32 val )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_ioread32.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_ioread32.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 101,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_47769:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , u32 , u32 ))it_func))(__data,
                                                                              dev,
                                                                              offs,
                                                                              val);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_47769;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
struct tracepoint __tracepoint_iwlwifi_dev_iowrite32 ;
__inline static void trace_iwlwifi_dev_iowrite32(struct device const *dev , u32 offs ,
                                                 u32 val )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_iowrite32.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_iowrite32.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 135,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_47857:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , u32 , u32 ))it_func))(__data,
                                                                              dev,
                                                                              offs,
                                                                              val);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_47857;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
struct tracepoint __tracepoint_iwlwifi_dev_iowrite_prph32 ;
__inline static void trace_iwlwifi_dev_iowrite_prph32(struct device const *dev ,
                                                      u32 offs , u32 val )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_iowrite_prph32.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_iowrite_prph32.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 152,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_47901:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , u32 , u32 ))it_func))(__data,
                                                                              dev,
                                                                              offs,
                                                                              val);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_47901;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
struct tracepoint __tracepoint_iwlwifi_dev_ioread_prph32 ;
__inline static void trace_iwlwifi_dev_ioread_prph32(struct device const *dev ,
                                                     u32 offs , u32 val )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_ioread_prph32.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_ioread_prph32.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 169,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_47945:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , u32 , u32 ))it_func))(__data,
                                                                              dev,
                                                                              offs,
                                                                              val);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_47945;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
__inline static void iwl_write32(struct iwl_trans *trans , u32 ofs , u32 val )
{
  {
  trace_iwlwifi_dev_iowrite32((struct device const *)trans->dev, ofs, val);
  iwl_trans_write32(trans, ofs, val);
  return;
}
}
__inline static u32 iwl_read32(struct iwl_trans *trans , u32 ofs )
{
  u32 val ;
  u32 tmp ;
  {
  tmp = iwl_trans_read32(trans, ofs);
  val = tmp;
  trace_iwlwifi_dev_ioread32((struct device const *)trans->dev, ofs, val);
  return (val);
}
}
int iwl_poll_bit(struct iwl_trans *trans , u32 addr , u32 bits , u32 mask , int timeout ) ;
int iwl_poll_direct_bit(struct iwl_trans *trans , u32 addr , u32 mask , int timeout ) ;
u32 iwl_read_direct32(struct iwl_trans *trans , u32 reg ) ;
void iwl_write_direct32(struct iwl_trans *trans , u32 reg , u32 value ) ;
u32 __iwl_read_prph(struct iwl_trans *trans , u32 ofs ) ;
u32 iwl_read_prph(struct iwl_trans *trans , u32 ofs ) ;
void __iwl_write_prph(struct iwl_trans *trans , u32 ofs , u32 val ) ;
void iwl_write_prph(struct iwl_trans *trans , u32 ofs , u32 val ) ;
int iwl_poll_prph_bit(struct iwl_trans *trans , u32 addr , u32 bits , u32 mask , int timeout ) ;
void iwl_set_bits_prph(struct iwl_trans *trans , u32 ofs , u32 mask ) ;
void iwl_set_bits_mask_prph(struct iwl_trans *trans , u32 ofs , u32 bits , u32 mask ) ;
void iwl_clear_bits_prph(struct iwl_trans *trans , u32 ofs , u32 mask ) ;
void iwl_force_nmi(struct iwl_trans *trans ) ;
int iwl_dump_fh(struct iwl_trans *trans , char **buf ) ;
int iwl_poll_bit(struct iwl_trans *trans , u32 addr , u32 bits , u32 mask , int timeout )
{
  int t ;
  u32 tmp ;
  {
  t = 0;
  ldv_48929:
  tmp = iwl_read32(trans, addr);
  if (((tmp ^ bits) & mask) == 0U) {
    return (t);
  } else {
  }
  __const_udelay(42950UL);
  t = t + 10;
  if (t < timeout) {
    goto ldv_48929;
  } else {
  }
  return (-110);
}
}
static char const __kstrtab_iwl_poll_bit[13U] =
  { 'i', 'w', 'l', '_',
        'p', 'o', 'l', 'l',
        '_', 'b', 'i', 't',
        '\000'};
struct kernel_symbol const __ksymtab_iwl_poll_bit ;
struct kernel_symbol const __ksymtab_iwl_poll_bit = {(unsigned long )(& iwl_poll_bit), (char const *)(& __kstrtab_iwl_poll_bit)};
u32 iwl_read_direct32(struct iwl_trans *trans , u32 reg )
{
  u32 value ;
  unsigned long flags ;
  bool tmp ;
  long tmp___0 ;
  {
  value = 1515870810U;
  tmp = (*((trans->ops)->grab_nic_access))(trans, 0, & flags);
  tmp___0 = ldv__builtin_expect((long )tmp, 1L);
  if (tmp___0 != 0L) {
    value = iwl_read32(trans, reg);
    iwl_trans_release_nic_access(trans, & flags);
  } else {
  }
  return (value);
}
}
static char const __kstrtab_iwl_read_direct32[18U] =
  { 'i', 'w', 'l', '_',
        'r', 'e', 'a', 'd',
        '_', 'd', 'i', 'r',
        'e', 'c', 't', '3',
        '2', '\000'};
struct kernel_symbol const __ksymtab_iwl_read_direct32 ;
struct kernel_symbol const __ksymtab_iwl_read_direct32 = {(unsigned long )(& iwl_read_direct32), (char const *)(& __kstrtab_iwl_read_direct32)};
void iwl_write_direct32(struct iwl_trans *trans , u32 reg , u32 value )
{
  unsigned long flags ;
  bool tmp ;
  long tmp___0 ;
  {
  tmp = (*((trans->ops)->grab_nic_access))(trans, 0, & flags);
  tmp___0 = ldv__builtin_expect((long )tmp, 1L);
  if (tmp___0 != 0L) {
    iwl_write32(trans, reg, value);
    iwl_trans_release_nic_access(trans, & flags);
  } else {
  }
  return;
}
}
static char const __kstrtab_iwl_write_direct32[19U] =
  { 'i', 'w', 'l', '_',
        'w', 'r', 'i', 't',
        'e', '_', 'd', 'i',
        'r', 'e', 'c', 't',
        '3', '2', '\000'};
struct kernel_symbol const __ksymtab_iwl_write_direct32 ;
struct kernel_symbol const __ksymtab_iwl_write_direct32 = {(unsigned long )(& iwl_write_direct32), (char const *)(& __kstrtab_iwl_write_direct32)};
int iwl_poll_direct_bit(struct iwl_trans *trans , u32 addr , u32 mask , int timeout )
{
  int t ;
  u32 tmp ;
  {
  t = 0;
  ldv_48978:
  tmp = iwl_read_direct32(trans, addr);
  if ((tmp & mask) == mask) {
    return (t);
  } else {
  }
  __const_udelay(42950UL);
  t = t + 10;
  if (t < timeout) {
    goto ldv_48978;
  } else {
  }
  return (-110);
}
}
static char const __kstrtab_iwl_poll_direct_bit[20U] =
  { 'i', 'w', 'l', '_',
        'p', 'o', 'l', 'l',
        '_', 'd', 'i', 'r',
        'e', 'c', 't', '_',
        'b', 'i', 't', '\000'};
struct kernel_symbol const __ksymtab_iwl_poll_direct_bit ;
struct kernel_symbol const __ksymtab_iwl_poll_direct_bit = {(unsigned long )(& iwl_poll_direct_bit), (char const *)(& __kstrtab_iwl_poll_direct_bit)};
u32 __iwl_read_prph(struct iwl_trans *trans , u32 ofs )
{
  u32 val ;
  u32 tmp ;
  {
  tmp = iwl_trans_read_prph(trans, ofs);
  val = tmp;
  trace_iwlwifi_dev_ioread_prph32((struct device const *)trans->dev, ofs, val);
  return (val);
}
}
void __iwl_write_prph(struct iwl_trans *trans , u32 ofs , u32 val )
{
  {
  trace_iwlwifi_dev_iowrite_prph32((struct device const *)trans->dev, ofs, val);
  iwl_trans_write_prph(trans, ofs, val);
  return;
}
}
u32 iwl_read_prph(struct iwl_trans *trans , u32 ofs )
{
  unsigned long flags ;
  u32 val ;
  bool tmp ;
  long tmp___0 ;
  {
  val = 1515870810U;
  tmp = (*((trans->ops)->grab_nic_access))(trans, 0, & flags);
  tmp___0 = ldv__builtin_expect((long )tmp, 1L);
  if (tmp___0 != 0L) {
    val = __iwl_read_prph(trans, ofs);
    iwl_trans_release_nic_access(trans, & flags);
  } else {
  }
  return (val);
}
}
static char const __kstrtab_iwl_read_prph[14U] =
  { 'i', 'w', 'l', '_',
        'r', 'e', 'a', 'd',
        '_', 'p', 'r', 'p',
        'h', '\000'};
struct kernel_symbol const __ksymtab_iwl_read_prph ;
struct kernel_symbol const __ksymtab_iwl_read_prph = {(unsigned long )(& iwl_read_prph), (char const *)(& __kstrtab_iwl_read_prph)};
void iwl_write_prph(struct iwl_trans *trans , u32 ofs , u32 val )
{
  unsigned long flags ;
  bool tmp ;
  long tmp___0 ;
  {
  tmp = (*((trans->ops)->grab_nic_access))(trans, 0, & flags);
  tmp___0 = ldv__builtin_expect((long )tmp, 1L);
  if (tmp___0 != 0L) {
    __iwl_write_prph(trans, ofs, val);
    iwl_trans_release_nic_access(trans, & flags);
  } else {
  }
  return;
}
}
static char const __kstrtab_iwl_write_prph[15U] =
  { 'i', 'w', 'l', '_',
        'w', 'r', 'i', 't',
        'e', '_', 'p', 'r',
        'p', 'h', '\000'};
struct kernel_symbol const __ksymtab_iwl_write_prph ;
struct kernel_symbol const __ksymtab_iwl_write_prph = {(unsigned long )(& iwl_write_prph), (char const *)(& __kstrtab_iwl_write_prph)};
int iwl_poll_prph_bit(struct iwl_trans *trans , u32 addr , u32 bits , u32 mask , int timeout )
{
  int t ;
  u32 tmp ;
  {
  t = 0;
  ldv_49037:
  tmp = iwl_read_prph(trans, addr);
  if (((tmp ^ bits) & mask) == 0U) {
    return (t);
  } else {
  }
  __const_udelay(42950UL);
  t = t + 10;
  if (t < timeout) {
    goto ldv_49037;
  } else {
  }
  return (-110);
}
}
void iwl_set_bits_prph(struct iwl_trans *trans , u32 ofs , u32 mask )
{
  unsigned long flags ;
  u32 tmp ;
  bool tmp___0 ;
  long tmp___1 ;
  {
  tmp___0 = (*((trans->ops)->grab_nic_access))(trans, 0, & flags);
  tmp___1 = ldv__builtin_expect((long )tmp___0, 1L);
  if (tmp___1 != 0L) {
    tmp = __iwl_read_prph(trans, ofs);
    __iwl_write_prph(trans, ofs, tmp | mask);
    iwl_trans_release_nic_access(trans, & flags);
  } else {
  }
  return;
}
}
static char const __kstrtab_iwl_set_bits_prph[18U] =
  { 'i', 'w', 'l', '_',
        's', 'e', 't', '_',
        'b', 'i', 't', 's',
        '_', 'p', 'r', 'p',
        'h', '\000'};
struct kernel_symbol const __ksymtab_iwl_set_bits_prph ;
struct kernel_symbol const __ksymtab_iwl_set_bits_prph = {(unsigned long )(& iwl_set_bits_prph), (char const *)(& __kstrtab_iwl_set_bits_prph)};
void iwl_set_bits_mask_prph(struct iwl_trans *trans , u32 ofs , u32 bits , u32 mask )
{
  unsigned long flags ;
  u32 tmp ;
  bool tmp___0 ;
  long tmp___1 ;
  {
  tmp___0 = (*((trans->ops)->grab_nic_access))(trans, 0, & flags);
  tmp___1 = ldv__builtin_expect((long )tmp___0, 1L);
  if (tmp___1 != 0L) {
    tmp = __iwl_read_prph(trans, ofs);
    __iwl_write_prph(trans, ofs, (tmp & mask) | bits);
    iwl_trans_release_nic_access(trans, & flags);
  } else {
  }
  return;
}
}
static char const __kstrtab_iwl_set_bits_mask_prph[23U] =
  { 'i', 'w', 'l', '_',
        's', 'e', 't', '_',
        'b', 'i', 't', 's',
        '_', 'm', 'a', 's',
        'k', '_', 'p', 'r',
        'p', 'h', '\000'};
struct kernel_symbol const __ksymtab_iwl_set_bits_mask_prph ;
struct kernel_symbol const __ksymtab_iwl_set_bits_mask_prph = {(unsigned long )(& iwl_set_bits_mask_prph), (char const *)(& __kstrtab_iwl_set_bits_mask_prph)};
void iwl_clear_bits_prph(struct iwl_trans *trans , u32 ofs , u32 mask )
{
  unsigned long flags ;
  u32 val ;
  bool tmp ;
  long tmp___0 ;
  {
  tmp = (*((trans->ops)->grab_nic_access))(trans, 0, & flags);
  tmp___0 = ldv__builtin_expect((long )tmp, 1L);
  if (tmp___0 != 0L) {
    val = __iwl_read_prph(trans, ofs);
    __iwl_write_prph(trans, ofs, ~ mask & val);
    iwl_trans_release_nic_access(trans, & flags);
  } else {
  }
  return;
}
}
static char const __kstrtab_iwl_clear_bits_prph[20U] =
  { 'i', 'w', 'l', '_',
        'c', 'l', 'e', 'a',
        'r', '_', 'b', 'i',
        't', 's', '_', 'p',
        'r', 'p', 'h', '\000'};
struct kernel_symbol const __ksymtab_iwl_clear_bits_prph ;
struct kernel_symbol const __ksymtab_iwl_clear_bits_prph = {(unsigned long )(& iwl_clear_bits_prph), (char const *)(& __kstrtab_iwl_clear_bits_prph)};
void iwl_force_nmi(struct iwl_trans *trans )
{
  {
  if ((unsigned int )(trans->cfg)->device_family != 16U || (trans->hw_rev & 12U) == 0U) {
    iwl_write_prph(trans, 10492976U, 1U);
  } else {
    iwl_write_prph(trans, 10492964U, 16777216U);
  }
  return;
}
}
static char const __kstrtab_iwl_force_nmi[14U] =
  { 'i', 'w', 'l', '_',
        'f', 'o', 'r', 'c',
        'e', '_', 'n', 'm',
        'i', '\000'};
struct kernel_symbol const __ksymtab_iwl_force_nmi ;
struct kernel_symbol const __ksymtab_iwl_force_nmi = {(unsigned long )(& iwl_force_nmi), (char const *)(& __kstrtab_iwl_force_nmi)};
static char const *get_fh_string(int cmd )
{
  {
  switch (cmd) {
  case 7104: ;
  return ("FH_RSCSR_CHNL0_STTS_WPTR_REG");
  case 7108: ;
  return ("FH_RSCSR_CHNL0_RBDCB_BASE_REG");
  case 7112: ;
  return ("FH_RSCSR_CHNL0_WPTR");
  case 7168: ;
  return ("FH_MEM_RCSR_CHNL0_CONFIG_REG");
  case 7232: ;
  return ("FH_MEM_RSSR_SHARED_CTRL_REG");
  case 7236: ;
  return ("FH_MEM_RSSR_RX_STATUS_REG");
  case 7240: ;
  return ("FH_MEM_RSSR_RX_ENABLE_ERR_IRQ2DRV");
  case 7856: ;
  return ("FH_TSSR_TX_STATUS_REG");
  case 7864: ;
  return ("FH_TSSR_TX_ERROR_REG");
  default: ;
  return ("UNKNOWN");
  }
}
}
int iwl_dump_fh(struct iwl_trans *trans , char **buf )
{
  int i ;
  u32 fh_tbl[9U] ;
  int pos ;
  size_t bufsz ;
  void *tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  char const *tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  char const *tmp___5 ;
  {
  fh_tbl[0] = 7104U;
  fh_tbl[1] = 7108U;
  fh_tbl[2] = 7112U;
  fh_tbl[3] = 7168U;
  fh_tbl[4] = 7232U;
  fh_tbl[5] = 7236U;
  fh_tbl[6] = 7240U;
  fh_tbl[7] = 7856U;
  fh_tbl[8] = 7864U;
  if ((unsigned long )buf != (unsigned long )((char **)0)) {
    pos = 0;
    bufsz = 472UL;
    tmp = kmalloc(bufsz, 208U);
    *buf = (char *)tmp;
    if ((unsigned long )*buf == (unsigned long )((char *)0)) {
      return (-12);
    } else {
    }
    tmp___0 = scnprintf(*buf + (unsigned long )pos, bufsz - (size_t )pos, "FH register values:\n");
    pos = tmp___0 + pos;
    i = 0;
    goto ldv_49123;
    ldv_49122:
    tmp___1 = iwl_read_direct32(trans, fh_tbl[i]);
    tmp___2 = get_fh_string((int )fh_tbl[i]);
    tmp___3 = scnprintf(*buf + (unsigned long )pos, bufsz - (size_t )pos, "  %34s: 0X%08x\n",
                        tmp___2, tmp___1);
    pos = tmp___3 + pos;
    i = i + 1;
    ldv_49123: ;
    if ((unsigned int )i <= 8U) {
      goto ldv_49122;
    } else {
    }
    return (pos);
  } else {
  }
  __iwl_err(trans->dev, 0, 0, "FH register values:\n");
  i = 0;
  goto ldv_49128;
  ldv_49127:
  tmp___4 = iwl_read_direct32(trans, fh_tbl[i]);
  tmp___5 = get_fh_string((int )fh_tbl[i]);
  __iwl_err(trans->dev, 0, 0, "  %34s: 0X%08x\n", tmp___5, tmp___4);
  i = i + 1;
  ldv_49128: ;
  if ((unsigned int )i <= 8U) {
    goto ldv_49127;
  } else {
  }
  return (0);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  ldv_kmalloc_12(size, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_22(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_24(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_26(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_27(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_28(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_29(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_30(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_request_threaded_irq_32(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                    void * ) ,
                                irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                char const *ldv_func_arg5 , void *ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_threaded_irq(ldv_func_arg1, handler, thread_fn, ldv_func_arg4, ldv_func_arg5,
                             ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg6);
  } else {
  }
  return (ldv_func_res);
}
}
struct sk_buff *ldv_skb_clone_33(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
extern struct module __this_module ;
__inline static __u32 __le32_to_cpup(__le32 const *p )
{
  {
  return ((__u32 )*p);
}
}
extern int printk(char const * , ...) ;
extern void print_hex_dump(char const * , char const * , int , int , int ,
                           void const * , size_t , bool ) ;
extern void __might_sleep(char const * , int , int ) ;
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
extern void warn_slowpath_null(char const * , int const ) ;
extern void *memset(void * , int , size_t ) ;
extern char *strcpy(char * , char const * ) ;
extern int strcmp(char const * , char const * ) ;
__inline static void *ERR_PTR(long error )
{
  {
  return ((void *)error);
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  return;
}
}
extern void wait_for_completion(struct completion * ) ;
extern void complete(struct completion * ) ;
extern void *vmalloc(unsigned long ) ;
void *ldv_vmalloc_81(unsigned long ldv_func_arg1 ) ;
extern void vfree(void const * ) ;
extern int __request_module(bool , char const * , ...) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
int ldv_state_variable_47 ;
int ldv_state_variable_20 ;
struct file *iwl_dbgfs_interrupt_ops_group2 ;
struct pci_dev *iwl_pci_driver_group0 ;
int ldv_state_variable_30 ;
int ldv_state_variable_0 ;
int ldv_state_variable_45 ;
int ldv_state_variable_12 ;
int ldv_state_variable_22 ;
int ldv_state_variable_14 ;
struct timer_list *ldv_timer_list_3_2 ;
int ldv_timer_3_3 ;
struct inode *iwl_dbgfs_interrupt_ops_group1 ;
int ldv_state_variable_37 ;
int ldv_state_variable_29 ;
int ldv_state_variable_17 ;
struct file *iwl_dbgfs_fh_reg_ops_group2 ;
struct ftrace_event_call *event_class_iwlwifi_dev_iowrite32_group0 ;
void *ldv_irq_data_2_3 ;
int ldv_state_variable_19 ;
int ldv_state_variable_27 ;
int ldv_state_variable_9 ;
int ref_cnt ;
int ldv_state_variable_42 ;
struct file *iwl_dbgfs_tx_queue_ops_group2 ;
int ldv_irq_line_1_1 ;
void *ldv_irq_data_2_2 ;
int ldv_state_variable_7 ;
int ldv_state_variable_23 ;
struct inode *iwl_dbgfs_rx_queue_ops_group1 ;
void *ldv_irq_data_2_1 ;
int ldv_irq_line_2_2 ;
void *ldv_irq_data_1_0 ;
int ldv_state_variable_6 ;
void *ldv_irq_data_1_3 ;
int ldv_state_variable_26 ;
int ldv_state_variable_28 ;
struct ftrace_event_call *event_class_iwlwifi_dev_ioread32_group0 ;
int ldv_state_variable_44 ;
int ldv_state_variable_38 ;
int ldv_state_variable_39 ;
struct inode *iwl_dbgfs_csr_ops_group1 ;
int ldv_timer_3_2 ;
struct ftrace_event_call *event_class_iwlwifi_dev_rx_group0 ;
struct ftrace_event_call *event_class_iwlwifi_dev_tx_group0 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
int ldv_state_variable_31 ;
int ldv_timer_3_0 ;
struct ftrace_event_call *event_class_iwlwifi_dev_ucode_wrap_event_group0 ;
struct ftrace_event_call *event_class_iwlwifi_dev_irq_group0 ;
int ldv_state_variable_4 ;
int ldv_state_variable_36 ;
int ldv_state_variable_8 ;
int ldv_state_variable_46 ;
int ldv_state_variable_15 ;
struct ftrace_event_call *event_class_iwlwifi_dev_ucode_cont_event_group0 ;
int ldv_state_variable_5 ;
int ldv_state_variable_21 ;
int ldv_state_variable_33 ;
struct device *iwl_dev_pm_ops_group1 ;
int ldv_state_variable_13 ;
struct timer_list *ldv_timer_list_3_1 ;
struct ftrace_event_call *event_class_iwlwifi_dev_iowrite_prph32_group0 ;
struct ftrace_event_call *event_class_iwlwifi_dev_ioread_prph32_group0 ;
struct timer_list *ldv_timer_list_3_3 ;
struct file *iwl_dbgfs_rx_queue_ops_group2 ;
struct ftrace_event_call *event_class_iwlwifi_msg_event_group0 ;
int ldv_state_variable_24 ;
int ldv_irq_line_2_0 ;
int ldv_timer_3_1 ;
struct ftrace_event_call *event_class_iwlwifi_dbg_group0 ;
struct ftrace_event_call *event_class_iwlwifi_dev_iowrite8_group0 ;
struct ftrace_event_call *event_class_iwlwifi_dev_rx_data_group0 ;
int ldv_state_variable_1 ;
int ldv_state_variable_41 ;
int ldv_irq_line_1_2 ;
struct ftrace_event_call *event_class_iwlwifi_dev_hcmd_group0 ;
int ldv_state_variable_40 ;
int ldv_irq_line_2_3 ;
struct inode *iwl_dbgfs_tx_queue_ops_group1 ;
struct ftrace_event_call *event_class_iwlwifi_dev_ucode_event_group0 ;
void *ldv_irq_data_1_1 ;
struct file *iwl_dbgfs_csr_ops_group2 ;
struct iwl_trans *trans_ops_pcie_group1 ;
int ldv_state_variable_10 ;
int ldv_state_variable_16 ;
int ldv_irq_line_2_1 ;
int ldv_state_variable_2 ;
int ldv_state_variable_43 ;
int ldv_state_variable_25 ;
struct ftrace_event_call *event_class_iwlwifi_dev_ict_read_group0 ;
void *ldv_irq_data_1_2 ;
void *ldv_irq_data_2_0 ;
int ldv_state_variable_11 ;
int ldv_state_variable_18 ;
struct inode *iwl_dbgfs_fh_reg_ops_group1 ;
int ldv_irq_line_1_3 ;
struct ftrace_event_call *event_class_iwlwifi_dev_tx_data_group0 ;
int ldv_state_variable_32 ;
int ldv_state_variable_34 ;
struct timer_list *ldv_timer_list_3_0 ;
int ldv_state_variable_35 ;
struct ftrace_event_call *event_class_iwlwifi_dev_ucode_error_group0 ;
void ldv_initialize_ftrace_event_class_11(void) ;
void ldv_initialize_ftrace_event_class_4(void) ;
void ldv_initialize_ftrace_event_class_9(void) ;
void ldv_initialize_ftrace_event_class_7(void) ;
void ldv_file_operations_41(void) ;
void ldv_iwl_trans_ops_40(void) ;
void ldv_file_operations_45(void) ;
void ldv_file_operations_43(void) ;
void ldv_initialize_ftrace_event_class_15(void) ;
void ldv_initialize_ftrace_event_class_13(void) ;
void ldv_initialize_ftrace_event_class_20(void) ;
void ldv_initialize_ftrace_event_class_18(void) ;
void ldv_initialize_ftrace_event_class_10(void) ;
void ldv_initialize_ftrace_event_class_21(void) ;
void ldv_initialize_ftrace_event_class_17(void) ;
void ldv_initialize_ftrace_event_class_5(void) ;
void ldv_file_operations_44(void) ;
void timer_init_3(void) ;
void ldv_initialize_ftrace_event_class_16(void) ;
void ldv_initialize_ftrace_event_class_12(void) ;
void ldv_initialize_ftrace_event_class_8(void) ;
void ldv_initialize_ftrace_event_class_6(void) ;
void ldv_initialize_ftrace_event_class_14(void) ;
void ldv_file_operations_42(void) ;
void ldv_dev_pm_ops_47(void) ;
void ldv_initialize_ftrace_event_class_19(void) ;
void ldv_initialize_pci_driver_46(void) ;
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
extern void device_release_driver(struct device * ) ;
extern int request_firmware_nowait(struct module * , bool , char const * , struct device * ,
                                   gfp_t , void * , void (*)(struct firmware const * ,
                                                              void * ) ) ;
extern void release_firmware(struct firmware const * ) ;
struct iwl_drv *iwl_drv_start(struct iwl_trans *trans , struct iwl_cfg const *cfg ) ;
void iwl_drv_stop(struct iwl_drv *drv ) ;
struct sk_buff *ldv_skb_clone_70(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_79(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_72(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_68(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_76(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_77(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_73(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_74(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_75(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
int ldv_request_threaded_irq_78(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                    void * ) ,
                                irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                char const *ldv_func_arg5 , void *ldv_func_arg6 ) ;
extern struct dentry *debugfs_create_dir(char const * , struct dentry * ) ;
extern void debugfs_remove_recursive(struct dentry * ) ;
struct iwl_mod_params iwlwifi_mod_params ;
__inline static bool iwl_have_debug_level(u32 level )
{
  {
  return ((iwlwifi_mod_params.debug_level & level) != 0U);
}
}
void __iwl_info(struct device *dev , char const *fmt , ...) ;
void __iwl_dbg(struct device *dev , u32 level , bool limit , char const *function ,
               char const *fmt , ...) ;
int iwl_opmode_register(char const *name , struct iwl_op_mode_ops const *ops ) ;
void iwl_opmode_deregister(char const *name ) ;
__inline static void iwl_op_mode_stop(struct iwl_op_mode *op_mode )
{
  {
  __might_sleep("drivers/net/wireless/iwlwifi/iwl-op-mode.h", 184, 0);
  (*((op_mode->ops)->stop))(op_mode);
  return;
}
}
int iwl_pci_register_driver(void) ;
void iwl_pci_unregister_driver(void) ;
static struct dentry *iwl_dbgfs_root ;
static struct mutex iwlwifi_opmode_table_mtx ;
static struct iwlwifi_opmode_table iwlwifi_opmode_table[2U] = { {"iwldvm", (struct iwl_op_mode_ops const *)0, {0, 0}},
        {"iwlmvm", (struct iwl_op_mode_ops const *)0, {0, 0}}};
static void iwl_free_fw_desc(struct iwl_drv *drv , struct fw_desc *desc )
{
  {
  vfree(desc->data);
  desc->data = (void const *)0;
  desc->len = 0U;
  return;
}
}
static void iwl_free_fw_img(struct iwl_drv *drv , struct fw_img *img )
{
  int i ;
  {
  i = 0;
  goto ldv_47848;
  ldv_47847:
  iwl_free_fw_desc(drv, (struct fw_desc *)(& img->sec) + (unsigned long )i);
  i = i + 1;
  ldv_47848: ;
  if (i <= 11) {
    goto ldv_47847;
  } else {
  }
  return;
}
}
static void iwl_dealloc_ucode(struct iwl_drv *drv )
{
  int i ;
  {
  i = 0;
  goto ldv_47855;
  ldv_47854:
  iwl_free_fw_img(drv, (struct fw_img *)(& drv->fw.img) + (unsigned long )i);
  i = i + 1;
  ldv_47855: ;
  if (i <= 2) {
    goto ldv_47854;
  } else {
  }
  return;
}
}
static int iwl_alloc_fw_desc(struct iwl_drv *drv , struct fw_desc *desc , struct fw_sec *sec )
{
  void *data ;
  size_t __len ;
  void *__ret ;
  {
  desc->data = (void const *)0;
  if ((unsigned long )sec == (unsigned long )((struct fw_sec *)0) || sec->size == 0UL) {
    return (-22);
  } else {
  }
  data = ldv_vmalloc_81(sec->size);
  if ((unsigned long )data == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  desc->len = (u32 )sec->size;
  desc->offset = sec->offset;
  __len = (size_t )desc->len;
  __ret = memcpy(data, sec->data, __len);
  desc->data = (void const *)data;
  return (0);
}
}
static void iwl_req_fw_callback(struct firmware const *ucode_raw , void *context ) ;
static int iwl_request_firmware(struct iwl_drv *drv , bool first )
{
  char const *name_pre ;
  char tag[8U] ;
  int tmp ;
  {
  name_pre = (drv->cfg)->fw_name_pre;
  if ((int )first) {
    drv->fw_index = 100;
    strcpy((char *)(& tag), "exp");
  } else
  if (drv->fw_index == 100) {
    drv->fw_index = (int )(drv->cfg)->ucode_api_max;
    sprintf((char *)(& tag), "%d", drv->fw_index);
  } else {
    drv->fw_index = drv->fw_index - 1;
    sprintf((char *)(& tag), "%d", drv->fw_index);
  }
  if ((unsigned int )drv->fw_index < (unsigned int )(drv->cfg)->ucode_api_min) {
    __iwl_err(drv->dev, 0, 0, "no suitable firmware found!\n");
    return (-2);
  } else {
  }
  snprintf((char *)(& drv->firmware_name), 32UL, "%s%s.ucode", name_pre, (char *)(& tag));
  __iwl_dbg(drv->dev, 1U, 0, "iwl_request_firmware", "attempting to load firmware %s\'%s\'\n",
            drv->fw_index == 100 ? (char *)"EXPERIMENTAL " : (char *)"", (char *)(& drv->firmware_name));
  tmp = request_firmware_nowait(& __this_module, 1, (char const *)(& drv->firmware_name),
                                (drv->trans)->dev, 208U, (void *)drv, & iwl_req_fw_callback);
  return (tmp);
}
}
static struct fw_sec *get_sec(struct iwl_firmware_pieces *pieces , enum iwl_ucode_type type ,
                              int sec )
{
  {
  return ((struct fw_sec *)(& pieces->img[(unsigned int )type].sec) + (unsigned long )sec);
}
}
static void set_sec_data(struct iwl_firmware_pieces *pieces , enum iwl_ucode_type type ,
                         int sec , void const *data )
{
  {
  pieces->img[(unsigned int )type].sec[sec].data = data;
  return;
}
}
static void set_sec_size(struct iwl_firmware_pieces *pieces , enum iwl_ucode_type type ,
                         int sec , size_t size )
{
  {
  pieces->img[(unsigned int )type].sec[sec].size = size;
  return;
}
}
static size_t get_sec_size(struct iwl_firmware_pieces *pieces , enum iwl_ucode_type type ,
                           int sec )
{
  {
  return (pieces->img[(unsigned int )type].sec[sec].size);
}
}
static void set_sec_offset(struct iwl_firmware_pieces *pieces , enum iwl_ucode_type type ,
                           int sec , u32 offset )
{
  {
  pieces->img[(unsigned int )type].sec[sec].offset = offset;
  return;
}
}
static int iwl_store_cscheme(struct iwl_fw *fw , u8 const *data , u32 const len )
{
  int i ;
  int j ;
  struct iwl_fw_cscheme_list *l ;
  struct iwl_fw_cipher_scheme *fwcs ;
  struct ieee80211_cipher_scheme *cs ;
  u32 cipher ;
  int tmp ;
  {
  l = (struct iwl_fw_cscheme_list *)data;
  if ((unsigned int )len == 0U || (unsigned long )len < (unsigned long )l->size * 13UL + 1UL) {
    return (-22);
  } else {
  }
  i = 0;
  j = 0;
  goto ldv_47934;
  ldv_47933:
  fwcs = (struct iwl_fw_cipher_scheme *)(& l->cs) + (unsigned long )j;
  cipher = fwcs->cipher;
  if (cipher == 0U) {
    goto ldv_47932;
  } else {
  }
  tmp = j;
  j = j + 1;
  cs = (struct ieee80211_cipher_scheme *)(& fw->cs) + (unsigned long )tmp;
  cs->cipher = cipher;
  cs->iftype = 4U;
  cs->hdr_len = fwcs->hdr_len;
  cs->pn_len = fwcs->pn_len;
  cs->pn_off = fwcs->pn_off;
  cs->key_idx_off = fwcs->key_idx_off;
  cs->key_idx_mask = fwcs->key_idx_mask;
  cs->key_idx_shift = fwcs->key_idx_shift;
  cs->mic_len = fwcs->mic_len;
  ldv_47932:
  i = i + 1;
  ldv_47934: ;
  if (i <= 0 && (int )l->size > i) {
    goto ldv_47933;
  } else {
  }
  return (0);
}
}
static int iwl_store_ucode_sec(struct iwl_firmware_pieces *pieces , void const *data ,
                               enum iwl_ucode_type type , int size )
{
  struct fw_img_parsing *img ;
  struct fw_sec *sec ;
  struct fw_sec_parsing *sec_parse ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  __ret_warn_on = ((unsigned long )pieces == (unsigned long )((struct iwl_firmware_pieces *)0) || (unsigned long )data == (unsigned long )((void const *)0)) || (unsigned int )type > 2U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/iwl-drv.o.c.prepared",
                       550);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    return (-1);
  } else {
  }
  sec_parse = (struct fw_sec_parsing *)data;
  img = (struct fw_img_parsing *)(& pieces->img) + (unsigned long )type;
  sec = (struct fw_sec *)(& img->sec) + (unsigned long )img->sec_counter;
  sec->offset = sec_parse->offset;
  sec->data = (void const *)(& sec_parse->data);
  sec->size = (unsigned long )size - 4UL;
  img->sec_counter = img->sec_counter + 1;
  return (0);
}
}
static int iwl_set_default_calib(struct iwl_drv *drv , u8 const *data )
{
  struct iwl_tlv_calib_data *def_calib ;
  u32 ucode_type ;
  {
  def_calib = (struct iwl_tlv_calib_data *)data;
  ucode_type = def_calib->ucode_type;
  if (ucode_type > 2U) {
    __iwl_err(drv->dev, 0, 0, "Wrong ucode_type %u for default calibration.\n", ucode_type);
    return (-22);
  } else {
  }
  drv->fw.default_calib[ucode_type].flow_trigger = def_calib->calib.flow_trigger;
  drv->fw.default_calib[ucode_type].event_trigger = def_calib->calib.event_trigger;
  return (0);
}
}
static int iwl_set_ucode_api_flags(struct iwl_drv *drv , u8 const *data , struct iwl_ucode_capabilities *capa )
{
  struct iwl_ucode_api const *ucode_api ;
  u32 api_index ;
  {
  ucode_api = (struct iwl_ucode_api const *)data;
  api_index = ucode_api->api_index;
  if (api_index != 0U) {
    __iwl_err(drv->dev, 0, 0, "api_index larger than supported by driver\n");
    return (-22);
  } else {
  }
  capa->api[api_index] = ucode_api->api_flags;
  return (0);
}
}
static int iwl_set_ucode_capabilities(struct iwl_drv *drv , u8 const *data , struct iwl_ucode_capabilities *capa )
{
  struct iwl_ucode_capa const *ucode_capa ;
  u32 api_index ;
  {
  ucode_capa = (struct iwl_ucode_capa const *)data;
  api_index = ucode_capa->api_index;
  if (api_index != 0U) {
    __iwl_err(drv->dev, 0, 0, "api_index larger than supported by driver\n");
    return (-22);
  } else {
  }
  capa->capa[api_index] = ucode_capa->api_capa;
  return (0);
}
}
static int iwl_parse_v1_v2_firmware(struct iwl_drv *drv , struct firmware const *ucode_raw ,
                                    struct iwl_firmware_pieces *pieces )
{
  struct iwl_ucode_header *ucode ;
  u32 api_ver ;
  u32 hdr_size ;
  u32 build ;
  char buildstr[25U] ;
  u8 const *src ;
  size_t tmp ;
  size_t tmp___0 ;
  size_t tmp___1 ;
  size_t tmp___2 ;
  size_t tmp___3 ;
  size_t tmp___4 ;
  size_t tmp___5 ;
  size_t tmp___6 ;
  {
  ucode = (struct iwl_ucode_header *)ucode_raw->data;
  drv->fw.ucode_ver = ucode->ver;
  api_ver = (drv->fw.ucode_ver & 65280U) >> 8;
  switch (api_ver) {
  default:
  hdr_size = 28U;
  if ((unsigned long )ucode_raw->size < (unsigned long )hdr_size) {
    __iwl_err(drv->dev, 0, 0, "File size too small!\n");
    return (-22);
  } else {
  }
  build = ucode->u.v2.build;
  set_sec_size(pieces, 0, 1, (size_t )ucode->u.v2.inst_size);
  set_sec_size(pieces, 0, 0, (size_t )ucode->u.v2.data_size);
  set_sec_size(pieces, 1, 1, (size_t )ucode->u.v2.init_size);
  set_sec_size(pieces, 1, 0, (size_t )ucode->u.v2.init_data_size);
  src = (u8 const *)(& ucode->u.v2.data);
  goto ldv_47979;
  case 0U: ;
  case 1U: ;
  case 2U:
  hdr_size = 24U;
  if ((unsigned long )ucode_raw->size < (unsigned long )hdr_size) {
    __iwl_err(drv->dev, 0, 0, "File size too small!\n");
    return (-22);
  } else {
  }
  build = 0U;
  set_sec_size(pieces, 0, 1, (size_t )ucode->u.v1.inst_size);
  set_sec_size(pieces, 0, 0, (size_t )ucode->u.v1.data_size);
  set_sec_size(pieces, 1, 1, (size_t )ucode->u.v1.init_size);
  set_sec_size(pieces, 1, 0, (size_t )ucode->u.v1.init_data_size);
  src = (u8 const *)(& ucode->u.v1.data);
  goto ldv_47979;
  }
  ldv_47979: ;
  if (build != 0U) {
    sprintf((char *)(& buildstr), " build %u%s", build, drv->fw_index == 100 ? (char *)" (EXP)" : (char *)"");
  } else {
    buildstr[0] = 0;
  }
  snprintf((char *)(& drv->fw.fw_version), 32UL, "%u.%u.%u.%u%s", drv->fw.ucode_ver >> 24,
           (drv->fw.ucode_ver & 16711680U) >> 16, (drv->fw.ucode_ver & 65280U) >> 8,
           drv->fw.ucode_ver & 255U, (char *)(& buildstr));
  tmp = get_sec_size(pieces, 0, 1);
  tmp___0 = get_sec_size(pieces, 0, 0);
  tmp___1 = get_sec_size(pieces, 1, 1);
  tmp___2 = get_sec_size(pieces, 1, 0);
  if ((unsigned long )ucode_raw->size != ((((size_t )hdr_size + tmp) + tmp___0) + tmp___1) + tmp___2) {
    __iwl_err(drv->dev, 0, 0, "uCode file size %d does not match expected size\n",
              (int )ucode_raw->size);
    return (-22);
  } else {
  }
  set_sec_data(pieces, 0, 1, (void const *)src);
  tmp___3 = get_sec_size(pieces, 0, 1);
  src = src + tmp___3;
  set_sec_offset(pieces, 0, 1, 0U);
  set_sec_data(pieces, 0, 0, (void const *)src);
  tmp___4 = get_sec_size(pieces, 0, 0);
  src = src + tmp___4;
  set_sec_offset(pieces, 0, 0, 8388608U);
  set_sec_data(pieces, 1, 1, (void const *)src);
  tmp___5 = get_sec_size(pieces, 1, 1);
  src = src + tmp___5;
  set_sec_offset(pieces, 1, 1, 0U);
  set_sec_data(pieces, 1, 0, (void const *)src);
  tmp___6 = get_sec_size(pieces, 1, 0);
  src = src + tmp___6;
  set_sec_offset(pieces, 1, 0, 8388608U);
  return (0);
}
}
static int iwl_parse_tlv_firmware(struct iwl_drv *drv , struct firmware const *ucode_raw ,
                                  struct iwl_firmware_pieces *pieces , struct iwl_ucode_capabilities *capa )
{
  struct iwl_tlv_ucode_header *ucode ;
  struct iwl_ucode_tlv *tlv ;
  size_t len ;
  u8 const *data ;
  u32 tlv_len ;
  enum iwl_ucode_tlv_type tlv_type ;
  u8 const *tlv_data ;
  char buildstr[25U] ;
  u32 build ;
  int num_of_cpus ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  __u32 tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  bool tmp___5 ;
  {
  ucode = (struct iwl_tlv_ucode_header *)ucode_raw->data;
  len = ucode_raw->size;
  if (len <= 87UL) {
    __iwl_err(drv->dev, 0, 0, "uCode has invalid length: %zd\n", len);
    return (-22);
  } else {
  }
  if (ucode->magic != 172775241U) {
    __iwl_err(drv->dev, 0, 0, "invalid uCode magic: 0X%x\n", ucode->magic);
    return (-22);
  } else {
  }
  drv->fw.ucode_ver = ucode->ver;
  build = ucode->build;
  if (build != 0U) {
    sprintf((char *)(& buildstr), " build %u%s", build, drv->fw_index == 100 ? (char *)" (EXP)" : (char *)"");
  } else {
    buildstr[0] = 0;
  }
  snprintf((char *)(& drv->fw.fw_version), 32UL, "%u.%u.%u.%u%s", drv->fw.ucode_ver >> 24,
           (drv->fw.ucode_ver & 16711680U) >> 16, (drv->fw.ucode_ver & 65280U) >> 8,
           drv->fw.ucode_ver & 255U, (char *)(& buildstr));
  data = (u8 const *)(& ucode->data);
  len = len - 88UL;
  goto ldv_48035;
  ldv_48034:
  len = len - 8UL;
  tlv = (struct iwl_ucode_tlv *)data;
  tlv_len = tlv->length;
  tlv_type = (enum iwl_ucode_tlv_type )tlv->type;
  tlv_data = (u8 const *)(& tlv->data);
  if ((size_t )tlv_len > len) {
    __iwl_err(drv->dev, 0, 0, "invalid TLV len: %zd/%u\n", len, tlv_len);
    return (-22);
  } else {
  }
  len = len - ((size_t )(tlv_len + 3U) & 4294967292UL);
  data = data + (((unsigned long )(tlv_len + 3U) & 4294967292UL) + 8UL);
  switch ((unsigned int )tlv_type) {
  case 1U:
  set_sec_data(pieces, 0, 1, (void const *)tlv_data);
  set_sec_size(pieces, 0, 1, (size_t )tlv_len);
  set_sec_offset(pieces, 0, 1, 0U);
  goto ldv_48000;
  case 2U:
  set_sec_data(pieces, 0, 0, (void const *)tlv_data);
  set_sec_size(pieces, 0, 0, (size_t )tlv_len);
  set_sec_offset(pieces, 0, 0, 8388608U);
  goto ldv_48000;
  case 3U:
  set_sec_data(pieces, 1, 1, (void const *)tlv_data);
  set_sec_size(pieces, 1, 1, (size_t )tlv_len);
  set_sec_offset(pieces, 1, 1, 0U);
  goto ldv_48000;
  case 4U:
  set_sec_data(pieces, 1, 0, (void const *)tlv_data);
  set_sec_size(pieces, 1, 0, (size_t )tlv_len);
  set_sec_offset(pieces, 1, 0, 8388608U);
  goto ldv_48000;
  case 5U:
  __iwl_err(drv->dev, 0, 0, "Found unexpected BOOT ucode\n");
  goto ldv_48000;
  case 6U: ;
  if (tlv_len != 4U) {
    goto invalid_tlv_len;
  } else {
  }
  capa->max_probe_length = __le32_to_cpup((__le32 const *)tlv_data);
  goto ldv_48000;
  case 7U: ;
  if (tlv_len != 0U) {
    goto invalid_tlv_len;
  } else {
  }
  capa->flags = capa->flags | 1U;
  goto ldv_48000;
  case 18U: ;
  if (tlv_len <= 3U) {
    goto invalid_tlv_len;
  } else {
  }
  if ((tlv_len & 3U) != 0U) {
    goto invalid_tlv_len;
  } else {
  }
  capa->flags = __le32_to_cpup((__le32 const *)tlv_data);
  goto ldv_48000;
  case 29U: ;
  if (tlv_len != 8U) {
    goto invalid_tlv_len;
  } else {
  }
  tmp = iwl_set_ucode_api_flags(drv, tlv_data, capa);
  if (tmp != 0) {
    goto tlv_error;
  } else {
  }
  goto ldv_48000;
  case 30U: ;
  if (tlv_len != 8U) {
    goto invalid_tlv_len;
  } else {
  }
  tmp___0 = iwl_set_ucode_capabilities(drv, tlv_data, capa);
  if (tmp___0 != 0) {
    goto tlv_error;
  } else {
  }
  goto ldv_48000;
  case 11U: ;
  if (tlv_len != 4U) {
    goto invalid_tlv_len;
  } else {
  }
  pieces->init_evtlog_ptr = __le32_to_cpup((__le32 const *)tlv_data);
  goto ldv_48000;
  case 12U: ;
  if (tlv_len != 4U) {
    goto invalid_tlv_len;
  } else {
  }
  pieces->init_evtlog_size = __le32_to_cpup((__le32 const *)tlv_data);
  goto ldv_48000;
  case 13U: ;
  if (tlv_len != 4U) {
    goto invalid_tlv_len;
  } else {
  }
  pieces->init_errlog_ptr = __le32_to_cpup((__le32 const *)tlv_data);
  goto ldv_48000;
  case 8U: ;
  if (tlv_len != 4U) {
    goto invalid_tlv_len;
  } else {
  }
  pieces->inst_evtlog_ptr = __le32_to_cpup((__le32 const *)tlv_data);
  goto ldv_48000;
  case 9U: ;
  if (tlv_len != 4U) {
    goto invalid_tlv_len;
  } else {
  }
  pieces->inst_evtlog_size = __le32_to_cpup((__le32 const *)tlv_data);
  goto ldv_48000;
  case 10U: ;
  if (tlv_len != 4U) {
    goto invalid_tlv_len;
  } else {
  }
  pieces->inst_errlog_ptr = __le32_to_cpup((__le32 const *)tlv_data);
  goto ldv_48000;
  case 14U: ;
  if (tlv_len != 0U) {
    goto invalid_tlv_len;
  } else {
  }
  drv->fw.enhance_sensitivity_table = 1;
  goto ldv_48000;
  case 16U:
  set_sec_data(pieces, 2, 1, (void const *)tlv_data);
  set_sec_size(pieces, 2, 1, (size_t )tlv_len);
  set_sec_offset(pieces, 2, 1, 0U);
  goto ldv_48000;
  case 17U:
  set_sec_data(pieces, 2, 0, (void const *)tlv_data);
  set_sec_size(pieces, 2, 0, (size_t )tlv_len);
  set_sec_offset(pieces, 2, 0, 8388608U);
  goto ldv_48000;
  case 15U: ;
  if (tlv_len != 4U) {
    goto invalid_tlv_len;
  } else {
  }
  capa->standard_phy_calibration_size = __le32_to_cpup((__le32 const *)tlv_data);
  goto ldv_48000;
  case 19U:
  iwl_store_ucode_sec(pieces, (void const *)tlv_data, 0, (int )tlv_len);
  drv->fw.mvm_fw = 1;
  goto ldv_48000;
  case 20U:
  iwl_store_ucode_sec(pieces, (void const *)tlv_data, 1, (int )tlv_len);
  drv->fw.mvm_fw = 1;
  goto ldv_48000;
  case 21U:
  iwl_store_ucode_sec(pieces, (void const *)tlv_data, 2, (int )tlv_len);
  drv->fw.mvm_fw = 1;
  goto ldv_48000;
  case 22U: ;
  if (tlv_len != 12U) {
    goto invalid_tlv_len;
  } else {
  }
  tmp___1 = iwl_set_default_calib(drv, tlv_data);
  if (tmp___1 != 0) {
    goto tlv_error;
  } else {
  }
  goto ldv_48000;
  case 23U: ;
  if (tlv_len != 4U) {
    goto invalid_tlv_len;
  } else {
  }
  drv->fw.phy_config = __le32_to_cpup((__le32 const *)tlv_data);
  drv->fw.valid_tx_ant = (u8 )((drv->fw.phy_config & 983040U) >> 16);
  drv->fw.valid_rx_ant = (u8 )((drv->fw.phy_config & 15728640U) >> 20);
  goto ldv_48000;
  case 24U:
  iwl_store_ucode_sec(pieces, (void const *)tlv_data, 0, (int )tlv_len);
  drv->fw.mvm_fw = 1;
  drv->fw.img[0].is_secure = 1;
  goto ldv_48000;
  case 25U:
  iwl_store_ucode_sec(pieces, (void const *)tlv_data, 1, (int )tlv_len);
  drv->fw.mvm_fw = 1;
  drv->fw.img[1].is_secure = 1;
  goto ldv_48000;
  case 26U:
  iwl_store_ucode_sec(pieces, (void const *)tlv_data, 2, (int )tlv_len);
  drv->fw.mvm_fw = 1;
  drv->fw.img[2].is_secure = 1;
  goto ldv_48000;
  case 27U: ;
  if (tlv_len != 4U) {
    goto invalid_tlv_len;
  } else {
  }
  tmp___2 = __le32_to_cpup((__le32 const *)tlv_data);
  num_of_cpus = (int )tmp___2;
  if (num_of_cpus == 2) {
    drv->fw.img[0].is_dual_cpus = 1;
    drv->fw.img[1].is_dual_cpus = 1;
    drv->fw.img[2].is_dual_cpus = 1;
  } else
  if (num_of_cpus > 2 || num_of_cpus <= 0) {
    __iwl_err(drv->dev, 0, 0, "Driver support upto 2 CPUs\n");
    return (-22);
  } else {
  }
  goto ldv_48000;
  case 28U:
  tmp___3 = iwl_store_cscheme(& drv->fw, tlv_data, tlv_len);
  if (tmp___3 != 0) {
    goto invalid_tlv_len;
  } else {
  }
  goto ldv_48000;
  default:
  __iwl_dbg(drv->dev, 1U, 0, "iwl_parse_tlv_firmware", "unknown TLV: %d\n", (unsigned int )tlv_type);
  goto ldv_48000;
  }
  ldv_48000: ;
  ldv_48035: ;
  if (len > 7UL) {
    goto ldv_48034;
  } else {
  }
  if (len != 0UL) {
    __iwl_err(drv->dev, 0, 0, "invalid TLV after parsing: %zd\n", len);
    tmp___4 = iwl_have_debug_level(65536U);
    if ((int )tmp___4) {
      print_hex_dump("\017", "iwl data: ", 2, 16, 1, (void const *)data, len, 1);
    } else {
    }
    return (-22);
  } else {
  }
  return (0);
  invalid_tlv_len:
  __iwl_err(drv->dev, 0, 0, "TLV %d has invalid size: %u\n", (unsigned int )tlv_type,
            tlv_len);
  tlv_error:
  tmp___5 = iwl_have_debug_level(65536U);
  if ((int )tmp___5) {
    print_hex_dump("\017", "iwl data: ", 2, 16, 1, (void const *)tlv_data, (size_t )tlv_len,
                   1);
  } else {
  }
  return (-22);
}
}
static int iwl_alloc_ucode(struct iwl_drv *drv , struct iwl_firmware_pieces *pieces ,
                           enum iwl_ucode_type type )
{
  int i ;
  struct fw_sec *tmp ;
  int tmp___0 ;
  size_t tmp___1 ;
  {
  i = 0;
  goto ldv_48044;
  ldv_48043:
  tmp = get_sec(pieces, type, i);
  tmp___0 = iwl_alloc_fw_desc(drv, (struct fw_desc *)(& drv->fw.img[(unsigned int )type].sec) + (unsigned long )i,
                              tmp);
  if (tmp___0 != 0) {
    return (-12);
  } else {
  }
  i = i + 1;
  ldv_48044: ;
  if (i <= 11) {
    tmp___1 = get_sec_size(pieces, type, i);
    if (tmp___1 != 0UL) {
      goto ldv_48043;
    } else {
      goto ldv_48045;
    }
  } else {
  }
  ldv_48045: ;
  return (0);
}
}
static int validate_sec_sizes(struct iwl_drv *drv , struct iwl_firmware_pieces *pieces ,
                              struct iwl_cfg const *cfg )
{
  size_t tmp ;
  size_t tmp___0 ;
  size_t tmp___1 ;
  size_t tmp___2 ;
  size_t tmp___3 ;
  size_t tmp___4 ;
  size_t tmp___5 ;
  size_t tmp___6 ;
  size_t tmp___7 ;
  size_t tmp___8 ;
  size_t tmp___9 ;
  size_t tmp___10 ;
  {
  tmp = get_sec_size(pieces, 0, 1);
  __iwl_dbg(drv->dev, 1U, 0, "validate_sec_sizes", "f/w package hdr runtime inst size = %Zd\n",
            tmp);
  tmp___0 = get_sec_size(pieces, 0, 0);
  __iwl_dbg(drv->dev, 1U, 0, "validate_sec_sizes", "f/w package hdr runtime data size = %Zd\n",
            tmp___0);
  tmp___1 = get_sec_size(pieces, 1, 1);
  __iwl_dbg(drv->dev, 1U, 0, "validate_sec_sizes", "f/w package hdr init inst size = %Zd\n",
            tmp___1);
  tmp___2 = get_sec_size(pieces, 1, 0);
  __iwl_dbg(drv->dev, 1U, 0, "validate_sec_sizes", "f/w package hdr init data size = %Zd\n",
            tmp___2);
  tmp___4 = get_sec_size(pieces, 0, 1);
  if (tmp___4 > (size_t )cfg->max_inst_size) {
    tmp___3 = get_sec_size(pieces, 0, 1);
    __iwl_err(drv->dev, 0, 0, "uCode instr len %Zd too large to fit in\n", tmp___3);
    return (-1);
  } else {
  }
  tmp___6 = get_sec_size(pieces, 0, 0);
  if (tmp___6 > (size_t )cfg->max_data_size) {
    tmp___5 = get_sec_size(pieces, 0, 0);
    __iwl_err(drv->dev, 0, 0, "uCode data len %Zd too large to fit in\n", tmp___5);
    return (-1);
  } else {
  }
  tmp___8 = get_sec_size(pieces, 1, 1);
  if (tmp___8 > (size_t )cfg->max_inst_size) {
    tmp___7 = get_sec_size(pieces, 1, 1);
    __iwl_err(drv->dev, 0, 0, "uCode init instr len %Zd too large to fit in\n", tmp___7);
    return (-1);
  } else {
  }
  tmp___10 = get_sec_size(pieces, 1, 0);
  if (tmp___10 > (size_t )cfg->max_data_size) {
    tmp___9 = get_sec_size(pieces, 0, 0);
    __iwl_err(drv->dev, 0, 0, "uCode init data len %Zd too large to fit in\n", tmp___9);
    return (-1);
  } else {
  }
  return (0);
}
}
static struct iwl_op_mode *_iwl_op_mode_start(struct iwl_drv *drv , struct iwlwifi_opmode_table *op )
{
  struct iwl_op_mode_ops const *ops ;
  struct dentry *dbgfs_dir ;
  struct iwl_op_mode *op_mode ;
  {
  ops = op->ops;
  dbgfs_dir = (struct dentry *)0;
  op_mode = (struct iwl_op_mode *)0;
  drv->dbgfs_op_mode = debugfs_create_dir(op->name, drv->dbgfs_drv);
  if ((unsigned long )drv->dbgfs_op_mode == (unsigned long )((struct dentry *)0)) {
    __iwl_err(drv->dev, 0, 0, "failed to create opmode debugfs directory\n");
    return (op_mode);
  } else {
  }
  dbgfs_dir = drv->dbgfs_op_mode;
  op_mode = (*(ops->start))(drv->trans, drv->cfg, (struct iwl_fw const *)(& drv->fw),
                            dbgfs_dir);
  if ((unsigned long )op_mode == (unsigned long )((struct iwl_op_mode *)0)) {
    debugfs_remove_recursive(drv->dbgfs_op_mode);
    drv->dbgfs_op_mode = (struct dentry *)0;
  } else {
  }
  return (op_mode);
}
}
static void _iwl_op_mode_stop(struct iwl_drv *drv )
{
  {
  if ((unsigned long )drv->op_mode != (unsigned long )((struct iwl_op_mode *)0)) {
    iwl_op_mode_stop(drv->op_mode);
    drv->op_mode = (struct iwl_op_mode *)0;
    debugfs_remove_recursive(drv->dbgfs_op_mode);
    drv->dbgfs_op_mode = (struct dentry *)0;
  } else {
  }
  return;
}
}
static void iwl_req_fw_callback(struct firmware const *ucode_raw , void *context )
{
  struct iwl_drv *drv ;
  struct iwl_fw *fw ;
  struct iwl_ucode_header *ucode ;
  struct iwlwifi_opmode_table *op ;
  int err ;
  struct iwl_firmware_pieces pieces ;
  unsigned int api_max ;
  unsigned int api_ok ;
  unsigned int api_min ;
  u32 api_ver ;
  int i ;
  bool load_module ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  drv = (struct iwl_drv *)context;
  fw = & drv->fw;
  api_max = (drv->cfg)->ucode_api_max;
  api_ok = (drv->cfg)->ucode_api_ok;
  api_min = (drv->cfg)->ucode_api_min;
  load_module = 0;
  fw->ucode_capa.max_probe_length = 200U;
  fw->ucode_capa.standard_phy_calibration_size = 18U;
  if (api_ok == 0U) {
    api_ok = api_max;
  } else {
  }
  memset((void *)(& pieces), 0, 912UL);
  if ((unsigned long )ucode_raw == (unsigned long )((struct firmware const *)0)) {
    if ((unsigned int )drv->fw_index <= api_ok) {
      __iwl_err(drv->dev, 0, 0, "request for firmware file \'%s\' failed.\n", (char *)(& drv->firmware_name));
    } else {
    }
    goto try_again;
  } else {
  }
  __iwl_dbg(drv->dev, 1U, 0, "iwl_req_fw_callback", "Loaded firmware file \'%s\' (%zd bytes).\n",
            (char *)(& drv->firmware_name), ucode_raw->size);
  if ((unsigned long )ucode_raw->size <= 3UL) {
    __iwl_err(drv->dev, 0, 0, "File size way too small!\n");
    goto try_again;
  } else {
  }
  ucode = (struct iwl_ucode_header *)ucode_raw->data;
  if (ucode->ver != 0U) {
    err = iwl_parse_v1_v2_firmware(drv, ucode_raw, & pieces);
  } else {
    err = iwl_parse_tlv_firmware(drv, ucode_raw, & pieces, & fw->ucode_capa);
  }
  if (err != 0) {
    goto try_again;
  } else {
  }
  api_ver = (drv->fw.ucode_ver & 65280U) >> 8;
  if (drv->fw_index != 100) {
    if (api_ver < api_min || api_ver > api_max) {
      __iwl_err(drv->dev, 0, 0, "Driver unable to support your firmware API. Driver supports v%u, firmware is v%u.\n",
                api_max, api_ver);
      goto try_again;
    } else {
    }
    if (api_ver < api_ok) {
      if (api_ok != api_max) {
        __iwl_err(drv->dev, 0, 0, "Firmware has old API version, expected v%u through v%u, got v%u.\n",
                  api_ok, api_max, api_ver);
      } else {
        __iwl_err(drv->dev, 0, 0, "Firmware has old API version, expected v%u, got v%u.\n",
                  api_max, api_ver);
      }
      __iwl_err(drv->dev, 0, 0, "New firmware can be obtained from http://www.intellinuxwireless.org/.\n");
    } else {
    }
  } else {
  }
  if (! fw->mvm_fw) {
    tmp = validate_sec_sizes(drv, & pieces, drv->cfg);
    if (tmp != 0) {
      goto try_again;
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_48082;
  ldv_48081:
  tmp___0 = iwl_alloc_ucode(drv, & pieces, (enum iwl_ucode_type )i);
  if (tmp___0 != 0) {
    goto out_free_fw;
  } else {
  }
  i = i + 1;
  ldv_48082: ;
  if (i <= 2) {
    goto ldv_48081;
  } else {
  }
  fw->init_evtlog_ptr = pieces.init_evtlog_ptr;
  if (pieces.init_evtlog_size != 0U) {
    fw->init_evtlog_size = (pieces.init_evtlog_size - 16U) / 12U;
  } else {
    fw->init_evtlog_size = ((drv->cfg)->base_params)->max_event_log_size;
  }
  fw->init_errlog_ptr = pieces.init_errlog_ptr;
  fw->inst_evtlog_ptr = pieces.inst_evtlog_ptr;
  if (pieces.inst_evtlog_size != 0U) {
    fw->inst_evtlog_size = (pieces.inst_evtlog_size - 16U) / 12U;
  } else {
    fw->inst_evtlog_size = ((drv->cfg)->base_params)->max_event_log_size;
  }
  fw->inst_errlog_ptr = pieces.inst_errlog_ptr;
  if (fw->ucode_capa.standard_phy_calibration_size > 253U) {
    fw->ucode_capa.standard_phy_calibration_size = 19U;
  } else {
  }
  release_firmware(ucode_raw);
  mutex_lock_nested(& iwlwifi_opmode_table_mtx, 0U);
  if ((int )fw->mvm_fw) {
    op = (struct iwlwifi_opmode_table *)(& iwlwifi_opmode_table) + 1UL;
  } else {
    op = (struct iwlwifi_opmode_table *)(& iwlwifi_opmode_table);
  }
  __iwl_info(drv->dev, "loaded firmware version %s op_mode %s\n", (char *)(& drv->fw.fw_version),
             op->name);
  list_add_tail(& drv->list, & op->drv);
  if ((unsigned long )op->ops != (unsigned long )((struct iwl_op_mode_ops const *)0)) {
    drv->op_mode = _iwl_op_mode_start(drv, op);
    if ((unsigned long )drv->op_mode == (unsigned long )((struct iwl_op_mode *)0)) {
      mutex_unlock(& iwlwifi_opmode_table_mtx);
      goto out_unbind;
    } else {
    }
  } else {
    load_module = 1;
  }
  mutex_unlock(& iwlwifi_opmode_table_mtx);
  complete(& drv->request_firmware_complete);
  if ((int )load_module) {
    err = __request_module(1, "%s", op->name);
    if (err != 0) {
      __iwl_err(drv->dev, 0, 0, "failed to load module %s (error %d), is dynamic loading enabled?\n",
                op->name, err);
    } else {
    }
  } else {
  }
  return;
  try_again:
  release_firmware(ucode_raw);
  tmp___1 = iwl_request_firmware(drv, 0);
  if (tmp___1 != 0) {
    goto out_unbind;
  } else {
  }
  return;
  out_free_fw:
  __iwl_err(drv->dev, 0, 0, "failed to allocate pci memory\n");
  iwl_dealloc_ucode(drv);
  release_firmware(ucode_raw);
  out_unbind:
  complete(& drv->request_firmware_complete);
  device_release_driver((drv->trans)->dev);
  return;
}
}
struct iwl_drv *iwl_drv_start(struct iwl_trans *trans , struct iwl_cfg const *cfg )
{
  struct iwl_drv *drv ;
  int ret ;
  void *tmp ;
  char const *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = kzalloc(944UL, 208U);
  drv = (struct iwl_drv *)tmp;
  if ((unsigned long )drv == (unsigned long )((struct iwl_drv *)0)) {
    ret = -12;
    goto err;
  } else {
  }
  drv->trans = trans;
  drv->dev = trans->dev;
  drv->cfg = cfg;
  init_completion(& drv->request_firmware_complete);
  INIT_LIST_HEAD(& drv->list);
  tmp___0 = dev_name((struct device const *)trans->dev);
  drv->dbgfs_drv = debugfs_create_dir(tmp___0, iwl_dbgfs_root);
  if ((unsigned long )drv->dbgfs_drv == (unsigned long )((struct dentry *)0)) {
    __iwl_err(drv->dev, 0, 0, "failed to create debugfs directory\n");
    ret = -12;
    goto err_free_drv;
  } else {
  }
  (drv->trans)->dbgfs_dir = debugfs_create_dir("trans", drv->dbgfs_drv);
  if ((unsigned long )(drv->trans)->dbgfs_dir == (unsigned long )((struct dentry *)0)) {
    __iwl_err(drv->dev, 0, 0, "failed to create transport debugfs directory\n");
    ret = -12;
    goto err_free_dbgfs;
  } else {
  }
  ret = iwl_request_firmware(drv, 1);
  if (ret != 0) {
    __iwl_err(trans->dev, 0, 0, "Couldn\'t request the fw\n");
    goto err_fw;
  } else {
  }
  return (drv);
  err_fw: ;
  err_free_dbgfs:
  debugfs_remove_recursive(drv->dbgfs_drv);
  err_free_drv:
  kfree((void const *)drv);
  err:
  tmp___1 = ERR_PTR((long )ret);
  return ((struct iwl_drv *)tmp___1);
}
}
void iwl_drv_stop(struct iwl_drv *drv )
{
  int tmp ;
  {
  wait_for_completion(& drv->request_firmware_complete);
  _iwl_op_mode_stop(drv);
  iwl_dealloc_ucode(drv);
  mutex_lock_nested(& iwlwifi_opmode_table_mtx, 0U);
  tmp = list_empty((struct list_head const *)(& drv->list));
  if (tmp == 0) {
    list_del(& drv->list);
  } else {
  }
  mutex_unlock(& iwlwifi_opmode_table_mtx);
  debugfs_remove_recursive(drv->dbgfs_drv);
  kfree((void const *)drv);
  return;
}
}
struct iwl_mod_params iwlwifi_mod_params =
     {0, 0U, 0, 1, 1, 1, 0, (_Bool)0, 0, 0U, 0, 0, 0};
static char const __kstrtab_iwlwifi_mod_params[19U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'm', 'o', 'd', '_',
        'p', 'a', 'r', 'a',
        'm', 's', '\000'};
struct kernel_symbol const __ksymtab_iwlwifi_mod_params ;
struct kernel_symbol const __ksymtab_iwlwifi_mod_params = {(unsigned long )(& iwlwifi_mod_params), (char const *)(& __kstrtab_iwlwifi_mod_params)};
int iwl_opmode_register(char const *name , struct iwl_op_mode_ops const *ops )
{
  int i ;
  struct iwl_drv *drv ;
  struct iwlwifi_opmode_table *op ;
  int tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  mutex_lock_nested(& iwlwifi_opmode_table_mtx, 0U);
  i = 0;
  goto ldv_48123;
  ldv_48122:
  op = (struct iwlwifi_opmode_table *)(& iwlwifi_opmode_table) + (unsigned long )i;
  tmp = strcmp(op->name, name);
  if (tmp != 0) {
    goto ldv_48114;
  } else {
  }
  op->ops = ops;
  __mptr = (struct list_head const *)op->drv.next;
  drv = (struct iwl_drv *)__mptr;
  goto ldv_48120;
  ldv_48119:
  drv->op_mode = _iwl_op_mode_start(drv, op);
  __mptr___0 = (struct list_head const *)drv->list.next;
  drv = (struct iwl_drv *)__mptr___0;
  ldv_48120: ;
  if ((unsigned long )(& drv->list) != (unsigned long )(& op->drv)) {
    goto ldv_48119;
  } else {
  }
  mutex_unlock(& iwlwifi_opmode_table_mtx);
  return (0);
  ldv_48114:
  i = i + 1;
  ldv_48123: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_48122;
  } else {
  }
  mutex_unlock(& iwlwifi_opmode_table_mtx);
  return (-5);
}
}
static char const __kstrtab_iwl_opmode_register[20U] =
  { 'i', 'w', 'l', '_',
        'o', 'p', 'm', 'o',
        'd', 'e', '_', 'r',
        'e', 'g', 'i', 's',
        't', 'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_iwl_opmode_register ;
struct kernel_symbol const __ksymtab_iwl_opmode_register = {(unsigned long )(& iwl_opmode_register), (char const *)(& __kstrtab_iwl_opmode_register)};
void iwl_opmode_deregister(char const *name )
{
  int i ;
  struct iwl_drv *drv ;
  int tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  mutex_lock_nested(& iwlwifi_opmode_table_mtx, 0U);
  i = 0;
  goto ldv_48149;
  ldv_48148:
  tmp = strcmp(iwlwifi_opmode_table[i].name, name);
  if (tmp != 0) {
    goto ldv_48140;
  } else {
  }
  iwlwifi_opmode_table[i].ops = (struct iwl_op_mode_ops const *)0;
  __mptr = (struct list_head const *)iwlwifi_opmode_table[i].drv.next;
  drv = (struct iwl_drv *)__mptr;
  goto ldv_48146;
  ldv_48145:
  _iwl_op_mode_stop(drv);
  __mptr___0 = (struct list_head const *)drv->list.next;
  drv = (struct iwl_drv *)__mptr___0;
  ldv_48146: ;
  if ((unsigned long )(& drv->list) != (unsigned long )(& iwlwifi_opmode_table[i].drv)) {
    goto ldv_48145;
  } else {
  }
  mutex_unlock(& iwlwifi_opmode_table_mtx);
  return;
  ldv_48140:
  i = i + 1;
  ldv_48149: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_48148;
  } else {
  }
  mutex_unlock(& iwlwifi_opmode_table_mtx);
  return;
}
}
static char const __kstrtab_iwl_opmode_deregister[22U] =
  { 'i', 'w', 'l', '_',
        'o', 'p', 'm', 'o',
        'd', 'e', '_', 'd',
        'e', 'r', 'e', 'g',
        'i', 's', 't', 'e',
        'r', '\000'};
struct kernel_symbol const __ksymtab_iwl_opmode_deregister ;
struct kernel_symbol const __ksymtab_iwl_opmode_deregister = {(unsigned long )(& iwl_opmode_deregister), (char const *)(& __kstrtab_iwl_opmode_deregister)};
static int iwl_drv_init(void)
{
  int i ;
  struct lock_class_key __key ;
  int tmp ;
  {
  __mutex_init(& iwlwifi_opmode_table_mtx, "&iwlwifi_opmode_table_mtx", & __key);
  i = 0;
  goto ldv_48166;
  ldv_48165:
  INIT_LIST_HEAD(& iwlwifi_opmode_table[i].drv);
  i = i + 1;
  ldv_48166: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_48165;
  } else {
  }
  printk("\016Intel(R) Wireless WiFi driver for Linux, in-tree:d\n");
  printk("\016Copyright(c) 2003- 2014 Intel Corporation\n");
  iwl_dbgfs_root = debugfs_create_dir("iwlwifi", (struct dentry *)0);
  if ((unsigned long )iwl_dbgfs_root == (unsigned long )((struct dentry *)0)) {
    return (-14);
  } else {
  }
  tmp = iwl_pci_register_driver();
  return (tmp);
}
}
static void iwl_drv_exit(void)
{
  {
  iwl_pci_unregister_driver();
  debugfs_remove_recursive(iwl_dbgfs_root);
  return;
}
}
int ldv_retval_4 ;
extern void ldv_initialize(void) ;
extern void ldv_check_final_state(void) ;
void ldv_main_exported_33(void) ;
void ldv_main_exported_32(void) ;
void ldv_main_exported_21(void) ;
void ldv_main_exported_7(void) ;
void ldv_main_exported_26(void) ;
void ldv_main_exported_17(void) ;
void ldv_main_exported_18(void) ;
void ldv_main_exported_30(void) ;
void ldv_main_exported_16(void) ;
void ldv_main_exported_27(void) ;
void ldv_main_exported_25(void) ;
void ldv_main_exported_28(void) ;
void ldv_main_exported_20(void) ;
void ldv_main_exported_14(void) ;
void ldv_main_exported_24(void) ;
void ldv_main_exported_10(void) ;
void ldv_main_exported_31(void) ;
void ldv_main_exported_35(void) ;
void ldv_main_exported_11(void) ;
void ldv_main_exported_22(void) ;
void ldv_main_exported_13(void) ;
void ldv_main_exported_23(void) ;
void ldv_main_exported_29(void) ;
void ldv_main_exported_6(void) ;
void ldv_main_exported_39(void) ;
void ldv_main_exported_36(void) ;
void ldv_main_exported_9(void) ;
void ldv_main_exported_12(void) ;
void ldv_main_exported_15(void) ;
void ldv_main_exported_38(void) ;
void ldv_main_exported_8(void) ;
void ldv_main_exported_4(void) ;
void ldv_main_exported_34(void) ;
void ldv_main_exported_37(void) ;
void ldv_main_exported_19(void) ;
void ldv_main_exported_5(void) ;
void ldv_main_exported_42(void) ;
void ldv_main_exported_40(void) ;
void ldv_main_exported_45(void) ;
void ldv_main_exported_43(void) ;
void ldv_main_exported_44(void) ;
void ldv_main_exported_41(void) ;
void ldv_main_exported_46(void) ;
void ldv_main_exported_47(void) ;
int main(void)
{
  int tmp ;
  int tmp___0 ;
  {
  ldv_initialize();
  ldv_state_variable_33 = 0;
  ldv_state_variable_32 = 0;
  ldv_state_variable_21 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_26 = 0;
  ldv_state_variable_17 = 0;
  ldv_state_variable_2 = 1;
  ldv_state_variable_1 = 1;
  ldv_state_variable_18 = 0;
  ldv_state_variable_30 = 0;
  ldv_state_variable_16 = 0;
  ldv_state_variable_44 = 0;
  ldv_state_variable_27 = 0;
  ldv_state_variable_25 = 0;
  ldv_state_variable_28 = 0;
  ldv_state_variable_40 = 0;
  ldv_state_variable_20 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_24 = 0;
  ldv_state_variable_10 = 0;
  ldv_state_variable_31 = 0;
  ldv_state_variable_35 = 0;
  ldv_state_variable_11 = 0;
  ldv_state_variable_42 = 0;
  ldv_state_variable_22 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_46 = 0;
  ldv_state_variable_13 = 0;
  ldv_state_variable_23 = 0;
  ldv_state_variable_29 = 0;
  ldv_state_variable_6 = 0;
  ldv_state_variable_39 = 0;
  ldv_state_variable_36 = 0;
  timer_init_3();
  ldv_state_variable_3 = 1;
  ldv_state_variable_9 = 0;
  ldv_state_variable_41 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_47 = 0;
  ldv_state_variable_15 = 0;
  ldv_state_variable_38 = 0;
  ldv_state_variable_8 = 0;
  ldv_state_variable_4 = 0;
  ldv_state_variable_34 = 0;
  ldv_state_variable_45 = 0;
  ldv_state_variable_37 = 0;
  ldv_state_variable_43 = 0;
  ldv_state_variable_19 = 0;
  ldv_state_variable_5 = 0;
  ldv_48531:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_33 != 0) {
    ldv_main_exported_33();
  } else {
  }
  goto ldv_48477;
  case 1: ;
  if (ldv_state_variable_32 != 0) {
    ldv_main_exported_32();
  } else {
  }
  goto ldv_48477;
  case 2: ;
  if (ldv_state_variable_21 != 0) {
    ldv_main_exported_21();
  } else {
  }
  goto ldv_48477;
  case 3: ;
  if (ldv_state_variable_7 != 0) {
    ldv_main_exported_7();
  } else {
  }
  goto ldv_48477;
  case 4: ;
  if (ldv_state_variable_26 != 0) {
    ldv_main_exported_26();
  } else {
  }
  goto ldv_48477;
  case 5: ;
  if (ldv_state_variable_17 != 0) {
    ldv_main_exported_17();
  } else {
  }
  goto ldv_48477;
  case 6: ;
  goto ldv_48477;
  case 7: ;
  goto ldv_48477;
  case 8: ;
  if (ldv_state_variable_18 != 0) {
    ldv_main_exported_18();
  } else {
  }
  goto ldv_48477;
  case 9: ;
  if (ldv_state_variable_30 != 0) {
    ldv_main_exported_30();
  } else {
  }
  goto ldv_48477;
  case 10: ;
  if (ldv_state_variable_16 != 0) {
    ldv_main_exported_16();
  } else {
  }
  goto ldv_48477;
  case 11: ;
  if (ldv_state_variable_44 != 0) {
    ldv_main_exported_44();
  } else {
  }
  goto ldv_48477;
  case 12: ;
  if (ldv_state_variable_27 != 0) {
    ldv_main_exported_27();
  } else {
  }
  goto ldv_48477;
  case 13: ;
  if (ldv_state_variable_25 != 0) {
    ldv_main_exported_25();
  } else {
  }
  goto ldv_48477;
  case 14: ;
  if (ldv_state_variable_28 != 0) {
    ldv_main_exported_28();
  } else {
  }
  goto ldv_48477;
  case 15: ;
  if (ldv_state_variable_40 != 0) {
    ldv_main_exported_40();
  } else {
  }
  goto ldv_48477;
  case 16: ;
  if (ldv_state_variable_20 != 0) {
    ldv_main_exported_20();
  } else {
  }
  goto ldv_48477;
  case 17: ;
  if (ldv_state_variable_14 != 0) {
    ldv_main_exported_14();
  } else {
  }
  goto ldv_48477;
  case 18: ;
  if (ldv_state_variable_24 != 0) {
    ldv_main_exported_24();
  } else {
  }
  goto ldv_48477;
  case 19: ;
  if (ldv_state_variable_10 != 0) {
    ldv_main_exported_10();
  } else {
  }
  goto ldv_48477;
  case 20: ;
  if (ldv_state_variable_31 != 0) {
    ldv_main_exported_31();
  } else {
  }
  goto ldv_48477;
  case 21: ;
  if (ldv_state_variable_35 != 0) {
    ldv_main_exported_35();
  } else {
  }
  goto ldv_48477;
  case 22: ;
  if (ldv_state_variable_11 != 0) {
    ldv_main_exported_11();
  } else {
  }
  goto ldv_48477;
  case 23: ;
  if (ldv_state_variable_42 != 0) {
    ldv_main_exported_42();
  } else {
  }
  goto ldv_48477;
  case 24: ;
  if (ldv_state_variable_22 != 0) {
    ldv_main_exported_22();
  } else {
  }
  goto ldv_48477;
  case 25: ;
  if (ldv_state_variable_0 != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      iwl_drv_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_48505;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_4 = iwl_drv_init();
      if (ldv_retval_4 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_initialize_ftrace_event_class_5();
        ldv_state_variable_19 = 1;
        ldv_initialize_ftrace_event_class_19();
        ldv_state_variable_43 = 1;
        ldv_file_operations_43();
        ldv_state_variable_37 = 1;
        ldv_state_variable_45 = 1;
        ldv_file_operations_45();
        ldv_state_variable_34 = 1;
        ldv_state_variable_4 = 1;
        ldv_initialize_ftrace_event_class_4();
        ldv_state_variable_8 = 1;
        ldv_initialize_ftrace_event_class_8();
        ldv_state_variable_38 = 1;
        ldv_state_variable_15 = 1;
        ldv_initialize_ftrace_event_class_15();
        ldv_state_variable_47 = 1;
        ldv_dev_pm_ops_47();
        ldv_state_variable_12 = 1;
        ldv_initialize_ftrace_event_class_12();
        ldv_state_variable_41 = 1;
        ldv_file_operations_41();
        ldv_state_variable_9 = 1;
        ldv_initialize_ftrace_event_class_9();
        ldv_state_variable_36 = 1;
        ldv_state_variable_39 = 1;
        ldv_state_variable_6 = 1;
        ldv_initialize_ftrace_event_class_6();
        ldv_state_variable_29 = 1;
        ldv_state_variable_23 = 1;
        ldv_state_variable_13 = 1;
        ldv_initialize_ftrace_event_class_13();
        ldv_state_variable_46 = 1;
        ldv_initialize_pci_driver_46();
        ldv_state_variable_22 = 1;
        ldv_state_variable_42 = 1;
        ldv_file_operations_42();
        ldv_state_variable_11 = 1;
        ldv_initialize_ftrace_event_class_11();
        ldv_state_variable_35 = 1;
        ldv_state_variable_31 = 1;
        ldv_state_variable_10 = 1;
        ldv_initialize_ftrace_event_class_10();
        ldv_state_variable_24 = 1;
        ldv_state_variable_14 = 1;
        ldv_initialize_ftrace_event_class_14();
        ldv_state_variable_20 = 1;
        ldv_initialize_ftrace_event_class_20();
        ldv_state_variable_40 = 1;
        ldv_iwl_trans_ops_40();
        ldv_state_variable_28 = 1;
        ldv_state_variable_25 = 1;
        ldv_state_variable_27 = 1;
        ldv_state_variable_44 = 1;
        ldv_file_operations_44();
        ldv_state_variable_16 = 1;
        ldv_initialize_ftrace_event_class_16();
        ldv_state_variable_30 = 1;
        ldv_state_variable_18 = 1;
        ldv_initialize_ftrace_event_class_18();
        ldv_state_variable_17 = 1;
        ldv_initialize_ftrace_event_class_17();
        ldv_state_variable_26 = 1;
        ldv_state_variable_7 = 1;
        ldv_initialize_ftrace_event_class_7();
        ldv_state_variable_21 = 1;
        ldv_initialize_ftrace_event_class_21();
        ldv_state_variable_32 = 1;
        ldv_state_variable_33 = 1;
      } else {
      }
      if (ldv_retval_4 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_48505;
    default:
    ldv_stop();
    }
    ldv_48505: ;
  } else {
  }
  goto ldv_48477;
  case 26: ;
  if (ldv_state_variable_46 != 0) {
    ldv_main_exported_46();
  } else {
  }
  goto ldv_48477;
  case 27: ;
  if (ldv_state_variable_13 != 0) {
    ldv_main_exported_13();
  } else {
  }
  goto ldv_48477;
  case 28: ;
  if (ldv_state_variable_23 != 0) {
    ldv_main_exported_23();
  } else {
  }
  goto ldv_48477;
  case 29: ;
  if (ldv_state_variable_29 != 0) {
    ldv_main_exported_29();
  } else {
  }
  goto ldv_48477;
  case 30: ;
  if (ldv_state_variable_6 != 0) {
    ldv_main_exported_6();
  } else {
  }
  goto ldv_48477;
  case 31: ;
  if (ldv_state_variable_39 != 0) {
    ldv_main_exported_39();
  } else {
  }
  goto ldv_48477;
  case 32: ;
  if (ldv_state_variable_36 != 0) {
    ldv_main_exported_36();
  } else {
  }
  goto ldv_48477;
  case 33: ;
  goto ldv_48477;
  case 34: ;
  if (ldv_state_variable_9 != 0) {
    ldv_main_exported_9();
  } else {
  }
  goto ldv_48477;
  case 35: ;
  if (ldv_state_variable_41 != 0) {
    ldv_main_exported_41();
  } else {
  }
  goto ldv_48477;
  case 36: ;
  if (ldv_state_variable_12 != 0) {
    ldv_main_exported_12();
  } else {
  }
  goto ldv_48477;
  case 37: ;
  if (ldv_state_variable_47 != 0) {
    ldv_main_exported_47();
  } else {
  }
  goto ldv_48477;
  case 38: ;
  if (ldv_state_variable_15 != 0) {
    ldv_main_exported_15();
  } else {
  }
  goto ldv_48477;
  case 39: ;
  if (ldv_state_variable_38 != 0) {
    ldv_main_exported_38();
  } else {
  }
  goto ldv_48477;
  case 40: ;
  if (ldv_state_variable_8 != 0) {
    ldv_main_exported_8();
  } else {
  }
  goto ldv_48477;
  case 41: ;
  if (ldv_state_variable_4 != 0) {
    ldv_main_exported_4();
  } else {
  }
  goto ldv_48477;
  case 42: ;
  if (ldv_state_variable_34 != 0) {
    ldv_main_exported_34();
  } else {
  }
  goto ldv_48477;
  case 43: ;
  if (ldv_state_variable_45 != 0) {
    ldv_main_exported_45();
  } else {
  }
  goto ldv_48477;
  case 44: ;
  if (ldv_state_variable_37 != 0) {
    ldv_main_exported_37();
  } else {
  }
  goto ldv_48477;
  case 45: ;
  if (ldv_state_variable_43 != 0) {
    ldv_main_exported_43();
  } else {
  }
  goto ldv_48477;
  case 46: ;
  if (ldv_state_variable_19 != 0) {
    ldv_main_exported_19();
  } else {
  }
  goto ldv_48477;
  case 47: ;
  if (ldv_state_variable_5 != 0) {
    ldv_main_exported_5();
  } else {
  }
  goto ldv_48477;
  default:
  ldv_stop();
  }
  ldv_48477: ;
  goto ldv_48531;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_68(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_70(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_72(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_73(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_74(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_75(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_76(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_77(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_request_threaded_irq_78(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                    void * ) ,
                                irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                char const *ldv_func_arg5 , void *ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_threaded_irq(ldv_func_arg1, handler, thread_fn, ldv_func_arg4, ldv_func_arg5,
                             ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg6);
  } else {
  }
  return (ldv_func_res);
}
}
struct sk_buff *ldv_skb_clone_79(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
void *ldv_vmalloc_81(unsigned long ldv_func_arg1 )
{
  {
  ldv_check_alloc_nonatomic();
  vmalloc(ldv_func_arg1);
  return ((void *)0);
}
}
void ldv__builtin_va_end(__builtin_va_list ) ;
void ldv__builtin_va_start(__builtin_va_list ) ;
extern int dev_printk(char const * , struct device const * , char const * , ...) ;
extern int dev_crit(struct device const * , char const * , ...) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int dev_warn(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
int ldv_request_threaded_irq_113(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 ) ;
extern int net_ratelimit(void) ;
struct sk_buff *ldv_skb_clone_119(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_127(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_121(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_117(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_125(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_126(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_122(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_123(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_124(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
void __iwl_warn(struct device *dev , char const *fmt , ...) ;
void __iwl_crit(struct device *dev , char const *fmt , ...) ;
struct tracepoint __tracepoint_iwlwifi_err ;
__inline static void trace_iwlwifi_err(struct va_format *vaf )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_err.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_err.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 267,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_48161:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct va_format * ))it_func))(__data, vaf);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_48161;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
struct tracepoint __tracepoint_iwlwifi_warn ;
__inline static void trace_iwlwifi_warn(struct va_format *vaf )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_warn.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_warn.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 272,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_48195:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct va_format * ))it_func))(__data, vaf);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_48195;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
struct tracepoint __tracepoint_iwlwifi_info ;
__inline static void trace_iwlwifi_info(struct va_format *vaf )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_info.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_info.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 277,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_48229:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct va_format * ))it_func))(__data, vaf);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_48229;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
struct tracepoint __tracepoint_iwlwifi_crit ;
__inline static void trace_iwlwifi_crit(struct va_format *vaf )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_crit.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_crit.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 282,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_48263:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct va_format * ))it_func))(__data, vaf);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_48263;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
struct tracepoint __tracepoint_iwlwifi_dbg ;
__inline static void trace_iwlwifi_dbg(u32 level , bool in_interrupt , char const *function ,
                                       struct va_format *vaf )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dbg.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dbg.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 303,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_48303:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , u32 , bool , char const * , struct va_format * ))it_func))(__data,
                                                                                           level,
                                                                                           (int )in_interrupt,
                                                                                           function,
                                                                                           vaf);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_48303;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
void __iwl_warn(struct device *dev , char const *fmt , ...)
{
  struct va_format vaf ;
  va_list args ;
  {
  vaf.fmt = fmt;
  vaf.va = 0;
  ldv__builtin_va_start((__va_list_tag *)(& args));
  vaf.va = & args;
  dev_warn((struct device const *)dev, "%pV", & vaf);
  trace_iwlwifi_warn(& vaf);
  ldv__builtin_va_end((__va_list_tag *)(& args));
  return;
}
}
static char const __kstrtab___iwl_warn[11U] =
  { '_', '_', 'i', 'w',
        'l', '_', 'w', 'a',
        'r', 'n', '\000'};
struct kernel_symbol const __ksymtab___iwl_warn ;
struct kernel_symbol const __ksymtab___iwl_warn = {(unsigned long )(& __iwl_warn), (char const *)(& __kstrtab___iwl_warn)};
void __iwl_info(struct device *dev , char const *fmt , ...)
{
  struct va_format vaf ;
  va_list args ;
  {
  vaf.fmt = fmt;
  vaf.va = 0;
  ldv__builtin_va_start((__va_list_tag *)(& args));
  vaf.va = & args;
  _dev_info((struct device const *)dev, "%pV", & vaf);
  trace_iwlwifi_info(& vaf);
  ldv__builtin_va_end((__va_list_tag *)(& args));
  return;
}
}
static char const __kstrtab___iwl_info[11U] =
  { '_', '_', 'i', 'w',
        'l', '_', 'i', 'n',
        'f', 'o', '\000'};
struct kernel_symbol const __ksymtab___iwl_info ;
struct kernel_symbol const __ksymtab___iwl_info = {(unsigned long )(& __iwl_info), (char const *)(& __kstrtab___iwl_info)};
void __iwl_crit(struct device *dev , char const *fmt , ...)
{
  struct va_format vaf ;
  va_list args ;
  {
  vaf.fmt = fmt;
  vaf.va = 0;
  ldv__builtin_va_start((__va_list_tag *)(& args));
  vaf.va = & args;
  dev_crit((struct device const *)dev, "%pV", & vaf);
  trace_iwlwifi_crit(& vaf);
  ldv__builtin_va_end((__va_list_tag *)(& args));
  return;
}
}
static char const __kstrtab___iwl_crit[11U] =
  { '_', '_', 'i', 'w',
        'l', '_', 'c', 'r',
        'i', 't', '\000'};
struct kernel_symbol const __ksymtab___iwl_crit ;
struct kernel_symbol const __ksymtab___iwl_crit = {(unsigned long )(& __iwl_crit), (char const *)(& __kstrtab___iwl_crit)};
void __iwl_err(struct device *dev , bool rfkill_prefix , bool trace_only , char const *fmt
               , ...)
{
  struct va_format vaf ;
  va_list args ;
  {
  vaf.fmt = fmt;
  vaf.va = 0;
  ldv__builtin_va_start((__va_list_tag *)(& args));
  vaf.va = & args;
  if (! trace_only) {
    if ((int )rfkill_prefix) {
      dev_err((struct device const *)dev, "(RFKILL) %pV", & vaf);
    } else {
      dev_err((struct device const *)dev, "%pV", & vaf);
    }
  } else {
  }
  trace_iwlwifi_err(& vaf);
  ldv__builtin_va_end((__va_list_tag *)(& args));
  return;
}
}
static char const __kstrtab___iwl_err[10U] =
  { '_', '_', 'i', 'w',
        'l', '_', 'e', 'r',
        'r', '\000'};
struct kernel_symbol const __ksymtab___iwl_err ;
struct kernel_symbol const __ksymtab___iwl_err = {(unsigned long )(& __iwl_err), (char const *)(& __kstrtab___iwl_err)};
void __iwl_dbg(struct device *dev , u32 level , bool limit , char const *function ,
               char const *fmt , ...)
{
  struct va_format vaf ;
  va_list args ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  vaf.fmt = fmt;
  vaf.va = 0;
  ldv__builtin_va_start((__va_list_tag *)(& args));
  vaf.va = & args;
  tmp___0 = iwl_have_debug_level(level);
  if ((int )tmp___0) {
    if (! limit) {
      tmp = preempt_count();
      dev_printk("\017", (struct device const *)dev, "%c %s %pV", ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85,
                 function, & vaf);
    } else {
      tmp___1 = net_ratelimit();
      if (tmp___1 != 0) {
        tmp = preempt_count();
        dev_printk("\017", (struct device const *)dev, "%c %s %pV", ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85,
                   function, & vaf);
      } else {
      }
    }
  } else {
  }
  tmp___2 = preempt_count();
  trace_iwlwifi_dbg(level, ((unsigned long )tmp___2 & 2096896UL) != 0UL, function,
                    & vaf);
  ldv__builtin_va_end((__va_list_tag *)(& args));
  return;
}
}
static char const __kstrtab___iwl_dbg[10U] =
  { '_', '_', 'i', 'w',
        'l', '_', 'd', 'b',
        'g', '\000'};
struct kernel_symbol const __ksymtab___iwl_dbg ;
struct kernel_symbol const __ksymtab___iwl_dbg = {(unsigned long )(& __iwl_dbg), (char const *)(& __kstrtab___iwl_dbg)};
int ldv_request_threaded_irq_113(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_threaded_irq(ldv_func_arg1, handler, thread_fn, ldv_func_arg4, ldv_func_arg5,
                             ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg6);
  } else {
  }
  return (ldv_func_res);
}
}
int ldv_pskb_expand_head_117(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_119(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_121(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_122(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_123(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_124(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_125(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_126(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_127(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6347.rlock);
}
}
__inline static void ldv_spin_lock_141(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_142(spinlock_t *lock )
{
  {
  _raw_spin_lock_bh(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock_bh(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_145(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_146(spinlock_t *lock )
{
  {
  _raw_spin_unlock_bh(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock_bh(spinlock_t *lock ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern long schedule_timeout(long ) ;
struct sk_buff *ldv_skb_clone_164(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_173(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_166(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_162(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_170(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_171(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_167(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_168(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_169(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
int ldv_request_threaded_irq_172(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 ) ;
void iwl_notification_wait_init(struct iwl_notif_wait_data *notif_wait ) ;
void iwl_notification_wait_notify(struct iwl_notif_wait_data *notif_wait , struct iwl_rx_packet *pkt ) ;
void iwl_abort_notification_waits(struct iwl_notif_wait_data *notif_wait ) ;
void iwl_init_notification_wait(struct iwl_notif_wait_data *notif_wait , struct iwl_notification_wait *wait_entry ,
                                u8 const *cmds , int n_cmds , bool (*fn)(struct iwl_notif_wait_data * ,
                                                                           struct iwl_rx_packet * ,
                                                                           void * ) ,
                                void *fn_data ) ;
int iwl_wait_notification(struct iwl_notif_wait_data *notif_wait , struct iwl_notification_wait *wait_entry ,
                          unsigned long timeout ) ;
void iwl_remove_notification(struct iwl_notif_wait_data *notif_wait , struct iwl_notification_wait *wait_entry ) ;
void iwl_notification_wait_init(struct iwl_notif_wait_data *notif_wait )
{
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  spinlock_check(& notif_wait->notif_wait_lock);
  __raw_spin_lock_init(& notif_wait->notif_wait_lock.ldv_6347.rlock, "&(&notif_wait->notif_wait_lock)->rlock",
                       & __key);
  INIT_LIST_HEAD(& notif_wait->notif_waits);
  __init_waitqueue_head(& notif_wait->notif_waitq, "&notif_wait->notif_waitq", & __key___0);
  return;
}
}
static char const __kstrtab_iwl_notification_wait_init[27U] =
  { 'i', 'w', 'l', '_',
        'n', 'o', 't', 'i',
        'f', 'i', 'c', 'a',
        't', 'i', 'o', 'n',
        '_', 'w', 'a', 'i',
        't', '_', 'i', 'n',
        'i', 't', '\000'};
struct kernel_symbol const __ksymtab_iwl_notification_wait_init ;
struct kernel_symbol const __ksymtab_iwl_notification_wait_init = {(unsigned long )(& iwl_notification_wait_init), (char const *)(& __kstrtab_iwl_notification_wait_init)};
void iwl_notification_wait_notify(struct iwl_notif_wait_data *notif_wait , struct iwl_rx_packet *pkt )
{
  bool triggered ;
  struct iwl_notification_wait *w ;
  struct list_head const *__mptr ;
  int i ;
  bool found ;
  bool tmp ;
  struct list_head const *__mptr___0 ;
  int tmp___0 ;
  {
  triggered = 0;
  tmp___0 = list_empty((struct list_head const *)(& notif_wait->notif_waits));
  if (tmp___0 == 0) {
    spin_lock(& notif_wait->notif_wait_lock);
    __mptr = (struct list_head const *)notif_wait->notif_waits.next;
    w = (struct iwl_notification_wait *)__mptr;
    goto ldv_47770;
    ldv_47769:
    found = 0;
    if ((int )w->triggered || (int )w->aborted) {
      goto ldv_47765;
    } else {
    }
    i = 0;
    goto ldv_47768;
    ldv_47767: ;
    if ((int )w->cmds[i] == (int )pkt->hdr.cmd) {
      found = 1;
      goto ldv_47766;
    } else {
    }
    i = i + 1;
    ldv_47768: ;
    if ((int )w->n_cmds > i) {
      goto ldv_47767;
    } else {
    }
    ldv_47766: ;
    if (! found) {
      goto ldv_47765;
    } else {
    }
    if ((unsigned long )w->fn == (unsigned long )((bool (*)(struct iwl_notif_wait_data * ,
                                                            struct iwl_rx_packet * ,
                                                            void * ))0)) {
      w->triggered = 1;
      triggered = 1;
    } else {
      tmp = (*(w->fn))(notif_wait, pkt, w->fn_data);
      if ((int )tmp) {
        w->triggered = 1;
        triggered = 1;
      } else {
      }
    }
    ldv_47765:
    __mptr___0 = (struct list_head const *)w->list.next;
    w = (struct iwl_notification_wait *)__mptr___0;
    ldv_47770: ;
    if ((unsigned long )w != (unsigned long )notif_wait) {
      goto ldv_47769;
    } else {
    }
    spin_unlock(& notif_wait->notif_wait_lock);
  } else {
  }
  if ((int )triggered) {
    __wake_up(& notif_wait->notif_waitq, 3U, 0, (void *)0);
  } else {
  }
  return;
}
}
static char const __kstrtab_iwl_notification_wait_notify[29U] =
  { 'i', 'w', 'l', '_',
        'n', 'o', 't', 'i',
        'f', 'i', 'c', 'a',
        't', 'i', 'o', 'n',
        '_', 'w', 'a', 'i',
        't', '_', 'n', 'o',
        't', 'i', 'f', 'y',
        '\000'};
struct kernel_symbol const __ksymtab_iwl_notification_wait_notify ;
struct kernel_symbol const __ksymtab_iwl_notification_wait_notify = {(unsigned long )(& iwl_notification_wait_notify), (char const *)(& __kstrtab_iwl_notification_wait_notify)};
void iwl_abort_notification_waits(struct iwl_notif_wait_data *notif_wait )
{
  struct iwl_notification_wait *wait_entry ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  spin_lock(& notif_wait->notif_wait_lock);
  __mptr = (struct list_head const *)notif_wait->notif_waits.next;
  wait_entry = (struct iwl_notification_wait *)__mptr;
  goto ldv_47789;
  ldv_47788:
  wait_entry->aborted = 1;
  __mptr___0 = (struct list_head const *)wait_entry->list.next;
  wait_entry = (struct iwl_notification_wait *)__mptr___0;
  ldv_47789: ;
  if ((unsigned long )wait_entry != (unsigned long )notif_wait) {
    goto ldv_47788;
  } else {
  }
  spin_unlock(& notif_wait->notif_wait_lock);
  __wake_up(& notif_wait->notif_waitq, 3U, 0, (void *)0);
  return;
}
}
static char const __kstrtab_iwl_abort_notification_waits[29U] =
  { 'i', 'w', 'l', '_',
        'a', 'b', 'o', 'r',
        't', '_', 'n', 'o',
        't', 'i', 'f', 'i',
        'c', 'a', 't', 'i',
        'o', 'n', '_', 'w',
        'a', 'i', 't', 's',
        '\000'};
struct kernel_symbol const __ksymtab_iwl_abort_notification_waits ;
struct kernel_symbol const __ksymtab_iwl_abort_notification_waits = {(unsigned long )(& iwl_abort_notification_waits), (char const *)(& __kstrtab_iwl_abort_notification_waits)};
void iwl_init_notification_wait(struct iwl_notif_wait_data *notif_wait , struct iwl_notification_wait *wait_entry ,
                                u8 const *cmds , int n_cmds , bool (*fn)(struct iwl_notif_wait_data * ,
                                                                           struct iwl_rx_packet * ,
                                                                           void * ) ,
                                void *fn_data )
{
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  size_t __len ;
  void *__ret ;
  {
  __ret_warn_on = n_cmds > 5;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/iwl-notif-wait.o.c.prepared",
                       321);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    n_cmds = 5;
  } else {
  }
  wait_entry->fn = fn;
  wait_entry->fn_data = fn_data;
  wait_entry->n_cmds = (u8 )n_cmds;
  __len = (size_t )n_cmds;
  __ret = memcpy((void *)(& wait_entry->cmds), (void const *)cmds, __len);
  wait_entry->triggered = 0;
  wait_entry->aborted = 0;
  spin_lock_bh(& notif_wait->notif_wait_lock);
  list_add(& wait_entry->list, & notif_wait->notif_waits);
  spin_unlock_bh(& notif_wait->notif_wait_lock);
  return;
}
}
static char const __kstrtab_iwl_init_notification_wait[27U] =
  { 'i', 'w', 'l', '_',
        'i', 'n', 'i', 't',
        '_', 'n', 'o', 't',
        'i', 'f', 'i', 'c',
        'a', 't', 'i', 'o',
        'n', '_', 'w', 'a',
        'i', 't', '\000'};
struct kernel_symbol const __ksymtab_iwl_init_notification_wait ;
struct kernel_symbol const __ksymtab_iwl_init_notification_wait = {(unsigned long )(& iwl_init_notification_wait), (char const *)(& __kstrtab_iwl_init_notification_wait)};
int iwl_wait_notification(struct iwl_notif_wait_data *notif_wait , struct iwl_notification_wait *wait_entry ,
                          unsigned long timeout )
{
  int ret ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  bool __cond ;
  bool __cond___0 ;
  {
  __ret = (long )timeout;
  __cond___0 = (bool )((int )wait_entry->triggered || (int )wait_entry->aborted);
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    __ret___0 = (long )timeout;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_47842:
    tmp = prepare_to_wait_event(& notif_wait->notif_waitq, & __wait, 2);
    __int = tmp;
    __cond = (bool )((int )wait_entry->triggered || (int )wait_entry->aborted);
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_47841;
    } else {
    }
    __ret___0 = schedule_timeout(__ret___0);
    goto ldv_47842;
    ldv_47841:
    finish_wait(& notif_wait->notif_waitq, & __wait);
    __ret = __ret___0;
  } else {
  }
  ret = (int )__ret;
  spin_lock_bh(& notif_wait->notif_wait_lock);
  list_del(& wait_entry->list);
  spin_unlock_bh(& notif_wait->notif_wait_lock);
  if ((int )wait_entry->aborted) {
    return (-5);
  } else {
  }
  if (ret <= 0) {
    return (-110);
  } else {
  }
  return (0);
}
}
static char const __kstrtab_iwl_wait_notification[22U] =
  { 'i', 'w', 'l', '_',
        'w', 'a', 'i', 't',
        '_', 'n', 'o', 't',
        'i', 'f', 'i', 'c',
        'a', 't', 'i', 'o',
        'n', '\000'};
struct kernel_symbol const __ksymtab_iwl_wait_notification ;
struct kernel_symbol const __ksymtab_iwl_wait_notification = {(unsigned long )(& iwl_wait_notification), (char const *)(& __kstrtab_iwl_wait_notification)};
void iwl_remove_notification(struct iwl_notif_wait_data *notif_wait , struct iwl_notification_wait *wait_entry )
{
  {
  spin_lock_bh(& notif_wait->notif_wait_lock);
  list_del(& wait_entry->list);
  spin_unlock_bh(& notif_wait->notif_wait_lock);
  return;
}
}
static char const __kstrtab_iwl_remove_notification[24U] =
  { 'i', 'w', 'l', '_',
        'r', 'e', 'm', 'o',
        'v', 'e', '_', 'n',
        'o', 't', 'i', 'f',
        'i', 'c', 'a', 't',
        'i', 'o', 'n', '\000'};
struct kernel_symbol const __ksymtab_iwl_remove_notification ;
struct kernel_symbol const __ksymtab_iwl_remove_notification = {(unsigned long )(& iwl_remove_notification), (char const *)(& __kstrtab_iwl_remove_notification)};
__inline static void spin_lock(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_141(lock);
  return;
}
}
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_bh_142(lock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_145(lock);
  return;
}
}
__inline static void spin_unlock_bh(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_bh_146(lock);
  return;
}
}
int ldv_pskb_expand_head_162(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_164(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_166(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_167(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_168(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_169(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_170(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_171(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_request_threaded_irq_172(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_threaded_irq(ldv_func_arg1, handler, thread_fn, ldv_func_arg4, ldv_func_arg5,
                             ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg6);
  } else {
  }
  return (ldv_func_res);
}
}
struct sk_buff *ldv_skb_clone_173(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_210(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_219(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_212(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_208(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_216(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_217(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_213(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_214(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_215(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
int ldv_request_threaded_irq_218(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 ) ;
__inline static void iwl_trans_set_bits_mask(struct iwl_trans *trans , u32 reg , u32 mask ,
                                             u32 value )
{
  {
  (*((trans->ops)->set_bits_mask))(trans, reg, mask, value);
  return;
}
}
int iwl_read_eeprom(struct iwl_trans *trans , u8 **eeprom , size_t *eeprom_size ) ;
__inline static void trace_iwlwifi_dev_ioread32___0(struct device const *dev , u32 offs ,
                                                    u32 val )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_ioread32.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_ioread32.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 101,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_47773:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , u32 , u32 ))it_func))(__data,
                                                                              dev,
                                                                              offs,
                                                                              val);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_47773;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
__inline static void trace_iwlwifi_dev_iowrite32___0(struct device const *dev ,
                                                     u32 offs , u32 val )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_iowrite32.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_iowrite32.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 135,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_47861:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , u32 , u32 ))it_func))(__data,
                                                                              dev,
                                                                              offs,
                                                                              val);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_47861;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
__inline static void iwl_write32___0(struct iwl_trans *trans , u32 ofs , u32 val )
{
  {
  trace_iwlwifi_dev_iowrite32___0((struct device const *)trans->dev, ofs, val);
  iwl_trans_write32(trans, ofs, val);
  return;
}
}
__inline static u32 iwl_read32___0(struct iwl_trans *trans , u32 ofs )
{
  u32 val ;
  u32 tmp ;
  {
  tmp = iwl_trans_read32(trans, ofs);
  val = tmp;
  trace_iwlwifi_dev_ioread32___0((struct device const *)trans->dev, ofs, val);
  return (val);
}
}
__inline static void iwl_set_bit(struct iwl_trans *trans , u32 reg , u32 mask )
{
  {
  iwl_trans_set_bits_mask(trans, reg, mask, mask);
  return;
}
}
__inline static void iwl_clear_bit(struct iwl_trans *trans , u32 reg , u32 mask )
{
  {
  iwl_trans_set_bits_mask(trans, reg, mask, 0U);
  return;
}
}
static int iwl_eeprom_acquire_semaphore(struct iwl_trans *trans )
{
  u16 count ;
  int ret ;
  {
  count = 0U;
  goto ldv_48905;
  ldv_48904:
  iwl_set_bit(trans, 0U, 2097152U);
  ret = iwl_poll_bit(trans, 0U, 2097152U, 2097152U, 10);
  if (ret >= 0) {
    __iwl_dbg(trans->dev, 64U, 0, "iwl_eeprom_acquire_semaphore", "Acquired semaphore after %d tries.\n",
              (int )count + 1);
    return (ret);
  } else {
  }
  count = (u16 )((int )count + 1);
  ldv_48905: ;
  if ((unsigned int )count <= 999U) {
    goto ldv_48904;
  } else {
  }
  return (ret);
}
}
static void iwl_eeprom_release_semaphore(struct iwl_trans *trans )
{
  {
  iwl_clear_bit(trans, 0U, 2097152U);
  return;
}
}
static int iwl_eeprom_verify_signature(struct iwl_trans *trans , bool nvm_is_otp )
{
  u32 gp ;
  u32 tmp ;
  {
  tmp = iwl_read32___0(trans, 48U);
  gp = tmp & 7U;
  __iwl_dbg(trans->dev, 64U, 0, "iwl_eeprom_verify_signature", "EEPROM signature=0x%08x\n",
            gp);
  switch (gp) {
  case 1U: ;
  if (! nvm_is_otp) {
    __iwl_err(trans->dev, 0, 0, "EEPROM with bad signature: 0x%08x\n", gp);
    return (-2);
  } else {
  }
  return (0);
  case 2U: ;
  case 4U: ;
  if ((int )nvm_is_otp) {
    __iwl_err(trans->dev, 0, 0, "OTP with bad signature: 0x%08x\n", gp);
    return (-2);
  } else {
  }
  return (0);
  case 0U: ;
  default:
  __iwl_err(trans->dev, 0, 0, "bad EEPROM/OTP signature, type=%s, EEPROM_GP=0x%08x\n",
            (int )nvm_is_otp ? (char *)"OTP" : (char *)"EEPROM", gp);
  return (-2);
  }
}
}
static void iwl_set_otp_access_absolute(struct iwl_trans *trans )
{
  {
  iwl_read32___0(trans, 52U);
  iwl_clear_bit(trans, 52U, 131072U);
  return;
}
}
static int iwl_nvm_is_otp(struct iwl_trans *trans )
{
  u32 otpgp ;
  {
  switch (trans->hw_rev & 65520U) {
  case 496U:
  __iwl_err(trans->dev, 0, 0, "Unknown hardware type\n");
  return (-5);
  case 32U: ;
  case 48U: ;
  case 80U: ;
  case 64U: ;
  return (0);
  default:
  otpgp = iwl_read32___0(trans, 52U);
  if ((otpgp & 65536U) != 0U) {
    return (1);
  } else {
  }
  return (0);
  }
}
}
static int iwl_init_otp_access(struct iwl_trans *trans )
{
  int ret ;
  u32 tmp ;
  {
  tmp = iwl_read32___0(trans, 36U);
  iwl_write32___0(trans, 36U, tmp | 4U);
  ret = iwl_poll_bit(trans, 36U, 1U, 1U, 25000);
  if (ret < 0) {
    __iwl_err(trans->dev, 0, 0, "Time out access OTP\n");
  } else {
    iwl_set_bits_prph(trans, 12300U, 67108864U);
    __const_udelay(21475UL);
    iwl_clear_bits_prph(trans, 12300U, 67108864U);
    if ((int )((trans->cfg)->base_params)->shadow_ram_support) {
      iwl_set_bit(trans, 592U, 2147483648U);
    } else {
    }
  }
  return (ret);
}
}
static int iwl_read_otp_word(struct iwl_trans *trans , u16 addr , __le16 *eeprom_data )
{
  int ret ;
  u32 r ;
  u32 otpgp ;
  {
  ret = 0;
  iwl_write32___0(trans, 44U, (u32 )((int )addr << 1) & 65532U);
  ret = iwl_poll_bit(trans, 44U, 1U, 1U, 5000);
  if (ret < 0) {
    __iwl_err(trans->dev, 0, 0, "Time out reading OTP[%d]\n", (int )addr);
    return (ret);
  } else {
  }
  r = iwl_read32___0(trans, 44U);
  otpgp = iwl_read32___0(trans, 52U);
  if ((otpgp & 2097152U) != 0U) {
    iwl_set_bit(trans, 52U, 2097152U);
    __iwl_err(trans->dev, 0, 0, "Uncorrectable OTP ECC error, abort OTP read\n");
    return (-22);
  } else {
  }
  if ((otpgp & 1048576U) != 0U) {
    iwl_set_bit(trans, 52U, 1048576U);
    __iwl_err(trans->dev, 0, 0, "Correctable OTP ECC error, continue read\n");
  } else {
  }
  *eeprom_data = (unsigned short )(r >> 16);
  return (0);
}
}
static bool iwl_is_otp_empty(struct iwl_trans *trans )
{
  u16 next_link_addr ;
  __le16 link_value ;
  bool is_empty ;
  int tmp ;
  {
  next_link_addr = 0U;
  is_empty = 0;
  tmp = iwl_read_otp_word(trans, (int )next_link_addr, & link_value);
  if (tmp == 0) {
    if ((unsigned int )link_value == 0U) {
      __iwl_err(trans->dev, 0, 0, "OTP is empty\n");
      is_empty = 1;
    } else {
    }
  } else {
    __iwl_err(trans->dev, 0, 0, "Unable to read first block of OTP list.\n");
    is_empty = 1;
  }
  return (is_empty);
}
}
static int iwl_find_otp_image(struct iwl_trans *trans , u16 *validblockaddr )
{
  u16 next_link_addr ;
  u16 valid_addr ;
  __le16 link_value ;
  int usedblocks ;
  bool tmp ;
  int tmp___0 ;
  {
  next_link_addr = 0U;
  link_value = 0U;
  usedblocks = 0;
  iwl_set_otp_access_absolute(trans);
  tmp = iwl_is_otp_empty(trans);
  if ((int )tmp) {
    return (-22);
  } else {
  }
  ldv_48961:
  valid_addr = next_link_addr;
  next_link_addr = (unsigned int )link_value * 2U;
  __iwl_dbg(trans->dev, 64U, 0, "iwl_find_otp_image", "OTP blocks %d addr 0x%x\n",
            usedblocks, (int )next_link_addr);
  tmp___0 = iwl_read_otp_word(trans, (int )next_link_addr, & link_value);
  if (tmp___0 != 0) {
    return (-22);
  } else {
  }
  if ((unsigned int )link_value == 0U) {
    *validblockaddr = valid_addr;
    *validblockaddr = (unsigned int )*validblockaddr + 2U;
    return (0);
  } else {
  }
  usedblocks = usedblocks + 1;
  if ((int )((trans->cfg)->base_params)->max_ll_items >= usedblocks) {
    goto ldv_48961;
  } else {
  }
  __iwl_dbg(trans->dev, 64U, 0, "iwl_find_otp_image", "OTP has no valid blocks\n");
  return (-22);
}
}
int iwl_read_eeprom(struct iwl_trans *trans , u8 **eeprom , size_t *eeprom_size )
{
  __le16 *e ;
  u32 gp ;
  u32 tmp ;
  int sz ;
  int ret ;
  u16 addr ;
  u16 validblockaddr ;
  u16 cache_addr ;
  int nvm_is_otp ;
  void *tmp___0 ;
  u32 tmp___1 ;
  __le16 eeprom_data ;
  u32 r ;
  {
  tmp = iwl_read32___0(trans, 48U);
  gp = tmp;
  validblockaddr = 0U;
  cache_addr = 0U;
  if ((unsigned long )eeprom == (unsigned long )((u8 **)0U) || (unsigned long )eeprom_size == (unsigned long )((size_t *)0UL)) {
    return (-22);
  } else {
  }
  nvm_is_otp = iwl_nvm_is_otp(trans);
  if (nvm_is_otp < 0) {
    return (nvm_is_otp);
  } else {
  }
  sz = ((trans->cfg)->base_params)->eeprom_size;
  __iwl_dbg(trans->dev, 64U, 0, "iwl_read_eeprom", "NVM size = %d\n", sz);
  tmp___0 = kmalloc((size_t )sz, 208U);
  e = (__le16 *)tmp___0;
  if ((unsigned long )e == (unsigned long )((__le16 *)0U)) {
    return (-12);
  } else {
  }
  ret = iwl_eeprom_verify_signature(trans, nvm_is_otp != 0);
  if (ret < 0) {
    __iwl_err(trans->dev, 0, 0, "EEPROM not found, EEPROM_GP=0x%08x\n", gp);
    goto err_free;
  } else {
  }
  ret = iwl_eeprom_acquire_semaphore(trans);
  if (ret < 0) {
    __iwl_err(trans->dev, 0, 0, "Failed to acquire EEPROM semaphore.\n");
    goto err_free;
  } else {
  }
  if (nvm_is_otp != 0) {
    ret = iwl_init_otp_access(trans);
    if (ret != 0) {
      __iwl_err(trans->dev, 0, 0, "Failed to initialize OTP access.\n");
      goto err_unlock;
    } else {
    }
    tmp___1 = iwl_read32___0(trans, 48U);
    iwl_write32___0(trans, 48U, tmp___1 & 4294966911U);
    iwl_set_bit(trans, 52U, 3145728U);
    if (! ((_Bool )((trans->cfg)->base_params)->shadow_ram_support)) {
      ret = iwl_find_otp_image(trans, & validblockaddr);
      if (ret != 0) {
        goto err_unlock;
      } else {
      }
    } else {
    }
    addr = validblockaddr;
    goto ldv_48981;
    ldv_48980:
    ret = iwl_read_otp_word(trans, (int )addr, & eeprom_data);
    if (ret != 0) {
      goto err_unlock;
    } else {
    }
    *(e + (unsigned long )((unsigned int )cache_addr / 2U)) = eeprom_data;
    cache_addr = (unsigned int )cache_addr + 2U;
    addr = (unsigned int )addr + 2U;
    ldv_48981: ;
    if ((int )addr < (int )validblockaddr + sz) {
      goto ldv_48980;
    } else {
    }
  } else {
    addr = 0U;
    goto ldv_48985;
    ldv_48984:
    iwl_write32___0(trans, 44U, (u32 )((int )addr << 1) & 65532U);
    ret = iwl_poll_bit(trans, 44U, 1U, 1U, 5000);
    if (ret < 0) {
      __iwl_err(trans->dev, 0, 0, "Time out reading EEPROM[%d]\n", (int )addr);
      goto err_unlock;
    } else {
    }
    r = iwl_read32___0(trans, 44U);
    *(e + (unsigned long )((unsigned int )addr / 2U)) = (unsigned short )(r >> 16);
    addr = (unsigned int )addr + 2U;
    ldv_48985: ;
    if ((int )addr < sz) {
      goto ldv_48984;
    } else {
    }
  }
  __iwl_dbg(trans->dev, 64U, 0, "iwl_read_eeprom", "NVM Type: %s\n", nvm_is_otp != 0 ? (char *)"OTP" : (char *)"EEPROM");
  iwl_eeprom_release_semaphore(trans);
  *eeprom_size = (size_t )sz;
  *eeprom = (u8 *)e;
  return (0);
  err_unlock:
  iwl_eeprom_release_semaphore(trans);
  err_free:
  kfree((void const *)e);
  return (ret);
}
}
static char const __kstrtab_iwl_read_eeprom[16U] =
  { 'i', 'w', 'l', '_',
        'r', 'e', 'a', 'd',
        '_', 'e', 'e', 'p',
        'r', 'o', 'm', '\000'};
struct kernel_symbol const __ksymtab_iwl_read_eeprom ;
struct kernel_symbol const __ksymtab_iwl_read_eeprom = {(unsigned long )(& iwl_read_eeprom), (char const *)(& __kstrtab_iwl_read_eeprom)};
int ldv_pskb_expand_head_208(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_210(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_212(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_213(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_214(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_215(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_216(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_217(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_request_threaded_irq_218(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_threaded_irq(ldv_func_arg1, handler, thread_fn, ldv_func_arg4, ldv_func_arg5,
                             ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg6);
  } else {
  }
  return (ldv_func_res);
}
}
struct sk_buff *ldv_skb_clone_219(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
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
__inline static __u16 __le16_to_cpup(__le16 const *p )
{
  {
  return ((__u16 )*p);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_256(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_265(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_258(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_254(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_262(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_263(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_259(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_260(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_261(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
int ldv_request_threaded_irq_264(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 ) ;
extern int ieee80211_channel_to_frequency(int , enum ieee80211_band ) ;
struct iwl_nvm_data *iwl_parse_eeprom_data(struct device *dev , struct iwl_cfg const *cfg ,
                                           u8 const *eeprom , size_t eeprom_size ) ;
int iwl_nvm_check_version(struct iwl_nvm_data *data , struct iwl_trans *trans ) ;
int iwl_init_sband_channels(struct iwl_nvm_data *data , struct ieee80211_supported_band *sband ,
                            int n_channels , enum ieee80211_band band ) ;
void iwl_init_ht_hw_capab(struct iwl_cfg const *cfg , struct iwl_nvm_data *data ,
                          struct ieee80211_sta_ht_cap *ht_info , enum ieee80211_band band ,
                          u8 tx_chains , u8 rx_chains ) ;
static u8 const iwl_eeprom_band_1[14U] =
  { 1U, 2U, 3U, 4U,
        5U, 6U, 7U, 8U,
        9U, 10U, 11U, 12U,
        13U, 14U};
static u8 const iwl_eeprom_band_2[13U] =
  { 183U, 184U, 185U, 187U,
        188U, 189U, 192U, 196U,
        7U, 8U, 11U, 12U,
        16U};
static u8 const iwl_eeprom_band_3[12U] =
  { 34U, 36U, 38U, 40U,
        42U, 44U, 46U, 48U,
        52U, 56U, 60U, 64U};
static u8 const iwl_eeprom_band_4[11U] =
  { 100U, 104U, 108U, 112U,
        116U, 120U, 124U, 128U,
        132U, 136U, 140U};
static u8 const iwl_eeprom_band_5[6U] = { 145U, 149U, 153U, 157U,
        161U, 165U};
static u8 const iwl_eeprom_band_6[7U] = { 1U, 2U, 3U, 4U,
        5U, 6U, 7U};
static u8 const iwl_eeprom_band_7[11U] =
  { 36U, 44U, 52U, 60U,
        100U, 108U, 116U, 124U,
        132U, 149U, 157U};
static struct ieee80211_rate iwl_cfg80211_rates[12U] =
  { {0U, 10U, 0U, 0U},
        {1U, 20U, 1U, 1U},
        {1U, 55U, 2U, 2U},
        {1U, 110U, 3U, 3U},
        {0U, 60U, 4U, 4U},
        {0U, 90U, 5U, 5U},
        {0U, 120U, 6U, 6U},
        {0U, 180U, 7U, 7U},
        {0U, 240U, 8U, 8U},
        {0U, 360U, 9U, 9U},
        {0U, 480U, 10U, 10U},
        {0U, 540U, 11U, 11U}};
static u16 iwl_eeprom_query16(u8 const *eeprom , size_t eeprom_size , int offset )
{
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  __u16 tmp___1 ;
  {
  __ret_warn_on = (unsigned long )offset + 2UL > eeprom_size;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/iwl-eeprom-parse.o.c.prepared",
                       383);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    return (0U);
  } else {
  }
  tmp___1 = __le16_to_cpup((__le16 const *)eeprom + (unsigned long )offset);
  return (tmp___1);
}
}
static u32 eeprom_indirect_address(u8 const *eeprom , size_t eeprom_size , u32 address )
{
  u16 offset ;
  int __ret_warn_on ;
  long tmp ;
  {
  offset = 0U;
  if ((address & 1048576U) == 0U) {
    return (address);
  } else {
  }
  switch (address & 983040U) {
  case 65536U:
  offset = iwl_eeprom_query16(eeprom, eeprom_size, 200);
  goto ldv_47782;
  case 131072U:
  offset = iwl_eeprom_query16(eeprom, eeprom_size, 202);
  goto ldv_47782;
  case 196608U:
  offset = iwl_eeprom_query16(eeprom, eeprom_size, 204);
  goto ldv_47782;
  case 458752U:
  offset = iwl_eeprom_query16(eeprom, eeprom_size, 212);
  goto ldv_47782;
  case 524288U:
  offset = iwl_eeprom_query16(eeprom, eeprom_size, 214);
  goto ldv_47782;
  case 262144U:
  offset = iwl_eeprom_query16(eeprom, eeprom_size, 206);
  goto ldv_47782;
  case 327680U:
  offset = iwl_eeprom_query16(eeprom, eeprom_size, 208);
  goto ldv_47782;
  case 393216U:
  offset = iwl_eeprom_query16(eeprom, eeprom_size, 210);
  goto ldv_47782;
  default:
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/iwl-eeprom-parse.o.c.prepared",
                       430);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  goto ldv_47782;
  }
  ldv_47782: ;
  return ((address & 65535U) + (u32 )((int )offset << 1));
}
}
static u8 const *iwl_eeprom_query_addr(u8 const *eeprom , size_t eeprom_size ,
                                         u32 offset )
{
  u32 address ;
  u32 tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = eeprom_indirect_address(eeprom, eeprom_size, offset);
  address = tmp;
  __ret_warn_on = (size_t )address >= eeprom_size;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/iwl-eeprom-parse.o.c.prepared",
                       443);
  } else {
  }
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    return ((u8 const *)0U);
  } else {
  }
  return (eeprom + (unsigned long )address);
}
}
static int iwl_eeprom_read_calib(u8 const *eeprom , size_t eeprom_size , struct iwl_nvm_data *data )
{
  struct iwl_eeprom_calib_hdr *hdr ;
  u8 const *tmp ;
  {
  tmp = iwl_eeprom_query_addr(eeprom, eeprom_size, 1310720U);
  hdr = (struct iwl_eeprom_calib_hdr *)tmp;
  if ((unsigned long )hdr == (unsigned long )((struct iwl_eeprom_calib_hdr *)0)) {
    return (-61);
  } else {
  }
  data->calib_version = hdr->version;
  data->calib_voltage = hdr->voltage;
  return (0);
}
}
static s8 iwl_get_max_txpwr_half_dbm(struct iwl_nvm_data const *data , struct iwl_eeprom_enhanced_txpwr *txp )
{
  s8 result ;
  {
  result = 0;
  if ((int )data->valid_tx_ant & 1 && (int )txp->chain_a_max > (int )result) {
    result = txp->chain_a_max;
  } else {
  }
  if (((unsigned long )data->valid_tx_ant & 2UL) != 0UL && (int )txp->chain_b_max > (int )result) {
    result = txp->chain_b_max;
  } else {
  }
  if (((unsigned long )data->valid_tx_ant & 4UL) != 0UL && (int )txp->chain_c_max > (int )result) {
    result = txp->chain_c_max;
  } else {
  }
  if ((((unsigned int )((unsigned char )data->valid_tx_ant) == 3U || (unsigned int )((unsigned char )data->valid_tx_ant) == 6U) || (unsigned int )((unsigned char )data->valid_tx_ant) == 5U) && (int )txp->mimo2_max > (int )result) {
    result = txp->mimo2_max;
  } else {
  }
  if ((unsigned int )((unsigned char )data->valid_tx_ant) == 7U && (int )txp->mimo3_max > (int )result) {
    result = txp->mimo3_max;
  } else {
  }
  return (result);
}
}
static void iwl_eeprom_enh_txp_read_element(struct iwl_nvm_data *data , struct iwl_eeprom_enhanced_txpwr *txp ,
                                            int n_channels , s8 max_txpower_avg )
{
  int ch_idx ;
  enum ieee80211_band band ;
  struct ieee80211_channel *chan ;
  {
  band = ((int )txp->flags & 2) != 0;
  ch_idx = 0;
  goto ldv_47851;
  ldv_47850:
  chan = (struct ieee80211_channel *)(& data->channels) + (unsigned long )ch_idx;
  if ((unsigned int )txp->channel != 0U && (int )chan->hw_value != (int )((unsigned short )txp->channel)) {
    goto ldv_47849;
  } else {
  }
  if ((unsigned int )chan->band != (unsigned int )band) {
    goto ldv_47849;
  } else {
  }
  if (chan->max_power < (int )max_txpower_avg && ((int )txp->flags & 8) == 0) {
    chan->max_power = (int )max_txpower_avg;
  } else {
  }
  ldv_47849:
  ch_idx = ch_idx + 1;
  ldv_47851: ;
  if (ch_idx < n_channels) {
    goto ldv_47850;
  } else {
  }
  return;
}
}
static void iwl_eeprom_enhanced_txpower(struct device *dev , struct iwl_nvm_data *data ,
                                        u8 const *eeprom , size_t eeprom_size ,
                                        int n_channels )
{
  struct iwl_eeprom_enhanced_txpwr *txp_array ;
  struct iwl_eeprom_enhanced_txpwr *txp ;
  int idx ;
  int entries ;
  __le16 *txp_len ;
  s8 max_txp_avg_halfdbm ;
  u8 const *tmp ;
  __u16 tmp___0 ;
  u8 const *tmp___1 ;
  {
  tmp = iwl_eeprom_query_addr(eeprom, eeprom_size, 1572864U);
  txp_len = (__le16 *)tmp;
  tmp___0 = __le16_to_cpup((__le16 const *)txp_len);
  entries = (int )((unsigned long )((int )tmp___0 * 2) / 8UL);
  tmp___1 = iwl_eeprom_query_addr(eeprom, eeprom_size, 1507328U);
  txp_array = (struct iwl_eeprom_enhanced_txpwr *)tmp___1;
  idx = 0;
  goto ldv_47869;
  ldv_47868:
  txp = txp_array + (unsigned long )idx;
  if (((int )txp->flags & 1) == 0) {
    goto ldv_47866;
  } else {
  }
  __iwl_dbg(dev, 64U, 0, "iwl_eeprom_enhanced_txpower", "%s %d:\t %s%s%s%s%s%s%s%s (0x%02x)\n",
            (unsigned int )txp->channel == 0U || (int )((signed char )txp->flags) >= 0 ? ((unsigned int )txp->channel != 0U ? (char *)"Channel" : (char *)"Common") : (char *)"Common ",
            (int )txp->channel, (int )txp->flags & 1 ? (char *)"VALID " : (char *)"",
            ((int )txp->flags & 2) != 0 ? (char *)"BAND_52G " : (char *)"", ((int )txp->flags & 4) != 0 ? (char *)"OFDM " : (char *)"",
            ((int )txp->flags & 8) != 0 ? (char *)"40MHZ " : (char *)"", ((int )txp->flags & 16) != 0 ? (char *)"HT_AP " : (char *)"",
            ((int )txp->flags & 32) != 0 ? (char *)"RES1 " : (char *)"", ((int )txp->flags & 64) != 0 ? (char *)"RES2 " : (char *)"",
            (int )((signed char )txp->flags) < 0 ? (char *)"COMMON_TYPE " : (char *)"",
            (int )txp->flags);
  __iwl_dbg(dev, 64U, 0, "iwl_eeprom_enhanced_txpower", "\t\t chain_A: 0x%02x chain_B: 0X%02x chain_C: 0X%02x\n",
            (int )txp->chain_a_max, (int )txp->chain_b_max, (int )txp->chain_c_max);
  __iwl_dbg(dev, 64U, 0, "iwl_eeprom_enhanced_txpower", "\t\t MIMO2: 0x%02x MIMO3: 0x%02x High 20_on_40: 0x%02x Low 20_on_40: 0x%02x\n",
            (int )txp->mimo2_max, (int )txp->mimo3_max, (int )txp->delta_20_in_40 >> 4,
            (int )txp->delta_20_in_40 & 15);
  max_txp_avg_halfdbm = iwl_get_max_txpwr_half_dbm((struct iwl_nvm_data const *)data,
                                                   txp);
  iwl_eeprom_enh_txp_read_element(data, txp, n_channels, (int )((s8 )(((int )max_txp_avg_halfdbm + 1) / 2)));
  if ((int )data->max_tx_pwr_half_dbm < (int )max_txp_avg_halfdbm) {
    data->max_tx_pwr_half_dbm = max_txp_avg_halfdbm;
  } else {
  }
  ldv_47866:
  idx = idx + 1;
  ldv_47869: ;
  if (idx < entries) {
    goto ldv_47868;
  } else {
  }
  return;
}
}
static void iwl_init_band_reference(struct iwl_cfg const *cfg , u8 const *eeprom ,
                                    size_t eeprom_size , int eeprom_band , int *eeprom_ch_count ,
                                    struct iwl_eeprom_channel const **ch_info ,
                                    u8 const **eeprom_ch_array )
{
  u32 offset ;
  u8 const *tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  {
  offset = (u32 )(cfg->eeprom_params)->regulatory_bands[eeprom_band + -1];
  offset = offset | 1245184U;
  tmp = iwl_eeprom_query_addr(eeprom, eeprom_size, offset);
  *ch_info = (struct iwl_eeprom_channel const *)tmp;
  switch (eeprom_band) {
  case 1:
  *eeprom_ch_count = 14;
  *eeprom_ch_array = (u8 const *)(& iwl_eeprom_band_1);
  goto ldv_47884;
  case 2:
  *eeprom_ch_count = 13;
  *eeprom_ch_array = (u8 const *)(& iwl_eeprom_band_2);
  goto ldv_47884;
  case 3:
  *eeprom_ch_count = 12;
  *eeprom_ch_array = (u8 const *)(& iwl_eeprom_band_3);
  goto ldv_47884;
  case 4:
  *eeprom_ch_count = 11;
  *eeprom_ch_array = (u8 const *)(& iwl_eeprom_band_4);
  goto ldv_47884;
  case 5:
  *eeprom_ch_count = 6;
  *eeprom_ch_array = (u8 const *)(& iwl_eeprom_band_5);
  goto ldv_47884;
  case 6:
  *eeprom_ch_count = 7;
  *eeprom_ch_array = (u8 const *)(& iwl_eeprom_band_6);
  goto ldv_47884;
  case 7:
  *eeprom_ch_count = 11;
  *eeprom_ch_array = (u8 const *)(& iwl_eeprom_band_7);
  goto ldv_47884;
  default:
  *eeprom_ch_count = 0;
  *eeprom_ch_array = (u8 const *)0U;
  __ret_warn_on = 1;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/iwl-eeprom-parse.o.c.prepared",
                       695);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  ldv_47884: ;
  return;
}
}
static void iwl_mod_ht40_chan_info(struct device *dev , struct iwl_nvm_data *data ,
                                   int n_channels , enum ieee80211_band band , u16 channel ,
                                   struct iwl_eeprom_channel const *eeprom_ch ,
                                   u8 clear_ht40_extension_channel )
{
  struct ieee80211_channel *chan ;
  int i ;
  {
  chan = (struct ieee80211_channel *)0;
  i = 0;
  goto ldv_47920;
  ldv_47919: ;
  if ((unsigned int )data->channels[i].band != (unsigned int )band) {
    goto ldv_47917;
  } else {
  }
  if ((int )data->channels[i].hw_value != (int )channel) {
    goto ldv_47917;
  } else {
  }
  chan = (struct ieee80211_channel *)(& data->channels) + (unsigned long )i;
  goto ldv_47918;
  ldv_47917:
  i = i + 1;
  ldv_47920: ;
  if (i < n_channels) {
    goto ldv_47919;
  } else {
  }
  ldv_47918: ;
  if ((unsigned long )chan == (unsigned long )((struct ieee80211_channel *)0)) {
    return;
  } else {
  }
  __iwl_dbg(dev, 64U, 0, "iwl_mod_ht40_chan_info", "HT40 Ch. %d [%sGHz] %s%s%s%s%s(0x%02x %ddBm): Ad-Hoc %ssupported\n",
            (int )channel, (unsigned int )band == 1U ? (char *)"5.2" : (char *)"2.4",
            ((int )eeprom_ch->flags & 2) != 0 ? (char *)"IBSS " : (char *)"", ((int )eeprom_ch->flags & 8) != 0 ? (char *)"ACTIVE " : (char *)"",
            ((int )eeprom_ch->flags & 16) != 0 ? (char *)"RADAR " : (char *)"", ((int )eeprom_ch->flags & 32) != 0 ? (char *)"WIDE " : (char *)"",
            (int )((signed char )eeprom_ch->flags) < 0 ? (char *)"DFS " : (char *)"",
            (int )eeprom_ch->flags, (int )eeprom_ch->max_power_avg, ((int )eeprom_ch->flags & 2) != 0 && ((int )eeprom_ch->flags & 16) == 0 ? (char *)"" : (char *)"not ");
  if ((int )eeprom_ch->flags & 1) {
    chan->flags = chan->flags & (u32 )(~ ((int )clear_ht40_extension_channel));
  } else {
  }
  return;
}
}
static int iwl_init_channel_map(struct device *dev , struct iwl_cfg const *cfg ,
                                struct iwl_nvm_data *data , u8 const *eeprom , size_t eeprom_size )
{
  int band ;
  int ch_idx ;
  struct iwl_eeprom_channel const *eeprom_ch_info ;
  u8 const *eeprom_ch_array ;
  int eeprom_ch_count ;
  int n_channels ;
  struct ieee80211_channel *channel ;
  struct iwl_eeprom_channel const *eeprom_ch ;
  int tmp ;
  int i ;
  s8 __max1 ;
  s8 __max2 ;
  enum ieee80211_band ieeeband ;
  {
  n_channels = 0;
  band = 1;
  goto ldv_47943;
  ldv_47942:
  iwl_init_band_reference(cfg, eeprom, eeprom_size, band, & eeprom_ch_count, & eeprom_ch_info,
                          & eeprom_ch_array);
  ch_idx = 0;
  goto ldv_47940;
  ldv_47939:
  eeprom_ch = eeprom_ch_info + (unsigned long )ch_idx;
  if (((int )eeprom_ch->flags & 1) == 0) {
    __iwl_dbg(dev, 64U, 0, "iwl_init_channel_map", "Ch. %d Flags %x [%sGHz] - No traffic\n",
              (int )*(eeprom_ch_array + (unsigned long )ch_idx), (int )(eeprom_ch_info + (unsigned long )ch_idx)->flags,
              band != 1 ? (char *)"5.2" : (char *)"2.4");
    goto ldv_47938;
  } else {
  }
  channel = (struct ieee80211_channel *)(& data->channels) + (unsigned long )n_channels;
  n_channels = n_channels + 1;
  channel->hw_value = (u16 )*(eeprom_ch_array + (unsigned long )ch_idx);
  channel->band = band != 1;
  tmp = ieee80211_channel_to_frequency((int )channel->hw_value, channel->band);
  channel->center_freq = (u16 )tmp;
  channel->flags = 48U;
  if (((int )eeprom_ch->flags & 2) == 0) {
    channel->flags = channel->flags | 2U;
  } else {
  }
  if (((int )eeprom_ch->flags & 8) == 0) {
    channel->flags = channel->flags | 2U;
  } else {
  }
  if (((int )eeprom_ch->flags & 16) != 0) {
    channel->flags = channel->flags | 8U;
  } else {
  }
  channel->max_power = (int )(eeprom_ch_info + (unsigned long )ch_idx)->max_power_avg;
  __iwl_dbg(dev, 64U, 0, "iwl_init_channel_map", "Ch. %d [%sGHz] %s%s%s%s%s%s(0x%02x %ddBm): Ad-Hoc %ssupported\n",
            (int )channel->hw_value, band != 1 ? (char *)"5.2" : (char *)"2.4", (int )(eeprom_ch_info + (unsigned long )ch_idx)->flags & 1 ? (char *)"VALID " : (char *)"",
            ((int )(eeprom_ch_info + (unsigned long )ch_idx)->flags & 2) != 0 ? (char *)"IBSS " : (char *)"",
            ((int )(eeprom_ch_info + (unsigned long )ch_idx)->flags & 8) != 0 ? (char *)"ACTIVE " : (char *)"",
            ((int )(eeprom_ch_info + (unsigned long )ch_idx)->flags & 16) != 0 ? (char *)"RADAR " : (char *)"",
            ((int )(eeprom_ch_info + (unsigned long )ch_idx)->flags & 32) != 0 ? (char *)"WIDE " : (char *)"",
            (int )((signed char )(eeprom_ch_info + (unsigned long )ch_idx)->flags) < 0 ? (char *)"DFS " : (char *)"",
            (int )(eeprom_ch_info + (unsigned long )ch_idx)->flags, (int )(eeprom_ch_info + (unsigned long )ch_idx)->max_power_avg,
            ((int )(eeprom_ch_info + (unsigned long )ch_idx)->flags & 2) != 0 && ((int )(eeprom_ch_info + (unsigned long )ch_idx)->flags & 16) == 0 ? (char *)"" : (char *)"not ");
  ldv_47938:
  ch_idx = ch_idx + 1;
  ldv_47940: ;
  if (ch_idx < eeprom_ch_count) {
    goto ldv_47939;
  } else {
  }
  band = band + 1;
  ldv_47943: ;
  if (band <= 5) {
    goto ldv_47942;
  } else {
  }
  if ((int )(cfg->eeprom_params)->enhanced_txpower) {
    iwl_eeprom_enhanced_txpower(dev, data, eeprom, eeprom_size, n_channels);
  } else {
    data->max_tx_pwr_half_dbm = -128;
    i = 0;
    goto ldv_47950;
    ldv_47949:
    __max1 = data->max_tx_pwr_half_dbm;
    __max2 = (s8 )((unsigned int )((unsigned char )data->channels[i].max_power) * 2U);
    data->max_tx_pwr_half_dbm = (s8 )((int )__max1 > (int )__max2 ? __max1 : __max2);
    i = i + 1;
    ldv_47950: ;
    if (i < n_channels) {
      goto ldv_47949;
    } else {
    }
  }
  if ((unsigned int )((unsigned char )(cfg->eeprom_params)->regulatory_bands[5]) == 0U && (unsigned int )((unsigned char )(cfg->eeprom_params)->regulatory_bands[6]) == 0U) {
    return (n_channels);
  } else {
  }
  band = 6;
  goto ldv_47957;
  ldv_47956:
  iwl_init_band_reference(cfg, eeprom, eeprom_size, band, & eeprom_ch_count, & eeprom_ch_info,
                          & eeprom_ch_array);
  ieeeband = band != 6;
  ch_idx = 0;
  goto ldv_47954;
  ldv_47953:
  iwl_mod_ht40_chan_info(dev, data, n_channels, ieeeband, (int )*(eeprom_ch_array + (unsigned long )ch_idx),
                         eeprom_ch_info + (unsigned long )ch_idx, 16);
  iwl_mod_ht40_chan_info(dev, data, n_channels, ieeeband, (int )((unsigned int )((u16 )*(eeprom_ch_array + (unsigned long )ch_idx)) + 4U),
                         eeprom_ch_info + (unsigned long )ch_idx, 32);
  ch_idx = ch_idx + 1;
  ldv_47954: ;
  if (ch_idx < eeprom_ch_count) {
    goto ldv_47953;
  } else {
  }
  band = band + 1;
  ldv_47957: ;
  if (band <= 7) {
    goto ldv_47956;
  } else {
  }
  return (n_channels);
}
}
int iwl_init_sband_channels(struct iwl_nvm_data *data , struct ieee80211_supported_band *sband ,
                            int n_channels , enum ieee80211_band band )
{
  struct ieee80211_channel *chan ;
  int n ;
  int idx ;
  {
  chan = (struct ieee80211_channel *)(& data->channels);
  n = 0;
  idx = 0;
  goto ldv_47969;
  ldv_47968:
  idx = idx + 1;
  chan = (struct ieee80211_channel *)(& data->channels) + (unsigned long )idx;
  ldv_47969: ;
  if ((unsigned int )chan->band != (unsigned int )band && idx < n_channels) {
    goto ldv_47968;
  } else {
  }
  sband->channels = (struct ieee80211_channel *)(& data->channels) + (unsigned long )idx;
  goto ldv_47972;
  ldv_47971:
  idx = idx + 1;
  chan = (struct ieee80211_channel *)(& data->channels) + (unsigned long )idx;
  n = n + 1;
  ldv_47972: ;
  if ((unsigned int )chan->band == (unsigned int )band && idx < n_channels) {
    goto ldv_47971;
  } else {
  }
  sband->n_channels = n;
  return (n);
}
}
void iwl_init_ht_hw_capab(struct iwl_cfg const *cfg , struct iwl_nvm_data *data ,
                          struct ieee80211_sta_ht_cap *ht_info , enum ieee80211_band band ,
                          u8 tx_chains , u8 rx_chains )
{
  int max_bit_rate ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  int __ret_warn_on ;
  long tmp___1 ;
  {
  max_bit_rate = 0;
  tmp = __arch_hweight8((unsigned int )tx_chains);
  tx_chains = (u8 )tmp;
  if ((int )cfg->rx_with_siso_diversity) {
    rx_chains = 1U;
  } else {
    tmp___0 = __arch_hweight8((unsigned int )rx_chains);
    rx_chains = (u8 )tmp___0;
  }
  if (! data->sku_cap_11n_enable || (unsigned long )cfg->ht_params == (unsigned long )((struct iwl_ht_params const * )0)) {
    ht_info->ht_supported = 0;
    return;
  } else {
  }
  ht_info->ht_supported = 1;
  ht_info->cap = 4096U;
  if ((int )(cfg->ht_params)->stbc) {
    ht_info->cap = (u16 )((unsigned int )ht_info->cap | 256U);
    if ((unsigned int )tx_chains > 1U) {
      ht_info->cap = (u16 )((unsigned int )ht_info->cap | 128U);
    } else {
    }
  } else {
  }
  if (iwlwifi_mod_params.amsdu_size_8K != 0) {
    ht_info->cap = (u16 )((unsigned int )ht_info->cap | 2048U);
  } else {
  }
  ht_info->ampdu_factor = 3U;
  ht_info->ampdu_density = 5U;
  ht_info->mcs.rx_mask[0] = 255U;
  if ((unsigned int )rx_chains > 1U) {
    ht_info->mcs.rx_mask[1] = 255U;
  } else {
  }
  if ((unsigned int )rx_chains > 2U) {
    ht_info->mcs.rx_mask[2] = 255U;
  } else {
  }
  if ((int )(cfg->ht_params)->ht_greenfield_support) {
    ht_info->cap = (u16 )((unsigned int )ht_info->cap | 16U);
  } else {
  }
  ht_info->cap = (u16 )((unsigned int )ht_info->cap | 32U);
  max_bit_rate = 72;
  if ((int )((unsigned long )(cfg->ht_params)->ht40_bands >> (int )band) & 1) {
    ht_info->cap = (u16 )((unsigned int )ht_info->cap | 2U);
    ht_info->cap = (u16 )((unsigned int )ht_info->cap | 64U);
    ht_info->mcs.rx_mask[4] = 1U;
    max_bit_rate = 150;
  } else {
  }
  max_bit_rate = (int )rx_chains * max_bit_rate;
  __ret_warn_on = (max_bit_rate & -1024) != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/iwl-eeprom-parse.o.c.prepared",
                       965);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  ht_info->mcs.rx_highest = (unsigned short )max_bit_rate;
  ht_info->mcs.tx_params = 1U;
  if ((int )tx_chains != (int )rx_chains) {
    ht_info->mcs.tx_params = (u8 )((unsigned int )ht_info->mcs.tx_params | 2U);
    ht_info->mcs.tx_params = (u8 )((int )((signed char )ht_info->mcs.tx_params) | (int )((signed char )(((int )tx_chains + -1) << 2)));
  } else {
  }
  return;
}
}
static void iwl_init_sbands(struct device *dev , struct iwl_cfg const *cfg , struct iwl_nvm_data *data ,
                            u8 const *eeprom , size_t eeprom_size )
{
  int n_channels ;
  int tmp ;
  int n_used ;
  struct ieee80211_supported_band *sband ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = iwl_init_channel_map(dev, cfg, data, eeprom, eeprom_size);
  n_channels = tmp;
  n_used = 0;
  sband = (struct ieee80211_supported_band *)(& data->bands);
  sband->band = 0;
  sband->bitrates = (struct ieee80211_rate *)(& iwl_cfg80211_rates);
  sband->n_bitrates = 12;
  tmp___0 = iwl_init_sband_channels(data, sband, n_channels, 0);
  n_used = tmp___0 + n_used;
  iwl_init_ht_hw_capab(cfg, data, & sband->ht_cap, 0, (int )data->valid_tx_ant, (int )data->valid_rx_ant);
  sband = (struct ieee80211_supported_band *)(& data->bands) + 1UL;
  sband->band = 1;
  sband->bitrates = (struct ieee80211_rate *)(& iwl_cfg80211_rates) + 4UL;
  sband->n_bitrates = 8;
  tmp___1 = iwl_init_sband_channels(data, sband, n_channels, 1);
  n_used = tmp___1 + n_used;
  iwl_init_ht_hw_capab(cfg, data, & sband->ht_cap, 1, (int )data->valid_tx_ant, (int )data->valid_rx_ant);
  if (n_channels != n_used) {
    __iwl_err(dev, 0, 0, "EEPROM: used only %d of %d channels\n", n_used, n_channels);
  } else {
  }
  return;
}
}
struct iwl_nvm_data *iwl_parse_eeprom_data(struct device *dev , struct iwl_cfg const *cfg ,
                                           u8 const *eeprom , size_t eeprom_size )
{
  struct iwl_nvm_data *data ;
  void const *tmp ;
  u16 radio_cfg ;
  u16 sku ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  void *tmp___2 ;
  u8 const *tmp___3 ;
  size_t __len ;
  void *__ret ;
  u16 tmp___4 ;
  int tmp___5 ;
  u8 const *tmp___6 ;
  size_t __len___0 ;
  void *__ret___0 ;
  u8 const *tmp___7 ;
  u8 const *tmp___8 ;
  u16 tmp___9 ;
  {
  __ret_warn_on = (unsigned long )cfg == (unsigned long )((struct iwl_cfg const *)0) || (unsigned long )cfg->eeprom_params == (unsigned long )((struct iwl_eeprom_params const * )0);
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/iwl-eeprom-parse.o.c.prepared",
                       1019);
  } else {
  }
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    return ((struct iwl_nvm_data *)0);
  } else {
  }
  tmp___2 = kzalloc(3848UL, 208U);
  data = (struct iwl_nvm_data *)tmp___2;
  if ((unsigned long )data == (unsigned long )((struct iwl_nvm_data *)0)) {
    return ((struct iwl_nvm_data *)0);
  } else {
  }
  tmp___3 = iwl_eeprom_query_addr(eeprom, eeprom_size, 42U);
  tmp = (void const *)tmp___3;
  if ((unsigned long )tmp == (unsigned long )((void const *)0)) {
    goto err_free;
  } else {
  }
  __len = 6UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& data->hw_addr), tmp, __len);
  } else {
    __ret = memcpy((void *)(& data->hw_addr), tmp, __len);
  }
  tmp___4 = iwl_eeprom_query16(eeprom, eeprom_size, 152);
  data->n_hw_addrs = (int )tmp___4;
  tmp___5 = iwl_eeprom_read_calib(eeprom, eeprom_size, data);
  if (tmp___5 != 0) {
    goto err_free;
  } else {
  }
  tmp___6 = iwl_eeprom_query_addr(eeprom, eeprom_size, 1311312U);
  tmp = (void const *)tmp___6;
  if ((unsigned long )tmp == (unsigned long )((void const *)0)) {
    goto err_free;
  } else {
  }
  __len___0 = 4UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(& data->xtal_calib), tmp, __len___0);
  } else {
    __ret___0 = memcpy((void *)(& data->xtal_calib), tmp, __len___0);
  }
  tmp___7 = iwl_eeprom_query_addr(eeprom, eeprom_size, 1311318U);
  tmp = (void const *)tmp___7;
  if ((unsigned long )tmp == (unsigned long )((void const *)0)) {
    goto err_free;
  } else {
  }
  data->raw_temperature = *((__le16 *)tmp);
  tmp___8 = iwl_eeprom_query_addr(eeprom, eeprom_size, 1311316U);
  tmp = (void const *)tmp___8;
  if ((unsigned long )tmp == (unsigned long )((void const *)0)) {
    goto err_free;
  } else {
  }
  data->kelvin_temperature = *((__le16 *)tmp);
  data->kelvin_voltage = *((__le16 *)tmp + 1UL);
  radio_cfg = iwl_eeprom_query16(eeprom, eeprom_size, 144);
  data->radio_cfg_dash = (unsigned int )((u8 )((int )radio_cfg >> 4)) & 3U;
  data->radio_cfg_pnum = (unsigned int )((u8 )((int )radio_cfg >> 6)) & 3U;
  data->radio_cfg_step = (unsigned int )((u8 )((int )radio_cfg >> 2)) & 3U;
  data->radio_cfg_type = (unsigned int )radio_cfg & 3U;
  data->valid_rx_ant = (unsigned int )((u8 )((int )radio_cfg >> 12)) & 15U;
  data->valid_tx_ant = (unsigned int )((u8 )((int )radio_cfg >> 8)) & 15U;
  sku = iwl_eeprom_query16(eeprom, eeprom_size, 138);
  data->sku_cap_11n_enable = ((int )sku & 64) != 0;
  data->sku_cap_amt_enable = ((int )sku & 128) != 0;
  data->sku_cap_band_24GHz_enable = ((int )sku & 16) != 0;
  data->sku_cap_band_52GHz_enable = ((int )sku & 32) != 0;
  data->sku_cap_ipan_enable = ((int )sku & 256) != 0;
  if ((int )iwlwifi_mod_params.disable_11n & 1) {
    data->sku_cap_11n_enable = 0;
  } else {
  }
  tmp___9 = iwl_eeprom_query16(eeprom, eeprom_size, 136);
  data->nvm_version = (u32 )tmp___9;
  if ((unsigned int )((unsigned char )cfg->valid_tx_ant) != 0U) {
    data->valid_tx_ant = cfg->valid_tx_ant;
  } else {
  }
  if ((unsigned int )((unsigned char )cfg->valid_rx_ant) != 0U) {
    data->valid_rx_ant = cfg->valid_rx_ant;
  } else {
  }
  if ((unsigned int )data->valid_tx_ant == 0U || (unsigned int )data->valid_rx_ant == 0U) {
    __iwl_err(dev, 0, 0, "invalid antennas (0x%x, 0x%x)\n", (int )data->valid_tx_ant,
              (int )data->valid_rx_ant);
    goto err_free;
  } else {
  }
  iwl_init_sbands(dev, cfg, data, eeprom, eeprom_size);
  return (data);
  err_free:
  kfree((void const *)data);
  return ((struct iwl_nvm_data *)0);
}
}
static char const __kstrtab_iwl_parse_eeprom_data[22U] =
  { 'i', 'w', 'l', '_',
        'p', 'a', 'r', 's',
        'e', '_', 'e', 'e',
        'p', 'r', 'o', 'm',
        '_', 'd', 'a', 't',
        'a', '\000'};
struct kernel_symbol const __ksymtab_iwl_parse_eeprom_data ;
struct kernel_symbol const __ksymtab_iwl_parse_eeprom_data = {(unsigned long )(& iwl_parse_eeprom_data), (char const *)(& __kstrtab_iwl_parse_eeprom_data)};
int iwl_nvm_check_version(struct iwl_nvm_data *data , struct iwl_trans *trans )
{
  {
  if (data->nvm_version >= (u32 )(trans->cfg)->nvm_ver || (int )((unsigned short )data->calib_version) >= (int )((unsigned short )(trans->cfg)->nvm_calib_ver)) {
    __iwl_dbg(trans->dev, 1U, 0, "iwl_nvm_check_version", "device EEPROM VER=0x%x, CALIB=0x%x\n",
              data->nvm_version, (int )data->calib_version);
    return (0);
  } else {
  }
  __iwl_err(trans->dev, 0, 0, "Unsupported (too old) EEPROM VER=0x%x < 0x%x CALIB=0x%x < 0x%x\n",
            data->nvm_version, (int )(trans->cfg)->nvm_ver, (int )data->calib_version,
            (int )(trans->cfg)->nvm_calib_ver);
  return (-22);
}
}
static char const __kstrtab_iwl_nvm_check_version[22U] =
  { 'i', 'w', 'l', '_',
        'n', 'v', 'm', '_',
        'c', 'h', 'e', 'c',
        'k', '_', 'v', 'e',
        'r', 's', 'i', 'o',
        'n', '\000'};
struct kernel_symbol const __ksymtab_iwl_nvm_check_version ;
struct kernel_symbol const __ksymtab_iwl_nvm_check_version = {(unsigned long )(& iwl_nvm_check_version), (char const *)(& __kstrtab_iwl_nvm_check_version)};
int ldv_pskb_expand_head_254(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_256(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_258(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_259(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_260(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_261(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_262(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_263(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_request_threaded_irq_264(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_threaded_irq(ldv_func_arg1, handler, thread_fn, ldv_func_arg4, ldv_func_arg5,
                             ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg6);
  } else {
  }
  return (ldv_func_res);
}
}
struct sk_buff *ldv_skb_clone_265(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
extern void *kmemdup(void const * , size_t , gfp_t ) ;
extern void lock_acquire(struct lockdep_map * , unsigned int , int , int , int ,
                         struct lockdep_map * , unsigned long ) ;
extern void lock_release(struct lockdep_map * , int , unsigned long ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_302(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_311(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_304(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_300(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_308(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_309(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_305(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_306(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_307(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
int ldv_request_threaded_irq_310(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 ) ;
__inline static int iwl_trans_send_cmd(struct iwl_trans *trans , struct iwl_host_cmd *cmd )
{
  int ret ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  {
  tmp = ldv__builtin_expect((cmd->flags & 4U) == 0U, 0L);
  if (tmp != 0L) {
    tmp___0 = constant_test_bit(4L, (unsigned long const volatile *)(& trans->status));
    tmp___1 = ldv__builtin_expect(tmp___0 != 0, 0L);
    if (tmp___1 != 0L) {
      return (-132);
    } else {
    }
  } else {
  }
  tmp___2 = constant_test_bit(5L, (unsigned long const volatile *)(& trans->status));
  tmp___3 = ldv__builtin_expect(tmp___2 != 0, 0L);
  if (tmp___3 != 0L) {
    return (-5);
  } else {
  }
  tmp___4 = ldv__builtin_expect((unsigned int )trans->state != 1U, 0L);
  if (tmp___4 != 0L) {
    __iwl_err(trans->dev, 0, 0, "%s bad state = %d\n", "iwl_trans_send_cmd", (unsigned int )trans->state);
    return (-5);
  } else {
  }
  if ((cmd->flags & 1U) == 0U) {
    lock_acquire(& trans->sync_cmd_lockdep_map, 0U, 0, 2, 1, (struct lockdep_map *)0,
                 (unsigned long )((void *)0));
  } else {
  }
  ret = (*((trans->ops)->send_cmd))(trans, cmd);
  if ((cmd->flags & 1U) == 0U) {
    lock_release(& trans->sync_cmd_lockdep_map, 1, (unsigned long )((void *)1));
  } else {
  }
  return (ret);
}
}
struct iwl_phy_db *iwl_phy_db_init(struct iwl_trans *trans ) ;
void iwl_phy_db_free(struct iwl_phy_db *phy_db ) ;
int iwl_phy_db_set_section(struct iwl_phy_db *phy_db , struct iwl_rx_packet *pkt ,
                           gfp_t alloc_ctx ) ;
int iwl_send_phy_db_data(struct iwl_phy_db *phy_db ) ;
struct iwl_phy_db *iwl_phy_db_init(struct iwl_trans *trans )
{
  struct iwl_phy_db *phy_db ;
  void *tmp ;
  {
  tmp = kzalloc(296UL, 208U);
  phy_db = (struct iwl_phy_db *)tmp;
  if ((unsigned long )phy_db == (unsigned long )((struct iwl_phy_db *)0)) {
    return (phy_db);
  } else {
  }
  phy_db->trans = trans;
  return (phy_db);
}
}
static char const __kstrtab_iwl_phy_db_init[16U] =
  { 'i', 'w', 'l', '_',
        'p', 'h', 'y', '_',
        'd', 'b', '_', 'i',
        'n', 'i', 't', '\000'};
struct kernel_symbol const __ksymtab_iwl_phy_db_init ;
struct kernel_symbol const __ksymtab_iwl_phy_db_init = {(unsigned long )(& iwl_phy_db_init), (char const *)(& __kstrtab_iwl_phy_db_init)};
static struct iwl_phy_db_entry *iwl_phy_db_get_section(struct iwl_phy_db *phy_db ,
                                                       enum iwl_phy_db_section_type type ,
                                                       u16 chg_id )
{
  {
  if ((unsigned long )phy_db == (unsigned long )((struct iwl_phy_db *)0) || (unsigned int )type > 5U) {
    return ((struct iwl_phy_db_entry *)0);
  } else {
  }
  switch ((unsigned int )type) {
  case 1U: ;
  return (& phy_db->cfg);
  case 2U: ;
  return (& phy_db->calib_nch);
  case 4U: ;
  if ((unsigned int )chg_id > 6U) {
    return ((struct iwl_phy_db_entry *)0);
  } else {
  }
  return ((struct iwl_phy_db_entry *)(& phy_db->calib_ch_group_papd) + (unsigned long )chg_id);
  case 5U: ;
  if ((unsigned int )chg_id > 8U) {
    return ((struct iwl_phy_db_entry *)0);
  } else {
  }
  return ((struct iwl_phy_db_entry *)(& phy_db->calib_ch_group_txp) + (unsigned long )chg_id);
  default: ;
  return ((struct iwl_phy_db_entry *)0);
  }
  return ((struct iwl_phy_db_entry *)0);
}
}
static void iwl_phy_db_free_section(struct iwl_phy_db *phy_db , enum iwl_phy_db_section_type type ,
                                    u16 chg_id )
{
  struct iwl_phy_db_entry *entry ;
  struct iwl_phy_db_entry *tmp ;
  {
  tmp = iwl_phy_db_get_section(phy_db, type, (int )chg_id);
  entry = tmp;
  if ((unsigned long )entry == (unsigned long )((struct iwl_phy_db_entry *)0)) {
    return;
  } else {
  }
  kfree((void const *)entry->data);
  entry->data = (u8 *)0U;
  entry->size = 0U;
  return;
}
}
void iwl_phy_db_free(struct iwl_phy_db *phy_db )
{
  int i ;
  {
  if ((unsigned long )phy_db == (unsigned long )((struct iwl_phy_db *)0)) {
    return;
  } else {
  }
  iwl_phy_db_free_section(phy_db, 1, 0);
  iwl_phy_db_free_section(phy_db, 2, 0);
  i = 0;
  goto ldv_47771;
  ldv_47770:
  iwl_phy_db_free_section(phy_db, 4, (int )((u16 )i));
  i = i + 1;
  ldv_47771: ;
  if (i <= 6) {
    goto ldv_47770;
  } else {
  }
  i = 0;
  goto ldv_47774;
  ldv_47773:
  iwl_phy_db_free_section(phy_db, 5, (int )((u16 )i));
  i = i + 1;
  ldv_47774: ;
  if (i <= 8) {
    goto ldv_47773;
  } else {
  }
  kfree((void const *)phy_db);
  return;
}
}
static char const __kstrtab_iwl_phy_db_free[16U] =
  { 'i', 'w', 'l', '_',
        'p', 'h', 'y', '_',
        'd', 'b', '_', 'f',
        'r', 'e', 'e', '\000'};
struct kernel_symbol const __ksymtab_iwl_phy_db_free ;
struct kernel_symbol const __ksymtab_iwl_phy_db_free = {(unsigned long )(& iwl_phy_db_free), (char const *)(& __kstrtab_iwl_phy_db_free)};
int iwl_phy_db_set_section(struct iwl_phy_db *phy_db , struct iwl_rx_packet *pkt ,
                           gfp_t alloc_ctx )
{
  struct iwl_calib_res_notif_phy_db *phy_db_notif ;
  enum iwl_phy_db_section_type type ;
  u16 size ;
  struct iwl_phy_db_entry *entry ;
  u16 chg_id ;
  void *tmp ;
  {
  phy_db_notif = (struct iwl_calib_res_notif_phy_db *)(& pkt->data);
  type = (enum iwl_phy_db_section_type )phy_db_notif->type;
  size = phy_db_notif->length;
  chg_id = 0U;
  if ((unsigned long )phy_db == (unsigned long )((struct iwl_phy_db *)0)) {
    return (-22);
  } else {
  }
  if ((unsigned int )type == 4U || (unsigned int )type == 5U) {
    chg_id = __le16_to_cpup((__le16 const *)(& phy_db_notif->data));
  } else {
  }
  entry = iwl_phy_db_get_section(phy_db, type, (int )chg_id);
  if ((unsigned long )entry == (unsigned long )((struct iwl_phy_db_entry *)0)) {
    return (-22);
  } else {
  }
  kfree((void const *)entry->data);
  tmp = kmemdup((void const *)(& phy_db_notif->data), (size_t )size, alloc_ctx);
  entry->data = (u8 *)tmp;
  if ((unsigned long )entry->data == (unsigned long )((u8 *)0U)) {
    entry->size = 0U;
    return (-12);
  } else {
  }
  entry->size = size;
  __iwl_dbg((phy_db->trans)->dev, 1U, 0, "iwl_phy_db_set_section", "%s(%d): [PHYDB]SET: Type %d , Size: %d\n",
            "iwl_phy_db_set_section", 423, (unsigned int )type, (int )size);
  return (0);
}
}
static char const __kstrtab_iwl_phy_db_set_section[23U] =
  { 'i', 'w', 'l', '_',
        'p', 'h', 'y', '_',
        'd', 'b', '_', 's',
        'e', 't', '_', 's',
        'e', 'c', 't', 'i',
        'o', 'n', '\000'};
struct kernel_symbol const __ksymtab_iwl_phy_db_set_section ;
struct kernel_symbol const __ksymtab_iwl_phy_db_set_section = {(unsigned long )(& iwl_phy_db_set_section), (char const *)(& __kstrtab_iwl_phy_db_set_section)};
static int is_valid_channel(u16 ch_id )
{
  {
  if ((((unsigned int )ch_id <= 14U || (((unsigned int )ch_id > 35U && (unsigned int )ch_id <= 64U) && ((unsigned int )ch_id & 3U) == 0U)) || (((unsigned int )ch_id > 99U && (unsigned int )ch_id <= 140U) && ((unsigned int )ch_id & 3U) == 0U)) || (((unsigned int )ch_id > 144U && (unsigned int )ch_id <= 165U) && ((unsigned int )ch_id & 3U) == 1U)) {
    return (1);
  } else {
  }
  return (0);
}
}
static u8 ch_id_to_ch_index(u16 ch_id )
{
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = is_valid_channel((int )ch_id);
  __ret_warn_on = tmp == 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/iwl-phy-db.o.c.prepared",
                       441);
  } else {
  }
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    return (255U);
  } else {
  }
  if ((unsigned int )ch_id <= 14U) {
    return ((unsigned int )((u8 )ch_id) + 255U);
  } else {
  }
  if ((unsigned int )ch_id <= 64U) {
    return ((u8 )(((int )ch_id + 20) / 4));
  } else {
  }
  if ((unsigned int )ch_id <= 140U) {
    return ((u8 )(((int )ch_id + -12) / 4));
  } else {
  }
  return ((u8 )(((int )ch_id + -13) / 4));
}
}
static u16 channel_id_to_papd(u16 ch_id )
{
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = is_valid_channel((int )ch_id);
  __ret_warn_on = tmp == 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/iwl-phy-db.o.c.prepared",
                       456);
  } else {
  }
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    return (255U);
  } else {
  }
  if ((unsigned int )ch_id != 0U && (unsigned int )ch_id <= 14U) {
    return (0U);
  } else {
  }
  if ((unsigned int )ch_id > 35U && (unsigned int )ch_id <= 64U) {
    return (1U);
  } else {
  }
  if ((unsigned int )ch_id > 99U && (unsigned int )ch_id <= 140U) {
    return (2U);
  } else {
  }
  return (3U);
}
}
static u16 channel_id_to_txp(struct iwl_phy_db *phy_db , u16 ch_id )
{
  struct iwl_phy_db_chg_txp *txp_chg ;
  int i ;
  u8 ch_index ;
  u8 tmp ;
  {
  tmp = ch_id_to_ch_index((int )ch_id);
  ch_index = tmp;
  if ((unsigned int )ch_index == 255U) {
    return (255U);
  } else {
  }
  i = 0;
  goto ldv_47824;
  ldv_47823:
  txp_chg = (struct iwl_phy_db_chg_txp *)phy_db->calib_ch_group_txp[i].data;
  if ((unsigned long )txp_chg == (unsigned long )((struct iwl_phy_db_chg_txp *)0)) {
    return (255U);
  } else {
  }
  if ((int )txp_chg->max_channel_idx >= (int )((unsigned short )ch_index)) {
    return ((u16 )i);
  } else {
  }
  i = i + 1;
  ldv_47824: ;
  if (i <= 8) {
    goto ldv_47823;
  } else {
  }
  return (255U);
}
}
static int iwl_phy_db_get_section_data(struct iwl_phy_db *phy_db , u32 type , u8 **data ,
                                       u16 *size , u16 ch_id )
{
  struct iwl_phy_db_entry *entry ;
  u16 ch_group_id ;
  {
  ch_group_id = 0U;
  if ((unsigned long )phy_db == (unsigned long )((struct iwl_phy_db *)0)) {
    return (-22);
  } else {
  }
  if (type == 4U) {
    ch_group_id = channel_id_to_papd((int )ch_id);
  } else
  if (type == 5U) {
    ch_group_id = channel_id_to_txp(phy_db, (int )ch_id);
  } else {
  }
  entry = iwl_phy_db_get_section(phy_db, (enum iwl_phy_db_section_type )type, (int )ch_group_id);
  if ((unsigned long )entry == (unsigned long )((struct iwl_phy_db_entry *)0)) {
    return (-22);
  } else {
  }
  *data = entry->data;
  *size = entry->size;
  __iwl_dbg((phy_db->trans)->dev, 1U, 0, "iwl_phy_db_get_section_data", "%s(%d): [PHYDB] GET: Type %d , Size: %d\n",
            "iwl_phy_db_get_section_data", 514, type, (int )*size);
  return (0);
}
}
static int iwl_send_phy_db_cmd(struct iwl_phy_db *phy_db , u16 type , u16 length ,
                               void *data )
{
  struct iwl_phy_db_cmd phy_db_cmd ;
  struct iwl_host_cmd cmd ;
  int tmp ;
  {
  cmd.data[0] = 0;
  cmd.data[1] = 0;
  cmd.resp_pkt = 0;
  cmd._rx_page_addr = 0UL;
  cmd._rx_page_order = 0U;
  cmd.handler_status = 0;
  cmd.flags = 0U;
  cmd.len[0] = (unsigned short)0;
  cmd.len[1] = (unsigned short)0;
  cmd.dataflags[0] = (unsigned char)0;
  cmd.dataflags[1] = (unsigned char)0;
  cmd.id = 108U;
  __iwl_dbg((phy_db->trans)->dev, 1U, 0, "iwl_send_phy_db_cmd", "Sending PHY-DB hcmd of type %d, of length %d\n",
            (int )type, (int )length);
  phy_db_cmd.type = type;
  phy_db_cmd.length = length;
  cmd.data[0] = (void const *)(& phy_db_cmd);
  cmd.len[0] = 4U;
  cmd.data[1] = (void const *)data;
  cmd.len[1] = length;
  cmd.dataflags[1] = 1U;
  tmp = iwl_trans_send_cmd(phy_db->trans, & cmd);
  return (tmp);
}
}
static int iwl_phy_db_send_all_channel_groups(struct iwl_phy_db *phy_db , enum iwl_phy_db_section_type type ,
                                              u8 max_ch_groups )
{
  u16 i ;
  int err ;
  struct iwl_phy_db_entry *entry ;
  {
  i = 0U;
  goto ldv_47856;
  ldv_47855:
  entry = iwl_phy_db_get_section(phy_db, type, (int )i);
  if ((unsigned long )entry == (unsigned long )((struct iwl_phy_db_entry *)0)) {
    return (-22);
  } else {
  }
  if ((unsigned int )entry->size == 0U) {
    goto ldv_47853;
  } else {
  }
  err = iwl_send_phy_db_cmd(phy_db, (int )((u16 )type), (int )entry->size, (void *)entry->data);
  if (err != 0) {
    __iwl_err((phy_db->trans)->dev, 0, 0, "Can\'t SEND phy_db section %d (%d), err %d\n",
              (unsigned int )type, (int )i, err);
    return (err);
  } else {
  }
  __iwl_dbg((phy_db->trans)->dev, 1U, 0, "iwl_phy_db_send_all_channel_groups", "Sent PHY_DB HCMD, type = %d num = %d\n",
            (unsigned int )type, (int )i);
  ldv_47853:
  i = (u16 )((int )i + 1);
  ldv_47856: ;
  if ((int )((unsigned short )max_ch_groups) > (int )i) {
    goto ldv_47855;
  } else {
  }
  return (0);
}
}
int iwl_send_phy_db_data(struct iwl_phy_db *phy_db )
{
  u8 *data ;
  u16 size ;
  int err ;
  {
  data = (u8 *)0U;
  size = 0U;
  __iwl_dbg((phy_db->trans)->dev, 1U, 0, "iwl_send_phy_db_data", "Sending phy db data and configuration to runtime image\n");
  err = iwl_phy_db_get_section_data(phy_db, 1U, & data, & size, 0);
  if (err != 0) {
    __iwl_err((phy_db->trans)->dev, 0, 0, "Cannot get Phy DB cfg section\n");
    return (err);
  } else {
  }
  err = iwl_send_phy_db_cmd(phy_db, 1, (int )size, (void *)data);
  if (err != 0) {
    __iwl_err((phy_db->trans)->dev, 0, 0, "Cannot send HCMD of  Phy DB cfg section\n");
    return (err);
  } else {
  }
  err = iwl_phy_db_get_section_data(phy_db, 2U, & data, & size, 0);
  if (err != 0) {
    __iwl_err((phy_db->trans)->dev, 0, 0, "Cannot get Phy DB non specific channel section\n");
    return (err);
  } else {
  }
  err = iwl_send_phy_db_cmd(phy_db, 2, (int )size, (void *)data);
  if (err != 0) {
    __iwl_err((phy_db->trans)->dev, 0, 0, "Cannot send HCMD of Phy DB non specific channel section\n");
    return (err);
  } else {
  }
  err = iwl_phy_db_send_all_channel_groups(phy_db, 4, 7);
  if (err != 0) {
    __iwl_err((phy_db->trans)->dev, 0, 0, "Cannot send channel specific PAPD groups\n");
    return (err);
  } else {
  }
  err = iwl_phy_db_send_all_channel_groups(phy_db, 5, 9);
  if (err != 0) {
    __iwl_err((phy_db->trans)->dev, 0, 0, "Cannot send channel specific TX power groups\n");
    return (err);
  } else {
  }
  __iwl_dbg((phy_db->trans)->dev, 1U, 0, "iwl_send_phy_db_data", "Finished sending phy db non channel data\n");
  return (0);
}
}
static char const __kstrtab_iwl_send_phy_db_data[21U] =
  { 'i', 'w', 'l', '_',
        's', 'e', 'n', 'd',
        '_', 'p', 'h', 'y',
        '_', 'd', 'b', '_',
        'd', 'a', 't', 'a',
        '\000'};
struct kernel_symbol const __ksymtab_iwl_send_phy_db_data ;
struct kernel_symbol const __ksymtab_iwl_send_phy_db_data = {(unsigned long )(& iwl_send_phy_db_data), (char const *)(& __kstrtab_iwl_send_phy_db_data)};
int ldv_pskb_expand_head_300(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_302(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_304(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_305(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_306(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_307(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_308(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_309(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_request_threaded_irq_310(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_threaded_irq(ldv_func_arg1, handler, thread_fn, ldv_func_arg4, ldv_func_arg5,
                             ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg6);
  } else {
  }
  return (ldv_func_res);
}
}
struct sk_buff *ldv_skb_clone_311(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_348(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_357(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_350(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_346(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_354(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_355(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_351(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_352(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_353(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
int ldv_request_threaded_irq_356(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 ) ;
__inline static bool is_zero_ether_addr(u8 const *addr )
{
  {
  return (((unsigned int )*((u32 const *)addr) | (unsigned int )*((u16 const *)addr + 4U)) == 0U);
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
__inline static u8 num_of_ant(u8 mask )
{
  {
  return ((((unsigned int )mask & 1U) + (unsigned int )(((unsigned long )mask & 2UL) != 0UL)) + (unsigned int )(((unsigned long )mask & 4UL) != 0UL));
}
}
struct iwl_nvm_data *iwl_parse_nvm_data(struct device *dev , struct iwl_cfg const *cfg ,
                                        __le16 const *nvm_hw , __le16 const *nvm_sw ,
                                        __le16 const *nvm_calib , __le16 const *regulatory ,
                                        __le16 const *mac_override , u8 tx_chains ,
                                        u8 rx_chains ) ;
static u8 const iwl_nvm_channels[39U] =
  { 1U, 2U, 3U, 4U,
        5U, 6U, 7U, 8U,
        9U, 10U, 11U, 12U,
        13U, 14U, 36U, 40U,
        44U, 48U, 52U, 56U,
        60U, 64U, 100U, 104U,
        108U, 112U, 116U, 120U,
        124U, 128U, 132U, 136U,
        140U, 144U, 149U, 153U,
        157U, 161U, 165U};
static u8 const iwl_nvm_channels_family_8000[51U] =
  { 1U, 2U, 3U, 4U,
        5U, 6U, 7U, 8U,
        9U, 10U, 11U, 12U,
        13U, 14U, 36U, 40U,
        44U, 48U, 52U, 56U,
        60U, 64U, 68U, 72U,
        76U, 80U, 84U, 88U,
        92U, 96U, 100U, 104U,
        108U, 112U, 116U, 120U,
        124U, 128U, 132U, 136U,
        140U, 144U, 149U, 153U,
        157U, 161U, 165U, 169U,
        173U, 177U, 181U};
static struct ieee80211_rate iwl_cfg80211_rates___0[12U] =
  { {0U, 10U, 0U, 0U},
        {1U, 20U, 1U, 1U},
        {1U, 55U, 2U, 2U},
        {1U, 110U, 3U, 3U},
        {0U, 60U, 4U, 4U},
        {0U, 90U, 5U, 5U},
        {0U, 120U, 6U, 6U},
        {0U, 180U, 7U, 7U},
        {0U, 240U, 8U, 8U},
        {0U, 360U, 9U, 9U},
        {0U, 480U, 10U, 10U},
        {0U, 540U, 11U, 11U}};
static int iwl_init_channel_map___0(struct device *dev , struct iwl_cfg const *cfg ,
                                    struct iwl_nvm_data *data , __le16 const * const nvm_ch_flags )
{
  int ch_idx ;
  int n_channels ;
  struct ieee80211_channel *channel ;
  u16 ch_flags ;
  bool is_5ghz ;
  int num_of_ch ;
  int num_2ghz_channels ;
  u8 const *nvm_chan ;
  int tmp ;
  {
  n_channels = 0;
  if ((unsigned int )cfg->device_family != 16U) {
    num_of_ch = 39;
    nvm_chan = (u8 const *)(& iwl_nvm_channels);
    num_2ghz_channels = 14;
  } else {
    num_of_ch = 51;
    nvm_chan = (u8 const *)(& iwl_nvm_channels_family_8000);
    num_2ghz_channels = 14;
  }
  ch_idx = 0;
  goto ldv_47950;
  ldv_47949:
  ch_flags = __le16_to_cpup(nvm_ch_flags + (unsigned long )ch_idx);
  if (ch_idx >= num_2ghz_channels && ! data->sku_cap_band_52GHz_enable) {
    ch_flags = (unsigned int )ch_flags & 65534U;
  } else {
  }
  if (((int )ch_flags & 1) == 0) {
    __iwl_dbg(dev, 64U, 0, "iwl_init_channel_map", "Ch. %d Flags %x [%sGHz] - No traffic\n",
              (int )*(nvm_chan + (unsigned long )ch_idx), (int )ch_flags, ch_idx >= num_2ghz_channels ? (char *)"5.2" : (char *)"2.4");
    goto ldv_47948;
  } else {
  }
  channel = (struct ieee80211_channel *)(& data->channels) + (unsigned long )n_channels;
  n_channels = n_channels + 1;
  channel->hw_value = (u16 )*(nvm_chan + (unsigned long )ch_idx);
  channel->band = ch_idx >= num_2ghz_channels;
  tmp = ieee80211_channel_to_frequency((int )channel->hw_value, channel->band);
  channel->center_freq = (u16 )tmp;
  channel->flags = 48U;
  if (ch_idx < num_2ghz_channels && ((int )ch_flags & 512) != 0) {
    if ((unsigned int )((unsigned char )*(nvm_chan + (unsigned long )ch_idx)) <= 9U) {
      channel->flags = channel->flags & 4294967279U;
    } else {
    }
    if ((unsigned int )((unsigned char )*(nvm_chan + (unsigned long )ch_idx)) > 4U) {
      channel->flags = channel->flags & 4294967263U;
    } else {
    }
  } else
  if ((unsigned int )((unsigned char )*(nvm_chan + (unsigned long )ch_idx)) <= 161U && ((int )ch_flags & 512) != 0) {
    if (((unsigned int )(ch_idx - num_2ghz_channels) & 1U) == 0U) {
      channel->flags = channel->flags & 4294967279U;
    } else {
      channel->flags = channel->flags & 4294967263U;
    }
  } else {
  }
  if (((int )ch_flags & 1024) == 0) {
    channel->flags = channel->flags | 128U;
  } else {
  }
  if (((int )ch_flags & 2048) == 0) {
    channel->flags = channel->flags | 256U;
  } else {
  }
  if (((int )ch_flags & 2) == 0) {
    channel->flags = channel->flags | 2U;
  } else {
  }
  if (((int )ch_flags & 8) == 0) {
    channel->flags = channel->flags | 2U;
  } else {
  }
  if (((int )ch_flags & 16) != 0) {
    channel->flags = channel->flags | 8U;
  } else {
  }
  channel->max_power = 16;
  is_5ghz = (unsigned int )channel->band == 1U;
  __iwl_dbg(dev, 64U, 0, "iwl_init_channel_map", "Ch. %d [%sGHz] %s%s%s%s%s%s(0x%02x %ddBm): Ad-Hoc %ssupported\n",
            (int )channel->hw_value, (int )is_5ghz ? (char *)"5.2" : (char *)"2.4",
            (int )ch_flags & 1 ? (char *)"VALID " : (char *)"", ((int )ch_flags & 2) != 0 ? (char *)"IBSS " : (char *)"",
            ((int )ch_flags & 8) != 0 ? (char *)"ACTIVE " : (char *)"", ((int )ch_flags & 16) != 0 ? (char *)"RADAR " : (char *)"",
            ((int )ch_flags & 256) != 0 ? (char *)"WIDE " : (char *)"", ((int )ch_flags & 128) != 0 ? (char *)"DFS " : (char *)"",
            (int )ch_flags, channel->max_power, ((int )ch_flags & 2) != 0 && ((int )ch_flags & 16) == 0 ? (char *)"" : (char *)"not ");
  ldv_47948:
  ch_idx = ch_idx + 1;
  ldv_47950: ;
  if (ch_idx < num_of_ch) {
    goto ldv_47949;
  } else {
  }
  return (n_channels);
}
}
static void iwl_init_vht_hw_capab(struct iwl_cfg const *cfg , struct iwl_nvm_data *data ,
                                  struct ieee80211_sta_vht_cap *vht_cap , u8 tx_chains ,
                                  u8 rx_chains )
{
  int num_rx_ants ;
  u8 tmp ;
  int num_tx_ants ;
  u8 tmp___0 ;
  {
  tmp = num_of_ant((int )rx_chains);
  num_rx_ants = (int )tmp;
  tmp___0 = num_of_ant((int )tx_chains);
  num_tx_ants = (int )tmp___0;
  vht_cap->vht_supported = 1;
  vht_cap->cap = 58749216U;
  if (num_tx_ants > 1) {
    vht_cap->cap = vht_cap->cap | 128U;
  } else {
    vht_cap->cap = vht_cap->cap | 536870912U;
  }
  if (iwlwifi_mod_params.amsdu_size_8K != 0) {
    vht_cap->cap = vht_cap->cap | 1U;
  } else {
  }
  vht_cap->vht_mcs.rx_mcs_map = 65530U;
  if (num_rx_ants == 1 || (int )cfg->rx_with_siso_diversity) {
    vht_cap->cap = vht_cap->cap | 268435456U;
    vht_cap->vht_mcs.rx_mcs_map = (__le16 )((unsigned int )vht_cap->vht_mcs.rx_mcs_map | 12U);
  } else {
  }
  vht_cap->vht_mcs.tx_mcs_map = vht_cap->vht_mcs.rx_mcs_map;
  return;
}
}
static void iwl_init_sbands___0(struct device *dev , struct iwl_cfg const *cfg ,
                                struct iwl_nvm_data *data , __le16 const *ch_section ,
                                bool enable_vht , u8 tx_chains , u8 rx_chains )
{
  int n_channels ;
  int n_used ;
  struct ieee80211_supported_band *sband ;
  int tmp ;
  int tmp___0 ;
  {
  n_used = 0;
  if ((unsigned int )cfg->device_family != 16U) {
    n_channels = iwl_init_channel_map___0(dev, cfg, data, ch_section + 32UL);
  } else {
    n_channels = iwl_init_channel_map___0(dev, cfg, data, ch_section);
  }
  sband = (struct ieee80211_supported_band *)(& data->bands);
  sband->band = 0;
  sband->bitrates = (struct ieee80211_rate *)(& iwl_cfg80211_rates___0);
  sband->n_bitrates = 12;
  tmp = iwl_init_sband_channels(data, sband, n_channels, 0);
  n_used = tmp + n_used;
  iwl_init_ht_hw_capab(cfg, data, & sband->ht_cap, 0, (int )tx_chains, (int )rx_chains);
  sband = (struct ieee80211_supported_band *)(& data->bands) + 1UL;
  sband->band = 1;
  sband->bitrates = (struct ieee80211_rate *)(& iwl_cfg80211_rates___0) + 4UL;
  sband->n_bitrates = 8;
  tmp___0 = iwl_init_sband_channels(data, sband, n_channels, 1);
  n_used = tmp___0 + n_used;
  iwl_init_ht_hw_capab(cfg, data, & sband->ht_cap, 1, (int )tx_chains, (int )rx_chains);
  if ((int )enable_vht) {
    iwl_init_vht_hw_capab(cfg, data, & sband->vht_cap, (int )tx_chains, (int )rx_chains);
  } else {
  }
  if (n_channels != n_used) {
    __iwl_err(dev, 0, 0, "NVM: used only %d of %d channels\n", n_used, n_channels);
  } else {
  }
  return;
}
}
static int iwl_get_sku(struct iwl_cfg const *cfg , __le16 const *nvm_sw )
{
  __u16 tmp ;
  __u32 tmp___0 ;
  {
  if ((unsigned int )cfg->device_family != 16U) {
    tmp = __le16_to_cpup(nvm_sw + 2UL);
    return ((int )tmp);
  } else {
    tmp___0 = __le32_to_cpup((__le32 const *)nvm_sw + 4U);
    return ((int )tmp___0);
  }
}
}
static int iwl_get_nvm_version(struct iwl_cfg const *cfg , __le16 const *nvm_sw )
{
  __u16 tmp ;
  __u32 tmp___0 ;
  {
  if ((unsigned int )cfg->device_family != 16U) {
    tmp = __le16_to_cpup(nvm_sw);
    return ((int )tmp);
  } else {
    tmp___0 = __le32_to_cpup((__le32 const *)nvm_sw);
    return ((int )tmp___0);
  }
}
}
static int iwl_get_radio_cfg(struct iwl_cfg const *cfg , __le16 const *nvm_sw )
{
  __u16 tmp ;
  __u32 tmp___0 ;
  {
  if ((unsigned int )cfg->device_family != 16U) {
    tmp = __le16_to_cpup(nvm_sw + 1UL);
    return ((int )tmp);
  } else {
    tmp___0 = __le32_to_cpup((__le32 const *)nvm_sw + 2U);
    return ((int )tmp___0);
  }
}
}
static int iwl_get_n_hw_addrs(struct iwl_cfg const *cfg , __le16 const *nvm_sw )
{
  __u16 tmp ;
  __u32 tmp___0 ;
  {
  if ((unsigned int )cfg->device_family != 16U) {
    tmp = __le16_to_cpup(nvm_sw + 3UL);
    return ((int )tmp);
  } else {
    tmp___0 = __le32_to_cpup((__le32 const *)nvm_sw + 5U);
    return ((int )tmp___0 & 15);
  }
}
}
static void iwl_set_radio_cfg(struct iwl_cfg const *cfg , struct iwl_nvm_data *data ,
                              u32 radio_cfg )
{
  {
  if ((unsigned int )cfg->device_family != 16U) {
    data->radio_cfg_type = (unsigned int )((u16 )(radio_cfg >> 4)) & 3U;
    data->radio_cfg_step = (unsigned int )((u8 )(radio_cfg >> 2)) & 3U;
    data->radio_cfg_dash = (unsigned int )((u8 )radio_cfg) & 3U;
    data->radio_cfg_pnum = (unsigned int )((u8 )(radio_cfg >> 6)) & 3U;
    return;
  } else {
  }
  data->radio_cfg_type = (unsigned int )((u16 )(radio_cfg >> 12)) & 4095U;
  data->radio_cfg_step = (unsigned int )((u8 )(radio_cfg >> 8)) & 15U;
  data->radio_cfg_dash = (unsigned int )((u8 )(radio_cfg >> 4)) & 15U;
  data->radio_cfg_pnum = (unsigned int )((u8 )radio_cfg) & 15U;
  return;
}
}
static void iwl_set_hw_address(struct iwl_cfg const *cfg , struct iwl_nvm_data *data ,
                               __le16 const *nvm_sec )
{
  u8 const *hw_addr ;
  {
  hw_addr = (u8 const *)nvm_sec + 21U;
  data->hw_addr[0] = *(hw_addr + 1UL);
  data->hw_addr[1] = *hw_addr;
  data->hw_addr[2] = *(hw_addr + 3UL);
  data->hw_addr[3] = *(hw_addr + 2UL);
  data->hw_addr[4] = *(hw_addr + 5UL);
  data->hw_addr[5] = *(hw_addr + 4UL);
  return;
}
}
static void iwl_set_hw_address_family_8000(struct iwl_cfg const *cfg , struct iwl_nvm_data *data ,
                                           __le16 const *mac_override , __le16 const *nvm_hw )
{
  u8 const *hw_addr ;
  bool tmp ;
  {
  if ((unsigned long )mac_override != (unsigned long )((__le16 const *)0U)) {
    hw_addr = (u8 const *)mac_override + 1U;
    data->hw_addr[0] = *(hw_addr + 1UL);
    data->hw_addr[1] = *hw_addr;
    data->hw_addr[2] = *(hw_addr + 3UL);
    data->hw_addr[3] = *(hw_addr + 2UL);
    data->hw_addr[4] = *(hw_addr + 5UL);
    data->hw_addr[5] = *(hw_addr + 4UL);
    tmp = is_valid_ether_addr(hw_addr);
    if ((int )tmp) {
      return;
    } else {
    }
  } else {
  }
  hw_addr = (u8 const *)nvm_hw + 18U;
  data->hw_addr[0] = *(hw_addr + 3UL);
  data->hw_addr[1] = *(hw_addr + 2UL);
  data->hw_addr[2] = *(hw_addr + 1UL);
  data->hw_addr[3] = *hw_addr;
  hw_addr = (u8 const *)nvm_hw + 22U;
  data->hw_addr[4] = *(hw_addr + 1UL);
  data->hw_addr[5] = *hw_addr;
  return;
}
}
struct iwl_nvm_data *iwl_parse_nvm_data(struct device *dev , struct iwl_cfg const *cfg ,
                                        __le16 const *nvm_hw , __le16 const *nvm_sw ,
                                        __le16 const *nvm_calib , __le16 const *regulatory ,
                                        __le16 const *mac_override , u8 tx_chains ,
                                        u8 rx_chains )
{
  struct iwl_nvm_data *data ;
  u32 sku ;
  u32 radio_cfg ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  if ((unsigned int )cfg->device_family != 16U) {
    tmp = kzalloc(2760UL, 208U);
    data = (struct iwl_nvm_data *)tmp;
  } else {
    tmp___0 = kzalloc(3528UL, 208U);
    data = (struct iwl_nvm_data *)tmp___0;
  }
  if ((unsigned long )data == (unsigned long )((struct iwl_nvm_data *)0)) {
    return ((struct iwl_nvm_data *)0);
  } else {
  }
  tmp___1 = iwl_get_nvm_version(cfg, nvm_sw);
  data->nvm_version = (u32 )tmp___1;
  tmp___2 = iwl_get_radio_cfg(cfg, nvm_sw);
  radio_cfg = (u32 )tmp___2;
  iwl_set_radio_cfg(cfg, data, radio_cfg);
  tmp___3 = iwl_get_sku(cfg, nvm_sw);
  sku = (u32 )tmp___3;
  data->sku_cap_band_24GHz_enable = (sku & 1U) != 0U;
  data->sku_cap_band_52GHz_enable = (sku & 2U) != 0U;
  data->sku_cap_11n_enable = (sku & 4U) != 0U;
  data->sku_cap_11ac_enable = (sku & 8U) != 0U;
  if ((int )iwlwifi_mod_params.disable_11n & 1) {
    data->sku_cap_11n_enable = 0;
  } else {
  }
  data->n_hw_addrs = iwl_get_n_hw_addrs(cfg, nvm_sw);
  if ((unsigned int )cfg->device_family != 16U) {
    if ((unsigned long )nvm_calib == (unsigned long )((__le16 const *)0U)) {
      __iwl_err(dev, 0, 0, "Can\'t parse empty Calib NVM sections\n");
      kfree((void const *)data);
      return ((struct iwl_nvm_data *)0);
    } else {
    }
    data->xtal_calib[0] = *(nvm_calib + 94UL);
    data->xtal_calib[1] = *(nvm_calib + 95U);
  } else {
  }
  if ((unsigned int )cfg->device_family != 16U) {
    iwl_set_hw_address(cfg, data, nvm_hw);
    iwl_init_sbands___0(dev, cfg, data, nvm_sw, (sku & 8U) != 0U, (int )tx_chains,
                        (int )rx_chains);
  } else {
    iwl_set_hw_address_family_8000(cfg, data, mac_override, nvm_hw);
    iwl_init_sbands___0(dev, cfg, data, regulatory, (sku & 8U) != 0U, (int )tx_chains,
                        (int )rx_chains);
  }
  data->calib_version = 255U;
  return (data);
}
}
static char const __kstrtab_iwl_parse_nvm_data[19U] =
  { 'i', 'w', 'l', '_',
        'p', 'a', 'r', 's',
        'e', '_', 'n', 'v',
        'm', '_', 'd', 'a',
        't', 'a', '\000'};
struct kernel_symbol const __ksymtab_iwl_parse_nvm_data ;
struct kernel_symbol const __ksymtab_iwl_parse_nvm_data = {(unsigned long )(& iwl_parse_nvm_data), (char const *)(& __kstrtab_iwl_parse_nvm_data)};
int ldv_pskb_expand_head_346(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_348(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_350(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_351(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_352(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_353(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_354(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_355(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_request_threaded_irq_356(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_threaded_irq(ldv_func_arg1, handler, thread_fn, ldv_func_arg4, ldv_func_arg5,
                             ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg6);
  } else {
  }
  return (ldv_func_res);
}
}
struct sk_buff *ldv_skb_clone_357(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
__inline static long PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
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
extern int pci_bus_write_config_byte(struct pci_bus * , unsigned int , int , u8 ) ;
__inline static int pci_write_config_byte(struct pci_dev const *dev , int where ,
                                          u8 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_byte(dev->bus, dev->devfn, where, (int )val);
  return (tmp);
}
}
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
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
extern acpi_status acpi_get_handle(acpi_handle , acpi_string , acpi_handle ** ) ;
extern acpi_status acpi_evaluate_object(acpi_handle , acpi_string , struct acpi_object_list * ,
                                        struct acpi_buffer * ) ;
__inline static acpi_handle acpi_device_handle(struct acpi_device *adev )
{
  {
  return ((unsigned long )adev != (unsigned long )((struct acpi_device *)0) ? adev->handle : (acpi_handle )0);
}
}
struct sk_buff *ldv_skb_clone_394(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_403(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_396(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_392(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_400(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_401(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_397(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_398(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_399(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
int ldv_request_threaded_irq_402(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 ) ;
struct iwl_cfg const iwl5300_agn_cfg ;
struct iwl_cfg const iwl5100_agn_cfg ;
struct iwl_cfg const iwl5350_agn_cfg ;
struct iwl_cfg const iwl5100_bgn_cfg ;
struct iwl_cfg const iwl5100_abg_cfg ;
struct iwl_cfg const iwl5150_agn_cfg ;
struct iwl_cfg const iwl5150_abg_cfg ;
struct iwl_cfg const iwl6005_2agn_cfg ;
struct iwl_cfg const iwl6005_2abg_cfg ;
struct iwl_cfg const iwl6005_2bg_cfg ;
struct iwl_cfg const iwl6005_2agn_sff_cfg ;
struct iwl_cfg const iwl6005_2agn_d_cfg ;
struct iwl_cfg const iwl6005_2agn_mow1_cfg ;
struct iwl_cfg const iwl6005_2agn_mow2_cfg ;
struct iwl_cfg const iwl1030_bgn_cfg ;
struct iwl_cfg const iwl1030_bg_cfg ;
struct iwl_cfg const iwl6030_2agn_cfg ;
struct iwl_cfg const iwl6030_2abg_cfg ;
struct iwl_cfg const iwl6030_2bgn_cfg ;
struct iwl_cfg const iwl6030_2bg_cfg ;
struct iwl_cfg const iwl6000i_2agn_cfg ;
struct iwl_cfg const iwl6000i_2abg_cfg ;
struct iwl_cfg const iwl6000i_2bg_cfg ;
struct iwl_cfg const iwl6000_3agn_cfg ;
struct iwl_cfg const iwl6050_2agn_cfg ;
struct iwl_cfg const iwl6050_2abg_cfg ;
struct iwl_cfg const iwl6150_bgn_cfg ;
struct iwl_cfg const iwl6150_bg_cfg ;
struct iwl_cfg const iwl1000_bgn_cfg ;
struct iwl_cfg const iwl1000_bg_cfg ;
struct iwl_cfg const iwl100_bgn_cfg ;
struct iwl_cfg const iwl100_bg_cfg ;
struct iwl_cfg const iwl130_bgn_cfg ;
struct iwl_cfg const iwl130_bg_cfg ;
struct iwl_cfg const iwl2000_2bgn_cfg ;
struct iwl_cfg const iwl2000_2bgn_d_cfg ;
struct iwl_cfg const iwl2030_2bgn_cfg ;
struct iwl_cfg const iwl6035_2agn_cfg ;
struct iwl_cfg const iwl6035_2agn_sff_cfg ;
struct iwl_cfg const iwl105_bgn_cfg ;
struct iwl_cfg const iwl105_bgn_d_cfg ;
struct iwl_cfg const iwl135_bgn_cfg ;
struct iwl_cfg const iwl7260_2ac_cfg ;
struct iwl_cfg const iwl7260_2ac_cfg_high_temp ;
struct iwl_cfg const iwl7260_2n_cfg ;
struct iwl_cfg const iwl7260_n_cfg ;
struct iwl_cfg const iwl3160_2ac_cfg ;
struct iwl_cfg const iwl3160_2n_cfg ;
struct iwl_cfg const iwl3160_n_cfg ;
struct iwl_cfg const iwl7265_2ac_cfg ;
struct iwl_cfg const iwl7265_2n_cfg ;
struct iwl_cfg const iwl7265_n_cfg ;
struct iwl_cfg const iwl8260_2ac_cfg ;
__inline static int iwl_trans_dbgfs_register(struct iwl_trans *trans , struct dentry *dir )
{
  int tmp ;
  {
  tmp = (*((trans->ops)->dbgfs_register))(trans, dir);
  return (tmp);
}
}
__inline static void trace_iwlwifi_dev_ioread32___1(struct device const *dev , u32 offs ,
                                                    u32 val )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_ioread32.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_ioread32.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 101,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_52900:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , u32 , u32 ))it_func))(__data,
                                                                              dev,
                                                                              offs,
                                                                              val);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_52900;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
__inline static void trace_iwlwifi_dev_iowrite32___1(struct device const *dev ,
                                                     u32 offs , u32 val )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_iowrite32.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_iowrite32.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 135,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_52988:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , u32 , u32 ))it_func))(__data,
                                                                              dev,
                                                                              offs,
                                                                              val);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_52988;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
__inline static void iwl_write32___1(struct iwl_trans *trans , u32 ofs , u32 val )
{
  {
  trace_iwlwifi_dev_iowrite32___1((struct device const *)trans->dev, ofs, val);
  iwl_trans_write32(trans, ofs, val);
  return;
}
}
__inline static u32 iwl_read32___1(struct iwl_trans *trans , u32 ofs )
{
  u32 val ;
  u32 tmp ;
  {
  tmp = iwl_trans_read32(trans, ofs);
  val = tmp;
  trace_iwlwifi_dev_ioread32___1((struct device const *)trans->dev, ofs, val);
  return (val);
}
}
struct iwl_trans *iwl_trans_pcie_alloc(struct pci_dev *pdev , struct pci_device_id const *ent ,
                                       struct iwl_cfg const *cfg ) ;
void iwl_trans_pcie_free(struct iwl_trans *trans ) ;
__inline static void iwl_enable_rfkill_int(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  __iwl_dbg(trans->dev, 33554432U, 0, "iwl_enable_rfkill_int", "Enabling rfkill interrupt\n");
  trans_pcie->inta_mask = 128U;
  iwl_write32___1(trans, 12U, trans_pcie->inta_mask);
  return;
}
}
__inline static bool iwl_is_rfkill_set(struct iwl_trans *trans )
{
  u32 tmp ;
  {
  tmp = iwl_read32___1(trans, 36U);
  return ((tmp & 134217728U) == 0U);
}
}
void iwl_trans_pcie_rf_kill(struct iwl_trans *trans , bool state ) ;
static struct pci_device_id const iwl_hw_card_ids[274U] =
  { {32902U, 16946U, 4294967295U, 4609U, 0U, 0U, (unsigned long )(& iwl5100_agn_cfg)},
        {32902U,
      16946U, 4294967295U, 4865U, 0U, 0U, (unsigned long )(& iwl5100_agn_cfg)},
        {32902U, 16946U, 4294967295U, 4612U, 0U, 0U, (unsigned long )(& iwl5100_agn_cfg)},
        {32902U,
      16946U, 4294967295U, 4868U, 0U, 0U, (unsigned long )(& iwl5100_agn_cfg)},
        {32902U, 16946U, 4294967295U, 4613U, 0U, 0U, (unsigned long )(& iwl5100_bgn_cfg)},
        {32902U,
      16946U, 4294967295U, 4869U, 0U, 0U, (unsigned long )(& iwl5100_bgn_cfg)},
        {32902U, 16946U, 4294967295U, 4614U, 0U, 0U, (unsigned long )(& iwl5100_abg_cfg)},
        {32902U,
      16946U, 4294967295U, 4870U, 0U, 0U, (unsigned long )(& iwl5100_abg_cfg)},
        {32902U, 16946U, 4294967295U, 4641U, 0U, 0U, (unsigned long )(& iwl5100_agn_cfg)},
        {32902U,
      16946U, 4294967295U, 4897U, 0U, 0U, (unsigned long )(& iwl5100_agn_cfg)},
        {32902U, 16946U, 4294967295U, 4644U, 0U, 0U, (unsigned long )(& iwl5100_agn_cfg)},
        {32902U,
      16946U, 4294967295U, 4900U, 0U, 0U, (unsigned long )(& iwl5100_agn_cfg)},
        {32902U, 16946U, 4294967295U, 4645U, 0U, 0U, (unsigned long )(& iwl5100_bgn_cfg)},
        {32902U,
      16946U, 4294967295U, 4901U, 0U, 0U, (unsigned long )(& iwl5100_bgn_cfg)},
        {32902U, 16946U, 4294967295U, 4646U, 0U, 0U, (unsigned long )(& iwl5100_abg_cfg)},
        {32902U,
      16946U, 4294967295U, 4902U, 0U, 0U, (unsigned long )(& iwl5100_abg_cfg)},
        {32902U, 16951U, 4294967295U, 4625U, 0U, 0U, (unsigned long )(& iwl5100_agn_cfg)},
        {32902U,
      16951U, 4294967295U, 4881U, 0U, 0U, (unsigned long )(& iwl5100_agn_cfg)},
        {32902U, 16951U, 4294967295U, 4628U, 0U, 0U, (unsigned long )(& iwl5100_agn_cfg)},
        {32902U,
      16951U, 4294967295U, 4884U, 0U, 0U, (unsigned long )(& iwl5100_agn_cfg)},
        {32902U, 16951U, 4294967295U, 4629U, 0U, 0U, (unsigned long )(& iwl5100_bgn_cfg)},
        {32902U,
      16951U, 4294967295U, 4885U, 0U, 0U, (unsigned long )(& iwl5100_bgn_cfg)},
        {32902U, 16951U, 4294967295U, 4630U, 0U, 0U, (unsigned long )(& iwl5100_abg_cfg)},
        {32902U,
      16951U, 4294967295U, 4886U, 0U, 0U, (unsigned long )(& iwl5100_abg_cfg)},
        {32902U, 16949U, 4294967295U, 4129U, 0U, 0U, (unsigned long )(& iwl5300_agn_cfg)},
        {32902U,
      16949U, 4294967295U, 4385U, 0U, 0U, (unsigned long )(& iwl5300_agn_cfg)},
        {32902U, 16949U, 4294967295U, 4132U, 0U, 0U, (unsigned long )(& iwl5300_agn_cfg)},
        {32902U,
      16949U, 4294967295U, 4388U, 0U, 0U, (unsigned long )(& iwl5300_agn_cfg)},
        {32902U, 16949U, 4294967295U, 4097U, 0U, 0U, (unsigned long )(& iwl5300_agn_cfg)},
        {32902U,
      16949U, 4294967295U, 4353U, 0U, 0U, (unsigned long )(& iwl5300_agn_cfg)},
        {32902U, 16949U, 4294967295U, 4100U, 0U, 0U, (unsigned long )(& iwl5300_agn_cfg)},
        {32902U,
      16949U, 4294967295U, 4356U, 0U, 0U, (unsigned long )(& iwl5300_agn_cfg)},
        {32902U, 16950U, 4294967295U, 4113U, 0U, 0U, (unsigned long )(& iwl5300_agn_cfg)},
        {32902U,
      16950U, 4294967295U, 4369U, 0U, 0U, (unsigned long )(& iwl5300_agn_cfg)},
        {32902U, 16950U, 4294967295U, 4116U, 0U, 0U, (unsigned long )(& iwl5300_agn_cfg)},
        {32902U,
      16950U, 4294967295U, 4372U, 0U, 0U, (unsigned long )(& iwl5300_agn_cfg)},
        {32902U, 16954U, 4294967295U, 4097U, 0U, 0U, (unsigned long )(& iwl5350_agn_cfg)},
        {32902U,
      16954U, 4294967295U, 4129U, 0U, 0U, (unsigned long )(& iwl5350_agn_cfg)},
        {32902U, 16955U, 4294967295U, 4113U, 0U, 0U, (unsigned long )(& iwl5350_agn_cfg)},
        {32902U,
      16956U, 4294967295U, 4609U, 0U, 0U, (unsigned long )(& iwl5150_agn_cfg)},
        {32902U, 16956U, 4294967295U, 4865U, 0U, 0U, (unsigned long )(& iwl5150_agn_cfg)},
        {32902U,
      16956U, 4294967295U, 4614U, 0U, 0U, (unsigned long )(& iwl5150_abg_cfg)},
        {32902U, 16956U, 4294967295U, 4870U, 0U, 0U, (unsigned long )(& iwl5150_abg_cfg)},
        {32902U,
      16956U, 4294967295U, 4641U, 0U, 0U, (unsigned long )(& iwl5150_agn_cfg)},
        {32902U, 16956U, 4294967295U, 4897U, 0U, 0U, (unsigned long )(& iwl5150_agn_cfg)},
        {32902U,
      16956U, 4294967295U, 4902U, 0U, 0U, (unsigned long )(& iwl5150_abg_cfg)},
        {32902U, 16957U, 4294967295U, 4625U, 0U, 0U, (unsigned long )(& iwl5150_agn_cfg)},
        {32902U,
      16957U, 4294967295U, 4881U, 0U, 0U, (unsigned long )(& iwl5150_agn_cfg)},
        {32902U, 16957U, 4294967295U, 4630U, 0U, 0U, (unsigned long )(& iwl5150_abg_cfg)},
        {32902U,
      16957U, 4294967295U, 4886U, 0U, 0U, (unsigned long )(& iwl5150_abg_cfg)},
        {32902U, 16939U, 4294967295U, 4353U, 0U, 0U, (unsigned long )(& iwl6000_3agn_cfg)},
        {32902U,
      16939U, 4294967295U, 4360U, 0U, 0U, (unsigned long )(& iwl6000_3agn_cfg)},
        {32902U, 16939U, 4294967295U, 4385U, 0U, 0U, (unsigned long )(& iwl6000_3agn_cfg)},
        {32902U,
      16939U, 4294967295U, 4392U, 0U, 0U, (unsigned long )(& iwl6000_3agn_cfg)},
        {32902U, 16940U, 4294967295U, 4865U, 0U, 0U, (unsigned long )(& iwl6000i_2agn_cfg)},
        {32902U,
      16940U, 4294967295U, 4870U, 0U, 0U, (unsigned long )(& iwl6000i_2abg_cfg)},
        {32902U, 16940U, 4294967295U, 4871U, 0U, 0U, (unsigned long )(& iwl6000i_2bg_cfg)},
        {32902U,
      16940U, 4294967295U, 4897U, 0U, 0U, (unsigned long )(& iwl6000i_2agn_cfg)},
        {32902U, 16940U, 4294967295U, 4902U, 0U, 0U, (unsigned long )(& iwl6000i_2abg_cfg)},
        {32902U,
      16952U, 4294967295U, 4369U, 0U, 0U, (unsigned long )(& iwl6000_3agn_cfg)},
        {32902U, 16952U, 4294967295U, 4376U, 0U, 0U, (unsigned long )(& iwl6000_3agn_cfg)},
        {32902U,
      16953U, 4294967295U, 4881U, 0U, 0U, (unsigned long )(& iwl6000i_2agn_cfg)},
        {32902U, 16953U, 4294967295U, 4886U, 0U, 0U, (unsigned long )(& iwl6000i_2abg_cfg)},
        {32902U,
      130U, 4294967295U, 4865U, 0U, 0U, (unsigned long )(& iwl6005_2agn_cfg)},
        {32902U, 130U, 4294967295U, 4870U, 0U, 0U, (unsigned long )(& iwl6005_2abg_cfg)},
        {32902U,
      130U, 4294967295U, 4871U, 0U, 0U, (unsigned long )(& iwl6005_2bg_cfg)},
        {32902U, 130U, 4294967295U, 4872U, 0U, 0U, (unsigned long )(& iwl6005_2agn_cfg)},
        {32902U,
      130U, 4294967295U, 4897U, 0U, 0U, (unsigned long )(& iwl6005_2agn_cfg)},
        {32902U, 130U, 4294967295U, 4902U, 0U, 0U, (unsigned long )(& iwl6005_2abg_cfg)},
        {32902U,
      130U, 4294967295U, 4904U, 0U, 0U, (unsigned long )(& iwl6005_2agn_cfg)},
        {32902U, 133U, 4294967295U, 4881U, 0U, 0U, (unsigned long )(& iwl6005_2agn_cfg)},
        {32902U,
      133U, 4294967295U, 4888U, 0U, 0U, (unsigned long )(& iwl6005_2agn_cfg)},
        {32902U, 133U, 4294967295U, 4886U, 0U, 0U, (unsigned long )(& iwl6005_2abg_cfg)},
        {32902U,
      130U, 4294967295U, 49184U, 0U, 0U, (unsigned long )(& iwl6005_2agn_sff_cfg)},
        {32902U,
      133U, 4294967295U, 49696U, 0U, 0U, (unsigned long )(& iwl6005_2agn_sff_cfg)},
        {32902U,
      133U, 4294967295U, 49704U, 0U, 0U, (unsigned long )(& iwl6005_2agn_sff_cfg)},
        {32902U,
      130U, 4294967295U, 18464U, 0U, 0U, (unsigned long )(& iwl6005_2agn_d_cfg)},
        {32902U, 130U, 4294967295U, 4868U, 0U, 0U, (unsigned long )(& iwl6005_2agn_mow1_cfg)},
        {32902U,
      130U, 4294967295U, 4869U, 0U, 0U, (unsigned long )(& iwl6005_2agn_mow2_cfg)},
        {32902U,
      138U, 4294967295U, 21253U, 0U, 0U, (unsigned long )(& iwl1030_bgn_cfg)},
        {32902U, 138U, 4294967295U, 21255U, 0U, 0U, (unsigned long )(& iwl1030_bg_cfg)},
        {32902U,
      138U, 4294967295U, 21285U, 0U, 0U, (unsigned long )(& iwl1030_bgn_cfg)},
        {32902U, 138U, 4294967295U, 21287U, 0U, 0U, (unsigned long )(& iwl1030_bg_cfg)},
        {32902U,
      139U, 4294967295U, 21269U, 0U, 0U, (unsigned long )(& iwl1030_bgn_cfg)},
        {32902U, 139U, 4294967295U, 21271U, 0U, 0U, (unsigned long )(& iwl1030_bg_cfg)},
        {32902U,
      144U, 4294967295U, 21009U, 0U, 0U, (unsigned long )(& iwl6030_2agn_cfg)},
        {32902U, 144U, 4294967295U, 21013U, 0U, 0U, (unsigned long )(& iwl6030_2bgn_cfg)},
        {32902U,
      144U, 4294967295U, 21014U, 0U, 0U, (unsigned long )(& iwl6030_2abg_cfg)},
        {32902U, 145U, 4294967295U, 20993U, 0U, 0U, (unsigned long )(& iwl6030_2agn_cfg)},
        {32902U,
      145U, 4294967295U, 20997U, 0U, 0U, (unsigned long )(& iwl6030_2bgn_cfg)},
        {32902U, 145U, 4294967295U, 20998U, 0U, 0U, (unsigned long )(& iwl6030_2abg_cfg)},
        {32902U,
      145U, 4294967295U, 20999U, 0U, 0U, (unsigned long )(& iwl6030_2bg_cfg)},
        {32902U, 145U, 4294967295U, 21025U, 0U, 0U, (unsigned long )(& iwl6030_2agn_cfg)},
        {32902U,
      145U, 4294967295U, 21029U, 0U, 0U, (unsigned long )(& iwl6030_2bgn_cfg)},
        {32902U, 145U, 4294967295U, 21030U, 0U, 0U, (unsigned long )(& iwl6030_2abg_cfg)},
        {32902U,
      135U, 4294967295U, 4865U, 0U, 0U, (unsigned long )(& iwl6050_2agn_cfg)},
        {32902U, 135U, 4294967295U, 4870U, 0U, 0U, (unsigned long )(& iwl6050_2abg_cfg)},
        {32902U,
      135U, 4294967295U, 4897U, 0U, 0U, (unsigned long )(& iwl6050_2agn_cfg)},
        {32902U, 135U, 4294967295U, 4902U, 0U, 0U, (unsigned long )(& iwl6050_2abg_cfg)},
        {32902U,
      137U, 4294967295U, 4881U, 0U, 0U, (unsigned long )(& iwl6050_2agn_cfg)},
        {32902U, 137U, 4294967295U, 4886U, 0U, 0U, (unsigned long )(& iwl6050_2abg_cfg)},
        {32902U,
      2181U, 4294967295U, 4869U, 0U, 0U, (unsigned long )(& iwl6150_bgn_cfg)},
        {32902U, 2181U, 4294967295U, 4871U, 0U, 0U, (unsigned long )(& iwl6150_bg_cfg)},
        {32902U,
      2181U, 4294967295U, 4901U, 0U, 0U, (unsigned long )(& iwl6150_bgn_cfg)},
        {32902U, 2181U, 4294967295U, 4903U, 0U, 0U, (unsigned long )(& iwl6150_bg_cfg)},
        {32902U,
      2182U, 4294967295U, 4885U, 0U, 0U, (unsigned long )(& iwl6150_bgn_cfg)},
        {32902U, 2182U, 4294967295U, 4887U, 0U, 0U, (unsigned long )(& iwl6150_bg_cfg)},
        {32902U,
      131U, 4294967295U, 4613U, 0U, 0U, (unsigned long )(& iwl1000_bgn_cfg)},
        {32902U, 131U, 4294967295U, 4869U, 0U, 0U, (unsigned long )(& iwl1000_bgn_cfg)},
        {32902U,
      131U, 4294967295U, 4645U, 0U, 0U, (unsigned long )(& iwl1000_bgn_cfg)},
        {32902U, 131U, 4294967295U, 4901U, 0U, 0U, (unsigned long )(& iwl1000_bgn_cfg)},
        {32902U,
      132U, 4294967295U, 4629U, 0U, 0U, (unsigned long )(& iwl1000_bgn_cfg)},
        {32902U, 132U, 4294967295U, 4885U, 0U, 0U, (unsigned long )(& iwl1000_bgn_cfg)},
        {32902U,
      131U, 4294967295U, 4614U, 0U, 0U, (unsigned long )(& iwl1000_bg_cfg)},
        {32902U, 131U, 4294967295U, 4870U, 0U, 0U, (unsigned long )(& iwl1000_bg_cfg)},
        {32902U,
      131U, 4294967295U, 4646U, 0U, 0U, (unsigned long )(& iwl1000_bg_cfg)},
        {32902U, 131U, 4294967295U, 4902U, 0U, 0U, (unsigned long )(& iwl1000_bg_cfg)},
        {32902U,
      132U, 4294967295U, 4630U, 0U, 0U, (unsigned long )(& iwl1000_bg_cfg)},
        {32902U, 132U, 4294967295U, 4886U, 0U, 0U, (unsigned long )(& iwl1000_bg_cfg)},
        {32902U,
      2222U, 4294967295U, 4101U, 0U, 0U, (unsigned long )(& iwl100_bgn_cfg)},
        {32902U, 2222U, 4294967295U, 4103U, 0U, 0U, (unsigned long )(& iwl100_bg_cfg)},
        {32902U,
      2223U, 4294967295U, 4117U, 0U, 0U, (unsigned long )(& iwl100_bgn_cfg)},
        {32902U, 2223U, 4294967295U, 4119U, 0U, 0U, (unsigned long )(& iwl100_bg_cfg)},
        {32902U,
      2222U, 4294967295U, 4133U, 0U, 0U, (unsigned long )(& iwl100_bgn_cfg)},
        {32902U, 2222U, 4294967295U, 4135U, 0U, 0U, (unsigned long )(& iwl100_bg_cfg)},
        {32902U,
      2198U, 4294967295U, 20485U, 0U, 0U, (unsigned long )(& iwl130_bgn_cfg)},
        {32902U, 2198U, 4294967295U, 20487U, 0U, 0U, (unsigned long )(& iwl130_bg_cfg)},
        {32902U,
      2199U, 4294967295U, 20501U, 0U, 0U, (unsigned long )(& iwl130_bgn_cfg)},
        {32902U, 2199U, 4294967295U, 20503U, 0U, 0U, (unsigned long )(& iwl130_bg_cfg)},
        {32902U,
      2198U, 4294967295U, 20517U, 0U, 0U, (unsigned long )(& iwl130_bgn_cfg)},
        {32902U, 2198U, 4294967295U, 20519U, 0U, 0U, (unsigned long )(& iwl130_bg_cfg)},
        {32902U,
      2192U, 4294967295U, 16418U, 0U, 0U, (unsigned long )(& iwl2000_2bgn_cfg)},
        {32902U, 2193U, 4294967295U, 16930U, 0U, 0U, (unsigned long )(& iwl2000_2bgn_cfg)},
        {32902U,
      2192U, 4294967295U, 17442U, 0U, 0U, (unsigned long )(& iwl2000_2bgn_cfg)},
        {32902U, 2192U, 4294967295U, 18466U, 0U, 0U, (unsigned long )(& iwl2000_2bgn_d_cfg)},
        {32902U,
      2183U, 4294967295U, 16482U, 0U, 0U, (unsigned long )(& iwl2030_2bgn_cfg)},
        {32902U, 2184U, 4294967295U, 16994U, 0U, 0U, (unsigned long )(& iwl2030_2bgn_cfg)},
        {32902U,
      2183U, 4294967295U, 17506U, 0U, 0U, (unsigned long )(& iwl2030_2bgn_cfg)},
        {32902U, 2190U, 4294967295U, 16480U, 0U, 0U, (unsigned long )(& iwl6035_2agn_cfg)},
        {32902U,
      2190U, 4294967295U, 16490U, 0U, 0U, (unsigned long )(& iwl6035_2agn_sff_cfg)},
        {32902U,
      2191U, 4294967295U, 16992U, 0U, 0U, (unsigned long )(& iwl6035_2agn_cfg)},
        {32902U, 2191U, 4294967295U, 17002U, 0U, 0U, (unsigned long )(& iwl6035_2agn_sff_cfg)},
        {32902U,
      2190U, 4294967295U, 17504U, 0U, 0U, (unsigned long )(& iwl6035_2agn_cfg)},
        {32902U, 2190U, 4294967295U, 17514U, 0U, 0U, (unsigned long )(& iwl6035_2agn_sff_cfg)},
        {32902U,
      2190U, 4294967295U, 18528U, 0U, 0U, (unsigned long )(& iwl6035_2agn_cfg)},
        {32902U, 2191U, 4294967295U, 21088U, 0U, 0U, (unsigned long )(& iwl6035_2agn_cfg)},
        {32902U,
      2196U, 4294967295U, 34U, 0U, 0U, (unsigned long )(& iwl105_bgn_cfg)},
        {32902U, 2197U, 4294967295U, 546U, 0U, 0U, (unsigned long )(& iwl105_bgn_cfg)},
        {32902U,
      2196U, 4294967295U, 1058U, 0U, 0U, (unsigned long )(& iwl105_bgn_cfg)},
        {32902U, 2196U, 4294967295U, 2082U, 0U, 0U, (unsigned long )(& iwl105_bgn_d_cfg)},
        {32902U,
      2194U, 4294967295U, 98U, 0U, 0U, (unsigned long )(& iwl135_bgn_cfg)},
        {32902U, 2195U, 4294967295U, 610U, 0U, 0U, (unsigned long )(& iwl135_bgn_cfg)},
        {32902U,
      2194U, 4294967295U, 1122U, 0U, 0U, (unsigned long )(& iwl135_bgn_cfg)},
        {32902U, 2225U, 4294967295U, 16496U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U,
      2225U, 4294967295U, 16498U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U, 2225U, 4294967295U, 16752U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U,
      2225U, 4294967295U, 16480U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U, 2225U, 4294967295U, 16490U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U,
      2225U, 4294967295U, 16736U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U, 2225U, 4294967295U, 16482U, 0U, 0U, (unsigned long )(& iwl7260_n_cfg)},
        {32902U,
      2225U, 4294967295U, 16738U, 0U, 0U, (unsigned long )(& iwl7260_n_cfg)},
        {32902U, 2226U, 4294967295U, 17008U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U,
      2226U, 4294967295U, 17010U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U, 2226U, 4294967295U, 16992U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U,
      2226U, 4294967295U, 17002U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U, 2226U, 4294967295U, 16994U, 0U, 0U, (unsigned long )(& iwl7260_n_cfg)},
        {32902U,
      2225U, 4294967295U, 17520U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U, 2225U, 4294967295U, 17522U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U,
      2225U, 4294967295U, 17504U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U, 2225U, 4294967295U, 17514U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U,
      2225U, 4294967295U, 17506U, 0U, 0U, (unsigned long )(& iwl7260_n_cfg)},
        {32902U, 2225U, 4294967295U, 18544U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U,
      2225U, 4294967295U, 18542U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U, 2225U, 4294967295U, 19056U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg_high_temp)},
        {32902U,
      2225U, 4294967295U, 19054U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg_high_temp)},
        {32902U,
      2225U, 4294967295U, 19052U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg_high_temp)},
        {32902U,
      2225U, 4294967295U, 17776U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U, 2225U, 4294967295U, 17760U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U,
      2226U, 4294967295U, 17264U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U, 2226U, 4294967295U, 17248U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U,
      2225U, 4294967295U, 20592U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U, 2225U, 4294967295U, 20594U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U,
      2225U, 4294967295U, 20848U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U, 2225U, 4294967295U, 22384U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U,
      2225U, 4294967295U, 16416U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U, 2225U, 4294967295U, 16426U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U,
      2226U, 4294967295U, 16928U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U, 2225U, 4294967295U, 17440U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U,
      2225U, 4294967295U, 49264U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U, 2225U, 4294967295U, 49266U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U,
      2225U, 4294967295U, 49520U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U, 2225U, 4294967295U, 49248U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U,
      2225U, 4294967295U, 49258U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U, 2225U, 4294967295U, 49504U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U,
      2225U, 4294967295U, 49250U, 0U, 0U, (unsigned long )(& iwl7260_n_cfg)},
        {32902U, 2225U, 4294967295U, 49506U, 0U, 0U, (unsigned long )(& iwl7260_n_cfg)},
        {32902U,
      2225U, 4294967295U, 51056U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U, 2225U, 4294967295U, 51040U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U,
      2226U, 4294967295U, 49776U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U, 2226U, 4294967295U, 49778U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U,
      2226U, 4294967295U, 49760U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U, 2226U, 4294967295U, 49770U, 0U, 0U, (unsigned long )(& iwl7260_n_cfg)},
        {32902U,
      2226U, 4294967295U, 49762U, 0U, 0U, (unsigned long )(& iwl7260_n_cfg)},
        {32902U, 2225U, 4294967295U, 50288U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U,
      2225U, 4294967295U, 50290U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U, 2225U, 4294967295U, 50272U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U,
      2225U, 4294967295U, 50274U, 0U, 0U, (unsigned long )(& iwl7260_n_cfg)},
        {32902U, 2225U, 4294967295U, 50544U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U,
      2225U, 4294967295U, 50528U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U, 2226U, 4294967295U, 50032U, 0U, 0U, (unsigned long )(& iwl7260_2ac_cfg)},
        {32902U,
      2225U, 4294967295U, 50016U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U, 2225U, 4294967295U, 49184U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U,
      2225U, 4294967295U, 49194U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U, 2226U, 4294967295U, 49696U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U,
      2225U, 4294967295U, 50208U, 0U, 0U, (unsigned long )(& iwl7260_2n_cfg)},
        {32902U, 2227U, 4294967295U, 112U, 0U, 0U, (unsigned long )(& iwl3160_2ac_cfg)},
        {32902U,
      2227U, 4294967295U, 114U, 0U, 0U, (unsigned long )(& iwl3160_2ac_cfg)},
        {32902U, 2227U, 4294967295U, 368U, 0U, 0U, (unsigned long )(& iwl3160_2ac_cfg)},
        {32902U,
      2227U, 4294967295U, 370U, 0U, 0U, (unsigned long )(& iwl3160_2ac_cfg)},
        {32902U, 2227U, 4294967295U, 96U, 0U, 0U, (unsigned long )(& iwl3160_2n_cfg)},
        {32902U,
      2227U, 4294967295U, 98U, 0U, 0U, (unsigned long )(& iwl3160_n_cfg)},
        {32902U, 2228U, 4294967295U, 624U, 0U, 0U, (unsigned long )(& iwl3160_2ac_cfg)},
        {32902U,
      2228U, 4294967295U, 626U, 0U, 0U, (unsigned long )(& iwl3160_2ac_cfg)},
        {32902U, 2227U, 4294967295U, 1136U, 0U, 0U, (unsigned long )(& iwl3160_2ac_cfg)},
        {32902U,
      2227U, 4294967295U, 1138U, 0U, 0U, (unsigned long )(& iwl3160_2ac_cfg)},
        {32902U, 2228U, 4294967295U, 880U, 0U, 0U, (unsigned long )(& iwl3160_2ac_cfg)},
        {32902U,
      2227U, 4294967295U, 32880U, 0U, 0U, (unsigned long )(& iwl3160_2ac_cfg)},
        {32902U, 2227U, 4294967295U, 32882U, 0U, 0U, (unsigned long )(& iwl3160_2ac_cfg)},
        {32902U,
      2227U, 4294967295U, 33136U, 0U, 0U, (unsigned long )(& iwl3160_2ac_cfg)},
        {32902U, 2227U, 4294967295U, 33138U, 0U, 0U, (unsigned long )(& iwl3160_2ac_cfg)},
        {32902U,
      2227U, 4294967295U, 32864U, 0U, 0U, (unsigned long )(& iwl3160_2n_cfg)},
        {32902U, 2227U, 4294967295U, 32866U, 0U, 0U, (unsigned long )(& iwl3160_n_cfg)},
        {32902U,
      2228U, 4294967295U, 33392U, 0U, 0U, (unsigned long )(& iwl3160_2ac_cfg)},
        {32902U, 2227U, 4294967295U, 33904U, 0U, 0U, (unsigned long )(& iwl3160_2ac_cfg)},
        {32902U,
      2227U, 4294967295U, 34160U, 0U, 0U, (unsigned long )(& iwl3160_2ac_cfg)},
        {32902U, 2227U, 4294967295U, 4208U, 0U, 0U, (unsigned long )(& iwl3160_2ac_cfg)},
        {32902U,
      2227U, 4294967295U, 4464U, 0U, 0U, (unsigned long )(& iwl3160_2ac_cfg)},
        {32902U, 2394U, 4294967295U, 20496U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U,
      2394U, 4294967295U, 20752U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U, 2394U, 4294967295U, 20736U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U,
      2395U, 4294967295U, 21264U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U, 2395U, 4294967295U, 21250U, 0U, 0U, (unsigned long )(& iwl7265_n_cfg)},
        {32902U,
      2395U, 4294967295U, 21008U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U, 2394U, 4294967295U, 20498U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U,
      2394U, 4294967295U, 21522U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U, 2394U, 4294967295U, 21520U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U,
      2394U, 4294967295U, 21504U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U, 2394U, 4294967295U, 4112U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U,
      2394U, 4294967295U, 20480U, 0U, 0U, (unsigned long )(& iwl7265_2n_cfg)},
        {32902U, 2394U, 4294967295U, 20490U, 0U, 0U, (unsigned long )(& iwl7265_2n_cfg)},
        {32902U,
      2395U, 4294967295U, 20992U, 0U, 0U, (unsigned long )(& iwl7265_2n_cfg)},
        {32902U, 2394U, 4294967295U, 20482U, 0U, 0U, (unsigned long )(& iwl7265_n_cfg)},
        {32902U,
      2394U, 4294967295U, 20738U, 0U, 0U, (unsigned long )(& iwl7265_n_cfg)},
        {32902U, 2395U, 4294967295U, 20994U, 0U, 0U, (unsigned long )(& iwl7265_n_cfg)},
        {32902U,
      2394U, 4294967295U, 36880U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U, 2394U, 4294967295U, 36882U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U,
      2394U, 4294967295U, 37136U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U, 2394U, 4294967295U, 37138U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U,
      2394U, 4294967295U, 37392U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U, 2394U, 4294967295U, 37376U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U,
      2394U, 4294967295U, 38160U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U, 2394U, 4294967295U, 37648U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U,
      2394U, 4294967295U, 37904U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U, 2394U, 4294967295U, 20512U, 0U, 0U, (unsigned long )(& iwl7265_2n_cfg)},
        {32902U,
      2394U, 4294967295U, 20522U, 0U, 0U, (unsigned long )(& iwl7265_2n_cfg)},
        {32902U, 2394U, 4294967295U, 21536U, 0U, 0U, (unsigned long )(& iwl7265_2n_cfg)},
        {32902U,
      2394U, 4294967295U, 20624U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U, 2394U, 4294967295U, 20880U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U,
      2394U, 4294967295U, 21904U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U, 2395U, 4294967295U, 21136U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U,
      2394U, 4294967295U, 21648U, 0U, 0U, (unsigned long )(& iwl7265_2ac_cfg)},
        {32902U, 9459U, 4294967295U, 16U, 0U, 0U, (unsigned long )(& iwl8260_2ac_cfg)},
        {32902U,
      9460U, 4294967295U, 48U, 0U, 0U, (unsigned long )(& iwl8260_2ac_cfg)},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__iwl_hw_card_ids_device_table ;
static u64 splx_get_pwr_limit(struct iwl_trans *trans , union acpi_object *splx )
{
  union acpi_object *limits ;
  union acpi_object *domain_type ;
  union acpi_object *power_limit ;
  {
  if (((splx->type != 4U || splx->package.count != 2U) || (splx->package.elements)->type != 1U) || (splx->package.elements)->integer.value != 0ULL) {
    __iwl_err(trans->dev, 0, 0, "Unsupported splx structure\n");
    return (0ULL);
  } else {
  }
  limits = splx->package.elements + 1UL;
  if (((limits->type != 4U || limits->package.count <= 1U) || (limits->package.elements)->type != 1U) || (limits->package.elements + 1UL)->type != 1U) {
    __iwl_err(trans->dev, 0, 0, "Invalid limits element\n");
    return (0ULL);
  } else {
  }
  domain_type = limits->package.elements;
  power_limit = limits->package.elements + 1UL;
  if ((domain_type->integer.value & 2ULL) == 0ULL) {
    __iwl_dbg(trans->dev, 1U, 0, "splx_get_pwr_limit", "WiFi power is not limited\n");
    return (0ULL);
  } else {
  }
  return (power_limit->integer.value);
}
}
static void set_dflt_pwr_limit(struct iwl_trans *trans , struct pci_dev *pdev )
{
  acpi_handle pxsx_handle ;
  acpi_handle handle ;
  struct acpi_buffer splx ;
  acpi_status status ;
  {
  splx.length = 0xffffffffffffffffULL;
  splx.pointer = (void *)0;
  pxsx_handle = acpi_device_handle(pdev->dev.acpi_node.companion);
  if ((unsigned long )pxsx_handle == (unsigned long )((acpi_handle )0)) {
    __iwl_dbg(trans->dev, 1U, 0, "set_dflt_pwr_limit", "Could not retrieve root port ACPI handle\n");
    return;
  } else {
  }
  status = acpi_get_handle(pxsx_handle, (char *)"SPLC", & handle);
  if (status != 0U) {
    __iwl_dbg(trans->dev, 1U, 0, "set_dflt_pwr_limit", "SPL method not found\n");
    return;
  } else {
  }
  status = acpi_evaluate_object(handle, (acpi_string )0, (struct acpi_object_list *)0,
                                & splx);
  if (status != 0U) {
    __iwl_err(trans->dev, 0, 0, "SPLC invocation failed (0x%x)\n", status);
    return;
  } else {
  }
  trans->dflt_pwr_limit = splx_get_pwr_limit(trans, (union acpi_object *)splx.pointer);
  __iwl_dbg(trans->dev, 1U, 0, "set_dflt_pwr_limit", "Default power limit set to %lld\n",
            trans->dflt_pwr_limit);
  kfree((void const *)splx.pointer);
  return;
}
}
static int iwl_pci_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  struct iwl_cfg const *cfg ;
  struct iwl_trans *iwl_trans ;
  struct iwl_trans_pcie *trans_pcie ;
  int ret ;
  long tmp ;
  bool tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  {
  cfg = (struct iwl_cfg const *)ent->driver_data;
  iwl_trans = iwl_trans_pcie_alloc(pdev, ent, cfg);
  tmp___0 = IS_ERR((void const *)iwl_trans);
  if ((int )tmp___0) {
    tmp = PTR_ERR((void const *)iwl_trans);
    return ((int )tmp);
  } else {
  }
  pci_set_drvdata(pdev, (void *)iwl_trans);
  trans_pcie = (struct iwl_trans_pcie *)(& iwl_trans->trans_specific);
  trans_pcie->drv = iwl_drv_start(iwl_trans, cfg);
  tmp___2 = IS_ERR((void const *)trans_pcie->drv);
  if ((int )tmp___2) {
    tmp___1 = PTR_ERR((void const *)trans_pcie->drv);
    ret = (int )tmp___1;
    goto out_free_trans;
  } else {
  }
  set_dflt_pwr_limit(iwl_trans, pdev);
  ret = iwl_trans_dbgfs_register(iwl_trans, iwl_trans->dbgfs_dir);
  if (ret != 0) {
    goto out_free_drv;
  } else {
  }
  return (0);
  out_free_drv:
  iwl_drv_stop(trans_pcie->drv);
  out_free_trans:
  iwl_trans_pcie_free(iwl_trans);
  return (ret);
}
}
static void iwl_pci_remove(struct pci_dev *pdev )
{
  struct iwl_trans *trans ;
  void *tmp ;
  struct iwl_trans_pcie *trans_pcie ;
  {
  tmp = pci_get_drvdata(pdev);
  trans = (struct iwl_trans *)tmp;
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  iwl_drv_stop(trans_pcie->drv);
  iwl_trans_pcie_free(trans);
  return;
}
}
static int iwl_pci_suspend(struct device *device )
{
  {
  return (0);
}
}
static int iwl_pci_resume(struct device *device )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct iwl_trans *trans ;
  void *tmp ;
  bool hw_rfkill ;
  {
  __mptr = (struct device const *)device;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  trans = (struct iwl_trans *)tmp;
  pci_write_config_byte((struct pci_dev const *)pdev, 65, 0);
  if ((unsigned long )trans->op_mode == (unsigned long )((struct iwl_op_mode *)0)) {
    return (0);
  } else {
  }
  iwl_enable_rfkill_int(trans);
  hw_rfkill = iwl_is_rfkill_set(trans);
  iwl_trans_pcie_rf_kill(trans, (int )hw_rfkill);
  return (0);
}
}
static struct dev_pm_ops const iwl_dev_pm_ops =
     {0, 0, & iwl_pci_suspend, & iwl_pci_resume, & iwl_pci_suspend, & iwl_pci_resume,
    & iwl_pci_suspend, & iwl_pci_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0};
static struct pci_driver iwl_pci_driver =
     {{0, 0}, "iwlwifi", (struct pci_device_id const *)(& iwl_hw_card_ids), & iwl_pci_probe,
    & iwl_pci_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0,
                                            0, 0, & iwl_dev_pm_ops, 0}, {{{{{{0U}},
                                                                            0U, 0U,
                                                                            0, {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
                                                                         {0, 0}}};
int iwl_pci_register_driver(void)
{
  int ret ;
  {
  ret = __pci_register_driver(& iwl_pci_driver, & __this_module, "iwlwifi");
  if (ret != 0) {
    printk("\viwlwifi: Unable to initialize PCI module\n");
  } else {
  }
  return (ret);
}
}
void iwl_pci_unregister_driver(void)
{
  {
  pci_unregister_driver(& iwl_pci_driver);
  return;
}
}
int ldv_retval_20 ;
int ldv_retval_19 ;
extern int ldv_restore_noirq_47(void) ;
extern int ldv_freeze_noirq_47(void) ;
int ldv_retval_14 ;
int ldv_retval_18 ;
int ldv_retval_17 ;
extern int ldv_freeze_late_47(void) ;
extern int ldv_resume_noirq_47(void) ;
int ldv_retval_12 ;
int ldv_retval_5 ;
int ldv_retval_23 ;
int ldv_retval_11 ;
extern int ldv_prepare_47(void) ;
int ldv_retval_25 ;
int ldv_retval_22 ;
int ldv_retval_15 ;
extern int ldv_poweroff_noirq_47(void) ;
extern int ldv_suspend_late_47(void) ;
int ldv_retval_21 ;
int ldv_retval_16 ;
int ldv_retval_13 ;
extern int ldv_thaw_noirq_47(void) ;
int ldv_retval_10 ;
extern int ldv_poweroff_late_47(void) ;
extern int ldv_restore_early_47(void) ;
int ldv_retval_9 ;
int ldv_retval_24 ;
extern int ldv_thaw_early_47(void) ;
extern int ldv_suspend_noirq_47(void) ;
extern int ldv_complete_47(void) ;
extern int ldv_resume_early_47(void) ;
int ldv_retval_8 ;
int ldv_retval_7 ;
void ldv_dev_pm_ops_47(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1416UL);
  iwl_dev_pm_ops_group1 = (struct device *)tmp;
  return;
}
}
void ldv_initialize_pci_driver_46(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(2976UL);
  iwl_pci_driver_group0 = (struct pci_dev *)tmp;
  return;
}
}
void ldv_main_exported_46(void)
{
  struct pci_device_id *ldvarg107 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(32UL);
  ldvarg107 = (struct pci_device_id *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_46 == 1) {
    ldv_retval_5 = iwl_pci_probe(iwl_pci_driver_group0, (struct pci_device_id const *)ldvarg107);
    if (ldv_retval_5 == 0) {
      ldv_state_variable_46 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_54345;
  case 1: ;
  if (ldv_state_variable_46 == 2) {
    iwl_pci_remove(iwl_pci_driver_group0);
    ldv_state_variable_46 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_54345;
  default:
  ldv_stop();
  }
  ldv_54345: ;
  return;
}
}
void ldv_main_exported_47(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_47 == 12) {
    ldv_retval_25 = iwl_pci_resume(iwl_dev_pm_ops_group1);
    if (ldv_retval_25 == 0) {
      ldv_state_variable_47 = 15;
    } else {
    }
  } else {
  }
  goto ldv_54352;
  case 1: ;
  if (ldv_state_variable_47 == 13) {
    ldv_retval_24 = iwl_pci_resume(iwl_dev_pm_ops_group1);
    if (ldv_retval_24 == 0) {
      ldv_state_variable_47 = 15;
    } else {
    }
  } else {
  }
  goto ldv_54352;
  case 2: ;
  if (ldv_state_variable_47 == 2) {
    ldv_retval_23 = iwl_pci_suspend(iwl_dev_pm_ops_group1);
    if (ldv_retval_23 == 0) {
      ldv_state_variable_47 = 3;
    } else {
    }
  } else {
  }
  goto ldv_54352;
  case 3: ;
  if (ldv_state_variable_47 == 2) {
    ldv_retval_22 = iwl_pci_suspend(iwl_dev_pm_ops_group1);
    if (ldv_retval_22 == 0) {
      ldv_state_variable_47 = 4;
    } else {
    }
  } else {
  }
  goto ldv_54352;
  case 4: ;
  if (ldv_state_variable_47 == 2) {
    ldv_retval_21 = iwl_pci_suspend(iwl_dev_pm_ops_group1);
    if (ldv_retval_21 == 0) {
      ldv_state_variable_47 = 5;
    } else {
    }
  } else {
  }
  goto ldv_54352;
  case 5: ;
  if (ldv_state_variable_47 == 14) {
    ldv_retval_20 = iwl_pci_resume(iwl_dev_pm_ops_group1);
    if (ldv_retval_20 == 0) {
      ldv_state_variable_47 = 15;
    } else {
    }
  } else {
  }
  goto ldv_54352;
  case 6: ;
  if (ldv_state_variable_47 == 5) {
    ldv_retval_19 = ldv_suspend_late_47();
    if (ldv_retval_19 == 0) {
      ldv_state_variable_47 = 10;
    } else {
    }
  } else {
  }
  goto ldv_54352;
  case 7: ;
  if (ldv_state_variable_47 == 7) {
    ldv_retval_18 = ldv_restore_early_47();
    if (ldv_retval_18 == 0) {
      ldv_state_variable_47 = 12;
    } else {
    }
  } else {
  }
  goto ldv_54352;
  case 8: ;
  if (ldv_state_variable_47 == 10) {
    ldv_retval_17 = ldv_resume_early_47();
    if (ldv_retval_17 == 0) {
      ldv_state_variable_47 = 14;
    } else {
    }
  } else {
  }
  goto ldv_54352;
  case 9: ;
  if (ldv_state_variable_47 == 9) {
    ldv_retval_16 = ldv_thaw_early_47();
    if (ldv_retval_16 == 0) {
      ldv_state_variable_47 = 13;
    } else {
    }
  } else {
  }
  goto ldv_54352;
  case 10: ;
  if (ldv_state_variable_47 == 11) {
    ldv_retval_15 = ldv_resume_noirq_47();
    if (ldv_retval_15 == 0) {
      ldv_state_variable_47 = 14;
    } else {
    }
  } else {
  }
  goto ldv_54352;
  case 11: ;
  if (ldv_state_variable_47 == 4) {
    ldv_retval_14 = ldv_freeze_noirq_47();
    if (ldv_retval_14 == 0) {
      ldv_state_variable_47 = 8;
    } else {
    }
  } else {
  }
  goto ldv_54352;
  case 12: ;
  if (ldv_state_variable_47 == 1) {
    ldv_retval_13 = ldv_prepare_47();
    if (ldv_retval_13 == 0) {
      ldv_state_variable_47 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_54352;
  case 13: ;
  if (ldv_state_variable_47 == 4) {
    ldv_retval_12 = ldv_freeze_late_47();
    if (ldv_retval_12 == 0) {
      ldv_state_variable_47 = 9;
    } else {
    }
  } else {
  }
  goto ldv_54352;
  case 14: ;
  if (ldv_state_variable_47 == 8) {
    ldv_retval_11 = ldv_thaw_noirq_47();
    if (ldv_retval_11 == 0) {
      ldv_state_variable_47 = 13;
    } else {
    }
  } else {
  }
  goto ldv_54352;
  case 15: ;
  if (ldv_state_variable_47 == 3) {
    ldv_retval_10 = ldv_poweroff_noirq_47();
    if (ldv_retval_10 == 0) {
      ldv_state_variable_47 = 6;
    } else {
    }
  } else {
  }
  goto ldv_54352;
  case 16: ;
  if (ldv_state_variable_47 == 3) {
    ldv_retval_9 = ldv_poweroff_late_47();
    if (ldv_retval_9 == 0) {
      ldv_state_variable_47 = 7;
    } else {
    }
  } else {
  }
  goto ldv_54352;
  case 17: ;
  if (ldv_state_variable_47 == 6) {
    ldv_retval_8 = ldv_restore_noirq_47();
    if (ldv_retval_8 == 0) {
      ldv_state_variable_47 = 12;
    } else {
    }
  } else {
  }
  goto ldv_54352;
  case 18: ;
  if (ldv_state_variable_47 == 5) {
    ldv_retval_7 = ldv_suspend_noirq_47();
    if (ldv_retval_7 == 0) {
      ldv_state_variable_47 = 11;
    } else {
    }
  } else {
  }
  goto ldv_54352;
  case 19: ;
  if (ldv_state_variable_47 == 15) {
    ldv_complete_47();
    ldv_state_variable_47 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_54352;
  default:
  ldv_stop();
  }
  ldv_54352: ;
  return;
}
}
int ldv_pskb_expand_head_392(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_394(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_396(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_397(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_398(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_399(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_400(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_401(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_request_threaded_irq_402(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_threaded_irq(ldv_func_arg1, handler, thread_fn, ldv_func_arg4, ldv_func_arg5,
                             ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg6);
  } else {
  }
  return (ldv_func_res);
}
}
struct sk_buff *ldv_skb_clone_403(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
extern void __local_bh_disable_ip(unsigned long , unsigned int ) ;
__inline static void local_bh_disable(void)
{
  {
  __local_bh_disable_ip((unsigned long )((void *)0), 512U);
  return;
}
}
extern void __local_bh_enable_ip(unsigned long , unsigned int ) ;
__inline static void local_bh_enable(void)
{
  {
  __local_bh_enable_ip((unsigned long )((void *)0), 512U);
  return;
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work_on(8192, wq, work);
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
extern struct page *alloc_pages_current(gfp_t , unsigned int ) ;
__inline static struct page *ldv_alloc_pages_427(gfp_t gfp_mask , unsigned int order )
{
  struct page *tmp ;
  {
  tmp = alloc_pages_current(gfp_mask, order);
  return (tmp);
}
}
__inline static struct page *alloc_pages(gfp_t flags , unsigned int order ) ;
extern void __free_pages(struct page * , unsigned int ) ;
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
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
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
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
    ldv_25658: ;
    goto ldv_25658;
  } else {
  }
  addr = (*(ops->map_page))(dev, page, offset, size, dir, (struct dma_attrs *)0);
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
    ldv_25666: ;
    goto ldv_25666;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, (struct dma_attrs *)0);
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
__inline static void *ldv_dma_zalloc_coherent_435(struct device *dev , size_t size ,
                                                  dma_addr_t *dma_handle , gfp_t flag )
{
  void *ret ;
  void *tmp ;
  {
  tmp = dma_alloc_attrs(dev, size, dma_handle, flag | 32768U, (struct dma_attrs *)0);
  ret = tmp;
  return (ret);
}
}
__inline static void *dma_zalloc_coherent(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                          gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_440(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_449(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_442(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_438(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_446(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_447(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_443(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_444(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_445(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
int ldv_request_threaded_irq_448(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 ) ;
extern void napi_gro_flush(struct napi_struct * , bool ) ;
__inline static int iwl_op_mode_rx(struct iwl_op_mode *op_mode , struct iwl_rx_cmd_buffer *rxb ,
                                   struct iwl_device_cmd *cmd )
{
  int tmp ;
  {
  tmp = (*((op_mode->ops)->rx))(op_mode, rxb, cmd);
  return (tmp);
}
}
__inline static void iwl_op_mode_nic_error(struct iwl_op_mode *op_mode )
{
  {
  (*((op_mode->ops)->nic_error))(op_mode);
  return;
}
}
__inline static void iwl_op_mode_wimax_active(struct iwl_op_mode *op_mode )
{
  {
  __might_sleep("drivers/net/wireless/iwlwifi/iwl-op-mode.h", 238, 0);
  (*((op_mode->ops)->wimax_active))(op_mode);
  return;
}
}
__inline static u32 iwl_rx_packet_len(struct iwl_rx_packet const *pkt )
{
  {
  return ((u32 )pkt->len_n_flags & 16383U);
}
}
__inline static void *rxb_addr(struct iwl_rx_cmd_buffer *r )
{
  void *tmp ;
  {
  tmp = lowmem_page_address((struct page const *)r->_page);
  return ((void *)((unsigned long )tmp + (unsigned long )r->_offset));
}
}
__inline static void iwl_trans_write8(struct iwl_trans *trans , u32 ofs , u8 val )
{
  {
  (*((trans->ops)->write8))(trans, ofs, (int )val);
  return;
}
}
__inline static void iwl_trans_fw_error(struct iwl_trans *trans )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  {
  __ret_warn_once = (unsigned long )trans->op_mode == (unsigned long )((struct iwl_op_mode *)0);
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("drivers/net/wireless/iwlwifi/iwl-trans.h", 892);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    return;
  } else {
  }
  tmp___3 = test_and_set_bit(5L, (unsigned long volatile *)(& trans->status));
  if (tmp___3 == 0) {
    iwl_op_mode_nic_error(trans->op_mode);
  } else {
  }
  return;
}
}
__inline static void trace_iwlwifi_dev_ioread32___2(struct device const *dev , u32 offs ,
                                                    u32 val )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_ioread32.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_ioread32.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 101,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_47803:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , u32 , u32 ))it_func))(__data,
                                                                              dev,
                                                                              offs,
                                                                              val);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_47803;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
struct tracepoint __tracepoint_iwlwifi_dev_iowrite8 ;
__inline static void trace_iwlwifi_dev_iowrite8(struct device const *dev , u32 offs ,
                                                u8 val )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_iowrite8.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_iowrite8.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 118,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_47847:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , u32 , u8 ))it_func))(__data,
                                                                             dev,
                                                                             offs,
                                                                             (int )val);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_47847;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
__inline static void trace_iwlwifi_dev_iowrite32___2(struct device const *dev ,
                                                     u32 offs , u32 val )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_iowrite32.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_iowrite32.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 135,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_47891:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , u32 , u32 ))it_func))(__data,
                                                                              dev,
                                                                              offs,
                                                                              val);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_47891;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
struct tracepoint __tracepoint_iwlwifi_dev_irq ;
__inline static void trace_iwlwifi_dev_irq(struct device const *dev )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_irq.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_irq.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 182,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_48019:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * ))it_func))(__data, dev);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_48019;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
struct tracepoint __tracepoint_iwlwifi_dev_ict_read ;
__inline static void trace_iwlwifi_dev_ict_read(struct device const *dev , u32 index ,
                                                u32 value )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_ict_read.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_ict_read.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 199,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_48057:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , u32 , u32 ))it_func))(__data,
                                                                              dev,
                                                                              index,
                                                                              value);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_48057;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
struct tracepoint __tracepoint_iwlwifi_dev_rx_data ;
__inline static void trace_iwlwifi_dev_rx_data(struct device const *dev , struct iwl_trans const *trans ,
                                               void *rxbuf , size_t len )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_rx_data.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_rx_data.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 345,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_48435:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , struct iwl_trans const * ,
                   void * , size_t ))it_func))(__data, dev, trans, rxbuf, len);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_48435;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
struct tracepoint __tracepoint_iwlwifi_dev_rx ;
__inline static void trace_iwlwifi_dev_rx(struct device const *dev , struct iwl_trans const *trans ,
                                          void *rxbuf , size_t len )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_rx.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_rx.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 395,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_48533:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , struct iwl_trans const * ,
                   void * , size_t ))it_func))(__data, dev, trans, rxbuf, len);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_48533;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
__inline static void iwl_write8(struct iwl_trans *trans , u32 ofs , u8 val )
{
  {
  trace_iwlwifi_dev_iowrite8((struct device const *)trans->dev, ofs, (int )val);
  iwl_trans_write8(trans, ofs, (int )val);
  return;
}
}
__inline static void iwl_write32___2(struct iwl_trans *trans , u32 ofs , u32 val )
{
  {
  trace_iwlwifi_dev_iowrite32___2((struct device const *)trans->dev, ofs, val);
  iwl_trans_write32(trans, ofs, val);
  return;
}
}
__inline static u32 iwl_read32___2(struct iwl_trans *trans , u32 ofs )
{
  u32 val ;
  u32 tmp ;
  {
  tmp = iwl_trans_read32(trans, ofs);
  val = tmp;
  trace_iwlwifi_dev_ioread32___2((struct device const *)trans->dev, ofs, val);
  return (val);
}
}
int iwl_pcie_rx_init(struct iwl_trans *trans ) ;
irqreturn_t iwl_pcie_irq_handler(int irq , void *dev_id ) ;
int iwl_pcie_rx_stop(struct iwl_trans *trans ) ;
void iwl_pcie_rx_free(struct iwl_trans *trans ) ;
irqreturn_t iwl_pcie_isr(int irq , void *data ) ;
int iwl_pcie_alloc_ict(struct iwl_trans *trans ) ;
void iwl_pcie_free_ict(struct iwl_trans *trans ) ;
void iwl_pcie_reset_ict(struct iwl_trans *trans ) ;
void iwl_pcie_disable_ict(struct iwl_trans *trans ) ;
void iwl_pcie_txq_check_wrptrs(struct iwl_trans *trans ) ;
void iwl_pcie_hcmd_complete(struct iwl_trans *trans , struct iwl_rx_cmd_buffer *rxb ,
                            int handler_status ) ;
void iwl_pcie_dump_csr(struct iwl_trans *trans ) ;
__inline static void iwl_disable_interrupts(struct iwl_trans *trans )
{
  {
  clear_bit(3L, (unsigned long volatile *)(& trans->status));
  iwl_write32___2(trans, 12U, 0U);
  iwl_write32___2(trans, 8U, 4294967295U);
  iwl_write32___2(trans, 16U, 4294967295U);
  __iwl_dbg(trans->dev, 33554432U, 0, "iwl_disable_interrupts", "Disabled interrupts\n");
  return;
}
}
__inline static void iwl_enable_interrupts(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  __iwl_dbg(trans->dev, 33554432U, 0, "iwl_enable_interrupts", "Enabling interrupts\n");
  set_bit(3L, (unsigned long volatile *)(& trans->status));
  trans_pcie->inta_mask = 3120562315U;
  iwl_write32___2(trans, 12U, trans_pcie->inta_mask);
  return;
}
}
__inline static void iwl_enable_rfkill_int___0(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  __iwl_dbg(trans->dev, 33554432U, 0, "iwl_enable_rfkill_int", "Enabling rfkill interrupt\n");
  trans_pcie->inta_mask = 128U;
  iwl_write32___2(trans, 12U, trans_pcie->inta_mask);
  return;
}
}
__inline static u8 get_cmd_index(struct iwl_queue *q , u32 index )
{
  {
  return (((unsigned int )((u8 )q->n_window) + 255U) & (unsigned int )((u8 )index));
}
}
__inline static char const *get_cmd_string(struct iwl_trans_pcie *trans_pcie , u8 cmd )
{
  {
  if ((unsigned long )trans_pcie->command_names == (unsigned long )((char const * const *)0) || (unsigned long )*(trans_pcie->command_names + (unsigned long )cmd) == (unsigned long )((char const * )0)) {
    return ("UNKNOWN");
  } else {
  }
  return ((char const *)*(trans_pcie->command_names + (unsigned long )cmd));
}
}
__inline static bool iwl_is_rfkill_set___0(struct iwl_trans *trans )
{
  u32 tmp ;
  {
  tmp = iwl_read32___2(trans, 36U);
  return ((tmp & 134217728U) == 0U);
}
}
static int iwl_rxq_space(struct iwl_rxq const *rxq )
{
  {
  return ((int )(((unsigned int )rxq->read - (unsigned int )rxq->write) - 1U) & 255);
}
}
__inline static __le32 iwl_pcie_dma_addr2rbd_ptr(dma_addr_t dma_addr )
{
  {
  return ((__le32 )(dma_addr >> 8));
}
}
int iwl_pcie_rx_stop(struct iwl_trans *trans )
{
  int tmp ;
  {
  iwl_write_direct32(trans, 7168U, 0U);
  tmp = iwl_poll_direct_bit(trans, 7236U, 16777216U, 1000);
  return (tmp);
}
}
static void iwl_pcie_rxq_inc_wr_ptr(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_rxq *rxq ;
  u32 reg ;
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  rxq = & trans_pcie->rxq;
  if (debug_locks != 0) {
    tmp = lock_is_held(& rxq->lock.ldv_6347.ldv_6346.dep_map);
    if (tmp == 0) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  __ret_warn_on = tmp___0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/rx.o.c.prepared",
                       331);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (! ((_Bool )((trans->cfg)->base_params)->shadow_reg_enable)) {
    tmp___2 = constant_test_bit(2L, (unsigned long const volatile *)(& trans->status));
    if (tmp___2 != 0) {
      reg = iwl_read32___2(trans, 84U);
      if ((int )reg & 1) {
        __iwl_dbg(trans->dev, 1U, 0, "iwl_pcie_rxq_inc_wr_ptr", "Rx queue requesting wakeup, GP1 = 0x%x\n",
                  reg);
        iwl_set_bit(trans, 36U, 8U);
        rxq->need_update = 1;
        return;
      } else {
      }
    } else {
    }
  } else {
  }
  rxq->write_actual = rxq->write & 4294967288U;
  iwl_write32___2(trans, 7112U, rxq->write_actual);
  return;
}
}
static void iwl_pcie_rxq_check_wrptr(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_rxq *rxq ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  rxq = & trans_pcie->rxq;
  spin_lock(& rxq->lock);
  if (! rxq->need_update) {
    goto exit_unlock;
  } else {
  }
  iwl_pcie_rxq_inc_wr_ptr(trans);
  rxq->need_update = 0;
  exit_unlock:
  spin_unlock(& rxq->lock);
  return;
}
}
static void iwl_pcie_rxq_restock(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_rxq *rxq ;
  struct iwl_rx_mem_buffer *rxb ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  struct list_head const *__mptr ;
  int tmp___2 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  rxq = & trans_pcie->rxq;
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& trans->status));
  if (tmp == 0) {
    return;
  } else {
  }
  spin_lock(& rxq->lock);
  goto ldv_51006;
  ldv_51005:
  rxb = rxq->queue[rxq->write];
  tmp___0 = ldv__builtin_expect((unsigned long )rxb != (unsigned long )((struct iwl_rx_mem_buffer *)0),
                             0L);
  if (tmp___0 != 0L) {
    tmp___1 = ldv__builtin_expect((unsigned long )rxb->page != (unsigned long )((struct page *)0),
                               0L);
    if (tmp___1 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/rx.o.c.prepared"),
                           "i" (405), "i" (12UL));
      ldv_51002: ;
      goto ldv_51002;
    } else {
    }
  } else {
  }
  __mptr = (struct list_head const *)rxq->rx_free.next;
  rxb = (struct iwl_rx_mem_buffer *)__mptr + 0xfffffffffffffff0UL;
  list_del(& rxb->list);
  *(rxq->bd + (unsigned long )rxq->write) = iwl_pcie_dma_addr2rbd_ptr(rxb->page_dma);
  rxq->queue[rxq->write] = rxb;
  rxq->write = (rxq->write + 1U) & 255U;
  rxq->free_count = rxq->free_count - 1U;
  ldv_51006:
  tmp___2 = iwl_rxq_space((struct iwl_rxq const *)rxq);
  if (tmp___2 > 0 && rxq->free_count != 0U) {
    goto ldv_51005;
  } else {
  }
  spin_unlock(& rxq->lock);
  if (rxq->free_count <= 8U) {
    schedule_work(& trans_pcie->rx_replenish);
  } else {
  }
  if (rxq->write_actual != (rxq->write & 4294967288U)) {
    spin_lock(& rxq->lock);
    iwl_pcie_rxq_inc_wr_ptr(trans);
    spin_unlock(& rxq->lock);
  } else {
  }
  return;
}
}
static void iwl_pcie_rxq_alloc_rbs(struct iwl_trans *trans , gfp_t priority )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_rxq *rxq ;
  struct iwl_rx_mem_buffer *rxb ;
  struct page *page ;
  gfp_t gfp_mask ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct list_head const *__mptr ;
  long tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  rxq = & trans_pcie->rxq;
  gfp_mask = priority;
  ldv_51023:
  spin_lock(& rxq->lock);
  tmp = list_empty((struct list_head const *)(& rxq->rx_used));
  if (tmp != 0) {
    spin_unlock(& rxq->lock);
    return;
  } else {
  }
  spin_unlock(& rxq->lock);
  if (rxq->free_count > 8U) {
    gfp_mask = gfp_mask | 512U;
  } else {
  }
  if (trans_pcie->rx_page_order != 0U) {
    gfp_mask = gfp_mask | 16384U;
  } else {
  }
  page = alloc_pages(gfp_mask, trans_pcie->rx_page_order);
  if ((unsigned long )page == (unsigned long )((struct page *)0)) {
    tmp___0 = net_ratelimit();
    if (tmp___0 != 0) {
      __iwl_dbg(trans->dev, 1U, 0, "iwl_pcie_rxq_alloc_rbs", "alloc_pages failed, order: %d\n",
                trans_pcie->rx_page_order);
    } else {
    }
    if (rxq->free_count <= 8U) {
      tmp___1 = net_ratelimit();
      if (tmp___1 != 0) {
        __iwl_crit(trans->dev, "Failed to alloc_pages with %s.Only %u free buffers remaining.\n",
                   priority == 32U ? (char *)"GFP_ATOMIC" : (char *)"GFP_KERNEL",
                   rxq->free_count);
      } else {
      }
    } else {
    }
    return;
  } else {
  }
  spin_lock(& rxq->lock);
  tmp___2 = list_empty((struct list_head const *)(& rxq->rx_used));
  if (tmp___2 != 0) {
    spin_unlock(& rxq->lock);
    __free_pages(page, trans_pcie->rx_page_order);
    return;
  } else {
  }
  __mptr = (struct list_head const *)rxq->rx_used.next;
  rxb = (struct iwl_rx_mem_buffer *)__mptr + 0xfffffffffffffff0UL;
  list_del(& rxb->list);
  spin_unlock(& rxq->lock);
  tmp___3 = ldv__builtin_expect((unsigned long )rxb->page != (unsigned long )((struct page *)0),
                             0L);
  if (tmp___3 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/rx.o.c.prepared"),
                         "i" (497), "i" (12UL));
    ldv_51020: ;
    goto ldv_51020;
  } else {
  }
  rxb->page = page;
  rxb->page_dma = dma_map_page(trans->dev, page, 0UL, 4096UL << (int )trans_pcie->rx_page_order,
                               2);
  tmp___4 = dma_mapping_error(trans->dev, rxb->page_dma);
  if (tmp___4 != 0) {
    rxb->page = (struct page *)0;
    spin_lock(& rxq->lock);
    list_add(& rxb->list, & rxq->rx_used);
    spin_unlock(& rxq->lock);
    __free_pages(page, trans_pcie->rx_page_order);
    return;
  } else {
  }
  tmp___5 = ldv__builtin_expect((rxb->page_dma & 0xfffffff000000000ULL) != 0ULL, 0L);
  if (tmp___5 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/rx.o.c.prepared"),
                         "i" (513), "i" (12UL));
    ldv_51021: ;
    goto ldv_51021;
  } else {
  }
  tmp___6 = ldv__builtin_expect((rxb->page_dma & 255ULL) != 0ULL, 0L);
  if (tmp___6 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/rx.o.c.prepared"),
                         "i" (515), "i" (12UL));
    ldv_51022: ;
    goto ldv_51022;
  } else {
  }
  spin_lock(& rxq->lock);
  list_add_tail(& rxb->list, & rxq->rx_free);
  rxq->free_count = rxq->free_count + 1U;
  spin_unlock(& rxq->lock);
  goto ldv_51023;
}
}
static void iwl_pcie_rxq_free_rbs(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_rxq *rxq ;
  int i ;
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  rxq = & trans_pcie->rxq;
  if (debug_locks != 0) {
    tmp = lock_is_held(& rxq->lock.ldv_6347.ldv_6346.dep_map);
    if (tmp == 0) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  __ret_warn_on = tmp___0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/rx.o.c.prepared",
                       532);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  i = 0;
  goto ldv_51034;
  ldv_51033: ;
  if ((unsigned long )rxq->pool[i].page == (unsigned long )((struct page *)0)) {
    goto ldv_51032;
  } else {
  }
  dma_unmap_page(trans->dev, rxq->pool[i].page_dma, 4096UL << (int )trans_pcie->rx_page_order,
                 2);
  __free_pages(rxq->pool[i].page, trans_pcie->rx_page_order);
  rxq->pool[i].page = (struct page *)0;
  ldv_51032:
  i = i + 1;
  ldv_51034: ;
  if (i <= 319) {
    goto ldv_51033;
  } else {
  }
  return;
}
}
static void iwl_pcie_rx_replenish(struct iwl_trans *trans , gfp_t gfp )
{
  {
  iwl_pcie_rxq_alloc_rbs(trans, gfp);
  iwl_pcie_rxq_restock(trans);
  return;
}
}
static void iwl_pcie_rx_replenish_work(struct work_struct *data )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)data;
  trans_pcie = (struct iwl_trans_pcie *)__mptr + 0xffffffffffffcf60UL;
  iwl_pcie_rx_replenish(trans_pcie->trans, 208U);
  return;
}
}
static int iwl_pcie_rx_alloc(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_rxq *rxq ;
  struct device *dev ;
  struct lock_class_key __key ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  rxq = & trans_pcie->rxq;
  dev = trans->dev;
  memset((void *)(& trans_pcie->rxq), 0, 12448UL);
  spinlock_check(& rxq->lock);
  __raw_spin_lock_init(& rxq->lock.ldv_6347.rlock, "&(&rxq->lock)->rlock", & __key);
  __ret_warn_on = (unsigned long )rxq->bd != (unsigned long )((__le32 *)0U) || (unsigned long )rxq->rb_stts != (unsigned long )((struct iwl_rb_status *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/rx.o.c.prepared",
                       578);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    return (-22);
  } else {
  }
  tmp___1 = dma_zalloc_coherent(dev, 1024UL, & rxq->bd_dma, 208U);
  rxq->bd = (__le32 *)tmp___1;
  if ((unsigned long )rxq->bd == (unsigned long )((__le32 *)0U)) {
    goto err_bd;
  } else {
  }
  tmp___2 = dma_zalloc_coherent(dev, 12UL, & rxq->rb_stts_dma, 208U);
  rxq->rb_stts = (struct iwl_rb_status *)tmp___2;
  if ((unsigned long )rxq->rb_stts == (unsigned long )((struct iwl_rb_status *)0)) {
    goto err_rb_stts;
  } else {
  }
  return (0);
  err_rb_stts:
  dma_free_attrs(dev, 1024UL, (void *)rxq->bd, rxq->bd_dma, (struct dma_attrs *)0);
  rxq->bd_dma = 0ULL;
  rxq->bd = (__le32 *)0U;
  err_bd: ;
  return (-12);
}
}
static void iwl_pcie_rx_hw_init(struct iwl_trans *trans , struct iwl_rxq *rxq )
{
  struct iwl_trans_pcie *trans_pcie ;
  u32 rb_size ;
  u32 rfdnlog ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  rfdnlog = 8U;
  if ((int )trans_pcie->rx_buf_size_8k) {
    rb_size = 65536U;
  } else {
    rb_size = 0U;
  }
  iwl_write_direct32(trans, 7168U, 0U);
  iwl_write_direct32(trans, 7176U, 0U);
  iwl_write_direct32(trans, 7184U, 0U);
  iwl_write_direct32(trans, 7116U, 0U);
  iwl_write_direct32(trans, 7112U, 0U);
  iwl_write_direct32(trans, 7108U, (unsigned int )(rxq->bd_dma >> 8));
  iwl_write_direct32(trans, 7104U, (u32 )(rxq->rb_stts_dma >> 4));
  iwl_write_direct32(trans, 7168U, ((rfdnlog << 20) | rb_size) | 2147488020U);
  iwl_write8(trans, 4U, 64);
  if ((int )(trans->cfg)->host_interrupt_operation_mode) {
    iwl_set_bit(trans, 4U, 2147483648U);
  } else {
  }
  return;
}
}
static void iwl_pcie_rx_init_rxb_lists(struct iwl_rxq *rxq )
{
  int i ;
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  if (debug_locks != 0) {
    tmp = lock_is_held(& rxq->lock.ldv_6347.ldv_6346.dep_map);
    if (tmp == 0) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  __ret_warn_on = tmp___0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/rx.o.c.prepared",
                       661);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  INIT_LIST_HEAD(& rxq->rx_free);
  INIT_LIST_HEAD(& rxq->rx_used);
  rxq->free_count = 0U;
  i = 0;
  goto ldv_51071;
  ldv_51070:
  list_add(& rxq->pool[i].list, & rxq->rx_used);
  i = i + 1;
  ldv_51071: ;
  if (i <= 319) {
    goto ldv_51070;
  } else {
  }
  return;
}
}
int iwl_pcie_rx_init(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_rxq *rxq ;
  int i ;
  int err ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  u32 tmp ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  rxq = & trans_pcie->rxq;
  if ((unsigned long )rxq->bd == (unsigned long )((__le32 *)0U)) {
    err = iwl_pcie_rx_alloc(trans);
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  spin_lock(& rxq->lock);
  __init_work(& trans_pcie->rx_replenish, 0);
  __constr_expr_0.counter = 137438953408L;
  trans_pcie->rx_replenish.data = __constr_expr_0;
  lockdep_init_map(& trans_pcie->rx_replenish.lockdep_map, "(&trans_pcie->rx_replenish)",
                   & __key, 0);
  INIT_LIST_HEAD(& trans_pcie->rx_replenish.entry);
  trans_pcie->rx_replenish.func = & iwl_pcie_rx_replenish_work;
  iwl_pcie_rxq_free_rbs(trans);
  iwl_pcie_rx_init_rxb_lists(rxq);
  i = 0;
  goto ldv_51083;
  ldv_51082:
  rxq->queue[i] = (struct iwl_rx_mem_buffer *)0;
  i = i + 1;
  ldv_51083: ;
  if (i <= 255) {
    goto ldv_51082;
  } else {
  }
  tmp = 0U;
  rxq->write = tmp;
  rxq->read = tmp;
  rxq->write_actual = 0U;
  memset((void *)rxq->rb_stts, 0, 12UL);
  spin_unlock(& rxq->lock);
  iwl_pcie_rx_replenish(trans, 208U);
  iwl_pcie_rx_hw_init(trans, rxq);
  spin_lock(& rxq->lock);
  iwl_pcie_rxq_inc_wr_ptr(trans);
  spin_unlock(& rxq->lock);
  return (0);
}
}
void iwl_pcie_rx_free(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_rxq *rxq ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  rxq = & trans_pcie->rxq;
  if ((unsigned long )rxq->bd == (unsigned long )((__le32 *)0U)) {
    __iwl_dbg(trans->dev, 1U, 0, "iwl_pcie_rx_free", "Free NULL rx context\n");
    return;
  } else {
  }
  cancel_work_sync(& trans_pcie->rx_replenish);
  spin_lock(& rxq->lock);
  iwl_pcie_rxq_free_rbs(trans);
  spin_unlock(& rxq->lock);
  dma_free_attrs(trans->dev, 1024UL, (void *)rxq->bd, rxq->bd_dma, (struct dma_attrs *)0);
  rxq->bd_dma = 0ULL;
  rxq->bd = (__le32 *)0U;
  if ((unsigned long )rxq->rb_stts != (unsigned long )((struct iwl_rb_status *)0)) {
    dma_free_attrs(trans->dev, 12UL, (void *)rxq->rb_stts, rxq->rb_stts_dma, (struct dma_attrs *)0);
  } else {
    __iwl_dbg(trans->dev, 1U, 0, "iwl_pcie_rx_free", "Free rxq->rb_stts which is NULL\n");
  }
  rxq->rb_stts_dma = 0ULL;
  rxq->rb_stts = (struct iwl_rb_status *)0;
  return;
}
}
static void iwl_pcie_rx_handle_rb(struct iwl_trans *trans , struct iwl_rx_mem_buffer *rxb )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_rxq *rxq ;
  struct iwl_txq *txq ;
  bool page_stolen ;
  int max_len ;
  u32 offset ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  struct iwl_rx_packet *pkt ;
  struct iwl_device_cmd *cmd ;
  u16 sequence ;
  bool reclaim ;
  int index ;
  int cmd_index ;
  int err ;
  int len ;
  struct iwl_rx_cmd_buffer rxcb ;
  void *tmp___1 ;
  char const *tmp___2 ;
  u32 tmp___3 ;
  int i ;
  u8 tmp___4 ;
  int tmp___5 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  rxq = & trans_pcie->rxq;
  txq = trans_pcie->txq + (unsigned long )trans_pcie->cmd_queue;
  page_stolen = 0;
  max_len = (int )(4096UL << (int )trans_pcie->rx_page_order);
  offset = 0U;
  __ret_warn_on = (unsigned long )rxb == (unsigned long )((struct iwl_rx_mem_buffer *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/rx.o.c.prepared",
                       755);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    return;
  } else {
  }
  dma_unmap_page(trans->dev, rxb->page_dma, (size_t )max_len, 2);
  goto ldv_51119;
  ldv_51118:
  rxcb._page = rxb->page;
  rxcb._offset = (int )offset;
  rxcb._page_stolen = 0;
  rxcb._rx_page_order = trans_pcie->rx_page_order;
  rxcb.truesize = (unsigned int )max_len;
  tmp___1 = rxb_addr(& rxcb);
  pkt = (struct iwl_rx_packet *)tmp___1;
  if (pkt->len_n_flags == 1431633920U) {
    goto ldv_51112;
  } else {
  }
  tmp___2 = get_cmd_string(trans_pcie, (int )pkt->hdr.cmd);
  __iwl_dbg(trans->dev, 16777216U, 0, "iwl_pcie_rx_handle_rb", "cmd at offset %d: %s (0x%.2x)\n",
            rxcb._offset, tmp___2, (int )pkt->hdr.cmd);
  tmp___3 = iwl_rx_packet_len((struct iwl_rx_packet const *)pkt);
  len = (int )tmp___3;
  len = (int )((unsigned int )len + 4U);
  trace_iwlwifi_dev_rx((struct device const *)trans->dev, (struct iwl_trans const *)trans,
                       (void *)pkt, (size_t )len);
  trace_iwlwifi_dev_rx_data((struct device const *)trans->dev, (struct iwl_trans const *)trans,
                            (void *)pkt, (size_t )len);
  reclaim = (int )((short )pkt->hdr.sequence) >= 0;
  if ((int )reclaim) {
    i = 0;
    goto ldv_51117;
    ldv_51116: ;
    if ((int )trans_pcie->no_reclaim_cmds[i] == (int )pkt->hdr.cmd) {
      reclaim = 0;
      goto ldv_51115;
    } else {
    }
    i = i + 1;
    ldv_51117: ;
    if ((int )trans_pcie->n_no_reclaim_cmds > i) {
      goto ldv_51116;
    } else {
    }
    ldv_51115: ;
  } else {
  }
  sequence = pkt->hdr.sequence;
  index = (int )sequence & 255;
  tmp___4 = get_cmd_index(& txq->q, (u32 )index);
  cmd_index = (int )tmp___4;
  if ((int )reclaim) {
    cmd = (txq->entries + (unsigned long )cmd_index)->cmd;
  } else {
    cmd = (struct iwl_device_cmd *)0;
  }
  err = iwl_op_mode_rx(trans->op_mode, & rxcb, cmd);
  if ((int )reclaim) {
    kfree((txq->entries + (unsigned long )cmd_index)->free_buf);
    (txq->entries + (unsigned long )cmd_index)->free_buf = (void const *)0;
  } else {
  }
  if ((int )reclaim) {
    if (! rxcb._page_stolen) {
      iwl_pcie_hcmd_complete(trans, & rxcb, err);
    } else {
      __iwl_warn(trans->dev, "Claim null rxb?\n");
    }
  } else {
  }
  page_stolen = ((int )page_stolen | (int )rxcb._page_stolen) != 0;
  offset = ((u32 )(len + 63) & 4294967232U) + offset;
  ldv_51119: ;
  if ((unsigned long )offset + 8UL < (unsigned long )max_len) {
    goto ldv_51118;
  } else {
  }
  ldv_51112: ;
  if ((int )page_stolen) {
    __free_pages(rxb->page, trans_pcie->rx_page_order);
    rxb->page = (struct page *)0;
  } else {
  }
  if ((unsigned long )rxb->page != (unsigned long )((struct page *)0)) {
    rxb->page_dma = dma_map_page(trans->dev, rxb->page, 0UL, 4096UL << (int )trans_pcie->rx_page_order,
                                 2);
    tmp___5 = dma_mapping_error(trans->dev, rxb->page_dma);
    if (tmp___5 != 0) {
      __free_pages(rxb->page, trans_pcie->rx_page_order);
      rxb->page = (struct page *)0;
      list_add_tail(& rxb->list, & rxq->rx_used);
    } else {
      list_add_tail(& rxb->list, & rxq->rx_free);
      rxq->free_count = rxq->free_count + 1U;
    }
  } else {
    list_add_tail(& rxb->list, & rxq->rx_used);
  }
  return;
}
}
static void iwl_pcie_rx_handle(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_rxq *rxq ;
  u32 r ;
  u32 i ;
  u8 fill_rx ;
  u32 count ;
  int total_empty ;
  struct iwl_rx_mem_buffer *rxb ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  rxq = & trans_pcie->rxq;
  fill_rx = 0U;
  count = 8U;
  restart:
  spin_lock(& rxq->lock);
  r = (u32 )*((__le16 volatile *)(& (rxq->rb_stts)->closed_rb_num)) & 4095U;
  i = rxq->read;
  if (i == r) {
    __iwl_dbg(trans->dev, 16777216U, 0, "iwl_pcie_rx_handle", "HW = SW = %d\n", r);
  } else {
  }
  total_empty = (int )(r - rxq->write_actual);
  if (total_empty < 0) {
    total_empty = total_empty + 256;
  } else {
  }
  if (total_empty > 128) {
    fill_rx = 1U;
  } else {
  }
  goto ldv_51134;
  ldv_51133:
  rxb = rxq->queue[i];
  rxq->queue[i] = (struct iwl_rx_mem_buffer *)0;
  __iwl_dbg(trans->dev, 16777216U, 0, "iwl_pcie_rx_handle", "rxbuf: HW = %d, SW = %d (%p)\n",
            r, i, rxb);
  iwl_pcie_rx_handle_rb(trans, rxb);
  i = (i + 1U) & 255U;
  if ((unsigned int )fill_rx != 0U) {
    count = count + 1U;
    if (count > 7U) {
      rxq->read = i;
      spin_unlock(& rxq->lock);
      iwl_pcie_rx_replenish(trans, 32U);
      count = 0U;
      goto restart;
    } else {
    }
  } else {
  }
  ldv_51134: ;
  if (i != r) {
    goto ldv_51133;
  } else {
  }
  rxq->read = i;
  spin_unlock(& rxq->lock);
  if ((unsigned int )fill_rx != 0U) {
    iwl_pcie_rx_replenish(trans, 32U);
  } else {
    iwl_pcie_rxq_restock(trans);
  }
  if ((unsigned long )trans_pcie->napi.poll != (unsigned long )((int (*)(struct napi_struct * ,
                                                                         int ))0)) {
    napi_gro_flush(& trans_pcie->napi, 0);
  } else {
  }
  return;
}
}
static void iwl_pcie_irq_handle_error(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  u32 tmp ;
  u32 tmp___0 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  if ((int )(trans->cfg)->internal_wimax_coex) {
    tmp = iwl_read_prph(trans, 12288U);
    if ((tmp & 1U) == 0U) {
      clear_bit(0L, (unsigned long volatile *)(& trans->status));
      iwl_op_mode_wimax_active(trans->op_mode);
      __wake_up(& trans_pcie->wait_command_queue, 3U, 1, (void *)0);
      return;
    } else {
      tmp___0 = iwl_read_prph(trans, 12300U);
      if ((tmp___0 & 67108864U) != 0U) {
        clear_bit(0L, (unsigned long volatile *)(& trans->status));
        iwl_op_mode_wimax_active(trans->op_mode);
        __wake_up(& trans_pcie->wait_command_queue, 3U, 1, (void *)0);
        return;
      } else {
      }
    }
  } else {
  }
  iwl_pcie_dump_csr(trans);
  iwl_dump_fh(trans, (char **)0);
  local_bh_disable();
  iwl_trans_fw_error(trans);
  local_bh_enable();
  clear_bit(0L, (unsigned long volatile *)(& trans->status));
  __wake_up(& trans_pcie->wait_command_queue, 3U, 1, (void *)0);
  return;
}
}
static u32 iwl_pcie_int_cause_non_ict(struct iwl_trans *trans )
{
  u32 inta ;
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  if (debug_locks != 0) {
    tmp = lock_is_held(& ((struct iwl_trans_pcie *)(& trans->trans_specific))->irq_lock.ldv_6347.ldv_6346.dep_map);
    if (tmp == 0) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  __ret_warn_on = tmp___0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/rx.o.c.prepared",
                       979);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  trace_iwlwifi_dev_irq((struct device const *)trans->dev);
  inta = iwl_read32___2(trans, 8U);
  return (inta);
}
}
static u32 iwl_pcie_int_cause_ict(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  u32 inta ;
  u32 val ;
  u32 read ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  val = 0U;
  trace_iwlwifi_dev_irq((struct device const *)trans->dev);
  read = *(trans_pcie->ict_tbl + (unsigned long )trans_pcie->ict_index);
  trace_iwlwifi_dev_ict_read((struct device const *)trans->dev, (u32 )trans_pcie->ict_index,
                             read);
  if (read == 0U) {
    return (0U);
  } else {
  }
  ldv_51154:
  val = val | read;
  __iwl_dbg(trans->dev, 33554432U, 0, "iwl_pcie_int_cause_ict", "ICT index %d value 0x%08X\n",
            trans_pcie->ict_index, read);
  *(trans_pcie->ict_tbl + (unsigned long )trans_pcie->ict_index) = 0U;
  trans_pcie->ict_index = (trans_pcie->ict_index + 1) & 1023;
  read = *(trans_pcie->ict_tbl + (unsigned long )trans_pcie->ict_index);
  trace_iwlwifi_dev_ict_read((struct device const *)trans->dev, (u32 )trans_pcie->ict_index,
                             read);
  if (read != 0U) {
    goto ldv_51154;
  } else {
  }
  if (val == 4294967295U) {
    val = 0U;
  } else {
  }
  if ((val & 786432U) != 0U) {
    val = val | 32768U;
  } else {
  }
  inta = (val & 255U) | ((val & 65280U) << 16);
  return (inta);
}
}
irqreturn_t iwl_pcie_irq_handler(int irq , void *dev_id )
{
  struct iwl_trans *trans ;
  struct iwl_trans_pcie *trans_pcie ;
  struct isr_statistics *isr_stats ;
  u32 inta ;
  u32 handled ;
  long tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  u32 tmp___7 ;
  bool tmp___8 ;
  bool tmp___9 ;
  bool hw_rfkill ;
  int tmp___10 ;
  int tmp___11 ;
  {
  trans = (struct iwl_trans *)dev_id;
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  isr_stats = & trans_pcie->isr_stats;
  inta = 0U;
  handled = 0U;
  lock_acquire(& trans->sync_cmd_lockdep_map, 0U, 0, 0, 1, (struct lockdep_map *)0,
               (unsigned long )((void *)0));
  spin_lock(& trans_pcie->irq_lock);
  tmp = ldv__builtin_expect((long )trans_pcie->use_ict, 1L);
  if (tmp != 0L) {
    inta = iwl_pcie_int_cause_ict(trans);
  } else {
    inta = iwl_pcie_int_cause_non_ict(trans);
  }
  tmp___2 = iwl_have_debug_level(33554432U);
  if ((int )tmp___2) {
    tmp___0 = iwl_read32___2(trans, 16U);
    tmp___1 = iwl_read32___2(trans, 12U);
    __iwl_dbg(trans->dev, 33554432U, 0, "iwl_pcie_irq_handler", "ISR inta 0x%08x, enabled 0x%08x(sw), enabled(hw) 0x%08x, fh 0x%08x\n",
              inta, trans_pcie->inta_mask, tmp___1, tmp___0);
    if ((~ trans_pcie->inta_mask & inta) != 0U) {
      __iwl_dbg(trans->dev, 33554432U, 0, "iwl_pcie_irq_handler", "We got a masked interrupt (0x%08x)\n",
                ~ trans_pcie->inta_mask & inta);
    } else {
    }
  } else {
  }
  inta = trans_pcie->inta_mask & inta;
  tmp___4 = ldv__builtin_expect(inta == 0U, 0L);
  if (tmp___4 != 0L) {
    __iwl_dbg(trans->dev, 33554432U, 0, "iwl_pcie_irq_handler", "Ignore interrupt, inta == 0\n");
    tmp___3 = constant_test_bit(3L, (unsigned long const volatile *)(& trans->status));
    if (tmp___3 != 0) {
      iwl_enable_interrupts(trans);
    } else {
    }
    spin_unlock(& trans_pcie->irq_lock);
    lock_release(& trans->sync_cmd_lockdep_map, 1, (unsigned long )((void *)1));
    return (0);
  } else {
  }
  tmp___5 = ldv__builtin_expect(inta == 4294967295U, 0L);
  if (tmp___5 != 0L) {
    __iwl_warn(trans->dev, "HARDWARE GONE?? INTA == 0x%08x\n", inta);
    spin_unlock(& trans_pcie->irq_lock);
    goto out;
  } else {
    tmp___6 = ldv__builtin_expect((inta & 4294967280U) == 2779096480U, 0L);
    if (tmp___6 != 0L) {
      __iwl_warn(trans->dev, "HARDWARE GONE?? INTA == 0x%08x\n", inta);
      spin_unlock(& trans_pcie->irq_lock);
      goto out;
    } else {
    }
  }
  iwl_write32___2(trans, 8U, ~ trans_pcie->inta_mask | inta);
  tmp___8 = iwl_have_debug_level(33554432U);
  if ((int )tmp___8) {
    tmp___7 = iwl_read32___2(trans, 12U);
    __iwl_dbg(trans->dev, 33554432U, 0, "iwl_pcie_irq_handler", "inta 0x%08x, enabled 0x%08x\n",
              inta, tmp___7);
  } else {
  }
  spin_unlock(& trans_pcie->irq_lock);
  if ((inta & 536870912U) != 0U) {
    __iwl_err(trans->dev, 0, 0, "Hardware error detected.  Restarting.\n");
    iwl_disable_interrupts(trans);
    isr_stats->hw = isr_stats->hw + 1U;
    iwl_pcie_irq_handle_error(trans);
    handled = handled | 536870912U;
    goto out;
  } else {
  }
  tmp___9 = iwl_have_debug_level(33554432U);
  if ((int )tmp___9) {
    if ((inta & 67108864U) != 0U) {
      __iwl_dbg(trans->dev, 33554432U, 0, "iwl_pcie_irq_handler", "Scheduler finished to transmit the frame/frames.\n");
      isr_stats->sch = isr_stats->sch + 1U;
    } else {
    }
    if ((int )inta & 1) {
      __iwl_dbg(trans->dev, 33554432U, 0, "iwl_pcie_irq_handler", "Alive interrupt\n");
      isr_stats->alive = isr_stats->alive + 1U;
    } else {
    }
  } else {
  }
  inta = inta & 4227858430U;
  if ((inta & 128U) != 0U) {
    hw_rfkill = iwl_is_rfkill_set___0(trans);
    __iwl_warn(trans->dev, "RF_KILL bit toggled to %s.\n", (int )hw_rfkill ? (char *)"disable radio" : (char *)"enable radio");
    isr_stats->rfkill = isr_stats->rfkill + 1U;
    iwl_trans_pcie_rf_kill(trans, (int )hw_rfkill);
    if ((int )hw_rfkill) {
      set_bit(4L, (unsigned long volatile *)(& trans->status));
      tmp___10 = test_and_clear_bit(0L, (unsigned long volatile *)(& trans->status));
      if (tmp___10 != 0) {
        __iwl_dbg(trans->dev, 131072U, 0, "iwl_pcie_irq_handler", "Rfkill while SYNC HCMD in flight\n");
      } else {
      }
      __wake_up(& trans_pcie->wait_command_queue, 3U, 1, (void *)0);
    } else {
      clear_bit(4L, (unsigned long volatile *)(& trans->status));
    }
    handled = handled | 128U;
  } else {
  }
  if ((inta & 64U) != 0U) {
    __iwl_err(trans->dev, 0, 0, "Microcode CT kill error detected.\n");
    isr_stats->ctkill = isr_stats->ctkill + 1U;
    handled = handled | 64U;
  } else {
  }
  if ((inta & 33554432U) != 0U) {
    __iwl_err(trans->dev, 0, 0, "Microcode SW error detected.  Restarting 0x%X.\n",
              inta);
    isr_stats->sw = isr_stats->sw + 1U;
    iwl_pcie_irq_handle_error(trans);
    handled = handled | 33554432U;
  } else {
  }
  if ((inta & 2U) != 0U) {
    __iwl_dbg(trans->dev, 33554432U, 0, "iwl_pcie_irq_handler", "Wakeup interrupt\n");
    iwl_pcie_rxq_check_wrptr(trans);
    iwl_pcie_txq_check_wrptrs(trans);
    isr_stats->wakeup = isr_stats->wakeup + 1U;
    handled = handled | 2U;
  } else {
  }
  if ((inta & 2415919112U) != 0U) {
    __iwl_dbg(trans->dev, 33554432U, 0, "iwl_pcie_irq_handler", "Rx interrupt\n");
    if ((inta & 2147483656U) != 0U) {
      handled = handled | 2147483656U;
      iwl_write32___2(trans, 16U, 1073938432U);
    } else {
    }
    if ((inta & 268435456U) != 0U) {
      handled = handled | 268435456U;
      iwl_write32___2(trans, 8U, 268435456U);
    } else {
    }
    iwl_write8(trans, 5U, 0);
    if ((inta & 2147483656U) != 0U) {
      iwl_write8(trans, 5U, 255);
    } else {
    }
    isr_stats->rx = isr_stats->rx + 1U;
    local_bh_disable();
    iwl_pcie_rx_handle(trans);
    local_bh_enable();
  } else {
  }
  if ((inta & 134217728U) != 0U) {
    iwl_write32___2(trans, 16U, 3U);
    __iwl_dbg(trans->dev, 33554432U, 0, "iwl_pcie_irq_handler", "uCode load interrupt\n");
    isr_stats->tx = isr_stats->tx + 1U;
    handled = handled | 134217728U;
    trans_pcie->ucode_write_complete = 1;
    __wake_up(& trans_pcie->ucode_write_waitq, 3U, 1, (void *)0);
  } else {
  }
  if ((~ handled & inta) != 0U) {
    __iwl_err(trans->dev, 0, 0, "Unhandled INTA bits 0x%08x\n", ~ handled & inta);
    isr_stats->unhandled = isr_stats->unhandled + 1U;
  } else {
  }
  if ((~ trans_pcie->inta_mask & inta) != 0U) {
    __iwl_warn(trans->dev, "Disabled INTA bits 0x%08x were pending\n", ~ trans_pcie->inta_mask & inta);
  } else {
  }
  tmp___11 = constant_test_bit(3L, (unsigned long const volatile *)(& trans->status));
  if (tmp___11 != 0) {
    iwl_enable_interrupts(trans);
  } else
  if ((handled & 128U) != 0U) {
    iwl_enable_rfkill_int___0(trans);
  } else {
  }
  out: ;
  lock_release(& trans->sync_cmd_lockdep_map, 1, (unsigned long )((void *)2));
  return (1);
}
}
void iwl_pcie_free_ict(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  if ((unsigned long )trans_pcie->ict_tbl != (unsigned long )((__le32 *)0U)) {
    dma_free_attrs(trans->dev, 4096UL, (void *)trans_pcie->ict_tbl, trans_pcie->ict_tbl_dma,
                   (struct dma_attrs *)0);
    trans_pcie->ict_tbl = (__le32 *)0U;
    trans_pcie->ict_tbl_dma = 0ULL;
  } else {
  }
  return;
}
}
int iwl_pcie_alloc_ict(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  void *tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  tmp = dma_zalloc_coherent(trans->dev, 4096UL, & trans_pcie->ict_tbl_dma, 208U);
  trans_pcie->ict_tbl = (__le32 *)tmp;
  if ((unsigned long )trans_pcie->ict_tbl == (unsigned long )((__le32 *)0U)) {
    return (-12);
  } else {
  }
  __ret_warn_on = (trans_pcie->ict_tbl_dma & 4095ULL) != 0ULL;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/rx.o.c.prepared",
                       1341);
  } else {
  }
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    iwl_pcie_free_ict(trans);
    return (-22);
  } else {
  }
  __iwl_dbg(trans->dev, 33554432U, 0, "iwl_pcie_alloc_ict", "ict dma addr %Lx ict vir addr %p\n",
            trans_pcie->ict_tbl_dma, trans_pcie->ict_tbl);
  return (0);
}
}
void iwl_pcie_reset_ict(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  u32 val ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  if ((unsigned long )trans_pcie->ict_tbl == (unsigned long )((__le32 *)0U)) {
    return;
  } else {
  }
  spin_lock(& trans_pcie->irq_lock);
  iwl_disable_interrupts(trans);
  memset((void *)trans_pcie->ict_tbl, 0, 4096UL);
  val = (u32 )(trans_pcie->ict_tbl_dma >> 12);
  val = val | 2147483648U;
  val = val | 134217728U;
  __iwl_dbg(trans->dev, 33554432U, 0, "iwl_pcie_reset_ict", "CSR_DRAM_INT_TBL_REG =0x%x\n",
            val);
  iwl_write32___2(trans, 160U, val);
  trans_pcie->use_ict = 1;
  trans_pcie->ict_index = 0;
  iwl_write32___2(trans, 8U, trans_pcie->inta_mask);
  iwl_enable_interrupts(trans);
  spin_unlock(& trans_pcie->irq_lock);
  return;
}
}
void iwl_pcie_disable_ict(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  spin_lock(& trans_pcie->irq_lock);
  trans_pcie->use_ict = 0;
  spin_unlock(& trans_pcie->irq_lock);
  return;
}
}
irqreturn_t iwl_pcie_isr(int irq , void *data )
{
  struct iwl_trans *trans ;
  {
  trans = (struct iwl_trans *)data;
  if ((unsigned long )trans == (unsigned long )((struct iwl_trans *)0)) {
    return (0);
  } else {
  }
  iwl_write32___2(trans, 12U, 0U);
  return (2);
}
}
__inline static struct page *alloc_pages(gfp_t flags , unsigned int order )
{
  struct page *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_alloc_pages_427(flags, order);
  return (tmp);
}
}
__inline static void *dma_zalloc_coherent(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                          gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  ldv_dma_zalloc_coherent_435(dev, size, dma_handle, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_438(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_440(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_442(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_443(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_444(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_445(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_446(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_447(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_request_threaded_irq_448(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_threaded_irq(ldv_func_arg1, handler, thread_fn, ldv_func_arg4, ldv_func_arg5,
                             ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg6);
  } else {
  }
  return (ldv_func_res);
}
}
struct sk_buff *ldv_skb_clone_449(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
__inline static bool is_power_of_2(unsigned long n )
{
  {
  return ((bool )(n != 0UL && ((n - 1UL) & n) == 0UL));
}
}
extern void dump_stack(void) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
extern unsigned long __phys_addr(unsigned long ) ;
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void spin_lock_bh(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void spin_unlock_bh(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_470(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6347.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void dump_page(struct page * , char const * ) ;
extern unsigned long volatile jiffies ;
extern unsigned int jiffies_to_msecs(unsigned long const ) ;
extern int del_timer(struct timer_list * ) ;
int ldv_del_timer_498(struct timer_list *ldv_func_arg1 ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_499(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_500(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_501(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_497(struct timer_list *ldv_func_arg1 ) ;
extern void free_pages(unsigned long , unsigned int ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kmalloc_array(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  if (size != 0UL && 0xffffffffffffffffUL / size < n) {
    return ((void *)0);
  } else {
  }
  tmp = __kmalloc(n * size, flags);
  return (tmp);
}
}
__inline static void *ldv_kcalloc_476(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc_array(n, size, flags | 32768U);
  return (tmp);
}
}
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags ) ;
void disable_suitable_timer_3(struct timer_list *timer ) ;
void activate_suitable_timer_3(struct timer_list *timer , unsigned long data ) ;
int reg_timer_3(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data ) ;
void choose_timer_3(void) ;
void activate_pending_timer_3(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void ldv_timer_3(int state , struct timer_list *timer ) ;
__inline static int PageTail(struct page const *page )
{
  int tmp ;
  {
  tmp = constant_test_bit(15L, (unsigned long const volatile *)(& page->flags));
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
  tmp___3 = atomic_read((atomic_t const *)(& page->ldv_14143.ldv_14142.ldv_14140._count));
  tmp___4 = ldv__builtin_expect(tmp___3 <= 0, 0L);
  if (tmp___4 != 0L) {
    dump_page(page, "VM_BUG_ON_PAGE(atomic_read(&page->_count) <= 0)");
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/mm.h"),
                         "i" (509), "i" (12UL));
    ldv_20018: ;
    goto ldv_20018;
  } else {
  }
  atomic_inc(& page->ldv_14143.ldv_14142.ldv_14140._count);
  return;
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
    ldv_22790: ;
    goto ldv_22790;
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
    ldv_22799: ;
    goto ldv_22799;
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
struct sk_buff *ldv_skb_clone_486(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_495(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_488(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_484(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_492(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_493(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
__inline static int skb_queue_empty(struct sk_buff_head const *list )
{
  {
  return ((unsigned long )((struct sk_buff const *)list->next) == (unsigned long )((struct sk_buff const *)list));
}
}
__inline static void __skb_insert(struct sk_buff *newsk , struct sk_buff *prev , struct sk_buff *next ,
                                  struct sk_buff_head *list )
{
  struct sk_buff *tmp ;
  {
  newsk->next = next;
  newsk->prev = prev;
  tmp = newsk;
  prev->next = tmp;
  next->prev = tmp;
  list->qlen = list->qlen + 1U;
  return;
}
}
__inline static void __skb_queue_before(struct sk_buff_head *list , struct sk_buff *next ,
                                        struct sk_buff *newsk )
{
  {
  __skb_insert(newsk, next->prev, next, list);
  return;
}
}
__inline static void __skb_queue_tail(struct sk_buff_head *list , struct sk_buff *newsk )
{
  {
  __skb_queue_before(list, (struct sk_buff *)list, newsk);
  return;
}
}
struct sk_buff *ldv___netdev_alloc_skb_489(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_490(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_491(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
int ldv_request_threaded_irq_494(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 ) ;
__inline static u32 get_unaligned_le32(void const *p )
{
  __u32 tmp ;
  {
  tmp = __le32_to_cpup((__le32 const *)p);
  return (tmp);
}
}
__inline static void put_unaligned_le32(u32 val , void *p )
{
  {
  *((__le32 *)p) = val;
  return;
}
}
__inline static int ieee80211_has_morefrags(__le16 fc )
{
  {
  return (((int )fc & 1024) != 0);
}
}
extern unsigned int ieee80211_hdrlen(__le16 ) ;
__inline static unsigned int SCD_QUEUE_WRPTR(unsigned int chnl )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  if (chnl <= 19U) {
    return ((chnl + 2624262U) * 4U);
  } else {
  }
  __ret_warn_once = chnl > 31U;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("drivers/net/wireless/iwlwifi/iwl-prph.h", 289);
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
  return ((chnl + 2624397U) * 4U);
}
}
__inline static unsigned int SCD_QUEUE_RDPTR(unsigned int chnl )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  if (chnl <= 19U) {
    return ((chnl + 2624282U) * 4U);
  } else {
  }
  __ret_warn_once = chnl > 31U;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("drivers/net/wireless/iwlwifi/iwl-prph.h", 297);
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
  return ((chnl + 2624409U) * 4U);
}
}
__inline static unsigned int SCD_QUEUE_STATUS_BITS(unsigned int chnl )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  if (chnl <= 19U) {
    return ((chnl + 2624323U) * 4U);
  } else {
  }
  __ret_warn_once = chnl > 31U;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("drivers/net/wireless/iwlwifi/iwl-prph.h", 305);
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
  return ((chnl + 2624461U) * 4U);
}
}
__inline static void iwl_op_mode_queue_full(struct iwl_op_mode *op_mode , int queue )
{
  {
  (*((op_mode->ops)->queue_full))(op_mode, queue);
  return;
}
}
__inline static void iwl_op_mode_queue_not_full(struct iwl_op_mode *op_mode , int queue )
{
  {
  (*((op_mode->ops)->queue_not_full))(op_mode, queue);
  return;
}
}
__inline static void iwl_op_mode_free_skb(struct iwl_op_mode *op_mode , struct sk_buff *skb )
{
  {
  (*((op_mode->ops)->free_skb))(op_mode, skb);
  return;
}
}
__inline static void iwl_op_mode_cmd_queue_full(struct iwl_op_mode *op_mode )
{
  {
  (*((op_mode->ops)->cmd_queue_full))(op_mode);
  return;
}
}
__inline static void iwl_free_resp(struct iwl_host_cmd *cmd )
{
  {
  free_pages(cmd->_rx_page_addr, cmd->_rx_page_order);
  return;
}
}
__inline static struct page *rxb_steal_page(struct iwl_rx_cmd_buffer *r )
{
  {
  r->_page_stolen = 1;
  get_page(r->_page);
  return (r->_page);
}
}
__inline static void iwl_trans_txq_enable(struct iwl_trans *trans , int queue , int fifo ,
                                          int sta_id , int tid , int frame_limit ,
                                          u16 ssn )
{
  long tmp ;
  {
  __might_sleep("drivers/net/wireless/iwlwifi/iwl-trans.h", 775, 0);
  tmp = ldv__builtin_expect((unsigned int )trans->state != 1U, 0L);
  if (tmp != 0L) {
    __iwl_err(trans->dev, 0, 0, "%s bad state = %d\n", "iwl_trans_txq_enable", (unsigned int )trans->state);
  } else {
  }
  (*((trans->ops)->txq_enable))(trans, queue, fifo, sta_id, tid, frame_limit, (int )ssn);
  return;
}
}
__inline static void iwl_trans_ac_txq_enable(struct iwl_trans *trans , int queue ,
                                             int fifo )
{
  {
  iwl_trans_txq_enable(trans, queue, fifo, -1, 8, 64, 0);
  return;
}
}
__inline static int iwl_trans_read_mem(struct iwl_trans *trans , u32 addr , void *buf ,
                                       int dwords )
{
  int tmp ;
  {
  tmp = (*((trans->ops)->read_mem))(trans, addr, buf, dwords);
  return (tmp);
}
}
__inline static u32 iwl_trans_read_mem32(struct iwl_trans *trans , u32 addr )
{
  u32 value ;
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = iwl_trans_read_mem(trans, addr, (void *)(& value), 1);
  __ret_warn_on = tmp != 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("drivers/net/wireless/iwlwifi/iwl-trans.h", 849);
  } else {
  }
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    return (2779096485U);
  } else {
  }
  return (value);
}
}
__inline static int iwl_trans_write_mem(struct iwl_trans *trans , u32 addr , void const *buf ,
                                        int dwords )
{
  int tmp ;
  {
  tmp = (*((trans->ops)->write_mem))(trans, addr, buf, dwords);
  return (tmp);
}
}
__inline static u32 iwl_trans_write_mem32(struct iwl_trans *trans , u32 addr , u32 val )
{
  int tmp ;
  {
  tmp = iwl_trans_write_mem(trans, addr, (void const *)(& val), 1);
  return ((u32 )tmp);
}
}
__inline static void trace_iwlwifi_dev_ioread32___3(struct device const *dev , u32 offs ,
                                                    u32 val )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_ioread32.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_ioread32.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 101,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_47969:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , u32 , u32 ))it_func))(__data,
                                                                              dev,
                                                                              offs,
                                                                              val);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_47969;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
__inline static void trace_iwlwifi_dev_iowrite32___3(struct device const *dev ,
                                                     u32 offs , u32 val )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_iowrite32.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_iowrite32.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 135,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_48057:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , u32 , u32 ))it_func))(__data,
                                                                              dev,
                                                                              offs,
                                                                              val);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_48057;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
struct tracepoint __tracepoint_iwlwifi_dev_tx_data ;
__inline static void trace_iwlwifi_dev_tx_data(struct device const *dev , struct sk_buff *skb ,
                                               void *data , size_t data_len )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_tx_data.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_tx_data.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 324,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_48552:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , struct sk_buff * , void * ,
                   size_t ))it_func))(__data, dev, skb, data, data_len);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_48552;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
struct tracepoint __tracepoint_iwlwifi_dev_hcmd ;
__inline static void trace_iwlwifi_dev_hcmd(struct device const *dev , struct iwl_host_cmd *cmd ,
                                            u16 total_size , struct iwl_cmd_header *hdr )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_hcmd.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_hcmd.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 378,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_48650:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , struct iwl_host_cmd * , u16 ,
                   struct iwl_cmd_header * ))it_func))(__data, dev, cmd, (int )total_size,
                                                       hdr);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_48650;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
struct tracepoint __tracepoint_iwlwifi_dev_tx ;
__inline static void trace_iwlwifi_dev_tx(struct device const *dev , struct sk_buff *skb ,
                                          void *tfd , size_t tfdlen , void *buf0 ,
                                          size_t buf0_len , void *buf1 , size_t buf1_len )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_tx.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_tx.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 428,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_48756:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , struct sk_buff * , void * ,
                   size_t , void * , size_t , void * , size_t ))it_func))(__data,
                                                                             dev,
                                                                             skb,
                                                                             tfd,
                                                                             tfdlen,
                                                                             buf0,
                                                                             buf0_len,
                                                                             buf1,
                                                                             buf1_len);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_48756;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
__inline static void iwl_write32___3(struct iwl_trans *trans , u32 ofs , u32 val )
{
  {
  trace_iwlwifi_dev_iowrite32___3((struct device const *)trans->dev, ofs, val);
  iwl_trans_write32(trans, ofs, val);
  return;
}
}
__inline static u32 iwl_read32___3(struct iwl_trans *trans , u32 ofs )
{
  u32 val ;
  u32 tmp ;
  {
  tmp = iwl_trans_read32(trans, ofs);
  val = tmp;
  trace_iwlwifi_dev_ioread32___3((struct device const *)trans->dev, ofs, val);
  return (val);
}
}
__inline static unsigned int FH_MEM_CBBC_QUEUE(unsigned int chnl )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  if (chnl <= 15U) {
    return ((chnl + 1652U) * 4U);
  } else {
  }
  if (chnl <= 19U) {
    return ((chnl + 1772U) * 4U);
  } else {
  }
  __ret_warn_once = chnl > 31U;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("drivers/net/wireless/iwlwifi/iwl-fh.h", 127);
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
  return ((chnl + 1716U) * 4U);
}
}
__inline static u8 iwl_get_dma_hi_addr(dma_addr_t addr )
{
  {
  return ((unsigned int )((u8 )(addr >> 32ULL)) & 15U);
}
}
__inline static int iwl_queue_inc_wrap(int index )
{
  {
  index = index + 1;
  return (index & 255);
}
}
__inline static int iwl_queue_dec_wrap(int index )
{
  {
  index = index - 1;
  return (index & 255);
}
}
__inline static dma_addr_t iwl_pcie_get_scratchbuf_dma(struct iwl_txq *txq , int idx )
{
  {
  return (txq->scratchbufs_dma + (unsigned long long )((unsigned long )idx * 16UL));
}
}
__inline static struct iwl_trans *iwl_trans_pcie_get_trans(struct iwl_trans_pcie *trans_pcie )
{
  char const (*__mptr)[0U] ;
  {
  __mptr = (char const *)trans_pcie;
  return ((struct iwl_trans *)__mptr + 0xffffffffffffff08UL);
}
}
int iwl_pcie_tx_init(struct iwl_trans *trans ) ;
void iwl_pcie_tx_start(struct iwl_trans *trans , u32 scd_base_addr ) ;
int iwl_pcie_tx_stop(struct iwl_trans *trans ) ;
void iwl_pcie_tx_free(struct iwl_trans *trans ) ;
void iwl_trans_pcie_txq_enable(struct iwl_trans *trans , int txq_id , int fifo , int sta_id ,
                               int tid , int frame_limit , u16 ssn ) ;
void iwl_trans_pcie_txq_disable(struct iwl_trans *trans , int txq_id ) ;
int iwl_trans_pcie_tx(struct iwl_trans *trans , struct sk_buff *skb , struct iwl_device_cmd *dev_cmd ,
                      int txq_id ) ;
int iwl_trans_pcie_send_hcmd(struct iwl_trans *trans , struct iwl_host_cmd *cmd ) ;
void iwl_trans_pcie_reclaim(struct iwl_trans *trans , int txq_id , int ssn , struct sk_buff_head *skbs ) ;
void iwl_trans_pcie_tx_reset(struct iwl_trans *trans ) ;
__inline static u16 iwl_pcie_tfd_tb_get_len(struct iwl_tfd *tfd , u8 idx )
{
  struct iwl_tfd_tb *tb ;
  {
  tb = (struct iwl_tfd_tb *)(& tfd->tbs) + (unsigned long )idx;
  return ((u16 )((int )tb->hi_n_len >> 4));
}
}
__inline static void iwl_wake_queue(struct iwl_trans *trans , struct iwl_txq *txq )
{
  struct iwl_trans_pcie *trans_pcie ;
  int tmp ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  tmp = test_and_clear_bit((long )txq->q.id, (unsigned long volatile *)(& trans_pcie->queue_stopped));
  if (tmp != 0) {
    __iwl_dbg(trans->dev, 2147483648U, 0, "iwl_wake_queue", "Wake hwq %d\n", txq->q.id);
    iwl_op_mode_queue_not_full(trans->op_mode, (int )txq->q.id);
  } else {
  }
  return;
}
}
__inline static void iwl_stop_queue(struct iwl_trans *trans , struct iwl_txq *txq )
{
  struct iwl_trans_pcie *trans_pcie ;
  int tmp ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  tmp = test_and_set_bit((long )txq->q.id, (unsigned long volatile *)(& trans_pcie->queue_stopped));
  if (tmp == 0) {
    iwl_op_mode_queue_full(trans->op_mode, (int )txq->q.id);
    __iwl_dbg(trans->dev, 2147483648U, 0, "iwl_stop_queue", "Stop hwq %d\n", txq->q.id);
  } else {
    __iwl_dbg(trans->dev, 2147483648U, 0, "iwl_stop_queue", "hwq %d already stopped\n",
              txq->q.id);
  }
  return;
}
}
__inline static bool iwl_queue_used(struct iwl_queue const *q , int i )
{
  {
  return ((bool )((int )q->write_ptr >= (int )q->read_ptr ? (int )q->read_ptr <= i && (int )q->write_ptr > i : (int )q->read_ptr <= i || (int )q->write_ptr > i));
}
}
__inline static void __iwl_trans_pcie_set_bits_mask(struct iwl_trans *trans , u32 reg ,
                                                    u32 mask , u32 value )
{
  u32 v ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  __ret_warn_once = (~ mask & value) != 0U;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/net/wireless/iwlwifi/pcie/internal.h",
                         477);
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
  v = iwl_read32___3(trans, reg);
  v = ~ mask & v;
  v = v | value;
  iwl_write32___3(trans, reg, v);
  return;
}
}
__inline static void __iwl_trans_pcie_clear_bit(struct iwl_trans *trans , u32 reg ,
                                                u32 mask )
{
  {
  __iwl_trans_pcie_set_bits_mask(trans, reg, mask, 0U);
  return;
}
}
__inline static void __iwl_trans_pcie_set_bit(struct iwl_trans *trans , u32 reg ,
                                              u32 mask )
{
  {
  __iwl_trans_pcie_set_bits_mask(trans, reg, mask, mask);
  return;
}
}
static int iwl_queue_space(struct iwl_queue const *q )
{
  unsigned int max ;
  unsigned int used ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  if ((int )q->n_window <= 255) {
    max = (unsigned int )q->n_window;
  } else {
    max = 255U;
  }
  used = (unsigned int )((int )q->write_ptr - (int )q->read_ptr) & 255U;
  __ret_warn_on = used > max;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                       265);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    return (0);
  } else {
  }
  return ((int )(max - used));
}
}
static int iwl_queue_init(struct iwl_queue *q , int slots_num , u32 id )
{
  int __ret_warn_on ;
  bool tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  q->n_window = slots_num;
  q->id = id;
  tmp = is_power_of_2((unsigned long )slots_num);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  __ret_warn_on = tmp___0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                       281);
  } else {
  }
  tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___2 != 0L) {
    return (-22);
  } else {
  }
  q->low_mark = q->n_window / 4;
  if (q->low_mark <= 3) {
    q->low_mark = 4;
  } else {
  }
  q->high_mark = q->n_window / 8;
  if (q->high_mark <= 1) {
    q->high_mark = 2;
  } else {
  }
  q->write_ptr = 0;
  q->read_ptr = 0;
  return (0);
}
}
static int iwl_pcie_alloc_dma_ptr(struct iwl_trans *trans , struct iwl_dma_ptr *ptr ,
                                  size_t size )
{
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  __ret_warn_on = (unsigned long )ptr->addr != (unsigned long )((void *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                       301);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    return (-22);
  } else {
  }
  ptr->addr = dma_alloc_attrs(trans->dev, size, & ptr->dma, 208U, (struct dma_attrs *)0);
  if ((unsigned long )ptr->addr == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  ptr->size = size;
  return (0);
}
}
static void iwl_pcie_free_dma_ptr(struct iwl_trans *trans , struct iwl_dma_ptr *ptr )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr->addr == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    return;
  } else {
  }
  dma_free_attrs(trans->dev, ptr->size, ptr->addr, ptr->dma, (struct dma_attrs *)0);
  memset((void *)ptr, 0, 24UL);
  return;
}
}
static void iwl_pcie_txq_stuck_timer(unsigned long data )
{
  struct iwl_txq *txq ;
  struct iwl_queue *q ;
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_trans *trans ;
  struct iwl_trans *tmp ;
  u32 scd_sram_addr ;
  u8 buf[16U] ;
  int i ;
  unsigned int tmp___0 ;
  u32 tmp___1 ;
  u32 status ;
  unsigned int tmp___2 ;
  u32 tmp___3 ;
  u8 fifo ;
  bool active ;
  u32 tbl_dw ;
  u32 tmp___4 ;
  unsigned int tmp___5 ;
  u32 tmp___6 ;
  unsigned int tmp___7 ;
  u32 tmp___8 ;
  {
  txq = (struct iwl_txq *)data;
  q = & txq->q;
  trans_pcie = txq->trans_pcie;
  tmp = iwl_trans_pcie_get_trans(trans_pcie);
  trans = tmp;
  scd_sram_addr = trans_pcie->scd_base_addr + (txq->q.id + 106U) * 16U;
  spin_lock(& txq->lock);
  if (txq->q.read_ptr == txq->q.write_ptr) {
    spin_unlock(& txq->lock);
    return;
  } else {
  }
  spin_unlock(& txq->lock);
  tmp___0 = jiffies_to_msecs(trans_pcie->wd_timeout);
  __iwl_err(trans->dev, 0, 0, "Queue %d stuck for %u ms.\n", txq->q.id, tmp___0);
  __iwl_err(trans->dev, 0, 0, "Current SW read_ptr %d write_ptr %d\n", txq->q.read_ptr,
            txq->q.write_ptr);
  iwl_trans_read_mem(trans, scd_sram_addr, (void *)(& buf), 4);
  print_hex_dump("\v", "iwl data: ", 2, 16, 1, (void const *)(& buf), 16UL, 1);
  i = 0;
  goto ldv_52256;
  ldv_52255:
  tmp___1 = iwl_read_direct32(trans, (u32 )((i + 1622) * 4));
  __iwl_err(trans->dev, 0, 0, "FH TRBs(%d) = 0x%08x\n", i, tmp___1);
  i = i + 1;
  ldv_52256: ;
  if (i <= 7) {
    goto ldv_52255;
  } else {
  }
  i = 0;
  goto ldv_52263;
  ldv_52262:
  tmp___2 = SCD_QUEUE_STATUS_BITS((unsigned int )i);
  tmp___3 = iwl_read_prph(trans, tmp___2);
  status = tmp___3;
  fifo = (unsigned int )((u8 )status) & 7U;
  active = ((unsigned long )status & 8UL) != 0UL;
  tmp___4 = iwl_trans_read_mem32(trans, trans_pcie->scd_base_addr + ((u32 )((i + 1008) * 2) & 65532U));
  tbl_dw = tmp___4;
  if (i & 1) {
    tbl_dw = tbl_dw >> 16;
  } else {
    tbl_dw = tbl_dw & 65535U;
  }
  tmp___5 = SCD_QUEUE_WRPTR((unsigned int )i);
  tmp___6 = iwl_read_prph(trans, tmp___5);
  tmp___7 = SCD_QUEUE_RDPTR((unsigned int )i);
  tmp___8 = iwl_read_prph(trans, tmp___7);
  __iwl_err(trans->dev, 0, 0, "Q %d is %sactive and mapped to fifo %d ra_tid 0x%04x [%d,%d]\n",
            i, (int )active ? (char *)"" : (char *)"in", (int )fifo, tbl_dw, tmp___8 & 255U,
            tmp___6);
  i = i + 1;
  ldv_52263: ;
  if ((int )((trans->cfg)->base_params)->num_of_queues > i) {
    goto ldv_52262;
  } else {
  }
  i = q->read_ptr;
  goto ldv_52266;
  ldv_52265:
  __iwl_err(trans->dev, 0, 0, "scratch %d = 0x%08x\n", i, (txq->scratchbufs + (unsigned long )i)->scratch);
  i = iwl_queue_inc_wrap(i);
  ldv_52266: ;
  if (q->write_ptr != i) {
    goto ldv_52265;
  } else {
  }
  iwl_force_nmi(trans);
  return;
}
}
static void iwl_pcie_txq_update_byte_cnt_tbl(struct iwl_trans *trans , struct iwl_txq *txq ,
                                             u16 byte_cnt )
{
  struct iwlagn_scd_bc_tbl *scd_bc_tbl ;
  struct iwl_trans_pcie *trans_pcie ;
  int write_ptr ;
  int txq_id ;
  u8 sec_ctl ;
  u8 sta_id ;
  u16 len ;
  __le16 bc_ent ;
  struct iwl_tx_cmd *tx_cmd ;
  int __ret_warn_on ;
  long tmp ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  write_ptr = txq->q.write_ptr;
  txq_id = (int )txq->q.id;
  sec_ctl = 0U;
  sta_id = 0U;
  len = (unsigned int )byte_cnt + 8U;
  tx_cmd = (struct iwl_tx_cmd *)(& ((txq->entries + (unsigned long )txq->q.write_ptr)->cmd)->payload);
  scd_bc_tbl = (struct iwlagn_scd_bc_tbl *)trans_pcie->scd_bc_tbls.addr;
  __ret_warn_on = (unsigned int )len > 4095U || write_ptr > 255;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                       403);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  sta_id = tx_cmd->sta_id;
  sec_ctl = tx_cmd->sec_ctl;
  switch ((int )sec_ctl & 3) {
  case 2:
  len = (unsigned int )len + 8U;
  goto ldv_52285;
  case 3:
  len = (unsigned int )len + 4U;
  goto ldv_52285;
  case 1:
  len = (unsigned int )len + 8U;
  goto ldv_52285;
  }
  ldv_52285: ;
  if ((int )trans_pcie->bc_table_dword) {
    len = (u16 )(((int )len + 3) / 4);
  } else {
  }
  bc_ent = (unsigned short )((int )((short )((int )sta_id << 12)) | (int )((short )len));
  (scd_bc_tbl + (unsigned long )txq_id)->tfd_offset[write_ptr] = bc_ent;
  if (write_ptr <= 63) {
    (scd_bc_tbl + (unsigned long )txq_id)->tfd_offset[write_ptr + 256] = bc_ent;
  } else {
  }
  return;
}
}
static void iwl_pcie_txq_inval_byte_cnt_tbl(struct iwl_trans *trans , struct iwl_txq *txq )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct iwlagn_scd_bc_tbl *scd_bc_tbl ;
  int txq_id ;
  int read_ptr ;
  u8 sta_id ;
  __le16 bc_ent ;
  struct iwl_tx_cmd *tx_cmd ;
  int __ret_warn_on ;
  long tmp ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  scd_bc_tbl = (struct iwlagn_scd_bc_tbl *)trans_pcie->scd_bc_tbls.addr;
  txq_id = (int )txq->q.id;
  read_ptr = txq->q.read_ptr;
  sta_id = 0U;
  tx_cmd = (struct iwl_tx_cmd *)(& ((txq->entries + (unsigned long )txq->q.read_ptr)->cmd)->payload);
  __ret_warn_on = read_ptr > 255;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                       445);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((int )trans_pcie->cmd_queue != txq_id) {
    sta_id = tx_cmd->sta_id;
  } else {
  }
  bc_ent = (unsigned short )((int )((short )((int )sta_id << 12)) | 1);
  (scd_bc_tbl + (unsigned long )txq_id)->tfd_offset[read_ptr] = bc_ent;
  if (read_ptr <= 63) {
    (scd_bc_tbl + (unsigned long )txq_id)->tfd_offset[read_ptr + 256] = bc_ent;
  } else {
  }
  return;
}
}
static void iwl_pcie_txq_inc_wr_ptr(struct iwl_trans *trans , struct iwl_txq *txq )
{
  struct iwl_trans_pcie *trans_pcie ;
  u32 reg ;
  int txq_id ;
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  reg = 0U;
  txq_id = (int )txq->q.id;
  if (debug_locks != 0) {
    tmp = lock_is_held(& txq->lock.ldv_6347.ldv_6346.dep_map);
    if (tmp == 0) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  __ret_warn_on = tmp___0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                       468);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (! ((_Bool )((trans->cfg)->base_params)->shadow_reg_enable) && (int )trans_pcie->cmd_queue != txq_id) {
    tmp___2 = constant_test_bit(2L, (unsigned long const volatile *)(& trans->status));
    if (tmp___2 != 0) {
      reg = iwl_read32___3(trans, 84U);
      if ((int )reg & 1) {
        __iwl_dbg(trans->dev, 1U, 0, "iwl_pcie_txq_inc_wr_ptr", "Tx queue %d requesting wakeup, GP1 = 0x%x\n",
                  txq_id, reg);
        iwl_set_bit(trans, 36U, 8U);
        txq->need_update = 1;
        return;
      } else {
      }
    } else {
    }
  } else {
  }
  __iwl_dbg(trans->dev, 8388608U, 0, "iwl_pcie_txq_inc_wr_ptr", "Q:%d WR: 0x%x\n",
            txq_id, txq->q.write_ptr);
  iwl_write32___3(trans, 1120U, (u32 )(txq->q.write_ptr | (txq_id << 8)));
  return;
}
}
void iwl_pcie_txq_check_wrptrs(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  int i ;
  struct iwl_txq *txq ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  i = 0;
  goto ldv_52318;
  ldv_52317:
  txq = trans_pcie->txq + (unsigned long )i;
  spin_lock_bh(& txq->lock);
  if ((int )(trans_pcie->txq + (unsigned long )i)->need_update) {
    iwl_pcie_txq_inc_wr_ptr(trans, txq);
    (trans_pcie->txq + (unsigned long )i)->need_update = 0;
  } else {
  }
  spin_unlock_bh(& txq->lock);
  i = i + 1;
  ldv_52318: ;
  if ((int )((trans->cfg)->base_params)->num_of_queues > i) {
    goto ldv_52317;
  } else {
  }
  return;
}
}
__inline static dma_addr_t iwl_pcie_tfd_tb_get_addr(struct iwl_tfd *tfd , u8 idx )
{
  struct iwl_tfd_tb *tb ;
  dma_addr_t addr ;
  u32 tmp ;
  {
  tb = (struct iwl_tfd_tb *)(& tfd->tbs) + (unsigned long )idx;
  tmp = get_unaligned_le32((void const *)(& tb->lo));
  addr = (dma_addr_t )tmp;
  addr = (((unsigned long long )tb->hi_n_len & 15ULL) << 32ULL) | addr;
  return (addr);
}
}
__inline static void iwl_pcie_tfd_set_tb(struct iwl_tfd *tfd , u8 idx , dma_addr_t addr ,
                                         u16 len )
{
  struct iwl_tfd_tb *tb ;
  u16 hi_n_len ;
  {
  tb = (struct iwl_tfd_tb *)(& tfd->tbs) + (unsigned long )idx;
  hi_n_len = (int )len << 4U;
  put_unaligned_le32((u32 )addr, (void *)(& tb->lo));
  hi_n_len = ((unsigned int )((u16 )(addr >> 32ULL)) & 15U) | (unsigned int )hi_n_len;
  tb->hi_n_len = hi_n_len;
  tfd->num_tbs = (unsigned int )idx + 1U;
  return;
}
}
__inline static u8 iwl_pcie_tfd_get_num_tbs(struct iwl_tfd *tfd )
{
  {
  return ((unsigned int )tfd->num_tbs & 31U);
}
}
static void iwl_pcie_tfd_unmap(struct iwl_trans *trans , struct iwl_cmd_meta *meta ,
                               struct iwl_tfd *tfd )
{
  int i ;
  int num_tbs ;
  u8 tmp ;
  u16 tmp___0 ;
  dma_addr_t tmp___1 ;
  {
  tmp = iwl_pcie_tfd_get_num_tbs(tfd);
  num_tbs = (int )tmp;
  if (num_tbs > 19) {
    __iwl_err(trans->dev, 0, 0, "Too many chunks: %i\n", num_tbs);
    return;
  } else {
  }
  i = 1;
  goto ldv_52345;
  ldv_52344:
  tmp___0 = iwl_pcie_tfd_tb_get_len(tfd, (int )((u8 )i));
  tmp___1 = iwl_pcie_tfd_tb_get_addr(tfd, (int )((u8 )i));
  dma_unmap_single_attrs(trans->dev, tmp___1, (size_t )tmp___0, 1, (struct dma_attrs *)0);
  i = i + 1;
  ldv_52345: ;
  if (i < num_tbs) {
    goto ldv_52344;
  } else {
  }
  tfd->num_tbs = 0U;
  return;
}
}
static void iwl_pcie_txq_free_tfd(struct iwl_trans *trans , struct iwl_txq *txq )
{
  struct iwl_tfd *tfd_tmp ;
  int rd_ptr ;
  int idx ;
  u8 tmp ;
  int __ret_warn_on ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  struct sk_buff *skb ;
  {
  tfd_tmp = txq->tfds;
  rd_ptr = txq->q.read_ptr;
  tmp = get_cmd_index(& txq->q, (u32 )rd_ptr);
  idx = (int )tmp;
  if (debug_locks != 0) {
    tmp___0 = lock_is_held(& txq->lock.ldv_6347.ldv_6346.dep_map);
    if (tmp___0 == 0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  __ret_warn_on = tmp___1;
  tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___2 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                       598);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  iwl_pcie_tfd_unmap(trans, & (txq->entries + (unsigned long )idx)->meta, tfd_tmp + (unsigned long )rd_ptr);
  if ((unsigned long )txq->entries != (unsigned long )((struct iwl_pcie_txq_entry *)0)) {
    skb = (txq->entries + (unsigned long )idx)->skb;
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
      iwl_op_mode_free_skb(trans->op_mode, skb);
      (txq->entries + (unsigned long )idx)->skb = (struct sk_buff *)0;
    } else {
    }
  } else {
  }
  return;
}
}
static int iwl_pcie_txq_build_tfd(struct iwl_trans *trans , struct iwl_txq *txq ,
                                  dma_addr_t addr , u16 len , bool reset )
{
  struct iwl_queue *q ;
  struct iwl_tfd *tfd ;
  struct iwl_tfd *tfd_tmp ;
  u32 num_tbs ;
  u8 tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  {
  q = & txq->q;
  tfd_tmp = txq->tfds;
  tfd = tfd_tmp + (unsigned long )q->write_ptr;
  if ((int )reset) {
    memset((void *)tfd, 0, 128UL);
  } else {
  }
  tmp = iwl_pcie_tfd_get_num_tbs(tfd);
  num_tbs = (u32 )tmp;
  if (num_tbs > 19U) {
    __iwl_err(trans->dev, 0, 0, "Error can not send more than %d chunks\n", 20);
    return (-22);
  } else {
  }
  __ret_warn_on = (addr & 0xfffffff000000000ULL) != 0ULL;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                      646, "Unaligned address = %llx\n", addr);
  } else {
  }
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    return (-22);
  } else {
  }
  iwl_pcie_tfd_set_tb(tfd, (int )((u8 )num_tbs), addr, (int )len);
  return (0);
}
}
static int iwl_pcie_txq_alloc(struct iwl_trans *trans , struct iwl_txq *txq , int slots_num ,
                              u32 txq_id )
{
  struct iwl_trans_pcie *trans_pcie ;
  size_t tfd_sz ;
  size_t scratchbuf_sz ;
  int i ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  tfd_sz = 32768UL;
  __ret_warn_on = (unsigned long )txq->entries != (unsigned long )((struct iwl_pcie_txq_entry *)0) || (unsigned long )txq->tfds != (unsigned long )((struct iwl_tfd *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                       663);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    return (-22);
  } else {
  }
  reg_timer_3(& txq->stuck_timer, & iwl_pcie_txq_stuck_timer, (unsigned long )txq);
  txq->trans_pcie = trans_pcie;
  txq->q.n_window = slots_num;
  tmp___1 = kcalloc((size_t )slots_num, 40UL, 208U);
  txq->entries = (struct iwl_pcie_txq_entry *)tmp___1;
  if ((unsigned long )txq->entries == (unsigned long )((struct iwl_pcie_txq_entry *)0)) {
    goto error;
  } else {
  }
  if ((u32 )trans_pcie->cmd_queue == txq_id) {
    i = 0;
    goto ldv_52384;
    ldv_52383:
    tmp___2 = kmalloc(324UL, 208U);
    (txq->entries + (unsigned long )i)->cmd = (struct iwl_device_cmd *)tmp___2;
    if ((unsigned long )(txq->entries + (unsigned long )i)->cmd == (unsigned long )((struct iwl_device_cmd *)0)) {
      goto error;
    } else {
    }
    i = i + 1;
    ldv_52384: ;
    if (i < slots_num) {
      goto ldv_52383;
    } else {
    }
  } else {
  }
  tmp___3 = dma_alloc_attrs(trans->dev, tfd_sz, & txq->q.dma_addr, 208U, (struct dma_attrs *)0);
  txq->tfds = (struct iwl_tfd *)tmp___3;
  if ((unsigned long )txq->tfds == (unsigned long )((struct iwl_tfd *)0)) {
    goto error;
  } else {
  }
  scratchbuf_sz = (unsigned long )slots_num * 16UL;
  tmp___4 = dma_alloc_attrs(trans->dev, scratchbuf_sz, & txq->scratchbufs_dma, 208U,
                            (struct dma_attrs *)0);
  txq->scratchbufs = (struct iwl_pcie_txq_scratch_buf *)tmp___4;
  if ((unsigned long )txq->scratchbufs == (unsigned long )((struct iwl_pcie_txq_scratch_buf *)0)) {
    goto err_free_tfds;
  } else {
  }
  txq->q.id = txq_id;
  return (0);
  err_free_tfds:
  dma_free_attrs(trans->dev, tfd_sz, (void *)txq->tfds, txq->q.dma_addr, (struct dma_attrs *)0);
  error: ;
  if ((unsigned long )txq->entries != (unsigned long )((struct iwl_pcie_txq_entry *)0) && (u32 )trans_pcie->cmd_queue == txq_id) {
    i = 0;
    goto ldv_52388;
    ldv_52387:
    kfree((void const *)(txq->entries + (unsigned long )i)->cmd);
    i = i + 1;
    ldv_52388: ;
    if (i < slots_num) {
      goto ldv_52387;
    } else {
    }
  } else {
  }
  kfree((void const *)txq->entries);
  txq->entries = (struct iwl_pcie_txq_entry *)0;
  return (-12);
}
}
static int iwl_pcie_txq_init(struct iwl_trans *trans , struct iwl_txq *txq , int slots_num ,
                             u32 txq_id )
{
  int ret ;
  struct lock_class_key __key ;
  unsigned int tmp ;
  {
  txq->need_update = 0;
  ret = iwl_queue_init(& txq->q, slots_num, txq_id);
  if (ret != 0) {
    return (ret);
  } else {
  }
  spinlock_check(& txq->lock);
  __raw_spin_lock_init(& txq->lock.ldv_6347.rlock, "&(&txq->lock)->rlock", & __key);
  tmp = FH_MEM_CBBC_QUEUE(txq_id);
  iwl_write_direct32(trans, tmp, (u32 )(txq->q.dma_addr >> 8));
  return (0);
}
}
static void iwl_pcie_txq_unmap(struct iwl_trans *trans , int txq_id )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_txq *txq ;
  struct iwl_queue *q ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  txq = trans_pcie->txq + (unsigned long )txq_id;
  q = & txq->q;
  spin_lock_bh(& txq->lock);
  goto ldv_52407;
  ldv_52406:
  __iwl_dbg(trans->dev, 1073741824U, 0, "iwl_pcie_txq_unmap", "Q %d Free %d\n", txq_id,
            q->read_ptr);
  iwl_pcie_txq_free_tfd(trans, txq);
  q->read_ptr = iwl_queue_inc_wrap(q->read_ptr);
  ldv_52407: ;
  if (q->write_ptr != q->read_ptr) {
    goto ldv_52406;
  } else {
  }
  txq->active = 0U;
  spin_unlock_bh(& txq->lock);
  iwl_wake_queue(trans, txq);
  return;
}
}
static void iwl_pcie_txq_free(struct iwl_trans *trans , int txq_id )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_txq *txq ;
  struct device *dev ;
  int i ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  txq = trans_pcie->txq + (unsigned long )txq_id;
  dev = trans->dev;
  __ret_warn_on = (unsigned long )txq == (unsigned long )((struct iwl_txq *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                       790);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    return;
  } else {
  }
  iwl_pcie_txq_unmap(trans, txq_id);
  if ((int )trans_pcie->cmd_queue == txq_id) {
    i = 0;
    goto ldv_52420;
    ldv_52419:
    kfree((void const *)(txq->entries + (unsigned long )i)->cmd);
    kfree((txq->entries + (unsigned long )i)->free_buf);
    i = i + 1;
    ldv_52420: ;
    if (txq->q.n_window > i) {
      goto ldv_52419;
    } else {
    }
  } else {
  }
  if ((unsigned long )txq->tfds != (unsigned long )((struct iwl_tfd *)0)) {
    dma_free_attrs(dev, 32768UL, (void *)txq->tfds, txq->q.dma_addr, (struct dma_attrs *)0);
    txq->q.dma_addr = 0ULL;
    txq->tfds = (struct iwl_tfd *)0;
    dma_free_attrs(dev, (unsigned long )txq->q.n_window * 16UL, (void *)txq->scratchbufs,
                   txq->scratchbufs_dma, (struct dma_attrs *)0);
  } else {
  }
  kfree((void const *)txq->entries);
  txq->entries = (struct iwl_pcie_txq_entry *)0;
  ldv_del_timer_sync_497(& txq->stuck_timer);
  memset((void *)txq, 0, 280UL);
  return;
}
}
static void iwl_pcie_txq_set_sched(struct iwl_trans *trans , u32 mask )
{
  struct iwl_trans_pcie *trans_pcie ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  iwl_write_prph(trans, 10497040U, mask);
  return;
}
}
void iwl_pcie_tx_start(struct iwl_trans *trans , u32 scd_base_addr )
{
  struct iwl_trans_pcie *trans_pcie ;
  int nq ;
  int chan ;
  u32 reg_val ;
  int clear_dwords ;
  int __ret_warn_on ;
  long tmp ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  nq = ((trans->cfg)->base_params)->num_of_queues;
  clear_dwords = (int )((unsigned long )(((nq + 1008) * 2 & 65532) + -1536) / 4UL);
  memset((void *)(& trans_pcie->queue_stopped), 0, 8UL);
  memset((void *)(& trans_pcie->queue_used), 0, 8UL);
  trans_pcie->scd_base_addr = iwl_read_prph(trans, 10497024U);
  __ret_warn_on = scd_base_addr != 0U && trans_pcie->scd_base_addr != scd_base_addr;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                       852);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  iwl_trans_write_mem(trans, trans_pcie->scd_base_addr + 1536U, (void const *)0,
                      clear_dwords);
  iwl_write_prph(trans, 10497032U, (u32 )(trans_pcie->scd_bc_tbls.dma >> 10));
  if ((int )((trans->cfg)->base_params)->scd_chain_ext_wa) {
    iwl_write_prph(trans, 10497604U, 0U);
  } else {
  }
  iwl_trans_ac_txq_enable(trans, (int )trans_pcie->cmd_queue, (int )trans_pcie->cmd_fifo);
  iwl_pcie_txq_set_sched(trans, 255U);
  chan = 0;
  goto ldv_52439;
  ldv_52438:
  iwl_write_direct32(trans, (u32 )((chan + 232) * 32), 2147483656U);
  chan = chan + 1;
  ldv_52439: ;
  if (chan <= 7) {
    goto ldv_52438;
  } else {
  }
  reg_val = iwl_read_direct32(trans, 7832U);
  iwl_write_direct32(trans, 7832U, reg_val | 2U);
  if ((unsigned int )(trans->cfg)->device_family != 16U) {
    iwl_clear_bits_prph(trans, 12304U, 2048U);
  } else {
  }
  return;
}
}
void iwl_trans_pcie_tx_reset(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  int txq_id ;
  struct iwl_txq *txq ;
  unsigned int tmp ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  txq_id = 0;
  goto ldv_52448;
  ldv_52447:
  txq = trans_pcie->txq + (unsigned long )txq_id;
  tmp = FH_MEM_CBBC_QUEUE((unsigned int )txq_id);
  iwl_write_direct32(trans, tmp, (u32 )(txq->q.dma_addr >> 8));
  iwl_pcie_txq_unmap(trans, txq_id);
  txq->q.read_ptr = 0;
  txq->q.write_ptr = 0;
  txq_id = txq_id + 1;
  ldv_52448: ;
  if ((int )((trans->cfg)->base_params)->num_of_queues > txq_id) {
    goto ldv_52447;
  } else {
  }
  iwl_write_direct32(trans, 6524U, (u32 )(trans_pcie->kw.dma >> 4));
  iwl_pcie_tx_start(trans, trans_pcie->scd_base_addr);
  return;
}
}
int iwl_pcie_tx_stop(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  int ch ;
  int txq_id ;
  int ret ;
  u32 tmp ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  spin_lock(& trans_pcie->irq_lock);
  iwl_pcie_txq_set_sched(trans, 0U);
  ch = 0;
  goto ldv_52458;
  ldv_52457:
  iwl_write_direct32(trans, (u32 )((ch + 232) * 32), 0U);
  ret = iwl_poll_direct_bit(trans, 7856U, (u32 )((1 << ch) << 16), 1000);
  if (ret < 0) {
    tmp = iwl_read_direct32(trans, 7856U);
    __iwl_err(trans->dev, 0, 0, "Failing on timeout while stopping DMA channel %d [0x%08x]\n",
              ch, tmp);
  } else {
  }
  ch = ch + 1;
  ldv_52458: ;
  if (ch <= 7) {
    goto ldv_52457;
  } else {
  }
  spin_unlock(& trans_pcie->irq_lock);
  memset((void *)(& trans_pcie->queue_stopped), 0, 8UL);
  memset((void *)(& trans_pcie->queue_used), 0, 8UL);
  if ((unsigned long )trans_pcie->txq == (unsigned long )((struct iwl_txq *)0)) {
    return (0);
  } else {
  }
  txq_id = 0;
  goto ldv_52461;
  ldv_52460:
  iwl_pcie_txq_unmap(trans, txq_id);
  txq_id = txq_id + 1;
  ldv_52461: ;
  if ((int )((trans->cfg)->base_params)->num_of_queues > txq_id) {
    goto ldv_52460;
  } else {
  }
  return (0);
}
}
void iwl_pcie_tx_free(struct iwl_trans *trans )
{
  int txq_id ;
  struct iwl_trans_pcie *trans_pcie ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  if ((unsigned long )trans_pcie->txq != (unsigned long )((struct iwl_txq *)0)) {
    txq_id = 0;
    goto ldv_52469;
    ldv_52468:
    iwl_pcie_txq_free(trans, txq_id);
    txq_id = txq_id + 1;
    ldv_52469: ;
    if ((int )((trans->cfg)->base_params)->num_of_queues > txq_id) {
      goto ldv_52468;
    } else {
    }
  } else {
  }
  kfree((void const *)trans_pcie->txq);
  trans_pcie->txq = (struct iwl_txq *)0;
  iwl_pcie_free_dma_ptr(trans, & trans_pcie->kw);
  iwl_pcie_free_dma_ptr(trans, & trans_pcie->scd_bc_tbls);
  return;
}
}
static int iwl_pcie_tx_alloc(struct iwl_trans *trans )
{
  int ret ;
  int txq_id ;
  int slots_num ;
  struct iwl_trans_pcie *trans_pcie ;
  u16 scd_bc_tbls_size ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  scd_bc_tbls_size = (unsigned int )((u16 )((unsigned long )((trans->cfg)->base_params)->num_of_queues)) * 640U;
  __ret_warn_on = (unsigned long )trans_pcie->txq != (unsigned long )((struct iwl_txq *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                       1002);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    ret = -22;
    goto error;
  } else {
  }
  ret = iwl_pcie_alloc_dma_ptr(trans, & trans_pcie->scd_bc_tbls, (size_t )scd_bc_tbls_size);
  if (ret != 0) {
    __iwl_err(trans->dev, 0, 0, "Scheduler BC Table allocation failed\n");
    goto error;
  } else {
  }
  ret = iwl_pcie_alloc_dma_ptr(trans, & trans_pcie->kw, 4096UL);
  if (ret != 0) {
    __iwl_err(trans->dev, 0, 0, "Keep Warm allocation failed\n");
    goto error;
  } else {
  }
  tmp___1 = kcalloc((size_t )((trans->cfg)->base_params)->num_of_queues, 280UL, 208U);
  trans_pcie->txq = (struct iwl_txq *)tmp___1;
  if ((unsigned long )trans_pcie->txq == (unsigned long )((struct iwl_txq *)0)) {
    __iwl_err(trans->dev, 0, 0, "Not enough memory for txq\n");
    ret = -12;
    goto error;
  } else {
  }
  txq_id = 0;
  goto ldv_52483;
  ldv_52482:
  slots_num = (int )trans_pcie->cmd_queue == txq_id ? 32 : 256;
  ret = iwl_pcie_txq_alloc(trans, trans_pcie->txq + (unsigned long )txq_id, slots_num,
                           (u32 )txq_id);
  if (ret != 0) {
    __iwl_err(trans->dev, 0, 0, "Tx %d queue alloc failed\n", txq_id);
    goto error;
  } else {
  }
  txq_id = txq_id + 1;
  ldv_52483: ;
  if ((int )((trans->cfg)->base_params)->num_of_queues > txq_id) {
    goto ldv_52482;
  } else {
  }
  return (0);
  error:
  iwl_pcie_tx_free(trans);
  return (ret);
}
}
int iwl_pcie_tx_init(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  int ret ;
  int txq_id ;
  int slots_num ;
  bool alloc ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  alloc = 0;
  if ((unsigned long )trans_pcie->txq == (unsigned long )((struct iwl_txq *)0)) {
    ret = iwl_pcie_tx_alloc(trans);
    if (ret != 0) {
      goto error;
    } else {
    }
    alloc = 1;
  } else {
  }
  spin_lock(& trans_pcie->irq_lock);
  iwl_write_prph(trans, 10497040U, 0U);
  iwl_write_direct32(trans, 6524U, (u32 )(trans_pcie->kw.dma >> 4));
  spin_unlock(& trans_pcie->irq_lock);
  txq_id = 0;
  goto ldv_52495;
  ldv_52494:
  slots_num = (int )trans_pcie->cmd_queue == txq_id ? 32 : 256;
  ret = iwl_pcie_txq_init(trans, trans_pcie->txq + (unsigned long )txq_id, slots_num,
                          (u32 )txq_id);
  if (ret != 0) {
    __iwl_err(trans->dev, 0, 0, "Tx %d queue init failed\n", txq_id);
    goto error;
  } else {
  }
  txq_id = txq_id + 1;
  ldv_52495: ;
  if ((int )((trans->cfg)->base_params)->num_of_queues > txq_id) {
    goto ldv_52494;
  } else {
  }
  return (0);
  error: ;
  if ((int )alloc) {
    iwl_pcie_tx_free(trans);
  } else {
  }
  return (ret);
}
}
__inline static void iwl_pcie_txq_progress(struct iwl_trans_pcie *trans_pcie , struct iwl_txq *txq )
{
  {
  if (trans_pcie->wd_timeout == 0UL) {
    return;
  } else {
  }
  if (txq->q.read_ptr == txq->q.write_ptr) {
    ldv_del_timer_498(& txq->stuck_timer);
  } else {
    ldv_mod_timer_499(& txq->stuck_timer, trans_pcie->wd_timeout + (unsigned long )jiffies);
  }
  return;
}
}
void iwl_trans_pcie_reclaim(struct iwl_trans *trans , int txq_id , int ssn , struct sk_buff_head *skbs )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_txq *txq ;
  int tfd_num ;
  struct iwl_queue *q ;
  int last_to_free ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int __ret_warn_on___0 ;
  int tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on___1 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  int tmp___10 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  txq = trans_pcie->txq + (unsigned long )txq_id;
  tfd_num = ssn & 255;
  q = & txq->q;
  __ret_warn_on = (int )trans_pcie->cmd_queue == txq_id;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                       1122);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    return;
  } else {
  }
  spin_lock_bh(& txq->lock);
  if ((unsigned int )txq->active == 0U) {
    __iwl_dbg(trans->dev, 2147483648U, 0, "iwl_trans_pcie_reclaim", "Q %d inactive - ignoring idx %d\n",
              txq_id, ssn);
    goto out;
  } else {
  }
  if (txq->q.read_ptr == tfd_num) {
    goto out;
  } else {
  }
  __iwl_dbg(trans->dev, 1073741824U, 0, "iwl_trans_pcie_reclaim", "[Q %d] %d -> %d (%d)\n",
            txq_id, txq->q.read_ptr, tfd_num, ssn);
  last_to_free = iwl_queue_dec_wrap(tfd_num);
  tmp___1 = iwl_queue_used((struct iwl_queue const *)q, last_to_free);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    __iwl_err(trans->dev, 0, 0, "%s: Read index for DMA queue txq id (%d), last_to_free %d is out of range [0-%d] %d %d.\n",
              "iwl_trans_pcie_reclaim", txq_id, last_to_free, 256, q->write_ptr, q->read_ptr);
    goto out;
  } else {
  }
  tmp___3 = skb_queue_empty((struct sk_buff_head const *)skbs);
  __ret_warn_on___0 = tmp___3 == 0;
  tmp___4 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___4 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                       1151);
  } else {
  }
  tmp___5 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___5 != 0L) {
    goto out;
  } else {
  }
  goto ldv_52525;
  ldv_52524:
  __ret_warn_once = (unsigned long )(txq->entries + (unsigned long )txq->q.read_ptr)->skb == (unsigned long )((struct sk_buff *)0);
  tmp___8 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___8 != 0L) {
    __ret_warn_on___1 = ! __warned;
    tmp___6 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
    if (tmp___6 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                         1158);
    } else {
    }
    tmp___7 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
    if (tmp___7 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  tmp___9 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___9 != 0L) {
    goto ldv_52523;
  } else {
  }
  __skb_queue_tail(skbs, (txq->entries + (unsigned long )txq->q.read_ptr)->skb);
  (txq->entries + (unsigned long )txq->q.read_ptr)->skb = (struct sk_buff *)0;
  iwl_pcie_txq_inval_byte_cnt_tbl(trans, txq);
  iwl_pcie_txq_free_tfd(trans, txq);
  ldv_52523:
  q->read_ptr = iwl_queue_inc_wrap(q->read_ptr);
  ldv_52525: ;
  if (q->read_ptr != tfd_num) {
    goto ldv_52524;
  } else {
  }
  iwl_pcie_txq_progress(trans_pcie, txq);
  tmp___10 = iwl_queue_space((struct iwl_queue const *)(& txq->q));
  if (tmp___10 > txq->q.low_mark) {
    iwl_wake_queue(trans, txq);
  } else {
  }
  out:
  spin_unlock_bh(& txq->lock);
  return;
}
}
static void iwl_pcie_cmdq_reclaim(struct iwl_trans *trans , int txq_id , int idx )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_txq *txq ;
  struct iwl_queue *q ;
  unsigned long flags ;
  int nfreed ;
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int __ret_warn_on___0 ;
  long tmp___5 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  txq = trans_pcie->txq + (unsigned long )txq_id;
  q = & txq->q;
  nfreed = 0;
  if (debug_locks != 0) {
    tmp = lock_is_held(& txq->lock.ldv_6347.ldv_6346.dep_map);
    if (tmp == 0) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  __ret_warn_on = tmp___0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                       1193);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (idx > 255) {
    __iwl_err(trans->dev, 0, 0, "%s: Read index for DMA queue txq id (%d), index %d is out of range [0-%d] %d %d.\n",
              "iwl_pcie_cmdq_reclaim", txq_id, idx, 256, q->write_ptr, q->read_ptr);
    return;
  } else {
    tmp___2 = iwl_queue_used((struct iwl_queue const *)q, idx);
    if (tmp___2) {
      tmp___3 = 0;
    } else {
      tmp___3 = 1;
    }
    if (tmp___3) {
      __iwl_err(trans->dev, 0, 0, "%s: Read index for DMA queue txq id (%d), index %d is out of range [0-%d] %d %d.\n",
                "iwl_pcie_cmdq_reclaim", txq_id, idx, 256, q->write_ptr, q->read_ptr);
      return;
    } else {
    }
  }
  idx = iwl_queue_inc_wrap(idx);
  goto ldv_52541;
  ldv_52540:
  tmp___4 = nfreed;
  nfreed = nfreed + 1;
  if (tmp___4 > 0) {
    __iwl_err(trans->dev, 0, 0, "HCMD skipped: index (%d) %d %d\n", idx, q->write_ptr,
              q->read_ptr);
    iwl_force_nmi(trans);
  } else {
  }
  q->read_ptr = iwl_queue_inc_wrap(q->read_ptr);
  ldv_52541: ;
  if (q->read_ptr != idx) {
    goto ldv_52540;
  } else {
  }
  if ((int )((trans->cfg)->base_params)->apmg_wake_up_wa && q->read_ptr == q->write_ptr) {
    ldv_spin_lock();
    __ret_warn_on___0 = ! trans_pcie->cmd_in_flight;
    tmp___5 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___5 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                         1216);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    trans_pcie->cmd_in_flight = 0;
    __iwl_trans_pcie_clear_bit(trans, 36U, 8U);
    spin_unlock_irqrestore(& trans_pcie->reg_lock, flags);
  } else {
  }
  iwl_pcie_txq_progress(trans_pcie, txq);
  return;
}
}
static int iwl_pcie_txq_set_ratid_map(struct iwl_trans *trans , u16 ra_tid , u16 txq_id )
{
  struct iwl_trans_pcie *trans_pcie ;
  u32 tbl_dw_addr ;
  u32 tbl_dw ;
  u16 scd_q2ratid ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  scd_q2ratid = (unsigned int )ra_tid & 511U;
  tbl_dw_addr = trans_pcie->scd_base_addr + ((u32 )(((int )txq_id + 1008) * 2) & 65532U);
  tbl_dw = iwl_trans_read_mem32(trans, tbl_dw_addr);
  if ((int )txq_id & 1) {
    tbl_dw = (u32 )((int )scd_q2ratid << 16) | (tbl_dw & 65535U);
  } else {
    tbl_dw = (u32 )scd_q2ratid | (tbl_dw & 4294901760U);
  }
  iwl_trans_write_mem32(trans, tbl_dw_addr, tbl_dw);
  return (0);
}
}
__inline static void iwl_pcie_txq_set_inactive(struct iwl_trans *trans , u16 txq_id )
{
  unsigned int tmp ;
  {
  tmp = SCD_QUEUE_STATUS_BITS((unsigned int )txq_id);
  iwl_write_prph(trans, tmp, 524288U);
  return;
}
}
void iwl_trans_pcie_txq_enable(struct iwl_trans *trans , int txq_id , int fifo , int sta_id ,
                               int tid , int frame_limit , u16 ssn )
{
  struct iwl_trans_pcie *trans_pcie ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  u16 ra_tid ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  tmp___2 = test_and_set_bit((long )txq_id, (unsigned long volatile *)(& trans_pcie->queue_used));
  if (tmp___2 != 0) {
    __ret_warn_once = 1;
    tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
    if (tmp___1 != 0L) {
      __ret_warn_on = ! __warned;
      tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp != 0L) {
        warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                          1273, "queue %d already used - expect issues", txq_id);
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
  } else {
  }
  iwl_pcie_txq_set_inactive(trans, (int )((u16 )txq_id));
  if ((int )trans_pcie->cmd_queue != txq_id) {
    iwl_set_bits_prph(trans, 10497256U, (u32 )(1UL << txq_id));
  } else {
  }
  if (sta_id >= 0) {
    ra_tid = ((int )((u16 )sta_id) << 4U) + (int )((u16 )tid);
    iwl_pcie_txq_set_ratid_map(trans, (int )ra_tid, (int )((u16 )txq_id));
    iwl_set_bits_prph(trans, 10497608U, (u32 )(1UL << txq_id));
    (trans_pcie->txq + (unsigned long )txq_id)->ampdu = 1;
  } else {
    iwl_clear_bits_prph(trans, 10497608U, (u32 )(1UL << txq_id));
    ssn = (u16 )(trans_pcie->txq + (unsigned long )txq_id)->q.read_ptr;
  }
  (trans_pcie->txq + (unsigned long )txq_id)->q.read_ptr = (int )ssn & 255;
  (trans_pcie->txq + (unsigned long )txq_id)->q.write_ptr = (int )ssn & 255;
  iwl_write_direct32(trans, 1120U, (u32 )(((int )ssn & 255) | (txq_id << 8)));
  tmp___3 = SCD_QUEUE_RDPTR((unsigned int )txq_id);
  iwl_write_prph(trans, tmp___3, (u32 )ssn);
  iwl_trans_write_mem32(trans, trans_pcie->scd_base_addr + (u32 )((txq_id + 192) * 8),
                        0U);
  iwl_trans_write_mem32(trans, (trans_pcie->scd_base_addr + (u32 )((txq_id + 192) * 8)) + 4U,
                        (u32 )((frame_limit & 127) | ((frame_limit << 16) & 8323072)));
  tmp___4 = SCD_QUEUE_STATUS_BITS((unsigned int )txq_id);
  iwl_write_prph(trans, tmp___4, (u32 )(fifo | 25100312));
  (trans_pcie->txq + (unsigned long )txq_id)->active = 1U;
  __iwl_dbg(trans->dev, 2147483648U, 0, "iwl_trans_pcie_txq_enable", "Activate queue %d on FIFO %d WrPtr: %d\n",
            txq_id, fifo, (int )ssn & 255);
  return;
}
}
void iwl_trans_pcie_txq_disable(struct iwl_trans *trans , int txq_id )
{
  struct iwl_trans_pcie *trans_pcie ;
  u32 stts_addr ;
  u32 zero_val[4U] ;
  bool __warned ;
  int __ret_warn_once ;
  int tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  stts_addr = trans_pcie->scd_base_addr + (u32 )((txq_id + 106) * 16);
  zero_val[0] = 0U;
  zero_val[1] = 0U;
  zero_val[2] = 0U;
  zero_val[3] = 0U;
  tmp___3 = test_and_clear_bit((long )txq_id, (unsigned long volatile *)(& trans_pcie->queue_used));
  if (tmp___3 == 0) {
    tmp = constant_test_bit(1L, (unsigned long const volatile *)(& trans->status));
    __ret_warn_once = tmp != 0;
    tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
    if (tmp___2 != 0L) {
      __ret_warn_on = ! __warned;
      tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___0 != 0L) {
        warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                          1348, "queue %d not used", txq_id);
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
    return;
  } else {
  }
  iwl_pcie_txq_set_inactive(trans, (int )((u16 )txq_id));
  iwl_trans_write_mem(trans, stts_addr, (void const *)(& zero_val), 4);
  iwl_pcie_txq_unmap(trans, txq_id);
  (trans_pcie->txq + (unsigned long )txq_id)->ampdu = 0;
  __iwl_dbg(trans->dev, 2147483648U, 0, "iwl_trans_pcie_txq_disable", "Deactivate queue %d\n",
            txq_id);
  return;
}
}
static int iwl_pcie_enqueue_hcmd(struct iwl_trans *trans , struct iwl_host_cmd *cmd )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_txq *txq ;
  struct iwl_queue *q ;
  struct iwl_device_cmd *out_cmd ;
  struct iwl_cmd_meta *out_meta ;
  unsigned long flags ;
  void *dup_buf ;
  dma_addr_t phys_addr ;
  int idx ;
  u16 copy_size ;
  u16 cmd_size ;
  u16 scratch_size ;
  bool had_nocopy ;
  int i ;
  int ret ;
  u32 cmd_pos ;
  u8 const *cmddata[2U] ;
  u16 cmdlen[2U] ;
  int copy ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  int __ret_warn_on___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int __ret_warn_on___1 ;
  long tmp___3 ;
  long tmp___4 ;
  int __ret_warn_on___2 ;
  char const *tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  int tmp___8 ;
  u8 tmp___9 ;
  int copy___0 ;
  size_t __len ;
  void *__ret ;
  int __min1 ;
  int __min2 ;
  size_t __len___0 ;
  void *__ret___0 ;
  char const *tmp___10 ;
  int __min1___0 ;
  int __min2___0 ;
  size_t __len___1 ;
  void *__ret___1 ;
  dma_addr_t tmp___11 ;
  int tmp___12 ;
  void const *data ;
  int tmp___13 ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on___3 ;
  long tmp___14 ;
  long tmp___15 ;
  long tmp___16 ;
  long tmp___17 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  txq = trans_pcie->txq + (unsigned long )trans_pcie->cmd_queue;
  q = & txq->q;
  dup_buf = (void *)0;
  had_nocopy = 0;
  copy_size = 4U;
  cmd_size = 4U;
  i = 0;
  goto ldv_52622;
  ldv_52621:
  cmddata[i] = (u8 const *)cmd->data[i];
  cmdlen[i] = cmd->len[i];
  if ((unsigned int )cmd->len[i] == 0U) {
    goto ldv_52612;
  } else {
  }
  if ((unsigned int )copy_size <= 15U) {
    copy = 16 - (int )copy_size;
    if ((int )cmdlen[i] < copy) {
      copy = (int )cmdlen[i];
    } else {
    }
    cmdlen[i] = (int )cmdlen[i] - (int )((u16 )copy);
    cmddata[i] = cmddata[i] + (unsigned long )copy;
    copy_size = (int )((u16 )copy) + (int )copy_size;
  } else {
  }
  if ((int )cmd->dataflags[i] & 1) {
    had_nocopy = 1;
    __ret_warn_on = ((int )cmd->dataflags[i] & 2) != 0;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                         1419);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      idx = -22;
      goto free_dup_buf;
    } else {
    }
  } else
  if (((int )cmd->dataflags[i] & 2) != 0) {
    had_nocopy = 1;
    __ret_warn_on___0 = (unsigned long )dup_buf != (unsigned long )((void *)0);
    tmp___1 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___1 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                         1431);
    } else {
    }
    tmp___2 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___2 != 0L) {
      idx = -22;
      goto free_dup_buf;
    } else {
    }
    dup_buf = kmemdup((void const *)cmddata[i], (size_t )cmdlen[i], 32U);
    if ((unsigned long )dup_buf == (unsigned long )((void *)0)) {
      return (-12);
    } else {
    }
  } else {
    __ret_warn_on___1 = (int )had_nocopy;
    tmp___3 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
    if (tmp___3 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                         1442);
    } else {
    }
    tmp___4 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
    if (tmp___4 != 0L) {
      idx = -22;
      goto free_dup_buf;
    } else {
    }
    copy_size = (int )cmdlen[i] + (int )copy_size;
  }
  cmd_size = (int )cmd->len[i] + (int )cmd_size;
  ldv_52612:
  i = i + 1;
  ldv_52622: ;
  if (i <= 1) {
    goto ldv_52621;
  } else {
  }
  __ret_warn_on___2 = (unsigned int )copy_size > 324U;
  tmp___6 = ldv__builtin_expect(__ret_warn_on___2 != 0, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = get_cmd_string(trans_pcie, (int )cmd->id);
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                      1459, "Command %s (%#x) is too large (%d bytes)\n", tmp___5,
                      (int )cmd->id, (int )copy_size);
  } else {
  }
  tmp___7 = ldv__builtin_expect(__ret_warn_on___2 != 0, 0L);
  if (tmp___7 != 0L) {
    idx = -22;
    goto free_dup_buf;
  } else {
  }
  spin_lock_bh(& txq->lock);
  tmp___8 = iwl_queue_space((struct iwl_queue const *)q);
  if (tmp___8 < ((int )cmd->flags & 1 ? 2 : 1)) {
    spin_unlock_bh(& txq->lock);
    __iwl_err(trans->dev, 0, 0, "No space in command queue\n");
    iwl_op_mode_cmd_queue_full(trans->op_mode);
    idx = -28;
    goto free_dup_buf;
  } else {
  }
  tmp___9 = get_cmd_index(q, (u32 )q->write_ptr);
  idx = (int )tmp___9;
  out_cmd = (txq->entries + (unsigned long )idx)->cmd;
  out_meta = & (txq->entries + (unsigned long )idx)->meta;
  memset((void *)out_meta, 0, 16UL);
  if ((cmd->flags & 2U) != 0U) {
    out_meta->source = cmd;
  } else {
  }
  out_cmd->hdr.cmd = cmd->id;
  out_cmd->hdr.flags = 0U;
  out_cmd->hdr.sequence = (unsigned short )((int )((short )(((int )trans_pcie->cmd_queue & 31) << 8)) | ((int )((short )q->write_ptr) & 255));
  cmd_pos = 4U;
  copy_size = 4U;
  i = 0;
  goto ldv_52638;
  ldv_52637: ;
  if ((unsigned int )cmd->len[i] == 0U) {
    goto ldv_52627;
  } else {
  }
  if (((int )cmd->dataflags[i] & 3) == 0) {
    copy___0 = (int )cmd->len[i];
    __len = (size_t )copy___0;
    __ret = memcpy((void *)out_cmd + (unsigned long )cmd_pos, cmd->data[i],
                             __len);
    cmd_pos = cmd_pos + (u32 )copy___0;
    copy_size = (int )((u16 )copy___0) + (int )copy_size;
    goto ldv_52627;
  } else {
  }
  __min1 = (int )(324U - cmd_pos);
  __min2 = (int )cmd->len[i];
  copy___0 = __min1 < __min2 ? __min1 : __min2;
  __len___0 = (size_t )copy___0;
  __ret___0 = memcpy((void *)out_cmd + (unsigned long )cmd_pos, cmd->data[i],
                               __len___0);
  cmd_pos = cmd_pos + (u32 )copy___0;
  if ((unsigned int )copy_size <= 15U) {
    copy___0 = 16 - (int )copy_size;
    if ((int )cmd->len[i] < copy___0) {
      copy___0 = (int )cmd->len[i];
    } else {
    }
    copy_size = (int )((u16 )copy___0) + (int )copy_size;
  } else {
  }
  ldv_52627:
  i = i + 1;
  ldv_52638: ;
  if (i <= 1) {
    goto ldv_52637;
  } else {
  }
  tmp___10 = get_cmd_string(trans_pcie, (int )out_cmd->hdr.cmd);
  __iwl_dbg(trans->dev, 4U, 0, "iwl_pcie_enqueue_hcmd", "Sending command %s (#%x), seq: 0x%04X, %d bytes at %d[%d]:%d\n",
            tmp___10, (int )out_cmd->hdr.cmd, (int )out_cmd->hdr.sequence, (int )cmd_size,
            q->write_ptr, idx, (int )trans_pcie->cmd_queue);
  __min1___0 = (int )copy_size;
  __min2___0 = 16;
  scratch_size = (u16 )(__min1___0 < __min2___0 ? __min1___0 : __min2___0);
  __len___1 = (size_t )scratch_size;
  __ret___1 = memcpy((void *)txq->scratchbufs + (unsigned long )q->write_ptr,
                               (void const *)(& out_cmd->hdr), __len___1);
  tmp___11 = iwl_pcie_get_scratchbuf_dma(txq, q->write_ptr);
  iwl_pcie_txq_build_tfd(trans, txq, tmp___11, (int )scratch_size, 1);
  if ((int )copy_size > (int )scratch_size) {
    phys_addr = dma_map_single_attrs(trans->dev, (void *)(& out_cmd->hdr) + (unsigned long )scratch_size,
                                     (size_t )((int )copy_size - (int )scratch_size),
                                     1, (struct dma_attrs *)0);
    tmp___12 = dma_mapping_error(trans->dev, phys_addr);
    if (tmp___12 != 0) {
      iwl_pcie_tfd_unmap(trans, out_meta, txq->tfds + (unsigned long )q->write_ptr);
      idx = -12;
      goto out;
    } else {
    }
    iwl_pcie_txq_build_tfd(trans, txq, phys_addr, (int )copy_size - (int )scratch_size,
                           0);
  } else {
  }
  i = 0;
  goto ldv_52651;
  ldv_52650:
  data = (void const *)cmddata[i];
  if ((unsigned int )cmdlen[i] == 0U) {
    goto ldv_52649;
  } else {
  }
  if (((int )cmd->dataflags[i] & 3) == 0) {
    goto ldv_52649;
  } else {
  }
  if (((int )cmd->dataflags[i] & 2) != 0) {
    data = (void const *)dup_buf;
  } else {
  }
  phys_addr = dma_map_single_attrs(trans->dev, (void *)data, (size_t )cmdlen[i], 1,
                                   (struct dma_attrs *)0);
  tmp___13 = dma_mapping_error(trans->dev, phys_addr);
  if (tmp___13 != 0) {
    iwl_pcie_tfd_unmap(trans, out_meta, txq->tfds + (unsigned long )q->write_ptr);
    idx = -12;
    goto out;
  } else {
  }
  iwl_pcie_txq_build_tfd(trans, txq, phys_addr, (int )cmdlen[i], 0);
  ldv_52649:
  i = i + 1;
  ldv_52651: ;
  if (i <= 1) {
    goto ldv_52650;
  } else {
  }
  out_meta->flags = cmd->flags;
  __ret_warn_once = (unsigned long )(txq->entries + (unsigned long )idx)->free_buf != (unsigned long )((void const *)0);
  tmp___16 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___16 != 0L) {
    __ret_warn_on___3 = ! __warned;
    tmp___14 = ldv__builtin_expect(__ret_warn_on___3 != 0, 0L);
    if (tmp___14 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                         1585);
    } else {
    }
    tmp___15 = ldv__builtin_expect(__ret_warn_on___3 != 0, 0L);
    if (tmp___15 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  tmp___17 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___17 != 0L) {
    kfree((txq->entries + (unsigned long )idx)->free_buf);
  } else {
  }
  (txq->entries + (unsigned long )idx)->free_buf = (void const *)dup_buf;
  trace_iwlwifi_dev_hcmd((struct device const *)trans->dev, cmd, (int )cmd_size,
                         & out_cmd->hdr);
  if (q->read_ptr == q->write_ptr && trans_pcie->wd_timeout != 0UL) {
    ldv_mod_timer_500(& txq->stuck_timer, trans_pcie->wd_timeout + (unsigned long )jiffies);
  } else {
  }
  ldv_spin_lock();
  if ((int )((trans->cfg)->base_params)->apmg_wake_up_wa && ! trans_pcie->cmd_in_flight) {
    trans_pcie->cmd_in_flight = 1;
    __iwl_trans_pcie_set_bit(trans, 36U, 8U);
    ret = iwl_poll_bit(trans, 36U, 1U, 17U, 15000);
    if (ret < 0) {
      __iwl_trans_pcie_clear_bit(trans, 36U, 8U);
      spin_unlock_irqrestore(& trans_pcie->reg_lock, flags);
      trans_pcie->cmd_in_flight = 0;
      idx = -5;
      goto out;
    } else {
    }
  } else {
  }
  q->write_ptr = iwl_queue_inc_wrap(q->write_ptr);
  iwl_pcie_txq_inc_wr_ptr(trans, txq);
  spin_unlock_irqrestore(& trans_pcie->reg_lock, flags);
  out:
  spin_unlock_bh(& txq->lock);
  free_dup_buf: ;
  if (idx < 0) {
    kfree((void const *)dup_buf);
  } else {
  }
  return (idx);
}
}
void iwl_pcie_hcmd_complete(struct iwl_trans *trans , struct iwl_rx_cmd_buffer *rxb ,
                            int handler_status )
{
  struct iwl_rx_packet *pkt ;
  void *tmp ;
  u16 sequence ;
  int txq_id ;
  int index ;
  int cmd_index ;
  struct iwl_device_cmd *cmd ;
  struct iwl_cmd_meta *meta ;
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_txq *txq ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  u8 tmp___2 ;
  struct page *p ;
  struct page *tmp___3 ;
  void *tmp___4 ;
  char const *tmp___5 ;
  int tmp___6 ;
  char const *tmp___7 ;
  {
  tmp = rxb_addr(rxb);
  pkt = (struct iwl_rx_packet *)tmp;
  sequence = pkt->hdr.sequence;
  txq_id = ((int )sequence >> 8) & 31;
  index = (int )sequence & 255;
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  txq = trans_pcie->txq + (unsigned long )trans_pcie->cmd_queue;
  __ret_warn_on = (int )trans_pcie->cmd_queue != txq_id;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                      1667, "wrong command queue %d (should be %d), sequence 0x%X readp=%d writep=%d\n",
                      txq_id, (int )trans_pcie->cmd_queue, (int )sequence, (trans_pcie->txq + (unsigned long )trans_pcie->cmd_queue)->q.read_ptr,
                      (trans_pcie->txq + (unsigned long )trans_pcie->cmd_queue)->q.write_ptr);
  } else {
  }
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    print_hex_dump("\v", "iwl data: ", 2, 16, 1, (void const *)pkt, 32UL, 1);
    return;
  } else {
  }
  spin_lock_bh(& txq->lock);
  tmp___2 = get_cmd_index(& txq->q, (u32 )index);
  cmd_index = (int )tmp___2;
  cmd = (txq->entries + (unsigned long )cmd_index)->cmd;
  meta = & (txq->entries + (unsigned long )cmd_index)->meta;
  iwl_pcie_tfd_unmap(trans, meta, txq->tfds + (unsigned long )index);
  if ((meta->flags & 2U) != 0U) {
    tmp___3 = rxb_steal_page(rxb);
    p = tmp___3;
    (meta->source)->resp_pkt = pkt;
    tmp___4 = lowmem_page_address((struct page const *)p);
    (meta->source)->_rx_page_addr = (unsigned long )tmp___4;
    (meta->source)->_rx_page_order = trans_pcie->rx_page_order;
    (meta->source)->handler_status = handler_status;
  } else {
  }
  iwl_pcie_cmdq_reclaim(trans, txq_id, index);
  if ((meta->flags & 1U) == 0U) {
    tmp___6 = constant_test_bit(0L, (unsigned long const volatile *)(& trans->status));
    if (tmp___6 == 0) {
      tmp___5 = get_cmd_string(trans_pcie, (int )cmd->hdr.cmd);
      __iwl_warn(trans->dev, "HCMD_ACTIVE already clear for command %s\n", tmp___5);
    } else {
    }
    clear_bit(0L, (unsigned long volatile *)(& trans->status));
    tmp___7 = get_cmd_string(trans_pcie, (int )cmd->hdr.cmd);
    __iwl_dbg(trans->dev, 1U, 0, "iwl_pcie_hcmd_complete", "Clearing HCMD_ACTIVE for command %s\n",
              tmp___7);
    __wake_up(& trans_pcie->wait_command_queue, 3U, 1, (void *)0);
  } else {
  }
  meta->flags = 0U;
  spin_unlock_bh(& txq->lock);
  return;
}
}
static int iwl_pcie_send_hcmd_async(struct iwl_trans *trans , struct iwl_host_cmd *cmd )
{
  struct iwl_trans_pcie *trans_pcie ;
  int ret ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  char const *tmp___1 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  __ret_warn_on = (cmd->flags & 2U) != 0U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                       1718);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    return (-22);
  } else {
  }
  ret = iwl_pcie_enqueue_hcmd(trans, cmd);
  if (ret < 0) {
    tmp___1 = get_cmd_string(trans_pcie, (int )cmd->id);
    __iwl_err(trans->dev, 0, 0, "Error sending %s: enqueue_hcmd failed: %d\n", tmp___1,
              ret);
    return (ret);
  } else {
  }
  return (0);
}
}
static int iwl_pcie_send_hcmd_sync(struct iwl_trans *trans , struct iwl_host_cmd *cmd )
{
  struct iwl_trans_pcie *trans_pcie ;
  int cmd_idx ;
  int ret ;
  char const *tmp ;
  int __ret_warn_on ;
  int tmp___0 ;
  char const *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  char const *tmp___4 ;
  char const *tmp___5 ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___6 ;
  bool __cond ;
  int tmp___7 ;
  bool __cond___0 ;
  int tmp___8 ;
  struct iwl_txq *txq ;
  struct iwl_queue *q ;
  unsigned int tmp___9 ;
  char const *tmp___10 ;
  char const *tmp___11 ;
  char const *tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  char const *tmp___15 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  tmp = get_cmd_string(trans_pcie, (int )cmd->id);
  __iwl_dbg(trans->dev, 1U, 0, "iwl_pcie_send_hcmd_sync", "Attempting to send sync command %s\n",
            tmp);
  tmp___0 = test_and_set_bit(0L, (unsigned long volatile *)(& trans->status));
  __ret_warn_on = tmp___0 != 0;
  tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = get_cmd_string(trans_pcie, (int )cmd->id);
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                      1744, "Command %s: a command is already active!\n", tmp___1);
  } else {
  }
  tmp___3 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___3 != 0L) {
    return (-5);
  } else {
  }
  tmp___4 = get_cmd_string(trans_pcie, (int )cmd->id);
  __iwl_dbg(trans->dev, 1U, 0, "iwl_pcie_send_hcmd_sync", "Setting HCMD_ACTIVE for command %s\n",
            tmp___4);
  cmd_idx = iwl_pcie_enqueue_hcmd(trans, cmd);
  if (cmd_idx < 0) {
    ret = cmd_idx;
    clear_bit(0L, (unsigned long volatile *)(& trans->status));
    tmp___5 = get_cmd_string(trans_pcie, (int )cmd->id);
    __iwl_err(trans->dev, 0, 0, "Error sending %s: enqueue_hcmd failed: %d\n", tmp___5,
              ret);
    return (ret);
  } else {
  }
  __ret = 500L;
  tmp___8 = constant_test_bit(0L, (unsigned long const volatile *)(& trans->status));
  __cond___0 = tmp___8 == 0;
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    __ret___0 = 500L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_52704:
    tmp___6 = prepare_to_wait_event(& trans_pcie->wait_command_queue, & __wait, 2);
    __int = tmp___6;
    tmp___7 = constant_test_bit(0L, (unsigned long const volatile *)(& trans->status));
    __cond = tmp___7 == 0;
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_52703;
    } else {
    }
    __ret___0 = schedule_timeout(__ret___0);
    goto ldv_52704;
    ldv_52703:
    finish_wait(& trans_pcie->wait_command_queue, & __wait);
    __ret = __ret___0;
  } else {
  }
  ret = (int )__ret;
  if (ret == 0) {
    txq = trans_pcie->txq + (unsigned long )trans_pcie->cmd_queue;
    q = & txq->q;
    tmp___9 = jiffies_to_msecs(500UL);
    tmp___10 = get_cmd_string(trans_pcie, (int )cmd->id);
    __iwl_err(trans->dev, 0, 0, "Error sending %s: time out after %dms.\n", tmp___10,
              tmp___9);
    __iwl_err(trans->dev, 0, 0, "Current CMD queue read_ptr %d write_ptr %d\n", q->read_ptr,
              q->write_ptr);
    clear_bit(0L, (unsigned long volatile *)(& trans->status));
    tmp___11 = get_cmd_string(trans_pcie, (int )cmd->id);
    __iwl_dbg(trans->dev, 1U, 0, "iwl_pcie_send_hcmd_sync", "Clearing HCMD_ACTIVE for command %s\n",
              tmp___11);
    ret = -110;
    iwl_force_nmi(trans);
    iwl_trans_fw_error(trans);
    goto cancel;
  } else {
  }
  tmp___13 = constant_test_bit(5L, (unsigned long const volatile *)(& trans->status));
  if (tmp___13 != 0) {
    tmp___12 = get_cmd_string(trans_pcie, (int )cmd->id);
    __iwl_err(trans->dev, 0, 0, "FW error in SYNC CMD %s\n", tmp___12);
    dump_stack();
    ret = -5;
    goto cancel;
  } else {
  }
  if ((cmd->flags & 4U) == 0U) {
    tmp___14 = constant_test_bit(4L, (unsigned long const volatile *)(& trans->status));
    if (tmp___14 != 0) {
      __iwl_dbg(trans->dev, 131072U, 0, "iwl_pcie_send_hcmd_sync", "RFKILL in SYNC CMD... no rsp\n");
      ret = -132;
      goto cancel;
    } else {
    }
  } else {
  }
  if ((cmd->flags & 2U) != 0U && (unsigned long )cmd->resp_pkt == (unsigned long )((struct iwl_rx_packet *)0)) {
    tmp___15 = get_cmd_string(trans_pcie, (int )cmd->id);
    __iwl_err(trans->dev, 0, 0, "Error: Response NULL in \'%s\'\n", tmp___15);
    ret = -5;
    goto cancel;
  } else {
  }
  return (0);
  cancel: ;
  if ((cmd->flags & 2U) != 0U) {
    ((trans_pcie->txq + (unsigned long )trans_pcie->cmd_queue)->entries + (unsigned long )cmd_idx)->meta.flags = ((trans_pcie->txq + (unsigned long )trans_pcie->cmd_queue)->entries + (unsigned long )cmd_idx)->meta.flags & 4294967293U;
  } else {
  }
  if ((unsigned long )cmd->resp_pkt != (unsigned long )((struct iwl_rx_packet *)0)) {
    iwl_free_resp(cmd);
    cmd->resp_pkt = (struct iwl_rx_packet *)0;
  } else {
  }
  return (ret);
}
}
int iwl_trans_pcie_send_hcmd(struct iwl_trans *trans , struct iwl_host_cmd *cmd )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if ((cmd->flags & 4U) == 0U) {
    tmp = constant_test_bit(4L, (unsigned long const volatile *)(& trans->status));
    if (tmp != 0) {
      __iwl_dbg(trans->dev, 131072U, 0, "iwl_trans_pcie_send_hcmd", "Dropping CMD 0x%x: RF KILL\n",
                (int )cmd->id);
      return (-132);
    } else {
    }
  } else {
  }
  if ((int )cmd->flags & 1) {
    tmp___0 = iwl_pcie_send_hcmd_async(trans, cmd);
    return (tmp___0);
  } else {
  }
  tmp___1 = iwl_pcie_send_hcmd_sync(trans, cmd);
  return (tmp___1);
}
}
int iwl_trans_pcie_tx(struct iwl_trans *trans , struct sk_buff *skb , struct iwl_device_cmd *dev_cmd ,
                      int txq_id )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct ieee80211_hdr *hdr ;
  struct iwl_tx_cmd *tx_cmd ;
  struct iwl_cmd_meta *out_meta ;
  struct iwl_txq *txq ;
  struct iwl_queue *q ;
  dma_addr_t tb0_phys ;
  dma_addr_t tb1_phys ;
  dma_addr_t scratch_phys ;
  void *tb1_addr ;
  u16 len ;
  u16 tb1_len ;
  u16 tb2_len ;
  bool wait_write_ptr ;
  __le16 fc ;
  u8 hdr_len ;
  unsigned int tmp ;
  u16 wifi_seq ;
  bool __warned ;
  int __ret_warn_once ;
  int tmp___0 ;
  int __ret_warn_on ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  bool __warned___0 ;
  int __ret_warn_once___0 ;
  int __ret_warn_on___0 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  size_t __len ;
  void *__ret ;
  int tmp___8 ;
  long tmp___9 ;
  dma_addr_t tb2_phys ;
  dma_addr_t tmp___10 ;
  int tmp___11 ;
  long tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  hdr = (struct ieee80211_hdr *)skb->data;
  tx_cmd = (struct iwl_tx_cmd *)(& dev_cmd->payload);
  fc = hdr->frame_control;
  tmp = ieee80211_hdrlen((int )fc);
  hdr_len = (u8 )tmp;
  txq = trans_pcie->txq + (unsigned long )txq_id;
  q = & txq->q;
  tmp___0 = variable_test_bit((long )txq_id, (unsigned long const volatile *)(& trans_pcie->queue_used));
  __ret_warn_once = tmp___0 == 0;
  tmp___3 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___3 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                        1867, "TX on unused queue %d\n", txq_id);
    } else {
    }
    tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___2 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  tmp___4 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___4 != 0L) {
    return (-22);
  } else {
  }
  spin_lock(& txq->lock);
  wifi_seq = (u16 )((int )hdr->seq_ctrl >> 4);
  __ret_warn_once___0 = (int )txq->ampdu && ((int )wifi_seq & 255) != q->write_ptr;
  tmp___7 = ldv__builtin_expect(__ret_warn_once___0 != 0, 0L);
  if (tmp___7 != 0L) {
    __ret_warn_on___0 = ! __warned___0;
    tmp___5 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___5 != 0L) {
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/tx.o.c.prepared",
                        1881, "Q: %d WiFi Seq %d tfdNum %d", txq_id, (int )wifi_seq,
                        q->write_ptr);
    } else {
    }
    tmp___6 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___6 != 0L) {
      __warned___0 = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once___0 != 0, 0L);
  (txq->entries + (unsigned long )q->write_ptr)->skb = skb;
  (txq->entries + (unsigned long )q->write_ptr)->cmd = dev_cmd;
  dev_cmd->hdr.sequence = (unsigned short )((int )((short )((txq_id & 31) << 8)) | ((int )((short )q->write_ptr) & 255));
  tb0_phys = iwl_pcie_get_scratchbuf_dma(txq, q->write_ptr);
  scratch_phys = tb0_phys + 12ULL;
  tx_cmd->dram_lsb_ptr = (unsigned int )scratch_phys;
  tx_cmd->dram_msb_ptr = iwl_get_dma_hi_addr(scratch_phys);
  out_meta = & (txq->entries + (unsigned long )q->write_ptr)->meta;
  len = (unsigned int )((u16 )hdr_len) + 44U;
  tb1_len = (unsigned int )((u16 )((unsigned int )len + 3U)) & 65532U;
  if ((int )tb1_len != (int )len) {
    tx_cmd->tx_flags = tx_cmd->tx_flags | 1048576U;
  } else {
  }
  __len = 16UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)txq->scratchbufs + (unsigned long )q->write_ptr, (void const *)(& dev_cmd->hdr),
                     __len);
  } else {
    __ret = memcpy((void *)txq->scratchbufs + (unsigned long )q->write_ptr,
                             (void const *)(& dev_cmd->hdr), __len);
  }
  iwl_pcie_txq_build_tfd(trans, txq, tb0_phys, 16, 1);
  tb1_addr = (void *)(& dev_cmd->hdr) + 16U;
  tb1_phys = dma_map_single_attrs(trans->dev, tb1_addr, (size_t )tb1_len, 1, (struct dma_attrs *)0);
  tmp___8 = dma_mapping_error(trans->dev, tb1_phys);
  tmp___9 = ldv__builtin_expect(tmp___8 != 0, 0L);
  if (tmp___9 != 0L) {
    goto out_err;
  } else {
  }
  iwl_pcie_txq_build_tfd(trans, txq, tb1_phys, (int )tb1_len, 0);
  tb2_len = (int )((u16 )skb->len) - (int )((u16 )hdr_len);
  if ((unsigned int )tb2_len != 0U) {
    tmp___10 = dma_map_single_attrs(trans->dev, (void *)skb->data + (unsigned long )hdr_len,
                                    (size_t )tb2_len, 1, (struct dma_attrs *)0);
    tb2_phys = tmp___10;
    tmp___11 = dma_mapping_error(trans->dev, tb2_phys);
    tmp___12 = ldv__builtin_expect(tmp___11 != 0, 0L);
    if (tmp___12 != 0L) {
      iwl_pcie_tfd_unmap(trans, out_meta, txq->tfds + (unsigned long )q->write_ptr);
      goto out_err;
    } else {
    }
    iwl_pcie_txq_build_tfd(trans, txq, tb2_phys, (int )tb2_len, 0);
  } else {
  }
  iwl_pcie_txq_update_byte_cnt_tbl(trans, txq, (int )tx_cmd->len);
  trace_iwlwifi_dev_tx((struct device const *)trans->dev, skb, (void *)txq->tfds + (unsigned long )txq->q.write_ptr,
                       128UL, (void *)(& dev_cmd->hdr), (size_t )((int )tb1_len + 16),
                       (void *)skb->data + (unsigned long )hdr_len, (size_t )tb2_len);
  trace_iwlwifi_dev_tx_data((struct device const *)trans->dev, skb, (void *)skb->data + (unsigned long )hdr_len,
                            (size_t )tb2_len);
  tmp___13 = ieee80211_has_morefrags((int )fc);
  wait_write_ptr = tmp___13 != 0;
  if (((int )txq->need_update && q->read_ptr == q->write_ptr) && trans_pcie->wd_timeout != 0UL) {
    ldv_mod_timer_501(& txq->stuck_timer, trans_pcie->wd_timeout + (unsigned long )jiffies);
  } else {
  }
  q->write_ptr = iwl_queue_inc_wrap(q->write_ptr);
  if (! wait_write_ptr) {
    iwl_pcie_txq_inc_wr_ptr(trans, txq);
  } else {
  }
  tmp___14 = iwl_queue_space((struct iwl_queue const *)q);
  if (tmp___14 < q->high_mark) {
    if ((int )wait_write_ptr) {
      iwl_pcie_txq_inc_wr_ptr(trans, txq);
    } else {
      iwl_stop_queue(trans, txq);
    }
  } else {
  }
  spin_unlock(& txq->lock);
  return (0);
  out_err:
  spin_unlock(& txq->lock);
  return (-1);
}
}
void disable_suitable_timer_3(struct timer_list *timer )
{
  {
  if (ldv_timer_3_0 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_3_0) {
    ldv_timer_3_0 = 0;
    return;
  } else {
  }
  if (ldv_timer_3_1 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_3_1) {
    ldv_timer_3_1 = 0;
    return;
  } else {
  }
  if (ldv_timer_3_2 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_3_2) {
    ldv_timer_3_2 = 0;
    return;
  } else {
  }
  if (ldv_timer_3_3 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_3_3) {
    ldv_timer_3_3 = 0;
    return;
  } else {
  }
  return;
}
}
void activate_suitable_timer_3(struct timer_list *timer , unsigned long data )
{
  {
  if (ldv_timer_3_0 == 0 || ldv_timer_3_0 == 2) {
    ldv_timer_list_3_0 = timer;
    ldv_timer_list_3_0->data = data;
    ldv_timer_3_0 = 1;
    return;
  } else {
  }
  if (ldv_timer_3_1 == 0 || ldv_timer_3_1 == 2) {
    ldv_timer_list_3_1 = timer;
    ldv_timer_list_3_1->data = data;
    ldv_timer_3_1 = 1;
    return;
  } else {
  }
  if (ldv_timer_3_2 == 0 || ldv_timer_3_2 == 2) {
    ldv_timer_list_3_2 = timer;
    ldv_timer_list_3_2->data = data;
    ldv_timer_3_2 = 1;
    return;
  } else {
  }
  if (ldv_timer_3_3 == 0 || ldv_timer_3_3 == 2) {
    ldv_timer_list_3_3 = timer;
    ldv_timer_list_3_3->data = data;
    ldv_timer_3_3 = 1;
    return;
  } else {
  }
  return;
}
}
int reg_timer_3(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data )
{
  {
  if ((unsigned long )function == (unsigned long )(& iwl_pcie_txq_stuck_timer)) {
    activate_suitable_timer_3(timer, data);
  } else {
  }
  return (0);
}
}
void choose_timer_3(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_timer_3_0 == 1) {
    ldv_timer_3_0 = 2;
    ldv_timer_3(ldv_timer_3_0, ldv_timer_list_3_0);
  } else {
  }
  goto ldv_52770;
  case 1: ;
  if (ldv_timer_3_1 == 1) {
    ldv_timer_3_1 = 2;
    ldv_timer_3(ldv_timer_3_1, ldv_timer_list_3_1);
  } else {
  }
  goto ldv_52770;
  case 2: ;
  if (ldv_timer_3_2 == 1) {
    ldv_timer_3_2 = 2;
    ldv_timer_3(ldv_timer_3_2, ldv_timer_list_3_2);
  } else {
  }
  goto ldv_52770;
  case 3: ;
  if (ldv_timer_3_3 == 1) {
    ldv_timer_3_3 = 2;
    ldv_timer_3(ldv_timer_3_3, ldv_timer_list_3_3);
  } else {
  }
  goto ldv_52770;
  default:
  ldv_stop();
  }
  ldv_52770: ;
  return;
}
}
void timer_init_3(void)
{
  {
  ldv_timer_3_0 = 0;
  ldv_timer_3_1 = 0;
  ldv_timer_3_2 = 0;
  ldv_timer_3_3 = 0;
  return;
}
}
void activate_pending_timer_3(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_3_0 == (unsigned long )timer) {
    if (ldv_timer_3_0 == 2 || pending_flag != 0) {
      ldv_timer_list_3_0 = timer;
      ldv_timer_list_3_0->data = data;
      ldv_timer_3_0 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_3_1 == (unsigned long )timer) {
    if (ldv_timer_3_1 == 2 || pending_flag != 0) {
      ldv_timer_list_3_1 = timer;
      ldv_timer_list_3_1->data = data;
      ldv_timer_3_1 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_3_2 == (unsigned long )timer) {
    if (ldv_timer_3_2 == 2 || pending_flag != 0) {
      ldv_timer_list_3_2 = timer;
      ldv_timer_list_3_2->data = data;
      ldv_timer_3_2 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_3_3 == (unsigned long )timer) {
    if (ldv_timer_3_3 == 2 || pending_flag != 0) {
      ldv_timer_list_3_3 = timer;
      ldv_timer_list_3_3->data = data;
      ldv_timer_3_3 = 1;
    } else {
    }
    return;
  } else {
  }
  activate_suitable_timer_3(timer, data);
  return;
}
}
void ldv_timer_3(int state , struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  iwl_pcie_txq_stuck_timer(timer->data);
  LDV_IN_INTERRUPT = 1;
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_470(lock, flags);
  return;
}
}
void *ldv_calloc(size_t nmemb , size_t size ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  ldv_kcalloc_476(n, size, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_484(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_486(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_488(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_489(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_490(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_491(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_492(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_493(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_request_threaded_irq_494(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_threaded_irq(ldv_func_arg1, handler, thread_fn, ldv_func_arg4, ldv_func_arg5,
                             ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg6);
  } else {
  }
  return (ldv_func_res);
}
}
struct sk_buff *ldv_skb_clone_495(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_del_timer_sync_497(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_498(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_499(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_3(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_500(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_3(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_501(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_3(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
extern void might_fault(void) ;
extern int sscanf(char const * , char const * , ...) ;
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void spin_lock_bh(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void spin_unlock_bh(spinlock_t *lock ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
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
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
extern void iounmap(void volatile * ) ;
extern struct kmem_cache *kmem_cache_create(char const * , size_t , size_t , unsigned long ,
                                            void (*)(void * ) ) ;
extern void kmem_cache_destroy(struct kmem_cache * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern size_t __VERIFIER_nondet_size_t(void) ;
extern loff_t __VERIFIER_nondet_loff_t(void) ;
extern u32 __VERIFIER_nondet_u32(void) ;
extern u16 __VERIFIER_nondet_u16(void) ;
extern u8 __VERIFIER_nondet_u8(void) ;
void disable_suitable_irq_2(int line , void *data ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) , irqreturn_t (*thread_fn)(int ,
                                                                                  void * ) ) ;
void disable_suitable_irq_1(int line , void *data ) ;
void activate_suitable_irq_1(int line , void *data ) ;
int ldv_irq_2(int state , int line , void *data ) ;
void choose_interrupt_2(void) ;
void choose_interrupt_1(void) ;
int ldv_irq_1(int state , int line , void *data ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_write_config_word(struct pci_bus * , unsigned int , int , u16 ) ;
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
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
extern int pcie_capability_read_word(struct pci_dev * , int , u16 * ) ;
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern bool pci_pme_capable(struct pci_dev * , pci_power_t ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
extern int pci_enable_msi_range(struct pci_dev * , int , int ) ;
__inline static int pci_enable_msi_exact(struct pci_dev *dev , int nvec )
{
  int rc ;
  int tmp ;
  {
  tmp = pci_enable_msi_range(dev, nvec, nvec);
  rc = tmp;
  if (rc < 0) {
    return (rc);
  } else {
  }
  return (0);
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
extern void *pci_ioremap_bar(struct pci_dev * , int ) ;
extern void pci_disable_link_state(struct pci_dev * , int ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  might_fault();
  tmp___0 = ldv__builtin_expect(sz < 0, 1L);
  if (tmp___0 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    tmp___1 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___1 != 0L) {
      n = _copy_from_user(to, from, (unsigned int )n);
    } else {
      __copy_from_user_overflow();
    }
  }
  return (n);
}
}
extern void synchronize_irq(unsigned int ) ;
int ldv_request_threaded_irq_538(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 ) ;
int ldv_request_threaded_irq_554(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_553(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern loff_t generic_file_llseek(struct file * , loff_t , int ) ;
extern int simple_open(struct inode * , struct file * ) ;
extern ssize_t simple_read_from_buffer(void * , size_t , loff_t * , void const * ,
                                       size_t ) ;
extern struct dentry *debugfs_create_file(char const * , umode_t , struct dentry * ,
                                          void * , struct file_operations const * ) ;
struct sk_buff *ldv_skb_clone_543(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_551(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_545(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_541(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_549(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_550(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_546(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_547(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_548(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern void msleep(unsigned int ) ;
extern void usleep_range(unsigned long , unsigned long ) ;
extern void netif_napi_del(struct napi_struct * ) ;
extern int init_dummy_netdev(struct net_device * ) ;
__inline static bool iwl_op_mode_hw_rf_kill(struct iwl_op_mode *op_mode , bool state )
{
  bool tmp ;
  {
  __might_sleep("drivers/net/wireless/iwlwifi/iwl-op-mode.h", 210, 0);
  tmp = (*((op_mode->ops)->hw_rf_kill))(op_mode, (int )state);
  return (tmp);
}
}
__inline static void iwl_op_mode_nic_config(struct iwl_op_mode *op_mode )
{
  {
  __might_sleep("drivers/net/wireless/iwlwifi/iwl-op-mode.h", 232, 0);
  (*((op_mode->ops)->nic_config))(op_mode);
  return;
}
}
__inline static void iwl_op_mode_napi_add(struct iwl_op_mode *op_mode , struct napi_struct *napi ,
                                          struct net_device *napi_dev , int (*poll)(struct napi_struct * ,
                                                                                    int ) ,
                                          int weight )
{
  {
  if ((unsigned long )(op_mode->ops)->napi_add == (unsigned long )((void (* )(struct iwl_op_mode * ,
                                                                                         struct napi_struct * ,
                                                                                         struct net_device * ,
                                                                                         int (*)(struct napi_struct * ,
                                                                                                 int ) ,
                                                                                         int ))0)) {
    return;
  } else {
  }
  (*((op_mode->ops)->napi_add))(op_mode, napi, napi_dev, poll, weight);
  return;
}
}
__inline static void trans_lockdep_init(struct iwl_trans *trans )
{
  struct lock_class_key __key ;
  {
  lockdep_init_map(& trans->sync_cmd_lockdep_map, "sync_cmd_lockdep_map", & __key,
                   0);
  return;
}
}
__inline static void trace_iwlwifi_dev_ioread32___4(struct device const *dev , u32 offs ,
                                                    u32 val )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_ioread32.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_ioread32.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 101,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_49716:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , u32 , u32 ))it_func))(__data,
                                                                              dev,
                                                                              offs,
                                                                              val);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_49716;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
__inline static void trace_iwlwifi_dev_iowrite32___4(struct device const *dev ,
                                                     u32 offs , u32 val )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = static_key_false(& __tracepoint_iwlwifi_dev_iowrite32.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_iwlwifi_dev_iowrite32.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("drivers/net/wireless/iwlwifi/iwl-devtrace.h", 135,
                               "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_49804:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct device const * , u32 , u32 ))it_func))(__data,
                                                                              dev,
                                                                              offs,
                                                                              val);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_49804;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  return;
}
}
__inline static void iwl_write32___4(struct iwl_trans *trans , u32 ofs , u32 val )
{
  {
  trace_iwlwifi_dev_iowrite32___4((struct device const *)trans->dev, ofs, val);
  iwl_trans_write32(trans, ofs, val);
  return;
}
}
__inline static u32 iwl_read32___4(struct iwl_trans *trans , u32 ofs )
{
  u32 val ;
  u32 tmp ;
  {
  tmp = iwl_trans_read32(trans, ofs);
  val = tmp;
  trace_iwlwifi_dev_ioread32___4((struct device const *)trans->dev, ofs, val);
  return (val);
}
}
__inline static void iwl_disable_interrupts___0(struct iwl_trans *trans )
{
  {
  clear_bit(3L, (unsigned long volatile *)(& trans->status));
  iwl_write32___4(trans, 12U, 0U);
  iwl_write32___4(trans, 8U, 4294967295U);
  iwl_write32___4(trans, 16U, 4294967295U);
  __iwl_dbg(trans->dev, 33554432U, 0, "iwl_disable_interrupts", "Disabled interrupts\n");
  return;
}
}
__inline static void iwl_enable_interrupts___0(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  __iwl_dbg(trans->dev, 33554432U, 0, "iwl_enable_interrupts", "Enabling interrupts\n");
  set_bit(3L, (unsigned long volatile *)(& trans->status));
  trans_pcie->inta_mask = 3120562315U;
  iwl_write32___4(trans, 12U, trans_pcie->inta_mask);
  return;
}
}
__inline static void iwl_enable_rfkill_int___1(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  __iwl_dbg(trans->dev, 33554432U, 0, "iwl_enable_rfkill_int", "Enabling rfkill interrupt\n");
  trans_pcie->inta_mask = 128U;
  iwl_write32___4(trans, 12U, trans_pcie->inta_mask);
  return;
}
}
__inline static bool iwl_is_rfkill_set___1(struct iwl_trans *trans )
{
  u32 tmp ;
  {
  tmp = iwl_read32___4(trans, 36U);
  return ((tmp & 134217728U) == 0U);
}
}
__inline static void __iwl_trans_pcie_set_bits_mask___0(struct iwl_trans *trans ,
                                                        u32 reg , u32 mask , u32 value )
{
  u32 v ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  __ret_warn_once = (~ mask & value) != 0U;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/net/wireless/iwlwifi/pcie/internal.h",
                         477);
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
  v = iwl_read32___4(trans, reg);
  v = ~ mask & v;
  v = v | value;
  iwl_write32___4(trans, reg, v);
  return;
}
}
__inline static void __iwl_trans_pcie_clear_bit___0(struct iwl_trans *trans , u32 reg ,
                                                    u32 mask )
{
  {
  __iwl_trans_pcie_set_bits_mask___0(trans, reg, mask, 0U);
  return;
}
}
__inline static void __iwl_trans_pcie_set_bit___0(struct iwl_trans *trans , u32 reg ,
                                                  u32 mask )
{
  {
  __iwl_trans_pcie_set_bits_mask___0(trans, reg, mask, mask);
  return;
}
}
static u32 iwl_trans_pcie_read_shr(struct iwl_trans *trans , u32 reg )
{
  u32 tmp ;
  {
  iwl_write32___4(trans, 236U, (reg & 65535U) | 536870912U);
  tmp = iwl_read32___4(trans, 244U);
  return (tmp);
}
}
static void iwl_trans_pcie_write_shr(struct iwl_trans *trans , u32 reg , u32 val )
{
  {
  iwl_write32___4(trans, 244U, val);
  iwl_write32___4(trans, 236U, (reg & 65535U) | 805306368U);
  return;
}
}
static void iwl_pcie_set_pwr(struct iwl_trans *trans , bool vaux )
{
  struct device const *__mptr ;
  bool tmp ;
  {
  if ((int )vaux) {
    __mptr = (struct device const *)trans->dev;
    tmp = pci_pme_capable((struct pci_dev *)__mptr + 0xffffffffffffff68UL, 4);
    if ((int )tmp) {
      iwl_set_bits_mask_prph(trans, 12300U, 33554432U, 4244635647U);
    } else {
      iwl_set_bits_mask_prph(trans, 12300U, 0U, 4244635647U);
    }
  } else {
    iwl_set_bits_mask_prph(trans, 12300U, 0U, 4244635647U);
  }
  return;
}
}
static void iwl_pcie_apm_config(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  u16 lctl ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  pcie_capability_read_word(trans_pcie->pci_dev, 16, & lctl);
  if (((int )lctl & 2) != 0) {
    iwl_set_bit(trans, 60U, 2U);
    _dev_info((struct device const *)trans->dev, "L1 Enabled; Disabling L0S\n");
  } else {
    iwl_clear_bit(trans, 60U, 2U);
    _dev_info((struct device const *)trans->dev, "L1 Disabled; Enabling L0S\n");
  }
  trans->pm_support = ((int )lctl & 1) == 0;
  return;
}
}
static int iwl_pcie_apm_init(struct iwl_trans *trans )
{
  int ret ;
  {
  ret = 0;
  __iwl_dbg(trans->dev, 1U, 0, "iwl_pcie_apm_init", "Init card\'s basic functions\n");
  if ((unsigned int )(trans->cfg)->device_family != 16U) {
    iwl_set_bit(trans, 256U, 536870912U);
  } else {
  }
  iwl_set_bit(trans, 256U, 8388608U);
  iwl_set_bit(trans, 576U, 4294901760U);
  iwl_set_bit(trans, 0U, 524288U);
  iwl_pcie_apm_config(trans);
  if ((unsigned int )((trans->cfg)->base_params)->pll_cfg_val != 0U) {
    iwl_set_bit(trans, 524U, ((trans->cfg)->base_params)->pll_cfg_val);
  } else {
  }
  iwl_set_bit(trans, 36U, 4U);
  ret = iwl_poll_bit(trans, 36U, 1U, 1U, 25000);
  if (ret < 0) {
    __iwl_dbg(trans->dev, 1U, 0, "iwl_pcie_apm_init", "Failed to init the card\n");
    goto out;
  } else {
  }
  if ((int )(trans->cfg)->host_interrupt_operation_mode) {
    iwl_read_prph(trans, 10502248U);
    iwl_read_prph(trans, 10502248U);
    iwl_set_bits_prph(trans, 10502248U, 8U);
    iwl_read_prph(trans, 10502248U);
    iwl_read_prph(trans, 10502248U);
  } else {
  }
  if ((unsigned int )(trans->cfg)->device_family != 16U) {
    iwl_write_prph(trans, 12292U, 512U);
    __const_udelay(85900UL);
    iwl_set_bits_prph(trans, 12304U, 2048U);
    iwl_write_prph(trans, 12316U, 268435456U);
  } else {
  }
  set_bit(1L, (unsigned long volatile *)(& trans->status));
  out: ;
  return (ret);
}
}
static void iwl_pcie_apm_lp_xtal_enable(struct iwl_trans *trans )
{
  int ret ;
  u32 apmg_gp1_reg ;
  u32 apmg_xtal_cfg_reg ;
  u32 dl_cfg_reg ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  __iwl_trans_pcie_set_bit___0(trans, 36U, 1024U);
  iwl_set_bit(trans, 32U, 128U);
  __const_udelay(42950UL);
  iwl_set_bit(trans, 36U, 4U);
  ret = iwl_poll_bit(trans, 36U, 1U, 1U, 25000);
  __ret_warn_on = ret < 0;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/trans.o.c.prepared",
                       460);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    __iwl_err(trans->dev, 0, 0, "Access time out - failed to enable LP XTAL\n");
    __iwl_trans_pcie_clear_bit___0(trans, 36U, 1024U);
    return;
  } else {
  }
  iwl_clear_bits_prph(trans, 12304U, 512U);
  apmg_xtal_cfg_reg = iwl_trans_pcie_read_shr(trans, 448U);
  iwl_trans_pcie_write_shr(trans, 448U, apmg_xtal_cfg_reg | 2147483648U);
  iwl_set_bit(trans, 32U, 128U);
  __const_udelay(42950UL);
  apmg_gp1_reg = iwl_trans_pcie_read_shr(trans, 476U);
  iwl_trans_pcie_write_shr(trans, 476U, apmg_gp1_reg | 2147483652U);
  dl_cfg_reg = iwl_trans_pcie_read_shr(trans, 452U);
  iwl_trans_pcie_write_shr(trans, 452U, dl_cfg_reg & 4294967039U);
  iwl_set_bit(trans, 0U, 1073741824U);
  iwl_clear_bit(trans, 36U, 4U);
  __iwl_trans_pcie_set_bit___0(trans, 532U, 16U);
  __iwl_trans_pcie_clear_bit___0(trans, 36U, 1024U);
  __const_udelay(42950UL);
  iwl_trans_pcie_write_shr(trans, 448U, apmg_xtal_cfg_reg & 2147483647U);
  return;
}
}
static int iwl_pcie_apm_stop_master(struct iwl_trans *trans )
{
  int ret ;
  {
  ret = 0;
  iwl_set_bit(trans, 32U, 512U);
  ret = iwl_poll_bit(trans, 32U, 256U, 256U, 100);
  if (ret != 0) {
    __iwl_warn(trans->dev, "Master Disable Timed Out, 100 usec\n");
  } else {
  }
  __iwl_dbg(trans->dev, 1U, 0, "iwl_pcie_apm_stop_master", "stop master\n");
  return (ret);
}
}
static void iwl_pcie_apm_stop(struct iwl_trans *trans )
{
  {
  __iwl_dbg(trans->dev, 1U, 0, "iwl_pcie_apm_stop", "Stop card, put in low power state\n");
  clear_bit(1L, (unsigned long volatile *)(& trans->status));
  iwl_pcie_apm_stop_master(trans);
  if ((int )(trans->cfg)->lp_xtal_workaround) {
    iwl_pcie_apm_lp_xtal_enable(trans);
    return;
  } else {
  }
  iwl_set_bit(trans, 32U, 128U);
  __const_udelay(42950UL);
  iwl_clear_bit(trans, 36U, 4U);
  return;
}
}
static int iwl_pcie_nic_init(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  int tmp ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  spin_lock(& trans_pcie->irq_lock);
  iwl_pcie_apm_init(trans);
  spin_unlock(& trans_pcie->irq_lock);
  if ((unsigned int )(trans->cfg)->device_family != 16U) {
    iwl_pcie_set_pwr(trans, 0);
  } else {
  }
  iwl_op_mode_nic_config(trans->op_mode);
  iwl_pcie_rx_init(trans);
  tmp = iwl_pcie_tx_init(trans);
  if (tmp != 0) {
    return (-12);
  } else {
  }
  if ((int )((trans->cfg)->base_params)->shadow_reg_enable) {
    iwl_set_bit(trans, 168U, 2148532223U);
    __iwl_dbg(trans->dev, 1U, 0, "iwl_pcie_nic_init", "Enabling shadow registers in device\n");
  } else {
  }
  return (0);
}
}
static int iwl_pcie_set_hw_ready(struct iwl_trans *trans )
{
  int ret ;
  {
  iwl_set_bit(trans, 0U, 4194304U);
  ret = iwl_poll_bit(trans, 0U, 4194304U, 4194304U, 50);
  __iwl_dbg(trans->dev, 1U, 0, "iwl_pcie_set_hw_ready", "hardware%s ready\n", ret < 0 ? (char *)" not" : (char *)"");
  return (ret);
}
}
static int iwl_pcie_prepare_card_hw(struct iwl_trans *trans )
{
  int ret ;
  int t ;
  int iter ;
  {
  t = 0;
  __iwl_dbg(trans->dev, 1U, 0, "iwl_pcie_prepare_card_hw", "iwl_trans_prepare_card_hw enter\n");
  ret = iwl_pcie_set_hw_ready(trans);
  if (ret >= 0) {
    return (0);
  } else {
  }
  iter = 0;
  goto ldv_51112;
  ldv_51111:
  iwl_set_bit(trans, 0U, 134217728U);
  ldv_51109:
  ret = iwl_pcie_set_hw_ready(trans);
  if (ret >= 0) {
    return (0);
  } else {
  }
  usleep_range(200UL, 1000UL);
  t = t + 200;
  if (t <= 149999) {
    goto ldv_51109;
  } else {
  }
  msleep(25U);
  iter = iter + 1;
  ldv_51112: ;
  if (iter <= 9) {
    goto ldv_51111;
  } else {
  }
  __iwl_dbg(trans->dev, 1U, 0, "iwl_pcie_prepare_card_hw", "got NIC after %d iterations\n",
            iter);
  return (ret);
}
}
static int iwl_pcie_load_firmware_chunk(struct iwl_trans *trans , u32 dst_addr , dma_addr_t phy_addr ,
                                        u32 byte_cnt )
{
  struct iwl_trans_pcie *trans_pcie ;
  int ret ;
  u8 tmp ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___0 ;
  bool __cond ;
  bool __cond___0 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  trans_pcie->ucode_write_complete = 0;
  iwl_write_direct32(trans, 7712U, 0U);
  iwl_write_direct32(trans, 6600U, dst_addr);
  iwl_write_direct32(trans, 6472U, (u32 )phy_addr);
  tmp = iwl_get_dma_hi_addr(phy_addr);
  iwl_write_direct32(trans, 6476U, (u32 )((int )tmp << 28) | byte_cnt);
  iwl_write_direct32(trans, 7720U, 1052675U);
  iwl_write_direct32(trans, 7712U, 2148532224U);
  __ret = 1250L;
  __cond___0 = trans_pcie->ucode_write_complete;
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    __ret___0 = 1250L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_51132:
    tmp___0 = prepare_to_wait_event(& trans_pcie->ucode_write_waitq, & __wait, 2);
    __int = tmp___0;
    __cond = trans_pcie->ucode_write_complete;
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_51131;
    } else {
    }
    __ret___0 = schedule_timeout(__ret___0);
    goto ldv_51132;
    ldv_51131:
    finish_wait(& trans_pcie->ucode_write_waitq, & __wait);
    __ret = __ret___0;
  } else {
  }
  ret = (int )__ret;
  if (ret == 0) {
    __iwl_err(trans->dev, 0, 0, "Failed to load firmware chunk!\n");
    return (-110);
  } else {
  }
  return (0);
}
}
static int iwl_pcie_load_section(struct iwl_trans *trans , u8 section_num , struct fw_desc const *section )
{
  u8 *v_addr ;
  dma_addr_t p_addr ;
  u32 offset ;
  u32 chunk_sz ;
  int ret ;
  void *tmp ;
  void *tmp___0 ;
  u32 copy_size ;
  u32 __min1 ;
  u32 __min2 ;
  size_t __len ;
  void *__ret ;
  {
  chunk_sz = section->len;
  ret = 0;
  __iwl_dbg(trans->dev, 65536U, 0, "iwl_pcie_load_section", "[%d] uCode section being loaded...\n",
            (int )section_num);
  tmp = dma_alloc_attrs(trans->dev, (size_t )chunk_sz, & p_addr, 720U, (struct dma_attrs *)0);
  v_addr = (u8 *)tmp;
  if ((unsigned long )v_addr == (unsigned long )((u8 *)0U)) {
    __iwl_dbg(trans->dev, 1U, 0, "iwl_pcie_load_section", "Falling back to small chunks of DMA\n");
    chunk_sz = 4096U;
    tmp___0 = dma_alloc_attrs(trans->dev, (size_t )chunk_sz, & p_addr, 208U, (struct dma_attrs *)0);
    v_addr = (u8 *)tmp___0;
    if ((unsigned long )v_addr == (unsigned long )((u8 *)0U)) {
      return (-12);
    } else {
    }
  } else {
  }
  offset = 0U;
  goto ldv_51155;
  ldv_51154:
  __min1 = chunk_sz;
  __min2 = (unsigned int )section->len - offset;
  copy_size = __min1 < __min2 ? __min1 : __min2;
  __len = (size_t )copy_size;
  __ret = memcpy((void *)v_addr, (void const *)section->data + (unsigned long )offset,
                           __len);
  ret = iwl_pcie_load_firmware_chunk(trans, (unsigned int )section->offset + offset,
                                     p_addr, copy_size);
  if (ret != 0) {
    __iwl_err(trans->dev, 0, 0, "Could not load the [%d] uCode section\n", (int )section_num);
    goto ldv_51153;
  } else {
  }
  offset = offset + chunk_sz;
  ldv_51155: ;
  if ((u32 )section->len > offset) {
    goto ldv_51154;
  } else {
  }
  ldv_51153:
  dma_free_attrs(trans->dev, (size_t )chunk_sz, (void *)v_addr, p_addr, (struct dma_attrs *)0);
  return (ret);
}
}
static int iwl_pcie_load_cpu_secured_sections(struct iwl_trans *trans , struct fw_img const *image ,
                                              int cpu , int *first_ucode_section )
{
  int shift_param ;
  int i ;
  int ret ;
  u32 last_read_idx ;
  {
  ret = 0;
  last_read_idx = 0U;
  if (cpu == 1) {
    shift_param = 0;
    *first_ucode_section = 0;
  } else {
    shift_param = 16;
    *first_ucode_section = *first_ucode_section + 1;
  }
  i = *first_ucode_section;
  goto ldv_51169;
  ldv_51168:
  last_read_idx = (u32 )i;
  if ((unsigned long )image->sec[i].data == (unsigned long )((void const * )0) || (unsigned int )image->sec[i].offset == 4294954188U) {
    __iwl_dbg(trans->dev, 65536U, 0, "iwl_pcie_load_cpu_secured_sections", "Break since Data not valid or Empty section, sec = %d\n",
              i);
    goto ldv_51167;
  } else {
  }
  if (*first_ucode_section + 1 == i) {
    iwl_set_bits_prph(trans, 7792U, (u32 )(3 << shift_param));
  } else {
  }
  ret = iwl_pcie_load_section(trans, (int )((u8 )i), (struct fw_desc const *)(& image->sec) + (unsigned long )i);
  if (ret != 0) {
    return (ret);
  } else {
  }
  i = i + 1;
  ldv_51169: ;
  if (i <= 11) {
    goto ldv_51168;
  } else {
  }
  ldv_51167:
  iwl_set_bits_prph(trans, 7792U, (u32 )(7 << shift_param));
  *first_ucode_section = (int )last_read_idx;
  return (0);
}
}
static int iwl_pcie_load_cpu_sections(struct iwl_trans *trans , struct fw_img const *image ,
                                      int cpu , int *first_ucode_section )
{
  int shift_param ;
  int i ;
  int ret ;
  u32 last_read_idx ;
  {
  ret = 0;
  last_read_idx = 0U;
  if (cpu == 1) {
    shift_param = 0;
    *first_ucode_section = 0;
  } else {
    shift_param = 16;
    *first_ucode_section = *first_ucode_section + 1;
  }
  i = *first_ucode_section;
  goto ldv_51183;
  ldv_51182:
  last_read_idx = (u32 )i;
  if ((unsigned long )image->sec[i].data == (unsigned long )((void const * )0) || (unsigned int )image->sec[i].offset == 4294954188U) {
    __iwl_dbg(trans->dev, 65536U, 0, "iwl_pcie_load_cpu_sections", "Break since Data not valid or Empty section, sec = %d\n",
              i);
    goto ldv_51181;
  } else {
  }
  ret = iwl_pcie_load_section(trans, (int )((u8 )i), (struct fw_desc const *)(& image->sec) + (unsigned long )i);
  if (ret != 0) {
    return (ret);
  } else {
  }
  i = i + 1;
  ldv_51183: ;
  if (i <= 11) {
    goto ldv_51182;
  } else {
  }
  ldv_51181: ;
  if ((unsigned int )(trans->cfg)->device_family == 16U) {
    iwl_set_bits_prph(trans, 7792U, (u32 )(7 << shift_param));
  } else {
  }
  *first_ucode_section = (int )last_read_idx;
  return (0);
}
}
static int iwl_pcie_load_given_ucode(struct iwl_trans *trans , struct fw_img const *image )
{
  int ret ;
  int first_ucode_section ;
  {
  ret = 0;
  __iwl_dbg(trans->dev, 65536U, 0, "iwl_pcie_load_given_ucode", "working with %s image\n",
            (int )image->is_secure ? (char *)"Secured" : (char *)"Non Secured");
  __iwl_dbg(trans->dev, 65536U, 0, "iwl_pcie_load_given_ucode", "working with %s CPU\n",
            (int )image->is_dual_cpus ? (char *)"Dual" : (char *)"Single");
  if ((int )image->is_secure) {
    iwl_write_prph(trans, 7736U, 4194304U);
    iwl_write_prph(trans, 7740U, 4202496U);
    iwl_write_prph(trans, 7800U, 4325376U);
    ret = iwl_pcie_load_cpu_secured_sections(trans, image, 1, & first_ucode_section);
    if (ret != 0) {
      return (ret);
    } else {
    }
  } else {
    ret = iwl_pcie_load_cpu_sections(trans, image, 1, & first_ucode_section);
    if (ret != 0) {
      return (ret);
    } else {
    }
  }
  if ((int )image->is_dual_cpus) {
    iwl_write_prph(trans, 7804U, 4326400U);
    if ((int )image->is_secure) {
      ret = iwl_pcie_load_cpu_secured_sections(trans, image, 2, & first_ucode_section);
    } else {
      ret = iwl_pcie_load_cpu_sections(trans, image, 2, & first_ucode_section);
    }
    if (ret != 0) {
      return (ret);
    } else {
    }
  } else {
  }
  if ((unsigned int )(trans->cfg)->device_family == 16U) {
    iwl_write_prph(trans, 12300U, 16777216U);
  } else {
    iwl_write32___4(trans, 32U, 0U);
  }
  if ((int )image->is_secure) {
    ret = iwl_poll_prph_bit(trans, 7728U, 3U, 3U, 100);
    if (ret < 0) {
      __iwl_err(trans->dev, 0, 0, "Time out on secure boot process\n");
      return (ret);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int iwl_trans_pcie_start_fw(struct iwl_trans *trans , struct fw_img const *fw ,
                                   bool run_in_rfkill )
{
  int ret ;
  bool hw_rfkill ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = iwl_pcie_prepare_card_hw(trans);
  if (tmp != 0) {
    __iwl_warn(trans->dev, "Exit HW not ready\n");
    return (-5);
  } else {
  }
  iwl_enable_rfkill_int___1(trans);
  hw_rfkill = iwl_is_rfkill_set___1(trans);
  if ((int )hw_rfkill) {
    set_bit(4L, (unsigned long volatile *)(& trans->status));
  } else {
    clear_bit(4L, (unsigned long volatile *)(& trans->status));
  }
  iwl_trans_pcie_rf_kill(trans, (int )hw_rfkill);
  if ((int )hw_rfkill && ! run_in_rfkill) {
    return (-132);
  } else {
  }
  iwl_write32___4(trans, 8U, 4294967295U);
  ret = iwl_pcie_nic_init(trans);
  if (ret != 0) {
    __iwl_err(trans->dev, 0, 0, "Unable to init nic\n");
    return (ret);
  } else {
  }
  iwl_write32___4(trans, 92U, 2U);
  iwl_write32___4(trans, 92U, 4U);
  iwl_write32___4(trans, 8U, 4294967295U);
  iwl_enable_interrupts___0(trans);
  iwl_write32___4(trans, 92U, 2U);
  iwl_write32___4(trans, 92U, 2U);
  tmp___0 = iwl_pcie_load_given_ucode(trans, fw);
  return (tmp___0);
}
}
static void iwl_trans_pcie_fw_alive(struct iwl_trans *trans , u32 scd_addr )
{
  {
  iwl_pcie_reset_ict(trans);
  iwl_pcie_tx_start(trans, scd_addr);
  return;
}
}
static void iwl_trans_pcie_stop_device(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  bool hw_rfkill ;
  bool was_hw_rfkill ;
  int tmp ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  was_hw_rfkill = iwl_is_rfkill_set___1(trans);
  spin_lock(& trans_pcie->irq_lock);
  iwl_disable_interrupts___0(trans);
  spin_unlock(& trans_pcie->irq_lock);
  iwl_pcie_disable_ict(trans);
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& trans->status));
  if (tmp != 0) {
    iwl_pcie_tx_stop(trans);
    iwl_pcie_rx_stop(trans);
    iwl_write_prph(trans, 12296U, 512U);
    __const_udelay(21475UL);
  } else {
  }
  iwl_clear_bit(trans, 36U, 8U);
  iwl_pcie_apm_stop(trans);
  spin_lock(& trans_pcie->irq_lock);
  iwl_disable_interrupts___0(trans);
  spin_unlock(& trans_pcie->irq_lock);
  iwl_write32___4(trans, 32U, 1U);
  clear_bit(0L, (unsigned long volatile *)(& trans->status));
  clear_bit(3L, (unsigned long volatile *)(& trans->status));
  clear_bit(1L, (unsigned long volatile *)(& trans->status));
  clear_bit(2L, (unsigned long volatile *)(& trans->status));
  clear_bit(4L, (unsigned long volatile *)(& trans->status));
  iwl_enable_rfkill_int___1(trans);
  hw_rfkill = iwl_is_rfkill_set___1(trans);
  if ((int )hw_rfkill) {
    set_bit(4L, (unsigned long volatile *)(& trans->status));
  } else {
    clear_bit(4L, (unsigned long volatile *)(& trans->status));
  }
  if ((int )hw_rfkill != (int )was_hw_rfkill) {
    iwl_trans_pcie_rf_kill(trans, (int )hw_rfkill);
  } else {
  }
  return;
}
}
void iwl_trans_pcie_rf_kill(struct iwl_trans *trans , bool state )
{
  bool tmp ;
  {
  tmp = iwl_op_mode_hw_rf_kill(trans->op_mode, (int )state);
  if ((int )tmp) {
    iwl_trans_pcie_stop_device(trans);
  } else {
  }
  return;
}
}
static void iwl_trans_pcie_d3_suspend(struct iwl_trans *trans , bool test )
{
  {
  iwl_disable_interrupts___0(trans);
  if ((int )test) {
    return;
  } else {
  }
  iwl_pcie_disable_ict(trans);
  iwl_clear_bit(trans, 36U, 8U);
  iwl_clear_bit(trans, 36U, 4U);
  iwl_trans_pcie_tx_reset(trans);
  iwl_pcie_set_pwr(trans, 1);
  return;
}
}
static int iwl_trans_pcie_d3_resume(struct iwl_trans *trans , enum iwl_d3_status *status ,
                                    bool test )
{
  u32 val ;
  int ret ;
  {
  if ((int )test) {
    iwl_enable_interrupts___0(trans);
    *status = 0;
    return (0);
  } else {
  }
  iwl_pcie_set_pwr(trans, 0);
  val = iwl_read32___4(trans, 32U);
  if ((int )val & 1) {
    *status = 1;
    return (0);
  } else {
  }
  iwl_pcie_reset_ict(trans);
  iwl_set_bit(trans, 36U, 8U);
  iwl_set_bit(trans, 36U, 4U);
  ret = iwl_poll_bit(trans, 36U, 1U, 1U, 25000);
  if (ret != 0) {
    __iwl_err(trans->dev, 0, 0, "Failed to resume the device (mac ready)\n");
    return (ret);
  } else {
  }
  iwl_trans_pcie_tx_reset(trans);
  ret = iwl_pcie_rx_init(trans);
  if (ret != 0) {
    __iwl_err(trans->dev, 0, 0, "Failed to resume the device (RX reset)\n");
    return (ret);
  } else {
  }
  *status = 0;
  return (0);
}
}
static int iwl_trans_pcie_start_hw(struct iwl_trans *trans )
{
  bool hw_rfkill ;
  int err ;
  {
  err = iwl_pcie_prepare_card_hw(trans);
  if (err != 0) {
    __iwl_err(trans->dev, 0, 0, "Error while preparing HW: %d\n", err);
    return (err);
  } else {
  }
  iwl_write32___4(trans, 32U, 128U);
  usleep_range(10UL, 15UL);
  iwl_pcie_apm_init(trans);
  iwl_enable_rfkill_int___1(trans);
  hw_rfkill = iwl_is_rfkill_set___1(trans);
  if ((int )hw_rfkill) {
    set_bit(4L, (unsigned long volatile *)(& trans->status));
  } else {
    clear_bit(4L, (unsigned long volatile *)(& trans->status));
  }
  iwl_trans_pcie_rf_kill(trans, (int )hw_rfkill);
  return (0);
}
}
static void iwl_trans_pcie_op_mode_leave(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  spin_lock(& trans_pcie->irq_lock);
  iwl_disable_interrupts___0(trans);
  spin_unlock(& trans_pcie->irq_lock);
  iwl_pcie_apm_stop(trans);
  spin_lock(& trans_pcie->irq_lock);
  iwl_disable_interrupts___0(trans);
  spin_unlock(& trans_pcie->irq_lock);
  iwl_pcie_disable_ict(trans);
  return;
}
}
static void iwl_trans_pcie_write8(struct iwl_trans *trans , u32 ofs , u8 val )
{
  {
  writeb((int )val, (void volatile *)((struct iwl_trans_pcie *)(& trans->trans_specific))->hw_base + (unsigned long )ofs);
  return;
}
}
static void iwl_trans_pcie_write32(struct iwl_trans *trans , u32 ofs , u32 val )
{
  {
  writel(val, (void volatile *)((struct iwl_trans_pcie *)(& trans->trans_specific))->hw_base + (unsigned long )ofs);
  return;
}
}
static u32 iwl_trans_pcie_read32(struct iwl_trans *trans , u32 ofs )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)((struct iwl_trans_pcie *)(& trans->trans_specific))->hw_base + (unsigned long )ofs);
  return (tmp);
}
}
static u32 iwl_trans_pcie_read_prph(struct iwl_trans *trans , u32 reg )
{
  u32 tmp ;
  {
  iwl_trans_pcie_write32(trans, 1096U, (reg & 1048575U) | 50331648U);
  tmp = iwl_trans_pcie_read32(trans, 1104U);
  return (tmp);
}
}
static void iwl_trans_pcie_write_prph(struct iwl_trans *trans , u32 addr , u32 val )
{
  {
  iwl_trans_pcie_write32(trans, 1092U, (addr & 1048575U) | 50331648U);
  iwl_trans_pcie_write32(trans, 1100U, val);
  return;
}
}
static int iwl_pcie_dummy_napi_poll(struct napi_struct *napi , int budget )
{
  int __ret_warn_on ;
  long tmp ;
  {
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/trans.o.c.prepared",
                       1241);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  return (0);
}
}
static void iwl_trans_pcie_configure(struct iwl_trans *trans , struct iwl_trans_config const *trans_cfg )
{
  struct iwl_trans_pcie *trans_pcie ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  size_t __len ;
  void *__ret ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  trans_pcie->cmd_queue = trans_cfg->cmd_queue;
  trans_pcie->cmd_fifo = trans_cfg->cmd_fifo;
  __ret_warn_on = (unsigned int )trans_cfg->n_no_reclaim_cmds > 6U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/trans.o.c.prepared",
                       1252);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    trans_pcie->n_no_reclaim_cmds = 0U;
  } else {
    trans_pcie->n_no_reclaim_cmds = (u8 )trans_cfg->n_no_reclaim_cmds;
  }
  if ((unsigned int )trans_pcie->n_no_reclaim_cmds != 0U) {
    __len = (unsigned long )trans_pcie->n_no_reclaim_cmds;
    __ret = memcpy((void *)(& trans_pcie->no_reclaim_cmds), (void const *)trans_cfg->no_reclaim_cmds,
                             __len);
  } else {
  }
  trans_pcie->rx_buf_size_8k = trans_cfg->rx_buf_size_8k;
  if ((int )trans_pcie->rx_buf_size_8k) {
    trans_pcie->rx_page_order = 1U;
  } else {
    trans_pcie->rx_page_order = 0U;
  }
  trans_pcie->wd_timeout = msecs_to_jiffies(trans_cfg->queue_watchdog_timeout);
  trans_pcie->command_names = trans_cfg->command_names;
  trans_pcie->bc_table_dword = trans_cfg->bc_table_dword;
  if ((unsigned long )trans_pcie->napi.poll == (unsigned long )((int (*)(struct napi_struct * ,
                                                                         int ))0) && (unsigned long )((trans->op_mode)->ops)->napi_add != (unsigned long )((void (* )(struct iwl_op_mode * ,
                                                                                                                                                                                  struct napi_struct * ,
                                                                                                                                                                                  struct net_device * ,
                                                                                                                                                                                  int (*)(struct napi_struct * ,
                                                                                                                                                                                          int ) ,
                                                                                                                                                                                  int ))0)) {
    init_dummy_netdev(& trans_pcie->napi_dev);
    iwl_op_mode_napi_add(trans->op_mode, & trans_pcie->napi, & trans_pcie->napi_dev,
                         & iwl_pcie_dummy_napi_poll, 64);
  } else {
  }
  return;
}
}
void iwl_trans_pcie_free(struct iwl_trans *trans )
{
  struct iwl_trans_pcie *trans_pcie ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  synchronize_irq((trans_pcie->pci_dev)->irq);
  iwl_pcie_tx_free(trans);
  iwl_pcie_rx_free(trans);
  ldv_free_irq_553((trans_pcie->pci_dev)->irq, (void *)trans);
  iwl_pcie_free_ict(trans);
  pci_disable_msi(trans_pcie->pci_dev);
  iounmap((void volatile *)trans_pcie->hw_base);
  pci_release_regions(trans_pcie->pci_dev);
  pci_disable_device(trans_pcie->pci_dev);
  kmem_cache_destroy(trans->dev_cmd_pool);
  if ((unsigned long )trans_pcie->napi.poll != (unsigned long )((int (*)(struct napi_struct * ,
                                                                         int ))0)) {
    netif_napi_del(& trans_pcie->napi);
  } else {
  }
  kfree((void const *)trans);
  return;
}
}
static void iwl_trans_pcie_set_pmi(struct iwl_trans *trans , bool state )
{
  {
  if ((int )state) {
    set_bit(2L, (unsigned long volatile *)(& trans->status));
  } else {
    clear_bit(2L, (unsigned long volatile *)(& trans->status));
  }
  return;
}
}
static bool iwl_trans_pcie_grab_nic_access(struct iwl_trans *trans , bool silent ,
                                           unsigned long *flags )
{
  int ret ;
  struct iwl_trans_pcie *trans_pcie ;
  u32 val ;
  u32 tmp ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  ldv_spin_lock();
  if ((int )trans_pcie->cmd_in_flight) {
    goto out;
  } else {
  }
  __iwl_trans_pcie_set_bit___0(trans, 36U, 8U);
  ret = iwl_poll_bit(trans, 36U, 1U, 17U, 15000);
  tmp___3 = ldv__builtin_expect(ret < 0, 0L);
  if (tmp___3 != 0L) {
    iwl_write32___4(trans, 32U, 2U);
    if (! silent) {
      tmp = iwl_read32___4(trans, 36U);
      val = tmp;
      __ret_warn_once = 1;
      tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
      if (tmp___2 != 0L) {
        __ret_warn_on = ! __warned;
        tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
        if (tmp___0 != 0L) {
          warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/trans.o.c.prepared",
                            1361, "Timeout waiting for hardware access (CSR_GP_CNTRL 0x%08x)\n",
                            val);
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
      spin_unlock_irqrestore(& trans_pcie->reg_lock, *flags);
      return (0);
    } else {
    }
  } else {
  }
  out: ;
  return (1);
}
}
static void iwl_trans_pcie_release_nic_access(struct iwl_trans *trans , unsigned long *flags )
{
  struct iwl_trans_pcie *trans_pcie ;
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  if (debug_locks != 0) {
    tmp = lock_is_held(& trans_pcie->reg_lock.ldv_6347.ldv_6346.dep_map);
    if (tmp == 0) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  __ret_warn_on = tmp___0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/trans.o.c.prepared",
                       1381);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((int )trans_pcie->cmd_in_flight) {
    goto out;
  } else {
  }
  __iwl_trans_pcie_clear_bit___0(trans, 36U, 8U);
  __asm__ volatile ("": : : "memory");
  out:
  spin_unlock_irqrestore(& trans_pcie->reg_lock, *flags);
  return;
}
}
static int iwl_trans_pcie_read_mem(struct iwl_trans *trans , u32 addr , void *buf ,
                                   int dwords )
{
  unsigned long flags ;
  int offs ;
  int ret ;
  u32 *vals ;
  bool tmp ;
  long tmp___0 ;
  {
  ret = 0;
  vals = (u32 *)buf;
  tmp = (*((trans->ops)->grab_nic_access))(trans, 0, & flags);
  tmp___0 = ldv__builtin_expect((long )tmp, 1L);
  if (tmp___0 != 0L) {
    iwl_write32___4(trans, 1036U, addr);
    offs = 0;
    goto ldv_51312;
    ldv_51311:
    *(vals + (unsigned long )offs) = iwl_read32___4(trans, 1052U);
    offs = offs + 1;
    ldv_51312: ;
    if (offs < dwords) {
      goto ldv_51311;
    } else {
    }
    iwl_trans_release_nic_access(trans, & flags);
  } else {
    ret = -16;
  }
  return (ret);
}
}
static int iwl_trans_pcie_write_mem(struct iwl_trans *trans , u32 addr , void const *buf ,
                                    int dwords )
{
  unsigned long flags ;
  int offs ;
  int ret ;
  u32 const *vals ;
  bool tmp ;
  long tmp___0 ;
  {
  ret = 0;
  vals = (u32 const *)buf;
  tmp = (*((trans->ops)->grab_nic_access))(trans, 0, & flags);
  tmp___0 = ldv__builtin_expect((long )tmp, 1L);
  if (tmp___0 != 0L) {
    iwl_write32___4(trans, 1040U, addr);
    offs = 0;
    goto ldv_51325;
    ldv_51324:
    iwl_write32___4(trans, 1048U, (unsigned long )vals != (unsigned long )((u32 const *)0U) ? *(vals + (unsigned long )offs) : 0U);
    offs = offs + 1;
    ldv_51325: ;
    if (offs < dwords) {
      goto ldv_51324;
    } else {
    }
    iwl_trans_release_nic_access(trans, & flags);
  } else {
    ret = -16;
  }
  return (ret);
}
}
static int iwl_trans_pcie_wait_txq_empty(struct iwl_trans *trans , u32 txq_bm )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_txq *txq ;
  struct iwl_queue *q ;
  int cnt ;
  unsigned long now ;
  u32 scd_sram_addr ;
  u8 buf[16U] ;
  int ret ;
  u8 wr_ptr ;
  int tmp ;
  u8 write_ptr ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  unsigned long tmp___4 ;
  u32 tmp___5 ;
  u32 status ;
  unsigned int tmp___6 ;
  u32 tmp___7 ;
  u8 fifo ;
  bool active ;
  u32 tbl_dw ;
  u32 tmp___8 ;
  unsigned int tmp___9 ;
  u32 tmp___10 ;
  unsigned int tmp___11 ;
  u32 tmp___12 ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  now = jiffies;
  ret = 0;
  cnt = 0;
  goto ldv_51359;
  ldv_51358: ;
  if ((int )trans_pcie->cmd_queue == cnt) {
    goto ldv_51340;
  } else {
  }
  tmp = variable_test_bit((long )cnt, (unsigned long const volatile *)(& trans_pcie->queue_used));
  if (tmp == 0) {
    goto ldv_51340;
  } else {
  }
  if ((((unsigned long )txq_bm >> cnt) & 1UL) == 0UL) {
    goto ldv_51340;
  } else {
  }
  __iwl_dbg(trans->dev, 2147483648U, 0, "iwl_trans_pcie_wait_txq_empty", "Emptying queue %d...\n",
            cnt);
  txq = trans_pcie->txq + (unsigned long )cnt;
  q = & txq->q;
  wr_ptr = (u8 )*((int volatile *)(& q->write_ptr));
  goto ldv_51355;
  ldv_51354:
  write_ptr = (u8 )*((int volatile *)(& q->write_ptr));
  __ret_warn_once = (int )wr_ptr != (int )write_ptr;
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10673/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlwifi/pcie/trans.o.c.prepared",
                        1478, "WR pointer moved while flushing %d -> %d\n", (int )wr_ptr,
                        (int )write_ptr);
    } else {
    }
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  tmp___3 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___3 != 0L) {
    return (-110);
  } else {
  }
  msleep(1U);
  ldv_51355: ;
  if (q->read_ptr != (int )*((int volatile *)(& q->write_ptr))) {
    tmp___4 = msecs_to_jiffies(2000U);
    if ((long )((tmp___4 + now) - (unsigned long )jiffies) >= 0L) {
      goto ldv_51354;
    } else {
      goto ldv_51356;
    }
  } else {
  }
  ldv_51356: ;
  if (q->read_ptr != q->write_ptr) {
    __iwl_err(trans->dev, 0, 0, "fail to flush all tx fifo queues Q %d\n", cnt);
    ret = -110;
    goto ldv_51357;
  } else {
  }
  __iwl_dbg(trans->dev, 2147483648U, 0, "iwl_trans_pcie_wait_txq_empty", "Queue %d is now empty.\n",
            cnt);
  ldv_51340:
  cnt = cnt + 1;
  ldv_51359: ;
  if ((int )((trans->cfg)->base_params)->num_of_queues > cnt) {
    goto ldv_51358;
  } else {
  }
  ldv_51357: ;
  if (ret == 0) {
    return (0);
  } else {
  }
  __iwl_err(trans->dev, 0, 0, "Current SW read_ptr %d write_ptr %d\n", txq->q.read_ptr,
            txq->q.write_ptr);
  scd_sram_addr = trans_pcie->scd_base_addr + (txq->q.id + 106U) * 16U;
  iwl_trans_read_mem(trans, scd_sram_addr, (void *)(& buf), 4);
  print_hex_dump("\v", "iwl data: ", 2, 16, 1, (void const *)(& buf), 16UL, 1);
  cnt = 0;
  goto ldv_51361;
  ldv_51360:
  tmp___5 = iwl_read_direct32(trans, (u32 )((cnt + 1622) * 4));
  __iwl_err(trans->dev, 0, 0, "FH TRBs(%d) = 0x%08x\n", cnt, tmp___5);
  cnt = cnt + 1;
  ldv_51361: ;
  if (cnt <= 7) {
    goto ldv_51360;
  } else {
  }
  cnt = 0;
  goto ldv_51368;
  ldv_51367:
  tmp___6 = SCD_QUEUE_STATUS_BITS((unsigned int )cnt);
  tmp___7 = iwl_read_prph(trans, tmp___6);
  status = tmp___7;
  fifo = (unsigned int )((u8 )status) & 7U;
  active = ((unsigned long )status & 8UL) != 0UL;
  tmp___8 = iwl_trans_read_mem32(trans, trans_pcie->scd_base_addr + ((u32 )((cnt + 1008) * 2) & 65532U));
  tbl_dw = tmp___8;
  if (cnt & 1) {
    tbl_dw = tbl_dw >> 16;
  } else {
    tbl_dw = tbl_dw & 65535U;
  }
  tmp___9 = SCD_QUEUE_WRPTR((unsigned int )cnt);
  tmp___10 = iwl_read_prph(trans, tmp___9);
  tmp___11 = SCD_QUEUE_RDPTR((unsigned int )cnt);
  tmp___12 = iwl_read_prph(trans, tmp___11);
  __iwl_err(trans->dev, 0, 0, "Q %d is %sactive and mapped to fifo %d ra_tid 0x%04x [%d,%d]\n",
            cnt, (int )active ? (char *)"" : (char *)"in", (int )fifo, tbl_dw, tmp___12 & 255U,
            tmp___10);
  cnt = cnt + 1;
  ldv_51368: ;
  if ((int )((trans->cfg)->base_params)->num_of_queues > cnt) {
    goto ldv_51367;
  } else {
  }
  return (ret);
}
}
static void iwl_trans_pcie_set_bits_mask(struct iwl_trans *trans , u32 reg , u32 mask ,
                                         u32 value )
{
  struct iwl_trans_pcie *trans_pcie ;
  unsigned long flags ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  ldv_spin_lock();
  __iwl_trans_pcie_set_bits_mask___0(trans, reg, mask, value);
  spin_unlock_irqrestore(& trans_pcie->reg_lock, flags);
  return;
}
}
static char const *get_csr_string(int cmd )
{
  {
  switch (cmd) {
  case 0: ;
  return ("CSR_HW_IF_CONFIG_REG");
  case 4: ;
  return ("CSR_INT_COALESCING");
  case 8: ;
  return ("CSR_INT");
  case 12: ;
  return ("CSR_INT_MASK");
  case 16: ;
  return ("CSR_FH_INT_STATUS");
  case 24: ;
  return ("CSR_GPIO_IN");
  case 32: ;
  return ("CSR_RESET");
  case 36: ;
  return ("CSR_GP_CNTRL");
  case 40: ;
  return ("CSR_HW_REV");
  case 44: ;
  return ("CSR_EEPROM_REG");
  case 48: ;
  return ("CSR_EEPROM_GP");
  case 52: ;
  return ("CSR_OTP_GP_REG");
  case 60: ;
  return ("CSR_GIO_REG");
  case 72: ;
  return ("CSR_GP_UCODE_REG");
  case 80: ;
  return ("CSR_GP_DRIVER_REG");
  case 84: ;
  return ("CSR_UCODE_DRV_GP1");
  case 96: ;
  return ("CSR_UCODE_DRV_GP2");
  case 148: ;
  return ("CSR_LED_REG");
  case 160: ;
  return ("CSR_DRAM_INT_TBL_REG");
  case 256: ;
  return ("CSR_GIO_CHICKEN_BITS");
  case 524: ;
  return ("CSR_ANA_PLL_CFG");
  case 556: ;
  return ("CSR_HW_REV_WA_REG");
  case 552: ;
  return ("CSR_MONITOR_STATUS_REG");
  case 576: ;
  return ("CSR_DBG_HPET_MEM_REG");
  default: ;
  return ("UNKNOWN");
  }
}
}
void iwl_pcie_dump_csr(struct iwl_trans *trans )
{
  int i ;
  u32 csr_tbl[24U] ;
  u32 tmp ;
  char const *tmp___0 ;
  {
  csr_tbl[0] = 0U;
  csr_tbl[1] = 4U;
  csr_tbl[2] = 8U;
  csr_tbl[3] = 12U;
  csr_tbl[4] = 16U;
  csr_tbl[5] = 24U;
  csr_tbl[6] = 32U;
  csr_tbl[7] = 36U;
  csr_tbl[8] = 40U;
  csr_tbl[9] = 44U;
  csr_tbl[10] = 48U;
  csr_tbl[11] = 52U;
  csr_tbl[12] = 60U;
  csr_tbl[13] = 72U;
  csr_tbl[14] = 80U;
  csr_tbl[15] = 84U;
  csr_tbl[16] = 96U;
  csr_tbl[17] = 148U;
  csr_tbl[18] = 160U;
  csr_tbl[19] = 256U;
  csr_tbl[20] = 524U;
  csr_tbl[21] = 552U;
  csr_tbl[22] = 556U;
  csr_tbl[23] = 576U;
  __iwl_err(trans->dev, 0, 0, "CSR values:\n");
  __iwl_err(trans->dev, 0, 0, "(2nd byte of CSR_INT_COALESCING is CSR_INT_PERIODIC_REG)\n");
  i = 0;
  goto ldv_51414;
  ldv_51413:
  tmp = iwl_read32___4(trans, csr_tbl[i]);
  tmp___0 = get_csr_string((int )csr_tbl[i]);
  __iwl_err(trans->dev, 0, 0, "  %25s: 0X%08x\n", tmp___0, tmp);
  i = i + 1;
  ldv_51414: ;
  if ((unsigned int )i <= 23U) {
    goto ldv_51413;
  } else {
  }
  return;
}
}
static ssize_t iwl_dbgfs_tx_queue_read(struct file *file , char *user_buf , size_t count ,
                                       loff_t *ppos )
{
  struct iwl_trans *trans ;
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_txq *txq ;
  struct iwl_queue *q ;
  char *buf ;
  int pos ;
  int cnt ;
  int ret ;
  size_t bufsz ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  ssize_t tmp___3 ;
  {
  trans = (struct iwl_trans *)file->private_data;
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  pos = 0;
  bufsz = (unsigned long )((trans->cfg)->base_params)->num_of_queues * 64UL;
  if ((unsigned long )trans_pcie->txq == (unsigned long )((struct iwl_txq *)0)) {
    return (-11L);
  } else {
  }
  tmp = kzalloc(bufsz, 208U);
  buf = (char *)tmp;
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    return (-12L);
  } else {
  }
  cnt = 0;
  goto ldv_51432;
  ldv_51431:
  txq = trans_pcie->txq + (unsigned long )cnt;
  q = & txq->q;
  tmp___0 = variable_test_bit((long )cnt, (unsigned long const volatile *)(& trans_pcie->queue_stopped));
  tmp___1 = variable_test_bit((long )cnt, (unsigned long const volatile *)(& trans_pcie->queue_used));
  tmp___2 = scnprintf(buf + (unsigned long )pos, bufsz - (size_t )pos, "hwq %.2d: read=%u write=%u use=%d stop=%d\n",
                      cnt, q->read_ptr, q->write_ptr, tmp___1 != 0, tmp___0 != 0);
  pos = tmp___2 + pos;
  cnt = cnt + 1;
  ldv_51432: ;
  if ((int )((trans->cfg)->base_params)->num_of_queues > cnt) {
    goto ldv_51431;
  } else {
  }
  tmp___3 = simple_read_from_buffer((void *)user_buf, count, ppos, (void const *)buf,
                                    (size_t )pos);
  ret = (int )tmp___3;
  kfree((void const *)buf);
  return ((ssize_t )ret);
}
}
static ssize_t iwl_dbgfs_rx_queue_read(struct file *file , char *user_buf , size_t count ,
                                       loff_t *ppos )
{
  struct iwl_trans *trans ;
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_rxq *rxq ;
  char buf[256U] ;
  int pos ;
  size_t bufsz ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  ssize_t tmp___4 ;
  {
  trans = (struct iwl_trans *)file->private_data;
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  rxq = & trans_pcie->rxq;
  pos = 0;
  bufsz = 256UL;
  tmp = scnprintf((char *)(& buf) + (unsigned long )pos, bufsz - (unsigned long )pos,
                  "read: %u\n", rxq->read);
  pos = tmp + pos;
  tmp___0 = scnprintf((char *)(& buf) + (unsigned long )pos, bufsz - (unsigned long )pos,
                      "write: %u\n", rxq->write);
  pos = tmp___0 + pos;
  tmp___1 = scnprintf((char *)(& buf) + (unsigned long )pos, bufsz - (unsigned long )pos,
                      "free_count: %u\n", rxq->free_count);
  pos = tmp___1 + pos;
  if ((unsigned long )rxq->rb_stts != (unsigned long )((struct iwl_rb_status *)0)) {
    tmp___2 = scnprintf((char *)(& buf) + (unsigned long )pos, bufsz - (unsigned long )pos,
                        "closed_rb_num: %u\n", (int )(rxq->rb_stts)->closed_rb_num & 4095);
    pos = tmp___2 + pos;
  } else {
    tmp___3 = scnprintf((char *)(& buf) + (unsigned long )pos, bufsz - (unsigned long )pos,
                        "closed_rb_num: Not Allocated\n");
    pos = tmp___3 + pos;
  }
  tmp___4 = simple_read_from_buffer((void *)user_buf, count, ppos, (void const *)(& buf),
                                    (size_t )pos);
  return (tmp___4);
}
}
static ssize_t iwl_dbgfs_interrupt_read(struct file *file , char *user_buf , size_t count ,
                                        loff_t *ppos )
{
  struct iwl_trans *trans ;
  struct iwl_trans_pcie *trans_pcie ;
  struct isr_statistics *isr_stats ;
  int pos ;
  char *buf ;
  int bufsz ;
  ssize_t ret ;
  void *tmp ;
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
  int tmp___11 ;
  {
  trans = (struct iwl_trans *)file->private_data;
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  isr_stats = & trans_pcie->isr_stats;
  pos = 0;
  bufsz = 1536;
  tmp = kzalloc((size_t )bufsz, 208U);
  buf = (char *)tmp;
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    return (-12L);
  } else {
  }
  tmp___0 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), "Interrupt Statistics Report:\n");
  pos = tmp___0 + pos;
  tmp___1 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), "HW Error:\t\t\t %u\n",
                      isr_stats->hw);
  pos = tmp___1 + pos;
  tmp___2 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), "SW Error:\t\t\t %u\n",
                      isr_stats->sw);
  pos = tmp___2 + pos;
  if (isr_stats->sw != 0U || isr_stats->hw != 0U) {
    tmp___3 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), "\tLast Restarting Code:  0x%X\n",
                        isr_stats->err_code);
    pos = tmp___3 + pos;
  } else {
  }
  tmp___4 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), "Frame transmitted:\t\t %u\n",
                      isr_stats->sch);
  pos = tmp___4 + pos;
  tmp___5 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), "Alive interrupt:\t\t %u\n",
                      isr_stats->alive);
  pos = tmp___5 + pos;
  tmp___6 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), "HW RF KILL switch toggled:\t %u\n",
                      isr_stats->rfkill);
  pos = tmp___6 + pos;
  tmp___7 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), "CT KILL:\t\t\t %u\n",
                      isr_stats->ctkill);
  pos = tmp___7 + pos;
  tmp___8 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), "Wakeup Interrupt:\t\t %u\n",
                      isr_stats->wakeup);
  pos = tmp___8 + pos;
  tmp___9 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), "Rx command responses:\t\t %u\n",
                      isr_stats->rx);
  pos = tmp___9 + pos;
  tmp___10 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), "Tx/FH interrupt:\t\t %u\n",
                       isr_stats->tx);
  pos = tmp___10 + pos;
  tmp___11 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), "Unexpected INTA:\t\t %u\n",
                       isr_stats->unhandled);
  pos = tmp___11 + pos;
  ret = simple_read_from_buffer((void *)user_buf, count, ppos, (void const *)buf,
                                (size_t )pos);
  kfree((void const *)buf);
  return (ret);
}
}
static ssize_t iwl_dbgfs_interrupt_write(struct file *file , char const *user_buf ,
                                         size_t count , loff_t *ppos )
{
  struct iwl_trans *trans ;
  struct iwl_trans_pcie *trans_pcie ;
  struct isr_statistics *isr_stats ;
  char buf[8U] ;
  int buf_size ;
  u32 reset_flag ;
  size_t _min1 ;
  unsigned long _min2 ;
  unsigned long tmp ;
  int tmp___0 ;
  {
  trans = (struct iwl_trans *)file->private_data;
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  isr_stats = & trans_pcie->isr_stats;
  memset((void *)(& buf), 0, 8UL);
  _min1 = count;
  _min2 = 7UL;
  buf_size = (int )(_min1 < _min2 ? _min1 : _min2);
  tmp = copy_from_user((void *)(& buf), (void const *)user_buf, (unsigned long )buf_size);
  if (tmp != 0UL) {
    return (-14L);
  } else {
  }
  tmp___0 = sscanf((char const *)(& buf), "%x", & reset_flag);
  if (tmp___0 != 1) {
    return (-14L);
  } else {
  }
  if (reset_flag == 0U) {
    memset((void *)isr_stats, 0, 44UL);
  } else {
  }
  return ((ssize_t )count);
}
}
static ssize_t iwl_dbgfs_csr_write(struct file *file , char const *user_buf , size_t count ,
                                   loff_t *ppos )
{
  struct iwl_trans *trans ;
  char buf[8U] ;
  int buf_size ;
  int csr ;
  size_t _min1 ;
  unsigned long _min2 ;
  unsigned long tmp ;
  int tmp___0 ;
  {
  trans = (struct iwl_trans *)file->private_data;
  memset((void *)(& buf), 0, 8UL);
  _min1 = count;
  _min2 = 7UL;
  buf_size = (int )(_min1 < _min2 ? _min1 : _min2);
  tmp = copy_from_user((void *)(& buf), (void const *)user_buf, (unsigned long )buf_size);
  if (tmp != 0UL) {
    return (-14L);
  } else {
  }
  tmp___0 = sscanf((char const *)(& buf), "%d", & csr);
  if (tmp___0 != 1) {
    return (-14L);
  } else {
  }
  iwl_pcie_dump_csr(trans);
  return ((ssize_t )count);
}
}
static ssize_t iwl_dbgfs_fh_reg_read(struct file *file , char *user_buf , size_t count ,
                                     loff_t *ppos )
{
  struct iwl_trans *trans ;
  char *buf ;
  ssize_t ret ;
  int tmp ;
  {
  trans = (struct iwl_trans *)file->private_data;
  buf = (char *)0;
  tmp = iwl_dump_fh(trans, & buf);
  ret = (ssize_t )tmp;
  if (ret < 0L) {
    return (ret);
  } else {
  }
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    return (-22L);
  } else {
  }
  ret = simple_read_from_buffer((void *)user_buf, count, ppos, (void const *)buf,
                                (size_t )ret);
  kfree((void const *)buf);
  return (ret);
}
}
static struct file_operations const iwl_dbgfs_interrupt_ops =
     {0, & generic_file_llseek, & iwl_dbgfs_interrupt_read, & iwl_dbgfs_interrupt_write,
    0, 0, 0, 0, 0, 0, 0, 0, 0, & simple_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0};
static struct file_operations const iwl_dbgfs_fh_reg_ops =
     {0, & generic_file_llseek, & iwl_dbgfs_fh_reg_read, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, & simple_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct file_operations const iwl_dbgfs_rx_queue_ops =
     {0, & generic_file_llseek, & iwl_dbgfs_rx_queue_read, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, & simple_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct file_operations const iwl_dbgfs_tx_queue_ops =
     {0, & generic_file_llseek, & iwl_dbgfs_tx_queue_read, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, & simple_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct file_operations const iwl_dbgfs_csr_ops =
     {0, & generic_file_llseek, 0, & iwl_dbgfs_csr_write, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    & simple_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int iwl_trans_pcie_dbgfs_register(struct iwl_trans *trans , struct dentry *dir )
{
  struct dentry *tmp ;
  struct dentry *tmp___0 ;
  struct dentry *tmp___1 ;
  struct dentry *tmp___2 ;
  struct dentry *tmp___3 ;
  {
  tmp = debugfs_create_file("rx_queue", 256, dir, (void *)trans, & iwl_dbgfs_rx_queue_ops);
  if ((unsigned long )tmp == (unsigned long )((struct dentry *)0)) {
    goto err;
  } else {
  }
  tmp___0 = debugfs_create_file("tx_queue", 256, dir, (void *)trans, & iwl_dbgfs_tx_queue_ops);
  if ((unsigned long )tmp___0 == (unsigned long )((struct dentry *)0)) {
    goto err;
  } else {
  }
  tmp___1 = debugfs_create_file("interrupt", 384, dir, (void *)trans, & iwl_dbgfs_interrupt_ops);
  if ((unsigned long )tmp___1 == (unsigned long )((struct dentry *)0)) {
    goto err;
  } else {
  }
  tmp___2 = debugfs_create_file("csr", 128, dir, (void *)trans, & iwl_dbgfs_csr_ops);
  if ((unsigned long )tmp___2 == (unsigned long )((struct dentry *)0)) {
    goto err;
  } else {
  }
  tmp___3 = debugfs_create_file("fh_reg", 256, dir, (void *)trans, & iwl_dbgfs_fh_reg_ops);
  if ((unsigned long )tmp___3 == (unsigned long )((struct dentry *)0)) {
    goto err;
  } else {
  }
  return (0);
  err:
  __iwl_err(trans->dev, 0, 0, "failed to create the trans debugfs entry\n");
  return (-12);
}
}
static u32 iwl_trans_pcie_get_cmdlen(struct iwl_tfd *tfd )
{
  u32 cmdlen ;
  int i ;
  u16 tmp ;
  {
  cmdlen = 0U;
  i = 0;
  goto ldv_51512;
  ldv_51511:
  tmp = iwl_pcie_tfd_tb_get_len(tfd, (int )((u8 )i));
  cmdlen = (u32 )tmp + cmdlen;
  i = i + 1;
  ldv_51512: ;
  if (i <= 19) {
    goto ldv_51511;
  } else {
  }
  return (cmdlen);
}
}
static u32 iwl_trans_pcie_dump_data(struct iwl_trans *trans , void *buf , u32 buflen )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_fw_error_dump_data *data ;
  struct iwl_txq *cmdq ;
  struct iwl_fw_error_dump_txcmd *txcmd ;
  u32 len ;
  int i ;
  int ptr ;
  u8 idx ;
  u8 tmp ;
  u32 caplen ;
  u32 cmdlen ;
  u32 __min1 ;
  u32 __min2 ;
  size_t __len ;
  void *__ret ;
  {
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  cmdq = trans_pcie->txq + (unsigned long )trans_pcie->cmd_queue;
  if ((unsigned long )buf == (unsigned long )((void *)0)) {
    return ((u32 )((unsigned long )cmdq->q.n_window) * 332U + 8U);
  } else {
  }
  len = 0U;
  data = (struct iwl_fw_error_dump_data *)buf;
  data->type = 3U;
  txcmd = (struct iwl_fw_error_dump_txcmd *)(& data->data);
  spin_lock_bh(& cmdq->lock);
  ptr = cmdq->q.write_ptr;
  i = 0;
  goto ldv_51536;
  ldv_51535:
  tmp = get_cmd_index(& cmdq->q, (u32 )ptr);
  idx = tmp;
  cmdlen = iwl_trans_pcie_get_cmdlen(cmdq->tfds + (unsigned long )ptr);
  __min1 = 324U;
  __min2 = cmdlen;
  caplen = __min1 < __min2 ? __min1 : __min2;
  if (cmdlen != 0U) {
    len = (len + caplen) + 8U;
    txcmd->cmdlen = cmdlen;
    txcmd->caplen = caplen;
    __len = (size_t )caplen;
    __ret = memcpy((void *)(& txcmd->data), (void const *)(cmdq->entries + (unsigned long )idx)->cmd,
                             __len);
    txcmd = (struct iwl_fw_error_dump_txcmd *)(& txcmd->data) + (unsigned long )caplen;
  } else {
  }
  ptr = iwl_queue_dec_wrap(ptr);
  i = i + 1;
  ldv_51536: ;
  if (cmdq->q.n_window > i) {
    goto ldv_51535;
  } else {
  }
  spin_unlock_bh(& cmdq->lock);
  data->len = len;
  return (len + 8U);
}
}
static struct iwl_trans_ops const trans_ops_pcie =
     {& iwl_trans_pcie_start_hw, & iwl_trans_pcie_op_mode_leave, & iwl_trans_pcie_start_fw,
    0, & iwl_trans_pcie_fw_alive, & iwl_trans_pcie_stop_device, & iwl_trans_pcie_d3_suspend,
    & iwl_trans_pcie_d3_resume, & iwl_trans_pcie_send_hcmd, & iwl_trans_pcie_tx, & iwl_trans_pcie_reclaim,
    & iwl_trans_pcie_txq_enable, & iwl_trans_pcie_txq_disable, & iwl_trans_pcie_dbgfs_register,
    & iwl_trans_pcie_wait_txq_empty, & iwl_trans_pcie_write8, & iwl_trans_pcie_write32,
    & iwl_trans_pcie_read32, & iwl_trans_pcie_read_prph, & iwl_trans_pcie_write_prph,
    & iwl_trans_pcie_read_mem, & iwl_trans_pcie_write_mem, & iwl_trans_pcie_configure,
    & iwl_trans_pcie_set_pmi, & iwl_trans_pcie_grab_nic_access, & iwl_trans_pcie_release_nic_access,
    & iwl_trans_pcie_set_bits_mask, 0, 0, & iwl_trans_pcie_dump_data};
struct iwl_trans *iwl_trans_pcie_alloc(struct pci_dev *pdev , struct pci_device_id const *ent ,
                                       struct iwl_cfg const *cfg )
{
  struct iwl_trans_pcie *trans_pcie ;
  struct iwl_trans *trans ;
  u16 pci_cmd ;
  int err ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  char const *tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  {
  tmp = kzalloc(16824UL, 208U);
  trans = (struct iwl_trans *)tmp;
  if ((unsigned long )trans == (unsigned long )((struct iwl_trans *)0)) {
    err = -12;
    goto out;
  } else {
  }
  trans_pcie = (struct iwl_trans_pcie *)(& trans->trans_specific);
  trans->ops = & trans_ops_pcie;
  trans->cfg = cfg;
  trans_lockdep_init(trans);
  trans_pcie->trans = trans;
  spinlock_check(& trans_pcie->irq_lock);
  __raw_spin_lock_init(& trans_pcie->irq_lock.ldv_6347.rlock, "&(&trans_pcie->irq_lock)->rlock",
                       & __key);
  spinlock_check(& trans_pcie->reg_lock);
  __raw_spin_lock_init(& trans_pcie->reg_lock.ldv_6347.rlock, "&(&trans_pcie->reg_lock)->rlock",
                       & __key___0);
  __init_waitqueue_head(& trans_pcie->ucode_write_waitq, "&trans_pcie->ucode_write_waitq",
                        & __key___1);
  err = pci_enable_device(pdev);
  if (err != 0) {
    goto out_no_pci;
  } else {
  }
  if (! ((_Bool )(cfg->base_params)->pcie_l1_allowed)) {
    pci_disable_link_state(pdev, 7);
  } else {
  }
  pci_set_master(pdev);
  err = pci_set_dma_mask(pdev, 68719476735ULL);
  if (err == 0) {
    err = pci_set_consistent_dma_mask(pdev, 68719476735ULL);
  } else {
  }
  if (err != 0) {
    err = pci_set_dma_mask(pdev, 4294967295ULL);
    if (err == 0) {
      err = pci_set_consistent_dma_mask(pdev, 4294967295ULL);
    } else {
    }
    if (err != 0) {
      dev_err((struct device const *)(& pdev->dev), "No suitable DMA available\n");
      goto out_pci_disable_device;
    } else {
    }
  } else {
  }
  err = pci_request_regions(pdev, "iwlwifi");
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "pci_request_regions failed\n");
    goto out_pci_disable_device;
  } else {
  }
  trans_pcie->hw_base = pci_ioremap_bar(pdev, 0);
  if ((unsigned long )trans_pcie->hw_base == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& pdev->dev), "pci_ioremap_bar failed\n");
    err = -19;
    goto out_pci_release_regions;
  } else {
  }
  pci_write_config_byte((struct pci_dev const *)pdev, 65, 0);
  trans->dev = & pdev->dev;
  trans_pcie->pci_dev = pdev;
  iwl_disable_interrupts___0(trans);
  err = pci_enable_msi_exact(pdev, 1);
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "pci_enable_msi failed(0X%x)\n",
            err);
    pci_read_config_word((struct pci_dev const *)pdev, 4, & pci_cmd);
    if (((int )pci_cmd & 1024) != 0) {
      pci_cmd = (unsigned int )pci_cmd & 64511U;
      pci_write_config_word((struct pci_dev const *)pdev, 4, (int )pci_cmd);
    } else {
    }
  } else {
  }
  trans->hw_rev = iwl_read32___4(trans, 40U);
  trans->hw_id = (u32 )(((int )pdev->device << 16) + (int )pdev->subsystem_device);
  snprintf((char *)(& trans->hw_id_str), 52UL, "PCI ID: 0x%04X:0x%04X", (int )pdev->device,
           (int )pdev->subsystem_device);
  __init_waitqueue_head(& trans_pcie->wait_command_queue, "&trans_pcie->wait_command_queue",
                        & __key___2);
  tmp___0 = dev_name((struct device const *)trans->dev);
  snprintf((char *)(& trans->dev_cmd_pool_name), 50UL, "iwl_cmd_pool:%s", tmp___0);
  trans->dev_cmd_headroom = 0UL;
  trans->dev_cmd_pool = kmem_cache_create((char const *)(& trans->dev_cmd_pool_name),
                                          trans->dev_cmd_headroom + 324UL, 8UL, 8192UL,
                                          (void (*)(void * ))0);
  if ((unsigned long )trans->dev_cmd_pool == (unsigned long )((struct kmem_cache *)0)) {
    err = -12;
    goto out_pci_disable_msi;
  } else {
  }
  tmp___1 = iwl_pcie_alloc_ict(trans);
  if (tmp___1 != 0) {
    goto out_free_cmd_pool;
  } else {
  }
  err = ldv_request_threaded_irq_554(pdev->irq, & iwl_pcie_isr, & iwl_pcie_irq_handler,
                                     128UL, "iwlwifi", (void *)trans);
  if (err != 0) {
    __iwl_err(trans->dev, 0, 0, "Error allocating IRQ %d\n", pdev->irq);
    goto out_free_ict;
  } else {
  }
  trans_pcie->inta_mask = 3120562315U;
  return (trans);
  out_free_ict:
  iwl_pcie_free_ict(trans);
  out_free_cmd_pool:
  kmem_cache_destroy(trans->dev_cmd_pool);
  out_pci_disable_msi:
  pci_disable_msi(pdev);
  out_pci_release_regions:
  pci_release_regions(pdev);
  out_pci_disable_device:
  pci_disable_device(pdev);
  out_no_pci:
  kfree((void const *)trans);
  out:
  tmp___2 = ERR_PTR((long )err);
  return ((struct iwl_trans *)tmp___2);
}
}
extern int ldv_release_41(void) ;
extern int ldv_release_43(void) ;
int ldv_retval_2 ;
extern int ldv_release_44(void) ;
int ldv_retval_26 ;
int ldv_retval_0 ;
extern int ldv_release_45(void) ;
int ldv_retval_6 ;
extern int ldv_stop_hw_40(void) ;
int ldv_retval_1 ;
extern int ldv_release_42(void) ;
int ldv_retval_3 ;
int ldv_retval_27 ;
void disable_suitable_irq_2(int line , void *data )
{
  {
  if (ldv_irq_2_0 != 0 && line == ldv_irq_line_2_0) {
    ldv_irq_2_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_2_1 != 0 && line == ldv_irq_line_2_1) {
    ldv_irq_2_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_2_2 != 0 && line == ldv_irq_line_2_2) {
    ldv_irq_2_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_2_3 != 0 && line == ldv_irq_line_2_3) {
    ldv_irq_2_3 = 0;
    return;
  } else {
  }
  return;
}
}
int reg_check_1(irqreturn_t (*handler)(int , void * ) , irqreturn_t (*thread_fn)(int ,
                                                                                  void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& iwl_pcie_isr) && (unsigned long )thread_fn == (unsigned long )(& iwl_pcie_irq_handler)) {
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_file_operations_41(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(1032UL);
  iwl_dbgfs_csr_ops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_zalloc(512UL);
  iwl_dbgfs_csr_ops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_iwl_trans_ops_40(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(248UL);
  trans_ops_pcie_group1 = (struct iwl_trans *)tmp;
  return;
}
}
void ldv_file_operations_45(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(1032UL);
  iwl_dbgfs_interrupt_ops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_zalloc(512UL);
  iwl_dbgfs_interrupt_ops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_file_operations_43(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(1032UL);
  iwl_dbgfs_rx_queue_ops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_zalloc(512UL);
  iwl_dbgfs_rx_queue_ops_group2 = (struct file *)tmp___0;
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
int ldv_irq_2(int state , int line , void *data )
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
      irq_retval = iwl_pcie_isr(line, data);
      LDV_IN_INTERRUPT = 1;
      if ((unsigned int )irq_retval == 2U) {
        state = 2;
      } else {
        state = 1;
      }
      return (state);
    } else {
    }
    goto ldv_51617;
    case 1: ;
    if (state == 2) {
      irq_retval = iwl_pcie_irq_handler(line, data);
      state = 1;
      return (state);
    } else {
    }
    goto ldv_51617;
    default:
    ldv_stop();
    }
    ldv_51617: ;
  } else {
  }
  return (state);
}
}
void choose_interrupt_2(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_0, ldv_irq_line_2_0, ldv_irq_data_2_0);
  goto ldv_51624;
  case 1:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_1, ldv_irq_line_2_1, ldv_irq_data_2_1);
  goto ldv_51624;
  case 2:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_2, ldv_irq_line_2_2, ldv_irq_data_2_2);
  goto ldv_51624;
  case 3:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_3, ldv_irq_line_2_3, ldv_irq_data_2_3);
  goto ldv_51624;
  default:
  ldv_stop();
  }
  ldv_51624: ;
  return;
}
}
void activate_suitable_irq_2(int line , void *data )
{
  {
  if (ldv_irq_2_0 == 0) {
    ldv_irq_line_2_0 = line;
    ldv_irq_data_2_0 = data;
    ldv_irq_2_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_1 == 0) {
    ldv_irq_line_2_1 = line;
    ldv_irq_data_2_1 = data;
    ldv_irq_2_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_2 == 0) {
    ldv_irq_line_2_2 = line;
    ldv_irq_data_2_2 = data;
    ldv_irq_2_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_3 == 0) {
    ldv_irq_line_2_3 = line;
    ldv_irq_data_2_3 = data;
    ldv_irq_2_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_file_operations_44(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(1032UL);
  iwl_dbgfs_fh_reg_ops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_zalloc(512UL);
  iwl_dbgfs_fh_reg_ops_group2 = (struct file *)tmp___0;
  return;
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
  goto ldv_51640;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_51640;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_51640;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_51640;
  default:
  ldv_stop();
  }
  ldv_51640: ;
  return;
}
}
int reg_check_2(irqreturn_t (*handler)(int , void * ) , irqreturn_t (*thread_fn)(int ,
                                                                                  void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& iwl_pcie_isr) && (unsigned long )thread_fn == (unsigned long )(& iwl_pcie_irq_handler)) {
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_file_operations_42(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(1032UL);
  iwl_dbgfs_tx_queue_ops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_zalloc(512UL);
  iwl_dbgfs_tx_queue_ops_group2 = (struct file *)tmp___0;
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
      irq_retval = iwl_pcie_isr(line, data);
      LDV_IN_INTERRUPT = 1;
      if ((unsigned int )irq_retval == 2U) {
        state = 2;
      } else {
        state = 1;
      }
      return (state);
    } else {
    }
    goto ldv_51663;
    case 1: ;
    if (state == 2) {
      irq_retval = iwl_pcie_irq_handler(line, data);
      state = 1;
      return (state);
    } else {
    }
    goto ldv_51663;
    default:
    ldv_stop();
    }
    ldv_51663: ;
  } else {
  }
  return (state);
}
}
void ldv_main_exported_42(void)
{
  int ldvarg99 ;
  int tmp ;
  char *ldvarg103 ;
  void *tmp___0 ;
  loff_t ldvarg100 ;
  loff_t tmp___1 ;
  loff_t *ldvarg101 ;
  void *tmp___2 ;
  size_t ldvarg102 ;
  size_t tmp___3 ;
  int tmp___4 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg99 = tmp;
  tmp___0 = ldv_zalloc(1UL);
  ldvarg103 = (char *)tmp___0;
  tmp___1 = __VERIFIER_nondet_loff_t();
  ldvarg100 = tmp___1;
  tmp___2 = ldv_zalloc(8UL);
  ldvarg101 = (loff_t *)tmp___2;
  tmp___3 = __VERIFIER_nondet_size_t();
  ldvarg102 = tmp___3;
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_42 == 2) {
    iwl_dbgfs_tx_queue_read(iwl_dbgfs_tx_queue_ops_group2, ldvarg103, ldvarg102, ldvarg101);
    ldv_state_variable_42 = 2;
  } else {
  }
  goto ldv_51675;
  case 1: ;
  if (ldv_state_variable_42 == 2) {
    generic_file_llseek(iwl_dbgfs_tx_queue_ops_group2, ldvarg100, ldvarg99);
    ldv_state_variable_42 = 2;
  } else {
  }
  goto ldv_51675;
  case 2: ;
  if (ldv_state_variable_42 == 1) {
    ldv_retval_3 = simple_open(iwl_dbgfs_tx_queue_ops_group1, iwl_dbgfs_tx_queue_ops_group2);
    if (ldv_retval_3 == 0) {
      ldv_state_variable_42 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_51675;
  case 3: ;
  if (ldv_state_variable_42 == 2) {
    ldv_release_42();
    ldv_state_variable_42 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_51675;
  default:
  ldv_stop();
  }
  ldv_51675: ;
  return;
}
}
void ldv_main_exported_40(void)
{
  int ldvarg75 ;
  int tmp ;
  void *ldvarg52 ;
  void *tmp___0 ;
  int ldvarg74 ;
  int tmp___1 ;
  int ldvarg76 ;
  int tmp___2 ;
  u32 ldvarg61 ;
  u32 tmp___3 ;
  u32 ldvarg54 ;
  u32 tmp___4 ;
  struct fw_img *ldvarg68 ;
  void *tmp___5 ;
  int ldvarg78 ;
  int tmp___6 ;
  void *ldvarg70 ;
  void *tmp___7 ;
  bool ldvarg73 ;
  struct iwl_device_cmd *ldvarg63 ;
  void *tmp___8 ;
  struct sk_buff_head *ldvarg45 ;
  void *tmp___9 ;
  unsigned long *ldvarg81 ;
  void *tmp___10 ;
  bool ldvarg40 ;
  struct dentry *ldvarg66 ;
  void *tmp___11 ;
  u32 ldvarg55 ;
  u32 tmp___12 ;
  u32 ldvarg36 ;
  u32 tmp___13 ;
  int ldvarg79 ;
  int tmp___14 ;
  bool ldvarg65 ;
  u32 ldvarg57 ;
  u32 tmp___15 ;
  int ldvarg62 ;
  int tmp___16 ;
  u8 ldvarg49 ;
  u8 tmp___17 ;
  u32 ldvarg59 ;
  u32 tmp___18 ;
  struct iwl_trans_config *ldvarg80 ;
  void *tmp___19 ;
  u32 ldvarg60 ;
  u32 tmp___20 ;
  enum iwl_d3_status *ldvarg41 ;
  void *tmp___21 ;
  u32 ldvarg39 ;
  u32 tmp___22 ;
  int ldvarg47 ;
  int tmp___23 ;
  u32 ldvarg48 ;
  u32 tmp___24 ;
  u32 ldvarg69 ;
  u32 tmp___25 ;
  void *ldvarg38 ;
  void *tmp___26 ;
  bool ldvarg44 ;
  struct sk_buff *ldvarg64 ;
  void *tmp___27 ;
  u32 ldvarg53 ;
  u32 tmp___28 ;
  int ldvarg37 ;
  int tmp___29 ;
  u32 ldvarg58 ;
  u32 tmp___30 ;
  int ldvarg46 ;
  int tmp___31 ;
  u32 ldvarg50 ;
  u32 tmp___32 ;
  u32 ldvarg56 ;
  u32 tmp___33 ;
  struct iwl_host_cmd *ldvarg72 ;
  void *tmp___34 ;
  int ldvarg71 ;
  int tmp___35 ;
  u32 ldvarg42 ;
  u32 tmp___36 ;
  unsigned long *ldvarg43 ;
  void *tmp___37 ;
  bool ldvarg67 ;
  int ldvarg51 ;
  int tmp___38 ;
  u16 ldvarg77 ;
  u16 tmp___39 ;
  int tmp___40 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg75 = tmp;
  tmp___0 = ldv_zalloc(1UL);
  ldvarg52 = tmp___0;
  tmp___1 = __VERIFIER_nondet_int();
  ldvarg74 = tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  ldvarg76 = tmp___2;
  tmp___3 = __VERIFIER_nondet_u32();
  ldvarg61 = tmp___3;
  tmp___4 = __VERIFIER_nondet_u32();
  ldvarg54 = tmp___4;
  tmp___5 = ldv_zalloc(200UL);
  ldvarg68 = (struct fw_img *)tmp___5;
  tmp___6 = __VERIFIER_nondet_int();
  ldvarg78 = tmp___6;
  tmp___7 = ldv_zalloc(1UL);
  ldvarg70 = tmp___7;
  tmp___8 = ldv_zalloc(324UL);
  ldvarg63 = (struct iwl_device_cmd *)tmp___8;
  tmp___9 = ldv_zalloc(96UL);
  ldvarg45 = (struct sk_buff_head *)tmp___9;
  tmp___10 = ldv_zalloc(8UL);
  ldvarg81 = (unsigned long *)tmp___10;
  tmp___11 = ldv_zalloc(320UL);
  ldvarg66 = (struct dentry *)tmp___11;
  tmp___12 = __VERIFIER_nondet_u32();
  ldvarg55 = tmp___12;
  tmp___13 = __VERIFIER_nondet_u32();
  ldvarg36 = tmp___13;
  tmp___14 = __VERIFIER_nondet_int();
  ldvarg79 = tmp___14;
  tmp___15 = __VERIFIER_nondet_u32();
  ldvarg57 = tmp___15;
  tmp___16 = __VERIFIER_nondet_int();
  ldvarg62 = tmp___16;
  tmp___17 = __VERIFIER_nondet_u8();
  ldvarg49 = tmp___17;
  tmp___18 = __VERIFIER_nondet_u32();
  ldvarg59 = tmp___18;
  tmp___19 = ldv_zalloc(48UL);
  ldvarg80 = (struct iwl_trans_config *)tmp___19;
  tmp___20 = __VERIFIER_nondet_u32();
  ldvarg60 = tmp___20;
  tmp___21 = ldv_zalloc(4UL);
  ldvarg41 = (enum iwl_d3_status *)tmp___21;
  tmp___22 = __VERIFIER_nondet_u32();
  ldvarg39 = tmp___22;
  tmp___23 = __VERIFIER_nondet_int();
  ldvarg47 = tmp___23;
  tmp___24 = __VERIFIER_nondet_u32();
  ldvarg48 = tmp___24;
  tmp___25 = __VERIFIER_nondet_u32();
  ldvarg69 = tmp___25;
  tmp___26 = ldv_zalloc(1UL);
  ldvarg38 = tmp___26;
  tmp___27 = ldv_zalloc(232UL);
  ldvarg64 = (struct sk_buff *)tmp___27;
  tmp___28 = __VERIFIER_nondet_u32();
  ldvarg53 = tmp___28;
  tmp___29 = __VERIFIER_nondet_int();
  ldvarg37 = tmp___29;
  tmp___30 = __VERIFIER_nondet_u32();
  ldvarg58 = tmp___30;
  tmp___31 = __VERIFIER_nondet_int();
  ldvarg46 = tmp___31;
  tmp___32 = __VERIFIER_nondet_u32();
  ldvarg50 = tmp___32;
  tmp___33 = __VERIFIER_nondet_u32();
  ldvarg56 = tmp___33;
  tmp___34 = ldv_zalloc(56UL);
  ldvarg72 = (struct iwl_host_cmd *)tmp___34;
  tmp___35 = __VERIFIER_nondet_int();
  ldvarg71 = tmp___35;
  tmp___36 = __VERIFIER_nondet_u32();
  ldvarg42 = tmp___36;
  tmp___37 = ldv_zalloc(8UL);
  ldvarg43 = (unsigned long *)tmp___37;
  tmp___38 = __VERIFIER_nondet_int();
  ldvarg51 = tmp___38;
  tmp___39 = __VERIFIER_nondet_u16();
  ldvarg77 = tmp___39;
  memset((void *)(& ldvarg73), 0, 1UL);
  memset((void *)(& ldvarg40), 0, 1UL);
  memset((void *)(& ldvarg65), 0, 1UL);
  memset((void *)(& ldvarg44), 0, 1UL);
  memset((void *)(& ldvarg67), 0, 1UL);
  tmp___40 = __VERIFIER_nondet_int();
  switch (tmp___40) {
  case 0: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_release_nic_access(trans_ops_pcie_group1, ldvarg81);
    ldv_state_variable_40 = 4;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_release_nic_access(trans_ops_pcie_group1, ldvarg81);
    ldv_state_variable_40 = 12;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_release_nic_access(trans_ops_pcie_group1, ldvarg81);
    ldv_state_variable_40 = 6;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_release_nic_access(trans_ops_pcie_group1, ldvarg81);
    ldv_state_variable_40 = 7;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_release_nic_access(trans_ops_pcie_group1, ldvarg81);
    ldv_state_variable_40 = 9;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_release_nic_access(trans_ops_pcie_group1, ldvarg81);
    ldv_state_variable_40 = 2;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_release_nic_access(trans_ops_pcie_group1, ldvarg81);
    ldv_state_variable_40 = 3;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_release_nic_access(trans_ops_pcie_group1, ldvarg81);
    ldv_state_variable_40 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_51730;
  case 1: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_configure(trans_ops_pcie_group1, (struct iwl_trans_config const *)ldvarg80);
    ldv_state_variable_40 = 11;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_configure(trans_ops_pcie_group1, (struct iwl_trans_config const *)ldvarg80);
    ldv_state_variable_40 = 7;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_configure(trans_ops_pcie_group1, (struct iwl_trans_config const *)ldvarg80);
    ldv_state_variable_40 = 2;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_configure(trans_ops_pcie_group1, (struct iwl_trans_config const *)ldvarg80);
    ldv_state_variable_40 = 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_configure(trans_ops_pcie_group1, (struct iwl_trans_config const *)ldvarg80);
    ldv_state_variable_40 = 16;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_configure(trans_ops_pcie_group1, (struct iwl_trans_config const *)ldvarg80);
    ldv_state_variable_40 = 13;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_configure(trans_ops_pcie_group1, (struct iwl_trans_config const *)ldvarg80);
    ldv_state_variable_40 = 6;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_configure(trans_ops_pcie_group1, (struct iwl_trans_config const *)ldvarg80);
    ldv_state_variable_40 = 3;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_configure(trans_ops_pcie_group1, (struct iwl_trans_config const *)ldvarg80);
    ldv_state_variable_40 = 9;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_configure(trans_ops_pcie_group1, (struct iwl_trans_config const *)ldvarg80);
    ldv_state_variable_40 = 12;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_configure(trans_ops_pcie_group1, (struct iwl_trans_config const *)ldvarg80);
    ldv_state_variable_40 = 14;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_configure(trans_ops_pcie_group1, (struct iwl_trans_config const *)ldvarg80);
    ldv_state_variable_40 = 15;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_configure(trans_ops_pcie_group1, (struct iwl_trans_config const *)ldvarg80);
    ldv_state_variable_40 = 8;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_configure(trans_ops_pcie_group1, (struct iwl_trans_config const *)ldvarg80);
    ldv_state_variable_40 = 4;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_configure(trans_ops_pcie_group1, (struct iwl_trans_config const *)ldvarg80);
    ldv_state_variable_40 = 10;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_configure(trans_ops_pcie_group1, (struct iwl_trans_config const *)ldvarg80);
    ldv_state_variable_40 = 5;
  } else {
  }
  goto ldv_51730;
  case 2: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_txq_enable(trans_ops_pcie_group1, ldvarg78, ldvarg76, ldvarg75,
                              ldvarg79, ldvarg74, (int )ldvarg77);
    ldv_state_variable_40 = 14;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_txq_enable(trans_ops_pcie_group1, ldvarg78, ldvarg76, ldvarg75,
                              ldvarg79, ldvarg74, (int )ldvarg77);
    ldv_state_variable_40 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_txq_enable(trans_ops_pcie_group1, ldvarg78, ldvarg76, ldvarg75,
                              ldvarg79, ldvarg74, (int )ldvarg77);
    ldv_state_variable_40 = 6;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_txq_enable(trans_ops_pcie_group1, ldvarg78, ldvarg76, ldvarg75,
                              ldvarg79, ldvarg74, (int )ldvarg77);
    ldv_state_variable_40 = 12;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_txq_enable(trans_ops_pcie_group1, ldvarg78, ldvarg76, ldvarg75,
                              ldvarg79, ldvarg74, (int )ldvarg77);
    ldv_state_variable_40 = 16;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_txq_enable(trans_ops_pcie_group1, ldvarg78, ldvarg76, ldvarg75,
                              ldvarg79, ldvarg74, (int )ldvarg77);
    ldv_state_variable_40 = 7;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_txq_enable(trans_ops_pcie_group1, ldvarg78, ldvarg76, ldvarg75,
                              ldvarg79, ldvarg74, (int )ldvarg77);
    ldv_state_variable_40 = 13;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_txq_enable(trans_ops_pcie_group1, ldvarg78, ldvarg76, ldvarg75,
                              ldvarg79, ldvarg74, (int )ldvarg77);
    ldv_state_variable_40 = 8;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_51730;
  case 3: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_set_pmi(trans_ops_pcie_group1, (int )ldvarg73);
    ldv_state_variable_40 = 11;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_set_pmi(trans_ops_pcie_group1, (int )ldvarg73);
    ldv_state_variable_40 = 7;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_set_pmi(trans_ops_pcie_group1, (int )ldvarg73);
    ldv_state_variable_40 = 2;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_set_pmi(trans_ops_pcie_group1, (int )ldvarg73);
    ldv_state_variable_40 = 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_set_pmi(trans_ops_pcie_group1, (int )ldvarg73);
    ldv_state_variable_40 = 16;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_set_pmi(trans_ops_pcie_group1, (int )ldvarg73);
    ldv_state_variable_40 = 13;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_set_pmi(trans_ops_pcie_group1, (int )ldvarg73);
    ldv_state_variable_40 = 6;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_set_pmi(trans_ops_pcie_group1, (int )ldvarg73);
    ldv_state_variable_40 = 3;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_set_pmi(trans_ops_pcie_group1, (int )ldvarg73);
    ldv_state_variable_40 = 9;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_set_pmi(trans_ops_pcie_group1, (int )ldvarg73);
    ldv_state_variable_40 = 12;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_set_pmi(trans_ops_pcie_group1, (int )ldvarg73);
    ldv_state_variable_40 = 14;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_set_pmi(trans_ops_pcie_group1, (int )ldvarg73);
    ldv_state_variable_40 = 15;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_set_pmi(trans_ops_pcie_group1, (int )ldvarg73);
    ldv_state_variable_40 = 8;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_set_pmi(trans_ops_pcie_group1, (int )ldvarg73);
    ldv_state_variable_40 = 4;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_set_pmi(trans_ops_pcie_group1, (int )ldvarg73);
    ldv_state_variable_40 = 10;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_set_pmi(trans_ops_pcie_group1, (int )ldvarg73);
    ldv_state_variable_40 = 5;
  } else {
  }
  goto ldv_51730;
  case 4: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_send_hcmd(trans_ops_pcie_group1, ldvarg72);
    ldv_state_variable_40 = 11;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_send_hcmd(trans_ops_pcie_group1, ldvarg72);
    ldv_state_variable_40 = 7;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_send_hcmd(trans_ops_pcie_group1, ldvarg72);
    ldv_state_variable_40 = 2;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_send_hcmd(trans_ops_pcie_group1, ldvarg72);
    ldv_state_variable_40 = 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_send_hcmd(trans_ops_pcie_group1, ldvarg72);
    ldv_state_variable_40 = 16;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_send_hcmd(trans_ops_pcie_group1, ldvarg72);
    ldv_state_variable_40 = 13;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_send_hcmd(trans_ops_pcie_group1, ldvarg72);
    ldv_state_variable_40 = 6;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_send_hcmd(trans_ops_pcie_group1, ldvarg72);
    ldv_state_variable_40 = 3;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_send_hcmd(trans_ops_pcie_group1, ldvarg72);
    ldv_state_variable_40 = 9;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_send_hcmd(trans_ops_pcie_group1, ldvarg72);
    ldv_state_variable_40 = 12;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_send_hcmd(trans_ops_pcie_group1, ldvarg72);
    ldv_state_variable_40 = 14;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_send_hcmd(trans_ops_pcie_group1, ldvarg72);
    ldv_state_variable_40 = 15;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_send_hcmd(trans_ops_pcie_group1, ldvarg72);
    ldv_state_variable_40 = 8;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_send_hcmd(trans_ops_pcie_group1, ldvarg72);
    ldv_state_variable_40 = 4;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_send_hcmd(trans_ops_pcie_group1, ldvarg72);
    ldv_state_variable_40 = 10;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_send_hcmd(trans_ops_pcie_group1, ldvarg72);
    ldv_state_variable_40 = 5;
  } else {
  }
  goto ldv_51730;
  case 5: ;
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_txq_disable(trans_ops_pcie_group1, ldvarg71);
    ldv_state_variable_40 = 4;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_txq_disable(trans_ops_pcie_group1, ldvarg71);
    ldv_state_variable_40 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_txq_disable(trans_ops_pcie_group1, ldvarg71);
    ldv_state_variable_40 = 15;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_txq_disable(trans_ops_pcie_group1, ldvarg71);
    ldv_state_variable_40 = 10;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_txq_disable(trans_ops_pcie_group1, ldvarg71);
    ldv_state_variable_40 = 3;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_txq_disable(trans_ops_pcie_group1, ldvarg71);
    ldv_state_variable_40 = 9;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_txq_disable(trans_ops_pcie_group1, ldvarg71);
    ldv_state_variable_40 = 11;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_txq_disable(trans_ops_pcie_group1, ldvarg71);
    ldv_state_variable_40 = 5;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_51730;
  case 6: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_dump_data(trans_ops_pcie_group1, ldvarg70, ldvarg69);
    ldv_state_variable_40 = 11;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_dump_data(trans_ops_pcie_group1, ldvarg70, ldvarg69);
    ldv_state_variable_40 = 7;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_dump_data(trans_ops_pcie_group1, ldvarg70, ldvarg69);
    ldv_state_variable_40 = 2;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_dump_data(trans_ops_pcie_group1, ldvarg70, ldvarg69);
    ldv_state_variable_40 = 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_dump_data(trans_ops_pcie_group1, ldvarg70, ldvarg69);
    ldv_state_variable_40 = 16;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_dump_data(trans_ops_pcie_group1, ldvarg70, ldvarg69);
    ldv_state_variable_40 = 13;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_dump_data(trans_ops_pcie_group1, ldvarg70, ldvarg69);
    ldv_state_variable_40 = 6;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_dump_data(trans_ops_pcie_group1, ldvarg70, ldvarg69);
    ldv_state_variable_40 = 3;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_dump_data(trans_ops_pcie_group1, ldvarg70, ldvarg69);
    ldv_state_variable_40 = 9;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_dump_data(trans_ops_pcie_group1, ldvarg70, ldvarg69);
    ldv_state_variable_40 = 12;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_dump_data(trans_ops_pcie_group1, ldvarg70, ldvarg69);
    ldv_state_variable_40 = 14;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_dump_data(trans_ops_pcie_group1, ldvarg70, ldvarg69);
    ldv_state_variable_40 = 15;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_dump_data(trans_ops_pcie_group1, ldvarg70, ldvarg69);
    ldv_state_variable_40 = 8;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_dump_data(trans_ops_pcie_group1, ldvarg70, ldvarg69);
    ldv_state_variable_40 = 4;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_dump_data(trans_ops_pcie_group1, ldvarg70, ldvarg69);
    ldv_state_variable_40 = 10;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_dump_data(trans_ops_pcie_group1, ldvarg70, ldvarg69);
    ldv_state_variable_40 = 5;
  } else {
  }
  goto ldv_51730;
  case 7: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_start_fw(trans_ops_pcie_group1, (struct fw_img const *)ldvarg68,
                            (int )ldvarg67);
    ldv_state_variable_40 = 11;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_start_fw(trans_ops_pcie_group1, (struct fw_img const *)ldvarg68,
                            (int )ldvarg67);
    ldv_state_variable_40 = 7;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_start_fw(trans_ops_pcie_group1, (struct fw_img const *)ldvarg68,
                            (int )ldvarg67);
    ldv_state_variable_40 = 2;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_start_fw(trans_ops_pcie_group1, (struct fw_img const *)ldvarg68,
                            (int )ldvarg67);
    ldv_state_variable_40 = 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_start_fw(trans_ops_pcie_group1, (struct fw_img const *)ldvarg68,
                            (int )ldvarg67);
    ldv_state_variable_40 = 16;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_start_fw(trans_ops_pcie_group1, (struct fw_img const *)ldvarg68,
                            (int )ldvarg67);
    ldv_state_variable_40 = 13;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_start_fw(trans_ops_pcie_group1, (struct fw_img const *)ldvarg68,
                            (int )ldvarg67);
    ldv_state_variable_40 = 6;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_start_fw(trans_ops_pcie_group1, (struct fw_img const *)ldvarg68,
                            (int )ldvarg67);
    ldv_state_variable_40 = 3;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_start_fw(trans_ops_pcie_group1, (struct fw_img const *)ldvarg68,
                            (int )ldvarg67);
    ldv_state_variable_40 = 9;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_start_fw(trans_ops_pcie_group1, (struct fw_img const *)ldvarg68,
                            (int )ldvarg67);
    ldv_state_variable_40 = 12;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_start_fw(trans_ops_pcie_group1, (struct fw_img const *)ldvarg68,
                            (int )ldvarg67);
    ldv_state_variable_40 = 14;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_start_fw(trans_ops_pcie_group1, (struct fw_img const *)ldvarg68,
                            (int )ldvarg67);
    ldv_state_variable_40 = 15;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_start_fw(trans_ops_pcie_group1, (struct fw_img const *)ldvarg68,
                            (int )ldvarg67);
    ldv_state_variable_40 = 8;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_start_fw(trans_ops_pcie_group1, (struct fw_img const *)ldvarg68,
                            (int )ldvarg67);
    ldv_state_variable_40 = 4;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_start_fw(trans_ops_pcie_group1, (struct fw_img const *)ldvarg68,
                            (int )ldvarg67);
    ldv_state_variable_40 = 10;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_start_fw(trans_ops_pcie_group1, (struct fw_img const *)ldvarg68,
                            (int )ldvarg67);
    ldv_state_variable_40 = 5;
  } else {
  }
  goto ldv_51730;
  case 8: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_dbgfs_register(trans_ops_pcie_group1, ldvarg66);
    ldv_state_variable_40 = 11;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_dbgfs_register(trans_ops_pcie_group1, ldvarg66);
    ldv_state_variable_40 = 7;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_dbgfs_register(trans_ops_pcie_group1, ldvarg66);
    ldv_state_variable_40 = 2;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_dbgfs_register(trans_ops_pcie_group1, ldvarg66);
    ldv_state_variable_40 = 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_dbgfs_register(trans_ops_pcie_group1, ldvarg66);
    ldv_state_variable_40 = 16;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_dbgfs_register(trans_ops_pcie_group1, ldvarg66);
    ldv_state_variable_40 = 13;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_dbgfs_register(trans_ops_pcie_group1, ldvarg66);
    ldv_state_variable_40 = 6;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_dbgfs_register(trans_ops_pcie_group1, ldvarg66);
    ldv_state_variable_40 = 3;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_dbgfs_register(trans_ops_pcie_group1, ldvarg66);
    ldv_state_variable_40 = 9;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_dbgfs_register(trans_ops_pcie_group1, ldvarg66);
    ldv_state_variable_40 = 12;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_dbgfs_register(trans_ops_pcie_group1, ldvarg66);
    ldv_state_variable_40 = 14;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_dbgfs_register(trans_ops_pcie_group1, ldvarg66);
    ldv_state_variable_40 = 15;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_dbgfs_register(trans_ops_pcie_group1, ldvarg66);
    ldv_state_variable_40 = 8;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_dbgfs_register(trans_ops_pcie_group1, ldvarg66);
    ldv_state_variable_40 = 4;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_dbgfs_register(trans_ops_pcie_group1, ldvarg66);
    ldv_state_variable_40 = 10;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_dbgfs_register(trans_ops_pcie_group1, ldvarg66);
    ldv_state_variable_40 = 5;
  } else {
  }
  goto ldv_51730;
  case 9: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_d3_suspend(trans_ops_pcie_group1, (int )ldvarg65);
    ldv_state_variable_40 = 15;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_d3_suspend(trans_ops_pcie_group1, (int )ldvarg65);
    ldv_state_variable_40 = 12;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_d3_suspend(trans_ops_pcie_group1, (int )ldvarg65);
    ldv_state_variable_40 = 6;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_d3_suspend(trans_ops_pcie_group1, (int )ldvarg65);
    ldv_state_variable_40 = 3;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_d3_suspend(trans_ops_pcie_group1, (int )ldvarg65);
    ldv_state_variable_40 = 16;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_d3_suspend(trans_ops_pcie_group1, (int )ldvarg65);
    ldv_state_variable_40 = 13;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_d3_suspend(trans_ops_pcie_group1, (int )ldvarg65);
    ldv_state_variable_40 = 9;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_d3_suspend(trans_ops_pcie_group1, (int )ldvarg65);
    ldv_state_variable_40 = 10;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_51730;
  case 10: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_tx(trans_ops_pcie_group1, ldvarg64, ldvarg63, ldvarg62);
    ldv_state_variable_40 = 11;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_tx(trans_ops_pcie_group1, ldvarg64, ldvarg63, ldvarg62);
    ldv_state_variable_40 = 7;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_tx(trans_ops_pcie_group1, ldvarg64, ldvarg63, ldvarg62);
    ldv_state_variable_40 = 2;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_tx(trans_ops_pcie_group1, ldvarg64, ldvarg63, ldvarg62);
    ldv_state_variable_40 = 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_tx(trans_ops_pcie_group1, ldvarg64, ldvarg63, ldvarg62);
    ldv_state_variable_40 = 16;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_tx(trans_ops_pcie_group1, ldvarg64, ldvarg63, ldvarg62);
    ldv_state_variable_40 = 13;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_tx(trans_ops_pcie_group1, ldvarg64, ldvarg63, ldvarg62);
    ldv_state_variable_40 = 6;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_tx(trans_ops_pcie_group1, ldvarg64, ldvarg63, ldvarg62);
    ldv_state_variable_40 = 3;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_tx(trans_ops_pcie_group1, ldvarg64, ldvarg63, ldvarg62);
    ldv_state_variable_40 = 9;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_tx(trans_ops_pcie_group1, ldvarg64, ldvarg63, ldvarg62);
    ldv_state_variable_40 = 12;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_tx(trans_ops_pcie_group1, ldvarg64, ldvarg63, ldvarg62);
    ldv_state_variable_40 = 14;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_tx(trans_ops_pcie_group1, ldvarg64, ldvarg63, ldvarg62);
    ldv_state_variable_40 = 15;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_tx(trans_ops_pcie_group1, ldvarg64, ldvarg63, ldvarg62);
    ldv_state_variable_40 = 8;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_tx(trans_ops_pcie_group1, ldvarg64, ldvarg63, ldvarg62);
    ldv_state_variable_40 = 4;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_tx(trans_ops_pcie_group1, ldvarg64, ldvarg63, ldvarg62);
    ldv_state_variable_40 = 10;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_tx(trans_ops_pcie_group1, ldvarg64, ldvarg63, ldvarg62);
    ldv_state_variable_40 = 5;
  } else {
  }
  goto ldv_51730;
  case 11: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_write32(trans_ops_pcie_group1, ldvarg61, ldvarg60);
    ldv_state_variable_40 = 11;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_write32(trans_ops_pcie_group1, ldvarg61, ldvarg60);
    ldv_state_variable_40 = 7;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_write32(trans_ops_pcie_group1, ldvarg61, ldvarg60);
    ldv_state_variable_40 = 2;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_write32(trans_ops_pcie_group1, ldvarg61, ldvarg60);
    ldv_state_variable_40 = 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_write32(trans_ops_pcie_group1, ldvarg61, ldvarg60);
    ldv_state_variable_40 = 16;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_write32(trans_ops_pcie_group1, ldvarg61, ldvarg60);
    ldv_state_variable_40 = 13;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_write32(trans_ops_pcie_group1, ldvarg61, ldvarg60);
    ldv_state_variable_40 = 6;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_write32(trans_ops_pcie_group1, ldvarg61, ldvarg60);
    ldv_state_variable_40 = 3;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_write32(trans_ops_pcie_group1, ldvarg61, ldvarg60);
    ldv_state_variable_40 = 9;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_write32(trans_ops_pcie_group1, ldvarg61, ldvarg60);
    ldv_state_variable_40 = 12;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_write32(trans_ops_pcie_group1, ldvarg61, ldvarg60);
    ldv_state_variable_40 = 14;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_write32(trans_ops_pcie_group1, ldvarg61, ldvarg60);
    ldv_state_variable_40 = 15;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_write32(trans_ops_pcie_group1, ldvarg61, ldvarg60);
    ldv_state_variable_40 = 8;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_write32(trans_ops_pcie_group1, ldvarg61, ldvarg60);
    ldv_state_variable_40 = 4;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_write32(trans_ops_pcie_group1, ldvarg61, ldvarg60);
    ldv_state_variable_40 = 10;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_write32(trans_ops_pcie_group1, ldvarg61, ldvarg60);
    ldv_state_variable_40 = 5;
  } else {
  }
  goto ldv_51730;
  case 12: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_stop_device(trans_ops_pcie_group1);
    ldv_state_variable_40 = 11;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_stop_device(trans_ops_pcie_group1);
    ldv_state_variable_40 = 7;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_stop_device(trans_ops_pcie_group1);
    ldv_state_variable_40 = 2;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_stop_device(trans_ops_pcie_group1);
    ldv_state_variable_40 = 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_stop_device(trans_ops_pcie_group1);
    ldv_state_variable_40 = 16;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_stop_device(trans_ops_pcie_group1);
    ldv_state_variable_40 = 13;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_stop_device(trans_ops_pcie_group1);
    ldv_state_variable_40 = 6;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_stop_device(trans_ops_pcie_group1);
    ldv_state_variable_40 = 3;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_stop_device(trans_ops_pcie_group1);
    ldv_state_variable_40 = 9;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_stop_device(trans_ops_pcie_group1);
    ldv_state_variable_40 = 12;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_stop_device(trans_ops_pcie_group1);
    ldv_state_variable_40 = 14;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_stop_device(trans_ops_pcie_group1);
    ldv_state_variable_40 = 15;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_stop_device(trans_ops_pcie_group1);
    ldv_state_variable_40 = 8;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_stop_device(trans_ops_pcie_group1);
    ldv_state_variable_40 = 4;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_stop_device(trans_ops_pcie_group1);
    ldv_state_variable_40 = 10;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_stop_device(trans_ops_pcie_group1);
    ldv_state_variable_40 = 5;
  } else {
  }
  goto ldv_51730;
  case 13: ;
  if (ldv_state_variable_40 == 2) {
    ldv_retval_2 = iwl_trans_pcie_start_hw(trans_ops_pcie_group1);
    if (ldv_retval_2 == 0) {
      ldv_state_variable_40 = 7;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    ldv_retval_2 = iwl_trans_pcie_start_hw(trans_ops_pcie_group1);
    if (ldv_retval_2 == 0) {
      ldv_state_variable_40 = 4;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    ldv_retval_2 = iwl_trans_pcie_start_hw(trans_ops_pcie_group1);
    if (ldv_retval_2 == 0) {
      ldv_state_variable_40 = 16;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    ldv_retval_2 = iwl_trans_pcie_start_hw(trans_ops_pcie_group1);
    if (ldv_retval_2 == 0) {
      ldv_state_variable_40 = 12;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    ldv_retval_2 = iwl_trans_pcie_start_hw(trans_ops_pcie_group1);
    if (ldv_retval_2 == 0) {
      ldv_state_variable_40 = 9;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    ldv_retval_2 = iwl_trans_pcie_start_hw(trans_ops_pcie_group1);
    if (ldv_retval_2 == 0) {
      ldv_state_variable_40 = 14;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    ldv_retval_2 = iwl_trans_pcie_start_hw(trans_ops_pcie_group1);
    if (ldv_retval_2 == 0) {
      ldv_state_variable_40 = 15;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    ldv_retval_2 = iwl_trans_pcie_start_hw(trans_ops_pcie_group1);
    if (ldv_retval_2 == 0) {
      ldv_state_variable_40 = 11;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_51730;
  case 14: ;
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_set_bits_mask(trans_ops_pcie_group1, ldvarg59, ldvarg58, ldvarg57);
    ldv_state_variable_40 = 7;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_set_bits_mask(trans_ops_pcie_group1, ldvarg59, ldvarg58, ldvarg57);
    ldv_state_variable_40 = 2;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_set_bits_mask(trans_ops_pcie_group1, ldvarg59, ldvarg58, ldvarg57);
    ldv_state_variable_40 = 1;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_set_bits_mask(trans_ops_pcie_group1, ldvarg59, ldvarg58, ldvarg57);
    ldv_state_variable_40 = 6;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_set_bits_mask(trans_ops_pcie_group1, ldvarg59, ldvarg58, ldvarg57);
    ldv_state_variable_40 = 3;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_set_bits_mask(trans_ops_pcie_group1, ldvarg59, ldvarg58, ldvarg57);
    ldv_state_variable_40 = 9;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_set_bits_mask(trans_ops_pcie_group1, ldvarg59, ldvarg58, ldvarg57);
    ldv_state_variable_40 = 12;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_set_bits_mask(trans_ops_pcie_group1, ldvarg59, ldvarg58, ldvarg57);
    ldv_state_variable_40 = 4;
  } else {
  }
  goto ldv_51730;
  case 15: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_write_prph(trans_ops_pcie_group1, ldvarg56, ldvarg55);
    ldv_state_variable_40 = 11;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_write_prph(trans_ops_pcie_group1, ldvarg56, ldvarg55);
    ldv_state_variable_40 = 7;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_write_prph(trans_ops_pcie_group1, ldvarg56, ldvarg55);
    ldv_state_variable_40 = 2;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_write_prph(trans_ops_pcie_group1, ldvarg56, ldvarg55);
    ldv_state_variable_40 = 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_write_prph(trans_ops_pcie_group1, ldvarg56, ldvarg55);
    ldv_state_variable_40 = 16;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_write_prph(trans_ops_pcie_group1, ldvarg56, ldvarg55);
    ldv_state_variable_40 = 13;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_write_prph(trans_ops_pcie_group1, ldvarg56, ldvarg55);
    ldv_state_variable_40 = 6;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_write_prph(trans_ops_pcie_group1, ldvarg56, ldvarg55);
    ldv_state_variable_40 = 3;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_write_prph(trans_ops_pcie_group1, ldvarg56, ldvarg55);
    ldv_state_variable_40 = 9;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_write_prph(trans_ops_pcie_group1, ldvarg56, ldvarg55);
    ldv_state_variable_40 = 12;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_write_prph(trans_ops_pcie_group1, ldvarg56, ldvarg55);
    ldv_state_variable_40 = 14;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_write_prph(trans_ops_pcie_group1, ldvarg56, ldvarg55);
    ldv_state_variable_40 = 15;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_write_prph(trans_ops_pcie_group1, ldvarg56, ldvarg55);
    ldv_state_variable_40 = 8;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_write_prph(trans_ops_pcie_group1, ldvarg56, ldvarg55);
    ldv_state_variable_40 = 4;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_write_prph(trans_ops_pcie_group1, ldvarg56, ldvarg55);
    ldv_state_variable_40 = 10;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_write_prph(trans_ops_pcie_group1, ldvarg56, ldvarg55);
    ldv_state_variable_40 = 5;
  } else {
  }
  goto ldv_51730;
  case 16: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_wait_txq_empty(trans_ops_pcie_group1, ldvarg54);
    ldv_state_variable_40 = 11;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_wait_txq_empty(trans_ops_pcie_group1, ldvarg54);
    ldv_state_variable_40 = 7;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_wait_txq_empty(trans_ops_pcie_group1, ldvarg54);
    ldv_state_variable_40 = 2;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_wait_txq_empty(trans_ops_pcie_group1, ldvarg54);
    ldv_state_variable_40 = 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_wait_txq_empty(trans_ops_pcie_group1, ldvarg54);
    ldv_state_variable_40 = 16;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_wait_txq_empty(trans_ops_pcie_group1, ldvarg54);
    ldv_state_variable_40 = 13;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_wait_txq_empty(trans_ops_pcie_group1, ldvarg54);
    ldv_state_variable_40 = 6;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_wait_txq_empty(trans_ops_pcie_group1, ldvarg54);
    ldv_state_variable_40 = 3;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_wait_txq_empty(trans_ops_pcie_group1, ldvarg54);
    ldv_state_variable_40 = 9;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_wait_txq_empty(trans_ops_pcie_group1, ldvarg54);
    ldv_state_variable_40 = 12;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_wait_txq_empty(trans_ops_pcie_group1, ldvarg54);
    ldv_state_variable_40 = 14;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_wait_txq_empty(trans_ops_pcie_group1, ldvarg54);
    ldv_state_variable_40 = 15;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_wait_txq_empty(trans_ops_pcie_group1, ldvarg54);
    ldv_state_variable_40 = 8;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_wait_txq_empty(trans_ops_pcie_group1, ldvarg54);
    ldv_state_variable_40 = 4;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_wait_txq_empty(trans_ops_pcie_group1, ldvarg54);
    ldv_state_variable_40 = 10;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_wait_txq_empty(trans_ops_pcie_group1, ldvarg54);
    ldv_state_variable_40 = 5;
  } else {
  }
  goto ldv_51730;
  case 17: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_write_mem(trans_ops_pcie_group1, ldvarg53, (void const *)ldvarg52,
                             ldvarg51);
    ldv_state_variable_40 = 11;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_write_mem(trans_ops_pcie_group1, ldvarg53, (void const *)ldvarg52,
                             ldvarg51);
    ldv_state_variable_40 = 7;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_write_mem(trans_ops_pcie_group1, ldvarg53, (void const *)ldvarg52,
                             ldvarg51);
    ldv_state_variable_40 = 2;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_write_mem(trans_ops_pcie_group1, ldvarg53, (void const *)ldvarg52,
                             ldvarg51);
    ldv_state_variable_40 = 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_write_mem(trans_ops_pcie_group1, ldvarg53, (void const *)ldvarg52,
                             ldvarg51);
    ldv_state_variable_40 = 16;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_write_mem(trans_ops_pcie_group1, ldvarg53, (void const *)ldvarg52,
                             ldvarg51);
    ldv_state_variable_40 = 13;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_write_mem(trans_ops_pcie_group1, ldvarg53, (void const *)ldvarg52,
                             ldvarg51);
    ldv_state_variable_40 = 6;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_write_mem(trans_ops_pcie_group1, ldvarg53, (void const *)ldvarg52,
                             ldvarg51);
    ldv_state_variable_40 = 3;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_write_mem(trans_ops_pcie_group1, ldvarg53, (void const *)ldvarg52,
                             ldvarg51);
    ldv_state_variable_40 = 9;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_write_mem(trans_ops_pcie_group1, ldvarg53, (void const *)ldvarg52,
                             ldvarg51);
    ldv_state_variable_40 = 12;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_write_mem(trans_ops_pcie_group1, ldvarg53, (void const *)ldvarg52,
                             ldvarg51);
    ldv_state_variable_40 = 14;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_write_mem(trans_ops_pcie_group1, ldvarg53, (void const *)ldvarg52,
                             ldvarg51);
    ldv_state_variable_40 = 15;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_write_mem(trans_ops_pcie_group1, ldvarg53, (void const *)ldvarg52,
                             ldvarg51);
    ldv_state_variable_40 = 8;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_write_mem(trans_ops_pcie_group1, ldvarg53, (void const *)ldvarg52,
                             ldvarg51);
    ldv_state_variable_40 = 4;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_write_mem(trans_ops_pcie_group1, ldvarg53, (void const *)ldvarg52,
                             ldvarg51);
    ldv_state_variable_40 = 10;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_write_mem(trans_ops_pcie_group1, ldvarg53, (void const *)ldvarg52,
                             ldvarg51);
    ldv_state_variable_40 = 5;
  } else {
  }
  goto ldv_51730;
  case 18: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_op_mode_leave(trans_ops_pcie_group1);
    ldv_state_variable_40 = 11;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_op_mode_leave(trans_ops_pcie_group1);
    ldv_state_variable_40 = 7;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_op_mode_leave(trans_ops_pcie_group1);
    ldv_state_variable_40 = 2;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_op_mode_leave(trans_ops_pcie_group1);
    ldv_state_variable_40 = 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_op_mode_leave(trans_ops_pcie_group1);
    ldv_state_variable_40 = 16;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_op_mode_leave(trans_ops_pcie_group1);
    ldv_state_variable_40 = 13;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_op_mode_leave(trans_ops_pcie_group1);
    ldv_state_variable_40 = 6;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_op_mode_leave(trans_ops_pcie_group1);
    ldv_state_variable_40 = 3;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_op_mode_leave(trans_ops_pcie_group1);
    ldv_state_variable_40 = 9;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_op_mode_leave(trans_ops_pcie_group1);
    ldv_state_variable_40 = 12;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_op_mode_leave(trans_ops_pcie_group1);
    ldv_state_variable_40 = 14;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_op_mode_leave(trans_ops_pcie_group1);
    ldv_state_variable_40 = 15;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_op_mode_leave(trans_ops_pcie_group1);
    ldv_state_variable_40 = 8;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_op_mode_leave(trans_ops_pcie_group1);
    ldv_state_variable_40 = 4;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_op_mode_leave(trans_ops_pcie_group1);
    ldv_state_variable_40 = 10;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_op_mode_leave(trans_ops_pcie_group1);
    ldv_state_variable_40 = 5;
  } else {
  }
  goto ldv_51730;
  case 19: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_write8(trans_ops_pcie_group1, ldvarg50, (int )ldvarg49);
    ldv_state_variable_40 = 11;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_write8(trans_ops_pcie_group1, ldvarg50, (int )ldvarg49);
    ldv_state_variable_40 = 7;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_write8(trans_ops_pcie_group1, ldvarg50, (int )ldvarg49);
    ldv_state_variable_40 = 2;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_write8(trans_ops_pcie_group1, ldvarg50, (int )ldvarg49);
    ldv_state_variable_40 = 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_write8(trans_ops_pcie_group1, ldvarg50, (int )ldvarg49);
    ldv_state_variable_40 = 16;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_write8(trans_ops_pcie_group1, ldvarg50, (int )ldvarg49);
    ldv_state_variable_40 = 13;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_write8(trans_ops_pcie_group1, ldvarg50, (int )ldvarg49);
    ldv_state_variable_40 = 6;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_write8(trans_ops_pcie_group1, ldvarg50, (int )ldvarg49);
    ldv_state_variable_40 = 3;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_write8(trans_ops_pcie_group1, ldvarg50, (int )ldvarg49);
    ldv_state_variable_40 = 9;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_write8(trans_ops_pcie_group1, ldvarg50, (int )ldvarg49);
    ldv_state_variable_40 = 12;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_write8(trans_ops_pcie_group1, ldvarg50, (int )ldvarg49);
    ldv_state_variable_40 = 14;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_write8(trans_ops_pcie_group1, ldvarg50, (int )ldvarg49);
    ldv_state_variable_40 = 15;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_write8(trans_ops_pcie_group1, ldvarg50, (int )ldvarg49);
    ldv_state_variable_40 = 8;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_write8(trans_ops_pcie_group1, ldvarg50, (int )ldvarg49);
    ldv_state_variable_40 = 4;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_write8(trans_ops_pcie_group1, ldvarg50, (int )ldvarg49);
    ldv_state_variable_40 = 10;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_write8(trans_ops_pcie_group1, ldvarg50, (int )ldvarg49);
    ldv_state_variable_40 = 5;
  } else {
  }
  goto ldv_51730;
  case 20: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_read32(trans_ops_pcie_group1, ldvarg48);
    ldv_state_variable_40 = 11;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_read32(trans_ops_pcie_group1, ldvarg48);
    ldv_state_variable_40 = 7;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_read32(trans_ops_pcie_group1, ldvarg48);
    ldv_state_variable_40 = 2;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_read32(trans_ops_pcie_group1, ldvarg48);
    ldv_state_variable_40 = 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_read32(trans_ops_pcie_group1, ldvarg48);
    ldv_state_variable_40 = 16;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_read32(trans_ops_pcie_group1, ldvarg48);
    ldv_state_variable_40 = 13;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_read32(trans_ops_pcie_group1, ldvarg48);
    ldv_state_variable_40 = 6;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_read32(trans_ops_pcie_group1, ldvarg48);
    ldv_state_variable_40 = 3;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_read32(trans_ops_pcie_group1, ldvarg48);
    ldv_state_variable_40 = 9;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_read32(trans_ops_pcie_group1, ldvarg48);
    ldv_state_variable_40 = 12;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_read32(trans_ops_pcie_group1, ldvarg48);
    ldv_state_variable_40 = 14;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_read32(trans_ops_pcie_group1, ldvarg48);
    ldv_state_variable_40 = 15;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_read32(trans_ops_pcie_group1, ldvarg48);
    ldv_state_variable_40 = 8;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_read32(trans_ops_pcie_group1, ldvarg48);
    ldv_state_variable_40 = 4;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_read32(trans_ops_pcie_group1, ldvarg48);
    ldv_state_variable_40 = 10;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_read32(trans_ops_pcie_group1, ldvarg48);
    ldv_state_variable_40 = 5;
  } else {
  }
  goto ldv_51730;
  case 21: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_reclaim(trans_ops_pcie_group1, ldvarg47, ldvarg46, ldvarg45);
    ldv_state_variable_40 = 11;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_reclaim(trans_ops_pcie_group1, ldvarg47, ldvarg46, ldvarg45);
    ldv_state_variable_40 = 7;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_reclaim(trans_ops_pcie_group1, ldvarg47, ldvarg46, ldvarg45);
    ldv_state_variable_40 = 2;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_reclaim(trans_ops_pcie_group1, ldvarg47, ldvarg46, ldvarg45);
    ldv_state_variable_40 = 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_reclaim(trans_ops_pcie_group1, ldvarg47, ldvarg46, ldvarg45);
    ldv_state_variable_40 = 16;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_reclaim(trans_ops_pcie_group1, ldvarg47, ldvarg46, ldvarg45);
    ldv_state_variable_40 = 13;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_reclaim(trans_ops_pcie_group1, ldvarg47, ldvarg46, ldvarg45);
    ldv_state_variable_40 = 6;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_reclaim(trans_ops_pcie_group1, ldvarg47, ldvarg46, ldvarg45);
    ldv_state_variable_40 = 3;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_reclaim(trans_ops_pcie_group1, ldvarg47, ldvarg46, ldvarg45);
    ldv_state_variable_40 = 9;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_reclaim(trans_ops_pcie_group1, ldvarg47, ldvarg46, ldvarg45);
    ldv_state_variable_40 = 12;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_reclaim(trans_ops_pcie_group1, ldvarg47, ldvarg46, ldvarg45);
    ldv_state_variable_40 = 14;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_reclaim(trans_ops_pcie_group1, ldvarg47, ldvarg46, ldvarg45);
    ldv_state_variable_40 = 15;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_reclaim(trans_ops_pcie_group1, ldvarg47, ldvarg46, ldvarg45);
    ldv_state_variable_40 = 8;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_reclaim(trans_ops_pcie_group1, ldvarg47, ldvarg46, ldvarg45);
    ldv_state_variable_40 = 4;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_reclaim(trans_ops_pcie_group1, ldvarg47, ldvarg46, ldvarg45);
    ldv_state_variable_40 = 10;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_reclaim(trans_ops_pcie_group1, ldvarg47, ldvarg46, ldvarg45);
    ldv_state_variable_40 = 5;
  } else {
  }
  goto ldv_51730;
  case 22: ;
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_grab_nic_access(trans_ops_pcie_group1, (int )ldvarg44, ldvarg43);
    ldv_state_variable_40 = 14;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_grab_nic_access(trans_ops_pcie_group1, (int )ldvarg44, ldvarg43);
    ldv_state_variable_40 = 8;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_grab_nic_access(trans_ops_pcie_group1, (int )ldvarg44, ldvarg43);
    ldv_state_variable_40 = 5;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_grab_nic_access(trans_ops_pcie_group1, (int )ldvarg44, ldvarg43);
    ldv_state_variable_40 = 13;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_grab_nic_access(trans_ops_pcie_group1, (int )ldvarg44, ldvarg43);
    ldv_state_variable_40 = 10;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_grab_nic_access(trans_ops_pcie_group1, (int )ldvarg44, ldvarg43);
    ldv_state_variable_40 = 15;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_grab_nic_access(trans_ops_pcie_group1, (int )ldvarg44, ldvarg43);
    ldv_state_variable_40 = 16;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_grab_nic_access(trans_ops_pcie_group1, (int )ldvarg44, ldvarg43);
    ldv_state_variable_40 = 11;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_51730;
  case 23: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_read_prph(trans_ops_pcie_group1, ldvarg42);
    ldv_state_variable_40 = 11;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_read_prph(trans_ops_pcie_group1, ldvarg42);
    ldv_state_variable_40 = 7;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_read_prph(trans_ops_pcie_group1, ldvarg42);
    ldv_state_variable_40 = 2;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_read_prph(trans_ops_pcie_group1, ldvarg42);
    ldv_state_variable_40 = 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_read_prph(trans_ops_pcie_group1, ldvarg42);
    ldv_state_variable_40 = 16;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_read_prph(trans_ops_pcie_group1, ldvarg42);
    ldv_state_variable_40 = 13;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_read_prph(trans_ops_pcie_group1, ldvarg42);
    ldv_state_variable_40 = 6;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_read_prph(trans_ops_pcie_group1, ldvarg42);
    ldv_state_variable_40 = 3;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_read_prph(trans_ops_pcie_group1, ldvarg42);
    ldv_state_variable_40 = 9;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_read_prph(trans_ops_pcie_group1, ldvarg42);
    ldv_state_variable_40 = 12;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_read_prph(trans_ops_pcie_group1, ldvarg42);
    ldv_state_variable_40 = 14;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_read_prph(trans_ops_pcie_group1, ldvarg42);
    ldv_state_variable_40 = 15;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_read_prph(trans_ops_pcie_group1, ldvarg42);
    ldv_state_variable_40 = 8;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_read_prph(trans_ops_pcie_group1, ldvarg42);
    ldv_state_variable_40 = 4;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_read_prph(trans_ops_pcie_group1, ldvarg42);
    ldv_state_variable_40 = 10;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_read_prph(trans_ops_pcie_group1, ldvarg42);
    ldv_state_variable_40 = 5;
  } else {
  }
  goto ldv_51730;
  case 24: ;
  if (ldv_state_variable_40 == 16) {
    ldv_retval_1 = iwl_trans_pcie_d3_resume(trans_ops_pcie_group1, ldvarg41, (int )ldvarg40);
    if (ldv_retval_1 == 0) {
      ldv_state_variable_40 = 14;
      ref_cnt = ref_cnt - 1;
    } else {
    }
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    ldv_retval_1 = iwl_trans_pcie_d3_resume(trans_ops_pcie_group1, ldvarg41, (int )ldvarg40);
    if (ldv_retval_1 == 0) {
      ldv_state_variable_40 = 8;
      ref_cnt = ref_cnt - 1;
    } else {
    }
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    ldv_retval_1 = iwl_trans_pcie_d3_resume(trans_ops_pcie_group1, ldvarg41, (int )ldvarg40);
    if (ldv_retval_1 == 0) {
      ldv_state_variable_40 = 2;
      ref_cnt = ref_cnt - 1;
    } else {
    }
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    ldv_retval_1 = iwl_trans_pcie_d3_resume(trans_ops_pcie_group1, ldvarg41, (int )ldvarg40);
    if (ldv_retval_1 == 0) {
      ldv_state_variable_40 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    ldv_retval_1 = iwl_trans_pcie_d3_resume(trans_ops_pcie_group1, ldvarg41, (int )ldvarg40);
    if (ldv_retval_1 == 0) {
      ldv_state_variable_40 = 4;
      ref_cnt = ref_cnt - 1;
    } else {
    }
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    ldv_retval_1 = iwl_trans_pcie_d3_resume(trans_ops_pcie_group1, ldvarg41, (int )ldvarg40);
    if (ldv_retval_1 == 0) {
      ldv_state_variable_40 = 7;
      ref_cnt = ref_cnt - 1;
    } else {
    }
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    ldv_retval_1 = iwl_trans_pcie_d3_resume(trans_ops_pcie_group1, ldvarg41, (int )ldvarg40);
    if (ldv_retval_1 == 0) {
      ldv_state_variable_40 = 11;
      ref_cnt = ref_cnt - 1;
    } else {
    }
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    ldv_retval_1 = iwl_trans_pcie_d3_resume(trans_ops_pcie_group1, ldvarg41, (int )ldvarg40);
    if (ldv_retval_1 == 0) {
      ldv_state_variable_40 = 5;
      ref_cnt = ref_cnt - 1;
    } else {
    }
  } else {
  }
  goto ldv_51730;
  case 25: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_read_mem(trans_ops_pcie_group1, ldvarg39, ldvarg38, ldvarg37);
    ldv_state_variable_40 = 11;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_read_mem(trans_ops_pcie_group1, ldvarg39, ldvarg38, ldvarg37);
    ldv_state_variable_40 = 7;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_read_mem(trans_ops_pcie_group1, ldvarg39, ldvarg38, ldvarg37);
    ldv_state_variable_40 = 2;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_read_mem(trans_ops_pcie_group1, ldvarg39, ldvarg38, ldvarg37);
    ldv_state_variable_40 = 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_read_mem(trans_ops_pcie_group1, ldvarg39, ldvarg38, ldvarg37);
    ldv_state_variable_40 = 16;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_read_mem(trans_ops_pcie_group1, ldvarg39, ldvarg38, ldvarg37);
    ldv_state_variable_40 = 13;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_read_mem(trans_ops_pcie_group1, ldvarg39, ldvarg38, ldvarg37);
    ldv_state_variable_40 = 6;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_read_mem(trans_ops_pcie_group1, ldvarg39, ldvarg38, ldvarg37);
    ldv_state_variable_40 = 3;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_read_mem(trans_ops_pcie_group1, ldvarg39, ldvarg38, ldvarg37);
    ldv_state_variable_40 = 9;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_read_mem(trans_ops_pcie_group1, ldvarg39, ldvarg38, ldvarg37);
    ldv_state_variable_40 = 12;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_read_mem(trans_ops_pcie_group1, ldvarg39, ldvarg38, ldvarg37);
    ldv_state_variable_40 = 14;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_read_mem(trans_ops_pcie_group1, ldvarg39, ldvarg38, ldvarg37);
    ldv_state_variable_40 = 15;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_read_mem(trans_ops_pcie_group1, ldvarg39, ldvarg38, ldvarg37);
    ldv_state_variable_40 = 8;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_read_mem(trans_ops_pcie_group1, ldvarg39, ldvarg38, ldvarg37);
    ldv_state_variable_40 = 4;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_read_mem(trans_ops_pcie_group1, ldvarg39, ldvarg38, ldvarg37);
    ldv_state_variable_40 = 10;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_read_mem(trans_ops_pcie_group1, ldvarg39, ldvarg38, ldvarg37);
    ldv_state_variable_40 = 5;
  } else {
  }
  goto ldv_51730;
  case 26: ;
  if (ldv_state_variable_40 == 11) {
    iwl_trans_pcie_fw_alive(trans_ops_pcie_group1, ldvarg36);
    ldv_state_variable_40 = 11;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    iwl_trans_pcie_fw_alive(trans_ops_pcie_group1, ldvarg36);
    ldv_state_variable_40 = 7;
  } else {
  }
  if (ldv_state_variable_40 == 2) {
    iwl_trans_pcie_fw_alive(trans_ops_pcie_group1, ldvarg36);
    ldv_state_variable_40 = 2;
  } else {
  }
  if (ldv_state_variable_40 == 1) {
    iwl_trans_pcie_fw_alive(trans_ops_pcie_group1, ldvarg36);
    ldv_state_variable_40 = 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    iwl_trans_pcie_fw_alive(trans_ops_pcie_group1, ldvarg36);
    ldv_state_variable_40 = 16;
  } else {
  }
  if (ldv_state_variable_40 == 13) {
    iwl_trans_pcie_fw_alive(trans_ops_pcie_group1, ldvarg36);
    ldv_state_variable_40 = 13;
  } else {
  }
  if (ldv_state_variable_40 == 6) {
    iwl_trans_pcie_fw_alive(trans_ops_pcie_group1, ldvarg36);
    ldv_state_variable_40 = 6;
  } else {
  }
  if (ldv_state_variable_40 == 3) {
    iwl_trans_pcie_fw_alive(trans_ops_pcie_group1, ldvarg36);
    ldv_state_variable_40 = 3;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    iwl_trans_pcie_fw_alive(trans_ops_pcie_group1, ldvarg36);
    ldv_state_variable_40 = 9;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    iwl_trans_pcie_fw_alive(trans_ops_pcie_group1, ldvarg36);
    ldv_state_variable_40 = 12;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    iwl_trans_pcie_fw_alive(trans_ops_pcie_group1, ldvarg36);
    ldv_state_variable_40 = 14;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    iwl_trans_pcie_fw_alive(trans_ops_pcie_group1, ldvarg36);
    ldv_state_variable_40 = 15;
  } else {
  }
  if (ldv_state_variable_40 == 8) {
    iwl_trans_pcie_fw_alive(trans_ops_pcie_group1, ldvarg36);
    ldv_state_variable_40 = 8;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    iwl_trans_pcie_fw_alive(trans_ops_pcie_group1, ldvarg36);
    ldv_state_variable_40 = 4;
  } else {
  }
  if (ldv_state_variable_40 == 10) {
    iwl_trans_pcie_fw_alive(trans_ops_pcie_group1, ldvarg36);
    ldv_state_variable_40 = 10;
  } else {
  }
  if (ldv_state_variable_40 == 5) {
    iwl_trans_pcie_fw_alive(trans_ops_pcie_group1, ldvarg36);
    ldv_state_variable_40 = 5;
  } else {
  }
  goto ldv_51730;
  case 27: ;
  if (ldv_state_variable_40 == 11) {
    ldv_stop_hw_40();
    ldv_state_variable_40 = 5;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 7) {
    ldv_stop_hw_40();
    ldv_state_variable_40 = 2;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 16) {
    ldv_stop_hw_40();
    ldv_state_variable_40 = 13;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 9) {
    ldv_stop_hw_40();
    ldv_state_variable_40 = 3;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 12) {
    ldv_stop_hw_40();
    ldv_state_variable_40 = 6;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 14) {
    ldv_stop_hw_40();
    ldv_state_variable_40 = 8;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 15) {
    ldv_stop_hw_40();
    ldv_state_variable_40 = 10;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_40 == 4) {
    ldv_stop_hw_40();
    ldv_state_variable_40 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_51730;
  default:
  ldv_stop();
  }
  ldv_51730: ;
  return;
}
}
void ldv_main_exported_45(void)
{
  size_t ldvarg148 ;
  size_t tmp ;
  char *ldvarg152 ;
  void *tmp___0 ;
  char *ldvarg149 ;
  void *tmp___1 ;
  loff_t ldvarg146 ;
  loff_t tmp___2 ;
  int ldvarg145 ;
  int tmp___3 ;
  size_t ldvarg151 ;
  size_t tmp___4 ;
  loff_t *ldvarg150 ;
  void *tmp___5 ;
  loff_t *ldvarg147 ;
  void *tmp___6 ;
  int tmp___7 ;
  {
  tmp = __VERIFIER_nondet_size_t();
  ldvarg148 = tmp;
  tmp___0 = ldv_zalloc(1UL);
  ldvarg152 = (char *)tmp___0;
  tmp___1 = ldv_zalloc(1UL);
  ldvarg149 = (char *)tmp___1;
  tmp___2 = __VERIFIER_nondet_loff_t();
  ldvarg146 = tmp___2;
  tmp___3 = __VERIFIER_nondet_int();
  ldvarg145 = tmp___3;
  tmp___4 = __VERIFIER_nondet_size_t();
  ldvarg151 = tmp___4;
  tmp___5 = ldv_zalloc(8UL);
  ldvarg150 = (loff_t *)tmp___5;
  tmp___6 = ldv_zalloc(8UL);
  ldvarg147 = (loff_t *)tmp___6;
  tmp___7 = __VERIFIER_nondet_int();
  switch (tmp___7) {
  case 0: ;
  if (ldv_state_variable_45 == 2) {
    iwl_dbgfs_interrupt_write(iwl_dbgfs_interrupt_ops_group2, (char const *)ldvarg152,
                              ldvarg151, ldvarg150);
    ldv_state_variable_45 = 2;
  } else {
  }
  if (ldv_state_variable_45 == 1) {
    iwl_dbgfs_interrupt_write(iwl_dbgfs_interrupt_ops_group2, (char const *)ldvarg152,
                              ldvarg151, ldvarg150);
    ldv_state_variable_45 = 1;
  } else {
  }
  goto ldv_51771;
  case 1: ;
  if (ldv_state_variable_45 == 2) {
    iwl_dbgfs_interrupt_read(iwl_dbgfs_interrupt_ops_group2, ldvarg149, ldvarg148,
                             ldvarg147);
    ldv_state_variable_45 = 2;
  } else {
  }
  goto ldv_51771;
  case 2: ;
  if (ldv_state_variable_45 == 2) {
    generic_file_llseek(iwl_dbgfs_interrupt_ops_group2, ldvarg146, ldvarg145);
    ldv_state_variable_45 = 2;
  } else {
  }
  goto ldv_51771;
  case 3: ;
  if (ldv_state_variable_45 == 1) {
    ldv_retval_26 = simple_open(iwl_dbgfs_interrupt_ops_group1, iwl_dbgfs_interrupt_ops_group2);
    if (ldv_retval_26 == 0) {
      ldv_state_variable_45 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_51771;
  case 4: ;
  if (ldv_state_variable_45 == 2) {
    ldv_release_45();
    ldv_state_variable_45 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_51771;
  default:
  ldv_stop();
  }
  ldv_51771: ;
  return;
}
}
void ldv_main_exported_43(void)
{
  loff_t *ldvarg158 ;
  void *tmp ;
  char *ldvarg160 ;
  void *tmp___0 ;
  loff_t ldvarg157 ;
  loff_t tmp___1 ;
  size_t ldvarg159 ;
  size_t tmp___2 ;
  int ldvarg156 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp = ldv_zalloc(8UL);
  ldvarg158 = (loff_t *)tmp;
  tmp___0 = ldv_zalloc(1UL);
  ldvarg160 = (char *)tmp___0;
  tmp___1 = __VERIFIER_nondet_loff_t();
  ldvarg157 = tmp___1;
  tmp___2 = __VERIFIER_nondet_size_t();
  ldvarg159 = tmp___2;
  tmp___3 = __VERIFIER_nondet_int();
  ldvarg156 = tmp___3;
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_43 == 2) {
    iwl_dbgfs_rx_queue_read(iwl_dbgfs_rx_queue_ops_group2, ldvarg160, ldvarg159, ldvarg158);
    ldv_state_variable_43 = 2;
  } else {
  }
  goto ldv_51786;
  case 1: ;
  if (ldv_state_variable_43 == 2) {
    generic_file_llseek(iwl_dbgfs_rx_queue_ops_group2, ldvarg157, ldvarg156);
    ldv_state_variable_43 = 2;
  } else {
  }
  goto ldv_51786;
  case 2: ;
  if (ldv_state_variable_43 == 1) {
    ldv_retval_27 = simple_open(iwl_dbgfs_rx_queue_ops_group1, iwl_dbgfs_rx_queue_ops_group2);
    if (ldv_retval_27 == 0) {
      ldv_state_variable_43 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_51786;
  case 3: ;
  if (ldv_state_variable_43 == 2) {
    ldv_release_43();
    ldv_state_variable_43 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_51786;
  default:
  ldv_stop();
  }
  ldv_51786: ;
  return;
}
}
void ldv_main_exported_44(void)
{
  int ldvarg22 ;
  int tmp ;
  loff_t ldvarg23 ;
  loff_t tmp___0 ;
  size_t ldvarg25 ;
  size_t tmp___1 ;
  char *ldvarg26 ;
  void *tmp___2 ;
  loff_t *ldvarg24 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg22 = tmp;
  tmp___0 = __VERIFIER_nondet_loff_t();
  ldvarg23 = tmp___0;
  tmp___1 = __VERIFIER_nondet_size_t();
  ldvarg25 = tmp___1;
  tmp___2 = ldv_zalloc(1UL);
  ldvarg26 = (char *)tmp___2;
  tmp___3 = ldv_zalloc(8UL);
  ldvarg24 = (loff_t *)tmp___3;
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_44 == 2) {
    iwl_dbgfs_fh_reg_read(iwl_dbgfs_fh_reg_ops_group2, ldvarg26, ldvarg25, ldvarg24);
    ldv_state_variable_44 = 2;
  } else {
  }
  goto ldv_51800;
  case 1: ;
  if (ldv_state_variable_44 == 2) {
    generic_file_llseek(iwl_dbgfs_fh_reg_ops_group2, ldvarg23, ldvarg22);
    ldv_state_variable_44 = 2;
  } else {
  }
  goto ldv_51800;
  case 2: ;
  if (ldv_state_variable_44 == 1) {
    ldv_retval_0 = simple_open(iwl_dbgfs_fh_reg_ops_group1, iwl_dbgfs_fh_reg_ops_group2);
    if (ldv_retval_0 == 0) {
      ldv_state_variable_44 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_51800;
  case 3: ;
  if (ldv_state_variable_44 == 2) {
    ldv_release_44();
    ldv_state_variable_44 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_51800;
  default:
  ldv_stop();
  }
  ldv_51800: ;
  return;
}
}
void ldv_main_exported_41(void)
{
  int ldvarg126 ;
  int tmp ;
  loff_t *ldvarg128 ;
  void *tmp___0 ;
  char *ldvarg130 ;
  void *tmp___1 ;
  size_t ldvarg129 ;
  size_t tmp___2 ;
  loff_t ldvarg127 ;
  loff_t tmp___3 ;
  int tmp___4 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg126 = tmp;
  tmp___0 = ldv_zalloc(8UL);
  ldvarg128 = (loff_t *)tmp___0;
  tmp___1 = ldv_zalloc(1UL);
  ldvarg130 = (char *)tmp___1;
  tmp___2 = __VERIFIER_nondet_size_t();
  ldvarg129 = tmp___2;
  tmp___3 = __VERIFIER_nondet_loff_t();
  ldvarg127 = tmp___3;
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_41 == 2) {
    iwl_dbgfs_csr_write(iwl_dbgfs_csr_ops_group2, (char const *)ldvarg130, ldvarg129,
                        ldvarg128);
    ldv_state_variable_41 = 2;
  } else {
  }
  if (ldv_state_variable_41 == 1) {
    iwl_dbgfs_csr_write(iwl_dbgfs_csr_ops_group2, (char const *)ldvarg130, ldvarg129,
                        ldvarg128);
    ldv_state_variable_41 = 1;
  } else {
  }
  goto ldv_51814;
  case 1: ;
  if (ldv_state_variable_41 == 2) {
    generic_file_llseek(iwl_dbgfs_csr_ops_group2, ldvarg127, ldvarg126);
    ldv_state_variable_41 = 2;
  } else {
  }
  goto ldv_51814;
  case 2: ;
  if (ldv_state_variable_41 == 1) {
    ldv_retval_6 = simple_open(iwl_dbgfs_csr_ops_group1, iwl_dbgfs_csr_ops_group2);
    if (ldv_retval_6 == 0) {
      ldv_state_variable_41 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_51814;
  case 3: ;
  if (ldv_state_variable_41 == 2) {
    ldv_release_41();
    ldv_state_variable_41 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_51814;
  default:
  ldv_stop();
  }
  ldv_51814: ;
  return;
}
}
int ldv_request_threaded_irq_538(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_threaded_irq(ldv_func_arg1, handler, thread_fn, ldv_func_arg4, ldv_func_arg5,
                             ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg6);
  } else {
  }
  return (ldv_func_res);
}
}
int ldv_pskb_expand_head_541(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_543(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_545(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_546(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_547(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_548(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_549(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_550(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_551(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
void ldv_free_irq_553(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
int ldv_request_threaded_irq_554(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_threaded_irq(ldv_func_arg1, handler, thread_fn, ldv_func_arg4, ldv_func_arg5,
                             ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg6);
  } else {
  }
  return (ldv_func_res);
}
}
struct sk_buff *ldv_skb_clone_592(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_601(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_594(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_590(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_598(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_599(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_595(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_596(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_597(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
int ldv_request_threaded_irq_600(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 ) ;
static struct iwl_base_params const iwl1000_base_params =
     {2048, 20, 8913664U, 3U, 0, 51U, 0U, 128U, (_Bool)0, (_Bool)0, (_Bool)0, 1};
static struct iwl_ht_params const iwl1000_ht_params = {0, 1, (_Bool)0, 1, 1U};
static struct iwl_eeprom_params const iwl1000_eeprom_params = {{8U, 38U, 66U, 92U, 116U, 130U, 0U}, (_Bool)0};
struct iwl_cfg const iwl1000_bgn_cfg =
     {"Intel(R) Centrino(R) Wireless-N 1000 BGN", "iwlwifi-1000-", 5U, 5U, 1U, 1, 49152U,
    131072U, (unsigned char)0, (unsigned char)0, (_Bool)0, 348U, 4U, & iwl1000_base_params,
    & iwl1000_ht_params, & iwl1000_eeprom_params, 2, (_Bool)0, (_Bool)0, (_Bool)0,
    (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl1000_bg_cfg =
     {"Intel(R) Centrino(R) Wireless-N 1000 BG", "iwlwifi-1000-", 5U, 5U, 1U, 1, 49152U,
    131072U, (unsigned char)0, (unsigned char)0, (_Bool)0, 348U, 4U, & iwl1000_base_params,
    0, & iwl1000_eeprom_params, 2, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0,
    (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl100_bgn_cfg =
     {"Intel(R) Centrino(R) Wireless-N 100 BGN", "iwlwifi-100-", 5U, 5U, 5U, 2, 49152U,
    131072U, (unsigned char)0, (unsigned char)0, (_Bool)0, 348U, 4U, & iwl1000_base_params,
    & iwl1000_ht_params, & iwl1000_eeprom_params, 1, 1, (_Bool)0, (_Bool)0, (_Bool)0,
    (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl100_bg_cfg =
     {"Intel(R) Centrino(R) Wireless-N 100 BG", "iwlwifi-100-", 5U, 5U, 5U, 2, 49152U,
    131072U, (unsigned char)0, (unsigned char)0, (_Bool)0, 348U, 4U, & iwl1000_base_params,
    0, & iwl1000_eeprom_params, 1, 1, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (unsigned char)0,
    (_Bool)0, 0, (_Bool)0, 0};
int ldv_pskb_expand_head_590(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_592(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_594(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_595(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_596(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_597(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_598(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_599(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_request_threaded_irq_600(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_threaded_irq(ldv_func_arg1, handler, thread_fn, ldv_func_arg4, ldv_func_arg5,
                             ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg6);
  } else {
  }
  return (ldv_func_res);
}
}
struct sk_buff *ldv_skb_clone_601(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_636(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_645(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_638(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_634(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_642(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_643(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_639(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_640(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_641(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
int ldv_request_threaded_irq_644(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 ) ;
static struct iwl_base_params const iwl2000_base_params =
     {2048, 20, 0U, 4U, 1, 51U, 2000U, 512U, 0, (_Bool)0, (_Bool)0, 1};
static struct iwl_base_params const iwl2030_base_params =
     {2048, 20, 0U, 4U, 1, 57U, 10000U, 512U, 0, (_Bool)0, (_Bool)0, 1};
static struct iwl_ht_params const iwl2000_ht_params = {0, 1, (_Bool)0, 1, 1U};
static struct iwl_eeprom_params const iwl20x0_eeprom_params = {{8U, 38U, 66U, 92U, 116U, 128U, 0U}, 1};
struct iwl_cfg const iwl2000_2bgn_cfg =
     {"Intel(R) Centrino(R) Wireless-N 2200 BGN", "iwlwifi-2000-", 6U, 6U, 5U, 3, 81920U,
    262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 2053U, 6U, & iwl2000_base_params,
    & iwl2000_ht_params, & iwl20x0_eeprom_params, 1, (_Bool)0, (_Bool)0, (_Bool)0,
    (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl2000_2bgn_d_cfg =
     {"Intel(R) Centrino(R) Wireless-N 2200D BGN", "iwlwifi-2000-", 6U, 6U, 5U, 3, 81920U,
    262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 2053U, 6U, & iwl2000_base_params,
    & iwl2000_ht_params, & iwl20x0_eeprom_params, 1, (_Bool)0, (_Bool)0, (_Bool)0,
    (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl2030_2bgn_cfg =
     {"Intel(R) Centrino(R) Wireless-N 2230 BGN", "iwlwifi-2030-", 6U, 6U, 5U, 4, 81920U,
    262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 2053U, 6U, & iwl2030_base_params,
    & iwl2000_ht_params, & iwl20x0_eeprom_params, 1, (_Bool)0, (_Bool)0, (_Bool)0,
    (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl105_bgn_cfg =
     {"Intel(R) Centrino(R) Wireless-N 105 BGN", "iwlwifi-105-", 6U, 6U, 5U, 5, 81920U,
    262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 2053U, 6U, & iwl2000_base_params,
    & iwl2000_ht_params, & iwl20x0_eeprom_params, 1, 1, (_Bool)0, (_Bool)0, (_Bool)0,
    (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl105_bgn_d_cfg =
     {"Intel(R) Centrino(R) Wireless-N 105D BGN", "iwlwifi-105-", 6U, 6U, 5U, 5, 81920U,
    262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 2053U, 6U, & iwl2000_base_params,
    & iwl2000_ht_params, & iwl20x0_eeprom_params, 1, 1, (_Bool)0, (_Bool)0, (_Bool)0,
    (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl135_bgn_cfg =
     {"Intel(R) Centrino(R) Wireless-N 135 BGN", "iwlwifi-135-", 6U, 6U, 5U, 6, 81920U,
    262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 2053U, 6U, & iwl2030_base_params,
    & iwl2000_ht_params, & iwl20x0_eeprom_params, 1, 1, (_Bool)0, (_Bool)0, (_Bool)0,
    (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
int ldv_pskb_expand_head_634(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_636(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_638(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_639(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_640(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_641(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_642(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_643(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_request_threaded_irq_644(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_threaded_irq(ldv_func_arg1, handler, thread_fn, ldv_func_arg4, ldv_func_arg5,
                             ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg6);
  } else {
  }
  return (ldv_func_res);
}
}
struct sk_buff *ldv_skb_clone_645(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_680(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_689(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_682(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_678(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_686(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_687(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_683(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_684(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_685(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
int ldv_request_threaded_irq_688(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 ) ;
static struct iwl_base_params const iwl5000_base_params =
     {2048, 20, 8913664U, (unsigned short)0, (_Bool)0, 51U, 0U, 512U, (_Bool)0, (_Bool)0,
    (_Bool)0, 1};
static struct iwl_ht_params const iwl5000_ht_params = {0, 1, (_Bool)0, (_Bool)0, 3U};
static struct iwl_eeprom_params const iwl5000_eeprom_params = {{8U, 38U, 66U, 92U, 116U, 130U, 146U}, (_Bool)0};
struct iwl_cfg const iwl5300_agn_cfg =
     {"Intel(R) Ultimate N WiFi Link 5300 AGN", "iwlwifi-5000-", 5U, 5U, 1U, 7, 49152U,
    131072U, 7U, 7U, (_Bool)0, 282U, 4U, & iwl5000_base_params, & iwl5000_ht_params,
    & iwl5000_eeprom_params, 2, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0,
    (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl5100_bgn_cfg =
     {"Intel(R) WiFi Link 5100 BGN", "iwlwifi-5000-", 5U, 5U, 1U, 7, 49152U, 131072U,
    2U, 3U, (_Bool)0, 282U, 4U, & iwl5000_base_params, & iwl5000_ht_params, & iwl5000_eeprom_params,
    2, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0,
    0, (_Bool)0, 0};
struct iwl_cfg const iwl5100_abg_cfg =
     {"Intel(R) WiFi Link 5100 ABG", "iwlwifi-5000-", 5U, 5U, 1U, 7, 49152U, 131072U,
    2U, 3U, (_Bool)0, 282U, 4U, & iwl5000_base_params, 0, & iwl5000_eeprom_params,
    2, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0,
    0, (_Bool)0, 0};
struct iwl_cfg const iwl5100_agn_cfg =
     {"Intel(R) WiFi Link 5100 AGN", "iwlwifi-5000-", 5U, 5U, 1U, 7, 49152U, 131072U,
    2U, 3U, (_Bool)0, 282U, 4U, & iwl5000_base_params, & iwl5000_ht_params, & iwl5000_eeprom_params,
    2, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0,
    0, (_Bool)0, 0};
struct iwl_cfg const iwl5350_agn_cfg =
     {"Intel(R) WiMAX/WiFi Link 5350 AGN", "iwlwifi-5000-", 5U, 5U, 1U, 7, 49152U, 131072U,
    (unsigned char)0, (unsigned char)0, (_Bool)0, 542U, 4U, & iwl5000_base_params,
    & iwl5000_ht_params, & iwl5000_eeprom_params, 2, (_Bool)0, 1, (_Bool)0, (_Bool)0,
    (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl5150_agn_cfg =
     {"Intel(R) WiMAX/WiFi Link 5150 AGN", "iwlwifi-5150-", 2U, 2U, 1U, 8, 49152U, 131072U,
    (unsigned char)0, (unsigned char)0, (_Bool)0, 542U, 4U, & iwl5000_base_params,
    & iwl5000_ht_params, & iwl5000_eeprom_params, 2, (_Bool)0, 1, (_Bool)0, (_Bool)0,
    (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl5150_abg_cfg =
     {"Intel(R) WiMAX/WiFi Link 5150 ABG", "iwlwifi-5150-", 2U, 2U, 1U, 8, 49152U, 131072U,
    (unsigned char)0, (unsigned char)0, (_Bool)0, 542U, 4U, & iwl5000_base_params,
    0, & iwl5000_eeprom_params, 2, (_Bool)0, 1, (_Bool)0, (_Bool)0, (_Bool)0, (unsigned char)0,
    (_Bool)0, 0, (_Bool)0, 0};
int ldv_pskb_expand_head_678(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_680(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_682(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_683(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_684(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_685(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_686(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_687(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_request_threaded_irq_688(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_threaded_irq(ldv_func_arg1, handler, thread_fn, ldv_func_arg4, ldv_func_arg5,
                             ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg6);
  } else {
  }
  return (ldv_func_res);
}
}
struct sk_buff *ldv_skb_clone_689(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_724(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_733(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_726(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_722(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_730(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_731(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_727(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_728(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_729(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
int ldv_request_threaded_irq_732(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 ) ;
static struct iwl_base_params const iwl6000_base_params =
     {2048, 20, 0U, 4U, 1, 51U, 2000U, 512U, 0, (_Bool)0, (_Bool)0, 1};
static struct iwl_base_params const iwl6050_base_params =
     {2048, 20, 0U, 7U, 1, 51U, 2000U, 1024U, 0, (_Bool)0, (_Bool)0, 1};
static struct iwl_base_params const iwl6000_g2_base_params =
     {2048, 20, 0U, 4U, 1, 57U, 10000U, 512U, 0, (_Bool)0, (_Bool)0, 1};
static struct iwl_ht_params const iwl6000_ht_params = {0, 1, (_Bool)0, 1, 3U};
static struct iwl_eeprom_params const iwl6000_eeprom_params = {{8U, 38U, 66U, 92U, 116U, 128U, 146U}, 1};
struct iwl_cfg const iwl6005_2agn_cfg =
     {"Intel(R) Centrino(R) Advanced-N 6205 AGN", "iwlwifi-6000g2a-", 6U, 5U, 5U, 11,
    81920U, 262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1801U, 6U, & iwl6000_g2_base_params,
    & iwl6000_ht_params, & iwl6000_eeprom_params, 1, (_Bool)0, (_Bool)0, (_Bool)0,
    (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl6005_2abg_cfg =
     {"Intel(R) Centrino(R) Advanced-N 6205 ABG", "iwlwifi-6000g2a-", 6U, 5U, 5U, 11,
    81920U, 262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1801U, 6U, & iwl6000_g2_base_params,
    0, & iwl6000_eeprom_params, 1, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0,
    (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl6005_2bg_cfg =
     {"Intel(R) Centrino(R) Advanced-N 6205 BG", "iwlwifi-6000g2a-", 6U, 5U, 5U, 11,
    81920U, 262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1801U, 6U, & iwl6000_g2_base_params,
    0, & iwl6000_eeprom_params, 1, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0,
    (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl6005_2agn_sff_cfg =
     {"Intel(R) Centrino(R) Advanced-N 6205S AGN", "iwlwifi-6000g2a-", 6U, 5U, 5U, 11,
    81920U, 262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1801U, 6U, & iwl6000_g2_base_params,
    & iwl6000_ht_params, & iwl6000_eeprom_params, 1, (_Bool)0, (_Bool)0, (_Bool)0,
    (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl6005_2agn_d_cfg =
     {"Intel(R) Centrino(R) Advanced-N 6205D AGN", "iwlwifi-6000g2a-", 6U, 5U, 5U, 11,
    81920U, 262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1801U, 6U, & iwl6000_g2_base_params,
    & iwl6000_ht_params, & iwl6000_eeprom_params, 1, (_Bool)0, (_Bool)0, (_Bool)0,
    (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl6005_2agn_mow1_cfg =
     {"Intel(R) Centrino(R) Advanced-N 6206 AGN", "iwlwifi-6000g2a-", 6U, 5U, 5U, 11,
    81920U, 262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1801U, 6U, & iwl6000_g2_base_params,
    & iwl6000_ht_params, & iwl6000_eeprom_params, 1, (_Bool)0, (_Bool)0, (_Bool)0,
    (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl6005_2agn_mow2_cfg =
     {"Intel(R) Centrino(R) Advanced-N 6207 AGN", "iwlwifi-6000g2a-", 6U, 5U, 5U, 11,
    81920U, 262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1801U, 6U, & iwl6000_g2_base_params,
    & iwl6000_ht_params, & iwl6000_eeprom_params, 1, (_Bool)0, (_Bool)0, (_Bool)0,
    (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl6030_2agn_cfg =
     {"Intel(R) Centrino(R) Advanced-N 6230 AGN", "iwlwifi-6000g2b-", 6U, 6U, 5U, 12,
    81920U, 262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1801U, 6U, & iwl6000_g2_base_params,
    & iwl6000_ht_params, & iwl6000_eeprom_params, 1, (_Bool)0, (_Bool)0, (_Bool)0,
    (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl6030_2abg_cfg =
     {"Intel(R) Centrino(R) Advanced-N 6230 ABG", "iwlwifi-6000g2b-", 6U, 6U, 5U, 12,
    81920U, 262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1801U, 6U, & iwl6000_g2_base_params,
    0, & iwl6000_eeprom_params, 1, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0,
    (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl6030_2bgn_cfg =
     {"Intel(R) Centrino(R) Advanced-N 6230 BGN", "iwlwifi-6000g2b-", 6U, 6U, 5U, 12,
    81920U, 262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1801U, 6U, & iwl6000_g2_base_params,
    & iwl6000_ht_params, & iwl6000_eeprom_params, 1, (_Bool)0, (_Bool)0, (_Bool)0,
    (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl6030_2bg_cfg =
     {"Intel(R) Centrino(R) Advanced-N 6230 BG", "iwlwifi-6000g2b-", 6U, 6U, 5U, 12,
    81920U, 262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1801U, 6U, & iwl6000_g2_base_params,
    0, & iwl6000_eeprom_params, 1, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0,
    (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl6035_2agn_cfg =
     {"Intel(R) Centrino(R) Advanced-N 6235 AGN", "iwlwifi-6000g2b-", 6U, 6U, 6U, 12,
    81920U, 262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1801U, 6U, & iwl6000_g2_base_params,
    & iwl6000_ht_params, & iwl6000_eeprom_params, 1, (_Bool)0, (_Bool)0, (_Bool)0,
    (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl6035_2agn_sff_cfg =
     {"Intel(R) Centrino(R) Ultimate-N 6235 AGN", "iwlwifi-6000g2b-", 6U, 6U, 6U, 12,
    81920U, 262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1801U, 6U, & iwl6000_g2_base_params,
    & iwl6000_ht_params, & iwl6000_eeprom_params, 1, (_Bool)0, (_Bool)0, (_Bool)0,
    (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl1030_bgn_cfg =
     {"Intel(R) Centrino(R) Wireless-N 1030 BGN", "iwlwifi-6000g2b-", 6U, 6U, 5U, 12,
    81920U, 262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1801U, 6U, & iwl6000_g2_base_params,
    & iwl6000_ht_params, & iwl6000_eeprom_params, 1, (_Bool)0, (_Bool)0, (_Bool)0,
    (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl1030_bg_cfg =
     {"Intel(R) Centrino(R) Wireless-N 1030 BG", "iwlwifi-6000g2b-", 6U, 6U, 5U, 12,
    81920U, 262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1801U, 6U, & iwl6000_g2_base_params,
    0, & iwl6000_eeprom_params, 1, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0,
    (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl130_bgn_cfg =
     {"Intel(R) Centrino(R) Wireless-N 130 BGN", "iwlwifi-6000g2b-", 6U, 6U, 5U, 12,
    81920U, 262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1801U, 6U, & iwl6000_g2_base_params,
    & iwl6000_ht_params, & iwl6000_eeprom_params, 1, 1, (_Bool)0, (_Bool)0, (_Bool)0,
    (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl130_bg_cfg =
     {"Intel(R) Centrino(R) Wireless-N 130 BG", "iwlwifi-6000g2b-", 6U, 6U, 5U, 12,
    81920U, 262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1801U, 6U, & iwl6000_g2_base_params,
    0, & iwl6000_eeprom_params, 1, 1, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (unsigned char)0,
    (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl6000i_2agn_cfg =
     {"Intel(R) Centrino(R) Advanced-N 6200 AGN", "iwlwifi-6000-", 6U, 4U, 4U, 10, 81920U,
    262144U, 6U, 6U, (_Bool)0, 1059U, 4U, & iwl6000_base_params, & iwl6000_ht_params,
    & iwl6000_eeprom_params, 2, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0,
    (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl6000i_2abg_cfg =
     {"Intel(R) Centrino(R) Advanced-N 6200 ABG", "iwlwifi-6000-", 6U, 4U, 4U, 10, 81920U,
    262144U, 6U, 6U, (_Bool)0, 1059U, 4U, & iwl6000_base_params, 0, & iwl6000_eeprom_params,
    2, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0,
    0, (_Bool)0, 0};
struct iwl_cfg const iwl6000i_2bg_cfg =
     {"Intel(R) Centrino(R) Advanced-N 6200 BG", "iwlwifi-6000-", 6U, 4U, 4U, 10, 81920U,
    262144U, 6U, 6U, (_Bool)0, 1059U, 4U, & iwl6000_base_params, 0, & iwl6000_eeprom_params,
    2, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0,
    0, (_Bool)0, 0};
struct iwl_cfg const iwl6050_2agn_cfg =
     {"Intel(R) Centrino(R) Advanced-N + WiMAX 6250 AGN", "iwlwifi-6050-", 5U, 0U, 4U,
    13, 81920U, 262144U, 3U, 3U, (_Bool)0, 1330U, 4U, & iwl6050_base_params, & iwl6000_ht_params,
    & iwl6000_eeprom_params, 2, (_Bool)0, 1, (_Bool)0, (_Bool)0, (_Bool)0, (unsigned char)0,
    (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl6050_2abg_cfg =
     {"Intel(R) Centrino(R) Advanced-N + WiMAX 6250 ABG", "iwlwifi-6050-", 5U, 0U, 4U,
    13, 81920U, 262144U, 3U, 3U, (_Bool)0, 1330U, 4U, & iwl6050_base_params, 0, & iwl6000_eeprom_params,
    2, (_Bool)0, 1, (_Bool)0, (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0,
    0};
struct iwl_cfg const iwl6150_bgn_cfg =
     {"Intel(R) Centrino(R) Wireless-N + WiMAX 6150 BGN", "iwlwifi-6050-", 5U, 0U, 4U,
    14, 81920U, 262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1363U, 6U,
    & iwl6050_base_params, & iwl6000_ht_params, & iwl6000_eeprom_params, 2, (_Bool)0,
    1, (_Bool)0, (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl6150_bg_cfg =
     {"Intel(R) Centrino(R) Wireless-N + WiMAX 6150 BG", "iwlwifi-6050-", 5U, 0U, 4U,
    14, 81920U, 262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1363U, 6U,
    & iwl6050_base_params, 0, & iwl6000_eeprom_params, 2, (_Bool)0, 1, (_Bool)0, (_Bool)0,
    (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
struct iwl_cfg const iwl6000_3agn_cfg =
     {"Intel(R) Centrino(R) Ultimate-N 6300 AGN", "iwlwifi-6000-", 6U, 4U, 4U, 9, 81920U,
    262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1059U, 4U, & iwl6000_base_params,
    & iwl6000_ht_params, & iwl6000_eeprom_params, 2, (_Bool)0, (_Bool)0, (_Bool)0,
    (_Bool)0, (_Bool)0, (unsigned char)0, (_Bool)0, 0, (_Bool)0, 0};
int ldv_pskb_expand_head_722(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_724(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_726(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_727(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_728(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_729(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_730(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_731(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_request_threaded_irq_732(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_threaded_irq(ldv_func_arg1, handler, thread_fn, ldv_func_arg4, ldv_func_arg5,
                             ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg6);
  } else {
  }
  return (ldv_func_res);
}
}
struct sk_buff *ldv_skb_clone_733(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_768(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_777(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_770(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_766(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_774(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_775(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_771(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_772(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_773(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
int ldv_request_threaded_irq_776(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 ) ;
static struct iwl_base_params const iwl7000_base_params =
     {16384, 20, 0U, (unsigned short)0, 1, 57U, 10000U, 512U, 1, 1, 1, (_Bool)0};
static struct iwl_ht_params const iwl7000_ht_params = {0, (_Bool)0, 1, (_Bool)0, 3U};
struct iwl_cfg const iwl7260_2ac_cfg =
     {"Intel(R) Dual Band Wireless AC 7260", "iwlwifi-7260-", 9U, 9U, 8U, 15, 81920U,
    262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 2589U, 65535U, & iwl7000_base_params,
    & iwl7000_ht_params, 0, 1, (_Bool)0, (_Bool)0, 1, (_Bool)0, (_Bool)0, 0U, 1, 0,
    (_Bool)0, 0};
struct iwl_cfg const iwl7260_2ac_cfg_high_temp =
     {"Intel(R) Dual Band Wireless AC 7260", "iwlwifi-7260-", 9U, 9U, 8U, 15, 81920U,
    262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 2589U, 65535U, & iwl7000_base_params,
    & iwl7000_ht_params, 0, 1, (_Bool)0, (_Bool)0, 1, 1, (_Bool)0, 0U, 1, 0, (_Bool)0,
    0};
struct iwl_cfg const iwl7260_2n_cfg =
     {"Intel(R) Dual Band Wireless N 7260", "iwlwifi-7260-", 9U, 9U, 8U, 15, 81920U,
    262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 2589U, 65535U, & iwl7000_base_params,
    & iwl7000_ht_params, 0, 1, (_Bool)0, (_Bool)0, 1, (_Bool)0, (_Bool)0, 0U, 1, 0,
    (_Bool)0, 0};
struct iwl_cfg const iwl7260_n_cfg =
     {"Intel(R) Wireless N 7260", "iwlwifi-7260-", 9U, 9U, 8U, 15, 81920U, 262144U,
    (unsigned char)0, (unsigned char)0, (_Bool)0, 2589U, 65535U, & iwl7000_base_params,
    & iwl7000_ht_params, 0, 1, (_Bool)0, (_Bool)0, 1, (_Bool)0, (_Bool)0, 0U, 1, 0,
    (_Bool)0, 0};
struct iwl_cfg const iwl3160_2ac_cfg =
     {"Intel(R) Dual Band Wireless AC 3160", "iwlwifi-3160-", 9U, 9U, 8U, 15, 81920U,
    262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1801U, 65535U, & iwl7000_base_params,
    & iwl7000_ht_params, 0, 1, (_Bool)0, (_Bool)0, 1, (_Bool)0, (_Bool)0, 0U, (_Bool)0,
    0, (_Bool)0, 0};
struct iwl_cfg const iwl3160_2n_cfg =
     {"Intel(R) Dual Band Wireless N 3160", "iwlwifi-3160-", 9U, 9U, 8U, 15, 81920U,
    262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 1801U, 65535U, & iwl7000_base_params,
    & iwl7000_ht_params, 0, 1, (_Bool)0, (_Bool)0, 1, (_Bool)0, (_Bool)0, 0U, (_Bool)0,
    0, (_Bool)0, 0};
struct iwl_cfg const iwl3160_n_cfg =
     {"Intel(R) Wireless N 3160", "iwlwifi-3160-", 9U, 9U, 8U, 15, 81920U, 262144U,
    (unsigned char)0, (unsigned char)0, (_Bool)0, 1801U, 65535U, & iwl7000_base_params,
    & iwl7000_ht_params, 0, 1, (_Bool)0, (_Bool)0, 1, (_Bool)0, (_Bool)0, 0U, (_Bool)0,
    0, (_Bool)0, 0};
static struct iwl_pwr_tx_backoff const iwl7265_pwr_tx_backoffs[8U] =
  { {1600U, 0U},
        {1300U, 467U},
        {900U, 1900U},
        {800U, 2630U},
        {700U, 3720U},
        {600U, 5550U},
        {500U, 9350U},
        {0U, 0U}};
struct iwl_cfg const iwl7265_2ac_cfg =
     {"Intel(R) Dual Band Wireless AC 7265", "iwlwifi-7265-", 9U, 9U, 8U, 15, 81920U,
    262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 2589U, 65535U, & iwl7000_base_params,
    & iwl7000_ht_params, 0, 1, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, 0U,
    (_Bool)0, (struct iwl_pwr_tx_backoff const *)(& iwl7265_pwr_tx_backoffs), (_Bool)0,
    0};
struct iwl_cfg const iwl7265_2n_cfg =
     {"Intel(R) Dual Band Wireless N 7265", "iwlwifi-7265-", 9U, 9U, 8U, 15, 81920U,
    262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 2589U, 65535U, & iwl7000_base_params,
    & iwl7000_ht_params, 0, 1, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, 0U,
    (_Bool)0, (struct iwl_pwr_tx_backoff const *)(& iwl7265_pwr_tx_backoffs), (_Bool)0,
    0};
struct iwl_cfg const iwl7265_n_cfg =
     {"Intel(R) Wireless N 7265", "iwlwifi-7265-", 9U, 9U, 8U, 15, 81920U, 262144U,
    (unsigned char)0, (unsigned char)0, (_Bool)0, 2589U, 65535U, & iwl7000_base_params,
    & iwl7000_ht_params, 0, 1, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, 0U,
    (_Bool)0, (struct iwl_pwr_tx_backoff const *)(& iwl7265_pwr_tx_backoffs), (_Bool)0,
    0};
int ldv_pskb_expand_head_766(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_768(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_770(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_771(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_772(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_773(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_774(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_775(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_request_threaded_irq_776(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_threaded_irq(ldv_func_arg1, handler, thread_fn, ldv_func_arg4, ldv_func_arg5,
                             ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg6);
  } else {
  }
  return (ldv_func_res);
}
}
struct sk_buff *ldv_skb_clone_777(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_812(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_821(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_814(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_810(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_818(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_819(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_815(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_816(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_817(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
int ldv_request_threaded_irq_820(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 ) ;
struct iwl_cfg const iwl8260_n_cfg ;
static struct iwl_base_params const iwl8000_base_params =
     {32768, 20, 0U, (unsigned short)0, 1, 57U, 10000U, 512U, 1, 1, (_Bool)0, (_Bool)0};
static struct iwl_ht_params const iwl8000_ht_params = {0, (_Bool)0, (_Bool)0, (_Bool)0, 3U};
struct iwl_cfg const iwl8260_2ac_cfg =
     {"Intel(R) Dual Band Wireless AC 8260", "iwlwifi-8000-", 8U, 8U, 8U, 16, 81920U,
    262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 2589U, 65535U, & iwl8000_base_params,
    & iwl8000_ht_params, 0, 1, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, 10U,
    (_Bool)0, 0, (_Bool)0, "iwl_nvm_8000.bin"};
struct iwl_cfg const iwl8260_n_cfg =
     {"Intel(R) Dual Band Wireless-AC 8260", "iwlwifi-8000-", 8U, 8U, 8U, 16, 81920U,
    262144U, (unsigned char)0, (unsigned char)0, (_Bool)0, 2589U, 65535U, & iwl8000_base_params,
    & iwl8000_ht_params, 0, 1, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, 10U,
    (_Bool)0, 0, (_Bool)0, "iwl_nvm_8000.bin"};
int ldv_pskb_expand_head_810(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_812(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_814(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_815(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_816(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_817(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_818(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_819(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_request_threaded_irq_820(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_threaded_irq(ldv_func_arg1, handler, thread_fn, ldv_func_arg4, ldv_func_arg5,
                             ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg6);
  } else {
  }
  return (ldv_func_res);
}
}
struct sk_buff *ldv_skb_clone_821(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_856(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_865(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_858(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_854(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_862(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_863(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_859(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_860(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_861(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
int ldv_request_threaded_irq_864(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 ) ;
struct tracepoint __tracepoint_iwlwifi_dev_ucode_cont_event ;
struct tracepoint __tracepoint_iwlwifi_dev_ucode_wrap_event ;
struct tracepoint __tracepoint_iwlwifi_dev_ucode_error ;
struct tracepoint __tracepoint_iwlwifi_dev_ucode_event ;
static char const __tpstrtab_iwlwifi_dev_ioread32[21U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'd', 'e', 'v', '_',
        'i', 'o', 'r', 'e',
        'a', 'd', '3', '2',
        '\000'};
struct tracepoint __tracepoint_iwlwifi_dev_ioread32 = {(char const *)(& __tpstrtab_iwlwifi_dev_ioread32), {{0}}, (void (*)(void))0,
    (void (*)(void))0, (struct tracepoint_func *)0};
static char const __tpstrtab_iwlwifi_dev_iowrite8[21U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'd', 'e', 'v', '_',
        'i', 'o', 'w', 'r',
        'i', 't', 'e', '8',
        '\000'};
struct tracepoint __tracepoint_iwlwifi_dev_iowrite8 = {(char const *)(& __tpstrtab_iwlwifi_dev_iowrite8), {{0}}, (void (*)(void))0,
    (void (*)(void))0, (struct tracepoint_func *)0};
static char const __tpstrtab_iwlwifi_dev_iowrite32[22U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'd', 'e', 'v', '_',
        'i', 'o', 'w', 'r',
        'i', 't', 'e', '3',
        '2', '\000'};
struct tracepoint __tracepoint_iwlwifi_dev_iowrite32 = {(char const *)(& __tpstrtab_iwlwifi_dev_iowrite32), {{0}}, (void (*)(void))0,
    (void (*)(void))0, (struct tracepoint_func *)0};
static char const __tpstrtab_iwlwifi_dev_iowrite_prph32[27U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'd', 'e', 'v', '_',
        'i', 'o', 'w', 'r',
        'i', 't', 'e', '_',
        'p', 'r', 'p', 'h',
        '3', '2', '\000'};
struct tracepoint __tracepoint_iwlwifi_dev_iowrite_prph32 = {(char const *)(& __tpstrtab_iwlwifi_dev_iowrite_prph32), {{0}}, (void (*)(void))0,
    (void (*)(void))0, (struct tracepoint_func *)0};
static char const __tpstrtab_iwlwifi_dev_ioread_prph32[26U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'd', 'e', 'v', '_',
        'i', 'o', 'r', 'e',
        'a', 'd', '_', 'p',
        'r', 'p', 'h', '3',
        '2', '\000'};
struct tracepoint __tracepoint_iwlwifi_dev_ioread_prph32 = {(char const *)(& __tpstrtab_iwlwifi_dev_ioread_prph32), {{0}}, (void (*)(void))0,
    (void (*)(void))0, (struct tracepoint_func *)0};
static char const __tpstrtab_iwlwifi_dev_irq[16U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'd', 'e', 'v', '_',
        'i', 'r', 'q', '\000'};
struct tracepoint __tracepoint_iwlwifi_dev_irq = {(char const *)(& __tpstrtab_iwlwifi_dev_irq), {{0}}, (void (*)(void))0, (void (*)(void))0,
    (struct tracepoint_func *)0};
static char const __tpstrtab_iwlwifi_dev_ict_read[21U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'd', 'e', 'v', '_',
        'i', 'c', 't', '_',
        'r', 'e', 'a', 'd',
        '\000'};
struct tracepoint __tracepoint_iwlwifi_dev_ict_read = {(char const *)(& __tpstrtab_iwlwifi_dev_ict_read), {{0}}, (void (*)(void))0,
    (void (*)(void))0, (struct tracepoint_func *)0};
static char const __tpstrtab_iwlwifi_dev_ucode_cont_event[29U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'd', 'e', 'v', '_',
        'u', 'c', 'o', 'd',
        'e', '_', 'c', 'o',
        'n', 't', '_', 'e',
        'v', 'e', 'n', 't',
        '\000'};
struct tracepoint __tracepoint_iwlwifi_dev_ucode_cont_event = {(char const *)(& __tpstrtab_iwlwifi_dev_ucode_cont_event), {{0}}, (void (*)(void))0,
    (void (*)(void))0, (struct tracepoint_func *)0};
static char const __tpstrtab_iwlwifi_dev_ucode_wrap_event[29U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'd', 'e', 'v', '_',
        'u', 'c', 'o', 'd',
        'e', '_', 'w', 'r',
        'a', 'p', '_', 'e',
        'v', 'e', 'n', 't',
        '\000'};
struct tracepoint __tracepoint_iwlwifi_dev_ucode_wrap_event = {(char const *)(& __tpstrtab_iwlwifi_dev_ucode_wrap_event), {{0}}, (void (*)(void))0,
    (void (*)(void))0, (struct tracepoint_func *)0};
static char const __tpstrtab_iwlwifi_err[12U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'e', 'r', 'r', '\000'};
struct tracepoint __tracepoint_iwlwifi_err = {(char const *)(& __tpstrtab_iwlwifi_err), {{0}}, (void (*)(void))0, (void (*)(void))0,
    (struct tracepoint_func *)0};
static char const __tpstrtab_iwlwifi_warn[13U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'w', 'a', 'r', 'n',
        '\000'};
struct tracepoint __tracepoint_iwlwifi_warn = {(char const *)(& __tpstrtab_iwlwifi_warn), {{0}}, (void (*)(void))0, (void (*)(void))0,
    (struct tracepoint_func *)0};
static char const __tpstrtab_iwlwifi_info[13U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'i', 'n', 'f', 'o',
        '\000'};
struct tracepoint __tracepoint_iwlwifi_info = {(char const *)(& __tpstrtab_iwlwifi_info), {{0}}, (void (*)(void))0, (void (*)(void))0,
    (struct tracepoint_func *)0};
static char const __tpstrtab_iwlwifi_crit[13U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'c', 'r', 'i', 't',
        '\000'};
struct tracepoint __tracepoint_iwlwifi_crit = {(char const *)(& __tpstrtab_iwlwifi_crit), {{0}}, (void (*)(void))0, (void (*)(void))0,
    (struct tracepoint_func *)0};
static char const __tpstrtab_iwlwifi_dbg[12U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'd', 'b', 'g', '\000'};
struct tracepoint __tracepoint_iwlwifi_dbg = {(char const *)(& __tpstrtab_iwlwifi_dbg), {{0}}, (void (*)(void))0, (void (*)(void))0,
    (struct tracepoint_func *)0};
static char const __tpstrtab_iwlwifi_dev_tx_data[20U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'd', 'e', 'v', '_',
        't', 'x', '_', 'd',
        'a', 't', 'a', '\000'};
struct tracepoint __tracepoint_iwlwifi_dev_tx_data = {(char const *)(& __tpstrtab_iwlwifi_dev_tx_data), {{0}}, (void (*)(void))0,
    (void (*)(void))0, (struct tracepoint_func *)0};
static char const __tpstrtab_iwlwifi_dev_rx_data[20U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'd', 'e', 'v', '_',
        'r', 'x', '_', 'd',
        'a', 't', 'a', '\000'};
struct tracepoint __tracepoint_iwlwifi_dev_rx_data = {(char const *)(& __tpstrtab_iwlwifi_dev_rx_data), {{0}}, (void (*)(void))0,
    (void (*)(void))0, (struct tracepoint_func *)0};
static char const __tpstrtab_iwlwifi_dev_hcmd[17U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'd', 'e', 'v', '_',
        'h', 'c', 'm', 'd',
        '\000'};
struct tracepoint __tracepoint_iwlwifi_dev_hcmd = {(char const *)(& __tpstrtab_iwlwifi_dev_hcmd), {{0}}, (void (*)(void))0, (void (*)(void))0,
    (struct tracepoint_func *)0};
static char const __tpstrtab_iwlwifi_dev_rx[15U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'd', 'e', 'v', '_',
        'r', 'x', '\000'};
struct tracepoint __tracepoint_iwlwifi_dev_rx = {(char const *)(& __tpstrtab_iwlwifi_dev_rx), {{0}}, (void (*)(void))0, (void (*)(void))0,
    (struct tracepoint_func *)0};
static char const __tpstrtab_iwlwifi_dev_tx[15U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'd', 'e', 'v', '_',
        't', 'x', '\000'};
struct tracepoint __tracepoint_iwlwifi_dev_tx = {(char const *)(& __tpstrtab_iwlwifi_dev_tx), {{0}}, (void (*)(void))0, (void (*)(void))0,
    (struct tracepoint_func *)0};
static char const __tpstrtab_iwlwifi_dev_ucode_error[24U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'd', 'e', 'v', '_',
        'u', 'c', 'o', 'd',
        'e', '_', 'e', 'r',
        'r', 'o', 'r', '\000'};
struct tracepoint __tracepoint_iwlwifi_dev_ucode_error = {(char const *)(& __tpstrtab_iwlwifi_dev_ucode_error), {{0}}, (void (*)(void))0,
    (void (*)(void))0, (struct tracepoint_func *)0};
static char const __tpstrtab_iwlwifi_dev_ucode_event[24U] =
  { 'i', 'w', 'l', 'w',
        'i', 'f', 'i', '_',
        'd', 'e', 'v', '_',
        'u', 'c', 'o', 'd',
        'e', '_', 'e', 'v',
        'e', 'n', 't', '\000'};
struct tracepoint __tracepoint_iwlwifi_dev_ucode_event = {(char const *)(& __tpstrtab_iwlwifi_dev_ucode_event), {{0}}, (void (*)(void))0,
    (void (*)(void))0, (struct tracepoint_func *)0};
extern int trace_seq_printf(struct trace_seq * , char const * , ...) ;
extern int ftrace_raw_output_prep(struct trace_iterator * , struct trace_event * ) ;
extern int ftrace_event_reg(struct ftrace_event_call * , enum trace_reg , void * ) ;
extern int trace_event_raw_init(struct ftrace_event_call * ) ;
extern int trace_define_field(struct ftrace_event_call * , char const * , char const * ,
                              int , int , int , int ) ;
static enum print_line_t ftrace_raw_output_iwlwifi_dev_ioread32(struct trace_iterator *iter ,
                                                                int flags , struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_iwlwifi_dev_ioread32 *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_iwlwifi_dev_ioread32 *)iter->ent;
  ret = ftrace_raw_output_prep(iter, trace_event);
  if (ret != 0) {
    return ((enum print_line_t )ret);
  } else {
  }
  ret = trace_seq_printf(s, "[%s] read io[%#x] = %#x\n", (char *)field + ((unsigned long )field->__data_loc_dev & 65535UL),
                         field->offs, field->val);
  if (ret == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static enum print_line_t ftrace_raw_output_iwlwifi_dev_iowrite8(struct trace_iterator *iter ,
                                                                int flags , struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_iwlwifi_dev_iowrite8 *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_iwlwifi_dev_iowrite8 *)iter->ent;
  ret = ftrace_raw_output_prep(iter, trace_event);
  if (ret != 0) {
    return ((enum print_line_t )ret);
  } else {
  }
  ret = trace_seq_printf(s, "[%s] write io[%#x] = %#x)\n", (char *)field + ((unsigned long )field->__data_loc_dev & 65535UL),
                         field->offs, (int )field->val);
  if (ret == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static enum print_line_t ftrace_raw_output_iwlwifi_dev_iowrite32(struct trace_iterator *iter ,
                                                                 int flags , struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_iwlwifi_dev_iowrite32 *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_iwlwifi_dev_iowrite32 *)iter->ent;
  ret = ftrace_raw_output_prep(iter, trace_event);
  if (ret != 0) {
    return ((enum print_line_t )ret);
  } else {
  }
  ret = trace_seq_printf(s, "[%s] write io[%#x] = %#x)\n", (char *)field + ((unsigned long )field->__data_loc_dev & 65535UL),
                         field->offs, field->val);
  if (ret == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static enum print_line_t ftrace_raw_output_iwlwifi_dev_iowrite_prph32(struct trace_iterator *iter ,
                                                                      int flags ,
                                                                      struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_iwlwifi_dev_iowrite_prph32 *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_iwlwifi_dev_iowrite_prph32 *)iter->ent;
  ret = ftrace_raw_output_prep(iter, trace_event);
  if (ret != 0) {
    return ((enum print_line_t )ret);
  } else {
  }
  ret = trace_seq_printf(s, "[%s] write PRPH[%#x] = %#x)\n", (char *)field + ((unsigned long )field->__data_loc_dev & 65535UL),
                         field->offs, field->val);
  if (ret == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static enum print_line_t ftrace_raw_output_iwlwifi_dev_ioread_prph32(struct trace_iterator *iter ,
                                                                     int flags , struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_iwlwifi_dev_ioread_prph32 *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_iwlwifi_dev_ioread_prph32 *)iter->ent;
  ret = ftrace_raw_output_prep(iter, trace_event);
  if (ret != 0) {
    return ((enum print_line_t )ret);
  } else {
  }
  ret = trace_seq_printf(s, "[%s] read PRPH[%#x] = %#x\n", (char *)field + ((unsigned long )field->__data_loc_dev & 65535UL),
                         field->offs, field->val);
  if (ret == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static enum print_line_t ftrace_raw_output_iwlwifi_dev_irq(struct trace_iterator *iter ,
                                                           int flags , struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_iwlwifi_dev_irq *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_iwlwifi_dev_irq *)iter->ent;
  ret = ftrace_raw_output_prep(iter, trace_event);
  if (ret != 0) {
    return ((enum print_line_t )ret);
  } else {
  }
  ret = trace_seq_printf(s, "%d\n", 0);
  if (ret == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static enum print_line_t ftrace_raw_output_iwlwifi_dev_ict_read(struct trace_iterator *iter ,
                                                                int flags , struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_iwlwifi_dev_ict_read *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_iwlwifi_dev_ict_read *)iter->ent;
  ret = ftrace_raw_output_prep(iter, trace_event);
  if (ret != 0) {
    return ((enum print_line_t )ret);
  } else {
  }
  ret = trace_seq_printf(s, "[%s] read ict[%d] = %#.8x\n", (char *)field + ((unsigned long )field->__data_loc_dev & 65535UL),
                         field->index, field->value);
  if (ret == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static enum print_line_t ftrace_raw_output_iwlwifi_dev_ucode_cont_event(struct trace_iterator *iter ,
                                                                        int flags ,
                                                                        struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_iwlwifi_dev_ucode_cont_event *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_iwlwifi_dev_ucode_cont_event *)iter->ent;
  ret = ftrace_raw_output_prep(iter, trace_event);
  if (ret != 0) {
    return ((enum print_line_t )ret);
  } else {
  }
  ret = trace_seq_printf(s, "[%s] EVT_LOGT:%010u:0x%08x:%04u\n", (char *)field + ((unsigned long )field->__data_loc_dev & 65535UL),
                         field->time, field->data, field->ev);
  if (ret == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static enum print_line_t ftrace_raw_output_iwlwifi_dev_ucode_wrap_event(struct trace_iterator *iter ,
                                                                        int flags ,
                                                                        struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_iwlwifi_dev_ucode_wrap_event *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_iwlwifi_dev_ucode_wrap_event *)iter->ent;
  ret = ftrace_raw_output_prep(iter, trace_event);
  if (ret != 0) {
    return ((enum print_line_t )ret);
  } else {
  }
  ret = trace_seq_printf(s, "[%s] wraps=#%02d n=0x%X p=0x%X\n", (char *)field + ((unsigned long )field->__data_loc_dev & 65535UL),
                         field->wraps, field->n_entry, field->p_entry);
  if (ret == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static enum print_line_t ftrace_raw_output_iwlwifi_msg_event(struct trace_iterator *iter ,
                                                             int flags , struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_iwlwifi_msg_event *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_iwlwifi_msg_event *)iter->ent;
  ret = ftrace_raw_output_prep(iter, trace_event);
  if (ret != 0) {
    return ((enum print_line_t )ret);
  } else {
  }
  ret = trace_seq_printf(s, "%s\n", (char *)field + ((unsigned long )field->__data_loc_msg & 65535UL));
  if (ret == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static enum print_line_t ftrace_raw_output_iwlwifi_dbg(struct trace_iterator *iter ,
                                                       int flags , struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_iwlwifi_dbg *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_iwlwifi_dbg *)iter->ent;
  ret = ftrace_raw_output_prep(iter, trace_event);
  if (ret != 0) {
    return ((enum print_line_t )ret);
  } else {
  }
  ret = trace_seq_printf(s, "%s\n", (char *)field + ((unsigned long )field->__data_loc_msg & 65535UL));
  if (ret == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static enum print_line_t ftrace_raw_output_iwlwifi_dev_tx_data(struct trace_iterator *iter ,
                                                               int flags , struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_iwlwifi_dev_tx_data *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_iwlwifi_dev_tx_data *)iter->ent;
  ret = ftrace_raw_output_prep(iter, trace_event);
  if (ret != 0) {
    return ((enum print_line_t )ret);
  } else {
  }
  ret = trace_seq_printf(s, "[%s] TX frame data\n", (char *)field + ((unsigned long )field->__data_loc_dev & 65535UL));
  if (ret == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static enum print_line_t ftrace_raw_output_iwlwifi_dev_rx_data(struct trace_iterator *iter ,
                                                               int flags , struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_iwlwifi_dev_rx_data *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_iwlwifi_dev_rx_data *)iter->ent;
  ret = ftrace_raw_output_prep(iter, trace_event);
  if (ret != 0) {
    return ((enum print_line_t )ret);
  } else {
  }
  ret = trace_seq_printf(s, "[%s] RX frame data\n", (char *)field + ((unsigned long )field->__data_loc_dev & 65535UL));
  if (ret == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static enum print_line_t ftrace_raw_output_iwlwifi_dev_hcmd(struct trace_iterator *iter ,
                                                            int flags , struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_iwlwifi_dev_hcmd *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_iwlwifi_dev_hcmd *)iter->ent;
  ret = ftrace_raw_output_prep(iter, trace_event);
  if (ret != 0) {
    return ((enum print_line_t )ret);
  } else {
  }
  ret = trace_seq_printf(s, "[%s] hcmd %#.2x (%ssync)\n", (char *)field + ((unsigned long )field->__data_loc_dev & 65535UL),
                         (int )*((u8 *)field + ((unsigned long )field->__data_loc_hcmd & 65535UL)),
                         (int )field->flags & 1 ? (char *)"a" : (char *)"");
  if (ret == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static enum print_line_t ftrace_raw_output_iwlwifi_dev_rx(struct trace_iterator *iter ,
                                                          int flags , struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_iwlwifi_dev_rx *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_iwlwifi_dev_rx *)iter->ent;
  ret = ftrace_raw_output_prep(iter, trace_event);
  if (ret != 0) {
    return ((enum print_line_t )ret);
  } else {
  }
  ret = trace_seq_printf(s, "[%s] RX cmd %#.2x\n", (char *)field + ((unsigned long )field->__data_loc_dev & 65535UL),
                         (int )*((u8 *)field + (((unsigned long )field->__data_loc_rxbuf & 65535UL) + 4UL)));
  if (ret == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static enum print_line_t ftrace_raw_output_iwlwifi_dev_tx(struct trace_iterator *iter ,
                                                          int flags , struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_iwlwifi_dev_tx *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_iwlwifi_dev_tx *)iter->ent;
  ret = ftrace_raw_output_prep(iter, trace_event);
  if (ret != 0) {
    return ((enum print_line_t )ret);
  } else {
  }
  ret = trace_seq_printf(s, "[%s] TX %.2x (%zu bytes)\n", (char *)field + ((unsigned long )field->__data_loc_dev & 65535UL),
                         (int )*((u8 *)field + ((unsigned long )field->__data_loc_buf0 & 65535UL)),
                         field->framelen);
  if (ret == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static enum print_line_t ftrace_raw_output_iwlwifi_dev_ucode_error(struct trace_iterator *iter ,
                                                                   int flags , struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_iwlwifi_dev_ucode_error *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_iwlwifi_dev_ucode_error *)iter->ent;
  ret = ftrace_raw_output_prep(iter, trace_event);
  if (ret != 0) {
    return ((enum print_line_t )ret);
  } else {
  }
  ret = trace_seq_printf(s, "[%s] #%02d %010u data 0x%08X 0x%08X line %u, blink 0x%05X 0x%05X ilink 0x%05X 0x%05X bcon_tm %010u gp 0x%08X 0x%08X 0x%08X uCode 0x%08X hw 0x%08X brd 0x%08X\n",
                         (char *)field + ((unsigned long )field->__data_loc_dev & 65535UL),
                         field->desc, field->tsf_low, field->data1, field->data2,
                         field->line, field->blink1, field->blink2, field->ilink1,
                         field->ilink2, field->bcon_time, field->gp1, field->gp2,
                         field->gp3, field->ucode_ver, field->hw_ver, field->brd_ver);
  if (ret == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static enum print_line_t ftrace_raw_output_iwlwifi_dev_ucode_event(struct trace_iterator *iter ,
                                                                   int flags , struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_iwlwifi_dev_ucode_event *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_iwlwifi_dev_ucode_event *)iter->ent;
  ret = ftrace_raw_output_prep(iter, trace_event);
  if (ret != 0) {
    return ((enum print_line_t )ret);
  } else {
  }
  ret = trace_seq_printf(s, "[%s] EVT_LOGT:%010u:0x%08x:%04u\n", (char *)field + ((unsigned long )field->__data_loc_dev & 65535UL),
                         field->time, field->data, field->ev);
  if (ret == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static int ftrace_define_fields_iwlwifi_dev_ioread32(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "__data_loc char[]", "dev", 8, 4, 1, 0);
  ret = trace_define_field(event_call, "u32", "offs", 12, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "val", 16, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  return (ret);
}
}
static int ftrace_define_fields_iwlwifi_dev_iowrite8(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "__data_loc char[]", "dev", 8, 4, 1, 0);
  ret = trace_define_field(event_call, "u32", "offs", 12, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u8", "val", 16, 1, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  return (ret);
}
}
static int ftrace_define_fields_iwlwifi_dev_iowrite32(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "__data_loc char[]", "dev", 8, 4, 1, 0);
  ret = trace_define_field(event_call, "u32", "offs", 12, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "val", 16, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  return (ret);
}
}
static int ftrace_define_fields_iwlwifi_dev_iowrite_prph32(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "__data_loc char[]", "dev", 8, 4, 1, 0);
  ret = trace_define_field(event_call, "u32", "offs", 12, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "val", 16, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  return (ret);
}
}
static int ftrace_define_fields_iwlwifi_dev_ioread_prph32(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "__data_loc char[]", "dev", 8, 4, 1, 0);
  ret = trace_define_field(event_call, "u32", "offs", 12, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "val", 16, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  return (ret);
}
}
static int ftrace_define_fields_iwlwifi_dev_irq(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "__data_loc char[]", "dev", 8, 4, 1, 0);
  return (ret);
}
}
static int ftrace_define_fields_iwlwifi_dev_ict_read(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "__data_loc char[]", "dev", 8, 4, 1, 0);
  ret = trace_define_field(event_call, "u32", "index", 12, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "value", 16, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  return (ret);
}
}
static int ftrace_define_fields_iwlwifi_dev_ucode_cont_event(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "__data_loc char[]", "dev", 8, 4, 1, 0);
  ret = trace_define_field(event_call, "u32", "time", 12, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "data", 16, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "ev", 20, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  return (ret);
}
}
static int ftrace_define_fields_iwlwifi_dev_ucode_wrap_event(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "__data_loc char[]", "dev", 8, 4, 1, 0);
  ret = trace_define_field(event_call, "u32", "wraps", 12, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "n_entry", 16, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "p_entry", 20, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  return (ret);
}
}
static int ftrace_define_fields_iwlwifi_msg_event(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "__data_loc char[]", "msg", 8, 4, 1, 0);
  return (ret);
}
}
static int ftrace_define_fields_iwlwifi_dbg(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "u32", "level", 8, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u8", "in_interrupt", 12, 1, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "__data_loc char[]", "function", 16, 4, 1,
                           0);
  ret = trace_define_field(event_call, "__data_loc char[]", "msg", 20, 4, 1, 0);
  return (ret);
}
}
static int ftrace_define_fields_iwlwifi_dev_tx_data(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "__data_loc char[]", "dev", 8, 4, 1, 0);
  ret = trace_define_field(event_call, "__data_loc u8[]", "data", 12, 4, 0, 0);
  return (ret);
}
}
static int ftrace_define_fields_iwlwifi_dev_rx_data(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "__data_loc char[]", "dev", 8, 4, 1, 0);
  ret = trace_define_field(event_call, "__data_loc u8[]", "data", 12, 4, 0, 0);
  return (ret);
}
}
static int ftrace_define_fields_iwlwifi_dev_hcmd(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "__data_loc char[]", "dev", 8, 4, 1, 0);
  ret = trace_define_field(event_call, "__data_loc u8[]", "hcmd", 12, 4, 0, 0);
  ret = trace_define_field(event_call, "u32", "flags", 16, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  return (ret);
}
}
static int ftrace_define_fields_iwlwifi_dev_rx(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "__data_loc char[]", "dev", 8, 4, 1, 0);
  ret = trace_define_field(event_call, "__data_loc u8[]", "rxbuf", 12, 4, 0, 0);
  return (ret);
}
}
static int ftrace_define_fields_iwlwifi_dev_tx(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "__data_loc char[]", "dev", 8, 4, 1, 0);
  ret = trace_define_field(event_call, "size_t", "framelen", 16, 8, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "__data_loc u8[]", "tfd", 24, 4, 0, 0);
  ret = trace_define_field(event_call, "__data_loc u8[]", "buf0", 28, 4, 0, 0);
  ret = trace_define_field(event_call, "__data_loc u8[]", "buf1", 32, 4, 0, 0);
  return (ret);
}
}
static int ftrace_define_fields_iwlwifi_dev_ucode_error(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "__data_loc char[]", "dev", 8, 4, 1, 0);
  ret = trace_define_field(event_call, "u32", "desc", 12, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "tsf_low", 16, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "data1", 20, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "data2", 24, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "line", 28, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "blink1", 32, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "blink2", 36, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "ilink1", 40, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "ilink2", 44, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "bcon_time", 48, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "gp1", 52, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "gp2", 56, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "gp3", 60, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "ucode_ver", 64, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "hw_ver", 68, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "brd_ver", 72, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  return (ret);
}
}
static int ftrace_define_fields_iwlwifi_dev_ucode_event(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "__data_loc char[]", "dev", 8, 4, 1, 0);
  ret = trace_define_field(event_call, "u32", "time", 12, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "data", 16, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "ev", 20, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  return (ret);
}
}
static char const __kstrtab___tracepoint_iwlwifi_dev_iowrite8[34U] =
  { '_', '_', 't', 'r',
        'a', 'c', 'e', 'p',
        'o', 'i', 'n', 't',
        '_', 'i', 'w', 'l',
        'w', 'i', 'f', 'i',
        '_', 'd', 'e', 'v',
        '_', 'i', 'o', 'w',
        'r', 'i', 't', 'e',
        '8', '\000'};
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_dev_iowrite8 ;
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_dev_iowrite8 = {(unsigned long )(& __tracepoint_iwlwifi_dev_iowrite8), (char const *)(& __kstrtab___tracepoint_iwlwifi_dev_iowrite8)};
static char const __kstrtab___tracepoint_iwlwifi_dev_ioread32[34U] =
  { '_', '_', 't', 'r',
        'a', 'c', 'e', 'p',
        'o', 'i', 'n', 't',
        '_', 'i', 'w', 'l',
        'w', 'i', 'f', 'i',
        '_', 'd', 'e', 'v',
        '_', 'i', 'o', 'r',
        'e', 'a', 'd', '3',
        '2', '\000'};
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_dev_ioread32 ;
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_dev_ioread32 = {(unsigned long )(& __tracepoint_iwlwifi_dev_ioread32), (char const *)(& __kstrtab___tracepoint_iwlwifi_dev_ioread32)};
static char const __kstrtab___tracepoint_iwlwifi_dev_iowrite32[35U] =
  { '_', '_', 't', 'r',
        'a', 'c', 'e', 'p',
        'o', 'i', 'n', 't',
        '_', 'i', 'w', 'l',
        'w', 'i', 'f', 'i',
        '_', 'd', 'e', 'v',
        '_', 'i', 'o', 'w',
        'r', 'i', 't', 'e',
        '3', '2', '\000'};
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_dev_iowrite32 ;
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_dev_iowrite32 = {(unsigned long )(& __tracepoint_iwlwifi_dev_iowrite32), (char const *)(& __kstrtab___tracepoint_iwlwifi_dev_iowrite32)};
static char const __kstrtab___tracepoint_iwlwifi_dev_rx[28U] =
  { '_', '_', 't', 'r',
        'a', 'c', 'e', 'p',
        'o', 'i', 'n', 't',
        '_', 'i', 'w', 'l',
        'w', 'i', 'f', 'i',
        '_', 'd', 'e', 'v',
        '_', 'r', 'x', '\000'};
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_dev_rx ;
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_dev_rx = {(unsigned long )(& __tracepoint_iwlwifi_dev_rx), (char const *)(& __kstrtab___tracepoint_iwlwifi_dev_rx)};
static char const __kstrtab___tracepoint_iwlwifi_dev_tx[28U] =
  { '_', '_', 't', 'r',
        'a', 'c', 'e', 'p',
        'o', 'i', 'n', 't',
        '_', 'i', 'w', 'l',
        'w', 'i', 'f', 'i',
        '_', 'd', 'e', 'v',
        '_', 't', 'x', '\000'};
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_dev_tx ;
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_dev_tx = {(unsigned long )(& __tracepoint_iwlwifi_dev_tx), (char const *)(& __kstrtab___tracepoint_iwlwifi_dev_tx)};
static char const __kstrtab___tracepoint_iwlwifi_dev_ucode_event[37U] =
  { '_', '_', 't', 'r',
        'a', 'c', 'e', 'p',
        'o', 'i', 'n', 't',
        '_', 'i', 'w', 'l',
        'w', 'i', 'f', 'i',
        '_', 'd', 'e', 'v',
        '_', 'u', 'c', 'o',
        'd', 'e', '_', 'e',
        'v', 'e', 'n', 't',
        '\000'};
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_dev_ucode_event ;
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_dev_ucode_event = {(unsigned long )(& __tracepoint_iwlwifi_dev_ucode_event), (char const *)(& __kstrtab___tracepoint_iwlwifi_dev_ucode_event)};
static char const __kstrtab___tracepoint_iwlwifi_dev_ucode_error[37U] =
  { '_', '_', 't', 'r',
        'a', 'c', 'e', 'p',
        'o', 'i', 'n', 't',
        '_', 'i', 'w', 'l',
        'w', 'i', 'f', 'i',
        '_', 'd', 'e', 'v',
        '_', 'u', 'c', 'o',
        'd', 'e', '_', 'e',
        'r', 'r', 'o', 'r',
        '\000'};
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_dev_ucode_error ;
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_dev_ucode_error = {(unsigned long )(& __tracepoint_iwlwifi_dev_ucode_error), (char const *)(& __kstrtab___tracepoint_iwlwifi_dev_ucode_error)};
static char const __kstrtab___tracepoint_iwlwifi_dev_ucode_cont_event[42U] =
  { '_', '_', 't', 'r',
        'a', 'c', 'e', 'p',
        'o', 'i', 'n', 't',
        '_', 'i', 'w', 'l',
        'w', 'i', 'f', 'i',
        '_', 'd', 'e', 'v',
        '_', 'u', 'c', 'o',
        'd', 'e', '_', 'c',
        'o', 'n', 't', '_',
        'e', 'v', 'e', 'n',
        't', '\000'};
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_dev_ucode_cont_event ;
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_dev_ucode_cont_event = {(unsigned long )(& __tracepoint_iwlwifi_dev_ucode_cont_event),
    (char const *)(& __kstrtab___tracepoint_iwlwifi_dev_ucode_cont_event)};
static char const __kstrtab___tracepoint_iwlwifi_dev_ucode_wrap_event[42U] =
  { '_', '_', 't', 'r',
        'a', 'c', 'e', 'p',
        'o', 'i', 'n', 't',
        '_', 'i', 'w', 'l',
        'w', 'i', 'f', 'i',
        '_', 'd', 'e', 'v',
        '_', 'u', 'c', 'o',
        'd', 'e', '_', 'w',
        'r', 'a', 'p', '_',
        'e', 'v', 'e', 'n',
        't', '\000'};
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_dev_ucode_wrap_event ;
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_dev_ucode_wrap_event = {(unsigned long )(& __tracepoint_iwlwifi_dev_ucode_wrap_event),
    (char const *)(& __kstrtab___tracepoint_iwlwifi_dev_ucode_wrap_event)};
static char const __kstrtab___tracepoint_iwlwifi_info[26U] =
  { '_', '_', 't', 'r',
        'a', 'c', 'e', 'p',
        'o', 'i', 'n', 't',
        '_', 'i', 'w', 'l',
        'w', 'i', 'f', 'i',
        '_', 'i', 'n', 'f',
        'o', '\000'};
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_info ;
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_info = {(unsigned long )(& __tracepoint_iwlwifi_info), (char const *)(& __kstrtab___tracepoint_iwlwifi_info)};
static char const __kstrtab___tracepoint_iwlwifi_warn[26U] =
  { '_', '_', 't', 'r',
        'a', 'c', 'e', 'p',
        'o', 'i', 'n', 't',
        '_', 'i', 'w', 'l',
        'w', 'i', 'f', 'i',
        '_', 'w', 'a', 'r',
        'n', '\000'};
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_warn ;
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_warn = {(unsigned long )(& __tracepoint_iwlwifi_warn), (char const *)(& __kstrtab___tracepoint_iwlwifi_warn)};
static char const __kstrtab___tracepoint_iwlwifi_crit[26U] =
  { '_', '_', 't', 'r',
        'a', 'c', 'e', 'p',
        'o', 'i', 'n', 't',
        '_', 'i', 'w', 'l',
        'w', 'i', 'f', 'i',
        '_', 'c', 'r', 'i',
        't', '\000'};
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_crit ;
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_crit = {(unsigned long )(& __tracepoint_iwlwifi_crit), (char const *)(& __kstrtab___tracepoint_iwlwifi_crit)};
static char const __kstrtab___tracepoint_iwlwifi_err[25U] =
  { '_', '_', 't', 'r',
        'a', 'c', 'e', 'p',
        'o', 'i', 'n', 't',
        '_', 'i', 'w', 'l',
        'w', 'i', 'f', 'i',
        '_', 'e', 'r', 'r',
        '\000'};
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_err ;
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_err = {(unsigned long )(& __tracepoint_iwlwifi_err), (char const *)(& __kstrtab___tracepoint_iwlwifi_err)};
static char const __kstrtab___tracepoint_iwlwifi_dbg[25U] =
  { '_', '_', 't', 'r',
        'a', 'c', 'e', 'p',
        'o', 'i', 'n', 't',
        '_', 'i', 'w', 'l',
        'w', 'i', 'f', 'i',
        '_', 'd', 'b', 'g',
        '\000'};
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_dbg ;
struct kernel_symbol const __ksymtab___tracepoint_iwlwifi_dbg = {(unsigned long )(& __tracepoint_iwlwifi_dbg), (char const *)(& __kstrtab___tracepoint_iwlwifi_dbg)};
void ldv_initialize_ftrace_event_class_11(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_iwlwifi_dbg_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_initialize_ftrace_event_class_4(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_iwlwifi_dev_ucode_event_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_initialize_ftrace_event_class_9(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_iwlwifi_dev_rx_data_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_initialize_ftrace_event_class_7(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_iwlwifi_dev_rx_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_initialize_ftrace_event_class_15(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_iwlwifi_dev_ict_read_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_initialize_ftrace_event_class_13(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_iwlwifi_dev_ucode_wrap_event_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_initialize_ftrace_event_class_20(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_iwlwifi_dev_iowrite8_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_initialize_ftrace_event_class_18(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_iwlwifi_dev_iowrite_prph32_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_initialize_ftrace_event_class_10(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_iwlwifi_dev_tx_data_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_initialize_ftrace_event_class_21(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_iwlwifi_dev_ioread32_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_initialize_ftrace_event_class_17(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_iwlwifi_dev_ioread_prph32_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_initialize_ftrace_event_class_5(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_iwlwifi_dev_ucode_error_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_initialize_ftrace_event_class_16(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_iwlwifi_dev_irq_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_initialize_ftrace_event_class_12(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_iwlwifi_msg_event_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_initialize_ftrace_event_class_8(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_iwlwifi_dev_hcmd_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_initialize_ftrace_event_class_6(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_iwlwifi_dev_tx_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_initialize_ftrace_event_class_14(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_iwlwifi_dev_ucode_cont_event_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_initialize_ftrace_event_class_19(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_iwlwifi_dev_iowrite32_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_main_exported_33(void)
{
  int ldvarg2 ;
  int tmp ;
  struct trace_iterator *ldvarg0 ;
  void *tmp___0 ;
  struct trace_event *ldvarg1 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg2 = tmp;
  tmp___0 = ldv_zalloc(8512UL);
  ldvarg0 = (struct trace_iterator *)tmp___0;
  tmp___1 = ldv_zalloc(48UL);
  ldvarg1 = (struct trace_event *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_33 == 1) {
    ftrace_raw_output_iwlwifi_dev_ict_read(ldvarg0, ldvarg2, ldvarg1);
    ldv_state_variable_33 = 1;
  } else {
  }
  goto ldv_53118;
  default:
  ldv_stop();
  }
  ldv_53118: ;
  return;
}
}
void ldv_main_exported_32(void)
{
  int ldvarg5 ;
  int tmp ;
  struct trace_iterator *ldvarg3 ;
  void *tmp___0 ;
  struct trace_event *ldvarg4 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg5 = tmp;
  tmp___0 = ldv_zalloc(8512UL);
  ldvarg3 = (struct trace_iterator *)tmp___0;
  tmp___1 = ldv_zalloc(48UL);
  ldvarg4 = (struct trace_event *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_32 == 1) {
    ftrace_raw_output_iwlwifi_dev_ucode_cont_event(ldvarg3, ldvarg5, ldvarg4);
    ldv_state_variable_32 = 1;
  } else {
  }
  goto ldv_53127;
  default:
  ldv_stop();
  }
  ldv_53127: ;
  return;
}
}
void ldv_main_exported_21(void)
{
  void *ldvarg6 ;
  void *tmp ;
  enum trace_reg ldvarg7 ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg6 = tmp;
  memset((void *)(& ldvarg7), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_21 == 1) {
    ftrace_event_reg(event_class_iwlwifi_dev_ioread32_group0, ldvarg7, ldvarg6);
    ldv_state_variable_21 = 1;
  } else {
  }
  goto ldv_53135;
  case 1: ;
  if (ldv_state_variable_21 == 1) {
    trace_event_raw_init(event_class_iwlwifi_dev_ioread32_group0);
    ldv_state_variable_21 = 1;
  } else {
  }
  goto ldv_53135;
  case 2: ;
  if (ldv_state_variable_21 == 1) {
    ftrace_define_fields_iwlwifi_dev_ioread32(event_class_iwlwifi_dev_ioread32_group0);
    ldv_state_variable_21 = 1;
  } else {
  }
  goto ldv_53135;
  default:
  ldv_stop();
  }
  ldv_53135: ;
  return;
}
}
void ldv_main_exported_7(void)
{
  enum trace_reg ldvarg9 ;
  void *ldvarg8 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg8 = tmp;
  memset((void *)(& ldvarg9), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_7 == 1) {
    ftrace_event_reg(event_class_iwlwifi_dev_rx_group0, ldvarg9, ldvarg8);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_53145;
  case 1: ;
  if (ldv_state_variable_7 == 1) {
    trace_event_raw_init(event_class_iwlwifi_dev_rx_group0);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_53145;
  case 2: ;
  if (ldv_state_variable_7 == 1) {
    ftrace_define_fields_iwlwifi_dev_rx(event_class_iwlwifi_dev_rx_group0);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_53145;
  default:
  ldv_stop();
  }
  ldv_53145: ;
  return;
}
}
void ldv_main_exported_26(void)
{
  int ldvarg12 ;
  int tmp ;
  struct trace_iterator *ldvarg10 ;
  void *tmp___0 ;
  struct trace_event *ldvarg11 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg12 = tmp;
  tmp___0 = ldv_zalloc(8512UL);
  ldvarg10 = (struct trace_iterator *)tmp___0;
  tmp___1 = ldv_zalloc(48UL);
  ldvarg11 = (struct trace_event *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_26 == 1) {
    ftrace_raw_output_iwlwifi_dev_hcmd(ldvarg10, ldvarg12, ldvarg11);
    ldv_state_variable_26 = 1;
  } else {
  }
  goto ldv_53156;
  default:
  ldv_stop();
  }
  ldv_53156: ;
  return;
}
}
void ldv_main_exported_17(void)
{
  void *ldvarg13 ;
  void *tmp ;
  enum trace_reg ldvarg14 ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg13 = tmp;
  memset((void *)(& ldvarg14), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_17 == 1) {
    ftrace_event_reg(event_class_iwlwifi_dev_ioread_prph32_group0, ldvarg14, ldvarg13);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_53164;
  case 1: ;
  if (ldv_state_variable_17 == 1) {
    trace_event_raw_init(event_class_iwlwifi_dev_ioread_prph32_group0);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_53164;
  case 2: ;
  if (ldv_state_variable_17 == 1) {
    ftrace_define_fields_iwlwifi_dev_ioread_prph32(event_class_iwlwifi_dev_ioread_prph32_group0);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_53164;
  default:
  ldv_stop();
  }
  ldv_53164: ;
  return;
}
}
void ldv_main_exported_18(void)
{
  void *ldvarg15 ;
  void *tmp ;
  enum trace_reg ldvarg16 ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg15 = tmp;
  memset((void *)(& ldvarg16), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_18 == 1) {
    ftrace_event_reg(event_class_iwlwifi_dev_iowrite_prph32_group0, ldvarg16, ldvarg15);
    ldv_state_variable_18 = 1;
  } else {
  }
  goto ldv_53174;
  case 1: ;
  if (ldv_state_variable_18 == 1) {
    trace_event_raw_init(event_class_iwlwifi_dev_iowrite_prph32_group0);
    ldv_state_variable_18 = 1;
  } else {
  }
  goto ldv_53174;
  case 2: ;
  if (ldv_state_variable_18 == 1) {
    ftrace_define_fields_iwlwifi_dev_iowrite_prph32(event_class_iwlwifi_dev_iowrite_prph32_group0);
    ldv_state_variable_18 = 1;
  } else {
  }
  goto ldv_53174;
  default:
  ldv_stop();
  }
  ldv_53174: ;
  return;
}
}
void ldv_main_exported_30(void)
{
  int ldvarg19 ;
  int tmp ;
  struct trace_iterator *ldvarg17 ;
  void *tmp___0 ;
  struct trace_event *ldvarg18 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg19 = tmp;
  tmp___0 = ldv_zalloc(8512UL);
  ldvarg17 = (struct trace_iterator *)tmp___0;
  tmp___1 = ldv_zalloc(48UL);
  ldvarg18 = (struct trace_event *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_30 == 1) {
    ftrace_raw_output_iwlwifi_msg_event(ldvarg17, ldvarg19, ldvarg18);
    ldv_state_variable_30 = 1;
  } else {
  }
  goto ldv_53185;
  default:
  ldv_stop();
  }
  ldv_53185: ;
  return;
}
}
void ldv_main_exported_16(void)
{
  void *ldvarg20 ;
  void *tmp ;
  enum trace_reg ldvarg21 ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg20 = tmp;
  memset((void *)(& ldvarg21), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_16 == 1) {
    ftrace_event_reg(event_class_iwlwifi_dev_irq_group0, ldvarg21, ldvarg20);
    ldv_state_variable_16 = 1;
  } else {
  }
  goto ldv_53193;
  case 1: ;
  if (ldv_state_variable_16 == 1) {
    trace_event_raw_init(event_class_iwlwifi_dev_irq_group0);
    ldv_state_variable_16 = 1;
  } else {
  }
  goto ldv_53193;
  case 2: ;
  if (ldv_state_variable_16 == 1) {
    ftrace_define_fields_iwlwifi_dev_irq(event_class_iwlwifi_dev_irq_group0);
    ldv_state_variable_16 = 1;
  } else {
  }
  goto ldv_53193;
  default:
  ldv_stop();
  }
  ldv_53193: ;
  return;
}
}
void ldv_main_exported_27(void)
{
  struct trace_event *ldvarg28 ;
  void *tmp ;
  int ldvarg29 ;
  int tmp___0 ;
  struct trace_iterator *ldvarg27 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(48UL);
  ldvarg28 = (struct trace_event *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg29 = tmp___0;
  tmp___1 = ldv_zalloc(8512UL);
  ldvarg27 = (struct trace_iterator *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_27 == 1) {
    ftrace_raw_output_iwlwifi_dev_rx_data(ldvarg27, ldvarg29, ldvarg28);
    ldv_state_variable_27 = 1;
  } else {
  }
  goto ldv_53204;
  default:
  ldv_stop();
  }
  ldv_53204: ;
  return;
}
}
void ldv_main_exported_25(void)
{
  struct trace_iterator *ldvarg30 ;
  void *tmp ;
  struct trace_event *ldvarg31 ;
  void *tmp___0 ;
  int ldvarg32 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(8512UL);
  ldvarg30 = (struct trace_iterator *)tmp;
  tmp___0 = ldv_zalloc(48UL);
  ldvarg31 = (struct trace_event *)tmp___0;
  tmp___1 = __VERIFIER_nondet_int();
  ldvarg32 = tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_25 == 1) {
    ftrace_raw_output_iwlwifi_dev_rx(ldvarg30, ldvarg32, ldvarg31);
    ldv_state_variable_25 = 1;
  } else {
  }
  goto ldv_53213;
  default:
  ldv_stop();
  }
  ldv_53213: ;
  return;
}
}
void ldv_main_exported_28(void)
{
  struct trace_iterator *ldvarg33 ;
  void *tmp ;
  struct trace_event *ldvarg34 ;
  void *tmp___0 ;
  int ldvarg35 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(8512UL);
  ldvarg33 = (struct trace_iterator *)tmp;
  tmp___0 = ldv_zalloc(48UL);
  ldvarg34 = (struct trace_event *)tmp___0;
  tmp___1 = __VERIFIER_nondet_int();
  ldvarg35 = tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_28 == 1) {
    ftrace_raw_output_iwlwifi_dev_tx_data(ldvarg33, ldvarg35, ldvarg34);
    ldv_state_variable_28 = 1;
  } else {
  }
  goto ldv_53222;
  default:
  ldv_stop();
  }
  ldv_53222: ;
  return;
}
}
void ldv_main_exported_20(void)
{
  enum trace_reg ldvarg83 ;
  void *ldvarg82 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg82 = tmp;
  memset((void *)(& ldvarg83), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_20 == 1) {
    ftrace_event_reg(event_class_iwlwifi_dev_iowrite8_group0, ldvarg83, ldvarg82);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_53230;
  case 1: ;
  if (ldv_state_variable_20 == 1) {
    trace_event_raw_init(event_class_iwlwifi_dev_iowrite8_group0);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_53230;
  case 2: ;
  if (ldv_state_variable_20 == 1) {
    ftrace_define_fields_iwlwifi_dev_iowrite8(event_class_iwlwifi_dev_iowrite8_group0);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_53230;
  default:
  ldv_stop();
  }
  ldv_53230: ;
  return;
}
}
void ldv_main_exported_14(void)
{
  void *ldvarg84 ;
  void *tmp ;
  enum trace_reg ldvarg85 ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg84 = tmp;
  memset((void *)(& ldvarg85), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_14 == 1) {
    ftrace_event_reg(event_class_iwlwifi_dev_ucode_cont_event_group0, ldvarg85, ldvarg84);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_53240;
  case 1: ;
  if (ldv_state_variable_14 == 1) {
    trace_event_raw_init(event_class_iwlwifi_dev_ucode_cont_event_group0);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_53240;
  case 2: ;
  if (ldv_state_variable_14 == 1) {
    ftrace_define_fields_iwlwifi_dev_ucode_cont_event(event_class_iwlwifi_dev_ucode_cont_event_group0);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_53240;
  default:
  ldv_stop();
  }
  ldv_53240: ;
  return;
}
}
void ldv_main_exported_24(void)
{
  struct trace_iterator *ldvarg86 ;
  void *tmp ;
  struct trace_event *ldvarg87 ;
  void *tmp___0 ;
  int ldvarg88 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(8512UL);
  ldvarg86 = (struct trace_iterator *)tmp;
  tmp___0 = ldv_zalloc(48UL);
  ldvarg87 = (struct trace_event *)tmp___0;
  tmp___1 = __VERIFIER_nondet_int();
  ldvarg88 = tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_24 == 1) {
    ftrace_raw_output_iwlwifi_dev_tx(ldvarg86, ldvarg88, ldvarg87);
    ldv_state_variable_24 = 1;
  } else {
  }
  goto ldv_53251;
  default:
  ldv_stop();
  }
  ldv_53251: ;
  return;
}
}
void ldv_main_exported_10(void)
{
  enum trace_reg ldvarg90 ;
  void *ldvarg89 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg89 = tmp;
  memset((void *)(& ldvarg90), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_10 == 1) {
    ftrace_event_reg(event_class_iwlwifi_dev_tx_data_group0, ldvarg90, ldvarg89);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_53259;
  case 1: ;
  if (ldv_state_variable_10 == 1) {
    trace_event_raw_init(event_class_iwlwifi_dev_tx_data_group0);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_53259;
  case 2: ;
  if (ldv_state_variable_10 == 1) {
    ftrace_define_fields_iwlwifi_dev_tx_data(event_class_iwlwifi_dev_tx_data_group0);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_53259;
  default:
  ldv_stop();
  }
  ldv_53259: ;
  return;
}
}
void ldv_main_exported_31(void)
{
  struct trace_event *ldvarg92 ;
  void *tmp ;
  struct trace_iterator *ldvarg91 ;
  void *tmp___0 ;
  int ldvarg93 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(48UL);
  ldvarg92 = (struct trace_event *)tmp;
  tmp___0 = ldv_zalloc(8512UL);
  ldvarg91 = (struct trace_iterator *)tmp___0;
  tmp___1 = __VERIFIER_nondet_int();
  ldvarg93 = tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_31 == 1) {
    ftrace_raw_output_iwlwifi_dev_ucode_wrap_event(ldvarg91, ldvarg93, ldvarg92);
    ldv_state_variable_31 = 1;
  } else {
  }
  goto ldv_53270;
  default:
  ldv_stop();
  }
  ldv_53270: ;
  return;
}
}
void ldv_main_exported_35(void)
{
  int ldvarg96 ;
  int tmp ;
  struct trace_iterator *ldvarg94 ;
  void *tmp___0 ;
  struct trace_event *ldvarg95 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg96 = tmp;
  tmp___0 = ldv_zalloc(8512UL);
  ldvarg94 = (struct trace_iterator *)tmp___0;
  tmp___1 = ldv_zalloc(48UL);
  ldvarg95 = (struct trace_event *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_35 == 1) {
    ftrace_raw_output_iwlwifi_dev_ioread_prph32(ldvarg94, ldvarg96, ldvarg95);
    ldv_state_variable_35 = 1;
  } else {
  }
  goto ldv_53279;
  default:
  ldv_stop();
  }
  ldv_53279: ;
  return;
}
}
void ldv_main_exported_11(void)
{
  void *ldvarg97 ;
  void *tmp ;
  enum trace_reg ldvarg98 ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg97 = tmp;
  memset((void *)(& ldvarg98), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_11 == 1) {
    ftrace_event_reg(event_class_iwlwifi_dbg_group0, ldvarg98, ldvarg97);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_53287;
  case 1: ;
  if (ldv_state_variable_11 == 1) {
    trace_event_raw_init(event_class_iwlwifi_dbg_group0);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_53287;
  case 2: ;
  if (ldv_state_variable_11 == 1) {
    ftrace_define_fields_iwlwifi_dbg(event_class_iwlwifi_dbg_group0);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_53287;
  default:
  ldv_stop();
  }
  ldv_53287: ;
  return;
}
}
void ldv_main_exported_22(void)
{
  struct trace_event *ldvarg105 ;
  void *tmp ;
  int ldvarg106 ;
  int tmp___0 ;
  struct trace_iterator *ldvarg104 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(48UL);
  ldvarg105 = (struct trace_event *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg106 = tmp___0;
  tmp___1 = ldv_zalloc(8512UL);
  ldvarg104 = (struct trace_iterator *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_22 == 1) {
    ftrace_raw_output_iwlwifi_dev_ucode_event(ldvarg104, ldvarg106, ldvarg105);
    ldv_state_variable_22 = 1;
  } else {
  }
  goto ldv_53298;
  default:
  ldv_stop();
  }
  ldv_53298: ;
  return;
}
}
void ldv_main_exported_13(void)
{
  enum trace_reg ldvarg109 ;
  void *ldvarg108 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg108 = tmp;
  memset((void *)(& ldvarg109), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_13 == 1) {
    ftrace_event_reg(event_class_iwlwifi_dev_ucode_wrap_event_group0, ldvarg109, ldvarg108);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_53306;
  case 1: ;
  if (ldv_state_variable_13 == 1) {
    trace_event_raw_init(event_class_iwlwifi_dev_ucode_wrap_event_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_53306;
  case 2: ;
  if (ldv_state_variable_13 == 1) {
    ftrace_define_fields_iwlwifi_dev_ucode_wrap_event(event_class_iwlwifi_dev_ucode_wrap_event_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_53306;
  default:
  ldv_stop();
  }
  ldv_53306: ;
  return;
}
}
void ldv_main_exported_23(void)
{
  int ldvarg112 ;
  int tmp ;
  struct trace_iterator *ldvarg110 ;
  void *tmp___0 ;
  struct trace_event *ldvarg111 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg112 = tmp;
  tmp___0 = ldv_zalloc(8512UL);
  ldvarg110 = (struct trace_iterator *)tmp___0;
  tmp___1 = ldv_zalloc(48UL);
  ldvarg111 = (struct trace_event *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_23 == 1) {
    ftrace_raw_output_iwlwifi_dev_ucode_error(ldvarg110, ldvarg112, ldvarg111);
    ldv_state_variable_23 = 1;
  } else {
  }
  goto ldv_53317;
  default:
  ldv_stop();
  }
  ldv_53317: ;
  return;
}
}
void ldv_main_exported_29(void)
{
  int ldvarg115 ;
  int tmp ;
  struct trace_event *ldvarg114 ;
  void *tmp___0 ;
  struct trace_iterator *ldvarg113 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg115 = tmp;
  tmp___0 = ldv_zalloc(48UL);
  ldvarg114 = (struct trace_event *)tmp___0;
  tmp___1 = ldv_zalloc(8512UL);
  ldvarg113 = (struct trace_iterator *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_29 == 1) {
    ftrace_raw_output_iwlwifi_dbg(ldvarg113, ldvarg115, ldvarg114);
    ldv_state_variable_29 = 1;
  } else {
  }
  goto ldv_53326;
  default:
  ldv_stop();
  }
  ldv_53326: ;
  return;
}
}
void ldv_main_exported_6(void)
{
  enum trace_reg ldvarg117 ;
  void *ldvarg116 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg116 = tmp;
  memset((void *)(& ldvarg117), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_6 == 1) {
    ftrace_event_reg(event_class_iwlwifi_dev_tx_group0, ldvarg117, ldvarg116);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_53334;
  case 1: ;
  if (ldv_state_variable_6 == 1) {
    trace_event_raw_init(event_class_iwlwifi_dev_tx_group0);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_53334;
  case 2: ;
  if (ldv_state_variable_6 == 1) {
    ftrace_define_fields_iwlwifi_dev_tx(event_class_iwlwifi_dev_tx_group0);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_53334;
  default:
  ldv_stop();
  }
  ldv_53334: ;
  return;
}
}
void ldv_main_exported_39(void)
{
  struct trace_iterator *ldvarg118 ;
  void *tmp ;
  struct trace_event *ldvarg119 ;
  void *tmp___0 ;
  int ldvarg120 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(8512UL);
  ldvarg118 = (struct trace_iterator *)tmp;
  tmp___0 = ldv_zalloc(48UL);
  ldvarg119 = (struct trace_event *)tmp___0;
  tmp___1 = __VERIFIER_nondet_int();
  ldvarg120 = tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_39 == 1) {
    ftrace_raw_output_iwlwifi_dev_ioread32(ldvarg118, ldvarg120, ldvarg119);
    ldv_state_variable_39 = 1;
  } else {
  }
  goto ldv_53345;
  default:
  ldv_stop();
  }
  ldv_53345: ;
  return;
}
}
void ldv_main_exported_36(void)
{
  struct trace_event *ldvarg122 ;
  void *tmp ;
  struct trace_iterator *ldvarg121 ;
  void *tmp___0 ;
  int ldvarg123 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(48UL);
  ldvarg122 = (struct trace_event *)tmp;
  tmp___0 = ldv_zalloc(8512UL);
  ldvarg121 = (struct trace_iterator *)tmp___0;
  tmp___1 = __VERIFIER_nondet_int();
  ldvarg123 = tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_36 == 1) {
    ftrace_raw_output_iwlwifi_dev_iowrite_prph32(ldvarg121, ldvarg123, ldvarg122);
    ldv_state_variable_36 = 1;
  } else {
  }
  goto ldv_53354;
  default:
  ldv_stop();
  }
  ldv_53354: ;
  return;
}
}
void ldv_main_exported_9(void)
{
  enum trace_reg ldvarg125 ;
  void *ldvarg124 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg124 = tmp;
  memset((void *)(& ldvarg125), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_9 == 1) {
    ftrace_event_reg(event_class_iwlwifi_dev_rx_data_group0, ldvarg125, ldvarg124);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_53362;
  case 1: ;
  if (ldv_state_variable_9 == 1) {
    trace_event_raw_init(event_class_iwlwifi_dev_rx_data_group0);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_53362;
  case 2: ;
  if (ldv_state_variable_9 == 1) {
    ftrace_define_fields_iwlwifi_dev_rx_data(event_class_iwlwifi_dev_rx_data_group0);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_53362;
  default:
  ldv_stop();
  }
  ldv_53362: ;
  return;
}
}
void ldv_main_exported_12(void)
{
  enum trace_reg ldvarg132 ;
  void *ldvarg131 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg131 = tmp;
  memset((void *)(& ldvarg132), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_12 == 1) {
    ftrace_event_reg(event_class_iwlwifi_msg_event_group0, ldvarg132, ldvarg131);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53372;
  case 1: ;
  if (ldv_state_variable_12 == 1) {
    trace_event_raw_init(event_class_iwlwifi_msg_event_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53372;
  case 2: ;
  if (ldv_state_variable_12 == 1) {
    ftrace_define_fields_iwlwifi_msg_event(event_class_iwlwifi_msg_event_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53372;
  default:
  ldv_stop();
  }
  ldv_53372: ;
  return;
}
}
void ldv_main_exported_15(void)
{
  void *ldvarg133 ;
  void *tmp ;
  enum trace_reg ldvarg134 ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg133 = tmp;
  memset((void *)(& ldvarg134), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_15 == 1) {
    ftrace_event_reg(event_class_iwlwifi_dev_ict_read_group0, ldvarg134, ldvarg133);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_53382;
  case 1: ;
  if (ldv_state_variable_15 == 1) {
    trace_event_raw_init(event_class_iwlwifi_dev_ict_read_group0);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_53382;
  case 2: ;
  if (ldv_state_variable_15 == 1) {
    ftrace_define_fields_iwlwifi_dev_ict_read(event_class_iwlwifi_dev_ict_read_group0);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_53382;
  default:
  ldv_stop();
  }
  ldv_53382: ;
  return;
}
}
void ldv_main_exported_38(void)
{
  struct trace_iterator *ldvarg135 ;
  void *tmp ;
  int ldvarg137 ;
  int tmp___0 ;
  struct trace_event *ldvarg136 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(8512UL);
  ldvarg135 = (struct trace_iterator *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg137 = tmp___0;
  tmp___1 = ldv_zalloc(48UL);
  ldvarg136 = (struct trace_event *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_38 == 1) {
    ftrace_raw_output_iwlwifi_dev_iowrite8(ldvarg135, ldvarg137, ldvarg136);
    ldv_state_variable_38 = 1;
  } else {
  }
  goto ldv_53393;
  default:
  ldv_stop();
  }
  ldv_53393: ;
  return;
}
}
void ldv_main_exported_8(void)
{
  enum trace_reg ldvarg139 ;
  void *ldvarg138 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg138 = tmp;
  memset((void *)(& ldvarg139), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_8 == 1) {
    ftrace_event_reg(event_class_iwlwifi_dev_hcmd_group0, ldvarg139, ldvarg138);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_53401;
  case 1: ;
  if (ldv_state_variable_8 == 1) {
    trace_event_raw_init(event_class_iwlwifi_dev_hcmd_group0);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_53401;
  case 2: ;
  if (ldv_state_variable_8 == 1) {
    ftrace_define_fields_iwlwifi_dev_hcmd(event_class_iwlwifi_dev_hcmd_group0);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_53401;
  default:
  ldv_stop();
  }
  ldv_53401: ;
  return;
}
}
void ldv_main_exported_4(void)
{
  enum trace_reg ldvarg141 ;
  void *ldvarg140 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg140 = tmp;
  memset((void *)(& ldvarg141), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_4 == 1) {
    ftrace_event_reg(event_class_iwlwifi_dev_ucode_event_group0, ldvarg141, ldvarg140);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53411;
  case 1: ;
  if (ldv_state_variable_4 == 1) {
    trace_event_raw_init(event_class_iwlwifi_dev_ucode_event_group0);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53411;
  case 2: ;
  if (ldv_state_variable_4 == 1) {
    ftrace_define_fields_iwlwifi_dev_ucode_event(event_class_iwlwifi_dev_ucode_event_group0);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53411;
  default:
  ldv_stop();
  }
  ldv_53411: ;
  return;
}
}
void ldv_main_exported_34(void)
{
  struct trace_iterator *ldvarg142 ;
  void *tmp ;
  int ldvarg144 ;
  int tmp___0 ;
  struct trace_event *ldvarg143 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(8512UL);
  ldvarg142 = (struct trace_iterator *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg144 = tmp___0;
  tmp___1 = ldv_zalloc(48UL);
  ldvarg143 = (struct trace_event *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_34 == 1) {
    ftrace_raw_output_iwlwifi_dev_irq(ldvarg142, ldvarg144, ldvarg143);
    ldv_state_variable_34 = 1;
  } else {
  }
  goto ldv_53422;
  default:
  ldv_stop();
  }
  ldv_53422: ;
  return;
}
}
void ldv_main_exported_37(void)
{
  int ldvarg155 ;
  int tmp ;
  struct trace_iterator *ldvarg153 ;
  void *tmp___0 ;
  struct trace_event *ldvarg154 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg155 = tmp;
  tmp___0 = ldv_zalloc(8512UL);
  ldvarg153 = (struct trace_iterator *)tmp___0;
  tmp___1 = ldv_zalloc(48UL);
  ldvarg154 = (struct trace_event *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_37 == 1) {
    ftrace_raw_output_iwlwifi_dev_iowrite32(ldvarg153, ldvarg155, ldvarg154);
    ldv_state_variable_37 = 1;
  } else {
  }
  goto ldv_53431;
  default:
  ldv_stop();
  }
  ldv_53431: ;
  return;
}
}
void ldv_main_exported_19(void)
{
  void *ldvarg161 ;
  void *tmp ;
  enum trace_reg ldvarg162 ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg161 = tmp;
  memset((void *)(& ldvarg162), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_19 == 1) {
    ftrace_event_reg(event_class_iwlwifi_dev_iowrite32_group0, ldvarg162, ldvarg161);
    ldv_state_variable_19 = 1;
  } else {
  }
  goto ldv_53439;
  case 1: ;
  if (ldv_state_variable_19 == 1) {
    trace_event_raw_init(event_class_iwlwifi_dev_iowrite32_group0);
    ldv_state_variable_19 = 1;
  } else {
  }
  goto ldv_53439;
  case 2: ;
  if (ldv_state_variable_19 == 1) {
    ftrace_define_fields_iwlwifi_dev_iowrite32(event_class_iwlwifi_dev_iowrite32_group0);
    ldv_state_variable_19 = 1;
  } else {
  }
  goto ldv_53439;
  default:
  ldv_stop();
  }
  ldv_53439: ;
  return;
}
}
void ldv_main_exported_5(void)
{
  void *ldvarg163 ;
  void *tmp ;
  enum trace_reg ldvarg164 ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg163 = tmp;
  memset((void *)(& ldvarg164), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_5 == 1) {
    ftrace_event_reg(event_class_iwlwifi_dev_ucode_error_group0, ldvarg164, ldvarg163);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_53449;
  case 1: ;
  if (ldv_state_variable_5 == 1) {
    trace_event_raw_init(event_class_iwlwifi_dev_ucode_error_group0);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_53449;
  case 2: ;
  if (ldv_state_variable_5 == 1) {
    ftrace_define_fields_iwlwifi_dev_ucode_error(event_class_iwlwifi_dev_ucode_error_group0);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_53449;
  default:
  ldv_stop();
  }
  ldv_53449: ;
  return;
}
}
int ldv_pskb_expand_head_854(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_856(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_858(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_859(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_860(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_861(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_862(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_863(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_request_threaded_irq_864(unsigned int ldv_func_arg1 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                 irqreturn_t (*thread_fn)(int , void * ) , unsigned long ldv_func_arg4 ,
                                 char const *ldv_func_arg5 , void *ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_threaded_irq(ldv_func_arg1, handler, thread_fn, ldv_func_arg4, ldv_func_arg5,
                             ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg6);
  } else {
  }
  return (ldv_func_res);
}
}
struct sk_buff *ldv_skb_clone_865(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
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
void __copy_from_user_overflow() {
  return;
}
void __free_pages(struct page *arg0, unsigned int arg1) {
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
void __local_bh_disable_ip(unsigned long arg0, unsigned int arg1) {
  return;
}
void __local_bh_enable_ip(unsigned long arg0, unsigned int arg1) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return ldv_malloc(sizeof(struct sk_buff));
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
int __request_module(bool arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
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
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
acpi_status acpi_evaluate_object(acpi_handle arg0, acpi_string arg1, struct acpi_object_list *arg2, struct acpi_buffer *arg3) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
acpi_status acpi_get_handle(acpi_handle arg0, acpi_string arg1, acpi_handle **arg2) {
  return __VERIFIER_nondet_uint();
}
struct page *alloc_pages_current(gfp_t arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(struct page));
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void complete(struct completion *arg0) {
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
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
struct dentry *debugfs_create_dir(const char *arg0, struct dentry *arg1) {
  return ldv_malloc(sizeof(struct dentry));
}
struct dentry *debugfs_create_file(const char *arg0, umode_t arg1, struct dentry *arg2, void *arg3, const struct file_operations *arg4) {
  return ldv_malloc(sizeof(struct dentry));
}
void debugfs_remove_recursive(struct dentry *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_crit(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_printk(const char *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void device_release_driver(struct device *arg0) {
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
void dump_page(struct page *arg0, const char *arg1) {
  return;
}
void dump_stack() {
  return;
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_pages(unsigned long arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int ftrace_event_reg(struct ftrace_event_call *arg0, enum trace_reg arg1, void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ftrace_raw_output_prep(struct trace_iterator *arg0, struct trace_event *arg1) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
loff_t generic_file_llseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int ieee80211_channel_to_frequency(int arg0, enum ieee80211_band arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ieee80211_hdrlen(__le16 arg0) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int init_dummy_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void iounmap(volatile void *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int jiffies_to_msecs(const unsigned long arg0) {
  return __VERIFIER_nondet_uint();
}
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return ldv_malloc(0UL);
}
struct kmem_cache *kmem_cache_create(const char *arg0, size_t arg1, size_t arg2, unsigned long arg3, void (*arg4)(void *)) {
  return ldv_malloc(sizeof(struct kmem_cache));
}
void kmem_cache_destroy(struct kmem_cache *arg0) {
  return;
}
void *kmemdup(const void *arg0, size_t arg1, gfp_t arg2) {
  return ldv_malloc(0UL);
}
void ldv__builtin_va_end(__builtin_va_list arg0) {
  return;
}
void ldv__builtin_va_start(__builtin_va_list arg0) {
  return;
}
void ldv_check_final_state() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_complete_47() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_late_47() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_noirq_47() {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_late_47() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_noirq_47() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_prepare_47() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_41() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_42() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_43() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_44() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_45() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_early_47() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_noirq_47() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_early_47() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_noirq_47() {
  return __VERIFIER_nondet_int();
}
struct page___0 *ldv_some_page() {
  return ldv_malloc(sizeof(struct page___0));
}
int __VERIFIER_nondet_int(void);
int ldv_stop_hw_40() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_late_47() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_noirq_47() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_early_47() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_noirq_47() {
  return __VERIFIER_nondet_int();
}
void list_del(struct list_head *arg0) {
  return;
}
void lock_acquire(struct lockdep_map *arg0, unsigned int arg1, int arg2, int arg3, int arg4, struct lockdep_map *arg5, unsigned long arg6) {
  return;
}
int __VERIFIER_nondet_int(void);
int lock_is_held(struct lockdep_map *arg0) {
  return __VERIFIER_nondet_int();
}
void lock_release(struct lockdep_map *arg0, int arg1, unsigned long arg2) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void lockdep_rcu_suspicious(const char *arg0, const int arg1, const char *arg2) {
  return;
}
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void msleep(unsigned int arg0) {
  return;
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
void napi_gro_flush(struct napi_struct *arg0, bool arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int net_ratelimit() {
  return __VERIFIER_nondet_int();
}
void netif_napi_del(struct napi_struct *arg0) {
  return;
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
int pci_bus_write_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_link_state(struct pci_dev *arg0, int arg1) {
  return;
}
void pci_disable_msi(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msi_range(struct pci_dev *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void *pci_ioremap_bar(struct pci_dev *arg0, int arg1) {
  return ldv_malloc(0UL);
}
bool __VERIFIER_nondet_bool(void);
bool pci_pme_capable(struct pci_dev *arg0, pci_power_t arg1) {
  return __VERIFIER_nondet_bool();
}
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pcie_capability_read_word(struct pci_dev *arg0, int arg1, u16 *arg2) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
void print_hex_dump(const char *arg0, const char *arg1, int arg2, int arg3, int arg4, const void *arg5, size_t arg6, bool arg7) {
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
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_is_watching() {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_lockdep_current_cpu_online() {
  return __VERIFIER_nondet_bool();
}
void release_firmware(const struct firmware *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_firmware_nowait(struct module *arg0, bool arg1, const char *arg2, struct device *arg3, gfp_t arg4, void *arg5, void (*arg6)(const struct firmware *, void *)) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int scnprintf(char *arg0, size_t arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int simple_open(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t simple_read_from_buffer(void *arg0, size_t arg1, loff_t *arg2, const void *arg3, size_t arg4) {
  return __VERIFIER_nondet_long();
}
struct sk_buff *skb_clone(struct sk_buff *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct sk_buff));
}
struct sk_buff *skb_copy(const struct sk_buff *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct sk_buff));
}
void synchronize_irq(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int trace_define_field(struct ftrace_event_call *arg0, const char *arg1, const char *arg2, int arg3, int arg4, int arg5, int arg6) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int trace_event_raw_init(struct ftrace_event_call *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int trace_seq_printf(struct trace_seq *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void usleep_range(unsigned long arg0, unsigned long arg1) {
  return;
}
void vfree(const void *arg0) {
  return;
}
void *vmalloc(unsigned long arg0) {
  return ldv_malloc(0UL);
}
void wait_for_completion(struct completion *arg0) {
  return;
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
