extern void __VERIFIER_error() __attribute__ ((__noreturn__));
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
struct __anonstruct_ldv_1016_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_1031_10 {
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
union __anonunion_ldv_1032_8 {
   struct __anonstruct_ldv_1016_9 ldv_1016 ;
   struct __anonstruct_ldv_1031_10 ldv_1031 ;
};
struct desc_struct {
   union __anonunion_ldv_1032_8 ldv_1032 ;
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
union __anonunion_ldv_1452_15 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_1452_15 ldv_1452 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
struct device;
struct net_device;
struct file_operations;
struct completion;
struct pid;
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
union __anonunion_ldv_2969_20 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2969_20 ldv_2969 ;
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
struct __anonstruct_ldv_5280_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5286_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5287_24 {
   struct __anonstruct_ldv_5280_25 ldv_5280 ;
   struct __anonstruct_ldv_5286_26 ldv_5286 ;
};
union __anonunion_ldv_5296_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5287_24 ldv_5287 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5296_27 ldv_5296 ;
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
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_6337_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6338_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6337_31 ldv_6337 ;
};
struct spinlock {
   union __anonunion_ldv_6338_30 ldv_6338 ;
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
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct optimistic_spin_queue;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   struct optimistic_spin_queue *osq ;
   struct lockdep_map dep_map ;
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
struct vm_area_struct;
struct inode;
struct notifier_block;
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
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
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
struct __anonstruct_nodemask_t_98 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_98 nodemask_t;
struct __anonstruct_mm_context_t_99 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_99 mm_context_t;
struct bio_vec;
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
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
struct __anonstruct_ldv_12049_131 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_12053_132 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_12054_130 {
   struct __anonstruct_ldv_12049_131 ldv_12049 ;
   struct __anonstruct_ldv_12053_132 ldv_12053 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_12054_130 ldv_12054 ;
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
union __anonunion_ldv_12163_133 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_12169_135 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_12179_139 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_12181_138 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_12179_139 ldv_12179 ;
   int units ;
};
struct __anonstruct_ldv_12183_137 {
   union __anonunion_ldv_12181_138 ldv_12181 ;
   atomic_t _count ;
};
union __anonunion_ldv_12185_136 {
   unsigned long counters ;
   struct __anonstruct_ldv_12183_137 ldv_12183 ;
   unsigned int active ;
};
struct __anonstruct_ldv_12186_134 {
   union __anonunion_ldv_12169_135 ldv_12169 ;
   union __anonunion_ldv_12185_136 ldv_12185 ;
};
struct __anonstruct_ldv_12193_141 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_12198_140 {
   struct list_head lru ;
   struct __anonstruct_ldv_12193_141 ldv_12193 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_12204_142 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_12163_133 ldv_12163 ;
   struct __anonstruct_ldv_12186_134 ldv_12186 ;
   union __anonunion_ldv_12198_140 ldv_12198 ;
   union __anonunion_ldv_12204_142 ldv_12204 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_144 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_143 {
   struct __anonstruct_linear_144 linear ;
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
   union __anonunion_shared_143 shared ;
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
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
union __anonunion_ldv_12534_145 {
   struct iovec const *iov ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion_ldv_12534_145 ldv_12534 ;
   unsigned long nr_segs ;
};
typedef unsigned short __kernel_sa_family_t;
struct cred;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iovec *msg_iov ;
   __kernel_size_t msg_iovlen ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
};
enum ldv_13278 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_13278 socket_state;
struct poll_table_struct;
struct pipe_inode_info;
struct net;
struct fasync_struct;
struct socket_wq {
   wait_queue_head_t wait ;
   struct fasync_struct *fasync_list ;
   struct callback_head rcu ;
};
struct sock;
struct proto_ops;
struct socket {
   socket_state state ;
   short type ;
   unsigned long flags ;
   struct socket_wq *wq ;
   struct file *file ;
   struct sock *sk ;
   struct proto_ops const *ops ;
};
struct kiocb;
struct proto_ops {
   int family ;
   struct module *owner ;
   int (*release)(struct socket * ) ;
   int (*bind)(struct socket * , struct sockaddr * , int ) ;
   int (*connect)(struct socket * , struct sockaddr * , int , int ) ;
   int (*socketpair)(struct socket * , struct socket * ) ;
   int (*accept)(struct socket * , struct socket * , int ) ;
   int (*getname)(struct socket * , struct sockaddr * , int * , int ) ;
   unsigned int (*poll)(struct file * , struct socket * , struct poll_table_struct * ) ;
   int (*ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*listen)(struct socket * , int ) ;
   int (*shutdown)(struct socket * , int ) ;
   int (*setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*sendmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t , int ) ;
   int (*mmap)(struct file * , struct socket * , struct vm_area_struct * ) ;
   ssize_t (*sendpage)(struct socket * , struct page * , int , size_t , int ) ;
   ssize_t (*splice_read)(struct socket * , loff_t * , struct pipe_inode_info * ,
                          size_t , unsigned int ) ;
   int (*set_peek_off)(struct sock * , int ) ;
};
struct ctl_table;
struct mem_cgroup;
union __anonunion_ldv_13917_146 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_13917_146 ldv_13917 ;
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
union __anonunion_ldv_14061_147 {
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
   union __anonunion_ldv_14061_147 ldv_14061 ;
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
struct user_namespace;
struct __anonstruct_kuid_t_148 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_148 kuid_t;
struct __anonstruct_kgid_t_149 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_149 kgid_t;
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
struct __anonstruct_ldv_14953_151 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_14959_152 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_14960_150 {
   struct __anonstruct_ldv_14953_151 ldv_14953 ;
   struct __anonstruct_ldv_14959_152 ldv_14959 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_14960_150 ldv_14960 ;
};
struct sk_buff;
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
struct of_device_id;
struct acpi_device_id;
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
struct __anonstruct_sigset_t_155 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_155 sigset_t;
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
struct __anonstruct__kill_157 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_158 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_159 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_160 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_161 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_162 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_163 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_156 {
   int _pad[28U] ;
   struct __anonstruct__kill_157 _kill ;
   struct __anonstruct__timer_158 _timer ;
   struct __anonstruct__rt_159 _rt ;
   struct __anonstruct__sigchld_160 _sigchld ;
   struct __anonstruct__sigfault_161 _sigfault ;
   struct __anonstruct__sigpoll_162 _sigpoll ;
   struct __anonstruct__sigsys_163 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_156 _sifields ;
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
struct __anonstruct_ldv_22930_167 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_22932_166 {
   struct __anonstruct_ldv_22930_167 ldv_22930 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_22932_166 ldv_22932 ;
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
union __anonunion_ldv_23076_168 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_23084_169 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_23097_171 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_23098_170 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_23097_171 ldv_23097 ;
};
union __anonunion_type_data_172 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_174 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_23113_173 {
   union __anonunion_payload_174 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_23076_168 ldv_23076 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_23084_169 ldv_23084 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_23098_170 ldv_23098 ;
   union __anonunion_type_data_172 type_data ;
   union __anonunion_ldv_23113_173 ldv_23113 ;
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
struct __anonstruct_ldv_24862_179 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion_ldv_24863_178 {
   u64 v64 ;
   struct __anonstruct_ldv_24862_179 ldv_24862 ;
};
struct skb_mstamp {
   union __anonunion_ldv_24863_178 ldv_24863 ;
};
union __anonunion_ldv_24882_180 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct sec_path;
struct __anonstruct_ldv_24898_182 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_24899_181 {
   __wsum csum ;
   struct __anonstruct_ldv_24898_182 ldv_24898 ;
};
union __anonunion_ldv_24938_183 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion_ldv_24944_184 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion_ldv_24882_180 ldv_24882 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion_ldv_24899_181 ldv_24899 ;
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
   union __anonunion_ldv_24938_183 ldv_24938 ;
   __u32 secmark ;
   union __anonunion_ldv_24944_184 ldv_24944 ;
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
struct ieee80211_vif;
struct usb_interface;
struct ieee80211_hw;
typedef u16 zd_addr_t;
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct ieee80211_p2p_noa_desc {
   u8 count ;
   __le32 duration ;
   __le32 interval ;
   __le32 start_time ;
};
struct ieee80211_p2p_noa_attr {
   u8 index ;
   u8 oppps_ctwindow ;
   struct ieee80211_p2p_noa_desc desc[4U] ;
};
struct ieee80211_mcs_info {
   u8 rx_mask[10U] ;
   __le16 rx_highest ;
   u8 tx_params ;
   u8 reserved[3U] ;
};
struct ieee80211_ht_cap {
   __le16 cap_info ;
   u8 ampdu_params_info ;
   struct ieee80211_mcs_info mcs ;
   __le16 extended_ht_cap_info ;
   __le32 tx_BF_cap_info ;
   u8 antenna_selection_info ;
};
struct ieee80211_vht_mcs_info {
   __le16 rx_mcs_map ;
   __le16 rx_highest ;
   __le16 tx_mcs_map ;
   __le16 tx_highest ;
};
struct ieee80211_vht_cap {
   __le32 vht_cap_info ;
   struct ieee80211_vht_mcs_info supp_mcs ;
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
union __anonunion_data_221 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_221 data ;
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
struct __anonstruct_sync_serial_settings_222 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_222 sync_serial_settings;
struct __anonstruct_te1_settings_223 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_223 te1_settings;
struct __anonstruct_raw_hdlc_proto_224 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_224 raw_hdlc_proto;
struct __anonstruct_fr_proto_225 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_225 fr_proto;
struct __anonstruct_fr_proto_pvc_226 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_226 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_227 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_227 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_228 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_228 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_229 {
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
   union __anonunion_ifs_ifsu_229 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_230 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_231 {
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
   union __anonunion_ifr_ifrn_230 ifr_ifrn ;
   union __anonunion_ifr_ifru_231 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_27718_234 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_27719_233 {
   struct __anonstruct_ldv_27718_234 ldv_27718 ;
};
struct lockref {
   union __anonunion_ldv_27719_233 ldv_27719 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_27742_236 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_27744_235 {
   struct __anonstruct_ldv_27742_236 ldv_27742 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_27744_235 ldv_27744 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_237 {
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
   union __anonunion_d_u_237 d_u ;
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
struct __anonstruct_ldv_28105_239 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_28107_238 {
   struct __anonstruct_ldv_28105_239 ldv_28105 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_28107_238 ldv_28107 ;
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
struct cgroup_subsys_state;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct export_operations;
struct kstatfs;
struct swap_info_struct;
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
struct __anonstruct_kprojid_t_240 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_240 kprojid_t;
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
union __anonunion_ldv_28632_241 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_28632_241 ldv_28632 ;
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
union __anonunion_ldv_29046_244 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_29066_245 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_29083_246 {
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
   union __anonunion_ldv_29046_244 ldv_29046 ;
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
   union __anonunion_ldv_29066_245 ldv_29066 ;
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
   union __anonunion_ldv_29083_246 ldv_29083 ;
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
union __anonunion_f_u_247 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_247 f_u ;
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
struct __anonstruct_afs_249 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_248 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_249 afs ;
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
   union __anonunion_fl_u_248 fl_u ;
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
struct proc_dir_entry;
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
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
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
struct __anonstruct_adj_list_277 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_278 {
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
union __anonunion_ldv_40186_279 {
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
   struct __anonstruct_adj_list_277 adj_list ;
   struct __anonstruct_all_adj_list_278 all_adj_list ;
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
   union __anonunion_ldv_40186_279 ldv_40186 ;
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
enum nl80211_iftype {
    NL80211_IFTYPE_UNSPECIFIED = 0,
    NL80211_IFTYPE_ADHOC = 1,
    NL80211_IFTYPE_STATION = 2,
    NL80211_IFTYPE_AP = 3,
    NL80211_IFTYPE_AP_VLAN = 4,
    NL80211_IFTYPE_WDS = 5,
    NL80211_IFTYPE_MONITOR = 6,
    NL80211_IFTYPE_MESH_POINT = 7,
    NL80211_IFTYPE_P2P_CLIENT = 8,
    NL80211_IFTYPE_P2P_GO = 9,
    NL80211_IFTYPE_P2P_DEVICE = 10,
    NUM_NL80211_IFTYPES = 11,
    NL80211_IFTYPE_MAX = 10
} ;
enum nl80211_reg_initiator {
    NL80211_REGDOM_SET_BY_CORE = 0,
    NL80211_REGDOM_SET_BY_USER = 1,
    NL80211_REGDOM_SET_BY_DRIVER = 2,
    NL80211_REGDOM_SET_BY_COUNTRY_IE = 3
} ;
enum nl80211_dfs_regions {
    NL80211_DFS_UNSET = 0,
    NL80211_DFS_FCC = 1,
    NL80211_DFS_ETSI = 2,
    NL80211_DFS_JP = 3
} ;
enum nl80211_user_reg_hint_type {
    NL80211_USER_REG_HINT_USER = 0,
    NL80211_USER_REG_HINT_CELL_BASE = 1,
    NL80211_USER_REG_HINT_INDOOR = 2
} ;
enum nl80211_chan_width {
    NL80211_CHAN_WIDTH_20_NOHT = 0,
    NL80211_CHAN_WIDTH_20 = 1,
    NL80211_CHAN_WIDTH_40 = 2,
    NL80211_CHAN_WIDTH_80 = 3,
    NL80211_CHAN_WIDTH_80P80 = 4,
    NL80211_CHAN_WIDTH_160 = 5,
    NL80211_CHAN_WIDTH_5 = 6,
    NL80211_CHAN_WIDTH_10 = 7
} ;
enum nl80211_auth_type {
    NL80211_AUTHTYPE_OPEN_SYSTEM = 0,
    NL80211_AUTHTYPE_SHARED_KEY = 1,
    NL80211_AUTHTYPE_FT = 2,
    NL80211_AUTHTYPE_NETWORK_EAP = 3,
    NL80211_AUTHTYPE_SAE = 4,
    __NL80211_AUTHTYPE_NUM = 5,
    NL80211_AUTHTYPE_MAX = 4,
    NL80211_AUTHTYPE_AUTOMATIC = 5
} ;
enum nl80211_mfp {
    NL80211_MFP_NO = 0,
    NL80211_MFP_REQUIRED = 1
} ;
struct nl80211_wowlan_tcp_data_seq {
   __u32 start ;
   __u32 offset ;
   __u32 len ;
};
struct nl80211_wowlan_tcp_data_token {
   __u32 offset ;
   __u32 len ;
   __u8 token_stream[] ;
};
struct nl80211_wowlan_tcp_data_token_feature {
   __u32 min_len ;
   __u32 max_len ;
   __u32 bufsize ;
};
enum nl80211_dfs_state {
    NL80211_DFS_USABLE = 0,
    NL80211_DFS_UNAVAILABLE = 1,
    NL80211_DFS_AVAILABLE = 2
} ;
struct nl80211_vendor_cmd_info {
   __u32 vendor_id ;
   __u32 subcmd ;
};
enum environment_cap {
    ENVIRON_ANY = 0,
    ENVIRON_INDOOR = 1,
    ENVIRON_OUTDOOR = 2
} ;
struct regulatory_request {
   struct callback_head callback_head ;
   int wiphy_idx ;
   enum nl80211_reg_initiator initiator ;
   enum nl80211_user_reg_hint_type user_reg_hint_type ;
   char alpha2[2U] ;
   enum nl80211_dfs_regions dfs_region ;
   bool intersect ;
   bool processed ;
   enum environment_cap country_ie_env ;
   struct list_head list ;
};
struct ieee80211_freq_range {
   u32 start_freq_khz ;
   u32 end_freq_khz ;
   u32 max_bandwidth_khz ;
};
struct ieee80211_power_rule {
   u32 max_antenna_gain ;
   u32 max_eirp ;
};
struct ieee80211_reg_rule {
   struct ieee80211_freq_range freq_range ;
   struct ieee80211_power_rule power_rule ;
   u32 flags ;
   u32 dfs_cac_ms ;
};
struct ieee80211_regdomain {
   struct callback_head callback_head ;
   u32 n_reg_rules ;
   char alpha2[2U] ;
   enum nl80211_dfs_regions dfs_region ;
   struct ieee80211_reg_rule reg_rules[] ;
};
struct wiphy;
enum ieee80211_band {
    IEEE80211_BAND_2GHZ = 0,
    IEEE80211_BAND_5GHZ = 1,
    IEEE80211_BAND_60GHZ = 2,
    IEEE80211_NUM_BANDS = 3
} ;
struct ieee80211_channel {
   enum ieee80211_band band ;
   u16 center_freq ;
   u16 hw_value ;
   u32 flags ;
   int max_antenna_gain ;
   int max_power ;
   int max_reg_power ;
   bool beacon_found ;
   u32 orig_flags ;
   int orig_mag ;
   int orig_mpwr ;
   enum nl80211_dfs_state dfs_state ;
   unsigned long dfs_state_entered ;
   unsigned int dfs_cac_ms ;
};
struct ieee80211_rate {
   u32 flags ;
   u16 bitrate ;
   u16 hw_value ;
   u16 hw_value_short ;
};
struct ieee80211_sta_ht_cap {
   u16 cap ;
   bool ht_supported ;
   u8 ampdu_factor ;
   u8 ampdu_density ;
   struct ieee80211_mcs_info mcs ;
};
struct ieee80211_sta_vht_cap {
   bool vht_supported ;
   u32 cap ;
   struct ieee80211_vht_mcs_info vht_mcs ;
};
struct ieee80211_supported_band {
   struct ieee80211_channel *channels ;
   struct ieee80211_rate *bitrates ;
   enum ieee80211_band band ;
   int n_channels ;
   int n_bitrates ;
   struct ieee80211_sta_ht_cap ht_cap ;
   struct ieee80211_sta_vht_cap vht_cap ;
};
struct cfg80211_chan_def {
   struct ieee80211_channel *chan ;
   enum nl80211_chan_width width ;
   u32 center_freq1 ;
   u32 center_freq2 ;
};
struct cfg80211_crypto_settings {
   u32 wpa_versions ;
   u32 cipher_group ;
   int n_ciphers_pairwise ;
   u32 ciphers_pairwise[5U] ;
   int n_akm_suites ;
   u32 akm_suites[2U] ;
   bool control_port ;
   __be16 control_port_ethertype ;
   bool control_port_no_encrypt ;
};
struct mac_address {
   u8 addr[6U] ;
};
enum cfg80211_signal_type {
    CFG80211_SIGNAL_TYPE_NONE = 0,
    CFG80211_SIGNAL_TYPE_MBM = 1,
    CFG80211_SIGNAL_TYPE_UNSPEC = 2
} ;
struct cfg80211_ibss_params {
   u8 const *ssid ;
   u8 const *bssid ;
   struct cfg80211_chan_def chandef ;
   u8 const *ie ;
   u8 ssid_len ;
   u8 ie_len ;
   u16 beacon_interval ;
   u32 basic_rates ;
   bool channel_fixed ;
   bool privacy ;
   bool control_port ;
   bool userspace_handles_dfs ;
   int mcast_rate[3U] ;
   struct ieee80211_ht_cap ht_capa ;
   struct ieee80211_ht_cap ht_capa_mask ;
};
struct cfg80211_connect_params {
   struct ieee80211_channel *channel ;
   struct ieee80211_channel *channel_hint ;
   u8 const *bssid ;
   u8 const *bssid_hint ;
   u8 const *ssid ;
   size_t ssid_len ;
   enum nl80211_auth_type auth_type ;
   u8 const *ie ;
   size_t ie_len ;
   bool privacy ;
   enum nl80211_mfp mfp ;
   struct cfg80211_crypto_settings crypto ;
   u8 const *key ;
   u8 key_len ;
   u8 key_idx ;
   u32 flags ;
   int bg_scan_period ;
   struct ieee80211_ht_cap ht_capa ;
   struct ieee80211_ht_cap ht_capa_mask ;
   struct ieee80211_vht_cap vht_capa ;
   struct ieee80211_vht_cap vht_capa_mask ;
};
struct cfg80211_pkt_pattern {
   u8 const *mask ;
   u8 const *pattern ;
   int pattern_len ;
   int pkt_offset ;
};
struct cfg80211_wowlan_tcp {
   struct socket *sock ;
   __be32 src ;
   __be32 dst ;
   u16 src_port ;
   u16 dst_port ;
   u8 dst_mac[6U] ;
   int payload_len ;
   u8 const *payload ;
   struct nl80211_wowlan_tcp_data_seq payload_seq ;
   u32 data_interval ;
   u32 wake_len ;
   u8 const *wake_data ;
   u8 const *wake_mask ;
   u32 tokens_size ;
   struct nl80211_wowlan_tcp_data_token payload_tok ;
};
struct cfg80211_wowlan {
   bool any ;
   bool disconnect ;
   bool magic_pkt ;
   bool gtk_rekey_failure ;
   bool eap_identity_req ;
   bool four_way_handshake ;
   bool rfkill_release ;
   struct cfg80211_pkt_pattern *patterns ;
   struct cfg80211_wowlan_tcp *tcp ;
   int n_patterns ;
};
struct ieee80211_iface_limit {
   u16 max ;
   u16 types ;
};
struct ieee80211_iface_combination {
   struct ieee80211_iface_limit const *limits ;
   u32 num_different_channels ;
   u16 max_interfaces ;
   u8 n_limits ;
   bool beacon_int_infra_match ;
   u8 radar_detect_widths ;
   u8 radar_detect_regions ;
};
struct ieee80211_txrx_stypes {
   u16 tx ;
   u16 rx ;
};
struct wiphy_wowlan_tcp_support {
   struct nl80211_wowlan_tcp_data_token_feature const *tok ;
   u32 data_payload_max ;
   u32 data_interval_max ;
   u32 wake_payload_max ;
   bool seq ;
};
struct wiphy_wowlan_support {
   u32 flags ;
   int n_patterns ;
   int pattern_max_len ;
   int pattern_min_len ;
   int max_pkt_offset ;
   struct wiphy_wowlan_tcp_support const *tcp ;
};
struct wiphy_coalesce_support {
   int n_rules ;
   int max_delay ;
   int n_patterns ;
   int pattern_max_len ;
   int pattern_min_len ;
   int max_pkt_offset ;
};
struct wiphy_vendor_command {
   struct nl80211_vendor_cmd_info info ;
   u32 flags ;
   int (*doit)(struct wiphy * , struct wireless_dev * , void const * , int ) ;
};
struct wiphy {
   u8 perm_addr[6U] ;
   u8 addr_mask[6U] ;
   struct mac_address *addresses ;
   struct ieee80211_txrx_stypes const *mgmt_stypes ;
   struct ieee80211_iface_combination const *iface_combinations ;
   int n_iface_combinations ;
   u16 software_iftypes ;
   u16 n_addresses ;
   u16 interface_modes ;
   u16 max_acl_mac_addrs ;
   u32 flags ;
   u32 regulatory_flags ;
   u32 features ;
   u32 ap_sme_capa ;
   enum cfg80211_signal_type signal_type ;
   int bss_priv_size ;
   u8 max_scan_ssids ;
   u8 max_sched_scan_ssids ;
   u8 max_match_sets ;
   u16 max_scan_ie_len ;
   u16 max_sched_scan_ie_len ;
   int n_cipher_suites ;
   u32 const *cipher_suites ;
   u8 retry_short ;
   u8 retry_long ;
   u32 frag_threshold ;
   u32 rts_threshold ;
   u8 coverage_class ;
   char fw_version[32U] ;
   u32 hw_version ;
   struct wiphy_wowlan_support const *wowlan ;
   struct cfg80211_wowlan *wowlan_config ;
   u16 max_remain_on_channel_duration ;
   u8 max_num_pmkids ;
   u32 available_antennas_tx ;
   u32 available_antennas_rx ;
   u32 probe_resp_offload ;
   u8 const *extended_capabilities ;
   u8 const *extended_capabilities_mask ;
   u8 extended_capabilities_len ;
   void const *privid ;
   struct ieee80211_supported_band *bands[3U] ;
   void (*reg_notifier)(struct wiphy * , struct regulatory_request * ) ;
   struct ieee80211_regdomain const *regd ;
   struct device dev ;
   bool registered ;
   struct dentry *debugfsdir ;
   struct ieee80211_ht_cap const *ht_capa_mod_mask ;
   struct ieee80211_vht_cap const *vht_capa_mod_mask ;
   struct net *_net ;
   struct iw_handler_def const *wext ;
   struct wiphy_coalesce_support const *coalesce ;
   struct wiphy_vendor_command const *vendor_commands ;
   struct nl80211_vendor_cmd_info const *vendor_events ;
   int n_vendor_commands ;
   int n_vendor_events ;
   u16 max_ap_assoc_sta ;
   u8 max_num_csa_counters ;
   u8 max_adj_channel_rssi_comp ;
   char priv[0U] ;
};
struct cfg80211_conn;
struct cfg80211_internal_bss;
struct cfg80211_cached_keys;
struct __anonstruct_wext_281 {
   struct cfg80211_ibss_params ibss ;
   struct cfg80211_connect_params connect ;
   struct cfg80211_cached_keys *keys ;
   u8 const *ie ;
   size_t ie_len ;
   u8 bssid[6U] ;
   u8 prev_bssid[6U] ;
   u8 ssid[32U] ;
   s8 default_key ;
   s8 default_mgmt_key ;
   bool prev_bssid_valid ;
};
struct wireless_dev {
   struct wiphy *wiphy ;
   enum nl80211_iftype iftype ;
   struct list_head list ;
   struct net_device *netdev ;
   u32 identifier ;
   struct list_head mgmt_registrations ;
   spinlock_t mgmt_registrations_lock ;
   struct mutex mtx ;
   bool use_4addr ;
   bool p2p_started ;
   u8 address[6U] ;
   u8 ssid[32U] ;
   u8 ssid_len ;
   u8 mesh_id_len ;
   u8 mesh_id_up_len ;
   struct cfg80211_conn *conn ;
   struct cfg80211_cached_keys *connect_keys ;
   struct list_head event_list ;
   spinlock_t event_lock ;
   struct cfg80211_internal_bss *current_bss ;
   struct cfg80211_chan_def preset_chandef ;
   struct cfg80211_chan_def chandef ;
   bool ibss_fixed ;
   bool ibss_dfs_possible ;
   bool ps ;
   int ps_timeout ;
   int beacon_interval ;
   u32 ap_unexpected_nlportid ;
   bool cac_started ;
   unsigned long cac_start_time ;
   unsigned int cac_time_ms ;
   u32 owner_nlportid ;
   struct __anonstruct_wext_281 wext ;
};
struct ieee80211_chanctx_conf {
   struct cfg80211_chan_def def ;
   struct cfg80211_chan_def min_def ;
   u8 rx_chains_static ;
   u8 rx_chains_dynamic ;
   bool radar_enabled ;
   u8 drv_priv[0U] ;
};
struct ieee80211_bss_conf {
   u8 const *bssid ;
   bool assoc ;
   bool ibss_joined ;
   bool ibss_creator ;
   u16 aid ;
   bool use_cts_prot ;
   bool use_short_preamble ;
   bool use_short_slot ;
   bool enable_beacon ;
   u8 dtim_period ;
   u16 beacon_int ;
   u16 assoc_capability ;
   u64 sync_tsf ;
   u32 sync_device_ts ;
   u8 sync_dtim_count ;
   u32 basic_rates ;
   struct ieee80211_rate *beacon_rate ;
   int mcast_rate[3U] ;
   u16 ht_operation_mode ;
   s32 cqm_rssi_thold ;
   u32 cqm_rssi_hyst ;
   struct cfg80211_chan_def chandef ;
   __be32 arp_addr_list[4U] ;
   int arp_addr_cnt ;
   bool qos ;
   bool idle ;
   bool ps ;
   u8 ssid[32U] ;
   size_t ssid_len ;
   bool hidden_ssid ;
   int txpower ;
   struct ieee80211_p2p_noa_attr p2p_noa_attr ;
};
enum ieee80211_smps_mode {
    IEEE80211_SMPS_AUTOMATIC = 0,
    IEEE80211_SMPS_OFF = 1,
    IEEE80211_SMPS_STATIC = 2,
    IEEE80211_SMPS_DYNAMIC = 3,
    IEEE80211_SMPS_NUM_MODES = 4
} ;
struct ieee80211_conf {
   u32 flags ;
   int power_level ;
   int dynamic_ps_timeout ;
   int max_sleep_period ;
   u16 listen_interval ;
   u8 ps_dtim_period ;
   u8 long_frame_max_tx_count ;
   u8 short_frame_max_tx_count ;
   struct cfg80211_chan_def chandef ;
   bool radar_enabled ;
   enum ieee80211_smps_mode smps_mode ;
};
struct ieee80211_vif {
   enum nl80211_iftype type ;
   struct ieee80211_bss_conf bss_conf ;
   u8 addr[6U] ;
   bool p2p ;
   bool csa_active ;
   u8 cab_queue ;
   u8 hw_queue[4U] ;
   struct ieee80211_chanctx_conf *chanctx_conf ;
   u32 driver_flags ;
   struct dentry *debugfs_dir ;
   u8 drv_priv[0U] ;
};
struct ieee80211_cipher_scheme {
   u32 cipher ;
   u16 iftype ;
   u8 hdr_len ;
   u8 pn_len ;
   u8 pn_off ;
   u8 key_idx_off ;
   u8 key_idx_mask ;
   u8 key_idx_shift ;
   u8 mic_len ;
};
struct ieee80211_hw {
   struct ieee80211_conf conf ;
   struct wiphy *wiphy ;
   char const *rate_control_algorithm ;
   void *priv ;
   u32 flags ;
   unsigned int extra_tx_headroom ;
   unsigned int extra_beacon_tailroom ;
   int vif_data_size ;
   int sta_data_size ;
   int chanctx_data_size ;
   u16 queues ;
   u16 max_listen_interval ;
   s8 max_signal ;
   u8 max_rates ;
   u8 max_report_rates ;
   u8 max_rate_tries ;
   u8 max_rx_aggregation_subframes ;
   u8 max_tx_aggregation_subframes ;
   u8 offchannel_tx_hw_queue ;
   u8 radiotap_mcs_details ;
   u16 radiotap_vht_details ;
   netdev_features_t netdev_features ;
   u8 uapsd_queues ;
   u8 uapsd_max_sp_len ;
   u8 n_cipher_schemes ;
   struct ieee80211_cipher_scheme const *cipher_schemes ;
};
struct zd_rf {
   u8 type ;
   u8 channel ;
   unsigned char update_channel_int : 1 ;
   unsigned char patch_cck_gain : 1 ;
   void *priv ;
   int (*init_hw)(struct zd_rf * ) ;
   int (*set_channel)(struct zd_rf * , u8 ) ;
   int (*switch_radio_on)(struct zd_rf * ) ;
   int (*switch_radio_off)(struct zd_rf * ) ;
   int (*patch_6m_band_edge)(struct zd_rf * , u8 ) ;
   void (*clear)(struct zd_rf * ) ;
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
struct usb_device;
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
struct usb_req_read_regs {
   __le16 id ;
   __le16 addr[0U] ;
};
struct read_regs_int {
   struct completion completion ;
   struct usb_req_read_regs *req ;
   unsigned int req_count ;
   u8 buffer[64U] ;
   int length ;
   __le16 cr_int_addr ;
};
struct zd_ioreq16 {
   zd_addr_t addr ;
   u16 value ;
};
struct zd_ioreq32 {
   zd_addr_t addr ;
   u32 value ;
};
struct zd_usb_interrupt {
   struct read_regs_int read_regs ;
   spinlock_t lock ;
   struct urb *urb ;
   void *buffer ;
   dma_addr_t buffer_dma ;
   int interval ;
   atomic_t read_regs_enabled ;
   unsigned char read_regs_int_overridden : 1 ;
};
struct zd_usb_rx {
   spinlock_t lock ;
   struct mutex setup_mutex ;
   struct delayed_work idle_work ;
   struct tasklet_struct reset_timer_tasklet ;
   u8 fragment[9600U] ;
   unsigned int fragment_length ;
   unsigned int usb_packet_size ;
   struct urb **urbs ;
   int urbs_count ;
};
struct zd_usb_tx {
   atomic_t enabled ;
   spinlock_t lock ;
   struct delayed_work watchdog_work ;
   struct sk_buff_head submitted_skbs ;
   struct usb_anchor submitted ;
   int submitted_urbs ;
   unsigned char stopped : 1 ;
   unsigned char watchdog_enabled : 1 ;
};
struct zd_usb {
   struct zd_usb_interrupt intr ;
   struct zd_usb_rx rx ;
   struct zd_usb_tx tx ;
   struct usb_interface *intf ;
   struct usb_anchor submitted_cmds ;
   struct urb *urb_async_waiting ;
   int cmd_error ;
   u8 req_buf[64U] ;
   unsigned char is_zd1211b : 1 ;
   unsigned char initialized : 1 ;
   unsigned char was_running : 1 ;
   unsigned char in_async : 1 ;
};
struct zd_chip {
   struct zd_usb usb ;
   struct zd_rf rf ;
   struct mutex mutex ;
   zd_addr_t fw_regs_base ;
   u8 pwr_cal_values[14U] ;
   u8 pwr_int_values[14U] ;
   u8 ofdm_cal_values[3U][14U] ;
   u16 link_led ;
   unsigned char pa_type : 4 ;
   unsigned char patch_cck_gain : 1 ;
   unsigned char patch_cr157 : 1 ;
   unsigned char patch_6m_band_edge : 1 ;
   unsigned char new_phy_layout : 1 ;
   unsigned char al2230s_bit : 1 ;
   unsigned char supports_tx_led : 1 ;
};
enum led_status {
    ZD_LED_OFF = 0,
    ZD_LED_SCANNING = 1,
    ZD_LED_ASSOCIATED = 2
} ;
struct rx_status;
struct zd_mc_hash {
   u32 low ;
   u32 high ;
};
struct rx_status {
   u8 signal_quality_cck ;
   u8 signal_strength ;
   u8 signal_quality_ofdm ;
   u8 decryption_type ;
   u8 frame_status ;
};
struct housekeeping {
   struct delayed_work link_led_work ;
};
struct beacon {
   struct delayed_work watchdog_work ;
   struct sk_buff *cur_beacon ;
   unsigned long last_update ;
   u16 interval ;
   u8 period ;
};
struct zd_mac {
   struct zd_chip chip ;
   spinlock_t lock ;
   spinlock_t intr_lock ;
   struct ieee80211_hw *hw ;
   struct ieee80211_vif *vif ;
   struct housekeeping housekeeping ;
   struct beacon beacon ;
   struct work_struct set_rts_cts_work ;
   struct work_struct process_intr ;
   struct zd_mc_hash multicast_hash ;
   u8 intr_buffer[64U] ;
   u8 regdomain ;
   u8 default_regdomain ;
   u8 channel ;
   int type ;
   int associated ;
   unsigned long flags ;
   struct sk_buff_head ack_wait_queue ;
   struct ieee80211_channel channels[14U] ;
   struct ieee80211_rate rates[12U] ;
   struct ieee80211_supported_band band ;
   unsigned char short_preamble : 1 ;
   unsigned char pass_failed_fcs : 1 ;
   unsigned char pass_ctrl : 1 ;
   unsigned char ack_pending : 1 ;
   int ack_signal ;
};
struct ofdm_plcp_header {
   u8 prefix[3U] ;
   __le16 service ;
};
struct cck_plcp_header {
   u8 signal ;
   u8 service ;
   __le16 length ;
   __le16 crc16 ;
};
struct aw_pt_bi {
   u32 atim_wnd_period ;
   u32 pre_tbtt ;
   u32 beacon_interval ;
};
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
struct netdev_hw_addr {
   struct list_head list ;
   unsigned char addr[32U] ;
   unsigned char type ;
   bool global_use ;
   int sync_cnt ;
   int refcount ;
   int synced ;
   struct callback_head callback_head ;
};
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
struct ieee80211_hdr {
   __le16 frame_control ;
   __le16 duration_id ;
   u8 addr1[6U] ;
   u8 addr2[6U] ;
   u8 addr3[6U] ;
   __le16 seq_ctrl ;
   u8 addr4[6U] ;
};
enum nl80211_bss_scan_width {
    NL80211_BSS_CHAN_WIDTH_20 = 0,
    NL80211_BSS_CHAN_WIDTH_10 = 1,
    NL80211_BSS_CHAN_WIDTH_5 = 2
} ;
enum nl80211_txrate_gi {
    NL80211_TXRATE_DEFAULT_GI = 0,
    NL80211_TXRATE_FORCE_SGI = 1,
    NL80211_TXRATE_FORCE_LGI = 2
} ;
struct survey_info {
   struct ieee80211_channel *channel ;
   u64 channel_time ;
   u64 channel_time_busy ;
   u64 channel_time_ext_busy ;
   u64 channel_time_rx ;
   u64 channel_time_tx ;
   u32 filled ;
   s8 noise ;
};
struct cfg80211_ssid {
   u8 ssid[32U] ;
   u8 ssid_len ;
};
struct cfg80211_scan_request {
   struct cfg80211_ssid *ssids ;
   int n_ssids ;
   u32 n_channels ;
   enum nl80211_bss_scan_width scan_width ;
   u8 const *ie ;
   size_t ie_len ;
   u32 flags ;
   u32 rates[3U] ;
   struct wireless_dev *wdev ;
   struct wiphy *wiphy ;
   unsigned long scan_start ;
   bool aborted ;
   bool notified ;
   bool no_cck ;
   struct ieee80211_channel *channels[0U] ;
};
struct cfg80211_match_set {
   struct cfg80211_ssid ssid ;
   s32 rssi_thold ;
};
struct cfg80211_sched_scan_request {
   struct cfg80211_ssid *ssids ;
   int n_ssids ;
   u32 n_channels ;
   enum nl80211_bss_scan_width scan_width ;
   u32 interval ;
   u8 const *ie ;
   size_t ie_len ;
   u32 flags ;
   struct cfg80211_match_set *match_sets ;
   int n_match_sets ;
   s32 min_rssi_thold ;
   struct wiphy *wiphy ;
   struct net_device *dev ;
   unsigned long scan_start ;
   struct ieee80211_channel *channels[0U] ;
};
struct __anonstruct_control_283 {
   u32 legacy ;
   u8 ht_mcs[10U] ;
   u16 vht_mcs[8U] ;
   enum nl80211_txrate_gi gi ;
};
struct cfg80211_bitrate_mask {
   struct __anonstruct_control_283 control[3U] ;
};
struct cfg80211_gtk_rekey_data {
   u8 kek[16U] ;
   u8 kck[16U] ;
   u8 replay_ctr[8U] ;
};
struct ieee80211_tx_queue_params {
   u16 txop ;
   u16 cw_min ;
   u16 cw_max ;
   u8 aifs ;
   bool acm ;
   bool uapsd ;
};
struct ieee80211_low_level_stats {
   unsigned int dot11ACKFailureCount ;
   unsigned int dot11RTSFailureCount ;
   unsigned int dot11FCSErrorCount ;
   unsigned int dot11RTSSuccessCount ;
};
enum ieee80211_chanctx_switch_mode {
    CHANCTX_SWMODE_REASSIGN_VIF = 0,
    CHANCTX_SWMODE_SWAP_CONTEXTS = 1
} ;
struct ieee80211_vif_chanctx_switch {
   struct ieee80211_vif *vif ;
   struct ieee80211_chanctx_conf *old_ctx ;
   struct ieee80211_chanctx_conf *new_ctx ;
};
enum ieee80211_rssi_event {
    RSSI_EVENT_HIGH = 0,
    RSSI_EVENT_LOW = 1
} ;
struct ieee80211_tx_rate {
   s8 idx ;
   unsigned char count : 5 ;
   unsigned short flags : 11 ;
};
struct __anonstruct_ldv_46069_288 {
   struct ieee80211_tx_rate rates[4U] ;
   s8 rts_cts_rate_idx ;
   unsigned char use_rts : 1 ;
   unsigned char use_cts_prot : 1 ;
   unsigned char short_preamble : 1 ;
   unsigned char skip_table : 1 ;
};
union __anonunion_ldv_46071_287 {
   struct __anonstruct_ldv_46069_288 ldv_46069 ;
   unsigned long jiffies ;
};
struct ieee80211_key_conf;
struct __anonstruct_control_286 {
   union __anonunion_ldv_46071_287 ldv_46071 ;
   struct ieee80211_vif *vif ;
   struct ieee80211_key_conf *hw_key ;
   u32 flags ;
};
struct __anonstruct_status_289 {
   struct ieee80211_tx_rate rates[4U] ;
   s32 ack_signal ;
   u8 ampdu_ack_len ;
   u8 ampdu_len ;
   u8 antenna ;
   void *status_driver_data[2U] ;
};
struct __anonstruct_ldv_46089_290 {
   struct ieee80211_tx_rate driver_rates[4U] ;
   u8 pad[4U] ;
   void *rate_driver_data[3U] ;
};
union __anonunion_ldv_46091_285 {
   struct __anonstruct_control_286 control ;
   struct __anonstruct_status_289 status ;
   struct __anonstruct_ldv_46089_290 ldv_46089 ;
   void *driver_data[5U] ;
};
struct ieee80211_tx_info {
   u32 flags ;
   u8 band ;
   u8 hw_queue ;
   u16 ack_frame_id ;
   union __anonunion_ldv_46091_285 ldv_46091 ;
};
struct ieee80211_sched_scan_ies {
   u8 *ie[3U] ;
   size_t len[3U] ;
};
struct ieee80211_rx_status;
struct ieee80211_rx_status {
   u64 mactime ;
   u32 device_timestamp ;
   u32 ampdu_reference ;
   u32 flag ;
   u16 freq ;
   u8 vht_flag ;
   u8 rate_idx ;
   u8 vht_nss ;
   u8 rx_flags ;
   u8 band ;
   u8 antenna ;
   s8 signal ;
   u8 chains ;
   s8 chain_signal[4U] ;
   u8 ampdu_delimiter_crc ;
};
struct ieee80211_channel_switch {
   u64 timestamp ;
   bool block_tx ;
   struct cfg80211_chan_def chandef ;
   u8 count ;
};
struct ieee80211_key_conf {
   u32 cipher ;
   u8 icv_len ;
   u8 iv_len ;
   u8 hw_key_idx ;
   u8 flags ;
   s8 keyidx ;
   u8 keylen ;
   u8 key[0U] ;
};
enum set_key_cmd {
    SET_KEY = 0,
    DISABLE_KEY = 1
} ;
enum ieee80211_sta_state {
    IEEE80211_STA_NOTEXIST = 0,
    IEEE80211_STA_NONE = 1,
    IEEE80211_STA_AUTH = 2,
    IEEE80211_STA_ASSOC = 3,
    IEEE80211_STA_AUTHORIZED = 4
} ;
enum ieee80211_sta_rx_bandwidth {
    IEEE80211_STA_RX_BW_20 = 0,
    IEEE80211_STA_RX_BW_40 = 1,
    IEEE80211_STA_RX_BW_80 = 2,
    IEEE80211_STA_RX_BW_160 = 3
} ;
struct __anonstruct_rate_291 {
   s8 idx ;
   u8 count ;
   u8 count_cts ;
   u8 count_rts ;
   u16 flags ;
};
struct ieee80211_sta_rates {
   struct callback_head callback_head ;
   struct __anonstruct_rate_291 rate[4U] ;
};
struct ieee80211_sta {
   u32 supp_rates[3U] ;
   u8 addr[6U] ;
   u16 aid ;
   struct ieee80211_sta_ht_cap ht_cap ;
   struct ieee80211_sta_vht_cap vht_cap ;
   bool wme ;
   u8 uapsd_queues ;
   u8 max_sp ;
   u8 rx_nss ;
   enum ieee80211_sta_rx_bandwidth bandwidth ;
   enum ieee80211_smps_mode smps_mode ;
   struct ieee80211_sta_rates *rates ;
   bool tdls ;
   u8 drv_priv[0U] ;
};
enum sta_notify_cmd {
    STA_NOTIFY_SLEEP = 0,
    STA_NOTIFY_AWAKE = 1
} ;
struct ieee80211_tx_control {
   struct ieee80211_sta *sta ;
};
enum ieee80211_ampdu_mlme_action {
    IEEE80211_AMPDU_RX_START = 0,
    IEEE80211_AMPDU_RX_STOP = 1,
    IEEE80211_AMPDU_TX_START = 2,
    IEEE80211_AMPDU_TX_STOP_CONT = 3,
    IEEE80211_AMPDU_TX_STOP_FLUSH = 4,
    IEEE80211_AMPDU_TX_STOP_FLUSH_CONT = 5,
    IEEE80211_AMPDU_TX_OPERATIONAL = 6
} ;
enum ieee80211_frame_release_type {
    IEEE80211_FRAME_RELEASE_PSPOLL = 0,
    IEEE80211_FRAME_RELEASE_UAPSD = 1
} ;
enum ieee80211_roc_type {
    IEEE80211_ROC_TYPE_NORMAL = 0,
    IEEE80211_ROC_TYPE_MGMT_TX = 1
} ;
struct ieee80211_ops {
   void (*tx)(struct ieee80211_hw * , struct ieee80211_tx_control * , struct sk_buff * ) ;
   int (*start)(struct ieee80211_hw * ) ;
   void (*stop)(struct ieee80211_hw * ) ;
   int (*suspend)(struct ieee80211_hw * , struct cfg80211_wowlan * ) ;
   int (*resume)(struct ieee80211_hw * ) ;
   void (*set_wakeup)(struct ieee80211_hw * , bool ) ;
   int (*add_interface)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*change_interface)(struct ieee80211_hw * , struct ieee80211_vif * , enum nl80211_iftype ,
                           bool ) ;
   void (*remove_interface)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*config)(struct ieee80211_hw * , u32 ) ;
   void (*bss_info_changed)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_bss_conf * ,
                            u32 ) ;
   int (*start_ap)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*stop_ap)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   u64 (*prepare_multicast)(struct ieee80211_hw * , struct netdev_hw_addr_list * ) ;
   void (*configure_filter)(struct ieee80211_hw * , unsigned int , unsigned int * ,
                            u64 ) ;
   int (*set_tim)(struct ieee80211_hw * , struct ieee80211_sta * , bool ) ;
   int (*set_key)(struct ieee80211_hw * , enum set_key_cmd , struct ieee80211_vif * ,
                  struct ieee80211_sta * , struct ieee80211_key_conf * ) ;
   void (*update_tkip_key)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_key_conf * ,
                           struct ieee80211_sta * , u32 , u16 * ) ;
   void (*set_rekey_data)(struct ieee80211_hw * , struct ieee80211_vif * , struct cfg80211_gtk_rekey_data * ) ;
   void (*set_default_unicast_key)(struct ieee80211_hw * , struct ieee80211_vif * ,
                                   int ) ;
   int (*hw_scan)(struct ieee80211_hw * , struct ieee80211_vif * , struct cfg80211_scan_request * ) ;
   void (*cancel_hw_scan)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*sched_scan_start)(struct ieee80211_hw * , struct ieee80211_vif * , struct cfg80211_sched_scan_request * ,
                           struct ieee80211_sched_scan_ies * ) ;
   int (*sched_scan_stop)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*sw_scan_start)(struct ieee80211_hw * ) ;
   void (*sw_scan_complete)(struct ieee80211_hw * ) ;
   int (*get_stats)(struct ieee80211_hw * , struct ieee80211_low_level_stats * ) ;
   void (*get_tkip_seq)(struct ieee80211_hw * , u8 , u32 * , u16 * ) ;
   int (*set_frag_threshold)(struct ieee80211_hw * , u32 ) ;
   int (*set_rts_threshold)(struct ieee80211_hw * , u32 ) ;
   int (*sta_add)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ) ;
   int (*sta_remove)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ) ;
   void (*sta_add_debugfs)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                           struct dentry * ) ;
   void (*sta_remove_debugfs)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                              struct dentry * ) ;
   void (*sta_notify)(struct ieee80211_hw * , struct ieee80211_vif * , enum sta_notify_cmd ,
                      struct ieee80211_sta * ) ;
   int (*sta_state)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                    enum ieee80211_sta_state , enum ieee80211_sta_state ) ;
   void (*sta_pre_rcu_remove)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ) ;
   void (*sta_rc_update)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                         u32 ) ;
   int (*conf_tx)(struct ieee80211_hw * , struct ieee80211_vif * , u16 , struct ieee80211_tx_queue_params const * ) ;
   u64 (*get_tsf)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*set_tsf)(struct ieee80211_hw * , struct ieee80211_vif * , u64 ) ;
   void (*reset_tsf)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*tx_last_beacon)(struct ieee80211_hw * ) ;
   int (*ampdu_action)(struct ieee80211_hw * , struct ieee80211_vif * , enum ieee80211_ampdu_mlme_action ,
                       struct ieee80211_sta * , u16 , u16 * , u8 ) ;
   int (*get_survey)(struct ieee80211_hw * , int , struct survey_info * ) ;
   void (*rfkill_poll)(struct ieee80211_hw * ) ;
   void (*set_coverage_class)(struct ieee80211_hw * , u8 ) ;
   int (*testmode_cmd)(struct ieee80211_hw * , struct ieee80211_vif * , void * , int ) ;
   int (*testmode_dump)(struct ieee80211_hw * , struct sk_buff * , struct netlink_callback * ,
                        void * , int ) ;
   void (*flush)(struct ieee80211_hw * , struct ieee80211_vif * , u32 , bool ) ;
   void (*channel_switch)(struct ieee80211_hw * , struct ieee80211_channel_switch * ) ;
   int (*set_antenna)(struct ieee80211_hw * , u32 , u32 ) ;
   int (*get_antenna)(struct ieee80211_hw * , u32 * , u32 * ) ;
   int (*remain_on_channel)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_channel * ,
                            int , enum ieee80211_roc_type ) ;
   int (*cancel_remain_on_channel)(struct ieee80211_hw * ) ;
   int (*set_ringparam)(struct ieee80211_hw * , u32 , u32 ) ;
   void (*get_ringparam)(struct ieee80211_hw * , u32 * , u32 * , u32 * , u32 * ) ;
   bool (*tx_frames_pending)(struct ieee80211_hw * ) ;
   int (*set_bitrate_mask)(struct ieee80211_hw * , struct ieee80211_vif * , struct cfg80211_bitrate_mask const * ) ;
   void (*rssi_callback)(struct ieee80211_hw * , struct ieee80211_vif * , enum ieee80211_rssi_event ) ;
   void (*allow_buffered_frames)(struct ieee80211_hw * , struct ieee80211_sta * ,
                                 u16 , int , enum ieee80211_frame_release_type ,
                                 bool ) ;
   void (*release_buffered_frames)(struct ieee80211_hw * , struct ieee80211_sta * ,
                                   u16 , int , enum ieee80211_frame_release_type ,
                                   bool ) ;
   int (*get_et_sset_count)(struct ieee80211_hw * , struct ieee80211_vif * , int ) ;
   void (*get_et_stats)(struct ieee80211_hw * , struct ieee80211_vif * , struct ethtool_stats * ,
                        u64 * ) ;
   void (*get_et_strings)(struct ieee80211_hw * , struct ieee80211_vif * , u32 ,
                          u8 * ) ;
   int (*get_rssi)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                   s8 * ) ;
   void (*mgd_prepare_tx)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*add_chanctx)(struct ieee80211_hw * , struct ieee80211_chanctx_conf * ) ;
   void (*remove_chanctx)(struct ieee80211_hw * , struct ieee80211_chanctx_conf * ) ;
   void (*change_chanctx)(struct ieee80211_hw * , struct ieee80211_chanctx_conf * ,
                          u32 ) ;
   int (*assign_vif_chanctx)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_chanctx_conf * ) ;
   void (*unassign_vif_chanctx)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_chanctx_conf * ) ;
   int (*switch_vif_chanctx)(struct ieee80211_hw * , struct ieee80211_vif_chanctx_switch * ,
                             int , enum ieee80211_chanctx_switch_mode ) ;
   void (*restart_complete)(struct ieee80211_hw * ) ;
   void (*ipv6_addr_change)(struct ieee80211_hw * , struct ieee80211_vif * , struct inet6_dev * ) ;
   void (*channel_switch_beacon)(struct ieee80211_hw * , struct ieee80211_vif * ,
                                 struct cfg80211_chan_def * ) ;
   int (*join_ibss)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*leave_ibss)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   u32 (*get_expected_throughput)(struct ieee80211_sta * ) ;
};
struct zd_ctrlset {
   u8 modulation ;
   __le16 tx_length ;
   u8 control ;
   __le16 packet_length ;
   __le16 current_length ;
   u8 service ;
   __le16 next_frame_length ;
};
struct tx_retry_rate {
   int count ;
   int rate[10U] ;
};
struct tx_status {
   u8 type ;
   u8 id ;
   u8 rate ;
   u8 pad ;
   u8 mac[6U] ;
   u8 retry ;
   u8 failure ;
};
struct zd_reg_alpha2_map {
   u32 reg ;
   char alpha2[2U] ;
};
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
struct uw2453_priv {
   int config ;
};
enum hrtimer_restart;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
typedef short s16;
typedef void (*ctor_fn_t)(void);
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
enum hrtimer_restart;
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
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
struct usb_driver;
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
union __anonunion_ldv_32978_211 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_32978_211 ldv_32978 ;
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
struct reg_data {
   __le16 addr ;
   __le16 value ;
};
struct usb_req_write_regs {
   __le16 id ;
   struct reg_data reg_writes[0U] ;
};
struct usb_req_rfwrite {
   __le16 id ;
   __le16 value ;
   __le16 bits ;
   __le16 bit_values[0U] ;
};
struct usb_int_header {
   u8 type ;
   u8 id ;
};
struct usb_int_regs {
   struct usb_int_header hdr ;
   struct reg_data regs[0U] ;
};
struct rx_length_info {
   __le16 length[3U] ;
   __le16 tag ;
};
typedef int ldv_func_ret_type;
struct __anonstruct____missing_field_name_257 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_256 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_257 __annonCompField63 ;
};
union __anonunion____missing_field_name_258 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion____missing_field_name_259 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff___0 {
   struct sk_buff___0 *next ;
   struct sk_buff___0 *prev ;
   union __anonunion_ldv_24882_180 __annonCompField62 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48] __attribute__((__aligned__(8))) ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion____missing_field_name_256 __annonCompField64 ;
   __u32 priority ;
   __u8 ignore_df : 1 ;
   __u8 cloned : 1 ;
   __u8 ip_summed : 2 ;
   __u8 nohdr : 1 ;
   __u8 nfctinfo : 3 ;
   __u8 pkt_type : 3 ;
   __u8 fclone : 2 ;
   __u8 ipvs_property : 1 ;
   __u8 peeked : 1 ;
   __u8 nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff___0 *skb ) ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   __u8 ndisc_nodetype : 2 ;
   __u8 pfmemalloc : 1 ;
   __u8 ooo_okay : 1 ;
   __u8 l4_hash : 1 ;
   __u8 wifi_acked_valid : 1 ;
   __u8 wifi_acked : 1 ;
   __u8 no_fcs : 1 ;
   __u8 head_frag : 1 ;
   __u8 encapsulation : 1 ;
   __u8 encap_hdr_csum : 1 ;
   __u8 csum_valid : 1 ;
   __u8 csum_complete_sw : 1 ;
   union __anonunion____missing_field_name_258 __annonCompField65 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_259 __annonCompField66 ;
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
typedef void *Element;
typedef Element Set;
long ldv__builtin_expect(long exp , long c ) ;
extern void dump_stack(void) ;
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern int scnprintf(char * , size_t , char const * , ...) ;
extern void *memset(void * , int , size_t ) ;
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
extern void mutex_destroy(struct mutex * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
__inline static int mutex_is_locked(struct mutex *lock )
{
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& lock->count));
  return (tmp != 1);
}
}
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern unsigned long get_seconds(void) ;
extern bool cancel_work_sync(struct work_struct * ) ;
extern int dev_printk(char const * , struct device const * , char const * , ...) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
void ldv_kfree_skb_6(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_7(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_8(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_11(struct sk_buff *ldv_func_arg1 ) ;
void ldv_consume_skb_5(struct sk_buff *ldv_func_arg1 ) ;
extern void ldv_skb_free(struct sk_buff___0 * ) ;
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
char const *zd_rf_name(u8 type ) ;
void zd_rf_init(struct zd_rf *rf ) ;
void zd_rf_clear(struct zd_rf *rf ) ;
int zd_rf_init_hw(struct zd_rf *rf , u8 type ) ;
int zd_rf_scnprint_id(struct zd_rf *rf , char *buffer , size_t size ) ;
int zd_rf_set_channel(struct zd_rf *rf , u8 channel ) ;
int zd_switch_radio_on(struct zd_rf *rf ) ;
int zd_switch_radio_off(struct zd_rf *rf ) ;
int zd_rf_patch_6m_band_edge(struct zd_rf *rf , u8 channel ) ;
__inline static int zd_rf_should_update_pwr_int(struct zd_rf *rf )
{
  {
  return ((int )rf->update_channel_int);
}
}
__inline static int zd_rf_should_patch_cck_gain(struct zd_rf *rf )
{
  {
  return ((int )rf->patch_cck_gain);
}
}
void zd_usb_init(struct zd_usb *usb , struct ieee80211_hw *hw , struct usb_interface *intf ) ;
void zd_usb_clear(struct zd_usb *usb ) ;
int zd_usb_scnprint_id(struct zd_usb *usb , char *buffer , size_t size ) ;
void zd_tx_watchdog_enable(struct zd_usb *usb ) ;
void zd_tx_watchdog_disable(struct zd_usb *usb ) ;
int zd_usb_enable_int(struct zd_usb *usb ) ;
void zd_usb_disable_int(struct zd_usb *usb ) ;
int zd_usb_enable_rx(struct zd_usb *usb ) ;
void zd_usb_disable_rx(struct zd_usb *usb ) ;
void zd_usb_enable_tx(struct zd_usb *usb ) ;
void zd_usb_disable_tx(struct zd_usb *usb ) ;
int zd_usb_ioread16v(struct zd_usb *usb , u16 *values , zd_addr_t const *addresses ,
                     unsigned int count ) ;
__inline static int zd_usb_ioread16(struct zd_usb *usb , u16 *value , zd_addr_t const addr )
{
  int tmp ;
  {
  tmp = zd_usb_ioread16v(usb, value, & addr, 1U);
  return (tmp);
}
}
void zd_usb_iowrite16v_async_start(struct zd_usb *usb ) ;
int zd_usb_iowrite16v_async_end(struct zd_usb *usb , unsigned int timeout ) ;
int zd_usb_iowrite16v_async(struct zd_usb *usb , struct zd_ioreq16 const *ioreqs ,
                            unsigned int count ) ;
int zd_usb_iowrite16v(struct zd_usb *usb , struct zd_ioreq16 const *ioreqs , unsigned int count ) ;
int zd_usb_rfwrite(struct zd_usb *usb , u32 value , u8 bits ) ;
int zd_usb_read_fw(struct zd_usb *usb , zd_addr_t addr , u8 *data , u16 len ) ;
void zd_chip_init(struct zd_chip *chip , struct ieee80211_hw *hw , struct usb_interface *intf ) ;
void zd_chip_clear(struct zd_chip *chip ) ;
int zd_chip_read_mac_addr_fw(struct zd_chip *chip , u8 *addr ) ;
int zd_chip_init_hw(struct zd_chip *chip ) ;
__inline static int zd_chip_is_zd1211b(struct zd_chip *chip )
{
  {
  return ((int )chip->usb.is_zd1211b);
}
}
__inline static int zd_ioread16v_locked(struct zd_chip *chip , u16 *values , zd_addr_t const *addresses ,
                                        unsigned int count )
{
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  tmp___0 = mutex_is_locked(& chip->mutex);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_ioread16v_locked";
    descriptor.filename = "/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/net/wireless/zd1211rw/zd_chip.h";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 812U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/net/wireless/zd1211rw/zd_chip.h",
                         812, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  tmp___2 = zd_usb_ioread16v(& chip->usb, values, addresses, count);
  return (tmp___2);
}
}
__inline static int zd_ioread16_locked(struct zd_chip *chip , u16 *value , zd_addr_t const addr )
{
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  tmp___0 = mutex_is_locked(& chip->mutex);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_ioread16_locked";
    descriptor.filename = "/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/net/wireless/zd1211rw/zd_chip.h";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 819U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/net/wireless/zd1211rw/zd_chip.h",
                         819, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  tmp___2 = zd_usb_ioread16(& chip->usb, value, (int )addr);
  return (tmp___2);
}
}
int zd_ioread32v_locked(struct zd_chip *chip , u32 *values , zd_addr_t const *addr ,
                        unsigned int count ) ;
__inline static int zd_ioread32_locked(struct zd_chip *chip , u32 *value , zd_addr_t const addr )
{
  int tmp ;
  {
  tmp = zd_ioread32v_locked(chip, value, & addr, 1U);
  return (tmp);
}
}
__inline static int zd_iowrite16_locked(struct zd_chip *chip , u16 value , zd_addr_t addr )
{
  struct zd_ioreq16 ioreq ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  tmp___0 = mutex_is_locked(& chip->mutex);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_iowrite16_locked";
    descriptor.filename = "/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/net/wireless/zd1211rw/zd_chip.h";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 837U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/net/wireless/zd1211rw/zd_chip.h",
                         837, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  ioreq.addr = addr;
  ioreq.value = value;
  tmp___2 = zd_usb_iowrite16v(& chip->usb, (struct zd_ioreq16 const *)(& ioreq),
                              1U);
  return (tmp___2);
}
}
int zd_iowrite16a_locked(struct zd_chip *chip , struct zd_ioreq16 const *ioreqs ,
                         unsigned int count ) ;
int _zd_iowrite32v_locked(struct zd_chip *chip , struct zd_ioreq32 const *ioreqs ,
                          unsigned int count ) ;
__inline static int zd_iowrite32_locked(struct zd_chip *chip , u32 value , zd_addr_t addr )
{
  struct zd_ioreq32 ioreq ;
  int tmp ;
  {
  ioreq.addr = addr;
  ioreq.value = value;
  tmp = _zd_iowrite32v_locked(chip, (struct zd_ioreq32 const *)(& ioreq), 1U);
  return (tmp);
}
}
int zd_iowrite32a_locked(struct zd_chip *chip , struct zd_ioreq32 const *ioreqs ,
                         unsigned int count ) ;
__inline static int zd_rfwrite_locked(struct zd_chip *chip , u32 value , u8 bits )
{
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  tmp___0 = mutex_is_locked(& chip->mutex);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_rfwrite_locked";
    descriptor.filename = "/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/net/wireless/zd1211rw/zd_chip.h";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 866U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/net/wireless/zd1211rw/zd_chip.h",
                         866, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  tmp___2 = zd_usb_rfwrite(& chip->usb, value, (int )bits);
  return (tmp___2);
}
}
int zd_rfwrite_cr_locked(struct zd_chip *chip , u32 value ) ;
int zd_rfwritev_locked(struct zd_chip *chip , u32 const *values , unsigned int count ,
                       u8 bits ) ;
int zd_rfwritev_cr_locked(struct zd_chip *chip , u32 const *values , unsigned int count ) ;
int zd_ioread16(struct zd_chip *chip , zd_addr_t addr , u16 *value ) ;
int zd_iowrite16(struct zd_chip *chip , zd_addr_t addr , u16 value ) ;
int zd_ioread32(struct zd_chip *chip , zd_addr_t addr , u32 *value ) ;
int zd_iowrite32(struct zd_chip *chip , zd_addr_t addr , u32 value ) ;
int zd_ioread32v(struct zd_chip *chip , zd_addr_t const *addresses , u32 *values ,
                 unsigned int count ) ;
int zd_iowrite32a(struct zd_chip *chip , struct zd_ioreq32 const *ioreqs , unsigned int count ) ;
int zd_chip_set_channel(struct zd_chip *chip , u8 channel ) ;
u8 zd_chip_get_channel(struct zd_chip *chip ) ;
int zd_read_regdomain(struct zd_chip *chip , u8 *regdomain ) ;
int zd_write_mac_addr(struct zd_chip *chip , u8 const *mac_addr ) ;
int zd_write_bssid(struct zd_chip *chip , u8 const *bssid ) ;
int zd_chip_switch_radio_on(struct zd_chip *chip ) ;
int zd_chip_switch_radio_off(struct zd_chip *chip ) ;
int zd_chip_enable_int(struct zd_chip *chip ) ;
void zd_chip_disable_int(struct zd_chip *chip ) ;
int zd_chip_enable_rxtx(struct zd_chip *chip ) ;
void zd_chip_disable_rxtx(struct zd_chip *chip ) ;
int zd_chip_enable_hwint(struct zd_chip *chip ) ;
int zd_chip_disable_hwint(struct zd_chip *chip ) ;
int zd_chip_generic_patch_6m_band(struct zd_chip *chip , int channel ) ;
int zd_chip_set_rts_cts_rate_locked(struct zd_chip *chip , int preamble ) ;
int zd_chip_set_basic_rates(struct zd_chip *chip , u16 cr_rates ) ;
int zd_chip_lock_phy_regs(struct zd_chip *chip ) ;
int zd_chip_unlock_phy_regs(struct zd_chip *chip ) ;
int zd_chip_control_leds(struct zd_chip *chip , enum led_status status ) ;
int zd_set_beacon_interval(struct zd_chip *chip , u16 interval , u8 dtim_period ,
                           int type ) ;
u8 zd_rx_rate(void const *rx_frame , struct rx_status const *status ) ;
int zd_chip_set_multicast_hash(struct zd_chip *chip , struct zd_mc_hash *hash ) ;
u64 zd_chip_get_tsf(struct zd_chip *chip ) ;
__inline static u8 zd_ofdm_plcp_header_rate(struct ofdm_plcp_header const *header )
{
  {
  return ((unsigned int )header->prefix[0] & 15U);
}
}
__inline static u8 zd_cck_plcp_header_signal(struct cck_plcp_header const *header )
{
  {
  return ((u8 )header->signal);
}
}
__inline static struct zd_mac *zd_chip_to_mac(struct zd_chip *chip )
{
  struct zd_chip const *__mptr ;
  {
  __mptr = (struct zd_chip const *)chip;
  return ((struct zd_mac *)__mptr);
}
}
__inline static u8 *zd_mac_get_perm_addr(struct zd_mac *mac )
{
  {
  return ((u8 *)(& ((mac->hw)->wiphy)->perm_addr));
}
}
void zd_chip_init(struct zd_chip *chip , struct ieee80211_hw *hw , struct usb_interface *intf )
{
  struct lock_class_key __key ;
  {
  memset((void *)chip, 0, 11600UL);
  __mutex_init(& chip->mutex, "&chip->mutex", & __key);
  zd_usb_init(& chip->usb, hw, intf);
  zd_rf_init(& chip->rf);
  return;
}
}
void zd_chip_clear(struct zd_chip *chip )
{
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp___0 = mutex_is_locked(& chip->mutex);
  tmp___1 = ldv__builtin_expect(tmp___0 != 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_chip_clear";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 79U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared",
                         79, (char *)"!mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  zd_usb_clear(& chip->usb);
  zd_rf_clear(& chip->rf);
  mutex_destroy(& chip->mutex);
  memset((void *)chip, 255, 11600UL);
  return;
}
}
static int scnprint_mac_oui(struct zd_chip *chip , char *buffer , size_t size )
{
  u8 *addr ;
  struct zd_mac *tmp ;
  u8 *tmp___0 ;
  int tmp___1 ;
  {
  tmp = zd_chip_to_mac(chip);
  tmp___0 = zd_mac_get_perm_addr(tmp);
  addr = tmp___0;
  tmp___1 = scnprintf(buffer, size, "%02x-%02x-%02x", (int )*addr, (int )*(addr + 1UL),
                      (int )*(addr + 2UL));
  return (tmp___1);
}
}
static int scnprint_id(struct zd_chip *chip , char *buffer , size_t size )
{
  int i ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  i = 0;
  tmp = zd_chip_is_zd1211b(chip);
  i = scnprintf(buffer, size, "zd1211%s chip ", tmp != 0 ? (char *)"b" : (char *)"");
  tmp___0 = zd_usb_scnprint_id(& chip->usb, buffer + (unsigned long )i, size - (size_t )i);
  i = tmp___0 + i;
  tmp___1 = scnprintf(buffer + (unsigned long )i, size - (size_t )i, " ");
  i = tmp___1 + i;
  tmp___2 = scnprint_mac_oui(chip, buffer + (unsigned long )i, size - (size_t )i);
  i = tmp___2 + i;
  tmp___3 = scnprintf(buffer + (unsigned long )i, size - (size_t )i, " ");
  i = tmp___3 + i;
  tmp___4 = zd_rf_scnprint_id(& chip->rf, buffer + (unsigned long )i, size - (size_t )i);
  i = tmp___4 + i;
  tmp___5 = scnprintf(buffer + (unsigned long )i, size - (size_t )i, " pa%1x %c%c%c%c%c",
                      (int )chip->pa_type, (unsigned int )*((unsigned char *)chip + 11594UL) != 0U ? 103 : 45,
                      (unsigned int )*((unsigned char *)chip + 11594UL) != 0U ? 55 : 45,
                      (unsigned int )*((unsigned char *)chip + 11594UL) != 0U ? 54 : 45,
                      (unsigned int )*((unsigned char *)chip + 11594UL) != 0U ? 78 : 45,
                      (unsigned int )*((unsigned char *)chip + 11595UL) != 0U ? 83 : 45);
  i = tmp___5 + i;
  return (i);
}
}
static void print_id(struct zd_chip *chip )
{
  char buffer[80U] ;
  {
  scnprint_id(chip, (char *)(& buffer), 80UL);
  buffer[79UL] = 0;
  _dev_info((struct device const *)(& (chip->usb.intf)->dev), "%s\n", (char *)(& buffer));
  return;
}
}
static zd_addr_t inc_addr(zd_addr_t addr )
{
  u16 a ;
  {
  a = addr;
  if (((int )a & 61440) == 36864) {
    a = (unsigned int )a + 2U;
  } else {
    a = (unsigned int )a + 1U;
  }
  return (a);
}
}
int zd_ioread32v_locked(struct zd_chip *chip , u32 *values , zd_addr_t const *addr ,
                        unsigned int count )
{
  int r ;
  int i ;
  zd_addr_t a16[14U] ;
  u16 v16[14U] ;
  unsigned int count16 ;
  long tmp ;
  long tmp___0 ;
  int j ;
  int j___0 ;
  {
  if (count > 7U) {
    return (-22);
  } else {
  }
  count16 = count * 2U;
  tmp = ldv__builtin_expect((unsigned long )count16 * 2UL > 28UL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared"),
                         "i" (152), "i" (12UL));
    ldv_47730: ;
    goto ldv_47730;
  } else {
  }
  tmp___0 = ldv__builtin_expect((unsigned long )count16 * 2UL > 28UL, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared"),
                         "i" (153), "i" (12UL));
    ldv_47731: ;
    goto ldv_47731;
  } else {
  }
  i = 0;
  goto ldv_47734;
  ldv_47733:
  j = i * 2;
  a16[j] = inc_addr((int )*(addr + (unsigned long )i));
  a16[j + 1] = *(addr + (unsigned long )i);
  i = i + 1;
  ldv_47734: ;
  if ((unsigned int )i < count) {
    goto ldv_47733;
  } else {
  }
  r = zd_ioread16v_locked(chip, (u16 *)(& v16), (zd_addr_t const *)(& a16), count16);
  if (r != 0) {
    dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() error: zd_ioread16v_locked. Error number %d\n",
               "zd_ioread32v_locked", r);
    return (r);
  } else {
  }
  i = 0;
  goto ldv_47739;
  ldv_47738:
  j___0 = i * 2;
  *(values + (unsigned long )i) = (u32 )(((int )v16[j___0] << 16) | (int )v16[j___0 + 1]);
  i = i + 1;
  ldv_47739: ;
  if ((unsigned int )i < count) {
    goto ldv_47738;
  } else {
  }
  return (0);
}
}
static int _zd_iowrite32v_async_locked(struct zd_chip *chip , struct zd_ioreq32 const *ioreqs ,
                                       unsigned int count )
{
  int i ;
  int j ;
  int r ;
  struct zd_ioreq16 ioreqs16[14U] ;
  unsigned int count16 ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp___0 = mutex_is_locked(& chip->mutex);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "_zd_iowrite32v_async_locked";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 187U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared",
                         187, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  if (count == 0U) {
    return (0);
  } else {
  }
  if (count > 7U) {
    return (-22);
  } else {
  }
  count16 = count * 2U;
  tmp___2 = ldv__builtin_expect((unsigned long )count16 * 4UL > 56UL, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared"),
                         "i" (195), "i" (12UL));
    ldv_47753: ;
    goto ldv_47753;
  } else {
  }
  i = 0;
  goto ldv_47755;
  ldv_47754:
  j = i * 2;
  ioreqs16[j].value = (u16 )((ioreqs + (unsigned long )i)->value >> 16);
  ioreqs16[j].addr = inc_addr((int )(ioreqs + (unsigned long )i)->addr);
  ioreqs16[j + 1].value = (u16 )(ioreqs + (unsigned long )i)->value;
  ioreqs16[j + 1].addr = (ioreqs + (unsigned long )i)->addr;
  i = i + 1;
  ldv_47755: ;
  if ((unsigned int )i < count) {
    goto ldv_47754;
  } else {
  }
  r = zd_usb_iowrite16v_async(& chip->usb, (struct zd_ioreq16 const *)(& ioreqs16),
                              count16);
  if (r != 0) {
    dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() error %d in zd_usb_write16v\n",
               "_zd_iowrite32v_async_locked", r);
  } else {
  }
  return (r);
}
}
int _zd_iowrite32v_locked(struct zd_chip *chip , struct zd_ioreq32 const *ioreqs ,
                          unsigned int count )
{
  int r ;
  int tmp ;
  {
  zd_usb_iowrite16v_async_start(& chip->usb);
  r = _zd_iowrite32v_async_locked(chip, ioreqs, count);
  if (r != 0) {
    zd_usb_iowrite16v_async_end(& chip->usb, 0U);
    return (r);
  } else {
  }
  tmp = zd_usb_iowrite16v_async_end(& chip->usb, 50U);
  return (tmp);
}
}
int zd_iowrite16a_locked(struct zd_chip *chip , struct zd_ioreq16 const *ioreqs ,
                         unsigned int count )
{
  int r ;
  unsigned int i ;
  unsigned int j ;
  unsigned int t ;
  unsigned int max ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  tmp___0 = mutex_is_locked(& chip->mutex);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_iowrite16a_locked";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 236U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared",
                         236, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  zd_usb_iowrite16v_async_start(& chip->usb);
  i = 0U;
  goto ldv_47779;
  ldv_47778:
  t = 0U;
  max = count - i;
  if (max > 15U) {
    max = 15U;
  } else {
  }
  j = 0U;
  goto ldv_47777;
  ldv_47776: ;
  if ((unsigned int )((unsigned short )(ioreqs + (unsigned long )(i + j))->addr) == 0U) {
    t = 1U;
    goto ldv_47775;
  } else {
  }
  j = j + 1U;
  ldv_47777: ;
  if (j < max) {
    goto ldv_47776;
  } else {
  }
  ldv_47775:
  r = zd_usb_iowrite16v_async(& chip->usb, ioreqs + (unsigned long )i, j);
  if (r != 0) {
    zd_usb_iowrite16v_async_end(& chip->usb, 0U);
    dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() error zd_usb_iowrite16v. Error number %d\n",
               "zd_iowrite16a_locked", r);
    return (r);
  } else {
  }
  i = (j + t) + i;
  ldv_47779: ;
  if (i < count) {
    goto ldv_47778;
  } else {
  }
  tmp___2 = zd_usb_iowrite16v_async_end(& chip->usb, 50U);
  return (tmp___2);
}
}
int zd_iowrite32a_locked(struct zd_chip *chip , struct zd_ioreq32 const *ioreqs ,
                         unsigned int count )
{
  int r ;
  unsigned int i ;
  unsigned int j ;
  unsigned int t ;
  unsigned int max ;
  int tmp ;
  {
  zd_usb_iowrite16v_async_start(& chip->usb);
  i = 0U;
  goto ldv_47796;
  ldv_47795:
  t = 0U;
  max = count - i;
  if (max > 7U) {
    max = 7U;
  } else {
  }
  j = 0U;
  goto ldv_47793;
  ldv_47792: ;
  if ((unsigned int )((unsigned short )(ioreqs + (unsigned long )(i + j))->addr) == 0U) {
    t = 1U;
    goto ldv_47791;
  } else {
  }
  j = j + 1U;
  ldv_47793: ;
  if (j < max) {
    goto ldv_47792;
  } else {
  }
  ldv_47791:
  r = _zd_iowrite32v_async_locked(chip, ioreqs + (unsigned long )i, j);
  if (r != 0) {
    zd_usb_iowrite16v_async_end(& chip->usb, 0U);
    dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() error _zd_iowrite32v_locked. Error number %d\n",
               "zd_iowrite32a_locked", r);
    return (r);
  } else {
  }
  i = (j + t) + i;
  ldv_47796: ;
  if (i < count) {
    goto ldv_47795;
  } else {
  }
  tmp = zd_usb_iowrite16v_async_end(& chip->usb, 50U);
  return (tmp);
}
}
int zd_ioread16(struct zd_chip *chip , zd_addr_t addr , u16 *value )
{
  int r ;
  {
  mutex_lock_nested(& chip->mutex, 0U);
  r = zd_ioread16_locked(chip, value, (int )addr);
  mutex_unlock(& chip->mutex);
  return (r);
}
}
int zd_ioread32(struct zd_chip *chip , zd_addr_t addr , u32 *value )
{
  int r ;
  {
  mutex_lock_nested(& chip->mutex, 0U);
  r = zd_ioread32_locked(chip, value, (int )addr);
  mutex_unlock(& chip->mutex);
  return (r);
}
}
int zd_iowrite16(struct zd_chip *chip , zd_addr_t addr , u16 value )
{
  int r ;
  {
  mutex_lock_nested(& chip->mutex, 0U);
  r = zd_iowrite16_locked(chip, (int )value, (int )addr);
  mutex_unlock(& chip->mutex);
  return (r);
}
}
int zd_iowrite32(struct zd_chip *chip , zd_addr_t addr , u32 value )
{
  int r ;
  {
  mutex_lock_nested(& chip->mutex, 0U);
  r = zd_iowrite32_locked(chip, value, (int )addr);
  mutex_unlock(& chip->mutex);
  return (r);
}
}
int zd_ioread32v(struct zd_chip *chip , zd_addr_t const *addresses , u32 *values ,
                 unsigned int count )
{
  int r ;
  {
  mutex_lock_nested(& chip->mutex, 0U);
  r = zd_ioread32v_locked(chip, values, addresses, count);
  mutex_unlock(& chip->mutex);
  return (r);
}
}
int zd_iowrite32a(struct zd_chip *chip , struct zd_ioreq32 const *ioreqs , unsigned int count )
{
  int r ;
  {
  mutex_lock_nested(& chip->mutex, 0U);
  r = zd_iowrite32a_locked(chip, ioreqs, count);
  mutex_unlock(& chip->mutex);
  return (r);
}
}
static int read_pod(struct zd_chip *chip , u8 *rf_type )
{
  int r ;
  u32 value ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  char const *tmp___2 ;
  {
  tmp___0 = mutex_is_locked(& chip->mutex);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "read_pod";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 368U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared",
                         368, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  r = zd_ioread32_locked(chip, & value, 63513);
  if (r != 0) {
    goto error;
  } else {
  }
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() E2P_POD %#010x\n",
             "read_pod", value);
  *rf_type = (unsigned int )((u8 )value) & 15U;
  chip->pa_type = (unsigned int )((unsigned char )(value >> 16)) & 15U;
  chip->patch_cck_gain = (unsigned int )((unsigned char )(value >> 8)) & 1U;
  chip->patch_cr157 = (unsigned int )((unsigned char )(value >> 13)) & 1U;
  chip->patch_6m_band_edge = (unsigned int )((unsigned char )(value >> 21)) & 1U;
  chip->new_phy_layout = (unsigned char )(value >> 31);
  chip->al2230s_bit = (unsigned int )((unsigned char )(value >> 7)) & 1U;
  chip->link_led = (value & 16U) != 0U ? 256U : 512U;
  chip->supports_tx_led = 1U;
  if ((value & 16777216U) != 0U) {
    if ((value & 536870912U) != 0U) {
      chip->supports_tx_led = 0U;
    } else {
    }
  } else {
  }
  tmp___2 = zd_rf_name((int )*rf_type);
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() RF %s %#01x PA type %#01x patch CCK %d patch CR157 %d patch 6M %d new PHY %d link LED%d tx led %d\n",
             "read_pod", tmp___2, (int )*rf_type, (int )chip->pa_type, (int )chip->patch_cck_gain,
             (int )chip->patch_cr157, (int )chip->patch_6m_band_edge, (int )chip->new_phy_layout,
             (unsigned int )chip->link_led == 256U ? 1 : 2, (int )chip->supports_tx_led);
  return (0);
  error:
  *rf_type = 0U;
  chip->pa_type = 0U;
  chip->patch_cck_gain = 0U;
  chip->patch_cr157 = 0U;
  chip->patch_6m_band_edge = 0U;
  chip->new_phy_layout = 0U;
  return (r);
}
}
static int zd_write_mac_addr_common(struct zd_chip *chip , u8 const *mac_addr ,
                                    struct zd_ioreq32 const *in_reqs , char const *type )
{
  int r ;
  struct zd_ioreq32 reqs[2U] ;
  {
  reqs[0] = *in_reqs;
  reqs[1] = *(in_reqs + 1UL);
  if ((unsigned long )mac_addr != (unsigned long )((u8 const *)0U)) {
    reqs[0].value = (u32 )(((((int )*(mac_addr + 3UL) << 24) | ((int )*(mac_addr + 2UL) << 16)) | ((int )*(mac_addr + 1UL) << 8)) | (int )*mac_addr);
    reqs[1].value = (u32 )(((int )*(mac_addr + 5UL) << 8) | (int )*(mac_addr + 4UL));
    dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() %s addr %pM\n",
               "zd_write_mac_addr_common", type, mac_addr);
  } else {
    dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() set NULL %s\n",
               "zd_write_mac_addr_common", type);
  }
  mutex_lock_nested(& chip->mutex, 0U);
  r = zd_iowrite32a_locked(chip, (struct zd_ioreq32 const *)(& reqs), 2U);
  mutex_unlock(& chip->mutex);
  return (r);
}
}
int zd_write_mac_addr(struct zd_chip *chip , u8 const *mac_addr )
{
  struct zd_ioreq32 reqs[2U] ;
  int tmp ;
  {
  reqs[0].addr = 38416U;
  reqs[0].value = 0U;
  reqs[1].addr = 38420U;
  reqs[1].value = 0U;
  tmp = zd_write_mac_addr_common(chip, mac_addr, (struct zd_ioreq32 const *)(& reqs),
                                 "mac");
  return (tmp);
}
}
int zd_write_bssid(struct zd_chip *chip , u8 const *bssid )
{
  struct zd_ioreq32 reqs[2U] ;
  int tmp ;
  {
  reqs[0].addr = 38424U;
  reqs[0].value = 0U;
  reqs[1].addr = 38428U;
  reqs[1].value = 0U;
  tmp = zd_write_mac_addr_common(chip, bssid, (struct zd_ioreq32 const *)(& reqs),
                                 "bssid");
  return (tmp);
}
}
int zd_read_regdomain(struct zd_chip *chip , u8 *regdomain )
{
  int r ;
  u32 value ;
  {
  mutex_lock_nested(& chip->mutex, 0U);
  r = zd_ioread32_locked(chip, & value, 63511);
  mutex_unlock(& chip->mutex);
  if (r != 0) {
    return (r);
  } else {
  }
  *regdomain = (u8 )(value >> 16);
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() regdomain: %#04x\n",
             "zd_read_regdomain", (int )*regdomain);
  return (0);
}
}
static int read_values(struct zd_chip *chip , u8 *values , size_t count , zd_addr_t e2p_addr ,
                       u32 guard )
{
  int r ;
  int i ;
  u32 v ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  tmp___0 = mutex_is_locked(& chip->mutex);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "read_values";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 481U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared",
                         481, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  i = 0;
  ldv_47888:
  r = zd_ioread32_locked(chip, & v, (int )((unsigned short )(i / 2)) + (int )e2p_addr);
  if (r != 0) {
    return (r);
  } else {
  }
  v = v - guard;
  if ((size_t )(i + 4) < count) {
    tmp___2 = i;
    i = i + 1;
    *(values + (unsigned long )tmp___2) = (u8 )v;
    tmp___3 = i;
    i = i + 1;
    *(values + (unsigned long )tmp___3) = (u8 )(v >> 8);
    tmp___4 = i;
    i = i + 1;
    *(values + (unsigned long )tmp___4) = (u8 )(v >> 16);
    tmp___5 = i;
    i = i + 1;
    *(values + (unsigned long )tmp___5) = (u8 )(v >> 24);
    goto ldv_47884;
  } else {
  }
  goto ldv_47886;
  ldv_47885:
  *(values + (unsigned long )i) = (u8 )(v >> (i % 3) * 8);
  i = i + 1;
  ldv_47886: ;
  if ((size_t )i < count) {
    goto ldv_47885;
  } else {
  }
  return (0);
  ldv_47884: ;
  goto ldv_47888;
}
}
static int read_pwr_cal_values(struct zd_chip *chip )
{
  int tmp ;
  {
  tmp = read_values(chip, (u8 *)(& chip->pwr_cal_values), 14UL, 63519, 0U);
  return (tmp);
}
}
static int read_pwr_int_values(struct zd_chip *chip )
{
  int tmp ;
  {
  tmp = read_values(chip, (u8 *)(& chip->pwr_int_values), 14UL, 63527, 8U);
  return (tmp);
}
}
static int read_ofdm_cal_values(struct zd_chip *chip )
{
  int r ;
  int i ;
  zd_addr_t addresses[3U] ;
  {
  addresses[0] = 63551U;
  addresses[1] = 63567U;
  addresses[2] = 63583U;
  i = 0;
  goto ldv_47902;
  ldv_47901:
  r = read_values(chip, (u8 *)(& chip->ofdm_cal_values) + (unsigned long )i, 14UL,
                  (int )addresses[i], 0U);
  if (r != 0) {
    return (r);
  } else {
  }
  i = i + 1;
  ldv_47902: ;
  if (i <= 2) {
    goto ldv_47901;
  } else {
  }
  return (0);
}
}
static int read_cal_int_tables(struct zd_chip *chip )
{
  int r ;
  {
  r = read_pwr_cal_values(chip);
  if (r != 0) {
    return (r);
  } else {
  }
  r = read_pwr_int_values(chip);
  if (r != 0) {
    return (r);
  } else {
  }
  r = read_ofdm_cal_values(chip);
  if (r != 0) {
    return (r);
  } else {
  }
  return (0);
}
}
int zd_chip_lock_phy_regs(struct zd_chip *chip )
{
  int r ;
  u32 tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp___1 = mutex_is_locked(& chip->mutex);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_chip_lock_phy_regs";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 556U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared",
                         556, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  r = zd_ioread32_locked(chip, & tmp, 38528);
  if (r != 0) {
    dev_err((struct device const *)(& (chip->usb.intf)->dev), "error ioread32(CR_REG1): %d\n",
            r);
    return (r);
  } else {
  }
  tmp = tmp & 4294967167U;
  r = zd_iowrite32_locked(chip, tmp, 38528);
  if (r != 0) {
    dev_err((struct device const *)(& (chip->usb.intf)->dev), "error iowrite32(CR_REG1): %d\n",
            r);
  } else {
  }
  return (r);
}
}
int zd_chip_unlock_phy_regs(struct zd_chip *chip )
{
  int r ;
  u32 tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp___1 = mutex_is_locked(& chip->mutex);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_chip_unlock_phy_regs";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 576U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared",
                         576, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  r = zd_ioread32_locked(chip, & tmp, 38528);
  if (r != 0) {
    dev_err((struct device const *)(& (chip->usb.intf)->dev), "error ioread32(CR_REG1): %d\n",
            r);
    return (r);
  } else {
  }
  tmp = tmp | 128U;
  r = zd_iowrite32_locked(chip, tmp, 38528);
  if (r != 0) {
    dev_err((struct device const *)(& (chip->usb.intf)->dev), "error iowrite32(CR_REG1): %d\n",
            r);
  } else {
  }
  return (r);
}
}
static int patch_cr157(struct zd_chip *chip )
{
  int r ;
  u16 value ;
  int tmp ;
  {
  if ((unsigned int )*((unsigned char *)chip + 11594UL) == 0U) {
    return (0);
  } else {
  }
  r = zd_ioread16_locked(chip, & value, 63548);
  if (r != 0) {
    return (r);
  } else {
  }
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() patching value %x\n",
             "patch_cr157", (int )value >> 8);
  tmp = zd_iowrite32_locked(chip, (u32 )((int )value >> 8), 37492);
  return (tmp);
}
}
static int patch_6m_band_edge(struct zd_chip *chip , u8 channel )
{
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  tmp___0 = mutex_is_locked(& chip->mutex);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "patch_6m_band_edge";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 616U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared",
                         616, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  if ((unsigned int )*((unsigned char *)chip + 11594UL) == 0U) {
    return (0);
  } else {
  }
  tmp___2 = zd_rf_patch_6m_band_edge(& chip->rf, (int )channel);
  return (tmp___2);
}
}
int zd_chip_generic_patch_6m_band(struct zd_chip *chip , int channel )
{
  struct zd_ioreq16 ioreqs[4U] ;
  int tmp ;
  {
  ioreqs[0].addr = 37376U;
  ioreqs[0].value = 20U;
  ioreqs[1].addr = 37380U;
  ioreqs[1].value = 18U;
  ioreqs[2].addr = 37384U;
  ioreqs[2].value = 16U;
  ioreqs[3].addr = 37052U;
  ioreqs[3].value = 30U;
  if (channel == 1 || channel == 11) {
    ioreqs[0].value = 18U;
  } else {
  }
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() patching for channel %d\n",
             "zd_chip_generic_patch_6m_band", channel);
  tmp = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 4U);
  return (tmp);
}
}
static int zd1211_hw_reset_phy(struct zd_chip *chip )
{
  struct zd_ioreq16 ioreqs[177U] ;
  int r ;
  int t ;
  {
  ioreqs[0].addr = 36864U;
  ioreqs[0].value = 10U;
  ioreqs[1].addr = 36868U;
  ioreqs[1].value = 6U;
  ioreqs[2].addr = 36872U;
  ioreqs[2].value = 38U;
  ioreqs[3].addr = 36876U;
  ioreqs[3].value = 56U;
  ioreqs[4].addr = 36896U;
  ioreqs[4].value = 128U;
  ioreqs[5].addr = 36900U;
  ioreqs[5].value = 160U;
  ioreqs[6].addr = 36904U;
  ioreqs[6].value = 129U;
  ioreqs[7].addr = 36908U;
  ioreqs[7].value = 0U;
  ioreqs[8].addr = 36912U;
  ioreqs[8].value = 127U;
  ioreqs[9].addr = 36916U;
  ioreqs[9].value = 140U;
  ioreqs[10].addr = 36920U;
  ioreqs[10].value = 128U;
  ioreqs[11].addr = 36924U;
  ioreqs[11].value = 61U;
  ioreqs[12].addr = 36928U;
  ioreqs[12].value = 32U;
  ioreqs[13].addr = 36932U;
  ioreqs[13].value = 30U;
  ioreqs[14].addr = 36936U;
  ioreqs[14].value = 10U;
  ioreqs[15].addr = 36940U;
  ioreqs[15].value = 72U;
  ioreqs[16].addr = 36944U;
  ioreqs[16].value = 12U;
  ioreqs[17].addr = 36948U;
  ioreqs[17].value = 12U;
  ioreqs[18].addr = 36952U;
  ioreqs[18].value = 35U;
  ioreqs[19].addr = 36956U;
  ioreqs[19].value = 144U;
  ioreqs[20].addr = 36960U;
  ioreqs[20].value = 20U;
  ioreqs[21].addr = 36964U;
  ioreqs[21].value = 64U;
  ioreqs[22].addr = 36968U;
  ioreqs[22].value = 16U;
  ioreqs[23].addr = 36972U;
  ioreqs[23].value = 25U;
  ioreqs[24].addr = 36976U;
  ioreqs[24].value = 127U;
  ioreqs[25].addr = 36980U;
  ioreqs[25].value = 128U;
  ioreqs[26].addr = 36984U;
  ioreqs[26].value = 75U;
  ioreqs[27].addr = 36988U;
  ioreqs[27].value = 96U;
  ioreqs[28].addr = 36992U;
  ioreqs[28].value = 67U;
  ioreqs[29].addr = 36996U;
  ioreqs[29].value = 8U;
  ioreqs[30].addr = 37000U;
  ioreqs[30].value = 6U;
  ioreqs[31].addr = 37004U;
  ioreqs[31].value = 10U;
  ioreqs[32].addr = 37008U;
  ioreqs[32].value = 0U;
  ioreqs[33].addr = 37012U;
  ioreqs[33].value = 0U;
  ioreqs[34].addr = 37016U;
  ioreqs[34].value = 56U;
  ioreqs[35].addr = 37020U;
  ioreqs[35].value = 12U;
  ioreqs[36].addr = 37024U;
  ioreqs[36].value = 132U;
  ioreqs[37].addr = 37028U;
  ioreqs[37].value = 42U;
  ioreqs[38].addr = 37032U;
  ioreqs[38].value = 128U;
  ioreqs[39].addr = 37036U;
  ioreqs[39].value = 16U;
  ioreqs[40].addr = 37040U;
  ioreqs[40].value = 18U;
  ioreqs[41].addr = 37048U;
  ioreqs[41].value = 255U;
  ioreqs[42].addr = 37052U;
  ioreqs[42].value = 30U;
  ioreqs[43].addr = 37056U;
  ioreqs[43].value = 38U;
  ioreqs[44].addr = 37060U;
  ioreqs[44].value = 91U;
  ioreqs[45].addr = 37120U;
  ioreqs[45].value = 208U;
  ioreqs[46].addr = 37124U;
  ioreqs[46].value = 4U;
  ioreqs[47].addr = 37128U;
  ioreqs[47].value = 88U;
  ioreqs[48].addr = 37132U;
  ioreqs[48].value = 201U;
  ioreqs[49].addr = 37136U;
  ioreqs[49].value = 136U;
  ioreqs[50].addr = 37140U;
  ioreqs[50].value = 65U;
  ioreqs[51].addr = 37144U;
  ioreqs[51].value = 35U;
  ioreqs[52].addr = 37148U;
  ioreqs[52].value = 16U;
  ioreqs[53].addr = 37152U;
  ioreqs[53].value = 255U;
  ioreqs[54].addr = 37156U;
  ioreqs[54].value = 50U;
  ioreqs[55].addr = 37160U;
  ioreqs[55].value = 48U;
  ioreqs[56].addr = 37164U;
  ioreqs[56].value = 101U;
  ioreqs[57].addr = 37168U;
  ioreqs[57].value = 65U;
  ioreqs[58].addr = 37172U;
  ioreqs[58].value = 27U;
  ioreqs[59].addr = 37176U;
  ioreqs[59].value = 48U;
  ioreqs[60].addr = 37180U;
  ioreqs[60].value = 104U;
  ioreqs[61].addr = 37184U;
  ioreqs[61].value = 100U;
  ioreqs[62].addr = 37188U;
  ioreqs[62].value = 100U;
  ioreqs[63].addr = 37192U;
  ioreqs[63].value = 0U;
  ioreqs[64].addr = 37196U;
  ioreqs[64].value = 0U;
  ioreqs[65].addr = 37200U;
  ioreqs[65].value = 0U;
  ioreqs[66].addr = 37204U;
  ioreqs[66].value = 2U;
  ioreqs[67].addr = 37208U;
  ioreqs[67].value = 0U;
  ioreqs[68].addr = 37212U;
  ioreqs[68].value = 0U;
  ioreqs[69].addr = 37216U;
  ioreqs[69].value = 255U;
  ioreqs[70].addr = 37220U;
  ioreqs[70].value = 252U;
  ioreqs[71].addr = 37224U;
  ioreqs[71].value = 0U;
  ioreqs[72].addr = 37228U;
  ioreqs[72].value = 0U;
  ioreqs[73].addr = 37232U;
  ioreqs[73].value = 0U;
  ioreqs[74].addr = 37236U;
  ioreqs[74].value = 8U;
  ioreqs[75].addr = 37240U;
  ioreqs[75].value = 0U;
  ioreqs[76].addr = 37244U;
  ioreqs[76].value = 0U;
  ioreqs[77].addr = 37248U;
  ioreqs[77].value = 255U;
  ioreqs[78].addr = 37252U;
  ioreqs[78].value = 231U;
  ioreqs[79].addr = 37256U;
  ioreqs[79].value = 0U;
  ioreqs[80].addr = 37260U;
  ioreqs[80].value = 0U;
  ioreqs[81].addr = 37264U;
  ioreqs[81].value = 0U;
  ioreqs[82].addr = 37268U;
  ioreqs[82].value = 174U;
  ioreqs[83].addr = 37272U;
  ioreqs[83].value = 2U;
  ioreqs[84].addr = 37276U;
  ioreqs[84].value = 0U;
  ioreqs[85].addr = 37280U;
  ioreqs[85].value = 3U;
  ioreqs[86].addr = 37284U;
  ioreqs[86].value = 101U;
  ioreqs[87].addr = 37288U;
  ioreqs[87].value = 4U;
  ioreqs[88].addr = 37292U;
  ioreqs[88].value = 0U;
  ioreqs[89].addr = 37296U;
  ioreqs[89].value = 10U;
  ioreqs[90].addr = 37300U;
  ioreqs[90].value = 170U;
  ioreqs[91].addr = 37304U;
  ioreqs[91].value = 170U;
  ioreqs[92].addr = 37308U;
  ioreqs[92].value = 37U;
  ioreqs[93].addr = 37312U;
  ioreqs[93].value = 37U;
  ioreqs[94].addr = 37316U;
  ioreqs[94].value = 0U;
  ioreqs[95].addr = 37340U;
  ioreqs[95].value = 30U;
  ioreqs[96].addr = 37364U;
  ioreqs[96].value = 144U;
  ioreqs[97].addr = 37368U;
  ioreqs[97].value = 0U;
  ioreqs[98].addr = 37372U;
  ioreqs[98].value = 0U;
  ioreqs[99].addr = (unsigned short)0;
  ioreqs[99].value = (unsigned short)0;
  ioreqs[100].addr = 36880U;
  ioreqs[100].value = 0U;
  ioreqs[101].addr = 36884U;
  ioreqs[101].value = 0U;
  ioreqs[102].addr = 36888U;
  ioreqs[102].value = 0U;
  ioreqs[103].addr = 36892U;
  ioreqs[103].value = 0U;
  ioreqs[104].addr = 36900U;
  ioreqs[104].value = 32U;
  ioreqs[105].addr = 36912U;
  ioreqs[105].value = 240U;
  ioreqs[106].addr = 36944U;
  ioreqs[106].value = 14U;
  ioreqs[107].addr = 36948U;
  ioreqs[107].value = 14U;
  ioreqs[108].addr = 36972U;
  ioreqs[108].value = 16U;
  ioreqs[109].addr = 37040U;
  ioreqs[109].value = 51U;
  ioreqs[110].addr = 37052U;
  ioreqs[110].value = 30U;
  ioreqs[111].addr = 37196U;
  ioreqs[111].value = 36U;
  ioreqs[112].addr = 37200U;
  ioreqs[112].value = 4U;
  ioreqs[113].addr = 37204U;
  ioreqs[113].value = 0U;
  ioreqs[114].addr = 37208U;
  ioreqs[114].value = 12U;
  ioreqs[115].addr = 37212U;
  ioreqs[115].value = 18U;
  ioreqs[116].addr = 37216U;
  ioreqs[116].value = 12U;
  ioreqs[117].addr = 37220U;
  ioreqs[117].value = 0U;
  ioreqs[118].addr = 37224U;
  ioreqs[118].value = 16U;
  ioreqs[119].addr = 37228U;
  ioreqs[119].value = 8U;
  ioreqs[120].addr = 37236U;
  ioreqs[120].value = 0U;
  ioreqs[121].addr = 37240U;
  ioreqs[121].value = 1U;
  ioreqs[122].addr = 37244U;
  ioreqs[122].value = 0U;
  ioreqs[123].addr = 37248U;
  ioreqs[123].value = 80U;
  ioreqs[124].addr = 37252U;
  ioreqs[124].value = 55U;
  ioreqs[125].addr = 37256U;
  ioreqs[125].value = 53U;
  ioreqs[126].addr = 37268U;
  ioreqs[126].value = 19U;
  ioreqs[127].addr = 37272U;
  ioreqs[127].value = 39U;
  ioreqs[128].addr = 37276U;
  ioreqs[128].value = 39U;
  ioreqs[129].addr = 37280U;
  ioreqs[129].value = 24U;
  ioreqs[130].addr = 37284U;
  ioreqs[130].value = 18U;
  ioreqs[131].addr = 37300U;
  ioreqs[131].value = 39U;
  ioreqs[132].addr = 37304U;
  ioreqs[132].value = 39U;
  ioreqs[133].addr = 37308U;
  ioreqs[133].value = 39U;
  ioreqs[134].addr = 37312U;
  ioreqs[134].value = 39U;
  ioreqs[135].addr = 37316U;
  ioreqs[135].value = 39U;
  ioreqs[136].addr = 37320U;
  ioreqs[136].value = 39U;
  ioreqs[137].addr = 37324U;
  ioreqs[137].value = 38U;
  ioreqs[138].addr = 37328U;
  ioreqs[138].value = 36U;
  ioreqs[139].addr = 37332U;
  ioreqs[139].value = 252U;
  ioreqs[140].addr = 37336U;
  ioreqs[140].value = 250U;
  ioreqs[141].addr = 37344U;
  ioreqs[141].value = 79U;
  ioreqs[142].addr = 37364U;
  ioreqs[142].value = 170U;
  ioreqs[143].addr = 37372U;
  ioreqs[143].value = 3U;
  ioreqs[144].addr = 37376U;
  ioreqs[144].value = 20U;
  ioreqs[145].addr = 37380U;
  ioreqs[145].value = 18U;
  ioreqs[146].addr = 37384U;
  ioreqs[146].value = 16U;
  ioreqs[147].addr = 37388U;
  ioreqs[147].value = 12U;
  ioreqs[148].addr = 37408U;
  ioreqs[148].value = 223U;
  ioreqs[149].addr = 37412U;
  ioreqs[149].value = 64U;
  ioreqs[150].addr = 37416U;
  ioreqs[150].value = 160U;
  ioreqs[151].addr = 37420U;
  ioreqs[151].value = 176U;
  ioreqs[152].addr = 37424U;
  ioreqs[152].value = 153U;
  ioreqs[153].addr = 37428U;
  ioreqs[153].value = 130U;
  ioreqs[154].addr = 37432U;
  ioreqs[154].value = 84U;
  ioreqs[155].addr = 37436U;
  ioreqs[155].value = 28U;
  ioreqs[156].addr = 37440U;
  ioreqs[156].value = 108U;
  ioreqs[157].addr = 37452U;
  ioreqs[157].value = 7U;
  ioreqs[158].addr = 37456U;
  ioreqs[158].value = 76U;
  ioreqs[159].addr = 37460U;
  ioreqs[159].value = 80U;
  ioreqs[160].addr = 37464U;
  ioreqs[160].value = 14U;
  ioreqs[161].addr = 37468U;
  ioreqs[161].value = 24U;
  ioreqs[162].addr = 37504U;
  ioreqs[162].value = 254U;
  ioreqs[163].addr = 37508U;
  ioreqs[163].value = 238U;
  ioreqs[164].addr = 37512U;
  ioreqs[164].value = 170U;
  ioreqs[165].addr = 37516U;
  ioreqs[165].value = 250U;
  ioreqs[166].addr = 37520U;
  ioreqs[166].value = 250U;
  ioreqs[167].addr = 37524U;
  ioreqs[167].value = 234U;
  ioreqs[168].addr = 37528U;
  ioreqs[168].value = 190U;
  ioreqs[169].addr = 37532U;
  ioreqs[169].value = 190U;
  ioreqs[170].addr = 37536U;
  ioreqs[170].value = 106U;
  ioreqs[171].addr = 37540U;
  ioreqs[171].value = 186U;
  ioreqs[172].addr = 37544U;
  ioreqs[172].value = 186U;
  ioreqs[173].addr = 37548U;
  ioreqs[173].value = 186U;
  ioreqs[174].addr = 37680U;
  ioreqs[174].value = 125U;
  ioreqs[175].addr = (unsigned short)0;
  ioreqs[175].value = (unsigned short)0;
  ioreqs[176].addr = 37676U;
  ioreqs[176].value = 48U;
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() \n",
             "zd1211_hw_reset_phy");
  r = zd_chip_lock_phy_regs(chip);
  if (r != 0) {
    goto out;
  } else {
  }
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 177U);
  if (r != 0) {
    goto unlock;
  } else {
  }
  r = patch_cr157(chip);
  unlock:
  t = zd_chip_unlock_phy_regs(chip);
  if (t != 0 && r == 0) {
    r = t;
  } else {
  }
  out: ;
  return (r);
}
}
static int zd1211b_hw_reset_phy(struct zd_chip *chip )
{
  struct zd_ioreq16 ioreqs[138U] ;
  int r ;
  int t ;
  {
  ioreqs[0].addr = 36864U;
  ioreqs[0].value = 20U;
  ioreqs[1].addr = 36868U;
  ioreqs[1].value = 6U;
  ioreqs[2].addr = 36872U;
  ioreqs[2].value = 38U;
  ioreqs[3].addr = 36876U;
  ioreqs[3].value = 56U;
  ioreqs[4].addr = 36896U;
  ioreqs[4].value = 128U;
  ioreqs[5].addr = 36900U;
  ioreqs[5].value = 224U;
  ioreqs[6].addr = 36904U;
  ioreqs[6].value = 129U;
  ioreqs[7].addr = 36908U;
  ioreqs[7].value = 0U;
  ioreqs[8].addr = 36912U;
  ioreqs[8].value = 240U;
  ioreqs[9].addr = 36916U;
  ioreqs[9].value = 140U;
  ioreqs[10].addr = 36920U;
  ioreqs[10].value = 128U;
  ioreqs[11].addr = 36924U;
  ioreqs[11].value = 61U;
  ioreqs[12].addr = 36928U;
  ioreqs[12].value = 32U;
  ioreqs[13].addr = 36932U;
  ioreqs[13].value = 30U;
  ioreqs[14].addr = 36936U;
  ioreqs[14].value = 10U;
  ioreqs[15].addr = 36940U;
  ioreqs[15].value = 72U;
  ioreqs[16].addr = 36944U;
  ioreqs[16].value = 16U;
  ioreqs[17].addr = 36948U;
  ioreqs[17].value = 14U;
  ioreqs[18].addr = 36952U;
  ioreqs[18].value = 35U;
  ioreqs[19].addr = 36956U;
  ioreqs[19].value = 144U;
  ioreqs[20].addr = 36960U;
  ioreqs[20].value = 20U;
  ioreqs[21].addr = 36964U;
  ioreqs[21].value = 64U;
  ioreqs[22].addr = 36968U;
  ioreqs[22].value = 16U;
  ioreqs[23].addr = 36972U;
  ioreqs[23].value = 16U;
  ioreqs[24].addr = 36976U;
  ioreqs[24].value = 127U;
  ioreqs[25].addr = 36980U;
  ioreqs[25].value = 128U;
  ioreqs[26].addr = 36984U;
  ioreqs[26].value = 75U;
  ioreqs[27].addr = 36988U;
  ioreqs[27].value = 96U;
  ioreqs[28].addr = 36992U;
  ioreqs[28].value = 67U;
  ioreqs[29].addr = 36996U;
  ioreqs[29].value = 8U;
  ioreqs[30].addr = 37000U;
  ioreqs[30].value = 6U;
  ioreqs[31].addr = 37004U;
  ioreqs[31].value = 10U;
  ioreqs[32].addr = 37008U;
  ioreqs[32].value = 0U;
  ioreqs[33].addr = 37012U;
  ioreqs[33].value = 0U;
  ioreqs[34].addr = 37016U;
  ioreqs[34].value = 56U;
  ioreqs[35].addr = 37020U;
  ioreqs[35].value = 12U;
  ioreqs[36].addr = 37024U;
  ioreqs[36].value = 132U;
  ioreqs[37].addr = 37028U;
  ioreqs[37].value = 42U;
  ioreqs[38].addr = 37032U;
  ioreqs[38].value = 128U;
  ioreqs[39].addr = 37036U;
  ioreqs[39].value = 16U;
  ioreqs[40].addr = 37040U;
  ioreqs[40].value = 51U;
  ioreqs[41].addr = 37048U;
  ioreqs[41].value = 255U;
  ioreqs[42].addr = 37052U;
  ioreqs[42].value = 30U;
  ioreqs[43].addr = 37056U;
  ioreqs[43].value = 38U;
  ioreqs[44].addr = 37060U;
  ioreqs[44].value = 91U;
  ioreqs[45].addr = 37120U;
  ioreqs[45].value = 208U;
  ioreqs[46].addr = 37124U;
  ioreqs[46].value = 4U;
  ioreqs[47].addr = 37128U;
  ioreqs[47].value = 88U;
  ioreqs[48].addr = 37132U;
  ioreqs[48].value = 201U;
  ioreqs[49].addr = 37136U;
  ioreqs[49].value = 136U;
  ioreqs[50].addr = 37140U;
  ioreqs[50].value = 65U;
  ioreqs[51].addr = 37144U;
  ioreqs[51].value = 35U;
  ioreqs[52].addr = 37148U;
  ioreqs[52].value = 16U;
  ioreqs[53].addr = 37152U;
  ioreqs[53].value = 255U;
  ioreqs[54].addr = 37156U;
  ioreqs[54].value = 50U;
  ioreqs[55].addr = 37160U;
  ioreqs[55].value = 48U;
  ioreqs[56].addr = 37164U;
  ioreqs[56].value = 101U;
  ioreqs[57].addr = 37168U;
  ioreqs[57].value = 65U;
  ioreqs[58].addr = 37172U;
  ioreqs[58].value = 27U;
  ioreqs[59].addr = 37176U;
  ioreqs[59].value = 48U;
  ioreqs[60].addr = 37180U;
  ioreqs[60].value = 240U;
  ioreqs[61].addr = 37184U;
  ioreqs[61].value = 100U;
  ioreqs[62].addr = 37188U;
  ioreqs[62].value = 100U;
  ioreqs[63].addr = 37192U;
  ioreqs[63].value = 0U;
  ioreqs[64].addr = 37196U;
  ioreqs[64].value = 36U;
  ioreqs[65].addr = 37200U;
  ioreqs[65].value = 4U;
  ioreqs[66].addr = 37204U;
  ioreqs[66].value = 0U;
  ioreqs[67].addr = 37208U;
  ioreqs[67].value = 12U;
  ioreqs[68].addr = 37212U;
  ioreqs[68].value = 18U;
  ioreqs[69].addr = 37216U;
  ioreqs[69].value = 12U;
  ioreqs[70].addr = 37220U;
  ioreqs[70].value = 0U;
  ioreqs[71].addr = 37224U;
  ioreqs[71].value = 88U;
  ioreqs[72].addr = 37228U;
  ioreqs[72].value = 4U;
  ioreqs[73].addr = 37232U;
  ioreqs[73].value = 0U;
  ioreqs[74].addr = 37236U;
  ioreqs[74].value = 0U;
  ioreqs[75].addr = 37240U;
  ioreqs[75].value = 1U;
  ioreqs[76].addr = 37244U;
  ioreqs[76].value = 32U;
  ioreqs[77].addr = 37248U;
  ioreqs[77].value = 80U;
  ioreqs[78].addr = 37252U;
  ioreqs[78].value = 55U;
  ioreqs[79].addr = 37256U;
  ioreqs[79].value = 53U;
  ioreqs[80].addr = 37260U;
  ioreqs[80].value = 0U;
  ioreqs[81].addr = 37264U;
  ioreqs[81].value = 1U;
  ioreqs[82].addr = 37268U;
  ioreqs[82].value = 19U;
  ioreqs[83].addr = 37272U;
  ioreqs[83].value = 39U;
  ioreqs[84].addr = 37276U;
  ioreqs[84].value = 39U;
  ioreqs[85].addr = 37280U;
  ioreqs[85].value = 24U;
  ioreqs[86].addr = 37284U;
  ioreqs[86].value = 18U;
  ioreqs[87].addr = 37288U;
  ioreqs[87].value = 4U;
  ioreqs[88].addr = 37292U;
  ioreqs[88].value = 0U;
  ioreqs[89].addr = 37296U;
  ioreqs[89].value = 10U;
  ioreqs[90].addr = 37300U;
  ioreqs[90].value = 39U;
  ioreqs[91].addr = 37304U;
  ioreqs[91].value = 39U;
  ioreqs[92].addr = 37308U;
  ioreqs[92].value = 39U;
  ioreqs[93].addr = 37312U;
  ioreqs[93].value = 39U;
  ioreqs[94].addr = 37316U;
  ioreqs[94].value = 39U;
  ioreqs[95].addr = 37320U;
  ioreqs[95].value = 39U;
  ioreqs[96].addr = 37324U;
  ioreqs[96].value = 38U;
  ioreqs[97].addr = 37328U;
  ioreqs[97].value = 36U;
  ioreqs[98].addr = 37332U;
  ioreqs[98].value = 252U;
  ioreqs[99].addr = 37336U;
  ioreqs[99].value = 250U;
  ioreqs[100].addr = 37340U;
  ioreqs[100].value = 30U;
  ioreqs[101].addr = 37364U;
  ioreqs[101].value = 144U;
  ioreqs[102].addr = 37368U;
  ioreqs[102].value = 0U;
  ioreqs[103].addr = 37372U;
  ioreqs[103].value = 0U;
  ioreqs[104].addr = 37376U;
  ioreqs[104].value = 20U;
  ioreqs[105].addr = 37380U;
  ioreqs[105].value = 18U;
  ioreqs[106].addr = 37384U;
  ioreqs[106].value = 16U;
  ioreqs[107].addr = 37388U;
  ioreqs[107].value = 12U;
  ioreqs[108].addr = 37408U;
  ioreqs[108].value = 223U;
  ioreqs[109].addr = 37412U;
  ioreqs[109].value = 160U;
  ioreqs[110].addr = 37416U;
  ioreqs[110].value = 168U;
  ioreqs[111].addr = 37420U;
  ioreqs[111].value = 180U;
  ioreqs[112].addr = 37424U;
  ioreqs[112].value = 152U;
  ioreqs[113].addr = 37428U;
  ioreqs[113].value = 130U;
  ioreqs[114].addr = 37432U;
  ioreqs[114].value = 83U;
  ioreqs[115].addr = 37436U;
  ioreqs[115].value = 28U;
  ioreqs[116].addr = 37440U;
  ioreqs[116].value = 108U;
  ioreqs[117].addr = 37452U;
  ioreqs[117].value = 7U;
  ioreqs[118].addr = 37456U;
  ioreqs[118].value = 64U;
  ioreqs[119].addr = 37460U;
  ioreqs[119].value = 64U;
  ioreqs[120].addr = 37464U;
  ioreqs[120].value = 20U;
  ioreqs[121].addr = 37468U;
  ioreqs[121].value = 24U;
  ioreqs[122].addr = 37500U;
  ioreqs[122].value = 112U;
  ioreqs[123].addr = 37504U;
  ioreqs[123].value = 254U;
  ioreqs[124].addr = 37508U;
  ioreqs[124].value = 238U;
  ioreqs[125].addr = 37512U;
  ioreqs[125].value = 170U;
  ioreqs[126].addr = 37516U;
  ioreqs[126].value = 250U;
  ioreqs[127].addr = 37520U;
  ioreqs[127].value = 250U;
  ioreqs[128].addr = 37524U;
  ioreqs[128].value = 234U;
  ioreqs[129].addr = 37528U;
  ioreqs[129].value = 190U;
  ioreqs[130].addr = 37532U;
  ioreqs[130].value = 190U;
  ioreqs[131].addr = 37536U;
  ioreqs[131].value = 106U;
  ioreqs[132].addr = 37540U;
  ioreqs[132].value = 186U;
  ioreqs[133].addr = 37544U;
  ioreqs[133].value = 186U;
  ioreqs[134].addr = 37548U;
  ioreqs[134].value = 186U;
  ioreqs[135].addr = 37680U;
  ioreqs[135].value = 125U;
  ioreqs[136].addr = (unsigned short)0;
  ioreqs[136].value = (unsigned short)0;
  ioreqs[137].addr = 37676U;
  ioreqs[137].value = 48U;
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() \n",
             "zd1211b_hw_reset_phy");
  r = zd_chip_lock_phy_regs(chip);
  if (r != 0) {
    goto out;
  } else {
  }
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 138U);
  t = zd_chip_unlock_phy_regs(chip);
  if (t != 0 && r == 0) {
    r = t;
  } else {
  }
  out: ;
  return (r);
}
}
static int hw_reset_phy(struct zd_chip *chip )
{
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp___3 = zd_chip_is_zd1211b(chip);
  if (tmp___3 != 0) {
    tmp___0 = zd1211b_hw_reset_phy(chip);
    tmp___2 = tmp___0;
  } else {
    tmp___1 = zd1211_hw_reset_phy(chip);
    tmp___2 = tmp___1;
  }
  return (tmp___2);
}
}
static int zd1211_hw_init_hmac(struct zd_chip *chip )
{
  struct zd_ioreq32 ioreqs[2U] ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  ioreqs[0].addr = 38524U;
  ioreqs[0].value = 0U;
  ioreqs[1].addr = 38464U;
  ioreqs[1].value = 788032U;
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() \n",
             "zd1211_hw_init_hmac");
  tmp___0 = mutex_is_locked(& chip->mutex);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd1211_hw_init_hmac";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 820U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared",
                         820, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  tmp___2 = zd_iowrite32a_locked(chip, (struct zd_ioreq32 const *)(& ioreqs), 2U);
  return (tmp___2);
}
}
static int zd1211b_hw_init_hmac(struct zd_chip *chip )
{
  struct zd_ioreq32 ioreqs[9U] ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  ioreqs[0].addr = 39720U;
  ioreqs[0].value = 0U;
  ioreqs[1].addr = 39680U;
  ioreqs[1].value = 8323135U;
  ioreqs[2].addr = 39684U;
  ioreqs[2].value = 8323135U;
  ioreqs[3].addr = 39688U;
  ioreqs[3].value = 4128799U;
  ioreqs[4].addr = 39692U;
  ioreqs[4].value = 2031631U;
  ioreqs[5].addr = 39696U;
  ioreqs[5].value = 2621480U;
  ioreqs[6].addr = 39700U;
  ioreqs[6].value = 9175100U;
  ioreqs[7].addr = 39712U;
  ioreqs[7].value = 25167908U;
  ioreqs[8].addr = 38464U;
  ioreqs[8].value = 790271U;
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() \n",
             "zd1211b_hw_init_hmac");
  tmp___0 = mutex_is_locked(& chip->mutex);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd1211b_hw_init_hmac";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 839U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared",
                         839, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  tmp___2 = zd_iowrite32a_locked(chip, (struct zd_ioreq32 const *)(& ioreqs), 9U);
  return (tmp___2);
}
}
static int hw_init_hmac(struct zd_chip *chip )
{
  int r ;
  struct zd_ioreq32 ioreqs[20U] ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  ioreqs[0].addr = 38544U;
  ioreqs[0].value = 32U;
  ioreqs[1].addr = 38152U;
  ioreqs[1].value = 805308424U;
  ioreqs[2].addr = 38516U;
  ioreqs[2].value = 0U;
  ioreqs[3].addr = 38540U;
  ioreqs[3].value = 604045311U;
  ioreqs[4].addr = 38436U;
  ioreqs[4].value = 0U;
  ioreqs[5].addr = 38440U;
  ioreqs[5].value = 2147483648U;
  ioreqs[6].addr = 38528U;
  ioreqs[6].value = 164U;
  ioreqs[7].addr = 38148U;
  ioreqs[7].value = 127U;
  ioreqs[8].addr = 38432U;
  ioreqs[8].value = 15729665U;
  ioreqs[9].addr = 38508U;
  ioreqs[9].value = 0U;
  ioreqs[10].addr = 38544U;
  ioreqs[10].value = 128U;
  ioreqs[11].addr = 38148U;
  ioreqs[11].value = 0U;
  ioreqs[12].addr = 38488U;
  ioreqs[12].value = 256U;
  ioreqs[13].addr = 38012U;
  ioreqs[13].value = 112U;
  ioreqs[14].addr = 38144U;
  ioreqs[14].value = 268435456U;
  ioreqs[15].addr = 38456U;
  ioreqs[15].value = 33751555U;
  ioreqs[16].addr = 38472U;
  ioreqs[16].value = 1U;
  ioreqs[17].addr = 38460U;
  ioreqs[17].value = 276U;
  ioreqs[18].addr = 38552U;
  ioreqs[18].value = 172474418U;
  ioreqs[19].addr = 38656U;
  ioreqs[19].value = 3U;
  tmp___0 = mutex_is_locked(& chip->mutex);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "hw_init_hmac";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 869U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared",
                         869, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  r = zd_iowrite32a_locked(chip, (struct zd_ioreq32 const *)(& ioreqs), 20U);
  if (r != 0) {
    return (r);
  } else {
  }
  tmp___6 = zd_chip_is_zd1211b(chip);
  if (tmp___6 != 0) {
    tmp___3 = zd1211b_hw_init_hmac(chip);
    tmp___5 = tmp___3;
  } else {
    tmp___4 = zd1211_hw_init_hmac(chip);
    tmp___5 = tmp___4;
  }
  return (tmp___5);
}
}
static int get_aw_pt_bi(struct zd_chip *chip , struct aw_pt_bi *s )
{
  int r ;
  zd_addr_t aw_pt_bi_addr[3U] ;
  u32 values[3U] ;
  {
  aw_pt_bi_addr[0] = 38172U;
  aw_pt_bi_addr[1] = 38180U;
  aw_pt_bi_addr[2] = 38176U;
  r = zd_ioread32v_locked(chip, (u32 *)(& values), (zd_addr_t const *)(& aw_pt_bi_addr),
                          3U);
  if (r != 0) {
    memset((void *)s, 0, 12UL);
    return (r);
  } else {
  }
  s->atim_wnd_period = values[0];
  s->pre_tbtt = values[1];
  s->beacon_interval = values[2];
  return (0);
}
}
static int set_aw_pt_bi(struct zd_chip *chip , struct aw_pt_bi *s )
{
  struct zd_ioreq32 reqs[3U] ;
  u16 b_interval ;
  int tmp ;
  {
  b_interval = (u16 )s->beacon_interval;
  if ((unsigned int )b_interval <= 5U) {
    b_interval = 5U;
  } else {
  }
  if (s->pre_tbtt <= 3U || s->pre_tbtt >= (u32 )b_interval) {
    s->pre_tbtt = (u32 )((int )b_interval + -1);
  } else {
  }
  if (s->atim_wnd_period >= s->pre_tbtt) {
    s->atim_wnd_period = s->pre_tbtt - 1U;
  } else {
  }
  reqs[0].addr = 38172U;
  reqs[0].value = s->atim_wnd_period;
  reqs[1].addr = 38180U;
  reqs[1].value = s->pre_tbtt;
  reqs[2].addr = 38176U;
  reqs[2].value = (s->beacon_interval & 4294901760U) | (u32 )b_interval;
  tmp = zd_iowrite32a_locked(chip, (struct zd_ioreq32 const *)(& reqs), 3U);
  return (tmp);
}
}
static int set_beacon_interval(struct zd_chip *chip , u16 interval , u8 dtim_period ,
                               int type )
{
  int r ;
  struct aw_pt_bi s ;
  u32 b_interval ;
  u32 mode_flag ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  tmp___0 = mutex_is_locked(& chip->mutex);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "set_beacon_interval";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 934U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared",
                         934, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  if ((unsigned int )interval != 0U) {
    switch (type) {
    case 1: ;
    case 7:
    mode_flag = 33554432U;
    goto ldv_48026;
    case 3:
    mode_flag = 16777216U;
    goto ldv_48026;
    default:
    mode_flag = 0U;
    goto ldv_48026;
    }
    ldv_48026: ;
  } else {
    dtim_period = 0U;
    mode_flag = 0U;
  }
  b_interval = ((u32 )((int )dtim_period << 16) | mode_flag) | (u32 )interval;
  r = zd_iowrite32_locked(chip, b_interval, 38176);
  if (r != 0) {
    return (r);
  } else {
  }
  r = get_aw_pt_bi(chip, & s);
  if (r != 0) {
    return (r);
  } else {
  }
  tmp___2 = set_aw_pt_bi(chip, & s);
  return (tmp___2);
}
}
int zd_set_beacon_interval(struct zd_chip *chip , u16 interval , u8 dtim_period ,
                           int type )
{
  int r ;
  {
  mutex_lock_nested(& chip->mutex, 0U);
  r = set_beacon_interval(chip, (int )interval, (int )dtim_period, type);
  mutex_unlock(& chip->mutex);
  return (r);
}
}
static int hw_init(struct zd_chip *chip )
{
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() \n",
             "hw_init");
  tmp___0 = mutex_is_locked(& chip->mutex);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "hw_init";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 981U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared",
                         981, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  r = hw_reset_phy(chip);
  if (r != 0) {
    return (r);
  } else {
  }
  r = hw_init_hmac(chip);
  if (r != 0) {
    return (r);
  } else {
  }
  tmp___2 = set_beacon_interval(chip, 100, 0, 0);
  return (tmp___2);
}
}
static zd_addr_t fw_reg_addr(struct zd_chip *chip , u16 offset )
{
  {
  return ((zd_addr_t )((int )chip->fw_regs_base + (int )offset));
}
}
static int dump_cr(struct zd_chip *chip , zd_addr_t const addr , char const *addr_string )
{
  int r ;
  u32 value ;
  {
  r = zd_ioread32_locked(chip, & value, (int )addr);
  if (r != 0) {
    dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() error reading %s. Error number %d\n",
               "dump_cr", addr_string, r);
    return (r);
  } else {
  }
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() %s %#010x\n",
             "dump_cr", addr_string, value);
  return (0);
}
}
static int test_init(struct zd_chip *chip )
{
  int r ;
  int tmp ;
  {
  r = dump_cr(chip, 38472, "CR_AFTER_PNP");
  if (r != 0) {
    return (r);
  } else {
  }
  r = dump_cr(chip, 37912, "CR_GPI_EN");
  if (r != 0) {
    return (r);
  } else {
  }
  tmp = dump_cr(chip, 38160, "CR_INTERRUPT");
  return (tmp);
}
}
static void dump_fw_registers(struct zd_chip *chip )
{
  zd_addr_t addr[4U] ;
  zd_addr_t tmp ;
  zd_addr_t tmp___0 ;
  zd_addr_t tmp___1 ;
  zd_addr_t tmp___2 ;
  int r ;
  u16 values[4U] ;
  {
  tmp = fw_reg_addr(chip, 0);
  tmp___0 = fw_reg_addr(chip, 1);
  tmp___1 = fw_reg_addr(chip, 2);
  tmp___2 = fw_reg_addr(chip, 3);
  addr[0] = tmp;
  addr[1] = tmp___0;
  addr[2] = tmp___1;
  addr[3] = tmp___2;
  r = zd_ioread16v_locked(chip, (u16 *)(& values), (zd_addr_t const *)(& addr),
                          4U);
  if (r != 0) {
    dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() error %d zd_ioread16v_locked\n",
               "dump_fw_registers", r);
    return;
  } else {
  }
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() FW_FIRMWARE_VER %#06hx\n",
             "dump_fw_registers", (int )values[0]);
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() FW_USB_SPEED %#06hx\n",
             "dump_fw_registers", (int )values[1]);
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() FW_FIX_TX_RATE %#06hx\n",
             "dump_fw_registers", (int )values[2]);
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() FW_LINK_STATUS %#06hx\n",
             "dump_fw_registers", (int )values[3]);
  return;
}
}
static int print_fw_version(struct zd_chip *chip )
{
  struct wiphy *wiphy ;
  struct zd_mac *tmp ;
  int r ;
  u16 version ;
  zd_addr_t tmp___0 ;
  {
  tmp = zd_chip_to_mac(chip);
  wiphy = (tmp->hw)->wiphy;
  tmp___0 = fw_reg_addr(chip, 0);
  r = zd_ioread16_locked(chip, & version, (int )tmp___0);
  if (r != 0) {
    return (r);
  } else {
  }
  _dev_info((struct device const *)(& (chip->usb.intf)->dev), "firmware version %04hx\n",
            (int )version);
  snprintf((char *)(& wiphy->fw_version), 32UL, "%04hx", (int )version);
  return (0);
}
}
static int set_mandatory_rates(struct zd_chip *chip , int gmode )
{
  u32 rates ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  tmp___0 = mutex_is_locked(& chip->mutex);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "set_mandatory_rates";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 1079U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared",
                         1079, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  if (gmode == 0) {
    rates = 15U;
  } else {
    rates = 5391U;
  }
  tmp___2 = zd_iowrite32_locked(chip, rates, 38452);
  return (tmp___2);
}
}
int zd_chip_set_rts_cts_rate_locked(struct zd_chip *chip , int preamble )
{
  u32 value ;
  int tmp ;
  {
  value = 0U;
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() preamble=%x\n",
             "zd_chip_set_rts_cts_rate_locked", preamble);
  value = (u32 )(preamble << 9) | value;
  value = (u32 )(preamble << 25) | value;
  value = value | 3U;
  value = value;
  value = value | 196608U;
  value = value;
  tmp = zd_iowrite32_locked(chip, value, 38456);
  return (tmp);
}
}
int zd_chip_enable_hwint(struct zd_chip *chip )
{
  int r ;
  {
  mutex_lock_nested(& chip->mutex, 0U);
  r = zd_iowrite32_locked(chip, 5177344U, 38160);
  mutex_unlock(& chip->mutex);
  return (r);
}
}
static int disable_hwint(struct zd_chip *chip )
{
  int tmp ;
  {
  tmp = zd_iowrite32_locked(chip, 0U, 38160);
  return (tmp);
}
}
int zd_chip_disable_hwint(struct zd_chip *chip )
{
  int r ;
  {
  mutex_lock_nested(& chip->mutex, 0U);
  r = disable_hwint(chip);
  mutex_unlock(& chip->mutex);
  return (r);
}
}
static int read_fw_regs_offset(struct zd_chip *chip )
{
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp___0 = mutex_is_locked(& chip->mutex);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "read_fw_regs_offset";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 1140U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared",
                         1140, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  r = zd_ioread16_locked(chip, & chip->fw_regs_base, 60957);
  if (r != 0) {
    return (r);
  } else {
  }
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() fw_regs_base: %#06hx\n",
             "read_fw_regs_offset", (int )chip->fw_regs_base);
  return (0);
}
}
int zd_chip_read_mac_addr_fw(struct zd_chip *chip , u8 *addr )
{
  int tmp ;
  {
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() \n",
             "zd_chip_read_mac_addr_fw");
  tmp = zd_usb_read_fw(& chip->usb, 63515, addr, 6);
  return (tmp);
}
}
int zd_chip_init_hw(struct zd_chip *chip )
{
  int r ;
  u8 rf_type ;
  {
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() \n",
             "zd_chip_init_hw");
  mutex_lock_nested(& chip->mutex, 0U);
  r = test_init(chip);
  if (r != 0) {
    goto out;
  } else {
  }
  r = zd_iowrite32_locked(chip, 1U, 38472);
  if (r != 0) {
    goto out;
  } else {
  }
  r = read_fw_regs_offset(chip);
  if (r != 0) {
    goto out;
  } else {
  }
  r = zd_iowrite32_locked(chip, 0U, 37912);
  if (r != 0) {
    goto out;
  } else {
  }
  r = zd_iowrite32_locked(chip, 8324159U, 38640);
  if (r != 0) {
    goto out;
  } else {
  }
  r = set_mandatory_rates(chip, 1);
  if (r != 0) {
    goto out;
  } else {
  }
  r = disable_hwint(chip);
  if (r != 0) {
    goto out;
  } else {
  }
  r = read_pod(chip, & rf_type);
  if (r != 0) {
    goto out;
  } else {
  }
  r = hw_init(chip);
  if (r != 0) {
    goto out;
  } else {
  }
  r = zd_rf_init_hw(& chip->rf, (int )rf_type);
  if (r != 0) {
    goto out;
  } else {
  }
  r = print_fw_version(chip);
  if (r != 0) {
    goto out;
  } else {
  }
  dump_fw_registers(chip);
  r = test_init(chip);
  if (r != 0) {
    goto out;
  } else {
  }
  r = read_cal_int_tables(chip);
  if (r != 0) {
    goto out;
  } else {
  }
  print_id(chip);
  out:
  mutex_unlock(& chip->mutex);
  return (r);
}
}
static int update_pwr_int(struct zd_chip *chip , u8 channel )
{
  u8 value ;
  int tmp ;
  {
  value = chip->pwr_int_values[(int )channel + -1];
  tmp = zd_iowrite16_locked(chip, (int )value, 36988);
  return (tmp);
}
}
static int update_pwr_cal(struct zd_chip *chip , u8 channel )
{
  u8 value ;
  int tmp ;
  {
  value = chip->pwr_cal_values[(int )channel + -1];
  tmp = zd_iowrite16_locked(chip, (int )value, 37136);
  return (tmp);
}
}
static int update_ofdm_cal(struct zd_chip *chip , u8 channel )
{
  struct zd_ioreq16 ioreqs[3U] ;
  int tmp ;
  {
  ioreqs[0].addr = 37132U;
  ioreqs[0].value = (u16 )chip->ofdm_cal_values[0][(int )channel + -1];
  ioreqs[1].addr = 37128U;
  ioreqs[1].value = (u16 )chip->ofdm_cal_values[1][(int )channel + -1];
  ioreqs[2].addr = 37124U;
  ioreqs[2].value = (u16 )chip->ofdm_cal_values[2][(int )channel + -1];
  tmp = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 3U);
  return (tmp);
}
}
static int update_channel_integration_and_calibration(struct zd_chip *chip , u8 channel )
{
  int r ;
  int tmp ;
  struct zd_ioreq16 ioreqs[3U] ;
  int tmp___0 ;
  {
  tmp = zd_rf_should_update_pwr_int(& chip->rf);
  if (tmp == 0) {
    return (0);
  } else {
  }
  r = update_pwr_int(chip, (int )channel);
  if (r != 0) {
    return (r);
  } else {
  }
  tmp___0 = zd_chip_is_zd1211b(chip);
  if (tmp___0 != 0) {
    ioreqs[0].addr = 37140U;
    ioreqs[0].value = 40U;
    ioreqs[1].addr = (unsigned short)0;
    ioreqs[1].value = (unsigned short)0;
    ioreqs[2].addr = 37140U;
    ioreqs[2].value = 42U;
    r = update_ofdm_cal(chip, (int )channel);
    if (r != 0) {
      return (r);
    } else {
    }
    r = update_pwr_cal(chip, (int )channel);
    if (r != 0) {
      return (r);
    } else {
    }
    r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 3U);
    if (r != 0) {
      return (r);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int patch_cck_gain(struct zd_chip *chip )
{
  int r ;
  u32 value ;
  int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  {
  if ((unsigned int )*((unsigned char *)chip + 11594UL) == 0U) {
    return (0);
  } else {
    tmp = zd_rf_should_patch_cck_gain(& chip->rf);
    if (tmp == 0) {
      return (0);
    } else {
    }
  }
  tmp___1 = mutex_is_locked(& chip->mutex);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "patch_cck_gain";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 1299U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared",
                         1299, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  r = zd_ioread32_locked(chip, & value, 63548);
  if (r != 0) {
    return (r);
  } else {
  }
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() patching value %x\n",
             "patch_cck_gain", value & 255U);
  tmp___3 = zd_iowrite16_locked(chip, (int )((u16 )value) & 255, 37052);
  return (tmp___3);
}
}
int zd_chip_set_channel(struct zd_chip *chip , u8 channel )
{
  int r ;
  int t ;
  {
  mutex_lock_nested(& chip->mutex, 0U);
  r = zd_chip_lock_phy_regs(chip);
  if (r != 0) {
    goto out;
  } else {
  }
  r = zd_rf_set_channel(& chip->rf, (int )channel);
  if (r != 0) {
    goto unlock;
  } else {
  }
  r = update_channel_integration_and_calibration(chip, (int )channel);
  if (r != 0) {
    goto unlock;
  } else {
  }
  r = patch_cck_gain(chip);
  if (r != 0) {
    goto unlock;
  } else {
  }
  r = patch_6m_band_edge(chip, (int )channel);
  if (r != 0) {
    goto unlock;
  } else {
  }
  r = zd_iowrite32_locked(chip, 0U, 37952);
  unlock:
  t = zd_chip_unlock_phy_regs(chip);
  if (t != 0 && r == 0) {
    r = t;
  } else {
  }
  out:
  mutex_unlock(& chip->mutex);
  return (r);
}
}
u8 zd_chip_get_channel(struct zd_chip *chip )
{
  u8 channel ;
  {
  mutex_lock_nested(& chip->mutex, 0U);
  channel = chip->rf.channel;
  mutex_unlock(& chip->mutex);
  return (channel);
}
}
int zd_chip_control_leds(struct zd_chip *chip , enum led_status status )
{
  zd_addr_t a[2U] ;
  zd_addr_t tmp ;
  int r ;
  u16 v[2U] ;
  struct zd_ioreq16 ioreqs[2U] ;
  zd_addr_t tmp___0 ;
  u16 other_led ;
  unsigned long tmp___1 ;
  {
  tmp = fw_reg_addr(chip, 3);
  a[0] = tmp;
  a[1] = 38468U;
  tmp___0 = fw_reg_addr(chip, 3);
  ioreqs[0].addr = tmp___0;
  ioreqs[0].value = (unsigned short)0;
  ioreqs[1].addr = 38468U;
  ioreqs[1].value = (unsigned short)0;
  mutex_lock_nested(& chip->mutex, 0U);
  r = zd_ioread16v_locked(chip, (u16 *)(& v), (zd_addr_t const *)(& a), 2U);
  if (r != 0) {
    goto out;
  } else {
  }
  other_led = (unsigned int )chip->link_led == 256U ? 512U : 256U;
  switch ((unsigned int )status) {
  case 0U:
  ioreqs[0].value = 0U;
  ioreqs[1].value = (unsigned int )v[1] & 64767U;
  goto ldv_48176;
  case 1U:
  ioreqs[0].value = 0U;
  ioreqs[1].value = (u16 )((int )((short )v[1]) & ~ ((int )((short )other_led)));
  tmp___1 = get_seconds();
  if (tmp___1 % 3UL == 0UL) {
    ioreqs[1].value = (u16 )((int )((short )ioreqs[1].value) & ~ ((int )((short )chip->link_led)));
  } else {
    ioreqs[1].value = (u16 )((int )ioreqs[1].value | (int )chip->link_led);
  }
  goto ldv_48176;
  case 2U:
  ioreqs[0].value = 1U;
  ioreqs[1].value = (u16 )((int )((short )v[1]) & ~ ((int )((short )other_led)));
  ioreqs[1].value = (u16 )((int )ioreqs[1].value | (int )chip->link_led);
  goto ldv_48176;
  default:
  r = -22;
  goto out;
  }
  ldv_48176: ;
  if ((int )v[0] != (int )ioreqs[0].value || (int )v[1] != (int )ioreqs[1].value) {
    r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 2U);
    if (r != 0) {
      goto out;
    } else {
    }
  } else {
  }
  r = 0;
  out:
  mutex_unlock(& chip->mutex);
  return (r);
}
}
int zd_chip_set_basic_rates(struct zd_chip *chip , u16 cr_rates )
{
  int r ;
  {
  if (((int )cr_rates & -65296) != 0) {
    return (-22);
  } else {
  }
  mutex_lock_nested(& chip->mutex, 0U);
  r = zd_iowrite32_locked(chip, (u32 )cr_rates, 38448);
  mutex_unlock(& chip->mutex);
  return (r);
}
}
__inline static u8 zd_rate_from_ofdm_plcp_header(void const *rx_frame )
{
  u8 tmp ;
  {
  tmp = zd_ofdm_plcp_header_rate((struct ofdm_plcp_header const *)rx_frame);
  return ((u8 )((unsigned int )tmp | 16U));
}
}
u8 zd_rx_rate(void const *rx_frame , struct rx_status const *status )
{
  u8 zd_rate ;
  u8 tmp ;
  {
  if ((int )status->frame_status & 1) {
    zd_rate = zd_rate_from_ofdm_plcp_header(rx_frame);
  } else {
    tmp = zd_cck_plcp_header_signal((struct cck_plcp_header const *)rx_frame);
    switch ((int )tmp) {
    case 10:
    zd_rate = 0U;
    goto ldv_48196;
    case 20:
    zd_rate = 1U;
    goto ldv_48196;
    case 55:
    zd_rate = 2U;
    goto ldv_48196;
    case 110:
    zd_rate = 3U;
    goto ldv_48196;
    default:
    zd_rate = 0U;
    }
    ldv_48196: ;
  }
  return (zd_rate);
}
}
int zd_chip_switch_radio_on(struct zd_chip *chip )
{
  int r ;
  {
  mutex_lock_nested(& chip->mutex, 0U);
  r = zd_switch_radio_on(& chip->rf);
  mutex_unlock(& chip->mutex);
  return (r);
}
}
int zd_chip_switch_radio_off(struct zd_chip *chip )
{
  int r ;
  {
  mutex_lock_nested(& chip->mutex, 0U);
  r = zd_switch_radio_off(& chip->rf);
  mutex_unlock(& chip->mutex);
  return (r);
}
}
int zd_chip_enable_int(struct zd_chip *chip )
{
  int r ;
  {
  mutex_lock_nested(& chip->mutex, 0U);
  r = zd_usb_enable_int(& chip->usb);
  mutex_unlock(& chip->mutex);
  return (r);
}
}
void zd_chip_disable_int(struct zd_chip *chip )
{
  struct zd_mac *tmp ;
  {
  mutex_lock_nested(& chip->mutex, 0U);
  zd_usb_disable_int(& chip->usb);
  mutex_unlock(& chip->mutex);
  tmp = zd_chip_to_mac(chip);
  cancel_work_sync(& tmp->process_intr);
  return;
}
}
int zd_chip_enable_rxtx(struct zd_chip *chip )
{
  int r ;
  {
  mutex_lock_nested(& chip->mutex, 0U);
  zd_usb_enable_tx(& chip->usb);
  r = zd_usb_enable_rx(& chip->usb);
  zd_tx_watchdog_enable(& chip->usb);
  mutex_unlock(& chip->mutex);
  return (r);
}
}
void zd_chip_disable_rxtx(struct zd_chip *chip )
{
  {
  mutex_lock_nested(& chip->mutex, 0U);
  zd_tx_watchdog_disable(& chip->usb);
  zd_usb_disable_rx(& chip->usb);
  zd_usb_disable_tx(& chip->usb);
  mutex_unlock(& chip->mutex);
  return;
}
}
int zd_rfwritev_locked(struct zd_chip *chip , u32 const *values , unsigned int count ,
                       u8 bits )
{
  int r ;
  unsigned int i ;
  {
  i = 0U;
  goto ldv_48232;
  ldv_48231:
  r = zd_rfwrite_locked(chip, *(values + (unsigned long )i), (int )bits);
  if (r != 0) {
    return (r);
  } else {
  }
  i = i + 1U;
  ldv_48232: ;
  if (i < count) {
    goto ldv_48231;
  } else {
  }
  return (0);
}
}
int zd_rfwrite_cr_locked(struct zd_chip *chip , u32 value )
{
  struct zd_ioreq16 ioreqs[3U] ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  ioreqs[0].addr = 37840U;
  ioreqs[0].value = (unsigned int )((unsigned short )(value >> 16)) & 255U;
  ioreqs[1].addr = 37836U;
  ioreqs[1].value = (unsigned int )((unsigned short )(value >> 8)) & 255U;
  ioreqs[2].addr = 37832U;
  ioreqs[2].value = (unsigned int )((unsigned short )value) & 255U;
  tmp___0 = mutex_is_locked(& chip->mutex);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_rfwrite_cr_locked";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 1544U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_chip.o.c.prepared",
                         1544, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  tmp___2 = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 3U);
  return (tmp___2);
}
}
int zd_rfwritev_cr_locked(struct zd_chip *chip , u32 const *values , unsigned int count )
{
  int r ;
  unsigned int i ;
  {
  i = 0U;
  goto ldv_48251;
  ldv_48250:
  r = zd_rfwrite_cr_locked(chip, *(values + (unsigned long )i));
  if (r != 0) {
    return (r);
  } else {
  }
  i = i + 1U;
  ldv_48251: ;
  if (i < count) {
    goto ldv_48250;
  } else {
  }
  return (0);
}
}
int zd_chip_set_multicast_hash(struct zd_chip *chip , struct zd_mc_hash *hash )
{
  struct zd_ioreq32 ioreqs[2U] ;
  int tmp ;
  {
  ioreqs[0].addr = 38436U;
  ioreqs[0].value = hash->low;
  ioreqs[1].addr = 38440U;
  ioreqs[1].value = hash->high;
  tmp = zd_iowrite32a(chip, (struct zd_ioreq32 const *)(& ioreqs), 2U);
  return (tmp);
}
}
u64 zd_chip_get_tsf(struct zd_chip *chip )
{
  int r ;
  zd_addr_t aw_pt_bi_addr[2U] ;
  u32 values[2U] ;
  u64 tsf ;
  {
  aw_pt_bi_addr[0] = 38164U;
  aw_pt_bi_addr[1] = 38168U;
  mutex_lock_nested(& chip->mutex, 0U);
  r = zd_ioread32v_locked(chip, (u32 *)(& values), (zd_addr_t const *)(& aw_pt_bi_addr),
                          2U);
  mutex_unlock(& chip->mutex);
  if (r != 0) {
    return (0ULL);
  } else {
  }
  tsf = (u64 )values[1];
  tsf = (tsf << 32) | (u64 )values[0];
  return (tsf);
}
}
void ldv_consume_skb_5(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_6(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_7(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_8(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_11(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
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
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
__inline static __u16 __le16_to_cpup(__le16 const *p )
{
  {
  return ((__u16 )*p);
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
extern void warn_slowpath_null(char const * , int const ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
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
    ldv_4822: ;
    goto ldv_4822;
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
__inline static int arch_spin_is_locked(arch_spinlock_t *lock )
{
  struct __raw_tickets tmp ;
  {
  tmp = *((struct __raw_tickets volatile *)(& lock->ldv_1452.tickets));
  return ((int )tmp.tail != (int )tmp.head);
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6338.rlock);
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->ldv_6338.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->ldv_6338.rlock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6338.rlock, flags);
  return;
}
}
__inline static int spin_is_locked(spinlock_t *lock )
{
  int tmp ;
  {
  tmp = arch_spin_is_locked(& lock->ldv_6338.rlock.raw_lock);
  return (tmp);
}
}
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern unsigned long round_jiffies_relative(unsigned long ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
extern void flush_workqueue(struct workqueue_struct * ) ;
extern bool cancel_delayed_work_sync(struct delayed_work * ) ;
__inline static bool queue_delayed_work(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                        unsigned long delay )
{
  bool tmp ;
  {
  tmp = queue_delayed_work_on(8192, wq, dwork, delay);
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
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
extern int dev_warn(struct device const * , char const * , ...) ;
void ldv_kfree_skb_17(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_18(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_19(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_22(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_25(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_26(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_27(struct sk_buff *ldv_func_arg1 ) ;
void ldv_consume_skb_16(struct sk_buff *ldv_func_arg1 ) ;
__inline static bool skb_queue_is_first(struct sk_buff_head const *list , struct sk_buff const *skb )
{
  {
  return ((unsigned long )((struct sk_buff const *)skb->prev) == (unsigned long )((struct sk_buff const *)list));
}
}
__inline static __u32 skb_queue_len(struct sk_buff_head const *list_ )
{
  {
  return ((__u32 )list_->qlen);
}
}
__inline static void __skb_queue_head_init(struct sk_buff_head *list )
{
  struct sk_buff *tmp ;
  {
  tmp = (struct sk_buff *)list;
  list->next = tmp;
  list->prev = tmp;
  list->qlen = 0U;
  return;
}
}
__inline static void skb_queue_head_init(struct sk_buff_head *list )
{
  struct lock_class_key __key ;
  {
  spinlock_check(& list->lock);
  __raw_spin_lock_init(& list->lock.ldv_6338.rlock, "&(&list->lock)->rlock", & __key);
  __skb_queue_head_init(list);
  return;
}
}
extern void skb_queue_tail(struct sk_buff_head * , struct sk_buff * ) ;
extern struct sk_buff *skb_dequeue(struct sk_buff_head * ) ;
struct sk_buff *ldv_skb_dequeue_23(struct sk_buff_head *ldv_func_arg1 ) ;
__inline static struct sk_buff *ldv___skb_dequeue_24(struct sk_buff_head *list ) ;
__inline static struct sk_buff *ldv___skb_dequeue_24(struct sk_buff_head *list ) ;
__inline static struct sk_buff *ldv___skb_dequeue_24(struct sk_buff_head *list ) ;
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
extern unsigned char *skb_push(struct sk_buff * , unsigned int ) ;
extern unsigned char *skb_pull(struct sk_buff * , unsigned int ) ;
__inline static void skb_reserve(struct sk_buff *skb , int len )
{
  {
  skb->data = skb->data + (unsigned long )len;
  skb->tail = skb->tail + (sk_buff_data_t )len;
  return;
}
}
__inline static struct sk_buff *ldv_dev_alloc_skb_30(unsigned int length ) ;
extern struct sk_buff___0 *ldv_skb_alloc(void) ;
extern u32 __VERIFIER_nondet_u32(void) ;
extern unsigned int __VERIFIER_nondet_uint(void) ;
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
struct ieee80211_vif *zd_ops_group1 ;
int ldv_state_variable_2 ;
int ref_cnt ;
struct ieee80211_hw *zd_ops_group0 ;
void ldv_initialize_ieee80211_ops_2(void) ;
extern void msleep(unsigned int ) ;
extern void __dev_kfree_skb_any(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_any(struct sk_buff *skb )
{
  {
  __dev_kfree_skb_any(skb, 1);
  return;
}
}
__inline static u16 get_unaligned_le16(void const *p )
{
  __u16 tmp ;
  {
  tmp = __le16_to_cpup((__le16 const *)p);
  return (tmp);
}
}
__inline static bool is_zero_ether_addr(u8 const *addr )
{
  {
  return (((unsigned int )*((u32 const *)addr) | (unsigned int )*((u16 const *)addr + 4U)) == 0U);
}
}
__inline static bool is_multicast_ether_addr(u8 const *addr )
{
  {
  return (((int )*addr & 1) != 0);
}
}
__inline static bool is_valid_ether_addr(u8 const *addr )
{
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = is_multicast_ether_addr(addr);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    tmp___1 = is_zero_ether_addr(addr);
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      tmp___3 = 1;
    } else {
      tmp___3 = 0;
    }
  } else {
    tmp___3 = 0;
  }
  return ((bool )tmp___3);
}
}
__inline static bool ether_addr_equal(u8 const *addr1 , u8 const *addr2 )
{
  u32 fold ;
  {
  fold = ((unsigned int )*((u32 const *)addr1) ^ (unsigned int )*((u32 const *)addr2)) | (unsigned int )((int )((unsigned short )*((u16 const *)addr1 + 4U)) ^ (int )((unsigned short )*((u16 const *)addr2 + 4U)));
  return (fold == 0U);
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
extern void usb_queue_reset_device(struct usb_interface * ) ;
__inline static int ieee80211_has_a4(__le16 fc )
{
  __le16 tmp ;
  {
  tmp = 768U;
  return (((int )fc & (int )tmp) == (int )tmp);
}
}
__inline static int ieee80211_is_data_qos(__le16 fc )
{
  {
  return (((int )fc & 140) == 136);
}
}
__inline static int ieee80211_is_pspoll(__le16 fc )
{
  {
  return (((int )fc & 252) == 164);
}
}
__inline static int ieee80211_is_ack(__le16 fc )
{
  {
  return (((int )fc & 252) == 212);
}
}
__inline static void set_wiphy_dev(struct wiphy *wiphy , struct device *dev )
{
  {
  wiphy->dev.parent = dev;
  return;
}
}
extern int regulatory_hint(struct wiphy * , char const * ) ;
__inline static struct ieee80211_tx_info *IEEE80211_SKB_CB(struct sk_buff *skb )
{
  {
  return ((struct ieee80211_tx_info *)(& skb->cb));
}
}
__inline static struct ieee80211_rx_status *IEEE80211_SKB_RXCB(struct sk_buff *skb )
{
  {
  return ((struct ieee80211_rx_status *)(& skb->cb));
}
}
__inline static void ieee80211_tx_info_clear_status(struct ieee80211_tx_info *info )
{
  int i ;
  {
  i = 0;
  goto ldv_46107;
  ldv_46106:
  info->ldv_46091.status.rates[i].count = 0U;
  i = i + 1;
  ldv_46107: ;
  if (i <= 3) {
    goto ldv_46106;
  } else {
  }
  memset((void *)(& info->ldv_46091.status.ampdu_ack_len), 0, 24UL);
  return;
}
}
__inline static void SET_IEEE80211_DEV(struct ieee80211_hw *hw , struct device *dev )
{
  {
  set_wiphy_dev(hw->wiphy, dev);
  return;
}
}
__inline static void SET_IEEE80211_PERM_ADDR(struct ieee80211_hw *hw , u8 *addr )
{
  size_t __len ;
  void *__ret ;
  {
  __len = 6UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& (hw->wiphy)->perm_addr), (void const *)addr, __len);
  } else {
    __ret = memcpy((void *)(& (hw->wiphy)->perm_addr), (void const *)addr,
                             __len);
  }
  return;
}
}
__inline static struct ieee80211_rate *ieee80211_get_tx_rate(struct ieee80211_hw const *hw ,
                                                             struct ieee80211_tx_info const *c )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  __ret_warn_once = (int )((signed char )c->ldv_46091.control.ldv_46071.ldv_46069.rates[0].idx) < 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/net/mac80211.h", 1807);
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
    return ((struct ieee80211_rate *)0);
  } else {
  }
  return (((hw->wiphy)->bands[(int )c->band])->bitrates + (unsigned long )c->ldv_46091.control.ldv_46071.ldv_46069.rates[0].idx);
}
}
extern struct ieee80211_hw *ieee80211_alloc_hw(size_t , struct ieee80211_ops const * ) ;
extern void ieee80211_rx_irqsafe(struct ieee80211_hw * , struct sk_buff * ) ;
extern void ieee80211_tx_status_irqsafe(struct ieee80211_hw * , struct sk_buff * ) ;
extern struct sk_buff *ieee80211_beacon_get_tim(struct ieee80211_hw * , struct ieee80211_vif * ,
                                                u16 * , u16 * ) ;
__inline static struct sk_buff *ieee80211_beacon_get(struct ieee80211_hw *hw , struct ieee80211_vif *vif )
{
  struct sk_buff *tmp ;
  {
  tmp = ieee80211_beacon_get_tim(hw, vif, (u16 *)0U, (u16 *)0U);
  return (tmp);
}
}
extern struct sk_buff *ieee80211_get_buffered_bc(struct ieee80211_hw * , struct ieee80211_vif * ) ;
extern int ieee80211_queue_stopped(struct ieee80211_hw * , int ) ;
__inline static struct ieee80211_hw *zd_intf_to_hw(struct usb_interface *intf )
{
  void *tmp ;
  {
  tmp = usb_get_intfdata(intf);
  return ((struct ieee80211_hw *)tmp);
}
}
__inline static struct ieee80211_hw *zd_usb_to_hw(struct zd_usb *usb )
{
  struct ieee80211_hw *tmp ;
  {
  tmp = zd_intf_to_hw(usb->intf);
  return (tmp);
}
}
int zd_usb_init_hw(struct zd_usb *usb ) ;
int zd_usb_tx(struct zd_usb *usb , struct sk_buff *skb ) ;
struct workqueue_struct *zd_workqueue ;
__inline static u8 _zd_chip_get_channel(struct zd_chip *chip )
{
  {
  return (chip->rf.channel);
}
}
__inline static int zd_set_encryption_type(struct zd_chip *chip , u32 type )
{
  int tmp ;
  {
  tmp = zd_iowrite32(chip, 38520, type);
  return (tmp);
}
}
__inline static void zd_mc_clear(struct zd_mc_hash *hash )
{
  {
  hash->low = 0U;
  hash->high = 2147483648U;
  return;
}
}
__inline static void zd_mc_add_all(struct zd_mc_hash *hash )
{
  u32 tmp ;
  {
  tmp = 4294967295U;
  hash->high = tmp;
  hash->low = tmp;
  return;
}
}
__inline static void zd_mc_add_addr(struct zd_mc_hash *hash , u8 *addr )
{
  unsigned int i ;
  {
  i = (unsigned int )((int )*(addr + 5UL) >> 2);
  if (i <= 31U) {
    hash->low = hash->low | (u32 )(1 << (int )i);
  } else {
    hash->high = hash->high | (u32 )(1 << (int )(i - 32U));
  }
  return;
}
}
__inline static struct zd_mac *zd_hw_mac(struct ieee80211_hw *hw )
{
  {
  return ((struct zd_mac *)hw->priv);
}
}
struct ieee80211_hw *zd_mac_alloc_hw(struct usb_interface *intf ) ;
void zd_mac_clear(struct zd_mac *mac ) ;
int zd_mac_preinit_hw(struct ieee80211_hw *hw ) ;
int zd_mac_init_hw(struct ieee80211_hw *hw ) ;
int zd_mac_rx(struct ieee80211_hw *hw , u8 const *buffer , unsigned int length ) ;
void zd_mac_tx_failed(struct urb *urb ) ;
void zd_mac_tx_to_dev(struct sk_buff *skb , int error ) ;
int zd_op_start(struct ieee80211_hw *hw ) ;
void zd_op_stop(struct ieee80211_hw *hw ) ;
int zd_restore_settings(struct zd_mac *mac ) ;
static struct zd_reg_alpha2_map reg_alpha2_map[8U] =
  { {16U, {'U', 'S'}},
        {32U, {'C', 'A'}},
        {48U, {'D', 'E'}},
        {65U, {'J', 'P'}},
        {64U, {'J', 'P'}},
        {73U, {'J', 'P'}},
        {49U, {'E', 'S'}},
        {50U, {'F', 'R'}}};
static struct ieee80211_rate const zd_rates[12U] =
  { {0U, 10U, 0U, (unsigned short)0},
        {1U, 20U, 1U, 33U},
        {1U, 55U, 2U, 34U},
        {1U, 110U, 3U, 35U},
        {0U, 60U, 27U, (unsigned short)0},
        {0U, 90U, 31U, (unsigned short)0},
        {0U, 120U, 26U, (unsigned short)0},
        {0U, 180U, 30U, (unsigned short)0},
        {0U, 240U, 25U, (unsigned short)0},
        {0U, 360U, 29U, (unsigned short)0},
        {0U, 480U, 24U, (unsigned short)0},
        {0U, 540U, 28U, (unsigned short)0}};
static struct tx_retry_rate const zd_retry_rates[12U] =
  { {1, {0}},
        {2, {1, 0}},
        {3, {2, 1, 0}},
        {4, {3, 2, 1, 0}},
        {5, {4, 3, 2, 1, 0}},
        {6, {5, 4, 3, 2, 1, 0}},
        {5, {6, 3, 2, 1, 0}},
        {6, {7, 6, 3, 2, 1, 0}},
        {6, {8, 6, 3, 2, 1, 0}},
        {7, {9, 8, 6, 3, 2, 1, 0}},
        {8, {10, 9, 8, 6, 3, 2, 1, 0}},
        {9, {11, 10, 9, 8, 6, 3, 2, 1, 0}}};
static struct ieee80211_channel const zd_channels[14U] =
  { {0, 2412U, 1U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2417U, 2U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2422U, 3U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2427U, 4U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2432U, 5U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2437U, 6U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2442U, 7U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2447U, 8U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2452U, 9U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2457U, 10U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2462U, 11U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2467U, 12U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2472U, 13U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2484U, 14U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U}};
static void housekeeping_init(struct zd_mac *mac ) ;
static void housekeeping_enable(struct zd_mac *mac ) ;
static void housekeeping_disable(struct zd_mac *mac ) ;
static void beacon_init(struct zd_mac *mac ) ;
static void beacon_enable(struct zd_mac *mac ) ;
static void beacon_disable(struct zd_mac *mac ) ;
static void set_rts_cts(struct zd_mac *mac , unsigned int short_preamble ) ;
static int zd_mac_config_beacon(struct ieee80211_hw *hw , struct sk_buff *beacon ,
                                bool in_intr ) ;
static int zd_reg2alpha2(u8 regdomain , char *alpha2 )
{
  unsigned int i ;
  struct zd_reg_alpha2_map *reg_map ;
  {
  i = 0U;
  goto ldv_47921;
  ldv_47920:
  reg_map = (struct zd_reg_alpha2_map *)(& reg_alpha2_map) + (unsigned long )i;
  if ((u32 )regdomain == reg_map->reg) {
    *alpha2 = reg_map->alpha2[0];
    *(alpha2 + 1UL) = reg_map->alpha2[1];
    return (0);
  } else {
  }
  i = i + 1U;
  ldv_47921: ;
  if (i <= 7U) {
    goto ldv_47920;
  } else {
  }
  return (1);
}
}
static int zd_check_signal(struct ieee80211_hw *hw , int signal )
{
  struct zd_mac *mac ;
  struct zd_mac *tmp ;
  bool __cond ;
  long tmp___0 ;
  {
  tmp = zd_hw_mac(hw);
  mac = tmp;
  __cond = (bool )(signal < 0 || signal > 100);
  tmp___0 = ldv__builtin_expect((long )__cond, 0L);
  if (tmp___0 != 0L) {
    dev_printk("\017", (struct device const *)(& (mac->chip.usb.intf)->dev), "%s() %s: signal value from device not in range 0..100, but %d.\n",
               "zd_check_signal", "zd_check_signal", signal);
  } else {
  }
  if (signal < 0) {
    signal = 0;
  } else
  if (signal > 100) {
    signal = 100;
  } else {
  }
  return (signal);
}
}
int zd_mac_preinit_hw(struct ieee80211_hw *hw )
{
  int r ;
  u8 addr[6U] ;
  struct zd_mac *mac ;
  struct zd_mac *tmp ;
  {
  tmp = zd_hw_mac(hw);
  mac = tmp;
  r = zd_chip_read_mac_addr_fw(& mac->chip, (u8 *)(& addr));
  if (r != 0) {
    return (r);
  } else {
  }
  SET_IEEE80211_PERM_ADDR(hw, (u8 *)(& addr));
  return (0);
}
}
int zd_mac_init_hw(struct ieee80211_hw *hw )
{
  int r ;
  struct zd_mac *mac ;
  struct zd_mac *tmp ;
  struct zd_chip *chip ;
  char alpha2[2U] ;
  u8 default_regdomain ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  unsigned long _flags ;
  int tmp___1 ;
  long tmp___2 ;
  u8 tmp___3 ;
  {
  tmp = zd_hw_mac(hw);
  mac = tmp;
  chip = & mac->chip;
  r = zd_chip_enable_int(chip);
  if (r != 0) {
    goto out;
  } else {
  }
  r = zd_chip_init_hw(chip);
  if (r != 0) {
    goto disable_int;
  } else {
  }
  _flags = arch_local_save_flags();
  tmp___1 = arch_irqs_disabled_flags(_flags);
  tmp___2 = ldv__builtin_expect(tmp___1 != 0, 0L);
  if (tmp___2 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_mac_init_hw";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_mac.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 241U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_mac.o.c.prepared",
                         241, (char *)"!({ unsigned long _flags; do { ({ unsigned long __dummy; typeof(_flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); _flags = arch_local_save_flags(); } while (0); ({ ({ unsigned long __dummy; typeof(_flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); arch_irqs_disabled_flags(_flags); }); })");
    } else {
    }
    dump_stack();
  } else {
  }
  r = zd_read_regdomain(chip, & default_regdomain);
  if (r != 0) {
    goto disable_int;
  } else {
  }
  spin_lock_irq(& mac->lock);
  tmp___3 = default_regdomain;
  mac->default_regdomain = tmp___3;
  mac->regdomain = tmp___3;
  spin_unlock_irq(& mac->lock);
  r = zd_set_encryption_type(chip, 8U);
  if (r != 0) {
    goto disable_int;
  } else {
  }
  r = zd_reg2alpha2((int )mac->regdomain, (char *)(& alpha2));
  if (r != 0) {
    goto disable_int;
  } else {
  }
  r = regulatory_hint(hw->wiphy, (char const *)(& alpha2));
  disable_int:
  zd_chip_disable_int(chip);
  out: ;
  return (r);
}
}
void zd_mac_clear(struct zd_mac *mac )
{
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  flush_workqueue(zd_workqueue);
  zd_chip_clear(& mac->chip);
  tmp___0 = spin_is_locked(& mac->lock);
  tmp___1 = ldv__builtin_expect(tmp___0 != 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_mac_clear";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_mac.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 271U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_mac.o.c.prepared",
                         271, (char *)"!spin_is_locked(&mac->lock)");
    } else {
    }
    dump_stack();
  } else {
  }
  memset((void *)mac, 255, 13704UL);
  return;
}
}
static int set_rx_filter(struct zd_mac *mac )
{
  unsigned long flags ;
  u32 filter ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  {
  filter = 604045311U;
  tmp = spinlock_check(& mac->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned int )*((unsigned char *)mac + 13696UL) != 0U) {
    filter = filter | 3623878656U;
  } else {
  }
  spin_unlock_irqrestore(& mac->lock, flags);
  tmp___0 = zd_iowrite32(& mac->chip, 38540, filter);
  return (tmp___0);
}
}
static int set_mac_and_bssid(struct zd_mac *mac )
{
  int r ;
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )mac->vif == (unsigned long )((struct ieee80211_vif *)0)) {
    return (-1);
  } else {
  }
  r = zd_write_mac_addr(& mac->chip, (u8 const *)(& (mac->vif)->addr));
  if (r != 0) {
    return (r);
  } else {
  }
  if (mac->type != 3) {
    tmp = set_rx_filter(mac);
    return (tmp);
  } else {
    tmp___0 = zd_write_bssid(& mac->chip, (u8 const *)(& (mac->vif)->addr));
    return (tmp___0);
  }
}
}
static int set_mc_hash(struct zd_mac *mac )
{
  struct zd_mc_hash hash ;
  int tmp ;
  {
  zd_mc_clear(& hash);
  tmp = zd_chip_set_multicast_hash(& mac->chip, & hash);
  return (tmp);
}
}
int zd_op_start(struct ieee80211_hw *hw )
{
  struct zd_mac *mac ;
  struct zd_mac *tmp ;
  struct zd_chip *chip ;
  struct zd_usb *usb ;
  int r ;
  {
  tmp = zd_hw_mac(hw);
  mac = tmp;
  chip = & mac->chip;
  usb = & chip->usb;
  if ((unsigned int )*((unsigned char *)usb + 11284UL) == 0U) {
    r = zd_usb_init_hw(usb);
    if (r != 0) {
      goto out;
    } else {
    }
  } else {
  }
  r = zd_chip_enable_int(chip);
  if (r < 0) {
    goto out;
  } else {
  }
  r = zd_chip_set_basic_rates(chip, 65295);
  if (r < 0) {
    goto disable_int;
  } else {
  }
  r = set_rx_filter(mac);
  if (r != 0) {
    goto disable_int;
  } else {
  }
  r = set_mc_hash(mac);
  if (r != 0) {
    goto disable_int;
  } else {
  }
  msleep(10U);
  r = zd_chip_switch_radio_on(chip);
  if (r < 0) {
    dev_err((struct device const *)(& (chip->usb.intf)->dev), "%s: failed to set radio on\n",
            "zd_op_start");
    goto disable_int;
  } else {
  }
  r = zd_chip_enable_rxtx(chip);
  if (r < 0) {
    goto disable_radio;
  } else {
  }
  r = zd_chip_enable_hwint(chip);
  if (r < 0) {
    goto disable_rxtx;
  } else {
  }
  housekeeping_enable(mac);
  beacon_enable(mac);
  set_bit(0L, (unsigned long volatile *)(& mac->flags));
  return (0);
  disable_rxtx:
  zd_chip_disable_rxtx(chip);
  disable_radio:
  zd_chip_switch_radio_off(chip);
  disable_int:
  zd_chip_disable_int(chip);
  out: ;
  return (r);
}
}
void zd_op_stop(struct ieee80211_hw *hw )
{
  struct zd_mac *mac ;
  struct zd_mac *tmp ;
  struct zd_chip *chip ;
  struct sk_buff *skb ;
  struct sk_buff_head *ack_wait_queue ;
  {
  tmp = zd_hw_mac(hw);
  mac = tmp;
  chip = & mac->chip;
  ack_wait_queue = & mac->ack_wait_queue;
  clear_bit(0L, (unsigned long volatile *)(& mac->flags));
  zd_chip_disable_rxtx(chip);
  beacon_disable(mac);
  housekeeping_disable(mac);
  flush_workqueue(zd_workqueue);
  zd_chip_disable_hwint(chip);
  zd_chip_switch_radio_off(chip);
  zd_chip_disable_int(chip);
  goto ldv_47998;
  ldv_47997:
  dev_kfree_skb_any(skb);
  ldv_47998:
  skb = ldv_skb_dequeue_23(ack_wait_queue);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_47997;
  } else {
  }
  return;
}
}
int zd_restore_settings(struct zd_mac *mac )
{
  struct sk_buff *beacon ;
  struct zd_mc_hash multicast_hash ;
  unsigned int short_preamble ;
  int r ;
  int beacon_interval ;
  int beacon_period ;
  u8 channel ;
  {
  dev_printk("\017", (struct device const *)(& (mac->chip.usb.intf)->dev), "%s() \n",
             "zd_restore_settings");
  spin_lock_irq(& mac->lock);
  multicast_hash = mac->multicast_hash;
  short_preamble = (unsigned int )mac->short_preamble;
  beacon_interval = (int )mac->beacon.interval;
  beacon_period = (int )mac->beacon.period;
  channel = mac->channel;
  spin_unlock_irq(& mac->lock);
  r = set_mac_and_bssid(mac);
  if (r < 0) {
    dev_printk("\017", (struct device const *)(& (mac->chip.usb.intf)->dev), "%s() set_mac_and_bssid failed, %d\n",
               "zd_restore_settings", r);
    return (r);
  } else {
  }
  r = zd_chip_set_channel(& mac->chip, (int )channel);
  if (r < 0) {
    dev_printk("\017", (struct device const *)(& (mac->chip.usb.intf)->dev), "%s() zd_chip_set_channel failed, %d\n",
               "zd_restore_settings", r);
    return (r);
  } else {
  }
  set_rts_cts(mac, short_preamble);
  r = zd_chip_set_multicast_hash(& mac->chip, & multicast_hash);
  if (r < 0) {
    dev_printk("\017", (struct device const *)(& (mac->chip.usb.intf)->dev), "%s() zd_chip_set_multicast_hash failed, %d\n",
               "zd_restore_settings", r);
    return (r);
  } else {
  }
  if ((mac->type == 7 || mac->type == 1) || mac->type == 3) {
    if ((unsigned long )mac->vif != (unsigned long )((struct ieee80211_vif *)0)) {
      beacon = ieee80211_beacon_get(mac->hw, mac->vif);
      if ((unsigned long )beacon != (unsigned long )((struct sk_buff *)0)) {
        zd_mac_config_beacon(mac->hw, beacon, 0);
      } else {
      }
    } else {
    }
    zd_set_beacon_interval(& mac->chip, (int )((u16 )beacon_interval), (int )((u8 )beacon_period),
                           mac->type);
    spin_lock_irq(& mac->lock);
    mac->beacon.last_update = jiffies;
    spin_unlock_irq(& mac->lock);
  } else {
  }
  return (0);
}
}
static void zd_mac_tx_status(struct ieee80211_hw *hw , struct sk_buff *skb , int ackssi ,
                             struct tx_status *tx_status )
{
  struct ieee80211_tx_info *info ;
  struct ieee80211_tx_info *tmp ;
  int i ;
  int success ;
  int retry ;
  int first_idx ;
  struct tx_retry_rate const *retries ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  {
  tmp = IEEE80211_SKB_CB(skb);
  info = tmp;
  success = 1;
  retry = 1;
  ieee80211_tx_info_clear_status(info);
  if ((unsigned long )tx_status != (unsigned long )((struct tx_status *)0)) {
    success = (unsigned int )tx_status->failure == 0U;
    retry = (int )tx_status->retry + success;
  } else {
  }
  if (success != 0) {
    info->flags = info->flags | 512U;
  } else {
    info->flags = info->flags & 4294966783U;
  }
  first_idx = (int )info->ldv_46091.status.rates[0].idx;
  tmp___1 = ldv__builtin_expect(first_idx < 0, 0L);
  if (tmp___1 != 0L) {
    goto _L;
  } else {
    tmp___2 = ldv__builtin_expect((unsigned int )first_idx > 11U, 0L);
    if (tmp___2 != 0L) {
      _L:
      descriptor.modname = "zd1211rw";
      descriptor.function = "zd_mac_tx_status";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_mac.o.c.prepared";
      descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
      descriptor.lineno = 502U;
      descriptor.flags = 1U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_mac.o.c.prepared",
                           502, (char *)"0<=first_idx && first_idx<(sizeof(zd_retry_rates) / sizeof((zd_retry_rates)[0]) + (sizeof(struct { int:-!!(__builtin_types_compatible_p(typeof((zd_retry_rates)), typeof(&(zd_retry_rates)[0]))); })))");
      } else {
      }
      dump_stack();
    } else {
    }
  }
  retries = (struct tx_retry_rate const *)(& zd_retry_rates) + (unsigned long )first_idx;
  tmp___4 = ldv__builtin_expect(retry <= 0, 0L);
  if (tmp___4 != 0L) {
    goto _L___0;
  } else {
    tmp___5 = ldv__builtin_expect((int )retries->count < retry, 0L);
    if (tmp___5 != 0L) {
      _L___0:
      descriptor___0.modname = "zd1211rw";
      descriptor___0.function = "zd_mac_tx_status";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_mac.o.c.prepared";
      descriptor___0.format = "%s:%d ASSERT %s VIOLATED!\n";
      descriptor___0.lineno = 504U;
      descriptor___0.flags = 1U;
      tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        __dynamic_pr_debug(& descriptor___0, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_mac.o.c.prepared",
                           504, (char *)"1 <= retry && retry <= retries->count");
      } else {
      }
      dump_stack();
    } else {
    }
  }
  info->ldv_46091.status.rates[0].idx = (s8 )retries->rate[0];
  info->ldv_46091.status.rates[0].count = 1U;
  i = 1;
  goto ldv_48029;
  ldv_48028:
  info->ldv_46091.status.rates[i].idx = (s8 )retries->rate[i];
  info->ldv_46091.status.rates[i].count = 1U;
  i = i + 1;
  ldv_48029: ;
  if (i <= 2 && i < retry) {
    goto ldv_48028;
  } else {
  }
  goto ldv_48032;
  ldv_48031:
  info->ldv_46091.status.rates[i].idx = (s8 )retries->rate[retry + -1];
  info->ldv_46091.status.rates[i].count = 1U;
  i = i + 1;
  ldv_48032: ;
  if (i <= 3 && i < retry) {
    goto ldv_48031;
  } else {
  }
  if (i <= 3) {
    info->ldv_46091.status.rates[i].idx = -1;
  } else {
  }
  info->ldv_46091.status.ack_signal = zd_check_signal(hw, ackssi);
  ieee80211_tx_status_irqsafe(hw, skb);
  return;
}
}
void zd_mac_tx_failed(struct urb *urb )
{
  struct ieee80211_hw *hw ;
  struct ieee80211_hw *tmp ;
  struct zd_mac *mac ;
  struct zd_mac *tmp___0 ;
  struct sk_buff_head *q ;
  struct sk_buff *skb ;
  struct tx_status *tx_status ;
  unsigned long flags ;
  int success ;
  int retry ;
  int found ;
  int i ;
  int position ;
  raw_spinlock_t *tmp___1 ;
  struct ieee80211_hdr *tx_hdr ;
  struct ieee80211_tx_info *info ;
  int first_idx ;
  int final_idx ;
  struct tx_retry_rate const *retries ;
  u8 final_rate ;
  bool tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  {
  tmp = zd_usb_to_hw((struct zd_usb *)urb->context);
  hw = tmp;
  tmp___0 = zd_hw_mac(hw);
  mac = tmp___0;
  q = & mac->ack_wait_queue;
  tx_status = (struct tx_status *)urb->transfer_buffer;
  success = (unsigned int )tx_status->failure == 0U;
  retry = (int )tx_status->retry + success;
  found = 0;
  position = 0;
  q = & mac->ack_wait_queue;
  tmp___1 = spinlock_check(& q->lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  skb = q->next;
  goto ldv_48064;
  ldv_48063:
  position = position + 1;
  if ((unsigned int )tx_status->failure != 0U && (unsigned int )*((unsigned char *)mac + 13696UL) != 0U) {
    tmp___2 = skb_queue_is_first((struct sk_buff_head const *)q, (struct sk_buff const *)skb);
    if ((int )tmp___2) {
      goto ldv_48057;
    } else {
    }
  } else {
  }
  tx_hdr = (struct ieee80211_hdr *)skb->data;
  tmp___3 = ether_addr_equal((u8 const *)(& tx_hdr->addr1), (u8 const *)(& tx_status->mac));
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  tmp___5 = ldv__builtin_expect((long )tmp___4, 0L);
  if (tmp___5 != 0L) {
    goto ldv_48057;
  } else {
  }
  info = IEEE80211_SKB_CB(skb);
  first_idx = (int )info->ldv_46091.status.rates[0].idx;
  tmp___7 = ldv__builtin_expect(first_idx < 0, 0L);
  if (tmp___7 != 0L) {
    goto _L;
  } else {
    tmp___8 = ldv__builtin_expect((unsigned int )first_idx > 11U, 0L);
    if (tmp___8 != 0L) {
      _L:
      descriptor.modname = "zd1211rw";
      descriptor.function = "zd_mac_tx_failed";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_mac.o.c.prepared";
      descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
      descriptor.lineno = 575U;
      descriptor.flags = 1U;
      tmp___6 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___6 != 0L) {
        __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_mac.o.c.prepared",
                           575, (char *)"0<=first_idx && first_idx<(sizeof(zd_retry_rates) / sizeof((zd_retry_rates)[0]) + (sizeof(struct { int:-!!(__builtin_types_compatible_p(typeof((zd_retry_rates)), typeof(&(zd_retry_rates)[0]))); })))");
      } else {
      }
      dump_stack();
    } else {
    }
  }
  retries = (struct tx_retry_rate const *)(& zd_retry_rates) + (unsigned long )first_idx;
  if (retry <= 0 || (int )retries->count < retry) {
    goto ldv_48057;
  } else {
  }
  final_idx = retries->rate[retry + -1];
  final_rate = (u8 )zd_rates[final_idx].hw_value;
  if ((int )tx_status->rate != (int )final_rate) {
    goto ldv_48057;
  } else {
  }
  found = 1;
  goto ldv_48062;
  ldv_48057:
  skb = skb->next;
  ldv_48064: ;
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)q)) {
    goto ldv_48063;
  } else {
  }
  ldv_48062: ;
  if (found != 0) {
    i = 1;
    goto ldv_48066;
    ldv_48065:
    skb = ldv___skb_dequeue_24(q);
    zd_mac_tx_status(hw, skb, (unsigned int )*((unsigned char *)mac + 13696UL) != 0U ? mac->ack_signal : 0,
                     i == position ? tx_status : (struct tx_status *)0);
    mac->ack_pending = 0U;
    i = i + 1;
    ldv_48066: ;
    if (i <= position) {
      goto ldv_48065;
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore(& q->lock, flags);
  return;
}
}
void zd_mac_tx_to_dev(struct sk_buff *skb , int error )
{
  struct ieee80211_tx_info *info ;
  struct ieee80211_tx_info *tmp ;
  struct ieee80211_hw *hw ;
  struct zd_mac *mac ;
  struct zd_mac *tmp___0 ;
  struct sk_buff_head *q ;
  struct sk_buff *tmp___1 ;
  __u32 tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  {
  tmp = IEEE80211_SKB_CB(skb);
  info = tmp;
  hw = (struct ieee80211_hw *)info->ldv_46091.ldv_46089.rate_driver_data[0];
  tmp___0 = zd_hw_mac(hw);
  mac = tmp___0;
  ieee80211_tx_info_clear_status(info);
  skb_pull(skb, 11U);
  tmp___3 = ldv__builtin_expect(error != 0, 0L);
  if (tmp___3 != 0L) {
    ieee80211_tx_status_irqsafe(hw, skb);
  } else {
    tmp___4 = ldv__builtin_expect((info->flags & 4U) != 0U, 0L);
    if (tmp___4 != 0L) {
      ieee80211_tx_status_irqsafe(hw, skb);
    } else {
      q = & mac->ack_wait_queue;
      skb_queue_tail(q, skb);
      goto ldv_48077;
      ldv_48076:
      tmp___1 = skb_dequeue(q);
      zd_mac_tx_status(hw, tmp___1, (unsigned int )*((unsigned char *)mac + 13696UL) != 0U ? mac->ack_signal : 0,
                       (struct tx_status *)0);
      mac->ack_pending = 0U;
      ldv_48077:
      tmp___2 = skb_queue_len((struct sk_buff_head const *)q);
      if (tmp___2 > 50U) {
        goto ldv_48076;
      } else {
      }
    }
  }
  return;
}
}
static int zd_calc_tx_length_us(u8 *service , u8 zd_rate , u16 tx_length )
{
  u8 rate_divisor[16U] ;
  u32 bits ;
  u32 divisor ;
  u32 t ;
  {
  rate_divisor[0] = 1U;
  rate_divisor[1] = 2U;
  rate_divisor[2] = 11U;
  rate_divisor[3] = 11U;
  rate_divisor[4] = (unsigned char)0;
  rate_divisor[5] = (unsigned char)0;
  rate_divisor[6] = (unsigned char)0;
  rate_divisor[7] = (unsigned char)0;
  rate_divisor[8] = 48U;
  rate_divisor[9] = 24U;
  rate_divisor[10] = 12U;
  rate_divisor[11] = 6U;
  rate_divisor[12] = 54U;
  rate_divisor[13] = 36U;
  rate_divisor[14] = 18U;
  rate_divisor[15] = 9U;
  bits = (unsigned int )tx_length * 8U;
  divisor = (u32 )rate_divisor[(int )zd_rate & 15];
  if (divisor == 0U) {
    return (-22);
  } else {
  }
  switch ((int )zd_rate) {
  case 2:
  bits = (bits + 5U) * 2U;
  goto ldv_48088;
  case 3: ;
  if ((unsigned long )service != (unsigned long )((u8 *)0U)) {
    t = bits % 11U;
    *service = (unsigned int )*service & 127U;
    if (t != 0U && t <= 3U) {
      *service = (u8 )((unsigned int )*service | 128U);
    } else {
    }
  } else {
  }
  bits = bits + 10U;
  goto ldv_48088;
  }
  ldv_48088: ;
  return ((int )(bits / divisor));
}
}
static void cs_set_control(struct zd_mac *mac , struct zd_ctrlset *cs , struct ieee80211_hdr *header ,
                           struct ieee80211_tx_info *info )
{
  int tmp ;
  {
  cs->control = 0U;
  if ((info->flags & 16U) != 0U) {
    cs->control = (u8 )((unsigned int )cs->control | 1U);
  } else {
  }
  if ((info->flags & 4U) != 0U) {
    cs->control = (u8 )((unsigned int )cs->control | 2U);
  } else {
  }
  tmp = ieee80211_is_pspoll((int )header->frame_control);
  if (tmp != 0) {
    cs->control = (u8 )((unsigned int )cs->control | 4U);
  } else {
  }
  if ((int )info->ldv_46091.control.ldv_46071.ldv_46069.rates[0].flags & 1) {
    cs->control = (u8 )((unsigned int )cs->control | 32U);
  } else {
  }
  if (((int )info->ldv_46091.control.ldv_46071.ldv_46069.rates[0].flags & 2) != 0) {
    cs->control = (u8 )((unsigned int )cs->control | 128U);
  } else {
  }
  return;
}
}
static bool zd_mac_match_cur_beacon(struct zd_mac *mac , struct sk_buff *beacon )
{
  int tmp ;
  {
  if ((unsigned long )mac->beacon.cur_beacon == (unsigned long )((struct sk_buff *)0)) {
    return (0);
  } else {
  }
  if ((mac->beacon.cur_beacon)->len != beacon->len) {
    return (0);
  } else {
  }
  tmp = memcmp((void const *)beacon->data, (void const *)(mac->beacon.cur_beacon)->data,
               (size_t )beacon->len);
  return (tmp == 0);
}
}
static void zd_mac_free_cur_beacon_locked(struct zd_mac *mac )
{
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp___0 = mutex_is_locked(& mac->chip.mutex);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_mac_free_cur_beacon_locked";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_mac.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 735U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_mac.o.c.prepared",
                         735, (char *)"mutex_is_locked(&mac->chip.mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  ldv_kfree_skb_25(mac->beacon.cur_beacon);
  mac->beacon.cur_beacon = (struct sk_buff *)0;
  return;
}
}
static void zd_mac_free_cur_beacon(struct zd_mac *mac )
{
  {
  mutex_lock_nested(& mac->chip.mutex, 0U);
  zd_mac_free_cur_beacon_locked(mac);
  mutex_unlock(& mac->chip.mutex);
  return;
}
}
static int zd_mac_config_beacon(struct ieee80211_hw *hw , struct sk_buff *beacon ,
                                bool in_intr )
{
  struct zd_mac *mac ;
  struct zd_mac *tmp ;
  int r ;
  int ret ;
  int num_cmds ;
  int req_pos ;
  u32 tmp___0 ;
  u32 j ;
  u32 full_len ;
  unsigned long end_jiffies ;
  unsigned long message_jiffies ;
  struct zd_ioreq32 *ioreqs ;
  bool tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  {
  tmp = zd_hw_mac(hw);
  mac = tmp;
  req_pos = 0;
  j = 0U;
  full_len = beacon->len + 4U;
  mutex_lock_nested(& mac->chip.mutex, 0U);
  tmp___1 = zd_mac_match_cur_beacon(mac, beacon);
  if ((int )tmp___1) {
    r = 0;
    goto out_nofree;
  } else {
  }
  tmp___2 = zd_chip_is_zd1211b(& mac->chip);
  num_cmds = (int )(((u32 )tmp___2 + full_len) + 1U);
  tmp___3 = kmalloc((unsigned long )num_cmds * 8UL, 208U);
  ioreqs = (struct zd_ioreq32 *)tmp___3;
  if ((unsigned long )ioreqs == (unsigned long )((struct zd_ioreq32 *)0)) {
    r = -12;
    goto out_nofree;
  } else {
  }
  r = zd_iowrite32_locked(& mac->chip, 0U, 38548);
  if (r < 0) {
    goto out;
  } else {
  }
  r = zd_ioread32_locked(& mac->chip, & tmp___0, 38548);
  if (r < 0) {
    goto release_sema;
  } else {
  }
  if ((int )in_intr && (tmp___0 & 2U) != 0U) {
    r = -16;
    goto release_sema;
  } else {
  }
  end_jiffies = (unsigned long )jiffies + 125UL;
  message_jiffies = (unsigned long )jiffies + 25UL;
  goto ldv_48142;
  ldv_48141:
  r = zd_ioread32_locked(& mac->chip, & tmp___0, 38548);
  if (r < 0) {
    goto release_sema;
  } else {
  }
  if ((long )((unsigned long )jiffies - message_jiffies) >= 0L) {
    message_jiffies = (unsigned long )jiffies + 25UL;
    dev_err((struct device const *)(& (mac->chip.usb.intf)->dev), "CR_BCN_FIFO_SEMAPHORE not ready\n");
    if ((long )((unsigned long )jiffies - end_jiffies) >= 0L) {
      dev_err((struct device const *)(& (mac->chip.usb.intf)->dev), "Giving up beacon config.\n");
      r = -110;
      goto reset_device;
    } else {
    }
  } else {
  }
  msleep(20U);
  ldv_48142: ;
  if ((tmp___0 & 2U) != 0U) {
    goto ldv_48141;
  } else {
  }
  (ioreqs + (unsigned long )req_pos)->addr = 38512U;
  (ioreqs + (unsigned long )req_pos)->value = full_len - 1U;
  req_pos = req_pos + 1;
  tmp___4 = zd_chip_is_zd1211b(& mac->chip);
  if (tmp___4 != 0) {
    (ioreqs + (unsigned long )req_pos)->addr = 38500U;
    (ioreqs + (unsigned long )req_pos)->value = full_len - 1U;
    req_pos = req_pos + 1;
  } else {
  }
  j = 0U;
  goto ldv_48145;
  ldv_48144:
  (ioreqs + (unsigned long )req_pos)->addr = 38512U;
  (ioreqs + (unsigned long )req_pos)->value = (u32 )*(beacon->data + (unsigned long )j);
  req_pos = req_pos + 1;
  j = j + 1U;
  ldv_48145: ;
  if (beacon->len > j) {
    goto ldv_48144;
  } else {
  }
  j = 0U;
  goto ldv_48148;
  ldv_48147:
  (ioreqs + (unsigned long )req_pos)->addr = 38512U;
  (ioreqs + (unsigned long )req_pos)->value = 0U;
  req_pos = req_pos + 1;
  j = j + 1U;
  ldv_48148: ;
  if (j <= 3U) {
    goto ldv_48147;
  } else {
  }
  tmp___5 = ldv__builtin_expect(req_pos != num_cmds, 0L);
  if (tmp___5 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_mac.o.c.prepared"),
                         "i" (827), "i" (12UL));
    ldv_48150: ;
    goto ldv_48150;
  } else {
  }
  r = zd_iowrite32a_locked(& mac->chip, (struct zd_ioreq32 const *)ioreqs, (unsigned int )num_cmds);
  release_sema:
  end_jiffies = (unsigned long )jiffies + 125UL;
  ret = zd_iowrite32_locked(& mac->chip, 1U, 38548);
  goto ldv_48159;
  ldv_48158: ;
  if ((int )in_intr || (long )((unsigned long )jiffies - end_jiffies) >= 0L) {
    ret = -110;
    goto ldv_48157;
  } else {
  }
  msleep(20U);
  ret = zd_iowrite32_locked(& mac->chip, 1U, 38548);
  ldv_48159: ;
  if (ret < 0) {
    goto ldv_48158;
  } else {
  }
  ldv_48157: ;
  if (ret < 0) {
    dev_err((struct device const *)(& (mac->chip.usb.intf)->dev), "Could not release CR_BCN_FIFO_SEMAPHORE!\n");
  } else {
  }
  if (r < 0 || ret < 0) {
    if (r >= 0) {
      r = ret;
    } else {
    }
    zd_mac_free_cur_beacon_locked(mac);
    goto out;
  } else {
  }
  zd_mac_free_cur_beacon_locked(mac);
  mac->beacon.cur_beacon = beacon;
  beacon = (struct sk_buff *)0;
  r = zd_iowrite32_locked(& mac->chip, (full_len << 19) | 1024U, 38432);
  out:
  kfree((void const *)ioreqs);
  out_nofree:
  ldv_kfree_skb_26(beacon);
  mutex_unlock(& mac->chip.mutex);
  return (r);
  reset_device:
  zd_mac_free_cur_beacon_locked(mac);
  ldv_kfree_skb_27(beacon);
  mutex_unlock(& mac->chip.mutex);
  kfree((void const *)ioreqs);
  dev_warn((struct device const *)(& (mac->chip.usb.intf)->dev), "CR_BCN_FIFO_SEMAPHORE stuck, resetting device...");
  usb_queue_reset_device(mac->chip.usb.intf);
  return (r);
}
}
static int fill_ctrlset(struct zd_mac *mac , struct sk_buff *skb )
{
  int r ;
  struct ieee80211_hdr *hdr ;
  unsigned int frag_len ;
  unsigned int packet_length ;
  struct ieee80211_rate *txrate ;
  struct zd_ctrlset *cs ;
  unsigned char *tmp ;
  struct ieee80211_tx_info *info ;
  struct ieee80211_tx_info *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  struct _ddebug descriptor___0 ;
  long tmp___4 ;
  long tmp___5 ;
  int tmp___6 ;
  {
  hdr = (struct ieee80211_hdr *)skb->data;
  frag_len = skb->len + 4U;
  tmp = skb_push(skb, 11U);
  cs = (struct zd_ctrlset *)tmp;
  tmp___0 = IEEE80211_SKB_CB(skb);
  info = tmp___0;
  tmp___2 = ldv__builtin_expect(frag_len > 65535U, 0L);
  if (tmp___2 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "fill_ctrlset";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_mac.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 908U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_mac.o.c.prepared",
                         908, (char *)"frag_len <= 0xffff");
    } else {
    }
    dump_stack();
  } else {
  }
  tmp___3 = ieee80211_is_pspoll((int )hdr->frame_control);
  if (tmp___3 == 0) {
    hdr->duration_id = 0U;
  } else {
  }
  txrate = ieee80211_get_tx_rate((struct ieee80211_hw const *)mac->hw, (struct ieee80211_tx_info const *)info);
  cs->modulation = (u8 )txrate->hw_value;
  if (((int )info->ldv_46091.control.ldv_46071.ldv_46069.rates[0].flags & 4) != 0) {
    cs->modulation = (u8 )txrate->hw_value_short;
  } else {
  }
  cs->tx_length = (unsigned short )frag_len;
  cs_set_control(mac, cs, hdr, info);
  packet_length = frag_len + 21U;
  tmp___5 = ldv__builtin_expect(packet_length > 65535U, 0L);
  if (tmp___5 != 0L) {
    descriptor___0.modname = "zd1211rw";
    descriptor___0.function = "fill_ctrlset";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_mac.o.c.prepared";
    descriptor___0.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor___0.lineno = 929U;
    descriptor___0.flags = 1U;
    tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_mac.o.c.prepared",
                         929, (char *)"packet_length <= 0xffff");
    } else {
    }
    dump_stack();
  } else {
  }
  tmp___6 = zd_chip_is_zd1211b(& mac->chip);
  cs->packet_length = tmp___6 != 0 ? (int )((unsigned short )packet_length) - (int )((unsigned short )frag_len) : (unsigned short )packet_length;
  cs->service = 0U;
  r = zd_calc_tx_length_us(& cs->service, (int )cs->modulation & 31, (int )cs->tx_length);
  if (r < 0) {
    return (r);
  } else {
  }
  cs->current_length = (unsigned short )r;
  cs->next_frame_length = 0U;
  return (0);
}
}
static void zd_op_tx(struct ieee80211_hw *hw , struct ieee80211_tx_control *control ,
                     struct sk_buff *skb )
{
  struct zd_mac *mac ;
  struct zd_mac *tmp ;
  struct ieee80211_tx_info *info ;
  struct ieee80211_tx_info *tmp___0 ;
  int r ;
  {
  tmp = zd_hw_mac(hw);
  mac = tmp;
  tmp___0 = IEEE80211_SKB_CB(skb);
  info = tmp___0;
  r = fill_ctrlset(mac, skb);
  if (r != 0) {
    goto fail;
  } else {
  }
  info->ldv_46091.ldv_46089.rate_driver_data[0] = (void *)hw;
  r = zd_usb_tx(& mac->chip.usb, skb);
  if (r != 0) {
    goto fail;
  } else {
  }
  return;
  fail:
  ldv_skb_free(skb);
  return;
}
}
static int filter_ack(struct ieee80211_hw *hw , struct ieee80211_hdr *rx_hdr , struct ieee80211_rx_status *stats )
{
  struct zd_mac *mac ;
  struct zd_mac *tmp ;
  struct sk_buff *skb ;
  struct sk_buff_head *q ;
  unsigned long flags ;
  int found ;
  int i ;
  int position ;
  int tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  struct ieee80211_hdr *tx_hdr ;
  bool tmp___2 ;
  bool tmp___3 ;
  long tmp___4 ;
  {
  tmp = zd_hw_mac(hw);
  mac = tmp;
  found = 0;
  position = 0;
  tmp___0 = ieee80211_is_ack((int )rx_hdr->frame_control);
  if (tmp___0 == 0) {
    return (0);
  } else {
  }
  q = & mac->ack_wait_queue;
  tmp___1 = spinlock_check(& q->lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  skb = q->next;
  goto ldv_48202;
  ldv_48201:
  position = position + 1;
  if ((unsigned int )*((unsigned char *)mac + 13696UL) != 0U) {
    tmp___2 = skb_queue_is_first((struct sk_buff_head const *)q, (struct sk_buff const *)skb);
    if ((int )tmp___2) {
      goto ldv_48199;
    } else {
    }
  } else {
  }
  tx_hdr = (struct ieee80211_hdr *)skb->data;
  tmp___3 = ether_addr_equal((u8 const *)(& tx_hdr->addr2), (u8 const *)(& rx_hdr->addr1));
  tmp___4 = ldv__builtin_expect((long )tmp___3, 1L);
  if (tmp___4 != 0L) {
    found = 1;
    goto ldv_48200;
  } else {
  }
  ldv_48199:
  skb = skb->next;
  ldv_48202: ;
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)q)) {
    goto ldv_48201;
  } else {
  }
  ldv_48200: ;
  if (found != 0) {
    i = 1;
    goto ldv_48204;
    ldv_48203:
    skb = ldv___skb_dequeue_24(q);
    zd_mac_tx_status(hw, skb, (unsigned int )*((unsigned char *)mac + 13696UL) != 0U ? mac->ack_signal : 0,
                     (struct tx_status *)0);
    mac->ack_pending = 0U;
    i = i + 1;
    ldv_48204: ;
    if (i < position) {
      goto ldv_48203;
    } else {
    }
    mac->ack_pending = 1U;
    mac->ack_signal = (int )stats->signal;
    if (mac->type == 3) {
      skb = ldv___skb_dequeue_24(q);
      zd_mac_tx_status(hw, skb, mac->ack_signal, (struct tx_status *)0);
      mac->ack_pending = 0U;
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore(& q->lock, flags);
  return (1);
}
}
int zd_mac_rx(struct ieee80211_hw *hw , u8 const *buffer , unsigned int length )
{
  struct zd_mac *mac ;
  struct zd_mac *tmp ;
  struct ieee80211_rx_status stats ;
  struct rx_status const *status ;
  struct sk_buff *skb ;
  int bad_frame ;
  __le16 fc ;
  int need_padding ;
  int i ;
  u8 rate ;
  u8 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  size_t __len ;
  void *__ret ;
  unsigned char *tmp___6 ;
  size_t __len___0 ;
  void *__ret___0 ;
  struct ieee80211_rx_status *tmp___7 ;
  struct ieee80211_rx_status *tmp___8 ;
  {
  tmp = zd_hw_mac(hw);
  mac = tmp;
  bad_frame = 0;
  if (length <= 23U) {
    return (-22);
  } else {
  }
  memset((void *)(& stats), 0, 40UL);
  status = (struct rx_status const *)(buffer + ((unsigned long )length + 0xfffffffffffffffbUL));
  if ((int )((signed char )status->frame_status) < 0) {
    if ((unsigned int )*((unsigned char *)mac + 13696UL) != 0U && ((int )status->frame_status & 16) != 0) {
      stats.flag = stats.flag | 32U;
      bad_frame = 1;
    } else {
      return (-22);
    }
  } else {
  }
  tmp___0 = _zd_chip_get_channel(& mac->chip);
  stats.freq = zd_channels[(int )tmp___0 + -1].center_freq;
  stats.band = 0U;
  tmp___1 = zd_check_signal(hw, (int )status->signal_strength);
  stats.signal = (s8 )tmp___1;
  rate = zd_rx_rate((void const *)buffer, status);
  i = 0;
  goto ldv_48221;
  ldv_48220: ;
  if ((int )((unsigned short )rate) == (int )(mac->band.bitrates + (unsigned long )i)->hw_value) {
    stats.rate_idx = (u8 )i;
  } else {
  }
  i = i + 1;
  ldv_48221: ;
  if (mac->band.n_bitrates > i) {
    goto ldv_48220;
  } else {
  }
  length = length - 10U;
  buffer = buffer + 5UL;
  if (bad_frame == 0) {
    tmp___2 = filter_ack(hw, (struct ieee80211_hdr *)buffer, & stats);
    if (tmp___2 != 0) {
      if ((unsigned int )*((unsigned char *)mac + 13696UL) == 0U) {
        return (0);
      } else {
      }
    } else {
    }
  } else {
  }
  fc = get_unaligned_le16((void const *)buffer);
  tmp___3 = ieee80211_is_data_qos((int )fc);
  tmp___4 = ieee80211_has_a4((int )fc);
  need_padding = tmp___3 ^ tmp___4;
  skb = ldv_dev_alloc_skb_30((need_padding != 0 ? 2U : 0U) + length);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  if (need_padding != 0) {
    skb_reserve(skb, 2);
  } else {
  }
  __len = (size_t )length;
  tmp___6 = skb_put(skb, length);
  __ret = memcpy((void *)tmp___6, (void const *)buffer, __len);
  __len___0 = 40UL;
  if (__len___0 > 63UL) {
    tmp___7 = IEEE80211_SKB_RXCB(skb);
    __ret___0 = memcpy((void *)tmp___7, (void const *)(& stats), __len___0);
  } else {
    tmp___8 = IEEE80211_SKB_RXCB(skb);
    __ret___0 = memcpy((void *)tmp___8, (void const *)(& stats), __len___0);
  }
  ieee80211_rx_irqsafe(hw, skb);
  return (0);
}
}
static int zd_op_add_interface(struct ieee80211_hw *hw , struct ieee80211_vif *vif )
{
  struct zd_mac *mac ;
  struct zd_mac *tmp ;
  int tmp___0 ;
  {
  tmp = zd_hw_mac(hw);
  mac = tmp;
  if (mac->type != 0) {
    return (-95);
  } else {
  }
  switch ((unsigned int )vif->type) {
  case 6U: ;
  case 7U: ;
  case 2U: ;
  case 1U: ;
  case 3U:
  mac->type = (int )vif->type;
  goto ldv_48239;
  default: ;
  return (-95);
  }
  ldv_48239:
  mac->vif = vif;
  tmp___0 = set_mac_and_bssid(mac);
  return (tmp___0);
}
}
static void zd_op_remove_interface(struct ieee80211_hw *hw , struct ieee80211_vif *vif )
{
  struct zd_mac *mac ;
  struct zd_mac *tmp ;
  {
  tmp = zd_hw_mac(hw);
  mac = tmp;
  mac->type = 0;
  mac->vif = (struct ieee80211_vif *)0;
  zd_set_beacon_interval(& mac->chip, 0, 0, 0);
  zd_write_mac_addr(& mac->chip, (u8 const *)0U);
  zd_mac_free_cur_beacon(mac);
  return;
}
}
static int zd_op_config(struct ieee80211_hw *hw , u32 changed )
{
  struct zd_mac *mac ;
  struct zd_mac *tmp ;
  struct ieee80211_conf *conf ;
  int tmp___0 ;
  {
  tmp = zd_hw_mac(hw);
  mac = tmp;
  conf = & hw->conf;
  spin_lock_irq(& mac->lock);
  mac->channel = (u8 )(conf->chandef.chan)->hw_value;
  spin_unlock_irq(& mac->lock);
  tmp___0 = zd_chip_set_channel(& mac->chip, (int )((u8 )(conf->chandef.chan)->hw_value));
  return (tmp___0);
}
}
static void zd_beacon_done(struct zd_mac *mac )
{
  struct sk_buff *skb ;
  struct sk_buff *beacon ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& mac->flags));
  if (tmp == 0) {
    return;
  } else {
  }
  if ((unsigned long )mac->vif == (unsigned long )((struct ieee80211_vif *)0) || (unsigned int )(mac->vif)->type != 3U) {
    return;
  } else {
  }
  goto ldv_48259;
  ldv_48258:
  skb = ieee80211_get_buffered_bc(mac->hw, mac->vif);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    goto ldv_48257;
  } else {
  }
  zd_op_tx(mac->hw, (struct ieee80211_tx_control *)0, skb);
  ldv_48259:
  tmp___0 = ieee80211_queue_stopped(mac->hw, 0);
  if (tmp___0 == 0) {
    goto ldv_48258;
  } else {
  }
  ldv_48257:
  beacon = ieee80211_beacon_get(mac->hw, mac->vif);
  if ((unsigned long )beacon != (unsigned long )((struct sk_buff *)0)) {
    zd_mac_config_beacon(mac->hw, beacon, 1);
  } else {
  }
  spin_lock_irq(& mac->lock);
  mac->beacon.last_update = jiffies;
  spin_unlock_irq(& mac->lock);
  return;
}
}
static void zd_process_intr(struct work_struct *work )
{
  u16 int_status ;
  unsigned long flags ;
  struct zd_mac *mac ;
  struct work_struct const *__mptr ;
  raw_spinlock_t *tmp ;
  {
  __mptr = (struct work_struct const *)work;
  mac = (struct zd_mac *)__mptr + 0xffffffffffffcfe8UL;
  tmp = spinlock_check(& mac->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  int_status = *((__le16 *)(& mac->intr_buffer) + 4U);
  spin_unlock_irqrestore(& mac->lock, flags);
  if (((int )int_status & 64) != 0) {
    zd_beacon_done(mac);
  } else {
    dev_printk("\017", (struct device const *)(& (mac->chip.usb.intf)->dev), "%s() Unsupported interrupt\n",
               "zd_process_intr");
  }
  zd_chip_enable_hwint(& mac->chip);
  return;
}
}
static u64 zd_op_prepare_multicast(struct ieee80211_hw *hw , struct netdev_hw_addr_list *mc_list )
{
  struct zd_mac *mac ;
  struct zd_mac *tmp ;
  struct zd_mc_hash hash ;
  struct netdev_hw_addr *ha ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = zd_hw_mac(hw);
  mac = tmp;
  zd_mc_clear(& hash);
  __mptr = (struct list_head const *)mc_list->list.next;
  ha = (struct netdev_hw_addr *)__mptr;
  goto ldv_48285;
  ldv_48284:
  dev_printk("\017", (struct device const *)(& (mac->chip.usb.intf)->dev), "%s() mc addr %pM\n",
             "zd_op_prepare_multicast", (unsigned char *)(& ha->addr));
  zd_mc_add_addr(& hash, (u8 *)(& ha->addr));
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (struct netdev_hw_addr *)__mptr___0;
  ldv_48285: ;
  if ((unsigned long )ha != (unsigned long )mc_list) {
    goto ldv_48284;
  } else {
  }
  return ((unsigned long long )hash.low | ((unsigned long long )hash.high << 32));
}
}
static void zd_op_configure_filter(struct ieee80211_hw *hw , unsigned int changed_flags ,
                                   unsigned int *new_flags , u64 multicast )
{
  struct zd_mc_hash hash ;
  struct zd_mac *mac ;
  struct zd_mac *tmp ;
  unsigned long flags ;
  int r ;
  raw_spinlock_t *tmp___0 ;
  {
  hash.low = (unsigned int )multicast;
  hash.high = (unsigned int )(multicast >> 32);
  tmp = zd_hw_mac(hw);
  mac = tmp;
  changed_flags = changed_flags & 119U;
  *new_flags = *new_flags & 119U;
  if ((*new_flags & 3U) != 0U) {
    zd_mc_add_all(& hash);
  } else {
  }
  tmp___0 = spinlock_check(& mac->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  mac->pass_failed_fcs = (*new_flags & 4U) != 0U;
  mac->pass_ctrl = (*new_flags & 32U) != 0U;
  mac->multicast_hash = hash;
  spin_unlock_irqrestore(& mac->lock, flags);
  zd_chip_set_multicast_hash(& mac->chip, & hash);
  if ((changed_flags & 32U) != 0U) {
    r = set_rx_filter(mac);
    if (r != 0) {
      dev_err((struct device const *)(& (mac->chip.usb.intf)->dev), "set_rx_filter error %d\n",
              r);
    } else {
    }
  } else {
  }
  return;
}
}
static void set_rts_cts(struct zd_mac *mac , unsigned int short_preamble )
{
  {
  mutex_lock_nested(& mac->chip.mutex, 0U);
  zd_chip_set_rts_cts_rate_locked(& mac->chip, (int )short_preamble);
  mutex_unlock(& mac->chip.mutex);
  return;
}
}
static void zd_op_bss_info_changed(struct ieee80211_hw *hw , struct ieee80211_vif *vif ,
                                   struct ieee80211_bss_conf *bss_conf , u32 changes )
{
  struct zd_mac *mac ;
  struct zd_mac *tmp ;
  int associated ;
  struct sk_buff *beacon ;
  struct sk_buff *tmp___0 ;
  u16 interval ;
  u8 period ;
  bool tmp___1 ;
  {
  tmp = zd_hw_mac(hw);
  mac = tmp;
  dev_printk("\017", (struct device const *)(& (mac->chip.usb.intf)->dev), "%s() changes: %x\n",
             "zd_op_bss_info_changed", changes);
  if ((mac->type == 7 || mac->type == 1) || mac->type == 3) {
    associated = 1;
    if ((changes & 256U) != 0U) {
      tmp___0 = ieee80211_beacon_get(hw, vif);
      beacon = tmp___0;
      if ((unsigned long )beacon != (unsigned long )((struct sk_buff *)0)) {
        zd_chip_disable_hwint(& mac->chip);
        zd_mac_config_beacon(hw, beacon, 0);
        zd_chip_enable_hwint(& mac->chip);
      } else {
      }
    } else {
    }
    if ((changes & 512U) != 0U) {
      interval = 0U;
      period = 0U;
      if ((int )bss_conf->enable_beacon) {
        period = bss_conf->dtim_period;
        interval = bss_conf->beacon_int;
      } else {
      }
      spin_lock_irq(& mac->lock);
      mac->beacon.period = period;
      mac->beacon.interval = interval;
      mac->beacon.last_update = jiffies;
      spin_unlock_irq(& mac->lock);
      zd_set_beacon_interval(& mac->chip, (int )interval, (int )period, mac->type);
    } else {
    }
  } else {
    tmp___1 = is_valid_ether_addr(bss_conf->bssid);
    associated = (int )tmp___1;
  }
  spin_lock_irq(& mac->lock);
  mac->associated = associated;
  spin_unlock_irq(& mac->lock);
  if ((changes & 4U) != 0U) {
    spin_lock_irq(& mac->lock);
    mac->short_preamble = (unsigned char )bss_conf->use_short_preamble;
    spin_unlock_irq(& mac->lock);
    set_rts_cts(mac, (unsigned int )bss_conf->use_short_preamble);
  } else {
  }
  return;
}
}
static u64 zd_op_get_tsf(struct ieee80211_hw *hw , struct ieee80211_vif *vif )
{
  struct zd_mac *mac ;
  struct zd_mac *tmp ;
  u64 tmp___0 ;
  {
  tmp = zd_hw_mac(hw);
  mac = tmp;
  tmp___0 = zd_chip_get_tsf(& mac->chip);
  return (tmp___0);
}
}
static struct ieee80211_ops const zd_ops =
     {& zd_op_tx, & zd_op_start, & zd_op_stop, 0, 0, 0, & zd_op_add_interface, 0, & zd_op_remove_interface,
    & zd_op_config, & zd_op_bss_info_changed, 0, 0, & zd_op_prepare_multicast, & zd_op_configure_filter,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & zd_op_get_tsf,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
struct ieee80211_hw *zd_mac_alloc_hw(struct usb_interface *intf )
{
  struct zd_mac *mac ;
  struct ieee80211_hw *hw ;
  struct lock_class_key __key ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  {
  hw = ieee80211_alloc_hw(13704UL, & zd_ops);
  if ((unsigned long )hw == (unsigned long )((struct ieee80211_hw *)0)) {
    dev_printk("\017", (struct device const *)(& intf->dev), "%s() out of memory\n",
               "zd_mac_alloc_hw");
    return ((struct ieee80211_hw *)0);
  } else {
  }
  mac = zd_hw_mac(hw);
  memset((void *)mac, 0, 13704UL);
  spinlock_check(& mac->lock);
  __raw_spin_lock_init(& mac->lock.ldv_6338.rlock, "&(&mac->lock)->rlock", & __key);
  mac->hw = hw;
  mac->type = 0;
  __len = 896UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& mac->channels), (void const *)(& zd_channels), __len);
  } else {
    __ret = memcpy((void *)(& mac->channels), (void const *)(& zd_channels),
                             __len);
  }
  __len___0 = 144UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(& mac->rates), (void const *)(& zd_rates), __len___0);
  } else {
    __ret___0 = memcpy((void *)(& mac->rates), (void const *)(& zd_rates),
                                 __len___0);
  }
  mac->band.n_bitrates = 12;
  mac->band.bitrates = (struct ieee80211_rate *)(& mac->rates);
  mac->band.n_channels = 14;
  mac->band.channels = (struct ieee80211_channel *)(& mac->channels);
  (hw->wiphy)->bands[0] = & mac->band;
  hw->flags = 8230U;
  (hw->wiphy)->interface_modes = 142U;
  hw->max_signal = 100;
  hw->queues = 1U;
  hw->extra_tx_headroom = 11U;
  hw->max_rates = 4U;
  hw->max_rate_tries = 18U;
  skb_queue_head_init(& mac->ack_wait_queue);
  mac->ack_pending = 0U;
  zd_chip_init(& mac->chip, hw, intf);
  housekeeping_init(mac);
  beacon_init(mac);
  __init_work(& mac->process_intr, 0);
  __constr_expr_0.counter = 137438953408L;
  mac->process_intr.data = __constr_expr_0;
  lockdep_init_map(& mac->process_intr.lockdep_map, "(&mac->process_intr)", & __key___0,
                   0);
  INIT_LIST_HEAD(& mac->process_intr.entry);
  mac->process_intr.func = & zd_process_intr;
  SET_IEEE80211_DEV(hw, & intf->dev);
  return (hw);
}
}
static void beacon_watchdog_handler(struct work_struct *work )
{
  struct zd_mac *mac ;
  struct work_struct const *__mptr ;
  struct sk_buff *beacon ;
  unsigned long timeout ;
  int interval ;
  int period ;
  int tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  {
  __mptr = (struct work_struct const *)work;
  mac = (struct zd_mac *)__mptr + 0xffffffffffffd130UL;
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& mac->flags));
  if (tmp == 0) {
    goto rearm;
  } else {
  }
  if (mac->type != 3 || (unsigned long )mac->vif == (unsigned long )((struct ieee80211_vif *)0)) {
    goto rearm;
  } else {
  }
  spin_lock_irq(& mac->lock);
  interval = (int )mac->beacon.interval;
  period = (int )mac->beacon.period;
  tmp___0 = msecs_to_jiffies((unsigned int const )((interval * 1024) / 1000));
  timeout = mac->beacon.last_update + tmp___0 * 3UL;
  spin_unlock_irq(& mac->lock);
  if (interval > 0 && (long )(timeout - (unsigned long )jiffies) < 0L) {
    dev_printk("\017", (struct device const *)(& (mac->chip.usb.intf)->dev), "%s() beacon interrupt stalled, restarting. (interval: %d, dtim: %d)\n",
               "beacon_watchdog_handler", interval, period);
    zd_chip_disable_hwint(& mac->chip);
    beacon = ieee80211_beacon_get(mac->hw, mac->vif);
    if ((unsigned long )beacon != (unsigned long )((struct sk_buff *)0)) {
      zd_mac_free_cur_beacon(mac);
      zd_mac_config_beacon(mac->hw, beacon, 0);
    } else {
    }
    zd_set_beacon_interval(& mac->chip, (int )((u16 )interval), (int )((u8 )period),
                           mac->type);
    zd_chip_enable_hwint(& mac->chip);
    spin_lock_irq(& mac->lock);
    mac->beacon.last_update = jiffies;
    spin_unlock_irq(& mac->lock);
  } else {
  }
  rearm:
  tmp___1 = round_jiffies_relative(250UL);
  queue_delayed_work(zd_workqueue, & mac->beacon.watchdog_work, tmp___1);
  return;
}
}
static void beacon_init(struct zd_mac *mac )
{
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  {
  __init_work(& mac->beacon.watchdog_work.work, 0);
  __constr_expr_0.counter = 137438953408L;
  mac->beacon.watchdog_work.work.data = __constr_expr_0;
  lockdep_init_map(& mac->beacon.watchdog_work.work.lockdep_map, "(&(&mac->beacon.watchdog_work)->work)",
                   & __key, 0);
  INIT_LIST_HEAD(& mac->beacon.watchdog_work.work.entry);
  mac->beacon.watchdog_work.work.func = & beacon_watchdog_handler;
  init_timer_key(& mac->beacon.watchdog_work.timer, 2U, "(&(&mac->beacon.watchdog_work)->timer)",
                 & __key___0);
  mac->beacon.watchdog_work.timer.function = & delayed_work_timer_fn;
  mac->beacon.watchdog_work.timer.data = (unsigned long )(& mac->beacon.watchdog_work);
  return;
}
}
static void beacon_enable(struct zd_mac *mac )
{
  unsigned long tmp ;
  {
  dev_printk("\017", (struct device const *)(& (mac->chip.usb.intf)->dev), "%s() \n",
             "beacon_enable");
  mac->beacon.last_update = jiffies;
  tmp = round_jiffies_relative(250UL);
  queue_delayed_work(zd_workqueue, & mac->beacon.watchdog_work, tmp);
  return;
}
}
static void beacon_disable(struct zd_mac *mac )
{
  {
  dev_printk("\017", (struct device const *)(& (mac->chip.usb.intf)->dev), "%s() \n",
             "beacon_disable");
  cancel_delayed_work_sync(& mac->beacon.watchdog_work);
  zd_mac_free_cur_beacon(mac);
  return;
}
}
static void link_led_handler(struct work_struct *work )
{
  struct zd_mac *mac ;
  struct work_struct const *__mptr ;
  struct zd_chip *chip ;
  int is_associated ;
  int r ;
  int tmp ;
  {
  __mptr = (struct work_struct const *)work;
  mac = (struct zd_mac *)__mptr + 0xffffffffffffd210UL;
  chip = & mac->chip;
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& mac->flags));
  if (tmp == 0) {
    goto requeue;
  } else {
  }
  spin_lock_irq(& mac->lock);
  is_associated = mac->associated;
  spin_unlock_irq(& mac->lock);
  r = zd_chip_control_leds(chip, is_associated != 0 ? 2 : 1);
  if (r != 0) {
    dev_printk("\017", (struct device const *)(& (mac->chip.usb.intf)->dev), "%s() zd_chip_control_leds error %d\n",
               "link_led_handler", r);
  } else {
  }
  requeue:
  queue_delayed_work(zd_workqueue, & mac->housekeeping.link_led_work, 250UL);
  return;
}
}
static void housekeeping_init(struct zd_mac *mac )
{
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  {
  __init_work(& mac->housekeeping.link_led_work.work, 0);
  __constr_expr_0.counter = 137438953408L;
  mac->housekeeping.link_led_work.work.data = __constr_expr_0;
  lockdep_init_map(& mac->housekeeping.link_led_work.work.lockdep_map, "(&(&mac->housekeeping.link_led_work)->work)",
                   & __key, 0);
  INIT_LIST_HEAD(& mac->housekeeping.link_led_work.work.entry);
  mac->housekeeping.link_led_work.work.func = & link_led_handler;
  init_timer_key(& mac->housekeeping.link_led_work.timer, 2U, "(&(&mac->housekeeping.link_led_work)->timer)",
                 & __key___0);
  mac->housekeeping.link_led_work.timer.function = & delayed_work_timer_fn;
  mac->housekeeping.link_led_work.timer.data = (unsigned long )(& mac->housekeeping.link_led_work);
  return;
}
}
static void housekeeping_enable(struct zd_mac *mac )
{
  {
  dev_printk("\017", (struct device const *)(& (mac->chip.usb.intf)->dev), "%s() \n",
             "housekeeping_enable");
  queue_delayed_work(zd_workqueue, & mac->housekeeping.link_led_work, 0UL);
  return;
}
}
static void housekeeping_disable(struct zd_mac *mac )
{
  {
  dev_printk("\017", (struct device const *)(& (mac->chip.usb.intf)->dev), "%s() \n",
             "housekeeping_disable");
  cancel_delayed_work_sync(& mac->housekeeping.link_led_work);
  zd_chip_control_leds(& mac->chip, 0);
  return;
}
}
int ldv_retval_2 ;
void ldv_initialize_ieee80211_ops_2(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(144UL);
  zd_ops_group0 = (struct ieee80211_hw *)tmp;
  tmp___0 = ldv_zalloc(280UL);
  zd_ops_group1 = (struct ieee80211_vif *)tmp___0;
  return;
}
}
void ldv_main_exported_2(void)
{
  struct ieee80211_tx_control *ldvarg2 ;
  void *tmp ;
  struct netdev_hw_addr_list *ldvarg9 ;
  void *tmp___0 ;
  struct ieee80211_bss_conf *ldvarg4 ;
  void *tmp___1 ;
  u32 ldvarg8 ;
  u32 tmp___2 ;
  struct sk_buff *ldvarg1 ;
  void *tmp___3 ;
  unsigned int *ldvarg6 ;
  void *tmp___4 ;
  u64 ldvarg5 ;
  u32 ldvarg3 ;
  u32 tmp___5 ;
  unsigned int ldvarg7 ;
  unsigned int tmp___6 ;
  int tmp___7 ;
  {
  tmp = ldv_zalloc(8UL);
  ldvarg2 = (struct ieee80211_tx_control *)tmp;
  tmp___0 = ldv_zalloc(24UL);
  ldvarg9 = (struct netdev_hw_addr_list *)tmp___0;
  tmp___1 = ldv_zalloc(232UL);
  ldvarg4 = (struct ieee80211_bss_conf *)tmp___1;
  tmp___2 = __VERIFIER_nondet_u32();
  ldvarg8 = tmp___2;
  tmp___3 = ldv_zalloc(232UL);
  ldvarg1 = (struct sk_buff *)tmp___3;
  tmp___4 = ldv_zalloc(4UL);
  ldvarg6 = (unsigned int *)tmp___4;
  tmp___5 = __VERIFIER_nondet_u32();
  ldvarg3 = tmp___5;
  tmp___6 = __VERIFIER_nondet_uint();
  ldvarg7 = tmp___6;
  memset((void *)(& ldvarg5), 0, 8UL);
  tmp___7 = __VERIFIER_nondet_int();
  switch (tmp___7) {
  case 0: ;
  if (ldv_state_variable_2 == 1) {
    ldv_retval_2 = zd_op_start(zd_ops_group0);
    if (ldv_retval_2 == 0) {
      ldv_state_variable_2 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_48415;
  case 1: ;
  if (ldv_state_variable_2 == 1) {
    zd_op_prepare_multicast(zd_ops_group0, ldvarg9);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    zd_op_prepare_multicast(zd_ops_group0, ldvarg9);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_48415;
  case 2: ;
  if (ldv_state_variable_2 == 1) {
    zd_op_config(zd_ops_group0, ldvarg8);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    zd_op_config(zd_ops_group0, ldvarg8);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_48415;
  case 3: ;
  if (ldv_state_variable_2 == 1) {
    zd_op_configure_filter(zd_ops_group0, ldvarg7, ldvarg6, ldvarg5);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    zd_op_configure_filter(zd_ops_group0, ldvarg7, ldvarg6, ldvarg5);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_48415;
  case 4: ;
  if (ldv_state_variable_2 == 1) {
    zd_op_get_tsf(zd_ops_group0, zd_ops_group1);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    zd_op_get_tsf(zd_ops_group0, zd_ops_group1);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_48415;
  case 5: ;
  if (ldv_state_variable_2 == 1) {
    zd_op_bss_info_changed(zd_ops_group0, zd_ops_group1, ldvarg4, ldvarg3);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    zd_op_bss_info_changed(zd_ops_group0, zd_ops_group1, ldvarg4, ldvarg3);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_48415;
  case 6: ;
  if (ldv_state_variable_2 == 1) {
    zd_op_add_interface(zd_ops_group0, zd_ops_group1);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    zd_op_add_interface(zd_ops_group0, zd_ops_group1);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_48415;
  case 7: ;
  if (ldv_state_variable_2 == 2) {
    zd_op_stop(zd_ops_group0);
    ldv_state_variable_2 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_48415;
  case 8: ;
  if (ldv_state_variable_2 == 1) {
    zd_op_tx(zd_ops_group0, ldvarg2, ldvarg1);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    zd_op_tx(zd_ops_group0, ldvarg2, ldvarg1);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_48415;
  case 9: ;
  if (ldv_state_variable_2 == 1) {
    zd_op_remove_interface(zd_ops_group0, zd_ops_group1);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    zd_op_remove_interface(zd_ops_group0, zd_ops_group1);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_48415;
  default:
  ldv_stop();
  }
  ldv_48415: ;
  return;
}
}
void ldv_consume_skb_16(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_17(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_18(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_19(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_22(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
struct sk_buff *ldv_skb_dequeue_23(struct sk_buff_head *ldv_func_arg1 )
{
  struct sk_buff *tmp ;
  {
  tmp = ldv_skb_alloc();
  return (tmp);
}
}
__inline static struct sk_buff *ldv___skb_dequeue_24(struct sk_buff_head *list )
{
  struct sk_buff *tmp ;
  {
  tmp = ldv_skb_alloc();
  return (tmp);
}
}
void ldv_kfree_skb_25(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_26(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_27(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
__inline static struct sk_buff *ldv_dev_alloc_skb_30(unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = ldv_skb_alloc();
  return (tmp);
}
}
void ldv_kfree_skb_36(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_37(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_38(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_41(struct sk_buff *ldv_func_arg1 ) ;
void ldv_consume_skb_35(struct sk_buff *ldv_func_arg1 ) ;
int zd_rf_generic_patch_6m(struct zd_rf *rf , u8 channel ) ;
int zd_rf_init_al2230(struct zd_rf *rf ) ;
__inline static struct zd_chip *zd_rf_to_chip(struct zd_rf *rf )
{
  struct zd_rf const *__mptr ;
  {
  __mptr = (struct zd_rf const *)rf;
  return ((struct zd_chip *)__mptr + 0xffffffffffffd3e8UL);
}
}
static u32 const zd1211_al2230_table[14U][3U] =
  { { 259984U, 209713U, 13U},
   { 259984U, 734001U, 13U},
   { 255888U, 209713U, 13U},
   { 255888U, 734001U, 13U},
   { 260000U, 209713U, 13U},
   { 260000U, 734001U, 13U},
   { 255904U, 209713U, 13U},
   { 255904U, 734001U, 13U},
   { 260016U, 209713U, 13U},
   { 260016U, 734001U, 13U},
   { 255920U, 209713U, 13U},
   { 255920U, 734001U, 13U},
   { 260032U, 209713U, 13U},
   { 255936U, 419425U, 13U}};
static u32 const zd1211b_al2230_table[14U][3U] =
  { { 651200U, 9227456U, 11534336U},
   { 651200U, 9227472U, 11534336U},
   { 649152U, 9227456U, 11534336U},
   { 649152U, 9227472U, 11534336U},
   { 389056U, 9227456U, 11534336U},
   { 389056U, 9227472U, 11534336U},
   { 387008U, 9227456U, 11534336U},
   { 387008U, 9227472U, 11534336U},
   { 913344U, 9227456U, 11534336U},
   { 913344U, 9227472U, 11534336U},
   { 911296U, 9227456U, 11534336U},
   { 911296U, 9227472U, 11534336U},
   { 257984U, 9227456U, 11534336U},
   { 255936U, 8808032U, 11534336U}};
static struct zd_ioreq16 const zd1211b_ioreqs_shared_1[2U] = { {37824U, 87U},
        {36900U, 224U}};
static struct zd_ioreq16 const ioreqs_init_al2230s[10U] =
  { {37052U, 30U},
        {37288U, 34U},
        {37292U, 42U},
        {37300U, 19U},
        {37336U, 248U},
        {37340U, 18U},
        {37352U, 224U},
        {37376U, 16U},
        {37380U, 14U},
        {37384U, 16U}};
static int zd1211b_al2230_finalize_rf(struct zd_chip *chip )
{
  int r ;
  struct zd_ioreq16 ioreqs[9U] ;
  int tmp ;
  {
  ioreqs[0].addr = 37184U;
  ioreqs[0].value = 48U;
  ioreqs[1].addr = 37188U;
  ioreqs[1].value = 48U;
  ioreqs[2].addr = 37180U;
  ioreqs[2].value = 88U;
  ioreqs[3].addr = 36912U;
  ioreqs[3].value = 240U;
  ioreqs[4].addr = 37172U;
  ioreqs[4].value = 27U;
  ioreqs[5].addr = 37176U;
  ioreqs[5].value = 88U;
  ioreqs[6].addr = 37676U;
  ioreqs[6].value = 6U;
  ioreqs[7].addr = (unsigned short)0;
  ioreqs[7].value = (unsigned short)0;
  ioreqs[8].addr = 37824U;
  ioreqs[8].value = 128U;
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 9U);
  if (r != 0) {
    return (r);
  } else {
  }
  if ((unsigned int )*((unsigned char *)chip + 11594UL) != 0U) {
    r = zd_iowrite16_locked(chip, 225, 36900);
    if (r != 0) {
      return (r);
    } else {
    }
  } else {
  }
  tmp = zd_iowrite16_locked(chip, 6, 37676);
  return (tmp);
}
}
static int zd1211_al2230_init_hw(struct zd_rf *rf )
{
  int r ;
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct zd_ioreq16 ioreqs_init[52U] ;
  struct zd_ioreq16 ioreqs_pll[4U] ;
  u32 rv1[6U] ;
  u32 rv2[11U] ;
  u32 rv3[5U] ;
  {
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  ioreqs_init[0].addr = 36924U;
  ioreqs_init[0].value = 32U;
  ioreqs_init[1].addr = 36956U;
  ioreqs_init[1].value = 64U;
  ioreqs_init[2].addr = 36960U;
  ioreqs_init[2].value = 32U;
  ioreqs_init[3].addr = 36968U;
  ioreqs_init[3].value = 17U;
  ioreqs_init[4].addr = 36976U;
  ioreqs_init[4].value = 62U;
  ioreqs_init[5].addr = 36980U;
  ioreqs_init[5].value = 0U;
  ioreqs_init[6].addr = 37040U;
  ioreqs_init[6].value = 51U;
  ioreqs_init[7].addr = 37288U;
  ioreqs_init[7].value = 42U;
  ioreqs_init[8].addr = 37292U;
  ioreqs_init[8].value = 26U;
  ioreqs_init[9].addr = 37300U;
  ioreqs_init[9].value = 9U;
  ioreqs_init[10].addr = 37304U;
  ioreqs_init[10].value = 39U;
  ioreqs_init[11].addr = 37308U;
  ioreqs_init[11].value = 43U;
  ioreqs_init[12].addr = 37312U;
  ioreqs_init[12].value = 43U;
  ioreqs_init[13].addr = 37340U;
  ioreqs_init[13].value = 10U;
  ioreqs_init[14].addr = 36904U;
  ioreqs_init[14].value = 137U;
  ioreqs_init[15].addr = 36932U;
  ioreqs_init[15].value = 40U;
  ioreqs_init[16].addr = 36968U;
  ioreqs_init[16].value = 147U;
  ioreqs_init[17].addr = 37000U;
  ioreqs_init[17].value = 48U;
  ioreqs_init[18].addr = 37004U;
  ioreqs_init[18].value = 62U;
  ioreqs_init[19].addr = 37028U;
  ioreqs_init[19].value = 36U;
  ioreqs_init[20].addr = 37040U;
  ioreqs_init[20].value = 50U;
  ioreqs_init[21].addr = 37048U;
  ioreqs_init[21].value = 150U;
  ioreqs_init[22].addr = 37052U;
  ioreqs_init[22].value = 30U;
  ioreqs_init[23].addr = 37180U;
  ioreqs_init[23].value = 88U;
  ioreqs_init[24].addr = 37184U;
  ioreqs_init[24].value = 48U;
  ioreqs_init[25].addr = 37188U;
  ioreqs_init[25].value = 48U;
  ioreqs_init[26].addr = 37212U;
  ioreqs_init[26].value = 10U;
  ioreqs_init[27].addr = 37220U;
  ioreqs_init[27].value = 4U;
  ioreqs_init[28].addr = 37232U;
  ioreqs_init[28].value = 10U;
  ioreqs_init[29].addr = 37260U;
  ioreqs_init[29].value = 40U;
  ioreqs_init[30].addr = 37264U;
  ioreqs_init[30].value = 0U;
  ioreqs_init[31].addr = 37268U;
  ioreqs_init[31].value = 19U;
  ioreqs_init[32].addr = 37272U;
  ioreqs_init[32].value = 39U;
  ioreqs_init[33].addr = 37288U;
  ioreqs_init[33].value = 36U;
  ioreqs_init[34].addr = 37292U;
  ioreqs_init[34].value = 42U;
  ioreqs_init[35].addr = 37300U;
  ioreqs_init[35].value = 9U;
  ioreqs_init[36].addr = 37304U;
  ioreqs_init[36].value = 19U;
  ioreqs_init[37].addr = 37308U;
  ioreqs_init[37].value = 31U;
  ioreqs_init[38].addr = 37312U;
  ioreqs_init[38].value = 31U;
  ioreqs_init[39].addr = 37316U;
  ioreqs_init[39].value = 39U;
  ioreqs_init[40].addr = 37320U;
  ioreqs_init[40].value = 39U;
  ioreqs_init[41].addr = 37324U;
  ioreqs_init[41].value = 36U;
  ioreqs_init[42].addr = 37328U;
  ioreqs_init[42].value = 36U;
  ioreqs_init[43].addr = 37332U;
  ioreqs_init[43].value = 244U;
  ioreqs_init[44].addr = 37336U;
  ioreqs_init[44].value = 252U;
  ioreqs_init[45].addr = 37340U;
  ioreqs_init[45].value = 16U;
  ioreqs_init[46].addr = 37344U;
  ioreqs_init[46].value = 79U;
  ioreqs_init[47].addr = 37348U;
  ioreqs_init[47].value = 119U;
  ioreqs_init[48].addr = 37352U;
  ioreqs_init[48].value = 224U;
  ioreqs_init[49].addr = 37412U;
  ioreqs_init[49].value = 136U;
  ioreqs_init[50].addr = 37872U;
  ioreqs_init[50].value = 255U;
  ioreqs_init[51].addr = 37876U;
  ioreqs_init[51].value = 255U;
  ioreqs_pll[0].addr = 37868U;
  ioreqs_pll[0].value = 47U;
  ioreqs_pll[1].addr = 37868U;
  ioreqs_pll[1].value = 63U;
  ioreqs_pll[2].addr = 37416U;
  ioreqs_pll[2].value = 40U;
  ioreqs_pll[3].addr = 37676U;
  ioreqs_pll[3].value = 6U;
  rv1[0] = 259984U;
  rv1[1] = 209713U;
  rv1[2] = 13U;
  rv1[3] = 734001U;
  rv1[4] = 243730U;
  rv1[5] = 65523U;
  rv2[0] = 3492U;
  rv2[1] = 1002949U;
  rv2[2] = 525750U;
  rv2[3] = 71303U;
  rv2[4] = 1672U;
  rv2[5] = 263097U;
  rv2[6] = 56250U;
  rv2[7] = 2459U;
  rv2[8] = 778236U;
  rv2[9] = 13U;
  rv2[10] = 20495U;
  rv3[0] = 53263U;
  rv3[1] = 19471U;
  rv3[2] = 21519U;
  rv3[3] = 28687U;
  rv3[4] = 20495U;
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs_init), 52U);
  if (r != 0) {
    return (r);
  } else {
  }
  if ((unsigned int )*((unsigned char *)chip + 11595UL) != 0U || (unsigned int )chip->rf.type == 10U) {
    r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs_init_al2230s),
                             10U);
    if (r != 0) {
      return (r);
    } else {
    }
  } else {
  }
  r = zd_rfwritev_locked(chip, (u32 const *)(& rv1), 6U, 24);
  if (r != 0) {
    return (r);
  } else {
  }
  if ((unsigned int )*((unsigned char *)chip + 11595UL) != 0U || (unsigned int )chip->rf.type == 10U) {
    r = zd_rfwrite_locked(chip, 2084U, 24);
  } else {
    r = zd_rfwrite_locked(chip, 1444U, 24);
  }
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwritev_locked(chip, (u32 const *)(& rv2), 11U, 24);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs_pll), 4U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwritev_locked(chip, (u32 const *)(& rv3), 5U, 24);
  if (r != 0) {
    return (r);
  } else {
  }
  return (0);
}
}
static int zd1211b_al2230_init_hw(struct zd_rf *rf )
{
  int r ;
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct zd_ioreq16 ioreqs1[62U] ;
  u32 rv1[4U] ;
  u32 rv2[11U] ;
  struct zd_ioreq16 ioreqs2[2U] ;
  u32 rv3[3U] ;
  struct zd_ioreq16 ioreqs3[3U] ;
  int tmp___0 ;
  {
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  ioreqs1[0].addr = 36904U;
  ioreqs1[0].value = 137U;
  ioreqs1[1].addr = 36924U;
  ioreqs1[1].value = 32U;
  ioreqs1[2].addr = 36932U;
  ioreqs1[2].value = 43U;
  ioreqs1[3].addr = 36956U;
  ioreqs1[3].value = 64U;
  ioreqs1[4].addr = 36960U;
  ioreqs1[4].value = 32U;
  ioreqs1[5].addr = 36968U;
  ioreqs1[5].value = 147U;
  ioreqs1[6].addr = 36976U;
  ioreqs1[6].value = 62U;
  ioreqs1[7].addr = 36980U;
  ioreqs1[7].value = 0U;
  ioreqs1[8].addr = 36996U;
  ioreqs1[8].value = 40U;
  ioreqs1[9].addr = 37000U;
  ioreqs1[9].value = 48U;
  ioreqs1[10].addr = 37004U;
  ioreqs1[10].value = 62U;
  ioreqs1[11].addr = 37028U;
  ioreqs1[11].value = 36U;
  ioreqs1[12].addr = 37040U;
  ioreqs1[12].value = 50U;
  ioreqs1[13].addr = 37048U;
  ioreqs1[13].value = 153U;
  ioreqs1[14].addr = 37052U;
  ioreqs1[14].value = 30U;
  ioreqs1[15].addr = 37056U;
  ioreqs1[15].value = 6U;
  ioreqs1[16].addr = 37060U;
  ioreqs1[16].value = 249U;
  ioreqs1[17].addr = 37068U;
  ioreqs1[17].value = 1U;
  ioreqs1[18].addr = 37072U;
  ioreqs1[18].value = 128U;
  ioreqs1[19].addr = 37076U;
  ioreqs1[19].value = 126U;
  ioreqs1[20].addr = 37124U;
  ioreqs1[20].value = 0U;
  ioreqs1[21].addr = 37128U;
  ioreqs1[21].value = 0U;
  ioreqs1[22].addr = 37132U;
  ioreqs1[22].value = 0U;
  ioreqs1[23].addr = 37136U;
  ioreqs1[23].value = 0U;
  ioreqs1[24].addr = 37140U;
  ioreqs1[24].value = 40U;
  ioreqs1[25].addr = 37180U;
  ioreqs1[25].value = 88U;
  ioreqs1[26].addr = 37184U;
  ioreqs1[26].value = 48U;
  ioreqs1[27].addr = 37188U;
  ioreqs1[27].value = 48U;
  ioreqs1[28].addr = 37212U;
  ioreqs1[28].value = 10U;
  ioreqs1[29].addr = 37220U;
  ioreqs1[29].value = 4U;
  ioreqs1[30].addr = 37228U;
  ioreqs1[30].value = 0U;
  ioreqs1[31].addr = 37232U;
  ioreqs1[31].value = 10U;
  ioreqs1[32].addr = 37256U;
  ioreqs1[32].value = 141U;
  ioreqs1[33].addr = 37260U;
  ioreqs1[33].value = 0U;
  ioreqs1[34].addr = 37268U;
  ioreqs1[34].value = 19U;
  ioreqs1[35].addr = 37272U;
  ioreqs1[35].value = 39U;
  ioreqs1[36].addr = 37288U;
  ioreqs1[36].value = 36U;
  ioreqs1[37].addr = 37292U;
  ioreqs1[37].value = 42U;
  ioreqs1[38].addr = 37300U;
  ioreqs1[38].value = 19U;
  ioreqs1[39].addr = 37304U;
  ioreqs1[39].value = 31U;
  ioreqs1[40].addr = 37308U;
  ioreqs1[40].value = 31U;
  ioreqs1[41].addr = 37312U;
  ioreqs1[41].value = 31U;
  ioreqs1[42].addr = 37316U;
  ioreqs1[42].value = 39U;
  ioreqs1[43].addr = 37320U;
  ioreqs1[43].value = 39U;
  ioreqs1[44].addr = 37324U;
  ioreqs1[44].value = 38U;
  ioreqs1[45].addr = 37328U;
  ioreqs1[45].value = 36U;
  ioreqs1[46].addr = 37332U;
  ioreqs1[46].value = 250U;
  ioreqs1[47].addr = 37336U;
  ioreqs1[47].value = 250U;
  ioreqs1[48].addr = 37340U;
  ioreqs1[48].value = 16U;
  ioreqs1[49].addr = 37344U;
  ioreqs1[49].value = 79U;
  ioreqs1[50].addr = 37348U;
  ioreqs1[50].value = 108U;
  ioreqs1[51].addr = 37352U;
  ioreqs1[51].value = 252U;
  ioreqs1[52].addr = 37356U;
  ioreqs1[52].value = 87U;
  ioreqs1[53].addr = 37364U;
  ioreqs1[53].value = 173U;
  ioreqs1[54].addr = 37368U;
  ioreqs1[54].value = 108U;
  ioreqs1[55].addr = 37372U;
  ioreqs1[55].value = 3U;
  ioreqs1[56].addr = 37412U;
  ioreqs1[56].value = 80U;
  ioreqs1[57].addr = 37416U;
  ioreqs1[57].value = 168U;
  ioreqs1[58].addr = 37440U;
  ioreqs1[58].value = 172U;
  ioreqs1[59].addr = 37464U;
  ioreqs1[59].value = 13U;
  ioreqs1[60].addr = 37872U;
  ioreqs1[60].value = 52U;
  ioreqs1[61].addr = 37876U;
  ioreqs1[61].value = 52U;
  rv1[0] = 9227472U;
  rv1[1] = 4726208U;
  rv1[2] = 13631232U;
  rv1[3] = 2465792U;
  rv2[0] = 2465792U;
  rv2[1] = 10728176U;
  rv2[2] = 7184400U;
  rv2[3] = 14901888U;
  rv2[4] = 1138688U;
  rv2[5] = 10338336U;
  rv2[6] = 6150912U;
  rv2[7] = 14258176U;
  rv2[8] = 4193232U;
  rv2[9] = 11534336U;
  rv2[10] = 15735296U;
  ioreqs2[0].addr = 37868U;
  ioreqs2[0].value = 47U;
  ioreqs2[1].addr = 37868U;
  ioreqs2[1].value = 127U;
  rv3[0] = 15735552U;
  rv3[1] = 15736320U;
  rv3[2] = 15735296U;
  ioreqs3[0].addr = 37376U;
  ioreqs3[0].value = 20U;
  ioreqs3[1].addr = 37380U;
  ioreqs3[1].value = 18U;
  ioreqs3[2].addr = 37384U;
  ioreqs3[2].value = 16U;
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& zd1211b_ioreqs_shared_1),
                           2U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs1), 62U);
  if (r != 0) {
    return (r);
  } else {
  }
  if ((unsigned int )*((unsigned char *)chip + 11595UL) != 0U || (unsigned int )chip->rf.type == 10U) {
    r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs_init_al2230s),
                             10U);
    if (r != 0) {
      return (r);
    } else {
    }
  } else {
  }
  r = zd_rfwritev_cr_locked(chip, (u32 const *)(& zd1211b_al2230_table), 3U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwritev_cr_locked(chip, (u32 const *)(& rv1), 4U);
  if (r != 0) {
    return (r);
  } else {
  }
  if ((unsigned int )*((unsigned char *)chip + 11595UL) != 0U || (unsigned int )chip->rf.type == 10U) {
    r = zd_rfwrite_locked(chip, 2363392U, 24);
  } else {
    r = zd_rfwrite_locked(chip, 2465792U, 24);
  }
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwritev_cr_locked(chip, (u32 const *)(& rv2), 11U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs2), 2U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwritev_cr_locked(chip, (u32 const *)(& rv3), 3U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs3), 3U);
  if (r != 0) {
    return (r);
  } else {
  }
  tmp___0 = zd1211b_al2230_finalize_rf(chip);
  return (tmp___0);
}
}
static int zd1211_al2230_set_channel(struct zd_rf *rf , u8 channel )
{
  int r ;
  u32 const *rv ;
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct zd_ioreq16 ioreqs[2U] ;
  int tmp___0 ;
  {
  rv = (u32 const *)(& zd1211_al2230_table) + ((unsigned long )channel + 0xffffffffffffffffUL);
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  ioreqs[0].addr = 37416U;
  ioreqs[0].value = 40U;
  ioreqs[1].addr = 37676U;
  ioreqs[1].value = 6U;
  r = zd_rfwritev_locked(chip, rv, 3U, 24);
  if (r != 0) {
    return (r);
  } else {
  }
  tmp___0 = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 2U);
  return (tmp___0);
}
}
static int zd1211b_al2230_set_channel(struct zd_rf *rf , u8 channel )
{
  int r ;
  u32 const *rv ;
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  int tmp___0 ;
  {
  rv = (u32 const *)(& zd1211b_al2230_table) + ((unsigned long )channel + 0xffffffffffffffffUL);
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& zd1211b_ioreqs_shared_1),
                           2U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwritev_cr_locked(chip, rv, 3U);
  if (r != 0) {
    return (r);
  } else {
  }
  tmp___0 = zd1211b_al2230_finalize_rf(chip);
  return (tmp___0);
}
}
static int zd1211_al2230_switch_radio_on(struct zd_rf *rf )
{
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct zd_ioreq16 ioreqs[2U] ;
  int tmp___0 ;
  {
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  ioreqs[0].addr = 36908U;
  ioreqs[0].value = 0U;
  ioreqs[1].addr = 37868U;
  ioreqs[1].value = 63U;
  tmp___0 = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 2U);
  return (tmp___0);
}
}
static int zd1211b_al2230_switch_radio_on(struct zd_rf *rf )
{
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct zd_ioreq16 ioreqs[2U] ;
  int tmp___0 ;
  {
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  ioreqs[0].addr = 36908U;
  ioreqs[0].value = 0U;
  ioreqs[1].addr = 37868U;
  ioreqs[1].value = 127U;
  tmp___0 = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 2U);
  return (tmp___0);
}
}
static int al2230_switch_radio_off(struct zd_rf *rf )
{
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct zd_ioreq16 ioreqs[2U] ;
  int tmp___0 ;
  {
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  ioreqs[0].addr = 36908U;
  ioreqs[0].value = 4U;
  ioreqs[1].addr = 37868U;
  ioreqs[1].value = 47U;
  tmp___0 = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 2U);
  return (tmp___0);
}
}
int zd_rf_init_al2230(struct zd_rf *rf )
{
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  int tmp___0 ;
  {
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  rf->switch_radio_off = & al2230_switch_radio_off;
  tmp___0 = zd_chip_is_zd1211b(chip);
  if (tmp___0 != 0) {
    rf->init_hw = & zd1211b_al2230_init_hw;
    rf->set_channel = & zd1211b_al2230_set_channel;
    rf->switch_radio_on = & zd1211b_al2230_switch_radio_on;
  } else {
    rf->init_hw = & zd1211_al2230_init_hw;
    rf->set_channel = & zd1211_al2230_set_channel;
    rf->switch_radio_on = & zd1211_al2230_switch_radio_on;
  }
  rf->patch_6m_band_edge = & zd_rf_generic_patch_6m;
  rf->patch_cck_gain = 1U;
  return (0);
}
}
void ldv_consume_skb_35(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_36(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_37(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_38(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_41(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_47(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_48(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_49(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_52(struct sk_buff *ldv_func_arg1 ) ;
void ldv_consume_skb_46(struct sk_buff *ldv_func_arg1 ) ;
int zd_rf_init_rf2959(struct zd_rf *rf ) ;
static u32 const rf2959_table[14U][2U] =
  { { 1579385U, 1992294U},
   { 1579401U, 1992294U},
   { 1579417U, 1992294U},
   { 1579433U, 1992294U},
   { 1579449U, 1992294U},
   { 1579465U, 1992294U},
   { 1579481U, 1992294U},
   { 1579497U, 1992294U},
   { 1579513U, 1992294U},
   { 1579529U, 1992294U},
   { 1579545U, 1992294U},
   { 1579561U, 1992294U},
   { 1579577U, 1992294U},
   { 1579616U, 1835008U}};
static int rf2959_init_hw(struct zd_rf *rf )
{
  int r ;
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct zd_ioreq16 ioreqs[75U] ;
  u32 rv[17U] ;
  int tmp___0 ;
  {
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  ioreqs[0].addr = 36872U;
  ioreqs[0].value = 30U;
  ioreqs[1].addr = 36900U;
  ioreqs[1].value = 32U;
  ioreqs[2].addr = 36904U;
  ioreqs[2].value = 137U;
  ioreqs[3].addr = 36908U;
  ioreqs[3].value = 0U;
  ioreqs[4].addr = 36924U;
  ioreqs[4].value = 208U;
  ioreqs[5].addr = 36932U;
  ioreqs[5].value = 104U;
  ioreqs[6].addr = 36940U;
  ioreqs[6].value = 74U;
  ioreqs[7].addr = 36944U;
  ioreqs[7].value = 12U;
  ioreqs[8].addr = 36948U;
  ioreqs[8].value = 14U;
  ioreqs[9].addr = 36956U;
  ioreqs[9].value = 72U;
  ioreqs[10].addr = 36960U;
  ioreqs[10].value = 20U;
  ioreqs[11].addr = 36968U;
  ioreqs[11].value = 144U;
  ioreqs[12].addr = 36972U;
  ioreqs[12].value = 48U;
  ioreqs[13].addr = 36980U;
  ioreqs[13].value = 32U;
  ioreqs[14].addr = 36988U;
  ioreqs[14].value = 178U;
  ioreqs[15].addr = 36992U;
  ioreqs[15].value = 67U;
  ioreqs[16].addr = 36996U;
  ioreqs[16].value = 40U;
  ioreqs[17].addr = 37016U;
  ioreqs[17].value = 48U;
  ioreqs[18].addr = 37000U;
  ioreqs[18].value = 15U;
  ioreqs[19].addr = 37004U;
  ioreqs[19].value = 240U;
  ioreqs[20].addr = 37028U;
  ioreqs[20].value = 42U;
  ioreqs[21].addr = 37048U;
  ioreqs[21].value = 127U;
  ioreqs[22].addr = 37052U;
  ioreqs[22].value = 30U;
  ioreqs[23].addr = 37068U;
  ioreqs[23].value = 197U;
  ioreqs[24].addr = 37072U;
  ioreqs[24].value = 197U;
  ioreqs[25].addr = 37076U;
  ioreqs[25].value = 197U;
  ioreqs[26].addr = 37180U;
  ioreqs[26].value = 88U;
  ioreqs[27].addr = 37184U;
  ioreqs[27].value = 48U;
  ioreqs[28].addr = 37188U;
  ioreqs[28].value = 48U;
  ioreqs[29].addr = 37192U;
  ioreqs[29].value = 0U;
  ioreqs[30].addr = 37196U;
  ioreqs[30].value = 36U;
  ioreqs[31].addr = 37200U;
  ioreqs[31].value = 4U;
  ioreqs[32].addr = 37204U;
  ioreqs[32].value = 0U;
  ioreqs[33].addr = 37208U;
  ioreqs[33].value = 16U;
  ioreqs[34].addr = 37212U;
  ioreqs[34].value = 42U;
  ioreqs[35].addr = 37216U;
  ioreqs[35].value = 16U;
  ioreqs[36].addr = 37220U;
  ioreqs[36].value = 36U;
  ioreqs[37].addr = 37224U;
  ioreqs[37].value = 24U;
  ioreqs[38].addr = 37228U;
  ioreqs[38].value = 0U;
  ioreqs[39].addr = 37232U;
  ioreqs[39].value = 10U;
  ioreqs[40].addr = 37236U;
  ioreqs[40].value = 0U;
  ioreqs[41].addr = 37240U;
  ioreqs[41].value = 1U;
  ioreqs[42].addr = 37244U;
  ioreqs[42].value = 0U;
  ioreqs[43].addr = 37248U;
  ioreqs[43].value = 64U;
  ioreqs[44].addr = 37252U;
  ioreqs[44].value = 55U;
  ioreqs[45].addr = 37256U;
  ioreqs[45].value = 5U;
  ioreqs[46].addr = 37260U;
  ioreqs[46].value = 40U;
  ioreqs[47].addr = 37264U;
  ioreqs[47].value = 0U;
  ioreqs[48].addr = 37268U;
  ioreqs[48].value = 19U;
  ioreqs[49].addr = 37272U;
  ioreqs[49].value = 39U;
  ioreqs[50].addr = 37276U;
  ioreqs[50].value = 39U;
  ioreqs[51].addr = 37280U;
  ioreqs[51].value = 24U;
  ioreqs[52].addr = 37284U;
  ioreqs[52].value = 18U;
  ioreqs[53].addr = 37288U;
  ioreqs[53].value = 26U;
  ioreqs[54].addr = 37292U;
  ioreqs[54].value = 36U;
  ioreqs[55].addr = 37296U;
  ioreqs[55].value = 10U;
  ioreqs[56].addr = 37300U;
  ioreqs[56].value = 19U;
  ioreqs[57].addr = 37304U;
  ioreqs[57].value = 47U;
  ioreqs[58].addr = 37308U;
  ioreqs[58].value = 39U;
  ioreqs[59].addr = 37312U;
  ioreqs[59].value = 39U;
  ioreqs[60].addr = 37316U;
  ioreqs[60].value = 39U;
  ioreqs[61].addr = 37320U;
  ioreqs[61].value = 39U;
  ioreqs[62].addr = 37324U;
  ioreqs[62].value = 64U;
  ioreqs[63].addr = 37328U;
  ioreqs[63].value = 64U;
  ioreqs[64].addr = 37332U;
  ioreqs[64].value = 240U;
  ioreqs[65].addr = 37336U;
  ioreqs[65].value = 240U;
  ioreqs[66].addr = 37340U;
  ioreqs[66].value = 22U;
  ioreqs[67].addr = 37352U;
  ioreqs[67].value = 0U;
  ioreqs[68].addr = 37372U;
  ioreqs[68].value = 3U;
  ioreqs[69].addr = 37388U;
  ioreqs[69].value = 8U;
  ioreqs[70].addr = 37416U;
  ioreqs[70].value = 40U;
  ioreqs[71].addr = 37456U;
  ioreqs[71].value = 68U;
  ioreqs[72].addr = 37464U;
  ioreqs[72].value = 16U;
  ioreqs[73].addr = 37540U;
  ioreqs[73].value = 187U;
  ioreqs[74].addr = 37544U;
  ioreqs[74].value = 187U;
  rv[0] = 7U;
  rv[1] = 515395U;
  rv[2] = 526681U;
  rv[3] = 943718U;
  rv[4] = 1141335U;
  rv[5] = 1563971U;
  rv[6] = 1579513U;
  rv[7] = 1992294U;
  rv[8] = 2180436U;
  rv[9] = 2484218U;
  rv[10] = 2621434U;
  rv[11] = 2703656U;
  rv[12] = 2883584U;
  rv[13] = 3145728U;
  rv[14] = 3407872U;
  rv[15] = 3677711U;
  rv[16] = 7084047U;
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 75U);
  if (r != 0) {
    return (r);
  } else {
  }
  tmp___0 = zd_rfwritev_locked(chip, (u32 const *)(& rv), 17U, 24);
  return (tmp___0);
}
}
static int rf2959_set_channel(struct zd_rf *rf , u8 channel )
{
  int i ;
  int r ;
  u32 const *rv ;
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  {
  rv = (u32 const *)(& rf2959_table) + ((unsigned long )channel + 0xffffffffffffffffUL);
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  i = 0;
  goto ldv_47587;
  ldv_47586:
  r = zd_rfwrite_locked(chip, *(rv + (unsigned long )i), 24);
  if (r != 0) {
    return (r);
  } else {
  }
  i = i + 1;
  ldv_47587: ;
  if (i <= 1) {
    goto ldv_47586;
  } else {
  }
  return (0);
}
}
static int rf2959_switch_radio_on(struct zd_rf *rf )
{
  struct zd_ioreq16 ioreqs[2U] ;
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  int tmp___0 ;
  {
  ioreqs[0].addr = 36904U;
  ioreqs[0].value = 137U;
  ioreqs[1].addr = 36908U;
  ioreqs[1].value = 0U;
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  tmp___0 = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 2U);
  return (tmp___0);
}
}
static int rf2959_switch_radio_off(struct zd_rf *rf )
{
  struct zd_ioreq16 ioreqs[2U] ;
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  int tmp___0 ;
  {
  ioreqs[0].addr = 36904U;
  ioreqs[0].value = 21U;
  ioreqs[1].addr = 36908U;
  ioreqs[1].value = 129U;
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  tmp___0 = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 2U);
  return (tmp___0);
}
}
int zd_rf_init_rf2959(struct zd_rf *rf )
{
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  int tmp___0 ;
  {
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  tmp___0 = zd_chip_is_zd1211b(chip);
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (chip->usb.intf)->dev), "RF2959 is currently not supported for ZD1211B devices\n");
    return (-19);
  } else {
  }
  rf->init_hw = & rf2959_init_hw;
  rf->set_channel = & rf2959_set_channel;
  rf->switch_radio_on = & rf2959_switch_radio_on;
  rf->switch_radio_off = & rf2959_switch_radio_off;
  return (0);
}
}
void ldv_consume_skb_46(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_47(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_48(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_49(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_52(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_58(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_59(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_60(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_63(struct sk_buff *ldv_func_arg1 ) ;
void ldv_consume_skb_57(struct sk_buff *ldv_func_arg1 ) ;
int zd_rf_init_al7230b(struct zd_rf *rf ) ;
static u32 const chan_rv[14U][2U] =
  { { 650240U, 9227464U},
   { 650240U, 9227480U},
   { 650240U, 9227456U},
   { 650240U, 9227472U},
   { 388096U, 9227464U},
   { 388096U, 9227480U},
   { 388096U, 9227456U},
   { 388096U, 9227472U},
   { 912384U, 9227464U},
   { 912384U, 9227480U},
   { 912384U, 9227456U},
   { 912384U, 9227472U},
   { 257024U, 9227464U},
   { 257024U, 8808032U}};
static u32 const std_rv[10U] =
  { 5240865U, 12975100U, 2223102U, 11523073U,
        7140714U, 14696563U, 1654134U, 10344516U,
        5242887U, 14204944U};
static u32 const rv_init1[4U] = { 3969024U, 12582911U, 7340032U, 15818072U};
static u32 const rv_init2[3U] = { 15818073U, 15818076U, 15818072U};
static struct zd_ioreq16 const ioreqs_sw[5U] = { {37376U, 20U},
        {37380U, 18U},
        {37384U, 16U},
        {37016U, 56U},
        {37408U, 223U}};
static int zd1211b_al7230b_finalize(struct zd_chip *chip )
{
  int r ;
  struct zd_ioreq16 ioreqs[9U] ;
  int tmp ;
  {
  ioreqs[0].addr = 37184U;
  ioreqs[0].value = 48U;
  ioreqs[1].addr = 37188U;
  ioreqs[1].value = 48U;
  ioreqs[2].addr = 37180U;
  ioreqs[2].value = 88U;
  ioreqs[3].addr = 36912U;
  ioreqs[3].value = 240U;
  ioreqs[4].addr = 37172U;
  ioreqs[4].value = 27U;
  ioreqs[5].addr = 37176U;
  ioreqs[5].value = 88U;
  ioreqs[6].addr = 37676U;
  ioreqs[6].value = 4U;
  ioreqs[7].addr = (unsigned short)0;
  ioreqs[7].value = (unsigned short)0;
  ioreqs[8].addr = 37824U;
  ioreqs[8].value = 128U;
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 9U);
  if (r != 0) {
    return (r);
  } else {
  }
  if ((unsigned int )*((unsigned char *)chip + 11594UL) != 0U) {
    r = zd_iowrite16_locked(chip, 229, 36900);
    if (r != 0) {
      return (r);
    } else {
    }
  } else {
  }
  tmp = zd_iowrite16_locked(chip, 4, 37676);
  return (tmp);
}
}
static int zd1211_al7230b_init_hw(struct zd_rf *rf )
{
  int r ;
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct zd_ioreq16 ioreqs_1[56U] ;
  struct zd_ioreq16 ioreqs_2[6U] ;
  {
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  ioreqs_1[0].addr = 37824U;
  ioreqs_1[0].value = 87U;
  ioreqs_1[1].addr = (unsigned short)0;
  ioreqs_1[1].value = (unsigned short)0;
  ioreqs_1[2].addr = 36924U;
  ioreqs_1[2].value = 32U;
  ioreqs_1[3].addr = 36956U;
  ioreqs_1[3].value = 64U;
  ioreqs_1[4].addr = 36960U;
  ioreqs_1[4].value = 32U;
  ioreqs_1[5].addr = 36968U;
  ioreqs_1[5].value = 17U;
  ioreqs_1[6].addr = 36976U;
  ioreqs_1[6].value = 62U;
  ioreqs_1[7].addr = 36980U;
  ioreqs_1[7].value = 0U;
  ioreqs_1[8].addr = 37040U;
  ioreqs_1[8].value = 51U;
  ioreqs_1[9].addr = 37288U;
  ioreqs_1[9].value = 34U;
  ioreqs_1[10].addr = 37292U;
  ioreqs_1[10].value = 26U;
  ioreqs_1[11].addr = 37300U;
  ioreqs_1[11].value = 9U;
  ioreqs_1[12].addr = 37304U;
  ioreqs_1[12].value = 39U;
  ioreqs_1[13].addr = 37308U;
  ioreqs_1[13].value = 43U;
  ioreqs_1[14].addr = 37312U;
  ioreqs_1[14].value = 43U;
  ioreqs_1[15].addr = 37340U;
  ioreqs_1[15].value = 10U;
  ioreqs_1[16].addr = 37352U;
  ioreqs_1[16].value = 252U;
  ioreqs_1[17].addr = 36904U;
  ioreqs_1[17].value = 137U;
  ioreqs_1[18].addr = 36932U;
  ioreqs_1[18].value = 40U;
  ioreqs_1[19].addr = 36968U;
  ioreqs_1[19].value = 147U;
  ioreqs_1[20].addr = 37000U;
  ioreqs_1[20].value = 48U;
  ioreqs_1[21].addr = 37004U;
  ioreqs_1[21].value = 62U;
  ioreqs_1[22].addr = 37028U;
  ioreqs_1[22].value = 36U;
  ioreqs_1[23].addr = 37040U;
  ioreqs_1[23].value = 50U;
  ioreqs_1[24].addr = 37048U;
  ioreqs_1[24].value = 150U;
  ioreqs_1[25].addr = 37052U;
  ioreqs_1[25].value = 30U;
  ioreqs_1[26].addr = 37180U;
  ioreqs_1[26].value = 88U;
  ioreqs_1[27].addr = 37184U;
  ioreqs_1[27].value = 48U;
  ioreqs_1[28].addr = 37188U;
  ioreqs_1[28].value = 48U;
  ioreqs_1[29].addr = 37212U;
  ioreqs_1[29].value = 10U;
  ioreqs_1[30].addr = 37220U;
  ioreqs_1[30].value = 4U;
  ioreqs_1[31].addr = 37232U;
  ioreqs_1[31].value = 10U;
  ioreqs_1[32].addr = 37260U;
  ioreqs_1[32].value = 40U;
  ioreqs_1[33].addr = 37264U;
  ioreqs_1[33].value = 2U;
  ioreqs_1[34].addr = 37268U;
  ioreqs_1[34].value = 19U;
  ioreqs_1[35].addr = 37272U;
  ioreqs_1[35].value = 39U;
  ioreqs_1[36].addr = 37288U;
  ioreqs_1[36].value = 34U;
  ioreqs_1[37].addr = 37292U;
  ioreqs_1[37].value = 63U;
  ioreqs_1[38].addr = 37300U;
  ioreqs_1[38].value = 9U;
  ioreqs_1[39].addr = 37304U;
  ioreqs_1[39].value = 31U;
  ioreqs_1[40].addr = 37308U;
  ioreqs_1[40].value = 31U;
  ioreqs_1[41].addr = 37312U;
  ioreqs_1[41].value = 31U;
  ioreqs_1[42].addr = 37316U;
  ioreqs_1[42].value = 39U;
  ioreqs_1[43].addr = 37320U;
  ioreqs_1[43].value = 39U;
  ioreqs_1[44].addr = 37324U;
  ioreqs_1[44].value = 36U;
  ioreqs_1[45].addr = 37328U;
  ioreqs_1[45].value = 63U;
  ioreqs_1[46].addr = 37332U;
  ioreqs_1[46].value = 250U;
  ioreqs_1[47].addr = 37336U;
  ioreqs_1[47].value = 252U;
  ioreqs_1[48].addr = 37340U;
  ioreqs_1[48].value = 16U;
  ioreqs_1[49].addr = 37344U;
  ioreqs_1[49].value = 79U;
  ioreqs_1[50].addr = 37348U;
  ioreqs_1[50].value = 119U;
  ioreqs_1[51].addr = 37412U;
  ioreqs_1[51].value = 136U;
  ioreqs_1[52].addr = 37416U;
  ioreqs_1[52].value = 168U;
  ioreqs_1[53].addr = 37872U;
  ioreqs_1[53].value = 52U;
  ioreqs_1[54].addr = 37876U;
  ioreqs_1[54].value = 52U;
  ioreqs_1[55].addr = 37868U;
  ioreqs_1[55].value = 47U;
  ioreqs_2[0].addr = 37868U;
  ioreqs_2[0].value = 63U;
  ioreqs_2[1].addr = 37376U;
  ioreqs_2[1].value = 20U;
  ioreqs_2[2].addr = 37380U;
  ioreqs_2[2].value = 18U;
  ioreqs_2[3].addr = 37384U;
  ioreqs_2[3].value = 16U;
  ioreqs_2[4].addr = 37016U;
  ioreqs_2[4].value = 56U;
  ioreqs_2[5].addr = 37408U;
  ioreqs_2[5].value = 223U;
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs_1), 56U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwritev_cr_locked(chip, (u32 const *)(& chan_rv), 2U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwritev_cr_locked(chip, (u32 const *)(& std_rv), 10U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwritev_cr_locked(chip, (u32 const *)(& rv_init1), 4U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs_2), 6U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwritev_cr_locked(chip, (u32 const *)(& rv_init2), 3U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_iowrite16_locked(chip, 6, 37676);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_iowrite16_locked(chip, 128, 37824);
  if (r != 0) {
    return (r);
  } else {
  }
  return (0);
}
}
static int zd1211b_al7230b_init_hw(struct zd_rf *rf )
{
  int r ;
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct zd_ioreq16 ioreqs_1[45U] ;
  struct zd_ioreq16 ioreqs_new_phy[7U] ;
  struct zd_ioreq16 ioreqs_old_phy[7U] ;
  struct zd_ioreq16 ioreqs_2[21U] ;
  struct zd_ioreq16 ioreqs_3[6U] ;
  int tmp___0 ;
  {
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  ioreqs_1[0].addr = 37824U;
  ioreqs_1[0].value = 87U;
  ioreqs_1[1].addr = 36900U;
  ioreqs_1[1].value = 9U;
  ioreqs_1[2].addr = (unsigned short)0;
  ioreqs_1[2].value = (unsigned short)0;
  ioreqs_1[3].addr = 36904U;
  ioreqs_1[3].value = 139U;
  ioreqs_1[4].addr = 36924U;
  ioreqs_1[4].value = 32U;
  ioreqs_1[5].addr = 36932U;
  ioreqs_1[5].value = 43U;
  ioreqs_1[6].addr = 36944U;
  ioreqs_1[6].value = 16U;
  ioreqs_1[7].addr = 36956U;
  ioreqs_1[7].value = 64U;
  ioreqs_1[8].addr = 36960U;
  ioreqs_1[8].value = 32U;
  ioreqs_1[9].addr = 36968U;
  ioreqs_1[9].value = 147U;
  ioreqs_1[10].addr = 36976U;
  ioreqs_1[10].value = 62U;
  ioreqs_1[11].addr = 36980U;
  ioreqs_1[11].value = 0U;
  ioreqs_1[12].addr = 36996U;
  ioreqs_1[12].value = 40U;
  ioreqs_1[13].addr = 37000U;
  ioreqs_1[13].value = 48U;
  ioreqs_1[14].addr = 37004U;
  ioreqs_1[14].value = 62U;
  ioreqs_1[15].addr = 37028U;
  ioreqs_1[15].value = 36U;
  ioreqs_1[16].addr = 37040U;
  ioreqs_1[16].value = 50U;
  ioreqs_1[17].addr = 37048U;
  ioreqs_1[17].value = 153U;
  ioreqs_1[18].addr = 37052U;
  ioreqs_1[18].value = 30U;
  ioreqs_1[19].addr = 37056U;
  ioreqs_1[19].value = 0U;
  ioreqs_1[20].addr = 37060U;
  ioreqs_1[20].value = 0U;
  ioreqs_1[21].addr = 37068U;
  ioreqs_1[21].value = 1U;
  ioreqs_1[22].addr = 37072U;
  ioreqs_1[22].value = 128U;
  ioreqs_1[23].addr = 37076U;
  ioreqs_1[23].value = 126U;
  ioreqs_1[24].addr = 37124U;
  ioreqs_1[24].value = 0U;
  ioreqs_1[25].addr = 37128U;
  ioreqs_1[25].value = 0U;
  ioreqs_1[26].addr = 37132U;
  ioreqs_1[26].value = 0U;
  ioreqs_1[27].addr = 37136U;
  ioreqs_1[27].value = 0U;
  ioreqs_1[28].addr = 37140U;
  ioreqs_1[28].value = 40U;
  ioreqs_1[29].addr = 37180U;
  ioreqs_1[29].value = 88U;
  ioreqs_1[30].addr = 37184U;
  ioreqs_1[30].value = 48U;
  ioreqs_1[31].addr = 37188U;
  ioreqs_1[31].value = 48U;
  ioreqs_1[32].addr = 37212U;
  ioreqs_1[32].value = 10U;
  ioreqs_1[33].addr = 37220U;
  ioreqs_1[33].value = 4U;
  ioreqs_1[34].addr = 37224U;
  ioreqs_1[34].value = 88U;
  ioreqs_1[35].addr = 37228U;
  ioreqs_1[35].value = 0U;
  ioreqs_1[36].addr = 37232U;
  ioreqs_1[36].value = 10U;
  ioreqs_1[37].addr = 37256U;
  ioreqs_1[37].value = 141U;
  ioreqs_1[38].addr = 37260U;
  ioreqs_1[38].value = 0U;
  ioreqs_1[39].addr = 37264U;
  ioreqs_1[39].value = 2U;
  ioreqs_1[40].addr = 37268U;
  ioreqs_1[40].value = 19U;
  ioreqs_1[41].addr = 37272U;
  ioreqs_1[41].value = 39U;
  ioreqs_1[42].addr = 37288U;
  ioreqs_1[42].value = 32U;
  ioreqs_1[43].addr = 37300U;
  ioreqs_1[43].value = 19U;
  ioreqs_1[44].addr = 37312U;
  ioreqs_1[44].value = 31U;
  ioreqs_new_phy[0].addr = 37292U;
  ioreqs_new_phy[0].value = 40U;
  ioreqs_new_phy[1].addr = 37304U;
  ioreqs_new_phy[1].value = 31U;
  ioreqs_new_phy[2].addr = 37308U;
  ioreqs_new_phy[2].value = 31U;
  ioreqs_new_phy[3].addr = 37328U;
  ioreqs_new_phy[3].value = 42U;
  ioreqs_new_phy[4].addr = 37336U;
  ioreqs_new_phy[4].value = 250U;
  ioreqs_new_phy[5].addr = 37340U;
  ioreqs_new_phy[5].value = 18U;
  ioreqs_new_phy[6].addr = 37348U;
  ioreqs_new_phy[6].value = 108U;
  ioreqs_old_phy[0].addr = 37292U;
  ioreqs_old_phy[0].value = 36U;
  ioreqs_old_phy[1].addr = 37304U;
  ioreqs_old_phy[1].value = 19U;
  ioreqs_old_phy[2].addr = 37308U;
  ioreqs_old_phy[2].value = 19U;
  ioreqs_old_phy[3].addr = 37328U;
  ioreqs_old_phy[3].value = 36U;
  ioreqs_old_phy[4].addr = 37336U;
  ioreqs_old_phy[4].value = 252U;
  ioreqs_old_phy[5].addr = 37340U;
  ioreqs_old_phy[5].value = 17U;
  ioreqs_old_phy[6].addr = 37348U;
  ioreqs_old_phy[6].value = 106U;
  ioreqs_2[0].addr = 37316U;
  ioreqs_2[0].value = 39U;
  ioreqs_2[1].addr = 37320U;
  ioreqs_2[1].value = 39U;
  ioreqs_2[2].addr = 37324U;
  ioreqs_2[2].value = 36U;
  ioreqs_2[3].addr = 37332U;
  ioreqs_2[3].value = 250U;
  ioreqs_2[4].addr = 37344U;
  ioreqs_2[4].value = 79U;
  ioreqs_2[5].addr = 37352U;
  ioreqs_2[5].value = 252U;
  ioreqs_2[6].addr = 37356U;
  ioreqs_2[6].value = 87U;
  ioreqs_2[7].addr = 37364U;
  ioreqs_2[7].value = 173U;
  ioreqs_2[8].addr = 37368U;
  ioreqs_2[8].value = 108U;
  ioreqs_2[9].addr = 37372U;
  ioreqs_2[9].value = 3U;
  ioreqs_2[10].addr = 37384U;
  ioreqs_2[10].value = 16U;
  ioreqs_2[11].addr = 37388U;
  ioreqs_2[11].value = 0U;
  ioreqs_2[12].addr = 37412U;
  ioreqs_2[12].value = 80U;
  ioreqs_2[13].addr = 37416U;
  ioreqs_2[13].value = 168U;
  ioreqs_2[14].addr = 37440U;
  ioreqs_2[14].value = 172U;
  ioreqs_2[15].addr = 37456U;
  ioreqs_2[15].value = 64U;
  ioreqs_2[16].addr = 37460U;
  ioreqs_2[16].value = 64U;
  ioreqs_2[17].addr = 37464U;
  ioreqs_2[17].value = 26U;
  ioreqs_2[18].addr = 37872U;
  ioreqs_2[18].value = 52U;
  ioreqs_2[19].addr = 37876U;
  ioreqs_2[19].value = 52U;
  ioreqs_2[20].addr = 37868U;
  ioreqs_2[20].value = 47U;
  ioreqs_3[0].addr = 37868U;
  ioreqs_3[0].value = 127U;
  ioreqs_3[1].addr = 37376U;
  ioreqs_3[1].value = 20U;
  ioreqs_3[2].addr = 37380U;
  ioreqs_3[2].value = 18U;
  ioreqs_3[3].addr = 37384U;
  ioreqs_3[3].value = 16U;
  ioreqs_3[4].addr = 37016U;
  ioreqs_3[4].value = 56U;
  ioreqs_3[5].addr = 37408U;
  ioreqs_3[5].value = 223U;
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs_1), 45U);
  if (r != 0) {
    return (r);
  } else {
  }
  if ((unsigned int )*((unsigned char *)chip + 11594UL) != 0U) {
    r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs_new_phy),
                             7U);
  } else {
    r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs_old_phy),
                             7U);
  }
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs_2), 21U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwritev_cr_locked(chip, (u32 const *)(& chan_rv), 2U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwritev_cr_locked(chip, (u32 const *)(& std_rv), 10U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwritev_cr_locked(chip, (u32 const *)(& rv_init1), 4U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs_3), 6U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwritev_cr_locked(chip, (u32 const *)(& rv_init2), 3U);
  if (r != 0) {
    return (r);
  } else {
  }
  tmp___0 = zd1211b_al7230b_finalize(chip);
  return (tmp___0);
}
}
static int zd1211_al7230b_set_channel(struct zd_rf *rf , u8 channel )
{
  int r ;
  u32 const *rv ;
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct zd_ioreq16 ioreqs[3U] ;
  int tmp___0 ;
  {
  rv = (u32 const *)(& chan_rv) + ((unsigned long )channel + 0xffffffffffffffffUL);
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  ioreqs[0].addr = 37868U;
  ioreqs[0].value = 63U;
  ioreqs[1].addr = 37676U;
  ioreqs[1].value = 6U;
  ioreqs[2].addr = 37824U;
  ioreqs[2].value = 8U;
  r = zd_iowrite16_locked(chip, 87, 37824);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_iowrite16_locked(chip, 47, 37868);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwritev_cr_locked(chip, (u32 const *)(& std_rv), 10U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwrite_cr_locked(chip, 3969024U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwrite_cr_locked(chip, 15818072U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs_sw), 5U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwritev_cr_locked(chip, rv, 2U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwrite_cr_locked(chip, 3969024U);
  if (r != 0) {
    return (r);
  } else {
  }
  tmp___0 = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 3U);
  return (tmp___0);
}
}
static int zd1211b_al7230b_set_channel(struct zd_rf *rf , u8 channel )
{
  int r ;
  u32 const *rv ;
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  int tmp___0 ;
  {
  rv = (u32 const *)(& chan_rv) + ((unsigned long )channel + 0xffffffffffffffffUL);
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  r = zd_iowrite16_locked(chip, 87, 37824);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_iowrite16_locked(chip, 228, 36900);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_iowrite16_locked(chip, 47, 37868);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwritev_cr_locked(chip, (u32 const *)(& std_rv), 10U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwrite_cr_locked(chip, 3969024U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwrite_cr_locked(chip, 15818072U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs_sw), 5U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwritev_cr_locked(chip, rv, 2U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwrite_cr_locked(chip, 3969024U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_iowrite16_locked(chip, 127, 37868);
  if (r != 0) {
    return (r);
  } else {
  }
  tmp___0 = zd1211b_al7230b_finalize(chip);
  return (tmp___0);
}
}
static int zd1211_al7230b_switch_radio_on(struct zd_rf *rf )
{
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct zd_ioreq16 ioreqs[2U] ;
  int tmp___0 ;
  {
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  ioreqs[0].addr = 36908U;
  ioreqs[0].value = 0U;
  ioreqs[1].addr = 37868U;
  ioreqs[1].value = 63U;
  tmp___0 = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 2U);
  return (tmp___0);
}
}
static int zd1211b_al7230b_switch_radio_on(struct zd_rf *rf )
{
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct zd_ioreq16 ioreqs[2U] ;
  int tmp___0 ;
  {
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  ioreqs[0].addr = 36908U;
  ioreqs[0].value = 0U;
  ioreqs[1].addr = 37868U;
  ioreqs[1].value = 127U;
  tmp___0 = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 2U);
  return (tmp___0);
}
}
static int al7230b_switch_radio_off(struct zd_rf *rf )
{
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct zd_ioreq16 ioreqs[2U] ;
  int tmp___0 ;
  {
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  ioreqs[0].addr = 36908U;
  ioreqs[0].value = 4U;
  ioreqs[1].addr = 37868U;
  ioreqs[1].value = 47U;
  tmp___0 = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 2U);
  return (tmp___0);
}
}
static int zd1211b_al7230b_patch_6m(struct zd_rf *rf , u8 channel )
{
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct zd_ioreq16 ioreqs[2U] ;
  int tmp___0 ;
  {
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  ioreqs[0].addr = 37376U;
  ioreqs[0].value = 20U;
  ioreqs[1].addr = 37380U;
  ioreqs[1].value = 18U;
  if ((unsigned int )channel == 1U) {
    ioreqs[0].value = 14U;
    ioreqs[1].value = 16U;
  } else
  if ((unsigned int )channel == 11U) {
    ioreqs[0].value = 16U;
    ioreqs[1].value = 16U;
  } else {
  }
  dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() patching for channel %d\n",
             "zd1211b_al7230b_patch_6m", (int )channel);
  tmp___0 = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 2U);
  return (tmp___0);
}
}
int zd_rf_init_al7230b(struct zd_rf *rf )
{
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  int tmp___0 ;
  {
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  tmp___0 = zd_chip_is_zd1211b(chip);
  if (tmp___0 != 0) {
    rf->init_hw = & zd1211b_al7230b_init_hw;
    rf->switch_radio_on = & zd1211b_al7230b_switch_radio_on;
    rf->set_channel = & zd1211b_al7230b_set_channel;
    rf->patch_6m_band_edge = & zd1211b_al7230b_patch_6m;
  } else {
    rf->init_hw = & zd1211_al7230b_init_hw;
    rf->switch_radio_on = & zd1211_al7230b_switch_radio_on;
    rf->set_channel = & zd1211_al7230b_set_channel;
    rf->patch_6m_band_edge = & zd_rf_generic_patch_6m;
    rf->patch_cck_gain = 1U;
  }
  rf->switch_radio_off = & al7230b_switch_radio_off;
  return (0);
}
}
void ldv_consume_skb_57(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_58(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_59(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_60(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_63(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_69(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_70(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_71(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_74(struct sk_buff *ldv_func_arg1 ) ;
void ldv_consume_skb_68(struct sk_buff *ldv_func_arg1 ) ;
int zd_rf_init_uw2453(struct zd_rf *rf ) ;
static u8 const uw2453_std_synth[14U] =
  { 71U, 71U, 103U, 103U,
        103U, 103U, 87U, 87U,
        87U, 87U, 119U, 119U,
        119U, 79U};
static u16 const uw2453_synth_divide[14U] =
  { 2457U, 2459U, 2456U, 2458U,
        2457U, 2459U, 2456U, 2458U,
        2457U, 2459U, 2456U, 2458U,
        2457U, 3276U};
static u16 const uw2453_std_vco_cfg[11U][7U] =
  { { 26189U, 24653U, 26229U, 25717U,
            26197U, 25685U, 26213U},
   { 26221U, 24685U, 26189U, 25677U,
            26229U, 25717U, 26197U},
   { 26205U, 24669U, 26221U, 25709U,
            26189U, 25677U, 26229U},
   { 26237U, 24701U, 26205U, 25693U,
            26221U, 25709U, 26189U},
   { 26179U, 24643U, 26237U, 25725U,
            26205U, 25693U, 26221U},
   { 26211U, 24675U, 26179U, 25667U,
            26237U, 25725U, 26205U},
   { 26195U, 24659U, 26211U, 25699U,
            26179U, 25667U, 26237U},
   { 26227U, 24691U, 26195U, 25683U,
            26211U, 25699U, 26179U},
   { 26187U, 24651U, 26227U, 25715U,
            26195U, 25683U, 26211U},
   { 26219U, 24683U, 26187U, 25675U,
            26227U, 25715U, 26195U},
   { 26203U, 24667U, 26219U, 25707U,
            26187U, 25675U, 26227U}};
static u16 const uw2453_autocal_synth[14U] =
  { 26695U, 26695U, 26727U, 26727U,
        26727U, 26727U, 26711U, 26711U,
        26711U, 26711U, 26743U, 26743U,
        26743U, 26703U};
static unsigned short const UW2453_AUTOCAL_VCO_CFG = 26210U;
static u32 uw2453_txgain[19U] =
  { 58131U, 64275U, 57491U, 63635U,
        60051U, 127123U, 128147U, 128659U,
        127891U, 127835U, 124635U, 130879U,
        131071U, 221655U, 229311U, 262027U,
        261939U, 260927U, 262143U};
static int uw2453_synth_set_channel(struct zd_chip *chip , int channel , bool autocal )
{
  int r ;
  int idx ;
  u32 val ;
  int tmp ;
  {
  idx = channel + -1;
  if ((int )autocal) {
    val = (u32 )((int )uw2453_autocal_synth[idx] | 1048576);
  } else {
    val = (u32 )((int )uw2453_std_synth[idx] | 1048576);
  }
  r = zd_rfwrite_locked(chip, val, 24);
  if (r != 0) {
    return (r);
  } else {
  }
  tmp = zd_rfwrite_locked(chip, (u32 )((int )uw2453_synth_divide[idx] | 2097152),
                          24);
  return (tmp);
}
}
static int uw2453_write_vco_cfg(struct zd_chip *chip , u16 value )
{
  u32 val ;
  int tmp ;
  {
  val = (u32 )((int )value | 262144);
  tmp = zd_rfwrite_locked(chip, (val & 1048575U) | 3145728U, 24);
  return (tmp);
}
}
static int uw2453_init_mode(struct zd_chip *chip )
{
  u32 rv[4U] ;
  int tmp ;
  {
  rv[0] = 155544U;
  rv[1] = 155546U;
  rv[2] = 155540U;
  rv[3] = 163796U;
  tmp = zd_rfwritev_locked(chip, (u32 const *)(& rv), 4U, 24);
  return (tmp);
}
}
static int uw2453_set_tx_gain_level(struct zd_chip *chip , int channel )
{
  u8 int_value ;
  int tmp ;
  {
  int_value = chip->pwr_int_values[channel + -1];
  if ((unsigned int )int_value > 18U) {
    dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() can\'t configure TX gain for int value %x on channel %d\n",
               "uw2453_set_tx_gain_level", (int )int_value, channel);
    return (0);
  } else {
  }
  tmp = zd_rfwrite_locked(chip, (uw2453_txgain[(int )int_value] & 1048575U) | 7340032U,
                          24);
  return (tmp);
}
}
static int uw2453_init_hw(struct zd_rf *rf )
{
  int i ;
  int r ;
  int found_config ;
  u16 intr_status ;
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct zd_ioreq16 ioreqs[59U] ;
  u32 rv[9U] ;
  int tmp___0 ;
  {
  found_config = -1;
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  ioreqs[0].addr = 36904U;
  ioreqs[0].value = 137U;
  ioreqs[1].addr = 36924U;
  ioreqs[1].value = 32U;
  ioreqs[2].addr = 36932U;
  ioreqs[2].value = 40U;
  ioreqs[3].addr = 36956U;
  ioreqs[3].value = 56U;
  ioreqs[4].addr = 36960U;
  ioreqs[4].value = 32U;
  ioreqs[5].addr = 36968U;
  ioreqs[5].value = 147U;
  ioreqs[6].addr = 36972U;
  ioreqs[6].value = 21U;
  ioreqs[7].addr = 36976U;
  ioreqs[7].value = 62U;
  ioreqs[8].addr = 36980U;
  ioreqs[8].value = 0U;
  ioreqs[9].addr = 36996U;
  ioreqs[9].value = 40U;
  ioreqs[10].addr = 37000U;
  ioreqs[10].value = 48U;
  ioreqs[11].addr = 37004U;
  ioreqs[11].value = 67U;
  ioreqs[12].addr = 37028U;
  ioreqs[12].value = 36U;
  ioreqs[13].addr = 37040U;
  ioreqs[13].value = 50U;
  ioreqs[14].addr = 37048U;
  ioreqs[14].value = 146U;
  ioreqs[15].addr = 37052U;
  ioreqs[15].value = 30U;
  ioreqs[16].addr = 37056U;
  ioreqs[16].value = 4U;
  ioreqs[17].addr = 37060U;
  ioreqs[17].value = 250U;
  ioreqs[18].addr = 37180U;
  ioreqs[18].value = 88U;
  ioreqs[19].addr = 37184U;
  ioreqs[19].value = 48U;
  ioreqs[20].addr = 37188U;
  ioreqs[20].value = 48U;
  ioreqs[21].addr = 37212U;
  ioreqs[21].value = 10U;
  ioreqs[22].addr = 37220U;
  ioreqs[22].value = 4U;
  ioreqs[23].addr = 37228U;
  ioreqs[23].value = 0U;
  ioreqs[24].addr = 37232U;
  ioreqs[24].value = 10U;
  ioreqs[25].addr = 37256U;
  ioreqs[25].value = 141U;
  ioreqs[26].addr = 37260U;
  ioreqs[26].value = 40U;
  ioreqs[27].addr = 37264U;
  ioreqs[27].value = 2U;
  ioreqs[28].addr = 37268U;
  ioreqs[28].value = 9U;
  ioreqs[29].addr = 37272U;
  ioreqs[29].value = 39U;
  ioreqs[30].addr = 37288U;
  ioreqs[30].value = 28U;
  ioreqs[31].addr = 37292U;
  ioreqs[31].value = 28U;
  ioreqs[32].addr = 37300U;
  ioreqs[32].value = 19U;
  ioreqs[33].addr = 37304U;
  ioreqs[33].value = 31U;
  ioreqs[34].addr = 37308U;
  ioreqs[34].value = 19U;
  ioreqs[35].addr = 37312U;
  ioreqs[35].value = 31U;
  ioreqs[36].addr = 37316U;
  ioreqs[36].value = 39U;
  ioreqs[37].addr = 37320U;
  ioreqs[37].value = 35U;
  ioreqs[38].addr = 37324U;
  ioreqs[38].value = 36U;
  ioreqs[39].addr = 37328U;
  ioreqs[39].value = 36U;
  ioreqs[40].addr = 37332U;
  ioreqs[40].value = 250U;
  ioreqs[41].addr = 37336U;
  ioreqs[41].value = 240U;
  ioreqs[42].addr = 37340U;
  ioreqs[42].value = 26U;
  ioreqs[43].addr = 37344U;
  ioreqs[43].value = 79U;
  ioreqs[44].addr = 37348U;
  ioreqs[44].value = 31U;
  ioreqs[45].addr = 37352U;
  ioreqs[45].value = 240U;
  ioreqs[46].addr = 37356U;
  ioreqs[46].value = 87U;
  ioreqs[47].addr = 37364U;
  ioreqs[47].value = 173U;
  ioreqs[48].addr = 37368U;
  ioreqs[48].value = 108U;
  ioreqs[49].addr = 37372U;
  ioreqs[49].value = 3U;
  ioreqs[50].addr = 37376U;
  ioreqs[50].value = 20U;
  ioreqs[51].addr = 37380U;
  ioreqs[51].value = 18U;
  ioreqs[52].addr = 37384U;
  ioreqs[52].value = 16U;
  ioreqs[53].addr = 37412U;
  ioreqs[53].value = 80U;
  ioreqs[54].addr = 37416U;
  ioreqs[54].value = 168U;
  ioreqs[55].addr = 37440U;
  ioreqs[55].value = 172U;
  ioreqs[56].addr = 37448U;
  ioreqs[56].value = 32U;
  ioreqs[57].addr = 37872U;
  ioreqs[57].value = 255U;
  ioreqs[58].addr = 37876U;
  ioreqs[58].value = 255U;
  rv[0] = 4194347U;
  rv[1] = 5348943U;
  rv[2] = 7307693U;
  rv[3] = 7602174U;
  rv[4] = 155548U;
  rv[5] = 1048647U;
  rv[6] = 2099609U;
  rv[7] = 3175938U;
  rv[8] = 3432547U;
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 59U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_rfwritev_locked(chip, (u32 const *)(& rv), 9U, 24);
  if (r != 0) {
    return (r);
  } else {
  }
  r = uw2453_init_mode(chip);
  if (r != 0) {
    return (r);
  } else {
  }
  i = 0;
  goto ldv_47620;
  ldv_47619:
  r = uw2453_synth_set_channel(chip, 1, 0);
  if (r != 0) {
    return (r);
  } else {
  }
  r = uw2453_write_vco_cfg(chip, (int )uw2453_std_vco_cfg[i][0]);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_iowrite16_locked(chip, 15, 34241);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_ioread16_locked(chip, & intr_status, 34241);
  if (r != 0) {
    return (r);
  } else {
  }
  if (((int )intr_status & 15) == 0) {
    dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() PLL locked on configuration %d\n",
               "uw2453_init_hw", i);
    found_config = i;
    goto ldv_47618;
  } else {
  }
  i = i + 1;
  ldv_47620: ;
  if ((unsigned int )i <= 9U) {
    goto ldv_47619;
  } else {
  }
  ldv_47618: ;
  if (found_config == -1) {
    dev_printk("\017", (struct device const *)(& (chip->usb.intf)->dev), "%s() PLL did not lock, using autocal\n",
               "uw2453_init_hw");
    r = uw2453_synth_set_channel(chip, 1, 1);
    if (r != 0) {
      return (r);
    } else {
    }
    r = uw2453_write_vco_cfg(chip, (int )UW2453_AUTOCAL_VCO_CFG);
    if (r != 0) {
      return (r);
    } else {
    }
  } else {
  }
  ((struct uw2453_priv *)rf->priv)->config = found_config + 1;
  tmp___0 = zd_iowrite16_locked(chip, 6, 37676);
  return (tmp___0);
}
}
static int uw2453_set_channel(struct zd_rf *rf , u8 channel )
{
  int r ;
  u16 vco_cfg ;
  int config ;
  bool autocal ;
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct zd_ioreq16 ioreqs[6U] ;
  int tmp___0 ;
  {
  config = ((struct uw2453_priv *)rf->priv)->config;
  autocal = config == -1;
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  ioreqs[0].addr = 37184U;
  ioreqs[0].value = 48U;
  ioreqs[1].addr = 37188U;
  ioreqs[1].value = 48U;
  ioreqs[2].addr = 37180U;
  ioreqs[2].value = 88U;
  ioreqs[3].addr = 36912U;
  ioreqs[3].value = 240U;
  ioreqs[4].addr = 37172U;
  ioreqs[4].value = 27U;
  ioreqs[5].addr = 37176U;
  ioreqs[5].value = 88U;
  r = uw2453_synth_set_channel(chip, (int )channel, (int )autocal);
  if (r != 0) {
    return (r);
  } else {
  }
  if ((int )autocal) {
    vco_cfg = UW2453_AUTOCAL_VCO_CFG;
  } else {
    vco_cfg = uw2453_std_vco_cfg[config][((int )channel + -1) / 2];
  }
  r = uw2453_write_vco_cfg(chip, (int )vco_cfg);
  if (r != 0) {
    return (r);
  } else {
  }
  r = uw2453_init_mode(chip);
  if (r != 0) {
    return (r);
  } else {
  }
  r = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 6U);
  if (r != 0) {
    return (r);
  } else {
  }
  r = uw2453_set_tx_gain_level(chip, (int )channel);
  if (r != 0) {
    return (r);
  } else {
  }
  tmp___0 = zd_iowrite16_locked(chip, 6, 37676);
  return (tmp___0);
}
}
static int uw2453_switch_radio_on(struct zd_rf *rf )
{
  int r ;
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct zd_ioreq16 ioreqs[2U] ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  ioreqs[0].addr = 36908U;
  ioreqs[0].value = 0U;
  ioreqs[1].addr = 37868U;
  ioreqs[1].value = 63U;
  r = zd_rfwrite_locked(chip, 155540U, 24);
  if (r != 0) {
    return (r);
  } else {
  }
  tmp___0 = zd_chip_is_zd1211b(chip);
  if (tmp___0 != 0) {
    ioreqs[1].value = 127U;
  } else {
  }
  tmp___1 = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 2U);
  return (tmp___1);
}
}
static int uw2453_switch_radio_off(struct zd_rf *rf )
{
  int r ;
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct zd_ioreq16 ioreqs[2U] ;
  int tmp___0 ;
  {
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  ioreqs[0].addr = 36908U;
  ioreqs[0].value = 4U;
  ioreqs[1].addr = 37868U;
  ioreqs[1].value = 47U;
  r = zd_rfwrite_locked(chip, 155536U, 24);
  if (r != 0) {
    return (r);
  } else {
  }
  tmp___0 = zd_iowrite16a_locked(chip, (struct zd_ioreq16 const *)(& ioreqs), 2U);
  return (tmp___0);
}
}
static void uw2453_clear(struct zd_rf *rf )
{
  {
  kfree((void const *)rf->priv);
  return;
}
}
int zd_rf_init_uw2453(struct zd_rf *rf )
{
  {
  rf->init_hw = & uw2453_init_hw;
  rf->set_channel = & uw2453_set_channel;
  rf->switch_radio_on = & uw2453_switch_radio_on;
  rf->switch_radio_off = & uw2453_switch_radio_off;
  rf->patch_6m_band_edge = & zd_rf_generic_patch_6m;
  rf->clear = & uw2453_clear;
  rf->update_channel_int = 0U;
  rf->priv = kmalloc(4UL, 208U);
  if ((unsigned long )rf->priv == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
void ldv_consume_skb_68(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_69(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_70(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_71(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_74(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_80(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_81(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_82(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_85(struct sk_buff *ldv_func_arg1 ) ;
void ldv_consume_skb_79(struct sk_buff *ldv_func_arg1 ) ;
static char const * const rfs[16U] =
  { "unknown RF0", "unknown RF1", "UW2451_RF", "UCHIP_RF",
        "AL2230_RF", "AL7230B_RF", "THETA_RF", "AL2210_RF",
        "MAXIM_NEW_RF", "UW2453_RF", "AL2230S_RF", "RALINK_RF",
        "INTERSIL_RF", "RF2959_RF", "MAXIM_NEW2_RF", "PHILIPS_RF"};
char const *zd_rf_name(u8 type )
{
  {
  if (((int )type & 240) != 0) {
    type = 0U;
  } else {
  }
  return ((char const *)rfs[(int )type]);
}
}
void zd_rf_init(struct zd_rf *rf )
{
  {
  memset((void *)rf, 0, 64UL);
  rf->update_channel_int = 1U;
  return;
}
}
void zd_rf_clear(struct zd_rf *rf )
{
  {
  if ((unsigned long )rf->clear != (unsigned long )((void (*)(struct zd_rf * ))0)) {
    (*(rf->clear))(rf);
  } else {
  }
  memset((void *)rf, 255, 64UL);
  return;
}
}
int zd_rf_init_hw(struct zd_rf *rf , u8 type )
{
  int r ;
  int t ;
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  char const *tmp___3 ;
  {
  r = 0;
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  tmp___1 = mutex_is_locked(& chip->mutex);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_rf_init_hw";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_rf.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 109U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_rf.o.c.prepared",
                         109, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  switch ((int )type) {
  case 13:
  r = zd_rf_init_rf2959(rf);
  goto ldv_47708;
  case 4: ;
  case 10:
  r = zd_rf_init_al2230(rf);
  goto ldv_47708;
  case 5:
  r = zd_rf_init_al7230b(rf);
  goto ldv_47708;
  case 8: ;
  case 9:
  r = zd_rf_init_uw2453(rf);
  goto ldv_47708;
  default:
  tmp___3 = zd_rf_name((int )type);
  dev_err((struct device const *)(& (chip->usb.intf)->dev), "RF %s %#x is not supported\n",
          tmp___3, (int )type);
  rf->type = 0U;
  return (-19);
  }
  ldv_47708: ;
  if (r != 0) {
    return (r);
  } else {
  }
  rf->type = type;
  r = zd_chip_lock_phy_regs(chip);
  if (r != 0) {
    return (r);
  } else {
  }
  t = (*(rf->init_hw))(rf);
  r = zd_chip_unlock_phy_regs(chip);
  if (t != 0) {
    r = t;
  } else {
  }
  return (r);
}
}
int zd_rf_scnprint_id(struct zd_rf *rf , char *buffer , size_t size )
{
  char const *tmp ;
  int tmp___0 ;
  {
  tmp = zd_rf_name((int )rf->type);
  tmp___0 = scnprintf(buffer, size, "%s", tmp);
  return (tmp___0);
}
}
int zd_rf_set_channel(struct zd_rf *rf , u8 channel )
{
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  struct zd_chip *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  struct zd_chip *tmp___3 ;
  {
  tmp___0 = zd_rf_to_chip(rf);
  tmp___1 = mutex_is_locked(& tmp___0->mutex);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_rf_set_channel";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_rf.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 156U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_rf.o.c.prepared",
                         156, (char *)"mutex_is_locked(&zd_rf_to_chip(rf)->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  if ((unsigned int )channel == 0U) {
    return (-22);
  } else {
  }
  if ((unsigned int )channel > 14U) {
    return (-22);
  } else {
  }
  tmp___3 = zd_rf_to_chip(rf);
  dev_printk("\017", (struct device const *)(& (tmp___3->usb.intf)->dev), "%s() channel: %d\n",
             "zd_rf_set_channel", (int )channel);
  r = (*(rf->set_channel))(rf, (int )channel);
  if (r >= 0) {
    rf->channel = channel;
  } else {
  }
  return (r);
}
}
int zd_switch_radio_on(struct zd_rf *rf )
{
  int r ;
  int t ;
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  tmp___1 = mutex_is_locked(& chip->mutex);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_switch_radio_on";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_rf.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 174U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_rf.o.c.prepared",
                         174, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  r = zd_chip_lock_phy_regs(chip);
  if (r != 0) {
    return (r);
  } else {
  }
  t = (*(rf->switch_radio_on))(rf);
  r = zd_chip_unlock_phy_regs(chip);
  if (t != 0) {
    r = t;
  } else {
  }
  return (r);
}
}
int zd_switch_radio_off(struct zd_rf *rf )
{
  int r ;
  int t ;
  struct zd_chip *chip ;
  struct zd_chip *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = zd_rf_to_chip(rf);
  chip = tmp;
  tmp___1 = mutex_is_locked(& chip->mutex);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_switch_radio_off";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_rf.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 191U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_rf.o.c.prepared",
                         191, (char *)"mutex_is_locked(&chip->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  r = zd_chip_lock_phy_regs(chip);
  if (r != 0) {
    return (r);
  } else {
  }
  t = (*(rf->switch_radio_off))(rf);
  r = zd_chip_unlock_phy_regs(chip);
  if (t != 0) {
    r = t;
  } else {
  }
  return (r);
}
}
int zd_rf_patch_6m_band_edge(struct zd_rf *rf , u8 channel )
{
  int tmp ;
  {
  if ((unsigned long )rf->patch_6m_band_edge == (unsigned long )((int (*)(struct zd_rf * ,
                                                                          u8 ))0)) {
    return (0);
  } else {
  }
  tmp = (*(rf->patch_6m_band_edge))(rf, (int )channel);
  return (tmp);
}
}
int zd_rf_generic_patch_6m(struct zd_rf *rf , u8 channel )
{
  struct zd_chip *tmp ;
  int tmp___0 ;
  {
  tmp = zd_rf_to_chip(rf);
  tmp___0 = zd_chip_generic_patch_6m_band(tmp, (int )channel);
  return (tmp___0);
}
}
void ldv_consume_skb_79(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_80(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_81(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_82(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_85(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
extern struct module __this_module ;
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
extern int printk(char const * , ...) ;
extern int __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                             , ...) ;
extern void __bad_percpu_size(void) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
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
  goto ldv_5995;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_5995;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_5995;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_5995;
  default:
  __bad_percpu_size();
  }
  ldv_5995: ;
  return (pfo_ret__ & 2147483647);
}
}
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_6338.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_6338.rlock);
  return;
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
__inline static void reinit_completion(struct completion *x )
{
  {
  x->done = 0U;
  return;
}
}
extern unsigned long wait_for_completion_timeout(struct completion * , unsigned long ) ;
extern void complete(struct completion * ) ;
extern struct workqueue_struct *system_wq ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool mod_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                unsigned long ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work_on(8192, wq, work);
  return (tmp);
}
}
__inline static bool mod_delayed_work(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                      unsigned long delay )
{
  bool tmp ;
  {
  tmp = mod_delayed_work_on(8192, wq, dwork, delay);
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
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
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
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc(size, flags | 32768U);
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
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
void ldv_kfree_skb_91(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_92(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_93(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_96(struct sk_buff *ldv_func_arg1 ) ;
void ldv_consume_skb_90(struct sk_buff *ldv_func_arg1 ) ;
__inline static int skb_queue_empty(struct sk_buff_head const *list )
{
  {
  return ((unsigned long )((struct sk_buff const *)list->next) == (unsigned long )((struct sk_buff const *)list));
}
}
extern void skb_unlink(struct sk_buff * , struct sk_buff_head * ) ;
struct ieee80211_vif *zd_ops_group1 ;
struct usb_interface *driver_group1 ;
int ldv_state_variable_2 ;
int ref_cnt ;
int ldv_state_variable_1 ;
int usb_counter ;
struct ieee80211_hw *zd_ops_group0 ;
int ldv_state_variable_0 ;
void ldv_usb_driver_1(void) ;
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
__inline static int usb_endpoint_dir_out(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) >= 0);
}
}
__inline static int usb_endpoint_xfer_bulk(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 2);
}
}
__inline static int usb_endpoint_xfer_int(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 3);
}
}
extern void __tasklet_schedule(struct tasklet_struct * ) ;
__inline static void tasklet_schedule(struct tasklet_struct *t )
{
  int tmp ;
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& t->state));
  if (tmp == 0) {
    __tasklet_schedule(t);
  } else {
  }
  return;
}
}
extern void tasklet_kill(struct tasklet_struct * ) ;
__inline static void usb_set_intfdata(struct usb_interface *intf , void *data )
{
  {
  dev_set_drvdata(& intf->dev, data);
  return;
}
}
extern struct usb_interface *usb_get_intf(struct usb_interface * ) ;
extern void usb_put_intf(struct usb_interface * ) ;
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf )
{
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)intf->dev.parent;
  return ((struct usb_device *)__mptr + 0xffffffffffffff70UL);
}
}
extern int usb_reset_device(struct usb_device * ) ;
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
int ldv_usb_register_driver_97(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
void ldv_usb_deregister_98(struct usb_driver *arg ) ;
__inline static void init_usb_anchor(struct usb_anchor *anchor )
{
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  memset((void *)anchor, 0, 184UL);
  INIT_LIST_HEAD(& anchor->urb_list);
  __init_waitqueue_head(& anchor->wait, "&anchor->wait", & __key);
  spinlock_check(& anchor->lock);
  __raw_spin_lock_init(& anchor->lock.ldv_6338.rlock, "&(&anchor->lock)->rlock", & __key___0);
  return;
}
}
__inline static void usb_fill_bulk_urb(struct urb *urb , struct usb_device *dev ,
                                       unsigned int pipe , void *transfer_buffer ,
                                       int buffer_length , void (*complete_fn)(struct urb * ) ,
                                       void *context )
{
  {
  urb->dev = dev;
  urb->pipe = pipe;
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
extern void usb_free_urb(struct urb * ) ;
extern int usb_submit_urb(struct urb * , gfp_t ) ;
extern void usb_kill_urb(struct urb * ) ;
extern void usb_kill_anchored_urbs(struct usb_anchor * ) ;
extern void usb_anchor_urb(struct urb * , struct usb_anchor * ) ;
extern void usb_unanchor_urb(struct urb * ) ;
extern int usb_wait_anchor_empty_timeout(struct usb_anchor * , unsigned int ) ;
extern int usb_anchor_empty(struct usb_anchor * ) ;
extern void *usb_alloc_coherent(struct usb_device * , size_t , gfp_t , dma_addr_t * ) ;
extern void usb_free_coherent(struct usb_device * , size_t , void * , dma_addr_t ) ;
extern int usb_control_msg(struct usb_device * , unsigned int , __u8 , __u8 , __u16 ,
                           __u16 , void * , __u16 , int ) ;
extern int usb_interrupt_msg(struct usb_device * , unsigned int , void * , int ,
                             int * , int ) ;
extern int usb_bulk_msg(struct usb_device * , unsigned int , void * , int , int * ,
                        int ) ;
extern int usb_reset_configuration(struct usb_device * ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
}
}
__inline static struct usb_host_endpoint *usb_pipe_endpoint(struct usb_device *dev ,
                                                            unsigned int pipe )
{
  struct usb_host_endpoint **eps ;
  {
  eps = (pipe & 128U) != 0U ? (struct usb_host_endpoint **)(& dev->ep_in) : (struct usb_host_endpoint **)(& dev->ep_out);
  return (*(eps + ((unsigned long )(pipe >> 15) & 15UL)));
}
}
__inline static char const *wiphy_name(struct wiphy const *wiphy )
{
  char const *tmp ;
  {
  tmp = dev_name(& wiphy->dev);
  return (tmp);
}
}
extern int ieee80211_register_hw(struct ieee80211_hw * ) ;
extern void ieee80211_unregister_hw(struct ieee80211_hw * ) ;
extern void ieee80211_free_hw(struct ieee80211_hw * ) ;
extern void ieee80211_stop_queues(struct ieee80211_hw * ) ;
extern void ieee80211_wake_queues(struct ieee80211_hw * ) ;
__inline static struct usb_device *zd_usb_to_usbdev(struct zd_usb *usb )
{
  struct usb_device *tmp ;
  {
  tmp = interface_to_usbdev(usb->intf);
  return (tmp);
}
}
void zd_usb_reset_rx_idle_timer(struct zd_usb *usb ) ;
struct workqueue_struct *zd_workqueue ;
__inline static struct zd_chip *zd_usb_to_chip(struct zd_usb *usb )
{
  struct zd_usb const *__mptr ;
  {
  __mptr = (struct zd_usb const *)usb;
  return ((struct zd_chip *)__mptr);
}
}
__inline static struct zd_mac *zd_usb_to_mac(struct zd_usb *usb )
{
  struct zd_chip *tmp ;
  struct zd_mac *tmp___0 ;
  {
  tmp = zd_usb_to_chip(usb);
  tmp___0 = zd_chip_to_mac(tmp);
  return (tmp___0);
}
}
static struct usb_device_id usb_ids[60U] =
  { {3U, 261U, 5215U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 1414U, 13313U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 1414U, 13314U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 1414U, 13319U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 1414U, 13321U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 1947U, 74U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 1976U, 24577U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2766U, 4625U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2766U, 41489U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2821U, 5900U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2875U, 5680U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2875U, 22064U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 3574U, 36977U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 3574U, 36981U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 4719U, 40966U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 4763U, 5734U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 5041U, 30U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 5173U, 1809U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 5354U, 43792U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 5354U, 43795U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 5502U, 12298U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 5502U, 12299U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 5502U, 12804U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 5502U, 12807U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 5952U, 8192U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 26769U, 42791U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {3U, 83U, 21249U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1033U, 584U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1041U, 218U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1137U, 4662U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1137U, 4663U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1293U, 28764U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1356U, 599U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1414U, 13322U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1414U, 13327U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1414U, 13328U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1414U, 13330U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1414U, 13331U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1947U, 98U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1976U, 24577U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 2042U, 4502U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 2106U, 17669U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 2106U, 58625U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 2106U, 58627U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 2106U, 58630U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 2766U, 4629U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 2766U, 45589U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 2821U, 5915U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 2991U, 289U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 3294U, 26U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 3574U, 54U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 4763U, 5735U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 5041U, 36U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 5502U, 12301U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 5506U, 24579U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 8217U, 21251U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 8217U, 60673U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 2766U, 8209U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      2UL},
        {3U, 2766U, 8447U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      2UL}};
struct usb_device_id const __mod_usb__usb_ids_device_table ;
static bool check_read_regs(struct zd_usb *usb , struct usb_req_read_regs *req , unsigned int count ) ;
static void int_urb_complete(struct urb *urb ) ;
static int request_fw_file(struct firmware const **fw , char const *name , struct device *device )
{
  int r ;
  {
  dev_printk("\017", (struct device const *)device, "%s() fw name %s\n", "request_fw_file",
             name);
  r = request_firmware(fw, name, device);
  if (r != 0) {
    dev_err((struct device const *)device, "Could not load firmware file %s. Error number %d\n",
            name, r);
  } else {
  }
  return (r);
}
}
__inline static u16 get_bcdDevice(struct usb_device const *udev )
{
  {
  return ((u16 )udev->descriptor.bcdDevice);
}
}
static int upload_code(struct usb_device *udev , u8 const *data , size_t size ,
                       u16 code_offset , int flags )
{
  u8 *p ;
  int r ;
  void *tmp ;
  size_t transfer_size ;
  size_t __len ;
  void *__ret ;
  unsigned int tmp___0 ;
  u8 ret ;
  unsigned int tmp___1 ;
  {
  tmp = kmalloc(4096UL, 208U);
  p = (u8 *)tmp;
  if ((unsigned long )p == (unsigned long )((u8 *)0U)) {
    r = -12;
    goto error;
  } else {
  }
  size = size & 0xfffffffffffffffeUL;
  goto ldv_48531;
  ldv_48530:
  transfer_size = 4096UL < size ? 4096UL : size;
  dev_printk("\017", (struct device const *)(& udev->dev), "%s() transfer size %zu\n",
             "upload_code", transfer_size);
  __len = transfer_size;
  __ret = memcpy((void *)p, (void const *)data, __len);
  tmp___0 = __create_pipe(udev, 0U);
  r = usb_control_msg(udev, tmp___0 | 2147483648U, 48, 64, (int )code_offset, 0, (void *)p,
                      (int )((__u16 )transfer_size), 1000);
  if (r < 0) {
    dev_err((struct device const *)(& udev->dev), "USB control request for firmware upload failed. Error number %d\n",
            r);
    goto error;
  } else {
  }
  transfer_size = (size_t )(r & -2);
  size = size - transfer_size;
  data = data + transfer_size;
  code_offset = (int )((u16 )(transfer_size / 2UL)) + (int )code_offset;
  ldv_48531: ;
  if (size != 0UL) {
    goto ldv_48530;
  } else {
  }
  if (flags & 1) {
    tmp___1 = __create_pipe(udev, 0U);
    r = usb_control_msg(udev, tmp___1 | 2147483776U, 49, 192, 0, 0, (void *)p, 1,
                        5000);
    if (r != 1) {
      dev_err((struct device const *)(& udev->dev), "control request firmeware confirmation failed. Return value %d\n",
              r);
      if (r >= 0) {
        r = -19;
      } else {
      }
      goto error;
    } else {
    }
    ret = *p;
    if ((int )((signed char )ret) < 0) {
      dev_err((struct device const *)(& udev->dev), "Internal error while downloading. Firmware confirm return value %#04x\n",
              (unsigned int )ret);
      r = -19;
      goto error;
    } else {
    }
    dev_printk("\017", (struct device const *)(& udev->dev), "%s() firmware confirm return value %#04x\n",
               "upload_code", (unsigned int )ret);
  } else {
  }
  r = 0;
  error:
  kfree((void const *)p);
  return (r);
}
}
static u16 get_word(void const *data , u16 offset )
{
  __le16 const *p ;
  {
  p = (__le16 const *)data;
  return ((u16 )*(p + (unsigned long )offset));
}
}
static char *get_fw_name(struct zd_usb *usb , char *buffer , size_t size , char const *postfix )
{
  {
  scnprintf(buffer, size, "%s%s", (unsigned int )*((unsigned char *)usb + 11284UL) != 0U ? (char *)"zd1211/zd1211b_" : (char *)"zd1211/zd1211_",
            postfix);
  return (buffer);
}
}
static int handle_version_mismatch(struct zd_usb *usb , struct firmware const *ub_fw )
{
  struct usb_device *udev ;
  struct usb_device *tmp ;
  struct firmware const *ur_fw ;
  int offset ;
  int r ;
  char fw_name[128U] ;
  char *tmp___0 ;
  {
  tmp = zd_usb_to_usbdev(usb);
  udev = tmp;
  ur_fw = (struct firmware const *)0;
  r = 0;
  tmp___0 = get_fw_name(usb, (char *)(& fw_name), 128UL, "ur");
  r = request_fw_file(& ur_fw, (char const *)tmp___0, & udev->dev);
  if (r != 0) {
    goto error;
  } else {
  }
  r = upload_code(udev, ur_fw->data, ur_fw->size, 60928, 1);
  if (r != 0) {
    goto error;
  } else {
  }
  offset = 298;
  r = upload_code(udev, ub_fw->data + (unsigned long )offset, (unsigned long )ub_fw->size - (unsigned long )offset,
                  63637, 1);
  error:
  release_firmware(ur_fw);
  return (r);
}
}
static int upload_firmware(struct zd_usb *usb )
{
  int r ;
  u16 fw_bcdDevice ;
  u16 bcdDevice ;
  struct usb_device *udev ;
  struct usb_device *tmp ;
  struct firmware const *ub_fw ;
  struct firmware const *uph_fw ;
  char fw_name[128U] ;
  char *tmp___0 ;
  char *tmp___1 ;
  {
  tmp = zd_usb_to_usbdev(usb);
  udev = tmp;
  ub_fw = (struct firmware const *)0;
  uph_fw = (struct firmware const *)0;
  bcdDevice = get_bcdDevice((struct usb_device const *)udev);
  tmp___0 = get_fw_name(usb, (char *)(& fw_name), 128UL, "ub");
  r = request_fw_file(& ub_fw, (char const *)tmp___0, & udev->dev);
  if (r != 0) {
    goto error;
  } else {
  }
  fw_bcdDevice = get_word((void const *)ub_fw->data, 23);
  if ((int )fw_bcdDevice != (int )bcdDevice) {
    _dev_info((struct device const *)(& udev->dev), "firmware version %#06x and device bootcode version %#06x differ\n",
              (int )fw_bcdDevice, (int )bcdDevice);
    if ((unsigned int )bcdDevice <= 17171U) {
      dev_warn((struct device const *)(& udev->dev), "device has old bootcode, please report success or failure\n");
    } else {
    }
    r = handle_version_mismatch(usb, ub_fw);
    if (r != 0) {
      goto error;
    } else {
    }
  } else {
    dev_printk("\017", (struct device const *)(& udev->dev), "%s() firmware device id %#06x is equal to the actual device id\n",
               "upload_firmware", (int )fw_bcdDevice);
  }
  tmp___1 = get_fw_name(usb, (char *)(& fw_name), 128UL, "uphr");
  r = request_fw_file(& uph_fw, (char const *)tmp___1, & udev->dev);
  if (r != 0) {
    goto error;
  } else {
  }
  r = upload_code(udev, uph_fw->data, uph_fw->size, 60928, 1);
  if (r != 0) {
    dev_err((struct device const *)(& udev->dev), "Could not upload firmware code uph. Error number %d\n",
            r);
  } else {
  }
  error:
  release_firmware(ub_fw);
  release_firmware(uph_fw);
  return (r);
}
}
int zd_usb_read_fw(struct zd_usb *usb , zd_addr_t addr , u8 *data , u16 len )
{
  int r ;
  struct usb_device *udev ;
  struct usb_device *tmp ;
  u8 *buf ;
  void *tmp___0 ;
  unsigned int tmp___1 ;
  size_t __len ;
  void *__ret ;
  {
  tmp = zd_usb_to_usbdev(usb);
  udev = tmp;
  tmp___0 = kmalloc((size_t )len, 208U);
  buf = (u8 *)tmp___0;
  if ((unsigned long )buf == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  tmp___1 = __create_pipe(udev, 0U);
  r = usb_control_msg(udev, tmp___1 | 2147483776U, 50, 192, (int )addr, 0, (void *)buf,
                      (int )len, 5000);
  if (r < 0) {
    dev_err((struct device const *)(& udev->dev), "read over firmware interface failed: %d\n",
            r);
    goto exit;
  } else
  if ((int )len != r) {
    dev_err((struct device const *)(& udev->dev), "incomplete read over firmware interface: %d/%d\n",
            r, (int )len);
    r = -5;
    goto exit;
  } else {
  }
  r = 0;
  __len = (size_t )len;
  __ret = memcpy((void *)data, (void const *)buf, __len);
  exit:
  kfree((void const *)buf);
  return (r);
}
}
__inline static void handle_regs_int_override(struct urb *urb )
{
  struct zd_usb *usb ;
  struct zd_usb_interrupt *intr ;
  int tmp ;
  {
  usb = (struct zd_usb *)urb->context;
  intr = & usb->intr;
  spin_lock(& intr->lock);
  tmp = atomic_read((atomic_t const *)(& intr->read_regs_enabled));
  if (tmp != 0) {
    atomic_set(& intr->read_regs_enabled, 0);
    intr->read_regs_int_overridden = 1U;
    complete(& intr->read_regs.completion);
  } else {
  }
  spin_unlock(& intr->lock);
  return;
}
}
__inline static void handle_regs_int(struct urb *urb )
{
  struct zd_usb *usb ;
  struct zd_usb_interrupt *intr ;
  int len ;
  u16 int_num ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  struct zd_mac *mac ;
  struct ieee80211_hw *tmp___2 ;
  struct zd_mac *tmp___3 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  bool tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  usb = (struct zd_usb *)urb->context;
  intr = & usb->intr;
  tmp___0 = preempt_count();
  tmp___1 = ldv__builtin_expect(((unsigned long )tmp___0 & 2096896UL) == 0UL, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "handle_regs_int";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 425U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared",
                         425, (char *)"((preempt_count() & ((((1UL << (4))-1) << ((0 + 8) + 8)) | (((1UL << (8))-1) << (0 + 8)) | (((1UL << (1))-1) << (((0 + 8) + 8) + 4)))))");
    } else {
    }
    dump_stack();
  } else {
  }
  spin_lock(& intr->lock);
  int_num = *((__le16 *)urb->transfer_buffer + 2U);
  if ((unsigned int )int_num == 38160U) {
    tmp___2 = zd_usb_to_hw((struct zd_usb *)urb->context);
    tmp___3 = zd_hw_mac(tmp___2);
    mac = tmp___3;
    spin_lock(& mac->lock);
    __len = 64UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& mac->intr_buffer), (void const *)urb->transfer_buffer,
                       __len);
    } else {
      __ret = memcpy((void *)(& mac->intr_buffer), (void const *)urb->transfer_buffer,
                               __len);
    }
    spin_unlock(& mac->lock);
    schedule_work(& mac->process_intr);
  } else {
    tmp___6 = atomic_read((atomic_t const *)(& intr->read_regs_enabled));
    if (tmp___6 != 0) {
      len = (int )urb->actual_length;
      intr->read_regs.length = (int )urb->actual_length;
      if ((unsigned int )len > 64U) {
        len = 64;
      } else {
      }
      __len___0 = (size_t )len;
      __ret___0 = memcpy((void *)(& intr->read_regs.buffer), (void const *)urb->transfer_buffer,
                                   __len___0);
      tmp___4 = check_read_regs(usb, intr->read_regs.req, intr->read_regs.req_count);
      if (tmp___4) {
        tmp___5 = 0;
      } else {
        tmp___5 = 1;
      }
      if (tmp___5) {
        goto out;
      } else {
      }
      atomic_set(& intr->read_regs_enabled, 0);
      intr->read_regs_int_overridden = 0U;
      complete(& intr->read_regs.completion);
      goto out;
    } else {
    }
  }
  out:
  spin_unlock(& intr->lock);
  if ((unsigned int )int_num == 38160U) {
    tmp___7 = atomic_read((atomic_t const *)(& intr->read_regs_enabled));
    if (tmp___7 != 0) {
      handle_regs_int_override(urb);
    } else {
    }
  } else {
  }
  return;
}
}
static void int_urb_complete(struct urb *urb )
{
  int r ;
  struct usb_int_header *hdr ;
  struct zd_usb *usb ;
  struct zd_usb_interrupt *intr ;
  int tmp ;
  {
  switch (urb->status) {
  case 0: ;
  goto ldv_48616;
  case -108: ;
  case -22: ;
  case -19: ;
  case -2: ;
  case -104: ;
  case -32:
  dev_printk("\017", (struct device const *)(& (urb->dev)->dev), "%s() urb %p error %d\n",
             "int_urb_complete", urb, urb->status);
  return;
  default:
  dev_printk("\017", (struct device const *)(& (urb->dev)->dev), "%s() urb %p error %d\n",
             "int_urb_complete", urb, urb->status);
  goto resubmit;
  }
  ldv_48616: ;
  if (urb->actual_length <= 7U) {
    dev_printk("\017", (struct device const *)(& (urb->dev)->dev), "%s() error: urb %p to small\n",
               "int_urb_complete", urb);
    goto resubmit;
  } else {
  }
  hdr = (struct usb_int_header *)urb->transfer_buffer;
  if ((unsigned int )hdr->type != 1U) {
    dev_printk("\017", (struct device const *)(& (urb->dev)->dev), "%s() error: urb %p wrong type\n",
               "int_urb_complete", urb);
    goto resubmit;
  } else {
  }
  usb = (struct zd_usb *)urb->context;
  intr = & usb->intr;
  if ((unsigned int )hdr->id != 144U) {
    tmp = atomic_read((atomic_t const *)(& intr->read_regs_enabled));
    if (tmp != 0) {
      handle_regs_int_override(urb);
    } else {
    }
  } else {
  }
  switch ((int )hdr->id) {
  case 144:
  handle_regs_int(urb);
  goto ldv_48627;
  case 160:
  zd_mac_tx_failed(urb);
  goto ldv_48627;
  default:
  dev_printk("\017", (struct device const *)(& (urb->dev)->dev), "%s() error: urb %p unknown id %x\n",
             "int_urb_complete", urb, (unsigned int )hdr->id);
  goto resubmit;
  }
  ldv_48627: ;
  resubmit:
  r = usb_submit_urb(urb, 32U);
  if (r != 0) {
    dev_printk("\017", (struct device const *)(& (urb->dev)->dev), "%s() error: resubmit urb %p err code %d\n",
               "int_urb_complete", urb, r);
  } else {
  }
  return;
}
}
__inline static int int_urb_interval(struct usb_device *udev )
{
  {
  switch ((unsigned int )udev->speed) {
  case 3U: ;
  return (4);
  case 1U: ;
  return (10);
  case 2U: ;
  default: ;
  return (1);
  }
}
}
__inline static int usb_int_enabled(struct zd_usb *usb )
{
  unsigned long flags ;
  struct zd_usb_interrupt *intr ;
  struct urb *urb ;
  raw_spinlock_t *tmp ;
  {
  intr = & usb->intr;
  tmp = spinlock_check(& intr->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  urb = intr->urb;
  spin_unlock_irqrestore(& intr->lock, flags);
  return ((unsigned long )urb != (unsigned long )((struct urb *)0));
}
}
int zd_usb_enable_int(struct zd_usb *usb )
{
  int r ;
  struct usb_device *udev ;
  struct usb_device *tmp ;
  struct zd_usb_interrupt *intr ;
  struct urb *urb ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  unsigned long _flags ;
  int tmp___1 ;
  long tmp___2 ;
  unsigned int tmp___3 ;
  {
  tmp = zd_usb_to_usbdev(usb);
  udev = tmp;
  intr = & usb->intr;
  dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() \n", "zd_usb_enable_int");
  urb = usb_alloc_urb(0, 208U);
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    r = -12;
    goto out;
  } else {
  }
  _flags = arch_local_save_flags();
  tmp___1 = arch_irqs_disabled_flags(_flags);
  tmp___2 = ldv__builtin_expect(tmp___1 != 0, 0L);
  if (tmp___2 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_usb_enable_int";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 574U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared",
                         574, (char *)"!({ unsigned long _flags; do { ({ unsigned long __dummy; typeof(_flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); _flags = arch_local_save_flags(); } while (0); ({ ({ unsigned long __dummy; typeof(_flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); arch_irqs_disabled_flags(_flags); }); })");
    } else {
    }
    dump_stack();
  } else {
  }
  spin_lock_irq(& intr->lock);
  if ((unsigned long )intr->urb != (unsigned long )((struct urb *)0)) {
    spin_unlock_irq(& intr->lock);
    r = 0;
    goto error_free_urb;
  } else {
  }
  intr->urb = urb;
  spin_unlock_irq(& intr->lock);
  r = -12;
  intr->buffer = usb_alloc_coherent(udev, 64UL, 208U, & intr->buffer_dma);
  if ((unsigned long )intr->buffer == (unsigned long )((void *)0)) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() couldn\'t allocate transfer_buffer\n",
               "zd_usb_enable_int");
    goto error_set_urb_null;
  } else {
  }
  tmp___3 = __create_pipe(udev, 3U);
  usb_fill_int_urb(urb, udev, tmp___3 | 1073741952U, intr->buffer, 64, & int_urb_complete,
                   (void *)usb, intr->interval);
  urb->transfer_dma = intr->buffer_dma;
  urb->transfer_flags = urb->transfer_flags | 4U;
  dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() submit urb %p\n",
             "zd_usb_enable_int", intr->urb);
  r = usb_submit_urb(urb, 208U);
  if (r != 0) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() Couldn\'t submit urb. Error number %d\n",
               "zd_usb_enable_int", r);
    goto error;
  } else {
  }
  return (0);
  error:
  usb_free_coherent(udev, 64UL, intr->buffer, intr->buffer_dma);
  error_set_urb_null:
  spin_lock_irq(& intr->lock);
  intr->urb = (struct urb *)0;
  spin_unlock_irq(& intr->lock);
  error_free_urb:
  usb_free_urb(urb);
  out: ;
  return (r);
}
}
void zd_usb_disable_int(struct zd_usb *usb )
{
  unsigned long flags ;
  struct usb_device *udev ;
  struct usb_device *tmp ;
  struct zd_usb_interrupt *intr ;
  struct urb *urb ;
  void *buffer ;
  dma_addr_t buffer_dma ;
  raw_spinlock_t *tmp___0 ;
  {
  tmp = zd_usb_to_usbdev(usb);
  udev = tmp;
  intr = & usb->intr;
  tmp___0 = spinlock_check(& intr->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  urb = intr->urb;
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    spin_unlock_irqrestore(& intr->lock, flags);
    return;
  } else {
  }
  intr->urb = (struct urb *)0;
  buffer = intr->buffer;
  buffer_dma = intr->buffer_dma;
  intr->buffer = (void *)0;
  spin_unlock_irqrestore(& intr->lock, flags);
  usb_kill_urb(urb);
  dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() urb %p killed\n",
             "zd_usb_disable_int", urb);
  usb_free_urb(urb);
  if ((unsigned long )buffer != (unsigned long )((void *)0)) {
    usb_free_coherent(udev, 64UL, buffer, buffer_dma);
  } else {
  }
  return;
}
}
static void handle_rx_packet(struct zd_usb *usb , u8 const *buffer , unsigned int length )
{
  int i ;
  struct rx_length_info const *length_info ;
  unsigned int l ;
  unsigned int k ;
  unsigned int n ;
  u16 tmp ;
  struct ieee80211_hw *tmp___0 ;
  struct ieee80211_hw *tmp___1 ;
  u16 tmp___2 ;
  {
  if (length <= 7U) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() invalid, small RX packet : %d\n",
               "handle_rx_packet", length);
    return;
  } else {
  }
  length_info = (struct rx_length_info const *)(buffer + ((unsigned long )length + 0xfffffffffffffff8UL));
  tmp___2 = get_unaligned_le16((void const *)(& length_info->tag));
  if ((unsigned int )tmp___2 == 27006U) {
    i = 0;
    l = 0U;
    ldv_48692:
    tmp = get_unaligned_le16((void const *)(& length_info->length) + (unsigned long )i);
    k = (unsigned int )tmp;
    if (k == 0U) {
      return;
    } else {
    }
    n = l + k;
    if (n > length) {
      return;
    } else {
    }
    tmp___0 = zd_usb_to_hw(usb);
    zd_mac_rx(tmp___0, buffer + (unsigned long )l, k);
    if (i > 1) {
      return;
    } else {
    }
    l = (n + 3U) & 4294967292U;
    i = i + 1;
    goto ldv_48692;
  } else {
    tmp___1 = zd_usb_to_hw(usb);
    zd_mac_rx(tmp___1, buffer, length);
  }
  return;
}
}
static void rx_urb_complete(struct urb *urb )
{
  int r ;
  struct zd_usb *usb ;
  struct zd_usb_rx *rx ;
  u8 const *buffer ;
  unsigned int length ;
  struct _ddebug descriptor ;
  long tmp ;
  long tmp___0 ;
  size_t __len ;
  void *__ret ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  long tmp___2 ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  switch (urb->status) {
  case 0: ;
  goto ldv_48702;
  case -108: ;
  case -22: ;
  case -19: ;
  case -2: ;
  case -104: ;
  case -32:
  dev_printk("\017", (struct device const *)(& (urb->dev)->dev), "%s() urb %p error %d\n",
             "rx_urb_complete", urb, urb->status);
  return;
  default:
  dev_printk("\017", (struct device const *)(& (urb->dev)->dev), "%s() urb %p error %d\n",
             "rx_urb_complete", urb, urb->status);
  goto resubmit;
  }
  ldv_48702:
  buffer = (u8 const *)urb->transfer_buffer;
  length = urb->actual_length;
  usb = (struct zd_usb *)urb->context;
  rx = & usb->rx;
  tasklet_schedule(& rx->reset_timer_tasklet);
  if (length % rx->usb_packet_size > rx->usb_packet_size - 4U) {
    dev_printk("\017", (struct device const *)(& (urb->dev)->dev), "%s() *** first fragment ***\n",
               "rx_urb_complete");
    tmp___0 = ldv__builtin_expect(length > 9600U, 0L);
    if (tmp___0 != 0L) {
      descriptor.modname = "zd1211rw";
      descriptor.function = "rx_urb_complete";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
      descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
      descriptor.lineno = 729U;
      descriptor.flags = 1U;
      tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp != 0L) {
        __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared",
                           729, (char *)"length <= (sizeof(rx->fragment) / sizeof((rx->fragment)[0]) + (sizeof(struct { int:-!!(__builtin_types_compatible_p(typeof((rx->fragment)), typeof(&(rx->fragment)[0]))); })))");
      } else {
      }
      dump_stack();
    } else {
    }
    spin_lock(& rx->lock);
    __len = (size_t )length;
    __ret = memcpy((void *)(& rx->fragment), (void const *)buffer, __len);
    rx->fragment_length = length;
    spin_unlock(& rx->lock);
    goto resubmit;
  } else {
  }
  spin_lock(& rx->lock);
  if (rx->fragment_length != 0U) {
    tmp___2 = ldv__builtin_expect(rx->fragment_length + length > 9600U, 0L);
    if (tmp___2 != 0L) {
      descriptor___0.modname = "zd1211rw";
      descriptor___0.function = "rx_urb_complete";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
      descriptor___0.format = "%s:%d ASSERT %s VIOLATED!\n";
      descriptor___0.lineno = 741U;
      descriptor___0.flags = 1U;
      tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        __dynamic_pr_debug(& descriptor___0, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared",
                           741, (char *)"length + rx->fragment_length <= (sizeof(rx->fragment) / sizeof((rx->fragment)[0]) + (sizeof(struct { int:-!!(__builtin_types_compatible_p(typeof((rx->fragment)), typeof(&(rx->fragment)[0]))); })))");
      } else {
      }
      dump_stack();
    } else {
    }
    dev_printk("\017", (struct device const *)(& (urb->dev)->dev), "%s() *** second fragment ***\n",
               "rx_urb_complete");
    __len___0 = (size_t )length;
    __ret___0 = memcpy((void *)(& rx->fragment) + (unsigned long )rx->fragment_length,
                                 (void const *)buffer, __len___0);
    handle_rx_packet(usb, (u8 const *)(& rx->fragment), rx->fragment_length + length);
    rx->fragment_length = 0U;
    spin_unlock(& rx->lock);
  } else {
    spin_unlock(& rx->lock);
    handle_rx_packet(usb, buffer, length);
  }
  resubmit:
  r = usb_submit_urb(urb, 32U);
  if (r != 0) {
    dev_printk("\017", (struct device const *)(& (urb->dev)->dev), "%s() urb %p resubmit error %d\n",
               "rx_urb_complete", urb, r);
  } else {
  }
  return;
}
}
static struct urb *alloc_rx_urb(struct zd_usb *usb )
{
  struct usb_device *udev ;
  struct usb_device *tmp ;
  struct urb *urb ;
  void *buffer ;
  unsigned int tmp___0 ;
  {
  tmp = zd_usb_to_usbdev(usb);
  udev = tmp;
  urb = usb_alloc_urb(0, 208U);
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    return ((struct urb *)0);
  } else {
  }
  buffer = usb_alloc_coherent(udev, 4800UL, 208U, & urb->transfer_dma);
  if ((unsigned long )buffer == (unsigned long )((void *)0)) {
    usb_free_urb(urb);
    return ((struct urb *)0);
  } else {
  }
  tmp___0 = __create_pipe(udev, 2U);
  usb_fill_bulk_urb(urb, udev, tmp___0 | 3221225600U, buffer, 4800, & rx_urb_complete,
                    (void *)usb);
  urb->transfer_flags = urb->transfer_flags | 4U;
  return (urb);
}
}
static void free_rx_urb(struct urb *urb )
{
  {
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    return;
  } else {
  }
  usb_free_coherent(urb->dev, (size_t )urb->transfer_buffer_length, urb->transfer_buffer,
                    urb->transfer_dma);
  usb_free_urb(urb);
  return;
}
}
static int __zd_usb_enable_rx(struct zd_usb *usb )
{
  int i ;
  int r ;
  struct zd_usb_rx *rx ;
  struct urb **urbs ;
  void *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  unsigned long _flags ;
  int tmp___1 ;
  long tmp___2 ;
  {
  rx = & usb->rx;
  dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() \n", "__zd_usb_enable_rx");
  r = -12;
  tmp = kcalloc(5UL, 8UL, 208U);
  urbs = (struct urb **)tmp;
  if ((unsigned long )urbs == (unsigned long )((struct urb **)0)) {
    goto error;
  } else {
  }
  i = 0;
  goto ldv_48743;
  ldv_48742:
  *(urbs + (unsigned long )i) = alloc_rx_urb(usb);
  if ((unsigned long )*(urbs + (unsigned long )i) == (unsigned long )((struct urb *)0)) {
    goto error;
  } else {
  }
  i = i + 1;
  ldv_48743: ;
  if (i <= 4) {
    goto ldv_48742;
  } else {
  }
  _flags = arch_local_save_flags();
  tmp___1 = arch_irqs_disabled_flags(_flags);
  tmp___2 = ldv__builtin_expect(tmp___1 != 0, 0L);
  if (tmp___2 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "__zd_usb_enable_rx";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 810U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared",
                         810, (char *)"!({ unsigned long _flags; do { ({ unsigned long __dummy; typeof(_flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); _flags = arch_local_save_flags(); } while (0); ({ ({ unsigned long __dummy; typeof(_flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); arch_irqs_disabled_flags(_flags); }); })");
    } else {
    }
    dump_stack();
  } else {
  }
  spin_lock_irq(& rx->lock);
  if ((unsigned long )rx->urbs != (unsigned long )((struct urb **)0)) {
    spin_unlock_irq(& rx->lock);
    r = 0;
    goto error;
  } else {
  }
  rx->urbs = urbs;
  rx->urbs_count = 5;
  spin_unlock_irq(& rx->lock);
  i = 0;
  goto ldv_48757;
  ldv_48756:
  r = usb_submit_urb(*(urbs + (unsigned long )i), 208U);
  if (r != 0) {
    goto error_submit;
  } else {
  }
  i = i + 1;
  ldv_48757: ;
  if (i <= 4) {
    goto ldv_48756;
  } else {
  }
  return (0);
  error_submit:
  i = 0;
  goto ldv_48760;
  ldv_48759:
  usb_kill_urb(*(urbs + (unsigned long )i));
  i = i + 1;
  ldv_48760: ;
  if (i <= 4) {
    goto ldv_48759;
  } else {
  }
  spin_lock_irq(& rx->lock);
  rx->urbs = (struct urb **)0;
  rx->urbs_count = 0;
  spin_unlock_irq(& rx->lock);
  error: ;
  if ((unsigned long )urbs != (unsigned long )((struct urb **)0)) {
    i = 0;
    goto ldv_48763;
    ldv_48762:
    free_rx_urb(*(urbs + (unsigned long )i));
    i = i + 1;
    ldv_48763: ;
    if (i <= 4) {
      goto ldv_48762;
    } else {
    }
  } else {
  }
  return (r);
}
}
int zd_usb_enable_rx(struct zd_usb *usb )
{
  int r ;
  struct zd_usb_rx *rx ;
  {
  rx = & usb->rx;
  mutex_lock_nested(& rx->setup_mutex, 0U);
  r = __zd_usb_enable_rx(usb);
  mutex_unlock(& rx->setup_mutex);
  zd_usb_reset_rx_idle_timer(usb);
  return (r);
}
}
static void __zd_usb_disable_rx(struct zd_usb *usb )
{
  int i ;
  unsigned long flags ;
  struct urb **urbs ;
  unsigned int count ;
  struct zd_usb_rx *rx ;
  raw_spinlock_t *tmp ;
  raw_spinlock_t *tmp___0 ;
  {
  rx = & usb->rx;
  tmp = spinlock_check(& rx->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  urbs = rx->urbs;
  count = (unsigned int )rx->urbs_count;
  spin_unlock_irqrestore(& rx->lock, flags);
  if ((unsigned long )urbs == (unsigned long )((struct urb **)0)) {
    return;
  } else {
  }
  i = 0;
  goto ldv_48782;
  ldv_48781:
  usb_kill_urb(*(urbs + (unsigned long )i));
  free_rx_urb(*(urbs + (unsigned long )i));
  i = i + 1;
  ldv_48782: ;
  if ((unsigned int )i < count) {
    goto ldv_48781;
  } else {
  }
  kfree((void const *)urbs);
  tmp___0 = spinlock_check(& rx->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  rx->urbs = (struct urb **)0;
  rx->urbs_count = 0;
  spin_unlock_irqrestore(& rx->lock, flags);
  return;
}
}
void zd_usb_disable_rx(struct zd_usb *usb )
{
  struct zd_usb_rx *rx ;
  {
  rx = & usb->rx;
  mutex_lock_nested(& rx->setup_mutex, 0U);
  __zd_usb_disable_rx(usb);
  mutex_unlock(& rx->setup_mutex);
  tasklet_kill(& rx->reset_timer_tasklet);
  cancel_delayed_work_sync(& rx->idle_work);
  return;
}
}
static void zd_usb_reset_rx(struct zd_usb *usb )
{
  bool do_reset ;
  struct zd_usb_rx *rx ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  rx = & usb->rx;
  mutex_lock_nested(& rx->setup_mutex, 0U);
  tmp = spinlock_check(& rx->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  do_reset = (unsigned long )rx->urbs != (unsigned long )((struct urb **)0);
  spin_unlock_irqrestore(& rx->lock, flags);
  if ((int )do_reset) {
    __zd_usb_disable_rx(usb);
    __zd_usb_enable_rx(usb);
  } else {
  }
  mutex_unlock(& rx->setup_mutex);
  if ((int )do_reset) {
    zd_usb_reset_rx_idle_timer(usb);
  } else {
  }
  return;
}
}
void zd_usb_disable_tx(struct zd_usb *usb )
{
  struct zd_usb_tx *tx ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int __ret_warn_on ;
  int tmp___0 ;
  long tmp___1 ;
  int __ret_warn_on___0 ;
  long tmp___2 ;
  {
  tx = & usb->tx;
  atomic_set(& tx->enabled, 0);
  usb_kill_anchored_urbs(& tx->submitted);
  tmp = spinlock_check(& tx->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  tmp___0 = skb_queue_empty((struct sk_buff_head const *)(& tx->submitted_skbs));
  __ret_warn_on = tmp___0 == 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared",
                       937);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  __ret_warn_on___0 = tx->submitted_urbs != 0;
  tmp___2 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___2 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared",
                       938);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  tx->submitted_urbs = 0;
  spin_unlock_irqrestore(& tx->lock, flags);
  return;
}
}
void zd_usb_enable_tx(struct zd_usb *usb )
{
  unsigned long flags ;
  struct zd_usb_tx *tx ;
  raw_spinlock_t *tmp ;
  struct ieee80211_hw *tmp___0 ;
  {
  tx = & usb->tx;
  tmp = spinlock_check(& tx->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  atomic_set(& tx->enabled, 1);
  tx->submitted_urbs = 0;
  tmp___0 = zd_usb_to_hw(usb);
  ieee80211_wake_queues(tmp___0);
  tx->stopped = 0U;
  spin_unlock_irqrestore(& tx->lock, flags);
  return;
}
}
static void tx_dec_submitted_urbs(struct zd_usb *usb )
{
  struct zd_usb_tx *tx ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  struct ieee80211_hw *tmp___0 ;
  {
  tx = & usb->tx;
  tmp = spinlock_check(& tx->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  tx->submitted_urbs = tx->submitted_urbs - 1;
  if ((unsigned int )*((unsigned char *)tx + 588UL) != 0U && tx->submitted_urbs <= 2) {
    tmp___0 = zd_usb_to_hw(usb);
    ieee80211_wake_queues(tmp___0);
    tx->stopped = 0U;
  } else {
  }
  spin_unlock_irqrestore(& tx->lock, flags);
  return;
}
}
static void tx_inc_submitted_urbs(struct zd_usb *usb )
{
  struct zd_usb_tx *tx ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  struct ieee80211_hw *tmp___0 ;
  {
  tx = & usb->tx;
  tmp = spinlock_check(& tx->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  tx->submitted_urbs = tx->submitted_urbs + 1;
  if ((unsigned int )*((unsigned char *)tx + 588UL) == 0U && tx->submitted_urbs > 5) {
    tmp___0 = zd_usb_to_hw(usb);
    ieee80211_stop_queues(tmp___0);
    tx->stopped = 1U;
  } else {
  }
  spin_unlock_irqrestore(& tx->lock, flags);
  return;
}
}
static void tx_urb_complete(struct urb *urb )
{
  int r ;
  struct sk_buff *skb ;
  struct ieee80211_tx_info *info ;
  struct zd_usb *usb ;
  struct zd_usb_tx *tx ;
  struct zd_mac *tmp ;
  {
  skb = (struct sk_buff *)urb->context;
  info = IEEE80211_SKB_CB(skb);
  tmp = zd_hw_mac((struct ieee80211_hw *)info->ldv_46091.ldv_46089.rate_driver_data[0]);
  usb = & tmp->chip.usb;
  tx = & usb->tx;
  switch (urb->status) {
  case 0: ;
  goto ldv_48845;
  case -108: ;
  case -22: ;
  case -19: ;
  case -2: ;
  case -104: ;
  case -32:
  dev_printk("\017", (struct device const *)(& (urb->dev)->dev), "%s() urb %p error %d\n",
             "tx_urb_complete", urb, urb->status);
  goto ldv_48845;
  default:
  dev_printk("\017", (struct device const *)(& (urb->dev)->dev), "%s() urb %p error %d\n",
             "tx_urb_complete", urb, urb->status);
  goto resubmit;
  }
  ldv_48845: ;
  free_urb:
  skb_unlink(skb, & usb->tx.submitted_skbs);
  zd_mac_tx_to_dev(skb, urb->status);
  usb_free_urb(urb);
  tx_dec_submitted_urbs(usb);
  return;
  resubmit:
  usb_anchor_urb(urb, & tx->submitted);
  r = usb_submit_urb(urb, 32U);
  if (r != 0) {
    usb_unanchor_urb(urb);
    dev_printk("\017", (struct device const *)(& (urb->dev)->dev), "%s() error resubmit urb %p %d\n",
               "tx_urb_complete", urb, r);
    goto free_urb;
  } else {
  }
  return;
}
}
int zd_usb_tx(struct zd_usb *usb , struct sk_buff *skb )
{
  int r ;
  struct ieee80211_tx_info *info ;
  struct ieee80211_tx_info *tmp ;
  struct usb_device *udev ;
  struct usb_device *tmp___0 ;
  struct urb *urb ;
  struct zd_usb_tx *tx ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  {
  tmp = IEEE80211_SKB_CB(skb);
  info = tmp;
  tmp___0 = zd_usb_to_usbdev(usb);
  udev = tmp___0;
  tx = & usb->tx;
  tmp___1 = atomic_read((atomic_t const *)(& tx->enabled));
  if (tmp___1 == 0) {
    r = -2;
    goto out;
  } else {
  }
  urb = usb_alloc_urb(0, 32U);
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    r = -12;
    goto out;
  } else {
  }
  tmp___2 = __create_pipe(udev, 1U);
  usb_fill_bulk_urb(urb, udev, tmp___2 | 3221225472U, (void *)skb->data, (int )skb->len,
                    & tx_urb_complete, (void *)skb);
  info->ldv_46091.ldv_46089.rate_driver_data[1] = (void *)jiffies;
  skb_queue_tail(& tx->submitted_skbs, skb);
  usb_anchor_urb(urb, & tx->submitted);
  r = usb_submit_urb(urb, 32U);
  if (r != 0) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error submit urb %p %d\n",
               "zd_usb_tx", urb, r);
    usb_unanchor_urb(urb);
    skb_unlink(skb, & tx->submitted_skbs);
    goto error;
  } else {
  }
  tx_inc_submitted_urbs(usb);
  return (0);
  error:
  usb_free_urb(urb);
  out: ;
  return (r);
}
}
static bool zd_tx_timeout(struct zd_usb *usb )
{
  struct zd_usb_tx *tx ;
  struct sk_buff_head *q ;
  struct sk_buff *skb ;
  struct sk_buff *skbnext ;
  struct ieee80211_tx_info *info ;
  unsigned long flags ;
  unsigned long trans_start ;
  bool have_timedout ;
  raw_spinlock_t *tmp ;
  {
  tx = & usb->tx;
  q = & tx->submitted_skbs;
  have_timedout = 0;
  tmp = spinlock_check(& q->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  skb = q->next;
  skbnext = skb->next;
  goto ldv_48890;
  ldv_48889:
  info = IEEE80211_SKB_CB(skb);
  trans_start = (unsigned long )info->ldv_46091.ldv_46089.rate_driver_data[1];
  if ((long )((trans_start - (unsigned long )jiffies) + 1250UL) < 0L) {
    have_timedout = 1;
    goto ldv_48888;
  } else {
  }
  skb = skbnext;
  skbnext = skb->next;
  ldv_48890: ;
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)q)) {
    goto ldv_48889;
  } else {
  }
  ldv_48888:
  spin_unlock_irqrestore(& q->lock, flags);
  return (have_timedout);
}
}
static void zd_tx_watchdog_handler(struct work_struct *work )
{
  struct zd_usb *usb ;
  struct work_struct const *__mptr ;
  struct zd_usb_tx *tx ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  unsigned long tmp___2 ;
  {
  __mptr = (struct work_struct const *)work;
  usb = (struct zd_usb *)__mptr + 0xffffffffffffd6f8UL;
  tx = & usb->tx;
  tmp = atomic_read((atomic_t const *)(& tx->enabled));
  if (tmp == 0 || (unsigned int )*((unsigned char *)tx + 588UL) == 0U) {
    goto out;
  } else {
  }
  tmp___0 = zd_tx_timeout(usb);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    goto out;
  } else {
  }
  dev_warn((struct device const *)(& (usb->intf)->dev), "TX-stall detected, resetting device...");
  usb_queue_reset_device(usb->intf);
  return;
  out:
  tmp___2 = round_jiffies_relative(250UL);
  queue_delayed_work(zd_workqueue, & tx->watchdog_work, tmp___2);
  return;
}
}
void zd_tx_watchdog_enable(struct zd_usb *usb )
{
  struct zd_usb_tx *tx ;
  unsigned long tmp ;
  {
  tx = & usb->tx;
  if ((unsigned int )*((unsigned char *)tx + 588UL) == 0U) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() \n", "zd_tx_watchdog_enable");
    tmp = round_jiffies_relative(250UL);
    queue_delayed_work(zd_workqueue, & tx->watchdog_work, tmp);
    tx->watchdog_enabled = 1U;
  } else {
  }
  return;
}
}
void zd_tx_watchdog_disable(struct zd_usb *usb )
{
  struct zd_usb_tx *tx ;
  {
  tx = & usb->tx;
  if ((unsigned int )*((unsigned char *)tx + 588UL) != 0U) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() \n", "zd_tx_watchdog_disable");
    tx->watchdog_enabled = 0U;
    cancel_delayed_work_sync(& tx->watchdog_work);
  } else {
  }
  return;
}
}
static void zd_rx_idle_timer_handler(struct work_struct *work )
{
  struct zd_usb *usb ;
  struct work_struct const *__mptr ;
  struct zd_mac *mac ;
  struct zd_mac *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct work_struct const *)work;
  usb = (struct zd_usb *)__mptr + 0xfffffffffffffde8UL;
  tmp = zd_usb_to_mac(usb);
  mac = tmp;
  tmp___0 = constant_test_bit(0L, (unsigned long const volatile *)(& mac->flags));
  if (tmp___0 == 0) {
    return;
  } else {
  }
  dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() \n", "zd_rx_idle_timer_handler");
  zd_usb_reset_rx(usb);
  return;
}
}
static void zd_usb_reset_rx_idle_timer_tasklet(unsigned long param )
{
  struct zd_usb *usb ;
  {
  usb = (struct zd_usb *)param;
  zd_usb_reset_rx_idle_timer(usb);
  return;
}
}
void zd_usb_reset_rx_idle_timer(struct zd_usb *usb )
{
  struct zd_usb_rx *rx ;
  unsigned long tmp ;
  {
  rx = & usb->rx;
  tmp = round_jiffies_relative(7500UL);
  mod_delayed_work(zd_workqueue, & rx->idle_work, tmp);
  return;
}
}
__inline static void init_usb_interrupt(struct zd_usb *usb )
{
  struct zd_usb_interrupt *intr ;
  struct lock_class_key __key ;
  struct usb_device *tmp ;
  {
  intr = & usb->intr;
  spinlock_check(& intr->lock);
  __raw_spin_lock_init(& intr->lock.ldv_6338.rlock, "&(&intr->lock)->rlock", & __key);
  tmp = zd_usb_to_usbdev(usb);
  intr->interval = int_urb_interval(tmp);
  init_completion(& intr->read_regs.completion);
  atomic_set(& intr->read_regs_enabled, 0);
  intr->read_regs.cr_int_addr = 38160U;
  return;
}
}
__inline static void init_usb_rx(struct zd_usb *usb )
{
  struct zd_usb_rx *rx ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct usb_device *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  long tmp___1 ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___2 ;
  {
  rx = & usb->rx;
  spinlock_check(& rx->lock);
  __raw_spin_lock_init(& rx->lock.ldv_6338.rlock, "&(&rx->lock)->rlock", & __key);
  __mutex_init(& rx->setup_mutex, "&rx->setup_mutex", & __key___0);
  tmp = interface_to_usbdev(usb->intf);
  if ((unsigned int )tmp->speed == 3U) {
    rx->usb_packet_size = 512U;
  } else {
    rx->usb_packet_size = 64U;
  }
  tmp___1 = ldv__builtin_expect(rx->fragment_length != 0U, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "init_usb_rx";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 1224U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared",
                         1224, (char *)"rx->fragment_length == 0");
    } else {
    }
    dump_stack();
  } else {
  }
  __init_work(& rx->idle_work.work, 0);
  __constr_expr_0.counter = 137438953408L;
  rx->idle_work.work.data = __constr_expr_0;
  lockdep_init_map(& rx->idle_work.work.lockdep_map, "(&(&rx->idle_work)->work)",
                   & __key___1, 0);
  INIT_LIST_HEAD(& rx->idle_work.work.entry);
  rx->idle_work.work.func = & zd_rx_idle_timer_handler;
  init_timer_key(& rx->idle_work.timer, 2U, "(&(&rx->idle_work)->timer)", & __key___2);
  rx->idle_work.timer.function = & delayed_work_timer_fn;
  rx->idle_work.timer.data = (unsigned long )(& rx->idle_work);
  rx->reset_timer_tasklet.func = & zd_usb_reset_rx_idle_timer_tasklet;
  rx->reset_timer_tasklet.data = (unsigned long )usb;
  return;
}
}
__inline static void init_usb_tx(struct zd_usb *usb )
{
  struct zd_usb_tx *tx ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___1 ;
  {
  tx = & usb->tx;
  spinlock_check(& tx->lock);
  __raw_spin_lock_init(& tx->lock.ldv_6338.rlock, "&(&tx->lock)->rlock", & __key);
  atomic_set(& tx->enabled, 0);
  tx->stopped = 0U;
  skb_queue_head_init(& tx->submitted_skbs);
  init_usb_anchor(& tx->submitted);
  tx->submitted_urbs = 0;
  tx->watchdog_enabled = 0U;
  __init_work(& tx->watchdog_work.work, 0);
  __constr_expr_0.counter = 137438953408L;
  tx->watchdog_work.work.data = __constr_expr_0;
  lockdep_init_map(& tx->watchdog_work.work.lockdep_map, "(&(&tx->watchdog_work)->work)",
                   & __key___0, 0);
  INIT_LIST_HEAD(& tx->watchdog_work.work.entry);
  tx->watchdog_work.work.func = & zd_tx_watchdog_handler;
  init_timer_key(& tx->watchdog_work.timer, 2U, "(&(&tx->watchdog_work)->timer)",
                 & __key___1);
  tx->watchdog_work.timer.function = & delayed_work_timer_fn;
  tx->watchdog_work.timer.data = (unsigned long )(& tx->watchdog_work);
  return;
}
}
void zd_usb_init(struct zd_usb *usb , struct ieee80211_hw *hw , struct usb_interface *intf )
{
  {
  memset((void *)usb, 0, 11288UL);
  usb->intf = usb_get_intf(intf);
  usb_set_intfdata(usb->intf, (void *)hw);
  init_usb_anchor(& usb->submitted_cmds);
  init_usb_interrupt(usb);
  init_usb_tx(usb);
  init_usb_rx(usb);
  return;
}
}
void zd_usb_clear(struct zd_usb *usb )
{
  {
  usb_set_intfdata(usb->intf, (void *)0);
  usb_put_intf(usb->intf);
  memset((void *)usb, 255, 11288UL);
  return;
}
}
static char const *speed(enum usb_device_speed speed___0 )
{
  {
  switch ((unsigned int )speed___0) {
  case 1U: ;
  return ("low");
  case 2U: ;
  return ("full");
  case 3U: ;
  return ("high");
  default: ;
  return ("unknown speed");
  }
}
}
static int scnprint_id___0(struct usb_device *udev , char *buffer , size_t size )
{
  char const *tmp ;
  u16 tmp___0 ;
  int tmp___1 ;
  {
  tmp = speed(udev->speed);
  tmp___0 = get_bcdDevice((struct usb_device const *)udev);
  tmp___1 = scnprintf(buffer, size, "%04hx:%04hx v%04hx %s", (int )udev->descriptor.idVendor,
                      (int )udev->descriptor.idProduct, (int )tmp___0, tmp);
  return (tmp___1);
}
}
int zd_usb_scnprint_id(struct zd_usb *usb , char *buffer , size_t size )
{
  struct usb_device *udev ;
  struct usb_device *tmp ;
  int tmp___0 ;
  {
  tmp = interface_to_usbdev(usb->intf);
  udev = tmp;
  tmp___0 = scnprint_id___0(udev, buffer, size);
  return (tmp___0);
}
}
static void print_id___0(struct usb_device *udev )
{
  char buffer[40U] ;
  {
  scnprint_id___0(udev, (char *)(& buffer), 40UL);
  buffer[39UL] = 0;
  dev_printk("\017", (struct device const *)(& udev->dev), "%s() %s\n", "print_id",
             (char *)(& buffer));
  return;
}
}
static int eject_installer(struct usb_interface *intf )
{
  struct usb_device *udev ;
  struct usb_device *tmp ;
  struct usb_host_interface *iface_desc ;
  struct usb_endpoint_descriptor *endpoint ;
  unsigned char *cmd ;
  u8 bulk_out_ep ;
  int r ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  unsigned int tmp___3 ;
  {
  tmp = interface_to_usbdev(intf);
  udev = tmp;
  iface_desc = intf->altsetting;
  r = 1;
  goto ldv_48991;
  ldv_48990:
  endpoint = & (iface_desc->endpoint + (unsigned long )r)->desc;
  tmp___0 = usb_endpoint_dir_out((struct usb_endpoint_descriptor const *)endpoint);
  if (tmp___0 != 0) {
    tmp___1 = usb_endpoint_xfer_bulk((struct usb_endpoint_descriptor const *)endpoint);
    if (tmp___1 != 0) {
      bulk_out_ep = endpoint->bEndpointAddress;
      goto ldv_48989;
    } else {
    }
  } else {
  }
  r = r - 1;
  ldv_48991: ;
  if (r >= 0) {
    goto ldv_48990;
  } else {
  }
  ldv_48989: ;
  if (r == -1) {
    dev_err((struct device const *)(& udev->dev), "zd1211rw: Could not find bulk out endpoint\n");
    return (-19);
  } else {
  }
  tmp___2 = kzalloc(31UL, 208U);
  cmd = (unsigned char *)tmp___2;
  if ((unsigned long )cmd == (unsigned long )((unsigned char *)0U)) {
    return (-19);
  } else {
  }
  *cmd = 85U;
  *(cmd + 1UL) = 83U;
  *(cmd + 2UL) = 66U;
  *(cmd + 3UL) = 67U;
  *(cmd + 14UL) = 6U;
  *(cmd + 15UL) = 27U;
  *(cmd + 19UL) = 2U;
  _dev_info((struct device const *)(& udev->dev), "Ejecting virtual installer media...\n");
  tmp___3 = __create_pipe(udev, (unsigned int )bulk_out_ep);
  r = usb_bulk_msg(udev, tmp___3 | 3221225472U, (void *)cmd, 31, (int *)0, 2000);
  kfree((void const *)cmd);
  if (r != 0) {
    return (r);
  } else {
  }
  usb_set_intfdata(intf, (void *)0);
  return (0);
}
}
int zd_usb_init_hw(struct zd_usb *usb )
{
  int r ;
  struct zd_mac *mac ;
  struct zd_mac *tmp ;
  struct usb_device *tmp___0 ;
  {
  tmp = zd_usb_to_mac(usb);
  mac = tmp;
  dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() \n", "zd_usb_init_hw");
  r = upload_firmware(usb);
  if (r != 0) {
    dev_err((struct device const *)(& (usb->intf)->dev), "couldn\'t load firmware. Error number %d\n",
            r);
    return (r);
  } else {
  }
  tmp___0 = zd_usb_to_usbdev(usb);
  r = usb_reset_configuration(tmp___0);
  if (r != 0) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() couldn\'t reset configuration. Error number %d\n",
               "zd_usb_init_hw", r);
    return (r);
  } else {
  }
  r = zd_mac_init_hw(mac->hw);
  if (r != 0) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() couldn\'t initialize mac. Error number %d\n",
               "zd_usb_init_hw", r);
    return (r);
  } else {
  }
  usb->initialized = 1U;
  return (0);
}
}
static int probe(struct usb_interface *intf , struct usb_device_id const *id )
{
  int r ;
  struct usb_device *udev ;
  struct usb_device *tmp ;
  struct zd_usb *usb ;
  struct ieee80211_hw *hw ;
  int tmp___0 ;
  struct zd_mac *tmp___1 ;
  char const *tmp___2 ;
  struct usb_device *tmp___3 ;
  struct zd_mac *tmp___4 ;
  {
  tmp = interface_to_usbdev(intf);
  udev = tmp;
  hw = (struct ieee80211_hw *)0;
  print_id___0(udev);
  if (((unsigned long )id->driver_info & 2UL) != 0UL) {
    tmp___0 = eject_installer(intf);
    return (tmp___0);
  } else {
  }
  switch ((unsigned int )udev->speed) {
  case 1U: ;
  case 2U: ;
  case 3U: ;
  goto ldv_49009;
  default:
  dev_printk("\017", (struct device const *)(& intf->dev), "%s() Unknown USB speed\n",
             "probe");
  r = -19;
  goto error;
  }
  ldv_49009:
  r = usb_reset_device(udev);
  if (r != 0) {
    dev_err((struct device const *)(& intf->dev), "couldn\'t reset usb device. Error number %d\n",
            r);
    goto error;
  } else {
  }
  hw = zd_mac_alloc_hw(intf);
  if ((unsigned long )hw == (unsigned long )((struct ieee80211_hw *)0)) {
    r = -12;
    goto error;
  } else {
  }
  tmp___1 = zd_hw_mac(hw);
  usb = & tmp___1->chip.usb;
  usb->is_zd1211b = (unsigned long )id->driver_info == 1UL;
  r = zd_mac_preinit_hw(hw);
  if (r != 0) {
    dev_printk("\017", (struct device const *)(& intf->dev), "%s() couldn\'t initialize mac. Error number %d\n",
               "probe", r);
    goto error;
  } else {
  }
  r = ieee80211_register_hw(hw);
  if (r != 0) {
    dev_printk("\017", (struct device const *)(& intf->dev), "%s() couldn\'t register device. Error number %d\n",
               "probe", r);
    goto error;
  } else {
  }
  dev_printk("\017", (struct device const *)(& intf->dev), "%s() successful\n",
             "probe");
  tmp___2 = wiphy_name((struct wiphy const *)hw->wiphy);
  _dev_info((struct device const *)(& intf->dev), "%s\n", tmp___2);
  return (0);
  error:
  tmp___3 = interface_to_usbdev(intf);
  usb_reset_device(tmp___3);
  if ((unsigned long )hw != (unsigned long )((struct ieee80211_hw *)0)) {
    tmp___4 = zd_hw_mac(hw);
    zd_mac_clear(tmp___4);
    ieee80211_free_hw(hw);
  } else {
  }
  return (r);
}
}
static void disconnect(struct usb_interface *intf )
{
  struct ieee80211_hw *hw ;
  struct ieee80211_hw *tmp ;
  struct zd_mac *mac ;
  struct zd_usb *usb ;
  struct usb_device *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  tmp = zd_intf_to_hw(intf);
  hw = tmp;
  if ((unsigned long )hw == (unsigned long )((struct ieee80211_hw *)0)) {
    return;
  } else {
  }
  mac = zd_hw_mac(hw);
  usb = & mac->chip.usb;
  dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() \n", "disconnect");
  ieee80211_unregister_hw(hw);
  zd_usb_disable_tx(usb);
  zd_usb_disable_rx(usb);
  zd_usb_disable_int(usb);
  tmp___0 = interface_to_usbdev(intf);
  usb_reset_device(tmp___0);
  zd_mac_clear(mac);
  ieee80211_free_hw(hw);
  descriptor.modname = "zd1211rw";
  descriptor.function = "disconnect";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
  descriptor.format = "disconnected\n";
  descriptor.lineno = 1487U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& intf->dev), "disconnected\n");
  } else {
  }
  return;
}
}
static void zd_usb_resume(struct zd_usb *usb )
{
  struct zd_mac *mac ;
  struct zd_mac *tmp ;
  int r ;
  struct ieee80211_hw *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  tmp = zd_usb_to_mac(usb);
  mac = tmp;
  dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() \n", "zd_usb_resume");
  tmp___0 = zd_usb_to_hw(usb);
  r = zd_op_start(tmp___0);
  if (r < 0) {
    dev_warn((struct device const *)(& (usb->intf)->dev), "Device resume failed with error code %d. Retrying...\n",
             r);
    if ((unsigned int )*((unsigned char *)usb + 11284UL) != 0U) {
      set_bit(0L, (unsigned long volatile *)(& mac->flags));
    } else {
    }
    usb_queue_reset_device(usb->intf);
    return;
  } else {
  }
  if (mac->type != 0) {
    r = zd_restore_settings(mac);
    if (r < 0) {
      descriptor.modname = "zd1211rw";
      descriptor.function = "zd_usb_resume";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
      descriptor.format = "failed to restore settings, %d\n";
      descriptor.lineno = 1511U;
      descriptor.flags = 1U;
      tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& (usb->intf)->dev),
                          "failed to restore settings, %d\n", r);
      } else {
      }
      return;
    } else {
    }
  } else {
  }
  return;
}
}
static void zd_usb_stop(struct zd_usb *usb )
{
  struct ieee80211_hw *tmp ;
  {
  dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() \n", "zd_usb_stop");
  tmp = zd_usb_to_hw(usb);
  zd_op_stop(tmp);
  zd_usb_disable_tx(usb);
  zd_usb_disable_rx(usb);
  zd_usb_disable_int(usb);
  usb->initialized = 0U;
  return;
}
}
static int pre_reset(struct usb_interface *intf )
{
  struct ieee80211_hw *hw ;
  void *tmp ;
  struct zd_mac *mac ;
  struct zd_usb *usb ;
  int tmp___0 ;
  {
  tmp = usb_get_intfdata(intf);
  hw = (struct ieee80211_hw *)tmp;
  if ((unsigned long )hw == (unsigned long )((struct ieee80211_hw *)0) || (unsigned int )intf->condition != 2U) {
    return (0);
  } else {
  }
  mac = zd_hw_mac(hw);
  usb = & mac->chip.usb;
  tmp___0 = constant_test_bit(0L, (unsigned long const volatile *)(& mac->flags));
  usb->was_running = (unsigned char )tmp___0;
  zd_usb_stop(usb);
  mutex_lock_nested(& mac->chip.mutex, 0U);
  return (0);
}
}
static int post_reset(struct usb_interface *intf )
{
  struct ieee80211_hw *hw ;
  void *tmp ;
  struct zd_mac *mac ;
  struct zd_usb *usb ;
  {
  tmp = usb_get_intfdata(intf);
  hw = (struct ieee80211_hw *)tmp;
  if ((unsigned long )hw == (unsigned long )((struct ieee80211_hw *)0) || (unsigned int )intf->condition != 2U) {
    return (0);
  } else {
  }
  mac = zd_hw_mac(hw);
  usb = & mac->chip.usb;
  mutex_unlock(& mac->chip.mutex);
  if ((unsigned int )*((unsigned char *)usb + 11284UL) != 0U) {
    zd_usb_resume(usb);
  } else {
  }
  return (0);
}
}
static struct usb_driver driver =
     {"zd1211rw", & probe, & disconnect, 0, 0, 0, 0, & pre_reset, & post_reset, (struct usb_device_id const *)(& usb_ids),
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, {{0, 0, 0, 0, (_Bool)0,
                                                                 0, 0, 0, 0, 0, 0,
                                                                 0, 0, 0, 0}, 0},
    (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0};
static int usb_init(void)
{
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  struct lock_class_key __key ;
  char const *__lock_name ;
  struct workqueue_struct *tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  {
  descriptor.modname = "zd1211rw";
  descriptor.function = "usb_init";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
  descriptor.format = "%s usb_init()\n";
  descriptor.lineno = 1585U;
  descriptor.flags = 1U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s usb_init()\n", driver.name);
  } else {
  }
  __lock_name = "\"%s\"(driver.name)";
  tmp___0 = __alloc_workqueue_key("%s", 10U, 1, & __key, __lock_name, driver.name);
  zd_workqueue = tmp___0;
  if ((unsigned long )zd_workqueue == (unsigned long )((struct workqueue_struct *)0)) {
    printk("\v%s couldn\'t create workqueue\n", driver.name);
    return (-12);
  } else {
  }
  r = ldv_usb_register_driver_97(& driver, & __this_module, "zd1211rw");
  if (r != 0) {
    destroy_workqueue(zd_workqueue);
    printk("\v%s usb_register() failed. Error number %d\n", driver.name, r);
    return (r);
  } else {
  }
  descriptor___0.modname = "zd1211rw";
  descriptor___0.function = "usb_init";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
  descriptor___0.format = "%s initialized\n";
  descriptor___0.lineno = 1601U;
  descriptor___0.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "%s initialized\n", driver.name);
  } else {
  }
  return (0);
}
}
static void usb_exit(void)
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  descriptor.modname = "zd1211rw";
  descriptor.function = "usb_exit";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
  descriptor.format = "%s usb_exit()\n";
  descriptor.lineno = 1607U;
  descriptor.flags = 1U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s usb_exit()\n", driver.name);
  } else {
  }
  ldv_usb_deregister_98(& driver);
  destroy_workqueue(zd_workqueue);
  return;
}
}
static int zd_ep_regs_out_msg(struct usb_device *udev , void *data , int len , int *actual_length ,
                              int timeout )
{
  struct usb_host_endpoint *ep ;
  unsigned int pipe ;
  unsigned int tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = __create_pipe(udev, 4U);
  pipe = tmp | 1073741824U;
  ep = usb_pipe_endpoint(udev, pipe);
  if ((unsigned long )ep == (unsigned long )((struct usb_host_endpoint *)0)) {
    return (-22);
  } else {
  }
  tmp___3 = usb_endpoint_xfer_int((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp___3 != 0) {
    tmp___0 = usb_interrupt_msg(udev, pipe, data, len, actual_length, timeout);
    return (tmp___0);
  } else {
    tmp___1 = __create_pipe(udev, 4U);
    pipe = tmp___1 | 3221225472U;
    tmp___2 = usb_bulk_msg(udev, pipe, data, len, actual_length, timeout);
    return (tmp___2);
  }
}
}
static int usb_int_regs_length(unsigned int count )
{
  {
  return ((int )(count * 4U + 2U));
}
}
static void prepare_read_regs_int(struct zd_usb *usb , struct usb_req_read_regs *req ,
                                  unsigned int count )
{
  struct zd_usb_interrupt *intr ;
  {
  intr = & usb->intr;
  spin_lock_irq(& intr->lock);
  atomic_set(& intr->read_regs_enabled, 1);
  intr->read_regs.req = req;
  intr->read_regs.req_count = count;
  reinit_completion(& intr->read_regs.completion);
  spin_unlock_irq(& intr->lock);
  return;
}
}
static void disable_read_regs_int(struct zd_usb *usb )
{
  struct zd_usb_interrupt *intr ;
  {
  intr = & usb->intr;
  spin_lock_irq(& intr->lock);
  atomic_set(& intr->read_regs_enabled, 0);
  spin_unlock_irq(& intr->lock);
  return;
}
}
static bool check_read_regs(struct zd_usb *usb , struct usb_req_read_regs *req , unsigned int count )
{
  int i ;
  struct zd_usb_interrupt *intr ;
  struct read_regs_int *rr ;
  struct usb_int_regs *regs ;
  int tmp ;
  int tmp___0 ;
  struct reg_data *rd ;
  {
  intr = & usb->intr;
  rr = & intr->read_regs;
  regs = (struct usb_int_regs *)(& rr->buffer);
  tmp___0 = usb_int_regs_length(count);
  if (rr->length < tmp___0) {
    tmp = usb_int_regs_length(count);
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error: actual length %d less than expected %d\n",
               "check_read_regs", rr->length, tmp);
    return (0);
  } else {
  }
  if ((unsigned int )rr->length > 64U) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error: actual length %d exceeds buffer size %zu\n",
               "check_read_regs", rr->length, 64UL);
    return (0);
  } else {
  }
  i = 0;
  goto ldv_49105;
  ldv_49104:
  rd = (struct reg_data *)(& regs->regs) + (unsigned long )i;
  if ((int )rd->addr != (int )req->addr[i]) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() rd[%d] addr %#06hx expected %#06hx\n",
               "check_read_regs", i, (int )rd->addr, (int )req->addr[i]);
    return (0);
  } else {
  }
  i = i + 1;
  ldv_49105: ;
  if ((unsigned int )i < count) {
    goto ldv_49104;
  } else {
  }
  return (1);
}
}
static int get_results(struct zd_usb *usb , u16 *values , struct usb_req_read_regs *req ,
                       unsigned int count , bool *retry )
{
  int r ;
  int i ;
  struct zd_usb_interrupt *intr ;
  struct read_regs_int *rr ;
  struct usb_int_regs *regs ;
  bool tmp ;
  int tmp___0 ;
  struct reg_data *rd ;
  {
  intr = & usb->intr;
  rr = & intr->read_regs;
  regs = (struct usb_int_regs *)(& rr->buffer);
  spin_lock_irq(& intr->lock);
  r = -5;
  *retry = (unsigned int )*((unsigned char *)intr + 288UL) != 0U;
  if ((int )*retry) {
    goto error_unlock;
  } else {
  }
  tmp = check_read_regs(usb, req, count);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error: invalid read regs\n",
               "get_results");
    goto error_unlock;
  } else {
  }
  i = 0;
  goto ldv_49123;
  ldv_49122:
  rd = (struct reg_data *)(& regs->regs) + (unsigned long )i;
  *(values + (unsigned long )i) = rd->value;
  i = i + 1;
  ldv_49123: ;
  if ((unsigned int )i < count) {
    goto ldv_49122;
  } else {
  }
  r = 0;
  error_unlock:
  spin_unlock_irq(& intr->lock);
  return (r);
}
}
int zd_usb_ioread16v(struct zd_usb *usb , u16 *values , zd_addr_t const *addresses ,
                     unsigned int count )
{
  int r ;
  int i ;
  int req_len ;
  int actual_req_len ;
  int try_count ;
  struct usb_device *udev ;
  struct usb_req_read_regs *req ;
  unsigned long timeout ;
  bool retry ;
  int tmp ;
  int tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  struct zd_chip *tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  unsigned long tmp___6 ;
  {
  try_count = 0;
  req = (struct usb_req_read_regs *)0;
  retry = 0;
  if (count == 0U) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error: count is zero\n",
               "zd_usb_ioread16v");
    return (-22);
  } else {
  }
  if (count > 15U) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error: count %u exceeds possible max %u\n",
               "zd_usb_ioread16v", count, 15);
    return (-22);
  } else {
  }
  tmp = preempt_count();
  if (((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error: io in atomic context not supported\n",
               "zd_usb_ioread16v");
    return (-11);
  } else {
  }
  tmp___0 = usb_int_enabled(usb);
  if (tmp___0 == 0) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error: usb interrupt not enabled\n",
               "zd_usb_ioread16v");
    return (-11);
  } else {
  }
  tmp___2 = zd_usb_to_chip(usb);
  tmp___3 = mutex_is_locked(& tmp___2->mutex);
  tmp___4 = ldv__builtin_expect(tmp___3 == 0, 0L);
  if (tmp___4 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_usb_ioread16v";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 1772U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared",
                         1772, (char *)"mutex_is_locked(&zd_usb_to_chip(usb)->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  tmp___5 = ldv__builtin_expect(((unsigned long )count + 1UL) * 2UL > 64UL, 0L);
  if (tmp___5 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared"),
                         "i" (1776), "i" (12UL));
    ldv_49142: ;
    goto ldv_49142;
  } else {
  }
  req_len = (int )((unsigned int )((unsigned long )count + 1UL) * 2U);
  req = (struct usb_req_read_regs *)(& usb->req_buf);
  req->id = 34U;
  i = 0;
  goto ldv_49144;
  ldv_49143:
  req->addr[i] = *(addresses + (unsigned long )i);
  i = i + 1;
  ldv_49144: ;
  if ((unsigned int )i < count) {
    goto ldv_49143;
  } else {
  }
  retry_read:
  try_count = try_count + 1;
  udev = zd_usb_to_usbdev(usb);
  prepare_read_regs_int(usb, req, count);
  r = zd_ep_regs_out_msg(udev, (void *)req, req_len, & actual_req_len, 50);
  if (r != 0) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error in zd_ep_regs_out_msg(). Error number %d\n",
               "zd_usb_ioread16v", r);
    goto error;
  } else {
  }
  if (req_len != actual_req_len) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error in zd_ep_regs_out_msg()\n req_len %d != actual_req_len %d\n",
               "zd_usb_ioread16v", req_len, actual_req_len);
    r = -5;
    goto error;
  } else {
  }
  tmp___6 = msecs_to_jiffies(50U);
  timeout = wait_for_completion_timeout(& usb->intr.read_regs.completion, tmp___6);
  if (timeout == 0UL) {
    disable_read_regs_int(usb);
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() read timed out\n",
               "zd_usb_ioread16v");
    r = -110;
    goto error;
  } else {
  }
  r = get_results(usb, values, req, count, & retry);
  if ((int )retry && try_count <= 19) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() read retry, tries so far: %d\n",
               "zd_usb_ioread16v", try_count);
    goto retry_read;
  } else {
  }
  error: ;
  return (r);
}
}
static void iowrite16v_urb_complete(struct urb *urb )
{
  struct zd_usb *usb ;
  {
  usb = (struct zd_usb *)urb->context;
  if (urb->status != 0 && usb->cmd_error == 0) {
    usb->cmd_error = urb->status;
  } else {
  }
  if (usb->cmd_error == 0 && urb->actual_length != urb->transfer_buffer_length) {
    usb->cmd_error = -5;
  } else {
  }
  return;
}
}
static int zd_submit_waiting_urb(struct zd_usb *usb , bool last )
{
  int r ;
  struct urb *urb ;
  {
  r = 0;
  urb = usb->urb_async_waiting;
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    return (0);
  } else {
  }
  usb->urb_async_waiting = (struct urb *)0;
  if (! last) {
    urb->transfer_flags = urb->transfer_flags | 128U;
  } else {
  }
  usb_anchor_urb(urb, & usb->submitted_cmds);
  r = usb_submit_urb(urb, 208U);
  if (r != 0) {
    usb_unanchor_urb(urb);
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error in usb_submit_urb(). Error number %d\n",
               "zd_submit_waiting_urb", r);
    goto error;
  } else {
  }
  error:
  usb_free_urb(urb);
  return (r);
}
}
void zd_usb_iowrite16v_async_start(struct zd_usb *usb )
{
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___2 ;
  long tmp___6 ;
  struct zd_chip *tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  {
  tmp___0 = usb_anchor_empty(& usb->submitted_cmds);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_usb_iowrite16v_async_start";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 1864U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared",
                         1864, (char *)"usb_anchor_empty(&usb->submitted_cmds)");
    } else {
    }
    dump_stack();
  } else {
  }
  tmp___3 = ldv__builtin_expect((unsigned long )usb->urb_async_waiting != (unsigned long )((struct urb *)0),
                             0L);
  if (tmp___3 != 0L) {
    descriptor___0.modname = "zd1211rw";
    descriptor___0.function = "zd_usb_iowrite16v_async_start";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
    descriptor___0.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor___0.lineno = 1865U;
    descriptor___0.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared",
                         1865, (char *)"usb->urb_async_waiting == ((void *)0)");
    } else {
    }
    dump_stack();
  } else {
  }
  tmp___5 = ldv__builtin_expect((unsigned int )*((unsigned char *)usb + 11284UL) != 0U,
                             0L);
  if (tmp___5 != 0L) {
    descriptor___1.modname = "zd1211rw";
    descriptor___1.function = "zd_usb_iowrite16v_async_start";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
    descriptor___1.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor___1.lineno = 1866U;
    descriptor___1.flags = 1U;
    tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared",
                         1866, (char *)"!usb->in_async");
    } else {
    }
    dump_stack();
  } else {
  }
  tmp___7 = zd_usb_to_chip(usb);
  tmp___8 = mutex_is_locked(& tmp___7->mutex);
  tmp___9 = ldv__builtin_expect(tmp___8 == 0, 0L);
  if (tmp___9 != 0L) {
    descriptor___2.modname = "zd1211rw";
    descriptor___2.function = "zd_usb_iowrite16v_async_start";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
    descriptor___2.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor___2.lineno = 1868U;
    descriptor___2.flags = 1U;
    tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_pr_debug(& descriptor___2, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared",
                         1868, (char *)"mutex_is_locked(&zd_usb_to_chip(usb)->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  usb->in_async = 1U;
  usb->cmd_error = 0;
  usb->urb_async_waiting = (struct urb *)0;
  return;
}
}
int zd_usb_iowrite16v_async_end(struct zd_usb *usb , unsigned int timeout )
{
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  struct zd_chip *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  long tmp___4 ;
  int tmp___5 ;
  {
  tmp___0 = zd_usb_to_chip(usb);
  tmp___1 = mutex_is_locked(& tmp___0->mutex);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_usb_iowrite16v_async_end";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 1879U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared",
                         1879, (char *)"mutex_is_locked(&zd_usb_to_chip(usb)->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  tmp___4 = ldv__builtin_expect((unsigned int )*((unsigned char *)usb + 11284UL) == 0U,
                             0L);
  if (tmp___4 != 0L) {
    descriptor___0.modname = "zd1211rw";
    descriptor___0.function = "zd_usb_iowrite16v_async_end";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
    descriptor___0.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor___0.lineno = 1880U;
    descriptor___0.flags = 1U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared",
                         1880, (char *)"usb->in_async");
    } else {
    }
    dump_stack();
  } else {
  }
  r = zd_submit_waiting_urb(usb, 1);
  if (r != 0) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error in zd_submit_waiting_usb(). Error number %d\n",
               "zd_usb_iowrite16v_async_end", r);
    usb_kill_anchored_urbs(& usb->submitted_cmds);
    goto error;
  } else {
  }
  if (timeout != 0U) {
    tmp___5 = usb_wait_anchor_empty_timeout(& usb->submitted_cmds, timeout);
    timeout = (unsigned int )tmp___5;
  } else {
  }
  if (timeout == 0U) {
    usb_kill_anchored_urbs(& usb->submitted_cmds);
    if (usb->cmd_error == -2) {
      dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() timed out",
                 "zd_usb_iowrite16v_async_end");
      r = -110;
      goto error;
    } else {
    }
  } else {
  }
  r = usb->cmd_error;
  error:
  usb->in_async = 0U;
  return (r);
}
}
int zd_usb_iowrite16v_async(struct zd_usb *usb , struct zd_ioreq16 const *ioreqs ,
                            unsigned int count )
{
  int r ;
  struct usb_device *udev ;
  struct usb_req_write_regs *req ;
  int i ;
  int req_len ;
  struct urb *urb ;
  struct usb_host_endpoint *ep ;
  struct _ddebug descriptor ;
  long tmp ;
  struct zd_chip *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  long tmp___4 ;
  int tmp___5 ;
  unsigned int tmp___6 ;
  void *tmp___7 ;
  struct reg_data *rw ;
  unsigned int tmp___8 ;
  unsigned int tmp___9 ;
  int tmp___10 ;
  {
  req = (struct usb_req_write_regs *)0;
  tmp___0 = zd_usb_to_chip(usb);
  tmp___1 = mutex_is_locked(& tmp___0->mutex);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_usb_iowrite16v_async";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 1921U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared",
                         1921, (char *)"mutex_is_locked(&zd_usb_to_chip(usb)->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  tmp___4 = ldv__builtin_expect((unsigned int )*((unsigned char *)usb + 11284UL) == 0U,
                             0L);
  if (tmp___4 != 0L) {
    descriptor___0.modname = "zd1211rw";
    descriptor___0.function = "zd_usb_iowrite16v_async";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
    descriptor___0.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor___0.lineno = 1922U;
    descriptor___0.flags = 1U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared",
                         1922, (char *)"usb->in_async");
    } else {
    }
    dump_stack();
  } else {
  }
  if (count == 0U) {
    return (0);
  } else {
  }
  if (count > 15U) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error: count %u exceeds possible max %u\n",
               "zd_usb_iowrite16v_async", count, 15);
    return (-22);
  } else {
  }
  tmp___5 = preempt_count();
  if (((unsigned long )tmp___5 & 0xffffffffffdfffffUL) != 0UL) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error: io in atomic context not supported\n",
               "zd_usb_iowrite16v_async");
    return (-11);
  } else {
  }
  udev = zd_usb_to_usbdev(usb);
  tmp___6 = __create_pipe(udev, 4U);
  ep = usb_pipe_endpoint(udev, tmp___6 | 1073741824U);
  if ((unsigned long )ep == (unsigned long )((struct usb_host_endpoint *)0)) {
    return (-2);
  } else {
  }
  urb = usb_alloc_urb(0, 208U);
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    return (-12);
  } else {
  }
  req_len = (int )(count * 4U + 2U);
  tmp___7 = kmalloc((size_t )req_len, 208U);
  req = (struct usb_req_write_regs *)tmp___7;
  if ((unsigned long )req == (unsigned long )((struct usb_req_write_regs *)0)) {
    r = -12;
    goto error;
  } else {
  }
  req->id = 33U;
  i = 0;
  goto ldv_49195;
  ldv_49194:
  rw = (struct reg_data *)(& req->reg_writes) + (unsigned long )i;
  rw->addr = (ioreqs + (unsigned long )i)->addr;
  rw->value = (ioreqs + (unsigned long )i)->value;
  i = i + 1;
  ldv_49195: ;
  if ((unsigned int )i < count) {
    goto ldv_49194;
  } else {
  }
  tmp___10 = usb_endpoint_xfer_int((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp___10 != 0) {
    tmp___8 = __create_pipe(udev, 4U);
    usb_fill_int_urb(urb, udev, tmp___8 | 1073741824U, (void *)req, req_len, & iowrite16v_urb_complete,
                     (void *)usb, (int )ep->desc.bInterval);
  } else {
    tmp___9 = __create_pipe(udev, 4U);
    usb_fill_bulk_urb(urb, udev, tmp___9 | 3221225472U, (void *)req, req_len, & iowrite16v_urb_complete,
                      (void *)usb);
  }
  urb->transfer_flags = urb->transfer_flags | 256U;
  r = zd_submit_waiting_urb(usb, 0);
  if (r != 0) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error in zd_submit_waiting_usb(). Error number %d\n",
               "zd_usb_iowrite16v_async", r);
    goto error;
  } else {
  }
  usb->urb_async_waiting = urb;
  return (0);
  error:
  usb_free_urb(urb);
  return (r);
}
}
int zd_usb_iowrite16v(struct zd_usb *usb , struct zd_ioreq16 const *ioreqs , unsigned int count )
{
  int r ;
  int tmp ;
  {
  zd_usb_iowrite16v_async_start(usb);
  r = zd_usb_iowrite16v_async(usb, ioreqs, count);
  if (r != 0) {
    zd_usb_iowrite16v_async_end(usb, 0U);
    return (r);
  } else {
  }
  tmp = zd_usb_iowrite16v_async_end(usb, 50U);
  return (tmp);
}
}
int zd_usb_rfwrite(struct zd_usb *usb , u32 value , u8 bits )
{
  int r ;
  struct usb_device *udev ;
  struct usb_req_rfwrite *req ;
  int i ;
  int req_len ;
  int actual_req_len ;
  u16 bit_value_template ;
  int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct zd_chip *tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  u16 bv ;
  {
  req = (struct usb_req_rfwrite *)0;
  tmp = preempt_count();
  if (((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error: io in atomic context not supported\n",
               "zd_usb_rfwrite");
    return (-11);
  } else {
  }
  if ((unsigned int )bits <= 15U) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error: bits %d are smaller than USB_MIN_RFWRITE_BIT_COUNT %d\n",
               "zd_usb_rfwrite", (int )bits, 16);
    return (-22);
  } else {
  }
  if ((unsigned int )bits > 28U) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error: bits %d exceed USB_MAX_RFWRITE_BIT_COUNT %d\n",
               "zd_usb_rfwrite", (int )bits, 28);
    return (-22);
  } else {
  }
  if (((unsigned long )value & (0xffffffffffffffffUL << (int )bits)) != 0UL) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error: value %#09x has bits >= %d set\n",
               "zd_usb_rfwrite", value, (int )bits);
    return (-22);
  } else {
  }
  dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() value %#09x bits %d\n",
             "zd_usb_rfwrite", value, (int )bits);
  r = zd_usb_ioread16(usb, & bit_value_template, 37676);
  if (r != 0) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error %d: Couldn\'t read ZD_CR203\n",
               "zd_usb_rfwrite", r);
    return (r);
  } else {
  }
  bit_value_template = (unsigned int )bit_value_template & 65521U;
  tmp___1 = zd_usb_to_chip(usb);
  tmp___2 = mutex_is_locked(& tmp___1->mutex);
  tmp___3 = ldv__builtin_expect(tmp___2 == 0, 0L);
  if (tmp___3 != 0L) {
    descriptor.modname = "zd1211rw";
    descriptor.function = "zd_usb_rfwrite";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared";
    descriptor.format = "%s:%d ASSERT %s VIOLATED!\n";
    descriptor.lineno = 2054U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%d ASSERT %s VIOLATED!\n", (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared",
                         2054, (char *)"mutex_is_locked(&zd_usb_to_chip(usb)->mutex)");
    } else {
    }
    dump_stack();
  } else {
  }
  tmp___4 = ldv__builtin_expect(((unsigned long )bits + 3UL) * 2UL > 64UL, 0L);
  if (tmp___4 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/553/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/zd1211rw/zd_usb.o.c.prepared"),
                         "i" (2059), "i" (12UL));
    ldv_49217: ;
    goto ldv_49217;
  } else {
  }
  req_len = (int )((unsigned int )((unsigned long )bits + 3UL) * 2U);
  req = (struct usb_req_rfwrite *)(& usb->req_buf);
  req->id = 35U;
  req->value = 2U;
  req->bits = (unsigned short )bits;
  i = 0;
  goto ldv_49220;
  ldv_49219:
  bv = bit_value_template;
  if (((u32 )(1 << (((int )bits + -1) - i)) & value) != 0U) {
    bv = (u16 )((unsigned int )bv | 8U);
  } else {
  }
  req->bit_values[i] = bv;
  i = i + 1;
  ldv_49220: ;
  if ((int )bits > i) {
    goto ldv_49219;
  } else {
  }
  udev = zd_usb_to_usbdev(usb);
  r = zd_ep_regs_out_msg(udev, (void *)req, req_len, & actual_req_len, 50);
  if (r != 0) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error in zd_ep_regs_out_msg(). Error number %d\n",
               "zd_usb_rfwrite", r);
    goto out;
  } else {
  }
  if (req_len != actual_req_len) {
    dev_printk("\017", (struct device const *)(& (usb->intf)->dev), "%s() error in zd_ep_regs_out_msg() req_len %d != actual_req_len %d\n",
               "zd_usb_rfwrite", req_len, actual_req_len);
    r = -5;
    goto out;
  } else {
  }
  out: ;
  return (r);
}
}
int ldv_retval_0 ;
int ldv_retval_1 ;
void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
void ldv_usb_driver_1(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1560UL);
  driver_group1 = (struct usb_interface *)tmp;
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
  ldv_state_variable_1 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_2 = 0;
  ldv_49258:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_1 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_1 == 1) {
      ldv_retval_0 = probe(driver_group1, (struct usb_device_id const *)ldvarg0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_1 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_49246;
    case 1: ;
    if (ldv_state_variable_1 == 2 && usb_counter == 0) {
      disconnect(driver_group1);
      ldv_state_variable_1 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_49246;
    default:
    ldv_stop();
    }
    ldv_49246: ;
  } else {
  }
  goto ldv_49249;
  case 1: ;
  if (ldv_state_variable_0 != 0) {
    tmp___2 = __VERIFIER_nondet_int();
    switch (tmp___2) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      usb_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_49253;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = usb_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_2 = 1;
        ldv_initialize_ieee80211_ops_2();
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_49253;
    default:
    ldv_stop();
    }
    ldv_49253: ;
  } else {
  }
  goto ldv_49249;
  case 2: ;
  if (ldv_state_variable_2 != 0) {
    ldv_main_exported_2();
  } else {
  }
  goto ldv_49249;
  default:
  ldv_stop();
  }
  ldv_49249: ;
  goto ldv_49258;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void ldv_consume_skb_90(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_91(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_92(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_93(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_96(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
int ldv_usb_register_driver_97(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  {
  tmp = usb_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_1 = 1;
  usb_counter = 0;
  ldv_usb_driver_1();
  return (ldv_func_res);
}
}
void ldv_usb_deregister_98(struct usb_driver *arg )
{
  {
  usb_deregister(arg);
  ldv_state_variable_1 = 0;
  return;
}
}
__inline static void ldv_error(void);
Element set_impl[15] ;
int last_index = 0;
__inline static void ldv_set_init(Set set ) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_set_init(Set set )
{
  {
  set = set_impl;
  last_index = 0;
  return;
}
}
__inline static void ldv_set_add(Set set , Element e ) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_set_add(Set set , Element e )
{
  int i ;
  {
  i = 0;
  while (1) {
    if (i < last_index) {
    } else {
      break;
    }
    if ((unsigned long )set_impl[i] == (unsigned long )e) {
      return;
    } else {
    }
    i = i + 1;
  }
  if (last_index < 15) {
    set_impl[last_index] = e;
    last_index = last_index + 1;
  } else {
  }
  return;
}
}
__inline static void ldv_set_remove(Set set , Element e ) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_set_remove(Set set , Element e )
{
  int i ;
  int deleted_index ;
  {
  deleted_index = -1;
  i = 0;
  while (1) {
    if (i < last_index) {
    } else {
      break;
    }
    if ((unsigned long )set_impl[i] == (unsigned long )e) {
      deleted_index = i;
      break;
    } else {
    }
    i = i + 1;
  }
  if (deleted_index != -1) {
    i = deleted_index + 1;
    while (1) {
      if (i < last_index) {
      } else {
        break;
      }
      set_impl[i - 1] = set_impl[i];
      i = i + 1;
    }
    last_index = last_index - 1;
  } else {
  }
  return;
}
}
__inline static int ldv_set_contains(Set set , Element e ) __attribute__((__no_instrument_function__)) ;
__inline static int ldv_set_contains(Set set , Element e )
{
  int i ;
  {
  i = 0;
  while (1) {
    if (i < last_index) {
    } else {
      break;
    }
    if ((unsigned long )set_impl[i] == (unsigned long )e) {
      return (1);
    } else {
    }
    i = i + 1;
  }
  return (0);
}
}
__inline static int ldv_set_is_empty(Set set ) __attribute__((__no_instrument_function__)) ;
__inline static int ldv_set_is_empty(Set set )
{
  {
  return (last_index == 0);
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
  bool tmp___7 ;
  int tmp___8 ;
  {
  if (! ptr) {
    tmp___8 = 1;
  } else {
    tmp___7 = ldv_is_err((unsigned long )ptr);
    if (tmp___7) {
      tmp___8 = 1;
    } else {
      tmp___8 = 0;
    }
  }
  return (tmp___8);
}
}
Set LDV_SKBS ;
struct sk_buff___0 *ldv_skb_alloc(void)
{
  void *skb ;
  void *tmp___7 ;
  {
  tmp___7 = ldv_zalloc(sizeof(struct sk_buff___0 ));
  skb = (struct sk_buff___0 *)tmp___7;
  if (! skb) {
    return ((void *)0);
  } else {
    ldv_set_add(LDV_SKBS, skb);
    return (skb);
  }
}
}
void ldv_initialize(void)
{
  {
  ldv_set_init(LDV_SKBS);
  return;
}
}
void ldv_skb_free(struct sk_buff___0 *skb )
{
  {
  ldv_set_remove(LDV_SKBS, skb);
  return;
}
}
int ldv_skb_free_int(struct sk_buff___0 *skb )
{
  {
  ldv_set_remove(LDV_SKBS, skb);
  return (0);
}
}
struct sk_buff___0 *ldv_netdev_alloc_skb(void) ;
struct sk_buff___0 *ldv_dev_alloc_skb(void)
{
  void *skb ;
  int tmp___7 ;
  {
  tmp___7 = (int )ldv_netdev_alloc_skb();
  skb = tmp___7;
  return (skb);
}
}
struct sk_buff___0 *ldv_netdev_alloc_skb(void)
{
  struct sk_buff___0 *tmp___7 ;
  {
  tmp___7 = ldv_skb_alloc();
  return (tmp___7);
}
}
int ldv_skb_current(struct sk_buff___0 *skb )
{
  int tmp___7 ;
  {
  tmp___7 = ldv_set_contains(LDV_SKBS, skb);
  if (tmp___7) {
    return (1);
  } else {
    return (0);
  }
}
}
void ldv_check_final_state(void)
{
  int tmp___7 ;
  {
  tmp___7 = ldv_set_is_empty(LDV_SKBS);
  if (tmp___7) {
  } else {
    ldv_error();
  }
  return;
}
}
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
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
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __tasklet_schedule(struct tasklet_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
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
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work_sync(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void complete(struct completion *arg0) {
  return;
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_printk(const char *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void dump_stack() {
  return;
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int get_seconds() {
  return __VERIFIER_nondet_ulong();
}
struct ieee80211_hw *ieee80211_alloc_hw(size_t arg0, const struct ieee80211_ops *arg1) {
  return ldv_malloc(sizeof(struct ieee80211_hw));
}
struct sk_buff *ieee80211_beacon_get_tim(struct ieee80211_hw *arg0, struct ieee80211_vif *arg1, u16 *arg2, u16 *arg3) {
  return ldv_malloc(sizeof(struct sk_buff));
}
void ieee80211_free_hw(struct ieee80211_hw *arg0) {
  return;
}
struct sk_buff *ieee80211_get_buffered_bc(struct ieee80211_hw *arg0, struct ieee80211_vif *arg1) {
  return ldv_malloc(sizeof(struct sk_buff));
}
int __VERIFIER_nondet_int(void);
int ieee80211_queue_stopped(struct ieee80211_hw *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ieee80211_register_hw(struct ieee80211_hw *arg0) {
  return __VERIFIER_nondet_int();
}
void ieee80211_rx_irqsafe(struct ieee80211_hw *arg0, struct sk_buff *arg1) {
  return;
}
void ieee80211_stop_queues(struct ieee80211_hw *arg0) {
  return;
}
void ieee80211_tx_status_irqsafe(struct ieee80211_hw *arg0, struct sk_buff *arg1) {
  return;
}
void ieee80211_unregister_hw(struct ieee80211_hw *arg0) {
  return;
}
void ieee80211_wake_queues(struct ieee80211_hw *arg0) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool mod_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void msleep(unsigned int arg0) {
  return;
}
void mutex_destroy(struct mutex *arg0) {
  return;
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
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int regulatory_hint(struct wiphy *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void release_firmware(const struct firmware *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_firmware(const struct firmware **arg0, const char *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int round_jiffies_relative(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int scnprintf(char *arg0, size_t arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
struct sk_buff *skb_dequeue(struct sk_buff_head *arg0) {
  return ldv_malloc(sizeof(struct sk_buff));
}
unsigned char *skb_pull(struct sk_buff *arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(unsigned char));
}
unsigned char *skb_push(struct sk_buff *arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(unsigned char));
}
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  unsigned char *ret_val = arg0->data + arg0->tail;
  arg0->tail += arg1;
  return ret_val;
}
void skb_queue_tail(struct sk_buff_head *arg0, struct sk_buff *arg1) {
  return;
}
void skb_unlink(struct sk_buff *arg0, struct sk_buff_head *arg1) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
  return;
}
void *usb_alloc_coherent(struct usb_device *arg0, size_t arg1, gfp_t arg2, dma_addr_t *arg3) {
  return ldv_malloc(0UL);
}
struct urb *usb_alloc_urb(int arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct urb));
}
int __VERIFIER_nondet_int(void);
int usb_anchor_empty(struct usb_anchor *arg0) {
  return __VERIFIER_nondet_int();
}
void usb_anchor_urb(struct urb *arg0, struct usb_anchor *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_bulk_msg(struct usb_device *arg0, unsigned int arg1, void *arg2, int arg3, int *arg4, int arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_control_msg(struct usb_device *arg0, unsigned int arg1, __u8 arg2, __u8 arg3, __u16 arg4, __u16 arg5, void *arg6, __u16 arg7, int arg8) {
  return __VERIFIER_nondet_int();
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
void usb_free_coherent(struct usb_device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void usb_free_urb(struct urb *arg0) {
  return;
}
struct usb_interface *usb_get_intf(struct usb_interface *arg0) {
  return ldv_malloc(sizeof(struct usb_interface));
}
int __VERIFIER_nondet_int(void);
int usb_interrupt_msg(struct usb_device *arg0, unsigned int arg1, void *arg2, int arg3, int *arg4, int arg5) {
  return __VERIFIER_nondet_int();
}
void usb_kill_anchored_urbs(struct usb_anchor *arg0) {
  return;
}
void usb_kill_urb(struct urb *arg0) {
  return;
}
void usb_put_intf(struct usb_interface *arg0) {
  return;
}
void usb_queue_reset_device(struct usb_interface *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_reset_configuration(struct usb_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_reset_device(struct usb_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_submit_urb(struct urb *arg0, gfp_t arg1) {
  return __VERIFIER_nondet_int();
}
void usb_unanchor_urb(struct urb *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_wait_anchor_empty_timeout(struct usb_anchor *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
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
