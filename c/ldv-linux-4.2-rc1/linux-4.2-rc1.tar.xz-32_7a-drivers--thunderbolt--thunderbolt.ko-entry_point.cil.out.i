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
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
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
typedef void (*ctor_fn_t)(void);
struct device;
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
union __anonunion____missing_field_name_205 {
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
   union __anonunion____missing_field_name_205 __annonCompField56 ;
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
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
enum dmi_field {
    DMI_NONE = 0,
    DMI_BIOS_VENDOR = 1,
    DMI_BIOS_VERSION = 2,
    DMI_BIOS_DATE = 3,
    DMI_SYS_VENDOR = 4,
    DMI_PRODUCT_NAME = 5,
    DMI_PRODUCT_VERSION = 6,
    DMI_PRODUCT_SERIAL = 7,
    DMI_PRODUCT_UUID = 8,
    DMI_BOARD_VENDOR = 9,
    DMI_BOARD_NAME = 10,
    DMI_BOARD_VERSION = 11,
    DMI_BOARD_SERIAL = 12,
    DMI_BOARD_ASSET_TAG = 13,
    DMI_CHASSIS_VENDOR = 14,
    DMI_CHASSIS_TYPE = 15,
    DMI_CHASSIS_VERSION = 16,
    DMI_CHASSIS_SERIAL = 17,
    DMI_CHASSIS_ASSET_TAG = 18,
    DMI_STRING_MAX = 19
} ;
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
union __anonunion____missing_field_name_209 {
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
   union __anonunion____missing_field_name_209 __annonCompField57 ;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct exception_table_entry {
   int insn ;
   int fixup ;
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
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_222 {
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
   union __anonunion____missing_field_name_222 __annonCompField65 ;
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
struct tb_ring;
struct tb_nhi {
   struct mutex lock ;
   struct pci_dev *pdev ;
   void *iobase ;
   struct tb_ring **tx_rings ;
   struct tb_ring **rx_rings ;
   struct work_struct interrupt_work ;
   u32 hop_count ;
};
struct ring_desc;
struct tb_ring {
   struct mutex lock ;
   struct tb_nhi *nhi ;
   int size ;
   int hop ;
   int head ;
   int tail ;
   struct ring_desc *descriptors ;
   dma_addr_t descriptors_dma ;
   struct list_head queue ;
   struct list_head in_flight ;
   struct work_struct work ;
   bool is_tx ;
   bool running ;
};
struct ring_frame;
struct ring_frame {
   dma_addr_t buffer_phy ;
   void (*callback)(struct tb_ring * , struct ring_frame * , bool ) ;
   struct list_head list ;
   unsigned short size : 12 ;
   unsigned short flags : 12 ;
   unsigned char eof : 4 ;
   unsigned char sof : 4 ;
};
struct ring_desc {
   u64 phys ;
   unsigned short length : 12 ;
   unsigned char eof : 4 ;
   unsigned char sof : 4 ;
   unsigned short flags : 12 ;
   u32 time ;
};
struct tb_regs_switch_header {
   u16 vendor_id ;
   u16 device_id ;
   unsigned char first_cap_offset ;
   unsigned char upstream_port_number : 6 ;
   unsigned char max_port_number : 6 ;
   unsigned char depth : 3 ;
   unsigned char __unknown1 : 1 ;
   unsigned char revision ;
   u32 route_lo ;
   unsigned int route_hi : 31 ;
   bool enabled ;
   unsigned char plug_events_delay ;
   unsigned short __unknown4 ;
   unsigned char thunderbolt_version ;
};
struct tb_regs_port_header {
   u16 vendor_id ;
   u16 device_id ;
   unsigned char first_cap_offset ;
   unsigned short max_counters : 11 ;
   unsigned char __unknown1 : 5 ;
   unsigned char revision ;
   unsigned int type : 24 ;
   unsigned char thunderbolt_version ;
   unsigned int __unknown2 : 20 ;
   unsigned char port_number : 6 ;
   unsigned char __unknown3 : 6 ;
   u32 nfc_credits ;
   unsigned short max_in_hop_id : 11 ;
   unsigned short max_out_hop_id : 11 ;
   unsigned short __unkown4 : 10 ;
   u32 __unknown5 ;
   u32 __unknown6 ;
};
struct tb_ctl;
struct tb_port;
struct tb;
struct tb_switch {
   struct tb_regs_switch_header config ;
   struct tb_port *ports ;
   struct tb *tb ;
   u64 uid ;
   int cap_plug_events ;
   bool is_unplugged ;
   u8 *drom ;
};
struct tb_port {
   struct tb_regs_port_header config ;
   struct tb_switch *sw ;
   struct tb_port *remote ;
   int cap_phy ;
   u8 port ;
   bool disabled ;
   struct tb_port *dual_link_port ;
   unsigned char link_nr : 1 ;
};
struct tb {
   struct mutex lock ;
   struct tb_nhi *nhi ;
   struct tb_ctl *ctl ;
   struct workqueue_struct *wq ;
   struct tb_switch *root_switch ;
   struct list_head tunnel_list ;
   bool hotplug_active ;
};
typedef bool ldv_func_ret_type;
typedef bool ldv_func_ret_type___0;
typedef bool ldv_func_ret_type___1;
typedef bool ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef bool ldv_func_ret_type___4;
typedef bool ldv_func_ret_type___5;
typedef bool ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
typedef __u32 __be32;
enum hrtimer_restart;
struct dma_pool;
struct __kfifo {
   unsigned int in ;
   unsigned int out ;
   unsigned int mask ;
   unsigned int esize ;
   void *data ;
};
enum tb_cfg_space {
    TB_CFG_HOPS = 0,
    TB_CFG_PORT = 1,
    TB_CFG_SWITCH = 2,
    TB_CFG_COUNTERS = 3
} ;
enum tb_cfg_error {
    TB_CFG_ERROR_PORT_NOT_CONNECTED = 0,
    TB_CFG_ERROR_INVALID_CONFIG_SPACE = 2,
    TB_CFG_ERROR_NO_SUCH_PORT = 4,
    TB_CFG_ERROR_ACK_PLUG_EVENT = 7,
    TB_CFG_ERROR_LOOP = 8
} ;
struct tb_cfg_result {
   u64 response_route ;
   u32 response_port ;
   int err ;
   enum tb_cfg_error tb_error ;
};
struct ctl_pkg {
   struct tb_ctl *ctl ;
   void *buffer ;
   struct ring_frame frame ;
};
union __anonunion____missing_field_name_214 {
   struct __kfifo kfifo ;
   struct ctl_pkg **type ;
   struct ctl_pkg const **const_type ;
   char (*rectype)[0U] ;
   struct ctl_pkg **ptr ;
   struct ctl_pkg * const *ptr_const ;
};
struct __anonstruct_response_fifo_213 {
   union __anonunion____missing_field_name_214 __annonCompField61 ;
   struct ctl_pkg *buf[16U] ;
};
struct tb_ctl {
   struct tb_nhi *nhi ;
   struct tb_ring *tx ;
   struct tb_ring *rx ;
   struct dma_pool *frame_pool ;
   struct ctl_pkg *rx_packets[10U] ;
   struct __anonstruct_response_fifo_213 response_fifo ;
   struct completion response_ready ;
   void (*callback)(void * , u64 , u8 , bool ) ;
   void *callback_data ;
};
enum tb_cfg_pkg_type {
    TB_CFG_PKG_READ = 1,
    TB_CFG_PKG_WRITE = 2,
    TB_CFG_PKG_ERROR = 3,
    TB_CFG_PKG_NOTIFY_ACK = 4,
    TB_CFG_PKG_EVENT = 5,
    TB_CFG_PKG_XDOMAIN_REQ = 6,
    TB_CFG_PKG_XDOMAIN_RESP = 7,
    TB_CFG_PKG_OVERRIDE = 8,
    TB_CFG_PKG_RESET = 9,
    TB_CFG_PKG_PREPARE_TO_SLEEP = 13
} ;
struct tb_cfg_header {
   unsigned int route_hi : 22 ;
   unsigned short unknown : 10 ;
   u32 route_lo ;
};
struct tb_cfg_address {
   unsigned short offset : 13 ;
   unsigned char length : 6 ;
   unsigned char port : 6 ;
   unsigned char space : 2 ;
   unsigned char seq : 2 ;
   unsigned char zero : 3 ;
};
struct cfg_read_pkg {
   struct tb_cfg_header header ;
   struct tb_cfg_address addr ;
};
struct cfg_write_pkg {
   struct tb_cfg_header header ;
   struct tb_cfg_address addr ;
   u32 data[64U] ;
};
struct cfg_error_pkg {
   struct tb_cfg_header header ;
   unsigned char error : 4 ;
   unsigned char zero1 : 4 ;
   unsigned char port : 6 ;
   unsigned char zero2 : 2 ;
   unsigned short zero3 ;
};
struct cfg_event_pkg {
   struct tb_cfg_header header ;
   unsigned char port : 6 ;
   unsigned int zero : 25 ;
   bool unplug ;
};
struct cfg_reset_pkg {
   struct tb_cfg_header header ;
};
union __anonunion____missing_field_name_216 {
   struct __kfifo kfifo ;
   struct ctl_pkg **type ;
   struct ctl_pkg const **const_type ;
   char (*rectype)[0U] ;
   struct ctl_pkg **ptr ;
   struct ctl_pkg * const *ptr_const ;
};
struct __anonstruct___tmp_215 {
   union __anonunion____missing_field_name_216 __annonCompField62 ;
   struct ctl_pkg *buf[16U] ;
};
union __anonunion____missing_field_name_218 {
   struct __kfifo kfifo ;
   struct ctl_pkg **type ;
   struct ctl_pkg const **const_type ;
   char (*rectype)[0U] ;
   struct ctl_pkg **ptr ;
   struct ctl_pkg * const *ptr_const ;
};
struct __anonstruct___tmpq_217 {
   union __anonunion____missing_field_name_218 __annonCompField63 ;
   struct ctl_pkg *buf[16U] ;
};
union __anonunion____missing_field_name_220 {
   struct __kfifo kfifo ;
   struct ctl_pkg **type ;
   struct ctl_pkg const **const_type ;
   char (*rectype)[0U] ;
   struct ctl_pkg **ptr ;
   struct ctl_pkg * const *ptr_const ;
};
struct __anonstruct___tmpl_219 {
   union __anonunion____missing_field_name_220 __annonCompField64 ;
   struct ctl_pkg *buf[16U] ;
};
union __anonunion____missing_field_name_222___0 {
   struct __kfifo kfifo ;
   struct ctl_pkg **type ;
   struct ctl_pkg const **const_type ;
   char (*rectype)[0U] ;
   struct ctl_pkg **ptr ;
   struct ctl_pkg * const *ptr_const ;
};
struct __anonstruct___tmp_221 {
   union __anonunion____missing_field_name_222___0 __annonCompField65 ;
   struct ctl_pkg *buf[16U] ;
};
union __anonunion____missing_field_name_224 {
   struct __kfifo kfifo ;
   struct ctl_pkg **type ;
   struct ctl_pkg const **const_type ;
   char (*rectype)[0U] ;
   struct ctl_pkg **ptr ;
   struct ctl_pkg * const *ptr_const ;
};
struct __anonstruct___tmpq_223 {
   union __anonunion____missing_field_name_224 __annonCompField66 ;
   struct ctl_pkg *buf[16U] ;
};
union __anonunion____missing_field_name_226 {
   struct __kfifo kfifo ;
   struct ctl_pkg **type ;
   struct ctl_pkg const **const_type ;
   char (*rectype)[0U] ;
   struct ctl_pkg **ptr ;
   struct ctl_pkg * const *ptr_const ;
};
struct __anonstruct___tmp_225 {
   union __anonunion____missing_field_name_226 __annonCompField67 ;
   struct ctl_pkg *buf[16U] ;
};
union __anonunion____missing_field_name_229 {
   struct __kfifo kfifo ;
   struct ctl_pkg **type ;
   struct ctl_pkg const **const_type ;
   char (*rectype)[0U] ;
   struct ctl_pkg **ptr ;
   struct ctl_pkg * const *ptr_const ;
};
struct __anonstruct___tmpq_228 {
   union __anonunion____missing_field_name_229 __annonCompField68 ;
   struct ctl_pkg *buf[16U] ;
};
union __anonunion____missing_field_name_231 {
   struct __kfifo kfifo ;
   struct ctl_pkg **type ;
   struct ctl_pkg const **const_type ;
   char (*rectype)[0U] ;
   struct ctl_pkg **ptr ;
   struct ctl_pkg * const *ptr_const ;
};
struct __anonstruct___tmp_230 {
   union __anonunion____missing_field_name_231 __annonCompField69 ;
   struct ctl_pkg *buf[16U] ;
};
enum hrtimer_restart;
enum tb_cap {
    TB_CAP_PHY = 1,
    TB_CAP_TIME1 = 3,
    TB_CAP_PCIE = 4,
    TB_CAP_I2C = 5,
    TB_CAP_PLUG_EVENTS = 261,
    TB_CAP_TIME2 = 773,
    TB_CAL_IECS = 1029,
    TB_CAP_LINK_CONTROLLER = 1541
} ;
struct tb_path_hop {
   struct tb_port *in_port ;
   struct tb_port *out_port ;
   int in_hop_index ;
   int in_counter_index ;
   int next_hop_index ;
};
enum tb_path_port {
    TB_PATH_NONE = 0,
    TB_PATH_SOURCE = 1,
    TB_PATH_INTERNAL = 2,
    TB_PATH_DESTINATION = 4,
    TB_PATH_ALL = 7
} ;
struct tb_path {
   struct tb *tb ;
   int nfc_credits ;
   enum tb_path_port ingress_shared_buffer ;
   enum tb_path_port egress_shared_buffer ;
   enum tb_path_port ingress_fc_enable ;
   enum tb_path_port egress_fc_enable ;
   signed char priority : 3 ;
   signed char weight : 4 ;
   bool drop_packages ;
   bool activated ;
   struct tb_path_hop *hops ;
   int path_length ;
};
struct tb_pci_tunnel {
   struct tb *tb ;
   struct tb_port *up_port ;
   struct tb_port *down_port ;
   struct tb_path *path_to_up ;
   struct tb_path *path_to_down ;
   struct list_head list ;
};
struct tb_hotplug_event {
   struct work_struct work ;
   struct tb *tb ;
   u64 route ;
   u8 port ;
   bool unplug ;
};
enum hrtimer_restart;
struct tb_cap_basic {
   u8 next ;
   u8 cap ;
};
struct tb_cap_phy {
   struct tb_cap_basic cap_header ;
   unsigned short unknown1 ;
   unsigned short unknown2 : 14 ;
   bool disable ;
   unsigned short unknown3 : 11 ;
   unsigned char state : 4 ;
   unsigned char unknown4 : 2 ;
};
enum hrtimer_restart;
struct tb_cap_extended_short {
   u8 next ;
   unsigned short cap ;
   u8 length ;
};
struct tb_cap_extended_long {
   u8 zero1 ;
   unsigned short cap ;
   u8 zero2 ;
   u16 next ;
   u16 length ;
};
union __anonunion____missing_field_name_210 {
   struct tb_cap_basic basic ;
   struct tb_cap_extended_short extended_short ;
   struct tb_cap_extended_long extended_long ;
};
struct tb_cap_any {
   union __anonunion____missing_field_name_210 __annonCompField58 ;
};
enum hrtimer_restart;
struct tb_regs_hop {
   unsigned short next_hop : 11 ;
   unsigned char out_port : 6 ;
   unsigned char initial_credits ;
   unsigned char unknown1 : 6 ;
   bool enable ;
   unsigned char weight : 4 ;
   unsigned char unknown2 : 4 ;
   unsigned char priority : 3 ;
   bool drop_packages ;
   unsigned short counter : 11 ;
   bool counter_enable ;
   bool ingress_fc ;
   bool egress_fc ;
   bool ingress_shared_buffer ;
   bool egress_shared_buffer ;
   unsigned char unknown3 : 4 ;
};
enum hrtimer_restart;
enum hrtimer_restart;
struct tb_eeprom_ctl {
   bool clock ;
   bool access_low ;
   bool data_out ;
   bool data_in ;
   bool access_high ;
   bool not_present ;
   bool unknown1 ;
   bool present ;
   unsigned int unknown2 : 24 ;
};
struct tb_cap_plug_events {
   struct tb_cap_extended_short cap_header ;
   unsigned char __unknown1 : 2 ;
   unsigned char plug_events : 5 ;
   unsigned int __unknown2 : 25 ;
   u32 __unknown3 ;
   u32 __unknown4 ;
   struct tb_eeprom_ctl eeprom_ctl ;
   u32 __unknown5[7U] ;
   u32 drom_offset ;
};
enum tb_port_type {
    TB_TYPE_INACTIVE = 0,
    TB_TYPE_PORT = 1,
    TB_TYPE_NHI = 2,
    TB_TYPE_DP_HDMI_IN = 917761,
    TB_TYPE_DP_HDMI_OUT = 917762,
    TB_TYPE_PCIE_DOWN = 1048833,
    TB_TYPE_PCIE_UP = 1048834
} ;
enum tb_eeprom_transfer {
    TB_EEPROM_IN = 0,
    TB_EEPROM_OUT = 1
} ;
struct tb_drom_header {
   u8 uid_crc8 ;
   u64 uid ;
   u32 data_crc32 ;
   u8 device_rom_revision ;
   unsigned short data_len : 10 ;
   unsigned char __unknown1 : 6 ;
   u16 vendor_id ;
   u16 model_id ;
   u8 model_rev ;
   u8 eeprom_rev ;
};
struct tb_drom_entry_header {
   u8 len ;
   unsigned char index : 6 ;
   bool port_disabled ;
   unsigned char type : 1 ;
};
struct tb_drom_entry_port {
   struct tb_drom_entry_header header ;
   unsigned char dual_link_port_rid : 4 ;
   unsigned char link_nr : 1 ;
   unsigned char unknown1 : 2 ;
   bool has_dual_link_port ;
   unsigned char dual_link_port_nr : 6 ;
   unsigned char unknown2 : 2 ;
   unsigned char micro2 : 4 ;
   unsigned char micro1 : 4 ;
   u8 micro3 ;
   unsigned char peer_port_rid : 4 ;
   unsigned char unknown3 : 3 ;
   bool has_peer_port ;
   unsigned char peer_port_nr : 6 ;
   unsigned char unknown4 : 2 ;
};
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
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
__inline static void list_move_tail(struct list_head *list , struct list_head *head )
{
  {
  __list_del_entry(list);
  list_add_tail(list, head);
  return;
}
}
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
__inline static void list_splice_tail_init(struct list_head *list , struct list_head *head )
{
  int tmp ;
  {
  tmp = list_empty((struct list_head const *)list);
  if (tmp == 0) {
    __list_splice((struct list_head const *)list, head->prev, head);
    INIT_LIST_HEAD(list);
  } else {
  }
  return;
}
}
extern void *memset(void * , int , size_t ) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void mutex_destroy(struct mutex * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_13(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_20(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_24(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_28(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 ) ;
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
__inline static long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_23(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_27(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_lock_of_tb_nhi(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_tb_nhi(struct mutex *lock ) ;
void ldv_mutex_lock_lock_of_tb_ring(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_tb_ring(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
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
extern bool flush_work(struct work_struct * ) ;
bool ldv_flush_work_30(struct work_struct *ldv_func_arg1 ) ;
bool ldv_flush_work_33(struct work_struct *ldv_func_arg1 ) ;
bool ldv_flush_work_36(struct work_struct *ldv_func_arg1 ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_5(8192, wq, work);
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
extern unsigned int ioread32(void * ) ;
extern void iowrite16(u16 , void * ) ;
extern void iowrite32(u32 , void * ) ;
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
struct work_struct *ldv_work_struct_1_0 ;
struct work_struct *ldv_work_struct_1_1 ;
int pci_counter ;
struct work_struct *ldv_work_struct_3_1 ;
struct work_struct *ldv_work_struct_1_3 ;
struct work_struct *ldv_work_struct_2_1 ;
int ldv_work_1_3 ;
struct work_struct *ldv_work_struct_3_2 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_work_3_1 ;
int ldv_state_variable_2 ;
int ldv_work_1_1 ;
int ldv_work_2_0 ;
int ldv_work_3_2 ;
struct work_struct *ldv_work_struct_3_0 ;
struct device *nhi_pm_ops_group1 ;
int ldv_work_1_2 ;
int LDV_IN_INTERRUPT = 1;
int ldv_work_3_0 ;
struct work_struct *ldv_work_struct_2_3 ;
struct work_struct *ldv_work_struct_2_0 ;
struct work_struct *ldv_work_struct_1_2 ;
struct work_struct *ldv_work_struct_2_2 ;
int ldv_state_variable_3 ;
int ldv_work_2_2 ;
int ref_cnt ;
int ldv_work_3_3 ;
int ldv_work_1_0 ;
int ldv_state_variable_1 ;
int ldv_work_2_3 ;
struct pci_dev *nhi_driver_group1 ;
int ldv_state_variable_4 ;
struct work_struct *ldv_work_struct_3_3 ;
int ldv_work_2_1 ;
void work_init_3(void) ;
void call_and_disable_work_1(struct work_struct *work ) ;
void disable_work_2(struct work_struct *work ) ;
void disable_work_1(struct work_struct *work ) ;
void ldv_dev_pm_ops_5(void) ;
void work_init_2(void) ;
void work_init_1(void) ;
void call_and_disable_all_2(int state ) ;
void call_and_disable_all_1(int state ) ;
void invoke_work_1(void) ;
void activate_work_2(struct work_struct *work , int state ) ;
void ldv_pci_driver_4(void) ;
void activate_work_1(struct work_struct *work , int state ) ;
void call_and_disable_work_2(struct work_struct *work ) ;
void invoke_work_2(void) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern void *devm_kmalloc(struct device * , size_t , gfp_t ) ;
__inline static void *devm_kzalloc(struct device *dev , size_t size , gfp_t gfp )
{
  void *tmp ;
  {
  tmp = devm_kmalloc(dev, size, gfp | 32768U);
  return (tmp);
}
}
__inline static void *devm_kmalloc_array(struct device *dev , size_t n , size_t size ,
                                         gfp_t flags )
{
  void *tmp ;
  {
  if (size != 0UL && 0xffffffffffffffffUL / size < n) {
    return ((void *)0);
  } else {
  }
  tmp = devm_kmalloc(dev, n * size, flags);
  return (tmp);
}
}
__inline static void *devm_kcalloc(struct device *dev , size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = devm_kmalloc_array(dev, n, size, flags | 32768U);
  return (tmp);
}
}
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
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
extern char const *dev_driver_string(struct device const * ) ;
extern void dev_err(struct device const * , char const * , ...) ;
extern void dev_warn(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
extern int pcim_enable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
int ldv___pci_register_driver_37(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
void ldv_pci_unregister_driver_38(struct pci_driver *ldv_func_arg1 ) ;
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
extern void *dma_alloc_attrs(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
extern void dma_free_attrs(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
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
extern void * const *pcim_iomap_table(struct pci_dev * ) ;
extern int pcim_iomap_regions(struct pci_dev * , int , char const * ) ;
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
  tmp = devm_request_threaded_irq(dev, irq, handler, (irqreturn_t (*)(int , void * ))0,
                                  irqflags, devname, dev_id);
  return (tmp);
}
}
extern void devm_free_irq(struct device * , unsigned int , void * ) ;
extern bool dmi_match(enum dmi_field , char const * ) ;
struct tb_ring *ring_alloc_tx(struct tb_nhi *nhi , int hop , int size ) ;
struct tb_ring *ring_alloc_rx(struct tb_nhi *nhi , int hop , int size ) ;
void ring_start(struct tb_ring *ring ) ;
void ring_stop(struct tb_ring *ring ) ;
void ring_free(struct tb_ring *ring ) ;
int __ring_enqueue(struct tb_ring *ring , struct ring_frame *frame ) ;
struct tb *thunderbolt_alloc_and_start(struct tb_nhi *nhi ) ;
void thunderbolt_shutdown_and_free(struct tb *tb ) ;
void thunderbolt_suspend(struct tb *tb ) ;
void thunderbolt_resume(struct tb *tb ) ;
static int ring_interrupt_index(struct tb_ring *ring )
{
  int bit ;
  {
  bit = ring->hop;
  if (! ring->is_tx) {
    bit = (int )((ring->nhi)->hop_count + (u32 )bit);
  } else {
  }
  return (bit);
}
}
static void ring_interrupt_active(struct tb_ring *ring , bool active )
{
  int reg ;
  int tmp ;
  int bit ;
  int tmp___0 ;
  int mask ;
  u32 old ;
  u32 new ;
  int __ret_warn_on ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  long tmp___3 ;
  {
  tmp = ring_interrupt_index(ring);
  reg = tmp / 32 + 229888;
  tmp___0 = ring_interrupt_index(ring);
  bit = tmp___0 & 31;
  mask = 1 << bit;
  old = ioread32((ring->nhi)->iobase + (unsigned long )reg);
  if ((int )active) {
    new = old | (u32 )mask;
  } else {
    new = (u32 )(~ mask) & old;
  }
  _dev_info((struct device const *)(& ((ring->nhi)->pdev)->dev), "%s interrupt at register %#x bit %d (%#x -> %#x)\n",
            (int )active ? (char *)"enabling" : (char *)"disabling", reg, bit, old,
            new);
  if (new == old) {
    __ret_warn_on = 1;
    tmp___3 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___3 != 0L) {
      tmp___1 = dev_name((struct device const *)(& ((ring->nhi)->pdev)->dev));
      tmp___2 = dev_driver_string((struct device const *)(& ((ring->nhi)->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/nhi.c",
                        58, "%s %s: interrupt for %s %d is already %s\n", tmp___2,
                        tmp___1, (int )ring->is_tx ? (char *)"TX ring" : (char *)"RX ring",
                        ring->hop, (int )active ? (char *)"enabled" : (char *)"disabled");
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
  } else {
  }
  iowrite32(new, (ring->nhi)->iobase + (unsigned long )reg);
  return;
}
}
static void nhi_disable_interrupts(struct tb_nhi *nhi )
{
  int i ;
  {
  i = 0;
  i = 0;
  goto ldv_29590;
  ldv_29589:
  iowrite32(0U, nhi->iobase + ((unsigned long )(i * 4) + 229888UL));
  i = i + 1;
  ldv_29590: ;
  if ((u32 )i < (nhi->hop_count * 2U + 31U) / 32U) {
    goto ldv_29589;
  } else {
  }
  i = 0;
  goto ldv_29593;
  ldv_29592:
  ioread32(nhi->iobase + ((unsigned long )(i * 4) + 227328UL));
  i = i + 1;
  ldv_29593: ;
  if ((u32 )i < (nhi->hop_count * 3U + 31U) / 32U) {
    goto ldv_29592;
  } else {
  }
  return;
}
}
static void *ring_desc_base(struct tb_ring *ring )
{
  void *io ;
  {
  io = (ring->nhi)->iobase;
  io = io + ((int )ring->is_tx ? 0UL : 32768UL);
  io = io + (unsigned long )(ring->hop * 16);
  return (io);
}
}
static void *ring_options_base(struct tb_ring *ring )
{
  void *io ;
  {
  io = (ring->nhi)->iobase;
  io = io + ((int )ring->is_tx ? 104448UL : 169984UL);
  io = io + (unsigned long )(ring->hop * 32);
  return (io);
}
}
static void ring_iowrite16desc(struct tb_ring *ring , u32 value , u32 offset )
{
  void *tmp ;
  {
  tmp = ring_desc_base(ring);
  iowrite16((int )((u16 )value), tmp + (unsigned long )offset);
  return;
}
}
static void ring_iowrite32desc(struct tb_ring *ring , u32 value , u32 offset )
{
  void *tmp ;
  {
  tmp = ring_desc_base(ring);
  iowrite32(value, tmp + (unsigned long )offset);
  return;
}
}
static void ring_iowrite64desc(struct tb_ring *ring , u64 value , u32 offset )
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ring_desc_base(ring);
  iowrite32((u32 )value, tmp + (unsigned long )offset);
  tmp___0 = ring_desc_base(ring);
  iowrite32((u32 )(value >> 32), tmp___0 + ((unsigned long )offset + 4UL));
  return;
}
}
static void ring_iowrite32options(struct tb_ring *ring , u32 value , u32 offset )
{
  void *tmp ;
  {
  tmp = ring_options_base(ring);
  iowrite32(value, tmp + (unsigned long )offset);
  return;
}
}
static bool ring_full(struct tb_ring *ring )
{
  {
  return ((ring->head + 1) % ring->size == ring->tail);
}
}
static bool ring_empty(struct tb_ring *ring )
{
  {
  return (ring->head == ring->tail);
}
}
static void ring_write_descriptors(struct tb_ring *ring )
{
  struct ring_frame *frame ;
  struct ring_frame *n ;
  struct ring_desc *descriptor ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  bool tmp ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)ring->queue.next;
  frame = (struct ring_frame *)__mptr + 0xfffffffffffffff0UL;
  __mptr___0 = (struct list_head const *)frame->list.next;
  n = (struct ring_frame *)__mptr___0 + 0xfffffffffffffff0UL;
  goto ldv_29643;
  ldv_29642:
  tmp = ring_full(ring);
  if ((int )tmp) {
    goto ldv_29641;
  } else {
  }
  list_move_tail(& frame->list, & ring->in_flight);
  descriptor = ring->descriptors + (unsigned long )ring->head;
  descriptor->phys = frame->buffer_phy;
  descriptor->time = 0U;
  descriptor->flags = 12U;
  if ((int )ring->is_tx) {
    descriptor->length = frame->size;
    descriptor->eof = frame->eof;
    descriptor->sof = frame->sof;
  } else {
  }
  ring->head = (ring->head + 1) % ring->size;
  ring_iowrite16desc(ring, (u32 )ring->head, (int )ring->is_tx ? 10U : 8U);
  frame = n;
  __mptr___1 = (struct list_head const *)n->list.next;
  n = (struct ring_frame *)__mptr___1 + 0xfffffffffffffff0UL;
  ldv_29643: ;
  if ((unsigned long )(& frame->list) != (unsigned long )(& ring->queue)) {
    goto ldv_29642;
  } else {
  }
  ldv_29641: ;
  return;
}
}
static void ring_work(struct work_struct *work )
{
  struct tb_ring *ring ;
  struct work_struct const *__mptr ;
  struct ring_frame *frame ;
  bool canceled ;
  struct list_head done ;
  struct list_head const *__mptr___0 ;
  int __ret_warn_on ;
  char const *tmp ;
  char const *tmp___0 ;
  long tmp___1 ;
  int __ret_warn_on___0 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  long tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  struct list_head const *__mptr___1 ;
  int tmp___7 ;
  {
  __mptr = (struct work_struct const *)work;
  ring = (struct tb_ring *)__mptr + 0xffffffffffffff18UL;
  canceled = 0;
  done.next = & done;
  done.prev = & done;
  ldv_mutex_lock_15(& ring->lock);
  if (! ring->running) {
    list_splice_tail_init(& ring->in_flight, & done);
    list_splice_tail_init(& ring->queue, & done);
    canceled = 1;
    goto invoke_callback;
  } else {
  }
  goto ldv_29662;
  ldv_29661: ;
  if (((int )(ring->descriptors + (unsigned long )ring->tail)->flags & 2) == 0) {
    goto ldv_29654;
  } else {
  }
  __mptr___0 = (struct list_head const *)ring->in_flight.next;
  frame = (struct ring_frame *)__mptr___0 + 0xfffffffffffffff0UL;
  list_move_tail(& frame->list, & done);
  if (! ring->is_tx) {
    frame->size = (ring->descriptors + (unsigned long )ring->tail)->length;
    frame->eof = (ring->descriptors + (unsigned long )ring->tail)->eof;
    frame->sof = (ring->descriptors + (unsigned long )ring->tail)->sof;
    frame->flags = (ring->descriptors + (unsigned long )ring->tail)->flags;
    if ((unsigned int )*((unsigned char *)frame + 35UL) != 0U) {
      __ret_warn_on = 1;
      tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___1 != 0L) {
        tmp = dev_name((struct device const *)(& ((ring->nhi)->pdev)->dev));
        tmp___0 = dev_driver_string((struct device const *)(& ((ring->nhi)->pdev)->dev));
        warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/nhi.c",
                          196, "%s %s: %s %d got unexpected SOF: %#x\n", tmp___0,
                          tmp, (int )ring->is_tx ? (char *)"TX ring" : (char *)"RX ring",
                          ring->hop, (int )frame->sof);
      } else {
      }
      ldv__builtin_expect(__ret_warn_on != 0, 0L);
    } else {
    }
    if (*((unsigned int *)frame + 8UL) != 40960U) {
      __ret_warn_on___0 = 1;
      tmp___4 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
      if (tmp___4 != 0L) {
        tmp___2 = dev_name((struct device const *)(& ((ring->nhi)->pdev)->dev));
        tmp___3 = dev_driver_string((struct device const *)(& ((ring->nhi)->pdev)->dev));
        warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/nhi.c",
                          208, "%s %s: %s %d got unexpected flags: %#x\n", tmp___3,
                          tmp___2, (int )ring->is_tx ? (char *)"TX ring" : (char *)"RX ring",
                          ring->hop, (int )frame->flags);
      } else {
      }
      ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    } else {
    }
  } else {
  }
  ring->tail = (ring->tail + 1) % ring->size;
  ldv_29662:
  tmp___5 = ring_empty(ring);
  if (tmp___5) {
    tmp___6 = 0;
  } else {
    tmp___6 = 1;
  }
  if (tmp___6) {
    goto ldv_29661;
  } else {
  }
  ldv_29654:
  ring_write_descriptors(ring);
  invoke_callback:
  ldv_mutex_unlock_16(& ring->lock);
  goto ldv_29666;
  ldv_29665:
  __mptr___1 = (struct list_head const *)done.next;
  frame = (struct ring_frame *)__mptr___1 + 0xfffffffffffffff0UL;
  list_del_init(& frame->list);
  (*(frame->callback))(ring, frame, (int )canceled);
  ldv_29666:
  tmp___7 = list_empty((struct list_head const *)(& done));
  if (tmp___7 == 0) {
    goto ldv_29665;
  } else {
  }
  return;
}
}
int __ring_enqueue(struct tb_ring *ring , struct ring_frame *frame )
{
  int ret ;
  {
  ret = 0;
  ldv_mutex_lock_17(& ring->lock);
  if ((int )ring->running) {
    list_add_tail(& frame->list, & ring->queue);
    ring_write_descriptors(ring);
  } else {
    ret = -108;
  }
  ldv_mutex_unlock_18(& ring->lock);
  return (ret);
}
}
static struct tb_ring *ring_alloc(struct tb_nhi *nhi , u32 hop , int size , bool transmit )
{
  struct tb_ring *ring ;
  int __ret_warn_on ;
  char const *tmp ;
  char const *tmp___0 ;
  long tmp___1 ;
  int __ret_warn_on___0 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  long tmp___4 ;
  int __ret_warn_on___1 ;
  char const *tmp___5 ;
  char const *tmp___6 ;
  long tmp___7 ;
  void *tmp___8 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  void *tmp___9 ;
  {
  ring = (struct tb_ring *)0;
  _dev_info((struct device const *)(& (nhi->pdev)->dev), "allocating %s ring %d of size %d\n",
            (int )transmit ? (char *)"TX" : (char *)"RX", hop, size);
  ldv_mutex_lock_19(& nhi->lock);
  if (nhi->hop_count <= hop) {
    __ret_warn_on = 1;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      tmp = dev_name((struct device const *)(& (nhi->pdev)->dev));
      tmp___0 = dev_driver_string((struct device const *)(& (nhi->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/nhi.c",
                        250, "%s %s: invalid hop: %d\n", tmp___0, tmp, hop);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    goto err;
  } else {
  }
  if ((int )transmit && (unsigned long )*(nhi->tx_rings + (unsigned long )hop) != (unsigned long )((struct tb_ring *)0)) {
    __ret_warn_on___0 = 1;
    tmp___4 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___4 != 0L) {
      tmp___2 = dev_name((struct device const *)(& (nhi->pdev)->dev));
      tmp___3 = dev_driver_string((struct device const *)(& (nhi->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/nhi.c",
                        254, "%s %s: TX hop %d already allocated\n", tmp___3, tmp___2,
                        hop);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    goto err;
  } else
  if (! transmit && (unsigned long )*(nhi->rx_rings + (unsigned long )hop) != (unsigned long )((struct tb_ring *)0)) {
    __ret_warn_on___1 = 1;
    tmp___7 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
    if (tmp___7 != 0L) {
      tmp___5 = dev_name((struct device const *)(& (nhi->pdev)->dev));
      tmp___6 = dev_driver_string((struct device const *)(& (nhi->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/nhi.c",
                        257, "%s %s: RX hop %d already allocated\n", tmp___6, tmp___5,
                        hop);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
    goto err;
  } else {
  }
  tmp___8 = kzalloc(320UL, 208U);
  ring = (struct tb_ring *)tmp___8;
  if ((unsigned long )ring == (unsigned long )((struct tb_ring *)0)) {
    goto err;
  } else {
  }
  __mutex_init(& ring->lock, "&ring->lock", & __key);
  INIT_LIST_HEAD(& ring->queue);
  INIT_LIST_HEAD(& ring->in_flight);
  __init_work(& ring->work, 0);
  __constr_expr_0.counter = 137438953408L;
  ring->work.data = __constr_expr_0;
  lockdep_init_map(& ring->work.lockdep_map, "(&ring->work)", & __key___0, 0);
  INIT_LIST_HEAD(& ring->work.entry);
  ring->work.func = & ring_work;
  ring->nhi = nhi;
  ring->hop = (int )hop;
  ring->is_tx = transmit;
  ring->size = size;
  ring->head = 0;
  ring->tail = 0;
  ring->running = 0;
  tmp___9 = dma_alloc_attrs(& ((ring->nhi)->pdev)->dev, (unsigned long )size * 16UL,
                            & ring->descriptors_dma, 32976U, (struct dma_attrs *)0);
  ring->descriptors = (struct ring_desc *)tmp___9;
  if ((unsigned long )ring->descriptors == (unsigned long )((struct ring_desc *)0)) {
    goto err;
  } else {
  }
  if ((int )transmit) {
    *(nhi->tx_rings + (unsigned long )hop) = ring;
  } else {
    *(nhi->rx_rings + (unsigned long )hop) = ring;
  }
  ldv_mutex_unlock_20(& nhi->lock);
  return (ring);
  err: ;
  if ((unsigned long )ring != (unsigned long )((struct tb_ring *)0)) {
    mutex_destroy(& ring->lock);
  } else {
  }
  kfree((void const *)ring);
  ldv_mutex_unlock_21(& nhi->lock);
  return ((struct tb_ring *)0);
}
}
struct tb_ring *ring_alloc_tx(struct tb_nhi *nhi , int hop , int size )
{
  struct tb_ring *tmp ;
  {
  tmp = ring_alloc(nhi, (u32 )hop, size, 1);
  return (tmp);
}
}
struct tb_ring *ring_alloc_rx(struct tb_nhi *nhi , int hop , int size )
{
  struct tb_ring *tmp ;
  {
  tmp = ring_alloc(nhi, (u32 )hop, size, 0);
  return (tmp);
}
}
void ring_start(struct tb_ring *ring )
{
  int __ret_warn_on ;
  char const *tmp ;
  char const *tmp___0 ;
  long tmp___1 ;
  {
  ldv_mutex_lock_22(& (ring->nhi)->lock);
  ldv_mutex_lock_23(& ring->lock);
  if ((int )ring->running) {
    __ret_warn_on = 1;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      tmp = dev_name((struct device const *)(& ((ring->nhi)->pdev)->dev));
      tmp___0 = dev_driver_string((struct device const *)(& ((ring->nhi)->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/nhi.c",
                        317, "%s %s: ring already started\n", tmp___0, tmp);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    goto err;
  } else {
  }
  _dev_info((struct device const *)(& ((ring->nhi)->pdev)->dev), "starting %s %d\n",
            (int )ring->is_tx ? (char *)"TX ring" : (char *)"RX ring", ring->hop);
  ring_iowrite64desc(ring, ring->descriptors_dma, 0U);
  if ((int )ring->is_tx) {
    ring_iowrite32desc(ring, (u32 )ring->size, 12U);
    ring_iowrite32options(ring, 0U, 4U);
    ring_iowrite32options(ring, 3221225472U, 0U);
  } else {
    ring_iowrite32desc(ring, (u32 )(ring->size | 16777216), 12U);
    ring_iowrite32options(ring, 4294967295U, 4U);
    ring_iowrite32options(ring, 3221225472U, 0U);
  }
  ring_interrupt_active(ring, 1);
  ring->running = 1;
  err:
  ldv_mutex_unlock_24(& ring->lock);
  ldv_mutex_unlock_25(& (ring->nhi)->lock);
  return;
}
}
void ring_stop(struct tb_ring *ring )
{
  int __ret_warn_on ;
  char const *tmp ;
  char const *tmp___0 ;
  long tmp___1 ;
  {
  ldv_mutex_lock_26(& (ring->nhi)->lock);
  ldv_mutex_lock_27(& ring->lock);
  _dev_info((struct device const *)(& ((ring->nhi)->pdev)->dev), "stopping %s %d\n",
            (int )ring->is_tx ? (char *)"TX ring" : (char *)"RX ring", ring->hop);
  if (! ring->running) {
    __ret_warn_on = 1;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      tmp = dev_name((struct device const *)(& ((ring->nhi)->pdev)->dev));
      tmp___0 = dev_driver_string((struct device const *)(& ((ring->nhi)->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/nhi.c",
                        364, "%s %s: %s %d already stopped\n", tmp___0, tmp, (int )ring->is_tx ? (char *)"TX ring" : (char *)"RX ring",
                        ring->hop);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    goto err;
  } else {
  }
  ring_interrupt_active(ring, 0);
  ring_iowrite32options(ring, 0U, 0U);
  ring_iowrite64desc(ring, 0ULL, 0U);
  ring_iowrite16desc(ring, 0U, (int )ring->is_tx ? 10U : 8U);
  ring_iowrite32desc(ring, 0U, 12U);
  ring->head = 0;
  ring->tail = 0;
  ring->running = 0;
  err:
  ldv_mutex_unlock_28(& ring->lock);
  ldv_mutex_unlock_29(& (ring->nhi)->lock);
  schedule_work(& ring->work);
  ldv_flush_work_30(& ring->work);
  return;
}
}
void ring_free(struct tb_ring *ring )
{
  int __ret_warn_on ;
  char const *tmp ;
  char const *tmp___0 ;
  long tmp___1 ;
  {
  ldv_mutex_lock_31(& (ring->nhi)->lock);
  if ((int )ring->is_tx) {
    *((ring->nhi)->tx_rings + (unsigned long )ring->hop) = (struct tb_ring *)0;
  } else {
    *((ring->nhi)->rx_rings + (unsigned long )ring->hop) = (struct tb_ring *)0;
  }
  if ((int )ring->running) {
    __ret_warn_on = 1;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      tmp = dev_name((struct device const *)(& ((ring->nhi)->pdev)->dev));
      tmp___0 = dev_driver_string((struct device const *)(& ((ring->nhi)->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/nhi.c",
                        412, "%s %s: %s %d still running\n", tmp___0, tmp, (int )ring->is_tx ? (char *)"TX ring" : (char *)"RX ring",
                        ring->hop);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
  } else {
  }
  dma_free_attrs(& ((ring->nhi)->pdev)->dev, (unsigned long )ring->size * 16UL, (void *)ring->descriptors,
                 ring->descriptors_dma, (struct dma_attrs *)0);
  ring->descriptors = (struct ring_desc *)0;
  ring->descriptors_dma = 0ULL;
  _dev_info((struct device const *)(& ((ring->nhi)->pdev)->dev), "freeing %s %d\n",
            (int )ring->is_tx ? (char *)"TX ring" : (char *)"RX ring", ring->hop);
  ldv_mutex_unlock_32(& (ring->nhi)->lock);
  ldv_flush_work_33(& ring->work);
  mutex_destroy(& ring->lock);
  kfree((void const *)ring);
  return;
}
}
static void nhi_interrupt_work(struct work_struct *work )
{
  struct tb_nhi *nhi ;
  struct work_struct const *__mptr ;
  int value ;
  int bit ;
  int hop ;
  int type ;
  struct tb_ring *ring ;
  unsigned int tmp ;
  {
  __mptr = (struct work_struct const *)work;
  nhi = (struct tb_nhi *)__mptr + 0xffffffffffffff40UL;
  value = 0;
  hop = -1;
  type = 0;
  ldv_mutex_lock_34(& nhi->lock);
  bit = 0;
  goto ldv_29730;
  ldv_29729: ;
  if (((unsigned int )bit & 31U) == 0U) {
    tmp = ioread32(nhi->iobase + ((unsigned long )((bit / 32) * 4) + 227328UL));
    value = (int )tmp;
  } else {
  }
  hop = hop + 1;
  if ((u32 )hop == nhi->hop_count) {
    hop = 0;
    type = type + 1;
  } else {
  }
  if (((value >> bit % 32) & 1) == 0) {
    goto ldv_29728;
  } else {
  }
  if (type == 2) {
    dev_warn((struct device const *)(& (nhi->pdev)->dev), "RX overflow for ring %d\n",
             hop);
    goto ldv_29728;
  } else {
  }
  if (type == 0) {
    ring = *(nhi->tx_rings + (unsigned long )hop);
  } else {
    ring = *(nhi->rx_rings + (unsigned long )hop);
  }
  if ((unsigned long )ring == (unsigned long )((struct tb_ring *)0)) {
    dev_warn((struct device const *)(& (nhi->pdev)->dev), "got interrupt for inactive %s ring %d\n",
             type != 0 ? (char *)"RX" : (char *)"TX", hop);
    goto ldv_29728;
  } else {
  }
  schedule_work(& ring->work);
  ldv_29728:
  bit = bit + 1;
  ldv_29730: ;
  if ((u32 )bit < nhi->hop_count * 3U) {
    goto ldv_29729;
  } else {
  }
  ldv_mutex_unlock_35(& nhi->lock);
  return;
}
}
static irqreturn_t nhi_msi(int irq , void *data )
{
  struct tb_nhi *nhi ;
  {
  nhi = (struct tb_nhi *)data;
  schedule_work(& nhi->interrupt_work);
  return (1);
}
}
static int nhi_suspend_noirq(struct device *dev )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct tb *tb ;
  void *tmp ;
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  tb = (struct tb *)tmp;
  thunderbolt_suspend(tb);
  return (0);
}
}
static int nhi_resume_noirq(struct device *dev )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct tb *tb ;
  void *tmp ;
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  tb = (struct tb *)tmp;
  thunderbolt_resume(tb);
  return (0);
}
}
static void nhi_shutdown(struct tb_nhi *nhi )
{
  int i ;
  int __ret_warn_on ;
  char const *tmp ;
  char const *tmp___0 ;
  long tmp___1 ;
  int __ret_warn_on___0 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  long tmp___4 ;
  {
  _dev_info((struct device const *)(& (nhi->pdev)->dev), "shutdown\n");
  i = 0;
  goto ldv_29760;
  ldv_29759: ;
  if ((unsigned long )*(nhi->tx_rings + (unsigned long )i) != (unsigned long )((struct tb_ring *)0)) {
    __ret_warn_on = 1;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      tmp = dev_name((struct device const *)(& (nhi->pdev)->dev));
      tmp___0 = dev_driver_string((struct device const *)(& (nhi->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/nhi.c",
                        520, "%s %s: TX ring %d is still active\n", tmp___0, tmp,
                        i);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
  } else {
  }
  if ((unsigned long )*(nhi->rx_rings + (unsigned long )i) != (unsigned long )((struct tb_ring *)0)) {
    __ret_warn_on___0 = 1;
    tmp___4 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___4 != 0L) {
      tmp___2 = dev_name((struct device const *)(& (nhi->pdev)->dev));
      tmp___3 = dev_driver_string((struct device const *)(& (nhi->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/nhi.c",
                        523, "%s %s: RX ring %d is still active\n", tmp___3, tmp___2,
                        i);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  } else {
  }
  i = i + 1;
  ldv_29760: ;
  if ((u32 )i < nhi->hop_count) {
    goto ldv_29759;
  } else {
  }
  nhi_disable_interrupts(nhi);
  devm_free_irq(& (nhi->pdev)->dev, (nhi->pdev)->irq, (void *)nhi);
  ldv_flush_work_36(& nhi->interrupt_work);
  mutex_destroy(& nhi->lock);
  return;
}
}
static int nhi_probe(struct pci_dev *pdev , struct pci_device_id const *id )
{
  struct tb_nhi *nhi ;
  struct tb *tb ;
  int res ;
  void *tmp ;
  void * const *tmp___0 ;
  unsigned int tmp___1 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  void *tmp___2 ;
  void *tmp___3 ;
  struct lock_class_key __key___0 ;
  {
  res = pcim_enable_device(pdev);
  if (res != 0) {
    dev_err((struct device const *)(& pdev->dev), "cannot enable PCI device, aborting\n");
    return (res);
  } else {
  }
  res = pci_enable_msi_exact(pdev, 1);
  if (res != 0) {
    dev_err((struct device const *)(& pdev->dev), "cannot enable MSI, aborting\n");
    return (res);
  } else {
  }
  res = pcim_iomap_regions(pdev, 1, "thunderbolt");
  if (res != 0) {
    dev_err((struct device const *)(& pdev->dev), "cannot obtain PCI resources, aborting\n");
    return (res);
  } else {
  }
  tmp = devm_kzalloc(& pdev->dev, 280UL, 208U);
  nhi = (struct tb_nhi *)tmp;
  if ((unsigned long )nhi == (unsigned long )((struct tb_nhi *)0)) {
    return (-12);
  } else {
  }
  nhi->pdev = pdev;
  tmp___0 = pcim_iomap_table(pdev);
  nhi->iobase = *tmp___0;
  tmp___1 = ioread32(nhi->iobase + 235072UL);
  nhi->hop_count = tmp___1 & 1023U;
  if (nhi->hop_count != 12U) {
    dev_warn((struct device const *)(& pdev->dev), "unexpected hop count: %d\n",
             nhi->hop_count);
  } else {
  }
  __init_work(& nhi->interrupt_work, 0);
  __constr_expr_0.counter = 137438953408L;
  nhi->interrupt_work.data = __constr_expr_0;
  lockdep_init_map(& nhi->interrupt_work.lockdep_map, "(&nhi->interrupt_work)", & __key,
                   0);
  INIT_LIST_HEAD(& nhi->interrupt_work.entry);
  nhi->interrupt_work.func = & nhi_interrupt_work;
  tmp___2 = devm_kcalloc(& pdev->dev, (size_t )nhi->hop_count, 8UL, 208U);
  nhi->tx_rings = (struct tb_ring **)tmp___2;
  tmp___3 = devm_kcalloc(& pdev->dev, (size_t )nhi->hop_count, 8UL, 208U);
  nhi->rx_rings = (struct tb_ring **)tmp___3;
  if ((unsigned long )nhi->tx_rings == (unsigned long )((struct tb_ring **)0) || (unsigned long )nhi->rx_rings == (unsigned long )((struct tb_ring **)0)) {
    return (-12);
  } else {
  }
  nhi_disable_interrupts(nhi);
  res = devm_request_irq(& pdev->dev, pdev->irq, & nhi_msi, 16384UL, "thunderbolt",
                         (void *)nhi);
  if (res != 0) {
    dev_err((struct device const *)(& pdev->dev), "request_irq failed, aborting\n");
    return (res);
  } else {
  }
  __mutex_init(& nhi->lock, "&nhi->lock", & __key___0);
  pci_set_master(pdev);
  iowrite32(390U, nhi->iobase + 232448UL);
  _dev_info((struct device const *)(& (nhi->pdev)->dev), "NHI initialized, starting thunderbolt\n");
  tb = thunderbolt_alloc_and_start(nhi);
  if ((unsigned long )tb == (unsigned long )((struct tb *)0)) {
    nhi_shutdown(nhi);
    return (-5);
  } else {
  }
  pci_set_drvdata(pdev, (void *)tb);
  return (0);
}
}
static void nhi_remove(struct pci_dev *pdev )
{
  struct tb *tb ;
  void *tmp ;
  struct tb_nhi *nhi ;
  {
  tmp = pci_get_drvdata(pdev);
  tb = (struct tb *)tmp;
  nhi = tb->nhi;
  thunderbolt_shutdown_and_free(tb);
  nhi_shutdown(nhi);
  return;
}
}
static struct dev_pm_ops const nhi_pm_ops =
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & nhi_suspend_noirq, & nhi_resume_noirq,
    & nhi_suspend_noirq, 0, 0, & nhi_resume_noirq, 0, 0, 0};
static struct pci_device_id nhi_ids[3U] = { {32902U, 5447U, 8738U, 4369U, 557056U, 4294967295U, 0UL},
        {32902U, 5484U, 8738U, 4369U, 557056U, 4294967295U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__nhi_ids_device_table[3U] ;
static struct pci_driver nhi_driver =
     {{0, 0}, "thunderbolt", (struct pci_device_id const *)(& nhi_ids), & nhi_probe,
    & nhi_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0,
                                        0, 0, & nhi_pm_ops, 0}, {{{{{{0}}, 0U, 0U,
                                                                    0, {0, {0, 0},
                                                                        0, 0, 0UL}}}},
                                                                 {0, 0}}};
static int nhi_init(void)
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = dmi_match(9, "Apple Inc.");
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-38);
  } else {
  }
  tmp___1 = ldv___pci_register_driver_37(& nhi_driver, & __this_module, "thunderbolt");
  return (tmp___1);
}
}
static void nhi_unload(void)
{
  {
  ldv_pci_unregister_driver_38(& nhi_driver);
  return;
}
}
extern int ldv_thaw_noirq_5(void) ;
int ldv_retval_20 ;
extern int ldv_poweroff_5(void) ;
int ldv_retval_18 ;
int ldv_retval_2 ;
extern int ldv_resume_5(void) ;
int ldv_retval_5 ;
int ldv_retval_0 ;
extern int ldv_restore_early_5(void) ;
int ldv_retval_11 ;
int ldv_retval_1 ;
extern int ldv_shutdown_4(void) ;
int ldv_retval_15 ;
int ldv_retval_16 ;
extern int ldv_poweroff_noirq_5(void) ;
extern int ldv_complete_5(void) ;
void ldv_check_final_state(void) ;
extern int ldv_suspend_late_5(void) ;
int ldv_retval_8 ;
int ldv_retval_7 ;
int ldv_retval_19 ;
extern int ldv_thaw_5(void) ;
extern int ldv_poweroff_late_5(void) ;
extern int ldv_thaw_early_5(void) ;
int ldv_retval_14 ;
int ldv_retval_17 ;
extern int ldv_freeze_5(void) ;
int ldv_retval_12 ;
extern void ldv_initialize(void) ;
int ldv_retval_6 ;
extern int ldv_prepare_5(void) ;
extern int ldv_freeze_late_5(void) ;
extern int ldv_resume_early_5(void) ;
int ldv_retval_13 ;
int ldv_retval_9 ;
int ldv_retval_10 ;
int ldv_retval_4 ;
int ldv_retval_3 ;
extern int ldv_restore_5(void) ;
extern int ldv_suspend_5(void) ;
void call_and_disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 2 || ldv_work_1_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_0) {
    ring_work(work);
    ldv_work_1_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_1 == 2 || ldv_work_1_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_1) {
    ring_work(work);
    ldv_work_1_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_2 == 2 || ldv_work_1_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_2) {
    ring_work(work);
    ldv_work_1_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_3 == 2 || ldv_work_1_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_3) {
    ring_work(work);
    ldv_work_1_3 = 1;
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
void ldv_dev_pm_ops_5(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1416UL);
  nhi_pm_ops_group1 = (struct device *)tmp;
  return;
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
void invoke_work_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_1_0 == 2 || ldv_work_1_0 == 3) {
    ldv_work_1_0 = 4;
    ring_work(ldv_work_struct_1_0);
    ldv_work_1_0 = 1;
  } else {
  }
  goto ldv_29889;
  case 1: ;
  if (ldv_work_1_1 == 2 || ldv_work_1_1 == 3) {
    ldv_work_1_1 = 4;
    ring_work(ldv_work_struct_1_0);
    ldv_work_1_1 = 1;
  } else {
  }
  goto ldv_29889;
  case 2: ;
  if (ldv_work_1_2 == 2 || ldv_work_1_2 == 3) {
    ldv_work_1_2 = 4;
    ring_work(ldv_work_struct_1_0);
    ldv_work_1_2 = 1;
  } else {
  }
  goto ldv_29889;
  case 3: ;
  if (ldv_work_1_3 == 2 || ldv_work_1_3 == 3) {
    ldv_work_1_3 = 4;
    ring_work(ldv_work_struct_1_0);
    ldv_work_1_3 = 1;
  } else {
  }
  goto ldv_29889;
  default:
  ldv_stop();
  }
  ldv_29889: ;
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
void ldv_pci_driver_4(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(2976UL);
  nhi_driver_group1 = (struct pci_dev *)tmp;
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
void call_and_disable_work_2(struct work_struct *work )
{
  {
  if ((ldv_work_2_0 == 2 || ldv_work_2_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_0) {
    nhi_interrupt_work(work);
    ldv_work_2_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_1 == 2 || ldv_work_2_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_1) {
    nhi_interrupt_work(work);
    ldv_work_2_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_2 == 2 || ldv_work_2_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_2) {
    nhi_interrupt_work(work);
    ldv_work_2_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_3 == 2 || ldv_work_2_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_3) {
    nhi_interrupt_work(work);
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
    nhi_interrupt_work(ldv_work_struct_2_0);
    ldv_work_2_0 = 1;
  } else {
  }
  goto ldv_29918;
  case 1: ;
  if (ldv_work_2_1 == 2 || ldv_work_2_1 == 3) {
    ldv_work_2_1 = 4;
    nhi_interrupt_work(ldv_work_struct_2_0);
    ldv_work_2_1 = 1;
  } else {
  }
  goto ldv_29918;
  case 2: ;
  if (ldv_work_2_2 == 2 || ldv_work_2_2 == 3) {
    ldv_work_2_2 = 4;
    nhi_interrupt_work(ldv_work_struct_2_0);
    ldv_work_2_2 = 1;
  } else {
  }
  goto ldv_29918;
  case 3: ;
  if (ldv_work_2_3 == 2 || ldv_work_2_3 == 3) {
    ldv_work_2_3 = 4;
    nhi_interrupt_work(ldv_work_struct_2_0);
    ldv_work_2_3 = 1;
  } else {
  }
  goto ldv_29918;
  default:
  ldv_stop();
  }
  ldv_29918: ;
  return;
}
}
int main(void)
{
  struct pci_device_id *ldvarg0 ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = ldv_init_zalloc(32UL);
  ldvarg0 = (struct pci_device_id *)tmp;
  ldv_initialize();
  ldv_state_variable_4 = 0;
  work_init_1();
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  work_init_3();
  ldv_state_variable_3 = 1;
  work_init_2();
  ldv_state_variable_2 = 1;
  ldv_state_variable_5 = 0;
  ldv_29973:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_4 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      ldv_retval_0 = nhi_probe(nhi_driver_group1, (struct pci_device_id const *)ldvarg0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_4 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_29935;
    case 1: ;
    if (ldv_state_variable_4 == 2) {
      nhi_remove(nhi_driver_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_29935;
    case 2: ;
    if (ldv_state_variable_4 == 2) {
      ldv_shutdown_4();
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_29935;
    default:
    ldv_stop();
    }
    ldv_29935: ;
  } else {
  }
  goto ldv_29939;
  case 1: ;
  if (ldv_state_variable_1 != 0) {
    invoke_work_1();
  } else {
  }
  goto ldv_29939;
  case 2: ;
  if (ldv_state_variable_0 != 0) {
    tmp___2 = __VERIFIER_nondet_int();
    switch (tmp___2) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      nhi_unload();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_29944;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = nhi_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_dev_pm_ops_5();
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_29944;
    default:
    ldv_stop();
    }
    ldv_29944: ;
  } else {
  }
  goto ldv_29939;
  case 3: ;
  goto ldv_29939;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    invoke_work_2();
  } else {
  }
  goto ldv_29939;
  case 5: ;
  if (ldv_state_variable_5 != 0) {
    tmp___3 = __VERIFIER_nondet_int();
    switch (tmp___3) {
    case 0: ;
    if (ldv_state_variable_5 == 3) {
      ldv_retval_20 = nhi_suspend_noirq(nhi_pm_ops_group1);
      if (ldv_retval_20 == 0) {
        ldv_state_variable_5 = 6;
      } else {
      }
    } else {
    }
    goto ldv_29951;
    case 1: ;
    if (ldv_state_variable_5 == 5) {
      ldv_retval_19 = nhi_suspend_noirq(nhi_pm_ops_group1);
      if (ldv_retval_19 == 0) {
        ldv_state_variable_5 = 10;
      } else {
      }
    } else {
    }
    goto ldv_29951;
    case 2: ;
    if (ldv_state_variable_5 == 10) {
      ldv_retval_18 = nhi_resume_noirq(nhi_pm_ops_group1);
      if (ldv_retval_18 == 0) {
        ldv_state_variable_5 = 14;
      } else {
      }
    } else {
    }
    goto ldv_29951;
    case 3: ;
    if (ldv_state_variable_5 == 8) {
      ldv_retval_17 = nhi_resume_noirq(nhi_pm_ops_group1);
      if (ldv_retval_17 == 0) {
        ldv_state_variable_5 = 13;
      } else {
      }
    } else {
    }
    goto ldv_29951;
    case 4: ;
    if (ldv_state_variable_5 == 5) {
      ldv_retval_16 = ldv_suspend_late_5();
      if (ldv_retval_16 == 0) {
        ldv_state_variable_5 = 11;
      } else {
      }
    } else {
    }
    goto ldv_29951;
    case 5: ;
    if (ldv_state_variable_5 == 9) {
      ldv_retval_15 = ldv_restore_early_5();
      if (ldv_retval_15 == 0) {
        ldv_state_variable_5 = 13;
      } else {
      }
    } else {
    }
    goto ldv_29951;
    case 6: ;
    if (ldv_state_variable_5 == 11) {
      ldv_retval_14 = ldv_resume_early_5();
      if (ldv_retval_14 == 0) {
        ldv_state_variable_5 = 14;
      } else {
      }
    } else {
    }
    goto ldv_29951;
    case 7: ;
    if (ldv_state_variable_5 == 13) {
      ldv_retval_13 = ldv_restore_5();
      if (ldv_retval_13 == 0) {
        ldv_state_variable_5 = 15;
      } else {
      }
    } else {
    }
    goto ldv_29951;
    case 8: ;
    if (ldv_state_variable_5 == 7) {
      ldv_retval_12 = ldv_thaw_early_5();
      if (ldv_retval_12 == 0) {
        ldv_state_variable_5 = 12;
      } else {
      }
    } else {
    }
    goto ldv_29951;
    case 9: ;
    if (ldv_state_variable_5 == 1) {
      ldv_retval_11 = ldv_prepare_5();
      if (ldv_retval_11 == 0) {
        ldv_state_variable_5 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_29951;
    case 10: ;
    if (ldv_state_variable_5 == 14) {
      ldv_retval_10 = ldv_resume_5();
      if (ldv_retval_10 == 0) {
        ldv_state_variable_5 = 15;
      } else {
      }
    } else {
    }
    goto ldv_29951;
    case 11: ;
    if (ldv_state_variable_5 == 2) {
      ldv_retval_9 = ldv_freeze_5();
      if (ldv_retval_9 == 0) {
        ldv_state_variable_5 = 3;
      } else {
      }
    } else {
    }
    goto ldv_29951;
    case 12: ;
    if (ldv_state_variable_5 == 3) {
      ldv_retval_8 = ldv_freeze_late_5();
      if (ldv_retval_8 == 0) {
        ldv_state_variable_5 = 7;
      } else {
      }
    } else {
    }
    goto ldv_29951;
    case 13: ;
    if (ldv_state_variable_5 == 6) {
      ldv_retval_7 = ldv_thaw_noirq_5();
      if (ldv_retval_7 == 0) {
        ldv_state_variable_5 = 12;
      } else {
      }
    } else {
    }
    goto ldv_29951;
    case 14: ;
    if (ldv_state_variable_5 == 2) {
      ldv_retval_6 = ldv_poweroff_5();
      if (ldv_retval_6 == 0) {
        ldv_state_variable_5 = 4;
      } else {
      }
    } else {
    }
    goto ldv_29951;
    case 15: ;
    if (ldv_state_variable_5 == 4) {
      ldv_retval_5 = ldv_poweroff_noirq_5();
      if (ldv_retval_5 == 0) {
        ldv_state_variable_5 = 8;
      } else {
      }
    } else {
    }
    goto ldv_29951;
    case 16: ;
    if (ldv_state_variable_5 == 4) {
      ldv_retval_4 = ldv_poweroff_late_5();
      if (ldv_retval_4 == 0) {
        ldv_state_variable_5 = 9;
      } else {
      }
    } else {
    }
    goto ldv_29951;
    case 17: ;
    if (ldv_state_variable_5 == 2) {
      ldv_retval_3 = ldv_suspend_5();
      if (ldv_retval_3 == 0) {
        ldv_state_variable_5 = 5;
      } else {
      }
    } else {
    }
    goto ldv_29951;
    case 18: ;
    if (ldv_state_variable_5 == 12) {
      ldv_retval_2 = ldv_thaw_5();
      if (ldv_retval_2 == 0) {
        ldv_state_variable_5 = 15;
      } else {
      }
    } else {
    }
    goto ldv_29951;
    case 19: ;
    if (ldv_state_variable_5 == 15) {
      ldv_complete_5();
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_29951;
    default:
    ldv_stop();
    }
    ldv_29951: ;
  } else {
  }
  goto ldv_29939;
  default:
  ldv_stop();
  }
  ldv_29939: ;
  goto ldv_29973;
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
  activate_work_1(ldv_func_arg3, 2);
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
  activate_work_1(& ldv_func_arg3->work, 2);
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
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_8(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
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
  activate_work_1(& ldv_func_arg3->work, 2);
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
void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_tb_ring(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_tb_ring(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_tb_ring(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_tb_ring(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_tb_nhi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_tb_nhi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_tb_nhi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_tb_nhi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_23(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_tb_ring(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_24(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_tb_ring(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_tb_nhi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_tb_nhi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_27(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_tb_ring(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_28(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_tb_ring(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_tb_nhi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
bool ldv_flush_work_30(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = flush_work(ldv_func_arg1);
  ldv_func_res = tmp;
  call_and_disable_work_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_tb_nhi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_tb_nhi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
bool ldv_flush_work_33(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = flush_work(ldv_func_arg1);
  ldv_func_res = tmp;
  call_and_disable_work_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_tb_nhi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_tb_nhi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
bool ldv_flush_work_36(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  bool tmp ;
  {
  tmp = flush_work(ldv_func_arg1);
  ldv_func_res = tmp;
  call_and_disable_work_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv___pci_register_driver_37(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_4 = 1;
  ldv_pci_driver_4();
  return (ldv_func_res);
}
}
void ldv_pci_unregister_driver_38(struct pci_driver *ldv_func_arg1 )
{
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_state_variable_4 = 0;
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static __u32 __arch_swab32(__u32 val )
{
  {
  __asm__ ("bswapl %0": "=r" (val): "0" (val));
  return (val);
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
extern void *memcpy(void * , void const * , size_t ) ;
extern void warn_slowpath_null(char const * , int const ) ;
int ldv_mutex_trylock_85(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_83(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_86(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_82(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_84(struct mutex *ldv_func_arg1 ) ;
extern unsigned long __msecs_to_jiffies(unsigned int const ) ;
__inline static unsigned long msecs_to_jiffies(unsigned int const m )
{
  unsigned long tmp___0 ;
  {
  tmp___0 = __msecs_to_jiffies(m);
  return (tmp___0);
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
bool ldv_queue_work_on_77(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_79(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_78(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_81(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_80(struct workqueue_struct *ldv_func_arg1 ) ;
extern u32 __crc32c_le(u32 , unsigned char const * , size_t ) ;
extern struct dma_pool *dma_pool_create(char const * , struct device * , size_t ,
                                        size_t , size_t ) ;
extern void dma_pool_destroy(struct dma_pool * ) ;
extern void *dma_pool_alloc(struct dma_pool * , gfp_t , dma_addr_t * ) ;
extern void dma_pool_free(struct dma_pool * , void * , dma_addr_t ) ;
__inline static unsigned int __kfifo_uint_must_check_helper(unsigned int val )
{
  {
  return (val);
}
}
extern unsigned int __kfifo_in_r(struct __kfifo * , void const * , unsigned int ,
                                 size_t ) ;
extern unsigned int __kfifo_out_r(struct __kfifo * , void * , unsigned int , size_t ) ;
__inline static int ring_rx(struct tb_ring *ring , struct ring_frame *frame )
{
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  {
  __ret_warn_on = (int )ring->is_tx;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/thunderbolt/nhi.h",
                       91);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___0 = __ring_enqueue(ring, frame);
  return (tmp___0);
}
}
__inline static int ring_tx(struct tb_ring *ring , struct ring_frame *frame )
{
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  {
  __ret_warn_on = ! ring->is_tx;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/thunderbolt/nhi.h",
                       110);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___0 = __ring_enqueue(ring, frame);
  return (tmp___0);
}
}
struct tb_ctl *tb_ctl_alloc(struct tb_nhi *nhi , void (*cb)(void * , u64 , u8 ,
                                                            bool ) , void *cb_data ) ;
void tb_ctl_start(struct tb_ctl *ctl ) ;
void tb_ctl_stop(struct tb_ctl *ctl ) ;
void tb_ctl_free(struct tb_ctl *ctl ) ;
int tb_cfg_error(struct tb_ctl *ctl , u64 route , u32 port , enum tb_cfg_error error ) ;
struct tb_cfg_result tb_cfg_reset(struct tb_ctl *ctl , u64 route , int timeout_msec ) ;
struct tb_cfg_result tb_cfg_read_raw(struct tb_ctl *ctl , void *buffer , u64 route ,
                                     u32 port , enum tb_cfg_space space , u32 offset ,
                                     u32 length , int timeout_msec ) ;
struct tb_cfg_result tb_cfg_write_raw(struct tb_ctl *ctl , void *buffer , u64 route ,
                                      u32 port , enum tb_cfg_space space , u32 offset ,
                                      u32 length , int timeout_msec ) ;
int tb_cfg_read(struct tb_ctl *ctl , void *buffer , u64 route , u32 port , enum tb_cfg_space space ,
                u32 offset , u32 length ) ;
int tb_cfg_write(struct tb_ctl *ctl , void *buffer , u64 route , u32 port , enum tb_cfg_space space ,
                 u32 offset , u32 length ) ;
int tb_cfg_get_upstream_port(struct tb_ctl *ctl , u64 route ) ;
static u64 get_route(struct tb_cfg_header header )
{
  {
  return (((unsigned long long )header.route_hi << 32) | (unsigned long long )header.route_lo);
}
}
static struct tb_cfg_header make_header(u64 route )
{
  struct tb_cfg_header header ;
  int __ret_warn_on ;
  u64 tmp ;
  long tmp___0 ;
  {
  header.route_hi = (unsigned int )(route >> 32);
  header.unknown = (unsigned short)0;
  header.route_lo = (unsigned int )route;
  tmp = get_route(header);
  __ret_warn_on = tmp != route;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                       145);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  return (header);
}
}
static int check_header(struct ctl_pkg *pkg , u32 len , enum tb_cfg_pkg_type type ,
                        u64 route )
{
  struct tb_cfg_header *header ;
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
  long tmp___5 ;
  long tmp___6 ;
  int __ret_warn_on___3 ;
  u64 tmp___7 ;
  u64 tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  {
  header = (struct tb_cfg_header *)pkg->buffer;
  __ret_warn_on = (u32 )pkg->frame.size != len;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                      157, "wrong framesize (expected %#x, got %#x)\n", len, (int )pkg->frame.size);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    return (-5);
  } else {
  }
  __ret_warn_on___0 = (unsigned int )pkg->frame.eof != (unsigned int )type;
  tmp___1 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                      160, "wrong eof (expected %#x, got %#x)\n", (unsigned int )type,
                      (int )pkg->frame.eof);
  } else {
  }
  tmp___2 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___2 != 0L) {
    return (-5);
  } else {
  }
  __ret_warn_on___1 = (unsigned int )*((unsigned char *)pkg + 51UL) != 0U;
  tmp___3 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  if (tmp___3 != 0L) {
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                      163, "wrong sof (expected 0x0, got %#x)\n", (int )pkg->frame.sof);
  } else {
  }
  tmp___4 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  if (tmp___4 != 0L) {
    return (-5);
  } else {
  }
  __ret_warn_on___2 = (unsigned int )header->unknown != 512U;
  tmp___5 = ldv__builtin_expect(__ret_warn_on___2 != 0, 0L);
  if (tmp___5 != 0L) {
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                      168, "header->unknown is %#x\n", (int )header->unknown);
  } else {
  }
  tmp___6 = ldv__builtin_expect(__ret_warn_on___2 != 0, 0L);
  if (tmp___6 != 0L) {
    return (-5);
  } else {
  }
  tmp___7 = get_route(*header);
  __ret_warn_on___3 = tmp___7 != route;
  tmp___9 = ldv__builtin_expect(__ret_warn_on___3 != 0, 0L);
  if (tmp___9 != 0L) {
    tmp___8 = get_route(*header);
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                      172, "wrong route (expected %llx, got %llx)", route, tmp___8);
  } else {
  }
  tmp___10 = ldv__builtin_expect(__ret_warn_on___3 != 0, 0L);
  if (tmp___10 != 0L) {
    return (-5);
  } else {
  }
  return (0);
}
}
static int check_config_address(struct tb_cfg_address addr , enum tb_cfg_space space ,
                                u32 offset , u32 length )
{
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
  long tmp___5 ;
  long tmp___6 ;
  int __ret_warn_on___3 ;
  long tmp___7 ;
  long tmp___8 ;
  {
  __ret_warn_on = (unsigned int )*((unsigned char *)(& addr) + 3UL) != 0U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                      181, "addr.zero is %#x\n", (int )addr.zero);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    return (-5);
  } else {
  }
  __ret_warn_on___0 = (unsigned int )addr.space != (unsigned int )space;
  tmp___1 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                      184, "wrong space (expected %x, got %x\n)", (unsigned int )space,
                      (int )addr.space);
  } else {
  }
  tmp___2 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___2 != 0L) {
    return (-5);
  } else {
  }
  __ret_warn_on___1 = (u32 )addr.offset != offset;
  tmp___3 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  if (tmp___3 != 0L) {
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                      187, "wrong offset (expected %x, got %x\n)", offset, (int )addr.offset);
  } else {
  }
  tmp___4 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  if (tmp___4 != 0L) {
    return (-5);
  } else {
  }
  __ret_warn_on___2 = (u32 )addr.length != length;
  tmp___5 = ldv__builtin_expect(__ret_warn_on___2 != 0, 0L);
  if (tmp___5 != 0L) {
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                      190, "wrong space (expected %x, got %x\n)", length, (int )addr.length);
  } else {
  }
  tmp___6 = ldv__builtin_expect(__ret_warn_on___2 != 0, 0L);
  if (tmp___6 != 0L) {
    return (-5);
  } else {
  }
  __ret_warn_on___3 = (unsigned int )*((unsigned char *)(& addr) + 3UL) != 0U;
  tmp___7 = ldv__builtin_expect(__ret_warn_on___3 != 0, 0L);
  if (tmp___7 != 0L) {
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                      192, "addr.seq is %#x\n", (int )addr.seq);
  } else {
  }
  tmp___8 = ldv__builtin_expect(__ret_warn_on___3 != 0, 0L);
  if (tmp___8 != 0L) {
    return (-5);
  } else {
  }
  return (0);
}
}
static struct tb_cfg_result decode_error(struct ctl_pkg *response )
{
  struct cfg_error_pkg *pkg ;
  struct tb_cfg_result res ;
  u64 tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  int __ret_warn_on___0 ;
  long tmp___1 ;
  int __ret_warn_on___1 ;
  long tmp___2 ;
  {
  pkg = (struct cfg_error_pkg *)response->buffer;
  res.response_route = 0ULL;
  res.response_port = 0U;
  res.err = 0;
  res.tb_error = 0;
  res.response_route = get_route(pkg->header);
  res.response_port = 0U;
  tmp = get_route(pkg->header);
  res.err = check_header(response, 12U, 3, tmp);
  if (res.err != 0) {
    return (res);
  } else {
  }
  __ret_warn_on = (unsigned int )*((unsigned char *)pkg + 8UL) != 0U;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                      212, "pkg->zero1 is %#x\n", (int )pkg->zero1);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  __ret_warn_on___0 = (unsigned int )*((unsigned char *)pkg + 9UL) != 0U;
  tmp___1 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                      213, "pkg->zero1 is %#x\n", (int )pkg->zero1);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  __ret_warn_on___1 = (unsigned int )pkg->zero3 != 0U;
  tmp___2 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  if (tmp___2 != 0L) {
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                      214, "pkg->zero1 is %#x\n", (int )pkg->zero1);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  res.err = 1;
  res.tb_error = (enum tb_cfg_error )pkg->error;
  res.response_port = (u32 )pkg->port;
  return (res);
}
}
static struct tb_cfg_result parse_header(struct ctl_pkg *pkg , u32 len , enum tb_cfg_pkg_type type ,
                                         u64 route )
{
  struct tb_cfg_header *header ;
  struct tb_cfg_result res ;
  struct tb_cfg_result tmp ;
  {
  header = (struct tb_cfg_header *)pkg->buffer;
  res.response_route = 0ULL;
  res.response_port = 0U;
  res.err = 0;
  res.tb_error = 0;
  if ((unsigned int )*((unsigned char *)pkg + 51UL) == 3U) {
    tmp = decode_error(pkg);
    return (tmp);
  } else {
  }
  res.response_port = 0U;
  res.response_route = get_route(*header);
  res.err = check_header(pkg, len, type, route);
  return (res);
}
}
static void tb_cfg_print_error(struct tb_ctl *ctl , struct tb_cfg_result const *res )
{
  int __ret_warn_on ;
  long tmp ;
  int __ret_warn_on___0 ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  long tmp___2 ;
  int __ret_warn_on___1 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  long tmp___5 ;
  int __ret_warn_on___2 ;
  char const *tmp___6 ;
  char const *tmp___7 ;
  long tmp___8 ;
  int __ret_warn_on___3 ;
  char const *tmp___9 ;
  char const *tmp___10 ;
  long tmp___11 ;
  {
  __ret_warn_on = (int )res->err != 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                       240);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  switch ((unsigned int )res->tb_error) {
  case 0U: ;
  return;
  case 2U:
  __ret_warn_on___0 = 1;
  tmp___2 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___2 != 0L) {
    tmp___0 = dev_name((struct device const *)(& ((ctl->nhi)->pdev)->dev));
    tmp___1 = dev_driver_string((struct device const *)(& ((ctl->nhi)->pdev)->dev));
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                      253, "%s %s: CFG_ERROR(%llx:%x): Invalid config space of offset\n",
                      tmp___1, tmp___0, res->response_route, res->response_port);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  return;
  case 4U:
  __ret_warn_on___1 = 1;
  tmp___5 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  if (tmp___5 != 0L) {
    tmp___3 = dev_name((struct device const *)(& ((ctl->nhi)->pdev)->dev));
    tmp___4 = dev_driver_string((struct device const *)(& ((ctl->nhi)->pdev)->dev));
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                      262, "%s %s: CFG_ERROR(%llx:%x): Invalid port\n", tmp___4, tmp___3,
                      res->response_route, res->response_port);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  return;
  case 8U:
  __ret_warn_on___2 = 1;
  tmp___8 = ldv__builtin_expect(__ret_warn_on___2 != 0, 0L);
  if (tmp___8 != 0L) {
    tmp___6 = dev_name((struct device const *)(& ((ctl->nhi)->pdev)->dev));
    tmp___7 = dev_driver_string((struct device const *)(& ((ctl->nhi)->pdev)->dev));
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                      266, "%s %s: CFG_ERROR(%llx:%x): Route contains a loop\n", tmp___7,
                      tmp___6, res->response_route, res->response_port);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___2 != 0, 0L);
  return;
  default:
  __ret_warn_on___3 = 1;
  tmp___11 = ldv__builtin_expect(__ret_warn_on___3 != 0, 0L);
  if (tmp___11 != 0L) {
    tmp___9 = dev_name((struct device const *)(& ((ctl->nhi)->pdev)->dev));
    tmp___10 = dev_driver_string((struct device const *)(& ((ctl->nhi)->pdev)->dev));
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                      271, "%s %s: CFG_ERROR(%llx:%x): Unknown error\n", tmp___10,
                      tmp___9, res->response_route, res->response_port);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___3 != 0, 0L);
  return;
  }
}
}
static void cpu_to_be32_array(__be32 *dst , u32 *src , size_t len )
{
  int i ;
  __u32 tmp ;
  {
  i = 0;
  goto ldv_26697;
  ldv_26696:
  tmp = __fswab32(*(src + (unsigned long )i));
  *(dst + (unsigned long )i) = tmp;
  i = i + 1;
  ldv_26697: ;
  if ((size_t )i < len) {
    goto ldv_26696;
  } else {
  }
  return;
}
}
static void be32_to_cpu_array(u32 *dst , __be32 *src , size_t len )
{
  int i ;
  __u32 tmp ;
  {
  i = 0;
  goto ldv_26706;
  ldv_26705:
  tmp = __fswab32(*(src + (unsigned long )i));
  *(dst + (unsigned long )i) = tmp;
  i = i + 1;
  ldv_26706: ;
  if ((size_t )i < len) {
    goto ldv_26705;
  } else {
  }
  return;
}
}
static __be32 tb_crc(void *data , size_t len )
{
  u32 tmp ;
  __u32 tmp___0 ;
  {
  tmp = __crc32c_le(4294967295U, (unsigned char const *)data, len);
  tmp___0 = __fswab32(~ tmp);
  return (tmp___0);
}
}
static void tb_ctl_pkg_free(struct ctl_pkg *pkg )
{
  {
  if ((unsigned long )pkg != (unsigned long )((struct ctl_pkg *)0)) {
    dma_pool_free((pkg->ctl)->frame_pool, pkg->buffer, pkg->frame.buffer_phy);
    kfree((void const *)pkg);
  } else {
  }
  return;
}
}
static struct ctl_pkg *tb_ctl_pkg_alloc(struct tb_ctl *ctl )
{
  struct ctl_pkg *pkg ;
  void *tmp ;
  {
  tmp = kzalloc(56UL, 208U);
  pkg = (struct ctl_pkg *)tmp;
  if ((unsigned long )pkg == (unsigned long )((struct ctl_pkg *)0)) {
    return ((struct ctl_pkg *)0);
  } else {
  }
  pkg->ctl = ctl;
  pkg->buffer = dma_pool_alloc(ctl->frame_pool, 208U, & pkg->frame.buffer_phy);
  if ((unsigned long )pkg->buffer == (unsigned long )((void *)0)) {
    kfree((void const *)pkg);
    return ((struct ctl_pkg *)0);
  } else {
  }
  return (pkg);
}
}
static void tb_ctl_tx_callback(struct tb_ring *ring , struct ring_frame *frame , bool canceled )
{
  struct ctl_pkg *pkg ;
  struct ring_frame const *__mptr ;
  {
  __mptr = (struct ring_frame const *)frame;
  pkg = (struct ctl_pkg *)__mptr + 0xfffffffffffffff0UL;
  tb_ctl_pkg_free(pkg);
  return;
}
}
static int tb_ctl_tx(struct tb_ctl *ctl , void *data , size_t len , enum tb_cfg_pkg_type type )
{
  int res ;
  struct ctl_pkg *pkg ;
  int __ret_warn_on ;
  char const *tmp ;
  char const *tmp___0 ;
  long tmp___1 ;
  int __ret_warn_on___0 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  long tmp___4 ;
  {
  if ((len & 3UL) != 0UL) {
    __ret_warn_on = 1;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      tmp = dev_name((struct device const *)(& ((ctl->nhi)->pdev)->dev));
      tmp___0 = dev_driver_string((struct device const *)(& ((ctl->nhi)->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                        342, "%s %s: TX: invalid size: %zu\n", tmp___0, tmp, len);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return (-22);
  } else {
  }
  if (len > 252UL) {
    __ret_warn_on___0 = 1;
    tmp___4 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___4 != 0L) {
      tmp___2 = dev_name((struct device const *)(& ((ctl->nhi)->pdev)->dev));
      tmp___3 = dev_driver_string((struct device const *)(& ((ctl->nhi)->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                        347, "%s %s: TX: packet too large: %zu/%d\n", tmp___3, tmp___2,
                        len, 252);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    return (-22);
  } else {
  }
  pkg = tb_ctl_pkg_alloc(ctl);
  if ((unsigned long )pkg == (unsigned long )((struct ctl_pkg *)0)) {
    return (-12);
  } else {
  }
  pkg->frame.callback = & tb_ctl_tx_callback;
  pkg->frame.size = (unsigned short )((unsigned int )((unsigned short )len) + 4U);
  pkg->frame.sof = (unsigned char )type;
  pkg->frame.eof = (unsigned char )type;
  cpu_to_be32_array((__be32 *)pkg->buffer, (u32 *)data, len / 4UL);
  *((__be32 *)(pkg->buffer + len)) = tb_crc(pkg->buffer, len);
  res = ring_tx(ctl->tx, & pkg->frame);
  if (res != 0) {
    tb_ctl_pkg_free(pkg);
  } else {
  }
  return (res);
}
}
static void tb_ctl_handle_plug_event(struct tb_ctl *ctl , struct ctl_pkg *response )
{
  struct cfg_event_pkg *pkg ;
  u64 route ;
  u64 tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int __ret_warn_on ;
  long tmp___2 ;
  {
  pkg = (struct cfg_event_pkg *)response->buffer;
  tmp = get_route(pkg->header);
  route = tmp;
  tmp___0 = check_header(response, 12U, 5, route);
  if (tmp___0 != 0) {
    dev_warn((struct device const *)(& ((ctl->nhi)->pdev)->dev), "malformed TB_CFG_PKG_EVENT\n");
    return;
  } else {
  }
  tmp___1 = tb_cfg_error(ctl, route, (u32 )pkg->port, 7);
  if (tmp___1 != 0) {
    dev_warn((struct device const *)(& ((ctl->nhi)->pdev)->dev), "could not ack plug event on %llx:%x\n",
             route, (int )pkg->port);
  } else {
  }
  __ret_warn_on = pkg->zero != 0U;
  tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___2 != 0L) {
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                      383, "pkg->zero is %#x\n", (int )pkg->zero);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  (*(ctl->callback))(ctl->callback_data, route, (int )pkg->port, (int )pkg->unplug);
  return;
}
}
static void tb_ctl_rx_submit(struct ctl_pkg *pkg )
{
  {
  ring_rx((pkg->ctl)->rx, & pkg->frame);
  return;
}
}
static void tb_ctl_rx_callback(struct tb_ring *ring , struct ring_frame *frame , bool canceled )
{
  struct ctl_pkg *pkg ;
  struct ring_frame const *__mptr ;
  __be32 tmp ;
  struct __anonstruct___tmp_215 *__tmp ;
  struct ctl_pkg const *__val ;
  unsigned int __ret ;
  size_t __recsize ;
  struct __kfifo *__kfifo ;
  struct __anonstruct___tmpq_217 *__tmpq ;
  struct __anonstruct___tmpl_219 *__tmpl ;
  {
  __mptr = (struct ring_frame const *)frame;
  pkg = (struct ctl_pkg *)__mptr + 0xfffffffffffffff0UL;
  if ((int )canceled) {
    return;
  } else {
  }
  if ((int )frame->size <= 3 || ((unsigned int )frame->size & 3U) != 0U) {
    dev_err((struct device const *)(& (((pkg->ctl)->nhi)->pdev)->dev), "RX: invalid size %#x, dropping packet\n",
            (int )frame->size);
    goto rx;
  } else {
  }
  frame->size = (unsigned short )((unsigned int )frame->size + 65532U);
  tmp = tb_crc(pkg->buffer, (size_t )frame->size);
  if (*((__be32 *)pkg->buffer + (unsigned long )frame->size) != tmp) {
    dev_err((struct device const *)(& (((pkg->ctl)->nhi)->pdev)->dev), "RX: checksum mismatch, dropping packet\n");
    goto rx;
  } else {
  }
  be32_to_cpu_array((u32 *)pkg->buffer, (__be32 *)pkg->buffer, (size_t )((int )frame->size / 4));
  if ((unsigned int )*((unsigned char *)frame + 35UL) == 5U) {
    tb_ctl_handle_plug_event(pkg->ctl, pkg);
    goto rx;
  } else {
  }
  __tmp = & (pkg->ctl)->response_fifo;
  __val = (struct ctl_pkg const *)pkg;
  __recsize = 0UL;
  __kfifo = & __tmp->__annonCompField62.kfifo;
  if (__recsize != 0UL) {
    __ret = __kfifo_in_r(__kfifo, (void const *)(& __val), 8U, __recsize);
  } else {
    __tmpq = __tmp;
    __tmpl = __tmpq;
    __ret = (__tmpl->__annonCompField64.kfifo.in - __tmpl->__annonCompField64.kfifo.out > __tmpq->__annonCompField63.kfifo.mask) == 0;
    if (__ret != 0U) {
      *((struct ctl_pkg **)(& __tmp->buf) + (unsigned long )(__kfifo->in & __tmp->__annonCompField62.kfifo.mask)) = (struct ctl_pkg *)__val;
      __asm__ volatile ("": : : "memory");
      __kfifo->in = __kfifo->in + 1U;
    } else {
    }
  }
  if (__ret == 0U) {
    dev_err((struct device const *)(& (((pkg->ctl)->nhi)->pdev)->dev), "RX: fifo is full\n");
    goto rx;
  } else {
  }
  complete(& (pkg->ctl)->response_ready);
  return;
  rx:
  tb_ctl_rx_submit(pkg);
  return;
}
}
static struct tb_cfg_result tb_ctl_rx(struct tb_ctl *ctl , void *buffer , size_t length ,
                                      int timeout_msec , u64 route , enum tb_cfg_pkg_type type )
{
  struct tb_cfg_result res ;
  struct ctl_pkg *pkg ;
  int __ret_warn_on ;
  char const *tmp ;
  char const *tmp___0 ;
  long tmp___1 ;
  struct tb_cfg_result __constr_expr_0 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  int __ret_warn_on___0 ;
  char const *tmp___4 ;
  char const *tmp___5 ;
  long tmp___6 ;
  struct tb_cfg_result __constr_expr_1 ;
  struct __anonstruct___tmp_221 *__tmp ;
  struct ctl_pkg **__val ;
  unsigned int __ret ;
  size_t __recsize ;
  struct __kfifo *__kfifo ;
  struct __anonstruct___tmpq_223 *__tmpq ;
  unsigned int tmp___7 ;
  {
  tmp___2 = msecs_to_jiffies((unsigned int const )timeout_msec);
  tmp___3 = wait_for_completion_timeout(& ctl->response_ready, tmp___2);
  if (tmp___3 == 0UL) {
    __ret_warn_on = 1;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      tmp = dev_name((struct device const *)(& ((ctl->nhi)->pdev)->dev));
      tmp___0 = dev_driver_string((struct device const *)(& ((ctl->nhi)->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                        449, "%s %s: RX: timeout\n", tmp___0, tmp);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    __constr_expr_0.response_route = 0ULL;
    __constr_expr_0.response_port = 0U;
    __constr_expr_0.err = -110;
    __constr_expr_0.tb_error = 0;
    return (__constr_expr_0);
  } else {
  }
  __tmp = & ctl->response_fifo;
  __val = & pkg;
  __recsize = 0UL;
  __kfifo = & __tmp->__annonCompField65.kfifo;
  if (__recsize != 0UL) {
    __ret = __kfifo_out_r(__kfifo, (void *)__val, 8U, __recsize);
  } else {
    __tmpq = __tmp;
    __ret = (__tmpq->__annonCompField66.kfifo.in == __tmpq->__annonCompField66.kfifo.out) == 0;
    if (__ret != 0U) {
      *__val = *((struct ctl_pkg **)(& __tmp->buf) + (unsigned long )(__kfifo->out & __tmp->__annonCompField65.kfifo.mask));
      __asm__ volatile ("": : : "memory");
      __kfifo->out = __kfifo->out + 1U;
    } else {
    }
  }
  tmp___7 = __kfifo_uint_must_check_helper(__ret);
  if (tmp___7 == 0U) {
    __ret_warn_on___0 = 1;
    tmp___6 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___6 != 0L) {
      tmp___4 = dev_name((struct device const *)(& ((ctl->nhi)->pdev)->dev));
      tmp___5 = dev_driver_string((struct device const *)(& ((ctl->nhi)->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                        453, "%s %s: empty kfifo\n", tmp___5, tmp___4);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    __constr_expr_1.response_route = 0ULL;
    __constr_expr_1.response_port = 0U;
    __constr_expr_1.err = -5;
    __constr_expr_1.tb_error = 0;
    return (__constr_expr_1);
  } else {
  }
  res = parse_header(pkg, (u32 )length, type, route);
  if (res.err == 0) {
    memcpy(buffer, (void const *)pkg->buffer, length);
  } else {
  }
  tb_ctl_rx_submit(pkg);
  return (res);
}
}
struct tb_ctl *tb_ctl_alloc(struct tb_nhi *nhi , void (*cb)(void * , u64 , u8 ,
                                                            bool ) , void *cb_data )
{
  int i ;
  struct tb_ctl *ctl ;
  void *tmp ;
  struct __anonstruct___tmp_225 *__tmp ;
  struct __kfifo *__kfifo ;
  {
  tmp = kzalloc(376UL, 208U);
  ctl = (struct tb_ctl *)tmp;
  if ((unsigned long )ctl == (unsigned long )((struct tb_ctl *)0)) {
    return ((struct tb_ctl *)0);
  } else {
  }
  ctl->nhi = nhi;
  ctl->callback = cb;
  ctl->callback_data = cb_data;
  init_completion(& ctl->response_ready);
  __tmp = & ctl->response_fifo;
  __kfifo = & __tmp->__annonCompField67.kfifo;
  __kfifo->in = 0U;
  __kfifo->out = 0U;
  __kfifo->mask = 15U;
  __kfifo->esize = 8U;
  __kfifo->data = (void *)(& __tmp->buf);
  ctl->frame_pool = dma_pool_create("thunderbolt_ctl", & (nhi->pdev)->dev, 256UL,
                                    4UL, 0UL);
  if ((unsigned long )ctl->frame_pool == (unsigned long )((struct dma_pool *)0)) {
    goto err;
  } else {
  }
  ctl->tx = ring_alloc_tx(nhi, 0, 10);
  if ((unsigned long )ctl->tx == (unsigned long )((struct tb_ring *)0)) {
    goto err;
  } else {
  }
  ctl->rx = ring_alloc_rx(nhi, 0, 10);
  if ((unsigned long )ctl->rx == (unsigned long )((struct tb_ring *)0)) {
    goto err;
  } else {
  }
  i = 0;
  goto ldv_26807;
  ldv_26806:
  ctl->rx_packets[i] = tb_ctl_pkg_alloc(ctl);
  if ((unsigned long )ctl->rx_packets[i] == (unsigned long )((struct ctl_pkg *)0)) {
    goto err;
  } else {
  }
  (ctl->rx_packets[i])->frame.callback = & tb_ctl_rx_callback;
  i = i + 1;
  ldv_26807: ;
  if (i <= 9) {
    goto ldv_26806;
  } else {
  }
  _dev_info((struct device const *)(& ((ctl->nhi)->pdev)->dev), "control channel created\n");
  return (ctl);
  err:
  tb_ctl_free(ctl);
  return ((struct tb_ctl *)0);
}
}
void tb_ctl_free(struct tb_ctl *ctl )
{
  int i ;
  {
  if ((unsigned long )ctl->rx != (unsigned long )((struct tb_ring *)0)) {
    ring_free(ctl->rx);
  } else {
  }
  if ((unsigned long )ctl->tx != (unsigned long )((struct tb_ring *)0)) {
    ring_free(ctl->tx);
  } else {
  }
  i = 0;
  goto ldv_26814;
  ldv_26813:
  tb_ctl_pkg_free(ctl->rx_packets[i]);
  i = i + 1;
  ldv_26814: ;
  if (i <= 9) {
    goto ldv_26813;
  } else {
  }
  if ((unsigned long )ctl->frame_pool != (unsigned long )((struct dma_pool *)0)) {
    dma_pool_destroy(ctl->frame_pool);
  } else {
  }
  kfree((void const *)ctl);
  return;
}
}
void tb_ctl_start(struct tb_ctl *ctl )
{
  int i ;
  {
  _dev_info((struct device const *)(& ((ctl->nhi)->pdev)->dev), "control channel starting...\n");
  ring_start(ctl->tx);
  ring_start(ctl->rx);
  i = 0;
  goto ldv_26821;
  ldv_26820:
  tb_ctl_rx_submit(ctl->rx_packets[i]);
  i = i + 1;
  ldv_26821: ;
  if (i <= 9) {
    goto ldv_26820;
  } else {
  }
  return;
}
}
void tb_ctl_stop(struct tb_ctl *ctl )
{
  int __ret_warn_on ;
  char const *tmp ;
  char const *tmp___0 ;
  long tmp___1 ;
  struct __anonstruct___tmpq_228 *__tmpq ;
  struct __anonstruct___tmp_230 *__tmp ;
  unsigned int tmp___2 ;
  {
  ring_stop(ctl->rx);
  ring_stop(ctl->tx);
  __tmpq = & ctl->response_fifo;
  if ((__tmpq->__annonCompField68.kfifo.in == __tmpq->__annonCompField68.kfifo.out) == 0) {
    __ret_warn_on = 1;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      tmp = dev_name((struct device const *)(& ((ctl->nhi)->pdev)->dev));
      tmp___0 = dev_driver_string((struct device const *)(& ((ctl->nhi)->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                        565, "%s %s: dangling response in response_fifo\n", tmp___0,
                        tmp);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
  } else {
  }
  __tmp = & ctl->response_fifo;
  tmp___2 = 0U;
  __tmp->__annonCompField69.kfifo.out = tmp___2;
  __tmp->__annonCompField69.kfifo.in = tmp___2;
  _dev_info((struct device const *)(& ((ctl->nhi)->pdev)->dev), "control channel stopped\n");
  return;
}
}
int tb_cfg_error(struct tb_ctl *ctl , u64 route , u32 port , enum tb_cfg_error error )
{
  struct cfg_error_pkg pkg ;
  struct tb_cfg_header tmp ;
  int tmp___0 ;
  {
  tmp = make_header(route);
  pkg.header = tmp;
  pkg.error = (unsigned char )error;
  pkg.zero1 = (unsigned char)0;
  pkg.port = (unsigned char )port;
  pkg.zero2 = (unsigned char)0;
  pkg.zero3 = (unsigned short)0;
  _dev_info((struct device const *)(& ((ctl->nhi)->pdev)->dev), "resetting error on %llx:%x.\n",
            route, port);
  tmp___0 = tb_ctl_tx(ctl, (void *)(& pkg), 12UL, 3);
  return (tmp___0);
}
}
struct tb_cfg_result tb_cfg_reset(struct tb_ctl *ctl , u64 route , int timeout_msec )
{
  int err ;
  struct cfg_reset_pkg request ;
  struct tb_cfg_header tmp ;
  struct tb_cfg_header reply ;
  struct tb_cfg_result __constr_expr_0 ;
  struct tb_cfg_result tmp___0 ;
  {
  tmp = make_header(route);
  request.header = tmp;
  err = tb_ctl_tx(ctl, (void *)(& request), 8UL, 9);
  if (err != 0) {
    __constr_expr_0.response_route = 0ULL;
    __constr_expr_0.response_port = 0U;
    __constr_expr_0.err = err;
    __constr_expr_0.tb_error = 0;
    return (__constr_expr_0);
  } else {
  }
  tmp___0 = tb_ctl_rx(ctl, (void *)(& reply), 8UL, timeout_msec, route, 9);
  return (tmp___0);
}
}
struct tb_cfg_result tb_cfg_read_raw(struct tb_ctl *ctl , void *buffer , u64 route ,
                                     u32 port , enum tb_cfg_space space , u32 offset ,
                                     u32 length , int timeout_msec )
{
  struct tb_cfg_result res ;
  struct cfg_read_pkg request ;
  struct tb_cfg_header tmp ;
  struct cfg_write_pkg reply ;
  {
  res.response_route = 0ULL;
  res.response_port = 0U;
  res.err = 0;
  res.tb_error = 0;
  tmp = make_header(route);
  request.header = tmp;
  request.addr.offset = (unsigned short )offset;
  request.addr.length = (unsigned char )length;
  request.addr.port = (unsigned char )port;
  request.addr.space = (unsigned char )space;
  request.addr.seq = (unsigned char)0;
  request.addr.zero = (unsigned char)0;
  res.err = tb_ctl_tx(ctl, (void *)(& request), 12UL, 1);
  if (res.err != 0) {
    return (res);
  } else {
  }
  res = tb_ctl_rx(ctl, (void *)(& reply), (size_t )((length + 3U) * 4U), timeout_msec,
                  route, 1);
  if (res.err != 0) {
    return (res);
  } else {
  }
  res.response_port = (u32 )reply.addr.port;
  res.err = check_config_address(reply.addr, space, offset, length);
  if (res.err == 0) {
    memcpy(buffer, (void const *)(& reply.data), (size_t )(length * 4U));
  } else {
  }
  return (res);
}
}
struct tb_cfg_result tb_cfg_write_raw(struct tb_ctl *ctl , void *buffer , u64 route ,
                                      u32 port , enum tb_cfg_space space , u32 offset ,
                                      u32 length , int timeout_msec )
{
  struct tb_cfg_result res ;
  struct cfg_write_pkg request ;
  struct tb_cfg_header tmp ;
  struct cfg_read_pkg reply ;
  {
  res.response_route = 0ULL;
  res.response_port = 0U;
  res.err = 0;
  res.tb_error = 0;
  tmp = make_header(route);
  request.header = tmp;
  request.addr.offset = (unsigned short )offset;
  request.addr.length = (unsigned char )length;
  request.addr.port = (unsigned char )port;
  request.addr.space = (unsigned char )space;
  request.addr.seq = (unsigned char)0;
  request.addr.zero = (unsigned char)0;
  request.data[0] = 0U;
  request.data[1] = 0U;
  request.data[2] = 0U;
  request.data[3] = 0U;
  request.data[4] = 0U;
  request.data[5] = 0U;
  request.data[6] = 0U;
  request.data[7] = 0U;
  request.data[8] = 0U;
  request.data[9] = 0U;
  request.data[10] = 0U;
  request.data[11] = 0U;
  request.data[12] = 0U;
  request.data[13] = 0U;
  request.data[14] = 0U;
  request.data[15] = 0U;
  request.data[16] = 0U;
  request.data[17] = 0U;
  request.data[18] = 0U;
  request.data[19] = 0U;
  request.data[20] = 0U;
  request.data[21] = 0U;
  request.data[22] = 0U;
  request.data[23] = 0U;
  request.data[24] = 0U;
  request.data[25] = 0U;
  request.data[26] = 0U;
  request.data[27] = 0U;
  request.data[28] = 0U;
  request.data[29] = 0U;
  request.data[30] = 0U;
  request.data[31] = 0U;
  request.data[32] = 0U;
  request.data[33] = 0U;
  request.data[34] = 0U;
  request.data[35] = 0U;
  request.data[36] = 0U;
  request.data[37] = 0U;
  request.data[38] = 0U;
  request.data[39] = 0U;
  request.data[40] = 0U;
  request.data[41] = 0U;
  request.data[42] = 0U;
  request.data[43] = 0U;
  request.data[44] = 0U;
  request.data[45] = 0U;
  request.data[46] = 0U;
  request.data[47] = 0U;
  request.data[48] = 0U;
  request.data[49] = 0U;
  request.data[50] = 0U;
  request.data[51] = 0U;
  request.data[52] = 0U;
  request.data[53] = 0U;
  request.data[54] = 0U;
  request.data[55] = 0U;
  request.data[56] = 0U;
  request.data[57] = 0U;
  request.data[58] = 0U;
  request.data[59] = 0U;
  request.data[60] = 0U;
  request.data[61] = 0U;
  request.data[62] = 0U;
  request.data[63] = 0U;
  memcpy((void *)(& request.data), (void const *)buffer, (size_t )(length * 4U));
  res.err = tb_ctl_tx(ctl, (void *)(& request), (size_t )((length + 3U) * 4U), 2);
  if (res.err != 0) {
    return (res);
  } else {
  }
  res = tb_ctl_rx(ctl, (void *)(& reply), 12UL, timeout_msec, route, 2);
  if (res.err != 0) {
    return (res);
  } else {
  }
  res.response_port = (u32 )reply.addr.port;
  res.err = check_config_address(reply.addr, space, offset, length);
  return (res);
}
}
int tb_cfg_read(struct tb_ctl *ctl , void *buffer , u64 route , u32 port , enum tb_cfg_space space ,
                u32 offset , u32 length )
{
  struct tb_cfg_result res ;
  struct tb_cfg_result tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  {
  tmp = tb_cfg_read_raw(ctl, buffer, route, port, space, offset, length, 5000);
  res = tmp;
  if (res.err == 1) {
    tb_cfg_print_error(ctl, (struct tb_cfg_result const *)(& res));
    return (-5);
  } else {
  }
  __ret_warn_on = res.err != 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                      694, "tb_cfg_read: %d\n", res.err);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  return (res.err);
}
}
int tb_cfg_write(struct tb_ctl *ctl , void *buffer , u64 route , u32 port , enum tb_cfg_space space ,
                 u32 offset , u32 length )
{
  struct tb_cfg_result res ;
  struct tb_cfg_result tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  {
  tmp = tb_cfg_write_raw(ctl, buffer, route, port, space, offset, length, 5000);
  res = tmp;
  if (res.err == 1) {
    tb_cfg_print_error(ctl, (struct tb_cfg_result const *)(& res));
    return (-5);
  } else {
  }
  __ret_warn_on = res.err != 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/ctl.c",
                      707, "tb_cfg_write: %d\n", res.err);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  return (res.err);
}
}
int tb_cfg_get_upstream_port(struct tb_ctl *ctl , u64 route )
{
  u32 dummy ;
  struct tb_cfg_result res ;
  struct tb_cfg_result tmp ;
  {
  tmp = tb_cfg_read_raw(ctl, (void *)(& dummy), route, 0U, 2, 0U, 1U, 5000);
  res = tmp;
  if (res.err == 1) {
    return (-5);
  } else {
  }
  if (res.err != 0) {
    return (res.err);
  } else {
  }
  return ((int )res.response_port);
}
}
bool ldv_queue_work_on_77(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_78(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_79(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_80(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_81(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_82(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_83(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_84(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_85(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_86(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
int ldv_mutex_trylock_109(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_107(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_110(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_112(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_114(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_118(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_119(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_121(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_123(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_106(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_108(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_111(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_113(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_117(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_120(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_122(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_lock_of_tb(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_tb(struct mutex *lock ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
void ldv_destroy_workqueue_116(struct workqueue_struct *ldv_func_arg1 ) ;
bool ldv_queue_work_on_101(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_103(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_102(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_105(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_104(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_115(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static bool queue_work___0(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_101(8192, wq, work);
  return (tmp);
}
}
void call_and_disable_work_3(struct work_struct *work ) ;
void disable_work_3(struct work_struct *work ) ;
void invoke_work_3(void) ;
void activate_work_3(struct work_struct *work , int state ) ;
void call_and_disable_all_3(int state ) ;
extern void msleep(unsigned int ) ;
__inline static struct tb_port *tb_upstream_port(struct tb_switch *sw )
{
  {
  return (sw->ports + (unsigned long )sw->config.upstream_port_number);
}
}
__inline static u64 tb_route(struct tb_switch *sw )
{
  {
  return (((unsigned long long )sw->config.route_hi << 32) | (unsigned long long )sw->config.route_lo);
}
}
__inline static int tb_port_read(struct tb_port *port , void *buffer , enum tb_cfg_space space ,
                                 u32 offset , u32 length )
{
  u64 tmp ;
  int tmp___0 ;
  {
  tmp = tb_route(port->sw);
  tmp___0 = tb_cfg_read(((port->sw)->tb)->ctl, buffer, tmp, (u32 )port->port, space,
                        offset, length);
  return (tmp___0);
}
}
struct tb_switch *tb_switch_alloc(struct tb *tb , u64 route ) ;
void tb_switch_free(struct tb_switch *sw ) ;
void tb_switch_suspend(struct tb_switch *sw ) ;
int tb_switch_resume(struct tb_switch *sw ) ;
int tb_switch_reset(struct tb *tb , u64 route ) ;
void tb_sw_set_unpplugged(struct tb_switch *sw ) ;
struct tb_switch *get_switch_at_route(struct tb_switch *sw , u64 route ) ;
int tb_wait_for_port(struct tb_port *port , bool wait_if_unplugged ) ;
int tb_find_cap(struct tb_port *port , enum tb_cfg_space space , enum tb_cap cap ) ;
__inline static bool tb_is_upstream_port(struct tb_port *port )
{
  struct tb_port *tmp ;
  {
  tmp = tb_upstream_port(port->sw);
  return ((unsigned long )tmp == (unsigned long )port);
}
}
__inline static u64 tb_downstream_route(struct tb_port *port )
{
  u64 tmp ;
  {
  tmp = tb_route(port->sw);
  return (tmp | ((unsigned long long )port->port << (int )(port->sw)->config.depth * 8));
}
}
struct tb_pci_tunnel *tb_pci_alloc(struct tb *tb , struct tb_port *up , struct tb_port *down ) ;
void tb_pci_free(struct tb_pci_tunnel *tunnel ) ;
int tb_pci_activate(struct tb_pci_tunnel *tunnel ) ;
int tb_pci_restart(struct tb_pci_tunnel *tunnel ) ;
void tb_pci_deactivate(struct tb_pci_tunnel *tunnel ) ;
bool tb_pci_is_invalid(struct tb_pci_tunnel *tunnel ) ;
static void tb_scan_port(struct tb_port *port ) ;
static void tb_scan_switch(struct tb_switch *sw )
{
  int i ;
  {
  i = 1;
  goto ldv_26737;
  ldv_26736:
  tb_scan_port(sw->ports + (unsigned long )i);
  i = i + 1;
  ldv_26737: ;
  if ((int )sw->config.max_port_number >= i) {
    goto ldv_26736;
  } else {
  }
  return;
}
}
static void tb_scan_port(struct tb_port *port )
{
  struct tb_switch *sw ;
  bool tmp ;
  int tmp___0 ;
  struct tb_port *__port ;
  int __ret_warn_on ;
  u64 tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  long tmp___4 ;
  u64 tmp___5 ;
  struct tb_port *tmp___6 ;
  {
  tmp = tb_is_upstream_port(port);
  if ((int )tmp) {
    return;
  } else {
  }
  if (*((unsigned int *)port + 2UL) != 1U) {
    return;
  } else {
  }
  if ((unsigned long )port->dual_link_port != (unsigned long )((struct tb_port *)0) && (unsigned int )*((unsigned char *)port + 64UL) != 0U) {
    return;
  } else {
  }
  tmp___0 = tb_wait_for_port(port, 0);
  if (tmp___0 <= 0) {
    return;
  } else {
  }
  if ((unsigned long )port->remote != (unsigned long )((struct tb_port *)0)) {
    __port = port;
    __ret_warn_on = 1;
    tmp___4 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___4 != 0L) {
      tmp___1 = tb_route(__port->sw);
      tmp___2 = dev_name((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev));
      tmp___3 = dev_driver_string((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/tb.c",
                        49, "%s %s: %llx:%x: port already has a remote!\n", tmp___3,
                        tmp___2, tmp___1, (int )__port->port);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return;
  } else {
  }
  tmp___5 = tb_downstream_route(port);
  sw = tb_switch_alloc((port->sw)->tb, tmp___5);
  if ((unsigned long )sw == (unsigned long )((struct tb_switch *)0)) {
    return;
  } else {
  }
  port->remote = tb_upstream_port(sw);
  tmp___6 = tb_upstream_port(sw);
  tmp___6->remote = port;
  tb_scan_switch(sw);
  return;
}
}
static void tb_free_invalid_tunnels(struct tb *tb )
{
  struct tb_pci_tunnel *tunnel ;
  struct tb_pci_tunnel *n ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  bool tmp ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)tb->tunnel_list.next;
  tunnel = (struct tb_pci_tunnel *)__mptr + 0xffffffffffffffd8UL;
  __mptr___0 = (struct list_head const *)tunnel->list.next;
  n = (struct tb_pci_tunnel *)__mptr___0 + 0xffffffffffffffd8UL;
  goto ldv_26758;
  ldv_26757:
  tmp = tb_pci_is_invalid(tunnel);
  if ((int )tmp) {
    tb_pci_deactivate(tunnel);
    tb_pci_free(tunnel);
  } else {
  }
  tunnel = n;
  __mptr___1 = (struct list_head const *)n->list.next;
  n = (struct tb_pci_tunnel *)__mptr___1 + 0xffffffffffffffd8UL;
  ldv_26758: ;
  if ((unsigned long )(& tunnel->list) != (unsigned long )(& tb->tunnel_list)) {
    goto ldv_26757;
  } else {
  }
  return;
}
}
static void tb_free_unplugged_children(struct tb_switch *sw )
{
  int i ;
  struct tb_port *port ;
  bool tmp ;
  {
  i = 1;
  goto ldv_26767;
  ldv_26766:
  port = sw->ports + (unsigned long )i;
  tmp = tb_is_upstream_port(port);
  if ((int )tmp) {
    goto ldv_26765;
  } else {
  }
  if ((unsigned long )port->remote == (unsigned long )((struct tb_port *)0)) {
    goto ldv_26765;
  } else {
  }
  if ((int )((port->remote)->sw)->is_unplugged) {
    tb_switch_free((port->remote)->sw);
    port->remote = (struct tb_port *)0;
  } else {
    tb_free_unplugged_children((port->remote)->sw);
  }
  ldv_26765:
  i = i + 1;
  ldv_26767: ;
  if ((int )sw->config.max_port_number >= i) {
    goto ldv_26766;
  } else {
  }
  return;
}
}
static struct tb_port *tb_find_pci_up_port(struct tb_switch *sw )
{
  int i ;
  {
  i = 1;
  goto ldv_26774;
  ldv_26773: ;
  if (*((unsigned int *)(sw->ports + (unsigned long )i) + 2UL) == 1048834U) {
    return (sw->ports + (unsigned long )i);
  } else {
  }
  i = i + 1;
  ldv_26774: ;
  if ((int )sw->config.max_port_number >= i) {
    goto ldv_26773;
  } else {
  }
  return ((struct tb_port *)0);
}
}
static struct tb_port *tb_find_unused_down_port(struct tb_switch *sw )
{
  int i ;
  int cap ;
  int res ;
  int data ;
  bool tmp ;
  {
  i = 1;
  goto ldv_26785;
  ldv_26784:
  tmp = tb_is_upstream_port(sw->ports + (unsigned long )i);
  if ((int )tmp) {
    goto ldv_26783;
  } else {
  }
  if (*((unsigned int *)(sw->ports + (unsigned long )i) + 2UL) != 1048833U) {
    goto ldv_26783;
  } else {
  }
  cap = tb_find_cap(sw->ports + (unsigned long )i, 1, 4);
  if (cap <= 0) {
    goto ldv_26783;
  } else {
  }
  res = tb_port_read(sw->ports + (unsigned long )i, (void *)(& data), 1, (u32 )cap,
                     1U);
  if (res < 0) {
    goto ldv_26783;
  } else {
  }
  if (data < 0) {
    goto ldv_26783;
  } else {
  }
  return (sw->ports + (unsigned long )i);
  ldv_26783:
  i = i + 1;
  ldv_26785: ;
  if ((int )sw->config.max_port_number >= i) {
    goto ldv_26784;
  } else {
  }
  return ((struct tb_port *)0);
}
}
static void tb_activate_pcie_devices(struct tb *tb )
{
  int i ;
  int cap ;
  u32 data ;
  struct tb_switch *sw ;
  struct tb_port *up_port ;
  struct tb_port *down_port ;
  struct tb_pci_tunnel *tunnel ;
  bool tmp ;
  struct tb_switch *__sw ;
  u64 tmp___0 ;
  int tmp___1 ;
  struct tb_port *__port ;
  u64 tmp___2 ;
  struct tb_port *__port___0 ;
  u64 tmp___3 ;
  struct tb_port *__port___1 ;
  u64 tmp___4 ;
  struct tb_port *__port___2 ;
  u64 tmp___5 ;
  int tmp___6 ;
  {
  i = 1;
  goto ldv_26804;
  ldv_26803:
  tmp = tb_is_upstream_port((tb->root_switch)->ports + (unsigned long )i);
  if ((int )tmp) {
    goto ldv_26797;
  } else {
  }
  if (*((unsigned int *)((tb->root_switch)->ports + (unsigned long )i) + 2UL) != 1U) {
    goto ldv_26797;
  } else {
  }
  if ((unsigned long )((tb->root_switch)->ports + (unsigned long )i)->remote == (unsigned long )((struct tb_port *)0)) {
    goto ldv_26797;
  } else {
  }
  sw = (((tb->root_switch)->ports + (unsigned long )i)->remote)->sw;
  up_port = tb_find_pci_up_port(sw);
  if ((unsigned long )up_port == (unsigned long )((struct tb_port *)0)) {
    __sw = sw;
    tmp___0 = tb_route(__sw);
    _dev_info((struct device const *)(& (((__sw->tb)->nhi)->pdev)->dev), "%llx: no PCIe devices found, aborting\n",
              tmp___0);
    goto ldv_26797;
  } else {
  }
  cap = tb_find_cap(up_port, 1, 4);
  if (cap <= 0) {
    goto ldv_26797;
  } else {
  }
  tmp___1 = tb_port_read(up_port, (void *)(& data), 1, (u32 )cap, 1U);
  if (tmp___1 != 0) {
    goto ldv_26797;
  } else {
  }
  if ((int )data < 0) {
    __port = up_port;
    tmp___2 = tb_route(__port->sw);
    _dev_info((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev),
              "%llx:%x: PCIe port already activated, aborting\n", tmp___2, (int )__port->port);
    goto ldv_26797;
  } else {
  }
  down_port = tb_find_unused_down_port(tb->root_switch);
  if ((unsigned long )down_port == (unsigned long )((struct tb_port *)0)) {
    __port___0 = up_port;
    tmp___3 = tb_route(__port___0->sw);
    _dev_info((struct device const *)(& ((((__port___0->sw)->tb)->nhi)->pdev)->dev),
              "%llx:%x: All PCIe down ports are occupied, aborting\n", tmp___3, (int )__port___0->port);
    goto ldv_26797;
  } else {
  }
  tunnel = tb_pci_alloc(tb, up_port, down_port);
  if ((unsigned long )tunnel == (unsigned long )((struct tb_pci_tunnel *)0)) {
    __port___1 = up_port;
    tmp___4 = tb_route(__port___1->sw);
    _dev_info((struct device const *)(& ((((__port___1->sw)->tb)->nhi)->pdev)->dev),
              "%llx:%x: PCIe tunnel allocation failed, aborting\n", tmp___4, (int )__port___1->port);
    goto ldv_26797;
  } else {
  }
  tmp___6 = tb_pci_activate(tunnel);
  if (tmp___6 != 0) {
    __port___2 = up_port;
    tmp___5 = tb_route(__port___2->sw);
    _dev_info((struct device const *)(& ((((__port___2->sw)->tb)->nhi)->pdev)->dev),
              "%llx:%x: PCIe tunnel activation failed, aborting\n", tmp___5, (int )__port___2->port);
    tb_pci_free(tunnel);
  } else {
  }
  ldv_26797:
  i = i + 1;
  ldv_26804: ;
  if ((int )(tb->root_switch)->config.max_port_number >= i) {
    goto ldv_26803;
  } else {
  }
  return;
}
}
static void tb_handle_hotplug(struct work_struct *work )
{
  struct tb_hotplug_event *ev ;
  struct work_struct const *__mptr ;
  struct tb *tb ;
  struct tb_switch *sw ;
  struct tb_port *port ;
  bool tmp ;
  struct tb_port *__port ;
  u64 tmp___0 ;
  struct tb_port *__port___0 ;
  u64 tmp___1 ;
  struct tb_port *__port___1 ;
  u64 tmp___2 ;
  struct tb_port *__port___2 ;
  u64 tmp___3 ;
  struct tb_port *__port___3 ;
  u64 tmp___4 ;
  struct tb_switch *__sw ;
  u64 tmp___5 ;
  struct tb_switch *__sw___0 ;
  u64 tmp___6 ;
  {
  __mptr = (struct work_struct const *)work;
  ev = (struct tb_hotplug_event *)__mptr;
  tb = ev->tb;
  ldv_mutex_lock_111(& tb->lock);
  if (! tb->hotplug_active) {
    goto out;
  } else {
  }
  sw = get_switch_at_route(tb->root_switch, ev->route);
  if ((unsigned long )sw == (unsigned long )((struct tb_switch *)0)) {
    dev_warn((struct device const *)(& ((tb->nhi)->pdev)->dev), "hotplug event from non existent switch %llx:%x (unplug: %d)\n",
             ev->route, (int )ev->port, (int )ev->unplug);
    goto out;
  } else {
  }
  if ((int )ev->port > (int )sw->config.max_port_number) {
    dev_warn((struct device const *)(& ((tb->nhi)->pdev)->dev), "hotplug event from non existent port %llx:%x (unplug: %d)\n",
             ev->route, (int )ev->port, (int )ev->unplug);
    goto out;
  } else {
  }
  port = sw->ports + (unsigned long )ev->port;
  tmp = tb_is_upstream_port(port);
  if ((int )tmp) {
    dev_warn((struct device const *)(& ((tb->nhi)->pdev)->dev), "hotplug event for upstream port %llx:%x (unplug: %d)\n",
             ev->route, (int )ev->port, (int )ev->unplug);
    goto out;
  } else {
  }
  if ((int )ev->unplug) {
    if ((unsigned long )port->remote != (unsigned long )((struct tb_port *)0)) {
      __port = port;
      tmp___0 = tb_route(__port->sw);
      _dev_info((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev),
                "%llx:%x: unplugged\n", tmp___0, (int )__port->port);
      tb_sw_set_unpplugged((port->remote)->sw);
      tb_free_invalid_tunnels(tb);
      tb_switch_free((port->remote)->sw);
      port->remote = (struct tb_port *)0;
    } else {
      __port___0 = port;
      tmp___1 = tb_route(__port___0->sw);
      _dev_info((struct device const *)(& ((((__port___0->sw)->tb)->nhi)->pdev)->dev),
                "%llx:%x: got unplug event for disconnected port, ignoring\n", tmp___1,
                (int )__port___0->port);
    }
  } else
  if ((unsigned long )port->remote != (unsigned long )((struct tb_port *)0)) {
    __port___1 = port;
    tmp___2 = tb_route(__port___1->sw);
    _dev_info((struct device const *)(& ((((__port___1->sw)->tb)->nhi)->pdev)->dev),
              "%llx:%x: got plug event for connected port, ignoring\n", tmp___2, (int )__port___1->port);
  } else {
    __port___2 = port;
    tmp___3 = tb_route(__port___2->sw);
    _dev_info((struct device const *)(& ((((__port___2->sw)->tb)->nhi)->pdev)->dev),
              "%llx:%x: hotplug: scanning\n", tmp___3, (int )__port___2->port);
    tb_scan_port(port);
    if ((unsigned long )port->remote == (unsigned long )((struct tb_port *)0)) {
      __port___3 = port;
      tmp___4 = tb_route(__port___3->sw);
      _dev_info((struct device const *)(& ((((__port___3->sw)->tb)->nhi)->pdev)->dev),
                "%llx:%x: hotplug: no switch found\n", tmp___4, (int )__port___3->port);
    } else
    if ((int )((port->remote)->sw)->config.depth > 1) {
      __sw = (port->remote)->sw;
      tmp___5 = tb_route(__sw);
      dev_warn((struct device const *)(& (((__sw->tb)->nhi)->pdev)->dev), "%llx: hotplug: chaining not supported\n",
               tmp___5);
    } else {
      __sw___0 = (port->remote)->sw;
      tmp___6 = tb_route(__sw___0);
      _dev_info((struct device const *)(& (((__sw___0->tb)->nhi)->pdev)->dev), "%llx: hotplug: activating pcie devices\n",
                tmp___6);
      tb_activate_pcie_devices(tb);
    }
  }
  out:
  ldv_mutex_unlock_112(& tb->lock);
  kfree((void const *)ev);
  return;
}
}
static void tb_schedule_hotplug_handler(void *data , u64 route , u8 port , bool unplug )
{
  struct tb *tb ;
  struct tb_hotplug_event *ev ;
  void *tmp ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  tb = (struct tb *)data;
  tmp = kmalloc(104UL, 208U);
  ev = (struct tb_hotplug_event *)tmp;
  if ((unsigned long )ev == (unsigned long )((struct tb_hotplug_event *)0)) {
    return;
  } else {
  }
  __init_work(& ev->work, 0);
  __constr_expr_0.counter = 137438953408L;
  ev->work.data = __constr_expr_0;
  lockdep_init_map(& ev->work.lockdep_map, "(&ev->work)", & __key, 0);
  INIT_LIST_HEAD(& ev->work.entry);
  ev->work.func = & tb_handle_hotplug;
  ev->tb = tb;
  ev->route = route;
  ev->port = port;
  ev->unplug = unplug;
  queue_work___0(tb->wq, & ev->work);
  return;
}
}
void thunderbolt_shutdown_and_free(struct tb *tb )
{
  struct tb_pci_tunnel *tunnel ;
  struct tb_pci_tunnel *n ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  ldv_mutex_lock_113(& tb->lock);
  __mptr = (struct list_head const *)tb->tunnel_list.next;
  tunnel = (struct tb_pci_tunnel *)__mptr + 0xffffffffffffffd8UL;
  __mptr___0 = (struct list_head const *)tunnel->list.next;
  n = (struct tb_pci_tunnel *)__mptr___0 + 0xffffffffffffffd8UL;
  goto ldv_26851;
  ldv_26850:
  tb_pci_deactivate(tunnel);
  tb_pci_free(tunnel);
  tunnel = n;
  __mptr___1 = (struct list_head const *)n->list.next;
  n = (struct tb_pci_tunnel *)__mptr___1 + 0xffffffffffffffd8UL;
  ldv_26851: ;
  if ((unsigned long )(& tunnel->list) != (unsigned long )(& tb->tunnel_list)) {
    goto ldv_26850;
  } else {
  }
  if ((unsigned long )tb->root_switch != (unsigned long )((struct tb_switch *)0)) {
    tb_switch_free(tb->root_switch);
  } else {
  }
  tb->root_switch = (struct tb_switch *)0;
  if ((unsigned long )tb->ctl != (unsigned long )((struct tb_ctl *)0)) {
    tb_ctl_stop(tb->ctl);
    tb_ctl_free(tb->ctl);
  } else {
  }
  tb->ctl = (struct tb_ctl *)0;
  tb->hotplug_active = 0;
  ldv_mutex_unlock_114(& tb->lock);
  if ((unsigned long )tb->wq != (unsigned long )((struct workqueue_struct *)0)) {
    ldv_flush_workqueue_115(tb->wq);
    ldv_destroy_workqueue_116(tb->wq);
    tb->wq = (struct workqueue_struct *)0;
  } else {
  }
  mutex_destroy(& tb->lock);
  kfree((void const *)tb);
  return;
}
}
struct tb *thunderbolt_alloc_and_start(struct tb_nhi *nhi )
{
  struct tb *tb ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  char const *__lock_name ;
  struct workqueue_struct *tmp___0 ;
  {
  tmp = kzalloc(216UL, 208U);
  tb = (struct tb *)tmp;
  if ((unsigned long )tb == (unsigned long )((struct tb *)0)) {
    return ((struct tb *)0);
  } else {
  }
  tb->nhi = nhi;
  __mutex_init(& tb->lock, "&tb->lock", & __key);
  ldv_mutex_lock_117(& tb->lock);
  INIT_LIST_HEAD(& tb->tunnel_list);
  __lock_name = "\"thunderbolt\"";
  tmp___0 = __alloc_workqueue_key("thunderbolt", 131074U, 1, & __key___0, __lock_name);
  tb->wq = tmp___0;
  if ((unsigned long )tb->wq == (unsigned long )((struct workqueue_struct *)0)) {
    goto err_locked;
  } else {
  }
  tb->ctl = tb_ctl_alloc(tb->nhi, & tb_schedule_hotplug_handler, (void *)tb);
  if ((unsigned long )tb->ctl == (unsigned long )((struct tb_ctl *)0)) {
    goto err_locked;
  } else {
  }
  tb_ctl_start(tb->ctl);
  tb->root_switch = tb_switch_alloc(tb, 0ULL);
  if ((unsigned long )tb->root_switch == (unsigned long )((struct tb_switch *)0)) {
    goto err_locked;
  } else {
  }
  tb_scan_switch(tb->root_switch);
  tb_activate_pcie_devices(tb);
  tb->hotplug_active = 1;
  ldv_mutex_unlock_118(& tb->lock);
  return (tb);
  err_locked:
  ldv_mutex_unlock_119(& tb->lock);
  thunderbolt_shutdown_and_free(tb);
  return ((struct tb *)0);
}
}
void thunderbolt_suspend(struct tb *tb )
{
  {
  _dev_info((struct device const *)(& ((tb->nhi)->pdev)->dev), "suspending...\n");
  ldv_mutex_lock_120(& tb->lock);
  tb_switch_suspend(tb->root_switch);
  tb_ctl_stop(tb->ctl);
  tb->hotplug_active = 0;
  ldv_mutex_unlock_121(& tb->lock);
  _dev_info((struct device const *)(& ((tb->nhi)->pdev)->dev), "suspend finished\n");
  return;
}
}
void thunderbolt_resume(struct tb *tb )
{
  struct tb_pci_tunnel *tunnel ;
  struct tb_pci_tunnel *n ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int tmp ;
  {
  _dev_info((struct device const *)(& ((tb->nhi)->pdev)->dev), "resuming...\n");
  ldv_mutex_lock_122(& tb->lock);
  tb_ctl_start(tb->ctl);
  tb_switch_reset(tb, 0ULL);
  tb_switch_resume(tb->root_switch);
  tb_free_invalid_tunnels(tb);
  tb_free_unplugged_children(tb->root_switch);
  __mptr = (struct list_head const *)tb->tunnel_list.next;
  tunnel = (struct tb_pci_tunnel *)__mptr + 0xffffffffffffffd8UL;
  __mptr___0 = (struct list_head const *)tunnel->list.next;
  n = (struct tb_pci_tunnel *)__mptr___0 + 0xffffffffffffffd8UL;
  goto ldv_26877;
  ldv_26876:
  tb_pci_restart(tunnel);
  tunnel = n;
  __mptr___1 = (struct list_head const *)n->list.next;
  n = (struct tb_pci_tunnel *)__mptr___1 + 0xffffffffffffffd8UL;
  ldv_26877: ;
  if ((unsigned long )(& tunnel->list) != (unsigned long )(& tb->tunnel_list)) {
    goto ldv_26876;
  } else {
  }
  tmp = list_empty((struct list_head const *)(& tb->tunnel_list));
  if (tmp == 0) {
    _dev_info((struct device const *)(& ((tb->nhi)->pdev)->dev), "tunnels restarted, sleeping for 100ms\n");
    msleep(100U);
  } else {
  }
  tb->hotplug_active = 1;
  ldv_mutex_unlock_123(& tb->lock);
  _dev_info((struct device const *)(& ((tb->nhi)->pdev)->dev), "resume finished\n");
  return;
}
}
void call_and_disable_work_3(struct work_struct *work )
{
  {
  if ((ldv_work_3_0 == 2 || ldv_work_3_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_0) {
    tb_handle_hotplug(work);
    ldv_work_3_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_1 == 2 || ldv_work_3_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_1) {
    tb_handle_hotplug(work);
    ldv_work_3_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_2 == 2 || ldv_work_3_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_2) {
    tb_handle_hotplug(work);
    ldv_work_3_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_3 == 2 || ldv_work_3_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_3) {
    tb_handle_hotplug(work);
    ldv_work_3_3 = 1;
    return;
  } else {
  }
  return;
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
    tb_handle_hotplug(ldv_work_struct_3_0);
    ldv_work_3_0 = 1;
  } else {
  }
  goto ldv_26896;
  case 1: ;
  if (ldv_work_3_1 == 2 || ldv_work_3_1 == 3) {
    ldv_work_3_1 = 4;
    tb_handle_hotplug(ldv_work_struct_3_0);
    ldv_work_3_1 = 1;
  } else {
  }
  goto ldv_26896;
  case 2: ;
  if (ldv_work_3_2 == 2 || ldv_work_3_2 == 3) {
    ldv_work_3_2 = 4;
    tb_handle_hotplug(ldv_work_struct_3_0);
    ldv_work_3_2 = 1;
  } else {
  }
  goto ldv_26896;
  case 3: ;
  if (ldv_work_3_3 == 2 || ldv_work_3_3 == 3) {
    ldv_work_3_3 = 4;
    tb_handle_hotplug(ldv_work_struct_3_0);
    ldv_work_3_3 = 1;
  } else {
  }
  goto ldv_26896;
  default:
  ldv_stop();
  }
  ldv_26896: ;
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
bool ldv_queue_work_on_101(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_102(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_103(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_104(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_105(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_106(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_107(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_108(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_109(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_110(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_111(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_tb(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_112(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_tb(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_113(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_tb(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_114(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_tb(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_flush_workqueue_115(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
void ldv_destroy_workqueue_116(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
void ldv_mutex_lock_117(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_tb(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_118(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_tb(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_119(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_tb(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_120(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_tb(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_121(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_tb(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_122(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_tb(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_123(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_tb(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static int fls64(__u64 x )
{
  int bitpos ;
  {
  bitpos = -1;
  __asm__ ("bsrq %1,%q0": "+r" (bitpos): "rm" (x));
  return (bitpos + 1);
}
}
int ldv_mutex_trylock_159(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_157(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_160(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_156(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_158(struct mutex *ldv_func_arg1 ) ;
bool ldv_queue_work_on_151(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_153(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_152(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_155(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_154(struct workqueue_struct *ldv_func_arg1 ) ;
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
void *ldv_calloc(size_t nmemb , size_t size ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc_array(n, size, flags | 32768U);
  return (tmp);
}
}
__inline static int tb_sw_read(struct tb_switch *sw , void *buffer , enum tb_cfg_space space ,
                               u32 offset , u32 length )
{
  u64 tmp ;
  int tmp___0 ;
  {
  tmp = tb_route(sw);
  tmp___0 = tb_cfg_read((sw->tb)->ctl, buffer, tmp, 0U, space, offset, length);
  return (tmp___0);
}
}
__inline static int tb_sw_write(struct tb_switch *sw , void *buffer , enum tb_cfg_space space ,
                                u32 offset , u32 length )
{
  u64 tmp ;
  int tmp___0 ;
  {
  tmp = tb_route(sw);
  tmp___0 = tb_cfg_write((sw->tb)->ctl, buffer, tmp, 0U, space, offset, length);
  return (tmp___0);
}
}
__inline static int tb_port_write(struct tb_port *port , void *buffer , enum tb_cfg_space space ,
                                  u32 offset , u32 length )
{
  u64 tmp ;
  int tmp___0 ;
  {
  tmp = tb_route(port->sw);
  tmp___0 = tb_cfg_write(((port->sw)->tb)->ctl, buffer, tmp, (u32 )port->port, space,
                         offset, length);
  return (tmp___0);
}
}
int tb_port_add_nfc_credits(struct tb_port *port , int credits ) ;
int tb_port_clear_counter(struct tb_port *port , int counter ) ;
int tb_drom_read(struct tb_switch *sw ) ;
int tb_drom_read_uid_only(struct tb_switch *sw , u64 *uid ) ;
__inline static int tb_route_length(u64 route )
{
  int tmp ;
  {
  tmp = fls64(route);
  return ((tmp + 7) / 8);
}
}
static char const *tb_port_type(struct tb_regs_port_header *port )
{
  {
  switch ((int )port->type >> 16) {
  case 0: ;
  switch ((int )((unsigned char )port->type)) {
  case 0: ;
  return ("Inactive");
  case 1: ;
  return ("Port");
  case 2: ;
  return ("NHI");
  default: ;
  return ("unknown");
  }
  case 2: ;
  return ("Ethernet");
  case 8: ;
  return ("SATA");
  case 14: ;
  return ("DP/HDMI");
  case 16: ;
  return ("PCIe");
  case 32: ;
  return ("USB");
  default: ;
  return ("unknown");
  }
}
}
static void tb_dump_port(struct tb *tb , struct tb_regs_port_header *port )
{
  char const *tmp ;
  {
  tmp = tb_port_type(port);
  _dev_info((struct device const *)(& ((tb->nhi)->pdev)->dev), " Port %d: %x:%x (Revision: %d, TB Version: %d, Type: %s (%#x))\n",
            (int )port->port_number, (int )port->vendor_id, (int )port->device_id,
            (int )port->revision, (int )port->thunderbolt_version, tmp, (int )port->type);
  _dev_info((struct device const *)(& ((tb->nhi)->pdev)->dev), "  Max hop id (in/out): %d/%d\n",
            (int )port->max_in_hop_id, (int )port->max_out_hop_id);
  _dev_info((struct device const *)(& ((tb->nhi)->pdev)->dev), "  Max counters: %d\n",
            (int )port->max_counters);
  _dev_info((struct device const *)(& ((tb->nhi)->pdev)->dev), "  NFC Credits: %#x\n",
            port->nfc_credits);
  return;
}
}
static int tb_port_state(struct tb_port *port )
{
  struct tb_cap_phy phy ;
  int res ;
  struct tb_port *__port ;
  int __ret_warn_on ;
  u64 tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  long tmp___2 ;
  {
  if (port->cap_phy == 0) {
    __port = port;
    __ret_warn_on = 1;
    tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___2 != 0L) {
      tmp = tb_route(__port->sw);
      tmp___0 = dev_name((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev));
      tmp___1 = dev_driver_string((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/switch.c",
                        68, "%s %s: %llx:%x: does not have a PHY\n", tmp___1, tmp___0,
                        tmp, (int )__port->port);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return (-22);
  } else {
  }
  res = tb_port_read(port, (void *)(& phy), 1, (u32 )port->cap_phy, 2U);
  if (res != 0) {
    return (res);
  } else {
  }
  return ((int )phy.state);
}
}
int tb_wait_for_port(struct tb_port *port , bool wait_if_unplugged )
{
  int retries ;
  int state ;
  struct tb_port *__port ;
  int __ret_warn_on ;
  u64 tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  long tmp___2 ;
  struct tb_port *__port___0 ;
  int __ret_warn_on___0 ;
  u64 tmp___3 ;
  char const *tmp___4 ;
  char const *tmp___5 ;
  long tmp___6 ;
  bool tmp___7 ;
  struct tb_port *__port___1 ;
  u64 tmp___8 ;
  struct tb_port *__port___2 ;
  u64 tmp___9 ;
  struct tb_port *__port___3 ;
  u64 tmp___10 ;
  struct tb_port *__port___4 ;
  u64 tmp___11 ;
  struct tb_port *__port___5 ;
  u64 tmp___12 ;
  int tmp___13 ;
  struct tb_port *__port___6 ;
  u64 tmp___14 ;
  {
  retries = 10;
  if (port->cap_phy == 0) {
    __port = port;
    __ret_warn_on = 1;
    tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___2 != 0L) {
      tmp = tb_route(__port->sw);
      tmp___0 = dev_name((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev));
      tmp___1 = dev_driver_string((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/switch.c",
                        95, "%s %s: %llx:%x: does not have PHY\n", tmp___1, tmp___0,
                        tmp, (int )__port->port);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return (-22);
  } else {
  }
  tmp___7 = tb_is_upstream_port(port);
  if ((int )tmp___7) {
    __port___0 = port;
    __ret_warn_on___0 = 1;
    tmp___6 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___6 != 0L) {
      tmp___3 = tb_route(__port___0->sw);
      tmp___4 = dev_name((struct device const *)(& ((((__port___0->sw)->tb)->nhi)->pdev)->dev));
      tmp___5 = dev_driver_string((struct device const *)(& ((((__port___0->sw)->tb)->nhi)->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/switch.c",
                        99, "%s %s: %llx:%x: is the upstream port\n", tmp___5, tmp___4,
                        tmp___3, (int )__port___0->port);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    return (-22);
  } else {
  }
  goto ldv_26697;
  ldv_26701:
  state = tb_port_state(port);
  if (state < 0) {
    return (state);
  } else {
  }
  if (state == 0) {
    __port___1 = port;
    tmp___8 = tb_route(__port___1->sw);
    _dev_info((struct device const *)(& ((((__port___1->sw)->tb)->nhi)->pdev)->dev),
              "%llx:%x: is disabled (state: 0)\n", tmp___8, (int )__port___1->port);
    return (0);
  } else {
  }
  if (state == 7) {
    if ((int )wait_if_unplugged) {
      __port___2 = port;
      tmp___9 = tb_route(__port___2->sw);
      _dev_info((struct device const *)(& ((((__port___2->sw)->tb)->nhi)->pdev)->dev),
                "%llx:%x: is unplugged (state: 7), retrying...\n", tmp___9, (int )__port___2->port);
      msleep(100U);
      goto ldv_26697;
    } else {
    }
    __port___3 = port;
    tmp___10 = tb_route(__port___3->sw);
    _dev_info((struct device const *)(& ((((__port___3->sw)->tb)->nhi)->pdev)->dev),
              "%llx:%x: is unplugged (state: 7)\n", tmp___10, (int )__port___3->port);
    return (0);
  } else {
  }
  if (state == 2) {
    __port___4 = port;
    tmp___11 = tb_route(__port___4->sw);
    _dev_info((struct device const *)(& ((((__port___4->sw)->tb)->nhi)->pdev)->dev),
              "%llx:%x: is connected, link is up (state: 2)\n", tmp___11, (int )__port___4->port);
    return (1);
  } else {
  }
  __port___5 = port;
  tmp___12 = tb_route(__port___5->sw);
  _dev_info((struct device const *)(& ((((__port___5->sw)->tb)->nhi)->pdev)->dev),
            "%llx:%x: is connected, link is not up (state: %d), retrying...\n", tmp___12,
            (int )__port___5->port, state);
  msleep(100U);
  ldv_26697:
  tmp___13 = retries;
  retries = retries - 1;
  if (tmp___13 != 0) {
    goto ldv_26701;
  } else {
  }
  __port___6 = port;
  tmp___14 = tb_route(__port___6->sw);
  dev_warn((struct device const *)(& ((((__port___6->sw)->tb)->nhi)->pdev)->dev),
           "%llx:%x: failed to reach state TB_PORT_UP. Ignoring port...\n", tmp___14,
           (int )__port___6->port);
  return (0);
}
}
int tb_port_add_nfc_credits(struct tb_port *port , int credits )
{
  struct tb_port *__port ;
  u64 tmp ;
  int tmp___0 ;
  {
  if (credits == 0) {
    return (0);
  } else {
  }
  __port = port;
  tmp = tb_route(__port->sw);
  _dev_info((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev), "%llx:%x: adding %#x NFC credits (%#x -> %#x)",
            tmp, (int )__port->port, credits, port->config.nfc_credits, port->config.nfc_credits + (u32 )credits);
  port->config.nfc_credits = port->config.nfc_credits + (u32 )credits;
  tmp___0 = tb_port_write(port, (void *)(& port->config.nfc_credits), 1, 4U, 1U);
  return (tmp___0);
}
}
int tb_port_clear_counter(struct tb_port *port , int counter )
{
  u32 zero[3U] ;
  struct tb_port *__port ;
  u64 tmp ;
  int tmp___0 ;
  {
  zero[0] = 0U;
  zero[1] = 0U;
  zero[2] = 0U;
  __port = port;
  tmp = tb_route(__port->sw);
  _dev_info((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev), "%llx:%x: clearing counter %d\n",
            tmp, (int )__port->port, counter);
  tmp___0 = tb_port_write(port, (void *)(& zero), 3, (u32 )(counter * 3), 3U);
  return (tmp___0);
}
}
static int tb_init_port(struct tb_port *port )
{
  int res ;
  int cap ;
  struct tb_port *__port ;
  int __ret_warn_on ;
  u64 tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  long tmp___2 ;
  {
  res = tb_port_read(port, (void *)(& port->config), 1, 0U, 8U);
  if (res != 0) {
    return (res);
  } else {
  }
  if (*((unsigned int *)port + 2UL) == 1U && (unsigned int )port->port != 0U) {
    cap = tb_find_cap(port, 1, 1);
    if (cap > 0) {
      port->cap_phy = cap;
    } else {
      __port = port;
      __ret_warn_on = 1;
      tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___2 != 0L) {
        tmp = tb_route(__port->sw);
        tmp___0 = dev_name((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev));
        tmp___1 = dev_driver_string((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev));
        warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/switch.c",
                          200, "%s %s: %llx:%x: non switch port without a PHY\n",
                          tmp___1, tmp___0, tmp, (int )__port->port);
      } else {
      }
      ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
  } else {
  }
  tb_dump_port((port->sw)->tb, & port->config);
  return (0);
}
}
static void tb_dump_switch(struct tb *tb , struct tb_regs_switch_header *sw )
{
  {
  _dev_info((struct device const *)(& ((tb->nhi)->pdev)->dev), " Switch: %x:%x (Revision: %d, TB Version: %d)\n",
            (int )sw->vendor_id, (int )sw->device_id, (int )sw->revision, (int )sw->thunderbolt_version);
  _dev_info((struct device const *)(& ((tb->nhi)->pdev)->dev), "  Max Port Number: %d\n",
            (int )sw->max_port_number);
  _dev_info((struct device const *)(& ((tb->nhi)->pdev)->dev), "  Config:\n");
  _dev_info((struct device const *)(& ((tb->nhi)->pdev)->dev), "   Upstream Port Number: %d Depth: %d Route String: %#llx Enabled: %d, PlugEventsDelay: %dms\n",
            (int )sw->upstream_port_number, (int )sw->depth, ((unsigned long long )sw->route_hi << 32) | (unsigned long long )sw->route_lo,
            (int )sw->enabled, (int )sw->plug_events_delay);
  _dev_info((struct device const *)(& ((tb->nhi)->pdev)->dev), "   unknown1: %#x unknown4: %#x\n",
            (int )sw->__unknown1, (int )sw->__unknown4);
  return;
}
}
int tb_switch_reset(struct tb *tb , u64 route )
{
  struct tb_cfg_result res ;
  struct tb_regs_switch_header header ;
  {
  header.route_hi = (unsigned int )(route >> 32);
  header.route_lo = (u32 )route;
  header.enabled = 1;
  header.vendor_id = (unsigned short )header.route_hi;
  header.device_id = (unsigned short )header.route_lo;
  header.first_cap_offset = (unsigned char )header.enabled;
  header.upstream_port_number = (unsigned char)0;
  header.max_port_number = (unsigned char)0;
  header.depth = (unsigned char)0;
  header.__unknown1 = (unsigned char)0;
  header.revision = (unsigned char)0;
  header.route_lo = 0U;
  header.route_hi = 0U;
  header.enabled = (_Bool)0;
  header.plug_events_delay = (unsigned char)0;
  header.__unknown4 = (unsigned short)0;
  header.thunderbolt_version = (unsigned char)0;
  _dev_info((struct device const *)(& ((tb->nhi)->pdev)->dev), "resetting switch at %llx\n",
            route);
  res.err = tb_cfg_write(tb->ctl, (void *)(& header) + 2U, route, 0U, 2, 2U, 2U);
  if (res.err != 0) {
    return (res.err);
  } else {
  }
  res = tb_cfg_reset(tb->ctl, route, 5000);
  if (res.err > 0) {
    return (-5);
  } else {
  }
  return (res.err);
}
}
struct tb_switch *get_switch_at_route(struct tb_switch *sw , u64 route )
{
  u8 next_port ;
  bool tmp ;
  struct tb_switch *tmp___0 ;
  {
  next_port = (u8 )route;
  if (route == 0ULL) {
    return (sw);
  } else {
  }
  if ((int )next_port > (int )sw->config.max_port_number) {
    return ((struct tb_switch *)0);
  } else {
  }
  tmp = tb_is_upstream_port(sw->ports + (unsigned long )next_port);
  if ((int )tmp) {
    return ((struct tb_switch *)0);
  } else {
  }
  if ((unsigned long )(sw->ports + (unsigned long )next_port)->remote == (unsigned long )((struct tb_port *)0)) {
    return ((struct tb_switch *)0);
  } else {
  }
  tmp___0 = get_switch_at_route(((sw->ports + (unsigned long )next_port)->remote)->sw,
                                route >> 8);
  return (tmp___0);
}
}
static int tb_plug_events_active(struct tb_switch *sw , bool active )
{
  u32 data ;
  int res ;
  int tmp ;
  {
  sw->config.plug_events_delay = 255U;
  res = tb_sw_write(sw, (void *)(& sw->config) + 4U, 2, 4U, 1U);
  if (res != 0) {
    return (res);
  } else {
  }
  res = tb_sw_read(sw, (void *)(& data), 2, (u32 )(sw->cap_plug_events + 1), 1U);
  if (res != 0) {
    return (res);
  } else {
  }
  if ((int )active) {
    data = data & 4294967171U;
    switch ((int )sw->config.device_id) {
    case 5395: ;
    case 5402: ;
    case 5449: ;
    goto ldv_26747;
    default:
    data = data | 4U;
    }
    ldv_26747: ;
  } else {
    data = data | 124U;
  }
  tmp = tb_sw_write(sw, (void *)(& data), 2, (u32 )(sw->cap_plug_events + 1), 1U);
  return (tmp);
}
}
void tb_switch_free(struct tb_switch *sw )
{
  int i ;
  bool tmp ;
  {
  i = 1;
  goto ldv_26755;
  ldv_26754:
  tmp = tb_is_upstream_port(sw->ports + (unsigned long )i);
  if ((int )tmp) {
    goto ldv_26753;
  } else {
  }
  if ((unsigned long )(sw->ports + (unsigned long )i)->remote != (unsigned long )((struct tb_port *)0)) {
    tb_switch_free(((sw->ports + (unsigned long )i)->remote)->sw);
  } else {
  }
  (sw->ports + (unsigned long )i)->remote = (struct tb_port *)0;
  ldv_26753:
  i = i + 1;
  ldv_26755: ;
  if ((int )sw->config.max_port_number >= i) {
    goto ldv_26754;
  } else {
  }
  if (! sw->is_unplugged) {
    tb_plug_events_active(sw, 0);
  } else {
  }
  kfree((void const *)sw->ports);
  kfree((void const *)sw->drom);
  kfree((void const *)sw);
  return;
}
}
struct tb_switch *tb_switch_alloc(struct tb *tb , u64 route )
{
  int i ;
  int cap ;
  struct tb_switch *sw ;
  int upstream_port ;
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  struct tb_switch *__sw ;
  u64 tmp___4 ;
  struct tb_switch *__sw___0 ;
  u64 tmp___5 ;
  int tmp___6 ;
  void *tmp___7 ;
  struct tb_switch *__sw___1 ;
  u64 tmp___8 ;
  struct tb_switch *__sw___2 ;
  u64 tmp___9 ;
  int tmp___10 ;
  struct tb_switch *__sw___3 ;
  u64 tmp___11 ;
  struct tb_port *__port ;
  u64 tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  {
  tmp = tb_cfg_get_upstream_port(tb->ctl, route);
  upstream_port = tmp;
  if (upstream_port < 0) {
    return ((struct tb_switch *)0);
  } else {
  }
  tmp___0 = kzalloc(64UL, 208U);
  sw = (struct tb_switch *)tmp___0;
  if ((unsigned long )sw == (unsigned long )((struct tb_switch *)0)) {
    return ((struct tb_switch *)0);
  } else {
  }
  sw->tb = tb;
  tmp___1 = tb_cfg_read(tb->ctl, (void *)(& sw->config), route, 0U, 2, 0U, 5U);
  if (tmp___1 != 0) {
    goto err;
  } else {
  }
  tmp___2 = tb_route_length(route);
  _dev_info((struct device const *)(& ((tb->nhi)->pdev)->dev), "initializing Switch at %#llx (depth: %d, up port: %d)\n",
            route, tmp___2, upstream_port);
  _dev_info((struct device const *)(& ((tb->nhi)->pdev)->dev), "old switch config:\n");
  tb_dump_switch(tb, & sw->config);
  sw->config.upstream_port_number = (unsigned char )upstream_port;
  tmp___3 = tb_route_length(route);
  sw->config.depth = (unsigned char )tmp___3;
  sw->config.route_lo = (u32 )route;
  sw->config.route_hi = (unsigned int )(route >> 32);
  sw->config.enabled = 1;
  if ((unsigned int )sw->config.vendor_id != 32902U) {
    __sw = sw;
    tmp___4 = tb_route(__sw);
    dev_warn((struct device const *)(& (((__sw->tb)->nhi)->pdev)->dev), "%llx: unknown switch vendor id %#x\n",
             tmp___4, (int )sw->config.vendor_id);
  } else {
  }
  if ((unsigned int )sw->config.device_id != 5447U && (unsigned int )sw->config.device_id != 5449U) {
    __sw___0 = sw;
    tmp___5 = tb_route(__sw___0);
    dev_warn((struct device const *)(& (((__sw___0->tb)->nhi)->pdev)->dev), "%llx: unsupported switch device id %#x\n",
             tmp___5, (int )sw->config.device_id);
  } else {
  }
  tmp___6 = tb_sw_write(sw, (void *)(& sw->config) + 1U, 2, 1U, 3U);
  if (tmp___6 != 0) {
    goto err;
  } else {
  }
  tmp___7 = kcalloc((size_t )((int )sw->config.max_port_number + 1), 72UL, 208U);
  sw->ports = (struct tb_port *)tmp___7;
  if ((unsigned long )sw->ports == (unsigned long )((struct tb_port *)0)) {
    goto err;
  } else {
  }
  i = 0;
  goto ldv_26769;
  ldv_26768:
  (sw->ports + (unsigned long )i)->sw = sw;
  (sw->ports + (unsigned long )i)->port = (u8 )i;
  i = i + 1;
  ldv_26769: ;
  if ((int )sw->config.max_port_number >= i) {
    goto ldv_26768;
  } else {
  }
  cap = tb_find_cap(sw->ports, 2, 261);
  if (cap < 0) {
    __sw___1 = sw;
    tmp___8 = tb_route(__sw___1);
    dev_warn((struct device const *)(& (((__sw___1->tb)->nhi)->pdev)->dev), "%llx: cannot find TB_CAP_PLUG_EVENTS aborting\n",
             tmp___8);
    goto err;
  } else {
  }
  sw->cap_plug_events = cap;
  tmp___10 = tb_drom_read(sw);
  if (tmp___10 != 0) {
    __sw___2 = sw;
    tmp___9 = tb_route(__sw___2);
    dev_warn((struct device const *)(& (((__sw___2->tb)->nhi)->pdev)->dev), "%llx: tb_eeprom_read_rom failed, continuing\n",
             tmp___9);
  } else {
  }
  __sw___3 = sw;
  tmp___11 = tb_route(__sw___3);
  _dev_info((struct device const *)(& (((__sw___3->tb)->nhi)->pdev)->dev), "%llx: uid: %#llx\n",
            tmp___11, sw->uid);
  i = 0;
  goto ldv_26777;
  ldv_26776: ;
  if ((int )(sw->ports + (unsigned long )i)->disabled) {
    __port = sw->ports + (unsigned long )i;
    tmp___12 = tb_route(__port->sw);
    _dev_info((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev),
              "%llx:%x: disabled by eeprom\n", tmp___12, (int )__port->port);
    goto ldv_26775;
  } else {
  }
  tmp___13 = tb_init_port(sw->ports + (unsigned long )i);
  if (tmp___13 != 0) {
    goto err;
  } else {
  }
  ldv_26775:
  i = i + 1;
  ldv_26777: ;
  if ((int )sw->config.max_port_number >= i) {
    goto ldv_26776;
  } else {
  }
  tmp___14 = tb_plug_events_active(sw, 1);
  if (tmp___14 != 0) {
    goto err;
  } else {
  }
  return (sw);
  err:
  kfree((void const *)sw->ports);
  kfree((void const *)sw->drom);
  kfree((void const *)sw);
  return ((struct tb_switch *)0);
}
}
void tb_sw_set_unpplugged(struct tb_switch *sw )
{
  int i ;
  struct tb_switch *__sw ;
  int __ret_warn_on ;
  u64 tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  long tmp___2 ;
  struct tb_switch *__sw___0 ;
  int __ret_warn_on___0 ;
  u64 tmp___3 ;
  char const *tmp___4 ;
  char const *tmp___5 ;
  long tmp___6 ;
  bool tmp___7 ;
  int tmp___8 ;
  {
  if ((unsigned long )(sw->tb)->root_switch == (unsigned long )sw) {
    __sw = sw;
    __ret_warn_on = 1;
    tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___2 != 0L) {
      tmp = tb_route(__sw);
      tmp___0 = dev_name((struct device const *)(& (((__sw->tb)->nhi)->pdev)->dev));
      tmp___1 = dev_driver_string((struct device const *)(& (((__sw->tb)->nhi)->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/switch.c",
                        434, "%s %s: %llx: cannot unplug root switch\n", tmp___1,
                        tmp___0, tmp);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return;
  } else {
  }
  if ((int )sw->is_unplugged) {
    __sw___0 = sw;
    __ret_warn_on___0 = 1;
    tmp___6 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___6 != 0L) {
      tmp___3 = tb_route(__sw___0);
      tmp___4 = dev_name((struct device const *)(& (((__sw___0->tb)->nhi)->pdev)->dev));
      tmp___5 = dev_driver_string((struct device const *)(& (((__sw___0->tb)->nhi)->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/switch.c",
                        438, "%s %s: %llx: is_unplugged already set\n", tmp___5, tmp___4,
                        tmp___3);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    return;
  } else {
  }
  sw->is_unplugged = 1;
  i = 0;
  goto ldv_26790;
  ldv_26789:
  tmp___7 = tb_is_upstream_port(sw->ports + (unsigned long )i);
  if (tmp___7) {
    tmp___8 = 0;
  } else {
    tmp___8 = 1;
  }
  if (tmp___8 && (unsigned long )(sw->ports + (unsigned long )i)->remote != (unsigned long )((struct tb_port *)0)) {
    tb_sw_set_unpplugged(((sw->ports + (unsigned long )i)->remote)->sw);
  } else {
  }
  i = i + 1;
  ldv_26790: ;
  if ((int )sw->config.max_port_number >= i) {
    goto ldv_26789;
  } else {
  }
  return;
}
}
int tb_switch_resume(struct tb_switch *sw )
{
  int i ;
  int err ;
  u64 uid ;
  struct tb_switch *__sw ;
  u64 tmp ;
  struct tb_switch *__sw___0 ;
  u64 tmp___0 ;
  struct tb_switch *__sw___1 ;
  u64 tmp___1 ;
  struct tb_port *port ;
  bool tmp___2 ;
  struct tb_port *__port ;
  u64 tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  __sw = sw;
  tmp = tb_route(__sw);
  _dev_info((struct device const *)(& (((__sw->tb)->nhi)->pdev)->dev), "%llx: resuming switch\n",
            tmp);
  err = tb_drom_read_uid_only(sw, & uid);
  if (err != 0) {
    __sw___0 = sw;
    tmp___0 = tb_route(__sw___0);
    dev_warn((struct device const *)(& (((__sw___0->tb)->nhi)->pdev)->dev), "%llx: uid read failed\n",
             tmp___0);
    return (err);
  } else {
  }
  if (sw->uid != uid) {
    __sw___1 = sw;
    tmp___1 = tb_route(__sw___1);
    _dev_info((struct device const *)(& (((__sw___1->tb)->nhi)->pdev)->dev), "%llx: changed while suspended (uid %#llx -> %#llx)\n",
              tmp___1, sw->uid, uid);
    return (-19);
  } else {
  }
  err = tb_sw_write(sw, (void *)(& sw->config) + 1U, 2, 1U, 3U);
  if (err != 0) {
    return (err);
  } else {
  }
  err = tb_plug_events_active(sw, 1);
  if (err != 0) {
    return (err);
  } else {
  }
  i = 1;
  goto ldv_26805;
  ldv_26804:
  port = sw->ports + (unsigned long )i;
  tmp___2 = tb_is_upstream_port(port);
  if ((int )tmp___2) {
    goto ldv_26802;
  } else {
  }
  if ((unsigned long )port->remote == (unsigned long )((struct tb_port *)0)) {
    goto ldv_26802;
  } else {
  }
  tmp___4 = tb_wait_for_port(port, 1);
  if (tmp___4 <= 0) {
    __port = port;
    tmp___3 = tb_route(__port->sw);
    dev_warn((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev),
             "%llx:%x: lost during suspend, disconnecting\n", tmp___3, (int )__port->port);
    tb_sw_set_unpplugged((port->remote)->sw);
  } else {
    tmp___5 = tb_switch_resume((port->remote)->sw);
    if (tmp___5 != 0) {
      __port = port;
      tmp___3 = tb_route(__port->sw);
      dev_warn((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev),
               "%llx:%x: lost during suspend, disconnecting\n", tmp___3, (int )__port->port);
      tb_sw_set_unpplugged((port->remote)->sw);
    } else {
    }
  }
  ldv_26802:
  i = i + 1;
  ldv_26805: ;
  if ((int )sw->config.max_port_number >= i) {
    goto ldv_26804;
  } else {
  }
  return (0);
}
}
void tb_switch_suspend(struct tb_switch *sw )
{
  int i ;
  int err ;
  bool tmp ;
  int tmp___0 ;
  {
  err = tb_plug_events_active(sw, 0);
  if (err != 0) {
    return;
  } else {
  }
  i = 1;
  goto ldv_26813;
  ldv_26812:
  tmp = tb_is_upstream_port(sw->ports + (unsigned long )i);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0 && (unsigned long )(sw->ports + (unsigned long )i)->remote != (unsigned long )((struct tb_port *)0)) {
    tb_switch_suspend(((sw->ports + (unsigned long )i)->remote)->sw);
  } else {
  }
  i = i + 1;
  ldv_26813: ;
  if ((int )sw->config.max_port_number >= i) {
    goto ldv_26812;
  } else {
  }
  return;
}
}
bool ldv_queue_work_on_151(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_152(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_153(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_154(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_155(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_156(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_157(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_158(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_159(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_160(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
int ldv_mutex_trylock_183(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_181(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_184(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_180(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_182(struct mutex *ldv_func_arg1 ) ;
bool ldv_queue_work_on_175(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_177(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_176(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_179(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_178(struct workqueue_struct *ldv_func_arg1 ) ;
static bool tb_cap_is_basic(struct tb_cap_any *cap )
{
  {
  return ((unsigned int )cap->__annonCompField58.basic.cap != 5U);
}
}
static bool tb_cap_is_long(struct tb_cap_any *cap )
{
  bool tmp ;
  int tmp___0 ;
  {
  tmp = tb_cap_is_basic(cap);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  return ((bool )((tmp___0 && (unsigned int )cap->__annonCompField58.extended_short.next == 0U) && (unsigned int )cap->__annonCompField58.extended_short.length == 0U));
}
}
static enum tb_cap tb_cap(struct tb_cap_any *cap )
{
  bool tmp ;
  {
  tmp = tb_cap_is_basic(cap);
  if ((int )tmp) {
    return ((enum tb_cap )cap->__annonCompField58.basic.cap);
  } else {
    return ((enum tb_cap )cap->__annonCompField58.extended_short.cap);
  }
}
}
static u32 tb_cap_next(struct tb_cap_any *cap , u32 offset )
{
  int next ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  if (offset == 1U) {
    next = (int )cap->__annonCompField58.basic.next;
  } else {
    tmp___1 = tb_cap_is_basic(cap);
    if ((int )tmp___1) {
      next = (int )cap->__annonCompField58.basic.next;
    } else {
      tmp = tb_cap_is_long(cap);
      if (tmp) {
        tmp___0 = 0;
      } else {
        tmp___0 = 1;
      }
      if (tmp___0) {
        next = (int )cap->__annonCompField58.extended_short.next;
      } else {
        next = (int )cap->__annonCompField58.extended_long.next;
      }
    }
  }
  if ((u32 )next == offset) {
    return (0U);
  } else {
  }
  return ((u32 )next);
}
}
int tb_find_cap(struct tb_port *port , enum tb_cfg_space space , enum tb_cap cap )
{
  u32 offset ;
  struct tb_cap_any header ;
  int res ;
  int retries ;
  enum tb_cap tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  struct tb_port *__port ;
  int __ret_warn_on ;
  u64 tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  long tmp___5 ;
  {
  offset = 1U;
  retries = 10;
  goto ldv_26658;
  ldv_26659:
  res = tb_port_read(port, (void *)(& header), space, offset, 1U);
  if (res != 0) {
    if (((unsigned int )space == 1U && offset == 10U) && *((unsigned int *)port + 2UL) == 917762U) {
      offset = 57U;
      goto ldv_26658;
    } else {
    }
    return (res);
  } else {
  }
  if (offset != 1U) {
    tmp = tb_cap(& header);
    if ((unsigned int )tmp == (unsigned int )cap) {
      return ((int )offset);
    } else {
    }
    tmp___0 = tb_cap_is_long(& header);
    if ((int )tmp___0) {
      res = tb_port_read(port, (void *)(& header), space, offset, 2U);
      if (res != 0) {
        return (res);
      } else {
      }
    } else {
    }
  } else {
  }
  offset = tb_cap_next(& header, offset);
  if (offset == 0U) {
    return (0);
  } else {
  }
  ldv_26658:
  tmp___1 = retries;
  retries = retries - 1;
  if (tmp___1 != 0) {
    goto ldv_26659;
  } else {
  }
  __port = port;
  __ret_warn_on = 1;
  tmp___5 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___5 != 0L) {
    tmp___2 = tb_route(__port->sw);
    tmp___3 = dev_name((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev));
    tmp___4 = dev_driver_string((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev));
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/cap.c",
                      114, "%s %s: %llx:%x: run out of retries while looking for cap %#x in config space %d, last offset: %#x\n",
                      tmp___4, tmp___3, tmp___2, (int )__port->port, (unsigned int )cap,
                      (unsigned int )space, offset);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  return (-5);
}
}
bool ldv_queue_work_on_175(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_176(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_177(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_178(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_179(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_180(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_181(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_182(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_183(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_184(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
int ldv_mutex_trylock_207(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_205(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_208(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_204(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_206(struct mutex *ldv_func_arg1 ) ;
bool ldv_queue_work_on_199(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_201(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_200(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_203(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_202(struct workqueue_struct *ldv_func_arg1 ) ;
struct tb_path *tb_path_alloc(struct tb *tb , int num_hops ) ;
void tb_path_free(struct tb_path *path ) ;
int tb_path_activate(struct tb_path *path ) ;
void tb_path_deactivate(struct tb_path *path ) ;
bool tb_path_is_invalid(struct tb_path *path ) ;
static void tb_dump_hop(struct tb_port *port , struct tb_regs_hop *hop )
{
  struct tb_port *__port ;
  u64 tmp ;
  struct tb_port *__port___0 ;
  u64 tmp___0 ;
  struct tb_port *__port___1 ;
  u64 tmp___1 ;
  struct tb_port *__port___2 ;
  u64 tmp___2 ;
  struct tb_port *__port___3 ;
  u64 tmp___3 ;
  {
  __port = port;
  tmp = tb_route(__port->sw);
  _dev_info((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev), "%llx:%x:  Hop through port %d to hop %d (%s)\n",
            tmp, (int )__port->port, (int )hop->out_port, (int )hop->next_hop, (int )hop->enable ? (char *)"enabled" : (char *)"disabled");
  __port___0 = port;
  tmp___0 = tb_route(__port___0->sw);
  _dev_info((struct device const *)(& ((((__port___0->sw)->tb)->nhi)->pdev)->dev),
            "%llx:%x:   Weight: %d Priority: %d Credits: %d Drop: %d\n", tmp___0,
            (int )__port___0->port, (int )hop->weight, (int )hop->priority, (int )hop->initial_credits,
            (int )hop->drop_packages);
  __port___1 = port;
  tmp___1 = tb_route(__port___1->sw);
  _dev_info((struct device const *)(& ((((__port___1->sw)->tb)->nhi)->pdev)->dev),
            "%llx:%x:    Counter enabled: %d Counter index: %d\n", tmp___1, (int )__port___1->port,
            (int )hop->counter_enable, (int )hop->counter);
  __port___2 = port;
  tmp___2 = tb_route(__port___2->sw);
  _dev_info((struct device const *)(& ((((__port___2->sw)->tb)->nhi)->pdev)->dev),
            "%llx:%x:   Flow Control (In/Eg): %d/%d Shared Buffer (In/Eg): %d/%d\n",
            tmp___2, (int )__port___2->port, (int )hop->ingress_fc, (int )hop->egress_fc,
            (int )hop->ingress_shared_buffer, (int )hop->egress_shared_buffer);
  __port___3 = port;
  tmp___3 = tb_route(__port___3->sw);
  _dev_info((struct device const *)(& ((((__port___3->sw)->tb)->nhi)->pdev)->dev),
            "%llx:%x:   Unknown1: %#x Unknown2: %#x Unknown3: %#x\n", tmp___3, (int )__port___3->port,
            (int )hop->unknown1, (int )hop->unknown2, (int )hop->unknown3);
  return;
}
}
struct tb_path *tb_path_alloc(struct tb *tb , int num_hops )
{
  struct tb_path *path ;
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = kzalloc(48UL, 208U);
  path = (struct tb_path *)tmp;
  if ((unsigned long )path == (unsigned long )((struct tb_path *)0)) {
    return ((struct tb_path *)0);
  } else {
  }
  tmp___0 = kcalloc((size_t )num_hops, 32UL, 208U);
  path->hops = (struct tb_path_hop *)tmp___0;
  if ((unsigned long )path->hops == (unsigned long )((struct tb_path_hop *)0)) {
    kfree((void const *)path);
    return ((struct tb_path *)0);
  } else {
  }
  path->tb = tb;
  path->path_length = num_hops;
  return (path);
}
}
void tb_path_free(struct tb_path *path )
{
  int __ret_warn_on ;
  char const *tmp ;
  char const *tmp___0 ;
  long tmp___1 ;
  {
  if ((int )path->activated) {
    __ret_warn_on = 1;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      tmp = dev_name((struct device const *)(& (((path->tb)->nhi)->pdev)->dev));
      tmp___0 = dev_driver_string((struct device const *)(& (((path->tb)->nhi)->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/path.c",
                        56, "%s %s: trying to free an activated path\n", tmp___0,
                        tmp);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return;
  } else {
  }
  kfree((void const *)path->hops);
  kfree((void const *)path);
  return;
}
}
static void __tb_path_deallocate_nfc(struct tb_path *path , int first_hop )
{
  int i ;
  int res ;
  struct tb_port *__port ;
  u64 tmp ;
  {
  i = first_hop;
  goto ldv_26656;
  ldv_26655:
  res = tb_port_add_nfc_credits((path->hops + (unsigned long )i)->in_port, - path->nfc_credits);
  if (res != 0) {
    __port = (path->hops + (unsigned long )i)->in_port;
    tmp = tb_route(__port->sw);
    dev_warn((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev),
             "%llx:%x: nfc credits deallocation failed for hop %d\n", tmp, (int )__port->port,
             i);
  } else {
  }
  i = i + 1;
  ldv_26656: ;
  if (path->path_length > i) {
    goto ldv_26655;
  } else {
  }
  return;
}
}
static void __tb_path_deactivate_hops(struct tb_path *path , int first_hop )
{
  int i ;
  int res ;
  struct tb_regs_hop hop ;
  struct tb_port *__port ;
  u64 tmp ;
  {
  hop.next_hop = (unsigned short)0;
  hop.out_port = (unsigned char)0;
  hop.initial_credits = (unsigned char)0;
  hop.unknown1 = (unsigned char)0;
  hop.enable = (_Bool)0;
  hop.weight = (unsigned char)0;
  hop.unknown2 = (unsigned char)0;
  hop.priority = (unsigned char)0;
  hop.drop_packages = (_Bool)0;
  hop.counter = (unsigned short)0;
  hop.counter_enable = (_Bool)0;
  hop.ingress_fc = (_Bool)0;
  hop.egress_fc = (_Bool)0;
  hop.ingress_shared_buffer = (_Bool)0;
  hop.egress_shared_buffer = (_Bool)0;
  hop.unknown3 = (unsigned char)0;
  i = first_hop;
  goto ldv_26667;
  ldv_26666:
  res = tb_port_write((path->hops + (unsigned long )i)->in_port, (void *)(& hop),
                      0, (u32 )((path->hops + (unsigned long )i)->in_hop_index * 2),
                      2U);
  if (res != 0) {
    __port = (path->hops + (unsigned long )i)->in_port;
    tmp = tb_route(__port->sw);
    dev_warn((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev),
             "%llx:%x: hop deactivation failed for hop %d, index %d\n", tmp, (int )__port->port,
             i, (path->hops + (unsigned long )i)->in_hop_index);
  } else {
  }
  i = i + 1;
  ldv_26667: ;
  if (path->path_length > i) {
    goto ldv_26666;
  } else {
  }
  return;
}
}
void tb_path_deactivate(struct tb_path *path )
{
  int __ret_warn_on ;
  char const *tmp ;
  char const *tmp___0 ;
  long tmp___1 ;
  u64 tmp___2 ;
  u64 tmp___3 ;
  {
  if (! path->activated) {
    __ret_warn_on = 1;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      tmp = dev_name((struct device const *)(& (((path->tb)->nhi)->pdev)->dev));
      tmp___0 = dev_driver_string((struct device const *)(& (((path->tb)->nhi)->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/path.c",
                        93, "%s %s: trying to deactivate an inactive path\n", tmp___0,
                        tmp);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return;
  } else {
  }
  tmp___2 = tb_route(((path->hops + ((unsigned long )path->path_length + 0xffffffffffffffffUL))->out_port)->sw);
  tmp___3 = tb_route(((path->hops)->in_port)->sw);
  _dev_info((struct device const *)(& (((path->tb)->nhi)->pdev)->dev), "deactivating path from %llx:%x to %llx:%x\n",
            tmp___3, (int )((path->hops)->in_port)->port, tmp___2, (int )((path->hops + ((unsigned long )path->path_length + 0xffffffffffffffffUL))->out_port)->port);
  __tb_path_deactivate_hops(path, 0);
  __tb_path_deallocate_nfc(path, 0);
  path->activated = 0;
  return;
}
}
int tb_path_activate(struct tb_path *path )
{
  int i ;
  int res ;
  enum tb_path_port out_mask ;
  enum tb_path_port in_mask ;
  int __ret_warn_on ;
  char const *tmp ;
  char const *tmp___0 ;
  long tmp___1 ;
  u64 tmp___2 ;
  u64 tmp___3 ;
  struct tb_regs_hop hop ;
  struct tb_port *__port ;
  u64 tmp___4 ;
  int __ret_warn_on___0 ;
  char const *tmp___5 ;
  char const *tmp___6 ;
  long tmp___7 ;
  {
  if ((int )path->activated) {
    __ret_warn_on = 1;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      tmp = dev_name((struct device const *)(& (((path->tb)->nhi)->pdev)->dev));
      tmp___0 = dev_driver_string((struct device const *)(& (((path->tb)->nhi)->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/path.c",
                        120, "%s %s: trying to activate already activated path\n",
                        tmp___0, tmp);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return (-22);
  } else {
  }
  tmp___2 = tb_route(((path->hops + ((unsigned long )path->path_length + 0xffffffffffffffffUL))->out_port)->sw);
  tmp___3 = tb_route(((path->hops)->in_port)->sw);
  _dev_info((struct device const *)(& (((path->tb)->nhi)->pdev)->dev), "activating path from %llx:%x to %llx:%x\n",
            tmp___3, (int )((path->hops)->in_port)->port, tmp___2, (int )((path->hops + ((unsigned long )path->path_length + 0xffffffffffffffffUL))->out_port)->port);
  i = path->path_length + -1;
  goto ldv_26686;
  ldv_26685: ;
  if ((path->hops + (unsigned long )i)->in_counter_index == -1) {
    goto ldv_26683;
  } else {
  }
  res = tb_port_clear_counter((path->hops + (unsigned long )i)->in_port, (path->hops + (unsigned long )i)->in_counter_index);
  if (res != 0) {
    goto err;
  } else {
  }
  ldv_26683:
  i = i - 1;
  ldv_26686: ;
  if (i >= 0) {
    goto ldv_26685;
  } else {
  }
  i = path->path_length + -1;
  goto ldv_26689;
  ldv_26688:
  res = tb_port_add_nfc_credits((path->hops + (unsigned long )i)->in_port, path->nfc_credits);
  if (res != 0) {
    __tb_path_deallocate_nfc(path, i);
    goto err;
  } else {
  }
  i = i - 1;
  ldv_26689: ;
  if (i >= 0) {
    goto ldv_26688;
  } else {
  }
  i = path->path_length + -1;
  goto ldv_26694;
  ldv_26693:
  hop.next_hop = 0U;
  hop.out_port = (unsigned char)0;
  hop.initial_credits = (unsigned char)0;
  hop.unknown1 = (unsigned char)0;
  hop.enable = (_Bool)0;
  hop.weight = (unsigned char)0;
  hop.unknown2 = (unsigned char)0;
  hop.priority = (unsigned char)0;
  hop.drop_packages = (_Bool)0;
  hop.counter = (unsigned short)0;
  hop.counter_enable = (_Bool)0;
  hop.ingress_fc = (_Bool)0;
  hop.egress_fc = (_Bool)0;
  hop.ingress_shared_buffer = (_Bool)0;
  hop.egress_shared_buffer = (_Bool)0;
  hop.unknown3 = (unsigned char)0;
  res = tb_port_write((path->hops + (unsigned long )i)->in_port, (void *)(& hop),
                      0, (u32 )((path->hops + (unsigned long )i)->in_hop_index * 2),
                      2U);
  if (res != 0) {
    __tb_path_deactivate_hops(path, i);
    __tb_path_deallocate_nfc(path, 0);
    goto err;
  } else {
  }
  hop.next_hop = (unsigned short )(path->hops + (unsigned long )i)->next_hop_index;
  hop.out_port = ((path->hops + (unsigned long )i)->out_port)->port;
  hop.initial_credits = path->path_length + -1 == i ? 16U : 7U;
  hop.unknown1 = 0U;
  hop.enable = 1;
  out_mask = path->path_length + -1 == i ? 4 : 2;
  in_mask = i == 0 ? 1 : 2;
  hop.weight = (unsigned char )path->weight;
  hop.unknown2 = 0U;
  hop.priority = (unsigned char )path->priority;
  hop.drop_packages = path->drop_packages;
  hop.counter = (unsigned short )(path->hops + (unsigned long )i)->in_counter_index;
  hop.counter_enable = (path->hops + (unsigned long )i)->in_counter_index != -1;
  hop.ingress_fc = ((unsigned int )path->ingress_fc_enable & (unsigned int )in_mask) != 0U;
  hop.egress_fc = ((unsigned int )path->egress_fc_enable & (unsigned int )out_mask) != 0U;
  hop.ingress_shared_buffer = ((unsigned int )path->ingress_shared_buffer & (unsigned int )in_mask) != 0U;
  hop.egress_shared_buffer = ((unsigned int )path->egress_shared_buffer & (unsigned int )out_mask) != 0U;
  hop.unknown3 = 0U;
  __port = (path->hops + (unsigned long )i)->in_port;
  tmp___4 = tb_route(__port->sw);
  _dev_info((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev), "%llx:%x: Writing hop %d, index %d",
            tmp___4, (int )__port->port, i, (path->hops + (unsigned long )i)->in_hop_index);
  tb_dump_hop((path->hops + (unsigned long )i)->in_port, & hop);
  res = tb_port_write((path->hops + (unsigned long )i)->in_port, (void *)(& hop),
                      0, (u32 )((path->hops + (unsigned long )i)->in_hop_index * 2),
                      2U);
  if (res != 0) {
    __tb_path_deactivate_hops(path, i);
    __tb_path_deallocate_nfc(path, 0);
    goto err;
  } else {
  }
  i = i - 1;
  ldv_26694: ;
  if (i >= 0) {
    goto ldv_26693;
  } else {
  }
  path->activated = 1;
  _dev_info((struct device const *)(& (((path->tb)->nhi)->pdev)->dev), "path activation complete\n");
  return (0);
  err:
  __ret_warn_on___0 = 1;
  tmp___7 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___7 != 0L) {
    tmp___5 = dev_name((struct device const *)(& (((path->tb)->nhi)->pdev)->dev));
    tmp___6 = dev_driver_string((struct device const *)(& (((path->tb)->nhi)->pdev)->dev));
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/path.c",
                      215, "%s %s: path activation failed\n", tmp___6, tmp___5);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  return (res);
}
}
bool tb_path_is_invalid(struct tb_path *path )
{
  int i ;
  {
  i = 0;
  i = 0;
  goto ldv_26703;
  ldv_26702: ;
  if ((int )(((path->hops + (unsigned long )i)->in_port)->sw)->is_unplugged) {
    return (1);
  } else {
  }
  if ((int )(((path->hops + (unsigned long )i)->out_port)->sw)->is_unplugged) {
    return (1);
  } else {
  }
  i = i + 1;
  ldv_26703: ;
  if (path->path_length > i) {
    goto ldv_26702;
  } else {
  }
  return (0);
}
}
bool ldv_queue_work_on_199(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_200(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_201(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_202(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_203(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_204(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_205(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_206(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_207(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_208(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
int ldv_mutex_trylock_231(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_229(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_232(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_228(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_230(struct mutex *ldv_func_arg1 ) ;
bool ldv_queue_work_on_223(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_225(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_224(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_227(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_226(struct workqueue_struct *ldv_func_arg1 ) ;
static void tb_pci_init_path(struct tb_path *path )
{
  {
  path->egress_fc_enable = 3;
  path->egress_shared_buffer = 0;
  path->ingress_fc_enable = 7;
  path->ingress_shared_buffer = 0;
  path->priority = 3;
  path->weight = 1;
  path->drop_packages = 0;
  path->nfc_credits = 0;
  return;
}
}
struct tb_pci_tunnel *tb_pci_alloc(struct tb *tb , struct tb_port *up , struct tb_port *down )
{
  struct tb_pci_tunnel *tunnel ;
  void *tmp ;
  struct tb_port *tmp___0 ;
  struct tb_port *tmp___1 ;
  {
  tmp = kzalloc(56UL, 208U);
  tunnel = (struct tb_pci_tunnel *)tmp;
  if ((unsigned long )tunnel == (unsigned long )((struct tb_pci_tunnel *)0)) {
    goto err;
  } else {
  }
  tunnel->tb = tb;
  tunnel->down_port = down;
  tunnel->up_port = up;
  INIT_LIST_HEAD(& tunnel->list);
  tunnel->path_to_up = tb_path_alloc((up->sw)->tb, 2);
  if ((unsigned long )tunnel->path_to_up == (unsigned long )((struct tb_path *)0)) {
    goto err;
  } else {
  }
  tunnel->path_to_down = tb_path_alloc((up->sw)->tb, 2);
  if ((unsigned long )tunnel->path_to_down == (unsigned long )((struct tb_path *)0)) {
    goto err;
  } else {
  }
  tb_pci_init_path(tunnel->path_to_up);
  tb_pci_init_path(tunnel->path_to_down);
  ((tunnel->path_to_up)->hops)->in_port = down;
  ((tunnel->path_to_up)->hops)->in_hop_index = 8;
  ((tunnel->path_to_up)->hops)->in_counter_index = -1;
  tmp___0 = tb_upstream_port(up->sw);
  ((tunnel->path_to_up)->hops)->out_port = tmp___0->remote;
  ((tunnel->path_to_up)->hops)->next_hop_index = 8;
  ((tunnel->path_to_up)->hops + 1UL)->in_port = tb_upstream_port(up->sw);
  ((tunnel->path_to_up)->hops + 1UL)->in_hop_index = 8;
  ((tunnel->path_to_up)->hops + 1UL)->in_counter_index = -1;
  ((tunnel->path_to_up)->hops + 1UL)->out_port = up;
  ((tunnel->path_to_up)->hops + 1UL)->next_hop_index = 8;
  ((tunnel->path_to_down)->hops)->in_port = up;
  ((tunnel->path_to_down)->hops)->in_hop_index = 8;
  ((tunnel->path_to_down)->hops)->in_counter_index = -1;
  ((tunnel->path_to_down)->hops)->out_port = tb_upstream_port(up->sw);
  ((tunnel->path_to_down)->hops)->next_hop_index = 8;
  tmp___1 = tb_upstream_port(up->sw);
  ((tunnel->path_to_down)->hops + 1UL)->in_port = tmp___1->remote;
  ((tunnel->path_to_down)->hops + 1UL)->in_hop_index = 8;
  ((tunnel->path_to_down)->hops + 1UL)->in_counter_index = -1;
  ((tunnel->path_to_down)->hops + 1UL)->out_port = down;
  ((tunnel->path_to_down)->hops + 1UL)->next_hop_index = 8;
  return (tunnel);
  err: ;
  if ((unsigned long )tunnel != (unsigned long )((struct tb_pci_tunnel *)0)) {
    if ((unsigned long )tunnel->path_to_down != (unsigned long )((struct tb_path *)0)) {
      tb_path_free(tunnel->path_to_down);
    } else {
    }
    if ((unsigned long )tunnel->path_to_up != (unsigned long )((struct tb_path *)0)) {
      tb_path_free(tunnel->path_to_up);
    } else {
    }
    kfree((void const *)tunnel);
  } else {
  }
  return ((struct tb_pci_tunnel *)0);
}
}
void tb_pci_free(struct tb_pci_tunnel *tunnel )
{
  struct tb_pci_tunnel *__tunnel ;
  int __ret_warn_on ;
  u64 tmp ;
  u64 tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  long tmp___3 ;
  {
  if ((int )(tunnel->path_to_up)->activated || (int )(tunnel->path_to_down)->activated) {
    __tunnel = tunnel;
    __ret_warn_on = 1;
    tmp___3 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___3 != 0L) {
      tmp = tb_route((__tunnel->up_port)->sw);
      tmp___0 = tb_route((__tunnel->down_port)->sw);
      tmp___1 = dev_name((struct device const *)(& (((__tunnel->tb)->nhi)->pdev)->dev));
      tmp___2 = dev_driver_string((struct device const *)(& (((__tunnel->tb)->nhi)->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/tunnel_pci.c",
                        122, "%s %s: %llx:%x <-> %llx:%x (PCI): trying to free an activated tunnel\n",
                        tmp___2, tmp___1, tmp___0, (int )(__tunnel->down_port)->port,
                        tmp, (int )(__tunnel->up_port)->port);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return;
  } else {
  }
  tb_path_free(tunnel->path_to_up);
  tb_path_free(tunnel->path_to_down);
  kfree((void const *)tunnel);
  return;
}
}
bool tb_pci_is_invalid(struct tb_pci_tunnel *tunnel )
{
  int __ret_warn_on ;
  long tmp ;
  int __ret_warn_on___0 ;
  long tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  __ret_warn_on = ! (tunnel->path_to_up)->activated;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/tunnel_pci.c",
                       135);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  __ret_warn_on___0 = ! (tunnel->path_to_down)->activated;
  tmp___0 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/tunnel_pci.c",
                       136);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  tmp___1 = tb_path_is_invalid(tunnel->path_to_up);
  if ((int )tmp___1) {
    tmp___3 = 1;
  } else {
    tmp___2 = tb_path_is_invalid(tunnel->path_to_down);
    if ((int )tmp___2) {
      tmp___3 = 1;
    } else {
      tmp___3 = 0;
    }
  }
  return ((bool )tmp___3);
}
}
static int tb_pci_port_active(struct tb_port *port , bool active )
{
  u32 word ;
  int cap ;
  int tmp ;
  struct tb_port *__port ;
  u64 tmp___0 ;
  int tmp___1 ;
  {
  word = (int )active ? 2147483648U : 0U;
  tmp = tb_find_cap(port, 1, 4);
  cap = tmp;
  if (cap <= 0) {
    __port = port;
    tmp___0 = tb_route(__port->sw);
    dev_warn((struct device const *)(& ((((__port->sw)->tb)->nhi)->pdev)->dev),
             "%llx:%x: TB_CAP_PCIE not found: %d\n", tmp___0, (int )__port->port,
             cap);
    return (cap != 0 ? cap : -6);
  } else {
  }
  tmp___1 = tb_port_write(port, (void *)(& word), 1, (u32 )cap, 1U);
  return (tmp___1);
}
}
int tb_pci_restart(struct tb_pci_tunnel *tunnel )
{
  int res ;
  struct tb_pci_tunnel *__tunnel ;
  u64 tmp ;
  u64 tmp___0 ;
  struct tb_pci_tunnel *__tunnel___0 ;
  u64 tmp___1 ;
  u64 tmp___2 ;
  {
  (tunnel->path_to_up)->activated = 0;
  (tunnel->path_to_down)->activated = 0;
  __tunnel = tunnel;
  tmp = tb_route((__tunnel->up_port)->sw);
  tmp___0 = tb_route((__tunnel->down_port)->sw);
  _dev_info((struct device const *)(& (((__tunnel->tb)->nhi)->pdev)->dev), "%llx:%x <-> %llx:%x (PCI): activating\n",
            tmp___0, (int )(__tunnel->down_port)->port, tmp, (int )(__tunnel->up_port)->port);
  res = tb_path_activate(tunnel->path_to_up);
  if (res != 0) {
    goto err;
  } else {
  }
  res = tb_path_activate(tunnel->path_to_down);
  if (res != 0) {
    goto err;
  } else {
  }
  res = tb_pci_port_active(tunnel->down_port, 1);
  if (res != 0) {
    goto err;
  } else {
  }
  res = tb_pci_port_active(tunnel->up_port, 1);
  if (res != 0) {
    goto err;
  } else {
  }
  return (0);
  err:
  __tunnel___0 = tunnel;
  tmp___1 = tb_route((__tunnel___0->up_port)->sw);
  tmp___2 = tb_route((__tunnel___0->down_port)->sw);
  dev_warn((struct device const *)(& (((__tunnel___0->tb)->nhi)->pdev)->dev), "%llx:%x <-> %llx:%x (PCI): activation failed\n",
           tmp___2, (int )(__tunnel___0->down_port)->port, tmp___1, (int )(__tunnel___0->up_port)->port);
  tb_pci_deactivate(tunnel);
  return (res);
}
}
int tb_pci_activate(struct tb_pci_tunnel *tunnel )
{
  int res ;
  struct tb_pci_tunnel *__tunnel ;
  int __ret_warn_on ;
  u64 tmp ;
  u64 tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  long tmp___3 ;
  {
  if ((int )(tunnel->path_to_up)->activated || (int )(tunnel->path_to_down)->activated) {
    __tunnel = tunnel;
    __ret_warn_on = 1;
    tmp___3 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___3 != 0L) {
      tmp = tb_route((__tunnel->up_port)->sw);
      tmp___0 = tb_route((__tunnel->down_port)->sw);
      tmp___1 = dev_name((struct device const *)(& (((__tunnel->tb)->nhi)->pdev)->dev));
      tmp___2 = dev_driver_string((struct device const *)(& (((__tunnel->tb)->nhi)->pdev)->dev));
      warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1010/dscv_tempdir/dscv/ri/32_7a/drivers/thunderbolt/tunnel_pci.c",
                        200, "%s %s: %llx:%x <-> %llx:%x (PCI): trying to activate an already activated tunnel\n",
                        tmp___2, tmp___1, tmp___0, (int )(__tunnel->down_port)->port,
                        tmp, (int )(__tunnel->up_port)->port);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return (-22);
  } else {
  }
  res = tb_pci_restart(tunnel);
  if (res != 0) {
    return (res);
  } else {
  }
  list_add(& tunnel->list, & (tunnel->tb)->tunnel_list);
  return (0);
}
}
void tb_pci_deactivate(struct tb_pci_tunnel *tunnel )
{
  struct tb_pci_tunnel *__tunnel ;
  u64 tmp ;
  u64 tmp___0 ;
  {
  __tunnel = tunnel;
  tmp = tb_route((__tunnel->up_port)->sw);
  tmp___0 = tb_route((__tunnel->down_port)->sw);
  _dev_info((struct device const *)(& (((__tunnel->tb)->nhi)->pdev)->dev), "%llx:%x <-> %llx:%x (PCI): deactivating\n",
            tmp___0, (int )(__tunnel->down_port)->port, tmp, (int )(__tunnel->up_port)->port);
  tb_pci_port_active(tunnel->up_port, 0);
  tb_pci_port_active(tunnel->down_port, 0);
  if ((int )(tunnel->path_to_down)->activated) {
    tb_path_deactivate(tunnel->path_to_down);
  } else {
  }
  if ((int )(tunnel->path_to_up)->activated) {
    tb_path_deactivate(tunnel->path_to_up);
  } else {
  }
  list_del_init(& tunnel->list);
  return;
}
}
bool ldv_queue_work_on_223(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_224(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_225(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_226(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_227(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_228(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_229(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_230(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_231(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_232(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_255(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_253(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_256(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_252(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_254(struct mutex *ldv_func_arg1 ) ;
bool ldv_queue_work_on_247(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_249(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_248(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_251(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_250(struct workqueue_struct *ldv_func_arg1 ) ;
static int tb_eeprom_ctl_write(struct tb_switch *sw , struct tb_eeprom_ctl *ctl )
{
  int tmp ;
  {
  tmp = tb_sw_write(sw, (void *)ctl, 2, (u32 )(sw->cap_plug_events + 4), 1U);
  return (tmp);
}
}
static int tb_eeprom_ctl_read(struct tb_switch *sw , struct tb_eeprom_ctl *ctl )
{
  int tmp ;
  {
  tmp = tb_sw_read(sw, (void *)ctl, 2, (u32 )(sw->cap_plug_events + 4), 1U);
  return (tmp);
}
}
static int tb_eeprom_active(struct tb_switch *sw , bool enable )
{
  struct tb_eeprom_ctl ctl ;
  int res ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = tb_eeprom_ctl_read(sw, & ctl);
  res = tmp;
  if (res != 0) {
    return (res);
  } else {
  }
  if ((int )enable) {
    ctl.access_high = 1;
    res = tb_eeprom_ctl_write(sw, & ctl);
    if (res != 0) {
      return (res);
    } else {
    }
    ctl.access_low = 0;
    tmp___0 = tb_eeprom_ctl_write(sw, & ctl);
    return (tmp___0);
  } else {
    ctl.access_low = 1;
    res = tb_eeprom_ctl_write(sw, & ctl);
    if (res != 0) {
      return (res);
    } else {
    }
    ctl.access_high = 0;
    tmp___1 = tb_eeprom_ctl_write(sw, & ctl);
    return (tmp___1);
  }
}
}
static int tb_eeprom_transfer(struct tb_switch *sw , struct tb_eeprom_ctl *ctl , enum tb_eeprom_transfer direction )
{
  int res ;
  int tmp ;
  {
  if ((unsigned int )direction == 1U) {
    res = tb_eeprom_ctl_write(sw, ctl);
    if (res != 0) {
      return (res);
    } else {
    }
  } else {
  }
  ctl->clock = 1;
  res = tb_eeprom_ctl_write(sw, ctl);
  if (res != 0) {
    return (res);
  } else {
  }
  if ((unsigned int )direction == 0U) {
    res = tb_eeprom_ctl_read(sw, ctl);
    if (res != 0) {
      return (res);
    } else {
    }
  } else {
  }
  ctl->clock = 0;
  tmp = tb_eeprom_ctl_write(sw, ctl);
  return (tmp);
}
}
static int tb_eeprom_out(struct tb_switch *sw , u8 val )
{
  struct tb_eeprom_ctl ctl ;
  int i ;
  int res ;
  int tmp ;
  {
  tmp = tb_eeprom_ctl_read(sw, & ctl);
  res = tmp;
  if (res != 0) {
    return (res);
  } else {
  }
  i = 0;
  goto ldv_26698;
  ldv_26697:
  ctl.data_out = ((int )val & 128) != 0;
  res = tb_eeprom_transfer(sw, & ctl, 1);
  if (res != 0) {
    return (res);
  } else {
  }
  val = (int )val << 1U;
  i = i + 1;
  ldv_26698: ;
  if (i <= 7) {
    goto ldv_26697;
  } else {
  }
  return (0);
}
}
static int tb_eeprom_in(struct tb_switch *sw , u8 *val )
{
  struct tb_eeprom_ctl ctl ;
  int i ;
  int res ;
  int tmp ;
  {
  tmp = tb_eeprom_ctl_read(sw, & ctl);
  res = tmp;
  if (res != 0) {
    return (res);
  } else {
  }
  *val = 0U;
  i = 0;
  goto ldv_26708;
  ldv_26707:
  *val = (int )*val << 1U;
  res = tb_eeprom_transfer(sw, & ctl, 0);
  if (res != 0) {
    return (res);
  } else {
  }
  *val = (int )*val | (int )((u8 )ctl.data_in);
  i = i + 1;
  ldv_26708: ;
  if (i <= 7) {
    goto ldv_26707;
  } else {
  }
  return (0);
}
}
static int tb_eeprom_read_n(struct tb_switch *sw , u16 offset , u8 *val , size_t count )
{
  int i ;
  int res ;
  int tmp ;
  {
  res = tb_eeprom_active(sw, 1);
  if (res != 0) {
    return (res);
  } else {
  }
  res = tb_eeprom_out(sw, 3);
  if (res != 0) {
    return (res);
  } else {
  }
  res = tb_eeprom_out(sw, (int )((u8 )((int )offset >> 8)));
  if (res != 0) {
    return (res);
  } else {
  }
  res = tb_eeprom_out(sw, (int )((u8 )offset));
  if (res != 0) {
    return (res);
  } else {
  }
  i = 0;
  goto ldv_26719;
  ldv_26718:
  res = tb_eeprom_in(sw, val + (unsigned long )i);
  if (res != 0) {
    return (res);
  } else {
  }
  i = i + 1;
  ldv_26719: ;
  if ((size_t )i < count) {
    goto ldv_26718;
  } else {
  }
  tmp = tb_eeprom_active(sw, 0);
  return (tmp);
}
}
static u8 tb_crc8(u8 *data , int len )
{
  int i ;
  int j ;
  u8 val ;
  {
  val = 255U;
  i = 0;
  goto ldv_26732;
  ldv_26731:
  val = (u8 )((int )*(data + (unsigned long )i) ^ (int )val);
  j = 0;
  goto ldv_26729;
  ldv_26728:
  val = (u8 )((int )((signed char )((int )val << 1)) ^ ((int )((signed char )val) < 0 ? 7 : 0));
  j = j + 1;
  ldv_26729: ;
  if (j <= 7) {
    goto ldv_26728;
  } else {
  }
  i = i + 1;
  ldv_26732: ;
  if (i < len) {
    goto ldv_26731;
  } else {
  }
  return (val);
}
}
static u32 tb_crc32(void *data , size_t len )
{
  u32 tmp ;
  {
  tmp = __crc32c_le(4294967295U, (unsigned char const *)data, len);
  return (~ tmp);
}
}
static int tb_eeprom_get_drom_offset(struct tb_switch *sw , u16 *offset )
{
  struct tb_cap_plug_events cap ;
  int res ;
  struct tb_switch *__sw ;
  u64 tmp ;
  struct tb_switch *__sw___0 ;
  u64 tmp___0 ;
  struct tb_switch *__sw___1 ;
  u64 tmp___1 ;
  {
  if (sw->cap_plug_events == 0) {
    __sw = sw;
    tmp = tb_route(__sw);
    dev_warn((struct device const *)(& (((__sw->tb)->nhi)->pdev)->dev), "%llx: no TB_CAP_PLUG_EVENTS, cannot read eeprom\n",
             tmp);
    return (-38);
  } else {
  }
  res = tb_sw_read(sw, (void *)(& cap), 2, (u32 )sw->cap_plug_events, 13U);
  if (res != 0) {
    return (res);
  } else {
  }
  if (! cap.eeprom_ctl.present || (int )cap.eeprom_ctl.not_present) {
    __sw___0 = sw;
    tmp___0 = tb_route(__sw___0);
    dev_warn((struct device const *)(& (((__sw___0->tb)->nhi)->pdev)->dev), "%llx: no NVM\n",
             tmp___0);
    return (-38);
  } else {
  }
  if (cap.drom_offset > 65535U) {
    __sw___1 = sw;
    tmp___1 = tb_route(__sw___1);
    dev_warn((struct device const *)(& (((__sw___1->tb)->nhi)->pdev)->dev), "%llx: drom offset is larger than 0xffff: %#x\n",
             tmp___1, cap.drom_offset);
    return (-6);
  } else {
  }
  *offset = (u16 )cap.drom_offset;
  return (0);
}
}
int tb_drom_read_uid_only(struct tb_switch *sw , u64 *uid )
{
  u8 data[9U] ;
  u16 drom_offset ;
  u8 crc ;
  int res ;
  int tmp ;
  struct tb_switch *__sw ;
  u64 tmp___0 ;
  {
  tmp = tb_eeprom_get_drom_offset(sw, & drom_offset);
  res = tmp;
  if (res != 0) {
    return (res);
  } else {
  }
  res = tb_eeprom_read_n(sw, (int )drom_offset, (u8 *)(& data), 9UL);
  if (res != 0) {
    return (res);
  } else {
  }
  crc = tb_crc8((u8 *)(& data) + 1UL, 8);
  if ((int )data[0] != (int )crc) {
    __sw = sw;
    tmp___0 = tb_route(__sw);
    dev_warn((struct device const *)(& (((__sw->tb)->nhi)->pdev)->dev), "%llx: uid crc8 missmatch (expected: %#x, got: %#x)\n",
             tmp___0, (int )data[0], (int )crc);
    return (-5);
  } else {
  }
  *uid = *((u64 *)(& data) + 1U);
  return (0);
}
}
static void tb_drom_parse_port_entry(struct tb_port *port , struct tb_drom_entry_port *entry )
{
  {
  port->link_nr = entry->link_nr;
  if ((int )entry->has_dual_link_port) {
    port->dual_link_port = (port->sw)->ports + (unsigned long )entry->dual_link_port_nr;
  } else {
  }
  return;
}
}
static int tb_drom_parse_entry(struct tb_switch *sw , struct tb_drom_entry_header *header )
{
  struct tb_port *port ;
  int res ;
  enum tb_port_type type ;
  struct tb_drom_entry_port *entry ;
  struct tb_switch *__sw ;
  u64 tmp ;
  {
  if ((unsigned int )*((unsigned char *)header + 1UL) == 0U) {
    return (0);
  } else {
  }
  port = sw->ports + (unsigned long )header->index;
  port->disabled = header->port_disabled;
  if ((int )port->disabled) {
    return (0);
  } else {
  }
  res = tb_port_read(port, (void *)(& type), 1, 2U, 1U);
  if (res != 0) {
    return (res);
  } else {
  }
  type = (enum tb_port_type )((unsigned int )type & 16777215U);
  if ((unsigned int )type == 1U) {
    entry = (struct tb_drom_entry_port *)header;
    if ((unsigned int )header->len != 8U) {
      __sw = sw;
      tmp = tb_route(__sw);
      dev_warn((struct device const *)(& (((__sw->tb)->nhi)->pdev)->dev), "%llx: port entry has size %#x (expected %#zx)\n",
               tmp, (int )header->len, 8UL);
      return (-5);
    } else {
    }
    tb_drom_parse_port_entry(port, entry);
  } else {
  }
  return (0);
}
}
static int tb_drom_parse_entries(struct tb_switch *sw )
{
  struct tb_drom_header *header ;
  u16 pos ;
  u16 drom_size ;
  struct tb_drom_entry_header *entry ;
  struct tb_switch *__sw ;
  u64 tmp ;
  {
  header = (struct tb_drom_header *)sw->drom;
  pos = 22U;
  drom_size = (unsigned int )header->data_len + 13U;
  goto ldv_26813;
  ldv_26812:
  entry = (struct tb_drom_entry_header *)sw->drom + (unsigned long )pos;
  if (((int )pos + 1 == (int )drom_size || (int )pos + (int )entry->len > (int )drom_size) || (unsigned int )entry->len == 0U) {
    __sw = sw;
    tmp = tb_route(__sw);
    dev_warn((struct device const *)(& (((__sw->tb)->nhi)->pdev)->dev), "%llx: drom buffer overrun, aborting\n",
             tmp);
    return (-5);
  } else {
  }
  tb_drom_parse_entry(sw, entry);
  pos = (int )((u16 )entry->len) + (int )pos;
  ldv_26813: ;
  if ((int )pos < (int )drom_size) {
    goto ldv_26812;
  } else {
  }
  return (0);
}
}
int tb_drom_read(struct tb_switch *sw )
{
  u16 drom_offset ;
  u16 size ;
  u32 crc ;
  struct tb_drom_header *header ;
  int res ;
  u64 tmp ;
  struct tb_switch *__sw ;
  u64 tmp___0 ;
  struct tb_switch *__sw___0 ;
  u64 tmp___1 ;
  void *tmp___2 ;
  struct tb_switch *__sw___1 ;
  u64 tmp___3 ;
  u8 tmp___4 ;
  struct tb_switch *__sw___2 ;
  u64 tmp___5 ;
  struct tb_switch *__sw___3 ;
  u64 tmp___6 ;
  struct tb_switch *__sw___4 ;
  u64 tmp___7 ;
  int tmp___8 ;
  {
  if ((unsigned long )sw->drom != (unsigned long )((u8 *)0U)) {
    return (0);
  } else {
  }
  tmp = tb_route(sw);
  if (tmp == 0ULL) {
    tb_drom_read_uid_only(sw, & sw->uid);
    (sw->ports + 1UL)->link_nr = 0U;
    (sw->ports + 2UL)->link_nr = 1U;
    (sw->ports + 1UL)->dual_link_port = sw->ports + 2UL;
    (sw->ports + 2UL)->dual_link_port = sw->ports + 1UL;
    (sw->ports + 3UL)->link_nr = 0U;
    (sw->ports + 4UL)->link_nr = 1U;
    (sw->ports + 3UL)->dual_link_port = sw->ports + 4UL;
    (sw->ports + 4UL)->dual_link_port = sw->ports + 3UL;
    return (0);
  } else {
  }
  res = tb_eeprom_get_drom_offset(sw, & drom_offset);
  if (res != 0) {
    return (res);
  } else {
  }
  res = tb_eeprom_read_n(sw, (int )((unsigned int )drom_offset + 14U), (u8 *)(& size),
                         2UL);
  if (res != 0) {
    return (res);
  } else {
  }
  size = (unsigned int )size & 1023U;
  size = (unsigned int )size + 13U;
  __sw = sw;
  tmp___0 = tb_route(__sw);
  _dev_info((struct device const *)(& (((__sw->tb)->nhi)->pdev)->dev), "%llx: reading drom (length: %#x)\n",
            tmp___0, (int )size);
  if ((unsigned int )size <= 21U) {
    __sw___0 = sw;
    tmp___1 = tb_route(__sw___0);
    dev_warn((struct device const *)(& (((__sw___0->tb)->nhi)->pdev)->dev), "%llx: drom too small, aborting\n",
             tmp___1);
    return (-5);
  } else {
  }
  tmp___2 = kzalloc((size_t )size, 208U);
  sw->drom = (u8 *)tmp___2;
  if ((unsigned long )sw->drom == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  res = tb_eeprom_read_n(sw, (int )drom_offset, sw->drom, (size_t )size);
  if (res != 0) {
    goto err;
  } else {
  }
  header = (struct tb_drom_header *)sw->drom;
  if ((int )header->data_len + 13 != (int )size) {
    __sw___1 = sw;
    tmp___3 = tb_route(__sw___1);
    dev_warn((struct device const *)(& (((__sw___1->tb)->nhi)->pdev)->dev), "%llx: drom size mismatch, aborting\n",
             tmp___3);
    goto err;
  } else {
  }
  tmp___4 = tb_crc8((u8 *)(& header->uid), 8);
  crc = (u32 )tmp___4;
  if ((u32 )header->uid_crc8 != crc) {
    __sw___2 = sw;
    tmp___5 = tb_route(__sw___2);
    dev_warn((struct device const *)(& (((__sw___2->tb)->nhi)->pdev)->dev), "%llx: drom uid crc8 mismatch (expected: %#x, got: %#x), aborting\n",
             tmp___5, (int )header->uid_crc8, crc);
    goto err;
  } else {
  }
  sw->uid = header->uid;
  crc = tb_crc32((void *)sw->drom + 13U, (size_t )header->data_len);
  if (header->data_crc32 != crc) {
    __sw___3 = sw;
    tmp___6 = tb_route(__sw___3);
    dev_warn((struct device const *)(& (((__sw___3->tb)->nhi)->pdev)->dev), "%llx: drom data crc32 mismatch (expected: %#x, got: %#x), aborting\n",
             tmp___6, header->data_crc32, crc);
    goto err;
  } else {
  }
  if ((unsigned int )header->device_rom_revision > 1U) {
    __sw___4 = sw;
    tmp___7 = tb_route(__sw___4);
    dev_warn((struct device const *)(& (((__sw___4->tb)->nhi)->pdev)->dev), "%llx: drom device_rom_revision %#x unknown\n",
             tmp___7, (int )header->device_rom_revision);
  } else {
  }
  tmp___8 = tb_drom_parse_entries(sw);
  return (tmp___8);
  err:
  kfree((void const *)sw->drom);
  return (-5);
}
}
bool ldv_queue_work_on_247(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_248(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_249(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_250(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_251(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_252(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_253(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_254(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_255(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_256(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
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
static int ldv_mutex_lock_of_tb = 1;
int ldv_mutex_lock_interruptible_lock_of_tb(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_tb != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_lock_of_tb = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock_of_tb(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_tb != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_lock_of_tb = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock_of_tb(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_tb != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock_of_tb = 2;
  return;
}
}
int ldv_mutex_trylock_lock_of_tb(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock_of_tb != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_lock_of_tb = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_tb(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock_of_tb != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock_of_tb = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock_of_tb(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_tb == 1) {
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
void ldv_mutex_unlock_lock_of_tb(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_tb != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock_of_tb = 1;
  return;
}
}
void ldv_usb_lock_device_lock_of_tb(void)
{
  {
  ldv_mutex_lock_lock_of_tb((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_lock_of_tb(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_lock_of_tb((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_lock_of_tb(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_lock_of_tb((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_lock_of_tb(void)
{
  {
  ldv_mutex_unlock_lock_of_tb((struct mutex *)0);
  return;
}
}
static int ldv_mutex_lock_of_tb_nhi = 1;
int ldv_mutex_lock_interruptible_lock_of_tb_nhi(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_tb_nhi != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_lock_of_tb_nhi = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock_of_tb_nhi(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_tb_nhi != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_lock_of_tb_nhi = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock_of_tb_nhi(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_tb_nhi != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock_of_tb_nhi = 2;
  return;
}
}
int ldv_mutex_trylock_lock_of_tb_nhi(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock_of_tb_nhi != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_lock_of_tb_nhi = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_tb_nhi(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock_of_tb_nhi != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock_of_tb_nhi = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock_of_tb_nhi(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_tb_nhi == 1) {
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
void ldv_mutex_unlock_lock_of_tb_nhi(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_tb_nhi != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock_of_tb_nhi = 1;
  return;
}
}
void ldv_usb_lock_device_lock_of_tb_nhi(void)
{
  {
  ldv_mutex_lock_lock_of_tb_nhi((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_lock_of_tb_nhi(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_lock_of_tb_nhi((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_lock_of_tb_nhi(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_lock_of_tb_nhi((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_lock_of_tb_nhi(void)
{
  {
  ldv_mutex_unlock_lock_of_tb_nhi((struct mutex *)0);
  return;
}
}
static int ldv_mutex_lock_of_tb_ring = 1;
int ldv_mutex_lock_interruptible_lock_of_tb_ring(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_tb_ring != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_lock_of_tb_ring = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock_of_tb_ring(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_tb_ring != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_lock_of_tb_ring = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock_of_tb_ring(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_tb_ring != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock_of_tb_ring = 2;
  return;
}
}
int ldv_mutex_trylock_lock_of_tb_ring(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock_of_tb_ring != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_lock_of_tb_ring = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_tb_ring(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock_of_tb_ring != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock_of_tb_ring = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock_of_tb_ring(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_tb_ring == 1) {
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
void ldv_mutex_unlock_lock_of_tb_ring(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_tb_ring != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock_of_tb_ring = 1;
  return;
}
}
void ldv_usb_lock_device_lock_of_tb_ring(void)
{
  {
  ldv_mutex_lock_lock_of_tb_ring((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_lock_of_tb_ring(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_lock_of_tb_ring((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_lock_of_tb_ring(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_lock_of_tb_ring((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_lock_of_tb_ring(void)
{
  {
  ldv_mutex_unlock_lock_of_tb_ring((struct mutex *)0);
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
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_lock_of_tb != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_lock_of_tb_nhi != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_lock_of_tb_ring != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  return;
}
}
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
unsigned int __VERIFIER_nondet_uint(void);
u32 __crc32c_le(u32 arg0, const unsigned char *arg1, size_t arg2) {
  return __VERIFIER_nondet_uint();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int __kfifo_in_r(struct __kfifo *arg0, const void *arg1, unsigned int arg2, size_t arg3) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int __kfifo_out_r(struct __kfifo *arg0, void *arg1, unsigned int arg2, size_t arg3) {
  return __VERIFIER_nondet_uint();
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
}
void complete(struct completion *arg0) {
  return;
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
const char *dev_driver_string(const struct device *arg0) {
  return ldv_malloc(sizeof(char));
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
void devm_free_irq(struct device *arg0, unsigned int arg1, void *arg2) {
  return;
}
void *devm_kmalloc(struct device *arg0, size_t arg1, gfp_t arg2) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int devm_request_threaded_irq(struct device *arg0, unsigned int arg1, irqreturn_t (*arg2)(int, void *), irqreturn_t (*arg3)(int, void *), unsigned long arg4, const char *arg5, void *arg6) {
  return __VERIFIER_nondet_int();
}
void *dma_alloc_attrs(struct device *arg0, size_t arg1, dma_addr_t *arg2, gfp_t arg3, struct dma_attrs *arg4) {
  return ldv_malloc(0UL);
}
void dma_free_attrs(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3, struct dma_attrs *arg4) {
  return;
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
bool __VERIFIER_nondet_bool(void);
bool dmi_match(enum dmi_field arg0, const char *arg1) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool flush_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread32(void *arg0) {
  return __VERIFIER_nondet_uint();
}
void iowrite16(u16 arg0, void *arg1) {
  return;
}
void iowrite32(u32 arg0, void *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_complete_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_late_5() {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_late_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_noirq_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_prepare_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_early_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_early_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_shutdown_4() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_late_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_early_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_noirq_5() {
  return __VERIFIER_nondet_int();
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void msleep(unsigned int arg0) {
  return;
}
void mutex_destroy(struct mutex *arg0) {
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
int pci_enable_msi_range(struct pci_dev *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
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
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
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
