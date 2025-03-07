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
typedef unsigned int uint;
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
struct call_single_data {
   struct llist_node llist ;
   void (*func)(void * ) ;
   void *info ;
   u16 flags ;
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
struct execute_work {
   struct work_struct work ;
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
struct __anonstruct_ldv_14012_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_14016_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_14017_135 {
   struct __anonstruct_ldv_14012_136 ldv_14012 ;
   struct __anonstruct_ldv_14016_137 ldv_14016 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_14017_135 ldv_14017 ;
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
union __anonunion_ldv_14126_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_14132_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14142_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14144_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14142_144 ldv_14142 ;
   int units ;
};
struct __anonstruct_ldv_14146_142 {
   union __anonunion_ldv_14144_143 ldv_14144 ;
   atomic_t _count ;
};
union __anonunion_ldv_14148_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_14146_142 ldv_14146 ;
   unsigned int active ;
};
struct __anonstruct_ldv_14149_139 {
   union __anonunion_ldv_14132_140 ldv_14132 ;
   union __anonunion_ldv_14148_141 ldv_14148 ;
};
struct __anonstruct_ldv_14156_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14161_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_14156_146 ldv_14156 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_14167_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_14126_138 ldv_14126 ;
   struct __anonstruct_ldv_14149_139 ldv_14149 ;
   union __anonunion_ldv_14161_145 ldv_14161 ;
   union __anonunion_ldv_14167_147 ldv_14167 ;
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
union __anonunion_ldv_14530_153 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_14530_153 ldv_14530 ;
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
union __anonunion_ldv_14674_154 {
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
   union __anonunion_ldv_14674_154 ldv_14674 ;
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
union __anonunion_ldv_15349_155 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_15349_155 ldv_15349 ;
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
struct scsi_cmnd;
struct Scsi_Host;
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
struct pci_driver;
union __anonunion_ldv_19781_164 {
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
   union __anonunion_ldv_19781_164 ldv_19781 ;
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
struct request_queue;
struct block_device;
struct scsi_device;
struct scsi_host_cmd_pool;
struct scsi_target;
struct scsi_transport_template;
enum blk_eh_timer_return;
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
   int (*show_info)(struct seq_file * , struct Scsi_Host * ) ;
   int (*write_info)(struct Scsi_Host * , char * , int ) ;
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
   unsigned char no_write_same : 1 ;
   unsigned char no_async_abort : 1 ;
   unsigned int max_host_blocked ;
   struct device_attribute **shost_attrs ;
   struct device_attribute **sdev_attrs ;
   struct list_head legacy_hosts ;
   u64 vendor_id ;
   unsigned int cmd_size ;
   struct scsi_host_cmd_pool *cmd_pool ;
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
struct blk_queue_tag;
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
   int eh_deadline ;
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
   unsigned char no_write_same : 1 ;
   char work_q_name[20U] ;
   struct workqueue_struct *work_q ;
   struct workqueue_struct *tmf_work_q ;
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
struct __anonstruct_sigset_t_168 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_168 sigset_t;
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
struct __anonstruct__kill_170 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_171 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_172 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_173 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_174 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_175 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_176 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_169 {
   int _pad[28U] ;
   struct __anonstruct__kill_170 _kill ;
   struct __anonstruct__timer_171 _timer ;
   struct __anonstruct__rt_172 _rt ;
   struct __anonstruct__sigchld_173 _sigchld ;
   struct __anonstruct__sigfault_174 _sigfault ;
   struct __anonstruct__sigpoll_175 _sigpoll ;
   struct __anonstruct__sigsys_176 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_169 _sifields ;
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
union __anonunion_ldv_26409_179 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_26417_180 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_26430_182 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_26431_181 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_26430_182 ldv_26430 ;
};
union __anonunion_type_data_183 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_185 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_26446_184 {
   union __anonunion_payload_185 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_26409_179 ldv_26409 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_26417_180 ldv_26417 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_26431_181 ldv_26431 ;
   union __anonunion_type_data_183 type_data ;
   union __anonunion_ldv_26446_184 ldv_26446 ;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_28237_188 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_28238_187 {
   struct __anonstruct_ldv_28237_188 ldv_28237 ;
};
struct lockref {
   union __anonunion_ldv_28238_187 ldv_28238 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_28261_190 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_28263_189 {
   struct __anonstruct_ldv_28261_190 ldv_28261 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_28263_189 ldv_28263 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_191 {
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
   union __anonunion_d_u_191 d_u ;
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
struct __anonstruct_ldv_28624_193 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_28626_192 {
   struct __anonstruct_ldv_28624_193 ldv_28624 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_28626_192 ldv_28626 ;
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
struct bio_set;
struct bio;
struct bio_integrity_payload;
struct cgroup_subsys_state;
typedef void bio_end_io_t(struct bio * , int );
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct bvec_iter {
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned int bi_idx ;
   unsigned int bi_bvec_done ;
};
struct bio {
   struct bio *bi_next ;
   struct block_device *bi_bdev ;
   unsigned long bi_flags ;
   unsigned long bi_rw ;
   struct bvec_iter bi_iter ;
   unsigned int bi_phys_segments ;
   unsigned int bi_seg_front_size ;
   unsigned int bi_seg_back_size ;
   atomic_t bi_remaining ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct io_context *bi_ioc ;
   struct cgroup_subsys_state *bi_css ;
   struct bio_integrity_payload *bi_integrity ;
   unsigned short bi_vcnt ;
   unsigned short bi_max_vecs ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct export_operations;
struct hd_geometry;
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
struct __anonstruct_kprojid_t_194 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_194 kprojid_t;
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
union __anonunion_ldv_29154_195 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_29154_195 ldv_29154 ;
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
union __anonunion_ldv_29567_198 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_29587_199 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_29604_200 {
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
   union __anonunion_ldv_29567_198 ldv_29567 ;
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
   union __anonunion_ldv_29587_199 ldv_29587 ;
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
   union __anonunion_ldv_29604_200 ldv_29604 ;
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
union __anonunion_f_u_201 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_201 f_u ;
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
struct __anonstruct_afs_203 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_202 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_203 afs ;
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
   union __anonunion_fl_u_202 fl_u ;
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
   unsigned char for_sync : 1 ;
};
struct bdi_writeback;
typedef int congested_fn(void * , int );
struct bdi_writeback {
   struct backing_dev_info *bdi ;
   unsigned int nr ;
   unsigned long last_old_flush ;
   struct delayed_work dwork ;
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
union __anonunion_ldv_33180_204 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion_ldv_33184_205 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion_ldv_33180_204 ldv_33180 ;
   union __anonunion_ldv_33184_205 ldv_33184 ;
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
   struct bvec_iter bip_iter ;
   void *bip_buf ;
   bio_end_io_t *bip_end_io ;
   unsigned short bip_slab ;
   unsigned short bip_vcnt ;
   unsigned char bip_owns_buf : 1 ;
   struct work_struct bip_work ;
   struct bio_vec *bip_vec ;
   struct bio_vec bip_inline_vecs[0U] ;
};
struct bio_list {
   struct bio *head ;
   struct bio *tail ;
};
struct bio_set {
   struct kmem_cache *bio_slab ;
   unsigned int front_pad ;
   mempool_t *bio_pool ;
   mempool_t *bvec_pool ;
   mempool_t *bio_integrity_pool ;
   mempool_t *bvec_integrity_pool ;
   spinlock_t rescue_lock ;
   struct bio_list rescue_list ;
   struct work_struct rescue_work ;
   struct workqueue_struct *rescue_workqueue ;
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
struct blk_trace;
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
union __anonunion_ldv_33688_206 {
   struct call_single_data csd ;
   unsigned long fifo_time ;
};
struct blk_mq_ctx;
union __anonunion_ldv_33703_207 {
   struct hlist_node hash ;
   struct list_head ipi_list ;
};
union __anonunion_ldv_33707_208 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_210 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_211 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion_ldv_33718_209 {
   struct __anonstruct_elv_210 elv ;
   struct __anonstruct_flush_211 flush ;
};
struct request {
   struct list_head queuelist ;
   union __anonunion_ldv_33688_206 ldv_33688 ;
   struct request_queue *q ;
   struct blk_mq_ctx *mq_ctx ;
   u64 cmd_flags ;
   enum rq_cmd_type_bits cmd_type ;
   unsigned long atomic_flags ;
   int cpu ;
   unsigned int __data_len ;
   sector_t __sector ;
   struct bio *bio ;
   struct bio *biotail ;
   union __anonunion_ldv_33703_207 ldv_33703 ;
   union __anonunion_ldv_33707_208 ldv_33707 ;
   union __anonunion_ldv_33718_209 ldv_33718 ;
   struct gendisk *rq_disk ;
   struct hd_struct *part ;
   unsigned long start_time ;
   struct request_list *rl ;
   unsigned long long start_time_ns ;
   unsigned long long io_start_time_ns ;
   unsigned short nr_phys_segments ;
   unsigned short nr_integrity_segments ;
   unsigned short ioprio ;
   void *special ;
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
struct elevator_type;
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
typedef int elevator_init_fn(struct request_queue * , struct elevator_type * );
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
   unsigned char registered : 1 ;
   struct hlist_head hash[64U] ;
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
   unsigned int chunk_sectors ;
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
   unsigned char raid_partial_stripes_expensive ;
};
struct blk_mq_ops;
struct blk_mq_hw_ctx;
struct throtl_data;
struct blk_mq_tag_set;
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
   struct blk_mq_ops *mq_ops ;
   unsigned int *mq_map ;
   struct blk_mq_ctx *queue_ctx ;
   unsigned int nr_queues ;
   struct blk_mq_hw_ctx **queue_hw_ctx ;
   unsigned int nr_hw_queues ;
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
   struct kobject mq_kobj ;
   struct device *dev ;
   int rpm_status ;
   unsigned int nr_pending ;
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
   struct blk_trace *blk_trace ;
   unsigned int flush_flags ;
   unsigned char flush_not_queueable : 1 ;
   unsigned char flush_queue_delayed : 1 ;
   unsigned char flush_pending_idx : 1 ;
   unsigned char flush_running_idx : 1 ;
   unsigned long flush_pending_since ;
   struct list_head flush_queue[2U] ;
   struct list_head flush_data_in_flight ;
   struct request *flush_rq ;
   spinlock_t mq_flush_lock ;
   struct list_head requeue_list ;
   spinlock_t requeue_lock ;
   struct work_struct requeue_work ;
   struct mutex sysfs_lock ;
   int bypass_depth ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
   struct throtl_data *td ;
   struct callback_head callback_head ;
   wait_queue_head_t mq_freeze_wq ;
   struct percpu_counter mq_usage_counter ;
   struct list_head all_q_node ;
   struct blk_mq_tag_set *tag_set ;
   struct list_head tag_set_list ;
};
struct blk_plug {
   struct list_head list ;
   struct list_head mq_list ;
   struct list_head cb_list ;
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
   void (*release)(struct gendisk * , fmode_t ) ;
   int (*rw_page)(struct block_device * , sector_t , struct page * , int ) ;
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
   int vpd_pg83_len ;
   unsigned char *vpd_pg83 ;
   int vpd_pg80_len ;
   unsigned char *vpd_pg80 ;
   unsigned char current_tag ;
   struct scsi_target *sdev_target ;
   unsigned int sdev_bflags ;
   unsigned int eh_timeout ;
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
   unsigned char wce_default_on : 1 ;
   unsigned char no_dif : 1 ;
   atomic_t disk_events_disable_depth ;
   unsigned long supported_events[1U] ;
   unsigned long pending_events[1U] ;
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
   struct kref reap_ref ;
   unsigned int channel ;
   unsigned int id ;
   unsigned char create : 1 ;
   unsigned char single_lun : 1 ;
   unsigned char pdt_1f_for_no_lun : 1 ;
   unsigned char no_report_luns : 1 ;
   unsigned char expecting_lun_change : 1 ;
   unsigned int target_busy ;
   unsigned int can_queue ;
   unsigned int target_blocked ;
   unsigned int max_target_blocked ;
   char scsi_level ;
   enum scsi_target_state state ;
   void *hostdata ;
   unsigned long starget_data[0U] ;
};
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
   struct delayed_work abort_work ;
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
struct PVSCSICmdDescResetDevice {
   u32 target ;
   u8 lun[8U] ;
};
struct PVSCSICmdDescConfigCmd {
   u64 cmpAddr ;
   u64 configPageAddress ;
   u32 configPageNum ;
   u32 _pad ;
};
struct PVSCSICmdDescSetupReqCall {
   u32 enable ;
};
struct PVSCSICmdDescAbortCmd {
   u64 context ;
   u32 target ;
   u32 _pad ;
};
struct PVSCSICmdDescSetupRings {
   u32 reqRingNumPages ;
   u32 cmpRingNumPages ;
   u64 ringsStatePPN ;
   u64 reqRingPPNs[32U] ;
   u64 cmpRingPPNs[32U] ;
};
struct PVSCSICmdDescSetupMsgRing {
   u32 numPages ;
   u32 _pad ;
   u64 ringPPNs[16U] ;
};
struct PVSCSIRingMsgDesc {
   u32 type ;
   u32 args[31U] ;
};
struct PVSCSIMsgDescDevStatusChanged {
   u32 type ;
   u32 bus ;
   u32 target ;
   u8 lun[8U] ;
   u32 pad[27U] ;
};
struct PVSCSIRingsState {
   u32 reqProdIdx ;
   u32 reqConsIdx ;
   u32 reqNumEntriesLog2 ;
   u32 cmpProdIdx ;
   u32 cmpConsIdx ;
   u32 cmpNumEntriesLog2 ;
   u32 reqCallThreshold ;
   u8 _pad[100U] ;
   u32 msgProdIdx ;
   u32 msgConsIdx ;
   u32 msgNumEntriesLog2 ;
};
struct PVSCSIRingReqDesc {
   u64 context ;
   u64 dataAddr ;
   u64 dataLen ;
   u64 senseAddr ;
   u32 senseLen ;
   u32 flags ;
   u8 cdb[16U] ;
   u8 cdbLen ;
   u8 lun[8U] ;
   u8 tag ;
   u8 bus ;
   u8 target ;
   u8 vcpuHint ;
   u8 unused[59U] ;
};
struct PVSCSISGElement {
   u64 addr ;
   u32 length ;
   u32 flags ;
};
struct PVSCSIRingCmpDesc {
   u64 context ;
   u64 dataLen ;
   u32 senseLen ;
   u16 hostStatus ;
   u16 scsiStatus ;
   u32 _pad[2U] ;
};
struct PVSCSIConfigPageHeader {
   u32 pageNum ;
   u16 numDwords ;
   u16 hostStatus ;
   u16 scsiStatus ;
   u16 reserved[3U] ;
};
struct PVSCSIConfigPageController {
   struct PVSCSIConfigPageHeader header ;
   u64 nodeWWN ;
   u16 manufacturer[64U] ;
   u16 serialNumber[64U] ;
   u16 opromVersion[32U] ;
   u16 hwVersion[32U] ;
   u16 firmwareVersion[32U] ;
   u32 numPhys ;
   u8 useConsecutivePhyWWNs ;
   u8 reserved[3U] ;
};
struct pvscsi_sg_list {
   struct PVSCSISGElement sge[128U] ;
};
struct pvscsi_ctx {
   struct scsi_cmnd *cmd ;
   struct pvscsi_sg_list *sgl ;
   struct list_head list ;
   dma_addr_t dataPA ;
   dma_addr_t sensePA ;
   dma_addr_t sglPA ;
   struct completion *abort_cmp ;
};
struct pvscsi_adapter {
   char *mmioBase ;
   unsigned int irq ;
   u8 rev ;
   bool use_msi ;
   bool use_msix ;
   bool use_msg ;
   bool use_req_threshold ;
   spinlock_t hw_lock ;
   struct workqueue_struct *workqueue ;
   struct work_struct work ;
   struct PVSCSIRingReqDesc *req_ring ;
   unsigned int req_pages ;
   unsigned int req_depth ;
   dma_addr_t reqRingPA ;
   struct PVSCSIRingCmpDesc *cmp_ring ;
   unsigned int cmp_pages ;
   dma_addr_t cmpRingPA ;
   struct PVSCSIRingMsgDesc *msg_ring ;
   unsigned int msg_pages ;
   dma_addr_t msgRingPA ;
   struct PVSCSIRingsState *rings_state ;
   dma_addr_t ringStatePA ;
   struct pci_dev *dev ;
   struct Scsi_Host *host ;
   struct list_head cmd_pool ;
   struct pvscsi_ctx *cmd_map ;
};
typedef int ldv_func_ret_type___2;
typedef struct Scsi_Host *ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
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
   union __anonunion_ldv_14132_140 __annonCompField38 ;
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
   union __anonunion_ldv_14126_138 __annonCompField37 ;
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
extern int printk(char const * , ...) ;
extern int __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                             , ...) ;
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
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
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
extern void __bad_percpu_size(void) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memset(void * , int , size_t ) ;
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
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6347.rlock);
}
}
__inline static void ldv_spin_unlock_irqrestore_8(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6347.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
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
extern bool completion_done(struct completion * ) ;
extern void complete(struct completion * ) ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern void flush_workqueue(struct workqueue_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work_on(8192, wq, work);
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
extern void pci_iounmap(struct pci_dev * , void * ) ;
extern void *pci_iomap(struct pci_dev * , int , unsigned long ) ;
extern int cpu_number ;
extern void __bad_size_call_parameter(void) ;
extern unsigned long __get_free_pages(gfp_t , unsigned int ) ;
unsigned long ldv___get_free_pages_22(gfp_t flags , unsigned int ldv_func_arg2 ) ;
extern void free_pages(unsigned long , unsigned int ) ;
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
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
__inline static void *ldv_kcalloc_14(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc_array(n, size, flags | 32768U);
  return (tmp);
}
}
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags ) ;
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
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_3 = 0;
void *ldv_irq_data_1_1 ;
int ldv_irq_1_1 = 0;
int ldv_irq_1_0 = 0;
int ldv_irq_line_1_3 ;
void *ldv_irq_data_1_0 ;
int ldv_state_variable_0 ;
struct pci_dev *pvscsi_pci_driver_group0 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
int ldv_state_variable_2 ;
void *ldv_irq_data_1_3 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
void *ldv_irq_data_1_2 ;
struct scsi_cmnd *pvscsi_template_group0 ;
struct Scsi_Host *pvscsi_template_group1 ;
int ldv_state_variable_1 ;
int ldv_irq_line_1_2 ;
int ldv_irq_1(int state , int line , void *data ) ;
void activate_suitable_irq_1(int line , void *data ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void ldv_initialize_pci_driver_2(void) ;
void choose_interrupt_1(void) ;
void ldv_initialize_scsi_host_template_3(void) ;
void disable_suitable_irq_1(int line , void *data ) ;
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
__inline static int ldv_request_irq_24(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_21(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
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
extern int dev_printk(char const * , struct device const * , char const * , ...) ;
extern int dev_warn(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
extern int pci_enable_msix(struct pci_dev * , struct msix_entry * , int ) ;
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
    ldv_24279: ;
    goto ldv_24279;
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
    ldv_24288: ;
    goto ldv_24288;
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
__inline static void *pci_alloc_consistent(struct pci_dev *hwdev , size_t size , dma_addr_t *dma_handle )
{
  void *tmp ;
  {
  tmp = dma_alloc_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                        size, dma_handle, 32U, (struct dma_attrs *)0);
  return (tmp);
}
}
__inline static void pci_free_consistent(struct pci_dev *hwdev , size_t size , void *vaddr ,
                                         dma_addr_t dma_handle )
{
  {
  dma_free_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 size, vaddr, dma_handle, (struct dma_attrs *)0);
  return;
}
}
__inline static dma_addr_t pci_map_single(struct pci_dev *hwdev , void *ptr , size_t size ,
                                          int direction )
{
  dma_addr_t tmp ;
  {
  tmp = dma_map_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             ptr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return (tmp);
}
}
__inline static void pci_unmap_single(struct pci_dev *hwdev , dma_addr_t dma_addr ,
                                      size_t size , int direction )
{
  {
  dma_unmap_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                         dma_addr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return;
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
__inline static void *shost_priv(struct Scsi_Host *shost )
{
  {
  return ((void *)(& shost->hostdata));
}
}
extern struct Scsi_Host *scsi_host_alloc(struct scsi_host_template * , int ) ;
struct Scsi_Host *ldv_scsi_host_alloc_23(struct scsi_host_template *sht , int privsize ) ;
extern int scsi_add_host_with_dma(struct Scsi_Host * , struct device * , struct device * ) ;
int ldv_scsi_add_host_with_dma_20(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev ) ;
extern void scsi_scan_host(struct Scsi_Host * ) ;
extern void scsi_remove_host(struct Scsi_Host * ) ;
void ldv_scsi_remove_host_25(struct Scsi_Host *shost ) ;
extern struct Scsi_Host *scsi_host_get(struct Scsi_Host * ) ;
extern void scsi_host_put(struct Scsi_Host * ) ;
extern void scsi_cmd_get_serial(struct Scsi_Host * , struct scsi_cmnd * ) ;
__inline static int scsi_add_host(struct Scsi_Host *host , struct device *dev )
{
  int tmp ;
  {
  tmp = ldv_scsi_add_host_with_dma_20(host, dev, dev);
  return (tmp);
}
}
extern int scsi_add_device(struct Scsi_Host * , uint , uint , uint ) ;
extern void scsi_remove_device(struct scsi_device * ) ;
extern void scsi_device_put(struct scsi_device * ) ;
extern struct scsi_device *scsi_device_lookup(struct Scsi_Host * , uint , uint ,
                                              uint ) ;
extern void scsi_adjust_queue_depth(struct scsi_device * , int , int ) ;
extern int scsi_dma_map(struct scsi_cmnd * ) ;
extern void scsi_dma_unmap(struct scsi_cmnd * ) ;
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
__inline static void scsi_set_resid(struct scsi_cmnd *cmd , int resid )
{
  {
  cmd->sdb.resid = resid;
  return;
}
}
__inline static int scsi_get_tag_type(struct scsi_device *sdev )
{
  {
  if ((unsigned int )*((unsigned char *)sdev + 329UL) == 0U) {
    return (0);
  } else {
  }
  if ((unsigned int )*((unsigned char *)sdev + 329UL) != 0U) {
    return (34);
  } else {
  }
  if ((unsigned int )*((unsigned char *)sdev + 329UL) != 0U) {
    return (32);
  } else {
  }
  return (0);
}
}
static int pvscsi_ring_pages ;
static int pvscsi_msg_ring_pages = 1;
static int pvscsi_cmd_per_lun = 254;
static bool pvscsi_disable_msi ;
static bool pvscsi_disable_msix ;
static bool pvscsi_use_msg = 1;
static bool pvscsi_use_req_threshold = 1;
static struct pci_device_id const pvscsi_pci_tbl[2U] = { {5549U, 1984U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__pvscsi_pci_tbl_device_table ;
static struct device *pvscsi_dev(struct pvscsi_adapter const *adapter )
{
  {
  return (& (adapter->dev)->dev);
}
}
static struct pvscsi_ctx *pvscsi_find_context(struct pvscsi_adapter const *adapter ,
                                              struct scsi_cmnd *cmd )
{
  struct pvscsi_ctx *ctx ;
  struct pvscsi_ctx *end ;
  {
  end = adapter->cmd_map + (unsigned long )adapter->req_depth;
  ctx = adapter->cmd_map;
  goto ldv_35988;
  ldv_35987: ;
  if ((unsigned long )ctx->cmd == (unsigned long )cmd) {
    return (ctx);
  } else {
  }
  ctx = ctx + 1;
  ldv_35988: ;
  if ((unsigned long )ctx < (unsigned long )end) {
    goto ldv_35987;
  } else {
  }
  return ((struct pvscsi_ctx *)0);
}
}
static struct pvscsi_ctx *pvscsi_acquire_context(struct pvscsi_adapter *adapter ,
                                                 struct scsi_cmnd *cmd )
{
  struct pvscsi_ctx *ctx ;
  int tmp ;
  struct list_head const *__mptr ;
  {
  tmp = list_empty((struct list_head const *)(& adapter->cmd_pool));
  if (tmp != 0) {
    return ((struct pvscsi_ctx *)0);
  } else {
  }
  __mptr = (struct list_head const *)adapter->cmd_pool.next;
  ctx = (struct pvscsi_ctx *)__mptr + 0xfffffffffffffff0UL;
  ctx->cmd = cmd;
  list_del(& ctx->list);
  return (ctx);
}
}
static void pvscsi_release_context(struct pvscsi_adapter *adapter , struct pvscsi_ctx *ctx )
{
  {
  ctx->cmd = (struct scsi_cmnd *)0;
  ctx->abort_cmp = (struct completion *)0;
  list_add(& ctx->list, & adapter->cmd_pool);
  return;
}
}
static u64 pvscsi_map_context(struct pvscsi_adapter const *adapter , struct pvscsi_ctx const *ctx )
{
  {
  return ((u64 )(((long )ctx - (long )adapter->cmd_map) / 64L + 1L));
}
}
static struct pvscsi_ctx *pvscsi_get_context(struct pvscsi_adapter const *adapter ,
                                             u64 context )
{
  {
  return ((struct pvscsi_ctx *)(adapter->cmd_map + ((unsigned long )context + 0xffffffffffffffffUL)));
}
}
static void pvscsi_reg_write(struct pvscsi_adapter const *adapter , u32 offset ,
                             u32 val )
{
  {
  writel(val, (void volatile *)adapter->mmioBase + (unsigned long )offset);
  return;
}
}
static u32 pvscsi_reg_read(struct pvscsi_adapter const *adapter , u32 offset )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)adapter->mmioBase + (unsigned long )offset);
  return (tmp);
}
}
static u32 pvscsi_read_intr_status(struct pvscsi_adapter const *adapter )
{
  u32 tmp ;
  {
  tmp = pvscsi_reg_read(adapter, 4108U);
  return (tmp);
}
}
static void pvscsi_write_intr_status(struct pvscsi_adapter const *adapter , u32 val )
{
  {
  pvscsi_reg_write(adapter, 4108U, val);
  return;
}
}
static void pvscsi_unmask_intr(struct pvscsi_adapter const *adapter )
{
  u32 intr_bits ;
  {
  intr_bits = 3U;
  if ((int )adapter->use_msg) {
    intr_bits = intr_bits | 12U;
  } else {
  }
  pvscsi_reg_write(adapter, 8208U, intr_bits);
  return;
}
}
static void pvscsi_mask_intr(struct pvscsi_adapter const *adapter )
{
  {
  pvscsi_reg_write(adapter, 8208U, 0U);
  return;
}
}
static void pvscsi_write_cmd_desc(struct pvscsi_adapter const *adapter , u32 cmd ,
                                  void const *desc , size_t len )
{
  u32 const *ptr ;
  size_t i ;
  {
  ptr = (u32 const *)desc;
  len = len / 4UL;
  pvscsi_reg_write(adapter, 0U, cmd);
  i = 0UL;
  goto ldv_36041;
  ldv_36040:
  pvscsi_reg_write(adapter, 4U, *(ptr + i));
  i = i + 1UL;
  ldv_36041: ;
  if (i < len) {
    goto ldv_36040;
  } else {
  }
  return;
}
}
static void pvscsi_abort_cmd(struct pvscsi_adapter const *adapter , struct pvscsi_ctx const *ctx )
{
  struct PVSCSICmdDescAbortCmd cmd ;
  {
  cmd.context = 0ULL;
  cmd.target = 0U;
  cmd._pad = 0U;
  cmd.target = ((ctx->cmd)->device)->id;
  cmd.context = pvscsi_map_context(adapter, ctx);
  pvscsi_write_cmd_desc(adapter, 6U, (void const *)(& cmd), 16UL);
  return;
}
}
static void pvscsi_kick_rw_io(struct pvscsi_adapter const *adapter )
{
  {
  pvscsi_reg_write(adapter, 16408U, 0U);
  return;
}
}
static void pvscsi_process_request_ring(struct pvscsi_adapter const *adapter )
{
  {
  pvscsi_reg_write(adapter, 12308U, 0U);
  return;
}
}
static int scsi_is_rw(unsigned char op )
{
  {
  return ((((((((unsigned int )op == 8U || (unsigned int )op == 10U) || (unsigned int )op == 40U) || (unsigned int )op == 42U) || (unsigned int )op == 168U) || (unsigned int )op == 170U) || (unsigned int )op == 136U) || (unsigned int )op == 138U);
}
}
static void pvscsi_kick_io(struct pvscsi_adapter const *adapter , unsigned char op )
{
  struct PVSCSIRingsState *s ;
  int tmp ;
  {
  tmp = scsi_is_rw((int )op);
  if (tmp != 0) {
    s = adapter->rings_state;
    if (! ((_Bool )adapter->use_req_threshold) || s->reqProdIdx - s->reqConsIdx >= s->reqCallThreshold) {
      pvscsi_kick_rw_io(adapter);
    } else {
    }
  } else {
    pvscsi_process_request_ring(adapter);
  }
  return;
}
}
static void ll_adapter_reset(struct pvscsi_adapter const *adapter )
{
  struct _ddebug descriptor ;
  struct device *tmp ;
  long tmp___0 ;
  {
  descriptor.modname = "vmw_pvscsi";
  descriptor.function = "ll_adapter_reset";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5480/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/vmw_pvscsi.o.c.prepared";
  descriptor.format = "Adapter Reset on %p\n";
  descriptor.lineno = 357U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = pvscsi_dev(adapter);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp, "Adapter Reset on %p\n",
                      adapter);
  } else {
  }
  pvscsi_write_cmd_desc(adapter, 1U, (void const *)0, 0UL);
  return;
}
}
static void ll_bus_reset(struct pvscsi_adapter const *adapter )
{
  struct _ddebug descriptor ;
  struct device *tmp ;
  long tmp___0 ;
  {
  descriptor.modname = "vmw_pvscsi";
  descriptor.function = "ll_bus_reset";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5480/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/vmw_pvscsi.o.c.prepared";
  descriptor.format = "Resetting bus on %p\n";
  descriptor.lineno = 364U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = pvscsi_dev(adapter);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp, "Resetting bus on %p\n",
                      adapter);
  } else {
  }
  pvscsi_write_cmd_desc(adapter, 4U, (void const *)0, 0UL);
  return;
}
}
static void ll_device_reset(struct pvscsi_adapter const *adapter , u32 target )
{
  struct PVSCSICmdDescResetDevice cmd ;
  struct _ddebug descriptor ;
  struct device *tmp ;
  long tmp___0 ;
  {
  cmd.target = 0U;
  cmd.lun[0] = (unsigned char)0;
  cmd.lun[1] = (unsigned char)0;
  cmd.lun[2] = (unsigned char)0;
  cmd.lun[3] = (unsigned char)0;
  cmd.lun[4] = (unsigned char)0;
  cmd.lun[5] = (unsigned char)0;
  cmd.lun[6] = (unsigned char)0;
  cmd.lun[7] = (unsigned char)0;
  descriptor.modname = "vmw_pvscsi";
  descriptor.function = "ll_device_reset";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5480/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/vmw_pvscsi.o.c.prepared";
  descriptor.format = "Resetting device: target=%u\n";
  descriptor.lineno = 373U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = pvscsi_dev(adapter);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp, "Resetting device: target=%u\n",
                      target);
  } else {
  }
  cmd.target = target;
  pvscsi_write_cmd_desc(adapter, 5U, (void const *)(& cmd), 12UL);
  return;
}
}
static void pvscsi_create_sg(struct pvscsi_ctx *ctx , struct scatterlist *sg , unsigned int count )
{
  unsigned int i ;
  struct PVSCSISGElement *sge ;
  long tmp ;
  {
  tmp = ldv__builtin_expect(count > 128U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5480/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/vmw_pvscsi.o.c.prepared"),
                         "i" (387), "i" (12UL));
    ldv_36086: ;
    goto ldv_36086;
  } else {
  }
  sge = (struct PVSCSISGElement *)(& (ctx->sgl)->sge);
  i = 0U;
  goto ldv_36088;
  ldv_36087:
  (sge + (unsigned long )i)->addr = sg->dma_address;
  (sge + (unsigned long )i)->length = sg->dma_length;
  (sge + (unsigned long )i)->flags = 0U;
  i = i + 1U;
  sg = sg + 1;
  ldv_36088: ;
  if (i < count) {
    goto ldv_36087;
  } else {
  }
  return;
}
}
static void pvscsi_map_buffers(struct pvscsi_adapter *adapter , struct pvscsi_ctx *ctx ,
                               struct scsi_cmnd *cmd , struct PVSCSIRingReqDesc *e )
{
  unsigned int count ;
  unsigned int bufflen ;
  unsigned int tmp ;
  struct scatterlist *sg ;
  int segs ;
  int tmp___0 ;
  {
  tmp = scsi_bufflen(cmd);
  bufflen = tmp;
  e->dataLen = (u64 )bufflen;
  e->dataAddr = 0ULL;
  if (bufflen == 0U) {
    return;
  } else {
  }
  sg = scsi_sglist(cmd);
  count = scsi_sg_count(cmd);
  if (count != 0U) {
    tmp___0 = scsi_dma_map(cmd);
    segs = tmp___0;
    if (segs > 1) {
      pvscsi_create_sg(ctx, sg, (unsigned int )segs);
      e->flags = e->flags | 1U;
      ctx->sglPA = pci_map_single(adapter->dev, (void *)ctx->sgl, 4096UL, 1);
      e->dataAddr = ctx->sglPA;
    } else {
      e->dataAddr = sg->dma_address;
    }
  } else {
    ctx->dataPA = pci_map_single(adapter->dev, (void *)sg, (size_t )bufflen, (int )cmd->sc_data_direction);
    e->dataAddr = ctx->dataPA;
  }
  return;
}
}
static void pvscsi_unmap_buffers(struct pvscsi_adapter const *adapter , struct pvscsi_ctx *ctx )
{
  struct scsi_cmnd *cmd ;
  unsigned int bufflen ;
  unsigned int count ;
  unsigned int tmp ;
  {
  cmd = ctx->cmd;
  bufflen = scsi_bufflen(cmd);
  if (bufflen != 0U) {
    tmp = scsi_sg_count(cmd);
    count = tmp;
    if (count != 0U) {
      scsi_dma_unmap(cmd);
      if (ctx->sglPA != 0ULL) {
        pci_unmap_single(adapter->dev, ctx->sglPA, 4096UL, 1);
        ctx->sglPA = 0ULL;
      } else {
      }
    } else {
      pci_unmap_single(adapter->dev, ctx->dataPA, (size_t )bufflen, (int )cmd->sc_data_direction);
    }
  } else {
  }
  if ((unsigned long )cmd->sense_buffer != (unsigned long )((unsigned char *)0U)) {
    pci_unmap_single(adapter->dev, ctx->sensePA, 96UL, 2);
  } else {
  }
  return;
}
}
static int pvscsi_allocate_rings(struct pvscsi_adapter *adapter )
{
  void *tmp ;
  int _min1 ;
  int _min2 ;
  void *tmp___0 ;
  int _min1___0 ;
  int _min2___0 ;
  void *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  int _min1___1 ;
  int _min2___1 ;
  void *tmp___5 ;
  long tmp___6 ;
  {
  tmp = pci_alloc_consistent(adapter->dev, 4096UL, & adapter->ringStatePA);
  adapter->rings_state = (struct PVSCSIRingsState *)tmp;
  if ((unsigned long )adapter->rings_state == (unsigned long )((struct PVSCSIRingsState *)0)) {
    return (-12);
  } else {
  }
  _min1 = 32;
  _min2 = pvscsi_ring_pages;
  adapter->req_pages = (unsigned int )(_min1 < _min2 ? _min1 : _min2);
  adapter->req_depth = adapter->req_pages * 32U;
  tmp___0 = pci_alloc_consistent(adapter->dev, (unsigned long )adapter->req_pages * 4096UL,
                                 & adapter->reqRingPA);
  adapter->req_ring = (struct PVSCSIRingReqDesc *)tmp___0;
  if ((unsigned long )adapter->req_ring == (unsigned long )((struct PVSCSIRingReqDesc *)0)) {
    return (-12);
  } else {
  }
  _min1___0 = 32;
  _min2___0 = pvscsi_ring_pages;
  adapter->cmp_pages = (unsigned int )(_min1___0 < _min2___0 ? _min1___0 : _min2___0);
  tmp___1 = pci_alloc_consistent(adapter->dev, (unsigned long )adapter->cmp_pages * 4096UL,
                                 & adapter->cmpRingPA);
  adapter->cmp_ring = (struct PVSCSIRingCmpDesc *)tmp___1;
  if ((unsigned long )adapter->cmp_ring == (unsigned long )((struct PVSCSIRingCmpDesc *)0)) {
    return (-12);
  } else {
  }
  tmp___2 = ldv__builtin_expect((adapter->ringStatePA & 4095ULL) != 0ULL, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5480/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/vmw_pvscsi.o.c.prepared"),
                         "i" (491), "i" (12UL));
    ldv_36116: ;
    goto ldv_36116;
  } else {
  }
  tmp___3 = ldv__builtin_expect((adapter->reqRingPA & 4095ULL) != 0ULL, 0L);
  if (tmp___3 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5480/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/vmw_pvscsi.o.c.prepared"),
                         "i" (492), "i" (12UL));
    ldv_36117: ;
    goto ldv_36117;
  } else {
  }
  tmp___4 = ldv__builtin_expect((adapter->cmpRingPA & 4095ULL) != 0ULL, 0L);
  if (tmp___4 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5480/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/vmw_pvscsi.o.c.prepared"),
                         "i" (493), "i" (12UL));
    ldv_36118: ;
    goto ldv_36118;
  } else {
  }
  if (! adapter->use_msg) {
    return (0);
  } else {
  }
  _min1___1 = 16;
  _min2___1 = pvscsi_msg_ring_pages;
  adapter->msg_pages = (unsigned int )(_min1___1 < _min2___1 ? _min1___1 : _min2___1);
  tmp___5 = pci_alloc_consistent(adapter->dev, (unsigned long )adapter->msg_pages * 4096UL,
                                 & adapter->msgRingPA);
  adapter->msg_ring = (struct PVSCSIRingMsgDesc *)tmp___5;
  if ((unsigned long )adapter->msg_ring == (unsigned long )((struct PVSCSIRingMsgDesc *)0)) {
    return (-12);
  } else {
  }
  tmp___6 = ldv__builtin_expect((adapter->msgRingPA & 4095ULL) != 0ULL, 0L);
  if (tmp___6 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5480/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/vmw_pvscsi.o.c.prepared"),
                         "i" (505), "i" (12UL));
    ldv_36122: ;
    goto ldv_36122;
  } else {
  }
  return (0);
}
}
static void pvscsi_setup_all_rings(struct pvscsi_adapter const *adapter )
{
  struct PVSCSICmdDescSetupRings cmd ;
  dma_addr_t base ;
  unsigned int i ;
  struct PVSCSICmdDescSetupMsgRing cmd_msg ;
  {
  cmd.reqRingNumPages = 0U;
  cmd.cmpRingNumPages = 0U;
  cmd.ringsStatePPN = 0ULL;
  cmd.reqRingPPNs[0] = 0ULL;
  cmd.reqRingPPNs[1] = 0ULL;
  cmd.reqRingPPNs[2] = 0ULL;
  cmd.reqRingPPNs[3] = 0ULL;
  cmd.reqRingPPNs[4] = 0ULL;
  cmd.reqRingPPNs[5] = 0ULL;
  cmd.reqRingPPNs[6] = 0ULL;
  cmd.reqRingPPNs[7] = 0ULL;
  cmd.reqRingPPNs[8] = 0ULL;
  cmd.reqRingPPNs[9] = 0ULL;
  cmd.reqRingPPNs[10] = 0ULL;
  cmd.reqRingPPNs[11] = 0ULL;
  cmd.reqRingPPNs[12] = 0ULL;
  cmd.reqRingPPNs[13] = 0ULL;
  cmd.reqRingPPNs[14] = 0ULL;
  cmd.reqRingPPNs[15] = 0ULL;
  cmd.reqRingPPNs[16] = 0ULL;
  cmd.reqRingPPNs[17] = 0ULL;
  cmd.reqRingPPNs[18] = 0ULL;
  cmd.reqRingPPNs[19] = 0ULL;
  cmd.reqRingPPNs[20] = 0ULL;
  cmd.reqRingPPNs[21] = 0ULL;
  cmd.reqRingPPNs[22] = 0ULL;
  cmd.reqRingPPNs[23] = 0ULL;
  cmd.reqRingPPNs[24] = 0ULL;
  cmd.reqRingPPNs[25] = 0ULL;
  cmd.reqRingPPNs[26] = 0ULL;
  cmd.reqRingPPNs[27] = 0ULL;
  cmd.reqRingPPNs[28] = 0ULL;
  cmd.reqRingPPNs[29] = 0ULL;
  cmd.reqRingPPNs[30] = 0ULL;
  cmd.reqRingPPNs[31] = 0ULL;
  cmd.cmpRingPPNs[0] = 0ULL;
  cmd.cmpRingPPNs[1] = 0ULL;
  cmd.cmpRingPPNs[2] = 0ULL;
  cmd.cmpRingPPNs[3] = 0ULL;
  cmd.cmpRingPPNs[4] = 0ULL;
  cmd.cmpRingPPNs[5] = 0ULL;
  cmd.cmpRingPPNs[6] = 0ULL;
  cmd.cmpRingPPNs[7] = 0ULL;
  cmd.cmpRingPPNs[8] = 0ULL;
  cmd.cmpRingPPNs[9] = 0ULL;
  cmd.cmpRingPPNs[10] = 0ULL;
  cmd.cmpRingPPNs[11] = 0ULL;
  cmd.cmpRingPPNs[12] = 0ULL;
  cmd.cmpRingPPNs[13] = 0ULL;
  cmd.cmpRingPPNs[14] = 0ULL;
  cmd.cmpRingPPNs[15] = 0ULL;
  cmd.cmpRingPPNs[16] = 0ULL;
  cmd.cmpRingPPNs[17] = 0ULL;
  cmd.cmpRingPPNs[18] = 0ULL;
  cmd.cmpRingPPNs[19] = 0ULL;
  cmd.cmpRingPPNs[20] = 0ULL;
  cmd.cmpRingPPNs[21] = 0ULL;
  cmd.cmpRingPPNs[22] = 0ULL;
  cmd.cmpRingPPNs[23] = 0ULL;
  cmd.cmpRingPPNs[24] = 0ULL;
  cmd.cmpRingPPNs[25] = 0ULL;
  cmd.cmpRingPPNs[26] = 0ULL;
  cmd.cmpRingPPNs[27] = 0ULL;
  cmd.cmpRingPPNs[28] = 0ULL;
  cmd.cmpRingPPNs[29] = 0ULL;
  cmd.cmpRingPPNs[30] = 0ULL;
  cmd.cmpRingPPNs[31] = 0ULL;
  cmd.ringsStatePPN = adapter->ringStatePA >> 12;
  cmd.reqRingNumPages = adapter->req_pages;
  cmd.cmpRingNumPages = adapter->cmp_pages;
  base = adapter->reqRingPA;
  i = 0U;
  goto ldv_36130;
  ldv_36129:
  cmd.reqRingPPNs[i] = base >> 12;
  base = base + 4096ULL;
  i = i + 1U;
  ldv_36130: ;
  if ((unsigned int )adapter->req_pages > i) {
    goto ldv_36129;
  } else {
  }
  base = adapter->cmpRingPA;
  i = 0U;
  goto ldv_36133;
  ldv_36132:
  cmd.cmpRingPPNs[i] = base >> 12;
  base = base + 4096ULL;
  i = i + 1U;
  ldv_36133: ;
  if ((unsigned int )adapter->cmp_pages > i) {
    goto ldv_36132;
  } else {
  }
  memset((void *)adapter->rings_state, 0, 4096UL);
  memset((void *)adapter->req_ring, 0, (unsigned long )adapter->req_pages * 4096UL);
  memset((void *)adapter->cmp_ring, 0, (unsigned long )adapter->cmp_pages * 4096UL);
  pvscsi_write_cmd_desc(adapter, 3U, (void const *)(& cmd), 528UL);
  if ((int )adapter->use_msg) {
    cmd_msg.numPages = 0U;
    cmd_msg._pad = 0U;
    cmd_msg.ringPPNs[0] = 0ULL;
    cmd_msg.ringPPNs[1] = 0ULL;
    cmd_msg.ringPPNs[2] = 0ULL;
    cmd_msg.ringPPNs[3] = 0ULL;
    cmd_msg.ringPPNs[4] = 0ULL;
    cmd_msg.ringPPNs[5] = 0ULL;
    cmd_msg.ringPPNs[6] = 0ULL;
    cmd_msg.ringPPNs[7] = 0ULL;
    cmd_msg.ringPPNs[8] = 0ULL;
    cmd_msg.ringPPNs[9] = 0ULL;
    cmd_msg.ringPPNs[10] = 0ULL;
    cmd_msg.ringPPNs[11] = 0ULL;
    cmd_msg.ringPPNs[12] = 0ULL;
    cmd_msg.ringPPNs[13] = 0ULL;
    cmd_msg.ringPPNs[14] = 0ULL;
    cmd_msg.ringPPNs[15] = 0ULL;
    cmd_msg.numPages = adapter->msg_pages;
    base = adapter->msgRingPA;
    i = 0U;
    goto ldv_36137;
    ldv_36136:
    cmd_msg.ringPPNs[i] = base >> 12;
    base = base + 4096ULL;
    i = i + 1U;
    ldv_36137: ;
    if ((unsigned int )adapter->msg_pages > i) {
      goto ldv_36136;
    } else {
    }
    memset((void *)adapter->msg_ring, 0, (unsigned long )adapter->msg_pages * 4096UL);
    pvscsi_write_cmd_desc(adapter, 8U, (void const *)(& cmd_msg), 136UL);
  } else {
  }
  return;
}
}
static int pvscsi_change_queue_depth(struct scsi_device *sdev , int qdepth , int reason )
{
  int max_depth ;
  struct Scsi_Host *shost ;
  int tmp ;
  {
  shost = sdev->host;
  if (reason != 0) {
    return (-95);
  } else {
  }
  max_depth = shost->can_queue;
  if ((unsigned int )*((unsigned char *)sdev + 329UL) == 0U) {
    max_depth = 1;
  } else {
  }
  if (qdepth > max_depth) {
    qdepth = max_depth;
  } else {
  }
  tmp = scsi_get_tag_type(sdev);
  scsi_adjust_queue_depth(sdev, tmp, qdepth);
  if ((unsigned int )sdev->inquiry_len > 7U) {
    dev_printk("\016", (struct device const *)(& sdev->sdev_gendev), "qdepth(%d), tagged(%d), simple(%d), ordered(%d), scsi_level(%d), cmd_que(%d)\n",
               (int )sdev->queue_depth, (int )sdev->tagged_supported, (int )sdev->simple_tags,
               (int )sdev->ordered_tags, (int )sdev->scsi_level, ((int )*(sdev->inquiry + 7UL) & 2) >> 1);
  } else {
  }
  return ((int )sdev->queue_depth);
}
}
static void pvscsi_complete_request(struct pvscsi_adapter *adapter , struct PVSCSIRingCmpDesc const *e )
{
  struct pvscsi_ctx *ctx ;
  struct scsi_cmnd *cmd ;
  struct completion *abort_cmp ;
  u32 btstat ;
  u32 sdstat ;
  unsigned int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  btstat = (u32 )e->hostStatus;
  sdstat = (u32 )e->scsiStatus;
  ctx = pvscsi_get_context((struct pvscsi_adapter const *)adapter, e->context);
  cmd = ctx->cmd;
  abort_cmp = ctx->abort_cmp;
  pvscsi_unmap_buffers((struct pvscsi_adapter const *)adapter, ctx);
  pvscsi_release_context(adapter, ctx);
  if ((unsigned long )abort_cmp != (unsigned long )((struct completion *)0)) {
    complete(abort_cmp);
    return;
  } else {
  }
  cmd->result = 0;
  if (sdstat != 0U && ((btstat == 0U || btstat == 10U) || btstat == 11U)) {
    cmd->result = (int )sdstat;
    if (sdstat == 2U && (unsigned long )cmd->sense_buffer != (unsigned long )((unsigned char *)0U)) {
      cmd->result = cmd->result | 134217728;
    } else {
    }
  } else {
    switch (btstat) {
    case 0U: ;
    case 10U: ;
    case 11U:
    cmd->result = 0;
    goto ldv_36158;
    case 18U: ;
    case 12U:
    tmp = scsi_bufflen(cmd);
    scsi_set_resid(cmd, (int )(tmp - (unsigned int )e->dataLen));
    cmd->result = 458752;
    goto ldv_36158;
    case 17U:
    cmd->result = 262144;
    goto ldv_36158;
    case 23U: ;
    case 28U: ;
    case 29U:
    cmd->result = 83886080;
    case 32U: ;
    case 20U: ;
    case 48U: ;
    case 33U: ;
    case 36U: ;
    case 39U: ;
    case 19U: ;
    case 27U:
    cmd->result = cmd->result | 458752;
    goto ldv_36158;
    case 34U: ;
    case 35U: ;
    case 37U:
    cmd->result = 524288;
    goto ldv_36158;
    case 38U:
    cmd->result = 327680;
    goto ldv_36158;
    case 52U:
    cmd->result = 393216;
    goto ldv_36158;
    default:
    cmd->result = 458752;
    if ((unsigned long )(cmd->request)->rq_disk != (unsigned long )((struct gendisk *)0)) {
      dev_printk("\017", (struct device const *)(& (cmd->device)->sdev_gendev),
                 "[%s] Unknown completion status: 0x%x\n", (char *)(& ((cmd->request)->rq_disk)->disk_name),
                 btstat);
    } else {
      dev_printk("\017", (struct device const *)(& (cmd->device)->sdev_gendev),
                 "Unknown completion status: 0x%x\n", btstat);
    }
    }
    ldv_36158: ;
  }
  descriptor.modname = "vmw_pvscsi";
  descriptor.function = "pvscsi_complete_request";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5480/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/vmw_pvscsi.o.c.prepared";
  descriptor.format = "cmd=%p %x ctx=%p result=0x%x status=0x%x,%x\n";
  descriptor.lineno = 683U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (cmd->device)->sdev_gendev),
                      "cmd=%p %x ctx=%p result=0x%x status=0x%x,%x\n", cmd, (int )*(cmd->cmnd),
                      ctx, cmd->result, btstat, sdstat);
  } else {
  }
  (*(cmd->scsi_done))(cmd);
  return;
}
}
static void pvscsi_process_completion_ring(struct pvscsi_adapter *adapter )
{
  struct PVSCSIRingsState *s ;
  struct PVSCSIRingCmpDesc *ring ;
  u32 cmp_entries ;
  struct PVSCSIRingCmpDesc *e ;
  {
  s = adapter->rings_state;
  ring = adapter->cmp_ring;
  cmp_entries = s->cmpNumEntriesLog2;
  goto ldv_36189;
  ldv_36188:
  e = ring + (unsigned long )(s->cmpConsIdx & (u32 )((1 << (int )cmp_entries) + -1));
  __asm__ volatile ("": : : "memory");
  pvscsi_complete_request(adapter, (struct PVSCSIRingCmpDesc const *)e);
  __asm__ volatile ("": : : "memory");
  s->cmpConsIdx = s->cmpConsIdx + 1U;
  ldv_36189: ;
  if (s->cmpConsIdx != s->cmpProdIdx) {
    goto ldv_36188;
  } else {
  }
  return;
}
}
extern void *memcpy(void * , void const * , size_t ) ;
static int pvscsi_queue_ring(struct pvscsi_adapter *adapter , struct pvscsi_ctx *ctx ,
                             struct scsi_cmnd *cmd )
{
  struct PVSCSIRingsState *s ;
  struct PVSCSIRingReqDesc *e ;
  struct scsi_device *sdev ;
  u32 req_entries ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  size_t __len ;
  void *__ret ;
  {
  s = adapter->rings_state;
  sdev = cmd->device;
  req_entries = s->reqNumEntriesLog2;
  if ((s->reqProdIdx - s->cmpConsIdx) >> (int )req_entries != 0U) {
    if ((unsigned long )(cmd->request)->rq_disk != (unsigned long )((struct gendisk *)0)) {
      dev_printk("\v", (struct device const *)(& (cmd->device)->sdev_gendev), "[%s] vmw_pvscsi: ring full: reqProdIdx=%d cmpConsIdx=%d\n",
                 (char *)(& ((cmd->request)->rq_disk)->disk_name), s->reqProdIdx,
                 s->cmpConsIdx);
    } else {
      dev_printk("\v", (struct device const *)(& (cmd->device)->sdev_gendev), "vmw_pvscsi: ring full: reqProdIdx=%d cmpConsIdx=%d\n",
                 s->reqProdIdx, s->cmpConsIdx);
    }
    return (-1);
  } else {
  }
  e = adapter->req_ring + (unsigned long )(s->reqProdIdx & (u32 )((1 << (int )req_entries) + -1));
  e->bus = (u8 )sdev->channel;
  e->target = (u8 )sdev->id;
  memset((void *)(& e->lun), 0, 8UL);
  e->lun[1] = (u8 )sdev->lun;
  if ((unsigned long )cmd->sense_buffer != (unsigned long )((unsigned char *)0U)) {
    ctx->sensePA = pci_map_single(adapter->dev, (void *)cmd->sense_buffer, 96UL, 2);
    e->senseAddr = ctx->sensePA;
    e->senseLen = 96U;
  } else {
    e->senseLen = 0U;
    e->senseAddr = 0ULL;
  }
  e->cdbLen = (u8 )cmd->cmd_len;
  __vpp_verify = (void const *)0;
  switch (4UL) {
  case 1UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (cpu_number));
  goto ldv_36205;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_36205;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_36205;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_36205;
  default:
  __bad_percpu_size();
  }
  ldv_36205:
  pscr_ret__ = pfo_ret__;
  goto ldv_36211;
  case 2UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_36215;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_36215;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_36215;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_36215;
  default:
  __bad_percpu_size();
  }
  ldv_36215:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_36211;
  case 4UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_36224;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_36224;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_36224;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_36224;
  default:
  __bad_percpu_size();
  }
  ldv_36224:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_36211;
  case 8UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_36233;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_36233;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_36233;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_36233;
  default:
  __bad_percpu_size();
  }
  ldv_36233:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_36211;
  default:
  __bad_size_call_parameter();
  goto ldv_36211;
  }
  ldv_36211:
  e->vcpuHint = (u8 )pscr_ret__;
  __len = (size_t )e->cdbLen;
  __ret = memcpy((void *)(& e->cdb), (void const *)cmd->cmnd, __len);
  e->tag = 32U;
  if ((unsigned int )*((unsigned char *)sdev + 329UL) != 0U && ((unsigned int )cmd->tag == 33U || (unsigned int )cmd->tag == 34U)) {
    e->tag = cmd->tag;
  } else {
  }
  if ((unsigned int )cmd->sc_data_direction == 2U) {
    e->flags = 8U;
  } else
  if ((unsigned int )cmd->sc_data_direction == 1U) {
    e->flags = 16U;
  } else
  if ((unsigned int )cmd->sc_data_direction == 3U) {
    e->flags = 4U;
  } else {
    e->flags = 0U;
  }
  pvscsi_map_buffers(adapter, ctx, cmd, e);
  e->context = pvscsi_map_context((struct pvscsi_adapter const *)adapter, (struct pvscsi_ctx const *)ctx);
  __asm__ volatile ("": : : "memory");
  s->reqProdIdx = s->reqProdIdx + 1U;
  return (0);
}
}
static int pvscsi_queue_lck(struct scsi_cmnd *cmd , void (*done)(struct scsi_cmnd * ) )
{
  struct Scsi_Host *host ;
  struct pvscsi_adapter *adapter ;
  void *tmp ;
  struct pvscsi_ctx *ctx ;
  unsigned long flags ;
  int tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  host = (cmd->device)->host;
  tmp = shost_priv(host);
  adapter = (struct pvscsi_adapter *)tmp;
  ldv_spin_lock();
  ctx = pvscsi_acquire_context(adapter, cmd);
  if ((unsigned long )ctx == (unsigned long )((struct pvscsi_ctx *)0)) {
    goto _L;
  } else {
    tmp___0 = pvscsi_queue_ring(adapter, ctx, cmd);
    if (tmp___0 != 0) {
      _L:
      if ((unsigned long )ctx != (unsigned long )((struct pvscsi_ctx *)0)) {
        pvscsi_release_context(adapter, ctx);
      } else {
      }
      spin_unlock_irqrestore(& adapter->hw_lock, flags);
      return (4181);
    } else {
    }
  }
  cmd->scsi_done = done;
  descriptor.modname = "vmw_pvscsi";
  descriptor.function = "pvscsi_queue_lck";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5480/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/vmw_pvscsi.o.c.prepared";
  descriptor.format = "queued cmd %p, ctx %p, op=%x\n";
  descriptor.lineno = 820U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (cmd->device)->sdev_gendev),
                      "queued cmd %p, ctx %p, op=%x\n", cmd, ctx, (int )*(cmd->cmnd));
  } else {
  }
  spin_unlock_irqrestore(& adapter->hw_lock, flags);
  pvscsi_kick_io((struct pvscsi_adapter const *)adapter, (int )*(cmd->cmnd));
  return (0);
}
}
static int pvscsi_queue(struct Scsi_Host *shost , struct scsi_cmnd *cmd )
{
  unsigned long irq_flags ;
  int rc ;
  {
  ldv_spin_lock();
  scsi_cmd_get_serial(shost, cmd);
  rc = pvscsi_queue_lck(cmd, cmd->scsi_done);
  spin_unlock_irqrestore(shost->host_lock, irq_flags);
  return (rc);
}
}
static int pvscsi_abort(struct scsi_cmnd *cmd )
{
  struct pvscsi_adapter *adapter ;
  void *tmp ;
  struct pvscsi_ctx *ctx ;
  unsigned long flags ;
  int result ;
  struct completion abort_cmp ;
  unsigned long tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tmp = shost_priv((cmd->device)->host);
  adapter = (struct pvscsi_adapter *)tmp;
  result = 8194;
  init_completion(& abort_cmp);
  abort_cmp = abort_cmp;
  if ((unsigned long )(cmd->request)->rq_disk != (unsigned long )((struct gendisk *)0)) {
    dev_printk("\017", (struct device const *)(& (cmd->device)->sdev_gendev), "[%s] task abort on host %u, %p\n",
               (char *)(& ((cmd->request)->rq_disk)->disk_name), (adapter->host)->host_no,
               cmd);
  } else {
    dev_printk("\017", (struct device const *)(& (cmd->device)->sdev_gendev), "task abort on host %u, %p\n",
               (adapter->host)->host_no, cmd);
  }
  ldv_spin_lock();
  pvscsi_process_completion_ring(adapter);
  ctx = pvscsi_find_context((struct pvscsi_adapter const *)adapter, cmd);
  if ((unsigned long )ctx == (unsigned long )((struct pvscsi_ctx *)0)) {
    if ((unsigned long )(cmd->request)->rq_disk != (unsigned long )((struct gendisk *)0)) {
      dev_printk("\017", (struct device const *)(& (cmd->device)->sdev_gendev),
                 "[%s] Failed to abort cmd %p\n", (char *)(& ((cmd->request)->rq_disk)->disk_name),
                 cmd);
    } else {
      dev_printk("\017", (struct device const *)(& (cmd->device)->sdev_gendev),
                 "Failed to abort cmd %p\n", cmd);
    }
    goto out;
  } else {
  }
  ctx->abort_cmp = & abort_cmp;
  pvscsi_abort_cmd((struct pvscsi_adapter const *)adapter, (struct pvscsi_ctx const *)ctx);
  spin_unlock_irqrestore(& adapter->hw_lock, flags);
  tmp___0 = msecs_to_jiffies(2000U);
  wait_for_completion_timeout(& abort_cmp, tmp___0);
  ldv_spin_lock();
  tmp___1 = completion_done(& abort_cmp);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    ctx->abort_cmp = (struct completion *)0;
    result = 8195;
    if ((unsigned long )(cmd->request)->rq_disk != (unsigned long )((struct gendisk *)0)) {
      dev_printk("\017", (struct device const *)(& (cmd->device)->sdev_gendev),
                 "[%s] Failed to get completion for aborted cmd %p\n", (char *)(& ((cmd->request)->rq_disk)->disk_name),
                 cmd);
    } else {
      dev_printk("\017", (struct device const *)(& (cmd->device)->sdev_gendev),
                 "Failed to get completion for aborted cmd %p\n", cmd);
    }
    goto out;
  } else {
  }
  cmd->result = 327680;
  (*(cmd->scsi_done))(cmd);
  out:
  spin_unlock_irqrestore(& adapter->hw_lock, flags);
  return (result);
}
}
static void pvscsi_reset_all(struct pvscsi_adapter *adapter )
{
  unsigned int i ;
  struct pvscsi_ctx *ctx ;
  struct scsi_cmnd *cmd ;
  {
  i = 0U;
  goto ldv_36278;
  ldv_36277:
  ctx = adapter->cmd_map + (unsigned long )i;
  cmd = ctx->cmd;
  if ((unsigned long )cmd != (unsigned long )((struct scsi_cmnd *)0)) {
    if ((unsigned long )(cmd->request)->rq_disk != (unsigned long )((struct gendisk *)0)) {
      dev_printk("\v", (struct device const *)(& (cmd->device)->sdev_gendev), "[%s] Forced reset on cmd %p\n",
                 (char *)(& ((cmd->request)->rq_disk)->disk_name), cmd);
    } else {
      dev_printk("\v", (struct device const *)(& (cmd->device)->sdev_gendev), "Forced reset on cmd %p\n",
                 cmd);
    }
    pvscsi_unmap_buffers((struct pvscsi_adapter const *)adapter, ctx);
    pvscsi_release_context(adapter, ctx);
    cmd->result = 524288;
    (*(cmd->scsi_done))(cmd);
  } else {
  }
  i = i + 1U;
  ldv_36278: ;
  if (adapter->req_depth > i) {
    goto ldv_36277;
  } else {
  }
  return;
}
}
static int pvscsi_host_reset(struct scsi_cmnd *cmd )
{
  struct Scsi_Host *host ;
  struct pvscsi_adapter *adapter ;
  void *tmp ;
  unsigned long flags ;
  bool use_msg ;
  {
  host = (cmd->device)->host;
  tmp = shost_priv(host);
  adapter = (struct pvscsi_adapter *)tmp;
  if ((unsigned long )(cmd->request)->rq_disk != (unsigned long )((struct gendisk *)0)) {
    dev_printk("\016", (struct device const *)(& (cmd->device)->sdev_gendev), "[%s] SCSI Host reset\n",
               (char *)(& ((cmd->request)->rq_disk)->disk_name));
  } else {
    dev_printk("\016", (struct device const *)(& (cmd->device)->sdev_gendev), "SCSI Host reset\n");
  }
  ldv_spin_lock();
  use_msg = adapter->use_msg;
  if ((int )use_msg) {
    adapter->use_msg = 0;
    spin_unlock_irqrestore(& adapter->hw_lock, flags);
    flush_workqueue(adapter->workqueue);
    ldv_spin_lock();
  } else {
  }
  pvscsi_process_request_ring((struct pvscsi_adapter const *)adapter);
  ll_adapter_reset((struct pvscsi_adapter const *)adapter);
  pvscsi_process_completion_ring(adapter);
  pvscsi_reset_all(adapter);
  adapter->use_msg = use_msg;
  pvscsi_setup_all_rings((struct pvscsi_adapter const *)adapter);
  pvscsi_unmask_intr((struct pvscsi_adapter const *)adapter);
  spin_unlock_irqrestore(& adapter->hw_lock, flags);
  return (8194);
}
}
static int pvscsi_bus_reset(struct scsi_cmnd *cmd )
{
  struct Scsi_Host *host ;
  struct pvscsi_adapter *adapter ;
  void *tmp ;
  unsigned long flags ;
  {
  host = (cmd->device)->host;
  tmp = shost_priv(host);
  adapter = (struct pvscsi_adapter *)tmp;
  if ((unsigned long )(cmd->request)->rq_disk != (unsigned long )((struct gendisk *)0)) {
    dev_printk("\016", (struct device const *)(& (cmd->device)->sdev_gendev), "[%s] SCSI Bus reset\n",
               (char *)(& ((cmd->request)->rq_disk)->disk_name));
  } else {
    dev_printk("\016", (struct device const *)(& (cmd->device)->sdev_gendev), "SCSI Bus reset\n");
  }
  ldv_spin_lock();
  pvscsi_process_request_ring((struct pvscsi_adapter const *)adapter);
  ll_bus_reset((struct pvscsi_adapter const *)adapter);
  pvscsi_process_completion_ring(adapter);
  spin_unlock_irqrestore(& adapter->hw_lock, flags);
  return (8194);
}
}
static int pvscsi_device_reset(struct scsi_cmnd *cmd )
{
  struct Scsi_Host *host ;
  struct pvscsi_adapter *adapter ;
  void *tmp ;
  unsigned long flags ;
  {
  host = (cmd->device)->host;
  tmp = shost_priv(host);
  adapter = (struct pvscsi_adapter *)tmp;
  if ((unsigned long )(cmd->request)->rq_disk != (unsigned long )((struct gendisk *)0)) {
    dev_printk("\016", (struct device const *)(& (cmd->device)->sdev_gendev), "[%s] SCSI device reset on scsi%u:%u\n",
               (char *)(& ((cmd->request)->rq_disk)->disk_name), host->host_no, (cmd->device)->id);
  } else {
    dev_printk("\016", (struct device const *)(& (cmd->device)->sdev_gendev), "SCSI device reset on scsi%u:%u\n",
               host->host_no, (cmd->device)->id);
  }
  ldv_spin_lock();
  pvscsi_process_request_ring((struct pvscsi_adapter const *)adapter);
  ll_device_reset((struct pvscsi_adapter const *)adapter, (cmd->device)->id);
  pvscsi_process_completion_ring(adapter);
  spin_unlock_irqrestore(& adapter->hw_lock, flags);
  return (8194);
}
}
static struct scsi_host_template pvscsi_template ;
static char const *pvscsi_info(struct Scsi_Host *host )
{
  struct pvscsi_adapter *adapter ;
  void *tmp ;
  char buf[256U] ;
  {
  tmp = shost_priv(host);
  adapter = (struct pvscsi_adapter *)tmp;
  sprintf((char *)(& buf), "VMware PVSCSI storage adapter rev %d, req/cmp/msg rings: %u/%u/%u pages, cmd_per_lun=%u",
          (int )adapter->rev, adapter->req_pages, adapter->cmp_pages, adapter->msg_pages,
          (int )pvscsi_template.cmd_per_lun);
  return ((char const *)(& buf));
}
}
static struct scsi_host_template pvscsi_template =
     {& __this_module, "VMware PVSCSI Host Adapter", 0, 0, & pvscsi_info, 0, 0, & pvscsi_queue,
    0, & pvscsi_abort, & pvscsi_device_reset, 0, & pvscsi_bus_reset, & pvscsi_host_reset,
    0, 0, 0, 0, 0, 0, 0, & pvscsi_change_queue_depth, 0, 0, 0, 0, 0, 0, 0, "vmw_pvscsi",
    0, 0, -1, 128U, (unsigned short)0, 65535U, 4294967295UL, (short)0, (unsigned char)0,
    (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
    (unsigned char)0, (unsigned char)0, 0U, 0, 0, {0, 0}, 0ULL, 0U, 0};
static void pvscsi_process_msg(struct pvscsi_adapter const *adapter , struct PVSCSIRingMsgDesc const *e )
{
  struct PVSCSIRingsState *s ;
  struct Scsi_Host *host ;
  struct scsi_device *sdev ;
  struct PVSCSIMsgDescDevStatusChanged *desc ;
  struct Scsi_Host *tmp ;
  struct PVSCSIMsgDescDevStatusChanged *desc___0 ;
  struct Scsi_Host *tmp___0 ;
  {
  s = adapter->rings_state;
  host = adapter->host;
  printk("\016vmw_pvscsi: msg type: 0x%x - MSG RING: %u/%u (%u) \n", e->type, s->msgProdIdx,
         s->msgConsIdx, s->msgNumEntriesLog2);
  if ((unsigned int )e->type == 0U) {
    desc = (struct PVSCSIMsgDescDevStatusChanged *)e;
    printk("\016vmw_pvscsi: msg: device added at scsi%u:%u:%u\n", desc->bus, desc->target,
           (int )desc->lun[1]);
    tmp = scsi_host_get(host);
    if ((unsigned long )tmp == (unsigned long )((struct Scsi_Host *)0)) {
      return;
    } else {
    }
    sdev = scsi_device_lookup(host, desc->bus, desc->target, (uint )desc->lun[1]);
    if ((unsigned long )sdev != (unsigned long )((struct scsi_device *)0)) {
      printk("\016vmw_pvscsi: device already exists\n");
      scsi_device_put(sdev);
    } else {
      scsi_add_device(adapter->host, desc->bus, desc->target, (uint )desc->lun[1]);
    }
    scsi_host_put(host);
  } else
  if ((unsigned int )e->type == 1U) {
    desc___0 = (struct PVSCSIMsgDescDevStatusChanged *)e;
    printk("\016vmw_pvscsi: msg: device removed at scsi%u:%u:%u\n", desc___0->bus,
           desc___0->target, (int )desc___0->lun[1]);
    tmp___0 = scsi_host_get(host);
    if ((unsigned long )tmp___0 == (unsigned long )((struct Scsi_Host *)0)) {
      return;
    } else {
    }
    sdev = scsi_device_lookup(host, desc___0->bus, desc___0->target, (uint )desc___0->lun[1]);
    if ((unsigned long )sdev != (unsigned long )((struct scsi_device *)0)) {
      scsi_remove_device(sdev);
      scsi_device_put(sdev);
    } else {
      printk("\016vmw_pvscsi: failed to lookup scsi%u:%u:%u\n", desc___0->bus, desc___0->target,
             (int )desc___0->lun[1]);
    }
    scsi_host_put(host);
  } else {
  }
  return;
}
}
static int pvscsi_msg_pending(struct pvscsi_adapter const *adapter )
{
  struct PVSCSIRingsState *s ;
  {
  s = adapter->rings_state;
  return (s->msgProdIdx != s->msgConsIdx);
}
}
static void pvscsi_process_msg_ring(struct pvscsi_adapter const *adapter )
{
  struct PVSCSIRingsState *s ;
  struct PVSCSIRingMsgDesc *ring ;
  u32 msg_entries ;
  struct PVSCSIRingMsgDesc *e ;
  int tmp ;
  {
  s = adapter->rings_state;
  ring = adapter->msg_ring;
  msg_entries = s->msgNumEntriesLog2;
  goto ldv_36327;
  ldv_36326:
  e = ring + (unsigned long )(s->msgConsIdx & (u32 )((1 << (int )msg_entries) + -1));
  __asm__ volatile ("": : : "memory");
  pvscsi_process_msg(adapter, (struct PVSCSIRingMsgDesc const *)e);
  __asm__ volatile ("": : : "memory");
  s->msgConsIdx = s->msgConsIdx + 1U;
  ldv_36327:
  tmp = pvscsi_msg_pending(adapter);
  if (tmp != 0) {
    goto ldv_36326;
  } else {
  }
  return;
}
}
static void pvscsi_msg_workqueue_handler(struct work_struct *data )
{
  struct pvscsi_adapter *adapter ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)data;
  adapter = (struct pvscsi_adapter *)__mptr + 0xffffffffffffff98UL;
  pvscsi_process_msg_ring((struct pvscsi_adapter const *)adapter);
  return;
}
}
static int pvscsi_setup_msg_workqueue(struct pvscsi_adapter *adapter )
{
  char name[32U] ;
  u32 tmp ;
  struct lock_class_key __key ;
  char const *__lock_name ;
  struct workqueue_struct *tmp___0 ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  {
  if (! pvscsi_use_msg) {
    return (0);
  } else {
  }
  pvscsi_reg_write((struct pvscsi_adapter const *)adapter, 0U, 8U);
  tmp = pvscsi_reg_read((struct pvscsi_adapter const *)adapter, 8U);
  if (tmp == 4294967295U) {
    return (0);
  } else {
  }
  snprintf((char *)(& name), 32UL, "vmw_pvscsi_wq_%u", (adapter->host)->host_no);
  __lock_name = "\"%s\"(name)";
  tmp___0 = __alloc_workqueue_key("%s", 10U, 1, & __key, __lock_name, (char *)(& name));
  adapter->workqueue = tmp___0;
  if ((unsigned long )adapter->workqueue == (unsigned long )((struct workqueue_struct *)0)) {
    printk("\vvmw_pvscsi: failed to create work queue\n");
    return (0);
  } else {
  }
  __init_work(& adapter->work, 0);
  __constr_expr_0.counter = 137438953408L;
  adapter->work.data = __constr_expr_0;
  lockdep_init_map(& adapter->work.lockdep_map, "(&adapter->work)", & __key___0, 0);
  INIT_LIST_HEAD(& adapter->work.entry);
  adapter->work.func = & pvscsi_msg_workqueue_handler;
  return (1);
}
}
static bool pvscsi_setup_req_threshold(struct pvscsi_adapter *adapter , bool enable )
{
  u32 val ;
  struct PVSCSICmdDescSetupReqCall cmd_msg ;
  u32 tmp ;
  {
  if (! pvscsi_use_req_threshold) {
    return (0);
  } else {
  }
  pvscsi_reg_write((struct pvscsi_adapter const *)adapter, 0U, 10U);
  val = pvscsi_reg_read((struct pvscsi_adapter const *)adapter, 8U);
  if (val == 4294967295U) {
    printk("\016vmw_pvscsi: device does not support req_threshold\n");
    return (0);
  } else {
    cmd_msg.enable = 0U;
    cmd_msg.enable = (u32 )enable;
    printk("\016vmw_pvscsi: %sabling reqCallThreshold\n", (int )enable ? (char *)"en" : (char *)"dis");
    pvscsi_write_cmd_desc((struct pvscsi_adapter const *)adapter, 10U, (void const *)(& cmd_msg),
                          4UL);
    tmp = pvscsi_reg_read((struct pvscsi_adapter const *)adapter, 8U);
    return (tmp != 0U);
  }
}
}
static irqreturn_t pvscsi_isr(int irq , void *devp )
{
  struct pvscsi_adapter *adapter ;
  int handled ;
  u32 val ;
  u32 tmp ;
  unsigned long flags ;
  int tmp___0 ;
  {
  adapter = (struct pvscsi_adapter *)devp;
  if ((int )adapter->use_msi || (int )adapter->use_msix) {
    handled = 1;
  } else {
    tmp = pvscsi_read_intr_status((struct pvscsi_adapter const *)adapter);
    val = tmp;
    handled = (val & 15U) != 0U;
    if (handled != 0) {
      pvscsi_write_intr_status((struct pvscsi_adapter const *)devp, val);
    } else {
    }
  }
  if (handled != 0) {
    ldv_spin_lock();
    pvscsi_process_completion_ring(adapter);
    if ((int )adapter->use_msg) {
      tmp___0 = pvscsi_msg_pending((struct pvscsi_adapter const *)adapter);
      if (tmp___0 != 0) {
        queue_work(adapter->workqueue, & adapter->work);
      } else {
      }
    } else {
    }
    spin_unlock_irqrestore(& adapter->hw_lock, flags);
  } else {
  }
  return (handled != 0);
}
}
static void pvscsi_free_sgls(struct pvscsi_adapter const *adapter )
{
  struct pvscsi_ctx *ctx ;
  unsigned int i ;
  {
  ctx = adapter->cmd_map;
  i = 0U;
  goto ldv_36364;
  ldv_36363:
  free_pages((unsigned long )ctx->sgl, 0U);
  i = i + 1U;
  ctx = ctx + 1;
  ldv_36364: ;
  if ((unsigned int )adapter->req_depth > i) {
    goto ldv_36363;
  } else {
  }
  return;
}
}
static int pvscsi_setup_msix(struct pvscsi_adapter const *adapter , unsigned int *irq )
{
  struct msix_entry entry ;
  int ret ;
  {
  entry.vector = 0U;
  entry.entry = 0U;
  ret = pci_enable_msix(adapter->dev, & entry, 1);
  if (ret != 0) {
    return (ret);
  } else {
  }
  *irq = entry.vector;
  return (0);
}
}
static void pvscsi_shutdown_intr(struct pvscsi_adapter *adapter )
{
  {
  if (adapter->irq != 0U) {
    ldv_free_irq_21(adapter->irq, (void *)adapter);
    adapter->irq = 0U;
  } else {
  }
  if ((int )adapter->use_msi) {
    pci_disable_msi(adapter->dev);
    adapter->use_msi = 0;
  } else
  if ((int )adapter->use_msix) {
    pci_disable_msix(adapter->dev);
    adapter->use_msix = 0;
  } else {
  }
  return;
}
}
static void pvscsi_release_resources(struct pvscsi_adapter *adapter )
{
  {
  pvscsi_shutdown_intr(adapter);
  if ((unsigned long )adapter->workqueue != (unsigned long )((struct workqueue_struct *)0)) {
    destroy_workqueue(adapter->workqueue);
  } else {
  }
  if ((unsigned long )adapter->mmioBase != (unsigned long )((char *)0)) {
    pci_iounmap(adapter->dev, (void *)adapter->mmioBase);
  } else {
  }
  pci_release_regions(adapter->dev);
  if ((unsigned long )adapter->cmd_map != (unsigned long )((struct pvscsi_ctx *)0)) {
    pvscsi_free_sgls((struct pvscsi_adapter const *)adapter);
    kfree((void const *)adapter->cmd_map);
  } else {
  }
  if ((unsigned long )adapter->rings_state != (unsigned long )((struct PVSCSIRingsState *)0)) {
    pci_free_consistent(adapter->dev, 4096UL, (void *)adapter->rings_state, adapter->ringStatePA);
  } else {
  }
  if ((unsigned long )adapter->req_ring != (unsigned long )((struct PVSCSIRingReqDesc *)0)) {
    pci_free_consistent(adapter->dev, (unsigned long )adapter->req_pages * 4096UL,
                        (void *)adapter->req_ring, adapter->reqRingPA);
  } else {
  }
  if ((unsigned long )adapter->cmp_ring != (unsigned long )((struct PVSCSIRingCmpDesc *)0)) {
    pci_free_consistent(adapter->dev, (unsigned long )adapter->cmp_pages * 4096UL,
                        (void *)adapter->cmp_ring, adapter->cmpRingPA);
  } else {
  }
  if ((unsigned long )adapter->msg_ring != (unsigned long )((struct PVSCSIRingMsgDesc *)0)) {
    pci_free_consistent(adapter->dev, (unsigned long )adapter->msg_pages * 4096UL,
                        (void *)adapter->msg_ring, adapter->msgRingPA);
  } else {
  }
  return;
}
}
static int pvscsi_allocate_sg(struct pvscsi_adapter *adapter )
{
  struct pvscsi_ctx *ctx ;
  int i ;
  unsigned long tmp ;
  long tmp___0 ;
  {
  ctx = adapter->cmd_map;
  i = 0;
  goto ldv_36388;
  ldv_36387:
  tmp = ldv___get_free_pages_22(208U, 0U);
  ctx->sgl = (struct pvscsi_sg_list *)tmp;
  ctx->sglPA = 0ULL;
  tmp___0 = ldv__builtin_expect(((unsigned long )ctx->sgl & 4095UL) != 0UL, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5480/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/vmw_pvscsi.o.c.prepared"),
                         "i" (1332), "i" (12UL));
    ldv_36383: ;
    goto ldv_36383;
  } else {
  }
  if ((unsigned long )ctx->sgl == (unsigned long )((struct pvscsi_sg_list *)0)) {
    goto ldv_36385;
    ldv_36384:
    free_pages((unsigned long )ctx->sgl, 0U);
    ctx->sgl = (struct pvscsi_sg_list *)0;
    i = i - 1;
    ctx = ctx - 1;
    ldv_36385: ;
    if (i >= 0) {
      goto ldv_36384;
    } else {
    }
    return (-12);
  } else {
  }
  i = i + 1;
  ctx = ctx + 1;
  ldv_36388: ;
  if ((unsigned int )i < adapter->req_depth) {
    goto ldv_36387;
  } else {
  }
  return (0);
}
}
static u32 pvscsi_get_max_targets(struct pvscsi_adapter *adapter )
{
  struct PVSCSICmdDescConfigCmd cmd ;
  struct PVSCSIConfigPageHeader *header ;
  struct device *dev ;
  dma_addr_t configPagePA ;
  void *config_page ;
  u32 numPhys ;
  long tmp ;
  struct PVSCSIConfigPageController *config ;
  {
  numPhys = 16U;
  dev = pvscsi_dev((struct pvscsi_adapter const *)adapter);
  config_page = pci_alloc_consistent(adapter->dev, 4096UL, & configPagePA);
  if ((unsigned long )config_page == (unsigned long )((void *)0)) {
    dev_warn((struct device const *)dev, "vmw_pvscsi: failed to allocate memory for config page\n");
    goto exit;
  } else {
  }
  tmp = ldv__builtin_expect((configPagePA & 4095ULL) != 0ULL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5480/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/vmw_pvscsi.o.c.prepared"),
                         "i" (1367), "i" (12UL));
    ldv_36400: ;
    goto ldv_36400;
  } else {
  }
  cmd.configPageAddress = 36421322670080ULL;
  cmd.configPageNum = 6488U;
  cmd.cmpAddr = configPagePA;
  cmd._pad = 0U;
  header = (struct PVSCSIConfigPageHeader *)config_page;
  memset((void *)header, 0, 16UL);
  header->hostStatus = 26U;
  header->scsiStatus = 2U;
  pvscsi_write_cmd_desc((struct pvscsi_adapter const *)adapter, 7U, (void const *)(& cmd),
                        24UL);
  if ((unsigned int )header->hostStatus == 0U && (unsigned int )header->scsiStatus == 0U) {
    config = (struct PVSCSIConfigPageController *)config_page;
    numPhys = config->numPhys;
  } else {
    dev_warn((struct device const *)dev, "vmw_pvscsi: PVSCSI_CMD_CONFIG failed. hostStatus = 0x%x, scsiStatus = 0x%x\n",
             (int )header->hostStatus, (int )header->scsiStatus);
  }
  pci_free_consistent(adapter->dev, 4096UL, config_page, configPagePA);
  exit: ;
  return (numPhys);
}
}
static int pvscsi_probe(struct pci_dev *pdev , struct pci_device_id const *id )
{
  struct pvscsi_adapter *adapter ;
  struct pvscsi_adapter adapter_temp ;
  struct Scsi_Host *host ;
  unsigned int i ;
  unsigned long flags ;
  int error ;
  u32 max_id ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  int _min1 ;
  int _min2 ;
  int _min1___0 ;
  int _min2___0 ;
  void *tmp___6 ;
  struct lock_class_key __key ;
  int tmp___7 ;
  void *tmp___8 ;
  struct pvscsi_ctx *ctx ;
  int tmp___9 ;
  int tmp___10 ;
  {
  host = (struct Scsi_Host *)0;
  flags = 0UL;
  error = -19;
  tmp = pci_enable_device(pdev);
  if (tmp != 0) {
    return (error);
  } else {
  }
  tmp___2 = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
  if (tmp___2 == 0) {
    tmp___3 = pci_set_consistent_dma_mask(pdev, 0xffffffffffffffffULL);
    if (tmp___3 == 0) {
      printk("\016vmw_pvscsi: using 64bit dma\n");
    } else {
      goto _L;
    }
  } else {
    _L:
    tmp___0 = pci_set_dma_mask(pdev, 4294967295ULL);
    if (tmp___0 == 0) {
      tmp___1 = pci_set_consistent_dma_mask(pdev, 4294967295ULL);
      if (tmp___1 == 0) {
        printk("\016vmw_pvscsi: using 32bit dma\n");
      } else {
        printk("\vvmw_pvscsi: failed to set DMA mask\n");
        goto out_disable_device;
      }
    } else {
      printk("\vvmw_pvscsi: failed to set DMA mask\n");
      goto out_disable_device;
    }
  }
  adapter = & adapter_temp;
  memset((void *)adapter, 0, 312UL);
  adapter->dev = pdev;
  adapter->rev = pdev->revision;
  tmp___4 = pci_request_regions(pdev, "vmw_pvscsi");
  if (tmp___4 != 0) {
    printk("\vvmw_pvscsi: pci memory selection failed\n");
    goto out_disable_device;
  } else {
  }
  i = 0U;
  goto ldv_36417;
  ldv_36416: ;
  if ((int )pdev->resource[i].flags & 1) {
    goto ldv_36414;
  } else {
  }
  if ((pdev->resource[i].start == 0ULL && pdev->resource[i].end == pdev->resource[i].start) || (pdev->resource[i].end - pdev->resource[i].start) + 1ULL <= 32767ULL) {
    goto ldv_36414;
  } else {
  }
  goto ldv_36415;
  ldv_36414:
  i = i + 1U;
  ldv_36417: ;
  if (i <= 16U) {
    goto ldv_36416;
  } else {
  }
  ldv_36415: ;
  if (i == 17U) {
    printk("\vvmw_pvscsi: adapter has no suitable MMIO region\n");
    goto out_release_resources_and_disable;
  } else {
  }
  tmp___5 = pci_iomap(pdev, (int )i, 32768UL);
  adapter->mmioBase = (char *)tmp___5;
  if ((unsigned long )adapter->mmioBase == (unsigned long )((char *)0)) {
    printk("\vvmw_pvscsi: can\'t iomap for BAR %d memsize %lu\n", i, 32768UL);
    goto out_release_resources_and_disable;
  } else {
  }
  pci_set_master(pdev);
  max_id = pvscsi_get_max_targets(adapter);
  printk("\016vmw_pvscsi: max_id: %u\n", max_id);
  if (pvscsi_ring_pages == 0) {
    pvscsi_ring_pages = max_id > 16U ? 32 : 8;
  } else {
  }
  printk("\016vmw_pvscsi: setting ring_pages to %d\n", pvscsi_ring_pages);
  _min1 = 32;
  _min2 = pvscsi_ring_pages;
  pvscsi_template.can_queue = (int )((unsigned int )(_min1 < _min2 ? _min1 : _min2) * 32U);
  _min1___0 = pvscsi_template.can_queue;
  _min2___0 = pvscsi_cmd_per_lun;
  pvscsi_template.cmd_per_lun = (short )(_min1___0 < _min2___0 ? _min1___0 : _min2___0);
  host = ldv_scsi_host_alloc_23(& pvscsi_template, 312);
  if ((unsigned long )host == (unsigned long )((struct Scsi_Host *)0)) {
    printk("\vvmw_pvscsi: failed to allocate host\n");
    goto out_release_resources_and_disable;
  } else {
  }
  tmp___6 = shost_priv(host);
  adapter = (struct pvscsi_adapter *)tmp___6;
  memset((void *)adapter, 0, 312UL);
  adapter->dev = pdev;
  adapter->host = host;
  adapter->rev = adapter_temp.rev;
  adapter->mmioBase = adapter_temp.mmioBase;
  spinlock_check(& adapter->hw_lock);
  __raw_spin_lock_init(& adapter->hw_lock.ldv_6347.rlock, "&(&adapter->hw_lock)->rlock",
                       & __key);
  host->max_channel = 0U;
  host->max_lun = 1U;
  host->max_cmd_len = 16U;
  host->max_id = max_id;
  pci_set_drvdata(pdev, (void *)host);
  ll_adapter_reset((struct pvscsi_adapter const *)adapter);
  tmp___7 = pvscsi_setup_msg_workqueue(adapter);
  adapter->use_msg = tmp___7 != 0;
  error = pvscsi_allocate_rings(adapter);
  if (error != 0) {
    printk("\vvmw_pvscsi: unable to allocate ring memory\n");
    goto out_release_resources;
  } else {
  }
  pvscsi_setup_all_rings((struct pvscsi_adapter const *)adapter);
  tmp___8 = kcalloc((size_t )adapter->req_depth, 64UL, 208U);
  adapter->cmd_map = (struct pvscsi_ctx *)tmp___8;
  if ((unsigned long )adapter->cmd_map == (unsigned long )((struct pvscsi_ctx *)0)) {
    printk("\vvmw_pvscsi: failed to allocate memory.\n");
    error = -12;
    goto out_reset_adapter;
  } else {
  }
  INIT_LIST_HEAD(& adapter->cmd_pool);
  i = 0U;
  goto ldv_36430;
  ldv_36429:
  ctx = adapter->cmd_map + (unsigned long )i;
  list_add(& ctx->list, & adapter->cmd_pool);
  i = i + 1U;
  ldv_36430: ;
  if (adapter->req_depth > i) {
    goto ldv_36429;
  } else {
  }
  error = pvscsi_allocate_sg(adapter);
  if (error != 0) {
    printk("\vvmw_pvscsi: unable to allocate s/g table\n");
    goto out_reset_adapter;
  } else {
  }
  if (! pvscsi_disable_msix) {
    tmp___10 = pvscsi_setup_msix((struct pvscsi_adapter const *)adapter, & adapter->irq);
    if (tmp___10 == 0) {
      printk("\016vmw_pvscsi: using MSI-X\n");
      adapter->use_msix = 1;
    } else {
      goto _L___0;
    }
  } else
  _L___0:
  if (! pvscsi_disable_msi) {
    tmp___9 = pci_enable_msi_exact(pdev, 1);
    if (tmp___9 == 0) {
      printk("\016vmw_pvscsi: using MSI\n");
      adapter->use_msi = 1;
      adapter->irq = pdev->irq;
    } else {
      printk("\016vmw_pvscsi: using INTx\n");
      adapter->irq = pdev->irq;
      flags = 128UL;
    }
  } else {
    printk("\016vmw_pvscsi: using INTx\n");
    adapter->irq = pdev->irq;
    flags = 128UL;
  }
  adapter->use_req_threshold = pvscsi_setup_req_threshold(adapter, 1);
  printk("\017vmw_pvscsi: driver-based request coalescing %sabled\n", (int )adapter->use_req_threshold ? (char *)"en" : (char *)"dis");
  error = ldv_request_irq_24(adapter->irq, & pvscsi_isr, flags, "vmw_pvscsi", (void *)adapter);
  if (error != 0) {
    printk("\vvmw_pvscsi: unable to request IRQ: %d\n", error);
    adapter->irq = 0U;
    goto out_reset_adapter;
  } else {
  }
  error = scsi_add_host(host, & pdev->dev);
  if (error != 0) {
    printk("\vvmw_pvscsi: scsi_add_host failed: %d\n", error);
    goto out_reset_adapter;
  } else {
  }
  _dev_info((struct device const *)(& pdev->dev), "VMware PVSCSI rev %d host #%u\n",
            (int )adapter->rev, host->host_no);
  pvscsi_unmask_intr((struct pvscsi_adapter const *)adapter);
  scsi_scan_host(host);
  return (0);
  out_reset_adapter:
  ll_adapter_reset((struct pvscsi_adapter const *)adapter);
  out_release_resources:
  pvscsi_release_resources(adapter);
  scsi_host_put(host);
  out_disable_device:
  pci_disable_device(pdev);
  return (error);
  out_release_resources_and_disable:
  pvscsi_release_resources(adapter);
  goto out_disable_device;
}
}
static void __pvscsi_shutdown(struct pvscsi_adapter *adapter )
{
  {
  pvscsi_mask_intr((struct pvscsi_adapter const *)adapter);
  if ((unsigned long )adapter->workqueue != (unsigned long )((struct workqueue_struct *)0)) {
    flush_workqueue(adapter->workqueue);
  } else {
  }
  pvscsi_shutdown_intr(adapter);
  pvscsi_process_request_ring((struct pvscsi_adapter const *)adapter);
  pvscsi_process_completion_ring(adapter);
  ll_adapter_reset((struct pvscsi_adapter const *)adapter);
  return;
}
}
static void pvscsi_shutdown(struct pci_dev *dev )
{
  struct Scsi_Host *host ;
  void *tmp ;
  struct pvscsi_adapter *adapter ;
  void *tmp___0 ;
  {
  tmp = pci_get_drvdata(dev);
  host = (struct Scsi_Host *)tmp;
  tmp___0 = shost_priv(host);
  adapter = (struct pvscsi_adapter *)tmp___0;
  __pvscsi_shutdown(adapter);
  return;
}
}
static void pvscsi_remove(struct pci_dev *pdev )
{
  struct Scsi_Host *host ;
  void *tmp ;
  struct pvscsi_adapter *adapter ;
  void *tmp___0 ;
  {
  tmp = pci_get_drvdata(pdev);
  host = (struct Scsi_Host *)tmp;
  tmp___0 = shost_priv(host);
  adapter = (struct pvscsi_adapter *)tmp___0;
  ldv_scsi_remove_host_25(host);
  __pvscsi_shutdown(adapter);
  pvscsi_release_resources(adapter);
  scsi_host_put(host);
  pci_disable_device(pdev);
  return;
}
}
static struct pci_driver pvscsi_pci_driver =
     {{0, 0}, "vmw_pvscsi", (struct pci_device_id const *)(& pvscsi_pci_tbl), & pvscsi_probe,
    & pvscsi_remove, 0, 0, 0, 0, & pvscsi_shutdown, 0, 0, {0, 0, 0, 0, (_Bool)0, 0,
                                                           0, 0, 0, 0, 0, 0, 0, 0,
                                                           0}, {{{{{{0U}}, 0U, 0U,
                                                                   0, {0, {0, 0},
                                                                       0, 0, 0UL}}}},
                                                                {0, 0}}};
