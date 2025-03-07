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
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u64 __be64;
typedef __u32 __wsum;
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
struct net_device;
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
typedef int pao_T__;
typedef int pao_T_____0;
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
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
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
struct dm_crypt_request;
struct crypt_config;
struct dm_target;
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
union __anonunion____missing_field_name_230 {
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
   union __anonunion____missing_field_name_230 __annonCompField64 ;
   unsigned short bi_vcnt ;
   unsigned short bi_max_vecs ;
   atomic_t __bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct bdi_writeback;
struct export_operations;
struct hd_geometry;
struct iovec;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
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
union __anonunion____missing_field_name_249 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion____missing_field_name_250 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion____missing_field_name_249 __annonCompField76 ;
   union __anonunion____missing_field_name_250 __annonCompField77 ;
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
struct device_type;
struct class;
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
union __anonunion____missing_field_name_251 {
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
   union __anonunion____missing_field_name_251 __annonCompField78 ;
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
struct bsg_class_device {
   struct device *class_dev ;
   struct device *parent ;
   int minor ;
   struct request_queue *queue ;
   struct kref ref ;
   void (*release)(struct device * ) ;
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
struct elevator_queue;
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
union __anonunion____missing_field_name_252 {
   struct call_single_data csd ;
   unsigned long fifo_time ;
};
struct blk_mq_ctx;
union __anonunion____missing_field_name_253 {
   struct hlist_node hash ;
   struct list_head ipi_list ;
};
union __anonunion____missing_field_name_254 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_256 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_257 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion____missing_field_name_255 {
   struct __anonstruct_elv_256 elv ;
   struct __anonstruct_flush_257 flush ;
};
struct request {
   struct list_head queuelist ;
   union __anonunion____missing_field_name_252 __annonCompField79 ;
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
   union __anonunion____missing_field_name_253 __annonCompField80 ;
   union __anonunion____missing_field_name_254 __annonCompField81 ;
   union __anonunion____missing_field_name_255 __annonCompField82 ;
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
struct crypto_ablkcipher;
struct crypto_async_request;
struct crypto_aead;
struct crypto_blkcipher;
struct crypto_hash;
struct crypto_tfm;
struct crypto_type;
struct aead_request;
struct aead_givcrypt_request;
struct skcipher_givcrypt_request;
struct crypto_async_request {
   struct list_head list ;
   void (*complete)(struct crypto_async_request * , int ) ;
   void *data ;
   struct crypto_tfm *tfm ;
   u32 flags ;
};
struct ablkcipher_request {
   struct crypto_async_request base ;
   unsigned int nbytes ;
   void *info ;
   struct scatterlist *src ;
   struct scatterlist *dst ;
   void *__ctx[] ;
};
struct blkcipher_desc {
   struct crypto_blkcipher *tfm ;
   void *info ;
   u32 flags ;
};
struct hash_desc {
   struct crypto_hash *tfm ;
   u32 flags ;
};
struct ablkcipher_alg {
   int (*setkey)(struct crypto_ablkcipher * , u8 const * , unsigned int ) ;
   int (*encrypt)(struct ablkcipher_request * ) ;
   int (*decrypt)(struct ablkcipher_request * ) ;
   int (*givencrypt)(struct skcipher_givcrypt_request * ) ;
   int (*givdecrypt)(struct skcipher_givcrypt_request * ) ;
   char const *geniv ;
   unsigned int min_keysize ;
   unsigned int max_keysize ;
   unsigned int ivsize ;
};
struct old_aead_alg {
   int (*setkey)(struct crypto_aead * , u8 const * , unsigned int ) ;
   int (*setauthsize)(struct crypto_aead * , unsigned int ) ;
   int (*encrypt)(struct aead_request * ) ;
   int (*decrypt)(struct aead_request * ) ;
   int (*givencrypt)(struct aead_givcrypt_request * ) ;
   int (*givdecrypt)(struct aead_givcrypt_request * ) ;
   char const *geniv ;
   unsigned int ivsize ;
   unsigned int maxauthsize ;
};
struct blkcipher_alg {
   int (*setkey)(struct crypto_tfm * , u8 const * , unsigned int ) ;
   int (*encrypt)(struct blkcipher_desc * , struct scatterlist * , struct scatterlist * ,
                  unsigned int ) ;
   int (*decrypt)(struct blkcipher_desc * , struct scatterlist * , struct scatterlist * ,
                  unsigned int ) ;
   char const *geniv ;
   unsigned int min_keysize ;
   unsigned int max_keysize ;
   unsigned int ivsize ;
};
struct cipher_alg {
   unsigned int cia_min_keysize ;
   unsigned int cia_max_keysize ;
   int (*cia_setkey)(struct crypto_tfm * , u8 const * , unsigned int ) ;
   void (*cia_encrypt)(struct crypto_tfm * , u8 * , u8 const * ) ;
   void (*cia_decrypt)(struct crypto_tfm * , u8 * , u8 const * ) ;
};
struct compress_alg {
   int (*coa_compress)(struct crypto_tfm * , u8 const * , unsigned int , u8 * ,
                       unsigned int * ) ;
   int (*coa_decompress)(struct crypto_tfm * , u8 const * , unsigned int , u8 * ,
                         unsigned int * ) ;
};
union __anonunion_cra_u_259 {
   struct ablkcipher_alg ablkcipher ;
   struct old_aead_alg aead ;
   struct blkcipher_alg blkcipher ;
   struct cipher_alg cipher ;
   struct compress_alg compress ;
};
struct crypto_alg {
   struct list_head cra_list ;
   struct list_head cra_users ;
   u32 cra_flags ;
   unsigned int cra_blocksize ;
   unsigned int cra_ctxsize ;
   unsigned int cra_alignmask ;
   int cra_priority ;
   atomic_t cra_refcnt ;
   char cra_name[64U] ;
   char cra_driver_name[64U] ;
   struct crypto_type const *cra_type ;
   union __anonunion_cra_u_259 cra_u ;
   int (*cra_init)(struct crypto_tfm * ) ;
   void (*cra_exit)(struct crypto_tfm * ) ;
   void (*cra_destroy)(struct crypto_alg * ) ;
   struct module *cra_module ;
};
struct ablkcipher_tfm {
   int (*setkey)(struct crypto_ablkcipher * , u8 const * , unsigned int ) ;
   int (*encrypt)(struct ablkcipher_request * ) ;
   int (*decrypt)(struct ablkcipher_request * ) ;
   int (*givencrypt)(struct skcipher_givcrypt_request * ) ;
   int (*givdecrypt)(struct skcipher_givcrypt_request * ) ;
   struct crypto_ablkcipher *base ;
   unsigned int ivsize ;
   unsigned int reqsize ;
};
struct blkcipher_tfm {
   void *iv ;
   int (*setkey)(struct crypto_tfm * , u8 const * , unsigned int ) ;
   int (*encrypt)(struct blkcipher_desc * , struct scatterlist * , struct scatterlist * ,
                  unsigned int ) ;
   int (*decrypt)(struct blkcipher_desc * , struct scatterlist * , struct scatterlist * ,
                  unsigned int ) ;
};
struct cipher_tfm {
   int (*cit_setkey)(struct crypto_tfm * , u8 const * , unsigned int ) ;
   void (*cit_encrypt_one)(struct crypto_tfm * , u8 * , u8 const * ) ;
   void (*cit_decrypt_one)(struct crypto_tfm * , u8 * , u8 const * ) ;
};
struct hash_tfm {
   int (*init)(struct hash_desc * ) ;
   int (*update)(struct hash_desc * , struct scatterlist * , unsigned int ) ;
   int (*final)(struct hash_desc * , u8 * ) ;
   int (*digest)(struct hash_desc * , struct scatterlist * , unsigned int , u8 * ) ;
   int (*setkey)(struct crypto_hash * , u8 const * , unsigned int ) ;
   unsigned int digestsize ;
};
struct compress_tfm {
   int (*cot_compress)(struct crypto_tfm * , u8 const * , unsigned int , u8 * ,
                       unsigned int * ) ;
   int (*cot_decompress)(struct crypto_tfm * , u8 const * , unsigned int , u8 * ,
                         unsigned int * ) ;
};
union __anonunion_crt_u_260 {
   struct ablkcipher_tfm ablkcipher ;
   struct blkcipher_tfm blkcipher ;
   struct cipher_tfm cipher ;
   struct hash_tfm hash ;
   struct compress_tfm compress ;
};
struct crypto_tfm {
   u32 crt_flags ;
   union __anonunion_crt_u_260 crt_u ;
   void (*exit)(struct crypto_tfm * ) ;
   struct crypto_alg *__crt_alg ;
   void *__crt_ctx[] ;
};
struct crypto_ablkcipher {
   struct crypto_tfm base ;
};
struct crypto_blkcipher {
   struct crypto_tfm base ;
};
struct crypto_cipher {
   struct crypto_tfm base ;
};
struct crypto_hash {
   struct crypto_tfm base ;
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
struct crypto_shash;
struct shash_desc {
   struct crypto_shash *tfm ;
   u32 flags ;
   void *__ctx[] ;
};
struct shash_alg {
   int (*init)(struct shash_desc * ) ;
   int (*update)(struct shash_desc * , u8 const * , unsigned int ) ;
   int (*final)(struct shash_desc * , u8 * ) ;
   int (*finup)(struct shash_desc * , u8 const * , unsigned int , u8 * ) ;
   int (*digest)(struct shash_desc * , u8 const * , unsigned int , u8 * ) ;
   int (*export)(struct shash_desc * , void * ) ;
   int (*import)(struct shash_desc * , void const * ) ;
   int (*setkey)(struct crypto_shash * , u8 const * , unsigned int ) ;
   unsigned int descsize ;
   unsigned int digestsize ;
   unsigned int statesize ;
   struct crypto_alg base ;
};
struct crypto_shash {
   unsigned int descsize ;
   struct crypto_tfm base ;
};
struct md5_state {
   u32 hash[4U] ;
   u32 block[16U] ;
   u64 byte_count ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_267 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_267 __annonCompField83 ;
   unsigned long nr_segs ;
};
struct in6_addr;
struct sk_buff;
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
union __anonunion_in6_u_268 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_268 in6_u ;
};
struct pipe_buf_operations;
struct pipe_buffer {
   struct page *page ;
   unsigned int offset ;
   unsigned int len ;
   struct pipe_buf_operations const *ops ;
   unsigned int flags ;
   unsigned long private ;
};
struct pipe_inode_info {
   struct mutex mutex ;
   wait_queue_head_t wait ;
   unsigned int nrbufs ;
   unsigned int curbuf ;
   unsigned int buffers ;
   unsigned int readers ;
   unsigned int writers ;
   unsigned int files ;
   unsigned int waiting_writers ;
   unsigned int r_counter ;
   unsigned int w_counter ;
   struct page *tmp_page ;
   struct fasync_struct *fasync_readers ;
   struct fasync_struct *fasync_writers ;
   struct pipe_buffer *bufs ;
};
struct pipe_buf_operations {
   int can_merge ;
   int (*confirm)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   void (*release)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   int (*steal)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   void (*get)(struct pipe_inode_info * , struct pipe_buffer * ) ;
};
struct nf_conntrack {
   atomic_t use ;
};
union __anonunion____missing_field_name_273 {
   struct net_device *physoutdev ;
   char neigh_header[8U] ;
};
union __anonunion____missing_field_name_274 {
   __be32 ipv4_daddr ;
   struct in6_addr ipv6_daddr ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned char orig_proto ;
   bool pkt_otherhost ;
   __u16 frag_max_size ;
   unsigned int mask ;
   struct net_device *physindev ;
   union __anonunion____missing_field_name_273 __annonCompField87 ;
   union __anonunion____missing_field_name_274 __annonCompField88 ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct____missing_field_name_277 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_276 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_277 __annonCompField89 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_276 __annonCompField90 ;
};
union __anonunion____missing_field_name_280 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_279 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_280 __annonCompField91 ;
};
union __anonunion____missing_field_name_278 {
   struct __anonstruct____missing_field_name_279 __annonCompField92 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_282 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_281 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_282 __annonCompField94 ;
};
union __anonunion____missing_field_name_283 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_284 {
   __u32 mark ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_285 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_278 __annonCompField93 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   void (*destructor)(struct sk_buff * ) ;
   struct sec_path *sp ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   __u16 queue_mapping ;
   unsigned char cloned : 1 ;
   unsigned char nohdr : 1 ;
   unsigned char fclone : 2 ;
   unsigned char peeked : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char xmit_more : 1 ;
   __u32 headers_start[0U] ;
   __u8 __pkt_type_offset[0U] ;
   unsigned char pkt_type : 3 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ignore_df : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char nf_trace : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_hash : 1 ;
   unsigned char sw_hash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char encapsulation : 1 ;
   unsigned char encap_hdr_csum : 1 ;
   unsigned char csum_valid : 1 ;
   unsigned char csum_complete_sw : 1 ;
   unsigned char csum_level : 2 ;
   unsigned char csum_bad : 1 ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char inner_protocol_type : 1 ;
   unsigned char remcsum_offload : 1 ;
   __u16 tc_index ;
   __u16 tc_verd ;
   union __anonunion____missing_field_name_281 __annonCompField95 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_283 __annonCompField96 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_284 __annonCompField97 ;
   union __anonunion____missing_field_name_285 __annonCompField98 ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __be16 protocol ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   __u32 headers_end[0U] ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct crypto_type {
   unsigned int (*ctxsize)(struct crypto_alg * , u32 , u32 ) ;
   unsigned int (*extsize)(struct crypto_alg * ) ;
   int (*init)(struct crypto_tfm * , u32 , u32 ) ;
   int (*init_tfm)(struct crypto_tfm * ) ;
   void (*show)(struct seq_file * , struct crypto_alg * ) ;
   int (*report)(struct sk_buff * , struct crypto_alg * ) ;
   struct crypto_alg *(*lookup)(char const * , u32 , u32 ) ;
   unsigned int type ;
   unsigned int maskclear ;
   unsigned int maskset ;
   unsigned int tfmsize ;
};
struct dm_dev;
struct dm_table;
enum ldv_28544 {
    STATUSTYPE_INFO = 0,
    STATUSTYPE_TABLE = 1
} ;
typedef enum ldv_28544 status_type_t;
union map_info {
   void *ptr ;
};
struct dm_dev {
   struct block_device *bdev ;
   fmode_t mode ;
   char name[16U] ;
};
struct target_type {
   uint64_t features ;
   char const *name ;
   struct module *module ;
   unsigned int version[3U] ;
   int (*ctr)(struct dm_target * , unsigned int , char ** ) ;
   void (*dtr)(struct dm_target * ) ;
   int (*map)(struct dm_target * , struct bio * ) ;
   int (*map_rq)(struct dm_target * , struct request * , union map_info * ) ;
   int (*clone_and_map_rq)(struct dm_target * , struct request * , union map_info * ,
                           struct request ** ) ;
   void (*release_clone_rq)(struct request * ) ;
   int (*end_io)(struct dm_target * , struct bio * , int ) ;
   int (*rq_end_io)(struct dm_target * , struct request * , int , union map_info * ) ;
   void (*presuspend)(struct dm_target * ) ;
   void (*presuspend_undo)(struct dm_target * ) ;
   void (*postsuspend)(struct dm_target * ) ;
   int (*preresume)(struct dm_target * ) ;
   void (*resume)(struct dm_target * ) ;
   void (*status)(struct dm_target * , status_type_t , unsigned int , char * , unsigned int ) ;
   int (*message)(struct dm_target * , unsigned int , char ** ) ;
   int (*ioctl)(struct dm_target * , unsigned int , unsigned long ) ;
   int (*merge)(struct dm_target * , struct bvec_merge_data * , struct bio_vec * ,
                int ) ;
   int (*busy)(struct dm_target * ) ;
   int (*iterate_devices)(struct dm_target * , int (*)(struct dm_target * , struct dm_dev * ,
                                                       sector_t , sector_t , void * ) ,
                          void * ) ;
   void (*io_hints)(struct dm_target * , struct queue_limits * ) ;
   struct list_head list ;
};
struct dm_target {
   struct dm_table *table ;
   struct target_type *type ;
   sector_t begin ;
   sector_t len ;
   uint32_t max_io_len ;
   unsigned int num_flush_bios ;
   unsigned int num_discard_bios ;
   unsigned int num_write_same_bios ;
   unsigned int per_bio_data_size ;
   unsigned int (*num_write_bios)(struct dm_target * , struct bio * ) ;
   void *private ;
   char *error ;
   bool flush_supported ;
   bool discards_supported ;
   bool split_discard_bios ;
   bool discard_zeroes_data_unsupported ;
};
struct dm_arg_set {
   unsigned int argc ;
   char **argv ;
};
struct dm_arg {
   unsigned int min ;
   unsigned int max ;
   char *error ;
};
struct convert_context {
   struct completion restart ;
   struct bio *bio_in ;
   struct bio *bio_out ;
   struct bvec_iter iter_in ;
   struct bvec_iter iter_out ;
   sector_t cc_sector ;
   atomic_t cc_pending ;
   struct ablkcipher_request *req ;
};
struct dm_crypt_io {
   struct crypt_config *cc ;
   struct bio *base_bio ;
   struct work_struct work ;
   struct convert_context ctx ;
   atomic_t io_pending ;
   int error ;
   sector_t sector ;
   struct rb_node rb_node ;
};
struct dm_crypt_request {
   struct convert_context *ctx ;
   struct scatterlist sg_in ;
   struct scatterlist sg_out ;
   sector_t iv_sector ;
};
struct crypt_iv_operations {
   int (*ctr)(struct crypt_config * , struct dm_target * , char const * ) ;
   void (*dtr)(struct crypt_config * ) ;
   int (*init)(struct crypt_config * ) ;
   int (*wipe)(struct crypt_config * ) ;
   int (*generator)(struct crypt_config * , u8 * , struct dm_crypt_request * ) ;
   int (*post)(struct crypt_config * , u8 * , struct dm_crypt_request * ) ;
};
struct iv_essiv_private {
   struct crypto_hash *hash_tfm ;
   u8 *salt ;
};
struct iv_benbi_private {
   int shift ;
};
struct iv_lmk_private {
   struct crypto_shash *hash_tfm ;
   u8 *seed ;
};
struct iv_tcw_private {
   struct crypto_shash *crc32_tfm ;
   u8 *iv_seed ;
   u8 *whitening ;
};
union __anonunion_iv_gen_private_294 {
   struct iv_essiv_private essiv ;
   struct iv_benbi_private benbi ;
   struct iv_lmk_private lmk ;
   struct iv_tcw_private tcw ;
};
struct crypt_config {
   struct dm_dev *dev ;
   sector_t start ;
   mempool_t *req_pool ;
   mempool_t *page_pool ;
   struct bio_set *bs ;
   struct mutex bio_alloc_lock ;
   struct workqueue_struct *io_queue ;
   struct workqueue_struct *crypt_queue ;
   struct task_struct *write_thread ;
   wait_queue_head_t write_thread_wait ;
   struct rb_root write_tree ;
   char *cipher ;
   char *cipher_string ;
   struct crypt_iv_operations *iv_gen_ops ;
   union __anonunion_iv_gen_private_294 iv_gen_private ;
   sector_t iv_offset ;
   unsigned int iv_size ;
   void *iv_private ;
   struct crypto_ablkcipher **tfms ;
   unsigned int tfms_count ;
   unsigned int dmreq_start ;
   unsigned int per_bio_data_size ;
   unsigned long flags ;
   unsigned int key_size ;
   unsigned int key_parts ;
   unsigned int key_extra_size ;
   u8 key[0U] ;
};
typedef bool ldv_func_ret_type;
typedef bool ldv_func_ret_type___0;
typedef bool ldv_func_ret_type___1;
typedef bool ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
void *__builtin_alloca(unsigned long ) ;
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
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
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
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
__inline static __u64 __arch_swab64(__u64 val )
{
  {
  __asm__ ("bswapq %0": "=r" (val): "0" (val));
  return (val);
}
}
__inline static __u64 __fswab64(__u64 val )
{
  __u64 tmp ;
  {
  tmp = __arch_swab64(val);
  return (tmp);
}
}
__inline static int __ilog2_u32(u32 n )
{
  int tmp ;
  {
  tmp = fls((int )n);
  return (tmp + -1);
}
}
__inline static bool is_power_of_2(unsigned long n )
{
  {
  return ((bool )(n != 0UL && ((n - 1UL) & n) == 0UL));
}
}
extern int printk(char const * , ...) ;
extern void ___might_sleep(char const * , int , int ) ;
extern int kstrtou8(char const * , unsigned int , u8 * ) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern int scnprintf(char * , size_t , char const * , ...) ;
extern int sscanf(char const * , char const * , ...) ;
bool ldv_is_err(void const *ptr ) ;
void *ldv_err_ptr(long error ) ;
long ldv_ptr_err(void const *ptr ) ;
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
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern int strcmp(char const * , char const * ) ;
extern int strcasecmp(char const * , char const * ) ;
extern char *strchr(char const * , int ) ;
extern char *strsep(char ** , char const * ) ;
extern char *kstrdup(char const * , gfp_t ) ;
extern void memzero_explicit(void * , size_t ) ;
extern int __bitmap_weight(unsigned long const * , unsigned int ) ;
__inline static int bitmap_weight(unsigned long const *src , unsigned int nbits )
{
  int tmp___0 ;
  {
  tmp___0 = __bitmap_weight(src, nbits);
  return (tmp___0);
}
}
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern int nr_cpu_ids ;
extern struct cpumask const * const cpu_online_mask ;
__inline static unsigned int cpumask_weight(struct cpumask const *srcp )
{
  int tmp ;
  {
  tmp = bitmap_weight((unsigned long const *)(& srcp->bits), (unsigned int )nr_cpu_ids);
  return ((unsigned int )tmp);
}
}
__inline static void *ERR_PTR(long error ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
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
__inline static void atomic_dec(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0": "+m" (v->counter));
  return;
}
}
__inline static int atomic_dec_and_test(atomic_t *v )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0; sete %1": "+m" (v->counter),
                       "=qm" (c): : "memory");
  return ((int )((signed char )c) != 0);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_15(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 ) ;
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
void ldv_mutex_lock_13(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_bio_alloc_lock_of_crypt_config(struct mutex *lock ) ;
void ldv_mutex_unlock_bio_alloc_lock_of_crypt_config(struct mutex *lock ) ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
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
  goto ldv_6565;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6565;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6565;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_6565;
  default:
  __bad_percpu_size();
  }
  ldv_6565: ;
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
  goto ldv_6577;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6577;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6577;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6577;
  default:
  __bad_percpu_size();
  }
  ldv_6577: ;
  return;
}
}
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField17.rlock);
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->__annonCompField17.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->__annonCompField17.rlock);
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
extern int default_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void remove_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
__inline static void __add_wait_queue(wait_queue_head_t *head , wait_queue_t *new )
{
  {
  list_add(& new->task_list, & head->task_list);
  return;
}
}
__inline static void __remove_wait_queue(wait_queue_head_t *head , wait_queue_t *old )
{
  {
  list_del(& old->task_list);
  return;
}
}
extern void __wake_up_locked(wait_queue_head_t * , unsigned int , int ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  return;
}
}
__inline static void reinit_completion(struct completion *x )
{
  {
  x->done = 0U;
  return;
}
}
extern void wait_for_completion(struct completion * ) ;
extern void complete(struct completion * ) ;
extern void rb_insert_color(struct rb_node * , struct rb_root * ) ;
extern void rb_erase(struct rb_node * , struct rb_root * ) ;
extern struct rb_node *rb_first(struct rb_root const * ) ;
__inline static void rb_link_node(struct rb_node *node , struct rb_node *parent ,
                                  struct rb_node **rb_link )
{
  struct rb_node *tmp ;
  {
  node->__rb_parent_color = (unsigned long )parent;
  tmp = (struct rb_node *)0;
  node->rb_right = tmp;
  node->rb_left = tmp;
  *rb_link = node;
  return;
}
}
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
void ldv_destroy_workqueue_19(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_destroy_workqueue_20(struct workqueue_struct *ldv_func_arg1 ) ;
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
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_5(8192, wq, work);
  return (tmp);
}
}
extern void schedule(void) ;
extern int wake_up_process(struct task_struct * ) ;
extern int _cond_resched(void) ;
extern void kfree(void const * ) ;
extern void kzfree(void const * ) ;
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
int ldv_state_variable_8 ;
struct work_struct *ldv_work_struct_1_0 ;
struct dm_crypt_request *crypt_iv_tcw_ops_group1 ;
struct work_struct *ldv_work_struct_1_1 ;
int ldv_state_variable_10 ;
struct crypt_config *crypt_iv_tcw_ops_group0 ;
struct work_struct *ldv_work_struct_1_3 ;
struct work_struct *ldv_work_struct_2_1 ;
int ldv_work_1_3 ;
int ldv_state_variable_6 ;
struct crypt_config *crypt_iv_lmk_ops_group0 ;
int ldv_state_variable_0 ;
struct crypt_config *crypt_iv_essiv_ops_group0 ;
int ldv_state_variable_5 ;
int ldv_state_variable_2 ;
int ldv_work_1_1 ;
int ldv_work_2_0 ;
struct dm_crypt_request *crypt_iv_lmk_ops_group1 ;
int ldv_work_1_2 ;
struct crypt_config *crypt_iv_benbi_ops_group0 ;
int LDV_IN_INTERRUPT = 1;
struct work_struct *ldv_work_struct_2_3 ;
struct work_struct *ldv_work_struct_2_0 ;
struct dm_target *crypt_target_group1 ;
struct work_struct *ldv_work_struct_1_2 ;
int ldv_state_variable_9 ;
struct work_struct *ldv_work_struct_2_2 ;
int ldv_work_2_2 ;
int ldv_state_variable_3 ;
int ref_cnt ;
int ldv_work_1_0 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_work_2_3 ;
int ldv_state_variable_4 ;
int ldv_work_2_1 ;
void call_and_disable_work_1(struct work_struct *work ) ;
void disable_work_2(struct work_struct *work ) ;
void disable_work_1(struct work_struct *work ) ;
void ldv_initialize_crypt_iv_operations_8(void) ;
void work_init_2(void) ;
void work_init_1(void) ;
void call_and_disable_all_2(int state ) ;
void call_and_disable_all_1(int state ) ;
void invoke_work_1(void) ;
void activate_work_2(struct work_struct *work , int state ) ;
void ldv_target_type_3(void) ;
void ldv_initialize_crypt_iv_operations_5(void) ;
void activate_work_1(struct work_struct *work , int state ) ;
void call_and_disable_work_2(struct work_struct *work ) ;
void ldv_initialize_crypt_iv_operations_7(void) ;
void ldv_initialize_crypt_iv_operations_4(void) ;
void invoke_work_2(void) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
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
__inline static void *kmap_atomic(struct page *page )
{
  void *tmp ;
  {
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  pagefault_disable();
  tmp = lowmem_page_address((struct page const *)page);
  return (tmp);
}
}
__inline static void __kunmap_atomic(void *addr )
{
  {
  pagefault_enable();
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  return;
}
}
extern mempool_t *mempool_create(int , mempool_alloc_t * , mempool_free_t * , void * ) ;
extern void mempool_destroy(mempool_t * ) ;
extern void *mempool_alloc(mempool_t * , gfp_t ) ;
extern void mempool_free(void * , mempool_t * ) ;
extern void *mempool_kmalloc(gfp_t , void * ) ;
extern void mempool_kfree(void * , void * ) ;
__inline static mempool_t *mempool_create_kmalloc_pool(int min_nr , size_t size )
{
  mempool_t *tmp ;
  {
  tmp = mempool_create(min_nr, & mempool_kmalloc, & mempool_kfree, (void *)size);
  return (tmp);
}
}
extern void *mempool_alloc_pages(gfp_t , void * ) ;
extern void mempool_free_pages(void * , void * ) ;
__inline static mempool_t *mempool_create_page_pool(int min_nr , int order )
{
  mempool_t *tmp ;
  {
  tmp = mempool_create(min_nr, & mempool_alloc_pages, & mempool_free_pages, (void *)((long )order));
  return (tmp);
}
}
__inline static void bvec_iter_advance(struct bio_vec *bv , struct bvec_iter *iter ,
                                       unsigned int bytes )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned int len ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned int _min1___0 ;
  unsigned int _min2___0 ;
  {
  __ret_warn_once = iter->bi_size < bytes;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_fmt("include/linux/bio.h", 211, "Attempted to advance past end of bvec iter\n");
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
  goto ldv_28626;
  ldv_28625:
  _min1 = bytes;
  _min1___0 = iter->bi_size;
  _min2___0 = (bv + (unsigned long )iter->bi_idx)->bv_len - iter->bi_bvec_done;
  _min2 = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  len = _min1 < _min2 ? _min1 : _min2;
  bytes = bytes - len;
  iter->bi_size = iter->bi_size - len;
  iter->bi_bvec_done = iter->bi_bvec_done + len;
  if (iter->bi_bvec_done == (bv + (unsigned long )iter->bi_idx)->bv_len) {
    iter->bi_bvec_done = 0U;
    iter->bi_idx = iter->bi_idx + 1U;
  } else {
  }
  ldv_28626: ;
  if (bytes != 0U) {
    goto ldv_28625;
  } else {
  }
  return;
}
}
__inline static void bio_advance_iter(struct bio *bio , struct bvec_iter *iter , unsigned int bytes )
{
  {
  iter->bi_sector = iter->bi_sector + (sector_t )(bytes >> 9);
  if (((unsigned long long )bio->bi_rw & 640ULL) != 0ULL) {
    iter->bi_size = iter->bi_size - bytes;
  } else {
    bvec_iter_advance(bio->bi_io_vec, iter, bytes);
  }
  return;
}
}
extern struct bio_set *bioset_create(unsigned int , unsigned int ) ;
extern void bioset_free(struct bio_set * ) ;
extern struct bio *bio_alloc_bioset(gfp_t , int , struct bio_set * ) ;
extern void bio_put(struct bio * ) ;
extern struct bio *bio_clone_fast(struct bio * , gfp_t , struct bio_set * ) ;
extern void bio_endio(struct bio * , int ) ;
__inline static void sg_assign_page(struct scatterlist *sg , struct page *page )
{
  unsigned long page_link ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  page_link = sg->page_link & 3UL;
  tmp = ldv__builtin_expect(((unsigned long )page & 3UL) != 0UL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (90), "i" (12UL));
    ldv_31181: ;
    goto ldv_31181;
  } else {
  }
  tmp___0 = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (92), "i" (12UL));
    ldv_31182: ;
    goto ldv_31182;
  } else {
  }
  tmp___1 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (93), "i" (12UL));
    ldv_31183: ;
    goto ldv_31183;
  } else {
  }
  sg->page_link = page_link | (unsigned long )page;
  return;
}
}
__inline static void sg_set_page(struct scatterlist *sg , struct page *page , unsigned int len ,
                                 unsigned int offset )
{
  {
  sg_assign_page(sg, page);
  sg->offset = offset;
  sg->length = len;
  return;
}
}
__inline static struct page *sg_page(struct scatterlist *sg )
{
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (123), "i" (12UL));
    ldv_31193: ;
    goto ldv_31193;
  } else {
  }
  tmp___0 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (124), "i" (12UL));
    ldv_31194: ;
    goto ldv_31194;
  } else {
  }
  return ((struct page *)(sg->page_link & 0xfffffffffffffffcUL));
}
}
extern void sg_init_table(struct scatterlist * , unsigned int ) ;
extern void sg_init_one(struct scatterlist * , void const * , unsigned int ) ;
extern void generic_make_request(struct bio * ) ;
__inline static struct request_queue *bdev_get_queue(struct block_device *bdev )
{
  {
  return ((bdev->bd_disk)->queue);
}
}
extern void blk_start_plug(struct blk_plug * ) ;
extern void blk_finish_plug(struct blk_plug * ) ;
extern struct crypto_tfm *crypto_alloc_base(char const * , u32 , u32 ) ;
extern void crypto_destroy_tfm(void * , struct crypto_tfm * ) ;
__inline static void crypto_free_tfm(struct crypto_tfm *tfm )
{
  {
  return;
}
}
__inline static unsigned int crypto_tfm_alg_blocksize(struct crypto_tfm *tfm )
{
  {
  return ((tfm->__crt_alg)->cra_blocksize);
}
}
__inline static unsigned int crypto_tfm_alg_alignmask(struct crypto_tfm *tfm )
{
  {
  return ((tfm->__crt_alg)->cra_alignmask);
}
}
__inline static struct crypto_ablkcipher *__crypto_ablkcipher_cast(struct crypto_tfm *tfm )
{
  {
  return ((struct crypto_ablkcipher *)tfm);
}
}
extern struct crypto_ablkcipher *crypto_alloc_ablkcipher(char const * , u32 , u32 ) ;
__inline static struct crypto_tfm *crypto_ablkcipher_tfm(struct crypto_ablkcipher *tfm )
{
  {
  return (& tfm->base);
}
}
__inline static void crypto_free_ablkcipher(struct crypto_ablkcipher *tfm )
{
  struct crypto_tfm *tmp ;
  {
  tmp = crypto_ablkcipher_tfm(tfm);
  crypto_free_tfm(tmp);
  return;
}
}
__inline static struct ablkcipher_tfm *crypto_ablkcipher_crt(struct crypto_ablkcipher *tfm )
{
  struct crypto_tfm *tmp ;
  {
  tmp = crypto_ablkcipher_tfm(tfm);
  return (& tmp->crt_u.ablkcipher);
}
}
__inline static unsigned int crypto_ablkcipher_ivsize(struct crypto_ablkcipher *tfm )
{
  struct ablkcipher_tfm *tmp ;
  {
  tmp = crypto_ablkcipher_crt(tfm);
  return (tmp->ivsize);
}
}
__inline static unsigned int crypto_ablkcipher_blocksize(struct crypto_ablkcipher *tfm )
{
  struct crypto_tfm *tmp ;
  unsigned int tmp___0 ;
  {
  tmp = crypto_ablkcipher_tfm(tfm);
  tmp___0 = crypto_tfm_alg_blocksize(tmp);
  return (tmp___0);
}
}
__inline static unsigned int crypto_ablkcipher_alignmask(struct crypto_ablkcipher *tfm )
{
  struct crypto_tfm *tmp ;
  unsigned int tmp___0 ;
  {
  tmp = crypto_ablkcipher_tfm(tfm);
  tmp___0 = crypto_tfm_alg_alignmask(tmp);
  return (tmp___0);
}
}
__inline static int crypto_ablkcipher_setkey(struct crypto_ablkcipher *tfm , u8 const *key ,
                                             unsigned int keylen )
{
  struct ablkcipher_tfm *crt ;
  struct ablkcipher_tfm *tmp ;
  int tmp___0 ;
  {
  tmp = crypto_ablkcipher_crt(tfm);
  crt = tmp;
  tmp___0 = (*(crt->setkey))(crt->base, key, keylen);
  return (tmp___0);
}
}
__inline static struct crypto_ablkcipher *crypto_ablkcipher_reqtfm(struct ablkcipher_request *req )
{
  struct crypto_ablkcipher *tmp ;
  {
  tmp = __crypto_ablkcipher_cast(req->base.tfm);
  return (tmp);
}
}
__inline static int crypto_ablkcipher_encrypt(struct ablkcipher_request *req )
{
  struct ablkcipher_tfm *crt ;
  struct crypto_ablkcipher *tmp ;
  struct ablkcipher_tfm *tmp___0 ;
  int tmp___1 ;
  {
  tmp = crypto_ablkcipher_reqtfm(req);
  tmp___0 = crypto_ablkcipher_crt(tmp);
  crt = tmp___0;
  tmp___1 = (*(crt->encrypt))(req);
  return (tmp___1);
}
}
__inline static int crypto_ablkcipher_decrypt(struct ablkcipher_request *req )
{
  struct ablkcipher_tfm *crt ;
  struct crypto_ablkcipher *tmp ;
  struct ablkcipher_tfm *tmp___0 ;
  int tmp___1 ;
  {
  tmp = crypto_ablkcipher_reqtfm(req);
  tmp___0 = crypto_ablkcipher_crt(tmp);
  crt = tmp___0;
  tmp___1 = (*(crt->decrypt))(req);
  return (tmp___1);
}
}
__inline static unsigned int crypto_ablkcipher_reqsize(struct crypto_ablkcipher *tfm )
{
  struct ablkcipher_tfm *tmp ;
  {
  tmp = crypto_ablkcipher_crt(tfm);
  return (tmp->reqsize);
}
}
__inline static void ablkcipher_request_set_tfm(struct ablkcipher_request *req , struct crypto_ablkcipher *tfm )
{
  struct ablkcipher_tfm *tmp ;
  {
  tmp = crypto_ablkcipher_crt(tfm);
  req->base.tfm = crypto_ablkcipher_tfm(tmp->base);
  return;
}
}
__inline static void ablkcipher_request_set_callback(struct ablkcipher_request *req ,
                                                     u32 flags , void (*compl)(struct crypto_async_request * ,
                                                                               int ) ,
                                                     void *data )
{
  {
  req->base.complete = compl;
  req->base.data = data;
  req->base.flags = flags;
  return;
}
}
__inline static void ablkcipher_request_set_crypt(struct ablkcipher_request *req ,
                                                  struct scatterlist *src , struct scatterlist *dst ,
                                                  unsigned int nbytes , void *iv )
{
  {
  req->src = src;
  req->dst = dst;
  req->nbytes = nbytes;
  req->info = iv;
  return;
}
}
__inline static struct crypto_cipher *__crypto_cipher_cast(struct crypto_tfm *tfm )
{
  {
  return ((struct crypto_cipher *)tfm);
}
}
__inline static struct crypto_cipher *crypto_alloc_cipher(char const *alg_name ,
                                                          u32 type , u32 mask )
{
  struct crypto_tfm *tmp ;
  struct crypto_cipher *tmp___0 ;
  {
  type = type & 4294967280U;
  type = type | 1U;
  mask = mask | 15U;
  tmp = crypto_alloc_base(alg_name, type, mask);
  tmp___0 = __crypto_cipher_cast(tmp);
  return (tmp___0);
}
}
__inline static struct crypto_tfm *crypto_cipher_tfm(struct crypto_cipher *tfm )
{
  {
  return (& tfm->base);
}
}
__inline static void crypto_free_cipher(struct crypto_cipher *tfm )
{
  struct crypto_tfm *tmp ;
  {
  tmp = crypto_cipher_tfm(tfm);
  crypto_free_tfm(tmp);
  return;
}
}
__inline static struct cipher_tfm *crypto_cipher_crt(struct crypto_cipher *tfm )
{
  struct crypto_tfm *tmp ;
  {
  tmp = crypto_cipher_tfm(tfm);
  return (& tmp->crt_u.cipher);
}
}
__inline static unsigned int crypto_cipher_blocksize(struct crypto_cipher *tfm )
{
  struct crypto_tfm *tmp ;
  unsigned int tmp___0 ;
  {
  tmp = crypto_cipher_tfm(tfm);
  tmp___0 = crypto_tfm_alg_blocksize(tmp);
  return (tmp___0);
}
}
__inline static int crypto_cipher_setkey(struct crypto_cipher *tfm , u8 const *key ,
                                         unsigned int keylen )
{
  struct cipher_tfm *tmp ;
  struct crypto_tfm *tmp___0 ;
  int tmp___1 ;
  {
  tmp = crypto_cipher_crt(tfm);
  tmp___0 = crypto_cipher_tfm(tfm);
  tmp___1 = (*(tmp->cit_setkey))(tmp___0, key, keylen);
  return (tmp___1);
}
}
__inline static void crypto_cipher_encrypt_one(struct crypto_cipher *tfm , u8 *dst ,
                                               u8 const *src )
{
  struct cipher_tfm *tmp ;
  struct crypto_tfm *tmp___0 ;
  {
  tmp = crypto_cipher_crt(tfm);
  tmp___0 = crypto_cipher_tfm(tfm);
  (*(tmp->cit_encrypt_one))(tmp___0, dst, src);
  return;
}
}
__inline static struct crypto_hash *__crypto_hash_cast(struct crypto_tfm *tfm )
{
  {
  return ((struct crypto_hash *)tfm);
}
}
__inline static struct crypto_hash *crypto_alloc_hash(char const *alg_name , u32 type ,
                                                      u32 mask )
{
  struct crypto_tfm *tmp ;
  struct crypto_hash *tmp___0 ;
  {
  type = type & 4294967280U;
  mask = mask & 4294967280U;
  type = type | 8U;
  mask = mask | 14U;
  tmp = crypto_alloc_base(alg_name, type, mask);
  tmp___0 = __crypto_hash_cast(tmp);
  return (tmp___0);
}
}
__inline static struct crypto_tfm *crypto_hash_tfm(struct crypto_hash *tfm )
{
  {
  return (& tfm->base);
}
}
__inline static void crypto_free_hash(struct crypto_hash *tfm )
{
  struct crypto_tfm *tmp ;
  {
  tmp = crypto_hash_tfm(tfm);
  crypto_free_tfm(tmp);
  return;
}
}
__inline static struct hash_tfm *crypto_hash_crt(struct crypto_hash *tfm )
{
  struct crypto_tfm *tmp ;
  {
  tmp = crypto_hash_tfm(tfm);
  return (& tmp->crt_u.hash);
}
}
__inline static unsigned int crypto_hash_digestsize(struct crypto_hash *tfm )
{
  struct hash_tfm *tmp ;
  {
  tmp = crypto_hash_crt(tfm);
  return (tmp->digestsize);
}
}
__inline static int crypto_hash_digest(struct hash_desc *desc , struct scatterlist *sg ,
                                       unsigned int nbytes , u8 *out )
{
  struct hash_tfm *tmp ;
  int tmp___0 ;
  {
  tmp = crypto_hash_crt(desc->tfm);
  tmp___0 = (*(tmp->digest))(desc, sg, nbytes, out);
  return (tmp___0);
}
}
extern struct task_struct *kthread_create_on_node(int (*)(void * ) , void * , int ,
                                                  char const * , ...) ;
