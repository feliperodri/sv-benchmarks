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
typedef unsigned long u_long;
typedef __s32 int32_t;
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
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
struct notifier_block;
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
struct __anonstruct_mm_context_t_115 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_115 mm_context_t;
struct bio_vec;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct call_single_data {
   struct llist_node llist ;
   void (*func)(void * ) ;
   void *info ;
   unsigned int flags ;
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
union __anonunion___u_168 {
   struct idr_layer *__val ;
   char __c[1U] ;
};
union __anonunion___u_170 {
   struct idr_layer *__val ;
   char __c[1U] ;
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
struct uts_namespace;
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
struct device_attribute;
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
struct kvec;
struct mnt_namespace;
struct ipc_namespace;
struct net;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns_for_children ;
   struct net *net_ns ;
};
struct proc_ns_operations;
struct ns_common {
   atomic_long_t stashed ;
   struct proc_ns_operations const *ops ;
   unsigned int inum ;
};
struct pidmap {
   atomic_t nr_free ;
   void *page ;
};
struct fs_pin;
struct vfsmount;
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
   struct dentry *proc_thread_self ;
   struct fs_pin *bacct ;
   struct user_namespace *user_ns ;
   struct work_struct proc_work ;
   kgid_t pid_gid ;
   int hide_pid ;
   int reboot ;
   struct ns_common ns ;
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
   struct __anonstruct____missing_field_name_224 __annonCompField58 ;
};
struct lockref {
   union __anonunion____missing_field_name_223 __annonCompField59 ;
};
struct __anonstruct____missing_field_name_226 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_225 {
   struct __anonstruct____missing_field_name_226 __annonCompField60 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_225 __annonCompField61 ;
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
   struct __anonstruct____missing_field_name_231 __annonCompField62 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_230 __annonCompField63 ;
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
struct block_device;
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
union __anonunion____missing_field_name_234 {
   struct bio_integrity_payload *bi_integrity ;
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
   atomic_t __bi_remaining ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct io_context *bi_ioc ;
   struct cgroup_subsys_state *bi_css ;
   union __anonunion____missing_field_name_234 __annonCompField64 ;
   unsigned short bi_vcnt ;
   unsigned short bi_max_vecs ;
   atomic_t __bi_cnt ;
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
   union __anonunion____missing_field_name_236 __annonCompField65 ;
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
   union __anonunion____missing_field_name_239 __annonCompField66 ;
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
   union __anonunion____missing_field_name_240 __annonCompField67 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_241 __annonCompField68 ;
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
struct block_device_operations;
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
struct proc_dir_entry;
struct device_type;
struct class;
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
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
struct subsys_private;
struct bus_type;
struct device_node;
struct fwnode_handle;
struct iommu_ops;
struct iommu_group;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct fprop_local_percpu {
   struct percpu_counter events ;
   unsigned int period ;
   raw_spinlock_t lock ;
};
typedef int congested_fn(void * , int );
struct bdi_writeback_congested {
   unsigned long state ;
   atomic_t refcnt ;
   struct backing_dev_info *bdi ;
   int blkcg_id ;
   struct rb_node rb_node ;
};
union __anonunion____missing_field_name_253 {
   struct work_struct release_work ;
   struct callback_head rcu ;
};
struct bdi_writeback {
   struct backing_dev_info *bdi ;
   unsigned long state ;
   unsigned long last_old_flush ;
   struct list_head b_dirty ;
   struct list_head b_io ;
   struct list_head b_more_io ;
   struct list_head b_dirty_time ;
   spinlock_t list_lock ;
   struct percpu_counter stat[4U] ;
   struct bdi_writeback_congested *congested ;
   unsigned long bw_time_stamp ;
   unsigned long dirtied_stamp ;
   unsigned long written_stamp ;
   unsigned long write_bandwidth ;
   unsigned long avg_write_bandwidth ;
   unsigned long dirty_ratelimit ;
   unsigned long balanced_dirty_ratelimit ;
   struct fprop_local_percpu completions ;
   int dirty_exceeded ;
   spinlock_t work_lock ;
   struct list_head work_list ;
   struct delayed_work dwork ;
   struct percpu_ref refcnt ;
   struct fprop_local_percpu memcg_completions ;
   struct cgroup_subsys_state *memcg_css ;
   struct cgroup_subsys_state *blkcg_css ;
   struct list_head memcg_node ;
   struct list_head blkcg_node ;
   union __anonunion____missing_field_name_253 __annonCompField76 ;
};
struct backing_dev_info {
   struct list_head bdi_list ;
   unsigned long ra_pages ;
   unsigned int capabilities ;
   congested_fn *congested_fn ;
   void *congested_data ;
   char *name ;
   unsigned int min_ratio ;
   unsigned int max_ratio ;
   unsigned int max_prop_frac ;
   atomic_long_t tot_write_bandwidth ;
   struct bdi_writeback wb ;
   struct radix_tree_root cgwb_tree ;
   struct rb_root cgwb_congested_tree ;
   atomic_t usage_cnt ;
   wait_queue_head_t wb_waitq ;
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
union __anonunion____missing_field_name_254 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion____missing_field_name_255 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion____missing_field_name_254 __annonCompField77 ;
   union __anonunion____missing_field_name_255 __annonCompField78 ;
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
   bio_end_io_t *bip_end_io ;
   unsigned short bip_slab ;
   unsigned short bip_vcnt ;
   unsigned short bip_max_vcnt ;
   unsigned short bip_flags ;
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
struct blk_flush_queue;
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
union __anonunion____missing_field_name_256 {
   struct call_single_data csd ;
   unsigned long fifo_time ;
};
struct blk_mq_ctx;
union __anonunion____missing_field_name_257 {
   struct hlist_node hash ;
   struct list_head ipi_list ;
};
union __anonunion____missing_field_name_258 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_260 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_261 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion____missing_field_name_259 {
   struct __anonstruct_elv_260 elv ;
   struct __anonstruct_flush_261 flush ;
};
struct request {
   struct list_head queuelist ;
   union __anonunion____missing_field_name_256 __annonCompField79 ;
   struct request_queue *q ;
   struct blk_mq_ctx *mq_ctx ;
   u64 cmd_flags ;
   unsigned int cmd_type ;
   unsigned long atomic_flags ;
   int cpu ;
   unsigned int __data_len ;
   sector_t __sector ;
   struct bio *bio ;
   struct bio *biotail ;
   union __anonunion____missing_field_name_257 __annonCompField80 ;
   union __anonunion____missing_field_name_258 __annonCompField81 ;
   union __anonunion____missing_field_name_259 __annonCompField82 ;
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
typedef void elevator_registered_fn(struct request_queue * );
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
   elevator_registered_fn *elevator_registered_fn ;
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
   int alloc_policy ;
   int next_tag ;
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
   struct blk_flush_queue *fq ;
   struct list_head requeue_list ;
   spinlock_t requeue_lock ;
   struct work_struct requeue_work ;
   struct mutex sysfs_lock ;
   int bypass_depth ;
   atomic_t mq_freeze_depth ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
   struct throtl_data *td ;
   struct callback_head callback_head ;
   wait_queue_head_t mq_freeze_wq ;
   struct percpu_ref mq_usage_counter ;
   struct list_head all_q_node ;
   struct blk_mq_tag_set *tag_set ;
   struct list_head tag_set_list ;
};
struct blk_plug {
   struct list_head list ;
   struct list_head mq_list ;
   struct list_head cb_list ;
};
struct blk_integrity_iter {
   void *prot_buf ;
   void *data_buf ;
   sector_t seed ;
   unsigned int data_size ;
   unsigned short interval ;
   char const *disk_name ;
};
typedef int integrity_processing_fn(struct blk_integrity_iter * );
struct blk_integrity {
   integrity_processing_fn *generate_fn ;
   integrity_processing_fn *verify_fn ;
   unsigned short flags ;
   unsigned short tuple_size ;
   unsigned short interval ;
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
   long (*direct_access)(struct block_device * , sector_t , void ** , unsigned long * ,
                         long ) ;
   unsigned int (*check_events)(struct gendisk * , unsigned int ) ;
   int (*media_changed)(struct gendisk * ) ;
   void (*unlock_native_capacity)(struct gendisk * ) ;
   int (*revalidate_disk)(struct gendisk * ) ;
   int (*getgeo)(struct block_device * , struct hd_geometry * ) ;
   void (*swap_slot_free_notify)(struct block_device * , unsigned long ) ;
   struct module *owner ;
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
   struct bdi_writeback *wb ;
   struct inode *inode ;
   int wb_id ;
   int wb_lcand_id ;
   int wb_tcand_id ;
   size_t wb_bytes ;
   size_t wb_lcand_bytes ;
   size_t wb_tcand_bytes ;
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
struct blkcg_policy_data;
struct blkcg {
   struct cgroup_subsys_state css ;
   spinlock_t lock ;
   struct radix_tree_root blkg_tree ;
   struct blkcg_gq *blkg_hint ;
   struct hlist_head blkg_list ;
   struct blkcg_policy_data *pd[2U] ;
   struct list_head cgwb_list ;
};
struct blkg_policy_data {
   struct blkcg_gq *blkg ;
   int plid ;
   struct list_head alloc_node ;
};
struct blkcg_policy_data {
   int plid ;
   struct list_head alloc_node ;
};
struct blkcg_gq {
   struct request_queue *q ;
   struct list_head q_node ;
   struct hlist_node blkcg_node ;
   struct blkcg *blkcg ;
   struct bdi_writeback_congested *wb_congested ;
   struct blkcg_gq *parent ;
   struct request_list rl ;
   atomic_t refcnt ;
   bool online ;
   struct blkg_policy_data *pd[2U] ;
   struct callback_head callback_head ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_269 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_269 __annonCompField83 ;
   unsigned long nr_segs ;
};
struct otp_info {
   __u32 start ;
   __u32 length ;
   __u32 locked ;
};
struct nand_oobfree {
   __u32 offset ;
   __u32 length ;
};
struct mtd_ecc_stats {
   __u32 corrected ;
   __u32 failed ;
   __u32 badblocks ;
   __u32 bbtblocks ;
};
struct erase_info {
   struct mtd_info *mtd ;
   uint64_t addr ;
   uint64_t len ;
   uint64_t fail_addr ;
   u_long time ;
   u_long retries ;
   unsigned int dev ;
   unsigned int cell ;
   void (*callback)(struct erase_info * ) ;
   u_long priv ;
   u_char state ;
   struct erase_info *next ;
};
struct mtd_erase_region_info {
   uint64_t offset ;
   uint32_t erasesize ;
   uint32_t numblocks ;
   unsigned long *lockmap ;
};
struct mtd_oob_ops {
   unsigned int mode ;
   size_t len ;
   size_t retlen ;
   size_t ooblen ;
   size_t oobretlen ;
   uint32_t ooboffs ;
   uint8_t *datbuf ;
   uint8_t *oobbuf ;
};
struct nand_ecclayout {
   __u32 eccbytes ;
   __u32 eccpos[640U] ;
   __u32 oobavail ;
   struct nand_oobfree oobfree[32U] ;
};
struct mtd_info {
   u_char type ;
   uint32_t flags ;
   uint64_t size ;
   uint32_t erasesize ;
   uint32_t writesize ;
   uint32_t writebufsize ;
   uint32_t oobsize ;
   uint32_t oobavail ;
   unsigned int erasesize_shift ;
   unsigned int writesize_shift ;
   unsigned int erasesize_mask ;
   unsigned int writesize_mask ;
   unsigned int bitflip_threshold ;
   char const *name ;
   int index ;
   struct nand_ecclayout *ecclayout ;
   unsigned int ecc_step_size ;
   unsigned int ecc_strength ;
   int numeraseregions ;
   struct mtd_erase_region_info *eraseregions ;
   int (*_erase)(struct mtd_info * , struct erase_info * ) ;
   int (*_point)(struct mtd_info * , loff_t , size_t , size_t * , void ** , resource_size_t * ) ;
   int (*_unpoint)(struct mtd_info * , loff_t , size_t ) ;
   unsigned long (*_get_unmapped_area)(struct mtd_info * , unsigned long , unsigned long ,
                                       unsigned long ) ;
   int (*_read)(struct mtd_info * , loff_t , size_t , size_t * , u_char * ) ;
   int (*_write)(struct mtd_info * , loff_t , size_t , size_t * , u_char const * ) ;
   int (*_panic_write)(struct mtd_info * , loff_t , size_t , size_t * , u_char const * ) ;
   int (*_read_oob)(struct mtd_info * , loff_t , struct mtd_oob_ops * ) ;
   int (*_write_oob)(struct mtd_info * , loff_t , struct mtd_oob_ops * ) ;
   int (*_get_fact_prot_info)(struct mtd_info * , size_t , size_t * , struct otp_info * ) ;
   int (*_read_fact_prot_reg)(struct mtd_info * , loff_t , size_t , size_t * , u_char * ) ;
   int (*_get_user_prot_info)(struct mtd_info * , size_t , size_t * , struct otp_info * ) ;
   int (*_read_user_prot_reg)(struct mtd_info * , loff_t , size_t , size_t * , u_char * ) ;
   int (*_write_user_prot_reg)(struct mtd_info * , loff_t , size_t , size_t * ,
                               u_char * ) ;
   int (*_lock_user_prot_reg)(struct mtd_info * , loff_t , size_t ) ;
   int (*_writev)(struct mtd_info * , struct kvec const * , unsigned long , loff_t ,
                  size_t * ) ;
   void (*_sync)(struct mtd_info * ) ;
   int (*_lock)(struct mtd_info * , loff_t , uint64_t ) ;
   int (*_unlock)(struct mtd_info * , loff_t , uint64_t ) ;
   int (*_is_locked)(struct mtd_info * , loff_t , uint64_t ) ;
   int (*_block_isreserved)(struct mtd_info * , loff_t ) ;
   int (*_block_isbad)(struct mtd_info * , loff_t ) ;
   int (*_block_markbad)(struct mtd_info * , loff_t ) ;
   int (*_suspend)(struct mtd_info * ) ;
   void (*_resume)(struct mtd_info * ) ;
   void (*_reboot)(struct mtd_info * ) ;
   int (*_get_device)(struct mtd_info * ) ;
   void (*_put_device)(struct mtd_info * ) ;
   struct backing_dev_info *backing_dev_info ;
   struct notifier_block reboot_notifier ;
   struct mtd_ecc_stats ecc_stats ;
   int subpage_sft ;
   void *priv ;
   struct module *owner ;
   struct device dev ;
   int usecount ;
};
struct mtd_partition;
struct mtd_part_parser_data;
struct mtd_notifier {
   void (*add)(struct mtd_info * ) ;
   void (*remove)(struct mtd_info * ) ;
   struct list_head list ;
};
struct mtd_partition {
   char const *name ;
   uint64_t size ;
   uint64_t offset ;
   uint32_t mask_flags ;
   struct nand_ecclayout *ecclayout ;
};
struct mtd_part_parser_data {
   unsigned long origin ;
   struct device_node *of_node ;
};
enum hrtimer_restart;
struct vfsmount {
   struct dentry *mnt_root ;
   struct super_block *mnt_sb ;
   int mnt_flags ;
};
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
enum hrtimer_restart;
struct mtd_concat {
   struct mtd_info mtd ;
   int num_subdev ;
   struct mtd_info **subdev ;
};
enum hrtimer_restart;
struct mtd_part_parser {
   struct list_head list ;
   struct module *owner ;
   char const *name ;
   int (*parse_fn)(struct mtd_info * , struct mtd_partition ** , struct mtd_part_parser_data * ) ;
};
struct mtd_part {
   struct mtd_info mtd ;
   struct mtd_info *master ;
   uint64_t offset ;
   struct list_head list ;
};
typedef unsigned int u_int;
typedef __u32 u_int32_t;
typedef __u16 uint16_t;
enum page_cache_mode {
    _PAGE_CACHE_MODE_WB = 0,
    _PAGE_CACHE_MODE_WC = 1,
    _PAGE_CACHE_MODE_UC_MINUS = 2,
    _PAGE_CACHE_MODE_UC = 3,
    _PAGE_CACHE_MODE_WT = 4,
    _PAGE_CACHE_MODE_WP = 5,
    _PAGE_CACHE_MODE_NUM = 8
} ;
struct tss_struct;
struct cpuinfo_x86;
struct cpuinfo_x86 {
   __u8 x86 ;
   __u8 x86_vendor ;
   __u8 x86_model ;
   __u8 x86_mask ;
   int x86_tlbsize ;
   __u8 x86_virt_bits ;
   __u8 x86_phys_bits ;
   __u8 x86_coreid_bits ;
   __u32 extended_cpuid_level ;
   int cpuid_level ;
   __u32 x86_capability[14U] ;
   char x86_vendor_id[16U] ;
   char x86_model_id[64U] ;
   int x86_cache_size ;
   int x86_cache_alignment ;
   int x86_cache_max_rmid ;
   int x86_cache_occ_scale ;
   int x86_power ;
   unsigned long loops_per_jiffy ;
   u16 x86_max_cores ;
   u16 apicid ;
   u16 initial_apicid ;
   u16 x86_clflush_size ;
   u16 booted_cores ;
   u16 phys_proc_id ;
   u16 cpu_core_id ;
   u8 compute_unit_id ;
   u16 cpu_index ;
   u32 microcode ;
};
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
struct __anonstruct_mm_segment_t_33 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_33 mm_segment_t;
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
typedef s32 compat_time_t;
typedef u32 compat_caddr_t;
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_timespec {
   compat_time_t tv_sec ;
   s32 tv_nsec ;
};
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
struct blkpg_ioctl_arg {
   int op ;
   int flags ;
   int datalen ;
   void *data ;
};
struct blkpg_partition {
   long long start ;
   long long length ;
   int pno ;
   char devname[64U] ;
   char volname[64U] ;
};
struct erase_info_user {
   __u32 start ;
   __u32 length ;
};
struct erase_info_user64 {
   __u64 start ;
   __u64 length ;
};
struct mtd_oob_buf {
   __u32 start ;
   __u32 length ;
   unsigned char *ptr ;
};
struct mtd_oob_buf64 {
   __u64 start ;
   __u32 pad ;
   __u32 length ;
   __u64 usr_ptr ;
};
struct mtd_write_req {
   __u64 start ;
   __u64 len ;
   __u64 ooblen ;
   __u64 usr_data ;
   __u64 usr_oob ;
   __u8 mode ;
   __u8 padding[7U] ;
};
struct mtd_info_user {
   __u8 type ;
   __u32 flags ;
   __u32 size ;
   __u32 erasesize ;
   __u32 writesize ;
   __u32 oobsize ;
   __u64 padding ;
};
struct region_info_user {
   __u32 offset ;
   __u32 erasesize ;
   __u32 numblocks ;
   __u32 regionindex ;
};
struct nand_oobinfo {
   __u32 useecc ;
   __u32 eccbytes ;
   __u32 oobfree[8U][2U] ;
   __u32 eccpos[32U] ;
};
struct nand_ecclayout_user {
   __u32 eccbytes ;
   __u32 eccpos[64U] ;
   __u32 oobavail ;
   struct nand_oobfree oobfree[8U] ;
};
enum mtd_file_modes {
    MTD_FILE_MODE_NORMAL = 0,
    MTD_FILE_MODE_OTP_FACTORY = 1,
    MTD_FILE_MODE_OTP_USER = 2,
    MTD_FILE_MODE_RAW = 3
} ;
union __anonunion_map_word_291 {
   unsigned long x[4U] ;
};
typedef union __anonunion_map_word_291 map_word;
struct mtd_chip_driver;
struct map_info {
   char const *name ;
   unsigned long size ;
   resource_size_t phys ;
   void *virt ;
   void *cached ;
   int swap ;
   int bankwidth ;
   map_word (*read)(struct map_info * , unsigned long ) ;
   void (*copy_from)(struct map_info * , void * , unsigned long , ssize_t ) ;
   void (*write)(struct map_info * , map_word const , unsigned long ) ;
   void (*copy_to)(struct map_info * , unsigned long , void const * , ssize_t ) ;
   void (*inval_cache)(struct map_info * , unsigned long , ssize_t ) ;
   void (*set_vpp)(struct map_info * , int ) ;
   unsigned long pfow_base ;
   unsigned long map_priv_1 ;
   unsigned long map_priv_2 ;
   struct device_node *device_node ;
   void *fldrv_priv ;
   struct mtd_chip_driver *fldrv ;
};
struct mtd_chip_driver {
   struct mtd_info *(*probe)(struct map_info * ) ;
   void (*destroy)(struct mtd_info * ) ;
   struct module *module ;
   char *name ;
   struct list_head list ;
};
struct mtd_file_info {
   struct mtd_info *mtd ;
   enum mtd_file_modes mode ;
};
struct mtd_oob_buf32 {
   u_int32_t start ;
   u_int32_t length ;
   compat_caddr_t ptr ;
};
__inline static long ldv__builtin_expect(long exp , long c ) ;
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
extern struct module __this_module ;
__inline static int ffs(int x )
{
  int r ;
  {
  __asm__ ("bsfl %1,%0": "=r" (r): "rm" (x), "0" (-1));
  return (r + 1);
}
}
__inline static bool is_power_of_2(unsigned long n )
{
  {
  return ((bool )(n != 0UL && ((n - 1UL) & n) == 0UL));
}
}
extern int printk(char const * , ...) ;
extern void __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern int kstrtouint(char const * , unsigned int , unsigned int * ) ;
extern int snprintf(char * , size_t , char const * , ...) ;
void *ldv_err_ptr(long error ) ;
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
extern void list_del(struct list_head * ) ;
extern void *memset(void * , int , size_t ) ;
extern int strcmp(char const * , char const * ) ;
extern void *kmemdup(void const * , size_t , gfp_t ) ;
__inline static void *ERR_PTR(long error ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern int debug_lockdep_rcu_enabled(void) ;
extern void *idr_find_slowpath(struct idr * , int ) ;
extern int idr_alloc(struct idr * , void * , int , int , gfp_t ) ;
extern void *idr_get_next(struct idr * , int * ) ;
extern void idr_remove(struct idr * , int ) ;
__inline static void *idr_find(struct idr *idr , int id )
{
  struct idr_layer *hint ;
  struct idr_layer *________p1 ;
  struct idr_layer *_________p1 ;
  union __anonunion___u_168 __u ;
  int tmp ;
  struct idr_layer *________p1___0 ;
  struct idr_layer *_________p1___0 ;
  union __anonunion___u_170 __u___0 ;
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
void ldv___module_get_5(struct module *ldv_func_arg1 ) ;
void ldv___module_get_7(struct module *ldv_func_arg1 ) ;
bool ldv_try_module_get_9(struct module *ldv_func_arg1 ) ;
void ldv_module_put_6(struct module *ldv_func_arg1 ) ;
void ldv_module_put_8(struct module *ldv_func_arg1 ) ;
void ldv_module_put_10(struct module *ldv_func_arg1 ) ;
void ldv_module_put_11(struct module *ldv_func_arg1 ) ;
int ldv_try_module_get(struct module *module ) ;
void ldv_module_get(struct module *module ) ;
void ldv_module_put(struct module *module ) ;
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
int ldv_state_variable_8 ;
struct inode *mtd_fops_group1 ;
int ldv_state_variable_15 ;
int ldv_state_variable_20 ;
int ldv_state_variable_10 ;
int ldv_state_variable_6 ;
int ldv_state_variable_0 ;
struct file *mtd_fops_group2 ;
int ldv_state_variable_21 ;
int ldv_state_variable_5 ;
int ldv_state_variable_16 ;
int ldv_state_variable_13 ;
int ldv_state_variable_2 ;
int ldv_state_variable_12 ;
struct device *mtd_cls_pm_ops_group1 ;
int ldv_state_variable_14 ;
int ldv_state_variable_11 ;
int LDV_IN_INTERRUPT = 1;
int ldv_state_variable_17 ;
int ldv_state_variable_18 ;
struct file *mtd_proc_ops_group2 ;
struct device_attribute *dev_attr_bitflip_threshold_group0 ;
int ldv_state_variable_19 ;
int ldv_state_variable_9 ;
int ldv_state_variable_3 ;
struct device *dev_attr_bitflip_threshold_group1 ;
struct inode *mtd_proc_ops_group1 ;
int ref_cnt ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_state_variable_4 ;
void ldv_file_operations_3(void) ;
void ldv_file_operations_1(void) ;
void ldv_initialize_device_attribute_10(void) ;
void ldv_dev_pm_ops_21(void) ;
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_puts(struct seq_file * , char const * ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int single_open(struct file * , int (*)(struct seq_file * , void * ) , void * ) ;
extern int single_release(struct inode * , struct file * ) ;
extern struct proc_dir_entry *proc_create_data(char const * , umode_t , struct proc_dir_entry * ,
                                               struct file_operations const * ,
                                               void * ) ;
__inline static struct proc_dir_entry *proc_create(char const *name , umode_t mode ,
                                                   struct proc_dir_entry *parent ,
                                                   struct file_operations const *proc_fops )
{
  struct proc_dir_entry *tmp ;
  {
  tmp = proc_create_data(name, (int )mode, parent, proc_fops, (void *)0);
  return (tmp);
}
}
extern void remove_proc_entry(char const * , struct proc_dir_entry * ) ;
extern int __class_register(struct class * , struct lock_class_key * ) ;
extern void class_unregister(struct class * ) ;
extern int dev_set_name(struct device * , char const * , ...) ;
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
__inline static int device_is_registered(struct device *dev )
{
  {
  return ((int )dev->kobj.state_in_sysfs);
}
}
extern int device_register(struct device * ) ;
extern void device_unregister(struct device * ) ;
extern struct device *device_create(struct class * , struct device * , dev_t , void * ,
                                    char const * , ...) ;
extern void device_destroy(struct class * , dev_t ) ;
extern int bdi_init(struct backing_dev_info * ) ;
extern void bdi_destroy(struct backing_dev_info * ) ;
extern int bdi_register(struct backing_dev_info * , struct device * , char const *
                        , ...) ;
extern int register_reboot_notifier(struct notifier_block * ) ;
extern int unregister_reboot_notifier(struct notifier_block * ) ;
int mtd_erase(struct mtd_info *mtd , struct erase_info *instr ) ;
int mtd_point(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen , void **virt ,
              resource_size_t *phys ) ;
int mtd_unpoint(struct mtd_info *mtd , loff_t from , size_t len ) ;
unsigned long mtd_get_unmapped_area(struct mtd_info *mtd , unsigned long len , unsigned long offset ,
                                    unsigned long flags ) ;
int mtd_read(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen , u_char *buf ) ;
int mtd_write(struct mtd_info *mtd , loff_t to , size_t len , size_t *retlen , u_char const *buf ) ;
int mtd_panic_write(struct mtd_info *mtd , loff_t to , size_t len , size_t *retlen ,
                    u_char const *buf ) ;
int mtd_read_oob(struct mtd_info *mtd , loff_t from , struct mtd_oob_ops *ops ) ;
int mtd_get_fact_prot_info(struct mtd_info *mtd , size_t len , size_t *retlen , struct otp_info *buf ) ;
int mtd_read_fact_prot_reg(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
                           u_char *buf ) ;
int mtd_get_user_prot_info(struct mtd_info *mtd , size_t len , size_t *retlen , struct otp_info *buf ) ;
int mtd_read_user_prot_reg(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
                           u_char *buf ) ;
int mtd_write_user_prot_reg(struct mtd_info *mtd , loff_t to , size_t len , size_t *retlen ,
                            u_char *buf ) ;
int mtd_lock_user_prot_reg(struct mtd_info *mtd , loff_t from , size_t len ) ;
int mtd_writev(struct mtd_info *mtd , struct kvec const *vecs , unsigned long count ,
               loff_t to , size_t *retlen ) ;
int mtd_lock(struct mtd_info *mtd , loff_t ofs , uint64_t len ) ;
int mtd_unlock(struct mtd_info *mtd , loff_t ofs , uint64_t len ) ;
int mtd_is_locked(struct mtd_info *mtd , loff_t ofs , uint64_t len ) ;
int mtd_block_isreserved(struct mtd_info *mtd , loff_t ofs ) ;
int mtd_block_isbad(struct mtd_info *mtd , loff_t ofs ) ;
int mtd_block_markbad(struct mtd_info *mtd , loff_t ofs ) ;
__inline static int mtd_suspend(struct mtd_info *mtd )
{
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )mtd->_suspend != (unsigned long )((int (*)(struct mtd_info * ))0)) {
    tmp = (*(mtd->_suspend))(mtd);
    tmp___0 = tmp;
  } else {
    tmp___0 = 0;
  }
  return (tmp___0);
}
}
__inline static void mtd_resume(struct mtd_info *mtd )
{
  {
  if ((unsigned long )mtd->_resume != (unsigned long )((void (*)(struct mtd_info * ))0)) {
    (*(mtd->_resume))(mtd);
  } else {
  }
  return;
}
}
int mtd_device_parse_register(struct mtd_info *mtd , char const * const *types ,
                              struct mtd_part_parser_data *parser_data , struct mtd_partition const *parts ,
                              int nr_parts ) ;
int mtd_device_unregister(struct mtd_info *master ) ;
struct mtd_info *get_mtd_device(struct mtd_info *mtd , int num ) ;
int __get_mtd_device(struct mtd_info *mtd ) ;
void __put_mtd_device(struct mtd_info *mtd ) ;
struct mtd_info *get_mtd_device_nm(char const *name ) ;
void put_mtd_device(struct mtd_info *mtd ) ;
void register_mtd_user(struct mtd_notifier *new ) ;
int unregister_mtd_user(struct mtd_notifier *old ) ;
void *mtd_kmalloc_up_to(struct mtd_info const *mtd , size_t *size ) ;
void mtd_erase_callback(struct erase_info *instr ) ;
struct mutex mtd_table_mutex ;
struct mtd_info *__mtd_next_device(int i ) ;
int add_mtd_device(struct mtd_info *mtd ) ;
int del_mtd_device(struct mtd_info *mtd ) ;
int add_mtd_partitions(struct mtd_info *master , struct mtd_partition const *parts ,
                       int nbparts ) ;
int del_mtd_partitions(struct mtd_info *master ) ;
int parse_mtd_partitions(struct mtd_info *master , char const * const *types ,
                         struct mtd_partition **pparts , struct mtd_part_parser_data *data ) ;
int init_mtdchar(void) ;
void cleanup_mtdchar(void) ;
static struct backing_dev_info mtd_bdi =
     {{0, 0}, 0UL, 0U, 0, 0, 0, 0U, 0U, 0U, {0L}, {0, 0UL, 0UL, {0, 0}, {0, 0}, {0,
                                                                               0},
                                                 {0, 0}, {{{{{0}}, 0U, 0U, 0, {0,
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0UL}}}},
                                                 {{{{{0}}, 0U, 0U, 0, {0, {0, 0},
                                                                       0, 0, 0UL}},
                                                   0LL, {0, 0}, 0}, {{{{0}}, 0U, 0U,
                                                                      0, {0, {0, 0},
                                                                          0, 0, 0UL}},
                                                                     0LL, {0, 0},
                                                                     0}, {{{{0}},
                                                                           0U, 0U,
                                                                           0, {0,
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0UL}},
                                                                          0LL, {0,
                                                                                0},
                                                                          0}, {{{{0}},
                                                                                0U,
                                                                                0U,
                                                                                0,
                                                                                {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}},
                                                                               0LL,
                                                                               {0,
                                                                                0},
                                                                               0}},
                                                 0, 0UL, 0UL, 0UL, 0UL, 0UL, 0UL,
                                                 0UL, {{{{{0}}, 0U, 0U, 0, {0, {0,
                                                                                0},
                                                                            0, 0,
                                                                            0UL}},
                                                        0LL, {0, 0}, 0}, 0U, {{{0}},
                                                                              0U,
                                                                              0U,
                                                                              0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}},
                                                 0, {{{{{0}}, 0U, 0U, 0, {0, {0, 0},
                                                                          0, 0, 0UL}}}},
                                                 {0, 0}, {{{0L}, {0, 0}, 0, {0, {0,
                                                                                 0},
                                                                             0, 0,
                                                                             0UL}},
                                                          {{0, 0}, 0UL, 0, 0UL, 0U,
                                                           0, 0, 0, {(char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0},
                                                           {0, {0, 0}, 0, 0, 0UL}},
                                                          0, 0}, {{0L}, 0UL, 0, 0,
                                                                  (_Bool)0, {0, 0}},
                                                 {{{{{0}}, 0U, 0U, 0, {0, {0, 0},
                                                                       0, 0, 0UL}},
                                                   0LL, {0, 0}, 0}, 0U, {{{0}}, 0U,
                                                                         0U, 0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}},
                                                 0, 0, {0, 0}, {0, 0}, {{{0L}, {0,
                                                                                0},
                                                                         0, {0, {0,
                                                                                 0},
                                                                             0, 0,
                                                                             0UL}}}},
    {0U, 0U, 0}, {0}, {0}, {{{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}},
    0, {{0, 0}, 0UL, 0, 0UL, 0U, 0, 0, 0, {(char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0}, {0, {0, 0}, 0, 0, 0UL}}, 0, 0};
static int mtd_cls_suspend(struct device *dev )
{
  struct mtd_info *mtd ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  if ((unsigned long )mtd != (unsigned long )((struct mtd_info *)0)) {
    tmp___0 = mtd_suspend(mtd);
    tmp___1 = tmp___0;
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
}
}
static int mtd_cls_resume(struct device *dev )
{
  struct mtd_info *mtd ;
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  if ((unsigned long )mtd != (unsigned long )((struct mtd_info *)0)) {
    mtd_resume(mtd);
  } else {
  }
  return (0);
}
}
static struct dev_pm_ops const mtd_cls_pm_ops =
     {0, 0, & mtd_cls_suspend, & mtd_cls_resume, & mtd_cls_suspend, & mtd_cls_resume,
    & mtd_cls_suspend, & mtd_cls_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0};
static struct class mtd_class =
     {"mtd", & __this_module, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & mtd_cls_pm_ops, 0};
static struct idr mtd_idr = {0, 0, 0, 0, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "mtd_idr.lock",
                                                                 0, 0UL}}}}, 0, 0};
struct mutex mtd_table_mutex = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "mtd_table_mutex.wait_lock",
                                                          0, 0UL}}}}, {& mtd_table_mutex.wait_list,
                                                                       & mtd_table_mutex.wait_list},
    0, (void *)(& mtd_table_mutex), {0, {0, 0}, "mtd_table_mutex", 0, 0UL}};