static int pvscsi_init(void)
{
  int tmp ;
  {
  printk("\016%s - version %s\n", (char *)"VMware PVSCSI driver", (char *)"1.0.5.0-k");
  tmp = __pci_register_driver(& pvscsi_pci_driver, & __this_module, "vmw_pvscsi");
  return (tmp);
}
}
static void pvscsi_exit(void)
{
  {
  pci_unregister_driver(& pvscsi_pci_driver);
  return;
}
}
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
extern void ldv_check_final_state(void) ;
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
      irq_retval = pvscsi_isr(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_36475;
    default:
    ldv_stop();
    }
    ldv_36475: ;
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
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& pvscsi_isr)) {
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_initialize_pci_driver_2(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(2976UL);
  pvscsi_pci_driver_group0 = (struct pci_dev *)tmp;
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
  goto ldv_36495;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_36495;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_36495;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_36495;
  default:
  ldv_stop();
  }
  ldv_36495: ;
  return;
}
}
void ldv_initialize_scsi_host_template_3(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(456UL);
  pvscsi_template_group0 = (struct scsi_cmnd *)tmp;
  tmp___0 = ldv_zalloc(3584UL);
  pvscsi_template_group1 = (struct Scsi_Host *)tmp___0;
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
int main(void)
{
  int ldvarg1 ;
  int tmp ;
  struct scsi_device *ldvarg0 ;
  void *tmp___0 ;
  int ldvarg2 ;
  int tmp___1 ;
  struct pci_device_id *ldvarg3 ;
  void *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg1 = tmp;
  tmp___0 = ldv_zalloc(3488UL);
  ldvarg0 = (struct scsi_device *)tmp___0;
  tmp___1 = __VERIFIER_nondet_int();
  ldvarg2 = tmp___1;
  tmp___2 = ldv_zalloc(32UL);
  ldvarg3 = (struct pci_device_id *)tmp___2;
  ldv_initialize();
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 0;
  ldv_36545:
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_36521;
  case 1: ;
  if (ldv_state_variable_0 != 0) {
    tmp___4 = __VERIFIER_nondet_int();
    switch (tmp___4) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      pvscsi_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_36525;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = pvscsi_init();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_2 = 1;
        ldv_initialize_pci_driver_2();
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_36525;
    default:
    ldv_stop();
    }
    ldv_36525: ;
  } else {
  }
  goto ldv_36521;
  case 2: ;
  if (ldv_state_variable_3 != 0) {
    tmp___5 = __VERIFIER_nondet_int();
    switch (tmp___5) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      pvscsi_abort(pvscsi_template_group0);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_36530;
    case 1: ;
    if (ldv_state_variable_3 == 1) {
      pvscsi_change_queue_depth(ldvarg0, ldvarg2, ldvarg1);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_36530;
    case 2: ;
    if (ldv_state_variable_3 == 1) {
      pvscsi_queue(pvscsi_template_group1, pvscsi_template_group0);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_36530;
    case 3: ;
    if (ldv_state_variable_3 == 1) {
      pvscsi_bus_reset(pvscsi_template_group0);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_36530;
    case 4: ;
    if (ldv_state_variable_3 == 1) {
      pvscsi_device_reset(pvscsi_template_group0);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_36530;
    case 5: ;
    if (ldv_state_variable_3 == 1) {
      pvscsi_host_reset(pvscsi_template_group0);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_36530;
    case 6: ;
    if (ldv_state_variable_3 == 1) {
      pvscsi_info(pvscsi_template_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_36530;
    default:
    ldv_stop();
    }
    ldv_36530: ;
  } else {
  }
  goto ldv_36521;
  case 3: ;
  if (ldv_state_variable_2 != 0) {
    tmp___6 = __VERIFIER_nondet_int();
    switch (tmp___6) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      ldv_retval_1 = pvscsi_probe(pvscsi_pci_driver_group0, (struct pci_device_id const *)ldvarg3);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_2 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_36540;
    case 1: ;
    if (ldv_state_variable_2 == 2) {
      pvscsi_shutdown(pvscsi_pci_driver_group0);
      ldv_state_variable_2 = 3;
    } else {
    }
    goto ldv_36540;
    case 2: ;
    if (ldv_state_variable_2 == 3) {
      pvscsi_remove(pvscsi_pci_driver_group0);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      pvscsi_remove(pvscsi_pci_driver_group0);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_36540;
    default:
    ldv_stop();
    }
    ldv_36540: ;
  } else {
  }
  goto ldv_36521;
  default:
  ldv_stop();
  }
  ldv_36521: ;
  goto ldv_36545;
  ldv_final:
  ldv_check_final_state();
  return 0;
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
void *ldv_calloc(size_t nmemb , size_t size ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  ldv_kcalloc_14(n, size, flags);
  return ((void *)0);
}
}
int ldv_scsi_add_host_with_dma_20(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(shost, dev, dma_dev);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_3 = 1;
    ldv_initialize_scsi_host_template_3();
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
void *ldv_malloc(size_t size ) ;
unsigned long ldv___get_free_pages_22(gfp_t flags , unsigned int ldv_func_arg2 )
{
  unsigned long tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __get_free_pages(flags, ldv_func_arg2);
  return (tmp);
}
}
struct Scsi_Host *ldv_scsi_host_alloc_23(struct scsi_host_template *sht , int privsize )
{
  ldv_func_ret_type___3 ldv_func_res ;
  struct Scsi_Host *tmp ;
  {
  tmp = scsi_host_alloc(sht, privsize);
  ldv_func_res = tmp;
  if ((unsigned long )ldv_func_res != (unsigned long )((ldv_func_ret_type___3 )0)) {
    ldv_state_variable_3 = 1;
    ldv_initialize_scsi_host_template_3();
  } else {
  }
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_24(unsigned int irq , irqreturn_t (*handler)(int ,
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
  tmp___0 = reg_check_1(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_1((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_scsi_remove_host_25(struct Scsi_Host *shost )
{
  {
  scsi_remove_host(shost);
  ldv_state_variable_3 = 0;
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
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __get_free_pages(gfp_t arg0, unsigned int arg1) {
  return __VERIFIER_nondet_ulong();
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
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void complete(struct completion *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool completion_done(struct completion *arg0) {
  return __VERIFIER_nondet_bool();
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
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_printk(const char *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
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
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_pages(unsigned long arg0, unsigned int arg1) {
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
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
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
int pci_enable_msi_range(struct pci_dev *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msix(struct pci_dev *arg0, struct msix_entry *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void *pci_iomap(struct pci_dev *arg0, int arg1, unsigned long arg2) {
  return ldv_malloc(arg2);
}
void pci_iounmap(struct pci_dev *arg0, void *arg1) {
  return;
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
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scsi_add_device(struct Scsi_Host *arg0, uint arg1, uint arg2, uint arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scsi_add_host_with_dma(struct Scsi_Host *arg0, struct device *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
void scsi_adjust_queue_depth(struct scsi_device *arg0, int arg1, int arg2) {
  return;
}
void scsi_cmd_get_serial(struct Scsi_Host *arg0, struct scsi_cmnd *arg1) {
  return;
}
struct scsi_device *scsi_device_lookup(struct Scsi_Host *arg0, uint arg1, uint arg2, uint arg3) {
  return ldv_malloc(sizeof(struct scsi_device));
}
void scsi_device_put(struct scsi_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_dma_map(struct scsi_cmnd *arg0) {
  return __VERIFIER_nondet_int();
}
void scsi_dma_unmap(struct scsi_cmnd *arg0) {
  return;
}
struct Scsi_Host *scsi_host_alloc(struct scsi_host_template *arg0, int arg1) {
  return ldv_malloc(sizeof(struct Scsi_Host));
}
struct Scsi_Host *scsi_host_get(struct Scsi_Host *arg0) {
  return ldv_malloc(sizeof(struct Scsi_Host));
}
void scsi_host_put(struct Scsi_Host *arg0) {
  return;
}
void scsi_remove_device(struct scsi_device *arg0) {
  return;
}
void scsi_remove_host(struct Scsi_Host *arg0) {
  return;
}
void scsi_scan_host(struct Scsi_Host *arg0) {
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