extern int kthread_stop(struct task_struct * ) ;
extern bool kthread_should_stop(void) ;
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
extern struct crypto_shash *crypto_alloc_shash(char const * , u32 , u32 ) ;
__inline static struct crypto_tfm *crypto_shash_tfm(struct crypto_shash *tfm )
{
  {
  return (& tfm->base);
}
}
__inline static void crypto_free_shash(struct crypto_shash *tfm )
{
  struct crypto_tfm *tmp ;
  {
  tmp = crypto_shash_tfm(tfm);
  crypto_destroy_tfm((void *)tfm, tmp);
  return;
}
}
__inline static struct shash_alg *__crypto_shash_alg(struct crypto_alg *alg )
{
  struct crypto_alg const *__mptr ;
  {
  __mptr = (struct crypto_alg const *)alg;
  return ((struct shash_alg *)__mptr + 0xffffffffffffffb0UL);
}
}
__inline static struct shash_alg *crypto_shash_alg(struct crypto_shash *tfm )
{
  struct crypto_tfm *tmp ;
  struct shash_alg *tmp___0 ;
  {
  tmp = crypto_shash_tfm(tfm);
  tmp___0 = __crypto_shash_alg(tmp->__crt_alg);
  return (tmp___0);
}
}
__inline static unsigned int crypto_shash_digestsize(struct crypto_shash *tfm )
{
  struct shash_alg *tmp ;
  {
  tmp = crypto_shash_alg(tfm);
  return (tmp->digestsize);
}
}
__inline static unsigned int crypto_shash_descsize(struct crypto_shash *tfm )
{
  {
  return (tfm->descsize);
}
}
__inline static int crypto_shash_export(struct shash_desc *desc , void *out )
{
  struct shash_alg *tmp ;
  int tmp___0 ;
  {
  tmp = crypto_shash_alg(desc->tfm);
  tmp___0 = (*(tmp->export))(desc, out);
  return (tmp___0);
}
}
__inline static int crypto_shash_init(struct shash_desc *desc )
{
  struct shash_alg *tmp ;
  int tmp___0 ;
  {
  tmp = crypto_shash_alg(desc->tfm);
  tmp___0 = (*(tmp->init))(desc);
  return (tmp___0);
}
}
extern int crypto_shash_update(struct shash_desc * , u8 const * , unsigned int ) ;
extern int crypto_shash_final(struct shash_desc * , u8 * ) ;
extern void crypto_xor(u8 * , u8 const * , unsigned int ) ;
extern int dm_get_device(struct dm_target * , char const * , fmode_t , struct dm_dev ** ) ;
extern void dm_put_device(struct dm_target * , struct dm_dev * ) ;
__inline static void *dm_per_bio_data(struct bio *bio , size_t data_size )
{
  {
  return ((void *)bio + (0xffffffffffffffe0UL - data_size));
}
}
extern int dm_register_target(struct target_type * ) ;
extern void dm_unregister_target(struct target_type * ) ;
extern int dm_read_arg_group(struct dm_arg * , struct dm_arg_set * , unsigned int * ,
                             char ** ) ;