static char const __kstrtab_mtd_table_mutex[16U] =
  { 'm', 't', 'd', '_',
        't', 'a', 'b', 'l',
        'e', '_', 'm', 'u',
        't', 'e', 'x', '\000'};
struct kernel_symbol const __ksymtab_mtd_table_mutex ;
struct kernel_symbol const __ksymtab_mtd_table_mutex = {(unsigned long )(& mtd_table_mutex), (char const *)(& __kstrtab_mtd_table_mutex)};
struct mtd_info *__mtd_next_device(int i )
{
  void *tmp ;
  {
  tmp = idr_get_next(& mtd_idr, & i);
  return ((struct mtd_info *)tmp);
}
}
static char const __kstrtab___mtd_next_device[18U] =
  { '_', '_', 'm', 't',
        'd', '_', 'n', 'e',
        'x', 't', '_', 'd',
        'e', 'v', 'i', 'c',
        'e', '\000'};
struct kernel_symbol const __ksymtab___mtd_next_device ;
struct kernel_symbol const __ksymtab___mtd_next_device = {(unsigned long )(& __mtd_next_device), (char const *)(& __kstrtab___mtd_next_device)};
static struct list_head mtd_notifiers = {& mtd_notifiers, & mtd_notifiers};
static void mtd_release(struct device *dev )
{
  struct mtd_info *mtd ;
  void *tmp ;
  dev_t index ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  index = (dev_t )(mtd->index * 2 | 94371840);
  device_destroy(& mtd_class, index + 1U);
  return;
}
}
static ssize_t mtd_type_show(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{
  struct mtd_info *mtd ;
  void *tmp ;
  char *type ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  switch ((int )mtd->type) {
  case 0:
  type = (char *)"absent";
  goto ldv_34537;
  case 1:
  type = (char *)"ram";
  goto ldv_34537;
  case 2:
  type = (char *)"rom";
  goto ldv_34537;
  case 3:
  type = (char *)"nor";
  goto ldv_34537;
  case 4:
  type = (char *)"nand";
  goto ldv_34537;
  case 6:
  type = (char *)"dataflash";
  goto ldv_34537;
  case 7:
  type = (char *)"ubi";
  goto ldv_34537;
  case 8:
  type = (char *)"mlc-nand";
  goto ldv_34537;
  default:
  type = (char *)"unknown";
  }
  ldv_34537:
  tmp___0 = snprintf(buf, 4096UL, "%s\n", type);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_type = {{"type", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, & mtd_type_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t mtd_flags_show(struct device *dev , struct device_attribute *attr ,
                              char *buf )
{
  struct mtd_info *mtd ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  tmp___0 = snprintf(buf, 4096UL, "0x%lx\n", (unsigned long )mtd->flags);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_flags = {{"flags", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & mtd_flags_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t mtd_size_show(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{
  struct mtd_info *mtd ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  tmp___0 = snprintf(buf, 4096UL, "%llu\n", mtd->size);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_size = {{"size", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, & mtd_size_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t mtd_erasesize_show(struct device *dev , struct device_attribute *attr ,
                                  char *buf )
{
  struct mtd_info *mtd ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  tmp___0 = snprintf(buf, 4096UL, "%lu\n", (unsigned long )mtd->erasesize);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_erasesize = {{"erasesize", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & mtd_erasesize_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static ssize_t mtd_writesize_show(struct device *dev , struct device_attribute *attr ,
                                  char *buf )
{
  struct mtd_info *mtd ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  tmp___0 = snprintf(buf, 4096UL, "%lu\n", (unsigned long )mtd->writesize);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_writesize = {{"writesize", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & mtd_writesize_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static ssize_t mtd_subpagesize_show(struct device *dev , struct device_attribute *attr ,
                                    char *buf )
{
  struct mtd_info *mtd ;
  void *tmp ;
  unsigned int subpagesize ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  subpagesize = mtd->writesize >> mtd->subpage_sft;
  tmp___0 = snprintf(buf, 4096UL, "%u\n", subpagesize);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_subpagesize = {{"subpagesize", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & mtd_subpagesize_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                         char const * , size_t ))0};
static ssize_t mtd_oobsize_show(struct device *dev , struct device_attribute *attr ,
                                char *buf )
{
  struct mtd_info *mtd ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  tmp___0 = snprintf(buf, 4096UL, "%lu\n", (unsigned long )mtd->oobsize);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_oobsize = {{"oobsize", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & mtd_oobsize_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t mtd_numeraseregions_show(struct device *dev , struct device_attribute *attr ,
                                        char *buf )
{
  struct mtd_info *mtd ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  tmp___0 = snprintf(buf, 4096UL, "%u\n", mtd->numeraseregions);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_numeraseregions = {{"numeraseregions", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & mtd_numeraseregions_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                             char const * , size_t ))0};
static ssize_t mtd_name_show(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{
  struct mtd_info *mtd ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  tmp___0 = snprintf(buf, 4096UL, "%s\n", mtd->name);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_name = {{"name", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, & mtd_name_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t mtd_ecc_strength_show(struct device *dev , struct device_attribute *attr ,
                                     char *buf )
{
  struct mtd_info *mtd ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  tmp___0 = snprintf(buf, 4096UL, "%u\n", mtd->ecc_strength);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_ecc_strength = {{"ecc_strength", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & mtd_ecc_strength_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                          char const * , size_t ))0};
static ssize_t mtd_bitflip_threshold_show(struct device *dev , struct device_attribute *attr ,
                                          char *buf )
{
  struct mtd_info *mtd ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  tmp___0 = snprintf(buf, 4096UL, "%u\n", mtd->bitflip_threshold);
  return ((ssize_t )tmp___0);
}
}
static ssize_t mtd_bitflip_threshold_store(struct device *dev , struct device_attribute *attr ,
                                           char const *buf , size_t count )
{
  struct mtd_info *mtd ;
  void *tmp ;
  unsigned int bitflip_threshold ;
  int retval ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  retval = kstrtouint(buf, 0U, & bitflip_threshold);
  if (retval != 0) {
    return ((ssize_t )retval);
  } else {
  }
  mtd->bitflip_threshold = bitflip_threshold;
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_bitflip_threshold = {{"bitflip_threshold", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & mtd_bitflip_threshold_show, & mtd_bitflip_threshold_store};
static ssize_t mtd_ecc_step_size_show(struct device *dev , struct device_attribute *attr ,
                                      char *buf )
{
  struct mtd_info *mtd ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  tmp___0 = snprintf(buf, 4096UL, "%u\n", mtd->ecc_step_size);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_ecc_step_size = {{"ecc_step_size", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & mtd_ecc_step_size_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                           char const * , size_t ))0};
static ssize_t mtd_ecc_stats_corrected_show(struct device *dev , struct device_attribute *attr ,
                                            char *buf )
{
  struct mtd_info *mtd ;
  void *tmp ;
  struct mtd_ecc_stats *ecc_stats ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  ecc_stats = & mtd->ecc_stats;
  tmp___0 = snprintf(buf, 4096UL, "%u\n", ecc_stats->corrected);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_corrected_bits = {{"corrected_bits", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & mtd_ecc_stats_corrected_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                                 char const * , size_t ))0};
static ssize_t mtd_ecc_stats_errors_show(struct device *dev , struct device_attribute *attr ,
                                         char *buf )
{
  struct mtd_info *mtd ;
  void *tmp ;
  struct mtd_ecc_stats *ecc_stats ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  ecc_stats = & mtd->ecc_stats;
  tmp___0 = snprintf(buf, 4096UL, "%u\n", ecc_stats->failed);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_ecc_failures = {{"ecc_failures", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & mtd_ecc_stats_errors_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                              char const * , size_t ))0};
static ssize_t mtd_badblocks_show(struct device *dev , struct device_attribute *attr ,
                                  char *buf )
{
  struct mtd_info *mtd ;
  void *tmp ;
  struct mtd_ecc_stats *ecc_stats ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  ecc_stats = & mtd->ecc_stats;
  tmp___0 = snprintf(buf, 4096UL, "%u\n", ecc_stats->badblocks);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_bad_blocks = {{"bad_blocks", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & mtd_badblocks_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static ssize_t mtd_bbtblocks_show(struct device *dev , struct device_attribute *attr ,
                                  char *buf )
{
  struct mtd_info *mtd ;
  void *tmp ;
  struct mtd_ecc_stats *ecc_stats ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  ecc_stats = & mtd->ecc_stats;
  tmp___0 = snprintf(buf, 4096UL, "%u\n", ecc_stats->bbtblocks);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_bbt_blocks = {{"bbt_blocks", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & mtd_bbtblocks_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static struct attribute *mtd_attrs[17U] =
  { & dev_attr_type.attr, & dev_attr_flags.attr, & dev_attr_size.attr, & dev_attr_erasesize.attr,
        & dev_attr_writesize.attr, & dev_attr_subpagesize.attr, & dev_attr_oobsize.attr, & dev_attr_numeraseregions.attr,
        & dev_attr_name.attr, & dev_attr_ecc_strength.attr, & dev_attr_ecc_step_size.attr, & dev_attr_corrected_bits.attr,
        & dev_attr_ecc_failures.attr, & dev_attr_bad_blocks.attr, & dev_attr_bbt_blocks.attr, & dev_attr_bitflip_threshold.attr,
        (struct attribute *)0};
static struct attribute_group const mtd_group = {0, 0, (struct attribute **)(& mtd_attrs), 0};
static struct attribute_group const *mtd_groups[2U] = { & mtd_group, (struct attribute_group const *)0};
static struct device_type mtd_devtype = {"mtd", (struct attribute_group const **)(& mtd_groups), 0, 0, & mtd_release,
    0};
static int mtd_reboot_notifier(struct notifier_block *n , unsigned long state , void *cmd )
{
  struct mtd_info *mtd ;
  struct notifier_block const *__mptr ;
  {
  __mptr = (struct notifier_block const *)n;
  mtd = (struct mtd_info *)__mptr + 0xfffffffffffffeb0UL;
  (*(mtd->_reboot))(mtd);
  return (0);
}
}
int add_mtd_device(struct mtd_info *mtd )
{
  struct mtd_notifier *not ;
  int i ;
  int error ;
  long tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  struct _ddebug descriptor ;
  long tmp___4 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  mtd->backing_dev_info = & mtd_bdi;
  tmp = ldv__builtin_expect(mtd->writesize == 0U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdcore.c"),
                         "i" (392), "i" (12UL));
    ldv_34876: ;
    goto ldv_34876;
  } else {
  }
  mutex_lock_nested(& mtd_table_mutex, 0U);
  i = idr_alloc(& mtd_idr, (void *)mtd, 0, 0, 208U);
  if (i < 0) {
    error = i;
    goto fail_locked;
  } else {
  }
  mtd->index = i;
  mtd->usecount = 0;
  if (mtd->bitflip_threshold == 0U) {
    mtd->bitflip_threshold = mtd->ecc_strength;
  } else {
  }
  tmp___1 = is_power_of_2((unsigned long )mtd->erasesize);
  if ((int )tmp___1) {
    tmp___0 = ffs((int )mtd->erasesize);
    mtd->erasesize_shift = (unsigned int )(tmp___0 + -1);
  } else {
    mtd->erasesize_shift = 0U;
  }
  tmp___3 = is_power_of_2((unsigned long )mtd->writesize);
  if ((int )tmp___3) {
    tmp___2 = ffs((int )mtd->writesize);
    mtd->writesize_shift = (unsigned int )(tmp___2 + -1);
  } else {
    mtd->writesize_shift = 0U;
  }
  mtd->erasesize_mask = (unsigned int )((1 << (int )mtd->erasesize_shift) + -1);
  mtd->writesize_mask = (unsigned int )((1 << (int )mtd->writesize_shift) + -1);
  if ((mtd->flags & 1024U) != 0U && (mtd->flags & 8192U) != 0U) {
    error = mtd_unlock(mtd, 0LL, mtd->size);
    if (error != 0 && error != -95) {
      printk("\f%s: unlock failed, writes may not work\n", mtd->name);
    } else {
    }
    error = 0;
  } else {
  }
  mtd->dev.type = (struct device_type const *)(& mtd_devtype);
  mtd->dev.class = & mtd_class;
  mtd->dev.devt = (dev_t )(i * 2 | 94371840);
  dev_set_name(& mtd->dev, "mtd%d", i);
  dev_set_drvdata(& mtd->dev, (void *)mtd);
  error = device_register(& mtd->dev);
  if (error != 0) {
    goto fail_added;
  } else {
  }
  device_create(& mtd_class, mtd->dev.parent, (dev_t )((i * 2 | 94371840) + 1), (void *)0,
                "mtd%dro", i);
  descriptor.modname = "mtd";
  descriptor.function = "add_mtd_device";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdcore.c";
  descriptor.format = "mtd: Giving out device %d to %s\n";
  descriptor.lineno = 447U;
  descriptor.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    __dynamic_pr_debug(& descriptor, "mtd: Giving out device %d to %s\n", i, mtd->name);
  } else {
  }
  __mptr = (struct list_head const *)mtd_notifiers.next;
  not = (struct mtd_notifier *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_34886;
  ldv_34885:
  (*(not->add))(mtd);
  __mptr___0 = (struct list_head const *)not->list.next;
  not = (struct mtd_notifier *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_34886: ;
  if ((unsigned long )(& not->list) != (unsigned long )(& mtd_notifiers)) {
    goto ldv_34885;
  } else {
  }
  mutex_unlock(& mtd_table_mutex);
  ldv___module_get_5(& __this_module);
  return (0);
  fail_added:
  idr_remove(& mtd_idr, i);
  fail_locked:
  mutex_unlock(& mtd_table_mutex);
  return (error);
}
}
int del_mtd_device(struct mtd_info *mtd )
{
  int ret ;
  struct mtd_notifier *not ;
  void *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  mutex_lock_nested(& mtd_table_mutex, 0U);
  tmp = idr_find(& mtd_idr, mtd->index);
  if ((unsigned long )tmp != (unsigned long )((void *)mtd)) {
    ret = -19;
    goto out_error;
  } else {
  }
  __mptr = (struct list_head const *)mtd_notifiers.next;
  not = (struct mtd_notifier *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_34899;
  ldv_34898:
  (*(not->remove))(mtd);
  __mptr___0 = (struct list_head const *)not->list.next;
  not = (struct mtd_notifier *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_34899: ;
  if ((unsigned long )(& not->list) != (unsigned long )(& mtd_notifiers)) {
    goto ldv_34898;
  } else {
  }
  if (mtd->usecount != 0) {
    printk("\rRemoving MTD device #%d (%s) with use count %d\n", mtd->index, mtd->name,
           mtd->usecount);
    ret = -16;
  } else {
    device_unregister(& mtd->dev);
    idr_remove(& mtd_idr, mtd->index);
    ldv_module_put_6(& __this_module);
    ret = 0;
  }
  out_error:
  mutex_unlock(& mtd_table_mutex);
  return (ret);
}
}
static int mtd_add_device_partitions(struct mtd_info *mtd , struct mtd_partition *real_parts ,
                                     int nbparts )
{
  int ret ;
  {
  ret = add_mtd_device(mtd);
  if (ret != 0) {
    return (ret);
  } else {
  }
  if (nbparts > 0) {
    ret = add_mtd_partitions(mtd, (struct mtd_partition const *)real_parts, nbparts);
    if (ret != 0) {
      del_mtd_device(mtd);
    } else {
    }
    return (ret);
  } else {
  }
  return (0);
}
}
int mtd_device_parse_register(struct mtd_info *mtd , char const * const *types ,
                              struct mtd_part_parser_data *parser_data , struct mtd_partition const *parts ,
                              int nr_parts )
{
  int ret ;
  struct mtd_partition *real_parts ;
  void *tmp ;
  {
  real_parts = (struct mtd_partition *)0;
  ret = parse_mtd_partitions(mtd, types, & real_parts, parser_data);
  if ((ret <= 0 && nr_parts != 0) && (unsigned long )parts != (unsigned long )((struct mtd_partition const *)0)) {
    tmp = kmemdup((void const *)parts, (unsigned long )nr_parts * 40UL, 208U);
    real_parts = (struct mtd_partition *)tmp;
    if ((unsigned long )real_parts == (unsigned long )((struct mtd_partition *)0)) {
      ret = -12;
    } else {
      ret = nr_parts;
    }
  } else {
  }
  if (ret >= 0) {
    ret = mtd_add_device_partitions(mtd, real_parts, ret);
  } else {
  }
  if ((unsigned long )mtd->_reboot != (unsigned long )((void (*)(struct mtd_info * ))0) && (unsigned long )mtd->reboot_notifier.notifier_call == (unsigned long )((int (*)(struct notifier_block * ,
                                                                                                                                                                           unsigned long ,
                                                                                                                                                                           void * ))0)) {
    mtd->reboot_notifier.notifier_call = & mtd_reboot_notifier;
    register_reboot_notifier(& mtd->reboot_notifier);
  } else {
  }
  kfree((void const *)real_parts);
  return (ret);
}
}
static char const __kstrtab_mtd_device_parse_register[26U] =
  { 'm', 't', 'd', '_',
        'd', 'e', 'v', 'i',
        'c', 'e', '_', 'p',
        'a', 'r', 's', 'e',
        '_', 'r', 'e', 'g',
        'i', 's', 't', 'e',
        'r', '\000'};
struct kernel_symbol const __ksymtab_mtd_device_parse_register ;
struct kernel_symbol const __ksymtab_mtd_device_parse_register = {(unsigned long )(& mtd_device_parse_register), (char const *)(& __kstrtab_mtd_device_parse_register)};
int mtd_device_unregister(struct mtd_info *master )
{
  int err ;
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )master->_reboot != (unsigned long )((void (*)(struct mtd_info * ))0)) {
    unregister_reboot_notifier(& master->reboot_notifier);
  } else {
  }
  err = del_mtd_partitions(master);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp = device_is_registered(& master->dev);
  if (tmp == 0) {
    return (0);
  } else {
  }
  tmp___0 = del_mtd_device(master);
  return (tmp___0);
}
}
static char const __kstrtab_mtd_device_unregister[22U] =
  { 'm', 't', 'd', '_',
        'd', 'e', 'v', 'i',
        'c', 'e', '_', 'u',
        'n', 'r', 'e', 'g',
        'i', 's', 't', 'e',
        'r', '\000'};
struct kernel_symbol const __ksymtab_mtd_device_unregister ;
struct kernel_symbol const __ksymtab_mtd_device_unregister = {(unsigned long )(& mtd_device_unregister), (char const *)(& __kstrtab_mtd_device_unregister)};
void register_mtd_user(struct mtd_notifier *new )
{
  struct mtd_info *mtd ;
  {
  mutex_lock_nested(& mtd_table_mutex, 0U);
  list_add(& new->list, & mtd_notifiers);
  ldv___module_get_7(& __this_module);
  mtd = __mtd_next_device(0);
  goto ldv_34943;
  ldv_34942:
  (*(new->add))(mtd);
  mtd = __mtd_next_device(mtd->index + 1);
  ldv_34943: ;
  if ((unsigned long )mtd != (unsigned long )((struct mtd_info *)0)) {
    goto ldv_34942;
  } else {
  }
  mutex_unlock(& mtd_table_mutex);
  return;
}
}
static char const __kstrtab_register_mtd_user[18U] =
  { 'r', 'e', 'g', 'i',
        's', 't', 'e', 'r',
        '_', 'm', 't', 'd',
        '_', 'u', 's', 'e',
        'r', '\000'};
struct kernel_symbol const __ksymtab_register_mtd_user ;
struct kernel_symbol const __ksymtab_register_mtd_user = {(unsigned long )(& register_mtd_user), (char const *)(& __kstrtab_register_mtd_user)};
int unregister_mtd_user(struct mtd_notifier *old )
{
  struct mtd_info *mtd ;
  {
  mutex_lock_nested(& mtd_table_mutex, 0U);
  ldv_module_put_8(& __this_module);
  mtd = __mtd_next_device(0);
  goto ldv_34957;
  ldv_34956:
  (*(old->remove))(mtd);
  mtd = __mtd_next_device(mtd->index + 1);
  ldv_34957: ;
  if ((unsigned long )mtd != (unsigned long )((struct mtd_info *)0)) {
    goto ldv_34956;
  } else {
  }
  list_del(& old->list);
  mutex_unlock(& mtd_table_mutex);
  return (0);
}
}
static char const __kstrtab_unregister_mtd_user[20U] =
  { 'u', 'n', 'r', 'e',
        'g', 'i', 's', 't',
        'e', 'r', '_', 'm',
        't', 'd', '_', 'u',
        's', 'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_unregister_mtd_user ;
struct kernel_symbol const __ksymtab_unregister_mtd_user = {(unsigned long )(& unregister_mtd_user), (char const *)(& __kstrtab_unregister_mtd_user)};
struct mtd_info *get_mtd_device(struct mtd_info *mtd , int num )
{
  struct mtd_info *ret ;
  struct mtd_info *other ;
  int err ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  ret = (struct mtd_info *)0;
  err = -19;
  mutex_lock_nested(& mtd_table_mutex, 0U);
  if (num == -1) {
    other = __mtd_next_device(0);
    goto ldv_34975;
    ldv_34974: ;
    if ((unsigned long )other == (unsigned long )mtd) {
      ret = mtd;
      goto ldv_34973;
    } else {
    }
    other = __mtd_next_device(other->index + 1);
    ldv_34975: ;
    if ((unsigned long )other != (unsigned long )((struct mtd_info *)0)) {
      goto ldv_34974;
    } else {
    }
    ldv_34973: ;
  } else
  if (num >= 0) {
    tmp = idr_find(& mtd_idr, num);
    ret = (struct mtd_info *)tmp;
    if ((unsigned long )mtd != (unsigned long )((struct mtd_info *)0) && (unsigned long )mtd != (unsigned long )ret) {
      ret = (struct mtd_info *)0;
    } else {
    }
  } else {
  }
  if ((unsigned long )ret == (unsigned long )((struct mtd_info *)0)) {
    tmp___0 = ERR_PTR((long )err);
    ret = (struct mtd_info *)tmp___0;
    goto out;
  } else {
  }
  err = __get_mtd_device(ret);
  if (err != 0) {
    tmp___1 = ERR_PTR((long )err);
    ret = (struct mtd_info *)tmp___1;
  } else {
  }
  out:
  mutex_unlock(& mtd_table_mutex);
  return (ret);
}
}
static char const __kstrtab_get_mtd_device[15U] =
  { 'g', 'e', 't', '_',
        'm', 't', 'd', '_',
        'd', 'e', 'v', 'i',
        'c', 'e', '\000'};
struct kernel_symbol const __ksymtab_get_mtd_device ;
struct kernel_symbol const __ksymtab_get_mtd_device = {(unsigned long )(& get_mtd_device), (char const *)(& __kstrtab_get_mtd_device)};
int __get_mtd_device(struct mtd_info *mtd )
{
  int err ;
  bool tmp ;
  int tmp___0 ;
  {
  tmp = ldv_try_module_get_9(mtd->owner);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-19);
  } else {
  }
  if ((unsigned long )mtd->_get_device != (unsigned long )((int (*)(struct mtd_info * ))0)) {
    err = (*(mtd->_get_device))(mtd);
    if (err != 0) {
      ldv_module_put_10(mtd->owner);
      return (err);
    } else {
    }
  } else {
  }
  mtd->usecount = mtd->usecount + 1;
  return (0);
}
}
static char const __kstrtab___get_mtd_device[17U] =
  { '_', '_', 'g', 'e',
        't', '_', 'm', 't',
        'd', '_', 'd', 'e',
        'v', 'i', 'c', 'e',
        '\000'};
struct kernel_symbol const __ksymtab___get_mtd_device ;
struct kernel_symbol const __ksymtab___get_mtd_device = {(unsigned long )(& __get_mtd_device), (char const *)(& __kstrtab___get_mtd_device)};
struct mtd_info *get_mtd_device_nm(char const *name )
{
  int err ;
  struct mtd_info *mtd ;
  struct mtd_info *other ;
  int tmp ;
  void *tmp___0 ;
  {
  err = -19;
  mtd = (struct mtd_info *)0;
  mutex_lock_nested(& mtd_table_mutex, 0U);
  other = __mtd_next_device(0);
  goto ldv_35004;
  ldv_35003:
  tmp = strcmp(name, other->name);
  if (tmp == 0) {
    mtd = other;
    goto ldv_35002;
  } else {
  }
  other = __mtd_next_device(other->index + 1);
  ldv_35004: ;
  if ((unsigned long )other != (unsigned long )((struct mtd_info *)0)) {
    goto ldv_35003;
  } else {
  }
  ldv_35002: ;
  if ((unsigned long )mtd == (unsigned long )((struct mtd_info *)0)) {
    goto out_unlock;
  } else {
  }
  err = __get_mtd_device(mtd);
  if (err != 0) {
    goto out_unlock;
  } else {
  }
  mutex_unlock(& mtd_table_mutex);
  return (mtd);
  out_unlock:
  mutex_unlock(& mtd_table_mutex);
  tmp___0 = ERR_PTR((long )err);
  return ((struct mtd_info *)tmp___0);
}
}
static char const __kstrtab_get_mtd_device_nm[18U] =
  { 'g', 'e', 't', '_',
        'm', 't', 'd', '_',
        'd', 'e', 'v', 'i',
        'c', 'e', '_', 'n',
        'm', '\000'};
struct kernel_symbol const __ksymtab_get_mtd_device_nm ;
struct kernel_symbol const __ksymtab_get_mtd_device_nm = {(unsigned long )(& get_mtd_device_nm), (char const *)(& __kstrtab_get_mtd_device_nm)};
void put_mtd_device(struct mtd_info *mtd )
{
  {
  mutex_lock_nested(& mtd_table_mutex, 0U);
  __put_mtd_device(mtd);
  mutex_unlock(& mtd_table_mutex);
  return;
}
}
static char const __kstrtab_put_mtd_device[15U] =
  { 'p', 'u', 't', '_',
        'm', 't', 'd', '_',
        'd', 'e', 'v', 'i',
        'c', 'e', '\000'};
struct kernel_symbol const __ksymtab_put_mtd_device ;
struct kernel_symbol const __ksymtab_put_mtd_device = {(unsigned long )(& put_mtd_device), (char const *)(& __kstrtab_put_mtd_device)};
void __put_mtd_device(struct mtd_info *mtd )
{
  long tmp ;
  {
  mtd->usecount = mtd->usecount - 1;
  tmp = ldv__builtin_expect(mtd->usecount < 0, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdcore.c"),
                         "i" (795), "i" (12UL));
    ldv_35026: ;
    goto ldv_35026;
  } else {
  }
  if ((unsigned long )mtd->_put_device != (unsigned long )((void (*)(struct mtd_info * ))0)) {
    (*(mtd->_put_device))(mtd);
  } else {
  }
  ldv_module_put_11(mtd->owner);
  return;
}
}
static char const __kstrtab___put_mtd_device[17U] =
  { '_', '_', 'p', 'u',
        't', '_', 'm', 't',
        'd', '_', 'd', 'e',
        'v', 'i', 'c', 'e',
        '\000'};
struct kernel_symbol const __ksymtab___put_mtd_device ;
struct kernel_symbol const __ksymtab___put_mtd_device = {(unsigned long )(& __put_mtd_device), (char const *)(& __kstrtab___put_mtd_device)};
int mtd_erase(struct mtd_info *mtd , struct erase_info *instr )
{
  int tmp ;
  {
  if (instr->addr >= mtd->size || instr->len > mtd->size - instr->addr) {
    return (-22);
  } else {
  }
  if ((mtd->flags & 1024U) == 0U) {
    return (-30);
  } else {
  }
  instr->fail_addr = 0xffffffffffffffffULL;
  if (instr->len == 0ULL) {
    instr->state = 8U;
    mtd_erase_callback(instr);
    return (0);
  } else {
  }
  tmp = (*(mtd->_erase))(mtd, instr);
  return (tmp);
}
}
static char const __kstrtab_mtd_erase[10U] =
  { 'm', 't', 'd', '_',
        'e', 'r', 'a', 's',
        'e', '\000'};
struct kernel_symbol const __ksymtab_mtd_erase ;
struct kernel_symbol const __ksymtab_mtd_erase = {(unsigned long )(& mtd_erase), (char const *)(& __kstrtab_mtd_erase)};
int mtd_point(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen , void **virt ,
              resource_size_t *phys )
{
  int tmp ;
  {
  *retlen = 0UL;
  *virt = (void *)0;
  if ((unsigned long )phys != (unsigned long )((resource_size_t *)0ULL)) {
    *phys = 0ULL;
  } else {
  }
  if ((unsigned long )mtd->_point == (unsigned long )((int (*)(struct mtd_info * ,
                                                               loff_t , size_t ,
                                                               size_t * , void ** ,
                                                               resource_size_t * ))0)) {
    return (-95);
  } else {
  }
  if ((from < 0LL || (unsigned long long )from >= mtd->size) || mtd->size - (unsigned long long )from < (unsigned long long )len) {
    return (-22);
  } else {
  }
  if (len == 0UL) {
    return (0);
  } else {
  }
  tmp = (*(mtd->_point))(mtd, from, len, retlen, virt, phys);
  return (tmp);
}
}
static char const __kstrtab_mtd_point[10U] =
  { 'm', 't', 'd', '_',
        'p', 'o', 'i', 'n',
        't', '\000'};
struct kernel_symbol const __ksymtab_mtd_point ;
struct kernel_symbol const __ksymtab_mtd_point = {(unsigned long )(& mtd_point), (char const *)(& __kstrtab_mtd_point)};
int mtd_unpoint(struct mtd_info *mtd , loff_t from , size_t len )
{
  int tmp ;
  {
  if ((unsigned long )mtd->_point == (unsigned long )((int (*)(struct mtd_info * ,
                                                               loff_t , size_t ,
                                                               size_t * , void ** ,
                                                               resource_size_t * ))0)) {
    return (-95);
  } else {
  }
  if ((from < 0LL || (unsigned long long )from >= mtd->size) || mtd->size - (unsigned long long )from < (unsigned long long )len) {
    return (-22);
  } else {
  }
  if (len == 0UL) {
    return (0);
  } else {
  }
  tmp = (*(mtd->_unpoint))(mtd, from, len);
  return (tmp);
}
}
static char const __kstrtab_mtd_unpoint[12U] =
  { 'm', 't', 'd', '_',
        'u', 'n', 'p', 'o',
        'i', 'n', 't', '\000'};
struct kernel_symbol const __ksymtab_mtd_unpoint ;
struct kernel_symbol const __ksymtab_mtd_unpoint = {(unsigned long )(& mtd_unpoint), (char const *)(& __kstrtab_mtd_unpoint)};
unsigned long mtd_get_unmapped_area(struct mtd_info *mtd , unsigned long len , unsigned long offset ,
                                    unsigned long flags )
{
  unsigned long tmp ;
  {
  if ((unsigned long )mtd->_get_unmapped_area == (unsigned long )((unsigned long (*)(struct mtd_info * ,
                                                                                     unsigned long ,
                                                                                     unsigned long ,
                                                                                     unsigned long ))0)) {
    return (0xffffffffffffffa1UL);
  } else {
  }
  if (mtd->size <= (unsigned long long )offset || mtd->size - (unsigned long long )offset < (unsigned long long )len) {
    return (0xffffffffffffffeaUL);
  } else {
  }
  tmp = (*(mtd->_get_unmapped_area))(mtd, len, offset, flags);
  return (tmp);
}
}
static char const __kstrtab_mtd_get_unmapped_area[22U] =
  { 'm', 't', 'd', '_',
        'g', 'e', 't', '_',
        'u', 'n', 'm', 'a',
        'p', 'p', 'e', 'd',
        '_', 'a', 'r', 'e',
        'a', '\000'};
struct kernel_symbol const __ksymtab_mtd_get_unmapped_area ;
struct kernel_symbol const __ksymtab_mtd_get_unmapped_area = {(unsigned long )(& mtd_get_unmapped_area), (char const *)(& __kstrtab_mtd_get_unmapped_area)};
int mtd_read(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen , u_char *buf )
{
  int ret_code ;
  long tmp ;
  {
  *retlen = 0UL;
  if ((from < 0LL || (unsigned long long )from >= mtd->size) || mtd->size - (unsigned long long )from < (unsigned long long )len) {
    return (-22);
  } else {
  }
  if (len == 0UL) {
    return (0);
  } else {
  }
  ret_code = (*(mtd->_read))(mtd, from, len, retlen, buf);
  tmp = ldv__builtin_expect(ret_code < 0, 0L);
  if (tmp != 0L) {
    return (ret_code);
  } else {
  }
  if (mtd->ecc_strength == 0U) {
    return (0);
  } else {
  }
  return ((unsigned int )ret_code >= mtd->bitflip_threshold ? -117 : 0);
}
}
static char const __kstrtab_mtd_read[9U] =
  { 'm', 't', 'd', '_',
        'r', 'e', 'a', 'd',
        '\000'};
struct kernel_symbol const __ksymtab_mtd_read ;
struct kernel_symbol const __ksymtab_mtd_read = {(unsigned long )(& mtd_read), (char const *)(& __kstrtab_mtd_read)};
int mtd_write(struct mtd_info *mtd , loff_t to , size_t len , size_t *retlen , u_char const *buf )
{
  int tmp ;
  {
  *retlen = 0UL;
  if ((to < 0LL || (unsigned long long )to >= mtd->size) || mtd->size - (unsigned long long )to < (unsigned long long )len) {
    return (-22);
  } else {
  }
  if ((unsigned long )mtd->_write == (unsigned long )((int (*)(struct mtd_info * ,
                                                               loff_t , size_t ,
                                                               size_t * , u_char const * ))0) || (mtd->flags & 1024U) == 0U) {
    return (-30);
  } else {
  }
  if (len == 0UL) {
    return (0);
  } else {
  }
  tmp = (*(mtd->_write))(mtd, to, len, retlen, buf);
  return (tmp);
}
}
static char const __kstrtab_mtd_write[10U] =
  { 'm', 't', 'd', '_',
        'w', 'r', 'i', 't',
        'e', '\000'};
struct kernel_symbol const __ksymtab_mtd_write ;
struct kernel_symbol const __ksymtab_mtd_write = {(unsigned long )(& mtd_write), (char const *)(& __kstrtab_mtd_write)};
int mtd_panic_write(struct mtd_info *mtd , loff_t to , size_t len , size_t *retlen ,
                    u_char const *buf )
{
  int tmp ;
  {
  *retlen = 0UL;
  if ((unsigned long )mtd->_panic_write == (unsigned long )((int (*)(struct mtd_info * ,
                                                                     loff_t , size_t ,
                                                                     size_t * , u_char const * ))0)) {
    return (-95);
  } else {
  }
  if ((to < 0LL || (unsigned long long )to >= mtd->size) || mtd->size - (unsigned long long )to < (unsigned long long )len) {
    return (-22);
  } else {
  }
  if ((mtd->flags & 1024U) == 0U) {
    return (-30);
  } else {
  }
  if (len == 0UL) {
    return (0);
  } else {
  }
  tmp = (*(mtd->_panic_write))(mtd, to, len, retlen, buf);
  return (tmp);
}
}
static char const __kstrtab_mtd_panic_write[16U] =
  { 'm', 't', 'd', '_',
        'p', 'a', 'n', 'i',
        'c', '_', 'w', 'r',
        'i', 't', 'e', '\000'};
struct kernel_symbol const __ksymtab_mtd_panic_write ;
struct kernel_symbol const __ksymtab_mtd_panic_write = {(unsigned long )(& mtd_panic_write), (char const *)(& __kstrtab_mtd_panic_write)};
int mtd_read_oob(struct mtd_info *mtd , loff_t from , struct mtd_oob_ops *ops )
{
  int ret_code ;
  size_t tmp ;
  long tmp___0 ;
  {
  tmp = 0UL;
  ops->oobretlen = tmp;
  ops->retlen = tmp;
  if ((unsigned long )mtd->_read_oob == (unsigned long )((int (*)(struct mtd_info * ,
                                                                  loff_t , struct mtd_oob_ops * ))0)) {
    return (-95);
  } else {
  }
  ret_code = (*(mtd->_read_oob))(mtd, from, ops);
  tmp___0 = ldv__builtin_expect(ret_code < 0, 0L);
  if (tmp___0 != 0L) {
    return (ret_code);
  } else {
  }
  if (mtd->ecc_strength == 0U) {
    return (0);
  } else {
  }
  return ((unsigned int )ret_code >= mtd->bitflip_threshold ? -117 : 0);
}
}
static char const __kstrtab_mtd_read_oob[13U] =
  { 'm', 't', 'd', '_',
        'r', 'e', 'a', 'd',
        '_', 'o', 'o', 'b',
        '\000'};
struct kernel_symbol const __ksymtab_mtd_read_oob ;
struct kernel_symbol const __ksymtab_mtd_read_oob = {(unsigned long )(& mtd_read_oob), (char const *)(& __kstrtab_mtd_read_oob)};
int mtd_get_fact_prot_info(struct mtd_info *mtd , size_t len , size_t *retlen , struct otp_info *buf )
{
  int tmp ;
  {
  if ((unsigned long )mtd->_get_fact_prot_info == (unsigned long )((int (*)(struct mtd_info * ,
                                                                            size_t ,
                                                                            size_t * ,
                                                                            struct otp_info * ))0)) {
    return (-95);
  } else {
  }
  if (len == 0UL) {
    return (0);
  } else {
  }
  tmp = (*(mtd->_get_fact_prot_info))(mtd, len, retlen, buf);
  return (tmp);
}
}
static char const __kstrtab_mtd_get_fact_prot_info[23U] =
  { 'm', 't', 'd', '_',
        'g', 'e', 't', '_',
        'f', 'a', 'c', 't',
        '_', 'p', 'r', 'o',
        't', '_', 'i', 'n',
        'f', 'o', '\000'};
struct kernel_symbol const __ksymtab_mtd_get_fact_prot_info ;
struct kernel_symbol const __ksymtab_mtd_get_fact_prot_info = {(unsigned long )(& mtd_get_fact_prot_info), (char const *)(& __kstrtab_mtd_get_fact_prot_info)};
int mtd_read_fact_prot_reg(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
                           u_char *buf )
{
  int tmp ;
  {
  *retlen = 0UL;
  if ((unsigned long )mtd->_read_fact_prot_reg == (unsigned long )((int (*)(struct mtd_info * ,
                                                                            loff_t ,
                                                                            size_t ,
                                                                            size_t * ,
                                                                            u_char * ))0)) {
    return (-95);
  } else {
  }
  if (len == 0UL) {
    return (0);
  } else {
  }
  tmp = (*(mtd->_read_fact_prot_reg))(mtd, from, len, retlen, buf);
  return (tmp);
}
}
static char const __kstrtab_mtd_read_fact_prot_reg[23U] =
  { 'm', 't', 'd', '_',
        'r', 'e', 'a', 'd',
        '_', 'f', 'a', 'c',
        't', '_', 'p', 'r',
        'o', 't', '_', 'r',
        'e', 'g', '\000'};
struct kernel_symbol const __ksymtab_mtd_read_fact_prot_reg ;
struct kernel_symbol const __ksymtab_mtd_read_fact_prot_reg = {(unsigned long )(& mtd_read_fact_prot_reg), (char const *)(& __kstrtab_mtd_read_fact_prot_reg)};
int mtd_get_user_prot_info(struct mtd_info *mtd , size_t len , size_t *retlen , struct otp_info *buf )
{
  int tmp ;
  {
  if ((unsigned long )mtd->_get_user_prot_info == (unsigned long )((int (*)(struct mtd_info * ,
                                                                            size_t ,
                                                                            size_t * ,
                                                                            struct otp_info * ))0)) {
    return (-95);
  } else {
  }
  if (len == 0UL) {
    return (0);
  } else {
  }
  tmp = (*(mtd->_get_user_prot_info))(mtd, len, retlen, buf);
  return (tmp);
}
}
static char const __kstrtab_mtd_get_user_prot_info[23U] =
  { 'm', 't', 'd', '_',
        'g', 'e', 't', '_',
        'u', 's', 'e', 'r',
        '_', 'p', 'r', 'o',
        't', '_', 'i', 'n',
        'f', 'o', '\000'};
struct kernel_symbol const __ksymtab_mtd_get_user_prot_info ;
struct kernel_symbol const __ksymtab_mtd_get_user_prot_info = {(unsigned long )(& mtd_get_user_prot_info), (char const *)(& __kstrtab_mtd_get_user_prot_info)};
int mtd_read_user_prot_reg(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
                           u_char *buf )
{
  int tmp ;
  {
  *retlen = 0UL;
  if ((unsigned long )mtd->_read_user_prot_reg == (unsigned long )((int (*)(struct mtd_info * ,
                                                                            loff_t ,
                                                                            size_t ,
                                                                            size_t * ,
                                                                            u_char * ))0)) {
    return (-95);
  } else {
  }
  if (len == 0UL) {
    return (0);
  } else {
  }
  tmp = (*(mtd->_read_user_prot_reg))(mtd, from, len, retlen, buf);
  return (tmp);
}
}
static char const __kstrtab_mtd_read_user_prot_reg[23U] =
  { 'm', 't', 'd', '_',
        'r', 'e', 'a', 'd',
        '_', 'u', 's', 'e',
        'r', '_', 'p', 'r',
        'o', 't', '_', 'r',
        'e', 'g', '\000'};
struct kernel_symbol const __ksymtab_mtd_read_user_prot_reg ;
struct kernel_symbol const __ksymtab_mtd_read_user_prot_reg = {(unsigned long )(& mtd_read_user_prot_reg), (char const *)(& __kstrtab_mtd_read_user_prot_reg)};
int mtd_write_user_prot_reg(struct mtd_info *mtd , loff_t to , size_t len , size_t *retlen ,
                            u_char *buf )
{
  int ret ;
  {
  *retlen = 0UL;
  if ((unsigned long )mtd->_write_user_prot_reg == (unsigned long )((int (*)(struct mtd_info * ,
                                                                             loff_t ,
                                                                             size_t ,
                                                                             size_t * ,
                                                                             u_char * ))0)) {
    return (-95);
  } else {
  }
  if (len == 0UL) {
    return (0);
  } else {
  }
  ret = (*(mtd->_write_user_prot_reg))(mtd, to, len, retlen, buf);
  if (ret != 0) {
    return (ret);
  } else {
  }
  return (*retlen != 0UL ? 0 : -28);
}
}
static char const __kstrtab_mtd_write_user_prot_reg[24U] =
  { 'm', 't', 'd', '_',
        'w', 'r', 'i', 't',
        'e', '_', 'u', 's',
        'e', 'r', '_', 'p',
        'r', 'o', 't', '_',
        'r', 'e', 'g', '\000'};
struct kernel_symbol const __ksymtab_mtd_write_user_prot_reg ;
struct kernel_symbol const __ksymtab_mtd_write_user_prot_reg = {(unsigned long )(& mtd_write_user_prot_reg), (char const *)(& __kstrtab_mtd_write_user_prot_reg)};
int mtd_lock_user_prot_reg(struct mtd_info *mtd , loff_t from , size_t len )
{
  int tmp ;
  {
  if ((unsigned long )mtd->_lock_user_prot_reg == (unsigned long )((int (*)(struct mtd_info * ,
                                                                            loff_t ,
                                                                            size_t ))0)) {
    return (-95);
  } else {
  }
  if (len == 0UL) {
    return (0);
  } else {
  }
  tmp = (*(mtd->_lock_user_prot_reg))(mtd, from, len);
  return (tmp);
}
}
static char const __kstrtab_mtd_lock_user_prot_reg[23U] =
  { 'm', 't', 'd', '_',
        'l', 'o', 'c', 'k',
        '_', 'u', 's', 'e',
        'r', '_', 'p', 'r',
        'o', 't', '_', 'r',
        'e', 'g', '\000'};
struct kernel_symbol const __ksymtab_mtd_lock_user_prot_reg ;
struct kernel_symbol const __ksymtab_mtd_lock_user_prot_reg = {(unsigned long )(& mtd_lock_user_prot_reg), (char const *)(& __kstrtab_mtd_lock_user_prot_reg)};
int mtd_lock(struct mtd_info *mtd , loff_t ofs , uint64_t len )
{
  int tmp ;
  {
  if ((unsigned long )mtd->_lock == (unsigned long )((int (*)(struct mtd_info * ,
                                                              loff_t , uint64_t ))0)) {
    return (-95);
  } else {
  }
  if ((ofs < 0LL || (unsigned long long )ofs >= mtd->size) || mtd->size - (unsigned long long )ofs < len) {
    return (-22);
  } else {
  }
  if (len == 0ULL) {
    return (0);
  } else {
  }
  tmp = (*(mtd->_lock))(mtd, ofs, len);
  return (tmp);
}
}
static char const __kstrtab_mtd_lock[9U] =
  { 'm', 't', 'd', '_',
        'l', 'o', 'c', 'k',
        '\000'};
struct kernel_symbol const __ksymtab_mtd_lock ;
struct kernel_symbol const __ksymtab_mtd_lock = {(unsigned long )(& mtd_lock), (char const *)(& __kstrtab_mtd_lock)};
int mtd_unlock(struct mtd_info *mtd , loff_t ofs , uint64_t len )
{
  int tmp ;
  {
  if ((unsigned long )mtd->_unlock == (unsigned long )((int (*)(struct mtd_info * ,
                                                                loff_t , uint64_t ))0)) {
    return (-95);
  } else {
  }
  if ((ofs < 0LL || (unsigned long long )ofs >= mtd->size) || mtd->size - (unsigned long long )ofs < len) {
    return (-22);
  } else {
  }
  if (len == 0ULL) {
    return (0);
  } else {
  }
  tmp = (*(mtd->_unlock))(mtd, ofs, len);
  return (tmp);
}
}
static char const __kstrtab_mtd_unlock[11U] =
  { 'm', 't', 'd', '_',
        'u', 'n', 'l', 'o',
        'c', 'k', '\000'};
struct kernel_symbol const __ksymtab_mtd_unlock ;
struct kernel_symbol const __ksymtab_mtd_unlock = {(unsigned long )(& mtd_unlock), (char const *)(& __kstrtab_mtd_unlock)};
int mtd_is_locked(struct mtd_info *mtd , loff_t ofs , uint64_t len )
{
  int tmp ;
  {
  if ((unsigned long )mtd->_is_locked == (unsigned long )((int (*)(struct mtd_info * ,
                                                                   loff_t , uint64_t ))0)) {
    return (-95);
  } else {
  }
  if ((ofs < 0LL || (unsigned long long )ofs >= mtd->size) || mtd->size - (unsigned long long )ofs < len) {
    return (-22);
  } else {
  }
  if (len == 0ULL) {
    return (0);
  } else {
  }
  tmp = (*(mtd->_is_locked))(mtd, ofs, len);
  return (tmp);
}
}
static char const __kstrtab_mtd_is_locked[14U] =
  { 'm', 't', 'd', '_',
        'i', 's', '_', 'l',
        'o', 'c', 'k', 'e',
        'd', '\000'};
struct kernel_symbol const __ksymtab_mtd_is_locked ;
struct kernel_symbol const __ksymtab_mtd_is_locked = {(unsigned long )(& mtd_is_locked), (char const *)(& __kstrtab_mtd_is_locked)};
int mtd_block_isreserved(struct mtd_info *mtd , loff_t ofs )
{
  int tmp ;
  {
  if (ofs < 0LL || (unsigned long long )ofs >= mtd->size) {
    return (-22);
  } else {
  }
  if ((unsigned long )mtd->_block_isreserved == (unsigned long )((int (*)(struct mtd_info * ,
                                                                          loff_t ))0)) {
    return (0);
  } else {
  }
  tmp = (*(mtd->_block_isreserved))(mtd, ofs);
  return (tmp);
}
}
static char const __kstrtab_mtd_block_isreserved[21U] =
  { 'm', 't', 'd', '_',
        'b', 'l', 'o', 'c',
        'k', '_', 'i', 's',
        'r', 'e', 's', 'e',
        'r', 'v', 'e', 'd',
        '\000'};
struct kernel_symbol const __ksymtab_mtd_block_isreserved ;
struct kernel_symbol const __ksymtab_mtd_block_isreserved = {(unsigned long )(& mtd_block_isreserved), (char const *)(& __kstrtab_mtd_block_isreserved)};
int mtd_block_isbad(struct mtd_info *mtd , loff_t ofs )
{
  int tmp ;
  {
  if (ofs < 0LL || (unsigned long long )ofs >= mtd->size) {
    return (-22);
  } else {
  }
  if ((unsigned long )mtd->_block_isbad == (unsigned long )((int (*)(struct mtd_info * ,
                                                                     loff_t ))0)) {
    return (0);
  } else {
  }
  tmp = (*(mtd->_block_isbad))(mtd, ofs);
  return (tmp);
}
}
static char const __kstrtab_mtd_block_isbad[16U] =
  { 'm', 't', 'd', '_',
        'b', 'l', 'o', 'c',
        'k', '_', 'i', 's',
        'b', 'a', 'd', '\000'};
struct kernel_symbol const __ksymtab_mtd_block_isbad ;
struct kernel_symbol const __ksymtab_mtd_block_isbad = {(unsigned long )(& mtd_block_isbad), (char const *)(& __kstrtab_mtd_block_isbad)};
int mtd_block_markbad(struct mtd_info *mtd , loff_t ofs )
{
  int tmp ;
  {
  if ((unsigned long )mtd->_block_markbad == (unsigned long )((int (*)(struct mtd_info * ,
                                                                       loff_t ))0)) {
    return (-95);
  } else {
  }
  if (ofs < 0LL || (unsigned long long )ofs >= mtd->size) {
    return (-22);
  } else {
  }
  if ((mtd->flags & 1024U) == 0U) {
    return (-30);
  } else {
  }
  tmp = (*(mtd->_block_markbad))(mtd, ofs);
  return (tmp);
}
}
static char const __kstrtab_mtd_block_markbad[18U] =
  { 'm', 't', 'd', '_',
        'b', 'l', 'o', 'c',
        'k', '_', 'm', 'a',
        'r', 'k', 'b', 'a',
        'd', '\000'};
struct kernel_symbol const __ksymtab_mtd_block_markbad ;
struct kernel_symbol const __ksymtab_mtd_block_markbad = {(unsigned long )(& mtd_block_markbad), (char const *)(& __kstrtab_mtd_block_markbad)};
static int default_mtd_writev(struct mtd_info *mtd , struct kvec const *vecs , unsigned long count ,
                              loff_t to , size_t *retlen )
{
  unsigned long i ;
  size_t totlen ;
  size_t thislen ;
  int ret ;
  {
  totlen = 0UL;
  ret = 0;
  i = 0UL;
  goto ldv_35359;
  ldv_35358: ;
  if ((unsigned long )(vecs + i)->iov_len == 0UL) {
    goto ldv_35356;
  } else {
  }
  ret = mtd_write(mtd, to, (vecs + i)->iov_len, & thislen, (u_char const *)(vecs + i)->iov_base);
  totlen = totlen + thislen;
  if (ret != 0 || (unsigned long )(vecs + i)->iov_len != thislen) {
    goto ldv_35357;
  } else {
  }
  to = (loff_t )((unsigned long long )(vecs + i)->iov_len + (unsigned long long )to);
  ldv_35356:
  i = i + 1UL;
  ldv_35359: ;
  if (i < count) {
    goto ldv_35358;
  } else {
  }
  ldv_35357:
  *retlen = totlen;
  return (ret);
}
}
int mtd_writev(struct mtd_info *mtd , struct kvec const *vecs , unsigned long count ,
               loff_t to , size_t *retlen )
{
  int tmp ;
  int tmp___0 ;
  {
  *retlen = 0UL;
  if ((mtd->flags & 1024U) == 0U) {
    return (-30);
  } else {
  }
  if ((unsigned long )mtd->_writev == (unsigned long )((int (*)(struct mtd_info * ,
                                                                struct kvec const * ,
                                                                unsigned long , loff_t ,
                                                                size_t * ))0)) {
    tmp = default_mtd_writev(mtd, vecs, count, to, retlen);
    return (tmp);
  } else {
  }
  tmp___0 = (*(mtd->_writev))(mtd, vecs, count, to, retlen);
  return (tmp___0);
}
}
static char const __kstrtab_mtd_writev[11U] =
  { 'm', 't', 'd', '_',
        'w', 'r', 'i', 't',
        'e', 'v', '\000'};
struct kernel_symbol const __ksymtab_mtd_writev ;
struct kernel_symbol const __ksymtab_mtd_writev = {(unsigned long )(& mtd_writev), (char const *)(& __kstrtab_mtd_writev)};
void *mtd_kmalloc_up_to(struct mtd_info const *mtd , size_t *size )
{
  gfp_t flags ;
  size_t min_alloc ;
  size_t __max1 ;
  size_t __max2 ;
  void *kbuf ;
  size_t __min1 ;
  size_t __min2 ;
  void *tmp ;
  {
  flags = 4198928U;
  __max1 = (size_t )mtd->writesize;
  __max2 = 4096UL;
  min_alloc = __max1 > __max2 ? __max1 : __max2;
  __min1 = *size;
  __min2 = 8388608UL;
  *size = __min1 < __min2 ? __min1 : __min2;
  goto ldv_35392;
  ldv_35391:
  kbuf = kmalloc(*size, flags);
  if ((unsigned long )kbuf != (unsigned long )((void *)0)) {
    return (kbuf);
  } else {
  }
  *size = *size >> 1;
  *size = ((*size + (unsigned long )mtd->writesize) - 1UL) & - ((unsigned long )mtd->writesize);
  ldv_35392: ;
  if (*size > min_alloc) {
    goto ldv_35391;
  } else {
  }
  tmp = kmalloc(*size, 208U);
  return (tmp);
}
}
static char const __kstrtab_mtd_kmalloc_up_to[18U] =
  { 'm', 't', 'd', '_',
        'k', 'm', 'a', 'l',
        'l', 'o', 'c', '_',
        'u', 'p', '_', 't',
        'o', '\000'};
struct kernel_symbol const __ksymtab_mtd_kmalloc_up_to ;
struct kernel_symbol const __ksymtab_mtd_kmalloc_up_to = {(unsigned long )(& mtd_kmalloc_up_to), (char const *)(& __kstrtab_mtd_kmalloc_up_to)};
static int mtd_proc_show(struct seq_file *m , void *v )
{
  struct mtd_info *mtd ;
  {
  seq_puts(m, "dev:    size   erasesize  name\n");
  mutex_lock_nested(& mtd_table_mutex, 0U);
  mtd = __mtd_next_device(0);
  goto ldv_35408;
  ldv_35407:
  seq_printf(m, "mtd%d: %8.8llx %8.8x \"%s\"\n", mtd->index, mtd->size, mtd->erasesize,
             mtd->name);
  mtd = __mtd_next_device(mtd->index + 1);
  ldv_35408: ;
  if ((unsigned long )mtd != (unsigned long )((struct mtd_info *)0)) {
    goto ldv_35407;
  } else {
  }
  mutex_unlock(& mtd_table_mutex);
  return (0);
}
}
static int mtd_proc_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  tmp = single_open(file, & mtd_proc_show, (void *)0);
  return (tmp);
}
}
static struct file_operations const mtd_proc_ops =
     {0, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, & mtd_proc_open, 0, & single_release,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int mtd_bdi_init(struct backing_dev_info *bdi , char const *name )
{
  int ret ;
  {
  ret = bdi_init(bdi);
  if (ret == 0) {
    ret = bdi_register(bdi, (struct device *)0, "%s", name);
  } else {
  }
  if (ret != 0) {
    bdi_destroy(bdi);
  } else {
  }
  return (ret);
}
}
static struct proc_dir_entry *proc_mtd ;
static int init_mtd(void)
{
  int ret ;
  struct lock_class_key __key ;
  int tmp ;
  {
  tmp = __class_register(& mtd_class, & __key);
  ret = tmp;
  if (ret != 0) {
    goto err_reg;
  } else {
  }
  ret = mtd_bdi_init(& mtd_bdi, "mtd");
  if (ret != 0) {
    goto err_bdi;
  } else {
  }
  proc_mtd = proc_create("mtd", 0, (struct proc_dir_entry *)0, & mtd_proc_ops);
  ret = init_mtdchar();
  if (ret != 0) {
    goto out_procfs;
  } else {
  }
  return (0);
  out_procfs: ;
  if ((unsigned long )proc_mtd != (unsigned long )((struct proc_dir_entry *)0)) {
    remove_proc_entry("mtd", (struct proc_dir_entry *)0);
  } else {
  }
  err_bdi:
  class_unregister(& mtd_class);
  err_reg:
  printk("\vError registering mtd class or bdi: %d\n", ret);
  return (ret);
}
}
static void cleanup_mtd(void)
{
  {
  cleanup_mtdchar();
  if ((unsigned long )proc_mtd != (unsigned long )((struct proc_dir_entry *)0)) {
    remove_proc_entry("mtd", (struct proc_dir_entry *)0);
  } else {
  }
  class_unregister(& mtd_class);
  bdi_destroy(& mtd_bdi);
  return;
}
}
int ldv_retval_20 ;
int ldv_retval_18 ;
int ldv_retval_2 ;
extern int ldv_suspend_noirq_21(void) ;
int ldv_retval_5 ;
int ldv_retval_0 ;
extern int ldv_restore_noirq_21(void) ;
int ldv_retval_11 ;
int ldv_retval_1 ;
extern int ldv_freeze_noirq_21(void) ;
int ldv_retval_15 ;
int ldv_retval_16 ;
extern int ldv_restore_early_21(void) ;
extern int ldv_prepare_21(void) ;
void ldv_check_final_state(void) ;
int ldv_retval_8 ;
extern int ldv_suspend_late_21(void) ;
int ldv_retval_7 ;
extern int ldv_probe_4(void) ;
int ldv_retval_14 ;
int ldv_retval_17 ;
extern int ldv_poweroff_noirq_21(void) ;
int ldv_retval_12 ;
extern int ldv_resume_early_21(void) ;
extern void ldv_initialize(void) ;
int ldv_retval_6 ;
extern int ldv_complete_21(void) ;
extern int ldv_thaw_noirq_21(void) ;
extern int ldv_resume_noirq_21(void) ;
extern int ldv_thaw_early_21(void) ;
extern int ldv_poweroff_late_21(void) ;
int ldv_retval_21 ;
int ldv_retval_13 ;
int ldv_retval_9 ;
int ldv_retval_10 ;
extern int ldv_freeze_late_21(void) ;
int ldv_retval_4 ;
int ldv_retval_3 ;
void ldv_file_operations_3(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  mtd_proc_ops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  mtd_proc_ops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_10(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_bitflip_threshold_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_bitflip_threshold_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_dev_pm_ops_21(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1416UL);
  mtd_cls_pm_ops_group1 = (struct device *)tmp;
  return;
}
}
void ldv_main_exported_1(void) ;
void ldv_main_exported_2(void) ;
int main(void)
{
  char *ldvarg1 ;
  void *tmp ;
  struct device *ldvarg0 ;
  void *tmp___0 ;
  struct device_attribute *ldvarg2 ;
  void *tmp___1 ;
  char *ldvarg4 ;
  void *tmp___2 ;
  struct device *ldvarg3 ;
  void *tmp___3 ;
  struct device_attribute *ldvarg5 ;
  void *tmp___4 ;
  struct device_attribute *ldvarg8 ;
  void *tmp___5 ;
  char *ldvarg7 ;
  void *tmp___6 ;
  struct device *ldvarg6 ;
  void *tmp___7 ;
  struct device_attribute *ldvarg27 ;
  void *tmp___8 ;
  char *ldvarg26 ;
  void *tmp___9 ;
  struct device *ldvarg25 ;
  void *tmp___10 ;
  char *ldvarg29 ;
  void *tmp___11 ;
  struct device *ldvarg28 ;
  void *tmp___12 ;
  struct device_attribute *ldvarg30 ;
  void *tmp___13 ;
  char *ldvarg32 ;
  void *tmp___14 ;
  struct device *ldvarg31 ;
  void *tmp___15 ;
  struct device_attribute *ldvarg33 ;
  void *tmp___16 ;
  char *ldvarg35 ;
  void *tmp___17 ;
  struct device_attribute *ldvarg36 ;
  void *tmp___18 ;
  struct device *ldvarg34 ;
  void *tmp___19 ;
  loff_t *ldvarg39 ;
  void *tmp___20 ;
  int ldvarg37 ;
  char *ldvarg41 ;
  void *tmp___21 ;
  size_t ldvarg40 ;
  loff_t ldvarg38 ;
  char *ldvarg43 ;
  void *tmp___22 ;
  struct device *ldvarg42 ;
  void *tmp___23 ;
  struct device_attribute *ldvarg44 ;
  void *tmp___24 ;
  struct device *ldvarg45 ;
  void *tmp___25 ;
  struct device_attribute *ldvarg47 ;
  void *tmp___26 ;
  char *ldvarg46 ;
  void *tmp___27 ;
  struct device *ldvarg48 ;
  void *tmp___28 ;
  char *ldvarg49 ;
  void *tmp___29 ;
  struct device_attribute *ldvarg50 ;
  void *tmp___30 ;
  struct device *ldvarg51 ;
  void *tmp___31 ;
  struct device_attribute *ldvarg53 ;
  void *tmp___32 ;
  char *ldvarg52 ;
  void *tmp___33 ;
  struct device *ldvarg54 ;
  void *tmp___34 ;
  char *ldvarg55 ;
  void *tmp___35 ;
  struct device_attribute *ldvarg56 ;
  void *tmp___36 ;
  struct device *ldvarg57 ;
  void *tmp___37 ;
  char *ldvarg58 ;
  void *tmp___38 ;
  struct device_attribute *ldvarg59 ;
  void *tmp___39 ;
  struct device *ldvarg60 ;
  void *tmp___40 ;
  struct device_attribute *ldvarg63 ;
  void *tmp___41 ;
  struct device *ldvarg61 ;
  void *tmp___42 ;
  char *ldvarg62 ;
  void *tmp___43 ;
  size_t ldvarg65 ;
  char *ldvarg66 ;
  void *tmp___44 ;
  char *ldvarg64 ;
  void *tmp___45 ;
  struct device *ldvarg67 ;
  void *tmp___46 ;
  char *ldvarg68 ;
  void *tmp___47 ;
  struct device_attribute *ldvarg69 ;
  void *tmp___48 ;
  int tmp___49 ;
  int tmp___50 ;
  int tmp___51 ;
  int tmp___52 ;
  int tmp___53 ;
  int tmp___54 ;
  int tmp___55 ;
  int tmp___56 ;
  int tmp___57 ;
  int tmp___58 ;
  int tmp___59 ;
  int tmp___60 ;
  int tmp___61 ;
  int tmp___62 ;
  int tmp___63 ;
  int tmp___64 ;
  int tmp___65 ;
  int tmp___66 ;
  int tmp___67 ;
  int tmp___68 ;
  int tmp___69 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg1 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  ldvarg0 = (struct device *)tmp___0;
  tmp___1 = ldv_init_zalloc(48UL);
  ldvarg2 = (struct device_attribute *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg4 = (char *)tmp___2;
  tmp___3 = ldv_init_zalloc(1416UL);
  ldvarg3 = (struct device *)tmp___3;
  tmp___4 = ldv_init_zalloc(48UL);
  ldvarg5 = (struct device_attribute *)tmp___4;
  tmp___5 = ldv_init_zalloc(48UL);
  ldvarg8 = (struct device_attribute *)tmp___5;
  tmp___6 = ldv_init_zalloc(1UL);
  ldvarg7 = (char *)tmp___6;
  tmp___7 = ldv_init_zalloc(1416UL);
  ldvarg6 = (struct device *)tmp___7;
  tmp___8 = ldv_init_zalloc(48UL);
  ldvarg27 = (struct device_attribute *)tmp___8;
  tmp___9 = ldv_init_zalloc(1UL);
  ldvarg26 = (char *)tmp___9;
  tmp___10 = ldv_init_zalloc(1416UL);
  ldvarg25 = (struct device *)tmp___10;
  tmp___11 = ldv_init_zalloc(1UL);
  ldvarg29 = (char *)tmp___11;
  tmp___12 = ldv_init_zalloc(1416UL);
  ldvarg28 = (struct device *)tmp___12;
  tmp___13 = ldv_init_zalloc(48UL);
  ldvarg30 = (struct device_attribute *)tmp___13;
  tmp___14 = ldv_init_zalloc(1UL);
  ldvarg32 = (char *)tmp___14;
  tmp___15 = ldv_init_zalloc(1416UL);
  ldvarg31 = (struct device *)tmp___15;
  tmp___16 = ldv_init_zalloc(48UL);
  ldvarg33 = (struct device_attribute *)tmp___16;
  tmp___17 = ldv_init_zalloc(1UL);
  ldvarg35 = (char *)tmp___17;
  tmp___18 = ldv_init_zalloc(48UL);
  ldvarg36 = (struct device_attribute *)tmp___18;
  tmp___19 = ldv_init_zalloc(1416UL);
  ldvarg34 = (struct device *)tmp___19;
  tmp___20 = ldv_init_zalloc(8UL);
  ldvarg39 = (loff_t *)tmp___20;
  tmp___21 = ldv_init_zalloc(1UL);
  ldvarg41 = (char *)tmp___21;
  tmp___22 = ldv_init_zalloc(1UL);
  ldvarg43 = (char *)tmp___22;
  tmp___23 = ldv_init_zalloc(1416UL);
  ldvarg42 = (struct device *)tmp___23;
  tmp___24 = ldv_init_zalloc(48UL);
  ldvarg44 = (struct device_attribute *)tmp___24;
  tmp___25 = ldv_init_zalloc(1416UL);
  ldvarg45 = (struct device *)tmp___25;
  tmp___26 = ldv_init_zalloc(48UL);
  ldvarg47 = (struct device_attribute *)tmp___26;
  tmp___27 = ldv_init_zalloc(1UL);
  ldvarg46 = (char *)tmp___27;
  tmp___28 = ldv_init_zalloc(1416UL);
  ldvarg48 = (struct device *)tmp___28;
  tmp___29 = ldv_init_zalloc(1UL);
  ldvarg49 = (char *)tmp___29;
  tmp___30 = ldv_init_zalloc(48UL);
  ldvarg50 = (struct device_attribute *)tmp___30;
  tmp___31 = ldv_init_zalloc(1416UL);
  ldvarg51 = (struct device *)tmp___31;
  tmp___32 = ldv_init_zalloc(48UL);
  ldvarg53 = (struct device_attribute *)tmp___32;
  tmp___33 = ldv_init_zalloc(1UL);
  ldvarg52 = (char *)tmp___33;
  tmp___34 = ldv_init_zalloc(1416UL);
  ldvarg54 = (struct device *)tmp___34;
  tmp___35 = ldv_init_zalloc(1UL);
  ldvarg55 = (char *)tmp___35;
  tmp___36 = ldv_init_zalloc(48UL);
  ldvarg56 = (struct device_attribute *)tmp___36;
  tmp___37 = ldv_init_zalloc(1416UL);
  ldvarg57 = (struct device *)tmp___37;
  tmp___38 = ldv_init_zalloc(1UL);
  ldvarg58 = (char *)tmp___38;
  tmp___39 = ldv_init_zalloc(48UL);
  ldvarg59 = (struct device_attribute *)tmp___39;
  tmp___40 = ldv_init_zalloc(1416UL);
  ldvarg60 = (struct device *)tmp___40;
  tmp___41 = ldv_init_zalloc(48UL);
  ldvarg63 = (struct device_attribute *)tmp___41;
  tmp___42 = ldv_init_zalloc(1416UL);
  ldvarg61 = (struct device *)tmp___42;
  tmp___43 = ldv_init_zalloc(1UL);
  ldvarg62 = (char *)tmp___43;
  tmp___44 = ldv_init_zalloc(1UL);
  ldvarg66 = (char *)tmp___44;
  tmp___45 = ldv_init_zalloc(1UL);
  ldvarg64 = (char *)tmp___45;
  tmp___46 = ldv_init_zalloc(1416UL);
  ldvarg67 = (struct device *)tmp___46;
  tmp___47 = ldv_init_zalloc(1UL);
  ldvarg68 = (char *)tmp___47;
  tmp___48 = ldv_init_zalloc(48UL);
  ldvarg69 = (struct device_attribute *)tmp___48;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg37), 0, 4UL);
  ldv_memset((void *)(& ldvarg40), 0, 8UL);
  ldv_memset((void *)(& ldvarg38), 0, 8UL);
  ldv_memset((void *)(& ldvarg65), 0, 8UL);
  ldv_state_variable_11 = 0;
  ldv_state_variable_21 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_17 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_1 = 0;
  ldv_state_variable_18 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_16 = 0;
  ldv_state_variable_13 = 0;
  ldv_state_variable_6 = 0;
  ldv_state_variable_3 = 0;
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
  ldv_35723:
  tmp___49 = __VERIFIER_nondet_int();
  switch (tmp___49) {
  case 0: ;
  if (ldv_state_variable_11 != 0) {
    tmp___50 = __VERIFIER_nondet_int();
    switch (tmp___50) {
    case 0: ;
    if (ldv_state_variable_11 == 1) {
      mtd_ecc_strength_show(ldvarg0, ldvarg2, ldvarg1);
      ldv_state_variable_11 = 1;
    } else {
    }
    goto ldv_35615;
    default:
    ldv_stop();
    }
    ldv_35615: ;
  } else {
  }
  goto ldv_35617;
  case 1: ;
  if (ldv_state_variable_21 != 0) {
    tmp___51 = __VERIFIER_nondet_int();
    switch (tmp___51) {
    case 0: ;
    if (ldv_state_variable_21 == 12) {
      ldv_retval_18 = mtd_cls_resume(mtd_cls_pm_ops_group1);
      if (ldv_retval_18 == 0) {
        ldv_state_variable_21 = 15;
      } else {
      }
    } else {
    }
    goto ldv_35620;
    case 1: ;
    if (ldv_state_variable_21 == 13) {
      ldv_retval_17 = mtd_cls_resume(mtd_cls_pm_ops_group1);
      if (ldv_retval_17 == 0) {
        ldv_state_variable_21 = 15;
      } else {
      }
    } else {
    }
    goto ldv_35620;
    case 2: ;
    if (ldv_state_variable_21 == 2) {
      ldv_retval_16 = mtd_cls_suspend(mtd_cls_pm_ops_group1);
      if (ldv_retval_16 == 0) {
        ldv_state_variable_21 = 3;
      } else {
      }
    } else {
    }
    goto ldv_35620;
    case 3: ;
    if (ldv_state_variable_21 == 2) {
      ldv_retval_15 = mtd_cls_suspend(mtd_cls_pm_ops_group1);
      if (ldv_retval_15 == 0) {
        ldv_state_variable_21 = 4;
      } else {
      }
    } else {
    }
    goto ldv_35620;
    case 4: ;
    if (ldv_state_variable_21 == 2) {
      ldv_retval_14 = mtd_cls_suspend(mtd_cls_pm_ops_group1);
      if (ldv_retval_14 == 0) {
        ldv_state_variable_21 = 5;
      } else {
      }
    } else {
    }
    goto ldv_35620;
    case 5: ;
    if (ldv_state_variable_21 == 14) {
      ldv_retval_13 = mtd_cls_resume(mtd_cls_pm_ops_group1);
      if (ldv_retval_13 == 0) {
        ldv_state_variable_21 = 15;
      } else {
      }
    } else {
    }
    goto ldv_35620;
    case 6: ;
    if (ldv_state_variable_21 == 5) {
      ldv_retval_12 = ldv_suspend_late_21();
      if (ldv_retval_12 == 0) {
        ldv_state_variable_21 = 10;
      } else {
      }
    } else {
    }
    goto ldv_35620;
    case 7: ;
    if (ldv_state_variable_21 == 7) {
      ldv_retval_11 = ldv_restore_early_21();
      if (ldv_retval_11 == 0) {
        ldv_state_variable_21 = 12;
      } else {
      }
    } else {
    }
    goto ldv_35620;
    case 8: ;
    if (ldv_state_variable_21 == 10) {
      ldv_retval_10 = ldv_resume_early_21();
      if (ldv_retval_10 == 0) {
        ldv_state_variable_21 = 14;
      } else {
      }
    } else {
    }
    goto ldv_35620;
    case 9: ;
    if (ldv_state_variable_21 == 9) {
      ldv_retval_9 = ldv_thaw_early_21();
      if (ldv_retval_9 == 0) {
        ldv_state_variable_21 = 13;
      } else {
      }
    } else {
    }
    goto ldv_35620;
    case 10: ;
    if (ldv_state_variable_21 == 11) {
      ldv_retval_8 = ldv_resume_noirq_21();
      if (ldv_retval_8 == 0) {
        ldv_state_variable_21 = 14;
      } else {
      }
    } else {
    }
    goto ldv_35620;
    case 11: ;
    if (ldv_state_variable_21 == 4) {
      ldv_retval_7 = ldv_freeze_noirq_21();
      if (ldv_retval_7 == 0) {
        ldv_state_variable_21 = 8;
      } else {
      }
    } else {
    }
    goto ldv_35620;
    case 12: ;
    if (ldv_state_variable_21 == 1) {
      ldv_retval_6 = ldv_prepare_21();
      if (ldv_retval_6 == 0) {
        ldv_state_variable_21 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_35620;
    case 13: ;
    if (ldv_state_variable_21 == 4) {
      ldv_retval_5 = ldv_freeze_late_21();
      if (ldv_retval_5 == 0) {
        ldv_state_variable_21 = 9;
      } else {
      }
    } else {
    }
    goto ldv_35620;
    case 14: ;
    if (ldv_state_variable_21 == 8) {
      ldv_retval_4 = ldv_thaw_noirq_21();
      if (ldv_retval_4 == 0) {
        ldv_state_variable_21 = 13;
      } else {
      }
    } else {
    }
    goto ldv_35620;
    case 15: ;
    if (ldv_state_variable_21 == 3) {
      ldv_retval_3 = ldv_poweroff_noirq_21();
      if (ldv_retval_3 == 0) {
        ldv_state_variable_21 = 6;
      } else {
      }
    } else {
    }
    goto ldv_35620;
    case 16: ;
    if (ldv_state_variable_21 == 3) {
      ldv_retval_2 = ldv_poweroff_late_21();
      if (ldv_retval_2 == 0) {
        ldv_state_variable_21 = 7;
      } else {
      }
    } else {
    }
    goto ldv_35620;
    case 17: ;
    if (ldv_state_variable_21 == 6) {
      ldv_retval_1 = ldv_restore_noirq_21();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_21 = 12;
      } else {
      }
    } else {
    }
    goto ldv_35620;
    case 18: ;
    if (ldv_state_variable_21 == 5) {
      ldv_retval_0 = ldv_suspend_noirq_21();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_21 = 11;
      } else {
      }
    } else {
    }
    goto ldv_35620;
    case 19: ;
    if (ldv_state_variable_21 == 15) {
      ldv_complete_21();
      ldv_state_variable_21 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_35620;
    default:
    ldv_stop();
    }
    ldv_35620: ;
  } else {
  }
  goto ldv_35617;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    tmp___52 = __VERIFIER_nondet_int();
    switch (tmp___52) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      mtd_ecc_stats_errors_show(ldvarg3, ldvarg5, ldvarg4);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_35643;
    default:
    ldv_stop();
    }
    ldv_35643: ;
  } else {
  }
  goto ldv_35617;
  case 3: ;
  if (ldv_state_variable_17 != 0) {
    tmp___53 = __VERIFIER_nondet_int();
    switch (tmp___53) {
    case 0: ;
    if (ldv_state_variable_17 == 1) {
      mtd_erasesize_show(ldvarg6, ldvarg8, ldvarg7);
      ldv_state_variable_17 = 1;
    } else {
    }
    goto ldv_35647;
    default:
    ldv_stop();
    }
    ldv_35647: ;
  } else {
  }
  goto ldv_35617;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    ldv_main_exported_2();
  } else {
  }
  goto ldv_35617;
  case 5: ;
  if (ldv_state_variable_1 != 0) {
    ldv_main_exported_1();
  } else {
  }
  goto ldv_35617;
  case 6: ;
  if (ldv_state_variable_18 != 0) {
    tmp___54 = __VERIFIER_nondet_int();
    switch (tmp___54) {
    case 0: ;
    if (ldv_state_variable_18 == 1) {
      mtd_size_show(ldvarg25, ldvarg27, ldvarg26);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_35653;
    default:
    ldv_stop();
    }
    ldv_35653: ;
  } else {
  }
  goto ldv_35617;
  case 7: ;
  if (ldv_state_variable_0 != 0) {
    tmp___55 = __VERIFIER_nondet_int();
    switch (tmp___55) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      cleanup_mtd();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_35658;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_20 = init_mtd();
      if (ldv_retval_20 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_20 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_5 = 1;
        ldv_state_variable_10 = 1;
        ldv_initialize_device_attribute_10();
        ldv_state_variable_19 = 1;
        ldv_state_variable_4 = 1;
        ldv_state_variable_8 = 1;
        ldv_state_variable_15 = 1;
        ldv_state_variable_14 = 1;
        ldv_state_variable_20 = 1;
        ldv_state_variable_12 = 1;
        ldv_state_variable_9 = 1;
        ldv_state_variable_3 = 1;
        ldv_file_operations_3();
        ldv_state_variable_6 = 1;
        ldv_state_variable_13 = 1;
        ldv_state_variable_16 = 1;
        ldv_state_variable_18 = 1;
        ldv_state_variable_1 = 1;
        ldv_file_operations_1();
        ldv_state_variable_2 = 1;
        ldv_state_variable_17 = 1;
        ldv_state_variable_7 = 1;
        ldv_state_variable_21 = 1;
        ldv_dev_pm_ops_21();
        ldv_state_variable_11 = 1;
      } else {
      }
    } else {
    }
    goto ldv_35658;
    default:
    ldv_stop();
    }
    ldv_35658: ;
  } else {
  }
  goto ldv_35617;
  case 8: ;
  if (ldv_state_variable_16 != 0) {
    tmp___56 = __VERIFIER_nondet_int();
    switch (tmp___56) {
    case 0: ;
    if (ldv_state_variable_16 == 1) {
      mtd_writesize_show(ldvarg28, ldvarg30, ldvarg29);
      ldv_state_variable_16 = 1;
    } else {
    }
    goto ldv_35663;
    default:
    ldv_stop();
    }
    ldv_35663: ;
  } else {
  }
  goto ldv_35617;
  case 9: ;
  if (ldv_state_variable_13 != 0) {
    tmp___57 = __VERIFIER_nondet_int();
    switch (tmp___57) {
    case 0: ;
    if (ldv_state_variable_13 == 1) {
      mtd_numeraseregions_show(ldvarg31, ldvarg33, ldvarg32);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_35667;
    default:
    ldv_stop();
    }
    ldv_35667: ;
  } else {
  }
  goto ldv_35617;
  case 10: ;
  if (ldv_state_variable_6 != 0) {
    tmp___58 = __VERIFIER_nondet_int();
    switch (tmp___58) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      mtd_badblocks_show(ldvarg34, ldvarg36, ldvarg35);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_35671;
    default:
    ldv_stop();
    }
    ldv_35671: ;
  } else {
  }
  goto ldv_35617;
  case 11: ;
  if (ldv_state_variable_3 != 0) {
    tmp___59 = __VERIFIER_nondet_int();
    switch (tmp___59) {
    case 0: ;
    if (ldv_state_variable_3 == 2) {
      single_release(mtd_proc_ops_group1, mtd_proc_ops_group2);
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_35675;
    case 1: ;
    if (ldv_state_variable_3 == 2) {
      seq_read(mtd_proc_ops_group2, ldvarg41, ldvarg40, ldvarg39);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_35675;
    case 2: ;
    if (ldv_state_variable_3 == 2) {
      seq_lseek(mtd_proc_ops_group2, ldvarg38, ldvarg37);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_35675;
    case 3: ;
    if (ldv_state_variable_3 == 1) {
      ldv_retval_21 = mtd_proc_open(mtd_proc_ops_group1, mtd_proc_ops_group2);
      if (ldv_retval_21 == 0) {
        ldv_state_variable_3 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_35675;
    default:
    ldv_stop();
    }
    ldv_35675: ;
  } else {
  }
  goto ldv_35617;
  case 12: ;
  if (ldv_state_variable_9 != 0) {
    tmp___60 = __VERIFIER_nondet_int();
    switch (tmp___60) {
    case 0: ;
    if (ldv_state_variable_9 == 1) {
      mtd_ecc_step_size_show(ldvarg42, ldvarg44, ldvarg43);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_35682;
    default:
    ldv_stop();
    }
    ldv_35682: ;
  } else {
  }
  goto ldv_35617;
  case 13: ;
  if (ldv_state_variable_12 != 0) {
    tmp___61 = __VERIFIER_nondet_int();
    switch (tmp___61) {
    case 0: ;
    if (ldv_state_variable_12 == 1) {
      mtd_name_show(ldvarg45, ldvarg47, ldvarg46);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_35686;
    default:
    ldv_stop();
    }
    ldv_35686: ;
  } else {
  }
  goto ldv_35617;
  case 14: ;
  if (ldv_state_variable_20 != 0) {
    tmp___62 = __VERIFIER_nondet_int();
    switch (tmp___62) {
    case 0: ;
    if (ldv_state_variable_20 == 1) {
      mtd_type_show(ldvarg48, ldvarg50, ldvarg49);
      ldv_state_variable_20 = 1;
    } else {
    }
    goto ldv_35690;
    default:
    ldv_stop();
    }
    ldv_35690: ;
  } else {
  }
  goto ldv_35617;
  case 15: ;
  if (ldv_state_variable_14 != 0) {
    tmp___63 = __VERIFIER_nondet_int();
    switch (tmp___63) {
    case 0: ;
    if (ldv_state_variable_14 == 1) {
      mtd_oobsize_show(ldvarg51, ldvarg53, ldvarg52);
      ldv_state_variable_14 = 1;
    } else {
    }
    goto ldv_35694;
    default:
    ldv_stop();
    }
    ldv_35694: ;
  } else {
  }
  goto ldv_35617;
  case 16: ;
  if (ldv_state_variable_15 != 0) {
    tmp___64 = __VERIFIER_nondet_int();
    switch (tmp___64) {
    case 0: ;
    if (ldv_state_variable_15 == 1) {
      mtd_subpagesize_show(ldvarg54, ldvarg56, ldvarg55);
      ldv_state_variable_15 = 1;
    } else {
    }
    goto ldv_35698;
    default:
    ldv_stop();
    }
    ldv_35698: ;
  } else {
  }
  goto ldv_35617;
  case 17: ;
  if (ldv_state_variable_8 != 0) {
    tmp___65 = __VERIFIER_nondet_int();
    switch (tmp___65) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      mtd_ecc_stats_corrected_show(ldvarg57, ldvarg59, ldvarg58);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_35702;
    default:
    ldv_stop();
    }
    ldv_35702: ;
  } else {
  }
  goto ldv_35617;
  case 18: ;
  if (ldv_state_variable_4 != 0) {
    tmp___66 = __VERIFIER_nondet_int();
    switch (tmp___66) {
    case 0: ;
    if (ldv_state_variable_4 == 2) {
      mtd_release(ldvarg60);
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_35706;
    case 1: ;
    if (ldv_state_variable_4 == 1) {
      ldv_probe_4();
      ldv_state_variable_4 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_35706;
    default:
    ldv_stop();
    }
    ldv_35706: ;
  } else {
  }
  goto ldv_35617;
  case 19: ;
  if (ldv_state_variable_19 != 0) {
    tmp___67 = __VERIFIER_nondet_int();
    switch (tmp___67) {
    case 0: ;
    if (ldv_state_variable_19 == 1) {
      mtd_flags_show(ldvarg61, ldvarg63, ldvarg62);
      ldv_state_variable_19 = 1;
    } else {
    }
    goto ldv_35711;
    default:
    ldv_stop();
    }
    ldv_35711: ;
  } else {
  }
  goto ldv_35617;
  case 20: ;
  if (ldv_state_variable_10 != 0) {
    tmp___68 = __VERIFIER_nondet_int();
    switch (tmp___68) {
    case 0: ;
    if (ldv_state_variable_10 == 1) {
      mtd_bitflip_threshold_store(dev_attr_bitflip_threshold_group1, dev_attr_bitflip_threshold_group0,
                                  (char const *)ldvarg66, ldvarg65);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_35715;
    case 1: ;
    if (ldv_state_variable_10 == 1) {
      mtd_bitflip_threshold_show(dev_attr_bitflip_threshold_group1, dev_attr_bitflip_threshold_group0,
                                 ldvarg64);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_35715;
    default:
    ldv_stop();
    }
    ldv_35715: ;
  } else {
  }
  goto ldv_35617;
  case 21: ;
  if (ldv_state_variable_5 != 0) {
    tmp___69 = __VERIFIER_nondet_int();
    switch (tmp___69) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      mtd_bbtblocks_show(ldvarg67, ldvarg69, ldvarg68);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_35720;
    default:
    ldv_stop();
    }
    ldv_35720: ;
  } else {
  }
  goto ldv_35617;
  default:
  ldv_stop();
  }
  ldv_35617: ;
  goto ldv_35723;
  ldv_final:
  ldv_check_final_state();
  return 0;
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
void ldv___module_get_5(struct module *ldv_func_arg1 )
{
  {
  ldv_module_get(ldv_func_arg1);
  return;
}
}
void ldv_module_put_6(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv___module_get_7(struct module *ldv_func_arg1 )
{
  {
  ldv_module_get(ldv_func_arg1);
  return;
}
}
void ldv_module_put_8(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
bool ldv_try_module_get_9(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_10(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_module_put_11(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern unsigned long simple_strtoul(char const * , char ** , unsigned int ) ;
bool ldv_is_err(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
__inline static void *ERR_PTR(long error ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
__inline static void *ERR_CAST(void const *ptr )
{
  {
  return ((void *)ptr);
}
}
extern void lockref_get(struct lockref * ) ;
__inline static struct dentry *dget(struct dentry *dentry )
{
  {
  if ((unsigned long )dentry != (unsigned long )((struct dentry *)0)) {
    lockref_get(& dentry->d_lockref);
  } else {
  }
  return (dentry);
}
}
extern void generic_shutdown_super(struct super_block * ) ;
extern void deactivate_locked_super(struct super_block * ) ;
extern struct super_block *sget(struct file_system_type * , int (*)(struct super_block * ,
                                                                    void * ) , int (*)(struct super_block * ,
                                                                                       void * ) ,
                                int , void * ) ;
extern void bdput(struct block_device * ) ;
extern struct block_device *lookup_bdev(char const * ) ;
struct dentry *mount_mtd(struct file_system_type *fs_type , int flags , char const *dev_name___0 ,
                         void *data , int (*fill_super)(struct super_block * , void * ,
                                                        int ) ) ;
void kill_mtd_super(struct super_block *sb ) ;
extern unsigned char const _ctype[] ;
static int get_sb_mtd_compare(struct super_block *sb , void *_mtd )
{
  struct mtd_info *mtd ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  mtd = (struct mtd_info *)_mtd;
  if ((unsigned long )sb->s_mtd == (unsigned long )mtd) {
    descriptor.modname = "mtd";
    descriptor.function = "get_sb_mtd_compare";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdsuper.c";
    descriptor.format = "MTDSB: Match on device %d (\"%s\")\n";
    descriptor.lineno = 32U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "MTDSB: Match on device %d (\"%s\")\n", mtd->index,
                         mtd->name);
    } else {
    }
    return (1);
  } else {
  }
  descriptor___0.modname = "mtd";
  descriptor___0.function = "get_sb_mtd_compare";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdsuper.c";
  descriptor___0.format = "MTDSB: No match, device %d (\"%s\"), device %d (\"%s\")\n";
  descriptor___0.lineno = 37U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "MTDSB: No match, device %d (\"%s\"), device %d (\"%s\")\n",
                       (sb->s_mtd)->index, (sb->s_mtd)->name, mtd->index, mtd->name);
  } else {
  }
  return (0);
}
}
static int get_sb_mtd_set(struct super_block *sb , void *_mtd )
{
  struct mtd_info *mtd ;
  {
  mtd = (struct mtd_info *)_mtd;
  sb->s_mtd = mtd;
  sb->s_dev = (dev_t )(mtd->index | 32505856);
  sb->s_bdi = mtd->backing_dev_info;
  return (0);
}
}
static struct dentry *mount_mtd_aux(struct file_system_type *fs_type , int flags ,
                                    char const *dev_name___0 , void *data , struct mtd_info *mtd ,
                                    int (*fill_super)(struct super_block * , void * ,
                                                      int ) )
{
  struct super_block *sb ;
  int ret ;
  bool tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  void *tmp___1 ;
  struct dentry *tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  struct dentry *tmp___4 ;
  void *tmp___5 ;
  {
  sb = sget(fs_type, & get_sb_mtd_compare, & get_sb_mtd_set, flags, (void *)mtd);
  tmp = IS_ERR((void const *)sb);
  if ((int )tmp) {
    goto out_error;
  } else {
  }
  if ((unsigned long )sb->s_root != (unsigned long )((struct dentry *)0)) {
    goto already_mounted;
  } else {
  }
  descriptor.modname = "mtd";
  descriptor.function = "mount_mtd_aux";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdsuper.c";
  descriptor.format = "MTDSB: New superblock for device %d (\"%s\")\n";
  descriptor.lineno = 76U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "MTDSB: New superblock for device %d (\"%s\")\n",
                       mtd->index, mtd->name);
  } else {
  }
  ret = (*fill_super)(sb, data, (flags & 32768) != 0);
  if (ret < 0) {
    deactivate_locked_super(sb);
    tmp___1 = ERR_PTR((long )ret);
    return ((struct dentry *)tmp___1);
  } else {
  }
  sb->s_flags = sb->s_flags | 1073741824UL;
  tmp___2 = dget(sb->s_root);
  return (tmp___2);
  already_mounted:
  descriptor___0.modname = "mtd";
  descriptor___0.function = "mount_mtd_aux";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdsuper.c";
  descriptor___0.format = "MTDSB: Device %d (\"%s\") is already mounted\n";
  descriptor___0.lineno = 91U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "MTDSB: Device %d (\"%s\") is already mounted\n",
                       mtd->index, mtd->name);
  } else {
  }
  put_mtd_device(mtd);
  tmp___4 = dget(sb->s_root);
  return (tmp___4);
  out_error:
  put_mtd_device(mtd);
  tmp___5 = ERR_CAST((void const *)sb);
  return ((struct dentry *)tmp___5);
}
}
static struct dentry *mount_mtd_nr(struct file_system_type *fs_type , int flags ,
                                   char const *dev_name___0 , void *data , int mtdnr ,
                                   int (*fill_super)(struct super_block * , void * ,
                                                     int ) )
{
  struct mtd_info *mtd ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  bool tmp___1 ;
  struct dentry *tmp___2 ;
  {
  mtd = get_mtd_device((struct mtd_info *)0, mtdnr);
  tmp___1 = IS_ERR((void const *)mtd);
  if ((int )tmp___1) {
    descriptor.modname = "mtd";
    descriptor.function = "mount_mtd_nr";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdsuper.c";
    descriptor.format = "MTDSB: Device #%u doesn\'t appear to exist\n";
    descriptor.lineno = 111U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "MTDSB: Device #%u doesn\'t appear to exist\n",
                         mtdnr);
    } else {
    }
    tmp___0 = ERR_CAST((void const *)mtd);
    return ((struct dentry *)tmp___0);
  } else {
  }
  tmp___2 = mount_mtd_aux(fs_type, flags, dev_name___0, data, mtd, fill_super);
  return (tmp___2);
}
}
struct dentry *mount_mtd(struct file_system_type *fs_type , int flags , char const *dev_name___0 ,
                         void *data , int (*fill_super)(struct super_block * , void * ,
                                                        int ) )
{
  struct block_device *bdev ;
  int ret ;
  int major ;
  int mtdnr ;
  void *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct mtd_info *mtd ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct dentry *tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  char *endptr ;
  unsigned long tmp___5 ;
  struct _ddebug descriptor___1 ;
  long tmp___6 ;
  struct dentry *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___2 ;
  long tmp___9 ;
  void *tmp___10 ;
  bool tmp___11 ;
  struct _ddebug descriptor___3 ;
  long tmp___12 ;
  struct dentry *tmp___13 ;
  void *tmp___14 ;
  {
  if ((unsigned long )dev_name___0 == (unsigned long )((char const *)0)) {
    tmp = ERR_PTR(-22L);
    return ((struct dentry *)tmp);
  } else {
  }
  descriptor.modname = "mtd";
  descriptor.function = "mount_mtd";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdsuper.c";
  descriptor.format = "MTDSB: dev_name \"%s\"\n";
  descriptor.lineno = 134U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "MTDSB: dev_name \"%s\"\n", dev_name___0);
  } else {
  }
  if (((int )((signed char )*dev_name___0) == 109 && (int )((signed char )*(dev_name___0 + 1UL)) == 116) && (int )((signed char )*(dev_name___0 + 2UL)) == 100) {
    if ((int )((signed char )*(dev_name___0 + 3UL)) == 58) {
      descriptor___0.modname = "mtd";
      descriptor___0.function = "mount_mtd";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdsuper.c";
      descriptor___0.format = "MTDSB: mtd:%%s, name \"%s\"\n";
      descriptor___0.lineno = 146U;
      descriptor___0.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        __dynamic_pr_debug(& descriptor___0, "MTDSB: mtd:%%s, name \"%s\"\n", dev_name___0 + 4UL);
      } else {
      }
      mtd = get_mtd_device_nm(dev_name___0 + 4UL);
      tmp___3 = IS_ERR((void const *)mtd);
      if (tmp___3) {
        tmp___4 = 0;
      } else {
        tmp___4 = 1;
      }
      if (tmp___4) {
        tmp___2 = mount_mtd_aux(fs_type, flags, dev_name___0, data, mtd, fill_super);
        return (tmp___2);
      } else {
      }
      printk("\rMTD: MTD device with name \"%s\" not found.\n", dev_name___0 + 4UL);
    } else
    if (((int )_ctype[(int )((unsigned char )*(dev_name___0 + 3UL))] & 4) != 0) {
      tmp___5 = simple_strtoul(dev_name___0 + 3UL, & endptr, 0U);
      mtdnr = (int )tmp___5;
      if ((int )((signed char )*endptr) == 0) {
        descriptor___1.modname = "mtd";
        descriptor___1.function = "mount_mtd";
        descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdsuper.c";
        descriptor___1.format = "MTDSB: mtd%%d, mtdnr %d\n";
        descriptor___1.lineno = 167U;
        descriptor___1.flags = 0U;
        tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
        if (tmp___6 != 0L) {
          __dynamic_pr_debug(& descriptor___1, "MTDSB: mtd%%d, mtdnr %d\n", mtdnr);
        } else {
        }
        tmp___7 = mount_mtd_nr(fs_type, flags, dev_name___0, data, mtdnr, fill_super);
        return (tmp___7);
      } else {
      }
    } else {
    }
  } else {
  }
  bdev = lookup_bdev(dev_name___0);
  tmp___11 = IS_ERR((void const *)bdev);
  if ((int )tmp___11) {
    tmp___8 = PTR_ERR((void const *)bdev);
    ret = (int )tmp___8;
    descriptor___2.modname = "mtd";
    descriptor___2.function = "mount_mtd";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdsuper.c";
    descriptor___2.format = "MTDSB: lookup_bdev() returned %d\n";
    descriptor___2.lineno = 182U;
    descriptor___2.flags = 0U;
    tmp___9 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      __dynamic_pr_debug(& descriptor___2, "MTDSB: lookup_bdev() returned %d\n", ret);
    } else {
    }
    tmp___10 = ERR_PTR((long )ret);
    return ((struct dentry *)tmp___10);
  } else {
  }
  descriptor___3.modname = "mtd";
  descriptor___3.function = "mount_mtd";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdsuper.c";
  descriptor___3.format = "MTDSB: lookup_bdev() returned 0\n";
  descriptor___3.lineno = 185U;
  descriptor___3.flags = 0U;
  tmp___12 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    __dynamic_pr_debug(& descriptor___3, "MTDSB: lookup_bdev() returned 0\n");
  } else {
  }
  ret = -22;
  major = (int )(bdev->bd_dev >> 20);
  mtdnr = (int )bdev->bd_dev & 1048575;
  bdput(bdev);
  if (major != 31) {
    goto not_an_MTD_device;
  } else {
  }
  tmp___13 = mount_mtd_nr(fs_type, flags, dev_name___0, data, mtdnr, fill_super);
  return (tmp___13);
  not_an_MTD_device: ;
  if ((flags & 32768) == 0) {
    printk("\rMTD: Attempt to mount non-MTD device \"%s\"\n", dev_name___0);
  } else {
  }
  tmp___14 = ERR_PTR(-22L);
  return ((struct dentry *)tmp___14);
}
}
static char const __kstrtab_mount_mtd[10U] =
  { 'm', 'o', 'u', 'n',
        't', '_', 'm', 't',
        'd', '\000'};
struct kernel_symbol const __ksymtab_mount_mtd ;
struct kernel_symbol const __ksymtab_mount_mtd = {(unsigned long )(& mount_mtd), (char const *)(& __kstrtab_mount_mtd)};
void kill_mtd_super(struct super_block *sb )
{
  {
  generic_shutdown_super(sb);
  put_mtd_device(sb->s_mtd);
  sb->s_mtd = (struct mtd_info *)0;
  return;
}
}
static char const __kstrtab_kill_mtd_super[15U] =
  { 'k', 'i', 'l', 'l',
        '_', 'm', 't', 'd',
        '_', 's', 'u', 'p',
        'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_kill_mtd_super ;
struct kernel_symbol const __ksymtab_kill_mtd_super = {(unsigned long )(& kill_mtd_super), (char const *)(& __kstrtab_kill_mtd_super)};
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
  goto ldv_3129;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3129;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3129;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3129;
  default:
  __bad_percpu_size();
  }
  ldv_3129: ;
  return (pfo_ret__);
}
}
extern void __xchg_wrong_size(void) ;
extern int default_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void add_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
extern void remove_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void schedule(void) ;
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc(size, flags | 32768U);
  return (tmp);
}
}
__inline static int mtd_write_oob(struct mtd_info *mtd , loff_t to , struct mtd_oob_ops *ops )
{
  size_t tmp ;
  int tmp___0 ;
  {
  tmp = 0UL;
  ops->oobretlen = tmp;
  ops->retlen = tmp;
  if ((unsigned long )mtd->_write_oob == (unsigned long )((int (*)(struct mtd_info * ,
                                                                   loff_t , struct mtd_oob_ops * ))0)) {
    return (-95);
  } else {
  }
  if ((mtd->flags & 1024U) == 0U) {
    return (-30);
  } else {
  }
  tmp___0 = (*(mtd->_write_oob))(mtd, to, ops);
  return (tmp___0);
}
}
__inline static void mtd_sync(struct mtd_info *mtd )
{
  {
  if ((unsigned long )mtd->_sync != (unsigned long )((void (*)(struct mtd_info * ))0)) {
    (*(mtd->_sync))(mtd);
  } else {
  }
  return;
}
}
__inline static int mtd_can_have_bb(struct mtd_info const *mtd )
{
  {
  return ((unsigned long )mtd->_block_isbad != (unsigned long )((int (* )(struct mtd_info * ,
                                                                                     loff_t ))0));
}
}
__inline static int mtd_is_bitflip(int err )
{
  {
  return (err == -117);
}
}
__inline static int mtd_is_eccerr(int err )
{
  {
  return (err == -74);
}
}
struct mtd_info *mtd_concat_create(struct mtd_info **subdev , int num_devs , char const *name ) ;
void mtd_concat_destroy(struct mtd_info *mtd ) ;
static int concat_read(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
                       u_char *buf )
{
  struct mtd_concat *concat ;
  int ret ;
  int err ;
  int i ;
  struct mtd_info *subdev ;
  size_t size ;
  size_t retsize ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  concat = (struct mtd_concat *)mtd;
  ret = 0;
  i = 0;
  goto ldv_34121;
  ldv_34120:
  subdev = *(concat->subdev + (unsigned long )i);
  if ((unsigned long long )from >= subdev->size) {
    size = 0UL;
    from = (loff_t )((unsigned long long )from - subdev->size);
    goto ldv_34119;
  } else {
  }
  if ((unsigned long long )from + (unsigned long long )len > subdev->size) {
    size = (size_t )(subdev->size - (unsigned long long )from);
  } else {
    size = len;
  }
  err = mtd_read(subdev, from, size, & retsize, buf);
  tmp___1 = ldv__builtin_expect(err != 0, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = mtd_is_eccerr(err);
    if (tmp___0 != 0) {
      mtd->ecc_stats.failed = mtd->ecc_stats.failed + 1U;
      ret = err;
    } else {
      tmp = mtd_is_bitflip(err);
      if (tmp != 0) {
        mtd->ecc_stats.corrected = mtd->ecc_stats.corrected + 1U;
        if (ret == 0) {
          ret = err;
        } else {
        }
      } else {
        return (err);
      }
    }
  } else {
  }
  *retlen = *retlen + retsize;
  len = len - size;
  if (len == 0UL) {
    return (ret);
  } else {
  }
  buf = buf + size;
  from = 0LL;
  ldv_34119:
  i = i + 1;
  ldv_34121: ;
  if (concat->num_subdev > i) {
    goto ldv_34120;
  } else {
  }
  return (-22);
}
}
static int concat_write(struct mtd_info *mtd , loff_t to , size_t len , size_t *retlen ,
                        u_char const *buf )
{
  struct mtd_concat *concat ;
  int err ;
  int i ;
  struct mtd_info *subdev ;
  size_t size ;
  size_t retsize ;
  {
  concat = (struct mtd_concat *)mtd;
  err = -22;
  i = 0;
  goto ldv_34139;
  ldv_34138:
  subdev = *(concat->subdev + (unsigned long )i);
  if ((unsigned long long )to >= subdev->size) {
    size = 0UL;
    to = (loff_t )((unsigned long long )to - subdev->size);
    goto ldv_34136;
  } else {
  }
  if ((unsigned long long )to + (unsigned long long )len > subdev->size) {
    size = (size_t )(subdev->size - (unsigned long long )to);
  } else {
    size = len;
  }
  err = mtd_write(subdev, to, size, & retsize, buf);
  if (err != 0) {
    goto ldv_34137;
  } else {
  }
  *retlen = *retlen + retsize;
  len = len - size;
  if (len == 0UL) {
    goto ldv_34137;
  } else {
  }
  err = -22;
  buf = buf + size;
  to = 0LL;
  ldv_34136:
  i = i + 1;
  ldv_34139: ;
  if (concat->num_subdev > i) {
    goto ldv_34138;
  } else {
  }
  ldv_34137: ;
  return (err);
}
}
static int concat_writev(struct mtd_info *mtd , struct kvec const *vecs , unsigned long count ,
                         loff_t to , size_t *retlen )
{
  struct mtd_concat *concat ;
  struct kvec *vecs_copy ;
  unsigned long entry_low ;
  unsigned long entry_high ;
  size_t total_len ;
  int i ;
  int err ;
  uint64_t __to ;
  uint32_t __base ;
  uint32_t __rem ;
  void *tmp ;
  struct mtd_info *subdev ;
  size_t size ;
  size_t wsize ;
  size_t retsize ;
  size_t old_iov_len ;
  uint64_t __min1 ;
  uint64_t __min2 ;
  unsigned long tmp___0 ;
  {
  concat = (struct mtd_concat *)mtd;
  total_len = 0UL;
  err = -22;
  i = 0;
  goto ldv_34155;
  ldv_34154:
  total_len = (unsigned long )(vecs + (unsigned long )i)->iov_len + total_len;
  i = i + 1;
  ldv_34155: ;
  if ((unsigned long )i < count) {
    goto ldv_34154;
  } else {
  }
  if (mtd->writesize > 1U) {
    __to = (uint64_t )to;
    __base = mtd->writesize;
    __rem = (uint32_t )(__to % (uint64_t )__base);
    __to = __to / (uint64_t )__base;
    if (__rem != 0U || total_len % (size_t )mtd->writesize != 0UL) {
      return (-22);
    } else {
    }
  } else {
  }
  tmp = kmemdup((void const *)vecs, count * 16UL, 208U);
  vecs_copy = (struct kvec *)tmp;
  if ((unsigned long )vecs_copy == (unsigned long )((struct kvec *)0)) {
    return (-12);
  } else {
  }
  entry_low = 0UL;
  i = 0;
  goto ldv_34175;
  ldv_34174:
  subdev = *(concat->subdev + (unsigned long )i);
  if ((unsigned long long )to >= subdev->size) {
    to = (loff_t )((unsigned long long )to - subdev->size);
    goto ldv_34166;
  } else {
  }
  __min1 = (uint64_t )total_len;
  __min2 = subdev->size - (unsigned long long )to;
  size = (size_t )(__min1 < __min2 ? __min1 : __min2);
  wsize = size;
  entry_high = entry_low;
  goto ldv_34172;
  ldv_34171: ;
  if ((vecs_copy + entry_high)->iov_len >= size) {
    goto ldv_34170;
  } else {
  }
  tmp___0 = entry_high;
  entry_high = entry_high + 1UL;
  size = size - (vecs_copy + tmp___0)->iov_len;
  ldv_34172: ;
  if (entry_high < count) {
    goto ldv_34171;
  } else {
  }
  ldv_34170:
  old_iov_len = (vecs_copy + entry_high)->iov_len;
  (vecs_copy + entry_high)->iov_len = size;
  err = mtd_writev(subdev, (struct kvec const *)(vecs_copy + entry_low), (entry_high - entry_low) + 1UL,
                   to, & retsize);
  (vecs_copy + entry_high)->iov_len = old_iov_len - size;
  (vecs_copy + entry_high)->iov_base = (vecs_copy + entry_high)->iov_base + size;
  entry_low = entry_high;
  if (err != 0) {
    goto ldv_34173;
  } else {
  }
  *retlen = *retlen + retsize;
  total_len = total_len - wsize;
  if (total_len == 0UL) {
    goto ldv_34173;
  } else {
  }
  err = -22;
  to = 0LL;
  ldv_34166:
  i = i + 1;
  ldv_34175: ;
  if (concat->num_subdev > i) {
    goto ldv_34174;
  } else {
  }
  ldv_34173:
  kfree((void const *)vecs_copy);
  return (err);
}
}
static int concat_read_oob(struct mtd_info *mtd , loff_t from , struct mtd_oob_ops *ops )
{
  struct mtd_concat *concat ;
  struct mtd_oob_ops devops ;
  int i ;
  int err ;
  int ret ;
  size_t tmp ;
  struct mtd_info *subdev ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  concat = (struct mtd_concat *)mtd;
  devops = *ops;
  ret = 0;
  tmp = 0UL;
  ops->oobretlen = tmp;
  ops->retlen = tmp;
  i = 0;
  goto ldv_34189;
  ldv_34188:
  subdev = *(concat->subdev + (unsigned long )i);
  if ((unsigned long long )from >= subdev->size) {
    from = (loff_t )((unsigned long long )from - subdev->size);
    goto ldv_34187;
  } else {
  }
  if ((unsigned long long )devops.len + (unsigned long long )from > subdev->size) {
    devops.len = (size_t )(subdev->size - (unsigned long long )from);
  } else {
  }
  err = mtd_read_oob(subdev, from, & devops);
  ops->retlen = ops->retlen + devops.retlen;
  ops->oobretlen = ops->oobretlen + devops.oobretlen;
  tmp___2 = ldv__builtin_expect(err != 0, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = mtd_is_eccerr(err);
    if (tmp___1 != 0) {
      mtd->ecc_stats.failed = mtd->ecc_stats.failed + 1U;
      ret = err;
    } else {
      tmp___0 = mtd_is_bitflip(err);
      if (tmp___0 != 0) {
        mtd->ecc_stats.corrected = mtd->ecc_stats.corrected + 1U;
        if (ret == 0) {
          ret = err;
        } else {
        }
      } else {
        return (err);
      }
    }
  } else {
  }
  if ((unsigned long )devops.datbuf != (unsigned long )((uint8_t *)0U)) {
    devops.len = ops->len - ops->retlen;
    if (devops.len == 0UL) {
      return (ret);
    } else {
    }
    devops.datbuf = devops.datbuf + devops.retlen;
  } else {
  }
  if ((unsigned long )devops.oobbuf != (unsigned long )((uint8_t *)0U)) {
    devops.ooblen = ops->ooblen - ops->oobretlen;
    if (devops.ooblen == 0UL) {
      return (ret);
    } else {
    }
    devops.oobbuf = devops.oobbuf + ops->oobretlen;
  } else {
  }
  from = 0LL;
  ldv_34187:
  i = i + 1;
  ldv_34189: ;
  if (concat->num_subdev > i) {
    goto ldv_34188;
  } else {
  }
  return (-22);
}
}
static int concat_write_oob(struct mtd_info *mtd , loff_t to , struct mtd_oob_ops *ops )
{
  struct mtd_concat *concat ;
  struct mtd_oob_ops devops ;
  int i ;
  int err ;
  size_t tmp ;
  struct mtd_info *subdev ;
  {
  concat = (struct mtd_concat *)mtd;
  devops = *ops;
  if ((mtd->flags & 1024U) == 0U) {
    return (-30);
  } else {
  }
  tmp = 0UL;
  ops->oobretlen = tmp;
  ops->retlen = tmp;
  i = 0;
  goto ldv_34203;
  ldv_34202:
  subdev = *(concat->subdev + (unsigned long )i);
  if ((unsigned long long )to >= subdev->size) {
    to = (loff_t )((unsigned long long )to - subdev->size);
    goto ldv_34201;
  } else {
  }
  if ((unsigned long long )devops.len + (unsigned long long )to > subdev->size) {
    devops.len = (size_t )(subdev->size - (unsigned long long )to);
  } else {
  }
  err = mtd_write_oob(subdev, to, & devops);
  ops->retlen = ops->retlen + devops.retlen;
  ops->oobretlen = ops->oobretlen + devops.oobretlen;
  if (err != 0) {
    return (err);
  } else {
  }
  if ((unsigned long )devops.datbuf != (unsigned long )((uint8_t *)0U)) {
    devops.len = ops->len - ops->retlen;
    if (devops.len == 0UL) {
      return (0);
    } else {
    }
    devops.datbuf = devops.datbuf + devops.retlen;
  } else {
  }
  if ((unsigned long )devops.oobbuf != (unsigned long )((uint8_t *)0U)) {
    devops.ooblen = ops->ooblen - ops->oobretlen;
    if (devops.ooblen == 0UL) {
      return (0);
    } else {
    }
    devops.oobbuf = devops.oobbuf + devops.oobretlen;
  } else {
  }
  to = 0LL;
  ldv_34201:
  i = i + 1;
  ldv_34203: ;
  if (concat->num_subdev > i) {
    goto ldv_34202;
  } else {
  }
  return (-22);
}
}
static void concat_erase_callback(struct erase_info *instr )
{
  {
  __wake_up((wait_queue_head_t *)instr->priv, 3U, 1, (void *)0);
  return;
}
}
static int concat_dev_erase(struct mtd_info *mtd , struct erase_info *erase )
{
  int err ;
  wait_queue_head_t waitq ;
  wait_queue_t wait ;
  struct task_struct *tmp ;
  struct lock_class_key __key ;
  struct task_struct *tmp___0 ;
  long volatile __ret ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  struct task_struct *tmp___3 ;
  struct task_struct *tmp___4 ;
  struct task_struct *tmp___5 ;
  long volatile __ret___0 ;
  struct task_struct *tmp___6 ;
  struct task_struct *tmp___7 ;
  struct task_struct *tmp___8 ;
  struct task_struct *tmp___9 ;
  {
  tmp = get_current();
  wait.flags = 0U;
  wait.private = (void *)tmp;
  wait.func = & default_wake_function;
  wait.task_list.next = (struct list_head *)0;
  wait.task_list.prev = (struct list_head *)0;
  __init_waitqueue_head(& waitq, "&waitq", & __key);
  erase->mtd = mtd;
  erase->callback = & concat_erase_callback;
  erase->priv = (unsigned long )(& waitq);
  err = mtd_erase(mtd, erase);
  if (err == 0) {
    tmp___0 = get_current();
    tmp___0->task_state_change = 0UL;
    __ret = 2L;
    switch (8UL) {
    case 1UL:
    tmp___1 = get_current();
    __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (tmp___1->state): : "memory",
                         "cc");
    goto ldv_34218;
    case 2UL:
    tmp___2 = get_current();
    __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (tmp___2->state): : "memory",
                         "cc");
    goto ldv_34218;
    case 4UL:
    tmp___3 = get_current();
    __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (tmp___3->state): : "memory",
                         "cc");
    goto ldv_34218;
    case 8UL:
    tmp___4 = get_current();
    __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (tmp___4->state): : "memory",
                         "cc");
    goto ldv_34218;
    default:
    __xchg_wrong_size();
    }
    ldv_34218:
    add_wait_queue(& waitq, & wait);
    if ((unsigned int )erase->state != 8U && (unsigned int )erase->state != 16U) {
      schedule();
    } else {
    }
    remove_wait_queue(& waitq, & wait);
    tmp___5 = get_current();
    tmp___5->task_state_change = 0UL;
    __ret___0 = 0L;
    switch (8UL) {
    case 1UL:
    tmp___6 = get_current();
    __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret___0), "+m" (tmp___6->state): : "memory",
                         "cc");
    goto ldv_34226;
    case 2UL:
    tmp___7 = get_current();
    __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret___0), "+m" (tmp___7->state): : "memory",
                         "cc");
    goto ldv_34226;
    case 4UL:
    tmp___8 = get_current();
    __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret___0), "+m" (tmp___8->state): : "memory",
                         "cc");
    goto ldv_34226;
    case 8UL:
    tmp___9 = get_current();
    __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret___0), "+m" (tmp___9->state): : "memory",
                         "cc");
    goto ldv_34226;
    default:
    __xchg_wrong_size();
    }
    ldv_34226:
    err = (unsigned int )erase->state == 16U ? -5 : 0;
  } else {
  }
  return (err);
}
}
static int concat_erase(struct mtd_info *mtd , struct erase_info *instr )
{
  struct mtd_concat *concat ;
  struct mtd_info *subdev ;
  int i ;
  int err ;
  uint64_t length ;
  uint64_t offset ;
  struct erase_info *erase ;
  struct mtd_erase_region_info *erase_regions ;
  void *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  concat = (struct mtd_concat *)mtd;
  offset = 0ULL;
  if (concat->mtd.numeraseregions == 0) {
    if ((instr->addr & (uint64_t )(concat->mtd.erasesize - 1U)) != 0ULL) {
      return (-22);
    } else {
    }
    if ((instr->len & (uint64_t )(concat->mtd.erasesize - 1U)) != 0ULL) {
      return (-22);
    } else {
    }
  } else {
    erase_regions = concat->mtd.eraseregions;
    i = 0;
    goto ldv_34245;
    ldv_34244:
    i = i + 1;
    ldv_34245: ;
    if (concat->mtd.numeraseregions > i && instr->addr >= (erase_regions + (unsigned long )i)->offset) {
      goto ldv_34244;
    } else {
    }
    i = i - 1;
    if (i < 0 || (instr->addr & (uint64_t )((erase_regions + (unsigned long )i)->erasesize - 1U)) != 0ULL) {
      return (-22);
    } else {
    }
    goto ldv_34248;
    ldv_34247:
    i = i + 1;
    ldv_34248: ;
    if (concat->mtd.numeraseregions > i && instr->addr + instr->len >= (erase_regions + (unsigned long )i)->offset) {
      goto ldv_34247;
    } else {
    }
    i = i - 1;
    if (i < 0 || ((instr->addr + instr->len) & (uint64_t )((erase_regions + (unsigned long )i)->erasesize - 1U)) != 0ULL) {
      return (-22);
    } else {
    }
  }
  tmp = kmalloc(88UL, 208U);
  erase = (struct erase_info *)tmp;
  if ((unsigned long )erase == (unsigned long )((struct erase_info *)0)) {
    return (-12);
  } else {
  }
  *erase = *instr;
  length = instr->len;
  i = 0;
  goto ldv_34252;
  ldv_34251:
  subdev = *(concat->subdev + (unsigned long )i);
  if (subdev->size <= erase->addr) {
    erase->addr = erase->addr - subdev->size;
    offset = subdev->size + offset;
  } else {
    goto ldv_34250;
  }
  i = i + 1;
  ldv_34252: ;
  if (concat->num_subdev > i) {
    goto ldv_34251;
  } else {
  }
  ldv_34250:
  tmp___0 = ldv__builtin_expect(concat->num_subdev <= i, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdconcat.c"),
                         "i" (454), "i" (12UL));
    ldv_34253: ;
    goto ldv_34253;
  } else {
  }
  err = 0;
  goto ldv_34257;
  ldv_34256:
  subdev = *(concat->subdev + (unsigned long )i);
  if (erase->addr + length > subdev->size) {
    erase->len = subdev->size - erase->addr;
  } else {
    erase->len = length;
  }
  length = length - erase->len;
  err = concat_dev_erase(subdev, erase);
  if (err != 0) {
    tmp___1 = ldv__builtin_expect(err == -22, 0L);
    if (tmp___1 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdconcat.c"),
                           "i" (472), "i" (12UL));
      ldv_34254: ;
      goto ldv_34254;
    } else {
    }
    if (erase->fail_addr != 0xffffffffffffffffULL) {
      instr->fail_addr = erase->fail_addr + offset;
    } else {
    }
    goto ldv_34255;
  } else {
  }
  erase->addr = 0ULL;
  offset = subdev->size + offset;
  i = i + 1;
  ldv_34257: ;
  if (length != 0ULL) {
    goto ldv_34256;
  } else {
  }
  ldv_34255:
  instr->state = erase->state;
  kfree((void const *)erase);
  if (err != 0) {
    return (err);
  } else {
  }
  if ((unsigned long )instr->callback != (unsigned long )((void (*)(struct erase_info * ))0)) {
    (*(instr->callback))(instr);
  } else {
  }
  return (0);
}
}
static int concat_lock(struct mtd_info *mtd , loff_t ofs , uint64_t len )
{
  struct mtd_concat *concat ;
  int i ;
  int err ;
  struct mtd_info *subdev ;
  uint64_t size ;
  {
  concat = (struct mtd_concat *)mtd;
  err = -22;
  i = 0;
  goto ldv_34271;
  ldv_34270:
  subdev = *(concat->subdev + (unsigned long )i);
  if ((unsigned long long )ofs >= subdev->size) {
    size = 0ULL;
    ofs = (loff_t )((unsigned long long )ofs - subdev->size);
    goto ldv_34268;
  } else {
  }
  if ((unsigned long long )ofs + len > subdev->size) {
    size = subdev->size - (unsigned long long )ofs;
  } else {
    size = len;
  }
  err = mtd_lock(subdev, ofs, size);
  if (err != 0) {
    goto ldv_34269;
  } else {
  }
  len = len - size;
  if (len == 0ULL) {
    goto ldv_34269;
  } else {
  }
  err = -22;
  ofs = 0LL;
  ldv_34268:
  i = i + 1;
  ldv_34271: ;
  if (concat->num_subdev > i) {
    goto ldv_34270;
  } else {
  }
  ldv_34269: ;
  return (err);
}
}
static int concat_unlock(struct mtd_info *mtd , loff_t ofs , uint64_t len )
{
  struct mtd_concat *concat ;
  int i ;
  int err ;
  struct mtd_info *subdev ;
  uint64_t size ;
  {
  concat = (struct mtd_concat *)mtd;
  err = 0;
  i = 0;
  goto ldv_34285;
  ldv_34284:
  subdev = *(concat->subdev + (unsigned long )i);
  if ((unsigned long long )ofs >= subdev->size) {
    size = 0ULL;
    ofs = (loff_t )((unsigned long long )ofs - subdev->size);
    goto ldv_34282;
  } else {
  }
  if ((unsigned long long )ofs + len > subdev->size) {
    size = subdev->size - (unsigned long long )ofs;
  } else {
    size = len;
  }
  err = mtd_unlock(subdev, ofs, size);
  if (err != 0) {
    goto ldv_34283;
  } else {
  }
  len = len - size;
  if (len == 0ULL) {
    goto ldv_34283;
  } else {
  }
  err = -22;
  ofs = 0LL;
  ldv_34282:
  i = i + 1;
  ldv_34285: ;
  if (concat->num_subdev > i) {
    goto ldv_34284;
  } else {
  }
  ldv_34283: ;
  return (err);
}
}
static void concat_sync(struct mtd_info *mtd )
{
  struct mtd_concat *concat ;
  int i ;
  struct mtd_info *subdev ;
  {
  concat = (struct mtd_concat *)mtd;
  i = 0;
  goto ldv_34293;
  ldv_34292:
  subdev = *(concat->subdev + (unsigned long )i);
  mtd_sync(subdev);
  i = i + 1;
  ldv_34293: ;
  if (concat->num_subdev > i) {
    goto ldv_34292;
  } else {
  }
  return;
}
}
static int concat_suspend(struct mtd_info *mtd )
{
  struct mtd_concat *concat ;
  int i ;
  int rc ;
  struct mtd_info *subdev ;
  {
  concat = (struct mtd_concat *)mtd;
  rc = 0;
  i = 0;
  goto ldv_34303;
  ldv_34302:
  subdev = *(concat->subdev + (unsigned long )i);
  rc = mtd_suspend(subdev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  i = i + 1;
  ldv_34303: ;
  if (concat->num_subdev > i) {
    goto ldv_34302;
  } else {
  }
  return (rc);
}
}
static void concat_resume(struct mtd_info *mtd )
{
  struct mtd_concat *concat ;
  int i ;
  struct mtd_info *subdev ;
  {
  concat = (struct mtd_concat *)mtd;
  i = 0;
  goto ldv_34312;
  ldv_34311:
  subdev = *(concat->subdev + (unsigned long )i);
  mtd_resume(subdev);
  i = i + 1;
  ldv_34312: ;
  if (concat->num_subdev > i) {
    goto ldv_34311;
  } else {
  }
  return;
}
}
static int concat_block_isbad(struct mtd_info *mtd , loff_t ofs )
{
  struct mtd_concat *concat ;
  int i ;
  int res ;
  int tmp ;
  struct mtd_info *subdev ;
  {
  concat = (struct mtd_concat *)mtd;
  res = 0;
  tmp = mtd_can_have_bb((struct mtd_info const *)*(concat->subdev));
  if (tmp == 0) {
    return (res);
  } else {
  }
  i = 0;
  goto ldv_34325;
  ldv_34324:
  subdev = *(concat->subdev + (unsigned long )i);
  if ((unsigned long long )ofs >= subdev->size) {
    ofs = (loff_t )((unsigned long long )ofs - subdev->size);
    goto ldv_34322;
  } else {
  }
  res = mtd_block_isbad(subdev, ofs);
  goto ldv_34323;
  ldv_34322:
  i = i + 1;
  ldv_34325: ;
  if (concat->num_subdev > i) {
    goto ldv_34324;
  } else {
  }
  ldv_34323: ;
  return (res);
}
}
static int concat_block_markbad(struct mtd_info *mtd , loff_t ofs )
{
  struct mtd_concat *concat ;
  int i ;
  int err ;
  struct mtd_info *subdev ;
  {
  concat = (struct mtd_concat *)mtd;
  err = -22;
  i = 0;
  goto ldv_34337;
  ldv_34336:
  subdev = *(concat->subdev + (unsigned long )i);
  if ((unsigned long long )ofs >= subdev->size) {
    ofs = (loff_t )((unsigned long long )ofs - subdev->size);
    goto ldv_34334;
  } else {
  }
  err = mtd_block_markbad(subdev, ofs);
  if (err == 0) {
    mtd->ecc_stats.badblocks = mtd->ecc_stats.badblocks + 1U;
  } else {
  }
  goto ldv_34335;
  ldv_34334:
  i = i + 1;
  ldv_34337: ;
  if (concat->num_subdev > i) {
    goto ldv_34336;
  } else {
  }
  ldv_34335: ;
  return (err);
}
}
static unsigned long concat_get_unmapped_area(struct mtd_info *mtd , unsigned long len ,
                                              unsigned long offset , unsigned long flags )
{
  struct mtd_concat *concat ;
  int i ;
  struct mtd_info *subdev ;
  unsigned long tmp ;
  {
  concat = (struct mtd_concat *)mtd;
  i = 0;
  goto ldv_34349;
  ldv_34348:
  subdev = *(concat->subdev + (unsigned long )i);
  if (subdev->size <= (unsigned long long )offset) {
    offset = (unsigned long )((unsigned long long )offset - subdev->size);
    goto ldv_34347;
  } else {
  }
  tmp = mtd_get_unmapped_area(subdev, len, offset, flags);
  return (tmp);
  ldv_34347:
  i = i + 1;
  ldv_34349: ;
  if (concat->num_subdev > i) {
    goto ldv_34348;
  } else {
  }
  return (0xffffffffffffffdaUL);
}
}
struct mtd_info *mtd_concat_create(struct mtd_info **subdev , int num_devs , char const *name )
{
  int i ;
  size_t size ;
  struct mtd_concat *concat ;
  uint32_t max_erasesize ;
  uint32_t curr_erasesize ;
  int num_erase_region ;
  int max_writebufsize ;
  void *tmp ;
  int j ;
  uint64_t tmp64 ;
  struct mtd_erase_region_info *erase_region_p ;
  uint64_t begin ;
  uint64_t position ;
  void *tmp___0 ;
  uint32_t __base ;
  uint32_t __rem ;
  int j___0 ;
  uint32_t __base___0 ;
  uint32_t __rem___0 ;
  uint32_t __base___1 ;
  uint32_t __rem___1 ;
  {
  max_writebufsize = 0;
  printk("\rConcatenating MTD devices:\n");
  i = 0;
  goto ldv_34364;
  ldv_34363:
  printk("\r(%d): \"%s\"\n", i, (*(subdev + (unsigned long )i))->name);
  i = i + 1;
  ldv_34364: ;
  if (i < num_devs) {
    goto ldv_34363;
  } else {
  }
  printk("\rinto device \"%s\"\n", name);
  size = ((unsigned long )num_devs + 230UL) * 8UL;
  tmp = kzalloc(size, 208U);
  concat = (struct mtd_concat *)tmp;
  if ((unsigned long )concat == (unsigned long )((struct mtd_concat *)0)) {
    printk("memory allocation error while creating concatenated device \"%s\"\n",
           name);
    return ((struct mtd_info *)0);
  } else {
  }
  concat->subdev = (struct mtd_info **)concat + 1U;
  concat->mtd.type = (*subdev)->type;
  concat->mtd.flags = (*subdev)->flags;
  concat->mtd.size = (*subdev)->size;
  concat->mtd.erasesize = (*subdev)->erasesize;
  concat->mtd.writesize = (*subdev)->writesize;
  i = 0;
  goto ldv_34367;
  ldv_34366: ;
  if ((uint32_t )max_writebufsize < (*(subdev + (unsigned long )i))->writebufsize) {
    max_writebufsize = (int )(*(subdev + (unsigned long )i))->writebufsize;
  } else {
  }
  i = i + 1;
  ldv_34367: ;
  if (i < num_devs) {
    goto ldv_34366;
  } else {
  }
  concat->mtd.writebufsize = (uint32_t )max_writebufsize;
  concat->mtd.subpage_sft = (*subdev)->subpage_sft;
  concat->mtd.oobsize = (*subdev)->oobsize;
  concat->mtd.oobavail = (*subdev)->oobavail;
  if ((unsigned long )(*subdev)->_writev != (unsigned long )((int (*)(struct mtd_info * ,
                                                                      struct kvec const * ,
                                                                      unsigned long ,
                                                                      loff_t , size_t * ))0)) {
    concat->mtd._writev = & concat_writev;
  } else {
  }
  if ((unsigned long )(*subdev)->_read_oob != (unsigned long )((int (*)(struct mtd_info * ,
                                                                        loff_t ,
                                                                        struct mtd_oob_ops * ))0)) {
    concat->mtd._read_oob = & concat_read_oob;
  } else {
  }
  if ((unsigned long )(*subdev)->_write_oob != (unsigned long )((int (*)(struct mtd_info * ,
                                                                         loff_t ,
                                                                         struct mtd_oob_ops * ))0)) {
    concat->mtd._write_oob = & concat_write_oob;
  } else {
  }
  if ((unsigned long )(*subdev)->_block_isbad != (unsigned long )((int (*)(struct mtd_info * ,
                                                                           loff_t ))0)) {
    concat->mtd._block_isbad = & concat_block_isbad;
  } else {
  }
  if ((unsigned long )(*subdev)->_block_markbad != (unsigned long )((int (*)(struct mtd_info * ,
                                                                             loff_t ))0)) {
    concat->mtd._block_markbad = & concat_block_markbad;
  } else {
  }
  concat->mtd.ecc_stats.badblocks = (*subdev)->ecc_stats.badblocks;
  *(concat->subdev) = *subdev;
  i = 1;
  goto ldv_34370;
  ldv_34369: ;
  if ((int )concat->mtd.type != (int )(*(subdev + (unsigned long )i))->type) {
    kfree((void const *)concat);
    printk("Incompatible device type on \"%s\"\n", (*(subdev + (unsigned long )i))->name);
    return ((struct mtd_info *)0);
  } else {
  }
  if (concat->mtd.flags != (*(subdev + (unsigned long )i))->flags) {
    if (((concat->mtd.flags ^ (*(subdev + (unsigned long )i))->flags) & 4294966271U) != 0U) {
      kfree((void const *)concat);
      printk("Incompatible device flags on \"%s\"\n", (*(subdev + (unsigned long )i))->name);
      return ((struct mtd_info *)0);
    } else {
      concat->mtd.flags = concat->mtd.flags | ((*(subdev + (unsigned long )i))->flags & 1024U);
    }
  } else {
  }
  concat->mtd.size = concat->mtd.size + (*(subdev + (unsigned long )i))->size;
  concat->mtd.ecc_stats.badblocks = concat->mtd.ecc_stats.badblocks + (*(subdev + (unsigned long )i))->ecc_stats.badblocks;
  if ((((concat->mtd.writesize != (*(subdev + (unsigned long )i))->writesize || concat->mtd.subpage_sft != (*(subdev + (unsigned long )i))->subpage_sft) || concat->mtd.oobsize != (*(subdev + (unsigned long )i))->oobsize) || ((unsigned long )concat->mtd._read_oob == (unsigned long )((int (*)(struct mtd_info * ,
                                                                                                                                                                                                                                                                                                    loff_t ,
                                                                                                                                                                                                                                                                                                    struct mtd_oob_ops * ))0)) ^ ((unsigned long )(*(subdev + (unsigned long )i))->_read_oob == (unsigned long )((int (*)(struct mtd_info * ,
                                                                                                                                                                                                                                                                                                                                                                                                                          loff_t ,
                                                                                                                                                                                                                                                                                                                                                                                                                          struct mtd_oob_ops * ))0))) || ((unsigned long )concat->mtd._write_oob == (unsigned long )((int (*)(struct mtd_info * ,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              loff_t ,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              struct mtd_oob_ops * ))0)) ^ ((unsigned long )(*(subdev + (unsigned long )i))->_write_oob == (unsigned long )((int (*)(struct mtd_info * ,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     loff_t ,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     struct mtd_oob_ops * ))0))) {
    kfree((void const *)concat);
    printk("Incompatible OOB or ECC data on \"%s\"\n", (*(subdev + (unsigned long )i))->name);
    return ((struct mtd_info *)0);
  } else {
  }
  *(concat->subdev + (unsigned long )i) = *(subdev + (unsigned long )i);
  i = i + 1;
  ldv_34370: ;
  if (i < num_devs) {
    goto ldv_34369;
  } else {
  }
  concat->mtd.ecclayout = (*subdev)->ecclayout;
  concat->num_subdev = num_devs;
  concat->mtd.name = name;
  concat->mtd._erase = & concat_erase;
  concat->mtd._read = & concat_read;
  concat->mtd._write = & concat_write;
  concat->mtd._sync = & concat_sync;
  concat->mtd._lock = & concat_lock;
  concat->mtd._unlock = & concat_unlock;
  concat->mtd._suspend = & concat_suspend;
  concat->mtd._resume = & concat_resume;
  concat->mtd._get_unmapped_area = & concat_get_unmapped_area;
  curr_erasesize = (*subdev)->erasesize;
  max_erasesize = curr_erasesize;
  num_erase_region = 1;
  i = 0;
  goto ldv_34377;
  ldv_34376: ;
  if ((*(subdev + (unsigned long )i))->numeraseregions == 0) {
    if ((*(subdev + (unsigned long )i))->erasesize != curr_erasesize) {
      num_erase_region = num_erase_region + 1;
      curr_erasesize = (*(subdev + (unsigned long )i))->erasesize;
      if (curr_erasesize > max_erasesize) {
        max_erasesize = curr_erasesize;
      } else {
      }
    } else {
    }
  } else {
    j = 0;
    goto ldv_34374;
    ldv_34373: ;
    if (((*(subdev + (unsigned long )i))->eraseregions + (unsigned long )j)->erasesize != curr_erasesize) {
      num_erase_region = num_erase_region + 1;
      curr_erasesize = ((*(subdev + (unsigned long )i))->eraseregions + (unsigned long )j)->erasesize;
      if (curr_erasesize > max_erasesize) {
        max_erasesize = curr_erasesize;
      } else {
      }
    } else {
    }
    j = j + 1;
    ldv_34374: ;
    if ((*(subdev + (unsigned long )i))->numeraseregions > j) {
      goto ldv_34373;
    } else {
    }
  }
  i = i + 1;
  ldv_34377: ;
  if (i < num_devs) {
    goto ldv_34376;
  } else {
  }
  if (num_erase_region == 1) {
    concat->mtd.erasesize = curr_erasesize;
    concat->mtd.numeraseregions = 0;
  } else {
    concat->mtd.erasesize = max_erasesize;
    concat->mtd.numeraseregions = num_erase_region;
    tmp___0 = kmalloc((unsigned long )num_erase_region * 24UL, 208U);
    erase_region_p = (struct mtd_erase_region_info *)tmp___0;
    concat->mtd.eraseregions = erase_region_p;
    if ((unsigned long )erase_region_p == (unsigned long )((struct mtd_erase_region_info *)0)) {
      kfree((void const *)concat);
      printk("memory allocation error while creating erase region list for device \"%s\"\n",
             name);
      return ((struct mtd_info *)0);
    } else {
    }
    curr_erasesize = (*subdev)->erasesize;
    position = 0ULL;
    begin = position;
    i = 0;
    goto ldv_34394;
    ldv_34393: ;
    if ((*(subdev + (unsigned long )i))->numeraseregions == 0) {
      if ((*(subdev + (unsigned long )i))->erasesize != curr_erasesize) {
        erase_region_p->offset = begin;
        erase_region_p->erasesize = curr_erasesize;
        tmp64 = position - begin;
        __base = curr_erasesize;
        __rem = (uint32_t )(tmp64 % (uint64_t )__base);
        tmp64 = tmp64 / (uint64_t )__base;
        erase_region_p->numblocks = (uint32_t )tmp64;
        begin = position;
        curr_erasesize = (*(subdev + (unsigned long )i))->erasesize;
        erase_region_p = erase_region_p + 1;
      } else {
      }
      position = (*(subdev + (unsigned long )i))->size + position;
    } else {
      j___0 = 0;
      goto ldv_34391;
      ldv_34390: ;
      if (((*(subdev + (unsigned long )i))->eraseregions + (unsigned long )j___0)->erasesize != curr_erasesize) {
        erase_region_p->offset = begin;
        erase_region_p->erasesize = curr_erasesize;
        tmp64 = position - begin;
        __base___0 = curr_erasesize;
        __rem___0 = (uint32_t )(tmp64 % (uint64_t )__base___0);
        tmp64 = tmp64 / (uint64_t )__base___0;
        erase_region_p->numblocks = (uint32_t )tmp64;
        begin = position;
        curr_erasesize = ((*(subdev + (unsigned long )i))->eraseregions + (unsigned long )j___0)->erasesize;
        erase_region_p = erase_region_p + 1;
      } else {
      }
      position = (unsigned long long )((*(subdev + (unsigned long )i))->eraseregions + (unsigned long )j___0)->numblocks * (unsigned long long )curr_erasesize + position;
      j___0 = j___0 + 1;
      ldv_34391: ;
      if ((*(subdev + (unsigned long )i))->numeraseregions > j___0) {
        goto ldv_34390;
      } else {
      }
    }
    i = i + 1;
    ldv_34394: ;
    if (i < num_devs) {
      goto ldv_34393;
    } else {
    }
    erase_region_p->offset = begin;
    erase_region_p->erasesize = curr_erasesize;
    tmp64 = position - begin;
    __base___1 = curr_erasesize;
    __rem___1 = (uint32_t )(tmp64 % (uint64_t )__base___1);
    tmp64 = tmp64 / (uint64_t )__base___1;
    erase_region_p->numblocks = (uint32_t )tmp64;
  }
  return (& concat->mtd);
}
}
void mtd_concat_destroy(struct mtd_info *mtd )
{
  struct mtd_concat *concat ;
  {
  concat = (struct mtd_concat *)mtd;
  if (concat->mtd.numeraseregions != 0) {
    kfree((void const *)concat->mtd.eraseregions);
  } else {
  }
  kfree((void const *)concat);
  return;
}
}
static char const __kstrtab_mtd_concat_create[18U] =
  { 'm', 't', 'd', '_',
        'c', 'o', 'n', 'c',
        'a', 't', '_', 'c',
        'r', 'e', 'a', 't',
        'e', '\000'};
struct kernel_symbol const __ksymtab_mtd_concat_create ;
struct kernel_symbol const __ksymtab_mtd_concat_create = {(unsigned long )(& mtd_concat_create), (char const *)(& __kstrtab_mtd_concat_create)};
static char const __kstrtab_mtd_concat_destroy[19U] =
  { 'm', 't', 'd', '_',
        'c', 'o', 'n', 'c',
        'a', 't', '_', 'd',
        'e', 's', 't', 'r',
        'o', 'y', '\000'};
struct kernel_symbol const __ksymtab_mtd_concat_destroy ;
struct kernel_symbol const __ksymtab_mtd_concat_destroy = {(unsigned long )(& mtd_concat_destroy), (char const *)(& __kstrtab_mtd_concat_destroy)};
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern char *kstrdup(char const * , gfp_t ) ;
__inline static void *ERR_PTR(long error ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  return;
}
}
extern int __request_module(bool , char const * , ...) ;
extern int sysfs_create_files(struct kobject * , struct attribute const ** ) ;
extern void sysfs_remove_files(struct kobject * , struct attribute const ** ) ;
bool ldv_try_module_get_24(struct module *ldv_func_arg1 ) ;
void ldv_module_put_25(struct module *ldv_func_arg1 ) ;
__inline static uint32_t mtd_div_by_eb(uint64_t sz , struct mtd_info *mtd )
{
  uint32_t __base ;
  uint32_t __rem ;
  {
  if (mtd->erasesize_shift != 0U) {
    return ((uint32_t )(sz >> (int )mtd->erasesize_shift));
  } else {
  }
  __base = mtd->erasesize;
  __rem = (uint32_t )(sz % (uint64_t )__base);
  sz = sz / (uint64_t )__base;
  return ((uint32_t )sz);
}
}
__inline static uint32_t mtd_mod_by_eb(uint64_t sz , struct mtd_info *mtd )
{
  uint32_t __base ;
  uint32_t __rem ;
  {
  if (mtd->erasesize_shift != 0U) {
    return (mtd->erasesize_mask & (uint32_t )sz);
  } else {
  }
  __base = mtd->erasesize;
  __rem = (uint32_t )(sz % (uint64_t )__base);
  sz = sz / (uint64_t )__base;
  return (__rem);
}
}
__inline static uint32_t mtd_div_by_ws(uint64_t sz , struct mtd_info *mtd )
{
  uint32_t __base ;
  uint32_t __rem ;
  {
  if (mtd->writesize_shift != 0U) {
    return ((uint32_t )(sz >> (int )mtd->writesize_shift));
  } else {
  }
  __base = mtd->writesize;
  __rem = (uint32_t )(sz % (uint64_t )__base);
  sz = sz / (uint64_t )__base;
  return ((uint32_t )sz);
}
}
void register_mtd_parser(struct mtd_part_parser *p ) ;
void deregister_mtd_parser(struct mtd_part_parser *p ) ;
int mtd_is_partition(struct mtd_info const *mtd ) ;
int mtd_add_partition(struct mtd_info *master , char const *name , long long offset ,
                      long long length ) ;
