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
typedef unsigned char u_char;
typedef unsigned int u_int;
typedef unsigned long u_long;
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
struct llist_head {
   struct llist_node *first ;
};
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
struct __anonstruct_ldv_13776_129 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_13778_128 {
   struct __anonstruct_ldv_13776_129 ldv_13776 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_13778_128 ldv_13778 ;
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
struct __anonstruct_ldv_14022_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_14026_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_14027_135 {
   struct __anonstruct_ldv_14022_136 ldv_14022 ;
   struct __anonstruct_ldv_14026_137 ldv_14026 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_14027_135 ldv_14027 ;
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
union __anonunion_ldv_14136_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_14142_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14152_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14154_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14152_144 ldv_14152 ;
   int units ;
};
struct __anonstruct_ldv_14156_142 {
   union __anonunion_ldv_14154_143 ldv_14154 ;
   atomic_t _count ;
};
union __anonunion_ldv_14158_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_14156_142 ldv_14156 ;
   unsigned int active ;
};
struct __anonstruct_ldv_14159_139 {
   union __anonunion_ldv_14142_140 ldv_14142 ;
   union __anonunion_ldv_14158_141 ldv_14158 ;
};
struct __anonstruct_ldv_14166_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14171_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_14166_146 ldv_14166 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_14177_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_14136_138 ldv_14136 ;
   struct __anonstruct_ldv_14159_139 ldv_14159 ;
   union __anonunion_ldv_14171_145 ldv_14171 ;
   union __anonunion_ldv_14177_147 ldv_14177 ;
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
union __anonunion_ldv_14540_153 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_14540_153 ldv_14540 ;
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
union __anonunion_ldv_14684_154 {
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
   union __anonunion_ldv_14684_154 ldv_14684 ;
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
union __anonunion_ldv_15359_155 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_15359_155 ldv_15359 ;
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
struct __anonstruct_ldv_15979_157 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_15985_158 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_15986_156 {
   struct __anonstruct_ldv_15979_157 ldv_15979 ;
   struct __anonstruct_ldv_15985_158 ldv_15985 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_15986_156 ldv_15986 ;
};
struct usb_interface;
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
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
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
union __anonunion_ldv_19268_173 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_19276_174 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_19289_176 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_19290_175 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_19289_176 ldv_19289 ;
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
union __anonunion_ldv_19305_178 {
   union __anonunion_payload_179 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_19268_173 ldv_19268 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_19276_174 ldv_19276 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_19290_175 ldv_19290 ;
   union __anonunion_type_data_177 type_data ;
   union __anonunion_ldv_19305_178 ldv_19305 ;
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
   __u8 bInterfaceNumber ;
   kernel_ulong_t driver_info ;
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
struct usb_ctrlrequest {
   __u8 bRequestType ;
   __u8 bRequest ;
   __le16 wValue ;
   __le16 wIndex ;
   __le16 wLength ;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_22890_185 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_22891_184 {
   struct __anonstruct_ldv_22890_185 ldv_22890 ;
};
struct lockref {
   union __anonunion_ldv_22891_184 ldv_22891 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_22914_187 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_22916_186 {
   struct __anonstruct_ldv_22914_187 ldv_22914 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_22916_186 ldv_22916 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_188 {
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
   union __anonunion_d_u_188 d_u ;
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
struct __anonstruct_ldv_23277_190 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_23279_189 {
   struct __anonstruct_ldv_23277_190 ldv_23277 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_23279_189 ldv_23279 ;
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
struct __anonstruct_kprojid_t_191 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_191 kprojid_t;
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
union __anonunion_ldv_23829_192 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_23829_192 ldv_23829 ;
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
struct writeback_control;
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
union __anonunion_ldv_24244_195 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_24264_196 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_24281_197 {
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
   union __anonunion_ldv_24244_195 ldv_24244 ;
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
   union __anonunion_ldv_24264_196 ldv_24264 ;
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
   union __anonunion_ldv_24281_197 ldv_24281 ;
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
union __anonunion_f_u_198 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_198 f_u ;
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
struct __anonstruct_afs_200 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_199 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_200 afs ;
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
   union __anonunion_fl_u_199 fl_u ;
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
struct usb_device;
struct usb_driver;
struct wusb_dev;
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
   int streams ;
};
struct usb_host_interface {
   struct usb_interface_descriptor desc ;
   int extralen ;
   unsigned char *extra ;
   struct usb_host_endpoint *endpoint ;
   char *string ;
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
   unsigned char no_stop_on_short : 1 ;
   unsigned char no_sg_constraint : 1 ;
   unsigned int sg_tablesize ;
   int devnum_next ;
   struct usb_devmap devmap ;
   struct usb_device *root_hub ;
   struct usb_bus *hs_companion ;
   struct list_head bus_list ;
   struct mutex usb_address0_mutex ;
   int bandwidth_allocated ;
   int bandwidth_int_reqs ;
   int bandwidth_isoc_reqs ;
   unsigned int resuming_ports ;
   struct mon_bus *mon_bus ;
   int monitored ;
};
struct usb_tt;
enum usb_device_removable {
    USB_DEVICE_REMOVABLE_UNKNOWN = 0,
    USB_DEVICE_REMOVABLE = 1,
    USB_DEVICE_FIXED = 2
} ;
struct usb2_lpm_parameters {
   unsigned int besl ;
   int timeout ;
};
struct usb3_lpm_parameters {
   unsigned int mel ;
   unsigned int pel ;
   unsigned int sel ;
   int timeout ;
};
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
   unsigned char usb2_hw_lpm_besl_capable : 1 ;
   unsigned char usb2_hw_lpm_enabled : 1 ;
   unsigned char usb2_hw_lpm_allowed : 1 ;
   unsigned char usb3_lpm_enabled : 1 ;
   int string_langid ;
   char *product ;
   char *manufacturer ;
   char *serial ;
   struct list_head filelist ;
   int maxchild ;
   u32 quirks ;
   atomic_t urbnum ;
   unsigned long active_duration ;
   unsigned long connect_time ;
   unsigned char do_remote_wakeup : 1 ;
   unsigned char reset_resume : 1 ;
   unsigned char port_is_suspended : 1 ;
   struct wusb_dev *wusb_dev ;
   int slot_id ;
   enum usb_device_removable removable ;
   struct usb2_lpm_parameters l1_params ;
   struct usb3_lpm_parameters u1_params ;
   struct usb3_lpm_parameters u2_params ;
   unsigned int lpm_disable_count ;
};
struct usb_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
struct usbdrv_wrap {
   struct device_driver driver ;
   int for_devices ;
};
struct usb_driver {
   char const *name ;
   int (*probe)(struct usb_interface * , struct usb_device_id const * ) ;
   void (*disconnect)(struct usb_interface * ) ;
   int (*unlocked_ioctl)(struct usb_interface * , unsigned int , void * ) ;
   int (*suspend)(struct usb_interface * , pm_message_t ) ;
   int (*resume)(struct usb_interface * ) ;
   int (*reset_resume)(struct usb_interface * ) ;
   int (*pre_reset)(struct usb_interface * ) ;
   int (*post_reset)(struct usb_interface * ) ;
   struct usb_device_id const *id_table ;
   struct usb_dynids dynids ;
   struct usbdrv_wrap drvwrap ;
   unsigned char no_dynamic_id : 1 ;
   unsigned char supports_autosuspend : 1 ;
   unsigned char disable_hub_initiated_lpm : 1 ;
   unsigned char soft_unbind : 1 ;
};
struct usb_iso_packet_descriptor {
   unsigned int offset ;
   unsigned int length ;
   unsigned int actual_length ;
   int status ;
};
struct urb;
struct usb_anchor {
   struct list_head urb_list ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
   atomic_t suspend_wakeups ;
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
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
union __anonunion_ldv_30163_201 {
   struct iovec const *iov ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion_ldv_30163_201 ldv_30163 ;
   unsigned long nr_segs ;
};
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct sk_buff;
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
struct __anonstruct_ldv_32383_206 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion_ldv_32384_205 {
   u64 v64 ;
   struct __anonstruct_ldv_32383_206 ldv_32383 ;
};
struct skb_mstamp {
   union __anonunion_ldv_32384_205 ldv_32384 ;
};
union __anonunion_ldv_32403_207 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct sec_path;
struct __anonstruct_ldv_32419_209 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_32420_208 {
   __wsum csum ;
   struct __anonstruct_ldv_32419_209 ldv_32419 ;
};
union __anonunion_ldv_32459_210 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion_ldv_32465_211 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion_ldv_32403_207 ldv_32403 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion_ldv_32420_208 ldv_32420 ;
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
   union __anonunion_ldv_32459_210 ldv_32459 ;
   __u32 secmark ;
   union __anonunion_ldv_32465_211 ldv_32465 ;
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
struct __anonstruct_isdn_cmd_stat_212 {
   ulong ll_id ;
   int hl_id ;
   int proc ;
   int timeout ;
   int datalen ;
   u_char *data ;
};
typedef struct __anonstruct_isdn_cmd_stat_212 isdn_cmd_stat;
struct setup_parm {
   unsigned char phone[32U] ;
   unsigned char eazmsn[32U] ;
   unsigned char si1 ;
   unsigned char si2 ;
   unsigned char plan ;
   unsigned char screen ;
};
typedef struct setup_parm setup_parm;
struct T30_s {
   __u8 resolution ;
   __u8 rate ;
   __u8 width ;
   __u8 length ;
   __u8 compression ;
   __u8 ecm ;
   __u8 binary ;
   __u8 scantime ;
   __u8 id[21U] ;
   __u8 phase ;
   __u8 direction ;
   __u8 code ;
   __u8 badlin ;
   __u8 badmul ;
   __u8 bor ;
   __u8 fet ;
   __u8 pollid[21U] ;
   __u8 cq ;
   __u8 cr ;
   __u8 ctcrty ;
   __u8 minsp ;
   __u8 phcto ;
   __u8 rel ;
   __u8 nbc ;
   __u8 r_resolution ;
   __u8 r_rate ;
   __u8 r_width ;
   __u8 r_length ;
   __u8 r_compression ;
   __u8 r_ecm ;
   __u8 r_binary ;
   __u8 r_scantime ;
   __u8 r_id[21U] ;
   __u8 r_code ;
};
typedef struct T30_s T30_s;
struct __anonstruct_aux_s_213 {
   __u8 cmd ;
   __u8 subcmd ;
   __u8 para[50U] ;
};
typedef struct __anonstruct_aux_s_213 aux_s;
union __anonunion_adr_215 {
   __u32 Controller ;
   __u32 PLCI ;
   __u32 NCCI ;
};
struct __anonstruct_capi_msg_214 {
   __u16 Length ;
   __u16 ApplId ;
   __u8 Command ;
   __u8 Subcommand ;
   __u16 Messagenumber ;
   union __anonunion_adr_215 adr ;
   __u8 para[50U] ;
};
typedef struct __anonstruct_capi_msg_214 capi_msg;
union __anonunion_parm_217 {
   ulong errcode ;
   int length ;
   u_char num[50U] ;
   setup_parm setup ;
   capi_msg cmsg ;
   char display[85U] ;
   isdn_cmd_stat isdn_io ;
   aux_s aux ;
   T30_s *fax ;
   ulong userdata ;
};
struct __anonstruct_isdn_ctrl_216 {
   int driver ;
   int command ;
   ulong arg ;
   union __anonunion_parm_217 parm ;
};
typedef struct __anonstruct_isdn_ctrl_216 isdn_ctrl;
struct __anonstruct_isdn_if_218 {
   struct module *owner ;
   int channels ;
   int maxbufsize ;
   unsigned long features ;
   unsigned short hl_hdrlen ;
   void (*rcvcallb_skb)(int , int , struct sk_buff * ) ;
   int (*statcallb)(isdn_ctrl * ) ;
   int (*command)(isdn_ctrl * ) ;
   int (*writebuf_skb)(int , int , int , struct sk_buff * ) ;
   int (*writecmd)(u_char const * , int , int , int ) ;
   int (*readstat)(u_char * , int , int , int ) ;
   char id[20U] ;
};
typedef struct __anonstruct_isdn_if_218 isdn_if;
typedef unsigned char cc_t;
typedef unsigned int speed_t;
typedef unsigned int tcflag_t;
struct ktermios {
   tcflag_t c_iflag ;
   tcflag_t c_oflag ;
   tcflag_t c_cflag ;
   tcflag_t c_lflag ;
   cc_t c_line ;
   cc_t c_cc[19U] ;
   speed_t c_ispeed ;
   speed_t c_ospeed ;
};
struct winsize {
   unsigned short ws_row ;
   unsigned short ws_col ;
   unsigned short ws_xpixel ;
   unsigned short ws_ypixel ;
};
struct termiox {
   __u16 x_hflag ;
   __u16 x_cflag ;
   __u16 x_rflag[5U] ;
   __u16 x_sflag ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct tty_driver;
struct serial_icounter_struct;
struct tty_operations {
   struct tty_struct *(*lookup)(struct tty_driver * , struct inode * , int ) ;
   int (*install)(struct tty_driver * , struct tty_struct * ) ;
   void (*remove)(struct tty_driver * , struct tty_struct * ) ;
   int (*open)(struct tty_struct * , struct file * ) ;
   void (*close)(struct tty_struct * , struct file * ) ;
   void (*shutdown)(struct tty_struct * ) ;
   void (*cleanup)(struct tty_struct * ) ;
   int (*write)(struct tty_struct * , unsigned char const * , int ) ;
   int (*put_char)(struct tty_struct * , unsigned char ) ;
   void (*flush_chars)(struct tty_struct * ) ;
   int (*write_room)(struct tty_struct * ) ;
   int (*chars_in_buffer)(struct tty_struct * ) ;
   int (*ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   void (*throttle)(struct tty_struct * ) ;
   void (*unthrottle)(struct tty_struct * ) ;
   void (*stop)(struct tty_struct * ) ;
   void (*start)(struct tty_struct * ) ;
   void (*hangup)(struct tty_struct * ) ;
   int (*break_ctl)(struct tty_struct * , int ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   void (*set_ldisc)(struct tty_struct * ) ;
   void (*wait_until_sent)(struct tty_struct * , int ) ;
   void (*send_xchar)(struct tty_struct * , char ) ;
   int (*tiocmget)(struct tty_struct * ) ;
   int (*tiocmset)(struct tty_struct * , unsigned int , unsigned int ) ;
   int (*resize)(struct tty_struct * , struct winsize * ) ;
   int (*set_termiox)(struct tty_struct * , struct termiox * ) ;
   int (*get_icount)(struct tty_struct * , struct serial_icounter_struct * ) ;
   int (*poll_init)(struct tty_driver * , int , char * ) ;
   int (*poll_get_char)(struct tty_driver * , int ) ;
   void (*poll_put_char)(struct tty_driver * , int , char ) ;
   struct file_operations const *proc_fops ;
};
struct tty_port;
struct tty_driver {
   int magic ;
   struct kref kref ;
   struct cdev *cdevs ;
   struct module *owner ;
   char const *driver_name ;
   char const *name ;
   int name_base ;
   int major ;
   int minor_start ;
   unsigned int num ;
   short type ;
   short subtype ;
   struct ktermios init_termios ;
   unsigned long flags ;
   struct proc_dir_entry *proc_entry ;
   struct tty_driver *other ;
   struct tty_struct **ttys ;
   struct tty_port **ports ;
   struct ktermios **termios ;
   void *driver_state ;
   struct tty_operations const *ops ;
   struct list_head tty_drivers ;
};
struct ld_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   unsigned int wait_readers ;
   struct list_head read_wait ;
   struct list_head write_wait ;
   struct lockdep_map dep_map ;
};
struct tty_ldisc_ops {
   int magic ;
   char *name ;
   int num ;
   int flags ;
   int (*open)(struct tty_struct * ) ;
   void (*close)(struct tty_struct * ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   ssize_t (*chars_in_buffer)(struct tty_struct * ) ;
   ssize_t (*read)(struct tty_struct * , struct file * , unsigned char * , size_t ) ;
   ssize_t (*write)(struct tty_struct * , struct file * , unsigned char const * ,
                    size_t ) ;
   int (*ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   unsigned int (*poll)(struct tty_struct * , struct file * , struct poll_table_struct * ) ;
   int (*hangup)(struct tty_struct * ) ;
   void (*receive_buf)(struct tty_struct * , unsigned char const * , char * , int ) ;
   void (*write_wakeup)(struct tty_struct * ) ;
   void (*dcd_change)(struct tty_struct * , unsigned int ) ;
   void (*fasync)(struct tty_struct * , int ) ;
   int (*receive_buf2)(struct tty_struct * , unsigned char const * , char * , int ) ;
   struct module *owner ;
   int refcount ;
};
struct tty_ldisc {
   struct tty_ldisc_ops *ops ;
   struct tty_struct *tty ;
};
union __anonunion_ldv_34247_219 {
   struct tty_buffer *next ;
   struct llist_node free ;
};
struct tty_buffer {
   union __anonunion_ldv_34247_219 ldv_34247 ;
   int used ;
   int size ;
   int commit ;
   int read ;
   int flags ;
   unsigned long data[0U] ;
};
struct tty_bufhead {
   struct tty_buffer *head ;
   struct work_struct work ;
   struct mutex lock ;
   atomic_t priority ;
   struct tty_buffer sentinel ;
   struct llist_head free ;
   atomic_t mem_used ;
   int mem_limit ;
   struct tty_buffer *tail ;
};
struct tty_port_operations {
   int (*carrier_raised)(struct tty_port * ) ;
   void (*dtr_rts)(struct tty_port * , int ) ;
   void (*shutdown)(struct tty_port * ) ;
   int (*activate)(struct tty_port * , struct tty_struct * ) ;
   void (*destruct)(struct tty_port * ) ;
};
struct tty_port {
   struct tty_bufhead buf ;
   struct tty_struct *tty ;
   struct tty_struct *itty ;
   struct tty_port_operations const *ops ;
   spinlock_t lock ;
   int blocked_open ;
   int count ;
   wait_queue_head_t open_wait ;
   wait_queue_head_t close_wait ;
   wait_queue_head_t delta_msr_wait ;
   unsigned long flags ;
   unsigned char console : 1 ;
   unsigned char low_latency : 1 ;
   struct mutex mutex ;
   struct mutex buf_mutex ;
   unsigned char *xmit_buf ;
   unsigned int close_delay ;
   unsigned int closing_wait ;
   int drain_delay ;
   struct kref kref ;
};
struct tty_struct {
   int magic ;
   struct kref kref ;
   struct device *dev ;
   struct tty_driver *driver ;
   struct tty_operations const *ops ;
   int index ;
   struct ld_semaphore ldisc_sem ;
   struct tty_ldisc *ldisc ;
   struct mutex atomic_write_lock ;
   struct mutex legacy_mutex ;
   struct mutex throttle_mutex ;
   struct rw_semaphore termios_rwsem ;
   struct mutex winsize_mutex ;
   spinlock_t ctrl_lock ;
   struct ktermios termios ;
   struct ktermios termios_locked ;
   struct termiox *termiox ;
   char name[64U] ;
   struct pid *pgrp ;
   struct pid *session ;
   unsigned long flags ;
   int count ;
   struct winsize winsize ;
   unsigned char stopped : 1 ;
   unsigned char hw_stopped : 1 ;
   unsigned char flow_stopped : 1 ;
   unsigned char packet : 1 ;
   unsigned char ctrl_status ;
   unsigned int receive_room ;
   int flow_change ;
   struct tty_struct *link ;
   struct fasync_struct *fasync ;
   int alt_speed ;
   wait_queue_head_t write_wait ;
   wait_queue_head_t read_wait ;
   struct work_struct hangup_work ;
   void *disc_data ;
   void *driver_data ;
   struct list_head tty_files ;
   unsigned char closing : 1 ;
   unsigned char *write_buf ;
   int write_cnt ;
   struct work_struct SAK_work ;
   struct tty_port *port ;
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
union __anonunion_data_220 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_220 data ;
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
struct __anonstruct_sync_serial_settings_221 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_221 sync_serial_settings;
struct __anonstruct_te1_settings_222 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_222 te1_settings;
struct __anonstruct_raw_hdlc_proto_223 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_223 raw_hdlc_proto;
struct __anonstruct_fr_proto_224 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_224 fr_proto;
struct __anonstruct_fr_proto_pvc_225 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_225 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_226 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_226 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_227 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_227 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_228 {
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
   union __anonunion_ifs_ifsu_228 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_229 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_230 {
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
   union __anonunion_ifr_ifrn_229 ifr_ifrn ;
   union __anonunion_ifr_ifru_230 ifr_ifru ;
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
struct __anonstruct_adj_list_257 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_258 {
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
union __anonunion_ldv_42659_259 {
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
   struct __anonstruct_adj_list_257 adj_list ;
   struct __anonstruct_all_adj_list_258 all_adj_list ;
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
   union __anonunion_ldv_42659_259 ldv_42659 ;
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
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
struct __anonstruct_dss1_proc_priv_260 {
   unsigned char invoke_id ;
   ulong ll_id ;
   u8 remote_operation ;
   int proc ;
   ulong remote_result ;
   char uus1_data[35U] ;
};
typedef struct __anonstruct_dss1_proc_priv_260 dss1_proc_priv;
struct __anonstruct_dss1_stk_priv_261 {
   unsigned char last_invoke_id ;
   unsigned char invoke_used[32U] ;
};
typedef struct __anonstruct_dss1_stk_priv_261 dss1_stk_priv;
struct __anonstruct_ni1_proc_priv_262 {
   unsigned char invoke_id ;
   ulong ll_id ;
   u8 remote_operation ;
   int proc ;
   ulong remote_result ;
   char uus1_data[35U] ;
};
typedef struct __anonstruct_ni1_proc_priv_262 ni1_proc_priv;
struct __anonstruct_ni1_stk_priv_263 {
   unsigned char last_invoke_id ;
   unsigned char invoke_used[32U] ;
};
typedef struct __anonstruct_ni1_stk_priv_263 ni1_stk_priv;
struct FsmInst;
typedef void (*FSMFNPTR)(struct FsmInst * , int , void * );
struct Fsm {
   FSMFNPTR (**jumpmatrix)(struct FsmInst * , int , void * ) ;
   int state_count ;
   int event_count ;
   char **strEvent ;
   char **strState ;
};
struct FsmInst {
   struct Fsm *fsm ;
   int state ;
   int debug ;
   void *userdata ;
   int userint ;
   void (*printdebug)(struct FsmInst * , char * , ...) ;
};
struct FsmTimer {
   struct FsmInst *fi ;
   struct timer_list tl ;
   int event ;
   void *arg ;
};
struct l3_process;
struct L3Timer {
   struct l3_process *pc ;
   struct timer_list tl ;
   int event ;
};
struct BCState;
struct PStack;
struct Layer1 {
   void *hardware ;
   struct BCState *bcs ;
   struct PStack **stlistp ;
   unsigned long Flags ;
   struct FsmInst l1m ;
   struct FsmTimer timer ;
   void (*l1l2)(struct PStack * , int , void * ) ;
   void (*l1hw)(struct PStack * , int , void * ) ;
   void (*l1tei)(struct PStack * , int , void * ) ;
   int mode ;
   int bc ;
   int delay ;
};
struct Layer2 {
   int tei ;
   int sap ;
   int maxlen ;
   u_long flag ;
   spinlock_t lock ;
   u_int vs ;
   u_int va ;
   u_int vr ;
   int rc ;
   unsigned int window ;
   unsigned int sow ;
   struct sk_buff *windowar[8U] ;
   struct sk_buff_head i_queue ;
   struct sk_buff_head ui_queue ;
   void (*l2l1)(struct PStack * , int , void * ) ;
   void (*l2l3)(struct PStack * , int , void * ) ;
   void (*l2tei)(struct PStack * , int , void * ) ;
   struct FsmInst l2m ;
   struct FsmTimer t200 ;
   struct FsmTimer t203 ;
   int T200 ;
   int N200 ;
   int T203 ;
   int debug ;
   char debug_id[16U] ;
};
struct Layer3 {
   void (*l3l4)(struct PStack * , int , void * ) ;
   void (*l3ml3)(struct PStack * , int , void * ) ;
   void (*l3l2)(struct PStack * , int , void * ) ;
   struct FsmInst l3m ;
   struct FsmTimer l3m_timer ;
   struct sk_buff_head squeue ;
   struct l3_process *proc ;
   struct l3_process *global ;
   int N303 ;
   int debug ;
   char debug_id[8U] ;
};
struct LLInterface {
   void (*l4l3)(struct PStack * , int , void * ) ;
   int (*l4l3_proto)(struct PStack * , isdn_ctrl * ) ;
   void *userdata ;
   u_long flag ;
};
struct Management {
   int ri ;
   struct FsmInst tei_m ;
   struct FsmTimer t202 ;
   int T202 ;
   int N202 ;
   int debug ;
   void (*layer)(struct PStack * , int , void * ) ;
};
struct Param {
   u_char cause ;
   u_char loc ;
   u_char diag[6U] ;
   int bchannel ;
   int chargeinfo ;
   int spv ;
   setup_parm setup ;
   u_char moderate ;
};
union __anonunion_prot_264 {
   u_char uuuu ;
   dss1_stk_priv dss1 ;
   ni1_stk_priv ni1 ;
};
struct PStack {
   struct PStack *next ;
   struct Layer1 l1 ;
   struct Layer2 l2 ;
   struct Layer3 l3 ;
   struct LLInterface lli ;
   struct Management ma ;
   int protocol ;
   union __anonunion_prot_264 prot ;
};
struct Channel;
union __anonunion_prot_265 {
   u_char uuuu ;
   dss1_proc_priv dss1 ;
   ni1_proc_priv ni1 ;
};
struct l3_process {
   int callref ;
   int state ;
   struct L3Timer timer ;
   int N303 ;
   int debug ;
   struct Param para ;
   struct Channel *chan ;
   struct PStack *st ;
   struct l3_process *next ;
   ulong redir_result ;
   union __anonunion_prot_265 prot ;
};
struct hscx_hw {
   int hscx ;
   int rcvidx ;
   int count ;
   u_char *rcvbuf ;
   u_char tsaxr0 ;
   u_char tsaxr1 ;
};
struct w6692B_hw {
   int bchan ;
   int rcvidx ;
   int count ;
   u_char *rcvbuf ;
};
struct isar_reg {
   unsigned long Flags ;
   u_char volatile bstat ;
   u_char volatile iis ;
   u_char volatile cmsb ;
   u_char volatile clsb ;
   u_char volatile par[8U] ;
};
struct isar_hw {
   int dpath ;
   int rcvidx ;
   int txcnt ;
   int mml ;
   u_char state ;
   u_char cmd ;
   u_char mod ;
   u_char newcmd ;
   u_char newmod ;
   char try_mod ;
   struct timer_list ftimer ;
   u_char *rcvbuf ;
   u_char conmsg[16U] ;
   struct isar_reg *reg ;
};
struct hdlc_stat_reg {
   u_char cmd ;
   u_char xml ;
   u_char mode ;
   u_char fill ;
};
union __anonunion_ctrl_266 {
   u_int ctrl ;
   struct hdlc_stat_reg sr ;
};
struct hdlc_hw {
   union __anonunion_ctrl_266 ctrl ;
   u_int stat ;
   int rcvidx ;
   int count ;
   u_char *rcvbuf ;
};
struct hfcB_hw {
   unsigned int *send ;
   int f1 ;
   int f2 ;
};
struct tiger_hw {
   u_int *send ;
   u_int *s_irq ;
   u_int *s_end ;
   u_int *sendp ;
   u_int *rec ;
   int free ;
   u_char *rcvbuf ;
   u_char *sendbuf ;
   u_char *sp ;
   int sendcnt ;
   u_int s_tot ;
   u_int r_bitcnt ;
   u_int r_tot ;
   u_int r_err ;
   u_int r_fcs ;
   u_char r_state ;
   u_char r_one ;
   u_char r_val ;
   u_char s_state ;
};
struct hdlc_state;
struct amd7930_hw {
   u_char *tx_buff ;
   u_char *rv_buff ;
   int rv_buff_in ;
   int rv_buff_out ;
   struct sk_buff *rv_skb ;
   struct hdlc_state *hdlc_state ;
   struct work_struct tq_rcv ;
   struct work_struct tq_xmt ;
};
struct IsdnCardState;
struct hisax_b_if;
union __anonunion_hw_267 {
   struct hscx_hw hscx ;
   struct hdlc_hw hdlc ;
   struct isar_hw isar ;
   struct hfcB_hw hfc ;
   struct tiger_hw tiger ;
   struct amd7930_hw amd7930 ;
   struct w6692B_hw w6692 ;
   struct hisax_b_if *b_if ;
};
struct BCState {
   int channel ;
   int mode ;
   u_long Flag ;
   struct IsdnCardState *cs ;
   int tx_cnt ;
   struct sk_buff *tx_skb ;
   struct sk_buff_head rqueue ;
   struct sk_buff_head squeue ;
   int ackcnt ;
   spinlock_t aclock ;
   struct PStack *st ;
   u_char *blog ;
   u_char *conmsg ;
   struct timer_list transbusy ;
   struct work_struct tqueue ;
   u_long event ;
   int (*BC_SetStack)(struct PStack * , struct BCState * ) ;
   void (*BC_Close)(struct BCState * ) ;
   int err_crc ;
   int err_tx ;
   int err_rdo ;
   int err_inv ;
   union __anonunion_hw_267 hw ;
};
struct Channel {
   struct PStack *b_st ;
   struct PStack *d_st ;
   struct IsdnCardState *cs ;
   struct BCState *bcs ;
   int chan ;
   int incoming ;
   struct FsmInst fi ;
   struct FsmTimer drel_timer ;
   struct FsmTimer dial_timer ;
   int debug ;
   int l2_protocol ;
   int l2_active_protocol ;
   int l3_protocol ;
   int data_open ;
   struct l3_process *proc ;
   setup_parm setup ;
   u_long Flags ;
   int leased ;
};
struct elsa_hw {
   struct pci_dev *dev ;
   unsigned long base ;
   unsigned int cfg ;
   unsigned int ctrl ;
   unsigned int ale ;
   unsigned int isac ;
   unsigned int itac ;
   unsigned int hscx ;
   unsigned int trig ;
   unsigned int timer ;
   unsigned int counter ;
   unsigned int status ;
   struct timer_list tl ;
   unsigned int MFlag ;
   struct BCState *bcs ;
   u_char *transbuf ;
   u_char *rcvbuf ;
   unsigned int transp ;
   unsigned int rcvp ;
   unsigned int transcnt ;
   unsigned int rcvcnt ;
   u_char IER ;
   u_char FCR ;
   u_char LCR ;
   u_char MCR ;
   u_char ctrl_reg ;
};
struct teles3_hw {
   unsigned int cfg_reg ;
   int isac ;
   int hscx[2U] ;
   int isacfifo ;
   int hscxfifo[2U] ;
};
struct teles0_hw {
   unsigned int cfg_reg ;
   void *membase ;
   unsigned long phymem ;
};
struct avm_hw {
   unsigned int cfg_reg ;
   unsigned int isac ;
   unsigned int hscx[2U] ;
   unsigned int isacfifo ;
   unsigned int hscxfifo[2U] ;
   unsigned int counter ;
   struct pci_dev *dev ;
};
struct ix1_hw {
   unsigned int cfg_reg ;
   unsigned int isac_ale ;
   unsigned int isac ;
   unsigned int hscx_ale ;
   unsigned int hscx ;
};
struct diva_hw {
   unsigned long cfg_reg ;
   unsigned long pci_cfg ;
   unsigned int ctrl ;
   unsigned long isac_adr ;
   unsigned int isac ;
   unsigned long hscx_adr ;
   unsigned int hscx ;
   unsigned int status ;
   struct timer_list tl ;
   u_char ctrl_reg ;
   struct pci_dev *dev ;
};
struct asus_hw {
   unsigned int cfg_reg ;
   unsigned int adr ;
   unsigned int isac ;
   unsigned int hscx ;
   unsigned int u7 ;
   unsigned int pots ;
};
struct hfc_hw {
   unsigned int addr ;
   unsigned int fifosize ;
   unsigned char cirm ;
   unsigned char ctmt ;
   unsigned char cip ;
   u_char isac_spcr ;
   struct timer_list timer ;
};
struct sedl_hw {
   unsigned int cfg_reg ;
   unsigned int adr ;
   unsigned int isac ;
   unsigned int hscx ;
   unsigned int reset_on ;
   unsigned int reset_off ;
   struct isar_reg isar ;
   unsigned int chip ;
   unsigned int bus ;
   struct pci_dev *dev ;
};
struct spt_hw {
   unsigned int cfg_reg ;
   unsigned int isac ;
   unsigned int hscx[2U] ;
   unsigned char res_irq ;
};
struct mic_hw {
   unsigned int cfg_reg ;
   unsigned int adr ;
   unsigned int isac ;
   unsigned int hscx ;
};
struct njet_hw {
   unsigned long base ;
   unsigned int isac ;
   unsigned int auxa ;
   unsigned char auxd ;
   unsigned char dmactrl ;
   unsigned char ctrl_reg ;
   unsigned char irqmask0 ;
   unsigned char irqstat0 ;
   unsigned char last_is0 ;
   struct pci_dev *dev ;
};
struct hfcPCI_hw {
   unsigned char cirm ;
   unsigned char ctmt ;
   unsigned char conn ;
   unsigned char mst_m ;
   unsigned char int_m1 ;
   unsigned char int_m2 ;
   unsigned char int_s1 ;
   unsigned char sctrl ;
   unsigned char sctrl_r ;
   unsigned char sctrl_e ;
   unsigned char trm ;
   unsigned char stat ;
   unsigned char fifo ;
   unsigned char fifo_en ;
   unsigned char bswapped ;
   unsigned char nt_mode ;
   int nt_timer ;
   struct pci_dev *dev ;
   unsigned char *pci_io ;
   dma_addr_t dma ;
   void *fifos ;
   int last_bfifo_cnt[2U] ;
   struct timer_list timer ;
};
struct hfcSX_hw {
   unsigned long base ;
   unsigned char cirm ;
   unsigned char ctmt ;
   unsigned char conn ;
   unsigned char mst_m ;
   unsigned char int_m1 ;
   unsigned char int_m2 ;
   unsigned char int_s1 ;
   unsigned char sctrl ;
   unsigned char sctrl_r ;
   unsigned char sctrl_e ;
   unsigned char trm ;
   unsigned char stat ;
   unsigned char fifo ;
   unsigned char bswapped ;
   unsigned char nt_mode ;
   unsigned char chip ;
   int b_fifo_size ;
   unsigned char last_fifo ;
   void *extra ;
   int nt_timer ;
   struct timer_list timer ;
};
struct hfcD_hw {
   unsigned int addr ;
   unsigned int bfifosize ;
   unsigned int dfifosize ;
   unsigned char cirm ;
   unsigned char ctmt ;
   unsigned char cip ;
   unsigned char conn ;
   unsigned char mst_m ;
   unsigned char int_m1 ;
   unsigned char int_m2 ;
   unsigned char int_s1 ;
   unsigned char sctrl ;
   unsigned char stat ;
   unsigned char fifo ;
   unsigned char f1 ;
   unsigned char f2 ;
   unsigned int *send ;
   struct timer_list timer ;
};
struct isurf_hw {
   unsigned int reset ;
   unsigned long phymem ;
   void *isac ;
   void *isar ;
   struct isar_reg isar_r ;
};
struct saphir_hw {
   struct pci_dev *dev ;
   unsigned int cfg_reg ;
   unsigned int ale ;
   unsigned int isac ;
   unsigned int hscx ;
   struct timer_list timer ;
};
struct bkm_hw {
   struct pci_dev *dev ;
   unsigned long base ;
   unsigned long isac_adr ;
   unsigned int isac_ale ;
   unsigned long jade_adr ;
   unsigned int jade_ale ;
   unsigned long plx_adr ;
   unsigned long data_adr ;
};
struct gazel_hw {
   struct pci_dev *dev ;
   unsigned int cfg_reg ;
   unsigned int pciaddr[2U] ;
   int ipac ;
   int isac ;
   int hscx[2U] ;
   int isacfifo ;
   int hscxfifo[2U] ;
   unsigned char timeslot ;
   unsigned char iom2 ;
};
struct w6692_hw {
   struct pci_dev *dev ;
   unsigned int iobase ;
   struct timer_list timer ;
};
struct arcofi_msg {
   struct arcofi_msg *next ;
   u_char receive ;
   u_char len ;
   u_char msg[10U] ;
};
struct isac_chip {
   int ph_state ;
   u_char *mon_tx ;
   u_char *mon_rx ;
   int mon_txp ;
   int mon_txc ;
   int mon_rxp ;
   struct arcofi_msg *arcofi_list ;
   struct timer_list arcofitimer ;
   wait_queue_head_t arcofi_wait ;
   u_char arcofi_bc ;
   u_char arcofi_state ;
   u_char mocr ;
   u_char adf2 ;
};
struct hfcd_chip {
   int ph_state ;
};
struct hfcpci_chip {
   int ph_state ;
};
struct hfcsx_chip {
   int ph_state ;
};
struct w6692_chip {
   int ph_state ;
};
struct amd7930_chip {
   u_char lmr1 ;
   u_char ph_state ;
   u_char old_state ;
   u_char flg_t3 ;
   unsigned int tx_xmtlen ;
   struct timer_list timer3 ;
   void (*ph_command)(struct IsdnCardState * , u_char , char * ) ;
   void (*setIrqMask)(struct IsdnCardState * , u_char ) ;
};
struct icc_chip {
   int ph_state ;
   u_char *mon_tx ;
   u_char *mon_rx ;
   int mon_txp ;
   int mon_txc ;
   int mon_rxp ;
   struct arcofi_msg *arcofi_list ;
   struct timer_list arcofitimer ;
   wait_queue_head_t arcofi_wait ;
   u_char arcofi_bc ;
   u_char arcofi_state ;
   u_char mocr ;
   u_char adf2 ;
};
struct hisax_d_if;
union __anonunion_hw_268 {
   struct elsa_hw elsa ;
   struct teles0_hw teles0 ;
   struct teles3_hw teles3 ;
   struct avm_hw avm ;
   struct ix1_hw ix1 ;
   struct diva_hw diva ;
   struct asus_hw asus ;
   struct hfc_hw hfc ;
   struct sedl_hw sedl ;
   struct spt_hw spt ;
   struct mic_hw mic ;
   struct njet_hw njet ;
   struct hfcD_hw hfcD ;
   struct hfcPCI_hw hfcpci ;
   struct hfcSX_hw hfcsx ;
   struct ix1_hw niccy ;
   struct isurf_hw isurf ;
   struct saphir_hw saphir ;
   struct bkm_hw ax ;
   struct gazel_hw gazel ;
   struct w6692_hw w6692 ;
   struct hisax_d_if *hisax_d_if ;
};
union __anonunion_dc_269 {
   struct isac_chip isac ;
   struct hfcd_chip hfcd ;
   struct hfcpci_chip hfcpci ;
   struct hfcsx_chip hfcsx ;
   struct w6692_chip w6692 ;
   struct amd7930_chip amd7930 ;
   struct icc_chip icc ;
};
struct IsdnCardState {
   spinlock_t lock ;
   u_char typ ;
   u_char subtyp ;
   int protocol ;
   u_int irq ;
   u_long irq_flags ;
   u_long HW_Flags ;
   int *busy_flag ;
   int chanlimit ;
   int logecho ;
   union __anonunion_hw_268 hw ;
   int myid ;
   isdn_if iif ;
   spinlock_t statlock ;
   u_char *status_buf ;
   u_char *status_read ;
   u_char *status_write ;
   u_char *status_end ;
   u_char (*readisac)(struct IsdnCardState * , u_char ) ;
   void (*writeisac)(struct IsdnCardState * , u_char , u_char ) ;
   void (*readisacfifo)(struct IsdnCardState * , u_char * , int ) ;
   void (*writeisacfifo)(struct IsdnCardState * , u_char * , int ) ;
   u_char (*BC_Read_Reg)(struct IsdnCardState * , int , u_char ) ;
   void (*BC_Write_Reg)(struct IsdnCardState * , int , u_char , u_char ) ;
   void (*BC_Send_Data)(struct BCState * ) ;
   int (*cardmsg)(struct IsdnCardState * , int , void * ) ;
   void (*setstack_d)(struct PStack * , struct IsdnCardState * ) ;
   void (*DC_Close)(struct IsdnCardState * ) ;
   irqreturn_t (*irq_func)(int , void * ) ;
   int (*auxcmd)(struct IsdnCardState * , isdn_ctrl * ) ;
   struct Channel channel[4U] ;
   struct BCState bcs[4U] ;
   struct PStack *stlist ;
   struct sk_buff_head rq ;
   struct sk_buff_head sq ;
   int cardnr ;
   char *dlog ;
   int debug ;
   union __anonunion_dc_269 dc ;
   u_char *rcvbuf ;
   int rcvidx ;
   struct sk_buff *tx_skb ;
   int tx_cnt ;
   u_long event ;
   struct work_struct tqueue ;
   struct timer_list dbusytimer ;
   unsigned int irq_cnt ;
   int err_crc ;
   int err_tx ;
   int err_rx ;
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
union __anonunion_ldv_45142_270 {
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
   union __anonunion_ldv_45142_270 ldv_45142 ;
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
struct hisax_if {
   void *priv ;
   void (*l1l2)(struct hisax_if * , int , void * ) ;
   void (*l2l1)(struct hisax_if * , int , void * ) ;
};
struct hisax_b_if {
   struct hisax_if ifc ;
   struct BCState *bcs ;
};
struct hisax_d_if {
   struct hisax_if ifc ;
   struct module *owner ;
   struct IsdnCardState *cs ;
   struct hisax_b_if *b_if[2U] ;
   struct sk_buff_head erq ;
   unsigned long ph_state ;
};
struct __anonstruct_ctrl_buft_271 {
   __u8 hfc_reg ;
   __u8 reg_val ;
   int action ;
};
typedef struct __anonstruct_ctrl_buft_271 ctrl_buft;
struct hfcusb_symbolic_list {
   int const num ;
   char const *name ;
};
struct __anonstruct_hfcsusb_vdata_273 {
   __u8 led_scheme ;
   short led_bits[8U] ;
   char *vend_name ;
};
typedef struct __anonstruct_hfcsusb_vdata_273 hfcsusb_vdata;
struct usb_fifo;
struct iso_urb_struct {
   struct urb *purb ;
   __u8 buffer[128U] ;
   struct usb_fifo *owner_fifo ;
};
typedef struct iso_urb_struct iso_urb_struct;
struct hfcusb_data;
struct usb_fifo {
   int fifonum ;
   int active ;
   struct hfcusb_data *hfc ;
   int pipe ;
   __u8 usb_packet_maxlen ;
   unsigned int max_size ;
   __u8 intervall ;
   struct sk_buff *skbuff ;
   struct urb *urb ;
   __u8 buffer[128U] ;
   int bit_line ;
   __u8 volatile usb_transfer_mode ;
   iso_urb_struct iso[2U] ;
   struct hisax_if *hif ;
   int delete_flg ;
   int last_urblen ;
};
typedef struct usb_fifo usb_fifo;
struct hfcusb_data {
   struct hisax_d_if d_if ;
   struct hisax_b_if b_if[2U] ;
   int protocol ;
   struct usb_device *dev ;
   int if_used ;
   int alt_used ;
   int ctrl_paksize ;
   int ctrl_in_pipe ;
   int ctrl_out_pipe ;
   int cfg_used ;
   int vend_idx ;
   int b_mode[2U] ;
   int l1_activated ;
   int disc_flag ;
   int packet_size ;
   int iso_packet_size ;
   ctrl_buft ctrl_buff[32U] ;
   int volatile ctrl_in_idx ;
   int volatile ctrl_out_idx ;
   int volatile ctrl_cnt ;
   struct urb *ctrl_urb ;
   struct usb_ctrlrequest ctrl_write ;
   struct usb_ctrlrequest ctrl_read ;
   __u8 old_led_state ;
   __u8 led_state ;
   __u8 volatile threshold_mask ;
   __u8 volatile bch_enables ;
   usb_fifo fifos[8U] ;
   __u8 volatile l1_state ;
   struct timer_list t3_timer ;
   struct timer_list t4_timer ;
};
typedef struct hfcusb_data hfcusb_data;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
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
   union __anonunion_ldv_14142_140 __annonCompField38 ;
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
   union __anonunion_ldv_14136_138 __annonCompField37 ;
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
extern struct module __this_module ;
extern int printk(char const * , ...) ;
extern int sscanf(char const * , char const * , ...) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern unsigned long volatile jiffies ;
__inline static int timer_pending(struct timer_list const *timer )
{
  {
  return ((unsigned long )timer->entry.next != (unsigned long )((struct list_head * )0));
}
}
extern int del_timer(struct timer_list * ) ;
int ldv_del_timer_34(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_35(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_44(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_45(struct timer_list *ldv_func_arg1 ) ;
extern void add_timer(struct timer_list * ) ;
extern void kfree(void const * ) ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
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
int LDV_IN_INTERRUPT = 1;
struct usb_interface *hfc_drv_group1 ;
int ldv_timer_state_2 = 0;
int ldv_state_variable_0 ;
int ldv_state_variable_3 ;
struct timer_list *ldv_timer_list_2 ;
int ldv_timer_state_1 = 0;
int ldv_state_variable_2 ;
int ref_cnt ;
int ldv_state_variable_1 ;
struct timer_list *ldv_timer_list_1 ;
int usb_counter ;
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void choose_timer_1(struct timer_list *timer ) ;
int reg_timer_1(struct timer_list *timer ) ;
void choose_timer_2(struct timer_list *timer ) ;
int reg_timer_2(struct timer_list *timer ) ;
void activate_pending_timer_2(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void ldv_usb_driver_3(void) ;
void disable_suitable_timer_2(struct timer_list *timer ) ;
void disable_suitable_timer_1(struct timer_list *timer ) ;
extern long schedule_timeout(long ) ;
extern void __const_udelay(unsigned long ) ;
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
__inline static void *usb_get_intfdata(struct usb_interface *intf )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& intf->dev));
  return (tmp);
}
}
__inline static void usb_set_intfdata(struct usb_interface *intf , void *data )
{
  {
  dev_set_drvdata(& intf->dev, data);
  return;
}
}
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf )
{
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)intf->dev.parent;
  return ((struct usb_device *)__mptr + 0xffffffffffffff70UL);
}
}
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
int ldv_usb_register_driver_47(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
void ldv_usb_deregister_46(struct usb_driver *arg ) ;
__inline static void usb_fill_control_urb(struct urb *urb , struct usb_device *dev ,
                                          unsigned int pipe , unsigned char *setup_packet ,
                                          void *transfer_buffer , int buffer_length ,
                                          void (*complete_fn)(struct urb * ) , void *context )
{
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->setup_packet = setup_packet;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  return;
}
}
__inline static void usb_fill_int_urb(struct urb *urb , struct usb_device *dev , unsigned int pipe ,
                                      void *transfer_buffer , int buffer_length ,
                                      void (*complete_fn)(struct urb * ) , void *context ,
                                      int interval )
{
  int __val ;
  int __min ;
  int __max ;
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  if ((unsigned int )dev->speed == 3U || (unsigned int )dev->speed == 5U) {
    __val = interval;
    __min = 1;
    __max = 16;
    __val = __min > __val ? __min : __val;
    interval = __max < __val ? __max : __val;
    urb->interval = 1 << (interval + -1);
  } else {
    urb->interval = interval;
  }
  urb->start_frame = -1;
  return;
}
}
extern struct urb *usb_alloc_urb(int , gfp_t ) ;
struct urb *ldv_usb_alloc_urb_36(int ldv_func_arg1 , gfp_t flags ) ;
struct urb *ldv_usb_alloc_urb_41(int ldv_func_arg1 , gfp_t flags ) ;
struct urb *ldv_usb_alloc_urb_43(int ldv_func_arg1 , gfp_t flags ) ;
extern void usb_free_urb(struct urb * ) ;
extern int usb_submit_urb(struct urb * , gfp_t ) ;
int ldv_usb_submit_urb_33(struct urb *ldv_func_arg1 , gfp_t flags ) ;
int ldv_usb_submit_urb_37(struct urb *ldv_func_arg1 , gfp_t flags ) ;
int ldv_usb_submit_urb_38(struct urb *ldv_func_arg1 , gfp_t flags ) ;
int ldv_usb_submit_urb_39(struct urb *ldv_func_arg1 , gfp_t flags ) ;
int ldv_usb_submit_urb_40(struct urb *ldv_func_arg1 , gfp_t flags ) ;
int ldv_usb_submit_urb_42(struct urb *ldv_func_arg1 , gfp_t flags ) ;
extern void usb_kill_urb(struct urb * ) ;
extern int usb_control_msg(struct usb_device * , unsigned int , __u8 , __u8 , __u16 ,
                           __u16 , void * , __u16 , int ) ;
extern int usb_set_interface(struct usb_device * , int , int ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
}
}
extern struct sk_buff *skb_clone(struct sk_buff * , gfp_t ) ;
struct sk_buff *ldv_skb_clone_24(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_32(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
extern struct sk_buff *skb_copy(struct sk_buff const * , gfp_t ) ;
struct sk_buff *ldv_skb_copy_26(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
extern int pskb_expand_head(struct sk_buff * , int , int , gfp_t ) ;
int ldv_pskb_expand_head_22(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_30(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
extern unsigned char *skb_pull(struct sk_buff * , unsigned int ) ;
extern void skb_trim(struct sk_buff * , unsigned int ) ;
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
void *ldv_malloc(size_t size ) ;
struct sk_buff *ldv___netdev_alloc_skb_27(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_28(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_29(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
__inline static struct sk_buff *netdev_alloc_skb(struct net_device *dev , unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = ldv___netdev_alloc_skb_27(dev, length, 32U);
  return (tmp);
}
}
__inline static struct sk_buff *dev_alloc_skb(unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = netdev_alloc_skb((struct net_device *)0, length);
  return (tmp);
}
}
extern void __dev_kfree_skb_any(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_any(struct sk_buff *skb )
{
  {
  __dev_kfree_skb_any(skb, 1);
  return;
}
}
extern int hisax_register(struct hisax_d_if * , struct hisax_b_if ** , char * , int ) ;
extern void hisax_unregister(struct hisax_d_if * ) ;
static struct hfcusb_symbolic_list urb_errlist[15U] =
  { {-12, "No memory for allocation of internal structures"},
        {-28, "The host controller\'s bandwidth is already consumed"},
        {-2, "URB was canceled by unlink_urb"},
        {-18, "ISO transfer only partially completed"},
        {-11, "Too match scheduled for the future"},
        {-6, "URB already queued"},
        {-27, "Too much ISO frames requested"},
        {-63, "Buffer error (overrun)"},
        {-32, "Specified endpoint is stalled (device not responding)"},
        {-75, "Babble (bad cable?)"},
        {-71, "Bit-stuff error (bad cable?)"},
        {-84, "CRC/Timeout"},
        {-110, "NAK (device does not respond)"},
        {-108, "Device unplugged"},
        {-1, (char const *)0}};
static int validconf[5U][19U] = { { 1, 5, 1, 5,
            1, 5, 2, 5,
            3, 1, 3, 1,
            3, 1, 1, 1,
            1, 2, 1},
   { 1, 5, 1, 5,
            1, 5, 1, 1,
            3, 1, 3, 1,
            3, 1, 1, 1,
            2, 2, 0},
   { 1, 1, 1, 1,
            1, 1, 1, 1,
            3, 3, 3, 3,
            3, 3, 2, 3,
            3, 2, 1},
   { 1, 1, 1, 1,
            1, 1, 1, 1,
            3, 3, 3, 3,
            3, 3, 1, 1,
            4, 2, 0},
   { 0, 0, 0, 0,
            0, 0, 0, 0,
            0, 0, 0, 0,
            0, 0, 0, 0}};
static char *conf_str[4U] = { (char *)"4 Interrupt IN + 3 Isochron OUT", (char *)"3 Interrupt IN + 3 Isochron OUT", (char *)"4 Isochron IN + 3 Isochron OUT", (char *)"3 Isochron IN + 3 Isochron OUT"};
static char const *hfcusb_revision = "$Revision: 2.3.2.24 $ $Date: 2007/10/14 08:40:29 $ ";
static void dump_packet(char const *name , u_char const *data , int pkt_len )
{
  int i ;
  int len1 ;
  int len2 ;
  {
  if (pkt_len != 0) {
    printk("\017%s: length=%d,data=", name, pkt_len);
    if (pkt_len > 28) {
      len1 = 20;
      len2 = 8;
    } else {
      len1 = 20 < pkt_len ? 20 : pkt_len;
      len2 = 0;
    }
    i = 0;
    goto ldv_46546;
    ldv_46545:
    printk("%.2x", (int )*(data + (unsigned long )i));
    i = i + 1;
    ldv_46546: ;
    if (i < len1) {
      goto ldv_46545;
    } else {
    }
    if (len2 != 0) {
      printk("..");
      i = pkt_len + -8;
      goto ldv_46549;
      ldv_46548:
      printk("%.2x", (int )*(data + (unsigned long )i));
      i = i + 1;
      ldv_46549: ;
      if (i < pkt_len) {
        goto ldv_46548;
      } else {
      }
    } else {
    }
    printk("\n");
  } else {
  }
  return;
}
}
static u_int debug ;
static int hfc_debug ;
static hfcsusb_vdata __constr_expr_0 = {0U, {4, 0, 2, 1}, (char *)"ISDN USB TA (Cologne Chip HFC-S USB based)"};
static hfcsusb_vdata __constr_expr_1 = {1U, {1, 2, 0, 0}, (char *)"DrayTek miniVigor 128 USB ISDN TA"};
static hfcsusb_vdata __constr_expr_2 = {1U, {128, -64, -32, -16}, (char *)"Billion tiny USB ISDN TA 128"};
static hfcsusb_vdata __constr_expr_3 = {1U, {4, 0, 2, 1}, (char *)"Stollmann USB TA"};
static hfcsusb_vdata __constr_expr_4 = {1U, {4, 0, 2, 1}, (char *)"Aceex USB ISDN TA"};
static hfcsusb_vdata __constr_expr_5 = {1U, {4, 0, 2, 1}, (char *)"OEM USB ISDN TA"};
static hfcsusb_vdata __constr_expr_6 = {1U, {2, 0, 1, 4}, (char *)"Olitec USB RNIS"};
static hfcsusb_vdata __constr_expr_7 = {1U, {128, -64, -32, -16}, (char *)"Bewan Modem RNIS USB"};
static hfcsusb_vdata __constr_expr_8 = {1U, {128, -64, -32, -16}, (char *)"Djinn Numeris USB"};
static hfcsusb_vdata __constr_expr_9 = {1U, {128, -64, -32, -16}, (char *)"Twister ISDN TA"};
static hfcsusb_vdata __constr_expr_10 = {1U, {2, 0, 1, 4}, (char *)"Eicon DIVA USB 4.0"};
static struct usb_device_id hfcusb_idtab[12U] =
  { {3U, 2393U, 11216U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_0)},
        {3U, 1653U, 5768U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_1)},
        {3U, 1968U, 7U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_2)},
        {3U, 1858U, 8200U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_3)},
        {3U, 1858U, 8201U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_4)},
        {3U, 1858U, 8202U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_5)},
        {3U, 2275U, 769U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_6)},
        {3U, 2042U, 2118U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_7)},
        {3U, 2042U, 2119U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_8)},
        {3U, 1968U, 6U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_9)},
        {3U, 1821U, 4101U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& __constr_expr_10)}};
static void collect_rx_frame(usb_fifo *fifo , __u8 *data , int len , int finish ) ;
__inline static char const *symbolic(struct hfcusb_symbolic_list *list , int const num )
{
  int i ;
  {
  i = 0;
  goto ldv_46651;
  ldv_46650: ;
  if ((int )(list + (unsigned long )i)->num == (int )num) {
    return ((list + (unsigned long )i)->name);
  } else {
  }
  i = i + 1;
  ldv_46651: ;
  if ((unsigned long )(list + (unsigned long )i)->name != (unsigned long )((char const *)0)) {
    goto ldv_46650;
  } else {
  }
  return ("<unknown OLD_ERROR>");
}
}
static void ctrl_start_transfer(hfcusb_data *hfc )
{
  {
  if ((int )hfc->ctrl_cnt != 0) {
    (hfc->ctrl_urb)->pipe = (unsigned int )hfc->ctrl_out_pipe;
    (hfc->ctrl_urb)->setup_packet = (unsigned char *)(& hfc->ctrl_write);
    (hfc->ctrl_urb)->transfer_buffer = (void *)0;
    (hfc->ctrl_urb)->transfer_buffer_length = 0U;
    hfc->ctrl_write.wIndex = (unsigned short )hfc->ctrl_buff[hfc->ctrl_out_idx].hfc_reg;
    hfc->ctrl_write.wValue = (unsigned short )hfc->ctrl_buff[hfc->ctrl_out_idx].reg_val;
    ldv_usb_submit_urb_33(hfc->ctrl_urb, 32U);
  } else {
  }
  return;
}
}
static int queue_control_request(hfcusb_data *hfc , __u8 reg , __u8 val , int action )
{
  ctrl_buft *buf ;
  {
  if ((int )hfc->ctrl_cnt > 31) {
    return (1);
  } else {
  }
  buf = (ctrl_buft *)(& hfc->ctrl_buff) + (unsigned long )hfc->ctrl_in_idx;
  buf->hfc_reg = reg;
  buf->reg_val = val;
  buf->action = action;
  hfc->ctrl_in_idx = hfc->ctrl_in_idx + (int volatile )1;
  if ((int )hfc->ctrl_in_idx > 31) {
    hfc->ctrl_in_idx = 0;
  } else {
  }
  hfc->ctrl_cnt = hfc->ctrl_cnt + (int volatile )1;
  if ((int )hfc->ctrl_cnt == 1) {
    ctrl_start_transfer(hfc);
  } else {
  }
  return (0);
}
}
static void ctrl_complete(struct urb *urb )
{
  hfcusb_data *hfc ;
  {
  hfc = (hfcusb_data *)urb->context;
  urb->dev = hfc->dev;
  if ((int )hfc->ctrl_cnt != 0) {
    hfc->ctrl_cnt = hfc->ctrl_cnt - (int volatile )1;
    hfc->ctrl_out_idx = hfc->ctrl_out_idx + (int volatile )1;
    if ((int )hfc->ctrl_out_idx > 31) {
      hfc->ctrl_out_idx = 0;
    } else {
    }
    ctrl_start_transfer(hfc);
  } else {
  }
  return;
}
}
static void write_led(hfcusb_data *hfc , __u8 led_state )
{
  {
  if ((int )hfc->old_led_state != (int )led_state) {
    hfc->old_led_state = led_state;
    queue_control_request(hfc, 31, (int )led_state, 1);
  } else {
  }
  return;
}
}
static void set_led_bit(hfcusb_data *hfc , short led_bits , int on )
{
  long ret ;
  int __x___0 ;
  long ret___0 ;
  int __x___2 ;
  {
  if (on != 0) {
    if ((int )led_bits < 0) {
      __x___0 = (int )led_bits;
      ret = (long )(__x___0 < 0 ? - __x___0 : __x___0);
      hfc->led_state = (__u8 )((int )((signed char )hfc->led_state) & ~ ((int )((signed char )ret)));
    } else {
      hfc->led_state = (__u8 )((int )((signed char )hfc->led_state) | (int )((signed char )led_bits));
    }
  } else
  if ((int )led_bits < 0) {
    __x___2 = (int )led_bits;
    ret___0 = (long )(__x___2 < 0 ? - __x___2 : __x___2);
    hfc->led_state = (__u8 )((int )((signed char )hfc->led_state) | (int )((signed char )ret___0));
  } else {
    hfc->led_state = (__u8 )((int )((signed char )hfc->led_state) & ~ ((int )((signed char )led_bits)));
  }
  return;
}
}
static void handle_led(hfcusb_data *hfc , int event )
{
  hfcsusb_vdata *driver_info ;
  {
  driver_info = (hfcsusb_vdata *)hfcusb_idtab[hfc->vend_idx].driver_info;
  if ((unsigned int )driver_info->led_scheme == 0U) {
    return;
  } else {
  }
  switch (event) {
  case 1:
  set_led_bit(hfc, (int )driver_info->led_bits[0], 1);
  set_led_bit(hfc, (int )driver_info->led_bits[1], 0);
  set_led_bit(hfc, (int )driver_info->led_bits[2], 0);
  set_led_bit(hfc, (int )driver_info->led_bits[3], 0);
  goto ldv_46690;
  case 2:
  set_led_bit(hfc, (int )driver_info->led_bits[0], 0);
  set_led_bit(hfc, (int )driver_info->led_bits[1], 0);
  set_led_bit(hfc, (int )driver_info->led_bits[2], 0);
  set_led_bit(hfc, (int )driver_info->led_bits[3], 0);
  goto ldv_46690;
  case 3:
  set_led_bit(hfc, (int )driver_info->led_bits[1], 1);
  goto ldv_46690;
  case 4:
  set_led_bit(hfc, (int )driver_info->led_bits[1], 0);
  goto ldv_46690;
  case 5:
  set_led_bit(hfc, (int )driver_info->led_bits[2], 1);
  goto ldv_46690;
  case 6:
  set_led_bit(hfc, (int )driver_info->led_bits[2], 0);
  goto ldv_46690;
  case 8:
  set_led_bit(hfc, (int )driver_info->led_bits[3], 1);
  goto ldv_46690;
  case 9:
  set_led_bit(hfc, (int )driver_info->led_bits[3], 0);
  goto ldv_46690;
  }
  ldv_46690:
  write_led(hfc, (int )hfc->led_state);
  return;
}
}
static void l1_timer_expire_t3(hfcusb_data *hfc )
{
  {
  (*(hfc->d_if.ifc.l1l2))(& hfc->d_if.ifc, 274, (void *)0);
  if ((hfc_debug & 2) != 0) {
    printk("\017%s: HFC-S USB: PH_DEACTIVATE | INDICATION sent (T3 expire)\n", "l1_timer_expire_t3");
  } else {
  }
  hfc->l1_activated = 0;
  handle_led(hfc, 4);
  queue_control_request(hfc, 48, 16, 1);
  queue_control_request(hfc, 48, 3, 1);
  return;
}
}
static void l1_timer_expire_t4(hfcusb_data *hfc )
{
  {
  (*(hfc->d_if.ifc.l1l2))(& hfc->d_if.ifc, 274, (void *)0);
  if ((hfc_debug & 2) != 0) {
    printk("\017%s: HFC-S USB: PH_DEACTIVATE | INDICATION sent (T4 expire)\n", "l1_timer_expire_t4");
  } else {
  }
  hfc->l1_activated = 0;
  handle_led(hfc, 4);
  return;
}
}
static void s0_state_handler(hfcusb_data *hfc , __u8 state )
{
  __u8 old_state ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  old_state = hfc->l1_state;
  if (((int )state == (int )old_state || (unsigned int )state == 0U) || (unsigned int )state > 8U) {
    return;
  } else {
  }
  if ((hfc_debug & 2) != 0) {
    printk("\017%s: HFC-S USB: S0 statechange(%d -> %d)\n", "s0_state_handler", (int )old_state,
           (int )state);
  } else {
  }
  if (((unsigned int )state <= 3U || (unsigned int )state == 7U) || (unsigned int )state == 8U) {
    tmp = timer_pending((struct timer_list const *)(& hfc->t3_timer));
    if (tmp != 0) {
      ldv_del_timer_34(& hfc->t3_timer);
    } else {
    }
    if ((hfc_debug & 2) != 0) {
      printk("\017%s: HFC-S USB: T3 deactivated\n", "s0_state_handler");
    } else {
    }
  } else {
  }
  if ((unsigned int )state > 6U) {
    tmp___0 = timer_pending((struct timer_list const *)(& hfc->t4_timer));
    if (tmp___0 != 0) {
      ldv_del_timer_35(& hfc->t4_timer);
    } else {
    }
    if ((hfc_debug & 2) != 0) {
      printk("\017%s: HFC-S USB: T4 deactivated\n", "s0_state_handler");
    } else {
    }
  } else {
  }
  if ((unsigned int )state == 7U && hfc->l1_activated == 0) {
    (*(hfc->d_if.ifc.l1l2))(& hfc->d_if.ifc, 258, (void *)0);
    if ((hfc_debug & 2) != 0) {
      printk("\017%s: HFC-S USB: PH_ACTIVATE | INDICATION sent\n", "s0_state_handler");
    } else {
    }
    hfc->l1_activated = 1;
    handle_led(hfc, 3);
  } else
  if ((unsigned int )state <= 3U) {
    if ((unsigned int )old_state == 7U || (unsigned int )old_state == 8U) {
      if ((hfc_debug & 2) != 0) {
        printk("\017%s: HFC-S USB: T4 activated\n", "s0_state_handler");
      } else {
      }
      tmp___1 = timer_pending((struct timer_list const *)(& hfc->t4_timer));
      if (tmp___1 == 0) {
        hfc->t4_timer.expires = (unsigned long )jiffies + 125UL;
        add_timer(& hfc->t4_timer);
      } else {
      }
    } else {
      (*(hfc->d_if.ifc.l1l2))(& hfc->d_if.ifc, 274, (void *)0);
      if ((hfc_debug & 2) != 0) {
        printk("\017%s: HFC-S USB: PH_DEACTIVATE | INDICATION sent\n", "s0_state_handler");
      } else {
      }
      hfc->l1_activated = 0;
      handle_led(hfc, 4);
    }
  } else {
  }
  hfc->l1_state = state;
  return;
}
}
static void fill_isoc_urb(struct urb *urb , struct usb_device *dev , unsigned int pipe ,
                          void *buf , int num_packets , int packet_size , int interval ,
                          void (*complete___0)(struct urb * ) , void *context )
{
  int k ;
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->complete = complete___0;
  urb->number_of_packets = num_packets;
  urb->transfer_buffer_length = (u32 )(packet_size * num_packets);
  urb->context = context;
  urb->transfer_buffer = buf;
  urb->transfer_flags = 2U;
  urb->actual_length = 0U;
  urb->interval = interval;
  k = 0;
  goto ldv_46725;
  ldv_46724:
  urb->iso_frame_desc[k].offset = (unsigned int )(packet_size * k);
  urb->iso_frame_desc[k].length = (unsigned int )packet_size;
  urb->iso_frame_desc[k].actual_length = 0U;
  k = k + 1;
  ldv_46725: ;
  if (k < num_packets) {
    goto ldv_46724;
  } else {
  }
  return;
}
}
static int start_isoc_chain(usb_fifo *fifo , int num_packets_per_urb , void (*complete___0)(struct urb * ) ,
                            int packet_size )
{
  int i ;
  int k ;
  int errcode ;
  char const *tmp ;
  {
  if (hfc_debug & 1) {
    printk("\017%s: HFC-S USB: starting ISO-URBs for fifo:%d\n\n", "start_isoc_chain",
           fifo->fifonum);
  } else {
  }
  i = 0;
  goto ldv_46741;
  ldv_46740: ;
  if ((unsigned long )fifo->iso[i].purb == (unsigned long )((struct urb *)0)) {
    fifo->iso[i].purb = ldv_usb_alloc_urb_36(num_packets_per_urb, 208U);
    if ((unsigned long )fifo->iso[i].purb == (unsigned long )((struct urb *)0)) {
      printk("\016alloc urb for fifo %i failed!!!", fifo->fifonum);
    } else {
    }
    fifo->iso[i].owner_fifo = fifo;
    if ((int )fifo->usb_packet_maxlen * num_packets_per_urb <= 128) {
      fill_isoc_urb(fifo->iso[i].purb, (fifo->hfc)->dev, (unsigned int )fifo->pipe,
                    (void *)(& fifo->iso[i].buffer), num_packets_per_urb, (int )fifo->usb_packet_maxlen,
                    (int )fifo->intervall, complete___0, (void *)(& fifo->iso) + (unsigned long )i);
      memset((void *)(& fifo->iso[i].buffer), 0, 128UL);
      k = 0;
      goto ldv_46738;
      ldv_46737:
      (fifo->iso[i].purb)->iso_frame_desc[k].offset = (unsigned int )(k * packet_size);
      (fifo->iso[i].purb)->iso_frame_desc[k].length = (unsigned int )packet_size;
      k = k + 1;
      ldv_46738: ;
      if (k < num_packets_per_urb) {
        goto ldv_46737;
      } else {
      }
    } else {
      printk("\016HFC-S USB: ISO Buffer size to small!\n");
    }
  } else {
  }
  fifo->bit_line = -512;
  errcode = ldv_usb_submit_urb_37(fifo->iso[i].purb, 208U);
  fifo->active = errcode >= 0;
  if (errcode < 0) {
    tmp = symbolic((struct hfcusb_symbolic_list *)(& urb_errlist), errcode);
    printk("\016HFC-S USB: usb_submit_urb URB nr:%d, error(%i): \'%s\'\n", i, errcode,
           tmp);
  } else {
  }
  i = i + 1;
  ldv_46741: ;
  if (i <= 1) {
    goto ldv_46740;
  } else {
  }
  return (fifo->active);
}
}
static void stop_isoc_chain(usb_fifo *fifo )
{
  int i ;
  {
  i = 0;
  goto ldv_46749;
  ldv_46748: ;
  if ((unsigned long )fifo->iso[i].purb != (unsigned long )((struct urb *)0)) {
    if (hfc_debug & 1) {
      printk("\017%s: HFC-S USB: Stopping iso chain for fifo %i.%i\n", "stop_isoc_chain",
             fifo->fifonum, i);
    } else {
    }
    usb_kill_urb(fifo->iso[i].purb);
    usb_free_urb(fifo->iso[i].purb);
    fifo->iso[i].purb = (struct urb *)0;
  } else {
  }
  i = i + 1;
  ldv_46749: ;
  if (i <= 1) {
    goto ldv_46748;
  } else {
  }
  usb_kill_urb(fifo->urb);
  usb_free_urb(fifo->urb);
  fifo->urb = (struct urb *)0;
  fifo->active = 0;
  return;
}
}
static int iso_packets[8U] =
  { 8, 8, 8, 8,
        8, 8, 8, 8};
static void tx_iso_complete(struct urb *urb )
{
  iso_urb_struct *context_iso_urb ;
  usb_fifo *fifo ;
  hfcusb_data *hfc ;
  int k ;
  int tx_offset ;
  int num_isoc_packets ;
  int sink ;
  int len ;
  int current_len ;
  int errcode ;
  int frame_complete ;
  int transp_mode ;
  int fifon ;
  int status ;
  __u8 threshbit ;
  size_t __len ;
  void *__ret ;
  int tmp ;
  char const *tmp___0 ;
  {
  context_iso_urb = (iso_urb_struct *)urb->context;
  fifo = context_iso_urb->owner_fifo;
  hfc = fifo->hfc;
  fifon = fifo->fifonum;
  status = urb->status;
  tx_offset = 0;
  if (status == -18) {
    if ((hfc_debug & 32768) != 0) {
      printk("\017%s: HFC-S USB: tx_iso_complete with -EXDEV, urb->status %d, fifonum %d\n\n",
             "tx_iso_complete", status, fifon);
    } else {
    }
    k = 0;
    goto ldv_46772;
    ldv_46771:
    errcode = urb->iso_frame_desc[k].status;
    if (errcode != 0) {
      if ((hfc_debug & 32768) != 0) {
        printk("\017%s: HFC-S USB: tx_iso_complete packet %i, status: %i\n\n", "tx_iso_complete",
               k, errcode);
      } else {
      }
    } else {
    }
    k = k + 1;
    ldv_46772: ;
    if (iso_packets[fifon] > k) {
      goto ldv_46771;
    } else {
    }
    status = 0;
  } else {
  }
  if (fifo->active != 0 && status == 0) {
    transp_mode = 0;
    if (fifon <= 3 && hfc->b_mode[fifon / 2] == 1) {
      transp_mode = 1;
    } else {
    }
    threshbit = (__u8 )((int )((signed char )hfc->threshold_mask) & (int )((signed char )(1 << fifon)));
    num_isoc_packets = iso_packets[fifon];
    if (fifon > 3) {
      sink = (unsigned int )threshbit != 0U ? 12 : 18;
    } else {
      sink = (unsigned int )threshbit != 0U ? 48 : 68;
    }
    fill_isoc_urb(urb, (fifo->hfc)->dev, (unsigned int )fifo->pipe, (void *)(& context_iso_urb->buffer),
                  num_isoc_packets, (int )fifo->usb_packet_maxlen, (int )fifo->intervall,
                  & tx_iso_complete, urb->context);
    memset((void *)(& context_iso_urb->buffer), 0, 128UL);
    frame_complete = 0;
    k = 0;
    goto ldv_46778;
    ldv_46777: ;
    if ((unsigned long )fifo->skbuff != (unsigned long )((struct sk_buff *)0)) {
      len = (int )(fifo->skbuff)->len;
      fifo->bit_line = fifo->bit_line - sink;
      current_len = - fifo->bit_line / 8;
      if (current_len > 14) {
        current_len = 14;
      } else {
      }
      current_len = current_len < len ? current_len : len;
      fifo->bit_line = fifo->bit_line + current_len * 8;
      context_iso_urb->buffer[tx_offset] = 0U;
      if (current_len == len) {
        if (transp_mode == 0) {
          context_iso_urb->buffer[tx_offset] = 1U;
          fifo->bit_line = fifo->bit_line + 32;
        } else {
        }
        frame_complete = 1;
      } else {
      }
      __len = (size_t )current_len;
      __ret = memcpy((void *)(& context_iso_urb->buffer) + ((unsigned long )tx_offset + 1UL),
                               (void const *)(fifo->skbuff)->data, __len);
      skb_pull(fifo->skbuff, (unsigned int )current_len);
      urb->iso_frame_desc[k].offset = (unsigned int )tx_offset;
      urb->iso_frame_desc[k].length = (unsigned int )(current_len + 1);
      tx_offset = (current_len + 1) + tx_offset;
    } else {
      tmp = tx_offset;
      tx_offset = tx_offset + 1;
      urb->iso_frame_desc[k].offset = (unsigned int )tmp;
      urb->iso_frame_desc[k].length = 1U;
      fifo->bit_line = fifo->bit_line - sink;
      if (fifo->bit_line < -512) {
        fifo->bit_line = -512;
      } else {
      }
    }
    if (frame_complete != 0) {
      fifo->delete_flg = 1;
      (*((fifo->hif)->l1l2))(fifo->hif, 289, (void *)((unsigned long )(fifo->skbuff)->truesize));
      if ((unsigned long )fifo->skbuff != (unsigned long )((struct sk_buff *)0) && fifo->delete_flg != 0) {
        dev_kfree_skb_any(fifo->skbuff);
        fifo->skbuff = (struct sk_buff *)0;
        fifo->delete_flg = 0;
      } else {
      }
      frame_complete = 0;
    } else {
    }
    k = k + 1;
    ldv_46778: ;
    if (k < num_isoc_packets) {
      goto ldv_46777;
    } else {
    }
    errcode = ldv_usb_submit_urb_38(urb, 32U);
    if (errcode < 0) {
      printk("\016HFC-S USB: error submitting ISO URB: %d\n", errcode);
    } else {
    }
  } else
  if (status != 0 && hfc->disc_flag == 0) {
    tmp___0 = symbolic((struct hfcusb_symbolic_list *)(& urb_errlist), status);
    printk("\016HFC-S USB: tx_iso_complete: error(%i): \'%s\', fifonum=%d\n", status,
           tmp___0, fifon);
  } else {
  }
  return;
}
}
static void rx_iso_complete(struct urb *urb )
{
  iso_urb_struct *context_iso_urb ;
  usb_fifo *fifo ;
  hfcusb_data *hfc ;
  int k ;
  int len ;
  int errcode ;
  int offset ;
  int num_isoc_packets ;
  int fifon ;
  int maxlen ;
  int status ;
  unsigned int iso_status ;
  __u8 *buf ;
  __u8 eof[8U] ;
  {
  context_iso_urb = (iso_urb_struct *)urb->context;
  fifo = context_iso_urb->owner_fifo;
  hfc = fifo->hfc;
  fifon = fifo->fifonum;
  status = urb->status;
  if (urb->status == -75) {
    if ((hfc_debug & 32768) != 0) {
      printk("\017%s: HFC-USB: ignoring USB DATAOVERRUN fifo(%i)\n", "rx_iso_complete",
             fifon);
    } else {
    }
    status = 0;
  } else {
  }
  if (status == -18) {
    if ((hfc_debug & 32768) != 0) {
      printk("\017%s: HFC-S USB: rx_iso_complete with -EXDEV urb->status %d, fifonum %d\n\n",
             "rx_iso_complete", status, fifon);
    } else {
    }
    status = 0;
  } else {
  }
  if (fifo->active != 0 && status == 0) {
    num_isoc_packets = iso_packets[fifon];
    maxlen = (int )fifo->usb_packet_maxlen;
    k = 0;
    goto ldv_46799;
    ldv_46798:
    len = (int )urb->iso_frame_desc[k].actual_length;
    offset = (int )urb->iso_frame_desc[k].offset;
    buf = (__u8 *)(& context_iso_urb->buffer) + (unsigned long )offset;
    iso_status = (unsigned int )urb->iso_frame_desc[k].status;
    if (iso_status != 0U && hfc->disc_flag == 0) {
      if ((hfc_debug & 32768) != 0) {
        printk("\017%s: HFC-S USB: rx_iso_complete ISO packet %i, status: %i\n\n",
               "rx_iso_complete", k, iso_status);
      } else {
      }
    } else {
    }
    if (fifon == 5) {
      if ((hfc_debug & 32768) != 0) {
        printk("\017%s: HFC-S USB: ISO-D-RX lst_urblen:%2d act_urblen:%2d max-urblen:%2d EOF:0x%0x\n",
               "rx_iso_complete", fifo->last_urblen, len, maxlen, (int )eof[5]);
      } else {
      }
      if ((hfc_debug & 32768) != 0) {
        dump_packet("rx_iso_complete", (u_char const *)buf, len);
      } else {
      }
    } else {
    }
    if (fifo->last_urblen != maxlen) {
      hfc->threshold_mask = *(buf + 1UL);
      if (fifon == 5) {
        s0_state_handler(hfc, (int )*buf >> 4);
      } else {
      }
      eof[fifon] = (unsigned int )*buf & 1U;
      if (len > 2) {
        collect_rx_frame(fifo, buf + 2UL, len + -2, len < maxlen ? (int )eof[fifon] : 0);
      } else {
      }
    } else {
      collect_rx_frame(fifo, buf, len, len < maxlen ? (int )eof[fifon] : 0);
    }
    fifo->last_urblen = len;
    k = k + 1;
    ldv_46799: ;
    if (k < num_isoc_packets) {
      goto ldv_46798;
    } else {
    }
    fill_isoc_urb(urb, (fifo->hfc)->dev, (unsigned int )fifo->pipe, (void *)(& context_iso_urb->buffer),
                  num_isoc_packets, (int )fifo->usb_packet_maxlen, (int )fifo->intervall,
                  & rx_iso_complete, urb->context);
    errcode = ldv_usb_submit_urb_39(urb, 32U);
    if (errcode < 0) {
      printk("\vHFC-S USB: error submitting ISO URB: %d\n", errcode);
    } else {
    }
  } else
  if (status != 0 && hfc->disc_flag == 0) {
    printk("\vHFC-S USB: rx_iso_complete : urb->status %d, fifonum %d\n", status,
           fifon);
  } else {
  }
  return;
}
}
static void collect_rx_frame(usb_fifo *fifo , __u8 *data , int len , int finish )
{
  hfcusb_data *hfc ;
  int transp_mode ;
  int fifon ;
  size_t __len ;
  void *__ret ;
  unsigned char *tmp___0 ;
  {
  hfc = fifo->hfc;
  fifon = fifo->fifonum;
  transp_mode = 0;
  if (fifon <= 3 && hfc->b_mode[fifon / 2] == 1) {
    transp_mode = 1;
  } else {
  }
  if ((unsigned long )fifo->skbuff == (unsigned long )((struct sk_buff *)0)) {
    fifo->skbuff = dev_alloc_skb(fifo->max_size + 3U);
    if ((unsigned long )fifo->skbuff == (unsigned long )((struct sk_buff *)0)) {
      printk("\vHFC-S USB: cannot allocate buffer for fifo(%d)\n", fifon);
      return;
    } else {
    }
  } else {
  }
  if (len != 0) {
    if ((fifo->skbuff)->len + (unsigned int )len < fifo->max_size) {
      __len = (size_t )len;
      tmp___0 = skb_put(fifo->skbuff, (unsigned int )len);
      __ret = memcpy((void *)tmp___0, (void const *)data, __len);
    } else {
      if ((hfc_debug & 16384) != 0) {
        printk("\017%s: HCF-USB: got frame exceeded fifo->max_size(%d) fifo(%d)\n",
               "collect_rx_frame", fifo->max_size, fifon);
      } else {
      }
      if ((hfc_debug & 32768) != 0 && (unsigned long )fifo->skbuff != (unsigned long )((struct sk_buff *)0)) {
        dump_packet("collect_rx_frame", (u_char const *)(fifo->skbuff)->data, (int )(fifo->skbuff)->len);
      } else {
      }
      skb_trim(fifo->skbuff, 0U);
    }
  } else {
  }
  if (transp_mode != 0 && (fifo->skbuff)->len > 127U) {
    (*((fifo->hif)->l1l2))(fifo->hif, 290, (void *)fifo->skbuff);
    fifo->skbuff = (struct sk_buff *)0;
    return;
  } else {
  }
  if (finish != 0) {
    if ((fifo->skbuff)->len > 3U && (unsigned int )*((fifo->skbuff)->data + (unsigned long )((fifo->skbuff)->len - 1U)) == 0U) {
      if (fifon == 5) {
        if ((hfc_debug & 128) != 0) {
          printk("\017%s: HFC-S USB: D-RX len(%d)\n", "collect_rx_frame", (fifo->skbuff)->len);
        } else {
        }
        if ((hfc_debug & 128) != 0 && (unsigned long )fifo->skbuff != (unsigned long )((struct sk_buff *)0)) {
          dump_packet("collect_rx_frame", (u_char const *)(fifo->skbuff)->data,
                      (int )(fifo->skbuff)->len);
        } else {
        }
      } else {
      }
      skb_trim(fifo->skbuff, (fifo->skbuff)->len - 3U);
      if (fifon == 7) {
        (*((fifo->hif)->l1l2))(fifo->hif, 322, (void *)fifo->skbuff);
      } else {
        (*((fifo->hif)->l1l2))(fifo->hif, 290, (void *)fifo->skbuff);
      }
      fifo->skbuff = (struct sk_buff *)0;
    } else {
      if ((hfc_debug & 16384) != 0) {
        printk("\017%s: HFC-S USB: OLD_ERROR frame len(%d) fifo(%d)\n", "collect_rx_frame",
               (fifo->skbuff)->len, fifon);
      } else {
      }
      if ((hfc_debug & 32768) != 0 && (unsigned long )fifo->skbuff != (unsigned long )((struct sk_buff *)0)) {
        dump_packet("collect_rx_frame", (u_char const *)(fifo->skbuff)->data, (int )(fifo->skbuff)->len);
      } else {
      }
      skb_trim(fifo->skbuff, 0U);
    }
  } else {
  }
  return;
}
}
static void rx_int_complete(struct urb *urb )
{
  int len ;
  int status ;
  __u8 *buf ;
  __u8 maxlen ;
  __u8 fifon ;
  usb_fifo *fifo ;
  hfcusb_data *hfc ;
  __u8 eof[8U] ;
  {
  fifo = (usb_fifo *)urb->context;
  hfc = fifo->hfc;
  urb->dev = hfc->dev;
  fifon = (__u8 )fifo->fifonum;
  if (fifo->active == 0 || urb->status != 0) {
    if (hfc_debug & 1) {
      printk("\017%s: HFC-S USB: RX-Fifo %i is going down (%i)\n", "rx_int_complete",
             (int )fifon, urb->status);
    } else {
    }
    (fifo->urb)->interval = 0;
    if ((unsigned long )fifo->skbuff != (unsigned long )((struct sk_buff *)0)) {
      dev_kfree_skb_any(fifo->skbuff);
      fifo->skbuff = (struct sk_buff *)0;
    } else {
    }
    return;
  } else {
  }
  len = (int )urb->actual_length;
  buf = (__u8 *)(& fifo->buffer);
  maxlen = fifo->usb_packet_maxlen;
  if ((unsigned int )fifon == 5U) {
    if ((hfc_debug & 32768) != 0) {
      printk("\017%s: HFC-S USB: INT-D-RX lst_urblen:%2d act_urblen:%2d max-urblen:%2d EOF:0x%0x\n",
             "rx_int_complete", fifo->last_urblen, len, (int )maxlen, (int )eof[5]);
    } else {
    }
    if ((hfc_debug & 32768) != 0) {
      dump_packet("rx_int_complete", (u_char const *)buf, len);
    } else {
    }
  } else {
  }
  if (fifo->last_urblen != (int )fifo->usb_packet_maxlen) {
    hfc->threshold_mask = *(buf + 1UL);
    s0_state_handler(hfc, (int )*buf >> 4);
    eof[(int )fifon] = (unsigned int )*buf & 1U;
    if (len > 2) {
      collect_rx_frame(fifo, buf + 2UL, (int )(urb->actual_length - 2U), (int )maxlen > len ? (int )eof[(int )fifon] : 0);
    } else {
    }
  } else {
    collect_rx_frame(fifo, buf, (int )urb->actual_length, (int )maxlen > len ? (int )eof[(int )fifon] : 0);
  }
  fifo->last_urblen = (int )urb->actual_length;
  status = ldv_usb_submit_urb_40(urb, 32U);
  if (status != 0) {
    printk("\016HFC-S USB: %s error resubmitting URB fifo(%d)\n", "rx_int_complete",
           (int )fifon);
  } else {
  }
  return;
}
}
static void start_int_fifo(usb_fifo *fifo )
{
  int errcode ;
  {
  if (hfc_debug & 1) {
    printk("\017%s: HFC-S USB: starting RX INT-URB for fifo:%d\n\n", "start_int_fifo",
           fifo->fifonum);
  } else {
  }
  if ((unsigned long )fifo->urb == (unsigned long )((struct urb *)0)) {
    fifo->urb = ldv_usb_alloc_urb_41(0, 208U);
    if ((unsigned long )fifo->urb == (unsigned long )((struct urb *)0)) {
      return;
    } else {
    }
  } else {
  }
  usb_fill_int_urb(fifo->urb, (fifo->hfc)->dev, (unsigned int )fifo->pipe, (void *)(& fifo->buffer),
                   (int )fifo->usb_packet_maxlen, & rx_int_complete, (void *)fifo,
                   (int )fifo->intervall);
  fifo->active = 1;
  errcode = ldv_usb_submit_urb_42(fifo->urb, 208U);
  if (errcode != 0) {
    printk("\vHFC-S USB: submit URB error(start_int_info): status:%i\n", errcode);
    fifo->active = 0;
    fifo->skbuff = (struct sk_buff *)0;
  } else {
  }
  return;
}
}
static void setup_bchannel(hfcusb_data *hfc , int channel , int mode )
{
  __u8 val ;
  __u8 idx_table[2U] ;
  {
  idx_table[0] = 0U;
  idx_table[1] = 2U;
  if (hfc->disc_flag != 0) {
    return;
  } else {
  }
  if ((hfc_debug & 2) != 0) {
    printk("\017%s: HFC-S USB: setting channel %d to mode %d\n", "setup_bchannel",
           channel, mode);
  } else {
  }
  hfc->b_mode[channel] = mode;
  val = 0U;
  if (mode != 0) {
    val = 8U;
  } else {
  }
  if (mode == 1) {
    val = (__u8 )((unsigned int )val | 2U);
  } else {
  }
  queue_control_request(hfc, 15, (int )idx_table[channel], 1);
  queue_control_request(hfc, 250, (int )val, 1);
  queue_control_request(hfc, 14, 2, 1);
  queue_control_request(hfc, 15, (int )((unsigned int )idx_table[channel] + 1U), 1);
  queue_control_request(hfc, 250, (int )val, 1);
  queue_control_request(hfc, 14, 2, 1);
  val = 64U;
  if (hfc->b_mode[0] != 0) {
    val = (__u8 )((unsigned int )val | 1U);
  } else {
  }
  if (hfc->b_mode[1] != 0) {
    val = (__u8 )((unsigned int )val | 2U);
  } else {
  }
  queue_control_request(hfc, 49, (int )val, 1);
  val = 0U;
  if (hfc->b_mode[0] != 0) {
    val = (__u8 )((unsigned int )val | 1U);
  } else {
  }
  if (hfc->b_mode[1] != 0) {
    val = (__u8 )((unsigned int )val | 2U);
  } else {
  }
  queue_control_request(hfc, 51, (int )val, 1);
  if (mode == 0) {
    if (channel != 0) {
      handle_led(hfc, 9);
    } else {
      handle_led(hfc, 6);
    }
  } else
  if (channel != 0) {
    handle_led(hfc, 8);
  } else {
    handle_led(hfc, 5);
  }
  return;
}
}
static void hfc_usb_l2l1(struct hisax_if *my_hisax_if , int pr , void *arg )
{
  usb_fifo *fifo ;
  hfcusb_data *hfc ;
  unsigned long __ms ;
  unsigned long tmp ;
  int tmp___0 ;
  {
  fifo = (usb_fifo *)my_hisax_if->priv;
  hfc = fifo->hfc;
  switch (pr) {
  case 256: ;
  if (fifo->fifonum == 4) {
    if ((hfc_debug & 2) != 0) {
      printk("\017%s: HFC_USB: hfc_usb_d_l2l1 D-chan: PH_ACTIVATE | REQUEST\n", "hfc_usb_l2l1");
    } else {
    }
    if ((unsigned int )((unsigned char )hfc->l1_state) != 3U && (unsigned int )((unsigned char )hfc->l1_state) != 7U) {
      (*(hfc->d_if.ifc.l1l2))(& hfc->d_if.ifc, 274, (void *)0);
      if ((hfc_debug & 2) != 0) {
        printk("\017%s: HFC-S USB: PH_DEACTIVATE | INDICATION sent (not state 3 or 7)\n",
               "hfc_usb_l2l1");
      } else {
      }
    } else
    if ((unsigned int )((unsigned char )hfc->l1_state) == 7U) {
      (*(hfc->d_if.ifc.l1l2))(& hfc->d_if.ifc, 258, (void *)0);
      if ((hfc_debug & 2) != 0) {
        printk("\017%s: HFC-S USB: PH_ACTIVATE | INDICATION sent again ;)\n", "hfc_usb_l2l1");
      } else {
      }
    } else {
      queue_control_request(hfc, 48, 20, 1);
      if (1) {
        __const_udelay(4295000UL);
      } else {
        __ms = 1UL;
        goto ldv_46850;
        ldv_46849:
        __const_udelay(4295000UL);
        ldv_46850:
        tmp = __ms;
        __ms = __ms - 1UL;
        if (tmp != 0UL) {
          goto ldv_46849;
        } else {
        }
      }
      queue_control_request(hfc, 48, 4, 1);
      tmp___0 = timer_pending((struct timer_list const *)(& hfc->t3_timer));
      if (tmp___0 == 0) {
        hfc->t3_timer.expires = (unsigned long )jiffies + 2000UL;
        add_timer(& hfc->t3_timer);
      } else {
      }
    }
  } else {
    if ((hfc_debug & 2) != 0) {
      printk("\017%s: HFC_USB: hfc_usb_d_l2l1 B-chan: PH_ACTIVATE | REQUEST\n", "hfc_usb_l2l1");
    } else {
    }
    setup_bchannel(hfc, fifo->fifonum != 0, (int )((long )arg));
    (*((fifo->hif)->l1l2))(fifo->hif, 258, (void *)0);
  }
  goto ldv_46852;
  case 272: ;
  if (fifo->fifonum == 4) {
    if ((hfc_debug & 2) != 0) {
      printk("\017%s: HFC_USB: hfc_usb_d_l2l1 D-chan: PH_DEACTIVATE | REQUEST\n",
             "hfc_usb_l2l1");
    } else {
    }
  } else {
    if ((hfc_debug & 2) != 0) {
      printk("\017%s: HFC_USB: hfc_usb_d_l2l1 Bx-chan: PH_DEACTIVATE | REQUEST\n",
             "hfc_usb_l2l1");
    } else {
    }
    setup_bchannel(hfc, fifo->fifonum != 0, 0);
    (*((fifo->hif)->l1l2))(fifo->hif, 274, (void *)0);
  }
  goto ldv_46852;
  case 288: ;
  if ((unsigned long )fifo->skbuff != (unsigned long )((struct sk_buff *)0) && fifo->delete_flg != 0) {
    dev_kfree_skb_any(fifo->skbuff);
    fifo->skbuff = (struct sk_buff *)0;
    fifo->delete_flg = 0;
  } else {
  }
  fifo->skbuff = (struct sk_buff *)arg;
  goto ldv_46852;
  default: ;
  if ((hfc_debug & 2) != 0) {
    printk("\017%s: HFC_USB: hfc_usb_d_l2l1: unknown state : %#x\n", "hfc_usb_l2l1",
           pr);
  } else {
  }
  goto ldv_46852;
  }
  ldv_46852: ;
  return;
}
}
static int hfc_usb_init(hfcusb_data *hfc )
{
  usb_fifo *fifo ;
  int i ;
  u_char b ;
  struct hisax_b_if *p_b_if[2U] ;
  int tmp ;
  {
  tmp = usb_control_msg(hfc->dev, (unsigned int )hfc->ctrl_in_pipe, 1, 192, 0, 22,
                        (void *)(& b), 1, 20);
  if (tmp != 1) {
    printk("\016HFC-USB: cannot read chip id\n");
    return (1);
  } else {
  }
  if ((unsigned int )b != 64U) {
    printk("\016HFC-S USB: Invalid chip id 0x%02x\n", (int )b);
    return (1);
  } else {
  }
  usb_set_interface(hfc->dev, hfc->if_used, hfc->alt_used);
  usb_control_msg(hfc->dev, (unsigned int )hfc->ctrl_out_pipe, 0, 64, 8, 0, (void *)0,
                  0, 20);
  usb_control_msg(hfc->dev, (unsigned int )hfc->ctrl_out_pipe, 0, 64, 16, 0, (void *)0,
                  0, 20);
  usb_control_msg(hfc->dev, (unsigned int )hfc->ctrl_out_pipe, 0, 64, (int )((__u16 )((int )((short )(hfc->packet_size / 8)) | (int )((short )(hfc->packet_size / 8 << 4)))),
                  7, (void *)0, 0, 20);
  usb_control_msg(hfc->dev, (unsigned int )hfc->ctrl_out_pipe, 0, 64, (int )((__u16 )hfc->iso_packet_size),
                  6, (void *)0, 0, 20);
  usb_control_msg(hfc->dev, (unsigned int )hfc->ctrl_out_pipe, 0, 64, 0, 21, (void *)0,
                  0, 20);
  usb_control_msg(hfc->dev, (unsigned int )hfc->ctrl_out_pipe, 0, 64, 1, 20, (void *)0,
                  0, 20);
  usb_control_msg(hfc->dev, (unsigned int )hfc->ctrl_out_pipe, 0, 64, 136, 12, (void *)0,
                  0, 20);
  fifo = (usb_fifo *)(& hfc->fifos);
  i = 0;
  goto ldv_46864;
  ldv_46863:
  usb_control_msg(hfc->dev, (unsigned int )hfc->ctrl_out_pipe, 0, 64, (int )((__u16 )i),
                  15, (void *)0, 0, 20);
  (fifo + (unsigned long )i)->skbuff = (struct sk_buff *)0;
  (fifo + (unsigned long )i)->max_size = i <= 3 ? 2048U : 260U;
  (fifo + (unsigned long )i)->last_urblen = 0;
  usb_control_msg(hfc->dev, (unsigned int )hfc->ctrl_out_pipe, 0, 64, i <= 3 ? 0 : 2,
                  251, (void *)0, 0, 20);
  usb_control_msg(hfc->dev, (unsigned int )hfc->ctrl_out_pipe, 0, 64, i == 4 ? 9 : 8,
                  250, (void *)0, 0, 20);
  usb_control_msg(hfc->dev, (unsigned int )hfc->ctrl_out_pipe, 0, 64, 2, 14, (void *)0,
                  0, 20);
  i = i + 1;
  ldv_46864: ;
  if (i <= 7) {
    goto ldv_46863;
  } else {
  }
  usb_control_msg(hfc->dev, (unsigned int )hfc->ctrl_out_pipe, 0, 64, 15, 55, (void *)0,
                  0, 20);
  usb_control_msg(hfc->dev, (unsigned int )hfc->ctrl_out_pipe, 0, 64, 19, 48, (void *)0,
                  0, 20);
  usb_control_msg(hfc->dev, (unsigned int )hfc->ctrl_out_pipe, 0, 64, 3, 48, (void *)0,
                  0, 20);
  usb_control_msg(hfc->dev, (unsigned int )hfc->ctrl_out_pipe, 0, 64, 0, 51, (void *)0,
                  0, 20);
  usb_control_msg(hfc->dev, (unsigned int )hfc->ctrl_out_pipe, 0, 64, 64, 49, (void *)0,
                  0, 20);
  hfc->b_mode[0] = 0;
  hfc->b_mode[1] = 0;
  hfc->l1_activated = 0;
  hfc->disc_flag = 0;
  hfc->led_state = 0U;
  hfc->old_led_state = 0U;
  reg_timer_1(& hfc->t3_timer);
  hfc->t3_timer.data = (unsigned long )hfc;
  hfc->t3_timer.function = (void (*)(unsigned long ))(& l1_timer_expire_t3);
  reg_timer_1(& hfc->t4_timer);
  hfc->t4_timer.data = (unsigned long )hfc;
  hfc->t4_timer.function = (void (*)(unsigned long ))(& l1_timer_expire_t4);
  hfc->ctrl_read.bRequestType = 192U;
  hfc->ctrl_read.bRequest = 1U;
  hfc->ctrl_read.wLength = 1U;
  hfc->ctrl_write.bRequestType = 64U;
  hfc->ctrl_write.bRequest = 0U;
  hfc->ctrl_write.wLength = 0U;
  usb_fill_control_urb(hfc->ctrl_urb, hfc->dev, (unsigned int )hfc->ctrl_out_pipe,
                       (unsigned char *)(& hfc->ctrl_write), (void *)0, 0, & ctrl_complete,
                       (void *)hfc);
  i = 0;
  goto ldv_46867;
  ldv_46866:
  hfc->fifos[i].iso[0].purb = (struct urb *)0;
  hfc->fifos[i].iso[1].purb = (struct urb *)0;
  hfc->fifos[i].active = 0;
  i = i + 1;
  ldv_46867: ;
  if (i <= 7) {
    goto ldv_46866;
  } else {
  }
  hfc->d_if.owner = & __this_module;
  hfc->d_if.ifc.priv = (void *)(& hfc->fifos) + 4U;
  hfc->d_if.ifc.l2l1 = & hfc_usb_l2l1;
  i = 0;
  goto ldv_46870;
  ldv_46869:
  hfc->b_if[i].ifc.priv = (void *)(& hfc->fifos) + (unsigned long )(i * 2);
  hfc->b_if[i].ifc.l2l1 = & hfc_usb_l2l1;
  p_b_if[i] = (struct hisax_b_if *)(& hfc->b_if) + (unsigned long )i;
  i = i + 1;
  ldv_46870: ;
  if (i <= 1) {
    goto ldv_46869;
  } else {
  }
  hfc->protocol = 2;
  i = hisax_register(& hfc->d_if, (struct hisax_b_if **)(& p_b_if), (char *)"hfc_usb",
                     hfc->protocol);
  if (i != 0) {
    printk("\016HFC-S USB: hisax_register -> %d\n", i);
    return (i);
  } else {
  }
  hfc_debug = (int )debug;
  i = 0;
  goto ldv_46873;
  ldv_46872:
  hfc->fifos[i].hif = & (p_b_if[i / 2])->ifc;
  i = i + 1;
  ldv_46873: ;
  if (i <= 3) {
    goto ldv_46872;
  } else {
  }
  i = 4;
  goto ldv_46876;
  ldv_46875:
  hfc->fifos[i].hif = & hfc->d_if.ifc;
  i = i + 1;
  ldv_46876: ;
  if (i <= 7) {
    goto ldv_46875;
  } else {
  }
  if (hfc->cfg_used == 2 || hfc->cfg_used == 1) {
    start_int_fifo((usb_fifo *)(& hfc->fifos) + 5UL);
    if (hfc->fifos[7].pipe != 0) {
      start_int_fifo((usb_fifo *)(& hfc->fifos) + 7UL);
    } else {
    }
    start_int_fifo((usb_fifo *)(& hfc->fifos) + 1UL);
    start_int_fifo((usb_fifo *)(& hfc->fifos) + 3UL);
  } else {
  }
  if (hfc->cfg_used == 4 || hfc->cfg_used == 3) {
    start_isoc_chain((usb_fifo *)(& hfc->fifos) + 5UL, 8, & rx_iso_complete, 16);
    if (hfc->fifos[7].pipe != 0) {
      start_isoc_chain((usb_fifo *)(& hfc->fifos) + 7UL, 8, & rx_iso_complete, 16);
    } else {
    }
    start_isoc_chain((usb_fifo *)(& hfc->fifos) + 1UL, 8, & rx_iso_complete, 16);
    start_isoc_chain((usb_fifo *)(& hfc->fifos) + 3UL, 8, & rx_iso_complete, 16);
  } else {
  }
  start_isoc_chain((usb_fifo *)(& hfc->fifos) + 4UL, 8, & tx_iso_complete, 1);
  start_isoc_chain((usb_fifo *)(& hfc->fifos), 8, & tx_iso_complete, 1);
  start_isoc_chain((usb_fifo *)(& hfc->fifos) + 2UL, 8, & tx_iso_complete, 1);
  handle_led(hfc, 1);
  return (0);
}
}
static int hfc_usb_probe(struct usb_interface *intf , struct usb_device_id const *id )
{
  struct usb_device *dev ;
  struct usb_device *tmp ;
  hfcusb_data *context ;
  struct usb_host_interface *iface ;
  struct usb_host_interface *iface_used ;
  struct usb_host_endpoint *ep ;
  int ifnum ;
  int i ;
  int idx ;
  int alt_idx ;
  int probe_alt_setting ;
  int vend_idx ;
  int cfg_used ;
  int *vcf ;
  int attr ;
  int cfg_found ;
  int cidx ;
  int ep_addr ;
  int cmptbl[16U] ;
  int small_match ;
  int iso_packet_size ;
  int packet_size ;
  int alt_used ;
  hfcsusb_vdata *driver_info ;
  size_t __len ;
  void *__ret ;
  void *tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  int tmp___8 ;
  {
  tmp = interface_to_usbdev(intf);
  dev = tmp;
  iface = intf->cur_altsetting;
  iface_used = (struct usb_host_interface *)0;
  ifnum = (int )iface->desc.bInterfaceNumber;
  alt_used = 0;
  vend_idx = 65535;
  i = 0;
  goto ldv_46907;
  ldv_46906: ;
  if ((int )dev->descriptor.idVendor == (int )hfcusb_idtab[i].idVendor && (int )dev->descriptor.idProduct == (int )hfcusb_idtab[i].idProduct) {
    vend_idx = i;
    goto ldv_46905;
  } else {
  }
  ldv_46905:
  i = i + 1;
  ldv_46907: ;
  if ((unsigned int )hfcusb_idtab[i].idVendor != 0U) {
    goto ldv_46906;
  } else {
  }
  printk("\016HFC-S USB: probing interface(%d) actalt(%d) minor(%d)\n", ifnum, (int )iface->desc.bAlternateSetting,
         intf->minor);
  if (vend_idx != 65535) {
    alt_idx = 0;
    small_match = 65535;
    iso_packet_size = 16;
    packet_size = 64;
    goto ldv_46922;
    ldv_46921:
    iface = intf->altsetting + (unsigned long )alt_idx;
    probe_alt_setting = (int )iface->desc.bAlternateSetting;
    cfg_used = 0;
    goto ldv_46919;
    ldv_46918:
    cfg_found = 1;
    vcf = (int *)(& validconf) + (unsigned long )cfg_used;
    ep = iface->endpoint;
    __len = 64UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& cmptbl), (void const *)vcf, __len);
    } else {
      __ret = memcpy((void *)(& cmptbl), (void const *)vcf, __len);
    }
    i = 0;
    goto ldv_46913;
    ldv_46912:
    ep_addr = (int )ep->desc.bEndpointAddress;
    idx = ((ep_addr & 127) + -1) * 2;
    if ((ep_addr & 128) != 0) {
      idx = idx + 1;
    } else {
    }
    attr = (int )ep->desc.bmAttributes;
    if (cmptbl[idx] == 1) {
      cfg_found = 0;
    } else {
    }
    if (attr == 3 && cmptbl[idx] == 5) {
      cmptbl[idx] = 1;
    } else {
    }
    if (attr == 2 && cmptbl[idx] == 4) {
      cmptbl[idx] = 1;
    } else {
    }
    if (attr == 1 && cmptbl[idx] == 3) {
      cmptbl[idx] = 1;
    } else {
    }
    if (attr == 3 && (int )ep->desc.bInterval < *(vcf + 17UL)) {
      cfg_found = 0;
    } else {
    }
    ep = ep + 1;
    i = i + 1;
    ldv_46913: ;
    if ((int )iface->desc.bNumEndpoints > i) {
      goto ldv_46912;
    } else {
    }
    i = 0;
    goto ldv_46916;
    ldv_46915: ;
    if (cmptbl[i] != 2 && cmptbl[i] != 1) {
      cfg_found = 0;
    } else {
    }
    i = i + 1;
    ldv_46916: ;
    if (i <= 15) {
      goto ldv_46915;
    } else {
    }
    if (cfg_found != 0) {
      if (cfg_used < small_match) {
        small_match = cfg_used;
        alt_used = probe_alt_setting;
        iface_used = iface;
      } else {
      }
    } else {
    }
    cfg_used = cfg_used + 1;
    ldv_46919: ;
    if (validconf[cfg_used][0] != 0) {
      goto ldv_46918;
    } else {
    }
    alt_idx = alt_idx + 1;
    ldv_46922: ;
    if ((unsigned int )alt_idx < intf->num_altsetting) {
      goto ldv_46921;
    } else {
    }
    if (small_match != 65535) {
      iface = iface_used;
      tmp___0 = kzalloc(4760UL, 208U);
      context = (hfcusb_data *)tmp___0;
      if ((unsigned long )context == (unsigned long )((hfcusb_data *)0)) {
        return (-12);
      } else {
      }
      ep = iface->endpoint;
      vcf = (int *)(& validconf) + (unsigned long )small_match;
      i = 0;
      goto ldv_46930;
      ldv_46929:
      ep_addr = (int )ep->desc.bEndpointAddress;
      idx = ((ep_addr & 127) + -1) * 2;
      if ((ep_addr & 128) != 0) {
        idx = idx + 1;
      } else {
      }
      cidx = idx & 7;
      attr = (int )ep->desc.bmAttributes;
      if (*(vcf + (unsigned long )idx) != 2 && *(vcf + (unsigned long )idx) != 1) {
        switch (attr) {
        case 3:
        tmp___1 = __create_pipe(dev, (unsigned int )ep->desc.bEndpointAddress);
        context->fifos[cidx].pipe = (int )(tmp___1 | 1073741952U);
        context->fifos[cidx].usb_transfer_mode = 0U;
        packet_size = (int )ep->desc.wMaxPacketSize;
        goto ldv_46925;
        case 2: ;
        if ((ep_addr & 128) != 0) {
          tmp___2 = __create_pipe(dev, (unsigned int )ep->desc.bEndpointAddress);
          context->fifos[cidx].pipe = (int )(tmp___2 | 3221225600U);
        } else {
          tmp___3 = __create_pipe(dev, (unsigned int )ep->desc.bEndpointAddress);
          context->fifos[cidx].pipe = (int )(tmp___3 | 3221225472U);
        }
        context->fifos[cidx].usb_transfer_mode = 1U;
        packet_size = (int )ep->desc.wMaxPacketSize;
        goto ldv_46925;
        case 1: ;
        if ((ep_addr & 128) != 0) {
          tmp___4 = __create_pipe(dev, (unsigned int )ep->desc.bEndpointAddress);
          context->fifos[cidx].pipe = (int )(tmp___4 | 128U);
        } else {
          tmp___5 = __create_pipe(dev, (unsigned int )ep->desc.bEndpointAddress);
          context->fifos[cidx].pipe = (int )tmp___5;
        }
        context->fifos[cidx].usb_transfer_mode = 2U;
        iso_packet_size = (int )ep->desc.wMaxPacketSize;
        goto ldv_46925;
        default:
        context->fifos[cidx].pipe = 0;
        }
        ldv_46925: ;
        if (context->fifos[cidx].pipe != 0) {
          context->fifos[cidx].fifonum = cidx;
          context->fifos[cidx].hfc = context;
          context->fifos[cidx].usb_packet_maxlen = (__u8 )ep->desc.wMaxPacketSize;
          context->fifos[cidx].intervall = ep->desc.bInterval;
          context->fifos[cidx].skbuff = (struct sk_buff *)0;
        } else {
        }
      } else {
      }
      ep = ep + 1;
      i = i + 1;
      ldv_46930: ;
      if ((int )iface->desc.bNumEndpoints > i) {
        goto ldv_46929;
      } else {
      }
      context->dev = dev;
      context->if_used = ifnum;
      context->alt_used = alt_used;
      context->ctrl_paksize = (int )dev->descriptor.bMaxPacketSize0;
      context->cfg_used = *(vcf + 16UL);
      context->vend_idx = vend_idx;
      context->packet_size = packet_size;
      context->iso_packet_size = iso_packet_size;
      tmp___6 = __create_pipe(context->dev, 0U);
      context->ctrl_in_pipe = (int )(tmp___6 | 2147483776U);
      tmp___7 = __create_pipe(context->dev, 0U);
      context->ctrl_out_pipe = (int )(tmp___7 | 2147483648U);
      driver_info = (hfcsusb_vdata *)hfcusb_idtab[vend_idx].driver_info;
      context->ctrl_urb = ldv_usb_alloc_urb_43(0, 208U);
      if ((unsigned long )context->ctrl_urb == (unsigned long )((struct urb *)0)) {
        printk("\f%s: No memory for control urb\n", driver_info->vend_name);
        kfree((void const *)context);
        return (-12);
      } else {
      }
      printk("\016HFC-S USB: detected \"%s\"\n", driver_info->vend_name);
      if (hfc_debug & 1) {
        printk("\017%s: HFC-S USB: Endpoint-Config: %s (if=%d alt=%d), E-Channel(%d)\n",
               "hfc_usb_probe", conf_str[small_match], context->if_used, context->alt_used,
               validconf[small_match][18]);
      } else {
      }
      tmp___8 = hfc_usb_init(context);
      if (tmp___8 != 0) {
        usb_kill_urb(context->ctrl_urb);
        usb_free_urb(context->ctrl_urb);
        context->ctrl_urb = (struct urb *)0;
        kfree((void const *)context);
        return (-5);
      } else {
      }
      usb_set_intfdata(intf, (void *)context);
      return (0);
    } else {
    }
  } else {
    printk("\016HFC-S USB: no valid vendor found in USB descriptor\n");
  }
  return (-5);
}
}
static void hfc_usb_disconnect(struct usb_interface *intf )
{
  hfcusb_data *context ;
  void *tmp ;
  int i ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = usb_get_intfdata(intf);
  context = (hfcusb_data *)tmp;
  handle_led(context, 2);
  schedule_timeout(2L);
  printk("\016HFC-S USB: device disconnect\n");
  context->disc_flag = 1;
  usb_set_intfdata(intf, (void *)0);
  tmp___0 = timer_pending((struct timer_list const *)(& context->t3_timer));
  if (tmp___0 != 0) {
    ldv_del_timer_44(& context->t3_timer);
  } else {
  }
  tmp___1 = timer_pending((struct timer_list const *)(& context->t4_timer));
  if (tmp___1 != 0) {
    ldv_del_timer_45(& context->t4_timer);
  } else {
  }
  i = 0;
  goto ldv_46940;
  ldv_46939: ;
  if ((unsigned int )((unsigned char )context->fifos[i].usb_transfer_mode) == 2U) {
    if (context->fifos[i].active > 0) {
      stop_isoc_chain((usb_fifo *)(& context->fifos) + (unsigned long )i);
      if (hfc_debug & 1) {
        printk("\017%s: HFC-S USB: %s stopping ISOC chain Fifo(%i)\n", "hfc_usb_disconnect",
               "hfc_usb_disconnect", i);
      } else {
      }
    } else {
    }
  } else {
    if (context->fifos[i].active > 0) {
      context->fifos[i].active = 0;
      if (hfc_debug & 1) {
        printk("\017%s: HFC-S USB: %s unlinking URB for Fifo(%i)\n", "hfc_usb_disconnect",
               "hfc_usb_disconnect", i);
      } else {
      }
    } else {
    }
    usb_kill_urb(context->fifos[i].urb);
    usb_free_urb(context->fifos[i].urb);
    context->fifos[i].urb = (struct urb *)0;
  }
  context->fifos[i].active = 0;
  i = i + 1;
  ldv_46940: ;
  if (i <= 7) {
    goto ldv_46939;
  } else {
  }
  usb_kill_urb(context->ctrl_urb);
  usb_free_urb(context->ctrl_urb);
  context->ctrl_urb = (struct urb *)0;
  hisax_unregister(& context->d_if);
  kfree((void const *)context);
  return;
}
}
static struct usb_driver hfc_drv =
     {"hfc_usb", & hfc_usb_probe, & hfc_usb_disconnect, 0, 0, 0, 0, 0, 0, (struct usb_device_id const *)(& hfcusb_idtab),
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, {{0, 0, 0, 0, (_Bool)0,
                                                                 0, 0, 0, 0, 0, 0,
                                                                 0, 0, 0, 0}, 0},
    (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0};
static void hfc_usb_mod_exit(void)
{
  {
  ldv_usb_deregister_46(& hfc_drv);
  printk("\016HFC-S USB: module removed\n");
  return;
}
}
static int hfc_usb_mod_init(void)
{
  char revstr[30U] ;
  char datestr[30U] ;
  char dummy[30U] ;
  int tmp ;
  {
  sscanf(hfcusb_revision, "%s %s $ %s %s %s $ ", (char *)(& dummy), (char *)(& revstr),
         (char *)(& dummy), (char *)(& datestr), (char *)(& dummy));
  printk("\016HFC-S USB: driver module revision %s date %s loaded, (debug=%i)\n",
         (char *)(& revstr), (char *)(& datestr), debug);
  tmp = ldv_usb_register_driver_47(& hfc_drv, & __this_module, "hfc_usb");
  if (tmp != 0) {
    printk("\016HFC-S USB: Unable to register HFC-S USB module at usb stack\n");
    return (-1);
  } else {
  }
  return (0);
}
}
struct usb_device_id const __mod_usb__hfcusb_idtab_device_table ;
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
extern void ldv_check_final_state(void) ;
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_1 == (unsigned long )timer) {
    if (ldv_timer_state_1 == 2 || pending_flag != 0) {
      ldv_timer_list_1 = timer;
      ldv_timer_list_1->data = data;
      ldv_timer_state_1 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_1(timer);
  ldv_timer_list_1->data = data;
  return;
}
}
void choose_timer_1(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_1 = 2;
  return;
}
}
int reg_timer_1(struct timer_list *timer )
{
  {
  ldv_timer_list_1 = timer;
  ldv_timer_state_1 = 1;
  return (0);
}
}
void choose_timer_2(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_2 = 2;
  return;
}
}
int reg_timer_2(struct timer_list *timer )
{
  {
  ldv_timer_list_2 = timer;
  ldv_timer_state_2 = 1;
  return (0);
}
}
void activate_pending_timer_2(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_2 == (unsigned long )timer) {
    if (ldv_timer_state_2 == 2 || pending_flag != 0) {
      ldv_timer_list_2 = timer;
      ldv_timer_list_2->data = data;
      ldv_timer_state_2 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_2(timer);
  ldv_timer_list_2->data = data;
  return;
}
}
void ldv_usb_driver_3(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1560UL);
  hfc_drv_group1 = (struct usb_interface *)tmp;
  return;
}
}
void disable_suitable_timer_2(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_2) {
    ldv_timer_state_2 = 0;
    return;
  } else {
  }
  return;
}
}
void disable_suitable_timer_1(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_1) {
    ldv_timer_state_1 = 0;
    return;
  } else {
  }
  return;
}
}
int main(void)
{
  struct usb_device_id *ldvarg0 ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(32UL);
  ldvarg0 = (struct usb_device_id *)tmp;
  ldv_initialize();
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 1;
  ldv_47028:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_1 != 0) {
    choose_timer_1(ldv_timer_list_1);
  } else {
  }
  goto ldv_47014;
  case 1: ;
  if (ldv_state_variable_0 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      hfc_usb_mod_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_47018;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = hfc_usb_mod_init();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_47018;
    default:
    ldv_stop();
    }
    ldv_47018: ;
  } else {
  }
  goto ldv_47014;
  case 2: ;
  if (ldv_state_variable_3 != 0) {
    tmp___2 = __VERIFIER_nondet_int();
    switch (tmp___2) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      ldv_retval_1 = hfc_usb_probe(hfc_drv_group1, (struct usb_device_id const *)ldvarg0);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_3 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_47023;
    case 1: ;
    if (ldv_state_variable_3 == 2 && usb_counter == 0) {
      hfc_usb_disconnect(hfc_drv_group1);
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_47023;
    default:
    ldv_stop();
    }
    ldv_47023: ;
  } else {
  }
  goto ldv_47014;
  case 3: ;
  if (ldv_state_variable_2 != 0) {
    choose_timer_2(ldv_timer_list_2);
  } else {
  }
  goto ldv_47014;
  default:
  ldv_stop();
  }
  ldv_47014: ;
  goto ldv_47028;
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
void *ldv_malloc(size_t size ) ;
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
struct sk_buff *ldv_skb_clone_32(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_usb_submit_urb_33(struct urb *ldv_func_arg1 , gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_submit_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_del_timer_34(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_35(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
struct urb *ldv_usb_alloc_urb_36(int ldv_func_arg1 , gfp_t flags )
{
  struct urb *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_alloc_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_usb_submit_urb_37(struct urb *ldv_func_arg1 , gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_submit_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_usb_submit_urb_38(struct urb *ldv_func_arg1 , gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_submit_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_usb_submit_urb_39(struct urb *ldv_func_arg1 , gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_submit_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_usb_submit_urb_40(struct urb *ldv_func_arg1 , gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_submit_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
struct urb *ldv_usb_alloc_urb_41(int ldv_func_arg1 , gfp_t flags )
{
  struct urb *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_alloc_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_usb_submit_urb_42(struct urb *ldv_func_arg1 , gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_submit_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
struct urb *ldv_usb_alloc_urb_43(int ldv_func_arg1 , gfp_t flags )
{
  struct urb *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_alloc_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_del_timer_44(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_45(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_usb_deregister_46(struct usb_driver *arg )
{
  {
  usb_deregister(arg);
  ldv_state_variable_3 = 0;
  return;
}
}
int ldv_usb_register_driver_47(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = usb_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_3 = 1;
  usb_counter = 0;
  ldv_usb_driver_3();
  return (ldv_func_res);
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
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return ldv_malloc(sizeof(struct sk_buff));
}
void add_timer(struct timer_list *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int hisax_register(struct hisax_d_if *arg0, struct hisax_b_if **arg1, char *arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void hisax_unregister(struct hisax_d_if *arg0) {
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
struct page___0 *ldv_some_page() {
  return ldv_malloc(sizeof(struct page___0));
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pskb_expand_head(struct sk_buff *arg0, int arg1, int arg2, gfp_t arg3) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
struct sk_buff *skb_clone(struct sk_buff *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct sk_buff));
}
struct sk_buff *skb_copy(const struct sk_buff *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct sk_buff));
}
unsigned char *skb_pull(struct sk_buff *arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(unsigned char));
}
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  unsigned char *ret_val = arg0->data + arg0->tail;
  arg0->tail += arg1;
  return ret_val;
}
void skb_trim(struct sk_buff *arg0, unsigned int arg1) {
  return;
}
struct urb *usb_alloc_urb(int arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct urb));
}
int __VERIFIER_nondet_int(void);
int usb_control_msg(struct usb_device *arg0, unsigned int arg1, __u8 arg2, __u8 arg3, __u16 arg4, __u16 arg5, void *arg6, __u16 arg7, int arg8) {
  return __VERIFIER_nondet_int();
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
void usb_free_urb(struct urb *arg0) {
  return;
}
void usb_kill_urb(struct urb *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_set_interface(struct usb_device *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_submit_urb(struct urb *arg0, gfp_t arg1) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
