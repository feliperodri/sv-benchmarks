extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
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
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
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
struct __anonstruct____missing_field_name_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_10 {
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
union __anonunion____missing_field_name_8 {
   struct __anonstruct____missing_field_name_9 __annonCompField4 ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_8 __annonCompField6 ;
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
struct qspinlock {
   atomic_t val ;
};
typedef struct qspinlock arch_spinlock_t;
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
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_16 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_17 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_18 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_15 {
   struct __anonstruct_futex_16 futex ;
   struct __anonstruct_nanosleep_17 nanosleep ;
   struct __anonstruct_poll_18 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_15 __annonCompField7 ;
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
union __anonunion____missing_field_name_19 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_19 __annonCompField8 ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct fregs_state {
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
struct __anonstruct____missing_field_name_29 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_30 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_28 {
   struct __anonstruct____missing_field_name_29 __annonCompField12 ;
   struct __anonstruct____missing_field_name_30 __annonCompField13 ;
};
union __anonunion____missing_field_name_31 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct fxregs_state {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_28 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_31 __annonCompField15 ;
};
struct swregs_state {
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
struct xstate_header {
   u64 xfeatures ;
   u64 xcomp_bv ;
   u64 reserved[6U] ;
};
struct xregs_state {
   struct fxregs_state i387 ;
   struct xstate_header header ;
   u8 __reserved[464U] ;
};
union fpregs_state {
   struct fregs_state fsave ;
   struct fxregs_state fxsave ;
   struct swregs_state soft ;
   struct xregs_state xsave ;
};
struct fpu {
   union fpregs_state state ;
   unsigned int last_cpu ;
   unsigned char fpstate_active ;
   unsigned char fpregs_active ;
   unsigned char counter ;
};
struct seq_operations;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct fpu fpu ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
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
   unsigned char check : 1 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 12 ;
   unsigned int pin_count ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_35 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_34 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_35 __annonCompField17 ;
};
struct spinlock {
   union __anonunion____missing_field_name_34 __annonCompField18 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_36 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_36 rwlock_t;
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_45 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_45 seqlock_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_46 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_46 kuid_t;
struct __anonstruct_kgid_t_47 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_47 kgid_t;
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
struct vm_area_struct;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_48 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_48 nodemask_t;
struct optimistic_spin_queue {
   atomic_t tail ;
};
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
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
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
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
struct timer_list {
   struct hlist_node entry ;
   unsigned long expires ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   u32 flags ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct nsproxy;
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
struct wake_irq;
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
   struct wake_irq *wakeirq ;
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
   void (*detach)(struct device * , bool ) ;
   int (*activate)(struct device * ) ;
   void (*sync)(struct device * ) ;
   void (*dismiss)(struct device * ) ;
};
struct pci_bus;
struct __anonstruct_mm_context_t_115 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_115 mm_context_t;
struct llist_node;
struct llist_head {
   struct llist_node *first ;
};
struct llist_node {
   struct llist_node *next ;
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
struct __anonstruct____missing_field_name_148 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_149 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_147 {
   struct __anonstruct____missing_field_name_148 __annonCompField33 ;
   struct __anonstruct____missing_field_name_149 __annonCompField34 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_147 __annonCompField35 ;
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
struct mem_cgroup;
typedef void compound_page_dtor(struct page * );
union __anonunion____missing_field_name_150 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_152 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_156 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_155 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_156 __annonCompField38 ;
   int units ;
};
struct __anonstruct____missing_field_name_154 {
   union __anonunion____missing_field_name_155 __annonCompField39 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_153 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_154 __annonCompField40 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_151 {
   union __anonunion____missing_field_name_152 __annonCompField37 ;
   union __anonunion____missing_field_name_153 __annonCompField41 ;
};
struct __anonstruct____missing_field_name_158 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_159 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_157 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_158 __annonCompField43 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_159 __annonCompField44 ;
   pgtable_t pmd_huge_pte ;
};
struct kmem_cache;
union __anonunion____missing_field_name_160 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_150 __annonCompField36 ;
   struct __anonstruct____missing_field_name_151 __annonCompField42 ;
   union __anonunion____missing_field_name_157 __annonCompField45 ;
   union __anonunion____missing_field_name_160 __annonCompField46 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_161 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
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
   struct __anonstruct_shared_161 shared ;
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
   atomic_long_t nr_pmds ;
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
   void *bd_addr ;
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
union __anonunion____missing_field_name_166 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_166 __annonCompField47 ;
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
   struct kernfs_node *notify_next ;
};
union __anonunion____missing_field_name_171 {
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
   union __anonunion____missing_field_name_171 __annonCompField48 ;
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
   char *prealloc_buf ;
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
   bool prealloc ;
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
union __anonunion____missing_field_name_172 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct module *mod ;
   struct kernel_param_ops const *ops ;
   u16 const perm ;
   s8 level ;
   u8 flags ;
   union __anonunion____missing_field_name_172 __annonCompField49 ;
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
struct latch_tree_node {
   struct rb_node node[2U] ;
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
struct mod_tree_node {
   struct module *mod ;
   struct latch_tree_node node ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
struct trace_event_call;
struct trace_enum_map;
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
   struct mutex param_lock ;
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
   bool async_probe_requested ;
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
   struct mod_tree_node mtn_core ;
   struct mod_tree_node mtn_init ;
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
   struct trace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct trace_enum_map **trace_enums ;
   unsigned int num_trace_enums ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   bool klp_alive ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
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
struct user_struct;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_180 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_180 sigset_t;
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
struct __anonstruct__kill_182 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_183 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_184 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_185 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_187 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_186 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_187 _addr_bnd ;
};
struct __anonstruct__sigpoll_188 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_189 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_181 {
   int _pad[28U] ;
   struct __anonstruct__kill_182 _kill ;
   struct __anonstruct__timer_183 _timer ;
   struct __anonstruct__rt_184 _rt ;
   struct __anonstruct__sigchld_185 _sigchld ;
   struct __anonstruct__sigfault_186 _sigfault ;
   struct __anonstruct__sigpoll_188 _sigpoll ;
   struct __anonstruct__sigsys_189 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_181 _sifields ;
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
   ktime_t (*get_time)(void) ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   seqcount_t seq ;
   struct hrtimer *running ;
   unsigned int cpu ;
   unsigned int active_bases ;
   unsigned int clock_was_set_seq ;
   bool migration_enabled ;
   bool nohz_active ;
   unsigned char in_hrtirq : 1 ;
   unsigned char hres_active : 1 ;
   unsigned char hang_detected : 1 ;
   ktime_t expires_next ;
   struct hrtimer *next_timer ;
   unsigned int nr_events ;
   unsigned int nr_retries ;
   unsigned int nr_hangs ;
   unsigned int max_hang_time ;
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
union __anonunion____missing_field_name_196 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_197 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_199 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_198 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_199 __annonCompField52 ;
};
union __anonunion_type_data_200 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_202 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_201 {
   union __anonunion_payload_202 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_196 __annonCompField50 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_197 __annonCompField51 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_198 __annonCompField53 ;
   union __anonunion_type_data_200 type_data ;
   union __anonunion____missing_field_name_201 __annonCompField54 ;
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
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_long_t count ;
   unsigned long percpu_count_ptr ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_switch ;
   bool force_atomic ;
   struct callback_head rcu ;
};
struct cgroup;
struct cgroup_root;
struct cgroup_subsys;
struct cgroup_taskset;
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
struct cgroup {
   struct cgroup_subsys_state self ;
   unsigned long flags ;
   int id ;
   int populated_cnt ;
   struct kernfs_node *kn ;
   struct kernfs_node *procs_kn ;
   struct kernfs_node *populated_kn ;
   unsigned int subtree_control ;
   unsigned int child_subsys_mask ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroup_root *root ;
   struct list_head cset_links ;
   struct list_head e_csets[12U] ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   wait_queue_head_t offline_waitq ;
   struct work_struct release_agent_work ;
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
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_released)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   void (*css_reset)(struct cgroup_subsys_state * ) ;
   void (*css_e_css_changed)(struct cgroup_subsys_state * ) ;
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
   struct cftype *dfl_cftypes ;
   struct cftype *legacy_cftypes ;
   unsigned int depends_on ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct nameidata;
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
struct task_cputime_atomic {
   atomic64_t utime ;
   atomic64_t stime ;
   atomic64_t sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime_atomic cputime_atomic ;
   int running ;
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
   seqlock_t stats_lock ;
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
   u64 blkio_start ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   u64 freepages_start ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct wake_q_node {
   struct wake_q_node *next ;
};
struct io_context;
struct pipe_inode_info;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
   unsigned long utilization_avg_contrib ;
   u32 runnable_avg_sum ;
   u32 avg_period ;
   u32 running_avg_sum ;
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
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
};
struct sched_class;
struct files_struct;
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
   unsigned long rcu_tasks_nvcsw ;
   bool rcu_tasks_holdout ;
   struct list_head rcu_tasks_holdout_list ;
   int rcu_tasks_idle_cpu ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned long jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   unsigned char sched_migrated : 1 ;
   unsigned char memcg_kmem_skip_account : 1 ;
   unsigned char brk_randomized : 1 ;
   unsigned long atomic_flags ;
   struct restart_block restart_block ;
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
   u64 start_time ;
   u64 real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   struct nameidata *nameidata ;
   struct sysv_sem sysvsem ;
   struct sysv_shm sysvshm ;
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
   struct wake_q_node wake_q ;
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
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
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long numa_faults_locality[3U] ;
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
   unsigned int kasan_depth ;
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
   unsigned long task_state_change ;
   int pagefault_disabled ;
};
struct jsm_channel;
struct uart_port;
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
struct fwnode_handle;
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
   struct iommu_ops const *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
enum probe_type {
    PROBE_DEFAULT_STRATEGY = 0,
    PROBE_PREFER_ASYNCHRONOUS = 1,
    PROBE_FORCE_SYNCHRONOUS = 2
} ;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   enum probe_type probe_type ;
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
   struct fwnode_handle *fwnode ;
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
   struct wake_irq *wakeirq ;
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
union __anonunion____missing_field_name_220 {
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
   unsigned char ignore_hotplug : 1 ;
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
   unsigned char no_64bit_msi : 1 ;
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
   unsigned char irq_managed : 1 ;
   unsigned char has_secondary_link : 1 ;
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
   union __anonunion____missing_field_name_220 __annonCompField58 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
   char *driver_override ;
};
struct pci_ops;
struct msi_controller;
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
   struct msi_controller *msi ;
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
   void *(*map_bus)(struct pci_bus * , unsigned int , int ) ;
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
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   int nid ;
   struct mem_cgroup *memcg ;
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
struct bdi_writeback;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *cow_page ;
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
   int (*pfn_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   struct page *(*find_special_page)(struct vm_area_struct * , unsigned long ) ;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_224 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_223 {
   struct __anonstruct____missing_field_name_224 __annonCompField59 ;
};
struct lockref {
   union __anonunion____missing_field_name_223 __annonCompField60 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_226 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_225 {
   struct __anonstruct____missing_field_name_226 __annonCompField61 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_225 __annonCompField62 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_227 {
   struct hlist_node d_alias ;
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
   struct list_head d_child ;
   struct list_head d_subdirs ;
   union __anonunion_d_u_227 d_u ;
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
   struct inode *(*d_select_inode)(struct dentry * , unsigned int ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct list_lru_one {
   struct list_head list ;
   long nr_items ;
};
struct list_lru_memcg {
   struct list_lru_one *lru[0U] ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_lru_one lru ;
   struct list_lru_memcg *memcg_lrus ;
};
struct list_lru {
   struct list_lru_node *node ;
   struct list_head list ;
};
struct __anonstruct____missing_field_name_231 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_230 {
   struct __anonstruct____missing_field_name_231 __annonCompField63 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_230 __annonCompField64 ;
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
struct export_operations;
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
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_235 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_235 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_236 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_236 __annonCompField66 ;
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
   qsize_t dqi_max_spc_limit ;
   qsize_t dqi_max_ino_limit ;
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
   int (*get_projid)(struct inode * , kprojid_t * ) ;
};
struct qc_dqblk {
   int d_fieldmask ;
   u64 d_spc_hardlimit ;
   u64 d_spc_softlimit ;
   u64 d_ino_hardlimit ;
   u64 d_ino_softlimit ;
   u64 d_space ;
   u64 d_ino_count ;
   s64 d_ino_timer ;
   s64 d_spc_timer ;
   int d_ino_warns ;
   int d_spc_warns ;
   u64 d_rt_spc_hardlimit ;
   u64 d_rt_spc_softlimit ;
   u64 d_rt_space ;
   s64 d_rt_spc_timer ;
   int d_rt_spc_warns ;
};
struct qc_type_state {
   unsigned int flags ;
   unsigned int spc_timelimit ;
   unsigned int ino_timelimit ;
   unsigned int rt_spc_timelimit ;
   unsigned int spc_warnlimit ;
   unsigned int ino_warnlimit ;
   unsigned int rt_spc_warnlimit ;
   unsigned long long ino ;
   blkcnt_t blocks ;
   blkcnt_t nextents ;
};
struct qc_state {
   unsigned int s_incoredqs ;
   struct qc_type_state s_state[3U] ;
};
struct qc_info {
   int i_fieldmask ;
   unsigned int i_flags ;
   unsigned int i_spc_timelimit ;
   unsigned int i_ino_timelimit ;
   unsigned int i_rt_spc_timelimit ;
   unsigned int i_spc_warnlimit ;
   unsigned int i_ino_warnlimit ;
   unsigned int i_rt_spc_warnlimit ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_enable)(struct super_block * , unsigned int ) ;
   int (*quota_disable)(struct super_block * , unsigned int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*set_info)(struct super_block * , int , struct qc_info * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*get_state)(struct super_block * , struct qc_state * ) ;
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
   struct inode *files[3U] ;
   struct mem_dqinfo info[3U] ;
   struct quota_format_ops const *ops[3U] ;
};
struct kiocb {
   struct file *ki_filp ;
   loff_t ki_pos ;
   void (*ki_complete)(struct kiocb * , long , long ) ;
   void *private ;
   int ki_flags ;
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
   ssize_t (*direct_IO)(struct kiocb * , struct iov_iter * , loff_t ) ;
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
   atomic_t i_mmap_writable ;
   struct rb_root i_mmap ;
   struct rw_semaphore i_mmap_rwsem ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
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
union __anonunion____missing_field_name_239 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_240 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_241 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
   char *i_link ;
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
   union __anonunion____missing_field_name_239 __annonCompField67 ;
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
   unsigned long dirtied_time_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct bdi_writeback *i_wb ;
   int i_wb_frn_winner ;
   u16 i_wb_frn_avg_time ;
   u16 i_wb_frn_history ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_240 __annonCompField68 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_241 __annonCompField69 ;
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
union __anonunion_f_u_242 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_242 f_u ;
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
typedef void *fl_owner_t;
struct file_lock;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   fl_owner_t (*lm_get_owner)(fl_owner_t ) ;
   void (*lm_put_owner)(fl_owner_t ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , int ) ;
   bool (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock * , int , struct list_head * ) ;
   void (*lm_setup)(struct file_lock * , void ** ) ;
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
struct __anonstruct_afs_244 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_243 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_244 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_list ;
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
   union __anonunion_fl_u_243 fl_u ;
};
struct file_lock_context {
   spinlock_t flc_lock ;
   struct list_head flc_flock ;
   struct list_head flc_posix ;
   struct list_head flc_lease ;
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
   unsigned long s_iflags ;
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
   unsigned int s_quota_types ;
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
   struct hlist_head s_pins ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
   int s_stack_depth ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context;
struct dir_context {
   int (*actor)(struct dir_context * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*mremap)(struct file * , struct vm_area_struct * ) ;
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
   int (*setlease)(struct file * , long , struct file_lock ** , void ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   void (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   char const *(*follow_link)(struct dentry * , void ** ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct inode * , void * ) ;
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
   int (*freeze_super)(struct super_block * ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*thaw_super)(struct super_block * ) ;
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
   struct dquot **(*get_dquots)(struct inode * ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , struct shrink_control * ) ;
   long (*free_cached_objects)(struct super_block * , struct shrink_control * ) ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
};
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
union __anonunion____missing_field_name_245 {
   struct tty_buffer *next ;
   struct llist_node free ;
};
struct tty_buffer {
   union __anonunion____missing_field_name_245 __annonCompField70 ;
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
   spinlock_t flow_lock ;
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
   unsigned char flow_stopped : 1 ;
   unsigned long unused : 62 ;
   int hw_stopped ;
   unsigned char ctrl_status ;
   unsigned char packet : 1 ;
   unsigned long unused_ctrl : 55 ;
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
   int closing ;
   unsigned char *write_buf ;
   int write_cnt ;
   struct work_struct SAK_work ;
   struct tty_port *port ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct circ_buf {
   char *buf ;
   int head ;
   int tail ;
};
struct serial_struct {
   int type ;
   int line ;
   unsigned int port ;
   int irq ;
   int flags ;
   int xmit_fifo_size ;
   int custom_divisor ;
   int baud_base ;
   unsigned short close_delay ;
   char io_type ;
   char reserved_char[1U] ;
   int hub6 ;
   unsigned short closing_wait ;
   unsigned short closing_wait2 ;
   unsigned char *iomem_base ;
   unsigned short iomem_reg_shift ;
   unsigned int port_high ;
   unsigned long iomap_base ;
};
struct serial_icounter_struct {
   int cts ;
   int dsr ;
   int rng ;
   int dcd ;
   int rx ;
   int tx ;
   int frame ;
   int overrun ;
   int parity ;
   int brk ;
   int buf_overrun ;
   int reserved[9U] ;
};
struct serial_rs485 {
   __u32 flags ;
   __u32 delay_rts_before_send ;
   __u32 delay_rts_after_send ;
   __u32 padding[5U] ;
};
struct uart_ops {
   unsigned int (*tx_empty)(struct uart_port * ) ;
   void (*set_mctrl)(struct uart_port * , unsigned int ) ;
   unsigned int (*get_mctrl)(struct uart_port * ) ;
   void (*stop_tx)(struct uart_port * ) ;
   void (*start_tx)(struct uart_port * ) ;
   void (*throttle)(struct uart_port * ) ;
   void (*unthrottle)(struct uart_port * ) ;
   void (*send_xchar)(struct uart_port * , char ) ;
   void (*stop_rx)(struct uart_port * ) ;
   void (*enable_ms)(struct uart_port * ) ;
   void (*break_ctl)(struct uart_port * , int ) ;
   int (*startup)(struct uart_port * ) ;
   void (*shutdown)(struct uart_port * ) ;
   void (*flush_buffer)(struct uart_port * ) ;
   void (*set_termios)(struct uart_port * , struct ktermios * , struct ktermios * ) ;
   void (*set_ldisc)(struct uart_port * , struct ktermios * ) ;
   void (*pm)(struct uart_port * , unsigned int , unsigned int ) ;
   char const *(*type)(struct uart_port * ) ;
   void (*release_port)(struct uart_port * ) ;
   int (*request_port)(struct uart_port * ) ;
   void (*config_port)(struct uart_port * , int ) ;
   int (*verify_port)(struct uart_port * , struct serial_struct * ) ;
   int (*ioctl)(struct uart_port * , unsigned int , unsigned long ) ;
   int (*poll_init)(struct uart_port * ) ;
   void (*poll_put_char)(struct uart_port * , unsigned char ) ;
   int (*poll_get_char)(struct uart_port * ) ;
};
struct uart_icount {
   __u32 cts ;
   __u32 dsr ;
   __u32 rng ;
   __u32 dcd ;
   __u32 rx ;
   __u32 tx ;
   __u32 frame ;
   __u32 overrun ;
   __u32 parity ;
   __u32 brk ;
   __u32 buf_overrun ;
};
typedef unsigned int upf_t;
typedef unsigned int upstat_t;
struct uart_state;
struct console;
struct uart_port {
   spinlock_t lock ;
   unsigned long iobase ;
   unsigned char *membase ;
   unsigned int (*serial_in)(struct uart_port * , int ) ;
   void (*serial_out)(struct uart_port * , int , int ) ;
   void (*set_termios)(struct uart_port * , struct ktermios * , struct ktermios * ) ;
   void (*set_mctrl)(struct uart_port * , unsigned int ) ;
   int (*startup)(struct uart_port * ) ;
   void (*shutdown)(struct uart_port * ) ;
   void (*throttle)(struct uart_port * ) ;
   void (*unthrottle)(struct uart_port * ) ;
   int (*handle_irq)(struct uart_port * ) ;
   void (*pm)(struct uart_port * , unsigned int , unsigned int ) ;
   void (*handle_break)(struct uart_port * ) ;
   int (*rs485_config)(struct uart_port * , struct serial_rs485 * ) ;
   unsigned int irq ;
   unsigned long irqflags ;
   unsigned int uartclk ;
   unsigned int fifosize ;
   unsigned char x_char ;
   unsigned char regshift ;
   unsigned char iotype ;
   unsigned char unused1 ;
   unsigned int read_status_mask ;
   unsigned int ignore_status_mask ;
   struct uart_state *state ;
   struct uart_icount icount ;
   struct console *cons ;
   upf_t flags ;
   upstat_t status ;
   int hw_stopped ;
   unsigned int mctrl ;
   unsigned int timeout ;
   unsigned int type ;
   struct uart_ops const *ops ;
   unsigned int custom_divisor ;
   unsigned int line ;
   unsigned int minor ;
   resource_size_t mapbase ;
   resource_size_t mapsize ;
   struct device *dev ;
   unsigned char hub6 ;
   unsigned char suspended ;
   unsigned char irq_wake ;
   unsigned char unused[2U] ;
   struct attribute_group *attr_group ;
   struct attribute_group const **tty_groups ;
   struct serial_rs485 rs485 ;
   void *private_data ;
};
enum uart_pm_state {
    UART_PM_STATE_ON = 0,
    UART_PM_STATE_OFF = 3,
    UART_PM_STATE_UNDEFINED = 4
} ;
struct uart_state {
   struct tty_port port ;
   enum uart_pm_state pm_state ;
   struct circ_buf xmit ;
   struct uart_port *uart_port ;
};
struct uart_driver {
   struct module *owner ;
   char const *driver_name ;
   char const *dev_name ;
   int major ;
   int minor ;
   int nr ;
   struct console *cons ;
   struct uart_state *state ;
   struct tty_driver *tty_driver ;
};
struct jsm_board;
struct board_ops {
   irqreturn_t (*intr)(int , void * ) ;
   void (*uart_init)(struct jsm_channel * ) ;
   void (*uart_off)(struct jsm_channel * ) ;
   void (*param)(struct jsm_channel * ) ;
   void (*assert_modem_signals)(struct jsm_channel * ) ;
   void (*flush_uart_write)(struct jsm_channel * ) ;
   void (*flush_uart_read)(struct jsm_channel * ) ;
   void (*disable_receiver)(struct jsm_channel * ) ;
   void (*enable_receiver)(struct jsm_channel * ) ;
   void (*send_break)(struct jsm_channel * ) ;
   void (*clear_break)(struct jsm_channel * ) ;
   void (*send_start_character)(struct jsm_channel * ) ;
   void (*send_stop_character)(struct jsm_channel * ) ;
   void (*copy_data_from_queue_to_uart)(struct jsm_channel * ) ;
   u32 (*get_uart_bytes_left)(struct jsm_channel * ) ;
   void (*send_immediate_char)(struct jsm_channel * , unsigned char ) ;
};
struct jsm_board {
   int boardnum ;
   int type ;
   u8 rev ;
   struct pci_dev *pci_dev ;
   u32 maxports ;
   spinlock_t bd_intr_lock ;
   u32 nasync ;
   u32 irq ;
   u64 membase ;
   u64 membase_end ;
   u8 *re_map_membase ;
   u64 iobase ;
   u64 iobase_end ;
   u32 bd_uart_offset ;
   struct jsm_channel *channels[8U] ;
   u32 bd_dividend ;
   struct board_ops *bd_ops ;
   struct list_head jsm_board_entry ;
};
struct neo_uart_struct;
struct cls_uart_struct;
struct jsm_channel {
   struct uart_port uart_port ;
   struct jsm_board *ch_bd ;
   spinlock_t ch_lock ;
   wait_queue_head_t ch_flags_wait ;
   u32 ch_portnum ;
   u32 ch_open_count ;
   u32 ch_flags ;
   u64 ch_close_delay ;
   tcflag_t ch_c_iflag ;
   tcflag_t ch_c_cflag ;
   tcflag_t ch_c_oflag ;
   tcflag_t ch_c_lflag ;
   u8 ch_stopc ;
   u8 ch_startc ;
   u8 ch_mostat ;
   u8 ch_mistat ;
   struct neo_uart_struct *ch_neo_uart ;
   struct cls_uart_struct *ch_cls_uart ;
   u8 ch_cached_lsr ;
   u8 *ch_rqueue ;
   u16 ch_r_head ;
   u16 ch_r_tail ;
   u8 *ch_equeue ;
   u16 ch_e_head ;
   u16 ch_e_tail ;
   u64 ch_rxcount ;
   u64 ch_txcount ;
   u8 ch_r_tlevel ;
   u8 ch_t_tlevel ;
   u8 ch_r_watermark ;
   u32 ch_stops_sent ;
   u64 ch_err_parity ;
   u64 ch_err_frame ;
   u64 ch_err_break ;
   u64 ch_err_overrun ;
   u64 ch_xon_sends ;
   u64 ch_xoff_sends ;
};
struct cls_uart_struct {
   u8 txrx ;
   u8 ier ;
   u8 isr_fcr ;
   u8 lcr ;
   u8 mcr ;
   u8 lsr ;
   u8 msr ;
   u8 spr ;
};
struct neo_uart_struct {
   u8 txrx ;
   u8 ier ;
   u8 isr_fcr ;
   u8 lcr ;
   u8 mcr ;
   u8 lsr ;
   u8 msr ;
   u8 spr ;
   u8 fctr ;
   u8 efr ;
   u8 tfifo ;
   u8 rfifo ;
   u8 xoffchar1 ;
   u8 xoffchar2 ;
   u8 xonchar1 ;
   u8 xonchar2 ;
   u8 reserved1[255U] ;
   u8 txrxburst[64U] ;
   u8 reserved2[63U] ;
   u8 rxburst_with_errors[64U] ;
};
typedef int ldv_func_ret_type___2;
enum hrtimer_restart;
struct __anonstruct_baud_rates_255 {
   unsigned int rate ;
   unsigned int cflag ;
};
enum hrtimer_restart;
typedef unsigned int uint;
enum hrtimer_restart;
struct __anonstruct_baud_rates_254 {
   unsigned int rate ;
   unsigned int cflag ;
};
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void __VERIFIER_assume(int ) ;
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
void *ldv_init_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  {
  tmp = calloc(1UL, size);
  p = tmp;
  __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
  return (p);
}
}
void *ldv_memset(void *s , int c , size_t n )
{
  void *tmp ;
  {
  tmp = memset(s, c, n);
  return (tmp);
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
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
__inline static long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{
  void *tmp ;
  {
  tmp = ioremap_nocache(offset, size);
  return (tmp);
}
}
extern void iounmap(void volatile * ) ;
__inline static void outb(unsigned char value , int port )
{
  {
  __asm__ volatile ("outb %b0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
int LDV_IN_INTERRUPT = 1;
struct pci_dev *jsm_driver_group1 ;
struct pci_dev *jsm_err_handler_group0 ;
int pci_counter ;
struct jsm_channel *jsm_neo_ops_group0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_state_variable_3 ;
int ldv_state_variable_2 ;
int ref_cnt ;
struct uart_port *jsm_ops_group0 ;
int ldv_state_variable_1 ;
int ldv_state_variable_4 ;
struct jsm_channel *jsm_cls_ops_group0 ;
void ldv_initialize_board_ops_3(void) ;
void ldv_initialize_uart_ops_2(void) ;
void ldv_pci_driver_4(void) ;
void ldv_initialize_pci_error_handlers_5(void) ;
void ldv_initialize_board_ops_1(void) ;
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
extern void dev_err(struct device const * , char const * , ...) ;
extern void dev_warn(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
int ldv___pci_register_driver_24(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
void ldv_pci_unregister_driver_25(struct pci_driver *ldv_func_arg1 ) ;
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
extern void free_irq(unsigned int , void * ) ;
extern int uart_register_driver(struct uart_driver * ) ;
extern void uart_unregister_driver(struct uart_driver * ) ;
struct uart_driver jsm_uart_driver ;
struct board_ops jsm_neo_ops ;
struct board_ops jsm_cls_ops ;
int jsm_debug ;
int jsm_tty_init(struct jsm_board *brd ) ;
int jsm_uart_port_init(struct jsm_board *brd ) ;
int jsm_remove_uart_port(struct jsm_board *brd ) ;
struct uart_driver jsm_uart_driver =
     {& __this_module, "jsm", "ttyn", 0, 0, 32, 0, 0, 0};
static pci_ers_result_t jsm_io_error_detected(struct pci_dev *pdev , pci_channel_state_t state ) ;
static pci_ers_result_t jsm_io_slot_reset(struct pci_dev *pdev ) ;
static void jsm_io_resume(struct pci_dev *pdev ) ;
static struct pci_error_handlers const jsm_err_handler = {(pci_ers_result_t (*)(struct pci_dev * , enum pci_channel_state ))(& jsm_io_error_detected),
    0, 0, & jsm_io_slot_reset, 0, & jsm_io_resume};
static int jsm_probe_one(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  int rc ;
  struct jsm_board *brd ;
  int adapter_count ;
  void *tmp ;
  int tmp___0 ;
  struct lock_class_key __key ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  void *tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  void *tmp___4 ;
  {
  rc = 0;
  rc = pci_enable_device(pdev);
  if (rc != 0) {
    dev_err((struct device const *)(& pdev->dev), "Device enable FAILED\n");
    goto out;
  } else {
  }
  rc = pci_request_regions(pdev, "jsm");
  if (rc != 0) {
    dev_err((struct device const *)(& pdev->dev), "pci_request_region FAILED\n");
    goto out_disable_device;
  } else {
  }
  tmp = kzalloc(256UL, 208U);
  brd = (struct jsm_board *)tmp;
  if ((unsigned long )brd == (unsigned long )((struct jsm_board *)0)) {
    rc = -12;
    goto out_release_regions;
  } else {
  }
  tmp___0 = adapter_count;
  adapter_count = adapter_count + 1;
  brd->boardnum = tmp___0;
  brd->pci_dev = pdev;
  switch ((int )pdev->device) {
  case 200: ;
  case 201: ;
  case 202: ;
  case 203: ;
  case 206:
  brd->maxports = 2U;
  goto ldv_33926;
  case 40: ;
  case 208: ;
  case 176: ;
  case 241: ;
  case 242: ;
  case 244:
  brd->maxports = 4U;
  goto ldv_33926;
  case 41: ;
  case 209: ;
  case 177: ;
  case 240: ;
  case 243:
  brd->maxports = 8U;
  goto ldv_33926;
  default:
  brd->maxports = 1U;
  goto ldv_33926;
  }
  ldv_33926:
  spinlock_check(& brd->bd_intr_lock);
  __raw_spin_lock_init(& brd->bd_intr_lock.__annonCompField18.rlock, "&(&brd->bd_intr_lock)->rlock",
                       & __key);
  brd->rev = pdev->revision;
  brd->irq = pdev->irq;
  switch ((int )pdev->device) {
  case 40: ;
  case 208: ;
  case 41: ;
  case 209: ;
  if (jsm_debug & 1) {
    descriptor.modname = "jsm";
    descriptor.function = "jsm_probe_one";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_driver.c";
    descriptor.format = "jsm_found_board - Classic adapter\n";
    descriptor.lineno = 134U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& (brd->pci_dev)->dev),
                        "jsm_found_board - Classic adapter\n");
    } else {
    }
  } else {
  }
  brd->membase = pdev->resource[4].start;
  brd->membase_end = pdev->resource[4].end;
  if ((int )brd->membase & 1) {
    brd->membase = brd->membase & 0xfffffffffffffffcULL;
  } else {
    brd->membase = brd->membase & 0xfffffffffffffff0ULL;
  }
  brd->iobase = pdev->resource[1].start;
  brd->iobase_end = pdev->resource[1].end;
  brd->iobase = (u64 )((unsigned int )brd->iobase) & 65534ULL;
  brd->bd_ops = & jsm_cls_ops;
  brd->bd_uart_offset = 8U;
  brd->bd_dividend = 921600U;
  tmp___2 = ioremap(brd->membase, pdev->resource[4].start != 0ULL || pdev->resource[4].end != pdev->resource[4].start ? (unsigned long )((pdev->resource[4].end - pdev->resource[4].start) + 1ULL) : 0UL);
  brd->re_map_membase = (u8 *)tmp___2;
  if ((unsigned long )brd->re_map_membase == (unsigned long )((u8 *)0U)) {
    dev_err((struct device const *)(& pdev->dev), "Card has no PCI Memory resources, failing board.\n");
    rc = -12;
    goto out_kfree_brd;
  } else {
  }
  outb(67, (int )((unsigned int )brd->iobase + 76U));
  goto ldv_33947;
  case 200: ;
  case 201: ;
  case 202: ;
  case 203: ;
  case 206: ;
  case 176: ;
  case 241: ;
  case 242: ;
  case 244: ;
  case 177: ;
  case 240: ;
  case 243: ;
  if (jsm_debug & 1) {
    descriptor___0.modname = "jsm";
    descriptor___0.function = "jsm_probe_one";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_driver.c";
    descriptor___0.format = "jsm_found_board - NEO adapter\n";
    descriptor___0.lineno = 196U;
    descriptor___0.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (brd->pci_dev)->dev),
                        "jsm_found_board - NEO adapter\n");
    } else {
    }
  } else {
  }
  brd->membase = pdev->resource[0].start;
  brd->membase_end = pdev->resource[0].end;
  if ((int )brd->membase & 1) {
    brd->membase = brd->membase & 0xfffffffffffffffcULL;
  } else {
    brd->membase = brd->membase & 0xfffffffffffffff0ULL;
  }
  brd->bd_ops = & jsm_neo_ops;
  brd->bd_uart_offset = 512U;
  brd->bd_dividend = 921600U;
  tmp___4 = ioremap(brd->membase, pdev->resource[0].start != 0ULL || pdev->resource[0].end != pdev->resource[0].start ? (unsigned long )((pdev->resource[0].end - pdev->resource[0].start) + 1ULL) : 0UL);
  brd->re_map_membase = (u8 *)tmp___4;
  if ((unsigned long )brd->re_map_membase == (unsigned long )((u8 *)0U)) {
    dev_err((struct device const *)(& pdev->dev), "Card has no PCI Memory resources, failing board.\n");
    rc = -12;
    goto out_kfree_brd;
  } else {
  }
  goto ldv_33947;
  default: ;
  return (-6);
  }
  ldv_33947:
  rc = request_irq(brd->irq, (brd->bd_ops)->intr, 128UL, "JSM", (void *)brd);
  if (rc != 0) {
    dev_warn((struct device const *)(& pdev->dev), "Failed to hook IRQ %d\n", brd->irq);
    goto out_iounmap;
  } else {
  }
  rc = jsm_tty_init(brd);
  if (rc < 0) {
    dev_err((struct device const *)(& pdev->dev), "Can\'t init tty devices (%d)\n",
            rc);
    rc = -6;
    goto out_free_irq;
  } else {
  }
  rc = jsm_uart_port_init(brd);
  if (rc < 0) {
    dev_err((struct device const *)(& pdev->dev), "Can\'t init uart port (%d)\n",
            rc);
    rc = -6;
    goto out_free_irq;
  } else {
  }
  _dev_info((struct device const *)(& pdev->dev), "board %d: Digi Classic/Neo (rev %d), irq %d\n",
            adapter_count, (int )brd->rev, brd->irq);
  pci_set_drvdata(pdev, (void *)brd);
  pci_save_state(pdev);
  return (0);
  out_free_irq:
  jsm_remove_uart_port(brd);
  free_irq(brd->irq, (void *)brd);
  out_iounmap:
  iounmap((void volatile *)brd->re_map_membase);
  out_kfree_brd:
  kfree((void const *)brd);
  out_release_regions:
  pci_release_regions(pdev);
  out_disable_device:
  pci_disable_device(pdev);
  out: ;
  return (rc);
}
}
static void jsm_remove_one(struct pci_dev *pdev )
{
  struct jsm_board *brd ;
  void *tmp ;
  int i ;
  {
  tmp = pci_get_drvdata(pdev);
  brd = (struct jsm_board *)tmp;
  i = 0;
  switch ((int )pdev->device) {
  case 40: ;
  case 208: ;
  case 41: ;
  case 209:
  outb(0, (int )((unsigned int )brd->iobase + 76U));
  goto ldv_33973;
  default: ;
  goto ldv_33973;
  }
  ldv_33973:
  jsm_remove_uart_port(brd);
  free_irq(brd->irq, (void *)brd);
  iounmap((void volatile *)brd->re_map_membase);
  i = 0;
  goto ldv_33976;
  ldv_33975: ;
  if ((unsigned long )brd->channels[i] != (unsigned long )((struct jsm_channel *)0)) {
    kfree((void const *)(brd->channels[i])->ch_rqueue);
    kfree((void const *)(brd->channels[i])->ch_equeue);
    kfree((void const *)brd->channels[i]);
  } else {
  }
  i = i + 1;
  ldv_33976: ;
  if ((u32 )i < brd->maxports) {
    goto ldv_33975;
  } else {
  }
  pci_release_regions(pdev);
  pci_disable_device(pdev);
  kfree((void const *)brd);
  return;
}
}
static struct pci_device_id jsm_pci_tbl[19U] =
  { {4431U, 200U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4431U, 201U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {4431U, 202U, 4294967295U, 4294967295U, 0U, 0U, 2UL},
        {4431U, 203U, 4294967295U, 4294967295U, 0U, 0U, 3UL},
        {4431U, 244U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {4431U, 177U, 4294967295U, 4294967295U, 0U, 0U, 5UL},
        {4431U, 176U, 4294967295U, 4294967295U, 0U, 0U, 6UL},
        {4431U, 204U, 4294967295U, 4294967295U, 0U, 0U, 7UL},
        {4431U, 205U, 4294967295U, 4294967295U, 0U, 0U, 8UL},
        {4431U, 206U, 4294967295U, 4294967295U, 0U, 0U, 9UL},
        {4431U, 240U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {4431U, 241U, 4294967295U, 4294967295U, 0U, 0U, 11UL},
        {4431U, 242U, 4294967295U, 4294967295U, 0U, 0U, 12UL},
        {4431U, 243U, 4294967295U, 4294967295U, 0U, 0U, 13UL},
        {4431U, 40U, 4294967295U, 4294967295U, 0U, 0U, 14UL},
        {4431U, 208U, 4294967295U, 4294967295U, 0U, 0U, 15UL},
        {4431U, 41U, 4294967295U, 4294967295U, 0U, 0U, 16UL},
        {4431U, 209U, 4294967295U, 4294967295U, 0U, 0U, 17UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__jsm_pci_tbl_device_table[19U] ;
static struct pci_driver jsm_driver =
     {{0, 0}, "jsm", (struct pci_device_id const *)(& jsm_pci_tbl), & jsm_probe_one,
    & jsm_remove_one, 0, 0, 0, 0, 0, 0, & jsm_err_handler, {0, 0, 0, 0, (_Bool)0,
                                                            0, 0, 0, 0, 0, 0, 0, 0,
                                                            0, 0, 0}, {{{{{{0}}, 0U,
                                                                          0U, 0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                                       {0, 0}}};
static pci_ers_result_t jsm_io_error_detected(struct pci_dev *pdev , pci_channel_state_t state )
{
  struct jsm_board *brd ;
  void *tmp ;
  {
  tmp = pci_get_drvdata(pdev);
  brd = (struct jsm_board *)tmp;
  jsm_remove_uart_port(brd);
  return (3U);
}
}
static pci_ers_result_t jsm_io_slot_reset(struct pci_dev *pdev )
{
  int rc ;
  {
  rc = pci_enable_device(pdev);
  if (rc != 0) {
    return (4U);
  } else {
  }
  pci_set_master(pdev);
  return (5U);
}
}
static void jsm_io_resume(struct pci_dev *pdev )
{
  struct jsm_board *brd ;
  void *tmp ;
  {
  tmp = pci_get_drvdata(pdev);
  brd = (struct jsm_board *)tmp;
  pci_restore_state(pdev);
  pci_save_state(pdev);
  jsm_uart_port_init(brd);
  return;
}
}
static int jsm_init_module(void)
{
  int rc ;
  {
  rc = uart_register_driver(& jsm_uart_driver);
  if (rc == 0) {
    rc = ldv___pci_register_driver_24(& jsm_driver, & __this_module, "jsm");
    if (rc != 0) {
      uart_unregister_driver(& jsm_uart_driver);
    } else {
    }
  } else {
  }
  return (rc);
}
}
static void jsm_exit_module(void)
{
  {
  ldv_pci_unregister_driver_25(& jsm_driver);
  uart_unregister_driver(& jsm_uart_driver);
  return;
}
}
extern int ldv_probe_5(void) ;
extern int ldv_release_5(void) ;
int ldv_retval_0 ;
extern void ldv_initialize(void) ;
int ldv_retval_1 ;
extern void ldv_check_final_state(void) ;
extern int ldv_shutdown_4(void) ;
extern int ldv_suspend_5(void) ;
void ldv_pci_driver_4(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(2976UL);
  jsm_driver_group1 = (struct pci_dev *)tmp;
  return;
}
}
void ldv_initialize_pci_error_handlers_5(void)
{
  {
  jsm_err_handler_group0 = ldv_malloc(sizeof(struct pci_dev));
  return;
}
}
void ldv_main_exported_2(void) ;
void ldv_main_exported_3(void) ;
void ldv_main_exported_1(void) ;
int main(void)
{
  struct pci_device_id *ldvarg0 ;
  void *tmp ;
  enum pci_channel_state ldvarg13 ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = ldv_init_zalloc(32UL);
  ldvarg0 = (struct pci_device_id *)tmp;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg13), 0, 4UL);
  ldv_state_variable_4 = 0;
  ldv_state_variable_1 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_5 = 0;
  ldv_34076:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_4 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      ldv_retval_0 = jsm_probe_one(jsm_driver_group1, (struct pci_device_id const *)ldvarg0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_4 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_34052;
    case 1: ;
    if (ldv_state_variable_4 == 2) {
      jsm_remove_one(jsm_driver_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34052;
    case 2: ;
    if (ldv_state_variable_4 == 2) {
      ldv_shutdown_4();
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_34052;
    default:
    ldv_stop();
    }
    ldv_34052: ;
  } else {
  }
  goto ldv_34056;
  case 1: ;
  if (ldv_state_variable_1 != 0) {
    ldv_main_exported_1();
  } else {
  }
  goto ldv_34056;
  case 2: ;
  if (ldv_state_variable_0 != 0) {
    tmp___2 = __VERIFIER_nondet_int();
    switch (tmp___2) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      jsm_exit_module();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_34061;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = jsm_init_module();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_initialize_pci_error_handlers_5();
        ldv_state_variable_2 = 1;
        ldv_initialize_uart_ops_2();
        ldv_state_variable_3 = 1;
        ldv_initialize_board_ops_3();
        ldv_state_variable_1 = 1;
        ldv_initialize_board_ops_1();
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_34061;
    default:
    ldv_stop();
    }
    ldv_34061: ;
  } else {
  }
  goto ldv_34056;
  case 3: ;
  if (ldv_state_variable_3 != 0) {
    ldv_main_exported_3();
  } else {
  }
  goto ldv_34056;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    ldv_main_exported_2();
  } else {
  }
  goto ldv_34056;
  case 5: ;
  if (ldv_state_variable_5 != 0) {
    tmp___3 = __VERIFIER_nondet_int();
    switch (tmp___3) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      jsm_io_slot_reset(jsm_err_handler_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      jsm_io_slot_reset(jsm_err_handler_group0);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      jsm_io_slot_reset(jsm_err_handler_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_34068;
    case 1: ;
    if (ldv_state_variable_5 == 1) {
      jsm_io_error_detected(jsm_err_handler_group0, (pci_channel_state_t )ldvarg13);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      jsm_io_error_detected(jsm_err_handler_group0, (pci_channel_state_t )ldvarg13);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      jsm_io_error_detected(jsm_err_handler_group0, (pci_channel_state_t )ldvarg13);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_34068;
    case 2: ;
    if (ldv_state_variable_5 == 3) {
      jsm_io_resume(jsm_err_handler_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_34068;
    case 3: ;
    if (ldv_state_variable_5 == 2) {
      ldv_suspend_5();
      ldv_state_variable_5 = 3;
    } else {
    }
    goto ldv_34068;
    case 4: ;
    if (ldv_state_variable_5 == 3) {
      ldv_release_5();
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      ldv_release_5();
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_34068;
    case 5: ;
    if (ldv_state_variable_5 == 1) {
      ldv_probe_5();
      ldv_state_variable_5 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_34068;
    default:
    ldv_stop();
    }
    ldv_34068: ;
  } else {
  }
  goto ldv_34056;
  default:
  ldv_stop();
  }
  ldv_34056: ;
  goto ldv_34076;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_zalloc(size);
  return (tmp);
}
}
int ldv___pci_register_driver_24(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_4 = 1;
  ldv_pci_driver_4();
  return (ldv_func_res);
}
}
void ldv_pci_unregister_driver_25(struct pci_driver *ldv_func_arg1 )
{
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_state_variable_4 = 0;
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void ldv_spin_unlock_irqrestore_39(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern unsigned long volatile jiffies ;
__inline static unsigned char readb(void const volatile *addr )
{
  unsigned char ret ;
  {
  __asm__ volatile ("movb %1,%0": "=q" (ret): "m" (*((unsigned char volatile *)addr)): "memory");
  return (ret);
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
__inline static void writeb(unsigned char val , void volatile *addr )
{
  {
  __asm__ volatile ("movb %0,%1": : "q" (val), "m" (*((unsigned char volatile *)addr)): "memory");
  return;
}
}
__inline static void memcpy_fromio(void *dst , void const volatile *src , size_t count )
{
  {
  memcpy(dst, (void const *)src, count);
  return;
}
}
__inline static void memcpy_toio(void volatile *dst , void const *src , size_t count )
{
  {
  memcpy((void *)dst, src, count);
  return;
}
}
extern void __const_udelay(unsigned long ) ;
extern void uart_write_wakeup(struct uart_port * ) ;
extern void uart_handle_dcd_change(struct uart_port * , unsigned int ) ;
extern void uart_handle_cts_change(struct uart_port * , unsigned int ) ;
void jsm_input(struct jsm_channel *ch ) ;
void jsm_check_queue_flow_control(struct jsm_channel *ch ) ;
static u32 jsm_offset_table[8U] =
  { 1U, 2U, 4U, 8U,
        16U, 32U, 64U, 128U};
__inline static void neo_pci_posting_flush(struct jsm_board *bd )
{
  {
  readb((void const volatile *)bd->re_map_membase + 141U);
  return;
}
}
static void neo_set_cts_flow_control(struct jsm_channel *ch )
{
  u8 ier ;
  u8 efr ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  ier = readb((void const volatile *)(& (ch->ch_neo_uart)->ier));
  efr = readb((void const volatile *)(& (ch->ch_neo_uart)->efr));
  if ((jsm_debug & 512) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "neo_set_cts_flow_control";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
    descriptor.format = "Setting CTSFLOW\n";
    descriptor.lineno = 50U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "Setting CTSFLOW\n");
    } else {
    }
  } else {
  }
  ier = (u8 )((unsigned int )ier | 128U);
  efr = (u8 )((unsigned int )efr | 144U);
  efr = (unsigned int )efr & 253U;
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb((int )efr, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb(193, (void volatile *)(& (ch->ch_neo_uart)->fctr));
  writeb(8, (void volatile *)(& (ch->ch_neo_uart)->tfifo));
  ch->ch_t_tlevel = 8U;
  writeb((int )ier, (void volatile *)(& (ch->ch_neo_uart)->ier));
  return;
}
}
static void neo_set_rts_flow_control(struct jsm_channel *ch )
{
  u8 ier ;
  u8 efr ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  ier = readb((void const volatile *)(& (ch->ch_neo_uart)->ier));
  efr = readb((void const volatile *)(& (ch->ch_neo_uart)->efr));
  if ((jsm_debug & 512) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "neo_set_rts_flow_control";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
    descriptor.format = "Setting RTSFLOW\n";
    descriptor.lineno = 81U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "Setting RTSFLOW\n");
    } else {
    }
  } else {
  }
  ier = (u8 )((unsigned int )ier | 64U);
  efr = (u8 )((unsigned int )efr | 80U);
  ier = (unsigned int )ier & 223U;
  efr = (unsigned int )efr & 247U;
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb((int )efr, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb(193, (void volatile *)(& (ch->ch_neo_uart)->fctr));
  ch->ch_r_watermark = 4U;
  writeb(56, (void volatile *)(& (ch->ch_neo_uart)->rfifo));
  ch->ch_r_tlevel = 56U;
  writeb((int )ier, (void volatile *)(& (ch->ch_neo_uart)->ier));
  ch->ch_mostat = (u8 )((unsigned int )ch->ch_mostat | 2U);
  return;
}
}
static void neo_set_ixon_flow_control(struct jsm_channel *ch )
{
  u8 ier ;
  u8 efr ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  ier = readb((void const volatile *)(& (ch->ch_neo_uart)->ier));
  efr = readb((void const volatile *)(& (ch->ch_neo_uart)->efr));
  if ((jsm_debug & 512) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "neo_set_ixon_flow_control";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
    descriptor.format = "Setting IXON FLOW\n";
    descriptor.lineno = 121U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "Setting IXON FLOW\n");
    } else {
    }
  } else {
  }
  ier = (unsigned int )ier & 127U;
  efr = (unsigned int )efr & 127U;
  efr = (u8 )((unsigned int )efr | 18U);
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb((int )efr, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb(195, (void volatile *)(& (ch->ch_neo_uart)->fctr));
  ch->ch_r_watermark = 4U;
  writeb(32, (void volatile *)(& (ch->ch_neo_uart)->rfifo));
  ch->ch_r_tlevel = 32U;
  writeb((int )ch->ch_startc, (void volatile *)(& (ch->ch_neo_uart)->xonchar1));
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->xonchar2));
  writeb((int )ch->ch_stopc, (void volatile *)(& (ch->ch_neo_uart)->xoffchar1));
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->xoffchar2));
  writeb((int )ier, (void volatile *)(& (ch->ch_neo_uart)->ier));
  return;
}
}
static void neo_set_ixoff_flow_control(struct jsm_channel *ch )
{
  u8 ier ;
  u8 efr ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  ier = readb((void const volatile *)(& (ch->ch_neo_uart)->ier));
  efr = readb((void const volatile *)(& (ch->ch_neo_uart)->efr));
  if ((jsm_debug & 512) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "neo_set_ixoff_flow_control";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
    descriptor.format = "Setting IXOFF FLOW\n";
    descriptor.lineno = 158U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "Setting IXOFF FLOW\n");
    } else {
    }
  } else {
  }
  ier = (unsigned int )ier & 191U;
  efr = (unsigned int )efr & 191U;
  ier = (u8 )((unsigned int )ier | 32U);
  efr = (u8 )((unsigned int )efr | 24U);
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb((int )efr, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb(195, (void volatile *)(& (ch->ch_neo_uart)->fctr));
  writeb(8, (void volatile *)(& (ch->ch_neo_uart)->tfifo));
  ch->ch_t_tlevel = 8U;
  writeb((int )ch->ch_startc, (void volatile *)(& (ch->ch_neo_uart)->xonchar1));
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->xonchar2));
  writeb((int )ch->ch_stopc, (void volatile *)(& (ch->ch_neo_uart)->xoffchar1));
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->xoffchar2));
  writeb((int )ier, (void volatile *)(& (ch->ch_neo_uart)->ier));
  return;
}
}
static void neo_set_no_input_flow_control(struct jsm_channel *ch )
{
  u8 ier ;
  u8 efr ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  ier = readb((void const volatile *)(& (ch->ch_neo_uart)->ier));
  efr = readb((void const volatile *)(& (ch->ch_neo_uart)->efr));
  if ((jsm_debug & 512) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "neo_set_no_input_flow_control";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
    descriptor.format = "Unsetting Input FLOW\n";
    descriptor.lineno = 196U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "Unsetting Input FLOW\n");
    } else {
    }
  } else {
  }
  ier = (unsigned int )ier & 191U;
  efr = (unsigned int )efr & 191U;
  ier = (unsigned int )ier & 223U;
  if ((ch->ch_c_iflag & 1024U) != 0U) {
    efr = (unsigned int )efr & 247U;
  } else {
    efr = (unsigned int )efr & 231U;
  }
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb((int )efr, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb(195, (void volatile *)(& (ch->ch_neo_uart)->fctr));
  ch->ch_r_watermark = 0U;
  writeb(16, (void volatile *)(& (ch->ch_neo_uart)->tfifo));
  ch->ch_t_tlevel = 16U;
  writeb(16, (void volatile *)(& (ch->ch_neo_uart)->rfifo));
  ch->ch_r_tlevel = 16U;
  writeb((int )ier, (void volatile *)(& (ch->ch_neo_uart)->ier));
  return;
}
}
static void neo_set_no_output_flow_control(struct jsm_channel *ch )
{
  u8 ier ;
  u8 efr ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  ier = readb((void const volatile *)(& (ch->ch_neo_uart)->ier));
  efr = readb((void const volatile *)(& (ch->ch_neo_uart)->efr));
  if ((jsm_debug & 512) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "neo_set_no_output_flow_control";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
    descriptor.format = "Unsetting Output FLOW\n";
    descriptor.lineno = 235U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "Unsetting Output FLOW\n");
    } else {
    }
  } else {
  }
  ier = (unsigned int )ier & 127U;
  efr = (unsigned int )efr & 127U;
  if ((ch->ch_c_iflag & 4096U) != 0U) {
    efr = (unsigned int )efr & 253U;
  } else {
    efr = (unsigned int )efr & 237U;
  }
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb((int )efr, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb(195, (void volatile *)(& (ch->ch_neo_uart)->fctr));
  ch->ch_r_watermark = 0U;
  writeb(16, (void volatile *)(& (ch->ch_neo_uart)->tfifo));
  ch->ch_t_tlevel = 16U;
  writeb(16, (void volatile *)(& (ch->ch_neo_uart)->rfifo));
  ch->ch_r_tlevel = 16U;
  writeb((int )ier, (void volatile *)(& (ch->ch_neo_uart)->ier));
  return;
}
}
__inline static void neo_set_new_start_stop_chars(struct jsm_channel *ch )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  if ((int )ch->ch_c_cflag < 0) {
    return;
  } else {
  }
  if ((jsm_debug & 512) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "neo_set_new_start_stop_chars";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
    descriptor.format = "start\n";
    descriptor.lineno = 274U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "start\n");
    } else {
    }
  } else {
  }
  writeb((int )ch->ch_startc, (void volatile *)(& (ch->ch_neo_uart)->xonchar1));
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->xonchar2));
  writeb((int )ch->ch_stopc, (void volatile *)(& (ch->ch_neo_uart)->xoffchar1));
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->xoffchar2));
  return;
}
}
static void neo_copy_data_from_uart_to_queue(struct jsm_channel *ch )
{
  int qleft ;
  u8 linestatus ;
  u8 error_mask ;
  int n ;
  int total ;
  u16 head ;
  u16 tail ;
  unsigned char tmp ;
  int _min1 ;
  int _min2 ;
  unsigned int _min1___0 ;
  unsigned int _min2___0 ;
  unsigned int _min1___1 ;
  unsigned int _min2___1 ;
  unsigned char tmp___0 ;
  u8 discard ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  {
  qleft = 0;
  linestatus = 0U;
  error_mask = 0U;
  n = 0;
  total = 0;
  if ((unsigned long )ch == (unsigned long )((struct jsm_channel *)0)) {
    return;
  } else {
  }
  head = (unsigned int )ch->ch_r_head & 8191U;
  tail = (unsigned int )ch->ch_r_tail & 8191U;
  linestatus = ch->ch_cached_lsr;
  ch->ch_cached_lsr = 0U;
  qleft = ((int )tail - (int )head) + -1;
  if (qleft < 0) {
    qleft = qleft + 8192;
  } else {
  }
  if ((ch->ch_flags & 512U) == 0U) {
    total = 0;
  } else {
    tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->rfifo));
    total = (int )tmp;
    total = total + -3;
  }
  _min1 = total;
  _min2 = qleft;
  total = _min1 < _min2 ? _min1 : _min2;
  goto ldv_33965;
  ldv_33964:
  linestatus = readb((void const volatile *)(& (ch->ch_neo_uart)->lsr));
  if ((int )((signed char )linestatus) < 0) {
    goto ldv_33957;
  } else {
  }
  _min1___0 = (unsigned int )total;
  _min2___0 = 8192U - (unsigned int )head;
  n = (int )(_min1___0 < _min2___0 ? _min1___0 : _min2___0);
  _min1___1 = (unsigned int )n;
  _min2___1 = 12U;
  n = (int )(_min1___1 < _min2___1 ? _min1___1 : _min2___1);
  if (((int )linestatus & 96) != 0) {
    ch->ch_flags = ch->ch_flags | 3072U;
  } else {
  }
  linestatus = 0U;
  memcpy_fromio((void *)ch->ch_rqueue + (unsigned long )head, (void const volatile *)(& (ch->ch_neo_uart)->txrxburst),
                (size_t )n);
  memset((void *)ch->ch_equeue + (unsigned long )head, 0, (size_t )n);
  head = (unsigned int )((u16 )((int )((unsigned short )n) + (int )head)) & 8191U;
  total = total - n;
  qleft = qleft - n;
  ch->ch_rxcount = ch->ch_rxcount + (u64 )n;
  ldv_33965: ;
  if (total > 0) {
    goto ldv_33964;
  } else {
  }
  ldv_33957: ;
  if ((int )ch->ch_c_iflag & 1) {
    error_mask = (u8 )((unsigned int )error_mask | 16U);
  } else {
  }
  ldv_33975:
  tmp___0 = readb((void const volatile *)(& (ch->ch_neo_uart)->lsr));
  linestatus = (u8 )((int )tmp___0 | (int )linestatus);
  if (((int )linestatus & 1) == 0) {
    ch->ch_cached_lsr = linestatus;
    goto ldv_33966;
  } else {
  }
  linestatus = (unsigned int )linestatus & 254U;
  if (((int )linestatus & 96) != 0) {
    linestatus = (unsigned int )linestatus & 159U;
    ch->ch_flags = ch->ch_flags | 3072U;
  } else {
  }
  if ((unsigned int )((int )linestatus & (int )error_mask) != 0U) {
    linestatus = 0U;
    memcpy_fromio((void *)(& discard), (void const volatile *)(& (ch->ch_neo_uart)->txrxburst),
                  1UL);
    goto ldv_33968;
  } else {
  }
  goto ldv_33972;
  ldv_33971: ;
  if ((jsm_debug & 32) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "neo_copy_data_from_uart_to_queue";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
    descriptor.format = "Queue full, dropping DATA:%x LSR:%x\n";
    descriptor.lineno = 455U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "Queue full, dropping DATA:%x LSR:%x\n", (int )*(ch->ch_rqueue + (unsigned long )tail),
                        (int )*(ch->ch_equeue + (unsigned long )tail));
    } else {
    }
  } else {
  }
  tail = (unsigned int )((u16 )((unsigned int )tail + 1U)) & 8191U;
  ch->ch_r_tail = tail;
  ch->ch_err_overrun = ch->ch_err_overrun + 1ULL;
  qleft = qleft + 1;
  ldv_33972: ;
  if (qleft <= 0) {
    goto ldv_33971;
  } else {
  }
  memcpy_fromio((void *)ch->ch_rqueue + (unsigned long )head, (void const volatile *)(& (ch->ch_neo_uart)->txrxburst),
                1UL);
  *(ch->ch_equeue + (unsigned long )head) = linestatus;
  if ((jsm_debug & 32) != 0) {
    descriptor___0.modname = "jsm";
    descriptor___0.function = "neo_copy_data_from_uart_to_queue";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
    descriptor___0.format = "DATA/LSR pair: %x %x\n";
    descriptor___0.lineno = 466U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "DATA/LSR pair: %x %x\n", (int )*(ch->ch_rqueue + (unsigned long )head),
                        (int )*(ch->ch_equeue + (unsigned long )head));
    } else {
    }
  } else {
  }
  linestatus = 0U;
  head = (unsigned int )((u16 )((unsigned int )head + 1U)) & 8191U;
  qleft = qleft - 1;
  ch->ch_rxcount = ch->ch_rxcount + 1ULL;
  ldv_33968: ;
  goto ldv_33975;
  ldv_33966:
  ch->ch_r_head = (unsigned int )head & 8191U;
  ch->ch_e_head = (unsigned int )head & 8191U;
  jsm_input(ch);
  return;
}
}
static void neo_copy_data_from_queue_to_uart(struct jsm_channel *ch )
{
  u16 head ;
  u16 tail ;
  int n ;
  int s ;
  int qlen ;
  u32 len_written ;
  struct circ_buf *circ ;
  u8 lsrbits ;
  unsigned char tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int _min1 ;
  int _min2 ;
  int _min1___0 ;
  int _min2___0 ;
  {
  len_written = 0U;
  if ((unsigned long )ch == (unsigned long )((struct jsm_channel *)0)) {
    return;
  } else {
  }
  circ = & (ch->uart_port.state)->xmit;
  if (circ->head == circ->tail) {
    return;
  } else {
  }
  if ((ch->ch_flags & 2U) != 0U || (ch->ch_flags & 4096U) != 0U) {
    return;
  } else {
  }
  if ((ch->ch_flags & 512U) == 0U) {
    tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->lsr));
    lsrbits = tmp;
    ch->ch_cached_lsr = (u8 )((int )ch->ch_cached_lsr | (int )lsrbits);
    if (((int )ch->ch_cached_lsr & 32) != 0) {
      ch->ch_cached_lsr = (unsigned int )ch->ch_cached_lsr & 223U;
      writeb((int )((unsigned char )*(circ->buf + (unsigned long )circ->tail)), (void volatile *)(& (ch->ch_neo_uart)->txrx));
      if ((jsm_debug & 64) != 0) {
        descriptor.modname = "jsm";
        descriptor.function = "neo_copy_data_from_queue_to_uart";
        descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
        descriptor.format = "Tx data: %x\n";
        descriptor.lineno = 520U;
        descriptor.flags = 0U;
        tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
        if (tmp___0 != 0L) {
          __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                            "Tx data: %x\n", (int )*(circ->buf + (unsigned long )circ->tail));
        } else {
        }
      } else {
      }
      circ->tail = (circ->tail + 1) & 4095;
      ch->ch_txcount = ch->ch_txcount + 1ULL;
    } else {
    }
    return;
  } else {
  }
  if ((ch->ch_flags & 3072U) == 0U) {
    return;
  } else {
  }
  n = 64 - (int )ch->ch_t_tlevel;
  head = (unsigned int )((u16 )circ->head) & 4095U;
  tail = (unsigned int )((u16 )circ->tail) & 4095U;
  qlen = (circ->head - circ->tail) & 4095;
  _min1 = n;
  _min2 = qlen;
  n = _min1 < _min2 ? _min1 : _min2;
  goto ldv_33997;
  ldv_33996:
  s = (int )(((int )head >= (int )tail ? (unsigned int )head : 4096U) - (unsigned int )tail);
  _min1___0 = s;
  _min2___0 = n;
  s = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  if (s <= 0) {
    goto ldv_33995;
  } else {
  }
  memcpy_toio((void volatile *)(& (ch->ch_neo_uart)->txrxburst), (void const *)circ->buf + (unsigned long )tail,
              (size_t )s);
  tail = (unsigned int )((int )((u16 )s) + (int )tail) & 4095U;
  n = n - s;
  ch->ch_txcount = ch->ch_txcount + (u64 )s;
  len_written = len_written + (u32 )s;
  ldv_33997: ;
  if (n > 0) {
    goto ldv_33996;
  } else {
  }
  ldv_33995:
  circ->tail = (int )tail & 4095;
  if ((u32 )ch->ch_t_tlevel <= len_written) {
    ch->ch_flags = ch->ch_flags & 4294964223U;
  } else {
  }
  if (circ->head == circ->tail) {
    uart_write_wakeup(& ch->uart_port);
  } else {
  }
  return;
}
}
static void neo_parse_modem(struct jsm_channel *ch , u8 signals )
{
  u8 msignals ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  msignals = signals;
  if ((jsm_debug & 8192) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "neo_parse_modem";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
    descriptor.format = "neo_parse_modem: port: %d msignals: %x\n";
    descriptor.lineno = 575U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "neo_parse_modem: port: %d msignals: %x\n", ch->ch_portnum,
                        (int )msignals);
    } else {
    }
  } else {
  }
  msignals = (unsigned int )msignals & 248U;
  if (((int )msignals & 8) != 0) {
    uart_handle_dcd_change(& ch->uart_port, (unsigned int )msignals & 128U);
  } else {
  }
  if (((int )msignals & 2) != 0) {
    uart_handle_cts_change(& ch->uart_port, (unsigned int )msignals & 16U);
  } else {
  }
  if ((int )((signed char )msignals) < 0) {
    ch->ch_mistat = (u8 )((unsigned int )ch->ch_mistat | 128U);
  } else {
    ch->ch_mistat = (unsigned int )ch->ch_mistat & 127U;
  }
  if (((int )msignals & 32) != 0) {
    ch->ch_mistat = (u8 )((unsigned int )ch->ch_mistat | 32U);
  } else {
    ch->ch_mistat = (unsigned int )ch->ch_mistat & 223U;
  }
  if (((int )msignals & 64) != 0) {
    ch->ch_mistat = (u8 )((unsigned int )ch->ch_mistat | 64U);
  } else {
    ch->ch_mistat = (unsigned int )ch->ch_mistat & 191U;
  }
  if (((int )msignals & 16) != 0) {
    ch->ch_mistat = (u8 )((unsigned int )ch->ch_mistat | 16U);
  } else {
    ch->ch_mistat = (unsigned int )ch->ch_mistat & 239U;
  }
  if ((jsm_debug & 8192) != 0) {
    descriptor___0.modname = "jsm";
    descriptor___0.function = "neo_parse_modem";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
    descriptor___0.format = "Port: %d DTR: %d RTS: %d CTS: %d DSR: %d RI: %d CD: %d\n";
    descriptor___0.lineno = 613U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "Port: %d DTR: %d RTS: %d CTS: %d DSR: %d RI: %d CD: %d\n",
                        ch->ch_portnum, ((int )ch->ch_mistat | (int )ch->ch_mostat) & 1,
                        (((int )ch->ch_mistat | (int )ch->ch_mostat) & 2) != 0, (((int )ch->ch_mistat | (int )ch->ch_mostat) & 16) != 0,
                        (((int )ch->ch_mistat | (int )ch->ch_mostat) & 32) != 0, (((int )ch->ch_mistat | (int )ch->ch_mostat) & 64) != 0,
                        (int )((signed char )((int )ch->ch_mistat | (int )ch->ch_mostat)) < 0);
    } else {
    }
  } else {
  }
  return;
}
}
static void neo_assert_modem_signals(struct jsm_channel *ch )
{
  {
  if ((unsigned long )ch == (unsigned long )((struct jsm_channel *)0)) {
    return;
  } else {
  }
  writeb((int )ch->ch_mostat, (void volatile *)(& (ch->ch_neo_uart)->mcr));
  neo_pci_posting_flush(ch->ch_bd);
  return;
}
}
static void neo_flush_uart_write(struct jsm_channel *ch )
{
  u8 tmp ;
  int i ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = 0U;
  i = 0;
  if ((unsigned long )ch == (unsigned long )((struct jsm_channel *)0)) {
    return;
  } else {
  }
  writeb(5, (void volatile *)(& (ch->ch_neo_uart)->isr_fcr));
  i = 0;
  goto ldv_34018;
  ldv_34017:
  tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->isr_fcr));
  if (((int )tmp & 4) != 0) {
    if ((jsm_debug & 128) != 0) {
      descriptor.modname = "jsm";
      descriptor.function = "neo_flush_uart_write";
      descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
      descriptor.format = "Still flushing TX UART... i: %d\n";
      descriptor.lineno = 649U;
      descriptor.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                          "Still flushing TX UART... i: %d\n", i);
      } else {
      }
    } else {
    }
    __const_udelay(42950UL);
  } else {
    goto ldv_34016;
  }
  i = i + 1;
  ldv_34018: ;
  if (i <= 9) {
    goto ldv_34017;
  } else {
  }
  ldv_34016:
  ch->ch_flags = ch->ch_flags | 3072U;
  return;
}
}
static void neo_flush_uart_read(struct jsm_channel *ch )
{
  u8 tmp ;
  int i ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = 0U;
  i = 0;
  if ((unsigned long )ch == (unsigned long )((struct jsm_channel *)0)) {
    return;
  } else {
  }
  writeb(3, (void volatile *)(& (ch->ch_neo_uart)->isr_fcr));
  i = 0;
  goto ldv_34028;
  ldv_34027:
  tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->isr_fcr));
  if (((int )tmp & 2) != 0) {
    if ((jsm_debug & 128) != 0) {
      descriptor.modname = "jsm";
      descriptor.function = "neo_flush_uart_read";
      descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
      descriptor.format = "Still flushing RX UART... i: %d\n";
      descriptor.lineno = 681U;
      descriptor.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                          "Still flushing RX UART... i: %d\n", i);
      } else {
      }
    } else {
    }
    __const_udelay(42950UL);
  } else {
    goto ldv_34026;
  }
  i = i + 1;
  ldv_34028: ;
  if (i <= 9) {
    goto ldv_34027;
  } else {
  }
  ldv_34026: ;
  return;
}
}
static void neo_clear_break(struct jsm_channel *ch )
{
  unsigned long lock_flags ;
  u8 temp ;
  unsigned char tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  ldv_spin_lock();
  if ((ch->ch_flags & 4096U) != 0U) {
    tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->lcr));
    temp = tmp;
    writeb((int )temp & 191, (void volatile *)(& (ch->ch_neo_uart)->lcr));
    ch->ch_flags = ch->ch_flags & 4294963199U;
    if ((jsm_debug & 128) != 0) {
      descriptor.modname = "jsm";
      descriptor.function = "neo_clear_break";
      descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
      descriptor.format = "clear break Finishing UART_LCR_SBC! finished: %lx\n";
      descriptor.lineno = 706U;
      descriptor.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                          "clear break Finishing UART_LCR_SBC! finished: %lx\n", jiffies);
      } else {
      }
    } else {
    }
    neo_pci_posting_flush(ch->ch_bd);
  } else {
  }
  spin_unlock_irqrestore(& ch->ch_lock, lock_flags);
  return;
}
}
__inline static void neo_parse_isr(struct jsm_board *brd , u32 port )
{
  struct jsm_channel *ch ;
  u8 isr ;
  u8 cause ;
  unsigned long lock_flags ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  struct _ddebug descriptor___3 ;
  long tmp___3 ;
  struct _ddebug descriptor___4 ;
  long tmp___4 ;
  unsigned char tmp___5 ;
  {
  if ((unsigned long )brd == (unsigned long )((struct jsm_board *)0)) {
    return;
  } else {
  }
  if (brd->maxports <= port) {
    return;
  } else {
  }
  ch = brd->channels[port];
  if ((unsigned long )ch == (unsigned long )((struct jsm_channel *)0)) {
    return;
  } else {
  }
  ldv_34052:
  isr = readb((void const volatile *)(& (ch->ch_neo_uart)->isr_fcr));
  if ((int )isr & 1) {
    goto ldv_34044;
  } else {
  }
  isr = (unsigned int )isr & 63U;
  if ((jsm_debug & 32768) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "neo_parse_isr";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
    descriptor.format = "%s:%d isr: %x\n";
    descriptor.lineno = 749U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "%s:%d isr: %x\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c",
                        749, (int )isr);
    } else {
    }
  } else {
  }
  if (((int )isr & 12) != 0) {
    neo_copy_data_from_uart_to_queue(ch);
    ldv_spin_lock();
    jsm_check_queue_flow_control(ch);
    spin_unlock_irqrestore(& ch->ch_lock, lock_flags);
  } else {
  }
  if (((int )isr & 2) != 0) {
    ldv_spin_lock();
    ch->ch_flags = ch->ch_flags | 3072U;
    spin_unlock_irqrestore(& ch->ch_lock, lock_flags);
    neo_copy_data_from_queue_to_uart(ch);
  } else {
  }
  if (((int )isr & 16) != 0) {
    cause = readb((void const volatile *)(& (ch->ch_neo_uart)->xoffchar1));
    if ((jsm_debug & 32768) != 0) {
      descriptor___0.modname = "jsm";
      descriptor___0.function = "neo_parse_isr";
      descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
      descriptor___0.format = "Port %d. Got ISR_XONXOFF: cause:%x\n";
      descriptor___0.lineno = 774U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                          "Port %d. Got ISR_XONXOFF: cause:%x\n", port, (int )cause);
      } else {
      }
    } else {
    }
    ldv_spin_lock();
    if ((unsigned int )cause == 2U) {
      if (((brd->channels[port])->ch_flags & 2U) != 0U) {
        ch->ch_flags = ch->ch_flags & 4294967293U;
      } else {
      }
      if ((jsm_debug & 32768) != 0) {
        descriptor___1.modname = "jsm";
        descriptor___1.function = "neo_parse_isr";
        descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
        descriptor___1.format = "Port %d. XON detected in incoming data\n";
        descriptor___1.lineno = 789U;
        descriptor___1.flags = 0U;
        tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
        if (tmp___1 != 0L) {
          __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                            "Port %d. XON detected in incoming data\n", port);
        } else {
        }
      } else {
      }
    } else
    if ((unsigned int )cause == 1U) {
      if (((brd->channels[port])->ch_flags & 2U) == 0U) {
        ch->ch_flags = ch->ch_flags | 2U;
        if ((jsm_debug & 32768) != 0) {
          descriptor___2.modname = "jsm";
          descriptor___2.function = "neo_parse_isr";
          descriptor___2.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
          descriptor___2.format = "Setting CH_STOP\n";
          descriptor___2.lineno = 795U;
          descriptor___2.flags = 0U;
          tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
          if (tmp___2 != 0L) {
            __dynamic_dev_dbg(& descriptor___2, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                              "Setting CH_STOP\n");
          } else {
          }
        } else {
        }
      } else {
      }
      if ((jsm_debug & 32768) != 0) {
        descriptor___3.modname = "jsm";
        descriptor___3.function = "neo_parse_isr";
        descriptor___3.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
        descriptor___3.format = "Port: %d. XOFF detected in incoming data\n";
        descriptor___3.lineno = 799U;
        descriptor___3.flags = 0U;
        tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
        if (tmp___3 != 0L) {
          __dynamic_dev_dbg(& descriptor___3, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                            "Port: %d. XOFF detected in incoming data\n", port);
        } else {
        }
      } else {
      }
    } else {
    }
    spin_unlock_irqrestore(& ch->ch_lock, lock_flags);
  } else {
  }
  if (((int )isr & 32) != 0) {
    cause = readb((void const volatile *)(& (ch->ch_neo_uart)->mcr));
    ldv_spin_lock();
    if (((int )cause & 4) == 0) {
      if (((int )cause & 2) != 0) {
        ch->ch_mostat = (u8 )((unsigned int )ch->ch_mostat | 2U);
      } else {
        ch->ch_mostat = (unsigned int )ch->ch_mostat & 253U;
      }
    } else
    if ((int )cause & 1) {
      ch->ch_mostat = (u8 )((unsigned int )ch->ch_mostat | 1U);
    } else {
      ch->ch_mostat = (unsigned int )ch->ch_mostat & 254U;
    }
    spin_unlock_irqrestore(& ch->ch_lock, lock_flags);
  } else {
  }
  if ((jsm_debug & 32768) != 0) {
    descriptor___4.modname = "jsm";
    descriptor___4.function = "neo_parse_isr";
    descriptor___4.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
    descriptor___4.format = "MOD_STAT: sending to parse_modem_sigs\n";
    descriptor___4.lineno = 829U;
    descriptor___4.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_dev_dbg(& descriptor___4, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "MOD_STAT: sending to parse_modem_sigs\n");
    } else {
    }
  } else {
  }
  tmp___5 = readb((void const volatile *)(& (ch->ch_neo_uart)->msr));
  neo_parse_modem(ch, (int )tmp___5);
  goto ldv_34052;
  ldv_34044: ;
  return;
}
}
__inline static void neo_parse_lsr(struct jsm_board *brd , u32 port )
{
  struct jsm_channel *ch ;
  int linestatus ;
  unsigned long lock_flags ;
  unsigned char tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___4 ;
  long tmp___5 ;
  {
  if ((unsigned long )brd == (unsigned long )((struct jsm_board *)0)) {
    return;
  } else {
  }
  if (brd->maxports <= port) {
    return;
  } else {
  }
  ch = brd->channels[port];
  if ((unsigned long )ch == (unsigned long )((struct jsm_channel *)0)) {
    return;
  } else {
  }
  tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->lsr));
  linestatus = (int )tmp;
  if ((jsm_debug & 32768) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "neo_parse_lsr";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
    descriptor.format = "%s:%d port: %d linestatus: %x\n";
    descriptor.lineno = 853U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "%s:%d port: %d linestatus: %x\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c",
                        853, port, linestatus);
    } else {
    }
  } else {
  }
  ch->ch_cached_lsr = (u8 )((int )((signed char )ch->ch_cached_lsr) | (int )((signed char )linestatus));
  if ((int )ch->ch_cached_lsr & 1) {
    neo_copy_data_from_uart_to_queue(ch);
    ldv_spin_lock();
    jsm_check_queue_flow_control(ch);
    spin_unlock_irqrestore(& ch->ch_lock, lock_flags);
  } else {
  }
  if ((linestatus & 128) != 0) {
    if ((jsm_debug & 32768) != 0) {
      descriptor___0.modname = "jsm";
      descriptor___0.function = "neo_parse_lsr";
      descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
      descriptor___0.format = "%s:%d Port: %d Got an RX error, need to parse LSR\n";
      descriptor___0.lineno = 874U;
      descriptor___0.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                          "%s:%d Port: %d Got an RX error, need to parse LSR\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c",
                          874, port);
      } else {
      }
    } else {
    }
  } else {
  }
  if ((linestatus & 4) != 0) {
    ch->ch_err_parity = ch->ch_err_parity + 1ULL;
    if ((jsm_debug & 32768) != 0) {
      descriptor___1.modname = "jsm";
      descriptor___1.function = "neo_parse_lsr";
      descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
      descriptor___1.format = "%s:%d Port: %d. PAR ERR!\n";
      descriptor___1.lineno = 884U;
      descriptor___1.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___2 != 0L) {
        __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                          "%s:%d Port: %d. PAR ERR!\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c",
                          884, port);
      } else {
      }
    } else {
    }
  } else {
  }
  if ((linestatus & 8) != 0) {
    ch->ch_err_frame = ch->ch_err_frame + 1ULL;
    if ((jsm_debug & 32768) != 0) {
      descriptor___2.modname = "jsm";
      descriptor___2.function = "neo_parse_lsr";
      descriptor___2.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
      descriptor___2.format = "%s:%d Port: %d. FRM ERR!\n";
      descriptor___2.lineno = 890U;
      descriptor___2.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        __dynamic_dev_dbg(& descriptor___2, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                          "%s:%d Port: %d. FRM ERR!\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c",
                          890, port);
      } else {
      }
    } else {
    }
  } else {
  }
  if ((linestatus & 16) != 0) {
    ch->ch_err_break = ch->ch_err_break + 1ULL;
    if ((jsm_debug & 32768) != 0) {
      descriptor___3.modname = "jsm";
      descriptor___3.function = "neo_parse_lsr";
      descriptor___3.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
      descriptor___3.format = "%s:%d Port: %d. BRK INTR!\n";
      descriptor___3.lineno = 897U;
      descriptor___3.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
      if (tmp___4 != 0L) {
        __dynamic_dev_dbg(& descriptor___3, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                          "%s:%d Port: %d. BRK INTR!\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c",
                          897, port);
      } else {
      }
    } else {
    }
  } else {
  }
  if ((linestatus & 2) != 0) {
    ch->ch_err_overrun = ch->ch_err_overrun + 1ULL;
    if ((jsm_debug & 32768) != 0) {
      descriptor___4.modname = "jsm";
      descriptor___4.function = "neo_parse_lsr";
      descriptor___4.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
      descriptor___4.format = "%s:%d Port: %d. Rx Overrun!\n";
      descriptor___4.lineno = 910U;
      descriptor___4.flags = 0U;
      tmp___5 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
      if (tmp___5 != 0L) {
        __dynamic_dev_dbg(& descriptor___4, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                          "%s:%d Port: %d. Rx Overrun!\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c",
                          910, port);
      } else {
      }
    } else {
    }
  } else {
  }
  if ((linestatus & 32) != 0) {
    ldv_spin_lock();
    ch->ch_flags = ch->ch_flags | 3072U;
    spin_unlock_irqrestore(& ch->ch_lock, lock_flags);
    neo_copy_data_from_queue_to_uart(ch);
  } else
  if ((linestatus & 64) != 0) {
    ldv_spin_lock();
    ch->ch_flags = ch->ch_flags | 3072U;
    spin_unlock_irqrestore(& ch->ch_lock, lock_flags);
    neo_copy_data_from_queue_to_uart(ch);
  } else {
  }
  return;
}
}
static void neo_param(struct jsm_channel *ch )
{
  u8 lcr ;
  u8 uart_lcr ;
  u8 ier ;
  u32 baud ;
  int quot ;
  struct jsm_board *bd ;
  u16 tmp ;
  u16 tmp___0 ;
  int i ;
  unsigned int cflag ;
  struct __anonstruct_baud_rates_255 baud_rates___0[19U] ;
  unsigned char tmp___1 ;
  {
  lcr = 0U;
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct jsm_board *)0)) {
    return;
  } else {
  }
  if ((ch->ch_c_cflag & 4111U) == 0U) {
    tmp = 0U;
    ch->ch_r_tail = tmp;
    ch->ch_r_head = tmp;
    tmp___0 = 0U;
    ch->ch_e_tail = tmp___0;
    ch->ch_e_head = tmp___0;
    neo_flush_uart_write(ch);
    neo_flush_uart_read(ch);
    ch->ch_flags = ch->ch_flags | 32768U;
    ch->ch_mostat = (unsigned int )ch->ch_mostat & 252U;
    neo_assert_modem_signals(ch);
    return;
  } else {
    baud_rates___0[0].rate = 921600U;
    baud_rates___0[0].cflag = 4103U;
    baud_rates___0[1].rate = 460800U;
    baud_rates___0[1].cflag = 4100U;
    baud_rates___0[2].rate = 230400U;
    baud_rates___0[2].cflag = 4099U;
    baud_rates___0[3].rate = 115200U;
    baud_rates___0[3].cflag = 4098U;
    baud_rates___0[4].rate = 57600U;
    baud_rates___0[4].cflag = 4097U;
    baud_rates___0[5].rate = 38400U;
    baud_rates___0[5].cflag = 15U;
    baud_rates___0[6].rate = 19200U;
    baud_rates___0[6].cflag = 14U;
    baud_rates___0[7].rate = 9600U;
    baud_rates___0[7].cflag = 13U;
    baud_rates___0[8].rate = 4800U;
    baud_rates___0[8].cflag = 12U;
    baud_rates___0[9].rate = 2400U;
    baud_rates___0[9].cflag = 11U;
    baud_rates___0[10].rate = 1200U;
    baud_rates___0[10].cflag = 9U;
    baud_rates___0[11].rate = 600U;
    baud_rates___0[11].cflag = 8U;
    baud_rates___0[12].rate = 300U;
    baud_rates___0[12].cflag = 7U;
    baud_rates___0[13].rate = 200U;
    baud_rates___0[13].cflag = 6U;
    baud_rates___0[14].rate = 150U;
    baud_rates___0[14].cflag = 5U;
    baud_rates___0[15].rate = 134U;
    baud_rates___0[15].cflag = 4U;
    baud_rates___0[16].rate = 110U;
    baud_rates___0[16].cflag = 3U;
    baud_rates___0[17].rate = 75U;
    baud_rates___0[17].cflag = 2U;
    baud_rates___0[18].rate = 50U;
    baud_rates___0[18].cflag = 1U;
    cflag = ((ch->uart_port.state)->port.tty)->termios.c_cflag & 4111U;
    baud = 9600U;
    i = 0;
    goto ldv_34086;
    ldv_34085: ;
    if (baud_rates___0[i].cflag == cflag) {
      baud = baud_rates___0[i].rate;
      goto ldv_34084;
    } else {
    }
    i = i + 1;
    ldv_34086: ;
    if ((unsigned int )i <= 18U) {
      goto ldv_34085;
    } else {
    }
    ldv_34084: ;
    if ((ch->ch_flags & 32768U) != 0U) {
      ch->ch_flags = ch->ch_flags & 4294934527U;
    } else {
    }
  }
  if ((ch->ch_c_cflag & 256U) != 0U) {
    lcr = (u8 )((unsigned int )lcr | 8U);
  } else {
  }
  if ((ch->ch_c_cflag & 512U) == 0U) {
    lcr = (u8 )((unsigned int )lcr | 16U);
  } else {
  }
  if ((ch->ch_c_cflag & 1073741824U) != 0U) {
    lcr = (u8 )((unsigned int )lcr | 32U);
  } else {
  }
  if ((ch->ch_c_cflag & 64U) != 0U) {
    lcr = (u8 )((unsigned int )lcr | 4U);
  } else {
  }
  switch (ch->ch_c_cflag & 48U) {
  case 0U:
  lcr = lcr;
  goto ldv_34088;
  case 16U:
  lcr = (u8 )((unsigned int )lcr | 1U);
  goto ldv_34088;
  case 32U:
  lcr = (u8 )((unsigned int )lcr | 2U);
  goto ldv_34088;
  case 48U: ;
  default:
  lcr = (u8 )((unsigned int )lcr | 3U);
  goto ldv_34088;
  }
  ldv_34088:
  ier = readb((void const volatile *)(& (ch->ch_neo_uart)->ier));
  uart_lcr = readb((void const volatile *)(& (ch->ch_neo_uart)->lcr));
  quot = (int )((ch->ch_bd)->bd_dividend / baud);
  if (quot != 0) {
    writeb(128, (void volatile *)(& (ch->ch_neo_uart)->lcr));
    writeb((int )((unsigned char )quot), (void volatile *)(& (ch->ch_neo_uart)->txrx));
    writeb((int )((unsigned char )(quot >> 8)), (void volatile *)(& (ch->ch_neo_uart)->ier));
    writeb((int )lcr, (void volatile *)(& (ch->ch_neo_uart)->lcr));
  } else {
  }
  if ((int )uart_lcr != (int )lcr) {
    writeb((int )lcr, (void volatile *)(& (ch->ch_neo_uart)->lcr));
  } else {
  }
  if ((ch->ch_c_cflag & 128U) != 0U) {
    ier = (u8 )((unsigned int )ier | 5U);
  } else {
  }
  ier = (u8 )((unsigned int )ier | 10U);
  writeb((int )ier, (void volatile *)(& (ch->ch_neo_uart)->ier));
  neo_set_new_start_stop_chars(ch);
  if ((int )ch->ch_c_cflag < 0) {
    neo_set_cts_flow_control(ch);
  } else
  if ((ch->ch_c_iflag & 1024U) != 0U) {
    if ((unsigned int )ch->ch_startc == 0U || (unsigned int )ch->ch_stopc == 0U) {
      neo_set_no_output_flow_control(ch);
    } else {
      neo_set_ixon_flow_control(ch);
    }
  } else {
    neo_set_no_output_flow_control(ch);
  }
  if ((int )ch->ch_c_cflag < 0) {
    neo_set_rts_flow_control(ch);
  } else
  if ((ch->ch_c_iflag & 4096U) != 0U) {
    if ((unsigned int )ch->ch_startc == 0U || (unsigned int )ch->ch_stopc == 0U) {
      neo_set_no_input_flow_control(ch);
    } else {
      neo_set_ixoff_flow_control(ch);
    }
  } else {
    neo_set_no_input_flow_control(ch);
  }
  if (baud <= 9599U) {
    writeb(1, (void volatile *)(& (ch->ch_neo_uart)->rfifo));
    ch->ch_r_tlevel = 1U;
  } else {
  }
  neo_assert_modem_signals(ch);
  tmp___1 = readb((void const volatile *)(& (ch->ch_neo_uart)->msr));
  neo_parse_modem(ch, (int )tmp___1);
  return;
}
}
static irqreturn_t neo_intr(int irq , void *voidbrd )
{
  struct jsm_board *brd ;
  struct jsm_channel *ch ;
  int port ;
  int type ;
  int current_port ;
  u32 tmp ;
  u32 uart_poll ;
  unsigned long lock_flags ;
  unsigned long lock_flags2 ;
  int outofloop_count ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___4 ;
  long tmp___5 ;
  {
  brd = (struct jsm_board *)voidbrd;
  port = 0;
  type = 0;
  outofloop_count = 0;
  ldv_spin_lock();
  uart_poll = readl((void const volatile *)brd->re_map_membase + 128U);
  if ((jsm_debug & 32768) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "neo_intr";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
    descriptor.format = "%s:%d uart_poll: %x\n";
    descriptor.lineno = 1131U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& (brd->pci_dev)->dev),
                        "%s:%d uart_poll: %x\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c",
                        1131, uart_poll);
    } else {
    }
  } else {
  }
  if (uart_poll == 0U) {
    if ((jsm_debug & 32768) != 0) {
      descriptor___0.modname = "jsm";
      descriptor___0.function = "neo_intr";
      descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
      descriptor___0.format = "Kernel interrupted to me, but no pending interrupts...\n";
      descriptor___0.lineno = 1135U;
      descriptor___0.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (brd->pci_dev)->dev),
                          "Kernel interrupted to me, but no pending interrupts...\n");
      } else {
      }
    } else {
    }
    spin_unlock_irqrestore(& brd->bd_intr_lock, lock_flags);
    return (0);
  } else {
  }
  current_port = 0;
  goto ldv_34110;
  ldv_34119:
  tmp = uart_poll;
  outofloop_count = outofloop_count + 1;
  if ((jsm_offset_table[current_port] & tmp) != 0U) {
    port = current_port;
    type = (int )(tmp >> (port * 3 + 8));
    type = type & 7;
  } else {
    current_port = current_port + 1;
    goto ldv_34110;
  }
  if ((jsm_debug & 32768) != 0) {
    descriptor___1.modname = "jsm";
    descriptor___1.function = "neo_intr";
    descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
    descriptor___1.format = "%s:%d port: %x type: %x\n";
    descriptor___1.lineno = 1161U;
    descriptor___1.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& (brd->pci_dev)->dev),
                        "%s:%d port: %x type: %x\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c",
                        1161, port, type);
    } else {
    }
  } else {
  }
  uart_poll = ~ jsm_offset_table[port] & uart_poll;
  if (type == 0) {
    if ((jsm_debug & 32768) != 0) {
      descriptor___2.modname = "jsm";
      descriptor___2.function = "neo_intr";
      descriptor___2.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
      descriptor___2.format = "Interrupt with no type! port: %d\n";
      descriptor___2.lineno = 1169U;
      descriptor___2.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        __dynamic_dev_dbg(& descriptor___2, (struct device const *)(& (brd->pci_dev)->dev),
                          "Interrupt with no type! port: %d\n", port);
      } else {
      }
    } else {
    }
    goto ldv_34110;
  } else {
  }
  switch (type) {
  case 2: ;
  if ((u32 )port >= brd->nasync) {
    goto ldv_34110;
  } else {
  }
  ch = brd->channels[port];
  neo_copy_data_from_uart_to_queue(ch);
  ldv_spin_lock();
  jsm_check_queue_flow_control(ch);
  spin_unlock_irqrestore(& ch->ch_lock, lock_flags2);
  goto ldv_34110;
  case 1:
  neo_parse_lsr(brd, (u32 )port);
  goto ldv_34110;
  case 3:
  neo_parse_isr(brd, (u32 )port);
  goto ldv_34110;
  case 4:
  neo_parse_isr(brd, (u32 )port);
  goto ldv_34110;
  default: ;
  if ((jsm_debug & 32768) != 0) {
    descriptor___3.modname = "jsm";
    descriptor___3.function = "neo_intr";
    descriptor___3.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
    descriptor___3.format = "%s:%d Unknown Interrupt type: %x\n";
    descriptor___3.lineno = 1235U;
    descriptor___3.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)(& (brd->pci_dev)->dev),
                        "%s:%d Unknown Interrupt type: %x\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c",
                        1235, type);
    } else {
    }
  } else {
  }
  goto ldv_34110;
  }
  ldv_34110: ;
  if ((uart_poll & 255U) != 0U && outofloop_count <= 254) {
    goto ldv_34119;
  } else {
  }
  spin_unlock_irqrestore(& brd->bd_intr_lock, lock_flags);
  if ((jsm_debug & 32768) != 0) {
    descriptor___4.modname = "jsm";
    descriptor___4.function = "neo_intr";
    descriptor___4.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_neo.c";
    descriptor___4.format = "finish\n";
    descriptor___4.lineno = 1242U;
    descriptor___4.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      __dynamic_dev_dbg(& descriptor___4, (struct device const *)(& (brd->pci_dev)->dev),
                        "finish\n");
    } else {
    }
  } else {
  }
  return (1);
}
}
static void neo_disable_receiver(struct jsm_channel *ch )
{
  u8 tmp ;
  unsigned char tmp___0 ;
  {
  tmp___0 = readb((void const volatile *)(& (ch->ch_neo_uart)->ier));
  tmp = tmp___0;
  tmp = (unsigned int )tmp & 254U;
  writeb((int )tmp, (void volatile *)(& (ch->ch_neo_uart)->ier));
  neo_pci_posting_flush(ch->ch_bd);
  return;
}
}
static void neo_enable_receiver(struct jsm_channel *ch )
{
  u8 tmp ;
  unsigned char tmp___0 ;
  {
  tmp___0 = readb((void const volatile *)(& (ch->ch_neo_uart)->ier));
  tmp = tmp___0;
  tmp = (u8 )((unsigned int )tmp | 1U);
  writeb((int )tmp, (void volatile *)(& (ch->ch_neo_uart)->ier));
  neo_pci_posting_flush(ch->ch_bd);
  return;
}
}
static void neo_send_start_character(struct jsm_channel *ch )
{
  {
  if ((unsigned long )ch == (unsigned long )((struct jsm_channel *)0)) {
    return;
  } else {
  }
  if ((unsigned int )ch->ch_startc != 0U) {
    ch->ch_xon_sends = ch->ch_xon_sends + 1ULL;
    writeb((int )ch->ch_startc, (void volatile *)(& (ch->ch_neo_uart)->txrx));
    neo_pci_posting_flush(ch->ch_bd);
  } else {
  }
  return;
}
}
static void neo_send_stop_character(struct jsm_channel *ch )
{
  {
  if ((unsigned long )ch == (unsigned long )((struct jsm_channel *)0)) {
    return;
  } else {
  }
  if ((unsigned int )ch->ch_stopc != 0U) {
    ch->ch_xoff_sends = ch->ch_xoff_sends + 1ULL;
    writeb((int )ch->ch_stopc, (void volatile *)(& (ch->ch_neo_uart)->txrx));
    neo_pci_posting_flush(ch->ch_bd);
  } else {
  }
  return;
}
}
static void neo_uart_init(struct jsm_channel *ch )
{
  {
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->ier));
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb(16, (void volatile *)(& (ch->ch_neo_uart)->efr));
  readb((void const volatile *)(& (ch->ch_neo_uart)->txrx));
  writeb(7, (void volatile *)(& (ch->ch_neo_uart)->isr_fcr));
  readb((void const volatile *)(& (ch->ch_neo_uart)->lsr));
  readb((void const volatile *)(& (ch->ch_neo_uart)->msr));
  ch->ch_flags = ch->ch_flags | 512U;
  writeb((int )ch->ch_mostat, (void volatile *)(& (ch->ch_neo_uart)->mcr));
  return;
}
}
static void neo_uart_off(struct jsm_channel *ch )
{
  {
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->ier));
  return;
}
}
static u32 neo_get_uart_bytes_left(struct jsm_channel *ch )
{
  u8 left ;
  u8 lsr ;
  unsigned char tmp ;
  {
  left = 0U;
  tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->lsr));
  lsr = tmp;
  ch->ch_cached_lsr = (u8 )((int )ch->ch_cached_lsr | (int )lsr);
  if (((int )lsr & 64) == 0) {
    left = 1U;
  } else {
    ch->ch_flags = ch->ch_flags | 3072U;
    left = 0U;
  }
  return ((u32 )left);
}
}
static void neo_send_break(struct jsm_channel *ch )
{
  u8 temp ;
  unsigned char tmp ;
  {
  if ((ch->ch_flags & 4096U) == 0U) {
    tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->lcr));
    temp = tmp;
    writeb((int )((unsigned int )temp | 64U), (void volatile *)(& (ch->ch_neo_uart)->lcr));
    ch->ch_flags = ch->ch_flags | 4096U;
    neo_pci_posting_flush(ch->ch_bd);
  } else {
  }
  return;
}
}
static void neo_send_immediate_char(struct jsm_channel *ch , unsigned char c )
{
  {
  if ((unsigned long )ch == (unsigned long )((struct jsm_channel *)0)) {
    return;
  } else {
  }
  writeb((int )c, (void volatile *)(& (ch->ch_neo_uart)->txrx));
  neo_pci_posting_flush(ch->ch_bd);
  return;
}
}
struct board_ops jsm_neo_ops =
     {& neo_intr, & neo_uart_init, & neo_uart_off, & neo_param, & neo_assert_modem_signals,
    & neo_flush_uart_write, & neo_flush_uart_read, & neo_disable_receiver, & neo_enable_receiver,
    & neo_send_break, & neo_clear_break, & neo_send_start_character, & neo_send_stop_character,
    & neo_copy_data_from_queue_to_uart, & neo_get_uart_bytes_left, & neo_send_immediate_char};