int mtd_del_partition(struct mtd_info *master , int partno ) ;
uint64_t mtd_get_device_size(struct mtd_info const *mtd ) ;
static struct list_head mtd_partitions = {& mtd_partitions, & mtd_partitions};
static struct mutex mtd_partitions_mutex = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "mtd_partitions_mutex.wait_lock",
                                                          0, 0UL}}}}, {& mtd_partitions_mutex.wait_list,
                                                                       & mtd_partitions_mutex.wait_list},
    0, (void *)(& mtd_partitions_mutex), {0, {0, 0}, "mtd_partitions_mutex", 0, 0UL}};
static int part_read(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
                     u_char *buf )
{
  struct mtd_part *part ;
  struct mtd_ecc_stats stats ;
  int res ;
  int tmp ;
  long tmp___0 ;
  {
  part = (struct mtd_part *)mtd;
  stats = (part->master)->ecc_stats;
  res = (*((part->master)->_read))(part->master, (loff_t )(part->offset + (unsigned long long )from),
                                   len, retlen, buf);
  tmp = mtd_is_eccerr(res);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  if (tmp___0 != 0L) {
    mtd->ecc_stats.failed = mtd->ecc_stats.failed + ((part->master)->ecc_stats.failed - stats.failed);
  } else {
    mtd->ecc_stats.corrected = mtd->ecc_stats.corrected + ((part->master)->ecc_stats.corrected - stats.corrected);
  }
  return (res);
}
}
static int part_point(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
                      void **virt , resource_size_t *phys )
{
  struct mtd_part *part ;
  int tmp ;
  {
  part = (struct mtd_part *)mtd;
  tmp = (*((part->master)->_point))(part->master, (loff_t )(part->offset + (unsigned long long )from),
                                    len, retlen, virt, phys);
  return (tmp);
}
}
static int part_unpoint(struct mtd_info *mtd , loff_t from , size_t len )
{
  struct mtd_part *part ;
  int tmp ;
  {
  part = (struct mtd_part *)mtd;
  tmp = (*((part->master)->_unpoint))(part->master, (loff_t )(part->offset + (unsigned long long )from),
                                      len);
  return (tmp);
}
}
static unsigned long part_get_unmapped_area(struct mtd_info *mtd , unsigned long len ,
                                            unsigned long offset , unsigned long flags )
{
  struct mtd_part *part ;
  unsigned long tmp ;
  {
  part = (struct mtd_part *)mtd;
  offset = (unsigned long )(part->offset + (unsigned long long )offset);
  tmp = (*((part->master)->_get_unmapped_area))(part->master, len, offset, flags);
  return (tmp);
}
}
static int part_read_oob(struct mtd_info *mtd , loff_t from , struct mtd_oob_ops *ops )
{
  struct mtd_part *part ;
  int res ;
  size_t len ;
  size_t pages ;
  uint32_t tmp ;
  uint32_t tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  {
  part = (struct mtd_part *)mtd;
  if ((unsigned long long )from >= mtd->size) {
    return (-22);
  } else {
  }
  if ((unsigned long )ops->datbuf != (unsigned long )((uint8_t *)0U) && (unsigned long long )ops->len + (unsigned long long )from > mtd->size) {
    return (-22);
  } else {
  }
  if ((unsigned long )ops->oobbuf != (unsigned long )((uint8_t *)0U)) {
    if (ops->mode == 1U) {
      len = (size_t )mtd->oobavail;
    } else {
      len = (size_t )mtd->oobsize;
    }
    tmp = mtd_div_by_ws(mtd->size, mtd);
    pages = (size_t )tmp;
    tmp___0 = mtd_div_by_ws((uint64_t )from, mtd);
    pages = pages - (size_t )tmp___0;
    if ((size_t )ops->ooboffs + ops->ooblen > pages * len) {
      return (-22);
    } else {
    }
  } else {
  }
  res = (*((part->master)->_read_oob))(part->master, (loff_t )(part->offset + (unsigned long long )from),
                                       ops);
  tmp___3 = ldv__builtin_expect(res != 0, 0L);
  if (tmp___3 != 0L) {
    tmp___1 = mtd_is_bitflip(res);
    if (tmp___1 != 0) {
      mtd->ecc_stats.corrected = mtd->ecc_stats.corrected + 1U;
    } else {
    }
    tmp___2 = mtd_is_eccerr(res);
    if (tmp___2 != 0) {
      mtd->ecc_stats.failed = mtd->ecc_stats.failed + 1U;
    } else {
    }
  } else {
  }
  return (res);
}
}
static int part_read_user_prot_reg(struct mtd_info *mtd , loff_t from , size_t len ,
                                   size_t *retlen , u_char *buf )
{
  struct mtd_part *part ;
  int tmp ;
  {
  part = (struct mtd_part *)mtd;
  tmp = (*((part->master)->_read_user_prot_reg))(part->master, from, len, retlen,
                                                 buf);
  return (tmp);
}
}
static int part_get_user_prot_info(struct mtd_info *mtd , size_t len , size_t *retlen ,
                                   struct otp_info *buf )
{
  struct mtd_part *part ;
  int tmp ;
  {
  part = (struct mtd_part *)mtd;
  tmp = (*((part->master)->_get_user_prot_info))(part->master, len, retlen, buf);
  return (tmp);
}
}
static int part_read_fact_prot_reg(struct mtd_info *mtd , loff_t from , size_t len ,
                                   size_t *retlen , u_char *buf )
{
  struct mtd_part *part ;
  int tmp ;
  {
  part = (struct mtd_part *)mtd;
  tmp = (*((part->master)->_read_fact_prot_reg))(part->master, from, len, retlen,
                                                 buf);
  return (tmp);
}
}
static int part_get_fact_prot_info(struct mtd_info *mtd , size_t len , size_t *retlen ,
                                   struct otp_info *buf )
{
  struct mtd_part *part ;
  int tmp ;
  {
  part = (struct mtd_part *)mtd;
  tmp = (*((part->master)->_get_fact_prot_info))(part->master, len, retlen, buf);
  return (tmp);
}
}
static int part_write(struct mtd_info *mtd , loff_t to , size_t len , size_t *retlen ,
                      u_char const *buf )
{
  struct mtd_part *part ;
  int tmp ;
  {
  part = (struct mtd_part *)mtd;
  tmp = (*((part->master)->_write))(part->master, (loff_t )(part->offset + (unsigned long long )to),
                                    len, retlen, buf);
  return (tmp);
}
}
static int part_panic_write(struct mtd_info *mtd , loff_t to , size_t len , size_t *retlen ,
                            u_char const *buf )
{
  struct mtd_part *part ;
  int tmp ;
  {
  part = (struct mtd_part *)mtd;
  tmp = (*((part->master)->_panic_write))(part->master, (loff_t )(part->offset + (unsigned long long )to),
                                          len, retlen, buf);
  return (tmp);
}
}
static int part_write_oob(struct mtd_info *mtd , loff_t to , struct mtd_oob_ops *ops )
{
  struct mtd_part *part ;
  int tmp ;
  {
  part = (struct mtd_part *)mtd;
  if ((unsigned long long )to >= mtd->size) {
    return (-22);
  } else {
  }
  if ((unsigned long )ops->datbuf != (unsigned long )((uint8_t *)0U) && (unsigned long long )ops->len + (unsigned long long )to > mtd->size) {
    return (-22);
  } else {
  }
  tmp = (*((part->master)->_write_oob))(part->master, (loff_t )(part->offset + (unsigned long long )to),
                                        ops);
  return (tmp);
}
}
static int part_write_user_prot_reg(struct mtd_info *mtd , loff_t from , size_t len ,
                                    size_t *retlen , u_char *buf )
{
  struct mtd_part *part ;
  int tmp ;
  {
  part = (struct mtd_part *)mtd;
  tmp = (*((part->master)->_write_user_prot_reg))(part->master, from, len, retlen,
                                                  buf);
  return (tmp);
}
}
static int part_lock_user_prot_reg(struct mtd_info *mtd , loff_t from , size_t len )
{
  struct mtd_part *part ;
  int tmp ;
  {
  part = (struct mtd_part *)mtd;
  tmp = (*((part->master)->_lock_user_prot_reg))(part->master, from, len);
  return (tmp);
}
}
static int part_writev(struct mtd_info *mtd , struct kvec const *vecs , unsigned long count ,
                       loff_t to , size_t *retlen )
{
  struct mtd_part *part ;
  int tmp ;
  {
  part = (struct mtd_part *)mtd;
  tmp = (*((part->master)->_writev))(part->master, vecs, count, (loff_t )(part->offset + (unsigned long long )to),
                                     retlen);
  return (tmp);
}
}
static int part_erase(struct mtd_info *mtd , struct erase_info *instr )
{
  struct mtd_part *part ;
  int ret ;
  {
  part = (struct mtd_part *)mtd;
  instr->addr = instr->addr + part->offset;
  ret = (*((part->master)->_erase))(part->master, instr);
  if (ret != 0) {
    if (instr->fail_addr != 0xffffffffffffffffULL) {
      instr->fail_addr = instr->fail_addr - part->offset;
    } else {
    }
    instr->addr = instr->addr - part->offset;
  } else {
  }
  return (ret);
}
}
void mtd_erase_callback(struct erase_info *instr )
{
  struct mtd_part *part ;
  {
  if ((unsigned long )(instr->mtd)->_erase == (unsigned long )(& part_erase)) {
    part = (struct mtd_part *)instr->mtd;
    if (instr->fail_addr != 0xffffffffffffffffULL) {
      instr->fail_addr = instr->fail_addr - part->offset;
    } else {
    }
    instr->addr = instr->addr - part->offset;
  } else {
  }
  if ((unsigned long )instr->callback != (unsigned long )((void (*)(struct erase_info * ))0)) {
    (*(instr->callback))(instr);
  } else {
  }
  return;
}
}
static char const __kstrtab_mtd_erase_callback[19U] =
  { 'm', 't', 'd', '_',
        'e', 'r', 'a', 's',
        'e', '_', 'c', 'a',
        'l', 'l', 'b', 'a',
        'c', 'k', '\000'};
