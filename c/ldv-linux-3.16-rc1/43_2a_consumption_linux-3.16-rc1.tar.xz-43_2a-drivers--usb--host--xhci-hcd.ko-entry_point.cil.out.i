extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef __builtin_va_list __gnuc_va_list;
typedef __gnuc_va_list va_list;
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
typedef __u16 __le16;
typedef __u32 __le32;
typedef __u64 __le64;
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
struct va_format {
   char const *fmt ;
   va_list *va ;
};
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
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
struct __anonstruct_ldv_14032_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_14036_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_14037_135 {
   struct __anonstruct_ldv_14032_136 ldv_14032 ;
   struct __anonstruct_ldv_14036_137 ldv_14036 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_14037_135 ldv_14037 ;
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
union __anonunion_ldv_14146_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_14152_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14162_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14164_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14162_144 ldv_14162 ;
   int units ;
};
struct __anonstruct_ldv_14166_142 {
   union __anonunion_ldv_14164_143 ldv_14164 ;
   atomic_t _count ;
};
union __anonunion_ldv_14168_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_14166_142 ldv_14166 ;
   unsigned int active ;
};
struct __anonstruct_ldv_14169_139 {
   union __anonunion_ldv_14152_140 ldv_14152 ;
   union __anonunion_ldv_14168_141 ldv_14168 ;
};
struct __anonstruct_ldv_14176_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14181_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_14176_146 ldv_14176 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_14187_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_14146_138 ldv_14146 ;
   struct __anonstruct_ldv_14169_139 ldv_14169 ;
   union __anonunion_ldv_14181_145 ldv_14181 ;
   union __anonunion_ldv_14187_147 ldv_14187 ;
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
union __anonunion_ldv_14550_153 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_14550_153 ldv_14550 ;
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
union __anonunion_ldv_14694_154 {
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
   union __anonunion_ldv_14694_154 ldv_14694 ;
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
union __anonunion_ldv_15369_155 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_15369_155 ldv_15369 ;
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
struct __anonstruct_ldv_15989_157 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_15995_158 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_15996_156 {
   struct __anonstruct_ldv_15989_157 ldv_15989 ;
   struct __anonstruct_ldv_15995_158 ldv_15995 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_15996_156 ldv_15996 ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct usb_host_endpoint;
struct urb;
struct usb_device;
struct usb_hcd;
struct platform_device;
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
union __anonunion_ldv_17982_162 {
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
   union __anonunion_ldv_17982_162 ldv_17982 ;
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
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct dma_pool;
struct msix_entry {
   u32 vector ;
   u16 entry ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
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
enum usb3_link_state {
    USB3_LPM_U0 = 0,
    USB3_LPM_U1 = 1,
    USB3_LPM_U2 = 2,
    USB3_LPM_U3 = 3
} ;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_25697_166 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_25698_165 {
   struct __anonstruct_ldv_25697_166 ldv_25697 ;
};
struct lockref {
   union __anonunion_ldv_25698_165 ldv_25698 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_25721_168 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_25723_167 {
   struct __anonstruct_ldv_25721_168 ldv_25721 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_25723_167 ldv_25723 ;
   unsigned char const *name ;
};
struct dentry_operations;
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
   struct lockref d_lockref ;
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
struct __anonstruct_ldv_26084_171 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_26086_170 {
   struct __anonstruct_ldv_26084_171 ldv_26084 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_26086_170 ldv_26086 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
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
struct export_operations;
struct iovec;
struct kiocb;
struct pipe_inode_info;
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
struct __anonstruct_kprojid_t_173 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_173 kprojid_t;
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
union __anonunion_ldv_26885_174 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_26885_174 ldv_26885 ;
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
union __anonunion_ldv_27300_177 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_27320_178 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_27337_179 {
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
   union __anonunion_ldv_27300_177 ldv_27300 ;
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
   union __anonunion_ldv_27320_178 ldv_27320 ;
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
   union __anonunion_ldv_27337_179 ldv_27337 ;
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
union __anonunion_f_u_180 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_180 f_u ;
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
struct files_struct;
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
union __anonunion_ldv_30156_194 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_30164_195 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_30177_197 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_30178_196 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_30177_197 ldv_30177 ;
};
union __anonunion_type_data_198 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_200 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_30193_199 {
   union __anonunion_payload_200 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_30156_194 ldv_30156 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_30164_195 ldv_30164 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_30178_196 ldv_30178 ;
   union __anonunion_type_data_198 type_data ;
   union __anonunion_ldv_30193_199 ldv_30193 ;
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
struct usb_anchor {
   struct list_head urb_list ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
   atomic_t suspend_wakeups ;
   unsigned char poisoned : 1 ;
};
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
struct giveback_urb_bh {
   bool running ;
   spinlock_t lock ;
   struct list_head head ;
   struct tasklet_struct bh ;
   struct usb_host_endpoint *completing_ep ;
};
struct hc_driver;
struct usb_phy;
struct usb_hcd {
   struct usb_bus self ;
   struct kref kref ;
   char const *product_desc ;
   int speed ;
   char irq_descr[24U] ;
   struct timer_list rh_timer ;
   struct urb *status_urb ;
   struct work_struct wakeup_work ;
   struct hc_driver const *driver ;
   struct usb_phy *phy ;
   unsigned long flags ;
   unsigned char rh_registered : 1 ;
   unsigned char rh_pollable : 1 ;
   unsigned char msix_enabled : 1 ;
   unsigned char remove_phy : 1 ;
   unsigned char uses_new_polling : 1 ;
   unsigned char wireless : 1 ;
   unsigned char authorized_default : 1 ;
   unsigned char has_tt : 1 ;
   unsigned char amd_resume_bug : 1 ;
   unsigned char can_do_streams : 1 ;
   unsigned int irq ;
   void *regs ;
   resource_size_t rsrc_start ;
   resource_size_t rsrc_len ;
   unsigned int power_budget ;
   struct giveback_urb_bh high_prio_bh ;
   struct giveback_urb_bh low_prio_bh ;
   struct mutex *bandwidth_mutex ;
   struct usb_hcd *shared_hcd ;
   struct usb_hcd *primary_hcd ;
   struct dma_pool *pool[4U] ;
   int state ;
   unsigned long hcd_priv[0U] ;
};
struct hc_driver {
   char const *description ;
   char const *product_desc ;
   size_t hcd_priv_size ;
   irqreturn_t (*irq)(struct usb_hcd * ) ;
   int flags ;
   int (*reset)(struct usb_hcd * ) ;
   int (*start)(struct usb_hcd * ) ;
   int (*pci_suspend)(struct usb_hcd * , bool ) ;
   int (*pci_resume)(struct usb_hcd * , bool ) ;
   void (*stop)(struct usb_hcd * ) ;
   void (*shutdown)(struct usb_hcd * ) ;
   int (*get_frame_number)(struct usb_hcd * ) ;
   int (*urb_enqueue)(struct usb_hcd * , struct urb * , gfp_t ) ;
   int (*urb_dequeue)(struct usb_hcd * , struct urb * , int ) ;
   int (*map_urb_for_dma)(struct usb_hcd * , struct urb * , gfp_t ) ;
   void (*unmap_urb_for_dma)(struct usb_hcd * , struct urb * ) ;
   void (*endpoint_disable)(struct usb_hcd * , struct usb_host_endpoint * ) ;
   void (*endpoint_reset)(struct usb_hcd * , struct usb_host_endpoint * ) ;
   int (*hub_status_data)(struct usb_hcd * , char * ) ;
   int (*hub_control)(struct usb_hcd * , u16 , u16 , u16 , char * , u16 ) ;
   int (*bus_suspend)(struct usb_hcd * ) ;
   int (*bus_resume)(struct usb_hcd * ) ;
   int (*start_port_reset)(struct usb_hcd * , unsigned int ) ;
   void (*relinquish_port)(struct usb_hcd * , int ) ;
   int (*port_handed_over)(struct usb_hcd * , int ) ;
   void (*clear_tt_buffer_complete)(struct usb_hcd * , struct usb_host_endpoint * ) ;
   int (*alloc_dev)(struct usb_hcd * , struct usb_device * ) ;
   void (*free_dev)(struct usb_hcd * , struct usb_device * ) ;
   int (*alloc_streams)(struct usb_hcd * , struct usb_device * , struct usb_host_endpoint ** ,
                        unsigned int , unsigned int , gfp_t ) ;
   int (*free_streams)(struct usb_hcd * , struct usb_device * , struct usb_host_endpoint ** ,
                       unsigned int , gfp_t ) ;
   int (*add_endpoint)(struct usb_hcd * , struct usb_device * , struct usb_host_endpoint * ) ;
   int (*drop_endpoint)(struct usb_hcd * , struct usb_device * , struct usb_host_endpoint * ) ;
   int (*check_bandwidth)(struct usb_hcd * , struct usb_device * ) ;
   void (*reset_bandwidth)(struct usb_hcd * , struct usb_device * ) ;
   int (*address_device)(struct usb_hcd * , struct usb_device * ) ;
   int (*enable_device)(struct usb_hcd * , struct usb_device * ) ;
   int (*update_hub_device)(struct usb_hcd * , struct usb_device * , struct usb_tt * ,
                            gfp_t ) ;
   int (*reset_device)(struct usb_hcd * , struct usb_device * ) ;
   int (*update_device)(struct usb_hcd * , struct usb_device * ) ;
   int (*set_usb2_hw_lpm)(struct usb_hcd * , struct usb_device * , int ) ;
   int (*enable_usb3_lpm_timeout)(struct usb_hcd * , struct usb_device * , enum usb3_link_state ) ;
   int (*disable_usb3_lpm_timeout)(struct usb_hcd * , struct usb_device * , enum usb3_link_state ) ;
   int (*find_raw_port_number)(struct usb_hcd * , int ) ;
};
struct usb_tt {
   struct usb_device *hub ;
   int multi ;
   unsigned int think_time ;
   void *hcpriv ;
   spinlock_t lock ;
   struct list_head clear_list ;
   struct work_struct clear_work ;
};
struct xhci_cap_regs {
   __le32 hc_capbase ;
   __le32 hcs_params1 ;
   __le32 hcs_params2 ;
   __le32 hcs_params3 ;
   __le32 hcc_params ;
   __le32 db_off ;
   __le32 run_regs_off ;
};
struct xhci_op_regs {
   __le32 command ;
   __le32 status ;
   __le32 page_size ;
   __le32 reserved1 ;
   __le32 reserved2 ;
   __le32 dev_notification ;
   __le64 cmd_ring ;
   __le32 reserved3[4U] ;
   __le64 dcbaa_ptr ;
   __le32 config_reg ;
   __le32 reserved4[241U] ;
   __le32 port_status_base ;
   __le32 port_power_base ;
   __le32 port_link_base ;
   __le32 reserved5 ;
   __le32 reserved6[1016U] ;
};
struct xhci_intr_reg {
   __le32 irq_pending ;
   __le32 irq_control ;
   __le32 erst_size ;
   __le32 rsvd ;
   __le64 erst_base ;
   __le64 erst_dequeue ;
};
struct xhci_run_regs {
   __le32 microframe_index ;
   __le32 rsvd[7U] ;
   struct xhci_intr_reg ir_set[128U] ;
};
struct xhci_doorbell_array {
   __le32 doorbell[256U] ;
};
struct xhci_container_ctx {
   unsigned int type ;
   int size ;
   u8 *bytes ;
   dma_addr_t dma ;
};
struct xhci_slot_ctx {
   __le32 dev_info ;
   __le32 dev_info2 ;
   __le32 tt_info ;
   __le32 dev_state ;
   __le32 reserved[4U] ;
};
struct xhci_ep_ctx {
   __le32 ep_info ;
   __le32 ep_info2 ;
   __le64 deq ;
   __le32 tx_info ;
   __le32 reserved[3U] ;
};
struct xhci_input_control_ctx {
   __le32 drop_flags ;
   __le32 add_flags ;
   __le32 rsvd2[6U] ;
};
union xhci_trb;
struct xhci_command {
   struct xhci_container_ctx *in_ctx ;
   u32 status ;
   struct completion *completion ;
   union xhci_trb *command_trb ;
   struct list_head cmd_list ;
};
struct xhci_stream_ctx {
   __le64 stream_ring ;
   __le32 reserved[2U] ;
};
struct xhci_ring;
struct xhci_stream_info {
   struct xhci_ring **stream_rings ;
   unsigned int num_streams ;
   struct xhci_stream_ctx *stream_ctx_array ;
   unsigned int num_stream_ctxs ;
   dma_addr_t ctx_array_dma ;
   struct radix_tree_root trb_address_map ;
   struct xhci_command *free_streams_command ;
};
struct xhci_bw_info {
   unsigned int ep_interval ;
   unsigned int mult ;
   unsigned int num_packets ;
   unsigned int max_packet_size ;
   unsigned int max_esit_payload ;
   unsigned int type ;
};
struct xhci_td;
struct xhci_hcd;
struct xhci_segment;
struct xhci_virt_ep {
   struct xhci_ring *ring ;
   struct xhci_stream_info *stream_info ;
   struct xhci_ring *new_ring ;
   unsigned int ep_state ;
   struct list_head cancelled_td_list ;
   struct xhci_td *stopped_td ;
   unsigned int stopped_stream ;
   struct timer_list stop_cmd_timer ;
   int stop_cmds_pending ;
   struct xhci_hcd *xhci ;
   struct xhci_segment *queued_deq_seg ;
   union xhci_trb *queued_deq_ptr ;
   bool skip ;
   struct xhci_bw_info bw_info ;
   struct list_head bw_endpoint_list ;
};
struct xhci_interval_bw {
   unsigned int num_packets ;
   struct list_head endpoints ;
   unsigned int overhead[3U] ;
};
struct xhci_interval_bw_table {
   unsigned int interval0_esit_payload ;
   struct xhci_interval_bw interval_bw[16U] ;
   unsigned int bw_used ;
   unsigned int ss_bw_in ;
   unsigned int ss_bw_out ;
};
struct xhci_tt_bw_info;
struct xhci_virt_device {
   struct usb_device *udev ;
   struct xhci_container_ctx *out_ctx ;
   struct xhci_container_ctx *in_ctx ;
   struct xhci_ring **ring_cache ;
   int num_rings_cached ;
   struct xhci_virt_ep eps[31U] ;
   struct completion cmd_completion ;
   u8 fake_port ;
   u8 real_port ;
   struct xhci_interval_bw_table *bw_table ;
   struct xhci_tt_bw_info *tt_info ;
   u16 current_mel ;
};
struct xhci_root_port_bw_info {
   struct list_head tts ;
   unsigned int num_active_tts ;
   struct xhci_interval_bw_table bw_table ;
};
struct xhci_tt_bw_info {
   struct list_head tt_list ;
   int slot_id ;
   int ttport ;
   struct xhci_interval_bw_table bw_table ;
   int active_eps ;
};
struct xhci_device_context_array {
   __le64 dev_context_ptrs[256U] ;
   dma_addr_t dma ;
};
struct xhci_transfer_event {
   __le64 buffer ;
   __le32 transfer_len ;
   __le32 flags ;
};
struct xhci_link_trb {
   __le64 segment_ptr ;
   __le32 intr_target ;
   __le32 control ;
};
struct xhci_event_cmd {
   __le64 cmd_trb ;
   __le32 status ;
   __le32 flags ;
};
enum xhci_setup_dev {
    SETUP_CONTEXT_ONLY = 0,
    SETUP_CONTEXT_ADDRESS = 1
} ;
struct xhci_generic_trb {
   __le32 field[4U] ;
};
union xhci_trb {
   struct xhci_link_trb link ;
   struct xhci_transfer_event trans_event ;
   struct xhci_event_cmd event_cmd ;
   struct xhci_generic_trb generic ;
};
struct xhci_segment {
   union xhci_trb *trbs ;
   struct xhci_segment *next ;
   dma_addr_t dma ;
};
struct xhci_td {
   struct list_head td_list ;
   struct list_head cancelled_td_list ;
   struct urb *urb ;
   struct xhci_segment *start_seg ;
   union xhci_trb *first_trb ;
   union xhci_trb *last_trb ;
};
struct xhci_dequeue_state {
   struct xhci_segment *new_deq_seg ;
   union xhci_trb *new_deq_ptr ;
   int new_cycle_state ;
};
enum xhci_ring_type {
    TYPE_CTRL = 0,
    TYPE_ISOC = 1,
    TYPE_BULK = 2,
    TYPE_INTR = 3,
    TYPE_STREAM = 4,
    TYPE_COMMAND = 5,
    TYPE_EVENT = 6
} ;
struct xhci_ring {
   struct xhci_segment *first_seg ;
   struct xhci_segment *last_seg ;
   union xhci_trb *enqueue ;
   struct xhci_segment *enq_seg ;
   unsigned int enq_updates ;
   union xhci_trb *dequeue ;
   struct xhci_segment *deq_seg ;
   unsigned int deq_updates ;
   struct list_head td_list ;
   u32 cycle_state ;
   unsigned int stream_id ;
   unsigned int num_segs ;
   unsigned int num_trbs_free ;
   unsigned int num_trbs_free_temp ;
   enum xhci_ring_type type ;
   bool last_td_was_short ;
   struct radix_tree_root *trb_address_map ;
};
struct xhci_erst_entry {
   __le64 seg_addr ;
   __le32 seg_size ;
   __le32 rsvd ;
};
struct xhci_erst {
   struct xhci_erst_entry *entries ;
   unsigned int num_entries ;
   dma_addr_t erst_dma_addr ;
   unsigned int erst_size ;
};
struct xhci_scratchpad {
   u64 *sp_array ;
   dma_addr_t sp_dma ;
   void **sp_buffers ;
   dma_addr_t *sp_dma_buffers ;
};
struct urb_priv {
   int length ;
   int td_cnt ;
   struct xhci_td *td[0U] ;
};
struct s3_save {
   u32 command ;
   u32 dev_nt ;
   u64 dcbaa_ptr ;
   u32 config_reg ;
   u32 irq_pending ;
   u32 irq_control ;
   u32 erst_size ;
   u64 erst_base ;
   u64 erst_dequeue ;
};
struct xhci_bus_state {
   unsigned long bus_suspended ;
   unsigned long next_statechange ;
   u32 port_c_suspend ;
   u32 suspended_ports ;
   u32 port_remote_wakeup ;
   unsigned long resume_done[31U] ;
   unsigned long resuming_ports ;
   unsigned long rexit_ports ;
   struct completion rexit_done[31U] ;
};
struct clk;
struct xhci_hcd {
   struct usb_hcd *main_hcd ;
   struct usb_hcd *shared_hcd ;
   struct xhci_cap_regs *cap_regs ;
   struct xhci_op_regs *op_regs ;
   struct xhci_run_regs *run_regs ;
   struct xhci_doorbell_array *dba ;
   struct xhci_intr_reg *ir_set ;
   __u32 hcs_params1 ;
   __u32 hcs_params2 ;
   __u32 hcs_params3 ;
   __u32 hcc_params ;
   spinlock_t lock ;
   u8 sbrn ;
   u16 hci_version ;
   u8 max_slots ;
   u8 max_interrupters ;
   u8 max_ports ;
   u8 isoc_threshold ;
   int event_ring_max ;
   int addr_64 ;
   int page_size ;
   int page_shift ;
   int msix_count ;
   struct msix_entry *msix_entries ;
   struct clk *clk ;
   struct xhci_device_context_array *dcbaa ;
   struct xhci_ring *cmd_ring ;
   unsigned int cmd_ring_state ;
   struct list_head cmd_list ;
   unsigned int cmd_ring_reserved_trbs ;
   struct timer_list cmd_timer ;
   struct xhci_command *current_cmd ;
   struct xhci_ring *event_ring ;
   struct xhci_erst erst ;
   struct xhci_scratchpad *scratchpad ;
   struct list_head lpm_failed_devs ;
   struct completion addr_dev ;
   int slot_id ;
   struct xhci_command *lpm_command ;
   struct xhci_virt_device *devs[256U] ;
   struct xhci_root_port_bw_info *rh_bw ;
   struct dma_pool *device_pool ;
   struct dma_pool *segment_pool ;
   struct dma_pool *small_streams_pool ;
   struct dma_pool *medium_streams_pool ;
   unsigned int xhc_state ;
   u32 command ;
   struct s3_save s3 ;
   int error_bitmask ;
   unsigned int quirks ;
   unsigned int num_active_eps ;
   unsigned int limit_active_eps ;
   struct xhci_bus_state bus_state[2U] ;
   u8 *port_array ;
   __le32 **usb3_ports ;
   unsigned int num_usb3_ports ;
   __le32 **usb2_ports ;
   unsigned int num_usb2_ports ;
   unsigned char sw_lpm_support : 1 ;
   unsigned char hw_lpm_support : 1 ;
   u32 *ext_caps ;
   unsigned int num_ext_caps ;
   struct timer_list comp_mode_recovery_timer ;
   u32 port_status_u0 ;
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
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
typedef int ldv_func_ret_type___8;
typedef int ldv_func_ret_type___9;
typedef int ldv_func_ret_type___10;
enum hrtimer_restart;
struct __anonstruct_simple_test_vector_206 {
   dma_addr_t input_dma ;
   struct xhci_segment *result_seg ;
};
struct __anonstruct_complex_test_vector_208 {
   struct xhci_segment *input_seg ;
   union xhci_trb *start_trb ;
   union xhci_trb *end_trb ;
   dma_addr_t input_dma ;
   struct xhci_segment *result_seg ;
};
enum hrtimer_restart;
struct usb_ctrlrequest {
   __u8 bRequestType ;
   __u8 bRequest ;
   __le16 wValue ;
   __le16 wIndex ;
   __le16 wLength ;
};
struct ratelimit_state {
   raw_spinlock_t lock ;
   int interval ;
   int burst ;
   int printed ;
   int missed ;
   unsigned long begin ;
};
enum hrtimer_restart;
struct __anonstruct_hs_202 {
   __u8 DeviceRemovable[4U] ;
   __u8 PortPwrCtrlMask[4U] ;
};
struct __anonstruct_ss_203 {
   __u8 bHubHdrDecLat ;
   __le16 wHubDelay ;
   __le16 DeviceRemovable ;
};
union __anonunion_u_201 {
   struct __anonstruct_hs_202 hs ;
   struct __anonstruct_ss_203 ss ;
};
struct usb_hub_descriptor {
   __u8 bDescLength ;
   __u8 bDescriptorType ;
   __u8 bNbrPorts ;
   __le16 wHubCharacteristics ;
   __u8 bPwrOn2PwrGood ;
   __u8 bHubContrCurrent ;
   union __anonunion_u_201 u ;
};
struct __va_list_tag;
typedef struct __va_list_tag __va_list_tag;
enum hrtimer_restart;
enum hrtimer_restart;
struct net;
struct uts_namespace;
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
union __anonunion_ldv_32100_205 {
   __u64 sample_period ;
   __u64 sample_freq ;
};
union __anonunion_ldv_32131_206 {
   __u32 wakeup_events ;
   __u32 wakeup_watermark ;
};
union __anonunion_ldv_32136_207 {
   __u64 bp_addr ;
   __u64 config1 ;
};
union __anonunion_ldv_32140_208 {
   __u64 bp_len ;
   __u64 config2 ;
};
struct perf_event_attr {
   __u32 type ;
   __u32 size ;
   __u64 config ;
   union __anonunion_ldv_32100_205 ldv_32100 ;
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
   union __anonunion_ldv_32131_206 ldv_32131 ;
   __u32 bp_type ;
   union __anonunion_ldv_32136_207 ldv_32136 ;
   union __anonunion_ldv_32140_208 ldv_32140 ;
   __u64 branch_sample_type ;
   __u64 sample_regs_user ;
   __u32 sample_stack_user ;
   __u32 __reserved_2 ;
};
struct __anonstruct_ldv_32208_211 {
   unsigned char mem_op : 5 ;
   unsigned short mem_lvl : 14 ;
   unsigned char mem_snoop : 5 ;
   unsigned char mem_lock : 2 ;
   unsigned char mem_dtlb : 7 ;
   unsigned int mem_rsvd : 31 ;
};
union perf_mem_data_src {
   __u64 val ;
   struct __anonstruct_ldv_32208_211 ldv_32208 ;
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
struct __anonstruct_local_t_215 {
   atomic_long_t a ;
};
typedef struct __anonstruct_local_t_215 local_t;
struct __anonstruct_local64_t_216 {
   local_t a ;
};
typedef struct __anonstruct_local64_t_216 local64_t;
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
struct __anonstruct_ldv_33700_227 {
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
struct __anonstruct_ldv_33703_228 {
   struct hrtimer hrtimer ;
};
struct __anonstruct_ldv_33707_229 {
   struct task_struct *tp_target ;
   struct list_head tp_list ;
};
struct __anonstruct_ldv_33712_230 {
   struct task_struct *bp_target ;
   struct arch_hw_breakpoint info ;
   struct list_head bp_list ;
};
union __anonunion_ldv_33713_226 {
   struct __anonstruct_ldv_33700_227 ldv_33700 ;
   struct __anonstruct_ldv_33703_228 ldv_33703 ;
   struct __anonstruct_ldv_33707_229 ldv_33707 ;
   struct __anonstruct_ldv_33712_230 ldv_33712 ;
};
struct hw_perf_event {
   union __anonunion_ldv_33713_226 ldv_33713 ;
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
struct __anonstruct_tid_entry_231 {
   u32 pid ;
   u32 tid ;
};
struct __anonstruct_cpu_entry_232 {
   u32 cpu ;
   u32 reserved ;
};
struct perf_sample_data {
   u64 type ;
   u64 ip ;
   struct __anonstruct_tid_entry_231 tid_entry ;
   u64 time ;
   u64 addr ;
   u64 id ;
   u64 stream_id ;
   struct __anonstruct_cpu_entry_232 cpu_entry ;
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
union __anonunion_ldv_34329_233 {
   char *name ;
   struct tracepoint *tp ;
};
struct ftrace_event_call {
   struct list_head list ;
   struct ftrace_event_class *class ;
   union __anonunion_ldv_34329_233 ldv_34329 ;
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
struct ftrace_raw_xhci_log_msg {
   struct trace_entry ent ;
   u32 __data_loc_msg ;
   char __data[0U] ;
};
struct ftrace_raw_xhci_log_ctx {
   struct trace_entry ent ;
   int ctx_64 ;
   unsigned int ctx_type ;
   dma_addr_t ctx_dma ;
   u8 *ctx_va ;
   unsigned int ctx_ep_num ;
   int slot_id ;
   u32 __data_loc_ctx_data ;
   char __data[0U] ;
};
struct ftrace_raw_xhci_log_event {
   struct trace_entry ent ;
   void *va ;
   u64 dma ;
   u32 status ;
   u32 flags ;
   u32 __data_loc_trb ;
   char __data[0U] ;
};
enum hrtimer_restart;
enum hrtimer_restart;
struct pdev_archdata {
};
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
   struct bin_attribute attr ;
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
   struct kobject kobj ;
   unsigned long _flags ;
   void *data ;
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
struct mbus_dram_window {
   u8 cs_index ;
   u8 mbus_attr ;
   u32 base ;
   u32 size ;
};
struct mbus_dram_target_info {
   u8 mbus_dram_target_id ;
   int num_cs ;
   struct mbus_dram_window cs[4U] ;
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
   union __anonunion_ldv_14152_140 __annonCompField38 ;
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
   union __anonunion_ldv_14146_138 __annonCompField37 ;
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
extern struct pv_irq_ops pv_irq_ops ;
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
__inline static int fls(int x )
{
  int r ;
  {
  __asm__ ("bsrl %1,%0": "=r" (r): "rm" (x), "0" (-1));
  return (r + 1);
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
__inline static unsigned int __arch_hweight32(unsigned int w )
{
  unsigned int res ;
  {
  res = 0U;
  __asm__ ("661:\n\tcall __sw_hweight32\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (4*32+23)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0xf3,0x40,0x0f,0xb8,0xc7\n6641:\n\t.popsection": "=a" (res): "D" (w));
  return (res);
}
}
__inline static unsigned int fls_long(unsigned long l )
{
  int tmp___0 ;
  {
  tmp___0 = fls64((__u64 )l);
  return ((unsigned int )tmp___0);
}
}
__inline static unsigned long __roundup_pow_of_two(unsigned long n )
{
  unsigned int tmp ;
  {
  tmp = fls_long(n - 1UL);
  return (1UL << (int )tmp);
}
}
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern int __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                             , ...) ;
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
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strstr(char const * , char const * ) ;
extern int __bitmap_weight(unsigned long const * , int ) ;
__inline static int bitmap_weight(unsigned long const *src , int nbits )
{
  int tmp___0 ;
  {
  tmp___0 = __bitmap_weight(src, nbits);
  return (tmp___0);
}
}
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
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6347.rlock);
}
}
__inline static void ldv_spin_lock_irq_4(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_7(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_8(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6347.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern void wait_for_completion(struct completion * ) ;
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_26(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern void set_timer_slack(struct timer_list * , int ) ;
extern void add_timer(struct timer_list * ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_27(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_sync_28(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_sync_29(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_sync_30(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_sync_31(struct timer_list *ldv_func_arg1 ) ;
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
int ldv_timer_state_5 = 0;
int ldv_state_variable_8 ;
struct timer_list *ldv_timer_list_5 ;
struct pci_dev *xhci_pci_driver_group0 ;
struct usb_host_endpoint *xhci_plat_xhci_driver_group1 ;
int ldv_state_variable_15 ;
struct timer_list *ldv_timer_list_4 ;
struct urb *xhci_pci_hc_driver_group0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_state_variable_13 ;
int ldv_irq_3_1 = 0;
int ldv_irq_2_0 = 0;
int ldv_state_variable_12 ;
int ldv_irq_3_2 = 0;
struct device *xhci_plat_pm_ops_group1 ;
int ldv_state_variable_14 ;
struct ftrace_event_call *event_class_xhci_log_msg_group0 ;
int ldv_state_variable_17 ;
void *ldv_irq_data_2_3 ;
int ldv_irq_2_2 = 0;
int ldv_timer_state_6 = 0;
int ldv_state_variable_9 ;
int ldv_irq_line_2_0 ;
int ldv_timer_state_4 = 0;
struct ftrace_event_call *event_class_xhci_log_event_group0 ;
struct usb_device *xhci_pci_hc_driver_group2 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
void *ldv_irq_data_2_2 ;
struct usb_hcd *xhci_pci_hc_driver_group4 ;
int ldv_irq_line_3_0 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_irq_line_1_2 ;
struct platform_device *usb_xhci_driver_group0 ;
int ldv_irq_line_2_3 ;
int ldv_irq_3_0 = 0;
int ldv_irq_2_1 = 0;
void *ldv_irq_data_2_1 ;
int ldv_irq_1_3 = 0;
void *ldv_irq_data_3_3 ;
void *ldv_irq_data_1_1 ;
int ldv_irq_line_2_2 ;
int ldv_irq_line_3_2 ;
struct usb_host_endpoint **xhci_pci_hc_driver_group3 ;
int ldv_state_variable_10 ;
int ldv_irq_1_0 = 0;
struct timer_list *ldv_timer_list_6 ;
void *ldv_irq_data_3_1 ;
int ldv_state_variable_6 ;
void *ldv_irq_data_1_0 ;
int ldv_state_variable_16 ;
void *ldv_irq_data_3_0 ;
int ldv_irq_line_2_1 ;
void *ldv_irq_data_1_3 ;
int ldv_state_variable_2 ;
struct usb_host_endpoint **xhci_plat_xhci_driver_group3 ;
void *ldv_irq_data_1_2 ;
void *ldv_irq_data_2_0 ;
int ldv_state_variable_11 ;
struct usb_device *xhci_plat_xhci_driver_group2 ;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_1 = 0;
int ldv_irq_2_3 = 0;
int ldv_irq_line_3_1 ;
int ldv_irq_line_1_3 ;
struct ftrace_event_call *event_class_xhci_log_ctx_group0 ;
struct urb *xhci_plat_xhci_driver_group0 ;
struct usb_host_endpoint *xhci_pci_hc_driver_group1 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
struct usb_hcd *xhci_plat_xhci_driver_group4 ;
void *ldv_irq_data_3_2 ;
int ldv_irq_3_3 = 0;
int ldv_state_variable_4 ;
int ldv_irq_line_3_3 ;
int ldv_irq_3(int state , int line , void *data ) ;
void choose_interrupt_2(void) ;
void disable_suitable_irq_2(int line , void *data ) ;
void activate_suitable_irq_3(int line , void *data ) ;
void activate_suitable_irq_2(int line , void *data ) ;
void activate_pending_timer_4(struct timer_list *timer , unsigned long data , int pending_flag ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
int reg_timer_6(struct timer_list *timer ) ;
void ldv_initialize_ftrace_event_class_12(void) ;
void choose_interrupt_1(void) ;
void choose_timer_4(struct timer_list *timer ) ;
int reg_check_2(irqreturn_t (*handler)(int , void * ) ) ;
void disable_suitable_irq_3(int line , void *data ) ;
void disable_suitable_timer_4(struct timer_list *timer ) ;
void ldv_initialize_ftrace_event_class_14(void) ;
void ldv_initialize_ftrace_event_class_13(void) ;
int reg_check_3(irqreturn_t (*handler)(int , void * ) ) ;
void ldv_initialize_pci_driver_10(void) ;
void ldv_initialize_hc_driver_9(void) ;
int reg_timer_4(struct timer_list *timer ) ;
void ldv_dev_pm_ops_8(void) ;
void disable_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void activate_suitable_irq_1(int line , void *data ) ;
void disable_suitable_timer_6(struct timer_list *timer ) ;
void choose_interrupt_3(void) ;
int ldv_irq_2(int state , int line , void *data ) ;
void activate_pending_timer_6(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void ldv_initialize_hc_driver_11(void) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int dev_warn(struct device const * , char const * , ...) ;
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
extern void pci_disable_msix(struct pci_dev * ) ;
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
extern int pci_enable_msix_range(struct pci_dev * , struct msix_entry * , int , int ) ;
__inline static int pci_enable_msix_exact(struct pci_dev *dev , struct msix_entry *entries ,
                                          int nvec )
{
  int rc ;
  int tmp ;
  {
  tmp = pci_enable_msix_range(dev, entries, nvec, nvec);
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
extern char const *dmi_get_system_info(int ) ;
__inline static int usb_endpoint_num(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )epd->bEndpointAddress & 15);
}
}
__inline static int usb_endpoint_type(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )epd->bmAttributes & 3);
}
}
__inline static int usb_endpoint_dir_in(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) < 0);
}
}
__inline static int usb_endpoint_xfer_bulk(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 2);
}
}
__inline static int usb_endpoint_xfer_control(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 0);
}
}
__inline static int usb_endpoint_xfer_int(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 3);
}
}
__inline static int usb_endpoint_xfer_isoc(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 1);
}
}
__inline static int usb_endpoint_maxp(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )epd->wMaxPacketSize);
}
}
__inline static int usb_endpoint_interrupt_type(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )epd->bmAttributes & 48);
}
}
__inline static int usb_ss_max_streams(struct usb_ss_ep_comp_descriptor const *comp )
{
  int max_streams ;
  {
  if ((unsigned long )comp == (unsigned long )((struct usb_ss_ep_comp_descriptor const *)0)) {
    return (0);
  } else {
  }
  max_streams = (int )comp->bmAttributes & 31;
  if (max_streams == 0) {
    return (0);
  } else {
  }
  max_streams = 1 << max_streams;
  return (max_streams);
}
}
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
extern void synchronize_irq(unsigned int ) ;
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  tmp = request_threaded_irq(irq, handler, (irqreturn_t (*)(int , void * ))0, flags,
                             name, dev);
  return (tmp);
}
}
__inline static int ldv_request_irq_21(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_23(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_25(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_20(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_22(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_24(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern int usb_hcd_check_unlink_urb(struct usb_hcd * , struct urb * , int ) ;
extern void usb_hcd_unlink_urb_from_ep(struct usb_hcd * , struct urb * ) ;
extern void usb_hcd_giveback_urb(struct usb_hcd * , struct urb * , int ) ;
extern int usb_hcd_is_primary_hcd(struct usb_hcd * ) ;
extern irqreturn_t usb_hcd_irq(int , void * ) ;
extern void usb_hcd_poll_rh_status(struct usb_hcd * ) ;
extern void usb_root_hub_lost_power(struct usb_device * ) ;
extern void usb_hcd_resume_root_hub(struct usb_hcd * ) ;
extern void usb_amd_dev_put(void) ;
extern void usb_disable_xhci_ports(struct pci_dev * ) ;
__inline static struct xhci_hcd *hcd_to_xhci(struct usb_hcd *hcd )
{
  {
  return (*((struct xhci_hcd **)(& hcd->hcd_priv)));
}
}
__inline static struct usb_hcd *xhci_to_hcd(struct xhci_hcd *xhci )
{
  {
  return (xhci->main_hcd);
}
}
__inline static u64 xhci_read_64(struct xhci_hcd const *xhci , __le64 *regs )
{
  __u32 *ptr ;
  u64 val_lo ;
  unsigned int tmp ;
  u64 val_hi ;
  unsigned int tmp___0 ;
  {
  ptr = (__u32 *)regs;
  tmp = readl((void const volatile *)ptr);
  val_lo = (u64 )tmp;
  tmp___0 = readl((void const volatile *)ptr + 1U);
  val_hi = (u64 )tmp___0;
  return ((val_hi << 32) + val_lo);
}
}
__inline static void xhci_write_64(struct xhci_hcd *xhci , u64 const val , __le64 *regs )
{
  __u32 *ptr ;
  u32 val_lo ;
  u32 val_hi ;
  {
  ptr = (__u32 *)regs;
  val_lo = (unsigned int )val;
  val_hi = (unsigned int )(val >> 32ULL);
  writel(val_lo, (void volatile *)ptr);
  writel(val_hi, (void volatile *)ptr + 1U);
  return;
}
}
void xhci_print_ir_set(struct xhci_hcd *xhci , int set_num ) ;
void xhci_print_registers(struct xhci_hcd *xhci ) ;
void xhci_debug_ring(struct xhci_hcd *xhci , struct xhci_ring *ring ) ;
void xhci_dbg_erst(struct xhci_hcd *xhci , struct xhci_erst *erst ) ;
void xhci_dbg_cmd_ptrs(struct xhci_hcd *xhci ) ;
void xhci_dbg_ring_ptrs(struct xhci_hcd *xhci , struct xhci_ring *ring ) ;
void xhci_dbg_ctx(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx , unsigned int last_ep ) ;
char *xhci_get_slot_state(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx ) ;
void xhci_dbg_trace(struct xhci_hcd *xhci , void (*trace)(struct va_format * ) , char const *fmt
                    , ...) ;
void xhci_mem_cleanup(struct xhci_hcd *xhci ) ;
int xhci_mem_init(struct xhci_hcd *xhci , gfp_t flags ) ;
void xhci_free_virt_device(struct xhci_hcd *xhci , int slot_id ) ;
int xhci_alloc_virt_device(struct xhci_hcd *xhci , int slot_id , struct usb_device *udev ,
                           gfp_t flags ) ;
int xhci_setup_addressable_virt_dev(struct xhci_hcd *xhci , struct usb_device *udev ) ;
void xhci_copy_ep0_dequeue_into_input_ctx(struct xhci_hcd *xhci , struct usb_device *udev ) ;
unsigned int xhci_get_endpoint_index(struct usb_endpoint_descriptor *desc ) ;
unsigned int xhci_get_endpoint_address(unsigned int ep_index ) ;
unsigned int xhci_get_endpoint_flag(struct usb_endpoint_descriptor *desc ) ;
unsigned int xhci_get_endpoint_flag_from_index(unsigned int ep_index ) ;
unsigned int xhci_last_valid_endpoint(u32 added_ctxs ) ;
void xhci_endpoint_zero(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                        struct usb_host_endpoint *ep ) ;
void xhci_drop_ep_from_interval_table(struct xhci_hcd *xhci , struct xhci_bw_info *ep_bw ,
                                      struct xhci_interval_bw_table *bw_table , struct usb_device *udev ,
                                      struct xhci_virt_ep *virt_ep , struct xhci_tt_bw_info *tt_info ) ;
void xhci_update_tt_active_eps(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                               int old_active_eps ) ;
void xhci_clear_endpoint_bw_info(struct xhci_bw_info *bw_info ) ;
void xhci_update_bw_info(struct xhci_hcd *xhci , struct xhci_container_ctx *in_ctx ,
                         struct xhci_input_control_ctx *ctrl_ctx , struct xhci_virt_device *virt_dev ) ;
void xhci_endpoint_copy(struct xhci_hcd *xhci , struct xhci_container_ctx *in_ctx ,
                        struct xhci_container_ctx *out_ctx , unsigned int ep_index ) ;
void xhci_slot_copy(struct xhci_hcd *xhci , struct xhci_container_ctx *in_ctx , struct xhci_container_ctx *out_ctx ) ;
int xhci_endpoint_init(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                       struct usb_device *udev , struct usb_host_endpoint *ep , gfp_t mem_flags ) ;
void xhci_ring_free(struct xhci_hcd *xhci , struct xhci_ring *ring ) ;
void xhci_free_or_cache_endpoint_ring(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                                      unsigned int ep_index ) ;
struct xhci_stream_info *xhci_alloc_stream_info(struct xhci_hcd *xhci , unsigned int num_stream_ctxs ,
                                                unsigned int num_streams , gfp_t mem_flags ) ;
void xhci_free_stream_info(struct xhci_hcd *xhci , struct xhci_stream_info *stream_info ) ;
void xhci_setup_streams_ep_input_ctx(struct xhci_hcd *xhci , struct xhci_ep_ctx *ep_ctx ,
                                     struct xhci_stream_info *stream_info ) ;
void xhci_setup_no_streams_ep_input_ctx(struct xhci_hcd *xhci , struct xhci_ep_ctx *ep_ctx ,
                                        struct xhci_virt_ep *ep ) ;
void xhci_free_device_endpoint_resources(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                                         bool drop_control_ep ) ;
struct xhci_command *xhci_alloc_command(struct xhci_hcd *xhci , bool allocate_in_ctx ,
                                        bool allocate_completion , gfp_t mem_flags ) ;
void xhci_urb_free_priv(struct xhci_hcd *xhci , struct urb_priv *urb_priv ) ;
void xhci_free_command(struct xhci_hcd *xhci , struct xhci_command *command ) ;
int xhci_register_pci(void) ;
void xhci_unregister_pci(void) ;
int xhci_register_plat(void) ;
void xhci_unregister_plat(void) ;
int xhci_handshake(struct xhci_hcd *xhci , void *ptr , u32 mask , u32 done , int usec ) ;
void xhci_quiesce(struct xhci_hcd *xhci ) ;
int xhci_halt(struct xhci_hcd *xhci ) ;
int xhci_reset(struct xhci_hcd *xhci ) ;
int xhci_init(struct usb_hcd *hcd ) ;
int xhci_run(struct usb_hcd *hcd ) ;
void xhci_stop(struct usb_hcd *hcd ) ;
void xhci_shutdown(struct usb_hcd *hcd ) ;
int xhci_gen_setup(struct usb_hcd *hcd , void (*get_quirks)(struct device * , struct xhci_hcd * ) ) ;
int xhci_suspend(struct xhci_hcd *xhci ) ;
int xhci_resume(struct xhci_hcd *xhci , bool hibernated ) ;
int xhci_get_frame(struct usb_hcd *hcd ) ;
irqreturn_t xhci_msi_irq(int irq , void *hcd ) ;
int xhci_alloc_dev(struct usb_hcd *hcd , struct usb_device *udev ) ;
void xhci_free_dev(struct usb_hcd *hcd , struct usb_device *udev ) ;
int xhci_alloc_tt_info(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                       struct usb_device *hdev , struct usb_tt *tt , gfp_t mem_flags ) ;
int xhci_alloc_streams(struct usb_hcd *hcd , struct usb_device *udev , struct usb_host_endpoint **eps ,
                       unsigned int num_eps , unsigned int num_streams , gfp_t mem_flags ) ;
int xhci_free_streams(struct usb_hcd *hcd , struct usb_device *udev , struct usb_host_endpoint **eps ,
                      unsigned int num_eps , gfp_t mem_flags ) ;
int xhci_address_device(struct usb_hcd *hcd , struct usb_device *udev ) ;
int xhci_enable_device(struct usb_hcd *hcd , struct usb_device *udev ) ;
int xhci_update_device(struct usb_hcd *hcd , struct usb_device *udev ) ;
int xhci_set_usb2_hardware_lpm(struct usb_hcd *hcd , struct usb_device *udev , int enable ) ;
int xhci_update_hub_device(struct usb_hcd *hcd , struct usb_device *hdev , struct usb_tt *tt ,
                           gfp_t mem_flags ) ;
int xhci_urb_enqueue(struct usb_hcd *hcd , struct urb *urb , gfp_t mem_flags ) ;
int xhci_urb_dequeue(struct usb_hcd *hcd , struct urb *urb , int status ) ;
int xhci_add_endpoint(struct usb_hcd *hcd , struct usb_device *udev , struct usb_host_endpoint *ep ) ;
int xhci_drop_endpoint(struct usb_hcd *hcd , struct usb_device *udev , struct usb_host_endpoint *ep ) ;
void xhci_endpoint_reset(struct usb_hcd *hcd , struct usb_host_endpoint *ep ) ;
int xhci_discover_or_reset_device(struct usb_hcd *hcd , struct usb_device *udev ) ;
int xhci_check_bandwidth(struct usb_hcd *hcd , struct usb_device *udev ) ;
void xhci_reset_bandwidth(struct usb_hcd *hcd , struct usb_device *udev ) ;
dma_addr_t xhci_trb_virt_to_dma(struct xhci_segment *seg , union xhci_trb *trb ) ;
int xhci_is_vendor_info_code(struct xhci_hcd *xhci , unsigned int trb_comp_code ) ;
void xhci_ring_cmd_db(struct xhci_hcd *xhci ) ;
int xhci_queue_slot_control(struct xhci_hcd *xhci , struct xhci_command *cmd , u32 trb_type ,
                            u32 slot_id ) ;
int xhci_queue_address_device(struct xhci_hcd *xhci , struct xhci_command *cmd , dma_addr_t in_ctx_ptr ,
                              u32 slot_id , enum xhci_setup_dev setup ) ;
int xhci_queue_vendor_command(struct xhci_hcd *xhci , struct xhci_command *cmd , u32 field1 ,
                              u32 field2 , u32 field3 , u32 field4 ) ;
int xhci_queue_stop_endpoint(struct xhci_hcd *xhci , struct xhci_command *cmd , int slot_id ,
                             unsigned int ep_index , int suspend ) ;
int xhci_queue_ctrl_tx(struct xhci_hcd *xhci , gfp_t mem_flags , struct urb *urb ,
                       int slot_id , unsigned int ep_index ) ;
int xhci_queue_bulk_tx(struct xhci_hcd *xhci , gfp_t mem_flags , struct urb *urb ,
                       int slot_id , unsigned int ep_index ) ;
int xhci_queue_intr_tx(struct xhci_hcd *xhci , gfp_t mem_flags , struct urb *urb ,
                       int slot_id , unsigned int ep_index ) ;
int xhci_queue_isoc_tx_prepare(struct xhci_hcd *xhci , gfp_t mem_flags , struct urb *urb ,
                               int slot_id , unsigned int ep_index ) ;
int xhci_queue_configure_endpoint(struct xhci_hcd *xhci , struct xhci_command *cmd ,
                                  dma_addr_t in_ctx_ptr , u32 slot_id , bool command_must_succeed ) ;
int xhci_queue_evaluate_context(struct xhci_hcd *xhci , struct xhci_command *cmd ,
                                dma_addr_t in_ctx_ptr , u32 slot_id , bool command_must_succeed ) ;
int xhci_queue_reset_ep(struct xhci_hcd *xhci , struct xhci_command *cmd , int slot_id ,
                        unsigned int ep_index ) ;
int xhci_queue_reset_device(struct xhci_hcd *xhci , struct xhci_command *cmd , u32 slot_id ) ;
void xhci_find_new_dequeue_state(struct xhci_hcd *xhci , unsigned int slot_id , unsigned int ep_index ,
                                 unsigned int stream_id , struct xhci_td *cur_td ,
                                 struct xhci_dequeue_state *state ) ;
void xhci_queue_new_dequeue_state(struct xhci_hcd *xhci , struct xhci_command *cmd ,
                                  unsigned int slot_id , unsigned int ep_index , unsigned int stream_id ,
                                  struct xhci_dequeue_state *deq_state ) ;
void xhci_cleanup_stalled_ring(struct xhci_hcd *xhci , struct usb_device *udev , unsigned int ep_index ) ;
int xhci_enable_usb3_lpm_timeout(struct usb_hcd *hcd , struct usb_device *udev , enum usb3_link_state state ) ;
int xhci_disable_usb3_lpm_timeout(struct usb_hcd *hcd , struct usb_device *udev ,
                                  enum usb3_link_state state ) ;
int xhci_find_raw_port_number(struct usb_hcd *hcd , int port1 ) ;
struct xhci_input_control_ctx *xhci_get_input_control_ctx(struct xhci_hcd *xhci ,
                                                          struct xhci_container_ctx *ctx ) ;
struct xhci_slot_ctx *xhci_get_slot_ctx(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx ) ;
struct xhci_ep_ctx *xhci_get_ep_ctx(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx ,
                                    unsigned int ep_index ) ;
bool xhci_compliance_mode_recovery_timer_quirk_check(void) ;
struct tracepoint __tracepoint_xhci_dbg_address ;
__inline static void trace_xhci_dbg_address(struct va_format *vaf )
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
  tmp___1 = static_key_false(& __tracepoint_xhci_dbg_address.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_xhci_dbg_address.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/usb/host/xhci-trace.h",
                               38, "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_33949:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct va_format * ))it_func))(__data, vaf);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_33949;
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
struct tracepoint __tracepoint_xhci_dbg_context_change ;
__inline static void trace_xhci_dbg_context_change(struct va_format *vaf )
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
  tmp___1 = static_key_false(& __tracepoint_xhci_dbg_context_change.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_xhci_dbg_context_change.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/usb/host/xhci-trace.h",
                               43, "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_33983:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct va_format * ))it_func))(__data, vaf);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_33983;
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
struct tracepoint __tracepoint_xhci_dbg_quirks ;
__inline static void trace_xhci_dbg_quirks(struct va_format *vaf )
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
  tmp___1 = static_key_false(& __tracepoint_xhci_dbg_quirks.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_xhci_dbg_quirks.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/usb/host/xhci-trace.h",
                               48, "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_34017:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct va_format * ))it_func))(__data, vaf);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_34017;
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
struct tracepoint __tracepoint_xhci_dbg_reset_ep ;
__inline static void trace_xhci_dbg_reset_ep(struct va_format *vaf )
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
  tmp___1 = static_key_false(& __tracepoint_xhci_dbg_reset_ep.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_xhci_dbg_reset_ep.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/usb/host/xhci-trace.h",
                               53, "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_34051:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct va_format * ))it_func))(__data, vaf);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_34051;
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
struct tracepoint __tracepoint_xhci_dbg_cancel_urb ;
__inline static void trace_xhci_dbg_cancel_urb(struct va_format *vaf )
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
  tmp___1 = static_key_false(& __tracepoint_xhci_dbg_cancel_urb.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_xhci_dbg_cancel_urb.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/usb/host/xhci-trace.h",
                               58, "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_34085:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct va_format * ))it_func))(__data, vaf);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_34085;
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
struct tracepoint __tracepoint_xhci_dbg_init ;
__inline static void trace_xhci_dbg_init(struct va_format *vaf )
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
  tmp___1 = static_key_false(& __tracepoint_xhci_dbg_init.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_xhci_dbg_init.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/usb/host/xhci-trace.h",
                               63, "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_34119:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct va_format * ))it_func))(__data, vaf);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_34119;
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
struct tracepoint __tracepoint_xhci_address_ctx ;
__inline static void trace_xhci_address_ctx(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx ,
                                            unsigned int ep_num )
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
  tmp___1 = static_key_false(& __tracepoint_xhci_address_ctx.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_xhci_address_ctx.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/usb/host/xhci-trace.h",
                               109, "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_34191:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct xhci_hcd * , struct xhci_container_ctx * , unsigned int ))it_func))(__data,
                                                                                                        xhci,
                                                                                                        ctx,
                                                                                                        ep_num);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_34191;
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
static int link_quirk ;
static unsigned int quirks ;
int xhci_handshake(struct xhci_hcd *xhci , void *ptr , u32 mask , u32 done , int usec )
{
  u32 result ;
  {
  ldv_34298:
  result = readl((void const volatile *)ptr);
  if (result == 4294967295U) {
    return (-19);
  } else {
  }
  result = result & mask;
  if (result == done) {
    return (0);
  } else {
  }
  __const_udelay(4295UL);
  usec = usec - 1;
  if (usec > 0) {
    goto ldv_34298;
  } else {
  }
  return (-110);
}
}
void xhci_quiesce(struct xhci_hcd *xhci )
{
  u32 halted ;
  u32 cmd ;
  u32 mask ;
  unsigned int tmp ;
  {
  mask = 4294966259U;
  tmp = readl((void const volatile *)(& (xhci->op_regs)->status));
  halted = tmp & 1U;
  if (halted == 0U) {
    mask = mask & 4294967294U;
  } else {
  }
  cmd = readl((void const volatile *)(& (xhci->op_regs)->command));
  cmd = cmd & mask;
  writel(cmd, (void volatile *)(& (xhci->op_regs)->command));
  return;
}
}
int xhci_halt(struct xhci_hcd *xhci )
{
  int ret ;
  struct usb_hcd *tmp ;
  {
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "// Halt the HC");
  xhci_quiesce(xhci);
  ret = xhci_handshake(xhci, (void *)(& (xhci->op_regs)->status), 1U, 1U, 16000);
  if (ret == 0) {
    xhci->xhc_state = xhci->xhc_state | 2U;
    xhci->cmd_ring_state = 4U;
  } else {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "Host not halted after %u microseconds.\n",
             16000);
  }
  return (ret);
}
}
static int xhci_start(struct xhci_hcd *xhci )
{
  u32 temp ;
  int ret ;
  struct usb_hcd *tmp ;
  {
  temp = readl((void const volatile *)(& (xhci->op_regs)->command));
  temp = temp | 1U;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "// Turn on HC, cmd = 0x%x.", temp);
  writel(temp, (void volatile *)(& (xhci->op_regs)->command));
  ret = xhci_handshake(xhci, (void *)(& (xhci->op_regs)->status), 1U, 0U, 16000);
  if (ret == -110) {
    tmp = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp->self.controller, "Host took too long to start, waited %u microseconds.\n",
            16000);
  } else {
  }
  if (ret == 0) {
    xhci->xhc_state = xhci->xhc_state & 4294967293U;
  } else {
  }
  return (ret);
}
}
int xhci_reset(struct xhci_hcd *xhci )
{
  u32 command ;
  u32 state ;
  int ret ;
  int i ;
  struct usb_hcd *tmp ;
  {
  state = readl((void const volatile *)(& (xhci->op_regs)->status));
  if ((state & 1U) == 0U) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "Host controller not halted, aborting reset.\n");
    return (0);
  } else {
  }
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "// Reset the HC");
  command = readl((void const volatile *)(& (xhci->op_regs)->command));
  command = command | 2U;
  writel(command, (void volatile *)(& (xhci->op_regs)->command));
  ret = xhci_handshake(xhci, (void *)(& (xhci->op_regs)->command), 2U, 0U, 10000000);
  if (ret != 0) {
    return (ret);
  } else {
  }
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "Wait for controller to be ready for doorbell rings");
  ret = xhci_handshake(xhci, (void *)(& (xhci->op_regs)->status), 2048U, 0U, 10000000);
  i = 0;
  goto ldv_34323;
  ldv_34322:
  xhci->bus_state[i].port_c_suspend = 0U;
  xhci->bus_state[i].suspended_ports = 0U;
  xhci->bus_state[i].resuming_ports = 0UL;
  i = i + 1;
  ldv_34323: ;
  if (i <= 1) {
    goto ldv_34322;
  } else {
  }
  return (ret);
}
}
static int xhci_free_msi(struct xhci_hcd *xhci )
{
  int i ;
  struct usb_hcd *tmp ;
  {
  if ((unsigned long )xhci->msix_entries == (unsigned long )((struct msix_entry *)0)) {
    return (-22);
  } else {
  }
  i = 0;
  goto ldv_34330;
  ldv_34329: ;
  if ((xhci->msix_entries + (unsigned long )i)->vector != 0U) {
    tmp = xhci_to_hcd(xhci);
    ldv_free_irq_20((xhci->msix_entries + (unsigned long )i)->vector, (void *)tmp);
  } else {
  }
  i = i + 1;
  ldv_34330: ;
  if (xhci->msix_count > i) {
    goto ldv_34329;
  } else {
  }
  return (0);
}
}
static int xhci_setup_msi(struct xhci_hcd *xhci )
{
  int ret ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  {
  tmp = xhci_to_hcd(xhci);
  __mptr = (struct device const *)tmp->self.controller;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  ret = pci_enable_msi_exact(pdev, 1);
  if (ret != 0) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "failed to allocate MSI entry");
    return (ret);
  } else {
  }
  tmp___0 = xhci_to_hcd(xhci);
  ret = ldv_request_irq_21(pdev->irq, & xhci_msi_irq, 0UL, "xhci_hcd", (void *)tmp___0);
  if (ret != 0) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "disable MSI interrupt");
    pci_disable_msi(pdev);
  } else {
  }
  return (ret);
}
}
static void xhci_free_irq(struct xhci_hcd *xhci )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct usb_hcd *tmp ;
  int ret ;
  struct usb_hcd *tmp___0 ;
  struct usb_hcd *tmp___1 ;
  {
  tmp = xhci_to_hcd(xhci);
  __mptr = (struct device const *)tmp->self.controller;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp___0 = xhci_to_hcd(xhci);
  if (tmp___0->irq != 0U) {
    return;
  } else {
  }
  ret = xhci_free_msi(xhci);
  if (ret == 0) {
    return;
  } else {
  }
  if (pdev->irq != 0U) {
    tmp___1 = xhci_to_hcd(xhci);
    ldv_free_irq_22(pdev->irq, (void *)tmp___1);
  } else {
  }
  return;
}
}
static int xhci_setup_msix(struct xhci_hcd *xhci )
{
  int i ;
  int ret ;
  struct usb_hcd *hcd ;
  struct usb_hcd *tmp ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  unsigned int _min1 ;
  unsigned int tmp___0 ;
  __u32 _min2 ;
  void *tmp___1 ;
  struct usb_hcd *tmp___2 ;
  struct usb_hcd *tmp___3 ;
  {
  ret = 0;
  tmp = xhci_to_hcd(xhci);
  hcd = tmp;
  __mptr = (struct device const *)hcd->self.controller;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp___0 = cpumask_weight(cpu_online_mask);
  _min1 = tmp___0 + 1U;
  _min2 = (xhci->hcs_params1 >> 8) & 2047U;
  xhci->msix_count = (int )(_min1 < _min2 ? _min1 : _min2);
  tmp___1 = kmalloc((unsigned long )xhci->msix_count * 8UL, 208U);
  xhci->msix_entries = (struct msix_entry *)tmp___1;
  if ((unsigned long )xhci->msix_entries == (unsigned long )((struct msix_entry *)0)) {
    tmp___2 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___2->self.controller, "Failed to allocate MSI-X entries\n");
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_34359;
  ldv_34358:
  (xhci->msix_entries + (unsigned long )i)->entry = (u16 )i;
  (xhci->msix_entries + (unsigned long )i)->vector = 0U;
  i = i + 1;
  ldv_34359: ;
  if (xhci->msix_count > i) {
    goto ldv_34358;
  } else {
  }
  ret = pci_enable_msix_exact(pdev, xhci->msix_entries, xhci->msix_count);
  if (ret != 0) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "Failed to enable MSI-X");
    goto free_entries;
  } else {
  }
  i = 0;
  goto ldv_34364;
  ldv_34363:
  tmp___3 = xhci_to_hcd(xhci);
  ret = ldv_request_irq_23((xhci->msix_entries + (unsigned long )i)->vector, & xhci_msi_irq,
                           0UL, "xhci_hcd", (void *)tmp___3);
  if (ret != 0) {
    goto disable_msix;
  } else {
  }
  i = i + 1;
  ldv_34364: ;
  if (xhci->msix_count > i) {
    goto ldv_34363;
  } else {
  }
  hcd->msix_enabled = 1U;
  return (ret);
  disable_msix:
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "disable MSI-X interrupt");
  xhci_free_irq(xhci);
  pci_disable_msix(pdev);
  free_entries:
  kfree((void const *)xhci->msix_entries);
  xhci->msix_entries = (struct msix_entry *)0;
  return (ret);
}
}
static void xhci_cleanup_msix(struct xhci_hcd *xhci )
{
  struct usb_hcd *hcd ;
  struct usb_hcd *tmp ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  {
  tmp = xhci_to_hcd(xhci);
  hcd = tmp;
  __mptr = (struct device const *)hcd->self.controller;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  if ((xhci->quirks & 65536U) != 0U) {
    return;
  } else {
  }
  xhci_free_irq(xhci);
  if ((unsigned long )xhci->msix_entries != (unsigned long )((struct msix_entry *)0)) {
    pci_disable_msix(pdev);
    kfree((void const *)xhci->msix_entries);
    xhci->msix_entries = (struct msix_entry *)0;
  } else {
    pci_disable_msi(pdev);
  }
  hcd->msix_enabled = 0U;
  return;
}
}
static void xhci_msix_sync_irqs(struct xhci_hcd *xhci )
{
  int i ;
  {
  if ((unsigned long )xhci->msix_entries != (unsigned long )((struct msix_entry *)0)) {
    i = 0;
    goto ldv_34378;
    ldv_34377:
    synchronize_irq((xhci->msix_entries + (unsigned long )i)->vector);
    i = i + 1;
    ldv_34378: ;
    if (xhci->msix_count > i) {
      goto ldv_34377;
    } else {
    }
  } else {
  }
  return;
}
}
static int xhci_try_enable_msi(struct usb_hcd *hcd )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  struct pci_dev *pdev ;
  int ret ;
  struct device const *__mptr ;
  struct usb_hcd *tmp___0 ;
  struct usb_hcd *tmp___1 ;
  size_t tmp___2 ;
  struct usb_hcd *tmp___3 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  if ((xhci->quirks & 65536U) != 0U) {
    return (0);
  } else {
  }
  tmp___0 = xhci_to_hcd(xhci);
  __mptr = (struct device const *)tmp___0->self.controller;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  if ((xhci->quirks & 64U) != 0U) {
    goto legacy_irq;
  } else {
  }
  if (hcd->irq != 0U) {
    ldv_free_irq_24(hcd->irq, (void *)hcd);
  } else {
  }
  hcd->irq = 0U;
  ret = xhci_setup_msix(xhci);
  if (ret != 0) {
    ret = xhci_setup_msi(xhci);
  } else {
  }
  if (ret == 0) {
    return (0);
  } else {
  }
  if (pdev->irq == 0U) {
    tmp___1 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___1->self.controller, "No msi-x/msi found and no IRQ in BIOS\n");
    return (-22);
  } else {
  }
  legacy_irq:
  tmp___2 = strlen((char const *)(& hcd->irq_descr));
  if (tmp___2 == 0UL) {
    snprintf((char *)(& hcd->irq_descr), 24UL, "%s:usb%d", (hcd->driver)->description,
             hcd->self.busnum);
  } else {
  }
  ret = ldv_request_irq_25(pdev->irq, & usb_hcd_irq, 128UL, (char const *)(& hcd->irq_descr),
                           (void *)hcd);
  if (ret != 0) {
    tmp___3 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___3->self.controller, "request interrupt %d failed\n",
            pdev->irq);
    return (ret);
  } else {
  }
  hcd->irq = pdev->irq;
  return (0);
}
}
static void compliance_mode_recovery(unsigned long arg )
{
  struct xhci_hcd *xhci ;
  struct usb_hcd *hcd ;
  u32 temp ;
  int i ;
  unsigned long tmp ;
  {
  xhci = (struct xhci_hcd *)arg;
  i = 0;
  goto ldv_34397;
  ldv_34396:
  temp = readl((void const volatile *)*(xhci->usb3_ports + (unsigned long )i));
  if ((temp & 480U) == 320U) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks, "Compliance mode detected->port %d",
                   i + 1);
    xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks, "Attempting compliance mode recovery");
    hcd = xhci->shared_hcd;
    if (hcd->state == 4) {
      usb_hcd_resume_root_hub(hcd);
    } else {
    }
    usb_hcd_poll_rh_status(hcd);
  } else {
  }
  i = i + 1;
  ldv_34397: ;
  if ((unsigned int )i < xhci->num_usb3_ports) {
    goto ldv_34396;
  } else {
  }
  if (xhci->port_status_u0 != (u32 )((1 << (int )xhci->num_usb3_ports) + -1)) {
    tmp = msecs_to_jiffies(2000U);
    ldv_mod_timer_26(& xhci->comp_mode_recovery_timer, tmp + (unsigned long )jiffies);
  } else {
  }
  return;
}
}
static void compliance_mode_recovery_timer_init(struct xhci_hcd *xhci )
{
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  xhci->port_status_u0 = 0U;
  reg_timer_6(& xhci->comp_mode_recovery_timer);
  xhci->comp_mode_recovery_timer.data = (unsigned long )xhci;
  xhci->comp_mode_recovery_timer.function = & compliance_mode_recovery;
  tmp = msecs_to_jiffies(2000U);
  xhci->comp_mode_recovery_timer.expires = tmp + (unsigned long )jiffies;
  tmp___0 = msecs_to_jiffies(2000U);
  set_timer_slack(& xhci->comp_mode_recovery_timer, (int )tmp___0);
  add_timer(& xhci->comp_mode_recovery_timer);
  xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks, "Compliance mode recovery timer initialized");
  return;
}
}
bool xhci_compliance_mode_recovery_timer_quirk_check(void)
{
  char const *dmi_product_name ;
  char const *dmi_sys_vendor ;
  char *tmp ;
  char *tmp___0 ;
  char *tmp___1 ;
  char *tmp___2 ;
  char *tmp___3 ;
  {
  dmi_product_name = dmi_get_system_info(5);
  dmi_sys_vendor = dmi_get_system_info(4);
  if ((unsigned long )dmi_product_name == (unsigned long )((char const *)0) || (unsigned long )dmi_sys_vendor == (unsigned long )((char const *)0)) {
    return (0);
  } else {
  }
  tmp = strstr(dmi_sys_vendor, "Hewlett-Packard");
  if ((unsigned long )tmp == (unsigned long )((char *)0)) {
    return (0);
  } else {
  }
  tmp___0 = strstr(dmi_product_name, "Z420");
  if ((unsigned long )tmp___0 != (unsigned long )((char *)0)) {
    return (1);
  } else {
    tmp___1 = strstr(dmi_product_name, "Z620");
    if ((unsigned long )tmp___1 != (unsigned long )((char *)0)) {
      return (1);
    } else {
      tmp___2 = strstr(dmi_product_name, "Z820");
      if ((unsigned long )tmp___2 != (unsigned long )((char *)0)) {
        return (1);
      } else {
        tmp___3 = strstr(dmi_product_name, "Z1 Workstation");
        if ((unsigned long )tmp___3 != (unsigned long )((char *)0)) {
          return (1);
        } else {
        }
      }
    }
  }
  return (0);
}
}
static int xhci_all_ports_seen_u0(struct xhci_hcd *xhci )
{
  {
  return (xhci->port_status_u0 == (u32 )((1 << (int )xhci->num_usb3_ports) + -1));
}
}
int xhci_init(struct usb_hcd *hcd )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  int retval ;
  struct lock_class_key __key ;
  bool tmp___0 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  retval = 0;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "xhci_init");
  spinlock_check(& xhci->lock);
  __raw_spin_lock_init(& xhci->lock.ldv_6347.rlock, "&(&xhci->lock)->rlock", & __key);
  if ((unsigned int )xhci->hci_version == 149U && link_quirk != 0) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks, "QUIRK: Not clearing Link TRB chain bits.");
    xhci->quirks = xhci->quirks | 1U;
  } else {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "xHCI doesn\'t need link TRB QUIRK");
  }
  retval = xhci_mem_init(xhci, 208U);
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "Finished xhci_init");
  tmp___0 = xhci_compliance_mode_recovery_timer_quirk_check();
  if ((int )tmp___0) {
    xhci->quirks = xhci->quirks | 16384U;
    compliance_mode_recovery_timer_init(xhci);
  } else {
  }
  return (retval);
}
}
static int xhci_run_finished(struct xhci_hcd *xhci )
{
  int tmp ;
  {
  tmp = xhci_start(xhci);
  if (tmp != 0) {
    xhci_halt(xhci);
    return (-19);
  } else {
  }
  (xhci->shared_hcd)->state = 1;
  xhci->cmd_ring_state = 1U;
  if ((xhci->quirks & 4U) != 0U) {
    xhci_ring_cmd_db(xhci);
  } else {
  }
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "Finished xhci_run for USB3 roothub");
  return (0);
}
}
int xhci_run(struct usb_hcd *hcd )
{
  u32 temp ;
  u64 temp_64 ;
  int ret ;
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  struct xhci_command *command ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  hcd->uses_new_polling = 1U;
  tmp___1 = usb_hcd_is_primary_hcd(hcd);
  if (tmp___1 == 0) {
    tmp___0 = xhci_run_finished(xhci);
    return (tmp___0);
  } else {
  }
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "xhci_run");
  ret = xhci_try_enable_msi(hcd);
  if (ret != 0) {
    return (ret);
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_run";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor.format = "Command ring memory map follows:\n";
  descriptor.lineno = 743U;
  descriptor.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___2->self.controller,
                      "Command ring memory map follows:\n");
  } else {
  }
  xhci_debug_ring(xhci, xhci->cmd_ring);
  xhci_dbg_ring_ptrs(xhci, xhci->cmd_ring);
  xhci_dbg_cmd_ptrs(xhci);
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_run";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___0.format = "ERST memory map follows:\n";
  descriptor___0.lineno = 748U;
  descriptor___0.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___4->self.controller,
                      "ERST memory map follows:\n");
  } else {
  }
  xhci_dbg_erst(xhci, & xhci->erst);
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_run";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___1.format = "Event ring:\n";
  descriptor___1.lineno = 750U;
  descriptor___1.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___6->self.controller,
                      "Event ring:\n");
  } else {
  }
  xhci_debug_ring(xhci, xhci->event_ring);
  xhci_dbg_ring_ptrs(xhci, xhci->event_ring);
  temp_64 = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->ir_set)->erst_dequeue);
  temp_64 = temp_64 & 0xfffffffffffffff0ULL;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "ERST deq = 64\'h%0lx", (unsigned long )temp_64);
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "// Set the interrupt modulation register");
  temp = readl((void const volatile *)(& (xhci->ir_set)->irq_control));
  temp = temp & 4294901760U;
  temp = temp | 160U;
  writel(temp, (void volatile *)(& (xhci->ir_set)->irq_control));
  temp = readl((void const volatile *)(& (xhci->op_regs)->command));
  temp = temp | 4U;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "// Enable interrupts, cmd = 0x%x.",
                 temp);
  writel(temp, (void volatile *)(& (xhci->op_regs)->command));
  temp = readl((void const volatile *)(& (xhci->ir_set)->irq_pending));
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "// Enabling event ring interrupter %p by writing 0x%x to irq_pending",
                 xhci->ir_set, (temp & 4294967292U) | 2U);
  writel((temp & 4294967292U) | 2U, (void volatile *)(& (xhci->ir_set)->irq_pending));
  xhci_print_ir_set(xhci, 0);
  if ((xhci->quirks & 4U) != 0U) {
    command = xhci_alloc_command(xhci, 0, 0, 208U);
    if ((unsigned long )command == (unsigned long )((struct xhci_command *)0)) {
      return (-12);
    } else {
    }
    xhci_queue_vendor_command(xhci, command, 0U, 0U, 0U, 50176U);
  } else {
  }
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "Finished xhci_run for USB2 roothub");
  return (0);
}
}
static void xhci_only_stop_hcd(struct usb_hcd *hcd )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  spin_lock_irq(& xhci->lock);
  xhci_halt(xhci);
  xhci->shared_hcd = (struct usb_hcd *)0;
  spin_unlock_irq(& xhci->lock);
  return;
}
}
void xhci_stop(struct usb_hcd *hcd )
{
  u32 temp ;
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  tmp___0 = usb_hcd_is_primary_hcd(hcd);
  if (tmp___0 == 0) {
    xhci_only_stop_hcd(xhci->shared_hcd);
    return;
  } else {
  }
  spin_lock_irq(& xhci->lock);
  xhci_halt(xhci);
  xhci_reset(xhci);
  spin_unlock_irq(& xhci->lock);
  xhci_cleanup_msix(xhci);
  if ((xhci->quirks & 16384U) != 0U) {
    tmp___1 = xhci_all_ports_seen_u0(xhci);
    if (tmp___1 == 0) {
      ldv_del_timer_sync_27(& xhci->comp_mode_recovery_timer);
      xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks, "%s: compliance mode recovery timer deleted",
                     "xhci_stop");
    } else {
    }
  } else {
  }
  if ((xhci->quirks & 8U) != 0U) {
    usb_amd_dev_put();
  } else {
  }
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "// Disabling event ring interrupts");
  temp = readl((void const volatile *)(& (xhci->op_regs)->status));
  writel(temp & 4294967287U, (void volatile *)(& (xhci->op_regs)->status));
  temp = readl((void const volatile *)(& (xhci->ir_set)->irq_pending));
  writel(temp & 4294967292U, (void volatile *)(& (xhci->ir_set)->irq_pending));
  xhci_print_ir_set(xhci, 0);
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "cleaning up memory");
  xhci_mem_cleanup(xhci);
  tmp___2 = readl((void const volatile *)(& (xhci->op_regs)->status));
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "xhci_stop completed - status = %x",
                 tmp___2);
  return;
}
}
void xhci_shutdown(struct usb_hcd *hcd )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  struct device const *__mptr ;
  unsigned int tmp___0 ;
  struct device const *__mptr___0 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  if ((xhci->quirks & 8192U) != 0U) {
    __mptr = (struct device const *)hcd->self.controller;
    usb_disable_xhci_ports((struct pci_dev *)__mptr + 0xffffffffffffff68UL);
  } else {
  }
  spin_lock_irq(& xhci->lock);
  xhci_halt(xhci);
  if ((xhci->quirks & 262144U) != 0U) {
    xhci_reset(xhci);
  } else {
  }
  spin_unlock_irq(& xhci->lock);
  xhci_cleanup_msix(xhci);
  tmp___0 = readl((void const volatile *)(& (xhci->op_regs)->status));
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "xhci_shutdown completed - status = %x",
                 tmp___0);
  if ((xhci->quirks & 262144U) != 0U) {
    __mptr___0 = (struct device const *)hcd->self.controller;
    pci_set_power_state((struct pci_dev *)__mptr___0 + 0xffffffffffffff68UL, 3);
  } else {
  }
  return;
}
}
static void xhci_save_registers(struct xhci_hcd *xhci )
{
  {
  xhci->s3.command = readl((void const volatile *)(& (xhci->op_regs)->command));
  xhci->s3.dev_nt = readl((void const volatile *)(& (xhci->op_regs)->dev_notification));
  xhci->s3.dcbaa_ptr = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->op_regs)->dcbaa_ptr);
  xhci->s3.config_reg = readl((void const volatile *)(& (xhci->op_regs)->config_reg));
  xhci->s3.erst_size = readl((void const volatile *)(& (xhci->ir_set)->erst_size));
  xhci->s3.erst_base = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->ir_set)->erst_base);
  xhci->s3.erst_dequeue = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->ir_set)->erst_dequeue);
  xhci->s3.irq_pending = readl((void const volatile *)(& (xhci->ir_set)->irq_pending));
  xhci->s3.irq_control = readl((void const volatile *)(& (xhci->ir_set)->irq_control));
  return;
}
}
static void xhci_restore_registers(struct xhci_hcd *xhci )
{
  {
  writel(xhci->s3.command, (void volatile *)(& (xhci->op_regs)->command));
  writel(xhci->s3.dev_nt, (void volatile *)(& (xhci->op_regs)->dev_notification));
  xhci_write_64(xhci, xhci->s3.dcbaa_ptr, & (xhci->op_regs)->dcbaa_ptr);
  writel(xhci->s3.config_reg, (void volatile *)(& (xhci->op_regs)->config_reg));
  writel(xhci->s3.erst_size, (void volatile *)(& (xhci->ir_set)->erst_size));
  xhci_write_64(xhci, xhci->s3.erst_base, & (xhci->ir_set)->erst_base);
  xhci_write_64(xhci, xhci->s3.erst_dequeue, & (xhci->ir_set)->erst_dequeue);
  writel(xhci->s3.irq_pending, (void volatile *)(& (xhci->ir_set)->irq_pending));
  writel(xhci->s3.irq_control, (void volatile *)(& (xhci->ir_set)->irq_control));
  return;
}
}
static void xhci_set_cmd_ring_deq(struct xhci_hcd *xhci )
{
  u64 val_64 ;
  dma_addr_t tmp ;
  {
  val_64 = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->op_regs)->cmd_ring);
  tmp = xhci_trb_virt_to_dma((xhci->cmd_ring)->deq_seg, (xhci->cmd_ring)->dequeue);
  val_64 = ((val_64 & 63ULL) | (tmp & 0xffffffffffffffc0ULL)) | (unsigned long long )(xhci->cmd_ring)->cycle_state;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init, "// Setting command ring address to 0x%llx",
                 val_64);
  xhci_write_64(xhci, val_64, & (xhci->op_regs)->cmd_ring);
  return;
}
}
static void xhci_clear_command_ring(struct xhci_hcd *xhci )
{
  struct xhci_ring *ring ;
  struct xhci_segment *seg ;
  {
  ring = xhci->cmd_ring;
  seg = ring->deq_seg;
  ldv_34464:
  memset((void *)seg->trbs, 0, 1008UL);
  (seg->trbs + 63UL)->link.control = (seg->trbs + 63UL)->link.control & 4294967294U;
  seg = seg->next;
  if ((unsigned long )ring->deq_seg != (unsigned long )seg) {
    goto ldv_34464;
  } else {
  }
  ring->deq_seg = ring->first_seg;
  ring->dequeue = (ring->first_seg)->trbs;
  ring->enq_seg = ring->deq_seg;
  ring->enqueue = ring->dequeue;
  ring->num_trbs_free = ring->num_segs * 63U - 1U;
  ring->cycle_state = 1U;
  xhci_set_cmd_ring_deq(xhci);
  return;
}
}
int xhci_suspend(struct xhci_hcd *xhci )
{
  int rc ;
  unsigned int delay ;
  struct usb_hcd *hcd ;
  struct usb_hcd *tmp ;
  u32 command ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct usb_hcd *tmp___2 ;
  int tmp___3 ;
  struct usb_hcd *tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  rc = 0;
  delay = 16000U;
  tmp = xhci_to_hcd(xhci);
  hcd = tmp;
  if (hcd->state != 4 || (xhci->shared_hcd)->state != 4) {
    return (-22);
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_suspend";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor.format = "%s: stopping port polling.\n";
  descriptor.lineno = 1006U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "%s: stopping port polling.\n", "xhci_suspend");
  } else {
  }
  clear_bit(2L, (unsigned long volatile *)(& hcd->flags));
  ldv_del_timer_sync_28(& hcd->rh_timer);
  spin_lock_irq(& xhci->lock);
  clear_bit(0L, (unsigned long volatile *)(& hcd->flags));
  clear_bit(0L, (unsigned long volatile *)(& (xhci->shared_hcd)->flags));
  command = readl((void const volatile *)(& (xhci->op_regs)->command));
  command = command & 4294967294U;
  writel(command, (void volatile *)(& (xhci->op_regs)->command));
  delay = ((xhci->quirks & 131072U) != 0U ? 10U : 1U) * delay;
  tmp___3 = xhci_handshake(xhci, (void *)(& (xhci->op_regs)->status), 1U, 1U, (int )delay);
  if (tmp___3 != 0) {
    tmp___2 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___2->self.controller, "WARN: xHC CMD_RUN timeout\n");
    spin_unlock_irq(& xhci->lock);
    return (-110);
  } else {
  }
  xhci_clear_command_ring(xhci);
  xhci_save_registers(xhci);
  command = readl((void const volatile *)(& (xhci->op_regs)->command));
  command = command | 256U;
  writel(command, (void volatile *)(& (xhci->op_regs)->command));
  tmp___5 = xhci_handshake(xhci, (void *)(& (xhci->op_regs)->status), 256U, 0U, 10000);
  if (tmp___5 != 0) {
    tmp___4 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___4->self.controller, "WARN: xHC save state timeout\n");
    spin_unlock_irq(& xhci->lock);
    return (-110);
  } else {
  }
  spin_unlock_irq(& xhci->lock);
  if ((xhci->quirks & 16384U) != 0U) {
    tmp___6 = xhci_all_ports_seen_u0(xhci);
    if (tmp___6 == 0) {
      ldv_del_timer_sync_29(& xhci->comp_mode_recovery_timer);
      xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks, "%s: compliance mode recovery timer deleted",
                     "xhci_suspend");
    } else {
    }
  } else {
  }
  xhci_msix_sync_irqs(xhci);
  return (rc);
}
}
int xhci_resume(struct xhci_hcd *xhci , bool hibernated )
{
  u32 command ;
  u32 temp ;
  struct usb_hcd *hcd ;
  struct usb_hcd *tmp ;
  struct usb_hcd *secondary_hcd ;
  int retval ;
  bool comp_timer_running ;
  struct usb_hcd *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___2 ;
  unsigned int tmp___9 ;
  struct usb_hcd *tmp___10 ;
  long tmp___11 ;
  int tmp___12 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___13 ;
  long tmp___14 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___15 ;
  long tmp___16 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___17 ;
  long tmp___18 ;
  struct _ddebug descriptor___6 ;
  struct usb_hcd *tmp___19 ;
  long tmp___20 ;
  {
  temp = 0U;
  tmp = xhci_to_hcd(xhci);
  hcd = tmp;
  retval = 0;
  comp_timer_running = 0;
  if ((long )((unsigned long )jiffies - xhci->bus_state[0].next_statechange) < 0L || (long )((unsigned long )jiffies - xhci->bus_state[1].next_statechange) < 0L) {
    msleep(100U);
  } else {
  }
  set_bit(0L, (unsigned long volatile *)(& hcd->flags));
  set_bit(0L, (unsigned long volatile *)(& (xhci->shared_hcd)->flags));
  spin_lock_irq(& xhci->lock);
  if ((xhci->quirks & 128U) != 0U) {
    hibernated = 1;
  } else {
  }
  if (! hibernated) {
    xhci_restore_registers(xhci);
    xhci_set_cmd_ring_deq(xhci);
    command = readl((void const volatile *)(& (xhci->op_regs)->command));
    command = command | 512U;
    writel(command, (void volatile *)(& (xhci->op_regs)->command));
    tmp___1 = xhci_handshake(xhci, (void *)(& (xhci->op_regs)->status), 512U, 0U,
                             10000);
    if (tmp___1 != 0) {
      tmp___0 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___0->self.controller, "WARN: xHC restore state timeout\n");
      spin_unlock_irq(& xhci->lock);
      return (-110);
    } else {
    }
    temp = readl((void const volatile *)(& (xhci->op_regs)->status));
  } else {
  }
  if ((temp & 1024U) != 0U || (int )hibernated) {
    if ((xhci->quirks & 16384U) != 0U) {
      tmp___2 = xhci_all_ports_seen_u0(xhci);
      if (tmp___2 == 0) {
        ldv_del_timer_sync_30(& xhci->comp_mode_recovery_timer);
        xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks, "Compliance Mode Recovery Timer deleted!");
      } else {
      }
    } else {
    }
    usb_root_hub_lost_power((xhci->main_hcd)->self.root_hub);
    usb_root_hub_lost_power((xhci->shared_hcd)->self.root_hub);
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_resume";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor.format = "Stop HCD\n";
    descriptor.lineno = 1128U;
    descriptor.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      tmp___3 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___3->self.controller,
                        "Stop HCD\n");
    } else {
    }
    xhci_halt(xhci);
    xhci_reset(xhci);
    spin_unlock_irq(& xhci->lock);
    xhci_cleanup_msix(xhci);
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_resume";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor___0.format = "// Disabling event ring interrupts\n";
    descriptor___0.lineno = 1134U;
    descriptor___0.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      tmp___5 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___5->self.controller,
                        "// Disabling event ring interrupts\n");
    } else {
    }
    temp = readl((void const volatile *)(& (xhci->op_regs)->status));
    writel(temp & 4294967287U, (void volatile *)(& (xhci->op_regs)->status));
    temp = readl((void const volatile *)(& (xhci->ir_set)->irq_pending));
    writel(temp & 4294967292U, (void volatile *)(& (xhci->ir_set)->irq_pending));
    xhci_print_ir_set(xhci, 0);
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_resume";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor___1.format = "cleaning up memory\n";
    descriptor___1.lineno = 1141U;
    descriptor___1.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      tmp___7 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___7->self.controller,
                        "cleaning up memory\n");
    } else {
    }
    xhci_mem_cleanup(xhci);
    descriptor___2.modname = "xhci_hcd";
    descriptor___2.function = "xhci_resume";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor___2.format = "xhci_stop completed - status = %x\n";
    descriptor___2.lineno = 1144U;
    descriptor___2.flags = 0U;
    tmp___11 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___11 != 0L) {
      tmp___9 = readl((void const volatile *)(& (xhci->op_regs)->status));
      tmp___10 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___10->self.controller,
                        "xhci_stop completed - status = %x\n", tmp___9);
    } else {
    }
    tmp___12 = usb_hcd_is_primary_hcd(hcd);
    if (tmp___12 == 0) {
      secondary_hcd = hcd;
    } else {
      secondary_hcd = xhci->shared_hcd;
    }
    descriptor___3.modname = "xhci_hcd";
    descriptor___3.function = "xhci_resume";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor___3.format = "Initialize the xhci_hcd\n";
    descriptor___3.lineno = 1155U;
    descriptor___3.flags = 0U;
    tmp___14 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___14 != 0L) {
      tmp___13 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___13->self.controller,
                        "Initialize the xhci_hcd\n");
    } else {
    }
    retval = xhci_init(hcd->primary_hcd);
    if (retval != 0) {
      return (retval);
    } else {
    }
    comp_timer_running = 1;
    descriptor___4.modname = "xhci_hcd";
    descriptor___4.function = "xhci_resume";
    descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor___4.format = "Start the primary HCD\n";
    descriptor___4.lineno = 1161U;
    descriptor___4.flags = 0U;
    tmp___16 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___16 != 0L) {
      tmp___15 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___15->self.controller,
                        "Start the primary HCD\n");
    } else {
    }
    retval = xhci_run(hcd->primary_hcd);
    if (retval == 0) {
      descriptor___5.modname = "xhci_hcd";
      descriptor___5.function = "xhci_resume";
      descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
      descriptor___5.format = "Start the secondary HCD\n";
      descriptor___5.lineno = 1164U;
      descriptor___5.flags = 0U;
      tmp___18 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
      if (tmp___18 != 0L) {
        tmp___17 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___17->self.controller,
                          "Start the secondary HCD\n");
      } else {
      }
      retval = xhci_run(secondary_hcd);
    } else {
    }
    hcd->state = 4;
    (xhci->shared_hcd)->state = 4;
    goto done;
  } else {
  }
  command = readl((void const volatile *)(& (xhci->op_regs)->command));
  command = command | 1U;
  writel(command, (void volatile *)(& (xhci->op_regs)->command));
  xhci_handshake(xhci, (void *)(& (xhci->op_regs)->status), 1U, 0U, 250000);
  spin_unlock_irq(& xhci->lock);
  done: ;
  if (retval == 0) {
    usb_hcd_resume_root_hub(hcd);
    usb_hcd_resume_root_hub(xhci->shared_hcd);
  } else {
  }
  if ((xhci->quirks & 16384U) != 0U && ! comp_timer_running) {
    compliance_mode_recovery_timer_init(xhci);
  } else {
  }
  descriptor___6.modname = "xhci_hcd";
  descriptor___6.function = "xhci_resume";
  descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___6.format = "%s: starting port polling.\n";
  descriptor___6.lineno = 1206U;
  descriptor___6.flags = 0U;
  tmp___20 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___20 != 0L) {
    tmp___19 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___6, (struct device const *)tmp___19->self.controller,
                      "%s: starting port polling.\n", "xhci_resume");
  } else {
  }
  set_bit(2L, (unsigned long volatile *)(& hcd->flags));
  usb_hcd_poll_rh_status(hcd);
  return (retval);
}
}
unsigned int xhci_get_endpoint_index(struct usb_endpoint_descriptor *desc )
{
  unsigned int index ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp___2 = usb_endpoint_xfer_control((struct usb_endpoint_descriptor const *)desc);
  if (tmp___2 != 0) {
    tmp = usb_endpoint_num((struct usb_endpoint_descriptor const *)desc);
    index = (unsigned int )(tmp * 2);
  } else {
    tmp___0 = usb_endpoint_num((struct usb_endpoint_descriptor const *)desc);
    tmp___1 = usb_endpoint_dir_in((struct usb_endpoint_descriptor const *)desc);
    index = ((unsigned int )(tmp___0 * 2) + (tmp___1 != 0 ? 1U : 0U)) - 1U;
  }
  return (index);
}
}
unsigned int xhci_get_endpoint_address(unsigned int ep_index )
{
  unsigned int number ;
  unsigned int direction ;
  {
  number = (ep_index + 1U) / 2U;
  direction = (int )ep_index & 1 ? 0U : 128U;
  return (direction | number);
}
}
unsigned int xhci_get_endpoint_flag(struct usb_endpoint_descriptor *desc )
{
  unsigned int tmp ;
  {
  tmp = xhci_get_endpoint_index(desc);
  return ((unsigned int )(1 << (int )(tmp + 1U)));
}
}
unsigned int xhci_get_endpoint_flag_from_index(unsigned int ep_index )
{
  {
  return ((unsigned int )(1 << (int )(ep_index + 1U)));
}
}
unsigned int xhci_last_valid_endpoint(u32 added_ctxs )
{
  int tmp ;
  {
  tmp = fls((int )added_ctxs);
  return ((unsigned int )(tmp + -1));
}
}
static int xhci_check_args(struct usb_hcd *hcd , struct usb_device *udev , struct usb_host_endpoint *ep ,
                           int check_ep , bool check_virt_dev , char const *func )
{
  struct xhci_hcd *xhci ;
  struct xhci_virt_device *virt_dev ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  {
  if (((unsigned long )hcd == (unsigned long )((struct usb_hcd *)0) || (check_ep != 0 && (unsigned long )ep == (unsigned long )((struct usb_host_endpoint *)0))) || (unsigned long )udev == (unsigned long )((struct usb_device *)0)) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_check_args";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor.format = "xHCI %s called with invalid args\n";
    descriptor.lineno = 1286U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "xHCI %s called with invalid args\n", func);
    } else {
    }
    return (-22);
  } else {
  }
  if ((unsigned long )udev->parent == (unsigned long )((struct usb_device *)0)) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_check_args";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor___0.format = "xHCI %s called for root hub\n";
    descriptor___0.lineno = 1290U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "xHCI %s called for root hub\n", func);
    } else {
    }
    return (0);
  } else {
  }
  xhci = hcd_to_xhci(hcd);
  if ((int )check_virt_dev) {
    if (udev->slot_id == 0 || (unsigned long )xhci->devs[udev->slot_id] == (unsigned long )((struct xhci_virt_device *)0)) {
      descriptor___1.modname = "xhci_hcd";
      descriptor___1.function = "xhci_check_args";
      descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
      descriptor___1.format = "xHCI %s called with unaddressed device\n";
      descriptor___1.lineno = 1298U;
      descriptor___1.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___2 != 0L) {
        tmp___1 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___1->self.controller,
                          "xHCI %s called with unaddressed device\n", func);
      } else {
      }
      return (-22);
    } else {
    }
    virt_dev = xhci->devs[udev->slot_id];
    if ((unsigned long )virt_dev->udev != (unsigned long )udev) {
      descriptor___2.modname = "xhci_hcd";
      descriptor___2.function = "xhci_check_args";
      descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
      descriptor___2.format = "xHCI %s called with udev and virt_dev does not match\n";
      descriptor___2.lineno = 1305U;
      descriptor___2.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      if (tmp___4 != 0L) {
        tmp___3 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___3->self.controller,
                          "xHCI %s called with udev and virt_dev does not match\n",
                          func);
      } else {
      }
      return (-22);
    } else {
    }
  } else {
  }
  if ((xhci->xhc_state & 2U) != 0U) {
    return (-19);
  } else {
  }
  return (1);
}
}
static int xhci_configure_endpoint(struct xhci_hcd *xhci , struct usb_device *udev ,
                                   struct xhci_command *command , bool ctx_change ,
                                   bool must_succeed ) ;
static int xhci_check_maxpacket(struct xhci_hcd *xhci , unsigned int slot_id , unsigned int ep_index ,
                                struct urb *urb )
{
  struct xhci_container_ctx *out_ctx ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  struct xhci_ep_ctx *ep_ctx ;
  struct xhci_command *command ;
  int max_packet_size ;
  int hw_max_packet_size ;
  int ret ;
  struct usb_hcd *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  {
  ret = 0;
  out_ctx = (xhci->devs[slot_id])->out_ctx;
  ep_ctx = xhci_get_ep_ctx(xhci, out_ctx, ep_index);
  hw_max_packet_size = (int )(ep_ctx->ep_info2 >> 16);
  max_packet_size = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& (urb->dev)->ep0.desc));
  if (hw_max_packet_size != max_packet_size) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_context_change, "Max Packet Size for ep 0 changed.");
    xhci_dbg_trace(xhci, & trace_xhci_dbg_context_change, "Max packet size in usb_device = %d",
                   max_packet_size);
    xhci_dbg_trace(xhci, & trace_xhci_dbg_context_change, "Max packet size in xHCI HW = %d",
                   hw_max_packet_size);
    xhci_dbg_trace(xhci, & trace_xhci_dbg_context_change, "Issuing evaluate context command.");
    command = xhci_alloc_command(xhci, 0, 1, 208U);
    if ((unsigned long )command == (unsigned long )((struct xhci_command *)0)) {
      return (-12);
    } else {
    }
    command->in_ctx = (xhci->devs[slot_id])->in_ctx;
    ctrl_ctx = xhci_get_input_control_ctx(xhci, command->in_ctx);
    if ((unsigned long )ctrl_ctx == (unsigned long )((struct xhci_input_control_ctx *)0)) {
      tmp = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp->self.controller, "%s: Could not get input context, bad type.\n",
               "xhci_check_maxpacket");
      ret = -12;
      goto command_cleanup;
    } else {
    }
    xhci_endpoint_copy(xhci, (xhci->devs[slot_id])->in_ctx, (xhci->devs[slot_id])->out_ctx,
                       ep_index);
    ep_ctx = xhci_get_ep_ctx(xhci, command->in_ctx, ep_index);
    ep_ctx->ep_info2 = ep_ctx->ep_info2 & 65535U;
    ep_ctx->ep_info2 = ep_ctx->ep_info2 | (__le32 )(max_packet_size << 16);
    ctrl_ctx->add_flags = 2U;
    ctrl_ctx->drop_flags = 0U;
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_check_maxpacket";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor.format = "Slot %d input context\n";
    descriptor.lineno = 1381U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "Slot %d input context\n", slot_id);
    } else {
    }
    xhci_dbg_ctx(xhci, command->in_ctx, ep_index);
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_check_maxpacket";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor___0.format = "Slot %d output context\n";
    descriptor___0.lineno = 1383U;
    descriptor___0.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      tmp___2 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                        "Slot %d output context\n", slot_id);
    } else {
    }
    xhci_dbg_ctx(xhci, out_ctx, ep_index);
    ret = xhci_configure_endpoint(xhci, urb->dev, command, 1, 0);
    ctrl_ctx->add_flags = 1U;
    command_cleanup:
    kfree((void const *)command->completion);
    kfree((void const *)command);
  } else {
  }
  return (ret);
}
}
int xhci_urb_enqueue(struct usb_hcd *hcd , struct urb *urb , gfp_t mem_flags )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  struct xhci_td *buffer ;
  unsigned long flags ;
  int ret ;
  unsigned int slot_id ;
  unsigned int ep_index ;
  struct urb_priv *urb_priv ;
  int size ;
  int i ;
  int tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  struct usb_hcd *tmp___7 ;
  struct usb_hcd *tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___12 ;
  long tmp___13 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  ret = 0;
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    return (-22);
  } else {
    tmp___0 = xhci_check_args(hcd, urb->dev, urb->ep, 1, 1, "xhci_urb_enqueue");
    if (tmp___0 <= 0) {
      return (-22);
    } else {
    }
  }
  slot_id = (unsigned int )(urb->dev)->slot_id;
  ep_index = xhci_get_endpoint_index(& (urb->ep)->desc);
  if ((hcd->flags & 1UL) == 0UL) {
    tmp___3 = preempt_count();
    if (((unsigned long )tmp___3 & 2096896UL) == 0UL) {
      descriptor.modname = "xhci_hcd";
      descriptor.function = "xhci_urb_enqueue";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
      descriptor.format = "urb submitted during PCI suspend\n";
      descriptor.lineno = 1423U;
      descriptor.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___2 != 0L) {
        tmp___1 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                          "urb submitted during PCI suspend\n");
      } else {
      }
    } else {
    }
    ret = -108;
    goto exit;
  } else {
  }
  tmp___4 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
  if (tmp___4 != 0) {
    size = urb->number_of_packets;
  } else {
    size = 1;
  }
  tmp___5 = kzalloc(((unsigned long )size + 1UL) * 8UL, mem_flags);
  urb_priv = (struct urb_priv *)tmp___5;
  if ((unsigned long )urb_priv == (unsigned long )((struct urb_priv *)0)) {
    return (-12);
  } else {
  }
  tmp___6 = kzalloc((unsigned long )size * 64UL, mem_flags);
  buffer = (struct xhci_td *)tmp___6;
  if ((unsigned long )buffer == (unsigned long )((struct xhci_td *)0)) {
    kfree((void const *)urb_priv);
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_34581;
  ldv_34580:
  urb_priv->td[i] = buffer;
  buffer = buffer + 1;
  i = i + 1;
  ldv_34581: ;
  if (i < size) {
    goto ldv_34580;
  } else {
  }
  urb_priv->length = size;
  urb_priv->td_cnt = 0;
  urb->hcpriv = (void *)urb_priv;
  tmp___11 = usb_endpoint_xfer_control((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
  if (tmp___11 != 0) {
    if ((unsigned int )(urb->dev)->speed == 2U) {
      ret = xhci_check_maxpacket(xhci, slot_id, ep_index, urb);
      if (ret < 0) {
        xhci_urb_free_priv(xhci, urb_priv);
        urb->hcpriv = (void *)0;
        return (ret);
      } else {
      }
    } else {
    }
    ldv_spin_lock();
    if ((int )xhci->xhc_state & 1) {
      goto dying;
    } else {
    }
    ret = xhci_queue_ctrl_tx(xhci, 32U, urb, (int )slot_id, ep_index);
    if (ret != 0) {
      goto free_priv;
    } else {
    }
    spin_unlock_irqrestore(& xhci->lock, flags);
  } else {
    tmp___10 = usb_endpoint_xfer_bulk((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
    if (tmp___10 != 0) {
      ldv_spin_lock();
      if ((int )xhci->xhc_state & 1) {
        goto dying;
      } else {
      }
      if (((xhci->devs[slot_id])->eps[ep_index].ep_state & 8U) != 0U) {
        tmp___7 = xhci_to_hcd(xhci);
        dev_warn((struct device const *)tmp___7->self.controller, "WARN: Can\'t enqueue URB while bulk ep is transitioning to using streams.\n");
        ret = -22;
      } else
      if (((xhci->devs[slot_id])->eps[ep_index].ep_state & 32U) != 0U) {
        tmp___8 = xhci_to_hcd(xhci);
        dev_warn((struct device const *)tmp___8->self.controller, "WARN: Can\'t enqueue URB while bulk ep is transitioning to not having streams.\n");
        ret = -22;
      } else {
        ret = xhci_queue_bulk_tx(xhci, 32U, urb, (int )slot_id, ep_index);
      }
      if (ret != 0) {
        goto free_priv;
      } else {
      }
      spin_unlock_irqrestore(& xhci->lock, flags);
    } else {
      tmp___9 = usb_endpoint_xfer_int((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
      if (tmp___9 != 0) {
        ldv_spin_lock();
        if ((int )xhci->xhc_state & 1) {
          goto dying;
        } else {
        }
        ret = xhci_queue_intr_tx(xhci, 32U, urb, (int )slot_id, ep_index);
        if (ret != 0) {
          goto free_priv;
        } else {
        }
        spin_unlock_irqrestore(& xhci->lock, flags);
      } else {
        ldv_spin_lock();
        if ((int )xhci->xhc_state & 1) {
          goto dying;
        } else {
        }
        ret = xhci_queue_isoc_tx_prepare(xhci, 32U, urb, (int )slot_id, ep_index);
        if (ret != 0) {
          goto free_priv;
        } else {
        }
        spin_unlock_irqrestore(& xhci->lock, flags);
      }
    }
  }
  exit: ;
  return (ret);
  dying:
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_urb_enqueue";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___0.format = "Ep 0x%x: URB %p submitted for non-responsive xHCI host.\n";
  descriptor___0.lineno = 1524U;
  descriptor___0.flags = 0U;
  tmp___13 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___13 != 0L) {
    tmp___12 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___12->self.controller,
                      "Ep 0x%x: URB %p submitted for non-responsive xHCI host.\n",
                      (int )(urb->ep)->desc.bEndpointAddress, urb);
  } else {
  }
  ret = -108;
  free_priv:
  xhci_urb_free_priv(xhci, urb_priv);
  urb->hcpriv = (void *)0;
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (ret);
}
}
static struct xhci_ring *xhci_urb_to_transfer_ring(struct xhci_hcd *xhci , struct urb *urb )
{
  unsigned int slot_id ;
  unsigned int ep_index ;
  unsigned int stream_id ;
  struct xhci_virt_ep *ep ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  {
  slot_id = (unsigned int )(urb->dev)->slot_id;
  ep_index = xhci_get_endpoint_index(& (urb->ep)->desc);
  stream_id = urb->stream_id;
  ep = (struct xhci_virt_ep *)(& (xhci->devs[slot_id])->eps) + (unsigned long )ep_index;
  if ((ep->ep_state & 16U) == 0U) {
    return (ep->ring);
  } else {
  }
  if (stream_id == 0U) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN: Slot ID %u, ep index %u has streams, but URB has no stream ID.\n",
             slot_id, ep_index);
    return ((struct xhci_ring *)0);
  } else {
  }
  if ((ep->stream_info)->num_streams > stream_id) {
    return (*((ep->stream_info)->stream_rings + (unsigned long )stream_id));
  } else {
  }
  tmp___0 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___0->self.controller, "WARN: Slot ID %u, ep index %u has stream IDs 1 to %u allocated, but stream ID %u is requested.\n",
           slot_id, ep_index, (ep->stream_info)->num_streams - 1U, stream_id);
  return ((struct xhci_ring *)0);
}
}
int xhci_urb_dequeue(struct usb_hcd *hcd , struct urb *urb , int status )
{
  unsigned long flags ;
  int ret ;
  int i ;
  u32 temp ;
  struct xhci_hcd *xhci ;
  struct urb_priv *urb_priv ;
  struct xhci_td *td ;
  unsigned int ep_index ;
  struct xhci_ring *ep_ring ;
  struct xhci_virt_ep *ep ;
  struct xhci_command *command ;
  int tmp ;
  int tmp___0 ;
  dma_addr_t tmp___1 ;
  {
  xhci = hcd_to_xhci(hcd);
  ldv_spin_lock();
  ret = usb_hcd_check_unlink_urb(hcd, urb, status);
  if (ret != 0 || (unsigned long )urb->hcpriv == (unsigned long )((void *)0)) {
    goto done;
  } else {
  }
  temp = readl((void const volatile *)(& (xhci->op_regs)->status));
  if (temp == 4294967295U || (xhci->xhc_state & 2U) != 0U) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb, "HW died, freeing TD.");
    urb_priv = (struct urb_priv *)urb->hcpriv;
    i = urb_priv->td_cnt;
    goto ldv_34612;
    ldv_34611:
    td = urb_priv->td[i];
    tmp = list_empty((struct list_head const *)(& td->td_list));
    if (tmp == 0) {
      list_del_init(& td->td_list);
    } else {
    }
    tmp___0 = list_empty((struct list_head const *)(& td->cancelled_td_list));
    if (tmp___0 == 0) {
      list_del_init(& td->cancelled_td_list);
    } else {
    }
    i = i + 1;
    ldv_34612: ;
    if (urb_priv->length > i) {
      goto ldv_34611;
    } else {
    }
    usb_hcd_unlink_urb_from_ep(hcd, urb);
    spin_unlock_irqrestore(& xhci->lock, flags);
    usb_hcd_giveback_urb(hcd, urb, -108);
    xhci_urb_free_priv(xhci, urb_priv);
    return (ret);
  } else {
  }
  if ((int )xhci->xhc_state & 1 || (xhci->xhc_state & 2U) != 0U) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb, "Ep 0x%x: URB %p to be canceled on non-responsive xHCI host.",
                   (int )(urb->ep)->desc.bEndpointAddress, urb);
    goto done;
  } else {
  }
  ep_index = xhci_get_endpoint_index(& (urb->ep)->desc);
  ep = (struct xhci_virt_ep *)(& (xhci->devs[(urb->dev)->slot_id])->eps) + (unsigned long )ep_index;
  ep_ring = xhci_urb_to_transfer_ring(xhci, urb);
  if ((unsigned long )ep_ring == (unsigned long )((struct xhci_ring *)0)) {
    ret = -22;
    goto done;
  } else {
  }
  urb_priv = (struct urb_priv *)urb->hcpriv;
  i = urb_priv->td_cnt;
  if (urb_priv->length > i) {
    tmp___1 = xhci_trb_virt_to_dma((urb_priv->td[i])->start_seg, (urb_priv->td[i])->first_trb);
    xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb, "Cancel URB %p, dev %s, ep 0x%x, starting at offset 0x%llx",
                   urb, (char *)(& (urb->dev)->devpath), (int )(urb->ep)->desc.bEndpointAddress,
                   tmp___1);
  } else {
  }
  goto ldv_34615;
  ldv_34614:
  td = urb_priv->td[i];
  list_add_tail(& td->cancelled_td_list, & ep->cancelled_td_list);
  i = i + 1;
  ldv_34615: ;
  if (urb_priv->length > i) {
    goto ldv_34614;
  } else {
  }
  if ((ep->ep_state & 4U) == 0U) {
    command = xhci_alloc_command(xhci, 0, 0, 32U);
    ep->ep_state = ep->ep_state | 4U;
    ep->stop_cmds_pending = ep->stop_cmds_pending + 1;
    ep->stop_cmd_timer.expires = (unsigned long )jiffies + 1250UL;
    add_timer(& ep->stop_cmd_timer);
    xhci_queue_stop_endpoint(xhci, command, (urb->dev)->slot_id, ep_index, 0);
    xhci_ring_cmd_db(xhci);
  } else {
  }
  done:
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (ret);
}
}
int xhci_drop_endpoint(struct usb_hcd *hcd , struct usb_device *udev , struct usb_host_endpoint *ep )
{
  struct xhci_hcd *xhci ;
  struct xhci_container_ctx *in_ctx ;
  struct xhci_container_ctx *out_ctx ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  struct xhci_slot_ctx *slot_ctx ;
  unsigned int last_ctx ;
  unsigned int ep_index ;
  struct xhci_ep_ctx *ep_ctx ;
  u32 drop_flag ;
  u32 new_add_flags ;
  u32 new_drop_flags ;
  u32 new_slot_info ;
  int ret ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct usb_hcd *tmp___3 ;
  struct usb_hcd *tmp___4 ;
  unsigned int tmp___5 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  {
  ret = xhci_check_args(hcd, udev, ep, 1, 1, "xhci_drop_endpoint");
  if (ret <= 0) {
    return (ret);
  } else {
  }
  xhci = hcd_to_xhci(hcd);
  if ((int )xhci->xhc_state & 1) {
    return (-19);
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_drop_endpoint";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor.format = "%s called for udev %p\n";
  descriptor.lineno = 1735U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "%s called for udev %p\n", "xhci_drop_endpoint", udev);
  } else {
  }
  drop_flag = xhci_get_endpoint_flag(& ep->desc);
  if (drop_flag == 1U || drop_flag == 2U) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_drop_endpoint";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor___0.format = "xHCI %s - can\'t drop slot or ep 0 %#x\n";
    descriptor___0.lineno = 1739U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "xHCI %s - can\'t drop slot or ep 0 %#x\n", "xhci_drop_endpoint",
                        drop_flag);
    } else {
    }
    return (0);
  } else {
  }
  in_ctx = (xhci->devs[udev->slot_id])->in_ctx;
  out_ctx = (xhci->devs[udev->slot_id])->out_ctx;
  ctrl_ctx = xhci_get_input_control_ctx(xhci, in_ctx);
  if ((unsigned long )ctrl_ctx == (unsigned long )((struct xhci_input_control_ctx *)0)) {
    tmp___3 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___3->self.controller, "%s: Could not get input context, bad type.\n",
             "xhci_drop_endpoint");
    return (0);
  } else {
  }
  ep_index = xhci_get_endpoint_index(& ep->desc);
  ep_ctx = xhci_get_ep_ctx(xhci, out_ctx, ep_index);
  if ((ep_ctx->ep_info & 15U) == 0U) {
    tmp___4 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___4->self.controller, "xHCI %s called with disabled ep %p\n",
             "xhci_drop_endpoint", ep);
    return (0);
  } else {
    tmp___5 = xhci_get_endpoint_flag(& ep->desc);
    if ((ctrl_ctx->drop_flags & tmp___5) != 0U) {
      tmp___4 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___4->self.controller, "xHCI %s called with disabled ep %p\n",
               "xhci_drop_endpoint", ep);
      return (0);
    } else {
    }
  }
  ctrl_ctx->drop_flags = ctrl_ctx->drop_flags | drop_flag;
  new_drop_flags = ctrl_ctx->drop_flags;
  ctrl_ctx->add_flags = ctrl_ctx->add_flags & ~ drop_flag;
  new_add_flags = ctrl_ctx->add_flags;
  last_ctx = xhci_last_valid_endpoint(ctrl_ctx->add_flags);
  slot_ctx = xhci_get_slot_ctx(xhci, in_ctx);
  if ((slot_ctx->dev_info & 4160749568U) > last_ctx << 27) {
    slot_ctx->dev_info = slot_ctx->dev_info & 134217727U;
    slot_ctx->dev_info = slot_ctx->dev_info | (last_ctx << 27);
  } else {
  }
  new_slot_info = slot_ctx->dev_info;
  xhci_endpoint_zero(xhci, xhci->devs[udev->slot_id], ep);
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_drop_endpoint";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___1.format = "drop ep 0x%x, slot id %d, new drop flags = %#x, new add flags = %#x, new slot info = %#x\n";
  descriptor___1.lineno = 1789U;
  descriptor___1.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___6->self.controller,
                      "drop ep 0x%x, slot id %d, new drop flags = %#x, new add flags = %#x, new slot info = %#x\n",
                      (unsigned int )ep->desc.bEndpointAddress, udev->slot_id, new_drop_flags,
                      new_add_flags, new_slot_info);
  } else {
  }
  return (0);
}
}
int xhci_add_endpoint(struct usb_hcd *hcd , struct usb_device *udev , struct usb_host_endpoint *ep )
{
  struct xhci_hcd *xhci ;
  struct xhci_container_ctx *in_ctx ;
  struct xhci_container_ctx *out_ctx ;
  unsigned int ep_index ;
  struct xhci_slot_ctx *slot_ctx ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  u32 added_ctxs ;
  unsigned int last_ctx ;
  u32 new_add_flags ;
  u32 new_drop_flags ;
  u32 new_slot_info ;
  struct xhci_virt_device *virt_dev ;
  int ret ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct usb_hcd *tmp___1 ;
  struct usb_hcd *tmp___2 ;
  unsigned int tmp___3 ;
  struct usb_hcd *tmp___4 ;
  unsigned int tmp___5 ;
  struct _ddebug descriptor___0 ;
  long tmp___6 ;
  int tmp___7 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  {
  ret = 0;
  ret = xhci_check_args(hcd, udev, ep, 1, 1, "xhci_add_endpoint");
  if (ret <= 0) {
    ep->hcpriv = (void *)0;
    return (ret);
  } else {
  }
  xhci = hcd_to_xhci(hcd);
  if ((int )xhci->xhc_state & 1) {
    return (-19);
  } else {
  }
  added_ctxs = xhci_get_endpoint_flag(& ep->desc);
  last_ctx = xhci_last_valid_endpoint(added_ctxs);
  if (added_ctxs == 1U || added_ctxs == 2U) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_add_endpoint";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor.format = "xHCI %s - can\'t add slot or ep 0 %#x\n";
    descriptor.lineno = 1838U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "xHCI %s - can\'t add slot or ep 0 %#x\n", "xhci_add_endpoint",
                        added_ctxs);
    } else {
    }
    return (0);
  } else {
  }
  virt_dev = xhci->devs[udev->slot_id];
  in_ctx = virt_dev->in_ctx;
  out_ctx = virt_dev->out_ctx;
  ctrl_ctx = xhci_get_input_control_ctx(xhci, in_ctx);
  if ((unsigned long )ctrl_ctx == (unsigned long )((struct xhci_input_control_ctx *)0)) {
    tmp___1 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___1->self.controller, "%s: Could not get input context, bad type.\n",
             "xhci_add_endpoint");
    return (0);
  } else {
  }
  ep_index = xhci_get_endpoint_index(& ep->desc);
  if ((unsigned long )virt_dev->eps[ep_index].ring != (unsigned long )((struct xhci_ring *)0)) {
    tmp___3 = xhci_get_endpoint_flag(& ep->desc);
    if ((ctrl_ctx->drop_flags & tmp___3) == 0U) {
      tmp___2 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___2->self.controller, "Trying to add endpoint 0x%x without dropping it.\n",
               (unsigned int )ep->desc.bEndpointAddress);
      return (-22);
    } else {
    }
  } else {
  }
  tmp___5 = xhci_get_endpoint_flag(& ep->desc);
  if ((ctrl_ctx->add_flags & tmp___5) != 0U) {
    tmp___4 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___4->self.controller, "xHCI %s called with enabled ep %p\n",
             "xhci_add_endpoint", ep);
    return (0);
  } else {
  }
  tmp___7 = xhci_endpoint_init(xhci, virt_dev, udev, ep, 16U);
  if (tmp___7 < 0) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_add_endpoint";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor___0.format = "%s - could not initialize ep %#x\n";
    descriptor___0.lineno = 1882U;
    descriptor___0.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& udev->dev),
                        "%s - could not initialize ep %#x\n", "xhci_add_endpoint",
                        (int )ep->desc.bEndpointAddress);
    } else {
    }
    return (-12);
  } else {
  }
  ctrl_ctx->add_flags = ctrl_ctx->add_flags | added_ctxs;
  new_add_flags = ctrl_ctx->add_flags;
  new_drop_flags = ctrl_ctx->drop_flags;
  slot_ctx = xhci_get_slot_ctx(xhci, in_ctx);
  if ((slot_ctx->dev_info & 4160749568U) < last_ctx << 27) {
    slot_ctx->dev_info = slot_ctx->dev_info & 134217727U;
    slot_ctx->dev_info = slot_ctx->dev_info | (last_ctx << 27);
  } else {
  }
  new_slot_info = slot_ctx->dev_info;
  ep->hcpriv = (void *)udev;
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_add_endpoint";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___1.format = "add ep 0x%x, slot id %d, new drop flags = %#x, new add flags = %#x, new slot info = %#x\n";
  descriptor___1.lineno = 1914U;
  descriptor___1.flags = 0U;
  tmp___9 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___9 != 0L) {
    tmp___8 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___8->self.controller,
                      "add ep 0x%x, slot id %d, new drop flags = %#x, new add flags = %#x, new slot info = %#x\n",
                      (unsigned int )ep->desc.bEndpointAddress, udev->slot_id, new_drop_flags,
                      new_add_flags, new_slot_info);
  } else {
  }
  return (0);
}
}
static void xhci_zero_in_ctx(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev )
{
  struct xhci_input_control_ctx *ctrl_ctx ;
  struct xhci_ep_ctx *ep_ctx ;
  struct xhci_slot_ctx *slot_ctx ;
  int i ;
  struct usb_hcd *tmp ;
  {
  ctrl_ctx = xhci_get_input_control_ctx(xhci, virt_dev->in_ctx);
  if ((unsigned long )ctrl_ctx == (unsigned long )((struct xhci_input_control_ctx *)0)) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "%s: Could not get input context, bad type.\n",
             "xhci_zero_in_ctx");
    return;
  } else {
  }
  ctrl_ctx->drop_flags = 0U;
  ctrl_ctx->add_flags = 0U;
  slot_ctx = xhci_get_slot_ctx(xhci, virt_dev->in_ctx);
  slot_ctx->dev_info = slot_ctx->dev_info & 134217727U;
  slot_ctx->dev_info = slot_ctx->dev_info | 134217728U;
  i = 1;
  goto ldv_34671;
  ldv_34670:
  ep_ctx = xhci_get_ep_ctx(xhci, virt_dev->in_ctx, (unsigned int )i);
  ep_ctx->ep_info = 0U;
  ep_ctx->ep_info2 = 0U;
  ep_ctx->deq = 0ULL;
  ep_ctx->tx_info = 0U;
  i = i + 1;
  ldv_34671: ;
  if (i <= 30) {
    goto ldv_34670;
  } else {
  }
  return;
}
}
static int xhci_configure_endpoint_result(struct xhci_hcd *xhci , struct usb_device *udev ,
                                          u32 *cmd_status )
{
  int ret ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  {
  switch (*cmd_status) {
  case 25U: ;
  case 24U:
  tmp = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp->self.controller, "Timeout while waiting for configure endpoint command\n");
  ret = -62;
  goto ldv_34681;
  case 7U:
  dev_warn((struct device const *)(& udev->dev), "Not enough host controller resources for new device state.\n");
  ret = -12;
  goto ldv_34681;
  case 8U: ;
  case 35U:
  dev_warn((struct device const *)(& udev->dev), "Not enough bandwidth for new device state.\n");
  ret = -28;
  goto ldv_34681;
  case 5U:
  dev_warn((struct device const *)(& udev->dev), "OLD_ERROR: Endpoint drop flag = 0, add flag = 1, and endpoint is not disabled.\n");
  ret = -22;
  goto ldv_34681;
  case 22U:
  dev_warn((struct device const *)(& udev->dev), "OLD_ERROR: Incompatible device for endpoint configure command.\n");
  ret = -19;
  goto ldv_34681;
  case 1U:
  xhci_dbg_trace(xhci, & trace_xhci_dbg_context_change, "Successful Endpoint Configure command");
  ret = 0;
  goto ldv_34681;
  default:
  tmp___0 = xhci_to_hcd(xhci);
  dev_err((struct device const *)tmp___0->self.controller, "OLD_ERROR: unexpected command completion code 0x%x.\n",
          *cmd_status);
  ret = -22;
  goto ldv_34681;
  }
  ldv_34681: ;
  return (ret);
}
}
static int xhci_evaluate_context_result(struct xhci_hcd *xhci , struct usb_device *udev ,
                                        u32 *cmd_status )
{
  int ret ;
  struct xhci_virt_device *virt_dev ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  {
  virt_dev = xhci->devs[udev->slot_id];
  switch (*cmd_status) {
  case 25U: ;
  case 24U:
  tmp = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp->self.controller, "Timeout while waiting for evaluate context command\n");
  ret = -62;
  goto ldv_34698;
  case 17U:
  dev_warn((struct device const *)(& udev->dev), "WARN: xHCI driver setup invalid evaluate context command.\n");
  ret = -22;
  goto ldv_34698;
  case 11U:
  dev_warn((struct device const *)(& udev->dev), "WARN: slot not enabled forevaluate context command.\n");
  ret = -22;
  goto ldv_34698;
  case 19U:
  dev_warn((struct device const *)(& udev->dev), "WARN: invalid context state for evaluate context command.\n");
  xhci_dbg_ctx(xhci, virt_dev->out_ctx, 1U);
  ret = -22;
  goto ldv_34698;
  case 22U:
  dev_warn((struct device const *)(& udev->dev), "OLD_ERROR: Incompatible device for evaluate context command.\n");
  ret = -19;
  goto ldv_34698;
  case 29U:
  dev_warn((struct device const *)(& udev->dev), "WARN: Max Exit Latency too large\n");
  ret = -22;
  goto ldv_34698;
  case 1U:
  xhci_dbg_trace(xhci, & trace_xhci_dbg_context_change, "Successful evaluate context command");
  ret = 0;
  goto ldv_34698;
  default:
  tmp___0 = xhci_to_hcd(xhci);
  dev_err((struct device const *)tmp___0->self.controller, "OLD_ERROR: unexpected command completion code 0x%x.\n",
          *cmd_status);
  ret = -22;
  goto ldv_34698;
  }
  ldv_34698: ;
  return (ret);
}
}
static u32 xhci_count_num_new_endpoints(struct xhci_hcd *xhci , struct xhci_input_control_ctx *ctrl_ctx )
{
  u32 valid_add_flags ;
  u32 valid_drop_flags ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  valid_add_flags = ctrl_ctx->add_flags >> 2;
  valid_drop_flags = ctrl_ctx->drop_flags >> 2;
  tmp = __arch_hweight32(valid_add_flags);
  tmp___0 = __arch_hweight32(valid_add_flags & valid_drop_flags);
  return (tmp - tmp___0);
}
}
static unsigned int xhci_count_num_dropped_endpoints(struct xhci_hcd *xhci , struct xhci_input_control_ctx *ctrl_ctx )
{
  u32 valid_add_flags ;
  u32 valid_drop_flags ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  valid_add_flags = ctrl_ctx->add_flags >> 2;
  valid_drop_flags = ctrl_ctx->drop_flags >> 2;
  tmp = __arch_hweight32(valid_drop_flags);
  tmp___0 = __arch_hweight32(valid_add_flags & valid_drop_flags);
  return (tmp - tmp___0);
}
}
static int xhci_reserve_host_resources(struct xhci_hcd *xhci , struct xhci_input_control_ctx *ctrl_ctx )
{
  u32 added_eps ;
  {
  added_eps = xhci_count_num_new_endpoints(xhci, ctrl_ctx);
  if (xhci->num_active_eps + added_eps > xhci->limit_active_eps) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks, "Not enough ep ctxs: %u active, need to add %u, limit is %u.",
                   xhci->num_active_eps, added_eps, xhci->limit_active_eps);
    return (-12);
  } else {
  }
  xhci->num_active_eps = xhci->num_active_eps + added_eps;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks, "Adding %u ep ctxs, %u now active.",
                 added_eps, xhci->num_active_eps);
  return (0);
}
}
static void xhci_free_host_resources(struct xhci_hcd *xhci , struct xhci_input_control_ctx *ctrl_ctx )
{
  u32 num_failed_eps ;
  {
  num_failed_eps = xhci_count_num_new_endpoints(xhci, ctrl_ctx);
  xhci->num_active_eps = xhci->num_active_eps - num_failed_eps;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks, "Removing %u failed ep ctxs, %u now active.",
                 num_failed_eps, xhci->num_active_eps);
  return;
}
}
static void xhci_finish_resource_reservation(struct xhci_hcd *xhci , struct xhci_input_control_ctx *ctrl_ctx )
{
  u32 num_dropped_eps ;
  {
  num_dropped_eps = xhci_count_num_dropped_endpoints(xhci, ctrl_ctx);
  xhci->num_active_eps = xhci->num_active_eps - num_dropped_eps;
  if (num_dropped_eps != 0U) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks, "Removing %u dropped ep ctxs, %u now active.",
                   num_dropped_eps, xhci->num_active_eps);
  } else {
  }
  return;
}
}
static unsigned int xhci_get_block_size(struct usb_device *udev )
{
  {
  switch ((unsigned int )udev->speed) {
  case 1U: ;
  case 2U: ;
  return (1U);
  case 3U: ;
  return (4U);
  case 5U: ;
  return (16U);
  case 0U: ;
  case 4U: ;
  default: ;
  return (1U);
  }
}
}
static unsigned int xhci_get_largest_overhead(struct xhci_interval_bw *interval_bw )
{
  {
  if (interval_bw->overhead[0] != 0U) {
    return (128U);
  } else {
  }
  if (interval_bw->overhead[1] != 0U) {
    return (20U);
  } else {
  }
  return (26U);
}
}
static int xhci_check_tt_bw_table(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                                  int old_active_eps )
{
  struct xhci_interval_bw_table *bw_table ;
  struct xhci_tt_bw_info *tt_info ;
  {
  bw_table = & (xhci->rh_bw + ((unsigned long )virt_dev->real_port + 0xffffffffffffffffUL))->bw_table;
  tt_info = virt_dev->tt_info;
  if (old_active_eps != 0) {
    return (0);
  } else {
  }
  if (old_active_eps == 0 && tt_info->active_eps != 0) {
    if (bw_table->bw_used + 125U > 1607U) {
      return (-12);
    } else {
    }
    return (0);
  } else {
  }
  return (0);
}
}
static int xhci_check_ss_bw(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev )
{
  unsigned int bw_reserved ;
  {
  bw_reserved = 391U;
  if ((virt_dev->bw_table)->ss_bw_in > 3906U - bw_reserved) {
    return (-12);
  } else {
  }
  bw_reserved = 391U;
  if ((virt_dev->bw_table)->ss_bw_out > 3906U - bw_reserved) {
    return (-12);
  } else {
  }
  return (0);
}
}
static int xhci_check_bw_table(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                               int old_active_eps )
{
  unsigned int bw_reserved ;
  unsigned int max_bandwidth ;
  unsigned int bw_used ;
  unsigned int block_size ;
  struct xhci_interval_bw_table *bw_table ;
  unsigned int packet_size ;
  unsigned int overhead ;
  unsigned int packets_transmitted ;
  unsigned int packets_remaining ;
  unsigned int i ;
  int tmp ;
  struct usb_hcd *tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int bw_added ;
  unsigned int largest_mps ;
  unsigned int interval_overhead ;
  struct xhci_virt_ep *virt_ep ;
  struct list_head *ep_entry ;
  struct list_head const *__mptr ;
  int tmp___3 ;
  struct usb_hcd *tmp___4 ;
  unsigned int port_index ;
  struct usb_hcd *tmp___5 ;
  {
  packet_size = 0U;
  overhead = 0U;
  packets_transmitted = 0U;
  packets_remaining = 0U;
  if ((unsigned int )(virt_dev->udev)->speed == 5U) {
    tmp = xhci_check_ss_bw(xhci, virt_dev);
    return (tmp);
  } else {
  }
  if ((unsigned int )(virt_dev->udev)->speed == 3U) {
    max_bandwidth = 1607U;
    bw_reserved = (max_bandwidth * 20U + 99U) / 100U;
  } else {
    max_bandwidth = 1285U;
    bw_reserved = (max_bandwidth * 10U + 99U) / 100U;
  }
  bw_table = virt_dev->bw_table;
  block_size = xhci_get_block_size(virt_dev->udev);
  if ((unsigned long )virt_dev->tt_info != (unsigned long )((struct xhci_tt_bw_info *)0)) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks, "Recalculating BW for rootport %u",
                   (int )virt_dev->real_port);
    tmp___1 = xhci_check_tt_bw_table(xhci, virt_dev, old_active_eps);
    if (tmp___1 != 0) {
      tmp___0 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___0->self.controller, "Not enough bandwidth on HS bus for newly activated TT.\n");
      return (-12);
    } else {
    }
    xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks, "Recalculating BW for TT slot %u port %u",
                   (virt_dev->tt_info)->slot_id, (virt_dev->tt_info)->ttport);
  } else {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks, "Recalculating BW for rootport %u",
                   (int )virt_dev->real_port);
  }
  tmp___2 = xhci_get_largest_overhead((struct xhci_interval_bw *)(& bw_table->interval_bw));
  bw_used = ((bw_table->interval0_esit_payload + block_size) - 1U) / block_size + bw_table->interval_bw[0].num_packets * tmp___2;
  i = 1U;
  goto ldv_34781;
  ldv_34780:
  packets_remaining = packets_remaining * 2U + bw_table->interval_bw[i].num_packets;
  tmp___3 = list_empty((struct list_head const *)(& bw_table->interval_bw[i].endpoints));
  if (tmp___3 != 0) {
    largest_mps = 0U;
  } else {
    ep_entry = bw_table->interval_bw[i].endpoints.next;
    __mptr = (struct list_head const *)ep_entry;
    virt_ep = (struct xhci_virt_ep *)__mptr + 0xffffffffffffff00UL;
    largest_mps = ((virt_ep->bw_info.max_packet_size + block_size) - 1U) / block_size;
  }
  if (largest_mps > packet_size) {
    packet_size = largest_mps;
  } else {
  }
  interval_overhead = xhci_get_largest_overhead((struct xhci_interval_bw *)(& bw_table->interval_bw) + (unsigned long )i);
  if (interval_overhead > overhead) {
    overhead = interval_overhead;
  } else {
  }
  packets_transmitted = packets_remaining >> (int )(i + 1U);
  bw_added = (overhead + packet_size) * packets_transmitted;
  packets_remaining = (unsigned int )((1 << (int )(i + 1U)) + -1) & packets_remaining;
  if (packets_remaining == 0U) {
    packet_size = 0U;
    overhead = 0U;
  } else
  if (packets_transmitted != 0U) {
    packet_size = largest_mps;
    overhead = interval_overhead;
  } else {
  }
  bw_used = bw_used + bw_added;
  if (bw_used > max_bandwidth) {
    tmp___4 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___4->self.controller, "Not enough bandwidth. Proposed: %u, Max: %u\n",
             bw_used, max_bandwidth);
    return (-12);
  } else {
  }
  i = i + 1U;
  ldv_34781: ;
  if (i <= 15U) {
    goto ldv_34780;
  } else {
  }
  if (packets_remaining != 0U) {
    bw_used = (overhead + packet_size) + bw_used;
  } else {
  }
  if ((unsigned long )virt_dev->tt_info == (unsigned long )((struct xhci_tt_bw_info *)0) && (unsigned int )(virt_dev->udev)->speed == 3U) {
    port_index = (unsigned int )((int )virt_dev->real_port + -1);
    bw_used = (xhci->rh_bw + (unsigned long )port_index)->num_active_tts * 125U + bw_used;
  } else {
  }
  xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks, "Final bandwidth: %u, Limit: %u, Reserved: %u, Available: %u percent",
                 bw_used, max_bandwidth, bw_reserved, (((max_bandwidth - bw_used) - bw_reserved) * 100U) / max_bandwidth);
  bw_used = bw_used + bw_reserved;
  if (bw_used > max_bandwidth) {
    tmp___5 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___5->self.controller, "Not enough bandwidth. Proposed: %u, Max: %u\n",
             bw_used, max_bandwidth);
    return (-12);
  } else {
  }
  bw_table->bw_used = bw_used;
  return (0);
}
}
static bool xhci_is_async_ep(unsigned int ep_type )
{
  {
  return ((bool )(((ep_type != 1U && ep_type != 3U) && ep_type != 5U) && ep_type != 7U));
}
}
static bool xhci_is_sync_in_ep(unsigned int ep_type )
{
  {
  return ((bool )(ep_type == 5U || ep_type == 7U));
}
}
static unsigned int xhci_get_ss_bw_consumed(struct xhci_bw_info *ep_bw )
{
  unsigned int mps ;
  {
  mps = (ep_bw->max_packet_size + 15U) / 16U;
  if (ep_bw->ep_interval == 0U) {
    return ((ep_bw->mult * ep_bw->num_packets) * (mps + 8U) + 32U);
  } else {
  }
  return ((((ep_bw->mult * ep_bw->num_packets) * (mps + 40U) + (unsigned int )(1 << (int )ep_bw->ep_interval)) - 1U) >> (int )ep_bw->ep_interval);
}
}
void xhci_drop_ep_from_interval_table(struct xhci_hcd *xhci , struct xhci_bw_info *ep_bw ,
                                      struct xhci_interval_bw_table *bw_table , struct usb_device *udev ,
                                      struct xhci_virt_ep *virt_ep , struct xhci_tt_bw_info *tt_info )
{
  struct xhci_interval_bw *interval_bw ;
  int normalized_interval ;
  bool tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  tmp = xhci_is_async_ep(ep_bw->type);
  if ((int )tmp) {
    return;
  } else {
  }
  if ((unsigned int )udev->speed == 5U) {
    tmp___2 = xhci_is_sync_in_ep(ep_bw->type);
    if ((int )tmp___2) {
      tmp___0 = xhci_get_ss_bw_consumed(ep_bw);
      ((xhci->devs[udev->slot_id])->bw_table)->ss_bw_in = ((xhci->devs[udev->slot_id])->bw_table)->ss_bw_in - tmp___0;
    } else {
      tmp___1 = xhci_get_ss_bw_consumed(ep_bw);
      ((xhci->devs[udev->slot_id])->bw_table)->ss_bw_out = ((xhci->devs[udev->slot_id])->bw_table)->ss_bw_out - tmp___1;
    }
    return;
  } else {
  }
  tmp___3 = list_empty((struct list_head const *)(& virt_ep->bw_endpoint_list));
  if (tmp___3 != 0) {
    return;
  } else {
  }
  if ((unsigned int )udev->speed == 3U) {
    normalized_interval = (int )ep_bw->ep_interval;
  } else {
    normalized_interval = (int )(ep_bw->ep_interval - 3U);
  }
  if (normalized_interval == 0) {
    bw_table->interval0_esit_payload = bw_table->interval0_esit_payload - ep_bw->max_esit_payload;
  } else {
  }
  interval_bw = (struct xhci_interval_bw *)(& bw_table->interval_bw) + (unsigned long )normalized_interval;
  interval_bw->num_packets = interval_bw->num_packets - ep_bw->num_packets;
  switch ((unsigned int )udev->speed) {
  case 1U:
  interval_bw->overhead[0] = interval_bw->overhead[0] - 1U;
  goto ldv_34805;
  case 2U:
  interval_bw->overhead[1] = interval_bw->overhead[1] - 1U;
  goto ldv_34805;
  case 3U:
  interval_bw->overhead[2] = interval_bw->overhead[2] - 1U;
  goto ldv_34805;
  case 5U: ;
  case 0U: ;
  case 4U: ;
  return;
  }
  ldv_34805: ;
  if ((unsigned long )tt_info != (unsigned long )((struct xhci_tt_bw_info *)0)) {
    tt_info->active_eps = tt_info->active_eps + -1;
  } else {
  }
  list_del_init(& virt_ep->bw_endpoint_list);
  return;
}
}
static void xhci_add_ep_to_interval_table(struct xhci_hcd *xhci , struct xhci_bw_info *ep_bw ,
                                          struct xhci_interval_bw_table *bw_table ,
                                          struct usb_device *udev , struct xhci_virt_ep *virt_ep ,
                                          struct xhci_tt_bw_info *tt_info )
{
  struct xhci_interval_bw *interval_bw ;
  struct xhci_virt_ep *smaller_ep ;
  int normalized_interval ;
  bool tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  bool tmp___2 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = xhci_is_async_ep(ep_bw->type);
  if ((int )tmp) {
    return;
  } else {
  }
  if ((unsigned int )udev->speed == 5U) {
    tmp___2 = xhci_is_sync_in_ep(ep_bw->type);
    if ((int )tmp___2) {
      tmp___0 = xhci_get_ss_bw_consumed(ep_bw);
      ((xhci->devs[udev->slot_id])->bw_table)->ss_bw_in = ((xhci->devs[udev->slot_id])->bw_table)->ss_bw_in + tmp___0;
    } else {
      tmp___1 = xhci_get_ss_bw_consumed(ep_bw);
      ((xhci->devs[udev->slot_id])->bw_table)->ss_bw_out = ((xhci->devs[udev->slot_id])->bw_table)->ss_bw_out + tmp___1;
    }
    return;
  } else {
  }
  if ((unsigned int )udev->speed == 3U) {
    normalized_interval = (int )ep_bw->ep_interval;
  } else {
    normalized_interval = (int )(ep_bw->ep_interval - 3U);
  }
  if (normalized_interval == 0) {
    bw_table->interval0_esit_payload = bw_table->interval0_esit_payload + ep_bw->max_esit_payload;
  } else {
  }
  interval_bw = (struct xhci_interval_bw *)(& bw_table->interval_bw) + (unsigned long )normalized_interval;
  interval_bw->num_packets = interval_bw->num_packets + ep_bw->num_packets;
  switch ((unsigned int )udev->speed) {
  case 1U:
  interval_bw->overhead[0] = interval_bw->overhead[0] + 1U;
  goto ldv_34823;
  case 2U:
  interval_bw->overhead[1] = interval_bw->overhead[1] + 1U;
  goto ldv_34823;
  case 3U:
  interval_bw->overhead[2] = interval_bw->overhead[2] + 1U;
  goto ldv_34823;
  case 5U: ;
  case 0U: ;
  case 4U: ;
  return;
  }
  ldv_34823: ;
  if ((unsigned long )tt_info != (unsigned long )((struct xhci_tt_bw_info *)0)) {
    tt_info->active_eps = tt_info->active_eps + 1;
  } else {
  }
  __mptr = (struct list_head const *)interval_bw->endpoints.next;
  smaller_ep = (struct xhci_virt_ep *)__mptr + 0xffffffffffffff00UL;
  goto ldv_34834;
  ldv_34833: ;
  if (ep_bw->max_packet_size >= smaller_ep->bw_info.max_packet_size) {
    list_add_tail(& virt_ep->bw_endpoint_list, & smaller_ep->bw_endpoint_list);
    return;
  } else {
  }
  __mptr___0 = (struct list_head const *)smaller_ep->bw_endpoint_list.next;
  smaller_ep = (struct xhci_virt_ep *)__mptr___0 + 0xffffffffffffff00UL;
  ldv_34834: ;
  if ((unsigned long )(& smaller_ep->bw_endpoint_list) != (unsigned long )(& interval_bw->endpoints)) {
    goto ldv_34833;
  } else {
  }
  list_add_tail(& virt_ep->bw_endpoint_list, & interval_bw->endpoints);
  return;
}
}
void xhci_update_tt_active_eps(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                               int old_active_eps )
{
  struct xhci_root_port_bw_info *rh_bw_info ;
  {
  if ((unsigned long )virt_dev->tt_info == (unsigned long )((struct xhci_tt_bw_info *)0)) {
    return;
  } else {
  }
  rh_bw_info = xhci->rh_bw + ((unsigned long )virt_dev->real_port + 0xffffffffffffffffUL);
  if (old_active_eps == 0 && (virt_dev->tt_info)->active_eps != 0) {
    rh_bw_info->num_active_tts = rh_bw_info->num_active_tts + 1U;
    rh_bw_info->bw_table.bw_used = rh_bw_info->bw_table.bw_used + 125U;
  } else
  if (old_active_eps != 0 && (virt_dev->tt_info)->active_eps == 0) {
    rh_bw_info->num_active_tts = rh_bw_info->num_active_tts - 1U;
    rh_bw_info->bw_table.bw_used = rh_bw_info->bw_table.bw_used - 125U;
  } else {
  }
  return;
}
}
static int xhci_reserve_bandwidth(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                                  struct xhci_container_ctx *in_ctx )
{
  struct xhci_bw_info ep_bw_info[31U] ;
  int i ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  int old_active_eps ;
  struct usb_hcd *tmp ;
  size_t __len ;
  void *__ret ;
  int tmp___0 ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  old_active_eps = 0;
  if ((unsigned long )virt_dev->tt_info != (unsigned long )((struct xhci_tt_bw_info *)0)) {
    old_active_eps = (virt_dev->tt_info)->active_eps;
  } else {
  }
  ctrl_ctx = xhci_get_input_control_ctx(xhci, in_ctx);
  if ((unsigned long )ctrl_ctx == (unsigned long )((struct xhci_input_control_ctx *)0)) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "%s: Could not get input context, bad type.\n",
             "xhci_reserve_bandwidth");
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_34857;
  ldv_34856: ;
  if ((ctrl_ctx->add_flags & (__le32 )(1 << (i + 1))) == 0U && (ctrl_ctx->drop_flags & (__le32 )(1 << (i + 1))) == 0U) {
    goto ldv_34852;
  } else {
  }
  __len = 24UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& ep_bw_info) + (unsigned long )i, (void const *)(& virt_dev->eps[i].bw_info),
                     __len);
  } else {
    __ret = memcpy((void *)(& ep_bw_info) + (unsigned long )i, (void const *)(& virt_dev->eps[i].bw_info),
                             __len);
  }
  if ((ctrl_ctx->drop_flags & (__le32 )(1 << (i + 1))) != 0U) {
    xhci_drop_ep_from_interval_table(xhci, & virt_dev->eps[i].bw_info, virt_dev->bw_table,
                                     virt_dev->udev, (struct xhci_virt_ep *)(& virt_dev->eps) + (unsigned long )i,
                                     virt_dev->tt_info);
  } else {
  }
  ldv_34852:
  i = i + 1;
  ldv_34857: ;
  if (i <= 30) {
    goto ldv_34856;
  } else {
  }
  xhci_update_bw_info(xhci, virt_dev->in_ctx, ctrl_ctx, virt_dev);
  i = 0;
  goto ldv_34860;
  ldv_34859: ;
  if ((ctrl_ctx->add_flags & (__le32 )(1 << (i + 1))) != 0U) {
    xhci_add_ep_to_interval_table(xhci, & virt_dev->eps[i].bw_info, virt_dev->bw_table,
                                  virt_dev->udev, (struct xhci_virt_ep *)(& virt_dev->eps) + (unsigned long )i,
                                  virt_dev->tt_info);
  } else {
  }
  i = i + 1;
  ldv_34860: ;
  if (i <= 30) {
    goto ldv_34859;
  } else {
  }
  tmp___0 = xhci_check_bw_table(xhci, virt_dev, old_active_eps);
  if (tmp___0 == 0) {
    xhci_update_tt_active_eps(xhci, virt_dev, old_active_eps);
    return (0);
  } else {
  }
  i = 0;
  goto ldv_34867;
  ldv_34866: ;
  if ((ctrl_ctx->add_flags & (__le32 )(1 << (i + 1))) == 0U && (ctrl_ctx->drop_flags & (__le32 )(1 << (i + 1))) == 0U) {
    goto ldv_34862;
  } else {
  }
  if ((ctrl_ctx->add_flags & (__le32 )(1 << (i + 1))) != 0U) {
    xhci_drop_ep_from_interval_table(xhci, & virt_dev->eps[i].bw_info, virt_dev->bw_table,
                                     virt_dev->udev, (struct xhci_virt_ep *)(& virt_dev->eps) + (unsigned long )i,
                                     virt_dev->tt_info);
  } else {
  }
  __len___0 = 24UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(& virt_dev->eps[i].bw_info), (void const *)(& ep_bw_info) + (unsigned long )i,
                         __len___0);
  } else {
    __ret___0 = memcpy((void *)(& virt_dev->eps[i].bw_info), (void const *)(& ep_bw_info) + (unsigned long )i,
                                 __len___0);
  }
  if ((ctrl_ctx->drop_flags & (__le32 )(1 << (i + 1))) != 0U) {
    xhci_add_ep_to_interval_table(xhci, & virt_dev->eps[i].bw_info, virt_dev->bw_table,
                                  virt_dev->udev, (struct xhci_virt_ep *)(& virt_dev->eps) + (unsigned long )i,
                                  virt_dev->tt_info);
  } else {
  }
  ldv_34862:
  i = i + 1;
  ldv_34867: ;
  if (i <= 30) {
    goto ldv_34866;
  } else {
  }
  return (-12);
}
}
static int xhci_configure_endpoint(struct xhci_hcd *xhci , struct usb_device *udev ,
                                   struct xhci_command *command , bool ctx_change ,
                                   bool must_succeed )
{
  int ret ;
  unsigned long flags ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  struct xhci_virt_device *virt_dev ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  int tmp___1 ;
  struct usb_hcd *tmp___2 ;
  int tmp___3 ;
  {
  if ((unsigned long )command == (unsigned long )((struct xhci_command *)0)) {
    return (-22);
  } else {
  }
  ldv_spin_lock();
  virt_dev = xhci->devs[udev->slot_id];
  ctrl_ctx = xhci_get_input_control_ctx(xhci, command->in_ctx);
  if ((unsigned long )ctrl_ctx == (unsigned long )((struct xhci_input_control_ctx *)0)) {
    spin_unlock_irqrestore(& xhci->lock, flags);
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "%s: Could not get input context, bad type.\n",
             "xhci_configure_endpoint");
    return (-12);
  } else {
  }
  if ((xhci->quirks & 32U) != 0U) {
    tmp___1 = xhci_reserve_host_resources(xhci, ctrl_ctx);
    if (tmp___1 != 0) {
      spin_unlock_irqrestore(& xhci->lock, flags);
      tmp___0 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___0->self.controller, "Not enough host resources, active endpoint contexts = %u\n",
               xhci->num_active_eps);
      return (-12);
    } else {
    }
  } else {
  }
  if ((xhci->quirks & 256U) != 0U) {
    tmp___3 = xhci_reserve_bandwidth(xhci, virt_dev, command->in_ctx);
    if (tmp___3 != 0) {
      if ((xhci->quirks & 32U) != 0U) {
        xhci_free_host_resources(xhci, ctrl_ctx);
      } else {
      }
      spin_unlock_irqrestore(& xhci->lock, flags);
      tmp___2 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___2->self.controller, "Not enough bandwidth\n");
      return (-12);
    } else {
    }
  } else {
  }
  if (! ctx_change) {
    ret = xhci_queue_configure_endpoint(xhci, command, (command->in_ctx)->dma, (u32 )udev->slot_id,
                                        (int )must_succeed);
  } else {
    ret = xhci_queue_evaluate_context(xhci, command, (command->in_ctx)->dma, (u32 )udev->slot_id,
                                      (int )must_succeed);
  }
  if (ret < 0) {
    if ((xhci->quirks & 32U) != 0U) {
      xhci_free_host_resources(xhci, ctrl_ctx);
    } else {
    }
    spin_unlock_irqrestore(& xhci->lock, flags);
    xhci_dbg_trace(xhci, & trace_xhci_dbg_context_change, "FIXME allocate a new ring segment");
    return (-12);
  } else {
  }
  xhci_ring_cmd_db(xhci);
  spin_unlock_irqrestore(& xhci->lock, flags);
  wait_for_completion(command->completion);
  if (! ctx_change) {
    ret = xhci_configure_endpoint_result(xhci, udev, & command->status);
  } else {
    ret = xhci_evaluate_context_result(xhci, udev, & command->status);
  }
  if ((xhci->quirks & 32U) != 0U) {
    ldv_spin_lock();
    if (ret != 0) {
      xhci_free_host_resources(xhci, ctrl_ctx);
    } else {
      xhci_finish_resource_reservation(xhci, ctrl_ctx);
    }
    spin_unlock_irqrestore(& xhci->lock, flags);
  } else {
  }
  return (ret);
}
}
static void xhci_check_bw_drop_ep_streams(struct xhci_hcd *xhci , struct xhci_virt_device *vdev ,
                                          int i )
{
  struct xhci_virt_ep *ep ;
  unsigned int tmp ;
  struct usb_hcd *tmp___0 ;
  {
  ep = (struct xhci_virt_ep *)(& vdev->eps) + (unsigned long )i;
  if ((ep->ep_state & 16U) != 0U) {
    tmp = xhci_get_endpoint_address((unsigned int )i);
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "WARN: endpoint 0x%02x has streams on set_interface, freeing streams.\n",
             tmp);
    xhci_free_stream_info(xhci, ep->stream_info);
    ep->stream_info = (struct xhci_stream_info *)0;
    ep->ep_state = ep->ep_state & 4294967279U;
  } else {
  }
  return;
}
}
int xhci_check_bandwidth(struct usb_hcd *hcd , struct usb_device *udev )
{
  int i ;
  int ret ;
  struct xhci_hcd *xhci ;
  struct xhci_virt_device *virt_dev ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  struct xhci_slot_ctx *slot_ctx ;
  struct xhci_command *command ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct usb_hcd *tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  {
  ret = 0;
  ret = xhci_check_args(hcd, udev, (struct usb_host_endpoint *)0, 0, 1, "xhci_check_bandwidth");
  if (ret <= 0) {
    return (ret);
  } else {
  }
  xhci = hcd_to_xhci(hcd);
  if ((int )xhci->xhc_state & 1) {
    return (-19);
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_check_bandwidth";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor.format = "%s called for udev %p\n";
  descriptor.lineno = 2857U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "%s called for udev %p\n", "xhci_check_bandwidth", udev);
  } else {
  }
  virt_dev = xhci->devs[udev->slot_id];
  command = xhci_alloc_command(xhci, 0, 1, 208U);
  if ((unsigned long )command == (unsigned long )((struct xhci_command *)0)) {
    return (-12);
  } else {
  }
  command->in_ctx = virt_dev->in_ctx;
  ctrl_ctx = xhci_get_input_control_ctx(xhci, command->in_ctx);
  if ((unsigned long )ctrl_ctx == (unsigned long )((struct xhci_input_control_ctx *)0)) {
    tmp___1 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___1->self.controller, "%s: Could not get input context, bad type.\n",
             "xhci_check_bandwidth");
    ret = -12;
    goto command_cleanup;
  } else {
  }
  ctrl_ctx->add_flags = ctrl_ctx->add_flags | 1U;
  ctrl_ctx->add_flags = ctrl_ctx->add_flags & 4294967293U;
  ctrl_ctx->drop_flags = ctrl_ctx->drop_flags & 4294967292U;
  if (ctrl_ctx->add_flags == 1U && ctrl_ctx->drop_flags == 0U) {
    ret = 0;
    goto command_cleanup;
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_check_bandwidth";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___0.format = "New Input Control Context:\n";
  descriptor___0.lineno = 2884U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                      "New Input Control Context:\n");
  } else {
  }
  slot_ctx = xhci_get_slot_ctx(xhci, virt_dev->in_ctx);
  xhci_dbg_ctx(xhci, virt_dev->in_ctx, (slot_ctx->dev_info >> 27) - 1U);
  ret = xhci_configure_endpoint(xhci, udev, command, 0, 0);
  if (ret != 0) {
    goto command_cleanup;
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_check_bandwidth";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___1.format = "Output context after successful config ep cmd:\n";
  descriptor___1.lineno = 2895U;
  descriptor___1.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___4->self.controller,
                      "Output context after successful config ep cmd:\n");
  } else {
  }
  xhci_dbg_ctx(xhci, virt_dev->out_ctx, (slot_ctx->dev_info >> 27) - 1U);
  i = 1;
  goto ldv_34904;
  ldv_34903: ;
  if ((ctrl_ctx->drop_flags & (__le32 )(1 << (i + 1))) != 0U && (ctrl_ctx->add_flags & (__le32 )(1 << (i + 1))) == 0U) {
    xhci_free_or_cache_endpoint_ring(xhci, virt_dev, (unsigned int )i);
    xhci_check_bw_drop_ep_streams(xhci, virt_dev, i);
  } else {
  }
  i = i + 1;
  ldv_34904: ;
  if (i <= 30) {
    goto ldv_34903;
  } else {
  }
  xhci_zero_in_ctx(xhci, virt_dev);
  i = 1;
  goto ldv_34908;
  ldv_34907: ;
  if ((unsigned long )virt_dev->eps[i].new_ring == (unsigned long )((struct xhci_ring *)0)) {
    goto ldv_34906;
  } else {
  }
  if ((unsigned long )virt_dev->eps[i].ring != (unsigned long )((struct xhci_ring *)0)) {
    xhci_free_or_cache_endpoint_ring(xhci, virt_dev, (unsigned int )i);
  } else {
  }
  xhci_check_bw_drop_ep_streams(xhci, virt_dev, i);
  virt_dev->eps[i].ring = virt_dev->eps[i].new_ring;
  virt_dev->eps[i].new_ring = (struct xhci_ring *)0;
  ldv_34906:
  i = i + 1;
  ldv_34908: ;
  if (i <= 30) {
    goto ldv_34907;
  } else {
  }
  command_cleanup:
  kfree((void const *)command->completion);
  kfree((void const *)command);
  return (ret);
}
}
void xhci_reset_bandwidth(struct usb_hcd *hcd , struct usb_device *udev )
{
  struct xhci_hcd *xhci ;
  struct xhci_virt_device *virt_dev ;
  int i ;
  int ret ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  ret = xhci_check_args(hcd, udev, (struct usb_host_endpoint *)0, 0, 1, "xhci_reset_bandwidth");
  if (ret <= 0) {
    return;
  } else {
  }
  xhci = hcd_to_xhci(hcd);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_reset_bandwidth";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor.format = "%s called for udev %p\n";
  descriptor.lineno = 2943U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "%s called for udev %p\n", "xhci_reset_bandwidth", udev);
  } else {
  }
  virt_dev = xhci->devs[udev->slot_id];
  i = 0;
  goto ldv_34921;
  ldv_34920: ;
  if ((unsigned long )virt_dev->eps[i].new_ring != (unsigned long )((struct xhci_ring *)0)) {
    xhci_ring_free(xhci, virt_dev->eps[i].new_ring);
    virt_dev->eps[i].new_ring = (struct xhci_ring *)0;
  } else {
  }
  i = i + 1;
  ldv_34921: ;
  if (i <= 30) {
    goto ldv_34920;
  } else {
  }
  xhci_zero_in_ctx(xhci, virt_dev);
  return;
}
}
static void xhci_setup_input_ctx_for_config_ep(struct xhci_hcd *xhci , struct xhci_container_ctx *in_ctx ,
                                               struct xhci_container_ctx *out_ctx ,
                                               struct xhci_input_control_ctx *ctrl_ctx ,
                                               u32 add_flags , u32 drop_flags )
{
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  unsigned int tmp___1 ;
  {
  ctrl_ctx->add_flags = add_flags;
  ctrl_ctx->drop_flags = drop_flags;
  xhci_slot_copy(xhci, in_ctx, out_ctx);
  ctrl_ctx->add_flags = ctrl_ctx->add_flags | 1U;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_setup_input_ctx_for_config_ep";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor.format = "Input Context:\n";
  descriptor.lineno = 2966U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "Input Context:\n");
  } else {
  }
  tmp___1 = xhci_last_valid_endpoint(add_flags);
  xhci_dbg_ctx(xhci, in_ctx, tmp___1);
  return;
}
}
static void xhci_setup_input_ctx_for_quirk(struct xhci_hcd *xhci , unsigned int slot_id ,
                                           unsigned int ep_index , struct xhci_dequeue_state *deq_state )
{
  struct xhci_input_control_ctx *ctrl_ctx ;
  struct xhci_container_ctx *in_ctx ;
  struct xhci_ep_ctx *ep_ctx ;
  u32 added_ctxs ;
  dma_addr_t addr ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  struct usb_hcd *tmp___1 ;
  {
  in_ctx = (xhci->devs[slot_id])->in_ctx;
  ctrl_ctx = xhci_get_input_control_ctx(xhci, in_ctx);
  if ((unsigned long )ctrl_ctx == (unsigned long )((struct xhci_input_control_ctx *)0)) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "%s: Could not get input context, bad type.\n",
             "xhci_setup_input_ctx_for_quirk");
    return;
  } else {
  }
  xhci_endpoint_copy(xhci, (xhci->devs[slot_id])->in_ctx, (xhci->devs[slot_id])->out_ctx,
                     ep_index);
  ep_ctx = xhci_get_ep_ctx(xhci, in_ctx, ep_index);
  addr = xhci_trb_virt_to_dma(deq_state->new_deq_seg, deq_state->new_deq_ptr);
  if (addr == 0ULL) {
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "WARN Cannot submit config ep after reset ep command\n");
    tmp___1 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___1->self.controller, "WARN deq seg = %p, deq ptr = %p\n",
             deq_state->new_deq_seg, deq_state->new_deq_ptr);
    return;
  } else {
  }
  ep_ctx->deq = (dma_addr_t )deq_state->new_cycle_state | addr;
  added_ctxs = xhci_get_endpoint_flag_from_index(ep_index);
  xhci_setup_input_ctx_for_config_ep(xhci, (xhci->devs[slot_id])->in_ctx, (xhci->devs[slot_id])->out_ctx,
                                     ctrl_ctx, added_ctxs, added_ctxs);
  return;
}
}
void xhci_cleanup_stalled_ring(struct xhci_hcd *xhci , struct usb_device *udev , unsigned int ep_index )
{
  struct xhci_dequeue_state deq_state ;
  struct xhci_virt_ep *ep ;
  struct xhci_command *command ;
  {
  xhci_dbg_trace(xhci, & trace_xhci_dbg_reset_ep, "Cleaning up stalled endpoint ring");
  ep = (struct xhci_virt_ep *)(& (xhci->devs[udev->slot_id])->eps) + (unsigned long )ep_index;
  xhci_find_new_dequeue_state(xhci, (unsigned int )udev->slot_id, ep_index, ep->stopped_stream,
                              ep->stopped_td, & deq_state);
  if ((xhci->quirks & 2U) == 0U) {
    command = xhci_alloc_command(xhci, 0, 0, 32U);
    if ((unsigned long )command == (unsigned long )((struct xhci_command *)0)) {
      return;
    } else {
    }
    xhci_dbg_trace(xhci, & trace_xhci_dbg_reset_ep, "Queueing new dequeue state");
    xhci_queue_new_dequeue_state(xhci, command, (unsigned int )udev->slot_id, ep_index,
                                 ep->stopped_stream, & deq_state);
  } else {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks, "Setting up input context for configure endpoint command");
    xhci_setup_input_ctx_for_quirk(xhci, (unsigned int )udev->slot_id, ep_index, & deq_state);
  }
  return;
}
}
void xhci_endpoint_reset(struct usb_hcd *hcd , struct usb_host_endpoint *ep )
{
  struct xhci_hcd *xhci ;
  struct usb_device *udev ;
  unsigned int ep_index ;
  unsigned long flags ;
  int ret ;
  struct xhci_virt_ep *virt_ep ;
  struct xhci_command *command ;
  int tmp ;
  struct usb_hcd *tmp___0 ;
  {
  xhci = hcd_to_xhci(hcd);
  udev = (struct usb_device *)ep->hcpriv;
  if ((unsigned long )ep->hcpriv == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  ep_index = xhci_get_endpoint_index(& ep->desc);
  virt_ep = (struct xhci_virt_ep *)(& (xhci->devs[udev->slot_id])->eps) + (unsigned long )ep_index;
  if ((unsigned long )virt_ep->stopped_td == (unsigned long )((struct xhci_td *)0)) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_reset_ep, "Endpoint 0x%x not halted, refusing to reset.",
                   (int )ep->desc.bEndpointAddress);
    return;
  } else {
  }
  tmp = usb_endpoint_xfer_control((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp != 0) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_reset_ep, "Control endpoint stall already handled.");
    return;
  } else {
  }
  command = xhci_alloc_command(xhci, 0, 0, 32U);
  if ((unsigned long )command == (unsigned long )((struct xhci_command *)0)) {
    return;
  } else {
  }
  xhci_dbg_trace(xhci, & trace_xhci_dbg_reset_ep, "Queueing reset endpoint command");
  ldv_spin_lock();
  ret = xhci_queue_reset_ep(xhci, command, udev->slot_id, ep_index);
  if (ret == 0) {
    xhci_cleanup_stalled_ring(xhci, udev, ep_index);
    kfree((void const *)virt_ep->stopped_td);
    xhci_ring_cmd_db(xhci);
  } else {
  }
  virt_ep->stopped_td = (struct xhci_td *)0;
  virt_ep->stopped_stream = 0U;
  spin_unlock_irqrestore(& xhci->lock, flags);
  if (ret != 0) {
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "FIXME allocate a new ring segment\n");
  } else {
  }
  return;
}
}
static int xhci_check_streams_endpoint(struct xhci_hcd *xhci , struct usb_device *udev ,
                                       struct usb_host_endpoint *ep , unsigned int slot_id )
{
  int ret ;
  unsigned int ep_index ;
  unsigned int ep_state ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  int tmp___1 ;
  struct usb_hcd *tmp___2 ;
  struct usb_hcd *tmp___3 ;
  struct usb_hcd *tmp___4 ;
  int tmp___5 ;
  {
  if ((unsigned long )ep == (unsigned long )((struct usb_host_endpoint *)0)) {
    return (-22);
  } else {
  }
  tmp = xhci_to_hcd(xhci);
  ret = xhci_check_args(tmp, udev, ep, 1, 1, "xhci_check_streams_endpoint");
  if (ret <= 0) {
    return (-22);
  } else {
  }
  tmp___1 = usb_ss_max_streams((struct usb_ss_ep_comp_descriptor const *)(& ep->ss_ep_comp));
  if (tmp___1 == 0) {
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "WARN: SuperSpeed Endpoint Companion descriptor for ep 0x%x does not support streams\n",
             (int )ep->desc.bEndpointAddress);
    return (-22);
  } else {
  }
  ep_index = xhci_get_endpoint_index(& ep->desc);
  ep_state = (xhci->devs[slot_id])->eps[ep_index].ep_state;
  if ((ep_state & 16U) != 0U || (ep_state & 8U) != 0U) {
    tmp___2 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___2->self.controller, "WARN: SuperSpeed bulk endpoint 0x%x already has streams set up.\n",
             (int )ep->desc.bEndpointAddress);
    tmp___3 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___3->self.controller, "Send email to xHCI maintainer and ask for dynamic stream context array reallocation.\n");
    return (-22);
  } else {
  }
  tmp___5 = list_empty((struct list_head const *)(& ((xhci->devs[slot_id])->eps[ep_index].ring)->td_list));
  if (tmp___5 == 0) {
    tmp___4 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___4->self.controller, "Cannot setup streams for SuperSpeed bulk endpoint 0x%x; URBs are pending.\n",
             (int )ep->desc.bEndpointAddress);
    return (-22);
  } else {
  }
  return (0);
}
}
static void xhci_calculate_streams_entries(struct xhci_hcd *xhci , unsigned int *num_streams ,
                                           unsigned int *num_stream_ctxs )
{
  unsigned int max_streams ;
  unsigned long tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  {
  tmp = __roundup_pow_of_two((unsigned long )*num_streams);
  *num_stream_ctxs = (unsigned int )tmp;
  max_streams = (unsigned int )(1 << (int )(((xhci->hcc_params >> 12) & 15U) + 1U));
  if (*num_stream_ctxs > max_streams) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_calculate_streams_entries";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor.format = "xHCI HW only supports %u stream ctx entries.\n";
    descriptor.lineno = 3172U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "xHCI HW only supports %u stream ctx entries.\n", max_streams);
    } else {
    }
    *num_stream_ctxs = max_streams;
    *num_streams = max_streams;
  } else {
  }
  return;
}
}
static int xhci_calculate_streams_and_bitmask(struct xhci_hcd *xhci , struct usb_device *udev ,
                                              struct usb_host_endpoint **eps , unsigned int num_eps ,
                                              unsigned int *num_streams , u32 *changed_ep_bitmask )
{
  unsigned int max_streams ;
  unsigned int endpoint_flag ;
  int i ;
  int ret ;
  int tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  {
  i = 0;
  goto ldv_34997;
  ldv_34996:
  ret = xhci_check_streams_endpoint(xhci, udev, *(eps + (unsigned long )i), (unsigned int )udev->slot_id);
  if (ret < 0) {
    return (ret);
  } else {
  }
  tmp = usb_ss_max_streams((struct usb_ss_ep_comp_descriptor const *)(& (*(eps + (unsigned long )i))->ss_ep_comp));
  max_streams = (unsigned int )tmp;
  if (*num_streams - 1U > max_streams) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_calculate_streams_and_bitmask";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor.format = "Ep 0x%x only supports %u stream IDs.\n";
    descriptor.lineno = 3202U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "Ep 0x%x only supports %u stream IDs.\n", (int )(*(eps + (unsigned long )i))->desc.bEndpointAddress,
                        max_streams);
    } else {
    }
    *num_streams = max_streams + 1U;
  } else {
  }
  endpoint_flag = xhci_get_endpoint_flag(& (*(eps + (unsigned long )i))->desc);
  if ((*changed_ep_bitmask & endpoint_flag) != 0U) {
    return (-22);
  } else {
  }
  *changed_ep_bitmask = *changed_ep_bitmask | endpoint_flag;
  i = i + 1;
  ldv_34997: ;
  if ((unsigned int )i < num_eps) {
    goto ldv_34996;
  } else {
  }
  return (0);
}
}
static u32 xhci_calculate_no_streams_bitmask(struct xhci_hcd *xhci , struct usb_device *udev ,
                                             struct usb_host_endpoint **eps , unsigned int num_eps )
{
  u32 changed_ep_bitmask ;
  unsigned int slot_id ;
  unsigned int ep_index ;
  unsigned int ep_state ;
  int i ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  struct usb_hcd *tmp___1 ;
  unsigned int tmp___2 ;
  {
  changed_ep_bitmask = 0U;
  slot_id = (unsigned int )udev->slot_id;
  if ((unsigned long )xhci->devs[slot_id] == (unsigned long )((struct xhci_virt_device *)0)) {
    return (0U);
  } else {
  }
  i = 0;
  goto ldv_35011;
  ldv_35010:
  ep_index = xhci_get_endpoint_index(& (*(eps + (unsigned long )i))->desc);
  ep_state = (xhci->devs[slot_id])->eps[ep_index].ep_state;
  if ((ep_state & 32U) != 0U) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN Can\'t disable streams for endpoint 0x%x, streams are being disabled already\n",
             (int )(*(eps + (unsigned long )i))->desc.bEndpointAddress);
    return (0U);
  } else {
  }
  if ((ep_state & 16U) == 0U && (ep_state & 8U) == 0U) {
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "WARN Can\'t disable streams for endpoint 0x%x, streams are already disabled!\n",
             (int )(*(eps + (unsigned long )i))->desc.bEndpointAddress);
    tmp___1 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___1->self.controller, "WARN xhci_free_streams() called with non-streams endpoint\n");
    return (0U);
  } else {
  }
  tmp___2 = xhci_get_endpoint_flag(& (*(eps + (unsigned long )i))->desc);
  changed_ep_bitmask = tmp___2 | changed_ep_bitmask;
  i = i + 1;
  ldv_35011: ;
  if ((unsigned int )i < num_eps) {
    goto ldv_35010;
  } else {
  }
  return (changed_ep_bitmask);
}
}
int xhci_alloc_streams(struct usb_hcd *hcd , struct usb_device *udev , struct usb_host_endpoint **eps ,
                       unsigned int num_eps , unsigned int num_streams , gfp_t mem_flags )
{
  int i ;
  int ret ;
  struct xhci_hcd *xhci ;
  struct xhci_virt_device *vdev ;
  struct xhci_command *config_cmd ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  unsigned int ep_index ;
  unsigned int num_stream_ctxs ;
  unsigned long flags ;
  u32 changed_ep_bitmask ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct usb_hcd *tmp___5 ;
  struct usb_hcd *tmp___6 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct xhci_ep_ctx *ep_ctx ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  {
  changed_ep_bitmask = 0U;
  if ((unsigned long )eps == (unsigned long )((struct usb_host_endpoint **)0)) {
    return (-22);
  } else {
  }
  num_streams = num_streams + 1U;
  xhci = hcd_to_xhci(hcd);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_alloc_streams";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor.format = "Driver wants %u stream IDs (including stream 0).\n";
  descriptor.lineno = 3294U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "Driver wants %u stream IDs (including stream 0).\n", num_streams);
  } else {
  }
  if (1 << (int )(((xhci->hcc_params >> 12) & 15U) + 1U) <= 3) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_alloc_streams";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor___0.format = "xHCI controller does not support streams.\n";
    descriptor___0.lineno = 3298U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "xHCI controller does not support streams.\n");
    } else {
    }
    return (-38);
  } else {
  }
  config_cmd = xhci_alloc_command(xhci, 1, 1, mem_flags);
  if ((unsigned long )config_cmd == (unsigned long )((struct xhci_command *)0)) {
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_alloc_streams";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor___1.format = "Could not allocate xHCI command structure.\n";
    descriptor___1.lineno = 3304U;
    descriptor___1.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      tmp___3 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                        "Could not allocate xHCI command structure.\n");
    } else {
    }
    return (-12);
  } else {
  }
  ctrl_ctx = xhci_get_input_control_ctx(xhci, config_cmd->in_ctx);
  if ((unsigned long )ctrl_ctx == (unsigned long )((struct xhci_input_control_ctx *)0)) {
    tmp___5 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___5->self.controller, "%s: Could not get input context, bad type.\n",
             "xhci_alloc_streams");
    xhci_free_command(xhci, config_cmd);
    return (-12);
  } else {
  }
  ldv_spin_lock();
  ret = xhci_calculate_streams_and_bitmask(xhci, udev, eps, num_eps, & num_streams,
                                           & changed_ep_bitmask);
  if (ret < 0) {
    xhci_free_command(xhci, config_cmd);
    spin_unlock_irqrestore(& xhci->lock, flags);
    return (ret);
  } else {
  }
  if (num_streams <= 1U) {
    tmp___6 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___6->self.controller, "WARN: endpoints can\'t handle more than one stream.\n");
    xhci_free_command(xhci, config_cmd);
    spin_unlock_irqrestore(& xhci->lock, flags);
    return (-22);
  } else {
  }
  vdev = xhci->devs[udev->slot_id];
  i = 0;
  goto ldv_35036;
  ldv_35035:
  ep_index = xhci_get_endpoint_index(& (*(eps + (unsigned long )i))->desc);
  vdev->eps[ep_index].ep_state = vdev->eps[ep_index].ep_state | 8U;
  i = i + 1;
  ldv_35036: ;
  if ((unsigned int )i < num_eps) {
    goto ldv_35035;
  } else {
  }
  spin_unlock_irqrestore(& xhci->lock, flags);
  xhci_calculate_streams_entries(xhci, & num_streams, & num_stream_ctxs);
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_alloc_streams";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___2.format = "Need %u stream ctx entries for %u stream IDs.\n";
  descriptor___2.lineno = 3350U;
  descriptor___2.flags = 0U;
  tmp___8 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___7->self.controller,
                      "Need %u stream ctx entries for %u stream IDs.\n", num_stream_ctxs,
                      num_streams);
  } else {
  }
  i = 0;
  goto ldv_35041;
  ldv_35040:
  ep_index = xhci_get_endpoint_index(& (*(eps + (unsigned long )i))->desc);
  vdev->eps[ep_index].stream_info = xhci_alloc_stream_info(xhci, num_stream_ctxs,
                                                           num_streams, mem_flags);
  if ((unsigned long )vdev->eps[ep_index].stream_info == (unsigned long )((struct xhci_stream_info *)0)) {
    goto cleanup;
  } else {
  }
  i = i + 1;
  ldv_35041: ;
  if ((unsigned int )i < num_eps) {
    goto ldv_35040;
  } else {
  }
  i = 0;
  goto ldv_35045;
  ldv_35044:
  ep_index = xhci_get_endpoint_index(& (*(eps + (unsigned long )i))->desc);
  ep_ctx = xhci_get_ep_ctx(xhci, config_cmd->in_ctx, ep_index);
  xhci_endpoint_copy(xhci, config_cmd->in_ctx, vdev->out_ctx, ep_index);
  xhci_setup_streams_ep_input_ctx(xhci, ep_ctx, vdev->eps[ep_index].stream_info);
  i = i + 1;
  ldv_35045: ;
  if ((unsigned int )i < num_eps) {
    goto ldv_35044;
  } else {
  }
  xhci_setup_input_ctx_for_config_ep(xhci, config_cmd->in_ctx, vdev->out_ctx, ctrl_ctx,
                                     changed_ep_bitmask, changed_ep_bitmask);
  ret = xhci_configure_endpoint(xhci, udev, config_cmd, 0, 0);
  if (ret < 0) {
    goto cleanup;
  } else {
  }
  ldv_spin_lock();
  i = 0;
  goto ldv_35049;
  ldv_35048:
  ep_index = xhci_get_endpoint_index(& (*(eps + (unsigned long )i))->desc);
  vdev->eps[ep_index].ep_state = vdev->eps[ep_index].ep_state & 4294967287U;
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_alloc_streams";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___3.format = "Slot %u ep ctx %u now has streams.\n";
  descriptor___3.lineno = 3399U;
  descriptor___3.flags = 0U;
  tmp___10 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    tmp___9 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___9->self.controller,
                      "Slot %u ep ctx %u now has streams.\n", udev->slot_id, ep_index);
  } else {
  }
  vdev->eps[ep_index].ep_state = vdev->eps[ep_index].ep_state | 16U;
  i = i + 1;
  ldv_35049: ;
  if ((unsigned int )i < num_eps) {
    goto ldv_35048;
  } else {
  }
  xhci_free_command(xhci, config_cmd);
  spin_unlock_irqrestore(& xhci->lock, flags);
  return ((int )(num_streams - 1U));
  cleanup:
  i = 0;
  goto ldv_35052;
  ldv_35051:
  ep_index = xhci_get_endpoint_index(& (*(eps + (unsigned long )i))->desc);
  xhci_free_stream_info(xhci, vdev->eps[ep_index].stream_info);
  vdev->eps[ep_index].stream_info = (struct xhci_stream_info *)0;
  vdev->eps[ep_index].ep_state = vdev->eps[ep_index].ep_state & 4294967287U;
  vdev->eps[ep_index].ep_state = vdev->eps[ep_index].ep_state & 4294967279U;
  xhci_endpoint_zero(xhci, vdev, *(eps + (unsigned long )i));
  i = i + 1;
  ldv_35052: ;
  if ((unsigned int )i < num_eps) {
    goto ldv_35051;
  } else {
  }
  xhci_free_command(xhci, config_cmd);
  return (-12);
}
}
int xhci_free_streams(struct usb_hcd *hcd , struct usb_device *udev , struct usb_host_endpoint **eps ,
                      unsigned int num_eps , gfp_t mem_flags )
{
  int i ;
  int ret ;
  struct xhci_hcd *xhci ;
  struct xhci_virt_device *vdev ;
  struct xhci_command *command ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  unsigned int ep_index ;
  unsigned long flags ;
  u32 changed_ep_bitmask ;
  struct usb_hcd *tmp ;
  struct xhci_ep_ctx *ep_ctx ;
  {
  xhci = hcd_to_xhci(hcd);
  vdev = xhci->devs[udev->slot_id];
  ldv_spin_lock();
  changed_ep_bitmask = xhci_calculate_no_streams_bitmask(xhci, udev, eps, num_eps);
  if (changed_ep_bitmask == 0U) {
    spin_unlock_irqrestore(& xhci->lock, flags);
    return (-22);
  } else {
  }
  ep_index = xhci_get_endpoint_index(& (*eps)->desc);
  command = (vdev->eps[ep_index].stream_info)->free_streams_command;
  ctrl_ctx = xhci_get_input_control_ctx(xhci, command->in_ctx);
  if ((unsigned long )ctrl_ctx == (unsigned long )((struct xhci_input_control_ctx *)0)) {
    spin_unlock_irqrestore(& xhci->lock, flags);
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "%s: Could not get input context, bad type.\n",
             "xhci_free_streams");
    return (-22);
  } else {
  }
  i = 0;
  goto ldv_35073;
  ldv_35072:
  ep_index = xhci_get_endpoint_index(& (*(eps + (unsigned long )i))->desc);
  ep_ctx = xhci_get_ep_ctx(xhci, command->in_ctx, ep_index);
  (xhci->devs[udev->slot_id])->eps[ep_index].ep_state = (xhci->devs[udev->slot_id])->eps[ep_index].ep_state | 32U;
  xhci_endpoint_copy(xhci, command->in_ctx, vdev->out_ctx, ep_index);
  xhci_setup_no_streams_ep_input_ctx(xhci, ep_ctx, (struct xhci_virt_ep *)(& vdev->eps) + (unsigned long )ep_index);
  i = i + 1;
  ldv_35073: ;
  if ((unsigned int )i < num_eps) {
    goto ldv_35072;
  } else {
  }
  xhci_setup_input_ctx_for_config_ep(xhci, command->in_ctx, vdev->out_ctx, ctrl_ctx,
                                     changed_ep_bitmask, changed_ep_bitmask);
  spin_unlock_irqrestore(& xhci->lock, flags);
  ret = xhci_configure_endpoint(xhci, udev, command, 0, 1);
  if (ret < 0) {
    return (ret);
  } else {
  }
  ldv_spin_lock();
  i = 0;
  goto ldv_35076;
  ldv_35075:
  ep_index = xhci_get_endpoint_index(& (*(eps + (unsigned long )i))->desc);
  xhci_free_stream_info(xhci, vdev->eps[ep_index].stream_info);
  vdev->eps[ep_index].stream_info = (struct xhci_stream_info *)0;
  vdev->eps[ep_index].ep_state = vdev->eps[ep_index].ep_state & 4294967263U;
  vdev->eps[ep_index].ep_state = vdev->eps[ep_index].ep_state & 4294967279U;
  i = i + 1;
  ldv_35076: ;
  if ((unsigned int )i < num_eps) {
    goto ldv_35075;
  } else {
  }
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (0);
}
}
void xhci_free_device_endpoint_resources(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                                         bool drop_control_ep )
{
  int i ;
  unsigned int num_dropped_eps ;
  unsigned int drop_flags ;
  {
  num_dropped_eps = 0U;
  drop_flags = 0U;
  i = (int )drop_control_ep ? 0 : 1;
  goto ldv_35087;
  ldv_35086: ;
  if ((unsigned long )virt_dev->eps[i].ring != (unsigned long )((struct xhci_ring *)0)) {
    drop_flags = (unsigned int )(1 << i) | drop_flags;
    num_dropped_eps = num_dropped_eps + 1U;
  } else {
  }
  i = i + 1;
  ldv_35087: ;
  if (i <= 30) {
    goto ldv_35086;
  } else {
  }
  xhci->num_active_eps = xhci->num_active_eps - num_dropped_eps;
  if (num_dropped_eps != 0U) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks, "Dropped %u ep ctxs, flags = 0x%x, %u now active.",
                   num_dropped_eps, drop_flags, xhci->num_active_eps);
  } else {
  }
  return;
}
}
int xhci_discover_or_reset_device(struct usb_hcd *hcd , struct usb_device *udev )
{
  int ret ;
  int i ;
  unsigned long flags ;
  struct xhci_hcd *xhci ;
  unsigned int slot_id ;
  struct xhci_virt_device *virt_dev ;
  struct xhci_command *reset_device_cmd ;
  int last_freed_endpoint ;
  struct xhci_slot_ctx *slot_ctx ;
  int old_active_eps ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct usb_hcd *tmp___9 ;
  struct _ddebug descriptor___4 ;
  char *tmp___10 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___13 ;
  long tmp___14 ;
  struct _ddebug descriptor___6 ;
  struct usb_hcd *tmp___15 ;
  long tmp___16 ;
  int tmp___17 ;
  struct usb_hcd *tmp___18 ;
  struct xhci_virt_ep *ep ;
  unsigned int tmp___19 ;
  struct usb_hcd *tmp___20 ;
  int tmp___21 ;
  struct _ddebug descriptor___7 ;
  struct usb_hcd *tmp___22 ;
  long tmp___23 ;
  {
  old_active_eps = 0;
  ret = xhci_check_args(hcd, udev, (struct usb_host_endpoint *)0, 0, 0, "xhci_discover_or_reset_device");
  if (ret <= 0) {
    return (ret);
  } else {
  }
  xhci = hcd_to_xhci(hcd);
  slot_id = (unsigned int )udev->slot_id;
  virt_dev = xhci->devs[slot_id];
  if ((unsigned long )virt_dev == (unsigned long )((struct xhci_virt_device *)0)) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_discover_or_reset_device";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor.format = "The device to be reset with slot ID %u does not exist. Re-allocate the device\n";
    descriptor.lineno = 3583U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "The device to be reset with slot ID %u does not exist. Re-allocate the device\n",
                        slot_id);
    } else {
    }
    ret = xhci_alloc_dev(hcd, udev);
    if (ret == 1) {
      return (0);
    } else {
      return (-22);
    }
  } else {
  }
  if ((unsigned long )virt_dev->udev != (unsigned long )udev) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_discover_or_reset_device";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor___0.format = "The device to be reset with slot ID %u does not match the udev. Re-allocate the device\n";
    descriptor___0.lineno = 3598U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "The device to be reset with slot ID %u does not match the udev. Re-allocate the device\n",
                        slot_id);
    } else {
    }
    ret = xhci_alloc_dev(hcd, udev);
    if (ret == 1) {
      return (0);
    } else {
      return (-22);
    }
  } else {
  }
  slot_ctx = xhci_get_slot_ctx(xhci, virt_dev->out_ctx);
  if (slot_ctx->dev_state >> 27 == 0U) {
    return (0);
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_discover_or_reset_device";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___1.format = "Resetting device with slot ID %u\n";
  descriptor___1.lineno = 3612U;
  descriptor___1.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                      "Resetting device with slot ID %u\n", slot_id);
  } else {
  }
  reset_device_cmd = xhci_alloc_command(xhci, 0, 1, 16U);
  if ((unsigned long )reset_device_cmd == (unsigned long )((struct xhci_command *)0)) {
    descriptor___2.modname = "xhci_hcd";
    descriptor___2.function = "xhci_discover_or_reset_device";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor___2.format = "Couldn\'t allocate command structure.\n";
    descriptor___2.lineno = 3621U;
    descriptor___2.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      tmp___5 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___5->self.controller,
                        "Couldn\'t allocate command structure.\n");
    } else {
    }
    return (-12);
  } else {
  }
  ldv_spin_lock();
  ret = xhci_queue_reset_device(xhci, reset_device_cmd, slot_id);
  if (ret != 0) {
    descriptor___3.modname = "xhci_hcd";
    descriptor___3.function = "xhci_discover_or_reset_device";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor___3.format = "FIXME: allocate a command ring segment\n";
    descriptor___3.lineno = 3630U;
    descriptor___3.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      tmp___7 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___7->self.controller,
                        "FIXME: allocate a command ring segment\n");
    } else {
    }
    spin_unlock_irqrestore(& xhci->lock, flags);
    goto command_cleanup;
  } else {
  }
  xhci_ring_cmd_db(xhci);
  spin_unlock_irqrestore(& xhci->lock, flags);
  wait_for_completion(reset_device_cmd->completion);
  ret = (int )reset_device_cmd->status;
  switch (ret) {
  case 25: ;
  case 24:
  tmp___9 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___9->self.controller, "Timeout waiting for reset device command\n");
  ret = -62;
  goto command_cleanup;
  case 11: ;
  case 19:
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_discover_or_reset_device";
  descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___4.format = "Can\'t reset device (slot ID %u) in %s state\n";
  descriptor___4.lineno = 3655U;
  descriptor___4.flags = 0U;
  tmp___12 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    tmp___10 = xhci_get_slot_state(xhci, virt_dev->out_ctx);
    tmp___11 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___11->self.controller,
                      "Can\'t reset device (slot ID %u) in %s state\n", slot_id, tmp___10);
  } else {
  }
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "xhci_discover_or_reset_device";
  descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___5.format = "Not freeing device rings.\n";
  descriptor___5.lineno = 3656U;
  descriptor___5.flags = 0U;
  tmp___14 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___14 != 0L) {
    tmp___13 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___13->self.controller,
                      "Not freeing device rings.\n");
  } else {
  }
  ret = 0;
  goto command_cleanup;
  case 1:
  descriptor___6.modname = "xhci_hcd";
  descriptor___6.function = "xhci_discover_or_reset_device";
  descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___6.format = "Successful reset device command.\n";
  descriptor___6.lineno = 3661U;
  descriptor___6.flags = 0U;
  tmp___16 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___16 != 0L) {
    tmp___15 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___6, (struct device const *)tmp___15->self.controller,
                      "Successful reset device command.\n");
  } else {
  }
  goto ldv_35118;
  default:
  tmp___17 = xhci_is_vendor_info_code(xhci, (unsigned int )ret);
  if (tmp___17 != 0) {
    goto ldv_35118;
  } else {
  }
  tmp___18 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___18->self.controller, "Unknown completion code %u for reset device command.\n",
           ret);
  ret = -22;
  goto command_cleanup;
  }
  ldv_35118: ;
  if ((xhci->quirks & 32U) != 0U) {
    ldv_spin_lock();
    xhci_free_device_endpoint_resources(xhci, virt_dev, 0);
    spin_unlock_irqrestore(& xhci->lock, flags);
  } else {
  }
  last_freed_endpoint = 1;
  i = 1;
  goto ldv_35122;
  ldv_35121:
  ep = (struct xhci_virt_ep *)(& virt_dev->eps) + (unsigned long )i;
  if ((ep->ep_state & 16U) != 0U) {
    tmp___19 = xhci_get_endpoint_address((unsigned int )i);
    tmp___20 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___20->self.controller, "WARN: endpoint 0x%02x has streams on device reset, freeing streams.\n",
             tmp___19);
    xhci_free_stream_info(xhci, ep->stream_info);
    ep->stream_info = (struct xhci_stream_info *)0;
    ep->ep_state = ep->ep_state & 4294967279U;
  } else {
  }
  if ((unsigned long )ep->ring != (unsigned long )((struct xhci_ring *)0)) {
    xhci_free_or_cache_endpoint_ring(xhci, virt_dev, (unsigned int )i);
    last_freed_endpoint = i;
  } else {
  }
  tmp___21 = list_empty((struct list_head const *)(& virt_dev->eps[i].bw_endpoint_list));
  if (tmp___21 == 0) {
    xhci_drop_ep_from_interval_table(xhci, & virt_dev->eps[i].bw_info, virt_dev->bw_table,
                                     udev, (struct xhci_virt_ep *)(& virt_dev->eps) + (unsigned long )i,
                                     virt_dev->tt_info);
  } else {
  }
  xhci_clear_endpoint_bw_info(& virt_dev->eps[i].bw_info);
  i = i + 1;
  ldv_35122: ;
  if (i <= 30) {
    goto ldv_35121;
  } else {
  }
  xhci_update_tt_active_eps(xhci, virt_dev, old_active_eps);
  descriptor___7.modname = "xhci_hcd";
  descriptor___7.function = "xhci_discover_or_reset_device";
  descriptor___7.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___7.format = "Output context after successful reset device cmd:\n";
  descriptor___7.lineno = 3709U;
  descriptor___7.flags = 0U;
  tmp___23 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
  if (tmp___23 != 0L) {
    tmp___22 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___7, (struct device const *)tmp___22->self.controller,
                      "Output context after successful reset device cmd:\n");
  } else {
  }
  xhci_dbg_ctx(xhci, virt_dev->out_ctx, (unsigned int )last_freed_endpoint);
  ret = 0;
  command_cleanup:
  xhci_free_command(xhci, reset_device_cmd);
  return (ret);
}
}
void xhci_free_dev(struct usb_hcd *hcd , struct usb_device *udev )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  struct xhci_virt_device *virt_dev ;
  unsigned long flags ;
  u32 state ;
  int i ;
  int ret ;
  struct xhci_command *command ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  command = xhci_alloc_command(xhci, 0, 0, 208U);
  if ((unsigned long )command == (unsigned long )((struct xhci_command *)0)) {
    return;
  } else {
  }
  ret = xhci_check_args(hcd, udev, (struct usb_host_endpoint *)0, 0, 1, "xhci_free_dev");
  if (ret <= 0 && ret != -19) {
    kfree((void const *)command);
    return;
  } else {
  }
  virt_dev = xhci->devs[udev->slot_id];
  i = 0;
  goto ldv_35138;
  ldv_35137:
  virt_dev->eps[i].ep_state = virt_dev->eps[i].ep_state & 4294967291U;
  ldv_del_timer_sync_31(& virt_dev->eps[i].stop_cmd_timer);
  i = i + 1;
  ldv_35138: ;
  if (i <= 30) {
    goto ldv_35137;
  } else {
  }
  ldv_spin_lock();
  state = readl((void const volatile *)(& (xhci->op_regs)->status));
  if ((state == 4294967295U || (int )xhci->xhc_state & 1) || (xhci->xhc_state & 2U) != 0U) {
    xhci_free_virt_device(xhci, udev->slot_id);
    spin_unlock_irqrestore(& xhci->lock, flags);
    kfree((void const *)command);
    return;
  } else {
  }
  tmp___2 = xhci_queue_slot_control(xhci, command, 10U, (u32 )udev->slot_id);
  if (tmp___2 != 0) {
    spin_unlock_irqrestore(& xhci->lock, flags);
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_free_dev";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor.format = "FIXME: allocate a command ring segment\n";
    descriptor.lineno = 3777U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "FIXME: allocate a command ring segment\n");
    } else {
    }
    return;
  } else {
  }
  xhci_ring_cmd_db(xhci);
  spin_unlock_irqrestore(& xhci->lock, flags);
  return;
}
}
static int xhci_reserve_host_control_ep_resources(struct xhci_hcd *xhci )
{
  {
  if (xhci->num_active_eps + 1U > xhci->limit_active_eps) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks, "Not enough ep ctxs: %u active, need to add 1, limit is %u.",
                   xhci->num_active_eps, xhci->limit_active_eps);
    return (-12);
  } else {
  }
  xhci->num_active_eps = xhci->num_active_eps + 1U;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks, "Adding 1 ep ctx, %u now active.",
                 xhci->num_active_eps);
  return (0);
}
}
int xhci_alloc_dev(struct usb_hcd *hcd , struct usb_device *udev )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  unsigned long flags ;
  int ret ;
  struct xhci_command *command ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct usb_hcd *tmp___2 ;
  unsigned int tmp___3 ;
  struct usb_hcd *tmp___4 ;
  struct usb_hcd *tmp___5 ;
  struct usb_hcd *tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  command = xhci_alloc_command(xhci, 0, 0, 208U);
  if ((unsigned long )command == (unsigned long )((struct xhci_command *)0)) {
    return (0);
  } else {
  }
  ldv_spin_lock();
  command->completion = & xhci->addr_dev;
  ret = xhci_queue_slot_control(xhci, command, 9U, 0U);
  if (ret != 0) {
    spin_unlock_irqrestore(& xhci->lock, flags);
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_alloc_dev";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor.format = "FIXME: allocate a command ring segment\n";
    descriptor.lineno = 3832U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "FIXME: allocate a command ring segment\n");
    } else {
    }
    kfree((void const *)command);
    return (0);
  } else {
  }
  xhci_ring_cmd_db(xhci);
  spin_unlock_irqrestore(& xhci->lock, flags);
  wait_for_completion(command->completion);
  if (xhci->slot_id == 0 || command->status != 1U) {
    tmp___2 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___2->self.controller, "Error while assigning device slot ID\n");
    tmp___3 = readl((void const volatile *)(& (xhci->cap_regs)->hcs_params1));
    tmp___4 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___4->self.controller, "Max number of devices this xHCI host supports is %u.\n",
            tmp___3 & 255U);
    kfree((void const *)command);
    return (0);
  } else {
  }
  if ((xhci->quirks & 32U) != 0U) {
    ldv_spin_lock();
    ret = xhci_reserve_host_control_ep_resources(xhci);
    if (ret != 0) {
      spin_unlock_irqrestore(& xhci->lock, flags);
      tmp___5 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___5->self.controller, "Not enough host resources, active endpoint contexts = %u\n",
               xhci->num_active_eps);
      goto disable_slot;
    } else {
    }
    spin_unlock_irqrestore(& xhci->lock, flags);
  } else {
  }
  tmp___7 = xhci_alloc_virt_device(xhci, xhci->slot_id, udev, 16U);
  if (tmp___7 == 0) {
    tmp___6 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___6->self.controller, "Could not allocate xHCI USB device data structures\n");
    goto disable_slot;
  } else {
  }
  udev->slot_id = xhci->slot_id;
  kfree((void const *)command);
  return (1);
  disable_slot:
  ldv_spin_lock();
  command->completion = (struct completion *)0;
  command->status = 0U;
  tmp___8 = xhci_queue_slot_control(xhci, command, 10U, (u32 )udev->slot_id);
  if (tmp___8 == 0) {
    xhci_ring_cmd_db(xhci);
  } else {
  }
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (0);
}
}
static int xhci_setup_device(struct usb_hcd *hcd , struct usb_device *udev , enum xhci_setup_dev setup )
{
  char const *act ;
  unsigned long flags ;
  struct xhci_virt_device *virt_dev ;
  int ret ;
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  struct xhci_slot_ctx *slot_ctx ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  u64 temp_64 ;
  struct xhci_command *command ;
  struct usb_hcd *tmp___0 ;
  int __ret_warn_on ;
  long tmp___1 ;
  long tmp___2 ;
  struct usb_hcd *tmp___3 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  struct usb_hcd *tmp___6 ;
  struct usb_hcd *tmp___7 ;
  struct usb_hcd *tmp___8 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___13 ;
  long tmp___14 ;
  {
  act = (unsigned int )setup == 0U ? "context" : "address";
  ret = 0;
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  if (udev->slot_id == 0) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_address, "Bad Slot ID %d", udev->slot_id);
    return (-22);
  } else {
  }
  virt_dev = xhci->devs[udev->slot_id];
  __ret_warn_on = (unsigned long )virt_dev == (unsigned long )((struct xhci_virt_device *)0);
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared",
                       3926);
  } else {
  }
  tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___2 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "Virt dev invalid for slot_id 0x%x!\n",
             udev->slot_id);
    return (-22);
  } else {
  }
  command = xhci_alloc_command(xhci, 0, 0, 208U);
  if ((unsigned long )command == (unsigned long )((struct xhci_command *)0)) {
    return (-12);
  } else {
  }
  command->in_ctx = virt_dev->in_ctx;
  command->completion = & xhci->addr_dev;
  slot_ctx = xhci_get_slot_ctx(xhci, virt_dev->in_ctx);
  ctrl_ctx = xhci_get_input_control_ctx(xhci, virt_dev->in_ctx);
  if ((unsigned long )ctrl_ctx == (unsigned long )((struct xhci_input_control_ctx *)0)) {
    tmp___3 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___3->self.controller, "%s: Could not get input context, bad type.\n",
             "xhci_setup_device");
    kfree((void const *)command);
    return (-22);
  } else {
  }
  if (slot_ctx->dev_info == 0U) {
    xhci_setup_addressable_virt_dev(xhci, udev);
  } else {
    xhci_copy_ep0_dequeue_into_input_ctx(xhci, udev);
  }
  ctrl_ctx->add_flags = 3U;
  ctrl_ctx->drop_flags = 0U;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_setup_device";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor.format = "Slot ID %d Input Context:\n";
  descriptor.lineno = 3965U;
  descriptor.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___4->self.controller,
                      "Slot ID %d Input Context:\n", udev->slot_id);
  } else {
  }
  xhci_dbg_ctx(xhci, virt_dev->in_ctx, 2U);
  trace_xhci_address_ctx(xhci, virt_dev->in_ctx, slot_ctx->dev_info >> 27);
  ldv_spin_lock();
  ret = xhci_queue_address_device(xhci, command, (virt_dev->in_ctx)->dma, (u32 )udev->slot_id,
                                  setup);
  if (ret != 0) {
    spin_unlock_irqrestore(& xhci->lock, flags);
    xhci_dbg_trace(xhci, & trace_xhci_dbg_address, "FIXME: allocate a command ring segment");
    kfree((void const *)command);
    return (ret);
  } else {
  }
  xhci_ring_cmd_db(xhci);
  spin_unlock_irqrestore(& xhci->lock, flags);
  wait_for_completion(command->completion);
  switch (command->status) {
  case 25U: ;
  case 24U:
  tmp___6 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___6->self.controller, "Timeout while waiting for setup device command\n");
  ret = -62;
  goto ldv_35175;
  case 19U: ;
  case 11U:
  tmp___7 = xhci_to_hcd(xhci);
  dev_err((struct device const *)tmp___7->self.controller, "Setup OLD_ERROR: setup %s command for slot %d.\n",
          act, udev->slot_id);
  ret = -22;
  goto ldv_35175;
  case 4U:
  dev_warn((struct device const *)(& udev->dev), "Device not responding to setup %s.\n",
           act);
  ret = -71;
  goto ldv_35175;
  case 22U:
  dev_warn((struct device const *)(& udev->dev), "OLD_ERROR: Incompatible device for setup %s command\n",
           act);
  ret = -19;
  goto ldv_35175;
  case 1U:
  xhci_dbg_trace(xhci, & trace_xhci_dbg_address, "Successful setup %s command", act);
  goto ldv_35175;
  default:
  tmp___8 = xhci_to_hcd(xhci);
  dev_err((struct device const *)tmp___8->self.controller, "OLD_ERROR: unexpected setup %s command completion code 0x%x.\n",
          act, command->status);
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_setup_device";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___0.format = "Slot ID %d Output Context:\n";
  descriptor___0.lineno = 4019U;
  descriptor___0.flags = 0U;
  tmp___10 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    tmp___9 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___9->self.controller,
                      "Slot ID %d Output Context:\n", udev->slot_id);
  } else {
  }
  xhci_dbg_ctx(xhci, virt_dev->out_ctx, 2U);
  trace_xhci_address_ctx(xhci, virt_dev->out_ctx, 1U);
  ret = -22;
  goto ldv_35175;
  }
  ldv_35175: ;
  if (ret != 0) {
    kfree((void const *)command);
    return (ret);
  } else {
  }
  temp_64 = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->op_regs)->dcbaa_ptr);
  xhci_dbg_trace(xhci, & trace_xhci_dbg_address, "Op regs DCBAA ptr = %#016llx", temp_64);
  xhci_dbg_trace(xhci, & trace_xhci_dbg_address, "Slot ID %d dcbaa entry @%p = %#016llx",
                 udev->slot_id, (__le64 *)(& (xhci->dcbaa)->dev_context_ptrs) + (unsigned long )udev->slot_id,
                 (xhci->dcbaa)->dev_context_ptrs[udev->slot_id]);
  xhci_dbg_trace(xhci, & trace_xhci_dbg_address, "Output Context DMA address = %#08llx",
                 (virt_dev->out_ctx)->dma);
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_setup_device";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___1.format = "Slot ID %d Input Context:\n";
  descriptor___1.lineno = 4041U;
  descriptor___1.flags = 0U;
  tmp___12 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    tmp___11 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___11->self.controller,
                      "Slot ID %d Input Context:\n", udev->slot_id);
  } else {
  }
  xhci_dbg_ctx(xhci, virt_dev->in_ctx, 2U);
  trace_xhci_address_ctx(xhci, virt_dev->in_ctx, slot_ctx->dev_info >> 27);
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_setup_device";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___2.format = "Slot ID %d Output Context:\n";
  descriptor___2.lineno = 4045U;
  descriptor___2.flags = 0U;
  tmp___14 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___14 != 0L) {
    tmp___13 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___13->self.controller,
                      "Slot ID %d Output Context:\n", udev->slot_id);
  } else {
  }
  xhci_dbg_ctx(xhci, virt_dev->out_ctx, 2U);
  slot_ctx = xhci_get_slot_ctx(xhci, virt_dev->out_ctx);
  trace_xhci_address_ctx(xhci, virt_dev->out_ctx, slot_ctx->dev_info >> 27);
  ctrl_ctx->add_flags = 0U;
  ctrl_ctx->drop_flags = 0U;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_address, "Internal device address = %d", slot_ctx->dev_state & 255U);
  kfree((void const *)command);
  return (0);
}
}
int xhci_address_device(struct usb_hcd *hcd , struct usb_device *udev )
{
  int tmp ;
  {
  tmp = xhci_setup_device(hcd, udev, 1);
  return (tmp);
}
}
int xhci_enable_device(struct usb_hcd *hcd , struct usb_device *udev )
{
  int tmp ;
  {
  tmp = xhci_setup_device(hcd, udev, 0);
  return (tmp);
}
}
int xhci_find_raw_port_number(struct usb_hcd *hcd , int port1 )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  __le32 *base_addr ;
  __le32 *addr ;
  int raw_port ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  base_addr = & (xhci->op_regs)->port_status_base;
  if (hcd->speed != 64) {
    addr = *(xhci->usb2_ports + ((unsigned long )port1 + 0xffffffffffffffffUL));
  } else {
    addr = *(xhci->usb3_ports + ((unsigned long )port1 + 0xffffffffffffffffUL));
  }
  raw_port = (int )((unsigned int )((((long )addr - (long )base_addr) / 4L) / 4L) + 1U);
  return (raw_port);
}
}
static int xhci_change_max_exit_latency(struct xhci_hcd *xhci , struct usb_device *udev ,
                                        u16 max_exit_latency )
{
  struct xhci_virt_device *virt_dev ;
  struct xhci_command *command ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  struct xhci_slot_ctx *slot_ctx ;
  unsigned long flags ;
  int ret ;
  struct usb_hcd *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  {
  ldv_spin_lock();
  if ((int )(xhci->devs[udev->slot_id])->current_mel == (int )max_exit_latency) {
    spin_unlock_irqrestore(& xhci->lock, flags);
    return (0);
  } else {
  }
  virt_dev = xhci->devs[udev->slot_id];
  command = xhci->lpm_command;
  ctrl_ctx = xhci_get_input_control_ctx(xhci, command->in_ctx);
  if ((unsigned long )ctrl_ctx == (unsigned long )((struct xhci_input_control_ctx *)0)) {
    spin_unlock_irqrestore(& xhci->lock, flags);
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "%s: Could not get input context, bad type.\n",
             "xhci_change_max_exit_latency");
    return (-12);
  } else {
  }
  xhci_slot_copy(xhci, command->in_ctx, virt_dev->out_ctx);
  spin_unlock_irqrestore(& xhci->lock, flags);
  ctrl_ctx->add_flags = ctrl_ctx->add_flags | 1U;
  slot_ctx = xhci_get_slot_ctx(xhci, command->in_ctx);
  slot_ctx->dev_info2 = slot_ctx->dev_info2 & 4294901760U;
  slot_ctx->dev_info2 = slot_ctx->dev_info2 | (__le32 )max_exit_latency;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_context_change, "Set up evaluate context for LPM MEL change.");
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_change_max_exit_latency";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor.format = "Slot %u Input Context:\n";
  descriptor.lineno = 4138U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Slot %u Input Context:\n", udev->slot_id);
  } else {
  }
  xhci_dbg_ctx(xhci, command->in_ctx, 0U);
  ret = xhci_configure_endpoint(xhci, udev, command, 1, 1);
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_change_max_exit_latency";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___0.format = "Slot %u Output Context:\n";
  descriptor___0.lineno = 4144U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                      "Slot %u Output Context:\n", udev->slot_id);
  } else {
  }
  xhci_dbg_ctx(xhci, virt_dev->out_ctx, 0U);
  if (ret == 0) {
    ldv_spin_lock();
    virt_dev->current_mel = max_exit_latency;
    spin_unlock_irqrestore(& xhci->lock, flags);
  } else {
  }
  return (ret);
}
}
static int xhci_besl_encoding[16U] =
  { 125, 150, 200, 300,
        400, 500, 1000, 2000,
        3000, 4000, 5000, 6000,
        7000, 8000, 9000, 10000};
static int xhci_calculate_hird_besl(struct xhci_hcd *xhci , struct usb_device *udev )
{
  int u2del ;
  int besl ;
  int besl_host ;
  int besl_device ;
  u32 field ;
  {
  besl_device = 0;
  u2del = (int )(xhci->hcs_params3 >> 16);
  field = ((udev->bos)->ext_cap)->bmAttributes;
  if ((field & 4U) != 0U) {
    besl_host = 0;
    goto ldv_35227;
    ldv_35226: ;
    if (xhci_besl_encoding[besl_host] >= u2del) {
      goto ldv_35225;
    } else {
    }
    besl_host = besl_host + 1;
    ldv_35227: ;
    if (besl_host <= 15) {
      goto ldv_35226;
    } else {
    }
    ldv_35225: ;
    if ((field & 8U) != 0U) {
      besl_device = (int )((field & 3840U) >> 8);
    } else
    if ((field & 16U) != 0U) {
      besl_device = (int )((field & 61440U) >> 12);
    } else {
    }
  } else
  if (u2del <= 50) {
    besl_host = 0;
  } else {
    besl_host = (u2del + -51) / 75 + 1;
  }
  besl = besl_host + besl_device;
  if (besl > 15) {
    besl = 15;
  } else {
  }
  return (besl);
}
}
static int xhci_calculate_usb2_hw_lpm_params(struct usb_device *udev )
{
  u32 field ;
  int l1 ;
  int besld ;
  int hirdm ;
  {
  besld = 0;
  hirdm = 0;
  field = ((udev->bos)->ext_cap)->bmAttributes;
  l1 = udev->l1_params.timeout / 256;
  if ((field & 16U) != 0U) {
    besld = (int )((field & 61440U) >> 12);
    hirdm = 1;
  } else {
  }
  return ((((besld & 15) << 10) | ((l1 & 255) << 2)) | (hirdm & 3));
}
}
int xhci_set_usb2_hardware_lpm(struct usb_hcd *hcd , struct usb_device *udev , int enable )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  __le32 **port_array ;
  __le32 *pm_addr ;
  __le32 *hlpm_addr ;
  u32 pm_val ;
  u32 hlpm_val ;
  u32 field ;
  unsigned int port_num ;
  unsigned long flags ;
  int hird ;
  int exit_latency ;
  int ret ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  if ((hcd->speed == 64 || (unsigned int )*((unsigned char *)xhci + 9292UL) == 0U) || (unsigned int )*((unsigned char *)udev + 1876UL) == 0U) {
    return (-1);
  } else {
  }
  if (((unsigned long )udev->parent == (unsigned long )((struct usb_device *)0) || (unsigned long )(udev->parent)->parent != (unsigned long )((struct usb_device *)0)) || (unsigned int )udev->descriptor.bDeviceClass == 9U) {
    return (-1);
  } else {
  }
  if ((unsigned int )*((unsigned char *)udev + 1876UL) == 0U) {
    return (-1);
  } else {
  }
  ldv_spin_lock();
  port_array = xhci->usb2_ports;
  port_num = (unsigned int )((int )udev->portnum + -1);
  pm_addr = *(port_array + (unsigned long )port_num) + 1UL;
  pm_val = readl((void const volatile *)pm_addr);
  hlpm_addr = *(port_array + (unsigned long )port_num) + 3UL;
  field = ((udev->bos)->ext_cap)->bmAttributes;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_set_usb2_hardware_lpm";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor.format = "%s port %d USB2 hardware LPM\n";
  descriptor.lineno = 4251U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "%s port %d USB2 hardware LPM\n", enable != 0 ? (char *)"enable" : (char *)"disable",
                      port_num + 1U);
  } else {
  }
  if (enable != 0) {
    if ((unsigned int )*((unsigned char *)udev + 1877UL) != 0U) {
      if ((field & 4U) != 0U && (field & 8U) != 0U) {
        hird = (int )((field & 3840U) >> 8);
      } else {
        hird = (int )udev->l1_params.besl;
      }
      exit_latency = xhci_besl_encoding[hird];
      spin_unlock_irqrestore(& xhci->lock, flags);
      mutex_lock_nested(hcd->bandwidth_mutex, 0U);
      ret = xhci_change_max_exit_latency(xhci, udev, (int )((u16 )exit_latency));
      mutex_unlock(hcd->bandwidth_mutex);
      if (ret < 0) {
        return (ret);
      } else {
      }
      ldv_spin_lock();
      tmp___2 = xhci_calculate_usb2_hw_lpm_params(udev);
      hlpm_val = (u32 )tmp___2;
      writel(hlpm_val, (void volatile *)hlpm_addr);
      readl((void const volatile *)hlpm_addr);
    } else {
      hird = xhci_calculate_hird_besl(xhci, udev);
    }
    pm_val = pm_val & 4294967055U;
    pm_val = (u32 )((((hird << 4) & 255) | 8) | ((udev->slot_id << 8) & 65535)) | pm_val;
    writel(pm_val, (void volatile *)pm_addr);
    pm_val = readl((void const volatile *)pm_addr);
    pm_val = pm_val | 65536U;
    writel(pm_val, (void volatile *)pm_addr);
    readl((void const volatile *)pm_addr);
  } else {
    pm_val = pm_val & 4294836231U;
    writel(pm_val, (void volatile *)pm_addr);
    readl((void const volatile *)pm_addr);
    if ((unsigned int )*((unsigned char *)udev + 1877UL) != 0U) {
      spin_unlock_irqrestore(& xhci->lock, flags);
      mutex_lock_nested(hcd->bandwidth_mutex, 0U);
      xhci_change_max_exit_latency(xhci, udev, 0);
      mutex_unlock(hcd->bandwidth_mutex);
      return (0);
    } else {
    }
  }
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (0);
}
}
static int xhci_check_usb2_port_capability(struct xhci_hcd *xhci , int port , unsigned int capability )
{
  u32 port_offset ;
  u32 port_count ;
  int i ;
  {
  i = 0;
  goto ldv_35263;
  ldv_35262: ;
  if ((*(xhci->ext_caps + (unsigned long )i) & capability) != 0U) {
    port_offset = (*(xhci->ext_caps + (unsigned long )i) & 255U) - 1U;
    port_count = (*(xhci->ext_caps + (unsigned long )i) >> 8) & 255U;
    if ((u32 )port >= port_offset && (u32 )port < port_offset + port_count) {
      return (1);
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_35263: ;
  if ((unsigned int )i < xhci->num_ext_caps) {
    goto ldv_35262;
  } else {
  }
  return (0);
}
}
int xhci_update_device(struct usb_hcd *hcd , struct usb_device *udev )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  int portnum ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  portnum = (int )udev->portnum + -1;
  if ((hcd->speed == 64 || (unsigned int )*((unsigned char *)xhci + 9292UL) == 0U) || (unsigned int )*((unsigned char *)udev + 1876UL) == 0U) {
    return (0);
  } else {
  }
  if (((unsigned long )udev->parent == (unsigned long )((struct usb_device *)0) || (unsigned long )(udev->parent)->parent != (unsigned long )((struct usb_device *)0)) || (unsigned int )udev->descriptor.bDeviceClass == 9U) {
    return (0);
  } else {
  }
  if ((unsigned int )*((unsigned char *)xhci + 9292UL) != 0U) {
    tmp___1 = xhci_check_usb2_port_capability(xhci, portnum, 524288U);
    if (tmp___1 != 0) {
      udev->usb2_hw_lpm_capable = 1U;
      udev->l1_params.timeout = 512;
      udev->l1_params.besl = 4U;
      tmp___0 = xhci_check_usb2_port_capability(xhci, portnum, 1048576U);
      if (tmp___0 != 0) {
        udev->usb2_hw_lpm_besl_capable = 1U;
      } else {
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static unsigned long long xhci_service_interval_to_ns(struct usb_endpoint_descriptor *desc )
{
  {
  return ((125ULL << ((int )desc->bInterval + -1)) * 1000ULL);
}
}
static u16 xhci_get_timeout_no_hub_lpm(struct usb_device *udev , enum usb3_link_state state )
{
  unsigned long long sel ;
  unsigned long long pel ;
  unsigned int max_sel_pel ;
  char *state_name ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  switch ((unsigned int )state) {
  case 1U:
  sel = (unsigned long long )((udev->u1_params.sel + 999U) / 1000U);
  pel = (unsigned long long )((udev->u1_params.pel + 999U) / 1000U);
  max_sel_pel = 255U;
  state_name = (char *)"U1";
  goto ldv_35283;
  case 2U:
  sel = (unsigned long long )((udev->u2_params.sel + 999U) / 1000U);
  pel = (unsigned long long )((udev->u2_params.pel + 999U) / 1000U);
  max_sel_pel = 65535U;
  state_name = (char *)"U2";
  goto ldv_35283;
  default:
  dev_warn((struct device const *)(& udev->dev), "%s: Can\'t get timeout for non-U1 or U2 state.\n",
           "xhci_get_timeout_no_hub_lpm");
  return (0U);
  }
  ldv_35283: ;
  if ((unsigned long long )max_sel_pel >= sel && (unsigned long long )max_sel_pel >= pel) {
    return (255U);
  } else {
  }
  if ((unsigned long long )max_sel_pel < sel) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_get_timeout_no_hub_lpm";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor.format = "Device-initiated %s disabled due to long SEL %llu ms\n";
    descriptor.lineno = 4429U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& udev->dev), "Device-initiated %s disabled due to long SEL %llu ms\n",
                        state_name, sel);
    } else {
    }
  } else {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_get_timeout_no_hub_lpm";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor___0.format = "Device-initiated %s disabled due to long PEL %llu ms\n";
    descriptor___0.lineno = 4433U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& udev->dev),
                        "Device-initiated %s disabled due to long PEL %llu ms\n",
                        state_name, pel);
    } else {
    }
  }
  return (0U);
}
}
static u16 xhci_calculate_intel_u1_timeout(struct usb_device *udev , struct usb_endpoint_descriptor *desc )
{
  unsigned long long timeout_ns ;
  int ep_type ;
  int intr_type ;
  unsigned long long _tmp ;
  uint32_t __base ;
  uint32_t __rem ;
  unsigned long long _tmp___0 ;
  uint32_t __base___0 ;
  uint32_t __rem___0 ;
  struct _ddebug descriptor ;
  long tmp ;
  u16 tmp___0 ;
  {
  ep_type = usb_endpoint_type((struct usb_endpoint_descriptor const *)desc);
  switch (ep_type) {
  case 0:
  timeout_ns = (unsigned long long )(udev->u1_params.sel * 3U);
  goto ldv_35297;
  case 2:
  timeout_ns = (unsigned long long )(udev->u1_params.sel * 5U);
  goto ldv_35297;
  case 3:
  intr_type = usb_endpoint_interrupt_type((struct usb_endpoint_descriptor const *)desc);
  if (intr_type == 16) {
    timeout_ns = (unsigned long long )(udev->u1_params.sel * 3U);
    goto ldv_35297;
  } else {
  }
  case 1:
  timeout_ns = xhci_service_interval_to_ns(desc);
  _tmp = timeout_ns * 105ULL + 99ULL;
  __base = 100U;
  __rem = (uint32_t )(_tmp % (unsigned long long )__base);
  _tmp = _tmp / (unsigned long long )__base;
  timeout_ns = _tmp;
  if ((unsigned long long )(udev->u1_params.sel * 2U) > timeout_ns) {
    timeout_ns = (unsigned long long )(udev->u1_params.sel * 2U);
  } else {
  }
  goto ldv_35297;
  default: ;
  return (0U);
  }
  ldv_35297:
  _tmp___0 = timeout_ns + 999ULL;
  __base___0 = 1000U;
  __rem___0 = (uint32_t )(_tmp___0 % (unsigned long long )__base___0);
  _tmp___0 = _tmp___0 / (unsigned long long )__base___0;
  timeout_ns = _tmp___0;
  if (timeout_ns == 0ULL) {
    timeout_ns = timeout_ns + 1ULL;
  } else {
  }
  if (timeout_ns <= 127ULL) {
    return ((u16 )timeout_ns);
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_calculate_intel_u1_timeout";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor.format = "Hub-initiated U1 disabled due to long timeout %llu ms\n";
  descriptor.lineno = 4490U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& udev->dev), "Hub-initiated U1 disabled due to long timeout %llu ms\n",
                      timeout_ns);
  } else {
  }
  tmp___0 = xhci_get_timeout_no_hub_lpm(udev, 1);
  return (tmp___0);
}
}
static u16 xhci_calculate_intel_u2_timeout(struct usb_device *udev , struct usb_endpoint_descriptor *desc )
{
  unsigned long long timeout_ns ;
  unsigned long long u2_del_ns ;
  int tmp ;
  int tmp___0 ;
  unsigned long long tmp___1 ;
  unsigned long long _tmp ;
  uint32_t __base ;
  uint32_t __rem ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  u16 tmp___3 ;
  {
  timeout_ns = 10000000ULL;
  tmp = usb_endpoint_xfer_int((struct usb_endpoint_descriptor const *)desc);
  if (tmp != 0) {
    goto _L;
  } else {
    tmp___0 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)desc);
    if (tmp___0 != 0) {
      _L:
      tmp___1 = xhci_service_interval_to_ns(desc);
      if (tmp___1 > timeout_ns) {
        timeout_ns = xhci_service_interval_to_ns(desc);
      } else {
      }
    } else {
    }
  }
  u2_del_ns = (unsigned long long )((udev->bos)->ss_cap)->bU2DevExitLat * 1000ULL;
  if (u2_del_ns > timeout_ns) {
    timeout_ns = u2_del_ns;
  } else {
  }
  _tmp = timeout_ns + 255999ULL;
  __base = 256000U;
  __rem = (uint32_t )(_tmp % (unsigned long long )__base);
  _tmp = _tmp / (unsigned long long )__base;
  timeout_ns = _tmp;
  if (timeout_ns <= 254ULL) {
    return ((u16 )timeout_ns);
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_calculate_intel_u2_timeout";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor.format = "Hub-initiated U2 disabled due to long timeout %llu ms\n";
  descriptor.lineno = 4525U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& udev->dev), "Hub-initiated U2 disabled due to long timeout %llu ms\n",
                      timeout_ns);
  } else {
  }
  tmp___3 = xhci_get_timeout_no_hub_lpm(udev, 2);
  return (tmp___3);
}
}
static u16 xhci_call_host_update_timeout_for_endpoint(struct xhci_hcd *xhci , struct usb_device *udev ,
                                                      struct usb_endpoint_descriptor *desc ,
                                                      enum usb3_link_state state ,
                                                      u16 *timeout )
{
  u16 tmp ;
  u16 tmp___0 ;
  {
  if ((unsigned int )state == 1U) {
    if ((xhci->quirks & 4096U) != 0U) {
      tmp = xhci_calculate_intel_u1_timeout(udev, desc);
      return (tmp);
    } else {
    }
  } else
  if ((xhci->quirks & 4096U) != 0U) {
    tmp___0 = xhci_calculate_intel_u2_timeout(udev, desc);
    return (tmp___0);
  } else {
  }
  return (0U);
}
}
static int xhci_update_timeout_for_endpoint(struct xhci_hcd *xhci , struct usb_device *udev ,
                                            struct usb_endpoint_descriptor *desc ,
                                            enum usb3_link_state state , u16 *timeout )
{
  u16 alt_timeout ;
  {
  alt_timeout = xhci_call_host_update_timeout_for_endpoint(xhci, udev, desc, state,
                                                           timeout);
  if ((unsigned int )alt_timeout == 0U || (unsigned int )alt_timeout == 255U) {
    *timeout = alt_timeout;
    return (-7);
  } else {
  }
  if ((int )*timeout < (int )alt_timeout) {
    *timeout = alt_timeout;
  } else {
  }
  return (0);
}
}
static int xhci_update_timeout_for_interface(struct xhci_hcd *xhci , struct usb_device *udev ,
                                             struct usb_host_interface *alt , enum usb3_link_state state ,
                                             u16 *timeout )
{
  int j ;
  int tmp ;
  {
  j = 0;
  goto ldv_35352;
  ldv_35351:
  tmp = xhci_update_timeout_for_endpoint(xhci, udev, & (alt->endpoint + (unsigned long )j)->desc,
                                         state, timeout);
  if (tmp != 0) {
    return (-7);
  } else {
  }
  goto ldv_35350;
  ldv_35350:
  j = j + 1;
  ldv_35352: ;
  if ((int )alt->desc.bNumEndpoints > j) {
    goto ldv_35351;
  } else {
  }
  return (0);
}
}
static int xhci_check_intel_tier_policy(struct usb_device *udev , enum usb3_link_state state )
{
  struct usb_device *parent ;
  unsigned int num_hubs ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  if ((unsigned int )state == 2U) {
    return (0);
  } else {
  }
  parent = udev->parent;
  num_hubs = 0U;
  goto ldv_35361;
  ldv_35360:
  num_hubs = num_hubs + 1U;
  parent = parent->parent;
  ldv_35361: ;
  if ((unsigned long )parent->parent != (unsigned long )((struct usb_device *)0)) {
    goto ldv_35360;
  } else {
  }
  if (num_hubs <= 1U) {
    return (0);
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_check_intel_tier_policy";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor.format = "Disabling U1 link state for device below second-tier hub.\n";
  descriptor.lineno = 4606U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& udev->dev), "Disabling U1 link state for device below second-tier hub.\n");
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_check_intel_tier_policy";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___0.format = "Plug device into first-tier hub to decrease power consumption.\n";
  descriptor___0.lineno = 4608U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& udev->dev), "Plug device into first-tier hub to decrease power consumption.\n");
  } else {
  }
  return (-7);
}
}
static int xhci_check_tier_policy(struct xhci_hcd *xhci , struct usb_device *udev ,
                                  enum usb3_link_state state )
{
  int tmp ;
  {
  if ((xhci->quirks & 4096U) != 0U) {
    tmp = xhci_check_intel_tier_policy(udev, state);
    return (tmp);
  } else {
  }
  return (-22);
}
}
static u16 xhci_calculate_lpm_timeout(struct usb_hcd *hcd , struct usb_device *udev ,
                                      enum usb3_link_state state )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  struct usb_host_config *config ;
  char *state_name ;
  int i ;
  u16 timeout ;
  int tmp___0 ;
  int tmp___1 ;
  struct usb_driver *driver ;
  struct usb_interface *intf ;
  struct device_driver const *__mptr ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  u16 tmp___3 ;
  int tmp___4 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  timeout = 0U;
  if ((unsigned int )state == 1U) {
    state_name = (char *)"U1";
  } else
  if ((unsigned int )state == 2U) {
    state_name = (char *)"U2";
  } else {
    dev_warn((struct device const *)(& udev->dev), "Can\'t enable unknown link state %i\n",
             (unsigned int )state);
    return (timeout);
  }
  tmp___0 = xhci_check_tier_policy(xhci, udev, state);
  if (tmp___0 < 0) {
    return (timeout);
  } else {
  }
  tmp___1 = xhci_update_timeout_for_endpoint(xhci, udev, & udev->ep0.desc, state,
                                             & timeout);
  if (tmp___1 != 0) {
    return (timeout);
  } else {
  }
  config = udev->actconfig;
  if ((unsigned long )config == (unsigned long )((struct usb_host_config *)0)) {
    return (timeout);
  } else {
  }
  i = 0;
  goto ldv_35389;
  ldv_35388:
  intf = config->interface[i];
  if ((unsigned long )intf == (unsigned long )((struct usb_interface *)0)) {
    goto ldv_35383;
  } else {
  }
  if ((unsigned long )intf->dev.driver != (unsigned long )((struct device_driver *)0)) {
    __mptr = (struct device_driver const *)intf->dev.driver;
    driver = (struct usb_driver *)__mptr + 0xffffffffffffff58UL;
    if ((unsigned long )driver != (unsigned long )((struct usb_driver *)0) && (unsigned int )*((unsigned char *)driver + 296UL) != 0U) {
      descriptor.modname = "xhci_hcd";
      descriptor.function = "xhci_calculate_lpm_timeout";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
      descriptor.format = "Hub-initiated %s disabled at request of driver %s\n";
      descriptor.lineno = 4674U;
      descriptor.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___2 != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& udev->dev), "Hub-initiated %s disabled at request of driver %s\n",
                          state_name, driver->name);
      } else {
      }
      tmp___3 = xhci_get_timeout_no_hub_lpm(udev, state);
      return (tmp___3);
    } else {
    }
  } else {
  }
  if ((unsigned long )intf->cur_altsetting == (unsigned long )((struct usb_host_interface *)0)) {
    goto ldv_35383;
  } else {
  }
  tmp___4 = xhci_update_timeout_for_interface(xhci, udev, intf->cur_altsetting, state,
                                              & timeout);
  if (tmp___4 != 0) {
    return (timeout);
  } else {
  }
  ldv_35383:
  i = i + 1;
  ldv_35389: ;
  if ((int )config->desc.bNumInterfaces > i) {
    goto ldv_35388;
  } else {
  }
  return (timeout);
}
}
static int calculate_max_exit_latency(struct usb_device *udev , enum usb3_link_state state_changed ,
                                      u16 hub_encoded_timeout )
{
  unsigned long long u1_mel_us ;
  unsigned long long u2_mel_us ;
  unsigned long long mel_us ;
  bool disabling_u1 ;
  bool disabling_u2 ;
  bool enabling_u1 ;
  bool enabling_u2 ;
  {
  u1_mel_us = 0ULL;
  u2_mel_us = 0ULL;
  mel_us = 0ULL;
  disabling_u1 = (bool )((unsigned int )state_changed == 1U && (unsigned int )hub_encoded_timeout == 0U);
  disabling_u2 = (bool )((unsigned int )state_changed == 2U && (unsigned int )hub_encoded_timeout == 0U);
  enabling_u1 = (bool )((unsigned int )state_changed == 1U && (unsigned int )hub_encoded_timeout != 0U);
  enabling_u2 = (bool )((unsigned int )state_changed == 2U && (unsigned int )hub_encoded_timeout != 0U);
  if ((udev->u1_params.timeout != 0 && ! disabling_u1) || (int )enabling_u1) {
    u1_mel_us = (unsigned long long )((udev->u1_params.mel + 999U) / 1000U);
  } else {
  }
  if ((udev->u2_params.timeout != 0 && ! disabling_u2) || (int )enabling_u2) {
    u2_mel_us = (unsigned long long )((udev->u2_params.mel + 999U) / 1000U);
  } else {
  }
  if (u1_mel_us > u2_mel_us) {
    mel_us = u1_mel_us;
  } else {
    mel_us = u2_mel_us;
  }
  if (mel_us > 65535ULL) {
    dev_warn((struct device const *)(& udev->dev), "Link PM max exit latency of %lluus is too big.\n",
             mel_us);
    return (-7);
  } else {
  }
  return ((int )mel_us);
}
}
int xhci_enable_usb3_lpm_timeout(struct usb_hcd *hcd , struct usb_device *udev , enum usb3_link_state state )
{
  struct xhci_hcd *xhci ;
  u16 hub_encoded_timeout ;
  int mel ;
  int ret ;
  {
  xhci = hcd_to_xhci(hcd);
  if (((unsigned long )xhci == (unsigned long )((struct xhci_hcd *)0) || (xhci->quirks & 2048U) == 0U) || (unsigned long )xhci->devs[udev->slot_id] == (unsigned long )((struct xhci_virt_device *)0)) {
    return (0);
  } else {
  }
  hub_encoded_timeout = xhci_calculate_lpm_timeout(hcd, udev, state);
  mel = calculate_max_exit_latency(udev, state, (int )hub_encoded_timeout);
  if (mel < 0) {
    hub_encoded_timeout = 0U;
    mel = 0;
  } else {
  }
  ret = xhci_change_max_exit_latency(xhci, udev, (int )((u16 )mel));
  if (ret != 0) {
    return (ret);
  } else {
  }
  return ((int )hub_encoded_timeout);
}
}
int xhci_disable_usb3_lpm_timeout(struct usb_hcd *hcd , struct usb_device *udev ,
                                  enum usb3_link_state state )
{
  struct xhci_hcd *xhci ;
  u16 mel ;
  int ret ;
  int tmp ;
  {
  xhci = hcd_to_xhci(hcd);
  if (((unsigned long )xhci == (unsigned long )((struct xhci_hcd *)0) || (xhci->quirks & 2048U) == 0U) || (unsigned long )xhci->devs[udev->slot_id] == (unsigned long )((struct xhci_virt_device *)0)) {
    return (0);
  } else {
  }
  tmp = calculate_max_exit_latency(udev, state, 0);
  mel = (u16 )tmp;
  ret = xhci_change_max_exit_latency(xhci, udev, (int )mel);
  if (ret != 0) {
    return (ret);
  } else {
  }
  return (0);
}
}
int xhci_update_hub_device(struct usb_hcd *hcd , struct usb_device *hdev , struct usb_tt *tt ,
                           gfp_t mem_flags )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  struct xhci_virt_device *vdev ;
  struct xhci_command *config_cmd ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  struct xhci_slot_ctx *slot_ctx ;
  unsigned long flags ;
  unsigned int think_time ;
  int ret ;
  struct usb_hcd *tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct usb_hcd *tmp___3 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  int tmp___6 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___13 ;
  long tmp___14 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___15 ;
  long tmp___16 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  if ((unsigned long )hdev->parent == (unsigned long )((struct usb_device *)0)) {
    return (0);
  } else {
  }
  vdev = xhci->devs[hdev->slot_id];
  if ((unsigned long )vdev == (unsigned long )((struct xhci_virt_device *)0)) {
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "Cannot update hub desc for unknown device.\n");
    return (-22);
  } else {
  }
  config_cmd = xhci_alloc_command(xhci, 1, 1, mem_flags);
  if ((unsigned long )config_cmd == (unsigned long )((struct xhci_command *)0)) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_update_hub_device";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor.format = "Could not allocate xHCI command structure.\n";
    descriptor.lineno = 4829U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                        "Could not allocate xHCI command structure.\n");
    } else {
    }
    return (-12);
  } else {
  }
  ctrl_ctx = xhci_get_input_control_ctx(xhci, config_cmd->in_ctx);
  if ((unsigned long )ctrl_ctx == (unsigned long )((struct xhci_input_control_ctx *)0)) {
    tmp___3 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___3->self.controller, "%s: Could not get input context, bad type.\n",
             "xhci_update_hub_device");
    xhci_free_command(xhci, config_cmd);
    return (-12);
  } else {
  }
  ldv_spin_lock();
  if ((unsigned int )hdev->speed == 3U) {
    tmp___6 = xhci_alloc_tt_info(xhci, vdev, hdev, tt, 32U);
    if (tmp___6 != 0) {
      descriptor___0.modname = "xhci_hcd";
      descriptor___0.function = "xhci_update_hub_device";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
      descriptor___0.format = "Could not allocate xHCI TT structure.\n";
      descriptor___0.lineno = 4843U;
      descriptor___0.flags = 0U;
      tmp___5 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___5 != 0L) {
        tmp___4 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___4->self.controller,
                          "Could not allocate xHCI TT structure.\n");
      } else {
      }
      xhci_free_command(xhci, config_cmd);
      spin_unlock_irqrestore(& xhci->lock, flags);
      return (-12);
    } else {
    }
  } else {
  }
  xhci_slot_copy(xhci, config_cmd->in_ctx, vdev->out_ctx);
  ctrl_ctx->add_flags = ctrl_ctx->add_flags | 1U;
  slot_ctx = xhci_get_slot_ctx(xhci, config_cmd->in_ctx);
  slot_ctx->dev_info = slot_ctx->dev_info | 67108864U;
  if (tt->multi != 0) {
    slot_ctx->dev_info = slot_ctx->dev_info | 33554432U;
  } else {
  }
  if ((unsigned int )xhci->hci_version > 149U) {
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_update_hub_device";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor___1.format = "xHCI version %x needs hub TT think time and number of ports\n";
    descriptor___1.lineno = 4858U;
    descriptor___1.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      tmp___7 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___7->self.controller,
                        "xHCI version %x needs hub TT think time and number of ports\n",
                        (unsigned int )xhci->hci_version);
    } else {
    }
    slot_ctx->dev_info2 = slot_ctx->dev_info2 | (__le32 )(hdev->maxchild << 24);
    think_time = tt->think_time;
    if (think_time != 0U) {
      think_time = think_time / 666U - 1U;
    } else {
    }
    if ((unsigned int )xhci->hci_version <= 255U || (unsigned int )hdev->speed == 3U) {
      slot_ctx->tt_info = slot_ctx->tt_info | ((think_time & 3U) << 16);
    } else {
    }
  } else {
    descriptor___2.modname = "xhci_hcd";
    descriptor___2.function = "xhci_update_hub_device";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor___2.format = "xHCI version %x doesn\'t need hub TT think time or number of ports\n";
    descriptor___2.lineno = 4876U;
    descriptor___2.flags = 0U;
    tmp___10 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___10 != 0L) {
      tmp___9 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___9->self.controller,
                        "xHCI version %x doesn\'t need hub TT think time or number of ports\n",
                        (unsigned int )xhci->hci_version);
    } else {
    }
  }
  slot_ctx->dev_state = 0U;
  spin_unlock_irqrestore(& xhci->lock, flags);
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_update_hub_device";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___3.format = "Set up %s for hub device.\n";
  descriptor___3.lineno = 4883U;
  descriptor___3.flags = 0U;
  tmp___12 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    tmp___11 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___11->self.controller,
                      "Set up %s for hub device.\n", (unsigned int )xhci->hci_version > 149U ? (char *)"configure endpoint" : (char *)"evaluate context");
  } else {
  }
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_update_hub_device";
  descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___4.format = "Slot %u Input Context:\n";
  descriptor___4.lineno = 4884U;
  descriptor___4.flags = 0U;
  tmp___14 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___14 != 0L) {
    tmp___13 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___13->self.controller,
                      "Slot %u Input Context:\n", hdev->slot_id);
  } else {
  }
  xhci_dbg_ctx(xhci, config_cmd->in_ctx, 0U);
  if ((unsigned int )xhci->hci_version > 149U) {
    ret = xhci_configure_endpoint(xhci, hdev, config_cmd, 0, 0);
  } else {
    ret = xhci_configure_endpoint(xhci, hdev, config_cmd, 1, 0);
  }
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "xhci_update_hub_device";
  descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___5.format = "Slot %u Output Context:\n";
  descriptor___5.lineno = 4897U;
  descriptor___5.flags = 0U;
  tmp___16 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___16 != 0L) {
    tmp___15 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___15->self.controller,
                      "Slot %u Output Context:\n", hdev->slot_id);
  } else {
  }
  xhci_dbg_ctx(xhci, vdev->out_ctx, 0U);
  xhci_free_command(xhci, config_cmd);
  return (ret);
}
}
int xhci_get_frame(struct usb_hcd *hcd )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  unsigned int tmp___0 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  tmp___0 = readl((void const volatile *)(& (xhci->run_regs)->microframe_index));
  return ((int )(tmp___0 >> 3));
}
}
int xhci_gen_setup(struct usb_hcd *hcd , void (*get_quirks)(struct device * , struct xhci_hcd * ) )
{
  struct xhci_hcd *xhci ;
  struct device *dev ;
  int retval ;
  void *tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  int tmp___9 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___10 ;
  long tmp___11 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___12 ;
  long tmp___13 ;
  {
  dev = hcd->self.controller;
  hcd->self.sg_tablesize = 4294967295U;
  hcd->self.no_sg_constraint = 1U;
  hcd->self.no_stop_on_short = 1U;
  tmp___0 = usb_hcd_is_primary_hcd(hcd);
  if (tmp___0 != 0) {
    tmp = kzalloc(9448UL, 208U);
    xhci = (struct xhci_hcd *)tmp;
    if ((unsigned long )xhci == (unsigned long )((struct xhci_hcd *)0)) {
      return (-12);
    } else {
    }
    *((struct xhci_hcd **)(& hcd->hcd_priv)) = xhci;
    xhci->main_hcd = hcd;
    hcd->speed = 32;
    (hcd->self.root_hub)->speed = 3;
    hcd->has_tt = 1U;
  } else {
    return (0);
  }
  xhci->cap_regs = (struct xhci_cap_regs *)hcd->regs;
  tmp___1 = readl((void const volatile *)(& (xhci->cap_regs)->hc_capbase));
  xhci->op_regs = (struct xhci_op_regs *)(hcd->regs + ((unsigned long )tmp___1 & 255UL));
  tmp___2 = readl((void const volatile *)(& (xhci->cap_regs)->run_regs_off));
  xhci->run_regs = (struct xhci_run_regs *)(hcd->regs + ((unsigned long )tmp___2 & 4294967264UL));
  xhci->hcs_params1 = readl((void const volatile *)(& (xhci->cap_regs)->hcs_params1));
  xhci->hcs_params2 = readl((void const volatile *)(& (xhci->cap_regs)->hcs_params2));
  xhci->hcs_params3 = readl((void const volatile *)(& (xhci->cap_regs)->hcs_params3));
  xhci->hcc_params = readl((void const volatile *)(& (xhci->cap_regs)->hc_capbase));
  xhci->hci_version = (u16 )(xhci->hcc_params >> 16);
  xhci->hcc_params = readl((void const volatile *)(& (xhci->cap_regs)->hcc_params));
  xhci_print_registers(xhci);
  xhci->quirks = quirks;
  (*get_quirks)(dev, xhci);
  if ((unsigned int )xhci->hci_version > 150U) {
    xhci->quirks = xhci->quirks | 16U;
  } else {
  }
  retval = xhci_halt(xhci);
  if (retval != 0) {
    goto error;
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_gen_setup";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor.format = "Resetting HCD\n";
  descriptor.lineno = 4980U;
  descriptor.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___3->self.controller,
                      "Resetting HCD\n");
  } else {
  }
  retval = xhci_reset(xhci);
  if (retval != 0) {
    goto error;
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_gen_setup";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___0.format = "Reset complete\n";
  descriptor___0.lineno = 4985U;
  descriptor___0.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___5->self.controller,
                      "Reset complete\n");
  } else {
  }
  if ((int )xhci->hcc_params & 1) {
    tmp___9 = dma_set_mask(dev, 0xffffffffffffffffULL);
    if (tmp___9 == 0) {
      descriptor___1.modname = "xhci_hcd";
      descriptor___1.function = "xhci_gen_setup";
      descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
      descriptor___1.format = "Enabling 64-bit DMA addresses.\n";
      descriptor___1.lineno = 4991U;
      descriptor___1.flags = 0U;
      tmp___8 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___8 != 0L) {
        tmp___7 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___7->self.controller,
                          "Enabling 64-bit DMA addresses.\n");
      } else {
      }
      dma_set_coherent_mask(dev, 0xffffffffffffffffULL);
    } else {
    }
  } else {
  }
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_gen_setup";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___2.format = "Calling HCD init\n";
  descriptor___2.lineno = 4995U;
  descriptor___2.flags = 0U;
  tmp___11 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___11 != 0L) {
    tmp___10 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___10->self.controller,
                      "Calling HCD init\n");
  } else {
  }
  retval = xhci_init(hcd);
  if (retval != 0) {
    goto error;
  } else {
  }
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_gen_setup";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
  descriptor___3.format = "Called HCD init\n";
  descriptor___3.lineno = 5000U;
  descriptor___3.flags = 0U;
  tmp___13 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___13 != 0L) {
    tmp___12 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___12->self.controller,
                      "Called HCD init\n");
  } else {
  }
  return (0);
  error:
  kfree((void const *)xhci);
  return (retval);
}
}
static int xhci_hcd_init(void)
{
  int retval ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  retval = xhci_register_pci();
  if (retval < 0) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_hcd_init";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor.format = "Problem registering PCI driver.\n";
    descriptor.lineno = 5017U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "Problem registering PCI driver.\n");
    } else {
    }
    return (retval);
  } else {
  }
  retval = xhci_register_plat();
  if (retval < 0) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_hcd_init";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci.o.c.prepared";
    descriptor___0.format = "Problem registering platform driver.\n";
    descriptor___0.lineno = 5022U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "Problem registering platform driver.\n");
    } else {
    }
    goto unreg_pci;
  } else {
  }
  return (0);
  unreg_pci:
  xhci_unregister_pci();
  return (retval);
}
}
static void xhci_hcd_cleanup(void)
{
  {
  xhci_unregister_pci();
  xhci_unregister_plat();
  return;
}
}
extern void ldv_initialize(void) ;
extern void ldv_check_final_state(void) ;
int ldv_retval_2 ;
int ldv_irq_3(int state , int line , void *data )
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
      irq_retval = usb_hcd_irq(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_35496;
    default:
    ldv_stop();
    }
    ldv_35496: ;
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
  goto ldv_35502;
  case 1:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_1, ldv_irq_line_2_1, ldv_irq_data_2_1);
  goto ldv_35502;
  case 2:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_2, ldv_irq_line_2_2, ldv_irq_data_2_2);
  goto ldv_35502;
  case 3:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_3, ldv_irq_line_2_3, ldv_irq_data_2_3);
  goto ldv_35502;
  default:
  ldv_stop();
  }
  ldv_35502: ;
  return;
}
}
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
void activate_suitable_irq_3(int line , void *data )
{
  {
  if (ldv_irq_3_0 == 0) {
    ldv_irq_line_3_0 = line;
    ldv_irq_data_3_0 = data;
    ldv_irq_3_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_3_1 == 0) {
    ldv_irq_line_3_1 = line;
    ldv_irq_data_3_1 = data;
    ldv_irq_3_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_3_2 == 0) {
    ldv_irq_line_3_2 = line;
    ldv_irq_data_3_2 = data;
    ldv_irq_3_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_3_3 == 0) {
    ldv_irq_line_3_3 = line;
    ldv_irq_data_3_3 = data;
    ldv_irq_3_3 = 1;
    return;
  } else {
  }
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
void activate_pending_timer_4(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_4 == (unsigned long )timer) {
    if (ldv_timer_state_4 == 2 || pending_flag != 0) {
      ldv_timer_list_4 = timer;
      ldv_timer_list_4->data = data;
      ldv_timer_state_4 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_4(timer);
  ldv_timer_list_4->data = data;
  return;
}
}
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& xhci_msi_irq)) {
    return (1);
  } else {
  }
  return (0);
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
  goto ldv_35533;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_35533;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_35533;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_35533;
  default:
  ldv_stop();
  }
  ldv_35533: ;
  return;
}
}
void choose_timer_4(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_4 = 2;
  return;
}
}
int reg_check_2(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& xhci_msi_irq)) {
    return (1);
  } else {
  }
  return (0);
}
}
void disable_suitable_irq_3(int line , void *data )
{
  {
  if (ldv_irq_3_0 != 0 && line == ldv_irq_line_3_0) {
    ldv_irq_3_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_3_1 != 0 && line == ldv_irq_line_3_1) {
    ldv_irq_3_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_3_2 != 0 && line == ldv_irq_line_3_2) {
    ldv_irq_3_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_3_3 != 0 && line == ldv_irq_line_3_3) {
    ldv_irq_3_3 = 0;
    return;
  } else {
  }
  return;
}
}
void disable_suitable_timer_4(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_4) {
    ldv_timer_state_4 = 0;
    return;
  } else {
  }
  return;
}
}
int reg_check_3(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& usb_hcd_irq)) {
    return (1);
  } else {
  }
  return (0);
}
}
int reg_timer_4(struct timer_list *timer )
{
  {
  ldv_timer_list_4 = timer;
  ldv_timer_state_4 = 1;
  return (0);
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
      irq_retval = xhci_msi_irq(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_35572;
    default:
    ldv_stop();
    }
    ldv_35572: ;
  } else {
  }
  return (state);
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
void choose_interrupt_3(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_3_0 = ldv_irq_3(ldv_irq_3_0, ldv_irq_line_3_0, ldv_irq_data_3_0);
  goto ldv_35584;
  case 1:
  ldv_irq_3_0 = ldv_irq_3(ldv_irq_3_1, ldv_irq_line_3_1, ldv_irq_data_3_1);
  goto ldv_35584;
  case 2:
  ldv_irq_3_0 = ldv_irq_3(ldv_irq_3_2, ldv_irq_line_3_2, ldv_irq_data_3_2);
  goto ldv_35584;
  case 3:
  ldv_irq_3_0 = ldv_irq_3(ldv_irq_3_3, ldv_irq_line_3_3, ldv_irq_data_3_3);
  goto ldv_35584;
  default:
  ldv_stop();
  }
  ldv_35584: ;
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
      irq_retval = xhci_msi_irq(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_35596;
    default:
    ldv_stop();
    }
    ldv_35596: ;
  } else {
  }
  return (state);
}
}
void ldv_main_exported_16(void) ;
void ldv_main_exported_13(void) ;
void ldv_main_exported_17(void) ;
void ldv_main_exported_12(void) ;
void ldv_main_exported_15(void) ;
void ldv_main_exported_14(void) ;
void ldv_main_exported_11(void) ;
void ldv_main_exported_10(void) ;
void ldv_main_exported_8(void) ;
void ldv_main_exported_7(void) ;
void ldv_main_exported_9(void) ;
int main(void)
{
  int tmp ;
  int tmp___0 ;
  {
  ldv_initialize();
  ldv_state_variable_11 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_17 = 0;
  ldv_state_variable_2 = 1;
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_16 = 0;
  ldv_state_variable_13 = 0;
  ldv_state_variable_6 = 1;
  ldv_state_variable_3 = 1;
  ldv_state_variable_9 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_15 = 0;
  ldv_state_variable_8 = 0;
  ldv_state_variable_4 = 1;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 1;
  ldv_35650:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_11 != 0) {
    ldv_main_exported_11();
  } else {
  }
  goto ldv_35626;
  case 1: ;
  if (ldv_state_variable_7 != 0) {
    ldv_main_exported_7();
  } else {
  }
  goto ldv_35626;
  case 2: ;
  if (ldv_state_variable_17 != 0) {
    ldv_main_exported_17();
  } else {
  }
  goto ldv_35626;
  case 3: ;
  if (ldv_state_variable_2 != 0) {
    choose_interrupt_2();
  } else {
  }
  goto ldv_35626;
  case 4: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_35626;
  case 5: ;
  if (ldv_state_variable_0 != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      xhci_hcd_cleanup();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_35634;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_2 = xhci_hcd_init();
      if (ldv_retval_2 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_2 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_13 = 1;
        ldv_initialize_ftrace_event_class_13();
        ldv_state_variable_10 = 1;
        ldv_initialize_pci_driver_10();
        ldv_state_variable_16 = 1;
        ldv_state_variable_8 = 1;
        ldv_dev_pm_ops_8();
        ldv_state_variable_14 = 1;
        ldv_initialize_ftrace_event_class_14();
        ldv_state_variable_15 = 1;
        ldv_state_variable_12 = 1;
        ldv_initialize_ftrace_event_class_12();
        ldv_state_variable_17 = 1;
        ldv_state_variable_9 = 1;
        ldv_initialize_hc_driver_9();
        ldv_state_variable_11 = 1;
        ldv_initialize_hc_driver_11();
      } else {
      }
    } else {
    }
    goto ldv_35634;
    default:
    ldv_stop();
    }
    ldv_35634: ;
  } else {
  }
  goto ldv_35626;
  case 6: ;
  if (ldv_state_variable_16 != 0) {
    ldv_main_exported_16();
  } else {
  }
  goto ldv_35626;
  case 7: ;
  if (ldv_state_variable_13 != 0) {
    ldv_main_exported_13();
  } else {
  }
  goto ldv_35626;
  case 8: ;
  goto ldv_35626;
  case 9: ;
  if (ldv_state_variable_3 != 0) {
    choose_interrupt_3();
  } else {
  }
  goto ldv_35626;
  case 10: ;
  if (ldv_state_variable_9 != 0) {
    ldv_main_exported_9();
  } else {
  }
  goto ldv_35626;
  case 11: ;
  if (ldv_state_variable_12 != 0) {
    ldv_main_exported_12();
  } else {
  }
  goto ldv_35626;
  case 12: ;
  if (ldv_state_variable_14 != 0) {
    ldv_main_exported_14();
  } else {
  }
  goto ldv_35626;
  case 13: ;
  if (ldv_state_variable_15 != 0) {
    ldv_main_exported_15();
  } else {
  }
  goto ldv_35626;
  case 14: ;
  if (ldv_state_variable_8 != 0) {
    ldv_main_exported_8();
  } else {
  }
  goto ldv_35626;
  case 15: ;
  if (ldv_state_variable_4 != 0) {
    choose_timer_4(ldv_timer_list_4);
  } else {
  }
  goto ldv_35626;
  case 16: ;
  if (ldv_state_variable_10 != 0) {
    ldv_main_exported_10();
  } else {
  }
  goto ldv_35626;
  case 17: ;
  goto ldv_35626;
  default:
  ldv_stop();
  }
  ldv_35626: ;
  goto ldv_35650;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_irq_4(lock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irq_7(lock);
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
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return ((void *)0);
}
}
void ldv_free_irq_20(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
__inline static int ldv_request_irq_21(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_2((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_free_irq_22(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
__inline static int ldv_request_irq_23(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_2((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_free_irq_24(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
__inline static int ldv_request_irq_25(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_2((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
int ldv_mod_timer_26(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_6(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_27(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_6(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_28(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_6(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_29(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_6(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_30(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_6(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_31(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_6(ldv_func_arg1);
  return (ldv_func_res);
}
}
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
extern void list_del(struct list_head * ) ;
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
int ldv_del_timer_sync_68(struct timer_list *ldv_func_arg1 ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void choose_timer_5(struct timer_list *timer ) ;
void choose_timer_6(struct timer_list *timer ) ;
void activate_pending_timer_5(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void disable_suitable_timer_5(struct timer_list *timer ) ;
int reg_timer_5(struct timer_list *timer ) ;
extern int radix_tree_insert(struct radix_tree_root * , unsigned long , void * ) ;
extern void *radix_tree_lookup(struct radix_tree_root * , unsigned long ) ;
extern void *radix_tree_delete(struct radix_tree_root * , unsigned long ) ;
extern int radix_tree_maybe_preload(gfp_t ) ;
extern struct dma_pool *dma_pool_create(char const * , struct device * , size_t ,
                                        size_t , size_t ) ;
extern void dma_pool_destroy(struct dma_pool * ) ;
extern void *dma_pool_alloc(struct dma_pool * , gfp_t , dma_addr_t * ) ;
void *ldv_dma_pool_alloc_64(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 ) ;
void *ldv_dma_pool_alloc_65(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 ) ;
void *ldv_dma_pool_alloc_66(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 ) ;
void *ldv_dma_pool_alloc_67(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 ) ;
extern void dma_pool_free(struct dma_pool * , void * , dma_addr_t ) ;
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
}
}
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
__inline static int xhci_link_trb_quirk(struct xhci_hcd *xhci )
{
  {
  return ((int )xhci->quirks & 1);
}
}
void xhci_dbg_regs(struct xhci_hcd *xhci ) ;
void xhci_print_run_regs(struct xhci_hcd *xhci ) ;
int xhci_ring_expansion(struct xhci_hcd *xhci , struct xhci_ring *ring , unsigned int num_trbs ,
                        gfp_t flags ) ;
struct xhci_ring *xhci_dma_to_transfer_ring(struct xhci_virt_ep *ep , u64 address ) ;
struct xhci_ring *xhci_stream_id_to_ring(struct xhci_virt_device *dev , unsigned int ep_index ,
                                         unsigned int stream_id ) ;
struct xhci_segment *trb_in_td(struct xhci_segment *start_seg , union xhci_trb *start_trb ,
                               union xhci_trb *end_trb , dma_addr_t suspect_dma ) ;
void xhci_stop_endpoint_command_watchdog(unsigned long arg ) ;
void xhci_handle_command_timeout(unsigned long data ) ;
void xhci_cleanup_command_queue(struct xhci_hcd *xhci ) ;
__inline static void trace_xhci_dbg_context_change___0(struct va_format *vaf )
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
  tmp___1 = static_key_false(& __tracepoint_xhci_dbg_context_change.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_xhci_dbg_context_change.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/usb/host/xhci-trace.h",
                               43, "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_33797:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct va_format * ))it_func))(__data, vaf);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_33797;
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
__inline static void trace_xhci_dbg_init___0(struct va_format *vaf )
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
  tmp___1 = static_key_false(& __tracepoint_xhci_dbg_init.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_xhci_dbg_init.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/usb/host/xhci-trace.h",
                               63, "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_33933:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct va_format * ))it_func))(__data, vaf);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_33933;
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
struct tracepoint __tracepoint_xhci_dbg_ring_expansion ;
__inline static void trace_xhci_dbg_ring_expansion(struct va_format *vaf )
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
  tmp___1 = static_key_false(& __tracepoint_xhci_dbg_ring_expansion.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_xhci_dbg_ring_expansion.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/usb/host/xhci-trace.h",
                               68, "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_33967:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct va_format * ))it_func))(__data, vaf);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_33967;
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
static struct xhci_segment *xhci_segment_alloc(struct xhci_hcd *xhci , unsigned int cycle_state ,
                                               gfp_t flags )
{
  struct xhci_segment *seg ;
  dma_addr_t dma ;
  int i ;
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = kzalloc(24UL, flags);
  seg = (struct xhci_segment *)tmp;
  if ((unsigned long )seg == (unsigned long )((struct xhci_segment *)0)) {
    return ((struct xhci_segment *)0);
  } else {
  }
  tmp___0 = ldv_dma_pool_alloc_64(xhci->segment_pool, flags, & dma);
  seg->trbs = (union xhci_trb *)tmp___0;
  if ((unsigned long )seg->trbs == (unsigned long )((union xhci_trb *)0)) {
    kfree((void const *)seg);
    return ((struct xhci_segment *)0);
  } else {
  }
  memset((void *)seg->trbs, 0, 1024UL);
  if (cycle_state == 0U) {
    i = 0;
    goto ldv_34081;
    ldv_34080:
    (seg->trbs + (unsigned long )i)->link.control = (seg->trbs + (unsigned long )i)->link.control | 1U;
    i = i + 1;
    ldv_34081: ;
    if (i <= 63) {
      goto ldv_34080;
    } else {
    }
  } else {
  }
  seg->dma = dma;
  seg->next = (struct xhci_segment *)0;
  return (seg);
}
}
static void xhci_segment_free(struct xhci_hcd *xhci , struct xhci_segment *seg )
{
  {
  if ((unsigned long )seg->trbs != (unsigned long )((union xhci_trb *)0)) {
    dma_pool_free(xhci->segment_pool, (void *)seg->trbs, seg->dma);
    seg->trbs = (union xhci_trb *)0;
  } else {
  }
  kfree((void const *)seg);
  return;
}
}
static void xhci_free_segments_for_ring(struct xhci_hcd *xhci , struct xhci_segment *first )
{
  struct xhci_segment *seg ;
  struct xhci_segment *next ;
  {
  seg = first->next;
  goto ldv_34094;
  ldv_34093:
  next = seg->next;
  xhci_segment_free(xhci, seg);
  seg = next;
  ldv_34094: ;
  if ((unsigned long )seg != (unsigned long )first) {
    goto ldv_34093;
  } else {
  }
  xhci_segment_free(xhci, first);
  return;
}
}
static void xhci_link_segments(struct xhci_hcd *xhci , struct xhci_segment *prev ,
                               struct xhci_segment *next , enum xhci_ring_type type )
{
  u32 val ;
  int tmp ;
  {
  if ((unsigned long )prev == (unsigned long )((struct xhci_segment *)0) || (unsigned long )next == (unsigned long )((struct xhci_segment *)0)) {
    return;
  } else {
  }
  prev->next = next;
  if ((unsigned int )type != 6U) {
    (prev->trbs + 63UL)->link.segment_ptr = next->dma;
    val = (prev->trbs + 63UL)->link.control;
    val = val & 4294902783U;
    val = val | 6144U;
    tmp = xhci_link_trb_quirk(xhci);
    if (tmp != 0 || ((unsigned int )type == 1U && (xhci->quirks & 512U) != 0U)) {
      val = val | 16U;
    } else {
    }
    (prev->trbs + 63UL)->link.control = val;
  } else {
  }
  return;
}
}
static void xhci_link_rings(struct xhci_hcd *xhci , struct xhci_ring *ring , struct xhci_segment *first ,
                            struct xhci_segment *last , unsigned int num_segs )
{
  struct xhci_segment *next ;
  {
  if (((unsigned long )ring == (unsigned long )((struct xhci_ring *)0) || (unsigned long )first == (unsigned long )((struct xhci_segment *)0)) || (unsigned long )last == (unsigned long )((struct xhci_segment *)0)) {
    return;
  } else {
  }
  next = (ring->enq_seg)->next;
  xhci_link_segments(xhci, ring->enq_seg, first, ring->type);
  xhci_link_segments(xhci, last, next, ring->type);
  ring->num_segs = ring->num_segs + num_segs;
  ring->num_trbs_free = ring->num_trbs_free + num_segs * 63U;
  if ((unsigned int )ring->type != 6U && (unsigned long )ring->enq_seg == (unsigned long )ring->last_seg) {
    ((ring->last_seg)->trbs + 63UL)->link.control = ((ring->last_seg)->trbs + 63UL)->link.control & 4294967293U;
    (last->trbs + 63UL)->link.control = (last->trbs + 63UL)->link.control | 2U;
    ring->last_seg = last;
  } else {
  }
  return;
}
}
static int xhci_insert_segment_mapping(struct radix_tree_root *trb_address_map , struct xhci_ring *ring ,
                                       struct xhci_segment *seg , gfp_t mem_flags )
{
  unsigned long key ;
  int ret ;
  void *tmp ;
  {
  key = (unsigned long )(seg->dma >> 10);
  tmp = radix_tree_lookup(trb_address_map, key);
  if ((unsigned long )tmp != (unsigned long )((void *)0)) {
    return (0);
  } else {
  }
  ret = radix_tree_maybe_preload(mem_flags);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = radix_tree_insert(trb_address_map, key, (void *)ring);
  rcu_read_unlock_sched_notrace();
  return (ret);
}
}
static void xhci_remove_segment_mapping(struct radix_tree_root *trb_address_map ,
                                        struct xhci_segment *seg )
{
  unsigned long key ;
  void *tmp ;
  {
  key = (unsigned long )(seg->dma >> 10);
  tmp = radix_tree_lookup(trb_address_map, key);
  if ((unsigned long )tmp != (unsigned long )((void *)0)) {
    radix_tree_delete(trb_address_map, key);
  } else {
  }
  return;
}
}
static int xhci_update_stream_segment_mapping(struct radix_tree_root *trb_address_map ,
                                              struct xhci_ring *ring , struct xhci_segment *first_seg ,
                                              struct xhci_segment *last_seg , gfp_t mem_flags )
{
  struct xhci_segment *seg ;
  struct xhci_segment *failed_seg ;
  int ret ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  __ret_warn_once = (unsigned long )trb_address_map == (unsigned long )((struct radix_tree_root *)0);
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-mem.o.c.prepared",
                         360);
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
    return (0);
  } else {
  }
  seg = first_seg;
  ldv_34140:
  ret = xhci_insert_segment_mapping(trb_address_map, ring, seg, mem_flags);
  if (ret != 0) {
    goto remove_streams;
  } else {
  }
  if ((unsigned long )seg == (unsigned long )last_seg) {
    return (0);
  } else {
  }
  seg = seg->next;
  if ((unsigned long )seg != (unsigned long )first_seg) {
    goto ldv_34140;
  } else {
  }
  return (0);
  remove_streams:
  failed_seg = seg;
  seg = first_seg;
  ldv_34142:
  xhci_remove_segment_mapping(trb_address_map, seg);
  if ((unsigned long )seg == (unsigned long )failed_seg) {
    return (ret);
  } else {
  }
  seg = seg->next;
  if ((unsigned long )seg != (unsigned long )first_seg) {
    goto ldv_34142;
  } else {
  }
  return (ret);
}
}
static void xhci_remove_stream_mapping(struct xhci_ring *ring )
{
  struct xhci_segment *seg ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  __ret_warn_once = (unsigned long )ring->trb_address_map == (unsigned long )((struct radix_tree_root *)0);
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-mem.o.c.prepared",
                         393);
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
  seg = ring->first_seg;
  ldv_34153:
  xhci_remove_segment_mapping(ring->trb_address_map, seg);
  seg = seg->next;
  if ((unsigned long )ring->first_seg != (unsigned long )seg) {
    goto ldv_34153;
  } else {
  }
  return;
}
}
static int xhci_update_stream_mapping(struct xhci_ring *ring , gfp_t mem_flags )
{
  int tmp ;
  {
  tmp = xhci_update_stream_segment_mapping(ring->trb_address_map, ring, ring->first_seg,
                                           ring->last_seg, mem_flags);
  return (tmp);
}
}
void xhci_ring_free(struct xhci_hcd *xhci , struct xhci_ring *ring )
{
  {
  if ((unsigned long )ring == (unsigned long )((struct xhci_ring *)0)) {
    return;
  } else {
  }
  if ((unsigned long )ring->first_seg != (unsigned long )((struct xhci_segment *)0)) {
    if ((unsigned int )ring->type == 4U) {
      xhci_remove_stream_mapping(ring);
    } else {
    }
    xhci_free_segments_for_ring(xhci, ring->first_seg);
  } else {
  }
  kfree((void const *)ring);
  return;
}
}
static void xhci_initialize_ring_info(struct xhci_ring *ring , unsigned int cycle_state )
{
  {
  ring->enqueue = (ring->first_seg)->trbs;
  ring->enq_seg = ring->first_seg;
  ring->dequeue = ring->enqueue;
  ring->deq_seg = ring->first_seg;
  ring->cycle_state = cycle_state;
  ring->enq_updates = 0U;
  ring->deq_updates = 0U;
  ring->num_trbs_free = ring->num_segs * 63U - 1U;
  return;
}
}
static int xhci_alloc_segments_for_ring(struct xhci_hcd *xhci , struct xhci_segment **first ,
                                        struct xhci_segment **last , unsigned int num_segs ,
                                        unsigned int cycle_state , enum xhci_ring_type type ,
                                        gfp_t flags )
{
  struct xhci_segment *prev ;
  struct xhci_segment *next ;
  {
  prev = xhci_segment_alloc(xhci, cycle_state, flags);
  if ((unsigned long )prev == (unsigned long )((struct xhci_segment *)0)) {
    return (-12);
  } else {
  }
  num_segs = num_segs - 1U;
  *first = prev;
  goto ldv_34182;
  ldv_34181:
  next = xhci_segment_alloc(xhci, cycle_state, flags);
  if ((unsigned long )next == (unsigned long )((struct xhci_segment *)0)) {
    prev = *first;
    goto ldv_34179;
    ldv_34178:
    next = prev->next;
    xhci_segment_free(xhci, prev);
    prev = next;
    ldv_34179: ;
    if ((unsigned long )prev != (unsigned long )((struct xhci_segment *)0)) {
      goto ldv_34178;
    } else {
    }
    return (-12);
  } else {
  }
  xhci_link_segments(xhci, prev, next, type);
  prev = next;
  num_segs = num_segs - 1U;
  ldv_34182: ;
  if (num_segs != 0U) {
    goto ldv_34181;
  } else {
  }
  xhci_link_segments(xhci, prev, *first, type);
  *last = prev;
  return (0);
}
}
static struct xhci_ring *xhci_ring_alloc(struct xhci_hcd *xhci , unsigned int num_segs ,
                                         unsigned int cycle_state , enum xhci_ring_type type ,
                                         gfp_t flags )
{
  struct xhci_ring *ring ;
  int ret ;
  void *tmp ;
  {
  tmp = kzalloc(120UL, flags);
  ring = (struct xhci_ring *)tmp;
  if ((unsigned long )ring == (unsigned long )((struct xhci_ring *)0)) {
    return ((struct xhci_ring *)0);
  } else {
  }
  ring->num_segs = num_segs;
  INIT_LIST_HEAD(& ring->td_list);
  ring->type = type;
  if (num_segs == 0U) {
    return (ring);
  } else {
  }
  ret = xhci_alloc_segments_for_ring(xhci, & ring->first_seg, & ring->last_seg, num_segs,
                                     cycle_state, type, flags);
  if (ret != 0) {
    goto fail;
  } else {
  }
  if ((unsigned int )type != 6U) {
    ((ring->last_seg)->trbs + 63UL)->link.control = ((ring->last_seg)->trbs + 63UL)->link.control | 2U;
  } else {
  }
  xhci_initialize_ring_info(ring, cycle_state);
  return (ring);
  fail:
  kfree((void const *)ring);
  return ((struct xhci_ring *)0);
}
}
void xhci_free_or_cache_endpoint_ring(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                                      unsigned int ep_index )
{
  int rings_cached ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  rings_cached = virt_dev->num_rings_cached;
  if (rings_cached <= 30) {
    *(virt_dev->ring_cache + (unsigned long )rings_cached) = virt_dev->eps[ep_index].ring;
    virt_dev->num_rings_cached = virt_dev->num_rings_cached + 1;
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_free_or_cache_endpoint_ring";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-mem.o.c.prepared";
    descriptor.format = "Cached old ring, %d ring%s cached\n";
    descriptor.lineno = 546U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Cached old ring, %d ring%s cached\n", virt_dev->num_rings_cached,
                        virt_dev->num_rings_cached > 1 ? (char *)"s" : (char *)"");
    } else {
    }
  } else {
    xhci_ring_free(xhci, virt_dev->eps[ep_index].ring);
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_free_or_cache_endpoint_ring";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-mem.o.c.prepared";
    descriptor___0.format = "Ring cache full (%d rings), freeing ring\n";
    descriptor___0.lineno = 551U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "Ring cache full (%d rings), freeing ring\n", virt_dev->num_rings_cached);
    } else {
    }
  }
  virt_dev->eps[ep_index].ring = (struct xhci_ring *)0;
  return;
}
}
static void xhci_reinit_cached_ring(struct xhci_hcd *xhci , struct xhci_ring *ring ,
                                    unsigned int cycle_state , enum xhci_ring_type type )
{
  struct xhci_segment *seg ;
  int i ;
  {
  seg = ring->first_seg;
  ldv_34214:
  memset((void *)seg->trbs, 0, 1024UL);
  if (cycle_state == 0U) {
    i = 0;
    goto ldv_34212;
    ldv_34211:
    (seg->trbs + (unsigned long )i)->link.control = (seg->trbs + (unsigned long )i)->link.control | 1U;
    i = i + 1;
    ldv_34212: ;
    if (i <= 63) {
      goto ldv_34211;
    } else {
    }
  } else {
  }
  xhci_link_segments(xhci, seg, seg->next, type);
  seg = seg->next;
  if ((unsigned long )ring->first_seg != (unsigned long )seg) {
    goto ldv_34214;
  } else {
  }
  ring->type = type;
  xhci_initialize_ring_info(ring, cycle_state);
  INIT_LIST_HEAD(& ring->td_list);
  return;
}
}
int xhci_ring_expansion(struct xhci_hcd *xhci , struct xhci_ring *ring , unsigned int num_trbs ,
                        gfp_t flags )
{
  struct xhci_segment *first ;
  struct xhci_segment *last ;
  unsigned int num_segs ;
  unsigned int num_segs_needed ;
  int ret ;
  struct xhci_segment *next ;
  {
  num_segs_needed = (num_trbs + 62U) / 63U;
  num_segs = num_segs_needed > ring->num_segs ? num_segs_needed : ring->num_segs;
  ret = xhci_alloc_segments_for_ring(xhci, & first, & last, num_segs, ring->cycle_state,
                                     ring->type, flags);
  if (ret != 0) {
    return (-12);
  } else {
  }
  if ((unsigned int )ring->type == 4U) {
    ret = xhci_update_stream_segment_mapping(ring->trb_address_map, ring, first, last,
                                             flags);
  } else {
  }
  if (ret != 0) {
    ldv_34229:
    next = first->next;
    xhci_segment_free(xhci, first);
    if ((unsigned long )first == (unsigned long )last) {
      goto ldv_34228;
    } else {
    }
    first = next;
    goto ldv_34229;
    ldv_34228: ;
    return (ret);
  } else {
  }
  xhci_link_rings(xhci, ring, first, last, num_segs);
  xhci_dbg_trace(xhci, & trace_xhci_dbg_ring_expansion, "ring expansion succeed, now has %d segments",
                 ring->num_segs);
  return (0);
}
}
static struct xhci_container_ctx *xhci_alloc_container_ctx(struct xhci_hcd *xhci ,
                                                           int type , gfp_t flags )
{
  struct xhci_container_ctx *ctx ;
  void *tmp ;
  void *tmp___0 ;
  {
  if (type != 1 && type != 2) {
    return ((struct xhci_container_ctx *)0);
  } else {
  }
  tmp = kzalloc(24UL, flags);
  ctx = (struct xhci_container_ctx *)tmp;
  if ((unsigned long )ctx == (unsigned long )((struct xhci_container_ctx *)0)) {
    return ((struct xhci_container_ctx *)0);
  } else {
  }
  ctx->type = (unsigned int )type;
  ctx->size = (xhci->hcc_params & 4U) != 0U ? 2048 : 1024;
  if (type == 2) {
    ctx->size = ctx->size + ((xhci->hcc_params & 4U) != 0U ? 64 : 32);
  } else {
  }
  tmp___0 = ldv_dma_pool_alloc_65(xhci->device_pool, flags, & ctx->dma);
  ctx->bytes = (u8 *)tmp___0;
  if ((unsigned long )ctx->bytes == (unsigned long )((u8 *)0U)) {
    kfree((void const *)ctx);
    return ((struct xhci_container_ctx *)0);
  } else {
  }
  memset((void *)ctx->bytes, 0, (size_t )ctx->size);
  return (ctx);
}
}
static void xhci_free_container_ctx(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx )
{
  {
  if ((unsigned long )ctx == (unsigned long )((struct xhci_container_ctx *)0)) {
    return;
  } else {
  }
  dma_pool_free(xhci->device_pool, (void *)ctx->bytes, ctx->dma);
  kfree((void const *)ctx);
  return;
}
}
struct xhci_input_control_ctx *xhci_get_input_control_ctx(struct xhci_hcd *xhci ,
                                                          struct xhci_container_ctx *ctx )
{
  {
  if (ctx->type != 2U) {
    return ((struct xhci_input_control_ctx *)0);
  } else {
  }
  return ((struct xhci_input_control_ctx *)ctx->bytes);
}
}
struct xhci_slot_ctx *xhci_get_slot_ctx(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx )
{
  {
  if (ctx->type == 1U) {
    return ((struct xhci_slot_ctx *)ctx->bytes);
  } else {
  }
  return ((struct xhci_slot_ctx *)(ctx->bytes + ((xhci->hcc_params & 4U) != 0U ? 64UL : 32UL)));
}
}
struct xhci_ep_ctx *xhci_get_ep_ctx(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx ,
                                    unsigned int ep_index )
{
  {
  ep_index = ep_index + 1U;
  if (ctx->type == 2U) {
    ep_index = ep_index + 1U;
  } else {
  }
  return ((struct xhci_ep_ctx *)ctx->bytes + (unsigned long )(((xhci->hcc_params & 4U) != 0U ? 64U : 32U) * ep_index));
}
}
static void xhci_free_stream_ctx(struct xhci_hcd *xhci , unsigned int num_stream_ctxs ,
                                 struct xhci_stream_ctx *stream_ctx , dma_addr_t dma )
{
  struct device *dev ;
  struct usb_hcd *tmp ;
  size_t size ;
  {
  tmp = xhci_to_hcd(xhci);
  dev = tmp->self.controller;
  size = (unsigned long )num_stream_ctxs * 16UL;
  if (size > 1024UL) {
    dma_free_attrs(dev, size, (void *)stream_ctx, dma, (struct dma_attrs *)0);
  } else
  if (size <= 256UL) {
    return;
  } else {
    return;
  }
  return;
}
}
static struct xhci_stream_ctx *xhci_alloc_stream_ctx(struct xhci_hcd *xhci , unsigned int num_stream_ctxs ,
                                                     dma_addr_t *dma , gfp_t mem_flags )
{
  struct device *dev ;
  struct usb_hcd *tmp ;
  size_t size ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  tmp = xhci_to_hcd(xhci);
  dev = tmp->self.controller;
  size = (unsigned long )num_stream_ctxs * 16UL;
  if (size > 1024UL) {
    tmp___0 = dma_alloc_attrs(dev, size, dma, mem_flags, (struct dma_attrs *)0);
    return ((struct xhci_stream_ctx *)tmp___0);
  } else
  if (size <= 256UL) {
    tmp___1 = ldv_dma_pool_alloc_66(xhci->small_streams_pool, mem_flags, dma);
    return ((struct xhci_stream_ctx *)tmp___1);
  } else {
    tmp___2 = ldv_dma_pool_alloc_67(xhci->medium_streams_pool, mem_flags, dma);
    return ((struct xhci_stream_ctx *)tmp___2);
  }
}
}
struct xhci_ring *xhci_dma_to_transfer_ring(struct xhci_virt_ep *ep , u64 address )
{
  void *tmp ;
  {
  if ((ep->ep_state & 16U) != 0U) {
    tmp = radix_tree_lookup(& (ep->stream_info)->trb_address_map, (unsigned long )(address >> 10));
    return ((struct xhci_ring *)tmp);
  } else {
  }
  return (ep->ring);
}
}
struct xhci_ring *xhci_stream_id_to_ring(struct xhci_virt_device *dev , unsigned int ep_index ,
                                         unsigned int stream_id )
{
  struct xhci_virt_ep *ep ;
  {
  ep = (struct xhci_virt_ep *)(& dev->eps) + (unsigned long )ep_index;
  if (stream_id == 0U) {
    return (ep->ring);
  } else {
  }
  if ((unsigned long )ep->stream_info == (unsigned long )((struct xhci_stream_info *)0)) {
    return ((struct xhci_ring *)0);
  } else {
  }
  if ((ep->stream_info)->num_streams < stream_id) {
    return ((struct xhci_ring *)0);
  } else {
  }
  return (*((ep->stream_info)->stream_rings + (unsigned long )stream_id));
}
}
struct xhci_stream_info *xhci_alloc_stream_info(struct xhci_hcd *xhci , unsigned int num_stream_ctxs ,
                                                unsigned int num_streams , gfp_t mem_flags )
{
  struct xhci_stream_info *stream_info ;
  u32 cur_stream ;
  struct xhci_ring *cur_ring ;
  u64 addr ;
  int ret ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  {
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_alloc_stream_info";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-mem.o.c.prepared";
  descriptor.format = "Allocating %u streams and %u stream context array entries.\n";
  descriptor.lineno = 801U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "Allocating %u streams and %u stream context array entries.\n",
                      num_streams, num_stream_ctxs);
  } else {
  }
  if (xhci->cmd_ring_reserved_trbs == 61U) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_alloc_stream_info";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-mem.o.c.prepared";
    descriptor___0.format = "Command ring has no reserved TRBs available\n";
    descriptor___0.lineno = 803U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "Command ring has no reserved TRBs available\n");
    } else {
    }
    return ((struct xhci_stream_info *)0);
  } else {
  }
  xhci->cmd_ring_reserved_trbs = xhci->cmd_ring_reserved_trbs + 1U;
  tmp___3 = kzalloc(64UL, mem_flags);
  stream_info = (struct xhci_stream_info *)tmp___3;
  if ((unsigned long )stream_info == (unsigned long )((struct xhci_stream_info *)0)) {
    goto cleanup_trbs;
  } else {
  }
  stream_info->num_streams = num_streams;
  stream_info->num_stream_ctxs = num_stream_ctxs;
  tmp___4 = kzalloc((unsigned long )num_streams * 8UL, mem_flags);
  stream_info->stream_rings = (struct xhci_ring **)tmp___4;
  if ((unsigned long )stream_info->stream_rings == (unsigned long )((struct xhci_ring **)0)) {
    goto cleanup_info;
  } else {
  }
  stream_info->stream_ctx_array = xhci_alloc_stream_ctx(xhci, num_stream_ctxs, & stream_info->ctx_array_dma,
                                                        mem_flags);
  if ((unsigned long )stream_info->stream_ctx_array == (unsigned long )((struct xhci_stream_ctx *)0)) {
    goto cleanup_ctx;
  } else {
  }
  memset((void *)stream_info->stream_ctx_array, 0, (unsigned long )num_stream_ctxs * 16UL);
  stream_info->free_streams_command = xhci_alloc_command(xhci, 1, 1, mem_flags);
  if ((unsigned long )stream_info->free_streams_command == (unsigned long )((struct xhci_command *)0)) {
    goto cleanup_ctx;
  } else {
  }
  stream_info->trb_address_map.height = 0U;
  stream_info->trb_address_map.gfp_mask = 32U;
  stream_info->trb_address_map.rnode = (struct radix_tree_node *)0;
  cur_stream = 1U;
  goto ldv_34299;
  ldv_34298:
  *(stream_info->stream_rings + (unsigned long )cur_stream) = xhci_ring_alloc(xhci,
                                                                              2U,
                                                                              1U,
                                                                              4, mem_flags);
  cur_ring = *(stream_info->stream_rings + (unsigned long )cur_stream);
  if ((unsigned long )cur_ring == (unsigned long )((struct xhci_ring *)0)) {
    goto cleanup_rings;
  } else {
  }
  cur_ring->stream_id = cur_stream;
  cur_ring->trb_address_map = & stream_info->trb_address_map;
  addr = ((cur_ring->first_seg)->dma | (dma_addr_t )cur_ring->cycle_state) | 2ULL;
  (stream_info->stream_ctx_array + (unsigned long )cur_stream)->stream_ring = addr;
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_alloc_stream_info";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-mem.o.c.prepared";
  descriptor___1.format = "Setting stream %d ring ptr to 0x%08llx\n";
  descriptor___1.lineno = 858U;
  descriptor___1.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___5->self.controller,
                      "Setting stream %d ring ptr to 0x%08llx\n", cur_stream, addr);
  } else {
  }
  ret = xhci_update_stream_mapping(cur_ring, mem_flags);
  if (ret != 0) {
    xhci_ring_free(xhci, cur_ring);
    *(stream_info->stream_rings + (unsigned long )cur_stream) = (struct xhci_ring *)0;
    goto cleanup_rings;
  } else {
  }
  cur_stream = cur_stream + 1U;
  ldv_34299: ;
  if (cur_stream < num_streams) {
    goto ldv_34298;
  } else {
  }
  return (stream_info);
  cleanup_rings:
  cur_stream = 1U;
  goto ldv_34302;
  ldv_34301:
  cur_ring = *(stream_info->stream_rings + (unsigned long )cur_stream);
  if ((unsigned long )cur_ring != (unsigned long )((struct xhci_ring *)0)) {
    xhci_ring_free(xhci, cur_ring);
    *(stream_info->stream_rings + (unsigned long )cur_stream) = (struct xhci_ring *)0;
  } else {
  }
  cur_stream = cur_stream + 1U;
  ldv_34302: ;
  if (cur_stream < num_streams) {
    goto ldv_34301;
  } else {
  }
  xhci_free_command(xhci, stream_info->free_streams_command);
  cleanup_ctx:
  kfree((void const *)stream_info->stream_rings);
  cleanup_info:
  kfree((void const *)stream_info);
  cleanup_trbs:
  xhci->cmd_ring_reserved_trbs = xhci->cmd_ring_reserved_trbs - 1U;
  return ((struct xhci_stream_info *)0);
}
}
void xhci_setup_streams_ep_input_ctx(struct xhci_hcd *xhci , struct xhci_ep_ctx *ep_ctx ,
                                     struct xhci_stream_info *stream_info )
{
  u32 max_primary_streams ;
  int tmp ;
  {
  tmp = fls((int )stream_info->num_stream_ctxs);
  max_primary_streams = (u32 )(tmp + -2);
  xhci_dbg_trace(xhci, & trace_xhci_dbg_context_change___0, "Setting number of stream ctx array entries to %u",
                 1 << (int )(max_primary_streams + 1U));
  ep_ctx->ep_info = ep_ctx->ep_info & 4294935551U;
  ep_ctx->ep_info = (ep_ctx->ep_info | ((max_primary_streams << 10) & 31744U)) | 32768U;
  ep_ctx->deq = stream_info->ctx_array_dma;
  return;
}
}
void xhci_setup_no_streams_ep_input_ctx(struct xhci_hcd *xhci , struct xhci_ep_ctx *ep_ctx ,
                                        struct xhci_virt_ep *ep )
{
  dma_addr_t addr ;
  {
  ep_ctx->ep_info = ep_ctx->ep_info & 4294902783U;
  addr = xhci_trb_virt_to_dma((ep->ring)->deq_seg, (ep->ring)->dequeue);
  ep_ctx->deq = (dma_addr_t )(ep->ring)->cycle_state | addr;
  return;
}
}
void xhci_free_stream_info(struct xhci_hcd *xhci , struct xhci_stream_info *stream_info )
{
  int cur_stream ;
  struct xhci_ring *cur_ring ;
  {
  if ((unsigned long )stream_info == (unsigned long )((struct xhci_stream_info *)0)) {
    return;
  } else {
  }
  cur_stream = 1;
  goto ldv_34323;
  ldv_34322:
  cur_ring = *(stream_info->stream_rings + (unsigned long )cur_stream);
  if ((unsigned long )cur_ring != (unsigned long )((struct xhci_ring *)0)) {
    xhci_ring_free(xhci, cur_ring);
    *(stream_info->stream_rings + (unsigned long )cur_stream) = (struct xhci_ring *)0;
  } else {
  }
  cur_stream = cur_stream + 1;
  ldv_34323: ;
  if ((unsigned int )cur_stream < stream_info->num_streams) {
    goto ldv_34322;
  } else {
  }
  xhci_free_command(xhci, stream_info->free_streams_command);
  xhci->cmd_ring_reserved_trbs = xhci->cmd_ring_reserved_trbs - 1U;
  if ((unsigned long )stream_info->stream_ctx_array != (unsigned long )((struct xhci_stream_ctx *)0)) {
    xhci_free_stream_ctx(xhci, stream_info->num_stream_ctxs, stream_info->stream_ctx_array,
                         stream_info->ctx_array_dma);
  } else {
  }
  kfree((void const *)stream_info->stream_rings);
  kfree((void const *)stream_info);
  return;
}
}
static void xhci_init_endpoint_timer(struct xhci_hcd *xhci , struct xhci_virt_ep *ep )
{
  {
  reg_timer_6(& ep->stop_cmd_timer);
  ep->stop_cmd_timer.data = (unsigned long )ep;
  ep->stop_cmd_timer.function = & xhci_stop_endpoint_command_watchdog;
  ep->xhci = xhci;
  return;
}
}
static void xhci_free_tt_info(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                              int slot_id )
{
  struct list_head *tt_list_head ;
  struct xhci_tt_bw_info *tt_info ;
  struct xhci_tt_bw_info *next ;
  bool slot_found ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  slot_found = 0;
  if ((unsigned int )virt_dev->real_port == 0U || (__u32 )virt_dev->real_port > ((xhci->hcs_params1 >> 24) & 127U)) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_free_tt_info";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-mem.o.c.prepared";
    descriptor.format = "Bad real port.\n";
    descriptor.lineno = 989U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Bad real port.\n");
    } else {
    }
    return;
  } else {
  }
  tt_list_head = & (xhci->rh_bw + ((unsigned long )virt_dev->real_port + 0xffffffffffffffffUL))->tts;
  __mptr = (struct list_head const *)tt_list_head->next;
  tt_info = (struct xhci_tt_bw_info *)__mptr;
  __mptr___0 = (struct list_head const *)tt_info->tt_list.next;
  next = (struct xhci_tt_bw_info *)__mptr___0;
  goto ldv_34348;
  ldv_34347: ;
  if (tt_info->slot_id == slot_id) {
    slot_found = 1;
    list_del(& tt_info->tt_list);
    kfree((void const *)tt_info);
  } else
  if ((int )slot_found) {
    goto ldv_34346;
  } else {
  }
  tt_info = next;
  __mptr___1 = (struct list_head const *)next->tt_list.next;
  next = (struct xhci_tt_bw_info *)__mptr___1;
  ldv_34348: ;
  if ((unsigned long )(& tt_info->tt_list) != (unsigned long )tt_list_head) {
    goto ldv_34347;
  } else {
  }
  ldv_34346: ;
  return;
}
}
int xhci_alloc_tt_info(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                       struct usb_device *hdev , struct usb_tt *tt , gfp_t mem_flags )
{
  struct xhci_tt_bw_info *tt_info ;
  unsigned int num_ports ;
  int i ;
  int j ;
  struct xhci_interval_bw_table *bw_table ;
  void *tmp ;
  {
  if (tt->multi == 0) {
    num_ports = 1U;
  } else {
    num_ports = (unsigned int )hdev->maxchild;
  }
  i = 0;
  goto ldv_34366;
  ldv_34365:
  tmp = kzalloc(696UL, mem_flags);
  tt_info = (struct xhci_tt_bw_info *)tmp;
  if ((unsigned long )tt_info == (unsigned long )((struct xhci_tt_bw_info *)0)) {
    goto free_tts;
  } else {
  }
  INIT_LIST_HEAD(& tt_info->tt_list);
  list_add(& tt_info->tt_list, & (xhci->rh_bw + ((unsigned long )virt_dev->real_port + 0xffffffffffffffffUL))->tts);
  tt_info->slot_id = (virt_dev->udev)->slot_id;
  if (tt->multi != 0) {
    tt_info->ttport = i + 1;
  } else {
  }
  bw_table = & tt_info->bw_table;
  j = 0;
  goto ldv_34363;
  ldv_34362:
  INIT_LIST_HEAD(& bw_table->interval_bw[j].endpoints);
  j = j + 1;
  ldv_34363: ;
  if (j <= 15) {
    goto ldv_34362;
  } else {
  }
  i = i + 1;
  tt_info = tt_info + 1;
  ldv_34366: ;
  if ((unsigned int )i < num_ports) {
    goto ldv_34365;
  } else {
  }
  return (0);
  free_tts:
  xhci_free_tt_info(xhci, virt_dev, (virt_dev->udev)->slot_id);
  return (-12);
}
}
void xhci_free_virt_device(struct xhci_hcd *xhci , int slot_id )
{
  struct xhci_virt_device *dev ;
  int i ;
  int old_active_eps ;
  struct usb_hcd *tmp ;
  int tmp___0 ;
  {
  old_active_eps = 0;
  if (slot_id == 0 || (unsigned long )xhci->devs[slot_id] == (unsigned long )((struct xhci_virt_device *)0)) {
    return;
  } else {
  }
  dev = xhci->devs[slot_id];
  (xhci->dcbaa)->dev_context_ptrs[slot_id] = 0ULL;
  if ((unsigned long )dev == (unsigned long )((struct xhci_virt_device *)0)) {
    return;
  } else {
  }
  if ((unsigned long )dev->tt_info != (unsigned long )((struct xhci_tt_bw_info *)0)) {
    old_active_eps = (dev->tt_info)->active_eps;
  } else {
  }
  i = 0;
  goto ldv_34376;
  ldv_34375: ;
  if ((unsigned long )dev->eps[i].ring != (unsigned long )((struct xhci_ring *)0)) {
    xhci_ring_free(xhci, dev->eps[i].ring);
  } else {
  }
  if ((unsigned long )dev->eps[i].stream_info != (unsigned long )((struct xhci_stream_info *)0)) {
    xhci_free_stream_info(xhci, dev->eps[i].stream_info);
  } else {
  }
  tmp___0 = list_empty((struct list_head const *)(& dev->eps[i].bw_endpoint_list));
  if (tmp___0 == 0) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "Slot %u endpoint %u not removed from BW list!\n",
             slot_id, i);
  } else {
  }
  i = i + 1;
  ldv_34376: ;
  if (i <= 30) {
    goto ldv_34375;
  } else {
  }
  xhci_free_tt_info(xhci, dev, slot_id);
  xhci_update_tt_active_eps(xhci, dev, old_active_eps);
  if ((unsigned long )dev->ring_cache != (unsigned long )((struct xhci_ring **)0)) {
    i = 0;
    goto ldv_34379;
    ldv_34378:
    xhci_ring_free(xhci, *(dev->ring_cache + (unsigned long )i));
    i = i + 1;
    ldv_34379: ;
    if (dev->num_rings_cached > i) {
      goto ldv_34378;
    } else {
    }
    kfree((void const *)dev->ring_cache);
  } else {
  }
  if ((unsigned long )dev->in_ctx != (unsigned long )((struct xhci_container_ctx *)0)) {
    xhci_free_container_ctx(xhci, dev->in_ctx);
  } else {
  }
  if ((unsigned long )dev->out_ctx != (unsigned long )((struct xhci_container_ctx *)0)) {
    xhci_free_container_ctx(xhci, dev->out_ctx);
  } else {
  }
  kfree((void const *)xhci->devs[slot_id]);
  xhci->devs[slot_id] = (struct xhci_virt_device *)0;
  return;
}
}
int xhci_alloc_virt_device(struct xhci_hcd *xhci , int slot_id , struct usb_device *udev ,
                           gfp_t flags )
{
  struct xhci_virt_device *dev ;
  int i ;
  struct usb_hcd *tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  void *tmp___5 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  {
  if (slot_id == 0 || (unsigned long )xhci->devs[slot_id] != (unsigned long )((struct xhci_virt_device *)0)) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "Bad Slot ID %d\n", slot_id);
    return (0);
  } else {
  }
  tmp___0 = kzalloc(8600UL, flags);
  xhci->devs[slot_id] = (struct xhci_virt_device *)tmp___0;
  if ((unsigned long )xhci->devs[slot_id] == (unsigned long )((struct xhci_virt_device *)0)) {
    return (0);
  } else {
  }
  dev = xhci->devs[slot_id];
  dev->out_ctx = xhci_alloc_container_ctx(xhci, 1, flags);
  if ((unsigned long )dev->out_ctx == (unsigned long )((struct xhci_container_ctx *)0)) {
    goto fail;
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_alloc_virt_device";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-mem.o.c.prepared";
  descriptor.format = "Slot %d output ctx = 0x%llx (dma)\n";
  descriptor.lineno = 1126U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                      "Slot %d output ctx = 0x%llx (dma)\n", slot_id, (dev->out_ctx)->dma);
  } else {
  }
  dev->in_ctx = xhci_alloc_container_ctx(xhci, 2, flags);
  if ((unsigned long )dev->in_ctx == (unsigned long )((struct xhci_container_ctx *)0)) {
    goto fail;
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_alloc_virt_device";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-mem.o.c.prepared";
  descriptor___0.format = "Slot %d input ctx = 0x%llx (dma)\n";
  descriptor___0.lineno = 1134U;
  descriptor___0.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___3->self.controller,
                      "Slot %d input ctx = 0x%llx (dma)\n", slot_id, (dev->in_ctx)->dma);
  } else {
  }
  i = 0;
  goto ldv_34394;
  ldv_34393:
  xhci_init_endpoint_timer(xhci, (struct xhci_virt_ep *)(& dev->eps) + (unsigned long )i);
  INIT_LIST_HEAD(& dev->eps[i].cancelled_td_list);
  INIT_LIST_HEAD(& dev->eps[i].bw_endpoint_list);
  i = i + 1;
  ldv_34394: ;
  if (i <= 30) {
    goto ldv_34393;
  } else {
  }
  dev->eps[0].ring = xhci_ring_alloc(xhci, 2U, 1U, 0, flags);
  if ((unsigned long )dev->eps[0].ring == (unsigned long )((struct xhci_ring *)0)) {
    goto fail;
  } else {
  }
  tmp___5 = kzalloc(248UL, flags);
  dev->ring_cache = (struct xhci_ring **)tmp___5;
  if ((unsigned long )dev->ring_cache == (unsigned long )((struct xhci_ring **)0)) {
    goto fail;
  } else {
  }
  dev->num_rings_cached = 0;
  init_completion(& dev->cmd_completion);
  dev->udev = udev;
  (xhci->dcbaa)->dev_context_ptrs[slot_id] = (dev->out_ctx)->dma;
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_alloc_virt_device";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-mem.o.c.prepared";
  descriptor___1.format = "Set slot id %d dcbaa entry %p to 0x%llx\n";
  descriptor___1.lineno = 1164U;
  descriptor___1.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___6->self.controller,
                      "Set slot id %d dcbaa entry %p to 0x%llx\n", slot_id, (__le64 *)(& (xhci->dcbaa)->dev_context_ptrs) + (unsigned long )slot_id,
                      (xhci->dcbaa)->dev_context_ptrs[slot_id]);
  } else {
  }
  return (1);
  fail:
  xhci_free_virt_device(xhci, slot_id);
  return (0);
}
}
void xhci_copy_ep0_dequeue_into_input_ctx(struct xhci_hcd *xhci , struct usb_device *udev )
{
  struct xhci_virt_device *virt_dev ;
  struct xhci_ep_ctx *ep0_ctx ;
  struct xhci_ring *ep_ring ;
  dma_addr_t tmp ;
  {
  virt_dev = xhci->devs[udev->slot_id];
  ep0_ctx = xhci_get_ep_ctx(xhci, virt_dev->in_ctx, 0U);
  ep_ring = virt_dev->eps[0].ring;
  tmp = xhci_trb_virt_to_dma(ep_ring->enq_seg, ep_ring->enqueue);
  ep0_ctx->deq = tmp | (dma_addr_t )ep_ring->cycle_state;
  return;
}
}
static u32 xhci_find_real_port_number(struct xhci_hcd *xhci , struct usb_device *udev )
{
  struct usb_device *top_dev ;
  struct usb_hcd *hcd ;
  int tmp ;
  {
  if ((unsigned int )udev->speed == 5U) {
    hcd = xhci->shared_hcd;
  } else {
    hcd = xhci->main_hcd;
  }
  top_dev = udev;
  goto ldv_34411;
  ldv_34410:
  top_dev = top_dev->parent;
  ldv_34411: ;
  if ((unsigned long )top_dev->parent != (unsigned long )((struct usb_device *)0) && (unsigned long )(top_dev->parent)->parent != (unsigned long )((struct usb_device *)0)) {
    goto ldv_34410;
  } else {
  }
  tmp = xhci_find_raw_port_number(hcd, (int )top_dev->portnum);
  return ((u32 )tmp);
}
}
int xhci_setup_addressable_virt_dev(struct xhci_hcd *xhci , struct usb_device *udev )
{
  struct xhci_virt_device *dev ;
  struct xhci_ep_ctx *ep0_ctx ;
  struct xhci_slot_ctx *slot_ctx ;
  u32 port_num ;
  u32 max_packets ;
  struct usb_device *top_dev ;
  struct usb_hcd *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  struct xhci_root_port_bw_info *rh_bw ;
  struct xhci_tt_bw_info *tt_bw ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct usb_hcd *tmp___6 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  {
  dev = xhci->devs[udev->slot_id];
  if (udev->slot_id == 0 || (unsigned long )dev == (unsigned long )((struct xhci_virt_device *)0)) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "Slot ID %d is not assigned to this device\n",
             udev->slot_id);
    return (-22);
  } else {
  }
  ep0_ctx = xhci_get_ep_ctx(xhci, dev->in_ctx, 0U);
  slot_ctx = xhci_get_slot_ctx(xhci, dev->in_ctx);
  slot_ctx->dev_info = (slot_ctx->dev_info | udev->route) | 134217728U;
  switch ((unsigned int )udev->speed) {
  case 5U:
  slot_ctx->dev_info = slot_ctx->dev_info | 4194304U;
  max_packets = 33554432U;
  goto ldv_34424;
  case 3U:
  slot_ctx->dev_info = slot_ctx->dev_info | 3145728U;
  max_packets = 4194304U;
  goto ldv_34424;
  case 2U:
  slot_ctx->dev_info = slot_ctx->dev_info | 1048576U;
  max_packets = 4194304U;
  goto ldv_34424;
  case 1U:
  slot_ctx->dev_info = slot_ctx->dev_info | 2097152U;
  max_packets = 524288U;
  goto ldv_34424;
  case 4U:
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_setup_addressable_virt_dev";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-mem.o.c.prepared";
  descriptor.format = "FIXME xHCI doesn\'t support wireless speeds\n";
  descriptor.lineno = 1264U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "FIXME xHCI doesn\'t support wireless speeds\n");
  } else {
  }
  return (-22);
  default: ;
  return (-22);
  }
  ldv_34424:
  port_num = xhci_find_real_port_number(xhci, udev);
  if (port_num == 0U) {
    return (-22);
  } else {
  }
  slot_ctx->dev_info2 = slot_ctx->dev_info2 | ((port_num & 255U) << 16);
  top_dev = udev;
  goto ldv_34433;
  ldv_34432:
  top_dev = top_dev->parent;
  ldv_34433: ;
  if ((unsigned long )top_dev->parent != (unsigned long )((struct usb_device *)0) && (unsigned long )(top_dev->parent)->parent != (unsigned long )((struct usb_device *)0)) {
    goto ldv_34432;
  } else {
  }
  dev->fake_port = top_dev->portnum;
  dev->real_port = (u8 )port_num;
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_setup_addressable_virt_dev";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-mem.o.c.prepared";
  descriptor___0.format = "Set root hub portnum to %d\n";
  descriptor___0.lineno = 1282U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                      "Set root hub portnum to %d\n", port_num);
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_setup_addressable_virt_dev";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-mem.o.c.prepared";
  descriptor___1.format = "Set fake root hub portnum to %d\n";
  descriptor___1.lineno = 1283U;
  descriptor___1.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___4->self.controller,
                      "Set fake root hub portnum to %d\n", (int )dev->fake_port);
  } else {
  }
  if ((unsigned long )udev->tt == (unsigned long )((struct usb_tt *)0) || (unsigned long )((udev->tt)->hub)->parent == (unsigned long )((struct usb_device *)0)) {
    dev->bw_table = & (xhci->rh_bw + (unsigned long )(port_num - 1U))->bw_table;
  } else {
    rh_bw = xhci->rh_bw + (unsigned long )(port_num - 1U);
    __mptr = (struct list_head const *)rh_bw->tts.next;
    tt_bw = (struct xhci_tt_bw_info *)__mptr;
    goto ldv_34446;
    ldv_34445: ;
    if (tt_bw->slot_id != ((udev->tt)->hub)->slot_id) {
      goto ldv_34443;
    } else {
    }
    if (((dev->udev)->tt)->multi == 0 || ((udev->tt)->multi != 0 && tt_bw->ttport == (dev->udev)->ttport)) {
      dev->bw_table = & tt_bw->bw_table;
      dev->tt_info = tt_bw;
      goto ldv_34444;
    } else {
    }
    ldv_34443:
    __mptr___0 = (struct list_head const *)tt_bw->tt_list.next;
    tt_bw = (struct xhci_tt_bw_info *)__mptr___0;
    ldv_34446: ;
    if ((unsigned long )tt_bw != (unsigned long )rh_bw) {
      goto ldv_34445;
    } else {
    }
    ldv_34444: ;
    if ((unsigned long )dev->tt_info == (unsigned long )((struct xhci_tt_bw_info *)0)) {
      tmp___6 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___6->self.controller, "WARN: Didn\'t find a matching TT\n");
    } else {
    }
  }
  if ((unsigned long )udev->tt != (unsigned long )((struct usb_tt *)0) && (unsigned long )((udev->tt)->hub)->parent != (unsigned long )((struct usb_device *)0)) {
    slot_ctx->tt_info = (unsigned int )(((udev->tt)->hub)->slot_id | (udev->ttport << 8));
    if ((udev->tt)->multi != 0) {
      slot_ctx->dev_info = slot_ctx->dev_info | 33554432U;
    } else {
    }
  } else {
  }
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_setup_addressable_virt_dev";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-mem.o.c.prepared";
  descriptor___2.format = "udev->tt = %p\n";
  descriptor___2.lineno = 1322U;
  descriptor___2.flags = 0U;
  tmp___8 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___7->self.controller,
                      "udev->tt = %p\n", udev->tt);
  } else {
  }
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_setup_addressable_virt_dev";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-mem.o.c.prepared";
  descriptor___3.format = "udev->ttport = 0x%x\n";
  descriptor___3.lineno = 1323U;
  descriptor___3.flags = 0U;
  tmp___10 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    tmp___9 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___9->self.controller,
                      "udev->ttport = 0x%x\n", udev->ttport);
  } else {
  }
  ep0_ctx->ep_info2 = 32U;
  ep0_ctx->ep_info2 = (ep0_ctx->ep_info2 | max_packets) | 6U;
  ep0_ctx->deq = ((dev->eps[0].ring)->first_seg)->dma | (dma_addr_t )(dev->eps[0].ring)->cycle_state;
  return (0);
}
}
static unsigned int xhci_parse_exponent_interval(struct usb_device *udev , struct usb_host_endpoint *ep )
{
  unsigned int interval ;
  __u8 __val ;
  __u8 __min ;
  __u8 __max ;
  {
  __val = ep->desc.bInterval;
  __min = 1U;
  __max = 16U;
  __val = (__u8 )((int )__min > (int )__val ? __min : __val);
  interval = (unsigned int )(((int )__max < (int )__val ? __max : __val) + -1);
  if ((unsigned int )((int )ep->desc.bInterval + -1) != interval) {
    dev_warn((struct device const *)(& udev->dev), "ep %#x - rounding interval to %d %sframes\n",
             (int )ep->desc.bEndpointAddress, 1 << (int )interval, (unsigned int )udev->speed == 2U ? (char *)"" : (char *)"micro");
  } else {
  }
  if ((unsigned int )udev->speed == 2U) {
    interval = interval + 3U;
  } else {
  }
  return (interval);
}
}
static unsigned int xhci_microframes_to_exponent(struct usb_device *udev , struct usb_host_endpoint *ep ,
                                                 unsigned int desc_interval , unsigned int min_exponent ,
                                                 unsigned int max_exponent )
{
  unsigned int interval ;
  int tmp ;
  unsigned int __val ;
  unsigned int __min ;
  unsigned int __max ;
  {
  tmp = fls((int )desc_interval);
  interval = (unsigned int )(tmp + -1);
  __val = interval;
  __min = min_exponent;
  __max = max_exponent;
  __val = __min > __val ? __min : __val;
  interval = __max < __val ? __max : __val;
  if ((unsigned int )(1 << (int )interval) != desc_interval) {
    dev_warn((struct device const *)(& udev->dev), "ep %#x - rounding interval to %d microframes, ep desc says %d microframes\n",
             (int )ep->desc.bEndpointAddress, 1 << (int )interval, desc_interval);
  } else {
  }
  return (interval);
}
}
static unsigned int xhci_parse_microframe_interval(struct usb_device *udev , struct usb_host_endpoint *ep )
{
  unsigned int tmp ;
  {
  if ((unsigned int )ep->desc.bInterval == 0U) {
    return (0U);
  } else {
  }
  tmp = xhci_microframes_to_exponent(udev, ep, (unsigned int )ep->desc.bInterval,
                                     0U, 15U);
  return (tmp);
}
}
static unsigned int xhci_parse_frame_interval(struct usb_device *udev , struct usb_host_endpoint *ep )
{
  unsigned int tmp ;
  {
  tmp = xhci_microframes_to_exponent(udev, ep, (unsigned int )((int )ep->desc.bInterval * 8),
                                     3U, 10U);
  return (tmp);
}
}
static unsigned int xhci_get_endpoint_interval(struct usb_device *udev , struct usb_host_endpoint *ep )
{
  unsigned int interval ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  interval = 0U;
  switch ((unsigned int )udev->speed) {
  case 3U:
  tmp = usb_endpoint_xfer_control((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp != 0) {
    interval = xhci_parse_microframe_interval(udev, ep);
    goto ldv_34484;
  } else {
    tmp___0 = usb_endpoint_xfer_bulk((struct usb_endpoint_descriptor const *)(& ep->desc));
    if (tmp___0 != 0) {
      interval = xhci_parse_microframe_interval(udev, ep);
      goto ldv_34484;
    } else {
    }
  }
  case 5U:
  tmp___1 = usb_endpoint_xfer_int((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp___1 != 0) {
    interval = xhci_parse_exponent_interval(udev, ep);
  } else {
    tmp___2 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& ep->desc));
    if (tmp___2 != 0) {
      interval = xhci_parse_exponent_interval(udev, ep);
    } else {
    }
  }
  goto ldv_34484;
  case 2U:
  tmp___3 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp___3 != 0) {
    interval = xhci_parse_exponent_interval(udev, ep);
    goto ldv_34484;
  } else {
  }
  case 1U:
  tmp___4 = usb_endpoint_xfer_int((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp___4 != 0) {
    interval = xhci_parse_frame_interval(udev, ep);
  } else {
    tmp___5 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& ep->desc));
    if (tmp___5 != 0) {
      interval = xhci_parse_frame_interval(udev, ep);
    } else {
    }
  }
  goto ldv_34484;
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-mem.o.c.prepared"),
                       "i" (1460), "i" (12UL));
  ldv_34489: ;
  goto ldv_34489;
  }
  ldv_34484: ;
  return ((interval & 255U) << 16);
}
}
static u32 xhci_get_endpoint_mult(struct usb_device *udev , struct usb_host_endpoint *ep )
{
  int tmp ;
  {
  if ((unsigned int )udev->speed != 5U) {
    return (0U);
  } else {
    tmp = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& ep->desc));
    if (tmp == 0) {
      return (0U);
    } else {
    }
  }
  return ((u32 )ep->ss_ep_comp.bmAttributes);
}
}
static u32 xhci_get_endpoint_type(struct usb_device *udev , struct usb_host_endpoint *ep )
{
  int in ;
  u32 type ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  in = usb_endpoint_dir_in((struct usb_endpoint_descriptor const *)(& ep->desc));
  tmp___2 = usb_endpoint_xfer_control((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp___2 != 0) {
    type = 32U;
  } else {
    tmp___1 = usb_endpoint_xfer_bulk((struct usb_endpoint_descriptor const *)(& ep->desc));
    if (tmp___1 != 0) {
      if (in != 0) {
        type = 48U;
      } else {
        type = 16U;
      }
    } else {
      tmp___0 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& ep->desc));
      if (tmp___0 != 0) {
        if (in != 0) {
          type = 40U;
        } else {
          type = 8U;
        }
      } else {
        tmp = usb_endpoint_xfer_int((struct usb_endpoint_descriptor const *)(& ep->desc));
        if (tmp != 0) {
          if (in != 0) {
            type = 56U;
          } else {
            type = 24U;
          }
        } else {
          type = 0U;
        }
      }
    }
  }
  return (type);
}
}
static u32 xhci_get_max_esit_payload(struct xhci_hcd *xhci , struct usb_device *udev ,
                                     struct usb_host_endpoint *ep )
{
  int max_burst ;
  int max_packet ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = usb_endpoint_xfer_control((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp != 0) {
    return (0U);
  } else {
    tmp___0 = usb_endpoint_xfer_bulk((struct usb_endpoint_descriptor const *)(& ep->desc));
    if (tmp___0 != 0) {
      return (0U);
    } else {
    }
  }
  if ((unsigned int )udev->speed == 5U) {
    return ((u32 )ep->ss_ep_comp.wBytesPerInterval);
  } else {
  }
  tmp___1 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& ep->desc));
  max_packet = tmp___1 & 2047;
  tmp___2 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& ep->desc));
  max_burst = (tmp___2 & 6144) >> 11;
  return ((u32 )((max_burst + 1) * max_packet));
}
}
int xhci_endpoint_init(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                       struct usb_device *udev , struct usb_host_endpoint *ep , gfp_t mem_flags )
{
  unsigned int ep_index ;
  struct xhci_ep_ctx *ep_ctx ;
  struct xhci_ring *ep_ring ;
  unsigned int max_packet ;
  unsigned int max_burst ;
  enum xhci_ring_type type ;
  u32 max_esit_payload ;
  u32 endpoint_type ;
  int tmp ;
  unsigned int tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  ep_index = xhci_get_endpoint_index(& ep->desc);
  ep_ctx = xhci_get_ep_ctx(xhci, virt_dev->in_ctx, ep_index);
  endpoint_type = xhci_get_endpoint_type(udev, ep);
  if (endpoint_type == 0U) {
    return (-22);
  } else {
  }
  ep_ctx->ep_info2 = endpoint_type;
  tmp = usb_endpoint_type((struct usb_endpoint_descriptor const *)(& ep->desc));
  type = (enum xhci_ring_type )tmp;
  virt_dev->eps[ep_index].new_ring = xhci_ring_alloc(xhci, 2U, 1U, type, mem_flags);
  if ((unsigned long )virt_dev->eps[ep_index].new_ring == (unsigned long )((struct xhci_ring *)0)) {
    if (virt_dev->num_rings_cached == 0) {
      return (-12);
    } else {
    }
    virt_dev->eps[ep_index].new_ring = *(virt_dev->ring_cache + (unsigned long )virt_dev->num_rings_cached);
    *(virt_dev->ring_cache + (unsigned long )virt_dev->num_rings_cached) = (struct xhci_ring *)0;
    virt_dev->num_rings_cached = virt_dev->num_rings_cached - 1;
    xhci_reinit_cached_ring(xhci, virt_dev->eps[ep_index].new_ring, 1U, type);
  } else {
  }
  virt_dev->eps[ep_index].skip = 0;
  ep_ring = virt_dev->eps[ep_index].new_ring;
  ep_ctx->deq = (ep_ring->first_seg)->dma | (dma_addr_t )ep_ring->cycle_state;
  tmp___0 = xhci_get_endpoint_interval(udev, ep);
  tmp___1 = xhci_get_endpoint_mult(udev, ep);
  ep_ctx->ep_info = tmp___0 | ((tmp___1 & 3U) << 8);
  tmp___2 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp___2 == 0) {
    ep_ctx->ep_info2 = ep_ctx->ep_info2 | 6U;
  } else {
    ep_ctx->ep_info2 = ep_ctx->ep_info2;
  }
  tmp___3 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& ep->desc));
  max_packet = (unsigned int )tmp___3 & 2047U;
  max_burst = 0U;
  switch ((unsigned int )udev->speed) {
  case 5U:
  max_burst = (unsigned int )ep->ss_ep_comp.bMaxBurst;
  goto ldv_34523;
  case 3U:
  tmp___4 = usb_endpoint_xfer_bulk((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp___4 != 0) {
    max_packet = 512U;
  } else {
  }
  tmp___6 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp___6 != 0) {
    tmp___5 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& ep->desc));
    max_burst = (unsigned int )((tmp___5 & 6144) >> 11);
  } else {
    tmp___7 = usb_endpoint_xfer_int((struct usb_endpoint_descriptor const *)(& ep->desc));
    if (tmp___7 != 0) {
      tmp___5 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& ep->desc));
      max_burst = (unsigned int )((tmp___5 & 6144) >> 11);
    } else {
    }
  }
  goto ldv_34523;
  case 2U: ;
  case 1U: ;
  goto ldv_34523;
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-mem.o.c.prepared"),
                       "i" (1617), "i" (12UL));
  ldv_34528: ;
  goto ldv_34528;
  }
  ldv_34523:
  ep_ctx->ep_info2 = ep_ctx->ep_info2 | ((max_packet << 16) | ((max_burst << 8) & 65535U));
  max_esit_payload = xhci_get_max_esit_payload(xhci, udev, ep);
  ep_ctx->tx_info = max_esit_payload << 16;
  tmp___8 = usb_endpoint_xfer_control((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp___8 != 0 && (unsigned int )xhci->hci_version == 256U) {
    ep_ctx->tx_info = ep_ctx->tx_info | 8U;
  } else {
    ep_ctx->tx_info = ep_ctx->tx_info | (max_esit_payload & 65535U);
  }
  return (0);
}
}
void xhci_endpoint_zero(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                        struct usb_host_endpoint *ep )
{
  unsigned int ep_index ;
  struct xhci_ep_ctx *ep_ctx ;
  {
  ep_index = xhci_get_endpoint_index(& ep->desc);
  ep_ctx = xhci_get_ep_ctx(xhci, virt_dev->in_ctx, ep_index);
  ep_ctx->ep_info = 0U;
  ep_ctx->ep_info2 = 0U;
  ep_ctx->deq = 0ULL;
  ep_ctx->tx_info = 0U;
  return;
}
}
void xhci_clear_endpoint_bw_info(struct xhci_bw_info *bw_info )
{
  {
  bw_info->ep_interval = 0U;
  bw_info->mult = 0U;
  bw_info->num_packets = 0U;
  bw_info->max_packet_size = 0U;
  bw_info->type = 0U;
  bw_info->max_esit_payload = 0U;
  return;
}
}
void xhci_update_bw_info(struct xhci_hcd *xhci , struct xhci_container_ctx *in_ctx ,
                         struct xhci_input_control_ctx *ctrl_ctx , struct xhci_virt_device *virt_dev )
{
  struct xhci_bw_info *bw_info ;
  struct xhci_ep_ctx *ep_ctx ;
  unsigned int ep_type ;
  int i ;
  {
  i = 1;
  goto ldv_34551;
  ldv_34550:
  bw_info = & virt_dev->eps[i].bw_info;
  if ((ctrl_ctx->add_flags & (__le32 )(1 << (i + 1))) == 0U && (ctrl_ctx->drop_flags & (__le32 )(1 << (i + 1))) != 0U) {
    xhci_clear_endpoint_bw_info(bw_info);
    goto ldv_34549;
  } else {
  }
  if ((ctrl_ctx->add_flags & (__le32 )(1 << (i + 1))) != 0U) {
    ep_ctx = xhci_get_ep_ctx(xhci, in_ctx, (unsigned int )i);
    ep_type = (ep_ctx->ep_info2 >> 3) & 7U;
    if (((ep_type != 1U && ep_type != 3U) && ep_type != 5U) && ep_type != 7U) {
      goto ldv_34549;
    } else {
    }
    bw_info->ep_interval = (ep_ctx->ep_info >> 16) & 255U;
    bw_info->mult = ((ep_ctx->ep_info >> 8) & 3U) + 1U;
    bw_info->num_packets = ((ep_ctx->ep_info2 >> 8) & 255U) + 1U;
    bw_info->max_packet_size = ep_ctx->ep_info2 >> 16;
    bw_info->type = ep_type;
    bw_info->max_esit_payload = ep_ctx->tx_info >> 16;
  } else {
  }
  ldv_34549:
  i = i + 1;
  ldv_34551: ;
  if (i <= 30) {
    goto ldv_34550;
  } else {
  }
  return;
}
}
void xhci_endpoint_copy(struct xhci_hcd *xhci , struct xhci_container_ctx *in_ctx ,
                        struct xhci_container_ctx *out_ctx , unsigned int ep_index )
{
  struct xhci_ep_ctx *out_ep_ctx ;
  struct xhci_ep_ctx *in_ep_ctx ;
  {
  out_ep_ctx = xhci_get_ep_ctx(xhci, out_ctx, ep_index);
  in_ep_ctx = xhci_get_ep_ctx(xhci, in_ctx, ep_index);
  in_ep_ctx->ep_info = out_ep_ctx->ep_info;
  in_ep_ctx->ep_info2 = out_ep_ctx->ep_info2;
  in_ep_ctx->deq = out_ep_ctx->deq;
  in_ep_ctx->tx_info = out_ep_ctx->tx_info;
  return;
}
}
void xhci_slot_copy(struct xhci_hcd *xhci , struct xhci_container_ctx *in_ctx , struct xhci_container_ctx *out_ctx )
{
  struct xhci_slot_ctx *in_slot_ctx ;
  struct xhci_slot_ctx *out_slot_ctx ;
  {
  in_slot_ctx = xhci_get_slot_ctx(xhci, in_ctx);
  out_slot_ctx = xhci_get_slot_ctx(xhci, out_ctx);
  in_slot_ctx->dev_info = out_slot_ctx->dev_info;
  in_slot_ctx->dev_info2 = out_slot_ctx->dev_info2;
  in_slot_ctx->tt_info = out_slot_ctx->tt_info;
  in_slot_ctx->dev_state = out_slot_ctx->dev_state;
  return;
}
}
static int scratchpad_alloc(struct xhci_hcd *xhci , gfp_t flags )
{
  int i ;
  struct device *dev ;
  struct usb_hcd *tmp ;
  int num_sp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  dma_addr_t dma ;
  void *buf ;
  void *tmp___4 ;
  {
  tmp = xhci_to_hcd(xhci);
  dev = tmp->self.controller;
  num_sp = (int )(xhci->hcs_params2 >> 27);
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "Allocating %d scratchpad buffers",
                 num_sp);
  if (num_sp == 0) {
    return (0);
  } else {
  }
  tmp___0 = kzalloc(32UL, flags);
  xhci->scratchpad = (struct xhci_scratchpad *)tmp___0;
  if ((unsigned long )xhci->scratchpad == (unsigned long )((struct xhci_scratchpad *)0)) {
    goto fail_sp;
  } else {
  }
  tmp___1 = dma_alloc_attrs(dev, (unsigned long )num_sp * 8UL, & (xhci->scratchpad)->sp_dma,
                            flags, (struct dma_attrs *)0);
  (xhci->scratchpad)->sp_array = (u64 *)tmp___1;
  if ((unsigned long )(xhci->scratchpad)->sp_array == (unsigned long )((u64 *)0ULL)) {
    goto fail_sp2;
  } else {
  }
  tmp___2 = kzalloc((unsigned long )num_sp * 8UL, flags);
  (xhci->scratchpad)->sp_buffers = (void **)tmp___2;
  if ((unsigned long )(xhci->scratchpad)->sp_buffers == (unsigned long )((void **)0)) {
    goto fail_sp3;
  } else {
  }
  tmp___3 = kzalloc((unsigned long )num_sp * 8UL, flags);
  (xhci->scratchpad)->sp_dma_buffers = (dma_addr_t *)tmp___3;
  if ((unsigned long )(xhci->scratchpad)->sp_dma_buffers == (unsigned long )((dma_addr_t *)0ULL)) {
    goto fail_sp4;
  } else {
  }
  (xhci->dcbaa)->dev_context_ptrs[0] = (xhci->scratchpad)->sp_dma;
  i = 0;
  goto ldv_34583;
  ldv_34582:
  tmp___4 = dma_alloc_attrs(dev, (size_t )xhci->page_size, & dma, flags, (struct dma_attrs *)0);
  buf = tmp___4;
  if ((unsigned long )buf == (unsigned long )((void *)0)) {
    goto fail_sp5;
  } else {
  }
  *((xhci->scratchpad)->sp_array + (unsigned long )i) = dma;
  *((xhci->scratchpad)->sp_buffers + (unsigned long )i) = buf;
  *((xhci->scratchpad)->sp_dma_buffers + (unsigned long )i) = dma;
  i = i + 1;
  ldv_34583: ;
  if (i < num_sp) {
    goto ldv_34582;
  } else {
  }
  return (0);
  fail_sp5:
  i = i + -1;
  goto ldv_34586;
  ldv_34585:
  dma_free_attrs(dev, (size_t )xhci->page_size, *((xhci->scratchpad)->sp_buffers + (unsigned long )i),
                 *((xhci->scratchpad)->sp_dma_buffers + (unsigned long )i), (struct dma_attrs *)0);
  i = i - 1;
  ldv_34586: ;
  if (i >= 0) {
    goto ldv_34585;
  } else {
  }
  kfree((void const *)(xhci->scratchpad)->sp_dma_buffers);
  fail_sp4:
  kfree((void const *)(xhci->scratchpad)->sp_buffers);
  fail_sp3:
  dma_free_attrs(dev, (unsigned long )num_sp * 8UL, (void *)(xhci->scratchpad)->sp_array,
                 (xhci->scratchpad)->sp_dma, (struct dma_attrs *)0);
  fail_sp2:
  kfree((void const *)xhci->scratchpad);
  xhci->scratchpad = (struct xhci_scratchpad *)0;
  fail_sp: ;
  return (-12);
}
}
static void scratchpad_free(struct xhci_hcd *xhci )
{
  int num_sp ;
  int i ;
  struct device *dev ;
  struct usb_hcd *tmp ;
  {
  tmp = xhci_to_hcd(xhci);
  dev = tmp->self.controller;
  if ((unsigned long )xhci->scratchpad == (unsigned long )((struct xhci_scratchpad *)0)) {
    return;
  } else {
  }
  num_sp = (int )(xhci->hcs_params2 >> 27);
  i = 0;
  goto ldv_34595;
  ldv_34594:
  dma_free_attrs(dev, (size_t )xhci->page_size, *((xhci->scratchpad)->sp_buffers + (unsigned long )i),
                 *((xhci->scratchpad)->sp_dma_buffers + (unsigned long )i), (struct dma_attrs *)0);
  i = i + 1;
  ldv_34595: ;
  if (i < num_sp) {
    goto ldv_34594;
  } else {
  }
  kfree((void const *)(xhci->scratchpad)->sp_dma_buffers);
  kfree((void const *)(xhci->scratchpad)->sp_buffers);
  dma_free_attrs(dev, (unsigned long )num_sp * 8UL, (void *)(xhci->scratchpad)->sp_array,
                 (xhci->scratchpad)->sp_dma, (struct dma_attrs *)0);
  kfree((void const *)xhci->scratchpad);
  xhci->scratchpad = (struct xhci_scratchpad *)0;
  return;
}
}
struct xhci_command *xhci_alloc_command(struct xhci_hcd *xhci , bool allocate_in_ctx ,
                                        bool allocate_completion , gfp_t mem_flags )
{
  struct xhci_command *command ;
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = kzalloc(48UL, mem_flags);
  command = (struct xhci_command *)tmp;
  if ((unsigned long )command == (unsigned long )((struct xhci_command *)0)) {
    return ((struct xhci_command *)0);
  } else {
  }
  if ((int )allocate_in_ctx) {
    command->in_ctx = xhci_alloc_container_ctx(xhci, 2, mem_flags);
    if ((unsigned long )command->in_ctx == (unsigned long )((struct xhci_container_ctx *)0)) {
      kfree((void const *)command);
      return ((struct xhci_command *)0);
    } else {
    }
  } else {
  }
  if ((int )allocate_completion) {
    tmp___0 = kzalloc(96UL, mem_flags);
    command->completion = (struct completion *)tmp___0;
    if ((unsigned long )command->completion == (unsigned long )((struct completion *)0)) {
      xhci_free_container_ctx(xhci, command->in_ctx);
      kfree((void const *)command);
      return ((struct xhci_command *)0);
    } else {
    }
    init_completion(command->completion);
  } else {
  }
  command->status = 0U;
  INIT_LIST_HEAD(& command->cmd_list);
  return (command);
}
}
void xhci_urb_free_priv(struct xhci_hcd *xhci , struct urb_priv *urb_priv )
{
  {
  if ((unsigned long )urb_priv != (unsigned long )((struct urb_priv *)0)) {
    kfree((void const *)urb_priv->td[0]);
    kfree((void const *)urb_priv);
  } else {
  }
  return;
}
}
void xhci_free_command(struct xhci_hcd *xhci , struct xhci_command *command )
{
  {
  xhci_free_container_ctx(xhci, command->in_ctx);
  kfree((void const *)command->completion);
  kfree((void const *)command);
  return;
}
}
void xhci_mem_cleanup(struct xhci_hcd *xhci )
{
  struct device *dev ;
  struct usb_hcd *tmp ;
  int size ;
  int i ;
  int j ;
  int num_ports ;
  struct xhci_interval_bw_table *bwt ;
  struct list_head *ep ;
  int tmp___0 ;
  struct xhci_tt_bw_info *tt ;
  struct xhci_tt_bw_info *n ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  tmp = xhci_to_hcd(xhci);
  dev = tmp->self.controller;
  ldv_del_timer_sync_68(& xhci->cmd_timer);
  size = (int )(xhci->erst.num_entries * 16U);
  if ((unsigned long )xhci->erst.entries != (unsigned long )((struct xhci_erst_entry *)0)) {
    dma_free_attrs(dev, (size_t )size, (void *)xhci->erst.entries, xhci->erst.erst_dma_addr,
                   (struct dma_attrs *)0);
  } else {
  }
  xhci->erst.entries = (struct xhci_erst_entry *)0;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "Freed ERST");
  if ((unsigned long )xhci->event_ring != (unsigned long )((struct xhci_ring *)0)) {
    xhci_ring_free(xhci, xhci->event_ring);
  } else {
  }
  xhci->event_ring = (struct xhci_ring *)0;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "Freed event ring");
  if ((unsigned long )xhci->lpm_command != (unsigned long )((struct xhci_command *)0)) {
    xhci_free_command(xhci, xhci->lpm_command);
  } else {
  }
  if ((unsigned long )xhci->cmd_ring != (unsigned long )((struct xhci_ring *)0)) {
    xhci_ring_free(xhci, xhci->cmd_ring);
  } else {
  }
  xhci->cmd_ring = (struct xhci_ring *)0;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "Freed command ring");
  xhci_cleanup_command_queue(xhci);
  num_ports = (int )(xhci->hcs_params1 >> 24) & 127;
  i = 0;
  goto ldv_34629;
  ldv_34628:
  bwt = & (xhci->rh_bw + (unsigned long )i)->bw_table;
  j = 0;
  goto ldv_34626;
  ldv_34625:
  ep = & bwt->interval_bw[j].endpoints;
  goto ldv_34623;
  ldv_34622:
  list_del_init(ep->next);
  ldv_34623:
  tmp___0 = list_empty((struct list_head const *)ep);
  if (tmp___0 == 0) {
    goto ldv_34622;
  } else {
  }
  j = j + 1;
  ldv_34626: ;
  if (j <= 15) {
    goto ldv_34625;
  } else {
  }
  i = i + 1;
  ldv_34629: ;
  if (i < num_ports) {
    goto ldv_34628;
  } else {
  }
  i = 1;
  goto ldv_34632;
  ldv_34631:
  xhci_free_virt_device(xhci, i);
  i = i + 1;
  ldv_34632: ;
  if (i <= 255) {
    goto ldv_34631;
  } else {
  }
  if ((unsigned long )xhci->segment_pool != (unsigned long )((struct dma_pool *)0)) {
    dma_pool_destroy(xhci->segment_pool);
  } else {
  }
  xhci->segment_pool = (struct dma_pool *)0;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "Freed segment pool");
  if ((unsigned long )xhci->device_pool != (unsigned long )((struct dma_pool *)0)) {
    dma_pool_destroy(xhci->device_pool);
  } else {
  }
  xhci->device_pool = (struct dma_pool *)0;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "Freed device context pool");
  if ((unsigned long )xhci->small_streams_pool != (unsigned long )((struct dma_pool *)0)) {
    dma_pool_destroy(xhci->small_streams_pool);
  } else {
  }
  xhci->small_streams_pool = (struct dma_pool *)0;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "Freed small stream array pool");
  if ((unsigned long )xhci->medium_streams_pool != (unsigned long )((struct dma_pool *)0)) {
    dma_pool_destroy(xhci->medium_streams_pool);
  } else {
  }
  xhci->medium_streams_pool = (struct dma_pool *)0;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "Freed medium stream array pool");
  if ((unsigned long )xhci->dcbaa != (unsigned long )((struct xhci_device_context_array *)0)) {
    dma_free_attrs(dev, 2056UL, (void *)xhci->dcbaa, (xhci->dcbaa)->dma, (struct dma_attrs *)0);
  } else {
  }
  xhci->dcbaa = (struct xhci_device_context_array *)0;
  scratchpad_free(xhci);
  if ((unsigned long )xhci->rh_bw == (unsigned long )((struct xhci_root_port_bw_info *)0)) {
    goto no_bw;
  } else {
  }
  i = 0;
  goto ldv_34647;
  ldv_34646:
  __mptr = (struct list_head const *)(xhci->rh_bw + (unsigned long )i)->tts.next;
  tt = (struct xhci_tt_bw_info *)__mptr;
  __mptr___0 = (struct list_head const *)tt->tt_list.next;
  n = (struct xhci_tt_bw_info *)__mptr___0;
  goto ldv_34644;
  ldv_34643:
  list_del(& tt->tt_list);
  kfree((void const *)tt);
  tt = n;
  __mptr___1 = (struct list_head const *)n->tt_list.next;
  n = (struct xhci_tt_bw_info *)__mptr___1;
  ldv_34644: ;
  if ((unsigned long )(xhci->rh_bw + (unsigned long )i) != (unsigned long )tt) {
    goto ldv_34643;
  } else {
  }
  i = i + 1;
  ldv_34647: ;
  if (i < num_ports) {
    goto ldv_34646;
  } else {
  }
  no_bw:
  xhci->cmd_ring_reserved_trbs = 0U;
  xhci->num_usb2_ports = 0U;
  xhci->num_usb3_ports = 0U;
  xhci->num_active_eps = 0U;
  kfree((void const *)xhci->usb2_ports);
  kfree((void const *)xhci->usb3_ports);
  kfree((void const *)xhci->port_array);
  kfree((void const *)xhci->rh_bw);
  kfree((void const *)xhci->ext_caps);
  xhci->page_size = 0;
  xhci->page_shift = 0;
  xhci->bus_state[0].bus_suspended = 0UL;
  xhci->bus_state[1].bus_suspended = 0UL;
  return;
}
}
static int xhci_test_trb_in_td(struct xhci_hcd *xhci , struct xhci_segment *input_seg ,
                               union xhci_trb *start_trb , union xhci_trb *end_trb ,
                               dma_addr_t input_dma , struct xhci_segment *result_seg ,
                               char *test_name , int test_number )
{
  unsigned long long start_dma ;
  unsigned long long end_dma ;
  struct xhci_segment *seg ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  struct usb_hcd *tmp___1 ;
  struct usb_hcd *tmp___2 ;
  {
  start_dma = xhci_trb_virt_to_dma(input_seg, start_trb);
  end_dma = xhci_trb_virt_to_dma(input_seg, end_trb);
  seg = trb_in_td(input_seg, start_trb, end_trb, input_dma);
  if ((unsigned long )seg != (unsigned long )result_seg) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN: %s TRB math test %d failed!\n",
             test_name, test_number);
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "Tested TRB math w/ seg %p and input DMA 0x%llx\n",
             input_seg, input_dma);
    tmp___1 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___1->self.controller, "starting TRB %p (0x%llx DMA), ending TRB %p (0x%llx DMA)\n",
             start_trb, start_dma, end_trb, end_dma);
    tmp___2 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___2->self.controller, "Expected seg %p, got seg %p\n",
             result_seg, seg);
    return (-1);
  } else {
  }
  return (0);
}
}
static int xhci_check_trb_in_td_math(struct xhci_hcd *xhci , gfp_t mem_flags )
{
  struct __anonstruct_simple_test_vector_206 simple_test_vector[8U] ;
  struct __anonstruct_complex_test_vector_208 complex_test_vector[8U] ;
  unsigned int num_tests ;
  int i ;
  int ret ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  simple_test_vector[0].input_dma = 0ULL;
  simple_test_vector[0].result_seg = (struct xhci_segment *)0;
  simple_test_vector[1].input_dma = ((xhci->event_ring)->first_seg)->dma - 16ULL;
  simple_test_vector[1].result_seg = (struct xhci_segment *)0;
  simple_test_vector[2].input_dma = ((xhci->event_ring)->first_seg)->dma - 1ULL;
  simple_test_vector[2].result_seg = (struct xhci_segment *)0;
  simple_test_vector[3].input_dma = ((xhci->event_ring)->first_seg)->dma;
  simple_test_vector[3].result_seg = (xhci->event_ring)->first_seg;
  simple_test_vector[4].input_dma = ((xhci->event_ring)->first_seg)->dma + 1008ULL;
  simple_test_vector[4].result_seg = (xhci->event_ring)->first_seg;
  simple_test_vector[5].input_dma = ((xhci->event_ring)->first_seg)->dma + 1009ULL;
  simple_test_vector[5].result_seg = (struct xhci_segment *)0;
  simple_test_vector[6].input_dma = ((xhci->event_ring)->first_seg)->dma + 1024ULL;
  simple_test_vector[6].result_seg = (struct xhci_segment *)0;
  simple_test_vector[7].input_dma = 0xffffffffffffffffULL;
  simple_test_vector[7].result_seg = (struct xhci_segment *)0;
  complex_test_vector[0].input_seg = (xhci->event_ring)->first_seg;
  complex_test_vector[0].start_trb = ((xhci->event_ring)->first_seg)->trbs;
  complex_test_vector[0].end_trb = ((xhci->event_ring)->first_seg)->trbs + 63UL;
  complex_test_vector[0].input_dma = ((xhci->cmd_ring)->first_seg)->dma;
  complex_test_vector[0].result_seg = (struct xhci_segment *)0;
  complex_test_vector[1].input_seg = (xhci->event_ring)->first_seg;
  complex_test_vector[1].start_trb = ((xhci->event_ring)->first_seg)->trbs;
  complex_test_vector[1].end_trb = ((xhci->cmd_ring)->first_seg)->trbs + 63UL;
  complex_test_vector[1].input_dma = ((xhci->cmd_ring)->first_seg)->dma;
  complex_test_vector[1].result_seg = (struct xhci_segment *)0;
  complex_test_vector[2].input_seg = (xhci->event_ring)->first_seg;
  complex_test_vector[2].start_trb = ((xhci->cmd_ring)->first_seg)->trbs;
  complex_test_vector[2].end_trb = ((xhci->cmd_ring)->first_seg)->trbs + 63UL;
  complex_test_vector[2].input_dma = ((xhci->cmd_ring)->first_seg)->dma;
  complex_test_vector[2].result_seg = (struct xhci_segment *)0;
  complex_test_vector[3].input_seg = (xhci->event_ring)->first_seg;
  complex_test_vector[3].start_trb = ((xhci->event_ring)->first_seg)->trbs;
  complex_test_vector[3].end_trb = ((xhci->event_ring)->first_seg)->trbs + 3UL;
  complex_test_vector[3].input_dma = ((xhci->event_ring)->first_seg)->dma + 64ULL;
  complex_test_vector[3].result_seg = (struct xhci_segment *)0;
  complex_test_vector[4].input_seg = (xhci->event_ring)->first_seg;
  complex_test_vector[4].start_trb = ((xhci->event_ring)->first_seg)->trbs + 3UL;
  complex_test_vector[4].end_trb = ((xhci->event_ring)->first_seg)->trbs + 6UL;
  complex_test_vector[4].input_dma = ((xhci->event_ring)->first_seg)->dma + 32ULL;
  complex_test_vector[4].result_seg = (struct xhci_segment *)0;
  complex_test_vector[5].input_seg = (xhci->event_ring)->first_seg;
  complex_test_vector[5].start_trb = ((xhci->event_ring)->first_seg)->trbs + 61UL;
  complex_test_vector[5].end_trb = ((xhci->event_ring)->first_seg)->trbs + 1UL;
  complex_test_vector[5].input_dma = ((xhci->event_ring)->first_seg)->dma + 32ULL;
  complex_test_vector[5].result_seg = (struct xhci_segment *)0;
  complex_test_vector[6].input_seg = (xhci->event_ring)->first_seg;
  complex_test_vector[6].start_trb = ((xhci->event_ring)->first_seg)->trbs + 61UL;
  complex_test_vector[6].end_trb = ((xhci->event_ring)->first_seg)->trbs + 1UL;
  complex_test_vector[6].input_dma = ((xhci->event_ring)->first_seg)->dma + 960ULL;
  complex_test_vector[6].result_seg = (struct xhci_segment *)0;
  complex_test_vector[7].input_seg = (xhci->event_ring)->first_seg;
  complex_test_vector[7].start_trb = ((xhci->event_ring)->first_seg)->trbs + 61UL;
  complex_test_vector[7].end_trb = ((xhci->event_ring)->first_seg)->trbs + 1UL;
  complex_test_vector[7].input_dma = ((xhci->cmd_ring)->first_seg)->dma + 32ULL;
  complex_test_vector[7].result_seg = (struct xhci_segment *)0;
  num_tests = 8U;
  i = 0;
  goto ldv_34683;
  ldv_34682:
  ret = xhci_test_trb_in_td(xhci, (xhci->event_ring)->first_seg, ((xhci->event_ring)->first_seg)->trbs,
                            ((xhci->event_ring)->first_seg)->trbs + 63UL, simple_test_vector[i].input_dma,
                            simple_test_vector[i].result_seg, (char *)"Simple", i);
  if (ret < 0) {
    return (ret);
  } else {
  }
  i = i + 1;
  ldv_34683: ;
  if ((unsigned int )i < num_tests) {
    goto ldv_34682;
  } else {
  }
  num_tests = 8U;
  i = 0;
  goto ldv_34688;
  ldv_34687:
  ret = xhci_test_trb_in_td(xhci, complex_test_vector[i].input_seg, complex_test_vector[i].start_trb,
                            complex_test_vector[i].end_trb, complex_test_vector[i].input_dma,
                            complex_test_vector[i].result_seg, (char *)"Complex",
                            i);
  if (ret < 0) {
    return (ret);
  } else {
  }
  i = i + 1;
  ldv_34688: ;
  if ((unsigned int )i < num_tests) {
    goto ldv_34687;
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_check_trb_in_td_math";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-mem.o.c.prepared";
  descriptor.format = "TRB math tests passed.\n";
  descriptor.lineno = 2177U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "TRB math tests passed.\n");
  } else {
  }
  return (0);
}
}
static void xhci_set_hc_event_deq(struct xhci_hcd *xhci )
{
  u64 temp ;
  dma_addr_t deq ;
  struct usb_hcd *tmp ;
  int tmp___0 ;
  {
  deq = xhci_trb_virt_to_dma((xhci->event_ring)->deq_seg, (xhci->event_ring)->dequeue);
  if (deq == 0ULL) {
    tmp___0 = preempt_count();
    if (((unsigned long )tmp___0 & 2096896UL) == 0UL) {
      tmp = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp->self.controller, "WARN something wrong with SW event ring dequeue ptr.\n");
    } else {
    }
  } else {
  }
  temp = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->ir_set)->erst_dequeue);
  temp = temp & 15ULL;
  temp = temp & 0xfffffffffffffff7ULL;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "// Write event ring dequeue pointer, preserving EHB bit");
  xhci_write_64(xhci, (deq & 0xfffffffffffffff0ULL) | temp, & (xhci->ir_set)->erst_dequeue);
  return;
}
}
static void xhci_add_in_port(struct xhci_hcd *xhci , unsigned int num_ports , __le32 *addr ,
                             u8 major_revision , int max_caps )
{
  u32 temp ;
  u32 port_offset ;
  u32 port_count ;
  int i ;
  struct usb_hcd *tmp ;
  unsigned int tmp___0 ;
  struct usb_hcd *tmp___1 ;
  struct usb_hcd *tmp___2 ;
  {
  if ((unsigned int )major_revision > 3U) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "Ignoring unknown port speed, Ext Cap %p, revision = 0x%x\n",
             addr, (int )major_revision);
    return;
  } else {
  }
  temp = readl((void const volatile *)addr + 2U);
  port_offset = temp & 255U;
  port_count = (temp >> 8) & 255U;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "Ext Cap %p, port offset = %u, count = %u, revision = 0x%x",
                 addr, port_offset, port_count, (int )major_revision);
  if (port_offset == 0U || (port_offset + port_count) - 1U > num_ports) {
    return;
  } else {
  }
  if ((unsigned int )major_revision <= 2U && xhci->num_ext_caps < (unsigned int )max_caps) {
    tmp___0 = xhci->num_ext_caps;
    xhci->num_ext_caps = xhci->num_ext_caps + 1U;
    *(xhci->ext_caps + (unsigned long )tmp___0) = temp;
  } else {
  }
  if (((unsigned int )xhci->hci_version == 150U && (unsigned int )major_revision != 3U) && (temp & 65536U) != 0U) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "xHCI 0.96: support USB2 software lpm");
    xhci->sw_lpm_support = 1U;
  } else {
  }
  if ((unsigned int )xhci->hci_version > 255U && (unsigned int )major_revision != 3U) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "xHCI 1.0: support USB2 software lpm");
    xhci->sw_lpm_support = 1U;
    if ((temp & 524288U) != 0U) {
      xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "xHCI 1.0: support USB2 hardware lpm");
      xhci->hw_lpm_support = 1U;
    } else {
    }
  } else {
  }
  port_offset = port_offset - 1U;
  i = (int )port_offset;
  goto ldv_34710;
  ldv_34709: ;
  if ((unsigned int )*(xhci->port_array + (unsigned long )i) != 0U) {
    tmp___1 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___1->self.controller, "Duplicate port entry, Ext Cap %p, port %u\n",
             addr, i);
    tmp___2 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___2->self.controller, "Port was marked as USB %u, duplicated as USB %u\n",
             (int )*(xhci->port_array + (unsigned long )i), (int )major_revision);
    if ((int )*(xhci->port_array + (unsigned long )i) != (int )major_revision && (unsigned int )*(xhci->port_array + (unsigned long )i) != 255U) {
      if ((unsigned int )*(xhci->port_array + (unsigned long )i) == 3U) {
        xhci->num_usb3_ports = xhci->num_usb3_ports - 1U;
      } else {
        xhci->num_usb2_ports = xhci->num_usb2_ports - 1U;
      }
      *(xhci->port_array + (unsigned long )i) = 255U;
    } else {
    }
    goto ldv_34708;
  } else {
  }
  *(xhci->port_array + (unsigned long )i) = major_revision;
  if ((unsigned int )major_revision == 3U) {
    xhci->num_usb3_ports = xhci->num_usb3_ports + 1U;
  } else {
    xhci->num_usb2_ports = xhci->num_usb2_ports + 1U;
  }
  ldv_34708:
  i = i + 1;
  ldv_34710: ;
  if ((u32 )i < port_offset + port_count) {
    goto ldv_34709;
  } else {
  }
  return;
}
}
static int xhci_setup_port_arrays(struct xhci_hcd *xhci , gfp_t flags )
{
  __le32 *addr ;
  __le32 *tmp_addr ;
  u32 offset ;
  u32 tmp_offset ;
  unsigned int num_ports ;
  int i ;
  int j ;
  int port_index ;
  int cap_count ;
  unsigned int tmp ;
  struct usb_hcd *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  struct xhci_interval_bw_table *bw_table ;
  u32 cap_id ;
  void *tmp___3 ;
  u32 cap_id___0 ;
  struct usb_hcd *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  {
  cap_count = 0;
  addr = & (xhci->cap_regs)->hcc_params;
  tmp = readl((void const volatile *)addr);
  offset = tmp >> 16;
  if (offset == 0U) {
    tmp___0 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___0->self.controller, "No Extended Capability registers, unable to set up roothub.\n");
    return (-19);
  } else {
  }
  num_ports = (xhci->hcs_params1 >> 24) & 127U;
  tmp___1 = kzalloc((unsigned long )num_ports, flags);
  xhci->port_array = (u8 *)tmp___1;
  if ((unsigned long )xhci->port_array == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  tmp___2 = kzalloc((unsigned long )num_ports * 688UL, flags);
  xhci->rh_bw = (struct xhci_root_port_bw_info *)tmp___2;
  if ((unsigned long )xhci->rh_bw == (unsigned long )((struct xhci_root_port_bw_info *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_34730;
  ldv_34729:
  INIT_LIST_HEAD(& (xhci->rh_bw + (unsigned long )i)->tts);
  bw_table = & (xhci->rh_bw + (unsigned long )i)->bw_table;
  j = 0;
  goto ldv_34727;
  ldv_34726:
  INIT_LIST_HEAD(& bw_table->interval_bw[j].endpoints);
  j = j + 1;
  ldv_34727: ;
  if (j <= 15) {
    goto ldv_34726;
  } else {
  }
  i = i + 1;
  ldv_34730: ;
  if ((unsigned int )i < num_ports) {
    goto ldv_34729;
  } else {
  }
  addr = & (xhci->cap_regs)->hc_capbase + (unsigned long )offset;
  tmp_addr = addr;
  tmp_offset = offset;
  ldv_34733:
  cap_id = readl((void const volatile *)tmp_addr);
  if ((cap_id & 255U) == 2U) {
    cap_count = cap_count + 1;
  } else {
  }
  tmp_offset = (cap_id >> 8) & 255U;
  tmp_addr = tmp_addr + (unsigned long )tmp_offset;
  if (tmp_offset != 0U) {
    goto ldv_34733;
  } else {
  }
  tmp___3 = kzalloc((unsigned long )cap_count * 4UL, flags);
  xhci->ext_caps = (u32 *)tmp___3;
  if ((unsigned long )xhci->ext_caps == (unsigned long )((u32 *)0U)) {
    return (-12);
  } else {
  }
  ldv_34737:
  cap_id___0 = readl((void const volatile *)addr);
  if ((cap_id___0 & 255U) == 2U) {
    xhci_add_in_port(xhci, num_ports, addr, (int )((unsigned char )(cap_id___0 >> 24)),
                     cap_count);
  } else {
  }
  offset = (cap_id___0 >> 8) & 255U;
  if (offset == 0U || xhci->num_usb2_ports + xhci->num_usb3_ports == num_ports) {
    goto ldv_34736;
  } else {
  }
  addr = addr + (unsigned long )offset;
  goto ldv_34737;
  ldv_34736: ;
  if (xhci->num_usb2_ports == 0U && xhci->num_usb3_ports == 0U) {
    tmp___4 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___4->self.controller, "No ports on the roothubs?\n");
    return (-19);
  } else {
  }
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "Found %u USB 2.0 ports and %u USB 3.0 ports.",
                 xhci->num_usb2_ports, xhci->num_usb3_ports);
  if (xhci->num_usb3_ports > 15U) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "Limiting USB 3.0 roothub ports to 15.");
    xhci->num_usb3_ports = 15U;
  } else {
  }
  if (xhci->num_usb2_ports > 31U) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "Limiting USB 2.0 roothub ports to %u.",
                   31);
    xhci->num_usb2_ports = 31U;
  } else {
  }
  if (xhci->num_usb2_ports != 0U) {
    tmp___5 = kmalloc((unsigned long )xhci->num_usb2_ports * 8UL, flags);
    xhci->usb2_ports = (__le32 **)tmp___5;
    if ((unsigned long )xhci->usb2_ports == (unsigned long )((__le32 **)0U)) {
      return (-12);
    } else {
    }
    port_index = 0;
    i = 0;
    goto ldv_34741;
    ldv_34740: ;
    if (((unsigned int )*(xhci->port_array + (unsigned long )i) == 3U || (unsigned int )*(xhci->port_array + (unsigned long )i) == 0U) || (unsigned int )*(xhci->port_array + (unsigned long )i) == 255U) {
      goto ldv_34738;
    } else {
    }
    *(xhci->usb2_ports + (unsigned long )port_index) = & (xhci->op_regs)->port_status_base + (unsigned long )(i * 4);
    xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "USB 2.0 port at index %u, addr = %p",
                   i, *(xhci->usb2_ports + (unsigned long )port_index));
    port_index = port_index + 1;
    if ((unsigned int )port_index == xhci->num_usb2_ports) {
      goto ldv_34739;
    } else {
    }
    ldv_34738:
    i = i + 1;
    ldv_34741: ;
    if ((unsigned int )i < num_ports) {
      goto ldv_34740;
    } else {
    }
    ldv_34739: ;
  } else {
  }
  if (xhci->num_usb3_ports != 0U) {
    tmp___6 = kmalloc((unsigned long )xhci->num_usb3_ports * 8UL, flags);
    xhci->usb3_ports = (__le32 **)tmp___6;
    if ((unsigned long )xhci->usb3_ports == (unsigned long )((__le32 **)0U)) {
      return (-12);
    } else {
    }
    port_index = 0;
    i = 0;
    goto ldv_34744;
    ldv_34743: ;
    if ((unsigned int )*(xhci->port_array + (unsigned long )i) == 3U) {
      *(xhci->usb3_ports + (unsigned long )port_index) = & (xhci->op_regs)->port_status_base + (unsigned long )(i * 4);
      xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "USB 3.0 port at index %u, addr = %p",
                     i, *(xhci->usb3_ports + (unsigned long )port_index));
      port_index = port_index + 1;
      if ((unsigned int )port_index == xhci->num_usb3_ports) {
        goto ldv_34742;
      } else {
      }
    } else {
    }
    i = i + 1;
    ldv_34744: ;
    if ((unsigned int )i < num_ports) {
      goto ldv_34743;
    } else {
    }
    ldv_34742: ;
  } else {
  }
  return (0);
}
}
int xhci_mem_init(struct xhci_hcd *xhci , gfp_t flags )
{
  dma_addr_t dma ;
  struct device *dev ;
  struct usb_hcd *tmp ;
  unsigned int val ;
  unsigned int val2 ;
  u64 val_64 ;
  struct xhci_segment *seg ;
  u32 page_size ;
  u32 temp ;
  int i ;
  struct usb_hcd *tmp___0 ;
  unsigned int tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  void *tmp___4 ;
  struct xhci_erst_entry *entry ;
  int tmp___5 ;
  int tmp___6 ;
  struct usb_hcd *tmp___7 ;
  {
  tmp = xhci_to_hcd(xhci);
  dev = tmp->self.controller;
  INIT_LIST_HEAD(& xhci->cmd_list);
  page_size = readl((void const volatile *)(& (xhci->op_regs)->page_size));
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "Supported page size register = 0x%x",
                 page_size);
  i = 0;
  goto ldv_34760;
  ldv_34759: ;
  if ((int )page_size & 1) {
    goto ldv_34758;
  } else {
  }
  page_size = page_size >> 1;
  i = i + 1;
  ldv_34760: ;
  if (i <= 15) {
    goto ldv_34759;
  } else {
  }
  ldv_34758: ;
  if (i <= 15) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "Supported page size of %iK",
                   (1 << (i + 12)) / 1024);
  } else {
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "WARN: no supported page size\n");
  }
  xhci->page_shift = 12;
  xhci->page_size = 1 << xhci->page_shift;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "HCD page size set to %iK", xhci->page_size / 1024);
  tmp___1 = readl((void const volatile *)(& (xhci->cap_regs)->hcs_params1));
  val = tmp___1 & 255U;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "// xHC can handle at most %d device slots.",
                 val);
  val2 = readl((void const volatile *)(& (xhci->op_regs)->config_reg));
  val = (val2 & 4294967040U) | val;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "// Setting Max device slots reg = 0x%x.",
                 val);
  writel(val, (void volatile *)(& (xhci->op_regs)->config_reg));
  tmp___2 = dma_alloc_attrs(dev, 2056UL, & dma, 208U, (struct dma_attrs *)0);
  xhci->dcbaa = (struct xhci_device_context_array *)tmp___2;
  if ((unsigned long )xhci->dcbaa == (unsigned long )((struct xhci_device_context_array *)0)) {
    goto fail;
  } else {
  }
  memset((void *)xhci->dcbaa, 0, 2056UL);
  (xhci->dcbaa)->dma = dma;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "// Device context base array address = 0x%llx (DMA), %p (virt)",
                 (xhci->dcbaa)->dma, xhci->dcbaa);
  xhci_write_64(xhci, dma, & (xhci->op_regs)->dcbaa_ptr);
  xhci->segment_pool = dma_pool_create("xHCI ring segments", dev, 1024UL, 1024UL,
                                       (size_t )xhci->page_size);
  xhci->device_pool = dma_pool_create("xHCI input/output contexts", dev, 2112UL, 64UL,
                                      (size_t )xhci->page_size);
  if ((unsigned long )xhci->segment_pool == (unsigned long )((struct dma_pool *)0) || (unsigned long )xhci->device_pool == (unsigned long )((struct dma_pool *)0)) {
    goto fail;
  } else {
  }
  xhci->small_streams_pool = dma_pool_create("xHCI 256 byte stream ctx arrays", dev,
                                             256UL, 16UL, 0UL);
  xhci->medium_streams_pool = dma_pool_create("xHCI 1KB stream ctx arrays", dev, 1024UL,
                                              16UL, 0UL);
  if ((unsigned long )xhci->small_streams_pool == (unsigned long )((struct dma_pool *)0) || (unsigned long )xhci->medium_streams_pool == (unsigned long )((struct dma_pool *)0)) {
    goto fail;
  } else {
  }
  xhci->cmd_ring = xhci_ring_alloc(xhci, 1U, 1U, 5, flags);
  if ((unsigned long )xhci->cmd_ring == (unsigned long )((struct xhci_ring *)0)) {
    goto fail;
  } else {
  }
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "Allocated command ring at %p",
                 xhci->cmd_ring);
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "First segment DMA is 0x%llx", ((xhci->cmd_ring)->first_seg)->dma);
  val_64 = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->op_regs)->cmd_ring);
  val_64 = ((val_64 & 63ULL) | (((xhci->cmd_ring)->first_seg)->dma & 0xffffffffffffffc0ULL)) | (unsigned long long )(xhci->cmd_ring)->cycle_state;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "// Setting command ring address to 0x%x",
                 val);
  xhci_write_64(xhci, val_64, & (xhci->op_regs)->cmd_ring);
  xhci_dbg_cmd_ptrs(xhci);
  xhci->lpm_command = xhci_alloc_command(xhci, 1, 1, flags);
  if ((unsigned long )xhci->lpm_command == (unsigned long )((struct xhci_command *)0)) {
    goto fail;
  } else {
  }
  xhci->cmd_ring_reserved_trbs = xhci->cmd_ring_reserved_trbs + 1U;
  val = readl((void const volatile *)(& (xhci->cap_regs)->db_off));
  val = val & 4294967292U;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "// Doorbell array is located at offset 0x%x from cap regs base addr",
                 val);
  xhci->dba = (struct xhci_doorbell_array *)xhci->cap_regs + (unsigned long )val;
  xhci_dbg_regs(xhci);
  xhci_print_run_regs(xhci);
  xhci->ir_set = (struct xhci_intr_reg *)(& (xhci->run_regs)->ir_set);
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "// Allocating event ring");
  xhci->event_ring = xhci_ring_alloc(xhci, 1U, 1U, 6, flags);
  if ((unsigned long )xhci->event_ring == (unsigned long )((struct xhci_ring *)0)) {
    goto fail;
  } else {
  }
  tmp___3 = xhci_check_trb_in_td_math(xhci, flags);
  if (tmp___3 < 0) {
    goto fail;
  } else {
  }
  tmp___4 = dma_alloc_attrs(dev, 16UL, & dma, 208U, (struct dma_attrs *)0);
  xhci->erst.entries = (struct xhci_erst_entry *)tmp___4;
  if ((unsigned long )xhci->erst.entries == (unsigned long )((struct xhci_erst_entry *)0)) {
    goto fail;
  } else {
  }
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "// Allocated event ring segment table at 0x%llx",
                 dma);
  memset((void *)xhci->erst.entries, 0, 16UL);
  xhci->erst.num_entries = 1U;
  xhci->erst.erst_dma_addr = dma;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "Set ERST to 0; private num segs = %i, virt addr = %p, dma addr = 0x%llx",
                 xhci->erst.num_entries, xhci->erst.entries, xhci->erst.erst_dma_addr);
  val = 0U;
  seg = (xhci->event_ring)->first_seg;
  goto ldv_34764;
  ldv_34763:
  entry = xhci->erst.entries + (unsigned long )val;
  entry->seg_addr = seg->dma;
  entry->seg_size = 64U;
  entry->rsvd = 0U;
  seg = seg->next;
  val = val + 1U;
  ldv_34764: ;
  if (val == 0U) {
    goto ldv_34763;
  } else {
  }
  val = readl((void const volatile *)(& (xhci->ir_set)->erst_size));
  val = val & 4294901760U;
  val = val | 1U;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "// Write ERST size = %i to ir_set 0 (some bits preserved)",
                 val);
  writel(val, (void volatile *)(& (xhci->ir_set)->erst_size));
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "// Set ERST entries to point to event ring.");
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "// Set ERST base address for ir_set 0 = 0x%llx",
                 xhci->erst.erst_dma_addr);
  val_64 = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->ir_set)->erst_base);
  val_64 = val_64 & 15ULL;
  val_64 = (xhci->erst.erst_dma_addr & 0xfffffffffffffff0ULL) | val_64;
  xhci_write_64(xhci, val_64, & (xhci->ir_set)->erst_base);
  xhci_set_hc_event_deq(xhci);
  xhci_dbg_trace(xhci, & trace_xhci_dbg_init___0, "Wrote ERST address to ir_set 0.");
  xhci_print_ir_set(xhci, 0);
  reg_timer_6(& xhci->cmd_timer);
  xhci->cmd_timer.data = (unsigned long )xhci;
  xhci->cmd_timer.function = & xhci_handle_command_timeout;
  init_completion(& xhci->addr_dev);
  i = 0;
  goto ldv_34767;
  ldv_34766:
  xhci->devs[i] = (struct xhci_virt_device *)0;
  i = i + 1;
  ldv_34767: ;
  if (i <= 255) {
    goto ldv_34766;
  } else {
  }
  i = 0;
  goto ldv_34770;
  ldv_34769:
  xhci->bus_state[0].resume_done[i] = 0UL;
  xhci->bus_state[1].resume_done[i] = 0UL;
  init_completion((struct completion *)(& xhci->bus_state[1].rexit_done) + (unsigned long )i);
  i = i + 1;
  ldv_34770: ;
  if (i <= 30) {
    goto ldv_34769;
  } else {
  }
  tmp___5 = scratchpad_alloc(xhci, flags);
  if (tmp___5 != 0) {
    goto fail;
  } else {
  }
  tmp___6 = xhci_setup_port_arrays(xhci, flags);
  if (tmp___6 != 0) {
    goto fail;
  } else {
  }
  temp = readl((void const volatile *)(& (xhci->op_regs)->dev_notification));
  temp = temp & 4294901760U;
  temp = temp | 2U;
  writel(temp, (void volatile *)(& (xhci->op_regs)->dev_notification));
  return (0);
  fail:
  tmp___7 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___7->self.controller, "Couldn\'t initialize memory\n");
  xhci_halt(xhci);
  xhci_reset(xhci);
  xhci_mem_cleanup(xhci);
  return (-12);
}
}
void choose_timer_5(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_5 = 2;
  return;
}
}
void choose_timer_6(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_6 = 2;
  return;
}
}
int reg_timer_6(struct timer_list *timer )
{
  {
  ldv_timer_list_6 = timer;
  ldv_timer_state_6 = 1;
  return (0);
}
}
void activate_pending_timer_5(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_5 == (unsigned long )timer) {
    if (ldv_timer_state_5 == 2 || pending_flag != 0) {
      ldv_timer_list_5 = timer;
      ldv_timer_list_5->data = data;
      ldv_timer_state_5 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_5(timer);
  ldv_timer_list_5->data = data;
  return;
}
}
void disable_suitable_timer_6(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_6) {
    ldv_timer_state_6 = 0;
    return;
  } else {
  }
  return;
}
}
void disable_suitable_timer_5(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_5) {
    ldv_timer_state_5 = 0;
    return;
  } else {
  }
  return;
}
}
int reg_timer_5(struct timer_list *timer )
{
  {
  ldv_timer_list_5 = timer;
  ldv_timer_state_5 = 1;
  return (0);
}
}
void activate_pending_timer_6(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_6 == (unsigned long )timer) {
    if (ldv_timer_state_6 == 2 || pending_flag != 0) {
      ldv_timer_list_6 = timer;
      ldv_timer_list_6->data = data;
      ldv_timer_state_6 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_6(timer);
  ldv_timer_list_6->data = data;
  return;
}
}
void *ldv_dma_pool_alloc_64(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 )
{
  {
  ldv_check_alloc_flags(flags);
  dma_pool_alloc(ldv_func_arg1, flags, ldv_func_arg3);
  return ((void *)0);
}
}
void *ldv_dma_pool_alloc_65(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 )
{
  {
  ldv_check_alloc_flags(flags);
  dma_pool_alloc(ldv_func_arg1, flags, ldv_func_arg3);
  return ((void *)0);
}
}
void *ldv_dma_pool_alloc_66(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 )
{
  {
  ldv_check_alloc_flags(flags);
  dma_pool_alloc(ldv_func_arg1, flags, ldv_func_arg3);
  return ((void *)0);
}
}
void *ldv_dma_pool_alloc_67(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 )
{
  {
  ldv_check_alloc_flags(flags);
  dma_pool_alloc(ldv_func_arg1, flags, ldv_func_arg3);
  return ((void *)0);
}
}
int ldv_del_timer_sync_68(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_6(ldv_func_arg1);
  return (ldv_func_res);
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
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static void ldv_spin_lock_75(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_79(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void complete(struct completion * ) ;
__inline static int timer_pending(struct timer_list const *timer )
{
  {
  return ((unsigned long )timer->entry.next != (unsigned long )((struct list_head * )0));
}
}
extern int del_timer(struct timer_list * ) ;
int ldv_del_timer_93(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_95(struct timer_list *ldv_func_arg1 ) ;
int ldv_mod_timer_94(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_96(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_97(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_98(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern struct scatterlist *sg_next(struct scatterlist * ) ;
extern int ___ratelimit(struct ratelimit_state * , char const * ) ;
__inline static int usb_urb_dir_in(struct urb *urb )
{
  {
  return ((urb->transfer_flags & 512U) != 0U);
}
}
__inline static struct usb_hcd *bus_to_hcd(struct usb_bus *bus )
{
  struct usb_bus const *__mptr ;
  {
  __mptr = (struct usb_bus const *)bus;
  return ((struct usb_hcd *)__mptr);
}
}
extern int usb_hcd_link_urb_to_ep(struct usb_hcd * , struct urb * ) ;
extern void usb_hc_died(struct usb_hcd * ) ;
extern void usb_wakeup_notification(struct usb_device * , unsigned int ) ;
extern void usb_amd_quirk_pll_disable(void) ;
extern void usb_amd_quirk_pll_enable(void) ;
__inline static unsigned int hcd_index(struct usb_hcd *hcd )
{
  {
  if (hcd->speed == 64) {
    return (0U);
  } else {
    return (1U);
  }
}
}
void xhci_print_trb_offsets(struct xhci_hcd *xhci , union xhci_trb *trb ) ;
void xhci_debug_segment(struct xhci_hcd *xhci , struct xhci_segment *seg ) ;
irqreturn_t xhci_irq(struct usb_hcd *hcd ) ;
void xhci_ring_ep_doorbell(struct xhci_hcd *xhci , unsigned int slot_id , unsigned int ep_index ,
                           unsigned int stream_id ) ;
void xhci_set_link_state(struct xhci_hcd *xhci , __le32 **port_array , int port_id ,
                         u32 link_state ) ;
void xhci_test_and_clear_bit(struct xhci_hcd *xhci , __le32 **port_array , int port_id ,
                             u32 port_bit ) ;
int xhci_find_slot_id_by_port(struct usb_hcd *hcd , struct xhci_hcd *xhci , u16 port ) ;
void xhci_ring_device(struct xhci_hcd *xhci , int slot_id ) ;
__inline static void trace_xhci_dbg_quirks___0(struct va_format *vaf )
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
  tmp___1 = static_key_false(& __tracepoint_xhci_dbg_quirks.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_xhci_dbg_quirks.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/usb/host/xhci-trace.h",
                               48, "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_31528:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct va_format * ))it_func))(__data, vaf);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_31528;
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
__inline static void trace_xhci_dbg_reset_ep___0(struct va_format *vaf )
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
  tmp___1 = static_key_false(& __tracepoint_xhci_dbg_reset_ep.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_xhci_dbg_reset_ep.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/usb/host/xhci-trace.h",
                               53, "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_31562:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct va_format * ))it_func))(__data, vaf);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_31562;
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
__inline static void trace_xhci_dbg_cancel_urb___0(struct va_format *vaf )
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
  tmp___1 = static_key_false(& __tracepoint_xhci_dbg_cancel_urb.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_xhci_dbg_cancel_urb.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/usb/host/xhci-trace.h",
                               58, "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_31596:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct va_format * ))it_func))(__data, vaf);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_31596;
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
__inline static void trace_xhci_dbg_ring_expansion___0(struct va_format *vaf )
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
  tmp___1 = static_key_false(& __tracepoint_xhci_dbg_ring_expansion.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_xhci_dbg_ring_expansion.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/usb/host/xhci-trace.h",
                               68, "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_31664:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct va_format * ))it_func))(__data, vaf);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_31664;
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
struct tracepoint __tracepoint_xhci_cmd_completion ;
__inline static void trace_xhci_cmd_completion(void *trb_va , struct xhci_generic_trb *ev )
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
  tmp___1 = static_key_false(& __tracepoint_xhci_cmd_completion.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_xhci_cmd_completion.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/usb/host/xhci-trace.h",
                               139, "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_31744:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , void * , struct xhci_generic_trb * ))it_func))(__data,
                                                                           trb_va,
                                                                           ev);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_31744;
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
dma_addr_t xhci_trb_virt_to_dma(struct xhci_segment *seg , union xhci_trb *trb )
{
  unsigned long segment_offset ;
  {
  if (((unsigned long )seg == (unsigned long )((struct xhci_segment *)0) || (unsigned long )trb == (unsigned long )((union xhci_trb *)0)) || (unsigned long )seg->trbs > (unsigned long )trb) {
    return (0ULL);
  } else {
  }
  segment_offset = (unsigned long )(((long )trb - (long )seg->trbs) / 16L);
  if (segment_offset > 64UL) {
    return (0ULL);
  } else {
  }
  return (seg->dma + (unsigned long long )(segment_offset * 16UL));
}
}
static bool last_trb_on_last_seg(struct xhci_hcd *xhci , struct xhci_ring *ring ,
                                 struct xhci_segment *seg , union xhci_trb *trb )
{
  {
  if ((unsigned long )xhci->event_ring == (unsigned long )ring) {
    return ((bool )((unsigned long )(seg->trbs + 64UL) == (unsigned long )trb && (unsigned long )seg->next == (unsigned long )(xhci->event_ring)->first_seg));
  } else {
    return ((trb->link.control & 2U) != 0U);
  }
}
}
static int last_trb(struct xhci_hcd *xhci , struct xhci_ring *ring , struct xhci_segment *seg ,
                    union xhci_trb *trb )
{
  {
  if ((unsigned long )xhci->event_ring == (unsigned long )ring) {
    return ((unsigned long )(seg->trbs + 64UL) == (unsigned long )trb);
  } else {
    return ((trb->link.control & 64512U) == 6144U);
  }
}
}
static int enqueue_is_link_trb(struct xhci_ring *ring )
{
  struct xhci_link_trb *link ;
  {
  link = & (ring->enqueue)->link;
  return ((link->control & 64512U) == 6144U);
}
}
static void next_trb(struct xhci_hcd *xhci , struct xhci_ring *ring , struct xhci_segment **seg ,
                     union xhci_trb **trb )
{
  int tmp ;
  {
  tmp = last_trb(xhci, ring, *seg, *trb);
  if (tmp != 0) {
    *seg = (*seg)->next;
    *trb = (*seg)->trbs;
  } else {
    *trb = *trb + 1;
  }
  return;
}
}
static void inc_deq(struct xhci_hcd *xhci , struct xhci_ring *ring )
{
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  ring->deq_updates = ring->deq_updates + 1U;
  if ((unsigned int )ring->type != 6U) {
    tmp = last_trb(xhci, ring, ring->deq_seg, ring->dequeue);
    if (tmp == 0) {
      ring->num_trbs_free = ring->num_trbs_free + 1U;
    } else {
    }
  } else {
  }
  ldv_31800:
  tmp___1 = last_trb(xhci, ring, ring->deq_seg, ring->dequeue);
  if (tmp___1 != 0) {
    if ((unsigned int )ring->type == 6U) {
      tmp___0 = last_trb_on_last_seg(xhci, ring, ring->deq_seg, ring->dequeue);
      if ((int )tmp___0) {
        ring->cycle_state = ring->cycle_state ^ 1U;
      } else {
      }
    } else {
    }
    ring->deq_seg = (ring->deq_seg)->next;
    ring->dequeue = (ring->deq_seg)->trbs;
  } else {
    ring->dequeue = ring->dequeue + 1;
  }
  tmp___2 = last_trb(xhci, ring, ring->deq_seg, ring->dequeue);
  if (tmp___2 != 0) {
    goto ldv_31800;
  } else {
  }
  return;
}
}
static void inc_enq(struct xhci_hcd *xhci , struct xhci_ring *ring , bool more_trbs_coming )
{
  u32 chain ;
  union xhci_trb *next ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  chain = (ring->enqueue)->generic.field[3] & 16U;
  if ((unsigned int )ring->type != 6U) {
    tmp = last_trb(xhci, ring, ring->enq_seg, ring->enqueue);
    if (tmp == 0) {
      ring->num_trbs_free = ring->num_trbs_free - 1U;
    } else {
    }
  } else {
  }
  ring->enqueue = ring->enqueue + 1;
  next = ring->enqueue;
  ring->enq_updates = ring->enq_updates + 1U;
  goto ldv_31811;
  ldv_31810: ;
  if ((unsigned int )ring->type != 6U) {
    if (chain == 0U && ! more_trbs_coming) {
      goto ldv_31809;
    } else {
    }
    if ((unsigned int )ring->type != 1U || (xhci->quirks & 512U) == 0U) {
      tmp___0 = xhci_link_trb_quirk(xhci);
      if (tmp___0 == 0) {
        next->link.control = next->link.control & 4294967279U;
        next->link.control = next->link.control | chain;
      } else {
      }
    } else {
    }
    __asm__ volatile ("sfence": : : "memory");
    next->link.control = next->link.control ^ 1U;
    tmp___1 = last_trb_on_last_seg(xhci, ring, ring->enq_seg, next);
    if ((int )tmp___1) {
      ring->cycle_state = ring->cycle_state == 0U;
    } else {
    }
  } else {
  }
  ring->enq_seg = (ring->enq_seg)->next;
  ring->enqueue = (ring->enq_seg)->trbs;
  next = ring->enqueue;
  ldv_31811:
  tmp___2 = last_trb(xhci, ring, ring->enq_seg, next);
  if (tmp___2 != 0) {
    goto ldv_31810;
  } else {
  }
  ldv_31809: ;
  return;
}
}
__inline static int room_on_ring(struct xhci_hcd *xhci , struct xhci_ring *ring ,
                                 unsigned int num_trbs )
{
  int num_trbs_in_deq_seg ;
  {
  if (ring->num_trbs_free < num_trbs) {
    return (0);
  } else {
  }
  if ((unsigned int )ring->type != 5U && (unsigned int )ring->type != 6U) {
    num_trbs_in_deq_seg = (int )(((long )ring->dequeue - (long )(ring->deq_seg)->trbs) / 16L);
    if (ring->num_trbs_free < num_trbs + (unsigned int )num_trbs_in_deq_seg) {
      return (0);
    } else {
    }
  } else {
  }
  return (1);
}
}
void xhci_ring_cmd_db(struct xhci_hcd *xhci )
{
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  if ((xhci->cmd_ring_state & 1U) == 0U) {
    return;
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_ring_cmd_db";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
  descriptor.format = "// Ding dong!\n";
  descriptor.lineno = 411U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "// Ding dong!\n");
  } else {
  }
  writel(0U, (void volatile *)(& (xhci->dba)->doorbell));
  readl((void const volatile *)(& (xhci->dba)->doorbell));
  return;
}
}
static int xhci_abort_cmd_ring(struct xhci_hcd *xhci )
{
  u64 temp_64 ;
  int ret ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct usb_hcd *tmp___1 ;
  {
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_abort_cmd_ring";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
  descriptor.format = "Abort command ring\n";
  descriptor.lineno = 422U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "Abort command ring\n");
  } else {
  }
  temp_64 = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->op_regs)->cmd_ring);
  xhci->cmd_ring_state = 2U;
  xhci_write_64(xhci, temp_64 | 4ULL, & (xhci->op_regs)->cmd_ring);
  ret = xhci_handshake(xhci, (void *)(& (xhci->op_regs)->cmd_ring), 8U, 0U, 5000000);
  if (ret < 0) {
    tmp___1 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___1->self.controller, "Stopped the command ring failed, maybe the host is dead\n");
    xhci->xhc_state = xhci->xhc_state | 1U;
    xhci_quiesce(xhci);
    xhci_halt(xhci);
    return (-108);
  } else {
  }
  return (0);
}
}
void xhci_ring_ep_doorbell(struct xhci_hcd *xhci , unsigned int slot_id , unsigned int ep_index ,
                           unsigned int stream_id )
{
  __le32 *db_addr ;
  struct xhci_virt_ep *ep ;
  unsigned int ep_state ;
  {
  db_addr = (__le32 *)(& (xhci->dba)->doorbell) + (unsigned long )slot_id;
  ep = (struct xhci_virt_ep *)(& (xhci->devs[slot_id])->eps) + (unsigned long )ep_index;
  ep_state = ep->ep_state;
  if (((ep_state & 4U) != 0U || (int )ep_state & 1) || (ep_state & 2U) != 0U) {
    return;
  } else {
  }
  writel(((ep_index + 1U) & 255U) | (stream_id << 16), (void volatile *)db_addr);
  return;
}
}
static void ring_doorbell_for_active_rings(struct xhci_hcd *xhci , unsigned int slot_id ,
                                           unsigned int ep_index )
{
  unsigned int stream_id ;
  struct xhci_virt_ep *ep ;
  int tmp ;
  struct xhci_stream_info *stream_info ;
  int tmp___0 ;
  {
  ep = (struct xhci_virt_ep *)(& (xhci->devs[slot_id])->eps) + (unsigned long )ep_index;
  if ((ep->ep_state & 16U) == 0U) {
    if ((unsigned long )ep->ring != (unsigned long )((struct xhci_ring *)0)) {
      tmp = list_empty((struct list_head const *)(& (ep->ring)->td_list));
      if (tmp == 0) {
        xhci_ring_ep_doorbell(xhci, slot_id, ep_index, 0U);
      } else {
      }
    } else {
    }
    return;
  } else {
  }
  stream_id = 1U;
  goto ldv_31848;
  ldv_31847:
  stream_info = ep->stream_info;
  tmp___0 = list_empty((struct list_head const *)(& (*(stream_info->stream_rings + (unsigned long )stream_id))->td_list));
  if (tmp___0 == 0) {
    xhci_ring_ep_doorbell(xhci, slot_id, ep_index, stream_id);
  } else {
  }
  stream_id = stream_id + 1U;
  ldv_31848: ;
  if ((ep->stream_info)->num_streams > stream_id) {
    goto ldv_31847;
  } else {
  }
  return;
}
}
static struct xhci_segment *find_trb_seg(struct xhci_segment *start_seg , union xhci_trb *trb ,
                                         int *cycle_state )
{
  struct xhci_segment *cur_seg ;
  struct xhci_generic_trb *generic_trb ;
  {
  cur_seg = start_seg;
  goto ldv_31858;
  ldv_31857:
  generic_trb = & (cur_seg->trbs + 63UL)->generic;
  if ((generic_trb->field[3] & 2U) != 0U) {
    *cycle_state = *cycle_state ^ 1;
  } else {
  }
  cur_seg = cur_seg->next;
  if ((unsigned long )cur_seg == (unsigned long )start_seg) {
    return ((struct xhci_segment *)0);
  } else {
  }
  ldv_31858: ;
  if ((unsigned long )cur_seg->trbs > (unsigned long )trb || (unsigned long )(cur_seg->trbs + 63UL) < (unsigned long )trb) {
    goto ldv_31857;
  } else {
  }
  return (cur_seg);
}
}
static struct xhci_ring *xhci_triad_to_transfer_ring(struct xhci_hcd *xhci , unsigned int slot_id ,
                                                     unsigned int ep_index , unsigned int stream_id )
{
  struct xhci_virt_ep *ep ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  {
  ep = (struct xhci_virt_ep *)(& (xhci->devs[slot_id])->eps) + (unsigned long )ep_index;
  if ((ep->ep_state & 16U) == 0U) {
    return (ep->ring);
  } else {
  }
  if (stream_id == 0U) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN: Slot ID %u, ep index %u has streams, but URB has no stream ID.\n",
             slot_id, ep_index);
    return ((struct xhci_ring *)0);
  } else {
  }
  if ((ep->stream_info)->num_streams > stream_id) {
    return (*((ep->stream_info)->stream_rings + (unsigned long )stream_id));
  } else {
  }
  tmp___0 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___0->self.controller, "WARN: Slot ID %u, ep index %u has stream IDs 1 to %u allocated, but stream ID %u is requested.\n",
           slot_id, ep_index, (ep->stream_info)->num_streams - 1U, stream_id);
  return ((struct xhci_ring *)0);
}
}
static struct xhci_ring *xhci_urb_to_transfer_ring___0(struct xhci_hcd *xhci , struct urb *urb )
{
  unsigned int tmp ;
  struct xhci_ring *tmp___0 ;
  {
  tmp = xhci_get_endpoint_index(& (urb->ep)->desc);
  tmp___0 = xhci_triad_to_transfer_ring(xhci, (unsigned int )(urb->dev)->slot_id,
                                        tmp, urb->stream_id);
  return (tmp___0);
}
}
void xhci_find_new_dequeue_state(struct xhci_hcd *xhci , unsigned int slot_id , unsigned int ep_index ,
                                 unsigned int stream_id , struct xhci_td *cur_td ,
                                 struct xhci_dequeue_state *state )
{
  struct xhci_virt_device *dev ;
  struct xhci_virt_ep *ep ;
  struct xhci_ring *ep_ring ;
  struct xhci_generic_trb *trb ;
  dma_addr_t addr ;
  u64 hw_dequeue ;
  struct usb_hcd *tmp ;
  struct xhci_stream_ctx *ctx ;
  struct xhci_ep_ctx *ep_ctx ;
  struct xhci_ep_ctx *tmp___0 ;
  int __ret_warn_on ;
  long tmp___1 ;
  dma_addr_t tmp___2 ;
  int __ret_warn_on___0 ;
  long tmp___3 ;
  {
  dev = xhci->devs[slot_id];
  ep = (struct xhci_virt_ep *)(& dev->eps) + (unsigned long )ep_index;
  ep_ring = xhci_triad_to_transfer_ring(xhci, slot_id, ep_index, stream_id);
  if ((unsigned long )ep_ring == (unsigned long )((struct xhci_ring *)0)) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN can\'t find new dequeue state for invalid stream ID %u.\n",
             stream_id);
    return;
  } else {
  }
  xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb___0, "Finding endpoint context");
  if ((ep->ep_state & 16U) != 0U) {
    ctx = (ep->stream_info)->stream_ctx_array + (unsigned long )stream_id;
    hw_dequeue = ctx->stream_ring;
  } else {
    tmp___0 = xhci_get_ep_ctx(xhci, dev->out_ctx, ep_index);
    ep_ctx = tmp___0;
    hw_dequeue = ep_ctx->deq;
  }
  state->new_deq_seg = ep_ring->deq_seg;
  state->new_deq_ptr = ep_ring->dequeue;
  goto ldv_31890;
  ldv_31889:
  next_trb(xhci, ep_ring, & state->new_deq_seg, & state->new_deq_ptr);
  if ((unsigned long )state->new_deq_ptr == (unsigned long )ep_ring->dequeue) {
    __ret_warn_on = 1;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared",
                         631);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return;
  } else {
  }
  ldv_31890:
  tmp___2 = xhci_trb_virt_to_dma(state->new_deq_seg, state->new_deq_ptr);
  if (tmp___2 != (hw_dequeue & 0xfffffffffffffff0ULL)) {
    goto ldv_31889;
  } else {
  }
  state->new_cycle_state = (int )hw_dequeue & 1;
  if ((unsigned long )ep_ring->first_seg == (unsigned long )(ep_ring->first_seg)->next && (unsigned long )cur_td->last_trb < (unsigned long )state->new_deq_ptr) {
    state->new_cycle_state = state->new_cycle_state ^ 1;
  } else {
  }
  state->new_deq_ptr = cur_td->last_trb;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb___0, "Finding segment containing last TRB in TD.");
  state->new_deq_seg = find_trb_seg(state->new_deq_seg, state->new_deq_ptr, & state->new_cycle_state);
  if ((unsigned long )state->new_deq_seg == (unsigned long )((struct xhci_segment *)0)) {
    __ret_warn_on___0 = 1;
    tmp___3 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___3 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared",
                         652);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    return;
  } else {
  }
  trb = & (state->new_deq_ptr)->generic;
  if ((trb->field[3] & 64512U) == 6144U && (trb->field[3] & 2U) != 0U) {
    state->new_cycle_state = state->new_cycle_state ^ 1;
  } else {
  }
  next_trb(xhci, ep_ring, & state->new_deq_seg, & state->new_deq_ptr);
  xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb___0, "Cycle state = 0x%x", state->new_cycle_state);
  xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb___0, "New dequeue segment = %p (virtual)",
                 state->new_deq_seg);
  addr = xhci_trb_virt_to_dma(state->new_deq_seg, state->new_deq_ptr);
  xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb___0, "New dequeue pointer = 0x%llx (DMA)",
                 addr);
  return;
}
}
static void td_to_noop(struct xhci_hcd *xhci , struct xhci_ring *ep_ring , struct xhci_td *cur_td ,
                       bool flip_cycle )
{
  struct xhci_segment *cur_seg ;
  union xhci_trb *cur_trb ;
  dma_addr_t tmp ;
  dma_addr_t tmp___0 ;
  {
  cur_seg = cur_td->start_seg;
  cur_trb = cur_td->first_trb;
  ldv_31903: ;
  if ((cur_trb->generic.field[3] & 64512U) == 6144U) {
    cur_trb->generic.field[3] = cur_trb->generic.field[3] & 4294967279U;
    if ((int )flip_cycle) {
      cur_trb->generic.field[3] = cur_trb->generic.field[3] ^ 1U;
    } else {
    }
    xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb___0, "Cancel (unchain) link TRB");
    tmp = xhci_trb_virt_to_dma(cur_seg, cur_trb);
    xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb___0, "Address = %p (0x%llx dma); in seg %p (0x%llx dma)",
                   cur_trb, tmp, cur_seg, cur_seg->dma);
  } else {
    cur_trb->generic.field[0] = 0U;
    cur_trb->generic.field[1] = 0U;
    cur_trb->generic.field[2] = 0U;
    cur_trb->generic.field[3] = cur_trb->generic.field[3] & 1U;
    if (((int )flip_cycle && (unsigned long )cur_td->first_trb != (unsigned long )cur_trb) && (unsigned long )cur_td->last_trb != (unsigned long )cur_trb) {
      cur_trb->generic.field[3] = cur_trb->generic.field[3] ^ 1U;
    } else {
    }
    cur_trb->generic.field[3] = cur_trb->generic.field[3] | 8192U;
    tmp___0 = xhci_trb_virt_to_dma(cur_seg, cur_trb);
    xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb___0, "TRB to noop at offset 0x%llx",
                   tmp___0);
  }
  if ((unsigned long )cur_td->last_trb == (unsigned long )cur_trb) {
    goto ldv_31902;
  } else {
  }
  next_trb(xhci, ep_ring, & cur_seg, & cur_trb);
  goto ldv_31903;
  ldv_31902: ;
  return;
}
}
static int queue_set_tr_deq(struct xhci_hcd *xhci , struct xhci_command *cmd , int slot_id ,
                            unsigned int ep_index , unsigned int stream_id , struct xhci_segment *deq_seg ,
                            union xhci_trb *deq_ptr , u32 cycle_state ) ;
void xhci_queue_new_dequeue_state(struct xhci_hcd *xhci , struct xhci_command *cmd ,
                                  unsigned int slot_id , unsigned int ep_index , unsigned int stream_id ,
                                  struct xhci_dequeue_state *deq_state )
{
  struct xhci_virt_ep *ep ;
  dma_addr_t tmp ;
  {
  ep = (struct xhci_virt_ep *)(& (xhci->devs[slot_id])->eps) + (unsigned long )ep_index;
  tmp = xhci_trb_virt_to_dma(deq_state->new_deq_seg, deq_state->new_deq_ptr);
  xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb___0, "Set TR Deq Ptr cmd, new deq seg = %p (0x%llx dma), new deq ptr = %p (0x%llx dma), new cycle = %u",
                 deq_state->new_deq_seg, (deq_state->new_deq_seg)->dma, deq_state->new_deq_ptr,
                 tmp, deq_state->new_cycle_state);
  queue_set_tr_deq(xhci, cmd, (int )slot_id, ep_index, stream_id, deq_state->new_deq_seg,
                   deq_state->new_deq_ptr, (unsigned int )deq_state->new_cycle_state);
  ep->ep_state = ep->ep_state | 1U;
  return;
}
}
static void xhci_stop_watchdog_timer_in_irq(struct xhci_hcd *xhci , struct xhci_virt_ep *ep )
{
  int tmp ;
  {
  ep->ep_state = ep->ep_state & 4294967291U;
  tmp = ldv_del_timer_93(& ep->stop_cmd_timer);
  if (tmp != 0) {
    ep->stop_cmds_pending = ep->stop_cmds_pending - 1;
  } else {
  }
  return;
}
}
static void xhci_giveback_urb_in_irq(struct xhci_hcd *xhci , struct xhci_td *cur_td ,
                                     int status )
{
  struct usb_hcd *hcd ;
  struct urb *urb ;
  struct urb_priv *urb_priv ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  {
  urb = cur_td->urb;
  urb_priv = (struct urb_priv *)urb->hcpriv;
  urb_priv->td_cnt = urb_priv->td_cnt + 1;
  hcd = bus_to_hcd((urb->dev)->bus);
  if (urb_priv->td_cnt == urb_priv->length) {
    if (urb->pipe >> 30 == 0U) {
      tmp = xhci_to_hcd(xhci);
      tmp->self.bandwidth_isoc_reqs = tmp->self.bandwidth_isoc_reqs - 1;
      tmp___0 = xhci_to_hcd(xhci);
      if (tmp___0->self.bandwidth_isoc_reqs == 0) {
        if ((xhci->quirks & 8U) != 0U) {
          usb_amd_quirk_pll_enable();
        } else {
        }
      } else {
      }
    } else {
    }
    usb_hcd_unlink_urb_from_ep(hcd, urb);
    spin_unlock(& xhci->lock);
    usb_hcd_giveback_urb(hcd, urb, status);
    xhci_urb_free_priv(xhci, urb_priv);
    spin_lock(& xhci->lock);
  } else {
  }
  return;
}
}
static void xhci_handle_cmd_stop_ep(struct xhci_hcd *xhci , int slot_id , union xhci_trb *trb ,
                                    struct xhci_event_cmd *event )
{
  unsigned int ep_index ;
  struct xhci_ring *ep_ring ;
  struct xhci_virt_ep *ep ;
  struct list_head *entry ;
  struct xhci_td *cur_td ;
  struct xhci_td *last_unlinked_td ;
  struct xhci_dequeue_state deq_state ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  struct list_head const *__mptr ;
  dma_addr_t tmp___2 ;
  struct usb_hcd *tmp___3 ;
  struct xhci_command *command ;
  struct list_head const *__mptr___0 ;
  {
  cur_td = (struct xhci_td *)0;
  tmp___0 = ldv__builtin_expect((trb->generic.field[3] & 8388608U) >> 23 != 0U, 0L);
  if (tmp___0 != 0L) {
    if ((unsigned long )xhci->devs[slot_id] == (unsigned long )((struct xhci_virt_device *)0)) {
      tmp = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp->self.controller, "Stop endpoint command completion for disabled slot %u\n",
               slot_id);
    } else {
    }
    return;
  } else {
  }
  memset((void *)(& deq_state), 0, 24UL);
  ep_index = ((trb->generic.field[3] & 2031616U) >> 16) - 1U;
  ep = (struct xhci_virt_ep *)(& (xhci->devs[slot_id])->eps) + (unsigned long )ep_index;
  tmp___1 = list_empty((struct list_head const *)(& ep->cancelled_td_list));
  if (tmp___1 != 0) {
    xhci_stop_watchdog_timer_in_irq(xhci, ep);
    ep->stopped_td = (struct xhci_td *)0;
    ring_doorbell_for_active_rings(xhci, (unsigned int )slot_id, ep_index);
    return;
  } else {
  }
  entry = ep->cancelled_td_list.next;
  goto ldv_31951;
  ldv_31950:
  __mptr = (struct list_head const *)entry;
  cur_td = (struct xhci_td *)__mptr + 0xfffffffffffffff0UL;
  tmp___2 = xhci_trb_virt_to_dma(cur_td->start_seg, cur_td->first_trb);
  xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb___0, "Removing canceled TD starting at 0x%llx (dma).",
                 tmp___2);
  ep_ring = xhci_urb_to_transfer_ring___0(xhci, cur_td->urb);
  if ((unsigned long )ep_ring == (unsigned long )((struct xhci_ring *)0)) {
    tmp___3 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___3->self.controller, "WARN Cancelled URB %p has invalid stream ID %u.\n",
             cur_td->urb, (cur_td->urb)->stream_id);
    goto remove_finished_td;
  } else {
  }
  if ((unsigned long )ep->stopped_td == (unsigned long )cur_td) {
    xhci_find_new_dequeue_state(xhci, (unsigned int )slot_id, ep_index, (cur_td->urb)->stream_id,
                                cur_td, & deq_state);
  } else {
    td_to_noop(xhci, ep_ring, cur_td, 0);
  }
  remove_finished_td:
  list_del_init(& cur_td->td_list);
  entry = entry->next;
  ldv_31951: ;
  if ((unsigned long )(& ep->cancelled_td_list) != (unsigned long )entry) {
    goto ldv_31950;
  } else {
  }
  last_unlinked_td = cur_td;
  xhci_stop_watchdog_timer_in_irq(xhci, ep);
  if ((unsigned long )deq_state.new_deq_ptr != (unsigned long )((union xhci_trb *)0) && (unsigned long )deq_state.new_deq_seg != (unsigned long )((struct xhci_segment *)0)) {
    command = xhci_alloc_command(xhci, 0, 0, 32U);
    xhci_queue_new_dequeue_state(xhci, command, (unsigned int )slot_id, ep_index,
                                 ((ep->stopped_td)->urb)->stream_id, & deq_state);
    xhci_ring_cmd_db(xhci);
  } else {
    ring_doorbell_for_active_rings(xhci, (unsigned int )slot_id, ep_index);
  }
  if ((ep->ep_state & 2U) == 0U) {
    ep->stopped_td = (struct xhci_td *)0;
  } else {
  }
  ldv_31956:
  __mptr___0 = (struct list_head const *)ep->cancelled_td_list.next;
  cur_td = (struct xhci_td *)__mptr___0 + 0xfffffffffffffff0UL;
  list_del_init(& cur_td->cancelled_td_list);
  xhci_giveback_urb_in_irq(xhci, cur_td, 0);
  if ((int )xhci->xhc_state & 1) {
    return;
  } else {
  }
  if ((unsigned long )cur_td != (unsigned long )last_unlinked_td) {
    goto ldv_31956;
  } else {
  }
  return;
}
}
static void xhci_kill_ring_urbs(struct xhci_hcd *xhci , struct xhci_ring *ring )
{
  struct xhci_td *cur_td ;
  struct list_head const *__mptr ;
  int tmp ;
  int tmp___0 ;
  {
  goto ldv_31966;
  ldv_31965:
  __mptr = (struct list_head const *)ring->td_list.next;
  cur_td = (struct xhci_td *)__mptr;
  list_del_init(& cur_td->td_list);
  tmp = list_empty((struct list_head const *)(& cur_td->cancelled_td_list));
  if (tmp == 0) {
    list_del_init(& cur_td->cancelled_td_list);
  } else {
  }
  xhci_giveback_urb_in_irq(xhci, cur_td, -108);
  ldv_31966:
  tmp___0 = list_empty((struct list_head const *)(& ring->td_list));
  if (tmp___0 == 0) {
    goto ldv_31965;
  } else {
  }
  return;
}
}
static void xhci_kill_endpoint_urbs(struct xhci_hcd *xhci , int slot_id , int ep_index )
{
  struct xhci_td *cur_td ;
  struct xhci_virt_ep *ep ;
  struct xhci_ring *ring ;
  int stream_id ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  ep = (struct xhci_virt_ep *)(& (xhci->devs[slot_id])->eps) + (unsigned long )ep_index;
  if ((ep->ep_state & 16U) != 0U || (ep->ep_state & 32U) != 0U) {
    stream_id = 0;
    goto ldv_31978;
    ldv_31977:
    xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb___0, "Killing URBs for slot ID %u, ep index %u, stream %u",
                   slot_id, ep_index, stream_id + 1);
    xhci_kill_ring_urbs(xhci, *((ep->stream_info)->stream_rings + (unsigned long )stream_id));
    stream_id = stream_id + 1;
    ldv_31978: ;
    if ((unsigned int )stream_id < (ep->stream_info)->num_streams) {
      goto ldv_31977;
    } else {
    }
  } else {
    ring = ep->ring;
    if ((unsigned long )ring == (unsigned long )((struct xhci_ring *)0)) {
      return;
    } else {
    }
    xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb___0, "Killing URBs for slot ID %u, ep index %u",
                   slot_id, ep_index);
    xhci_kill_ring_urbs(xhci, ring);
  }
  goto ldv_31983;
  ldv_31982:
  __mptr = (struct list_head const *)ep->cancelled_td_list.next;
  cur_td = (struct xhci_td *)__mptr + 0xfffffffffffffff0UL;
  list_del_init(& cur_td->cancelled_td_list);
  xhci_giveback_urb_in_irq(xhci, cur_td, -108);
  ldv_31983:
  tmp = list_empty((struct list_head const *)(& ep->cancelled_td_list));
  if (tmp == 0) {
    goto ldv_31982;
  } else {
  }
  return;
}
}
void xhci_stop_endpoint_command_watchdog(unsigned long arg )
{
  struct xhci_hcd *xhci ;
  struct xhci_virt_ep *ep ;
  int ret ;
  int i ;
  int j ;
  unsigned long flags ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  struct usb_hcd *tmp___1 ;
  struct usb_hcd *tmp___2 ;
  struct usb_hcd *tmp___3 ;
  {
  ep = (struct xhci_virt_ep *)arg;
  xhci = ep->xhci;
  ldv_spin_lock();
  ep->stop_cmds_pending = ep->stop_cmds_pending - 1;
  if ((int )xhci->xhc_state & 1) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb___0, "Stop EP timer ran, but another timer marked xHCI as DYING, exiting.");
    spin_unlock_irqrestore(& xhci->lock, flags);
    return;
  } else {
  }
  if (ep->stop_cmds_pending != 0 || (ep->ep_state & 4U) == 0U) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb___0, "Stop EP timer ran, but no command pending, exiting.");
    spin_unlock_irqrestore(& xhci->lock, flags);
    return;
  } else {
  }
  tmp = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp->self.controller, "xHCI host not responding to stop endpoint command.\n");
  tmp___0 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___0->self.controller, "Assuming host is dying, halting host.\n");
  xhci->xhc_state = xhci->xhc_state | 1U;
  xhci_quiesce(xhci);
  spin_unlock_irqrestore(& xhci->lock, flags);
  ret = xhci_halt(xhci);
  ldv_spin_lock();
  if (ret < 0) {
    tmp___1 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___1->self.controller, "Non-responsive xHCI host is not halting.\n");
    tmp___2 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___2->self.controller, "Completing active URBs anyway.\n");
  } else {
  }
  i = 0;
  goto ldv_31999;
  ldv_31998: ;
  if ((unsigned long )xhci->devs[i] == (unsigned long )((struct xhci_virt_device *)0)) {
    goto ldv_31994;
  } else {
  }
  j = 0;
  goto ldv_31996;
  ldv_31995:
  xhci_kill_endpoint_urbs(xhci, i, j);
  j = j + 1;
  ldv_31996: ;
  if (j <= 30) {
    goto ldv_31995;
  } else {
  }
  ldv_31994:
  i = i + 1;
  ldv_31999: ;
  if (i <= 255) {
    goto ldv_31998;
  } else {
  }
  spin_unlock_irqrestore(& xhci->lock, flags);
  xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb___0, "Calling usb_hc_died()");
  tmp___3 = xhci_to_hcd(xhci);
  usb_hc_died(tmp___3->primary_hcd);
  xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb___0, "xHCI host controller is dead.");
  return;
}
}
static void update_ring_for_set_deq_completion(struct xhci_hcd *xhci , struct xhci_virt_device *dev ,
                                               struct xhci_ring *ep_ring , unsigned int ep_index )
{
  union xhci_trb *dequeue_temp ;
  int num_trbs_free_temp ;
  bool revert ;
  int tmp ;
  int tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  revert = 0;
  num_trbs_free_temp = (int )ep_ring->num_trbs_free;
  dequeue_temp = ep_ring->dequeue;
  tmp = last_trb(xhci, ep_ring, ep_ring->deq_seg, ep_ring->dequeue);
  if (tmp != 0) {
    ep_ring->deq_seg = (ep_ring->deq_seg)->next;
    ep_ring->dequeue = (ep_ring->deq_seg)->trbs;
  } else {
  }
  goto ldv_32012;
  ldv_32011:
  ep_ring->num_trbs_free = ep_ring->num_trbs_free + 1U;
  ep_ring->dequeue = ep_ring->dequeue + 1;
  tmp___0 = last_trb(xhci, ep_ring, ep_ring->deq_seg, ep_ring->dequeue);
  if (tmp___0 != 0) {
    if ((unsigned long )ep_ring->dequeue == (unsigned long )dev->eps[ep_index].queued_deq_ptr) {
      goto ldv_32010;
    } else {
    }
    ep_ring->deq_seg = (ep_ring->deq_seg)->next;
    ep_ring->dequeue = (ep_ring->deq_seg)->trbs;
  } else {
  }
  if ((unsigned long )ep_ring->dequeue == (unsigned long )dequeue_temp) {
    revert = 1;
    goto ldv_32010;
  } else {
  }
  ldv_32012: ;
  if ((unsigned long )ep_ring->dequeue != (unsigned long )dev->eps[ep_index].queued_deq_ptr) {
    goto ldv_32011;
  } else {
  }
  ldv_32010: ;
  if ((int )revert) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "update_ring_for_set_deq_completion";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor.format = "Unable to find new dequeue pointer\n";
    descriptor.lineno = 1130U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                        "Unable to find new dequeue pointer\n");
    } else {
    }
    ep_ring->num_trbs_free = (unsigned int )num_trbs_free_temp;
  } else {
  }
  return;
}
}
static void xhci_handle_cmd_set_deq(struct xhci_hcd *xhci , int slot_id , union xhci_trb *trb ,
                                    u32 cmd_comp_code )
{
  unsigned int ep_index ;
  unsigned int stream_id ;
  struct xhci_ring *ep_ring ;
  struct xhci_virt_device *dev ;
  struct xhci_virt_ep *ep ;
  struct xhci_ep_ctx *ep_ctx ;
  struct xhci_slot_ctx *slot_ctx ;
  struct usb_hcd *tmp ;
  unsigned int ep_state ;
  unsigned int slot_state ;
  struct usb_hcd *tmp___0 ;
  struct usb_hcd *tmp___1 ;
  struct usb_hcd *tmp___2 ;
  struct usb_hcd *tmp___3 ;
  u64 deq ;
  struct xhci_stream_ctx *ctx ;
  struct usb_hcd *tmp___4 ;
  struct usb_hcd *tmp___5 ;
  dma_addr_t tmp___6 ;
  {
  ep_index = ((trb->generic.field[3] & 2031616U) >> 16) - 1U;
  stream_id = trb->generic.field[2] >> 16;
  dev = xhci->devs[slot_id];
  ep = (struct xhci_virt_ep *)(& dev->eps) + (unsigned long )ep_index;
  ep_ring = xhci_stream_id_to_ring(dev, ep_index, stream_id);
  if ((unsigned long )ep_ring == (unsigned long )((struct xhci_ring *)0)) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN Set TR deq ptr command for freed stream ID %u\n",
             stream_id);
    dev->eps[ep_index].ep_state = dev->eps[ep_index].ep_state & 4294967294U;
    return;
  } else {
  }
  ep_ctx = xhci_get_ep_ctx(xhci, dev->out_ctx, ep_index);
  slot_ctx = xhci_get_slot_ctx(xhci, dev->out_ctx);
  if (cmd_comp_code != 1U) {
    switch (cmd_comp_code) {
    case 5U:
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "WARN Set TR Deq Ptr cmd invalid because of stream ID configuration\n");
    goto ldv_32031;
    case 19U:
    tmp___1 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___1->self.controller, "WARN Set TR Deq Ptr cmd failed due to incorrect slot or ep state.\n");
    ep_state = ep_ctx->ep_info;
    ep_state = ep_state & 15U;
    slot_state = slot_ctx->dev_state;
    slot_state = slot_state >> 27;
    xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb___0, "Slot state = %u, EP state = %u",
                   slot_state, ep_state);
    goto ldv_32031;
    case 11U:
    tmp___2 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___2->self.controller, "WARN Set TR Deq Ptr cmd failed because slot %u was not enabled.\n",
             slot_id);
    goto ldv_32031;
    default:
    tmp___3 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___3->self.controller, "WARN Set TR Deq Ptr cmd with unknown completion code of %u.\n",
             cmd_comp_code);
    goto ldv_32031;
    }
    ldv_32031: ;
  } else {
    if ((ep->ep_state & 16U) != 0U) {
      ctx = (ep->stream_info)->stream_ctx_array + (unsigned long )stream_id;
      deq = ctx->stream_ring & 0xfffffffffffffff0ULL;
    } else {
      deq = ep_ctx->deq & 0xfffffffffffffffeULL;
    }
    xhci_dbg_trace(xhci, & trace_xhci_dbg_cancel_urb___0, "Successful Set TR Deq Ptr cmd, deq = @%08llx",
                   deq);
    tmp___6 = xhci_trb_virt_to_dma(ep->queued_deq_seg, ep->queued_deq_ptr);
    if (tmp___6 == deq) {
      update_ring_for_set_deq_completion(xhci, dev, ep_ring, ep_index);
    } else {
      tmp___4 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___4->self.controller, "Mismatch between completed Set TR Deq Ptr command & xHCI internal state.\n");
      tmp___5 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___5->self.controller, "ep deq seg = %p, deq ptr = %p\n",
               ep->queued_deq_seg, ep->queued_deq_ptr);
    }
  }
  dev->eps[ep_index].ep_state = dev->eps[ep_index].ep_state & 4294967294U;
  dev->eps[ep_index].queued_deq_seg = (struct xhci_segment *)0;
  dev->eps[ep_index].queued_deq_ptr = (union xhci_trb *)0;
  ring_doorbell_for_active_rings(xhci, (unsigned int )slot_id, ep_index);
  return;
}
}
static void xhci_handle_cmd_reset_ep(struct xhci_hcd *xhci , int slot_id , union xhci_trb *trb ,
                                     u32 cmd_comp_code )
{
  unsigned int ep_index ;
  struct xhci_command *command ;
  {
  ep_index = ((trb->generic.field[3] & 2031616U) >> 16) - 1U;
  xhci_dbg_trace(xhci, & trace_xhci_dbg_reset_ep___0, "Ignoring reset ep completion code of %u",
                 cmd_comp_code);
  if ((xhci->quirks & 2U) != 0U) {
    command = xhci_alloc_command(xhci, 0, 0, 32U);
    xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks___0, "Queueing configure endpoint command");
    xhci_queue_configure_endpoint(xhci, command, ((xhci->devs[slot_id])->in_ctx)->dma,
                                  (u32 )slot_id, 0);
    xhci_ring_cmd_db(xhci);
  } else {
    (xhci->devs[slot_id])->eps[ep_index].ep_state = (xhci->devs[slot_id])->eps[ep_index].ep_state & 4294967293U;
    ring_doorbell_for_active_rings(xhci, (unsigned int )slot_id, ep_index);
  }
  return;
}
}
static void xhci_handle_cmd_enable_slot(struct xhci_hcd *xhci , int slot_id , u32 cmd_comp_code )
{
  {
  if (cmd_comp_code == 1U) {
    xhci->slot_id = slot_id;
  } else {
    xhci->slot_id = 0;
  }
  return;
}
}
static void xhci_handle_cmd_disable_slot(struct xhci_hcd *xhci , int slot_id )
{
  struct xhci_virt_device *virt_dev ;
  {
  virt_dev = xhci->devs[slot_id];
  if ((unsigned long )virt_dev == (unsigned long )((struct xhci_virt_device *)0)) {
    return;
  } else {
  }
  if ((xhci->quirks & 32U) != 0U) {
    xhci_free_device_endpoint_resources(xhci, virt_dev, 1);
  } else {
  }
  xhci_free_virt_device(xhci, slot_id);
  return;
}
}
static void xhci_handle_cmd_config_ep(struct xhci_hcd *xhci , int slot_id , struct xhci_event_cmd *event ,
                                      u32 cmd_comp_code )
{
  struct xhci_virt_device *virt_dev ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  unsigned int ep_index ;
  unsigned int ep_state ;
  u32 add_flags ;
  u32 drop_flags ;
  struct usb_hcd *tmp ;
  unsigned int tmp___0 ;
  {
  virt_dev = xhci->devs[slot_id];
  ctrl_ctx = xhci_get_input_control_ctx(xhci, virt_dev->in_ctx);
  if ((unsigned long )ctrl_ctx == (unsigned long )((struct xhci_input_control_ctx *)0)) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "Could not get input context, bad type.\n");
    return;
  } else {
  }
  add_flags = ctrl_ctx->add_flags;
  drop_flags = ctrl_ctx->drop_flags;
  tmp___0 = xhci_last_valid_endpoint(add_flags);
  ep_index = tmp___0 - 1U;
  if (((xhci->quirks & 2U) != 0U && ep_index != 4294967295U) && add_flags - 1U == drop_flags) {
    ep_state = virt_dev->eps[ep_index].ep_state;
    if ((ep_state & 2U) == 0U) {
      return;
    } else {
    }
    xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks___0, "Completed config ep cmd - last ep index = %d, state = %d",
                   ep_index, ep_state);
    virt_dev->eps[ep_index].ep_state = virt_dev->eps[ep_index].ep_state & 4294967293U;
    ring_doorbell_for_active_rings(xhci, (unsigned int )slot_id, ep_index);
    return;
  } else {
  }
  return;
}
}
static void xhci_handle_cmd_reset_dev(struct xhci_hcd *xhci , int slot_id , struct xhci_event_cmd *event )
{
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct usb_hcd *tmp___1 ;
  {
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_handle_cmd_reset_dev";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
  descriptor.format = "Completed reset device command.\n";
  descriptor.lineno = 1346U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "Completed reset device command.\n");
  } else {
  }
  if ((unsigned long )xhci->devs[slot_id] == (unsigned long )((struct xhci_virt_device *)0)) {
    tmp___1 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___1->self.controller, "Reset device command completion for disabled slot %u\n",
             slot_id);
  } else {
  }
  return;
}
}
static void xhci_handle_cmd_nec_get_fw(struct xhci_hcd *xhci , struct xhci_event_cmd *event )
{
  {
  if ((xhci->quirks & 4U) == 0U) {
    xhci->error_bitmask = xhci->error_bitmask | 64;
    return;
  } else {
  }
  xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks___0, "NEC firmware version %2x.%02x",
                 (event->status >> 8) & 255U, event->status & 255U);
  return;
}
}
static void xhci_complete_del_and_free_cmd(struct xhci_command *cmd , u32 status )
{
  {
  list_del(& cmd->cmd_list);
  if ((unsigned long )cmd->completion != (unsigned long )((struct completion *)0)) {
    cmd->status = status;
    complete(cmd->completion);
  } else {
    kfree((void const *)cmd);
  }
  return;
}
}
void xhci_cleanup_command_queue(struct xhci_hcd *xhci )
{
  struct xhci_command *cur_cmd ;
  struct xhci_command *tmp_cmd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)xhci->cmd_list.next;
  cur_cmd = (struct xhci_command *)__mptr + 0xffffffffffffffe0UL;
  __mptr___0 = (struct list_head const *)cur_cmd->cmd_list.next;
  tmp_cmd = (struct xhci_command *)__mptr___0 + 0xffffffffffffffe0UL;
  goto ldv_32094;
  ldv_32093:
  xhci_complete_del_and_free_cmd(cur_cmd, 25U);
  cur_cmd = tmp_cmd;
  __mptr___1 = (struct list_head const *)tmp_cmd->cmd_list.next;
  tmp_cmd = (struct xhci_command *)__mptr___1 + 0xffffffffffffffe0UL;
  ldv_32094: ;
  if ((unsigned long )(& cur_cmd->cmd_list) != (unsigned long )(& xhci->cmd_list)) {
    goto ldv_32093;
  } else {
  }
  return;
}
}
static void xhci_handle_stopped_cmd_ring(struct xhci_hcd *xhci , struct xhci_command *cur_cmd )
{
  struct xhci_command *i_cmd ;
  struct xhci_command *tmp_cmd ;
  u32 cycle_state ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)xhci->cmd_list.next;
  i_cmd = (struct xhci_command *)__mptr + 0xffffffffffffffe0UL;
  __mptr___0 = (struct list_head const *)i_cmd->cmd_list.next;
  tmp_cmd = (struct xhci_command *)__mptr___0 + 0xffffffffffffffe0UL;
  goto ldv_32113;
  ldv_32112: ;
  if (i_cmd->status != 25U) {
    goto ldv_32109;
  } else {
  }
  i_cmd->status = 24U;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_handle_stopped_cmd_ring";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
  descriptor.format = "Turn aborted command %p to no-op\n";
  descriptor.lineno = 1405U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "Turn aborted command %p to no-op\n", i_cmd->command_trb);
  } else {
  }
  cycle_state = (i_cmd->command_trb)->generic.field[3] & 1U;
  (i_cmd->command_trb)->generic.field[0] = 0U;
  (i_cmd->command_trb)->generic.field[1] = 0U;
  (i_cmd->command_trb)->generic.field[2] = 0U;
  (i_cmd->command_trb)->generic.field[3] = cycle_state | 23552U;
  ldv_32109:
  i_cmd = tmp_cmd;
  __mptr___1 = (struct list_head const *)tmp_cmd->cmd_list.next;
  tmp_cmd = (struct xhci_command *)__mptr___1 + 0xffffffffffffffe0UL;
  ldv_32113: ;
  if ((unsigned long )(& i_cmd->cmd_list) != (unsigned long )(& xhci->cmd_list)) {
    goto ldv_32112;
  } else {
  }
  xhci->cmd_ring_state = 1U;
  if ((unsigned long )(xhci->cmd_ring)->dequeue != (unsigned long )(xhci->cmd_ring)->enqueue && (xhci->xhc_state & 1U) == 0U) {
    xhci->current_cmd = cur_cmd;
    ldv_mod_timer_94(& xhci->cmd_timer, (unsigned long )jiffies + 1250UL);
    xhci_ring_cmd_db(xhci);
  } else {
  }
  return;
}
}
void xhci_handle_command_timeout(unsigned long data )
{
  struct xhci_hcd *xhci ;
  int ret ;
  unsigned long flags ;
  u64 hw_ring_state ;
  struct xhci_command *cur_cmd ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct usb_hcd *tmp___1 ;
  struct usb_hcd *tmp___2 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  {
  cur_cmd = (struct xhci_command *)0;
  xhci = (struct xhci_hcd *)data;
  ldv_spin_lock();
  if ((unsigned long )xhci->current_cmd != (unsigned long )((struct xhci_command *)0)) {
    cur_cmd = xhci->current_cmd;
    cur_cmd->status = 25U;
  } else {
  }
  hw_ring_state = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->op_regs)->cmd_ring);
  if ((int )xhci->cmd_ring_state & 1 && (hw_ring_state & 8ULL) != 0ULL) {
    spin_unlock_irqrestore(& xhci->lock, flags);
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_handle_command_timeout";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor.format = "Command timeout\n";
    descriptor.lineno = 1458U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Command timeout\n");
    } else {
    }
    ret = xhci_abort_cmd_ring(xhci);
    tmp___5 = ldv__builtin_expect(ret == -108, 0L);
    if (tmp___5 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      dev_err((struct device const *)tmp___1->self.controller, "Abort command ring failed\n");
      xhci_cleanup_command_queue(xhci);
      tmp___2 = xhci_to_hcd(xhci);
      usb_hc_died(tmp___2->primary_hcd);
      descriptor___0.modname = "xhci_hcd";
      descriptor___0.function = "xhci_handle_command_timeout";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
      descriptor___0.format = "xHCI host controller is dead.\n";
      descriptor___0.lineno = 1464U;
      descriptor___0.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___4 != 0L) {
        tmp___3 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___3->self.controller,
                          "xHCI host controller is dead.\n");
      } else {
      }
    } else {
    }
    return;
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_handle_command_timeout";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
  descriptor___1.format = "Command timeout on stopped ring\n";
  descriptor___1.lineno = 1469U;
  descriptor___1.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___6->self.controller,
                      "Command timeout on stopped ring\n");
  } else {
  }
  xhci_handle_stopped_cmd_ring(xhci, xhci->current_cmd);
  spin_unlock_irqrestore(& xhci->lock, flags);
  return;
}
}
static void handle_cmd_completion(struct xhci_hcd *xhci , struct xhci_event_cmd *event )
{
  int slot_id ;
  u64 cmd_dma ;
  dma_addr_t cmd_dequeue_dma ;
  u32 cmd_comp_code ;
  union xhci_trb *cmd_trb ;
  struct xhci_command *cmd ;
  u32 cmd_type ;
  struct list_head const *__mptr ;
  struct usb_hcd *tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  int __ret_warn_on___0 ;
  long tmp___1 ;
  int __ret_warn_on___1 ;
  long tmp___2 ;
  int __ret_warn_on___2 ;
  long tmp___3 ;
  struct list_head const *__mptr___0 ;
  {
  slot_id = (int )(event->flags >> 24);
  cmd_dma = event->cmd_trb;
  cmd_trb = (xhci->cmd_ring)->dequeue;
  cmd_dequeue_dma = xhci_trb_virt_to_dma((xhci->cmd_ring)->deq_seg, cmd_trb);
  if (cmd_dequeue_dma == 0ULL) {
    xhci->error_bitmask = xhci->error_bitmask | 16;
    return;
  } else {
  }
  if (cmd_dma != cmd_dequeue_dma) {
    xhci->error_bitmask = xhci->error_bitmask | 32;
    return;
  } else {
  }
  __mptr = (struct list_head const *)xhci->cmd_list.next;
  cmd = (struct xhci_command *)__mptr + 0xffffffffffffffe0UL;
  if ((unsigned long )cmd->command_trb != (unsigned long )(xhci->cmd_ring)->dequeue) {
    tmp = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp->self.controller, "Command completion event does not match command\n");
    return;
  } else {
  }
  ldv_del_timer_95(& xhci->cmd_timer);
  trace_xhci_cmd_completion((void *)cmd_trb, (struct xhci_generic_trb *)event);
  cmd_comp_code = event->status >> 24;
  if (cmd_comp_code == 24U) {
    xhci_handle_stopped_cmd_ring(xhci, cmd);
    return;
  } else {
  }
  if (cmd_comp_code == 25U) {
    xhci->cmd_ring_state = 4U;
    if (cmd->status == 25U) {
      goto event_handled;
    } else {
    }
  } else {
  }
  cmd_type = (cmd_trb->generic.field[3] & 64512U) >> 10;
  switch (cmd_type) {
  case 9U:
  xhci_handle_cmd_enable_slot(xhci, slot_id, cmd_comp_code);
  goto ldv_32142;
  case 10U:
  xhci_handle_cmd_disable_slot(xhci, slot_id);
  goto ldv_32142;
  case 12U: ;
  if ((unsigned long )cmd->completion == (unsigned long )((struct completion *)0)) {
    xhci_handle_cmd_config_ep(xhci, slot_id, event, cmd_comp_code);
  } else {
  }
  goto ldv_32142;
  case 13U: ;
  goto ldv_32142;
  case 11U: ;
  goto ldv_32142;
  case 15U:
  __ret_warn_on = (__le32 )slot_id != cmd_trb->generic.field[3] >> 24;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared",
                       1551);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  xhci_handle_cmd_stop_ep(xhci, slot_id, cmd_trb, event);
  goto ldv_32142;
  case 16U:
  __ret_warn_on___0 = (__le32 )slot_id != cmd_trb->generic.field[3] >> 24;
  tmp___1 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared",
                       1556);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  xhci_handle_cmd_set_deq(xhci, slot_id, cmd_trb, cmd_comp_code);
  goto ldv_32142;
  case 23U: ;
  if (cmd->status == 24U) {
    cmd_comp_code = 24U;
  } else {
  }
  goto ldv_32142;
  case 14U:
  __ret_warn_on___1 = (__le32 )slot_id != cmd_trb->generic.field[3] >> 24;
  tmp___2 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  if (tmp___2 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared",
                       1566);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  xhci_handle_cmd_reset_ep(xhci, slot_id, cmd_trb, cmd_comp_code);
  goto ldv_32142;
  case 17U:
  __ret_warn_on___2 = (__le32 )slot_id != cmd_trb->generic.field[3] >> 24;
  tmp___3 = ldv__builtin_expect(__ret_warn_on___2 != 0, 0L);
  if (tmp___3 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared",
                       1571);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___2 != 0, 0L);
  xhci_handle_cmd_reset_dev(xhci, slot_id, event);
  goto ldv_32142;
  case 49U:
  xhci_handle_cmd_nec_get_fw(xhci, event);
  goto ldv_32142;
  default:
  xhci->error_bitmask = xhci->error_bitmask | 64;
  goto ldv_32142;
  }
  ldv_32142: ;
  if ((unsigned long )cmd->cmd_list.next != (unsigned long )(& xhci->cmd_list)) {
    __mptr___0 = (struct list_head const *)cmd->cmd_list.next;
    xhci->current_cmd = (struct xhci_command *)__mptr___0 + 0xffffffffffffffe0UL;
    ldv_mod_timer_96(& xhci->cmd_timer, (unsigned long )jiffies + 1250UL);
  } else {
  }
  event_handled:
  xhci_complete_del_and_free_cmd(cmd, cmd_comp_code);
  inc_deq(xhci, xhci->cmd_ring);
  return;
}
}
static void handle_vendor_event(struct xhci_hcd *xhci , union xhci_trb *event )
{
  u32 trb_type ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  trb_type = (event->generic.field[3] & 64512U) >> 10;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "handle_vendor_event";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
  descriptor.format = "Vendor specific event TRB type = %u\n";
  descriptor.lineno = 1602U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "Vendor specific event TRB type = %u\n", trb_type);
  } else {
  }
  if (trb_type == 48U && (xhci->quirks & 4U) != 0U) {
    handle_cmd_completion(xhci, & event->event_cmd);
  } else {
  }
  return;
}
}
static unsigned int find_faked_portnum_from_hw_portnum(struct usb_hcd *hcd , struct xhci_hcd *xhci ,
                                                       u32 port_id )
{
  unsigned int i ;
  unsigned int num_similar_speed_ports ;
  u8 port_speed ;
  {
  num_similar_speed_ports = 0U;
  i = 0U;
  goto ldv_32181;
  ldv_32180:
  port_speed = *(xhci->port_array + (unsigned long )i);
  if ((unsigned int )port_speed == 0U || (unsigned int )port_speed == 255U) {
    goto ldv_32179;
  } else {
  }
  if (((unsigned int )port_speed != 3U) ^ (hcd->speed == 64)) {
    num_similar_speed_ports = num_similar_speed_ports + 1U;
  } else {
  }
  ldv_32179:
  i = i + 1U;
  ldv_32181: ;
  if (port_id - 1U > i) {
    goto ldv_32180;
  } else {
  }
  return (num_similar_speed_ports);
}
}
static void handle_device_notification(struct xhci_hcd *xhci , union xhci_trb *event )
{
  u32 slot_id ;
  struct usb_device *udev ;
  struct usb_hcd *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  {
  slot_id = event->generic.field[3] >> 24;
  if ((unsigned long )xhci->devs[slot_id] == (unsigned long )((struct xhci_virt_device *)0)) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "Device Notification event for unused slot %u\n",
             slot_id);
    return;
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "handle_device_notification";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
  descriptor.format = "Device Wake Notification event for slot ID %u\n";
  descriptor.lineno = 1659U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Device Wake Notification event for slot ID %u\n", slot_id);
  } else {
  }
  udev = (xhci->devs[slot_id])->udev;
  if ((unsigned long )udev != (unsigned long )((struct usb_device *)0) && (unsigned long )udev->parent != (unsigned long )((struct usb_device *)0)) {
    usb_wakeup_notification(udev->parent, (unsigned int )udev->portnum);
  } else {
  }
  return;
}
}
static void handle_port_status(struct xhci_hcd *xhci , union xhci_trb *event )
{
  struct usb_hcd *hcd ;
  u32 port_id ;
  u32 temp ;
  u32 temp1 ;
  int max_ports ;
  int slot_id ;
  unsigned int faked_port_index ;
  u8 major_revision ;
  struct xhci_bus_state *bus_state ;
  __le32 **port_array ;
  bool bogus_port_status ;
  struct usb_hcd *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct usb_hcd *tmp___2 ;
  struct usb_hcd *tmp___3 ;
  struct usb_hcd *tmp___4 ;
  unsigned int tmp___5 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  struct usb_hcd *tmp___10 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___13 ;
  long tmp___14 ;
  unsigned long tmp___15 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___16 ;
  long tmp___17 ;
  int tmp___18 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___19 ;
  long tmp___20 ;
  {
  bogus_port_status = 0;
  if (event->generic.field[2] >> 24 != 1U) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN: xHC returned failed port status event\n");
    xhci->error_bitmask = xhci->error_bitmask | 256;
  } else {
  }
  port_id = event->generic.field[0] >> 24;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "handle_port_status";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
  descriptor.format = "Port Status Change Event for port %d\n";
  descriptor.lineno = 1685U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Port Status Change Event for port %d\n", port_id);
  } else {
  }
  max_ports = (int )(xhci->hcs_params1 >> 24) & 127;
  if (port_id == 0U || (u32 )max_ports < port_id) {
    tmp___2 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___2->self.controller, "Invalid port id %d\n",
             port_id);
    inc_deq(xhci, xhci->event_ring);
    return;
  } else {
  }
  major_revision = *(xhci->port_array + (unsigned long )(port_id - 1U));
  hcd = xhci_to_hcd(xhci);
  if (((unsigned int )major_revision == 3U) ^ (hcd->speed == 64)) {
    hcd = xhci->shared_hcd;
  } else {
  }
  if ((unsigned int )major_revision == 0U) {
    tmp___3 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___3->self.controller, "Event for port %u not in Extended Capabilities, ignoring.\n",
             port_id);
    bogus_port_status = 1;
    goto cleanup;
  } else {
  }
  if ((unsigned int )major_revision == 255U) {
    tmp___4 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___4->self.controller, "Event for port %u duplicated inExtended Capabilities, ignoring.\n",
             port_id);
    bogus_port_status = 1;
    goto cleanup;
  } else {
  }
  tmp___5 = hcd_index(hcd);
  bus_state = (struct xhci_bus_state *)(& xhci->bus_state) + (unsigned long )tmp___5;
  if (hcd->speed == 64) {
    port_array = xhci->usb3_ports;
  } else {
    port_array = xhci->usb2_ports;
  }
  faked_port_index = find_faked_portnum_from_hw_portnum(hcd, xhci, port_id);
  temp = readl((void const volatile *)*(port_array + (unsigned long )faked_port_index));
  if (hcd->state == 4) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "handle_port_status";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor___0.format = "resume root hub\n";
    descriptor___0.lineno = 1737U;
    descriptor___0.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      tmp___6 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___6->self.controller,
                        "resume root hub\n");
    } else {
    }
    usb_hcd_resume_root_hub(hcd);
  } else {
  }
  if ((temp & 4194304U) != 0U && (temp & 480U) == 480U) {
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "handle_port_status";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor___1.format = "port resume event for port %d\n";
    descriptor___1.lineno = 1742U;
    descriptor___1.flags = 0U;
    tmp___9 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      tmp___8 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___8->self.controller,
                        "port resume event for port %d\n", port_id);
    } else {
    }
    temp1 = readl((void const volatile *)(& (xhci->op_regs)->command));
    if ((temp1 & 1U) == 0U) {
      tmp___10 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___10->self.controller, "xHC is not running.\n");
      goto cleanup;
    } else {
    }
    if ((temp & 15360U) == 4096U) {
      descriptor___2.modname = "xhci_hcd";
      descriptor___2.function = "handle_port_status";
      descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
      descriptor___2.format = "remote wake SS port %d\n";
      descriptor___2.lineno = 1751U;
      descriptor___2.flags = 0U;
      tmp___12 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      if (tmp___12 != 0L) {
        tmp___11 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___11->self.controller,
                          "remote wake SS port %d\n", port_id);
      } else {
      }
      bus_state->port_remote_wakeup = bus_state->port_remote_wakeup | (u32 )(1 << (int )faked_port_index);
      xhci_test_and_clear_bit(xhci, port_array, (int )faked_port_index, 4194304U);
      xhci_set_link_state(xhci, port_array, (int )faked_port_index, 0U);
      bogus_port_status = 1;
      goto cleanup;
    } else {
      descriptor___3.modname = "xhci_hcd";
      descriptor___3.function = "handle_port_status";
      descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
      descriptor___3.format = "resume HS port %d\n";
      descriptor___3.lineno = 1767U;
      descriptor___3.flags = 0U;
      tmp___14 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
      if (tmp___14 != 0L) {
        tmp___13 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___13->self.controller,
                          "resume HS port %d\n", port_id);
      } else {
      }
      tmp___15 = msecs_to_jiffies(20U);
      bus_state->resume_done[faked_port_index] = tmp___15 + (unsigned long )jiffies;
      set_bit((long )faked_port_index, (unsigned long volatile *)(& bus_state->resuming_ports));
      ldv_mod_timer_97(& hcd->rh_timer, bus_state->resume_done[faked_port_index]);
    }
  } else {
  }
  if (((temp & 4194304U) != 0U && (temp & 480U) == 0U) && (temp & 15360U) == 4096U) {
    descriptor___4.modname = "xhci_hcd";
    descriptor___4.function = "handle_port_status";
    descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor___4.format = "resume SS port %d finished\n";
    descriptor___4.lineno = 1779U;
    descriptor___4.flags = 0U;
    tmp___17 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___17 != 0L) {
      tmp___16 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___16->self.controller,
                        "resume SS port %d finished\n", port_id);
    } else {
    }
    slot_id = xhci_find_slot_id_by_port(hcd, xhci, (int )((unsigned int )((u16 )faked_port_index) + 1U));
    if (slot_id != 0 && (unsigned long )xhci->devs[slot_id] != (unsigned long )((struct xhci_virt_device *)0)) {
      xhci_ring_device(xhci, slot_id);
    } else {
    }
    if ((bus_state->port_remote_wakeup & (u32 )(1 << (int )faked_port_index)) != 0U) {
      bus_state->port_remote_wakeup = bus_state->port_remote_wakeup & (u32 )(~ (1 << (int )faked_port_index));
      xhci_test_and_clear_bit(xhci, port_array, (int )faked_port_index, 4194304U);
      usb_wakeup_notification(hcd->self.root_hub, faked_port_index + 1U);
      bogus_port_status = 1;
      goto cleanup;
    } else {
    }
  } else {
  }
  if ((temp & 15360U) != 4096U) {
    tmp___18 = test_and_clear_bit((long )faked_port_index, (unsigned long volatile *)(& bus_state->rexit_ports));
    if (tmp___18 != 0) {
      complete((struct completion *)(& bus_state->rexit_done) + (unsigned long )faked_port_index);
      bogus_port_status = 1;
      goto cleanup;
    } else {
    }
  } else {
  }
  if (hcd->speed != 64) {
    xhci_test_and_clear_bit(xhci, port_array, (int )faked_port_index, 4194304U);
  } else {
  }
  cleanup:
  inc_deq(xhci, xhci->event_ring);
  if ((int )bogus_port_status) {
    return;
  } else {
  }
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "handle_port_status";
  descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
  descriptor___5.format = "%s: starting port polling.\n";
  descriptor___5.lineno = 1838U;
  descriptor___5.flags = 0U;
  tmp___20 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___20 != 0L) {
    tmp___19 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___19->self.controller,
                      "%s: starting port polling.\n", "handle_port_status");
  } else {
  }
  set_bit(2L, (unsigned long volatile *)(& hcd->flags));
  spin_unlock(& xhci->lock);
  usb_hcd_poll_rh_status(hcd);
  spin_lock(& xhci->lock);
  return;
}
}
struct xhci_segment *trb_in_td(struct xhci_segment *start_seg , union xhci_trb *start_trb ,
                               union xhci_trb *end_trb , dma_addr_t suspect_dma )
{
  dma_addr_t start_dma ;
  dma_addr_t end_seg_dma ;
  dma_addr_t end_trb_dma ;
  struct xhci_segment *cur_seg ;
  {
  start_dma = xhci_trb_virt_to_dma(start_seg, start_trb);
  cur_seg = start_seg;
  ldv_32225: ;
  if (start_dma == 0ULL) {
    return ((struct xhci_segment *)0);
  } else {
  }
  end_seg_dma = xhci_trb_virt_to_dma(cur_seg, cur_seg->trbs + 63UL);
  end_trb_dma = xhci_trb_virt_to_dma(cur_seg, end_trb);
  if (end_trb_dma != 0ULL) {
    if (start_dma <= end_trb_dma) {
      if (suspect_dma >= start_dma && suspect_dma <= end_trb_dma) {
        return (cur_seg);
      } else {
      }
    } else
    if ((suspect_dma >= start_dma && suspect_dma <= end_seg_dma) || (cur_seg->dma <= suspect_dma && suspect_dma <= end_trb_dma)) {
      return (cur_seg);
    } else {
    }
    return ((struct xhci_segment *)0);
  } else
  if (suspect_dma >= start_dma && suspect_dma <= end_seg_dma) {
    return (cur_seg);
  } else {
  }
  cur_seg = cur_seg->next;
  start_dma = xhci_trb_virt_to_dma(cur_seg, cur_seg->trbs);
  if ((unsigned long )cur_seg != (unsigned long )start_seg) {
    goto ldv_32225;
  } else {
  }
  return ((struct xhci_segment *)0);
}
}
static void xhci_cleanup_halted_endpoint(struct xhci_hcd *xhci , unsigned int slot_id ,
                                         unsigned int ep_index , unsigned int stream_id ,
                                         struct xhci_td *td , union xhci_trb *event_trb )
{
  struct xhci_virt_ep *ep ;
  struct xhci_command *command ;
  {
  ep = (struct xhci_virt_ep *)(& (xhci->devs[slot_id])->eps) + (unsigned long )ep_index;
  command = xhci_alloc_command(xhci, 0, 0, 32U);
  if ((unsigned long )command == (unsigned long )((struct xhci_command *)0)) {
    return;
  } else {
  }
  ep->ep_state = ep->ep_state | 2U;
  ep->stopped_td = td;
  ep->stopped_stream = stream_id;
  xhci_queue_reset_ep(xhci, command, (int )slot_id, ep_index);
  xhci_cleanup_stalled_ring(xhci, (td->urb)->dev, ep_index);
  ep->stopped_td = (struct xhci_td *)0;
  ep->stopped_stream = 0U;
  xhci_ring_cmd_db(xhci);
  return;
}
}
static int xhci_requires_manual_halt_cleanup(struct xhci_hcd *xhci , struct xhci_ep_ctx *ep_ctx ,
                                             unsigned int trb_comp_code )
{
  {
  if ((trb_comp_code == 4U || trb_comp_code == 3U) || trb_comp_code == 36U) {
    if ((ep_ctx->ep_info & 15U) == 2U) {
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
int xhci_is_vendor_info_code(struct xhci_hcd *xhci , unsigned int trb_comp_code )
{
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  if (trb_comp_code > 223U && trb_comp_code <= 255U) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_is_vendor_info_code";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor.format = "Vendor defined info completion code %u\n";
    descriptor.lineno = 1960U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Vendor defined info completion code %u\n", trb_comp_code);
    } else {
    }
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_is_vendor_info_code";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor___0.format = "Treating code as success.\n";
    descriptor___0.lineno = 1961U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "Treating code as success.\n");
    } else {
    }
    return (1);
  } else {
  }
  return (0);
}
}
static int finish_td(struct xhci_hcd *xhci , struct xhci_td *td , union xhci_trb *event_trb ,
                     struct xhci_transfer_event *event , struct xhci_virt_ep *ep ,
                     int *status , bool skip )
{
  struct xhci_virt_device *xdev ;
  struct xhci_ring *ep_ring ;
  unsigned int slot_id ;
  int ep_index ;
  struct urb *urb ;
  struct xhci_ep_ctx *ep_ctx ;
  int ret ;
  struct urb_priv *urb_priv ;
  u32 trb_comp_code ;
  int tmp ;
  struct usb_hcd *tmp___0 ;
  int tmp___1 ;
  struct usb_hcd *tmp___2 ;
  struct usb_hcd *tmp___3 ;
  {
  urb = (struct urb *)0;
  ret = 0;
  slot_id = event->flags >> 24;
  xdev = xhci->devs[slot_id];
  ep_index = (int )(((event->flags >> 16) & 31U) - 1U);
  ep_ring = xhci_dma_to_transfer_ring(ep, event->buffer);
  ep_ctx = xhci_get_ep_ctx(xhci, xdev->out_ctx, (unsigned int )ep_index);
  trb_comp_code = event->transfer_len >> 24;
  if ((int )skip) {
    goto td_cleanup;
  } else {
  }
  if (trb_comp_code == 27U || trb_comp_code == 26U) {
    ep->stopped_td = td;
    return (0);
  } else {
    if (trb_comp_code == 6U) {
      ep->stopped_td = td;
      ep->stopped_stream = ep_ring->stream_id;
    } else {
      tmp = xhci_requires_manual_halt_cleanup(xhci, ep_ctx, trb_comp_code);
      if (tmp != 0) {
        xhci_cleanup_halted_endpoint(xhci, slot_id, (unsigned int )ep_index, ep_ring->stream_id,
                                     td, event_trb);
      } else {
        goto ldv_32269;
        ldv_32268:
        inc_deq(xhci, ep_ring);
        ldv_32269: ;
        if ((unsigned long )ep_ring->dequeue != (unsigned long )td->last_trb) {
          goto ldv_32268;
        } else {
        }
        inc_deq(xhci, ep_ring);
      }
    }
    td_cleanup:
    urb = td->urb;
    urb_priv = (struct urb_priv *)urb->hcpriv;
    if (urb->actual_length > urb->transfer_buffer_length) {
      tmp___0 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___0->self.controller, "URB transfer length is wrong, xHC issue? req. len = %u, act. len = %u\n",
               urb->transfer_buffer_length, urb->actual_length);
      urb->actual_length = 0U;
      if ((int )(td->urb)->transfer_flags & 1) {
        *status = -121;
      } else {
        *status = 0;
      }
    } else {
    }
    list_del_init(& td->td_list);
    tmp___1 = list_empty((struct list_head const *)(& td->cancelled_td_list));
    if (tmp___1 == 0) {
      list_del_init(& td->cancelled_td_list);
    } else {
    }
    urb_priv->td_cnt = urb_priv->td_cnt + 1;
    if (urb_priv->td_cnt == urb_priv->length) {
      ret = 1;
      if (urb->pipe >> 30 == 0U) {
        tmp___2 = xhci_to_hcd(xhci);
        tmp___2->self.bandwidth_isoc_reqs = tmp___2->self.bandwidth_isoc_reqs - 1;
        tmp___3 = xhci_to_hcd(xhci);
        if (tmp___3->self.bandwidth_isoc_reqs == 0) {
          if ((xhci->quirks & 8U) != 0U) {
            usb_amd_quirk_pll_enable();
          } else {
          }
        } else {
        }
      } else {
      }
    } else {
    }
  }
  return (ret);
}
}
static int process_ctrl_td(struct xhci_hcd *xhci , struct xhci_td *td , union xhci_trb *event_trb ,
                           struct xhci_transfer_event *event , struct xhci_virt_ep *ep ,
                           int *status )
{
  struct xhci_virt_device *xdev ;
  struct xhci_ring *ep_ring ;
  unsigned int slot_id ;
  int ep_index ;
  struct xhci_ep_ctx *ep_ctx ;
  u32 trb_comp_code ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  int tmp___5 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  int tmp___8 ;
  {
  slot_id = event->flags >> 24;
  xdev = xhci->devs[slot_id];
  ep_index = (int )(((event->flags >> 16) & 31U) - 1U);
  ep_ring = xhci_dma_to_transfer_ring(ep, event->buffer);
  ep_ctx = xhci_get_ep_ctx(xhci, xdev->out_ctx, (unsigned int )ep_index);
  trb_comp_code = event->transfer_len >> 24;
  switch (trb_comp_code) {
  case 1U: ;
  if ((unsigned long )ep_ring->dequeue == (unsigned long )event_trb) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN: Success on ctrl setup TRB without IOC set??\n");
    *status = -108;
  } else
  if ((unsigned long )td->last_trb != (unsigned long )event_trb) {
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "WARN: Success on ctrl data TRB without IOC set??\n");
    *status = -108;
  } else {
    *status = 0;
  }
  goto ldv_32286;
  case 13U: ;
  if ((int )(td->urb)->transfer_flags & 1) {
    *status = -121;
  } else {
    *status = 0;
  }
  goto ldv_32286;
  case 27U: ;
  case 26U:
  tmp___1 = finish_td(xhci, td, event_trb, event, ep, status, 0);
  return (tmp___1);
  default:
  tmp___2 = xhci_requires_manual_halt_cleanup(xhci, ep_ctx, trb_comp_code);
  if (tmp___2 == 0) {
    goto ldv_32286;
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "process_ctrl_td";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
  descriptor.format = "TRB error code %u, halted endpoint index = %u\n";
  descriptor.lineno = 2127U;
  descriptor.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___3->self.controller,
                      "TRB error code %u, halted endpoint index = %u\n", trb_comp_code,
                      ep_index);
  } else {
  }
  case 6U: ;
  if ((unsigned long )ep_ring->dequeue != (unsigned long )event_trb && (unsigned long )td->last_trb != (unsigned long )event_trb) {
    (td->urb)->actual_length = (td->urb)->transfer_buffer_length - (event->transfer_len & 16777215U);
  } else {
    (td->urb)->actual_length = 0U;
  }
  xhci_cleanup_halted_endpoint(xhci, slot_id, (unsigned int )ep_index, 0U, td, event_trb);
  tmp___5 = finish_td(xhci, td, event_trb, event, ep, status, 1);
  return (tmp___5);
  }
  ldv_32286: ;
  if ((unsigned long )ep_ring->dequeue != (unsigned long )event_trb) {
    if ((unsigned long )td->last_trb == (unsigned long )event_trb) {
      if ((td->urb)->actual_length != 0U) {
        if ((*status == -115 || *status == 0) && (int )(td->urb)->transfer_flags & 1) {
          *status = -121;
        } else {
        }
      } else {
        (td->urb)->actual_length = (td->urb)->transfer_buffer_length;
      }
    } else {
      (td->urb)->actual_length = (td->urb)->transfer_buffer_length - (event->transfer_len & 16777215U);
      descriptor___0.modname = "xhci_hcd";
      descriptor___0.function = "process_ctrl_td";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
      descriptor___0.format = "Waiting for status stage event\n";
      descriptor___0.lineno = 2169U;
      descriptor___0.flags = 0U;
      tmp___7 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___7 != 0L) {
        tmp___6 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___6->self.controller,
                          "Waiting for status stage event\n");
      } else {
      }
      return (0);
    }
  } else {
  }
  tmp___8 = finish_td(xhci, td, event_trb, event, ep, status, 0);
  return (tmp___8);
}
}
static int process_isoc_td(struct xhci_hcd *xhci , struct xhci_td *td , union xhci_trb *event_trb ,
                           struct xhci_transfer_event *event , struct xhci_virt_ep *ep ,
                           int *status )
{
  struct xhci_ring *ep_ring ;
  struct urb_priv *urb_priv ;
  int idx ;
  int len ;
  union xhci_trb *cur_trb ;
  struct xhci_segment *cur_seg ;
  struct usb_iso_packet_descriptor *frame ;
  u32 trb_comp_code ;
  bool skip_td ;
  int tmp ;
  {
  len = 0;
  skip_td = 0;
  ep_ring = xhci_dma_to_transfer_ring(ep, event->buffer);
  trb_comp_code = event->transfer_len >> 24;
  urb_priv = (struct urb_priv *)(td->urb)->hcpriv;
  idx = urb_priv->td_cnt;
  frame = (struct usb_iso_packet_descriptor *)(& (td->urb)->iso_frame_desc) + (unsigned long )idx;
  switch (trb_comp_code) {
  case 1U: ;
  if ((event->transfer_len & 16777215U) == 0U) {
    frame->status = 0;
    goto ldv_32313;
  } else {
  }
  if ((xhci->quirks & 1024U) != 0U) {
    trb_comp_code = 13U;
  } else {
  }
  case 13U:
  frame->status = (int )(td->urb)->transfer_flags & 1 ? -121 : 0;
  goto ldv_32313;
  case 18U:
  frame->status = -70;
  skip_td = 1;
  goto ldv_32313;
  case 31U: ;
  case 3U:
  frame->status = -75;
  skip_td = 1;
  goto ldv_32313;
  case 22U: ;
  case 6U: ;
  case 4U:
  frame->status = -71;
  skip_td = 1;
  goto ldv_32313;
  case 26U: ;
  case 27U: ;
  goto ldv_32313;
  default:
  frame->status = -1;
  goto ldv_32313;
  }
  ldv_32313: ;
  if (trb_comp_code == 1U || (int )skip_td) {
    frame->actual_length = frame->length;
    (td->urb)->actual_length = (td->urb)->actual_length + frame->length;
  } else {
    cur_trb = ep_ring->dequeue;
    cur_seg = ep_ring->deq_seg;
    goto ldv_32325;
    ldv_32324: ;
    if ((cur_trb->generic.field[3] & 64512U) != 8192U && (cur_trb->generic.field[3] & 64512U) != 6144U) {
      len = (int )((cur_trb->generic.field[2] & 131071U) + (__le32 )len);
    } else {
    }
    next_trb(xhci, ep_ring, & cur_seg, & cur_trb);
    ldv_32325: ;
    if ((unsigned long )cur_trb != (unsigned long )event_trb) {
      goto ldv_32324;
    } else {
    }
    len = (int )(((cur_trb->generic.field[2] & 131071U) - (event->transfer_len & 16777215U)) + (__le32 )len);
    if (trb_comp_code != 27U) {
      frame->actual_length = (unsigned int )len;
      (td->urb)->actual_length = (td->urb)->actual_length + (u32 )len;
    } else {
    }
  }
  tmp = finish_td(xhci, td, event_trb, event, ep, status, 0);
  return (tmp);
}
}
static int skip_isoc_td(struct xhci_hcd *xhci , struct xhci_td *td , struct xhci_transfer_event *event ,
                        struct xhci_virt_ep *ep , int *status )
{
  struct xhci_ring *ep_ring ;
  struct urb_priv *urb_priv ;
  struct usb_iso_packet_descriptor *frame ;
  int idx ;
  int tmp ;
  {
  ep_ring = xhci_dma_to_transfer_ring(ep, event->buffer);
  urb_priv = (struct urb_priv *)(td->urb)->hcpriv;
  idx = urb_priv->td_cnt;
  frame = (struct usb_iso_packet_descriptor *)(& (td->urb)->iso_frame_desc) + (unsigned long )idx;
  frame->status = -18;
  frame->actual_length = 0U;
  goto ldv_32339;
  ldv_32338:
  inc_deq(xhci, ep_ring);
  ldv_32339: ;
  if ((unsigned long )ep_ring->dequeue != (unsigned long )td->last_trb) {
    goto ldv_32338;
  } else {
  }
  inc_deq(xhci, ep_ring);
  tmp = finish_td(xhci, td, (union xhci_trb *)0, event, ep, status, 1);
  return (tmp);
}
}
static int process_bulk_intr_td(struct xhci_hcd *xhci , struct xhci_td *td , union xhci_trb *event_trb ,
                                struct xhci_transfer_event *event , struct xhci_virt_ep *ep ,
                                int *status )
{
  struct xhci_ring *ep_ring ;
  union xhci_trb *cur_trb ;
  struct xhci_segment *cur_seg ;
  u32 trb_comp_code ;
  struct usb_hcd *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct usb_hcd *tmp___2 ;
  int tmp___3 ;
  {
  ep_ring = xhci_dma_to_transfer_ring(ep, event->buffer);
  trb_comp_code = event->transfer_len >> 24;
  switch (trb_comp_code) {
  case 1U: ;
  if ((unsigned long )td->last_trb != (unsigned long )event_trb || (event->transfer_len & 16777215U) != 0U) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN Successful completion on short TX\n");
    if ((int )(td->urb)->transfer_flags & 1) {
      *status = -121;
    } else {
      *status = 0;
    }
    if ((xhci->quirks & 1024U) != 0U) {
      trb_comp_code = 13U;
    } else {
    }
  } else {
    *status = 0;
  }
  goto ldv_32354;
  case 13U: ;
  if ((int )(td->urb)->transfer_flags & 1) {
    *status = -121;
  } else {
    *status = 0;
  }
  goto ldv_32354;
  default: ;
  goto ldv_32354;
  }
  ldv_32354: ;
  if (trb_comp_code == 13U) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "process_bulk_intr_td";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor.format = "ep %#x - asked for %d bytes, %d bytes untransferred\n";
    descriptor.lineno = 2334U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "ep %#x - asked for %d bytes, %d bytes untransferred\n", (int )((td->urb)->ep)->desc.bEndpointAddress,
                        (td->urb)->transfer_buffer_length, event->transfer_len & 16777215U);
    } else {
    }
  } else {
  }
  if ((unsigned long )td->last_trb == (unsigned long )event_trb) {
    if ((event->transfer_len & 16777215U) != 0U) {
      (td->urb)->actual_length = (td->urb)->transfer_buffer_length - (event->transfer_len & 16777215U);
      if ((td->urb)->transfer_buffer_length < (td->urb)->actual_length) {
        tmp___2 = xhci_to_hcd(xhci);
        dev_warn((struct device const *)tmp___2->self.controller, "HC gave bad length of %d bytes left\n",
                 event->transfer_len & 16777215U);
        (td->urb)->actual_length = 0U;
        if ((int )(td->urb)->transfer_flags & 1) {
          *status = -121;
        } else {
          *status = 0;
        }
      } else {
      }
      if (*status == -115) {
        if ((int )(td->urb)->transfer_flags & 1) {
          *status = -121;
        } else {
          *status = 0;
        }
      } else {
      }
    } else {
      (td->urb)->actual_length = (td->urb)->transfer_buffer_length;
      if (*status == -121) {
        *status = 0;
      } else {
      }
    }
  } else {
    (td->urb)->actual_length = 0U;
    cur_trb = ep_ring->dequeue;
    cur_seg = ep_ring->deq_seg;
    goto ldv_32360;
    ldv_32359: ;
    if ((cur_trb->generic.field[3] & 64512U) != 8192U && (cur_trb->generic.field[3] & 64512U) != 6144U) {
      (td->urb)->actual_length = (td->urb)->actual_length + (cur_trb->generic.field[2] & 131071U);
    } else {
    }
    next_trb(xhci, ep_ring, & cur_seg, & cur_trb);
    ldv_32360: ;
    if ((unsigned long )cur_trb != (unsigned long )event_trb) {
      goto ldv_32359;
    } else {
    }
    if (trb_comp_code != 27U) {
      (td->urb)->actual_length = (td->urb)->actual_length + ((cur_trb->generic.field[2] & 131071U) - (event->transfer_len & 16777215U));
    } else {
    }
  }
  tmp___3 = finish_td(xhci, td, event_trb, event, ep, status, 0);
  return (tmp___3);
}
}
static int handle_tx_event(struct xhci_hcd *xhci , struct xhci_transfer_event *event )
{
  struct xhci_virt_device *xdev ;
  struct xhci_virt_ep *ep ;
  struct xhci_ring *ep_ring ;
  unsigned int slot_id ;
  int ep_index ;
  struct xhci_td *td ;
  dma_addr_t event_dma ;
  struct xhci_segment *event_seg ;
  union xhci_trb *event_trb ;
  struct urb *urb ;
  int status ;
  struct urb_priv *urb_priv ;
  struct xhci_ep_ctx *ep_ctx ;
  struct list_head *tmp ;
  u32 trb_comp_code ;
  int ret ;
  int td_num ;
  struct usb_hcd *tmp___0 ;
  dma_addr_t tmp___1 ;
  struct usb_hcd *tmp___2 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct usb_hcd *tmp___5 ;
  dma_addr_t tmp___6 ;
  struct usb_hcd *tmp___7 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  struct ratelimit_state _rs ;
  struct usb_hcd *tmp___10 ;
  int tmp___11 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___12 ;
  long tmp___13 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___14 ;
  long tmp___15 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___16 ;
  long tmp___17 ;
  struct usb_hcd *tmp___18 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___19 ;
  long tmp___20 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___21 ;
  long tmp___22 ;
  struct usb_hcd *tmp___23 ;
  struct usb_hcd *tmp___24 ;
  struct usb_hcd *tmp___25 ;
  struct _ddebug descriptor___6 ;
  struct usb_hcd *tmp___26 ;
  long tmp___27 ;
  struct _ddebug descriptor___7 ;
  struct usb_hcd *tmp___28 ;
  long tmp___29 ;
  int tmp___30 ;
  struct _ddebug descriptor___8 ;
  struct usb_hcd *tmp___31 ;
  long tmp___32 ;
  struct _ddebug descriptor___9 ;
  struct usb_hcd *tmp___33 ;
  long tmp___34 ;
  int tmp___35 ;
  struct usb_hcd *tmp___36 ;
  struct _ddebug descriptor___10 ;
  struct usb_hcd *tmp___37 ;
  long tmp___38 ;
  int tmp___39 ;
  struct usb_hcd *tmp___40 ;
  struct usb_hcd *tmp___41 ;
  struct _ddebug descriptor___11 ;
  struct usb_hcd *tmp___42 ;
  long tmp___43 ;
  struct _ddebug descriptor___12 ;
  struct usb_hcd *tmp___44 ;
  long tmp___45 ;
  int tmp___46 ;
  struct _ddebug descriptor___13 ;
  struct usb_hcd *tmp___47 ;
  long tmp___48 ;
  struct list_head const *__mptr ;
  struct usb_hcd *tmp___49 ;
  int tmp___50 ;
  struct _ddebug descriptor___14 ;
  struct usb_hcd *tmp___51 ;
  long tmp___52 ;
  struct _ddebug descriptor___15 ;
  struct usb_hcd *tmp___53 ;
  long tmp___54 ;
  int tmp___55 ;
  int tmp___56 ;
  int tmp___57 ;
  struct usb_hcd *tmp___58 ;
  struct _ddebug descriptor___16 ;
  struct usb_hcd *tmp___59 ;
  long tmp___60 ;
  int tmp___61 ;
  struct usb_hcd *tmp___62 ;
  {
  td = (struct xhci_td *)0;
  urb = (struct urb *)0;
  status = -115;
  ret = 0;
  td_num = 0;
  slot_id = event->flags >> 24;
  xdev = xhci->devs[slot_id];
  if ((unsigned long )xdev == (unsigned long )((struct xhci_virt_device *)0)) {
    tmp___0 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___0->self.controller, "OLD_ERROR Transfer event pointed to bad slot\n");
    tmp___1 = xhci_trb_virt_to_dma((xhci->event_ring)->deq_seg, (xhci->event_ring)->dequeue);
    tmp___2 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___2->self.controller, "@%016llx %08x %08x %08x %08x\n",
            tmp___1, (unsigned int )event->buffer, (unsigned int )(event->buffer >> 32ULL),
            event->transfer_len, event->flags);
    descriptor.modname = "xhci_hcd";
    descriptor.function = "handle_tx_event";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor.format = "Event ring:\n";
    descriptor.lineno = 2433U;
    descriptor.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      tmp___3 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___3->self.controller,
                        "Event ring:\n");
    } else {
    }
    xhci_debug_segment(xhci, (xhci->event_ring)->deq_seg);
    return (-19);
  } else {
  }
  ep_index = (int )(((event->flags >> 16) & 31U) - 1U);
  ep = (struct xhci_virt_ep *)(& xdev->eps) + (unsigned long )ep_index;
  ep_ring = xhci_dma_to_transfer_ring(ep, event->buffer);
  ep_ctx = xhci_get_ep_ctx(xhci, xdev->out_ctx, (unsigned int )ep_index);
  if ((unsigned long )ep_ring == (unsigned long )((struct xhci_ring *)0) || (ep_ctx->ep_info & 15U) == 0U) {
    tmp___5 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___5->self.controller, "OLD_ERROR Transfer event for disabled endpoint or incorrect stream ring\n");
    tmp___6 = xhci_trb_virt_to_dma((xhci->event_ring)->deq_seg, (xhci->event_ring)->dequeue);
    tmp___7 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___7->self.controller, "@%016llx %08x %08x %08x %08x\n",
            tmp___6, (unsigned int )event->buffer, (unsigned int )(event->buffer >> 32ULL),
            event->transfer_len, event->flags);
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "handle_tx_event";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor___0.format = "Event ring:\n";
    descriptor___0.lineno = 2456U;
    descriptor___0.flags = 0U;
    tmp___9 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      tmp___8 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___8->self.controller,
                        "Event ring:\n");
    } else {
    }
    xhci_debug_segment(xhci, (xhci->event_ring)->deq_seg);
    return (-19);
  } else {
  }
  if ((int )ep->skip) {
    tmp = ep_ring->td_list.next;
    goto ldv_32387;
    ldv_32386:
    td_num = td_num + 1;
    tmp = tmp->next;
    ldv_32387: ;
    if ((unsigned long )(& ep_ring->td_list) != (unsigned long )tmp) {
      goto ldv_32386;
    } else {
    }
  } else {
  }
  event_dma = event->buffer;
  trb_comp_code = event->transfer_len >> 24;
  switch (trb_comp_code) {
  case 1U: ;
  if ((event->transfer_len & 16777215U) == 0U) {
    goto ldv_32390;
  } else {
  }
  if ((xhci->quirks & 1024U) != 0U) {
    trb_comp_code = 13U;
  } else {
    _rs.lock.raw_lock.ldv_1458.head_tail = 0U;
    _rs.lock.magic = 3735899821U;
    _rs.lock.owner_cpu = 4294967295U;
    _rs.lock.owner = (void *)-1;
    _rs.lock.dep_map.key = 0;
    _rs.lock.dep_map.class_cache[0] = 0;
    _rs.lock.dep_map.class_cache[1] = 0;
    _rs.lock.dep_map.name = "_rs.lock";
    _rs.lock.dep_map.cpu = 0;
    _rs.lock.dep_map.ip = 0UL;
    _rs.interval = 1250;
    _rs.burst = 10;
    _rs.printed = 0;
    _rs.missed = 0;
    _rs.begin = 0UL;
    tmp___11 = ___ratelimit(& _rs, "handle_tx_event");
    if (tmp___11 != 0) {
      tmp___10 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___10->self.controller, "WARN Successful completion on short TX: needs XHCI_TRUST_TX_LENGTH quirk?\n");
    } else {
    }
  }
  case 13U: ;
  goto ldv_32390;
  case 26U:
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "handle_tx_event";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
  descriptor___1.format = "Stopped on Transfer TRB\n";
  descriptor___1.lineno = 2485U;
  descriptor___1.flags = 0U;
  tmp___13 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___13 != 0L) {
    tmp___12 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___12->self.controller,
                      "Stopped on Transfer TRB\n");
  } else {
  }
  goto ldv_32390;
  case 27U:
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "handle_tx_event";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
  descriptor___2.format = "Stopped on No-op or Link TRB\n";
  descriptor___2.lineno = 2488U;
  descriptor___2.flags = 0U;
  tmp___15 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___15 != 0L) {
    tmp___14 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___14->self.controller,
                      "Stopped on No-op or Link TRB\n");
  } else {
  }
  goto ldv_32390;
  case 6U:
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "handle_tx_event";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
  descriptor___3.format = "Stalled endpoint\n";
  descriptor___3.lineno = 2491U;
  descriptor___3.flags = 0U;
  tmp___17 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___17 != 0L) {
    tmp___16 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___16->self.controller,
                      "Stalled endpoint\n");
  } else {
  }
  ep->ep_state = ep->ep_state | 2U;
  status = -32;
  goto ldv_32390;
  case 5U:
  tmp___18 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___18->self.controller, "WARN: TRB error on endpoint\n");
  status = -84;
  goto ldv_32390;
  case 36U: ;
  case 4U:
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "handle_tx_event";
  descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
  descriptor___4.format = "Transfer error on endpoint\n";
  descriptor___4.lineno = 2501U;
  descriptor___4.flags = 0U;
  tmp___20 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___20 != 0L) {
    tmp___19 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___19->self.controller,
                      "Transfer error on endpoint\n");
  } else {
  }
  status = -71;
  goto ldv_32390;
  case 3U:
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "handle_tx_event";
  descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
  descriptor___5.format = "Babble error on endpoint\n";
  descriptor___5.lineno = 2505U;
  descriptor___5.flags = 0U;
  tmp___22 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___22 != 0L) {
    tmp___21 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___21->self.controller,
                      "Babble error on endpoint\n");
  } else {
  }
  status = -75;
  goto ldv_32390;
  case 2U:
  tmp___23 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___23->self.controller, "WARN: HC couldn\'t access mem fast enough\n");
  status = -63;
  goto ldv_32390;
  case 18U:
  tmp___24 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___24->self.controller, "WARN: bandwidth overrun event on endpoint\n");
  goto ldv_32390;
  case 31U:
  tmp___25 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___25->self.controller, "WARN: buffer overrun event on endpoint\n");
  goto ldv_32390;
  case 14U:
  descriptor___6.modname = "xhci_hcd";
  descriptor___6.function = "handle_tx_event";
  descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
  descriptor___6.format = "underrun event on endpoint\n";
  descriptor___6.lineno = 2524U;
  descriptor___6.flags = 0U;
  tmp___27 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___27 != 0L) {
    tmp___26 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___6, (struct device const *)tmp___26->self.controller,
                      "underrun event on endpoint\n");
  } else {
  }
  tmp___30 = list_empty((struct list_head const *)(& ep_ring->td_list));
  if (tmp___30 == 0) {
    descriptor___7.modname = "xhci_hcd";
    descriptor___7.function = "handle_tx_event";
    descriptor___7.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor___7.format = "Underrun Event for slot %d ep %d still with TDs queued?\n";
    descriptor___7.lineno = 2529U;
    descriptor___7.flags = 0U;
    tmp___29 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
    if (tmp___29 != 0L) {
      tmp___28 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___7, (struct device const *)tmp___28->self.controller,
                        "Underrun Event for slot %d ep %d still with TDs queued?\n",
                        event->flags >> 24, ep_index);
    } else {
    }
  } else {
  }
  goto cleanup;
  case 15U:
  descriptor___8.modname = "xhci_hcd";
  descriptor___8.function = "handle_tx_event";
  descriptor___8.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
  descriptor___8.format = "overrun event on endpoint\n";
  descriptor___8.lineno = 2532U;
  descriptor___8.flags = 0U;
  tmp___32 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
  if (tmp___32 != 0L) {
    tmp___31 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___8, (struct device const *)tmp___31->self.controller,
                      "overrun event on endpoint\n");
  } else {
  }
  tmp___35 = list_empty((struct list_head const *)(& ep_ring->td_list));
  if (tmp___35 == 0) {
    descriptor___9.modname = "xhci_hcd";
    descriptor___9.function = "handle_tx_event";
    descriptor___9.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor___9.format = "Overrun Event for slot %d ep %d still with TDs queued?\n";
    descriptor___9.lineno = 2537U;
    descriptor___9.flags = 0U;
    tmp___34 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
    if (tmp___34 != 0L) {
      tmp___33 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___9, (struct device const *)tmp___33->self.controller,
                        "Overrun Event for slot %d ep %d still with TDs queued?\n",
                        event->flags >> 24, ep_index);
    } else {
    }
  } else {
  }
  goto cleanup;
  case 22U:
  tmp___36 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___36->self.controller, "WARN: detect an incompatible device");
  status = -71;
  goto ldv_32390;
  case 23U:
  ep->skip = 1;
  descriptor___10.modname = "xhci_hcd";
  descriptor___10.function = "handle_tx_event";
  descriptor___10.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
  descriptor___10.format = "Miss service interval error, set skip flag\n";
  descriptor___10.lineno = 2551U;
  descriptor___10.flags = 0U;
  tmp___38 = ldv__builtin_expect((long )descriptor___10.flags & 1L, 0L);
  if (tmp___38 != 0L) {
    tmp___37 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___10, (struct device const *)tmp___37->self.controller,
                      "Miss service interval error, set skip flag\n");
  } else {
  }
  goto cleanup;
  default:
  tmp___39 = xhci_is_vendor_info_code(xhci, trb_comp_code);
  if (tmp___39 != 0) {
    status = 0;
    goto ldv_32390;
  } else {
  }
  tmp___40 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___40->self.controller, "OLD_ERROR Unknown event condition, HC probably busted\n");
  goto cleanup;
  }
  ldv_32390: ;
  ldv_32428:
  tmp___46 = list_empty((struct list_head const *)(& ep_ring->td_list));
  if (tmp___46 != 0) {
    if (trb_comp_code != 26U && trb_comp_code != 27U) {
      tmp___41 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___41->self.controller, "WARN Event TRB for slot %d ep %d with no TDs queued?\n",
               event->flags >> 24, ep_index);
      descriptor___11.modname = "xhci_hcd";
      descriptor___11.function = "handle_tx_event";
      descriptor___11.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
      descriptor___11.format = "Event TRB with TRB type ID %u\n";
      descriptor___11.lineno = 2580U;
      descriptor___11.flags = 0U;
      tmp___43 = ldv__builtin_expect((long )descriptor___11.flags & 1L, 0L);
      if (tmp___43 != 0L) {
        tmp___42 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___11, (struct device const *)tmp___42->self.controller,
                          "Event TRB with TRB type ID %u\n", (event->flags & 64512U) >> 10);
      } else {
      }
      xhci_print_trb_offsets(xhci, (union xhci_trb *)event);
    } else {
    }
    if ((int )ep->skip) {
      ep->skip = 0;
      descriptor___12.modname = "xhci_hcd";
      descriptor___12.function = "handle_tx_event";
      descriptor___12.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
      descriptor___12.format = "td_list is empty while skip flag set. Clear skip flag.\n";
      descriptor___12.lineno = 2586U;
      descriptor___12.flags = 0U;
      tmp___45 = ldv__builtin_expect((long )descriptor___12.flags & 1L, 0L);
      if (tmp___45 != 0L) {
        tmp___44 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___12, (struct device const *)tmp___44->self.controller,
                          "td_list is empty while skip flag set. Clear skip flag.\n");
      } else {
      }
    } else {
    }
    ret = 0;
    goto cleanup;
  } else {
  }
  if ((int )ep->skip && td_num == 0) {
    ep->skip = 0;
    descriptor___13.modname = "xhci_hcd";
    descriptor___13.function = "handle_tx_event";
    descriptor___13.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor___13.format = "All tds on the ep_ring skipped. Clear skip flag.\n";
    descriptor___13.lineno = 2596U;
    descriptor___13.flags = 0U;
    tmp___48 = ldv__builtin_expect((long )descriptor___13.flags & 1L, 0L);
    if (tmp___48 != 0L) {
      tmp___47 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___13, (struct device const *)tmp___47->self.controller,
                        "All tds on the ep_ring skipped. Clear skip flag.\n");
    } else {
    }
    ret = 0;
    goto cleanup;
  } else {
  }
  __mptr = (struct list_head const *)ep_ring->td_list.next;
  td = (struct xhci_td *)__mptr;
  if ((int )ep->skip) {
    td_num = td_num - 1;
  } else {
  }
  event_seg = trb_in_td(ep_ring->deq_seg, ep_ring->dequeue, td->last_trb, event_dma);
  if ((unsigned long )event_seg == (unsigned long )((struct xhci_segment *)0) && trb_comp_code == 27U) {
    ret = 0;
    goto cleanup;
  } else {
  }
  if ((unsigned long )event_seg == (unsigned long )((struct xhci_segment *)0)) {
    if (! ep->skip) {
      goto _L;
    } else {
      tmp___50 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& ((td->urb)->ep)->desc));
      if (tmp___50 == 0) {
        _L:
        if ((xhci->quirks & 16U) != 0U && (int )ep_ring->last_td_was_short) {
          ep_ring->last_td_was_short = 0;
          ret = 0;
          goto cleanup;
        } else {
        }
        tmp___49 = xhci_to_hcd(xhci);
        dev_err((struct device const *)tmp___49->self.controller, "OLD_ERROR Transfer event TRB DMA ptr not part of current TD\n");
        return (-108);
      } else {
      }
    }
    ret = skip_isoc_td(xhci, td, event, ep, & status);
    goto cleanup;
  } else {
  }
  if (trb_comp_code == 13U) {
    ep_ring->last_td_was_short = 1;
  } else {
    ep_ring->last_td_was_short = 0;
  }
  if ((int )ep->skip) {
    descriptor___14.modname = "xhci_hcd";
    descriptor___14.function = "handle_tx_event";
    descriptor___14.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor___14.format = "Found td. Clear skip flag.\n";
    descriptor___14.lineno = 2651U;
    descriptor___14.flags = 0U;
    tmp___52 = ldv__builtin_expect((long )descriptor___14.flags & 1L, 0L);
    if (tmp___52 != 0L) {
      tmp___51 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___14, (struct device const *)tmp___51->self.controller,
                        "Found td. Clear skip flag.\n");
    } else {
    }
    ep->skip = 0;
  } else {
  }
  event_trb = event_seg->trbs + (event_dma - event_seg->dma) / 16ULL;
  if ((event_trb->generic.field[3] & 64512U) == 8192U) {
    descriptor___15.modname = "xhci_hcd";
    descriptor___15.function = "handle_tx_event";
    descriptor___15.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor___15.format = "event_trb is a no-op TRB. Skip it\n";
    descriptor___15.lineno = 2665U;
    descriptor___15.flags = 0U;
    tmp___54 = ldv__builtin_expect((long )descriptor___15.flags & 1L, 0L);
    if (tmp___54 != 0L) {
      tmp___53 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___15, (struct device const *)tmp___53->self.controller,
                        "event_trb is a no-op TRB. Skip it\n");
    } else {
    }
    goto cleanup;
  } else {
  }
  tmp___56 = usb_endpoint_xfer_control((struct usb_endpoint_descriptor const *)(& ((td->urb)->ep)->desc));
  if (tmp___56 != 0) {
    ret = process_ctrl_td(xhci, td, event_trb, event, ep, & status);
  } else {
    tmp___55 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& ((td->urb)->ep)->desc));
    if (tmp___55 != 0) {
      ret = process_isoc_td(xhci, td, event_trb, event, ep, & status);
    } else {
      ret = process_bulk_intr_td(xhci, td, event_trb, event, ep, & status);
    }
  }
  cleanup: ;
  if (trb_comp_code == 23U || ! ep->skip) {
    inc_deq(xhci, xhci->event_ring);
  } else {
  }
  if (ret != 0) {
    urb = td->urb;
    urb_priv = (struct urb_priv *)urb->hcpriv;
    tmp___57 = usb_endpoint_xfer_control((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
    if (tmp___57 != 0 || (trb_comp_code != 6U && trb_comp_code != 3U)) {
      xhci_urb_free_priv(xhci, urb_priv);
    } else {
      kfree((void const *)urb_priv);
    }
    tmp___58 = bus_to_hcd((urb->dev)->bus);
    usb_hcd_unlink_urb_from_ep(tmp___58, urb);
    if (urb->actual_length != urb->transfer_buffer_length && (int )urb->transfer_flags & 1) {
      goto _L___0;
    } else
    if (status != 0) {
      tmp___61 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
      if (tmp___61 == 0) {
        _L___0:
        descriptor___16.modname = "xhci_hcd";
        descriptor___16.function = "handle_tx_event";
        descriptor___16.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
        descriptor___16.format = "Giveback URB %p, len = %d, expected = %d, status = %d\n";
        descriptor___16.lineno = 2716U;
        descriptor___16.flags = 0U;
        tmp___60 = ldv__builtin_expect((long )descriptor___16.flags & 1L, 0L);
        if (tmp___60 != 0L) {
          tmp___59 = xhci_to_hcd(xhci);
          __dynamic_dev_dbg(& descriptor___16, (struct device const *)tmp___59->self.controller,
                            "Giveback URB %p, len = %d, expected = %d, status = %d\n",
                            urb, urb->actual_length, urb->transfer_buffer_length,
                            status);
        } else {
        }
      } else {
      }
    } else {
    }
    spin_unlock(& xhci->lock);
    if (urb->pipe >> 30 == 0U) {
      status = 0;
    } else {
    }
    tmp___62 = bus_to_hcd((urb->dev)->bus);
    usb_hcd_giveback_urb(tmp___62, urb, status);
    spin_lock(& xhci->lock);
  } else {
  }
  if ((int )ep->skip && trb_comp_code != 23U) {
    goto ldv_32428;
  } else {
  }
  return (0);
}
}
static int xhci_handle_event(struct xhci_hcd *xhci )
{
  union xhci_trb *event ;
  int update_ptrs ;
  int ret ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  update_ptrs = 1;
  if ((unsigned long )xhci->event_ring == (unsigned long )((struct xhci_ring *)0) || (unsigned long )(xhci->event_ring)->dequeue == (unsigned long )((union xhci_trb *)0)) {
    xhci->error_bitmask = xhci->error_bitmask | 2;
    return (0);
  } else {
  }
  event = (xhci->event_ring)->dequeue;
  if ((event->event_cmd.flags & 1U) != (xhci->event_ring)->cycle_state) {
    xhci->error_bitmask = xhci->error_bitmask | 4;
    return (0);
  } else {
  }
  __asm__ volatile ("lfence": : : "memory");
  switch (event->event_cmd.flags & 64512U) {
  case 33792U:
  handle_cmd_completion(xhci, & event->event_cmd);
  goto ldv_32437;
  case 34816U:
  handle_port_status(xhci, event);
  update_ptrs = 0;
  goto ldv_32437;
  case 32768U:
  ret = handle_tx_event(xhci, & event->trans_event);
  if (ret < 0) {
    xhci->error_bitmask = xhci->error_bitmask | 512;
  } else {
    update_ptrs = 0;
  }
  goto ldv_32437;
  case 38912U:
  handle_device_notification(xhci, event);
  goto ldv_32437;
  default: ;
  if ((event->event_cmd.flags & 64512U) > 49151U) {
    handle_vendor_event(xhci, event);
  } else {
    xhci->error_bitmask = xhci->error_bitmask | 8;
  }
  }
  ldv_32437: ;
  if ((int )xhci->xhc_state & 1) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_handle_event";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor.format = "xHCI host dying, returning from event handler.\n";
    descriptor.lineno = 2799U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "xHCI host dying, returning from event handler.\n");
    } else {
    }
    return (0);
  } else {
  }
  if (update_ptrs != 0) {
    inc_deq(xhci, xhci->event_ring);
  } else {
  }
  return (1);
}
}
irqreturn_t xhci_irq(struct usb_hcd *hcd )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  u32 status ;
  u64 temp_64 ;
  union xhci_trb *event_ring_deq ;
  dma_addr_t deq ;
  struct usb_hcd *tmp___0 ;
  u32 irq_pending ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  struct usb_hcd *tmp___4 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  spin_lock(& xhci->lock);
  status = readl((void const volatile *)(& (xhci->op_regs)->status));
  if (status == 4294967295U) {
    goto hw_died;
  } else {
  }
  if ((status & 8U) == 0U) {
    spin_unlock(& xhci->lock);
    return (0);
  } else {
  }
  if ((status & 4U) != 0U) {
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "WARNING: Host System Error\n");
    xhci_halt(xhci);
    hw_died:
    spin_unlock(& xhci->lock);
    return (4294967188L);
  } else {
  }
  status = status | 8U;
  writel(status, (void volatile *)(& (xhci->op_regs)->status));
  if (hcd->irq != 0U) {
    irq_pending = readl((void const volatile *)(& (xhci->ir_set)->irq_pending));
    irq_pending = irq_pending | 1U;
    writel(irq_pending, (void volatile *)(& (xhci->ir_set)->irq_pending));
  } else {
  }
  if ((int )xhci->xhc_state & 1) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_irq";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor.format = "xHCI dying, ignoring interrupt. Shouldn\'t IRQs be disabled?\n";
    descriptor.lineno = 2864U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                        "xHCI dying, ignoring interrupt. Shouldn\'t IRQs be disabled?\n");
    } else {
    }
    temp_64 = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->ir_set)->erst_dequeue);
    xhci_write_64(xhci, temp_64 | 8ULL, & (xhci->ir_set)->erst_dequeue);
    spin_unlock(& xhci->lock);
    return (1);
  } else {
  }
  event_ring_deq = (xhci->event_ring)->dequeue;
  goto ldv_32457;
  ldv_32456: ;
  ldv_32457:
  tmp___3 = xhci_handle_event(xhci);
  if (tmp___3 > 0) {
    goto ldv_32456;
  } else {
  }
  temp_64 = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->ir_set)->erst_dequeue);
  if ((unsigned long )(xhci->event_ring)->dequeue != (unsigned long )event_ring_deq) {
    deq = xhci_trb_virt_to_dma((xhci->event_ring)->deq_seg, (xhci->event_ring)->dequeue);
    if (deq == 0ULL) {
      tmp___4 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___4->self.controller, "WARN something wrong with SW event ring dequeue ptr.\n");
    } else {
    }
    temp_64 = temp_64 & 15ULL;
    temp_64 = (deq & 0xfffffffffffffff0ULL) | temp_64;
  } else {
  }
  temp_64 = temp_64 | 8ULL;
  xhci_write_64(xhci, temp_64, & (xhci->ir_set)->erst_dequeue);
  spin_unlock(& xhci->lock);
  return (1);
}
}
irqreturn_t xhci_msi_irq(int irq , void *hcd )
{
  irqreturn_t tmp ;
  {
  tmp = xhci_irq((struct usb_hcd *)hcd);
  return (tmp);
}
}
static void queue_trb(struct xhci_hcd *xhci , struct xhci_ring *ring , bool more_trbs_coming ,
                      u32 field1 , u32 field2 , u32 field3 , u32 field4 )
{
  struct xhci_generic_trb *trb ;
  {
  trb = & (ring->enqueue)->generic;
  trb->field[0] = field1;
  trb->field[1] = field2;
  trb->field[2] = field3;
  trb->field[3] = field4;
  inc_enq(xhci, ring, (int )more_trbs_coming);
  return;
}
}
static int prepare_ring(struct xhci_hcd *xhci , struct xhci_ring *ep_ring , u32 ep_state ,
                        unsigned int num_trbs , gfp_t mem_flags )
{
  unsigned int num_trbs_needed ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct usb_hcd *tmp___3 ;
  int tmp___4 ;
  struct usb_hcd *tmp___5 ;
  struct usb_hcd *tmp___6 ;
  int tmp___7 ;
  struct xhci_ring *ring ;
  union xhci_trb *next ;
  int tmp___8 ;
  bool tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  {
  switch (ep_state) {
  case 0U:
  tmp = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp->self.controller, "WARN urb submitted to disabled ep\n");
  return (-2);
  case 4U:
  tmp___0 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___0->self.controller, "WARN waiting for error on ep to be cleared\n");
  return (-22);
  case 2U:
  descriptor.modname = "xhci_hcd";
  descriptor.function = "prepare_ring";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
  descriptor.format = "WARN halted endpoint, queueing URB anyway.\n";
  descriptor.lineno = 2956U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                      "WARN halted endpoint, queueing URB anyway.\n");
  } else {
  }
  case 3U: ;
  case 1U: ;
  goto ldv_32488;
  default:
  tmp___3 = xhci_to_hcd(xhci);
  dev_err((struct device const *)tmp___3->self.controller, "OLD_ERROR unknown endpoint state for ep\n");
  return (-22);
  }
  ldv_32488: ;
  ldv_32491:
  tmp___4 = room_on_ring(xhci, ep_ring, num_trbs);
  if (tmp___4 != 0) {
    goto ldv_32490;
  } else {
  }
  if ((unsigned long )xhci->cmd_ring == (unsigned long )ep_ring) {
    tmp___5 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___5->self.controller, "Do not support expand command ring\n");
    return (-12);
  } else {
  }
  xhci_dbg_trace(xhci, & trace_xhci_dbg_ring_expansion___0, "OLD_ERROR no room on ep ring, try ring expansion");
  num_trbs_needed = num_trbs - ep_ring->num_trbs_free;
  tmp___7 = xhci_ring_expansion(xhci, ep_ring, num_trbs_needed, mem_flags);
  if (tmp___7 != 0) {
    tmp___6 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___6->self.controller, "Ring expansion failed\n");
    return (-12);
  } else {
  }
  goto ldv_32491;
  ldv_32490:
  tmp___11 = enqueue_is_link_trb(ep_ring);
  if (tmp___11 != 0) {
    ring = ep_ring;
    next = ring->enqueue;
    goto ldv_32495;
    ldv_32494:
    tmp___8 = xhci_link_trb_quirk(xhci);
    if (tmp___8 == 0 && ((unsigned int )ring->type != 1U || (xhci->quirks & 512U) == 0U)) {
      next->link.control = next->link.control & 4294967279U;
    } else {
      next->link.control = next->link.control | 16U;
    }
    __asm__ volatile ("sfence": : : "memory");
    next->link.control = next->link.control ^ 1U;
    tmp___9 = last_trb_on_last_seg(xhci, ring, ring->enq_seg, next);
    if ((int )tmp___9) {
      ring->cycle_state = ring->cycle_state == 0U;
    } else {
    }
    ring->enq_seg = (ring->enq_seg)->next;
    ring->enqueue = (ring->enq_seg)->trbs;
    next = ring->enqueue;
    ldv_32495:
    tmp___10 = last_trb(xhci, ring, ring->enq_seg, next);
    if (tmp___10 != 0) {
      goto ldv_32494;
    } else {
    }
  } else {
  }
  return (0);
}
}
static int prepare_transfer(struct xhci_hcd *xhci , struct xhci_virt_device *xdev ,
                            unsigned int ep_index , unsigned int stream_id , unsigned int num_trbs ,
                            struct urb *urb , unsigned int td_index , gfp_t mem_flags )
{
  int ret ;
  struct urb_priv *urb_priv ;
  struct xhci_td *td ;
  struct xhci_ring *ep_ring ;
  struct xhci_ep_ctx *ep_ctx ;
  struct xhci_ep_ctx *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  {
  tmp = xhci_get_ep_ctx(xhci, xdev->out_ctx, ep_index);
  ep_ctx = tmp;
  ep_ring = xhci_stream_id_to_ring(xdev, ep_index, stream_id);
  if ((unsigned long )ep_ring == (unsigned long )((struct xhci_ring *)0)) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "prepare_transfer";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor.format = "Can\'t prepare ring for bad stream ID %u\n";
    descriptor.lineno = 3039U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "Can\'t prepare ring for bad stream ID %u\n", stream_id);
    } else {
    }
    return (-22);
  } else {
  }
  ret = prepare_ring(xhci, ep_ring, ep_ctx->ep_info & 15U, num_trbs, mem_flags);
  if (ret != 0) {
    return (ret);
  } else {
  }
  urb_priv = (struct urb_priv *)urb->hcpriv;
  td = urb_priv->td[td_index];
  INIT_LIST_HEAD(& td->td_list);
  INIT_LIST_HEAD(& td->cancelled_td_list);
  if (td_index == 0U) {
    tmp___2 = bus_to_hcd((urb->dev)->bus);
    ret = usb_hcd_link_urb_to_ep(tmp___2, urb);
    tmp___3 = ldv__builtin_expect(ret != 0, 0L);
    if (tmp___3 != 0L) {
      return (ret);
    } else {
    }
  } else {
  }
  td->urb = urb;
  list_add_tail(& td->td_list, & ep_ring->td_list);
  td->start_seg = ep_ring->enq_seg;
  td->first_trb = ep_ring->enqueue;
  urb_priv->td[td_index] = td;
  return (0);
}
}
static unsigned int count_sg_trbs_needed(struct xhci_hcd *xhci , struct urb *urb )
{
  int num_sgs ;
  int num_trbs ;
  int running_total ;
  int temp ;
  int i ;
  struct scatterlist *sg ;
  unsigned int len ;
  int __min1 ;
  int __min2 ;
  {
  sg = (struct scatterlist *)0;
  num_sgs = urb->num_mapped_sgs;
  temp = (int )urb->transfer_buffer_length;
  num_trbs = 0;
  i = 0;
  sg = urb->sg;
  goto ldv_32533;
  ldv_32532:
  len = sg->dma_length;
  running_total = (int )(65536U - ((unsigned int )sg->dma_address & 65535U));
  running_total = running_total & 65535;
  if (running_total != 0) {
    num_trbs = num_trbs + 1;
  } else {
  }
  goto ldv_32526;
  ldv_32525:
  num_trbs = num_trbs + 1;
  running_total = running_total + 65536;
  ldv_32526: ;
  if ((unsigned int )running_total < sg->dma_length && running_total < temp) {
    goto ldv_32525;
  } else {
  }
  __min1 = (int )len;
  __min2 = temp;
  len = (unsigned int )(__min1 < __min2 ? __min1 : __min2);
  temp = (int )((unsigned int )temp - len);
  if (temp == 0) {
    goto ldv_32531;
  } else {
  }
  i = i + 1;
  sg = sg_next(sg);
  ldv_32533: ;
  if (i < num_sgs) {
    goto ldv_32532;
  } else {
  }
  ldv_32531: ;
  return ((unsigned int )num_trbs);
}
}
static void check_trb_math(struct urb *urb , int num_trbs , int running_total )
{
  {
  if (num_trbs != 0) {
    dev_err((struct device const *)(& (urb->dev)->dev), "%s - ep %#x - Miscalculated number of TRBs, %d left\n",
            "check_trb_math", (int )(urb->ep)->desc.bEndpointAddress, num_trbs);
  } else {
  }
  if ((u32 )running_total != urb->transfer_buffer_length) {
    dev_err((struct device const *)(& (urb->dev)->dev), "%s - ep %#x - Miscalculated tx length, queued %#x (%d), asked for %#x (%d)\n",
            "check_trb_math", (int )(urb->ep)->desc.bEndpointAddress, running_total,
            running_total, urb->transfer_buffer_length, urb->transfer_buffer_length);
  } else {
  }
  return;
}
}
static void giveback_first_trb(struct xhci_hcd *xhci , int slot_id , unsigned int ep_index ,
                               unsigned int stream_id , int start_cycle , struct xhci_generic_trb *start_trb )
{
  {
  __asm__ volatile ("sfence": : : "memory");
  if (start_cycle != 0) {
    start_trb->field[3] = start_trb->field[3] | (__le32 )start_cycle;
  } else {
    start_trb->field[3] = start_trb->field[3] & 4294967294U;
  }
  xhci_ring_ep_doorbell(xhci, (unsigned int )slot_id, ep_index, stream_id);
  return;
}
}
int xhci_queue_intr_tx(struct xhci_hcd *xhci , gfp_t mem_flags , struct urb *urb ,
                       int slot_id , unsigned int ep_index )
{
  struct xhci_ep_ctx *ep_ctx ;
  struct xhci_ep_ctx *tmp ;
  int xhci_interval ;
  int ep_interval ;
  struct ratelimit_state _rs ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = xhci_get_ep_ctx(xhci, (xhci->devs[slot_id])->out_ctx, ep_index);
  ep_ctx = tmp;
  xhci_interval = 1 << ((int )(ep_ctx->ep_info >> 16) & 255);
  ep_interval = urb->interval;
  if ((unsigned int )(urb->dev)->speed == 1U || (unsigned int )(urb->dev)->speed == 2U) {
    ep_interval = ep_interval * 8;
  } else {
  }
  if (xhci_interval != ep_interval) {
    _rs.lock.raw_lock.ldv_1458.head_tail = 0U;
    _rs.lock.magic = 3735899821U;
    _rs.lock.owner_cpu = 4294967295U;
    _rs.lock.owner = (void *)-1;
    _rs.lock.dep_map.key = 0;
    _rs.lock.dep_map.class_cache[0] = 0;
    _rs.lock.dep_map.class_cache[1] = 0;
    _rs.lock.dep_map.name = "_rs.lock";
    _rs.lock.dep_map.cpu = 0;
    _rs.lock.dep_map.ip = 0UL;
    _rs.interval = 1250;
    _rs.burst = 10;
    _rs.printed = 0;
    _rs.missed = 0;
    _rs.begin = 0UL;
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_queue_intr_tx";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor.format = "Driver uses different interval (%d microframe%s) than xHCI (%d microframe%s)\n";
    descriptor.lineno = 3164U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp___1 = ___ratelimit(& _rs, "xhci_queue_intr_tx");
      if (tmp___1 != 0) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& (urb->dev)->dev),
                          "Driver uses different interval (%d microframe%s) than xHCI (%d microframe%s)\n",
                          ep_interval, ep_interval == 1 ? (char *)"" : (char *)"s",
                          xhci_interval, xhci_interval == 1 ? (char *)"" : (char *)"s");
      } else {
      }
    } else {
    }
    urb->interval = xhci_interval;
    if ((unsigned int )(urb->dev)->speed == 1U || (unsigned int )(urb->dev)->speed == 2U) {
      urb->interval = urb->interval / 8;
    } else {
    }
  } else {
  }
  tmp___2 = xhci_queue_bulk_tx(xhci, mem_flags, urb, slot_id, ep_index);
  return (tmp___2);
}
}
static u32 xhci_td_remainder(unsigned int remainder )
{
  u32 max ;
  {
  max = 31U;
  if (remainder >> 10 >= max) {
    return (max << 17);
  } else {
    return ((remainder >> 10) << 17);
  }
}
}
static u32 xhci_v1_0_td_remainder(int running_total , int trb_buff_len , unsigned int total_packet_count ,
                                  struct urb *urb , unsigned int num_trbs_left )
{
  int packets_transferred ;
  int tmp ;
  {
  if (num_trbs_left == 0U || (running_total == 0 && trb_buff_len == 0)) {
    return (0U);
  } else {
  }
  tmp = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
  packets_transferred = (running_total + trb_buff_len) / (tmp & 2047);
  if (total_packet_count - (unsigned int )packets_transferred > 31U) {
    return (4063232U);
  } else {
  }
  return ((total_packet_count - (unsigned int )packets_transferred) << 17);
}
}
static int queue_bulk_sg_tx(struct xhci_hcd *xhci , gfp_t mem_flags , struct urb *urb ,
                            int slot_id , unsigned int ep_index )
{
  struct xhci_ring *ep_ring ;
  unsigned int num_trbs ;
  struct urb_priv *urb_priv ;
  struct xhci_td *td ;
  struct scatterlist *sg ;
  int num_sgs ;
  int trb_buff_len ;
  int this_sg_len ;
  int running_total ;
  unsigned int total_packet_count ;
  bool first_trb ;
  u64 addr ;
  bool more_trbs_coming ;
  struct xhci_generic_trb *start_trb ;
  int start_cycle ;
  int tmp ;
  int tmp___0 ;
  int __min1 ;
  int __min2 ;
  u32 field ;
  u32 length_field ;
  u32 remainder ;
  int tmp___1 ;
  struct usb_hcd *tmp___2 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  int __min1___0 ;
  int __min2___0 ;
  {
  ep_ring = xhci_urb_to_transfer_ring___0(xhci, urb);
  if ((unsigned long )ep_ring == (unsigned long )((struct xhci_ring *)0)) {
    return (-22);
  } else {
  }
  num_trbs = count_sg_trbs_needed(xhci, urb);
  num_sgs = urb->num_mapped_sgs;
  tmp = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
  tmp___0 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
  total_packet_count = ((urb->transfer_buffer_length + (u32 )tmp) - 1U) / (u32 )tmp___0;
  trb_buff_len = prepare_transfer(xhci, xhci->devs[slot_id], ep_index, urb->stream_id,
                                  num_trbs, urb, 0U, mem_flags);
  if (trb_buff_len < 0) {
    return (trb_buff_len);
  } else {
  }
  urb_priv = (struct urb_priv *)urb->hcpriv;
  td = urb_priv->td[0];
  start_trb = & (ep_ring->enqueue)->generic;
  start_cycle = (int )ep_ring->cycle_state;
  running_total = 0;
  sg = urb->sg;
  addr = sg->dma_address;
  this_sg_len = (int )sg->dma_length;
  trb_buff_len = (int )(65536U - ((unsigned int )addr & 65535U));
  __min1 = trb_buff_len;
  __min2 = this_sg_len;
  trb_buff_len = __min1 < __min2 ? __min1 : __min2;
  if ((u32 )trb_buff_len > urb->transfer_buffer_length) {
    trb_buff_len = (int )urb->transfer_buffer_length;
  } else {
  }
  first_trb = 1;
  ldv_32608:
  field = 0U;
  length_field = 0U;
  remainder = 0U;
  if ((int )first_trb) {
    first_trb = 0;
    if (start_cycle == 0) {
      field = field | 1U;
    } else {
    }
  } else {
    field = ep_ring->cycle_state | field;
  }
  if (num_trbs > 1U) {
    field = field | 16U;
  } else {
    td->last_trb = ep_ring->enqueue;
    field = field | 32U;
  }
  tmp___1 = usb_urb_dir_in(urb);
  if (tmp___1 != 0) {
    field = field | 4U;
  } else {
  }
  if (65536ULL - (addr & 65535ULL) < (u64 )trb_buff_len) {
    tmp___2 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___2->self.controller, "WARN: sg dma xfer crosses 64KB boundaries!\n");
    descriptor.modname = "xhci_hcd";
    descriptor.function = "queue_bulk_sg_tx";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor.format = "Next boundary at %#x, end dma = %#x\n";
    descriptor.lineno = 3322U;
    descriptor.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      tmp___3 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___3->self.controller,
                        "Next boundary at %#x, end dma = %#x\n", ((unsigned int )addr + 65536U) & 4294901760U,
                        (unsigned int )addr + (unsigned int )trb_buff_len);
    } else {
    }
  } else {
  }
  if ((unsigned int )xhci->hci_version <= 255U) {
    remainder = xhci_td_remainder(urb->transfer_buffer_length - (u32 )running_total);
  } else {
    remainder = xhci_v1_0_td_remainder(running_total, trb_buff_len, total_packet_count,
                                       urb, num_trbs - 1U);
  }
  length_field = ((u32 )trb_buff_len & 131071U) | remainder;
  if (num_trbs > 1U) {
    more_trbs_coming = 1;
  } else {
    more_trbs_coming = 0;
  }
  queue_trb(xhci, ep_ring, (int )more_trbs_coming, (unsigned int )addr, (unsigned int )(addr >> 32ULL),
            length_field, field | 1024U);
  num_trbs = num_trbs - 1U;
  running_total = running_total + trb_buff_len;
  this_sg_len = this_sg_len - trb_buff_len;
  if (this_sg_len == 0) {
    num_sgs = num_sgs - 1;
    if (num_sgs == 0) {
      goto ldv_32604;
    } else {
    }
    sg = sg_next(sg);
    addr = sg->dma_address;
    this_sg_len = (int )sg->dma_length;
  } else {
    addr = (u64 )trb_buff_len + addr;
  }
  trb_buff_len = (int )(65536U - ((unsigned int )addr & 65535U));
  __min1___0 = trb_buff_len;
  __min2___0 = this_sg_len;
  trb_buff_len = __min1___0 < __min2___0 ? __min1___0 : __min2___0;
  if ((u32 )(running_total + trb_buff_len) > urb->transfer_buffer_length) {
    trb_buff_len = (int )(urb->transfer_buffer_length - (u32 )running_total);
  } else {
  }
  if ((u32 )running_total < urb->transfer_buffer_length) {
    goto ldv_32608;
  } else {
  }
  ldv_32604:
  check_trb_math(urb, (int )num_trbs, running_total);
  giveback_first_trb(xhci, slot_id, ep_index, urb->stream_id, start_cycle, start_trb);
  return (0);
}
}
int xhci_queue_bulk_tx(struct xhci_hcd *xhci , gfp_t mem_flags , struct urb *urb ,
                       int slot_id , unsigned int ep_index )
{
  struct xhci_ring *ep_ring ;
  struct urb_priv *urb_priv ;
  struct xhci_td *td ;
  int num_trbs ;
  struct xhci_generic_trb *start_trb ;
  bool first_trb ;
  bool more_trbs_coming ;
  int start_cycle ;
  u32 field ;
  u32 length_field ;
  int running_total ;
  int trb_buff_len ;
  int ret ;
  unsigned int total_packet_count ;
  u64 addr ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  u32 remainder ;
  int tmp___2 ;
  {
  if (urb->num_sgs != 0) {
    tmp = queue_bulk_sg_tx(xhci, mem_flags, urb, slot_id, ep_index);
    return (tmp);
  } else {
  }
  ep_ring = xhci_urb_to_transfer_ring___0(xhci, urb);
  if ((unsigned long )ep_ring == (unsigned long )((struct xhci_ring *)0)) {
    return (-22);
  } else {
  }
  num_trbs = 0;
  running_total = (int )(65536U - ((unsigned int )urb->transfer_dma & 65535U));
  running_total = running_total & 65535;
  if (running_total != 0 || urb->transfer_buffer_length == 0U) {
    num_trbs = num_trbs + 1;
  } else {
  }
  goto ldv_32632;
  ldv_32631:
  num_trbs = num_trbs + 1;
  running_total = running_total + 65536;
  ldv_32632: ;
  if ((u32 )running_total < urb->transfer_buffer_length) {
    goto ldv_32631;
  } else {
  }
  ret = prepare_transfer(xhci, xhci->devs[slot_id], ep_index, urb->stream_id, (unsigned int )num_trbs,
                         urb, 0U, mem_flags);
  if (ret < 0) {
    return (ret);
  } else {
  }
  urb_priv = (struct urb_priv *)urb->hcpriv;
  td = urb_priv->td[0];
  start_trb = & (ep_ring->enqueue)->generic;
  start_cycle = (int )ep_ring->cycle_state;
  running_total = 0;
  tmp___0 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
  tmp___1 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
  total_packet_count = ((urb->transfer_buffer_length + (u32 )tmp___0) - 1U) / (u32 )tmp___1;
  addr = urb->transfer_dma;
  trb_buff_len = (int )(65536U - ((unsigned int )urb->transfer_dma & 65535U));
  if ((u32 )trb_buff_len > urb->transfer_buffer_length) {
    trb_buff_len = (int )urb->transfer_buffer_length;
  } else {
  }
  first_trb = 1;
  ldv_32635:
  remainder = 0U;
  field = 0U;
  if ((int )first_trb) {
    first_trb = 0;
    if (start_cycle == 0) {
      field = field | 1U;
    } else {
    }
  } else {
    field = ep_ring->cycle_state | field;
  }
  if (num_trbs > 1) {
    field = field | 16U;
  } else {
    td->last_trb = ep_ring->enqueue;
    field = field | 32U;
  }
  tmp___2 = usb_urb_dir_in(urb);
  if (tmp___2 != 0) {
    field = field | 4U;
  } else {
  }
  if ((unsigned int )xhci->hci_version <= 255U) {
    remainder = xhci_td_remainder(urb->transfer_buffer_length - (u32 )running_total);
  } else {
    remainder = xhci_v1_0_td_remainder(running_total, trb_buff_len, total_packet_count,
                                       urb, (unsigned int )(num_trbs + -1));
  }
  length_field = ((u32 )trb_buff_len & 131071U) | remainder;
  if (num_trbs > 1) {
    more_trbs_coming = 1;
  } else {
    more_trbs_coming = 0;
  }
  queue_trb(xhci, ep_ring, (int )more_trbs_coming, (unsigned int )addr, (unsigned int )(addr >> 32ULL),
            length_field, field | 1024U);
  num_trbs = num_trbs - 1;
  running_total = running_total + trb_buff_len;
  addr = (u64 )trb_buff_len + addr;
  trb_buff_len = (int )(urb->transfer_buffer_length - (u32 )running_total);
  if (trb_buff_len > 65536) {
    trb_buff_len = 65536;
  } else {
  }
  if ((u32 )running_total < urb->transfer_buffer_length) {
    goto ldv_32635;
  } else {
  }
  check_trb_math(urb, num_trbs, running_total);
  giveback_first_trb(xhci, slot_id, ep_index, urb->stream_id, start_cycle, start_trb);
  return (0);
}
}
int xhci_queue_ctrl_tx(struct xhci_hcd *xhci , gfp_t mem_flags , struct urb *urb ,
                       int slot_id , unsigned int ep_index )
{
  struct xhci_ring *ep_ring ;
  int num_trbs ;
  int ret ;
  struct usb_ctrlrequest *setup ;
  struct xhci_generic_trb *start_trb ;
  int start_cycle ;
  u32 field ;
  u32 length_field ;
  struct urb_priv *urb_priv ;
  struct xhci_td *td ;
  int tmp ;
  u32 tmp___0 ;
  {
  ep_ring = xhci_urb_to_transfer_ring___0(xhci, urb);
  if ((unsigned long )ep_ring == (unsigned long )((struct xhci_ring *)0)) {
    return (-22);
  } else {
  }
  if ((unsigned long )urb->setup_packet == (unsigned long )((unsigned char *)0U)) {
    return (-22);
  } else {
  }
  num_trbs = 2;
  if (urb->transfer_buffer_length != 0U) {
    num_trbs = num_trbs + 1;
  } else {
  }
  ret = prepare_transfer(xhci, xhci->devs[slot_id], ep_index, urb->stream_id, (unsigned int )num_trbs,
                         urb, 0U, mem_flags);
  if (ret < 0) {
    return (ret);
  } else {
  }
  urb_priv = (struct urb_priv *)urb->hcpriv;
  td = urb_priv->td[0];
  start_trb = & (ep_ring->enqueue)->generic;
  start_cycle = (int )ep_ring->cycle_state;
  setup = (struct usb_ctrlrequest *)urb->setup_packet;
  field = 0U;
  field = field | 2112U;
  if (start_cycle == 0) {
    field = field | 1U;
  } else {
  }
  if ((unsigned int )xhci->hci_version == 256U) {
    if (urb->transfer_buffer_length != 0U) {
      if ((int )((signed char )setup->bRequestType) < 0) {
        field = field | 196608U;
      } else {
        field = field | 131072U;
      }
    } else {
    }
  } else {
  }
  queue_trb(xhci, ep_ring, 1, (u32 )(((int )setup->bRequestType | ((int )setup->bRequest << 8)) | ((int )setup->wValue << 16)),
            (u32 )((int )setup->wIndex | ((int )setup->wLength << 16)), 8U, field);
  tmp = usb_urb_dir_in(urb);
  if (tmp != 0) {
    field = 3076U;
  } else {
    field = 3072U;
  }
  tmp___0 = xhci_td_remainder(urb->transfer_buffer_length);
  length_field = (urb->transfer_buffer_length & 131071U) | tmp___0;
  if (urb->transfer_buffer_length != 0U) {
    if ((int )((signed char )setup->bRequestType) < 0) {
      field = field | 65536U;
    } else {
    }
    queue_trb(xhci, ep_ring, 1, (unsigned int )urb->transfer_dma, (unsigned int )(urb->transfer_dma >> 32ULL),
              length_field, ep_ring->cycle_state | field);
  } else {
  }
  td->last_trb = ep_ring->enqueue;
  if (urb->transfer_buffer_length != 0U && (int )((signed char )setup->bRequestType) < 0) {
    field = 0U;
  } else {
    field = 65536U;
  }
  queue_trb(xhci, ep_ring, 0, 0U, 0U, 0U, (ep_ring->cycle_state | field) | 4128U);
  giveback_first_trb(xhci, slot_id, ep_index, 0U, start_cycle, start_trb);
  return (0);
}
}
static int count_isoc_trbs_needed(struct xhci_hcd *xhci , struct urb *urb , int i )
{
  int num_trbs ;
  u64 addr ;
  u64 td_len ;
  {
  num_trbs = 0;
  addr = urb->transfer_dma + (dma_addr_t )urb->iso_frame_desc[i].offset;
  td_len = (u64 )urb->iso_frame_desc[i].length;
  num_trbs = (int )((((addr & 65535ULL) + td_len) + 65535ULL) / 65536ULL);
  if (num_trbs == 0) {
    num_trbs = num_trbs + 1;
  } else {
  }
  return (num_trbs);
}
}
static unsigned int xhci_get_burst_count(struct xhci_hcd *xhci , struct usb_device *udev ,
                                         struct urb *urb , unsigned int total_packet_count )
{
  unsigned int max_burst ;
  unsigned int __y ;
  {
  if ((unsigned int )xhci->hci_version <= 255U || (unsigned int )udev->speed != 5U) {
    return (0U);
  } else {
  }
  max_burst = (unsigned int )(urb->ep)->ss_ep_comp.bMaxBurst;
  __y = max_burst + 1U;
  return ((((__y + total_packet_count) - 1U) / __y) * __y - 1U);
}
}
static unsigned int xhci_get_last_burst_packet_count(struct xhci_hcd *xhci , struct usb_device *udev ,
                                                     struct urb *urb , unsigned int total_packet_count )
{
  unsigned int max_burst ;
  unsigned int residue ;
  {
  if ((unsigned int )xhci->hci_version <= 255U) {
    return (0U);
  } else {
  }
  switch ((unsigned int )udev->speed) {
  case 5U:
  max_burst = (unsigned int )(urb->ep)->ss_ep_comp.bMaxBurst;
  residue = total_packet_count % (max_burst + 1U);
  if (residue == 0U) {
    return (max_burst);
  } else {
  }
  return (residue - 1U);
  default: ;
  if (total_packet_count == 0U) {
    return (0U);
  } else {
  }
  return (total_packet_count - 1U);
  }
}
}
static int xhci_queue_isoc_tx(struct xhci_hcd *xhci , gfp_t mem_flags , struct urb *urb ,
                              int slot_id , unsigned int ep_index )
{
  struct xhci_ring *ep_ring ;
  struct urb_priv *urb_priv ;
  struct xhci_td *td ;
  int num_tds ;
  int trbs_per_td ;
  struct xhci_generic_trb *start_trb ;
  bool first_trb ;
  int start_cycle ;
  u32 field ;
  u32 length_field ;
  int running_total ;
  int trb_buff_len ;
  int td_len ;
  int td_remain_len ;
  int ret ;
  u64 start_addr ;
  u64 addr ;
  int i ;
  int j ;
  bool more_trbs_coming ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  unsigned int total_packet_count ;
  unsigned int burst_count ;
  unsigned int residue ;
  int tmp___1 ;
  int tmp___2 ;
  u32 remainder ;
  int tmp___3 ;
  struct usb_hcd *tmp___4 ;
  struct usb_hcd *tmp___5 ;
  struct usb_hcd *tmp___6 ;
  struct usb_hcd *tmp___7 ;
  {
  ep_ring = (xhci->devs[slot_id])->eps[ep_index].ring;
  num_tds = urb->number_of_packets;
  if (num_tds <= 0) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_queue_isoc_tx";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor.format = "Isoc URB with zero packets?\n";
    descriptor.lineno = 3731U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Isoc URB with zero packets?\n");
    } else {
    }
    return (-22);
  } else {
  }
  start_addr = urb->transfer_dma;
  start_trb = & (ep_ring->enqueue)->generic;
  start_cycle = (int )ep_ring->cycle_state;
  urb_priv = (struct urb_priv *)urb->hcpriv;
  i = 0;
  goto ldv_32719;
  ldv_32718:
  first_trb = 1;
  running_total = 0;
  addr = (u64 )urb->iso_frame_desc[i].offset + start_addr;
  td_len = (int )urb->iso_frame_desc[i].length;
  td_remain_len = td_len;
  tmp___1 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
  tmp___2 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
  total_packet_count = (unsigned int )((((tmp___1 & 2047) + td_len) + -1) / (tmp___2 & 2047));
  if (total_packet_count == 0U) {
    total_packet_count = total_packet_count + 1U;
  } else {
  }
  burst_count = xhci_get_burst_count(xhci, urb->dev, urb, total_packet_count);
  residue = xhci_get_last_burst_packet_count(xhci, urb->dev, urb, total_packet_count);
  trbs_per_td = count_isoc_trbs_needed(xhci, urb, i);
  ret = prepare_transfer(xhci, xhci->devs[slot_id], ep_index, urb->stream_id, (unsigned int )trbs_per_td,
                         urb, (unsigned int )i, mem_flags);
  if (ret < 0) {
    if (i == 0) {
      return (ret);
    } else {
    }
    goto cleanup;
  } else {
  }
  td = urb_priv->td[i];
  j = 0;
  goto ldv_32716;
  ldv_32715:
  remainder = 0U;
  field = 0U;
  if ((int )first_trb) {
    field = ((burst_count & 3U) << 7) | ((residue & 15U) << 16);
    field = field | 5120U;
    field = field | 2147483648U;
    if (i == 0) {
      if (start_cycle == 0) {
        field = field | 1U;
      } else {
      }
    } else {
      field = ep_ring->cycle_state | field;
    }
    first_trb = 0;
  } else {
    field = field | 1024U;
    field = ep_ring->cycle_state | field;
  }
  tmp___3 = usb_urb_dir_in(urb);
  if (tmp___3 != 0) {
    field = field | 4U;
  } else {
  }
  if (trbs_per_td + -1 > j) {
    field = field | 16U;
    more_trbs_coming = 1;
  } else {
    td->last_trb = ep_ring->enqueue;
    field = field | 32U;
    if ((unsigned int )xhci->hci_version == 256U && (xhci->quirks & 32768U) == 0U) {
      if (num_tds + -1 > i) {
        field = field | 512U;
      } else {
      }
    } else {
    }
    more_trbs_coming = 0;
  }
  trb_buff_len = (int )(65536U - ((unsigned int )addr & 65535U));
  if (trb_buff_len > td_remain_len) {
    trb_buff_len = td_remain_len;
  } else {
  }
  if ((unsigned int )xhci->hci_version <= 255U) {
    remainder = xhci_td_remainder((unsigned int )(td_len - running_total));
  } else {
    remainder = xhci_v1_0_td_remainder(running_total, trb_buff_len, total_packet_count,
                                       urb, (unsigned int )((trbs_per_td - j) + -1));
  }
  length_field = ((u32 )trb_buff_len & 131071U) | remainder;
  queue_trb(xhci, ep_ring, (int )more_trbs_coming, (unsigned int )addr, (unsigned int )(addr >> 32ULL),
            length_field, field);
  running_total = running_total + trb_buff_len;
  addr = (u64 )trb_buff_len + addr;
  td_remain_len = td_remain_len - trb_buff_len;
  j = j + 1;
  ldv_32716: ;
  if (j < trbs_per_td) {
    goto ldv_32715;
  } else {
  }
  if (running_total != td_len) {
    tmp___4 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___4->self.controller, "ISOC TD length unmatch\n");
    ret = -22;
    goto cleanup;
  } else {
  }
  i = i + 1;
  ldv_32719: ;
  if (i < num_tds) {
    goto ldv_32718;
  } else {
  }
  tmp___5 = xhci_to_hcd(xhci);
  if (tmp___5->self.bandwidth_isoc_reqs == 0) {
    if ((xhci->quirks & 8U) != 0U) {
      usb_amd_quirk_pll_disable();
    } else {
    }
  } else {
  }
  tmp___6 = xhci_to_hcd(xhci);
  tmp___6->self.bandwidth_isoc_reqs = tmp___6->self.bandwidth_isoc_reqs + 1;
  giveback_first_trb(xhci, slot_id, ep_index, urb->stream_id, start_cycle, start_trb);
  return (0);
  cleanup:
  i = i - 1;
  goto ldv_32722;
  ldv_32721:
  list_del_init(& (urb_priv->td[i])->td_list);
  i = i - 1;
  ldv_32722: ;
  if (i >= 0) {
    goto ldv_32721;
  } else {
  }
  (urb_priv->td[0])->last_trb = ep_ring->enqueue;
  td_to_noop(xhci, ep_ring, urb_priv->td[0], 1);
  ep_ring->enqueue = (urb_priv->td[0])->first_trb;
  ep_ring->enq_seg = (urb_priv->td[0])->start_seg;
  ep_ring->cycle_state = (u32 )start_cycle;
  ep_ring->num_trbs_free = ep_ring->num_trbs_free_temp;
  tmp___7 = bus_to_hcd((urb->dev)->bus);
  usb_hcd_unlink_urb_from_ep(tmp___7, urb);
  return (ret);
}
}
int xhci_queue_isoc_tx_prepare(struct xhci_hcd *xhci , gfp_t mem_flags , struct urb *urb ,
                               int slot_id , unsigned int ep_index )
{
  struct xhci_virt_device *xdev ;
  struct xhci_ring *ep_ring ;
  struct xhci_ep_ctx *ep_ctx ;
  int start_frame ;
  int xhci_interval ;
  int ep_interval ;
  int num_tds ;
  int num_trbs ;
  int i ;
  int ret ;
  int tmp ;
  unsigned int tmp___0 ;
  struct ratelimit_state _rs ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  xdev = xhci->devs[slot_id];
  ep_ring = xdev->eps[ep_index].ring;
  ep_ctx = xhci_get_ep_ctx(xhci, xdev->out_ctx, ep_index);
  num_trbs = 0;
  num_tds = urb->number_of_packets;
  i = 0;
  goto ldv_32742;
  ldv_32741:
  tmp = count_isoc_trbs_needed(xhci, urb, i);
  num_trbs = tmp + num_trbs;
  i = i + 1;
  ldv_32742: ;
  if (i < num_tds) {
    goto ldv_32741;
  } else {
  }
  ret = prepare_ring(xhci, ep_ring, ep_ctx->ep_info & 15U, (unsigned int )num_trbs,
                     mem_flags);
  if (ret != 0) {
    return (ret);
  } else {
  }
  tmp___0 = readl((void const volatile *)(& (xhci->run_regs)->microframe_index));
  start_frame = (int )tmp___0;
  start_frame = start_frame & 16383;
  urb->start_frame = start_frame;
  if ((unsigned int )(urb->dev)->speed == 1U || (unsigned int )(urb->dev)->speed == 2U) {
    urb->start_frame = urb->start_frame >> 3;
  } else {
  }
  xhci_interval = 1 << ((int )(ep_ctx->ep_info >> 16) & 255);
  ep_interval = urb->interval;
  if ((unsigned int )(urb->dev)->speed == 1U || (unsigned int )(urb->dev)->speed == 2U) {
    ep_interval = ep_interval * 8;
  } else {
  }
  if (xhci_interval != ep_interval) {
    _rs.lock.raw_lock.ldv_1458.head_tail = 0U;
    _rs.lock.magic = 3735899821U;
    _rs.lock.owner_cpu = 4294967295U;
    _rs.lock.owner = (void *)-1;
    _rs.lock.dep_map.key = 0;
    _rs.lock.dep_map.class_cache[0] = 0;
    _rs.lock.dep_map.class_cache[1] = 0;
    _rs.lock.dep_map.name = "_rs.lock";
    _rs.lock.dep_map.cpu = 0;
    _rs.lock.dep_map.ip = 0UL;
    _rs.interval = 1250;
    _rs.burst = 10;
    _rs.printed = 0;
    _rs.missed = 0;
    _rs.begin = 0UL;
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_queue_isoc_tx_prepare";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-ring.o.c.prepared";
    descriptor.format = "Driver uses different interval (%d microframe%s) than xHCI (%d microframe%s)\n";
    descriptor.lineno = 3949U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___2 = ___ratelimit(& _rs, "xhci_queue_isoc_tx_prepare");
      if (tmp___2 != 0) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& (urb->dev)->dev),
                          "Driver uses different interval (%d microframe%s) than xHCI (%d microframe%s)\n",
                          ep_interval, ep_interval == 1 ? (char *)"" : (char *)"s",
                          xhci_interval, xhci_interval == 1 ? (char *)"" : (char *)"s");
      } else {
      }
    } else {
    }
    urb->interval = xhci_interval;
    if ((unsigned int )(urb->dev)->speed == 1U || (unsigned int )(urb->dev)->speed == 2U) {
      urb->interval = urb->interval / 8;
    } else {
    }
  } else {
  }
  ep_ring->num_trbs_free_temp = ep_ring->num_trbs_free;
  tmp___3 = xhci_queue_isoc_tx(xhci, mem_flags, urb, slot_id, ep_index);
  return (tmp___3);
}
}
static int queue_command(struct xhci_hcd *xhci , struct xhci_command *cmd , u32 field1 ,
                         u32 field2 , u32 field3 , u32 field4 , bool command_must_succeed )
{
  int reserved_trbs ;
  int ret ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  int tmp___1 ;
  {
  reserved_trbs = (int )xhci->cmd_ring_reserved_trbs;
  if ((int )xhci->xhc_state & 1) {
    return (-108);
  } else {
  }
  if (! command_must_succeed) {
    reserved_trbs = reserved_trbs + 1;
  } else {
  }
  ret = prepare_ring(xhci, xhci->cmd_ring, 1U, (unsigned int )reserved_trbs, 32U);
  if (ret < 0) {
    tmp = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp->self.controller, "ERR: No room for command on command ring\n");
    if ((int )command_must_succeed) {
      tmp___0 = xhci_to_hcd(xhci);
      dev_err((struct device const *)tmp___0->self.controller, "ERR: Reserved TRB counting for unfailable commands failed.\n");
    } else {
    }
    return (ret);
  } else {
  }
  cmd->command_trb = (xhci->cmd_ring)->enqueue;
  list_add_tail(& cmd->cmd_list, & xhci->cmd_list);
  if ((unsigned long )xhci->cmd_list.next == (unsigned long )(& cmd->cmd_list)) {
    tmp___1 = timer_pending((struct timer_list const *)(& xhci->cmd_timer));
    if (tmp___1 == 0) {
      xhci->current_cmd = cmd;
      ldv_mod_timer_98(& xhci->cmd_timer, (unsigned long )jiffies + 1250UL);
    } else {
    }
  } else {
  }
  queue_trb(xhci, xhci->cmd_ring, 0, field1, field2, field3, (xhci->cmd_ring)->cycle_state | field4);
  return (0);
}
}
int xhci_queue_slot_control(struct xhci_hcd *xhci , struct xhci_command *cmd , u32 trb_type ,
                            u32 slot_id )
{
  int tmp ;
  {
  tmp = queue_command(xhci, cmd, 0U, 0U, 0U, (trb_type << 10) | (slot_id << 24), 0);
  return (tmp);
}
}
int xhci_queue_address_device(struct xhci_hcd *xhci , struct xhci_command *cmd , dma_addr_t in_ctx_ptr ,
                              u32 slot_id , enum xhci_setup_dev setup )
{
  int tmp ;
  {
  tmp = queue_command(xhci, cmd, (unsigned int )in_ctx_ptr, (unsigned int )(in_ctx_ptr >> 32ULL),
                      0U, ((slot_id << 24) | ((unsigned int )setup == 0U ? 512U : 0U)) | 11264U,
                      0);
  return (tmp);
}
}
int xhci_queue_vendor_command(struct xhci_hcd *xhci , struct xhci_command *cmd , u32 field1 ,
                              u32 field2 , u32 field3 , u32 field4 )
{
  int tmp ;
  {
  tmp = queue_command(xhci, cmd, field1, field2, field3, field4, 0);
  return (tmp);
}
}
int xhci_queue_reset_device(struct xhci_hcd *xhci , struct xhci_command *cmd , u32 slot_id )
{
  int tmp ;
  {
  tmp = queue_command(xhci, cmd, 0U, 0U, 0U, (slot_id << 24) | 17408U, 0);
  return (tmp);
}
}
int xhci_queue_configure_endpoint(struct xhci_hcd *xhci , struct xhci_command *cmd ,
                                  dma_addr_t in_ctx_ptr , u32 slot_id , bool command_must_succeed )
{
  int tmp ;
  {
  tmp = queue_command(xhci, cmd, (unsigned int )in_ctx_ptr, (unsigned int )(in_ctx_ptr >> 32ULL),
                      0U, (slot_id << 24) | 12288U, (int )command_must_succeed);
  return (tmp);
}
}
int xhci_queue_evaluate_context(struct xhci_hcd *xhci , struct xhci_command *cmd ,
                                dma_addr_t in_ctx_ptr , u32 slot_id , bool command_must_succeed )
{
  int tmp ;
  {
  tmp = queue_command(xhci, cmd, (unsigned int )in_ctx_ptr, (unsigned int )(in_ctx_ptr >> 32ULL),
                      0U, (slot_id << 24) | 13312U, (int )command_must_succeed);
  return (tmp);
}
}
int xhci_queue_stop_endpoint(struct xhci_hcd *xhci , struct xhci_command *cmd , int slot_id ,
                             unsigned int ep_index , int suspend )
{
  u32 trb_slot_id ;
  u32 trb_ep_index ;
  u32 type ;
  u32 trb_suspend ;
  int tmp ;
  {
  trb_slot_id = (u32 )(slot_id << 24);
  trb_ep_index = ((ep_index + 1U) & 31U) << 16;
  type = 15360U;
  trb_suspend = (u32 )((suspend & 1) << 23);
  tmp = queue_command(xhci, cmd, 0U, 0U, 0U, ((trb_slot_id | trb_ep_index) | type) | trb_suspend,
                      0);
  return (tmp);
}
}
static int queue_set_tr_deq(struct xhci_hcd *xhci , struct xhci_command *cmd , int slot_id ,
                            unsigned int ep_index , unsigned int stream_id , struct xhci_segment *deq_seg ,
                            union xhci_trb *deq_ptr , u32 cycle_state )
{
  dma_addr_t addr ;
  u32 trb_slot_id ;
  u32 trb_ep_index ;
  u32 trb_stream_id ;
  u32 trb_sct ;
  u32 type ;
  struct xhci_virt_ep *ep ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  struct usb_hcd *tmp___1 ;
  struct usb_hcd *tmp___2 ;
  int tmp___3 ;
  {
  trb_slot_id = (u32 )(slot_id << 24);
  trb_ep_index = ((ep_index + 1U) & 31U) << 16;
  trb_stream_id = stream_id << 16;
  trb_sct = 0U;
  type = 16384U;
  addr = xhci_trb_virt_to_dma(deq_seg, deq_ptr);
  if (addr == 0ULL) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN Cannot submit Set TR Deq Ptr\n");
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "WARN deq seg = %p, deq pt = %p\n",
             deq_seg, deq_ptr);
    return (0);
  } else {
  }
  ep = (struct xhci_virt_ep *)(& (xhci->devs[slot_id])->eps) + (unsigned long )ep_index;
  if ((int )ep->ep_state & 1) {
    tmp___1 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___1->self.controller, "WARN Cannot submit Set TR Deq Ptr\n");
    tmp___2 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___2->self.controller, "A Set TR Deq Ptr command is pending.\n");
    return (0);
  } else {
  }
  ep->queued_deq_seg = deq_seg;
  ep->queued_deq_ptr = deq_ptr;
  if (stream_id != 0U) {
    trb_sct = 2U;
  } else {
  }
  tmp___3 = queue_command(xhci, cmd, ((unsigned int )addr | trb_sct) | cycle_state,
                          (unsigned int )(addr >> 32ULL), trb_stream_id, (trb_slot_id | trb_ep_index) | type,
                          0);
  return (tmp___3);
}
}
int xhci_queue_reset_ep(struct xhci_hcd *xhci , struct xhci_command *cmd , int slot_id ,
                        unsigned int ep_index )
{
  u32 trb_slot_id ;
  u32 trb_ep_index ;
  u32 type ;
  int tmp ;
  {
  trb_slot_id = (u32 )(slot_id << 24);
  trb_ep_index = ((ep_index + 1U) & 31U) << 16;
  type = 14336U;
  tmp = queue_command(xhci, cmd, 0U, 0U, 0U, (trb_slot_id | trb_ep_index) | type,
                      0);
  return (tmp);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_75(lock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_79(lock);
  return;
}
}
int ldv_del_timer_93(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_6(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_94(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_6(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_95(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_6(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_96(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_6(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_97(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_6(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_98(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_6(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
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
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern unsigned long wait_for_completion_timeout(struct completion * , unsigned long ) ;
int ldv_del_timer_sync_124(struct timer_list *ldv_func_arg1 ) ;
__inline static void put_unaligned_le16(u16 val , void *p )
{
  {
  *((__le16 *)p) = val;
  return;
}
}
__inline static void put_unaligned_le32(u32 val , void *p )
{
  {
  *((__le32 *)p) = val;
  return;
}
}
__inline static void put_unaligned_le64(u64 val , void *p )
{
  {
  *((__le64 *)p) = val;
  return;
}
}
extern void __bad_unaligned_access_size(void) ;
extern int usb_acpi_set_power_state(struct usb_device * , int , bool ) ;
extern bool usb_acpi_power_manageable(struct usb_device * , int ) ;
int xhci_hub_control(struct usb_hcd *hcd , u16 typeReq , u16 wValue , u16 wIndex ,
                     char *buf , u16 wLength ) ;
int xhci_hub_status_data(struct usb_hcd *hcd , char *buf ) ;
int xhci_bus_suspend(struct usb_hcd *hcd ) ;
int xhci_bus_resume(struct usb_hcd *hcd ) ;
u32 xhci_port_state_to_neutral(u32 state ) ;
__inline static void trace_xhci_dbg_quirks___1(struct va_format *vaf )
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
  tmp___1 = static_key_false(& __tracepoint_xhci_dbg_quirks.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_xhci_dbg_quirks.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/usb/host/xhci-trace.h",
                               48, "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_28600:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct va_format * ))it_func))(__data, vaf);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_28600;
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
static u8 usb_bos_descriptor[15U] =
  { 5U, 15U, 15U, 0U,
        1U, 10U, 16U, 3U,
        0U, 8U, 0U, 3U,
        0U, 0U, 0U};
static void xhci_common_hub_descriptor(struct xhci_hcd *xhci , struct usb_hub_descriptor *desc ,
                                       int ports )
{
  u16 temp ;
  {
  desc->bPwrOn2PwrGood = 10U;
  desc->bHubContrCurrent = 0U;
  desc->bNbrPorts = (__u8 )ports;
  temp = 0U;
  if ((xhci->hcc_params & 8U) != 0U) {
    temp = (u16 )((unsigned int )temp | 1U);
  } else {
    temp = (u16 )((unsigned int )temp | 2U);
  }
  temp = (u16 )((unsigned int )temp | 8U);
  desc->wHubCharacteristics = temp;
  return;
}
}
static void xhci_usb2_hub_descriptor(struct usb_hcd *hcd , struct xhci_hcd *xhci ,
                                     struct usb_hub_descriptor *desc )
{
  int ports ;
  u16 temp ;
  __u8 port_removable[4U] ;
  u32 portsc ;
  unsigned int i ;
  {
  ports = (int )xhci->num_usb2_ports;
  xhci_common_hub_descriptor(xhci, desc, ports);
  desc->bDescriptorType = 41U;
  temp = (unsigned int )((u16 )(ports / 8)) + 1U;
  desc->bDescLength = (unsigned int )((__u8 )temp) * 2U + 7U;
  memset((void *)(& port_removable), 0, 4UL);
  i = 0U;
  goto ldv_28859;
  ldv_28858:
  portsc = readl((void const volatile *)*(xhci->usb2_ports + (unsigned long )i));
  if ((portsc & 1073741824U) != 0U) {
    port_removable[(i + 1U) / 8U] = (__u8 )((int )((signed char )port_removable[(i + 1U) / 8U]) | (int )((signed char )(1 << ((int )(i + 1U) & 7))));
  } else {
  }
  i = i + 1U;
  ldv_28859: ;
  if ((unsigned int )ports > i) {
    goto ldv_28858;
  } else {
  }
  memset((void *)(& desc->u.hs.DeviceRemovable), 255, 4UL);
  memset((void *)(& desc->u.hs.PortPwrCtrlMask), 255, 4UL);
  i = 0U;
  goto ldv_28862;
  ldv_28861:
  memset((void *)(& desc->u.hs.DeviceRemovable) + (unsigned long )i, (int )port_removable[i],
         1UL);
  i = i + 1U;
  ldv_28862: ;
  if ((unsigned int )((ports + 8) / 8) > i) {
    goto ldv_28861;
  } else {
  }
  return;
}
}
static void xhci_usb3_hub_descriptor(struct usb_hcd *hcd , struct xhci_hcd *xhci ,
                                     struct usb_hub_descriptor *desc )
{
  int ports ;
  u16 port_removable ;
  u32 portsc ;
  unsigned int i ;
  {
  ports = (int )xhci->num_usb3_ports;
  xhci_common_hub_descriptor(xhci, desc, ports);
  desc->bDescriptorType = 42U;
  desc->bDescLength = 12U;
  desc->u.ss.bHubHdrDecLat = 0U;
  desc->u.ss.wHubDelay = 0U;
  port_removable = 0U;
  i = 0U;
  goto ldv_28874;
  ldv_28873:
  portsc = readl((void const volatile *)*(xhci->usb3_ports + (unsigned long )i));
  if ((portsc & 1073741824U) != 0U) {
    port_removable = (u16 )((int )((short )(1 << (int )(i + 1U))) | (int )((short )port_removable));
  } else {
  }
  i = i + 1U;
  ldv_28874: ;
  if ((unsigned int )ports > i) {
    goto ldv_28873;
  } else {
  }
  desc->u.ss.DeviceRemovable = port_removable;
  return;
}
}
static void xhci_hub_descriptor(struct usb_hcd *hcd , struct xhci_hcd *xhci , struct usb_hub_descriptor *desc )
{
  {
  if (hcd->speed == 64) {
    xhci_usb3_hub_descriptor(hcd, xhci, desc);
  } else {
    xhci_usb2_hub_descriptor(hcd, xhci, desc);
  }
  return;
}
}
static unsigned int xhci_port_speed(unsigned int port_status )
{
  {
  if ((port_status & 15360U) == 2048U) {
    return (512U);
  } else {
  }
  if ((port_status & 15360U) == 3072U) {
    return (1024U);
  } else {
  }
  return (0U);
}
}
u32 xhci_port_state_to_neutral(u32 state )
{
  {
  return (state & 1308688361U);
}
}
int xhci_find_slot_id_by_port(struct usb_hcd *hcd , struct xhci_hcd *xhci , u16 port )
{
  int slot_id ;
  int i ;
  enum usb_device_speed speed ;
  {
  slot_id = 0;
  i = 0;
  goto ldv_28898;
  ldv_28897: ;
  if ((unsigned long )xhci->devs[i] == (unsigned long )((struct xhci_virt_device *)0)) {
    goto ldv_28895;
  } else {
  }
  speed = ((xhci->devs[i])->udev)->speed;
  if (((unsigned int )speed != 5U) ^ (hcd->speed == 64) && (int )((unsigned short )(xhci->devs[i])->fake_port) == (int )port) {
    slot_id = i;
    goto ldv_28896;
  } else {
  }
  ldv_28895:
  i = i + 1;
  ldv_28898: ;
  if (i <= 255) {
    goto ldv_28897;
  } else {
  }
  ldv_28896: ;
  return (slot_id);
}
}
static int xhci_stop_device(struct xhci_hcd *xhci , int slot_id , int suspend )
{
  struct xhci_virt_device *virt_dev ;
  struct xhci_command *cmd ;
  unsigned long flags ;
  int ret ;
  int i ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct xhci_command *command ;
  struct usb_hcd *tmp___1 ;
  {
  ret = 0;
  virt_dev = xhci->devs[slot_id];
  cmd = xhci_alloc_command(xhci, 0, 1, 16U);
  if ((unsigned long )cmd == (unsigned long )((struct xhci_command *)0)) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_stop_device";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-hub.o.c.prepared";
    descriptor.format = "Couldn\'t allocate command structure.\n";
    descriptor.lineno = 415U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Couldn\'t allocate command structure.\n");
    } else {
    }
    return (-12);
  } else {
  }
  ldv_spin_lock();
  i = 30;
  goto ldv_28913;
  ldv_28912: ;
  if ((unsigned long )virt_dev->eps[i].ring != (unsigned long )((struct xhci_ring *)0) && (unsigned long )(virt_dev->eps[i].ring)->dequeue != (unsigned long )((union xhci_trb *)0)) {
    command = xhci_alloc_command(xhci, 0, 0, 16U);
    if ((unsigned long )command == (unsigned long )((struct xhci_command *)0)) {
      spin_unlock_irqrestore(& xhci->lock, flags);
      xhci_free_command(xhci, cmd);
      return (-12);
    } else {
    }
    xhci_queue_stop_endpoint(xhci, command, slot_id, (unsigned int )i, suspend);
  } else {
  }
  i = i - 1;
  ldv_28913: ;
  if (i > 0) {
    goto ldv_28912;
  } else {
  }
  xhci_queue_stop_endpoint(xhci, cmd, slot_id, 0U, suspend);
  xhci_ring_cmd_db(xhci);
  spin_unlock_irqrestore(& xhci->lock, flags);
  wait_for_completion(cmd->completion);
  if (cmd->status == 25U || cmd->status == 24U) {
    tmp___1 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___1->self.controller, "Timeout while waiting for stop endpoint command\n");
    ret = -62;
  } else {
  }
  xhci_free_command(xhci, cmd);
  return (ret);
}
}
void xhci_ring_device(struct xhci_hcd *xhci , int slot_id )
{
  int i ;
  {
  i = 0;
  goto ldv_28921;
  ldv_28920: ;
  if ((unsigned long )(xhci->devs[slot_id])->eps[i].ring != (unsigned long )((struct xhci_ring *)0) && (unsigned long )((xhci->devs[slot_id])->eps[i].ring)->dequeue != (unsigned long )((union xhci_trb *)0)) {
    xhci_ring_ep_doorbell(xhci, (unsigned int )slot_id, (unsigned int )i, 0U);
  } else {
  }
  i = i + 1;
  ldv_28921: ;
  if (i <= 30) {
    goto ldv_28920;
  } else {
  }
  return;
}
}
static void xhci_disable_port(struct usb_hcd *hcd , struct xhci_hcd *xhci , u16 wIndex ,
                              __le32 *addr , u32 port_status )
{
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  if (hcd->speed == 64) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_disable_port";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-hub.o.c.prepared";
    descriptor.format = "Ignoring request to disable SuperSpeed port.\n";
    descriptor.lineno = 471U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Ignoring request to disable SuperSpeed port.\n");
    } else {
    }
    return;
  } else {
  }
  writel(port_status | 2U, (void volatile *)addr);
  port_status = readl((void const volatile *)addr);
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_disable_port";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-hub.o.c.prepared";
  descriptor___0.format = "disable port, actual port %d status  = 0x%x\n";
  descriptor___0.lineno = 479U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "disable port, actual port %d status  = 0x%x\n", (int )wIndex,
                      port_status);
  } else {
  }
  return;
}
}
static void xhci_clear_port_change_bit(struct xhci_hcd *xhci , u16 wValue , u16 wIndex ,
                                       __le32 *addr , u32 port_status )
{
  char *port_change_bit ;
  u32 status ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  switch ((int )wValue) {
  case 20:
  status = 2097152U;
  port_change_bit = (char *)"reset";
  goto ldv_28943;
  case 29:
  status = 524288U;
  port_change_bit = (char *)"warm(BH) reset";
  goto ldv_28943;
  case 16:
  status = 131072U;
  port_change_bit = (char *)"connect";
  goto ldv_28943;
  case 19:
  status = 1048576U;
  port_change_bit = (char *)"over-current";
  goto ldv_28943;
  case 17:
  status = 262144U;
  port_change_bit = (char *)"enable/disable";
  goto ldv_28943;
  case 18:
  status = 4194304U;
  port_change_bit = (char *)"suspend/resume";
  goto ldv_28943;
  case 25:
  status = 4194304U;
  port_change_bit = (char *)"link state";
  goto ldv_28943;
  default: ;
  return;
  }
  ldv_28943:
  writel(port_status | status, (void volatile *)addr);
  port_status = readl((void const volatile *)addr);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_clear_port_change_bit";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-hub.o.c.prepared";
  descriptor.format = "clear port %s change, actual port %d status  = 0x%x\n";
  descriptor.lineno = 525U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "clear port %s change, actual port %d status  = 0x%x\n", port_change_bit,
                      (int )wIndex, port_status);
  } else {
  }
  return;
}
}
static int xhci_get_ports(struct usb_hcd *hcd , __le32 ***port_array )
{
  int max_ports ;
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  if (hcd->speed == 64) {
    max_ports = (int )xhci->num_usb3_ports;
    *port_array = xhci->usb3_ports;
  } else {
    max_ports = (int )xhci->num_usb2_ports;
    *port_array = xhci->usb2_ports;
  }
  return (max_ports);
}
}
void xhci_set_link_state(struct xhci_hcd *xhci , __le32 **port_array , int port_id ,
                         u32 link_state )
{
  u32 temp ;
  {
  temp = readl((void const volatile *)*(port_array + (unsigned long )port_id));
  temp = xhci_port_state_to_neutral(temp);
  temp = temp & 4294966815U;
  temp = (link_state | temp) | 65536U;
  writel(temp, (void volatile *)*(port_array + (unsigned long )port_id));
  return;
}
}
static void xhci_set_remote_wake_mask(struct xhci_hcd *xhci , __le32 **port_array ,
                                      int port_id , u16 wake_mask )
{
  u32 temp ;
  {
  temp = readl((void const volatile *)*(port_array + (unsigned long )port_id));
  temp = xhci_port_state_to_neutral(temp);
  if (((int )wake_mask & 256) != 0) {
    temp = temp | 33554432U;
  } else {
    temp = temp & 4261412863U;
  }
  if (((int )wake_mask & 512) != 0) {
    temp = temp | 67108864U;
  } else {
    temp = temp & 4227858431U;
  }
  if (((int )wake_mask & 1024) != 0) {
    temp = temp | 134217728U;
  } else {
    temp = temp & 4160749567U;
  }
  writel(temp, (void volatile *)*(port_array + (unsigned long )port_id));
  return;
}
}
void xhci_test_and_clear_bit(struct xhci_hcd *xhci , __le32 **port_array , int port_id ,
                             u32 port_bit )
{
  u32 temp ;
  {
  temp = readl((void const volatile *)*(port_array + (unsigned long )port_id));
  if ((temp & port_bit) != 0U) {
    temp = xhci_port_state_to_neutral(temp);
    temp = temp | port_bit;
    writel(temp, (void volatile *)*(port_array + (unsigned long )port_id));
  } else {
  }
  return;
}
}
static void xhci_hub_report_usb2_link_state(u32 *status , u32 status_reg )
{
  {
  if ((status_reg & 480U) == 64U) {
    *status = *status | 32U;
  } else {
  }
  return;
}
}
static void xhci_hub_report_usb3_link_state(u32 *status , u32 status_reg )
{
  u32 pls ;
  {
  pls = status_reg & 480U;
  if (pls == 480U) {
    return;
  } else {
  }
  if ((status_reg & 16777216U) != 0U) {
    if (pls != 320U && pls != 192U) {
      pls = 320U;
    } else {
    }
    pls = pls | 1U;
  } else
  if (pls == 320U) {
    pls = pls | 1U;
  } else {
  }
  *status = *status | pls;
  return;
}
}
static void xhci_del_comp_mod_timer(struct xhci_hcd *xhci , u32 status , u16 wIndex )
{
  u32 all_ports_seen_u0 ;
  bool port_in_u0 ;
  {
  all_ports_seen_u0 = (u32 )((1 << (int )xhci->num_usb3_ports) + -1);
  port_in_u0 = (status & 480U) == 0U;
  if ((xhci->quirks & 16384U) == 0U) {
    return;
  } else {
  }
  if (xhci->port_status_u0 != all_ports_seen_u0 && (int )port_in_u0) {
    xhci->port_status_u0 = xhci->port_status_u0 | (u32 )(1 << (int )wIndex);
    if (xhci->port_status_u0 == all_ports_seen_u0) {
      ldv_del_timer_sync_124(& xhci->comp_mode_recovery_timer);
      xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks___1, "All USB3 ports have entered U0 already!");
      xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks___1, "Compliance Mode Recovery Timer Deleted.");
    } else {
    }
  } else {
  }
  return;
}
}
static u32 xhci_get_port_status(struct usb_hcd *hcd , struct xhci_bus_state *bus_state ,
                                __le32 **port_array , u16 wIndex , u32 raw_port_status ,
                                unsigned long flags )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  u32 status ;
  int slot_id ;
  int time_left ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  int port_status ;
  unsigned int tmp___6 ;
  struct usb_hcd *tmp___7 ;
  unsigned int tmp___8 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  status = 0U;
  if ((raw_port_status & 131072U) != 0U) {
    status = status | 65536U;
  } else {
  }
  if ((raw_port_status & 262144U) != 0U) {
    status = status | 131072U;
  } else {
  }
  if ((raw_port_status & 1048576U) != 0U) {
    status = status | 524288U;
  } else {
  }
  if ((raw_port_status & 2097152U) != 0U) {
    status = status | 1048576U;
  } else {
  }
  if (hcd->speed == 64) {
    if ((raw_port_status & 4194304U) != 0U) {
      status = status | 4194304U;
    } else {
    }
    if ((raw_port_status & 524288U) != 0U) {
      status = status | 2097152U;
    } else {
    }
  } else {
  }
  if (hcd->speed != 64) {
    if ((raw_port_status & 480U) == 96U && (raw_port_status & 512U) != 0U) {
      status = status | 4U;
    } else {
    }
  } else {
  }
  if ((raw_port_status & 480U) == 480U && (raw_port_status & 15360U) != 4096U) {
    if ((raw_port_status & 16U) != 0U || (raw_port_status & 2U) == 0U) {
      return (4294967295U);
    } else {
    }
    if ((long )((unsigned long )jiffies - bus_state->resume_done[(int )wIndex]) >= 0L) {
      descriptor.modname = "xhci_hcd";
      descriptor.function = "xhci_get_port_status";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-hub.o.c.prepared";
      descriptor.format = "Resume USB2 port %d\n";
      descriptor.lineno = 733U;
      descriptor.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        tmp___0 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                          "Resume USB2 port %d\n", (int )wIndex + 1);
      } else {
      }
      bus_state->resume_done[(int )wIndex] = 0UL;
      clear_bit((long )wIndex, (unsigned long volatile *)(& bus_state->resuming_ports));
      set_bit((long )wIndex, (unsigned long volatile *)(& bus_state->rexit_ports));
      xhci_set_link_state(xhci, port_array, (int )wIndex, 0U);
      spin_unlock_irqrestore(& xhci->lock, flags);
      tmp___2 = msecs_to_jiffies(20000U);
      tmp___3 = wait_for_completion_timeout((struct completion *)(& bus_state->rexit_done) + (unsigned long )wIndex,
                                            tmp___2);
      time_left = (int )tmp___3;
      ldv_spin_lock();
      if (time_left != 0) {
        slot_id = xhci_find_slot_id_by_port(hcd, xhci, (int )((unsigned int )wIndex + 1U));
        if (slot_id == 0) {
          descriptor___0.modname = "xhci_hcd";
          descriptor___0.function = "xhci_get_port_status";
          descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-hub.o.c.prepared";
          descriptor___0.format = "slot_id is zero\n";
          descriptor___0.lineno = 752U;
          descriptor___0.flags = 0U;
          tmp___5 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
          if (tmp___5 != 0L) {
            tmp___4 = xhci_to_hcd(xhci);
            __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___4->self.controller,
                              "slot_id is zero\n");
          } else {
          }
          return (4294967295U);
        } else {
        }
        xhci_ring_device(xhci, slot_id);
      } else {
        tmp___6 = readl((void const volatile *)*(port_array + (unsigned long )wIndex));
        port_status = (int )tmp___6;
        tmp___7 = xhci_to_hcd(xhci);
        dev_warn((struct device const *)tmp___7->self.controller, "Port resume took longer than %i msec, port status = 0x%x\n",
                 20000, port_status);
        status = status | 4U;
        clear_bit((long )wIndex, (unsigned long volatile *)(& bus_state->rexit_ports));
      }
      bus_state->port_c_suspend = bus_state->port_c_suspend | (u32 )(1 << (int )wIndex);
      bus_state->suspended_ports = bus_state->suspended_ports & (u32 )(~ (1 << (int )wIndex));
    } else {
      status = status | 4U;
    }
  } else {
  }
  if (((raw_port_status & 480U) == 0U && (raw_port_status & 512U) != 0U) && (bus_state->suspended_ports & (u32 )(1 << (int )wIndex)) != 0U) {
    bus_state->suspended_ports = bus_state->suspended_ports & (u32 )(~ (1 << (int )wIndex));
    if (hcd->speed != 64) {
      bus_state->port_c_suspend = bus_state->port_c_suspend | (u32 )(1 << (int )wIndex);
    } else {
    }
  } else {
  }
  if ((int )raw_port_status & 1) {
    status = status | 1U;
    tmp___8 = xhci_port_speed(raw_port_status);
    status = tmp___8 | status;
  } else {
  }
  if ((raw_port_status & 2U) != 0U) {
    status = status | 2U;
  } else {
  }
  if ((raw_port_status & 8U) != 0U) {
    status = status | 8U;
  } else {
  }
  if ((raw_port_status & 16U) != 0U) {
    status = status | 16U;
  } else {
  }
  if ((raw_port_status & 512U) != 0U) {
    if (hcd->speed == 64) {
      status = status | 512U;
    } else {
      status = status | 256U;
    }
  } else {
  }
  if (hcd->speed == 64) {
    xhci_hub_report_usb3_link_state(& status, raw_port_status);
    xhci_del_comp_mod_timer(xhci, raw_port_status, (int )wIndex);
  } else {
    xhci_hub_report_usb2_link_state(& status, raw_port_status);
  }
  if ((bus_state->port_c_suspend & (u32 )(1 << (int )wIndex)) != 0U) {
    status = status | 262144U;
  } else {
  }
  return (status);
}
}
int xhci_hub_control(struct usb_hcd *hcd , u16 typeReq , u16 wValue , u16 wIndex ,
                     char *buf , u16 wLength )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  int max_ports ;
  unsigned long flags ;
  u32 temp ;
  u32 status ;
  int retval ;
  __le32 **port_array ;
  int slot_id ;
  struct xhci_bus_state *bus_state ;
  u16 link_state ;
  u16 wake_mask ;
  u16 timeout ;
  unsigned int tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  size_t __len ;
  void *__ret ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  void *__gu_p ;
  struct usb_hcd *tmp___7 ;
  struct usb_hcd *tmp___8 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  struct usb_hcd *tmp___13 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___14 ;
  long tmp___15 ;
  bool tmp___16 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___17 ;
  long tmp___18 ;
  struct _ddebug descriptor___6 ;
  struct usb_hcd *tmp___19 ;
  long tmp___20 ;
  struct _ddebug descriptor___7 ;
  struct usb_hcd *tmp___21 ;
  long tmp___22 ;
  struct _ddebug descriptor___8 ;
  struct usb_hcd *tmp___23 ;
  long tmp___24 ;
  struct _ddebug descriptor___9 ;
  struct usb_hcd *tmp___25 ;
  long tmp___26 ;
  bool tmp___27 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  retval = 0;
  link_state = 0U;
  wake_mask = 0U;
  timeout = 0U;
  max_ports = xhci_get_ports(hcd, & port_array);
  tmp___0 = hcd_index(hcd);
  bus_state = (struct xhci_bus_state *)(& xhci->bus_state) + (unsigned long )tmp___0;
  ldv_spin_lock();
  switch ((int )typeReq) {
  case 40960:
  memset((void *)buf, 0, 4UL);
  goto ldv_29039;
  case 40966: ;
  if (hcd->speed == 64 && ((unsigned int )wLength <= 11U || (unsigned int )wValue != 10752U)) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_hub_control";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-hub.o.c.prepared";
    descriptor.format = "Wrong hub descriptor type for USB 3.0 roothub.\n";
    descriptor.lineno = 850U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                        "Wrong hub descriptor type for USB 3.0 roothub.\n");
    } else {
    }
    goto error;
  } else {
  }
  xhci_hub_descriptor(hcd, xhci, (struct usb_hub_descriptor *)buf);
  goto ldv_29039;
  case 32774: ;
  if (((int )wValue & 65280) != 3840) {
    goto error;
  } else {
  }
  if (hcd->speed != 64) {
    goto error;
  } else {
  }
  __len = 15UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)buf, (void const *)(& usb_bos_descriptor), __len);
  } else {
    __ret = memcpy((void *)buf, (void const *)(& usb_bos_descriptor),
                             __len);
  }
  if ((xhci->quirks & 2048U) != 0U) {
    temp = readl((void const volatile *)(& (xhci->cap_regs)->hcs_params3));
    *(buf + 12UL) = (char )temp;
    put_unaligned_le16((int )((u16 )(temp >> 16)), (void *)buf + 13U);
  } else {
  }
  temp = readl((void const volatile *)(& (xhci->cap_regs)->hcc_params));
  if ((temp & 64U) != 0U) {
    *(buf + 8UL) = (char )((int )((signed char )*(buf + 8UL)) | 2);
  } else {
  }
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (15);
  case 41728: ;
  if ((unsigned int )wIndex == 0U || (int )wIndex > max_ports) {
    goto error;
  } else {
  }
  wIndex = (u16 )((int )wIndex - 1);
  temp = readl((void const volatile *)*(port_array + (unsigned long )wIndex));
  if (temp == 4294967295U) {
    retval = -19;
    goto ldv_29039;
  } else {
  }
  status = xhci_get_port_status(hcd, bus_state, port_array, (int )wIndex, temp, flags);
  if (status == 4294967295U) {
    goto error;
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_hub_control";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-hub.o.c.prepared";
  descriptor___0.format = "get port status, actual port %d status  = 0x%x\n";
  descriptor___0.lineno = 894U;
  descriptor___0.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___3->self.controller,
                      "get port status, actual port %d status  = 0x%x\n", (int )wIndex,
                      temp);
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_hub_control";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-hub.o.c.prepared";
  descriptor___1.format = "Get port status returned 0x%x\n";
  descriptor___1.lineno = 895U;
  descriptor___1.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___5->self.controller,
                      "Get port status returned 0x%x\n", status);
  } else {
  }
  __gu_p = (void *)buf;
  switch (4UL) {
  case 1UL:
  *((u8 *)__gu_p) = (unsigned char )status;
  goto ldv_29053;
  case 2UL:
  put_unaligned_le16((int )((unsigned short )status), __gu_p);
  goto ldv_29053;
  case 4UL:
  put_unaligned_le32(status, __gu_p);
  goto ldv_29053;
  case 8UL:
  put_unaligned_le64((unsigned long long )status, __gu_p);
  goto ldv_29053;
  default:
  __bad_unaligned_access_size();
  goto ldv_29053;
  }
  ldv_29053: ;
  goto ldv_29039;
  case 8963: ;
  if ((unsigned int )wValue == 5U) {
    link_state = (u16 )(((int )wIndex & 65280) >> 3);
  } else {
  }
  if ((unsigned int )wValue == 27U) {
    wake_mask = (unsigned int )wIndex & 65280U;
  } else {
  }
  timeout = (int )wIndex >> 8;
  wIndex = (unsigned int )wIndex & 255U;
  if ((unsigned int )wIndex == 0U || (int )wIndex > max_ports) {
    goto error;
  } else {
  }
  wIndex = (u16 )((int )wIndex - 1);
  temp = readl((void const volatile *)*(port_array + (unsigned long )wIndex));
  if (temp == 4294967295U) {
    retval = -19;
    goto ldv_29039;
  } else {
  }
  temp = xhci_port_state_to_neutral(temp);
  switch ((int )wValue) {
  case 2:
  temp = readl((void const volatile *)*(port_array + (unsigned long )wIndex));
  if ((temp & 480U) != 0U) {
    xhci_set_link_state(xhci, port_array, (int )wIndex, 0U);
    spin_unlock_irqrestore(& xhci->lock, flags);
    msleep(10U);
    ldv_spin_lock();
  } else {
  }
  temp = readl((void const volatile *)*(port_array + (unsigned long )wIndex));
  if (((temp & 2U) == 0U || (temp & 16U) != 0U) || (temp & 480U) > 95U) {
    tmp___7 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___7->self.controller, "USB core suspending device not in U0/U1/U2.\n");
    goto error;
  } else {
  }
  slot_id = xhci_find_slot_id_by_port(hcd, xhci, (int )((unsigned int )wIndex + 1U));
  if (slot_id == 0) {
    tmp___8 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___8->self.controller, "slot_id is zero\n");
    goto error;
  } else {
  }
  spin_unlock_irqrestore(& xhci->lock, flags);
  xhci_stop_device(xhci, slot_id, 1);
  ldv_spin_lock();
  xhci_set_link_state(xhci, port_array, (int )wIndex, 96U);
  spin_unlock_irqrestore(& xhci->lock, flags);
  msleep(10U);
  ldv_spin_lock();
  temp = readl((void const volatile *)*(port_array + (unsigned long )wIndex));
  bus_state->suspended_ports = bus_state->suspended_ports | (u32 )(1 << (int )wIndex);
  goto ldv_29060;
  case 5:
  temp = readl((void const volatile *)*(port_array + (unsigned long )wIndex));
  if ((unsigned int )link_state == 128U) {
    descriptor___2.modname = "xhci_hcd";
    descriptor___2.function = "xhci_hub_control";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-hub.o.c.prepared";
    descriptor___2.format = "Disable port %d\n";
    descriptor___2.lineno = 965U;
    descriptor___2.flags = 0U;
    tmp___10 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___10 != 0L) {
      tmp___9 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___9->self.controller,
                        "Disable port %d\n", (int )wIndex);
    } else {
    }
    temp = xhci_port_state_to_neutral(temp);
    temp = temp | 16646144U;
    writel(temp | 2U, (void volatile *)*(port_array + (unsigned long )wIndex));
    temp = readl((void const volatile *)*(port_array + (unsigned long )wIndex));
    goto ldv_29060;
  } else {
  }
  if ((unsigned int )link_state == 160U) {
    descriptor___3.modname = "xhci_hcd";
    descriptor___3.function = "xhci_hub_control";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-hub.o.c.prepared";
    descriptor___3.format = "Enable port %d\n";
    descriptor___3.lineno = 981U;
    descriptor___3.flags = 0U;
    tmp___12 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___12 != 0L) {
      tmp___11 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___11->self.controller,
                        "Enable port %d\n", (int )wIndex);
    } else {
    }
    xhci_set_link_state(xhci, port_array, (int )wIndex, (u32 )link_state);
    temp = readl((void const volatile *)*(port_array + (unsigned long )wIndex));
    goto ldv_29060;
  } else {
  }
  if ((temp & 2U) == 0U || (unsigned int )link_state > 96U) {
    tmp___13 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___13->self.controller, "Cannot set link state.\n");
    goto error;
  } else {
  }
  if ((unsigned int )link_state == 96U) {
    slot_id = xhci_find_slot_id_by_port(hcd, xhci, (int )((unsigned int )wIndex + 1U));
    if (slot_id != 0) {
      spin_unlock_irqrestore(& xhci->lock, flags);
      xhci_stop_device(xhci, slot_id, 1);
      ldv_spin_lock();
    } else {
    }
  } else {
  }
  xhci_set_link_state(xhci, port_array, (int )wIndex, (u32 )link_state);
  spin_unlock_irqrestore(& xhci->lock, flags);
  msleep(20U);
  ldv_spin_lock();
  temp = readl((void const volatile *)*(port_array + (unsigned long )wIndex));
  if ((unsigned int )link_state == 96U) {
    bus_state->suspended_ports = bus_state->suspended_ports | (u32 )(1 << (int )wIndex);
  } else {
  }
  goto ldv_29060;
  case 8:
  writel(temp | 512U, (void volatile *)*(port_array + (unsigned long )wIndex));
  temp = readl((void const volatile *)*(port_array + (unsigned long )wIndex));
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_hub_control";
  descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-hub.o.c.prepared";
  descriptor___4.format = "set port power, actual port %d status  = 0x%x\n";
  descriptor___4.lineno = 1032U;
  descriptor___4.flags = 0U;
  tmp___15 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___15 != 0L) {
    tmp___14 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___14->self.controller,
                      "set port power, actual port %d status  = 0x%x\n", (int )wIndex,
                      temp);
  } else {
  }
  spin_unlock_irqrestore(& xhci->lock, flags);
  tmp___16 = usb_acpi_power_manageable(hcd->self.root_hub, (int )wIndex);
  temp = (u32 )tmp___16;
  if (temp != 0U) {
    usb_acpi_set_power_state(hcd->self.root_hub, (int )wIndex, 1);
  } else {
  }
  ldv_spin_lock();
  goto ldv_29060;
  case 4:
  temp = temp | 16U;
  writel(temp, (void volatile *)*(port_array + (unsigned long )wIndex));
  temp = readl((void const volatile *)*(port_array + (unsigned long )wIndex));
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "xhci_hub_control";
  descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-hub.o.c.prepared";
  descriptor___5.format = "set port reset, actual port %d status  = 0x%x\n";
  descriptor___5.lineno = 1047U;
  descriptor___5.flags = 0U;
  tmp___18 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___18 != 0L) {
    tmp___17 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___17->self.controller,
                      "set port reset, actual port %d status  = 0x%x\n", (int )wIndex,
                      temp);
  } else {
  }
  goto ldv_29060;
  case 27:
  xhci_set_remote_wake_mask(xhci, port_array, (int )wIndex, (int )wake_mask);
  temp = readl((void const volatile *)*(port_array + (unsigned long )wIndex));
  descriptor___6.modname = "xhci_hcd";
  descriptor___6.function = "xhci_hub_control";
  descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-hub.o.c.prepared";
  descriptor___6.format = "set port remote wake mask, actual port %d status  = 0x%x\n";
  descriptor___6.lineno = 1055U;
  descriptor___6.flags = 0U;
  tmp___20 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___20 != 0L) {
    tmp___19 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___6, (struct device const *)tmp___19->self.controller,
                      "set port remote wake mask, actual port %d status  = 0x%x\n",
                      (int )wIndex, temp);
  } else {
  }
  goto ldv_29060;
  case 28:
  temp = temp | 2147483648U;
  writel(temp, (void volatile *)*(port_array + (unsigned long )wIndex));
  temp = readl((void const volatile *)*(port_array + (unsigned long )wIndex));
  goto ldv_29060;
  case 23: ;
  if (hcd->speed != 64) {
    goto error;
  } else {
  }
  temp = readl((void const volatile *)*(port_array + (unsigned long )wIndex) + 1U);
  temp = temp & 4294967040U;
  temp = ((u32 )timeout & 255U) | temp;
  writel(temp, (void volatile *)*(port_array + (unsigned long )wIndex) + 1U);
  goto ldv_29060;
  case 24: ;
  if (hcd->speed != 64) {
    goto error;
  } else {
  }
  temp = readl((void const volatile *)*(port_array + (unsigned long )wIndex) + 1U);
  temp = temp & 4294902015U;
  temp = ((u32 )((int )timeout << 8) & 65535U) | temp;
  writel(temp, (void volatile *)*(port_array + (unsigned long )wIndex) + 1U);
  goto ldv_29060;
  default: ;
  goto error;
  }
  ldv_29060:
  temp = readl((void const volatile *)*(port_array + (unsigned long )wIndex));
  goto ldv_29039;
  case 8961: ;
  if ((unsigned int )wIndex == 0U || (int )wIndex > max_ports) {
    goto error;
  } else {
  }
  wIndex = (u16 )((int )wIndex - 1);
  temp = readl((void const volatile *)*(port_array + (unsigned long )wIndex));
  if (temp == 4294967295U) {
    retval = -19;
    goto ldv_29039;
  } else {
  }
  temp = xhci_port_state_to_neutral(temp);
  switch ((int )wValue) {
  case 2:
  temp = readl((void const volatile *)*(port_array + (unsigned long )wIndex));
  descriptor___7.modname = "xhci_hcd";
  descriptor___7.function = "xhci_hub_control";
  descriptor___7.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-hub.o.c.prepared";
  descriptor___7.format = "clear USB_PORT_FEAT_SUSPEND\n";
  descriptor___7.lineno = 1099U;
  descriptor___7.flags = 0U;
  tmp___22 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
  if (tmp___22 != 0L) {
    tmp___21 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___7, (struct device const *)tmp___21->self.controller,
                      "clear USB_PORT_FEAT_SUSPEND\n");
  } else {
  }
  descriptor___8.modname = "xhci_hcd";
  descriptor___8.function = "xhci_hub_control";
  descriptor___8.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-hub.o.c.prepared";
  descriptor___8.format = "PORTSC %04x\n";
  descriptor___8.lineno = 1100U;
  descriptor___8.flags = 0U;
  tmp___24 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
  if (tmp___24 != 0L) {
    tmp___23 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___8, (struct device const *)tmp___23->self.controller,
                      "PORTSC %04x\n", temp);
  } else {
  }
  if ((temp & 16U) != 0U) {
    goto error;
  } else {
  }
  if ((temp & 480U) == 96U) {
    if ((temp & 2U) == 0U) {
      goto error;
    } else {
    }
    xhci_set_link_state(xhci, port_array, (int )wIndex, 480U);
    spin_unlock_irqrestore(& xhci->lock, flags);
    msleep(20U);
    ldv_spin_lock();
    xhci_set_link_state(xhci, port_array, (int )wIndex, 0U);
  } else {
  }
  bus_state->port_c_suspend = bus_state->port_c_suspend | (u32 )(1 << (int )wIndex);
  slot_id = xhci_find_slot_id_by_port(hcd, xhci, (int )((unsigned int )wIndex + 1U));
  if (slot_id == 0) {
    descriptor___9.modname = "xhci_hcd";
    descriptor___9.function = "xhci_hub_control";
    descriptor___9.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-hub.o.c.prepared";
    descriptor___9.format = "slot_id is zero\n";
    descriptor___9.lineno = 1120U;
    descriptor___9.flags = 0U;
    tmp___26 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
    if (tmp___26 != 0L) {
      tmp___25 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___9, (struct device const *)tmp___25->self.controller,
                        "slot_id is zero\n");
    } else {
    }
    goto error;
  } else {
  }
  xhci_ring_device(xhci, slot_id);
  goto ldv_29079;
  case 18:
  bus_state->port_c_suspend = bus_state->port_c_suspend & (u32 )(~ (1 << (int )wIndex));
  case 20: ;
  case 29: ;
  case 16: ;
  case 19: ;
  case 17: ;
  case 25:
  xhci_clear_port_change_bit(xhci, (int )wValue, (int )wIndex, *(port_array + (unsigned long )wIndex),
                             temp);
  goto ldv_29079;
  case 1:
  xhci_disable_port(hcd, xhci, (int )wIndex, *(port_array + (unsigned long )wIndex),
                    temp);
  goto ldv_29079;
  case 8:
  writel(temp & 4294966783U, (void volatile *)*(port_array + (unsigned long )wIndex));
  spin_unlock_irqrestore(& xhci->lock, flags);
  tmp___27 = usb_acpi_power_manageable(hcd->self.root_hub, (int )wIndex);
  temp = (u32 )tmp___27;
  if (temp != 0U) {
    usb_acpi_set_power_state(hcd->self.root_hub, (int )wIndex, 0);
  } else {
  }
  ldv_spin_lock();
  goto ldv_29079;
  default: ;
  goto error;
  }
  ldv_29079: ;
  goto ldv_29039;
  default: ;
  error:
  retval = -32;
  }
  ldv_29039:
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (retval);
}
}
int xhci_hub_status_data(struct usb_hcd *hcd , char *buf )
{
  unsigned long flags ;
  u32 temp ;
  u32 status ;
  u32 mask ;
  int i ;
  int retval ;
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  int max_ports ;
  __le32 **port_array ;
  struct xhci_bus_state *bus_state ;
  bool reset_change ;
  unsigned int tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  reset_change = 0;
  max_ports = xhci_get_ports(hcd, & port_array);
  tmp___0 = hcd_index(hcd);
  bus_state = (struct xhci_bus_state *)(& xhci->bus_state) + (unsigned long )tmp___0;
  retval = (max_ports + 8) / 8;
  memset((void *)buf, 0, (size_t )retval);
  status = (u32 )bus_state->resuming_ports;
  mask = 6160384U;
  ldv_spin_lock();
  i = 0;
  goto ldv_29114;
  ldv_29113:
  temp = readl((void const volatile *)*(port_array + (unsigned long )i));
  if (temp == 4294967295U) {
    retval = -19;
    goto ldv_29106;
  } else {
  }
  if (((temp & mask) != 0U || (bus_state->port_c_suspend & (u32 )(1 << i)) != 0U) || (bus_state->resume_done[i] != 0UL && (long )((unsigned long )jiffies - bus_state->resume_done[i]) >= 0L)) {
    *(buf + (unsigned long )((i + 1) / 8)) = (int )*(buf + (unsigned long )((i + 1) / 8)) | (int )((char )(1 << (i + 1) % 8));
    status = 1U;
  } else {
  }
  if ((temp & 2097152U) != 0U) {
    reset_change = 1;
  } else {
  }
  i = i + 1;
  ldv_29114: ;
  if (i < max_ports) {
    goto ldv_29113;
  } else {
  }
  ldv_29106: ;
  if (status == 0U && ! reset_change) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_hub_status_data";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-hub.o.c.prepared";
    descriptor.format = "%s: stopping port polling.\n";
    descriptor.lineno = 1218U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                        "%s: stopping port polling.\n", "xhci_hub_status_data");
    } else {
    }
    clear_bit(2L, (unsigned long volatile *)(& hcd->flags));
  } else {
  }
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (status != 0U ? retval : 0);
}
}
int xhci_bus_suspend(struct usb_hcd *hcd )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  int max_ports ;
  int port_index ;
  __le32 **port_array ;
  struct xhci_bus_state *bus_state ;
  unsigned long flags ;
  unsigned int tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  u32 t1 ;
  u32 t2 ;
  int slot_id ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  int tmp___5 ;
  unsigned long tmp___6 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  max_ports = xhci_get_ports(hcd, & port_array);
  tmp___0 = hcd_index(hcd);
  bus_state = (struct xhci_bus_state *)(& xhci->bus_state) + (unsigned long )tmp___0;
  ldv_spin_lock();
  if ((unsigned int )*((unsigned char *)hcd->self.root_hub + 1960UL) != 0U) {
    if (bus_state->resuming_ports != 0UL) {
      spin_unlock_irqrestore(& xhci->lock, flags);
      descriptor.modname = "xhci_hcd";
      descriptor.function = "xhci_bus_suspend";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-hub.o.c.prepared";
      descriptor.format = "suspend failed because a port is resuming\n";
      descriptor.lineno = 1244U;
      descriptor.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___2 != 0L) {
        tmp___1 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                          "suspend failed because a port is resuming\n");
      } else {
      }
      return (-16);
    } else {
    }
  } else {
  }
  port_index = max_ports;
  bus_state->bus_suspended = 0UL;
  goto ldv_29133;
  ldv_29132:
  t1 = readl((void const volatile *)*(port_array + (unsigned long )port_index));
  t2 = xhci_port_state_to_neutral(t1);
  if ((t1 & 2U) != 0U && (t1 & 480U) == 0U) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_bus_suspend";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-hub.o.c.prepared";
    descriptor___0.format = "port %d not suspended\n";
    descriptor___0.lineno = 1260U;
    descriptor___0.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      tmp___3 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___3->self.controller,
                        "port %d not suspended\n", port_index);
    } else {
    }
    slot_id = xhci_find_slot_id_by_port(hcd, xhci, (int )((unsigned int )((u16 )port_index) + 1U));
    if (slot_id != 0) {
      spin_unlock_irqrestore(& xhci->lock, flags);
      xhci_stop_device(xhci, slot_id, 1);
      ldv_spin_lock();
    } else {
    }
    t2 = t2 & 4294966815U;
    t2 = t2 | 65632U;
    set_bit((long )port_index, (unsigned long volatile *)(& bus_state->bus_suspended));
  } else {
  }
  if ((unsigned int )*((unsigned char *)hcd->self.root_hub + 1960UL) != 0U) {
    if ((int )t1 & 1) {
      t2 = t2 | 201326592U;
      t2 = t2 & 4261412863U;
    } else {
      t2 = t2 | 167772160U;
      t2 = t2 & 4227858431U;
    }
  } else {
    t2 = t2 & 4060086271U;
  }
  t1 = xhci_port_state_to_neutral(t1);
  if (t1 != t2) {
    writel(t2, (void volatile *)*(port_array + (unsigned long )port_index));
  } else {
  }
  ldv_29133:
  tmp___5 = port_index;
  port_index = port_index - 1;
  if (tmp___5 != 0) {
    goto ldv_29132;
  } else {
  }
  hcd->state = 4;
  tmp___6 = msecs_to_jiffies(10U);
  bus_state->next_statechange = tmp___6 + (unsigned long )jiffies;
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (0);
}
}
int xhci_bus_resume(struct usb_hcd *hcd )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  int max_ports ;
  int port_index ;
  __le32 **port_array ;
  struct xhci_bus_state *bus_state ;
  u32 temp ;
  unsigned long flags ;
  unsigned int tmp___0 ;
  u32 temp___0 ;
  int slot_id ;
  int tmp___1 ;
  int tmp___2 ;
  unsigned long tmp___3 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  max_ports = xhci_get_ports(hcd, & port_array);
  tmp___0 = hcd_index(hcd);
  bus_state = (struct xhci_bus_state *)(& xhci->bus_state) + (unsigned long )tmp___0;
  if ((long )((unsigned long )jiffies - bus_state->next_statechange) < 0L) {
    msleep(5U);
  } else {
  }
  ldv_spin_lock();
  if ((hcd->flags & 1UL) == 0UL) {
    spin_unlock_irqrestore(& xhci->lock, flags);
    return (-108);
  } else {
  }
  temp = readl((void const volatile *)(& (xhci->op_regs)->command));
  temp = temp & 4294967291U;
  writel(temp, (void volatile *)(& (xhci->op_regs)->command));
  port_index = max_ports;
  goto ldv_29154;
  ldv_29153:
  temp___0 = readl((void const volatile *)*(port_array + (unsigned long )port_index));
  if ((temp___0 & 15360U) == 4096U) {
    temp___0 = temp___0 & 4043440125U;
  } else {
    temp___0 = temp___0 & 4051828733U;
  }
  tmp___1 = variable_test_bit((long )port_index, (unsigned long const volatile *)(& bus_state->bus_suspended));
  if (tmp___1 != 0 && (temp___0 & 480U) != 0U) {
    if ((temp___0 & 15360U) == 4096U) {
      xhci_set_link_state(xhci, port_array, port_index, 0U);
    } else {
      xhci_set_link_state(xhci, port_array, port_index, 480U);
      spin_unlock_irqrestore(& xhci->lock, flags);
      msleep(20U);
      ldv_spin_lock();
      xhci_set_link_state(xhci, port_array, port_index, 0U);
    }
    spin_unlock_irqrestore(& xhci->lock, flags);
    msleep(20U);
    ldv_spin_lock();
    xhci_test_and_clear_bit(xhci, port_array, port_index, 4194304U);
    slot_id = xhci_find_slot_id_by_port(hcd, xhci, (int )((unsigned int )((u16 )port_index) + 1U));
    if (slot_id != 0) {
      xhci_ring_device(xhci, slot_id);
    } else {
    }
  } else {
    writel(temp___0, (void volatile *)*(port_array + (unsigned long )port_index));
  }
  ldv_29154:
  tmp___2 = port_index;
  port_index = port_index - 1;
  if (tmp___2 != 0) {
    goto ldv_29153;
  } else {
  }
  readl((void const volatile *)(& (xhci->op_regs)->command));
  tmp___3 = msecs_to_jiffies(5U);
  bus_state->next_statechange = tmp___3 + (unsigned long )jiffies;
  temp = readl((void const volatile *)(& (xhci->op_regs)->command));
  temp = temp | 4U;
  writel(temp, (void volatile *)(& (xhci->op_regs)->command));
  temp = readl((void const volatile *)(& (xhci->op_regs)->command));
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (0);
}
}
int ldv_del_timer_sync_124(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_6(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv__builtin_va_end(__builtin_va_list ) ;
void ldv__builtin_va_start(__builtin_va_list ) ;
void xhci_debug_trb(struct xhci_hcd *xhci , union xhci_trb *trb ) ;
void xhci_dbg_ep_rings(struct xhci_hcd *xhci , unsigned int slot_id , unsigned int ep_index ,
                       struct xhci_virt_ep *ep ) ;
void xhci_dbg_regs(struct xhci_hcd *xhci )
{
  u32 temp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___6 ;
  struct usb_hcd *tmp___13 ;
  long tmp___14 ;
  {
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_dbg_regs";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor.format = "// xHCI capability registers at %p:\n";
  descriptor.lineno = 168U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "// xHCI capability registers at %p:\n", xhci->cap_regs);
  } else {
  }
  temp = readl((void const volatile *)(& (xhci->cap_regs)->hc_capbase));
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_dbg_regs";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___0.format = "// @%p = 0x%x (CAPLENGTH AND HCIVERSION)\n";
  descriptor___0.lineno = 171U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "// @%p = 0x%x (CAPLENGTH AND HCIVERSION)\n", & (xhci->cap_regs)->hc_capbase,
                      temp);
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_dbg_regs";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___1.format = "//   CAPLENGTH: 0x%x\n";
  descriptor___1.lineno = 173U;
  descriptor___1.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                      "//   CAPLENGTH: 0x%x\n", temp & 255U);
  } else {
  }
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_dbg_regs";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___2.format = "// xHCI operational registers at %p:\n";
  descriptor___2.lineno = 179U;
  descriptor___2.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___5->self.controller,
                      "// xHCI operational registers at %p:\n", xhci->op_regs);
  } else {
  }
  temp = readl((void const volatile *)(& (xhci->cap_regs)->run_regs_off));
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_dbg_regs";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___3.format = "// @%p = 0x%x RTSOFF\n";
  descriptor___3.lineno = 184U;
  descriptor___3.flags = 0U;
  tmp___8 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___7->self.controller,
                      "// @%p = 0x%x RTSOFF\n", & (xhci->cap_regs)->run_regs_off,
                      temp & 4294967264U);
  } else {
  }
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_dbg_regs";
  descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___4.format = "// xHCI runtime registers at %p:\n";
  descriptor___4.lineno = 185U;
  descriptor___4.flags = 0U;
  tmp___10 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    tmp___9 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___9->self.controller,
                      "// xHCI runtime registers at %p:\n", xhci->run_regs);
  } else {
  }
  temp = readl((void const volatile *)(& (xhci->cap_regs)->db_off));
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "xhci_dbg_regs";
  descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___5.format = "// @%p = 0x%x DBOFF\n";
  descriptor___5.lineno = 188U;
  descriptor___5.flags = 0U;
  tmp___12 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    tmp___11 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___11->self.controller,
                      "// @%p = 0x%x DBOFF\n", & (xhci->cap_regs)->db_off, temp);
  } else {
  }
  descriptor___6.modname = "xhci_hcd";
  descriptor___6.function = "xhci_dbg_regs";
  descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___6.format = "// Doorbell array at %p:\n";
  descriptor___6.lineno = 189U;
  descriptor___6.flags = 0U;
  tmp___14 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___14 != 0L) {
    tmp___13 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___6, (struct device const *)tmp___13->self.controller,
                      "// Doorbell array at %p:\n", xhci->dba);
  } else {
  }
  return;
}
}
static void xhci_print_cap_regs(struct xhci_hcd *xhci )
{
  u32 temp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___6 ;
  struct usb_hcd *tmp___13 ;
  long tmp___14 ;
  struct _ddebug descriptor___7 ;
  struct usb_hcd *tmp___15 ;
  long tmp___16 ;
  struct _ddebug descriptor___8 ;
  struct usb_hcd *tmp___17 ;
  long tmp___18 ;
  struct _ddebug descriptor___9 ;
  struct usb_hcd *tmp___19 ;
  long tmp___20 ;
  struct _ddebug descriptor___10 ;
  struct usb_hcd *tmp___21 ;
  long tmp___22 ;
  struct _ddebug descriptor___11 ;
  struct usb_hcd *tmp___23 ;
  long tmp___24 ;
  struct _ddebug descriptor___12 ;
  struct usb_hcd *tmp___25 ;
  long tmp___26 ;
  struct _ddebug descriptor___13 ;
  struct usb_hcd *tmp___27 ;
  long tmp___28 ;
  struct _ddebug descriptor___14 ;
  struct usb_hcd *tmp___29 ;
  long tmp___30 ;
  struct _ddebug descriptor___15 ;
  struct usb_hcd *tmp___31 ;
  long tmp___32 ;
  struct _ddebug descriptor___16 ;
  struct usb_hcd *tmp___33 ;
  long tmp___34 ;
  {
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_print_cap_regs";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor.format = "xHCI capability registers at %p:\n";
  descriptor.lineno = 196U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "xHCI capability registers at %p:\n", xhci->cap_regs);
  } else {
  }
  temp = readl((void const volatile *)(& (xhci->cap_regs)->hc_capbase));
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_print_cap_regs";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___0.format = "CAPLENGTH AND HCIVERSION 0x%x:\n";
  descriptor___0.lineno = 200U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "CAPLENGTH AND HCIVERSION 0x%x:\n", temp);
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_print_cap_regs";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___1.format = "CAPLENGTH: 0x%x\n";
  descriptor___1.lineno = 202U;
  descriptor___1.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                      "CAPLENGTH: 0x%x\n", temp & 255U);
  } else {
  }
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_print_cap_regs";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___2.format = "HCIVERSION: 0x%x\n";
  descriptor___2.lineno = 204U;
  descriptor___2.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___5->self.controller,
                      "HCIVERSION: 0x%x\n", temp >> 16);
  } else {
  }
  temp = readl((void const volatile *)(& (xhci->cap_regs)->hcs_params1));
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_print_cap_regs";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___3.format = "HCSPARAMS 1: 0x%x\n";
  descriptor___3.lineno = 208U;
  descriptor___3.flags = 0U;
  tmp___8 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___7->self.controller,
                      "HCSPARAMS 1: 0x%x\n", temp);
  } else {
  }
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_print_cap_regs";
  descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___4.format = "  Max device slots: %u\n";
  descriptor___4.lineno = 210U;
  descriptor___4.flags = 0U;
  tmp___10 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    tmp___9 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___9->self.controller,
                      "  Max device slots: %u\n", temp & 255U);
  } else {
  }
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "xhci_print_cap_regs";
  descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___5.format = "  Max interrupters: %u\n";
  descriptor___5.lineno = 212U;
  descriptor___5.flags = 0U;
  tmp___12 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    tmp___11 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___11->self.controller,
                      "  Max interrupters: %u\n", (temp >> 8) & 2047U);
  } else {
  }
  descriptor___6.modname = "xhci_hcd";
  descriptor___6.function = "xhci_print_cap_regs";
  descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___6.format = "  Max ports: %u\n";
  descriptor___6.lineno = 214U;
  descriptor___6.flags = 0U;
  tmp___14 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___14 != 0L) {
    tmp___13 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___6, (struct device const *)tmp___13->self.controller,
                      "  Max ports: %u\n", (temp >> 24) & 127U);
  } else {
  }
  temp = readl((void const volatile *)(& (xhci->cap_regs)->hcs_params2));
  descriptor___7.modname = "xhci_hcd";
  descriptor___7.function = "xhci_print_cap_regs";
  descriptor___7.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___7.format = "HCSPARAMS 2: 0x%x\n";
  descriptor___7.lineno = 218U;
  descriptor___7.flags = 0U;
  tmp___16 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
  if (tmp___16 != 0L) {
    tmp___15 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___7, (struct device const *)tmp___15->self.controller,
                      "HCSPARAMS 2: 0x%x\n", temp);
  } else {
  }
  descriptor___8.modname = "xhci_hcd";
  descriptor___8.function = "xhci_print_cap_regs";
  descriptor___8.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___8.format = "  Isoc scheduling threshold: %u\n";
  descriptor___8.lineno = 220U;
  descriptor___8.flags = 0U;
  tmp___18 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
  if (tmp___18 != 0L) {
    tmp___17 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___8, (struct device const *)tmp___17->self.controller,
                      "  Isoc scheduling threshold: %u\n", temp & 15U);
  } else {
  }
  descriptor___9.modname = "xhci_hcd";
  descriptor___9.function = "xhci_print_cap_regs";
  descriptor___9.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___9.format = "  Maximum allowed segments in event ring: %u\n";
  descriptor___9.lineno = 222U;
  descriptor___9.flags = 0U;
  tmp___20 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
  if (tmp___20 != 0L) {
    tmp___19 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___9, (struct device const *)tmp___19->self.controller,
                      "  Maximum allowed segments in event ring: %u\n", (temp >> 4) & 15U);
  } else {
  }
  temp = readl((void const volatile *)(& (xhci->cap_regs)->hcs_params3));
  descriptor___10.modname = "xhci_hcd";
  descriptor___10.function = "xhci_print_cap_regs";
  descriptor___10.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___10.format = "HCSPARAMS 3 0x%x:\n";
  descriptor___10.lineno = 226U;
  descriptor___10.flags = 0U;
  tmp___22 = ldv__builtin_expect((long )descriptor___10.flags & 1L, 0L);
  if (tmp___22 != 0L) {
    tmp___21 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___10, (struct device const *)tmp___21->self.controller,
                      "HCSPARAMS 3 0x%x:\n", temp);
  } else {
  }
  descriptor___11.modname = "xhci_hcd";
  descriptor___11.function = "xhci_print_cap_regs";
  descriptor___11.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___11.format = "  Worst case U1 device exit latency: %u\n";
  descriptor___11.lineno = 228U;
  descriptor___11.flags = 0U;
  tmp___24 = ldv__builtin_expect((long )descriptor___11.flags & 1L, 0L);
  if (tmp___24 != 0L) {
    tmp___23 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___11, (struct device const *)tmp___23->self.controller,
                      "  Worst case U1 device exit latency: %u\n", temp & 255U);
  } else {
  }
  descriptor___12.modname = "xhci_hcd";
  descriptor___12.function = "xhci_print_cap_regs";
  descriptor___12.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___12.format = "  Worst case U2 device exit latency: %u\n";
  descriptor___12.lineno = 230U;
  descriptor___12.flags = 0U;
  tmp___26 = ldv__builtin_expect((long )descriptor___12.flags & 1L, 0L);
  if (tmp___26 != 0L) {
    tmp___25 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___12, (struct device const *)tmp___25->self.controller,
                      "  Worst case U2 device exit latency: %u\n", temp >> 16);
  } else {
  }
  temp = readl((void const volatile *)(& (xhci->cap_regs)->hcc_params));
  descriptor___13.modname = "xhci_hcd";
  descriptor___13.function = "xhci_print_cap_regs";
  descriptor___13.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___13.format = "HCC PARAMS 0x%x:\n";
  descriptor___13.lineno = 233U;
  descriptor___13.flags = 0U;
  tmp___28 = ldv__builtin_expect((long )descriptor___13.flags & 1L, 0L);
  if (tmp___28 != 0L) {
    tmp___27 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___13, (struct device const *)tmp___27->self.controller,
                      "HCC PARAMS 0x%x:\n", temp);
  } else {
  }
  descriptor___14.modname = "xhci_hcd";
  descriptor___14.function = "xhci_print_cap_regs";
  descriptor___14.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___14.format = "  HC generates %s bit addresses\n";
  descriptor___14.lineno = 235U;
  descriptor___14.flags = 0U;
  tmp___30 = ldv__builtin_expect((long )descriptor___14.flags & 1L, 0L);
  if (tmp___30 != 0L) {
    tmp___29 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___14, (struct device const *)tmp___29->self.controller,
                      "  HC generates %s bit addresses\n", (int )temp & 1 ? (char *)"64" : (char *)"32");
  } else {
  }
  descriptor___15.modname = "xhci_hcd";
  descriptor___15.function = "xhci_print_cap_regs";
  descriptor___15.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___15.format = "  FIXME: more HCCPARAMS debugging\n";
  descriptor___15.lineno = 237U;
  descriptor___15.flags = 0U;
  tmp___32 = ldv__builtin_expect((long )descriptor___15.flags & 1L, 0L);
  if (tmp___32 != 0L) {
    tmp___31 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___15, (struct device const *)tmp___31->self.controller,
                      "  FIXME: more HCCPARAMS debugging\n");
  } else {
  }
  temp = readl((void const volatile *)(& (xhci->cap_regs)->run_regs_off));
  descriptor___16.modname = "xhci_hcd";
  descriptor___16.function = "xhci_print_cap_regs";
  descriptor___16.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___16.format = "RTSOFF 0x%x:\n";
  descriptor___16.lineno = 240U;
  descriptor___16.flags = 0U;
  tmp___34 = ldv__builtin_expect((long )descriptor___16.flags & 1L, 0L);
  if (tmp___34 != 0L) {
    tmp___33 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___16, (struct device const *)tmp___33->self.controller,
                      "RTSOFF 0x%x:\n", temp & 4294967264U);
  } else {
  }
  return;
}
}
static void xhci_print_command_reg(struct xhci_hcd *xhci )
{
  u32 temp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  {
  temp = readl((void const volatile *)(& (xhci->op_regs)->command));
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_print_command_reg";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor.format = "USBCMD 0x%x:\n";
  descriptor.lineno = 248U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "USBCMD 0x%x:\n", temp);
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_print_command_reg";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___0.format = "  HC is %s\n";
  descriptor___0.lineno = 250U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "  HC is %s\n", (int )temp & 1 ? (char *)"running" : (char *)"being stopped");
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_print_command_reg";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___1.format = "  HC has %sfinished hard reset\n";
  descriptor___1.lineno = 252U;
  descriptor___1.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                      "  HC has %sfinished hard reset\n", (temp & 2U) != 0U ? (char *)"not " : (char *)"");
  } else {
  }
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_print_command_reg";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___2.format = "  Event Interrupts %s\n";
  descriptor___2.lineno = 254U;
  descriptor___2.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___5->self.controller,
                      "  Event Interrupts %s\n", (temp & 4U) != 0U ? (char *)"enabled " : (char *)"disabled");
  } else {
  }
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_print_command_reg";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___3.format = "  Host System Error Interrupts %s\n";
  descriptor___3.lineno = 256U;
  descriptor___3.flags = 0U;
  tmp___8 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___7->self.controller,
                      "  Host System Error Interrupts %s\n", (temp & 8U) != 0U ? (char *)"enabled " : (char *)"disabled");
  } else {
  }
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_print_command_reg";
  descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___4.format = "  HC has %sfinished light reset\n";
  descriptor___4.lineno = 258U;
  descriptor___4.flags = 0U;
  tmp___10 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    tmp___9 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___9->self.controller,
                      "  HC has %sfinished light reset\n", (temp & 128U) != 0U ? (char *)"not " : (char *)"");
  } else {
  }
  return;
}
}
static void xhci_print_status(struct xhci_hcd *xhci )
{
  u32 temp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  {
  temp = readl((void const volatile *)(& (xhci->op_regs)->status));
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_print_status";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor.format = "USBSTS 0x%x:\n";
  descriptor.lineno = 266U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "USBSTS 0x%x:\n", temp);
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_print_status";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___0.format = "  Event ring is %sempty\n";
  descriptor___0.lineno = 268U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "  Event ring is %sempty\n", (temp & 8U) != 0U ? (char *)"not " : (char *)"");
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_print_status";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___1.format = "  %sHost System Error\n";
  descriptor___1.lineno = 270U;
  descriptor___1.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                      "  %sHost System Error\n", (temp & 4U) != 0U ? (char *)"WARNING: " : (char *)"No ");
  } else {
  }
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_print_status";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___2.format = "  HC is %s\n";
  descriptor___2.lineno = 272U;
  descriptor___2.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___5->self.controller,
                      "  HC is %s\n", (int )temp & 1 ? (char *)"halted" : (char *)"running");
  } else {
  }
  return;
}
}
static void xhci_print_op_regs(struct xhci_hcd *xhci )
{
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_print_op_regs";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor.format = "xHCI operational registers at %p:\n";
  descriptor.lineno = 277U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "xHCI operational registers at %p:\n", xhci->op_regs);
  } else {
  }
  xhci_print_command_reg(xhci);
  xhci_print_status(xhci);
  return;
}
}
static void xhci_print_ports(struct xhci_hcd *xhci )
{
  __le32 *addr ;
  int i ;
  int j ;
  int ports ;
  char *names[4U] ;
  struct _ddebug descriptor ;
  unsigned int tmp ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  {
  names[0] = (char *)"status";
  names[1] = (char *)"power";
  names[2] = (char *)"link";
  names[3] = (char *)"reserved";
  ports = (int )(xhci->hcs_params1 >> 24) & 127;
  addr = & (xhci->op_regs)->port_status_base;
  i = 0;
  goto ldv_28508;
  ldv_28507:
  j = 0;
  goto ldv_28505;
  ldv_28504:
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_print_ports";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor.format = "%p port %s reg = 0x%x\n";
  descriptor.lineno = 300U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp = readl((void const volatile *)addr);
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "%p port %s reg = 0x%x\n", addr, names[j], tmp);
  } else {
  }
  addr = addr + 1;
  j = j + 1;
  ldv_28505: ;
  if (j <= 3) {
    goto ldv_28504;
  } else {
  }
  i = i + 1;
  ldv_28508: ;
  if (i < ports) {
    goto ldv_28507;
  } else {
  }
  return;
}
}
void xhci_print_ir_set(struct xhci_hcd *xhci , int set_num )
{
  struct xhci_intr_reg *ir_set ;
  void *addr ;
  u32 temp ;
  u64 temp_64 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  {
  ir_set = (struct xhci_intr_reg *)(& (xhci->run_regs)->ir_set) + (unsigned long )set_num;
  addr = (void *)(& ir_set->irq_pending);
  temp = readl((void const volatile *)addr);
  if (temp == 0U) {
    return;
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_print_ir_set";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor.format = "  %p: ir_set[%i]\n";
  descriptor.lineno = 318U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "  %p: ir_set[%i]\n", ir_set, set_num);
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_print_ir_set";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___0.format = "  %p: ir_set.pending = 0x%x\n";
  descriptor___0.lineno = 321U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "  %p: ir_set.pending = 0x%x\n", addr, temp);
  } else {
  }
  addr = (void *)(& ir_set->irq_control);
  temp = readl((void const volatile *)addr);
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_print_ir_set";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___1.format = "  %p: ir_set.control = 0x%x\n";
  descriptor___1.lineno = 326U;
  descriptor___1.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                      "  %p: ir_set.control = 0x%x\n", addr, temp);
  } else {
  }
  addr = (void *)(& ir_set->erst_size);
  temp = readl((void const volatile *)addr);
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_print_ir_set";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___2.format = "  %p: ir_set.erst_size = 0x%x\n";
  descriptor___2.lineno = 331U;
  descriptor___2.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___5->self.controller,
                      "  %p: ir_set.erst_size = 0x%x\n", addr, temp);
  } else {
  }
  addr = (void *)(& ir_set->rsvd);
  temp = readl((void const volatile *)addr);
  if (temp != 0U) {
    descriptor___3.modname = "xhci_hcd";
    descriptor___3.function = "xhci_print_ir_set";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
    descriptor___3.format = "  WARN: %p: ir_set.rsvd = 0x%x\n";
    descriptor___3.lineno = 337U;
    descriptor___3.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      tmp___7 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___7->self.controller,
                        "  WARN: %p: ir_set.rsvd = 0x%x\n", addr, temp);
    } else {
    }
  } else {
  }
  addr = (void *)(& ir_set->erst_base);
  temp_64 = xhci_read_64((struct xhci_hcd const *)xhci, (__le64 *)addr);
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_print_ir_set";
  descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___4.format = "  %p: ir_set.erst_base = @%08llx\n";
  descriptor___4.lineno = 342U;
  descriptor___4.flags = 0U;
  tmp___10 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    tmp___9 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___9->self.controller,
                      "  %p: ir_set.erst_base = @%08llx\n", addr, temp_64);
  } else {
  }
  addr = (void *)(& ir_set->erst_dequeue);
  temp_64 = xhci_read_64((struct xhci_hcd const *)xhci, (__le64 *)addr);
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "xhci_print_ir_set";
  descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___5.format = "  %p: ir_set.erst_dequeue = @%08llx\n";
  descriptor___5.lineno = 347U;
  descriptor___5.flags = 0U;
  tmp___12 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    tmp___11 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___11->self.controller,
                      "  %p: ir_set.erst_dequeue = @%08llx\n", addr, temp_64);
  } else {
  }
  return;
}
}
void xhci_print_run_regs(struct xhci_hcd *xhci )
{
  u32 temp ;
  int i ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  {
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_print_run_regs";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor.format = "xHCI runtime registers at %p:\n";
  descriptor.lineno = 355U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "xHCI runtime registers at %p:\n", xhci->run_regs);
  } else {
  }
  temp = readl((void const volatile *)(& (xhci->run_regs)->microframe_index));
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_print_run_regs";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___0.format = "  %p: Microframe index = 0x%x\n";
  descriptor___0.lineno = 359U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "  %p: Microframe index = 0x%x\n", & (xhci->run_regs)->microframe_index,
                      temp);
  } else {
  }
  i = 0;
  goto ldv_28536;
  ldv_28535:
  temp = readl((void const volatile *)(& (xhci->run_regs)->rsvd) + (unsigned long )i);
  if (temp != 0U) {
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_print_run_regs";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
    descriptor___1.format = "  WARN: %p: Rsvd[%i] = 0x%x\n";
    descriptor___1.lineno = 365U;
    descriptor___1.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      tmp___3 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                        "  WARN: %p: Rsvd[%i] = 0x%x\n", (__le32 *)(& (xhci->run_regs)->rsvd) + (unsigned long )i,
                        i, temp);
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_28536: ;
  if (i <= 6) {
    goto ldv_28535;
  } else {
  }
  return;
}
}
void xhci_print_registers(struct xhci_hcd *xhci )
{
  {
  xhci_print_cap_regs(xhci);
  xhci_print_op_regs(xhci);
  xhci_print_ports(xhci);
  return;
}
}
void xhci_print_trb_offsets(struct xhci_hcd *xhci , union xhci_trb *trb )
{
  int i ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  i = 0;
  goto ldv_28549;
  ldv_28548:
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_print_trb_offsets";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor.format = "Offset 0x%x = 0x%x\n";
  descriptor.lineno = 381U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "Offset 0x%x = 0x%x\n", i * 4, trb->generic.field[i]);
  } else {
  }
  i = i + 1;
  ldv_28549: ;
  if (i <= 3) {
    goto ldv_28548;
  } else {
  }
  return;
}
}
void xhci_debug_trb(struct xhci_hcd *xhci , union xhci_trb *trb )
{
  u64 address ;
  u32 type ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___6 ;
  struct usb_hcd *tmp___13 ;
  long tmp___14 ;
  struct _ddebug descriptor___7 ;
  struct usb_hcd *tmp___15 ;
  long tmp___16 ;
  struct _ddebug descriptor___8 ;
  struct usb_hcd *tmp___17 ;
  long tmp___18 ;
  struct _ddebug descriptor___9 ;
  struct usb_hcd *tmp___19 ;
  long tmp___20 ;
  {
  type = trb->link.control & 64512U;
  switch (type) {
  case 6144U:
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_debug_trb";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor.format = "Link TRB:\n";
  descriptor.lineno = 394U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "Link TRB:\n");
  } else {
  }
  xhci_print_trb_offsets(xhci, trb);
  address = trb->link.segment_ptr;
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_debug_trb";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___0.format = "Next ring segment DMA address = 0x%llx\n";
  descriptor___0.lineno = 398U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "Next ring segment DMA address = 0x%llx\n", address);
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_debug_trb";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___1.format = "Interrupter target = 0x%x\n";
  descriptor___1.lineno = 401U;
  descriptor___1.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                      "Interrupter target = 0x%x\n", trb->link.intr_target >> 22);
  } else {
  }
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_debug_trb";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___2.format = "Cycle bit = %u\n";
  descriptor___2.lineno = 403U;
  descriptor___2.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___5->self.controller,
                      "Cycle bit = %u\n", trb->link.control & 1U);
  } else {
  }
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_debug_trb";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___3.format = "Toggle cycle bit = %u\n";
  descriptor___3.lineno = 405U;
  descriptor___3.flags = 0U;
  tmp___8 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___7->self.controller,
                      "Toggle cycle bit = %u\n", trb->link.control & 2U);
  } else {
  }
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_debug_trb";
  descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___4.format = "No Snoop bit = %u\n";
  descriptor___4.lineno = 407U;
  descriptor___4.flags = 0U;
  tmp___10 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    tmp___9 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___9->self.controller,
                      "No Snoop bit = %u\n", trb->link.control & 8U);
  } else {
  }
  goto ldv_28565;
  case 32768U:
  address = trb->trans_event.buffer;
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "xhci_debug_trb";
  descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___5.format = "DMA address or buffer contents= %llu\n";
  descriptor___5.lineno = 415U;
  descriptor___5.flags = 0U;
  tmp___12 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    tmp___11 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___11->self.controller,
                      "DMA address or buffer contents= %llu\n", address);
  } else {
  }
  goto ldv_28565;
  case 33792U:
  address = trb->event_cmd.cmd_trb;
  descriptor___6.modname = "xhci_hcd";
  descriptor___6.function = "xhci_debug_trb";
  descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___6.format = "Command TRB pointer = %llu\n";
  descriptor___6.lineno = 419U;
  descriptor___6.flags = 0U;
  tmp___14 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___14 != 0L) {
    tmp___13 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___6, (struct device const *)tmp___13->self.controller,
                      "Command TRB pointer = %llu\n", address);
  } else {
  }
  descriptor___7.modname = "xhci_hcd";
  descriptor___7.function = "xhci_debug_trb";
  descriptor___7.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___7.format = "Completion status = %u\n";
  descriptor___7.lineno = 421U;
  descriptor___7.flags = 0U;
  tmp___16 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
  if (tmp___16 != 0L) {
    tmp___15 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___7, (struct device const *)tmp___15->self.controller,
                      "Completion status = %u\n", trb->event_cmd.status >> 24);
  } else {
  }
  descriptor___8.modname = "xhci_hcd";
  descriptor___8.function = "xhci_debug_trb";
  descriptor___8.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___8.format = "Flags = 0x%x\n";
  descriptor___8.lineno = 423U;
  descriptor___8.flags = 0U;
  tmp___18 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
  if (tmp___18 != 0L) {
    tmp___17 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___8, (struct device const *)tmp___17->self.controller,
                      "Flags = 0x%x\n", trb->event_cmd.flags);
  } else {
  }
  goto ldv_28565;
  default:
  descriptor___9.modname = "xhci_hcd";
  descriptor___9.function = "xhci_debug_trb";
  descriptor___9.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___9.format = "Unknown TRB with TRB type ID %u\n";
  descriptor___9.lineno = 427U;
  descriptor___9.flags = 0U;
  tmp___20 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
  if (tmp___20 != 0L) {
    tmp___19 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___9, (struct device const *)tmp___19->self.controller,
                      "Unknown TRB with TRB type ID %u\n", type >> 10);
  } else {
  }
  xhci_print_trb_offsets(xhci, trb);
  goto ldv_28565;
  }
  ldv_28565: ;
  return;
}
}
void xhci_debug_segment(struct xhci_hcd *xhci , struct xhci_segment *seg )
{
  int i ;
  u64 addr ;
  union xhci_trb *trb ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  addr = seg->dma;
  trb = seg->trbs;
  i = 0;
  goto ldv_28584;
  ldv_28583:
  trb = seg->trbs + (unsigned long )i;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_debug_segment";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor.format = "@%016llx %08x %08x %08x %08x\n";
  descriptor.lineno = 458U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "@%016llx %08x %08x %08x %08x\n", addr, (unsigned int )trb->link.segment_ptr,
                      (unsigned int )(trb->link.segment_ptr >> 32ULL), trb->link.intr_target,
                      trb->link.control);
  } else {
  }
  addr = addr + 16ULL;
  i = i + 1;
  ldv_28584: ;
  if (i <= 63) {
    goto ldv_28583;
  } else {
  }
  return;
}
}
void xhci_dbg_ring_ptrs(struct xhci_hcd *xhci , struct xhci_ring *ring )
{
  struct _ddebug descriptor ;
  dma_addr_t tmp ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  dma_addr_t tmp___4 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  {
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_dbg_ring_ptrs";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor.format = "Ring deq = %p (virt), 0x%llx (dma)\n";
  descriptor.lineno = 468U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp = xhci_trb_virt_to_dma(ring->deq_seg, ring->dequeue);
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Ring deq = %p (virt), 0x%llx (dma)\n", ring->dequeue, tmp);
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_dbg_ring_ptrs";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___0.format = "Ring deq updated %u times\n";
  descriptor___0.lineno = 470U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                      "Ring deq updated %u times\n", ring->deq_updates);
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_dbg_ring_ptrs";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___1.format = "Ring enq = %p (virt), 0x%llx (dma)\n";
  descriptor___1.lineno = 474U;
  descriptor___1.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___4 = xhci_trb_virt_to_dma(ring->enq_seg, ring->enqueue);
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___5->self.controller,
                      "Ring enq = %p (virt), 0x%llx (dma)\n", ring->enqueue, tmp___4);
  } else {
  }
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_dbg_ring_ptrs";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___2.format = "Ring enq updated %u times\n";
  descriptor___2.lineno = 476U;
  descriptor___2.flags = 0U;
  tmp___8 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___7->self.controller,
                      "Ring enq updated %u times\n", ring->enq_updates);
  } else {
  }
  return;
}
}
void xhci_debug_ring(struct xhci_hcd *xhci , struct xhci_ring *ring )
{
  struct xhci_segment *seg ;
  struct xhci_segment *first_seg ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  first_seg = ring->first_seg;
  xhci_debug_segment(xhci, first_seg);
  if (ring->enq_updates == 0U && ring->deq_updates == 0U) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_debug_ring";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
    descriptor.format = "  Ring has not been updated\n";
    descriptor.lineno = 496U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "  Ring has not been updated\n");
    } else {
    }
    return;
  } else {
  }
  seg = first_seg->next;
  goto ldv_28604;
  ldv_28603:
  xhci_debug_segment(xhci, seg);
  seg = seg->next;
  ldv_28604: ;
  if ((unsigned long )seg != (unsigned long )first_seg) {
    goto ldv_28603;
  } else {
  }
  return;
}
}
void xhci_dbg_ep_rings(struct xhci_hcd *xhci , unsigned int slot_id , unsigned int ep_index ,
                       struct xhci_virt_ep *ep )
{
  int i ;
  struct xhci_ring *ring ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  if ((ep->ep_state & 16U) != 0U) {
    i = 1;
    goto ldv_28617;
    ldv_28616:
    ring = *((ep->stream_info)->stream_rings + (unsigned long )i);
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_dbg_ep_rings";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
    descriptor.format = "Dev %d endpoint %d stream ID %d:\n";
    descriptor.lineno = 514U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Dev %d endpoint %d stream ID %d:\n", slot_id, ep_index, i);
    } else {
    }
    xhci_debug_segment(xhci, ring->deq_seg);
    i = i + 1;
    ldv_28617: ;
    if ((unsigned int )i < (ep->stream_info)->num_streams) {
      goto ldv_28616;
    } else {
    }
  } else {
    ring = ep->ring;
    if ((unsigned long )ring == (unsigned long )((struct xhci_ring *)0)) {
      return;
    } else {
    }
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_dbg_ep_rings";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
    descriptor___0.format = "Dev %d endpoint ring %d:\n";
    descriptor___0.lineno = 522U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "Dev %d endpoint ring %d:\n", slot_id, ep_index);
    } else {
    }
    xhci_debug_segment(xhci, ring->deq_seg);
  }
  return;
}
}
void xhci_dbg_erst(struct xhci_hcd *xhci , struct xhci_erst *erst )
{
  u64 addr ;
  int i ;
  struct xhci_erst_entry *entry ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  addr = erst->erst_dma_addr;
  i = 0;
  goto ldv_28630;
  ldv_28629:
  entry = erst->entries + (unsigned long )i;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_dbg_erst";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor.format = "@%016llx %08x %08x %08x %08x\n";
  descriptor.lineno = 540U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "@%016llx %08x %08x %08x %08x\n", addr, (unsigned int )entry->seg_addr,
                      (unsigned int )(entry->seg_addr >> 32ULL), entry->seg_size,
                      entry->rsvd);
  } else {
  }
  addr = addr + 16ULL;
  i = i + 1;
  ldv_28630: ;
  if ((unsigned int )i < erst->num_entries) {
    goto ldv_28629;
  } else {
  }
  return;
}
}
void xhci_dbg_cmd_ptrs(struct xhci_hcd *xhci )
{
  u64 val ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  val = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->op_regs)->cmd_ring);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_dbg_cmd_ptrs";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor.format = "// xHC command ring deq ptr low bits + flags = @%08x\n";
  descriptor.lineno = 551U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "// xHC command ring deq ptr low bits + flags = @%08x\n", (unsigned int )val);
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_dbg_cmd_ptrs";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___0.format = "// xHC command ring deq ptr high bits = @%08x\n";
  descriptor___0.lineno = 553U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "// xHC command ring deq ptr high bits = @%08x\n", (unsigned int )(val >> 32ULL));
  } else {
  }
  return;
}
}
static void dbg_rsvd64(struct xhci_hcd *xhci , u64 *ctx , dma_addr_t dma )
{
  int i ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  i = 0;
  goto ldv_28648;
  ldv_28647:
  descriptor.modname = "xhci_hcd";
  descriptor.function = "dbg_rsvd64";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor.format = "@%p (virt) @%08llx (dma) %#08llx - rsvd64[%d]\n";
  descriptor.lineno = 564U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "@%p (virt) @%08llx (dma) %#08llx - rsvd64[%d]\n", ctx + (unsigned long )(i + 4),
                      dma, *(ctx + (unsigned long )(i + 4)), i);
  } else {
  }
  dma = dma + 8ULL;
  i = i + 1;
  ldv_28648: ;
  if (i <= 3) {
    goto ldv_28647;
  } else {
  }
  return;
}
}
char *xhci_get_slot_state(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx )
{
  struct xhci_slot_ctx *slot_ctx ;
  struct xhci_slot_ctx *tmp ;
  {
  tmp = xhci_get_slot_ctx(xhci, ctx);
  slot_ctx = tmp;
  switch (slot_ctx->dev_state >> 27) {
  case 0U: ;
  return ((char *)"enabled/disabled");
  case 1U: ;
  return ((char *)"default");
  case 2U: ;
  return ((char *)"addressed");
  case 3U: ;
  return ((char *)"configured");
  default: ;
  return ((char *)"reserved");
  }
}
}
static void xhci_dbg_slot_ctx(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx )
{
  int field_size ;
  int i ;
  struct xhci_slot_ctx *slot_ctx ;
  struct xhci_slot_ctx *tmp ;
  dma_addr_t dma ;
  int csz ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___10 ;
  long tmp___11 ;
  {
  field_size = 4;
  tmp = xhci_get_slot_ctx(xhci, ctx);
  slot_ctx = tmp;
  dma = ctx->dma + (unsigned long long )((unsigned long )slot_ctx - (unsigned long )ctx->bytes);
  csz = (int )xhci->hcc_params & 4;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_dbg_slot_ctx";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor.format = "Slot Context:\n";
  descriptor.lineno = 599U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Slot Context:\n");
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_dbg_slot_ctx";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___0.format = "@%p (virt) @%08llx (dma) %#08x - dev_info\n";
  descriptor___0.lineno = 602U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                      "@%p (virt) @%08llx (dma) %#08x - dev_info\n", & slot_ctx->dev_info,
                      dma, slot_ctx->dev_info);
  } else {
  }
  dma = (dma_addr_t )field_size + dma;
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_dbg_slot_ctx";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___1.format = "@%p (virt) @%08llx (dma) %#08x - dev_info2\n";
  descriptor___1.lineno = 606U;
  descriptor___1.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___4->self.controller,
                      "@%p (virt) @%08llx (dma) %#08x - dev_info2\n", & slot_ctx->dev_info2,
                      dma, slot_ctx->dev_info2);
  } else {
  }
  dma = (dma_addr_t )field_size + dma;
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_dbg_slot_ctx";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___2.format = "@%p (virt) @%08llx (dma) %#08x - tt_info\n";
  descriptor___2.lineno = 610U;
  descriptor___2.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___6->self.controller,
                      "@%p (virt) @%08llx (dma) %#08x - tt_info\n", & slot_ctx->tt_info,
                      dma, slot_ctx->tt_info);
  } else {
  }
  dma = (dma_addr_t )field_size + dma;
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_dbg_slot_ctx";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___3.format = "@%p (virt) @%08llx (dma) %#08x - dev_state\n";
  descriptor___3.lineno = 614U;
  descriptor___3.flags = 0U;
  tmp___9 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___9 != 0L) {
    tmp___8 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___8->self.controller,
                      "@%p (virt) @%08llx (dma) %#08x - dev_state\n", & slot_ctx->dev_state,
                      dma, slot_ctx->dev_state);
  } else {
  }
  dma = (dma_addr_t )field_size + dma;
  i = 0;
  goto ldv_28677;
  ldv_28676:
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_dbg_slot_ctx";
  descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___4.format = "@%p (virt) @%08llx (dma) %#08x - rsvd[%d]\n";
  descriptor___4.lineno = 619U;
  descriptor___4.flags = 0U;
  tmp___11 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___11 != 0L) {
    tmp___10 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___10->self.controller,
                      "@%p (virt) @%08llx (dma) %#08x - rsvd[%d]\n", (__le32 *)(& slot_ctx->reserved) + (unsigned long )i,
                      dma, slot_ctx->reserved[i], i);
  } else {
  }
  dma = (dma_addr_t )field_size + dma;
  i = i + 1;
  ldv_28677: ;
  if (i <= 3) {
    goto ldv_28676;
  } else {
  }
  if (csz != 0) {
    dbg_rsvd64(xhci, (u64 *)slot_ctx, dma);
  } else {
  }
  return;
}
}
static void xhci_dbg_ep_ctx(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx ,
                            unsigned int last_ep )
{
  int i ;
  int j ;
  int last_ep_ctx ;
  int field_size ;
  int csz ;
  unsigned int epaddr ;
  unsigned int tmp ;
  struct xhci_ep_ctx *ep_ctx ;
  struct xhci_ep_ctx *tmp___0 ;
  dma_addr_t dma ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  {
  last_ep_ctx = 31;
  field_size = 4;
  csz = (int )xhci->hcc_params & 4;
  if (last_ep <= 30U) {
    last_ep_ctx = (int )(last_ep + 1U);
  } else {
  }
  i = 0;
  goto ldv_28703;
  ldv_28702:
  tmp = xhci_get_endpoint_address((unsigned int )i);
  epaddr = tmp;
  tmp___0 = xhci_get_ep_ctx(xhci, ctx, (unsigned int )i);
  ep_ctx = tmp___0;
  dma = ctx->dma + (unsigned long long )((unsigned long )ep_ctx - (unsigned long )ctx->bytes);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_dbg_ep_ctx";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor.format = "%s Endpoint %02d Context (ep_index %02d):\n";
  descriptor.lineno = 647U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                      "%s Endpoint %02d Context (ep_index %02d):\n", (epaddr & 128U) == 0U ? (char *)"OUT" : (char *)"IN",
                      epaddr & 15U, i);
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_dbg_ep_ctx";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___0.format = "@%p (virt) @%08llx (dma) %#08x - ep_info\n";
  descriptor___0.lineno = 650U;
  descriptor___0.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___3->self.controller,
                      "@%p (virt) @%08llx (dma) %#08x - ep_info\n", & ep_ctx->ep_info,
                      dma, ep_ctx->ep_info);
  } else {
  }
  dma = (dma_addr_t )field_size + dma;
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_dbg_ep_ctx";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___1.format = "@%p (virt) @%08llx (dma) %#08x - ep_info2\n";
  descriptor___1.lineno = 654U;
  descriptor___1.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___5->self.controller,
                      "@%p (virt) @%08llx (dma) %#08x - ep_info2\n", & ep_ctx->ep_info2,
                      dma, ep_ctx->ep_info2);
  } else {
  }
  dma = (dma_addr_t )field_size + dma;
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_dbg_ep_ctx";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___2.format = "@%p (virt) @%08llx (dma) %#08llx - deq\n";
  descriptor___2.lineno = 658U;
  descriptor___2.flags = 0U;
  tmp___8 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___7->self.controller,
                      "@%p (virt) @%08llx (dma) %#08llx - deq\n", & ep_ctx->deq, dma,
                      ep_ctx->deq);
  } else {
  }
  dma = (dma_addr_t )(field_size * 2) + dma;
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_dbg_ep_ctx";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___3.format = "@%p (virt) @%08llx (dma) %#08x - tx_info\n";
  descriptor___3.lineno = 662U;
  descriptor___3.flags = 0U;
  tmp___10 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    tmp___9 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___9->self.controller,
                      "@%p (virt) @%08llx (dma) %#08x - tx_info\n", & ep_ctx->tx_info,
                      dma, ep_ctx->tx_info);
  } else {
  }
  dma = (dma_addr_t )field_size + dma;
  j = 0;
  goto ldv_28700;
  ldv_28699:
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_dbg_ep_ctx";
  descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor___4.format = "@%p (virt) @%08llx (dma) %#08x - rsvd[%d]\n";
  descriptor___4.lineno = 668U;
  descriptor___4.flags = 0U;
  tmp___12 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    tmp___11 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___11->self.controller,
                      "@%p (virt) @%08llx (dma) %#08x - rsvd[%d]\n", (__le32 *)(& ep_ctx->reserved) + (unsigned long )j,
                      dma, ep_ctx->reserved[j], j);
  } else {
  }
  dma = (dma_addr_t )field_size + dma;
  j = j + 1;
  ldv_28700: ;
  if (j <= 2) {
    goto ldv_28699;
  } else {
  }
  if (csz != 0) {
    dbg_rsvd64(xhci, (u64 *)ep_ctx, dma);
  } else {
  }
  i = i + 1;
  ldv_28703: ;
  if (i < last_ep_ctx) {
    goto ldv_28702;
  } else {
  }
  return;
}
}
void xhci_dbg_ctx(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx , unsigned int last_ep )
{
  int i ;
  int field_size ;
  dma_addr_t dma ;
  int csz ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  struct xhci_input_control_ctx *tmp ;
  struct usb_hcd *tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  {
  field_size = 4;
  dma = ctx->dma;
  csz = (int )xhci->hcc_params & 4;
  if (ctx->type == 2U) {
    tmp = xhci_get_input_control_ctx(xhci, ctx);
    ctrl_ctx = tmp;
    if ((unsigned long )ctrl_ctx == (unsigned long )((struct xhci_input_control_ctx *)0)) {
      tmp___0 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___0->self.controller, "Could not get input context, bad type.\n");
      return;
    } else {
    }
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_dbg_ctx";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
    descriptor.format = "@%p (virt) @%08llx (dma) %#08x - drop flags\n";
    descriptor.lineno = 697U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                        "@%p (virt) @%08llx (dma) %#08x - drop flags\n", & ctrl_ctx->drop_flags,
                        dma, ctrl_ctx->drop_flags);
    } else {
    }
    dma = (dma_addr_t )field_size + dma;
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_dbg_ctx";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
    descriptor___0.format = "@%p (virt) @%08llx (dma) %#08x - add flags\n";
    descriptor___0.lineno = 701U;
    descriptor___0.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      tmp___3 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___3->self.controller,
                        "@%p (virt) @%08llx (dma) %#08x - add flags\n", & ctrl_ctx->add_flags,
                        dma, ctrl_ctx->add_flags);
    } else {
    }
    dma = (dma_addr_t )field_size + dma;
    i = 0;
    goto ldv_28720;
    ldv_28719:
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_dbg_ctx";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
    descriptor___1.format = "@%p (virt) @%08llx (dma) %#08x - rsvd2[%d]\n";
    descriptor___1.lineno = 706U;
    descriptor___1.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      tmp___5 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___5->self.controller,
                        "@%p (virt) @%08llx (dma) %#08x - rsvd2[%d]\n", (__le32 *)(& ctrl_ctx->rsvd2) + (unsigned long )i,
                        dma, ctrl_ctx->rsvd2[i], i);
    } else {
    }
    dma = (dma_addr_t )field_size + dma;
    i = i + 1;
    ldv_28720: ;
    if (i <= 5) {
      goto ldv_28719;
    } else {
    }
    if (csz != 0) {
      dbg_rsvd64(xhci, (u64 *)ctrl_ctx, dma);
    } else {
    }
  } else {
  }
  xhci_dbg_slot_ctx(xhci, ctx);
  xhci_dbg_ep_ctx(xhci, ctx, last_ep);
  return;
}
}
void xhci_dbg_trace(struct xhci_hcd *xhci , void (*trace)(struct va_format * ) , char const *fmt
                    , ...)
{
  struct va_format vaf ;
  va_list args ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  ldv__builtin_va_start((__va_list_tag *)(& args));
  vaf.fmt = fmt;
  vaf.va = & args;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_dbg_trace";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-dbg.o.c.prepared";
  descriptor.format = "%pV\n";
  descriptor.lineno = 727U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "%pV\n", & vaf);
  } else {
  }
  (*trace)(& vaf);
  ldv__builtin_va_end((__va_list_tag *)(& args));
  return;
}
}
static char const __tpstrtab_xhci_dbg_address[17U] =
  { 'x', 'h', 'c', 'i',
        '_', 'd', 'b', 'g',
        '_', 'a', 'd', 'd',
        'r', 'e', 's', 's',
        '\000'};
struct tracepoint __tracepoint_xhci_dbg_address = {(char const *)(& __tpstrtab_xhci_dbg_address), {{0}}, (void (*)(void))0, (void (*)(void))0,
    (struct tracepoint_func *)0};
static char const __tpstrtab_xhci_dbg_context_change[24U] =
  { 'x', 'h', 'c', 'i',
        '_', 'd', 'b', 'g',
        '_', 'c', 'o', 'n',
        't', 'e', 'x', 't',
        '_', 'c', 'h', 'a',
        'n', 'g', 'e', '\000'};
struct tracepoint __tracepoint_xhci_dbg_context_change = {(char const *)(& __tpstrtab_xhci_dbg_context_change), {{0}}, (void (*)(void))0,
    (void (*)(void))0, (struct tracepoint_func *)0};
static char const __tpstrtab_xhci_dbg_quirks[16U] =
  { 'x', 'h', 'c', 'i',
        '_', 'd', 'b', 'g',
        '_', 'q', 'u', 'i',
        'r', 'k', 's', '\000'};
struct tracepoint __tracepoint_xhci_dbg_quirks = {(char const *)(& __tpstrtab_xhci_dbg_quirks), {{0}}, (void (*)(void))0, (void (*)(void))0,
    (struct tracepoint_func *)0};
static char const __tpstrtab_xhci_dbg_reset_ep[18U] =
  { 'x', 'h', 'c', 'i',
        '_', 'd', 'b', 'g',
        '_', 'r', 'e', 's',
        'e', 't', '_', 'e',
        'p', '\000'};
struct tracepoint __tracepoint_xhci_dbg_reset_ep = {(char const *)(& __tpstrtab_xhci_dbg_reset_ep), {{0}}, (void (*)(void))0, (void (*)(void))0,
    (struct tracepoint_func *)0};
static char const __tpstrtab_xhci_dbg_cancel_urb[20U] =
  { 'x', 'h', 'c', 'i',
        '_', 'd', 'b', 'g',
        '_', 'c', 'a', 'n',
        'c', 'e', 'l', '_',
        'u', 'r', 'b', '\000'};
struct tracepoint __tracepoint_xhci_dbg_cancel_urb = {(char const *)(& __tpstrtab_xhci_dbg_cancel_urb), {{0}}, (void (*)(void))0,
    (void (*)(void))0, (struct tracepoint_func *)0};
static char const __tpstrtab_xhci_dbg_init[14U] =
  { 'x', 'h', 'c', 'i',
        '_', 'd', 'b', 'g',
        '_', 'i', 'n', 'i',
        't', '\000'};
struct tracepoint __tracepoint_xhci_dbg_init = {(char const *)(& __tpstrtab_xhci_dbg_init), {{0}}, (void (*)(void))0, (void (*)(void))0,
    (struct tracepoint_func *)0};
static char const __tpstrtab_xhci_dbg_ring_expansion[24U] =
  { 'x', 'h', 'c', 'i',
        '_', 'd', 'b', 'g',
        '_', 'r', 'i', 'n',
        'g', '_', 'e', 'x',
        'p', 'a', 'n', 's',
        'i', 'o', 'n', '\000'};
struct tracepoint __tracepoint_xhci_dbg_ring_expansion = {(char const *)(& __tpstrtab_xhci_dbg_ring_expansion), {{0}}, (void (*)(void))0,
    (void (*)(void))0, (struct tracepoint_func *)0};
static char const __tpstrtab_xhci_address_ctx[17U] =
  { 'x', 'h', 'c', 'i',
        '_', 'a', 'd', 'd',
        'r', 'e', 's', 's',
        '_', 'c', 't', 'x',
        '\000'};
struct tracepoint __tracepoint_xhci_address_ctx = {(char const *)(& __tpstrtab_xhci_address_ctx), {{0}}, (void (*)(void))0, (void (*)(void))0,
    (struct tracepoint_func *)0};
static char const __tpstrtab_xhci_cmd_completion[20U] =
  { 'x', 'h', 'c', 'i',
        '_', 'c', 'm', 'd',
        '_', 'c', 'o', 'm',
        'p', 'l', 'e', 't',
        'i', 'o', 'n', '\000'};
struct tracepoint __tracepoint_xhci_cmd_completion = {(char const *)(& __tpstrtab_xhci_cmd_completion), {{0}}, (void (*)(void))0,
    (void (*)(void))0, (struct tracepoint_func *)0};
extern int trace_seq_printf(struct trace_seq * , char const * , ...) ;
extern int ftrace_raw_output_prep(struct trace_iterator * , struct trace_event * ) ;
extern int ftrace_event_reg(struct ftrace_event_call * , enum trace_reg , void * ) ;
extern int trace_event_raw_init(struct ftrace_event_call * ) ;
extern int trace_define_field(struct ftrace_event_call * , char const * , char const * ,
                              int , int , int , int ) ;
static enum print_line_t ftrace_raw_output_xhci_log_msg(struct trace_iterator *iter ,
                                                        int flags , struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_xhci_log_msg *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_xhci_log_msg *)iter->ent;
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
static enum print_line_t ftrace_raw_output_xhci_log_ctx(struct trace_iterator *iter ,
                                                        int flags , struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_xhci_log_ctx *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_xhci_log_ctx *)iter->ent;
  ret = ftrace_raw_output_prep(iter, trace_event);
  if (ret != 0) {
    return ((enum print_line_t )ret);
  } else {
  }
  ret = trace_seq_printf(s, "\nctx_64=%d, ctx_type=%u, ctx_dma=@%llx, ctx_va=@%p\n",
                         field->ctx_64, field->ctx_type, field->ctx_dma, field->ctx_va);
  if (ret == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static enum print_line_t ftrace_raw_output_xhci_log_event(struct trace_iterator *iter ,
                                                          int flags , struct trace_event *trace_event )
{
  struct trace_seq *s ;
  struct trace_seq *p ;
  struct ftrace_raw_xhci_log_event *field ;
  int ret ;
  {
  s = & iter->seq;
  p = & iter->tmp_seq;
  field = (struct ftrace_raw_xhci_log_event *)iter->ent;
  ret = ftrace_raw_output_prep(iter, trace_event);
  if (ret != 0) {
    return ((enum print_line_t )ret);
  } else {
  }
  ret = trace_seq_printf(s, "\ntrb_dma=@%llx, trb_va=@%p, status=%08x, flags=%08x\n",
                         field->dma, field->va, field->status, field->flags);
  if (ret == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static int ftrace_define_fields_xhci_log_msg(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "__data_loc char[]", "msg", 8, 4, 1, 0);
  return (ret);
}
}
static int ftrace_define_fields_xhci_log_ctx(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "int", "ctx_64", 8, 4, 1, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "unsigned", "ctx_type", 12, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "dma_addr_t", "ctx_dma", 16, 8, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u8 *", "ctx_va", 24, 8, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "unsigned", "ctx_ep_num", 32, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "int", "slot_id", 36, 4, 1, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "__data_loc u32[]", "ctx_data", 40, 4, 0, 0);
  return (ret);
}
}
static int ftrace_define_fields_xhci_log_event(struct ftrace_event_call *event_call )
{
  int ret ;
  {
  ret = trace_define_field(event_call, "void *", "va", 8, 8, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u64", "dma", 16, 8, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "status", 24, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "u32", "flags", 28, 4, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = trace_define_field(event_call, "__data_loc u8[]", "trb", 32, 4, 0, 0);
  return (ret);
}
}
void ldv_initialize_ftrace_event_class_12(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_xhci_log_event_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_initialize_ftrace_event_class_14(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_xhci_log_msg_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_initialize_ftrace_event_class_13(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(144UL);
  event_class_xhci_log_ctx_group0 = (struct ftrace_event_call *)tmp;
  return;
}
}
void ldv_main_exported_16(void)
{
  struct trace_event *ldvarg25 ;
  void *tmp ;
  int ldvarg26 ;
  int tmp___0 ;
  struct trace_iterator *ldvarg24 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(48UL);
  ldvarg25 = (struct trace_event *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg26 = tmp___0;
  tmp___1 = ldv_zalloc(8512UL);
  ldvarg24 = (struct trace_iterator *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_16 == 1) {
    ftrace_raw_output_xhci_log_ctx(ldvarg24, ldvarg26, ldvarg25);
    ldv_state_variable_16 = 1;
  } else {
  }
  goto ldv_34811;
  default:
  ldv_stop();
  }
  ldv_34811: ;
  return;
}
}
void ldv_main_exported_13(void)
{
  enum trace_reg ldvarg28 ;
  void *ldvarg27 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg27 = tmp;
  memset((void *)(& ldvarg28), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_13 == 1) {
    ftrace_define_fields_xhci_log_ctx(event_class_xhci_log_ctx_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_34819;
  case 1: ;
  if (ldv_state_variable_13 == 1) {
    trace_event_raw_init(event_class_xhci_log_ctx_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_34819;
  case 2: ;
  if (ldv_state_variable_13 == 1) {
    ftrace_event_reg(event_class_xhci_log_ctx_group0, ldvarg28, ldvarg27);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_34819;
  default:
  ldv_stop();
  }
  ldv_34819: ;
  return;
}
}
void ldv_main_exported_17(void)
{
  struct trace_event *ldvarg22 ;
  void *tmp ;
  int ldvarg23 ;
  int tmp___0 ;
  struct trace_iterator *ldvarg21 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(48UL);
  ldvarg22 = (struct trace_event *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg23 = tmp___0;
  tmp___1 = ldv_zalloc(8512UL);
  ldvarg21 = (struct trace_iterator *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_17 == 1) {
    ftrace_raw_output_xhci_log_msg(ldvarg21, ldvarg23, ldvarg22);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_34830;
  default:
  ldv_stop();
  }
  ldv_34830: ;
  return;
}
}
void ldv_main_exported_12(void)
{
  void *ldvarg44 ;
  void *tmp ;
  enum trace_reg ldvarg45 ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg44 = tmp;
  memset((void *)(& ldvarg45), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_12 == 1) {
    ftrace_define_fields_xhci_log_event(event_class_xhci_log_event_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_34838;
  case 1: ;
  if (ldv_state_variable_12 == 1) {
    trace_event_raw_init(event_class_xhci_log_event_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_34838;
  case 2: ;
  if (ldv_state_variable_12 == 1) {
    ftrace_event_reg(event_class_xhci_log_event_group0, ldvarg45, ldvarg44);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_34838;
  default:
  ldv_stop();
  }
  ldv_34838: ;
  return;
}
}
void ldv_main_exported_15(void)
{
  int ldvarg50 ;
  int tmp ;
  struct trace_event *ldvarg49 ;
  void *tmp___0 ;
  struct trace_iterator *ldvarg48 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg50 = tmp;
  tmp___0 = ldv_zalloc(48UL);
  ldvarg49 = (struct trace_event *)tmp___0;
  tmp___1 = ldv_zalloc(8512UL);
  ldvarg48 = (struct trace_iterator *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_15 == 1) {
    ftrace_raw_output_xhci_log_event(ldvarg48, ldvarg50, ldvarg49);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_34849;
  default:
  ldv_stop();
  }
  ldv_34849: ;
  return;
}
}
void ldv_main_exported_14(void)
{
  void *ldvarg46 ;
  void *tmp ;
  enum trace_reg ldvarg47 ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg46 = tmp;
  memset((void *)(& ldvarg47), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_14 == 1) {
    ftrace_define_fields_xhci_log_msg(event_class_xhci_log_msg_group0);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_34857;
  case 1: ;
  if (ldv_state_variable_14 == 1) {
    trace_event_raw_init(event_class_xhci_log_msg_group0);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_34857;
  case 2: ;
  if (ldv_state_variable_14 == 1) {
    ftrace_event_reg(event_class_xhci_log_msg_group0, ldvarg47, ldvarg46);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_34857;
  default:
  ldv_stop();
  }
  ldv_34857: ;
  return;
}
}
extern struct module __this_module ;
extern void __cmpxchg_wrong_size(void) ;
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static int atomic_cmpxchg(atomic_t *v , int old , int new )
{
  int __ret ;
  int __old ;
  int __new ;
  u8 volatile *__ptr ;
  u16 volatile *__ptr___0 ;
  u32 volatile *__ptr___1 ;
  u64 volatile *__ptr___2 ;
  {
  __old = old;
  __new = new;
  switch (4UL) {
  case 1UL:
  __ptr = (u8 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgb %2,%1": "=a" (__ret),
                       "+m" (*__ptr): "q" (__new), "0" (__old): "memory");
  goto ldv_5646;
  case 2UL:
  __ptr___0 = (u16 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgw %2,%1": "=a" (__ret),
                       "+m" (*__ptr___0): "r" (__new), "0" (__old): "memory");
  goto ldv_5646;
  case 4UL:
  __ptr___1 = (u32 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgl %2,%1": "=a" (__ret),
                       "+m" (*__ptr___1): "r" (__new), "0" (__old): "memory");
  goto ldv_5646;
  case 8UL:
  __ptr___2 = (u64 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgq %2,%1": "=a" (__ret),
                       "+m" (*__ptr___2): "r" (__new), "0" (__old): "memory");
  goto ldv_5646;
  default:
  __cmpxchg_wrong_size();
  }
  ldv_5646: ;
  return (__ret);
}
}
__inline static int __atomic_add_unless(atomic_t *v , int a , int u )
{
  int c ;
  int old ;
  long tmp ;
  long tmp___0 ;
  {
  c = atomic_read((atomic_t const *)v);
  ldv_5675:
  tmp = ldv__builtin_expect(c == u, 0L);
  if (tmp != 0L) {
    goto ldv_5674;
  } else {
  }
  old = atomic_cmpxchg(v, c, c + a);
  tmp___0 = ldv__builtin_expect(old == c, 1L);
  if (tmp___0 != 0L) {
    goto ldv_5674;
  } else {
  }
  c = old;
  goto ldv_5675;
  ldv_5674: ;
  return (c);
}
}
__inline static int atomic_add_unless(atomic_t *v , int a , int u )
{
  int tmp ;
  {
  tmp = __atomic_add_unless(v, a, u);
  return (tmp != u);
}
}
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern u16 __VERIFIER_nondet_u16(void) ;
extern unsigned int __VERIFIER_nondet_uint(void) ;
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
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
extern int pci_bus_read_config_byte(struct pci_bus * , unsigned int , int , u8 * ) ;
__inline static int pci_read_config_byte(struct pci_dev const *dev , int where ,
                                         u8 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_byte(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
extern int pci_set_mwi(struct pci_dev * ) ;
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
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  tmp = dev_name(& pdev->dev);
  return (tmp);
}
}
__inline static void pm_runtime_get_noresume(struct device *dev )
{
  {
  atomic_inc(& dev->power.usage_count);
  return;
}
}
__inline static void pm_runtime_put_noidle(struct device *dev )
{
  {
  atomic_add_unless(& dev->power.usage_count, -1, 0);
  return;
}
}
extern struct usb_hcd *usb_create_shared_hcd(struct hc_driver const * , struct device * ,
                                             char const * , struct usb_hcd * ) ;
extern void usb_put_hcd(struct usb_hcd * ) ;
extern int usb_add_hcd(struct usb_hcd * , unsigned int , unsigned long ) ;
extern void usb_remove_hcd(struct usb_hcd * ) ;
extern int usb_hcd_pci_probe(struct pci_dev * , struct pci_device_id const * ) ;
extern void usb_hcd_pci_remove(struct pci_dev * ) ;
extern void usb_hcd_pci_shutdown(struct pci_dev * ) ;
extern struct dev_pm_ops const usb_hcd_pci_pm_ops ;
extern int usb_amd_find_chipset_info(void) ;
extern void usb_enable_intel_xhci_ports(struct pci_dev * ) ;
__inline static void trace_xhci_dbg_quirks___2(struct va_format *vaf )
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
  tmp___1 = static_key_false(& __tracepoint_xhci_dbg_quirks.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_xhci_dbg_quirks.funcs));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0 && 1) {
        __warned = 1;
        lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/usb/host/xhci-trace.h",
                               48, "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_33795:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct va_format * ))it_func))(__data, vaf);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_33795;
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
static char const hcd_name[9U] =
  { 'x', 'h', 'c', 'i',
        '_', 'h', 'c', 'd',
        '\000'};
static int xhci_pci_reinit(struct xhci_hcd *xhci , struct pci_dev *pdev )
{
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  {
  tmp___1 = pci_set_mwi(pdev);
  if (tmp___1 == 0) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_pci_reinit";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-pci.o.c.prepared";
    descriptor.format = "MWI active\n";
    descriptor.lineno = 188U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "MWI active\n");
    } else {
    }
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_pci_reinit";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-pci.o.c.prepared";
  descriptor___0.format = "Finished xhci_pci_reinit\n";
  descriptor___0.lineno = 190U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                      "Finished xhci_pci_reinit\n");
  } else {
  }
  return (0);
}
}
static void xhci_pci_quirks(struct device *dev , struct xhci_hcd *xhci )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  if ((unsigned int )pdev->vendor == 7027U && ((unsigned int )pdev->device == 4096U || (unsigned int )pdev->device == 5120U)) {
    if ((unsigned int )pdev->device == 4096U && (unsigned int )pdev->revision == 0U) {
      xhci->quirks = xhci->quirks | 2U;
      xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks___2, "QUIRK: Fresco Logic xHC needs configure endpoint cmd after reset endpoint");
    } else {
    }
    if ((unsigned int )pdev->device == 4096U && (unsigned int )pdev->revision == 4U) {
      xhci->quirks = xhci->quirks | 131072U;
      xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks___2, "QUIRK: Fresco Logic xHC revision %umust be suspended extra slowly",
                     (int )pdev->revision);
    } else {
    }
    xhci->quirks = xhci->quirks | 64U;
    xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks___2, "QUIRK: Fresco Logic revision %u has broken MSI implementation",
                   (int )pdev->revision);
    xhci->quirks = xhci->quirks | 1024U;
  } else {
  }
  if ((unsigned int )pdev->vendor == 4147U) {
    xhci->quirks = xhci->quirks | 4U;
  } else {
  }
  if ((unsigned int )pdev->vendor == 4130U && (unsigned int )xhci->hci_version == 150U) {
    xhci->quirks = xhci->quirks | 512U;
  } else {
  }
  if ((unsigned int )pdev->vendor == 4130U) {
    tmp = usb_amd_find_chipset_info();
    if (tmp != 0) {
      xhci->quirks = xhci->quirks | 8U;
    } else {
    }
  } else {
  }
  if ((unsigned int )pdev->vendor == 32902U) {
    xhci->quirks = xhci->quirks | 2048U;
    xhci->quirks = xhci->quirks | 4096U;
  } else {
  }
  if ((unsigned int )pdev->vendor == 32902U && (unsigned int )pdev->device == 7729U) {
    xhci->quirks = xhci->quirks | 32U;
    xhci->limit_active_eps = 64U;
    xhci->quirks = xhci->quirks | 256U;
    xhci->quirks = xhci->quirks | 8192U;
    xhci->quirks = xhci->quirks | 32768U;
  } else {
  }
  if ((unsigned int )pdev->vendor == 32902U && ((unsigned int )pdev->device == 35889U || (unsigned int )pdev->device == 39985U)) {
    if ((unsigned int )pdev->subsystem_vendor == 4156U) {
      xhci->quirks = xhci->quirks | 262144U;
    } else {
    }
  } else {
  }
  if ((unsigned int )pdev->vendor == 32902U && (unsigned int )pdev->device == 39985U) {
    xhci->quirks = xhci->quirks | 8192U;
  } else {
  }
  if ((unsigned int )pdev->vendor == 7023U && (unsigned int )pdev->device == 28707U) {
    xhci->quirks = xhci->quirks | 128U;
    xhci->quirks = xhci->quirks | 1024U;
  } else {
  }
  if ((unsigned int )pdev->vendor == 6418U && (unsigned int )pdev->device == 21U) {
    xhci->quirks = xhci->quirks | 128U;
  } else {
  }
  if ((unsigned int )pdev->vendor == 4358U) {
    xhci->quirks = xhci->quirks | 128U;
  } else {
  }
  if ((xhci->quirks & 128U) != 0U) {
    xhci_dbg_trace(xhci, & trace_xhci_dbg_quirks___2, "QUIRK: Resetting on resume");
  } else {
  }
  return;
}
}
static int xhci_pci_setup(struct usb_hcd *hcd )
{
  struct xhci_hcd *xhci ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  int retval ;
  int tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  {
  __mptr = (struct device const *)hcd->self.controller;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  retval = xhci_gen_setup(hcd, & xhci_pci_quirks);
  if (retval != 0) {
    return (retval);
  } else {
  }
  xhci = hcd_to_xhci(hcd);
  tmp = usb_hcd_is_primary_hcd(hcd);
  if (tmp == 0) {
    return (0);
  } else {
  }
  pci_read_config_byte((struct pci_dev const *)pdev, 96, & xhci->sbrn);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_pci_setup";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-pci.o.c.prepared";
  descriptor.format = "Got SBRN %u\n";
  descriptor.lineno = 308U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Got SBRN %u\n", (unsigned int )xhci->sbrn);
  } else {
  }
  retval = xhci_pci_reinit(xhci, pdev);
  if (retval == 0) {
    return (retval);
  } else {
  }
  kfree((void const *)xhci);
  return (retval);
}
}
static int xhci_pci_probe(struct pci_dev *dev , struct pci_device_id const *id )
{
  int retval ;
  struct xhci_hcd *xhci ;
  struct hc_driver *driver ;
  struct usb_hcd *hcd ;
  void *tmp ;
  char const *tmp___0 ;
  {
  driver = (struct hc_driver *)id->driver_data;
  pm_runtime_get_noresume(& dev->dev);
  retval = usb_hcd_pci_probe(dev, id);
  if (retval != 0) {
    goto put_runtime_pm;
  } else {
  }
  tmp = dev_get_drvdata((struct device const *)(& dev->dev));
  hcd = (struct usb_hcd *)tmp;
  xhci = hcd_to_xhci(hcd);
  tmp___0 = pci_name((struct pci_dev const *)dev);
  xhci->shared_hcd = usb_create_shared_hcd((struct hc_driver const *)driver, & dev->dev,
                                           tmp___0, hcd);
  if ((unsigned long )xhci->shared_hcd == (unsigned long )((struct usb_hcd *)0)) {
    retval = -12;
    goto dealloc_usb2_hcd;
  } else {
  }
  *((struct xhci_hcd **)(& (xhci->shared_hcd)->hcd_priv)) = xhci;
  retval = usb_add_hcd(xhci->shared_hcd, dev->irq, 128UL);
  if (retval != 0) {
    goto put_usb3_hcd;
  } else {
  }
  if (1 << (int )(((xhci->hcc_params >> 12) & 15U) + 1U) > 3) {
    (xhci->shared_hcd)->can_do_streams = 1U;
  } else {
  }
  pm_runtime_put_noidle(& dev->dev);
  return (0);
  put_usb3_hcd:
  usb_put_hcd(xhci->shared_hcd);
  dealloc_usb2_hcd:
  usb_hcd_pci_remove(dev);
  put_runtime_pm:
  pm_runtime_put_noidle(& dev->dev);
  return (retval);
}
}
static void xhci_pci_remove(struct pci_dev *dev )
{
  struct xhci_hcd *xhci ;
  void *tmp ;
  {
  tmp = pci_get_drvdata(dev);
  xhci = hcd_to_xhci((struct usb_hcd *)tmp);
  if ((unsigned long )xhci->shared_hcd != (unsigned long )((struct usb_hcd *)0)) {
    usb_remove_hcd(xhci->shared_hcd);
    usb_put_hcd(xhci->shared_hcd);
  } else {
  }
  usb_hcd_pci_remove(dev);
  if ((xhci->quirks & 262144U) != 0U) {
    pci_set_power_state(dev, 3);
  } else {
  }
  kfree((void const *)xhci);
  return;
}
}
static int xhci_pci_suspend(struct usb_hcd *hcd , bool do_wakeup )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  __mptr = (struct device const *)hcd->self.controller;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp___0 = xhci_compliance_mode_recovery_timer_quirk_check();
  if ((int )tmp___0) {
    pdev->no_d3cold = 1U;
  } else {
  }
  tmp___1 = xhci_suspend(xhci);
  return (tmp___1);
}
}
static int xhci_pci_resume(struct usb_hcd *hcd , bool hibernated )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  int retval ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  __mptr = (struct device const *)hcd->self.controller;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  retval = 0;
  if ((unsigned int )pdev->vendor == 32902U) {
    usb_enable_intel_xhci_ports(pdev);
  } else {
  }
  retval = xhci_resume(xhci, (int )hibernated);
  return (retval);
}
}
static struct hc_driver const xhci_pci_hc_driver =
     {(char const *)(& hcd_name), "xHCI Host Controller", 8UL, & xhci_irq, 69, & xhci_pci_setup,
    & xhci_run, & xhci_pci_suspend, & xhci_pci_resume, & xhci_stop, & xhci_shutdown,
    & xhci_get_frame, & xhci_urb_enqueue, & xhci_urb_dequeue, 0, 0, 0, & xhci_endpoint_reset,
    & xhci_hub_status_data, & xhci_hub_control, & xhci_bus_suspend, & xhci_bus_resume,
    0, 0, 0, 0, & xhci_alloc_dev, & xhci_free_dev, & xhci_alloc_streams, & xhci_free_streams,
    & xhci_add_endpoint, & xhci_drop_endpoint, & xhci_check_bandwidth, & xhci_reset_bandwidth,
    & xhci_address_device, & xhci_enable_device, & xhci_update_hub_device, & xhci_discover_or_reset_device,
    & xhci_update_device, & xhci_set_usb2_hardware_lpm, & xhci_enable_usb3_lpm_timeout,
    & xhci_disable_usb3_lpm_timeout, & xhci_find_raw_port_number};
static struct pci_device_id const pci_ids[2U] = { {4294967295U, 4294967295U, 4294967295U, 4294967295U, 787248U, 4294967295U, (unsigned long )(& xhci_pci_hc_driver)}};
struct pci_device_id const __mod_pci__pci_ids_device_table ;
static struct pci_driver xhci_pci_driver =
     {{0, 0}, (char const *)(& hcd_name), (struct pci_device_id const *)(& pci_ids),
    & xhci_pci_probe, & xhci_pci_remove, 0, 0, 0, 0, & usb_hcd_pci_shutdown, 0, 0,
    {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, & usb_hcd_pci_pm_ops, 0}, {{{{{{0U}},
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
int xhci_register_pci(void)
{
  int tmp ;
  {
  tmp = __pci_register_driver(& xhci_pci_driver, & __this_module, "xhci_hcd");
  return (tmp);
}
}
void xhci_unregister_pci(void)
{
  {
  pci_unregister_driver(& xhci_pci_driver);
  return;
}
}
int ldv_retval_0 ;
int ldv_retval_23 ;
void ldv_initialize_pci_driver_10(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(2976UL);
  xhci_pci_driver_group0 = (struct pci_dev *)tmp;
  return;
}
}
void ldv_initialize_hc_driver_11(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  {
  tmp = ldv_zalloc(2032UL);
  xhci_pci_hc_driver_group2 = (struct usb_device *)tmp;
  tmp___0 = ldv_zalloc(72UL);
  xhci_pci_hc_driver_group1 = (struct usb_host_endpoint *)tmp___0;
  tmp___1 = ldv_zalloc(192UL);
  xhci_pci_hc_driver_group0 = (struct urb *)tmp___1;
  tmp___2 = ldv_zalloc(8UL);
  xhci_pci_hc_driver_group3 = (struct usb_host_endpoint **)tmp___2;
  tmp___3 = ldv_zalloc(968UL);
  xhci_pci_hc_driver_group4 = (struct usb_hcd *)tmp___3;
  return;
}
}
void ldv_main_exported_11(void)
{
  bool ldvarg2 ;
  gfp_t ldvarg19 ;
  u16 ldvarg14 ;
  u16 tmp ;
  gfp_t ldvarg4 ;
  unsigned int ldvarg17 ;
  unsigned int tmp___0 ;
  char *ldvarg15 ;
  void *tmp___1 ;
  enum usb3_link_state ldvarg6 ;
  gfp_t ldvarg16 ;
  enum usb3_link_state ldvarg5 ;
  bool ldvarg0 ;
  gfp_t ldvarg9 ;
  int ldvarg10 ;
  int tmp___2 ;
  u16 ldvarg13 ;
  u16 tmp___3 ;
  int ldvarg1 ;
  int tmp___4 ;
  int ldvarg8 ;
  int tmp___5 ;
  u16 ldvarg12 ;
  u16 tmp___6 ;
  unsigned int ldvarg3 ;
  unsigned int tmp___7 ;
  char *ldvarg7 ;
  void *tmp___8 ;
  struct usb_tt *ldvarg20 ;
  void *tmp___9 ;
  u16 ldvarg11 ;
  u16 tmp___10 ;
  unsigned int ldvarg18 ;
  unsigned int tmp___11 ;
  int tmp___12 ;
  {
  tmp = __VERIFIER_nondet_u16();
  ldvarg14 = tmp;
  tmp___0 = __VERIFIER_nondet_uint();
  ldvarg17 = tmp___0;
  tmp___1 = ldv_zalloc(1UL);
  ldvarg15 = (char *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  ldvarg10 = tmp___2;
  tmp___3 = __VERIFIER_nondet_u16();
  ldvarg13 = tmp___3;
  tmp___4 = __VERIFIER_nondet_int();
  ldvarg1 = tmp___4;
  tmp___5 = __VERIFIER_nondet_int();
  ldvarg8 = tmp___5;
  tmp___6 = __VERIFIER_nondet_u16();
  ldvarg12 = tmp___6;
  tmp___7 = __VERIFIER_nondet_uint();
  ldvarg3 = tmp___7;
  tmp___8 = ldv_zalloc(1UL);
  ldvarg7 = (char *)tmp___8;
  tmp___9 = ldv_zalloc(192UL);
  ldvarg20 = (struct usb_tt *)tmp___9;
  tmp___10 = __VERIFIER_nondet_u16();
  ldvarg11 = tmp___10;
  tmp___11 = __VERIFIER_nondet_uint();
  ldvarg18 = tmp___11;
  memset((void *)(& ldvarg2), 0, 1UL);
  memset((void *)(& ldvarg19), 0, 4UL);
  memset((void *)(& ldvarg4), 0, 4UL);
  memset((void *)(& ldvarg6), 0, 4UL);
  memset((void *)(& ldvarg16), 0, 4UL);
  memset((void *)(& ldvarg5), 0, 4UL);
  memset((void *)(& ldvarg0), 0, 1UL);
  memset((void *)(& ldvarg9), 0, 4UL);
  tmp___12 = __VERIFIER_nondet_int();
  switch (tmp___12) {
  case 0: ;
  if (ldv_state_variable_11 == 1) {
    xhci_update_hub_device(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2, ldvarg20,
                           ldvarg19);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_update_hub_device(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2, ldvarg20,
                           ldvarg19);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_update_hub_device(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2, ldvarg20,
                           ldvarg19);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 1: ;
  if (ldv_state_variable_11 == 1) {
    xhci_alloc_streams(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2, xhci_pci_hc_driver_group3,
                       ldvarg17, ldvarg18, ldvarg16);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_alloc_streams(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2, xhci_pci_hc_driver_group3,
                       ldvarg17, ldvarg18, ldvarg16);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_alloc_streams(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2, xhci_pci_hc_driver_group3,
                       ldvarg17, ldvarg18, ldvarg16);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 2: ;
  if (ldv_state_variable_11 == 1) {
    xhci_irq(xhci_pci_hc_driver_group4);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_irq(xhci_pci_hc_driver_group4);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_irq(xhci_pci_hc_driver_group4);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 3: ;
  if (ldv_state_variable_11 == 1) {
    xhci_reset_bandwidth(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_reset_bandwidth(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_reset_bandwidth(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 4: ;
  if (ldv_state_variable_11 == 3) {
    xhci_stop(xhci_pci_hc_driver_group4);
    ldv_state_variable_11 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_stop(xhci_pci_hc_driver_group4);
    ldv_state_variable_11 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_34136;
  case 5: ;
  if (ldv_state_variable_11 == 1) {
    xhci_hub_control(xhci_pci_hc_driver_group4, (int )ldvarg14, (int )ldvarg13, (int )ldvarg12,
                     ldvarg15, (int )ldvarg11);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_hub_control(xhci_pci_hc_driver_group4, (int )ldvarg14, (int )ldvarg13, (int )ldvarg12,
                     ldvarg15, (int )ldvarg11);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_hub_control(xhci_pci_hc_driver_group4, (int )ldvarg14, (int )ldvarg13, (int )ldvarg12,
                     ldvarg15, (int )ldvarg11);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 6: ;
  if (ldv_state_variable_11 == 1) {
    xhci_urb_dequeue(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group0, ldvarg10);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_urb_dequeue(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group0, ldvarg10);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_urb_dequeue(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group0, ldvarg10);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 7: ;
  if (ldv_state_variable_11 == 1) {
    xhci_check_bandwidth(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_check_bandwidth(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_check_bandwidth(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 8: ;
  if (ldv_state_variable_11 == 1) {
    xhci_pci_setup(xhci_pci_hc_driver_group4);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_pci_setup(xhci_pci_hc_driver_group4);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_pci_setup(xhci_pci_hc_driver_group4);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 9: ;
  if (ldv_state_variable_11 == 1) {
    xhci_enable_device(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_enable_device(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_enable_device(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 10: ;
  if (ldv_state_variable_11 == 1) {
    xhci_address_device(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_address_device(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_address_device(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 11: ;
  if (ldv_state_variable_11 == 1) {
    xhci_urb_enqueue(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group0, ldvarg9);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_urb_enqueue(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group0, ldvarg9);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_urb_enqueue(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group0, ldvarg9);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 12: ;
  if (ldv_state_variable_11 == 1) {
    ldv_retval_0 = xhci_run(xhci_pci_hc_driver_group4);
    if (ldv_retval_0 == 0) {
      ldv_state_variable_11 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_34136;
  case 13: ;
  if (ldv_state_variable_11 == 1) {
    xhci_find_raw_port_number(xhci_pci_hc_driver_group4, ldvarg8);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_find_raw_port_number(xhci_pci_hc_driver_group4, ldvarg8);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_find_raw_port_number(xhci_pci_hc_driver_group4, ldvarg8);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 14: ;
  if (ldv_state_variable_11 == 1) {
    xhci_bus_resume(xhci_pci_hc_driver_group4);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_bus_resume(xhci_pci_hc_driver_group4);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_bus_resume(xhci_pci_hc_driver_group4);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 15: ;
  if (ldv_state_variable_11 == 1) {
    xhci_bus_suspend(xhci_pci_hc_driver_group4);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_bus_suspend(xhci_pci_hc_driver_group4);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_bus_suspend(xhci_pci_hc_driver_group4);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 16: ;
  if (ldv_state_variable_11 == 1) {
    xhci_hub_status_data(xhci_pci_hc_driver_group4, ldvarg7);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_hub_status_data(xhci_pci_hc_driver_group4, ldvarg7);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_hub_status_data(xhci_pci_hc_driver_group4, ldvarg7);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 17: ;
  if (ldv_state_variable_11 == 1) {
    xhci_disable_usb3_lpm_timeout(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2,
                                  ldvarg6);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_disable_usb3_lpm_timeout(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2,
                                  ldvarg6);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_disable_usb3_lpm_timeout(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2,
                                  ldvarg6);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 18: ;
  if (ldv_state_variable_11 == 1) {
    xhci_enable_usb3_lpm_timeout(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2,
                                 ldvarg5);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_enable_usb3_lpm_timeout(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2,
                                 ldvarg5);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_enable_usb3_lpm_timeout(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2,
                                 ldvarg5);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 19: ;
  if (ldv_state_variable_11 == 1) {
    xhci_endpoint_reset(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group1);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_endpoint_reset(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group1);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_endpoint_reset(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group1);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 20: ;
  if (ldv_state_variable_11 == 1) {
    xhci_discover_or_reset_device(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_discover_or_reset_device(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_discover_or_reset_device(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 21: ;
  if (ldv_state_variable_11 == 1) {
    xhci_free_streams(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2, xhci_pci_hc_driver_group3,
                      ldvarg3, ldvarg4);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_free_streams(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2, xhci_pci_hc_driver_group3,
                      ldvarg3, ldvarg4);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_free_streams(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2, xhci_pci_hc_driver_group3,
                      ldvarg3, ldvarg4);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 22: ;
  if (ldv_state_variable_11 == 1) {
    xhci_alloc_dev(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_alloc_dev(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_alloc_dev(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 23: ;
  if (ldv_state_variable_11 == 1) {
    xhci_pci_suspend(xhci_pci_hc_driver_group4, (int )ldvarg2);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_pci_suspend(xhci_pci_hc_driver_group4, (int )ldvarg2);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_pci_suspend(xhci_pci_hc_driver_group4, (int )ldvarg2);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 24: ;
  if (ldv_state_variable_11 == 2) {
    xhci_shutdown(xhci_pci_hc_driver_group4);
    ldv_state_variable_11 = 3;
  } else {
  }
  goto ldv_34136;
  case 25: ;
  if (ldv_state_variable_11 == 1) {
    xhci_update_device(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_update_device(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_update_device(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 26: ;
  if (ldv_state_variable_11 == 1) {
    xhci_add_endpoint(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2, xhci_pci_hc_driver_group1);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_add_endpoint(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2, xhci_pci_hc_driver_group1);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_add_endpoint(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2, xhci_pci_hc_driver_group1);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 27: ;
  if (ldv_state_variable_11 == 1) {
    xhci_set_usb2_hardware_lpm(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2,
                               ldvarg1);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_set_usb2_hardware_lpm(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2,
                               ldvarg1);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_set_usb2_hardware_lpm(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2,
                               ldvarg1);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 28: ;
  if (ldv_state_variable_11 == 1) {
    xhci_drop_endpoint(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2, xhci_pci_hc_driver_group1);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_drop_endpoint(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2, xhci_pci_hc_driver_group1);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_drop_endpoint(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2, xhci_pci_hc_driver_group1);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 29: ;
  if (ldv_state_variable_11 == 1) {
    xhci_free_dev(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_free_dev(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_free_dev(xhci_pci_hc_driver_group4, xhci_pci_hc_driver_group2);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 30: ;
  if (ldv_state_variable_11 == 1) {
    xhci_pci_resume(xhci_pci_hc_driver_group4, (int )ldvarg0);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_pci_resume(xhci_pci_hc_driver_group4, (int )ldvarg0);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_pci_resume(xhci_pci_hc_driver_group4, (int )ldvarg0);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  case 31: ;
  if (ldv_state_variable_11 == 1) {
    xhci_get_frame(xhci_pci_hc_driver_group4);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 3) {
    xhci_get_frame(xhci_pci_hc_driver_group4);
    ldv_state_variable_11 = 3;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xhci_get_frame(xhci_pci_hc_driver_group4);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_34136;
  default:
  ldv_stop();
  }
  ldv_34136: ;
  return;
}
}
void ldv_main_exported_10(void)
{
  struct pci_device_id *ldvarg51 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(32UL);
  ldvarg51 = (struct pci_device_id *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_10 == 1) {
    ldv_retval_23 = xhci_pci_probe(xhci_pci_driver_group0, (struct pci_device_id const *)ldvarg51);
    if (ldv_retval_23 == 0) {
      ldv_state_variable_10 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_34174;
  case 1: ;
  if (ldv_state_variable_10 == 2) {
    usb_hcd_pci_shutdown(xhci_pci_driver_group0);
    ldv_state_variable_10 = 3;
  } else {
  }
  goto ldv_34174;
  case 2: ;
  if (ldv_state_variable_10 == 3) {
    xhci_pci_remove(xhci_pci_driver_group0);
    ldv_state_variable_10 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_10 == 2) {
    xhci_pci_remove(xhci_pci_driver_group0);
    ldv_state_variable_10 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_34174;
  default:
  ldv_stop();
  }
  ldv_34174: ;
  return;
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
extern struct resource iomem_resource ;
__inline static resource_size_t resource_size(struct resource const *res )
{
  {
  return (((unsigned long long )res->end - (unsigned long long )res->start) + 1ULL);
}
}
extern struct resource *__request_region(struct resource * , resource_size_t , resource_size_t ,
                                         char const * , int ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
extern void iounmap(void volatile * ) ;
void ldv_initialize_platform_driver_7(void) ;
extern int clk_prepare(struct clk * ) ;
extern void clk_unprepare(struct clk * ) ;
extern struct clk *devm_clk_get(struct device * , char const * ) ;
extern int clk_enable(struct clk * ) ;
extern void clk_disable(struct clk * ) ;
__inline static int clk_prepare_enable(struct clk *clk )
{
  int ret ;
  {
  ret = clk_prepare(clk);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = clk_enable(clk);
  if (ret != 0) {
    clk_unprepare(clk);
  } else {
  }
  return (ret);
}
}
__inline static void clk_disable_unprepare(struct clk *clk )
{
  {
  clk_disable(clk);
  clk_unprepare(clk);
  return;
}
}
extern int device_wakeup_enable(struct device * ) ;
__inline static int of_device_is_compatible(struct device_node const *device , char const *name )
{
  {
  return (0);
}
}
extern struct resource *platform_get_resource(struct platform_device * , unsigned int ,
                                              unsigned int ) ;
extern int platform_get_irq(struct platform_device * , unsigned int ) ;
extern int __platform_driver_register(struct platform_driver * , struct module * ) ;
int ldv___platform_driver_register_204(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
void ldv_platform_driver_unregister_205(struct platform_driver *drv ) ;
__inline static void *platform_get_drvdata(struct platform_device const *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata(& pdev->dev);
  return (tmp);
}
}
extern int usb_disabled(void) ;
extern struct usb_hcd *usb_create_hcd(struct hc_driver const * , struct device * ,
                                      char const * ) ;
int xhci_mvebu_mbus_init_quirk(struct platform_device *pdev ) ;
static void xhci_plat_quirks(struct device *dev , struct xhci_hcd *xhci )
{
  {
  xhci->quirks = xhci->quirks | 65536U;
  return;
}
}
static int xhci_plat_setup(struct usb_hcd *hcd )
{
  int tmp ;
  {
  tmp = xhci_gen_setup(hcd, & xhci_plat_quirks);
  return (tmp);
}
}
static int xhci_plat_start(struct usb_hcd *hcd )
{
  int tmp ;
  {
  tmp = xhci_run(hcd);
  return (tmp);
}
}
static struct hc_driver const xhci_plat_xhci_driver =
     {"xhci-hcd", "xHCI Host Controller", 8UL, & xhci_irq, 69, & xhci_plat_setup, & xhci_plat_start,
    0, 0, & xhci_stop, & xhci_shutdown, & xhci_get_frame, & xhci_urb_enqueue, & xhci_urb_dequeue,
    0, 0, 0, & xhci_endpoint_reset, & xhci_hub_status_data, & xhci_hub_control, & xhci_bus_suspend,
    & xhci_bus_resume, 0, 0, 0, 0, & xhci_alloc_dev, & xhci_free_dev, & xhci_alloc_streams,
    & xhci_free_streams, & xhci_add_endpoint, & xhci_drop_endpoint, & xhci_check_bandwidth,
    & xhci_reset_bandwidth, & xhci_address_device, & xhci_enable_device, & xhci_update_hub_device,
    & xhci_discover_or_reset_device, 0, 0, 0, 0, 0};
static int xhci_plat_probe(struct platform_device *pdev )
{
  struct hc_driver const *driver ;
  struct xhci_hcd *xhci ;
  struct resource *res ;
  struct usb_hcd *hcd ;
  struct clk *clk ;
  int ret ;
  int irq ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  char const *tmp___2 ;
  struct _ddebug descriptor ;
  long tmp___3 ;
  struct resource *tmp___4 ;
  struct _ddebug descriptor___0 ;
  long tmp___5 ;
  bool tmp___6 ;
  int tmp___7 ;
  void *tmp___8 ;
  char const *tmp___9 ;
  bool tmp___10 ;
  int tmp___11 ;
  {
  tmp = usb_disabled();
  if (tmp != 0) {
    return (-19);
  } else {
  }
  driver = & xhci_plat_xhci_driver;
  irq = platform_get_irq(pdev, 0U);
  if (irq < 0) {
    return (-19);
  } else {
  }
  res = platform_get_resource(pdev, 512U, 0U);
  if ((unsigned long )res == (unsigned long )((struct resource *)0)) {
    return (-19);
  } else {
  }
  tmp___0 = of_device_is_compatible((struct device_node const *)pdev->dev.of_node,
                                    "marvell,armada-375-xhci");
  if (tmp___0 != 0) {
    goto _L;
  } else {
    tmp___1 = of_device_is_compatible((struct device_node const *)pdev->dev.of_node,
                                      "marvell,armada-380-xhci");
    if (tmp___1 != 0) {
      _L:
      ret = xhci_mvebu_mbus_init_quirk(pdev);
      if (ret != 0) {
        return (ret);
      } else {
      }
    } else {
    }
  }
  ret = dma_set_coherent_mask(& pdev->dev, 4294967295ULL);
  if (ret != 0) {
    return (ret);
  } else {
  }
  if ((unsigned long )pdev->dev.dma_mask == (unsigned long )((u64 *)0ULL)) {
    pdev->dev.dma_mask = & pdev->dev.coherent_dma_mask;
  } else {
    dma_set_mask(& pdev->dev, 4294967295ULL);
  }
  tmp___2 = dev_name((struct device const *)(& pdev->dev));
  hcd = usb_create_hcd(driver, & pdev->dev, tmp___2);
  if ((unsigned long )hcd == (unsigned long )((struct usb_hcd *)0)) {
    return (-12);
  } else {
  }
  hcd->rsrc_start = res->start;
  hcd->rsrc_len = resource_size((struct resource const *)res);
  tmp___4 = __request_region(& iomem_resource, hcd->rsrc_start, hcd->rsrc_len, driver->description,
                             0);
  if ((unsigned long )tmp___4 == (unsigned long )((struct resource *)0)) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_plat_probe";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-plat.o.c.prepared";
    descriptor.format = "controller already in use\n";
    descriptor.lineno = 279U;
    descriptor.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& pdev->dev), "controller already in use\n");
    } else {
    }
    ret = -16;
    goto put_hcd;
  } else {
  }
  hcd->regs = ioremap_nocache(hcd->rsrc_start, (unsigned long )hcd->rsrc_len);
  if ((unsigned long )hcd->regs == (unsigned long )((void *)0)) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_plat_probe";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/8147/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/xhci-plat.o.c.prepared";
    descriptor___0.format = "error mapping memory\n";
    descriptor___0.lineno = 286U;
    descriptor___0.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& pdev->dev),
                        "error mapping memory\n");
    } else {
    }
    ret = -14;
    goto release_mem_region;
  } else {
  }
  clk = devm_clk_get(& pdev->dev, (char const *)0);
  tmp___6 = IS_ERR((void const *)clk);
  if (tmp___6) {
    tmp___7 = 0;
  } else {
    tmp___7 = 1;
  }
  if (tmp___7) {
    ret = clk_prepare_enable(clk);
    if (ret != 0) {
      goto unmap_registers;
    } else {
    }
  } else {
  }
  ret = usb_add_hcd(hcd, (unsigned int )irq, 128UL);
  if (ret != 0) {
    goto disable_clk;
  } else {
  }
  device_wakeup_enable(hcd->self.controller);
  tmp___8 = platform_get_drvdata((struct platform_device const *)pdev);
  hcd = (struct usb_hcd *)tmp___8;
  xhci = hcd_to_xhci(hcd);
  xhci->clk = clk;
  tmp___9 = dev_name((struct device const *)(& pdev->dev));
  xhci->shared_hcd = usb_create_shared_hcd(driver, & pdev->dev, tmp___9, hcd);
  if ((unsigned long )xhci->shared_hcd == (unsigned long )((struct usb_hcd *)0)) {
    ret = -12;
    goto dealloc_usb2_hcd;
  } else {
  }
  *((struct xhci_hcd **)(& (xhci->shared_hcd)->hcd_priv)) = xhci;
  if (1 << (int )(((xhci->hcc_params >> 12) & 15U) + 1U) > 3) {
    (xhci->shared_hcd)->can_do_streams = 1U;
  } else {
  }
  ret = usb_add_hcd(xhci->shared_hcd, (unsigned int )irq, 128UL);
  if (ret != 0) {
    goto put_usb3_hcd;
  } else {
  }
  return (0);
  put_usb3_hcd:
  usb_put_hcd(xhci->shared_hcd);
  dealloc_usb2_hcd:
  usb_remove_hcd(hcd);
  disable_clk:
  tmp___10 = IS_ERR((void const *)clk);
  if (tmp___10) {
    tmp___11 = 0;
  } else {
    tmp___11 = 1;
  }
  if (tmp___11) {
    clk_disable_unprepare(clk);
  } else {
  }
  unmap_registers:
  iounmap((void volatile *)hcd->regs);
  release_mem_region:
  __release_region(& iomem_resource, hcd->rsrc_start, hcd->rsrc_len);
  put_hcd:
  usb_put_hcd(hcd);
  return (ret);
}
}
static int xhci_plat_remove(struct platform_device *dev )
{
  struct usb_hcd *hcd ;
  void *tmp ;
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp___0 ;
  struct clk *clk ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tmp = platform_get_drvdata((struct platform_device const *)dev);
  hcd = (struct usb_hcd *)tmp;
  tmp___0 = hcd_to_xhci(hcd);
  xhci = tmp___0;
  clk = xhci->clk;
  usb_remove_hcd(xhci->shared_hcd);
  usb_put_hcd(xhci->shared_hcd);
  usb_remove_hcd(hcd);
  tmp___1 = IS_ERR((void const *)clk);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    clk_disable_unprepare(clk);
  } else {
  }
  iounmap((void volatile *)hcd->regs);
  __release_region(& iomem_resource, hcd->rsrc_start, hcd->rsrc_len);
  usb_put_hcd(hcd);
  kfree((void const *)xhci);
  return (0);
}
}
static int xhci_plat_suspend(struct device *dev )
{
  struct usb_hcd *hcd ;
  void *tmp ;
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp___0 ;
  int tmp___1 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  hcd = (struct usb_hcd *)tmp;
  tmp___0 = hcd_to_xhci(hcd);
  xhci = tmp___0;
  tmp___1 = xhci_suspend(xhci);
  return (tmp___1);
}
}
static int xhci_plat_resume(struct device *dev )
{
  struct usb_hcd *hcd ;
  void *tmp ;
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp___0 ;
  int tmp___1 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  hcd = (struct usb_hcd *)tmp;
  tmp___0 = hcd_to_xhci(hcd);
  xhci = tmp___0;
  tmp___1 = xhci_resume(xhci, 0);
  return (tmp___1);
}
}
static struct dev_pm_ops const xhci_plat_pm_ops =
     {0, 0, & xhci_plat_suspend, & xhci_plat_resume, & xhci_plat_suspend, & xhci_plat_resume,
    & xhci_plat_suspend, & xhci_plat_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0};
static struct platform_driver usb_xhci_driver =
     {& xhci_plat_probe, & xhci_plat_remove, 0, 0, 0, {"xhci-hcd", 0, 0, 0, (_Bool)0,
                                                     (struct of_device_id const *)0,
                                                     0, 0, 0, 0, 0, 0, 0, & xhci_plat_pm_ops,
                                                     0}, 0, (_Bool)0};
int xhci_register_plat(void)
{
  int tmp ;
  {
  tmp = ldv___platform_driver_register_204(& usb_xhci_driver, & __this_module);
  return (tmp);
}
}
void xhci_unregister_plat(void)
{
  {
  ldv_platform_driver_unregister_205(& usb_xhci_driver);
  return;
}
}
int ldv_retval_20 ;
extern int ldv_resume_noirq_8(void) ;
extern int ldv_restore_noirq_8(void) ;
int ldv_retval_18 ;
extern int ldv_prepare_8(void) ;
int ldv_retval_5 ;
int ldv_retval_11 ;
int ldv_retval_1 ;
int ldv_retval_22 ;
extern int ldv_restore_early_8(void) ;
int ldv_retval_15 ;
extern int ldv_thaw_noirq_8(void) ;
extern int ldv_thaw_early_8(void) ;
int ldv_retval_16 ;
extern int ldv_poweroff_late_8(void) ;
extern int ldv_suspend_noirq_8(void) ;
int ldv_retval_8 ;
int ldv_retval_7 ;
int ldv_retval_19 ;
int ldv_retval_14 ;
int ldv_retval_17 ;
int ldv_retval_12 ;
int ldv_retval_6 ;
extern int ldv_freeze_noirq_8(void) ;
extern int ldv_freeze_late_8(void) ;
extern int ldv_poweroff_noirq_8(void) ;
int ldv_retval_21 ;
extern int ldv_suspend_late_8(void) ;
int ldv_retval_13 ;
int ldv_retval_9 ;
int ldv_retval_10 ;
int ldv_retval_4 ;
extern int ldv_resume_early_8(void) ;
int ldv_retval_3 ;
extern int ldv_complete_8(void) ;
void ldv_initialize_platform_driver_7(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1464UL);
  usb_xhci_driver_group0 = (struct platform_device *)tmp;
  return;
}
}
void ldv_initialize_hc_driver_9(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  {
  tmp = ldv_zalloc(2032UL);
  xhci_plat_xhci_driver_group2 = (struct usb_device *)tmp;
  tmp___0 = ldv_zalloc(72UL);
  xhci_plat_xhci_driver_group1 = (struct usb_host_endpoint *)tmp___0;
  tmp___1 = ldv_zalloc(192UL);
  xhci_plat_xhci_driver_group0 = (struct urb *)tmp___1;
  tmp___2 = ldv_zalloc(8UL);
  xhci_plat_xhci_driver_group3 = (struct usb_host_endpoint **)tmp___2;
  tmp___3 = ldv_zalloc(968UL);
  xhci_plat_xhci_driver_group4 = (struct usb_hcd *)tmp___3;
  return;
}
}
void ldv_dev_pm_ops_8(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1416UL);
  xhci_plat_pm_ops_group1 = (struct device *)tmp;
  return;
}
}
void ldv_main_exported_8(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_8 == 2) {
    ldv_retval_22 = xhci_plat_suspend(xhci_plat_pm_ops_group1);
    if (ldv_retval_22 == 0) {
      ldv_state_variable_8 = 3;
    } else {
    }
  } else {
  }
  goto ldv_32786;
  case 1: ;
  if (ldv_state_variable_8 == 2) {
    ldv_retval_21 = xhci_plat_suspend(xhci_plat_pm_ops_group1);
    if (ldv_retval_21 == 0) {
      ldv_state_variable_8 = 4;
    } else {
    }
  } else {
  }
  goto ldv_32786;
  case 2: ;
  if (ldv_state_variable_8 == 12) {
    ldv_retval_20 = xhci_plat_resume(xhci_plat_pm_ops_group1);
    if (ldv_retval_20 == 0) {
      ldv_state_variable_8 = 15;
    } else {
    }
  } else {
  }
  goto ldv_32786;
  case 3: ;
  if (ldv_state_variable_8 == 14) {
    ldv_retval_19 = xhci_plat_resume(xhci_plat_pm_ops_group1);
    if (ldv_retval_19 == 0) {
      ldv_state_variable_8 = 15;
    } else {
    }
  } else {
  }
  goto ldv_32786;
  case 4: ;
  if (ldv_state_variable_8 == 2) {
    ldv_retval_18 = xhci_plat_suspend(xhci_plat_pm_ops_group1);
    if (ldv_retval_18 == 0) {
      ldv_state_variable_8 = 5;
    } else {
    }
  } else {
  }
  goto ldv_32786;
  case 5: ;
  if (ldv_state_variable_8 == 13) {
    ldv_retval_17 = xhci_plat_resume(xhci_plat_pm_ops_group1);
    if (ldv_retval_17 == 0) {
      ldv_state_variable_8 = 15;
    } else {
    }
  } else {
  }
  goto ldv_32786;
  case 6: ;
  if (ldv_state_variable_8 == 3) {
    ldv_retval_16 = ldv_suspend_late_8();
    if (ldv_retval_16 == 0) {
      ldv_state_variable_8 = 6;
    } else {
    }
  } else {
  }
  goto ldv_32786;
  case 7: ;
  if (ldv_state_variable_8 == 9) {
    ldv_retval_15 = ldv_restore_early_8();
    if (ldv_retval_15 == 0) {
      ldv_state_variable_8 = 13;
    } else {
    }
  } else {
  }
  goto ldv_32786;
  case 8: ;
  if (ldv_state_variable_8 == 6) {
    ldv_retval_14 = ldv_resume_early_8();
    if (ldv_retval_14 == 0) {
      ldv_state_variable_8 = 12;
    } else {
    }
  } else {
  }
  goto ldv_32786;
  case 9: ;
  if (ldv_state_variable_8 == 11) {
    ldv_retval_13 = ldv_thaw_early_8();
    if (ldv_retval_13 == 0) {
      ldv_state_variable_8 = 14;
    } else {
    }
  } else {
  }
  goto ldv_32786;
  case 10: ;
  if (ldv_state_variable_8 == 7) {
    ldv_retval_12 = ldv_resume_noirq_8();
    if (ldv_retval_12 == 0) {
      ldv_state_variable_8 = 12;
    } else {
    }
  } else {
  }
  goto ldv_32786;
  case 11: ;
  if (ldv_state_variable_8 == 5) {
    ldv_retval_11 = ldv_freeze_noirq_8();
    if (ldv_retval_11 == 0) {
      ldv_state_variable_8 = 10;
    } else {
    }
  } else {
  }
  goto ldv_32786;
  case 12: ;
  if (ldv_state_variable_8 == 1) {
    ldv_retval_10 = ldv_prepare_8();
    if (ldv_retval_10 == 0) {
      ldv_state_variable_8 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_32786;
  case 13: ;
  if (ldv_state_variable_8 == 5) {
    ldv_retval_9 = ldv_freeze_late_8();
    if (ldv_retval_9 == 0) {
      ldv_state_variable_8 = 11;
    } else {
    }
  } else {
  }
  goto ldv_32786;
  case 14: ;
  if (ldv_state_variable_8 == 10) {
    ldv_retval_8 = ldv_thaw_noirq_8();
    if (ldv_retval_8 == 0) {
      ldv_state_variable_8 = 14;
    } else {
    }
  } else {
  }
  goto ldv_32786;
  case 15: ;
  if (ldv_state_variable_8 == 4) {
    ldv_retval_7 = ldv_poweroff_noirq_8();
    if (ldv_retval_7 == 0) {
      ldv_state_variable_8 = 8;
    } else {
    }
  } else {
  }
  goto ldv_32786;
  case 16: ;
  if (ldv_state_variable_8 == 4) {
    ldv_retval_6 = ldv_poweroff_late_8();
    if (ldv_retval_6 == 0) {
      ldv_state_variable_8 = 9;
    } else {
    }
  } else {
  }
  goto ldv_32786;
  case 17: ;
  if (ldv_state_variable_8 == 8) {
    ldv_retval_5 = ldv_restore_noirq_8();
    if (ldv_retval_5 == 0) {
      ldv_state_variable_8 = 13;
    } else {
    }
  } else {
  }
  goto ldv_32786;
  case 18: ;
  if (ldv_state_variable_8 == 3) {
    ldv_retval_4 = ldv_suspend_noirq_8();
    if (ldv_retval_4 == 0) {
      ldv_state_variable_8 = 7;
    } else {
    }
  } else {
  }
  goto ldv_32786;
  case 19: ;
  if (ldv_state_variable_8 == 15) {
    ldv_complete_8();
    ldv_state_variable_8 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_32786;
  default:
  ldv_stop();
  }
  ldv_32786: ;
  return;
}
}
void ldv_main_exported_7(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_7 == 1) {
    ldv_retval_1 = xhci_plat_probe(usb_xhci_driver_group0);
    if (ldv_retval_1 == 0) {
      ldv_state_variable_7 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_32811;
  case 1: ;
  if (ldv_state_variable_7 == 2) {
    xhci_plat_remove(usb_xhci_driver_group0);
    ldv_state_variable_7 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_32811;
  default:
  ldv_stop();
  }
  ldv_32811: ;
  return;
}
}
void ldv_main_exported_9(void)
{
  u16 ldvarg34 ;
  u16 tmp ;
  unsigned int ldvarg40 ;
  unsigned int tmp___0 ;
  u16 ldvarg36 ;
  u16 tmp___1 ;
  unsigned int ldvarg29 ;
  unsigned int tmp___2 ;
  u16 ldvarg37 ;
  u16 tmp___3 ;
  gfp_t ldvarg30 ;
  int ldvarg33 ;
  int tmp___4 ;
  char *ldvarg38 ;
  void *tmp___5 ;
  gfp_t ldvarg42 ;
  struct usb_tt *ldvarg43 ;
  void *tmp___6 ;
  unsigned int ldvarg41 ;
  unsigned int tmp___7 ;
  char *ldvarg31 ;
  void *tmp___8 ;
  gfp_t ldvarg32 ;
  u16 ldvarg35 ;
  u16 tmp___9 ;
  gfp_t ldvarg39 ;
  int tmp___10 ;
  {
  tmp = __VERIFIER_nondet_u16();
  ldvarg34 = tmp;
  tmp___0 = __VERIFIER_nondet_uint();
  ldvarg40 = tmp___0;
  tmp___1 = __VERIFIER_nondet_u16();
  ldvarg36 = tmp___1;
  tmp___2 = __VERIFIER_nondet_uint();
  ldvarg29 = tmp___2;
  tmp___3 = __VERIFIER_nondet_u16();
  ldvarg37 = tmp___3;
  tmp___4 = __VERIFIER_nondet_int();
  ldvarg33 = tmp___4;
  tmp___5 = ldv_zalloc(1UL);
  ldvarg38 = (char *)tmp___5;
  tmp___6 = ldv_zalloc(192UL);
  ldvarg43 = (struct usb_tt *)tmp___6;
  tmp___7 = __VERIFIER_nondet_uint();
  ldvarg41 = tmp___7;
  tmp___8 = ldv_zalloc(1UL);
  ldvarg31 = (char *)tmp___8;
  tmp___9 = __VERIFIER_nondet_u16();
  ldvarg35 = tmp___9;
  memset((void *)(& ldvarg30), 0, 4UL);
  memset((void *)(& ldvarg42), 0, 4UL);
  memset((void *)(& ldvarg32), 0, 4UL);
  memset((void *)(& ldvarg39), 0, 4UL);
  tmp___10 = __VERIFIER_nondet_int();
  switch (tmp___10) {
  case 0: ;
  if (ldv_state_variable_9 == 1) {
    xhci_update_hub_device(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2,
                           ldvarg43, ldvarg42);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_update_hub_device(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2,
                           ldvarg43, ldvarg42);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_update_hub_device(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2,
                           ldvarg43, ldvarg42);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 1: ;
  if (ldv_state_variable_9 == 1) {
    xhci_alloc_streams(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2,
                       xhci_plat_xhci_driver_group3, ldvarg40, ldvarg41, ldvarg39);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_alloc_streams(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2,
                       xhci_plat_xhci_driver_group3, ldvarg40, ldvarg41, ldvarg39);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_alloc_streams(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2,
                       xhci_plat_xhci_driver_group3, ldvarg40, ldvarg41, ldvarg39);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 2: ;
  if (ldv_state_variable_9 == 1) {
    xhci_irq(xhci_plat_xhci_driver_group4);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_irq(xhci_plat_xhci_driver_group4);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_irq(xhci_plat_xhci_driver_group4);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 3: ;
  if (ldv_state_variable_9 == 1) {
    xhci_reset_bandwidth(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_reset_bandwidth(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_reset_bandwidth(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 4: ;
  if (ldv_state_variable_9 == 3) {
    xhci_stop(xhci_plat_xhci_driver_group4);
    ldv_state_variable_9 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_stop(xhci_plat_xhci_driver_group4);
    ldv_state_variable_9 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_32833;
  case 5: ;
  if (ldv_state_variable_9 == 1) {
    xhci_hub_control(xhci_plat_xhci_driver_group4, (int )ldvarg37, (int )ldvarg36,
                     (int )ldvarg35, ldvarg38, (int )ldvarg34);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_hub_control(xhci_plat_xhci_driver_group4, (int )ldvarg37, (int )ldvarg36,
                     (int )ldvarg35, ldvarg38, (int )ldvarg34);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_hub_control(xhci_plat_xhci_driver_group4, (int )ldvarg37, (int )ldvarg36,
                     (int )ldvarg35, ldvarg38, (int )ldvarg34);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 6: ;
  if (ldv_state_variable_9 == 1) {
    xhci_urb_dequeue(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group0, ldvarg33);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_urb_dequeue(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group0, ldvarg33);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_urb_dequeue(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group0, ldvarg33);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 7: ;
  if (ldv_state_variable_9 == 1) {
    xhci_check_bandwidth(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_check_bandwidth(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_check_bandwidth(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 8: ;
  if (ldv_state_variable_9 == 1) {
    xhci_plat_setup(xhci_plat_xhci_driver_group4);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_plat_setup(xhci_plat_xhci_driver_group4);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_plat_setup(xhci_plat_xhci_driver_group4);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 9: ;
  if (ldv_state_variable_9 == 1) {
    xhci_enable_device(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_enable_device(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_enable_device(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 10: ;
  if (ldv_state_variable_9 == 1) {
    xhci_address_device(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_address_device(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_address_device(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 11: ;
  if (ldv_state_variable_9 == 1) {
    xhci_urb_enqueue(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group0, ldvarg32);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_urb_enqueue(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group0, ldvarg32);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_urb_enqueue(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group0, ldvarg32);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 12: ;
  if (ldv_state_variable_9 == 1) {
    ldv_retval_3 = xhci_plat_start(xhci_plat_xhci_driver_group4);
    if (ldv_retval_3 == 0) {
      ldv_state_variable_9 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_32833;
  case 13: ;
  if (ldv_state_variable_9 == 1) {
    xhci_bus_resume(xhci_plat_xhci_driver_group4);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_bus_resume(xhci_plat_xhci_driver_group4);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_bus_resume(xhci_plat_xhci_driver_group4);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 14: ;
  if (ldv_state_variable_9 == 1) {
    xhci_bus_suspend(xhci_plat_xhci_driver_group4);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_bus_suspend(xhci_plat_xhci_driver_group4);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_bus_suspend(xhci_plat_xhci_driver_group4);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 15: ;
  if (ldv_state_variable_9 == 1) {
    xhci_hub_status_data(xhci_plat_xhci_driver_group4, ldvarg31);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_hub_status_data(xhci_plat_xhci_driver_group4, ldvarg31);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_hub_status_data(xhci_plat_xhci_driver_group4, ldvarg31);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 16: ;
  if (ldv_state_variable_9 == 1) {
    xhci_endpoint_reset(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group1);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_endpoint_reset(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group1);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_endpoint_reset(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group1);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 17: ;
  if (ldv_state_variable_9 == 1) {
    xhci_discover_or_reset_device(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_discover_or_reset_device(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_discover_or_reset_device(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 18: ;
  if (ldv_state_variable_9 == 1) {
    xhci_free_streams(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2,
                      xhci_plat_xhci_driver_group3, ldvarg29, ldvarg30);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_free_streams(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2,
                      xhci_plat_xhci_driver_group3, ldvarg29, ldvarg30);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_free_streams(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2,
                      xhci_plat_xhci_driver_group3, ldvarg29, ldvarg30);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 19: ;
  if (ldv_state_variable_9 == 1) {
    xhci_alloc_dev(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_alloc_dev(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_alloc_dev(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 20: ;
  if (ldv_state_variable_9 == 2) {
    xhci_shutdown(xhci_plat_xhci_driver_group4);
    ldv_state_variable_9 = 3;
  } else {
  }
  goto ldv_32833;
  case 21: ;
  if (ldv_state_variable_9 == 1) {
    xhci_add_endpoint(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2,
                      xhci_plat_xhci_driver_group1);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_add_endpoint(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2,
                      xhci_plat_xhci_driver_group1);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_add_endpoint(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2,
                      xhci_plat_xhci_driver_group1);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 22: ;
  if (ldv_state_variable_9 == 1) {
    xhci_drop_endpoint(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2,
                       xhci_plat_xhci_driver_group1);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_drop_endpoint(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2,
                       xhci_plat_xhci_driver_group1);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_drop_endpoint(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2,
                       xhci_plat_xhci_driver_group1);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 23: ;
  if (ldv_state_variable_9 == 1) {
    xhci_free_dev(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_free_dev(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_free_dev(xhci_plat_xhci_driver_group4, xhci_plat_xhci_driver_group2);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  case 24: ;
  if (ldv_state_variable_9 == 1) {
    xhci_get_frame(xhci_plat_xhci_driver_group4);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 3) {
    xhci_get_frame(xhci_plat_xhci_driver_group4);
    ldv_state_variable_9 = 3;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    xhci_get_frame(xhci_plat_xhci_driver_group4);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_32833;
  default:
  ldv_stop();
  }
  ldv_32833: ;
  return;
}
}
int ldv___platform_driver_register_204(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  ldv_state_variable_7 = 1;
  ldv_initialize_platform_driver_7();
  return (ldv_func_res);
}
}
void ldv_platform_driver_unregister_205(struct platform_driver *drv )
{
  {
  platform_driver_unregister(drv);
  ldv_state_variable_7 = 0;
  return;
}
}
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{
  void *tmp ;
  {
  tmp = ioremap_nocache(offset, size);
  return (tmp);
}
}
__inline static struct mbus_dram_target_info const *mv_mbus_dram_info(void)
{
  {
  return ((struct mbus_dram_target_info const *)0);
}
}
static void xhci_mvebu_mbus_config(void *base , struct mbus_dram_target_info const *dram )
{
  int win ;
  struct mbus_dram_window const *cs ;
  {
  win = 0;
  goto ldv_18252;
  ldv_18251:
  writel(0U, (void volatile *)base + (unsigned long )(win * 8));
  writel(0U, (void volatile *)base + (unsigned long )(win * 8 + 4));
  win = win + 1;
  ldv_18252: ;
  if (win <= 3) {
    goto ldv_18251;
  } else {
  }
  win = 0;
  goto ldv_18256;
  ldv_18255:
  cs = (struct mbus_dram_window const *)(& dram->cs) + (unsigned long )win;
  writel((((((unsigned int )cs->size - 1U) & 4294901760U) | (unsigned int )((int )cs->mbus_attr << 8)) | (unsigned int )((int )dram->mbus_dram_target_id << 4)) | 1U,
         (void volatile *)base + (unsigned long )(win * 8));
  writel((unsigned int )cs->base & 4294901760U, (void volatile *)base + (unsigned long )(win * 8 + 4));
  win = win + 1;
  ldv_18256: ;
  if ((int )dram->num_cs > win) {
    goto ldv_18255;
  } else {
  }
  return;
}
}
int xhci_mvebu_mbus_init_quirk(struct platform_device *pdev )
{
  struct resource *res ;
  void *base ;
  struct mbus_dram_target_info const *dram ;
  resource_size_t tmp ;
  {
  res = platform_get_resource(pdev, 512U, 1U);
  if ((unsigned long )res == (unsigned long )((struct resource *)0)) {
    return (-19);
  } else {
  }
  tmp = resource_size((struct resource const *)res);
  base = ioremap(res->start, (unsigned long )tmp);
  if ((unsigned long )base == (unsigned long )((void *)0)) {
    return (-19);
  } else {
  }
  dram = mv_mbus_dram_info();
  xhci_mvebu_mbus_config(base, dram);
  iounmap((void volatile *)base);
  return (0);
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
int __VERIFIER_nondet_int(void);
int ___ratelimit(struct ratelimit_state *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __bitmap_weight(const unsigned long *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void __const_udelay(unsigned long arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __platform_driver_register(struct platform_driver *arg0, struct module *arg1) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
struct resource *__request_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2, const char *arg3, int arg4) {
  return ldv_malloc(sizeof(struct resource));
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
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
void add_timer(struct timer_list *arg0) {
  return;
}
void clk_disable(struct clk *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int clk_enable(struct clk *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int clk_prepare(struct clk *arg0) {
  return __VERIFIER_nondet_int();
}
void clk_unprepare(struct clk *arg0) {
  return;
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
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
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
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_wakeup_enable(struct device *arg0) {
  return __VERIFIER_nondet_int();
}
struct clk *devm_clk_get(struct device *arg0, const char *arg1) {
  return ldv_malloc(0UL);
}
void *dma_pool_alloc(struct dma_pool *arg0, gfp_t arg1, dma_addr_t *arg2) {
  return ldv_malloc(0UL);
}
struct dma_pool *dma_pool_create(const char *arg0, struct device *arg1, size_t arg2, size_t arg3, size_t arg4) {
  return ldv_malloc(0UL);
}
void dma_pool_destroy(struct dma_pool *arg0) {
  return;
}
void dma_pool_free(struct dma_pool *arg0, void *arg1, dma_addr_t arg2) {
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
const char *dmi_get_system_info(int arg0) {
  return ldv_malloc(sizeof(char));
}
void free_irq(unsigned int arg0, void *arg1) {
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
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void iounmap(volatile void *arg0) {
  return;
}
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
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
int ldv_complete_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_late_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_noirq_8() {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_late_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_noirq_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_prepare_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_early_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_noirq_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_early_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_noirq_8() {
  return __VERIFIER_nondet_int();
}
struct page___0 *ldv_some_page() {
  return ldv_malloc(sizeof(struct page___0));
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_late_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_noirq_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_early_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_noirq_8() {
  return __VERIFIER_nondet_int();
}
void list_del(struct list_head *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int lock_is_held(struct lockdep_map *arg0) {
  return __VERIFIER_nondet_int();
}
void lockdep_rcu_suspicious(const char *arg0, const int arg1, const char *arg2) {
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
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 *arg3) {
  return __VERIFIER_nondet_int();
}
void pci_disable_msi(struct pci_dev *arg0) {
  return;
}
void pci_disable_msix(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_msi_range(struct pci_dev *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msix_range(struct pci_dev *arg0, struct msix_entry *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_set_mwi(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_set_power_state(struct pci_dev *arg0, pci_power_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
void platform_driver_unregister(struct platform_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int platform_get_irq(struct platform_device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
struct resource *platform_get_resource(struct platform_device *arg0, unsigned int arg1, unsigned int arg2) {
  return ldv_malloc(sizeof(struct resource));
}
void *radix_tree_delete(struct radix_tree_root *arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int radix_tree_insert(struct radix_tree_root *arg0, unsigned long arg1, void *arg2) {
  return __VERIFIER_nondet_int();
}
void *radix_tree_lookup(struct radix_tree_root *arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int radix_tree_maybe_preload(gfp_t arg0) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_is_watching() {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_lockdep_current_cpu_online() {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void set_timer_slack(struct timer_list *arg0, int arg1) {
  return;
}
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return ldv_malloc(sizeof(struct scatterlist));
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
bool __VERIFIER_nondet_bool(void);
bool usb_acpi_power_manageable(struct usb_device *arg0, int arg1) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int usb_acpi_set_power_state(struct usb_device *arg0, int arg1, bool arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_add_hcd(struct usb_hcd *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_int();
}
void usb_amd_dev_put() {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_amd_find_chipset_info() {
  return __VERIFIER_nondet_int();
}
void usb_amd_quirk_pll_disable() {
  return;
}
void usb_amd_quirk_pll_enable() {
  return;
}
struct usb_hcd *usb_create_hcd(const struct hc_driver *arg0, struct device *arg1, const char *arg2) {
  return ldv_malloc(sizeof(struct usb_hcd));
}
struct usb_hcd *usb_create_shared_hcd(const struct hc_driver *arg0, struct device *arg1, const char *arg2, struct usb_hcd *arg3) {
  return ldv_malloc(sizeof(struct usb_hcd));
}
void usb_disable_xhci_ports(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_disabled() {
  return __VERIFIER_nondet_int();
}
void usb_enable_intel_xhci_ports(struct pci_dev *arg0) {
  return;
}
void usb_hc_died(struct usb_hcd *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_hcd_check_unlink_urb(struct usb_hcd *arg0, struct urb *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void usb_hcd_giveback_urb(struct usb_hcd *arg0, struct urb *arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
irqreturn_t usb_hcd_irq(int arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_hcd_is_primary_hcd(struct usb_hcd *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_hcd_link_urb_to_ep(struct usb_hcd *arg0, struct urb *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_hcd_pci_probe(struct pci_dev *arg0, const struct pci_device_id *arg1) {
  return __VERIFIER_nondet_int();
}
void usb_hcd_pci_remove(struct pci_dev *arg0) {
  return;
}
void usb_hcd_pci_shutdown(struct pci_dev *arg0) {
  return;
}
void usb_hcd_poll_rh_status(struct usb_hcd *arg0) {
  return;
}
void usb_hcd_resume_root_hub(struct usb_hcd *arg0) {
  return;
}
void usb_hcd_unlink_urb_from_ep(struct usb_hcd *arg0, struct urb *arg1) {
  return;
}
void usb_put_hcd(struct usb_hcd *arg0) {
  return;
}
void usb_remove_hcd(struct usb_hcd *arg0) {
  return;
}
void usb_root_hub_lost_power(struct usb_device *arg0) {
  return;
}
void usb_wakeup_notification(struct usb_device *arg0, unsigned int arg1) {
  return;
}
void wait_for_completion(struct completion *arg0) {
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