extern int ldv_release_3(void) ;
extern int ldv_probe_3(void) ;
void ldv_initialize_board_ops_3(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(768UL);
  jsm_neo_ops_group0 = (struct jsm_channel *)tmp;
  return;
}
}
void ldv_main_exported_3(void)
{
  unsigned char ldvarg6 ;
  void *ldvarg5 ;
  void *tmp ;
  int ldvarg4 ;
  int tmp___0 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg5 = tmp;
  ldv_memset((void *)(& ldvarg6), 0, 1UL);
  ldv_memset((void *)(& ldvarg4), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_3 == 1) {
    neo_uart_off(jsm_neo_ops_group0);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    neo_uart_off(jsm_neo_ops_group0);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_34170;
  case 1: ;
  if (ldv_state_variable_3 == 1) {
    neo_disable_receiver(jsm_neo_ops_group0);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    neo_disable_receiver(jsm_neo_ops_group0);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_34170;
  case 2: ;
  if (ldv_state_variable_3 == 1) {
    neo_send_immediate_char(jsm_neo_ops_group0, (int )ldvarg6);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    neo_send_immediate_char(jsm_neo_ops_group0, (int )ldvarg6);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_34170;
  case 3: ;
  if (ldv_state_variable_3 == 1) {
    neo_send_start_character(jsm_neo_ops_group0);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    neo_send_start_character(jsm_neo_ops_group0);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_34170;
  case 4: ;
  if (ldv_state_variable_3 == 1) {
    neo_send_break(jsm_neo_ops_group0);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    neo_send_break(jsm_neo_ops_group0);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_34170;
  case 5: ;
  if (ldv_state_variable_3 == 2) {
    neo_flush_uart_write(jsm_neo_ops_group0);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_34170;
  case 6: ;
  if (ldv_state_variable_3 == 2) {
    neo_flush_uart_read(jsm_neo_ops_group0);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_34170;
  case 7: ;
  if (ldv_state_variable_3 == 1) {
    neo_enable_receiver(jsm_neo_ops_group0);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    neo_enable_receiver(jsm_neo_ops_group0);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_34170;
  case 8: ;
  if (ldv_state_variable_3 == 1) {
    neo_param(jsm_neo_ops_group0);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    neo_param(jsm_neo_ops_group0);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_34170;
  case 9: ;
  if (ldv_state_variable_3 == 1) {
    neo_copy_data_from_queue_to_uart(jsm_neo_ops_group0);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    neo_copy_data_from_queue_to_uart(jsm_neo_ops_group0);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_34170;
  case 10: ;
  if (ldv_state_variable_3 == 1) {
    neo_intr(ldvarg4, ldvarg5);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    neo_intr(ldvarg4, ldvarg5);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_34170;
  case 11: ;
  if (ldv_state_variable_3 == 1) {
    neo_clear_break(jsm_neo_ops_group0);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    neo_clear_break(jsm_neo_ops_group0);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_34170;
  case 12: ;
  if (ldv_state_variable_3 == 1) {
    neo_send_stop_character(jsm_neo_ops_group0);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    neo_send_stop_character(jsm_neo_ops_group0);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_34170;
  case 13: ;
  if (ldv_state_variable_3 == 1) {
    neo_assert_modem_signals(jsm_neo_ops_group0);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    neo_assert_modem_signals(jsm_neo_ops_group0);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_34170;
  case 14: ;
  if (ldv_state_variable_3 == 1) {
    neo_get_uart_bytes_left(jsm_neo_ops_group0);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    neo_get_uart_bytes_left(jsm_neo_ops_group0);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_34170;
  case 15: ;
  if (ldv_state_variable_3 == 1) {
    neo_uart_init(jsm_neo_ops_group0);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    neo_uart_init(jsm_neo_ops_group0);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_34170;
  case 16: ;
  if (ldv_state_variable_3 == 2) {
    ldv_release_3();
    ldv_state_variable_3 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_34170;
  case 17: ;
  if (ldv_state_variable_3 == 1) {
    ldv_probe_3();
    ldv_state_variable_3 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_34170;
  default:
  ldv_stop();
  }
  ldv_34170: ;
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_39(lock, flags);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
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
extern unsigned long find_first_zero_bit(unsigned long const * , unsigned long ) ;
extern int printk(char const * , ...) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
__inline static int waitqueue_active(wait_queue_head_t *q )
{
  int tmp ;
  {
  tmp = list_empty((struct list_head const *)(& q->task_list));
  return (tmp == 0);
}
}
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static unsigned char *char_buf_ptr(struct tty_buffer *b , int ofs )
{
  {
  return ((unsigned char *)(& b->data) + (unsigned long )ofs);
}
}
__inline static char *flag_buf_ptr(struct tty_buffer *b , int ofs )
{
  unsigned char *tmp ;
  {
  tmp = char_buf_ptr(b, ofs);
  return ((char *)tmp + (unsigned long )b->size);
}
}
extern int tty_buffer_request_room(struct tty_port * , size_t ) ;
extern int tty_insert_flip_string_flags(struct tty_port * , unsigned char const * ,
                                        char const * , size_t ) ;
extern int tty_insert_flip_string_fixed_flag(struct tty_port * , unsigned char const * ,
                                             char , size_t ) ;
extern void tty_flip_buffer_push(struct tty_port * ) ;
__inline static int tty_insert_flip_char(struct tty_port *port , unsigned char ch ,
                                         char flag )
{
  struct tty_buffer *tb ;
  int change ;
  char *tmp ;
  int tmp___0 ;
  unsigned char *tmp___1 ;
  int tmp___2 ;
  {
  tb = port->buf.tail;
  change = tb->flags & 1 && (int )((signed char )flag) != 0;
  if (change == 0 && tb->used < tb->size) {
    if ((tb->flags & 1) == 0) {
      tmp = flag_buf_ptr(tb, tb->used);
      *tmp = flag;
    } else {
    }
    tmp___0 = tb->used;
    tb->used = tb->used + 1;
    tmp___1 = char_buf_ptr(tb, tmp___0);
    *tmp___1 = ch;
    return (1);
  } else {
  }
  tmp___2 = tty_insert_flip_string_flags(port, (unsigned char const *)(& ch), (char const *)(& flag),
                                         1UL);
  return (tmp___2);
}
}
__inline static int tty_insert_flip_string(struct tty_port *port , unsigned char const *chars ,
                                           size_t size )
{
  int tmp ;
  {
  tmp = tty_insert_flip_string_fixed_flag(port, chars, 0, size);
  return (tmp);
}
}
extern int uart_add_one_port(struct uart_driver * , struct uart_port * ) ;
extern int uart_remove_one_port(struct uart_driver * , struct uart_port * ) ;
static unsigned long linemap[4U] ;
static void jsm_carrier(struct jsm_channel *ch ) ;
__inline static int jsm_get_mstat(struct jsm_channel *ch )
{
  unsigned char mstat ;
  unsigned int result ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  if ((jsm_debug & 128) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "jsm_get_mstat";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor.format = "start\n";
    descriptor.lineno = 41U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "start\n");
    } else {
    }
  } else {
  }
  mstat = (int )ch->ch_mostat | (int )ch->ch_mistat;
  result = 0U;
  if ((int )mstat & 1) {
    result = result | 2U;
  } else {
  }
  if (((int )mstat & 2) != 0) {
    result = result | 4U;
  } else {
  }
  if (((int )mstat & 16) != 0) {
    result = result | 32U;
  } else {
  }
  if (((int )mstat & 32) != 0) {
    result = result | 256U;
  } else {
  }
  if (((int )mstat & 64) != 0) {
    result = result | 128U;
  } else {
  }
  if ((int )((signed char )mstat) < 0) {
    result = result | 64U;
  } else {
  }
  if ((jsm_debug & 128) != 0) {
    descriptor___0.modname = "jsm";
    descriptor___0.function = "jsm_get_mstat";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor___0.format = "finish\n";
    descriptor___0.lineno = 60U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "finish\n");
    } else {
    }
  } else {
  }
  return ((int )result);
}
}
static unsigned int jsm_tty_tx_empty(struct uart_port *port )
{
  {
  return (1U);
}
}
static unsigned int jsm_tty_get_mctrl(struct uart_port *port )
{
  int result ;
  struct jsm_channel *channel ;
  struct uart_port const *__mptr ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  __mptr = (struct uart_port const *)port;
  channel = (struct jsm_channel *)__mptr;
  if ((jsm_debug & 128) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "jsm_tty_get_mctrl";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor.format = "start\n";
    descriptor.lineno = 78U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((channel->ch_bd)->pci_dev)->dev),
                        "start\n");
    } else {
    }
  } else {
  }
  result = jsm_get_mstat(channel);
  if (result < 0) {
    return (4294967290U);
  } else {
  }
  if ((jsm_debug & 128) != 0) {
    descriptor___0.modname = "jsm";
    descriptor___0.function = "jsm_tty_get_mctrl";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor___0.format = "finish\n";
    descriptor___0.lineno = 85U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& ((channel->ch_bd)->pci_dev)->dev),
                        "finish\n");
    } else {
    }
  } else {
  }
  return ((unsigned int )result);
}
}
static void jsm_tty_set_mctrl(struct uart_port *port , unsigned int mctrl )
{
  struct jsm_channel *channel ;
  struct uart_port const *__mptr ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  __mptr = (struct uart_port const *)port;
  channel = (struct jsm_channel *)__mptr;
  if ((jsm_debug & 128) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "jsm_tty_set_mctrl";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor.format = "start\n";
    descriptor.lineno = 100U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((channel->ch_bd)->pci_dev)->dev),
                        "start\n");
    } else {
    }
  } else {
  }
  if ((mctrl & 4U) != 0U) {
    channel->ch_mostat = (u8 )((unsigned int )channel->ch_mostat | 2U);
  } else {
    channel->ch_mostat = (unsigned int )channel->ch_mostat & 253U;
  }
  if ((mctrl & 2U) != 0U) {
    channel->ch_mostat = (u8 )((unsigned int )channel->ch_mostat | 1U);
  } else {
    channel->ch_mostat = (unsigned int )channel->ch_mostat & 254U;
  }
  (*(((channel->ch_bd)->bd_ops)->assert_modem_signals))(channel);
  if ((jsm_debug & 128) != 0) {
    descriptor___0.modname = "jsm";
    descriptor___0.function = "jsm_tty_set_mctrl";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor___0.format = "finish\n";
    descriptor___0.lineno = 114U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& ((channel->ch_bd)->pci_dev)->dev),
                        "finish\n");
    } else {
    }
  } else {
  }
  __const_udelay(42950UL);
  return;
}
}
static void jsm_tty_write(struct uart_port *port )
{
  struct jsm_channel *channel ;
  struct uart_port const *__mptr ;
  {
  __mptr = (struct uart_port const *)port;
  channel = (struct jsm_channel *)__mptr;
  (*(((channel->ch_bd)->bd_ops)->copy_data_from_queue_to_uart))(channel);
  return;
}
}
static void jsm_tty_start_tx(struct uart_port *port )
{
  struct jsm_channel *channel ;
  struct uart_port const *__mptr ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  __mptr = (struct uart_port const *)port;
  channel = (struct jsm_channel *)__mptr;
  if ((jsm_debug & 128) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "jsm_tty_start_tx";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor.format = "start\n";
    descriptor.lineno = 136U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((channel->ch_bd)->pci_dev)->dev),
                        "start\n");
    } else {
    }
  } else {
  }
  channel->ch_flags = channel->ch_flags & 4294967293U;
  jsm_tty_write(port);
  if ((jsm_debug & 128) != 0) {
    descriptor___0.modname = "jsm";
    descriptor___0.function = "jsm_tty_start_tx";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor___0.format = "finish\n";
    descriptor___0.lineno = 141U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& ((channel->ch_bd)->pci_dev)->dev),
                        "finish\n");
    } else {
    }
  } else {
  }
  return;
}
}
static void jsm_tty_stop_tx(struct uart_port *port )
{
  struct jsm_channel *channel ;
  struct uart_port const *__mptr ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  __mptr = (struct uart_port const *)port;
  channel = (struct jsm_channel *)__mptr;
  if ((jsm_debug & 128) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "jsm_tty_stop_tx";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor.format = "start\n";
    descriptor.lineno = 149U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((channel->ch_bd)->pci_dev)->dev),
                        "start\n");
    } else {
    }
  } else {
  }
  channel->ch_flags = channel->ch_flags | 2U;
  if ((jsm_debug & 128) != 0) {
    descriptor___0.modname = "jsm";
    descriptor___0.function = "jsm_tty_stop_tx";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor___0.format = "finish\n";
    descriptor___0.lineno = 153U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& ((channel->ch_bd)->pci_dev)->dev),
                        "finish\n");
    } else {
    }
  } else {
  }
  return;
}
}
static void jsm_tty_send_xchar(struct uart_port *port , char ch )
{
  unsigned long lock_flags ;
  struct jsm_channel *channel ;
  struct uart_port const *__mptr ;
  struct ktermios *termios ;
  {
  __mptr = (struct uart_port const *)port;
  channel = (struct jsm_channel *)__mptr;
  ldv_spin_lock();
  termios = & ((port->state)->port.tty)->termios;
  if ((int )ch == (int )termios->c_cc[8]) {
    (*(((channel->ch_bd)->bd_ops)->send_start_character))(channel);
  } else {
  }
  if ((int )ch == (int )termios->c_cc[9]) {
    (*(((channel->ch_bd)->bd_ops)->send_stop_character))(channel);
  } else {
  }
  spin_unlock_irqrestore(& port->lock, lock_flags);
  return;
}
}
static void jsm_tty_stop_rx(struct uart_port *port )
{
  struct jsm_channel *channel ;
  struct uart_port const *__mptr ;
  {
  __mptr = (struct uart_port const *)port;
  channel = (struct jsm_channel *)__mptr;
  (*(((channel->ch_bd)->bd_ops)->disable_receiver))(channel);
  return;
}
}
static void jsm_tty_break(struct uart_port *port , int break_state )
{
  unsigned long lock_flags ;
  struct jsm_channel *channel ;
  struct uart_port const *__mptr ;
  {
  __mptr = (struct uart_port const *)port;
  channel = (struct jsm_channel *)__mptr;
  ldv_spin_lock();
  if (break_state == -1) {
    (*(((channel->ch_bd)->bd_ops)->send_break))(channel);
  } else {
    (*(((channel->ch_bd)->bd_ops)->clear_break))(channel);
  }
  spin_unlock_irqrestore(& port->lock, lock_flags);
  return;
}
}
static int jsm_tty_open(struct uart_port *port )
{
  struct jsm_board *brd ;
  struct jsm_channel *channel ;
  struct uart_port const *__mptr ;
  struct ktermios *termios ;
  void *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  void *tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  struct _ddebug descriptor___2 ;
  long tmp___6 ;
  {
  __mptr = (struct uart_port const *)port;
  channel = (struct jsm_channel *)__mptr;
  brd = channel->ch_bd;
  channel->ch_flags = channel->ch_flags | 128U;
  if ((unsigned long )channel->ch_rqueue == (unsigned long )((u8 *)0U)) {
    tmp = kzalloc(8192UL, 208U);
    channel->ch_rqueue = (u8 *)tmp;
    if ((unsigned long )channel->ch_rqueue == (unsigned long )((u8 *)0U)) {
      if (jsm_debug & 1) {
        descriptor.modname = "jsm";
        descriptor.function = "jsm_tty_open";
        descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
        descriptor.format = "unable to allocate read queue buf\n";
        descriptor.lineno = 218U;
        descriptor.flags = 0U;
        tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
        if (tmp___0 != 0L) {
          __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((channel->ch_bd)->pci_dev)->dev),
                            "unable to allocate read queue buf\n");
        } else {
        }
      } else {
      }
      return (-12);
    } else {
    }
  } else {
  }
  if ((unsigned long )channel->ch_equeue == (unsigned long )((u8 *)0U)) {
    tmp___1 = kzalloc(8192UL, 208U);
    channel->ch_equeue = (u8 *)tmp___1;
    if ((unsigned long )channel->ch_equeue == (unsigned long )((u8 *)0U)) {
      if (jsm_debug & 1) {
        descriptor___0.modname = "jsm";
        descriptor___0.function = "jsm_tty_open";
        descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
        descriptor___0.format = "unable to allocate error queue buf\n";
        descriptor___0.lineno = 226U;
        descriptor___0.flags = 0U;
        tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
        if (tmp___2 != 0L) {
          __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& ((channel->ch_bd)->pci_dev)->dev),
                            "unable to allocate error queue buf\n");
        } else {
        }
      } else {
      }
      return (-12);
    } else {
    }
  } else {
  }
  channel->ch_flags = channel->ch_flags & 4294967167U;
  if ((jsm_debug & 8) != 0) {
    descriptor___1.modname = "jsm";
    descriptor___1.function = "jsm_tty_open";
    descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor___1.format = "jsm_open: initializing channel in open...\n";
    descriptor___1.lineno = 236U;
    descriptor___1.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& ((channel->ch_bd)->pci_dev)->dev),
                        "jsm_open: initializing channel in open...\n");
    } else {
    }
  } else {
  }
  tmp___4 = 0U;
  channel->ch_r_tail = tmp___4;
  channel->ch_r_head = tmp___4;
  tmp___5 = 0U;
  channel->ch_e_tail = tmp___5;
  channel->ch_e_head = tmp___5;
  (*((brd->bd_ops)->flush_uart_write))(channel);
  (*((brd->bd_ops)->flush_uart_read))(channel);
  channel->ch_flags = 0U;
  channel->ch_cached_lsr = 0U;
  channel->ch_stops_sent = 0U;
  termios = & ((port->state)->port.tty)->termios;
  channel->ch_c_cflag = termios->c_cflag;
  channel->ch_c_iflag = termios->c_iflag;
  channel->ch_c_oflag = termios->c_oflag;
  channel->ch_c_lflag = termios->c_lflag;
  channel->ch_startc = termios->c_cc[8];
  channel->ch_stopc = termios->c_cc[9];
  (*((brd->bd_ops)->uart_init))(channel);
  (*((brd->bd_ops)->param))(channel);
  jsm_carrier(channel);
  channel->ch_open_count = channel->ch_open_count + 1U;
  if ((jsm_debug & 8) != 0) {
    descriptor___2.modname = "jsm";
    descriptor___2.function = "jsm_tty_open";
    descriptor___2.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor___2.format = "finish\n";
    descriptor___2.lineno = 271U;
    descriptor___2.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)(& ((channel->ch_bd)->pci_dev)->dev),
                        "finish\n");
    } else {
    }
  } else {
  }
  return (0);
}
}
static void jsm_tty_close(struct uart_port *port )
{
  struct jsm_board *bd ;
  struct ktermios *ts ;
  struct jsm_channel *channel ;
  struct uart_port const *__mptr ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  {
  __mptr = (struct uart_port const *)port;
  channel = (struct jsm_channel *)__mptr;
  if ((jsm_debug & 16) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "jsm_tty_close";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor.format = "start\n";
    descriptor.lineno = 282U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((channel->ch_bd)->pci_dev)->dev),
                        "start\n");
    } else {
    }
  } else {
  }
  bd = channel->ch_bd;
  ts = & ((port->state)->port.tty)->termios;
  channel->ch_flags = channel->ch_flags & 4294967291U;
  channel->ch_open_count = channel->ch_open_count - 1U;
  if ((channel->ch_c_cflag & 1024U) != 0U) {
    if ((jsm_debug & 16) != 0) {
      descriptor___0.modname = "jsm";
      descriptor___0.function = "jsm_tty_close";
      descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
      descriptor___0.format = "Close. HUPCL set, dropping DTR/RTS\n";
      descriptor___0.lineno = 296U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& ((channel->ch_bd)->pci_dev)->dev),
                          "Close. HUPCL set, dropping DTR/RTS\n");
      } else {
      }
    } else {
    }
    channel->ch_mostat = (unsigned int )channel->ch_mostat & 252U;
    (*((bd->bd_ops)->assert_modem_signals))(channel);
  } else {
  }
  (*(((channel->ch_bd)->bd_ops)->uart_off))(channel);
  if ((jsm_debug & 16) != 0) {
    descriptor___1.modname = "jsm";
    descriptor___1.function = "jsm_tty_close";
    descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor___1.format = "finish\n";
    descriptor___1.lineno = 306U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& ((channel->ch_bd)->pci_dev)->dev),
                        "finish\n");
    } else {
    }
  } else {
  }
  return;
}
}
static void jsm_tty_set_termios(struct uart_port *port , struct ktermios *termios ,
                                struct ktermios *old_termios )
{
  unsigned long lock_flags ;
  struct jsm_channel *channel ;
  struct uart_port const *__mptr ;
  {
  __mptr = (struct uart_port const *)port;
  channel = (struct jsm_channel *)__mptr;
  ldv_spin_lock();
  channel->ch_c_cflag = termios->c_cflag;
  channel->ch_c_iflag = termios->c_iflag;
  channel->ch_c_oflag = termios->c_oflag;
  channel->ch_c_lflag = termios->c_lflag;
  channel->ch_startc = termios->c_cc[8];
  channel->ch_stopc = termios->c_cc[9];
  (*(((channel->ch_bd)->bd_ops)->param))(channel);
  jsm_carrier(channel);
  spin_unlock_irqrestore(& port->lock, lock_flags);
  return;
}
}
static char const *jsm_tty_type(struct uart_port *port )
{
  {
  return ("jsm");
}
}
static void jsm_tty_release_port(struct uart_port *port )
{
  {
  return;
}
}
static int jsm_tty_request_port(struct uart_port *port )
{
  {
  return (0);
}
}
static void jsm_config_port(struct uart_port *port , int flags )
{
  {
  port->type = 69U;
  return;
}
}
static struct uart_ops jsm_ops =
     {& jsm_tty_tx_empty, & jsm_tty_set_mctrl, & jsm_tty_get_mctrl, & jsm_tty_stop_tx,
    & jsm_tty_start_tx, 0, 0, & jsm_tty_send_xchar, & jsm_tty_stop_rx, 0, & jsm_tty_break,
    & jsm_tty_open, & jsm_tty_close, 0, & jsm_tty_set_termios, 0, 0, & jsm_tty_type,
    & jsm_tty_release_port, & jsm_tty_request_port, & jsm_config_port, 0, 0, 0, 0,
    0};