extern char const *dm_shift_arg(struct dm_arg_set * ) ;
extern fmode_t dm_table_get_mode(struct dm_table * ) ;
static void clone_init(struct dm_crypt_io *io , struct bio *clone ) ;
static void kcryptd_queue_crypt(struct dm_crypt_io *io ) ;
static u8 *iv_of_dmreq(struct crypt_config *cc , struct dm_crypt_request *dmreq ) ;
static struct crypto_ablkcipher *any_tfm(struct crypt_config *cc )
{
  {
  return (*(cc->tfms));
}
}
static int crypt_iv_plain_gen(struct crypt_config *cc , u8 *iv , struct dm_crypt_request *dmreq )
{
  {
  memset((void *)iv, 0, (size_t )cc->iv_size);
  *((__le32 *)iv) = (unsigned int )dmreq->iv_sector;
  return (0);
}
}
static int crypt_iv_plain64_gen(struct crypt_config *cc , u8 *iv , struct dm_crypt_request *dmreq )
{
  {
  memset((void *)iv, 0, (size_t )cc->iv_size);
  *((__le64 *)iv) = (unsigned long long )dmreq->iv_sector;
  return (0);
}
}
static int crypt_iv_essiv_init(struct crypt_config *cc )
{
  struct iv_essiv_private *essiv ;
  struct hash_desc desc ;
  struct scatterlist sg ;
  struct crypto_cipher *essiv_tfm ;
  int err ;
  unsigned int tmp ;
  {
  essiv = & cc->iv_gen_private.essiv;
  sg_init_one(& sg, (void const *)(& cc->key), cc->key_size);
  desc.tfm = essiv->hash_tfm;
  desc.flags = 512U;
  err = crypto_hash_digest(& desc, & sg, cc->key_size, essiv->salt);
  if (err != 0) {
    return (err);
  } else {
  }
  essiv_tfm = (struct crypto_cipher *)cc->iv_private;
  tmp = crypto_hash_digestsize(essiv->hash_tfm);
  err = crypto_cipher_setkey(essiv_tfm, (u8 const *)essiv->salt, tmp);
  if (err != 0) {
    return (err);
  } else {
  }
  return (0);
}
}
static int crypt_iv_essiv_wipe(struct crypt_config *cc )
{
  struct iv_essiv_private *essiv ;
  unsigned int salt_size ;
  unsigned int tmp ;
  struct crypto_cipher *essiv_tfm ;
  int r ;
  int err ;
  {
  essiv = & cc->iv_gen_private.essiv;
  tmp = crypto_hash_digestsize(essiv->hash_tfm);
  salt_size = tmp;
  err = 0;
  memset((void *)essiv->salt, 0, (size_t )salt_size);
  essiv_tfm = (struct crypto_cipher *)cc->iv_private;
  r = crypto_cipher_setkey(essiv_tfm, (u8 const *)essiv->salt, salt_size);
  if (r != 0) {
    err = r;
  } else {
  }
  return (err);
}
}
static struct crypto_cipher *setup_essiv_cpu(struct crypt_config *cc , struct dm_target *ti ,
                                             u8 *salt , unsigned int saltsize )
{
  struct crypto_cipher *essiv_tfm ;
  int err ;
  bool tmp ;
  void *tmp___0 ;
  unsigned int tmp___1 ;
  struct crypto_ablkcipher *tmp___2 ;
  unsigned int tmp___3 ;
  void *tmp___4 ;
  {
  essiv_tfm = crypto_alloc_cipher((char const *)cc->cipher, 0U, 128U);
  tmp = IS_ERR((void const *)essiv_tfm);
  if ((int )tmp) {
    ti->error = (char *)"Error allocating crypto tfm for ESSIV";
    return (essiv_tfm);
  } else {
  }
  tmp___1 = crypto_cipher_blocksize(essiv_tfm);
  tmp___2 = any_tfm(cc);
  tmp___3 = crypto_ablkcipher_ivsize(tmp___2);
  if (tmp___1 != tmp___3) {
    ti->error = (char *)"Block size of ESSIV cipher does not match IV size of block cipher";
    crypto_free_cipher(essiv_tfm);
    tmp___0 = ERR_PTR(-22L);
    return ((struct crypto_cipher *)tmp___0);
  } else {
  }
  err = crypto_cipher_setkey(essiv_tfm, (u8 const *)salt, saltsize);
  if (err != 0) {
    ti->error = (char *)"Failed to set key for ESSIV cipher";
    crypto_free_cipher(essiv_tfm);
    tmp___4 = ERR_PTR((long )err);
    return ((struct crypto_cipher *)tmp___4);
  } else {
  }
  return (essiv_tfm);
}
}
static void crypt_iv_essiv_dtr(struct crypt_config *cc )
{
  struct crypto_cipher *essiv_tfm ;
  struct iv_essiv_private *essiv ;
  {
  essiv = & cc->iv_gen_private.essiv;
  crypto_free_hash(essiv->hash_tfm);
  essiv->hash_tfm = (struct crypto_hash *)0;
  kzfree((void const *)essiv->salt);
  essiv->salt = (u8 *)0U;
  essiv_tfm = (struct crypto_cipher *)cc->iv_private;
  if ((unsigned long )essiv_tfm != (unsigned long )((struct crypto_cipher *)0)) {
    crypto_free_cipher(essiv_tfm);
  } else {
  }
  cc->iv_private = (void *)0;
  return;
}
}
static int crypt_iv_essiv_ctr(struct crypt_config *cc , struct dm_target *ti , char const *opts )
{
  struct crypto_cipher *essiv_tfm ;
  struct crypto_hash *hash_tfm ;
  u8 *salt ;
  int err ;
  long tmp ;
  bool tmp___0 ;
  unsigned int tmp___1 ;
  void *tmp___2 ;
  unsigned int tmp___3 ;
  long tmp___4 ;
  bool tmp___5 ;
  bool tmp___6 ;
  int tmp___7 ;
  {
  essiv_tfm = (struct crypto_cipher *)0;
  hash_tfm = (struct crypto_hash *)0;
  salt = (u8 *)0U;
  if ((unsigned long )opts == (unsigned long )((char const *)0)) {
    ti->error = (char *)"Digest algorithm missing for ESSIV mode";
    return (-22);
  } else {
  }
  hash_tfm = crypto_alloc_hash(opts, 0U, 128U);
  tmp___0 = IS_ERR((void const *)hash_tfm);
  if ((int )tmp___0) {
    ti->error = (char *)"Error initializing ESSIV hash";
    tmp = PTR_ERR((void const *)hash_tfm);
    err = (int )tmp;
    goto bad;
  } else {
  }
  tmp___1 = crypto_hash_digestsize(hash_tfm);
  tmp___2 = kzalloc((size_t )tmp___1, 208U);
  salt = (u8 *)tmp___2;
  if ((unsigned long )salt == (unsigned long )((u8 *)0U)) {
    ti->error = (char *)"Error kmallocing salt storage in ESSIV";
    err = -12;
    goto bad;
  } else {
  }
  cc->iv_gen_private.essiv.salt = salt;
  cc->iv_gen_private.essiv.hash_tfm = hash_tfm;
  tmp___3 = crypto_hash_digestsize(hash_tfm);
  essiv_tfm = setup_essiv_cpu(cc, ti, salt, tmp___3);
  tmp___5 = IS_ERR((void const *)essiv_tfm);
  if ((int )tmp___5) {
    crypt_iv_essiv_dtr(cc);
    tmp___4 = PTR_ERR((void const *)essiv_tfm);
    return ((int )tmp___4);
  } else {
  }
  cc->iv_private = (void *)essiv_tfm;
  return (0);
  bad: ;
  if ((unsigned long )hash_tfm != (unsigned long )((struct crypto_hash *)0)) {
    tmp___6 = IS_ERR((void const *)hash_tfm);
    if (tmp___6) {
      tmp___7 = 0;
    } else {
      tmp___7 = 1;
    }
    if (tmp___7) {
      crypto_free_hash(hash_tfm);
    } else {
    }
  } else {
  }
  kfree((void const *)salt);
  return (err);
}
}
static int crypt_iv_essiv_gen(struct crypt_config *cc , u8 *iv , struct dm_crypt_request *dmreq )
{
  struct crypto_cipher *essiv_tfm ;
  {
  essiv_tfm = (struct crypto_cipher *)cc->iv_private;
  memset((void *)iv, 0, (size_t )cc->iv_size);
  *((__le64 *)iv) = (unsigned long long )dmreq->iv_sector;
  crypto_cipher_encrypt_one(essiv_tfm, iv, (u8 const *)iv);
  return (0);
}
}
static int crypt_iv_benbi_ctr(struct crypt_config *cc , struct dm_target *ti , char const *opts )
{
  unsigned int bs ;
  struct crypto_ablkcipher *tmp ;
  unsigned int tmp___0 ;
  int log ;
  int tmp___1 ;
  {
  tmp = any_tfm(cc);
  tmp___0 = crypto_ablkcipher_blocksize(tmp);
  bs = tmp___0;
  tmp___1 = __ilog2_u32(bs);
  log = tmp___1;
  if ((unsigned int )(1 << log) != bs) {
    ti->error = (char *)"cypher blocksize is not a power of 2";
    return (-22);
  } else {
  }
  if (log > 9) {
    ti->error = (char *)"cypher blocksize is > 512";
    return (-22);
  } else {
  }
  cc->iv_gen_private.benbi.shift = 9 - log;
  return (0);
}
}
static void crypt_iv_benbi_dtr(struct crypt_config *cc )
{
  {
  return;
}
}
static int crypt_iv_benbi_gen(struct crypt_config *cc , u8 *iv , struct dm_crypt_request *dmreq )
{
  __be64 val ;
  __u64 tmp ;
  void *__gu_p ;
  {
  memset((void *)iv, 0, (unsigned long )cc->iv_size - 8UL);
  tmp = __fswab64(((unsigned long long )dmreq->iv_sector << cc->iv_gen_private.benbi.shift) + 1ULL);
  val = tmp;
  __gu_p = (void *)(iv + ((unsigned long )cc->iv_size + 0xfffffffffffffff8UL));
  switch (8UL) {
  case 1UL:
  *((u8 *)__gu_p) = (unsigned char )val;
  goto ldv_39004;
  case 2UL:
  put_unaligned_le16((int )((unsigned short )val), __gu_p);
  goto ldv_39004;
  case 4UL:
  put_unaligned_le32((unsigned int )val, __gu_p);
  goto ldv_39004;
  case 8UL:
  put_unaligned_le64(val, __gu_p);
  goto ldv_39004;
  default:
  __bad_unaligned_access_size();
  goto ldv_39004;
  }
  ldv_39004: ;
  return (0);
}
}
static int crypt_iv_null_gen(struct crypt_config *cc , u8 *iv , struct dm_crypt_request *dmreq )
{
  {
  memset((void *)iv, 0, (size_t )cc->iv_size);
  return (0);
}
}
static void crypt_iv_lmk_dtr(struct crypt_config *cc )
{
  struct iv_lmk_private *lmk ;
  bool tmp ;
  int tmp___0 ;
  {
  lmk = & cc->iv_gen_private.lmk;
  if ((unsigned long )lmk->hash_tfm != (unsigned long )((struct crypto_shash *)0)) {
    tmp = IS_ERR((void const *)lmk->hash_tfm);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      crypto_free_shash(lmk->hash_tfm);
    } else {
    }
  } else {
  }
  lmk->hash_tfm = (struct crypto_shash *)0;
  kzfree((void const *)lmk->seed);
  lmk->seed = (u8 *)0U;
  return;
}
}
static int crypt_iv_lmk_ctr(struct crypt_config *cc , struct dm_target *ti , char const *opts )
{
  struct iv_lmk_private *lmk ;
  long tmp ;
  bool tmp___0 ;
  void *tmp___1 ;
  {
  lmk = & cc->iv_gen_private.lmk;
  lmk->hash_tfm = crypto_alloc_shash("md5", 0U, 0U);
  tmp___0 = IS_ERR((void const *)lmk->hash_tfm);
  if ((int )tmp___0) {
    ti->error = (char *)"Error initializing LMK hash";
    tmp = PTR_ERR((void const *)lmk->hash_tfm);
    return ((int )tmp);
  } else {
  }
  if (cc->key_parts == cc->tfms_count) {
    lmk->seed = (u8 *)0U;
    return (0);
  } else {
  }
  tmp___1 = kzalloc(64UL, 208U);
  lmk->seed = (u8 *)tmp___1;
  if ((unsigned long )lmk->seed == (unsigned long )((u8 *)0U)) {
    crypt_iv_lmk_dtr(cc);
    ti->error = (char *)"Error kmallocing seed storage in LMK";
    return (-12);
  } else {
  }
  return (0);
}
}
static int crypt_iv_lmk_init(struct crypt_config *cc )
{
  struct iv_lmk_private *lmk ;
  int subkey_size ;
  unsigned int tmp ;
  {
  lmk = & cc->iv_gen_private.lmk;
  subkey_size = (int )(cc->key_size / cc->key_parts);
  if ((unsigned long )lmk->seed != (unsigned long )((u8 *)0U)) {
    tmp = crypto_shash_digestsize(lmk->hash_tfm);
    memcpy((void *)lmk->seed, (void const *)(& cc->key) + (unsigned long )(cc->tfms_count * (unsigned int )subkey_size),
             (size_t )tmp);
  } else {
  }
  return (0);
}
}
static int crypt_iv_lmk_wipe(struct crypt_config *cc )
{
  struct iv_lmk_private *lmk ;
  {
  lmk = & cc->iv_gen_private.lmk;
  if ((unsigned long )lmk->seed != (unsigned long )((u8 *)0U)) {
    memset((void *)lmk->seed, 0, 64UL);
  } else {
  }
  return (0);
}
}
static int crypt_iv_lmk_one(struct crypt_config *cc , u8 *iv , struct dm_crypt_request *dmreq ,
                            u8 *data )
{
  struct iv_lmk_private *lmk ;
  unsigned int tmp ;
  char *__desc_desc ;
  unsigned long __lengthof__desc_desc ;
  void *tmp___0 ;
  struct shash_desc *desc ;
  struct md5_state md5state ;
  __le32 buf[4U] ;
  int i ;
  int r ;
  {
  lmk = & cc->iv_gen_private.lmk;
  tmp = crypto_shash_descsize(lmk->hash_tfm);
  __lengthof__desc_desc = (unsigned long )((long )((unsigned long )tmp + 16UL));
  tmp___0 = __builtin_alloca(sizeof(*__desc_desc) * __lengthof__desc_desc);
  __desc_desc = (char *)tmp___0;
  desc = (struct shash_desc *)(& __desc_desc);
  desc->tfm = lmk->hash_tfm;
  desc->flags = 512U;
  r = crypto_shash_init(desc);
  if (r != 0) {
    return (r);
  } else {
  }
  if ((unsigned long )lmk->seed != (unsigned long )((u8 *)0U)) {
    r = crypto_shash_update(desc, (u8 const *)lmk->seed, 64U);
    if (r != 0) {
      return (r);
    } else {
    }
  } else {
  }
  r = crypto_shash_update(desc, (u8 const *)data + 16U, 496U);
  if (r != 0) {
    return (r);
  } else {
  }
  buf[0] = (unsigned int )dmreq->iv_sector;
  buf[1] = ((unsigned int )((unsigned long long )dmreq->iv_sector >> 32) & 16777215U) | 2147483648U;
  buf[2] = 4024U;
  buf[3] = 0U;
  r = crypto_shash_update(desc, (u8 const *)(& buf), 16U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = crypto_shash_export(desc, (void *)(& md5state));
  if (r != 0) {
    return (r);
  } else {
  }
  i = 0;
  goto ldv_39047;
  ldv_39046:
  i = i + 1;
  ldv_39047: ;
  if (i <= 3) {
    goto ldv_39046;
  } else {
  }
  memcpy((void *)iv, (void const *)(& md5state.hash), (size_t )cc->iv_size);
  return (0);
}
}
static int crypt_iv_lmk_gen(struct crypt_config *cc , u8 *iv , struct dm_crypt_request *dmreq )
{
  u8 *src ;
  int r ;
  struct page *tmp ;
  void *tmp___0 ;
  {
  r = 0;
  if ((int )((dmreq->ctx)->bio_in)->bi_rw & 1) {
    tmp = sg_page(& dmreq->sg_in);
    tmp___0 = kmap_atomic(tmp);
    src = (u8 *)tmp___0;
    r = crypt_iv_lmk_one(cc, iv, dmreq, src + (unsigned long )dmreq->sg_in.offset);
    __kunmap_atomic((void *)src);
  } else {
    memset((void *)iv, 0, (size_t )cc->iv_size);
  }
  return (r);
}
}
static int crypt_iv_lmk_post(struct crypt_config *cc , u8 *iv , struct dm_crypt_request *dmreq )
{
  u8 *dst ;
  int r ;
  struct page *tmp ;
  void *tmp___0 ;
  {
  if ((int )((dmreq->ctx)->bio_in)->bi_rw & 1) {
    return (0);
  } else {
  }
  tmp = sg_page(& dmreq->sg_out);
  tmp___0 = kmap_atomic(tmp);
  dst = (u8 *)tmp___0;
  r = crypt_iv_lmk_one(cc, iv, dmreq, dst + (unsigned long )dmreq->sg_out.offset);
  if (r == 0) {
    crypto_xor(dst + (unsigned long )dmreq->sg_out.offset, (u8 const *)iv, cc->iv_size);
  } else {
  }
  __kunmap_atomic((void *)dst);
  return (r);
}
}
static void crypt_iv_tcw_dtr(struct crypt_config *cc )
{
  struct iv_tcw_private *tcw ;
  bool tmp ;
  int tmp___0 ;
  {
  tcw = & cc->iv_gen_private.tcw;
  kzfree((void const *)tcw->iv_seed);
  tcw->iv_seed = (u8 *)0U;
  kzfree((void const *)tcw->whitening);
  tcw->whitening = (u8 *)0U;
  if ((unsigned long )tcw->crc32_tfm != (unsigned long )((struct crypto_shash *)0)) {
    tmp = IS_ERR((void const *)tcw->crc32_tfm);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      crypto_free_shash(tcw->crc32_tfm);
    } else {
    }
  } else {
  }
  tcw->crc32_tfm = (struct crypto_shash *)0;
  return;
}
}
static int crypt_iv_tcw_ctr(struct crypt_config *cc , struct dm_target *ti , char const *opts )
{
  struct iv_tcw_private *tcw ;
  long tmp ;
  bool tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  tcw = & cc->iv_gen_private.tcw;
  if (cc->key_size <= cc->iv_size + 16U) {
    ti->error = (char *)"Wrong key size for TCW";
    return (-22);
  } else {
  }
  tcw->crc32_tfm = crypto_alloc_shash("crc32", 0U, 0U);
  tmp___0 = IS_ERR((void const *)tcw->crc32_tfm);
  if ((int )tmp___0) {
    ti->error = (char *)"Error initializing CRC32 in TCW";
    tmp = PTR_ERR((void const *)tcw->crc32_tfm);
    return ((int )tmp);
  } else {
  }
  tmp___1 = kzalloc((size_t )cc->iv_size, 208U);
  tcw->iv_seed = (u8 *)tmp___1;
  tmp___2 = kzalloc(16UL, 208U);
  tcw->whitening = (u8 *)tmp___2;
  if ((unsigned long )tcw->iv_seed == (unsigned long )((u8 *)0U) || (unsigned long )tcw->whitening == (unsigned long )((u8 *)0U)) {
    crypt_iv_tcw_dtr(cc);
    ti->error = (char *)"Error allocating seed storage in TCW";
    return (-12);
  } else {
  }
  return (0);
}
}
static int crypt_iv_tcw_init(struct crypt_config *cc )
{
  struct iv_tcw_private *tcw ;
  int key_offset ;
  {
  tcw = & cc->iv_gen_private.tcw;
  key_offset = (int )((cc->key_size - cc->iv_size) - 16U);
  memcpy((void *)tcw->iv_seed, (void const *)(& cc->key) + (unsigned long )key_offset,
           (size_t )cc->iv_size);
  memcpy((void *)tcw->whitening, (void const *)(& cc->key) + (unsigned long )(cc->iv_size + (unsigned int )key_offset),
           16UL);
  return (0);
}
}
static int crypt_iv_tcw_wipe(struct crypt_config *cc )
{
  struct iv_tcw_private *tcw ;
  {
  tcw = & cc->iv_gen_private.tcw;
  memset((void *)tcw->iv_seed, 0, (size_t )cc->iv_size);
  memset((void *)tcw->whitening, 0, 16UL);
  return (0);
}
}
static int crypt_iv_tcw_whitening(struct crypt_config *cc , struct dm_crypt_request *dmreq ,
                                  u8 *data )
{
  struct iv_tcw_private *tcw ;
  u64 sector ;
  u8 buf[16U] ;
  unsigned int tmp ;
  char *__desc_desc ;
  unsigned long __lengthof__desc_desc ;
  void *tmp___0 ;
  struct shash_desc *desc ;
  int i ;
  int r ;
  {
  tcw = & cc->iv_gen_private.tcw;
  sector = (unsigned long long )dmreq->iv_sector;
  tmp = crypto_shash_descsize(tcw->crc32_tfm);
  __lengthof__desc_desc = (unsigned long )((long )((unsigned long )tmp + 16UL));
  tmp___0 = __builtin_alloca(sizeof(*__desc_desc) * __lengthof__desc_desc);
  __desc_desc = (char *)tmp___0;
  desc = (struct shash_desc *)(& __desc_desc);
  memcpy((void *)(& buf), (void const *)tcw->whitening, 16UL);
  crypto_xor((u8 *)(& buf), (u8 const *)(& sector), 8U);
  crypto_xor((u8 *)(& buf) + 8UL, (u8 const *)(& sector), 8U);
  desc->tfm = tcw->crc32_tfm;
  desc->flags = 512U;
  i = 0;
  goto ldv_39096;
  ldv_39095:
  r = crypto_shash_init(desc);
  if (r != 0) {
    goto out;
  } else {
  }
  r = crypto_shash_update(desc, (u8 const *)(& buf) + (unsigned long )(i * 4), 4U);
  if (r != 0) {
    goto out;
  } else {
  }
  r = crypto_shash_final(desc, (u8 *)(& buf) + (unsigned long )(i * 4));
  if (r != 0) {
    goto out;
  } else {
  }
  i = i + 1;
  ldv_39096: ;
  if (i <= 3) {
    goto ldv_39095;
  } else {
  }
  crypto_xor((u8 *)(& buf), (u8 const *)(& buf) + 12U, 4U);
  crypto_xor((u8 *)(& buf) + 4UL, (u8 const *)(& buf) + 8U, 4U);
  i = 0;
  goto ldv_39099;
  ldv_39098:
  crypto_xor(data + (unsigned long )(i * 8), (u8 const *)(& buf), 8U);
  i = i + 1;
  ldv_39099: ;
  if (i <= 63) {
    goto ldv_39098;
  } else {
  }
  out:
  memzero_explicit((void *)(& buf), 16UL);
  return (r);
}
}
static int crypt_iv_tcw_gen(struct crypt_config *cc , u8 *iv , struct dm_crypt_request *dmreq )
{
  struct iv_tcw_private *tcw ;
  u64 sector ;
  u8 *src ;
  int r ;
  struct page *tmp ;
  void *tmp___0 ;
  {
  tcw = & cc->iv_gen_private.tcw;
  sector = (unsigned long long )dmreq->iv_sector;
  r = 0;
  if (((unsigned long long )((dmreq->ctx)->bio_in)->bi_rw & 1ULL) == 0ULL) {
    tmp = sg_page(& dmreq->sg_in);
    tmp___0 = kmap_atomic(tmp);
    src = (u8 *)tmp___0;
    r = crypt_iv_tcw_whitening(cc, dmreq, src + (unsigned long )dmreq->sg_in.offset);
    __kunmap_atomic((void *)src);
  } else {
  }
  memcpy((void *)iv, (void const *)tcw->iv_seed, (size_t )cc->iv_size);
  crypto_xor(iv, (u8 const *)(& sector), 8U);
  if (cc->iv_size > 8U) {
    crypto_xor(iv + 8UL, (u8 const *)(& sector), cc->iv_size - 8U);
  } else {
  }
  return (r);
}
}
static int crypt_iv_tcw_post(struct crypt_config *cc , u8 *iv , struct dm_crypt_request *dmreq )
{
  u8 *dst ;
  int r ;
  struct page *tmp ;
  void *tmp___0 ;
  {
  if (((unsigned long long )((dmreq->ctx)->bio_in)->bi_rw & 1ULL) == 0ULL) {
    return (0);
  } else {
  }
  tmp = sg_page(& dmreq->sg_out);
  tmp___0 = kmap_atomic(tmp);
  dst = (u8 *)tmp___0;
  r = crypt_iv_tcw_whitening(cc, dmreq, dst + (unsigned long )dmreq->sg_out.offset);
  __kunmap_atomic((void *)dst);
  return (r);
}
}
static struct crypt_iv_operations crypt_iv_plain_ops = {0, 0, 0, 0, & crypt_iv_plain_gen, 0};
static struct crypt_iv_operations crypt_iv_plain64_ops = {0, 0, 0, 0, & crypt_iv_plain64_gen, 0};
static struct crypt_iv_operations crypt_iv_essiv_ops = {& crypt_iv_essiv_ctr, & crypt_iv_essiv_dtr, & crypt_iv_essiv_init, & crypt_iv_essiv_wipe,
    & crypt_iv_essiv_gen, 0};