struct kernel_symbol const __ksymtab_mtd_erase_callback ;
struct kernel_symbol const __ksymtab_mtd_erase_callback = {(unsigned long )(& mtd_erase_callback), (char const *)(& __kstrtab_mtd_erase_callback)};
static int part_lock(struct mtd_info *mtd , loff_t ofs , uint64_t len )
{
  struct mtd_part *part ;
  int tmp ;
  {
  part = (struct mtd_part *)mtd;
  tmp = (*((part->master)->_lock))(part->master, (loff_t )(part->offset + (unsigned long long )ofs),
                                   len);
  return (tmp);
}
}
static int part_unlock(struct mtd_info *mtd , loff_t ofs , uint64_t len )
{
  struct mtd_part *part ;
  int tmp ;
  {
  part = (struct mtd_part *)mtd;
  tmp = (*((part->master)->_unlock))(part->master, (loff_t )(part->offset + (unsigned long long )ofs),
                                     len);
  return (tmp);
}
}
static int part_is_locked(struct mtd_info *mtd , loff_t ofs , uint64_t len )
{
  struct mtd_part *part ;
  int tmp ;
  {
  part = (struct mtd_part *)mtd;
  tmp = (*((part->master)->_is_locked))(part->master, (loff_t )(part->offset + (unsigned long long )ofs),
                                        len);
  return (tmp);
}
}
static void part_sync(struct mtd_info *mtd )
{
  struct mtd_part *part ;
  {
  part = (struct mtd_part *)mtd;
  (*((part->master)->_sync))(part->master);
  return;
}
}
static int part_suspend(struct mtd_info *mtd )
{
  struct mtd_part *part ;
  int tmp ;
  {
  part = (struct mtd_part *)mtd;
  tmp = (*((part->master)->_suspend))(part->master);
  return (tmp);
}
}
static void part_resume(struct mtd_info *mtd )
{
  struct mtd_part *part ;
  {
  part = (struct mtd_part *)mtd;
  (*((part->master)->_resume))(part->master);
  return;
}
}
static int part_block_isreserved(struct mtd_info *mtd , loff_t ofs )
{
  struct mtd_part *part ;
  int tmp ;
  {
  part = (struct mtd_part *)mtd;
  ofs = (loff_t )(part->offset + (unsigned long long )ofs);
  tmp = (*((part->master)->_block_isreserved))(part->master, ofs);
  return (tmp);
}
}
static int part_block_isbad(struct mtd_info *mtd , loff_t ofs )
{
  struct mtd_part *part ;
  int tmp ;
  {
  part = (struct mtd_part *)mtd;
  ofs = (loff_t )(part->offset + (unsigned long long )ofs);
  tmp = (*((part->master)->_block_isbad))(part->master, ofs);
  return (tmp);
}
}
static int part_block_markbad(struct mtd_info *mtd , loff_t ofs )
{
  struct mtd_part *part ;
  int res ;
  {
  part = (struct mtd_part *)mtd;
  ofs = (loff_t )(part->offset + (unsigned long long )ofs);
  res = (*((part->master)->_block_markbad))(part->master, ofs);
  if (res == 0) {
    mtd->ecc_stats.badblocks = mtd->ecc_stats.badblocks + 1U;
  } else {
  }
  return (res);
}
}
__inline static void free_partition(struct mtd_part *p )
{
  {
  kfree((void const *)p->mtd.name);
  kfree((void const *)p);
  return;
}
}
int del_mtd_partitions(struct mtd_info *master )
{
  struct mtd_part *slave ;
  struct mtd_part *next ;
  int ret ;
  int err ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  err = 0;
  mutex_lock_nested(& mtd_partitions_mutex, 0U);
  __mptr = (struct list_head const *)mtd_partitions.next;
  slave = (struct mtd_part *)__mptr + 0xfffffffffffff8d0UL;
  __mptr___0 = (struct list_head const *)slave->list.next;
  next = (struct mtd_part *)__mptr___0 + 0xfffffffffffff8d0UL;
  goto ldv_21940;
  ldv_21939: ;
  if ((unsigned long )slave->master == (unsigned long )master) {
    ret = del_mtd_device(& slave->mtd);
    if (ret < 0) {
      err = ret;
      goto ldv_21938;
    } else {
    }
    list_del(& slave->list);
    free_partition(slave);
  } else {
  }
  ldv_21938:
  slave = next;
  __mptr___1 = (struct list_head const *)next->list.next;
  next = (struct mtd_part *)__mptr___1 + 0xfffffffffffff8d0UL;
  ldv_21940: ;
  if ((unsigned long )(& slave->list) != (unsigned long )(& mtd_partitions)) {
    goto ldv_21939;
  } else {
  }
  mutex_unlock(& mtd_partitions_mutex);
  return (err);
}
}
static struct mtd_part *allocate_partition(struct mtd_info *master , struct mtd_partition const *part ,
                                           int partno , uint64_t cur_offset )
{
  struct mtd_part *slave ;
  char *name ;
  void *tmp ;
  void *tmp___0 ;
  uint32_t tmp___1 ;
  uint32_t tmp___2 ;
  int i ;
  int max ;
  u64 end ;
  struct mtd_erase_region_info *regions ;
  long tmp___3 ;
  uint32_t tmp___4 ;
  uint32_t tmp___5 ;
  uint64_t offs ;
  int tmp___6 ;
  int tmp___7 ;
  {
  tmp = kzalloc(1856UL, 208U);
  slave = (struct mtd_part *)tmp;
  name = kstrdup(part->name, 208U);
  if ((unsigned long )name == (unsigned long )((char *)0) || (unsigned long )slave == (unsigned long )((struct mtd_part *)0)) {
    printk("\vmemory allocation error while creating partitions for \"%s\"\n", master->name);
    kfree((void const *)name);
    kfree((void const *)slave);
    tmp___0 = ERR_PTR(-12L);
    return ((struct mtd_part *)tmp___0);
  } else {
  }
  slave->mtd.type = master->type;
  slave->mtd.flags = master->flags & (uint32_t )(~ part->mask_flags);
  slave->mtd.size = part->size;
  slave->mtd.writesize = master->writesize;
  slave->mtd.writebufsize = master->writebufsize;
  slave->mtd.oobsize = master->oobsize;
  slave->mtd.oobavail = master->oobavail;
  slave->mtd.subpage_sft = master->subpage_sft;
  slave->mtd.name = (char const *)name;
  slave->mtd.owner = master->owner;
  slave->mtd.dev.parent = & master->dev;
  slave->mtd._read = & part_read;
  slave->mtd._write = & part_write;
  if ((unsigned long )master->_panic_write != (unsigned long )((int (*)(struct mtd_info * ,
                                                                        loff_t ,
                                                                        size_t ,
                                                                        size_t * ,
                                                                        u_char const * ))0)) {
    slave->mtd._panic_write = & part_panic_write;
  } else {
  }
  if ((unsigned long )master->_point != (unsigned long )((int (*)(struct mtd_info * ,
                                                                  loff_t , size_t ,
                                                                  size_t * , void ** ,
                                                                  resource_size_t * ))0) && (unsigned long )master->_unpoint != (unsigned long )((int (*)(struct mtd_info * ,
                                                                                                                                                          loff_t ,
                                                                                                                                                          size_t ))0)) {
    slave->mtd._point = & part_point;
    slave->mtd._unpoint = & part_unpoint;
  } else {
  }
  if ((unsigned long )master->_get_unmapped_area != (unsigned long )((unsigned long (*)(struct mtd_info * ,
                                                                                        unsigned long ,
                                                                                        unsigned long ,
                                                                                        unsigned long ))0)) {
    slave->mtd._get_unmapped_area = & part_get_unmapped_area;
  } else {
  }
  if ((unsigned long )master->_read_oob != (unsigned long )((int (*)(struct mtd_info * ,
                                                                     loff_t , struct mtd_oob_ops * ))0)) {
    slave->mtd._read_oob = & part_read_oob;
  } else {
  }
  if ((unsigned long )master->_write_oob != (unsigned long )((int (*)(struct mtd_info * ,
                                                                      loff_t , struct mtd_oob_ops * ))0)) {
    slave->mtd._write_oob = & part_write_oob;
  } else {
  }
  if ((unsigned long )master->_read_user_prot_reg != (unsigned long )((int (*)(struct mtd_info * ,
                                                                               loff_t ,
                                                                               size_t ,
                                                                               size_t * ,
                                                                               u_char * ))0)) {
    slave->mtd._read_user_prot_reg = & part_read_user_prot_reg;
  } else {
  }
  if ((unsigned long )master->_read_fact_prot_reg != (unsigned long )((int (*)(struct mtd_info * ,
                                                                               loff_t ,
                                                                               size_t ,
                                                                               size_t * ,
                                                                               u_char * ))0)) {
    slave->mtd._read_fact_prot_reg = & part_read_fact_prot_reg;
  } else {
  }
  if ((unsigned long )master->_write_user_prot_reg != (unsigned long )((int (*)(struct mtd_info * ,
                                                                                loff_t ,
                                                                                size_t ,
                                                                                size_t * ,
                                                                                u_char * ))0)) {
    slave->mtd._write_user_prot_reg = & part_write_user_prot_reg;
  } else {
  }
  if ((unsigned long )master->_lock_user_prot_reg != (unsigned long )((int (*)(struct mtd_info * ,
                                                                               loff_t ,
                                                                               size_t ))0)) {
    slave->mtd._lock_user_prot_reg = & part_lock_user_prot_reg;
  } else {
  }
  if ((unsigned long )master->_get_user_prot_info != (unsigned long )((int (*)(struct mtd_info * ,
                                                                               size_t ,
                                                                               size_t * ,
                                                                               struct otp_info * ))0)) {
    slave->mtd._get_user_prot_info = & part_get_user_prot_info;
  } else {
  }
  if ((unsigned long )master->_get_fact_prot_info != (unsigned long )((int (*)(struct mtd_info * ,
                                                                               size_t ,
                                                                               size_t * ,
                                                                               struct otp_info * ))0)) {
    slave->mtd._get_fact_prot_info = & part_get_fact_prot_info;
  } else {
  }
  if ((unsigned long )master->_sync != (unsigned long )((void (*)(struct mtd_info * ))0)) {
    slave->mtd._sync = & part_sync;
  } else {
  }
  if (((partno == 0 && (unsigned long )master->dev.class == (unsigned long )((struct class *)0)) && (unsigned long )master->_suspend != (unsigned long )((int (*)(struct mtd_info * ))0)) && (unsigned long )master->_resume != (unsigned long )((void (*)(struct mtd_info * ))0)) {
    slave->mtd._suspend = & part_suspend;
    slave->mtd._resume = & part_resume;
  } else {
  }
  if ((unsigned long )master->_writev != (unsigned long )((int (*)(struct mtd_info * ,
                                                                   struct kvec const * ,
                                                                   unsigned long ,
                                                                   loff_t , size_t * ))0)) {
    slave->mtd._writev = & part_writev;
  } else {
  }
  if ((unsigned long )master->_lock != (unsigned long )((int (*)(struct mtd_info * ,
                                                                 loff_t , uint64_t ))0)) {
    slave->mtd._lock = & part_lock;
  } else {
  }
  if ((unsigned long )master->_unlock != (unsigned long )((int (*)(struct mtd_info * ,
                                                                   loff_t , uint64_t ))0)) {
    slave->mtd._unlock = & part_unlock;
  } else {
  }
  if ((unsigned long )master->_is_locked != (unsigned long )((int (*)(struct mtd_info * ,
                                                                      loff_t , uint64_t ))0)) {
    slave->mtd._is_locked = & part_is_locked;
  } else {
  }
  if ((unsigned long )master->_block_isreserved != (unsigned long )((int (*)(struct mtd_info * ,
                                                                             loff_t ))0)) {
    slave->mtd._block_isreserved = & part_block_isreserved;
  } else {
  }
  if ((unsigned long )master->_block_isbad != (unsigned long )((int (*)(struct mtd_info * ,
                                                                        loff_t ))0)) {
    slave->mtd._block_isbad = & part_block_isbad;
  } else {
  }
  if ((unsigned long )master->_block_markbad != (unsigned long )((int (*)(struct mtd_info * ,
                                                                          loff_t ))0)) {
    slave->mtd._block_markbad = & part_block_markbad;
  } else {
  }
  slave->mtd._erase = & part_erase;
  slave->master = master;
  slave->offset = part->offset;
  if (slave->offset == 0xffffffffffffffffULL) {
    slave->offset = cur_offset;
  } else {
  }
  if (slave->offset == 0xfffffffffffffffeULL) {
    slave->offset = cur_offset;
    tmp___2 = mtd_mod_by_eb(cur_offset, master);
    if (tmp___2 != 0U) {
      tmp___1 = mtd_div_by_eb(cur_offset, master);
      slave->offset = (uint64_t )((tmp___1 + 1U) * master->erasesize);
      printk("\rMoving partition %d: 0x%012llx -> 0x%012llx\n", partno, cur_offset,
             slave->offset);
    } else {
    }
  } else {
  }
  if (slave->offset == 0xfffffffffffffffdULL) {
    slave->offset = cur_offset;
    if (master->size - slave->offset >= slave->mtd.size) {
      slave->mtd.size = (master->size - slave->offset) - slave->mtd.size;
    } else {
      printk("\vmtd partition \"%s\" doesn\'t have enough space: %#llx < %#llx, disabled\n",
             part->name, master->size - slave->offset, slave->mtd.size);
      goto out_register;
    }
  } else {
  }
  if (slave->mtd.size == 0ULL) {
    slave->mtd.size = master->size - slave->offset;
  } else {
  }
  printk("hx%012llx-0x%012llx : \"%s\"\n", slave->offset, slave->offset + slave->mtd.size,
         slave->mtd.name);
  if (slave->offset >= master->size) {
    slave->offset = 0ULL;
    slave->mtd.size = 0ULL;
    printk("\vmtd: partition \"%s\" is out of reach -- disabled\n", part->name);
    goto out_register;
  } else {
  }
  if (slave->offset + slave->mtd.size > master->size) {
    slave->mtd.size = master->size - slave->offset;
    printk("\fmtd: partition \"%s\" extends beyond the end of device \"%s\" -- size truncated to %#llx\n",
           part->name, master->name, slave->mtd.size);
  } else {
  }
  if (master->numeraseregions > 1) {
    max = master->numeraseregions;
    end = slave->offset + slave->mtd.size;
    regions = master->eraseregions;
    i = 0;
    goto ldv_21956;
    ldv_21955:
    i = i + 1;
    ldv_21956: ;
    if (i < max && (regions + (unsigned long )i)->offset <= slave->offset) {
      goto ldv_21955;
    } else {
    }
    if (i > 0) {
      i = i - 1;
    } else {
    }
    goto ldv_21959;
    ldv_21958: ;
    if (slave->mtd.erasesize < (regions + (unsigned long )i)->erasesize) {
      slave->mtd.erasesize = (regions + (unsigned long )i)->erasesize;
    } else {
    }
    i = i + 1;
    ldv_21959: ;
    if (i < max && (regions + (unsigned long )i)->offset < end) {
      goto ldv_21958;
    } else {
    }
    tmp___3 = ldv__builtin_expect(slave->mtd.erasesize == 0U, 0L);
    if (tmp___3 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdpart.c"),
                           "i" (514), "i" (12UL));
      ldv_21961: ;
      goto ldv_21961;
    } else {
    }
  } else {
    slave->mtd.erasesize = master->erasesize;
  }
  if ((slave->mtd.flags & 1024U) != 0U) {
    tmp___4 = mtd_mod_by_eb(slave->offset, & slave->mtd);
    if (tmp___4 != 0U) {
      slave->mtd.flags = slave->mtd.flags & 4294966271U;
      printk("\fmtd: partition \"%s\" doesn\'t start on an erase block boundary -- force read-only\n",
             part->name);
    } else {
    }
  } else {
  }
  if ((slave->mtd.flags & 1024U) != 0U) {
    tmp___5 = mtd_mod_by_eb(slave->mtd.size, & slave->mtd);
    if (tmp___5 != 0U) {
      slave->mtd.flags = slave->mtd.flags & 4294966271U;
      printk("\fmtd: partition \"%s\" doesn\'t end on an erase block -- force read-only\n",
             part->name);
    } else {
    }
  } else {
  }
  slave->mtd.ecclayout = master->ecclayout;
  slave->mtd.ecc_step_size = master->ecc_step_size;
  slave->mtd.ecc_strength = master->ecc_strength;
  slave->mtd.bitflip_threshold = master->bitflip_threshold;
  if ((unsigned long )master->_block_isbad != (unsigned long )((int (*)(struct mtd_info * ,
                                                                        loff_t ))0)) {
    offs = 0ULL;
    goto ldv_21964;
    ldv_21963:
    tmp___7 = mtd_block_isreserved(master, (loff_t )(slave->offset + offs));
    if (tmp___7 != 0) {
      slave->mtd.ecc_stats.bbtblocks = slave->mtd.ecc_stats.bbtblocks + 1U;
    } else {
      tmp___6 = mtd_block_isbad(master, (loff_t )(slave->offset + offs));
      if (tmp___6 != 0) {
        slave->mtd.ecc_stats.badblocks = slave->mtd.ecc_stats.badblocks + 1U;
      } else {
      }
    }
    offs = (uint64_t )slave->mtd.erasesize + offs;
    ldv_21964: ;
    if (slave->mtd.size > offs) {
      goto ldv_21963;
    } else {
    }
  } else {
  }
  out_register: ;
  return (slave);
}
}
static ssize_t mtd_partition_offset_show(struct device *dev , struct device_attribute *attr ,
                                         char *buf )
{
  struct mtd_info *mtd ;
  void *tmp ;
  struct mtd_part *part ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  mtd = (struct mtd_info *)tmp;
  part = (struct mtd_part *)mtd;
  tmp___0 = snprintf(buf, 4096UL, "%lld\n", part->offset);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_offset = {{"offset", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & mtd_partition_offset_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct attribute const *mtd_partition_attrs[2U] = { (struct attribute const *)(& dev_attr_offset.attr), (struct attribute const *)0};
static int mtd_add_partition_attrs(struct mtd_part *new )
{
  int ret ;
  int tmp ;
  {
  tmp = sysfs_create_files(& new->mtd.dev.kobj, (struct attribute const **)(& mtd_partition_attrs));
  ret = tmp;
  if (ret != 0) {
    printk("\fmtd: failed to create partition attrs, err=%d\n", ret);
  } else {
  }
  return (ret);
}
}
int mtd_add_partition(struct mtd_info *master , char const *name , long long offset ,
                      long long length )
{
  struct mtd_partition part ;
  struct mtd_part *new ;
  int ret ;
  long tmp ;
  bool tmp___0 ;
  {
  ret = 0;
  if (offset == -1LL || offset == -2LL) {
    return (-22);
  } else {
  }
  if (length == 0LL) {
    length = (long long )(master->size - (unsigned long long )offset);
  } else {
  }
  if (length <= 0LL) {
    return (-22);
  } else {
  }
  part.name = name;
  part.size = (uint64_t )length;
  part.offset = (uint64_t )offset;
  part.mask_flags = 0U;
  part.ecclayout = (struct nand_ecclayout *)0;
  new = allocate_partition(master, (struct mtd_partition const *)(& part), -1, (uint64_t )offset);
  tmp___0 = IS_ERR((void const *)new);
  if ((int )tmp___0) {
    tmp = PTR_ERR((void const *)new);
    return ((int )tmp);
  } else {
  }
  mutex_lock_nested(& mtd_partitions_mutex, 0U);
  list_add(& new->list, & mtd_partitions);
  mutex_unlock(& mtd_partitions_mutex);
  add_mtd_device(& new->mtd);
  mtd_add_partition_attrs(new);
  return (ret);
}
}
static char const __kstrtab_mtd_add_partition[18U] =
  { 'm', 't', 'd', '_',
        'a', 'd', 'd', '_',
        'p', 'a', 'r', 't',
        'i', 't', 'i', 'o',
        'n', '\000'};
struct kernel_symbol const __ksymtab_mtd_add_partition ;
struct kernel_symbol const __ksymtab_mtd_add_partition = {(unsigned long )(& mtd_add_partition), (char const *)(& __kstrtab_mtd_add_partition)};
int mtd_del_partition(struct mtd_info *master , int partno )
{
  struct mtd_part *slave ;
  struct mtd_part *next ;
  int ret ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  ret = -22;
  mutex_lock_nested(& mtd_partitions_mutex, 0U);
  __mptr = (struct list_head const *)mtd_partitions.next;
  slave = (struct mtd_part *)__mptr + 0xfffffffffffff8d0UL;
  __mptr___0 = (struct list_head const *)slave->list.next;
  next = (struct mtd_part *)__mptr___0 + 0xfffffffffffff8d0UL;
  goto ldv_22025;
  ldv_22024: ;
  if ((unsigned long )slave->master == (unsigned long )master && slave->mtd.index == partno) {
    sysfs_remove_files(& slave->mtd.dev.kobj, (struct attribute const **)(& mtd_partition_attrs));
    ret = del_mtd_device(& slave->mtd);
    if (ret < 0) {
      goto ldv_22023;
    } else {
    }
    list_del(& slave->list);
    free_partition(slave);
    goto ldv_22023;
  } else {
  }
  slave = next;
  __mptr___1 = (struct list_head const *)next->list.next;
  next = (struct mtd_part *)__mptr___1 + 0xfffffffffffff8d0UL;
  ldv_22025: ;
  if ((unsigned long )(& slave->list) != (unsigned long )(& mtd_partitions)) {
    goto ldv_22024;
  } else {
  }
  ldv_22023:
  mutex_unlock(& mtd_partitions_mutex);
  return (ret);
}
}
static char const __kstrtab_mtd_del_partition[18U] =
  { 'm', 't', 'd', '_',
        'd', 'e', 'l', '_',
        'p', 'a', 'r', 't',
        'i', 't', 'i', 'o',
        'n', '\000'};
struct kernel_symbol const __ksymtab_mtd_del_partition ;
struct kernel_symbol const __ksymtab_mtd_del_partition = {(unsigned long )(& mtd_del_partition), (char const *)(& __kstrtab_mtd_del_partition)};
int add_mtd_partitions(struct mtd_info *master , struct mtd_partition const *parts ,
                       int nbparts )
{
  struct mtd_part *slave ;
  uint64_t cur_offset ;
  int i ;
  long tmp ;
  bool tmp___0 ;
  {
  cur_offset = 0ULL;
  printk("\rCreating %d MTD partitions on \"%s\":\n", nbparts, master->name);
  i = 0;
  goto ldv_22043;
  ldv_22042:
  slave = allocate_partition(master, parts + (unsigned long )i, i, cur_offset);
  tmp___0 = IS_ERR((void const *)slave);
  if ((int )tmp___0) {
    tmp = PTR_ERR((void const *)slave);
    return ((int )tmp);
  } else {
  }
  mutex_lock_nested(& mtd_partitions_mutex, 0U);
  list_add(& slave->list, & mtd_partitions);
  mutex_unlock(& mtd_partitions_mutex);
  add_mtd_device(& slave->mtd);
  mtd_add_partition_attrs(slave);
  cur_offset = slave->offset + slave->mtd.size;
  i = i + 1;
  ldv_22043: ;
  if (i < nbparts) {
    goto ldv_22042;
  } else {
  }
  return (0);
}
}
static spinlock_t part_parser_lock = {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "part_parser_lock",
                                                    0, 0UL}}}};
