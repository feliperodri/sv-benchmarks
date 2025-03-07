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
typedef __kernel_long_t __kernel_suseconds_t;
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
typedef __u8 uint8_t;
typedef __u16 uint16_t;
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
struct device;
struct file_operations;
struct completion;
struct lockdep_map;
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
union __anonunion____missing_field_name_15 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_15 __annonCompField7 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
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
struct __anonstruct____missing_field_name_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_24 {
   struct __anonstruct____missing_field_name_25 __annonCompField11 ;
   struct __anonstruct____missing_field_name_26 __annonCompField12 ;
};
union __anonunion____missing_field_name_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct fxregs_state {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_24 __annonCompField13 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_27 __annonCompField14 ;
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
struct __anonstruct____missing_field_name_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_31 __annonCompField16 ;
};
struct spinlock {
   union __anonunion____missing_field_name_30 __annonCompField17 ;
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
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_34 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_35 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_36 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_33 {
   struct __anonstruct_futex_34 futex ;
   struct __anonstruct_nanosleep_35 nanosleep ;
   struct __anonstruct_poll_36 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_33 __annonCompField18 ;
};
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
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct notifier_block;
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
struct vm_area_struct;
struct __anonstruct_nodemask_t_48 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_48 nodemask_t;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
   struct lockdep_map dep_map ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
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
struct __anonstruct_mm_context_t_113 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_113 mm_context_t;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct kmem_cache;
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct inode;
struct dentry;
struct user_namespace;
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
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
struct __anonstruct____missing_field_name_146 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_147 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_145 {
   struct __anonstruct____missing_field_name_146 __annonCompField33 ;
   struct __anonstruct____missing_field_name_147 __annonCompField34 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_145 __annonCompField35 ;
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
union __anonunion____missing_field_name_148 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_150 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_154 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_153 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_154 __annonCompField38 ;
   int units ;
};
struct __anonstruct____missing_field_name_152 {
   union __anonunion____missing_field_name_153 __annonCompField39 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_151 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_152 __annonCompField40 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_149 {
   union __anonunion____missing_field_name_150 __annonCompField37 ;
   union __anonunion____missing_field_name_151 __annonCompField41 ;
};
struct __anonstruct____missing_field_name_156 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_157 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_155 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_156 __annonCompField43 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_157 __annonCompField44 ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_158 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_148 __annonCompField36 ;
   struct __anonstruct____missing_field_name_149 __annonCompField42 ;
   union __anonunion____missing_field_name_155 __annonCompField45 ;
   union __anonunion____missing_field_name_158 __annonCompField46 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_159 {
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
   struct __anonstruct_shared_159 shared ;
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
typedef unsigned long cputime_t;
struct __anonstruct_kuid_t_161 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_161 kuid_t;
struct __anonstruct_kgid_t_162 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_162 kgid_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct user_struct;
struct sysv_shm {
   struct list_head shm_clist ;
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
struct __anonstruct__addr_bnd_170 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_169 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_170 _addr_bnd ;
};
struct __anonstruct__sigpoll_171 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_172 {
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
   struct __anonstruct__sigpoll_171 _sigpoll ;
   struct __anonstruct__sigsys_172 _sigsys ;
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
struct cred;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_179 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_180 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_182 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_181 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_182 __annonCompField49 ;
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
union __anonunion____missing_field_name_184 {
   union __anonunion_payload_185 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_179 __annonCompField47 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_180 __annonCompField48 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_181 __annonCompField50 ;
   union __anonunion_type_data_183 type_data ;
   union __anonunion____missing_field_name_184 __annonCompField51 ;
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
union __anonunion____missing_field_name_186 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_186 __annonCompField52 ;
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
struct kernfs_node;
struct kernfs_ops;
struct kernfs_open_file;
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
struct kernfs_root;
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
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
   unsigned long task_state_change ;
   int pagefault_disabled ;
};
struct ttm_mem_reg;
struct drm_connector;
struct ttm_tt;
struct ttm_bo_device;
struct drm_gem_object;
struct fb_info;
struct drm_framebuffer;
struct drm_device;
struct drm_display_mode;
struct drm_file;
struct fence;
struct drm_encoder;
struct drm_crtc;
struct ttm_buffer_object;
struct drm_minor;
struct fb_var_screeninfo;
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
struct iattr;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
   struct kernfs_node *notify_next ;
};
union __anonunion____missing_field_name_209 {
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
   union __anonunion____missing_field_name_209 __annonCompField56 ;
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
union __anonunion____missing_field_name_210 {
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
   union __anonunion____missing_field_name_210 __annonCompField57 ;
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
   bool klp_alive ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
enum chipset_type {
    NOT_SUPPORTED = 0,
    SUPPORTED = 1
} ;
struct agp_version {
   u16 major ;
   u16 minor ;
};
struct agp_kern_info {
   struct agp_version version ;
   struct pci_dev *device ;
   enum chipset_type chipset ;
   unsigned long mode ;
   unsigned long aper_base ;
   size_t aper_size ;
   int max_memory ;
   int current_memory ;
   bool cant_use_aperture ;
   unsigned long page_mask ;
   struct vm_operations_struct const *vm_ops ;
};
struct agp_bridge_data;
struct scatterlist;
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
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
struct of_device_id;
struct acpi_device_id;
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
struct vfsmount;
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_220 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_219 {
   struct __anonstruct____missing_field_name_220 __annonCompField58 ;
};
struct lockref {
   union __anonunion____missing_field_name_219 __annonCompField59 ;
};
struct __anonstruct____missing_field_name_222 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_221 {
   struct __anonstruct____missing_field_name_222 __annonCompField60 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_221 __annonCompField61 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_223 {
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
   union __anonunion_d_u_223 d_u ;
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
struct __anonstruct____missing_field_name_227 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_226 {
   struct __anonstruct____missing_field_name_227 __annonCompField62 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_226 __annonCompField63 ;
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
struct __anonstruct_kprojid_t_231 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_231 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_232 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_232 __annonCompField65 ;
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
union __anonunion____missing_field_name_235 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_236 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
union __anonunion____missing_field_name_237 {
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
   union __anonunion____missing_field_name_235 __annonCompField66 ;
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
   union __anonunion____missing_field_name_236 __annonCompField67 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_237 __annonCompField68 ;
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
union __anonunion_f_u_238 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_238 f_u ;
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
struct __anonstruct_afs_240 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_239 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_240 afs ;
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
   union __anonunion_fl_u_239 fl_u ;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct proc_dir_entry;
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
union __anonunion____missing_field_name_252 {
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
   union __anonunion____missing_field_name_252 __annonCompField76 ;
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
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   bool id_auto ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   char *driver_override ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
typedef unsigned int drm_magic_t;
struct drm_clip_rect {
   unsigned short x1 ;
   unsigned short y1 ;
   unsigned short x2 ;
   unsigned short y2 ;
};
struct drm_hw_lock {
   unsigned int volatile lock ;
   char padding[60U] ;
};
struct drm_mode_fb_cmd2 {
   __u32 fb_id ;
   __u32 width ;
   __u32 height ;
   __u32 pixel_format ;
   __u32 flags ;
   __u32 handles[4U] ;
   __u32 pitches[4U] ;
   __u32 offsets[4U] ;
   __u64 modifier[4U] ;
};
struct drm_mode_create_dumb {
   uint32_t height ;
   uint32_t width ;
   uint32_t bpp ;
   uint32_t flags ;
   uint32_t handle ;
   uint32_t pitch ;
   uint64_t size ;
};
struct drm_event {
   __u32 type ;
   __u32 length ;
};
struct drm_event_vblank {
   struct drm_event base ;
   __u64 user_data ;
   __u32 tv_sec ;
   __u32 tv_usec ;
   __u32 sequence ;
   __u32 reserved ;
};
struct drm_agp_head {
   struct agp_kern_info agp_info ;
   struct list_head memory ;
   unsigned long mode ;
   struct agp_bridge_data *bridge ;
   int enabled ;
   int acquired ;
   unsigned long base ;
   int agp_mtrr ;
   int cant_use_aperture ;
   unsigned long page_mask ;
};
enum fwnode_type {
    FWNODE_INVALID = 0,
    FWNODE_OF = 1,
    FWNODE_ACPI = 2,
    FWNODE_PDATA = 3
} ;
struct fwnode_handle {
   enum fwnode_type type ;
   struct fwnode_handle *secondary ;
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
   struct fwnode_handle fwnode ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct kobject kobj ;
   unsigned long _flags ;
   void *data ;
};
struct fb_fix_screeninfo {
   char id[16U] ;
   unsigned long smem_start ;
   __u32 smem_len ;
   __u32 type ;
   __u32 type_aux ;
   __u32 visual ;
   __u16 xpanstep ;
   __u16 ypanstep ;
   __u16 ywrapstep ;
   __u32 line_length ;
   unsigned long mmio_start ;
   __u32 mmio_len ;
   __u32 accel ;
   __u16 capabilities ;
   __u16 reserved[2U] ;
};
struct fb_bitfield {
   __u32 offset ;
   __u32 length ;
   __u32 msb_right ;
};
struct fb_var_screeninfo {
   __u32 xres ;
   __u32 yres ;
   __u32 xres_virtual ;
   __u32 yres_virtual ;
   __u32 xoffset ;
   __u32 yoffset ;
   __u32 bits_per_pixel ;
   __u32 grayscale ;
   struct fb_bitfield red ;
   struct fb_bitfield green ;
   struct fb_bitfield blue ;
   struct fb_bitfield transp ;
   __u32 nonstd ;
   __u32 activate ;
   __u32 height ;
   __u32 width ;
   __u32 accel_flags ;
   __u32 pixclock ;
   __u32 left_margin ;
   __u32 right_margin ;
   __u32 upper_margin ;
   __u32 lower_margin ;
   __u32 hsync_len ;
   __u32 vsync_len ;
   __u32 sync ;
   __u32 vmode ;
   __u32 rotate ;
   __u32 colorspace ;
   __u32 reserved[4U] ;
};
struct fb_cmap {
   __u32 start ;
   __u32 len ;
   __u16 *red ;
   __u16 *green ;
   __u16 *blue ;
   __u16 *transp ;
};
struct fb_copyarea {
   __u32 dx ;
   __u32 dy ;
   __u32 width ;
   __u32 height ;
   __u32 sx ;
   __u32 sy ;
};
struct fb_fillrect {
   __u32 dx ;
   __u32 dy ;
   __u32 width ;
   __u32 height ;
   __u32 color ;
   __u32 rop ;
};
struct fb_image {
   __u32 dx ;
   __u32 dy ;
   __u32 width ;
   __u32 height ;
   __u32 fg_color ;
   __u32 bg_color ;
   __u8 depth ;
   char const *data ;
   struct fb_cmap cmap ;
};
struct fbcurpos {
   __u16 x ;
   __u16 y ;
};
struct fb_cursor {
   __u16 set ;
   __u16 enable ;
   __u16 rop ;
   char const *mask ;
   struct fbcurpos hot ;
   struct fb_image image ;
};
enum backlight_type {
    BACKLIGHT_RAW = 1,
    BACKLIGHT_PLATFORM = 2,
    BACKLIGHT_FIRMWARE = 3,
    BACKLIGHT_TYPE_MAX = 4
} ;
struct backlight_device;
struct backlight_ops {
   unsigned int options ;
   int (*update_status)(struct backlight_device * ) ;
   int (*get_brightness)(struct backlight_device * ) ;
   int (*check_fb)(struct backlight_device * , struct fb_info * ) ;
};
struct backlight_properties {
   int brightness ;
   int max_brightness ;
   int power ;
   int fb_blank ;
   enum backlight_type type ;
   unsigned int state ;
};
struct backlight_device {
   struct backlight_properties props ;
   struct mutex update_lock ;
   struct mutex ops_lock ;
   struct backlight_ops const *ops ;
   struct notifier_block fb_notif ;
   struct list_head entry ;
   struct device dev ;
   bool fb_bl_on[32U] ;
   int use_count ;
};
struct fb_chroma {
   __u32 redx ;
   __u32 greenx ;
   __u32 bluex ;
   __u32 whitex ;
   __u32 redy ;
   __u32 greeny ;
   __u32 bluey ;
   __u32 whitey ;
};
struct fb_videomode;
struct fb_monspecs {
   struct fb_chroma chroma ;
   struct fb_videomode *modedb ;
   __u8 manufacturer[4U] ;
   __u8 monitor[14U] ;
   __u8 serial_no[14U] ;
   __u8 ascii[14U] ;
   __u32 modedb_len ;
   __u32 model ;
   __u32 serial ;
   __u32 year ;
   __u32 week ;
   __u32 hfmin ;
   __u32 hfmax ;
   __u32 dclkmin ;
   __u32 dclkmax ;
   __u16 input ;
   __u16 dpms ;
   __u16 signal ;
   __u16 vfmin ;
   __u16 vfmax ;
   __u16 gamma ;
   unsigned char gtf : 1 ;
   __u16 misc ;
   __u8 version ;
   __u8 revision ;
   __u8 max_x ;
   __u8 max_y ;
};
struct fb_blit_caps {
   u32 x ;
   u32 y ;
   u32 len ;
   u32 flags ;
};
struct fb_pixmap {
   u8 *addr ;
   u32 size ;
   u32 offset ;
   u32 buf_align ;
   u32 scan_align ;
   u32 access_align ;
   u32 flags ;
   u32 blit_x ;
   u32 blit_y ;
   void (*writeio)(struct fb_info * , void * , void * , unsigned int ) ;
   void (*readio)(struct fb_info * , void * , void * , unsigned int ) ;
};
struct fb_deferred_io {
   unsigned long delay ;
   struct mutex lock ;
   struct list_head pagelist ;
   void (*first_io)(struct fb_info * ) ;
   void (*deferred_io)(struct fb_info * , struct list_head * ) ;
};
struct fb_ops {
   struct module *owner ;
   int (*fb_open)(struct fb_info * , int ) ;
   int (*fb_release)(struct fb_info * , int ) ;
   ssize_t (*fb_read)(struct fb_info * , char * , size_t , loff_t * ) ;
   ssize_t (*fb_write)(struct fb_info * , char const * , size_t , loff_t * ) ;
   int (*fb_check_var)(struct fb_var_screeninfo * , struct fb_info * ) ;
   int (*fb_set_par)(struct fb_info * ) ;
   int (*fb_setcolreg)(unsigned int , unsigned int , unsigned int , unsigned int ,
                       unsigned int , struct fb_info * ) ;
   int (*fb_setcmap)(struct fb_cmap * , struct fb_info * ) ;
   int (*fb_blank)(int , struct fb_info * ) ;
   int (*fb_pan_display)(struct fb_var_screeninfo * , struct fb_info * ) ;
   void (*fb_fillrect)(struct fb_info * , struct fb_fillrect const * ) ;
   void (*fb_copyarea)(struct fb_info * , struct fb_copyarea const * ) ;
   void (*fb_imageblit)(struct fb_info * , struct fb_image const * ) ;
   int (*fb_cursor)(struct fb_info * , struct fb_cursor * ) ;
   void (*fb_rotate)(struct fb_info * , int ) ;
   int (*fb_sync)(struct fb_info * ) ;
   int (*fb_ioctl)(struct fb_info * , unsigned int , unsigned long ) ;
   int (*fb_compat_ioctl)(struct fb_info * , unsigned int , unsigned long ) ;
   int (*fb_mmap)(struct fb_info * , struct vm_area_struct * ) ;
   void (*fb_get_caps)(struct fb_info * , struct fb_blit_caps * , struct fb_var_screeninfo * ) ;
   void (*fb_destroy)(struct fb_info * ) ;
   int (*fb_debug_enter)(struct fb_info * ) ;
   int (*fb_debug_leave)(struct fb_info * ) ;
};
struct fb_tilemap {
   __u32 width ;
   __u32 height ;
   __u32 depth ;
   __u32 length ;
   __u8 const *data ;
};
struct fb_tilerect {
   __u32 sx ;
   __u32 sy ;
   __u32 width ;
   __u32 height ;
   __u32 index ;
   __u32 fg ;
   __u32 bg ;
   __u32 rop ;
};
struct fb_tilearea {
   __u32 sx ;
   __u32 sy ;
   __u32 dx ;
   __u32 dy ;
   __u32 width ;
   __u32 height ;
};
struct fb_tileblit {
   __u32 sx ;
   __u32 sy ;
   __u32 width ;
   __u32 height ;
   __u32 fg ;
   __u32 bg ;
   __u32 length ;
   __u32 *indices ;
};
struct fb_tilecursor {
   __u32 sx ;
   __u32 sy ;
   __u32 mode ;
   __u32 shape ;
   __u32 fg ;
   __u32 bg ;
};
struct fb_tile_ops {
   void (*fb_settile)(struct fb_info * , struct fb_tilemap * ) ;
   void (*fb_tilecopy)(struct fb_info * , struct fb_tilearea * ) ;
   void (*fb_tilefill)(struct fb_info * , struct fb_tilerect * ) ;
   void (*fb_tileblit)(struct fb_info * , struct fb_tileblit * ) ;
   void (*fb_tilecursor)(struct fb_info * , struct fb_tilecursor * ) ;
   int (*fb_get_tilemax)(struct fb_info * ) ;
};
struct aperture {
   resource_size_t base ;
   resource_size_t size ;
};
struct apertures_struct {
   unsigned int count ;
   struct aperture ranges[0U] ;
};
struct fb_info {
   atomic_t count ;
   int node ;
   int flags ;
   struct mutex lock ;
   struct mutex mm_lock ;
   struct fb_var_screeninfo var ;
   struct fb_fix_screeninfo fix ;
   struct fb_monspecs monspecs ;
   struct work_struct queue ;
   struct fb_pixmap pixmap ;
   struct fb_pixmap sprite ;
   struct fb_cmap cmap ;
   struct list_head modelist ;
   struct fb_videomode *mode ;
   struct backlight_device *bl_dev ;
   struct mutex bl_curve_mutex ;
   u8 bl_curve[128U] ;
   struct delayed_work deferred_work ;
   struct fb_deferred_io *fbdefio ;
   struct fb_ops *fbops ;
   struct device *device ;
   struct device *dev ;
   int class_flag ;
   struct fb_tile_ops *tileops ;
   char *screen_base ;
   unsigned long screen_size ;
   void *pseudo_palette ;
   u32 state ;
   void *fbcon_par ;
   void *par ;
   struct apertures_struct *apertures ;
   bool skip_vt_switch ;
};
struct fb_videomode {
   char const *name ;
   u32 refresh ;
   u32 xres ;
   u32 yres ;
   u32 pixclock ;
   u32 left_margin ;
   u32 right_margin ;
   u32 upper_margin ;
   u32 lower_margin ;
   u32 hsync_len ;
   u32 vsync_len ;
   u32 sync ;
   u32 vmode ;
   u32 flag ;
};
enum hdmi_picture_aspect {
    HDMI_PICTURE_ASPECT_NONE = 0,
    HDMI_PICTURE_ASPECT_4_3 = 1,
    HDMI_PICTURE_ASPECT_16_9 = 2,
    HDMI_PICTURE_ASPECT_RESERVED = 3
} ;
struct ww_class {
   atomic_long_t stamp ;
   struct lock_class_key acquire_key ;
   struct lock_class_key mutex_key ;
   char const *acquire_name ;
   char const *mutex_name ;
};
struct ww_mutex;
struct ww_acquire_ctx {
   struct task_struct *task ;
   unsigned long stamp ;
   unsigned int acquired ;
   unsigned int done_acquire ;
   struct ww_class *ww_class ;
   struct ww_mutex *contending_lock ;
   struct lockdep_map dep_map ;
   unsigned int deadlock_inject_interval ;
   unsigned int deadlock_inject_countdown ;
};
struct ww_mutex {
   struct mutex base ;
   struct ww_acquire_ctx *ctx ;
   struct ww_class *ww_class ;
};
struct drm_modeset_lock;
struct drm_modeset_acquire_ctx {
   struct ww_acquire_ctx ww_ctx ;
   struct drm_modeset_lock *contended ;
   struct list_head locked ;
   bool trylock_only ;
};
struct drm_modeset_lock {
   struct ww_mutex mutex ;
   struct list_head head ;
};
struct drm_plane;
struct drm_mode_set;
struct drm_object_properties;
struct drm_mode_object {
   uint32_t id ;
   uint32_t type ;
   struct drm_object_properties *properties ;
};
struct drm_property;
struct drm_object_properties {
   int count ;
   int atomic_count ;
   struct drm_property *properties[24U] ;
   uint64_t values[24U] ;
};
enum drm_connector_force {
    DRM_FORCE_UNSPECIFIED = 0,
    DRM_FORCE_OFF = 1,
    DRM_FORCE_ON = 2,
    DRM_FORCE_ON_DIGITAL = 3
} ;
enum drm_mode_status {
    MODE_OK = 0,
    MODE_HSYNC = 1,
    MODE_VSYNC = 2,
    MODE_H_ILLEGAL = 3,
    MODE_V_ILLEGAL = 4,
    MODE_BAD_WIDTH = 5,
    MODE_NOMODE = 6,
    MODE_NO_INTERLACE = 7,
    MODE_NO_DBLESCAN = 8,
    MODE_NO_VSCAN = 9,
    MODE_MEM = 10,
    MODE_VIRTUAL_X = 11,
    MODE_VIRTUAL_Y = 12,
    MODE_MEM_VIRT = 13,
    MODE_NOCLOCK = 14,
    MODE_CLOCK_HIGH = 15,
    MODE_CLOCK_LOW = 16,
    MODE_CLOCK_RANGE = 17,
    MODE_BAD_HVALUE = 18,
    MODE_BAD_VVALUE = 19,
    MODE_BAD_VSCAN = 20,
    MODE_HSYNC_NARROW = 21,
    MODE_HSYNC_WIDE = 22,
    MODE_HBLANK_NARROW = 23,
    MODE_HBLANK_WIDE = 24,
    MODE_VSYNC_NARROW = 25,
    MODE_VSYNC_WIDE = 26,
    MODE_VBLANK_NARROW = 27,
    MODE_VBLANK_WIDE = 28,
    MODE_PANEL = 29,
    MODE_INTERLACE_WIDTH = 30,
    MODE_ONE_WIDTH = 31,
    MODE_ONE_HEIGHT = 32,
    MODE_ONE_SIZE = 33,
    MODE_NO_REDUCED = 34,
    MODE_NO_STEREO = 35,
    MODE_UNVERIFIED = -3,
    MODE_BAD = -2,
    MODE_ERROR = -1
} ;
struct drm_display_mode {
   struct list_head head ;
   struct drm_mode_object base ;
   char name[32U] ;
   enum drm_mode_status status ;
   unsigned int type ;
   int clock ;
   int hdisplay ;
   int hsync_start ;
   int hsync_end ;
   int htotal ;
   int hskew ;
   int vdisplay ;
   int vsync_start ;
   int vsync_end ;
   int vtotal ;
   int vscan ;
   unsigned int flags ;
   int width_mm ;
   int height_mm ;
   int crtc_clock ;
   int crtc_hdisplay ;
   int crtc_hblank_start ;
   int crtc_hblank_end ;
   int crtc_hsync_start ;
   int crtc_hsync_end ;
   int crtc_htotal ;
   int crtc_hskew ;
   int crtc_vdisplay ;
   int crtc_vblank_start ;
   int crtc_vblank_end ;
   int crtc_vsync_start ;
   int crtc_vsync_end ;
   int crtc_vtotal ;
   int *private ;
   int private_flags ;
   int vrefresh ;
   int hsync ;
   enum hdmi_picture_aspect picture_aspect_ratio ;
};
struct drm_cmdline_mode {
   bool specified ;
   bool refresh_specified ;
   bool bpp_specified ;
   int xres ;
   int yres ;
   int bpp ;
   int refresh ;
   bool rb ;
   bool interlace ;
   bool cvt ;
   bool margins ;
   enum drm_connector_force force ;
};
enum drm_connector_status {
    connector_status_connected = 1,
    connector_status_disconnected = 2,
    connector_status_unknown = 3
} ;
enum subpixel_order {
    SubPixelUnknown = 0,
    SubPixelHorizontalRGB = 1,
    SubPixelHorizontalBGR = 2,
    SubPixelVerticalRGB = 3,
    SubPixelVerticalBGR = 4,
    SubPixelNone = 5
} ;
struct drm_display_info {
   char name[32U] ;
   unsigned int width_mm ;
   unsigned int height_mm ;
   unsigned int min_vfreq ;
   unsigned int max_vfreq ;
   unsigned int min_hfreq ;
   unsigned int max_hfreq ;
   unsigned int pixel_clock ;
   unsigned int bpc ;
   enum subpixel_order subpixel_order ;
   u32 color_formats ;
   u32 const *bus_formats ;
   unsigned int num_bus_formats ;
   u8 edid_hdmi_dc_modes ;
   u8 cea_rev ;
};
struct drm_tile_group {
   struct kref refcount ;
   struct drm_device *dev ;
   int id ;
   u8 group_data[8U] ;
};
struct drm_framebuffer_funcs {
   void (*destroy)(struct drm_framebuffer * ) ;
   int (*create_handle)(struct drm_framebuffer * , struct drm_file * , unsigned int * ) ;
   int (*dirty)(struct drm_framebuffer * , struct drm_file * , unsigned int , unsigned int ,
                struct drm_clip_rect * , unsigned int ) ;
};
struct drm_framebuffer {
   struct drm_device *dev ;
   struct kref refcount ;
   struct list_head head ;
   struct drm_mode_object base ;
   struct drm_framebuffer_funcs const *funcs ;
   unsigned int pitches[4U] ;
   unsigned int offsets[4U] ;
   uint64_t modifier[4U] ;
   unsigned int width ;
   unsigned int height ;
   unsigned int depth ;
   int bits_per_pixel ;
   int flags ;
   uint32_t pixel_format ;
   struct list_head filp_head ;
   void *helper_private ;
};
struct drm_property_blob {
   struct drm_mode_object base ;
   struct drm_device *dev ;
   struct kref refcount ;
   struct list_head head_global ;
   struct list_head head_file ;
   size_t length ;
   unsigned char data[] ;
};
struct drm_property {
   struct list_head head ;
   struct drm_mode_object base ;
   uint32_t flags ;
   char name[32U] ;
   uint32_t num_values ;
   uint64_t *values ;
   struct drm_device *dev ;
   struct list_head enum_list ;
};
struct drm_pending_vblank_event;
struct drm_bridge;
struct drm_atomic_state;
struct drm_crtc_state {
   struct drm_crtc *crtc ;
   bool enable ;
   bool active ;
   bool planes_changed ;
   bool mode_changed ;
   bool active_changed ;
   u32 plane_mask ;
   u32 last_vblank_count ;
   struct drm_display_mode adjusted_mode ;
   struct drm_display_mode mode ;
   struct drm_property_blob *mode_blob ;
   struct drm_pending_vblank_event *event ;
   struct drm_atomic_state *state ;
};
struct drm_crtc_funcs {
   void (*save)(struct drm_crtc * ) ;
   void (*restore)(struct drm_crtc * ) ;
   void (*reset)(struct drm_crtc * ) ;
   int (*cursor_set)(struct drm_crtc * , struct drm_file * , uint32_t , uint32_t ,
                     uint32_t ) ;
   int (*cursor_set2)(struct drm_crtc * , struct drm_file * , uint32_t , uint32_t ,
                      uint32_t , int32_t , int32_t ) ;
   int (*cursor_move)(struct drm_crtc * , int , int ) ;
   void (*gamma_set)(struct drm_crtc * , u16 * , u16 * , u16 * , uint32_t , uint32_t ) ;
   void (*destroy)(struct drm_crtc * ) ;
   int (*set_config)(struct drm_mode_set * ) ;
   int (*page_flip)(struct drm_crtc * , struct drm_framebuffer * , struct drm_pending_vblank_event * ,
                    uint32_t ) ;
   int (*set_property)(struct drm_crtc * , struct drm_property * , uint64_t ) ;
   struct drm_crtc_state *(*atomic_duplicate_state)(struct drm_crtc * ) ;
   void (*atomic_destroy_state)(struct drm_crtc * , struct drm_crtc_state * ) ;
   int (*atomic_set_property)(struct drm_crtc * , struct drm_crtc_state * , struct drm_property * ,
                              uint64_t ) ;
   int (*atomic_get_property)(struct drm_crtc * , struct drm_crtc_state const * ,
                              struct drm_property * , uint64_t * ) ;
};
struct drm_crtc {
   struct drm_device *dev ;
   struct device_node *port ;
   struct list_head head ;
   struct drm_modeset_lock mutex ;
   struct drm_mode_object base ;
   struct drm_plane *primary ;
   struct drm_plane *cursor ;
   int cursor_x ;
   int cursor_y ;
   bool enabled ;
   struct drm_display_mode mode ;
   struct drm_display_mode hwmode ;
   bool invert_dimensions ;
   int x ;
   int y ;
   struct drm_crtc_funcs const *funcs ;
   uint32_t gamma_size ;
   uint16_t *gamma_store ;
   int framedur_ns ;
   int linedur_ns ;
   int pixeldur_ns ;
   void const *helper_private ;
   struct drm_object_properties properties ;
   struct drm_crtc_state *state ;
   struct drm_modeset_acquire_ctx *acquire_ctx ;
};
struct drm_connector_state {
   struct drm_connector *connector ;
   struct drm_crtc *crtc ;
   struct drm_encoder *best_encoder ;
   struct drm_atomic_state *state ;
};
struct drm_connector_funcs {
   void (*dpms)(struct drm_connector * , int ) ;
   void (*save)(struct drm_connector * ) ;
   void (*restore)(struct drm_connector * ) ;
   void (*reset)(struct drm_connector * ) ;
   enum drm_connector_status (*detect)(struct drm_connector * , bool ) ;
   int (*fill_modes)(struct drm_connector * , uint32_t , uint32_t ) ;
   int (*set_property)(struct drm_connector * , struct drm_property * , uint64_t ) ;
   void (*destroy)(struct drm_connector * ) ;
   void (*force)(struct drm_connector * ) ;
   struct drm_connector_state *(*atomic_duplicate_state)(struct drm_connector * ) ;
   void (*atomic_destroy_state)(struct drm_connector * , struct drm_connector_state * ) ;
   int (*atomic_set_property)(struct drm_connector * , struct drm_connector_state * ,
                              struct drm_property * , uint64_t ) ;
   int (*atomic_get_property)(struct drm_connector * , struct drm_connector_state const * ,
                              struct drm_property * , uint64_t * ) ;
};
struct drm_encoder_funcs {
   void (*reset)(struct drm_encoder * ) ;
   void (*destroy)(struct drm_encoder * ) ;
};
struct drm_encoder {
   struct drm_device *dev ;
   struct list_head head ;
   struct drm_mode_object base ;
   char *name ;
   int encoder_type ;
   uint32_t possible_crtcs ;
   uint32_t possible_clones ;
   struct drm_crtc *crtc ;
   struct drm_bridge *bridge ;
   struct drm_encoder_funcs const *funcs ;
   void const *helper_private ;
};
struct drm_connector {
   struct drm_device *dev ;
   struct device *kdev ;
   struct device_attribute *attr ;
   struct list_head head ;
   struct drm_mode_object base ;
   char *name ;
   int connector_type ;
   int connector_type_id ;
   bool interlace_allowed ;
   bool doublescan_allowed ;
   bool stereo_allowed ;
   struct list_head modes ;
   enum drm_connector_status status ;
   struct list_head probed_modes ;
   struct drm_display_info display_info ;
   struct drm_connector_funcs const *funcs ;
   struct drm_property_blob *edid_blob_ptr ;
   struct drm_object_properties properties ;
   struct drm_property_blob *path_blob_ptr ;
   struct drm_property_blob *tile_blob_ptr ;
   uint8_t polled ;
   int dpms ;
   void const *helper_private ;
   struct drm_cmdline_mode cmdline_mode ;
   enum drm_connector_force force ;
   bool override_edid ;
   uint32_t encoder_ids[3U] ;
   struct drm_encoder *encoder ;
   uint8_t eld[128U] ;
   bool dvi_dual ;
   int max_tmds_clock ;
   bool latency_present[2U] ;
   int video_latency[2U] ;
   int audio_latency[2U] ;
   int null_edid_counter ;
   unsigned int bad_edid_counter ;
   bool edid_corrupt ;
   struct dentry *debugfs_entry ;
   struct drm_connector_state *state ;
   bool has_tile ;
   struct drm_tile_group *tile_group ;
   bool tile_is_single_monitor ;
   uint8_t num_h_tile ;
   uint8_t num_v_tile ;
   uint8_t tile_h_loc ;
   uint8_t tile_v_loc ;
   uint16_t tile_h_size ;
   uint16_t tile_v_size ;
   struct list_head destroy_list ;
};
struct drm_plane_state {
   struct drm_plane *plane ;
   struct drm_crtc *crtc ;
   struct drm_framebuffer *fb ;
   struct fence *fence ;
   int32_t crtc_x ;
   int32_t crtc_y ;
   uint32_t crtc_w ;
   uint32_t crtc_h ;
   uint32_t src_x ;
   uint32_t src_y ;
   uint32_t src_h ;
   uint32_t src_w ;
   unsigned int rotation ;
   struct drm_atomic_state *state ;
};
struct drm_plane_funcs {
   int (*update_plane)(struct drm_plane * , struct drm_crtc * , struct drm_framebuffer * ,
                       int , int , unsigned int , unsigned int , uint32_t , uint32_t ,
                       uint32_t , uint32_t ) ;
   int (*disable_plane)(struct drm_plane * ) ;
   void (*destroy)(struct drm_plane * ) ;
   void (*reset)(struct drm_plane * ) ;
   int (*set_property)(struct drm_plane * , struct drm_property * , uint64_t ) ;
   struct drm_plane_state *(*atomic_duplicate_state)(struct drm_plane * ) ;
   void (*atomic_destroy_state)(struct drm_plane * , struct drm_plane_state * ) ;
   int (*atomic_set_property)(struct drm_plane * , struct drm_plane_state * , struct drm_property * ,
                              uint64_t ) ;
   int (*atomic_get_property)(struct drm_plane * , struct drm_plane_state const * ,
                              struct drm_property * , uint64_t * ) ;
};
enum drm_plane_type {
    DRM_PLANE_TYPE_OVERLAY = 0,
    DRM_PLANE_TYPE_PRIMARY = 1,
    DRM_PLANE_TYPE_CURSOR = 2
} ;
struct drm_plane {
   struct drm_device *dev ;
   struct list_head head ;
   struct drm_modeset_lock mutex ;
   struct drm_mode_object base ;
   uint32_t possible_crtcs ;
   uint32_t *format_types ;
   uint32_t format_count ;
   bool format_default ;
   struct drm_crtc *crtc ;
   struct drm_framebuffer *fb ;
   struct drm_framebuffer *old_fb ;
   struct drm_plane_funcs const *funcs ;
   struct drm_object_properties properties ;
   enum drm_plane_type type ;
   void const *helper_private ;
   struct drm_plane_state *state ;
};
struct drm_bridge_funcs {
   int (*attach)(struct drm_bridge * ) ;
   bool (*mode_fixup)(struct drm_bridge * , struct drm_display_mode const * , struct drm_display_mode * ) ;
   void (*disable)(struct drm_bridge * ) ;
   void (*post_disable)(struct drm_bridge * ) ;
   void (*mode_set)(struct drm_bridge * , struct drm_display_mode * , struct drm_display_mode * ) ;
   void (*pre_enable)(struct drm_bridge * ) ;
   void (*enable)(struct drm_bridge * ) ;
};
struct drm_bridge {
   struct drm_device *dev ;
   struct drm_encoder *encoder ;
   struct drm_bridge *next ;
   struct device_node *of_node ;
   struct list_head list ;
   struct drm_bridge_funcs const *funcs ;
   void *driver_private ;
};
struct drm_atomic_state {
   struct drm_device *dev ;
   bool allow_modeset ;
   bool legacy_cursor_update ;
   struct drm_plane **planes ;
   struct drm_plane_state **plane_states ;
   struct drm_crtc **crtcs ;
   struct drm_crtc_state **crtc_states ;
   int num_connector ;
   struct drm_connector **connectors ;
   struct drm_connector_state **connector_states ;
   struct drm_modeset_acquire_ctx *acquire_ctx ;
};
struct drm_mode_set {
   struct drm_framebuffer *fb ;
   struct drm_crtc *crtc ;
   struct drm_display_mode *mode ;
   uint32_t x ;
   uint32_t y ;
   struct drm_connector **connectors ;
   size_t num_connectors ;
};
struct drm_mode_config_funcs {
   struct drm_framebuffer *(*fb_create)(struct drm_device * , struct drm_file * ,
                                        struct drm_mode_fb_cmd2 * ) ;
   void (*output_poll_changed)(struct drm_device * ) ;
   int (*atomic_check)(struct drm_device * , struct drm_atomic_state * ) ;
   int (*atomic_commit)(struct drm_device * , struct drm_atomic_state * , bool ) ;
   struct drm_atomic_state *(*atomic_state_alloc)(struct drm_device * ) ;
   void (*atomic_state_clear)(struct drm_atomic_state * ) ;
   void (*atomic_state_free)(struct drm_atomic_state * ) ;
};
struct drm_mode_group {
   uint32_t num_crtcs ;
   uint32_t num_encoders ;
   uint32_t num_connectors ;
   uint32_t *id_list ;
};
struct drm_mode_config {
   struct mutex mutex ;
   struct drm_modeset_lock connection_mutex ;
   struct drm_modeset_acquire_ctx *acquire_ctx ;
   struct mutex idr_mutex ;
   struct idr crtc_idr ;
   struct idr tile_idr ;
   struct mutex fb_lock ;
   int num_fb ;
   struct list_head fb_list ;
   int num_connector ;
   struct list_head connector_list ;
   int num_encoder ;
   struct list_head encoder_list ;
   int num_overlay_plane ;
   int num_total_plane ;
   struct list_head plane_list ;
   int num_crtc ;
   struct list_head crtc_list ;
   struct list_head property_list ;
   int min_width ;
   int min_height ;
   int max_width ;
   int max_height ;
   struct drm_mode_config_funcs const *funcs ;
   resource_size_t fb_base ;
   bool poll_enabled ;
   bool poll_running ;
   bool delayed_event ;
   struct delayed_work output_poll_work ;
   struct mutex blob_lock ;
   struct list_head property_blob_list ;
   struct drm_property *edid_property ;
   struct drm_property *dpms_property ;
   struct drm_property *path_property ;
   struct drm_property *tile_property ;
   struct drm_property *plane_type_property ;
   struct drm_property *rotation_property ;
   struct drm_property *prop_src_x ;
   struct drm_property *prop_src_y ;
   struct drm_property *prop_src_w ;
   struct drm_property *prop_src_h ;
   struct drm_property *prop_crtc_x ;
   struct drm_property *prop_crtc_y ;
   struct drm_property *prop_crtc_w ;
   struct drm_property *prop_crtc_h ;
   struct drm_property *prop_fb_id ;
   struct drm_property *prop_crtc_id ;
   struct drm_property *prop_active ;
   struct drm_property *prop_mode_id ;
   struct drm_property *dvi_i_subconnector_property ;
   struct drm_property *dvi_i_select_subconnector_property ;
   struct drm_property *tv_subconnector_property ;
   struct drm_property *tv_select_subconnector_property ;
   struct drm_property *tv_mode_property ;
   struct drm_property *tv_left_margin_property ;
   struct drm_property *tv_right_margin_property ;
   struct drm_property *tv_top_margin_property ;
   struct drm_property *tv_bottom_margin_property ;
   struct drm_property *tv_brightness_property ;
   struct drm_property *tv_contrast_property ;
   struct drm_property *tv_flicker_reduction_property ;
   struct drm_property *tv_overscan_property ;
   struct drm_property *tv_saturation_property ;
   struct drm_property *tv_hue_property ;
   struct drm_property *scaling_mode_property ;
   struct drm_property *aspect_ratio_property ;
   struct drm_property *dirty_info_property ;
   struct drm_property *suggested_x_property ;
   struct drm_property *suggested_y_property ;
   uint32_t preferred_depth ;
   uint32_t prefer_shadow ;
   bool async_page_flip ;
   bool allow_fb_modifiers ;
   uint32_t cursor_width ;
   uint32_t cursor_height ;
};
enum drm_global_types {
    DRM_GLOBAL_TTM_MEM = 0,
    DRM_GLOBAL_TTM_BO = 1,
    DRM_GLOBAL_TTM_OBJECT = 2,
    DRM_GLOBAL_NUM = 3
} ;
struct drm_global_reference {
   enum drm_global_types global_type ;
   size_t size ;
   void *object ;
   int (*init)(struct drm_global_reference * ) ;
   void (*release)(struct drm_global_reference * ) ;
};
struct drm_open_hash {
   struct hlist_head *table ;
   u8 order ;
};
struct drm_mm;
struct drm_mm_node {
   struct list_head node_list ;
   struct list_head hole_stack ;
   unsigned char hole_follows : 1 ;
   unsigned char scanned_block : 1 ;
   unsigned char scanned_prev_free : 1 ;
   unsigned char scanned_next_free : 1 ;
   unsigned char scanned_preceeds_hole : 1 ;
   unsigned char allocated : 1 ;
   unsigned long color ;
   u64 start ;
   u64 size ;
   struct drm_mm *mm ;
};
struct drm_mm {
   struct list_head hole_stack ;
   struct drm_mm_node head_node ;
   unsigned char scan_check_range : 1 ;
   unsigned int scan_alignment ;
   unsigned long scan_color ;
   u64 scan_size ;
   u64 scan_hit_start ;
   u64 scan_hit_end ;
   unsigned int scanned_blocks ;
   u64 scan_start ;
   u64 scan_end ;
   struct drm_mm_node *prev_scanned_node ;
   void (*color_adjust)(struct drm_mm_node * , unsigned long , u64 * , u64 * ) ;
};
struct drm_vma_offset_node {
   rwlock_t vm_lock ;
   struct drm_mm_node vm_node ;
   struct rb_node vm_rb ;
   struct rb_root vm_files ;
};
struct drm_vma_offset_manager {
   rwlock_t vm_lock ;
   struct rb_root vm_addr_space_rb ;
   struct drm_mm vm_addr_space_mm ;
};
struct drm_local_map;
struct drm_device_dma;
struct reservation_object;
struct dma_buf_attachment;
typedef int drm_ioctl_t(struct drm_device * , void * , struct drm_file * );
struct drm_ioctl_desc {
   unsigned int cmd ;
   int flags ;
   drm_ioctl_t *func ;
   char const *name ;
};
struct drm_pending_event {
   struct drm_event *event ;
   struct list_head link ;
   struct drm_file *file_priv ;
   pid_t pid ;
   void (*destroy)(struct drm_pending_event * ) ;
};
struct drm_prime_file_private {
   struct list_head head ;
   struct mutex lock ;
};
struct drm_master;
struct drm_file {
   unsigned char authenticated : 1 ;
   unsigned char is_master : 1 ;
   unsigned char stereo_allowed : 1 ;
   unsigned char universal_planes : 1 ;
   unsigned char atomic : 1 ;
   struct pid *pid ;
   kuid_t uid ;
   drm_magic_t magic ;
   struct list_head lhead ;
   struct drm_minor *minor ;
   unsigned long lock_count ;
   struct idr object_idr ;
   spinlock_t table_lock ;
   struct file *filp ;
   void *driver_priv ;
   struct drm_master *master ;
   struct list_head fbs ;
   struct mutex fbs_lock ;
   struct list_head blobs ;
   wait_queue_head_t event_wait ;
   struct list_head event_list ;
   int event_space ;
   struct drm_prime_file_private prime ;
};
struct drm_lock_data {
   struct drm_hw_lock *hw_lock ;
   struct drm_file *file_priv ;
   wait_queue_head_t lock_queue ;
   unsigned long lock_time ;
   spinlock_t spinlock ;
   uint32_t kernel_waiters ;
   uint32_t user_waiters ;
   int idle_has_lock ;
};
struct drm_master {
   struct kref refcount ;
   struct drm_minor *minor ;
   char *unique ;
   int unique_len ;
   struct idr magic_map ;
   struct drm_lock_data lock ;
   void *driver_priv ;
};
struct dma_buf;
struct drm_driver {
   int (*load)(struct drm_device * , unsigned long ) ;
   int (*firstopen)(struct drm_device * ) ;
   int (*open)(struct drm_device * , struct drm_file * ) ;
   void (*preclose)(struct drm_device * , struct drm_file * ) ;
   void (*postclose)(struct drm_device * , struct drm_file * ) ;
   void (*lastclose)(struct drm_device * ) ;
   int (*unload)(struct drm_device * ) ;
   int (*suspend)(struct drm_device * , pm_message_t ) ;
   int (*resume)(struct drm_device * ) ;
   int (*dma_ioctl)(struct drm_device * , void * , struct drm_file * ) ;
   int (*dma_quiescent)(struct drm_device * ) ;
   int (*context_dtor)(struct drm_device * , int ) ;
   int (*set_busid)(struct drm_device * , struct drm_master * ) ;
   u32 (*get_vblank_counter)(struct drm_device * , int ) ;
   int (*enable_vblank)(struct drm_device * , int ) ;
   void (*disable_vblank)(struct drm_device * , int ) ;
   int (*device_is_agp)(struct drm_device * ) ;
   int (*get_scanout_position)(struct drm_device * , int , unsigned int , int * ,
                               int * , ktime_t * , ktime_t * ) ;
   int (*get_vblank_timestamp)(struct drm_device * , int , int * , struct timeval * ,
                               unsigned int ) ;
   irqreturn_t (*irq_handler)(int , void * ) ;
   void (*irq_preinstall)(struct drm_device * ) ;
   int (*irq_postinstall)(struct drm_device * ) ;
   void (*irq_uninstall)(struct drm_device * ) ;
   int (*master_create)(struct drm_device * , struct drm_master * ) ;
   void (*master_destroy)(struct drm_device * , struct drm_master * ) ;
   int (*master_set)(struct drm_device * , struct drm_file * , bool ) ;
   void (*master_drop)(struct drm_device * , struct drm_file * , bool ) ;
   int (*debugfs_init)(struct drm_minor * ) ;
   void (*debugfs_cleanup)(struct drm_minor * ) ;
   void (*gem_free_object)(struct drm_gem_object * ) ;
   int (*gem_open_object)(struct drm_gem_object * , struct drm_file * ) ;
   void (*gem_close_object)(struct drm_gem_object * , struct drm_file * ) ;
   int (*prime_handle_to_fd)(struct drm_device * , struct drm_file * , uint32_t ,
                             uint32_t , int * ) ;
   int (*prime_fd_to_handle)(struct drm_device * , struct drm_file * , int , uint32_t * ) ;
   struct dma_buf *(*gem_prime_export)(struct drm_device * , struct drm_gem_object * ,
                                       int ) ;
   struct drm_gem_object *(*gem_prime_import)(struct drm_device * , struct dma_buf * ) ;
   int (*gem_prime_pin)(struct drm_gem_object * ) ;
   void (*gem_prime_unpin)(struct drm_gem_object * ) ;
   struct reservation_object *(*gem_prime_res_obj)(struct drm_gem_object * ) ;
   struct sg_table *(*gem_prime_get_sg_table)(struct drm_gem_object * ) ;
   struct drm_gem_object *(*gem_prime_import_sg_table)(struct drm_device * , struct dma_buf_attachment * ,
                                                       struct sg_table * ) ;
   void *(*gem_prime_vmap)(struct drm_gem_object * ) ;
   void (*gem_prime_vunmap)(struct drm_gem_object * , void * ) ;
   int (*gem_prime_mmap)(struct drm_gem_object * , struct vm_area_struct * ) ;
   void (*vgaarb_irq)(struct drm_device * , bool ) ;
   int (*dumb_create)(struct drm_file * , struct drm_device * , struct drm_mode_create_dumb * ) ;
   int (*dumb_map_offset)(struct drm_file * , struct drm_device * , uint32_t , uint64_t * ) ;
   int (*dumb_destroy)(struct drm_file * , struct drm_device * , uint32_t ) ;
   struct vm_operations_struct const *gem_vm_ops ;
   int major ;
   int minor ;
   int patchlevel ;
   char *name ;
   char *desc ;
   char *date ;
   u32 driver_features ;
   int dev_priv_size ;
   struct drm_ioctl_desc const *ioctls ;
   int num_ioctls ;
   struct file_operations const *fops ;
   struct list_head legacy_dev_list ;
};
struct drm_info_list {
   char const *name ;
   int (*show)(struct seq_file * , void * ) ;
   u32 driver_features ;
   void *data ;
};
struct drm_minor {
   int index ;
   int type ;
   struct device *kdev ;
   struct drm_device *dev ;
   struct dentry *debugfs_root ;
   struct list_head debugfs_list ;
   struct mutex debugfs_lock ;
   struct drm_master *master ;
   struct drm_mode_group mode_group ;
};
struct drm_pending_vblank_event {
   struct drm_pending_event base ;
   int pipe ;
   struct drm_event_vblank event ;
};
struct drm_vblank_crtc {
   struct drm_device *dev ;
   wait_queue_head_t queue ;
   struct timer_list disable_timer ;
   unsigned long count ;
   struct timeval time[2U] ;
   atomic_t refcount ;
   u32 last ;
   u32 last_wait ;
   unsigned int inmodeset ;
   int crtc ;
   bool enabled ;
};
struct virtio_device;
struct drm_sg_mem;
struct __anonstruct_sigdata_257 {
   int context ;
   struct drm_hw_lock *lock ;
};
struct drm_device {
   struct list_head legacy_dev_list ;
   int if_version ;
   struct kref ref ;
   struct device *dev ;
   struct drm_driver *driver ;
   void *dev_private ;
   struct drm_minor *control ;
   struct drm_minor *primary ;
   struct drm_minor *render ;
   atomic_t unplugged ;
   struct inode *anon_inode ;
   char *unique ;
   struct mutex struct_mutex ;
   struct mutex master_mutex ;
   int open_count ;
   spinlock_t buf_lock ;
   int buf_use ;
   atomic_t buf_alloc ;
   struct list_head filelist ;
   struct list_head maplist ;
   struct drm_open_hash map_hash ;
   struct list_head ctxlist ;
   struct mutex ctxlist_mutex ;
   struct idr ctx_idr ;
   struct list_head vmalist ;
   struct drm_device_dma *dma ;
   long volatile context_flag ;
   int last_context ;
   bool irq_enabled ;
   int irq ;
   bool vblank_disable_allowed ;
   bool vblank_disable_immediate ;
   struct drm_vblank_crtc *vblank ;
   spinlock_t vblank_time_lock ;
   spinlock_t vbl_lock ;
   u32 max_vblank_count ;
   struct list_head vblank_event_list ;
   spinlock_t event_lock ;
   struct drm_agp_head *agp ;
   struct pci_dev *pdev ;
   struct platform_device *platformdev ;
   struct virtio_device *virtdev ;
   struct drm_sg_mem *sg ;
   unsigned int num_crtcs ;
   sigset_t sigmask ;
   struct __anonstruct_sigdata_257 sigdata ;
   struct drm_local_map *agp_buffer_map ;
   unsigned int agp_buffer_token ;
   struct drm_mode_config mode_config ;
   struct mutex object_name_lock ;
   struct idr object_name_idr ;
   struct drm_vma_offset_manager *vma_offset_manager ;
   int switch_power_state ;
};
enum mode_set_atomic {
    LEAVE_ATOMIC_MODE_SET = 0,
    ENTER_ATOMIC_MODE_SET = 1
} ;
struct drm_crtc_helper_funcs {
   void (*dpms)(struct drm_crtc * , int ) ;
   void (*prepare)(struct drm_crtc * ) ;
   void (*commit)(struct drm_crtc * ) ;
   bool (*mode_fixup)(struct drm_crtc * , struct drm_display_mode const * , struct drm_display_mode * ) ;
   int (*mode_set)(struct drm_crtc * , struct drm_display_mode * , struct drm_display_mode * ,
                   int , int , struct drm_framebuffer * ) ;
   void (*mode_set_nofb)(struct drm_crtc * ) ;
   int (*mode_set_base)(struct drm_crtc * , int , int , struct drm_framebuffer * ) ;
   int (*mode_set_base_atomic)(struct drm_crtc * , struct drm_framebuffer * , int ,
                               int , enum mode_set_atomic ) ;
   void (*load_lut)(struct drm_crtc * ) ;
   void (*disable)(struct drm_crtc * ) ;
   void (*enable)(struct drm_crtc * ) ;
   int (*atomic_check)(struct drm_crtc * , struct drm_crtc_state * ) ;
   void (*atomic_begin)(struct drm_crtc * ) ;
   void (*atomic_flush)(struct drm_crtc * ) ;
};
struct fence_ops;
struct fence {
   struct kref refcount ;
   struct fence_ops const *ops ;
   struct callback_head rcu ;
   struct list_head cb_list ;
   spinlock_t *lock ;
   unsigned int context ;
   unsigned int seqno ;
   unsigned long flags ;
   ktime_t timestamp ;
   int status ;
};
struct fence_ops {
   char const *(*get_driver_name)(struct fence * ) ;
   char const *(*get_timeline_name)(struct fence * ) ;
   bool (*enable_signaling)(struct fence * ) ;
   bool (*signaled)(struct fence * ) ;
   long (*wait)(struct fence * , bool , long ) ;
   void (*release)(struct fence * ) ;
   int (*fill_driver_data)(struct fence * , void * , int ) ;
   void (*fence_value_str)(struct fence * , char * , int ) ;
   void (*timeline_value_str)(struct fence * , char * , int ) ;
};
struct reservation_object_list {
   struct callback_head rcu ;
   u32 shared_count ;
   u32 shared_max ;
   struct fence *shared[] ;
};
struct reservation_object {
   struct ww_mutex lock ;
   seqcount_t seq ;
   struct fence *fence_excl ;
   struct reservation_object_list *fence ;
   struct reservation_object_list *staged ;
};
struct ttm_place {
   unsigned int fpfn ;
   unsigned int lpfn ;
   uint32_t flags ;
};
struct ttm_placement {
   unsigned int num_placement ;
   struct ttm_place const *placement ;
   unsigned int num_busy_placement ;
   struct ttm_place const *busy_placement ;
};
struct ttm_bus_placement {
   void *addr ;
   unsigned long base ;
   unsigned long size ;
   unsigned long offset ;
   bool is_iomem ;
   bool io_reserved_vm ;
   uint64_t io_reserved_count ;
};
struct ttm_mem_reg {
   void *mm_node ;
   unsigned long start ;
   unsigned long size ;
   unsigned long num_pages ;
   uint32_t page_alignment ;
   uint32_t mem_type ;
   uint32_t placement ;
   struct ttm_bus_placement bus ;
};
enum ttm_bo_type {
    ttm_bo_type_device = 0,
    ttm_bo_type_kernel = 1,
    ttm_bo_type_sg = 2
} ;
struct ttm_bo_global;
struct ttm_buffer_object {
   struct ttm_bo_global *glob ;
   struct ttm_bo_device *bdev ;
   enum ttm_bo_type type ;
   void (*destroy)(struct ttm_buffer_object * ) ;
   unsigned long num_pages ;
   size_t acc_size ;
   struct kref kref ;
   struct kref list_kref ;
   struct ttm_mem_reg mem ;
   struct file *persistent_swap_storage ;
   struct ttm_tt *ttm ;
   bool evicted ;
   atomic_t cpu_writers ;
   struct list_head lru ;
   struct list_head ddestroy ;
   struct list_head swap ;
   struct list_head io_reserve_lru ;
   unsigned long priv_flags ;
   struct drm_vma_offset_node vma_node ;
   uint64_t offset ;
   uint32_t cur_placement ;
   struct sg_table *sg ;
   struct reservation_object *resv ;
   struct reservation_object ttm_resv ;
   struct mutex wu_mutex ;
};
enum ldv_28904 {
    ttm_bo_map_iomap = 129,
    ttm_bo_map_vmap = 2,
    ttm_bo_map_kmap = 3,
    ttm_bo_map_premapped = 132
} ;
struct ttm_bo_kmap_obj {
   void *virtual ;
   struct page *page ;
   enum ldv_28904 bo_kmap_type ;
   struct ttm_buffer_object *bo ;
};
struct ttm_mem_shrink {
   int (*do_shrink)(struct ttm_mem_shrink * ) ;
};
struct ttm_mem_zone;
struct ttm_mem_global {
   struct kobject kobj ;
   struct ttm_mem_shrink *shrink ;
   struct workqueue_struct *swap_queue ;
   struct work_struct work ;
   spinlock_t lock ;
   struct ttm_mem_zone *zones[2U] ;
   unsigned int num_zones ;
   struct ttm_mem_zone *zone_kernel ;
   struct ttm_mem_zone *zone_dma32 ;
};
struct ttm_backend_func {
   int (*bind)(struct ttm_tt * , struct ttm_mem_reg * ) ;
   int (*unbind)(struct ttm_tt * ) ;
   void (*destroy)(struct ttm_tt * ) ;
};
enum ttm_caching_state {
    tt_uncached = 0,
    tt_wc = 1,
    tt_cached = 2
} ;
enum ldv_28991 {
    tt_bound = 0,
    tt_unbound = 1,
    tt_unpopulated = 2
} ;
struct ttm_tt {
   struct ttm_bo_device *bdev ;
   struct ttm_backend_func *func ;
   struct page *dummy_read_page ;
   struct page **pages ;
   uint32_t page_flags ;
   unsigned long num_pages ;
   struct sg_table *sg ;
   struct ttm_bo_global *glob ;
   struct file *swap_storage ;
   enum ttm_caching_state caching_state ;
   enum ldv_28991 state ;
};
struct ttm_mem_type_manager;
struct ttm_mem_type_manager_func {
   int (*init)(struct ttm_mem_type_manager * , unsigned long ) ;
   int (*takedown)(struct ttm_mem_type_manager * ) ;
   int (*get_node)(struct ttm_mem_type_manager * , struct ttm_buffer_object * , struct ttm_place const * ,
                   struct ttm_mem_reg * ) ;
   void (*put_node)(struct ttm_mem_type_manager * , struct ttm_mem_reg * ) ;
   void (*debug)(struct ttm_mem_type_manager * , char const * ) ;
};
struct ttm_mem_type_manager {
   struct ttm_bo_device *bdev ;
   bool has_type ;
   bool use_type ;
   uint32_t flags ;
   uint64_t gpu_offset ;
   uint64_t size ;
   uint32_t available_caching ;
   uint32_t default_caching ;
   struct ttm_mem_type_manager_func const *func ;
   void *priv ;
   struct mutex io_reserve_mutex ;
   bool use_io_reserve_lru ;
   bool io_reserve_fastpath ;
   struct list_head io_reserve_lru ;
   struct list_head lru ;
};
struct ttm_bo_driver {
   struct ttm_tt *(*ttm_tt_create)(struct ttm_bo_device * , unsigned long , uint32_t ,
                                   struct page * ) ;
   int (*ttm_tt_populate)(struct ttm_tt * ) ;
   void (*ttm_tt_unpopulate)(struct ttm_tt * ) ;
   int (*invalidate_caches)(struct ttm_bo_device * , uint32_t ) ;
   int (*init_mem_type)(struct ttm_bo_device * , uint32_t , struct ttm_mem_type_manager * ) ;
   void (*evict_flags)(struct ttm_buffer_object * , struct ttm_placement * ) ;
   int (*move)(struct ttm_buffer_object * , bool , bool , bool , struct ttm_mem_reg * ) ;
   int (*verify_access)(struct ttm_buffer_object * , struct file * ) ;
   void (*move_notify)(struct ttm_buffer_object * , struct ttm_mem_reg * ) ;
   int (*fault_reserve_notify)(struct ttm_buffer_object * ) ;
   void (*swap_notify)(struct ttm_buffer_object * ) ;
   int (*io_mem_reserve)(struct ttm_bo_device * , struct ttm_mem_reg * ) ;
   void (*io_mem_free)(struct ttm_bo_device * , struct ttm_mem_reg * ) ;
};
struct ttm_bo_global_ref {
   struct drm_global_reference ref ;
   struct ttm_mem_global *mem_glob ;
};
struct ttm_bo_global {
   struct kobject kobj ;
   struct ttm_mem_global *mem_glob ;
   struct page *dummy_read_page ;
   struct ttm_mem_shrink shrink ;
   struct mutex device_list_mutex ;
   spinlock_t lru_lock ;
   struct list_head device_list ;
   struct list_head swap_lru ;
   atomic_t bo_count ;
};
struct ttm_bo_device {
   struct list_head device_list ;
   struct ttm_bo_global *glob ;
   struct ttm_bo_driver *driver ;
   struct ttm_mem_type_manager man[8U] ;
   struct drm_vma_offset_manager vma_manager ;
   struct list_head ddestroy ;
   uint32_t val_seq ;
   struct address_space *dev_mapping ;
   struct delayed_work wq ;
   bool need_dma32 ;
};
struct drm_gem_object {
   struct kref refcount ;
   unsigned int handle_count ;
   struct drm_device *dev ;
   struct file *filp ;
   struct drm_vma_offset_node vma_node ;
   size_t size ;
   int name ;
   uint32_t read_domains ;
   uint32_t write_domain ;
   uint32_t pending_read_domains ;
   uint32_t pending_write_domain ;
   struct dma_buf *dma_buf ;
   struct dma_buf_attachment *import_attach ;
};
typedef uint64_t QXLPHYSICAL;
struct qxl_rect {
   int32_t top ;
   int32_t left ;
   int32_t bottom ;
   int32_t right ;
};
struct qxl_urect {
   uint32_t top ;
   uint32_t left ;
   uint32_t bottom ;
   uint32_t right ;
};
struct __anonstruct_client_monitors_config_258 {
   uint16_t count ;
   uint16_t padding ;
   struct qxl_urect heads[64U] ;
};
struct qxl_rom {
   uint32_t magic ;
   uint32_t id ;
   uint32_t update_id ;
   uint32_t compression_level ;
   uint32_t log_level ;
   uint32_t mode ;
   uint32_t modes_offset ;
   uint32_t num_io_pages ;
   uint32_t pages_offset ;
   uint32_t draw_area_offset ;
   uint32_t surface0_area_size ;
   uint32_t ram_header_offset ;
   uint32_t mm_clock ;
   uint32_t n_surfaces ;
   uint64_t flags ;
   uint8_t slots_start ;
   uint8_t slots_end ;
   uint8_t slot_gen_bits ;
   uint8_t slot_id_bits ;
   uint8_t slot_generation ;
   uint8_t client_present ;
   uint8_t client_capabilities[58U] ;
   uint32_t client_monitors_config_crc ;
   struct __anonstruct_client_monitors_config_258 client_monitors_config ;
};
struct qxl_mode {
   uint32_t id ;
   uint32_t x_res ;
   uint32_t y_res ;
   uint32_t bits ;
   uint32_t stride ;
   uint32_t x_mili ;
   uint32_t y_mili ;
   uint32_t orientation ;
};
struct qxl_command {
   QXLPHYSICAL data ;
   uint32_t type ;
   uint32_t padding ;
};
struct qxl_mem_slot {
   uint64_t mem_start ;
   uint64_t mem_end ;
};
struct qxl_surface_create {
   uint32_t width ;
   uint32_t height ;
   int32_t stride ;
   uint32_t format ;
   uint32_t position ;
   uint32_t mouse_mode ;
   uint32_t flags ;
   uint32_t type ;
   QXLPHYSICAL mem ;
};
struct qxl_ring_header {
   uint32_t num_items ;
   uint32_t prod ;
   uint32_t notify_on_prod ;
   uint32_t cons ;
   uint32_t notify_on_cons ;
};
struct qxl_ram_header {
   uint32_t magic ;
   uint32_t int_pending ;
   uint32_t int_mask ;
   uint8_t log_buf[4096U] ;
   struct qxl_ring_header cmd_ring_hdr ;
   struct qxl_command cmd_ring[32U] ;
   struct qxl_ring_header cursor_ring_hdr ;
   struct qxl_command cursor_ring[32U] ;
   struct qxl_ring_header release_ring_hdr ;
   uint64_t release_ring[8U] ;
   struct qxl_rect update_area ;
   uint32_t update_surface ;
   struct qxl_mem_slot mem_slot ;
   struct qxl_surface_create create_surface ;
   uint64_t flags ;
   QXLPHYSICAL monitors_config ;
   uint8_t guest_capabilities[64U] ;
};
struct qxl_surface {
   uint32_t format ;
   uint32_t width ;
   uint32_t height ;
   int32_t stride ;
   QXLPHYSICAL data ;
};
struct qxl_head {
   uint32_t id ;
   uint32_t surface_id ;
   uint32_t width ;
   uint32_t height ;
   uint32_t x ;
   uint32_t y ;
   uint32_t flags ;
};
struct qxl_monitors_config {
   uint16_t count ;
   uint16_t max_allowed ;
   struct qxl_head heads[0U] ;
};
struct qxl_release;
struct qxl_bo {
   struct list_head list ;
   struct ttm_place placements[3U] ;
   struct ttm_placement placement ;
   struct ttm_buffer_object tbo ;
   struct ttm_bo_kmap_obj kmap ;
   unsigned int pin_count ;
   void *kptr ;
   int type ;
   struct drm_gem_object gem_base ;
   bool is_primary ;
   bool hw_surf_alloc ;
   struct qxl_surface surf ;
   uint32_t surface_id ;
   struct qxl_release *surf_create ;
};
struct qxl_gem {
   struct mutex mutex ;
   struct list_head objects ;
};
struct qxl_framebuffer {
   struct drm_framebuffer base ;
   struct drm_gem_object *obj ;
};
struct qxl_mman {
   struct ttm_bo_global_ref bo_global_ref ;
   struct drm_global_reference mem_global_ref ;
   bool mem_global_referenced ;
   struct ttm_bo_device bdev ;
};
struct qxl_fbdev;
struct qxl_mode_info {
   int num_modes ;
   struct qxl_mode *modes ;
   bool mode_config_initialized ;
   struct qxl_fbdev *qfbdev ;
};
struct qxl_memslot {
   uint8_t generation ;
   uint64_t start_phys_addr ;
   uint64_t end_phys_addr ;
   uint64_t high_bits ;
};
struct qxl_release {
   struct fence base ;
   int id ;
   int type ;
   uint32_t release_offset ;
   uint32_t surface_release_id ;
   struct ww_acquire_ctx ticket ;
   struct list_head bos ;
};
struct qxl_device;
struct qxl_debugfs {
   struct drm_info_list *files ;
   unsigned int num_files ;
};
struct qxl_ring;
struct io_mapping;
struct qxl_device {
   struct device *dev ;
   struct drm_device *ddev ;
   struct pci_dev *pdev ;
   unsigned long flags ;
   resource_size_t vram_base ;
   resource_size_t vram_size ;
   resource_size_t surfaceram_base ;
   resource_size_t surfaceram_size ;
   resource_size_t rom_base ;
   resource_size_t rom_size ;
   struct qxl_rom *rom ;
   struct qxl_mode *modes ;
   struct qxl_bo *monitors_config_bo ;
   struct qxl_monitors_config *monitors_config ;
   struct qxl_monitors_config *client_monitors_config ;
   int io_base ;
   void *ram ;
   struct qxl_mman mman ;
   struct qxl_gem gem ;
   struct qxl_mode_info mode_info ;
   struct fb_info *fbdev_info ;
   struct qxl_framebuffer *fbdev_qfb ;
   void *ram_physical ;
   struct qxl_ring *release_ring ;
   struct qxl_ring *command_ring ;
   struct qxl_ring *cursor_ring ;
   struct qxl_ram_header *ram_header ;
   bool primary_created ;
   struct qxl_memslot *mem_slots ;
   uint8_t n_mem_slots ;
   uint8_t main_mem_slot ;
   uint8_t surfaces_mem_slot ;
   uint8_t slot_id_bits ;
   uint8_t slot_gen_bits ;
   uint64_t va_slot_mask ;
   spinlock_t release_lock ;
   struct idr release_idr ;
   uint32_t release_seqno ;
   spinlock_t release_idr_lock ;
   struct mutex async_io_mutex ;
   unsigned int last_sent_io_cmd ;
   atomic_t irq_received ;
   atomic_t irq_received_display ;
   atomic_t irq_received_cursor ;
   atomic_t irq_received_io_cmd ;
   unsigned int irq_received_error ;
   wait_queue_head_t display_event ;
   wait_queue_head_t cursor_event ;
   wait_queue_head_t io_cmd_event ;
   struct work_struct client_monitors_config_work ;
   struct qxl_debugfs debugfs[32U] ;
   unsigned int debugfs_count ;
   struct mutex update_area_mutex ;
   struct idr surf_id_idr ;
   spinlock_t surf_id_idr_lock ;
   int last_alloced_surf_id ;
   struct mutex surf_evict_mutex ;
   struct io_mapping *vram_mapping ;
   struct io_mapping *surface_mapping ;
   struct mutex release_mutex ;
   struct qxl_bo *current_release_bo[3U] ;
   int current_release_bo_offset[3U] ;
   struct workqueue_struct *gc_queue ;
   struct work_struct gc_work ;
   struct work_struct fb_work ;
   struct drm_property *hotplug_mode_update_property ;
};
typedef bool ldv_func_ret_type;
typedef bool ldv_func_ret_type___0;
typedef bool ldv_func_ret_type___1;
typedef bool ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
enum hrtimer_restart;
typedef short __s16;
typedef __s16 int16_t;
enum hrtimer_restart;
struct qxl_point_1_6 {
   int16_t x ;
   int16_t y ;
};
union qxl_release_info {
   uint64_t id ;
   uint64_t next ;
};
struct qxl_data_chunk {
   uint32_t data_size ;
   QXLPHYSICAL prev_chunk ;
   QXLPHYSICAL next_chunk ;
   uint8_t data[0U] ;
};
struct qxl_cursor_header {
   uint64_t unique ;
   uint16_t type ;
   uint16_t width ;
   uint16_t height ;
   uint16_t hot_spot_x ;
   uint16_t hot_spot_y ;
};
struct qxl_cursor {
   struct qxl_cursor_header header ;
   uint32_t data_size ;
   struct qxl_data_chunk chunk ;
};
struct __anonstruct_set_260 {
   struct qxl_point_1_6 position ;
   uint8_t visible ;
   QXLPHYSICAL shape ;
};
struct __anonstruct_trail_261 {
   uint16_t length ;
   uint16_t frequency ;
};
union __anonunion_u_259 {
   struct __anonstruct_set_260 set ;
   struct __anonstruct_trail_261 trail ;
   struct qxl_point_1_6 position ;
};
struct qxl_cursor_cmd {
   union qxl_release_info release_info ;
   uint8_t type ;
   union __anonunion_u_259 u ;
   uint8_t device_data[128U] ;
};
struct qxl_crtc {
   struct drm_crtc base ;
   int index ;
   int cur_x ;
   int cur_y ;
};
struct qxl_output {
   int index ;
   struct drm_connector base ;
   struct drm_encoder enc ;
};
struct drm_encoder_helper_funcs {
   void (*dpms)(struct drm_encoder * , int ) ;
   void (*save)(struct drm_encoder * ) ;
   void (*restore)(struct drm_encoder * ) ;
   bool (*mode_fixup)(struct drm_encoder * , struct drm_display_mode const * , struct drm_display_mode * ) ;
   void (*prepare)(struct drm_encoder * ) ;
   void (*commit)(struct drm_encoder * ) ;
   void (*mode_set)(struct drm_encoder * , struct drm_display_mode * , struct drm_display_mode * ) ;
   struct drm_crtc *(*get_crtc)(struct drm_encoder * ) ;
   enum drm_connector_status (*detect)(struct drm_encoder * , struct drm_connector * ) ;
   void (*disable)(struct drm_encoder * ) ;
   void (*enable)(struct drm_encoder * ) ;
   int (*atomic_check)(struct drm_encoder * , struct drm_crtc_state * , struct drm_connector_state * ) ;
};
struct drm_connector_helper_funcs {
   int (*get_modes)(struct drm_connector * ) ;
   enum drm_mode_status (*mode_valid)(struct drm_connector * , struct drm_display_mode * ) ;
   struct drm_encoder *(*best_encoder)(struct drm_connector * ) ;
};
struct mode_size {
   int w ;
   int h ;
};
enum hrtimer_restart;
struct ttm_dma_tt {
   struct ttm_tt ttm ;
   void **cpu_address ;
   dma_addr_t *dma_address ;
   struct list_head pages_list ;
};
struct drm_info_node {
   struct list_head list ;
   struct drm_minor *minor ;
   struct drm_info_list const *info_ent ;
   struct dentry *dent ;
};
struct qxl_ttm_tt {
   struct ttm_dma_tt ttm ;
   struct qxl_device *qdev ;
   u64 offset ;
};
typedef int ldv_func_ret_type___6;
enum hrtimer_restart;
struct qxl_fb_image {
   struct qxl_device *qdev ;
   uint32_t pseudo_palette[16U] ;
   struct fb_image fb_image ;
   uint32_t visual ;
};
struct drm_fb_helper;
struct drm_fb_offset {
   int x ;
   int y ;
};
struct drm_fb_helper_crtc {
   struct drm_mode_set mode_set ;
   struct drm_display_mode *desired_mode ;
   int x ;
   int y ;
};
struct drm_fb_helper_surface_size {
   u32 fb_width ;
   u32 fb_height ;
   u32 surface_width ;
   u32 surface_height ;
   u32 surface_bpp ;
   u32 surface_depth ;
};
struct drm_fb_helper_funcs {
   void (*gamma_set)(struct drm_crtc * , u16 , u16 , u16 , int ) ;
   void (*gamma_get)(struct drm_crtc * , u16 * , u16 * , u16 * , int ) ;
   int (*fb_probe)(struct drm_fb_helper * , struct drm_fb_helper_surface_size * ) ;
   bool (*initial_config)(struct drm_fb_helper * , struct drm_fb_helper_crtc ** ,
                          struct drm_display_mode ** , struct drm_fb_offset * , bool * ,
                          int , int ) ;
};
struct drm_fb_helper_connector {
   struct drm_connector *connector ;
};
struct drm_fb_helper {
   struct drm_framebuffer *fb ;
   struct drm_device *dev ;
   int crtc_count ;
   struct drm_fb_helper_crtc *crtc_info ;
   int connector_count ;
   int connector_info_alloc_count ;
   struct drm_fb_helper_connector **connector_info ;
   struct drm_fb_helper_funcs const *funcs ;
   struct fb_info *fbdev ;
   u32 pseudo_palette[17U] ;
   struct list_head kernel_fb_list ;
   bool delayed_hotplug ;
};
struct __anonstruct_dirty_267 {
   spinlock_t lock ;
   unsigned int x1 ;
   unsigned int y1 ;
   unsigned int x2 ;
   unsigned int y2 ;
};
struct qxl_fbdev {
   struct drm_fb_helper helper ;
   struct qxl_framebuffer qfb ;
   struct list_head fbdev_list ;
   struct qxl_device *qdev ;
   spinlock_t delayed_ops_lock ;
   struct list_head delayed_ops ;
   void *shadow ;
   int size ;
   struct __anonstruct_dirty_267 dirty ;
};
typedef int pao_T__;
typedef int pao_T_____0;
enum hrtimer_restart;
enum hrtimer_restart;
struct va_list;
typedef __builtin_va_list __gnuc_va_list;
typedef __gnuc_va_list va_list;
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
enum hrtimer_restart;
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
union __anonunion___u_188 {
   struct idr_layer *__val ;
   char __c[1U] ;
};
union __anonunion___u_190 {
   struct idr_layer *__val ;
   char __c[1U] ;
};
struct ttm_validate_buffer {
   struct list_head head ;
   struct ttm_buffer_object *bo ;
   bool shared ;
};
enum qxl_surface_cmd_type {
    QXL_SURFACE_CMD_CREATE = 0,
    QXL_SURFACE_CMD_DESTROY = 1
} ;
union __anonunion_u_265 {
   struct qxl_surface surface_create ;
};
struct qxl_surface_cmd {
   union qxl_release_info release_info ;
   uint32_t surface_id ;
   uint8_t type ;
   uint32_t flags ;
   union __anonunion_u_265 u ;
};
struct qxl_bo_list {
   struct ttm_validate_buffer tv ;
};
struct ring {
   struct qxl_ring_header header ;
   uint8_t elements[0U] ;
};
struct qxl_ring {
   struct ring *ring ;
   int element_size ;
   int n_elements ;
   int prod_notify ;
   wait_queue_head_t *push_event ;
   spinlock_t lock ;
};
typedef bool ldv_func_ret_type___7;
enum hrtimer_restart;
struct qxl_image_descriptor {
   uint64_t id ;
   uint8_t type ;
   uint8_t flags ;
   uint32_t width ;
   uint32_t height ;
};
struct qxl_bitmap {
   uint8_t format ;
   uint8_t flags ;
   uint32_t x ;
   uint32_t y ;
   uint32_t stride ;
   QXLPHYSICAL palette ;
   QXLPHYSICAL data ;
};
struct qxl_surface_id {
   uint32_t surface_id ;
};
struct qxl_encoder_data {
   uint32_t data_size ;
   uint8_t data[0U] ;
};
union __anonunion_u_266 {
   struct qxl_bitmap bitmap ;
   struct qxl_encoder_data quic ;
   struct qxl_surface_id surface_image ;
};
struct qxl_image {
   struct qxl_image_descriptor descriptor ;
   union __anonunion_u_266 u ;
};
struct qxl_drm_chunk {
   struct list_head head ;
   struct qxl_bo *bo ;
};
struct qxl_drm_image {
   struct qxl_bo *bo ;
   struct list_head chunk_list ;
};
enum hrtimer_restart;
typedef int32_t QXLFIXED;
struct qxl_point {
   int32_t x ;
   int32_t y ;
};
struct qxl_copy_bits {
   struct qxl_point src_pos ;
};
struct qxl_pattern {
   QXLPHYSICAL pat ;
   struct qxl_point pos ;
};
union __anonunion_u_262 {
   uint32_t color ;
   struct qxl_pattern pattern ;
};
struct qxl_brush {
   uint32_t type ;
   union __anonunion_u_262 u ;
};
struct qxl_q_mask {
   uint8_t flags ;
   struct qxl_point pos ;
   QXLPHYSICAL bitmap ;
};
struct qxl_fill {
   struct qxl_brush brush ;
   uint16_t rop_descriptor ;
   struct qxl_q_mask mask ;
};
struct qxl_opaque {
   QXLPHYSICAL src_bitmap ;
   struct qxl_rect src_area ;
   struct qxl_brush brush ;
   uint16_t rop_descriptor ;
   uint8_t scale_mode ;
   struct qxl_q_mask mask ;
};
struct qxl_copy {
   QXLPHYSICAL src_bitmap ;
   struct qxl_rect src_area ;
   uint16_t rop_descriptor ;
   uint8_t scale_mode ;
   struct qxl_q_mask mask ;
};
struct qxl_transparent {
   QXLPHYSICAL src_bitmap ;
   struct qxl_rect src_area ;
   uint32_t src_color ;
   uint32_t true_color ;
};
struct qxl_alpha_blend {
   uint16_t alpha_flags ;
   uint8_t alpha ;
   QXLPHYSICAL src_bitmap ;
   struct qxl_rect src_area ;
};
struct qxl_rop_3 {
   QXLPHYSICAL src_bitmap ;
   struct qxl_rect src_area ;
   struct qxl_brush brush ;
   uint8_t rop3 ;
   uint8_t scale_mode ;
   struct qxl_q_mask mask ;
};
struct qxl_line_attr {
   uint8_t flags ;
   uint8_t join_style ;
   uint8_t end_style ;
   uint8_t style_nseg ;
   QXLFIXED width ;
   QXLFIXED miter_limit ;
   QXLPHYSICAL style ;
};
struct qxl_stroke {
   QXLPHYSICAL path ;
   struct qxl_line_attr attr ;
   struct qxl_brush brush ;
   uint16_t fore_mode ;
   uint16_t back_mode ;
};
struct qxl_text {
   QXLPHYSICAL str ;
   struct qxl_rect back_area ;
   struct qxl_brush fore_brush ;
   struct qxl_brush back_brush ;
   uint16_t fore_mode ;
   uint16_t back_mode ;
};
struct qxl_mask {
   struct qxl_q_mask mask ;
};
struct qxl_clip {
   uint32_t type ;
   QXLPHYSICAL data ;
};
struct qxl_composite {
   uint32_t flags ;
   QXLPHYSICAL src ;
   QXLPHYSICAL src_transform ;
   QXLPHYSICAL mask ;
   QXLPHYSICAL mask_transform ;
   struct qxl_point_1_6 src_origin ;
   struct qxl_point_1_6 mask_origin ;
};
union __anonunion_u_264 {
   struct qxl_fill fill ;
   struct qxl_opaque opaque ;
   struct qxl_copy copy ;
   struct qxl_transparent transparent ;
   struct qxl_alpha_blend alpha_blend ;
   struct qxl_copy_bits copy_bits ;
   struct qxl_copy blend ;
   struct qxl_rop_3 rop3 ;
   struct qxl_stroke stroke ;
   struct qxl_text text ;
   struct qxl_mask blackness ;
   struct qxl_mask invers ;
   struct qxl_mask whiteness ;
   struct qxl_composite composite ;
};
struct qxl_drawable {
   union qxl_release_info release_info ;
   uint32_t surface_id ;
   uint8_t effect ;
   uint8_t type ;
   uint8_t self_bitmap ;
   struct qxl_rect self_bitmap_area ;
   struct qxl_rect bbox ;
   struct qxl_clip clip ;
   uint32_t mm_time ;
   int32_t surfaces_dest[3U] ;
   struct qxl_rect surfaces_rects[3U] ;
   union __anonunion_u_264 u ;
};
struct qxl_clip_rects {
   uint32_t num_rects ;
   struct qxl_data_chunk chunk ;
};
struct qxl_palette {
   uint64_t unique ;
   uint16_t num_ents ;
   uint32_t ents[0U] ;
};
struct qxl_draw_fill {
   struct qxl_device *qdev ;
   struct qxl_rect rect ;
   uint32_t color ;
   uint16_t rop ;
};
enum hrtimer_restart;
union __anonunion___u_268 {
   struct reservation_object_list *__val ;
   char __c[1U] ;
};
enum hrtimer_restart;
enum hrtimer_restart;
struct tss_struct;
struct x86_hw_tss {
   u32 reserved1 ;
   u64 sp0 ;
   u64 sp1 ;
   u64 sp2 ;
   u64 reserved2 ;
   u64 ist[7U] ;
   u32 reserved3 ;
   u32 reserved4 ;
   u16 reserved5 ;
   u16 io_bitmap_base ;
};
struct tss_struct {
   struct x86_hw_tss x86_tss ;
   unsigned long io_bitmap[1025U] ;
   unsigned long SYSENTER_stack[64U] ;
};
struct __anonstruct_mm_segment_t_29 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_29 mm_segment_t;
struct thread_info {
   struct task_struct *task ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int saved_preempt_count ;
   mm_segment_t addr_limit ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
};
enum hrtimer_restart;
struct drm_qxl_alloc {
   uint32_t size ;
   uint32_t handle ;
};
struct drm_qxl_map {
   uint64_t offset ;
   uint32_t handle ;
   uint32_t pad ;
};
struct drm_qxl_reloc {
   uint64_t src_offset ;
   uint64_t dst_offset ;
   uint32_t src_handle ;
   uint32_t dst_handle ;
   uint32_t reloc_type ;
   uint32_t pad ;
};
struct drm_qxl_command {
   uint64_t command ;
   uint64_t relocs ;
   uint32_t type ;
   uint32_t command_size ;
   uint32_t relocs_num ;
   uint32_t pad ;
};
struct drm_qxl_execbuffer {
   uint32_t flags ;
   uint32_t commands_num ;
   uint64_t commands ;
};
struct drm_qxl_update_area {
   uint32_t handle ;
   uint32_t top ;
   uint32_t left ;
   uint32_t bottom ;
   uint32_t right ;
   uint32_t pad ;
};
struct drm_qxl_getparam {
   uint64_t param ;
   uint64_t value ;
};
struct drm_qxl_clientcap {
   uint32_t index ;
   uint32_t pad ;
};
struct drm_qxl_alloc_surf {
   uint32_t format ;
   uint32_t width ;
   uint32_t height ;
   int32_t stride ;
   uint32_t handle ;
   uint32_t pad ;
};
struct qxl_reloc_info {
   int type ;
   struct qxl_bo *dst_bo ;
   uint32_t dst_offset ;
   struct qxl_bo *src_bo ;
   int src_offset ;
};
struct static_key;
struct static_key {
   atomic_t enabled ;
};
enum hrtimer_restart;
union __anonunion___u_188___0 {
   struct idr_layer *__val ;
   char __c[1U] ;
};
union __anonunion___u_190___0 {
   struct idr_layer *__val ;
   char __c[1U] ;
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
struct trace_enum_map {
   char const *system ;
   char const *enum_string ;
   unsigned long enum_value ;
};
union __anonunion___u_272 {
   struct tracepoint_func *__val ;
   char __c[1U] ;
};
union __anonunion___u_274 {
   struct tracepoint_func *__val ;
   char __c[1U] ;
};
enum hrtimer_restart;
extern struct module __this_module ;
extern void *memset(void * , int , size_t ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_13(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_22(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 ) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
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
extern int mutex_lock_interruptible(struct mutex * ) ;
int ldv_mutex_lock_interruptible_21(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_base_of_ww_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_base_of_ww_mutex(struct mutex *lock ) ;
int ldv_mutex_trylock_base_of_ww_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_fb_info(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_struct_mutex_of_drm_device(struct mutex *lock ) ;
void ldv_mutex_lock_update_lock_of_backlight_device(struct mutex *lock ) ;
void ldv_mutex_unlock_update_lock_of_backlight_device(struct mutex *lock ) ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
bool ldv_queue_work_on_5(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                         struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_7(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                         struct work_struct *ldv_func_arg3 ) ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
bool ldv_queue_delayed_work_on_6(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                 struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_9(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                 struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
extern void flush_workqueue(struct workqueue_struct * ) ;
void ldv_flush_workqueue_8(struct workqueue_struct *ldv_func_arg1 ) ;
int ldv_state_variable_8 ;
struct ttm_mem_reg *qxl_bo_driver_group1 ;
int ldv_state_variable_15 ;
int ldv_state_variable_20 ;
struct drm_connector *qxl_connector_funcs_group0 ;
struct ttm_tt *qxl_backend_func_group0 ;
int pci_counter ;
struct work_struct *ldv_work_struct_3_1 ;
struct work_struct *ldv_work_struct_1_3 ;
int ldv_state_variable_0 ;
int ldv_state_variable_21 ;
int ldv_state_variable_5 ;
int ldv_state_variable_13 ;
int ldv_work_1_1 ;
int ldv_state_variable_12 ;
struct ttm_bo_device *qxl_bo_driver_group2 ;
struct drm_gem_object *qxl_driver_group0 ;
int ldv_work_3_2 ;
int ldv_state_variable_14 ;
int ldv_work_3_0 ;
struct fb_info *qxlfb_ops_group1 ;
struct drm_framebuffer *qxl_fb_funcs_group0 ;
int ldv_state_variable_17 ;
struct work_struct *ldv_work_struct_2_3 ;
struct drm_device *qxl_driver_group3 ;
struct drm_display_mode *qxl_crtc_helper_funcs_group1 ;
struct work_struct *ldv_work_struct_2_0 ;
struct drm_file *qxl_driver_group2 ;
int ldv_state_variable_19 ;
int ldv_state_variable_9 ;
struct fence *qxl_fence_ops_group0 ;
struct work_struct *ldv_work_struct_2_2 ;
int ref_cnt ;
int ldv_work_3_3 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
struct work_struct *ldv_work_struct_3_3 ;
struct ttm_tt *qxl_bo_driver_group0 ;
struct drm_encoder *qxl_enc_helper_funcs_group0 ;
struct work_struct *ldv_work_struct_1_0 ;
struct work_struct *ldv_work_struct_1_1 ;
int ldv_state_variable_10 ;
struct drm_crtc *qxl_crtc_helper_funcs_group0 ;
struct drm_display_mode *qxl_enc_helper_funcs_group1 ;
int ldv_work_1_3 ;
struct work_struct *ldv_work_struct_2_1 ;
struct work_struct *ldv_work_struct_3_2 ;
int ldv_state_variable_6 ;
struct ttm_buffer_object *qxl_bo_driver_group3 ;
int ldv_state_variable_16 ;
int ldv_work_3_1 ;
int ldv_state_variable_2 ;
int ldv_work_2_0 ;
struct drm_minor *qxl_driver_group1 ;
struct device *qxl_pm_ops_group1 ;
struct file *qxl_fops_group2 ;
struct work_struct *ldv_work_struct_3_0 ;
int ldv_state_variable_11 ;
int ldv_work_1_2 ;
struct drm_connector *qxl_connector_helper_funcs_group0 ;
int LDV_IN_INTERRUPT = 1;
int ldv_state_variable_18 ;
struct work_struct *ldv_work_struct_1_2 ;
int ldv_work_2_2 ;
int ldv_state_variable_3 ;
struct inode *qxl_fops_group1 ;
struct fb_var_screeninfo *qxlfb_ops_group0 ;
struct drm_crtc *qxl_crtc_funcs_group0 ;
int ldv_work_1_0 ;
int ldv_work_2_3 ;
int ldv_state_variable_4 ;
struct pci_dev *qxl_pci_driver_group1 ;
int ldv_work_2_1 ;
void ldv_initialize_drm_crtc_helper_funcs_15(void) ;
void ldv_initialize_drm_connector_helper_funcs_13(void) ;
void work_init_3(void) ;
void work_init_2(void) ;
void ldv_initialize_drm_crtc_funcs_17(void) ;
void ldv_pci_driver_19(void) ;
void call_and_disable_all_2(int state ) ;
void activate_work_2(struct work_struct *work , int state ) ;
void ldv_dev_pm_ops_20(void) ;
void ldv_initialize_ttm_bo_driver_8(void) ;
void ldv_initialize_drm_framebuffer_funcs_16(void) ;
void ldv_file_operations_21(void) ;
void ldv_initialize_fence_ops_4(void) ;
void ldv_initialize_drm_connector_funcs_12(void) ;
void work_init_1(void) ;
void ldv_initialize_drm_driver_18(void) ;
void ldv_initialize_ttm_backend_func_9(void) ;
void ldv_initialize_drm_encoder_helper_funcs_14(void) ;
void ldv_initialize_fb_ops_6(void) ;
extern void console_lock(void) ;
extern void console_unlock(void) ;
extern bool vgacon_text_force(void) ;
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  return (tmp);
}
}
extern void drm_err(char const * , ...) ;
extern long drm_ioctl(struct file * , unsigned int , unsigned long ) ;
extern int drm_open(struct inode * , struct file * ) ;
extern ssize_t drm_read(struct file * , char * , size_t , loff_t * ) ;
extern int drm_release(struct inode * , struct file * ) ;
extern unsigned int drm_poll(struct file * , struct poll_table_struct * ) ;
extern void drm_put_dev(struct drm_device * ) ;
extern struct dma_buf *drm_gem_prime_export(struct drm_device * , struct drm_gem_object * ,
                                            int ) ;
extern int drm_gem_prime_handle_to_fd(struct drm_device * , struct drm_file * , uint32_t ,
                                      uint32_t , int * ) ;
extern struct drm_gem_object *drm_gem_prime_import(struct drm_device * , struct dma_buf * ) ;
extern int drm_gem_prime_fd_to_handle(struct drm_device * , struct drm_file * , int ,
                                      uint32_t * ) ;
extern int drm_pci_init(struct drm_driver * , struct pci_driver * ) ;
extern void drm_pci_exit(struct drm_driver * , struct pci_driver * ) ;
extern int drm_get_pci_dev(struct pci_dev * , struct pci_device_id const * , struct drm_driver * ) ;
extern int drm_pci_set_busid(struct drm_device * , struct drm_master * ) ;
extern void drm_helper_resume_force_mode(struct drm_device * ) ;
extern void drm_kms_helper_poll_disable(struct drm_device * ) ;
extern void drm_kms_helper_poll_enable(struct drm_device * ) ;
extern int drm_gem_dumb_destroy(struct drm_file * , struct drm_device * , uint32_t ) ;
int qxl_num_crtc ;
struct drm_ioctl_desc const qxl_ioctls[7U] ;
int qxl_driver_load(struct drm_device *dev , unsigned long flags ) ;
int qxl_driver_unload(struct drm_device *dev ) ;
void qxl_reinit_memslots(struct qxl_device *qdev ) ;
int qxl_surf_evict(struct qxl_device *qdev ) ;
int qxl_vram_evict(struct qxl_device *qdev ) ;
void qxl_ring_init_hdr(struct qxl_ring *ring ) ;
int qxl_check_idle(struct qxl_ring *ring ) ;
void qxl_fbdev_set_suspend(struct qxl_device *qdev , int state ) ;
int qxl_create_monitors_object(struct qxl_device *qdev ) ;
int qxl_destroy_monitors_object(struct qxl_device *qdev ) ;
void qxl_gem_object_free(struct drm_gem_object *gobj ) ;
int qxl_gem_object_open(struct drm_gem_object *obj , struct drm_file *file_priv ) ;
void qxl_gem_object_close(struct drm_gem_object *obj , struct drm_file *file_priv ) ;
int qxl_mode_dumb_create(struct drm_file *file_priv , struct drm_device *dev , struct drm_mode_create_dumb *args ) ;
int qxl_mode_dumb_mmap(struct drm_file *file_priv , struct drm_device *dev , uint32_t handle ,
                       uint64_t *offset_p ) ;
int qxl_mmap(struct file *filp , struct vm_area_struct *vma ) ;
void qxl_io_reset(struct qxl_device *qdev ) ;
bool qxl_queue_garbage_collect(struct qxl_device *qdev , bool flush ) ;
int qxl_debugfs_init(struct drm_minor *minor ) ;
void qxl_debugfs_takedown(struct drm_minor *minor ) ;
int qxl_gem_prime_pin(struct drm_gem_object *obj ) ;
void qxl_gem_prime_unpin(struct drm_gem_object *obj ) ;
struct sg_table *qxl_gem_prime_get_sg_table(struct drm_gem_object *obj ) ;
struct drm_gem_object *qxl_gem_prime_import_sg_table(struct drm_device *dev , struct dma_buf_attachment *attach ,
                                                     struct sg_table *table ) ;
void *qxl_gem_prime_vmap(struct drm_gem_object *obj ) ;
void qxl_gem_prime_vunmap(struct drm_gem_object *obj , void *vaddr ) ;
int qxl_gem_prime_mmap(struct drm_gem_object *obj , struct vm_area_struct *area ) ;
irqreturn_t qxl_irq_handler(int irq , void *arg ) ;
int qxl_max_ioctls ;
static struct pci_device_id const pciidlist[3U] = { {6966U, 256U, 4294967295U, 4294967295U, 196608U, 16776960U, 0UL},
        {6966U, 256U, 4294967295U, 4294967295U, 229376U, 16776960U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__pciidlist_device_table[3U] ;
static int qxl_modeset = -1;
int qxl_num_crtc = 4;
static struct drm_driver qxl_driver ;
static struct pci_driver qxl_pci_driver ;
static int qxl_pci_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  int tmp ;
  {
  if ((unsigned int )pdev->revision <= 3U) {
    drm_err("qxl too old, doesn\'t support client_monitors_config, use xf86-video-qxl in user mode");
    return (-22);
  } else {
  }
  tmp = drm_get_pci_dev(pdev, ent, & qxl_driver);
  return (tmp);
}
}
static void qxl_pci_remove(struct pci_dev *pdev )
{
  struct drm_device *dev ;
  void *tmp ;
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct drm_device *)tmp;
  drm_put_dev(dev);
  return;
}
}
static struct file_operations const qxl_fops =
     {& __this_module, 0, & drm_read, 0, 0, 0, 0, & drm_poll, & drm_ioctl, 0, & qxl_mmap,
    0, & drm_open, 0, & drm_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int qxl_drm_freeze(struct drm_device *dev )
{
  struct pci_dev *pdev ;
  struct qxl_device *qdev ;
  struct drm_crtc *crtc ;
  struct list_head const *__mptr ;
  struct drm_crtc_helper_funcs const *crtc_funcs ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  int tmp___0 ;
  {
  pdev = dev->pdev;
  qdev = (struct qxl_device *)dev->dev_private;
  drm_kms_helper_poll_disable(dev);
  console_lock();
  qxl_fbdev_set_suspend(qdev, 1);
  console_unlock();
  __mptr = (struct list_head const *)dev->mode_config.crtc_list.next;
  crtc = (struct drm_crtc *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_41491;
  ldv_41490:
  crtc_funcs = (struct drm_crtc_helper_funcs const *)crtc->helper_private;
  if ((int )crtc->enabled) {
    (*(crtc_funcs->disable))(crtc);
  } else {
  }
  __mptr___0 = (struct list_head const *)crtc->head.next;
  crtc = (struct drm_crtc *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_41491: ;
  if ((unsigned long )(& crtc->head) != (unsigned long )(& dev->mode_config.crtc_list)) {
    goto ldv_41490;
  } else {
  }
  qxl_destroy_monitors_object(qdev);
  qxl_surf_evict(qdev);
  qxl_vram_evict(qdev);
  goto ldv_41494;
  ldv_41493: ;
  ldv_41494:
  tmp = qxl_check_idle(qdev->command_ring);
  if (tmp == 0) {
    goto ldv_41493;
  } else {
  }
  goto ldv_41497;
  ldv_41496:
  qxl_queue_garbage_collect(qdev, 1);
  ldv_41497:
  tmp___0 = qxl_check_idle(qdev->release_ring);
  if (tmp___0 == 0) {
    goto ldv_41496;
  } else {
  }
  pci_save_state(pdev);
  return (0);
}
}
static int qxl_drm_resume(struct drm_device *dev , bool thaw )
{
  struct qxl_device *qdev ;
  {
  qdev = (struct qxl_device *)dev->dev_private;
  (qdev->ram_header)->int_mask = 39U;
  if (! thaw) {
    qxl_reinit_memslots(qdev);
    qxl_ring_init_hdr(qdev->release_ring);
  } else {
  }
  qxl_create_monitors_object(qdev);
  drm_helper_resume_force_mode(dev);
  console_lock();
  qxl_fbdev_set_suspend(qdev, 0);
  console_unlock();
  drm_kms_helper_poll_enable(dev);
  return (0);
}
}
static int qxl_pm_suspend(struct device *dev )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct drm_device *drm_dev ;
  void *tmp ;
  int error ;
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  drm_dev = (struct drm_device *)tmp;
  error = qxl_drm_freeze(drm_dev);
  if (error != 0) {
    return (error);
  } else {
  }
  pci_disable_device(pdev);
  pci_set_power_state(pdev, 3);
  return (0);
}
}
static int qxl_pm_resume(struct device *dev )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct drm_device *drm_dev ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  drm_dev = (struct drm_device *)tmp;
  pci_set_power_state(pdev, 0);
  pci_restore_state(pdev);
  tmp___0 = pci_enable_device(pdev);
  if (tmp___0 != 0) {
    return (-5);
  } else {
  }
  tmp___1 = qxl_drm_resume(drm_dev, 0);
  return (tmp___1);
}
}
static int qxl_pm_thaw(struct device *dev )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct drm_device *drm_dev ;
  void *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  drm_dev = (struct drm_device *)tmp;
  tmp___0 = qxl_drm_resume(drm_dev, 1);
  return (tmp___0);
}
}
static int qxl_pm_freeze(struct device *dev )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct drm_device *drm_dev ;
  void *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  drm_dev = (struct drm_device *)tmp;
  tmp___0 = qxl_drm_freeze(drm_dev);
  return (tmp___0);
}
}
static int qxl_pm_restore(struct device *dev )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct drm_device *drm_dev ;
  void *tmp ;
  struct qxl_device *qdev ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  drm_dev = (struct drm_device *)tmp;
  qdev = (struct qxl_device *)drm_dev->dev_private;
  qxl_io_reset(qdev);
  tmp___0 = qxl_drm_resume(drm_dev, 0);
  return (tmp___0);
}
}
static u32 qxl_noop_get_vblank_counter(struct drm_device *dev , int crtc )
{
  {
  return (0U);
}
}
static int qxl_noop_enable_vblank(struct drm_device *dev , int crtc )
{
  {
  return (0);
}
}
static void qxl_noop_disable_vblank(struct drm_device *dev , int crtc )
{
  {
  return;
}
}
static struct dev_pm_ops const qxl_pm_ops =
     {0, 0, & qxl_pm_suspend, & qxl_pm_resume, & qxl_pm_freeze, & qxl_pm_thaw, & qxl_pm_freeze,
    & qxl_pm_restore, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct pci_driver qxl_pci_driver =
     {{0, 0}, "qxl", (struct pci_device_id const *)(& pciidlist), & qxl_pci_probe,
    & qxl_pci_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0,
                                            0, 0, 0, & qxl_pm_ops, 0}, {{{{{{0}},
                                                                           0U, 0U,
                                                                           0, {0,
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0UL}}}},
                                                                        {0, 0}}};
static struct drm_driver qxl_driver =
     {& qxl_driver_load, 0, 0, 0, 0, 0, & qxl_driver_unload, 0, 0, 0, 0, 0, & drm_pci_set_busid,
    & qxl_noop_get_vblank_counter, & qxl_noop_enable_vblank, & qxl_noop_disable_vblank,
    0, 0, 0, & qxl_irq_handler, 0, 0, 0, 0, 0, 0, 0, & qxl_debugfs_init, & qxl_debugfs_takedown,
    & qxl_gem_object_free, & qxl_gem_object_open, & qxl_gem_object_close, & drm_gem_prime_handle_to_fd,
    & drm_gem_prime_fd_to_handle, & drm_gem_prime_export, & drm_gem_prime_import,
    & qxl_gem_prime_pin, & qxl_gem_prime_unpin, 0, & qxl_gem_prime_get_sg_table, & qxl_gem_prime_import_sg_table,
    & qxl_gem_prime_vmap, & qxl_gem_prime_vunmap, & qxl_gem_prime_mmap, 0, & qxl_mode_dumb_create,
    & qxl_mode_dumb_mmap, & drm_gem_dumb_destroy, 0, 0, 1, 0, (char *)"qxl", (char *)"RH QXL",
    (char *)"20120117", 28864U, 0, (struct drm_ioctl_desc const *)(& qxl_ioctls),
    0, & qxl_fops, {0, 0}};
static int qxl_init(void)
{
  bool tmp ;
  int tmp___0 ;
  {
  tmp = vgacon_text_force();
  if ((int )tmp && qxl_modeset == -1) {
    return (-22);
  } else {
  }
  if (qxl_modeset == 0) {
    return (-22);
  } else {
  }
  qxl_driver.num_ioctls = qxl_max_ioctls;
  tmp___0 = drm_pci_init(& qxl_driver, & qxl_pci_driver);
  return (tmp___0);
}
}
static void qxl_exit(void)
{
  {
  drm_pci_exit(& qxl_driver, & qxl_pci_driver);
  return;
}
}
int ldv_retval_20 ;
int ldv_retval_18 ;
int ldv_retval_2 ;
extern int ldv_complete_20(void) ;
int ldv_retval_5 ;
int ldv_retval_0 ;
int ldv_retval_11 ;
int ldv_retval_1 ;
extern int ldv_prepare_20(void) ;
int ldv_retval_15 ;
extern int ldv_restore_early_20(void) ;
int ldv_retval_16 ;
extern int ldv_resume_early_20(void) ;
extern int ldv_suspend_late_20(void) ;
void ldv_check_final_state(void) ;
int ldv_retval_8 ;
extern int ldv_suspend_noirq_20(void) ;
extern int ldv_freeze_late_20(void) ;
int ldv_retval_7 ;
int ldv_retval_19 ;
extern int ldv_resume_noirq_20(void) ;
extern int ldv_thaw_early_20(void) ;
int ldv_retval_14 ;
int ldv_retval_17 ;
extern int ldv_restore_noirq_20(void) ;
int ldv_retval_12 ;
extern void ldv_initialize(void) ;
int ldv_retval_6 ;
extern int ldv_poweroff_late_20(void) ;
int ldv_retval_21 ;
int ldv_retval_13 ;
extern int ldv_poweroff_noirq_20(void) ;
int ldv_retval_9 ;
int ldv_retval_10 ;
extern int ldv_shutdown_19(void) ;
int ldv_retval_4 ;
extern int ldv_thaw_noirq_20(void) ;
extern int ldv_freeze_noirq_20(void) ;
int ldv_retval_3 ;
void ldv_pci_driver_19(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(2976UL);
  qxl_pci_driver_group1 = (struct pci_dev *)tmp;
  return;
}
}
void ldv_dev_pm_ops_20(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1416UL);
  qxl_pm_ops_group1 = (struct device *)tmp;
  return;
}
}
void ldv_file_operations_21(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  qxl_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  qxl_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_initialize_drm_driver_18(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  tmp = ldv_init_zalloc(240UL);
  qxl_driver_group1 = (struct drm_minor *)tmp;
  tmp___0 = ldv_init_zalloc(744UL);
  qxl_driver_group2 = (struct drm_file *)tmp___0;
  tmp___1 = ldv_init_zalloc(248UL);
  qxl_driver_group0 = (struct drm_gem_object *)tmp___1;
  tmp___2 = ldv_init_zalloc(3320UL);
  qxl_driver_group3 = (struct drm_device *)tmp___2;
  return;
}
}
void ldv_main_exported_11(void) ;
void ldv_main_exported_17(void) ;
void ldv_main_exported_12(void) ;
void ldv_main_exported_15(void) ;
void ldv_main_exported_14(void) ;
void ldv_main_exported_10(void) ;
void ldv_main_exported_13(void) ;
void ldv_main_exported_16(void) ;
void ldv_main_exported_6(void) ;
void ldv_main_exported_7(void) ;
void ldv_main_exported_5(void) ;
void ldv_main_exported_4(void) ;
void ldv_main_exported_8(void) ;
void ldv_main_exported_9(void) ;
int main(void)
{
  unsigned long ldvarg1 ;
  struct vm_area_struct *ldvarg7 ;
  void *tmp ;
  loff_t *ldvarg4 ;
  void *tmp___0 ;
  struct poll_table_struct *ldvarg3 ;
  void *tmp___1 ;
  size_t ldvarg5 ;
  unsigned int ldvarg2 ;
  char *ldvarg6 ;
  void *tmp___2 ;
  uint64_t *ldvarg39 ;
  void *tmp___3 ;
  struct vm_area_struct *ldvarg32 ;
  void *tmp___4 ;
  void *ldvarg31 ;
  void *tmp___5 ;
  int ldvarg41 ;
  int ldvarg23 ;
  struct dma_buf_attachment *ldvarg43 ;
  struct sg_table *ldvarg42 ;
  void *tmp___7 ;
  int *ldvarg37 ;
  void *tmp___8 ;
  uint32_t ldvarg36 ;
  uint32_t *ldvarg29 ;
  void *tmp___9 ;
  uint32_t ldvarg40 ;
  int ldvarg24 ;
  struct drm_mode_create_dumb *ldvarg26 ;
  void *tmp___10 ;
  int ldvarg27 ;
  uint32_t ldvarg35 ;
  struct dma_buf *ldvarg38 ;
  int ldvarg30 ;
  uint32_t ldvarg33 ;
  void *ldvarg25 ;
  void *tmp___12 ;
  int ldvarg22 ;
  struct drm_master *ldvarg28 ;
  void *tmp___13 ;
  unsigned long ldvarg34 ;
  struct pci_device_id *ldvarg84 ;
  void *tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  {
  tmp = ldv_init_zalloc(184UL);
  ldvarg7 = (struct vm_area_struct *)tmp;
  tmp___0 = ldv_init_zalloc(8UL);
  ldvarg4 = (loff_t *)tmp___0;
  tmp___1 = ldv_init_zalloc(16UL);
  ldvarg3 = (struct poll_table_struct *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg6 = (char *)tmp___2;
  tmp___3 = ldv_init_zalloc(8UL);
  ldvarg39 = (uint64_t *)tmp___3;
  tmp___4 = ldv_init_zalloc(184UL);
  ldvarg32 = (struct vm_area_struct *)tmp___4;
  tmp___5 = ldv_init_zalloc(1UL);
  ldvarg31 = tmp___5;
  ldvarg43 = ldv_malloc(0UL);
  tmp___7 = ldv_init_zalloc(16UL);
  ldvarg42 = (struct sg_table *)tmp___7;
  tmp___8 = ldv_init_zalloc(4UL);
  ldvarg37 = (int *)tmp___8;
  tmp___9 = ldv_init_zalloc(4UL);
  ldvarg29 = (uint32_t *)tmp___9;
  tmp___10 = ldv_init_zalloc(32UL);
  ldvarg26 = (struct drm_mode_create_dumb *)tmp___10;
  ldvarg38 = ldv_malloc(0UL);
  tmp___12 = ldv_init_zalloc(1UL);
  ldvarg25 = tmp___12;
  tmp___13 = ldv_init_zalloc(352UL);
  ldvarg28 = (struct drm_master *)tmp___13;
  tmp___14 = ldv_init_zalloc(32UL);
  ldvarg84 = (struct pci_device_id *)tmp___14;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg1), 0, 8UL);
  ldv_memset((void *)(& ldvarg5), 0, 8UL);
  ldv_memset((void *)(& ldvarg2), 0, 4UL);
  ldv_memset((void *)(& ldvarg41), 0, 4UL);
  ldv_memset((void *)(& ldvarg23), 0, 4UL);
  ldv_memset((void *)(& ldvarg36), 0, 4UL);
  ldv_memset((void *)(& ldvarg40), 0, 4UL);
  ldv_memset((void *)(& ldvarg24), 0, 4UL);
  ldv_memset((void *)(& ldvarg27), 0, 4UL);
  ldv_memset((void *)(& ldvarg35), 0, 4UL);
  ldv_memset((void *)(& ldvarg30), 0, 4UL);
  ldv_memset((void *)(& ldvarg33), 0, 4UL);
  ldv_memset((void *)(& ldvarg22), 0, 4UL);
  ldv_memset((void *)(& ldvarg34), 0, 8UL);
  ldv_state_variable_11 = 0;
  ldv_state_variable_21 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_17 = 0;
  work_init_2();
  ldv_state_variable_2 = 1;
  work_init_1();
  ldv_state_variable_1 = 1;
  ldv_state_variable_18 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_16 = 0;
  ldv_state_variable_13 = 0;
  ldv_state_variable_6 = 0;
  work_init_3();
  ldv_state_variable_3 = 1;
  ldv_state_variable_9 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_20 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_15 = 0;
  ldv_state_variable_8 = 0;
  ldv_state_variable_4 = 0;
  ldv_state_variable_19 = 0;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 0;
  ldv_41808:
  tmp___15 = __VERIFIER_nondet_int();
  switch (tmp___15) {
  case 0: ;
  if (ldv_state_variable_11 != 0) {
    ldv_main_exported_11();
  } else {
  }
  goto ldv_41717;
  case 1: ;
  if (ldv_state_variable_21 != 0) {
    tmp___16 = __VERIFIER_nondet_int();
    switch (tmp___16) {
    case 0: ;
    if (ldv_state_variable_21 == 1) {
      qxl_mmap(qxl_fops_group2, ldvarg7);
      ldv_state_variable_21 = 1;
    } else {
    }
    if (ldv_state_variable_21 == 2) {
      qxl_mmap(qxl_fops_group2, ldvarg7);
      ldv_state_variable_21 = 2;
    } else {
    }
    goto ldv_41720;
    case 1: ;
    if (ldv_state_variable_21 == 2) {
      drm_release(qxl_fops_group1, qxl_fops_group2);
      ldv_state_variable_21 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_41720;
    case 2: ;
    if (ldv_state_variable_21 == 2) {
      drm_read(qxl_fops_group2, ldvarg6, ldvarg5, ldvarg4);
      ldv_state_variable_21 = 2;
    } else {
    }
    goto ldv_41720;
    case 3: ;
    if (ldv_state_variable_21 == 1) {
      drm_poll(qxl_fops_group2, ldvarg3);
      ldv_state_variable_21 = 1;
    } else {
    }
    if (ldv_state_variable_21 == 2) {
      drm_poll(qxl_fops_group2, ldvarg3);
      ldv_state_variable_21 = 2;
    } else {
    }
    goto ldv_41720;
    case 4: ;
    if (ldv_state_variable_21 == 1) {
      ldv_retval_0 = drm_open(qxl_fops_group1, qxl_fops_group2);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_21 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_41720;
    case 5: ;
    if (ldv_state_variable_21 == 2) {
      drm_ioctl(qxl_fops_group2, ldvarg2, ldvarg1);
      ldv_state_variable_21 = 2;
    } else {
    }
    goto ldv_41720;
    default:
    ldv_stop();
    }
    ldv_41720: ;
  } else {
  }
  goto ldv_41717;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    ldv_main_exported_7();
  } else {
  }
  goto ldv_41717;
  case 3: ;
  if (ldv_state_variable_17 != 0) {
    ldv_main_exported_17();
  } else {
  }
  goto ldv_41717;
  case 4: ;
  goto ldv_41717;
  case 5: ;
  goto ldv_41717;
  case 6: ;
  if (ldv_state_variable_18 != 0) {
    tmp___17 = __VERIFIER_nondet_int();
    switch (tmp___17) {
    case 0: ;
    if (ldv_state_variable_18 == 1) {
      qxl_gem_prime_import_sg_table(qxl_driver_group3, ldvarg43, ldvarg42);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 1: ;
    if (ldv_state_variable_18 == 1) {
      qxl_noop_get_vblank_counter(qxl_driver_group3, ldvarg41);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 2: ;
    if (ldv_state_variable_18 == 1) {
      qxl_mode_dumb_mmap(qxl_driver_group2, qxl_driver_group3, ldvarg40, ldvarg39);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 3: ;
    if (ldv_state_variable_18 == 1) {
      drm_gem_prime_import(qxl_driver_group3, ldvarg38);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 4: ;
    if (ldv_state_variable_18 == 1) {
      qxl_gem_object_open(qxl_driver_group0, qxl_driver_group2);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 5: ;
    if (ldv_state_variable_18 == 1) {
      qxl_debugfs_takedown(qxl_driver_group1);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 6: ;
    if (ldv_state_variable_18 == 1) {
      qxl_gem_prime_pin(qxl_driver_group0);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 7: ;
    if (ldv_state_variable_18 == 1) {
      qxl_gem_object_free(qxl_driver_group0);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 8: ;
    if (ldv_state_variable_18 == 1) {
      qxl_gem_prime_unpin(qxl_driver_group0);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 9: ;
    if (ldv_state_variable_18 == 1) {
      qxl_driver_unload(qxl_driver_group3);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 10: ;
    if (ldv_state_variable_18 == 1) {
      drm_gem_prime_handle_to_fd(qxl_driver_group3, qxl_driver_group2, ldvarg36, ldvarg35,
                                 ldvarg37);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 11: ;
    if (ldv_state_variable_18 == 1) {
      qxl_gem_object_close(qxl_driver_group0, qxl_driver_group2);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 12: ;
    if (ldv_state_variable_18 == 1) {
      qxl_driver_load(qxl_driver_group3, ldvarg34);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 13: ;
    if (ldv_state_variable_18 == 1) {
      qxl_gem_prime_get_sg_table(qxl_driver_group0);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 14: ;
    if (ldv_state_variable_18 == 1) {
      drm_gem_dumb_destroy(qxl_driver_group2, qxl_driver_group3, ldvarg33);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 15: ;
    if (ldv_state_variable_18 == 1) {
      qxl_gem_prime_mmap(qxl_driver_group0, ldvarg32);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 16: ;
    if (ldv_state_variable_18 == 1) {
      qxl_gem_prime_vunmap(qxl_driver_group0, ldvarg31);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 17: ;
    if (ldv_state_variable_18 == 1) {
      drm_gem_prime_fd_to_handle(qxl_driver_group3, qxl_driver_group2, ldvarg30, ldvarg29);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 18: ;
    if (ldv_state_variable_18 == 1) {
      drm_pci_set_busid(qxl_driver_group3, ldvarg28);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 19: ;
    if (ldv_state_variable_18 == 1) {
      drm_gem_prime_export(qxl_driver_group3, qxl_driver_group0, ldvarg27);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 20: ;
    if (ldv_state_variable_18 == 1) {
      qxl_gem_prime_vmap(qxl_driver_group0);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 21: ;
    if (ldv_state_variable_18 == 1) {
      qxl_mode_dumb_create(qxl_driver_group2, qxl_driver_group3, ldvarg26);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 22: ;
    if (ldv_state_variable_18 == 1) {
      qxl_irq_handler(ldvarg24, ldvarg25);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 23: ;
    if (ldv_state_variable_18 == 1) {
      qxl_noop_enable_vblank(qxl_driver_group3, ldvarg23);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 24: ;
    if (ldv_state_variable_18 == 1) {
      qxl_debugfs_init(qxl_driver_group1);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    case 25: ;
    if (ldv_state_variable_18 == 1) {
      qxl_noop_disable_vblank(qxl_driver_group3, ldvarg22);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_41733;
    default:
    ldv_stop();
    }
    ldv_41733: ;
  } else {
  }
  goto ldv_41717;
  case 7: ;
  if (ldv_state_variable_0 != 0) {
    tmp___18 = __VERIFIER_nondet_int();
    switch (tmp___18) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      qxl_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_41763;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = qxl_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_state_variable_19 = 1;
        ldv_pci_driver_19();
        ldv_state_variable_10 = 1;
        ldv_state_variable_4 = 1;
        ldv_initialize_fence_ops_4();
        ldv_state_variable_8 = 1;
        ldv_initialize_ttm_bo_driver_8();
        ldv_state_variable_15 = 1;
        ldv_initialize_drm_crtc_helper_funcs_15();
        ldv_state_variable_14 = 1;
        ldv_initialize_drm_encoder_helper_funcs_14();
        ldv_state_variable_20 = 1;
        ldv_dev_pm_ops_20();
        ldv_state_variable_12 = 1;
        ldv_initialize_drm_connector_funcs_12();
        ldv_state_variable_9 = 1;
        ldv_initialize_ttm_backend_func_9();
        ldv_state_variable_6 = 1;
        ldv_initialize_fb_ops_6();
        ldv_state_variable_13 = 1;
        ldv_initialize_drm_connector_helper_funcs_13();
        ldv_state_variable_16 = 1;
        ldv_initialize_drm_framebuffer_funcs_16();
        ldv_state_variable_18 = 1;
        ldv_initialize_drm_driver_18();
        ldv_state_variable_17 = 1;
        ldv_initialize_drm_crtc_funcs_17();
        ldv_state_variable_7 = 1;
        ldv_state_variable_21 = 1;
        ldv_file_operations_21();
        ldv_state_variable_11 = 1;
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_41763;
    default:
    ldv_stop();
    }
    ldv_41763: ;
  } else {
  }
  goto ldv_41717;
  case 8: ;
  if (ldv_state_variable_16 != 0) {
    ldv_main_exported_16();
  } else {
  }
  goto ldv_41717;
  case 9: ;
  if (ldv_state_variable_13 != 0) {
    ldv_main_exported_13();
  } else {
  }
  goto ldv_41717;
  case 10: ;
  if (ldv_state_variable_6 != 0) {
    ldv_main_exported_6();
  } else {
  }
  goto ldv_41717;
  case 11: ;
  goto ldv_41717;
  case 12: ;
  if (ldv_state_variable_9 != 0) {
    ldv_main_exported_9();
  } else {
  }
  goto ldv_41717;
  case 13: ;
  if (ldv_state_variable_12 != 0) {
    ldv_main_exported_12();
  } else {
  }
  goto ldv_41717;
  case 14: ;
  if (ldv_state_variable_20 != 0) {
    tmp___19 = __VERIFIER_nondet_int();
    switch (tmp___19) {
    case 0: ;
    if (ldv_state_variable_20 == 12) {
      ldv_retval_20 = qxl_pm_restore(qxl_pm_ops_group1);
      if (ldv_retval_20 == 0) {
        ldv_state_variable_20 = 15;
      } else {
      }
    } else {
    }
    goto ldv_41774;
    case 1: ;
    if (ldv_state_variable_20 == 13) {
      ldv_retval_19 = qxl_pm_thaw(qxl_pm_ops_group1);
      if (ldv_retval_19 == 0) {
        ldv_state_variable_20 = 15;
      } else {
      }
    } else {
    }
    goto ldv_41774;
    case 2: ;
    if (ldv_state_variable_20 == 2) {
      ldv_retval_18 = qxl_pm_freeze(qxl_pm_ops_group1);
      if (ldv_retval_18 == 0) {
        ldv_state_variable_20 = 3;
      } else {
      }
    } else {
    }
    goto ldv_41774;
    case 3: ;
    if (ldv_state_variable_20 == 2) {
      ldv_retval_17 = qxl_pm_freeze(qxl_pm_ops_group1);
      if (ldv_retval_17 == 0) {
        ldv_state_variable_20 = 4;
      } else {
      }
    } else {
    }
    goto ldv_41774;
    case 4: ;
    if (ldv_state_variable_20 == 2) {
      ldv_retval_16 = qxl_pm_suspend(qxl_pm_ops_group1);
      if (ldv_retval_16 == 0) {
        ldv_state_variable_20 = 5;
      } else {
      }
    } else {
    }
    goto ldv_41774;
    case 5: ;
    if (ldv_state_variable_20 == 14) {
      ldv_retval_15 = qxl_pm_resume(qxl_pm_ops_group1);
      if (ldv_retval_15 == 0) {
        ldv_state_variable_20 = 15;
      } else {
      }
    } else {
    }
    goto ldv_41774;
    case 6: ;
    if (ldv_state_variable_20 == 5) {
      ldv_retval_14 = ldv_suspend_late_20();
      if (ldv_retval_14 == 0) {
        ldv_state_variable_20 = 10;
      } else {
      }
    } else {
    }
    goto ldv_41774;
    case 7: ;
    if (ldv_state_variable_20 == 7) {
      ldv_retval_13 = ldv_restore_early_20();
      if (ldv_retval_13 == 0) {
        ldv_state_variable_20 = 12;
      } else {
      }
    } else {
    }
    goto ldv_41774;
    case 8: ;
    if (ldv_state_variable_20 == 10) {
      ldv_retval_12 = ldv_resume_early_20();
      if (ldv_retval_12 == 0) {
        ldv_state_variable_20 = 14;
      } else {
      }
    } else {
    }
    goto ldv_41774;
    case 9: ;
    if (ldv_state_variable_20 == 9) {
      ldv_retval_11 = ldv_thaw_early_20();
      if (ldv_retval_11 == 0) {
        ldv_state_variable_20 = 13;
      } else {
      }
    } else {
    }
    goto ldv_41774;
    case 10: ;
    if (ldv_state_variable_20 == 11) {
      ldv_retval_10 = ldv_resume_noirq_20();
      if (ldv_retval_10 == 0) {
        ldv_state_variable_20 = 14;
      } else {
      }
    } else {
    }
    goto ldv_41774;
    case 11: ;
    if (ldv_state_variable_20 == 4) {
      ldv_retval_9 = ldv_freeze_noirq_20();
      if (ldv_retval_9 == 0) {
        ldv_state_variable_20 = 8;
      } else {
      }
    } else {
    }
    goto ldv_41774;
    case 12: ;
    if (ldv_state_variable_20 == 1) {
      ldv_retval_8 = ldv_prepare_20();
      if (ldv_retval_8 == 0) {
        ldv_state_variable_20 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_41774;
    case 13: ;
    if (ldv_state_variable_20 == 4) {
      ldv_retval_7 = ldv_freeze_late_20();
      if (ldv_retval_7 == 0) {
        ldv_state_variable_20 = 9;
      } else {
      }
    } else {
    }
    goto ldv_41774;
    case 14: ;
    if (ldv_state_variable_20 == 8) {
      ldv_retval_6 = ldv_thaw_noirq_20();
      if (ldv_retval_6 == 0) {
        ldv_state_variable_20 = 13;
      } else {
      }
    } else {
    }
    goto ldv_41774;
    case 15: ;
    if (ldv_state_variable_20 == 3) {
      ldv_retval_5 = ldv_poweroff_noirq_20();
      if (ldv_retval_5 == 0) {
        ldv_state_variable_20 = 6;
      } else {
      }
    } else {
    }
    goto ldv_41774;
    case 16: ;
    if (ldv_state_variable_20 == 3) {
      ldv_retval_4 = ldv_poweroff_late_20();
      if (ldv_retval_4 == 0) {
        ldv_state_variable_20 = 7;
      } else {
      }
    } else {
    }
    goto ldv_41774;
    case 17: ;
    if (ldv_state_variable_20 == 6) {
      ldv_retval_3 = ldv_restore_noirq_20();
      if (ldv_retval_3 == 0) {
        ldv_state_variable_20 = 12;
      } else {
      }
    } else {
    }
    goto ldv_41774;
    case 18: ;
    if (ldv_state_variable_20 == 5) {
      ldv_retval_2 = ldv_suspend_noirq_20();
      if (ldv_retval_2 == 0) {
        ldv_state_variable_20 = 11;
      } else {
      }
    } else {
    }
    goto ldv_41774;
    case 19: ;
    if (ldv_state_variable_20 == 15) {
      ldv_complete_20();
      ldv_state_variable_20 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_41774;
    default:
    ldv_stop();
    }
    ldv_41774: ;
  } else {
  }
  goto ldv_41717;
  case 15: ;
  if (ldv_state_variable_14 != 0) {
    ldv_main_exported_14();
  } else {
  }
  goto ldv_41717;
  case 16: ;
  if (ldv_state_variable_15 != 0) {
    ldv_main_exported_15();
  } else {
  }
  goto ldv_41717;
  case 17: ;
  if (ldv_state_variable_8 != 0) {
    ldv_main_exported_8();
  } else {
  }
  goto ldv_41717;
  case 18: ;
  if (ldv_state_variable_4 != 0) {
    ldv_main_exported_4();
  } else {
  }
  goto ldv_41717;
  case 19: ;
  if (ldv_state_variable_19 != 0) {
    tmp___20 = __VERIFIER_nondet_int();
    switch (tmp___20) {
    case 0: ;
    if (ldv_state_variable_19 == 1) {
      ldv_retval_21 = qxl_pci_probe(qxl_pci_driver_group1, (struct pci_device_id const *)ldvarg84);
      if (ldv_retval_21 == 0) {
        ldv_state_variable_19 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_41801;
    case 1: ;
    if (ldv_state_variable_19 == 2) {
      qxl_pci_remove(qxl_pci_driver_group1);
      ldv_state_variable_19 = 1;
    } else {
    }
    goto ldv_41801;
    case 2: ;
    if (ldv_state_variable_19 == 2) {
      ldv_shutdown_19();
      ldv_state_variable_19 = 2;
    } else {
    }
    goto ldv_41801;
    default:
    ldv_stop();
    }
    ldv_41801: ;
  } else {
  }
  goto ldv_41717;
  case 20: ;
  if (ldv_state_variable_10 != 0) {
    ldv_main_exported_10();
  } else {
  }
  goto ldv_41717;
  case 21: ;
  if (ldv_state_variable_5 != 0) {
    ldv_main_exported_5();
  } else {
  }
  goto ldv_41717;
  default:
  ldv_stop();
  }
  ldv_41717: ;
  goto ldv_41808;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
bool ldv_queue_work_on_5(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                         struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_6(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                 struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_7(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                         struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_8(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_9(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                 struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_13(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
void ldv_mutex_unlock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_fb_info(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_base_of_ww_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_21(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
int ldv_mutex_trylock_22(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern int printk(char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
int ldv_mutex_trylock_58(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_67(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_56(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_59(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_60(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_63(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_64(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_70(struct mutex *ldv_func_arg1 ) ;
__inline static long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
int ldv_mutex_lock_interruptible_66(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_55(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_57(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_61(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_62(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_65(struct mutex *ldv_func_arg1 ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField17.rlock);
}
}
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
void ldv_destroy_workqueue_72(struct workqueue_struct *ldv_func_arg1 ) ;
bool ldv_queue_work_on_50(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_52(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_51(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_54(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_53(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_71(struct workqueue_struct *ldv_func_arg1 ) ;
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
extern void *ioremap_wc(resource_size_t , unsigned long ) ;
extern void idr_init(struct idr * ) ;
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
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
void call_and_disable_work_1(struct work_struct *work ) ;
void call_and_disable_all_1(int state ) ;
void activate_work_1(struct work_struct *work , int state ) ;
void disable_work_1(struct work_struct *work ) ;
void invoke_work_1(void) ;
extern void drm_ut_debug_printk(char const * , char const * , ...) ;
__inline static int drm_core_check_feature(struct drm_device *dev , int feature )
{
  {
  return (((dev->driver)->driver_features & (u32 )feature) != 0U);
}
}
extern int drm_vblank_init(struct drm_device * , int ) ;
extern void drm_vblank_cleanup(struct drm_device * ) ;
extern unsigned int drm_debug ;
int qxl_log_level ;
void qxl_debugfs_remove_files(struct qxl_device *qdev ) ;
int qxl_modeset_init(struct qxl_device *qdev ) ;
void qxl_modeset_fini(struct qxl_device *qdev ) ;
int qxl_bo_init(struct qxl_device *qdev ) ;
void qxl_bo_fini(struct qxl_device *qdev ) ;
struct qxl_ring *qxl_ring_create(struct qxl_ring_header *header , int element_size ,
                                 int n_elements , int prod_notify , bool set_prod_notify ,
                                 wait_queue_head_t *push_event ) ;
void qxl_ring_free(struct qxl_ring *ring ) ;
void qxl_io_memslot_add(struct qxl_device *qdev , uint8_t id ) ;
int qxl_garbage_collect(struct qxl_device *qdev ) ;
int qxl_irq_init(struct qxl_device *qdev ) ;
int qxl_fb_init(struct qxl_device *qdev ) ;
void qxl_bo_unref(struct qxl_bo **bo ) ;
extern void drm_kms_helper_poll_init(struct drm_device * ) ;
__inline static struct io_mapping *io_mapping_create_wc(resource_size_t base , unsigned long size )
{
  void *tmp ;
  {
  tmp = ioremap_wc(base, size);
  return ((struct io_mapping *)tmp);
}
}
__inline static void io_mapping_free(struct io_mapping *mapping )
{
  {
  iounmap((void volatile *)mapping);
  return;
}
}
static void qxl_dump_mode(struct qxl_device *qdev , void *p )
{
  struct qxl_mode *m ;
  long tmp ;
  {
  m = (struct qxl_mode *)p;
  tmp = ldv__builtin_expect((drm_debug & 4U) != 0U, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("qxl_dump_mode", "%d: %dx%d %d bits, stride %d, %dmm x %dmm, orientation %d\n",
                        m->id, m->x_res, m->y_res, m->bits, m->stride, m->x_mili,
                        m->y_mili, m->orientation);
  } else {
  }
  return;
}
}
static bool qxl_check_device(struct qxl_device *qdev )
{
  struct qxl_rom *rom ;
  int mode_offset ;
  int i ;
  {
  rom = qdev->rom;
  if (rom->magic != 1330796625U) {
    drm_err("bad rom signature %x\n", rom->magic);
    return (0);
  } else {
  }
  printk("\016[drm] Device Version %d.%d\n", rom->id, rom->update_id);
  printk("\016[drm] Compression level %d log level %d\n", rom->compression_level,
         rom->log_level);
  printk("\016[drm] Currently using mode #%d, list at 0x%x\n", rom->mode, rom->modes_offset);
  printk("\016[drm] %d io pages at offset 0x%x\n", rom->num_io_pages, rom->pages_offset);
  printk("\016[drm] %d byte draw area at offset 0x%x\n", rom->surface0_area_size,
         rom->draw_area_offset);
  qdev->vram_size = (resource_size_t )rom->surface0_area_size;
  printk("\016[drm] RAM header offset: 0x%x\n", rom->ram_header_offset);
  mode_offset = (int )(rom->modes_offset / 4U);
  qdev->mode_info.num_modes = (int )*((u32 *)rom + (unsigned long )mode_offset);
  printk("\016[drm] rom modes offset 0x%x for %d modes\n", rom->modes_offset, qdev->mode_info.num_modes);
  qdev->mode_info.modes = (struct qxl_mode *)rom + ((unsigned long )mode_offset + 1UL);
  i = 0;
  goto ldv_41259;
  ldv_41258:
  qxl_dump_mode(qdev, (void *)qdev->mode_info.modes + (unsigned long )i);
  i = i + 1;
  ldv_41259: ;
  if (qdev->mode_info.num_modes > i) {
    goto ldv_41258;
  } else {
  }
  return (1);
}
}
static void setup_hw_slot(struct qxl_device *qdev , int slot_index , struct qxl_memslot *slot )
{
  {
  (qdev->ram_header)->mem_slot.mem_start = slot->start_phys_addr;
  (qdev->ram_header)->mem_slot.mem_end = slot->end_phys_addr;
  qxl_io_memslot_add(qdev, (int )((uint8_t )slot_index));
  return;
}
}
static uint8_t setup_slot(struct qxl_device *qdev , uint8_t slot_index_offset , unsigned long start_phys_addr ,
                          unsigned long end_phys_addr )
{
  uint64_t high_bits ;
  struct qxl_memslot *slot ;
  uint8_t slot_index ;
  {
  slot_index = (int )(qdev->rom)->slots_start + (int )slot_index_offset;
  slot = qdev->mem_slots + (unsigned long )slot_index;
  slot->start_phys_addr = (uint64_t )start_phys_addr;
  slot->end_phys_addr = (uint64_t )end_phys_addr;
  setup_hw_slot(qdev, (int )slot_index, slot);
  slot->generation = (qdev->rom)->slot_generation;
  high_bits = (uint64_t )((int )slot_index << (int )qdev->slot_gen_bits);
  high_bits = (uint64_t )slot->generation | high_bits;
  high_bits = high_bits << (64 - ((int )qdev->slot_gen_bits + (int )qdev->slot_id_bits));
  slot->high_bits = high_bits;
  return (slot_index);
}
}
void qxl_reinit_memslots(struct qxl_device *qdev )
{
  {
  setup_hw_slot(qdev, (int )qdev->main_mem_slot, qdev->mem_slots + (unsigned long )qdev->main_mem_slot);
  setup_hw_slot(qdev, (int )qdev->surfaces_mem_slot, qdev->mem_slots + (unsigned long )qdev->surfaces_mem_slot);
  return;
}
}
static void qxl_gc_work(struct work_struct *work )
{
  struct qxl_device *qdev ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  qdev = (struct qxl_device *)__mptr + 0xffffffffffffebd0UL;
  qxl_garbage_collect(qdev);
  return;
}
}
static int qxl_device_init(struct qxl_device *qdev , struct drm_device *ddev , struct pci_dev *pdev ,
                           unsigned long flags )
{
  int r ;
  int sb ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  long tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  struct lock_class_key __key___5 ;
  struct lock_class_key __key___6 ;
  struct lock_class_key __key___7 ;
  char const *__lock_name ;
  struct workqueue_struct *tmp___3 ;
  struct lock_class_key __key___8 ;
  atomic_long_t __constr_expr_0 ;
  {
  qdev->dev = & pdev->dev;
  qdev->ddev = ddev;
  qdev->pdev = pdev;
  qdev->flags = flags;
  __mutex_init(& qdev->gem.mutex, "&qdev->gem.mutex", & __key);
  __mutex_init(& qdev->update_area_mutex, "&qdev->update_area_mutex", & __key___0);
  __mutex_init(& qdev->release_mutex, "&qdev->release_mutex", & __key___1);
  __mutex_init(& qdev->surf_evict_mutex, "&qdev->surf_evict_mutex", & __key___2);
  INIT_LIST_HEAD(& qdev->gem.objects);
  qdev->rom_base = pdev->resource[2].start;
  qdev->rom_size = pdev->resource[2].start != 0ULL || pdev->resource[2].end != pdev->resource[2].start ? (pdev->resource[2].end - pdev->resource[2].start) + 1ULL : 0ULL;
  qdev->vram_base = pdev->resource[0].start;
  qdev->io_base = (int )pdev->resource[3].start;
  qdev->vram_mapping = io_mapping_create_wc(qdev->vram_base, pdev->resource[0].start != 0ULL || pdev->resource[0].end != pdev->resource[0].start ? (unsigned long )((pdev->resource[0].end - pdev->resource[0].start) + 1ULL) : 0UL);
  if ((pdev->resource[4].start != 0ULL || pdev->resource[4].end != pdev->resource[4].start) && pdev->resource[4].end - pdev->resource[4].start != 0xffffffffffffffffULL) {
    sb = 4;
    qdev->surfaceram_base = pdev->resource[sb].start;
    qdev->surfaceram_size = pdev->resource[sb].start != 0ULL || pdev->resource[sb].end != pdev->resource[sb].start ? (pdev->resource[sb].end - pdev->resource[sb].start) + 1ULL : 0ULL;
    qdev->surface_mapping = io_mapping_create_wc(qdev->surfaceram_base, (unsigned long )qdev->surfaceram_size);
  } else {
  }
  if ((unsigned long )qdev->surface_mapping == (unsigned long )((struct io_mapping *)0)) {
    sb = 1;
    qdev->surfaceram_base = pdev->resource[sb].start;
    qdev->surfaceram_size = pdev->resource[sb].start != 0ULL || pdev->resource[sb].end != pdev->resource[sb].start ? (pdev->resource[sb].end - pdev->resource[sb].start) + 1ULL : 0ULL;
    qdev->surface_mapping = io_mapping_create_wc(qdev->surfaceram_base, (unsigned long )qdev->surfaceram_size);
  } else {
  }
  tmp = ldv__builtin_expect((drm_debug & 4U) != 0U, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("qxl_device_init", "qxl: vram %llx-%llx(%dM %dk), surface %llx-%llx(%dM %dk, %s)\n",
                        qdev->vram_base, pdev->resource[0].end, pdev->resource[0].start != 0ULL || pdev->resource[0].end != pdev->resource[0].start ? (int )((pdev->resource[0].end - pdev->resource[0].start) + 1ULL) / 1048576 : 0,
                        pdev->resource[0].start != 0ULL || pdev->resource[0].end != pdev->resource[0].start ? (int )((pdev->resource[0].end - pdev->resource[0].start) + 1ULL) / 1024 : 0,
                        qdev->surfaceram_base, pdev->resource[sb].end, (int )qdev->surfaceram_size / 1048576,
                        (int )qdev->surfaceram_size / 1024, sb == 4 ? (char *)"64bit" : (char *)"32bit");
  } else {
  }
  tmp___0 = ioremap(qdev->rom_base, (unsigned long )qdev->rom_size);
  qdev->rom = (struct qxl_rom *)tmp___0;
  if ((unsigned long )qdev->rom == (unsigned long )((struct qxl_rom *)0)) {
    printk("\vUnable to ioremap ROM\n");
    return (-12);
  } else {
  }
  qxl_check_device(qdev);
  r = qxl_bo_init(qdev);
  if (r != 0) {
    drm_err("bo init failed %d\n", r);
    return (r);
  } else {
  }
  tmp___1 = ioremap(qdev->vram_base + (resource_size_t )(qdev->rom)->ram_header_offset,
                    5412UL);
  qdev->ram_header = (struct qxl_ram_header *)tmp___1;
  qdev->command_ring = qxl_ring_create(& (qdev->ram_header)->cmd_ring_hdr, 16, 32,
                                       qdev->io_base, 0, & qdev->display_event);
  qdev->cursor_ring = qxl_ring_create(& (qdev->ram_header)->cursor_ring_hdr, 16, 32,
                                      qdev->io_base, 0, & qdev->cursor_event);
  qdev->release_ring = qxl_ring_create(& (qdev->ram_header)->release_ring_hdr, 8,
                                       8, 0, 1, (wait_queue_head_t *)0);
  qdev->n_mem_slots = (qdev->rom)->slots_end;
  qdev->slot_gen_bits = (qdev->rom)->slot_gen_bits;
  qdev->slot_id_bits = (qdev->rom)->slot_id_bits;
  qdev->va_slot_mask = 0xffffffffffffffffULL >> ((int )qdev->slot_id_bits + (int )qdev->slot_gen_bits);
  tmp___2 = kmalloc((unsigned long )qdev->n_mem_slots * 32UL, 208U);
  qdev->mem_slots = (struct qxl_memslot *)tmp___2;
  idr_init(& qdev->release_idr);
  spinlock_check(& qdev->release_idr_lock);
  __raw_spin_lock_init(& qdev->release_idr_lock.__annonCompField17.rlock, "&(&qdev->release_idr_lock)->rlock",
                       & __key___3);
  spinlock_check(& qdev->release_lock);
  __raw_spin_lock_init(& qdev->release_lock.__annonCompField17.rlock, "&(&qdev->release_lock)->rlock",
                       & __key___4);
  idr_init(& qdev->surf_id_idr);
  spinlock_check(& qdev->surf_id_idr_lock);
  __raw_spin_lock_init(& qdev->surf_id_idr_lock.__annonCompField17.rlock, "&(&qdev->surf_id_idr_lock)->rlock",
                       & __key___5);
  __mutex_init(& qdev->async_io_mutex, "&qdev->async_io_mutex", & __key___6);
  qxl_io_reset(qdev);
  r = qxl_irq_init(qdev);
  if (r != 0) {
    return (r);
  } else {
  }
  qdev->main_mem_slot = setup_slot(qdev, 0, (unsigned long )qdev->vram_base, (unsigned long )qdev->vram_base + (unsigned long )(qdev->rom)->ram_header_offset);
  qdev->surfaces_mem_slot = setup_slot(qdev, 1, (unsigned long )qdev->surfaceram_base,
                                       (unsigned long )(qdev->surfaceram_base + qdev->surfaceram_size));
  printk("\016[drm] main mem slot %d [%lx,%x]\n", (int )qdev->main_mem_slot, (unsigned long )qdev->vram_base,
         (qdev->rom)->ram_header_offset);
  printk("\016[drm] surface mem slot %d [%lx,%lx]\n", (int )qdev->surfaces_mem_slot,
         (unsigned long )qdev->surfaceram_base, (unsigned long )qdev->surfaceram_size);
  __lock_name = "\"%s\"\"qxl_gc\"";
  tmp___3 = __alloc_workqueue_key("%s", 131082U, 1, & __key___7, __lock_name, (char *)"qxl_gc");
  qdev->gc_queue = tmp___3;
  __init_work(& qdev->gc_work, 0);
  __constr_expr_0.counter = 137438953408L;
  qdev->gc_work.data = __constr_expr_0;
  lockdep_init_map(& qdev->gc_work.lockdep_map, "(&qdev->gc_work)", & __key___8, 0);
  INIT_LIST_HEAD(& qdev->gc_work.entry);
  qdev->gc_work.func = & qxl_gc_work;
  r = qxl_fb_init(qdev);
  if (r != 0) {
    return (r);
  } else {
  }
  return (0);
}
}
static void qxl_device_fini(struct qxl_device *qdev )
{
  {
  if ((unsigned long )qdev->current_release_bo[0] != (unsigned long )((struct qxl_bo *)0)) {
    qxl_bo_unref((struct qxl_bo **)(& qdev->current_release_bo));
  } else {
  }
  if ((unsigned long )qdev->current_release_bo[1] != (unsigned long )((struct qxl_bo *)0)) {
    qxl_bo_unref((struct qxl_bo **)(& qdev->current_release_bo) + 1UL);
  } else {
  }
  ldv_flush_workqueue_71(qdev->gc_queue);
  ldv_destroy_workqueue_72(qdev->gc_queue);
  qdev->gc_queue = (struct workqueue_struct *)0;
  qxl_ring_free(qdev->command_ring);
  qxl_ring_free(qdev->cursor_ring);
  qxl_ring_free(qdev->release_ring);
  qxl_bo_fini(qdev);
  io_mapping_free(qdev->surface_mapping);
  io_mapping_free(qdev->vram_mapping);
  iounmap((void volatile *)qdev->ram_header);
  iounmap((void volatile *)qdev->rom);
  qdev->rom = (struct qxl_rom *)0;
  qdev->mode_info.modes = (struct qxl_mode *)0;
  qdev->mode_info.num_modes = 0;
  qxl_debugfs_remove_files(qdev);
  return;
}
}
int qxl_driver_unload(struct drm_device *dev )
{
  struct qxl_device *qdev ;
  {
  qdev = (struct qxl_device *)dev->dev_private;
  if ((unsigned long )qdev == (unsigned long )((struct qxl_device *)0)) {
    return (0);
  } else {
  }
  drm_vblank_cleanup(dev);
  qxl_modeset_fini(qdev);
  qxl_device_fini(qdev);
  kfree((void const *)qdev);
  dev->dev_private = (void *)0;
  return (0);
}
}
int qxl_driver_load(struct drm_device *dev , unsigned long flags )
{
  struct qxl_device *qdev ;
  int r ;
  int tmp ;
  void *tmp___0 ;
  {
  tmp = drm_core_check_feature(dev, 8192);
  if (tmp == 0) {
    return (-19);
  } else {
  }
  tmp___0 = kzalloc(5336UL, 208U);
  qdev = (struct qxl_device *)tmp___0;
  if ((unsigned long )qdev == (unsigned long )((struct qxl_device *)0)) {
    return (-12);
  } else {
  }
  dev->dev_private = (void *)qdev;
  r = qxl_device_init(qdev, dev, dev->pdev, flags);
  if (r != 0) {
    goto out;
  } else {
  }
  r = drm_vblank_init(dev, 1);
  if (r != 0) {
    goto unload;
  } else {
  }
  r = qxl_modeset_init(qdev);
  if (r != 0) {
    goto unload;
  } else {
  }
  drm_kms_helper_poll_init(qdev->ddev);
  return (0);
  unload:
  qxl_driver_unload(dev);
  out:
  kfree((void const *)qdev);
  return (r);
}
}
void call_and_disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 2 || ldv_work_1_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_0) {
    qxl_gc_work(work);
    ldv_work_1_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_1 == 2 || ldv_work_1_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_1) {
    qxl_gc_work(work);
    ldv_work_1_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_2 == 2 || ldv_work_1_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_2) {
    qxl_gc_work(work);
    ldv_work_1_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_3 == 2 || ldv_work_1_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_3) {
    qxl_gc_work(work);
    ldv_work_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void call_and_disable_all_1(int state )
{
  {
  if (ldv_work_1_0 == state) {
    call_and_disable_work_1(ldv_work_struct_1_0);
  } else {
  }
  if (ldv_work_1_1 == state) {
    call_and_disable_work_1(ldv_work_struct_1_1);
  } else {
  }
  if (ldv_work_1_2 == state) {
    call_and_disable_work_1(ldv_work_struct_1_2);
  } else {
  }
  if (ldv_work_1_3 == state) {
    call_and_disable_work_1(ldv_work_struct_1_3);
  } else {
  }
  return;
}
}
void activate_work_1(struct work_struct *work , int state )
{
  {
  if (ldv_work_1_0 == 0) {
    ldv_work_struct_1_0 = work;
    ldv_work_1_0 = state;
    return;
  } else {
  }
  if (ldv_work_1_1 == 0) {
    ldv_work_struct_1_1 = work;
    ldv_work_1_1 = state;
    return;
  } else {
  }
  if (ldv_work_1_2 == 0) {
    ldv_work_struct_1_2 = work;
    ldv_work_1_2 = state;
    return;
  } else {
  }
  if (ldv_work_1_3 == 0) {
    ldv_work_struct_1_3 = work;
    ldv_work_1_3 = state;
    return;
  } else {
  }
  return;
}
}
void disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 3 || ldv_work_1_0 == 2) && (unsigned long )ldv_work_struct_1_0 == (unsigned long )work) {
    ldv_work_1_0 = 1;
  } else {
  }
  if ((ldv_work_1_1 == 3 || ldv_work_1_1 == 2) && (unsigned long )ldv_work_struct_1_1 == (unsigned long )work) {
    ldv_work_1_1 = 1;
  } else {
  }
  if ((ldv_work_1_2 == 3 || ldv_work_1_2 == 2) && (unsigned long )ldv_work_struct_1_2 == (unsigned long )work) {
    ldv_work_1_2 = 1;
  } else {
  }
  if ((ldv_work_1_3 == 3 || ldv_work_1_3 == 2) && (unsigned long )ldv_work_struct_1_3 == (unsigned long )work) {
    ldv_work_1_3 = 1;
  } else {
  }
  return;
}
}
void work_init_1(void)
{
  {
  ldv_work_1_0 = 0;
  ldv_work_1_1 = 0;
  ldv_work_1_2 = 0;
  ldv_work_1_3 = 0;
  return;
}
}
void invoke_work_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_1_0 == 2 || ldv_work_1_0 == 3) {
    ldv_work_1_0 = 4;
    qxl_gc_work(ldv_work_struct_1_0);
    ldv_work_1_0 = 1;
  } else {
  }
  goto ldv_41345;
  case 1: ;
  if (ldv_work_1_1 == 2 || ldv_work_1_1 == 3) {
    ldv_work_1_1 = 4;
    qxl_gc_work(ldv_work_struct_1_0);
    ldv_work_1_1 = 1;
  } else {
  }
  goto ldv_41345;
  case 2: ;
  if (ldv_work_1_2 == 2 || ldv_work_1_2 == 3) {
    ldv_work_1_2 = 4;
    qxl_gc_work(ldv_work_struct_1_0);
    ldv_work_1_2 = 1;
  } else {
  }
  goto ldv_41345;
  case 3: ;
  if (ldv_work_1_3 == 2 || ldv_work_1_3 == 3) {
    ldv_work_1_3 = 4;
    qxl_gc_work(ldv_work_struct_1_0);
    ldv_work_1_3 = 1;
  } else {
  }
  goto ldv_41345;
  default:
  ldv_stop();
  }
  ldv_41345: ;
  return;
}
}
bool ldv_queue_work_on_50(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_51(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_52(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_53(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_54(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_55(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_56(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_57(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_58(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
void ldv_mutex_unlock_59(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_60(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_61(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_62(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_63(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_64(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_fb_info(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_65(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_base_of_ww_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_66(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
int ldv_mutex_trylock_67(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_70(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_flush_workqueue_71(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
void ldv_destroy_workqueue_72(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
}
}
extern void lock_acquire(struct lockdep_map * , unsigned int , int , int , int ,
                         struct lockdep_map * , unsigned long ) ;
extern void lock_release(struct lockdep_map * , int , unsigned long ) ;
int ldv_mutex_trylock_107(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_116(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_105(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_108(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_109(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_112(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_119(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_115(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_104(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_106(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_110(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_111(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_114(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_struct_mutex_of_drm_device(struct mutex *lock ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->__annonCompField17.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->__annonCompField17.rlock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField17.rlock, flags);
  return;
}
}
bool ldv_queue_work_on_99(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_101(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_100(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_103(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_102(struct workqueue_struct *ldv_func_arg1 ) ;
extern u32 crc32_le(u32 , unsigned char const * , size_t ) ;
__inline static int ldv_kref_put_mutex_118(struct kref *kref , void (*release)(struct kref * ) ,
                                           struct mutex *lock ) ;
extern void dev_err(struct device const * , char const * , ...) ;
extern int __ww_mutex_lock(struct ww_mutex * , struct ww_acquire_ctx * ) ;
extern int __ww_mutex_lock_interruptible(struct ww_mutex * , struct ww_acquire_ctx * ) ;
__inline static int ww_mutex_lock(struct ww_mutex *lock , struct ww_acquire_ctx *ctx )
{
  int tmp ;
  {
  if ((unsigned long )ctx != (unsigned long )((struct ww_acquire_ctx *)0)) {
    tmp = __ww_mutex_lock(lock, ctx);
    return (tmp);
  } else {
  }
  ldv_mutex_lock_114(& lock->base);
  return (0);
}
}
__inline static int ww_mutex_lock_interruptible(struct ww_mutex *lock , struct ww_acquire_ctx *ctx )
{
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ctx != (unsigned long )((struct ww_acquire_ctx *)0)) {
    tmp = __ww_mutex_lock_interruptible(lock, ctx);
    return (tmp);
  } else {
    tmp___0 = ldv_mutex_lock_interruptible_115(& lock->base);
    return (tmp___0);
  }
}
}
extern void ww_mutex_unlock(struct ww_mutex * ) ;
__inline static int ww_mutex_trylock(struct ww_mutex *lock )
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_116(& lock->base);
  return (tmp);
}
}
extern void drm_modeset_lock_all(struct drm_device * ) ;
extern void drm_modeset_unlock_all(struct drm_device * ) ;
extern void drm_mode_probed_add(struct drm_connector * , struct drm_display_mode * ) ;
extern struct drm_display_mode *drm_cvt_mode(struct drm_device * , int , int , int ,
                                             bool , bool , bool ) ;
extern void drm_crtc_cleanup(struct drm_crtc * ) ;
extern int drm_connector_init(struct drm_device * , struct drm_connector * , struct drm_connector_funcs const * ,
                              int ) ;
extern int drm_connector_register(struct drm_connector * ) ;
extern void drm_connector_unregister(struct drm_connector * ) ;
extern void drm_connector_cleanup(struct drm_connector * ) ;
extern int drm_encoder_init(struct drm_device * , struct drm_encoder * , struct drm_encoder_funcs const * ,
                            int ) ;
extern void drm_encoder_cleanup(struct drm_encoder * ) ;
extern void drm_mode_config_init(struct drm_device * ) ;
extern void drm_mode_config_cleanup(struct drm_device * ) ;
extern int drm_object_property_set_value(struct drm_mode_object * , struct drm_property * ,
                                         uint64_t ) ;
extern int drm_framebuffer_init(struct drm_device * , struct drm_framebuffer * , struct drm_framebuffer_funcs const * ) ;
extern void drm_framebuffer_cleanup(struct drm_framebuffer * ) ;
extern void drm_object_attach_property(struct drm_mode_object * , struct drm_property * ,
                                       uint64_t ) ;
extern struct drm_property *drm_property_create_range(struct drm_device * , int ,
                                                      char const * , uint64_t ,
                                                      uint64_t ) ;
extern int drm_mode_create_suggested_offset_properties(struct drm_device * ) ;
extern int drm_mode_connector_attach_encoder(struct drm_connector * , struct drm_encoder * ) ;
extern int drm_mode_crtc_set_gamma_size(struct drm_crtc * , int ) ;
extern void drm_send_vblank_event(struct drm_device * , int , struct drm_pending_vblank_event * ) ;
extern int drm_vblank_get(struct drm_device * , int ) ;
extern void drm_vblank_put(struct drm_device * , int ) ;
extern void ttm_bo_add_to_lru(struct ttm_buffer_object * ) ;
extern void ttm_bo_del_sub_from_lru(struct ttm_buffer_object * ) ;
__inline static int __ttm_bo_reserve(struct ttm_buffer_object *bo , bool interruptible ,
                                     bool no_wait , bool use_ticket , struct ww_acquire_ctx *ticket )
{
  int ret ;
  bool success ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  ret = 0;
  if ((int )no_wait) {
    __ret_warn_on = (unsigned long )ticket != (unsigned long )((struct ww_acquire_ctx *)0);
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/drm/ttm/ttm_bo_driver.h", 787);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      return (-16);
    } else {
    }
    tmp___1 = ww_mutex_trylock(& (bo->resv)->lock);
    success = tmp___1 != 0;
    return ((int )success ? 0 : -16);
  } else {
  }
  if ((int )interruptible) {
    ret = ww_mutex_lock_interruptible(& (bo->resv)->lock, ticket);
  } else {
    ret = ww_mutex_lock(& (bo->resv)->lock, ticket);
  }
  if (ret == -4) {
    return (-512);
  } else {
  }
  return (ret);
}
}
__inline static int ttm_bo_reserve(struct ttm_buffer_object *bo , bool interruptible ,
                                   bool no_wait , bool use_ticket , struct ww_acquire_ctx *ticket )
{
  int ret ;
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = atomic_read((atomic_t const *)(& bo->kref.refcount));
  __ret_warn_on = tmp == 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("include/drm/ttm/ttm_bo_driver.h", 855);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  ret = __ttm_bo_reserve(bo, (int )interruptible, (int )no_wait, (int )use_ticket,
                         ticket);
  tmp___1 = ldv__builtin_expect(ret == 0, 1L);
  if (tmp___1 != 0L) {
    ttm_bo_del_sub_from_lru(bo);
  } else {
  }
  return (ret);
}
}
__inline static void __ttm_bo_unreserve(struct ttm_buffer_object *bo )
{
  {
  ww_mutex_unlock(& (bo->resv)->lock);
  return;
}
}
__inline static void ttm_bo_unreserve(struct ttm_buffer_object *bo )
{
  {
  if ((bo->mem.placement & 2097152U) == 0U) {
    spin_lock(& (bo->glob)->lru_lock);
    ttm_bo_add_to_lru(bo);
    spin_unlock(& (bo->glob)->lru_lock);
  } else {
  }
  __ttm_bo_unreserve(bo);
  return;
}
}
extern void drm_gem_object_free(struct kref * ) ;
__inline static void drm_gem_object_unreference_unlocked(struct drm_gem_object *obj )
{
  struct drm_device *dev ;
  int tmp ;
  {
  if ((unsigned long )obj == (unsigned long )((struct drm_gem_object *)0)) {
    return;
  } else {
  }
  dev = obj->dev;
  tmp = ldv_kref_put_mutex_118(& obj->refcount, & drm_gem_object_free, & dev->struct_mutex);
  if (tmp != 0) {
    ldv_mutex_unlock_119(& dev->struct_mutex);
  } else {
    lock_acquire(& dev->struct_mutex.dep_map, 0U, 0, 0, 1, (struct lockdep_map *)0,
                 0UL);
    lock_release(& dev->struct_mutex.dep_map, 0, 0UL);
  }
  return;
}
}
extern struct drm_gem_object *drm_gem_object_lookup(struct drm_device * , struct drm_file * ,
                                                    u32 ) ;
void qxl_io_log(struct qxl_device *qdev , char const *fmt , ...) ;
__inline static uint64_t qxl_bo_physical_address(struct qxl_device *qdev , struct qxl_bo *bo ,
                                                 unsigned long offset )
{
  int slot_id ;
  struct qxl_memslot *slot ;
  {
  slot_id = bo->type == 1 ? (int )qdev->main_mem_slot : (int )qdev->surfaces_mem_slot;
  slot = qdev->mem_slots + (unsigned long )slot_id;
  return (slot->high_bits | (bo->tbo.offset + (unsigned long long )offset));
}
}
int qxl_fbdev_init(struct qxl_device *qdev ) ;
void qxl_fbdev_fini(struct qxl_device *qdev ) ;
int qxl_framebuffer_init(struct drm_device *dev , struct qxl_framebuffer *qfb , struct drm_mode_fb_cmd2 *mode_cmd ,
                         struct drm_gem_object *obj ) ;
void qxl_display_read_client_monitors_config(struct qxl_device *qdev ) ;
void qxl_send_monitors_config(struct qxl_device *qdev ) ;
void qxl_alloc_client_monitors_config(struct qxl_device *qdev , unsigned int count ) ;
int qxl_gem_object_create(struct qxl_device *qdev , int size , int alignment , int initial_domain ,
                          bool discardable , bool kernel , struct qxl_surface *surf ,
                          struct drm_gem_object **obj ) ;
int qxl_bo_kmap(struct qxl_bo *bo , void **ptr ) ;
void qxl_io_create_primary(struct qxl_device *qdev , unsigned int offset , struct qxl_bo *bo ) ;
void qxl_io_destroy_primary(struct qxl_device *qdev ) ;
void qxl_io_monitors_config(struct qxl_device *qdev ) ;
union qxl_release_info *qxl_release_map(struct qxl_device *qdev , struct qxl_release *release ) ;
void qxl_release_unmap(struct qxl_device *qdev , struct qxl_release *release , union qxl_release_info *info ) ;
int qxl_release_reserve_list(struct qxl_release *release , bool no_intr ) ;
void qxl_release_backoff_reserve_list(struct qxl_release *release ) ;
void qxl_release_fence_buffer_objects(struct qxl_release *release ) ;
int qxl_alloc_release_reserved(struct qxl_device *qdev , unsigned long size , int type ,
                               struct qxl_release **release , struct qxl_bo **rbo ) ;
int qxl_push_cursor_ring_release(struct qxl_device *qdev , struct qxl_release *release ,
                                 uint32_t type , bool interruptible ) ;
int qxl_alloc_bo_reserved(struct qxl_device *qdev , struct qxl_release *release ,
                          unsigned long size , struct qxl_bo **_bo ) ;
void qxl_draw_dirty_fb(struct qxl_device *qdev , struct qxl_framebuffer *qxl_fb ,
                       struct qxl_bo *bo , unsigned int flags , unsigned int color ,
                       struct drm_clip_rect *clips , unsigned int num_clips , int inc ) ;
void qxl_release_free(struct qxl_device *qdev , struct qxl_release *release ) ;
__inline static int qxl_bo_reserve(struct qxl_bo *bo , bool no_wait )
{
  int r ;
  struct qxl_device *qdev ;
  long tmp ;
  {
  r = ttm_bo_reserve(& bo->tbo, 1, (int )no_wait, 0, (struct ww_acquire_ctx *)0);
  tmp = ldv__builtin_expect(r != 0, 0L);
  if (tmp != 0L) {
    if (r != -512) {
      qdev = (struct qxl_device *)(bo->gem_base.dev)->dev_private;
      dev_err((struct device const *)qdev->dev, "%p reserve failed\n", bo);
    } else {
    }
    return (r);
  } else {
  }
  return (0);
}
}
__inline static void qxl_bo_unreserve(struct qxl_bo *bo )
{
  {
  ttm_bo_unreserve(& bo->tbo);
  return;
}
}
void qxl_bo_kunmap(struct qxl_bo *bo ) ;
int qxl_bo_pin(struct qxl_bo *bo , u32 domain , u64 *gpu_addr ) ;
int qxl_bo_unpin(struct qxl_bo *bo ) ;
extern int drm_crtc_helper_set_config(struct drm_mode_set * ) ;
extern void drm_helper_connector_dpms(struct drm_connector * , int ) ;
extern void drm_helper_mode_fill_fb_struct(struct drm_framebuffer * , struct drm_mode_fb_cmd2 * ) ;
__inline static void drm_crtc_helper_add(struct drm_crtc *crtc , struct drm_crtc_helper_funcs const *funcs )
{
  {
  crtc->helper_private = (void const *)funcs;
  return;
}
}
__inline static void drm_encoder_helper_add(struct drm_encoder *encoder , struct drm_encoder_helper_funcs const *funcs )
{
  {
  encoder->helper_private = (void const *)funcs;
  return;
}
}
__inline static void drm_connector_helper_add(struct drm_connector *connector , struct drm_connector_helper_funcs const *funcs )
{
  {
  connector->helper_private = (void const *)funcs;
  return;
}
}
extern int drm_helper_probe_single_connector_modes_nomerge(struct drm_connector * ,
                                                           uint32_t , uint32_t ) ;
extern bool drm_helper_hpd_irq_event(struct drm_device * ) ;
extern void drm_kms_helper_hotplug_event(struct drm_device * ) ;
extern int drm_crtc_init(struct drm_device * , struct drm_crtc * , struct drm_crtc_funcs const * ) ;
static bool qxl_head_enabled(struct qxl_head *head )
{
  {
  return ((bool )(head->width != 0U && head->height != 0U));
}
}
void qxl_alloc_client_monitors_config(struct qxl_device *qdev , unsigned int count )
{
  void *tmp ;
  {
  if ((unsigned long )qdev->client_monitors_config != (unsigned long )((struct qxl_monitors_config *)0) && (unsigned int )(qdev->client_monitors_config)->count < count) {
    kfree((void const *)qdev->client_monitors_config);
    qdev->client_monitors_config = (struct qxl_monitors_config *)0;
  } else {
  }
  if ((unsigned long )qdev->client_monitors_config == (unsigned long )((struct qxl_monitors_config *)0)) {
    tmp = kzalloc((unsigned long )count * 28UL + 4UL, 208U);
    qdev->client_monitors_config = (struct qxl_monitors_config *)tmp;
    if ((unsigned long )qdev->client_monitors_config == (unsigned long )((struct qxl_monitors_config *)0)) {
      qxl_io_log(qdev, "%s: allocation failure for %u heads\n", "qxl_alloc_client_monitors_config",
                 count);
      return;
    } else {
    }
  } else {
  }
  (qdev->client_monitors_config)->count = (uint16_t )count;
  return;
}
}
static int qxl_display_copy_rom_client_monitors_config(struct qxl_device *qdev )
{
  int i ;
  int num_monitors ;
  uint32_t crc ;
  long tmp ;
  struct qxl_urect *c_rect ;
  struct qxl_head *client_head ;
  long tmp___0 ;
  {
  num_monitors = (int )(qdev->rom)->client_monitors_config.count;
  crc = crc32_le(0U, (unsigned char const *)(& (qdev->rom)->client_monitors_config),
                 1028UL);
  if ((qdev->rom)->client_monitors_config_crc != crc) {
    qxl_io_log(qdev, "crc mismatch: have %X (%zd) != %X\n", crc, 1028UL, (qdev->rom)->client_monitors_config_crc);
    return (1);
  } else {
  }
  if ((int )(qdev->monitors_config)->max_allowed < num_monitors) {
    tmp = ldv__builtin_expect((drm_debug & 4U) != 0U, 0L);
    if (tmp != 0L) {
      drm_ut_debug_printk("qxl_display_copy_rom_client_monitors_config", "client monitors list will be truncated: %d < %d\n",
                          (int )(qdev->monitors_config)->max_allowed, num_monitors);
    } else {
    }
    num_monitors = (int )(qdev->monitors_config)->max_allowed;
  } else {
    num_monitors = (int )(qdev->rom)->client_monitors_config.count;
  }
  qxl_alloc_client_monitors_config(qdev, (unsigned int )num_monitors);
  (qdev->client_monitors_config)->max_allowed = (qdev->monitors_config)->max_allowed;
  i = 0;
  goto ldv_41420;
  ldv_41419:
  c_rect = (struct qxl_urect *)(& (qdev->rom)->client_monitors_config.heads) + (unsigned long )i;
  client_head = (struct qxl_head *)(& (qdev->client_monitors_config)->heads) + (unsigned long )i;
  client_head->x = c_rect->left;
  client_head->y = c_rect->top;
  client_head->width = c_rect->right - c_rect->left;
  client_head->height = c_rect->bottom - c_rect->top;
  client_head->surface_id = 0U;
  client_head->id = (uint32_t )i;
  client_head->flags = 0U;
  tmp___0 = ldv__builtin_expect((drm_debug & 4U) != 0U, 0L);
  if (tmp___0 != 0L) {
    drm_ut_debug_printk("qxl_display_copy_rom_client_monitors_config", "read %dx%d+%d+%d\n",
                        client_head->width, client_head->height, client_head->x, client_head->y);
  } else {
  }
  i = i + 1;
  ldv_41420: ;
  if ((int )(qdev->client_monitors_config)->count > i) {
    goto ldv_41419;
  } else {
  }
  return (0);
}
}
static void qxl_update_offset_props(struct qxl_device *qdev )
{
  struct drm_device *dev ;
  struct drm_connector *connector ;
  struct qxl_output *output ;
  struct qxl_head *head ;
  struct list_head const *__mptr ;
  struct drm_connector const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  dev = qdev->ddev;
  __mptr = (struct list_head const *)dev->mode_config.connector_list.next;
  connector = (struct drm_connector *)__mptr + 0xffffffffffffffe8UL;
  goto ldv_41436;
  ldv_41435:
  __mptr___0 = (struct drm_connector const *)connector;
  output = (struct qxl_output *)__mptr___0 + 0xfffffffffffffff8UL;
  head = (struct qxl_head *)(& (qdev->client_monitors_config)->heads) + (unsigned long )output->index;
  drm_object_property_set_value(& connector->base, dev->mode_config.suggested_x_property,
                                (uint64_t )head->x);
  drm_object_property_set_value(& connector->base, dev->mode_config.suggested_y_property,
                                (uint64_t )head->y);
  __mptr___1 = (struct list_head const *)connector->head.next;
  connector = (struct drm_connector *)__mptr___1 + 0xffffffffffffffe8UL;
  ldv_41436: ;
  if ((unsigned long )(& connector->head) != (unsigned long )(& dev->mode_config.connector_list)) {
    goto ldv_41435;
  } else {
  }
  return;
}
}
void qxl_display_read_client_monitors_config(struct qxl_device *qdev )
{
  struct drm_device *dev ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  dev = qdev->ddev;
  goto ldv_41443;
  ldv_41442:
  qxl_io_log(qdev, "failed crc check for client_monitors_config, retrying\n");
  ldv_41443:
  tmp = qxl_display_copy_rom_client_monitors_config(qdev);
  if (tmp != 0) {
    goto ldv_41442;
  } else {
  }
  drm_modeset_lock_all(dev);
  qxl_update_offset_props(qdev);
  drm_modeset_unlock_all(dev);
  tmp___0 = drm_helper_hpd_irq_event(qdev->ddev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    drm_kms_helper_hotplug_event(qdev->ddev);
  } else {
  }
  return;
}
}
static int qxl_add_monitors_config_modes(struct drm_connector *connector , unsigned int *pwidth ,
                                         unsigned int *pheight )
{
  struct drm_device *dev ;
  struct qxl_device *qdev ;
  struct qxl_output *output ;
  struct drm_connector const *__mptr ;
  int h ;
  struct drm_display_mode *mode ;
  struct qxl_head *head ;
  {
  dev = connector->dev;
  qdev = (struct qxl_device *)dev->dev_private;
  __mptr = (struct drm_connector const *)connector;
  output = (struct qxl_output *)__mptr + 0xfffffffffffffff8UL;
  h = output->index;
  mode = (struct drm_display_mode *)0;
  if ((unsigned long )qdev->client_monitors_config == (unsigned long )((struct qxl_monitors_config *)0)) {
    return (0);
  } else {
  }
  head = (struct qxl_head *)(& (qdev->client_monitors_config)->heads) + (unsigned long )h;
  mode = drm_cvt_mode(dev, (int )head->width, (int )head->height, 60, 0, 0, 0);
  mode->type = mode->type | 8U;
  *pwidth = head->width;
  *pheight = head->height;
  drm_mode_probed_add(connector, mode);
  return (1);
}
}
static int qxl_add_common_modes(struct drm_connector *connector , unsigned int pwidth ,
                                unsigned int pheight )
{
  struct drm_device *dev ;
  struct drm_display_mode *mode ;
  int i ;
  struct mode_size common_modes[17U] ;
  {
  dev = connector->dev;
  mode = (struct drm_display_mode *)0;
  common_modes[0].w = 640;
  common_modes[0].h = 480;
  common_modes[1].w = 720;
  common_modes[1].h = 480;
  common_modes[2].w = 800;
  common_modes[2].h = 600;
  common_modes[3].w = 848;
  common_modes[3].h = 480;
  common_modes[4].w = 1024;
  common_modes[4].h = 768;
  common_modes[5].w = 1152;
  common_modes[5].h = 768;
  common_modes[6].w = 1280;
  common_modes[6].h = 720;
  common_modes[7].w = 1280;
  common_modes[7].h = 800;
  common_modes[8].w = 1280;
  common_modes[8].h = 854;
  common_modes[9].w = 1280;
  common_modes[9].h = 960;
  common_modes[10].w = 1280;
  common_modes[10].h = 1024;
  common_modes[11].w = 1440;
  common_modes[11].h = 900;
  common_modes[12].w = 1400;
  common_modes[12].h = 1050;
  common_modes[13].w = 1680;
  common_modes[13].h = 1050;
  common_modes[14].w = 1600;
  common_modes[14].h = 1200;
  common_modes[15].w = 1920;
  common_modes[15].h = 1080;
  common_modes[16].w = 1920;
  common_modes[16].h = 1200;
  i = 0;
  goto ldv_41473;
  ldv_41472:
  mode = drm_cvt_mode(dev, common_modes[i].w, common_modes[i].h, 60, 0, 0, 0);
  if ((unsigned int )common_modes[i].w == pwidth && (unsigned int )common_modes[i].h == pheight) {
    mode->type = mode->type | 8U;
  } else {
  }
  drm_mode_probed_add(connector, mode);
  i = i + 1;
  ldv_41473: ;
  if ((unsigned int )i <= 16U) {
    goto ldv_41472;
  } else {
  }
  return (i + -1);
}
}
static void qxl_crtc_destroy(struct drm_crtc *crtc )
{
  struct qxl_crtc *qxl_crtc ;
  struct drm_crtc const *__mptr ;
  {
  __mptr = (struct drm_crtc const *)crtc;
  qxl_crtc = (struct qxl_crtc *)__mptr;
  drm_crtc_cleanup(crtc);
  kfree((void const *)qxl_crtc);
  return;
}
}
static int qxl_crtc_page_flip(struct drm_crtc *crtc , struct drm_framebuffer *fb ,
                              struct drm_pending_vblank_event *event , uint32_t page_flip_flags )
{
  struct drm_device *dev ;
  struct qxl_device *qdev ;
  struct qxl_crtc *qcrtc ;
  struct drm_crtc const *__mptr ;
  struct qxl_framebuffer *qfb_src ;
  struct drm_framebuffer const *__mptr___0 ;
  struct qxl_framebuffer *qfb_old ;
  struct drm_framebuffer const *__mptr___1 ;
  struct qxl_bo *bo_old ;
  struct drm_gem_object const *__mptr___2 ;
  struct qxl_bo *bo ;
  struct drm_gem_object const *__mptr___3 ;
  unsigned long flags ;
  struct drm_clip_rect norect ;
  int inc ;
  int one_clip_rect ;
  int ret ;
  raw_spinlock_t *tmp ;
  {
  dev = crtc->dev;
  qdev = (struct qxl_device *)dev->dev_private;
  __mptr = (struct drm_crtc const *)crtc;
  qcrtc = (struct qxl_crtc *)__mptr;
  __mptr___0 = (struct drm_framebuffer const *)fb;
  qfb_src = (struct qxl_framebuffer *)__mptr___0;
  __mptr___1 = (struct drm_framebuffer const *)(crtc->primary)->fb;
  qfb_old = (struct qxl_framebuffer *)__mptr___1;
  __mptr___2 = (struct drm_gem_object const *)qfb_old->obj;
  bo_old = (struct qxl_bo *)__mptr___2 + 0xfffffffffffffc08UL;
  __mptr___3 = (struct drm_gem_object const *)qfb_src->obj;
  bo = (struct qxl_bo *)__mptr___3 + 0xfffffffffffffc08UL;
  norect.x1 = 0U;
  norect.y1 = 0U;
  norect.x2 = (unsigned short )fb->width;
  norect.y2 = (unsigned short )fb->height;
  inc = 1;
  one_clip_rect = 1;
  ret = 0;
  (crtc->primary)->fb = fb;
  bo_old->is_primary = 0;
  bo->is_primary = 1;
  ret = qxl_bo_reserve(bo, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  qxl_draw_dirty_fb(qdev, qfb_src, bo, 0U, 0U, & norect, (unsigned int )one_clip_rect,
                    inc);
  drm_vblank_get(dev, qcrtc->index);
  if ((unsigned long )event != (unsigned long )((struct drm_pending_vblank_event *)0)) {
    tmp = spinlock_check(& dev->event_lock);
    flags = _raw_spin_lock_irqsave(tmp);
    drm_send_vblank_event(dev, qcrtc->index, event);
    spin_unlock_irqrestore(& dev->event_lock, flags);
  } else {
  }
  drm_vblank_put(dev, qcrtc->index);
  qxl_bo_unreserve(bo);
  return (0);
}
}
static int qxl_hide_cursor(struct qxl_device *qdev )
{
  struct qxl_release *release ;
  struct qxl_cursor_cmd *cmd ;
  int ret ;
  union qxl_release_info *tmp ;
  {
  ret = qxl_alloc_release_reserved(qdev, 150UL, 2, & release, (struct qxl_bo **)0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = qxl_release_reserve_list(release, 1);
  if (ret != 0) {
    qxl_release_free(qdev, release);
    return (ret);
  } else {
  }
  tmp = qxl_release_map(qdev, release);
  cmd = (struct qxl_cursor_cmd *)tmp;
  cmd->type = 2U;
  qxl_release_unmap(qdev, release, & cmd->release_info);
  qxl_push_cursor_ring_release(qdev, release, 3U, 0);
  qxl_release_fence_buffer_objects(release);
  return (0);
}
}
static int qxl_crtc_cursor_set2(struct drm_crtc *crtc , struct drm_file *file_priv ,
                                uint32_t handle , uint32_t width , uint32_t height ,
                                int32_t hot_x , int32_t hot_y )
{
  struct drm_device *dev ;
  struct qxl_device *qdev ;
  struct qxl_crtc *qcrtc ;
  struct drm_crtc const *__mptr ;
  struct drm_gem_object *obj ;
  struct qxl_cursor *cursor ;
  struct qxl_cursor_cmd *cmd ;
  struct qxl_bo *cursor_bo ;
  struct qxl_bo *user_bo ;
  struct qxl_release *release ;
  void *user_ptr ;
  int size ;
  int ret ;
  int tmp ;
  struct drm_gem_object const *__mptr___0 ;
  union qxl_release_info *tmp___0 ;
  {
  dev = crtc->dev;
  qdev = (struct qxl_device *)dev->dev_private;
  __mptr = (struct drm_crtc const *)crtc;
  qcrtc = (struct qxl_crtc *)__mptr;
  size = 16384;
  ret = 0;
  if (handle == 0U) {
    tmp = qxl_hide_cursor(qdev);
    return (tmp);
  } else {
  }
  obj = drm_gem_object_lookup(crtc->dev, file_priv, handle);
  if ((unsigned long )obj == (unsigned long )((struct drm_gem_object *)0)) {
    drm_err("cannot find cursor object\n");
    return (-2);
  } else {
  }
  __mptr___0 = (struct drm_gem_object const *)obj;
  user_bo = (struct qxl_bo *)__mptr___0 + 0xfffffffffffffc08UL;
  ret = qxl_bo_reserve(user_bo, 0);
  if (ret != 0) {
    goto out_unref;
  } else {
  }
  ret = qxl_bo_pin(user_bo, 0U, (u64 *)0ULL);
  qxl_bo_unreserve(user_bo);
  if (ret != 0) {
    goto out_unref;
  } else {
  }
  ret = qxl_bo_kmap(user_bo, & user_ptr);
  if (ret != 0) {
    goto out_unpin;
  } else {
  }
  ret = qxl_alloc_release_reserved(qdev, 150UL, 2, & release, (struct qxl_bo **)0);
  if (ret != 0) {
    goto out_kunmap;
  } else {
  }
  ret = qxl_alloc_bo_reserved(qdev, release, (unsigned long )size + 42UL, & cursor_bo);
  if (ret != 0) {
    goto out_free_release;
  } else {
  }
  ret = qxl_release_reserve_list(release, 0);
  if (ret != 0) {
    goto out_free_bo;
  } else {
  }
  ret = qxl_bo_kmap(cursor_bo, (void **)(& cursor));
  if (ret != 0) {
    goto out_backoff;
  } else {
  }
  cursor->header.unique = 0ULL;
  cursor->header.type = 0U;
  cursor->header.width = 64U;
  cursor->header.height = 64U;
  cursor->header.hot_spot_x = (uint16_t )hot_x;
  cursor->header.hot_spot_y = (uint16_t )hot_y;
  cursor->data_size = (uint32_t )size;
  cursor->chunk.next_chunk = 0ULL;
  cursor->chunk.prev_chunk = 0ULL;
  cursor->chunk.data_size = (uint32_t )size;
  memcpy((void *)(& cursor->chunk.data), (void const *)user_ptr, (size_t )size);
  qxl_bo_kunmap(cursor_bo);
  qxl_bo_kunmap(user_bo);
  tmp___0 = qxl_release_map(qdev, release);
  cmd = (struct qxl_cursor_cmd *)tmp___0;
  cmd->type = 0U;
  cmd->u.set.position.x = (int16_t )qcrtc->cur_x;
  cmd->u.set.position.y = (int16_t )qcrtc->cur_y;
  cmd->u.set.shape = qxl_bo_physical_address(qdev, cursor_bo, 0UL);
  cmd->u.set.visible = 1U;
  qxl_release_unmap(qdev, release, & cmd->release_info);
  qxl_push_cursor_ring_release(qdev, release, 3U, 0);
  qxl_release_fence_buffer_objects(release);
  ret = qxl_bo_reserve(user_bo, 0);
  if (ret == 0) {
    qxl_bo_unpin(user_bo);
    qxl_bo_unreserve(user_bo);
  } else {
  }
  drm_gem_object_unreference_unlocked(obj);
  qxl_bo_unref(& cursor_bo);
  return (ret);
  out_backoff:
  qxl_release_backoff_reserve_list(release);
  out_free_bo:
  qxl_bo_unref(& cursor_bo);
  out_free_release:
  qxl_release_free(qdev, release);
  out_kunmap:
  qxl_bo_kunmap(user_bo);
  out_unpin:
  qxl_bo_unpin(user_bo);
  out_unref:
  drm_gem_object_unreference_unlocked(obj);
  return (ret);
}
}
static int qxl_crtc_cursor_move(struct drm_crtc *crtc , int x , int y )
{
  struct drm_device *dev ;
  struct qxl_device *qdev ;
  struct qxl_crtc *qcrtc ;
  struct drm_crtc const *__mptr ;
  struct qxl_release *release ;
  struct qxl_cursor_cmd *cmd ;
  int ret ;
  union qxl_release_info *tmp ;
  {
  dev = crtc->dev;
  qdev = (struct qxl_device *)dev->dev_private;
  __mptr = (struct drm_crtc const *)crtc;
  qcrtc = (struct qxl_crtc *)__mptr;
  ret = qxl_alloc_release_reserved(qdev, 150UL, 2, & release, (struct qxl_bo **)0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = qxl_release_reserve_list(release, 1);
  if (ret != 0) {
    qxl_release_free(qdev, release);
    return (ret);
  } else {
  }
  qcrtc->cur_x = x;
  qcrtc->cur_y = y;
  tmp = qxl_release_map(qdev, release);
  cmd = (struct qxl_cursor_cmd *)tmp;
  cmd->type = 1U;
  cmd->u.position.x = (int16_t )qcrtc->cur_x;
  cmd->u.position.y = (int16_t )qcrtc->cur_y;
  qxl_release_unmap(qdev, release, & cmd->release_info);
  qxl_push_cursor_ring_release(qdev, release, 3U, 0);
  qxl_release_fence_buffer_objects(release);
  return (0);
}
}
static struct drm_crtc_funcs const qxl_crtc_funcs =
     {0, 0, 0, 0, & qxl_crtc_cursor_set2, & qxl_crtc_cursor_move, 0, & qxl_crtc_destroy,
    & drm_crtc_helper_set_config, & qxl_crtc_page_flip, 0, 0, 0, 0, 0};
static void qxl_user_framebuffer_destroy(struct drm_framebuffer *fb )
{
  struct qxl_framebuffer *qxl_fb ;
  struct drm_framebuffer const *__mptr ;
  {
  __mptr = (struct drm_framebuffer const *)fb;
  qxl_fb = (struct qxl_framebuffer *)__mptr;
  if ((unsigned long )qxl_fb->obj != (unsigned long )((struct drm_gem_object *)0)) {
    drm_gem_object_unreference_unlocked(qxl_fb->obj);
  } else {
  }
  drm_framebuffer_cleanup(fb);
  kfree((void const *)qxl_fb);
  return;
}
}
static int qxl_framebuffer_surface_dirty(struct drm_framebuffer *fb , struct drm_file *file_priv ,
                                         unsigned int flags , unsigned int color ,
                                         struct drm_clip_rect *clips , unsigned int num_clips )
{
  struct qxl_framebuffer *qxl_fb ;
  struct drm_framebuffer const *__mptr ;
  struct qxl_device *qdev ;
  struct drm_clip_rect norect ;
  struct qxl_bo *qobj ;
  int inc ;
  struct drm_gem_object const *__mptr___0 ;
  {
  __mptr = (struct drm_framebuffer const *)fb;
  qxl_fb = (struct qxl_framebuffer *)__mptr;
  qdev = (struct qxl_device *)(qxl_fb->base.dev)->dev_private;
  inc = 1;
  drm_modeset_lock_all(fb->dev);
  __mptr___0 = (struct drm_gem_object const *)qxl_fb->obj;
  qobj = (struct qxl_bo *)__mptr___0 + 0xfffffffffffffc08UL;
  if (! qobj->is_primary) {
    drm_modeset_unlock_all(fb->dev);
    return (0);
  } else {
  }
  if (num_clips == 0U) {
    num_clips = 1U;
    clips = & norect;
    norect.y1 = 0U;
    norect.x1 = norect.y1;
    norect.x2 = (unsigned short )fb->width;
    norect.y2 = (unsigned short )fb->height;
  } else
  if ((int )flags & 1) {
    num_clips = num_clips / 2U;
    inc = 2;
  } else {
  }
  qxl_draw_dirty_fb(qdev, qxl_fb, qobj, flags, color, clips, num_clips, inc);
  drm_modeset_unlock_all(fb->dev);
  return (0);
}
}
static struct drm_framebuffer_funcs const qxl_fb_funcs = {& qxl_user_framebuffer_destroy, 0, & qxl_framebuffer_surface_dirty};
int qxl_framebuffer_init(struct drm_device *dev , struct qxl_framebuffer *qfb , struct drm_mode_fb_cmd2 *mode_cmd ,
                         struct drm_gem_object *obj )
{
  int ret ;
  {
  qfb->obj = obj;
  ret = drm_framebuffer_init(dev, & qfb->base, & qxl_fb_funcs);
  if (ret != 0) {
    qfb->obj = (struct drm_gem_object *)0;
    return (ret);
  } else {
  }
  drm_helper_mode_fill_fb_struct(& qfb->base, mode_cmd);
  return (0);
}
}
static void qxl_crtc_dpms(struct drm_crtc *crtc , int mode )
{
  {
  return;
}
}
static bool qxl_crtc_mode_fixup(struct drm_crtc *crtc , struct drm_display_mode const *mode ,
                                struct drm_display_mode *adjusted_mode )
{
  struct drm_device *dev ;
  struct qxl_device *qdev ;
  {
  dev = crtc->dev;
  qdev = (struct qxl_device *)dev->dev_private;
  qxl_io_log(qdev, "%s: (%d,%d) => (%d,%d)\n", "qxl_crtc_mode_fixup", mode->hdisplay,
             mode->vdisplay, adjusted_mode->hdisplay, adjusted_mode->vdisplay);
  return (1);
}
}
void qxl_send_monitors_config(struct qxl_device *qdev )
{
  int i ;
  long tmp ;
  struct qxl_head *head ;
  {
  tmp = ldv__builtin_expect((qdev->ram_header)->monitors_config == 0ULL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_display.c"),
                         "i" (552), "i" (12UL));
    ldv_41610: ;
    goto ldv_41610;
  } else {
  }
  if ((unsigned int )(qdev->monitors_config)->count == 0U) {
    qxl_io_log(qdev, "%s: 0 monitors??\n", "qxl_send_monitors_config");
    return;
  } else {
  }
  i = 0;
  goto ldv_41614;
  ldv_41613:
  head = (struct qxl_head *)(& (qdev->monitors_config)->heads) + (unsigned long )i;
  if (((head->y > 8192U || head->x > 8192U) || head->width > 8192U) || head->height > 8192U) {
    drm_err("head %d wrong: %dx%d+%d+%d\n", i, head->width, head->height, head->x,
            head->y);
    return;
  } else {
  }
  i = i + 1;
  ldv_41614: ;
  if ((int )(qdev->monitors_config)->count > i) {
    goto ldv_41613;
  } else {
  }
  qxl_io_monitors_config(qdev);
  return;
}
}
static void qxl_monitors_config_set(struct qxl_device *qdev , int index , unsigned int x ,
                                    unsigned int y , unsigned int width , unsigned int height ,
                                    unsigned int surf_id )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((drm_debug & 4U) != 0U, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("qxl_monitors_config_set", "%d:%dx%d+%d+%d\n", index, width,
                        height, x, y);
  } else {
  }
  (qdev->monitors_config)->heads[index].x = x;
  (qdev->monitors_config)->heads[index].y = y;
  (qdev->monitors_config)->heads[index].width = width;
  (qdev->monitors_config)->heads[index].height = height;
  (qdev->monitors_config)->heads[index].surface_id = surf_id;
  return;
}
}
static int qxl_crtc_mode_set(struct drm_crtc *crtc , struct drm_display_mode *mode ,
                             struct drm_display_mode *adjusted_mode , int x , int y ,
                             struct drm_framebuffer *old_fb )
{
  struct drm_device *dev ;
  struct qxl_device *qdev ;
  struct qxl_framebuffer *qfb ;
  struct qxl_bo *bo ;
  struct qxl_bo *old_bo ;
  struct qxl_crtc *qcrtc ;
  struct drm_crtc const *__mptr ;
  bool recreate_primary ;
  int ret ;
  int surf_id ;
  long tmp ;
  struct drm_framebuffer const *__mptr___0 ;
  struct drm_gem_object const *__mptr___1 ;
  struct drm_framebuffer const *__mptr___2 ;
  struct drm_gem_object const *__mptr___3 ;
  long tmp___0 ;
  long tmp___1 ;
  {
  dev = crtc->dev;
  qdev = (struct qxl_device *)dev->dev_private;
  old_bo = (struct qxl_bo *)0;
  __mptr = (struct drm_crtc const *)crtc;
  qcrtc = (struct qxl_crtc *)__mptr;
  recreate_primary = 0;
  if ((unsigned long )(crtc->primary)->fb == (unsigned long )((struct drm_framebuffer *)0)) {
    tmp = ldv__builtin_expect((drm_debug & 4U) != 0U, 0L);
    if (tmp != 0L) {
      drm_ut_debug_printk("qxl_crtc_mode_set", "No FB bound\n");
    } else {
    }
    return (0);
  } else {
  }
  if ((unsigned long )old_fb != (unsigned long )((struct drm_framebuffer *)0)) {
    __mptr___0 = (struct drm_framebuffer const *)old_fb;
    qfb = (struct qxl_framebuffer *)__mptr___0;
    __mptr___1 = (struct drm_gem_object const *)qfb->obj;
    old_bo = (struct qxl_bo *)__mptr___1 + 0xfffffffffffffc08UL;
  } else {
  }
  __mptr___2 = (struct drm_framebuffer const *)(crtc->primary)->fb;
  qfb = (struct qxl_framebuffer *)__mptr___2;
  __mptr___3 = (struct drm_gem_object const *)qfb->obj;
  bo = (struct qxl_bo *)__mptr___3 + 0xfffffffffffffc08UL;
  tmp___0 = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp___0 != 0L) {
    drm_ut_debug_printk("qxl_crtc_mode_set", "+%d+%d (%d,%d) => (%d,%d)\n", x, y,
                        mode->hdisplay, mode->vdisplay, adjusted_mode->hdisplay, adjusted_mode->vdisplay);
  } else {
  }
  if (qcrtc->index == 0) {
    recreate_primary = 1;
  } else {
  }
  if ((resource_size_t )((uint32_t )bo->surf.stride * bo->surf.height) > qdev->vram_size) {
    drm_err("Mode doesn\'t fit in vram size (vgamem)");
    return (-22);
  } else {
  }
  ret = qxl_bo_reserve(bo, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = qxl_bo_pin(bo, (u32 )bo->type, (u64 *)0ULL);
  if (ret != 0) {
    qxl_bo_unreserve(bo);
    return (-22);
  } else {
  }
  qxl_bo_unreserve(bo);
  if ((int )recreate_primary) {
    qxl_io_destroy_primary(qdev);
    qxl_io_log(qdev, "recreate primary: %dx%d,%d,%d\n", bo->surf.width, bo->surf.height,
               bo->surf.stride, bo->surf.format);
    qxl_io_create_primary(qdev, 0U, bo);
    bo->is_primary = 1;
  } else {
  }
  if ((int )bo->is_primary) {
    tmp___1 = ldv__builtin_expect((drm_debug & 4U) != 0U, 0L);
    if (tmp___1 != 0L) {
      drm_ut_debug_printk("qxl_crtc_mode_set", "setting surface_id to 0 for primary surface %d on crtc %d\n",
                          bo->surface_id, qcrtc->index);
    } else {
    }
    surf_id = 0;
  } else {
    surf_id = (int )bo->surface_id;
  }
  if ((unsigned long )old_bo != (unsigned long )((struct qxl_bo *)0) && (unsigned long )old_bo != (unsigned long )bo) {
    old_bo->is_primary = 0;
    ret = qxl_bo_reserve(old_bo, 0);
    qxl_bo_unpin(old_bo);
    qxl_bo_unreserve(old_bo);
  } else {
  }
  qxl_monitors_config_set(qdev, qcrtc->index, (unsigned int )x, (unsigned int )y,
                          (unsigned int )mode->hdisplay, (unsigned int )mode->vdisplay,
                          (unsigned int )surf_id);
  return (0);
}
}
static void qxl_crtc_prepare(struct drm_crtc *crtc )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("qxl_crtc_prepare", "current: %dx%d+%d+%d (%d).\n", crtc->mode.hdisplay,
                        crtc->mode.vdisplay, crtc->x, crtc->y, (int )crtc->enabled);
  } else {
  }
  return;
}
}
static void qxl_crtc_commit(struct drm_crtc *crtc )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("qxl_crtc_commit", "\n");
  } else {
  }
  return;
}
}
static void qxl_crtc_disable(struct drm_crtc *crtc )
{
  struct qxl_crtc *qcrtc ;
  struct drm_crtc const *__mptr ;
  struct drm_device *dev ;
  struct qxl_device *qdev ;
  struct qxl_framebuffer *qfb ;
  struct drm_framebuffer const *__mptr___0 ;
  struct qxl_bo *bo ;
  struct drm_gem_object const *__mptr___1 ;
  int ret ;
  {
  __mptr = (struct drm_crtc const *)crtc;
  qcrtc = (struct qxl_crtc *)__mptr;
  dev = crtc->dev;
  qdev = (struct qxl_device *)dev->dev_private;
  if ((unsigned long )(crtc->primary)->fb != (unsigned long )((struct drm_framebuffer *)0)) {
    __mptr___0 = (struct drm_framebuffer const *)(crtc->primary)->fb;
    qfb = (struct qxl_framebuffer *)__mptr___0;
    __mptr___1 = (struct drm_gem_object const *)qfb->obj;
    bo = (struct qxl_bo *)__mptr___1 + 0xfffffffffffffc08UL;
    ret = qxl_bo_reserve(bo, 0);
    qxl_bo_unpin(bo);
    qxl_bo_unreserve(bo);
    (crtc->primary)->fb = (struct drm_framebuffer *)0;
  } else {
  }
  qxl_monitors_config_set(qdev, qcrtc->index, 0U, 0U, 0U, 0U, 0U);
  qxl_send_monitors_config(qdev);
  return;
}
}
static struct drm_crtc_helper_funcs const qxl_crtc_helper_funcs =
     {& qxl_crtc_dpms, & qxl_crtc_prepare, & qxl_crtc_commit, & qxl_crtc_mode_fixup,
    & qxl_crtc_mode_set, 0, 0, 0, 0, & qxl_crtc_disable, 0, 0, 0, 0};
static int qdev_crtc_init(struct drm_device *dev , int crtc_id )
{
  struct qxl_crtc *qxl_crtc ;
  void *tmp ;
  {
  tmp = kzalloc(1176UL, 208U);
  qxl_crtc = (struct qxl_crtc *)tmp;
  if ((unsigned long )qxl_crtc == (unsigned long )((struct qxl_crtc *)0)) {
    return (-12);
  } else {
  }
  drm_crtc_init(dev, & qxl_crtc->base, & qxl_crtc_funcs);
  qxl_crtc->index = crtc_id;
  drm_mode_crtc_set_gamma_size(& qxl_crtc->base, 256);
  drm_crtc_helper_add(& qxl_crtc->base, & qxl_crtc_helper_funcs);
  return (0);
}
}
static void qxl_enc_dpms(struct drm_encoder *encoder , int mode )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("qxl_enc_dpms", "\n");
  } else {
  }
  return;
}
}
static bool qxl_enc_mode_fixup(struct drm_encoder *encoder , struct drm_display_mode const *mode ,
                               struct drm_display_mode *adjusted_mode )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("qxl_enc_mode_fixup", "\n");
  } else {
  }
  return (1);
}
}
static void qxl_enc_prepare(struct drm_encoder *encoder )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("qxl_enc_prepare", "\n");
  } else {
  }
  return;
}
}
static void qxl_write_monitors_config_for_encoder(struct qxl_device *qdev , struct drm_encoder *encoder )
{
  int i ;
  struct qxl_output *output ;
  struct drm_encoder const *__mptr ;
  struct qxl_head *head ;
  struct drm_display_mode *mode ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  __mptr = (struct drm_encoder const *)encoder;
  output = (struct qxl_output *)__mptr + 0xfffffffffffffc50UL;
  tmp = ldv__builtin_expect((unsigned long )encoder == (unsigned long )((struct drm_encoder *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_display.c"),
                         "i" (747), "i" (12UL));
    ldv_41708: ;
    goto ldv_41708;
  } else {
  }
  i = output->index;
  if ((unsigned long )qdev->monitors_config == (unsigned long )((struct qxl_monitors_config *)0) || (int )(qdev->monitors_config)->max_allowed <= i) {
    drm_err("head number too large or missing monitors config: %p, %d", qdev->monitors_config,
            (unsigned long )qdev->monitors_config != (unsigned long )((struct qxl_monitors_config *)0) ? (int )(qdev->monitors_config)->max_allowed : -1);
    return;
  } else {
  }
  if ((unsigned long )encoder->crtc == (unsigned long )((struct drm_crtc *)0)) {
    drm_err("missing crtc on encoder %p\n", encoder);
    return;
  } else {
  }
  if (i != 0) {
    tmp___0 = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
    if (tmp___0 != 0L) {
      drm_ut_debug_printk("qxl_write_monitors_config_for_encoder", "missing for multiple monitors: no head holes\n");
    } else {
    }
  } else {
  }
  head = (struct qxl_head *)(& (qdev->monitors_config)->heads) + (unsigned long )i;
  head->id = (uint32_t )i;
  if ((int )(encoder->crtc)->enabled) {
    mode = & (encoder->crtc)->mode;
    head->width = (uint32_t )mode->hdisplay;
    head->height = (uint32_t )mode->vdisplay;
    head->x = (uint32_t )(encoder->crtc)->x;
    head->y = (uint32_t )(encoder->crtc)->y;
    if ((int )(qdev->monitors_config)->count < i + 1) {
      (qdev->monitors_config)->count = (unsigned int )((uint16_t )i) + 1U;
    } else {
    }
  } else {
    head->width = 0U;
    head->height = 0U;
    head->x = 0U;
    head->y = 0U;
  }
  tmp___1 = ldv__builtin_expect((drm_debug & 4U) != 0U, 0L);
  if (tmp___1 != 0L) {
    drm_ut_debug_printk("qxl_write_monitors_config_for_encoder", "setting head %d to +%d+%d %dx%d out of %d\n",
                        i, head->x, head->y, head->width, head->height, (int )(qdev->monitors_config)->count);
  } else {
  }
  head->flags = 0U;
  qxl_send_monitors_config(qdev);
  return;
}
}
static void qxl_enc_commit(struct drm_encoder *encoder )
{
  struct qxl_device *qdev ;
  long tmp ;
  {
  qdev = (struct qxl_device *)(encoder->dev)->dev_private;
  qxl_write_monitors_config_for_encoder(qdev, encoder);
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("qxl_enc_commit", "\n");
  } else {
  }
  return;
}
}
static void qxl_enc_mode_set(struct drm_encoder *encoder , struct drm_display_mode *mode ,
                             struct drm_display_mode *adjusted_mode )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("qxl_enc_mode_set", "\n");
  } else {
  }
  return;
}
}
static int qxl_conn_get_modes(struct drm_connector *connector )
{
  int ret ;
  struct qxl_device *qdev ;
  unsigned int pwidth ;
  unsigned int pheight ;
  long tmp ;
  int tmp___0 ;
  {
  ret = 0;
  qdev = (struct qxl_device *)(connector->dev)->dev_private;
  pwidth = 1024U;
  pheight = 768U;
  tmp = ldv__builtin_expect((drm_debug & 4U) != 0U, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("qxl_conn_get_modes", "monitors_config=%p\n", qdev->monitors_config);
  } else {
  }
  if ((unsigned long )qdev->monitors_config != (unsigned long )((struct qxl_monitors_config *)0) && (unsigned int )(qdev->monitors_config)->count != 0U) {
    ret = qxl_add_monitors_config_modes(connector, & pwidth, & pheight);
    if (ret < 0) {
      return (ret);
    } else {
    }
  } else {
  }
  tmp___0 = qxl_add_common_modes(connector, pwidth, pheight);
  ret = tmp___0 + ret;
  return (ret);
}
}
static int qxl_conn_mode_valid(struct drm_connector *connector , struct drm_display_mode *mode )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("qxl_conn_mode_valid", "%s: %dx%d status=%d\n", (char *)(& mode->name),
                        mode->hdisplay, mode->vdisplay, (int )mode->status);
  } else {
  }
  return (0);
}
}
static struct drm_encoder *qxl_best_encoder(struct drm_connector *connector )
{
  struct qxl_output *qxl_output ;
  struct drm_connector const *__mptr ;
  long tmp ;
  {
  __mptr = (struct drm_connector const *)connector;
  qxl_output = (struct qxl_output *)__mptr + 0xfffffffffffffff8UL;
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("qxl_best_encoder", "\n");
  } else {
  }
  return (& qxl_output->enc);
}
}
static struct drm_encoder_helper_funcs const qxl_enc_helper_funcs =
     {& qxl_enc_dpms, 0, 0, & qxl_enc_mode_fixup, & qxl_enc_prepare, & qxl_enc_commit,
    & qxl_enc_mode_set, 0, 0, 0, 0, 0};
static struct drm_connector_helper_funcs const qxl_connector_helper_funcs = {& qxl_conn_get_modes, (enum drm_mode_status (*)(struct drm_connector * , struct drm_display_mode * ))(& qxl_conn_mode_valid),
    & qxl_best_encoder};
static void qxl_conn_save(struct drm_connector *connector )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("qxl_conn_save", "\n");
  } else {
  }
  return;
}
}
static void qxl_conn_restore(struct drm_connector *connector )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("qxl_conn_restore", "\n");
  } else {
  }
  return;
}
}
static enum drm_connector_status qxl_conn_detect(struct drm_connector *connector ,
                                                 bool force )
{
  struct qxl_output *output ;
  struct drm_connector const *__mptr ;
  struct drm_device *ddev ;
  struct qxl_device *qdev ;
  int connected ;
  bool tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  __mptr = (struct drm_connector const *)connector;
  output = (struct qxl_output *)__mptr + 0xfffffffffffffff8UL;
  ddev = connector->dev;
  qdev = (struct qxl_device *)ddev->dev_private;
  if (output->index == 0) {
    tmp___0 = 1;
  } else
  if ((unsigned long )qdev->client_monitors_config != (unsigned long )((struct qxl_monitors_config *)0) && (int )(qdev->client_monitors_config)->count > output->index) {
    tmp = qxl_head_enabled((struct qxl_head *)(& (qdev->client_monitors_config)->heads) + (unsigned long )output->index);
    if ((int )tmp) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  connected = tmp___0;
  tmp___1 = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp___1 != 0L) {
    drm_ut_debug_printk("qxl_conn_detect", "#%d connected: %d\n", output->index, connected);
  } else {
  }
  if (connected == 0) {
    qxl_monitors_config_set(qdev, output->index, 0U, 0U, 0U, 0U, 0U);
  } else {
  }
  return (connected != 0 ? 1 : 2);
}
}
static int qxl_conn_set_property(struct drm_connector *connector , struct drm_property *property ,
                                 uint64_t value )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("qxl_conn_set_property", "\n");
  } else {
  }
  return (0);
}
}
static void qxl_conn_destroy(struct drm_connector *connector )
{
  struct qxl_output *qxl_output ;
  struct drm_connector const *__mptr ;
  {
  __mptr = (struct drm_connector const *)connector;
  qxl_output = (struct qxl_output *)__mptr + 0xfffffffffffffff8UL;
  drm_connector_unregister(connector);
  drm_connector_cleanup(connector);
  kfree((void const *)qxl_output);
  return;
}
}
static struct drm_connector_funcs const qxl_connector_funcs =
     {& drm_helper_connector_dpms, & qxl_conn_save, & qxl_conn_restore, 0, & qxl_conn_detect,
    & drm_helper_probe_single_connector_modes_nomerge, & qxl_conn_set_property, & qxl_conn_destroy,
    0, 0, 0, 0, 0};
static void qxl_enc_destroy(struct drm_encoder *encoder )
{
  {
  drm_encoder_cleanup(encoder);
  return;
}
}
static struct drm_encoder_funcs const qxl_enc_funcs = {0, & qxl_enc_destroy};
static int qxl_mode_create_hotplug_mode_update_property(struct qxl_device *qdev )
{
  {
  if ((unsigned long )qdev->hotplug_mode_update_property != (unsigned long )((struct drm_property *)0)) {
    return (0);
  } else {
  }
  qdev->hotplug_mode_update_property = drm_property_create_range(qdev->ddev, 4, "hotplug_mode_update",
                                                                 0ULL, 1ULL);
  return (0);
}
}
static int qdev_output_init(struct drm_device *dev , int num_output )
{
  struct qxl_device *qdev ;
  struct qxl_output *qxl_output ;
  struct drm_connector *connector ;
  struct drm_encoder *encoder ;
  void *tmp ;
  {
  qdev = (struct qxl_device *)dev->dev_private;
  tmp = kzalloc(1040UL, 208U);
  qxl_output = (struct qxl_output *)tmp;
  if ((unsigned long )qxl_output == (unsigned long )((struct qxl_output *)0)) {
    return (-12);
  } else {
  }
  qxl_output->index = num_output;
  connector = & qxl_output->base;
  encoder = & qxl_output->enc;
  drm_connector_init(dev, & qxl_output->base, & qxl_connector_funcs, 15);
  drm_encoder_init(dev, & qxl_output->enc, & qxl_enc_funcs, 5);
  connector->polled = 1U;
  encoder->possible_crtcs = (uint32_t )(1 << num_output);
  drm_mode_connector_attach_encoder(& qxl_output->base, & qxl_output->enc);
  drm_encoder_helper_add(encoder, & qxl_enc_helper_funcs);
  drm_connector_helper_add(connector, & qxl_connector_helper_funcs);
  drm_object_attach_property(& connector->base, qdev->hotplug_mode_update_property,
                             0ULL);
  drm_object_attach_property(& connector->base, dev->mode_config.suggested_x_property,
                             0ULL);
  drm_object_attach_property(& connector->base, dev->mode_config.suggested_y_property,
                             0ULL);
  drm_connector_register(connector);
  return (0);
}
}
static struct drm_framebuffer *qxl_user_framebuffer_create(struct drm_device *dev ,
                                                           struct drm_file *file_priv ,
                                                           struct drm_mode_fb_cmd2 *mode_cmd )
{
  struct drm_gem_object *obj ;
  struct qxl_framebuffer *qxl_fb ;
  int ret ;
  void *tmp ;
  {
  obj = drm_gem_object_lookup(dev, file_priv, mode_cmd->handles[0]);
  tmp = kzalloc(176UL, 208U);
  qxl_fb = (struct qxl_framebuffer *)tmp;
  if ((unsigned long )qxl_fb == (unsigned long )((struct qxl_framebuffer *)0)) {
    return ((struct drm_framebuffer *)0);
  } else {
  }
  ret = qxl_framebuffer_init(dev, qxl_fb, mode_cmd, obj);
  if (ret != 0) {
    kfree((void const *)qxl_fb);
    drm_gem_object_unreference_unlocked(obj);
    return ((struct drm_framebuffer *)0);
  } else {
  }
  return (& qxl_fb->base);
}
}
static struct drm_mode_config_funcs const qxl_mode_funcs = {& qxl_user_framebuffer_create, 0, 0, 0, 0, 0, 0};
int qxl_create_monitors_object(struct qxl_device *qdev )
{
  int ret ;
  struct drm_gem_object *gobj ;
  int max_allowed ;
  int monitors_config_size ;
  struct drm_gem_object const *__mptr ;
  {
  max_allowed = qxl_num_crtc;
  monitors_config_size = (int )((unsigned int )((unsigned long )max_allowed) * 28U + 4U);
  ret = qxl_gem_object_create(qdev, monitors_config_size, 0, 1, 0, 0, (struct qxl_surface *)0,
                              & gobj);
  if (ret != 0) {
    drm_err("%s: failed to create gem ret=%d\n", "qxl_create_monitors_object", ret);
    return (-12);
  } else {
  }
  __mptr = (struct drm_gem_object const *)gobj;
  qdev->monitors_config_bo = (struct qxl_bo *)__mptr + 0xfffffffffffffc08UL;
  ret = qxl_bo_reserve(qdev->monitors_config_bo, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = qxl_bo_pin(qdev->monitors_config_bo, 1U, (u64 *)0ULL);
  if (ret != 0) {
    qxl_bo_unreserve(qdev->monitors_config_bo);
    return (ret);
  } else {
  }
  qxl_bo_unreserve(qdev->monitors_config_bo);
  qxl_bo_kmap(qdev->monitors_config_bo, (void **)0);
  qdev->monitors_config = (struct qxl_monitors_config *)(qdev->monitors_config_bo)->kptr;
  (qdev->ram_header)->monitors_config = qxl_bo_physical_address(qdev, qdev->monitors_config_bo,
                                                                0UL);
  memset((void *)qdev->monitors_config, 0, (size_t )monitors_config_size);
  (qdev->monitors_config)->max_allowed = (uint16_t )max_allowed;
  return (0);
}
}
int qxl_destroy_monitors_object(struct qxl_device *qdev )
{
  int ret ;
  {
  qdev->monitors_config = (struct qxl_monitors_config *)0;
  (qdev->ram_header)->monitors_config = 0ULL;
  qxl_bo_kunmap(qdev->monitors_config_bo);
  ret = qxl_bo_reserve(qdev->monitors_config_bo, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  qxl_bo_unpin(qdev->monitors_config_bo);
  qxl_bo_unreserve(qdev->monitors_config_bo);
  qxl_bo_unref(& qdev->monitors_config_bo);
  return (0);
}
}
int qxl_modeset_init(struct qxl_device *qdev )
{
  int i ;
  int ret ;
  {
  drm_mode_config_init(qdev->ddev);
  ret = qxl_create_monitors_object(qdev);
  if (ret != 0) {
    return (ret);
  } else {
  }
  (qdev->ddev)->mode_config.funcs = & qxl_mode_funcs;
  (qdev->ddev)->mode_config.min_width = 320;
  (qdev->ddev)->mode_config.min_height = 200;
  (qdev->ddev)->mode_config.max_width = 8192;
  (qdev->ddev)->mode_config.max_height = 8192;
  (qdev->ddev)->mode_config.fb_base = qdev->vram_base;
  drm_mode_create_suggested_offset_properties(qdev->ddev);
  qxl_mode_create_hotplug_mode_update_property(qdev);
  i = 0;
  goto ldv_41819;
  ldv_41818:
  qdev_crtc_init(qdev->ddev, i);
  qdev_output_init(qdev->ddev, i);
  i = i + 1;
  ldv_41819: ;
  if (i < qxl_num_crtc) {
    goto ldv_41818;
  } else {
  }
  qdev->mode_info.mode_config_initialized = 1;
  qxl_fbdev_init(qdev);
  return (0);
}
}
void qxl_modeset_fini(struct qxl_device *qdev )
{
  {
  qxl_fbdev_fini(qdev);
  qxl_destroy_monitors_object(qdev);
  if ((int )qdev->mode_info.mode_config_initialized) {
    drm_mode_config_cleanup(qdev->ddev);
    qdev->mode_info.mode_config_initialized = 0;
  } else {
  }
  return;
}
}
extern int ldv_probe_16(void) ;
extern int ldv_bind_15(void) ;
extern int ldv_probe_17(void) ;
extern int ldv_connect_15(void) ;
extern int ldv_probe_12(void) ;
extern int ldv_release_15(void) ;
extern int ldv_probe_11(void) ;
void ldv_initialize_drm_crtc_helper_funcs_15(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1160UL);
  qxl_crtc_helper_funcs_group0 = (struct drm_crtc *)tmp;
  tmp___0 = ldv_init_zalloc(208UL);
  qxl_crtc_helper_funcs_group1 = (struct drm_display_mode *)tmp___0;
  return;
}
}
void ldv_initialize_drm_connector_helper_funcs_13(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(936UL);
  qxl_connector_helper_funcs_group0 = (struct drm_connector *)tmp;
  return;
}
}
void ldv_initialize_drm_crtc_funcs_17(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1160UL);
  qxl_crtc_funcs_group0 = (struct drm_crtc *)tmp;
  return;
}
}
void ldv_initialize_drm_framebuffer_funcs_16(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(168UL);
  qxl_fb_funcs_group0 = (struct drm_framebuffer *)tmp;
  return;
}
}
void ldv_initialize_drm_connector_funcs_12(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(936UL);
  qxl_connector_funcs_group0 = (struct drm_connector *)tmp;
  return;
}
}
void ldv_initialize_drm_encoder_helper_funcs_14(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(96UL);
  qxl_enc_helper_funcs_group0 = (struct drm_encoder *)tmp;
  tmp___0 = ldv_init_zalloc(208UL);
  qxl_enc_helper_funcs_group1 = (struct drm_display_mode *)tmp___0;
  return;
}
}
void ldv_main_exported_11(void)
{
  struct drm_encoder *ldvarg0 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_init_zalloc(96UL);
  ldvarg0 = (struct drm_encoder *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_11 == 2) {
    qxl_enc_destroy(ldvarg0);
    ldv_state_variable_11 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_41861;
  case 1: ;
  if (ldv_state_variable_11 == 1) {
    ldv_probe_11();
    ldv_state_variable_11 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_41861;
  default:
  ldv_stop();
  }
  ldv_41861: ;
  return;
}
}
void ldv_main_exported_17(void)
{
  int32_t ldvarg19 ;
  struct drm_mode_set *ldvarg10 ;
  void *tmp ;
  struct drm_framebuffer *ldvarg13 ;
  void *tmp___0 ;
  uint32_t ldvarg17 ;
  int ldvarg14 ;
  uint32_t ldvarg21 ;
  int ldvarg15 ;
  int32_t ldvarg16 ;
  struct drm_pending_vblank_event *ldvarg12 ;
  void *tmp___1 ;
  struct drm_file *ldvarg20 ;
  void *tmp___2 ;
  uint32_t ldvarg11 ;
  uint32_t ldvarg18 ;
  int tmp___3 ;
  {
  tmp = ldv_init_zalloc(48UL);
  ldvarg10 = (struct drm_mode_set *)tmp;
  tmp___0 = ldv_init_zalloc(168UL);
  ldvarg13 = (struct drm_framebuffer *)tmp___0;
  tmp___1 = ldv_init_zalloc(88UL);
  ldvarg12 = (struct drm_pending_vblank_event *)tmp___1;
  tmp___2 = ldv_init_zalloc(744UL);
  ldvarg20 = (struct drm_file *)tmp___2;
  ldv_memset((void *)(& ldvarg19), 0, 4UL);
  ldv_memset((void *)(& ldvarg17), 0, 4UL);
  ldv_memset((void *)(& ldvarg14), 0, 4UL);
  ldv_memset((void *)(& ldvarg21), 0, 4UL);
  ldv_memset((void *)(& ldvarg15), 0, 4UL);
  ldv_memset((void *)(& ldvarg16), 0, 4UL);
  ldv_memset((void *)(& ldvarg11), 0, 4UL);
  ldv_memset((void *)(& ldvarg18), 0, 4UL);
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_17 == 1) {
    qxl_crtc_cursor_set2(qxl_crtc_funcs_group0, ldvarg20, ldvarg18, ldvarg17, ldvarg21,
                         ldvarg16, ldvarg19);
    ldv_state_variable_17 = 1;
  } else {
  }
  if (ldv_state_variable_17 == 2) {
    qxl_crtc_cursor_set2(qxl_crtc_funcs_group0, ldvarg20, ldvarg18, ldvarg17, ldvarg21,
                         ldvarg16, ldvarg19);
    ldv_state_variable_17 = 2;
  } else {
  }
  goto ldv_41880;
  case 1: ;
  if (ldv_state_variable_17 == 1) {
    qxl_crtc_cursor_move(qxl_crtc_funcs_group0, ldvarg15, ldvarg14);
    ldv_state_variable_17 = 1;
  } else {
  }
  if (ldv_state_variable_17 == 2) {
    qxl_crtc_cursor_move(qxl_crtc_funcs_group0, ldvarg15, ldvarg14);
    ldv_state_variable_17 = 2;
  } else {
  }
  goto ldv_41880;
  case 2: ;
  if (ldv_state_variable_17 == 1) {
    qxl_crtc_page_flip(qxl_crtc_funcs_group0, ldvarg13, ldvarg12, ldvarg11);
    ldv_state_variable_17 = 1;
  } else {
  }
  if (ldv_state_variable_17 == 2) {
    qxl_crtc_page_flip(qxl_crtc_funcs_group0, ldvarg13, ldvarg12, ldvarg11);
    ldv_state_variable_17 = 2;
  } else {
  }
  goto ldv_41880;
  case 3: ;
  if (ldv_state_variable_17 == 2) {
    qxl_crtc_destroy(qxl_crtc_funcs_group0);
    ldv_state_variable_17 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_41880;
  case 4: ;
  if (ldv_state_variable_17 == 1) {
    drm_crtc_helper_set_config(ldvarg10);
    ldv_state_variable_17 = 1;
  } else {
  }
  if (ldv_state_variable_17 == 2) {
    drm_crtc_helper_set_config(ldvarg10);
    ldv_state_variable_17 = 2;
  } else {
  }
  goto ldv_41880;
  case 5: ;
  if (ldv_state_variable_17 == 1) {
    ldv_probe_17();
    ldv_state_variable_17 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_41880;
  default:
  ldv_stop();
  }
  ldv_41880: ;
  return;
}
}
void ldv_main_exported_12(void)
{
  uint32_t ldvarg56 ;
  struct drm_property *ldvarg59 ;
  void *tmp ;
  bool ldvarg60 ;
  int ldvarg61 ;
  uint64_t ldvarg58 ;
  uint32_t ldvarg57 ;
  int tmp___0 ;
  {
  tmp = ldv_init_zalloc(104UL);
  ldvarg59 = (struct drm_property *)tmp;
  ldv_memset((void *)(& ldvarg56), 0, 4UL);
  ldv_memset((void *)(& ldvarg60), 0, 1UL);
  ldv_memset((void *)(& ldvarg61), 0, 4UL);
  ldv_memset((void *)(& ldvarg58), 0, 8UL);
  ldv_memset((void *)(& ldvarg57), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_12 == 1) {
    drm_helper_connector_dpms(qxl_connector_funcs_group0, ldvarg61);
    ldv_state_variable_12 = 1;
  } else {
  }
  if (ldv_state_variable_12 == 2) {
    drm_helper_connector_dpms(qxl_connector_funcs_group0, ldvarg61);
    ldv_state_variable_12 = 2;
  } else {
  }
  goto ldv_41897;
  case 1: ;
  if (ldv_state_variable_12 == 1) {
    qxl_conn_detect(qxl_connector_funcs_group0, (int )ldvarg60);
    ldv_state_variable_12 = 1;
  } else {
  }
  if (ldv_state_variable_12 == 2) {
    qxl_conn_detect(qxl_connector_funcs_group0, (int )ldvarg60);
    ldv_state_variable_12 = 2;
  } else {
  }
  goto ldv_41897;
  case 2: ;
  if (ldv_state_variable_12 == 1) {
    qxl_conn_set_property(qxl_connector_funcs_group0, ldvarg59, ldvarg58);
    ldv_state_variable_12 = 1;
  } else {
  }
  if (ldv_state_variable_12 == 2) {
    qxl_conn_set_property(qxl_connector_funcs_group0, ldvarg59, ldvarg58);
    ldv_state_variable_12 = 2;
  } else {
  }
  goto ldv_41897;
  case 3: ;
  if (ldv_state_variable_12 == 2) {
    qxl_conn_destroy(qxl_connector_funcs_group0);
    ldv_state_variable_12 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_41897;
  case 4: ;
  if (ldv_state_variable_12 == 1) {
    qxl_conn_save(qxl_connector_funcs_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  if (ldv_state_variable_12 == 2) {
    qxl_conn_save(qxl_connector_funcs_group0);
    ldv_state_variable_12 = 2;
  } else {
  }
  goto ldv_41897;
  case 5: ;
  if (ldv_state_variable_12 == 1) {
    qxl_conn_restore(qxl_connector_funcs_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  if (ldv_state_variable_12 == 2) {
    qxl_conn_restore(qxl_connector_funcs_group0);
    ldv_state_variable_12 = 2;
  } else {
  }
  goto ldv_41897;
  case 6: ;
  if (ldv_state_variable_12 == 1) {
    drm_helper_probe_single_connector_modes_nomerge(qxl_connector_funcs_group0, ldvarg57,
                                                    ldvarg56);
    ldv_state_variable_12 = 1;
  } else {
  }
  if (ldv_state_variable_12 == 2) {
    drm_helper_probe_single_connector_modes_nomerge(qxl_connector_funcs_group0, ldvarg57,
                                                    ldvarg56);
    ldv_state_variable_12 = 2;
  } else {
  }
  goto ldv_41897;
  case 7: ;
  if (ldv_state_variable_12 == 1) {
    ldv_probe_12();
    ldv_state_variable_12 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_41897;
  default:
  ldv_stop();
  }
  ldv_41897: ;
  return;
}
}
void ldv_main_exported_15(void)
{
  struct drm_display_mode *ldvarg69 ;
  void *tmp ;
  int ldvarg68 ;
  int ldvarg66 ;
  struct drm_display_mode *ldvarg67 ;
  void *tmp___0 ;
  int ldvarg70 ;
  struct drm_framebuffer *ldvarg65 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(208UL);
  ldvarg69 = (struct drm_display_mode *)tmp;
  tmp___0 = ldv_init_zalloc(208UL);
  ldvarg67 = (struct drm_display_mode *)tmp___0;
  tmp___1 = ldv_init_zalloc(168UL);
  ldvarg65 = (struct drm_framebuffer *)tmp___1;
  ldv_memset((void *)(& ldvarg68), 0, 4UL);
  ldv_memset((void *)(& ldvarg66), 0, 4UL);
  ldv_memset((void *)(& ldvarg70), 0, 4UL);
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_15 == 3) {
    qxl_crtc_dpms(qxl_crtc_helper_funcs_group0, ldvarg70);
    ldv_state_variable_15 = 3;
  } else {
  }
  if (ldv_state_variable_15 == 2) {
    qxl_crtc_dpms(qxl_crtc_helper_funcs_group0, ldvarg70);
    ldv_state_variable_15 = 2;
  } else {
  }
  if (ldv_state_variable_15 == 1) {
    qxl_crtc_dpms(qxl_crtc_helper_funcs_group0, ldvarg70);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_41916;
  case 1: ;
  if (ldv_state_variable_15 == 3) {
    qxl_crtc_mode_fixup(qxl_crtc_helper_funcs_group0, (struct drm_display_mode const *)ldvarg69,
                        qxl_crtc_helper_funcs_group1);
    ldv_state_variable_15 = 3;
  } else {
  }
  if (ldv_state_variable_15 == 2) {
    qxl_crtc_mode_fixup(qxl_crtc_helper_funcs_group0, (struct drm_display_mode const *)ldvarg69,
                        qxl_crtc_helper_funcs_group1);
    ldv_state_variable_15 = 2;
  } else {
  }
  if (ldv_state_variable_15 == 1) {
    qxl_crtc_mode_fixup(qxl_crtc_helper_funcs_group0, (struct drm_display_mode const *)ldvarg69,
                        qxl_crtc_helper_funcs_group1);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_41916;
  case 2: ;
  if (ldv_state_variable_15 == 3) {
    qxl_crtc_commit(qxl_crtc_helper_funcs_group0);
    ldv_state_variable_15 = 3;
  } else {
  }
  if (ldv_state_variable_15 == 2) {
    qxl_crtc_commit(qxl_crtc_helper_funcs_group0);
    ldv_state_variable_15 = 2;
  } else {
  }
  if (ldv_state_variable_15 == 1) {
    qxl_crtc_commit(qxl_crtc_helper_funcs_group0);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_41916;
  case 3: ;
  if (ldv_state_variable_15 == 3) {
    qxl_crtc_mode_set(qxl_crtc_helper_funcs_group0, qxl_crtc_helper_funcs_group1,
                      ldvarg67, ldvarg66, ldvarg68, ldvarg65);
    ldv_state_variable_15 = 3;
  } else {
  }
  if (ldv_state_variable_15 == 2) {
    qxl_crtc_mode_set(qxl_crtc_helper_funcs_group0, qxl_crtc_helper_funcs_group1,
                      ldvarg67, ldvarg66, ldvarg68, ldvarg65);
    ldv_state_variable_15 = 2;
  } else {
  }
  if (ldv_state_variable_15 == 1) {
    qxl_crtc_mode_set(qxl_crtc_helper_funcs_group0, qxl_crtc_helper_funcs_group1,
                      ldvarg67, ldvarg66, ldvarg68, ldvarg65);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_41916;
  case 4: ;
  if (ldv_state_variable_15 == 3) {
    qxl_crtc_disable(qxl_crtc_helper_funcs_group0);
    ldv_state_variable_15 = 2;
  } else {
  }
  goto ldv_41916;
  case 5: ;
  if (ldv_state_variable_15 == 3) {
    qxl_crtc_prepare(qxl_crtc_helper_funcs_group0);
    ldv_state_variable_15 = 3;
  } else {
  }
  if (ldv_state_variable_15 == 2) {
    qxl_crtc_prepare(qxl_crtc_helper_funcs_group0);
    ldv_state_variable_15 = 2;
  } else {
  }
  if (ldv_state_variable_15 == 1) {
    qxl_crtc_prepare(qxl_crtc_helper_funcs_group0);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_41916;
  case 6: ;
  if (ldv_state_variable_15 == 2) {
    ldv_release_15();
    ldv_state_variable_15 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_41916;
  case 7: ;
  if (ldv_state_variable_15 == 1) {
    ldv_bind_15();
    ldv_state_variable_15 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_41916;
  case 8: ;
  if (ldv_state_variable_15 == 2) {
    ldv_connect_15();
    ldv_state_variable_15 = 3;
  } else {
  }
  goto ldv_41916;
  default:
  ldv_stop();
  }
  ldv_41916: ;
  return;
}
}
void ldv_main_exported_14(void)
{
  struct drm_display_mode *ldvarg62 ;
  void *tmp ;
  int ldvarg64 ;
  struct drm_display_mode *ldvarg63 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(208UL);
  ldvarg62 = (struct drm_display_mode *)tmp;
  tmp___0 = ldv_init_zalloc(208UL);
  ldvarg63 = (struct drm_display_mode *)tmp___0;
  ldv_memset((void *)(& ldvarg64), 0, 4UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_14 == 1) {
    qxl_enc_dpms(qxl_enc_helper_funcs_group0, ldvarg64);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_41933;
  case 1: ;
  if (ldv_state_variable_14 == 1) {
    qxl_enc_mode_fixup(qxl_enc_helper_funcs_group0, (struct drm_display_mode const *)ldvarg63,
                       qxl_enc_helper_funcs_group1);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_41933;
  case 2: ;
  if (ldv_state_variable_14 == 1) {
    qxl_enc_commit(qxl_enc_helper_funcs_group0);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_41933;
  case 3: ;
  if (ldv_state_variable_14 == 1) {
    qxl_enc_mode_set(qxl_enc_helper_funcs_group0, qxl_enc_helper_funcs_group1, ldvarg62);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_41933;
  case 4: ;
  if (ldv_state_variable_14 == 1) {
    qxl_enc_prepare(qxl_enc_helper_funcs_group0);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_41933;
  default:
  ldv_stop();
  }
  ldv_41933: ;
  return;
}
}
void ldv_main_exported_10(void)
{
  struct drm_mode_fb_cmd2 *ldvarg86 ;
  void *tmp ;
  struct drm_file *ldvarg87 ;
  void *tmp___0 ;
  struct drm_device *ldvarg85 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(104UL);
  ldvarg86 = (struct drm_mode_fb_cmd2 *)tmp;
  tmp___0 = ldv_init_zalloc(744UL);
  ldvarg87 = (struct drm_file *)tmp___0;
  tmp___1 = ldv_init_zalloc(3320UL);
  ldvarg85 = (struct drm_device *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_10 == 1) {
    qxl_user_framebuffer_create(ldvarg85, ldvarg87, ldvarg86);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_41946;
  default:
  ldv_stop();
  }
  ldv_41946: ;
  return;
}
}
void ldv_main_exported_13(void)
{
  struct drm_display_mode *ldvarg49 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_init_zalloc(208UL);
  ldvarg49 = (struct drm_display_mode *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_13 == 1) {
    qxl_conn_get_modes(qxl_connector_helper_funcs_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_41953;
  case 1: ;
  if (ldv_state_variable_13 == 1) {
    qxl_conn_mode_valid(qxl_connector_helper_funcs_group0, ldvarg49);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_41953;
  case 2: ;
  if (ldv_state_variable_13 == 1) {
    qxl_best_encoder(qxl_connector_helper_funcs_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_41953;
  default:
  ldv_stop();
  }
  ldv_41953: ;
  return;
}
}
void ldv_main_exported_16(void)
{
  unsigned int ldvarg46 ;
  struct drm_file *ldvarg47 ;
  void *tmp ;
  unsigned int ldvarg44 ;
  unsigned int ldvarg45 ;
  struct drm_clip_rect *ldvarg48 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(744UL);
  ldvarg47 = (struct drm_file *)tmp;
  tmp___0 = ldv_init_zalloc(8UL);
  ldvarg48 = (struct drm_clip_rect *)tmp___0;
  ldv_memset((void *)(& ldvarg46), 0, 4UL);
  ldv_memset((void *)(& ldvarg44), 0, 4UL);
  ldv_memset((void *)(& ldvarg45), 0, 4UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_16 == 2) {
    qxl_user_framebuffer_destroy(qxl_fb_funcs_group0);
    ldv_state_variable_16 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_41966;
  case 1: ;
  if (ldv_state_variable_16 == 1) {
    qxl_framebuffer_surface_dirty(qxl_fb_funcs_group0, ldvarg47, ldvarg46, ldvarg45,
                                  ldvarg48, ldvarg44);
    ldv_state_variable_16 = 1;
  } else {
  }
  if (ldv_state_variable_16 == 2) {
    qxl_framebuffer_surface_dirty(qxl_fb_funcs_group0, ldvarg47, ldvarg46, ldvarg45,
                                  ldvarg48, ldvarg44);
    ldv_state_variable_16 = 2;
  } else {
  }
  goto ldv_41966;
  case 2: ;
  if (ldv_state_variable_16 == 1) {
    ldv_probe_16();
    ldv_state_variable_16 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_41966;
  default:
  ldv_stop();
  }
  ldv_41966: ;
  return;
}
}
bool ldv_queue_work_on_99(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_100(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_101(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_102(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_103(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_104(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_105(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_106(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_107(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
void ldv_mutex_unlock_108(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_109(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_110(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_111(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_112(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_fb_info(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_114(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_base_of_ww_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_115(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
int ldv_mutex_trylock_116(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
__inline static int ldv_kref_put_mutex_118(struct kref *kref , void (*release)(struct kref * ) ,
                                           struct mutex *lock )
{
  {
  ldv_mutex_lock_struct_mutex_of_drm_device(lock);
  drm_gem_object_free(kref);
  return (1);
}
}
void ldv_mutex_unlock_119(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern int sprintf(char * , char const * , ...) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
int ldv_mutex_trylock_155(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_158(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_149(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_152(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_159(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_161(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_162(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_164(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_154(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_150(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_151(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_153(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_157(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_160(struct mutex *ldv_func_arg1 ) ;
bool ldv_queue_work_on_144(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_146(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_145(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_148(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_147(struct workqueue_struct *ldv_func_arg1 ) ;
extern int drm_mm_dump_table(struct seq_file * , struct drm_mm * ) ;
extern bool drm_vma_node_is_allowed(struct drm_vma_offset_node * , struct file * ) ;
__inline static int drm_vma_node_verify_access(struct drm_vma_offset_node *node ,
                                               struct file *filp )
{
  bool tmp ;
  {
  tmp = drm_vma_node_is_allowed(node, filp);
  return ((int )tmp ? 0 : -13);
}
}
extern int ttm_bo_init_mm(struct ttm_bo_device * , unsigned int , unsigned long ) ;
extern int ttm_bo_clean_mm(struct ttm_bo_device * , unsigned int ) ;
extern int ttm_bo_mmap(struct file * , struct vm_area_struct * , struct ttm_bo_device * ) ;
extern int ttm_mem_global_init(struct ttm_mem_global * ) ;
extern void ttm_mem_global_release(struct ttm_mem_global * ) ;
extern int drm_global_item_ref(struct drm_global_reference * ) ;
extern void drm_global_item_unref(struct drm_global_reference * ) ;
extern int ttm_dma_tt_init(struct ttm_dma_tt * , struct ttm_bo_device * , unsigned long ,
                           uint32_t , struct page * ) ;
extern void ttm_dma_tt_fini(struct ttm_dma_tt * ) ;
extern void ttm_bo_global_release(struct drm_global_reference * ) ;
extern int ttm_bo_global_init(struct drm_global_reference * ) ;
extern int ttm_bo_device_release(struct ttm_bo_device * ) ;
extern int ttm_bo_device_init(struct ttm_bo_device * , struct ttm_bo_global * , struct ttm_bo_driver * ,
                              struct address_space * , uint64_t , bool ) ;
extern int ttm_bo_move_memcpy(struct ttm_buffer_object * , bool , bool , struct ttm_mem_reg * ) ;
extern struct ttm_mem_type_manager_func const ttm_bo_manager_func ;
extern int ttm_pool_populate(struct ttm_tt * ) ;
extern void ttm_pool_unpopulate(struct ttm_tt * ) ;
int qxl_debugfs_add_files(struct qxl_device *qdev , struct drm_info_list *files ,
                          unsigned int nfiles ) ;
int qxl_ttm_init(struct qxl_device *qdev ) ;
void qxl_ttm_fini(struct qxl_device *qdev ) ;
void qxl_surface_evict(struct qxl_device *qdev , struct qxl_bo *surf , bool do_update_area ) ;
void qxl_ttm_placement_from_domain(struct qxl_bo *qbo , u32 domain , bool pinned ) ;
bool qxl_ttm_bo_is_qxl_bo(struct ttm_buffer_object *bo ) ;
static int qxl_ttm_debugfs_init(struct qxl_device *qdev ) ;
static struct qxl_device *qxl_get_qdev(struct ttm_bo_device *bdev )
{
  struct qxl_mman *mman ;
  struct qxl_device *qdev ;
  struct ttm_bo_device const *__mptr ;
  struct qxl_mman const *__mptr___0 ;
  {
  __mptr = (struct ttm_bo_device const *)bdev;
  mman = (struct qxl_mman *)__mptr + 0xffffffffffffffa0UL;
  __mptr___0 = (struct qxl_mman const *)mman;
  qdev = (struct qxl_device *)__mptr___0 + 0xffffffffffffff78UL;
  return (qdev);
}
}
static int qxl_ttm_mem_global_init(struct drm_global_reference *ref )
{
  int tmp ;
  {
  tmp = ttm_mem_global_init((struct ttm_mem_global *)ref->object);
  return (tmp);
}
}
static void qxl_ttm_mem_global_release(struct drm_global_reference *ref )
{
  {
  ttm_mem_global_release((struct ttm_mem_global *)ref->object);
  return;
}
}
static int qxl_ttm_global_init(struct qxl_device *qdev )
{
  struct drm_global_reference *global_ref ;
  int r ;
  {
  qdev->mman.mem_global_referenced = 0;
  global_ref = & qdev->mman.mem_global_ref;
  global_ref->global_type = 0;
  global_ref->size = 504UL;
  global_ref->init = & qxl_ttm_mem_global_init;
  global_ref->release = & qxl_ttm_mem_global_release;
  r = drm_global_item_ref(global_ref);
  if (r != 0) {
    drm_err("Failed setting up TTM memory accounting subsystem.\n");
    return (r);
  } else {
  }
  qdev->mman.bo_global_ref.mem_glob = (struct ttm_mem_global *)qdev->mman.mem_global_ref.object;
  global_ref = & qdev->mman.bo_global_ref.ref;
  global_ref->global_type = 1;
  global_ref->size = 592UL;
  global_ref->init = & ttm_bo_global_init;
  global_ref->release = & ttm_bo_global_release;
  r = drm_global_item_ref(global_ref);
  if (r != 0) {
    drm_err("Failed setting up TTM BO subsystem.\n");
    drm_global_item_unref(& qdev->mman.mem_global_ref);
    return (r);
  } else {
  }
  qdev->mman.mem_global_referenced = 1;
  return (0);
}
}
static void qxl_ttm_global_fini(struct qxl_device *qdev )
{
  {
  if ((int )qdev->mman.mem_global_referenced) {
    drm_global_item_unref(& qdev->mman.bo_global_ref.ref);
    drm_global_item_unref(& qdev->mman.mem_global_ref);
    qdev->mman.mem_global_referenced = 0;
  } else {
  }
  return;
}
}
static struct vm_operations_struct qxl_ttm_vm_ops ;
static struct vm_operations_struct const *ttm_vm_ops ;
static int qxl_ttm_fault(struct vm_area_struct *vma , struct vm_fault *vmf )
{
  struct ttm_buffer_object *bo ;
  int r ;
  {
  bo = (struct ttm_buffer_object *)vma->vm_private_data;
  if ((unsigned long )bo == (unsigned long )((struct ttm_buffer_object *)0)) {
    return (256);
  } else {
  }
  r = (*(ttm_vm_ops->fault))(vma, vmf);
  return (r);
}
}
int qxl_mmap(struct file *filp , struct vm_area_struct *vma )
{
  struct drm_file *file_priv ;
  struct qxl_device *qdev ;
  int r ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = ldv__builtin_expect((unsigned long long )vma->vm_pgoff <= 1048575ULL, 0L);
  if (tmp != 0L) {
    printk("\016%s: vma->vm_pgoff (%ld) < DRM_FILE_PAGE_OFFSET\n", "qxl_mmap", vma->vm_pgoff);
    return (-22);
  } else {
  }
  file_priv = (struct drm_file *)filp->private_data;
  qdev = (struct qxl_device *)((file_priv->minor)->dev)->dev_private;
  if ((unsigned long )qdev == (unsigned long )((struct qxl_device *)0)) {
    drm_err("filp->private_data->minor->dev->dev_private == NULL\n");
    return (-22);
  } else {
  }
  if (qxl_log_level > 0) {
    qxl_io_log(qdev, "%s: filp->private_data = 0x%p, vma->vm_pgoff = %lx\n", "qxl_mmap",
               filp->private_data, vma->vm_pgoff);
  } else {
  }
  r = ttm_bo_mmap(filp, vma, & qdev->mman.bdev);
  tmp___0 = ldv__builtin_expect(r != 0, 0L);
  if (tmp___0 != 0L) {
    return (r);
  } else {
  }
  tmp___1 = ldv__builtin_expect((unsigned long )ttm_vm_ops == (unsigned long )((struct vm_operations_struct const *)0),
                             0L);
  if (tmp___1 != 0L) {
    ttm_vm_ops = vma->vm_ops;
    qxl_ttm_vm_ops = *ttm_vm_ops;
    qxl_ttm_vm_ops.fault = & qxl_ttm_fault;
  } else {
  }
  vma->vm_ops = (struct vm_operations_struct const *)(& qxl_ttm_vm_ops);
  return (0);
}
}
static int qxl_invalidate_caches(struct ttm_bo_device *bdev , uint32_t flags )
{
  {
  return (0);
}
}
static int qxl_init_mem_type(struct ttm_bo_device *bdev , uint32_t type , struct ttm_mem_type_manager *man )
{
  {
  switch (type) {
  case 0U:
  man->flags = 2U;
  man->available_caching = 458752U;
  man->default_caching = 65536U;
  goto ldv_41136;
  case 2U: ;
  case 3U:
  man->func = & ttm_bo_manager_func;
  man->gpu_offset = 0ULL;
  man->flags = 3U;
  man->available_caching = 458752U;
  man->default_caching = 65536U;
  goto ldv_41136;
  default:
  drm_err("Unsupported memory type %u\n", type);
  return (-22);
  }
  ldv_41136: ;
  return (0);
}
}
static void qxl_evict_flags(struct ttm_buffer_object *bo , struct ttm_placement *placement )
{
  struct qxl_bo *qbo ;
  struct ttm_place placements ;
  bool tmp ;
  int tmp___0 ;
  struct ttm_buffer_object const *__mptr ;
  {
  placements.fpfn = 0U;
  placements.lpfn = 0U;
  placements.flags = 458753U;
  tmp = qxl_ttm_bo_is_qxl_bo(bo);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    placement->placement = (struct ttm_place const *)(& placements);
    placement->busy_placement = (struct ttm_place const *)(& placements);
    placement->num_placement = 1U;
    placement->num_busy_placement = 1U;
    return;
  } else {
  }
  __mptr = (struct ttm_buffer_object const *)bo;
  qbo = (struct qxl_bo *)__mptr + 0xffffffffffffffa8UL;
  qxl_ttm_placement_from_domain(qbo, 0U, 0);
  *placement = qbo->placement;
  return;
}
}
static int qxl_verify_access(struct ttm_buffer_object *bo , struct file *filp )
{
  struct qxl_bo *qbo ;
  struct ttm_buffer_object const *__mptr ;
  int tmp ;
  {
  __mptr = (struct ttm_buffer_object const *)bo;
  qbo = (struct qxl_bo *)__mptr + 0xffffffffffffffa8UL;
  tmp = drm_vma_node_verify_access(& qbo->gem_base.vma_node, filp);
  return (tmp);
}
}
static int qxl_ttm_io_mem_reserve(struct ttm_bo_device *bdev , struct ttm_mem_reg *mem )
{
  struct ttm_mem_type_manager *man ;
  struct qxl_device *qdev ;
  struct qxl_device *tmp ;
  {
  man = (struct ttm_mem_type_manager *)(& bdev->man) + (unsigned long )mem->mem_type;
  tmp = qxl_get_qdev(bdev);
  qdev = tmp;
  mem->bus.addr = (void *)0;
  mem->bus.offset = 0UL;
  mem->bus.size = mem->num_pages << 12;
  mem->bus.base = 0UL;
  mem->bus.is_iomem = 0;
  if ((man->flags & 2U) == 0U) {
    return (-22);
  } else {
  }
  switch (mem->mem_type) {
  case 0U: ;
  return (0);
  case 2U:
  mem->bus.is_iomem = 1;
  mem->bus.base = (unsigned long )qdev->vram_base;
  mem->bus.offset = mem->start << 12;
  goto ldv_41163;
  case 3U:
  mem->bus.is_iomem = 1;
  mem->bus.base = (unsigned long )qdev->surfaceram_base;
  mem->bus.offset = mem->start << 12;
  goto ldv_41163;
  default: ;
  return (-22);
  }
  ldv_41163: ;
  return (0);
}
}
static void qxl_ttm_io_mem_free(struct ttm_bo_device *bdev , struct ttm_mem_reg *mem )
{
  {
  return;
}
}
static int qxl_ttm_backend_bind(struct ttm_tt *ttm , struct ttm_mem_reg *bo_mem )
{
  struct qxl_ttm_tt *gtt ;
  int __ret_warn_on ;
  long tmp ;
  {
  gtt = (struct qxl_ttm_tt *)ttm;
  gtt->offset = (u64 )(bo_mem->start << 12);
  if (ttm->num_pages == 0UL) {
    __ret_warn_on = 1;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_ttm.c",
                        271, "nothing to bind %lu pages for mreg %p back %p!\n", ttm->num_pages,
                        bo_mem, ttm);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
  } else {
  }
  return (-1);
}
}
static int qxl_ttm_backend_unbind(struct ttm_tt *ttm )
{
  {
  return (-1);
}
}
static void qxl_ttm_backend_destroy(struct ttm_tt *ttm )
{
  struct qxl_ttm_tt *gtt ;
  {
  gtt = (struct qxl_ttm_tt *)ttm;
  ttm_dma_tt_fini(& gtt->ttm);
  kfree((void const *)gtt);
  return;
}
}
static struct ttm_backend_func qxl_backend_func = {& qxl_ttm_backend_bind, & qxl_ttm_backend_unbind, & qxl_ttm_backend_destroy};
static int qxl_ttm_tt_populate(struct ttm_tt *ttm )
{
  int r ;
  {
  if ((unsigned int )ttm->state != 2U) {
    return (0);
  } else {
  }
  r = ttm_pool_populate(ttm);
  if (r != 0) {
    return (r);
  } else {
  }
  return (0);
}
}
static void qxl_ttm_tt_unpopulate(struct ttm_tt *ttm )
{
  {
  ttm_pool_unpopulate(ttm);
  return;
}
}
static struct ttm_tt *qxl_ttm_tt_create(struct ttm_bo_device *bdev , unsigned long size ,
                                        uint32_t page_flags , struct page *dummy_read_page )
{
  struct qxl_device *qdev ;
  struct qxl_ttm_tt *gtt ;
  void *tmp ;
  int tmp___0 ;
  {
  qdev = qxl_get_qdev(bdev);
  tmp = kzalloc(128UL, 208U);
  gtt = (struct qxl_ttm_tt *)tmp;
  if ((unsigned long )gtt == (unsigned long )((struct qxl_ttm_tt *)0)) {
    return ((struct ttm_tt *)0);
  } else {
  }
  gtt->ttm.ttm.func = & qxl_backend_func;
  gtt->qdev = qdev;
  tmp___0 = ttm_dma_tt_init(& gtt->ttm, bdev, size, page_flags, dummy_read_page);
  if (tmp___0 != 0) {
    kfree((void const *)gtt);
    return ((struct ttm_tt *)0);
  } else {
  }
  return (& gtt->ttm.ttm);
}
}
static void qxl_move_null(struct ttm_buffer_object *bo , struct ttm_mem_reg *new_mem )
{
  struct ttm_mem_reg *old_mem ;
  long tmp ;
  {
  old_mem = & bo->mem;
  tmp = ldv__builtin_expect((unsigned long )old_mem->mm_node != (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_ttm.c"),
                         "i" (342), "i" (12UL));
    ldv_41209: ;
    goto ldv_41209;
  } else {
  }
  *old_mem = *new_mem;
  new_mem->mm_node = (void *)0;
  return;
}
}
static int qxl_bo_move(struct ttm_buffer_object *bo , bool evict , bool interruptible ,
                       bool no_wait_gpu , struct ttm_mem_reg *new_mem )
{
  struct ttm_mem_reg *old_mem ;
  int tmp ;
  {
  old_mem = & bo->mem;
  if (old_mem->mem_type == 0U && (unsigned long )bo->ttm == (unsigned long )((struct ttm_tt *)0)) {
    qxl_move_null(bo, new_mem);
    return (0);
  } else {
  }
  tmp = ttm_bo_move_memcpy(bo, (int )evict, (int )no_wait_gpu, new_mem);
  return (tmp);
}
}
static void qxl_bo_move_notify(struct ttm_buffer_object *bo , struct ttm_mem_reg *new_mem )
{
  struct qxl_bo *qbo ;
  struct qxl_device *qdev ;
  bool tmp ;
  int tmp___0 ;
  struct ttm_buffer_object const *__mptr ;
  {
  tmp = qxl_ttm_bo_is_qxl_bo(bo);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  __mptr = (struct ttm_buffer_object const *)bo;
  qbo = (struct qxl_bo *)__mptr + 0xffffffffffffffa8UL;
  qdev = (struct qxl_device *)(qbo->gem_base.dev)->dev_private;
  if (bo->mem.mem_type == 3U && qbo->surface_id != 0U) {
    qxl_surface_evict(qdev, qbo, (unsigned long )new_mem != (unsigned long )((struct ttm_mem_reg *)0));
  } else {
  }
  return;
}
}
static struct ttm_bo_driver qxl_bo_driver =
     {& qxl_ttm_tt_create, & qxl_ttm_tt_populate, & qxl_ttm_tt_unpopulate, & qxl_invalidate_caches,
    & qxl_init_mem_type, & qxl_evict_flags, & qxl_bo_move, & qxl_verify_access, & qxl_bo_move_notify,
    0, 0, & qxl_ttm_io_mem_reserve, & qxl_ttm_io_mem_free};
int qxl_ttm_init(struct qxl_device *qdev )
{
  int r ;
  int num_io_pages ;
  {
  r = qxl_ttm_global_init(qdev);
  if (r != 0) {
    return (r);
  } else {
  }
  r = ttm_bo_device_init(& qdev->mman.bdev, (struct ttm_bo_global *)qdev->mman.bo_global_ref.ref.object,
                         & qxl_bo_driver, ((qdev->ddev)->anon_inode)->i_mapping, 1048576ULL,
                         0);
  if (r != 0) {
    drm_err("failed initializing buffer object driver(%d).\n", r);
    return (r);
  } else {
  }
  num_io_pages = (int )((qdev->rom)->ram_header_offset / 4096U);
  r = ttm_bo_init_mm(& qdev->mman.bdev, 2U, (unsigned long )num_io_pages);
  if (r != 0) {
    drm_err("Failed initializing VRAM heap.\n");
    return (r);
  } else {
  }
  r = ttm_bo_init_mm(& qdev->mman.bdev, 3U, (unsigned long )(qdev->surfaceram_size / 4096ULL));
  if (r != 0) {
    drm_err("Failed initializing Surfaces heap.\n");
    return (r);
  } else {
  }
  printk("\016[drm] qxl: %uM of VRAM memory size\n", (unsigned int )qdev->vram_size / 1048576U);
  printk("\016[drm] qxl: %luM of IO pages memory ready (VRAM domain)\n", ((unsigned long )((unsigned int )num_io_pages) * 4096UL) / 1048576UL);
  printk("\016[drm] qxl: %uM of Surface memory size\n", (unsigned int )qdev->surfaceram_size / 1048576U);
  r = qxl_ttm_debugfs_init(qdev);
  if (r != 0) {
    drm_err("Failed to init debugfs\n");
    return (r);
  } else {
  }
  return (0);
}
}
void qxl_ttm_fini(struct qxl_device *qdev )
{
  {
  ttm_bo_clean_mm(& qdev->mman.bdev, 2U);
  ttm_bo_clean_mm(& qdev->mman.bdev, 3U);
  ttm_bo_device_release(& qdev->mman.bdev);
  qxl_ttm_global_fini(qdev);
  printk("\016[drm] qxl: ttm finalized\n");
  return;
}
}
static int qxl_mm_dump_table(struct seq_file *m , void *data )
{
  struct drm_info_node *node ;
  struct drm_mm *mm ;
  struct drm_device *dev ;
  struct qxl_device *rdev ;
  int ret ;
  struct ttm_bo_global *glob ;
  {
  node = (struct drm_info_node *)m->private;
  mm = (struct drm_mm *)(node->info_ent)->data;
  dev = (node->minor)->dev;
  rdev = (struct qxl_device *)dev->dev_private;
  glob = rdev->mman.bdev.glob;
  spin_lock(& glob->lru_lock);
  ret = drm_mm_dump_table(m, mm);
  spin_unlock(& glob->lru_lock);
  return (ret);
}
}
static int qxl_ttm_debugfs_init(struct qxl_device *qdev )
{
  struct drm_info_list qxl_mem_types_list[2U] ;
  char qxl_mem_types_names[2U][32U] ;
  unsigned int i ;
  int tmp ;
  {
  i = 0U;
  goto ldv_41252;
  ldv_41251: ;
  if (i == 0U) {
    sprintf((char *)(& qxl_mem_types_names) + (unsigned long )i, "qxl_mem_mm");
  } else {
    sprintf((char *)(& qxl_mem_types_names) + (unsigned long )i, "qxl_surf_mm");
  }
  qxl_mem_types_list[i].name = (char const *)(& qxl_mem_types_names) + (unsigned long )i;
  qxl_mem_types_list[i].show = & qxl_mm_dump_table;
  qxl_mem_types_list[i].driver_features = 0U;
  if (i == 0U) {
    qxl_mem_types_list[i].data = qdev->mman.bdev.man[2].priv;
  } else {
    qxl_mem_types_list[i].data = qdev->mman.bdev.man[3].priv;
  }
  i = i + 1U;
  ldv_41252: ;
  if (i <= 1U) {
    goto ldv_41251;
  } else {
  }
  tmp = qxl_debugfs_add_files(qdev, (struct drm_info_list *)(& qxl_mem_types_list),
                              i);
  return (tmp);
}
}
void ldv_initialize_ttm_bo_driver_8(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  tmp = ldv_init_zalloc(2592UL);
  qxl_bo_driver_group2 = (struct ttm_bo_device *)tmp;
  tmp___0 = ldv_init_zalloc(80UL);
  qxl_bo_driver_group0 = (struct ttm_tt *)tmp___0;
  tmp___1 = ldv_init_zalloc(96UL);
  qxl_bo_driver_group1 = (struct ttm_mem_reg *)tmp___1;
  tmp___2 = ldv_init_zalloc(872UL);
  qxl_bo_driver_group3 = (struct ttm_buffer_object *)tmp___2;
  return;
}
}
void ldv_initialize_ttm_backend_func_9(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(80UL);
  qxl_backend_func_group0 = (struct ttm_tt *)tmp;
  return;
}
}
void ldv_main_exported_8(void)
{
  uint32_t ldvarg75 ;
  unsigned long ldvarg76 ;
  struct page *ldvarg74 ;
  void *tmp ;
  struct ttm_mem_type_manager *ldvarg79 ;
  void *tmp___0 ;
  bool ldvarg72 ;
  bool ldvarg71 ;
  uint32_t ldvarg78 ;
  uint32_t ldvarg80 ;
  bool ldvarg73 ;
  struct file *ldvarg77 ;
  struct ttm_placement *ldvarg81 ;
  void *tmp___2 ;
  int tmp___3 ;
  {
  tmp = ldv_init_zalloc(64UL);
  ldvarg74 = (struct page *)tmp;
  tmp___0 = ldv_init_zalloc(256UL);
  ldvarg79 = (struct ttm_mem_type_manager *)tmp___0;
  ldvarg77 = ldv_malloc(sizeof(struct file));
  tmp___2 = ldv_init_zalloc(32UL);
  ldvarg81 = (struct ttm_placement *)tmp___2;
  ldv_memset((void *)(& ldvarg75), 0, 4UL);
  ldv_memset((void *)(& ldvarg76), 0, 8UL);
  ldv_memset((void *)(& ldvarg72), 0, 1UL);
  ldv_memset((void *)(& ldvarg71), 0, 1UL);
  ldv_memset((void *)(& ldvarg78), 0, 4UL);
  ldv_memset((void *)(& ldvarg80), 0, 4UL);
  ldv_memset((void *)(& ldvarg73), 0, 1UL);
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_8 == 1) {
    qxl_ttm_tt_populate(qxl_bo_driver_group0);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_41275;
  case 1: ;
  if (ldv_state_variable_8 == 1) {
    qxl_ttm_tt_unpopulate(qxl_bo_driver_group0);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_41275;
  case 2: ;
  if (ldv_state_variable_8 == 1) {
    qxl_evict_flags(qxl_bo_driver_group3, ldvarg81);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_41275;
  case 3: ;
  if (ldv_state_variable_8 == 1) {
    qxl_ttm_io_mem_reserve(qxl_bo_driver_group2, qxl_bo_driver_group1);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_41275;
  case 4: ;
  if (ldv_state_variable_8 == 1) {
    qxl_init_mem_type(qxl_bo_driver_group2, ldvarg80, ldvarg79);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_41275;
  case 5: ;
  if (ldv_state_variable_8 == 1) {
    qxl_invalidate_caches(qxl_bo_driver_group2, ldvarg78);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_41275;
  case 6: ;
  if (ldv_state_variable_8 == 1) {
    qxl_verify_access(qxl_bo_driver_group3, ldvarg77);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_41275;
  case 7: ;
  if (ldv_state_variable_8 == 1) {
    qxl_bo_move_notify(qxl_bo_driver_group3, qxl_bo_driver_group1);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_41275;
  case 8: ;
  if (ldv_state_variable_8 == 1) {
    qxl_ttm_tt_create(qxl_bo_driver_group2, ldvarg76, ldvarg75, ldvarg74);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_41275;
  case 9: ;
  if (ldv_state_variable_8 == 1) {
    qxl_ttm_io_mem_free(qxl_bo_driver_group2, qxl_bo_driver_group1);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_41275;
  case 10: ;
  if (ldv_state_variable_8 == 1) {
    qxl_bo_move(qxl_bo_driver_group3, (int )ldvarg73, (int )ldvarg72, (int )ldvarg71,
                qxl_bo_driver_group1);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_41275;
  default:
  ldv_stop();
  }
  ldv_41275: ;
  return;
}
}
void ldv_main_exported_9(void)
{
  struct ttm_mem_reg *ldvarg55 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_init_zalloc(96UL);
  ldvarg55 = (struct ttm_mem_reg *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_9 == 1) {
    qxl_ttm_backend_unbind(qxl_backend_func_group0);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_41292;
  case 1: ;
  if (ldv_state_variable_9 == 1) {
    qxl_ttm_backend_bind(qxl_backend_func_group0, ldvarg55);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_41292;
  case 2: ;
  if (ldv_state_variable_9 == 1) {
    qxl_ttm_backend_destroy(qxl_backend_func_group0);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_41292;
  default:
  ldv_stop();
  }
  ldv_41292: ;
  return;
}
}
bool ldv_queue_work_on_144(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_145(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_146(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_147(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_148(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_149(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_150(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_151(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_152(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_153(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_base_of_ww_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_154(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
int ldv_mutex_trylock_155(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_157(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_158(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
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
void ldv_mutex_unlock_159(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_160(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_161(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_162(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_fb_info(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_164(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern char *strcpy(char * , char const * ) ;
__inline static int atomic_sub_and_test(int i , atomic_t *v )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; subl %2, %0; sete %1": "+m" (v->counter),
                       "=qm" (c): "er" (i): "memory");
  return ((int )((signed char )c) != 0);
}
}
int ldv_mutex_trylock_197(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_206(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_195(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_198(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_199(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_202(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_203(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_209(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_205(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_194(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_196(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_200(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_201(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_204(struct mutex *ldv_func_arg1 ) ;
extern struct workqueue_struct *system_wq ;
bool ldv_queue_work_on_189(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_191(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_190(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_193(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_192(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_189(8192, wq, work);
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
void disable_work_2(struct work_struct *work ) ;
void call_and_disable_work_2(struct work_struct *work ) ;
void invoke_work_2(void) ;
__inline static int kref_sub(struct kref *kref , unsigned int count , void (*release)(struct kref * ) )
{
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  {
  __ret_warn_on = (unsigned long )release == (unsigned long )((void (*)(struct kref * ))0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("include/linux/kref.h", 71);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___0 = atomic_sub_and_test((int )count, & kref->refcount);
  if (tmp___0 != 0) {
    (*release)(kref);
    return (1);
  } else {
  }
  return (0);
}
}
__inline static int kref_put(struct kref *kref , void (*release)(struct kref * ) )
{
  int tmp ;
  {
  tmp = kref_sub(kref, 1U, release);
  return (tmp);
}
}
__inline static int ldv_kref_put_mutex_118(struct kref *kref , void (*release)(struct kref * ) ,
                                           struct mutex *lock ) ;
__inline static struct apertures_struct *alloc_apertures(unsigned int max_num )
{
  struct apertures_struct *a ;
  void *tmp ;
  {
  tmp = kzalloc((unsigned long )max_num * 16UL + 8UL, 208U);
  a = (struct apertures_struct *)tmp;
  if ((unsigned long )a == (unsigned long )((struct apertures_struct *)0)) {
    return ((struct apertures_struct *)0);
  } else {
  }
  a->count = max_num;
  return (a);
}
}
extern void sys_fillrect(struct fb_info * , struct fb_fillrect const * ) ;
extern void sys_copyarea(struct fb_info * , struct fb_copyarea const * ) ;
extern void sys_imageblit(struct fb_info * , struct fb_image const * ) ;
extern int unregister_framebuffer(struct fb_info * ) ;
extern void fb_set_suspend(struct fb_info * , int ) ;
extern void fb_deferred_io_init(struct fb_info * ) ;
extern struct fb_info *framebuffer_alloc(size_t , struct device * ) ;
extern void framebuffer_release(struct fb_info * ) ;
extern int fb_alloc_cmap(struct fb_cmap * , int , int ) ;
extern void *vmalloc(unsigned long ) ;
extern void vfree(void const * ) ;
__inline static int ww_mutex_lock___0(struct ww_mutex *lock , struct ww_acquire_ctx *ctx )
{
  int tmp ;
  {
  if ((unsigned long )ctx != (unsigned long )((struct ww_acquire_ctx *)0)) {
    tmp = __ww_mutex_lock(lock, ctx);
    return (tmp);
  } else {
  }
  ldv_mutex_lock_204(& lock->base);
  return (0);
}
}
__inline static int ww_mutex_lock_interruptible___0(struct ww_mutex *lock , struct ww_acquire_ctx *ctx )
{
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ctx != (unsigned long )((struct ww_acquire_ctx *)0)) {
    tmp = __ww_mutex_lock_interruptible(lock, ctx);
    return (tmp);
  } else {
    tmp___0 = ldv_mutex_lock_interruptible_205(& lock->base);
    return (tmp___0);
  }
}
}
__inline static int ww_mutex_trylock___0(struct ww_mutex *lock )
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_206(& lock->base);
  return (tmp);
}
}
extern uint32_t drm_mode_legacy_fb_format(uint32_t , uint32_t ) ;
extern void drm_fb_get_bpp_depth(uint32_t , unsigned int * , int * ) ;
__inline static __u64 drm_vma_node_offset_addr(struct drm_vma_offset_node *node )
{
  {
  return (node->vm_node.start << 12);
}
}
__inline static int __ttm_bo_reserve___0(struct ttm_buffer_object *bo , bool interruptible ,
                                         bool no_wait , bool use_ticket , struct ww_acquire_ctx *ticket )
{
  int ret ;
  bool success ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  ret = 0;
  if ((int )no_wait) {
    __ret_warn_on = (unsigned long )ticket != (unsigned long )((struct ww_acquire_ctx *)0);
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/drm/ttm/ttm_bo_driver.h", 787);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      return (-16);
    } else {
    }
    tmp___1 = ww_mutex_trylock___0(& (bo->resv)->lock);
    success = tmp___1 != 0;
    return ((int )success ? 0 : -16);
  } else {
  }
  if ((int )interruptible) {
    ret = ww_mutex_lock_interruptible___0(& (bo->resv)->lock, ticket);
  } else {
    ret = ww_mutex_lock___0(& (bo->resv)->lock, ticket);
  }
  if (ret == -4) {
    return (-512);
  } else {
  }
  return (ret);
}
}
__inline static int ttm_bo_reserve___0(struct ttm_buffer_object *bo , bool interruptible ,
                                       bool no_wait , bool use_ticket , struct ww_acquire_ctx *ticket )
{
  int ret ;
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = atomic_read((atomic_t const *)(& bo->kref.refcount));
  __ret_warn_on = tmp == 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("include/drm/ttm/ttm_bo_driver.h", 855);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  ret = __ttm_bo_reserve___0(bo, (int )interruptible, (int )no_wait, (int )use_ticket,
                             ticket);
  tmp___1 = ldv__builtin_expect(ret == 0, 1L);
  if (tmp___1 != 0L) {
    ttm_bo_del_sub_from_lru(bo);
  } else {
  }
  return (ret);
}
}
__inline static void drm_gem_object_unreference(struct drm_gem_object *obj )
{
  {
  if ((unsigned long )obj != (unsigned long )((struct drm_gem_object *)0)) {
    kref_put(& obj->refcount, & drm_gem_object_free);
  } else {
  }
  return;
}
}
__inline static void drm_gem_object_unreference_unlocked___0(struct drm_gem_object *obj )
{
  struct drm_device *dev ;
  int tmp ;
  {
  if ((unsigned long )obj == (unsigned long )((struct drm_gem_object *)0)) {
    return;
  } else {
  }
  dev = obj->dev;
  tmp = ldv_kref_put_mutex_118(& obj->refcount, & drm_gem_object_free, & dev->struct_mutex);
  if (tmp != 0) {
    ldv_mutex_unlock_209(& dev->struct_mutex);
  } else {
    lock_acquire(& dev->struct_mutex.dep_map, 0U, 0, 0, 1, (struct lockdep_map *)0,
                 0UL);
    lock_release(& dev->struct_mutex.dep_map, 0, 0UL);
  }
  return;
}
}
extern int drm_gem_handle_create(struct drm_file * , struct drm_gem_object * , u32 * ) ;
int qxl_get_handle_for_primary_fb(struct qxl_device *qdev , struct drm_file *file_priv ,
                                  uint32_t *handle ) ;
void qxl_draw_opaque_fb(struct qxl_fb_image const *qxl_fb_image , int stride ) ;
bool qxl_fbdev_qobj_is_fb(struct qxl_device *qdev , struct qxl_bo *qobj ) ;
__inline static int qxl_bo_reserve___0(struct qxl_bo *bo , bool no_wait )
{
  int r ;
  struct qxl_device *qdev ;
  long tmp ;
  {
  r = ttm_bo_reserve___0(& bo->tbo, 1, (int )no_wait, 0, (struct ww_acquire_ctx *)0);
  tmp = ldv__builtin_expect(r != 0, 0L);
  if (tmp != 0L) {
    if (r != -512) {
      qdev = (struct qxl_device *)(bo->gem_base.dev)->dev_private;
      dev_err((struct device const *)qdev->dev, "%p reserve failed\n", bo);
    } else {
    }
    return (r);
  } else {
  }
  return (0);
}
}
__inline static u64 qxl_bo_gpu_offset(struct qxl_bo *bo )
{
  {
  return (bo->tbo.offset);
}
}
__inline static u64 qxl_bo_mmap_offset(struct qxl_bo *bo )
{
  __u64 tmp ;
  {
  tmp = drm_vma_node_offset_addr(& bo->tbo.vma_node);
  return (tmp);
}
}
extern void drm_fb_helper_prepare(struct drm_device * , struct drm_fb_helper * , struct drm_fb_helper_funcs const * ) ;
extern int drm_fb_helper_init(struct drm_device * , struct drm_fb_helper * , int ,
                              int ) ;
extern void drm_fb_helper_fini(struct drm_fb_helper * ) ;
extern int drm_fb_helper_blank(int , struct fb_info * ) ;
extern int drm_fb_helper_pan_display(struct fb_var_screeninfo * , struct fb_info * ) ;
extern int drm_fb_helper_set_par(struct fb_info * ) ;
extern int drm_fb_helper_check_var(struct fb_var_screeninfo * , struct fb_info * ) ;
extern void drm_fb_helper_fill_var(struct fb_info * , struct drm_fb_helper * , uint32_t ,
                                   uint32_t ) ;
extern void drm_fb_helper_fill_fix(struct fb_info * , uint32_t , uint32_t ) ;
extern int drm_fb_helper_setcmap(struct fb_cmap * , struct fb_info * ) ;
extern int drm_fb_helper_initial_config(struct drm_fb_helper * , int ) ;
extern int drm_fb_helper_single_add_all_connectors(struct drm_fb_helper * ) ;
extern int drm_fb_helper_debug_enter(struct fb_info * ) ;
extern int drm_fb_helper_debug_leave(struct fb_info * ) ;
static void qxl_fb_image_init(struct qxl_fb_image *qxl_fb_image , struct qxl_device *qdev ,
                              struct fb_info *info , struct fb_image const *image )
{
  {
  qxl_fb_image->qdev = qdev;
  if ((unsigned long )info != (unsigned long )((struct fb_info *)0)) {
    qxl_fb_image->visual = info->fix.visual;
    if (qxl_fb_image->visual == 2U || qxl_fb_image->visual == 4U) {
      memcpy((void *)(& qxl_fb_image->pseudo_palette), (void const *)info->pseudo_palette,
               64UL);
    } else {
    }
  } else
  if ((unsigned int )((unsigned char )image->depth) == 1U) {
    qxl_fb_image->visual = 1U;
  } else {
    qxl_fb_image->visual = 4U;
  }
  if ((unsigned long )image != (unsigned long )((struct fb_image const *)0)) {
    memcpy((void *)(& qxl_fb_image->fb_image), (void const *)image, 80UL);
  } else {
  }
  return;
}
}
static void qxl_fb_dirty_flush(struct fb_info *info )
{
  struct qxl_fbdev *qfbdev ;
  struct qxl_device *qdev ;
  struct qxl_fb_image qxl_fb_image ;
  struct fb_image *image ;
  unsigned long flags ;
  u32 x1 ;
  u32 x2 ;
  u32 y1 ;
  u32 y2 ;
  int stride ;
  raw_spinlock_t *tmp ;
  {
  qfbdev = (struct qxl_fbdev *)info->par;
  qdev = qfbdev->qdev;
  image = & qxl_fb_image.fb_image;
  stride = (int )qfbdev->qfb.base.pitches[0];
  tmp = spinlock_check(& qfbdev->dirty.lock);
  flags = _raw_spin_lock_irqsave(tmp);
  x1 = qfbdev->dirty.x1;
  x2 = qfbdev->dirty.x2;
  y1 = qfbdev->dirty.y1;
  y2 = qfbdev->dirty.y2;
  qfbdev->dirty.x1 = 0U;
  qfbdev->dirty.x2 = 0U;
  qfbdev->dirty.y1 = 0U;
  qfbdev->dirty.y2 = 0U;
  spin_unlock_irqrestore(& qfbdev->dirty.lock, flags);
  qxl_io_log(qdev, "dirty x[%d, %d], y[%d, %d]", x1, x2, y1, y2);
  image->dx = x1;
  image->dy = y1;
  image->width = (x2 - x1) + 1U;
  image->height = (y2 - y1) + 1U;
  image->fg_color = 4294967295U;
  image->bg_color = 0U;
  image->depth = 32U;
  image->cmap.start = 0U;
  image->cmap.len = 0U;
  image->cmap.red = (__u16 *)0U;
  image->cmap.green = (__u16 *)0U;
  image->cmap.blue = (__u16 *)0U;
  image->cmap.transp = (__u16 *)0U;
  image->data = (char const *)(qfbdev->shadow + ((unsigned long )(x1 * 4U) + (unsigned long )((u32 )stride * y1)));
  qxl_fb_image_init(& qxl_fb_image, qdev, info, (struct fb_image const *)0);
  qxl_draw_opaque_fb((struct qxl_fb_image const *)(& qxl_fb_image), stride);
  return;
}
}
static void qxl_dirty_update(struct qxl_fbdev *qfbdev , int x , int y , int width ,
                             int height )
{
  struct qxl_device *qdev ;
  unsigned long flags ;
  int x2 ;
  int y2 ;
  raw_spinlock_t *tmp ;
  {
  qdev = qfbdev->qdev;
  x2 = (x + width) + -1;
  y2 = (y + height) + -1;
  tmp = spinlock_check(& qfbdev->dirty.lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if (qfbdev->dirty.y1 < (unsigned int )y) {
    y = (int )qfbdev->dirty.y1;
  } else {
  }
  if (qfbdev->dirty.y2 > (unsigned int )y2) {
    y2 = (int )qfbdev->dirty.y2;
  } else {
  }
  if (qfbdev->dirty.x1 < (unsigned int )x) {
    x = (int )qfbdev->dirty.x1;
  } else {
  }
  if (qfbdev->dirty.x2 > (unsigned int )x2) {
    x2 = (int )qfbdev->dirty.x2;
  } else {
  }
  qfbdev->dirty.x1 = (unsigned int )x;
  qfbdev->dirty.x2 = (unsigned int )x2;
  qfbdev->dirty.y1 = (unsigned int )y;
  qfbdev->dirty.y2 = (unsigned int )y2;
  spin_unlock_irqrestore(& qfbdev->dirty.lock, flags);
  schedule_work(& qdev->fb_work);
  return;
}
}
static void qxl_deferred_io(struct fb_info *info , struct list_head *pagelist )
{
  struct qxl_fbdev *qfbdev ;
  unsigned long start ;
  unsigned long end ;
  unsigned long min ;
  unsigned long max ;
  struct page *page ;
  int y1 ;
  int y2 ;
  struct list_head const *__mptr ;
  unsigned long _min1 ;
  unsigned long _min2 ;
  unsigned long _max1 ;
  unsigned long _max2 ;
  struct list_head const *__mptr___0 ;
  {
  qfbdev = (struct qxl_fbdev *)info->par;
  min = 0xffffffffffffffffUL;
  max = 0UL;
  __mptr = (struct list_head const *)pagelist->next;
  page = (struct page *)__mptr + 0xffffffffffffffe0UL;
  goto ldv_41405;
  ldv_41404:
  start = page->__annonCompField42.__annonCompField37.index << 12;
  end = start + 4095UL;
  _min1 = min;
  _min2 = start;
  min = _min1 < _min2 ? _min1 : _min2;
  _max1 = max;
  _max2 = end;
  max = _max1 > _max2 ? _max1 : _max2;
  __mptr___0 = (struct list_head const *)page->__annonCompField45.lru.next;
  page = (struct page *)__mptr___0 + 0xffffffffffffffe0UL;
  ldv_41405: ;
  if ((unsigned long )(& page->__annonCompField45.lru) != (unsigned long )pagelist) {
    goto ldv_41404;
  } else {
  }
  if (min < max) {
    y1 = (int )(min / (unsigned long )info->fix.line_length);
    y2 = (int )((unsigned int )(max / (unsigned long )info->fix.line_length) + 1U);
    qxl_dirty_update(qfbdev, 0, y1, (int )info->var.xres, y2 - y1);
  } else {
  }
  return;
}
}
static struct fb_deferred_io qxl_defio = {8UL, {{0}, {{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 0, {0, {0,
                                                                                  0},
                                                                              0, 0,
                                                                              0UL}},
    {0, 0}, 0, & qxl_deferred_io};
static void qxl_fb_fillrect(struct fb_info *info , struct fb_fillrect const *rect )
{
  struct qxl_fbdev *qfbdev ;
  {
  qfbdev = (struct qxl_fbdev *)info->par;
  sys_fillrect(info, rect);
  qxl_dirty_update(qfbdev, (int )rect->dx, (int )rect->dy, (int )rect->width, (int )rect->height);
  return;
}
}
static void qxl_fb_copyarea(struct fb_info *info , struct fb_copyarea const *area )
{
  struct qxl_fbdev *qfbdev ;
  {
  qfbdev = (struct qxl_fbdev *)info->par;
  sys_copyarea(info, area);
  qxl_dirty_update(qfbdev, (int )area->dx, (int )area->dy, (int )area->width, (int )area->height);
  return;
}
}
static void qxl_fb_imageblit(struct fb_info *info , struct fb_image const *image )
{
  struct qxl_fbdev *qfbdev ;
  {
  qfbdev = (struct qxl_fbdev *)info->par;
  sys_imageblit(info, image);
  qxl_dirty_update(qfbdev, (int )image->dx, (int )image->dy, (int )image->width, (int )image->height);
  return;
}
}
static void qxl_fb_work(struct work_struct *work )
{
  struct qxl_device *qdev ;
  struct work_struct const *__mptr ;
  struct qxl_fbdev *qfbdev ;
  {
  __mptr = (struct work_struct const *)work;
  qdev = (struct qxl_device *)__mptr + 0xffffffffffffeb80UL;
  qfbdev = qdev->mode_info.qfbdev;
  qxl_fb_dirty_flush(qfbdev->helper.fbdev);
  return;
}
}
int qxl_fb_init(struct qxl_device *qdev )
{
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  __init_work(& qdev->fb_work, 0);
  __constr_expr_0.counter = 137438953408L;
  qdev->fb_work.data = __constr_expr_0;
  lockdep_init_map(& qdev->fb_work.lockdep_map, "(&qdev->fb_work)", & __key, 0);
  INIT_LIST_HEAD(& qdev->fb_work.entry);
  qdev->fb_work.func = & qxl_fb_work;
  return (0);
}
}
static struct fb_ops qxlfb_ops =
     {& __this_module, 0, 0, 0, 0, & drm_fb_helper_check_var, & drm_fb_helper_set_par,
    0, & drm_fb_helper_setcmap, & drm_fb_helper_blank, & drm_fb_helper_pan_display,
    & qxl_fb_fillrect, & qxl_fb_copyarea, & qxl_fb_imageblit, 0, 0, 0, 0, 0, 0, 0,
    0, & drm_fb_helper_debug_enter, & drm_fb_helper_debug_leave};
static void qxlfb_destroy_pinned_object(struct drm_gem_object *gobj )
{
  struct qxl_bo *qbo ;
  struct drm_gem_object const *__mptr ;
  int ret ;
  long tmp ;
  {
  __mptr = (struct drm_gem_object const *)gobj;
  qbo = (struct qxl_bo *)__mptr + 0xfffffffffffffc08UL;
  ret = qxl_bo_reserve___0(qbo, 0);
  tmp = ldv__builtin_expect(ret == 0, 1L);
  if (tmp != 0L) {
    qxl_bo_kunmap(qbo);
    qxl_bo_unpin(qbo);
    qxl_bo_unreserve(qbo);
  } else {
  }
  drm_gem_object_unreference_unlocked___0(gobj);
  return;
}
}
int qxl_get_handle_for_primary_fb(struct qxl_device *qdev , struct drm_file *file_priv ,
                                  uint32_t *handle )
{
  int r ;
  struct drm_gem_object *gobj ;
  long tmp ;
  {
  gobj = (qdev->fbdev_qfb)->obj;
  tmp = ldv__builtin_expect((unsigned long )gobj == (unsigned long )((struct drm_gem_object *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_fb.c"),
                         "i" (274), "i" (12UL));
    ldv_41450: ;
    goto ldv_41450;
  } else {
  }
  r = drm_gem_handle_create(file_priv, gobj, handle);
  if (r != 0) {
    return (r);
  } else {
  }
  return (0);
}
}
static int qxlfb_create_pinned_object(struct qxl_fbdev *qfbdev , struct drm_mode_fb_cmd2 *mode_cmd ,
                                      struct drm_gem_object **gobj_p )
{
  struct qxl_device *qdev ;
  struct drm_gem_object *gobj ;
  struct qxl_bo *qbo ;
  int ret ;
  int aligned_size ;
  int size ;
  int height ;
  int bpp ;
  int depth ;
  struct drm_gem_object const *__mptr ;
  long tmp ;
  {
  qdev = qfbdev->qdev;
  gobj = (struct drm_gem_object *)0;
  qbo = (struct qxl_bo *)0;
  height = (int )mode_cmd->height;
  drm_fb_get_bpp_depth(mode_cmd->pixel_format, (unsigned int *)(& bpp), & depth);
  size = (int )(mode_cmd->pitches[0] * (__u32 )height);
  aligned_size = (size + 4095) & -4096;
  ret = qxl_gem_object_create(qdev, aligned_size, 0, 2, 0, 0, (struct qxl_surface *)0,
                              & gobj);
  if (ret != 0) {
    printk("\vfailed to allocate framebuffer (%d)\n", aligned_size);
    return (-12);
  } else {
  }
  __mptr = (struct drm_gem_object const *)gobj;
  qbo = (struct qxl_bo *)__mptr + 0xfffffffffffffc08UL;
  qbo->surf.width = mode_cmd->width;
  qbo->surf.height = mode_cmd->height;
  qbo->surf.stride = (int32_t )mode_cmd->pitches[0];
  qbo->surf.format = 32U;
  ret = qxl_bo_reserve___0(qbo, 0);
  tmp = ldv__builtin_expect(ret != 0, 0L);
  if (tmp != 0L) {
    goto out_unref;
  } else {
  }
  ret = qxl_bo_pin(qbo, 2U, (u64 *)0ULL);
  if (ret != 0) {
    qxl_bo_unreserve(qbo);
    goto out_unref;
  } else {
  }
  ret = qxl_bo_kmap(qbo, (void **)0);
  qxl_bo_unreserve(qbo);
  if (ret != 0) {
    goto out_unref;
  } else {
  }
  *gobj_p = gobj;
  return (0);
  out_unref:
  qxlfb_destroy_pinned_object(gobj);
  *gobj_p = (struct drm_gem_object *)0;
  return (ret);
}
}
static int qxlfb_create(struct qxl_fbdev *qfbdev , struct drm_fb_helper_surface_size *sizes )
{
  struct qxl_device *qdev ;
  struct fb_info *info ;
  struct drm_framebuffer *fb ;
  struct drm_mode_fb_cmd2 mode_cmd ;
  struct drm_gem_object *gobj ;
  struct qxl_bo *qbo ;
  struct device *device ;
  int ret ;
  int size ;
  int bpp ;
  int depth ;
  void *shadow ;
  struct drm_gem_object const *__mptr ;
  long tmp ;
  u64 tmp___0 ;
  u64 tmp___1 ;
  long tmp___2 ;
  {
  qdev = qfbdev->qdev;
  fb = (struct drm_framebuffer *)0;
  gobj = (struct drm_gem_object *)0;
  qbo = (struct qxl_bo *)0;
  device = & (qdev->pdev)->dev;
  bpp = (int )sizes->surface_bpp;
  depth = (int )sizes->surface_depth;
  mode_cmd.width = sizes->surface_width;
  mode_cmd.height = sizes->surface_height;
  mode_cmd.pitches[0] = (mode_cmd.width * (__u32 )((bpp + 1) / 8) + 63U) & 4294967232U;
  mode_cmd.pixel_format = drm_mode_legacy_fb_format((uint32_t )bpp, (uint32_t )depth);
  ret = qxlfb_create_pinned_object(qfbdev, & mode_cmd, & gobj);
  __mptr = (struct drm_gem_object const *)gobj;
  qbo = (struct qxl_bo *)__mptr + 0xfffffffffffffc08UL;
  if (qxl_log_level > 0) {
    qxl_io_log(qdev, "%s: %dx%d %d\n", "qxlfb_create", mode_cmd.width, mode_cmd.height,
               mode_cmd.pitches[0]);
  } else {
  }
  shadow = vmalloc((unsigned long )(mode_cmd.pitches[0] * mode_cmd.height));
  tmp = ldv__builtin_expect((unsigned long )shadow == (unsigned long )((void *)0), 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_fb.c"),
                         "i" (368), "i" (12UL));
    ldv_41487: ;
    goto ldv_41487;
  } else {
  }
  if (qxl_log_level > 0) {
    tmp___0 = qxl_bo_mmap_offset(qbo);
    tmp___1 = qxl_bo_gpu_offset(qbo);
    qxl_io_log(qdev, "surface0 at gpu offset %lld, mmap_offset %lld (virt %p, shadow %p)\n",
               tmp___1, tmp___0, qbo->kptr, shadow);
  } else {
  }
  size = (int )(mode_cmd.pitches[0] * mode_cmd.height);
  info = framebuffer_alloc(0UL, device);
  if ((unsigned long )info == (unsigned long )((struct fb_info *)0)) {
    ret = -12;
    goto out_unref;
  } else {
  }
  info->par = (void *)qfbdev;
  qxl_framebuffer_init(qdev->ddev, & qfbdev->qfb, & mode_cmd, gobj);
  fb = & qfbdev->qfb.base;
  qfbdev->helper.fb = fb;
  qfbdev->helper.fbdev = info;
  qfbdev->shadow = shadow;
  strcpy((char *)(& info->fix.id), "qxldrmfb");
  drm_fb_helper_fill_fix(info, fb->pitches[0], fb->depth);
  info->flags = 769;
  info->fbops = & qxlfb_ops;
  info->fix.smem_start = (unsigned long )qdev->vram_base;
  info->fix.smem_len = (__u32 )gobj->size;
  info->screen_base = (char *)qfbdev->shadow;
  info->screen_size = gobj->size;
  drm_fb_helper_fill_var(info, & qfbdev->helper, sizes->fb_width, sizes->fb_height);
  info->apertures = alloc_apertures(1U);
  if ((unsigned long )info->apertures == (unsigned long )((struct apertures_struct *)0)) {
    ret = -12;
    goto out_unref;
  } else {
  }
  (info->apertures)->ranges[0].base = (qdev->ddev)->mode_config.fb_base;
  (info->apertures)->ranges[0].size = qdev->vram_size;
  info->fix.mmio_start = 0UL;
  info->fix.mmio_len = 0U;
  if ((unsigned long )info->screen_base == (unsigned long )((char *)0)) {
    ret = -28;
    goto out_unref;
  } else {
  }
  ret = fb_alloc_cmap(& info->cmap, 256, 0);
  if (ret != 0) {
    ret = -12;
    goto out_unref;
  } else {
  }
  info->fbdefio = & qxl_defio;
  fb_deferred_io_init(info);
  qdev->fbdev_info = info;
  qdev->fbdev_qfb = & qfbdev->qfb;
  printk("\016[drm] fb mappable at 0x%lX, size %lu\n", info->fix.smem_start, info->screen_size);
  printk("\016[drm] fb: depth %d, pitch %d, width %d, height %d\n", fb->depth, fb->pitches[0],
         fb->width, fb->height);
  return (0);
  out_unref: ;
  if ((unsigned long )qbo != (unsigned long )((struct qxl_bo *)0)) {
    ret = qxl_bo_reserve___0(qbo, 0);
    tmp___2 = ldv__builtin_expect(ret == 0, 1L);
    if (tmp___2 != 0L) {
      qxl_bo_kunmap(qbo);
      qxl_bo_unpin(qbo);
      qxl_bo_unreserve(qbo);
    } else {
    }
  } else {
  }
  if ((unsigned long )fb != (unsigned long )((struct drm_framebuffer *)0) && ret != 0) {
    drm_gem_object_unreference(gobj);
    drm_framebuffer_cleanup(fb);
    kfree((void const *)fb);
  } else {
  }
  drm_gem_object_unreference(gobj);
  return (ret);
}
}
static int qxl_fb_find_or_create_single(struct drm_fb_helper *helper , struct drm_fb_helper_surface_size *sizes )
{
  struct qxl_fbdev *qfbdev ;
  struct drm_fb_helper const *__mptr ;
  int new_fb ;
  int ret ;
  {
  __mptr = (struct drm_fb_helper const *)helper;
  qfbdev = (struct qxl_fbdev *)__mptr;
  new_fb = 0;
  if ((unsigned long )helper->fb == (unsigned long )((struct drm_framebuffer *)0)) {
    ret = qxlfb_create(qfbdev, sizes);
    if (ret != 0) {
      return (ret);
    } else {
    }
    new_fb = 1;
  } else {
  }
  return (new_fb);
}
}
static int qxl_fbdev_destroy(struct drm_device *dev , struct qxl_fbdev *qfbdev )
{
  struct fb_info *info ;
  struct qxl_framebuffer *qfb ;
  {
  qfb = & qfbdev->qfb;
  if ((unsigned long )qfbdev->helper.fbdev != (unsigned long )((struct fb_info *)0)) {
    info = qfbdev->helper.fbdev;
    unregister_framebuffer(info);
    framebuffer_release(info);
  } else {
  }
  if ((unsigned long )qfb->obj != (unsigned long )((struct drm_gem_object *)0)) {
    qxlfb_destroy_pinned_object(qfb->obj);
    qfb->obj = (struct drm_gem_object *)0;
  } else {
  }
  drm_fb_helper_fini(& qfbdev->helper);
  vfree((void const *)qfbdev->shadow);
  drm_framebuffer_cleanup(& qfb->base);
  return (0);
}
}
static struct drm_fb_helper_funcs const qxl_fb_helper_funcs = {0, 0, & qxl_fb_find_or_create_single, 0};
int qxl_fbdev_init(struct qxl_device *qdev )
{
  struct qxl_fbdev *qfbdev ;
  int bpp_sel ;
  int ret ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  bpp_sel = 32;
  tmp = kzalloc(552UL, 208U);
  qfbdev = (struct qxl_fbdev *)tmp;
  if ((unsigned long )qfbdev == (unsigned long )((struct qxl_fbdev *)0)) {
    return (-12);
  } else {
  }
  qfbdev->qdev = qdev;
  qdev->mode_info.qfbdev = qfbdev;
  spinlock_check(& qfbdev->delayed_ops_lock);
  __raw_spin_lock_init(& qfbdev->delayed_ops_lock.__annonCompField17.rlock, "&(&qfbdev->delayed_ops_lock)->rlock",
                       & __key);
  spinlock_check(& qfbdev->dirty.lock);
  __raw_spin_lock_init(& qfbdev->dirty.lock.__annonCompField17.rlock, "&(&qfbdev->dirty.lock)->rlock",
                       & __key___0);
  INIT_LIST_HEAD(& qfbdev->delayed_ops);
  drm_fb_helper_prepare(qdev->ddev, & qfbdev->helper, & qxl_fb_helper_funcs);
  ret = drm_fb_helper_init(qdev->ddev, & qfbdev->helper, qxl_num_crtc, 1);
  if (ret != 0) {
    goto free;
  } else {
  }
  ret = drm_fb_helper_single_add_all_connectors(& qfbdev->helper);
  if (ret != 0) {
    goto fini;
  } else {
  }
  ret = drm_fb_helper_initial_config(& qfbdev->helper, bpp_sel);
  if (ret != 0) {
    goto fini;
  } else {
  }
  return (0);
  fini:
  drm_fb_helper_fini(& qfbdev->helper);
  free:
  kfree((void const *)qfbdev);
  return (ret);
}
}
void qxl_fbdev_fini(struct qxl_device *qdev )
{
  {
  if ((unsigned long )qdev->mode_info.qfbdev == (unsigned long )((struct qxl_fbdev *)0)) {
    return;
  } else {
  }
  qxl_fbdev_destroy(qdev->ddev, qdev->mode_info.qfbdev);
  kfree((void const *)qdev->mode_info.qfbdev);
  qdev->mode_info.qfbdev = (struct qxl_fbdev *)0;
  return;
}
}
void qxl_fbdev_set_suspend(struct qxl_device *qdev , int state )
{
  {
  fb_set_suspend((qdev->mode_info.qfbdev)->helper.fbdev, state);
  return;
}
}
bool qxl_fbdev_qobj_is_fb(struct qxl_device *qdev , struct qxl_bo *qobj )
{
  struct drm_gem_object const *__mptr ;
  {
  __mptr = (struct drm_gem_object const *)(qdev->mode_info.qfbdev)->qfb.obj;
  if ((unsigned long )((struct qxl_bo *)__mptr + 0xfffffffffffffc08UL) == (unsigned long )qobj) {
    return (1);
  } else {
  }
  return (0);
}
}
void work_init_2(void)
{
  {
  ldv_work_2_0 = 0;
  ldv_work_2_1 = 0;
  ldv_work_2_2 = 0;
  ldv_work_2_3 = 0;
  return;
}
}
void call_and_disable_all_2(int state )
{
  {
  if (ldv_work_2_0 == state) {
    call_and_disable_work_2(ldv_work_struct_2_0);
  } else {
  }
  if (ldv_work_2_1 == state) {
    call_and_disable_work_2(ldv_work_struct_2_1);
  } else {
  }
  if (ldv_work_2_2 == state) {
    call_and_disable_work_2(ldv_work_struct_2_2);
  } else {
  }
  if (ldv_work_2_3 == state) {
    call_and_disable_work_2(ldv_work_struct_2_3);
  } else {
  }
  return;
}
}
void activate_work_2(struct work_struct *work , int state )
{
  {
  if (ldv_work_2_0 == 0) {
    ldv_work_struct_2_0 = work;
    ldv_work_2_0 = state;
    return;
  } else {
  }
  if (ldv_work_2_1 == 0) {
    ldv_work_struct_2_1 = work;
    ldv_work_2_1 = state;
    return;
  } else {
  }
  if (ldv_work_2_2 == 0) {
    ldv_work_struct_2_2 = work;
    ldv_work_2_2 = state;
    return;
  } else {
  }
  if (ldv_work_2_3 == 0) {
    ldv_work_struct_2_3 = work;
    ldv_work_2_3 = state;
    return;
  } else {
  }
  return;
}
}
void disable_work_2(struct work_struct *work )
{
  {
  if ((ldv_work_2_0 == 3 || ldv_work_2_0 == 2) && (unsigned long )ldv_work_struct_2_0 == (unsigned long )work) {
    ldv_work_2_0 = 1;
  } else {
  }
  if ((ldv_work_2_1 == 3 || ldv_work_2_1 == 2) && (unsigned long )ldv_work_struct_2_1 == (unsigned long )work) {
    ldv_work_2_1 = 1;
  } else {
  }
  if ((ldv_work_2_2 == 3 || ldv_work_2_2 == 2) && (unsigned long )ldv_work_struct_2_2 == (unsigned long )work) {
    ldv_work_2_2 = 1;
  } else {
  }
  if ((ldv_work_2_3 == 3 || ldv_work_2_3 == 2) && (unsigned long )ldv_work_struct_2_3 == (unsigned long )work) {
    ldv_work_2_3 = 1;
  } else {
  }
  return;
}
}
void call_and_disable_work_2(struct work_struct *work )
{
  {
  if ((ldv_work_2_0 == 2 || ldv_work_2_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_0) {
    qxl_fb_work(work);
    ldv_work_2_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_1 == 2 || ldv_work_2_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_1) {
    qxl_fb_work(work);
    ldv_work_2_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_2 == 2 || ldv_work_2_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_2) {
    qxl_fb_work(work);
    ldv_work_2_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_3 == 2 || ldv_work_2_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_3) {
    qxl_fb_work(work);
    ldv_work_2_3 = 1;
    return;
  } else {
  }
  return;
}
}
void invoke_work_2(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_2_0 == 2 || ldv_work_2_0 == 3) {
    ldv_work_2_0 = 4;
    qxl_fb_work(ldv_work_struct_2_0);
    ldv_work_2_0 = 1;
  } else {
  }
  goto ldv_41552;
  case 1: ;
  if (ldv_work_2_1 == 2 || ldv_work_2_1 == 3) {
    ldv_work_2_1 = 4;
    qxl_fb_work(ldv_work_struct_2_0);
    ldv_work_2_1 = 1;
  } else {
  }
  goto ldv_41552;
  case 2: ;
  if (ldv_work_2_2 == 2 || ldv_work_2_2 == 3) {
    ldv_work_2_2 = 4;
    qxl_fb_work(ldv_work_struct_2_0);
    ldv_work_2_2 = 1;
  } else {
  }
  goto ldv_41552;
  case 3: ;
  if (ldv_work_2_3 == 2 || ldv_work_2_3 == 3) {
    ldv_work_2_3 = 4;
    qxl_fb_work(ldv_work_struct_2_0);
    ldv_work_2_3 = 1;
  } else {
  }
  goto ldv_41552;
  default:
  ldv_stop();
  }
  ldv_41552: ;
  return;
}
}
void ldv_initialize_fb_ops_6(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(160UL);
  qxlfb_ops_group0 = (struct fb_var_screeninfo *)tmp;
  tmp___0 = ldv_init_zalloc(1608UL);
  qxlfb_ops_group1 = (struct fb_info *)tmp___0;
  return;
}
}
void ldv_main_exported_6(void)
{
  struct fb_image *ldvarg50 ;
  void *tmp ;
  struct fb_fillrect *ldvarg52 ;
  void *tmp___0 ;
  int ldvarg53 ;
  struct fb_copyarea *ldvarg51 ;
  void *tmp___1 ;
  struct fb_cmap *ldvarg54 ;
  void *tmp___2 ;
  int tmp___3 ;
  {
  tmp = ldv_init_zalloc(80UL);
  ldvarg50 = (struct fb_image *)tmp;
  tmp___0 = ldv_init_zalloc(24UL);
  ldvarg52 = (struct fb_fillrect *)tmp___0;
  tmp___1 = ldv_init_zalloc(24UL);
  ldvarg51 = (struct fb_copyarea *)tmp___1;
  tmp___2 = ldv_init_zalloc(40UL);
  ldvarg54 = (struct fb_cmap *)tmp___2;
  ldv_memset((void *)(& ldvarg53), 0, 4UL);
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_6 == 1) {
    drm_fb_helper_pan_display(qxlfb_ops_group0, qxlfb_ops_group1);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_41569;
  case 1: ;
  if (ldv_state_variable_6 == 1) {
    drm_fb_helper_setcmap(ldvarg54, qxlfb_ops_group1);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_41569;
  case 2: ;
  if (ldv_state_variable_6 == 1) {
    drm_fb_helper_blank(ldvarg53, qxlfb_ops_group1);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_41569;
  case 3: ;
  if (ldv_state_variable_6 == 1) {
    drm_fb_helper_debug_leave(qxlfb_ops_group1);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_41569;
  case 4: ;
  if (ldv_state_variable_6 == 1) {
    drm_fb_helper_check_var(qxlfb_ops_group0, qxlfb_ops_group1);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_41569;
  case 5: ;
  if (ldv_state_variable_6 == 1) {
    qxl_fb_fillrect(qxlfb_ops_group1, (struct fb_fillrect const *)ldvarg52);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_41569;
  case 6: ;
  if (ldv_state_variable_6 == 1) {
    qxl_fb_copyarea(qxlfb_ops_group1, (struct fb_copyarea const *)ldvarg51);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_41569;
  case 7: ;
  if (ldv_state_variable_6 == 1) {
    qxl_fb_imageblit(qxlfb_ops_group1, (struct fb_image const *)ldvarg50);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_41569;
  case 8: ;
  if (ldv_state_variable_6 == 1) {
    drm_fb_helper_debug_enter(qxlfb_ops_group1);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_41569;
  case 9: ;
  if (ldv_state_variable_6 == 1) {
    drm_fb_helper_set_par(qxlfb_ops_group1);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_41569;
  default:
  ldv_stop();
  }
  ldv_41569: ;
  return;
}
}
void ldv_main_exported_7(void)
{
  struct list_head *ldvarg9 ;
  void *tmp ;
  struct fb_info *ldvarg8 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(16UL);
  ldvarg9 = (struct list_head *)tmp;
  tmp___0 = ldv_init_zalloc(1608UL);
  ldvarg8 = (struct fb_info *)tmp___0;
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_7 == 1) {
    qxl_deferred_io(ldvarg8, ldvarg9);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_41586;
  default:
  ldv_stop();
  }
  ldv_41586: ;
  return;
}
}
void ldv_main_exported_5(void)
{
  struct drm_fb_helper_surface_size *ldvarg89 ;
  void *tmp ;
  struct drm_fb_helper *ldvarg88 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(24UL);
  ldvarg89 = (struct drm_fb_helper_surface_size *)tmp;
  tmp___0 = ldv_init_zalloc(160UL);
  ldvarg88 = (struct drm_fb_helper *)tmp___0;
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_5 == 1) {
    qxl_fb_find_or_create_single(ldvarg88, ldvarg89);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_41594;
  default:
  ldv_stop();
  }
  ldv_41594: ;
  return;
}
}
bool ldv_queue_work_on_189(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_190(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_191(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_192(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_193(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_194(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_195(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_196(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_197(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
void ldv_mutex_unlock_198(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_199(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_200(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_201(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_202(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_203(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_fb_info(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_204(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_base_of_ww_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_205(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
int ldv_mutex_trylock_206(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_209(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_2696;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2696;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2696;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2696;
  default:
  __bad_percpu_size();
  }
  ldv_2696: ;
  return (pfo_ret__);
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
  goto ldv_5596;
  case 2UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5596;
  case 4UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5596;
  case 8UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5596;
  default:
  __xadd_wrong_size();
  }
  ldv_5596: ;
  return (__ret + i);
}
}
int ldv_mutex_trylock_242(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_251(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_240(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_243(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_244(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_247(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_248(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_254(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_256(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_259(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_260(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_250(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_239(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_241(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_245(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_246(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_249(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_255(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_257(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_258(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_mutex_of_qxl_gem(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_qxl_gem(struct mutex *lock ) ;
extern int __preempt_count ;
__inline static void __preempt_count_add(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (val));
  }
  goto ldv_6822;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6822;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6822;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_6822;
  default:
  __bad_percpu_size();
  }
  ldv_6822: ;
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
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (- val));
  }
  goto ldv_6834;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6834;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6834;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6834;
  default:
  __bad_percpu_size();
  }
  ldv_6834: ;
  return;
}
}
bool ldv_queue_work_on_234(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_236(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_235(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_238(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_237(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static void kref_get(struct kref *kref )
{
  bool __warned ;
  int __ret_warn_once ;
  int tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = atomic_add_return(1, & kref->refcount);
  __ret_warn_once = tmp <= 1;
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("include/linux/kref.h", 47);
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
}
}
__inline static int ldv_kref_put_mutex_118(struct kref *kref , void (*release)(struct kref * ) ,
                                           struct mutex *lock ) ;
extern void dev_warn(struct device const * , char const * , ...) ;
__inline static void pagefault_disabled_inc(void)
{
  struct task_struct *tmp ;
  {
  tmp = get_current();
  tmp->pagefault_disabled = tmp->pagefault_disabled + 1;
  return;
}
}
__inline static void pagefault_disabled_dec(void)
{
  struct task_struct *tmp ;
  int __ret_warn_on ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_current();
  tmp->pagefault_disabled = tmp->pagefault_disabled - 1;
  tmp___0 = get_current();
  __ret_warn_on = tmp___0->pagefault_disabled < 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("include/linux/uaccess.h", 15);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  return;
}
}
__inline static void pagefault_disable(void)
{
  {
  pagefault_disabled_inc();
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void pagefault_enable(void)
{
  {
  __asm__ volatile ("": : : "memory");
  pagefault_disabled_dec();
  return;
}
}
extern int ttm_bo_validate(struct ttm_buffer_object * , struct ttm_placement * , bool ,
                           bool ) ;
extern int ttm_bo_init(struct ttm_bo_device * , struct ttm_buffer_object * , unsigned long ,
                       enum ttm_bo_type , struct ttm_placement * , uint32_t , bool ,
                       struct file * , size_t , struct sg_table * , struct reservation_object * ,
                       void (*)(struct ttm_buffer_object * ) ) ;
extern int ttm_bo_evict_mm(struct ttm_bo_device * , unsigned int ) ;
__inline static void *ttm_kmap_obj_virtual(struct ttm_bo_kmap_obj *map , bool *is_iomem )
{
  {
  *is_iomem = ((unsigned int )map->bo_kmap_type & 128U) != 0U;
  return (map->virtual);
}
}
extern int ttm_bo_kmap(struct ttm_buffer_object * , unsigned long , unsigned long ,
                       struct ttm_bo_kmap_obj * ) ;
extern void ttm_bo_kunmap(struct ttm_bo_kmap_obj * ) ;
extern int ttm_mem_io_lock(struct ttm_mem_type_manager * , bool ) ;
extern void ttm_mem_io_unlock(struct ttm_mem_type_manager * ) ;
extern int ttm_mem_io_reserve(struct ttm_bo_device * , struct ttm_mem_reg * ) ;
extern void ttm_mem_io_free(struct ttm_bo_device * , struct ttm_mem_reg * ) ;
extern void drm_gem_object_release(struct drm_gem_object * ) ;
extern int drm_gem_object_init(struct drm_device * , struct drm_gem_object * , size_t ) ;
__inline static void drm_gem_object_reference(struct drm_gem_object *obj )
{
  {
  kref_get(& obj->refcount);
  return;
}
}
__inline static void drm_gem_object_unreference_unlocked___1(struct drm_gem_object *obj )
{
  struct drm_device *dev ;
  int tmp ;
  {
  if ((unsigned long )obj == (unsigned long )((struct drm_gem_object *)0)) {
    return;
  } else {
  }
  dev = obj->dev;
  tmp = ldv_kref_put_mutex_118(& obj->refcount, & drm_gem_object_free, & dev->struct_mutex);
  if (tmp != 0) {
    ldv_mutex_unlock_254(& dev->struct_mutex);
  } else {
    lock_acquire(& dev->struct_mutex.dep_map, 0U, 0, 0, 1, (struct lockdep_map *)0,
                 0UL);
    lock_release(& dev->struct_mutex.dep_map, 0, 0UL);
  }
  return;
}
}
void qxl_bo_force_delete(struct qxl_device *qdev ) ;
int qxl_surface_id_alloc(struct qxl_device *qdev , struct qxl_bo *surf ) ;
int qxl_hw_surface_alloc(struct qxl_device *qdev , struct qxl_bo *surf , struct ttm_mem_reg *new_mem ) ;
int qxl_bo_check_id(struct qxl_device *qdev , struct qxl_bo *bo ) ;
int qxl_bo_create(struct qxl_device *qdev , unsigned long size , bool kernel , bool pinned ,
                  u32 domain , struct qxl_surface *surf , struct qxl_bo **bo_ptr ) ;
void *qxl_bo_kmap_atomic_page(struct qxl_device *qdev , struct qxl_bo *bo , int page_offset___0 ) ;
void qxl_bo_kunmap_atomic_page(struct qxl_device *qdev , struct qxl_bo *bo , void *pmap ) ;
struct qxl_bo *qxl_bo_ref(struct qxl_bo *bo ) ;
__inline static void *io_mapping_map_atomic_wc(struct io_mapping *mapping , unsigned long offset )
{
  {
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  pagefault_disable();
  return ((void *)mapping + offset);
}
}
__inline static void io_mapping_unmap_atomic(void *vaddr )
{
  {
  pagefault_enable();
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  return;
}
}
static void qxl_ttm_bo_destroy(struct ttm_buffer_object *tbo )
{
  struct qxl_bo *bo ;
  struct qxl_device *qdev ;
  struct ttm_buffer_object const *__mptr ;
  {
  __mptr = (struct ttm_buffer_object const *)tbo;
  bo = (struct qxl_bo *)__mptr + 0xffffffffffffffa8UL;
  qdev = (struct qxl_device *)(bo->gem_base.dev)->dev_private;
  qxl_surface_evict(qdev, bo, 0);
  ldv_mutex_lock_255(& qdev->gem.mutex);
  list_del_init(& bo->list);
  ldv_mutex_unlock_256(& qdev->gem.mutex);
  drm_gem_object_release(& bo->gem_base);
  kfree((void const *)bo);
  return;
}
}
bool qxl_ttm_bo_is_qxl_bo(struct ttm_buffer_object *bo )
{
  {
  if ((unsigned long )bo->destroy == (unsigned long )(& qxl_ttm_bo_destroy)) {
    return (1);
  } else {
  }
  return (0);
}
}
void qxl_ttm_placement_from_domain(struct qxl_bo *qbo , u32 domain , bool pinned )
{
  u32 c ;
  u32 pflag ;
  unsigned int i ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  {
  c = 0U;
  pflag = (int )pinned ? 2097152U : 0U;
  qbo->placement.placement = (struct ttm_place const *)(& qbo->placements);
  qbo->placement.busy_placement = (struct ttm_place const *)(& qbo->placements);
  if (domain == 1U) {
    tmp = c;
    c = c + 1U;
    qbo->placements[tmp].flags = pflag | 65540U;
  } else {
  }
  if (domain == 2U) {
    tmp___0 = c;
    c = c + 1U;
    qbo->placements[tmp___0].flags = pflag | 65544U;
  } else {
  }
  if (domain == 0U) {
    tmp___1 = c;
    c = c + 1U;
    qbo->placements[tmp___1].flags = pflag | 458753U;
  } else {
  }
  if (c == 0U) {
    tmp___2 = c;
    c = c + 1U;
    qbo->placements[tmp___2].flags = 458753U;
  } else {
  }
  qbo->placement.num_placement = c;
  qbo->placement.num_busy_placement = c;
  i = 0U;
  goto ldv_41123;
  ldv_41122:
  qbo->placements[i].fpfn = 0U;
  qbo->placements[i].lpfn = 0U;
  i = i + 1U;
  ldv_41123: ;
  if (i < c) {
    goto ldv_41122;
  } else {
  }
  return;
}
}
int qxl_bo_create(struct qxl_device *qdev , unsigned long size , bool kernel , bool pinned ,
                  u32 domain , struct qxl_surface *surf , struct qxl_bo **bo_ptr )
{
  struct qxl_bo *bo ;
  enum ttm_bo_type type ;
  int r ;
  void *tmp ;
  unsigned long __y ;
  long tmp___0 ;
  long tmp___1 ;
  {
  if ((int )kernel) {
    type = 1;
  } else {
    type = 0;
  }
  *bo_ptr = (struct qxl_bo *)0;
  tmp = kzalloc(1304UL, 208U);
  bo = (struct qxl_bo *)tmp;
  if ((unsigned long )bo == (unsigned long )((struct qxl_bo *)0)) {
    return (-12);
  } else {
  }
  __y = 4096UL;
  size = (((__y + size) - 1UL) / __y) * __y;
  r = drm_gem_object_init(qdev->ddev, & bo->gem_base, size);
  tmp___0 = ldv__builtin_expect(r != 0, 0L);
  if (tmp___0 != 0L) {
    kfree((void const *)bo);
    return (r);
  } else {
  }
  bo->type = (int )domain;
  bo->pin_count = (unsigned int )pinned;
  bo->surface_id = 0U;
  INIT_LIST_HEAD(& bo->list);
  if ((unsigned long )surf != (unsigned long )((struct qxl_surface *)0)) {
    bo->surf = *surf;
  } else {
  }
  qxl_ttm_placement_from_domain(bo, domain, (int )pinned);
  r = ttm_bo_init(& qdev->mman.bdev, & bo->tbo, size, type, & bo->placement, 0U, (int )((bool )(! ((int )kernel != 0))),
                  (struct file *)0, size, (struct sg_table *)0, (struct reservation_object *)0,
                  & qxl_ttm_bo_destroy);
  tmp___1 = ldv__builtin_expect(r != 0, 0L);
  if (tmp___1 != 0L) {
    if (r != -512) {
      dev_err((struct device const *)qdev->dev, "object_init failed for (%lu, 0x%08X)\n",
              size, domain);
    } else {
    }
    return (r);
  } else {
  }
  *bo_ptr = bo;
  return (0);
}
}
int qxl_bo_kmap(struct qxl_bo *bo , void **ptr )
{
  bool is_iomem ;
  int r ;
  {
  if ((unsigned long )bo->kptr != (unsigned long )((void *)0)) {
    if ((unsigned long )ptr != (unsigned long )((void **)0)) {
      *ptr = bo->kptr;
    } else {
    }
    return (0);
  } else {
  }
  r = ttm_bo_kmap(& bo->tbo, 0UL, bo->tbo.num_pages, & bo->kmap);
  if (r != 0) {
    return (r);
  } else {
  }
  bo->kptr = ttm_kmap_obj_virtual(& bo->kmap, & is_iomem);
  if ((unsigned long )ptr != (unsigned long )((void **)0)) {
    *ptr = bo->kptr;
  } else {
  }
  return (0);
}
}
void *qxl_bo_kmap_atomic_page(struct qxl_device *qdev , struct qxl_bo *bo , int page_offset___0 )
{
  struct ttm_mem_type_manager *man ;
  void *rptr ;
  int ret ;
  struct io_mapping *map ;
  void *tmp ;
  {
  man = (struct ttm_mem_type_manager *)(& (bo->tbo.bdev)->man) + (unsigned long )bo->tbo.mem.mem_type;
  if (bo->tbo.mem.mem_type == 2U) {
    map = qdev->vram_mapping;
  } else
  if (bo->tbo.mem.mem_type == 3U) {
    map = qdev->surface_mapping;
  } else {
    goto fallback;
  }
  ttm_mem_io_lock(man, 0);
  ret = ttm_mem_io_reserve(bo->tbo.bdev, & bo->tbo.mem);
  ttm_mem_io_unlock(man);
  tmp = io_mapping_map_atomic_wc(map, bo->tbo.mem.bus.offset + (unsigned long )page_offset___0);
  return (tmp);
  fallback: ;
  if ((unsigned long )bo->kptr != (unsigned long )((void *)0)) {
    rptr = bo->kptr + (unsigned long )page_offset___0 * 4096UL;
    return (rptr);
  } else {
  }
  ret = qxl_bo_kmap(bo, & rptr);
  if (ret != 0) {
    return ((void *)0);
  } else {
  }
  rptr = rptr + (unsigned long )page_offset___0 * 4096UL;
  return (rptr);
}
}
void qxl_bo_kunmap(struct qxl_bo *bo )
{
  {
  if ((unsigned long )bo->kptr == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  bo->kptr = (void *)0;
  ttm_bo_kunmap(& bo->kmap);
  return;
}
}
void qxl_bo_kunmap_atomic_page(struct qxl_device *qdev , struct qxl_bo *bo , void *pmap )
{
  struct ttm_mem_type_manager *man ;
  struct io_mapping *map ;
  {
  man = (struct ttm_mem_type_manager *)(& (bo->tbo.bdev)->man) + (unsigned long )bo->tbo.mem.mem_type;
  if (bo->tbo.mem.mem_type == 2U) {
    map = qdev->vram_mapping;
  } else
  if (bo->tbo.mem.mem_type == 3U) {
    map = qdev->surface_mapping;
  } else {
    goto fallback;
  }
  io_mapping_unmap_atomic(pmap);
  ttm_mem_io_lock(man, 0);
  ttm_mem_io_free(bo->tbo.bdev, & bo->tbo.mem);
  ttm_mem_io_unlock(man);
  return;
  fallback:
  qxl_bo_kunmap(bo);
  return;
}
}
void qxl_bo_unref(struct qxl_bo **bo )
{
  {
  if ((unsigned long )*bo == (unsigned long )((struct qxl_bo *)0)) {
    return;
  } else {
  }
  drm_gem_object_unreference_unlocked___1(& (*bo)->gem_base);
  *bo = (struct qxl_bo *)0;
  return;
}
}
struct qxl_bo *qxl_bo_ref(struct qxl_bo *bo )
{
  {
  drm_gem_object_reference(& bo->gem_base);
  return (bo);
}
}
int qxl_bo_pin(struct qxl_bo *bo , u32 domain , u64 *gpu_addr )
{
  struct qxl_device *qdev ;
  int r ;
  long tmp ;
  long tmp___0 ;
  {
  qdev = (struct qxl_device *)(bo->gem_base.dev)->dev_private;
  if (bo->pin_count != 0U) {
    bo->pin_count = bo->pin_count + 1U;
    if ((unsigned long )gpu_addr != (unsigned long )((u64 *)0ULL)) {
      *gpu_addr = qxl_bo_gpu_offset(bo);
    } else {
    }
    return (0);
  } else {
  }
  qxl_ttm_placement_from_domain(bo, domain, 1);
  r = ttm_bo_validate(& bo->tbo, & bo->placement, 0, 0);
  tmp = ldv__builtin_expect(r == 0, 1L);
  if (tmp != 0L) {
    bo->pin_count = 1U;
    if ((unsigned long )gpu_addr != (unsigned long )((u64 *)0ULL)) {
      *gpu_addr = qxl_bo_gpu_offset(bo);
    } else {
    }
  } else {
  }
  tmp___0 = ldv__builtin_expect(r != 0, 0L);
  if (tmp___0 != 0L) {
    dev_err((struct device const *)qdev->dev, "%p pin failed\n", bo);
  } else {
  }
  return (r);
}
}
int qxl_bo_unpin(struct qxl_bo *bo )
{
  struct qxl_device *qdev ;
  int r ;
  int i ;
  long tmp ;
  {
  qdev = (struct qxl_device *)(bo->gem_base.dev)->dev_private;
  if (bo->pin_count == 0U) {
    dev_warn((struct device const *)qdev->dev, "%p unpin not necessary\n", bo);
    return (0);
  } else {
  }
  bo->pin_count = bo->pin_count - 1U;
  if (bo->pin_count != 0U) {
    return (0);
  } else {
  }
  i = 0;
  goto ldv_41186;
  ldv_41185:
  bo->placements[i].flags = bo->placements[i].flags & 4292870143U;
  i = i + 1;
  ldv_41186: ;
  if ((unsigned int )i < bo->placement.num_placement) {
    goto ldv_41185;
  } else {
  }
  r = ttm_bo_validate(& bo->tbo, & bo->placement, 0, 0);
  tmp = ldv__builtin_expect(r != 0, 0L);
  if (tmp != 0L) {
    dev_err((struct device const *)qdev->dev, "%p validate failed for unpin\n",
            bo);
  } else {
  }
  return (r);
}
}
void qxl_bo_force_delete(struct qxl_device *qdev )
{
  struct qxl_bo *bo ;
  struct qxl_bo *n ;
  int tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  tmp = list_empty((struct list_head const *)(& qdev->gem.objects));
  if (tmp != 0) {
    return;
  } else {
  }
  dev_err((struct device const *)qdev->dev, "Userspace still has active objects !\n");
  __mptr = (struct list_head const *)qdev->gem.objects.next;
  bo = (struct qxl_bo *)__mptr;
  __mptr___0 = (struct list_head const *)bo->list.next;
  n = (struct qxl_bo *)__mptr___0;
  goto ldv_41200;
  ldv_41199:
  ldv_mutex_lock_257(& (qdev->ddev)->struct_mutex);
  dev_err((struct device const *)qdev->dev, "%p %p %lu %lu force free\n", & bo->gem_base,
          bo, bo->gem_base.size, *((unsigned long *)(& bo->gem_base.refcount)));
  ldv_mutex_lock_258(& qdev->gem.mutex);
  list_del_init(& bo->list);
  ldv_mutex_unlock_259(& qdev->gem.mutex);
  drm_gem_object_unreference(& bo->gem_base);
  ldv_mutex_unlock_260(& (qdev->ddev)->struct_mutex);
  bo = n;
  __mptr___1 = (struct list_head const *)n->list.next;
  n = (struct qxl_bo *)__mptr___1;
  ldv_41200: ;
  if ((unsigned long )(& bo->list) != (unsigned long )(& qdev->gem.objects)) {
    goto ldv_41199;
  } else {
  }
  return;
}
}
int qxl_bo_init(struct qxl_device *qdev )
{
  int tmp ;
  {
  tmp = qxl_ttm_init(qdev);
  return (tmp);
}
}
void qxl_bo_fini(struct qxl_device *qdev )
{
  {
  qxl_ttm_fini(qdev);
  return;
}
}
int qxl_bo_check_id(struct qxl_device *qdev , struct qxl_bo *bo )
{
  int ret ;
  {
  if (bo->type == 2 && bo->surface_id == 0U) {
    ret = qxl_surface_id_alloc(qdev, bo);
    if (ret != 0) {
      return (ret);
    } else {
    }
    ret = qxl_hw_surface_alloc(qdev, bo, (struct ttm_mem_reg *)0);
    if (ret != 0) {
      return (ret);
    } else {
    }
  } else {
  }
  return (0);
}
}
int qxl_surf_evict(struct qxl_device *qdev )
{
  int tmp ;
  {
  tmp = ttm_bo_evict_mm(& qdev->mman.bdev, 3U);
  return (tmp);
}
}
int qxl_vram_evict(struct qxl_device *qdev )
{
  int tmp ;
  {
  tmp = ttm_bo_evict_mm(& qdev->mman.bdev, 2U);
  return (tmp);
}
}
bool ldv_queue_work_on_234(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_235(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_236(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_237(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_238(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_239(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_240(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_241(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_242(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
void ldv_mutex_unlock_243(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_244(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_245(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_246(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_247(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_248(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_fb_info(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_249(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_base_of_ww_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_250(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
int ldv_mutex_trylock_251(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_254(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_255(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_qxl_gem(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_256(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_qxl_gem(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_257(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_struct_mutex_of_drm_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_258(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_qxl_gem(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_259(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_qxl_gem(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_260(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
int ldv_mutex_trylock_299(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_308(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_297(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_300(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_301(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_304(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_305(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_311(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_313(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_307(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_296(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_298(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_302(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_303(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_306(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_312(struct mutex *ldv_func_arg1 ) ;
bool ldv_queue_work_on_291(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_293(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_292(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_295(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_294(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static int ldv_kref_put_mutex_118(struct kref *kref , void (*release)(struct kref * ) ,
                                           struct mutex *lock ) ;
extern void ttm_bo_unref(struct ttm_buffer_object ** ) ;
__inline static void drm_gem_object_unreference_unlocked___2(struct drm_gem_object *obj )
{
  struct drm_device *dev ;
  int tmp ;
  {
  if ((unsigned long )obj == (unsigned long )((struct drm_gem_object *)0)) {
    return;
  } else {
  }
  dev = obj->dev;
  tmp = ldv_kref_put_mutex_118(& obj->refcount, & drm_gem_object_free, & dev->struct_mutex);
  if (tmp != 0) {
    ldv_mutex_unlock_311(& dev->struct_mutex);
  } else {
    lock_acquire(& dev->struct_mutex.dep_map, 0U, 0, 0, 1, (struct lockdep_map *)0,
                 0UL);
    lock_release(& dev->struct_mutex.dep_map, 0, 0UL);
  }
  return;
}
}
int qxl_gem_init(struct qxl_device *qdev ) ;
void qxl_gem_fini(struct qxl_device *qdev ) ;
int qxl_gem_object_create_with_handle(struct qxl_device *qdev , struct drm_file *file_priv ,
                                      u32 domain , size_t size , struct qxl_surface *surf ,
                                      struct qxl_bo **qobj , uint32_t *handle ) ;
void qxl_gem_object_free(struct drm_gem_object *gobj )
{
  struct qxl_bo *qobj ;
  struct drm_gem_object const *__mptr ;
  struct qxl_device *qdev ;
  struct ttm_buffer_object *tbo ;
  {
  __mptr = (struct drm_gem_object const *)gobj;
  qobj = (struct qxl_bo *)__mptr + 0xfffffffffffffc08UL;
  qdev = (struct qxl_device *)(gobj->dev)->dev_private;
  qxl_surface_evict(qdev, qobj, 0);
  tbo = & qobj->tbo;
  ttm_bo_unref(& tbo);
  return;
}
}
int qxl_gem_object_create(struct qxl_device *qdev , int size , int alignment , int initial_domain ,
                          bool discardable , bool kernel , struct qxl_surface *surf ,
                          struct drm_gem_object **obj )
{
  struct qxl_bo *qbo ;
  int r ;
  {
  *obj = (struct drm_gem_object *)0;
  if ((unsigned int )alignment <= 4095U) {
    alignment = 4096;
  } else {
  }
  r = qxl_bo_create(qdev, (unsigned long )size, (int )kernel, 0, (u32 )initial_domain,
                    surf, & qbo);
  if (r != 0) {
    if (r != -512) {
      drm_err("Failed to allocate GEM object (%d, %d, %u, %d)\n", size, initial_domain,
              alignment, r);
    } else {
    }
    return (r);
  } else {
  }
  *obj = & qbo->gem_base;
  ldv_mutex_lock_312(& qdev->gem.mutex);
  list_add_tail(& qbo->list, & qdev->gem.objects);
  ldv_mutex_unlock_313(& qdev->gem.mutex);
  return (0);
}
}
int qxl_gem_object_create_with_handle(struct qxl_device *qdev , struct drm_file *file_priv ,
                                      u32 domain , size_t size , struct qxl_surface *surf ,
                                      struct qxl_bo **qobj , uint32_t *handle )
{
  struct drm_gem_object *gobj ;
  int r ;
  long tmp ;
  long tmp___0 ;
  struct drm_gem_object const *__mptr ;
  {
  tmp = ldv__builtin_expect((unsigned long )qobj == (unsigned long )((struct qxl_bo **)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_gem.c"),
                         "i" (86), "i" (12UL));
    ldv_41098: ;
    goto ldv_41098;
  } else {
  }
  tmp___0 = ldv__builtin_expect((unsigned long )handle == (unsigned long )((uint32_t *)0U),
                             0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_gem.c"),
                         "i" (87), "i" (12UL));
    ldv_41099: ;
    goto ldv_41099;
  } else {
  }
  r = qxl_gem_object_create(qdev, (int )size, 0, (int )domain, 0, 0, surf, & gobj);
  if (r != 0) {
    return (-12);
  } else {
  }
  r = drm_gem_handle_create(file_priv, gobj, handle);
  if (r != 0) {
    return (r);
  } else {
  }
  __mptr = (struct drm_gem_object const *)gobj;
  *qobj = (struct qxl_bo *)__mptr + 0xfffffffffffffc08UL;
  drm_gem_object_unreference_unlocked___2(gobj);
  return (0);
}
}
int qxl_gem_object_open(struct drm_gem_object *obj , struct drm_file *file_priv )
{
  {
  return (0);
}
}
void qxl_gem_object_close(struct drm_gem_object *obj , struct drm_file *file_priv )
{
  {
  return;
}
}
int qxl_gem_init(struct qxl_device *qdev )
{
  {
  INIT_LIST_HEAD(& qdev->gem.objects);
  return (0);
}
}
void qxl_gem_fini(struct qxl_device *qdev )
{
  {
  qxl_bo_force_delete(qdev);
  return;
}
}
bool ldv_queue_work_on_291(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_292(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_293(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_294(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_295(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_296(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_297(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_298(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_299(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
void ldv_mutex_unlock_300(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_301(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_302(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_303(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_304(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_305(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_fb_info(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_306(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_base_of_ww_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_307(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
int ldv_mutex_trylock_308(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_311(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_312(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_qxl_gem(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_313(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_qxl_gem(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv__builtin_va_end(__builtin_va_list * ) ;
__inline static long ldv__builtin_expect(long exp , long c ) ;
void ldv__builtin_va_start(__builtin_va_list * ) ;
__inline static void __read_once_size(void const volatile *p , void *res , int size )
{
  {
  switch (size) {
  case 1:
  *((__u8 *)res) = *((__u8 volatile *)p);
  goto ldv_880;
  case 2:
  *((__u16 *)res) = *((__u16 volatile *)p);
  goto ldv_880;
  case 4:
  *((__u32 *)res) = *((__u32 volatile *)p);
  goto ldv_880;
  case 8:
  *((__u64 *)res) = *((__u64 volatile *)p);
  goto ldv_880;
  default:
  __asm__ volatile ("": : : "memory");
  memcpy(res, (void const *)p, (unsigned long )size);
  __asm__ volatile ("": : : "memory");
  }
  ldv_880: ;
  return;
}
}
extern struct pv_irq_ops pv_irq_ops ;
extern void __might_sleep(char const * , int , int ) ;
extern int vsnprintf(char * , size_t , char const * , va_list * ) ;
extern void __bad_size_call_parameter(void) ;
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
                         "i" (831), "i" (12UL));
    ldv_4801: ;
    goto ldv_4801;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (43UL),
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
int ldv_mutex_trylock_348(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_357(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_346(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_349(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_350(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_353(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_354(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_360(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_363(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_365(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_367(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_368(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_371(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_356(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_345(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_347(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_351(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_352(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_355(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_362(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_364(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_366(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_369(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_370(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_async_io_mutex_of_qxl_device(struct mutex *lock ) ;
void ldv_mutex_unlock_async_io_mutex_of_qxl_device(struct mutex *lock ) ;
void ldv_mutex_lock_surf_evict_mutex_of_qxl_device(struct mutex *lock ) ;
void ldv_mutex_unlock_surf_evict_mutex_of_qxl_device(struct mutex *lock ) ;
void ldv_mutex_lock_update_area_mutex_of_qxl_device(struct mutex *lock ) ;
void ldv_mutex_unlock_update_area_mutex_of_qxl_device(struct mutex *lock ) ;
__inline static int preempt_count(void)
{
  int pfo_ret__ ;
  {
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6781;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6781;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6781;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6781;
  default:
  __bad_percpu_size();
  }
  ldv_6781: ;
  return (pfo_ret__ & 2147483647);
}
}
__inline static void __preempt_count_sub___0(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (- val));
  }
  goto ldv_6850;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6850;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6850;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6850;
  default:
  __bad_percpu_size();
  }
  ldv_6850: ;
  return;
}
}
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int debug_lockdep_rcu_enabled(void) ;
bool ldv_queue_work_on_340(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_342(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_341(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_344(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_343(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool flush_work(struct work_struct * ) ;
bool ldv_flush_work_361(struct work_struct *ldv_func_arg1 ) ;
__inline static bool queue_work___0(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_340(8192, wq, work);
  return (tmp);
}
}
__inline static void outb(unsigned char value , int port )
{
  {
  __asm__ volatile ("outb %b0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
extern int cpu_number ;
extern void *idr_find_slowpath(struct idr * , int ) ;
extern void idr_preload(gfp_t ) ;
extern int idr_alloc(struct idr * , void * , int , int , gfp_t ) ;
extern void *idr_replace(struct idr * , void * , int ) ;
extern void idr_remove(struct idr * , int ) ;
__inline static void idr_preload_end(void)
{
  {
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub___0(1);
  return;
}
}
__inline static void *idr_find(struct idr *idr , int id )
{
  struct idr_layer *hint ;
  struct idr_layer *________p1 ;
  struct idr_layer *_________p1 ;
  union __anonunion___u_188 __u ;
  int tmp ;
  struct idr_layer *________p1___0 ;
  struct idr_layer *_________p1___0 ;
  union __anonunion___u_190 __u___0 ;
  int tmp___0 ;
  void *tmp___1 ;
  {
  __read_once_size((void const volatile *)(& idr->hint), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  hint = ________p1;
  if ((unsigned long )hint != (unsigned long )((struct idr_layer *)0) && (id & -256) == hint->prefix) {
    __read_once_size((void const volatile *)(& hint->ary) + ((unsigned long )id & 255UL),
                     (void *)(& __u___0.__c), 8);
    _________p1___0 = __u___0.__val;
    ________p1___0 = _________p1___0;
    tmp___0 = debug_lockdep_rcu_enabled();
    return ((void *)________p1___0);
  } else {
  }
  tmp___1 = idr_find_slowpath(idr, id);
  return (tmp___1);
}
}
extern long schedule_timeout(long ) ;
extern void schedule(void) ;
extern atomic_t kgdb_active ;
__inline static int ww_mutex_lock___1(struct ww_mutex *lock , struct ww_acquire_ctx *ctx )
{
  int tmp ;
  {
  if ((unsigned long )ctx != (unsigned long )((struct ww_acquire_ctx *)0)) {
    tmp = __ww_mutex_lock(lock, ctx);
    return (tmp);
  } else {
  }
  ldv_mutex_lock_355(& lock->base);
  return (0);
}
}
__inline static int ww_mutex_lock_interruptible___1(struct ww_mutex *lock , struct ww_acquire_ctx *ctx )
{
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ctx != (unsigned long )((struct ww_acquire_ctx *)0)) {
    tmp = __ww_mutex_lock_interruptible(lock, ctx);
    return (tmp);
  } else {
    tmp___0 = ldv_mutex_lock_interruptible_356(& lock->base);
    return (tmp___0);
  }
}
}
__inline static int ww_mutex_trylock___1(struct ww_mutex *lock )
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_357(& lock->base);
  return (tmp);
}
}
extern void __const_udelay(unsigned long ) ;
extern void usleep_range(unsigned long , unsigned long ) ;
__inline static bool drm_can_sleep(void)
{
  int tmp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  int tmp___0 ;
  unsigned long _flags ;
  int tmp___1 ;
  {
  tmp = preempt_count();
  if (tmp != 0) {
    return (0);
  } else {
    __vpp_verify = (void const *)0;
    switch (4UL) {
    case 1UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_39230;
    case 2UL:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_39230;
    case 4UL:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_39230;
    case 8UL:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_39230;
    default:
    __bad_percpu_size();
    }
    ldv_39230:
    pscr_ret__ = pfo_ret__;
    goto ldv_39236;
    case 2UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_39240;
    case 2UL:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_39240;
    case 4UL:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_39240;
    case 8UL:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_39240;
    default:
    __bad_percpu_size();
    }
    ldv_39240:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_39236;
    case 4UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_39249;
    case 2UL:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_39249;
    case 4UL:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_39249;
    case 8UL:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_39249;
    default:
    __bad_percpu_size();
    }
    ldv_39249:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_39236;
    case 8UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_39258;
    case 2UL:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_39258;
    case 4UL:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_39258;
    case 8UL:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_39258;
    default:
    __bad_percpu_size();
    }
    ldv_39258:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_39236;
    default:
    __bad_size_call_parameter();
    goto ldv_39236;
    }
    ldv_39236:
    tmp___0 = atomic_read((atomic_t const *)(& kgdb_active));
    if (pscr_ret__ == tmp___0) {
      return (0);
    } else {
      _flags = arch_local_save_flags();
      tmp___1 = arch_irqs_disabled_flags(_flags);
      if (tmp___1 != 0) {
        return (0);
      } else {
      }
    }
  }
  return (1);
}
}
extern int ttm_bo_wait(struct ttm_buffer_object * , bool , bool , bool ) ;
__inline static int __ttm_bo_reserve___1(struct ttm_buffer_object *bo , bool interruptible ,
                                         bool no_wait , bool use_ticket , struct ww_acquire_ctx *ticket )
{
  int ret ;
  bool success ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  ret = 0;
  if ((int )no_wait) {
    __ret_warn_on = (unsigned long )ticket != (unsigned long )((struct ww_acquire_ctx *)0);
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/drm/ttm/ttm_bo_driver.h", 787);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      return (-16);
    } else {
    }
    tmp___1 = ww_mutex_trylock___1(& (bo->resv)->lock);
    success = tmp___1 != 0;
    return ((int )success ? 0 : -16);
  } else {
  }
  if ((int )interruptible) {
    ret = ww_mutex_lock_interruptible___1(& (bo->resv)->lock, ticket);
  } else {
    ret = ww_mutex_lock___1(& (bo->resv)->lock, ticket);
  }
  if (ret == -4) {
    return (-512);
  } else {
  }
  return (ret);
}
}
__inline static int ttm_bo_reserve___1(struct ttm_buffer_object *bo , bool interruptible ,
                                       bool no_wait , bool use_ticket , struct ww_acquire_ctx *ticket )
{
  int ret ;
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = atomic_read((atomic_t const *)(& bo->kref.refcount));
  __ret_warn_on = tmp == 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("include/drm/ttm/ttm_bo_driver.h", 855);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  ret = __ttm_bo_reserve___1(bo, (int )interruptible, (int )no_wait, (int )use_ticket,
                             ticket);
  tmp___1 = ldv__builtin_expect(ret == 0, 1L);
  if (tmp___1 != 0L) {
    ttm_bo_del_sub_from_lru(bo);
  } else {
  }
  return (ret);
}
}
void qxl_io_notify_oom(struct qxl_device *qdev ) ;
int qxl_io_update_area(struct qxl_device *qdev , struct qxl_bo *surf , struct qxl_rect const *area ) ;
int qxl_ring_push(struct qxl_ring *ring , void const *new_elt , bool interruptible ) ;
void qxl_io_flush_release(struct qxl_device *qdev ) ;
void qxl_io_flush_surfaces(struct qxl_device *qdev ) ;
int qxl_release_list_add(struct qxl_release *release , struct qxl_bo *bo ) ;
int qxl_alloc_surface_release_reserved(struct qxl_device *qdev , enum qxl_surface_cmd_type surface_cmd_type ,
                                       struct qxl_release *create_rel , struct qxl_release **release ) ;
int qxl_push_command_ring_release(struct qxl_device *qdev , struct qxl_release *release ,
                                  uint32_t type , bool interruptible ) ;
struct qxl_release *qxl_release_from_id_locked(struct qxl_device *qdev , uint64_t id ) ;
void qxl_surface_id_dealloc(struct qxl_device *qdev , uint32_t surface_id ) ;
int qxl_hw_surface_dealloc(struct qxl_device *qdev , struct qxl_bo *surf ) ;
int qxl_update_surface(struct qxl_device *qdev , struct qxl_bo *surf ) ;
__inline static int qxl_bo_reserve___1(struct qxl_bo *bo , bool no_wait )
{
  int r ;
  struct qxl_device *qdev ;
  long tmp ;
  {
  r = ttm_bo_reserve___1(& bo->tbo, 1, (int )no_wait, 0, (struct ww_acquire_ctx *)0);
  tmp = ldv__builtin_expect(r != 0, 0L);
  if (tmp != 0L) {
    if (r != -512) {
      qdev = (struct qxl_device *)(bo->gem_base.dev)->dev_private;
      dev_err((struct device const *)qdev->dev, "%p reserve failed\n", bo);
    } else {
    }
    return (r);
  } else {
  }
  return (0);
}
}
static int qxl_reap_surface_id(struct qxl_device *qdev , int max_to_reap ) ;
void qxl_ring_free(struct qxl_ring *ring )
{
  {
  kfree((void const *)ring);
  return;
}
}
void qxl_ring_init_hdr(struct qxl_ring *ring )
{
  {
  (ring->ring)->header.notify_on_prod = (uint32_t )ring->n_elements;
  return;
}
}
struct qxl_ring *qxl_ring_create(struct qxl_ring_header *header , int element_size ,
                                 int n_elements , int prod_notify , bool set_prod_notify ,
                                 wait_queue_head_t *push_event )
{
  struct qxl_ring *ring ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  tmp = kmalloc(104UL, 208U);
  ring = (struct qxl_ring *)tmp;
  if ((unsigned long )ring == (unsigned long )((struct qxl_ring *)0)) {
    return ((struct qxl_ring *)0);
  } else {
  }
  ring->ring = (struct ring *)header;
  ring->element_size = element_size;
  ring->n_elements = n_elements;
  ring->prod_notify = prod_notify;
  ring->push_event = push_event;
  if ((int )set_prod_notify) {
    qxl_ring_init_hdr(ring);
  } else {
  }
  spinlock_check(& ring->lock);
  __raw_spin_lock_init(& ring->lock.__annonCompField17.rlock, "&(&ring->lock)->rlock",
                       & __key);
  return (ring);
}
}
static int qxl_check_header(struct qxl_ring *ring )
{
  int ret ;
  struct qxl_ring_header *header ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  header = & (ring->ring)->header;
  tmp = spinlock_check(& ring->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  ret = header->prod - header->cons < header->num_items;
  if (ret == 0) {
    header->notify_on_cons = header->cons + 1U;
  } else {
  }
  spin_unlock_irqrestore(& ring->lock, flags);
  return (ret);
}
}
int qxl_check_idle(struct qxl_ring *ring )
{
  int ret ;
  struct qxl_ring_header *header ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  header = & (ring->ring)->header;
  tmp = spinlock_check(& ring->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  ret = header->prod == header->cons;
  spin_unlock_irqrestore(& ring->lock, flags);
  return (ret);
}
}
int qxl_ring_push(struct qxl_ring *ring , void const *new_elt , bool interruptible )
{
  struct qxl_ring_header *header ;
  uint8_t *elt ;
  int idx ;
  int ret ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  wait_queue_t __wait___0 ;
  long __ret___1 ;
  long __int___0 ;
  long tmp___5 ;
  int tmp___6 ;
  bool tmp___7 ;
  int tmp___8 ;
  raw_spinlock_t *tmp___9 ;
  {
  header = & (ring->ring)->header;
  tmp = spinlock_check(& ring->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if (header->prod - header->cons == header->num_items) {
    header->notify_on_cons = header->cons + 1U;
    __asm__ volatile ("mfence": : : "memory");
    spin_unlock_irqrestore(& ring->lock, flags);
    tmp___7 = drm_can_sleep();
    if (tmp___7) {
      tmp___8 = 0;
    } else {
      tmp___8 = 1;
    }
    if (tmp___8) {
      goto ldv_41163;
      ldv_41162:
      __const_udelay(4295UL);
      ldv_41163:
      tmp___0 = qxl_check_header(ring);
      if (tmp___0 == 0) {
        goto ldv_41162;
      } else {
      }
    } else
    if ((int )interruptible) {
      __ret = 0;
      __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_cmd.c",
                    124, 0);
      tmp___3 = qxl_check_header(ring);
      if (tmp___3 == 0) {
        __ret___0 = 0L;
        INIT_LIST_HEAD(& __wait.task_list);
        __wait.flags = 0U;
        ldv_41171:
        tmp___1 = prepare_to_wait_event(ring->push_event, & __wait, 1);
        __int = tmp___1;
        tmp___2 = qxl_check_header(ring);
        if (tmp___2 != 0) {
          goto ldv_41170;
        } else {
        }
        if (__int != 0L) {
          __ret___0 = __int;
          goto ldv_41170;
        } else {
        }
        schedule();
        goto ldv_41171;
        ldv_41170:
        finish_wait(ring->push_event, & __wait);
        __ret = (int )__ret___0;
      } else {
      }
      ret = __ret;
      if (ret != 0) {
        return (ret);
      } else {
      }
    } else {
      __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_cmd.c",
                    129, 0);
      tmp___4 = qxl_check_header(ring);
      if (tmp___4 != 0) {
        goto ldv_41174;
      } else {
      }
      __ret___1 = 0L;
      INIT_LIST_HEAD(& __wait___0.task_list);
      __wait___0.flags = 0U;
      ldv_41180:
      tmp___5 = prepare_to_wait_event(ring->push_event, & __wait___0, 2);
      __int___0 = tmp___5;
      tmp___6 = qxl_check_header(ring);
      if (tmp___6 != 0) {
        goto ldv_41179;
      } else {
      }
      schedule();
      goto ldv_41180;
      ldv_41179:
      finish_wait(ring->push_event, & __wait___0);
      ldv_41174: ;
    }
    tmp___9 = spinlock_check(& ring->lock);
    flags = _raw_spin_lock_irqsave(tmp___9);
  } else {
  }
  idx = (int )(header->prod & (uint32_t )(ring->n_elements + -1));
  elt = (uint8_t *)(& (ring->ring)->elements) + (unsigned long )(ring->element_size * idx);
  memcpy((void *)elt, new_elt, (size_t )ring->element_size);
  header->prod = header->prod + 1U;
  __asm__ volatile ("mfence": : : "memory");
  if (header->prod == header->notify_on_prod) {
    outb(0, ring->prod_notify);
  } else {
  }
  spin_unlock_irqrestore(& ring->lock, flags);
  return (0);
}
}
static bool qxl_ring_pop(struct qxl_ring *ring , void *element )
{
  struct qxl_ring_header volatile *header ;
  uint8_t volatile *ring_elt ;
  int idx ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  header = (struct qxl_ring_header volatile *)(& (ring->ring)->header);
  tmp = spinlock_check(& ring->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned int )header->cons == (unsigned int )header->prod) {
    header->notify_on_prod = (unsigned int )header->cons + 1U;
    spin_unlock_irqrestore(& ring->lock, flags);
    return (0);
  } else {
  }
  idx = (int )((unsigned int )header->cons & (unsigned int )(ring->n_elements + -1));
  ring_elt = (uint8_t volatile *)(& (ring->ring)->elements) + (unsigned long )(ring->element_size * idx);
  memcpy(element, (void const *)ring_elt, (size_t )ring->element_size);
  header->cons = header->cons + (uint32_t volatile )1;
  spin_unlock_irqrestore(& ring->lock, flags);
  return (1);
}
}
int qxl_push_command_ring_release(struct qxl_device *qdev , struct qxl_release *release ,
                                  uint32_t type , bool interruptible )
{
  struct qxl_command cmd ;
  struct qxl_bo_list *entry ;
  struct list_head const *__mptr ;
  struct ttm_buffer_object const *__mptr___0 ;
  int tmp ;
  {
  __mptr = (struct list_head const *)release->bos.next;
  entry = (struct qxl_bo_list *)__mptr;
  cmd.type = type;
  __mptr___0 = (struct ttm_buffer_object const *)entry->tv.bo;
  cmd.data = qxl_bo_physical_address(qdev, (struct qxl_bo *)__mptr___0 + 0xffffffffffffffa8UL,
                                     (unsigned long )release->release_offset);
  tmp = qxl_ring_push(qdev->command_ring, (void const *)(& cmd), (int )interruptible);
  return (tmp);
}
}
int qxl_push_cursor_ring_release(struct qxl_device *qdev , struct qxl_release *release ,
                                 uint32_t type , bool interruptible )
{
  struct qxl_command cmd ;
  struct qxl_bo_list *entry ;
  struct list_head const *__mptr ;
  struct ttm_buffer_object const *__mptr___0 ;
  int tmp ;
  {
  __mptr = (struct list_head const *)release->bos.next;
  entry = (struct qxl_bo_list *)__mptr;
  cmd.type = type;
  __mptr___0 = (struct ttm_buffer_object const *)entry->tv.bo;
  cmd.data = qxl_bo_physical_address(qdev, (struct qxl_bo *)__mptr___0 + 0xffffffffffffffa8UL,
                                     (unsigned long )release->release_offset);
  tmp = qxl_ring_push(qdev->cursor_ring, (void const *)(& cmd), (int )interruptible);
  return (tmp);
}
}
bool qxl_queue_garbage_collect(struct qxl_device *qdev , bool flush )
{
  int tmp ;
  {
  tmp = qxl_check_idle(qdev->release_ring);
  if (tmp == 0) {
    queue_work___0(qdev->gc_queue, & qdev->gc_work);
    if ((int )flush) {
      ldv_flush_work_361(& qdev->gc_work);
    } else {
    }
    return (1);
  } else {
  }
  return (0);
}
}
int qxl_garbage_collect(struct qxl_device *qdev )
{
  struct qxl_release *release ;
  uint64_t id ;
  uint64_t next_id ;
  int i ;
  union qxl_release_info *info ;
  bool tmp ;
  {
  i = 0;
  goto ldv_41241;
  ldv_41240: ;
  if (qxl_log_level > 0) {
    qxl_io_log(qdev, "popped %lld\n", id);
  } else {
  }
  goto ldv_41239;
  ldv_41238:
  release = qxl_release_from_id_locked(qdev, id);
  if ((unsigned long )release == (unsigned long )((struct qxl_release *)0)) {
    goto ldv_41232;
  } else {
  }
  info = qxl_release_map(qdev, release);
  next_id = info->next;
  qxl_release_unmap(qdev, release, info);
  if (qxl_log_level > 0) {
    qxl_io_log(qdev, "popped %lld, next %lld\n", id, next_id);
  } else {
  }
  switch (release->type) {
  case 0: ;
  case 1: ;
  case 2: ;
  goto ldv_41236;
  default:
  drm_err("unexpected release type\n");
  goto ldv_41236;
  }
  ldv_41236:
  id = next_id;
  qxl_release_free(qdev, release);
  i = i + 1;
  ldv_41239: ;
  if (id != 0ULL) {
    goto ldv_41238;
  } else {
  }
  ldv_41232: ;
  ldv_41241:
  tmp = qxl_ring_pop(qdev->release_ring, (void *)(& id));
  if ((int )tmp) {
    goto ldv_41240;
  } else {
  }
  if (qxl_log_level > 0) {
    qxl_io_log(qdev, "%s: %d\n", "qxl_garbage_collect", i);
  } else {
  }
  return (i);
}
}
int qxl_alloc_bo_reserved(struct qxl_device *qdev , struct qxl_release *release ,
                          unsigned long size , struct qxl_bo **_bo )
{
  struct qxl_bo *bo ;
  int ret ;
  {
  ret = qxl_bo_create(qdev, size, 0, 0, 1U, (struct qxl_surface *)0, & bo);
  if (ret != 0) {
    drm_err("failed to allocate VRAM BO\n");
    return (ret);
  } else {
  }
  ret = qxl_release_list_add(release, bo);
  if (ret != 0) {
    goto out_unref;
  } else {
  }
  *_bo = bo;
  return (0);
  out_unref:
  qxl_bo_unref(& bo);
  return (ret);
}
}
static int wait_for_io_cmd_user(struct qxl_device *qdev , uint8_t val , long port ,
                                bool intr )
{
  int irq_num ;
  long addr ;
  int ret ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  bool __cond ;
  int tmp___0 ;
  bool __cond___0 ;
  int tmp___1 ;
  long __ret___1 ;
  wait_queue_t __wait___0 ;
  long __ret___2 ;
  long __int___0 ;
  long tmp___2 ;
  bool __cond___1 ;
  int tmp___3 ;
  bool __cond___2 ;
  int tmp___4 ;
  long __ret___3 ;
  wait_queue_t __wait___1 ;
  long __ret___4 ;
  long __int___1 ;
  long tmp___5 ;
  bool __cond___3 ;
  int tmp___6 ;
  bool __cond___4 ;
  int tmp___7 ;
  long __ret___5 ;
  wait_queue_t __wait___2 ;
  long __ret___6 ;
  long __int___2 ;
  long tmp___8 ;
  bool __cond___5 ;
  int tmp___9 ;
  bool __cond___6 ;
  int tmp___10 ;
  {
  addr = (long )qdev->io_base + port;
  ldv_mutex_lock_362(& qdev->async_io_mutex);
  irq_num = atomic_read((atomic_t const *)(& qdev->irq_received_io_cmd));
  if (qdev->last_sent_io_cmd > (unsigned int )irq_num) {
    if ((int )intr) {
      __ret = 1250L;
      __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_cmd.c",
                    292, 0);
      tmp___1 = atomic_read((atomic_t const *)(& qdev->irq_received_io_cmd));
      __cond___0 = tmp___1 > irq_num;
      if ((int )__cond___0 && __ret == 0L) {
        __ret = 1L;
      } else {
      }
      if (((int )__cond___0 || __ret == 0L) == 0) {
        __ret___0 = 1250L;
        INIT_LIST_HEAD(& __wait.task_list);
        __wait.flags = 0U;
        ldv_41272:
        tmp = prepare_to_wait_event(& qdev->io_cmd_event, & __wait, 1);
        __int = tmp;
        tmp___0 = atomic_read((atomic_t const *)(& qdev->irq_received_io_cmd));
        __cond = tmp___0 > irq_num;
        if ((int )__cond && __ret___0 == 0L) {
          __ret___0 = 1L;
        } else {
        }
        if (((int )__cond || __ret___0 == 0L) != 0) {
          goto ldv_41271;
        } else {
        }
        if (__int != 0L) {
          __ret___0 = __int;
          goto ldv_41271;
        } else {
        }
        __ret___0 = schedule_timeout(__ret___0);
        goto ldv_41272;
        ldv_41271:
        finish_wait(& qdev->io_cmd_event, & __wait);
        __ret = __ret___0;
      } else {
      }
      ret = (int )__ret;
    } else {
      __ret___1 = 1250L;
      __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_cmd.c",
                    295, 0);
      tmp___4 = atomic_read((atomic_t const *)(& qdev->irq_received_io_cmd));
      __cond___2 = tmp___4 > irq_num;
      if ((int )__cond___2 && __ret___1 == 0L) {
        __ret___1 = 1L;
      } else {
      }
      if (((int )__cond___2 || __ret___1 == 0L) == 0) {
        __ret___2 = 1250L;
        INIT_LIST_HEAD(& __wait___0.task_list);
        __wait___0.flags = 0U;
        ldv_41285:
        tmp___2 = prepare_to_wait_event(& qdev->io_cmd_event, & __wait___0, 2);
        __int___0 = tmp___2;
        tmp___3 = atomic_read((atomic_t const *)(& qdev->irq_received_io_cmd));
        __cond___1 = tmp___3 > irq_num;
        if ((int )__cond___1 && __ret___2 == 0L) {
          __ret___2 = 1L;
        } else {
        }
        if (((int )__cond___1 || __ret___2 == 0L) != 0) {
          goto ldv_41284;
        } else {
        }
        __ret___2 = schedule_timeout(__ret___2);
        goto ldv_41285;
        ldv_41284:
        finish_wait(& qdev->io_cmd_event, & __wait___0);
        __ret___1 = __ret___2;
      } else {
      }
      ret = (int )__ret___1;
    }
    if (ret <= 0) {
      goto out;
    } else {
    }
    irq_num = atomic_read((atomic_t const *)(& qdev->irq_received_io_cmd));
  } else {
  }
  outb((int )val, (int )addr);
  qdev->last_sent_io_cmd = (unsigned int )(irq_num + 1);
  if ((int )intr) {
    __ret___3 = 1250L;
    __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_cmd.c",
                  305, 0);
    tmp___7 = atomic_read((atomic_t const *)(& qdev->irq_received_io_cmd));
    __cond___4 = tmp___7 > irq_num;
    if ((int )__cond___4 && __ret___3 == 0L) {
      __ret___3 = 1L;
    } else {
    }
    if (((int )__cond___4 || __ret___3 == 0L) == 0) {
      __ret___4 = 1250L;
      INIT_LIST_HEAD(& __wait___1.task_list);
      __wait___1.flags = 0U;
      ldv_41299:
      tmp___5 = prepare_to_wait_event(& qdev->io_cmd_event, & __wait___1, 1);
      __int___1 = tmp___5;
      tmp___6 = atomic_read((atomic_t const *)(& qdev->irq_received_io_cmd));
      __cond___3 = tmp___6 > irq_num;
      if ((int )__cond___3 && __ret___4 == 0L) {
        __ret___4 = 1L;
      } else {
      }
      if (((int )__cond___3 || __ret___4 == 0L) != 0) {
        goto ldv_41298;
      } else {
      }
      if (__int___1 != 0L) {
        __ret___4 = __int___1;
        goto ldv_41298;
      } else {
      }
      __ret___4 = schedule_timeout(__ret___4);
      goto ldv_41299;
      ldv_41298:
      finish_wait(& qdev->io_cmd_event, & __wait___1);
      __ret___3 = __ret___4;
    } else {
    }
    ret = (int )__ret___3;
  } else {
    __ret___5 = 1250L;
    __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_cmd.c",
                  308, 0);
    tmp___10 = atomic_read((atomic_t const *)(& qdev->irq_received_io_cmd));
    __cond___6 = tmp___10 > irq_num;
    if ((int )__cond___6 && __ret___5 == 0L) {
      __ret___5 = 1L;
    } else {
    }
    if (((int )__cond___6 || __ret___5 == 0L) == 0) {
      __ret___6 = 1250L;
      INIT_LIST_HEAD(& __wait___2.task_list);
      __wait___2.flags = 0U;
      ldv_41312:
      tmp___8 = prepare_to_wait_event(& qdev->io_cmd_event, & __wait___2, 2);
      __int___2 = tmp___8;
      tmp___9 = atomic_read((atomic_t const *)(& qdev->irq_received_io_cmd));
      __cond___5 = tmp___9 > irq_num;
      if ((int )__cond___5 && __ret___6 == 0L) {
        __ret___6 = 1L;
      } else {
      }
      if (((int )__cond___5 || __ret___6 == 0L) != 0) {
        goto ldv_41311;
      } else {
      }
      __ret___6 = schedule_timeout(__ret___6);
      goto ldv_41312;
      ldv_41311:
      finish_wait(& qdev->io_cmd_event, & __wait___2);
      __ret___5 = __ret___6;
    } else {
    }
    ret = (int )__ret___5;
  }
  out: ;
  if (ret > 0) {
    ret = 0;
  } else {
  }
  ldv_mutex_unlock_363(& qdev->async_io_mutex);
  return (ret);
}
}
static void wait_for_io_cmd(struct qxl_device *qdev , uint8_t val , long port )
{
  int ret ;
  {
  restart:
  ret = wait_for_io_cmd_user(qdev, (int )val, port, 0);
  if (ret == -512) {
    goto restart;
  } else {
  }
  return;
}
}
int qxl_io_update_area(struct qxl_device *qdev , struct qxl_bo *surf , struct qxl_rect const *area )
{
  int surface_id ;
  uint32_t surface_width ;
  uint32_t surface_height ;
  int ret ;
  {
  if (! surf->hw_surf_alloc) {
    drm_err("got io update area with no hw surface\n");
  } else {
  }
  if ((int )surf->is_primary) {
    surface_id = 0;
  } else {
    surface_id = (int )surf->surface_id;
  }
  surface_width = surf->surf.width;
  surface_height = surf->surf.height;
  if ((((int )area->left < 0 || (int )area->top < 0) || (uint32_t )area->right > surface_width) || (uint32_t )area->bottom > surface_height) {
    qxl_io_log(qdev, "%s: not doing area update for %d, (%d,%d,%d,%d) (%d,%d)\n",
               "qxl_io_update_area", surface_id, area->left, area->top, area->right,
               area->bottom, surface_width, surface_height);
    return (-22);
  } else {
  }
  ldv_mutex_lock_364(& qdev->update_area_mutex);
  (qdev->ram_header)->update_area = *area;
  (qdev->ram_header)->update_surface = (uint32_t )surface_id;
  ret = wait_for_io_cmd_user(qdev, 0, 16L, 1);
  ldv_mutex_unlock_365(& qdev->update_area_mutex);
  return (ret);
}
}
void qxl_io_notify_oom(struct qxl_device *qdev )
{
  {
  outb(0, qdev->io_base + 4);
  return;
}
}
void qxl_io_flush_release(struct qxl_device *qdev )
{
  {
  outb(0, qdev->io_base + 23);
  return;
}
}
void qxl_io_flush_surfaces(struct qxl_device *qdev )
{
  {
  wait_for_io_cmd(qdev, 0, 22L);
  return;
}
}
void qxl_io_destroy_primary(struct qxl_device *qdev )
{
  {
  wait_for_io_cmd(qdev, 0, 19L);
  return;
}
}
void qxl_io_create_primary(struct qxl_device *qdev , unsigned int offset , struct qxl_bo *bo )
{
  struct qxl_surface_create *create ;
  {
  if (qxl_log_level > 0) {
    qxl_io_log(qdev, "%s: qdev %p, ram_header %p\n", "qxl_io_create_primary", qdev,
               qdev->ram_header);
  } else {
  }
  create = & (qdev->ram_header)->create_surface;
  create->format = bo->surf.format;
  create->width = bo->surf.width;
  create->height = bo->surf.height;
  create->stride = bo->surf.stride;
  create->mem = qxl_bo_physical_address(qdev, bo, (unsigned long )offset);
  if (qxl_log_level > 0) {
    qxl_io_log(qdev, "%s: mem = %llx, from %p\n", "qxl_io_create_primary", create->mem,
               bo->kptr);
  } else {
  }
  create->flags = 1U;
  create->type = 0U;
  wait_for_io_cmd(qdev, 0, 18L);
  return;
}
}
void qxl_io_memslot_add(struct qxl_device *qdev , uint8_t id )
{
  {
  if (qxl_log_level > 0) {
    qxl_io_log(qdev, "qxl_memslot_add %d\n", (int )id);
  } else {
  }
  wait_for_io_cmd(qdev, (int )id, 17L);
  return;
}
}
void qxl_io_log(struct qxl_device *qdev , char const *fmt , ...)
{
  va_list args ;
  {
  ldv__builtin_va_start((va_list *)(& args));
  vsnprintf((char *)(& (qdev->ram_header)->log_buf), 4096UL, fmt, (va_list *)(& args));
  ldv__builtin_va_end((va_list *)(& args));
  outb(0, qdev->io_base + 7);
  return;
}
}
void qxl_io_reset(struct qxl_device *qdev )
{
  {
  outb(0, qdev->io_base + 5);
  return;
}
}
void qxl_io_monitors_config(struct qxl_device *qdev )
{
  {
  qxl_io_log(qdev, "%s: %d [%dx%d+%d+%d]\n", "qxl_io_monitors_config", (unsigned long )qdev->monitors_config != (unsigned long )((struct qxl_monitors_config *)0) ? (int )(qdev->monitors_config)->count : -1,
             (unsigned long )qdev->monitors_config != (unsigned long )((struct qxl_monitors_config *)0) && (unsigned int )(qdev->monitors_config)->count != 0U ? (qdev->monitors_config)->heads[0].width : 4294967295U,
             (unsigned long )qdev->monitors_config != (unsigned long )((struct qxl_monitors_config *)0) && (unsigned int )(qdev->monitors_config)->count != 0U ? (qdev->monitors_config)->heads[0].height : 4294967295U,
             (unsigned long )qdev->monitors_config != (unsigned long )((struct qxl_monitors_config *)0) && (unsigned int )(qdev->monitors_config)->count != 0U ? (qdev->monitors_config)->heads[0].x : 4294967295U,
             (unsigned long )qdev->monitors_config != (unsigned long )((struct qxl_monitors_config *)0) && (unsigned int )(qdev->monitors_config)->count != 0U ? (qdev->monitors_config)->heads[0].y : 4294967295U);
  wait_for_io_cmd(qdev, 0, 24L);
  return;
}
}
int qxl_surface_id_alloc(struct qxl_device *qdev , struct qxl_bo *surf )
{
  uint32_t handle ;
  int idr_ret ;
  int count ;
  {
  count = 0;
  again:
  idr_preload(32U);
  spin_lock(& qdev->surf_id_idr_lock);
  idr_ret = idr_alloc(& qdev->surf_id_idr, (void *)0, 1, 0, 0U);
  spin_unlock(& qdev->surf_id_idr_lock);
  idr_preload_end();
  if (idr_ret < 0) {
    return (idr_ret);
  } else {
  }
  handle = (uint32_t )idr_ret;
  if ((qdev->rom)->n_surfaces <= handle) {
    count = count + 1;
    spin_lock(& qdev->surf_id_idr_lock);
    idr_remove(& qdev->surf_id_idr, (int )handle);
    spin_unlock(& qdev->surf_id_idr_lock);
    qxl_reap_surface_id(qdev, 2);
    goto again;
  } else {
  }
  surf->surface_id = handle;
  spin_lock(& qdev->surf_id_idr_lock);
  qdev->last_alloced_surf_id = (int )handle;
  spin_unlock(& qdev->surf_id_idr_lock);
  return (0);
}
}
void qxl_surface_id_dealloc(struct qxl_device *qdev , uint32_t surface_id )
{
  {
  spin_lock(& qdev->surf_id_idr_lock);
  idr_remove(& qdev->surf_id_idr, (int )surface_id);
  spin_unlock(& qdev->surf_id_idr_lock);
  return;
}
}
int qxl_hw_surface_alloc(struct qxl_device *qdev , struct qxl_bo *surf , struct ttm_mem_reg *new_mem )
{
  struct qxl_surface_cmd *cmd ;
  struct qxl_release *release ;
  int ret ;
  union qxl_release_info *tmp ;
  int slot_id ;
  struct qxl_memslot *slot ;
  {
  if ((int )surf->hw_surf_alloc) {
    return (0);
  } else {
  }
  ret = qxl_alloc_surface_release_reserved(qdev, 0, (struct qxl_release *)0, & release);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = qxl_release_reserve_list(release, 1);
  if (ret != 0) {
    return (ret);
  } else {
  }
  tmp = qxl_release_map(qdev, release);
  cmd = (struct qxl_surface_cmd *)tmp;
  cmd->type = 0U;
  cmd->flags = 1U;
  cmd->u.surface_create.format = surf->surf.format;
  cmd->u.surface_create.width = surf->surf.width;
  cmd->u.surface_create.height = surf->surf.height;
  cmd->u.surface_create.stride = surf->surf.stride;
  if ((unsigned long )new_mem != (unsigned long )((struct ttm_mem_reg *)0)) {
    slot_id = surf->type == 1 ? (int )qdev->main_mem_slot : (int )qdev->surfaces_mem_slot;
    slot = qdev->mem_slots + (unsigned long )slot_id;
    cmd->u.surface_create.data = slot->high_bits;
    cmd->u.surface_create.data = cmd->u.surface_create.data | ((unsigned long long )(new_mem->start << 12) + (surf->tbo.bdev)->man[new_mem->mem_type].gpu_offset);
  } else {
    cmd->u.surface_create.data = qxl_bo_physical_address(qdev, surf, 0UL);
  }
  cmd->surface_id = surf->surface_id;
  qxl_release_unmap(qdev, release, & cmd->release_info);
  surf->surf_create = release;
  qxl_push_command_ring_release(qdev, release, 5U, 0);
  qxl_release_fence_buffer_objects(release);
  surf->hw_surf_alloc = 1;
  spin_lock(& qdev->surf_id_idr_lock);
  idr_replace(& qdev->surf_id_idr, (void *)surf, (int )surf->surface_id);
  spin_unlock(& qdev->surf_id_idr_lock);
  return (0);
}
}
int qxl_hw_surface_dealloc(struct qxl_device *qdev , struct qxl_bo *surf )
{
  struct qxl_surface_cmd *cmd ;
  struct qxl_release *release ;
  int ret ;
  int id ;
  union qxl_release_info *tmp ;
  {
  if (! surf->hw_surf_alloc) {
    return (0);
  } else {
  }
  ret = qxl_alloc_surface_release_reserved(qdev, 1, surf->surf_create, & release);
  if (ret != 0) {
    return (ret);
  } else {
  }
  surf->surf_create = (struct qxl_release *)0;
  spin_lock(& qdev->surf_id_idr_lock);
  idr_replace(& qdev->surf_id_idr, (void *)0, (int )surf->surface_id);
  spin_unlock(& qdev->surf_id_idr_lock);
  surf->hw_surf_alloc = 0;
  id = (int )surf->surface_id;
  surf->surface_id = 0U;
  release->surface_release_id = (uint32_t )id;
  tmp = qxl_release_map(qdev, release);
  cmd = (struct qxl_surface_cmd *)tmp;
  cmd->type = 1U;
  cmd->surface_id = (uint32_t )id;
  qxl_release_unmap(qdev, release, & cmd->release_info);
  qxl_push_command_ring_release(qdev, release, 5U, 0);
  qxl_release_fence_buffer_objects(release);
  return (0);
}
}
int qxl_update_surface(struct qxl_device *qdev , struct qxl_bo *surf )
{
  struct qxl_rect rect ;
  int ret ;
  {
  rect.left = 0;
  rect.right = (int32_t )surf->surf.width;
  rect.top = 0;
  rect.bottom = (int32_t )surf->surf.height;
  retry:
  ret = qxl_io_update_area(qdev, surf, (struct qxl_rect const *)(& rect));
  if (ret == -512) {
    goto retry;
  } else {
  }
  return (ret);
}
}
static void qxl_surface_evict_locked(struct qxl_device *qdev , struct qxl_bo *surf ,
                                     bool do_update_area )
{
  {
  if ((int )do_update_area) {
    qxl_update_surface(qdev, surf);
  } else {
  }
  qxl_hw_surface_dealloc(qdev, surf);
  return;
}
}
void qxl_surface_evict(struct qxl_device *qdev , struct qxl_bo *surf , bool do_update_area )
{
  {
  ldv_mutex_lock_366(& qdev->surf_evict_mutex);
  qxl_surface_evict_locked(qdev, surf, (int )do_update_area);
  ldv_mutex_unlock_367(& qdev->surf_evict_mutex);
  return;
}
}
static int qxl_reap_surf(struct qxl_device *qdev , struct qxl_bo *surf , bool stall )
{
  int ret ;
  {
  ret = qxl_bo_reserve___1(surf, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  if ((int )stall) {
    ldv_mutex_unlock_368(& qdev->surf_evict_mutex);
  } else {
  }
  ret = ttm_bo_wait(& surf->tbo, 1, 1, (int )((bool )(! ((int )stall != 0))));
  if ((int )stall) {
    ldv_mutex_lock_369(& qdev->surf_evict_mutex);
  } else {
  }
  if (ret != 0) {
    qxl_bo_unreserve(surf);
    return (ret);
  } else {
  }
  qxl_surface_evict_locked(qdev, surf, 1);
  qxl_bo_unreserve(surf);
  return (0);
}
}
static int qxl_reap_surface_id(struct qxl_device *qdev , int max_to_reap )
{
  int num_reaped ;
  int i ;
  int ret ;
  bool stall ;
  int start ;
  void *objptr ;
  int surfid ;
  {
  num_reaped = 0;
  stall = 0;
  start = 0;
  ldv_mutex_lock_370(& qdev->surf_evict_mutex);
  again:
  spin_lock(& qdev->surf_id_idr_lock);
  start = qdev->last_alloced_surf_id + 1;
  spin_unlock(& qdev->surf_id_idr_lock);
  i = start;
  goto ldv_41435;
  ldv_41434:
  surfid = (int )((uint32_t )i % (qdev->rom)->n_surfaces);
  spin_lock(& qdev->surf_id_idr_lock);
  objptr = idr_find(& qdev->surf_id_idr, surfid);
  spin_unlock(& qdev->surf_id_idr_lock);
  if ((unsigned long )objptr == (unsigned long )((void *)0)) {
    goto ldv_41432;
  } else {
  }
  ret = qxl_reap_surf(qdev, (struct qxl_bo *)objptr, (int )stall);
  if (ret == 0) {
    num_reaped = num_reaped + 1;
  } else {
  }
  if (num_reaped >= max_to_reap) {
    goto ldv_41433;
  } else {
  }
  ldv_41432:
  i = i + 1;
  ldv_41435: ;
  if ((uint32_t )i < (qdev->rom)->n_surfaces + (uint32_t )start) {
    goto ldv_41434;
  } else {
  }
  ldv_41433: ;
  if (num_reaped == 0 && ! stall) {
    stall = 1;
    goto again;
  } else {
  }
  ldv_mutex_unlock_371(& qdev->surf_evict_mutex);
  if (num_reaped != 0) {
    usleep_range(500UL, 1000UL);
    qxl_queue_garbage_collect(qdev, 1);
  } else {
  }
  return (0);
}
}
bool ldv_queue_work_on_340(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_341(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_342(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_343(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_344(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_345(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_346(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_347(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_348(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
void ldv_mutex_unlock_349(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_350(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_351(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_352(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_353(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_354(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_fb_info(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_355(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_base_of_ww_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_356(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
int ldv_mutex_trylock_357(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_360(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
bool ldv_flush_work_361(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  bool tmp ;
  {
  tmp = flush_work(ldv_func_arg1);
  ldv_func_res = tmp;
  call_and_disable_work_2(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_362(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_async_io_mutex_of_qxl_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_363(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_async_io_mutex_of_qxl_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_364(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_area_mutex_of_qxl_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_365(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_area_mutex_of_qxl_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_366(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_surf_evict_mutex_of_qxl_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_367(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_surf_evict_mutex_of_qxl_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_368(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_surf_evict_mutex_of_qxl_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_369(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_surf_evict_mutex_of_qxl_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_370(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_surf_evict_mutex_of_qxl_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_371(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_surf_evict_mutex_of_qxl_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_415(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_424(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_413(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_416(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_417(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_420(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_421(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_427(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_423(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_412(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_414(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_418(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_419(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_422(struct mutex *ldv_func_arg1 ) ;
bool ldv_queue_work_on_407(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_409(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_408(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_411(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_410(struct workqueue_struct *ldv_func_arg1 ) ;
int qxl_image_init(struct qxl_device *qdev , struct qxl_release *release , struct qxl_drm_image *dimage ,
                   uint8_t const *data , int x , int y , int width , int height ,
                   int depth , int stride ) ;
int qxl_image_alloc_objects(struct qxl_device *qdev , struct qxl_release *release ,
                            struct qxl_drm_image **image_ptr , int height , int stride ) ;
void qxl_image_free_objects(struct qxl_device *qdev , struct qxl_drm_image *dimage ) ;
static int qxl_allocate_chunk(struct qxl_device *qdev , struct qxl_release *release ,
                              struct qxl_drm_image *image , unsigned int chunk_size )
{
  struct qxl_drm_chunk *chunk ;
  int ret ;
  void *tmp ;
  {
  tmp = kmalloc(24UL, 208U);
  chunk = (struct qxl_drm_chunk *)tmp;
  if ((unsigned long )chunk == (unsigned long )((struct qxl_drm_chunk *)0)) {
    return (-12);
  } else {
  }
  ret = qxl_alloc_bo_reserved(qdev, release, (unsigned long )chunk_size, & chunk->bo);
  if (ret != 0) {
    kfree((void const *)chunk);
    return (ret);
  } else {
  }
  list_add_tail(& chunk->head, & image->chunk_list);
  return (0);
}
}
int qxl_image_alloc_objects(struct qxl_device *qdev , struct qxl_release *release ,
                            struct qxl_drm_image **image_ptr , int height , int stride )
{
  struct qxl_drm_image *image ;
  int ret ;
  void *tmp ;
  {
  tmp = kmalloc(24UL, 208U);
  image = (struct qxl_drm_image *)tmp;
  if ((unsigned long )image == (unsigned long )((struct qxl_drm_image *)0)) {
    return (-12);
  } else {
  }
  INIT_LIST_HEAD(& image->chunk_list);
  ret = qxl_alloc_bo_reserved(qdev, release, 48UL, & image->bo);
  if (ret != 0) {
    kfree((void const *)image);
    return (ret);
  } else {
  }
  ret = qxl_allocate_chunk(qdev, release, image, (unsigned int )(stride * height) + 20U);
  if (ret != 0) {
    qxl_bo_unref(& image->bo);
    kfree((void const *)image);
    return (ret);
  } else {
  }
  *image_ptr = image;
  return (0);
}
}
void qxl_image_free_objects(struct qxl_device *qdev , struct qxl_drm_image *dimage )
{
  struct qxl_drm_chunk *chunk ;
  struct qxl_drm_chunk *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)dimage->chunk_list.next;
  chunk = (struct qxl_drm_chunk *)__mptr;
  __mptr___0 = (struct list_head const *)chunk->head.next;
  tmp = (struct qxl_drm_chunk *)__mptr___0;
  goto ldv_41089;
  ldv_41088:
  qxl_bo_unref(& chunk->bo);
  kfree((void const *)chunk);
  chunk = tmp;
  __mptr___1 = (struct list_head const *)tmp->head.next;
  tmp = (struct qxl_drm_chunk *)__mptr___1;
  ldv_41089: ;
  if ((unsigned long )(& chunk->head) != (unsigned long )(& dimage->chunk_list)) {
    goto ldv_41088;
  } else {
  }
  qxl_bo_unref(& dimage->bo);
  kfree((void const *)dimage);
  return;
}
}
static int qxl_image_init_helper(struct qxl_device *qdev , struct qxl_release *release ,
                                 struct qxl_drm_image *dimage , uint8_t const *data ,
                                 int width , int height , int depth , unsigned int hash ,
                                 int stride )
{
  struct qxl_drm_chunk *drv_chunk ;
  struct qxl_image *image ;
  struct qxl_data_chunk *chunk ;
  int i ;
  int chunk_stride ;
  int linesize ;
  struct qxl_bo *chunk_bo ;
  struct qxl_bo *image_bo ;
  void *ptr ;
  struct list_head const *__mptr ;
  void *k_data ;
  void *i_data ;
  int remain ;
  int page ;
  int size ;
  int _min1 ;
  int _min2 ;
  unsigned int page_base ;
  unsigned int page_offset___0 ;
  unsigned int out_offset ;
  int _min1___0 ;
  int _min2___0 ;
  {
  linesize = (width * depth) / 8;
  __mptr = (struct list_head const *)dimage->chunk_list.next;
  drv_chunk = (struct qxl_drm_chunk *)__mptr;
  chunk_bo = drv_chunk->bo;
  chunk_stride = stride;
  ptr = qxl_bo_kmap_atomic_page(qdev, chunk_bo, 0);
  chunk = (struct qxl_data_chunk *)ptr;
  chunk->data_size = (uint32_t )(height * chunk_stride);
  chunk->prev_chunk = 0ULL;
  chunk->next_chunk = 0ULL;
  qxl_bo_kunmap_atomic_page(qdev, chunk_bo, ptr);
  if (stride == linesize && chunk_stride == stride) {
    remain = linesize * height;
    page = 0;
    i_data = (void *)data;
    goto ldv_41122;
    ldv_41121:
    ptr = qxl_bo_kmap_atomic_page(qdev, chunk_bo, page << 12);
    if (page == 0) {
      chunk = (struct qxl_data_chunk *)ptr;
      k_data = (void *)(& chunk->data);
      size = 4076;
    } else {
      k_data = ptr;
      size = 4096;
    }
    _min1 = size;
    _min2 = remain;
    size = _min1 < _min2 ? _min1 : _min2;
    memcpy(k_data, (void const *)i_data, (size_t )size);
    qxl_bo_kunmap_atomic_page(qdev, chunk_bo, ptr);
    i_data = i_data + (unsigned long )size;
    remain = remain - size;
    page = page + 1;
    ldv_41122: ;
    if (remain > 0) {
      goto ldv_41121;
    } else {
    }
  } else {
    i = 0;
    goto ldv_41134;
    ldv_41133:
    i_data = (void *)data + (unsigned long )(i * stride);
    remain = linesize;
    out_offset = (unsigned int )(i * chunk_stride) + 20U;
    goto ldv_41131;
    ldv_41130:
    page_base = out_offset & 4294963200U;
    page_offset___0 = out_offset & 4095U;
    _min1___0 = (int )(4096U - page_offset___0);
    _min2___0 = remain;
    size = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
    ptr = qxl_bo_kmap_atomic_page(qdev, chunk_bo, (int )page_base);
    k_data = ptr + (unsigned long )page_offset___0;
    memcpy(k_data, (void const *)i_data, (size_t )size);
    qxl_bo_kunmap_atomic_page(qdev, chunk_bo, ptr);
    remain = remain - size;
    i_data = i_data + (unsigned long )size;
    out_offset = out_offset + (unsigned int )size;
    ldv_41131: ;
    if (remain > 0) {
      goto ldv_41130;
    } else {
    }
    i = i + 1;
    ldv_41134: ;
    if (i < height) {
      goto ldv_41133;
    } else {
    }
  }
  qxl_bo_kunmap(chunk_bo);
  image_bo = dimage->bo;
  ptr = qxl_bo_kmap_atomic_page(qdev, image_bo, 0);
  image = (struct qxl_image *)ptr;
  image->descriptor.id = 0ULL;
  image->descriptor.type = 0U;
  image->descriptor.flags = 0U;
  image->descriptor.width = (uint32_t )width;
  image->descriptor.height = (uint32_t )height;
  switch (depth) {
  case 1:
  image->u.bitmap.format = 2U;
  goto ldv_41137;
  case 24:
  image->u.bitmap.format = 7U;
  goto ldv_41137;
  case 32:
  image->u.bitmap.format = 8U;
  goto ldv_41137;
  default:
  drm_err("unsupported image bit depth\n");
  return (-22);
  }
  ldv_41137:
  image->u.bitmap.flags = 4U;
  image->u.bitmap.x = (uint32_t )width;
  image->u.bitmap.y = (uint32_t )height;
  image->u.bitmap.stride = (uint32_t )chunk_stride;
  image->u.bitmap.palette = 0ULL;
  image->u.bitmap.data = qxl_bo_physical_address(qdev, chunk_bo, 0UL);
  qxl_bo_kunmap_atomic_page(qdev, image_bo, ptr);
  return (0);
}
}
int qxl_image_init(struct qxl_device *qdev , struct qxl_release *release , struct qxl_drm_image *dimage ,
                   uint8_t const *data , int x , int y , int width , int height ,
                   int depth , int stride )
{
  int tmp ;
  {
  data = data + (unsigned long )(y * stride + (depth / 8) * x);
  tmp = qxl_image_init_helper(qdev, release, dimage, data, width, height, depth, 0U,
                              stride);
  return (tmp);
}
}
bool ldv_queue_work_on_407(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_408(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_409(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_410(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_411(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_412(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_413(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_414(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_415(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
void ldv_mutex_unlock_416(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_417(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_418(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_419(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_420(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_421(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_fb_info(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_422(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_base_of_ww_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_423(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
int ldv_mutex_trylock_424(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_427(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_460(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_469(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_458(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_461(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_462(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_465(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_466(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_472(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_468(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_457(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_459(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_463(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_464(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_467(struct mutex *ldv_func_arg1 ) ;
bool ldv_queue_work_on_452(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_454(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_453(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_456(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_455(struct workqueue_struct *ldv_func_arg1 ) ;
void qxl_draw_fill(struct qxl_draw_fill *qxl_draw_fill_rec ) ;
void qxl_draw_copyarea(struct qxl_device *qdev , u32 width , u32 height , u32 sx ,
                       u32 sy , u32 dx , u32 dy ) ;
static int alloc_clips(struct qxl_device *qdev , struct qxl_release *release , unsigned int num_clips ,
                       struct qxl_bo **clips_bo )
{
  int size ;
  int tmp ;
  {
  size = (int )(num_clips * 16U + 24U);
  tmp = qxl_alloc_bo_reserved(qdev, release, (unsigned long )size, clips_bo);
  return (tmp);
}
}
static struct qxl_rect *drawable_set_clipping(struct qxl_device *qdev , struct qxl_drawable *drawable ,
                                              unsigned int num_clips , struct qxl_bo *clips_bo )
{
  struct qxl_clip_rects *dev_clips ;
  int ret ;
  {
  ret = qxl_bo_kmap(clips_bo, (void **)(& dev_clips));
  if (ret != 0) {
    return ((struct qxl_rect *)0);
  } else {
  }
  dev_clips->num_rects = num_clips;
  dev_clips->chunk.next_chunk = 0ULL;
  dev_clips->chunk.prev_chunk = 0ULL;
  dev_clips->chunk.data_size = num_clips * 16U;
  return ((struct qxl_rect *)(& dev_clips->chunk.data));
}
}
static int alloc_drawable(struct qxl_device *qdev , struct qxl_release **release )
{
  int ret ;
  {
  ret = qxl_alloc_release_reserved(qdev, 191UL, 0, release, (struct qxl_bo **)0);
  return (ret);
}
}
static void free_drawable(struct qxl_device *qdev , struct qxl_release *release )
{
  {
  qxl_release_free(qdev, release);
  return;
}
}
static int make_drawable(struct qxl_device *qdev , int surface , uint8_t type , struct qxl_rect const *rect ,
                         struct qxl_release *release )
{
  struct qxl_drawable *drawable ;
  int i ;
  union qxl_release_info *tmp ;
  {
  tmp = qxl_release_map(qdev, release);
  drawable = (struct qxl_drawable *)tmp;
  if ((unsigned long )drawable == (unsigned long )((struct qxl_drawable *)0)) {
    return (-12);
  } else {
  }
  drawable->type = type;
  drawable->surface_id = (uint32_t )surface;
  drawable->effect = 1U;
  drawable->self_bitmap = 0U;
  drawable->self_bitmap_area.top = 0;
  drawable->self_bitmap_area.left = 0;
  drawable->self_bitmap_area.bottom = 0;
  drawable->self_bitmap_area.right = 0;
  drawable->clip.type = 0U;
  i = 0;
  goto ldv_41093;
  ldv_41092:
  drawable->surfaces_dest[i] = -1;
  i = i + 1;
  ldv_41093: ;
  if (i <= 2) {
    goto ldv_41092;
  } else {
  }
  if ((unsigned long )rect != (unsigned long )((struct qxl_rect const *)0)) {
    drawable->bbox = *rect;
  } else {
  }
  drawable->mm_time = (qdev->rom)->mm_clock;
  qxl_release_unmap(qdev, release, & drawable->release_info);
  return (0);
}
}
static int alloc_palette_object(struct qxl_device *qdev , struct qxl_release *release ,
                                struct qxl_bo **palette_bo )
{
  int tmp ;
  {
  tmp = qxl_alloc_bo_reserved(qdev, release, 18UL, palette_bo);
  return (tmp);
}
}
static int qxl_palette_create_1bit(struct qxl_bo *palette_bo , struct qxl_release *release ,
                                   struct qxl_fb_image const *qxl_fb_image )
{
  struct fb_image const *fb_image ;
  uint32_t visual ;
  uint32_t const *pseudo_palette ;
  struct qxl_palette *pal ;
  int ret ;
  uint32_t fgcolor ;
  uint32_t bgcolor ;
  uint64_t unique ;
  uint64_t tmp ;
  {
  fb_image = & qxl_fb_image->fb_image;
  visual = qxl_fb_image->visual;
  pseudo_palette = (uint32_t const *)(& qxl_fb_image->pseudo_palette);
  ret = qxl_bo_kmap(palette_bo, (void **)(& pal));
  pal->num_ents = 2U;
  tmp = unique;
  unique = unique + 1ULL;
  pal->unique = tmp;
  if (visual == 2U || visual == 4U) {
    fgcolor = *(pseudo_palette + (unsigned long )fb_image->fg_color);
    bgcolor = *(pseudo_palette + (unsigned long )fb_image->bg_color);
  } else {
    fgcolor = fb_image->fg_color;
    bgcolor = fb_image->bg_color;
  }
  pal->ents[0] = bgcolor;
  pal->ents[1] = fgcolor;
  qxl_bo_kunmap(palette_bo);
  return (0);
}
}
void qxl_draw_opaque_fb(struct qxl_fb_image const *qxl_fb_image , int stride )
{
  struct qxl_device *qdev ;
  struct qxl_drawable *drawable ;
  struct qxl_rect rect ;
  struct fb_image const *fb_image ;
  int x ;
  int y ;
  int width ;
  int height ;
  char const *src ;
  int depth ;
  struct qxl_release *release ;
  struct qxl_image *image ;
  int ret ;
  struct qxl_drm_image *dimage ;
  struct qxl_bo *palette_bo ;
  void *ptr ;
  union qxl_release_info *tmp ;
  {
  qdev = qxl_fb_image->qdev;
  fb_image = & qxl_fb_image->fb_image;
  x = (int )fb_image->dx;
  y = (int )fb_image->dy;
  width = (int )fb_image->width;
  height = (int )fb_image->height;
  src = fb_image->data;
  depth = (int )fb_image->depth;
  palette_bo = (struct qxl_bo *)0;
  if (stride == 0) {
    stride = (depth * width) / 8;
  } else {
  }
  ret = alloc_drawable(qdev, & release);
  if (ret != 0) {
    return;
  } else {
  }
  ret = qxl_image_alloc_objects(qdev, release, & dimage, height, stride);
  if (ret != 0) {
    goto out_free_drawable;
  } else {
  }
  if (depth == 1) {
    ret = alloc_palette_object(qdev, release, & palette_bo);
    if (ret != 0) {
      goto out_free_image;
    } else {
    }
  } else {
  }
  ret = qxl_release_reserve_list(release, 1);
  if (ret != 0) {
    goto out_free_palette;
  } else {
  }
  rect.left = x;
  rect.right = x + width;
  rect.top = y;
  rect.bottom = y + height;
  ret = make_drawable(qdev, 0, 3, (struct qxl_rect const *)(& rect), release);
  if (ret != 0) {
    qxl_release_backoff_reserve_list(release);
    goto out_free_palette;
  } else {
  }
  ret = qxl_image_init(qdev, release, dimage, (uint8_t const *)src, 0, 0, width,
                       height, depth, stride);
  if (ret != 0) {
    qxl_release_backoff_reserve_list(release);
    qxl_release_free(qdev, release);
    return;
  } else {
  }
  if (depth == 1) {
    ret = qxl_palette_create_1bit(palette_bo, release, qxl_fb_image);
    ptr = qxl_bo_kmap_atomic_page(qdev, dimage->bo, 0);
    image = (struct qxl_image *)ptr;
    image->u.bitmap.palette = qxl_bo_physical_address(qdev, palette_bo, 0UL);
    qxl_bo_kunmap_atomic_page(qdev, dimage->bo, ptr);
  } else {
  }
  tmp = qxl_release_map(qdev, release);
  drawable = (struct qxl_drawable *)tmp;
  drawable->u.copy.src_area.top = 0;
  drawable->u.copy.src_area.bottom = height;
  drawable->u.copy.src_area.left = 0;
  drawable->u.copy.src_area.right = width;
  drawable->u.copy.rop_descriptor = 8U;
  drawable->u.copy.scale_mode = 0U;
  drawable->u.copy.mask.flags = 0U;
  drawable->u.copy.mask.pos.x = 0;
  drawable->u.copy.mask.pos.y = 0;
  drawable->u.copy.mask.bitmap = 0ULL;
  drawable->u.copy.src_bitmap = qxl_bo_physical_address(qdev, dimage->bo, 0UL);
  qxl_release_unmap(qdev, release, & drawable->release_info);
  qxl_push_command_ring_release(qdev, release, 1U, 0);
  qxl_release_fence_buffer_objects(release);
  out_free_palette: ;
  if ((unsigned long )palette_bo != (unsigned long )((struct qxl_bo *)0)) {
    qxl_bo_unref(& palette_bo);
  } else {
  }
  out_free_image:
  qxl_image_free_objects(qdev, dimage);
  out_free_drawable: ;
  if (ret != 0) {
    free_drawable(qdev, release);
  } else {
  }
  return;
}
}
void qxl_draw_dirty_fb(struct qxl_device *qdev , struct qxl_framebuffer *qxl_fb ,
                       struct qxl_bo *bo , unsigned int flags , unsigned int color ,
                       struct drm_clip_rect *clips , unsigned int num_clips , int inc )
{
  struct drm_clip_rect *clips_ptr ;
  int i ;
  int left ;
  int right ;
  int top ;
  int bottom ;
  int width ;
  int height ;
  struct qxl_drawable *drawable ;
  struct qxl_rect drawable_rect ;
  struct qxl_rect *rects ;
  int stride ;
  int depth ;
  uint8_t *surface_base ;
  struct qxl_release *release ;
  struct qxl_bo *clips_bo ;
  struct qxl_drm_image *dimage ;
  int ret ;
  int __min1 ;
  int __min2 ;
  int __max1 ;
  int __max2 ;
  int __min1___0 ;
  int __min2___0 ;
  int __max1___0 ;
  int __max2___0 ;
  union qxl_release_info *tmp ;
  {
  stride = (int )qxl_fb->base.pitches[0];
  depth = qxl_fb->base.bits_per_pixel;
  ret = alloc_drawable(qdev, & release);
  if (ret != 0) {
    return;
  } else {
  }
  left = (int )clips->x1;
  right = (int )clips->x2;
  top = (int )clips->y1;
  bottom = (int )clips->y2;
  i = 1;
  clips_ptr = clips + (unsigned long )inc;
  goto ldv_41177;
  ldv_41176:
  __min1 = left;
  __min2 = (int )clips_ptr->x1;
  left = __min1 < __min2 ? __min1 : __min2;
  __max1 = right;
  __max2 = (int )clips_ptr->x2;
  right = __max1 > __max2 ? __max1 : __max2;
  __min1___0 = top;
  __min2___0 = (int )clips_ptr->y1;
  top = __min1___0 < __min2___0 ? __min1___0 : __min2___0;
  __max1___0 = bottom;
  __max2___0 = (int )clips_ptr->y2;
  bottom = __max1___0 > __max2___0 ? __max1___0 : __max2___0;
  i = i + 1;
  clips_ptr = clips_ptr + (unsigned long )inc;
  ldv_41177: ;
  if ((unsigned int )i < num_clips) {
    goto ldv_41176;
  } else {
  }
  width = right - left;
  height = bottom - top;
  ret = alloc_clips(qdev, release, num_clips, & clips_bo);
  if (ret != 0) {
    goto out_free_drawable;
  } else {
  }
  ret = qxl_image_alloc_objects(qdev, release, & dimage, height, stride);
  if (ret != 0) {
    goto out_free_clips;
  } else {
  }
  ret = qxl_release_reserve_list(release, 1);
  if (ret != 0) {
    goto out_free_image;
  } else {
  }
  drawable_rect.left = left;
  drawable_rect.right = right;
  drawable_rect.top = top;
  drawable_rect.bottom = bottom;
  ret = make_drawable(qdev, 0, 3, (struct qxl_rect const *)(& drawable_rect), release);
  if (ret != 0) {
    goto out_release_backoff;
  } else {
  }
  ret = qxl_bo_kmap(bo, (void **)(& surface_base));
  if (ret != 0) {
    goto out_release_backoff;
  } else {
  }
  ret = qxl_image_init(qdev, release, dimage, (uint8_t const *)surface_base, left,
                       top, width, height, depth, stride);
  qxl_bo_kunmap(bo);
  if (ret != 0) {
    goto out_release_backoff;
  } else {
  }
  rects = drawable_set_clipping(qdev, drawable, num_clips, clips_bo);
  if ((unsigned long )rects == (unsigned long )((struct qxl_rect *)0)) {
    goto out_release_backoff;
  } else {
  }
  tmp = qxl_release_map(qdev, release);
  drawable = (struct qxl_drawable *)tmp;
  drawable->clip.type = 1U;
  drawable->clip.data = qxl_bo_physical_address(qdev, clips_bo, 0UL);
  drawable->u.copy.src_area.top = 0;
  drawable->u.copy.src_area.bottom = height;
  drawable->u.copy.src_area.left = 0;
  drawable->u.copy.src_area.right = width;
  drawable->u.copy.rop_descriptor = 8U;
  drawable->u.copy.scale_mode = 0U;
  drawable->u.copy.mask.flags = 0U;
  drawable->u.copy.mask.pos.x = 0;
  drawable->u.copy.mask.pos.y = 0;
  drawable->u.copy.mask.bitmap = 0ULL;
  drawable->u.copy.src_bitmap = qxl_bo_physical_address(qdev, dimage->bo, 0UL);
  qxl_release_unmap(qdev, release, & drawable->release_info);
  clips_ptr = clips;
  i = 0;
  goto ldv_41184;
  ldv_41183:
  (rects + (unsigned long )i)->left = (int32_t )clips_ptr->x1;
  (rects + (unsigned long )i)->right = (int32_t )clips_ptr->x2;
  (rects + (unsigned long )i)->top = (int32_t )clips_ptr->y1;
  (rects + (unsigned long )i)->bottom = (int32_t )clips_ptr->y2;
  i = i + 1;
  clips_ptr = clips_ptr + (unsigned long )inc;
  ldv_41184: ;
  if ((unsigned int )i < num_clips) {
    goto ldv_41183;
  } else {
  }
  qxl_bo_kunmap(clips_bo);
  qxl_push_command_ring_release(qdev, release, 1U, 0);
  qxl_release_fence_buffer_objects(release);
  out_release_backoff: ;
  if (ret != 0) {
    qxl_release_backoff_reserve_list(release);
  } else {
  }
  out_free_image:
  qxl_image_free_objects(qdev, dimage);
  out_free_clips:
  qxl_bo_unref(& clips_bo);
  out_free_drawable: ;
  if (ret != 0) {
    free_drawable(qdev, release);
  } else {
  }
  return;
}
}
void qxl_draw_copyarea(struct qxl_device *qdev , u32 width , u32 height , u32 sx ,
                       u32 sy , u32 dx , u32 dy )
{
  struct qxl_drawable *drawable ;
  struct qxl_rect rect ;
  struct qxl_release *release ;
  int ret ;
  union qxl_release_info *tmp ;
  {
  ret = alloc_drawable(qdev, & release);
  if (ret != 0) {
    return;
  } else {
  }
  ret = qxl_release_reserve_list(release, 1);
  if (ret != 0) {
    goto out_free_release;
  } else {
  }
  rect.left = (int32_t )dx;
  rect.top = (int32_t )dy;
  rect.right = (int32_t )(dx + width);
  rect.bottom = (int32_t )(dy + height);
  ret = make_drawable(qdev, 0, 4, (struct qxl_rect const *)(& rect), release);
  if (ret != 0) {
    qxl_release_backoff_reserve_list(release);
    goto out_free_release;
  } else {
  }
  tmp = qxl_release_map(qdev, release);
  drawable = (struct qxl_drawable *)tmp;
  drawable->u.copy_bits.src_pos.x = (int32_t )sx;
  drawable->u.copy_bits.src_pos.y = (int32_t )sy;
  qxl_release_unmap(qdev, release, & drawable->release_info);
  qxl_push_command_ring_release(qdev, release, 1U, 0);
  qxl_release_fence_buffer_objects(release);
  out_free_release: ;
  if (ret != 0) {
    free_drawable(qdev, release);
  } else {
  }
  return;
}
}
void qxl_draw_fill(struct qxl_draw_fill *qxl_draw_fill_rec )
{
  struct qxl_device *qdev ;
  struct qxl_rect rect ;
  uint32_t color ;
  uint16_t rop ;
  struct qxl_drawable *drawable ;
  struct qxl_release *release ;
  int ret ;
  union qxl_release_info *tmp ;
  {
  qdev = qxl_draw_fill_rec->qdev;
  rect = qxl_draw_fill_rec->rect;
  color = qxl_draw_fill_rec->color;
  rop = qxl_draw_fill_rec->rop;
  ret = alloc_drawable(qdev, & release);
  if (ret != 0) {
    return;
  } else {
  }
  ret = qxl_release_reserve_list(release, 1);
  if (ret != 0) {
    goto out_free_release;
  } else {
  }
  ret = make_drawable(qdev, 0, 1, (struct qxl_rect const *)(& rect), release);
  if (ret != 0) {
    qxl_release_backoff_reserve_list(release);
    goto out_free_release;
  } else {
  }
  tmp = qxl_release_map(qdev, release);
  drawable = (struct qxl_drawable *)tmp;
  drawable->u.fill.brush.type = 1U;
  drawable->u.fill.brush.u.color = color;
  drawable->u.fill.rop_descriptor = rop;
  drawable->u.fill.mask.flags = 0U;
  drawable->u.fill.mask.pos.x = 0;
  drawable->u.fill.mask.pos.y = 0;
  drawable->u.fill.mask.bitmap = 0ULL;
  qxl_release_unmap(qdev, release, & drawable->release_info);
  qxl_push_command_ring_release(qdev, release, 1U, 0);
  qxl_release_fence_buffer_objects(release);
  out_free_release: ;
  if (ret != 0) {
    free_drawable(qdev, release);
  } else {
  }
  return;
}
}
bool ldv_queue_work_on_452(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_453(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_454(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_455(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_456(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_457(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_458(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_459(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_460(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
void ldv_mutex_unlock_461(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_462(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_463(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_464(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_465(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_466(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_fb_info(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_467(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_base_of_ww_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_468(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
int ldv_mutex_trylock_469(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_472(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern void lockdep_rcu_suspicious(char const * , int const , char const * ) ;
int ldv_mutex_trylock_507(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_514(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_502(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_505(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_508(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_510(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_511(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_517(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_513(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_503(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_504(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_506(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_509(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_512(struct mutex *ldv_func_arg1 ) ;
__inline static void __preempt_count_add___0(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (val));
  }
  goto ldv_6798;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6798;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6798;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_6798;
  default:
  __bad_percpu_size();
  }
  ldv_6798: ;
  return;
}
}
__inline static void __preempt_count_sub___1(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (- val));
  }
  goto ldv_6810;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6810;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6810;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6810;
  default:
  __bad_percpu_size();
  }
  ldv_6810: ;
  return;
}
}
__inline static void __rcu_read_lock(void)
{
  {
  __preempt_count_add___0(1);
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void __rcu_read_unlock(void)
{
  {
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub___1(1);
  return;
}
}
extern bool rcu_is_watching(void) ;
__inline static void rcu_lock_acquire(struct lockdep_map *map )
{
  {
  lock_acquire(map, 0U, 0, 2, 0, (struct lockdep_map *)0, 0UL);
  return;
}
}
__inline static void rcu_lock_release(struct lockdep_map *map )
{
  {
  lock_release(map, 1, 0UL);
  return;
}
}
extern struct lockdep_map rcu_lock_map ;
extern int rcu_read_lock_held(void) ;
__inline static void rcu_read_lock(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  __rcu_read_lock();
  rcu_lock_acquire(& rcu_lock_map);
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_watching();
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 849, "rcu_read_lock() used illegally while idle");
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void rcu_read_unlock(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_watching();
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 900, "rcu_read_unlock() used illegally while idle");
    } else {
    }
  } else {
  }
  __rcu_read_unlock();
  rcu_lock_release(& rcu_lock_map);
  return;
}
}
bool ldv_queue_work_on_497(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_499(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_498(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_501(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_500(struct workqueue_struct *ldv_func_arg1 ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int drm_debugfs_create_files(struct drm_info_list const * , int , struct dentry * ,
                                    struct drm_minor * ) ;
extern int drm_debugfs_remove_files(struct drm_info_list const * , int , struct drm_minor * ) ;
static int qxl_debugfs_irq_received(struct seq_file *m , void *data )
{
  struct drm_info_node *node ;
  struct qxl_device *qdev ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  node = (struct drm_info_node *)m->private;
  qdev = (struct qxl_device *)((node->minor)->dev)->dev_private;
  tmp = atomic_read((atomic_t const *)(& qdev->irq_received));
  seq_printf(m, "%d\n", tmp);
  tmp___0 = atomic_read((atomic_t const *)(& qdev->irq_received_display));
  seq_printf(m, "%d\n", tmp___0);
  tmp___1 = atomic_read((atomic_t const *)(& qdev->irq_received_cursor));
  seq_printf(m, "%d\n", tmp___1);
  tmp___2 = atomic_read((atomic_t const *)(& qdev->irq_received_io_cmd));
  seq_printf(m, "%d\n", tmp___2);
  seq_printf(m, "%d\n", qdev->irq_received_error);
  return (0);
}
}
static int qxl_debugfs_buffers_info(struct seq_file *m , void *data )
{
  struct drm_info_node *node ;
  struct qxl_device *qdev ;
  struct qxl_bo *bo ;
  struct list_head const *__mptr ;
  struct reservation_object_list *fobj ;
  int rel ;
  struct reservation_object_list *________p1 ;
  struct reservation_object_list *_________p1 ;
  union __anonunion___u_268 __u ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  {
  node = (struct drm_info_node *)m->private;
  qdev = (struct qxl_device *)((node->minor)->dev)->dev_private;
  __mptr = (struct list_head const *)qdev->gem.objects.next;
  bo = (struct qxl_bo *)__mptr;
  goto ldv_41222;
  ldv_41221:
  rcu_read_lock();
  __read_once_size((void const volatile *)(& (bo->tbo.resv)->fence), (void *)(& __u.__c),
                   8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_read_lock_held();
    if (tmp___0 == 0) {
      __warned = 1;
      lockdep_rcu_suspicious("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_debugfs.c",
                             65, "suspicious rcu_dereference_check() usage");
    } else {
    }
  } else {
  }
  fobj = ________p1;
  rel = (unsigned long )fobj != (unsigned long )((struct reservation_object_list *)0) ? (int )fobj->shared_count : 0;
  rcu_read_unlock();
  seq_printf(m, "size %ld, pc %d, num releases %d\n", bo->gem_base.size, bo->pin_count,
             rel);
  __mptr___0 = (struct list_head const *)bo->list.next;
  bo = (struct qxl_bo *)__mptr___0;
  ldv_41222: ;
  if ((unsigned long )(& bo->list) != (unsigned long )(& qdev->gem.objects)) {
    goto ldv_41221;
  } else {
  }
  return (0);
}
}
static struct drm_info_list qxl_debugfs_list[2U] = { {"irq_received", & qxl_debugfs_irq_received, 0U, (void *)0},
        {"qxl_buffers", & qxl_debugfs_buffers_info, 0U, (void *)0}};
int qxl_debugfs_init(struct drm_minor *minor )
{
  {
  drm_debugfs_create_files((struct drm_info_list const *)(& qxl_debugfs_list), 2,
                           minor->debugfs_root, minor);
  return (0);
}
}
void qxl_debugfs_takedown(struct drm_minor *minor )
{
  {
  drm_debugfs_remove_files((struct drm_info_list const *)(& qxl_debugfs_list), 2,
                           minor);
  return;
}
}
int qxl_debugfs_add_files(struct qxl_device *qdev , struct drm_info_list *files ,
                          unsigned int nfiles )
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_41242;
  ldv_41241: ;
  if ((unsigned long )qdev->debugfs[i].files == (unsigned long )files) {
    return (0);
  } else {
  }
  i = i + 1U;
  ldv_41242: ;
  if (qdev->debugfs_count > i) {
    goto ldv_41241;
  } else {
  }
  i = qdev->debugfs_count + 1U;
  if (i > 32U) {
    drm_err("Reached maximum number of debugfs components.\n");
    drm_err("Report so we increase QXL_DEBUGFS_MAX_COMPONENTS.\n");
    return (-22);
  } else {
  }
  qdev->debugfs[qdev->debugfs_count].files = files;
  qdev->debugfs[qdev->debugfs_count].num_files = nfiles;
  qdev->debugfs_count = i;
  drm_debugfs_create_files((struct drm_info_list const *)files, (int )nfiles, ((qdev->ddev)->control)->debugfs_root,
                           (qdev->ddev)->control);
  drm_debugfs_create_files((struct drm_info_list const *)files, (int )nfiles, ((qdev->ddev)->primary)->debugfs_root,
                           (qdev->ddev)->primary);
  return (0);
}
}
void qxl_debugfs_remove_files(struct qxl_device *qdev )
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_41249;
  ldv_41248:
  drm_debugfs_remove_files((struct drm_info_list const *)qdev->debugfs[i].files,
                           (int )qdev->debugfs[i].num_files, (qdev->ddev)->control);
  drm_debugfs_remove_files((struct drm_info_list const *)qdev->debugfs[i].files,
                           (int )qdev->debugfs[i].num_files, (qdev->ddev)->primary);
  i = i + 1U;
  ldv_41249: ;
  if (qdev->debugfs_count > i) {
    goto ldv_41248;
  } else {
  }
  return;
}
}
bool ldv_queue_work_on_497(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_498(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_499(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_500(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_501(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_502(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_503(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_504(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_505(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_506(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_507(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
void ldv_mutex_unlock_508(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_509(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_510(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_511(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_fb_info(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_512(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_base_of_ww_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_513(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
int ldv_mutex_trylock_514(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_517(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern void __xchg_wrong_size(void) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
int ldv_mutex_trylock_550(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_559(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_548(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_551(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_552(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_555(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_556(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_562(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_558(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_547(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_549(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_553(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_554(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_557(struct mutex *ldv_func_arg1 ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
bool ldv_queue_work_on_542(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_544(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_543(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_546(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_545(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static bool queue_work___1(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_542(8192, wq, work);
  return (tmp);
}
}
__inline static bool schedule_work___0(struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work___1(system_wq, work);
  return (tmp);
}
}
void activate_work_3(struct work_struct *work , int state ) ;
void call_and_disable_work_3(struct work_struct *work ) ;
void disable_work_3(struct work_struct *work ) ;
void invoke_work_3(void) ;
void call_and_disable_all_3(int state ) ;
extern int drm_irq_install(struct drm_device * , int ) ;
irqreturn_t qxl_irq_handler(int irq , void *arg )
{
  struct drm_device *dev ;
  struct qxl_device *qdev ;
  uint32_t pending ;
  uint32_t __ret ;
  {
  dev = (struct drm_device *)arg;
  qdev = (struct qxl_device *)dev->dev_private;
  __ret = 0U;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" ((qdev->ram_header)->int_pending): : "memory",
                       "cc");
  goto ldv_41006;
  case 2UL:
  __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" ((qdev->ram_header)->int_pending): : "memory",
                       "cc");
  goto ldv_41006;
  case 4UL:
  __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" ((qdev->ram_header)->int_pending): : "memory",
                       "cc");
  goto ldv_41006;
  case 8UL:
  __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" ((qdev->ram_header)->int_pending): : "memory",
                       "cc");
  goto ldv_41006;
  default:
  __xchg_wrong_size();
  }
  ldv_41006:
  pending = __ret;
  if (pending == 0U) {
    return (0);
  } else {
  }
  atomic_inc(& qdev->irq_received);
  if ((int )pending & 1) {
    atomic_inc(& qdev->irq_received_display);
    __wake_up(& qdev->display_event, 3U, 0, (void *)0);
    qxl_queue_garbage_collect(qdev, 0);
  } else {
  }
  if ((pending & 2U) != 0U) {
    atomic_inc(& qdev->irq_received_cursor);
    __wake_up(& qdev->cursor_event, 3U, 0, (void *)0);
  } else {
  }
  if ((pending & 4U) != 0U) {
    atomic_inc(& qdev->irq_received_io_cmd);
    __wake_up(& qdev->io_cmd_event, 3U, 0, (void *)0);
  } else {
  }
  if ((pending & 8U) != 0U) {
    qdev->irq_received_error = qdev->irq_received_error + 1U;
    qxl_io_log(qdev, "%s: driver is in bug mode.\n", "qxl_irq_handler");
  } else {
  }
  if ((pending & 32U) != 0U) {
    qxl_io_log(qdev, "QXL_INTERRUPT_CLIENT_MONITORS_CONFIG\n");
    schedule_work___0(& qdev->client_monitors_config_work);
  } else {
  }
  (qdev->ram_header)->int_mask = 39U;
  outb(0, qdev->io_base + 3);
  return (1);
}
}
static void qxl_client_monitors_config_work_func(struct work_struct *work )
{
  struct qxl_device *qdev ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  qdev = (struct qxl_device *)__mptr + 0xfffffffffffff108UL;
  qxl_display_read_client_monitors_config(qdev);
  return;
}
}
int qxl_irq_init(struct qxl_device *qdev )
{
  int ret ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  atomic_long_t __constr_expr_0 ;
  long tmp ;
  {
  __init_waitqueue_head(& qdev->display_event, "&qdev->display_event", & __key);
  __init_waitqueue_head(& qdev->cursor_event, "&qdev->cursor_event", & __key___0);
  __init_waitqueue_head(& qdev->io_cmd_event, "&qdev->io_cmd_event", & __key___1);
  __init_work(& qdev->client_monitors_config_work, 0);
  __constr_expr_0.counter = 137438953408L;
  qdev->client_monitors_config_work.data = __constr_expr_0;
  lockdep_init_map(& qdev->client_monitors_config_work.lockdep_map, "(&qdev->client_monitors_config_work)",
                   & __key___2, 0);
  INIT_LIST_HEAD(& qdev->client_monitors_config_work.entry);
  qdev->client_monitors_config_work.func = & qxl_client_monitors_config_work_func;
  atomic_set(& qdev->irq_received, 0);
  atomic_set(& qdev->irq_received_display, 0);
  atomic_set(& qdev->irq_received_cursor, 0);
  atomic_set(& qdev->irq_received_io_cmd, 0);
  qdev->irq_received_error = 0U;
  ret = drm_irq_install(qdev->ddev, (int )((qdev->ddev)->pdev)->irq);
  (qdev->ram_header)->int_mask = 39U;
  tmp = ldv__builtin_expect(ret != 0, 0L);
  if (tmp != 0L) {
    drm_err("Failed installing irq: %d\n", ret);
    return (1);
  } else {
  }
  return (0);
}
}
void work_init_3(void)
{
  {
  ldv_work_3_0 = 0;
  ldv_work_3_1 = 0;
  ldv_work_3_2 = 0;
  ldv_work_3_3 = 0;
  return;
}
}
void activate_work_3(struct work_struct *work , int state )
{
  {
  if (ldv_work_3_0 == 0) {
    ldv_work_struct_3_0 = work;
    ldv_work_3_0 = state;
    return;
  } else {
  }
  if (ldv_work_3_1 == 0) {
    ldv_work_struct_3_1 = work;
    ldv_work_3_1 = state;
    return;
  } else {
  }
  if (ldv_work_3_2 == 0) {
    ldv_work_struct_3_2 = work;
    ldv_work_3_2 = state;
    return;
  } else {
  }
  if (ldv_work_3_3 == 0) {
    ldv_work_struct_3_3 = work;
    ldv_work_3_3 = state;
    return;
  } else {
  }
  return;
}
}
void call_and_disable_work_3(struct work_struct *work )
{
  {
  if ((ldv_work_3_0 == 2 || ldv_work_3_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_0) {
    qxl_client_monitors_config_work_func(work);
    ldv_work_3_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_1 == 2 || ldv_work_3_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_1) {
    qxl_client_monitors_config_work_func(work);
    ldv_work_3_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_2 == 2 || ldv_work_3_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_2) {
    qxl_client_monitors_config_work_func(work);
    ldv_work_3_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_3 == 2 || ldv_work_3_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_3) {
    qxl_client_monitors_config_work_func(work);
    ldv_work_3_3 = 1;
    return;
  } else {
  }
  return;
}
}
void disable_work_3(struct work_struct *work )
{
  {
  if ((ldv_work_3_0 == 3 || ldv_work_3_0 == 2) && (unsigned long )ldv_work_struct_3_0 == (unsigned long )work) {
    ldv_work_3_0 = 1;
  } else {
  }
  if ((ldv_work_3_1 == 3 || ldv_work_3_1 == 2) && (unsigned long )ldv_work_struct_3_1 == (unsigned long )work) {
    ldv_work_3_1 = 1;
  } else {
  }
  if ((ldv_work_3_2 == 3 || ldv_work_3_2 == 2) && (unsigned long )ldv_work_struct_3_2 == (unsigned long )work) {
    ldv_work_3_2 = 1;
  } else {
  }
  if ((ldv_work_3_3 == 3 || ldv_work_3_3 == 2) && (unsigned long )ldv_work_struct_3_3 == (unsigned long )work) {
    ldv_work_3_3 = 1;
  } else {
  }
  return;
}
}
void invoke_work_3(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_3_0 == 2 || ldv_work_3_0 == 3) {
    ldv_work_3_0 = 4;
    qxl_client_monitors_config_work_func(ldv_work_struct_3_0);
    ldv_work_3_0 = 1;
  } else {
  }
  goto ldv_41049;
  case 1: ;
  if (ldv_work_3_1 == 2 || ldv_work_3_1 == 3) {
    ldv_work_3_1 = 4;
    qxl_client_monitors_config_work_func(ldv_work_struct_3_0);
    ldv_work_3_1 = 1;
  } else {
  }
  goto ldv_41049;
  case 2: ;
  if (ldv_work_3_2 == 2 || ldv_work_3_2 == 3) {
    ldv_work_3_2 = 4;
    qxl_client_monitors_config_work_func(ldv_work_struct_3_0);
    ldv_work_3_2 = 1;
  } else {
  }
  goto ldv_41049;
  case 3: ;
  if (ldv_work_3_3 == 2 || ldv_work_3_3 == 3) {
    ldv_work_3_3 = 4;
    qxl_client_monitors_config_work_func(ldv_work_struct_3_0);
    ldv_work_3_3 = 1;
  } else {
  }
  goto ldv_41049;
  default:
  ldv_stop();
  }
  ldv_41049: ;
  return;
}
}
void call_and_disable_all_3(int state )
{
  {
  if (ldv_work_3_0 == state) {
    call_and_disable_work_3(ldv_work_struct_3_0);
  } else {
  }
  if (ldv_work_3_1 == state) {
    call_and_disable_work_3(ldv_work_struct_3_1);
  } else {
  }
  if (ldv_work_3_2 == state) {
    call_and_disable_work_3(ldv_work_struct_3_2);
  } else {
  }
  if (ldv_work_3_3 == state) {
    call_and_disable_work_3(ldv_work_struct_3_3);
  } else {
  }
  return;
}
}
bool ldv_queue_work_on_542(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_543(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_544(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_545(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_546(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_547(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_548(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_549(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_550(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
void ldv_mutex_unlock_551(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_552(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_553(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_554(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_555(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_556(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_fb_info(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_557(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_base_of_ww_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_558(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
int ldv_mutex_trylock_559(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_562(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
int ldv_mutex_trylock_595(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_604(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_593(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_596(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_597(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_600(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_601(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_607(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_603(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_592(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_594(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_598(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_599(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_602(struct mutex *ldv_func_arg1 ) ;
bool ldv_queue_work_on_587(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_589(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_588(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_591(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_590(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static int ldv_kref_put_mutex_118(struct kref *kref , void (*release)(struct kref * ) ,
                                           struct mutex *lock ) ;
__inline static void drm_gem_object_unreference_unlocked___3(struct drm_gem_object *obj )
{
  struct drm_device *dev ;
  int tmp ;
  {
  if ((unsigned long )obj == (unsigned long )((struct drm_gem_object *)0)) {
    return;
  } else {
  }
  dev = obj->dev;
  tmp = ldv_kref_put_mutex_118(& obj->refcount, & drm_gem_object_free, & dev->struct_mutex);
  if (tmp != 0) {
    ldv_mutex_unlock_607(& dev->struct_mutex);
  } else {
    lock_acquire(& dev->struct_mutex.dep_map, 0U, 0, 0, 1, (struct lockdep_map *)0,
                 0UL);
    lock_release(& dev->struct_mutex.dep_map, 0, 0UL);
  }
  return;
}
}
int qxl_mode_dumb_create(struct drm_file *file_priv , struct drm_device *dev , struct drm_mode_create_dumb *args )
{
  struct qxl_device *qdev ;
  struct qxl_bo *qobj ;
  uint32_t handle ;
  int r ;
  struct qxl_surface surf ;
  uint32_t pitch ;
  uint32_t format ;
  {
  qdev = (struct qxl_device *)dev->dev_private;
  pitch = args->width * ((args->bpp + 1U) / 8U);
  args->size = (uint64_t )(args->height * pitch);
  args->size = (args->size + 4095ULL) & 0xfffffffffffff000ULL;
  switch (args->bpp) {
  case 16U:
  format = 80U;
  goto ldv_41072;
  case 32U:
  format = 32U;
  goto ldv_41072;
  default: ;
  return (-22);
  }
  ldv_41072:
  surf.width = args->width;
  surf.height = args->height;
  surf.stride = (int32_t )pitch;
  surf.format = format;
  r = qxl_gem_object_create_with_handle(qdev, file_priv, 1U, (size_t )args->size,
                                        & surf, & qobj, & handle);
  if (r != 0) {
    return (r);
  } else {
  }
  args->pitch = pitch;
  args->handle = handle;
  return (0);
}
}
int qxl_mode_dumb_mmap(struct drm_file *file_priv , struct drm_device *dev , uint32_t handle ,
                       uint64_t *offset_p )
{
  struct drm_gem_object *gobj ;
  struct qxl_bo *qobj ;
  long tmp ;
  struct drm_gem_object const *__mptr ;
  {
  tmp = ldv__builtin_expect((unsigned long )offset_p == (unsigned long )((uint64_t *)0ULL),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_dumb.c"),
                         "i" (78), "i" (12UL));
    ldv_41083: ;
    goto ldv_41083;
  } else {
  }
  gobj = drm_gem_object_lookup(dev, file_priv, handle);
  if ((unsigned long )gobj == (unsigned long )((struct drm_gem_object *)0)) {
    return (-2);
  } else {
  }
  __mptr = (struct drm_gem_object const *)gobj;
  qobj = (struct qxl_bo *)__mptr + 0xfffffffffffffc08UL;
  *offset_p = qxl_bo_mmap_offset(qobj);
  drm_gem_object_unreference_unlocked___3(gobj);
  return (0);
}
}
bool ldv_queue_work_on_587(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_588(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_589(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_590(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_591(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_592(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_593(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_594(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_595(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
void ldv_mutex_unlock_596(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_597(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_598(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_599(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_600(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_601(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_fb_info(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_602(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_base_of_ww_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_603(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
int ldv_mutex_trylock_604(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_607(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern void __might_fault(char const * , int ) ;
extern struct tss_struct cpu_tss ;
__inline static unsigned long current_top_of_stack(void)
{
  u64 pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& cpu_tss.x86_tss.sp0));
  goto ldv_5374;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& cpu_tss.x86_tss.sp0));
  goto ldv_5374;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& cpu_tss.x86_tss.sp0));
  goto ldv_5374;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& cpu_tss.x86_tss.sp0));
  goto ldv_5374;
  default:
  __bad_percpu_size();
  }
  ldv_5374: ;
  return ((unsigned long )pfo_ret__);
}
}
int ldv_mutex_trylock_640(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_649(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_638(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_641(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_642(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_645(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_646(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_652(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_648(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_637(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_639(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_643(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_644(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_647(struct mutex *ldv_func_arg1 ) ;
__inline static struct thread_info *current_thread_info(void)
{
  unsigned long tmp ;
  {
  tmp = current_top_of_stack();
  return ((struct thread_info *)(tmp - 32768UL));
}
}
bool ldv_queue_work_on_632(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_634(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_633(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_636(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_635(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static int ldv_kref_put_mutex_118(struct kref *kref , void (*release)(struct kref * ) ,
                                           struct mutex *lock ) ;
__inline static bool __chk_range_not_ok(unsigned long addr , unsigned long size ,
                                        unsigned long limit )
{
  {
  addr = addr + size;
  if (addr < size) {
    return (1);
  } else {
  }
  return (addr > limit);
}
}
extern long __copy_user_nocache(void * , void const * , unsigned int , int ) ;
__inline static int __copy_from_user_inatomic_nocache(void *dst , void const *src ,
                                                      unsigned int size )
{
  long tmp ;
  {
  tmp = __copy_user_nocache(dst, src, size, 0);
  return ((int )tmp);
}
}
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  __might_fault("./arch/x86/include/asm/uaccess.h", 697);
  tmp___0 = ldv__builtin_expect((long )(sz < 0 || (unsigned long )sz >= n), 1L);
  if (tmp___0 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    __copy_from_user_overflow();
  }
  return (n);
}
}
__inline static int ww_mutex_lock___2(struct ww_mutex *lock , struct ww_acquire_ctx *ctx )
{
  int tmp ;
  {
  if ((unsigned long )ctx != (unsigned long )((struct ww_acquire_ctx *)0)) {
    tmp = __ww_mutex_lock(lock, ctx);
    return (tmp);
  } else {
  }
  ldv_mutex_lock_647(& lock->base);
  return (0);
}
}
__inline static int ww_mutex_lock_interruptible___2(struct ww_mutex *lock , struct ww_acquire_ctx *ctx )
{
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ctx != (unsigned long )((struct ww_acquire_ctx *)0)) {
    tmp = __ww_mutex_lock_interruptible(lock, ctx);
    return (tmp);
  } else {
    tmp___0 = ldv_mutex_lock_interruptible_648(& lock->base);
    return (tmp___0);
  }
}
}
__inline static int ww_mutex_trylock___2(struct ww_mutex *lock )
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_649(& lock->base);
  return (tmp);
}
}
__inline static int __ttm_bo_reserve___2(struct ttm_buffer_object *bo , bool interruptible ,
                                         bool no_wait , bool use_ticket , struct ww_acquire_ctx *ticket )
{
  int ret ;
  bool success ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  ret = 0;
  if ((int )no_wait) {
    __ret_warn_on = (unsigned long )ticket != (unsigned long )((struct ww_acquire_ctx *)0);
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/drm/ttm/ttm_bo_driver.h", 787);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      return (-16);
    } else {
    }
    tmp___1 = ww_mutex_trylock___2(& (bo->resv)->lock);
    success = tmp___1 != 0;
    return ((int )success ? 0 : -16);
  } else {
  }
  if ((int )interruptible) {
    ret = ww_mutex_lock_interruptible___2(& (bo->resv)->lock, ticket);
  } else {
    ret = ww_mutex_lock___2(& (bo->resv)->lock, ticket);
  }
  if (ret == -4) {
    return (-512);
  } else {
  }
  return (ret);
}
}
__inline static int ttm_bo_reserve___2(struct ttm_buffer_object *bo , bool interruptible ,
                                       bool no_wait , bool use_ticket , struct ww_acquire_ctx *ticket )
{
  int ret ;
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = atomic_read((atomic_t const *)(& bo->kref.refcount));
  __ret_warn_on = tmp == 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("include/drm/ttm/ttm_bo_driver.h", 855);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  ret = __ttm_bo_reserve___2(bo, (int )interruptible, (int )no_wait, (int )use_ticket,
                             ticket);
  tmp___1 = ldv__builtin_expect(ret == 0, 1L);
  if (tmp___1 != 0L) {
    ttm_bo_del_sub_from_lru(bo);
  } else {
  }
  return (ret);
}
}
__inline static void drm_gem_object_unreference_unlocked___4(struct drm_gem_object *obj )
{
  struct drm_device *dev ;
  int tmp ;
  {
  if ((unsigned long )obj == (unsigned long )((struct drm_gem_object *)0)) {
    return;
  } else {
  }
  dev = obj->dev;
  tmp = ldv_kref_put_mutex_118(& obj->refcount, & drm_gem_object_free, & dev->struct_mutex);
  if (tmp != 0) {
    ldv_mutex_unlock_652(& dev->struct_mutex);
  } else {
    lock_acquire(& dev->struct_mutex.dep_map, 0U, 0, 0, 1, (struct lockdep_map *)0,
                 0UL);
    lock_release(& dev->struct_mutex.dep_map, 0, 0UL);
  }
  return;
}
}
__inline static int qxl_bo_reserve___2(struct qxl_bo *bo , bool no_wait )
{
  int r ;
  struct qxl_device *qdev ;
  long tmp ;
  {
  r = ttm_bo_reserve___2(& bo->tbo, 1, (int )no_wait, 0, (struct ww_acquire_ctx *)0);
  tmp = ldv__builtin_expect(r != 0, 0L);
  if (tmp != 0L) {
    if (r != -512) {
      qdev = (struct qxl_device *)(bo->gem_base.dev)->dev_private;
      dev_err((struct device const *)qdev->dev, "%p reserve failed\n", bo);
    } else {
    }
    return (r);
  } else {
  }
  return (0);
}
}
static int qxl_alloc_ioctl(struct drm_device *dev , void *data , struct drm_file *file_priv )
{
  struct qxl_device *qdev ;
  struct drm_qxl_alloc *qxl_alloc ;
  int ret ;
  struct qxl_bo *qobj ;
  uint32_t handle ;
  u32 domain ;
  {
  qdev = (struct qxl_device *)dev->dev_private;
  qxl_alloc = (struct drm_qxl_alloc *)data;
  domain = 1U;
  if (qxl_alloc->size == 0U) {
    drm_err("invalid size %d\n", qxl_alloc->size);
    return (-22);
  } else {
  }
  ret = qxl_gem_object_create_with_handle(qdev, file_priv, domain, (size_t )qxl_alloc->size,
                                          (struct qxl_surface *)0, & qobj, & handle);
  if (ret != 0) {
    drm_err("%s: failed to create gem ret=%d\n", "qxl_alloc_ioctl", ret);
    return (-12);
  } else {
  }
  qxl_alloc->handle = handle;
  return (0);
}
}
static int qxl_map_ioctl(struct drm_device *dev , void *data , struct drm_file *file_priv )
{
  struct qxl_device *qdev ;
  struct drm_qxl_map *qxl_map ;
  int tmp ;
  {
  qdev = (struct qxl_device *)dev->dev_private;
  qxl_map = (struct drm_qxl_map *)data;
  tmp = qxl_mode_dumb_mmap(file_priv, qdev->ddev, qxl_map->handle, & qxl_map->offset);
  return (tmp);
}
}
static void apply_reloc(struct qxl_device *qdev , struct qxl_reloc_info *info )
{
  void *reloc_page ;
  {
  reloc_page = qxl_bo_kmap_atomic_page(qdev, info->dst_bo, (int )info->dst_offset & -4096);
  *((uint64_t *)(reloc_page + ((unsigned long )info->dst_offset & 4095UL))) = qxl_bo_physical_address(qdev,
                                                                                                      info->src_bo,
                                                                                                      (unsigned long )info->src_offset);
  qxl_bo_kunmap_atomic_page(qdev, info->dst_bo, reloc_page);
  return;
}
}
static void apply_surf_reloc(struct qxl_device *qdev , struct qxl_reloc_info *info )
{
  uint32_t id ;
  void *reloc_page ;
  {
  id = 0U;
  if ((unsigned long )info->src_bo != (unsigned long )((struct qxl_bo *)0) && ! (info->src_bo)->is_primary) {
    id = (info->src_bo)->surface_id;
  } else {
  }
  reloc_page = qxl_bo_kmap_atomic_page(qdev, info->dst_bo, (int )info->dst_offset & -4096);
  *((uint32_t *)(reloc_page + ((unsigned long )info->dst_offset & 4095UL))) = id;
  qxl_bo_kunmap_atomic_page(qdev, info->dst_bo, reloc_page);
  return;
}
}
static int qxlhw_handle_to_bo(struct qxl_device *qdev , struct drm_file *file_priv ,
                              uint64_t handle , struct qxl_release *release , struct qxl_bo **qbo_p )
{
  struct drm_gem_object *gobj ;
  struct qxl_bo *qobj ;
  int ret ;
  struct drm_gem_object const *__mptr ;
  {
  gobj = drm_gem_object_lookup(qdev->ddev, file_priv, (u32 )handle);
  if ((unsigned long )gobj == (unsigned long )((struct drm_gem_object *)0)) {
    return (-22);
  } else {
  }
  __mptr = (struct drm_gem_object const *)gobj;
  qobj = (struct qxl_bo *)__mptr + 0xfffffffffffffc08UL;
  ret = qxl_release_list_add(release, qobj);
  drm_gem_object_unreference_unlocked___4(gobj);
  if (ret != 0) {
    return (ret);
  } else {
  }
  *qbo_p = qobj;
  return (0);
}
}
static int qxl_process_single_command(struct qxl_device *qdev , struct drm_qxl_command *cmd ,
                                      struct drm_file *file_priv )
{
  struct qxl_reloc_info *reloc_info ;
  int release_type ;
  struct qxl_release *release ;
  struct qxl_bo *cmd_bo ;
  void *fb_cmd ;
  int i ;
  int ret ;
  int num_relocs ;
  int unwritten ;
  long tmp ;
  struct thread_info *tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  void *tmp___4 ;
  struct qxl_drawable *draw ;
  struct drm_qxl_reloc reloc ;
  unsigned long tmp___5 ;
  long tmp___6 ;
  {
  switch (cmd->type) {
  case 1U:
  release_type = 0;
  goto ldv_41122;
  case 5U: ;
  case 3U: ;
  default:
  tmp = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
  if (tmp != 0L) {
    drm_ut_debug_printk("qxl_process_single_command", "Only draw commands in execbuffers\n");
  } else {
  }
  return (-22);
  }
  ldv_41122: ;
  if (cmd->command_size > 4088U) {
    return (-22);
  } else {
  }
  tmp___0 = current_thread_info();
  tmp___1 = __chk_range_not_ok((unsigned long )cmd->command, (unsigned long )cmd->command_size,
                               tmp___0->addr_limit.seg);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  tmp___3 = ldv__builtin_expect((long )tmp___2, 1L);
  if (tmp___3 == 0L) {
    return (-14);
  } else {
  }
  tmp___4 = kmalloc((unsigned long )cmd->relocs_num * 40UL, 208U);
  reloc_info = (struct qxl_reloc_info *)tmp___4;
  if ((unsigned long )reloc_info == (unsigned long )((struct qxl_reloc_info *)0)) {
    return (-12);
  } else {
  }
  ret = qxl_alloc_release_reserved(qdev, (unsigned long )cmd->command_size + 8UL,
                                   release_type, & release, & cmd_bo);
  if (ret != 0) {
    goto out_free_reloc;
  } else {
  }
  fb_cmd = qxl_bo_kmap_atomic_page(qdev, cmd_bo, (int )release->release_offset & 4096);
  unwritten = __copy_from_user_inatomic_nocache(fb_cmd + (((unsigned long )release->release_offset & 0xffffffffffffefffUL) + 8UL),
                                                (void const *)cmd->command, cmd->command_size);
  draw = (struct qxl_drawable *)fb_cmd;
  draw->mm_time = (qdev->rom)->mm_clock;
  qxl_bo_kunmap_atomic_page(qdev, cmd_bo, fb_cmd);
  if (unwritten != 0) {
    drm_err("got unwritten %d\n", unwritten);
    ret = -14;
    goto out_free_release;
  } else {
  }
  num_relocs = 0;
  i = 0;
  goto ldv_41134;
  ldv_41133:
  tmp___5 = copy_from_user((void *)(& reloc), (void const *)((unsigned long )i + (unsigned long )cmd->relocs),
                           32UL);
  if (tmp___5 != 0UL) {
    ret = -14;
    goto out_free_bos;
  } else {
  }
  if (reloc.reloc_type != 1U && reloc.reloc_type != 2U) {
    tmp___6 = ldv__builtin_expect((long )((int )drm_debug) & 1L, 0L);
    if (tmp___6 != 0L) {
      drm_ut_debug_printk("qxl_process_single_command", "unknown reloc type %d\n",
                          reloc.reloc_type);
    } else {
    }
    ret = -22;
    goto out_free_bos;
  } else {
  }
  (reloc_info + (unsigned long )i)->type = (int )reloc.reloc_type;
  if (reloc.dst_handle != 0U) {
    ret = qxlhw_handle_to_bo(qdev, file_priv, (uint64_t )reloc.dst_handle, release,
                             & (reloc_info + (unsigned long )i)->dst_bo);
    if (ret != 0) {
      goto out_free_bos;
    } else {
    }
    (reloc_info + (unsigned long )i)->dst_offset = (uint32_t )reloc.dst_offset;
  } else {
    (reloc_info + (unsigned long )i)->dst_bo = cmd_bo;
    (reloc_info + (unsigned long )i)->dst_offset = (uint32_t )reloc.dst_offset + release->release_offset;
  }
  num_relocs = num_relocs + 1;
  if (reloc.reloc_type == 1U || reloc.src_handle != 0U) {
    ret = qxlhw_handle_to_bo(qdev, file_priv, (uint64_t )reloc.src_handle, release,
                             & (reloc_info + (unsigned long )i)->src_bo);
    if (ret != 0) {
      goto out_free_bos;
    } else {
    }
    (reloc_info + (unsigned long )i)->src_offset = (int )reloc.src_offset;
  } else {
    (reloc_info + (unsigned long )i)->src_bo = (struct qxl_bo *)0;
    (reloc_info + (unsigned long )i)->src_offset = 0;
  }
  i = i + 1;
  ldv_41134: ;
  if ((uint32_t )i < cmd->relocs_num) {
    goto ldv_41133;
  } else {
  }
  ret = qxl_release_reserve_list(release, 0);
  if (ret != 0) {
    goto out_free_bos;
  } else {
  }
  i = 0;
  goto ldv_41137;
  ldv_41136: ;
  if ((reloc_info + (unsigned long )i)->type == 1) {
    apply_reloc(qdev, reloc_info + (unsigned long )i);
  } else
  if ((reloc_info + (unsigned long )i)->type == 2) {
    apply_surf_reloc(qdev, reloc_info + (unsigned long )i);
  } else {
  }
  i = i + 1;
  ldv_41137: ;
  if ((uint32_t )i < cmd->relocs_num) {
    goto ldv_41136;
  } else {
  }
  ret = qxl_push_command_ring_release(qdev, release, cmd->type, 1);
  if (ret != 0) {
    qxl_release_backoff_reserve_list(release);
  } else {
    qxl_release_fence_buffer_objects(release);
  }
  out_free_bos: ;
  out_free_release: ;
  if (ret != 0) {
    qxl_release_free(qdev, release);
  } else {
  }
  out_free_reloc:
  kfree((void const *)reloc_info);
  return (ret);
}
}
static int qxl_execbuffer_ioctl(struct drm_device *dev , void *data , struct drm_file *file_priv )
{
  struct qxl_device *qdev ;
  struct drm_qxl_execbuffer *execbuffer ;
  struct drm_qxl_command user_cmd ;
  int cmd_num ;
  int ret ;
  struct drm_qxl_command *commands ;
  unsigned long tmp ;
  {
  qdev = (struct qxl_device *)dev->dev_private;
  execbuffer = (struct drm_qxl_execbuffer *)data;
  cmd_num = 0;
  goto ldv_41151;
  ldv_41150:
  commands = (struct drm_qxl_command *)execbuffer->commands;
  tmp = copy_from_user((void *)(& user_cmd), (void const *)commands + (unsigned long )cmd_num,
                       32UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  ret = qxl_process_single_command(qdev, & user_cmd, file_priv);
  if (ret != 0) {
    return (ret);
  } else {
  }
  cmd_num = cmd_num + 1;
  ldv_41151: ;
  if ((uint32_t )cmd_num < execbuffer->commands_num) {
    goto ldv_41150;
  } else {
  }
  return (0);
}
}
static int qxl_update_area_ioctl(struct drm_device *dev , void *data , struct drm_file *file )
{
  struct qxl_device *qdev ;
  struct drm_qxl_update_area *update_area ;
  struct qxl_rect area ;
  int ret ;
  struct drm_gem_object *gobj ;
  struct qxl_bo *qobj ;
  struct drm_gem_object const *__mptr ;
  long tmp ;
  {
  qdev = (struct qxl_device *)dev->dev_private;
  update_area = (struct drm_qxl_update_area *)data;
  area.top = (int )update_area->top;
  area.left = (int )update_area->left;
  area.bottom = (int )update_area->bottom;
  area.right = (int )update_area->right;
  gobj = (struct drm_gem_object *)0;
  qobj = (struct qxl_bo *)0;
  if (update_area->left >= update_area->right || update_area->top >= update_area->bottom) {
    return (-22);
  } else {
  }
  gobj = drm_gem_object_lookup(dev, file, update_area->handle);
  if ((unsigned long )gobj == (unsigned long )((struct drm_gem_object *)0)) {
    return (-2);
  } else {
  }
  __mptr = (struct drm_gem_object const *)gobj;
  qobj = (struct qxl_bo *)__mptr + 0xfffffffffffffc08UL;
  ret = qxl_bo_reserve___2(qobj, 0);
  if (ret != 0) {
    goto out;
  } else {
  }
  if (qobj->pin_count == 0U) {
    qxl_ttm_placement_from_domain(qobj, (u32 )qobj->type, 0);
    ret = ttm_bo_validate(& qobj->tbo, & qobj->placement, 1, 0);
    tmp = ldv__builtin_expect(ret != 0, 0L);
    if (tmp != 0L) {
      goto out;
    } else {
    }
  } else {
  }
  ret = qxl_bo_check_id(qdev, qobj);
  if (ret != 0) {
    goto out2;
  } else {
  }
  if (qobj->surface_id == 0U) {
    drm_err("got update area for surface with no id %d\n", update_area->handle);
  } else {
  }
  ret = qxl_io_update_area(qdev, qobj, (struct qxl_rect const *)(& area));
  out2:
  qxl_bo_unreserve(qobj);
  out:
  drm_gem_object_unreference_unlocked___4(gobj);
  return (ret);
}
}
static int qxl_getparam_ioctl(struct drm_device *dev , void *data , struct drm_file *file_priv )
{
  struct qxl_device *qdev ;
  struct drm_qxl_getparam *param ;
  {
  qdev = (struct qxl_device *)dev->dev_private;
  param = (struct drm_qxl_getparam *)data;
  switch (param->param) {
  case 1ULL:
  param->value = (uint64_t )(qdev->rom)->n_surfaces;
  goto ldv_41176;
  case 2ULL:
  param->value = 96ULL;
  goto ldv_41176;
  default: ;
  return (-22);
  }
  ldv_41176: ;
  return (0);
}
}
static int qxl_clientcap_ioctl(struct drm_device *dev , void *data , struct drm_file *file_priv )
{
  struct qxl_device *qdev ;
  struct drm_qxl_clientcap *param ;
  int byte ;
  int idx ;
  {
  qdev = (struct qxl_device *)dev->dev_private;
  param = (struct drm_qxl_clientcap *)data;
  byte = (int )(param->index / 8U);
  idx = (int )param->index & 7;
  if ((unsigned int )(qdev->pdev)->revision <= 3U) {
    return (-38);
  } else {
  }
  if (byte > 57) {
    return (-38);
  } else {
  }
  if (((int )(qdev->rom)->client_capabilities[byte] >> idx) & 1) {
    return (0);
  } else {
  }
  return (-38);
}
}
static int qxl_alloc_surf_ioctl(struct drm_device *dev , void *data , struct drm_file *file )
{
  struct qxl_device *qdev ;
  struct drm_qxl_alloc_surf *param ;
  struct qxl_bo *qobj ;
  int handle ;
  int ret ;
  int size ;
  int actual_stride ;
  struct qxl_surface surf ;
  {
  qdev = (struct qxl_device *)dev->dev_private;
  param = (struct drm_qxl_alloc_surf *)data;
  actual_stride = param->stride < 0 ? - param->stride : param->stride;
  size = (int )(param->height * (uint32_t )actual_stride + (uint32_t )actual_stride);
  surf.format = param->format;
  surf.width = param->width;
  surf.height = param->height;
  surf.stride = param->stride;
  surf.data = 0ULL;
  ret = qxl_gem_object_create_with_handle(qdev, file, 2U, (size_t )size, & surf, & qobj,
                                          (uint32_t *)(& handle));
  if (ret != 0) {
    drm_err("%s: failed to create gem ret=%d\n", "qxl_alloc_surf_ioctl", ret);
    return (-12);
  } else {
    param->handle = (uint32_t )handle;
  }
  return (ret);
}
}
struct drm_ioctl_desc const qxl_ioctls[7U] = { {3221775424U, 17, & qxl_alloc_ioctl, "QXL_ALLOC"},
        {3222299713U, 17, & qxl_map_ioctl, "QXL_MAP"},
        {1074816066U, 17, & qxl_execbuffer_ioctl, "QXL_EXECBUFFER"},
        {1075340355U, 17, & qxl_update_area_ioctl, "QXL_UPDATE_AREA"},
        {3222299716U, 17, & qxl_getparam_ioctl, "QXL_GETPARAM"},
        {1074291781U, 17, & qxl_clientcap_ioctl, "QXL_CLIENTCAP"},
        {3222824006U, 17, & qxl_alloc_surf_ioctl, "QXL_ALLOC_SURF"}};
int qxl_max_ioctls = 7;
bool ldv_queue_work_on_632(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_633(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_634(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_635(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_636(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_637(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_638(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_639(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_640(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
void ldv_mutex_unlock_641(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_642(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_643(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_644(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_645(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_646(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_fb_info(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_647(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_base_of_ww_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_648(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
int ldv_mutex_trylock_649(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_652(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
extern int oops_in_progress ;
extern void list_del(struct list_head * ) ;
__inline static int list_is_singular(struct list_head const *head )
{
  int tmp ;
  {
  tmp = list_empty(head);
  return (tmp == 0 && (unsigned long )head->next == (unsigned long )head->prev);
}
}
__inline static unsigned long arch_local_save_flags___0(void)
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
                         "i" (831), "i" (12UL));
    ldv_4801: ;
    goto ldv_4801;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (43UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
extern int debug_locks ;
extern int debug_locks_silent ;
extern int debug_locks_off(void) ;
extern int lock_is_held(struct lockdep_map * ) ;
int ldv_mutex_trylock_685(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_694(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_683(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_686(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_687(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_690(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_691(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_697(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_699(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_700(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_693(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_682(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_684(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_688(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_689(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_692(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_698(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_release_mutex_of_qxl_device(struct mutex *lock ) ;
void ldv_mutex_unlock_release_mutex_of_qxl_device(struct mutex *lock ) ;
__inline static int preempt_count___0(void)
{
  int pfo_ret__ ;
  {
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6753;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6753;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6753;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6753;
  default:
  __bad_percpu_size();
  }
  ldv_6753: ;
  return (pfo_ret__ & 2147483647);
}
}
__inline static void __preempt_count_add___1(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (val));
  }
  goto ldv_6810;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6810;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6810;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_6810;
  default:
  __bad_percpu_size();
  }
  ldv_6810: ;
  return;
}
}
__inline static void __preempt_count_sub___2(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (- val));
  }
  goto ldv_6822;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6822;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6822;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6822;
  default:
  __bad_percpu_size();
  }
  ldv_6822: ;
  return;
}
}
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
extern unsigned long volatile jiffies ;
extern bool rcu_lockdep_current_cpu_online(void) ;
extern struct lockdep_map rcu_sched_lock_map ;
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
    tmp___4 = preempt_count___0();
    if (tmp___4 != 0) {
      tmp___6 = 1;
    } else {
      _flags = arch_local_save_flags___0();
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
  __preempt_count_add___1(1);
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void rcu_read_unlock_sched_notrace(void)
{
  {
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub___2(1);
  return;
}
}
bool ldv_queue_work_on_677(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_679(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_678(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_681(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_680(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static void *idr_find___0(struct idr *idr , int id )
{
  struct idr_layer *hint ;
  struct idr_layer *________p1 ;
  struct idr_layer *_________p1 ;
  union __anonunion___u_188___0 __u ;
  int tmp ;
  struct idr_layer *________p1___0 ;
  struct idr_layer *_________p1___0 ;
  union __anonunion___u_190___0 __u___0 ;
  int tmp___0 ;
  void *tmp___1 ;
  {
  __read_once_size((void const volatile *)(& idr->hint), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  hint = ________p1;
  if ((unsigned long )hint != (unsigned long )((struct idr_layer *)0) && (id & -256) == hint->prefix) {
    __read_once_size((void const volatile *)(& hint->ary) + ((unsigned long )id & 255UL),
                     (void *)(& __u___0.__c), 8);
    _________p1___0 = __u___0.__val;
    ________p1___0 = _________p1___0;
    tmp___0 = debug_lockdep_rcu_enabled();
    return ((void *)________p1___0);
  } else {
  }
  tmp___1 = idr_find_slowpath(idr, id);
  return (tmp___1);
}
}
extern void fence_init(struct fence * , struct fence_ops const * , spinlock_t * ,
                       unsigned int , unsigned int ) ;
extern void fence_release(struct kref * ) ;
__inline static void fence_put(struct fence *fence )
{
  {
  if ((unsigned long )fence != (unsigned long )((struct fence *)0)) {
    kref_put(& fence->refcount, & fence_release);
  } else {
  }
  return;
}
}
extern int fence_signal(struct fence * ) ;
__inline static bool fence_is_signaled(struct fence *fence )
{
  int tmp ;
  bool tmp___0 ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& fence->flags));
  if (tmp != 0) {
    return (1);
  } else {
  }
  if ((unsigned long )(fence->ops)->signaled != (unsigned long )((bool (* )(struct fence * ))0)) {
    tmp___0 = (*((fence->ops)->signaled))(fence);
    if ((int )tmp___0) {
      fence_signal(fence);
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
__inline static void ww_acquire_fini(struct ww_acquire_ctx *ctx )
{
  int __ret ;
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  lock_release(& ctx->dep_map, 0, 0UL);
  __ret = 0;
  if (oops_in_progress == 0) {
    tmp___1 = ldv__builtin_expect(ctx->acquired != 0U, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = debug_locks_off();
      if (tmp___0 != 0 && debug_locks_silent == 0) {
        __ret_warn_on = 1;
        tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
        if (tmp != 0L) {
          warn_slowpath_fmt("include/linux/ww_mutex.h", 175, "DEBUG_LOCKS_WARN_ON(%s)",
                            (char *)"ctx->acquired");
        } else {
        }
        ldv__builtin_expect(__ret_warn_on != 0, 0L);
      } else {
      }
      __ret = 1;
    } else {
    }
  } else {
  }
  return;
}
}
extern int reservation_object_reserve_shared(struct reservation_object * ) ;
extern void reservation_object_add_shared_fence(struct reservation_object * , struct fence * ) ;
extern void ttm_eu_backoff_reservation(struct ww_acquire_ctx * , struct list_head * ) ;
extern int ttm_eu_reserve_buffers(struct ww_acquire_ctx * , struct list_head * , bool ,
                                  struct list_head * ) ;
extern struct tracepoint __tracepoint_fence_emit ;
__inline static void trace_fence_emit(struct fence *fence )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *________p1 ;
  struct tracepoint_func *_________p1 ;
  union __anonunion___u_272 __u ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  struct tracepoint_func *________p1___0 ;
  struct tracepoint_func *_________p1___0 ;
  union __anonunion___u_274 __u___0 ;
  bool __warned___0 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp___1 = static_key_false(& __tracepoint_fence_emit.key);
  if ((int )tmp___1) {
    rcu_read_lock_sched_notrace();
    __read_once_size((void const volatile *)(& __tracepoint_fence_emit.funcs), (void *)(& __u.__c),
                     8);
    _________p1 = __u.__val;
    ________p1 = _________p1;
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0) {
        __warned = 1;
        lockdep_rcu_suspicious("include/trace/events/fence.h", 81, "suspicious rcu_dereference_check() usage");
      } else {
      }
    } else {
    }
    it_func_ptr = ________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_41188:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , struct fence * ))it_func))(__data, fence);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_41188;
      } else {
      }
    } else {
    }
    rcu_read_unlock_sched_notrace();
  } else {
  }
  rcu_read_lock_sched_notrace();
  __read_once_size((void const volatile *)(& __tracepoint_fence_emit.funcs), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___2 = debug_lockdep_rcu_enabled();
  if (tmp___2 != 0 && ! __warned___0) {
    tmp___3 = rcu_read_lock_sched_held();
    if (tmp___3 == 0) {
      __warned___0 = 1;
      lockdep_rcu_suspicious("include/trace/events/fence.h", 81, "suspicious rcu_dereference_check() usage");
    } else {
    }
  } else {
  }
  rcu_read_unlock_sched_notrace();
  return;
}
}
static int const release_size_per_bo[3U] = { 256, 128, 256};
static int const releases_per_bo[3U] = { 16, 32, 16};
static char const *qxl_get_driver_name(struct fence *fence )
{
  {
  return ("qxl");
}
}
static char const *qxl_get_timeline_name(struct fence *fence )
{
  {
  return ("release");
}
}
static bool qxl_nop_signaling(struct fence *fence )
{
  {
  return (1);
}
}
static long qxl_fence_wait(struct fence *fence , bool intr , long timeout )
{
  struct qxl_device *qdev ;
  struct qxl_release *release ;
  int count ;
  int sc ;
  bool have_drawable_releases ;
  unsigned long cur ;
  unsigned long end ;
  spinlock_t const *__mptr ;
  struct fence const *__mptr___0 ;
  bool tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  struct fence *__ff ;
  {
  count = 0;
  sc = 0;
  end = (unsigned long )jiffies + (unsigned long )timeout;
  __mptr = (spinlock_t const *)fence->lock;
  qdev = (struct qxl_device *)__mptr + 0xfffffffffffff3d0UL;
  __mptr___0 = (struct fence const *)fence;
  release = (struct qxl_release *)__mptr___0;
  have_drawable_releases = release->type == 0;
  retry:
  sc = sc + 1;
  tmp = fence_is_signaled(fence);
  if ((int )tmp) {
    goto signaled;
  } else {
  }
  qxl_io_notify_oom(qdev);
  count = 0;
  goto ldv_41557;
  ldv_41556:
  tmp___0 = qxl_queue_garbage_collect(qdev, 1);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    goto ldv_41555;
  } else {
  }
  tmp___2 = fence_is_signaled(fence);
  if ((int )tmp___2) {
    goto signaled;
  } else {
  }
  count = count + 1;
  ldv_41557: ;
  if (count <= 10) {
    goto ldv_41556;
  } else {
  }
  ldv_41555:
  tmp___3 = fence_is_signaled(fence);
  if ((int )tmp___3) {
    goto signaled;
  } else {
  }
  if ((int )have_drawable_releases || sc <= 3) {
    if (sc > 2) {
      usleep_range(500UL, 1000UL);
    } else {
    }
    if ((long )(end - (unsigned long )jiffies) < 0L) {
      return (0L);
    } else {
    }
    if ((int )have_drawable_releases && sc > 300) {
      __ff = fence;
      printk("\ff %u#%u: failed to wait on release %d after spincount %d\n", __ff->context,
             __ff->seqno, fence->context & 268435455U, sc);
      goto signaled;
    } else {
    }
    goto retry;
  } else {
  }
  signaled:
  cur = jiffies;
  if ((long )(end - cur) < 0L) {
    return (0L);
  } else {
  }
  return ((long )(end - cur));
}
}
static struct fence_ops const qxl_fence_ops =
     {& qxl_get_driver_name, & qxl_get_timeline_name, & qxl_nop_signaling, 0, & qxl_fence_wait,
    0, 0, 0, 0};
static int qxl_release_alloc(struct qxl_device *qdev , int type , struct qxl_release **ret )
{
  struct qxl_release *release ;
  int handle ;
  size_t size ;
  void *tmp ;
  {
  size = 216UL;
  tmp = kmalloc(size, 208U);
  release = (struct qxl_release *)tmp;
  if ((unsigned long )release == (unsigned long )((struct qxl_release *)0)) {
    drm_err("Out of memory\n");
    return (0);
  } else {
  }
  release->base.ops = (struct fence_ops const *)0;
  release->type = type;
  release->release_offset = 0U;
  release->surface_release_id = 0U;
  INIT_LIST_HEAD(& release->bos);
  idr_preload(208U);
  spin_lock(& qdev->release_idr_lock);
  handle = idr_alloc(& qdev->release_idr, (void *)release, 1, 0, 0U);
  qdev->release_seqno = qdev->release_seqno + 1U;
  release->base.seqno = qdev->release_seqno;
  spin_unlock(& qdev->release_idr_lock);
  rcu_read_unlock_sched_notrace();
  if (handle < 0) {
    kfree((void const *)release);
    *ret = (struct qxl_release *)0;
    return (handle);
  } else {
  }
  *ret = release;
  if (qxl_log_level > 0) {
    qxl_io_log(qdev, "allocated release %d\n", handle);
  } else {
  }
  release->id = handle;
  return (handle);
}
}
static void qxl_release_free_list(struct qxl_release *release )
{
  struct qxl_bo_list *entry ;
  struct qxl_bo *bo ;
  struct list_head const *__mptr ;
  struct ttm_buffer_object const *__mptr___0 ;
  int tmp ;
  {
  goto ldv_41590;
  ldv_41589:
  __mptr = (struct list_head const *)release->bos.next;
  entry = (struct qxl_bo_list *)__mptr;
  __mptr___0 = (struct ttm_buffer_object const *)entry->tv.bo;
  bo = (struct qxl_bo *)__mptr___0 + 0xffffffffffffffa8UL;
  qxl_bo_unref(& bo);
  list_del(& entry->tv.head);
  kfree((void const *)entry);
  ldv_41590:
  tmp = list_empty((struct list_head const *)(& release->bos));
  if (tmp == 0) {
    goto ldv_41589;
  } else {
  }
  return;
}
}
void qxl_release_free(struct qxl_device *qdev , struct qxl_release *release )
{
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  {
  if (qxl_log_level > 0) {
    qxl_io_log(qdev, "release %d, type %d\n", release->id, release->type);
  } else {
  }
  if (release->surface_release_id != 0U) {
    qxl_surface_id_dealloc(qdev, release->surface_release_id);
  } else {
  }
  spin_lock(& qdev->release_idr_lock);
  idr_remove(& qdev->release_idr, release->id);
  spin_unlock(& qdev->release_idr_lock);
  if ((unsigned long )release->base.ops != (unsigned long )((struct fence_ops const *)0)) {
    tmp = list_empty((struct list_head const *)(& release->bos));
    __ret_warn_on = tmp != 0;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_release.c",
                         192);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    qxl_release_free_list(release);
    fence_signal(& release->base);
    fence_put(& release->base);
  } else {
    qxl_release_free_list(release);
    kfree((void const *)release);
  }
  return;
}
}
static int qxl_release_bo_alloc(struct qxl_device *qdev , struct qxl_bo **bo )
{
  int ret ;
  {
  ret = qxl_bo_create(qdev, 4096UL, 0, 1, 1U, (struct qxl_surface *)0, bo);
  return (ret);
}
}
int qxl_release_list_add(struct qxl_release *release , struct qxl_bo *bo )
{
  struct qxl_bo_list *entry ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  void *tmp ;
  {
  __mptr = (struct list_head const *)release->bos.next;
  entry = (struct qxl_bo_list *)__mptr;
  goto ldv_41613;
  ldv_41612: ;
  if ((unsigned long )entry->tv.bo == (unsigned long )(& bo->tbo)) {
    return (0);
  } else {
  }
  __mptr___0 = (struct list_head const *)entry->tv.head.next;
  entry = (struct qxl_bo_list *)__mptr___0;
  ldv_41613: ;
  if ((unsigned long )(& entry->tv.head) != (unsigned long )(& release->bos)) {
    goto ldv_41612;
  } else {
  }
  tmp = kmalloc(32UL, 208U);
  entry = (struct qxl_bo_list *)tmp;
  if ((unsigned long )entry == (unsigned long )((struct qxl_bo_list *)0)) {
    return (-12);
  } else {
  }
  qxl_bo_ref(bo);
  entry->tv.bo = & bo->tbo;
  entry->tv.shared = 0;
  list_add_tail(& entry->tv.head, & release->bos);
  return (0);
}
}
static int qxl_release_validate_bo(struct qxl_bo *bo )
{
  int ret ;
  {
  if (bo->pin_count == 0U) {
    qxl_ttm_placement_from_domain(bo, (u32 )bo->type, 0);
    ret = ttm_bo_validate(& bo->tbo, & bo->placement, 1, 0);
    if (ret != 0) {
      return (ret);
    } else {
    }
  } else {
  }
  ret = reservation_object_reserve_shared(bo->tbo.resv);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = qxl_bo_check_id((struct qxl_device *)(bo->gem_base.dev)->dev_private, bo);
  if (ret != 0) {
    return (ret);
  } else {
  }
  return (0);
}
}
int qxl_release_reserve_list(struct qxl_release *release , bool no_intr )
{
  int ret ;
  struct qxl_bo_list *entry ;
  int tmp ;
  struct list_head const *__mptr ;
  struct qxl_bo *bo ;
  struct ttm_buffer_object const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  tmp = list_is_singular((struct list_head const *)(& release->bos));
  if (tmp != 0) {
    return (0);
  } else {
  }
  ret = ttm_eu_reserve_buffers(& release->ticket, & release->bos, (int )((bool )(! ((int )no_intr != 0))),
                               (struct list_head *)0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  __mptr = (struct list_head const *)release->bos.next;
  entry = (struct qxl_bo_list *)__mptr;
  goto ldv_41633;
  ldv_41632:
  __mptr___0 = (struct ttm_buffer_object const *)entry->tv.bo;
  bo = (struct qxl_bo *)__mptr___0 + 0xffffffffffffffa8UL;
  ret = qxl_release_validate_bo(bo);
  if (ret != 0) {
    ttm_eu_backoff_reservation(& release->ticket, & release->bos);
    return (ret);
  } else {
  }
  __mptr___1 = (struct list_head const *)entry->tv.head.next;
  entry = (struct qxl_bo_list *)__mptr___1;
  ldv_41633: ;
  if ((unsigned long )(& entry->tv.head) != (unsigned long )(& release->bos)) {
    goto ldv_41632;
  } else {
  }
  return (0);
}
}
void qxl_release_backoff_reserve_list(struct qxl_release *release )
{
  int tmp ;
  {
  tmp = list_is_singular((struct list_head const *)(& release->bos));
  if (tmp != 0) {
    return;
  } else {
  }
  ttm_eu_backoff_reservation(& release->ticket, & release->bos);
  return;
}
}
int qxl_alloc_surface_release_reserved(struct qxl_device *qdev , enum qxl_surface_cmd_type surface_cmd_type ,
                                       struct qxl_release *create_rel , struct qxl_release **release )
{
  int idr_ret ;
  struct qxl_bo_list *entry ;
  struct list_head const *__mptr ;
  struct qxl_bo *bo ;
  union qxl_release_info *info ;
  struct ttm_buffer_object const *__mptr___0 ;
  int tmp ;
  {
  if ((unsigned int )surface_cmd_type == 1U && (unsigned long )create_rel != (unsigned long )((struct qxl_release *)0)) {
    __mptr = (struct list_head const *)create_rel->bos.next;
    entry = (struct qxl_bo_list *)__mptr;
    idr_ret = qxl_release_alloc(qdev, 1, release);
    if (idr_ret < 0) {
      return (idr_ret);
    } else {
    }
    __mptr___0 = (struct ttm_buffer_object const *)entry->tv.bo;
    bo = qxl_bo_ref((struct qxl_bo *)__mptr___0 + 0xffffffffffffffa8UL);
    (*release)->release_offset = create_rel->release_offset + 64U;
    qxl_release_list_add(*release, bo);
    info = qxl_release_map(qdev, *release);
    info->id = (uint64_t )idr_ret;
    qxl_release_unmap(qdev, *release, info);
    qxl_bo_unref(& bo);
    return (0);
  } else {
  }
  tmp = qxl_alloc_release_reserved(qdev, 41UL, 1, release, (struct qxl_bo **)0);
  return (tmp);
}
}
int qxl_alloc_release_reserved(struct qxl_device *qdev , unsigned long size , int type ,
                               struct qxl_release **release , struct qxl_bo **rbo )
{
  struct qxl_bo *bo ;
  int idr_ret ;
  int ret ;
  union qxl_release_info *info ;
  int cur_idx ;
  {
  ret = 0;
  if (type == 0) {
    cur_idx = 0;
  } else
  if (type == 1) {
    cur_idx = 1;
  } else
  if (type == 2) {
    cur_idx = 2;
  } else {
    drm_err("got illegal type: %d\n", type);
    return (-22);
  }
  idr_ret = qxl_release_alloc(qdev, type, release);
  if (idr_ret < 0) {
    if ((unsigned long )rbo != (unsigned long )((struct qxl_bo **)0)) {
      *rbo = (struct qxl_bo *)0;
    } else {
    }
    return (idr_ret);
  } else {
  }
  ldv_mutex_lock_698(& qdev->release_mutex);
  if (qdev->current_release_bo_offset[cur_idx] + 1 >= (int )releases_per_bo[cur_idx]) {
    qxl_bo_unref((struct qxl_bo **)(& qdev->current_release_bo) + (unsigned long )cur_idx);
    qdev->current_release_bo_offset[cur_idx] = 0;
    qdev->current_release_bo[cur_idx] = (struct qxl_bo *)0;
  } else {
  }
  if ((unsigned long )qdev->current_release_bo[cur_idx] == (unsigned long )((struct qxl_bo *)0)) {
    ret = qxl_release_bo_alloc(qdev, (struct qxl_bo **)(& qdev->current_release_bo) + (unsigned long )cur_idx);
    if (ret != 0) {
      ldv_mutex_unlock_699(& qdev->release_mutex);
      qxl_release_free(qdev, *release);
      return (ret);
    } else {
    }
  } else {
  }
  bo = qxl_bo_ref(qdev->current_release_bo[cur_idx]);
  (*release)->release_offset = (uint32_t )(qdev->current_release_bo_offset[cur_idx] * (int )release_size_per_bo[cur_idx]);
  qdev->current_release_bo_offset[cur_idx] = qdev->current_release_bo_offset[cur_idx] + 1;
  if ((unsigned long )rbo != (unsigned long )((struct qxl_bo **)0)) {
    *rbo = bo;
  } else {
  }
  ldv_mutex_unlock_700(& qdev->release_mutex);
  ret = qxl_release_list_add(*release, bo);
  qxl_bo_unref(& bo);
  if (ret != 0) {
    qxl_release_free(qdev, *release);
    return (ret);
  } else {
  }
  info = qxl_release_map(qdev, *release);
  info->id = (uint64_t )idr_ret;
  qxl_release_unmap(qdev, *release, info);
  return (ret);
}
}
struct qxl_release *qxl_release_from_id_locked(struct qxl_device *qdev , uint64_t id )
{
  struct qxl_release *release ;
  void *tmp ;
  {
  spin_lock(& qdev->release_idr_lock);
  tmp = idr_find___0(& qdev->release_idr, (int )id);
  release = (struct qxl_release *)tmp;
  spin_unlock(& qdev->release_idr_lock);
  if ((unsigned long )release == (unsigned long )((struct qxl_release *)0)) {
    drm_err("failed to find id in release_idr\n");
    return ((struct qxl_release *)0);
  } else {
  }
  return (release);
}
}
union qxl_release_info *qxl_release_map(struct qxl_device *qdev , struct qxl_release *release )
{
  void *ptr ;
  union qxl_release_info *info ;
  struct qxl_bo_list *entry ;
  struct list_head const *__mptr ;
  struct qxl_bo *bo ;
  struct ttm_buffer_object const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)release->bos.next;
  entry = (struct qxl_bo_list *)__mptr;
  __mptr___0 = (struct ttm_buffer_object const *)entry->tv.bo;
  bo = (struct qxl_bo *)__mptr___0 + 0xffffffffffffffa8UL;
  ptr = qxl_bo_kmap_atomic_page(qdev, bo, (int )release->release_offset & 4096);
  if ((unsigned long )ptr == (unsigned long )((void *)0)) {
    return ((union qxl_release_info *)0);
  } else {
  }
  info = (union qxl_release_info *)(ptr + ((unsigned long )release->release_offset & 0xffffffffffffefffUL));
  return (info);
}
}
void qxl_release_unmap(struct qxl_device *qdev , struct qxl_release *release , union qxl_release_info *info )
{
  struct qxl_bo_list *entry ;
  struct list_head const *__mptr ;
  struct qxl_bo *bo ;
  struct ttm_buffer_object const *__mptr___0 ;
  void *ptr ;
  {
  __mptr = (struct list_head const *)release->bos.next;
  entry = (struct qxl_bo_list *)__mptr;
  __mptr___0 = (struct ttm_buffer_object const *)entry->tv.bo;
  bo = (struct qxl_bo *)__mptr___0 + 0xffffffffffffffa8UL;
  ptr = (void *)info + - ((unsigned long )release->release_offset & 0xffffffffffffefffUL);
  qxl_bo_kunmap_atomic_page(qdev, bo, ptr);
  return;
}
}
void qxl_release_fence_buffer_objects(struct qxl_release *release )
{
  struct ttm_buffer_object *bo ;
  struct ttm_bo_global *glob ;
  struct ttm_bo_device *bdev ;
  struct ttm_bo_driver *driver ;
  struct qxl_bo *qbo ;
  struct ttm_validate_buffer *entry ;
  struct qxl_device *qdev ;
  int tmp ;
  int tmp___0 ;
  struct list_head const *__mptr ;
  struct ttm_bo_device const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct ttm_buffer_object const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  {
  tmp = list_is_singular((struct list_head const *)(& release->bos));
  if (tmp != 0) {
    return;
  } else {
    tmp___0 = list_empty((struct list_head const *)(& release->bos));
    if (tmp___0 != 0) {
      return;
    } else {
    }
  }
  __mptr = (struct list_head const *)release->bos.next;
  bo = ((struct ttm_validate_buffer *)__mptr)->bo;
  bdev = bo->bdev;
  __mptr___0 = (struct ttm_bo_device const *)bdev;
  qdev = (struct qxl_device *)__mptr___0 + 0xffffffffffffff18UL;
  fence_init(& release->base, & qxl_fence_ops, & qdev->release_lock, (unsigned int )release->id | 4026531840U,
             release->base.seqno);
  trace_fence_emit(& release->base);
  driver = bdev->driver;
  glob = bo->glob;
  spin_lock(& glob->lru_lock);
  __mptr___1 = (struct list_head const *)release->bos.next;
  entry = (struct ttm_validate_buffer *)__mptr___1;
  goto ldv_41714;
  ldv_41713:
  bo = entry->bo;
  __mptr___2 = (struct ttm_buffer_object const *)bo;
  qbo = (struct qxl_bo *)__mptr___2 + 0xffffffffffffffa8UL;
  reservation_object_add_shared_fence(bo->resv, & release->base);
  ttm_bo_add_to_lru(bo);
  __ttm_bo_unreserve(bo);
  __mptr___3 = (struct list_head const *)entry->head.next;
  entry = (struct ttm_validate_buffer *)__mptr___3;
  ldv_41714: ;
  if ((unsigned long )(& entry->head) != (unsigned long )(& release->bos)) {
    goto ldv_41713;
  } else {
  }
  spin_unlock(& glob->lru_lock);
  ww_acquire_fini(& release->ticket);
  return;
}
}
void ldv_initialize_fence_ops_4(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(88UL);
  qxl_fence_ops_group0 = (struct fence *)tmp;
  return;
}
}
void ldv_main_exported_4(void)
{
  bool ldvarg83 ;
  long ldvarg82 ;
  int tmp ;
  {
  ldv_memset((void *)(& ldvarg83), 0, 1UL);
  ldv_memset((void *)(& ldvarg82), 0, 8UL);
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_4 == 1) {
    qxl_fence_wait(qxl_fence_ops_group0, (int )ldvarg83, ldvarg82);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_41725;
  case 1: ;
  if (ldv_state_variable_4 == 1) {
    qxl_get_timeline_name(qxl_fence_ops_group0);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_41725;
  case 2: ;
  if (ldv_state_variable_4 == 1) {
    qxl_get_driver_name(qxl_fence_ops_group0);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_41725;
  case 3: ;
  if (ldv_state_variable_4 == 1) {
    qxl_nop_signaling(qxl_fence_ops_group0);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_41725;
  default:
  ldv_stop();
  }
  ldv_41725: ;
  return;
}
}
bool ldv_queue_work_on_677(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_678(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_679(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_680(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_681(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_682(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_683(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_684(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_685(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
void ldv_mutex_unlock_686(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_687(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_688(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_689(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_690(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_691(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_fb_info(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_692(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_base_of_ww_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_693(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
int ldv_mutex_trylock_694(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_697(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_698(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_release_mutex_of_qxl_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_699(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_release_mutex_of_qxl_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_700(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_release_mutex_of_qxl_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
void *ldv_err_ptr(long error ) ;
__inline static void *ERR_PTR(long error ) ;
int ldv_mutex_trylock_736(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_745(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_734(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_737(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_738(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_741(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_742(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_748(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_744(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_733(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_735(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_739(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_740(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_743(struct mutex *ldv_func_arg1 ) ;
bool ldv_queue_work_on_728(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_730(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_729(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_732(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_731(struct workqueue_struct *ldv_func_arg1 ) ;
int qxl_gem_prime_pin(struct drm_gem_object *obj )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  __ret_warn_once = 1;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_prime.c",
                        32, "not implemented");
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
  return (-38);
}
}
void qxl_gem_prime_unpin(struct drm_gem_object *obj )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  __ret_warn_once = 1;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_prime.c",
                        38, "not implemented");
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
  return;
}
}
struct sg_table *qxl_gem_prime_get_sg_table(struct drm_gem_object *obj )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  void *tmp___2 ;
  {
  __ret_warn_once = 1;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_prime.c",
                        44, "not implemented");
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
  tmp___2 = ERR_PTR(-38L);
  return ((struct sg_table *)tmp___2);
}
}
struct drm_gem_object *qxl_gem_prime_import_sg_table(struct drm_device *dev , struct dma_buf_attachment *attach ,
                                                     struct sg_table *table )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  void *tmp___2 ;
  {
  __ret_warn_once = 1;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_prime.c",
                        52, "not implemented");
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
  tmp___2 = ERR_PTR(-38L);
  return ((struct drm_gem_object *)tmp___2);
}
}
void *qxl_gem_prime_vmap(struct drm_gem_object *obj )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  void *tmp___2 ;
  {
  __ret_warn_once = 1;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_prime.c",
                        58, "not implemented");
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
  tmp___2 = ERR_PTR(-38L);
  return (tmp___2);
}
}
void qxl_gem_prime_vunmap(struct drm_gem_object *obj , void *vaddr )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  __ret_warn_once = 1;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_prime.c",
                        64, "not implemented");
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
  return;
}
}
int qxl_gem_prime_mmap(struct drm_gem_object *obj , struct vm_area_struct *area )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  __ret_warn_once = 1;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10358/dscv_tempdir/dscv/ri/32_7a/drivers/gpu/drm/qxl/qxl_prime.c",
                        70, "not implemented");
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
  return (38);
}
}
__inline static void *ERR_PTR(long error )
{
  void *tmp ;
  {
  tmp = ldv_err_ptr(error);
  return (tmp);
}
}
bool ldv_queue_work_on_728(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_729(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_730(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_731(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_732(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_733(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_734(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_735(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_736(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
void ldv_mutex_unlock_737(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_738(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_739(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_740(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_741(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_742(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_fb_info(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_743(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_base_of_ww_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_744(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
int ldv_mutex_trylock_745(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_base_of_ww_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_748(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_struct_mutex_of_drm_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
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
__inline static int ldv_undef_int_negative(void)
{
  int ret ;
  int tmp ;
  {
  tmp = ldv_undef_int();
  ret = tmp;
  if (ret >= 0) {
    ldv_stop();
  } else {
  }
  return (ret);
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
static int ldv_mutex_async_io_mutex_of_qxl_device = 1;
int ldv_mutex_lock_interruptible_async_io_mutex_of_qxl_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_async_io_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_async_io_mutex_of_qxl_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_async_io_mutex_of_qxl_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_async_io_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_async_io_mutex_of_qxl_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_async_io_mutex_of_qxl_device(struct mutex *lock )
{
  {
  if (ldv_mutex_async_io_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_async_io_mutex_of_qxl_device = 2;
  return;
}
}
int ldv_mutex_trylock_async_io_mutex_of_qxl_device(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_async_io_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_async_io_mutex_of_qxl_device = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_async_io_mutex_of_qxl_device(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_async_io_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_async_io_mutex_of_qxl_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_async_io_mutex_of_qxl_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_async_io_mutex_of_qxl_device == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_async_io_mutex_of_qxl_device(struct mutex *lock )
{
  {
  if (ldv_mutex_async_io_mutex_of_qxl_device != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_async_io_mutex_of_qxl_device = 1;
  return;
}
}
void ldv_usb_lock_device_async_io_mutex_of_qxl_device(void)
{
  {
  ldv_mutex_lock_async_io_mutex_of_qxl_device((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_async_io_mutex_of_qxl_device(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_async_io_mutex_of_qxl_device((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_async_io_mutex_of_qxl_device(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_async_io_mutex_of_qxl_device((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_async_io_mutex_of_qxl_device(void)
{
  {
  ldv_mutex_unlock_async_io_mutex_of_qxl_device((struct mutex *)0);
  return;
}
}
static int ldv_mutex_base_of_ww_mutex = 1;
int ldv_mutex_lock_interruptible_base_of_ww_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_base_of_ww_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_base_of_ww_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_base_of_ww_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_base_of_ww_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_base_of_ww_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_base_of_ww_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_base_of_ww_mutex != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_base_of_ww_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_base_of_ww_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_base_of_ww_mutex != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_base_of_ww_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_base_of_ww_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_base_of_ww_mutex != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_base_of_ww_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_base_of_ww_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_base_of_ww_mutex == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_base_of_ww_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_base_of_ww_mutex != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_base_of_ww_mutex = 1;
  return;
}
}
void ldv_usb_lock_device_base_of_ww_mutex(void)
{
  {
  ldv_mutex_lock_base_of_ww_mutex((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_base_of_ww_mutex(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_base_of_ww_mutex((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_base_of_ww_mutex(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_base_of_ww_mutex((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_base_of_ww_mutex(void)
{
  {
  ldv_mutex_unlock_base_of_ww_mutex((struct mutex *)0);
  return;
}
}
static int ldv_mutex_i_mutex_of_inode = 1;
int ldv_mutex_lock_interruptible_i_mutex_of_inode(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_i_mutex_of_inode = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_i_mutex_of_inode(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_i_mutex_of_inode = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock )
{
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_i_mutex_of_inode = 2;
  return;
}
}
int ldv_mutex_trylock_i_mutex_of_inode(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_i_mutex_of_inode = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_i_mutex_of_inode(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_i_mutex_of_inode = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_i_mutex_of_inode(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_i_mutex_of_inode == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock )
{
  {
  if (ldv_mutex_i_mutex_of_inode != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_i_mutex_of_inode = 1;
  return;
}
}
void ldv_usb_lock_device_i_mutex_of_inode(void)
{
  {
  ldv_mutex_lock_i_mutex_of_inode((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_i_mutex_of_inode(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_i_mutex_of_inode((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_i_mutex_of_inode(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_i_mutex_of_inode((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_i_mutex_of_inode(void)
{
  {
  ldv_mutex_unlock_i_mutex_of_inode((struct mutex *)0);
  return;
}
}
static int ldv_mutex_lock = 1;
int ldv_mutex_lock_interruptible_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
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
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
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
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock = 2;
  return;
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
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
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
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
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
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
  if (ldv_mutex_lock != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock = 1;
  return;
}
}
void ldv_usb_lock_device_lock(void)
{
  {
  ldv_mutex_lock_lock((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_lock(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_lock((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_lock(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_lock((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_lock(void)
{
  {
  ldv_mutex_unlock_lock((struct mutex *)0);
  return;
}
}
static int ldv_mutex_lock_of_fb_info = 1;
int ldv_mutex_lock_interruptible_lock_of_fb_info(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_fb_info != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_lock_of_fb_info = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock_of_fb_info(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_fb_info != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_lock_of_fb_info = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock_of_fb_info(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_fb_info != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock_of_fb_info = 2;
  return;
}
}
int ldv_mutex_trylock_lock_of_fb_info(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock_of_fb_info != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_lock_of_fb_info = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_fb_info(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock_of_fb_info != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock_of_fb_info = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock_of_fb_info(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_fb_info == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_lock_of_fb_info(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_fb_info != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock_of_fb_info = 1;
  return;
}
}
void ldv_usb_lock_device_lock_of_fb_info(void)
{
  {
  ldv_mutex_lock_lock_of_fb_info((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_lock_of_fb_info(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_lock_of_fb_info((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_lock_of_fb_info(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_lock_of_fb_info((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_lock_of_fb_info(void)
{
  {
  ldv_mutex_unlock_lock_of_fb_info((struct mutex *)0);
  return;
}
}
static int ldv_mutex_mutex_of_device = 1;
int ldv_mutex_lock_interruptible_mutex_of_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
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
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
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
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_mutex_of_device = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
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
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
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
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
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
  if (ldv_mutex_mutex_of_device != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_mutex_of_device = 1;
  return;
}
}
void ldv_usb_lock_device_mutex_of_device(void)
{
  {
  ldv_mutex_lock_mutex_of_device((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_mutex_of_device(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_mutex_of_device((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_mutex_of_device(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_mutex_of_device((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_mutex_of_device(void)
{
  {
  ldv_mutex_unlock_mutex_of_device((struct mutex *)0);
  return;
}
}
static int ldv_mutex_mutex_of_qxl_gem = 1;
int ldv_mutex_lock_interruptible_mutex_of_qxl_gem(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_qxl_gem != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_mutex_of_qxl_gem = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_qxl_gem(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_qxl_gem != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_mutex_of_qxl_gem = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_qxl_gem(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_qxl_gem != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_mutex_of_qxl_gem = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_qxl_gem(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_qxl_gem != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_mutex_of_qxl_gem = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_qxl_gem(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_qxl_gem != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_qxl_gem = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_qxl_gem(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_qxl_gem == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_qxl_gem(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_qxl_gem != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_mutex_of_qxl_gem = 1;
  return;
}
}
void ldv_usb_lock_device_mutex_of_qxl_gem(void)
{
  {
  ldv_mutex_lock_mutex_of_qxl_gem((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_mutex_of_qxl_gem(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_mutex_of_qxl_gem((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_mutex_of_qxl_gem(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_mutex_of_qxl_gem((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_mutex_of_qxl_gem(void)
{
  {
  ldv_mutex_unlock_mutex_of_qxl_gem((struct mutex *)0);
  return;
}
}
static int ldv_mutex_release_mutex_of_qxl_device = 1;
int ldv_mutex_lock_interruptible_release_mutex_of_qxl_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_release_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_release_mutex_of_qxl_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_release_mutex_of_qxl_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_release_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_release_mutex_of_qxl_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_release_mutex_of_qxl_device(struct mutex *lock )
{
  {
  if (ldv_mutex_release_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_release_mutex_of_qxl_device = 2;
  return;
}
}
int ldv_mutex_trylock_release_mutex_of_qxl_device(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_release_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_release_mutex_of_qxl_device = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_release_mutex_of_qxl_device(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_release_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_release_mutex_of_qxl_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_release_mutex_of_qxl_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_release_mutex_of_qxl_device == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_release_mutex_of_qxl_device(struct mutex *lock )
{
  {
  if (ldv_mutex_release_mutex_of_qxl_device != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_release_mutex_of_qxl_device = 1;
  return;
}
}
void ldv_usb_lock_device_release_mutex_of_qxl_device(void)
{
  {
  ldv_mutex_lock_release_mutex_of_qxl_device((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_release_mutex_of_qxl_device(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_release_mutex_of_qxl_device((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_release_mutex_of_qxl_device(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_release_mutex_of_qxl_device((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_release_mutex_of_qxl_device(void)
{
  {
  ldv_mutex_unlock_release_mutex_of_qxl_device((struct mutex *)0);
  return;
}
}
static int ldv_mutex_struct_mutex_of_drm_device = 1;
int ldv_mutex_lock_interruptible_struct_mutex_of_drm_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_struct_mutex_of_drm_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_struct_mutex_of_drm_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_struct_mutex_of_drm_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_struct_mutex_of_drm_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_struct_mutex_of_drm_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_struct_mutex_of_drm_device(struct mutex *lock )
{
  {
  if (ldv_mutex_struct_mutex_of_drm_device != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_struct_mutex_of_drm_device = 2;
  return;
}
}
int ldv_mutex_trylock_struct_mutex_of_drm_device(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_struct_mutex_of_drm_device != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_struct_mutex_of_drm_device = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_struct_mutex_of_drm_device(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_struct_mutex_of_drm_device != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_struct_mutex_of_drm_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_struct_mutex_of_drm_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_struct_mutex_of_drm_device == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_struct_mutex_of_drm_device(struct mutex *lock )
{
  {
  if (ldv_mutex_struct_mutex_of_drm_device != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_struct_mutex_of_drm_device = 1;
  return;
}
}
void ldv_usb_lock_device_struct_mutex_of_drm_device(void)
{
  {
  ldv_mutex_lock_struct_mutex_of_drm_device((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_struct_mutex_of_drm_device(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_struct_mutex_of_drm_device((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_struct_mutex_of_drm_device(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_struct_mutex_of_drm_device((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_struct_mutex_of_drm_device(void)
{
  {
  ldv_mutex_unlock_struct_mutex_of_drm_device((struct mutex *)0);
  return;
}
}
static int ldv_mutex_surf_evict_mutex_of_qxl_device = 1;
int ldv_mutex_lock_interruptible_surf_evict_mutex_of_qxl_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_surf_evict_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_surf_evict_mutex_of_qxl_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_surf_evict_mutex_of_qxl_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_surf_evict_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_surf_evict_mutex_of_qxl_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_surf_evict_mutex_of_qxl_device(struct mutex *lock )
{
  {
  if (ldv_mutex_surf_evict_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_surf_evict_mutex_of_qxl_device = 2;
  return;
}
}
int ldv_mutex_trylock_surf_evict_mutex_of_qxl_device(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_surf_evict_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_surf_evict_mutex_of_qxl_device = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_surf_evict_mutex_of_qxl_device(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_surf_evict_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_surf_evict_mutex_of_qxl_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_surf_evict_mutex_of_qxl_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_surf_evict_mutex_of_qxl_device == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_surf_evict_mutex_of_qxl_device(struct mutex *lock )
{
  {
  if (ldv_mutex_surf_evict_mutex_of_qxl_device != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_surf_evict_mutex_of_qxl_device = 1;
  return;
}
}
void ldv_usb_lock_device_surf_evict_mutex_of_qxl_device(void)
{
  {
  ldv_mutex_lock_surf_evict_mutex_of_qxl_device((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_surf_evict_mutex_of_qxl_device(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_surf_evict_mutex_of_qxl_device((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_surf_evict_mutex_of_qxl_device(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_surf_evict_mutex_of_qxl_device((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_surf_evict_mutex_of_qxl_device(void)
{
  {
  ldv_mutex_unlock_surf_evict_mutex_of_qxl_device((struct mutex *)0);
  return;
}
}
static int ldv_mutex_update_area_mutex_of_qxl_device = 1;
int ldv_mutex_lock_interruptible_update_area_mutex_of_qxl_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_update_area_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_update_area_mutex_of_qxl_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_update_area_mutex_of_qxl_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_update_area_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_update_area_mutex_of_qxl_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_update_area_mutex_of_qxl_device(struct mutex *lock )
{
  {
  if (ldv_mutex_update_area_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_update_area_mutex_of_qxl_device = 2;
  return;
}
}
int ldv_mutex_trylock_update_area_mutex_of_qxl_device(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_update_area_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_update_area_mutex_of_qxl_device = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_update_area_mutex_of_qxl_device(atomic_t *cnt ,
                                                                  struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_update_area_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_update_area_mutex_of_qxl_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_update_area_mutex_of_qxl_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_update_area_mutex_of_qxl_device == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_update_area_mutex_of_qxl_device(struct mutex *lock )
{
  {
  if (ldv_mutex_update_area_mutex_of_qxl_device != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_update_area_mutex_of_qxl_device = 1;
  return;
}
}
void ldv_usb_lock_device_update_area_mutex_of_qxl_device(void)
{
  {
  ldv_mutex_lock_update_area_mutex_of_qxl_device((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_update_area_mutex_of_qxl_device(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_update_area_mutex_of_qxl_device((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_update_area_mutex_of_qxl_device(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_update_area_mutex_of_qxl_device((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_update_area_mutex_of_qxl_device(void)
{
  {
  ldv_mutex_unlock_update_area_mutex_of_qxl_device((struct mutex *)0);
  return;
}
}
static int ldv_mutex_update_lock_of_backlight_device = 1;
int ldv_mutex_lock_interruptible_update_lock_of_backlight_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_update_lock_of_backlight_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_update_lock_of_backlight_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_update_lock_of_backlight_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_update_lock_of_backlight_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_update_lock_of_backlight_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_update_lock_of_backlight_device(struct mutex *lock )
{
  {
  if (ldv_mutex_update_lock_of_backlight_device != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_update_lock_of_backlight_device = 2;
  return;
}
}
int ldv_mutex_trylock_update_lock_of_backlight_device(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_update_lock_of_backlight_device != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_update_lock_of_backlight_device = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_update_lock_of_backlight_device(atomic_t *cnt ,
                                                                  struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_update_lock_of_backlight_device != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_update_lock_of_backlight_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_update_lock_of_backlight_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_update_lock_of_backlight_device == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_update_lock_of_backlight_device(struct mutex *lock )
{
  {
  if (ldv_mutex_update_lock_of_backlight_device != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_update_lock_of_backlight_device = 1;
  return;
}
}
void ldv_usb_lock_device_update_lock_of_backlight_device(void)
{
  {
  ldv_mutex_lock_update_lock_of_backlight_device((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_update_lock_of_backlight_device(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_update_lock_of_backlight_device((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_update_lock_of_backlight_device(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_update_lock_of_backlight_device((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_update_lock_of_backlight_device(void)
{
  {
  ldv_mutex_unlock_update_lock_of_backlight_device((struct mutex *)0);
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_async_io_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_base_of_ww_mutex != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_lock_of_fb_info != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_mutex_of_qxl_gem != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_release_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_struct_mutex_of_drm_device != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_surf_evict_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_update_area_mutex_of_qxl_device != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_update_lock_of_backlight_device != 1) {
    ldv_error();
  } else {
  }
  return;
}
}
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __copy_from_user_overflow() {
  return;
}
long __VERIFIER_nondet_long(void);
long int __copy_user_nocache(void *arg0, const void *arg1, unsigned int arg2, int arg3) {
  return __VERIFIER_nondet_long();
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
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __might_fault(const char *arg0, int arg1) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int __ww_mutex_lock(struct ww_mutex *arg0, struct ww_acquire_ctx *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __ww_mutex_lock_interruptible(struct ww_mutex *arg0, struct ww_acquire_ctx *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
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
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void console_lock() {
  return;
}
void console_unlock() {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
u32 crc32_le(u32 arg0, const unsigned char *arg1, size_t arg2) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int debug_locks_off() {
  return __VERIFIER_nondet_int();
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
void drm_connector_cleanup(struct drm_connector *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_connector_init(struct drm_device *arg0, struct drm_connector *arg1, const struct drm_connector_funcs *arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_connector_register(struct drm_connector *arg0) {
  return __VERIFIER_nondet_int();
}
void drm_connector_unregister(struct drm_connector *arg0) {
  return;
}
void drm_crtc_cleanup(struct drm_crtc *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_crtc_helper_set_config(struct drm_mode_set *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_crtc_init(struct drm_device *arg0, struct drm_crtc *arg1, const struct drm_crtc_funcs *arg2) {
  return __VERIFIER_nondet_int();
}
struct drm_display_mode *drm_cvt_mode(struct drm_device *arg0, int arg1, int arg2, int arg3, bool arg4, bool arg5, bool arg6) {
  return ldv_malloc(sizeof(struct drm_display_mode));
}
int __VERIFIER_nondet_int(void);
int drm_debugfs_create_files(const struct drm_info_list *arg0, int arg1, struct dentry *arg2, struct drm_minor *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_debugfs_remove_files(const struct drm_info_list *arg0, int arg1, struct drm_minor *arg2) {
  return __VERIFIER_nondet_int();
}
void drm_encoder_cleanup(struct drm_encoder *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_encoder_init(struct drm_device *arg0, struct drm_encoder *arg1, const struct drm_encoder_funcs *arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void drm_err(const char *arg0, ...) {
  return;
}
void drm_fb_get_bpp_depth(uint32_t arg0, unsigned int *arg1, int *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_fb_helper_blank(int arg0, struct fb_info *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_fb_helper_check_var(struct fb_var_screeninfo *arg0, struct fb_info *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_fb_helper_debug_enter(struct fb_info *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_fb_helper_debug_leave(struct fb_info *arg0) {
  return __VERIFIER_nondet_int();
}
void drm_fb_helper_fill_fix(struct fb_info *arg0, uint32_t arg1, uint32_t arg2) {
  return;
}
void drm_fb_helper_fill_var(struct fb_info *arg0, struct drm_fb_helper *arg1, uint32_t arg2, uint32_t arg3) {
  return;
}
void drm_fb_helper_fini(struct drm_fb_helper *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_fb_helper_init(struct drm_device *arg0, struct drm_fb_helper *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_fb_helper_initial_config(struct drm_fb_helper *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_fb_helper_pan_display(struct fb_var_screeninfo *arg0, struct fb_info *arg1) {
  return __VERIFIER_nondet_int();
}
void drm_fb_helper_prepare(struct drm_device *arg0, struct drm_fb_helper *arg1, const struct drm_fb_helper_funcs *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_fb_helper_set_par(struct fb_info *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_fb_helper_setcmap(struct fb_cmap *arg0, struct fb_info *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_fb_helper_single_add_all_connectors(struct drm_fb_helper *arg0) {
  return __VERIFIER_nondet_int();
}
void drm_framebuffer_cleanup(struct drm_framebuffer *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_framebuffer_init(struct drm_device *arg0, struct drm_framebuffer *arg1, const struct drm_framebuffer_funcs *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_gem_dumb_destroy(struct drm_file *arg0, struct drm_device *arg1, uint32_t arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_gem_handle_create(struct drm_file *arg0, struct drm_gem_object *arg1, u32 *arg2) {
  return __VERIFIER_nondet_int();
}
void drm_gem_object_free(struct kref *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_gem_object_init(struct drm_device *arg0, struct drm_gem_object *arg1, size_t arg2) {
  return __VERIFIER_nondet_int();
}
struct drm_gem_object *drm_gem_object_lookup(struct drm_device *arg0, struct drm_file *arg1, u32 arg2) {
  return ldv_malloc(sizeof(struct drm_gem_object));
}
void drm_gem_object_release(struct drm_gem_object *arg0) {
  return;
}
struct dma_buf *drm_gem_prime_export(struct drm_device *arg0, struct drm_gem_object *arg1, int arg2) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int drm_gem_prime_fd_to_handle(struct drm_device *arg0, struct drm_file *arg1, int arg2, uint32_t *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_gem_prime_handle_to_fd(struct drm_device *arg0, struct drm_file *arg1, uint32_t arg2, uint32_t arg3, int *arg4) {
  return __VERIFIER_nondet_int();
}
struct drm_gem_object *drm_gem_prime_import(struct drm_device *arg0, struct dma_buf *arg1) {
  return ldv_malloc(sizeof(struct drm_gem_object));
}
int __VERIFIER_nondet_int(void);
int drm_get_pci_dev(struct pci_dev *arg0, const struct pci_device_id *arg1, struct drm_driver *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_global_item_ref(struct drm_global_reference *arg0) {
  return __VERIFIER_nondet_int();
}
void drm_global_item_unref(struct drm_global_reference *arg0) {
  return;
}
void drm_helper_connector_dpms(struct drm_connector *arg0, int arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool drm_helper_hpd_irq_event(struct drm_device *arg0) {
  return __VERIFIER_nondet_bool();
}
void drm_helper_mode_fill_fb_struct(struct drm_framebuffer *arg0, struct drm_mode_fb_cmd2 *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_helper_probe_single_connector_modes_nomerge(struct drm_connector *arg0, uint32_t arg1, uint32_t arg2) {
  return __VERIFIER_nondet_int();
}
void drm_helper_resume_force_mode(struct drm_device *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int drm_ioctl(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int drm_irq_install(struct drm_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void drm_kms_helper_hotplug_event(struct drm_device *arg0) {
  return;
}
void drm_kms_helper_poll_disable(struct drm_device *arg0) {
  return;
}
void drm_kms_helper_poll_enable(struct drm_device *arg0) {
  return;
}
void drm_kms_helper_poll_init(struct drm_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_mm_dump_table(struct seq_file *arg0, struct drm_mm *arg1) {
  return __VERIFIER_nondet_int();
}
void drm_mode_config_cleanup(struct drm_device *arg0) {
  return;
}
void drm_mode_config_init(struct drm_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_mode_connector_attach_encoder(struct drm_connector *arg0, struct drm_encoder *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_mode_create_suggested_offset_properties(struct drm_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_mode_crtc_set_gamma_size(struct drm_crtc *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
uint32_t drm_mode_legacy_fb_format(uint32_t arg0, uint32_t arg1) {
  return __VERIFIER_nondet_uint();
}
void drm_mode_probed_add(struct drm_connector *arg0, struct drm_display_mode *arg1) {
  return;
}
void drm_modeset_lock_all(struct drm_device *arg0) {
  return;
}
void drm_modeset_unlock_all(struct drm_device *arg0) {
  return;
}
void drm_object_attach_property(struct drm_mode_object *arg0, struct drm_property *arg1, uint64_t arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_object_property_set_value(struct drm_mode_object *arg0, struct drm_property *arg1, uint64_t arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_open(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
void drm_pci_exit(struct drm_driver *arg0, struct pci_driver *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_pci_init(struct drm_driver *arg0, struct pci_driver *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_pci_set_busid(struct drm_device *arg0, struct drm_master *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int drm_poll(struct file *arg0, struct poll_table_struct *arg1) {
  return __VERIFIER_nondet_uint();
}
struct drm_property *drm_property_create_range(struct drm_device *arg0, int arg1, const char *arg2, uint64_t arg3, uint64_t arg4) {
  return ldv_malloc(sizeof(struct drm_property));
}
void drm_put_dev(struct drm_device *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
ssize_t drm_read(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int drm_release(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
void drm_send_vblank_event(struct drm_device *arg0, int arg1, struct drm_pending_vblank_event *arg2) {
  return;
}
void drm_ut_debug_printk(const char *arg0, const char *arg1, ...) {
  return;
}
void drm_vblank_cleanup(struct drm_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int drm_vblank_get(struct drm_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int drm_vblank_init(struct drm_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void drm_vblank_put(struct drm_device *arg0, int arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool drm_vma_node_is_allowed(struct drm_vma_offset_node *arg0, struct file *arg1) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int fb_alloc_cmap(struct fb_cmap *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void fb_deferred_io_init(struct fb_info *arg0) {
  return;
}
void fb_set_suspend(struct fb_info *arg0, int arg1) {
  return;
}
void fence_init(struct fence *arg0, const struct fence_ops *arg1, spinlock_t *arg2, unsigned int arg3, unsigned int arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int fence_signal(struct fence *arg0) {
  return __VERIFIER_nondet_int();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool flush_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
struct fb_info *framebuffer_alloc(size_t arg0, struct device *arg1) {
  return ldv_malloc(sizeof(struct fb_info));
}
void framebuffer_release(struct fb_info *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int idr_alloc(struct idr *arg0, void *arg1, int arg2, int arg3, gfp_t arg4) {
  return __VERIFIER_nondet_int();
}
void *idr_find_slowpath(struct idr *arg0, int arg1) {
  return ldv_malloc(0UL);
}
void idr_init(struct idr *arg0) {
  return;
}
void idr_preload(gfp_t arg0) {
  return;
}
void idr_remove(struct idr *arg0, int arg1) {
  return;
}
void *idr_replace(struct idr *arg0, void *arg1, int arg2) {
  return ldv_malloc(0UL);
}
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void *ioremap_wc(resource_size_t arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void iounmap(volatile void *arg0) {
  return;
}
void ldv__builtin_va_end(__builtin_va_list *arg0) {
  return;
}
void ldv__builtin_va_start(__builtin_va_list *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_bind_15() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_complete_20() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_connect_15() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_late_20() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_noirq_20() {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_late_20() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_noirq_20() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_prepare_20() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_11() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_12() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_16() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_17() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_15() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_early_20() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_noirq_20() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_early_20() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_noirq_20() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_shutdown_19() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_late_20() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_noirq_20() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_early_20() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_noirq_20() {
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
void mutex_lock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_lock_interruptible(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mutex_trylock(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_restore_state(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_save_state(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_set_power_state(struct pci_dev *arg0, pci_power_t arg1) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
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
int __VERIFIER_nondet_int(void);
int rcu_read_lock_held() {
  return __VERIFIER_nondet_int();
}
void reservation_object_add_shared_fence(struct reservation_object *arg0, struct fence *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int reservation_object_reserve_shared(struct reservation_object *arg0) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void sys_copyarea(struct fb_info *arg0, const struct fb_copyarea *arg1) {
  return;
}
void sys_fillrect(struct fb_info *arg0, const struct fb_fillrect *arg1) {
  return;
}
void sys_imageblit(struct fb_info *arg0, const struct fb_image *arg1) {
  return;
}
void ttm_bo_add_to_lru(struct ttm_buffer_object *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ttm_bo_clean_mm(struct ttm_bo_device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void ttm_bo_del_sub_from_lru(struct ttm_buffer_object *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ttm_bo_device_init(struct ttm_bo_device *arg0, struct ttm_bo_global *arg1, struct ttm_bo_driver *arg2, struct address_space *arg3, uint64_t arg4, bool arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ttm_bo_device_release(struct ttm_bo_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ttm_bo_evict_mm(struct ttm_bo_device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ttm_bo_init(struct ttm_bo_device *arg0, struct ttm_buffer_object *arg1, unsigned long arg2, enum ttm_bo_type arg3, struct ttm_placement *arg4, uint32_t arg5, bool arg6, struct file *arg7, size_t arg8, struct sg_table *arg9, struct reservation_object *arg10, void (*arg11)(struct ttm_buffer_object *)) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ttm_bo_init_mm(struct ttm_bo_device *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ttm_bo_kmap(struct ttm_buffer_object *arg0, unsigned long arg1, unsigned long arg2, struct ttm_bo_kmap_obj *arg3) {
  return __VERIFIER_nondet_int();
}
void ttm_bo_kunmap(struct ttm_bo_kmap_obj *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ttm_bo_mmap(struct file *arg0, struct vm_area_struct *arg1, struct ttm_bo_device *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ttm_bo_move_memcpy(struct ttm_buffer_object *arg0, bool arg1, bool arg2, struct ttm_mem_reg *arg3) {
  return __VERIFIER_nondet_int();
}
void ttm_bo_unref(struct ttm_buffer_object **arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ttm_bo_validate(struct ttm_buffer_object *arg0, struct ttm_placement *arg1, bool arg2, bool arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ttm_bo_wait(struct ttm_buffer_object *arg0, bool arg1, bool arg2, bool arg3) {
  return __VERIFIER_nondet_int();
}
void ttm_dma_tt_fini(struct ttm_dma_tt *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ttm_dma_tt_init(struct ttm_dma_tt *arg0, struct ttm_bo_device *arg1, unsigned long arg2, uint32_t arg3, struct page *arg4) {
  return __VERIFIER_nondet_int();
}
void ttm_eu_backoff_reservation(struct ww_acquire_ctx *arg0, struct list_head *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int ttm_eu_reserve_buffers(struct ww_acquire_ctx *arg0, struct list_head *arg1, bool arg2, struct list_head *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ttm_mem_global_init(struct ttm_mem_global *arg0) {
  return __VERIFIER_nondet_int();
}
void ttm_mem_global_release(struct ttm_mem_global *arg0) {
  return;
}
void ttm_mem_io_free(struct ttm_bo_device *arg0, struct ttm_mem_reg *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int ttm_mem_io_lock(struct ttm_mem_type_manager *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ttm_mem_io_reserve(struct ttm_bo_device *arg0, struct ttm_mem_reg *arg1) {
  return __VERIFIER_nondet_int();
}
void ttm_mem_io_unlock(struct ttm_mem_type_manager *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ttm_pool_populate(struct ttm_tt *arg0) {
  return __VERIFIER_nondet_int();
}
void ttm_pool_unpopulate(struct ttm_tt *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int unregister_framebuffer(struct fb_info *arg0) {
  return __VERIFIER_nondet_int();
}
void usleep_range(unsigned long arg0, unsigned long arg1) {
  return;
}
void vfree(const void *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool vgacon_text_force() {
  return __VERIFIER_nondet_bool();
}
void *vmalloc(unsigned long arg0) {
  return ldv_malloc(0UL);
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void ww_mutex_unlock(struct ww_mutex *arg0) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