static struct crypt_iv_operations crypt_iv_benbi_ops = {& crypt_iv_benbi_ctr, & crypt_iv_benbi_dtr, 0, 0, & crypt_iv_benbi_gen, 0};
static struct crypt_iv_operations crypt_iv_null_ops = {0, 0, 0, 0, & crypt_iv_null_gen, 0};
static struct crypt_iv_operations crypt_iv_lmk_ops = {& crypt_iv_lmk_ctr, & crypt_iv_lmk_dtr, & crypt_iv_lmk_init, & crypt_iv_lmk_wipe,
    & crypt_iv_lmk_gen, & crypt_iv_lmk_post};
static struct crypt_iv_operations crypt_iv_tcw_ops = {& crypt_iv_tcw_ctr, & crypt_iv_tcw_dtr, & crypt_iv_tcw_init, & crypt_iv_tcw_wipe,
    & crypt_iv_tcw_gen, & crypt_iv_tcw_post};
static void crypt_convert_init(struct crypt_config *cc , struct convert_context *ctx ,
                               struct bio *bio_out , struct bio *bio_in , sector_t sector )
{
  {
  ctx->bio_in = bio_in;
  ctx->bio_out = bio_out;
  if ((unsigned long )bio_in != (unsigned long )((struct bio *)0)) {
    ctx->iter_in = bio_in->bi_iter;
  } else {
  }
  if ((unsigned long )bio_out != (unsigned long )((struct bio *)0)) {
    ctx->iter_out = bio_out->bi_iter;
  } else {
  }
  ctx->cc_sector = cc->iv_offset + sector;
  init_completion(& ctx->restart);
  return;
}
}
static struct dm_crypt_request *dmreq_of_req(struct crypt_config *cc , struct ablkcipher_request *req )
{
  {
  return ((struct dm_crypt_request *)req + (unsigned long )cc->dmreq_start);
}
}
static struct ablkcipher_request *req_of_dmreq(struct crypt_config *cc , struct dm_crypt_request *dmreq )
{
  {
  return ((struct ablkcipher_request *)dmreq + - ((unsigned long )cc->dmreq_start));
}
}
static u8 *iv_of_dmreq(struct crypt_config *cc , struct dm_crypt_request *dmreq )
{
  struct crypto_ablkcipher *tmp ;
  unsigned int tmp___0 ;
  struct crypto_ablkcipher *tmp___1 ;
  unsigned int tmp___2 ;
  {
  tmp = any_tfm(cc);
  tmp___0 = crypto_ablkcipher_alignmask(tmp);
  tmp___1 = any_tfm(cc);
  tmp___2 = crypto_ablkcipher_alignmask(tmp___1);
  return ((u8 *)((((unsigned long )(dmreq + 1UL) + (unsigned long )(tmp___0 + 1U)) - 1UL) & - ((unsigned long )(tmp___2 + 1U))));
}
}
static int crypt_convert_block(struct crypt_config *cc , struct convert_context *ctx ,
                               struct ablkcipher_request *req )
{
  struct bio_vec bv_in ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  struct bio_vec bv_out ;
  unsigned int _min1___0 ;
  unsigned int _min2___0 ;
  struct dm_crypt_request *dmreq ;
  u8 *iv ;
  int r ;
  {
  _min1 = ctx->iter_in.bi_size;
  _min2 = ((ctx->bio_in)->bi_io_vec + (unsigned long )ctx->iter_in.bi_idx)->bv_len - ctx->iter_in.bi_bvec_done;
  bv_in.bv_page = ((ctx->bio_in)->bi_io_vec + (unsigned long )ctx->iter_in.bi_idx)->bv_page;
  bv_in.bv_len = _min1 < _min2 ? _min1 : _min2;
  bv_in.bv_offset = ((ctx->bio_in)->bi_io_vec + (unsigned long )ctx->iter_in.bi_idx)->bv_offset + ctx->iter_in.bi_bvec_done;
  _min1___0 = ctx->iter_out.bi_size;
  _min2___0 = ((ctx->bio_out)->bi_io_vec + (unsigned long )ctx->iter_out.bi_idx)->bv_len - ctx->iter_out.bi_bvec_done;
  bv_out.bv_page = ((ctx->bio_out)->bi_io_vec + (unsigned long )ctx->iter_out.bi_idx)->bv_page;
  bv_out.bv_len = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  bv_out.bv_offset = ((ctx->bio_out)->bi_io_vec + (unsigned long )ctx->iter_out.bi_idx)->bv_offset + ctx->iter_out.bi_bvec_done;
  dmreq = dmreq_of_req(cc, req);
  iv = iv_of_dmreq(cc, dmreq);
  dmreq->iv_sector = ctx->cc_sector;
  dmreq->ctx = ctx;
  sg_init_table(& dmreq->sg_in, 1U);
  sg_set_page(& dmreq->sg_in, bv_in.bv_page, 512U, bv_in.bv_offset);
  sg_init_table(& dmreq->sg_out, 1U);
  sg_set_page(& dmreq->sg_out, bv_out.bv_page, 512U, bv_out.bv_offset);
  bio_advance_iter(ctx->bio_in, & ctx->iter_in, 512U);
  bio_advance_iter(ctx->bio_out, & ctx->iter_out, 512U);
  if ((unsigned long )cc->iv_gen_ops != (unsigned long )((struct crypt_iv_operations *)0)) {
    r = (*((cc->iv_gen_ops)->generator))(cc, iv, dmreq);
    if (r < 0) {
      return (r);
    } else {
    }
  } else {
  }
  ablkcipher_request_set_crypt(req, & dmreq->sg_in, & dmreq->sg_out, 512U, (void *)iv);
  if ((int )(ctx->bio_in)->bi_rw & 1) {
    r = crypto_ablkcipher_encrypt(req);
  } else {
    r = crypto_ablkcipher_decrypt(req);
  }
  if ((r == 0 && (unsigned long )cc->iv_gen_ops != (unsigned long )((struct crypt_iv_operations *)0)) && (unsigned long )(cc->iv_gen_ops)->post != (unsigned long )((int (*)(struct crypt_config * ,
                                                                                                                                                                             u8 * ,
                                                                                                                                                                             struct dm_crypt_request * ))0)) {
    r = (*((cc->iv_gen_ops)->post))(cc, iv, dmreq);
  } else {
  }
  return (r);
}
}
static void kcryptd_async_done(struct crypto_async_request *async_req , int error ) ;
static void crypt_alloc_req(struct crypt_config *cc , struct convert_context *ctx )
{
  unsigned int key_index ;
  void *tmp ;
  struct dm_crypt_request *tmp___0 ;
  {
  key_index = (unsigned int )ctx->cc_sector & (cc->tfms_count - 1U);
  if ((unsigned long )ctx->req == (unsigned long )((struct ablkcipher_request *)0)) {
    tmp = mempool_alloc(cc->req_pool, 16U);
    ctx->req = (struct ablkcipher_request *)tmp;
  } else {
  }
  ablkcipher_request_set_tfm(ctx->req, *(cc->tfms + (unsigned long )key_index));
  tmp___0 = dmreq_of_req(cc, ctx->req);
  ablkcipher_request_set_callback(ctx->req, 1536U, & kcryptd_async_done, (void *)tmp___0);
  return;
}
}
static void crypt_free_req(struct crypt_config *cc , struct ablkcipher_request *req ,
                           struct bio *base_bio )
{
  struct dm_crypt_io *io ;
  void *tmp ;
  {
  tmp = dm_per_bio_data(base_bio, (size_t )cc->per_bio_data_size);
  io = (struct dm_crypt_io *)tmp;
  if ((unsigned long )((struct ablkcipher_request *)io + 1U) != (unsigned long )req) {
    mempool_free((void *)req, cc->req_pool);
  } else {
  }
  return;
}
}
static int crypt_convert(struct crypt_config *cc , struct convert_context *ctx )
{
  int r ;
  {
  atomic_set(& ctx->cc_pending, 1);
  goto ldv_39182;
  ldv_39186:
  crypt_alloc_req(cc, ctx);
  atomic_inc(& ctx->cc_pending);
  r = crypt_convert_block(cc, ctx, ctx->req);
  switch (r) {
  case -16:
  wait_for_completion(& ctx->restart);
  reinit_completion(& ctx->restart);
  case -115:
  ctx->req = (struct ablkcipher_request *)0;
  ctx->cc_sector = ctx->cc_sector + 1UL;
  goto ldv_39182;
  case 0:
  atomic_dec(& ctx->cc_pending);
  ctx->cc_sector = ctx->cc_sector + 1UL;
  ___might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/982/dscv_tempdir/dscv/ri/32_7a/drivers/md/dm-crypt.c",
                 954, 0);
  _cond_resched();
  goto ldv_39182;
  default:
  atomic_dec(& ctx->cc_pending);
  return (r);
  }
  ldv_39182: ;
  if (ctx->iter_in.bi_size != 0U && ctx->iter_out.bi_size != 0U) {
    goto ldv_39186;
  } else {
  }
  return (0);
}
}
static void crypt_free_buffer_pages(struct crypt_config *cc , struct bio *clone ) ;
static struct bio *crypt_alloc_buffer(struct dm_crypt_io *io , unsigned int size )
{
  struct crypt_config *cc ;
  struct bio *clone ;
  unsigned int nr_iovecs ;
  gfp_t gfp_mask ;
  unsigned int i ;
  unsigned int len ;
  unsigned int remaining_size ;
  struct page *page ;
  struct bio_vec *bvec ;
  long tmp ;
  void *tmp___0 ;
  unsigned short tmp___1 ;
  long tmp___2 ;
  {
  cc = io->cc;
  nr_iovecs = (unsigned int )(((unsigned long )size + 4095UL) >> 12);
  gfp_mask = 2U;
  retry:
  tmp = ldv__builtin_expect((gfp_mask & 16U) != 0U, 0L);
  if (tmp != 0L) {
    ldv_mutex_lock_17(& cc->bio_alloc_lock);
  } else {
  }
  clone = bio_alloc_bioset(16U, (int )nr_iovecs, cc->bs);
  if ((unsigned long )clone == (unsigned long )((struct bio *)0)) {
    goto return_clone;
  } else {
  }
  clone_init(io, clone);
  remaining_size = size;
  i = 0U;
  goto ldv_39207;
  ldv_39206:
  tmp___0 = mempool_alloc(cc->page_pool, gfp_mask);
  page = (struct page *)tmp___0;
  if ((unsigned long )page == (unsigned long )((struct page *)0)) {
    crypt_free_buffer_pages(cc, clone);
    bio_put(clone);
    gfp_mask = gfp_mask | 16U;
    goto retry;
  } else {
  }
  len = 4096U < remaining_size ? 4096U : remaining_size;
  tmp___1 = clone->bi_vcnt;
  clone->bi_vcnt = (unsigned short )((int )clone->bi_vcnt + 1);
  bvec = clone->bi_io_vec + (unsigned long )tmp___1;
  bvec->bv_page = page;
  bvec->bv_len = len;
  bvec->bv_offset = 0U;
  clone->bi_iter.bi_size = clone->bi_iter.bi_size + len;
  remaining_size = remaining_size - len;
  i = i + 1U;
  ldv_39207: ;
  if (i < nr_iovecs) {
    goto ldv_39206;
  } else {
  }
  return_clone:
  tmp___2 = ldv__builtin_expect((gfp_mask & 16U) != 0U, 0L);
  if (tmp___2 != 0L) {
    ldv_mutex_unlock_18(& cc->bio_alloc_lock);
  } else {
  }
  return (clone);
}
}
static void crypt_free_buffer_pages(struct crypt_config *cc , struct bio *clone )
{
  unsigned int i ;
  struct bio_vec *bv ;
  long tmp ;
  {
  i = 0U;
  bv = clone->bi_io_vec;
  goto ldv_39217;
  ldv_39216:
  tmp = ldv__builtin_expect((unsigned long )bv->bv_page == (unsigned long )((struct page *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/982/dscv_tempdir/dscv/ri/32_7a/drivers/md/dm-crypt.c"),
                         "i" (1041), "i" (12UL));
    ldv_39215: ;
    goto ldv_39215;
  } else {
  }
  mempool_free((void *)bv->bv_page, cc->page_pool);
  bv->bv_page = (struct page *)0;
  i = i + 1U;
  bv = bv + 1;
  ldv_39217: ;
  if ((unsigned int )clone->bi_vcnt > i) {
    goto ldv_39216;
  } else {
  }
  return;
}
}
static void crypt_io_init(struct dm_crypt_io *io , struct crypt_config *cc , struct bio *bio ,
                          sector_t sector )
{
  {
  io->cc = cc;
  io->base_bio = bio;
  io->sector = sector;
  io->error = 0;
  io->ctx.req = (struct ablkcipher_request *)0;
  atomic_set(& io->io_pending, 0);
  return;
}
}
static void crypt_inc_pending(struct dm_crypt_io *io )
{
  {
  atomic_inc(& io->io_pending);
  return;
}
}
static void crypt_dec_pending(struct dm_crypt_io *io )
{
  struct crypt_config *cc ;
  struct bio *base_bio ;
  int error ;
  int tmp ;
  {
  cc = io->cc;
  base_bio = io->base_bio;
  error = io->error;
  tmp = atomic_dec_and_test(& io->io_pending);
  if (tmp == 0) {
    return;
  } else {
  }
  if ((unsigned long )io->ctx.req != (unsigned long )((struct ablkcipher_request *)0)) {
    crypt_free_req(cc, io->ctx.req, base_bio);
  } else {
  }
  bio_endio(base_bio, error);
  return;
}
}
static void crypt_endio(struct bio *clone , int error )
{
  struct dm_crypt_io *io ;
  struct crypt_config *cc ;
  unsigned int rw ;
  long tmp ;
  long tmp___0 ;
  {
  io = (struct dm_crypt_io *)clone->bi_private;
  cc = io->cc;
  rw = (unsigned int )clone->bi_rw & 1U;
  tmp = ldv__builtin_expect((long )((clone->bi_flags & 1UL) == 0UL && error == 0), 0L);
  if (tmp != 0L) {
    error = -5;
  } else {
  }
  if (rw == 1U) {
    crypt_free_buffer_pages(cc, clone);
  } else {
  }
  bio_put(clone);
  if (rw == 0U && error == 0) {
    kcryptd_queue_crypt(io);
    return;
  } else {
  }
  tmp___0 = ldv__builtin_expect(error != 0, 0L);
  if (tmp___0 != 0L) {
    io->error = error;
  } else {
  }
  crypt_dec_pending(io);
  return;
}
}
static void clone_init(struct dm_crypt_io *io , struct bio *clone )
{
  struct crypt_config *cc ;
  {
  cc = io->cc;
  clone->bi_private = (void *)io;
  clone->bi_end_io = & crypt_endio;
  clone->bi_bdev = (cc->dev)->bdev;
  clone->bi_rw = (io->base_bio)->bi_rw;
  return;
}
}
static int kcryptd_io_read(struct dm_crypt_io *io , gfp_t gfp )
{
  struct crypt_config *cc ;
  struct bio *clone ;
  {
  cc = io->cc;
  clone = bio_clone_fast(io->base_bio, gfp, cc->bs);
  if ((unsigned long )clone == (unsigned long )((struct bio *)0)) {
    return (1);
  } else {
  }
  crypt_inc_pending(io);
  clone_init(io, clone);
  clone->bi_iter.bi_sector = cc->start + io->sector;
  generic_make_request(clone);
  return (0);
}
}
static void kcryptd_io_read_work(struct work_struct *work )
{
  struct dm_crypt_io *io ;
  struct work_struct const *__mptr ;
  int tmp ;
  {
  __mptr = (struct work_struct const *)work;
  io = (struct dm_crypt_io *)__mptr + 0xfffffffffffffff0UL;
  crypt_inc_pending(io);
  tmp = kcryptd_io_read(io, 16U);
  if (tmp != 0) {
    io->error = -12;
  } else {
  }
  crypt_dec_pending(io);
  return;
}
}
static void kcryptd_queue_read(struct dm_crypt_io *io )
{
  struct crypt_config *cc ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  cc = io->cc;
  __init_work(& io->work, 0);
  __constr_expr_0.counter = 137438953408L;
  io->work.data = __constr_expr_0;
  lockdep_init_map(& io->work.lockdep_map, "(&io->work)", & __key, 0);
  INIT_LIST_HEAD(& io->work.entry);
  io->work.func = & kcryptd_io_read_work;
  queue_work(cc->io_queue, & io->work);
  return;
}
}
static void kcryptd_io_write(struct dm_crypt_io *io )
{
  struct bio *clone ;
  {
  clone = io->ctx.bio_out;
  generic_make_request(clone);
  return;
}
}
static int dmcrypt_write(void *data )
{
  struct crypt_config *cc ;
  struct dm_crypt_io *io ;
  struct rb_root write_tree ;
  struct blk_plug plug ;
  wait_queue_t wait ;
  struct task_struct *tmp ;
  struct task_struct *tmp___0 ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  long volatile __ret ;
  struct task_struct *tmp___3 ;
  struct task_struct *tmp___4 ;
  struct task_struct *tmp___5 ;
  struct task_struct *tmp___6 ;
  bool tmp___7 ;
  long tmp___8 ;
  struct task_struct *tmp___9 ;
  long volatile __ret___0 ;
  struct task_struct *tmp___10 ;
  struct task_struct *tmp___11 ;
  struct task_struct *tmp___12 ;
  struct task_struct *tmp___13 ;
  struct rb_root __constr_expr_0 ;
  long tmp___14 ;
  struct rb_node const *__mptr ;
  struct rb_node *tmp___15 ;
  {
  cc = (struct crypt_config *)data;
  ldv_39301:
  tmp = get_current();
  wait.flags = 0U;
  wait.private = (void *)tmp;
  wait.func = & default_wake_function;
  wait.task_list.next = (struct list_head *)0;
  wait.task_list.prev = (struct list_head *)0;
  spin_lock_irq(& cc->write_thread_wait.lock);
  continue_locked: ;
  if ((unsigned long )cc->write_tree.rb_node != (unsigned long )((struct rb_node *)0)) {
    goto pop_from_list;
  } else {
  }
  tmp___0 = get_current();
  tmp___0->task_state_change = 0UL;
  tmp___1 = get_current();
  tmp___1->state = 1L;
  __add_wait_queue(& cc->write_thread_wait, & wait);
  spin_unlock_irq(& cc->write_thread_wait.lock);
  tmp___7 = kthread_should_stop();
  tmp___8 = ldv__builtin_expect((long )tmp___7, 0L);
  if (tmp___8 != 0L) {
    tmp___2 = get_current();
    tmp___2->task_state_change = 0UL;
    __ret = 0L;
    switch (8UL) {
    case 1UL:
    tmp___3 = get_current();
    __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (tmp___3->state): : "memory",
                         "cc");
    goto ldv_39280;
    case 2UL:
    tmp___4 = get_current();
    __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (tmp___4->state): : "memory",
                         "cc");
    goto ldv_39280;
    case 4UL:
    tmp___5 = get_current();
    __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (tmp___5->state): : "memory",
                         "cc");
    goto ldv_39280;
    case 8UL:
    tmp___6 = get_current();
    __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (tmp___6->state): : "memory",
                         "cc");
    goto ldv_39280;
    default:
    __xchg_wrong_size();
    }
    ldv_39280:
    remove_wait_queue(& cc->write_thread_wait, & wait);
    goto ldv_39286;
  } else {
  }
  schedule();
  tmp___9 = get_current();
  tmp___9->task_state_change = 0UL;
  __ret___0 = 0L;
  switch (8UL) {
  case 1UL:
  tmp___10 = get_current();
  __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret___0), "+m" (tmp___10->state): : "memory",
                       "cc");
  goto ldv_39289;
  case 2UL:
  tmp___11 = get_current();
  __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret___0), "+m" (tmp___11->state): : "memory",
                       "cc");
  goto ldv_39289;
  case 4UL:
  tmp___12 = get_current();
  __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret___0), "+m" (tmp___12->state): : "memory",
                       "cc");
  goto ldv_39289;
  case 8UL:
  tmp___13 = get_current();
  __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret___0), "+m" (tmp___13->state): : "memory",
                       "cc");
  goto ldv_39289;
  default:
  __xchg_wrong_size();
  }
  ldv_39289:
  spin_lock_irq(& cc->write_thread_wait.lock);
  __remove_wait_queue(& cc->write_thread_wait, & wait);
  goto continue_locked;
  pop_from_list:
  write_tree = cc->write_tree;
  __constr_expr_0.rb_node = (struct rb_node *)0;
  cc->write_tree = __constr_expr_0;
  spin_unlock_irq(& cc->write_thread_wait.lock);
  tmp___14 = ldv__builtin_expect(((write_tree.rb_node)->__rb_parent_color & 0xfffffffffffffffcUL) != 0UL,
                              0L);
  if (tmp___14 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/982/dscv_tempdir/dscv/ri/32_7a/drivers/md/dm-crypt.c"),
                         "i" (1228), "i" (12UL));
    ldv_39296: ;
    goto ldv_39296;
  } else {
  }
  blk_start_plug(& plug);
  ldv_39299:
  tmp___15 = rb_first((struct rb_root const *)(& write_tree));
  __mptr = (struct rb_node const *)tmp___15;
  io = (struct dm_crypt_io *)__mptr + 0xfffffffffffffed8UL;
  rb_erase(& io->rb_node, & write_tree);
  kcryptd_io_write(io);
  if ((unsigned long )write_tree.rb_node != (unsigned long )((struct rb_node *)0)) {
    goto ldv_39299;
  } else {
  }
  blk_finish_plug(& plug);
  goto ldv_39301;
  ldv_39286: ;
  return (0);
}
}
static void kcryptd_crypt_write_io_submit(struct dm_crypt_io *io , int async )
{
  struct bio *clone ;
  struct crypt_config *cc ;
  unsigned long flags ;
  sector_t sector ;
  struct rb_node **rbp ;
  struct rb_node *parent ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  raw_spinlock_t *tmp___3 ;
  struct rb_node const *__mptr ;
  {
  clone = io->ctx.bio_out;
  cc = io->cc;
  tmp = ldv__builtin_expect(io->error < 0, 0L);
  if (tmp != 0L) {
    crypt_free_buffer_pages(cc, clone);
    bio_put(clone);
    crypt_dec_pending(io);
    return;
  } else {
  }
  tmp___0 = ldv__builtin_expect(io->ctx.iter_out.bi_size != 0U, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/982/dscv_tempdir/dscv/ri/32_7a/drivers/md/dm-crypt.c"),
                         "i" (1261), "i" (12UL));
    ldv_39312: ;
    goto ldv_39312;
  } else {
  }
  clone->bi_iter.bi_sector = cc->start + io->sector;
  tmp___1 = ldv__builtin_expect(async == 0, 1L);
  if (tmp___1 != 0L) {
    tmp___2 = constant_test_bit(3L, (unsigned long const volatile *)(& cc->flags));
    if (tmp___2 != 0) {
      generic_make_request(clone);
      return;
    } else {
    }
  } else {
  }
  tmp___3 = spinlock_check(& cc->write_thread_wait.lock);
  flags = _raw_spin_lock_irqsave(tmp___3);
  rbp = & cc->write_tree.rb_node;
  parent = (struct rb_node *)0;
  sector = io->sector;
  goto ldv_39319;
  ldv_39318:
  parent = *rbp;
  __mptr = (struct rb_node const *)parent;
  if (((struct dm_crypt_io *)__mptr + 0xfffffffffffffed8UL)->sector > sector) {
    rbp = & (*rbp)->rb_left;
  } else {
    rbp = & (*rbp)->rb_right;
  }
  ldv_39319: ;
  if ((unsigned long )*rbp != (unsigned long )((struct rb_node *)0)) {
    goto ldv_39318;
  } else {
  }
  rb_link_node(& io->rb_node, parent, rbp);
  rb_insert_color(& io->rb_node, & cc->write_tree);
  __wake_up_locked(& cc->write_thread_wait, 3U, 1);
  spin_unlock_irqrestore(& cc->write_thread_wait.lock, flags);
  return;
}
}
static void kcryptd_crypt_write_convert(struct dm_crypt_io *io )
{
  struct crypt_config *cc ;
  struct bio *clone ;
  int crypt_finished ;
  sector_t sector ;
  int r ;
  long tmp ;
  {
  cc = io->cc;
  sector = io->sector;
  crypt_inc_pending(io);
  crypt_convert_init(cc, & io->ctx, (struct bio *)0, io->base_bio, sector);
  clone = crypt_alloc_buffer(io, (io->base_bio)->bi_iter.bi_size);
  tmp = ldv__builtin_expect((unsigned long )clone == (unsigned long )((struct bio *)0),
                         0L);
  if (tmp != 0L) {
    io->error = -5;
    goto dec;
  } else {
  }
  io->ctx.bio_out = clone;
  io->ctx.iter_out = clone->bi_iter;
  sector = (sector_t )(clone->bi_iter.bi_size >> 9) + sector;
  crypt_inc_pending(io);
  r = crypt_convert(cc, & io->ctx);
  if (r != 0) {
    io->error = -5;
  } else {
  }
  crypt_finished = atomic_dec_and_test(& io->ctx.cc_pending);
  if (crypt_finished != 0) {
    kcryptd_crypt_write_io_submit(io, 0);
    io->sector = sector;
  } else {
  }
  dec:
  crypt_dec_pending(io);
  return;
}
}
static void kcryptd_crypt_read_done(struct dm_crypt_io *io )
{
  {
  crypt_dec_pending(io);
  return;
}
}
static void kcryptd_crypt_read_convert(struct dm_crypt_io *io )
{
  struct crypt_config *cc ;
  int r ;
  int tmp ;
  {
  cc = io->cc;
  r = 0;
  crypt_inc_pending(io);
  crypt_convert_init(cc, & io->ctx, io->base_bio, io->base_bio, io->sector);
  r = crypt_convert(cc, & io->ctx);
  if (r < 0) {
    io->error = -5;
  } else {
  }
  tmp = atomic_dec_and_test(& io->ctx.cc_pending);
  if (tmp != 0) {
    kcryptd_crypt_read_done(io);
  } else {
  }
  crypt_dec_pending(io);
  return;
}
}
static void kcryptd_async_done(struct crypto_async_request *async_req , int error )
{
  struct dm_crypt_request *dmreq ;
  struct convert_context *ctx ;
  struct dm_crypt_io *io ;
  struct convert_context const *__mptr ;
  struct crypt_config *cc ;
  u8 *tmp ;
  struct ablkcipher_request *tmp___0 ;
  int tmp___1 ;
  {
  dmreq = (struct dm_crypt_request *)async_req->data;
  ctx = dmreq->ctx;
  __mptr = (struct convert_context const *)ctx;
  io = (struct dm_crypt_io *)__mptr + 0xffffffffffffffa0UL;
  cc = io->cc;
  if (error == -115) {
    complete(& ctx->restart);
    return;
  } else {
  }
  if ((error == 0 && (unsigned long )cc->iv_gen_ops != (unsigned long )((struct crypt_iv_operations *)0)) && (unsigned long )(cc->iv_gen_ops)->post != (unsigned long )((int (*)(struct crypt_config * ,
                                                                                                                                                                                 u8 * ,
                                                                                                                                                                                 struct dm_crypt_request * ))0)) {
    tmp = iv_of_dmreq(cc, dmreq);
    error = (*((cc->iv_gen_ops)->post))(cc, tmp, dmreq);
  } else {
  }
  if (error < 0) {
    io->error = -5;
  } else {
  }
  tmp___0 = req_of_dmreq(cc, dmreq);
  crypt_free_req(cc, tmp___0, io->base_bio);
  tmp___1 = atomic_dec_and_test(& ctx->cc_pending);
  if (tmp___1 == 0) {
    return;
  } else {
  }
  if (((io->base_bio)->bi_rw & 1UL) == 0UL) {
    kcryptd_crypt_read_done(io);
  } else {
    kcryptd_crypt_write_io_submit(io, 1);
  }
  return;
}
}
static void kcryptd_crypt(struct work_struct *work )
{
  struct dm_crypt_io *io ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  io = (struct dm_crypt_io *)__mptr + 0xfffffffffffffff0UL;
  if (((io->base_bio)->bi_rw & 1UL) == 0UL) {
    kcryptd_crypt_read_convert(io);
  } else {
    kcryptd_crypt_write_convert(io);
  }
  return;
}
}
static void kcryptd_queue_crypt(struct dm_crypt_io *io )
{
  struct crypt_config *cc ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  cc = io->cc;
  __init_work(& io->work, 0);
  __constr_expr_0.counter = 137438953408L;
  io->work.data = __constr_expr_0;
  lockdep_init_map(& io->work.lockdep_map, "(&io->work)", & __key, 0);
  INIT_LIST_HEAD(& io->work.entry);
  io->work.func = & kcryptd_crypt;
  queue_work(cc->crypt_queue, & io->work);
  return;
}
}
static int crypt_decode_key(u8 *key , char *hex , unsigned int size )
{
  char buffer[3U] ;
  unsigned int i ;
  char *tmp ;
  char *tmp___0 ;
  int tmp___1 ;
  {
  buffer[2] = 0;
  i = 0U;
  goto ldv_39368;
  ldv_39367:
  tmp = hex;
  hex = hex + 1;
  buffer[0] = *tmp;
  tmp___0 = hex;
  hex = hex + 1;
  buffer[1] = *tmp___0;
  tmp___1 = kstrtou8((char const *)(& buffer), 16U, key + (unsigned long )i);
  if (tmp___1 != 0) {
    return (-22);
  } else {
  }
  i = i + 1U;
  ldv_39368: ;
  if (i < size) {
    goto ldv_39367;
  } else {
  }
  if ((int )((signed char )*hex) != 0) {
    return (-22);
  } else {
  }
  return (0);
}
}
static void crypt_free_tfms(struct crypt_config *cc )
{
  unsigned int i ;
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )cc->tfms == (unsigned long )((struct crypto_ablkcipher **)0)) {
    return;
  } else {
  }
  i = 0U;
  goto ldv_39375;
  ldv_39374: ;
  if ((unsigned long )*(cc->tfms + (unsigned long )i) != (unsigned long )((struct crypto_ablkcipher *)0)) {
    tmp = IS_ERR((void const *)*(cc->tfms + (unsigned long )i));
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      crypto_free_ablkcipher(*(cc->tfms + (unsigned long )i));
      *(cc->tfms + (unsigned long )i) = (struct crypto_ablkcipher *)0;
    } else {
    }
  } else {
  }
  i = i + 1U;
  ldv_39375: ;
  if (cc->tfms_count > i) {
    goto ldv_39374;
  } else {
  }
  kfree((void const *)cc->tfms);
  cc->tfms = (struct crypto_ablkcipher **)0;
  return;
}
}
static int crypt_alloc_tfms(struct crypt_config *cc , char *ciphermode )
{
  unsigned int i ;
  int err ;
  void *tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  tmp = kmalloc((unsigned long )cc->tfms_count * 8UL, 208U);
  cc->tfms = (struct crypto_ablkcipher **)tmp;
  if ((unsigned long )cc->tfms == (unsigned long )((struct crypto_ablkcipher **)0)) {
    return (-12);
  } else {
  }
  i = 0U;
  goto ldv_39384;
  ldv_39383:
  *(cc->tfms + (unsigned long )i) = crypto_alloc_ablkcipher((char const *)ciphermode,
                                                            0U, 0U);
  tmp___1 = IS_ERR((void const *)*(cc->tfms + (unsigned long )i));
  if ((int )tmp___1) {
    tmp___0 = PTR_ERR((void const *)*(cc->tfms + (unsigned long )i));
    err = (int )tmp___0;
    crypt_free_tfms(cc);
    return (err);
  } else {
  }
  i = i + 1U;
  ldv_39384: ;
  if (cc->tfms_count > i) {
    goto ldv_39383;
  } else {
  }
  return (0);
}
}
static int crypt_setkey_allcpus(struct crypt_config *cc )
{
  unsigned int subkey_size ;
  int err ;
  int i ;
  int r ;
  int tmp ;
  {
  err = 0;
  tmp = __ilog2_u32(cc->tfms_count);
  subkey_size = (cc->key_size - cc->key_extra_size) >> tmp;
  i = 0;
  goto ldv_39394;
  ldv_39393:
  r = crypto_ablkcipher_setkey(*(cc->tfms + (unsigned long )i), (u8 const *)(& cc->key) + (unsigned long )((unsigned int )i * subkey_size),
                               subkey_size);
  if (r != 0) {
    err = r;
  } else {
  }
  i = i + 1;
  ldv_39394: ;
  if ((unsigned int )i < cc->tfms_count) {
    goto ldv_39393;
  } else {
  }
  return (err);
}
}
static int crypt_set_key(struct crypt_config *cc , char *key )
{
  int r ;
  int key_string_len ;
  size_t tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  r = -22;
  tmp = strlen((char const *)key);
  key_string_len = (int )tmp;
  if (cc->key_size != (unsigned int )(key_string_len >> 1)) {
    goto out;
  } else {
  }
  if (cc->key_size == 0U) {
    tmp___0 = strcmp((char const *)key, "-");
    if (tmp___0 != 0) {
      goto out;
    } else {
    }
  } else {
  }
  if (cc->key_size != 0U) {
    tmp___1 = crypt_decode_key((u8 *)(& cc->key), key, cc->key_size);
    if (tmp___1 < 0) {
      goto out;
    } else {
    }
  } else {
  }
  set_bit(1L, (unsigned long volatile *)(& cc->flags));
  r = crypt_setkey_allcpus(cc);
  out:
  memset((void *)key, 48, (size_t )key_string_len);
  return (r);
}
}
static int crypt_wipe_key(struct crypt_config *cc )
{
  int tmp ;
  {
  clear_bit(1L, (unsigned long volatile *)(& cc->flags));
  memset((void *)(& cc->key), 0, (unsigned long )cc->key_size);
  tmp = crypt_setkey_allcpus(cc);
  return (tmp);
}
}
static void crypt_dtr(struct dm_target *ti )
{
  struct crypt_config *cc ;
  {
  cc = (struct crypt_config *)ti->private;
  ti->private = (void *)0;
  if ((unsigned long )cc == (unsigned long )((struct crypt_config *)0)) {
    return;
  } else {
  }
  if ((unsigned long )cc->write_thread != (unsigned long )((struct task_struct *)0)) {
    kthread_stop(cc->write_thread);
  } else {
  }
  if ((unsigned long )cc->io_queue != (unsigned long )((struct workqueue_struct *)0)) {
    ldv_destroy_workqueue_19(cc->io_queue);
  } else {
  }
  if ((unsigned long )cc->crypt_queue != (unsigned long )((struct workqueue_struct *)0)) {
    ldv_destroy_workqueue_20(cc->crypt_queue);
  } else {
  }
  crypt_free_tfms(cc);
  if ((unsigned long )cc->bs != (unsigned long )((struct bio_set *)0)) {
    bioset_free(cc->bs);
  } else {
  }
  if ((unsigned long )cc->page_pool != (unsigned long )((mempool_t *)0)) {
    mempool_destroy(cc->page_pool);
  } else {
  }
  if ((unsigned long )cc->req_pool != (unsigned long )((mempool_t *)0)) {
    mempool_destroy(cc->req_pool);
  } else {
  }
  if ((unsigned long )cc->iv_gen_ops != (unsigned long )((struct crypt_iv_operations *)0) && (unsigned long )(cc->iv_gen_ops)->dtr != (unsigned long )((void (*)(struct crypt_config * ))0)) {
    (*((cc->iv_gen_ops)->dtr))(cc);
  } else {
  }
  if ((unsigned long )cc->dev != (unsigned long )((struct dm_dev *)0)) {
    dm_put_device(ti, cc->dev);
  } else {
  }
  kzfree((void const *)cc->cipher);
  kzfree((void const *)cc->cipher_string);
  kzfree((void const *)cc);
  return;
}
}
static int crypt_ctr_cipher(struct dm_target *ti , char *cipher_in , char *key )
{
  struct crypt_config *cc ;
  char *tmp ;
  char *cipher ;
  char *chainmode ;
  char *ivmode ;
  char *ivopts ;
  char *keycount ;
  char *cipher_api ;
  int ret ;
  char dummy ;
  char *tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  struct crypto_ablkcipher *tmp___7 ;
  unsigned int _max1 ;
  unsigned int _max2 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  {
  cc = (struct crypt_config *)ti->private;
  cipher_api = (char *)0;
  ret = -22;
  tmp___0 = strchr((char const *)cipher_in, 40);
  if ((unsigned long )tmp___0 != (unsigned long )((char *)0)) {
    ti->error = (char *)"Bad cipher specification";
    return (-22);
  } else {
  }
  cc->cipher_string = kstrdup((char const *)cipher_in, 208U);
  if ((unsigned long )cc->cipher_string == (unsigned long )((char *)0)) {
    goto bad_mem;
  } else {
  }
  tmp = cipher_in;
  keycount = strsep(& tmp, "-");
  cipher = strsep(& keycount, ":");
  if ((unsigned long )keycount == (unsigned long )((char *)0)) {
    cc->tfms_count = 1U;
  } else {
    tmp___1 = sscanf((char const *)keycount, "%u%c", & cc->tfms_count, & dummy);
    if (tmp___1 != 1) {
      ti->error = (char *)"Bad cipher key count specification";
      return (-22);
    } else {
      tmp___2 = is_power_of_2((unsigned long )cc->tfms_count);
      if (tmp___2) {
        tmp___3 = 0;
      } else {
        tmp___3 = 1;
      }
      if (tmp___3) {
        ti->error = (char *)"Bad cipher key count specification";
        return (-22);
      } else {
      }
    }
  }
  cc->key_parts = cc->tfms_count;
  cc->key_extra_size = 0U;
  cc->cipher = kstrdup((char const *)cipher, 208U);
  if ((unsigned long )cc->cipher == (unsigned long )((char *)0)) {
    goto bad_mem;
  } else {
  }
  chainmode = strsep(& tmp, "-");
  ivopts = strsep(& tmp, "-");
  ivmode = strsep(& ivopts, ":");
  if ((unsigned long )tmp != (unsigned long )((char *)0)) {
    printk("\fdevice-mapper: crypt: Ignoring unexpected additional cipher options\n");
  } else {
  }
  if ((unsigned long )chainmode == (unsigned long )((char *)0)) {
    chainmode = (char *)"cbc";
    ivmode = (char *)"plain";
  } else {
    tmp___4 = strcmp((char const *)chainmode, "plain");
    if (tmp___4 == 0 && (unsigned long )ivmode == (unsigned long )((char *)0)) {
      chainmode = (char *)"cbc";
      ivmode = (char *)"plain";
    } else {
    }
  }
  tmp___5 = strcmp((char const *)chainmode, "ecb");
  if (tmp___5 != 0 && (unsigned long )ivmode == (unsigned long )((char *)0)) {
    ti->error = (char *)"IV mechanism required";
    return (-22);
  } else {
  }
  tmp___6 = kmalloc(64UL, 208U);
  cipher_api = (char *)tmp___6;
  if ((unsigned long )cipher_api == (unsigned long )((char *)0)) {
    goto bad_mem;
  } else {
  }
  ret = snprintf(cipher_api, 64UL, "%s(%s)", chainmode, cipher);
  if (ret < 0) {
    kfree((void const *)cipher_api);
    goto bad_mem;
  } else {
  }
  ret = crypt_alloc_tfms(cc, cipher_api);
  if (ret < 0) {
    ti->error = (char *)"Error allocating crypto tfm";
    goto bad;
  } else {
  }
  tmp___7 = any_tfm(cc);
  cc->iv_size = crypto_ablkcipher_ivsize(tmp___7);
  if (cc->iv_size != 0U) {
    _max1 = cc->iv_size;
    _max2 = 8U;
    cc->iv_size = _max1 > _max2 ? _max1 : _max2;
  } else
  if ((unsigned long )ivmode != (unsigned long )((char *)0)) {
    printk("\fdevice-mapper: crypt: Selected cipher does not support IVs\n");
    ivmode = (char *)0;
  } else {
  }
  if ((unsigned long )ivmode == (unsigned long )((char *)0)) {
    cc->iv_gen_ops = (struct crypt_iv_operations *)0;
  } else {
    tmp___14 = strcmp((char const *)ivmode, "plain");
    if (tmp___14 == 0) {
      cc->iv_gen_ops = & crypt_iv_plain_ops;
    } else {
      tmp___13 = strcmp((char const *)ivmode, "plain64");
      if (tmp___13 == 0) {
        cc->iv_gen_ops = & crypt_iv_plain64_ops;
      } else {
        tmp___12 = strcmp((char const *)ivmode, "essiv");
        if (tmp___12 == 0) {
          cc->iv_gen_ops = & crypt_iv_essiv_ops;
        } else {
          tmp___11 = strcmp((char const *)ivmode, "benbi");
          if (tmp___11 == 0) {
            cc->iv_gen_ops = & crypt_iv_benbi_ops;
          } else {
            tmp___10 = strcmp((char const *)ivmode, "null");
            if (tmp___10 == 0) {
              cc->iv_gen_ops = & crypt_iv_null_ops;
            } else {
              tmp___9 = strcmp((char const *)ivmode, "lmk");
              if (tmp___9 == 0) {
                cc->iv_gen_ops = & crypt_iv_lmk_ops;
                if (cc->key_size % cc->key_parts != 0U) {
                  cc->key_parts = cc->key_parts + 1U;
                  cc->key_extra_size = cc->key_size / cc->key_parts;
                } else {
                }
              } else {
                tmp___8 = strcmp((char const *)ivmode, "tcw");
                if (tmp___8 == 0) {
                  cc->iv_gen_ops = & crypt_iv_tcw_ops;
                  cc->key_parts = cc->key_parts + 2U;
                  cc->key_extra_size = cc->iv_size + 16U;
                } else {
                  ret = -22;
                  ti->error = (char *)"Invalid IV mode";
                  goto bad;
                }
              }
            }
          }
        }
      }
    }
  }
  ret = crypt_set_key(cc, key);
  if (ret < 0) {
    ti->error = (char *)"Error decoding and setting key";
    goto bad;
  } else {
  }
  if ((unsigned long )cc->iv_gen_ops != (unsigned long )((struct crypt_iv_operations *)0) && (unsigned long )(cc->iv_gen_ops)->ctr != (unsigned long )((int (*)(struct crypt_config * ,
                                                                                                                                                                struct dm_target * ,
                                                                                                                                                                char const * ))0)) {
    ret = (*((cc->iv_gen_ops)->ctr))(cc, ti, (char const *)ivopts);
    if (ret < 0) {
      ti->error = (char *)"Error creating IV";
      goto bad;
    } else {
    }
  } else {
  }
  if ((unsigned long )cc->iv_gen_ops != (unsigned long )((struct crypt_iv_operations *)0) && (unsigned long )(cc->iv_gen_ops)->init != (unsigned long )((int (*)(struct crypt_config * ))0)) {
    ret = (*((cc->iv_gen_ops)->init))(cc);
    if (ret < 0) {
      ti->error = (char *)"Error initialising IV";
      goto bad;
    } else {
    }
  } else {
  }
  ret = 0;
  bad:
  kfree((void const *)cipher_api);
  return (ret);
  bad_mem:
  ti->error = (char *)"Cannot allocate cipher strings";
  return (-12);
}
}
static int crypt_ctr(struct dm_target *ti , unsigned int argc , char **argv )
{
  struct crypt_config *cc ;
  unsigned int key_size ;
  unsigned int opt_params ;
  unsigned long long tmpll ;
  int ret ;
  size_t iv_size_padding ;
  struct dm_arg_set as ;
  char const *opt_string ;
  char dummy ;
  struct dm_arg _args[1U] ;
  size_t tmp ;
  void *tmp___0 ;
  struct crypto_ablkcipher *tmp___1 ;
  unsigned int tmp___2 ;
  struct crypto_ablkcipher *tmp___3 ;
  unsigned int tmp___4 ;
  struct crypto_ablkcipher *tmp___5 ;
  unsigned int tmp___6 ;
  struct crypto_ablkcipher *tmp___7 ;
  unsigned int tmp___8 ;
  unsigned int tmp___9 ;
  struct lock_class_key __key ;
  int tmp___10 ;
  fmode_t tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  unsigned int tmp___17 ;
  struct lock_class_key __key___0 ;
  char const *__lock_name ;
  struct workqueue_struct *tmp___18 ;
  struct lock_class_key __key___1 ;
  char const *__lock_name___0 ;
  struct workqueue_struct *tmp___19 ;
  struct lock_class_key __key___2 ;
  char const *__lock_name___1 ;
  unsigned int tmp___20 ;
  struct workqueue_struct *tmp___21 ;
  int tmp___22 ;
  struct lock_class_key __key___3 ;
  struct rb_root __constr_expr_0 ;
  long tmp___23 ;
  bool tmp___24 ;
  {
  _args[0].min = 0U;
  _args[0].max = 3U;
  _args[0].error = (char *)"Invalid number of feature args";
  if (argc <= 4U) {
    ti->error = (char *)"Not enough arguments";
    return (-22);
  } else {
  }
  tmp = strlen((char const *)*(argv + 1UL));
  key_size = (unsigned int )(tmp >> 1);
  tmp___0 = kzalloc((unsigned long )key_size + 440UL, 208U);
  cc = (struct crypt_config *)tmp___0;
  if ((unsigned long )cc == (unsigned long )((struct crypt_config *)0)) {
    ti->error = (char *)"Cannot allocate encryption context";
    return (-12);
  } else {
  }
  cc->key_size = key_size;
  ti->private = (void *)cc;
  ret = crypt_ctr_cipher(ti, *argv, *(argv + 1UL));
  if (ret < 0) {
    goto bad;
  } else {
  }
  cc->dmreq_start = 80U;
  tmp___1 = any_tfm(cc);
  tmp___2 = crypto_ablkcipher_reqsize(tmp___1);
  cc->dmreq_start = cc->dmreq_start + tmp___2;
  cc->dmreq_start = (cc->dmreq_start + 7U) & 4294967288U;
  tmp___7 = any_tfm(cc);
  tmp___8 = crypto_ablkcipher_alignmask(tmp___7);
  if (tmp___8 <= 7U) {
    tmp___3 = any_tfm(cc);
    tmp___4 = crypto_ablkcipher_alignmask(tmp___3);
    iv_size_padding = - ((unsigned long )cc->dmreq_start + 96UL) & (unsigned long )tmp___4;
  } else {
    tmp___5 = any_tfm(cc);
    tmp___6 = crypto_ablkcipher_alignmask(tmp___5);
    iv_size_padding = (size_t )tmp___6;
  }
  ret = -12;
  cc->req_pool = mempool_create_kmalloc_pool(16, (((unsigned long )cc->dmreq_start + iv_size_padding) + (unsigned long )cc->iv_size) + 96UL);
  if ((unsigned long )cc->req_pool == (unsigned long )((mempool_t *)0)) {
    ti->error = (char *)"Cannot allocate crypt request mempool";
    goto bad;
  } else {
  }
  tmp___9 = (((cc->dmreq_start + (unsigned int )iv_size_padding) + cc->iv_size) + 423U) & 4294967288U;
  ti->per_bio_data_size = tmp___9;
  cc->per_bio_data_size = tmp___9;
  cc->page_pool = mempool_create_page_pool(256, 0);
  if ((unsigned long )cc->page_pool == (unsigned long )((mempool_t *)0)) {
    ti->error = (char *)"Cannot allocate page mempool";
    goto bad;
  } else {
  }
  cc->bs = bioset_create(16U, 0U);
  if ((unsigned long )cc->bs == (unsigned long )((struct bio_set *)0)) {
    ti->error = (char *)"Cannot allocate crypt bioset";
    goto bad;
  } else {
  }
  __mutex_init(& cc->bio_alloc_lock, "&cc->bio_alloc_lock", & __key);
  ret = -22;
  tmp___10 = sscanf((char const *)*(argv + 2UL), "%llu%c", & tmpll, & dummy);
  if (tmp___10 != 1) {
    ti->error = (char *)"Invalid iv_offset sector";
    goto bad;
  } else {
  }
  cc->iv_offset = (sector_t )tmpll;
  tmp___11 = dm_table_get_mode(ti->table);
  tmp___12 = dm_get_device(ti, (char const *)*(argv + 3UL), tmp___11, & cc->dev);
  if (tmp___12 != 0) {
    ti->error = (char *)"Device lookup failed";
    goto bad;
  } else {
  }
  tmp___13 = sscanf((char const *)*(argv + 4UL), "%llu%c", & tmpll, & dummy);
  if (tmp___13 != 1) {
    ti->error = (char *)"Invalid device sector";
    goto bad;
  } else {
  }
  cc->start = (sector_t )tmpll;
  argv = argv + 5UL;
  argc = argc - 5U;
  if (argc != 0U) {
    as.argc = argc;
    as.argv = argv;
    ret = dm_read_arg_group((struct dm_arg *)(& _args), & as, & opt_params, & ti->error);
    if (ret != 0) {
      goto bad;
    } else {
    }
    ret = -22;
    goto ldv_39448;
    ldv_39447:
    opt_string = dm_shift_arg(& as);
    if ((unsigned long )opt_string == (unsigned long )((char const *)0)) {
      ti->error = (char *)"Not enough feature arguments";
      goto bad;
    } else {
    }
    tmp___16 = strcasecmp(opt_string, "allow_discards");
    if (tmp___16 == 0) {
      ti->num_discard_bios = 1U;
    } else {
      tmp___15 = strcasecmp(opt_string, "same_cpu_crypt");
      if (tmp___15 == 0) {
        set_bit(2L, (unsigned long volatile *)(& cc->flags));
      } else {
        tmp___14 = strcasecmp(opt_string, "submit_from_crypt_cpus");
        if (tmp___14 == 0) {
          set_bit(3L, (unsigned long volatile *)(& cc->flags));
        } else {
          ti->error = (char *)"Invalid feature arguments";
          goto bad;
        }
      }
    }
    ldv_39448:
    tmp___17 = opt_params;
    opt_params = opt_params - 1U;
    if (tmp___17 != 0U) {
      goto ldv_39447;
    } else {
    }
  } else {
  }
  ret = -12;
  __lock_name = "\"kcryptd_io\"";
  tmp___18 = __alloc_workqueue_key("kcryptd_io", 8U, 1, & __key___0, __lock_name);
  cc->io_queue = tmp___18;
  if ((unsigned long )cc->io_queue == (unsigned long )((struct workqueue_struct *)0)) {
    ti->error = (char *)"Couldn\'t create kcryptd io queue";
    goto bad;
  } else {
  }
  tmp___22 = constant_test_bit(2L, (unsigned long const volatile *)(& cc->flags));
  if (tmp___22 != 0) {
    __lock_name___0 = "\"kcryptd\"";
    tmp___19 = __alloc_workqueue_key("kcryptd", 40U, 1, & __key___1, __lock_name___0);
    cc->crypt_queue = tmp___19;
  } else {
    __lock_name___1 = "\"kcryptd\"";
    tmp___20 = cpumask_weight(cpu_online_mask);
    tmp___21 = __alloc_workqueue_key("kcryptd", 42U, (int )tmp___20, & __key___2,
                                     __lock_name___1);
    cc->crypt_queue = tmp___21;
  }
  if ((unsigned long )cc->crypt_queue == (unsigned long )((struct workqueue_struct *)0)) {
    ti->error = (char *)"Couldn\'t create kcryptd queue";
    goto bad;
  } else {
  }
  __init_waitqueue_head(& cc->write_thread_wait, "&cc->write_thread_wait", & __key___3);
  __constr_expr_0.rb_node = (struct rb_node *)0;
  cc->write_tree = __constr_expr_0;
  cc->write_thread = kthread_create_on_node(& dmcrypt_write, (void *)cc, -1, "dmcrypt_write");
  tmp___24 = IS_ERR((void const *)cc->write_thread);
  if ((int )tmp___24) {
    tmp___23 = PTR_ERR((void const *)cc->write_thread);
    ret = (int )tmp___23;
    cc->write_thread = (struct task_struct *)0;
    ti->error = (char *)"Couldn\'t spawn write thread";
    goto bad;
  } else {
  }
  wake_up_process(cc->write_thread);
  ti->num_flush_bios = 1U;
  ti->discard_zeroes_data_unsupported = 1;
  return (0);
  bad:
  crypt_dtr(ti);
  return (ret);
}
}
static int crypt_map(struct dm_target *ti , struct bio *bio )
{
  struct dm_crypt_io *io ;
  struct crypt_config *cc ;
  long tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  cc = (struct crypt_config *)ti->private;
  tmp = ldv__builtin_expect(((unsigned long long )bio->bi_rw & 8320ULL) != 0ULL, 0L);
  if (tmp != 0L) {
    bio->bi_bdev = (cc->dev)->bdev;
    if (bio->bi_iter.bi_size >> 9 != 0U) {
      bio->bi_iter.bi_sector = cc->start + (bio->bi_iter.bi_sector - ti->begin);
    } else {
    }
    return (1);
  } else {
  }
  tmp___0 = dm_per_bio_data(bio, (size_t )cc->per_bio_data_size);
  io = (struct dm_crypt_io *)tmp___0;
  crypt_io_init(io, cc, bio, bio->bi_iter.bi_sector - ti->begin);
  io->ctx.req = (struct ablkcipher_request *)io + 1U;
  if (((io->base_bio)->bi_rw & 1UL) == 0UL) {
    tmp___1 = kcryptd_io_read(io, 0U);
    if (tmp___1 != 0) {
      kcryptd_queue_read(io);
    } else {
    }
  } else {
    kcryptd_queue_crypt(io);
  }
  return (0);
}
}
static void crypt_status(struct dm_target *ti , status_type_t type , unsigned int status_flags ,
                         char *result , unsigned int maxlen )
{
  struct crypt_config *cc ;
  unsigned int i ;
  unsigned int sz ;
  int num_feature_args ;
  int tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  int tmp___3 ;
  unsigned int tmp___4 ;
  int tmp___5 ;
  unsigned int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  unsigned int tmp___10 ;
  int tmp___11 ;
  unsigned int tmp___12 ;
  int tmp___13 ;
  unsigned int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  unsigned int tmp___17 ;
  int tmp___18 ;
  {
  cc = (struct crypt_config *)ti->private;
  sz = 0U;
  num_feature_args = 0;
  switch ((unsigned int )type) {
  case 0U:
  *result = 0;
  goto ldv_39479;
  case 1U: ;
  if (sz < maxlen) {
    tmp = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), "%s ", cc->cipher_string);
    tmp___0 = (unsigned int )tmp;
  } else {
    tmp___0 = 0U;
  }
  sz = tmp___0 + sz;
  if (cc->key_size != 0U) {
    i = 0U;
    goto ldv_39482;
    ldv_39481: ;
    if (sz < maxlen) {
      tmp___1 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), "%02x",
                          (int )cc->key[i]);
      tmp___2 = (unsigned int )tmp___1;
    } else {
      tmp___2 = 0U;
    }
    sz = tmp___2 + sz;
    i = i + 1U;
    ldv_39482: ;
    if (cc->key_size > i) {
      goto ldv_39481;
    } else {
    }
  } else {
    if (sz < maxlen) {
      tmp___3 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), "-");
      tmp___4 = (unsigned int )tmp___3;
    } else {
      tmp___4 = 0U;
    }
    sz = tmp___4 + sz;
  }
  if (sz < maxlen) {
    tmp___5 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " %llu %s %llu",
                        (unsigned long long )cc->iv_offset, (char *)(& (cc->dev)->name),
                        (unsigned long long )cc->start);
    tmp___6 = (unsigned int )tmp___5;
  } else {
    tmp___6 = 0U;
  }
  sz = tmp___6 + sz;
  num_feature_args = (ti->num_discard_bios != 0U) + num_feature_args;
  tmp___7 = constant_test_bit(2L, (unsigned long const volatile *)(& cc->flags));
  num_feature_args = tmp___7 + num_feature_args;
  tmp___8 = constant_test_bit(3L, (unsigned long const volatile *)(& cc->flags));
  num_feature_args = tmp___8 + num_feature_args;
  if (num_feature_args != 0) {
    if (sz < maxlen) {
      tmp___9 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " %d",
                          num_feature_args);
      tmp___10 = (unsigned int )tmp___9;
    } else {
      tmp___10 = 0U;
    }
    sz = tmp___10 + sz;
    if (ti->num_discard_bios != 0U) {
      if (sz < maxlen) {
        tmp___11 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz),
                             " allow_discards");
        tmp___12 = (unsigned int )tmp___11;
      } else {
        tmp___12 = 0U;
      }
      sz = tmp___12 + sz;
    } else {
    }
    tmp___15 = constant_test_bit(2L, (unsigned long const volatile *)(& cc->flags));
    if (tmp___15 != 0) {
      if (sz < maxlen) {
        tmp___13 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz),
                             " same_cpu_crypt");
        tmp___14 = (unsigned int )tmp___13;
      } else {
        tmp___14 = 0U;
      }
      sz = tmp___14 + sz;
    } else {
    }
    tmp___18 = constant_test_bit(3L, (unsigned long const volatile *)(& cc->flags));
    if (tmp___18 != 0) {
      if (sz < maxlen) {
        tmp___16 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz),
                             " submit_from_crypt_cpus");
        tmp___17 = (unsigned int )tmp___16;
      } else {
        tmp___17 = 0U;
      }
      sz = tmp___17 + sz;
    } else {
    }
  } else {
  }
  goto ldv_39479;
  }
  ldv_39479: ;
  return;
}
}
static void crypt_postsuspend(struct dm_target *ti )
{
  struct crypt_config *cc ;
  {
  cc = (struct crypt_config *)ti->private;
  set_bit(0L, (unsigned long volatile *)(& cc->flags));
  return;
}
}
static int crypt_preresume(struct dm_target *ti )
{
  struct crypt_config *cc ;
  int tmp ;
  {
  cc = (struct crypt_config *)ti->private;
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& cc->flags));
  if (tmp == 0) {
    printk("\vdevice-mapper: crypt: aborting resume - crypt key is not set.\n");
    return (-11);
  } else {
  }
  return (0);
}
}
static void crypt_resume(struct dm_target *ti )
{
  struct crypt_config *cc ;
  {
  cc = (struct crypt_config *)ti->private;
  clear_bit(0L, (unsigned long volatile *)(& cc->flags));
  return;
}
}
static int crypt_message(struct dm_target *ti , unsigned int argc , char **argv )
{
  struct crypt_config *cc ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  cc = (struct crypt_config *)ti->private;
  ret = -22;
  if (argc <= 1U) {
    goto error;
  } else {
  }
  tmp___3 = strcasecmp((char const *)*argv, "key");
  if (tmp___3 == 0) {
    tmp = constant_test_bit(0L, (unsigned long const volatile *)(& cc->flags));
    if (tmp == 0) {
      printk("\fdevice-mapper: crypt: not suspended during key manipulation.\n");
      return (-22);
    } else {
    }
    if (argc == 3U) {
      tmp___0 = strcasecmp((char const *)*(argv + 1UL), "set");
      if (tmp___0 == 0) {
        ret = crypt_set_key(cc, *(argv + 2UL));
        if (ret != 0) {
          return (ret);
        } else {
        }
        if ((unsigned long )cc->iv_gen_ops != (unsigned long )((struct crypt_iv_operations *)0) && (unsigned long )(cc->iv_gen_ops)->init != (unsigned long )((int (*)(struct crypt_config * ))0)) {
          ret = (*((cc->iv_gen_ops)->init))(cc);
        } else {
        }
        return (ret);
      } else {
      }
    } else {
    }
    if (argc == 2U) {
      tmp___2 = strcasecmp((char const *)*(argv + 1UL), "wipe");
      if (tmp___2 == 0) {
        if ((unsigned long )cc->iv_gen_ops != (unsigned long )((struct crypt_iv_operations *)0) && (unsigned long )(cc->iv_gen_ops)->wipe != (unsigned long )((int (*)(struct crypt_config * ))0)) {
          ret = (*((cc->iv_gen_ops)->wipe))(cc);
          if (ret != 0) {
            return (ret);
          } else {
          }
        } else {
        }
        tmp___1 = crypt_wipe_key(cc);
        return (tmp___1);
      } else {
      }
    } else {
    }
  } else {
  }
  error:
  printk("\fdevice-mapper: crypt: unrecognised message received.\n");
  return (-22);
}
}
static int crypt_merge(struct dm_target *ti , struct bvec_merge_data *bvm , struct bio_vec *biovec ,
                       int max_size )
{
  struct crypt_config *cc ;
  struct request_queue *q ;
  struct request_queue *tmp ;
  int _min1 ;
  int _min2 ;
  int tmp___0 ;
  {
  cc = (struct crypt_config *)ti->private;
  tmp = bdev_get_queue((cc->dev)->bdev);
  q = tmp;
  if ((unsigned long )q->merge_bvec_fn == (unsigned long )((merge_bvec_fn *)0)) {
    return (max_size);
  } else {
  }
  bvm->bi_bdev = (cc->dev)->bdev;
  bvm->bi_sector = cc->start + (bvm->bi_sector - ti->begin);
  _min1 = max_size;
  tmp___0 = (*(q->merge_bvec_fn))(q, bvm, biovec);
  _min2 = tmp___0;
  return (_min1 < _min2 ? _min1 : _min2);
}
}
static int crypt_iterate_devices(struct dm_target *ti , int (*fn)(struct dm_target * ,
                                                                  struct dm_dev * ,
                                                                  sector_t , sector_t ,
                                                                  void * ) , void *data )
{
  struct crypt_config *cc ;
  int tmp ;
  {
  cc = (struct crypt_config *)ti->private;
  tmp = (*fn)(ti, cc->dev, cc->start, ti->len, data);
  return (tmp);
}
}
static struct target_type crypt_target =
     {0ULL, "crypt", & __this_module, {1U, 14U, 0U}, & crypt_ctr, & crypt_dtr, & crypt_map,
    0, 0, 0, 0, 0, 0, 0, & crypt_postsuspend, & crypt_preresume, & crypt_resume, & crypt_status,
    & crypt_message, 0, & crypt_merge, 0, & crypt_iterate_devices, 0, {0, 0}};