static struct list_head part_parsers = {& part_parsers, & part_parsers};
static struct mtd_part_parser *get_partition_parser(char const *name )
{
  struct mtd_part_parser *p ;
  struct mtd_part_parser *ret ;
  struct list_head const *__mptr ;
  int tmp ;
  bool tmp___0 ;
  struct list_head const *__mptr___0 ;
  {
  ret = (struct mtd_part_parser *)0;
  spin_lock(& part_parser_lock);
  __mptr = (struct list_head const *)part_parsers.next;
  p = (struct mtd_part_parser *)__mptr;
  goto ldv_22059;
  ldv_22058:
  tmp = strcmp(p->name, name);
  if (tmp == 0) {
    tmp___0 = ldv_try_module_get_24(p->owner);
    if ((int )tmp___0) {
      ret = p;
      goto ldv_22057;
    } else {
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)p->list.next;
  p = (struct mtd_part_parser *)__mptr___0;
  ldv_22059: ;
  if ((unsigned long )(& p->list) != (unsigned long )(& part_parsers)) {
    goto ldv_22058;
  } else {
  }
  ldv_22057:
  spin_unlock(& part_parser_lock);
  return (ret);
}
}
void register_mtd_parser(struct mtd_part_parser *p )
{
  {
  spin_lock(& part_parser_lock);
  list_add(& p->list, & part_parsers);
  spin_unlock(& part_parser_lock);
  return;
}
}
static char const __kstrtab_register_mtd_parser[20U] =
  { 'r', 'e', 'g', 'i',
        's', 't', 'e', 'r',
        '_', 'm', 't', 'd',
        '_', 'p', 'a', 'r',
        's', 'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_register_mtd_parser ;
struct kernel_symbol const __ksymtab_register_mtd_parser = {(unsigned long )(& register_mtd_parser), (char const *)(& __kstrtab_register_mtd_parser)};
void deregister_mtd_parser(struct mtd_part_parser *p )
{
  {
  spin_lock(& part_parser_lock);
  list_del(& p->list);
  spin_unlock(& part_parser_lock);
  return;
}
}
static char const __kstrtab_deregister_mtd_parser[22U] =
  { 'd', 'e', 'r', 'e',
        'g', 'i', 's', 't',
        'e', 'r', '_', 'm',
        't', 'd', '_', 'p',
        'a', 'r', 's', 'e',
        'r', '\000'};
struct kernel_symbol const __ksymtab_deregister_mtd_parser ;
struct kernel_symbol const __ksymtab_deregister_mtd_parser = {(unsigned long )(& deregister_mtd_parser), (char const *)(& __kstrtab_deregister_mtd_parser)};
static char const * const default_mtd_part_types[3U] = { "cmdlinepart", "ofpart", (char const *)0};
int parse_mtd_partitions(struct mtd_info *master , char const * const *types ,
                         struct mtd_partition **pparts , struct mtd_part_parser_data *data )
{
  struct mtd_part_parser *parser ;
  int ret ;
  int tmp ;
  {
  ret = 0;
  if ((unsigned long )types == (unsigned long )((char const * const *)0)) {
    types = (char const * const *)(& default_mtd_part_types);
  } else {
  }
  goto ldv_22092;
  ldv_22091:
  parser = get_partition_parser(*types);
  if ((unsigned long )parser == (unsigned long )((struct mtd_part_parser *)0)) {
    tmp = __request_module(1, "%s", *types);
    if (tmp == 0) {
      parser = get_partition_parser(*types);
    } else {
    }
  } else {
  }
  if ((unsigned long )parser == (unsigned long )((struct mtd_part_parser *)0)) {
    goto ldv_22089;
  } else {
  }
  ret = (*(parser->parse_fn))(master, pparts, data);
  ldv_module_put_25(parser->owner);
  if (ret > 0) {
    printk("\r%d %s partitions found on MTD device %s\n", ret, parser->name, master->name);
    goto ldv_22090;
  } else {
  }
  ldv_22089:
  types = types + 1;
  ldv_22092: ;
  if (ret <= 0 && (unsigned long )*types != (unsigned long )((char const * )0)) {
    goto ldv_22091;
  } else {
  }
  ldv_22090: ;
  return (ret);
}
}
int mtd_is_partition(struct mtd_info const *mtd )
{
  struct mtd_part *part ;
  int ispart ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  ispart = 0;
  mutex_lock_nested(& mtd_partitions_mutex, 0U);
  __mptr = (struct list_head const *)mtd_partitions.next;
  part = (struct mtd_part *)__mptr + 0xfffffffffffff8d0UL;
  goto ldv_22104;
  ldv_22103: ;
  if ((unsigned long )((struct mtd_info const *)(& part->mtd)) == (unsigned long )mtd) {
    ispart = 1;
    goto ldv_22102;
  } else {
  }
  __mptr___0 = (struct list_head const *)part->list.next;
  part = (struct mtd_part *)__mptr___0 + 0xfffffffffffff8d0UL;
  ldv_22104: ;
  if ((unsigned long )(& part->list) != (unsigned long )(& mtd_partitions)) {
    goto ldv_22103;
  } else {
  }
  ldv_22102:
  mutex_unlock(& mtd_partitions_mutex);
  return (ispart);
}
}
static char const __kstrtab_mtd_is_partition[17U] =
  { 'm', 't', 'd', '_',
        'i', 's', '_', 'p',
        'a', 'r', 't', 'i',
        't', 'i', 'o', 'n',
        '\000'};
struct kernel_symbol const __ksymtab_mtd_is_partition ;
struct kernel_symbol const __ksymtab_mtd_is_partition = {(unsigned long )(& mtd_is_partition), (char const *)(& __kstrtab_mtd_is_partition)};
uint64_t mtd_get_device_size(struct mtd_info const *mtd )
{
  int tmp ;
  {
  tmp = mtd_is_partition(mtd);
  if (tmp == 0) {
    return ((uint64_t )mtd->size);
  } else {
  }
  return ((((struct mtd_part *)mtd)->master)->size);
}
}
static char const __kstrtab_mtd_get_device_size[20U] =
  { 'm', 't', 'd', '_',
        'g', 'e', 't', '_',
        'd', 'e', 'v', 'i',
        'c', 'e', '_', 's',
        'i', 'z', 'e', '\000'};
struct kernel_symbol const __ksymtab_mtd_get_device_size ;
struct kernel_symbol const __ksymtab_mtd_get_device_size = {(unsigned long )(& mtd_get_device_size), (char const *)(& __kstrtab_mtd_get_device_size)};
void ldv_main_exported_2(void)
{
  struct device *ldvarg9 ;
  void *tmp ;
  char *ldvarg10 ;
  void *tmp___0 ;
  struct device_attribute *ldvarg11 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(1416UL);
  ldvarg9 = (struct device *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg10 = (char *)tmp___0;
  tmp___1 = ldv_init_zalloc(48UL);
  ldvarg11 = (struct device_attribute *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_2 == 1) {
    mtd_partition_offset_show(ldvarg9, ldvarg11, ldvarg10);
    ldv_state_variable_2 = 1;
  } else {
  }
  goto ldv_22129;
  default:
  ldv_stop();
  }
  ldv_22129: ;
  return;
}
}
bool ldv_try_module_get_24(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_25(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern uint16_t __cachemode2pte_tbl[8U] ;
__inline static unsigned long cachemode2protval(enum page_cache_mode pcm )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned int )pcm == 0U, 1L);
  if (tmp != 0L) {
    return (0UL);
  } else {
  }
  return ((unsigned long )__cachemode2pte_tbl[(unsigned int )pcm]);
}
}
extern void __might_fault(char const * , int ) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memdup_user(void const * , size_t ) ;
extern void *memcpy(void * , void const * , size_t ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern struct cpuinfo_x86 boot_cpu_data ;
extern struct tss_struct cpu_tss ;
__inline static unsigned long current_top_of_stack(void)
{
  u64 pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& cpu_tss.x86_tss.sp0));
  goto ldv_5437;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& cpu_tss.x86_tss.sp0));
  goto ldv_5437;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& cpu_tss.x86_tss.sp0));
  goto ldv_5437;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& cpu_tss.x86_tss.sp0));
  goto ldv_5437;
  default:
  __bad_percpu_size();
  }
  ldv_5437: ;
  return ((unsigned long )pfo_ret__);
}
}
__inline static struct thread_info *current_thread_info(void)
{
  unsigned long tmp ;
  {
  tmp = current_top_of_stack();
  return ((struct thread_info *)(tmp - 32768UL));
}
}
extern bool capable(int ) ;
__inline static unsigned int iminor(struct inode const *inode )
{
  {
  return ((unsigned int )inode->i_rdev & 1048575U);
}
}
extern int __register_chrdev(unsigned int , unsigned int , unsigned int , char const * ,
                             struct file_operations const * ) ;