int jsm_tty_init(struct jsm_board *brd )
{
  int i ;
  void *vaddr ;
  struct jsm_channel *ch ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  {
  if ((unsigned long )brd == (unsigned long )((struct jsm_board *)0)) {
    return (-6);
  } else {
  }
  if (jsm_debug & 1) {
    descriptor.modname = "jsm";
    descriptor.function = "jsm_tty_init";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor.format = "start\n";
    descriptor.lineno = 382U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& (brd->pci_dev)->dev),
                        "start\n");
    } else {
    }
  } else {
  }
  brd->nasync = brd->maxports;
  i = 0;
  goto ldv_34074;
  ldv_34073: ;
  if ((unsigned long )brd->channels[i] == (unsigned long )((struct jsm_channel *)0)) {
    tmp___0 = kzalloc(768UL, 208U);
    brd->channels[i] = (struct jsm_channel *)tmp___0;
    if ((unsigned long )brd->channels[i] == (unsigned long )((struct jsm_channel *)0)) {
      if ((jsm_debug & 4) != 0) {
        descriptor___0.modname = "jsm";
        descriptor___0.function = "jsm_tty_init";
        descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
        descriptor___0.format = "%s:%d Unable to allocate memory for channel struct\n";
        descriptor___0.lineno = 405U;
        descriptor___0.flags = 0U;
        tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
        if (tmp___1 != 0L) {
          __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (brd->pci_dev)->dev),
                            "%s:%d Unable to allocate memory for channel struct\n",
                            (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c",
                            405);
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_34074: ;
  if ((u32 )i < brd->nasync) {
    goto ldv_34073;
  } else {
  }
  ch = brd->channels[0];
  vaddr = (void *)brd->re_map_membase;
  i = 0;
  goto ldv_34080;
  ldv_34079: ;
  if ((unsigned long )brd->channels[i] == (unsigned long )((struct jsm_channel *)0)) {
    goto ldv_34076;
  } else {
  }
  spinlock_check(& ch->ch_lock);
  __raw_spin_lock_init(& ch->ch_lock.__annonCompField18.rlock, "&(&ch->ch_lock)->rlock",
                       & __key);
  if (brd->bd_uart_offset == 512U) {
    ch->ch_neo_uart = (struct neo_uart_struct *)vaddr + (unsigned long )(brd->bd_uart_offset * (u32 )i);
  } else {
    ch->ch_cls_uart = (struct cls_uart_struct *)vaddr + (unsigned long )(brd->bd_uart_offset * (u32 )i);
  }
  ch->ch_bd = brd;
  ch->ch_portnum = (u32 )i;
  ch->ch_close_delay = 250ULL;
  __init_waitqueue_head(& ch->ch_flags_wait, "&ch->ch_flags_wait", & __key___0);
  ldv_34076:
  i = i + 1;
  ch = brd->channels[i];
  ldv_34080: ;
  if ((u32 )i < brd->nasync) {
    goto ldv_34079;
  } else {
  }
  if (jsm_debug & 1) {
    descriptor___1.modname = "jsm";
    descriptor___1.function = "jsm_tty_init";
    descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor___1.format = "finish\n";
    descriptor___1.lineno = 435U;
    descriptor___1.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& (brd->pci_dev)->dev),
                        "finish\n");
    } else {
    }
  } else {
  }
  return (0);
}
}
int jsm_uart_port_init(struct jsm_board *brd )
{
  int i ;
  int rc ;
  unsigned int line ;
  struct jsm_channel *ch ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  {
  if ((unsigned long )brd == (unsigned long )((struct jsm_board *)0)) {
    return (-6);
  } else {
  }
  if (jsm_debug & 1) {
    descriptor.modname = "jsm";
    descriptor.function = "jsm_uart_port_init";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor.format = "start\n";
    descriptor.lineno = 448U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& (brd->pci_dev)->dev),
                        "start\n");
    } else {
    }
  } else {
  }
  brd->nasync = brd->maxports;
  i = 0;
  goto ldv_34094;
  ldv_34093: ;
  if ((unsigned long )brd->channels[i] == (unsigned long )((struct jsm_channel *)0)) {
    goto ldv_34092;
  } else {
  }
  (brd->channels[i])->uart_port.irq = brd->irq;
  (brd->channels[i])->uart_port.uartclk = 14745600U;
  (brd->channels[i])->uart_port.type = 69U;
  (brd->channels[i])->uart_port.iotype = 2U;
  (brd->channels[i])->uart_port.membase = brd->re_map_membase;
  (brd->channels[i])->uart_port.fifosize = 16U;
  (brd->channels[i])->uart_port.ops = (struct uart_ops const *)(& jsm_ops);
  tmp___0 = find_first_zero_bit((unsigned long const *)(& linemap), 256UL);
  line = (unsigned int )tmp___0;
  if (line > 255U) {
    printk("\016jsm: linemap is full, added device failed\n");
    goto ldv_34092;
  } else {
    set_bit((long )line, (unsigned long volatile *)(& linemap));
  }
  (brd->channels[i])->uart_port.line = line;
  rc = uart_add_one_port(& jsm_uart_driver, & (brd->channels[i])->uart_port);
  if (rc != 0) {
    printk("\016jsm: Port %d failed. Aborting...\n", i);
    return (rc);
  } else {
    printk("\016jsm: Port %d added\n", i);
  }
  ldv_34092:
  i = i + 1;
  ch = brd->channels[i];
  ldv_34094: ;
  if ((u32 )i < brd->nasync) {
    goto ldv_34093;
  } else {
  }
  if (jsm_debug & 1) {
    descriptor___0.modname = "jsm";
    descriptor___0.function = "jsm_uart_port_init";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor___0.format = "finish\n";
    descriptor___0.lineno = 485U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (brd->pci_dev)->dev),
                        "finish\n");
    } else {
    }
  } else {
  }
  return (0);
}
}
int jsm_remove_uart_port(struct jsm_board *brd )
{
  int i ;
  struct jsm_channel *ch ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  if ((unsigned long )brd == (unsigned long )((struct jsm_board *)0)) {
    return (-6);
  } else {
  }
  if (jsm_debug & 1) {
    descriptor.modname = "jsm";
    descriptor.function = "jsm_remove_uart_port";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor.format = "start\n";
    descriptor.lineno = 497U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& (brd->pci_dev)->dev),
                        "start\n");
    } else {
    }
  } else {
  }
  brd->nasync = brd->maxports;
  i = 0;
  goto ldv_34106;
  ldv_34105: ;
  if ((unsigned long )brd->channels[i] == (unsigned long )((struct jsm_channel *)0)) {
    goto ldv_34104;
  } else {
  }
  ch = brd->channels[i];
  clear_bit((long )ch->uart_port.line, (unsigned long volatile *)(& linemap));
  uart_remove_one_port(& jsm_uart_driver, & (brd->channels[i])->uart_port);
  ldv_34104:
  i = i + 1;
  ldv_34106: ;
  if ((u32 )i < brd->nasync) {
    goto ldv_34105;
  } else {
  }
  if (jsm_debug & 1) {
    descriptor___0.modname = "jsm";
    descriptor___0.function = "jsm_remove_uart_port";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor___0.format = "finish\n";
    descriptor___0.lineno = 517U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (brd->pci_dev)->dev),
                        "finish\n");
    } else {
    }
  } else {
  }
  return (0);
}
}
void jsm_input(struct jsm_channel *ch )
{
  struct jsm_board *bd ;
  struct tty_struct *tp ;
  struct tty_port *port ;
  u32 rmask ;
  u16 head ;
  u16 tail ;
  int data_len ;
  unsigned long lock_flags ;
  int len ;
  int n ;
  int s ;
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  struct _ddebug descriptor___3 ;
  long tmp___3 ;
  int _min1 ;
  int _min2 ;
  struct _ddebug descriptor___4 ;
  long tmp___4 ;
  {
  len = 0;
  n = 0;
  s = 0;
  i = 0;
  if ((jsm_debug & 32) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "jsm_input";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor.format = "start\n";
    descriptor.lineno = 536U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "start\n");
    } else {
    }
  } else {
  }
  if ((unsigned long )ch == (unsigned long )((struct jsm_channel *)0)) {
    return;
  } else {
  }
  port = & (ch->uart_port.state)->port;
  tp = port->tty;
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct jsm_board *)0)) {
    return;
  } else {
  }
  ldv_spin_lock();
  rmask = 8191U;
  head = (int )ch->ch_r_head & (int )((u16 )rmask);
  tail = (int )ch->ch_r_tail & (int )((u16 )rmask);
  data_len = (int )((u32 )((int )head - (int )tail) & rmask);
  if (data_len == 0) {
    spin_unlock_irqrestore(& ch->ch_lock, lock_flags);
    return;
  } else {
  }
  if ((jsm_debug & 32) != 0) {
    descriptor___0.modname = "jsm";
    descriptor___0.function = "jsm_input";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor___0.format = "start\n";
    descriptor___0.lineno = 566U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "start\n");
    } else {
    }
  } else {
  }
  if ((unsigned long )tp == (unsigned long )((struct tty_struct *)0) || (tp->termios.c_cflag & 128U) == 0U) {
    if ((jsm_debug & 32) != 0) {
      descriptor___1.modname = "jsm";
      descriptor___1.function = "jsm_input";
      descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
      descriptor___1.format = "input. dropping %d bytes on port %d...\n";
      descriptor___1.lineno = 577U;
      descriptor___1.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                          "input. dropping %d bytes on port %d...\n", data_len, ch->ch_portnum);
      } else {
      }
    } else {
    }
    ch->ch_r_head = tail;
    jsm_check_queue_flow_control(ch);
    spin_unlock_irqrestore(& ch->ch_lock, lock_flags);
    return;
  } else {
  }
  if ((ch->ch_flags & 4U) != 0U) {
    spin_unlock_irqrestore(& ch->ch_lock, lock_flags);
    if ((jsm_debug & 32) != 0) {
      descriptor___2.modname = "jsm";
      descriptor___2.function = "jsm_input";
      descriptor___2.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
      descriptor___2.format = "Port %d throttled, not reading any data. head: %x tail: %x\n";
      descriptor___2.lineno = 594U;
      descriptor___2.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      if (tmp___2 != 0L) {
        __dynamic_dev_dbg(& descriptor___2, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                          "Port %d throttled, not reading any data. head: %x tail: %x\n",
                          ch->ch_portnum, (int )head, (int )tail);
      } else {
      }
    } else {
    }
    return;
  } else {
  }
  if ((jsm_debug & 32) != 0) {
    descriptor___3.modname = "jsm";
    descriptor___3.function = "jsm_input";
    descriptor___3.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor___3.format = "start 2\n";
    descriptor___3.lineno = 598U;
    descriptor___3.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "start 2\n");
    } else {
    }
  } else {
  }
  len = tty_buffer_request_room(port, (size_t )data_len);
  n = len;
  goto ldv_34138;
  ldv_34137:
  s = ((int )head >= (int )tail ? (int )head : 8192) - (int )tail;
  _min1 = s;
  _min2 = n;
  s = _min1 < _min2 ? _min1 : _min2;
  if (s <= 0) {
    goto ldv_34133;
  } else {
  }
  if (((tp->termios.c_iflag & 8U) != 0U || (tp->termios.c_iflag & 2U) != 0U) || (tp->termios.c_iflag & 16U) != 0U) {
    i = 0;
    goto ldv_34135;
    ldv_34134: ;
    if (((int )*(ch->ch_equeue + ((unsigned long )tail + (unsigned long )i)) & 16) != 0) {
      tty_insert_flip_char(port, (int )*(ch->ch_rqueue + ((unsigned long )tail + (unsigned long )i)),
                           1);
    } else
    if (((int )*(ch->ch_equeue + ((unsigned long )tail + (unsigned long )i)) & 4) != 0) {
      tty_insert_flip_char(port, (int )*(ch->ch_rqueue + ((unsigned long )tail + (unsigned long )i)),
                           3);
    } else
    if (((int )*(ch->ch_equeue + ((unsigned long )tail + (unsigned long )i)) & 8) != 0) {
      tty_insert_flip_char(port, (int )*(ch->ch_rqueue + ((unsigned long )tail + (unsigned long )i)),
                           2);
    } else {
      tty_insert_flip_char(port, (int )*(ch->ch_rqueue + ((unsigned long )tail + (unsigned long )i)),
                           0);
    }
    i = i + 1;
    ldv_34135: ;
    if (i < s) {
      goto ldv_34134;
    } else {
    }
  } else {
    tty_insert_flip_string(port, (unsigned char const *)ch->ch_rqueue + (unsigned long )tail,
                           (size_t )s);
  }
  tail = (int )((u16 )s) + (int )tail;
  n = n - s;
  tail = (int )((u16 )rmask) & (int )tail;
  ldv_34138: ;
  if (n != 0) {
    goto ldv_34137;
  } else {
  }
  ldv_34133:
  ch->ch_r_tail = (int )((u16 )rmask) & (int )tail;
  ch->ch_e_tail = (int )((u16 )rmask) & (int )tail;
  jsm_check_queue_flow_control(ch);
  spin_unlock_irqrestore(& ch->ch_lock, lock_flags);
  tty_flip_buffer_push(port);
  if ((jsm_debug & 128) != 0) {
    descriptor___4.modname = "jsm";
    descriptor___4.function = "jsm_input";
    descriptor___4.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor___4.format = "finish\n";
    descriptor___4.lineno = 654U;
    descriptor___4.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_dev_dbg(& descriptor___4, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "finish\n");
    } else {
    }
  } else {
  }
  return;
}
}
static void jsm_carrier(struct jsm_channel *ch )
{
  struct jsm_board *bd ;
  int virt_carrier ;
  int phys_carrier ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  int tmp___3 ;
  struct _ddebug descriptor___3 ;
  long tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  virt_carrier = 0;
  phys_carrier = 0;
  if ((jsm_debug & 65536) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "jsm_carrier";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor.format = "start\n";
    descriptor.lineno = 664U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "start\n");
    } else {
    }
  } else {
  }
  if ((unsigned long )ch == (unsigned long )((struct jsm_channel *)0)) {
    return;
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct jsm_board *)0)) {
    return;
  } else {
  }
  if ((int )((signed char )ch->ch_mistat) < 0) {
    if ((jsm_debug & 65536) != 0) {
      descriptor___0.modname = "jsm";
      descriptor___0.function = "jsm_carrier";
      descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
      descriptor___0.format = "mistat: %x D_CD: %x\n";
      descriptor___0.lineno = 675U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                          "mistat: %x D_CD: %x\n", (int )ch->ch_mistat, (int )ch->ch_mistat & 128);
      } else {
      }
    } else {
    }
    phys_carrier = 1;
  } else {
  }
  if ((ch->ch_c_cflag & 2048U) != 0U) {
    virt_carrier = 1;
  } else {
  }
  if ((jsm_debug & 65536) != 0) {
    descriptor___1.modname = "jsm";
    descriptor___1.function = "jsm_carrier";
    descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
    descriptor___1.format = "DCD: physical: %d virt: %d\n";
    descriptor___1.lineno = 683U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "DCD: physical: %d virt: %d\n", phys_carrier, virt_carrier);
    } else {
    }
  } else {
  }
  if ((ch->ch_flags & 16U) == 0U && virt_carrier == 1) {
    if ((jsm_debug & 65536) != 0) {
      descriptor___2.modname = "jsm";
      descriptor___2.function = "jsm_carrier";
      descriptor___2.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
      descriptor___2.format = "carrier: virt DCD rose\n";
      descriptor___2.lineno = 695U;
      descriptor___2.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      if (tmp___2 != 0L) {
        __dynamic_dev_dbg(& descriptor___2, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                          "carrier: virt DCD rose\n");
      } else {
      }
    } else {
    }
    tmp___3 = waitqueue_active(& ch->ch_flags_wait);
    if (tmp___3 != 0) {
      __wake_up(& ch->ch_flags_wait, 1U, 1, (void *)0);
    } else {
    }
  } else {
  }
  if ((ch->ch_flags & 8U) == 0U && phys_carrier == 1) {
    if ((jsm_debug & 65536) != 0) {
      descriptor___3.modname = "jsm";
      descriptor___3.function = "jsm_carrier";
      descriptor___3.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
      descriptor___3.format = "carrier: physical DCD rose\n";
      descriptor___3.lineno = 712U;
      descriptor___3.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
      if (tmp___4 != 0L) {
        __dynamic_dev_dbg(& descriptor___3, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                          "carrier: physical DCD rose\n");
      } else {
      }
    } else {
    }
    tmp___5 = waitqueue_active(& ch->ch_flags_wait);
    if (tmp___5 != 0) {
      __wake_up(& ch->ch_flags_wait, 1U, 1, (void *)0);
    } else {
    }
  } else {
  }
  if ((virt_carrier == 0 && (ch->ch_flags & 8U) != 0U) && phys_carrier == 0) {
    tmp___6 = waitqueue_active(& ch->ch_flags_wait);
    if (tmp___6 != 0) {
      __wake_up(& ch->ch_flags_wait, 1U, 1, (void *)0);
    } else {
    }
  } else {
  }
  if (virt_carrier == 1) {
    ch->ch_flags = ch->ch_flags | 16U;
  } else {
    ch->ch_flags = ch->ch_flags & 4294967279U;
  }
  if (phys_carrier == 1) {
    ch->ch_flags = ch->ch_flags | 8U;
  } else {
    ch->ch_flags = ch->ch_flags & 4294967287U;
  }
  return;
}
}
void jsm_check_queue_flow_control(struct jsm_channel *ch )
{
  struct board_ops *bd_ops ;
  int qleft ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  {
  bd_ops = (ch->ch_bd)->bd_ops;
  qleft = ((int )ch->ch_r_tail - (int )ch->ch_r_head) + -1;
  if (qleft < 0) {
    qleft = qleft + 8192;
  } else {
  }
  if (qleft <= 255) {
    if ((int )ch->ch_c_cflag < 0) {
      if ((ch->ch_flags & 64U) == 0U) {
        (*(bd_ops->disable_receiver))(ch);
        ch->ch_flags = ch->ch_flags | 64U;
        if ((jsm_debug & 32) != 0) {
          descriptor.modname = "jsm";
          descriptor.function = "jsm_check_queue_flow_control";
          descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
          descriptor.format = "Internal queue hit hilevel mark (%d)! Turning off interrupts\n";
          descriptor.lineno = 792U;
          descriptor.flags = 0U;
          tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
          if (tmp != 0L) {
            __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                              "Internal queue hit hilevel mark (%d)! Turning off interrupts\n",
                              qleft);
          } else {
          }
        } else {
        }
      } else {
      }
    } else
    if ((ch->ch_c_iflag & 4096U) != 0U) {
      if (ch->ch_stops_sent <= 5U) {
        (*(bd_ops->send_stop_character))(ch);
        ch->ch_stops_sent = ch->ch_stops_sent + 1U;
        if ((jsm_debug & 32) != 0) {
          descriptor___0.modname = "jsm";
          descriptor___0.function = "jsm_check_queue_flow_control";
          descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
          descriptor___0.format = "Sending stop char! Times sent: %x\n";
          descriptor___0.lineno = 802U;
          descriptor___0.flags = 0U;
          tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
          if (tmp___0 != 0L) {
            __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                              "Sending stop char! Times sent: %x\n", ch->ch_stops_sent);
          } else {
          }
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if (qleft > 4096) {
    if ((int )ch->ch_c_cflag < 0) {
      if ((ch->ch_flags & 64U) != 0U) {
        (*(bd_ops->enable_receiver))(ch);
        ch->ch_flags = ch->ch_flags & 4294967231U;
        if ((jsm_debug & 32) != 0) {
          descriptor___1.modname = "jsm";
          descriptor___1.function = "jsm_check_queue_flow_control";
          descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
          descriptor___1.format = "Internal queue hit lowlevel mark (%d)! Turning on interrupts\n";
          descriptor___1.lineno = 830U;
          descriptor___1.flags = 0U;
          tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
          if (tmp___1 != 0L) {
            __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                              "Internal queue hit lowlevel mark (%d)! Turning on interrupts\n",
                              qleft);
          } else {
          }
        } else {
        }
      } else {
      }
    } else
    if ((ch->ch_c_iflag & 4096U) != 0U && ch->ch_stops_sent != 0U) {
      ch->ch_stops_sent = 0U;
      (*(bd_ops->send_start_character))(ch);
      if ((jsm_debug & 32) != 0) {
        descriptor___2.modname = "jsm";
        descriptor___2.function = "jsm_check_queue_flow_control";
        descriptor___2.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_tty.c";
        descriptor___2.format = "Sending start char!\n";
        descriptor___2.lineno = 838U;
        descriptor___2.flags = 0U;
        tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
        if (tmp___2 != 0L) {
          __dynamic_dev_dbg(& descriptor___2, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                            "Sending start char!\n");
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
extern int ldv_release_2(void) ;
extern int ldv_probe_2(void) ;
void ldv_initialize_uart_ops_2(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(424UL);
  jsm_ops_group0 = (struct uart_port *)tmp;
  return;
}
}
void ldv_main_exported_2(void)
{
  int ldvarg9 ;
  char ldvarg12 ;
  struct ktermios *ldvarg10 ;
  void *tmp ;
  int ldvarg7 ;
  struct ktermios *ldvarg11 ;
  void *tmp___0 ;
  unsigned int ldvarg8 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(44UL);
  ldvarg10 = (struct ktermios *)tmp;
  tmp___0 = ldv_init_zalloc(44UL);
  ldvarg11 = (struct ktermios *)tmp___0;
  ldv_memset((void *)(& ldvarg9), 0, 4UL);
  ldv_memset((void *)(& ldvarg12), 0, 1UL);
  ldv_memset((void *)(& ldvarg7), 0, 4UL);
  ldv_memset((void *)(& ldvarg8), 0, 4UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_2 == 1) {
    jsm_tty_type(jsm_ops_group0);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 3) {
    jsm_tty_type(jsm_ops_group0);
    ldv_state_variable_2 = 3;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    jsm_tty_type(jsm_ops_group0);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_34179;
  case 1: ;
  if (ldv_state_variable_2 == 1) {
    jsm_tty_send_xchar(jsm_ops_group0, (int )ldvarg12);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 3) {
    jsm_tty_send_xchar(jsm_ops_group0, (int )ldvarg12);
    ldv_state_variable_2 = 3;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    jsm_tty_send_xchar(jsm_ops_group0, (int )ldvarg12);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_34179;
  case 2: ;
  if (ldv_state_variable_2 == 1) {
    jsm_tty_release_port(jsm_ops_group0);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 3) {
    jsm_tty_release_port(jsm_ops_group0);
    ldv_state_variable_2 = 3;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    jsm_tty_release_port(jsm_ops_group0);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_34179;
  case 3: ;
  if (ldv_state_variable_2 == 1) {
    jsm_tty_start_tx(jsm_ops_group0);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 3) {
    jsm_tty_start_tx(jsm_ops_group0);
    ldv_state_variable_2 = 3;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    jsm_tty_start_tx(jsm_ops_group0);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_34179;
  case 4: ;
  if (ldv_state_variable_2 == 1) {
    jsm_tty_set_termios(jsm_ops_group0, ldvarg11, ldvarg10);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 3) {
    jsm_tty_set_termios(jsm_ops_group0, ldvarg11, ldvarg10);
    ldv_state_variable_2 = 3;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    jsm_tty_set_termios(jsm_ops_group0, ldvarg11, ldvarg10);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_34179;
  case 5: ;
  if (ldv_state_variable_2 == 1) {
    jsm_config_port(jsm_ops_group0, ldvarg9);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 3) {
    jsm_config_port(jsm_ops_group0, ldvarg9);
    ldv_state_variable_2 = 3;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    jsm_config_port(jsm_ops_group0, ldvarg9);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_34179;
  case 6: ;
  if (ldv_state_variable_2 == 1) {
    jsm_tty_set_mctrl(jsm_ops_group0, ldvarg8);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 3) {
    jsm_tty_set_mctrl(jsm_ops_group0, ldvarg8);
    ldv_state_variable_2 = 3;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    jsm_tty_set_mctrl(jsm_ops_group0, ldvarg8);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_34179;
  case 7: ;
  if (ldv_state_variable_2 == 1) {
    jsm_tty_open(jsm_ops_group0);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 3) {
    jsm_tty_open(jsm_ops_group0);
    ldv_state_variable_2 = 3;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    jsm_tty_open(jsm_ops_group0);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_34179;
  case 8: ;
  if (ldv_state_variable_2 == 1) {
    jsm_tty_get_mctrl(jsm_ops_group0);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 3) {
    jsm_tty_get_mctrl(jsm_ops_group0);
    ldv_state_variable_2 = 3;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    jsm_tty_get_mctrl(jsm_ops_group0);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_34179;
  case 9: ;
  if (ldv_state_variable_2 == 1) {
    jsm_tty_tx_empty(jsm_ops_group0);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 3) {
    jsm_tty_tx_empty(jsm_ops_group0);
    ldv_state_variable_2 = 3;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    jsm_tty_tx_empty(jsm_ops_group0);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_34179;
  case 10: ;
  if (ldv_state_variable_2 == 2) {
    jsm_tty_close(jsm_ops_group0);
    ldv_state_variable_2 = 3;
  } else {
  }
  goto ldv_34179;
  case 11: ;
  if (ldv_state_variable_2 == 1) {
    jsm_tty_stop_tx(jsm_ops_group0);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 3) {
    jsm_tty_stop_tx(jsm_ops_group0);
    ldv_state_variable_2 = 3;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    jsm_tty_stop_tx(jsm_ops_group0);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_34179;
  case 12: ;
  if (ldv_state_variable_2 == 1) {
    jsm_tty_break(jsm_ops_group0, ldvarg7);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 3) {
    jsm_tty_break(jsm_ops_group0, ldvarg7);
    ldv_state_variable_2 = 3;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    jsm_tty_break(jsm_ops_group0, ldvarg7);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_34179;
  case 13: ;
  if (ldv_state_variable_2 == 1) {
    jsm_tty_stop_rx(jsm_ops_group0);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 3) {
    jsm_tty_stop_rx(jsm_ops_group0);
    ldv_state_variable_2 = 3;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    jsm_tty_stop_rx(jsm_ops_group0);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_34179;
  case 14: ;
  if (ldv_state_variable_2 == 1) {
    jsm_tty_request_port(jsm_ops_group0);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 3) {
    jsm_tty_request_port(jsm_ops_group0);
    ldv_state_variable_2 = 3;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    jsm_tty_request_port(jsm_ops_group0);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_34179;
  case 15: ;
  if (ldv_state_variable_2 == 3) {
    ldv_release_2();
    ldv_state_variable_2 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    ldv_release_2();
    ldv_state_variable_2 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_34179;
  case 16: ;
  if (ldv_state_variable_2 == 1) {
    ldv_probe_2();
    ldv_state_variable_2 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_34179;
  default:
  ldv_stop();
  }
  ldv_34179: ;
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
static struct __anonstruct_baud_rates_254 baud_rates[19U] =
  { {921600U, 4103U},
        {460800U, 4100U},
        {230400U, 4099U},
        {115200U, 4098U},
        {57600U, 4097U},
        {38400U, 15U},
        {19200U, 14U},
        {9600U, 13U},
        {4800U, 12U},
        {2400U, 11U},
        {1200U, 9U},
        {600U, 8U},
        {300U, 7U},
        {200U, 6U},
        {150U, 5U},
        {134U, 4U},
        {110U, 3U},
        {75U, 2U},
        {50U, 1U}};
static void cls_set_cts_flow_control(struct jsm_channel *ch )
{
  u8 lcrb ;
  unsigned char tmp ;
  u8 ier ;
  unsigned char tmp___0 ;
  u8 isr_fcr ;
  {
  tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
  lcrb = tmp;
  tmp___0 = readb((void const volatile *)(& (ch->ch_cls_uart)->ier));
  ier = tmp___0;
  isr_fcr = 0U;
  writeb(191, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  isr_fcr = readb((void const volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  isr_fcr = (u8 )((unsigned int )isr_fcr | 144U);
  isr_fcr = (unsigned int )isr_fcr & 253U;
  writeb((int )isr_fcr, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb((int )lcrb, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  ier = (u8 )((unsigned int )ier | 128U);
  ier = (unsigned int )ier & 223U;
  writeb((int )ier, (void volatile *)(& (ch->ch_cls_uart)->ier));
  writeb(1, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb(147, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  ch->ch_t_tlevel = 16U;
  return;
}
}
static void cls_set_ixon_flow_control(struct jsm_channel *ch )
{
  u8 lcrb ;
  unsigned char tmp ;
  u8 ier ;
  unsigned char tmp___0 ;
  u8 isr_fcr ;
  {
  tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
  lcrb = tmp;
  tmp___0 = readb((void const volatile *)(& (ch->ch_cls_uart)->ier));
  ier = tmp___0;
  isr_fcr = 0U;
  writeb(191, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  isr_fcr = readb((void const volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  isr_fcr = (u8 )((unsigned int )isr_fcr | 18U);
  isr_fcr = (unsigned int )isr_fcr & 127U;
  writeb((int )isr_fcr, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb((int )ch->ch_startc, (void volatile *)(& (ch->ch_cls_uart)->mcr));
  writeb(0, (void volatile *)(& (ch->ch_cls_uart)->lsr));
  writeb((int )ch->ch_stopc, (void volatile *)(& (ch->ch_cls_uart)->msr));
  writeb(0, (void volatile *)(& (ch->ch_cls_uart)->spr));
  writeb((int )lcrb, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  ier = (unsigned int )ier & 127U;
  ier = (u8 )((unsigned int )ier | 32U);
  writeb((int )ier, (void volatile *)(& (ch->ch_cls_uart)->ier));
  writeb(1, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb(83, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  return;
}
}
static void cls_set_no_output_flow_control(struct jsm_channel *ch )
{
  u8 lcrb ;
  unsigned char tmp ;
  u8 ier ;
  unsigned char tmp___0 ;
  u8 isr_fcr ;
  {
  tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
  lcrb = tmp;
  tmp___0 = readb((void const volatile *)(& (ch->ch_cls_uart)->ier));
  ier = tmp___0;
  isr_fcr = 0U;
  writeb(191, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  isr_fcr = readb((void const volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  isr_fcr = (u8 )((unsigned int )isr_fcr | 16U);
  isr_fcr = (unsigned int )isr_fcr & 125U;
  writeb((int )isr_fcr, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb((int )lcrb, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  ier = (unsigned int )ier & 127U;
  ier = (unsigned int )ier & 223U;
  writeb((int )ier, (void volatile *)(& (ch->ch_cls_uart)->ier));
  writeb(1, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb(83, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  ch->ch_r_watermark = 0U;
  ch->ch_t_tlevel = 16U;
  ch->ch_r_tlevel = 16U;
  return;
}
}
static void cls_set_rts_flow_control(struct jsm_channel *ch )
{
  u8 lcrb ;
  unsigned char tmp ;
  u8 ier ;
  unsigned char tmp___0 ;
  u8 isr_fcr ;
  {
  tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
  lcrb = tmp;
  tmp___0 = readb((void const volatile *)(& (ch->ch_cls_uart)->ier));
  ier = tmp___0;
  isr_fcr = 0U;
  writeb(191, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  isr_fcr = readb((void const volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  isr_fcr = (u8 )((unsigned int )isr_fcr | 80U);
  isr_fcr = (unsigned int )isr_fcr & 247U;
  writeb((int )isr_fcr, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb((int )lcrb, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  ier = (u8 )((unsigned int )ier | 64U);
  writeb((int )ier, (void volatile *)(& (ch->ch_cls_uart)->ier));
  writeb(1, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb(147, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  ch->ch_r_watermark = 4U;
  ch->ch_r_tlevel = 8U;
  return;
}
}
static void cls_set_ixoff_flow_control(struct jsm_channel *ch )
{
  u8 lcrb ;
  unsigned char tmp ;
  u8 ier ;
  unsigned char tmp___0 ;
  u8 isr_fcr ;
  {
  tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
  lcrb = tmp;
  tmp___0 = readb((void const volatile *)(& (ch->ch_cls_uart)->ier));
  ier = tmp___0;
  isr_fcr = 0U;
  writeb(191, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  isr_fcr = readb((void const volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  isr_fcr = (u8 )((unsigned int )isr_fcr | 24U);
  isr_fcr = (unsigned int )isr_fcr & 191U;
  writeb((int )isr_fcr, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb((int )ch->ch_startc, (void volatile *)(& (ch->ch_cls_uart)->mcr));
  writeb(0, (void volatile *)(& (ch->ch_cls_uart)->lsr));
  writeb((int )ch->ch_stopc, (void volatile *)(& (ch->ch_cls_uart)->msr));
  writeb(0, (void volatile *)(& (ch->ch_cls_uart)->spr));
  writeb((int )lcrb, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  ier = (unsigned int )ier & 191U;
  writeb((int )ier, (void volatile *)(& (ch->ch_cls_uart)->ier));
  writeb(1, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb(83, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  return;
}
}
static void cls_set_no_input_flow_control(struct jsm_channel *ch )
{
  u8 lcrb ;
  unsigned char tmp ;
  u8 ier ;
  unsigned char tmp___0 ;
  u8 isr_fcr ;
  {
  tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
  lcrb = tmp;
  tmp___0 = readb((void const volatile *)(& (ch->ch_cls_uart)->ier));
  ier = tmp___0;
  isr_fcr = 0U;
  writeb(191, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  isr_fcr = readb((void const volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  isr_fcr = (u8 )((unsigned int )isr_fcr | 16U);
  isr_fcr = (unsigned int )isr_fcr & 183U;
  writeb((int )isr_fcr, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb((int )lcrb, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  ier = (unsigned int )ier & 191U;
  writeb((int )ier, (void volatile *)(& (ch->ch_cls_uart)->ier));
  writeb(1, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb(83, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  ch->ch_t_tlevel = 16U;
  ch->ch_r_tlevel = 16U;
  return;
}
}
static void cls_clear_break(struct jsm_channel *ch )
{
  unsigned long lock_flags ;
  u8 temp ;
  unsigned char tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  ldv_spin_lock();
  if ((ch->ch_flags & 4096U) != 0U) {
    tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
    temp = tmp;
    writeb((int )temp & 191, (void volatile *)(& (ch->ch_cls_uart)->lcr));
    ch->ch_flags = ch->ch_flags & 4294963199U;
    if ((jsm_debug & 128) != 0) {
      descriptor.modname = "jsm";
      descriptor.function = "cls_clear_break";
      descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_cls.c";
      descriptor.format = "clear break Finishing UART_LCR_SBC! finished: %lx\n";
      descriptor.lineno = 329U;
      descriptor.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                          "clear break Finishing UART_LCR_SBC! finished: %lx\n", jiffies);
      } else {
      }
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore(& ch->ch_lock, lock_flags);
  return;
}
}
static void cls_disable_receiver(struct jsm_channel *ch )
{
  u8 tmp ;
  unsigned char tmp___0 ;
  {
  tmp___0 = readb((void const volatile *)(& (ch->ch_cls_uart)->ier));
  tmp = tmp___0;
  tmp = (unsigned int )tmp & 254U;
  writeb((int )tmp, (void volatile *)(& (ch->ch_cls_uart)->ier));
  return;
}
}
static void cls_enable_receiver(struct jsm_channel *ch )
{
  u8 tmp ;
  unsigned char tmp___0 ;
  {
  tmp___0 = readb((void const volatile *)(& (ch->ch_cls_uart)->ier));
  tmp = tmp___0;
  tmp = (u8 )((unsigned int )tmp | 1U);
  writeb((int )tmp, (void volatile *)(& (ch->ch_cls_uart)->ier));
  return;
}
}
static void cls_assert_modem_signals(struct jsm_channel *ch )
{
  {
  if ((unsigned long )ch == (unsigned long )((struct jsm_channel *)0)) {
    return;
  } else {
  }
  writeb((int )ch->ch_mostat, (void volatile *)(& (ch->ch_cls_uart)->mcr));
  return;
}
}
static void cls_copy_data_from_uart_to_queue(struct jsm_channel *ch )
{
  int qleft ;
  u8 linestatus ;
  u8 error_mask ;
  u16 head ;
  u16 tail ;
  unsigned long flags ;
  u8 discard ;
  {
  qleft = 0;
  linestatus = 0U;
  error_mask = 0U;
  if ((unsigned long )ch == (unsigned long )((struct jsm_channel *)0)) {
    return;
  } else {
  }
  ldv_spin_lock();
  head = (unsigned int )ch->ch_r_head & 8191U;
  tail = (unsigned int )ch->ch_r_tail & 8191U;
  linestatus = ch->ch_cached_lsr;
  ch->ch_cached_lsr = 0U;
  qleft = ((int )tail - (int )head) + -1;
  if (qleft < 0) {
    qleft = qleft + 8192;
  } else {
  }
  if ((int )ch->ch_c_iflag & 1) {
    error_mask = (u8 )((unsigned int )error_mask | 16U);
  } else {
  }
  ldv_33966:
  linestatus = readb((void const volatile *)(& (ch->ch_cls_uart)->lsr));
  if (((int )linestatus & 1) == 0) {
    goto ldv_33960;
  } else {
  }
  if ((unsigned int )((int )linestatus & (int )error_mask) != 0U) {
    linestatus = 0U;
    discard = readb((void const volatile *)(& (ch->ch_cls_uart)->txrx));
    goto ldv_33962;
  } else {
  }
  goto ldv_33964;
  ldv_33963:
  tail = (unsigned int )((u16 )((unsigned int )tail + 1U)) & 8191U;
  ch->ch_r_tail = tail;
  ch->ch_err_overrun = ch->ch_err_overrun + 1ULL;
  qleft = qleft + 1;
  ldv_33964: ;
  if (qleft <= 0) {
    goto ldv_33963;
  } else {
  }
  *(ch->ch_equeue + (unsigned long )head) = (unsigned int )linestatus & 28U;
  *(ch->ch_rqueue + (unsigned long )head) = readb((void const volatile *)(& (ch->ch_cls_uart)->txrx));
  qleft = qleft - 1;
  if (((int )*(ch->ch_equeue + (unsigned long )head) & 4) != 0) {
    ch->ch_err_parity = ch->ch_err_parity + 1ULL;
  } else {
  }
  if (((int )*(ch->ch_equeue + (unsigned long )head) & 16) != 0) {
    ch->ch_err_break = ch->ch_err_break + 1ULL;
  } else {
  }
  if (((int )*(ch->ch_equeue + (unsigned long )head) & 8) != 0) {
    ch->ch_err_frame = ch->ch_err_frame + 1ULL;
  } else {
  }
  head = (unsigned int )((u16 )((unsigned int )head + 1U)) & 8191U;
  ch->ch_rxcount = ch->ch_rxcount + 1ULL;
  ldv_33962: ;
  goto ldv_33966;
  ldv_33960:
  ch->ch_r_head = (unsigned int )head & 8191U;
  ch->ch_e_head = (unsigned int )head & 8191U;
  spin_unlock_irqrestore(& ch->ch_lock, flags);
  return;
}
}
static void cls_copy_data_from_queue_to_uart(struct jsm_channel *ch )
{
  u16 tail ;
  int n ;
  int qlen ;
  u32 len_written ;
  struct circ_buf *circ ;
  int _min1 ;
  int _min2 ;
  {
  len_written = 0U;
  if ((unsigned long )ch == (unsigned long )((struct jsm_channel *)0)) {
    return;
  } else {
  }
  circ = & (ch->uart_port.state)->xmit;
  if (circ->head == circ->tail) {
    return;
  } else {
  }
  if ((ch->ch_flags & 2U) != 0U || (ch->ch_flags & 4096U) != 0U) {
    return;
  } else {
  }
  if ((ch->ch_flags & 3072U) == 0U) {
    return;
  } else {
  }
  n = 32;
  tail = (unsigned int )((u16 )circ->tail) & 4095U;
  qlen = (circ->head - circ->tail) & 4095;
  _min1 = n;
  _min2 = qlen;
  n = _min1 < _min2 ? _min1 : _min2;
  goto ldv_33979;
  ldv_33978:
  writeb((int )((unsigned char )*(circ->buf + (unsigned long )tail)), (void volatile *)(& (ch->ch_cls_uart)->txrx));
  tail = ((unsigned int )tail + 1U) & 4095U;
  n = n - 1;
  ch->ch_txcount = ch->ch_txcount + 1ULL;
  len_written = len_written + 1U;
  ldv_33979: ;
  if (n > 0) {
    goto ldv_33978;
  } else {
  }
  circ->tail = (int )tail & 4095;
  if ((u32 )ch->ch_t_tlevel < len_written) {
    ch->ch_flags = ch->ch_flags & 4294964223U;
  } else {
  }
  if (circ->head == circ->tail) {
    uart_write_wakeup(& ch->uart_port);
  } else {
  }
  return;
}
}
static void cls_parse_modem(struct jsm_channel *ch , u8 signals )
{
  u8 msignals ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  msignals = signals;
  if ((jsm_debug & 8192) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "cls_parse_modem";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_cls.c";
    descriptor.format = "neo_parse_modem: port: %d msignals: %x\n";
    descriptor.lineno = 516U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "neo_parse_modem: port: %d msignals: %x\n", ch->ch_portnum,
                        (int )msignals);
    } else {
    }
  } else {
  }
  msignals = (unsigned int )msignals & 248U;
  if (((int )msignals & 8) != 0) {
    uart_handle_dcd_change(& ch->uart_port, (unsigned int )msignals & 128U);
  } else {
  }
  if (((int )msignals & 2) != 0) {
    uart_handle_dcd_change(& ch->uart_port, (unsigned int )msignals & 16U);
  } else {
  }
  if ((int )((signed char )msignals) < 0) {
    ch->ch_mistat = (u8 )((unsigned int )ch->ch_mistat | 128U);
  } else {
    ch->ch_mistat = (unsigned int )ch->ch_mistat & 127U;
  }
  if (((int )msignals & 32) != 0) {
    ch->ch_mistat = (u8 )((unsigned int )ch->ch_mistat | 32U);
  } else {
    ch->ch_mistat = (unsigned int )ch->ch_mistat & 223U;
  }
  if (((int )msignals & 64) != 0) {
    ch->ch_mistat = (u8 )((unsigned int )ch->ch_mistat | 64U);
  } else {
    ch->ch_mistat = (unsigned int )ch->ch_mistat & 191U;
  }
  if (((int )msignals & 16) != 0) {
    ch->ch_mistat = (u8 )((unsigned int )ch->ch_mistat | 16U);
  } else {
    ch->ch_mistat = (unsigned int )ch->ch_mistat & 239U;
  }
  if ((jsm_debug & 8192) != 0) {
    descriptor___0.modname = "jsm";
    descriptor___0.function = "cls_parse_modem";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_cls.c";
    descriptor___0.format = "Port: %d DTR: %d RTS: %d CTS: %d DSR: %d RI: %d CD: %d\n";
    descriptor___0.lineno = 558U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                        "Port: %d DTR: %d RTS: %d CTS: %d DSR: %d RI: %d CD: %d\n",
                        ch->ch_portnum, ((int )ch->ch_mistat | (int )ch->ch_mostat) & 1,
                        (((int )ch->ch_mistat | (int )ch->ch_mostat) & 2) != 0, (((int )ch->ch_mistat | (int )ch->ch_mostat) & 16) != 0,
                        (((int )ch->ch_mistat | (int )ch->ch_mostat) & 32) != 0, (((int )ch->ch_mistat | (int )ch->ch_mostat) & 64) != 0,
                        (int )((signed char )((int )ch->ch_mistat | (int )ch->ch_mostat)) < 0);
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void cls_parse_isr(struct jsm_board *brd , uint port )
{
  struct jsm_channel *ch ;
  u8 isr ;
  unsigned long flags ;
  unsigned char tmp ;
  {
  isr = 0U;
  if (brd->nasync <= port) {
    return;
  } else {
  }
  ch = brd->channels[port];
  if ((unsigned long )ch == (unsigned long )((struct jsm_channel *)0)) {
    return;
  } else {
  }
  ldv_33997:
  isr = readb((void const volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  if ((int )isr & 1) {
    goto ldv_33996;
  } else {
  }
  if (((int )isr & 12) != 0) {
    cls_copy_data_from_uart_to_queue(ch);
    jsm_check_queue_flow_control(ch);
  } else {
  }
  if (((int )isr & 2) != 0) {
    ldv_spin_lock();
    ch->ch_flags = ch->ch_flags | 3072U;
    spin_unlock_irqrestore(& ch->ch_lock, flags);
    cls_copy_data_from_queue_to_uart(ch);
  } else {
  }
  tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->msr));
  cls_parse_modem(ch, (int )tmp);
  goto ldv_33997;
  ldv_33996: ;
  return;
}
}
static void cls_flush_uart_write(struct jsm_channel *ch )
{
  u8 tmp ;
  u8 i ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = 0U;
  i = 0U;
  if ((unsigned long )ch == (unsigned long )((struct jsm_channel *)0)) {
    return;
  } else {
  }
  writeb(5, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  i = 0U;
  goto ldv_34007;
  ldv_34006:
  tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  if (((int )tmp & 4) != 0) {
    if ((jsm_debug & 128) != 0) {
      descriptor.modname = "jsm";
      descriptor.function = "cls_flush_uart_write";
      descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_cls.c";
      descriptor.format = "Still flushing TX UART... i: %d\n";
      descriptor.lineno = 632U;
      descriptor.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ch->ch_bd)->pci_dev)->dev),
                          "Still flushing TX UART... i: %d\n", (int )i);
      } else {
      }
    } else {
    }
    __const_udelay(42950UL);
  } else {
    goto ldv_34005;
  }
  i = (u8 )((int )i + 1);
  ldv_34007: ;
  if ((unsigned int )i <= 9U) {
    goto ldv_34006;
  } else {
  }
  ldv_34005:
  ch->ch_flags = ch->ch_flags | 3072U;
  return;
}
}
static void cls_flush_uart_read(struct jsm_channel *ch )
{
  {
  if ((unsigned long )ch == (unsigned long )((struct jsm_channel *)0)) {
    return;
  } else {
  }
  __const_udelay(42950UL);
  return;
}
}
static void cls_send_start_character(struct jsm_channel *ch )
{
  {
  if ((unsigned long )ch == (unsigned long )((struct jsm_channel *)0)) {
    return;
  } else {
  }
  if ((unsigned int )ch->ch_startc != 0U) {
    ch->ch_xon_sends = ch->ch_xon_sends + 1ULL;
    writeb((int )ch->ch_startc, (void volatile *)(& (ch->ch_cls_uart)->txrx));
  } else {
  }
  return;
}
}
static void cls_send_stop_character(struct jsm_channel *ch )
{
  {
  if ((unsigned long )ch == (unsigned long )((struct jsm_channel *)0)) {
    return;
  } else {
  }
  if ((unsigned int )ch->ch_stopc != 0U) {
    ch->ch_xoff_sends = ch->ch_xoff_sends + 1ULL;
    writeb((int )ch->ch_stopc, (void volatile *)(& (ch->ch_cls_uart)->txrx));
  } else {
  }
  return;
}
}
static void cls_param(struct jsm_channel *ch )
{
  u8 lcr ;
  u8 uart_lcr ;
  u8 ier ;
  u32 baud ;
  int quot ;
  struct jsm_board *bd ;
  int i ;
  unsigned int cflag ;
  unsigned char tmp ;
  {
  lcr = 0U;
  uart_lcr = 0U;
  ier = 0U;
  baud = 9600U;
  quot = 0;
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct jsm_board *)0)) {
    return;
  } else {
  }
  if ((ch->ch_c_cflag & 4111U) == 0U) {
    ch->ch_r_head = 0U;
    ch->ch_r_tail = 0U;
    ch->ch_e_head = 0U;
    ch->ch_e_tail = 0U;
    cls_flush_uart_write(ch);
    cls_flush_uart_read(ch);
    ch->ch_flags = ch->ch_flags | 32768U;
    ch->ch_mostat = (unsigned int )ch->ch_mostat & 252U;
    cls_assert_modem_signals(ch);
    return;
  } else {
  }
  cflag = ((ch->uart_port.state)->port.tty)->termios.c_cflag & 4111U;
  baud = 9600U;
  i = 0;
  goto ldv_34032;
  ldv_34031: ;
  if (baud_rates[i].cflag == cflag) {
    baud = baud_rates[i].rate;
    goto ldv_34030;
  } else {
  }
  i = i + 1;
  ldv_34032: ;
  if ((unsigned int )i <= 18U) {
    goto ldv_34031;
  } else {
  }
  ldv_34030: ;
  if ((ch->ch_flags & 32768U) != 0U) {
    ch->ch_flags = ch->ch_flags & 4294934527U;
  } else {
  }
  if ((ch->ch_c_cflag & 256U) != 0U) {
    lcr = (u8 )((unsigned int )lcr | 8U);
  } else {
  }
  if ((ch->ch_c_cflag & 512U) == 0U) {
    lcr = (u8 )((unsigned int )lcr | 16U);
  } else {
  }
  if ((ch->ch_c_cflag & 1073741824U) != 0U) {
    lcr = (u8 )((unsigned int )lcr | 32U);
  } else {
  }
  if ((ch->ch_c_cflag & 64U) != 0U) {
    lcr = (u8 )((unsigned int )lcr | 4U);
  } else {
  }
  switch (ch->ch_c_cflag & 48U) {
  case 0U:
  lcr = lcr;
  goto ldv_34034;
  case 16U:
  lcr = (u8 )((unsigned int )lcr | 1U);
  goto ldv_34034;
  case 32U:
  lcr = (u8 )((unsigned int )lcr | 2U);
  goto ldv_34034;
  case 48U: ;
  default:
  lcr = (u8 )((unsigned int )lcr | 3U);
  goto ldv_34034;
  }
  ldv_34034:
  ier = readb((void const volatile *)(& (ch->ch_cls_uart)->ier));
  uart_lcr = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
  quot = (int )((ch->ch_bd)->bd_dividend / baud);
  if (quot != 0) {
    writeb(128, (void volatile *)(& (ch->ch_cls_uart)->lcr));
    writeb((int )((unsigned char )quot), (void volatile *)(& (ch->ch_cls_uart)->txrx));
    writeb((int )((unsigned char )(quot >> 8)), (void volatile *)(& (ch->ch_cls_uart)->ier));
    writeb((int )lcr, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  } else {
  }
  if ((int )uart_lcr != (int )lcr) {
    writeb((int )lcr, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  } else {
  }
  if ((ch->ch_c_cflag & 128U) != 0U) {
    ier = (u8 )((unsigned int )ier | 5U);
  } else {
  }
  ier = (u8 )((unsigned int )ier | 10U);
  writeb((int )ier, (void volatile *)(& (ch->ch_cls_uart)->ier));
  if ((int )ch->ch_c_cflag < 0) {
    cls_set_cts_flow_control(ch);
  } else
  if ((ch->ch_c_iflag & 1024U) != 0U) {
    if ((unsigned int )ch->ch_startc == 0U || (unsigned int )ch->ch_stopc == 0U) {
      cls_set_no_output_flow_control(ch);
    } else {
      cls_set_ixon_flow_control(ch);
    }
  } else {
    cls_set_no_output_flow_control(ch);
  }
  if ((int )ch->ch_c_cflag < 0) {
    cls_set_rts_flow_control(ch);
  } else
  if ((ch->ch_c_iflag & 4096U) != 0U) {
    if ((unsigned int )ch->ch_startc == 0U || (unsigned int )ch->ch_stopc == 0U) {
      cls_set_no_input_flow_control(ch);
    } else {
      cls_set_ixoff_flow_control(ch);
    }
  } else {
    cls_set_no_input_flow_control(ch);
  }
  cls_assert_modem_signals(ch);
  tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->msr));
  cls_parse_modem(ch, (int )tmp);
  return;
}
}
static irqreturn_t cls_intr(int irq , void *voidbrd )
{
  struct jsm_board *brd ;
  unsigned long lock_flags ;
  unsigned char uart_poll ;
  uint i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  brd = (struct jsm_board *)voidbrd;
  i = 0U;
  ldv_spin_lock();
  uart_poll = readb((void const volatile *)brd->re_map_membase + 64U);
  if ((jsm_debug & 32768) != 0) {
    descriptor.modname = "jsm";
    descriptor.function = "cls_intr";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_cls.c";
    descriptor.format = "%s:%d uart_poll: %x\n";
    descriptor.lineno = 847U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& (brd->pci_dev)->dev),
                        "%s:%d uart_poll: %x\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_cls.c",
                        847, (int )uart_poll);
    } else {
    }
  } else {
  }
  if ((unsigned int )uart_poll == 0U) {
    if ((jsm_debug & 32768) != 0) {
      descriptor___0.modname = "jsm";
      descriptor___0.function = "cls_intr";
      descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/12834/dscv_tempdir/dscv/ri/43_2a/drivers/tty/serial/jsm/jsm_cls.c";
      descriptor___0.format = "Kernel interrupted to me, but no pending interrupts...\n";
      descriptor___0.lineno = 851U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (brd->pci_dev)->dev),
                          "Kernel interrupted to me, but no pending interrupts...\n");
      } else {
      }
    } else {
    }
    spin_unlock_irqrestore(& brd->bd_intr_lock, lock_flags);
    return (0);
  } else {
  }
  i = 0U;
  goto ldv_34051;
  ldv_34050:
  cls_parse_isr(brd, i);
  i = i + 1U;
  ldv_34051: ;
  if (brd->nasync > i) {
    goto ldv_34050;
  } else {
  }
  spin_unlock_irqrestore(& brd->bd_intr_lock, lock_flags);
  return (1);
}
}
static void cls_uart_init(struct jsm_channel *ch )
{
  unsigned char lcrb ;
  unsigned char tmp ;
  unsigned char isr_fcr ;
  {
  tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
  lcrb = tmp;
  isr_fcr = 0U;
  writeb(0, (void volatile *)(& (ch->ch_cls_uart)->ier));
  writeb(191, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  isr_fcr = readb((void const volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  isr_fcr = (unsigned int )isr_fcr | 16U;
  writeb((int )isr_fcr, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb((int )lcrb, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  readb((void const volatile *)(& (ch->ch_cls_uart)->txrx));
  writeb(7, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  __const_udelay(42950UL);
  ch->ch_flags = ch->ch_flags | 3584U;
  readb((void const volatile *)(& (ch->ch_cls_uart)->lsr));
  readb((void const volatile *)(& (ch->ch_cls_uart)->msr));
  return;
}
}
static void cls_uart_off(struct jsm_channel *ch )
{
  {
  writeb(0, (void volatile *)(& (ch->ch_cls_uart)->ier));
  return;
}
}
static u32 cls_get_uart_bytes_left(struct jsm_channel *ch )
{
  u8 left ;
  u8 lsr ;
  unsigned char tmp ;
  {
  left = 0U;
  tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->lsr));
  lsr = tmp;
  if (((int )lsr & 64) == 0) {
    left = 1U;
  } else {
    ch->ch_flags = ch->ch_flags | 3072U;
    left = 0U;
  }
  return ((u32 )left);
}
}
static void cls_send_break(struct jsm_channel *ch )
{
  u8 temp ;
  unsigned char tmp ;
  {
  if ((ch->ch_flags & 4096U) == 0U) {
    tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
    temp = tmp;
    writeb((int )((unsigned int )temp | 64U), (void volatile *)(& (ch->ch_cls_uart)->lcr));
    ch->ch_flags = ch->ch_flags | 4096U;
  } else {
  }
  return;
}
}
static void cls_send_immediate_char(struct jsm_channel *ch , unsigned char c )
{
  {
  writeb((int )c, (void volatile *)(& (ch->ch_cls_uart)->txrx));
  return;
}
}
struct board_ops jsm_cls_ops =
     {& cls_intr, & cls_uart_init, & cls_uart_off, & cls_param, & cls_assert_modem_signals,
    & cls_flush_uart_write, & cls_flush_uart_read, & cls_disable_receiver, & cls_enable_receiver,
    & cls_send_break, & cls_clear_break, & cls_send_start_character, & cls_send_stop_character,
    & cls_copy_data_from_queue_to_uart, & cls_get_uart_bytes_left, & cls_send_immediate_char};
extern int ldv_probe_1(void) ;
extern int ldv_release_1(void) ;
void ldv_initialize_board_ops_1(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(768UL);
  jsm_cls_ops_group0 = (struct jsm_channel *)tmp;
  return;
}
}
void ldv_main_exported_1(void)
{
  void *ldvarg2 ;
  void *tmp ;
  unsigned char ldvarg3 ;
  int ldvarg1 ;
  int tmp___0 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg2 = tmp;
  ldv_memset((void *)(& ldvarg3), 0, 1UL);
  ldv_memset((void *)(& ldvarg1), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_1 == 1) {
    cls_uart_off(jsm_cls_ops_group0);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    cls_uart_off(jsm_cls_ops_group0);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_34089;
  case 1: ;
  if (ldv_state_variable_1 == 1) {
    cls_disable_receiver(jsm_cls_ops_group0);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    cls_disable_receiver(jsm_cls_ops_group0);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_34089;
  case 2: ;
  if (ldv_state_variable_1 == 1) {
    cls_send_start_character(jsm_cls_ops_group0);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    cls_send_start_character(jsm_cls_ops_group0);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_34089;
  case 3: ;
  if (ldv_state_variable_1 == 1) {
    cls_send_immediate_char(jsm_cls_ops_group0, (int )ldvarg3);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    cls_send_immediate_char(jsm_cls_ops_group0, (int )ldvarg3);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_34089;
  case 4: ;
  if (ldv_state_variable_1 == 1) {
    cls_send_break(jsm_cls_ops_group0);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    cls_send_break(jsm_cls_ops_group0);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_34089;
  case 5: ;
  if (ldv_state_variable_1 == 2) {
    cls_flush_uart_write(jsm_cls_ops_group0);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_34089;
  case 6: ;
  if (ldv_state_variable_1 == 2) {
    cls_flush_uart_read(jsm_cls_ops_group0);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_34089;
  case 7: ;
  if (ldv_state_variable_1 == 1) {
    cls_enable_receiver(jsm_cls_ops_group0);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    cls_enable_receiver(jsm_cls_ops_group0);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_34089;
  case 8: ;
  if (ldv_state_variable_1 == 1) {
    cls_param(jsm_cls_ops_group0);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    cls_param(jsm_cls_ops_group0);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_34089;
  case 9: ;
  if (ldv_state_variable_1 == 1) {
    cls_copy_data_from_queue_to_uart(jsm_cls_ops_group0);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    cls_copy_data_from_queue_to_uart(jsm_cls_ops_group0);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_34089;
  case 10: ;
  if (ldv_state_variable_1 == 1) {
    cls_intr(ldvarg1, ldvarg2);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    cls_intr(ldvarg1, ldvarg2);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_34089;
  case 11: ;
  if (ldv_state_variable_1 == 1) {
    cls_clear_break(jsm_cls_ops_group0);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    cls_clear_break(jsm_cls_ops_group0);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_34089;
  case 12: ;
  if (ldv_state_variable_1 == 1) {
    cls_send_stop_character(jsm_cls_ops_group0);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    cls_send_stop_character(jsm_cls_ops_group0);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_34089;
  case 13: ;
  if (ldv_state_variable_1 == 1) {
    cls_assert_modem_signals(jsm_cls_ops_group0);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    cls_assert_modem_signals(jsm_cls_ops_group0);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_34089;
  case 14: ;
  if (ldv_state_variable_1 == 1) {
    cls_get_uart_bytes_left(jsm_cls_ops_group0);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    cls_get_uart_bytes_left(jsm_cls_ops_group0);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_34089;
  case 15: ;
  if (ldv_state_variable_1 == 1) {
    cls_uart_init(jsm_cls_ops_group0);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    cls_uart_init(jsm_cls_ops_group0);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_34089;
  case 16: ;
  if (ldv_state_variable_1 == 2) {
    ldv_release_1();
    ldv_state_variable_1 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_34089;
  case 17: ;
  if (ldv_state_variable_1 == 1) {
    ldv_probe_1();
    ldv_state_variable_1 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_34089;
  default:
  ldv_stop();
  }
  ldv_34089: ;
  return;
}
}
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
bool ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 2012UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(2012L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(2012UL - (unsigned long )ptr));
}
}
bool ldv_is_err_or_null(void const *ptr )
{
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    tmp = ldv_is_err(ptr);
    if ((int )tmp) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((bool )tmp___0);
}
}
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin != 0 && (flags & 16U) != 0U) {
    ldv_error();
  } else {
  }
  return;
}
}
extern struct page *ldv_some_page(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{
  struct page *tmp ;
  {
  if (ldv_spin != 0 && (flags & 16U) != 0U) {
    ldv_error();
  } else {
  }
  tmp = ldv_some_page();
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin != 0) {
    ldv_error();
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
{
  int is_lock ;
  {
  is_lock = ldv_undef_int();
  if (is_lock != 0) {
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
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_first_zero_bit(const unsigned long *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
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
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_probe_1() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_2() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_3() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_1() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_2() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_3() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_shutdown_4() {
  return __VERIFIER_nondet_int();
}
struct page *ldv_some_page() {
  return ldv_malloc(sizeof(struct page));
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_5() {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
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
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int tty_buffer_request_room(struct tty_port *arg0, size_t arg1) {
  return __VERIFIER_nondet_int();
}
void tty_flip_buffer_push(struct tty_port *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_insert_flip_string_fixed_flag(struct tty_port *arg0, const unsigned char *arg1, char arg2, size_t arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int tty_insert_flip_string_flags(struct tty_port *arg0, const unsigned char *arg1, const char *arg2, size_t arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int uart_add_one_port(struct uart_driver *arg0, struct uart_port *arg1) {
  return __VERIFIER_nondet_int();
}
void uart_handle_cts_change(struct uart_port *arg0, unsigned int arg1) {
  return;
}
void uart_handle_dcd_change(struct uart_port *arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int uart_register_driver(struct uart_driver *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int uart_remove_one_port(struct uart_driver *arg0, struct uart_port *arg1) {
  return __VERIFIER_nondet_int();
}
void uart_unregister_driver(struct uart_driver *arg0) {
  return;
}
void uart_write_wakeup(struct uart_port *arg0) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