static int dm_crypt_init(void)
{
  int r ;
  {
  r = dm_register_target(& crypt_target);
  if (r < 0) {
    printk("\vdevice-mapper: crypt: register failed %d\n", r);
  } else {
  }
  return (r);
}
}
static void dm_crypt_exit(void)
{
  {
  dm_unregister_target(& crypt_target);
  return;
}
}
extern int ldv_release_4(void) ;
extern int ldv_setup_4(void) ;
extern int ldv_release_5(void) ;
int ldv_retval_2 ;
extern int ldv_release_8(void) ;
int ldv_retval_5 ;
int ldv_retval_0 ;
extern int ldv_setup_5(void) ;
int ldv_retval_4 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
int ldv_retval_3 ;
extern int ldv_setup_8(void) ;
extern int ldv_presuspend_3(void) ;
void call_and_disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 2 || ldv_work_1_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_0) {
    kcryptd_io_read_work(work);
    ldv_work_1_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_1 == 2 || ldv_work_1_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_1) {
    kcryptd_io_read_work(work);
    ldv_work_1_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_2 == 2 || ldv_work_1_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_2) {
    kcryptd_io_read_work(work);
    ldv_work_1_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_3 == 2 || ldv_work_1_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_3) {
    kcryptd_io_read_work(work);
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
void ldv_initialize_crypt_iv_operations_8(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(440UL);
  crypt_iv_essiv_ops_group0 = (struct crypt_config *)tmp;
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
    kcryptd_io_read_work(ldv_work_struct_1_0);
    ldv_work_1_0 = 1;
  } else {
  }
  goto ldv_39598;
  case 1: ;
  if (ldv_work_1_1 == 2 || ldv_work_1_1 == 3) {
    ldv_work_1_1 = 4;
    kcryptd_io_read_work(ldv_work_struct_1_0);
    ldv_work_1_1 = 1;
  } else {
  }
  goto ldv_39598;
  case 2: ;
  if (ldv_work_1_2 == 2 || ldv_work_1_2 == 3) {
    ldv_work_1_2 = 4;
    kcryptd_io_read_work(ldv_work_struct_1_0);
    ldv_work_1_2 = 1;
  } else {
  }
  goto ldv_39598;
  case 3: ;
  if (ldv_work_1_3 == 2 || ldv_work_1_3 == 3) {
    ldv_work_1_3 = 4;
    kcryptd_io_read_work(ldv_work_struct_1_0);
    ldv_work_1_3 = 1;
  } else {
  }
  goto ldv_39598;
  default:
  ldv_stop();
  }
  ldv_39598: ;
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
void ldv_target_type_3(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(88UL);
  crypt_target_group1 = (struct dm_target *)tmp;
  return;
}
}
void ldv_initialize_crypt_iv_operations_5(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(440UL);
  crypt_iv_lmk_ops_group0 = (struct crypt_config *)tmp;
  tmp___0 = ldv_init_zalloc(96UL);
  crypt_iv_lmk_ops_group1 = (struct dm_crypt_request *)tmp___0;
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
    kcryptd_crypt(work);
    ldv_work_2_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_1 == 2 || ldv_work_2_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_1) {
    kcryptd_crypt(work);
    ldv_work_2_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_2 == 2 || ldv_work_2_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_2) {
    kcryptd_crypt(work);
    ldv_work_2_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_3 == 2 || ldv_work_2_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_3) {
    kcryptd_crypt(work);
    ldv_work_2_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_crypt_iv_operations_7(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(440UL);
  crypt_iv_benbi_ops_group0 = (struct crypt_config *)tmp;
  return;
}
}
void ldv_initialize_crypt_iv_operations_4(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(440UL);
  crypt_iv_tcw_ops_group0 = (struct crypt_config *)tmp;
  tmp___0 = ldv_init_zalloc(96UL);
  crypt_iv_tcw_ops_group1 = (struct dm_crypt_request *)tmp___0;
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
    kcryptd_crypt(ldv_work_struct_2_0);
    ldv_work_2_0 = 1;
  } else {
  }
  goto ldv_39636;
  case 1: ;
  if (ldv_work_2_1 == 2 || ldv_work_2_1 == 3) {
    ldv_work_2_1 = 4;
    kcryptd_crypt(ldv_work_struct_2_0);
    ldv_work_2_1 = 1;
  } else {
  }
  goto ldv_39636;
  case 2: ;
  if (ldv_work_2_2 == 2 || ldv_work_2_2 == 3) {
    ldv_work_2_2 = 4;
    kcryptd_crypt(ldv_work_struct_2_0);
    ldv_work_2_2 = 1;
  } else {
  }
  goto ldv_39636;
  case 3: ;
  if (ldv_work_2_3 == 2 || ldv_work_2_3 == 3) {
    ldv_work_2_3 = 4;
    kcryptd_crypt(ldv_work_struct_2_0);
    ldv_work_2_3 = 1;
  } else {
  }
  goto ldv_39636;
  default:
  ldv_stop();
  }
  ldv_39636: ;
  return;
}
}
int main(void)
{
  struct dm_crypt_request *ldvarg1 ;
  void *tmp ;
  struct crypt_config *ldvarg0 ;
  void *tmp___0 ;
  u8 *ldvarg2 ;
  void *tmp___1 ;
  int (*ldvarg11)(struct dm_target * , struct dm_dev * , sector_t , sector_t , void * ) ;
  char **ldvarg7 ;
  void *tmp___2 ;
  char *ldvarg3 ;
  void *tmp___3 ;
  int ldvarg12 ;
  status_type_t ldvarg5 ;
  unsigned int ldvarg16 ;
  char **ldvarg15 ;
  void *tmp___4 ;
  unsigned int ldvarg6 ;
  unsigned int ldvarg8 ;
  struct bvec_merge_data *ldvarg14 ;
  void *tmp___5 ;
  unsigned int ldvarg4 ;
  struct bio_vec *ldvarg13 ;
  void *tmp___6 ;
  void *ldvarg10 ;
  void *tmp___7 ;
  struct bio *ldvarg9 ;
  void *tmp___8 ;
  struct dm_target *ldvarg18 ;
  void *tmp___9 ;
  u8 *ldvarg20 ;
  void *tmp___10 ;
  char *ldvarg17 ;
  void *tmp___11 ;
  struct dm_crypt_request *ldvarg19 ;
  void *tmp___12 ;
  struct crypt_config *ldvarg21 ;
  void *tmp___13 ;
  u8 *ldvarg23 ;
  void *tmp___14 ;
  struct dm_crypt_request *ldvarg22 ;
  void *tmp___15 ;
  char *ldvarg24 ;
  void *tmp___16 ;
  u8 *ldvarg27 ;
  void *tmp___17 ;
  struct dm_crypt_request *ldvarg26 ;
  void *tmp___18 ;
  struct dm_target *ldvarg25 ;
  void *tmp___19 ;
  u8 *ldvarg31 ;
  void *tmp___20 ;
  char *ldvarg29 ;
  void *tmp___21 ;
  u8 *ldvarg28 ;
  void *tmp___22 ;
  struct dm_target *ldvarg30 ;
  void *tmp___23 ;
  struct crypt_config *ldvarg32 ;
  void *tmp___24 ;
  u8 *ldvarg34 ;
  void *tmp___25 ;
  struct dm_crypt_request *ldvarg33 ;
  void *tmp___26 ;
  struct dm_target *ldvarg37 ;
  void *tmp___27 ;
  u8 *ldvarg35 ;
  void *tmp___28 ;
  char *ldvarg36 ;
  void *tmp___29 ;
  u8 *ldvarg38 ;
  void *tmp___30 ;
  int tmp___31 ;
  int tmp___32 ;
  int tmp___33 ;
  int tmp___34 ;
  int tmp___35 ;
  int tmp___36 ;
  int tmp___37 ;
  int tmp___38 ;
  int tmp___39 ;
  int tmp___40 ;
  {
  tmp = ldv_init_zalloc(96UL);
  ldvarg1 = (struct dm_crypt_request *)tmp;
  tmp___0 = ldv_init_zalloc(440UL);
  ldvarg0 = (struct crypt_config *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg2 = (u8 *)tmp___1;
  tmp___2 = ldv_init_zalloc(8UL);
  ldvarg7 = (char **)tmp___2;
  tmp___3 = ldv_init_zalloc(1UL);
  ldvarg3 = (char *)tmp___3;
  tmp___4 = ldv_init_zalloc(8UL);
  ldvarg15 = (char **)tmp___4;
  tmp___5 = ldv_init_zalloc(32UL);
  ldvarg14 = (struct bvec_merge_data *)tmp___5;
  tmp___6 = ldv_init_zalloc(16UL);
  ldvarg13 = (struct bio_vec *)tmp___6;
  tmp___7 = ldv_init_zalloc(1UL);
  ldvarg10 = tmp___7;
  tmp___8 = ldv_init_zalloc(136UL);
  ldvarg9 = (struct bio *)tmp___8;
  tmp___9 = ldv_init_zalloc(88UL);
  ldvarg18 = (struct dm_target *)tmp___9;
  tmp___10 = ldv_init_zalloc(1UL);
  ldvarg20 = (u8 *)tmp___10;
  tmp___11 = ldv_init_zalloc(1UL);
  ldvarg17 = (char *)tmp___11;
  tmp___12 = ldv_init_zalloc(96UL);
  ldvarg19 = (struct dm_crypt_request *)tmp___12;
  tmp___13 = ldv_init_zalloc(440UL);
  ldvarg21 = (struct crypt_config *)tmp___13;
  tmp___14 = ldv_init_zalloc(1UL);
  ldvarg23 = (u8 *)tmp___14;
  tmp___15 = ldv_init_zalloc(96UL);
  ldvarg22 = (struct dm_crypt_request *)tmp___15;
  tmp___16 = ldv_init_zalloc(1UL);
  ldvarg24 = (char *)tmp___16;
  tmp___17 = ldv_init_zalloc(1UL);
  ldvarg27 = (u8 *)tmp___17;
  tmp___18 = ldv_init_zalloc(96UL);
  ldvarg26 = (struct dm_crypt_request *)tmp___18;
  tmp___19 = ldv_init_zalloc(88UL);
  ldvarg25 = (struct dm_target *)tmp___19;
  tmp___20 = ldv_init_zalloc(1UL);
  ldvarg31 = (u8 *)tmp___20;
  tmp___21 = ldv_init_zalloc(1UL);
  ldvarg29 = (char *)tmp___21;
  tmp___22 = ldv_init_zalloc(1UL);
  ldvarg28 = (u8 *)tmp___22;
  tmp___23 = ldv_init_zalloc(88UL);
  ldvarg30 = (struct dm_target *)tmp___23;
  tmp___24 = ldv_init_zalloc(440UL);
  ldvarg32 = (struct crypt_config *)tmp___24;
  tmp___25 = ldv_init_zalloc(1UL);
  ldvarg34 = (u8 *)tmp___25;
  tmp___26 = ldv_init_zalloc(96UL);
  ldvarg33 = (struct dm_crypt_request *)tmp___26;
  tmp___27 = ldv_init_zalloc(88UL);
  ldvarg37 = (struct dm_target *)tmp___27;
  tmp___28 = ldv_init_zalloc(1UL);
  ldvarg35 = (u8 *)tmp___28;
  tmp___29 = ldv_init_zalloc(1UL);
  ldvarg36 = (char *)tmp___29;
  tmp___30 = ldv_init_zalloc(1UL);
  ldvarg38 = (u8 *)tmp___30;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg11), 0, 8UL);
  ldv_memset((void *)(& ldvarg12), 0, 4UL);
  ldv_memset((void *)(& ldvarg5), 0, 4UL);
  ldv_memset((void *)(& ldvarg16), 0, 4UL);
  ldv_memset((void *)(& ldvarg6), 0, 4UL);
  ldv_memset((void *)(& ldvarg8), 0, 4UL);
  ldv_memset((void *)(& ldvarg4), 0, 4UL);
  ldv_state_variable_6 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_9 = 0;
  work_init_2();
  ldv_state_variable_2 = 1;
  ldv_state_variable_8 = 0;
  work_init_1();
  ldv_state_variable_1 = 1;
  ldv_state_variable_4 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 0;
  ldv_39785:
  tmp___31 = __VERIFIER_nondet_int();
  switch (tmp___31) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___32 = __VERIFIER_nondet_int();
    switch (tmp___32) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      crypt_iv_null_gen(ldvarg0, ldvarg2, ldvarg1);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_39713;
    default:
    ldv_stop();
    }
    ldv_39713: ;
  } else {
  }
  goto ldv_39715;
  case 1: ;
  if (ldv_state_variable_3 != 0) {
    tmp___33 = __VERIFIER_nondet_int();
    switch (tmp___33) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      ldv_retval_1 = crypt_ctr(crypt_target_group1, ldvarg16, ldvarg15);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_3 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_39718;
    case 1: ;
    if (ldv_state_variable_3 == 4) {
      crypt_dtr(crypt_target_group1);
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      crypt_dtr(crypt_target_group1);
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      crypt_dtr(crypt_target_group1);
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      crypt_dtr(crypt_target_group1);
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_39718;
    case 2: ;
    if (ldv_state_variable_3 == 4) {
      ldv_retval_0 = crypt_preresume(crypt_target_group1);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_3 = 5;
      } else {
      }
    } else {
    }
    goto ldv_39718;
    case 3: ;
    if (ldv_state_variable_3 == 4) {
      crypt_merge(crypt_target_group1, ldvarg14, ldvarg13, ldvarg12);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 1) {
      crypt_merge(crypt_target_group1, ldvarg14, ldvarg13, ldvarg12);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      crypt_merge(crypt_target_group1, ldvarg14, ldvarg13, ldvarg12);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      crypt_merge(crypt_target_group1, ldvarg14, ldvarg13, ldvarg12);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      crypt_merge(crypt_target_group1, ldvarg14, ldvarg13, ldvarg12);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_39718;
    case 4: ;
    if (ldv_state_variable_3 == 4) {
      crypt_iterate_devices(crypt_target_group1, ldvarg11, ldvarg10);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 1) {
      crypt_iterate_devices(crypt_target_group1, ldvarg11, ldvarg10);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      crypt_iterate_devices(crypt_target_group1, ldvarg11, ldvarg10);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      crypt_iterate_devices(crypt_target_group1, ldvarg11, ldvarg10);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      crypt_iterate_devices(crypt_target_group1, ldvarg11, ldvarg10);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_39718;
    case 5: ;
    if (ldv_state_variable_3 == 4) {
      crypt_map(crypt_target_group1, ldvarg9);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      crypt_map(crypt_target_group1, ldvarg9);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      crypt_map(crypt_target_group1, ldvarg9);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      crypt_map(crypt_target_group1, ldvarg9);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_39718;
    case 6: ;
    if (ldv_state_variable_3 == 4) {
      crypt_message(crypt_target_group1, ldvarg8, ldvarg7);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 1) {
      crypt_message(crypt_target_group1, ldvarg8, ldvarg7);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      crypt_message(crypt_target_group1, ldvarg8, ldvarg7);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      crypt_message(crypt_target_group1, ldvarg8, ldvarg7);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      crypt_message(crypt_target_group1, ldvarg8, ldvarg7);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_39718;
    case 7: ;
    if (ldv_state_variable_3 == 3) {
      crypt_postsuspend(crypt_target_group1);
      ldv_state_variable_3 = 4;
    } else {
    }
    goto ldv_39718;
    case 8: ;
    if (ldv_state_variable_3 == 4) {
      crypt_status(crypt_target_group1, ldvarg5, ldvarg4, ldvarg3, ldvarg6);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 1) {
      crypt_status(crypt_target_group1, ldvarg5, ldvarg4, ldvarg3, ldvarg6);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      crypt_status(crypt_target_group1, ldvarg5, ldvarg4, ldvarg3, ldvarg6);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      crypt_status(crypt_target_group1, ldvarg5, ldvarg4, ldvarg3, ldvarg6);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      crypt_status(crypt_target_group1, ldvarg5, ldvarg4, ldvarg3, ldvarg6);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_39718;
    case 9: ;
    if (ldv_state_variable_3 == 5) {
      crypt_resume(crypt_target_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_39718;
    case 10: ;
    if (ldv_state_variable_3 == 2) {
      ldv_presuspend_3();
      ldv_state_variable_3 = 3;
    } else {
    }
    goto ldv_39718;
    default:
    ldv_stop();
    }
    ldv_39718: ;
  } else {
  }
  goto ldv_39715;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    tmp___34 = __VERIFIER_nondet_int();
    switch (tmp___34) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      crypt_iv_benbi_gen(crypt_iv_benbi_ops_group0, ldvarg20, ldvarg19);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_39732;
    case 1: ;
    if (ldv_state_variable_7 == 1) {
      crypt_iv_benbi_ctr(crypt_iv_benbi_ops_group0, ldvarg18, (char const *)ldvarg17);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_39732;
    case 2: ;
    if (ldv_state_variable_7 == 1) {
      crypt_iv_benbi_dtr(crypt_iv_benbi_ops_group0);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_39732;
    default:
    ldv_stop();
    }
    ldv_39732: ;
  } else {
  }
  goto ldv_39715;
  case 3: ;
  if (ldv_state_variable_9 != 0) {
    tmp___35 = __VERIFIER_nondet_int();
    switch (tmp___35) {
    case 0: ;
    if (ldv_state_variable_9 == 1) {
      crypt_iv_plain64_gen(ldvarg21, ldvarg23, ldvarg22);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_39738;
    default:
    ldv_stop();
    }
    ldv_39738: ;
  } else {
  }
  goto ldv_39715;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    invoke_work_2();
  } else {
  }
  goto ldv_39715;
  case 5: ;
  if (ldv_state_variable_8 != 0) {
    tmp___36 = __VERIFIER_nondet_int();
    switch (tmp___36) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      crypt_iv_essiv_gen(crypt_iv_essiv_ops_group0, ldvarg27, ldvarg26);
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      crypt_iv_essiv_gen(crypt_iv_essiv_ops_group0, ldvarg27, ldvarg26);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      crypt_iv_essiv_gen(crypt_iv_essiv_ops_group0, ldvarg27, ldvarg26);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_39743;
    case 1: ;
    if (ldv_state_variable_8 == 2) {
      ldv_retval_2 = crypt_iv_essiv_init(crypt_iv_essiv_ops_group0);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_8 = 3;
      } else {
      }
    } else {
    }
    goto ldv_39743;
    case 2: ;
    if (ldv_state_variable_8 == 1) {
      crypt_iv_essiv_ctr(crypt_iv_essiv_ops_group0, ldvarg25, (char const *)ldvarg24);
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      crypt_iv_essiv_ctr(crypt_iv_essiv_ops_group0, ldvarg25, (char const *)ldvarg24);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      crypt_iv_essiv_ctr(crypt_iv_essiv_ops_group0, ldvarg25, (char const *)ldvarg24);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_39743;
    case 3: ;
    if (ldv_state_variable_8 == 1) {
      crypt_iv_essiv_wipe(crypt_iv_essiv_ops_group0);
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      crypt_iv_essiv_wipe(crypt_iv_essiv_ops_group0);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      crypt_iv_essiv_wipe(crypt_iv_essiv_ops_group0);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_39743;
    case 4: ;
    if (ldv_state_variable_8 == 1) {
      crypt_iv_essiv_dtr(crypt_iv_essiv_ops_group0);
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      crypt_iv_essiv_dtr(crypt_iv_essiv_ops_group0);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      crypt_iv_essiv_dtr(crypt_iv_essiv_ops_group0);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_39743;
    case 5: ;
    if (ldv_state_variable_8 == 3) {
      ldv_release_8();
      ldv_state_variable_8 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      ldv_release_8();
      ldv_state_variable_8 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_39743;
    case 6: ;
    if (ldv_state_variable_8 == 1) {
      ldv_setup_8();
      ldv_state_variable_8 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_39743;
    default:
    ldv_stop();
    }
    ldv_39743: ;
  } else {
  }
  goto ldv_39715;
  case 6: ;
  if (ldv_state_variable_1 != 0) {
    invoke_work_1();
  } else {
  }
  goto ldv_39715;
  case 7: ;
  if (ldv_state_variable_4 != 0) {
    tmp___37 = __VERIFIER_nondet_int();
    switch (tmp___37) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      crypt_iv_tcw_gen(crypt_iv_tcw_ops_group0, ldvarg31, crypt_iv_tcw_ops_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      crypt_iv_tcw_gen(crypt_iv_tcw_ops_group0, ldvarg31, crypt_iv_tcw_ops_group1);
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      crypt_iv_tcw_gen(crypt_iv_tcw_ops_group0, ldvarg31, crypt_iv_tcw_ops_group1);
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_39754;
    case 1: ;
    if (ldv_state_variable_4 == 2) {
      ldv_retval_3 = crypt_iv_tcw_init(crypt_iv_tcw_ops_group0);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_4 = 3;
      } else {
      }
    } else {
    }
    goto ldv_39754;
    case 2: ;
    if (ldv_state_variable_4 == 1) {
      crypt_iv_tcw_ctr(crypt_iv_tcw_ops_group0, ldvarg30, (char const *)ldvarg29);
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      crypt_iv_tcw_ctr(crypt_iv_tcw_ops_group0, ldvarg30, (char const *)ldvarg29);
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      crypt_iv_tcw_ctr(crypt_iv_tcw_ops_group0, ldvarg30, (char const *)ldvarg29);
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_39754;
    case 3: ;
    if (ldv_state_variable_4 == 1) {
      crypt_iv_tcw_post(crypt_iv_tcw_ops_group0, ldvarg28, crypt_iv_tcw_ops_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      crypt_iv_tcw_post(crypt_iv_tcw_ops_group0, ldvarg28, crypt_iv_tcw_ops_group1);
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      crypt_iv_tcw_post(crypt_iv_tcw_ops_group0, ldvarg28, crypt_iv_tcw_ops_group1);
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_39754;
    case 4: ;
    if (ldv_state_variable_4 == 1) {
      crypt_iv_tcw_wipe(crypt_iv_tcw_ops_group0);
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      crypt_iv_tcw_wipe(crypt_iv_tcw_ops_group0);
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      crypt_iv_tcw_wipe(crypt_iv_tcw_ops_group0);
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_39754;
    case 5: ;
    if (ldv_state_variable_4 == 1) {
      crypt_iv_tcw_dtr(crypt_iv_tcw_ops_group0);
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      crypt_iv_tcw_dtr(crypt_iv_tcw_ops_group0);
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      crypt_iv_tcw_dtr(crypt_iv_tcw_ops_group0);
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_39754;
    case 6: ;
    if (ldv_state_variable_4 == 3) {
      ldv_release_4();
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      ldv_release_4();
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_39754;
    case 7: ;
    if (ldv_state_variable_4 == 1) {
      ldv_setup_4();
      ldv_state_variable_4 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_39754;
    default:
    ldv_stop();
    }
    ldv_39754: ;
  } else {
  }
  goto ldv_39715;
  case 8: ;
  if (ldv_state_variable_0 != 0) {
    tmp___38 = __VERIFIER_nondet_int();
    switch (tmp___38) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      dm_crypt_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_39766;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_4 = dm_crypt_init();
      if (ldv_retval_4 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_initialize_crypt_iv_operations_5();
        ldv_state_variable_10 = 1;
        ldv_state_variable_4 = 1;
        ldv_initialize_crypt_iv_operations_4();
        ldv_state_variable_8 = 1;
        ldv_initialize_crypt_iv_operations_8();
        ldv_state_variable_9 = 1;
        ldv_state_variable_7 = 1;
        ldv_initialize_crypt_iv_operations_7();
        ldv_state_variable_3 = 1;
        ldv_target_type_3();
        ldv_state_variable_6 = 1;
      } else {
      }
      if (ldv_retval_4 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_39766;
    default:
    ldv_stop();
    }
    ldv_39766: ;
  } else {
  }
  goto ldv_39715;
  case 9: ;
  if (ldv_state_variable_10 != 0) {
    tmp___39 = __VERIFIER_nondet_int();
    switch (tmp___39) {
    case 0: ;
    if (ldv_state_variable_10 == 1) {
      crypt_iv_plain_gen(ldvarg32, ldvarg34, ldvarg33);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_39771;
    default:
    ldv_stop();
    }
    ldv_39771: ;
  } else {
  }
  goto ldv_39715;
  case 10: ;
  if (ldv_state_variable_5 != 0) {
    tmp___40 = __VERIFIER_nondet_int();
    switch (tmp___40) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      crypt_iv_lmk_gen(crypt_iv_lmk_ops_group0, ldvarg38, crypt_iv_lmk_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      crypt_iv_lmk_gen(crypt_iv_lmk_ops_group0, ldvarg38, crypt_iv_lmk_ops_group1);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      crypt_iv_lmk_gen(crypt_iv_lmk_ops_group0, ldvarg38, crypt_iv_lmk_ops_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_39775;
    case 1: ;
    if (ldv_state_variable_5 == 2) {
      ldv_retval_5 = crypt_iv_lmk_init(crypt_iv_lmk_ops_group0);
      if (ldv_retval_5 == 0) {
        ldv_state_variable_5 = 3;
      } else {
      }
    } else {
    }
    goto ldv_39775;
    case 2: ;
    if (ldv_state_variable_5 == 1) {
      crypt_iv_lmk_ctr(crypt_iv_lmk_ops_group0, ldvarg37, (char const *)ldvarg36);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      crypt_iv_lmk_ctr(crypt_iv_lmk_ops_group0, ldvarg37, (char const *)ldvarg36);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      crypt_iv_lmk_ctr(crypt_iv_lmk_ops_group0, ldvarg37, (char const *)ldvarg36);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_39775;
    case 3: ;
    if (ldv_state_variable_5 == 1) {
      crypt_iv_lmk_post(crypt_iv_lmk_ops_group0, ldvarg35, crypt_iv_lmk_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      crypt_iv_lmk_post(crypt_iv_lmk_ops_group0, ldvarg35, crypt_iv_lmk_ops_group1);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      crypt_iv_lmk_post(crypt_iv_lmk_ops_group0, ldvarg35, crypt_iv_lmk_ops_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_39775;
    case 4: ;
    if (ldv_state_variable_5 == 1) {
      crypt_iv_lmk_wipe(crypt_iv_lmk_ops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      crypt_iv_lmk_wipe(crypt_iv_lmk_ops_group0);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      crypt_iv_lmk_wipe(crypt_iv_lmk_ops_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_39775;
    case 5: ;
    if (ldv_state_variable_5 == 1) {
      crypt_iv_lmk_dtr(crypt_iv_lmk_ops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      crypt_iv_lmk_dtr(crypt_iv_lmk_ops_group0);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      crypt_iv_lmk_dtr(crypt_iv_lmk_ops_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_39775;
    case 6: ;
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
    goto ldv_39775;
    case 7: ;
    if (ldv_state_variable_5 == 1) {
      ldv_setup_5();
      ldv_state_variable_5 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_39775;
    default:
    ldv_stop();
    }
    ldv_39775: ;
  } else {
  }
  goto ldv_39715;
  default:
  ldv_stop();
  }
  ldv_39715: ;
  goto ldv_39785;
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
  ldv_mutex_lock_bio_alloc_lock_of_crypt_config(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_bio_alloc_lock_of_crypt_config(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_destroy_workqueue_19(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
void ldv_destroy_workqueue_20(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
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
static int ldv_mutex_bio_alloc_lock_of_crypt_config = 1;
int ldv_mutex_lock_interruptible_bio_alloc_lock_of_crypt_config(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_bio_alloc_lock_of_crypt_config != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_bio_alloc_lock_of_crypt_config = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_bio_alloc_lock_of_crypt_config(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_bio_alloc_lock_of_crypt_config != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_bio_alloc_lock_of_crypt_config = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_bio_alloc_lock_of_crypt_config(struct mutex *lock )
{
  {
  if (ldv_mutex_bio_alloc_lock_of_crypt_config != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_bio_alloc_lock_of_crypt_config = 2;
  return;
}
}
int ldv_mutex_trylock_bio_alloc_lock_of_crypt_config(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_bio_alloc_lock_of_crypt_config != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_bio_alloc_lock_of_crypt_config = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_bio_alloc_lock_of_crypt_config(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_bio_alloc_lock_of_crypt_config != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_bio_alloc_lock_of_crypt_config = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_bio_alloc_lock_of_crypt_config(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_bio_alloc_lock_of_crypt_config == 1) {
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
void ldv_mutex_unlock_bio_alloc_lock_of_crypt_config(struct mutex *lock )
{
  {
  if (ldv_mutex_bio_alloc_lock_of_crypt_config != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_bio_alloc_lock_of_crypt_config = 1;
  return;
}
}
void ldv_usb_lock_device_bio_alloc_lock_of_crypt_config(void)
{
  {
  ldv_mutex_lock_bio_alloc_lock_of_crypt_config((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_bio_alloc_lock_of_crypt_config(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_bio_alloc_lock_of_crypt_config((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_bio_alloc_lock_of_crypt_config(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_bio_alloc_lock_of_crypt_config((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_bio_alloc_lock_of_crypt_config(void)
{
  {
  ldv_mutex_unlock_bio_alloc_lock_of_crypt_config((struct mutex *)0);
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
  if (ldv_mutex_bio_alloc_lock_of_crypt_config != 1) {
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
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  return;
}
}
void ___might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int __bitmap_weight(const unsigned long *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
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
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __wake_up_locked(wait_queue_head_t *arg0, unsigned int arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int _cond_resched() {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
struct bio *bio_alloc_bioset(gfp_t arg0, int arg1, struct bio_set *arg2) {
  return ldv_malloc(sizeof(struct bio));
}
struct bio *bio_clone_fast(struct bio *arg0, gfp_t arg1, struct bio_set *arg2) {
  return ldv_malloc(sizeof(struct bio));
}
void bio_endio(struct bio *arg0, int arg1) {
  return;
}
void bio_put(struct bio *arg0) {
  return;
}
struct bio_set *bioset_create(unsigned int arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(struct bio_set));
}
void bioset_free(struct bio_set *arg0) {
  return;
}
void blk_finish_plug(struct blk_plug *arg0) {
  return;
}
void blk_start_plug(struct blk_plug *arg0) {
  return;
}
void complete(struct completion *arg0) {
  return;
}
struct crypto_ablkcipher *crypto_alloc_ablkcipher(const char *arg0, u32 arg1, u32 arg2) {
  return ldv_malloc(sizeof(struct crypto_ablkcipher));
}
struct crypto_tfm *crypto_alloc_base(const char *arg0, u32 arg1, u32 arg2) {
  return ldv_malloc(sizeof(struct crypto_tfm));
}
struct crypto_shash *crypto_alloc_shash(const char *arg0, u32 arg1, u32 arg2) {
  return ldv_malloc(sizeof(struct crypto_shash));
}
void crypto_destroy_tfm(void *arg0, struct crypto_tfm *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int crypto_shash_final(struct shash_desc *arg0, u8 *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int crypto_shash_update(struct shash_desc *arg0, const u8 *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
void crypto_xor(u8 *arg0, const u8 *arg1, unsigned int arg2) {
  return;
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dm_get_device(struct dm_target *arg0, const char *arg1, fmode_t arg2, struct dm_dev **arg3) {
  return __VERIFIER_nondet_int();
}
void dm_put_device(struct dm_target *arg0, struct dm_dev *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int dm_read_arg_group(struct dm_arg *arg0, struct dm_arg_set *arg1, unsigned int *arg2, char **arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dm_register_target(struct target_type *arg0) {
  return __VERIFIER_nondet_int();
}
const char *dm_shift_arg(struct dm_arg_set *arg0) {
  return ldv_malloc(sizeof(char));
}
unsigned int __VERIFIER_nondet_uint(void);
fmode_t dm_table_get_mode(struct dm_table *arg0) {
  return __VERIFIER_nondet_uint();
}
void dm_unregister_target(struct target_type *arg0) {
  return;
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
void generic_make_request(struct bio *arg0) {
  return;
}
char *kstrdup(const char *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(char));
}
int __VERIFIER_nondet_int(void);
int kstrtou8(const char *arg0, unsigned int arg1, u8 *arg2) {
  return __VERIFIER_nondet_int();
}
struct task_struct *kthread_create_on_node(int (*arg0)(void *), void *arg1, int arg2, const char *arg3, ...) {
  return ldv_malloc(sizeof(struct task_struct));
}
bool __VERIFIER_nondet_bool(void);
bool kthread_should_stop() {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int kthread_stop(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void kzfree(const void *arg0) {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_presuspend_3() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_4() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_setup_4() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_setup_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_setup_8() {
  return __VERIFIER_nondet_int();
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void *mempool_alloc(mempool_t *arg0, gfp_t arg1) {
  return ldv_malloc(0UL);
}
mempool_t *mempool_create(int arg0, mempool_alloc_t *arg1, mempool_free_t *arg2, void *arg3) {
  return ldv_malloc(sizeof(mempool_t));
}
void mempool_destroy(mempool_t *arg0) {
  return;
}
void mempool_free(void *arg0, mempool_t *arg1) {
  return;
}
void memzero_explicit(void *arg0, size_t arg1) {
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
void rb_erase(struct rb_node *arg0, struct rb_root *arg1) {
  return;
}
struct rb_node *rb_first(const struct rb_root *arg0) {
  return ldv_malloc(sizeof(struct rb_node));
}
void rb_insert_color(struct rb_node *arg0, struct rb_root *arg1) {
  return;
}
void remove_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void schedule() {
  return;
}
int __VERIFIER_nondet_int(void);
int scnprintf(char *arg0, size_t arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
void sg_init_one(struct scatterlist *arg0, const void *arg1, unsigned int arg2) {
  return;
}
void sg_init_table(struct scatterlist *arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int strcasecmp(const char *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
char *strsep(char **arg0, const char *arg1) {
  return ldv_malloc(sizeof(char));
}
void wait_for_completion(struct completion *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int wake_up_process(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int default_wake_function(wait_queue_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
