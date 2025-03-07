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
typedef __u16 __le16;
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
struct vm_area_struct;
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
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
struct __anonstruct_nodemask_t_46 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_46 nodemask_t;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct platform_device;
struct usb_gadget;
struct usb_request;
struct usb_ep;
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
struct usb_ctrlrequest {
   __u8 bRequestType ;
   __u8 bRequest ;
   __le16 wValue ;
   __le16 wIndex ;
   __le16 wLength ;
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
struct usb_request {
   void *buf ;
   unsigned int length ;
   dma_addr_t dma ;
   struct scatterlist *sg ;
   unsigned int num_sgs ;
   unsigned int num_mapped_sgs ;
   unsigned short stream_id ;
   unsigned char no_interrupt : 1 ;
   unsigned char zero : 1 ;
   unsigned char short_not_ok : 1 ;
   void (*complete)(struct usb_ep * , struct usb_request * ) ;
   void *context ;
   struct list_head list ;
   int status ;
   unsigned int actual ;
};
struct usb_ep_ops {
   int (*enable)(struct usb_ep * , struct usb_endpoint_descriptor const * ) ;
   int (*disable)(struct usb_ep * ) ;
   struct usb_request *(*alloc_request)(struct usb_ep * , gfp_t ) ;
   void (*free_request)(struct usb_ep * , struct usb_request * ) ;
   int (*queue)(struct usb_ep * , struct usb_request * , gfp_t ) ;
   int (*dequeue)(struct usb_ep * , struct usb_request * ) ;
   int (*set_halt)(struct usb_ep * , int ) ;
   int (*set_wedge)(struct usb_ep * ) ;
   int (*fifo_status)(struct usb_ep * ) ;
   void (*fifo_flush)(struct usb_ep * ) ;
};
struct usb_ep {
   void *driver_data ;
   char const *name ;
   struct usb_ep_ops const *ops ;
   struct list_head ep_list ;
   unsigned short maxpacket ;
   unsigned short maxpacket_limit ;
   unsigned short max_streams ;
   unsigned char mult : 2 ;
   unsigned char maxburst : 5 ;
   u8 address ;
   struct usb_endpoint_descriptor const *desc ;
   struct usb_ss_ep_comp_descriptor const *comp_desc ;
};
struct usb_dcd_config_params {
   __u8 bU1devExitLat ;
   __le16 bU2DevExitLat ;
};
struct usb_gadget_driver;
struct usb_udc;
struct usb_gadget_ops {
   int (*get_frame)(struct usb_gadget * ) ;
   int (*wakeup)(struct usb_gadget * ) ;
   int (*set_selfpowered)(struct usb_gadget * , int ) ;
   int (*vbus_session)(struct usb_gadget * , int ) ;
   int (*vbus_draw)(struct usb_gadget * , unsigned int ) ;
   int (*pullup)(struct usb_gadget * , int ) ;
   int (*ioctl)(struct usb_gadget * , unsigned int , unsigned long ) ;
   void (*get_config_params)(struct usb_dcd_config_params * ) ;
   int (*udc_start)(struct usb_gadget * , struct usb_gadget_driver * ) ;
   int (*udc_stop)(struct usb_gadget * ) ;
};
struct usb_gadget {
   struct work_struct work ;
   struct usb_udc *udc ;
   struct usb_gadget_ops const *ops ;
   struct usb_ep *ep0 ;
   struct list_head ep_list ;
   enum usb_device_speed speed ;
   enum usb_device_speed max_speed ;
   enum usb_device_state state ;
   char const *name ;
   struct device dev ;
   unsigned int out_epnum ;
   unsigned int in_epnum ;
   unsigned char sg_supported : 1 ;
   unsigned char is_otg : 1 ;
   unsigned char is_a_peripheral : 1 ;
   unsigned char b_hnp_enable : 1 ;
   unsigned char a_hnp_support : 1 ;
   unsigned char a_alt_hnp_support : 1 ;
   unsigned char quirk_ep_out_aligned_size : 1 ;
   unsigned char is_selfpowered : 1 ;
};
struct usb_gadget_driver {
   char *function ;
   enum usb_device_speed max_speed ;
   int (*bind)(struct usb_gadget * , struct usb_gadget_driver * ) ;
   void (*unbind)(struct usb_gadget * ) ;
   int (*setup)(struct usb_gadget * , struct usb_ctrlrequest const * ) ;
   void (*disconnect)(struct usb_gadget * ) ;
   void (*suspend)(struct usb_gadget * ) ;
   void (*resume)(struct usb_gadget * ) ;
   void (*reset)(struct usb_gadget * ) ;
   struct device_driver driver ;
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
struct dma_pool;
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_228 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_227 {
   struct __anonstruct____missing_field_name_228 __annonCompField65 ;
};
struct lockref {
   union __anonunion____missing_field_name_227 __annonCompField66 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_230 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_229 {
   struct __anonstruct____missing_field_name_230 __annonCompField67 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_229 __annonCompField68 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_231 {
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
   union __anonunion_d_u_231 d_u ;
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
struct __anonstruct____missing_field_name_235 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_234 {
   struct __anonstruct____missing_field_name_235 __annonCompField69 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_234 __annonCompField70 ;
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
struct __anonstruct_kprojid_t_239 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_239 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_240 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_240 __annonCompField72 ;
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
union __anonunion____missing_field_name_243 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_244 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_245 {
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
   union __anonunion____missing_field_name_243 __annonCompField73 ;
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
   union __anonunion____missing_field_name_244 __annonCompField74 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_245 __annonCompField75 ;
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
union __anonunion_f_u_246 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_246 f_u ;
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
struct __anonstruct_afs_248 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_247 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_248 afs ;
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
   union __anonunion_fl_u_247 fl_u ;
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
typedef unsigned long kernel_ulong_t;
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
struct __anonstruct____missing_field_name_254 {
   u32 slvctrl ;
   u32 slvdata ;
};
struct __anonstruct____missing_field_name_255 {
   u32 dmactrl ;
   u32 dmaaddr ;
};
union __anonunion____missing_field_name_253 {
   struct __anonstruct____missing_field_name_254 __annonCompField76 ;
   struct __anonstruct____missing_field_name_255 __annonCompField77 ;
};
struct gr_epregs {
   u32 epctrl ;
   union __anonunion____missing_field_name_253 __annonCompField78 ;
   u32 epstat ;
};
struct gr_regs {
   struct gr_epregs epo[16U] ;
   struct gr_epregs epi[16U] ;
   u32 control ;
   u32 status ;
};
struct gr_dma_desc {
   u32 ctrl ;
   u32 data ;
   u32 next ;
   u32 paddr ;
   struct gr_dma_desc *next_desc ;
};
struct gr_udc;
struct gr_ep {
   struct usb_ep ep ;
   struct gr_udc *dev ;
   u16 bytes_per_buffer ;
   unsigned int dma_start ;
   struct gr_epregs *regs ;
   unsigned char num ;
   unsigned char is_in : 1 ;
   unsigned char stopped : 1 ;
   unsigned char wedged : 1 ;
   unsigned char callback : 1 ;
   struct list_head queue ;
   struct list_head ep_list ;
   void *tailbuf ;
   dma_addr_t tailbuf_paddr ;
};
struct gr_request {
   struct usb_request req ;
   struct list_head queue ;
   struct gr_dma_desc *first_desc ;
   struct gr_dma_desc *curr_desc ;
   struct gr_dma_desc *last_desc ;
   u16 evenlen ;
   u16 oddlen ;
   u8 setup ;
};
enum gr_ep0state {
    GR_EP0_DISCONNECT = 0,
    GR_EP0_SETUP = 1,
    GR_EP0_IDATA = 2,
    GR_EP0_ODATA = 3,
    GR_EP0_ISTATUS = 4,
    GR_EP0_OSTATUS = 5,
    GR_EP0_STALL = 6,
    GR_EP0_SUSPEND = 7
} ;
struct gr_udc {
   struct usb_gadget gadget ;
   struct gr_ep epi[16U] ;
   struct gr_ep epo[16U] ;
   struct usb_gadget_driver *driver ;
   struct dma_pool *desc_pool ;
   struct device *dev ;
   enum gr_ep0state ep0state ;
   struct gr_request *ep0reqo ;
   struct gr_request *ep0reqi ;
   struct gr_regs *regs ;
   int irq ;
   int irqi ;
   int irqo ;
   unsigned char added : 1 ;
   unsigned char irq_enabled : 1 ;
   unsigned char remote_wakeup : 1 ;
   u8 test_mode ;
   enum usb_device_state suspended_from ;
   unsigned int nepi ;
   unsigned int nepo ;
   struct list_head ep_list ;
   spinlock_t lock ;
   struct dentry *dfs_root ;
   struct dentry *dfs_state ;
};
union __anonunion_u_258 {
   struct usb_ctrlrequest ctrl ;
   u8 raw[8U] ;
   u32 word[2U] ;
};
typedef int ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
bool ldv_is_err(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
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
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_9(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 ) ;
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
void ldv_mutex_lock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField17.rlock);
}
}
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
extern unsigned int ioread32be(void * ) ;
extern void iowrite32be(u32 , void * ) ;
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
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_irq_2_0 = 0;
struct device *ldv_irq_dev_2_0 ;
struct platform_device *gr_driver_group1 ;
int probed_3 = 0;
void *ldv_irq_data_2_3 ;
int ldv_irq_2_2 = 0;
struct file *gr_dfs_fops_group2 ;
struct device *ldv_irq_dev_1_2 ;
int ldv_irq_line_2_0 ;
struct device *ldv_irq_dev_2_1 ;
int ref_cnt ;
void *ldv_irq_data_2_2 ;
int ldv_irq_line_1_1 ;
struct usb_gadget *gr_ops_group0 ;
int ldv_state_variable_1 ;
struct usb_request *gr_ep_ops_group1 ;
int ldv_irq_line_1_2 ;
struct device *ldv_irq_dev_2_2 ;
int ldv_irq_line_2_3 ;
int ldv_irq_2_1 = 0;
void *ldv_irq_data_2_1 ;
int ldv_irq_1_3 = 0;
struct device *ldv_irq_dev_1_1 ;
void *ldv_irq_data_1_1 ;
int ldv_irq_line_2_2 ;
int ldv_irq_1_0 = 0;
void *ldv_irq_data_1_0 ;
int ldv_state_variable_6 ;
int ldv_irq_line_2_1 ;
void *ldv_irq_data_1_3 ;
struct device *ldv_irq_dev_1_3 ;
int ldv_state_variable_2 ;
struct device *ldv_irq_dev_1_0 ;
struct inode *gr_dfs_fops_group1 ;
void *ldv_irq_data_1_2 ;
struct device *ldv_irq_dev_2_3 ;
void *ldv_irq_data_2_0 ;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_1 = 0;
struct usb_ep *gr_ep_ops_group0 ;
int ldv_irq_2_3 = 0;
int ldv_irq_line_1_3 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
int ldv_state_variable_4 ;
void ldv_platform_probe_3(int (*probe)(struct platform_device * ) ) ;
void choose_interrupt_2(void) ;
void disable_suitable_irq_2(struct device *dev , int line , void *data ) ;
void ldv_file_operations_6(void) ;
void activate_suitable_irq_2(struct device *dev , int line , void *data ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) , irqreturn_t (*thread_fn)(int ,
                                                                                  void * ) ) ;
void ldv_platform_driver_init_3(void) ;
void choose_interrupt_1(void) ;
int reg_check_2(irqreturn_t (*handler)(int , void * ) , irqreturn_t (*thread_fn)(int ,
                                                                                  void * ) ) ;
void disable_suitable_irq_1(struct device *dev , int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void activate_suitable_irq_1(struct device *dev , int line , void *data ) ;
void ldv_initialize_usb_ep_ops_5(void) ;
void ldv_initialize_usb_gadget_ops_4(void) ;
int ldv_irq_2(int state , int line , void *data ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern int devm_request_threaded_irq(struct device * , unsigned int , irqreturn_t (*)(int ,
                                                                                       void * ) ,
                                     irqreturn_t (*)(int , void * ) , unsigned long ,
                                     char const * , void * ) ;
int ldv_devm_request_threaded_irq_7(struct device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                    irqreturn_t (*handler)(int , void * ) , irqreturn_t (*thread_fn)(int ,
                                                                                                      void * ) ,
                                    unsigned long ldv_func_arg5 , char const *ldv_func_arg6 ,
                                    void *ldv_func_arg7 ) ;
int ldv_devm_request_threaded_irq_13(struct device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                     irqreturn_t (*handler)(int , void * ) , irqreturn_t (*thread_fn)(int ,
                                                                                                       void * ) ,
                                     unsigned long ldv_func_arg5 , char const *ldv_func_arg6 ,
                                     void *ldv_func_arg7 ) ;
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_puts(struct seq_file * , char const * ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int single_open(struct file * , int (*)(struct seq_file * , void * ) , void * ) ;
extern int single_release(struct inode * , struct file * ) ;
extern void *devm_kmalloc(struct device * , size_t , gfp_t ) ;
__inline static void *devm_kzalloc(struct device *dev , size_t size , gfp_t gfp )
{
  void *tmp ;
  {
  tmp = devm_kmalloc(dev, size, gfp | 32768U);
  return (tmp);
}
}
extern void *devm_ioremap_resource(struct device * , struct resource * ) ;
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
extern void dev_err(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
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
extern char const *usb_speed_string(enum usb_device_speed ) ;
extern char const *usb_state_string(enum usb_device_state ) ;
__inline static void usb_ep_set_maxpacket_limit(struct usb_ep *ep , unsigned int maxpacket_limit )
{
  {
  ep->maxpacket_limit = (unsigned short )maxpacket_limit;
  ep->maxpacket = (unsigned short )maxpacket_limit;
  return;
}
}
extern int usb_add_gadget_udc(struct device * , struct usb_gadget * ) ;
extern void usb_del_gadget_udc(struct usb_gadget * ) ;
extern int usb_gadget_map_request(struct usb_gadget * , struct usb_request * , int ) ;
extern void usb_gadget_unmap_request(struct usb_gadget * , struct usb_request * ,
                                     int ) ;
extern void usb_gadget_set_state(struct usb_gadget * , enum usb_device_state ) ;
extern void usb_gadget_giveback_request(struct usb_ep * , struct usb_request * ) ;
extern void *dma_alloc_attrs(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
extern void dma_free_attrs(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
extern struct dma_pool *dma_pool_create(char const * , struct device * , size_t ,
                                        size_t , size_t ) ;
extern void dma_pool_destroy(struct dma_pool * ) ;
extern void *dma_pool_alloc(struct dma_pool * , gfp_t , dma_addr_t * ) ;
extern void dma_pool_free(struct dma_pool * , void * , dma_addr_t ) ;
extern struct dentry *debugfs_create_file(char const * , umode_t , struct dentry * ,
                                          void * , struct file_operations const * ) ;
extern struct dentry *debugfs_create_dir(char const * , struct dentry * ) ;
extern void debugfs_remove(struct dentry * ) ;
extern struct resource *platform_get_resource(struct platform_device * , unsigned int ,
                                              unsigned int ) ;
extern int platform_get_irq(struct platform_device * , unsigned int ) ;
extern int __platform_driver_register(struct platform_driver * , struct module * ) ;
int ldv___platform_driver_register_14(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
void ldv_platform_driver_unregister_15(struct platform_driver *ldv_func_arg1 ) ;
__inline static void *platform_get_drvdata(struct platform_device const *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata(& pdev->dev);
  return (tmp);
}
}
__inline static void platform_set_drvdata(struct platform_device *pdev , void *data )
{
  {
  dev_set_drvdata(& pdev->dev, data);
  return;
}
}
extern int of_property_read_u32_index(struct device_node const * , char const * ,
                                      u32 , u32 * ) ;
static char const driver_name[7U] = { 'g', 'r', '_', 'u',
        'd', 'c', '\000'};
static char const * const gr_modestring[4U] = { "control", "iso", "bulk", "int"};
static char const *gr_ep0state_string(enum gr_ep0state state )
{
  char const *names[8U] ;
  {
  names[0] = "disconnect";
  names[1] = "setup";
  names[2] = "idata";
  names[3] = "odata";
  names[4] = "istatus";
  names[5] = "ostatus";
  names[6] = "stall";
  names[7] = "suspend";
  if ((unsigned int )state > 7U) {
    return ("UNKNOWN");
  } else {
  }
  return (names[(unsigned int )state]);
}
}
static void gr_dbgprint_request(char const *str , struct gr_ep *ep , struct gr_request *req )
{
  {
  return;
}
}
static void gr_dbgprint_devreq(struct gr_udc *dev , u8 type , u8 request , u16 value ,
                               u16 index , u16 length )
{
  {
  return;
}
}
static void gr_seq_ep_show(struct seq_file *seq , struct gr_ep *ep )
{
  u32 epctrl ;
  unsigned int tmp ;
  u32 epstat ;
  unsigned int tmp___0 ;
  int mode ;
  struct gr_request *req ;
  int tmp___1 ;
  struct list_head const *__mptr ;
  struct gr_dma_desc *desc ;
  struct gr_dma_desc *next ;
  struct list_head const *__mptr___0 ;
  {
  tmp = ioread32be((void *)(& (ep->regs)->epctrl));
  epctrl = tmp;
  tmp___0 = ioread32be((void *)(& (ep->regs)->epstat));
  epstat = tmp___0;
  mode = (int )((epctrl & 24U) >> 3);
  seq_printf(seq, "%s:\n", ep->ep.name);
  seq_printf(seq, "  mode = %s\n", gr_modestring[mode]);
  seq_printf(seq, "  halted: %d\n", ((unsigned long )epctrl & 4UL) != 0UL);
  seq_printf(seq, "  disabled: %d\n", ((unsigned long )epctrl & 2UL) != 0UL);
  seq_printf(seq, "  valid: %d\n", (int )epctrl & 1);
  seq_printf(seq, "  dma_start = %d\n", ep->dma_start);
  seq_printf(seq, "  stopped = %d\n", (int )ep->stopped);
  seq_printf(seq, "  wedged = %d\n", (int )ep->wedged);
  seq_printf(seq, "  callback = %d\n", (int )ep->callback);
  seq_printf(seq, "  maxpacket = %d\n", (int )ep->ep.maxpacket);
  seq_printf(seq, "  maxpacket_limit = %d\n", (int )ep->ep.maxpacket_limit);
  seq_printf(seq, "  bytes_per_buffer = %d\n", (int )ep->bytes_per_buffer);
  if (mode == 1 || mode == 3) {
    seq_printf(seq, "  nt = %d\n", (epctrl & 96U) >> 5);
  } else {
  }
  seq_printf(seq, "  Buffer 0: %s %s%d\n", ((unsigned long )epstat & 2UL) != 0UL ? (char *)"valid" : (char *)"invalid",
             (int )epstat & 1 ? (char *)" " : (char *)"selected ", (epstat & 65528U) >> 3);
  seq_printf(seq, "  Buffer 1: %s %s%d\n", ((unsigned long )epstat & 4UL) != 0UL ? (char *)"valid" : (char *)"invalid",
             (int )epstat & 1 ? (char *)"selected " : (char *)" ", (epstat & 536805376U) >> 16);
  tmp___1 = list_empty((struct list_head const *)(& ep->queue));
  if (tmp___1 != 0) {
    seq_puts(seq, "  Queue: empty\n\n");
    return;
  } else {
  }
  seq_puts(seq, "  Queue:\n");
  __mptr = (struct list_head const *)ep->queue.next;
  req = (struct gr_request *)__mptr + 0xffffffffffffffa8UL;
  goto ldv_33095;
  ldv_33094:
  seq_printf(seq, "    0x%p: 0x%p %d %d\n", req, & req->req.buf, req->req.actual,
             req->req.length);
  next = req->first_desc;
  ldv_33092:
  desc = next;
  next = desc->next_desc;
  seq_printf(seq, "    %c 0x%p (0x%08x): 0x%05x 0x%08x\n", (unsigned long )req->curr_desc == (unsigned long )desc ? 99 : 32,
             desc, desc->paddr, desc->ctrl, desc->data);
  if ((unsigned long )req->last_desc != (unsigned long )desc) {
    goto ldv_33092;
  } else {
  }
  __mptr___0 = (struct list_head const *)req->queue.next;
  req = (struct gr_request *)__mptr___0 + 0xffffffffffffffa8UL;
  ldv_33095: ;
  if ((unsigned long )(& req->queue) != (unsigned long )(& ep->queue)) {
    goto ldv_33094;
  } else {
  }
  seq_puts(seq, "\n");
  return;
}
}
static int gr_seq_show(struct seq_file *seq , void *v )
{
  struct gr_udc *dev ;
  u32 control ;
  unsigned int tmp ;
  u32 status ;
  unsigned int tmp___0 ;
  struct gr_ep *ep ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  dev = (struct gr_udc *)seq->private;
  tmp = ioread32be((void *)(& (dev->regs)->control));
  control = tmp;
  tmp___0 = ioread32be((void *)(& (dev->regs)->status));
  status = tmp___0;
  tmp___1 = usb_state_string(dev->gadget.state);
  seq_printf(seq, "usb state = %s\n", tmp___1);
  seq_printf(seq, "address = %d\n", (control & 254U) >> 1);
  tmp___2 = usb_speed_string(((unsigned long )status & 16384UL) != 0UL ? 2 : 3);
  seq_printf(seq, "speed = %s\n", tmp___2);
  tmp___3 = gr_ep0state_string(dev->ep0state);
  seq_printf(seq, "ep0state = %s\n", tmp___3);
  seq_printf(seq, "irq_enabled = %d\n", (int )dev->irq_enabled);
  seq_printf(seq, "remote_wakeup = %d\n", (int )dev->remote_wakeup);
  seq_printf(seq, "test_mode = %d\n", (int )dev->test_mode);
  seq_puts(seq, "\n");
  __mptr = (struct list_head const *)dev->ep_list.next;
  ep = (struct gr_ep *)__mptr + 0xffffffffffffff90UL;
  goto ldv_33110;
  ldv_33109:
  gr_seq_ep_show(seq, ep);
  __mptr___0 = (struct list_head const *)ep->ep_list.next;
  ep = (struct gr_ep *)__mptr___0 + 0xffffffffffffff90UL;
  ldv_33110: ;
  if ((unsigned long )(& ep->ep_list) != (unsigned long )(& dev->ep_list)) {
    goto ldv_33109;
  } else {
  }
  return (0);
}
}
static int gr_dfs_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  tmp = single_open(file, & gr_seq_show, inode->i_private);
  return (tmp);
}
}
static struct file_operations const gr_dfs_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, & gr_dfs_open,
    0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static void gr_dfs_create(struct gr_udc *dev )
{
  char const *name ;
  char const *tmp ;
  {
  name = "gr_udc_state";
  tmp = dev_name((struct device const *)dev->dev);
  dev->dfs_root = debugfs_create_dir(tmp, (struct dentry *)0);
  dev->dfs_state = debugfs_create_file(name, 292, dev->dfs_root, (void *)dev, & gr_dfs_fops);
  return;
}
}
static void gr_dfs_delete(struct gr_udc *dev )
{
  {
  debugfs_remove(dev->dfs_state);
  debugfs_remove(dev->dfs_root);
  return;
}
}
static struct gr_dma_desc *gr_alloc_dma_desc(struct gr_ep *ep , gfp_t gfp_flags )
{
  dma_addr_t paddr ;
  struct gr_dma_desc *dma_desc ;
  void *tmp ;
  {
  tmp = dma_pool_alloc((ep->dev)->desc_pool, gfp_flags, & paddr);
  dma_desc = (struct gr_dma_desc *)tmp;
  if ((unsigned long )dma_desc == (unsigned long )((struct gr_dma_desc *)0)) {
    dev_err((struct device const *)(ep->dev)->dev, "Could not allocate from DMA pool\n");
    return ((struct gr_dma_desc *)0);
  } else {
  }
  memset((void *)dma_desc, 0, 24UL);
  dma_desc->paddr = (u32 )paddr;
  return (dma_desc);
}
}
__inline static void gr_free_dma_desc(struct gr_udc *dev , struct gr_dma_desc *desc )
{
  {
  dma_pool_free(dev->desc_pool, (void *)desc, (unsigned long long )desc->paddr);
  return;
}
}
static void gr_free_dma_desc_chain(struct gr_udc *dev , struct gr_request *req )
{
  struct gr_dma_desc *desc ;
  struct gr_dma_desc *next ;
  {
  next = req->first_desc;
  if ((unsigned long )next == (unsigned long )((struct gr_dma_desc *)0)) {
    return;
  } else {
  }
  ldv_33140:
  desc = next;
  next = desc->next_desc;
  gr_free_dma_desc(dev, desc);
  if ((unsigned long )req->last_desc != (unsigned long )desc) {
    goto ldv_33140;
  } else {
  }
  req->first_desc = (struct gr_dma_desc *)0;
  req->curr_desc = (struct gr_dma_desc *)0;
  req->last_desc = (struct gr_dma_desc *)0;
  return;
}
}
static void gr_ep0_setup(struct gr_udc *dev , struct gr_request *req ) ;
static void gr_finish_request(struct gr_ep *ep , struct gr_request *req , int status )
{
  struct gr_udc *dev ;
  long tmp ;
  char *buftail ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  list_del_init(& req->queue);
  tmp = ldv__builtin_expect(req->req.status == -115, 1L);
  if (tmp != 0L) {
    req->req.status = status;
  } else {
    status = req->req.status;
  }
  dev = ep->dev;
  usb_gadget_unmap_request(& dev->gadget, & req->req, (int )ep->is_in);
  gr_free_dma_desc_chain(dev, req);
  if ((unsigned int )*((unsigned char *)ep + 89UL) != 0U) {
    req->req.actual = req->req.length;
  } else
  if ((unsigned int )req->oddlen != 0U && req->req.actual > (unsigned int )req->evenlen) {
    buftail = (char *)req->req.buf + (unsigned long )req->evenlen;
    memcpy((void *)buftail, (void const *)ep->tailbuf, (size_t )req->oddlen);
    if (req->req.actual > req->req.length) {
      descriptor.modname = "gr_udc";
      descriptor.function = "gr_finish_request";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8654/dscv_tempdir/dscv/ri/32_7a/drivers/usb/gadget/udc/gr_udc.c";
      descriptor.format = "Overflow for ep %s\n";
      descriptor.lineno = 336U;
      descriptor.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(ep->dev)->dev, "Overflow for ep %s\n",
                          ep->ep.name);
      } else {
      }
      gr_dbgprint_request("OVFL", ep, req);
      req->req.status = -75;
    } else {
    }
  } else {
  }
  if (status == 0) {
    if ((unsigned int )*((unsigned char *)ep + 89UL) != 0U) {
      gr_dbgprint_request("SENT", ep, req);
    } else {
      gr_dbgprint_request("RECV", ep, req);
    }
  } else {
  }
  ep->callback = 1U;
  if ((unsigned long )dev->ep0reqo == (unsigned long )req && status == 0) {
    if ((unsigned int )req->setup != 0U) {
      gr_ep0_setup(dev, req);
    } else {
      dev_err((struct device const *)dev->dev, "Unexpected non setup packet on ep0in\n");
    }
  } else
  if ((unsigned long )req->req.complete != (unsigned long )((void (*)(struct usb_ep * ,
                                                                      struct usb_request * ))0)) {
    spin_unlock(& dev->lock);
    usb_gadget_giveback_request(& ep->ep, & req->req);
    spin_lock(& dev->lock);
  } else {
  }
  ep->callback = 0U;
  return;
}
}
static struct usb_request *gr_alloc_request(struct usb_ep *_ep , gfp_t gfp_flags )
{
  struct gr_request *req ;
  void *tmp ;
  {
  tmp = kzalloc(136UL, gfp_flags);
  req = (struct gr_request *)tmp;
  if ((unsigned long )req == (unsigned long )((struct gr_request *)0)) {
    return ((struct usb_request *)0);
  } else {
  }
  INIT_LIST_HEAD(& req->queue);
  return (& req->req);
}
}
static void gr_start_dma(struct gr_ep *ep )
{
  struct gr_request *req ;
  u32 dmactrl ;
  int tmp ;
  struct list_head const *__mptr ;
  long tmp___0 ;
  {
  tmp = list_empty((struct list_head const *)(& ep->queue));
  if (tmp != 0) {
    ep->dma_start = 0U;
    return;
  } else {
  }
  __mptr = (struct list_head const *)ep->queue.next;
  req = (struct gr_request *)__mptr + 0xffffffffffffffa8UL;
  tmp___0 = ldv__builtin_expect((unsigned long )req->curr_desc == (unsigned long )((struct gr_dma_desc *)0),
                             0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8654/dscv_tempdir/dscv/ri/32_7a/drivers/usb/gadget/udc/gr_udc.c"),
                         "i" (398), "i" (12UL));
    ldv_33166: ;
    goto ldv_33166;
  } else {
  }
  if ((unsigned int )*((unsigned char *)ep + 89UL) == 0U && (unsigned int )req->oddlen != 0U) {
    (req->last_desc)->data = (u32 )ep->tailbuf_paddr;
  } else {
  }
  __asm__ volatile ("sfence": : : "memory");
  iowrite32be((req->curr_desc)->paddr, (void *)(& (ep->regs)->__annonCompField78.__annonCompField77.dmaaddr));
  dmactrl = ioread32be((void *)(& (ep->regs)->__annonCompField78.__annonCompField77.dmactrl));
  iowrite32be(dmactrl | 1U, (void *)(& (ep->regs)->__annonCompField78.__annonCompField77.dmactrl));
  ep->dma_start = 1U;
  return;
}
}
static void gr_dma_advance(struct gr_ep *ep , int status )
{
  struct gr_request *req ;
  struct list_head const *__mptr ;
  {
  __mptr = (struct list_head const *)ep->queue.next;
  req = (struct gr_request *)__mptr + 0xffffffffffffffa8UL;
  gr_finish_request(ep, req, status);
  gr_start_dma(ep);
  return;
}
}
static void gr_abort_dma(struct gr_ep *ep )
{
  u32 dmactrl ;
  {
  dmactrl = ioread32be((void *)(& (ep->regs)->__annonCompField78.__annonCompField77.dmactrl));
  iowrite32be(dmactrl | 8U, (void *)(& (ep->regs)->__annonCompField78.__annonCompField77.dmactrl));
  return;
}
}
static int gr_add_dma_desc(struct gr_ep *ep , struct gr_request *req , dma_addr_t data ,
                           unsigned int size , gfp_t gfp_flags )
{
  struct gr_dma_desc *desc ;
  {
  desc = gr_alloc_dma_desc(ep, gfp_flags);
  if ((unsigned long )desc == (unsigned long )((struct gr_dma_desc *)0)) {
    return (-12);
  } else {
  }
  desc->data = (u32 )data;
  if ((unsigned int )*((unsigned char *)ep + 89UL) != 0U) {
    desc->ctrl = (size & 8191U) | 8192U;
  } else {
    desc->ctrl = 32768U;
  }
  if ((unsigned long )req->first_desc == (unsigned long )((struct gr_dma_desc *)0)) {
    req->first_desc = desc;
    req->curr_desc = desc;
  } else {
    (req->last_desc)->next_desc = desc;
    (req->last_desc)->next = desc->paddr;
    (req->last_desc)->ctrl = (req->last_desc)->ctrl | 16384U;
  }
  req->last_desc = desc;
  return (0);
}
}
static int gr_setup_out_desc_list(struct gr_ep *ep , struct gr_request *req , gfp_t gfp_flags )
{
  u16 bytes_left ;
  u16 bytes_used ;
  int ret ;
  dma_addr_t start ;
  u16 size ;
  u16 _min1 ;
  u16 _min2 ;
  {
  ret = 0;
  req->first_desc = (struct gr_dma_desc *)0;
  bytes_left = (u16 )req->req.length;
  bytes_used = 0U;
  goto ldv_33201;
  ldv_33200:
  start = req->req.dma + (dma_addr_t )bytes_used;
  _min1 = bytes_left;
  _min2 = ep->bytes_per_buffer;
  size = (u16 )((int )_min1 < (int )_min2 ? _min1 : _min2);
  if ((int )ep->bytes_per_buffer > (int )size) {
    req->evenlen = (int )((u16 )req->req.length) - (int )bytes_left;
    req->oddlen = size;
  } else {
  }
  ret = gr_add_dma_desc(ep, req, start, (unsigned int )size, gfp_flags);
  if (ret != 0) {
    goto alloc_err;
  } else {
  }
  bytes_left = (int )bytes_left - (int )size;
  bytes_used = (int )bytes_used + (int )size;
  ldv_33201: ;
  if ((unsigned int )bytes_left != 0U) {
    goto ldv_33200;
  } else {
  }
  (req->first_desc)->ctrl = (req->first_desc)->ctrl | 8192U;
  return (0);
  alloc_err:
  gr_free_dma_desc_chain(ep->dev, req);
  return (ret);
}
}
static int gr_setup_in_desc_list(struct gr_ep *ep , struct gr_request *req , gfp_t gfp_flags )
{
  u16 bytes_left ;
  u16 bytes_used ;
  int ret ;
  dma_addr_t start ;
  u16 size ;
  u16 _min1 ;
  u16 _min2 ;
  {
  ret = 0;
  req->first_desc = (struct gr_dma_desc *)0;
  bytes_left = (u16 )req->req.length;
  bytes_used = 0U;
  ldv_33217:
  start = req->req.dma + (dma_addr_t )bytes_used;
  _min1 = bytes_left;
  _min2 = ep->bytes_per_buffer;
  size = (u16 )((int )_min1 < (int )_min2 ? _min1 : _min2);
  ret = gr_add_dma_desc(ep, req, start, (unsigned int )size, gfp_flags);
  if (ret != 0) {
    goto alloc_err;
  } else {
  }
  bytes_left = (int )bytes_left - (int )size;
  bytes_used = (int )bytes_used + (int )size;
  if ((unsigned int )bytes_left != 0U) {
    goto ldv_33217;
  } else {
  }
  if ((unsigned int )*((unsigned char *)req + 42UL) != 0U && req->req.length % (unsigned int )ep->ep.maxpacket == 0U) {
    ret = gr_add_dma_desc(ep, req, 0ULL, 0U, gfp_flags);
    if (ret != 0) {
      goto alloc_err;
    } else {
    }
  } else {
  }
  (req->last_desc)->ctrl = (req->last_desc)->ctrl | 131072U;
  return (0);
  alloc_err:
  gr_free_dma_desc_chain(ep->dev, req);
  return (ret);
}
}
static int gr_queue(struct gr_ep *ep , struct gr_request *req , gfp_t gfp_flags )
{
  struct gr_udc *dev ;
  int ret ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  {
  dev = ep->dev;
  tmp = ldv__builtin_expect((long )((unsigned long )ep->ep.desc == (unsigned long )((struct usb_endpoint_descriptor const *)0) && (unsigned int )ep->num != 0U),
                         0L);
  if (tmp != 0L) {
    dev_err((struct device const *)dev->dev, "No ep descriptor for %s\n", ep->ep.name);
    return (-22);
  } else {
  }
  if ((unsigned long )req->req.buf == (unsigned long )((void *)0)) {
    tmp___2 = 1;
  } else {
    tmp___1 = list_empty((struct list_head const *)(& req->queue));
    if (tmp___1 == 0) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  }
  tmp___3 = ldv__builtin_expect((long )tmp___2, 0L);
  if (tmp___3 != 0L) {
    tmp___0 = list_empty((struct list_head const *)(& req->queue));
    dev_err((struct device const *)dev->dev, "Invalid request for %s: buf=%p list_empty=%d\n",
            ep->ep.name, req->req.buf, tmp___0);
    return (-22);
  } else {
  }
  tmp___4 = ldv__builtin_expect((long )((unsigned long )dev->driver == (unsigned long )((struct usb_gadget_driver *)0) || (unsigned int )dev->gadget.speed == 0U),
                             0L);
  if (tmp___4 != 0L) {
    dev_err((struct device const *)dev->dev, "-ESHUTDOWN");
    return (-108);
  } else {
  }
  if ((unsigned int )dev->ep0state == 7U) {
    dev_err((struct device const *)dev->dev, "-EBUSY");
    return (-16);
  } else {
  }
  ret = usb_gadget_map_request(& dev->gadget, & req->req, (int )ep->is_in);
  if (ret != 0) {
    dev_err((struct device const *)dev->dev, "usb_gadget_map_request");
    return (ret);
  } else {
  }
  if ((unsigned int )*((unsigned char *)ep + 89UL) != 0U) {
    ret = gr_setup_in_desc_list(ep, req, gfp_flags);
  } else {
    ret = gr_setup_out_desc_list(ep, req, gfp_flags);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  req->req.status = -115;
  req->req.actual = 0U;
  list_add_tail(& req->queue, & ep->queue);
  if (ep->dma_start == 0U) {
    tmp___5 = ldv__builtin_expect((unsigned int )*((unsigned char *)ep + 89UL) == 0U,
                               1L);
    if (tmp___5 != 0L) {
      gr_start_dma(ep);
    } else {
    }
  } else {
  }
  return (0);
}
}
__inline static int gr_queue_int(struct gr_ep *ep , struct gr_request *req , gfp_t gfp_flags )
{
  int tmp ;
  {
  if ((unsigned int )*((unsigned char *)ep + 89UL) != 0U) {
    gr_dbgprint_request("RESP", ep, req);
  } else {
  }
  tmp = gr_queue(ep, req, gfp_flags);
  return (tmp);
}
}
static void gr_ep_nuke(struct gr_ep *ep )
{
  struct gr_request *req ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  ep->stopped = 1U;
  ep->dma_start = 0U;
  gr_abort_dma(ep);
  goto ldv_33238;
  ldv_33237:
  __mptr = (struct list_head const *)ep->queue.next;
  req = (struct gr_request *)__mptr + 0xffffffffffffffa8UL;
  gr_finish_request(ep, req, -108);
  ldv_33238:
  tmp = list_empty((struct list_head const *)(& ep->queue));
  if (tmp == 0) {
    goto ldv_33237;
  } else {
  }
  return;
}
}
static void gr_ep_reset(struct gr_ep *ep )
{
  {
  iowrite32be(0U, (void *)(& (ep->regs)->epctrl));
  iowrite32be(0U, (void *)(& (ep->regs)->__annonCompField78.__annonCompField77.dmactrl));
  ep->ep.maxpacket = 64U;
  ep->ep.desc = (struct usb_endpoint_descriptor const *)0;
  ep->stopped = 1U;
  ep->dma_start = 0U;
  return;
}
}
static void gr_control_stall(struct gr_udc *dev )
{
  u32 epctrl ;
  {
  epctrl = ioread32be((void *)(& (dev->epo[0].regs)->epctrl));
  iowrite32be(epctrl | 262144U, (void *)(& (dev->epo[0].regs)->epctrl));
  epctrl = ioread32be((void *)(& (dev->epi[0].regs)->epctrl));
  iowrite32be(epctrl | 262144U, (void *)(& (dev->epi[0].regs)->epctrl));
  dev->ep0state = 6;
  return;
}
}
static int gr_ep_halt_wedge(struct gr_ep *ep , int halt___0 , int wedge , int fromhost )
{
  u32 epctrl ;
  int retval ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  retval = 0;
  if ((unsigned int )ep->num != 0U && (unsigned long )ep->ep.desc == (unsigned long )((struct usb_endpoint_descriptor const *)0)) {
    return (-22);
  } else {
  }
  if ((unsigned int )ep->num != 0U && (unsigned int )((unsigned char )(ep->ep.desc)->bmAttributes) == 1U) {
    return (-95);
  } else {
  }
  if ((unsigned int )ep->num == 0U) {
    if (halt___0 != 0 && fromhost == 0) {
      gr_control_stall(ep->dev);
      descriptor.modname = "gr_udc";
      descriptor.function = "gr_ep_halt_wedge";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8654/dscv_tempdir/dscv/ri/32_7a/drivers/usb/gadget/udc/gr_udc.c";
      descriptor.format = "EP: stall ep0\n";
      descriptor.lineno = 740U;
      descriptor.flags = 0U;
      tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(ep->dev)->dev, "EP: stall ep0\n");
      } else {
      }
      return (0);
    } else {
    }
    return (-22);
  } else {
  }
  descriptor___0.modname = "gr_udc";
  descriptor___0.function = "gr_ep_halt_wedge";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8654/dscv_tempdir/dscv/ri/32_7a/drivers/usb/gadget/udc/gr_udc.c";
  descriptor___0.format = "EP: %s halt %s\n";
  descriptor___0.lineno = 747U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(ep->dev)->dev, "EP: %s halt %s\n",
                      halt___0 != 0 ? (wedge != 0 ? (char *)"wedge" : (char *)"set") : (char *)"clear",
                      ep->ep.name);
  } else {
  }
  epctrl = ioread32be((void *)(& (ep->regs)->epctrl));
  if (halt___0 != 0) {
    iowrite32be(epctrl | 4U, (void *)(& (ep->regs)->epctrl));
    ep->stopped = 1U;
    if (wedge != 0) {
      ep->wedged = 1U;
    } else {
    }
  } else {
    iowrite32be(epctrl & 4294967291U, (void *)(& (ep->regs)->epctrl));
    ep->stopped = 0U;
    ep->wedged = 0U;
    if (ep->dma_start == 0U) {
      gr_start_dma(ep);
    } else {
    }
  }
  return (retval);
}
}
__inline static void gr_set_ep0state(struct gr_udc *dev , enum gr_ep0state value )
{
  {
  dev->ep0state = value;
  return;
}
}
static void gr_disable_interrupts_and_pullup(struct gr_udc *dev )
{
  {
  iowrite32be(0U, (void *)(& (dev->regs)->control));
  __asm__ volatile ("sfence": : : "memory");
  dev->irq_enabled = 0U;
  return;
}
}
static void gr_stop_activity(struct gr_udc *dev )
{
  struct gr_ep *ep ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)dev->ep_list.next;
  ep = (struct gr_ep *)__mptr + 0xffffffffffffff90UL;
  goto ldv_33274;
  ldv_33273:
  gr_ep_nuke(ep);
  __mptr___0 = (struct list_head const *)ep->ep_list.next;
  ep = (struct gr_ep *)__mptr___0 + 0xffffffffffffff90UL;
  ldv_33274: ;
  if ((unsigned long )(& ep->ep_list) != (unsigned long )(& dev->ep_list)) {
    goto ldv_33273;
  } else {
  }
  gr_disable_interrupts_and_pullup(dev);
  gr_set_ep0state(dev, 0);
  usb_gadget_set_state(& dev->gadget, 0);
  return;
}
}
static void gr_ep0_testmode_complete(struct usb_ep *_ep , struct usb_request *_req )
{
  struct gr_ep *ep ;
  struct gr_udc *dev ;
  u32 control ;
  struct usb_ep const *__mptr ;
  {
  __mptr = (struct usb_ep const *)_ep;
  ep = (struct gr_ep *)__mptr;
  dev = ep->dev;
  spin_lock(& dev->lock);
  control = ioread32be((void *)(& (dev->regs)->control));
  control = ((u32 )((int )dev->test_mode << 9) | control) | 256U;
  iowrite32be(control, (void *)(& (dev->regs)->control));
  spin_unlock(& dev->lock);
  return;
}
}
static void gr_ep0_dummy_complete(struct usb_ep *_ep , struct usb_request *_req )
{
  {
  return;
}
}
static int gr_ep0_respond(struct gr_udc *dev , u8 *buf , int length , void (*complete___0)(struct usb_ep * ,
                                                                                           struct usb_request * ) )
{
  u8 *reqbuf ;
  int status ;
  int i ;
  {
  reqbuf = (u8 *)(dev->ep0reqi)->req.buf;
  i = 0;
  goto ldv_33301;
  ldv_33300:
  *(reqbuf + (unsigned long )i) = *(buf + (unsigned long )i);
  i = i + 1;
  ldv_33301: ;
  if (i < length) {
    goto ldv_33300;
  } else {
  }
  (dev->ep0reqi)->req.length = (unsigned int )length;
  (dev->ep0reqi)->req.complete = complete___0;
  status = gr_queue_int((struct gr_ep *)(& dev->epi), dev->ep0reqi, 32U);
  if (status < 0) {
    dev_err((struct device const *)dev->dev, "Could not queue ep0in setup response: %d\n",
            status);
  } else {
  }
  return (status);
}
}
__inline static int gr_ep0_respond_u16(struct gr_udc *dev , u16 response )
{
  __le16 le_response ;
  int tmp ;
  {
  le_response = response;
  tmp = gr_ep0_respond(dev, (u8 *)(& le_response), 2, & gr_ep0_dummy_complete);
  return (tmp);
}
}
__inline static int gr_ep0_respond_empty(struct gr_udc *dev )
{
  int tmp ;
  {
  tmp = gr_ep0_respond(dev, (u8 *)0U, 0, & gr_ep0_dummy_complete);
  return (tmp);
}
}
static void gr_set_address(struct gr_udc *dev , u8 address )
{
  u32 control ;
  unsigned int tmp ;
  {
  tmp = ioread32be((void *)(& (dev->regs)->control));
  control = tmp & 4294967041U;
  control = ((u32 )((int )address << 1) & 255U) | control;
  control = control | 1U;
  iowrite32be(control, (void *)(& (dev->regs)->control));
  return;
}
}
static int gr_device_request(struct gr_udc *dev , u8 type , u8 request , u16 value ,
                             u16 index )
{
  u16 response ;
  u8 test ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  switch ((int )request) {
  case 5:
  descriptor.modname = "gr_udc";
  descriptor.function = "gr_device_request";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8654/dscv_tempdir/dscv/ri/32_7a/drivers/usb/gadget/udc/gr_udc.c";
  descriptor.format = "STATUS: address %d\n";
  descriptor.lineno = 915U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "STATUS: address %d\n",
                      (int )value & 255);
  } else {
  }
  gr_set_address(dev, (int )((u8 )value));
  if ((unsigned int )value != 0U) {
    usb_gadget_set_state(& dev->gadget, 6);
  } else {
    usb_gadget_set_state(& dev->gadget, 5);
  }
  tmp___0 = gr_ep0_respond_empty(dev);
  return (tmp___0);
  case 0:
  response = (unsigned int )*((unsigned char *)dev + 6252UL) != 0U ? 3U : 1U;
  tmp___1 = gr_ep0_respond_u16(dev, (int )response);
  return (tmp___1);
  case 3: ;
  switch ((int )value) {
  case 1:
  dev->remote_wakeup = 1U;
  tmp___2 = gr_ep0_respond_empty(dev);
  return (tmp___2);
  case 2:
  test = (u8 )((int )index >> 8);
  if ((unsigned int )test != 0U && (unsigned int )test <= 4U) {
    dev->test_mode = test;
    tmp___3 = gr_ep0_respond(dev, (u8 *)0U, 0, & gr_ep0_testmode_complete);
    return (tmp___3);
  } else {
  }
  }
  goto ldv_33332;
  case 1: ;
  switch ((int )value) {
  case 1:
  dev->remote_wakeup = 0U;
  tmp___4 = gr_ep0_respond_empty(dev);
  return (tmp___4);
  }
  goto ldv_33332;
  }
  ldv_33332: ;
  return (1);
}
}
static int gr_interface_request(struct gr_udc *dev , u8 type , u8 request , u16 value ,
                                u16 index )
{
  int tmp ;
  {
  if ((unsigned int )dev->gadget.state != 7U) {
    return (-1);
  } else {
  }
  switch ((int )request) {
  case 0:
  tmp = gr_ep0_respond_u16(dev, 0);
  return (tmp);
  case 3: ;
  case 1: ;
  goto ldv_33345;
  }
  ldv_33345: ;
  return (1);
}
}
static int gr_endpoint_request(struct gr_udc *dev , u8 type , u8 request , u16 value ,
                               u16 index )
{
  struct gr_ep *ep ;
  int status ;
  int halted ;
  u8 epnum ;
  u8 is_in ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  epnum = (unsigned int )((u8 )index) & 15U;
  is_in = (unsigned int )((u8 )index) & 128U;
  if (((unsigned int )is_in != 0U && (unsigned int )epnum >= dev->nepi) || ((unsigned int )is_in == 0U && (unsigned int )epnum >= dev->nepo)) {
    return (-1);
  } else {
  }
  if ((unsigned int )dev->gadget.state != 7U && (unsigned int )epnum != 0U) {
    return (-1);
  } else {
  }
  ep = (unsigned int )is_in != 0U ? (struct gr_ep *)(& dev->epi) + (unsigned long )epnum : (struct gr_ep *)(& dev->epo) + (unsigned long )epnum;
  switch ((int )request) {
  case 0:
  tmp = ioread32be((void *)(& (ep->regs)->epctrl));
  halted = (int )tmp & 4;
  tmp___0 = gr_ep0_respond_u16(dev, halted != 0);
  return (tmp___0);
  case 3: ;
  switch ((int )value) {
  case 0:
  status = gr_ep_halt_wedge(ep, 1, 0, 1);
  if (status >= 0) {
    status = gr_ep0_respond_empty(dev);
  } else {
  }
  return (status);
  }
  goto ldv_33361;
  case 1: ;
  switch ((int )value) {
  case 0: ;
  if ((unsigned int )*((unsigned char *)ep + 89UL) != 0U) {
    return (-1);
  } else {
  }
  status = gr_ep_halt_wedge(ep, 0, 0, 1);
  if (status >= 0) {
    status = gr_ep0_respond_empty(dev);
  } else {
  }
  return (status);
  }
  goto ldv_33361;
  }
  ldv_33361: ;
  return (1);
}
}
static void gr_ep0out_requeue(struct gr_udc *dev )
{
  int ret ;
  int tmp ;
  {
  tmp = gr_queue_int((struct gr_ep *)(& dev->epo), dev->ep0reqo, 32U);
  ret = tmp;
  if (ret != 0) {
    dev_err((struct device const *)dev->dev, "Could not queue ep0out setup request: %d\n",
            ret);
  } else {
  }
  return;
}
}
static void gr_ep0_setup(struct gr_udc *dev , struct gr_request *req )
{
  union __anonunion_u_258 u ;
  u8 type ;
  u8 request ;
  u16 value ;
  u16 index ;
  u16 length ;
  int i ;
  int status ;
  struct _ddebug descriptor ;
  char const *tmp ;
  long tmp___0 ;
  char const *tmp___1 ;
  struct _ddebug descriptor___0 ;
  char const *tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___1 ;
  long tmp___5 ;
  struct _ddebug descriptor___2 ;
  long tmp___6 ;
  {
  if ((unsigned int )dev->ep0state == 6U) {
    gr_set_ep0state(dev, 1);
    if (req->req.actual == 0U) {
      goto out;
    } else {
    }
  } else {
  }
  if ((unsigned int )dev->ep0state == 4U) {
    gr_set_ep0state(dev, 1);
    if (req->req.actual != 0U) {
      descriptor.modname = "gr_udc";
      descriptor.function = "gr_ep0_setup";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8654/dscv_tempdir/dscv/ri/32_7a/drivers/usb/gadget/udc/gr_udc.c";
      descriptor.format = "Unexpected setup packet at state %s\n";
      descriptor.lineno = 1091U;
      descriptor.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        tmp = gr_ep0state_string(4);
        __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "Unexpected setup packet at state %s\n",
                          tmp);
      } else {
      }
    } else {
      goto out;
    }
  } else
  if ((unsigned int )dev->ep0state != 1U) {
    tmp___1 = gr_ep0state_string(dev->ep0state);
    _dev_info((struct device const *)dev->dev, "Unexpected ep0out request at state %s - stalling\n",
              tmp___1);
    gr_control_stall(dev);
    gr_set_ep0state(dev, 1);
    goto out;
  } else
  if (req->req.actual == 0U) {
    descriptor___0.modname = "gr_udc";
    descriptor___0.function = "gr_ep0_setup";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8654/dscv_tempdir/dscv/ri/32_7a/drivers/usb/gadget/udc/gr_udc.c";
    descriptor___0.format = "Unexpected ZLP at state %s\n";
    descriptor___0.lineno = 1103U;
    descriptor___0.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      tmp___2 = gr_ep0state_string(dev->ep0state);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev->dev, "Unexpected ZLP at state %s\n",
                        tmp___2);
    } else {
    }
    goto out;
  } else {
  }
  i = 0;
  goto ldv_33389;
  ldv_33388:
  u.raw[i] = *((u8 *)req->req.buf + (unsigned long )i);
  i = i + 1;
  ldv_33389: ;
  if ((unsigned int )i < req->req.actual) {
    goto ldv_33388;
  } else {
  }
  type = u.ctrl.bRequestType;
  request = u.ctrl.bRequest;
  value = u.ctrl.wValue;
  index = u.ctrl.wIndex;
  length = u.ctrl.wLength;
  gr_dbgprint_devreq(dev, (int )type, (int )request, (int )value, (int )index, (int )length);
  if ((unsigned int )length != 0U) {
    if ((int )((signed char )type) < 0) {
      gr_set_ep0state(dev, 2);
    } else {
      gr_set_ep0state(dev, 3);
    }
  } else {
  }
  status = 1;
  if (((int )type & 96) == 0) {
    switch ((int )type & 31) {
    case 0:
    status = gr_device_request(dev, (int )type, (int )request, (int )value, (int )index);
    goto ldv_33392;
    case 2:
    status = gr_endpoint_request(dev, (int )type, (int )request, (int )value, (int )index);
    goto ldv_33392;
    case 1:
    status = gr_interface_request(dev, (int )type, (int )request, (int )value, (int )index);
    goto ldv_33392;
    }
    ldv_33392: ;
  } else {
  }
  if (status > 0) {
    spin_unlock(& dev->lock);
    status = (*((dev->driver)->setup))(& dev->gadget, (struct usb_ctrlrequest const *)(& u.ctrl));
    spin_lock(& dev->lock);
  } else {
  }
  tmp___4 = ldv__builtin_expect(status < 0, 0L);
  if (tmp___4 != 0L) {
    gr_control_stall(dev);
  } else {
  }
  if (((int )type & 96) == 0 && (unsigned int )request == 9U) {
    if ((unsigned int )value == 0U) {
      descriptor___1.modname = "gr_udc";
      descriptor___1.function = "gr_ep0_setup";
      descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8654/dscv_tempdir/dscv/ri/32_7a/drivers/usb/gadget/udc/gr_udc.c";
      descriptor___1.format = "STATUS: deconfigured\n";
      descriptor___1.lineno = 1163U;
      descriptor___1.flags = 0U;
      tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___5 != 0L) {
        __dynamic_dev_dbg(& descriptor___1, (struct device const *)dev->dev, "STATUS: deconfigured\n");
      } else {
      }
      usb_gadget_set_state(& dev->gadget, 6);
    } else
    if (status >= 0) {
      descriptor___2.modname = "gr_udc";
      descriptor___2.function = "gr_ep0_setup";
      descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8654/dscv_tempdir/dscv/ri/32_7a/drivers/usb/gadget/udc/gr_udc.c";
      descriptor___2.format = "STATUS: configured: %d\n";
      descriptor___2.lineno = 1167U;
      descriptor___2.flags = 0U;
      tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      if (tmp___6 != 0L) {
        __dynamic_dev_dbg(& descriptor___2, (struct device const *)dev->dev, "STATUS: configured: %d\n",
                          (int )value);
      } else {
      }
      usb_gadget_set_state(& dev->gadget, 7);
    } else {
    }
  } else {
  }
  if ((unsigned int )dev->ep0state == 3U) {
    gr_set_ep0state(dev, 5);
  } else
  if ((unsigned int )dev->ep0state == 2U) {
    gr_set_ep0state(dev, 4);
  } else {
    gr_set_ep0state(dev, 1);
  }
  out:
  gr_ep0out_requeue(dev);
  return;
}
}
static void gr_vbus_connected(struct gr_udc *dev , u32 status )
{
  u32 control ;
  {
  dev->gadget.speed = ((unsigned long )status & 16384UL) != 0UL ? 2 : 3;
  usb_gadget_set_state(& dev->gadget, 2);
  control = 4026548224U;
  iowrite32be(control, (void *)(& (dev->regs)->control));
  return;
}
}
static void gr_enable_vbus_detect(struct gr_udc *dev )
{
  u32 status ;
  {
  dev->irq_enabled = 1U;
  __asm__ volatile ("sfence": : : "memory");
  iowrite32be(536870912U, (void *)(& (dev->regs)->control));
  status = ioread32be((void *)(& (dev->regs)->status));
  if (((unsigned long )status & 32768UL) != 0UL) {
    gr_vbus_connected(dev, status);
  } else {
  }
  return;
}
}
static void gr_vbus_disconnected(struct gr_udc *dev )
{
  {
  gr_stop_activity(dev);
  if ((unsigned long )dev->driver != (unsigned long )((struct usb_gadget_driver *)0) && (unsigned long )(dev->driver)->disconnect != (unsigned long )((void (*)(struct usb_gadget * ))0)) {
    spin_unlock(& dev->lock);
    (*((dev->driver)->disconnect))(& dev->gadget);
    spin_lock(& dev->lock);
  } else {
  }
  gr_enable_vbus_detect(dev);
  return;
}
}
static void gr_udc_usbreset(struct gr_udc *dev , u32 status )
{
  {
  gr_set_address(dev, 0);
  gr_set_ep0state(dev, 1);
  usb_gadget_set_state(& dev->gadget, 5);
  dev->gadget.speed = ((unsigned long )status & 16384UL) != 0UL ? 2 : 3;
  gr_ep_nuke((struct gr_ep *)(& dev->epo));
  gr_ep_nuke((struct gr_ep *)(& dev->epi));
  dev->epo[0].stopped = 0U;
  dev->epi[0].stopped = 0U;
  gr_ep0out_requeue(dev);
  return;
}
}
static int gr_handle_in_ep(struct gr_ep *ep )
{
  struct gr_request *req ;
  struct list_head const *__mptr ;
  u32 __var ;
  unsigned int tmp ;
  {
  __mptr = (struct list_head const *)ep->queue.next;
  req = (struct gr_request *)__mptr + 0xffffffffffffffa8UL;
  if ((unsigned long )req->last_desc == (unsigned long )((struct gr_dma_desc *)0)) {
    return (0);
  } else {
  }
  __var = 0U;
  if (((unsigned long )*((u32 volatile *)(& (req->last_desc)->ctrl)) & 8192UL) != 0UL) {
    return (0);
  } else {
  }
  tmp = ioread32be((void *)(& (ep->regs)->epstat));
  if (((unsigned long )tmp & 6UL) != 0UL) {
    return (0);
  } else {
  }
  gr_dma_advance(ep, 0);
  return (1);
}
}
static int gr_handle_out_ep(struct gr_ep *ep )
{
  u32 ep_dmactrl ;
  u32 ctrl ;
  u16 len ;
  struct gr_request *req ;
  struct gr_udc *dev ;
  struct list_head const *__mptr ;
  u32 __var ;
  {
  dev = ep->dev;
  __mptr = (struct list_head const *)ep->queue.next;
  req = (struct gr_request *)__mptr + 0xffffffffffffffa8UL;
  if ((unsigned long )req->curr_desc == (unsigned long )((struct gr_dma_desc *)0)) {
    return (0);
  } else {
  }
  __var = 0U;
  ctrl = *((u32 volatile *)(& (req->curr_desc)->ctrl));
  if (((unsigned long )ctrl & 8192UL) != 0UL) {
    return (0);
  } else {
  }
  len = (unsigned int )((u16 )ctrl) & 8191U;
  req->req.actual = req->req.actual + (unsigned int )len;
  if (((unsigned long )ctrl & 131072UL) != 0UL) {
    req->setup = 1U;
  } else {
  }
  if ((int )ep->ep.maxpacket > (int )len || req->req.actual >= req->req.length) {
    if ((unsigned long )((struct gr_ep *)(& dev->epo)) == (unsigned long )ep && (unsigned int )dev->ep0state == 5U) {
      gr_ep0_respond_empty(dev);
      gr_set_ep0state(dev, 1);
    } else {
    }
    gr_dma_advance(ep, 0);
  } else {
    req->curr_desc = (req->curr_desc)->next_desc;
    (req->curr_desc)->ctrl = (req->curr_desc)->ctrl | 8192U;
    ep_dmactrl = ioread32be((void *)(& (ep->regs)->__annonCompField78.__annonCompField77.dmactrl));
    iowrite32be(ep_dmactrl | 1U, (void *)(& (ep->regs)->__annonCompField78.__annonCompField77.dmactrl));
  }
  return (1);
}
}
static int gr_handle_state_changes(struct gr_udc *dev )
{
  u32 status ;
  unsigned int tmp ;
  int handled ;
  int powstate ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  char const *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___2 ;
  char const *tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___3 ;
  long tmp___6 ;
  struct _ddebug descriptor___4 ;
  long tmp___7 ;
  {
  tmp = ioread32be((void *)(& (dev->regs)->status));
  status = tmp;
  handled = 0;
  powstate = (unsigned int )dev->gadget.state != 0U && (unsigned int )dev->gadget.state != 1U;
  if (powstate == 0 && ((unsigned long )status & 32768UL) != 0UL) {
    descriptor.modname = "gr_udc";
    descriptor.function = "gr_handle_state_changes";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8654/dscv_tempdir/dscv/ri/32_7a/drivers/usb/gadget/udc/gr_udc.c";
    descriptor.format = "STATUS: vbus valid detected\n";
    descriptor.lineno = 1345U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "STATUS: vbus valid detected\n");
    } else {
    }
    gr_vbus_connected(dev, status);
    handled = 1;
  } else {
  }
  if (powstate != 0 && ((unsigned long )status & 32768UL) == 0UL) {
    descriptor___0.modname = "gr_udc";
    descriptor___0.function = "gr_handle_state_changes";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8654/dscv_tempdir/dscv/ri/32_7a/drivers/usb/gadget/udc/gr_udc.c";
    descriptor___0.format = "STATUS: vbus invalid detected\n";
    descriptor___0.lineno = 1352U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev->dev, "STATUS: vbus invalid detected\n");
    } else {
    }
    gr_vbus_disconnected(dev);
    handled = 1;
  } else {
  }
  if (((unsigned long )status & 65536UL) != 0UL) {
    descriptor___1.modname = "gr_udc";
    descriptor___1.function = "gr_handle_state_changes";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8654/dscv_tempdir/dscv/ri/32_7a/drivers/usb/gadget/udc/gr_udc.c";
    descriptor___1.format = "STATUS: USB reset - speed is %s\n";
    descriptor___1.lineno = 1360U;
    descriptor___1.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      tmp___2 = usb_speed_string(((unsigned long )status & 16384UL) != 0UL ? 2 : 3);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)dev->dev, "STATUS: USB reset - speed is %s\n",
                        tmp___2);
    } else {
    }
    iowrite32be(65536U, (void *)(& (dev->regs)->status));
    gr_udc_usbreset(dev, status);
    handled = 1;
  } else {
  }
  if ((unsigned int )dev->gadget.speed != (((unsigned long )status & 16384UL) != 0UL ? 2U : 3U)) {
    descriptor___2.modname = "gr_udc";
    descriptor___2.function = "gr_handle_state_changes";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8654/dscv_tempdir/dscv/ri/32_7a/drivers/usb/gadget/udc/gr_udc.c";
    descriptor___2.format = "STATUS: USB Speed change to %s\n";
    descriptor___2.lineno = 1369U;
    descriptor___2.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      tmp___4 = usb_speed_string(((unsigned long )status & 16384UL) != 0UL ? 2 : 3);
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)dev->dev, "STATUS: USB Speed change to %s\n",
                        tmp___4);
    } else {
    }
    dev->gadget.speed = ((unsigned long )status & 16384UL) != 0UL ? 2 : 3;
    handled = 1;
  } else {
  }
  if ((unsigned int )dev->ep0state != 7U && ((unsigned long )status & 131072UL) == 0UL) {
    descriptor___3.modname = "gr_udc";
    descriptor___3.function = "gr_handle_state_changes";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8654/dscv_tempdir/dscv/ri/32_7a/drivers/usb/gadget/udc/gr_udc.c";
    descriptor___3.format = "STATUS: USB suspend\n";
    descriptor___3.lineno = 1376U;
    descriptor___3.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)dev->dev, "STATUS: USB suspend\n");
    } else {
    }
    gr_set_ep0state(dev, 7);
    dev->suspended_from = dev->gadget.state;
    usb_gadget_set_state(& dev->gadget, 8);
    if (((unsigned int )dev->gadget.speed != 0U && (unsigned long )dev->driver != (unsigned long )((struct usb_gadget_driver *)0)) && (unsigned long )(dev->driver)->suspend != (unsigned long )((void (*)(struct usb_gadget * ))0)) {
      spin_unlock(& dev->lock);
      (*((dev->driver)->suspend))(& dev->gadget);
      spin_lock(& dev->lock);
    } else {
    }
    handled = 1;
  } else {
  }
  if ((unsigned int )dev->ep0state == 7U && ((unsigned long )status & 131072UL) != 0UL) {
    descriptor___4.modname = "gr_udc";
    descriptor___4.function = "gr_handle_state_changes";
    descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8654/dscv_tempdir/dscv/ri/32_7a/drivers/usb/gadget/udc/gr_udc.c";
    descriptor___4.format = "STATUS: USB resume\n";
    descriptor___4.lineno = 1394U;
    descriptor___4.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      __dynamic_dev_dbg(& descriptor___4, (struct device const *)dev->dev, "STATUS: USB resume\n");
    } else {
    }
    if ((unsigned int )dev->suspended_from == 2U) {
      gr_set_ep0state(dev, 0);
    } else {
      gr_set_ep0state(dev, 1);
    }
    usb_gadget_set_state(& dev->gadget, dev->suspended_from);
    if (((unsigned int )dev->gadget.speed != 0U && (unsigned long )dev->driver != (unsigned long )((struct usb_gadget_driver *)0)) && (unsigned long )(dev->driver)->resume != (unsigned long )((void (*)(struct usb_gadget * ))0)) {
      spin_unlock(& dev->lock);
      (*((dev->driver)->resume))(& dev->gadget);
      spin_lock(& dev->lock);
    } else {
    }
    handled = 1;
  } else {
  }
  return (handled);
}
}
static irqreturn_t gr_irq_handler(int irq , void *_dev )
{
  struct gr_udc *dev ;
  struct gr_ep *ep ;
  int handled ;
  int i ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  struct list_head const *__mptr ;
  unsigned int tmp___5 ;
  struct list_head const *__mptr___0 ;
  {
  dev = (struct gr_udc *)_dev;
  handled = 0;
  tmp = spinlock_check(& dev->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned int )*((unsigned char *)dev + 6252UL) == 0U) {
    goto out;
  } else {
  }
  i = 0;
  goto ldv_33460;
  ldv_33459:
  ep = (struct gr_ep *)(& dev->epi) + (unsigned long )i;
  if ((unsigned int )*((unsigned char *)ep + 89UL) == 0U && (unsigned int )*((unsigned char *)ep + 89UL) == 0U) {
    tmp___1 = list_empty((struct list_head const *)(& ep->queue));
    if (tmp___1 == 0) {
      tmp___0 = gr_handle_in_ep(ep);
      handled = tmp___0 != 0 || handled != 0;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_33460: ;
  if ((unsigned int )i < dev->nepi) {
    goto ldv_33459;
  } else {
  }
  i = 0;
  goto ldv_33463;
  ldv_33462:
  ep = (struct gr_ep *)(& dev->epo) + (unsigned long )i;
  if ((unsigned int )*((unsigned char *)ep + 89UL) == 0U && (unsigned int )*((unsigned char *)ep + 89UL) == 0U) {
    tmp___3 = list_empty((struct list_head const *)(& ep->queue));
    if (tmp___3 == 0) {
      tmp___2 = gr_handle_out_ep(ep);
      handled = tmp___2 != 0 || handled != 0;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_33463: ;
  if ((unsigned int )i < dev->nepo) {
    goto ldv_33462;
  } else {
  }
  tmp___4 = gr_handle_state_changes(dev);
  handled = tmp___4 != 0 || handled != 0;
  if (handled == 0) {
    __mptr = (struct list_head const *)dev->ep_list.next;
    ep = (struct gr_ep *)__mptr + 0xffffffffffffff90UL;
    goto ldv_33470;
    ldv_33469:
    tmp___5 = ioread32be((void *)(& (ep->regs)->__annonCompField78.__annonCompField77.dmactrl));
    if (((unsigned long )tmp___5 & 1024UL) != 0UL) {
      dev_err((struct device const *)dev->dev, "AMBA Error occurred for %s\n", ep->ep.name);
      handled = 1;
    } else {
    }
    __mptr___0 = (struct list_head const *)ep->ep_list.next;
    ep = (struct gr_ep *)__mptr___0 + 0xffffffffffffff90UL;
    ldv_33470: ;
    if ((unsigned long )(& ep->ep_list) != (unsigned long )(& dev->ep_list)) {
      goto ldv_33469;
    } else {
    }
  } else {
  }
  out:
  spin_unlock_irqrestore(& dev->lock, flags);
  return (handled != 0);
}
}
static irqreturn_t gr_irq(int irq , void *_dev )
{
  struct gr_udc *dev ;
  {
  dev = (struct gr_udc *)_dev;
  if ((unsigned int )*((unsigned char *)dev + 6252UL) == 0U) {
    return (0);
  } else {
  }
  return (2);
}
}
static int gr_ep_enable(struct usb_ep *_ep , struct usb_endpoint_descriptor const *desc )
{
  struct gr_udc *dev ;
  struct gr_ep *ep ;
  u8 mode ;
  u8 nt ;
  u16 max ;
  u16 buffer_size ;
  u32 epctrl ;
  struct usb_ep const *__mptr ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  struct _ddebug descriptor ;
  long tmp___6 ;
  {
  buffer_size = 0U;
  __mptr = (struct usb_ep const *)_ep;
  ep = (struct gr_ep *)__mptr;
  if (((unsigned long )_ep == (unsigned long )((struct usb_ep *)0) || (unsigned long )desc == (unsigned long )((struct usb_endpoint_descriptor const *)0)) || (unsigned int )((unsigned char )desc->bDescriptorType) != 5U) {
    return (-22);
  } else {
  }
  dev = ep->dev;
  if ((unsigned long )((struct gr_ep *)(& dev->epo)) == (unsigned long )ep || (unsigned long )((struct gr_ep *)(& dev->epi)) == (unsigned long )ep) {
    return (-22);
  } else {
  }
  if ((unsigned long )dev->driver == (unsigned long )((struct usb_gadget_driver *)0) || (unsigned int )dev->gadget.speed == 0U) {
    return (-108);
  } else {
  }
  epctrl = ioread32be((void *)(& (ep->regs)->epctrl));
  if ((int )epctrl & 1) {
    return (-16);
  } else {
  }
  tmp = usb_endpoint_dir_in(desc);
  if (((unsigned int )*((unsigned char *)ep + 89UL) == 0U) ^ (tmp == 0)) {
    return (-22);
  } else {
  }
  if (((unsigned int )*((unsigned char *)ep + 89UL) == 0U && (unsigned int )ep->num >= dev->nepo) || ((unsigned int )*((unsigned char *)ep + 89UL) != 0U && (unsigned int )ep->num >= dev->nepi)) {
    return (-22);
  } else {
  }
  tmp___3 = usb_endpoint_xfer_control(desc);
  if (tmp___3 != 0) {
    mode = 0U;
  } else {
    tmp___2 = usb_endpoint_xfer_isoc(desc);
    if (tmp___2 != 0) {
      mode = 1U;
    } else {
      tmp___1 = usb_endpoint_xfer_bulk(desc);
      if (tmp___1 != 0) {
        mode = 2U;
      } else {
        tmp___0 = usb_endpoint_xfer_int(desc);
        if (tmp___0 != 0) {
          mode = 3U;
        } else {
          dev_err((struct device const *)dev->dev, "Unknown transfer type for %s\n",
                  ep->ep.name);
          return (-22);
        }
      }
    }
  }
  tmp___4 = usb_endpoint_maxp(desc);
  max = (unsigned int )((u16 )tmp___4) & 2047U;
  tmp___5 = usb_endpoint_maxp(desc);
  nt = (unsigned int )((u8 )(tmp___5 >> 11)) & 3U;
  buffer_size = (unsigned int )((u16 )(epctrl >> 21)) * 8U;
  if ((unsigned int )nt != 0U && ((unsigned int )mode == 0U || (unsigned int )mode == 2U)) {
    dev_err((struct device const *)dev->dev, "%s mode: multiple trans./microframe not valid\n",
            (unsigned int )mode == 2U ? (char *)"Bulk" : (char *)"Control");
    return (-22);
  } else
  if ((unsigned int )nt == 3U) {
    dev_err((struct device const *)dev->dev, "Invalid value 0x3 for additional trans./microframe\n");
    return (-22);
  } else
  if (((int )nt + 1) * (int )max > (int )buffer_size) {
    dev_err((struct device const *)dev->dev, "Hw buffer size %d < max payload %d * %d\n",
            (int )buffer_size, (int )nt + 1, (int )max);
    return (-22);
  } else
  if ((unsigned int )max == 0U) {
    dev_err((struct device const *)dev->dev, "Max payload cannot be set to 0\n");
    return (-22);
  } else
  if ((int )ep->ep.maxpacket_limit < (int )max) {
    dev_err((struct device const *)dev->dev, "Requested max payload %d > limit %d\n",
            (int )max, (int )ep->ep.maxpacket_limit);
    return (-22);
  } else {
  }
  spin_lock(& (ep->dev)->lock);
  if ((unsigned int )*((unsigned char *)ep + 89UL) == 0U) {
    spin_unlock(& (ep->dev)->lock);
    return (-16);
  } else {
  }
  ep->stopped = 0U;
  ep->wedged = 0U;
  ep->ep.desc = desc;
  ep->ep.maxpacket = max;
  ep->dma_start = 0U;
  if ((unsigned int )nt != 0U) {
    ep->bytes_per_buffer = (int )((u16 )((int )nt + 1)) * (int )max;
  } else
  if ((unsigned int )*((unsigned char *)ep + 89UL) != 0U) {
    ep->bytes_per_buffer = (int )((u16 )((int )buffer_size / (int )max)) * (int )max;
  } else {
    ep->bytes_per_buffer = max;
  }
  epctrl = (u32 )(((((int )max << 7) | ((int )nt << 5)) | ((int )mode << 3)) | 1);
  if ((unsigned int )*((unsigned char *)ep + 89UL) != 0U) {
    epctrl = epctrl | 1048576U;
  } else {
  }
  iowrite32be(epctrl, (void *)(& (ep->regs)->epctrl));
  iowrite32be(6U, (void *)(& (ep->regs)->__annonCompField78.__annonCompField77.dmactrl));
  spin_unlock(& (ep->dev)->lock);
  descriptor.modname = "gr_udc";
  descriptor.function = "gr_ep_enable";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8654/dscv_tempdir/dscv/ri/32_7a/drivers/usb/gadget/udc/gr_udc.c";
  descriptor.format = "EP: %s enabled - %s with %d bytes/buffer\n";
  descriptor.lineno = 1615U;
  descriptor.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(ep->dev)->dev, "EP: %s enabled - %s with %d bytes/buffer\n",
                      ep->ep.name, gr_modestring[(int )mode], (int )ep->bytes_per_buffer);
  } else {
  }
  return (0);
}
}
static int gr_ep_disable(struct usb_ep *_ep )
{
  struct gr_ep *ep ;
  struct gr_udc *dev ;
  unsigned long flags ;
  struct usb_ep const *__mptr ;
  struct _ddebug descriptor ;
  long tmp ;
  raw_spinlock_t *tmp___0 ;
  {
  __mptr = (struct usb_ep const *)_ep;
  ep = (struct gr_ep *)__mptr;
  if ((unsigned long )_ep == (unsigned long )((struct usb_ep *)0) || (unsigned long )ep->ep.desc == (unsigned long )((struct usb_endpoint_descriptor const *)0)) {
    return (-19);
  } else {
  }
  dev = ep->dev;
  if ((unsigned long )((struct gr_ep *)(& dev->epo)) == (unsigned long )ep || (unsigned long )((struct gr_ep *)(& dev->epi)) == (unsigned long )ep) {
    return (-22);
  } else {
  }
  if ((unsigned int )dev->ep0state == 7U) {
    return (-16);
  } else {
  }
  descriptor.modname = "gr_udc";
  descriptor.function = "gr_ep_disable";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8654/dscv_tempdir/dscv/ri/32_7a/drivers/usb/gadget/udc/gr_udc.c";
  descriptor.format = "EP: disable %s\n";
  descriptor.lineno = 1639U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(ep->dev)->dev, "EP: disable %s\n",
                      ep->ep.name);
  } else {
  }
  tmp___0 = spinlock_check(& dev->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  gr_ep_nuke(ep);
  gr_ep_reset(ep);
  ep->ep.desc = (struct usb_endpoint_descriptor const *)0;
  spin_unlock_irqrestore(& dev->lock, flags);
  return (0);
}
}
static void gr_free_request(struct usb_ep *_ep , struct usb_request *_req )
{
  struct gr_request *req ;
  struct usb_request const *__mptr ;
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  {
  if ((unsigned long )_ep == (unsigned long )((struct usb_ep *)0) || (unsigned long )_req == (unsigned long )((struct usb_request *)0)) {
    return;
  } else {
  }
  __mptr = (struct usb_request const *)_req;
  req = (struct gr_request *)__mptr;
  tmp = list_empty((struct list_head const *)(& req->queue));
  __ret_warn_on = tmp == 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8654/dscv_tempdir/dscv/ri/32_7a/drivers/usb/gadget/udc/gr_udc.c",
                      1666, "request not dequeued properly before freeing\n");
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  kfree((void const *)req);
  return;
}
}
static int gr_queue_ext(struct usb_ep *_ep , struct usb_request *_req , gfp_t gfp_flags )
{
  struct gr_ep *ep ;
  struct gr_request *req ;
  struct gr_udc *dev ;
  int ret ;
  long tmp ;
  struct usb_ep const *__mptr ;
  struct usb_request const *__mptr___0 ;
  {
  tmp = ldv__builtin_expect((long )((unsigned long )_ep == (unsigned long )((struct usb_ep *)0) || (unsigned long )_req == (unsigned long )((struct usb_request *)0)),
                         0L);
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  __mptr = (struct usb_ep const *)_ep;
  ep = (struct gr_ep *)__mptr;
  __mptr___0 = (struct usb_request const *)_req;
  req = (struct gr_request *)__mptr___0;
  dev = ep->dev;
  spin_lock(& (ep->dev)->lock);
  if ((unsigned long )((struct gr_ep *)(& dev->epi)) == (unsigned long )ep && (unsigned int )dev->ep0state == 3U) {
    ep = (struct gr_ep *)(& dev->epo);
    ep->ep.driver_data = dev->epi[0].ep.driver_data;
  } else {
  }
  if ((unsigned int )*((unsigned char *)ep + 89UL) != 0U) {
    gr_dbgprint_request("EXTERN", ep, req);
  } else {
  }
  ret = gr_queue(ep, req, 32U);
  spin_unlock(& (ep->dev)->lock);
  return (ret);
}
}
static int gr_dequeue(struct usb_ep *_ep , struct usb_request *_req )
{
  struct gr_request *req ;
  struct gr_ep *ep ;
  struct gr_udc *dev ;
  int ret ;
  unsigned long flags ;
  struct usb_ep const *__mptr ;
  raw_spinlock_t *tmp ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int tmp___0 ;
  struct list_head const *__mptr___2 ;
  {
  ret = 0;
  __mptr = (struct usb_ep const *)_ep;
  ep = (struct gr_ep *)__mptr;
  if (((unsigned long )_ep == (unsigned long )((struct usb_ep *)0) || (unsigned long )_req == (unsigned long )((struct usb_request *)0)) || ((unsigned long )ep->ep.desc == (unsigned long )((struct usb_endpoint_descriptor const *)0) && (unsigned int )ep->num != 0U)) {
    return (-22);
  } else {
  }
  dev = ep->dev;
  if ((unsigned long )dev->driver == (unsigned long )((struct usb_gadget_driver *)0)) {
    return (-108);
  } else {
  }
  if ((unsigned int )dev->ep0state == 7U) {
    return (-16);
  } else {
  }
  tmp = spinlock_check(& dev->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  __mptr___0 = (struct list_head const *)ep->queue.next;
  req = (struct gr_request *)__mptr___0 + 0xffffffffffffffa8UL;
  goto ldv_33547;
  ldv_33546: ;
  if ((unsigned long )(& req->req) == (unsigned long )_req) {
    goto ldv_33545;
  } else {
  }
  __mptr___1 = (struct list_head const *)req->queue.next;
  req = (struct gr_request *)__mptr___1 + 0xffffffffffffffa8UL;
  ldv_33547: ;
  if ((unsigned long )(& req->queue) != (unsigned long )(& ep->queue)) {
    goto ldv_33546;
  } else {
  }
  ldv_33545: ;
  if ((unsigned long )(& req->req) != (unsigned long )_req) {
    ret = -22;
    goto out;
  } else {
  }
  __mptr___2 = (struct list_head const *)ep->queue.next;
  if ((unsigned long )((struct gr_request *)__mptr___2 + 0xffffffffffffffa8UL) == (unsigned long )req) {
    gr_abort_dma(ep);
    if ((unsigned int )*((unsigned char *)ep + 89UL) != 0U) {
      gr_finish_request(ep, req, -104);
    } else {
      gr_dma_advance(ep, -104);
    }
  } else {
    tmp___0 = list_empty((struct list_head const *)(& req->queue));
    if (tmp___0 == 0) {
      gr_finish_request(ep, req, -104);
    } else {
      ret = -95;
    }
  }
  out:
  spin_unlock_irqrestore(& dev->lock, flags);
  return (ret);
}
}
static int gr_set_halt_wedge(struct usb_ep *_ep , int halt___0 , int wedge )
{
  int ret ;
  struct gr_ep *ep ;
  struct usb_ep const *__mptr ;
  int tmp ;
  {
  if ((unsigned long )_ep == (unsigned long )((struct usb_ep *)0)) {
    return (-19);
  } else {
  }
  __mptr = (struct usb_ep const *)_ep;
  ep = (struct gr_ep *)__mptr;
  spin_lock(& (ep->dev)->lock);
  if (halt___0 != 0 && (unsigned int )*((unsigned char *)ep + 89UL) != 0U) {
    tmp = list_empty((struct list_head const *)(& ep->queue));
    if (tmp == 0) {
      ret = -11;
      goto out;
    } else {
    }
  } else {
  }
  ret = gr_ep_halt_wedge(ep, halt___0, wedge, 0);
  out:
  spin_unlock(& (ep->dev)->lock);
  return (ret);
}
}
static int gr_set_halt(struct usb_ep *_ep , int halt___0 )
{
  int tmp ;
  {
  tmp = gr_set_halt_wedge(_ep, halt___0, 0);
  return (tmp);
}
}
static int gr_set_wedge(struct usb_ep *_ep )
{
  int tmp ;
  {
  tmp = gr_set_halt_wedge(_ep, 1, 1);
  return (tmp);
}
}
static int gr_fifo_status(struct usb_ep *_ep )
{
  struct gr_ep *ep ;
  u32 epstat ;
  u32 bytes ;
  struct usb_ep const *__mptr ;
  {
  bytes = 0U;
  if ((unsigned long )_ep == (unsigned long )((struct usb_ep *)0)) {
    return (-19);
  } else {
  }
  __mptr = (struct usb_ep const *)_ep;
  ep = (struct gr_ep *)__mptr;
  epstat = ioread32be((void *)(& (ep->regs)->epstat));
  if (((unsigned long )epstat & 2UL) != 0UL) {
    bytes = ((epstat & 65528U) >> 3) + bytes;
  } else {
  }
  if (((unsigned long )epstat & 4UL) != 0UL) {
    bytes = ((epstat & 536805376U) >> 16) + bytes;
  } else {
  }
  return ((int )bytes);
}
}
static void gr_fifo_flush(struct usb_ep *_ep )
{
  struct gr_ep *ep ;
  u32 epctrl ;
  struct usb_ep const *__mptr ;
  {
  if ((unsigned long )_ep == (unsigned long )((struct usb_ep *)0)) {
    return;
  } else {
  }
  __mptr = (struct usb_ep const *)_ep;
  ep = (struct gr_ep *)__mptr;
  spin_lock(& (ep->dev)->lock);
  epctrl = ioread32be((void *)(& (ep->regs)->epctrl));
  epctrl = epctrl | 524288U;
  iowrite32be(epctrl, (void *)(& (ep->regs)->epctrl));
  spin_unlock(& (ep->dev)->lock);
  return;
}
}
static struct usb_ep_ops gr_ep_ops =
     {& gr_ep_enable, & gr_ep_disable, & gr_alloc_request, & gr_free_request, & gr_queue_ext,
    & gr_dequeue, & gr_set_halt, & gr_set_wedge, & gr_fifo_status, & gr_fifo_flush};
static int gr_get_frame(struct usb_gadget *_gadget )
{
  struct gr_udc *dev ;
  struct usb_gadget const *__mptr ;
  unsigned int tmp ;
  {
  if ((unsigned long )_gadget == (unsigned long )((struct usb_gadget *)0)) {
    return (-19);
  } else {
  }
  __mptr = (struct usb_gadget const *)_gadget;
  dev = (struct gr_udc *)__mptr;
  tmp = ioread32be((void *)(& (dev->regs)->status));
  return ((int )tmp & 2047);
}
}
static int gr_wakeup(struct usb_gadget *_gadget )
{
  struct gr_udc *dev ;
  struct usb_gadget const *__mptr ;
  unsigned int tmp ;
  {
  if ((unsigned long )_gadget == (unsigned long )((struct usb_gadget *)0)) {
    return (-19);
  } else {
  }
  __mptr = (struct usb_gadget const *)_gadget;
  dev = (struct gr_udc *)__mptr;
  if ((unsigned int )*((unsigned char *)dev + 6252UL) == 0U) {
    return (-22);
  } else {
  }
  spin_lock(& dev->lock);
  tmp = ioread32be((void *)(& (dev->regs)->control));
  iowrite32be(tmp | 4096U, (void *)(& (dev->regs)->control));
  spin_unlock(& dev->lock);
  return (0);
}
}
static int gr_pullup(struct usb_gadget *_gadget , int is_on )
{
  struct gr_udc *dev ;
  u32 control ;
  struct usb_gadget const *__mptr ;
  {
  if ((unsigned long )_gadget == (unsigned long )((struct usb_gadget *)0)) {
    return (-19);
  } else {
  }
  __mptr = (struct usb_gadget const *)_gadget;
  dev = (struct gr_udc *)__mptr;
  spin_lock(& dev->lock);
  control = ioread32be((void *)(& (dev->regs)->control));
  if (is_on != 0) {
    control = control | 16384U;
  } else {
    control = control & 4294950911U;
  }
  iowrite32be(control, (void *)(& (dev->regs)->control));
  spin_unlock(& dev->lock);
  return (0);
}
}
static int gr_udc_start(struct usb_gadget *gadget , struct usb_gadget_driver *driver )
{
  struct gr_udc *dev ;
  struct usb_gadget const *__mptr ;
  {
  __mptr = (struct usb_gadget const *)gadget;
  dev = (struct gr_udc *)__mptr;
  spin_lock(& dev->lock);
  driver->driver.bus = (struct bus_type *)0;
  dev->driver = driver;
  gr_enable_vbus_detect(dev);
  spin_unlock(& dev->lock);
  return (0);
}
}
static int gr_udc_stop(struct usb_gadget *gadget )
{
  struct gr_udc *dev ;
  struct usb_gadget const *__mptr ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  __mptr = (struct usb_gadget const *)gadget;
  dev = (struct gr_udc *)__mptr;
  tmp = spinlock_check(& dev->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  dev->driver = (struct usb_gadget_driver *)0;
  gr_stop_activity(dev);
  spin_unlock_irqrestore(& dev->lock, flags);
  return (0);
}
}
static struct usb_gadget_ops const gr_ops =
     {& gr_get_frame, & gr_wakeup, 0, 0, 0, & gr_pullup, 0, 0, & gr_udc_start, & gr_udc_stop};
static char const * const onames[16U] =
  { "ep0out", "ep1out", "ep2out", "ep3out",
        "ep4out", "ep5out", "ep6out", "ep7out",
        "ep8out", "ep9out", "ep10out", "ep11out",
        "ep12out", "ep13out", "ep14out", "ep15out"};
static char const * const inames[16U] =
  { "ep0in", "ep1in", "ep2in", "ep3in",
        "ep4in", "ep5in", "ep6in", "ep7in",
        "ep8in", "ep9in", "ep10in", "ep11in",
        "ep12in", "ep13in", "ep14in", "ep15in"};
static int gr_ep_init(struct gr_udc *dev , int num , int is_in , u32 maxplimit )
{
  struct gr_ep *ep ;
  struct gr_request *req ;
  struct usb_request *_req ;
  void *buf ;
  struct usb_request const *__mptr ;
  {
  if (is_in != 0) {
    ep = (struct gr_ep *)(& dev->epi) + (unsigned long )num;
    ep->ep.name = inames[num];
    ep->regs = (struct gr_epregs *)(& (dev->regs)->epi) + (unsigned long )num;
  } else {
    ep = (struct gr_ep *)(& dev->epo) + (unsigned long )num;
    ep->ep.name = onames[num];
    ep->regs = (struct gr_epregs *)(& (dev->regs)->epo) + (unsigned long )num;
  }
  gr_ep_reset(ep);
  ep->num = (unsigned char )num;
  ep->is_in = (unsigned char )is_in;
  ep->dev = dev;
  ep->ep.ops = (struct usb_ep_ops const *)(& gr_ep_ops);
  INIT_LIST_HEAD(& ep->queue);
  if (num == 0) {
    _req = gr_alloc_request(& ep->ep, 32U);
    buf = devm_kzalloc(dev->dev, 4096UL, 33U);
    if ((unsigned long )_req == (unsigned long )((struct usb_request *)0) || (unsigned long )buf == (unsigned long )((void *)0)) {
      return (-12);
    } else {
    }
    __mptr = (struct usb_request const *)_req;
    req = (struct gr_request *)__mptr;
    req->req.buf = buf;
    req->req.length = 64U;
    if (is_in != 0) {
      dev->ep0reqi = req;
    } else {
      dev->ep0reqo = req;
    }
    usb_ep_set_maxpacket_limit(& ep->ep, 64U);
    ep->bytes_per_buffer = 64U;
  } else {
    usb_ep_set_maxpacket_limit(& ep->ep, (unsigned int )((unsigned short )maxplimit));
    list_add_tail(& ep->ep.ep_list, & dev->gadget.ep_list);
  }
  list_add_tail(& ep->ep_list, & dev->ep_list);
  ep->tailbuf = dma_alloc_attrs(dev->dev, (size_t )ep->ep.maxpacket_limit, & ep->tailbuf_paddr,
                                32U, (struct dma_attrs *)0);
  if ((unsigned long )ep->tailbuf == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
static int gr_udc_init(struct gr_udc *dev )
{
  struct device_node *np ;
  u32 epctrl_val ;
  u32 dmactrl_val ;
  int i ;
  int ret ;
  u32 bufsize ;
  int tmp ;
  int tmp___0 ;
  {
  np = (dev->dev)->of_node;
  ret = 0;
  gr_set_address(dev, 0);
  INIT_LIST_HEAD(& dev->gadget.ep_list);
  dev->gadget.speed = 0;
  dev->gadget.ep0 = & dev->epi[0].ep;
  INIT_LIST_HEAD(& dev->ep_list);
  gr_set_ep0state(dev, 0);
  i = 0;
  goto ldv_33646;
  ldv_33645:
  tmp = of_property_read_u32_index((struct device_node const *)np, "epobufsizes",
                                   (u32 )i, & bufsize);
  if (tmp != 0) {
    bufsize = 1024U;
  } else {
  }
  ret = gr_ep_init(dev, i, 0, bufsize);
  if (ret != 0) {
    return (ret);
  } else {
  }
  i = i + 1;
  ldv_33646: ;
  if ((unsigned int )i < dev->nepo) {
    goto ldv_33645;
  } else {
  }
  i = 0;
  goto ldv_33649;
  ldv_33648:
  tmp___0 = of_property_read_u32_index((struct device_node const *)np, "epibufsizes",
                                       (u32 )i, & bufsize);
  if (tmp___0 != 0) {
    bufsize = 1024U;
  } else {
  }
  ret = gr_ep_init(dev, i, 1, bufsize);
  if (ret != 0) {
    return (ret);
  } else {
  }
  i = i + 1;
  ldv_33649: ;
  if ((unsigned int )i < dev->nepi) {
    goto ldv_33648;
  } else {
  }
  dev->remote_wakeup = 0U;
  epctrl_val = 8193U;
  dmactrl_val = 6U;
  iowrite32be(epctrl_val, (void *)(& (dev->epo[0].regs)->epctrl));
  iowrite32be(epctrl_val | 1048576U, (void *)(& (dev->epi[0].regs)->epctrl));
  iowrite32be(dmactrl_val, (void *)(& (dev->epo[0].regs)->__annonCompField78.__annonCompField77.dmactrl));
  iowrite32be(dmactrl_val, (void *)(& (dev->epi[0].regs)->__annonCompField78.__annonCompField77.dmactrl));
  return (0);
}
}
static void gr_ep_remove(struct gr_udc *dev , int num , int is_in )
{
  struct gr_ep *ep ;
  {
  if (is_in != 0) {
    ep = (struct gr_ep *)(& dev->epi) + (unsigned long )num;
  } else {
    ep = (struct gr_ep *)(& dev->epo) + (unsigned long )num;
  }
  if ((unsigned long )ep->tailbuf != (unsigned long )((void *)0)) {
    dma_free_attrs(dev->dev, (size_t )ep->ep.maxpacket_limit, ep->tailbuf, ep->tailbuf_paddr,
                   (struct dma_attrs *)0);
  } else {
  }
  return;
}
}
static int gr_remove(struct platform_device *pdev )
{
  struct gr_udc *dev ;
  void *tmp ;
  int i ;
  {
  tmp = platform_get_drvdata((struct platform_device const *)pdev);
  dev = (struct gr_udc *)tmp;
  if ((unsigned int )*((unsigned char *)dev + 6252UL) != 0U) {
    usb_del_gadget_udc(& dev->gadget);
  } else {
  }
  if ((unsigned long )dev->driver != (unsigned long )((struct usb_gadget_driver *)0)) {
    return (-16);
  } else {
  }
  gr_dfs_delete(dev);
  if ((unsigned long )dev->desc_pool != (unsigned long )((struct dma_pool *)0)) {
    dma_pool_destroy(dev->desc_pool);
  } else {
  }
  platform_set_drvdata(pdev, (void *)0);
  gr_free_request(& dev->epi[0].ep, & (dev->ep0reqi)->req);
  gr_free_request(& dev->epo[0].ep, & (dev->ep0reqo)->req);
  i = 0;
  goto ldv_33663;
  ldv_33662:
  gr_ep_remove(dev, i, 0);
  i = i + 1;
  ldv_33663: ;
  if ((unsigned int )i < dev->nepo) {
    goto ldv_33662;
  } else {
  }
  i = 0;
  goto ldv_33666;
  ldv_33665:
  gr_ep_remove(dev, i, 1);
  i = i + 1;
  ldv_33666: ;
  if ((unsigned int )i < dev->nepi) {
    goto ldv_33665;
  } else {
  }
  return (0);
}
}
static int gr_request_irq(struct gr_udc *dev , int irq )
{
  int tmp ;
  {
  tmp = ldv_devm_request_threaded_irq_13(dev->dev, (unsigned int )irq, & gr_irq, & gr_irq_handler,
                                         128UL, (char const *)(& driver_name), (void *)dev);
  return (tmp);
}
}
static int gr_probe(struct platform_device *pdev )
{
  struct gr_udc *dev ;
  struct resource *res ;
  struct gr_regs *regs ;
  int retval ;
  u32 status ;
  void *tmp ;
  void *tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  struct lock_class_key __key ;
  {
  tmp = devm_kzalloc(& pdev->dev, 6376UL, 208U);
  dev = (struct gr_udc *)tmp;
  if ((unsigned long )dev == (unsigned long )((struct gr_udc *)0)) {
    return (-12);
  } else {
  }
  dev->dev = & pdev->dev;
  res = platform_get_resource(pdev, 512U, 0U);
  tmp___0 = devm_ioremap_resource(dev->dev, res);
  regs = (struct gr_regs *)tmp___0;
  tmp___2 = IS_ERR((void const *)regs);
  if ((int )tmp___2) {
    tmp___1 = PTR_ERR((void const *)regs);
    return ((int )tmp___1);
  } else {
  }
  dev->irq = platform_get_irq(pdev, 0U);
  if (dev->irq <= 0) {
    dev_err((struct device const *)dev->dev, "No irq found\n");
    return (-19);
  } else {
  }
  dev->irqi = platform_get_irq(pdev, 1U);
  if (dev->irqi > 0) {
    dev->irqo = platform_get_irq(pdev, 2U);
    if (dev->irqo <= 0) {
      dev_err((struct device const *)dev->dev, "Found irqi but not irqo\n");
      return (-19);
    } else {
    }
  } else {
    dev->irqi = 0;
  }
  dev->gadget.name = (char const *)(& driver_name);
  dev->gadget.max_speed = 3;
  dev->gadget.ops = & gr_ops;
  spinlock_check(& dev->lock);
  __raw_spin_lock_init(& dev->lock.__annonCompField17.rlock, "&(&dev->lock)->rlock",
                       & __key);
  dev->regs = regs;
  platform_set_drvdata(pdev, (void *)dev);
  status = ioread32be((void *)(& (dev->regs)->status));
  dev->nepi = (status >> 28) + 1U;
  dev->nepo = ((status & 251658240U) >> 24) + 1U;
  if (((unsigned long )status & 8388608UL) == 0UL) {
    dev_err((struct device const *)dev->dev, "Slave mode cores are not supported\n");
    return (-19);
  } else {
  }
  dev->desc_pool = dma_pool_create("desc_pool", dev->dev, 24UL, 4UL, 0UL);
  if ((unsigned long )dev->desc_pool == (unsigned long )((struct dma_pool *)0)) {
    dev_err((struct device const *)dev->dev, "Could not allocate DMA pool");
    return (-12);
  } else {
  }
  spin_lock(& dev->lock);
  retval = usb_add_gadget_udc(dev->dev, & dev->gadget);
  if (retval != 0) {
    dev_err((struct device const *)dev->dev, "Could not add gadget udc");
    goto out;
  } else {
  }
  dev->added = 1U;
  retval = gr_udc_init(dev);
  if (retval != 0) {
    goto out;
  } else {
  }
  gr_dfs_create(dev);
  gr_disable_interrupts_and_pullup(dev);
  retval = gr_request_irq(dev, dev->irq);
  if (retval != 0) {
    dev_err((struct device const *)dev->dev, "Failed to request irq %d\n", dev->irq);
    goto out;
  } else {
  }
  if (dev->irqi != 0) {
    retval = gr_request_irq(dev, dev->irqi);
    if (retval != 0) {
      dev_err((struct device const *)dev->dev, "Failed to request irqi %d\n", dev->irqi);
      goto out;
    } else {
    }
    retval = gr_request_irq(dev, dev->irqo);
    if (retval != 0) {
      dev_err((struct device const *)dev->dev, "Failed to request irqo %d\n", dev->irqo);
      goto out;
    } else {
    }
  } else {
  }
  if (dev->irqi != 0) {
    _dev_info((struct device const *)dev->dev, "regs: %p, irqs %d, %d, %d\n", dev->regs,
              dev->irq, dev->irqi, dev->irqo);
  } else {
    _dev_info((struct device const *)dev->dev, "regs: %p, irq %d\n", dev->regs,
              dev->irq);
  }
  out:
  spin_unlock(& dev->lock);
  if (retval != 0) {
    gr_remove(pdev);
  } else {
  }
  return (retval);
}
}
static struct of_device_id const gr_match[3U] = { {{'G', 'A', 'I', 'S', 'L', 'E', 'R', '_', 'U', 'S', 'B', 'D', 'C', '\000'}, {(char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0},
      {(char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0}, 0},
        {{'0', '1', '_', '0', '2', '1', '\000'}, {(char)0, (char)0, (char)0, (char)0,
                                               (char)0, (char)0, (char)0, (char)0,
                                               (char)0, (char)0, (char)0, (char)0,
                                               (char)0, (char)0, (char)0, (char)0,
                                               (char)0, (char)0, (char)0, (char)0,
                                               (char)0, (char)0, (char)0, (char)0,
                                               (char)0, (char)0, (char)0, (char)0,
                                               (char)0, (char)0, (char)0, (char)0},
      {(char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0}, 0}};
struct of_device_id const __mod_of__gr_match_device_table[3U] ;
static struct platform_driver gr_driver =
     {& gr_probe, & gr_remove, 0, 0, 0, {"gr_udc", 0, 0, 0, (_Bool)0, 0, (struct of_device_id const *)(& gr_match),
                                       0, 0, 0, 0, 0, 0, 0, 0, 0}, 0, (_Bool)0};
static int gr_driver_init(void)
{
  int tmp ;
  {
  tmp = ldv___platform_driver_register_14(& gr_driver, & __this_module);
  return (tmp);
}
}
static void gr_driver_exit(void)
{
  {
  ldv_platform_driver_unregister_15(& gr_driver);
  return;
}
}
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
int ldv_retval_3 ;
int ldv_retval_2 ;
void ldv_platform_probe_3(int (*probe)(struct platform_device * ) )
{
  int err ;
  {
  err = (*probe)(gr_driver_group1);
  if (err == 0) {
    probed_3 = 1;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  return;
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
  goto ldv_33721;
  case 1:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_1, ldv_irq_line_2_1, ldv_irq_data_2_1);
  goto ldv_33721;
  case 2:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_2, ldv_irq_line_2_2, ldv_irq_data_2_2);
  goto ldv_33721;
  case 3:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_3, ldv_irq_line_2_3, ldv_irq_data_2_3);
  goto ldv_33721;
  default:
  ldv_stop();
  }
  ldv_33721: ;
  return;
}
}
void disable_suitable_irq_2(struct device *dev , int line , void *data )
{
  {
  if ((ldv_irq_2_0 != 0 && line == ldv_irq_line_2_0) && (unsigned long )dev == (unsigned long )ldv_irq_dev_2_0) {
    ldv_irq_2_0 = 0;
    return;
  } else {
  }
  if ((ldv_irq_2_1 != 0 && line == ldv_irq_line_2_1) && (unsigned long )dev == (unsigned long )ldv_irq_dev_2_1) {
    ldv_irq_2_1 = 0;
    return;
  } else {
  }
  if ((ldv_irq_2_2 != 0 && line == ldv_irq_line_2_2) && (unsigned long )dev == (unsigned long )ldv_irq_dev_2_2) {
    ldv_irq_2_2 = 0;
    return;
  } else {
  }
  if ((ldv_irq_2_3 != 0 && line == ldv_irq_line_2_3) && (unsigned long )dev == (unsigned long )ldv_irq_dev_2_3) {
    ldv_irq_2_3 = 0;
    return;
  } else {
  }
  return;
}
}
void ldv_file_operations_6(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  gr_dfs_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  gr_dfs_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void activate_suitable_irq_2(struct device *dev , int line , void *data )
{
  {
  if (ldv_irq_2_0 == 0) {
    ldv_irq_dev_2_0 = dev;
    ldv_irq_line_2_0 = line;
    ldv_irq_data_2_0 = data;
    ldv_irq_2_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_1 == 0) {
    ldv_irq_dev_2_1 = dev;
    ldv_irq_line_2_1 = line;
    ldv_irq_data_2_1 = data;
    ldv_irq_2_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_2 == 0) {
    ldv_irq_dev_2_2 = dev;
    ldv_irq_line_2_2 = line;
    ldv_irq_data_2_2 = data;
    ldv_irq_2_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_3 == 0) {
    ldv_irq_dev_2_3 = dev;
    ldv_irq_line_2_3 = line;
    ldv_irq_data_2_3 = data;
    ldv_irq_2_3 = 1;
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
  if ((unsigned long )handler == (unsigned long )(& gr_irq) && (unsigned long )thread_fn == (unsigned long )(& gr_irq_handler)) {
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_platform_driver_init_3(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1472UL);
  gr_driver_group1 = (struct platform_device *)tmp;
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
  goto ldv_33754;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_33754;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_33754;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_33754;
  default:
  ldv_stop();
  }
  ldv_33754: ;
  return;
}
}
int reg_check_2(irqreturn_t (*handler)(int , void * ) , irqreturn_t (*thread_fn)(int ,
                                                                                  void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& gr_irq) && (unsigned long )thread_fn == (unsigned long )(& gr_irq_handler)) {
    return (1);
  } else {
  }
  return (0);
}
}
void disable_suitable_irq_1(struct device *dev , int line , void *data )
{
  {
  if ((ldv_irq_1_0 != 0 && line == ldv_irq_line_1_0) && (unsigned long )dev == (unsigned long )ldv_irq_dev_1_0) {
    ldv_irq_1_0 = 0;
    return;
  } else {
  }
  if ((ldv_irq_1_1 != 0 && line == ldv_irq_line_1_1) && (unsigned long )dev == (unsigned long )ldv_irq_dev_1_1) {
    ldv_irq_1_1 = 0;
    return;
  } else {
  }
  if ((ldv_irq_1_2 != 0 && line == ldv_irq_line_1_2) && (unsigned long )dev == (unsigned long )ldv_irq_dev_1_2) {
    ldv_irq_1_2 = 0;
    return;
  } else {
  }
  if ((ldv_irq_1_3 != 0 && line == ldv_irq_line_1_3) && (unsigned long )dev == (unsigned long )ldv_irq_dev_1_3) {
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
  int tmp___0 ;
  {
  tmp = __VERIFIER_nondet_int();
  irq_retval = (irqreturn_t )tmp;
  if (state != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (state == 1) {
      LDV_IN_INTERRUPT = 2;
      irq_retval = gr_irq(line, data);
      LDV_IN_INTERRUPT = 1;
      if ((unsigned int )irq_retval == 2U) {
        state = 2;
      } else {
      }
      if ((unsigned int )irq_retval != 2U) {
        state = 1;
      } else {
      }
      return (state);
    } else {
    }
    goto ldv_33779;
    case 1: ;
    if (state == 2) {
      gr_irq_handler(line, data);
      return (state);
    } else {
    }
    goto ldv_33779;
    default:
    ldv_stop();
    }
    ldv_33779: ;
  } else {
  }
  return (state);
}
}
void activate_suitable_irq_1(struct device *dev , int line , void *data )
{
  {
  if (ldv_irq_1_0 == 0) {
    ldv_irq_dev_1_0 = dev;
    ldv_irq_line_1_0 = line;
    ldv_irq_data_1_0 = data;
    ldv_irq_1_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_1 == 0) {
    ldv_irq_dev_1_1 = dev;
    ldv_irq_line_1_1 = line;
    ldv_irq_data_1_1 = data;
    ldv_irq_1_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_2 == 0) {
    ldv_irq_dev_1_2 = dev;
    ldv_irq_line_1_2 = line;
    ldv_irq_data_1_2 = data;
    ldv_irq_1_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_3 == 0) {
    ldv_irq_dev_1_3 = dev;
    ldv_irq_line_1_3 = line;
    ldv_irq_data_1_3 = data;
    ldv_irq_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_usb_ep_ops_5(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(64UL);
  gr_ep_ops_group0 = (struct usb_ep *)tmp;
  tmp___0 = ldv_init_zalloc(88UL);
  gr_ep_ops_group1 = (struct usb_request *)tmp___0;
  return;
}
}
void ldv_initialize_usb_gadget_ops_4(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1576UL);
  gr_ops_group0 = (struct usb_gadget *)tmp;
  return;
}
}
int ldv_irq_2(int state , int line , void *data )
{
  irqreturn_t irq_retval ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = __VERIFIER_nondet_int();
  irq_retval = (irqreturn_t )tmp;
  if (state != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (state == 1) {
      LDV_IN_INTERRUPT = 2;
      irq_retval = gr_irq(line, data);
      LDV_IN_INTERRUPT = 1;
      if ((unsigned int )irq_retval == 2U) {
        state = 2;
      } else {
      }
      if ((unsigned int )irq_retval != 2U) {
        state = 1;
      } else {
      }
      return (state);
    } else {
    }
    goto ldv_33802;
    case 1: ;
    if (state == 2) {
      gr_irq_handler(line, data);
      return (state);
    } else {
    }
    goto ldv_33802;
    default:
    ldv_stop();
    }
    ldv_33802: ;
  } else {
  }
  return (state);
}
}
int main(void)
{
  loff_t ldvarg1 ;
  char *ldvarg4 ;
  void *tmp ;
  size_t ldvarg3 ;
  int ldvarg0 ;
  loff_t *ldvarg2 ;
  void *tmp___0 ;
  struct usb_gadget_driver *ldvarg5 ;
  void *tmp___1 ;
  int ldvarg6 ;
  int ldvarg8 ;
  struct usb_endpoint_descriptor *ldvarg7 ;
  void *tmp___2 ;
  gfp_t ldvarg10 ;
  gfp_t ldvarg9 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg4 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(8UL);
  ldvarg2 = (loff_t *)tmp___0;
  tmp___1 = ldv_init_zalloc(192UL);
  ldvarg5 = (struct usb_gadget_driver *)tmp___1;
  tmp___2 = ldv_init_zalloc(9UL);
  ldvarg7 = (struct usb_endpoint_descriptor *)tmp___2;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg1), 0, 8UL);
  ldv_memset((void *)(& ldvarg3), 0, 8UL);
  ldv_memset((void *)(& ldvarg0), 0, 4UL);
  ldv_memset((void *)(& ldvarg6), 0, 4UL);
  ldv_memset((void *)(& ldvarg8), 0, 4UL);
  ldv_memset((void *)(& ldvarg10), 0, 4UL);
  ldv_memset((void *)(& ldvarg9), 0, 4UL);
  ldv_state_variable_6 = 0;
  ldv_state_variable_4 = 0;
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 1;
  ldv_state_variable_5 = 0;
  ldv_33872:
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___4 = __VERIFIER_nondet_int();
    switch (tmp___4) {
    case 0: ;
    if (ldv_state_variable_6 == 2) {
      single_release(gr_dfs_fops_group1, gr_dfs_fops_group2);
      ldv_state_variable_6 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33831;
    case 1: ;
    if (ldv_state_variable_6 == 2) {
      seq_read(gr_dfs_fops_group2, ldvarg4, ldvarg3, ldvarg2);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_33831;
    case 2: ;
    if (ldv_state_variable_6 == 2) {
      seq_lseek(gr_dfs_fops_group2, ldvarg1, ldvarg0);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_33831;
    case 3: ;
    if (ldv_state_variable_6 == 1) {
      ldv_retval_0 = gr_dfs_open(gr_dfs_fops_group1, gr_dfs_fops_group2);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_6 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_33831;
    default:
    ldv_stop();
    }
    ldv_33831: ;
  } else {
  }
  goto ldv_33836;
  case 1: ;
  if (ldv_state_variable_4 != 0) {
    tmp___5 = __VERIFIER_nondet_int();
    switch (tmp___5) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      gr_pullup(gr_ops_group0, ldvarg6);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_33839;
    case 1: ;
    if (ldv_state_variable_4 == 1) {
      gr_udc_start(gr_ops_group0, ldvarg5);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_33839;
    case 2: ;
    if (ldv_state_variable_4 == 1) {
      gr_get_frame(gr_ops_group0);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_33839;
    case 3: ;
    if (ldv_state_variable_4 == 1) {
      gr_udc_stop(gr_ops_group0);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_33839;
    case 4: ;
    if (ldv_state_variable_4 == 1) {
      gr_wakeup(gr_ops_group0);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_33839;
    default:
    ldv_stop();
    }
    ldv_33839: ;
  } else {
  }
  goto ldv_33836;
  case 2: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_33836;
  case 3: ;
  if (ldv_state_variable_0 != 0) {
    tmp___6 = __VERIFIER_nondet_int();
    switch (tmp___6) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      gr_driver_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_33849;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = gr_driver_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_initialize_usb_ep_ops_5();
        ldv_state_variable_4 = 1;
        ldv_initialize_usb_gadget_ops_4();
        ldv_state_variable_6 = 1;
        ldv_file_operations_6();
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_33849;
    default:
    ldv_stop();
    }
    ldv_33849: ;
  } else {
  }
  goto ldv_33836;
  case 4: ;
  if (ldv_state_variable_3 != 0) {
    tmp___7 = __VERIFIER_nondet_int();
    switch (tmp___7) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      ldv_retval_3 = gr_probe(gr_driver_group1);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_3 = 2;
        ref_cnt = ref_cnt + 1;
        probed_3 = 1;
      } else {
      }
    } else {
    }
    goto ldv_33854;
    case 1: ;
    if (ldv_state_variable_3 == 1 && probed_3 == 1) {
      ldv_retval_2 = gr_remove(gr_driver_group1);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_3 = 1;
        ref_cnt = ref_cnt - 1;
        probed_3 = 0;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_3 == 2 && probed_3 == 1) {
      ldv_retval_2 = gr_remove(gr_driver_group1);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_3 = 1;
        ref_cnt = ref_cnt - 1;
        probed_3 = 0;
      } else {
      }
    } else {
    }
    goto ldv_33854;
    default:
    ldv_stop();
    }
    ldv_33854: ;
  } else {
  }
  goto ldv_33836;
  case 5: ;
  if (ldv_state_variable_2 != 0) {
    choose_interrupt_2();
  } else {
  }
  goto ldv_33836;
  case 6: ;
  if (ldv_state_variable_5 != 0) {
    tmp___8 = __VERIFIER_nondet_int();
    switch (tmp___8) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      gr_ep_disable(gr_ep_ops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33860;
    case 1: ;
    if (ldv_state_variable_5 == 1) {
      gr_queue_ext(gr_ep_ops_group0, gr_ep_ops_group1, ldvarg10);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33860;
    case 2: ;
    if (ldv_state_variable_5 == 1) {
      gr_alloc_request(gr_ep_ops_group0, ldvarg9);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33860;
    case 3: ;
    if (ldv_state_variable_5 == 1) {
      gr_set_wedge(gr_ep_ops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33860;
    case 4: ;
    if (ldv_state_variable_5 == 1) {
      gr_dequeue(gr_ep_ops_group0, gr_ep_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33860;
    case 5: ;
    if (ldv_state_variable_5 == 1) {
      gr_free_request(gr_ep_ops_group0, gr_ep_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33860;
    case 6: ;
    if (ldv_state_variable_5 == 1) {
      gr_set_halt(gr_ep_ops_group0, ldvarg8);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33860;
    case 7: ;
    if (ldv_state_variable_5 == 1) {
      gr_fifo_flush(gr_ep_ops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33860;
    case 8: ;
    if (ldv_state_variable_5 == 1) {
      gr_fifo_status(gr_ep_ops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33860;
    case 9: ;
    if (ldv_state_variable_5 == 1) {
      gr_ep_enable(gr_ep_ops_group0, (struct usb_endpoint_descriptor const *)ldvarg7);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_33860;
    default:
    ldv_stop();
    }
    ldv_33860: ;
  } else {
  }
  goto ldv_33836;
  default:
  ldv_stop();
  }
  ldv_33836: ;
  goto ldv_33872;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static long PTR_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv_ptr_err(ptr);
  return (tmp);
}
}
__inline static bool IS_ERR(void const *ptr )
{
  bool tmp ;
  {
  tmp = ldv_is_err(ptr);
  return (tmp);
}
}
void ldv_mutex_lock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_6(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_devm_request_threaded_irq_7(struct device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                    irqreturn_t (*handler)(int , void * ) , irqreturn_t (*thread_fn)(int ,
                                                                                                      void * ) ,
                                    unsigned long ldv_func_arg5 , char const *ldv_func_arg6 ,
                                    void *ldv_func_arg7 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = devm_request_threaded_irq(ldv_func_arg1, ldv_func_arg2, handler, thread_fn,
                                  ldv_func_arg5, ldv_func_arg6, ldv_func_arg7);
  ldv_func_res = tmp;
  tmp___0 = reg_check_1(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_1(ldv_func_arg1, (int )ldv_func_arg2, ldv_func_arg7);
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_9(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_devm_request_threaded_irq_13(struct device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                     irqreturn_t (*handler)(int , void * ) , irqreturn_t (*thread_fn)(int ,
                                                                                                       void * ) ,
                                     unsigned long ldv_func_arg5 , char const *ldv_func_arg6 ,
                                     void *ldv_func_arg7 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = devm_request_threaded_irq(ldv_func_arg1, ldv_func_arg2, handler, thread_fn,
                                  ldv_func_arg5, ldv_func_arg6, ldv_func_arg7);
  ldv_func_res = tmp;
  tmp___0 = reg_check_1(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_1(ldv_func_arg1, (int )ldv_func_arg2, ldv_func_arg7);
  } else {
  }
  return (ldv_func_res);
}
}
int ldv___platform_driver_register_14(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  ldv_state_variable_3 = 1;
  ldv_platform_driver_init_3();
  return (ldv_func_res);
}
}
void ldv_platform_driver_unregister_15(struct platform_driver *ldv_func_arg1 )
{
  {
  platform_driver_unregister(ldv_func_arg1);
  ldv_state_variable_3 = 0;
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
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_lock != 1) {
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
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __platform_driver_register(struct platform_driver *arg0, struct module *arg1) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
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
struct dentry *debugfs_create_dir(const char *arg0, struct dentry *arg1) {
  return ldv_malloc(sizeof(struct dentry));
}
struct dentry *debugfs_create_file(const char *arg0, umode_t arg1, struct dentry *arg2, void *arg3, const struct file_operations *arg4) {
  return ldv_malloc(sizeof(struct dentry));
}
void debugfs_remove(struct dentry *arg0) {
  return;
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void *devm_ioremap_resource(struct device *arg0, struct resource *arg1) {
  return ldv_malloc(0UL);
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
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread32be(void *arg0) {
  return __VERIFIER_nondet_uint();
}
void iowrite32be(u32 arg0, void *arg1) {
  return;
}
void ldv_initialize() {
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
int of_property_read_u32_index(const struct device_node *arg0, const char *arg1, u32 arg2, u32 *arg3) {
  return __VERIFIER_nondet_int();
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
long __VERIFIER_nondet_long(void);
loff_t seq_lseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_puts(struct seq_file *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t seq_read(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int single_open(struct file *arg0, int (*arg1)(struct seq_file *, void *), void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int single_release(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_add_gadget_udc(struct device *arg0, struct usb_gadget *arg1) {
  return __VERIFIER_nondet_int();
}
void usb_del_gadget_udc(struct usb_gadget *arg0) {
  return;
}
void usb_gadget_giveback_request(struct usb_ep *arg0, struct usb_request *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_gadget_map_request(struct usb_gadget *arg0, struct usb_request *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void usb_gadget_set_state(struct usb_gadget *arg0, enum usb_device_state arg1) {
  return;
}
void usb_gadget_unmap_request(struct usb_gadget *arg0, struct usb_request *arg1, int arg2) {
  return;
}
const char *usb_speed_string(enum usb_device_speed arg0) {
  return ldv_malloc(sizeof(char));
}
const char *usb_state_string(enum usb_device_state arg0) {
  return ldv_malloc(sizeof(char));
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
