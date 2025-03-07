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
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
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
struct llist_head {
   struct llist_node *first ;
};
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
struct vc_data;
struct console_font;
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
struct path;
struct vfsmount;
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
struct bdi_writeback;
struct export_operations;
struct kiocb;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iov_iter;
struct vm_fault;
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
struct writeback_control;
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
struct cdev;
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
struct consw {
   struct module *owner ;
   char const *(*con_startup)(void) ;
   void (*con_init)(struct vc_data * , int ) ;
   void (*con_deinit)(struct vc_data * ) ;
   void (*con_clear)(struct vc_data * , int , int , int , int ) ;
   void (*con_putc)(struct vc_data * , int , int , int ) ;
   void (*con_putcs)(struct vc_data * , unsigned short const * , int , int , int ) ;
   void (*con_cursor)(struct vc_data * , int ) ;
   int (*con_scroll)(struct vc_data * , int , int , int , int ) ;
   void (*con_bmove)(struct vc_data * , int , int , int , int , int , int ) ;
   int (*con_switch)(struct vc_data * ) ;
   int (*con_blank)(struct vc_data * , int , int ) ;
   int (*con_font_set)(struct vc_data * , struct console_font * , unsigned int ) ;
   int (*con_font_get)(struct vc_data * , struct console_font * ) ;
   int (*con_font_default)(struct vc_data * , struct console_font * , char * ) ;
   int (*con_font_copy)(struct vc_data * , int ) ;
   int (*con_resize)(struct vc_data * , unsigned int , unsigned int , unsigned int ) ;
   int (*con_set_palette)(struct vc_data * , unsigned char * ) ;
   int (*con_scrolldelta)(struct vc_data * , int ) ;
   int (*con_set_origin)(struct vc_data * ) ;
   void (*con_save_screen)(struct vc_data * ) ;
   u8 (*con_build_attr)(struct vc_data * , u8 , u8 , u8 , u8 , u8 , u8 ) ;
   void (*con_invert_region)(struct vc_data * , u16 * , int ) ;
   u16 *(*con_screen_pos)(struct vc_data * , int ) ;
   unsigned long (*con_getxy)(struct vc_data * , unsigned long , int * , int * ) ;
   int (*con_debug_enter)(struct vc_data * ) ;
   int (*con_debug_leave)(struct vc_data * ) ;
};
struct tty_driver;
struct console_font {
   unsigned int width ;
   unsigned int height ;
   unsigned int charcount ;
   unsigned char *data ;
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
struct fb_con2fbmap {
   __u32 console ;
   __u32 framebuffer ;
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
struct fb_info;
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
struct fb_event {
   struct fb_info *info ;
   void *data ;
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
struct vt_mode {
   char mode ;
   char waitv ;
   short relsig ;
   short acqsig ;
   short frsig ;
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
struct proc_dir_entry;
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
   union __anonunion____missing_field_name_245 __annonCompField69 ;
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
struct uni_pagedir;
struct vc_data {
   struct tty_port port ;
   unsigned short vc_num ;
   unsigned int vc_cols ;
   unsigned int vc_rows ;
   unsigned int vc_size_row ;
   unsigned int vc_scan_lines ;
   unsigned long vc_origin ;
   unsigned long vc_scr_end ;
   unsigned long vc_visible_origin ;
   unsigned int vc_top ;
   unsigned int vc_bottom ;
   struct consw const *vc_sw ;
   unsigned short *vc_screenbuf ;
   unsigned int vc_screenbuf_size ;
   unsigned char vc_mode ;
   unsigned char vc_attr ;
   unsigned char vc_def_color ;
   unsigned char vc_color ;
   unsigned char vc_s_color ;
   unsigned char vc_ulcolor ;
   unsigned char vc_itcolor ;
   unsigned char vc_halfcolor ;
   unsigned int vc_cursor_type ;
   unsigned short vc_complement_mask ;
   unsigned short vc_s_complement_mask ;
   unsigned int vc_x ;
   unsigned int vc_y ;
   unsigned int vc_saved_x ;
   unsigned int vc_saved_y ;
   unsigned long vc_pos ;
   unsigned short vc_hi_font_mask ;
   struct console_font vc_font ;
   unsigned short vc_video_erase_char ;
   unsigned int vc_state ;
   unsigned int vc_npar ;
   unsigned int vc_par[16U] ;
   struct vt_mode vt_mode ;
   struct pid *vt_pid ;
   int vt_newvt ;
   wait_queue_head_t paste_wait ;
   unsigned char vc_charset : 1 ;
   unsigned char vc_s_charset : 1 ;
   unsigned char vc_disp_ctrl : 1 ;
   unsigned char vc_toggle_meta : 1 ;
   unsigned char vc_decscnm : 1 ;
   unsigned char vc_decom : 1 ;
   unsigned char vc_decawm : 1 ;
   unsigned char vc_deccm : 1 ;
   unsigned char vc_decim : 1 ;
   unsigned char vc_deccolm : 1 ;
   unsigned char vc_intensity : 2 ;
   unsigned char vc_italic : 1 ;
   unsigned char vc_underline : 1 ;
   unsigned char vc_blink : 1 ;
   unsigned char vc_reverse : 1 ;
   unsigned char vc_s_intensity : 2 ;
   unsigned char vc_s_italic : 1 ;
   unsigned char vc_s_underline : 1 ;
   unsigned char vc_s_blink : 1 ;
   unsigned char vc_s_reverse : 1 ;
   unsigned char vc_ques : 1 ;
   unsigned char vc_need_wrap : 1 ;
   unsigned char vc_can_do_color : 1 ;
   unsigned char vc_report_mouse : 2 ;
   unsigned char vc_utf : 1 ;
   unsigned char vc_utf_count ;
   int vc_utf_char ;
   unsigned int vc_tab_stop[8U] ;
   unsigned char vc_palette[48U] ;
   unsigned short *vc_translate ;
   unsigned char vc_G0_charset ;
   unsigned char vc_G1_charset ;
   unsigned char vc_saved_G0 ;
   unsigned char vc_saved_G1 ;
   unsigned int vc_resize_user ;
   unsigned int vc_bell_pitch ;
   unsigned int vc_bell_duration ;
   unsigned short vc_cur_blink_ms ;
   struct vc_data **vc_display_fg ;
   struct uni_pagedir *vc_uni_pagedir ;
   struct uni_pagedir **vc_uni_pagedir_loc ;
   bool vc_panic_force_write ;
};
struct vc {
   struct vc_data *d ;
   struct work_struct SAK_work ;
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
struct font_desc {
   int idx ;
   char const *name ;
   int width ;
   int height ;
   void const *data ;
   int pref ;
};
struct display {
   u_char const *fontdata ;
   int userfont ;
   u_short scrollmode ;
   u_short inverse ;
   short yscroll ;
   int vrows ;
   int cursor_shape ;
   int con_rotate ;
   u32 xres_virtual ;
   u32 yres_virtual ;
   u32 height ;
   u32 width ;
   u32 bits_per_pixel ;
   u32 grayscale ;
   u32 nonstd ;
   u32 accel_flags ;
   u32 rotate ;
   struct fb_bitfield red ;
   struct fb_bitfield green ;
   struct fb_bitfield blue ;
   struct fb_bitfield transp ;
   struct fb_videomode const *mode ;
};
struct fbcon_ops {
   void (*bmove)(struct vc_data * , struct fb_info * , int , int , int , int ,
                 int , int ) ;
   void (*clear)(struct vc_data * , struct fb_info * , int , int , int , int ) ;
   void (*putcs)(struct vc_data * , struct fb_info * , unsigned short const * ,
                 int , int , int , int , int ) ;
   void (*clear_margins)(struct vc_data * , struct fb_info * , int ) ;
   void (*cursor)(struct vc_data * , struct fb_info * , int , int , int , int ) ;
   int (*update_start)(struct fb_info * ) ;
   int (*rotate_font)(struct fb_info * , struct vc_data * ) ;
   struct fb_var_screeninfo var ;
   struct timer_list cursor_timer ;
   struct fb_cursor cursor_state ;
   struct display *p ;
   int currcon ;
   int cur_blink_jiffies ;
   int cursor_flash ;
   int cursor_reset ;
   int blank_state ;
   int graphics ;
   int save_graphics ;
   int flags ;
   int rotate ;
   int cur_rotate ;
   char *cursor_data ;
   u8 *fontbuffer ;
   u8 *fontdata ;
   u8 *cursor_src ;
   u32 cursor_size ;
   u32 fd_size ;
};
typedef bool ldv_func_ret_type;
typedef bool ldv_func_ret_type___0;
typedef bool ldv_func_ret_type___1;
typedef bool ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef bool ldv_func_ret_type___6;
extern struct module __this_module ;
extern int printk(char const * , ...) ;
extern unsigned long simple_strtoul(char const * , char ** , unsigned int ) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern int oops_in_progress ;
extern int panic_timeout ;
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
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_15(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
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
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_13(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_fb_info(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_lock_update_lock_of_backlight_device(struct mutex *lock ) ;
void ldv_mutex_unlock_update_lock_of_backlight_device(struct mutex *lock ) ;
extern unsigned long volatile jiffies ;
extern unsigned long __msecs_to_jiffies(unsigned int const ) ;
__inline static unsigned long msecs_to_jiffies(unsigned int const m )
{
  unsigned long tmp___0 ;
  {
  tmp___0 = __msecs_to_jiffies(m);
  return (tmp___0);
}
}
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_20(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern void add_timer(struct timer_list * ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_21(struct timer_list *ldv_func_arg1 ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_power_efficient_wq ;
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
extern bool cancel_work_sync(struct work_struct * ) ;
bool ldv_cancel_work_sync_22(struct work_struct *ldv_func_arg1 ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_5(8192, wq, work);
  return (tmp);
}
}
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
int LDV_IN_INTERRUPT = 1;
struct work_struct *ldv_work_struct_1_0 ;
struct work_struct *ldv_work_struct_1_1 ;
int ldv_timer_state_2 = 0;
struct work_struct *ldv_work_struct_1_2 ;
struct work_struct *ldv_work_struct_1_3 ;
int ldv_work_1_3 ;
struct vc_data *fb_con_group0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_3 ;
struct timer_list *ldv_timer_list_2 ;
int ldv_state_variable_2 ;
int ldv_work_1_1 ;
int ref_cnt ;
int ldv_work_1_0 ;
struct console_font *fb_con_group1 ;
int ldv_state_variable_1 ;
int ldv_state_variable_4 ;
int ldv_work_1_2 ;
void call_and_disable_all_1(int state ) ;
void invoke_work_1(void) ;
void ldv_initialize_consw_4(void) ;
void call_and_disable_work_1(struct work_struct *work ) ;
void choose_timer_2(struct timer_list *timer ) ;
int reg_timer_2(struct timer_list *timer ) ;
void disable_work_1(struct work_struct *work ) ;
void activate_work_1(struct work_struct *work , int state ) ;
void activate_pending_timer_2(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void work_init_1(void) ;
void disable_suitable_timer_2(struct timer_list *timer ) ;
extern bool try_module_get(struct module * ) ;
extern void module_put(struct module * ) ;
extern int con_is_bound(struct consw const * ) ;
extern int do_unregister_con_driver(struct consw const * ) ;
extern int do_take_over_console(struct consw const * , int , int , int ) ;
extern void console_lock(void) ;
extern int console_trylock(void) ;
extern void console_unlock(void) ;
extern void console_conditional_schedule(void) ;
extern int device_create_file(struct device * , struct device_attribute const * ) ;
extern void device_remove_file(struct device * , struct device_attribute const * ) ;
extern struct device *device_create(struct class * , struct device * , dev_t , void * ,
                                    char const * , ...) ;
extern void device_destroy(struct class * , dev_t ) ;
extern int fb_register_client(struct notifier_block * ) ;
extern int fb_unregister_client(struct notifier_block * ) ;
extern int fb_notifier_call_chain(unsigned long , void * ) ;
extern int fb_set_var(struct fb_info * , struct fb_var_screeninfo * ) ;
extern int fb_blank(struct fb_info * , int ) ;
extern int fb_show_logo(struct fb_info * , int ) ;
extern int fb_get_color_depth(struct fb_var_screeninfo * , struct fb_fix_screeninfo * ) ;
extern struct fb_info *registered_fb[32U] ;
extern int num_registered_fb ;
extern struct class *fb_class ;
extern int lock_fb_info(struct fb_info * ) ;
__inline static void unlock_fb_info(struct fb_info *info )
{
  {
  ldv_mutex_unlock_19(& info->lock);
  return;
}
}
extern void fb_videomode_to_var(struct fb_var_screeninfo * , struct fb_videomode const * ) ;
extern int fb_mode_is_equal(struct fb_videomode const * , struct fb_videomode const * ) ;
extern struct fb_videomode const *fb_match_mode(struct fb_var_screeninfo const * ,
                                                  struct list_head * ) ;
extern struct fb_videomode const *fb_find_best_mode(struct fb_var_screeninfo const * ,
                                                      struct list_head * ) ;
extern struct fb_videomode const *fb_find_nearest_mode(struct fb_videomode const * ,
                                                         struct list_head * ) ;
extern int fb_copy_cmap(struct fb_cmap const * , struct fb_cmap * ) ;
extern int fb_set_cmap(struct fb_cmap * , struct fb_info * ) ;
extern struct fb_cmap const *fb_default_cmap(int ) ;
extern struct vc vc_cons[63U] ;
extern int fg_console ;
extern int vc_resize(struct vc_data * , unsigned int , unsigned int ) ;
extern void do_blank_screen(int ) ;
extern void do_unblank_screen(int ) ;
extern void update_region(struct vc_data * , unsigned long , int ) ;
extern void redraw_screen(struct vc_data * , int ) ;
extern int con_set_default_unimap(struct vc_data * ) ;
extern int con_copy_unimap(struct vc_data * , struct vc_data * ) ;
extern int do_unbind_con_driver(struct consw const * , int , int , int ) ;
__inline static bool vt_force_oops_output(struct vc_data *vc )
{
  {
  if ((oops_in_progress != 0 && (int )vc->vc_panic_force_write) && panic_timeout >= 0) {
    return (1);
  } else {
  }
  return (0);
}
}
__inline static void scr_memsetw(u16 *s , u16 c , unsigned int count )
{
  u16 *tmp ;
  unsigned int tmp___0 ;
  {
  count = count / 2U;
  goto ldv_31813;
  ldv_31812:
  tmp = s;
  s = s + 1;
  *tmp = c;
  ldv_31813:
  tmp___0 = count;
  count = count - 1U;
  if (tmp___0 != 0U) {
    goto ldv_31812;
  } else {
  }
  return;
}
}
__inline static void scr_memcpyw(u16 *d , u16 const *s , unsigned int count )
{
  u16 *tmp ;
  u16 const *tmp___0 ;
  unsigned int tmp___1 ;
  {
  count = count / 2U;
  goto ldv_31821;
  ldv_31820:
  tmp = d;
  d = d + 1;
  tmp___0 = s;
  s = s + 1;
  *tmp = *tmp___0;
  ldv_31821:
  tmp___1 = count;
  count = count - 1U;
  if (tmp___1 != 0U) {
    goto ldv_31820;
  } else {
  }
  return;
}
}
extern int console_blanked ;
extern unsigned char color_table[] ;
extern struct font_desc const *find_font(char const * ) ;
extern struct font_desc const *get_default_font(int , int , u32 , u32 ) ;
extern u32 crc32_le(u32 , unsigned char const * , size_t ) ;
extern int fb_is_primary_device(struct fb_info * ) ;
__inline static int mono_col(struct fb_info const *info )
{
  __u32 max_len ;
  unsigned int _max1 ;
  unsigned int _max2 ;
  unsigned int _max1___0 ;
  __u32 _max2___0 ;
  {
  _max1 = info->var.green.length;
  _max2 = info->var.red.length;
  max_len = _max1 > _max2 ? _max1 : _max2;
  _max1___0 = info->var.blue.length;
  _max2___0 = max_len;
  max_len = _max1___0 > (unsigned int )((unsigned int const )_max2___0) ? _max1___0 : (unsigned int const )_max2___0;
  return (~ (4095 << (int )max_len) & 255);
}
}
extern void fbcon_set_tileops(struct vc_data * , struct fb_info * ) ;
extern void fbcon_set_bitops(struct fbcon_ops * ) ;
__inline static int real_y(struct display *p , int ypos )
{
  int rows ;
  {
  rows = p->vrows;
  ypos = (int )p->yscroll + ypos;
  return (ypos >= rows ? ypos - rows : ypos);
}
}
static struct display fb_display[63U] ;
static signed char con2fb_map[63U] ;
static signed char con2fb_map_boot[63U] ;
static int logo_lines ;
static int logo_shown = -1;
static int fbcon_softback_size = 32768;
static unsigned long softback_buf ;
static unsigned long softback_curr ;
static unsigned long softback_in ;
static unsigned long softback_top ;
static unsigned long softback_end ;
static int softback_lines ;
static int first_fb_vc ;
static int last_fb_vc = 62;
static int fbcon_is_default = 1;
static int fbcon_has_exited ;
static int primary_device = -1;
static int fbcon_has_console_bind ;
static int map_override ;
static char fontname[40U] ;
static int info_idx = -1;
static int initial_rotation ;
static int fbcon_has_sysfs ;
static struct consw const fb_con ;
static int fbcon_set_origin(struct vc_data *vc ) ;
static int fbcon_cursor_noblink ;
static char const *fbcon_startup(void) ;
static void fbcon_init(struct vc_data *vc , int init ) ;
static void fbcon_deinit(struct vc_data *vc ) ;
static void fbcon_clear(struct vc_data *vc , int sy , int sx , int height , int width ) ;
static void fbcon_putc(struct vc_data *vc , int c , int ypos , int xpos ) ;
static void fbcon_putcs(struct vc_data *vc , unsigned short const *s , int count ,
                        int ypos , int xpos ) ;
static void fbcon_clear_margins(struct vc_data *vc , int bottom_only ) ;
static void fbcon_cursor(struct vc_data *vc , int mode ) ;
static int fbcon_scroll(struct vc_data *vc , int t , int b , int dir , int count ) ;
static void fbcon_bmove(struct vc_data *vc , int sy , int sx , int dy , int dx , int height ,
                        int width ) ;
static int fbcon_switch(struct vc_data *vc ) ;
static int fbcon_blank(struct vc_data *vc , int blank , int mode_switch ) ;
static int fbcon_set_palette(struct vc_data *vc , unsigned char *table ) ;
static int fbcon_scrolldelta(struct vc_data *vc , int lines ) ;
__inline static void ywrap_up(struct vc_data *vc , int count ) ;
__inline static void ywrap_down(struct vc_data *vc , int count ) ;
__inline static void ypan_up(struct vc_data *vc , int count ) ;
__inline static void ypan_down(struct vc_data *vc , int count ) ;
static void fbcon_bmove_rec(struct vc_data *vc , struct display *p , int sy , int sx ,
                            int dy , int dx , int height , int width , u_int y_break ) ;
static void fbcon_set_disp(struct fb_info *info , struct fb_var_screeninfo *var ,
                           int unit ) ;
static void fbcon_redraw_move(struct vc_data *vc , struct display *p , int line ,
                              int count , int dy ) ;
static void fbcon_modechanged(struct fb_info *info ) ;
static void fbcon_set_all_vcs(struct fb_info *info ) ;
static void fbcon_start(void) ;
static void fbcon_exit(void) ;
static struct device *fbcon_device ;
__inline static void fbcon_set_rotation(struct fb_info *info )
{
  struct fbcon_ops *ops ;
  {
  ops = (struct fbcon_ops *)info->fbcon_par;
  if ((info->flags & 131072) == 0 && (ops->p)->con_rotate <= 3) {
    ops->rotate = (ops->p)->con_rotate;
  } else {
    ops->rotate = 0;
  }
  return;
}
}
static void fbcon_rotate(struct fb_info *info , u32 rotate )
{
  struct fbcon_ops *ops ;
  struct fb_info *fb_info ;
  struct display *p ;
  {
  ops = (struct fbcon_ops *)info->fbcon_par;
  if ((unsigned long )ops == (unsigned long )((struct fbcon_ops *)0) || ops->currcon == -1) {
    return;
  } else {
  }
  fb_info = registered_fb[(int )con2fb_map[ops->currcon]];
  if ((unsigned long )info == (unsigned long )fb_info) {
    p = (struct display *)(& fb_display) + (unsigned long )ops->currcon;
    if (rotate <= 3U) {
      p->con_rotate = (int )rotate;
    } else {
      p->con_rotate = 0;
    }
    fbcon_modechanged(info);
  } else {
  }
  return;
}
}
static void fbcon_rotate_all(struct fb_info *info , u32 rotate )
{
  struct fbcon_ops *ops ;
  struct vc_data *vc ;
  struct display *p ;
  int i ;
  {
  ops = (struct fbcon_ops *)info->fbcon_par;
  if (((unsigned long )ops == (unsigned long )((struct fbcon_ops *)0) || ops->currcon < 0) || rotate > 3U) {
    return;
  } else {
  }
  i = first_fb_vc;
  goto ldv_33744;
  ldv_33743:
  vc = vc_cons[i].d;
  if (((unsigned long )vc == (unsigned long )((struct vc_data *)0) || (unsigned int )vc->vc_mode != 0U) || (unsigned long )registered_fb[(int )con2fb_map[i]] != (unsigned long )info) {
    goto ldv_33742;
  } else {
  }
  p = (struct display *)(& fb_display) + (unsigned long )vc->vc_num;
  p->con_rotate = (int )rotate;
  ldv_33742:
  i = i + 1;
  ldv_33744: ;
  if (i <= last_fb_vc) {
    goto ldv_33743;
  } else {
  }
  fbcon_set_all_vcs(info);
  return;
}
}
static int fbcon_get_rotate(struct fb_info *info )
{
  struct fbcon_ops *ops ;
  {
  ops = (struct fbcon_ops *)info->fbcon_par;
  return ((unsigned long )ops != (unsigned long )((struct fbcon_ops *)0) ? ops->rotate : 0);
}
}
__inline static int fbcon_is_inactive(struct vc_data *vc , struct fb_info *info )
{
  struct fbcon_ops *ops ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ops = (struct fbcon_ops *)info->fbcon_par;
  if ((info->state != 0U || (unsigned int )vc->vc_mode != 0U) || ops->graphics != 0) {
    tmp = vt_force_oops_output(vc);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
}
}
static int get_color(struct vc_data *vc , struct fb_info *info , u16 c , int is_fg )
{
  int depth ;
  int tmp ;
  int color ;
  unsigned short charmask ;
  int col ;
  int tmp___0 ;
  int fg ;
  int bg ;
  {
  tmp = fb_get_color_depth(& info->var, & info->fix);
  depth = tmp;
  color = 0;
  if (console_blanked != 0) {
    charmask = (unsigned int )vc->vc_hi_font_mask != 0U ? 511U : 255U;
    c = (u16 )((int )vc->vc_video_erase_char & (int )charmask);
  } else {
  }
  if (depth != 1) {
    color = is_fg != 0 ? ((int )c >> ((unsigned int )vc->vc_hi_font_mask != 0U ? 9 : 8)) & 15 : ((int )c >> ((unsigned int )vc->vc_hi_font_mask != 0U ? 13 : 12)) & 15;
  } else {
  }
  switch (depth) {
  case 1:
  tmp___0 = mono_col((struct fb_info const *)info);
  col = tmp___0;
  fg = info->fix.visual != 0U ? col : 0;
  bg = info->fix.visual == 0U ? col : 0;
  if (console_blanked != 0) {
    fg = bg;
  } else {
  }
  color = is_fg != 0 ? fg : bg;
  goto ldv_33768;
  case 2: ;
  switch (color) {
  case 0:
  color = 0;
  goto ldv_33771;
  case 6:
  case 5:
  case 4:
  case 3:
  case 2:
  case 1:
  color = 2;
  goto ldv_33771;
  case 8:
  case 7:
  color = 1;
  goto ldv_33771;
  default:
  color = 3;
  goto ldv_33771;
  }
  ldv_33771: ;
  goto ldv_33768;
  case 3:
  color = color & 7;
  goto ldv_33768;
  }
  ldv_33768: ;
  return (color);
}
}
static void fbcon_update_softback(struct vc_data *vc )
{
  int l ;
  {
  l = (int )((unsigned int )fbcon_softback_size / vc->vc_size_row);
  if (l > 5) {
    softback_end = (unsigned long )(vc->vc_size_row * (unsigned int )l) + softback_buf;
  } else {
    softback_top = 0UL;
  }
  return;
}
}
static void fb_flashcursor(struct work_struct *work )
{
  struct fb_info *info ;
  struct work_struct const *__mptr ;
  struct fbcon_ops *ops ;
  struct vc_data *vc ;
  int c ;
  int mode ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  {
  __mptr = (struct work_struct const *)work;
  info = (struct fb_info *)__mptr + 0xfffffffffffffd30UL;
  ops = (struct fbcon_ops *)info->fbcon_par;
  vc = (struct vc_data *)0;
  ret = console_trylock();
  if (ret == 0) {
    return;
  } else {
  }
  if ((unsigned long )ops != (unsigned long )((struct fbcon_ops *)0) && ops->currcon != -1) {
    vc = vc_cons[ops->currcon].d;
  } else {
  }
  if ((((unsigned long )vc == (unsigned long )((struct vc_data *)0) || (unsigned long )*(vc->vc_display_fg) != (unsigned long )vc) || (unsigned long )registered_fb[(int )con2fb_map[(int )vc->vc_num]] != (unsigned long )info) || (unsigned int )*((unsigned char *)vc + 1384UL) == 0U) {
    console_unlock();
    return;
  } else {
  }
  c = (int )*((u16 *)vc->vc_pos);
  mode = ops->cursor_flash == 0 || (unsigned int )ops->cursor_state.enable != 0U ? 2 : 1;
  tmp = get_color(vc, info, (int )((u16 )c), 0);
  tmp___0 = get_color(vc, info, (int )((u16 )c), 1);
  (*(ops->cursor))(vc, info, mode, softback_lines, tmp___0, tmp);
  console_unlock();
  return;
}
}
static void cursor_timer_handler(unsigned long dev_addr )
{
  struct fb_info *info ;
  struct fbcon_ops *ops ;
  {
  info = (struct fb_info *)dev_addr;
  ops = (struct fbcon_ops *)info->fbcon_par;
  queue_work(system_power_efficient_wq, & info->queue);
  ldv_mod_timer_20(& ops->cursor_timer, (unsigned long )ops->cur_blink_jiffies + (unsigned long )jiffies);
  return;
}
}
static void fbcon_add_cursor_timer(struct fb_info *info )
{
  struct fbcon_ops *ops ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  ops = (struct fbcon_ops *)info->fbcon_par;
  if ((((unsigned long )info->queue.func == (unsigned long )((void (*)(struct work_struct * ))0) || (unsigned long )info->queue.func == (unsigned long )(& fb_flashcursor)) && (ops->flags & 2) == 0) && fbcon_cursor_noblink == 0) {
    if ((unsigned long )info->queue.func == (unsigned long )((void (*)(struct work_struct * ))0)) {
      __init_work(& info->queue, 0);
      __constr_expr_0.counter = 137438953408L;
      info->queue.data = __constr_expr_0;
      lockdep_init_map(& info->queue.lockdep_map, "(&info->queue)", & __key, 0);
      INIT_LIST_HEAD(& info->queue.entry);
      info->queue.func = & fb_flashcursor;
    } else {
    }
    reg_timer_2(& ops->cursor_timer);
    ops->cursor_timer.function = & cursor_timer_handler;
    ops->cursor_timer.expires = (unsigned long )ops->cur_blink_jiffies + (unsigned long )jiffies;
    ops->cursor_timer.data = (unsigned long )info;
    add_timer(& ops->cursor_timer);
    ops->flags = ops->flags | 2;
  } else {
  }
  return;
}
}
static void fbcon_del_cursor_timer(struct fb_info *info )
{
  struct fbcon_ops *ops ;
  {
  ops = (struct fbcon_ops *)info->fbcon_par;
  if ((unsigned long )info->queue.func == (unsigned long )(& fb_flashcursor) && (ops->flags & 2) != 0) {
    ldv_del_timer_sync_21(& ops->cursor_timer);
    ops->flags = ops->flags & -3;
  } else {
  }
  return;
}
}
static int search_fb_in_map(int idx )
{
  int i ;
  int retval ;
  {
  retval = 0;
  i = first_fb_vc;
  goto ldv_33812;
  ldv_33811: ;
  if ((int )con2fb_map[i] == idx) {
    retval = 1;
  } else {
  }
  i = i + 1;
  ldv_33812: ;
  if (i <= last_fb_vc) {
    goto ldv_33811;
  } else {
  }
  return (retval);
}
}
static int search_for_mapped_con(void)
{
  int i ;
  int retval ;
  {
  retval = 0;
  i = first_fb_vc;
  goto ldv_33820;
  ldv_33819: ;
  if ((int )con2fb_map[i] != -1) {
    retval = 1;
  } else {
  }
  i = i + 1;
  ldv_33820: ;
  if (i <= last_fb_vc) {
    goto ldv_33819;
  } else {
  }
  return (retval);
}
}
static int do_fbcon_takeover(int show_logo )
{
  int err ;
  int i ;
  {
  if (num_registered_fb == 0) {
    return (-19);
  } else {
  }
  if (show_logo == 0) {
    logo_shown = -3;
  } else {
  }
  i = first_fb_vc;
  goto ldv_33828;
  ldv_33827:
  con2fb_map[i] = (signed char )info_idx;
  i = i + 1;
  ldv_33828: ;
  if (i <= last_fb_vc) {
    goto ldv_33827;
  } else {
  }
  err = do_take_over_console(& fb_con, first_fb_vc, last_fb_vc, fbcon_is_default);
  if (err != 0) {
    i = first_fb_vc;
    goto ldv_33831;
    ldv_33830:
    con2fb_map[i] = -1;
    i = i + 1;
    ldv_33831: ;
    if (i <= last_fb_vc) {
      goto ldv_33830;
    } else {
    }
    info_idx = -1;
  } else {
    fbcon_has_console_bind = 1;
  }
  return (err);
}
}
static void fbcon_prepare_logo(struct vc_data *vc , struct fb_info *info , int cols ,
                               int rows , int new_cols , int new_rows )
{
  {
  logo_shown = -3;
  return;
}
}
static void set_blitting_type(struct vc_data *vc , struct fb_info *info )
{
  struct fbcon_ops *ops ;
  {
  ops = (struct fbcon_ops *)info->fbcon_par;
  ops->p = (struct display *)(& fb_display) + (unsigned long )vc->vc_num;
  if ((info->flags & 131072) != 0) {
    fbcon_set_tileops(vc, info);
  } else {
    fbcon_set_rotation(info);
    fbcon_set_bitops(ops);
  }
  return;
}
}
static int fbcon_invalid_charcount(struct fb_info *info , unsigned int charcount )
{
  int err ;
  int tmp ;
  {
  err = 0;
  if ((info->flags & 131072) != 0) {
    tmp = (*((info->tileops)->fb_get_tilemax))(info);
    if ((unsigned int )tmp < charcount) {
      err = 1;
    } else {
    }
  } else {
  }
  return (err);
}
}
static int con2fb_acquire_newinfo(struct vc_data *vc , struct fb_info *info , int unit ,
                                  int oldidx )
{
  struct fbcon_ops *ops ;
  int err ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  {
  ops = (struct fbcon_ops *)0;
  err = 0;
  tmp = try_module_get((info->fbops)->owner);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    err = -19;
  } else {
  }
  if (err == 0 && (unsigned long )(info->fbops)->fb_open != (unsigned long )((int (*)(struct fb_info * ,
                                                                                      int ))0)) {
    tmp___1 = (*((info->fbops)->fb_open))(info, 0);
    if (tmp___1 != 0) {
      err = -19;
    } else {
    }
  } else {
  }
  if (err == 0) {
    tmp___2 = kzalloc(536UL, 208U);
    ops = (struct fbcon_ops *)tmp___2;
    if ((unsigned long )ops == (unsigned long )((struct fbcon_ops *)0)) {
      err = -12;
    } else {
    }
  } else {
  }
  if (err == 0) {
    info->fbcon_par = (void *)ops;
    if ((unsigned long )vc != (unsigned long )((struct vc_data *)0)) {
      set_blitting_type(vc, info);
    } else {
    }
  } else {
  }
  if (err != 0) {
    con2fb_map[unit] = (signed char )oldidx;
    module_put((info->fbops)->owner);
  } else {
  }
  return (err);
}
}
static int con2fb_release_oldinfo(struct vc_data *vc , struct fb_info *oldinfo , struct fb_info *newinfo ,
                                  int unit , int oldidx , int found )
{
  struct fbcon_ops *ops ;
  int err ;
  int ret ;
  int tmp ;
  {
  ops = (struct fbcon_ops *)oldinfo->fbcon_par;
  err = 0;
  if ((unsigned long )(oldinfo->fbops)->fb_release != (unsigned long )((int (*)(struct fb_info * ,
                                                                                int ))0)) {
    tmp = (*((oldinfo->fbops)->fb_release))(oldinfo, 0);
    if (tmp != 0) {
      con2fb_map[unit] = (signed char )oldidx;
      if (found == 0 && (unsigned long )(newinfo->fbops)->fb_release != (unsigned long )((int (*)(struct fb_info * ,
                                                                                                  int ))0)) {
        (*((newinfo->fbops)->fb_release))(newinfo, 0);
      } else {
      }
      if (found == 0) {
        module_put((newinfo->fbops)->owner);
      } else {
      }
      err = -19;
    } else {
    }
  } else {
  }
  if (err == 0) {
    fbcon_del_cursor_timer(oldinfo);
    kfree((void const *)ops->cursor_state.mask);
    kfree((void const *)ops->cursor_data);
    kfree((void const *)ops->cursor_src);
    kfree((void const *)ops->fontbuffer);
    kfree((void const *)oldinfo->fbcon_par);
    oldinfo->fbcon_par = (void *)0;
    module_put((oldinfo->fbops)->owner);
    if ((unsigned long )newinfo != (unsigned long )((struct fb_info *)0) && (unsigned long )(newinfo->fbops)->fb_set_par != (unsigned long )((int (*)(struct fb_info * ))0)) {
      ret = (*((newinfo->fbops)->fb_set_par))(newinfo);
      if (ret != 0) {
        printk("\vcon2fb_release_oldinfo: detected unhandled fb_set_par error, error code %d\n",
               ret);
      } else {
      }
    } else {
    }
  } else {
  }
  return (err);
}
}
static void con2fb_init_display(struct vc_data *vc , struct fb_info *info , int unit ,
                                int show_logo )
{
  struct fbcon_ops *ops ;
  int ret ;
  struct vc_data *fg_vc ;
  struct fb_info *fg_info ;
  {
  ops = (struct fbcon_ops *)info->fbcon_par;
  ops->currcon = fg_console;
  if ((unsigned long )(info->fbops)->fb_set_par != (unsigned long )((int (*)(struct fb_info * ))0) && (ops->flags & 1) == 0) {
    ret = (*((info->fbops)->fb_set_par))(info);
    if (ret != 0) {
      printk("\vcon2fb_init_display: detected unhandled fb_set_par error, error code %d\n",
             ret);
    } else {
    }
  } else {
  }
  ops->flags = ops->flags | 1;
  ops->graphics = 0;
  fbcon_set_disp(info, & info->var, unit);
  if (show_logo != 0) {
    fg_vc = vc_cons[fg_console].d;
    fg_info = registered_fb[(int )con2fb_map[fg_console]];
    fbcon_prepare_logo(fg_vc, fg_info, (int )fg_vc->vc_cols, (int )fg_vc->vc_rows,
                       (int )fg_vc->vc_cols, (int )fg_vc->vc_rows);
  } else {
  }
  redraw_screen(vc_cons[fg_console].d, 0);
  return;
}
}
static int set_con2fb_map(int unit , int newidx , int user )
{
  struct vc_data *vc ;
  int oldidx ;
  struct fb_info *info ;
  struct fb_info *oldinfo ;
  int found ;
  int err ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int show_logo ;
  int tmp___3 ;
  {
  vc = vc_cons[unit].d;
  oldidx = (int )con2fb_map[unit];
  info = registered_fb[newidx];
  oldinfo = (struct fb_info *)0;
  err = 0;
  if (oldidx == newidx) {
    return (0);
  } else {
  }
  if ((unsigned long )info == (unsigned long )((struct fb_info *)0)) {
    return (-22);
  } else {
  }
  tmp___0 = search_for_mapped_con();
  if (tmp___0 == 0) {
    info_idx = newidx;
    tmp = do_fbcon_takeover(0);
    return (tmp);
  } else {
    tmp___1 = con_is_bound(& fb_con);
    if (tmp___1 == 0) {
      info_idx = newidx;
      tmp = do_fbcon_takeover(0);
      return (tmp);
    } else {
    }
  }
  if (oldidx != -1) {
    oldinfo = registered_fb[oldidx];
  } else {
  }
  found = search_fb_in_map(newidx);
  con2fb_map[unit] = (signed char )newidx;
  if (err == 0 && found == 0) {
    err = con2fb_acquire_newinfo(vc, info, unit, oldidx);
  } else {
  }
  if (err == 0 && (unsigned long )oldinfo != (unsigned long )((struct fb_info *)0)) {
    tmp___2 = search_fb_in_map(oldidx);
    if (tmp___2 == 0) {
      err = con2fb_release_oldinfo(vc, oldinfo, info, unit, oldidx, found);
    } else {
    }
  } else {
  }
  if (err == 0) {
    show_logo = (fg_console == 0 && user == 0) && logo_shown != -3;
    if (found == 0) {
      fbcon_add_cursor_timer(info);
    } else {
    }
    con2fb_map_boot[unit] = (signed char )newidx;
    con2fb_init_display(vc, info, unit, show_logo);
  } else {
  }
  tmp___3 = search_fb_in_map(info_idx);
  if (tmp___3 == 0) {
    info_idx = newidx;
  } else {
  }
  return (err);
}
}
static int var_to_display(struct display *disp , struct fb_var_screeninfo *var , struct fb_info *info )
{
  {
  disp->xres_virtual = var->xres_virtual;
  disp->yres_virtual = var->yres_virtual;
  disp->bits_per_pixel = var->bits_per_pixel;
  disp->grayscale = var->grayscale;
  disp->nonstd = var->nonstd;
  disp->accel_flags = var->accel_flags;
  disp->height = var->height;
  disp->width = var->width;
  disp->red = var->red;
  disp->green = var->green;
  disp->blue = var->blue;
  disp->transp = var->transp;
  disp->rotate = var->rotate;
  disp->mode = fb_match_mode((struct fb_var_screeninfo const *)var, & info->modelist);
  if ((unsigned long )disp->mode == (unsigned long )((struct fb_videomode const *)0)) {
    return (-22);
  } else {
  }
  return (0);
}
}
static void display_to_var(struct fb_var_screeninfo *var , struct display *disp )
{
  {
  fb_videomode_to_var(var, disp->mode);
  var->xres_virtual = disp->xres_virtual;
  var->yres_virtual = disp->yres_virtual;
  var->bits_per_pixel = disp->bits_per_pixel;
  var->grayscale = disp->grayscale;
  var->nonstd = disp->nonstd;
  var->accel_flags = disp->accel_flags;
  var->height = disp->height;
  var->width = disp->width;
  var->red = disp->red;
  var->green = disp->green;
  var->blue = disp->blue;
  var->transp = disp->transp;
  var->rotate = disp->rotate;
  return;
}
}
static char const *fbcon_startup(void)
{
  char const *display_desc ;
  struct display *p ;
  struct vc_data *vc ;
  struct font_desc const *font ;
  struct module *owner ;
  struct fb_info *info ;
  struct fbcon_ops *ops ;
  int rows ;
  int cols ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  u_char const *tmp___4 ;
  __u32 _r ;
  __u32 _v ;
  __u32 _r___0 ;
  __u32 _v___0 ;
  {
  display_desc = "frame buffer device";
  p = (struct display *)(& fb_display) + (unsigned long )fg_console;
  vc = vc_cons[fg_console].d;
  font = (struct font_desc const *)0;
  info = (struct fb_info *)0;
  if (num_registered_fb == 0 || info_idx == -1) {
    return (display_desc);
  } else {
  }
  info = registered_fb[info_idx];
  if ((unsigned long )info == (unsigned long )((struct fb_info *)0)) {
    return ((char const *)0);
  } else {
  }
  owner = (info->fbops)->owner;
  tmp = try_module_get(owner);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return ((char const *)0);
  } else {
  }
  if ((unsigned long )(info->fbops)->fb_open != (unsigned long )((int (*)(struct fb_info * ,
                                                                          int ))0)) {
    tmp___1 = (*((info->fbops)->fb_open))(info, 0);
    if (tmp___1 != 0) {
      module_put(owner);
      return ((char const *)0);
    } else {
    }
  } else {
  }
  tmp___2 = kzalloc(536UL, 208U);
  ops = (struct fbcon_ops *)tmp___2;
  if ((unsigned long )ops == (unsigned long )((struct fbcon_ops *)0)) {
    module_put(owner);
    return ((char const *)0);
  } else {
  }
  ops->currcon = -1;
  ops->graphics = 1;
  ops->cur_rotate = -1;
  info->fbcon_par = (void *)ops;
  p->con_rotate = initial_rotation;
  set_blitting_type(vc, info);
  if (info->fix.type != 3U) {
    if (fbcon_softback_size != 0) {
      if (softback_buf == 0UL) {
        tmp___3 = kmalloc((size_t )fbcon_softback_size, 208U);
        softback_buf = (unsigned long )tmp___3;
        if (softback_buf == 0UL) {
          fbcon_softback_size = 0;
          softback_top = 0UL;
        } else {
        }
      } else {
      }
    } else
    if (softback_buf != 0UL) {
      kfree((void const *)softback_buf);
      softback_buf = 0UL;
      softback_top = 0UL;
    } else {
    }
    if (softback_buf != 0UL) {
      softback_curr = softback_buf;
      softback_top = softback_curr;
      softback_in = softback_top;
    } else {
    }
    softback_lines = 0;
  } else {
  }
  if ((unsigned long )p->fontdata == (unsigned long )((u_char const *)0U) && (unsigned long )vc->vc_font.data == (unsigned long )((unsigned char *)0U)) {
    if ((int )((signed char )fontname[0]) == 0) {
      font = get_default_font((int )info->var.xres, (int )info->var.yres, info->pixmap.blit_x,
                              info->pixmap.blit_y);
    } else {
      font = find_font((char const *)(& fontname));
      if ((unsigned long )font == (unsigned long )((struct font_desc const *)0)) {
        font = get_default_font((int )info->var.xres, (int )info->var.yres, info->pixmap.blit_x,
                                info->pixmap.blit_y);
      } else {
      }
    }
    vc->vc_font.width = (unsigned int )font->width;
    vc->vc_font.height = (unsigned int )font->height;
    tmp___4 = (u_char const *)font->data;
    p->fontdata = tmp___4;
    vc->vc_font.data = (unsigned char *)tmp___4;
    vc->vc_font.charcount = 256U;
  } else {
    p->fontdata = (u_char const *)vc->vc_font.data;
  }
  _r = info->var.xres;
  _v = info->var.yres;
  cols = (int )(ops->rotate == 0 || ops->rotate == 2 ? _r : _v);
  _r___0 = info->var.yres;
  _v___0 = info->var.xres;
  rows = (int )(ops->rotate == 0 || ops->rotate == 2 ? _r___0 : _v___0);
  cols = (int )((unsigned int )cols / vc->vc_font.width);
  rows = (int )((unsigned int )rows / vc->vc_font.height);
  vc_resize(vc, (unsigned int )cols, (unsigned int )rows);
  fbcon_add_cursor_timer(info);
  fbcon_has_exited = 0;
  return (display_desc);
}
}
static void fbcon_init(struct vc_data *vc , int init )
{
  struct fb_info *info ;
  struct fbcon_ops *ops ;
  struct vc_data **default_mode ;
  struct vc_data *svc ;
  struct display *t ;
  struct display *p ;
  int logo ;
  int new_rows ;
  int new_cols ;
  int rows ;
  int cols ;
  int charcnt ;
  int cap ;
  int ret ;
  int tmp ;
  struct vc_data *fvc ;
  u_char const *tmp___0 ;
  struct font_desc const *font ;
  u_char const *tmp___1 ;
  int tmp___2 ;
  __u32 _r ;
  __u32 _v ;
  __u32 _r___0 ;
  __u32 _v___0 ;
  int tmp___3 ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  default_mode = vc->vc_display_fg;
  svc = *default_mode;
  p = (struct display *)(& fb_display) + (unsigned long )vc->vc_num;
  logo = 1;
  charcnt = 256;
  if (info_idx == -1 || (unsigned long )info == (unsigned long )((struct fb_info *)0)) {
    return;
  } else {
  }
  cap = info->flags;
  if (((unsigned long )vc != (unsigned long )svc || logo_shown == -3) || info->fix.type == 3U) {
    logo = 0;
  } else {
  }
  tmp = var_to_display(p, & info->var, info);
  if (tmp != 0) {
    return;
  } else {
  }
  if ((unsigned long )info->fbcon_par == (unsigned long )((void *)0)) {
    con2fb_acquire_newinfo(vc, info, (int )vc->vc_num, -1);
  } else {
  }
  t = (struct display *)(& fb_display) + (unsigned long )fg_console;
  if ((unsigned long )p->fontdata == (unsigned long )((u_char const *)0U)) {
    if ((unsigned long )t->fontdata != (unsigned long )((u_char const *)0U)) {
      fvc = vc_cons[fg_console].d;
      tmp___0 = (u_char const *)fvc->vc_font.data;
      p->fontdata = tmp___0;
      vc->vc_font.data = (unsigned char *)tmp___0;
      vc->vc_font.width = fvc->vc_font.width;
      vc->vc_font.height = fvc->vc_font.height;
      p->userfont = t->userfont;
      if (p->userfont != 0) {
        *((int *)p->fontdata + 0xffffffffffffffffUL) = *((int *)p->fontdata + 0xffffffffffffffffUL) + 1;
      } else {
      }
    } else {
      font = (struct font_desc const *)0;
      if ((int )((signed char )fontname[0]) == 0) {
        font = get_default_font((int )info->var.xres, (int )info->var.yres, info->pixmap.blit_x,
                                info->pixmap.blit_y);
      } else {
        font = find_font((char const *)(& fontname));
        if ((unsigned long )font == (unsigned long )((struct font_desc const *)0)) {
          font = get_default_font((int )info->var.xres, (int )info->var.yres, info->pixmap.blit_x,
                                  info->pixmap.blit_y);
        } else {
        }
      }
      vc->vc_font.width = (unsigned int )font->width;
      vc->vc_font.height = (unsigned int )font->height;
      tmp___1 = (u_char const *)font->data;
      p->fontdata = tmp___1;
      vc->vc_font.data = (unsigned char *)tmp___1;
      vc->vc_font.charcount = 256U;
    }
  } else {
  }
  if (p->userfont != 0) {
    charcnt = *((int *)p->fontdata + 0xfffffffffffffffdUL);
  } else {
  }
  vc->vc_panic_force_write = (info->flags & 2097152) != 0;
  tmp___2 = fb_get_color_depth(& info->var, & info->fix);
  vc->vc_can_do_color = tmp___2 != 1;
  vc->vc_complement_mask = (unsigned int )*((unsigned char *)vc + 1387UL) != 0U ? 30464U : 2048U;
  if (charcnt == 256) {
    vc->vc_hi_font_mask = 0U;
  } else {
    vc->vc_hi_font_mask = 256U;
    if ((unsigned int )*((unsigned char *)vc + 1387UL) != 0U) {
      vc->vc_complement_mask = (int )vc->vc_complement_mask << 1U;
    } else {
    }
  }
  if ((unsigned long )*(svc->vc_uni_pagedir_loc) == (unsigned long )((struct uni_pagedir *)0)) {
    con_set_default_unimap(svc);
  } else {
  }
  if ((unsigned long )*(vc->vc_uni_pagedir_loc) == (unsigned long )((struct uni_pagedir *)0)) {
    con_copy_unimap(vc, svc);
  } else {
  }
  ops = (struct fbcon_ops *)info->fbcon_par;
  p->con_rotate = initial_rotation;
  set_blitting_type(vc, info);
  cols = (int )vc->vc_cols;
  rows = (int )vc->vc_rows;
  _r = info->var.xres;
  _v = info->var.yres;
  new_cols = (int )(ops->rotate == 0 || ops->rotate == 2 ? _r : _v);
  _r___0 = info->var.yres;
  _v___0 = info->var.xres;
  new_rows = (int )(ops->rotate == 0 || ops->rotate == 2 ? _r___0 : _v___0);
  new_cols = (int )((unsigned int )new_cols / vc->vc_font.width);
  new_rows = (int )((unsigned int )new_rows / vc->vc_font.height);
  if ((unsigned long )*(vc->vc_display_fg) == (unsigned long )vc && (unsigned int )vc->vc_mode == 0U) {
    if ((unsigned long )(info->fbops)->fb_set_par != (unsigned long )((int (*)(struct fb_info * ))0) && (ops->flags & 1) == 0) {
      ret = (*((info->fbops)->fb_set_par))(info);
      if (ret != 0) {
        printk("\vfbcon_init: detected unhandled fb_set_par error, error code %d\n",
               ret);
      } else {
      }
    } else {
    }
    ops->flags = ops->flags | 1;
  } else {
  }
  ops->graphics = 0;
  if ((cap & 256) != 0 && (cap & 2) == 0) {
    p->scrollmode = 1U;
  } else {
    p->scrollmode = 4U;
  }
  if (init != 0) {
    vc->vc_cols = (unsigned int )new_cols;
    vc->vc_rows = (unsigned int )new_rows;
  } else {
    vc_resize(vc, (unsigned int )new_cols, (unsigned int )new_rows);
  }
  if (logo != 0) {
    fbcon_prepare_logo(vc, info, cols, rows, new_cols, new_rows);
  } else {
  }
  if ((unsigned long )vc == (unsigned long )svc && softback_buf != 0UL) {
    fbcon_update_softback(vc);
  } else {
  }
  if ((unsigned long )ops->rotate_font != (unsigned long )((int (*)(struct fb_info * ,
                                                                    struct vc_data * ))0)) {
    tmp___3 = (*(ops->rotate_font))(info, vc);
    if (tmp___3 != 0) {
      ops->rotate = 0;
      set_blitting_type(vc, info);
    } else {
    }
  } else {
  }
  ops->p = (struct display *)(& fb_display) + (unsigned long )fg_console;
  return;
}
}
static void fbcon_free_font(struct display *p , bool freefont )
{
  {
  if (((int )freefont && p->userfont != 0) && (unsigned long )p->fontdata != (unsigned long )((u_char const *)0U)) {
    *((int *)p->fontdata + 0xffffffffffffffffUL) = *((int *)p->fontdata + 0xffffffffffffffffUL) - 1;
    if (*((int *)p->fontdata + 0xffffffffffffffffUL) == 0) {
      kfree((void const *)p->fontdata + 0xfffffffffffffff0UL);
    } else {
    }
  } else {
  }
  p->fontdata = (u_char const *)0U;
  p->userfont = 0;
  return;
}
}
static void fbcon_deinit(struct vc_data *vc )
{
  struct display *p ;
  struct fb_info *info ;
  struct fbcon_ops *ops ;
  int idx ;
  bool free_font ;
  int tmp ;
  {
  p = (struct display *)(& fb_display) + (unsigned long )vc->vc_num;
  free_font = 1;
  idx = (int )con2fb_map[(int )vc->vc_num];
  if (idx == -1) {
    goto finished;
  } else {
  }
  info = registered_fb[idx];
  if ((unsigned long )info == (unsigned long )((struct fb_info *)0)) {
    goto finished;
  } else {
  }
  if ((info->flags & 524288) != 0) {
    free_font = 0;
  } else {
  }
  ops = (struct fbcon_ops *)info->fbcon_par;
  if ((unsigned long )ops == (unsigned long )((struct fbcon_ops *)0)) {
    goto finished;
  } else {
  }
  if ((unsigned long )*(vc->vc_display_fg) == (unsigned long )vc) {
    fbcon_del_cursor_timer(info);
  } else {
  }
  ops->flags = ops->flags & -2;
  finished:
  fbcon_free_font(p, (int )free_font);
  if ((int )free_font) {
    vc->vc_font.data = (unsigned char *)0U;
  } else {
  }
  tmp = con_is_bound(& fb_con);
  if (tmp == 0) {
    fbcon_exit();
  } else {
  }
  return;
}
}
static void fbcon_clear(struct vc_data *vc , int sy , int sx , int height , int width )
{
  struct fb_info *info ;
  struct fbcon_ops *ops ;
  struct display *p ;
  u_int y_break ;
  int tmp ;
  u_int b ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  ops = (struct fbcon_ops *)info->fbcon_par;
  p = (struct display *)(& fb_display) + (unsigned long )vc->vc_num;
  tmp = fbcon_is_inactive(vc, info);
  if (tmp != 0) {
    return;
  } else {
  }
  if (height == 0 || width == 0) {
    return;
  } else {
  }
  if ((unsigned int )sy < vc->vc_top && vc->vc_top == (unsigned int )logo_lines) {
    vc->vc_top = 0U;
    fbcon_clear_margins(vc, 0);
  } else {
  }
  y_break = (u_int )(p->vrows - (int )p->yscroll);
  if ((u_int )sy < y_break && (u_int )((sy + height) + -1) >= y_break) {
    b = y_break - (u_int )sy;
    tmp___0 = real_y(p, sy);
    (*(ops->clear))(vc, info, tmp___0, sx, (int )b, width);
    tmp___1 = real_y(p, (int )((u_int )sy + b));
    (*(ops->clear))(vc, info, tmp___1, sx, (int )((u_int )height - b), width);
  } else {
    tmp___2 = real_y(p, sy);
    (*(ops->clear))(vc, info, tmp___2, sx, height, width);
  }
  return;
}
}
static void fbcon_putcs(struct vc_data *vc , unsigned short const *s , int count ,
                        int ypos , int xpos )
{
  struct fb_info *info ;
  struct display *p ;
  struct fbcon_ops *ops ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  p = (struct display *)(& fb_display) + (unsigned long )vc->vc_num;
  ops = (struct fbcon_ops *)info->fbcon_par;
  tmp___2 = fbcon_is_inactive(vc, info);
  if (tmp___2 == 0) {
    tmp = get_color(vc, info, (int )*s, 0);
    tmp___0 = get_color(vc, info, (int )*s, 1);
    tmp___1 = real_y(p, ypos);
    (*(ops->putcs))(vc, info, s, count, tmp___1, xpos, tmp___0, tmp);
  } else {
  }
  return;
}
}
static void fbcon_putc(struct vc_data *vc , int c , int ypos , int xpos )
{
  unsigned short chr ;
  {
  chr = (unsigned short )c;
  fbcon_putcs(vc, (unsigned short const *)(& chr), 1, ypos, xpos);
  return;
}
}
static void fbcon_clear_margins(struct vc_data *vc , int bottom_only )
{
  struct fb_info *info ;
  struct fbcon_ops *ops ;
  int tmp ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  ops = (struct fbcon_ops *)info->fbcon_par;
  tmp = fbcon_is_inactive(vc, info);
  if (tmp == 0) {
    (*(ops->clear_margins))(vc, info, bottom_only);
  } else {
  }
  return;
}
}
static void fbcon_cursor(struct vc_data *vc , int mode )
{
  struct fb_info *info ;
  struct fbcon_ops *ops ;
  int y ;
  int c ;
  int tmp ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  ops = (struct fbcon_ops *)info->fbcon_par;
  c = (int )*((u16 *)vc->vc_pos);
  tmp = fbcon_is_inactive(vc, info);
  if (tmp != 0 || (unsigned int )*((unsigned char *)vc + 1384UL) == 0U) {
    return;
  } else {
  }
  tmp___0 = msecs_to_jiffies((unsigned int const )vc->vc_cur_blink_ms);
  ops->cur_blink_jiffies = (int )tmp___0;
  if ((vc->vc_cursor_type & 16U) != 0U) {
    fbcon_del_cursor_timer(info);
  } else {
    fbcon_add_cursor_timer(info);
  }
  ops->cursor_flash = mode != 2;
  if ((mode & 8) != 0) {
    mode = mode & -9;
    y = softback_lines;
  } else {
    if (softback_lines != 0) {
      fbcon_set_origin(vc);
    } else {
    }
    y = 0;
  }
  tmp___1 = get_color(vc, info, (int )((u16 )c), 0);
  tmp___2 = get_color(vc, info, (int )((u16 )c), 1);
  (*(ops->cursor))(vc, info, mode, y, tmp___2, tmp___1);
  return;
}
}
static int scrollback_phys_max = 0;
static int scrollback_max = 0;
static int scrollback_current = 0;
static void fbcon_set_disp(struct fb_info *info , struct fb_var_screeninfo *var ,
                           int unit )
{
  struct display *p ;
  struct display *t ;
  struct vc_data **default_mode ;
  struct vc_data *vc ;
  struct vc_data *svc ;
  struct fbcon_ops *ops ;
  int rows ;
  int cols ;
  int charcnt ;
  int tmp ;
  u_char const *tmp___0 ;
  int tmp___1 ;
  __u32 _r ;
  __u32 _v ;
  __u32 _r___0 ;
  __u32 _v___0 ;
  {
  ops = (struct fbcon_ops *)info->fbcon_par;
  charcnt = 256;
  p = (struct display *)(& fb_display) + (unsigned long )unit;
  tmp = var_to_display(p, var, info);
  if (tmp != 0) {
    return;
  } else {
  }
  vc = vc_cons[unit].d;
  if ((unsigned long )vc == (unsigned long )((struct vc_data *)0)) {
    return;
  } else {
  }
  default_mode = vc->vc_display_fg;
  svc = *default_mode;
  t = (struct display *)(& fb_display) + (unsigned long )svc->vc_num;
  if ((unsigned long )vc->vc_font.data == (unsigned long )((unsigned char *)0U)) {
    tmp___0 = t->fontdata;
    p->fontdata = tmp___0;
    vc->vc_font.data = (unsigned char *)tmp___0;
    vc->vc_font.width = (*default_mode)->vc_font.width;
    vc->vc_font.height = (*default_mode)->vc_font.height;
    p->userfont = t->userfont;
    if (p->userfont != 0) {
      *((int *)p->fontdata + 0xffffffffffffffffUL) = *((int *)p->fontdata + 0xffffffffffffffffUL) + 1;
    } else {
    }
  } else {
  }
  if (p->userfont != 0) {
    charcnt = *((int *)p->fontdata + 0xfffffffffffffffdUL);
  } else {
  }
  var->activate = 0U;
  info->var.activate = var->activate;
  var->yoffset = info->var.yoffset;
  var->xoffset = info->var.xoffset;
  fb_set_var(info, var);
  ops->var = info->var;
  tmp___1 = fb_get_color_depth(& info->var, & info->fix);
  vc->vc_can_do_color = tmp___1 != 1;
  vc->vc_complement_mask = (unsigned int )*((unsigned char *)vc + 1387UL) != 0U ? 30464U : 2048U;
  if (charcnt == 256) {
    vc->vc_hi_font_mask = 0U;
  } else {
    vc->vc_hi_font_mask = 256U;
    if ((unsigned int )*((unsigned char *)vc + 1387UL) != 0U) {
      vc->vc_complement_mask = (int )vc->vc_complement_mask << 1U;
    } else {
    }
  }
  if ((unsigned long )*(svc->vc_uni_pagedir_loc) == (unsigned long )((struct uni_pagedir *)0)) {
    con_set_default_unimap(svc);
  } else {
  }
  if ((unsigned long )*(vc->vc_uni_pagedir_loc) == (unsigned long )((struct uni_pagedir *)0)) {
    con_copy_unimap(vc, svc);
  } else {
  }
  _r = info->var.xres;
  _v = info->var.yres;
  cols = (int )(ops->rotate == 0 || ops->rotate == 2 ? _r : _v);
  _r___0 = info->var.yres;
  _v___0 = info->var.xres;
  rows = (int )(ops->rotate == 0 || ops->rotate == 2 ? _r___0 : _v___0);
  cols = (int )((unsigned int )cols / vc->vc_font.width);
  rows = (int )((unsigned int )rows / vc->vc_font.height);
  vc_resize(vc, (unsigned int )cols, (unsigned int )rows);
  if ((unsigned long )*(vc->vc_display_fg) == (unsigned long )vc) {
    redraw_screen(vc, 0);
    if (softback_buf != 0UL) {
      fbcon_update_softback(vc);
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void ywrap_up(struct vc_data *vc , int count )
{
  struct fb_info *info ;
  struct fbcon_ops *ops ;
  struct display *p ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  ops = (struct fbcon_ops *)info->fbcon_par;
  p = (struct display *)(& fb_display) + (unsigned long )vc->vc_num;
  p->yscroll = (short )((int )((unsigned short )p->yscroll) + (int )((unsigned short )count));
  if ((int )p->yscroll >= p->vrows) {
    p->yscroll = (short )((int )((unsigned short )p->yscroll) - (int )((unsigned short )p->vrows));
  } else {
  }
  ops->var.xoffset = 0U;
  ops->var.yoffset = (unsigned int )p->yscroll * vc->vc_font.height;
  ops->var.vmode = ops->var.vmode | 256U;
  (*(ops->update_start))(info);
  scrollback_max = scrollback_max + count;
  if (scrollback_max > scrollback_phys_max) {
    scrollback_max = scrollback_phys_max;
  } else {
  }
  scrollback_current = 0;
  return;
}
}
__inline static void ywrap_down(struct vc_data *vc , int count )
{
  struct fb_info *info ;
  struct fbcon_ops *ops ;
  struct display *p ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  ops = (struct fbcon_ops *)info->fbcon_par;
  p = (struct display *)(& fb_display) + (unsigned long )vc->vc_num;
  p->yscroll = (short )((int )((unsigned short )p->yscroll) - (int )((unsigned short )count));
  if ((int )p->yscroll < 0) {
    p->yscroll = (short )((int )((unsigned short )p->yscroll) + (int )((unsigned short )p->vrows));
  } else {
  }
  ops->var.xoffset = 0U;
  ops->var.yoffset = (unsigned int )p->yscroll * vc->vc_font.height;
  ops->var.vmode = ops->var.vmode | 256U;
  (*(ops->update_start))(info);
  scrollback_max = scrollback_max - count;
  if (scrollback_max < 0) {
    scrollback_max = 0;
  } else {
  }
  scrollback_current = 0;
  return;
}
}
__inline static void ypan_up(struct vc_data *vc , int count )
{
  struct fb_info *info ;
  struct display *p ;
  struct fbcon_ops *ops ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  p = (struct display *)(& fb_display) + (unsigned long )vc->vc_num;
  ops = (struct fbcon_ops *)info->fbcon_par;
  p->yscroll = (short )((int )((unsigned short )p->yscroll) + (int )((unsigned short )count));
  if ((unsigned int )p->yscroll > (unsigned int )p->vrows - vc->vc_rows) {
    (*(ops->bmove))(vc, info, (int )((unsigned int )p->vrows - vc->vc_rows), 0, 0,
                    0, (int )vc->vc_rows, (int )vc->vc_cols);
    p->yscroll = (short )((int )((unsigned short )p->yscroll) + ((int )((unsigned short )vc->vc_rows) - (int )((unsigned short )p->vrows)));
  } else {
  }
  ops->var.xoffset = 0U;
  ops->var.yoffset = (unsigned int )p->yscroll * vc->vc_font.height;
  ops->var.vmode = ops->var.vmode & 4294967039U;
  (*(ops->update_start))(info);
  fbcon_clear_margins(vc, 1);
  scrollback_max = scrollback_max + count;
  if (scrollback_max > scrollback_phys_max) {
    scrollback_max = scrollback_phys_max;
  } else {
  }
  scrollback_current = 0;
  return;
}
}
__inline static void ypan_up_redraw(struct vc_data *vc , int t , int count )
{
  struct fb_info *info ;
  struct fbcon_ops *ops ;
  struct display *p ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  ops = (struct fbcon_ops *)info->fbcon_par;
  p = (struct display *)(& fb_display) + (unsigned long )vc->vc_num;
  p->yscroll = (short )((int )((unsigned short )p->yscroll) + (int )((unsigned short )count));
  if ((unsigned int )p->yscroll > (unsigned int )p->vrows - vc->vc_rows) {
    p->yscroll = (short )((int )((unsigned short )p->yscroll) + ((int )((unsigned short )vc->vc_rows) - (int )((unsigned short )p->vrows)));
    fbcon_redraw_move(vc, p, t + count, (int )(vc->vc_rows - (unsigned int )count),
                      t);
  } else {
  }
  ops->var.xoffset = 0U;
  ops->var.yoffset = (unsigned int )p->yscroll * vc->vc_font.height;
  ops->var.vmode = ops->var.vmode & 4294967039U;
  (*(ops->update_start))(info);
  fbcon_clear_margins(vc, 1);
  scrollback_max = scrollback_max + count;
  if (scrollback_max > scrollback_phys_max) {
    scrollback_max = scrollback_phys_max;
  } else {
  }
  scrollback_current = 0;
  return;
}
}
__inline static void ypan_down(struct vc_data *vc , int count )
{
  struct fb_info *info ;
  struct display *p ;
  struct fbcon_ops *ops ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  p = (struct display *)(& fb_display) + (unsigned long )vc->vc_num;
  ops = (struct fbcon_ops *)info->fbcon_par;
  p->yscroll = (short )((int )((unsigned short )p->yscroll) - (int )((unsigned short )count));
  if ((int )p->yscroll < 0) {
    (*(ops->bmove))(vc, info, 0, 0, (int )((unsigned int )p->vrows - vc->vc_rows),
                    0, (int )vc->vc_rows, (int )vc->vc_cols);
    p->yscroll = (short )((int )((unsigned short )p->yscroll) + ((int )((unsigned short )p->vrows) - (int )((unsigned short )vc->vc_rows)));
  } else {
  }
  ops->var.xoffset = 0U;
  ops->var.yoffset = (unsigned int )p->yscroll * vc->vc_font.height;
  ops->var.vmode = ops->var.vmode & 4294967039U;
  (*(ops->update_start))(info);
  fbcon_clear_margins(vc, 1);
  scrollback_max = scrollback_max - count;
  if (scrollback_max < 0) {
    scrollback_max = 0;
  } else {
  }
  scrollback_current = 0;
  return;
}
}
__inline static void ypan_down_redraw(struct vc_data *vc , int t , int count )
{
  struct fb_info *info ;
  struct fbcon_ops *ops ;
  struct display *p ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  ops = (struct fbcon_ops *)info->fbcon_par;
  p = (struct display *)(& fb_display) + (unsigned long )vc->vc_num;
  p->yscroll = (short )((int )((unsigned short )p->yscroll) - (int )((unsigned short )count));
  if ((int )p->yscroll < 0) {
    p->yscroll = (short )((int )((unsigned short )p->yscroll) + ((int )((unsigned short )p->vrows) - (int )((unsigned short )vc->vc_rows)));
    fbcon_redraw_move(vc, p, t, (int )(vc->vc_rows - (unsigned int )count), t + count);
  } else {
  }
  ops->var.xoffset = 0U;
  ops->var.yoffset = (unsigned int )p->yscroll * vc->vc_font.height;
  ops->var.vmode = ops->var.vmode & 4294967039U;
  (*(ops->update_start))(info);
  fbcon_clear_margins(vc, 1);
  scrollback_max = scrollback_max - count;
  if (scrollback_max < 0) {
    scrollback_max = 0;
  } else {
  }
  scrollback_current = 0;
  return;
}
}
static void fbcon_redraw_softback(struct vc_data *vc , struct display *p , long delta )
{
  int count ;
  unsigned short *d ;
  unsigned short *s ;
  unsigned long n ;
  int line ;
  unsigned short *start ;
  unsigned short *le ;
  unsigned short c ;
  int x ;
  unsigned short attr ;
  int tmp ;
  {
  count = (int )vc->vc_rows;
  line = 0;
  d = (unsigned short *)softback_curr;
  if ((unsigned long )((unsigned short *)softback_in) == (unsigned long )d) {
    d = (unsigned short *)vc->vc_origin;
  } else {
  }
  n = (unsigned long )((long )vc->vc_size_row * delta) + softback_curr;
  softback_lines = (int )((unsigned int )softback_lines - (unsigned int )delta);
  if (delta < 0L) {
    if (softback_curr < softback_top && n < softback_buf) {
      n = (softback_end - softback_buf) + n;
      if (n < softback_top) {
        softback_lines = (int )((unsigned int )softback_lines - (unsigned int )((softback_top - n) / (unsigned long )vc->vc_size_row));
        n = softback_top;
      } else {
      }
    } else
    if (softback_curr >= softback_top && n < softback_top) {
      softback_lines = (int )((unsigned int )softback_lines - (unsigned int )((softback_top - n) / (unsigned long )vc->vc_size_row));
      n = softback_top;
    } else {
    }
  } else
  if (softback_curr > softback_in && n >= softback_end) {
    n = (softback_buf - softback_end) + n;
    if (n > softback_in) {
      n = softback_in;
      softback_lines = 0;
    } else {
    }
  } else
  if (softback_curr <= softback_in && n > softback_in) {
    n = softback_in;
    softback_lines = 0;
  } else {
  }
  if (n == softback_curr) {
    return;
  } else {
  }
  softback_curr = n;
  s = (unsigned short *)softback_curr;
  if ((unsigned long )((unsigned short *)softback_in) == (unsigned long )s) {
    s = (unsigned short *)vc->vc_origin;
  } else {
  }
  goto ldv_34086;
  ldv_34085:
  x = 0;
  attr = 1U;
  start = s;
  le = (unsigned short *)((unsigned long )vc->vc_size_row + (unsigned long )s);
  ldv_34083:
  c = *s;
  if ((int )attr != ((int )c & 65280)) {
    attr = (unsigned int )c & 65280U;
    if ((unsigned long )s > (unsigned long )start) {
      fbcon_putcs(vc, (unsigned short const *)start, (int )(((long )s - (long )start) / 2L),
                  line, x);
      x = (int )((unsigned int )(((long )s - (long )start) / 2L) + (unsigned int )x);
      start = s;
    } else {
    }
  } else {
  }
  if ((int )*d == (int )c) {
    if ((unsigned long )s > (unsigned long )start) {
      fbcon_putcs(vc, (unsigned short const *)start, (int )(((long )s - (long )start) / 2L),
                  line, x);
      x = (int )(((unsigned int )(((long )s - (long )start) / 2L) + (unsigned int )x) + 1U);
      start = s + 1UL;
    } else {
      x = x + 1;
      start = start + 1;
    }
  } else {
  }
  s = s + 1;
  d = d + 1;
  if ((unsigned long )s < (unsigned long )le) {
    goto ldv_34083;
  } else {
  }
  if ((unsigned long )s > (unsigned long )start) {
    fbcon_putcs(vc, (unsigned short const *)start, (int )(((long )s - (long )start) / 2L),
                line, x);
  } else {
  }
  line = line + 1;
  if ((unsigned long )((unsigned short *)softback_end) == (unsigned long )d) {
    d = (unsigned short *)softback_buf;
  } else {
  }
  if ((unsigned long )((unsigned short *)softback_in) == (unsigned long )d) {
    d = (unsigned short *)vc->vc_origin;
  } else {
  }
  if ((unsigned long )((unsigned short *)softback_end) == (unsigned long )s) {
    s = (unsigned short *)softback_buf;
  } else {
  }
  if ((unsigned long )((unsigned short *)softback_in) == (unsigned long )s) {
    s = (unsigned short *)vc->vc_origin;
  } else {
  }
  ldv_34086:
  tmp = count;
  count = count - 1;
  if (tmp != 0) {
    goto ldv_34085;
  } else {
  }
  return;
}
}
static void fbcon_redraw_move(struct vc_data *vc , struct display *p , int line ,
                              int count , int dy )
{
  unsigned short *s ;
  unsigned short *start ;
  unsigned short *le ;
  unsigned short c ;
  int x ;
  unsigned short attr ;
  int tmp ;
  {
  s = (unsigned short *)(vc->vc_origin + (unsigned long )(vc->vc_size_row * (unsigned int )line));
  goto ldv_34104;
  ldv_34103:
  start = s;
  le = (unsigned short *)((unsigned long )vc->vc_size_row + (unsigned long )s);
  x = 0;
  attr = 1U;
  ldv_34101:
  c = *s;
  if ((int )attr != ((int )c & 65280)) {
    attr = (unsigned int )c & 65280U;
    if ((unsigned long )s > (unsigned long )start) {
      fbcon_putcs(vc, (unsigned short const *)start, (int )(((long )s - (long )start) / 2L),
                  dy, x);
      x = (int )((unsigned int )(((long )s - (long )start) / 2L) + (unsigned int )x);
      start = s;
    } else {
    }
  } else {
  }
  console_conditional_schedule();
  s = s + 1;
  if ((unsigned long )s < (unsigned long )le) {
    goto ldv_34101;
  } else {
  }
  if ((unsigned long )s > (unsigned long )start) {
    fbcon_putcs(vc, (unsigned short const *)start, (int )(((long )s - (long )start) / 2L),
                dy, x);
  } else {
  }
  console_conditional_schedule();
  dy = dy + 1;
  ldv_34104:
  tmp = count;
  count = count - 1;
  if (tmp != 0) {
    goto ldv_34103;
  } else {
  }
  return;
}
}
static void fbcon_redraw_blit(struct vc_data *vc , struct fb_info *info , struct display *p ,
                              int line , int count , int ycount )
{
  int offset ;
  unsigned short *d ;
  unsigned short *s ;
  struct fbcon_ops *ops ;
  unsigned short *start ;
  unsigned short *le ;
  unsigned short c ;
  int x ;
  int tmp ;
  {
  offset = (int )(vc->vc_cols * (unsigned int )ycount);
  d = (unsigned short *)(vc->vc_origin + (unsigned long )(vc->vc_size_row * (unsigned int )line));
  s = d + (unsigned long )offset;
  ops = (struct fbcon_ops *)info->fbcon_par;
  goto ldv_34125;
  ldv_34124:
  start = s;
  le = (unsigned short *)((unsigned long )vc->vc_size_row + (unsigned long )s);
  x = 0;
  ldv_34122:
  c = *s;
  if ((int )*d == (int )c) {
    if ((unsigned long )s > (unsigned long )start) {
      (*(ops->bmove))(vc, info, line + ycount, x, line, x, 1, (int )(((long )s - (long )start) / 2L));
      x = (int )(((unsigned int )(((long )s - (long )start) / 2L) + (unsigned int )x) + 1U);
      start = s + 1UL;
    } else {
      x = x + 1;
      start = start + 1;
    }
  } else {
  }
  *d = c;
  console_conditional_schedule();
  s = s + 1;
  d = d + 1;
  if ((unsigned long )s < (unsigned long )le) {
    goto ldv_34122;
  } else {
  }
  if ((unsigned long )s > (unsigned long )start) {
    (*(ops->bmove))(vc, info, line + ycount, x, line, x, 1, (int )(((long )s - (long )start) / 2L));
  } else {
  }
  console_conditional_schedule();
  if (ycount > 0) {
    line = line + 1;
  } else {
    line = line - 1;
    s = s + - ((unsigned long )vc->vc_size_row);
    d = d + - ((unsigned long )vc->vc_size_row);
  }
  ldv_34125:
  tmp = count;
  count = count - 1;
  if (tmp != 0) {
    goto ldv_34124;
  } else {
  }
  return;
}
}
static void fbcon_redraw(struct vc_data *vc , struct display *p , int line , int count ,
                         int offset )
{
  unsigned short *d ;
  unsigned short *s ;
  unsigned short *start ;
  unsigned short *le ;
  unsigned short c ;
  int x ;
  unsigned short attr ;
  int tmp ;
  {
  d = (unsigned short *)(vc->vc_origin + (unsigned long )(vc->vc_size_row * (unsigned int )line));
  s = d + (unsigned long )offset;
  goto ldv_34144;
  ldv_34143:
  start = s;
  le = (unsigned short *)((unsigned long )vc->vc_size_row + (unsigned long )s);
  x = 0;
  attr = 1U;
  ldv_34141:
  c = *s;
  if ((int )attr != ((int )c & 65280)) {
    attr = (unsigned int )c & 65280U;
    if ((unsigned long )s > (unsigned long )start) {
      fbcon_putcs(vc, (unsigned short const *)start, (int )(((long )s - (long )start) / 2L),
                  line, x);
      x = (int )((unsigned int )(((long )s - (long )start) / 2L) + (unsigned int )x);
      start = s;
    } else {
    }
  } else {
  }
  if ((int )*d == (int )c) {
    if ((unsigned long )s > (unsigned long )start) {
      fbcon_putcs(vc, (unsigned short const *)start, (int )(((long )s - (long )start) / 2L),
                  line, x);
      x = (int )(((unsigned int )(((long )s - (long )start) / 2L) + (unsigned int )x) + 1U);
      start = s + 1UL;
    } else {
      x = x + 1;
      start = start + 1;
    }
  } else {
  }
  *d = c;
  console_conditional_schedule();
  s = s + 1;
  d = d + 1;
  if ((unsigned long )s < (unsigned long )le) {
    goto ldv_34141;
  } else {
  }
  if ((unsigned long )s > (unsigned long )start) {
    fbcon_putcs(vc, (unsigned short const *)start, (int )(((long )s - (long )start) / 2L),
                line, x);
  } else {
  }
  console_conditional_schedule();
  if (offset > 0) {
    line = line + 1;
  } else {
    line = line - 1;
    s = s + - ((unsigned long )vc->vc_size_row);
    d = d + - ((unsigned long )vc->vc_size_row);
  }
  ldv_34144:
  tmp = count;
  count = count - 1;
  if (tmp != 0) {
    goto ldv_34143;
  } else {
  }
  return;
}
}
__inline static void fbcon_softback_note(struct vc_data *vc , int t , int count )
{
  unsigned short *p ;
  {
  if ((int )vc->vc_num != fg_console) {
    return;
  } else {
  }
  p = (unsigned short *)(vc->vc_origin + (unsigned long )(vc->vc_size_row * (unsigned int )t));
  goto ldv_34153;
  ldv_34152:
  scr_memcpyw((u16 *)softback_in, (u16 const *)p, vc->vc_size_row);
  count = count - 1;
  p = (unsigned short *)((unsigned long )vc->vc_size_row + (unsigned long )p);
  softback_in = (unsigned long )vc->vc_size_row + softback_in;
  if (softback_in == softback_end) {
    softback_in = softback_buf;
  } else {
  }
  if (softback_in == softback_top) {
    softback_top = (unsigned long )vc->vc_size_row + softback_top;
    if (softback_top == softback_end) {
      softback_top = softback_buf;
    } else {
    }
  } else {
  }
  ldv_34153: ;
  if (count != 0) {
    goto ldv_34152;
  } else {
  }
  softback_curr = softback_in;
  return;
}
}
static int fbcon_scroll(struct vc_data *vc , int t , int b , int dir , int count )
{
  struct fb_info *info ;
  struct display *p ;
  int scroll_partial ;
  int tmp ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  p = (struct display *)(& fb_display) + (unsigned long )vc->vc_num;
  scroll_partial = info->flags & 64;
  tmp = fbcon_is_inactive(vc, info);
  if (tmp != 0) {
    return (-22);
  } else {
  }
  fbcon_cursor(vc, 2);
  switch (dir) {
  case 1: ;
  if ((unsigned int )count > vc->vc_rows) {
    count = (int )vc->vc_rows;
  } else {
  }
  if (softback_top != 0UL) {
    fbcon_softback_note(vc, t, count);
  } else {
  }
  if (logo_shown >= 0) {
    goto redraw_up;
  } else {
  }
  switch ((int )p->scrollmode) {
  case 1:
  fbcon_redraw_blit(vc, info, p, t, (b - t) - count, count);
  fbcon_clear(vc, b - count, 0, count, (int )vc->vc_cols);
  scr_memsetw((u16 *)(vc->vc_origin + (unsigned long )(vc->vc_size_row * (unsigned int )(b - count))),
              (int )vc->vc_video_erase_char, vc->vc_size_row * (unsigned int )count);
  return (1);
  case 3: ;
  if ((unsigned int )((b - t) - count) > vc->vc_rows * 3U >> 2) {
    if (t > 0) {
      fbcon_bmove(vc, 0, 0, count, 0, t, (int )vc->vc_cols);
    } else {
    }
    ywrap_up(vc, count);
    if (vc->vc_rows != (unsigned int )b) {
      fbcon_bmove(vc, b - count, 0, b, 0, (int )(vc->vc_rows - (unsigned int )b),
                  (int )vc->vc_cols);
    } else {
    }
  } else
  if ((info->flags & 128) != 0) {
    fbcon_bmove(vc, t + count, 0, t, 0, (b - t) - count, (int )vc->vc_cols);
  } else {
    goto redraw_up;
  }
  fbcon_clear(vc, b - count, 0, count, (int )vc->vc_cols);
  goto ldv_34169;
  case 5: ;
  if ((unsigned int )((int )p->yscroll + count) <= ((unsigned int )p->vrows - vc->vc_rows) * 2U && ((scroll_partial == 0 && (unsigned int )(b - t) == vc->vc_rows) || (scroll_partial != 0 && (unsigned int )((b - t) - count) > vc->vc_rows * 3U >> 2))) {
    if (t > 0) {
      fbcon_redraw_move(vc, p, 0, t, count);
    } else {
    }
    ypan_up_redraw(vc, t, count);
    if (vc->vc_rows != (unsigned int )b) {
      fbcon_redraw_move(vc, p, b, (int )(vc->vc_rows - (unsigned int )b), b);
    } else {
    }
  } else {
    fbcon_redraw_move(vc, p, t + count, (b - t) - count, t);
  }
  fbcon_clear(vc, b - count, 0, count, (int )vc->vc_cols);
  goto ldv_34169;
  case 2: ;
  if ((unsigned int )((int )p->yscroll + count) <= ((unsigned int )p->vrows - vc->vc_rows) * 2U && ((scroll_partial == 0 && (unsigned int )(b - t) == vc->vc_rows) || (scroll_partial != 0 && (unsigned int )((b - t) - count) > vc->vc_rows * 3U >> 2))) {
    if (t > 0) {
      fbcon_bmove(vc, 0, 0, count, 0, t, (int )vc->vc_cols);
    } else {
    }
    ypan_up(vc, count);
    if (vc->vc_rows != (unsigned int )b) {
      fbcon_bmove(vc, b - count, 0, b, 0, (int )(vc->vc_rows - (unsigned int )b),
                  (int )vc->vc_cols);
    } else {
    }
  } else
  if ((info->flags & 128) != 0) {
    fbcon_bmove(vc, t + count, 0, t, 0, (b - t) - count, (int )vc->vc_cols);
  } else {
    goto redraw_up;
  }
  fbcon_clear(vc, b - count, 0, count, (int )vc->vc_cols);
  goto ldv_34169;
  case 4: ;
  redraw_up:
  fbcon_redraw(vc, p, t, (b - t) - count, (int )(vc->vc_cols * (unsigned int )count));
  fbcon_clear(vc, b - count, 0, count, (int )vc->vc_cols);
  scr_memsetw((u16 *)(vc->vc_origin + (unsigned long )(vc->vc_size_row * (unsigned int )(b - count))),
              (int )vc->vc_video_erase_char, vc->vc_size_row * (unsigned int )count);
  return (1);
  }
  ldv_34169: ;
  goto ldv_34173;
  case 2: ;
  if ((unsigned int )count > vc->vc_rows) {
    count = (int )vc->vc_rows;
  } else {
  }
  if (logo_shown >= 0) {
    goto redraw_down;
  } else {
  }
  switch ((int )p->scrollmode) {
  case 1:
  fbcon_redraw_blit(vc, info, p, b + -1, (b - t) - count, - count);
  fbcon_clear(vc, t, 0, count, (int )vc->vc_cols);
  scr_memsetw((u16 *)(vc->vc_origin + (unsigned long )(vc->vc_size_row * (unsigned int )t)),
              (int )vc->vc_video_erase_char, vc->vc_size_row * (unsigned int )count);
  return (1);
  case 3: ;
  if ((unsigned int )((b - t) - count) > vc->vc_rows * 3U >> 2) {
    if (vc->vc_rows != (unsigned int )b) {
      fbcon_bmove(vc, b, 0, b - count, 0, (int )(vc->vc_rows - (unsigned int )b),
                  (int )vc->vc_cols);
    } else {
    }
    ywrap_down(vc, count);
    if (t > 0) {
      fbcon_bmove(vc, count, 0, 0, 0, t, (int )vc->vc_cols);
    } else {
    }
  } else
  if ((info->flags & 128) != 0) {
    fbcon_bmove(vc, t, 0, t + count, 0, (b - t) - count, (int )vc->vc_cols);
  } else {
    goto redraw_down;
  }
  fbcon_clear(vc, t, 0, count, (int )vc->vc_cols);
  goto ldv_34178;
  case 2: ;
  if ((unsigned int )(count - (int )p->yscroll) <= (unsigned int )p->vrows - vc->vc_rows && ((scroll_partial == 0 && (unsigned int )(b - t) == vc->vc_rows) || (scroll_partial != 0 && (unsigned int )((b - t) - count) > vc->vc_rows * 3U >> 2))) {
    if (vc->vc_rows != (unsigned int )b) {
      fbcon_bmove(vc, b, 0, b - count, 0, (int )(vc->vc_rows - (unsigned int )b),
                  (int )vc->vc_cols);
    } else {
    }
    ypan_down(vc, count);
    if (t > 0) {
      fbcon_bmove(vc, count, 0, 0, 0, t, (int )vc->vc_cols);
    } else {
    }
  } else
  if ((info->flags & 128) != 0) {
    fbcon_bmove(vc, t, 0, t + count, 0, (b - t) - count, (int )vc->vc_cols);
  } else {
    goto redraw_down;
  }
  fbcon_clear(vc, t, 0, count, (int )vc->vc_cols);
  goto ldv_34178;
  case 5: ;
  if ((unsigned int )(count - (int )p->yscroll) <= (unsigned int )p->vrows - vc->vc_rows && ((scroll_partial == 0 && (unsigned int )(b - t) == vc->vc_rows) || (scroll_partial != 0 && (unsigned int )((b - t) - count) > vc->vc_rows * 3U >> 2))) {
    if (vc->vc_rows != (unsigned int )b) {
      fbcon_redraw_move(vc, p, b, (int )(vc->vc_rows - (unsigned int )b), b - count);
    } else {
    }
    ypan_down_redraw(vc, t, count);
    if (t > 0) {
      fbcon_redraw_move(vc, p, count, t, 0);
    } else {
    }
  } else {
    fbcon_redraw_move(vc, p, t, (b - t) - count, t + count);
  }
  fbcon_clear(vc, t, 0, count, (int )vc->vc_cols);
  goto ldv_34178;
  case 4: ;
  redraw_down:
  fbcon_redraw(vc, p, b + -1, (b - t) - count, (int )((unsigned int )(- count) * vc->vc_cols));
  fbcon_clear(vc, t, 0, count, (int )vc->vc_cols);
  scr_memsetw((u16 *)(vc->vc_origin + (unsigned long )(vc->vc_size_row * (unsigned int )t)),
              (int )vc->vc_video_erase_char, vc->vc_size_row * (unsigned int )count);
  return (1);
  }
  ldv_34178: ;
  }
  ldv_34173: ;
  return (0);
}
}
static void fbcon_bmove(struct vc_data *vc , int sy , int sx , int dy , int dx , int height ,
                        int width )
{
  struct fb_info *info ;
  struct display *p ;
  int tmp ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  p = (struct display *)(& fb_display) + (unsigned long )vc->vc_num;
  tmp = fbcon_is_inactive(vc, info);
  if (tmp != 0) {
    return;
  } else {
  }
  if (width == 0 || height == 0) {
    return;
  } else {
  }
  fbcon_bmove_rec(vc, p, sy, sx, dy, dx, height, width, (u_int )(p->vrows - (int )p->yscroll));
  return;
}
}
static void fbcon_bmove_rec(struct vc_data *vc , struct display *p , int sy , int sx ,
                            int dy , int dx , int height , int width , u_int y_break )
{
  struct fb_info *info ;
  struct fbcon_ops *ops ;
  u_int b ;
  int tmp ;
  int tmp___0 ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  ops = (struct fbcon_ops *)info->fbcon_par;
  if ((u_int )sy < y_break && (u_int )(sy + height) > y_break) {
    b = y_break - (u_int )sy;
    if (dy < sy) {
      fbcon_bmove_rec(vc, p, sy, sx, dy, dx, (int )b, width, y_break);
      fbcon_bmove_rec(vc, p, (int )((u_int )sy + b), sx, (int )((u_int )dy + b), dx,
                      (int )((u_int )height - b), width, y_break);
    } else {
      fbcon_bmove_rec(vc, p, (int )((u_int )sy + b), sx, (int )((u_int )dy + b), dx,
                      (int )((u_int )height - b), width, y_break);
      fbcon_bmove_rec(vc, p, sy, sx, dy, dx, (int )b, width, y_break);
    }
    return;
  } else {
  }
  if ((u_int )dy < y_break && (u_int )(dy + height) > y_break) {
    b = y_break - (u_int )dy;
    if (dy < sy) {
      fbcon_bmove_rec(vc, p, sy, sx, dy, dx, (int )b, width, y_break);
      fbcon_bmove_rec(vc, p, (int )((u_int )sy + b), sx, (int )((u_int )dy + b), dx,
                      (int )((u_int )height - b), width, y_break);
    } else {
      fbcon_bmove_rec(vc, p, (int )((u_int )sy + b), sx, (int )((u_int )dy + b), dx,
                      (int )((u_int )height - b), width, y_break);
      fbcon_bmove_rec(vc, p, sy, sx, dy, dx, (int )b, width, y_break);
    }
    return;
  } else {
  }
  tmp = real_y(p, dy);
  tmp___0 = real_y(p, sy);
  (*(ops->bmove))(vc, info, tmp___0, sx, tmp, dx, height, width);
  return;
}
}
static void updatescrollmode(struct display *p , struct fb_info *info , struct vc_data *vc )
{
  struct fbcon_ops *ops ;
  int fh ;
  int cap ;
  u16 t ;
  int ypan ;
  __u16 _r ;
  __u16 _v ;
  int ywrap ;
  __u16 _r___0 ;
  u16 _v___0 ;
  int yres ;
  __u32 _r___1 ;
  __u32 _v___1 ;
  int vyres ;
  __u32 _r___2 ;
  __u32 _v___2 ;
  int good_pan ;
  int good_wrap ;
  int reading_fast ;
  int fast_copyarea ;
  int fast_imageblit ;
  {
  ops = (struct fbcon_ops *)info->fbcon_par;
  fh = (int )vc->vc_font.height;
  cap = info->flags;
  t = 0U;
  _r = info->fix.ypanstep;
  _v = info->fix.xpanstep;
  ypan = ops->rotate == 0 || ops->rotate == 2 ? (int )_r : (int )_v;
  _r___0 = info->fix.ywrapstep;
  _v___0 = t;
  ywrap = ops->rotate == 0 || ops->rotate == 2 ? (int )_r___0 : (int )_v___0;
  _r___1 = info->var.yres;
  _v___1 = info->var.xres;
  yres = (int )(ops->rotate == 0 || ops->rotate == 2 ? _r___1 : _v___1);
  _r___2 = info->var.yres_virtual;
  _v___2 = info->var.xres_virtual;
  vyres = (int )(ops->rotate == 0 || ops->rotate == 2 ? _r___2 : _v___2);
  good_pan = ((cap & 8192) != 0 && (ypan != 0 && vc->vc_font.height % (unsigned int )ypan == 0U)) && vyres > yres;
  good_wrap = (((cap & 16384) != 0 && (ywrap != 0 && vc->vc_font.height % (unsigned int )ywrap == 0U)) && (vc->vc_font.height != 0U && (unsigned int )vyres % vc->vc_font.height == 0U)) && (vc->vc_font.height != 0U && (unsigned int )yres % vc->vc_font.height == 0U);
  reading_fast = cap & 128;
  fast_copyarea = (cap & 256) != 0 && (cap & 2) == 0;
  fast_imageblit = (cap & 1024) != 0 && (cap & 2) == 0;
  p->vrows = vyres / fh;
  if ((unsigned int )yres > (vc->vc_rows + 1U) * (unsigned int )fh) {
    p->vrows = (int )((unsigned int )p->vrows - ((unsigned int )yres - vc->vc_rows * (unsigned int )fh) / (unsigned int )fh);
  } else {
  }
  if (yres % fh != 0 && vyres % fh < yres % fh) {
    p->vrows = p->vrows - 1;
  } else {
  }
  if (good_wrap != 0 || good_pan != 0) {
    if (reading_fast != 0 || fast_copyarea != 0) {
      p->scrollmode = good_wrap != 0 ? 3U : 2U;
    } else {
      p->scrollmode = good_wrap != 0 ? 4U : 5U;
    }
  } else
  if (reading_fast != 0 || (fast_copyarea != 0 && fast_imageblit == 0)) {
    p->scrollmode = 1U;
  } else {
    p->scrollmode = 4U;
  }
  return;
}
}
static int fbcon_resize(struct vc_data *vc , unsigned int width , unsigned int height ,
                        unsigned int user )
{
  struct fb_info *info ;
  struct fbcon_ops *ops ;
  struct display *p ;
  struct fb_var_screeninfo var ;
  int x_diff ;
  int y_diff ;
  int virt_w ;
  int virt_h ;
  int virt_fw ;
  int virt_fh ;
  unsigned int _r ;
  unsigned int _v ;
  unsigned int _r___0 ;
  unsigned int _v___0 ;
  unsigned int _r___1 ;
  unsigned int _v___1 ;
  unsigned int _r___2 ;
  unsigned int _v___2 ;
  struct fb_videomode const *mode ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  ops = (struct fbcon_ops *)info->fbcon_par;
  p = (struct display *)(& fb_display) + (unsigned long )vc->vc_num;
  var = info->var;
  _r = width;
  _v = height;
  virt_w = (int )(ops->rotate == 0 || ops->rotate == 2 ? _r : _v);
  _r___0 = height;
  _v___0 = width;
  virt_h = (int )(ops->rotate == 0 || ops->rotate == 2 ? _r___0 : _v___0);
  _r___1 = vc->vc_font.width;
  _v___1 = vc->vc_font.height;
  virt_fw = (int )(ops->rotate == 0 || ops->rotate == 2 ? _r___1 : _v___1);
  _r___2 = vc->vc_font.height;
  _v___2 = vc->vc_font.width;
  virt_fh = (int )(ops->rotate == 0 || ops->rotate == 2 ? _r___2 : _v___2);
  var.xres = (__u32 )(virt_w * virt_fw);
  var.yres = (__u32 )(virt_h * virt_fh);
  x_diff = (int )(info->var.xres - var.xres);
  y_diff = (int )(info->var.yres - var.yres);
  if (((x_diff < 0 || x_diff > virt_fw) || y_diff < 0) || y_diff > virt_fh) {
    mode = fb_find_best_mode((struct fb_var_screeninfo const *)(& var), & info->modelist);
    if ((unsigned long )mode == (unsigned long )((struct fb_videomode const *)0)) {
      return (-22);
    } else {
    }
    display_to_var(& var, p);
    fb_videomode_to_var(& var, mode);
    if ((__u32 )virt_w > var.xres / (__u32 )virt_fw || (__u32 )virt_h > var.yres / (__u32 )virt_fh) {
      return (-22);
    } else {
    }
    if ((unsigned long )*(vc->vc_display_fg) == (unsigned long )vc) {
      var.activate = 128U;
      fb_set_var(info, & var);
    } else {
    }
    var_to_display(p, & info->var, info);
    ops->var = info->var;
  } else {
  }
  updatescrollmode(p, info, vc);
  return (0);
}
}
static int fbcon_switch(struct vc_data *vc )
{
  struct fb_info *info ;
  struct fb_info *old_info ;
  struct fbcon_ops *ops ;
  struct display *p ;
  struct fb_var_screeninfo var ;
  int i ;
  int ret ;
  int prev_console ;
  int charcnt ;
  struct vc_data *conp2 ;
  struct fbcon_ops *o ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  __u32 tmp___2 ;
  int tmp___3 ;
  {
  old_info = (struct fb_info *)0;
  p = (struct display *)(& fb_display) + (unsigned long )vc->vc_num;
  charcnt = 256;
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  ops = (struct fbcon_ops *)info->fbcon_par;
  if (softback_top != 0UL) {
    if (softback_lines != 0) {
      fbcon_set_origin(vc);
    } else {
    }
    softback_in = softback_buf;
    softback_curr = softback_in;
    softback_top = softback_curr;
    softback_lines = 0;
    fbcon_update_softback(vc);
  } else {
  }
  if (logo_shown >= 0) {
    conp2 = vc_cons[logo_shown].d;
    if (conp2->vc_top == (unsigned int )logo_lines && conp2->vc_bottom == conp2->vc_rows) {
      conp2->vc_top = 0U;
    } else {
    }
    logo_shown = -1;
  } else {
  }
  prev_console = ops->currcon;
  if (prev_console != -1) {
    old_info = registered_fb[(int )con2fb_map[prev_console]];
  } else {
  }
  i = 0;
  goto ldv_34281;
  ldv_34280: ;
  if ((unsigned long )registered_fb[i] != (unsigned long )((struct fb_info *)0) && (unsigned long )(registered_fb[i])->fbcon_par != (unsigned long )((void *)0)) {
    o = (struct fbcon_ops *)(registered_fb[i])->fbcon_par;
    o->currcon = (int )vc->vc_num;
  } else {
  }
  i = i + 1;
  ldv_34281: ;
  if (i <= 31) {
    goto ldv_34280;
  } else {
  }
  memset((void *)(& var), 0, 160UL);
  display_to_var(& var, p);
  var.activate = 0U;
  info->var.activate = var.activate;
  var.vmode = var.vmode | (info->var.vmode & 4294967040U);
  fb_set_var(info, & var);
  ops->var = info->var;
  if ((unsigned long )old_info != (unsigned long )((struct fb_info *)0) && ((unsigned long )old_info != (unsigned long )info || (info->flags & 262144) != 0)) {
    if ((unsigned long )(info->fbops)->fb_set_par != (unsigned long )((int (*)(struct fb_info * ))0)) {
      ret = (*((info->fbops)->fb_set_par))(info);
      if (ret != 0) {
        printk("\vfbcon_switch: detected unhandled fb_set_par error, error code %d\n",
               ret);
      } else {
      }
    } else {
    }
    if ((unsigned long )old_info != (unsigned long )info) {
      fbcon_del_cursor_timer(old_info);
    } else {
    }
  } else {
  }
  tmp = fbcon_is_inactive(vc, info);
  if (tmp != 0 || ops->blank_state != 0) {
    fbcon_del_cursor_timer(info);
  } else {
    fbcon_add_cursor_timer(info);
  }
  set_blitting_type(vc, info);
  ops->cursor_reset = 1;
  if ((unsigned long )ops->rotate_font != (unsigned long )((int (*)(struct fb_info * ,
                                                                    struct vc_data * ))0)) {
    tmp___0 = (*(ops->rotate_font))(info, vc);
    if (tmp___0 != 0) {
      ops->rotate = 0;
      set_blitting_type(vc, info);
    } else {
    }
  } else {
  }
  tmp___1 = fb_get_color_depth(& info->var, & info->fix);
  vc->vc_can_do_color = tmp___1 != 1;
  vc->vc_complement_mask = (unsigned int )*((unsigned char *)vc + 1387UL) != 0U ? 30464U : 2048U;
  if (p->userfont != 0) {
    charcnt = *((int *)vc->vc_font.data + 0xfffffffffffffffdUL);
  } else {
  }
  if (charcnt > 256) {
    vc->vc_complement_mask = (int )vc->vc_complement_mask << 1U;
  } else {
  }
  updatescrollmode(p, info, vc);
  switch ((int )p->scrollmode) {
  case 3:
  scrollback_phys_max = (int )((unsigned int )p->vrows - vc->vc_rows);
  goto ldv_34284;
  case 2: ;
  case 5:
  scrollback_phys_max = (int )((unsigned int )p->vrows - vc->vc_rows * 2U);
  if (scrollback_phys_max < 0) {
    scrollback_phys_max = 0;
  } else {
  }
  goto ldv_34284;
  default:
  scrollback_phys_max = 0;
  goto ldv_34284;
  }
  ldv_34284:
  scrollback_max = 0;
  scrollback_current = 0;
  tmp___3 = fbcon_is_inactive(vc, info);
  if (tmp___3 == 0) {
    p->yscroll = 0;
    tmp___2 = 0U;
    ops->var.yoffset = tmp___2;
    ops->var.xoffset = tmp___2;
    (*(ops->update_start))(info);
  } else {
  }
  fbcon_set_palette(vc, (unsigned char *)(& color_table));
  fbcon_clear_margins(vc, 0);
  if (logo_shown == -2) {
    logo_shown = fg_console;
    fb_show_logo(info, ops->rotate);
    update_region(vc, vc->vc_origin + (unsigned long )(vc->vc_size_row * vc->vc_top),
                  (int )((vc->vc_size_row * (vc->vc_bottom - vc->vc_top)) / 2U));
    return (0);
  } else {
  }
  return (1);
}
}
static void fbcon_generic_blank(struct vc_data *vc , struct fb_info *info , int blank )
{
  struct fb_event event ;
  unsigned short charmask ;
  unsigned short oldc ;
  int tmp ;
  {
  if (blank != 0) {
    charmask = (unsigned int )vc->vc_hi_font_mask != 0U ? 511U : 255U;
    oldc = vc->vc_video_erase_char;
    vc->vc_video_erase_char = (int )vc->vc_video_erase_char & (int )charmask;
    fbcon_clear(vc, 0, 0, (int )vc->vc_rows, (int )vc->vc_cols);
    vc->vc_video_erase_char = oldc;
  } else {
  }
  tmp = lock_fb_info(info);
  if (tmp == 0) {
    return;
  } else {
  }
  event.info = info;
  event.data = (void *)(& blank);
  fb_notifier_call_chain(12UL, (void *)(& event));
  unlock_fb_info(info);
  return;
}
}
static int fbcon_blank(struct vc_data *vc , int blank , int mode_switch )
{
  struct fb_info *info ;
  struct fbcon_ops *ops ;
  struct fb_var_screeninfo var ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  ops = (struct fbcon_ops *)info->fbcon_par;
  if (mode_switch != 0) {
    var = info->var;
    ops->graphics = 1;
    if (blank == 0) {
      var.activate = 128U;
      fb_set_var(info, & var);
      ops->graphics = 0;
      ops->var = info->var;
    } else {
    }
  } else {
  }
  tmp___0 = fbcon_is_inactive(vc, info);
  if (tmp___0 == 0) {
    if (ops->blank_state != blank) {
      ops->blank_state = blank;
      fbcon_cursor(vc, blank != 0 ? 2 : 1);
      ops->cursor_flash = blank == 0;
      if ((info->flags & 65536) == 0) {
        tmp = fb_blank(info, blank);
        if (tmp != 0) {
          fbcon_generic_blank(vc, info, blank);
        } else {
        }
      } else {
      }
    } else {
    }
    if (blank == 0) {
      redraw_screen(vc, 0);
    } else {
    }
  } else {
  }
  if (mode_switch != 0) {
    fbcon_del_cursor_timer(info);
  } else {
    tmp___1 = fbcon_is_inactive(vc, info);
    if (tmp___1 != 0) {
      fbcon_del_cursor_timer(info);
    } else
    if (ops->blank_state != 0) {
      fbcon_del_cursor_timer(info);
    } else {
      fbcon_add_cursor_timer(info);
    }
  }
  return (0);
}
}
static int fbcon_debug_enter(struct vc_data *vc )
{
  struct fb_info *info ;
  struct fbcon_ops *ops ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  ops = (struct fbcon_ops *)info->fbcon_par;
  ops->save_graphics = ops->graphics;
  ops->graphics = 0;
  if ((unsigned long )(info->fbops)->fb_debug_enter != (unsigned long )((int (*)(struct fb_info * ))0)) {
    (*((info->fbops)->fb_debug_enter))(info);
  } else {
  }
  fbcon_set_palette(vc, (unsigned char *)(& color_table));
  return (0);
}
}
static int fbcon_debug_leave(struct vc_data *vc )
{
  struct fb_info *info ;
  struct fbcon_ops *ops ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  ops = (struct fbcon_ops *)info->fbcon_par;
  ops->graphics = ops->save_graphics;
  if ((unsigned long )(info->fbops)->fb_debug_leave != (unsigned long )((int (*)(struct fb_info * ))0)) {
    (*((info->fbops)->fb_debug_leave))(info);
  } else {
  }
  return (0);
}
}
static int fbcon_get_font(struct vc_data *vc , struct console_font *font )
{
  u8 *fontdata ;
  u8 *data ;
  int i ;
  int j ;
  u8 *tmp ;
  u8 *tmp___0 ;
  u8 *tmp___1 ;
  {
  fontdata = vc->vc_font.data;
  data = font->data;
  font->width = vc->vc_font.width;
  font->height = vc->vc_font.height;
  font->charcount = (unsigned int )vc->vc_hi_font_mask != 0U ? 512U : 256U;
  if ((unsigned long )font->data == (unsigned long )((unsigned char *)0U)) {
    return (0);
  } else {
  }
  if (font->width <= 8U) {
    j = (int )vc->vc_font.height;
    i = 0;
    goto ldv_34323;
    ldv_34322:
    memcpy((void *)data, (void const *)fontdata, (size_t )j);
    memset((void *)data + (unsigned long )j, 0, (size_t )(32 - j));
    data = data + 32UL;
    fontdata = fontdata + (unsigned long )j;
    i = i + 1;
    ldv_34323: ;
    if ((unsigned int )i < font->charcount) {
      goto ldv_34322;
    } else {
    }
  } else
  if (font->width <= 16U) {
    j = (int )(vc->vc_font.height * 2U);
    i = 0;
    goto ldv_34326;
    ldv_34325:
    memcpy((void *)data, (void const *)fontdata, (size_t )j);
    memset((void *)data + (unsigned long )j, 0, (size_t )(64 - j));
    data = data + 64UL;
    fontdata = fontdata + (unsigned long )j;
    i = i + 1;
    ldv_34326: ;
    if ((unsigned int )i < font->charcount) {
      goto ldv_34325;
    } else {
    }
  } else
  if (font->width <= 24U) {
    i = 0;
    goto ldv_34332;
    ldv_34331:
    j = 0;
    goto ldv_34329;
    ldv_34328:
    tmp = data;
    data = data + 1;
    *tmp = *fontdata;
    tmp___0 = data;
    data = data + 1;
    *tmp___0 = *(fontdata + 1UL);
    tmp___1 = data;
    data = data + 1;
    *tmp___1 = *(fontdata + 2UL);
    fontdata = fontdata + 4UL;
    j = j + 1;
    ldv_34329: ;
    if ((unsigned int )j < vc->vc_font.height) {
      goto ldv_34328;
    } else {
    }
    memset((void *)data, 0, (size_t )(j * -3 + 96));
    data = data + (unsigned long )(j * -3 + 96);
    i = i + 1;
    ldv_34332: ;
    if ((unsigned int )i < font->charcount) {
      goto ldv_34331;
    } else {
    }
  } else {
    j = (int )(vc->vc_font.height * 4U);
    i = 0;
    goto ldv_34335;
    ldv_34334:
    memcpy((void *)data, (void const *)fontdata, (size_t )j);
    memset((void *)data + (unsigned long )j, 0, (size_t )(128 - j));
    data = data + 128UL;
    fontdata = fontdata + (unsigned long )j;
    i = i + 1;
    ldv_34335: ;
    if ((unsigned int )i < font->charcount) {
      goto ldv_34334;
    } else {
    }
  }
  return (0);
}
}
static int fbcon_do_set_font(struct vc_data *vc , int w , int h , u8 const *data ,
                             int userfont )
{
  struct fb_info *info ;
  struct fbcon_ops *ops ;
  struct display *p ;
  int resize ;
  int cnt ;
  char *old_data ;
  u_char const *tmp ;
  int tmp___0 ;
  unsigned short *cp ;
  int count ;
  unsigned short c ;
  unsigned short *cp___0 ;
  int count___0 ;
  unsigned short c___0 ;
  unsigned short newc ;
  int cols ;
  int rows ;
  __u32 _r ;
  __u32 _v ;
  __u32 _r___0 ;
  __u32 _v___0 ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  ops = (struct fbcon_ops *)info->fbcon_par;
  p = (struct display *)(& fb_display) + (unsigned long )vc->vc_num;
  old_data = (char *)0;
  if ((unsigned long )*(vc->vc_display_fg) == (unsigned long )vc && softback_lines != 0) {
    fbcon_set_origin(vc);
  } else {
  }
  resize = (unsigned int )w != vc->vc_font.width || (unsigned int )h != vc->vc_font.height;
  if (p->userfont != 0) {
    old_data = (char *)vc->vc_font.data;
  } else {
  }
  if (userfont != 0) {
    cnt = *((int *)data + 0xfffffffffffffffdUL);
  } else {
    cnt = 256;
  }
  tmp = data;
  p->fontdata = tmp;
  vc->vc_font.data = (unsigned char *)tmp;
  tmp___0 = userfont;
  p->userfont = tmp___0;
  if (tmp___0 != 0) {
    *((int *)data + 0xffffffffffffffffUL) = *((int *)data + 0xffffffffffffffffUL) + 1;
  } else {
  }
  vc->vc_font.width = (unsigned int )w;
  vc->vc_font.height = (unsigned int )h;
  if ((unsigned int )vc->vc_hi_font_mask != 0U && cnt == 256) {
    vc->vc_hi_font_mask = 0U;
    if ((unsigned int )*((unsigned char *)vc + 1387UL) != 0U) {
      vc->vc_complement_mask = (int )vc->vc_complement_mask >> 1;
      vc->vc_s_complement_mask = (int )vc->vc_s_complement_mask >> 1;
    } else {
    }
    if ((unsigned int )*((unsigned char *)vc + 1387UL) != 0U) {
      cp = (unsigned short *)vc->vc_origin;
      count = (int )(vc->vc_screenbuf_size / 2U);
      goto ldv_34354;
      ldv_34353:
      c = *cp;
      *cp = (unsigned short )((int )((short )(((int )c & 65024) >> 1)) | ((int )((short )c) & 255));
      count = count - 1;
      cp = cp + 1;
      ldv_34354: ;
      if (count > 0) {
        goto ldv_34353;
      } else {
      }
      c = vc->vc_video_erase_char;
      vc->vc_video_erase_char = (unsigned short )((int )((short )(((int )c & 65024) >> 1)) | ((int )((short )c) & 255));
      vc->vc_attr = (int )vc->vc_attr >> 1;
    } else {
    }
  } else
  if ((unsigned int )vc->vc_hi_font_mask == 0U && cnt == 512) {
    vc->vc_hi_font_mask = 256U;
    if ((unsigned int )*((unsigned char *)vc + 1387UL) != 0U) {
      vc->vc_complement_mask = (int )vc->vc_complement_mask << 1U;
      vc->vc_s_complement_mask = (int )vc->vc_s_complement_mask << 1U;
    } else {
    }
    cp___0 = (unsigned short *)vc->vc_origin;
    count___0 = (int )(vc->vc_screenbuf_size / 2U);
    goto ldv_34361;
    ldv_34360:
    c___0 = *cp___0;
    if ((unsigned int )*((unsigned char *)vc + 1387UL) != 0U) {
      newc = (unsigned short )((int )((short )(((int )c___0 & 65280) << 1)) | ((int )((short )c___0) & 255));
    } else {
      newc = (unsigned int )c___0 & 65279U;
    }
    *cp___0 = newc;
    count___0 = count___0 - 1;
    cp___0 = cp___0 + 1;
    ldv_34361: ;
    if (count___0 > 0) {
      goto ldv_34360;
    } else {
    }
    c___0 = vc->vc_video_erase_char;
    if ((unsigned int )*((unsigned char *)vc + 1387UL) != 0U) {
      vc->vc_video_erase_char = (unsigned short )((int )((short )(((int )c___0 & 65280) << 1)) | ((int )((short )c___0) & 255));
      vc->vc_attr = (int )vc->vc_attr << 1U;
    } else {
      vc->vc_video_erase_char = (unsigned int )c___0 & 65279U;
    }
  } else {
  }
  if (resize != 0) {
    _r = info->var.xres;
    _v = info->var.yres;
    cols = (int )(ops->rotate == 0 || ops->rotate == 2 ? _r : _v);
    _r___0 = info->var.yres;
    _v___0 = info->var.xres;
    rows = (int )(ops->rotate == 0 || ops->rotate == 2 ? _r___0 : _v___0);
    cols = cols / w;
    rows = rows / h;
    vc_resize(vc, (unsigned int )cols, (unsigned int )rows);
    if ((unsigned long )*(vc->vc_display_fg) == (unsigned long )vc && softback_buf != 0UL) {
      fbcon_update_softback(vc);
    } else {
    }
  } else
  if ((unsigned long )*(vc->vc_display_fg) == (unsigned long )vc && (unsigned int )vc->vc_mode == 0U) {
    fbcon_clear_margins(vc, 0);
    redraw_screen(vc, 0);
  } else {
  }
  if ((unsigned long )old_data != (unsigned long )((char *)0)) {
    *((int *)old_data + 0xffffffffffffffffUL) = *((int *)old_data + 0xffffffffffffffffUL) - 1;
    if (*((int *)old_data + 0xffffffffffffffffUL) == 0) {
      kfree((void const *)old_data + 0xfffffffffffffff0UL);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int fbcon_copy_font(struct vc_data *vc , int con )
{
  struct display *od ;
  struct console_font *f ;
  int tmp ;
  {
  od = (struct display *)(& fb_display) + (unsigned long )con;
  f = & vc->vc_font;
  if ((unsigned long )od->fontdata == (unsigned long )((unsigned char const *)f->data)) {
    return (0);
  } else {
  }
  tmp = fbcon_do_set_font(vc, (int )f->width, (int )f->height, od->fontdata, od->userfont);
  return (tmp);
}
}
static int fbcon_set_font(struct vc_data *vc , struct console_font *font , unsigned int flags )
{
  struct fb_info *info ;
  unsigned int charcount ;
  int w ;
  int h ;
  int size ;
  int i ;
  int csum ;
  u8 *new_data ;
  u8 *data ;
  int pitch ;
  int tmp ;
  void *tmp___0 ;
  u32 tmp___1 ;
  struct vc_data *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  charcount = font->charcount;
  w = (int )font->width;
  h = (int )font->height;
  data = font->data;
  pitch = (int )((font->width + 7U) >> 3);
  if (charcount != 256U && charcount != 512U) {
    return (-22);
  } else {
  }
  if ((info->pixmap.blit_x & (u32 )(1 << (int )(font->width - 1U))) == 0U || (info->pixmap.blit_y & (u32 )(1 << (int )(font->height - 1U))) == 0U) {
    return (-22);
  } else {
  }
  tmp = fbcon_invalid_charcount(info, charcount);
  if (tmp != 0) {
    return (-22);
  } else {
  }
  size = (int )((unsigned int )(h * pitch) * charcount);
  tmp___0 = kmalloc((unsigned long )size + 16UL, 131280U);
  new_data = (u8 *)tmp___0;
  if ((unsigned long )new_data == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  new_data = new_data + 16UL;
  *((int *)new_data + 0xfffffffffffffffeUL) = size;
  *((int *)new_data + 0xfffffffffffffffdUL) = (int )charcount;
  *((int *)new_data + 0xffffffffffffffffUL) = 0;
  i = 0;
  goto ldv_34393;
  ldv_34392:
  memcpy((void *)new_data + (unsigned long )((i * h) * pitch), (void const *)data + (unsigned long )((i * 32) * pitch),
           (size_t )(h * pitch));
  i = i + 1;
  ldv_34393: ;
  if ((unsigned int )i < charcount) {
    goto ldv_34392;
  } else {
  }
  tmp___1 = crc32_le(0U, (unsigned char const *)new_data, (size_t )size);
  csum = (int )tmp___1;
  *((int *)new_data + 0xfffffffffffffffcUL) = csum;
  i = first_fb_vc;
  goto ldv_34398;
  ldv_34397:
  tmp___2 = vc_cons[i].d;
  if ((((fb_display[i].userfont != 0 && (unsigned long )fb_display[i].fontdata != (unsigned long )((u_char const *)0U)) && *((int *)fb_display[i].fontdata + 0xfffffffffffffffcUL) == csum) && *((int *)fb_display[i].fontdata + 0xfffffffffffffffeUL) == size) && tmp___2->vc_font.width == (unsigned int )w) {
    tmp___3 = memcmp((void const *)fb_display[i].fontdata, (void const *)new_data,
                     (size_t )size);
    if (tmp___3 == 0) {
      kfree((void const *)new_data + 0xfffffffffffffff0UL);
      new_data = (u8 *)fb_display[i].fontdata;
      goto ldv_34396;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_34398: ;
  if (i <= last_fb_vc) {
    goto ldv_34397;
  } else {
  }
  ldv_34396:
  tmp___4 = fbcon_do_set_font(vc, (int )font->width, (int )font->height, (u8 const *)new_data,
                              1);
  return (tmp___4);
}
}
static int fbcon_set_def_font(struct vc_data *vc , struct console_font *font , char *name )
{
  struct fb_info *info ;
  struct font_desc const *f ;
  int tmp ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  if ((unsigned long )name == (unsigned long )((char *)0)) {
    f = get_default_font((int )info->var.xres, (int )info->var.yres, info->pixmap.blit_x,
                         info->pixmap.blit_y);
  } else {
    f = find_font((char const *)name);
    if ((unsigned long )f == (unsigned long )((struct font_desc const *)0)) {
      return (-2);
    } else {
    }
  }
  font->width = (unsigned int )f->width;
  font->height = (unsigned int )f->height;
  tmp = fbcon_do_set_font(vc, f->width, f->height, (u8 const *)f->data, 0);
  return (tmp);
}
}
static u16 palette_red[16U] ;
static u16 palette_green[16U] ;
static u16 palette_blue[16U] ;
static struct fb_cmap palette_cmap = {0U, 16U, (__u16 *)(& palette_red), (__u16 *)(& palette_green), (__u16 *)(& palette_blue),
    (__u16 *)0U};
static int fbcon_set_palette(struct vc_data *vc , unsigned char *table )
{
  struct fb_info *info ;
  int i ;
  int j ;
  int k ;
  int depth ;
  u8 val ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct fb_cmap const *tmp___3 ;
  int tmp___4 ;
  {
  info = registered_fb[(int )con2fb_map[(int )vc->vc_num]];
  tmp = fbcon_is_inactive(vc, info);
  if (tmp != 0) {
    return (-22);
  } else {
  }
  if ((unsigned long )*(vc->vc_display_fg) != (unsigned long )vc) {
    return (0);
  } else {
  }
  depth = fb_get_color_depth(& info->var, & info->fix);
  if (depth > 3) {
    j = 0;
    i = j;
    goto ldv_34421;
    ldv_34420:
    k = (int )*(table + (unsigned long )i);
    tmp___0 = j;
    j = j + 1;
    val = vc->vc_palette[tmp___0];
    palette_red[k] = (u16 )((int )((short )((int )val << 8)) | (int )((short )val));
    tmp___1 = j;
    j = j + 1;
    val = vc->vc_palette[tmp___1];
    palette_green[k] = (u16 )((int )((short )((int )val << 8)) | (int )((short )val));
    tmp___2 = j;
    j = j + 1;
    val = vc->vc_palette[tmp___2];
    palette_blue[k] = (u16 )((int )((short )((int )val << 8)) | (int )((short )val));
    i = i + 1;
    ldv_34421: ;
    if (i <= 15) {
      goto ldv_34420;
    } else {
    }
    palette_cmap.len = 16U;
    palette_cmap.start = 0U;
  } else {
    tmp___3 = fb_default_cmap(1 << depth);
    fb_copy_cmap(tmp___3, & palette_cmap);
  }
  tmp___4 = fb_set_cmap(& palette_cmap, info);
  return (tmp___4);
}
}
static u16 *fbcon_screen_pos(struct vc_data *vc , int offset )
{
  unsigned long p ;
  int line ;
  {
  if ((int )vc->vc_num != fg_console || softback_lines == 0) {
    return ((u16 *)(vc->vc_origin + (unsigned long )offset));
  } else {
  }
  line = (int )((unsigned int )offset / vc->vc_size_row);
  if (line >= softback_lines) {
    return ((u16 *)((vc->vc_origin + (unsigned long )offset) - (unsigned long )(vc->vc_size_row * (unsigned int )softback_lines)));
  } else {
  }
  p = (unsigned long )offset + softback_curr;
  if (p >= softback_end) {
    p = (softback_buf - softback_end) + p;
  } else {
  }
  return ((u16 *)p);
}
}
static unsigned long fbcon_getxy(struct vc_data *vc , unsigned long pos , int *px ,
                                 int *py )
{
  unsigned long ret ;
  int x ;
  int y ;
  unsigned long offset ;
  unsigned long offset___0 ;
  {
  if (vc->vc_origin <= pos && vc->vc_scr_end > pos) {
    offset = (pos - vc->vc_origin) / 2UL;
    x = (int )(offset % (unsigned long )vc->vc_cols);
    y = (int )(offset / (unsigned long )vc->vc_cols);
    if ((int )vc->vc_num == fg_console) {
      y = y + softback_lines;
    } else {
    }
    ret = (unsigned long )((vc->vc_cols - (unsigned int )x) * 2U) + pos;
  } else
  if ((int )vc->vc_num == fg_console && softback_lines != 0) {
    offset___0 = pos - softback_curr;
    if (pos < softback_curr) {
      offset___0 = (softback_end - softback_buf) + offset___0;
    } else {
    }
    offset___0 = offset___0 / 2UL;
    x = (int )(offset___0 % (unsigned long )vc->vc_cols);
    y = (int )(offset___0 / (unsigned long )vc->vc_cols);
    ret = (unsigned long )((vc->vc_cols - (unsigned int )x) * 2U) + pos;
    if (ret == softback_end) {
      ret = softback_buf;
    } else {
    }
    if (ret == softback_in) {
      ret = vc->vc_origin;
    } else {
    }
  } else {
    y = 0;
    x = y;
    ret = vc->vc_origin;
  }
  if ((unsigned long )px != (unsigned long )((int *)0)) {
    *px = x;
  } else {
  }
  if ((unsigned long )py != (unsigned long )((int *)0)) {
    *py = y;
  } else {
  }
  return (ret);
}
}
static void fbcon_invert_region(struct vc_data *vc , u16 *p , int cnt )
{
  u16 a ;
  u16 *tmp ;
  int tmp___0 ;
  {
  goto ldv_34447;
  ldv_34446:
  a = *p;
  if ((unsigned int )*((unsigned char *)vc + 1387UL) == 0U) {
    a = (u16 )((unsigned int )a ^ 2048U);
  } else
  if ((unsigned int )vc->vc_hi_font_mask == 256U) {
    a = (u16 )((((int )((short )a) & 4607) | (int )((short )(((int )a & 57344) >> 4))) | (int )((short )(((int )a & 3584) << 4)));
  } else {
    a = (u16 )((((int )((short )a) & -30465) | (int )((short )(((int )a & 28672) >> 4))) | (int )((short )(((int )a & 1792) << 4)));
  }
  tmp = p;
  p = p + 1;
  *tmp = a;
  if ((unsigned long )((u16 *)softback_end) == (unsigned long )p) {
    p = (u16 *)softback_buf;
  } else {
  }
  if ((unsigned long )((u16 *)softback_in) == (unsigned long )p) {
    p = (u16 *)vc->vc_origin;
  } else {
  }
  ldv_34447:
  tmp___0 = cnt;
  cnt = cnt - 1;
  if (tmp___0 != 0) {
    goto ldv_34446;
  } else {
  }
  return;
}
}
static int fbcon_scrolldelta(struct vc_data *vc , int lines )
{
  struct fb_info *info ;
  struct fbcon_ops *ops ;
  struct display *disp ;
  int offset ;
  int limit ;
  int scrollback_old ;
  struct vc_data *conp2 ;
  unsigned long p ;
  unsigned long q ;
  int i ;
  int tmp ;
  {
  info = registered_fb[(int )con2fb_map[fg_console]];
  ops = (struct fbcon_ops *)info->fbcon_par;
  disp = (struct display *)(& fb_display) + (unsigned long )fg_console;
  if (softback_top != 0UL) {
    if ((int )vc->vc_num != fg_console) {
      return (0);
    } else {
    }
    if ((unsigned int )vc->vc_mode != 0U || lines == 0) {
      return (0);
    } else {
    }
    if (logo_shown >= 0) {
      conp2 = vc_cons[logo_shown].d;
      if (conp2->vc_top == (unsigned int )logo_lines && conp2->vc_bottom == conp2->vc_rows) {
        conp2->vc_top = 0U;
      } else {
      }
      if ((int )vc->vc_num == logo_shown) {
        p = softback_in;
        q = vc->vc_origin + (unsigned long )(vc->vc_size_row * (unsigned int )logo_lines);
        i = 0;
        goto ldv_34465;
        ldv_34464: ;
        if (p == softback_top) {
          goto ldv_34463;
        } else {
        }
        if (p == softback_buf) {
          p = softback_end;
        } else {
        }
        p = p - (unsigned long )vc->vc_size_row;
        q = q - (unsigned long )vc->vc_size_row;
        scr_memcpyw((u16 *)q, (u16 const *)p, vc->vc_size_row);
        i = i + 1;
        ldv_34465: ;
        if (i < logo_lines) {
          goto ldv_34464;
        } else {
        }
        ldv_34463:
        softback_curr = p;
        softback_in = softback_curr;
        update_region(vc, vc->vc_origin, (int )(vc->vc_cols * (unsigned int )logo_lines));
      } else {
      }
      logo_shown = -1;
    } else {
    }
    fbcon_cursor(vc, 10);
    fbcon_redraw_softback(vc, disp, (long )lines);
    fbcon_cursor(vc, 9);
    return (0);
  } else {
  }
  if (scrollback_phys_max == 0) {
    return (-38);
  } else {
  }
  scrollback_old = scrollback_current;
  scrollback_current = scrollback_current - lines;
  if (scrollback_current < 0) {
    scrollback_current = 0;
  } else
  if (scrollback_current > scrollback_max) {
    scrollback_current = scrollback_max;
  } else {
  }
  if (scrollback_current == scrollback_old) {
    return (0);
  } else {
  }
  tmp = fbcon_is_inactive(vc, info);
  if (tmp != 0) {
    return (0);
  } else {
  }
  fbcon_cursor(vc, 2);
  offset = (int )disp->yscroll - scrollback_current;
  limit = disp->vrows;
  switch ((int )disp->scrollmode) {
  case 3:
  info->var.vmode = info->var.vmode | 256U;
  goto ldv_34467;
  case 2: ;
  case 5:
  limit = (int )((unsigned int )limit - vc->vc_rows);
  info->var.vmode = info->var.vmode & 4294967039U;
  goto ldv_34467;
  }
  ldv_34467: ;
  if (offset < 0) {
    offset = offset + limit;
  } else
  if (offset >= limit) {
    offset = offset - limit;
  } else {
  }
  ops->var.xoffset = 0U;
  ops->var.yoffset = vc->vc_font.height * (unsigned int )offset;
  (*(ops->update_start))(info);
  if (scrollback_current == 0) {
    fbcon_cursor(vc, 1);
  } else {
  }
  return (0);
}
}
static int fbcon_set_origin(struct vc_data *vc )
{
  {
  if (softback_lines != 0) {
    fbcon_scrolldelta(vc, softback_lines);
  } else {
  }
  return (0);
}
}
static void fbcon_suspended(struct fb_info *info )
{
  struct vc_data *vc ;
  struct fbcon_ops *ops ;
  {
  vc = (struct vc_data *)0;
  ops = (struct fbcon_ops *)info->fbcon_par;
  if ((unsigned long )ops == (unsigned long )((struct fbcon_ops *)0) || ops->currcon < 0) {
    return;
  } else {
  }
  vc = vc_cons[ops->currcon].d;
  fbcon_cursor(vc, 2);
  return;
}
}
static void fbcon_resumed(struct fb_info *info )
{
  struct vc_data *vc ;
  struct fbcon_ops *ops ;
  {
  ops = (struct fbcon_ops *)info->fbcon_par;
  if ((unsigned long )ops == (unsigned long )((struct fbcon_ops *)0) || ops->currcon < 0) {
    return;
  } else {
  }
  vc = vc_cons[ops->currcon].d;
  redraw_screen(vc, 0);
  return;
}
}
static void fbcon_modechanged(struct fb_info *info )
{
  struct fbcon_ops *ops ;
  struct vc_data *vc ;
  struct display *p ;
  int rows ;
  int cols ;
  __u32 _r ;
  __u32 _v ;
  __u32 _r___0 ;
  __u32 _v___0 ;
  __u32 tmp ;
  int tmp___0 ;
  {
  ops = (struct fbcon_ops *)info->fbcon_par;
  if ((unsigned long )ops == (unsigned long )((struct fbcon_ops *)0) || ops->currcon < 0) {
    return;
  } else {
  }
  vc = vc_cons[ops->currcon].d;
  if ((unsigned int )vc->vc_mode != 0U || (unsigned long )registered_fb[(int )con2fb_map[ops->currcon]] != (unsigned long )info) {
    return;
  } else {
  }
  p = (struct display *)(& fb_display) + (unsigned long )vc->vc_num;
  set_blitting_type(vc, info);
  if ((unsigned long )*(vc->vc_display_fg) == (unsigned long )vc) {
    var_to_display(p, & info->var, info);
    _r = info->var.xres;
    _v = info->var.yres;
    cols = (int )(ops->rotate == 0 || ops->rotate == 2 ? _r : _v);
    _r___0 = info->var.yres;
    _v___0 = info->var.xres;
    rows = (int )(ops->rotate == 0 || ops->rotate == 2 ? _r___0 : _v___0);
    cols = (int )((unsigned int )cols / vc->vc_font.width);
    rows = (int )((unsigned int )rows / vc->vc_font.height);
    vc_resize(vc, (unsigned int )cols, (unsigned int )rows);
    updatescrollmode(p, info, vc);
    scrollback_max = 0;
    scrollback_current = 0;
    tmp___0 = fbcon_is_inactive(vc, info);
    if (tmp___0 == 0) {
      p->yscroll = 0;
      tmp = 0U;
      ops->var.yoffset = tmp;
      ops->var.xoffset = tmp;
      (*(ops->update_start))(info);
    } else {
    }
    fbcon_set_palette(vc, (unsigned char *)(& color_table));
    redraw_screen(vc, 0);
    if (softback_buf != 0UL) {
      fbcon_update_softback(vc);
    } else {
    }
  } else {
  }
  return;
}
}
static void fbcon_set_all_vcs(struct fb_info *info )
{
  struct fbcon_ops *ops ;
  struct vc_data *vc ;
  struct display *p ;
  int i ;
  int rows ;
  int cols ;
  int fg ;
  __u32 _r ;
  __u32 _v ;
  __u32 _r___0 ;
  __u32 _v___0 ;
  {
  ops = (struct fbcon_ops *)info->fbcon_par;
  fg = -1;
  if ((unsigned long )ops == (unsigned long )((struct fbcon_ops *)0) || ops->currcon < 0) {
    return;
  } else {
  }
  i = first_fb_vc;
  goto ldv_34515;
  ldv_34514:
  vc = vc_cons[i].d;
  if (((unsigned long )vc == (unsigned long )((struct vc_data *)0) || (unsigned int )vc->vc_mode != 0U) || (unsigned long )registered_fb[(int )con2fb_map[i]] != (unsigned long )info) {
    goto ldv_34507;
  } else {
  }
  if ((unsigned long )*(vc->vc_display_fg) == (unsigned long )vc) {
    fg = i;
    goto ldv_34507;
  } else {
  }
  p = (struct display *)(& fb_display) + (unsigned long )vc->vc_num;
  set_blitting_type(vc, info);
  var_to_display(p, & info->var, info);
  _r = info->var.xres;
  _v = info->var.yres;
  cols = (int )(ops->rotate == 0 || ops->rotate == 2 ? _r : _v);
  _r___0 = info->var.yres;
  _v___0 = info->var.xres;
  rows = (int )(ops->rotate == 0 || ops->rotate == 2 ? _r___0 : _v___0);
  cols = (int )((unsigned int )cols / vc->vc_font.width);
  rows = (int )((unsigned int )rows / vc->vc_font.height);
  vc_resize(vc, (unsigned int )cols, (unsigned int )rows);
  ldv_34507:
  i = i + 1;
  ldv_34515: ;
  if (i <= last_fb_vc) {
    goto ldv_34514;
  } else {
  }
  if (fg != -1) {
    fbcon_modechanged(info);
  } else {
  }
  return;
}
}
static int fbcon_mode_deleted(struct fb_info *info , struct fb_videomode *mode )
{
  struct fb_info *fb_info ;
  struct display *p ;
  int i ;
  int j ;
  int found ;
  int tmp ;
  {
  found = 0;
  i = first_fb_vc;
  goto ldv_34529;
  ldv_34528:
  j = (int )con2fb_map[i];
  if (j == -1) {
    goto ldv_34526;
  } else {
  }
  fb_info = registered_fb[j];
  if ((unsigned long )fb_info != (unsigned long )info) {
    goto ldv_34526;
  } else {
  }
  p = (struct display *)(& fb_display) + (unsigned long )i;
  if ((unsigned long )p == (unsigned long )((struct display *)0) || (unsigned long )p->mode == (unsigned long )((struct fb_videomode const *)0)) {
    goto ldv_34526;
  } else {
  }
  tmp = fb_mode_is_equal(p->mode, (struct fb_videomode const *)mode);
  if (tmp != 0) {
    found = 1;
    goto ldv_34527;
  } else {
  }
  ldv_34526:
  i = i + 1;
  ldv_34529: ;
  if (i <= last_fb_vc) {
    goto ldv_34528;
  } else {
  }
  ldv_34527: ;
  return (found);
}
}
static int fbcon_unbind(void)
{
  int ret ;
  {
  ret = do_unbind_con_driver(& fb_con, first_fb_vc, last_fb_vc, fbcon_is_default);
  if (ret == 0) {
    fbcon_has_console_bind = 0;
  } else {
  }
  return (ret);
}
}
static int fbcon_fb_unbind(int idx )
{
  int i ;
  int new_idx ;
  int ret ;
  struct fb_info *info ;
  int tmp ;
  {
  new_idx = -1;
  ret = 0;
  if (fbcon_has_console_bind == 0) {
    return (0);
  } else {
  }
  i = first_fb_vc;
  goto ldv_34542;
  ldv_34541: ;
  if ((int )con2fb_map[i] != idx && (int )con2fb_map[i] != -1) {
    new_idx = i;
    goto ldv_34540;
  } else {
  }
  i = i + 1;
  ldv_34542: ;
  if (i <= last_fb_vc) {
    goto ldv_34541;
  } else {
  }
  ldv_34540: ;
  if (new_idx != -1) {
    i = first_fb_vc;
    goto ldv_34544;
    ldv_34543: ;
    if ((int )con2fb_map[i] == idx) {
      set_con2fb_map(i, new_idx, 0);
    } else {
    }
    i = i + 1;
    ldv_34544: ;
    if (i <= last_fb_vc) {
      goto ldv_34543;
    } else {
    }
  } else {
    info = registered_fb[idx];
    i = first_fb_vc;
    goto ldv_34548;
    ldv_34547: ;
    if ((int )con2fb_map[i] == idx) {
      con2fb_map[i] = -1;
      tmp = search_fb_in_map(idx);
      if (tmp == 0) {
        ret = con2fb_release_oldinfo(vc_cons[i].d, info, (struct fb_info *)0, i, idx,
                                     0);
        if (ret != 0) {
          con2fb_map[i] = (signed char )idx;
          return (ret);
        } else {
        }
      } else {
      }
    } else {
    }
    i = i + 1;
    ldv_34548: ;
    if (i <= last_fb_vc) {
      goto ldv_34547;
    } else {
    }
    ret = fbcon_unbind();
  }
  return (ret);
}
}
static int fbcon_fb_unregistered(struct fb_info *info )
{
  int i ;
  int idx ;
  {
  idx = info->node;
  i = first_fb_vc;
  goto ldv_34556;
  ldv_34555: ;
  if ((int )con2fb_map[i] == idx) {
    con2fb_map[i] = -1;
  } else {
  }
  i = i + 1;
  ldv_34556: ;
  if (i <= last_fb_vc) {
    goto ldv_34555;
  } else {
  }
  if (idx == info_idx) {
    info_idx = -1;
    i = 0;
    goto ldv_34560;
    ldv_34559: ;
    if ((unsigned long )registered_fb[i] != (unsigned long )((struct fb_info *)0)) {
      info_idx = i;
      goto ldv_34558;
    } else {
    }
    i = i + 1;
    ldv_34560: ;
    if (i <= 31) {
      goto ldv_34559;
    } else {
    }
    ldv_34558: ;
  } else {
  }
  if (info_idx != -1) {
    i = first_fb_vc;
    goto ldv_34562;
    ldv_34561: ;
    if ((int )con2fb_map[i] == -1) {
      con2fb_map[i] = (signed char )info_idx;
    } else {
    }
    i = i + 1;
    ldv_34562: ;
    if (i <= last_fb_vc) {
      goto ldv_34561;
    } else {
    }
  } else {
  }
  if (primary_device == idx) {
    primary_device = -1;
  } else {
  }
  if (num_registered_fb == 0) {
    do_unregister_con_driver(& fb_con);
  } else {
  }
  return (0);
}
}
static void fbcon_remap_all(int idx )
{
  int i ;
  int tmp ;
  {
  i = first_fb_vc;
  goto ldv_34569;
  ldv_34568:
  set_con2fb_map(i, idx, 0);
  i = i + 1;
  ldv_34569: ;
  if (i <= last_fb_vc) {
    goto ldv_34568;
  } else {
  }
  tmp = con_is_bound(& fb_con);
  if (tmp != 0) {
    printk("\016fbcon: Remapping primary device, fb%i, to tty %i-%i\n", idx, first_fb_vc + 1,
           last_fb_vc + 1);
    info_idx = idx;
  } else {
  }
  return;
}
}
static void fbcon_select_primary(struct fb_info *info )
{
  int i ;
  int tmp ;
  int tmp___0 ;
  {
  if (map_override == 0 && primary_device == -1) {
    tmp___0 = fb_is_primary_device(info);
    if (tmp___0 != 0) {
      printk("\016fbcon: %s (fb%i) is primary device\n", (char *)(& info->fix.id),
             info->node);
      primary_device = info->node;
      i = first_fb_vc;
      goto ldv_34576;
      ldv_34575:
      con2fb_map_boot[i] = (signed char )primary_device;
      i = i + 1;
      ldv_34576: ;
      if (i <= last_fb_vc) {
        goto ldv_34575;
      } else {
      }
      tmp = con_is_bound(& fb_con);
      if (tmp != 0) {
        printk("\016fbcon: Remapping primary device, fb%i, to tty %i-%i\n", info->node,
               first_fb_vc + 1, last_fb_vc + 1);
        info_idx = primary_device;
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
static int fbcon_fb_registered(struct fb_info *info )
{
  int ret ;
  int i ;
  int idx ;
  {
  ret = 0;
  idx = info->node;
  fbcon_select_primary(info);
  if (info_idx == -1) {
    i = first_fb_vc;
    goto ldv_34586;
    ldv_34585: ;
    if ((int )con2fb_map_boot[i] == idx) {
      info_idx = idx;
      goto ldv_34584;
    } else {
    }
    i = i + 1;
    ldv_34586: ;
    if (i <= last_fb_vc) {
      goto ldv_34585;
    } else {
    }
    ldv_34584: ;
    if (info_idx != -1) {
      ret = do_fbcon_takeover(1);
    } else {
    }
  } else {
    i = first_fb_vc;
    goto ldv_34588;
    ldv_34587: ;
    if ((int )con2fb_map_boot[i] == idx) {
      set_con2fb_map(i, idx, 0);
    } else {
    }
    i = i + 1;
    ldv_34588: ;
    if (i <= last_fb_vc) {
      goto ldv_34587;
    } else {
    }
  }
  return (ret);
}
}
static void fbcon_fb_blanked(struct fb_info *info , int blank )
{
  struct fbcon_ops *ops ;
  struct vc_data *vc ;
  {
  ops = (struct fbcon_ops *)info->fbcon_par;
  if ((unsigned long )ops == (unsigned long )((struct fbcon_ops *)0) || ops->currcon < 0) {
    return;
  } else {
  }
  vc = vc_cons[ops->currcon].d;
  if ((unsigned int )vc->vc_mode != 0U || (unsigned long )registered_fb[(int )con2fb_map[ops->currcon]] != (unsigned long )info) {
    return;
  } else {
  }
  if ((unsigned long )*(vc->vc_display_fg) == (unsigned long )vc) {
    if (blank != 0) {
      do_blank_screen(0);
    } else {
      do_unblank_screen(0);
    }
  } else {
  }
  ops->blank_state = blank;
  return;
}
}
static void fbcon_new_modelist(struct fb_info *info )
{
  int i ;
  struct vc_data *vc ;
  struct fb_var_screeninfo var ;
  struct fb_videomode const *mode ;
  {
  i = first_fb_vc;
  goto ldv_34605;
  ldv_34604: ;
  if ((unsigned long )registered_fb[(int )con2fb_map[i]] != (unsigned long )info) {
    goto ldv_34603;
  } else {
  }
  if ((unsigned long )fb_display[i].mode == (unsigned long )((struct fb_videomode const *)0)) {
    goto ldv_34603;
  } else {
  }
  vc = vc_cons[i].d;
  display_to_var(& var, (struct display *)(& fb_display) + (unsigned long )i);
  mode = fb_find_nearest_mode(fb_display[i].mode, & info->modelist);
  fb_videomode_to_var(& var, mode);
  fbcon_set_disp(info, & var, (int )vc->vc_num);
  ldv_34603:
  i = i + 1;
  ldv_34605: ;
  if (i <= last_fb_vc) {
    goto ldv_34604;
  } else {
  }
  return;
}
}
static void fbcon_get_requirement(struct fb_info *info , struct fb_blit_caps *caps )
{
  struct vc_data *vc ;
  struct display *p ;
  int i ;
  int charcnt ;
  {
  if (caps->flags != 0U) {
    i = first_fb_vc;
    goto ldv_34616;
    ldv_34615:
    vc = vc_cons[i].d;
    if (((unsigned long )vc != (unsigned long )((struct vc_data *)0) && (unsigned int )vc->vc_mode == 0U) && info->node == (int )con2fb_map[i]) {
      p = (struct display *)(& fb_display) + (unsigned long )i;
      caps->x = caps->x | (u32 )(1 << (int )(vc->vc_font.width - 1U));
      caps->y = caps->y | (u32 )(1 << (int )(vc->vc_font.height - 1U));
      charcnt = p->userfont != 0 ? *((int *)p->fontdata + 0xfffffffffffffffdUL) : 256;
      if (caps->len < (u32 )charcnt) {
        caps->len = (u32 )charcnt;
      } else {
      }
    } else {
    }
    i = i + 1;
    ldv_34616: ;
    if (i <= last_fb_vc) {
      goto ldv_34615;
    } else {
    }
  } else {
    vc = vc_cons[fg_console].d;
    if (((unsigned long )vc != (unsigned long )((struct vc_data *)0) && (unsigned int )vc->vc_mode == 0U) && info->node == (int )con2fb_map[fg_console]) {
      p = (struct display *)(& fb_display) + (unsigned long )fg_console;
      caps->x = (u32 )(1 << (int )(vc->vc_font.width - 1U));
      caps->y = (u32 )(1 << (int )(vc->vc_font.height - 1U));
      caps->len = p->userfont != 0 ? (u32 )*((int *)p->fontdata + 0xfffffffffffffffdUL) : 256U;
    } else {
    }
  }
  return;
}
}
static int fbcon_event_notify(struct notifier_block *self , unsigned long action ,
                              void *data )
{
  struct fb_event *event ;
  struct fb_info *info ;
  struct fb_videomode *mode ;
  struct fb_con2fbmap *con2fb ;
  struct fb_blit_caps *caps ;
  int idx ;
  int ret ;
  {
  event = (struct fb_event *)data;
  info = event->info;
  ret = 0;
  if (fbcon_has_exited != 0 && (action != 5UL && action != 6UL)) {
    goto done;
  } else {
  }
  switch (action) {
  case 2UL:
  fbcon_suspended(info);
  goto ldv_34632;
  case 3UL:
  fbcon_resumed(info);
  goto ldv_34632;
  case 1UL:
  fbcon_modechanged(info);
  goto ldv_34632;
  case 11UL:
  fbcon_set_all_vcs(info);
  goto ldv_34632;
  case 4UL:
  mode = (struct fb_videomode *)event->data;
  ret = fbcon_mode_deleted(info, mode);
  goto ldv_34632;
  case 14UL:
  idx = info->node;
  ret = fbcon_fb_unbind(idx);
  goto ldv_34632;
  case 5UL:
  ret = fbcon_fb_registered(info);
  goto ldv_34632;
  case 6UL:
  ret = fbcon_fb_unregistered(info);
  goto ldv_34632;
  case 8UL:
  con2fb = (struct fb_con2fbmap *)event->data;
  ret = set_con2fb_map((int )(con2fb->console - 1U), (int )con2fb->framebuffer, 1);
  goto ldv_34632;
  case 7UL:
  con2fb = (struct fb_con2fbmap *)event->data;
  con2fb->framebuffer = (__u32 )con2fb_map[con2fb->console - 1U];
  goto ldv_34632;
  case 9UL:
  fbcon_fb_blanked(info, *((int *)event->data));
  goto ldv_34632;
  case 10UL:
  fbcon_new_modelist(info);
  goto ldv_34632;
  case 13UL:
  caps = (struct fb_blit_caps *)event->data;
  fbcon_get_requirement(info, caps);
  goto ldv_34632;
  case 15UL:
  idx = info->node;
  fbcon_remap_all(idx);
  goto ldv_34632;
  }
  ldv_34632: ;
  done: ;
  return (ret);
}
}
static struct consw const fb_con =
     {& __this_module, & fbcon_startup, & fbcon_init, & fbcon_deinit, & fbcon_clear,
    & fbcon_putc, & fbcon_putcs, & fbcon_cursor, & fbcon_scroll, & fbcon_bmove, & fbcon_switch,
    & fbcon_blank, & fbcon_set_font, & fbcon_get_font, & fbcon_set_def_font, & fbcon_copy_font,
    & fbcon_resize, & fbcon_set_palette, & fbcon_scrolldelta, & fbcon_set_origin,
    0, 0, & fbcon_invert_region, & fbcon_screen_pos, & fbcon_getxy, & fbcon_debug_enter,
    & fbcon_debug_leave};
static struct notifier_block fbcon_event_notifier = {& fbcon_event_notify, 0, 0};
static ssize_t store_rotate(struct device *device , struct device_attribute *attr ,
                            char const *buf , size_t count )
{
  struct fb_info *info ;
  int rotate ;
  int idx ;
  char **last ;
  unsigned long tmp ;
  {
  last = (char **)0;
  if (fbcon_has_exited != 0) {
    return ((ssize_t )count);
  } else {
  }
  console_lock();
  idx = (int )con2fb_map[fg_console];
  if (idx == -1 || (unsigned long )registered_fb[idx] == (unsigned long )((struct fb_info *)0)) {
    goto err;
  } else {
  }
  info = registered_fb[idx];
  tmp = simple_strtoul(buf, last, 0U);
  rotate = (int )tmp;
  fbcon_rotate(info, (u32 )rotate);
  err:
  console_unlock();
  return ((ssize_t )count);
}
}
static ssize_t store_rotate_all(struct device *device , struct device_attribute *attr ,
                                char const *buf , size_t count )
{
  struct fb_info *info ;
  int rotate ;
  int idx ;
  char **last ;
  unsigned long tmp ;
  {
  last = (char **)0;
  if (fbcon_has_exited != 0) {
    return ((ssize_t )count);
  } else {
  }
  console_lock();
  idx = (int )con2fb_map[fg_console];
  if (idx == -1 || (unsigned long )registered_fb[idx] == (unsigned long )((struct fb_info *)0)) {
    goto err;
  } else {
  }
  info = registered_fb[idx];
  tmp = simple_strtoul(buf, last, 0U);
  rotate = (int )tmp;
  fbcon_rotate_all(info, (u32 )rotate);
  err:
  console_unlock();
  return ((ssize_t )count);
}
}
static ssize_t show_rotate(struct device *device , struct device_attribute *attr ,
                           char *buf )
{
  struct fb_info *info ;
  int rotate ;
  int idx ;
  int tmp ;
  {
  rotate = 0;
  if (fbcon_has_exited != 0) {
    return (0L);
  } else {
  }
  console_lock();
  idx = (int )con2fb_map[fg_console];
  if (idx == -1 || (unsigned long )registered_fb[idx] == (unsigned long )((struct fb_info *)0)) {
    goto err;
  } else {
  }
  info = registered_fb[idx];
  rotate = fbcon_get_rotate(info);
  err:
  console_unlock();
  tmp = snprintf(buf, 4096UL, "%d\n", rotate);
  return ((ssize_t )tmp);
}
}
static ssize_t show_cursor_blink(struct device *device , struct device_attribute *attr ,
                                 char *buf )
{
  struct fb_info *info ;
  struct fbcon_ops *ops ;
  int idx ;
  int blink ;
  int tmp ;
  {
  blink = -1;
  if (fbcon_has_exited != 0) {
    return (0L);
  } else {
  }
  console_lock();
  idx = (int )con2fb_map[fg_console];
  if (idx == -1 || (unsigned long )registered_fb[idx] == (unsigned long )((struct fb_info *)0)) {
    goto err;
  } else {
  }
  info = registered_fb[idx];
  ops = (struct fbcon_ops *)info->fbcon_par;
  if ((unsigned long )ops == (unsigned long )((struct fbcon_ops *)0)) {
    goto err;
  } else {
  }
  blink = (ops->flags & 2) != 0;
  err:
  console_unlock();
  tmp = snprintf(buf, 4096UL, "%d\n", blink);
  return ((ssize_t )tmp);
}
}
static ssize_t store_cursor_blink(struct device *device , struct device_attribute *attr ,
                                  char const *buf , size_t count )
{
  struct fb_info *info ;
  int blink ;
  int idx ;
  char **last ;
  unsigned long tmp ;
  {
  last = (char **)0;
  if (fbcon_has_exited != 0) {
    return ((ssize_t )count);
  } else {
  }
  console_lock();
  idx = (int )con2fb_map[fg_console];
  if (idx == -1 || (unsigned long )registered_fb[idx] == (unsigned long )((struct fb_info *)0)) {
    goto err;
  } else {
  }
  info = registered_fb[idx];
  if ((unsigned long )info->fbcon_par == (unsigned long )((void *)0)) {
    goto err;
  } else {
  }
  tmp = simple_strtoul(buf, last, 0U);
  blink = (int )tmp;
  if (blink != 0) {
    fbcon_cursor_noblink = 0;
    fbcon_add_cursor_timer(info);
  } else {
    fbcon_cursor_noblink = 1;
    fbcon_del_cursor_timer(info);
  }
  err:
  console_unlock();
  return ((ssize_t )count);
}
}
static struct device_attribute device_attrs[3U] = { {{"rotate", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
      & show_rotate, & store_rotate},
        {{"rotate_all", 128U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
      (ssize_t (*)(struct device * , struct device_attribute * , char * ))0, & store_rotate_all},
        {{"cursor_blink",
       420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                            {(char)0}, {(char)0}, {(char)0}}}}, & show_cursor_blink,
      & store_cursor_blink}};
static int fbcon_init_device(void)
{
  int i ;
  int error ;
  {
  error = 0;
  fbcon_has_sysfs = 1;
  i = 0;
  goto ldv_34746;
  ldv_34745:
  error = device_create_file(fbcon_device, (struct device_attribute const *)(& device_attrs) + (unsigned long )i);
  if (error != 0) {
    goto ldv_34744;
  } else {
  }
  i = i + 1;
  ldv_34746: ;
  if ((unsigned int )i <= 2U) {
    goto ldv_34745;
  } else {
  }
  ldv_34744: ;
  if (error != 0) {
    goto ldv_34748;
    ldv_34747:
    device_remove_file(fbcon_device, (struct device_attribute const *)(& device_attrs) + (unsigned long )i);
    ldv_34748:
    i = i - 1;
    if (i >= 0) {
      goto ldv_34747;
    } else {
    }
    fbcon_has_sysfs = 0;
  } else {
  }
  return (0);
}
}
static void fbcon_start(void)
{
  int i ;
  {
  if (num_registered_fb != 0) {
    console_lock();
    i = 0;
    goto ldv_34756;
    ldv_34755: ;
    if ((unsigned long )registered_fb[i] != (unsigned long )((struct fb_info *)0)) {
      info_idx = i;
      goto ldv_34754;
    } else {
    }
    i = i + 1;
    ldv_34756: ;
    if (i <= 31) {
      goto ldv_34755;
    } else {
    }
    ldv_34754:
    do_fbcon_takeover(0);
    console_unlock();
  } else {
  }
  return;
}
}
static void fbcon_exit(void)
{
  struct fb_info *info ;
  int i ;
  int j ;
  int mapped ;
  int pending ;
  bool tmp ;
  struct fbcon_ops *ops ;
  {
  if (fbcon_has_exited != 0) {
    return;
  } else {
  }
  kfree((void const *)softback_buf);
  softback_buf = 0UL;
  i = 0;
  goto ldv_34771;
  ldv_34770:
  pending = 0;
  mapped = 0;
  info = registered_fb[i];
  if ((unsigned long )info == (unsigned long )((struct fb_info *)0)) {
    goto ldv_34765;
  } else {
  }
  if ((unsigned long )info->queue.func != (unsigned long )((void (*)(struct work_struct * ))0)) {
    tmp = ldv_cancel_work_sync_22(& info->queue);
    pending = (int )tmp;
  } else {
  }
  j = first_fb_vc;
  goto ldv_34768;
  ldv_34767: ;
  if ((int )con2fb_map[j] == i) {
    mapped = 1;
    goto ldv_34766;
  } else {
  }
  j = j + 1;
  ldv_34768: ;
  if (j <= last_fb_vc) {
    goto ldv_34767;
  } else {
  }
  ldv_34766: ;
  if (mapped != 0) {
    if ((unsigned long )(info->fbops)->fb_release != (unsigned long )((int (*)(struct fb_info * ,
                                                                               int ))0)) {
      (*((info->fbops)->fb_release))(info, 0);
    } else {
    }
    module_put((info->fbops)->owner);
    if ((unsigned long )info->fbcon_par != (unsigned long )((void *)0)) {
      ops = (struct fbcon_ops *)info->fbcon_par;
      fbcon_del_cursor_timer(info);
      kfree((void const *)ops->cursor_src);
      kfree((void const *)ops->cursor_state.mask);
      kfree((void const *)info->fbcon_par);
      info->fbcon_par = (void *)0;
    } else {
    }
    if ((unsigned long )info->queue.func == (unsigned long )(& fb_flashcursor)) {
      info->queue.func = (void (*)(struct work_struct * ))0;
    } else {
    }
  } else {
  }
  ldv_34765:
  i = i + 1;
  ldv_34771: ;
  if (i <= 31) {
    goto ldv_34770;
  } else {
  }
  fbcon_has_exited = 1;
  return;
}
}
static int fb_console_init(void)
{
  int i ;
  long tmp ;
  bool tmp___0 ;
  {
  console_lock();
  fb_register_client(& fbcon_event_notifier);
  fbcon_device = device_create(fb_class, (struct device *)0, 0U, (void *)0, "fbcon");
  tmp___0 = IS_ERR((void const *)fbcon_device);
  if ((int )tmp___0) {
    tmp = PTR_ERR((void const *)fbcon_device);
    printk("\fUnable to create device for fbcon; errno = %ld\n", tmp);
    fbcon_device = (struct device *)0;
  } else {
    fbcon_init_device();
  }
  i = 0;
  goto ldv_34778;
  ldv_34777:
  con2fb_map[i] = -1;
  i = i + 1;
  ldv_34778: ;
  if (i <= 62) {
    goto ldv_34777;
  } else {
  }
  console_unlock();
  fbcon_start();
  return (0);
}
}
static void fbcon_deinit_device(void)
{
  int i ;
  {
  if (fbcon_has_sysfs != 0) {
    i = 0;
    goto ldv_34792;
    ldv_34791:
    device_remove_file(fbcon_device, (struct device_attribute const *)(& device_attrs) + (unsigned long )i);
    i = i + 1;
    ldv_34792: ;
    if ((unsigned int )i <= 2U) {
      goto ldv_34791;
    } else {
    }
    fbcon_has_sysfs = 0;
  } else {
  }
  return;
}
}
static void fb_console_exit(void)
{
  {
  console_lock();
  fb_unregister_client(& fbcon_event_notifier);
  fbcon_deinit_device();
  device_destroy(fb_class, 0U);
  fbcon_exit();
  do_unregister_con_driver(& fb_con);
  console_unlock();
  return;
}
}
int ldv_retval_0 ;
extern void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
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
    fb_flashcursor(ldv_work_struct_1_0);
    ldv_work_1_0 = 1;
  } else {
  }
  goto ldv_34817;
  case 1: ;
  if (ldv_work_1_1 == 2 || ldv_work_1_1 == 3) {
    ldv_work_1_1 = 4;
    fb_flashcursor(ldv_work_struct_1_0);
    ldv_work_1_1 = 1;
  } else {
  }
  goto ldv_34817;
  case 2: ;
  if (ldv_work_1_2 == 2 || ldv_work_1_2 == 3) {
    ldv_work_1_2 = 4;
    fb_flashcursor(ldv_work_struct_1_0);
    ldv_work_1_2 = 1;
  } else {
  }
  goto ldv_34817;
  case 3: ;
  if (ldv_work_1_3 == 2 || ldv_work_1_3 == 3) {
    ldv_work_1_3 = 4;
    fb_flashcursor(ldv_work_struct_1_0);
    ldv_work_1_3 = 1;
  } else {
  }
  goto ldv_34817;
  default:
  ldv_stop();
  }
  ldv_34817: ;
  return;
}
}
void ldv_initialize_consw_4(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1544UL);
  fb_con_group0 = (struct vc_data *)tmp;
  tmp___0 = ldv_init_zalloc(24UL);
  fb_con_group1 = (struct console_font *)tmp___0;
  return;
}
}
void call_and_disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 2 || ldv_work_1_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_0) {
    fb_flashcursor(work);
    ldv_work_1_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_1 == 2 || ldv_work_1_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_1) {
    fb_flashcursor(work);
    ldv_work_1_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_2 == 2 || ldv_work_1_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_2) {
    fb_flashcursor(work);
    ldv_work_1_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_3 == 2 || ldv_work_1_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_3) {
    fb_flashcursor(work);
    ldv_work_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void choose_timer_2(struct timer_list *timer )
{
  {
  if (ldv_timer_state_2 != 1) {
    return;
  }
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
int main(void)
{
  unsigned long ldvarg18 ;
  int ldvarg11 ;
  unsigned int ldvarg32 ;
  int ldvarg7 ;
  int ldvarg23 ;
  int ldvarg12 ;
  int ldvarg1 ;
  int ldvarg37 ;
  int ldvarg29 ;
  unsigned short *ldvarg24 ;
  void *tmp ;
  int ldvarg35 ;
  unsigned char *ldvarg0 ;
  void *tmp___0 ;
  int ldvarg38 ;
  int ldvarg5 ;
  unsigned int ldvarg33 ;
  int *ldvarg16 ;
  void *tmp___1 ;
  int ldvarg6 ;
  int ldvarg4 ;
  int ldvarg14 ;
  unsigned int ldvarg34 ;
  int ldvarg28 ;
  int ldvarg2 ;
  unsigned int ldvarg20 ;
  int ldvarg31 ;
  int ldvarg3 ;
  int ldvarg8 ;
  int ldvarg13 ;
  int ldvarg36 ;
  int ldvarg10 ;
  int ldvarg9 ;
  int ldvarg26 ;
  u16 *ldvarg27 ;
  void *tmp___2 ;
  int ldvarg15 ;
  int ldvarg30 ;
  char *ldvarg21 ;
  void *tmp___3 ;
  int *ldvarg17 ;
  void *tmp___4 ;
  int ldvarg25 ;
  int ldvarg22 ;
  int ldvarg19 ;
  struct notifier_block *ldvarg39 ;
  void *tmp___5 ;
  unsigned long ldvarg41 ;
  void *ldvarg40 ;
  void *tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  {
  tmp = ldv_init_zalloc(2UL);
  ldvarg24 = (unsigned short *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg0 = (unsigned char *)tmp___0;
  tmp___1 = ldv_init_zalloc(4UL);
  ldvarg16 = (int *)tmp___1;
  tmp___2 = ldv_init_zalloc(2UL);
  ldvarg27 = (u16 *)tmp___2;
  tmp___3 = ldv_init_zalloc(1UL);
  ldvarg21 = (char *)tmp___3;
  tmp___4 = ldv_init_zalloc(4UL);
  ldvarg17 = (int *)tmp___4;
  tmp___5 = ldv_init_zalloc(24UL);
  ldvarg39 = (struct notifier_block *)tmp___5;
  tmp___6 = ldv_init_zalloc(1UL);
  ldvarg40 = tmp___6;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg18), 0, 8UL);
  ldv_memset((void *)(& ldvarg11), 0, 4UL);
  ldv_memset((void *)(& ldvarg32), 0, 4UL);
  ldv_memset((void *)(& ldvarg7), 0, 4UL);
  ldv_memset((void *)(& ldvarg23), 0, 4UL);
  ldv_memset((void *)(& ldvarg12), 0, 4UL);
  ldv_memset((void *)(& ldvarg1), 0, 4UL);
  ldv_memset((void *)(& ldvarg37), 0, 4UL);
  ldv_memset((void *)(& ldvarg29), 0, 4UL);
  ldv_memset((void *)(& ldvarg35), 0, 4UL);
  ldv_memset((void *)(& ldvarg38), 0, 4UL);
  ldv_memset((void *)(& ldvarg5), 0, 4UL);
  ldv_memset((void *)(& ldvarg33), 0, 4UL);
  ldv_memset((void *)(& ldvarg6), 0, 4UL);
  ldv_memset((void *)(& ldvarg4), 0, 4UL);
  ldv_memset((void *)(& ldvarg14), 0, 4UL);
  ldv_memset((void *)(& ldvarg34), 0, 4UL);
  ldv_memset((void *)(& ldvarg28), 0, 4UL);
  ldv_memset((void *)(& ldvarg2), 0, 4UL);
  ldv_memset((void *)(& ldvarg20), 0, 4UL);
  ldv_memset((void *)(& ldvarg31), 0, 4UL);
  ldv_memset((void *)(& ldvarg3), 0, 4UL);
  ldv_memset((void *)(& ldvarg8), 0, 4UL);
  ldv_memset((void *)(& ldvarg13), 0, 4UL);
  ldv_memset((void *)(& ldvarg36), 0, 4UL);
  ldv_memset((void *)(& ldvarg10), 0, 4UL);
  ldv_memset((void *)(& ldvarg9), 0, 4UL);
  ldv_memset((void *)(& ldvarg26), 0, 4UL);
  ldv_memset((void *)(& ldvarg15), 0, 4UL);
  ldv_memset((void *)(& ldvarg30), 0, 4UL);
  ldv_memset((void *)(& ldvarg25), 0, 4UL);
  ldv_memset((void *)(& ldvarg22), 0, 4UL);
  ldv_memset((void *)(& ldvarg19), 0, 4UL);
  ldv_memset((void *)(& ldvarg41), 0, 8UL);
  ldv_state_variable_4 = 0;
  work_init_1();
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 1;
  ldv_34948:
  tmp___7 = __VERIFIER_nondet_int();
  switch (tmp___7) {
  case 0: ;
  if (ldv_state_variable_4 != 0) {
    tmp___8 = __VERIFIER_nondet_int();
    switch (tmp___8) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_copy_font(fb_con_group0, ldvarg38);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 1: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_putc(fb_con_group0, ldvarg37, ldvarg36, ldvarg35);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 2: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_resize(fb_con_group0, ldvarg34, ldvarg33, ldvarg32);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 3: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_scroll(fb_con_group0, ldvarg30, ldvarg29, ldvarg28, ldvarg31);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 4: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_invert_region(fb_con_group0, ldvarg27, ldvarg26);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 5: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_putcs(fb_con_group0, (unsigned short const *)ldvarg24, ldvarg23, ldvarg22,
                  ldvarg25);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 6: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_set_def_font(fb_con_group0, fb_con_group1, ldvarg21);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 7: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_debug_enter(fb_con_group0);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 8: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_set_font(fb_con_group0, fb_con_group1, ldvarg20);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 9: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_cursor(fb_con_group0, ldvarg19);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 10: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_deinit(fb_con_group0);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 11: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_getxy(fb_con_group0, ldvarg18, ldvarg17, ldvarg16);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 12: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_scrolldelta(fb_con_group0, ldvarg15);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 13: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_screen_pos(fb_con_group0, ldvarg14);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 14: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_bmove(fb_con_group0, ldvarg12, ldvarg10, ldvarg9, ldvarg13, ldvarg8, ldvarg11);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 15: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_switch(fb_con_group0);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 16: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_clear(fb_con_group0, ldvarg6, ldvarg5, ldvarg4, ldvarg7);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 17: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_debug_leave(fb_con_group0);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 18: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_set_origin(fb_con_group0);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 19: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_blank(fb_con_group0, ldvarg3, ldvarg2);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 20: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_init(fb_con_group0, ldvarg1);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 21: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_get_font(fb_con_group0, fb_con_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 22: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_set_palette(fb_con_group0, ldvarg0);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    case 23: ;
    if (ldv_state_variable_4 == 1) {
      fbcon_startup();
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34909;
    default:
    ldv_stop();
    }
    ldv_34909: ;
  } else {
  }
  goto ldv_34934;
  case 1: ;
  if (ldv_state_variable_1 != 0) {
    invoke_work_1();
  } else {
  }
  goto ldv_34934;
  case 2: ;
  if (ldv_state_variable_0 != 0) {
    tmp___9 = __VERIFIER_nondet_int();
    switch (tmp___9) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      fb_console_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_34939;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = fb_console_init();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_3 = 1;
        ldv_state_variable_4 = 1;
        ldv_initialize_consw_4();
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_34939;
    default:
    ldv_stop();
    }
    ldv_34939: ;
  } else {
  }
  goto ldv_34934;
  case 3: ;
  if (ldv_state_variable_3 != 0) {
    tmp___10 = __VERIFIER_nondet_int();
    switch (tmp___10) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      fbcon_event_notify(ldvarg39, ldvarg41, ldvarg40);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_34944;
    default:
    ldv_stop();
    }
    ldv_34944: ;
  } else {
  }
  goto ldv_34934;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    choose_timer_2(ldv_timer_list_2);
  } else {
  }
  goto ldv_34934;
  default:
  ldv_stop();
  }
  ldv_34934: ;
  goto ldv_34948;
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
void ldv_mutex_unlock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_15(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
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
int ldv_mod_timer_20(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_2(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_21(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_2(ldv_func_arg1);
  return (ldv_func_res);
}
}
bool ldv_cancel_work_sync_22(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_1(ldv_func_arg1);
  return (ldv_func_res);
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
  if (ldv_mutex_update_lock_of_backlight_device != 1) {
    ldv_error();
  } else {
  }
  return;
}
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void add_timer(struct timer_list *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int con_copy_unimap(struct vc_data *arg0, struct vc_data *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int con_is_bound(const struct consw *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int con_set_default_unimap(struct vc_data *arg0) {
  return __VERIFIER_nondet_int();
}
void console_conditional_schedule() {
  return;
}
void console_lock() {
  return;
}
int __VERIFIER_nondet_int(void);
int console_trylock() {
  return __VERIFIER_nondet_int();
}
void console_unlock() {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
u32 crc32_le(u32 arg0, const unsigned char *arg1, size_t arg2) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
struct device *device_create(struct class *arg0, struct device *arg1, dev_t arg2, void *arg3, const char *arg4, ...) {
  return ldv_malloc(sizeof(struct device));
}
int __VERIFIER_nondet_int(void);
int device_create_file(struct device *arg0, const struct device_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void device_destroy(struct class *arg0, dev_t arg1) {
  return;
}
void device_remove_file(struct device *arg0, const struct device_attribute *arg1) {
  return;
}
void do_blank_screen(int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int do_take_over_console(const struct consw *arg0, int arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int do_unbind_con_driver(const struct consw *arg0, int arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void do_unblank_screen(int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int do_unregister_con_driver(const struct consw *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int fb_blank(struct fb_info *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int fb_copy_cmap(const struct fb_cmap *arg0, struct fb_cmap *arg1) {
  return __VERIFIER_nondet_int();
}
const struct fb_cmap *fb_default_cmap(int arg0) {
  return ldv_malloc(sizeof(struct fb_cmap));
}
const struct fb_videomode *fb_find_best_mode(const struct fb_var_screeninfo *arg0, struct list_head *arg1) {
  return ldv_malloc(sizeof(struct fb_videomode));
}
const struct fb_videomode *fb_find_nearest_mode(const struct fb_videomode *arg0, struct list_head *arg1) {
  return ldv_malloc(sizeof(struct fb_videomode));
}
int __VERIFIER_nondet_int(void);
int fb_get_color_depth(struct fb_var_screeninfo *arg0, struct fb_fix_screeninfo *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int fb_is_primary_device(struct fb_info *arg0) {
  return __VERIFIER_nondet_int();
}
const struct fb_videomode *fb_match_mode(const struct fb_var_screeninfo *arg0, struct list_head *arg1) {
  return ldv_malloc(sizeof(struct fb_videomode));
}
int __VERIFIER_nondet_int(void);
int fb_mode_is_equal(const struct fb_videomode *arg0, const struct fb_videomode *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int fb_notifier_call_chain(unsigned long arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int fb_register_client(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int fb_set_cmap(struct fb_cmap *arg0, struct fb_info *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int fb_set_var(struct fb_info *arg0, struct fb_var_screeninfo *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int fb_show_logo(struct fb_info *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int fb_unregister_client(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
void fb_videomode_to_var(struct fb_var_screeninfo *arg0, const struct fb_videomode *arg1) {
  return;
}
void fbcon_set_bitops(struct fbcon_ops *arg0) {
  return;
}
void fbcon_set_tileops(struct vc_data *arg0, struct fb_info *arg1) {
  return;
}
const struct font_desc *find_font(const char *arg0) {
  return ldv_malloc(sizeof(struct font_desc));
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
const struct font_desc *get_default_font(int arg0, int arg1, u32 arg2, u32 arg3) {
  return ldv_malloc(sizeof(struct font_desc));
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int lock_fb_info(struct fb_info *arg0) {
  return __VERIFIER_nondet_int();
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void module_put(struct module *arg0) {
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
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
void redraw_screen(struct vc_data *arg0, int arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int simple_strtoul(const char *arg0, char **arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
bool __VERIFIER_nondet_bool(void);
bool try_module_get(struct module *arg0) {
  return __VERIFIER_nondet_bool();
}
void update_region(struct vc_data *arg0, unsigned long arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int vc_resize(struct vc_data *arg0, unsigned int arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