extern void __unregister_chrdev(unsigned int , unsigned int , unsigned int , char const * ) ;
extern loff_t fixed_size_llseek(struct file * , loff_t , int , loff_t ) ;
extern void *high_memory ;
extern int vm_iomap_memory(struct vm_area_struct * , phys_addr_t , unsigned long ) ;
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
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
extern void __copy_to_user_overflow(void) ;
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
__inline static unsigned long copy_to_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  {
  tmp = __builtin_object_size(from, 0);
  sz = (int )tmp;
  __might_fault("./arch/x86/include/asm/uaccess.h", 732);
  tmp___0 = ldv__builtin_expect((long )(sz < 0 || (unsigned long )sz >= n), 1L);
  if (tmp___0 != 0L) {
    n = _copy_to_user(to, from, (unsigned int )n);
  } else {
    __copy_to_user_overflow();
  }
  return (n);
}
}
__inline static void *compat_ptr(compat_uptr_t uptr )
{
  {
  return ((void *)((unsigned long )uptr));
}
}
__inline static int mtd_has_oob(struct mtd_info const *mtd )
{
  {
  return ((unsigned long )mtd->_read_oob != (unsigned long )((int (* )(struct mtd_info * ,
                                                                                  loff_t ,
                                                                                  struct mtd_oob_ops * ))0) && (unsigned long )mtd->_write_oob != (unsigned long )((int (* )(struct mtd_info * ,
                                                                                                                                                                                        loff_t ,
                                                                                                                                                                                        struct mtd_oob_ops * ))0));
}
}
__inline static int mtd_is_bitflip_or_eccerr(int err )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = mtd_is_bitflip(err);
  if (tmp != 0) {
    tmp___1 = 1;
  } else {
    tmp___0 = mtd_is_eccerr(err);
    if (tmp___0 != 0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  }
  return (tmp___1);
}
}
static struct mutex mtd_mutex = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "mtd_mutex.wait_lock",
                                                          0, 0UL}}}}, {& mtd_mutex.wait_list,
                                                                       & mtd_mutex.wait_list},
    0, (void *)(& mtd_mutex), {0, {0, 0}, "mtd_mutex", 0, 0UL}};
static loff_t mtdchar_lseek(struct file *file , loff_t offset , int orig )
{
  struct mtd_file_info *mfi ;
  loff_t tmp ;
  {
  mfi = (struct mtd_file_info *)file->private_data;
  tmp = fixed_size_llseek(file, offset, orig, (loff_t )(mfi->mtd)->size);
  return (tmp);
}
}
static int mtdchar_open(struct inode *inode , struct file *file )
{
  int minor ;
  unsigned int tmp ;
  int devnum ;
  int ret ;
  struct mtd_info *mtd ;
  struct mtd_file_info *mfi ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  void *tmp___3 ;
  {
  tmp = iminor((struct inode const *)inode);
  minor = (int )tmp;
  devnum = minor >> 1;
  ret = 0;
  descriptor.modname = "mtd";
  descriptor.function = "mtdchar_open";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdchar.c";
  descriptor.format = "MTD_open\n";
  descriptor.lineno = 69U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "MTD_open\n");
  } else {
  }
  if ((file->f_mode & 2U) != 0U && minor & 1) {
    return (-13);
  } else {
  }
  mutex_lock_nested(& mtd_mutex, 0U);
  mtd = get_mtd_device((struct mtd_info *)0, devnum);
  tmp___2 = IS_ERR((void const *)mtd);
  if ((int )tmp___2) {
    tmp___1 = PTR_ERR((void const *)mtd);
    ret = (int )tmp___1;
    goto out;
  } else {
  }
  if ((unsigned int )mtd->type == 0U) {
    ret = -19;
    goto out1;
  } else {
  }
  if ((file->f_mode & 2U) != 0U && (mtd->flags & 1024U) == 0U) {
    ret = -13;
    goto out1;
  } else {
  }
  tmp___3 = kzalloc(16UL, 208U);
  mfi = (struct mtd_file_info *)tmp___3;
  if ((unsigned long )mfi == (unsigned long )((struct mtd_file_info *)0)) {
    ret = -12;
    goto out1;
  } else {
  }
  mfi->mtd = mtd;
  file->private_data = (void *)mfi;
  mutex_unlock(& mtd_mutex);
  return (0);
  out1:
  put_mtd_device(mtd);
  out:
  mutex_unlock(& mtd_mutex);
  return (ret);
}
}
static int mtdchar_close(struct inode *inode , struct file *file )
{
  struct mtd_file_info *mfi ;
  struct mtd_info *mtd ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  mfi = (struct mtd_file_info *)file->private_data;
  mtd = mfi->mtd;
  descriptor.modname = "mtd";
  descriptor.function = "mtdchar_close";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdchar.c";
  descriptor.format = "MTD_close\n";
  descriptor.lineno = 118U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "MTD_close\n");
  } else {
  }
  if ((file->f_mode & 2U) != 0U) {
    mtd_sync(mtd);
  } else {
  }
  put_mtd_device(mtd);
  file->private_data = (void *)0;
  kfree((void const *)mfi);
  return (0);
}
}
static ssize_t mtdchar_read(struct file *file , char *buf , size_t count , loff_t *ppos )
{
  struct mtd_file_info *mfi ;
  struct mtd_info *mtd ;
  size_t retlen ;
  size_t total_retlen ;
  int ret ;
  int len ;
  size_t size ;
  char *kbuf ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  size_t __min1 ;
  size_t __min2 ;
  struct mtd_oob_ops ops ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  {
  mfi = (struct mtd_file_info *)file->private_data;
  mtd = mfi->mtd;
  total_retlen = 0UL;
  ret = 0;
  size = count;
  descriptor.modname = "mtd";
  descriptor.function = "mtdchar_read";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdchar.c";
  descriptor.format = "MTD_read\n";
  descriptor.lineno = 161U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "MTD_read\n");
  } else {
  }
  if ((unsigned long long )*ppos + (unsigned long long )count > mtd->size) {
    count = (size_t )(mtd->size - (unsigned long long )*ppos);
  } else {
  }
  if (count == 0UL) {
    return (0L);
  } else {
  }
  tmp___0 = mtd_kmalloc_up_to((struct mtd_info const *)mtd, & size);
  kbuf = (char *)tmp___0;
  if ((unsigned long )kbuf == (unsigned long )((char *)0)) {
    return (-12L);
  } else {
  }
  goto ldv_35745;
  ldv_35744:
  __min1 = count;
  __min2 = size;
  len = (int )(__min1 < __min2 ? __min1 : __min2);
  switch ((unsigned int )mfi->mode) {
  case 1U:
  ret = mtd_read_fact_prot_reg(mtd, *ppos, (size_t )len, & retlen, (u_char *)kbuf);
  goto ldv_35739;
  case 2U:
  ret = mtd_read_user_prot_reg(mtd, *ppos, (size_t )len, & retlen, (u_char *)kbuf);
  goto ldv_35739;
  case 3U:
  ops.mode = 2U;
  ops.datbuf = (uint8_t *)kbuf;
  ops.oobbuf = (uint8_t *)0U;
  ops.len = (size_t )len;
  ret = mtd_read_oob(mtd, *ppos, & ops);
  retlen = ops.retlen;
  goto ldv_35739;
  default:
  ret = mtd_read(mtd, *ppos, (size_t )len, & retlen, (u_char *)kbuf);
  }
  ldv_35739: ;
  if (ret == 0) {
    goto _L;
  } else {
    tmp___2 = mtd_is_bitflip_or_eccerr(ret);
    if (tmp___2 != 0) {
      _L:
      *ppos = (loff_t )((unsigned long long )*ppos + (unsigned long long )retlen);
      tmp___1 = copy_to_user((void *)buf, (void const *)kbuf, retlen);
      if (tmp___1 != 0UL) {
        kfree((void const *)kbuf);
        return (-14L);
      } else {
        total_retlen = total_retlen + retlen;
      }
      count = count - retlen;
      buf = buf + retlen;
      if (retlen == 0UL) {
        count = 0UL;
      } else {
      }
    } else {
      kfree((void const *)kbuf);
      return ((ssize_t )ret);
    }
  }
  ldv_35745: ;
  if (count != 0UL) {
    goto ldv_35744;
  } else {
  }
  kfree((void const *)kbuf);
  return ((ssize_t )total_retlen);
}
}
static ssize_t mtdchar_write(struct file *file , char const *buf , size_t count ,
                             loff_t *ppos )
{
  struct mtd_file_info *mfi ;
  struct mtd_info *mtd ;
  size_t size ;
  char *kbuf ;
  size_t retlen ;
  size_t total_retlen ;
  int ret ;
  int len ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  size_t __min1 ;
  size_t __min2 ;
  unsigned long tmp___1 ;
  struct mtd_oob_ops ops ;
  {
  mfi = (struct mtd_file_info *)file->private_data;
  mtd = mfi->mtd;
  size = count;
  total_retlen = 0UL;
  ret = 0;
  descriptor.modname = "mtd";
  descriptor.function = "mtdchar_write";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdchar.c";
  descriptor.format = "MTD_write\n";
  descriptor.lineno = 247U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "MTD_write\n");
  } else {
  }
  if ((unsigned long long )*ppos == mtd->size) {
    return (-28L);
  } else {
  }
  if ((unsigned long long )*ppos + (unsigned long long )count > mtd->size) {
    count = (size_t )(mtd->size - (unsigned long long )*ppos);
  } else {
  }
  if (count == 0UL) {
    return (0L);
  } else {
  }
  tmp___0 = mtd_kmalloc_up_to((struct mtd_info const *)mtd, & size);
  kbuf = (char *)tmp___0;
  if ((unsigned long )kbuf == (unsigned long )((char *)0)) {
    return (-12L);
  } else {
  }
  goto ldv_35774;
  ldv_35773:
  __min1 = count;
  __min2 = size;
  len = (int )(__min1 < __min2 ? __min1 : __min2);
  tmp___1 = copy_from_user((void *)kbuf, (void const *)buf, (unsigned long )len);
  if (tmp___1 != 0UL) {
    kfree((void const *)kbuf);
    return (-14L);
  } else {
  }
  switch ((unsigned int )mfi->mode) {
  case 1U:
  ret = -30;
  goto ldv_35767;
  case 2U:
  ret = mtd_write_user_prot_reg(mtd, *ppos, (size_t )len, & retlen, (u_char *)kbuf);
  goto ldv_35767;
  case 3U:
  ops.mode = 2U;
  ops.datbuf = (uint8_t *)kbuf;
  ops.oobbuf = (uint8_t *)0U;
  ops.ooboffs = 0U;
  ops.len = (size_t )len;
  ret = mtd_write_oob(mtd, *ppos, & ops);
  retlen = ops.retlen;
  goto ldv_35767;
  default:
  ret = mtd_write(mtd, *ppos, (size_t )len, & retlen, (u_char const *)kbuf);
  }
  ldv_35767: ;
  if (ret == -28 && total_retlen != 0UL) {
    goto ldv_35772;
  } else {
  }
  if (ret == 0) {
    *ppos = (loff_t )((unsigned long long )*ppos + (unsigned long long )retlen);
    total_retlen = total_retlen + retlen;
    count = count - retlen;
    buf = buf + retlen;
  } else {
    kfree((void const *)kbuf);
    return ((ssize_t )ret);
  }
  ldv_35774: ;
  if (count != 0UL) {
    goto ldv_35773;
  } else {
  }
  ldv_35772:
  kfree((void const *)kbuf);
  return ((ssize_t )total_retlen);
}
}
static void mtdchar_erase_callback(struct erase_info *instr )
{
  {
  __wake_up((wait_queue_head_t *)instr->priv, 3U, 1, (void *)0);
  return;
}
}
static int otp_select_filemode(struct mtd_file_info *mfi , int mode )
{
  struct mtd_info *mtd ;
  size_t retlen ;
  int tmp ;
  int tmp___0 ;
  {
  mtd = mfi->mtd;
  switch (mode) {
  case 1:
  tmp = mtd_read_fact_prot_reg(mtd, -1LL, 0UL, & retlen, (u_char *)0U);
  if (tmp == -95) {
    return (-95);
  } else {
  }
  mfi->mode = 1;
  goto ldv_35785;
  case 2:
  tmp___0 = mtd_read_user_prot_reg(mtd, -1LL, 0UL, & retlen, (u_char *)0U);
  if (tmp___0 == -95) {
    return (-95);
  } else {
  }
  mfi->mode = 2;
  goto ldv_35785;
  case 0:
  mfi->mode = 0;
  goto ldv_35785;
  default: ;
  return (-22);
  }
  ldv_35785: ;
  return (0);
}
}
static int mtdchar_writeoob(struct file *file , struct mtd_info *mtd , uint64_t start ,
                            uint32_t length , void *ptr , uint32_t *retp )
{
  struct mtd_file_info *mfi ;
  struct mtd_oob_ops ops ;
  uint32_t retlen ;
  int ret ;
  struct thread_info *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  void *tmp___3 ;
  long tmp___4 ;
  bool tmp___5 ;
  unsigned long tmp___6 ;
  {
  mfi = (struct mtd_file_info *)file->private_data;
  ret = 0;
  if ((file->f_mode & 2U) == 0U) {
    return (-1);
  } else {
  }
  if (length > 4096U) {
    return (-22);
  } else {
  }
  if ((unsigned long )mtd->_write_oob == (unsigned long )((int (*)(struct mtd_info * ,
                                                                   loff_t , struct mtd_oob_ops * ))0)) {
    ret = -95;
  } else {
    tmp = current_thread_info();
    tmp___0 = __chk_range_not_ok((unsigned long )ptr, (unsigned long )length, tmp->addr_limit.seg);
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    tmp___2 = ldv__builtin_expect((long )tmp___1, 1L);
    ret = tmp___2 != 0L ? 0 : -14;
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  ops.ooblen = (size_t )length;
  ops.ooboffs = (mtd->writesize - 1U) & (uint32_t )start;
  ops.datbuf = (uint8_t *)0U;
  ops.mode = (unsigned int )mfi->mode == 3U ? 2U : 0U;
  if (ops.ooboffs != 0U && ops.ooblen > (size_t )(mtd->oobsize - ops.ooboffs)) {
    return (-22);
  } else {
  }
  tmp___3 = memdup_user((void const *)ptr, (size_t )length);
  ops.oobbuf = (uint8_t *)tmp___3;
  tmp___5 = IS_ERR((void const *)ops.oobbuf);
  if ((int )tmp___5) {
    tmp___4 = PTR_ERR((void const *)ops.oobbuf);
    return ((int )tmp___4);
  } else {
  }
  start = - ((unsigned long long )mtd->writesize) & start;
  ret = mtd_write_oob(mtd, (loff_t )start, & ops);
  if (ops.oobretlen > 4294967295UL) {
    ret = -75;
  } else {
  }
  retlen = (uint32_t )ops.oobretlen;
  tmp___6 = copy_to_user((void *)retp, (void const *)(& retlen), 4UL);
  if (tmp___6 != 0UL) {
    ret = -14;
  } else {
  }
  kfree((void const *)ops.oobbuf);
  return (ret);
}
}
static int mtdchar_readoob(struct file *file , struct mtd_info *mtd , uint64_t start ,
                           uint32_t length , void *ptr , uint32_t *retp )
{
  struct mtd_file_info *mfi ;
  struct mtd_oob_ops ops ;
  int ret ;
  struct thread_info *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  void *tmp___3 ;
  unsigned long tmp___4 ;
  int __ret_pu ;
  uint32_t __pu_val ;
  int tmp___5 ;
  {
  mfi = (struct mtd_file_info *)file->private_data;
  ret = 0;
  if (length > 4096U) {
    return (-22);
  } else {
  }
  tmp = current_thread_info();
  tmp___0 = __chk_range_not_ok((unsigned long )ptr, (unsigned long )length, tmp->addr_limit.seg);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  tmp___2 = ldv__builtin_expect((long )tmp___1, 1L);
  if (tmp___2 == 0L) {
    return (-14);
  } else {
  }
  ops.ooblen = (size_t )length;
  ops.ooboffs = (mtd->writesize - 1U) & (uint32_t )start;
  ops.datbuf = (uint8_t *)0U;
  ops.mode = (unsigned int )mfi->mode == 3U ? 2U : 0U;
  if (ops.ooboffs != 0U && ops.ooblen > (size_t )(mtd->oobsize - ops.ooboffs)) {
    return (-22);
  } else {
  }
  tmp___3 = kmalloc((size_t )length, 208U);
  ops.oobbuf = (uint8_t *)tmp___3;
  if ((unsigned long )ops.oobbuf == (unsigned long )((uint8_t *)0U)) {
    return (-12);
  } else {
  }
  start = - ((unsigned long long )mtd->writesize) & start;
  ret = mtd_read_oob(mtd, (loff_t )start, & ops);
  __might_fault("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdchar.c",
                441);
  __pu_val = (uint32_t )ops.oobretlen;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" (retp): "ebx");
  goto ldv_35817;
  case 2UL:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" (retp): "ebx");
  goto ldv_35817;
  case 4UL:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" (retp): "ebx");
  goto ldv_35817;
  case 8UL:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" (retp): "ebx");
  goto ldv_35817;
  default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" (retp): "ebx");
  goto ldv_35817;
  }
  ldv_35817: ;
  if (__ret_pu != 0) {
    ret = -14;
  } else
  if (ops.oobretlen != 0UL) {
    tmp___4 = copy_to_user(ptr, (void const *)ops.oobbuf, ops.oobretlen);
    if (tmp___4 != 0UL) {
      ret = -14;
    } else {
    }
  } else {
  }
  kfree((void const *)ops.oobbuf);
  tmp___5 = mtd_is_bitflip_or_eccerr(ret);
  if (tmp___5 != 0) {
    return (0);
  } else {
  }
  return (ret);
}
}
static int shrink_ecclayout(struct nand_ecclayout const *from , struct nand_ecclayout_user *to )
{
  int i ;
  int _min1 ;
  int _min2 ;
  {
  if ((unsigned long )from == (unsigned long )((struct nand_ecclayout const *)0) || (unsigned long )to == (unsigned long )((struct nand_ecclayout_user *)0)) {
    return (-22);
  } else {
  }
  memset((void *)to, 0, 328UL);
  _min1 = (int )from->eccbytes;
  _min2 = 64;
  to->eccbytes = (__u32 )(_min1 < _min2 ? _min1 : _min2);
  i = 0;
  goto ldv_35832;
  ldv_35831:
  to->eccpos[i] = from->eccpos[i];
  i = i + 1;
  ldv_35832: ;
  if ((__u32 )i < to->eccbytes) {
    goto ldv_35831;
  } else {
  }
  i = 0;
  goto ldv_35836;
  ldv_35835: ;
  if ((unsigned int )from->oobfree[i].length == 0U && (unsigned int )from->oobfree[i].offset == 0U) {
    goto ldv_35834;
  } else {
  }
  to->oobavail = to->oobavail + (__u32 )from->oobfree[i].length;
  to->oobfree[i] = from->oobfree[i];
  i = i + 1;
  ldv_35836: ;
  if (i <= 7) {
    goto ldv_35835;
  } else {
  }
  ldv_35834: ;
  return (0);
}
}
static int mtdchar_blkpg_ioctl(struct mtd_info *mtd , struct blkpg_ioctl_arg *arg )
{
  struct blkpg_ioctl_arg a ;
  struct blkpg_partition p ;
  bool tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  tmp = capable(21);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-1);
  } else {
  }
  tmp___1 = copy_from_user((void *)(& a), (void const *)arg, 24UL);
  if (tmp___1 != 0UL) {
    return (-14);
  } else {
  }
  tmp___2 = copy_from_user((void *)(& p), (void const *)a.data, 152UL);
  if (tmp___2 != 0UL) {
    return (-14);
  } else {
  }
  switch (a.op) {
  case 1:
  tmp___3 = mtd_is_partition((struct mtd_info const *)mtd);
  if (tmp___3 != 0) {
    return (-22);
  } else {
  }
  p.devname[63] = 0;
  tmp___4 = mtd_add_partition(mtd, (char const *)(& p.devname), p.start, p.length);
  return (tmp___4);
  case 2: ;
  if (p.pno < 0) {
    return (-22);
  } else {
  }
  tmp___5 = mtd_del_partition(mtd, p.pno);
  return (tmp___5);
  default: ;
  return (-22);
  }
}
}
static int mtdchar_write_ioctl(struct mtd_info *mtd , struct mtd_write_req *argp )
{
  struct mtd_write_req req ;
  struct mtd_oob_ops ops ;
  void const *usr_data ;
  void const *usr_oob ;
  int ret ;
  unsigned long tmp ;
  struct thread_info *tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  struct thread_info *tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  void *tmp___8 ;
  long tmp___9 ;
  bool tmp___10 ;
  void *tmp___11 ;
  long tmp___12 ;
  bool tmp___13 ;
  {
  tmp = copy_from_user((void *)(& req), (void const *)argp, 48UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  usr_data = (void const *)req.usr_data;
  usr_oob = (void const *)req.usr_oob;
  tmp___0 = current_thread_info();
  tmp___1 = __chk_range_not_ok((unsigned long )usr_data, (unsigned long )req.len,
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
    tmp___4 = current_thread_info();
    tmp___5 = __chk_range_not_ok((unsigned long )usr_oob, (unsigned long )req.ooblen,
                                 tmp___4->addr_limit.seg);
    if (tmp___5) {
      tmp___6 = 0;
    } else {
      tmp___6 = 1;
    }
    tmp___7 = ldv__builtin_expect((long )tmp___6, 1L);
    if (tmp___7 == 0L) {
      return (-14);
    } else {
    }
  }
  if ((unsigned long )mtd->_write_oob == (unsigned long )((int (*)(struct mtd_info * ,
                                                                   loff_t , struct mtd_oob_ops * ))0)) {
    return (-95);
  } else {
  }
  ops.mode = (unsigned int )req.mode;
  ops.len = (unsigned long )req.len;
  ops.ooblen = (unsigned long )req.ooblen;
  ops.ooboffs = 0U;
  if ((unsigned long )usr_data != (unsigned long )((void const *)0)) {
    tmp___8 = memdup_user(usr_data, ops.len);
    ops.datbuf = (uint8_t *)tmp___8;
    tmp___10 = IS_ERR((void const *)ops.datbuf);
    if ((int )tmp___10) {
      tmp___9 = PTR_ERR((void const *)ops.datbuf);
      return ((int )tmp___9);
    } else {
    }
  } else {
    ops.datbuf = (uint8_t *)0U;
  }
  if ((unsigned long )usr_oob != (unsigned long )((void const *)0)) {
    tmp___11 = memdup_user(usr_oob, ops.ooblen);
    ops.oobbuf = (uint8_t *)tmp___11;
    tmp___13 = IS_ERR((void const *)ops.oobbuf);
    if ((int )tmp___13) {
      kfree((void const *)ops.datbuf);
      tmp___12 = PTR_ERR((void const *)ops.oobbuf);
      return ((int )tmp___12);
    } else {
    }
  } else {
    ops.oobbuf = (uint8_t *)0U;
  }
  ret = mtd_write_oob(mtd, (long long )req.start, & ops);
  kfree((void const *)ops.datbuf);
  kfree((void const *)ops.oobbuf);
  return (ret);
}
}
static int mtdchar_ioctl(struct file *file , u_int cmd , u_long arg )
{
  struct mtd_file_info *mfi ;
  struct mtd_info *mtd ;
  void *argp ;
  int ret ;
  u_long size ;
  struct mtd_info_user info ;
  struct _ddebug descriptor ;
  long tmp ;
  struct thread_info *tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  struct thread_info *tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  unsigned long tmp___8 ;
  uint32_t ur_idx ;
  struct mtd_erase_region_info *kr ;
  struct region_info_user *ur ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  int __ret_pu ;
  __u32 __pu_val ;
  int __ret_pu___0 ;
  __u32 __pu_val___0 ;
  int __ret_pu___1 ;
  __u32 __pu_val___1 ;
  unsigned long tmp___9 ;
  struct erase_info *erase ;
  void *tmp___10 ;
  wait_queue_head_t waitq ;
  wait_queue_t wait ;
  struct task_struct *tmp___11 ;
  struct lock_class_key __key ;
  struct erase_info_user64 einfo64 ;
  unsigned long tmp___12 ;
  struct erase_info_user einfo32 ;
  unsigned long tmp___13 ;
  struct task_struct *tmp___14 ;
  long volatile __ret ;
  struct task_struct *tmp___15 ;
  struct task_struct *tmp___16 ;
  struct task_struct *tmp___17 ;
  struct task_struct *tmp___18 ;
  struct task_struct *tmp___19 ;
  long volatile __ret___0 ;
  struct task_struct *tmp___20 ;
  struct task_struct *tmp___21 ;
  struct task_struct *tmp___22 ;
  struct task_struct *tmp___23 ;
  struct mtd_oob_buf buf ;
  struct mtd_oob_buf *buf_user ;
  unsigned long tmp___24 ;
  struct mtd_oob_buf buf___0 ;
  struct mtd_oob_buf *buf_user___0 ;
  unsigned long tmp___25 ;
  struct mtd_oob_buf64 buf___1 ;
  struct mtd_oob_buf64 *buf_user___1 ;
  unsigned long tmp___26 ;
  struct mtd_oob_buf64 buf___2 ;
  struct mtd_oob_buf64 *buf_user___2 ;
  unsigned long tmp___27 ;
  struct erase_info_user einfo ;
  unsigned long tmp___28 ;
  struct erase_info_user einfo___0 ;
  unsigned long tmp___29 ;
  struct erase_info_user einfo___1 ;
  unsigned long tmp___30 ;
  struct nand_oobinfo oi ;
  unsigned long tmp___31 ;
  loff_t offs ;
  unsigned long tmp___32 ;
  int tmp___33 ;
  loff_t offs___0 ;
  unsigned long tmp___34 ;
  int tmp___35 ;
  int mode ;
  unsigned long tmp___36 ;
  struct otp_info *buf___3 ;
  void *tmp___37 ;
  size_t retlen ;
  int nbr ;
  unsigned long tmp___38 ;
  unsigned long tmp___39 ;
  struct otp_info oinfo ;
  unsigned long tmp___40 ;
  struct nand_ecclayout_user *usrlay ;
  void *tmp___41 ;
  unsigned long tmp___42 ;
  unsigned long tmp___43 ;
  int tmp___44 ;
  {
  mfi = (struct mtd_file_info *)file->private_data;
  mtd = mfi->mtd;
  argp = (void *)arg;
  ret = 0;
  descriptor.modname = "mtd";
  descriptor.function = "mtdchar_ioctl";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdchar.c";
  descriptor.format = "MTD_ioctl\n";
  descriptor.lineno = 599U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "MTD_ioctl\n");
  } else {
  }
  size = (u_long )((cmd & 1073676288U) >> 16);
  if ((cmd & 1073741824U) != 0U) {
    tmp___0 = current_thread_info();
    tmp___1 = __chk_range_not_ok((unsigned long )argp, size, tmp___0->addr_limit.seg);
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
  } else {
  }
  if ((int )cmd < 0) {
    tmp___4 = current_thread_info();
    tmp___5 = __chk_range_not_ok((unsigned long )argp, size, tmp___4->addr_limit.seg);
    if (tmp___5) {
      tmp___6 = 0;
    } else {
      tmp___6 = 1;
    }
    tmp___7 = ldv__builtin_expect((long )tmp___6, 1L);
    if (tmp___7 == 0L) {
      return (-14);
    } else {
    }
  } else {
  }
  switch (cmd) {
  case 2147765511U:
  tmp___8 = copy_to_user(argp, (void const *)(& mtd->numeraseregions), 4UL);
  if (tmp___8 != 0UL) {
    return (-14);
  } else {
  }
  goto ldv_35873;
  case 3222293768U:
  ur = (struct region_info_user *)argp;
  __might_fault("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdchar.c",
                623);
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" (& ur->regionindex),
                       "i" (4UL));
  ur_idx = (unsigned int )__val_gu;
  if (__ret_gu != 0) {
    return (-14);
  } else {
  }
  if ((uint32_t )mtd->numeraseregions <= ur_idx) {
    return (-22);
  } else {
  }
  kr = mtd->eraseregions + (unsigned long )ur_idx;
  __might_fault("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdchar.c",
                631);
  __pu_val = (__u32 )kr->offset;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" (& ur->offset): "ebx");
  goto ldv_35884;
  case 2UL:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" (& ur->offset): "ebx");
  goto ldv_35884;
  case 4UL:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" (& ur->offset): "ebx");
  goto ldv_35884;
  case 8UL:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" (& ur->offset): "ebx");
  goto ldv_35884;
  default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" (& ur->offset): "ebx");
  goto ldv_35884;
  }
  ldv_35884: ;
  if (__ret_pu != 0) {
    return (-14);
  } else {
    __might_fault("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdchar.c",
                  632);
    __pu_val___0 = kr->erasesize;
    switch (4UL) {
    case 1UL:
    __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___0): "0" (__pu_val___0),
                         "c" (& ur->erasesize): "ebx");
    goto ldv_35893;
    case 2UL:
    __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___0): "0" (__pu_val___0),
                         "c" (& ur->erasesize): "ebx");
    goto ldv_35893;
    case 4UL:
    __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___0): "0" (__pu_val___0),
                         "c" (& ur->erasesize): "ebx");
    goto ldv_35893;
    case 8UL:
    __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___0): "0" (__pu_val___0),
                         "c" (& ur->erasesize): "ebx");
    goto ldv_35893;
    default:
    __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___0): "0" (__pu_val___0),
                         "c" (& ur->erasesize): "ebx");
    goto ldv_35893;
    }
    ldv_35893: ;
    if (__ret_pu___0 != 0) {
      return (-14);
    } else {
      __might_fault("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1443/dscv_tempdir/dscv/ri/08_1a/drivers/mtd/mtdchar.c",
                    633);
      __pu_val___1 = kr->numblocks;
      switch (4UL) {
      case 1UL:
      __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___1): "0" (__pu_val___1),
                           "c" (& ur->numblocks): "ebx");
      goto ldv_35902;
      case 2UL:
      __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___1): "0" (__pu_val___1),
                           "c" (& ur->numblocks): "ebx");
      goto ldv_35902;
      case 4UL:
      __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___1): "0" (__pu_val___1),
                           "c" (& ur->numblocks): "ebx");
      goto ldv_35902;
      case 8UL:
      __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___1): "0" (__pu_val___1),
                           "c" (& ur->numblocks): "ebx");
      goto ldv_35902;
      default:
      __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___1): "0" (__pu_val___1),
                           "c" (& ur->numblocks): "ebx");
      goto ldv_35902;
      }
      ldv_35902: ;
      if (__ret_pu___1 != 0) {
        return (-14);
      } else {
      }
    }
  }
  goto ldv_35873;
  case 2149600513U:
  memset((void *)(& info), 0, 32UL);
  info.type = mtd->type;
  info.flags = mtd->flags;
  info.size = (__u32 )mtd->size;
  info.erasesize = mtd->erasesize;
  info.writesize = mtd->writesize;
  info.oobsize = mtd->oobsize;
  info.padding = 0ULL;
  tmp___9 = copy_to_user(argp, (void const *)(& info), 32UL);
  if (tmp___9 != 0UL) {
    return (-14);
  } else {
  }
  goto ldv_35873;
  case 1074285826U: ;
  case 1074810132U: ;
  if ((file->f_mode & 2U) == 0U) {
    return (-1);
  } else {
  }
  tmp___10 = kzalloc(88UL, 208U);
  erase = (struct erase_info *)tmp___10;
  if ((unsigned long )erase == (unsigned long )((struct erase_info *)0)) {
    ret = -12;
  } else {
    tmp___11 = get_current();
    wait.flags = 0U;
    wait.private = (void *)tmp___11;
    wait.func = & default_wake_function;
    wait.task_list.next = (struct list_head *)0;
    wait.task_list.prev = (struct list_head *)0;
    __init_waitqueue_head(& waitq, "&waitq", & __key);
    if (cmd == 1074810132U) {
      tmp___12 = copy_from_user((void *)(& einfo64), (void const *)argp, 16UL);
      if (tmp___12 != 0UL) {
        kfree((void const *)erase);
        return (-14);
      } else {
      }
      erase->addr = einfo64.start;
      erase->len = einfo64.length;
    } else {
      tmp___13 = copy_from_user((void *)(& einfo32), (void const *)argp, 8UL);
      if (tmp___13 != 0UL) {
        kfree((void const *)erase);
        return (-14);
      } else {
      }
      erase->addr = (uint64_t )einfo32.start;
      erase->len = (uint64_t )einfo32.length;
    }
    erase->mtd = mtd;
    erase->callback = & mtdchar_erase_callback;
    erase->priv = (unsigned long )(& waitq);
    ret = mtd_erase(mtd, erase);
    if (ret == 0) {
      tmp___14 = get_current();
      tmp___14->task_state_change = 0UL;
      __ret = 2L;
      switch (8UL) {
      case 1UL:
      tmp___15 = get_current();
      __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (tmp___15->state): : "memory",
                           "cc");
      goto ldv_35919;
      case 2UL:
      tmp___16 = get_current();
      __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (tmp___16->state): : "memory",
                           "cc");
      goto ldv_35919;
      case 4UL:
      tmp___17 = get_current();
      __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (tmp___17->state): : "memory",
                           "cc");
      goto ldv_35919;
      case 8UL:
      tmp___18 = get_current();
      __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (tmp___18->state): : "memory",
                           "cc");
      goto ldv_35919;
      default:
      __xchg_wrong_size();
      }
      ldv_35919:
      add_wait_queue(& waitq, & wait);
      if ((unsigned int )erase->state != 8U && (unsigned int )erase->state != 16U) {
        schedule();
      } else {
      }
      remove_wait_queue(& waitq, & wait);
      tmp___19 = get_current();
      tmp___19->task_state_change = 0UL;
      __ret___0 = 0L;
      switch (8UL) {
      case 1UL:
      tmp___20 = get_current();
      __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret___0), "+m" (tmp___20->state): : "memory",
                           "cc");
      goto ldv_35927;
      case 2UL:
      tmp___21 = get_current();
      __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret___0), "+m" (tmp___21->state): : "memory",
                           "cc");
      goto ldv_35927;
      case 4UL:
      tmp___22 = get_current();
      __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret___0), "+m" (tmp___22->state): : "memory",
                           "cc");
      goto ldv_35927;
      case 8UL:
      tmp___23 = get_current();
      __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret___0), "+m" (tmp___23->state): : "memory",
                           "cc");
      goto ldv_35927;
      default:
      __xchg_wrong_size();
      }
      ldv_35927:
      ret = (unsigned int )erase->state == 16U ? -5 : 0;
    } else {
    }
    kfree((void const *)erase);
  }
  goto ldv_35873;
  case 3222293763U:
  buf_user = (struct mtd_oob_buf *)argp;
  tmp___24 = copy_from_user((void *)(& buf), (void const *)argp, 16UL);
  if (tmp___24 != 0UL) {
    ret = -14;
  } else {
    ret = mtdchar_writeoob(file, mtd, (uint64_t )buf.start, buf.length, (void *)buf.ptr,
                           & buf_user->length);
  }
  goto ldv_35873;
  case 3222293764U:
  buf_user___0 = (struct mtd_oob_buf *)argp;
  tmp___25 = copy_from_user((void *)(& buf___0), (void const *)argp, 16UL);
  if (tmp___25 != 0UL) {
    ret = -14;
  } else {
    ret = mtdchar_readoob(file, mtd, (uint64_t )buf___0.start, buf___0.length, (void *)buf___0.ptr,
                          & buf_user___0->start);
  }
  goto ldv_35873;
  case 3222818069U:
  buf_user___1 = (struct mtd_oob_buf64 *)argp;
  tmp___26 = copy_from_user((void *)(& buf___1), (void const *)argp, 24UL);
  if (tmp___26 != 0UL) {
    ret = -14;
  } else {
    ret = mtdchar_writeoob(file, mtd, buf___1.start, buf___1.length, (void *)buf___1.usr_ptr,
                           & buf_user___1->length);
  }
  goto ldv_35873;
  case 3222818070U:
  buf_user___2 = (struct mtd_oob_buf64 *)argp;
  tmp___27 = copy_from_user((void *)(& buf___2), (void const *)argp, 24UL);
  if (tmp___27 != 0UL) {
    ret = -14;
  } else {
    ret = mtdchar_readoob(file, mtd, buf___2.start, buf___2.length, (void *)buf___2.usr_ptr,
                          & buf_user___2->length);
  }
  goto ldv_35873;
  case 3224390936U:
  ret = mtdchar_write_ioctl(mtd, (struct mtd_write_req *)arg);
  goto ldv_35873;
  case 1074285829U:
  tmp___28 = copy_from_user((void *)(& einfo), (void const *)argp, 8UL);
  if (tmp___28 != 0UL) {
    return (-14);
  } else {
  }
  ret = mtd_lock(mtd, (loff_t )einfo.start, (uint64_t )einfo.length);
  goto ldv_35873;
  case 1074285830U:
  tmp___29 = copy_from_user((void *)(& einfo___0), (void const *)argp, 8UL);
  if (tmp___29 != 0UL) {
    return (-14);
  } else {
  }
  ret = mtd_unlock(mtd, (loff_t )einfo___0.start, (uint64_t )einfo___0.length);
  goto ldv_35873;
  case 2148027671U:
  tmp___30 = copy_from_user((void *)(& einfo___1), (void const *)argp, 8UL);
  if (tmp___30 != 0UL) {
    return (-14);
  } else {
  }
  ret = mtd_is_locked(mtd, (loff_t )einfo___1.start, (uint64_t )einfo___1.length);
  goto ldv_35873;
  case 2160610570U: ;
  if ((unsigned long )mtd->ecclayout == (unsigned long )((struct nand_ecclayout *)0)) {
    return (-95);
  } else {
  }
  if ((mtd->ecclayout)->eccbytes > 32U) {
    return (-22);
  } else {
  }
  oi.useecc = 2U;
  memcpy((void *)(& oi.eccpos), (void const *)(& (mtd->ecclayout)->eccpos), 128UL);
  memcpy((void *)(& oi.oobfree), (void const *)(& (mtd->ecclayout)->oobfree),
           64UL);
  oi.eccbytes = (mtd->ecclayout)->eccbytes;
  tmp___31 = copy_to_user(argp, (void const *)(& oi), 200UL);
  if (tmp___31 != 0UL) {
    return (-14);
  } else {
  }
  goto ldv_35873;
  case 1074285835U:
  tmp___32 = copy_from_user((void *)(& offs), (void const *)argp, 8UL);
  if (tmp___32 != 0UL) {
    return (-14);
  } else {
  }
  tmp___33 = mtd_block_isbad(mtd, offs);
  return (tmp___33);
  case 1074285836U:
  tmp___34 = copy_from_user((void *)(& offs___0), (void const *)argp, 8UL);
  if (tmp___34 != 0UL) {
    return (-14);
  } else {
  }
  tmp___35 = mtd_block_markbad(mtd, offs___0);
  return (tmp___35);
  case 2147765517U:
  tmp___36 = copy_from_user((void *)(& mode), (void const *)argp, 4UL);
  if (tmp___36 != 0UL) {
    return (-14);
  } else {
  }
  mfi->mode = 0;
  ret = otp_select_filemode(mfi, mode);
  file->f_pos = 0LL;
  goto ldv_35873;
  case 1074023694U: ;
  case 1074547983U:
  tmp___37 = kmalloc(4096UL, 208U);
  buf___3 = (struct otp_info *)tmp___37;
  if ((unsigned long )buf___3 == (unsigned long )((struct otp_info *)0)) {
    return (-12);
  } else {
  }
  switch ((unsigned int )mfi->mode) {
  case 1U:
  ret = mtd_get_fact_prot_info(mtd, 4096UL, & retlen, buf___3);
  goto ldv_35967;
  case 2U:
  ret = mtd_get_user_prot_info(mtd, 4096UL, & retlen, buf___3);
  goto ldv_35967;
  default:
  ret = -22;
  goto ldv_35967;
  }
  ldv_35967: ;
  if (ret == 0) {
    if (cmd == 1074023694U) {
      nbr = (int )(retlen / 12UL);
      tmp___38 = copy_to_user(argp, (void const *)(& nbr), 4UL);
      ret = (int )tmp___38;
    } else {
      tmp___39 = copy_to_user(argp, (void const *)buf___3, retlen);
      ret = (int )tmp___39;
    }
    if (ret != 0) {
      ret = -14;
    } else {
    }
  } else {
  }
  kfree((void const *)buf___3);
  goto ldv_35873;
  case 2148289808U: ;
  if ((unsigned int )mfi->mode != 2U) {
    return (-22);
  } else {
  }
  tmp___40 = copy_from_user((void *)(& oinfo), (void const *)argp, 12UL);
  if (tmp___40 != 0UL) {
    return (-14);
  } else {
  }
  ret = mtd_lock_user_prot_reg(mtd, (loff_t )oinfo.start, (size_t )oinfo.length);
  goto ldv_35873;
  case 2168999185U: ;
  if ((unsigned long )mtd->ecclayout == (unsigned long )((struct nand_ecclayout *)0)) {
    return (-95);
  } else {
  }
  tmp___41 = kmalloc(328UL, 208U);
  usrlay = (struct nand_ecclayout_user *)tmp___41;
  if ((unsigned long )usrlay == (unsigned long )((struct nand_ecclayout_user *)0)) {
    return (-12);
  } else {
  }
  shrink_ecclayout((struct nand_ecclayout const *)mtd->ecclayout, usrlay);
  tmp___42 = copy_to_user(argp, (void const *)usrlay, 328UL);
  if (tmp___42 != 0UL) {
    ret = -14;
  } else {
  }
  kfree((void const *)usrlay);
  goto ldv_35873;
  case 2148551954U:
  tmp___43 = copy_to_user(argp, (void const *)(& mtd->ecc_stats), 16UL);
  if (tmp___43 != 0UL) {
    return (-14);
  } else {
  }
  goto ldv_35873;
  case 19731U:
  mfi->mode = 0;
  switch (arg) {
  case 1UL: ;
  case 2UL:
  ret = otp_select_filemode(mfi, (int )arg);
  goto ldv_35979;
  case 3UL:
  tmp___44 = mtd_has_oob((struct mtd_info const *)mtd);
  if (tmp___44 == 0) {
    return (-95);
  } else {
  }
  mfi->mode = (enum mtd_file_modes )arg;
  case 0UL: ;
  goto ldv_35979;
  default:
  ret = -22;
  }
  ldv_35979:
  file->f_pos = 0LL;
  goto ldv_35873;
  case 4713U:
  ret = mtdchar_blkpg_ioctl(mtd, (struct blkpg_ioctl_arg *)arg);
  goto ldv_35873;
  case 4703U:
  ret = 0;
  goto ldv_35873;
  default:
  ret = -25;
  }
  ldv_35873: ;
  return (ret);
}
}
static long mtdchar_unlocked_ioctl(struct file *file , u_int cmd , u_long arg )
{
  int ret ;
  {
  mutex_lock_nested(& mtd_mutex, 0U);
  ret = mtdchar_ioctl(file, cmd, arg);
  mutex_unlock(& mtd_mutex);
  return ((long )ret);
}
}
static long mtdchar_compat_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  struct mtd_file_info *mfi ;
  struct mtd_info *mtd ;
  void *argp ;
  void *tmp ;
  int ret ;
  struct mtd_oob_buf32 buf ;
  struct mtd_oob_buf32 *buf_user ;
  void *tmp___0 ;
  unsigned long tmp___1 ;
  struct mtd_oob_buf32 buf___0 ;
  struct mtd_oob_buf32 *buf_user___0 ;
  void *tmp___2 ;
  unsigned long tmp___3 ;
  {
  mfi = (struct mtd_file_info *)file->private_data;
  mtd = mfi->mtd;
  tmp = compat_ptr((compat_uptr_t )arg);
  argp = tmp;
  ret = 0;
  mutex_lock_nested(& mtd_mutex, 0U);
  switch (cmd) {
  case 3222031619U:
  buf_user = (struct mtd_oob_buf32 *)argp;
  tmp___1 = copy_from_user((void *)(& buf), (void const *)argp, 12UL);
  if (tmp___1 != 0UL) {
    ret = -14;
  } else {
    tmp___0 = compat_ptr(buf.ptr);
    ret = mtdchar_writeoob(file, mtd, (uint64_t )buf.start, buf.length, tmp___0, & buf_user->length);
  }
  goto ldv_36008;
  case 3222031620U:
  buf_user___0 = (struct mtd_oob_buf32 *)argp;
  tmp___3 = copy_from_user((void *)(& buf___0), (void const *)argp, 12UL);
  if (tmp___3 != 0UL) {
    ret = -14;
  } else {
    tmp___2 = compat_ptr(buf___0.ptr);
    ret = mtdchar_readoob(file, mtd, (uint64_t )buf___0.start, buf___0.length, tmp___2,
                          & buf_user___0->start);
  }
  goto ldv_36008;
  default:
  ret = mtdchar_ioctl(file, cmd, (unsigned long )argp);
  }
  ldv_36008:
  mutex_unlock(& mtd_mutex);
  return ((long )ret);
}
}
static int mtdchar_mmap(struct file *file , struct vm_area_struct *vma )
{
  struct mtd_file_info *mfi ;
  struct mtd_info *mtd ;
  struct map_info *map ;
  pgprot_t __constr_expr_0 ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  {
  mfi = (struct mtd_file_info *)file->private_data;
  mtd = mfi->mtd;
  map = (struct map_info *)mtd->priv;
  if (0) {
    if ((file->f_flags & 4096U) != 0U) {
      goto _L;
    } else {
      tmp___0 = __phys_addr((unsigned long )high_memory);
      if (map->phys >= (unsigned long long )tmp___0) {
        _L:
        if ((unsigned int )boot_cpu_data.x86 > 3U) {
          tmp = cachemode2protval(2);
          __constr_expr_0.pgprot = vma->vm_page_prot.pgprot | tmp;
          vma->vm_page_prot = __constr_expr_0;
        } else {
          vma->vm_page_prot = vma->vm_page_prot;
        }
      } else {
      }
    }
    tmp___1 = vm_iomap_memory(vma, map->phys, map->size);
    return (tmp___1);
  } else {
  }
  return (-19);
}
}
static struct file_operations const mtd_fops =
     {& __this_module, & mtdchar_lseek, & mtdchar_read, & mtdchar_write, 0, 0, 0, 0,
    & mtdchar_unlocked_ioctl, & mtdchar_compat_ioctl, & mtdchar_mmap, 0, & mtdchar_open,
    0, & mtdchar_close, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int init_mtdchar(void)
{
  int ret ;
  {
  ret = __register_chrdev(90U, 0U, 1048576U, "mtd", & mtd_fops);
  if (ret < 0) {
    printk("\vCan\'t allocate major number %d for MTD\n", 90);
    return (ret);
  } else {
  }
  return (ret);
}
}
void cleanup_mtdchar(void)
{
  {
  __unregister_chrdev(90U, 0U, 1048576U, "mtd");
  return;
}
}
int ldv_retval_19 ;
void ldv_file_operations_1(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  mtd_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  mtd_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_main_exported_1(void)
{
  loff_t *ldvarg19 ;
  void *tmp ;
  loff_t *ldvarg22 ;
  void *tmp___0 ;
  unsigned int ldvarg13 ;
  unsigned long ldvarg17 ;
  int ldvarg14 ;
  char *ldvarg21 ;
  void *tmp___1 ;
  loff_t ldvarg15 ;
  struct vm_area_struct *ldvarg16 ;
  void *tmp___2 ;
  unsigned long ldvarg12 ;
  size_t ldvarg23 ;
  size_t ldvarg20 ;
  unsigned int ldvarg18 ;
  char *ldvarg24 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  tmp = ldv_init_zalloc(8UL);
  ldvarg19 = (loff_t *)tmp;
  tmp___0 = ldv_init_zalloc(8UL);
  ldvarg22 = (loff_t *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg21 = (char *)tmp___1;
  tmp___2 = ldv_init_zalloc(184UL);
  ldvarg16 = (struct vm_area_struct *)tmp___2;
  tmp___3 = ldv_init_zalloc(1UL);
  ldvarg24 = (char *)tmp___3;
  ldv_memset((void *)(& ldvarg13), 0, 4UL);
  ldv_memset((void *)(& ldvarg17), 0, 8UL);
  ldv_memset((void *)(& ldvarg14), 0, 4UL);
  ldv_memset((void *)(& ldvarg15), 0, 8UL);
  ldv_memset((void *)(& ldvarg12), 0, 8UL);
  ldv_memset((void *)(& ldvarg23), 0, 8UL);
  ldv_memset((void *)(& ldvarg20), 0, 8UL);
  ldv_memset((void *)(& ldvarg18), 0, 4UL);
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_1 == 2) {
    mtdchar_write(mtd_fops_group2, (char const *)ldvarg24, ldvarg23, ldvarg22);
    ldv_state_variable_1 = 2;
  } else {
  }
  if (ldv_state_variable_1 == 1) {
    mtdchar_write(mtd_fops_group2, (char const *)ldvarg24, ldvarg23, ldvarg22);
    ldv_state_variable_1 = 1;
  } else {
  }
  goto ldv_36051;
  case 1: ;
  if (ldv_state_variable_1 == 2) {
    mtdchar_read(mtd_fops_group2, ldvarg21, ldvarg20, ldvarg19);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_36051;
  case 2: ;
  if (ldv_state_variable_1 == 2) {
    mtdchar_compat_ioctl(mtd_fops_group2, ldvarg18, ldvarg17);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_36051;
  case 3: ;
  if (ldv_state_variable_1 == 1) {
    ldv_retval_19 = mtdchar_open(mtd_fops_group1, mtd_fops_group2);
    if (ldv_retval_19 == 0) {
      ldv_state_variable_1 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_36051;
  case 4: ;
  if (ldv_state_variable_1 == 2) {
    mtdchar_mmap(mtd_fops_group2, ldvarg16);
    ldv_state_variable_1 = 2;
  } else {
  }
  if (ldv_state_variable_1 == 1) {
    mtdchar_mmap(mtd_fops_group2, ldvarg16);
    ldv_state_variable_1 = 1;
  } else {
  }
  goto ldv_36051;
  case 5: ;
  if (ldv_state_variable_1 == 2) {
    mtdchar_close(mtd_fops_group1, mtd_fops_group2);
    ldv_state_variable_1 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_36051;
  case 6: ;
  if (ldv_state_variable_1 == 2) {
    mtdchar_lseek(mtd_fops_group2, ldvarg15, ldvarg14);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_36051;
  case 7: ;
  if (ldv_state_variable_1 == 2) {
    mtdchar_unlocked_ioctl(mtd_fops_group2, ldvarg13, ldvarg12);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_36051;
  default:
  ldv_stop();
  }
  ldv_36051: ;
  return;
}
}
extern void *memset(void * , int , size_t ) ;
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
int ldv_module_refcounter = 1;
void ldv_module_get(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    ldv_module_refcounter = ldv_module_refcounter + 1;
  } else {
  }
  return;
}
}
int ldv_try_module_get(struct module *module )
{
  int module_get_succeeded ;
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    module_get_succeeded = ldv_undef_int();
    if (module_get_succeeded == 1) {
      ldv_module_refcounter = ldv_module_refcounter + 1;
      return (1);
    } else {
      return (0);
    }
  } else {
  }
  return (0);
}
}
void ldv_module_put(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    if (ldv_module_refcounter <= 1) {
      ldv_error();
    } else {
    }
    ldv_module_refcounter = ldv_module_refcounter - 1;
  } else {
  }
  return;
}
}
void ldv_module_put_and_exit(void)
{
  {
  ldv_module_put((struct module *)1);
  LDV_STOP: ;
  goto LDV_STOP;
}
}
unsigned int ldv_module_refcount(void)
{
  {
  return ((unsigned int )(ldv_module_refcounter + -1));
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_module_refcounter != 1) {
    ldv_error();
  } else {
  }
  return;
}
}
int __VERIFIER_nondet_int(void);
int __class_register(struct class *arg0, struct lock_class_key *arg1) {
  return __VERIFIER_nondet_int();
}
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
void __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __might_fault(const char *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int __register_chrdev(unsigned int arg0, unsigned int arg1, unsigned int arg2, const char *arg3, const struct file_operations *arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __request_module(bool arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __unregister_chrdev(unsigned int arg0, unsigned int arg1, unsigned int arg2, const char *arg3) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void add_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void bdi_destroy(struct backing_dev_info *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int bdi_init(struct backing_dev_info *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int bdi_register(struct backing_dev_info *arg0, struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
void bdput(struct block_device *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
void class_unregister(struct class *arg0) {
  return;
}
void deactivate_locked_super(struct super_block *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_set_name(struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
struct device *device_create(struct class *arg0, struct device *arg1, dev_t arg2, void *arg3, const char *arg4, ...) {
  return ldv_malloc(sizeof(struct device));
}
void device_destroy(struct class *arg0, dev_t arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int device_register(struct device *arg0) {
  return __VERIFIER_nondet_int();
}
void device_unregister(struct device *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
loff_t fixed_size_llseek(struct file *arg0, loff_t arg1, int arg2, loff_t arg3) {
  return __VERIFIER_nondet_long();
}
void generic_shutdown_super(struct super_block *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int idr_alloc(struct idr *arg0, void *arg1, int arg2, int arg3, gfp_t arg4) {
  return __VERIFIER_nondet_int();
}
void *idr_find_slowpath(struct idr *arg0, int arg1) {
  return ldv_malloc(0UL);
}
void *idr_get_next(struct idr *arg0, int *arg1) {
  return ldv_malloc(0UL);
}
void idr_remove(struct idr *arg0, int arg1) {
  return;
}
void *kmemdup(const void *arg0, size_t arg1, gfp_t arg2) {
  return ldv_malloc(0UL);
}
char *kstrdup(const char *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(char));
}
int __VERIFIER_nondet_int(void);
int kstrtouint(const char *arg0, unsigned int arg1, unsigned int *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_complete_21() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_late_21() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_noirq_21() {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_late_21() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_noirq_21() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_prepare_21() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_4() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_early_21() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_noirq_21() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_early_21() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_noirq_21() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_late_21() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_noirq_21() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_early_21() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_noirq_21() {
  return __VERIFIER_nondet_int();
}
void list_del(struct list_head *arg0) {
  return;
}
void lockref_get(struct lockref *arg0) {
  return;
}
struct block_device *lookup_bdev(const char *arg0) {
  return ldv_malloc(sizeof(struct block_device));
}
void *memdup_user(const void *arg0, size_t arg1) {
  return ldv_malloc(0UL);
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
struct proc_dir_entry *proc_create_data(const char *arg0, umode_t arg1, struct proc_dir_entry *arg2, const struct file_operations *arg3, void *arg4) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int register_reboot_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
void remove_proc_entry(const char *arg0, struct proc_dir_entry *arg1) {
  return;
}
void remove_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void schedule() {
  return;
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
struct super_block *sget(struct file_system_type *arg0, int (*arg1)(struct super_block *, void *), int (*arg2)(struct super_block *, void *), int arg3, void *arg4) {
  return ldv_malloc(sizeof(struct super_block));
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int simple_strtoul(const char *arg0, char **arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
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
int sysfs_create_files(struct kobject *arg0, const struct attribute **arg1) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_files(struct kobject *arg0, const struct attribute **arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int unregister_reboot_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int default_wake_function(wait_queue_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
