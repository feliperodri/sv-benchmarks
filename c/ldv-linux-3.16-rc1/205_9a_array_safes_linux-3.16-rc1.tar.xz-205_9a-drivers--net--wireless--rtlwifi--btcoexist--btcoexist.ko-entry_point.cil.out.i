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
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
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
union __anonunion_data_185 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_185 data ;
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
struct __anonstruct_sync_serial_settings_186 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_186 sync_serial_settings;
struct __anonstruct_te1_settings_187 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_187 te1_settings;
struct __anonstruct_raw_hdlc_proto_188 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_188 raw_hdlc_proto;
struct __anonstruct_fr_proto_189 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_189 fr_proto;
struct __anonstruct_fr_proto_pvc_190 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_190 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_191 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_191 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_192 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_192 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_193 {
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
   union __anonunion_ifs_ifsu_193 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_194 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_195 {
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
   union __anonunion_ifr_ifrn_194 ifr_ifrn ;
   union __anonunion_ifr_ifru_195 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_26750_198 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_26751_197 {
   struct __anonstruct_ldv_26750_198 ldv_26750 ;
};
struct lockref {
   union __anonunion_ldv_26751_197 ldv_26751 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_26774_200 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_26776_199 {
   struct __anonstruct_ldv_26774_200 ldv_26774 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_26776_199 ldv_26776 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_201 {
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
   union __anonunion_d_u_201 d_u ;
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
struct __anonstruct_ldv_27137_203 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_27139_202 {
   struct __anonstruct_ldv_27137_203 ldv_27137 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_27139_202 ldv_27139 ;
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
struct __anonstruct_kprojid_t_204 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_204 kprojid_t;
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
union __anonunion_ldv_27664_205 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_27664_205 ldv_27664 ;
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
union __anonunion_ldv_28078_208 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_28098_209 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_28115_210 {
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
   union __anonunion_ldv_28078_208 ldv_28078 ;
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
   union __anonunion_ldv_28098_209 ldv_28098 ;
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
   union __anonunion_ldv_28115_210 ldv_28115 ;
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
union __anonunion_f_u_211 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_211 f_u ;
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
struct __anonstruct_afs_213 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_212 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_213 afs ;
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
   union __anonunion_fl_u_212 fl_u ;
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
struct __anonstruct_adj_list_241 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_242 {
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
union __anonunion_ldv_39218_243 {
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
   struct __anonstruct_adj_list_241 adj_list ;
   struct __anonstruct_all_adj_list_242 all_adj_list ;
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
   union __anonunion_ldv_39218_243 ldv_39218 ;
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
struct __anonstruct_wext_284 {
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
   struct __anonstruct_wext_284 wext ;
};
enum btc_chip_interface {
    BTC_INTF_UNKNOWN = 0,
    BTC_INTF_PCI = 1,
    BTC_INTF_USB = 2,
    BTC_INTF_SDIO = 3,
    BTC_INTF_GSPI = 4,
    BTC_INTF_MAX = 5
} ;
struct btc_board_info {
   u8 bt_chip_type ;
   u8 pg_ant_num ;
   u8 btdm_ant_num ;
   u8 btdm_ant_pos ;
   bool bt_exist ;
};
struct btc_bt_info {
   bool bt_disabled ;
   u8 rssi_adjust_for_agc_table_on ;
   u8 rssi_adjust_for_1ant_coex_type ;
   bool bt_busy ;
   u8 agg_buf_size ;
   bool limited_dig ;
   bool reject_agg_pkt ;
   bool b_bt_ctrl_buf_size ;
   bool increase_scan_dev_num ;
   u16 bt_hci_ver ;
   u16 bt_real_fw_ver ;
   u8 bt_fw_ver ;
   bool bt_ctrl_lps ;
   bool bt_pwr_save_mode ;
   bool bt_lps_on ;
   bool force_to_roam ;
   u8 force_exec_pwr_cmd_cnt ;
   u8 lps_1ant ;
   u8 rpwm_1ant ;
   u32 ra_mask ;
};
struct btc_stack_info {
   bool profile_notified ;
   u16 hci_version ;
   u8 num_of_link ;
   bool bt_link_exist ;
   bool sco_exist ;
   bool acl_exist ;
   bool a2dp_exist ;
   bool hid_exist ;
   u8 num_of_hid ;
   bool pan_exist ;
   bool unknown_acl_exist ;
   char min_bt_rssi ;
};
struct btc_statistics {
   u32 cnt_bind ;
   u32 cnt_init_hw_config ;
   u32 cnt_init_coex_dm ;
   u32 cnt_ips_notify ;
   u32 cnt_lps_notify ;
   u32 cnt_scan_notify ;
   u32 cnt_connect_notify ;
   u32 cnt_media_status_notify ;
   u32 cnt_special_packet_notify ;
   u32 cnt_bt_info_notify ;
   u32 cnt_periodical ;
   u32 cnt_stack_operation_notify ;
   u32 cnt_dbg_ctrl ;
};
struct btc_bt_link_info {
   bool bt_link_exist ;
   bool sco_exist ;
   bool sco_only ;
   bool a2dp_exist ;
   bool a2dp_only ;
   bool hid_exist ;
   bool hid_only ;
   bool pan_exist ;
   bool pan_only ;
};
struct btc_coexist {
   bool binded ;
   void *adapter ;
   struct btc_board_info board_info ;
   struct btc_bt_info bt_info ;
   struct btc_stack_info stack_info ;
   enum btc_chip_interface chip_interface ;
   struct btc_bt_link_info bt_link_info ;
   bool initilized ;
   bool stop_coex_dm ;
   bool manual_control ;
   u8 *cli_buf ;
   struct btc_statistics statistics ;
   u8 pwr_mode_val[10U] ;
   u8 (*btc_read_1byte)(void * , u32 ) ;
   void (*btc_write_1byte)(void * , u32 , u8 ) ;
   void (*btc_write_1byte_bitmask)(void * , u32 , u32 , u8 ) ;
   u16 (*btc_read_2byte)(void * , u32 ) ;
   void (*btc_write_2byte)(void * , u32 , u16 ) ;
   u32 (*btc_read_4byte)(void * , u32 ) ;
   void (*btc_write_4byte)(void * , u32 , u32 ) ;
   void (*btc_set_bb_reg)(void * , u32 , u32 , u32 ) ;
   u32 (*btc_get_bb_reg)(void * , u32 , u32 ) ;
   void (*btc_set_rf_reg)(void * , u8 , u32 , u32 , u32 ) ;
   u32 (*btc_get_rf_reg)(void * , u8 , u32 , u32 ) ;
   void (*btc_fill_h2c)(void * , u8 , u32 , u8 * ) ;
   void (*btc_disp_dbg_msg)(void * , u8 ) ;
   bool (*btc_get)(void * , u8 , void * ) ;
   bool (*btc_set)(void * , u8 , void * ) ;
};
struct coex_dm_8723b_2ant {
   bool pre_dec_bt_pwr ;
   bool cur_dec_bt_pwr ;
   u8 pre_fw_dac_swing_lvl ;
   u8 cur_fw_dac_swing_lvl ;
   bool cur_ignore_wlan_act ;
   bool pre_ignore_wlan_act ;
   u8 pre_ps_tdma ;
   u8 cur_ps_tdma ;
   u8 ps_tdma_para[5U] ;
   u8 tdma_adj_type ;
   bool reset_tdma_adjust ;
   bool auto_tdma_adjust ;
   bool pre_ps_tdma_on ;
   bool cur_ps_tdma_on ;
   bool pre_bt_auto_report ;
   bool cur_bt_auto_report ;
   bool pre_rf_rx_lpf_shrink ;
   bool cur_rf_rx_lpf_shrink ;
   u32 bt_rf0x1e_backup ;
   bool pre_low_penalty_ra ;
   bool cur_low_penalty_ra ;
   bool pre_dac_swing_on ;
   u32 pre_dac_swing_lvl ;
   bool cur_dac_swing_on ;
   u32 cur_dac_swing_lvl ;
   bool pre_adc_back_off ;
   bool cur_adc_back_off ;
   bool pre_agc_table_en ;
   bool cur_agc_table_en ;
   u32 pre_val0x6c0 ;
   u32 cur_val0x6c0 ;
   u32 pre_val0x6c4 ;
   u32 cur_val0x6c4 ;
   u32 pre_val0x6c8 ;
   u32 cur_val0x6c8 ;
   u8 pre_val0x6cc ;
   u8 cur_val0x6cc ;
   bool limited_dig ;
   u8 pre_algorithm ;
   u8 cur_algorithm ;
   u8 bt_status ;
   u8 wifi_chnl_info[3U] ;
   bool need_recover_0x948 ;
   u16 backup_0x948 ;
};
struct coex_sta_8723b_2ant {
   bool bt_link_exist ;
   bool sco_exist ;
   bool a2dp_exist ;
   bool hid_exist ;
   bool pan_exist ;
   bool under_lps ;
   bool under_ips ;
   u32 high_priority_tx ;
   u32 high_priority_rx ;
   u32 low_priority_tx ;
   u32 low_priority_rx ;
   u8 bt_rssi ;
   u8 pre_bt_rssi_state ;
   u8 pre_wifi_rssi_state[4U] ;
   bool c2h_bt_info_req_sent ;
   u8 bt_info_c2h[3U][10U] ;
   u32 bt_info_c2h_cnt[3U] ;
   bool c2h_bt_inquiry_page ;
   u8 bt_retry_cnt ;
   u8 bt_info_ext ;
};
typedef __s16 int16_t;
enum hrtimer_restart;
struct rtl_priv;
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
struct ieee80211_hdr {
   __le16 frame_control ;
   __le16 duration_id ;
   u8 addr1[6U] ;
   u8 addr2[6U] ;
   u8 addr3[6U] ;
   __le16 seq_ctrl ;
   u8 addr4[6U] ;
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
enum nl80211_channel_type {
    NL80211_CHAN_NO_HT = 0,
    NL80211_CHAN_HT20 = 1,
    NL80211_CHAN_HT40MINUS = 2,
    NL80211_CHAN_HT40PLUS = 3
} ;
struct ieee80211_tx_queue_params {
   u16 txop ;
   u16 cw_min ;
   u16 cw_max ;
   u8 aifs ;
   bool acm ;
   bool uapsd ;
};
struct ieee80211_chanctx_conf {
   struct cfg80211_chan_def def ;
   struct cfg80211_chan_def min_def ;
   u8 rx_chains_static ;
   u8 rx_chains_dynamic ;
   bool radar_enabled ;
   u8 drv_priv[0U] ;
};
struct ieee80211_vif;
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
struct ieee80211_tx_rate {
   s8 idx ;
   unsigned char count : 5 ;
   unsigned short flags : 11 ;
};
struct __anonstruct_ldv_46021_288 {
   struct ieee80211_tx_rate rates[4U] ;
   s8 rts_cts_rate_idx ;
   unsigned char use_rts : 1 ;
   unsigned char use_cts_prot : 1 ;
   unsigned char short_preamble : 1 ;
   unsigned char skip_table : 1 ;
};
union __anonunion_ldv_46023_287 {
   struct __anonstruct_ldv_46021_288 ldv_46021 ;
   unsigned long jiffies ;
};
struct ieee80211_key_conf;
struct __anonstruct_control_286 {
   union __anonunion_ldv_46023_287 ldv_46023 ;
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
struct __anonstruct_ldv_46041_290 {
   struct ieee80211_tx_rate driver_rates[4U] ;
   u8 pad[4U] ;
   void *rate_driver_data[3U] ;
};
union __anonunion_ldv_46043_285 {
   struct __anonstruct_control_286 control ;
   struct __anonstruct_status_289 status ;
   struct __anonstruct_ldv_46041_290 ldv_46041 ;
   void *driver_data[5U] ;
};
struct ieee80211_tx_info {
   u32 flags ;
   u8 band ;
   u8 hw_queue ;
   u16 ack_frame_id ;
   union __anonunion_ldv_46043_285 ldv_46043 ;
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
enum intf_type {
    INTF_PCI = 0,
    INTF_USB = 1
} ;
enum radio_path {
    RF90_PATH_A = 0,
    RF90_PATH_B = 1,
    RF90_PATH_C = 2,
    RF90_PATH_D = 3
} ;
enum rf_pwrstate {
    ERFON = 0,
    ERFSLEEP = 1,
    ERFOFF = 2
} ;
struct bb_reg_def {
   u32 rfintfs ;
   u32 rfintfi ;
   u32 rfintfo ;
   u32 rfintfe ;
   u32 rf3wire_offset ;
   u32 rflssi_select ;
   u32 rftxgain_stage ;
   u32 rfhssi_para1 ;
   u32 rfhssi_para2 ;
   u32 rfsw_ctrl ;
   u32 rfagc_control1 ;
   u32 rfagc_control2 ;
   u32 rfrxiq_imbal ;
   u32 rfrx_afe ;
   u32 rftxiq_imbal ;
   u32 rftx_afe ;
   u32 rf_rb ;
   u32 rf_rbpi ;
};
enum io_type {
    IO_CMD_PAUSE_DM_BY_SCAN = 0,
    IO_CMD_PAUSE_BAND0_DM_BY_SCAN = 0,
    IO_CMD_PAUSE_BAND1_DM_BY_SCAN = 1,
    IO_CMD_RESUME_DM_BY_SCAN = 2
} ;
enum _RT_MEDIA_STATUS {
    RT_MEDIA_DISCONNECT = 0,
    RT_MEDIA_CONNECT = 1
} ;
enum ht_channel_width {
    HT_CHANNEL_WIDTH_20 = 0,
    HT_CHANNEL_WIDTH_20_40 = 1,
    HT_CHANNEL_WIDTH_80 = 2
} ;
enum rt_enc_alg {
    NO_ENCRYPTION = 0,
    WEP40_ENCRYPTION = 1,
    TKIP_ENCRYPTION = 2,
    RSERVED_ENCRYPTION = 3,
    AESCCMP_ENCRYPTION = 4,
    WEP104_ENCRYPTION = 5,
    AESCMAC_ENCRYPTION = 6
} ;
enum rt_psmode {
    EACTIVE = 0,
    EMAXPS = 1,
    EFASTPS = 2,
    EAUTOPS = 3
} ;
enum led_ctl_mode {
    LED_CTL_POWER_ON = 1,
    LED_CTL_LINK = 2,
    LED_CTL_NO_LINK = 3,
    LED_CTL_TX = 4,
    LED_CTL_RX = 5,
    LED_CTL_SITE_SURVEY = 6,
    LED_CTL_POWER_OFF = 7,
    LED_CTL_START_TO_LINK = 8,
    LED_CTL_START_WPS = 9,
    LED_CTL_STOP_WPS = 10
} ;
enum macphy_mode {
    SINGLEMAC_SINGLEPHY = 0,
    DUALMAC_DUALPHY = 1,
    DUALMAC_SINGLEPHY = 2
} ;
enum band_type {
    BAND_ON_2_4G = 0,
    BAND_ON_5G = 1,
    BAND_ON_BOTH = 2,
    BANDMAX = 3
} ;
enum rtl_link_state {
    MAC80211_NOLINK = 0,
    MAC80211_LINKING = 1,
    MAC80211_LINKED = 2,
    MAC80211_LINKED_SCANNING = 3
} ;
enum rt_polarity_ctl {
    RT_POLARITY_LOW_ACT = 0,
    RT_POLARITY_HIGH_ACT = 1
} ;
struct rtl_qos_parameters {
   __le16 cw_min ;
   __le16 cw_max ;
   u8 aifs ;
   u8 flag ;
   __le16 tx_op ;
};
struct rt_smooth_data {
   u32 elements[100U] ;
   u32 index ;
   u32 total_num ;
   u32 total_val ;
};
struct false_alarm_statistics {
   u32 cnt_parity_fail ;
   u32 cnt_rate_illegal ;
   u32 cnt_crc8_fail ;
   u32 cnt_mcs_fail ;
   u32 cnt_fast_fsync_fail ;
   u32 cnt_sb_search_fail ;
   u32 cnt_ofdm_fail ;
   u32 cnt_cck_fail ;
   u32 cnt_all ;
   u32 cnt_ofdm_cca ;
   u32 cnt_cck_cca ;
   u32 cnt_cca_all ;
   u32 cnt_bw_usc ;
   u32 cnt_bw_lsc ;
};
struct init_gain {
   u8 xaagccore1 ;
   u8 xbagccore1 ;
   u8 xcagccore1 ;
   u8 xdagccore1 ;
   u8 cca ;
};
struct wireless_stats {
   unsigned long txbytesunicast ;
   unsigned long txbytesmulticast ;
   unsigned long txbytesbroadcast ;
   unsigned long rxbytesunicast ;
   long rx_snr_db[4U] ;
   long recv_signal_power ;
   long signal_quality ;
   long last_sigstrength_inpercent ;
   u32 rssi_calculate_cnt ;
   long signal_strength ;
   u8 rx_rssi_percentage[4U] ;
   u8 rx_evm_dbm[4U] ;
   u8 rx_evm_percentage[2U] ;
   u16 rx_cfo_short[4U] ;
   u16 rx_cfo_tail[4U] ;
   struct rt_smooth_data ui_rssi ;
   struct rt_smooth_data ui_link_quality ;
};
struct rate_adaptive {
   u8 rate_adaptive_disabled ;
   u8 ratr_state ;
   u16 reserve ;
   u32 high_rssi_thresh_for_ra ;
   u32 high2low_rssi_thresh_for_ra ;
   u8 low2high_rssi_thresh_for_ra40m ;
   u32 low_rssi_thresh_for_ra40m ;
   u8 low2high_rssi_thresh_for_ra20m ;
   u32 low_rssi_thresh_for_ra20m ;
   u32 upper_rssi_threshold_ratr ;
   u32 middleupper_rssi_threshold_ratr ;
   u32 middle_rssi_threshold_ratr ;
   u32 middlelow_rssi_threshold_ratr ;
   u32 low_rssi_threshold_ratr ;
   u32 ultralow_rssi_threshold_ratr ;
   u32 low_rssi_threshold_ratr_40m ;
   u32 low_rssi_threshold_ratr_20m ;
   u8 ping_rssi_enable ;
   u32 ping_rssi_ratr ;
   u32 ping_rssi_thresh_for_ra ;
   u32 last_ratr ;
   u8 pre_ratr_state ;
   u8 ldpc_thres ;
   bool use_ldpc ;
   bool lower_rts_rate ;
   bool is_special_data ;
};
struct regd_pair_mapping {
   u16 reg_dmnenum ;
   u16 reg_5ghz_ctl ;
   u16 reg_2ghz_ctl ;
};
struct dynamic_primary_cca {
   u8 pricca_flag ;
   u8 intf_flag ;
   u8 intf_type ;
   u8 dup_rts_flag ;
   u8 monitor_flag ;
   u8 ch_offset ;
   u8 mf_state ;
};
struct rtl_regulatory {
   char alpha2[2U] ;
   u16 country_code ;
   u16 max_power_level ;
   u32 tp_scale ;
   u16 current_rd ;
   u16 current_rd_ext ;
   int16_t power_limit ;
   struct regd_pair_mapping *regpair ;
};
struct rtl_rfkill {
   bool rfkill_state ;
};
enum p2p_ps_state {
    P2P_PS_DISABLE = 0,
    P2P_PS_ENABLE = 1,
    P2P_PS_SCAN = 2,
    P2P_PS_SCAN_DONE = 3,
    P2P_PS_ALLSTASLEEP = 4
} ;
enum p2p_ps_mode {
    P2P_PS_NONE = 0,
    P2P_PS_CTWINDOW = 1,
    P2P_PS_NOA = 2,
    P2P_PS_MIX = 3
} ;
struct rtl_p2p_ps_info {
   enum p2p_ps_mode p2p_ps_mode ;
   enum p2p_ps_state p2p_ps_state ;
   u8 noa_index ;
   u8 ctwindow ;
   u8 opp_ps ;
   u8 noa_num ;
   u8 noa_count_type[2U] ;
   u32 noa_duration[2U] ;
   u32 noa_interval[2U] ;
   u32 noa_start_time[2U] ;
};
struct p2p_ps_offload_t {
   unsigned char offload_en : 1 ;
   unsigned char role : 1 ;
   unsigned char ctwindow_en : 1 ;
   unsigned char noa0_en : 1 ;
   unsigned char noa1_en : 1 ;
   unsigned char allstasleep : 1 ;
   unsigned char discovery : 1 ;
   unsigned char reserved : 1 ;
};
struct iqk_matrix_regs {
   bool iqk_done ;
   long value[1U][8U] ;
};
struct phy_parameters {
   u16 length ;
   u32 *pdata ;
};
struct rtl_phy {
   struct bb_reg_def phyreg_def[4U] ;
   struct init_gain initgain_backup ;
   enum io_type current_io_type ;
   u8 rf_mode ;
   u8 rf_type ;
   u8 current_chan_bw ;
   u8 set_bwmode_inprogress ;
   u8 sw_chnl_inprogress ;
   u8 sw_chnl_stage ;
   u8 sw_chnl_step ;
   u8 current_channel ;
   u8 h2c_box_num ;
   u8 set_io_inprogress ;
   u8 lck_inprogress ;
   s32 reg_e94 ;
   s32 reg_e9c ;
   s32 reg_ea4 ;
   s32 reg_eac ;
   s32 reg_eb4 ;
   s32 reg_ebc ;
   s32 reg_ec4 ;
   s32 reg_ecc ;
   u8 rfpienable ;
   u8 reserve_0 ;
   u16 reserve_1 ;
   u32 reg_c04 ;
   u32 reg_c08 ;
   u32 reg_874 ;
   u32 adda_backup[16U] ;
   u32 iqk_mac_backup[4U] ;
   u32 iqk_bb_backup[10U] ;
   bool iqk_initialized ;
   bool rfpath_rx_enable[4U] ;
   u8 reg_837 ;
   bool need_iqk ;
   struct iqk_matrix_regs iqk_matrix[46U] ;
   bool rfpi_enable ;
   bool iqk_in_progress ;
   u8 pwrgroup_cnt ;
   u8 cck_high_power ;
   u32 mcs_offset[13U][16U] ;
   u32 tx_power_by_rate_offset[2U][4U][4U][12U] ;
   u8 txpwr_by_rate_base_24g[4U][4U][6U] ;
   u8 txpwr_by_rate_base_5g[4U][4U][5U] ;
   u8 default_initialgain[4U] ;
   u8 cur_cck_txpwridx ;
   u8 cur_ofdm24g_txpwridx ;
   u8 cur_bw20_txpwridx ;
   u8 cur_bw40_txpwridx ;
   u32 rfreg_chnlval[2U] ;
   bool apk_done ;
   u32 reg_rf3c[2U] ;
   u32 backup_rf_0x1a ;
   u8 framesync ;
   u32 framesync_c34 ;
   u8 num_total_rfpath ;
   struct phy_parameters hwparam_tables[10U] ;
   u16 rf_pathmap ;
   u8 hw_rof_enable ;
   enum rt_polarity_ctl polarity_ctl ;
};
struct rtl_ht_agg {
   u16 txq_id ;
   u16 wait_for_ba ;
   u16 start_idx ;
   u64 bitmap ;
   u32 rate_n_flags ;
   u8 agg_state ;
   u8 rx_agg_state ;
};
struct rtl_tid_data {
   u16 seq_number ;
   struct rtl_ht_agg agg ;
};
struct rtl_io {
   struct device *dev ;
   struct mutex bb_mutex ;
   unsigned long pci_mem_end ;
   unsigned long pci_mem_start ;
   unsigned long pci_base_addr ;
   void (*write8_async)(struct rtl_priv * , u32 , u8 ) ;
   void (*write16_async)(struct rtl_priv * , u32 , u16 ) ;
   void (*write32_async)(struct rtl_priv * , u32 , u32 ) ;
   void (*writeN_sync)(struct rtl_priv * , u32 , void * , u16 ) ;
   u8 (*read8_sync)(struct rtl_priv * , u32 ) ;
   u16 (*read16_sync)(struct rtl_priv * , u32 ) ;
   u32 (*read32_sync)(struct rtl_priv * , u32 ) ;
};
struct rtl_mac {
   u8 mac_addr[6U] ;
   u8 mac80211_registered ;
   u8 beacon_enabled ;
   u32 tx_ss_num ;
   u32 rx_ss_num ;
   struct ieee80211_supported_band bands[3U] ;
   struct ieee80211_hw *hw ;
   struct ieee80211_vif *vif ;
   enum nl80211_iftype opmode ;
   struct rtl_tid_data tids[9U] ;
   enum rtl_link_state link_state ;
   int n_channels ;
   int n_bitrates ;
   bool offchan_delay ;
   u8 p2p ;
   bool p2p_in_use ;
   u32 rx_conf ;
   u16 rx_mgt_filter ;
   u16 rx_ctrl_filter ;
   u16 rx_data_filter ;
   bool act_scanning ;
   u8 cnt_after_linked ;
   bool skip_scan ;
   struct sk_buff_head skb_waitq[9U] ;
   bool rdg_en ;
   u8 bssid[6U] ;
   u32 vendor ;
   u8 mcs[16U] ;
   u32 basic_rates ;
   u8 ht_enable ;
   u8 sgi_40 ;
   u8 sgi_20 ;
   u8 bw_40 ;
   u8 mode ;
   u8 slot_time ;
   u8 short_preamble ;
   u8 use_cts_protect ;
   u8 cur_40_prime_sc ;
   u8 cur_40_prime_sc_bk ;
   u8 cur_80_prime_sc ;
   u64 tsf ;
   u8 retry_short ;
   u8 retry_long ;
   u16 assoc_id ;
   bool hiddenssid ;
   int beacon_interval ;
   u8 min_space_cfg ;
   u8 max_mss_density ;
   u8 current_ampdu_factor ;
   u8 current_ampdu_density ;
   struct ieee80211_tx_queue_params edca_param[5U] ;
   struct rtl_qos_parameters ac[4U] ;
   u64 last_txok_cnt ;
   u64 last_rxok_cnt ;
   u32 last_bt_edca_ul ;
   u32 last_bt_edca_dl ;
};
struct btdm_8723 {
   bool all_off ;
   bool agc_table_en ;
   bool adc_back_off_on ;
   bool b2_ant_hid_en ;
   bool low_penalty_rate_adaptive ;
   bool rf_rx_lpf_shrink ;
   bool reject_aggre_pkt ;
   bool tra_tdma_on ;
   u8 tra_tdma_nav ;
   u8 tra_tdma_ant ;
   bool tdma_on ;
   u8 tdma_ant ;
   u8 tdma_nav ;
   u8 tdma_dac_swing ;
   u8 fw_dac_swing_lvl ;
   bool ps_tdma_on ;
   u8 ps_tdma_byte[5U] ;
   bool pta_on ;
   u32 val_0x6c0 ;
   u32 val_0x6c8 ;
   u32 val_0x6cc ;
   bool sw_dac_swing_on ;
   u32 sw_dac_swing_lvl ;
   u32 wlan_act_hi ;
   u32 wlan_act_lo ;
   u32 bt_retry_index ;
   bool dec_bt_pwr ;
   bool ignore_wlan_act ;
};
struct bt_coexist_8723 {
   u32 high_priority_tx ;
   u32 high_priority_rx ;
   u32 low_priority_tx ;
   u32 low_priority_rx ;
   u8 c2h_bt_info ;
   bool c2h_bt_info_req_sent ;
   bool c2h_bt_inquiry_page ;
   u32 bt_inq_page_start_time ;
   u8 bt_retry_cnt ;
   u8 c2h_bt_info_original ;
   u8 bt_inquiry_page_cnt ;
   struct btdm_8723 btdm ;
};
struct rtl_hal {
   struct ieee80211_hw *hw ;
   bool driver_is_goingto_unload ;
   bool up_first_time ;
   bool first_init ;
   bool being_init_adapter ;
   bool bbrf_ready ;
   bool mac_func_enable ;
   bool pre_edcca_enable ;
   struct bt_coexist_8723 hal_coex_8723 ;
   enum intf_type interface ;
   u16 hw_type ;
   u8 ic_class ;
   u8 oem_id ;
   u32 version ;
   u8 state ;
   u8 board_type ;
   u32 fwsize ;
   u8 *pfirmware ;
   u16 fw_version ;
   u16 fw_subversion ;
   bool h2c_setinprogress ;
   u8 last_hmeboxnum ;
   bool fw_ready ;
   u8 fw_rsvdpage_startoffset ;
   u8 h2c_txcmd_seq ;
   u8 current_ra_rate ;
   u16 fwcmd_iomap ;
   u32 fwcmd_ioparam ;
   bool set_fwcmd_inprogress ;
   u8 current_fwcmd_io ;
   struct p2p_ps_offload_t p2p_ps_offload ;
   bool fw_clk_change_in_progress ;
   bool allow_sw_to_change_hwclc ;
   u8 fw_ps_state ;
   bool driver_going2unload ;
   u8 minspace_cfg ;
   enum macphy_mode macphymode ;
   enum band_type current_bandtype ;
   enum band_type current_bandtypebackup ;
   enum band_type bandset ;
   u32 interfaceindex ;
   u8 macphyctl_reg ;
   bool earlymode_enable ;
   u8 max_earlymode_num ;
   bool during_mac0init_radiob ;
   bool during_mac1init_radioa ;
   bool reloadtxpowerindex ;
   bool load_imrandiqk_setting_for2g ;
   bool disable_amsdu_8k ;
   bool master_of_dmsp ;
   bool slave_of_dmsp ;
   u16 rx_tag ;
   u8 rts_en ;
};
struct rtl_security {
   bool use_sw_sec ;
   bool being_setkey ;
   bool use_defaultkey ;
   enum rt_enc_alg pairwise_enc_algorithm ;
   enum rt_enc_alg group_enc_algorithm ;
   u32 hwsec_cam_bitmap ;
   u8 hwsec_cam_sta_addr[32U][6U] ;
   u8 key_buf[5U][61U] ;
   u8 key_len[5U] ;
   u8 *pairwise_key ;
};
struct fast_ant_training {
   u8 bssid[6U] ;
   u8 antsel_rx_keep_0 ;
   u8 antsel_rx_keep_1 ;
   u8 antsel_rx_keep_2 ;
   u32 ant_sum[7U] ;
   u32 ant_cnt[7U] ;
   u32 ant_ave[7U] ;
   u8 fat_state ;
   u32 train_idx ;
   u8 antsel_a[33U] ;
   u8 antsel_b[33U] ;
   u8 antsel_c[33U] ;
   u32 main_ant_sum[33U] ;
   u32 aux_ant_sum[33U] ;
   u32 main_ant_cnt[33U] ;
   u32 aux_ant_cnt[33U] ;
   u8 rx_idle_ant ;
   bool becomelinked ;
};
struct dm_phy_dbg_info {
   char rx_snrdb[4U] ;
   u64 num_qry_phy_status ;
   u64 num_qry_phy_status_cck ;
   u64 num_qry_phy_status_ofdm ;
   u16 num_qry_beacon_pkt ;
   u16 num_non_be_pkt ;
   s32 rx_evm[4U] ;
};
struct rtl_dm {
   long entry_min_undec_sm_pwdb ;
   long undec_sm_cck ;
   long undec_sm_pwdb ;
   long entry_max_undec_sm_pwdb ;
   s32 ofdm_pkt_cnt ;
   bool dm_initialgain_enable ;
   bool dynamic_txpower_enable ;
   bool current_turbo_edca ;
   bool is_any_nonbepkts ;
   bool is_cur_rdlstate ;
   bool txpower_trackinginit ;
   bool disable_framebursting ;
   bool cck_inch14 ;
   bool txpower_tracking ;
   bool useramask ;
   bool rfpath_rxenable[4U] ;
   bool inform_fw_driverctrldm ;
   bool current_mrc_switch ;
   u8 txpowercount ;
   u8 powerindex_backup[6U] ;
   u8 thermalvalue_rxgain ;
   u8 thermalvalue_iqk ;
   u8 thermalvalue_lck ;
   u8 thermalvalue ;
   u8 last_dtp_lvl ;
   u8 thermalvalue_avg[8U] ;
   u8 thermalvalue_avg_index ;
   bool done_txpower ;
   u8 dynamic_txhighpower_lvl ;
   u8 dm_flag ;
   u8 dm_flag_tmp ;
   u8 dm_type ;
   u8 dm_rssi_sel ;
   u8 txpower_track_control ;
   bool interrupt_migration ;
   bool disable_tx_int ;
   char ofdm_index[4U] ;
   u8 default_ofdm_index ;
   u8 default_cck_index ;
   char cck_index ;
   char delta_power_index[4U] ;
   char delta_power_index_last[4U] ;
   char power_index_offset[4U] ;
   char absolute_ofdm_swing_idx[4U] ;
   char remnant_ofdm_swing_idx[4U] ;
   char remnant_cck_idx ;
   bool modify_txagc_flag_path_a ;
   bool modify_txagc_flag_path_b ;
   bool one_entry_only ;
   struct dm_phy_dbg_info dbginfo ;
   bool atc_status ;
   bool large_cfo_hit ;
   bool is_freeze ;
   int cfo_tail[2U] ;
   int cfo_ave_pre ;
   int crystal_cap ;
   u8 cfo_threshold ;
   u32 packet_count ;
   u32 packet_count_pre ;
   u8 tx_rate ;
   u8 swing_idx_ofdm[4U] ;
   u8 swing_idx_ofdm_cur ;
   u8 swing_idx_ofdm_base[4U] ;
   bool swing_flag_ofdm ;
   u8 swing_idx_cck ;
   u8 swing_idx_cck_cur ;
   u8 swing_idx_cck_base ;
   bool swing_flag_cck ;
   char swing_diff_2g ;
   char swing_diff_5g ;
   u8 delta_swing_table_idx_24gccka_p[30U] ;
   u8 delta_swing_table_idx_24gccka_n[30U] ;
   u8 delta_swing_table_idx_24gcckb_p[30U] ;
   u8 delta_swing_table_idx_24gcckb_n[30U] ;
   u8 delta_swing_table_idx_24ga_p[30U] ;
   u8 delta_swing_table_idx_24ga_n[30U] ;
   u8 delta_swing_table_idx_24gb_p[30U] ;
   u8 delta_swing_table_idx_24gb_n[30U] ;
   u8 delta_swing_table_idx_5ga_p[3U][30U] ;
   u8 delta_swing_table_idx_5ga_n[3U][30U] ;
   u8 delta_swing_table_idx_5gb_p[3U][30U] ;
   u8 delta_swing_table_idx_5gb_n[3U][30U] ;
   u8 delta_swing_table_idx_24ga_p_8188e[30U] ;
   u8 delta_swing_table_idx_24ga_n_8188e[30U] ;
   bool supp_phymode_switch ;
   struct fast_ant_training fat_table ;
   u8 resp_tx_path ;
   u8 path_sel ;
   u32 patha_sum ;
   u32 pathb_sum ;
   u32 patha_cnt ;
   u32 pathb_cnt ;
   u8 pre_channel ;
   u8 *p_channel ;
   u8 linked_interval ;
   u64 last_tx_ok_cnt ;
   u64 last_rx_ok_cnt ;
};
struct rtl_efuse {
   bool autoLoad_ok ;
   bool bootfromefuse ;
   u16 max_physical_size ;
   u8 efuse_map[2U][512U] ;
   u16 efuse_usedbytes ;
   u8 efuse_usedpercentage ;
   u8 autoload_failflag ;
   u8 autoload_status ;
   short epromtype ;
   u16 eeprom_vid ;
   u16 eeprom_did ;
   u16 eeprom_svid ;
   u16 eeprom_smid ;
   u8 eeprom_oemid ;
   u16 eeprom_channelplan ;
   u8 eeprom_version ;
   u8 board_type ;
   u8 external_pa ;
   u8 dev_addr[6U] ;
   u8 wowlan_enable ;
   u8 antenna_div_cfg ;
   u8 antenna_div_type ;
   bool txpwr_fromeprom ;
   u8 eeprom_crystalcap ;
   u8 eeprom_tssi[2U] ;
   u8 eeprom_tssi_5g[3U][2U] ;
   u8 eeprom_pwrlimit_ht20[12U] ;
   u8 eeprom_pwrlimit_ht40[12U] ;
   u8 eeprom_chnlarea_txpwr_cck[4U][3U] ;
   u8 eeprom_chnlarea_txpwr_ht40_1s[4U][12U] ;
   u8 eprom_chnl_txpwr_ht40_2sdf[4U][12U] ;
   u8 internal_pa_5g[2U] ;
   u8 eeprom_c9 ;
   u8 eeprom_cc ;
   u8 eeprom_pwrgroup[2U][3U] ;
   u8 pwrgroup_ht20[2U][59U] ;
   u8 pwrgroup_ht40[2U][59U] ;
   u8 txpwrlevel_cck[4U][14U] ;
   u8 txpwrlevel_ht40_1s[4U][59U] ;
   u8 txpwrlevel_ht40_2s[4U][59U] ;
   char txpwr_cckdiff[4U][59U] ;
   char txpwr_ht20diff[4U][59U] ;
   char txpwr_ht40diff[4U][59U] ;
   char txpwr_legacyhtdiff[4U][59U] ;
   u8 txpwr_5g_bw40base[4U][59U] ;
   u8 txpwr_5g_bw80base[4U][7U] ;
   char txpwr_5g_ofdmdiff[4U][4U] ;
   char txpwr_5g_bw20diff[4U][4U] ;
   char txpwr_5g_bw40diff[4U][4U] ;
   char txpwr_5g_bw80diff[4U][4U] ;
   u8 txpwr_safetyflag ;
   u16 eeprom_txpowerdiff ;
   u8 legacy_httxpowerdiff ;
   u8 antenna_txpwdiff[3U] ;
   u8 eeprom_regulatory ;
   u8 eeprom_thermalmeter ;
   u8 thermalmeter[2U] ;
   u16 tssi_13dbm ;
   u8 crystalcap ;
   u8 delta_iqk ;
   u8 delta_lck ;
   u8 legacy_ht_txpowerdiff ;
   bool apk_thermalmeterignore ;
   bool b1x1_recvcombine ;
   bool b1ss_support ;
   u8 channel_plan ;
};
struct rtl_ps_ctl {
   bool pwrdomain_protect ;
   bool in_powersavemode ;
   bool rfchange_inprogress ;
   bool swrf_processing ;
   bool hwradiooff ;
   bool support_aspm ;
   bool support_backdoor ;
   enum rt_psmode dot11_psmode ;
   bool swctrl_lps ;
   bool leisure_ps ;
   bool fwctrl_lps ;
   u8 fwctrl_psmode ;
   u8 reg_fwctrl_lps ;
   bool fw_current_inpsmode ;
   u8 reg_max_lps_awakeintvl ;
   bool report_linked ;
   bool low_power_enable ;
   bool inactiveps ;
   u32 rfoff_reason ;
   u32 cur_ps_level ;
   u32 reg_rfps_level ;
   u8 const_amdpci_aspm ;
   bool pwrdown_mode ;
   enum rf_pwrstate inactive_pwrstate ;
   enum rf_pwrstate rfpwr_state ;
   bool sw_ps_enabled ;
   bool state ;
   bool state_inap ;
   bool multi_buffered ;
   u16 nullfunc_seq ;
   unsigned int dtim_counter ;
   unsigned int sleep_ms ;
   unsigned long last_sleep_jiffies ;
   unsigned long last_awake_jiffies ;
   unsigned long last_delaylps_stamp_jiffies ;
   unsigned long last_dtim ;
   unsigned long last_beacon ;
   unsigned long last_action ;
   unsigned long last_slept ;
   struct rtl_p2p_ps_info p2p_ps_info ;
   u8 pwr_mode ;
   u8 smart_ps ;
};
struct rtl_stats {
   u8 psaddr[6U] ;
   u32 mac_time[2U] ;
   s8 rssi ;
   u8 signal ;
   u8 noise ;
   u8 rate ;
   u8 received_channel ;
   u8 control ;
   u8 mask ;
   u8 freq ;
   u16 len ;
   u64 tsf ;
   u32 beacon_time ;
   u8 nic_type ;
   u16 length ;
   u8 signalquality ;
   s32 recvsignalpower ;
   s8 rxpower ;
   u8 signalstrength ;
   unsigned char hwerror : 1 ;
   unsigned char crc : 1 ;
   unsigned char icv : 1 ;
   unsigned char shortpreamble : 1 ;
   unsigned char antenna : 1 ;
   unsigned char decrypted : 1 ;
   unsigned char wakeup : 1 ;
   u32 timestamp_low ;
   u32 timestamp_high ;
   u8 rx_drvinfo_size ;
   u8 rx_bufshift ;
   bool isampdu ;
   bool isfirst_ampdu ;
   bool rx_is40Mhzpacket ;
   u32 rx_pwdb_all ;
   u8 rx_mimo_signalstrength[4U] ;
   s8 rx_mimo_sig_qual[4U] ;
   u8 rx_pwr[4U] ;
   u8 rx_snr[4U] ;
   bool packet_matchbssid ;
   bool is_cck ;
   bool is_ht ;
   bool packet_toself ;
   bool packet_beacon ;
   char cck_adc_pwdb[4U] ;
   u8 packet_report_type ;
   u32 macid ;
   u8 wake_match ;
   u32 bt_rx_rssi_percentage ;
   u32 macid_valid_entry[2U] ;
};
struct rt_link_detect {
   u32 bcn_rx_inperiod ;
   u32 roam_times ;
   u32 num_tx_in4period[4U] ;
   u32 num_rx_in4period[4U] ;
   u32 num_tx_inperiod ;
   u32 num_rx_inperiod ;
   bool busytraffic ;
   bool tx_busy_traffic ;
   bool rx_busy_traffic ;
   bool higher_busytraffic ;
   bool higher_busyrxtraffic ;
   u32 tidtx_in4period[9U][4U] ;
   u32 tidtx_inperiod[9U] ;
   bool higher_busytxtraffic[9U] ;
};
struct rtl_tcb_desc {
   unsigned char packet_bw : 1 ;
   unsigned char multicast : 1 ;
   unsigned char broadcast : 1 ;
   unsigned char rts_stbc : 1 ;
   unsigned char rts_enable : 1 ;
   unsigned char cts_enable : 1 ;
   unsigned char rts_use_shortpreamble : 1 ;
   unsigned char rts_use_shortgi : 1 ;
   unsigned char rts_sc : 1 ;
   unsigned char rts_bw : 1 ;
   u8 rts_rate ;
   unsigned char use_shortgi : 1 ;
   unsigned char use_shortpreamble : 1 ;
   unsigned char use_driver_rate : 1 ;
   unsigned char disable_ratefallback : 1 ;
   u8 ratr_index ;
   u8 mac_id ;
   u8 hw_rate ;
   unsigned char last_inipkt : 1 ;
   unsigned char cmd_or_init : 1 ;
   u8 queue_index ;
   u8 empkt_num ;
   u32 empkt_len[10U] ;
   bool btx_enable_sw_calc_duration ;
};
struct rtl92c_firmware_header;
struct rtl_hal_ops {
   int (*init_sw_vars)(struct ieee80211_hw * ) ;
   void (*deinit_sw_vars)(struct ieee80211_hw * ) ;
   void (*read_chip_version)(struct ieee80211_hw * ) ;
   void (*read_eeprom_info)(struct ieee80211_hw * ) ;
   void (*interrupt_recognized)(struct ieee80211_hw * , u32 * , u32 * ) ;
   int (*hw_init)(struct ieee80211_hw * ) ;
   void (*hw_disable)(struct ieee80211_hw * ) ;
   void (*hw_suspend)(struct ieee80211_hw * ) ;
   void (*hw_resume)(struct ieee80211_hw * ) ;
   void (*enable_interrupt)(struct ieee80211_hw * ) ;
   void (*disable_interrupt)(struct ieee80211_hw * ) ;
   int (*set_network_type)(struct ieee80211_hw * , enum nl80211_iftype ) ;
   void (*set_chk_bssid)(struct ieee80211_hw * , bool ) ;
   void (*set_bw_mode)(struct ieee80211_hw * , enum nl80211_channel_type ) ;
   u8 (*switch_channel)(struct ieee80211_hw * ) ;
   void (*set_qos)(struct ieee80211_hw * , int ) ;
   void (*set_bcn_reg)(struct ieee80211_hw * ) ;
   void (*set_bcn_intv)(struct ieee80211_hw * ) ;
   void (*update_interrupt_mask)(struct ieee80211_hw * , u32 , u32 ) ;
   void (*get_hw_reg)(struct ieee80211_hw * , u8 , u8 * ) ;
   void (*set_hw_reg)(struct ieee80211_hw * , u8 , u8 * ) ;
   void (*update_rate_tbl)(struct ieee80211_hw * , struct ieee80211_sta * , u8 ) ;
   void (*pre_fill_tx_bd_desc)(struct ieee80211_hw * , u8 * , u8 * , u8 , struct sk_buff * ,
                               dma_addr_t ) ;
   void (*update_rate_mask)(struct ieee80211_hw * , u8 ) ;
   u16 (*rx_desc_buff_remained_cnt)(struct ieee80211_hw * , u8 ) ;
   void (*rx_check_dma_ok)(struct ieee80211_hw * , u8 * , u8 ) ;
   void (*fill_tx_desc)(struct ieee80211_hw * , struct ieee80211_hdr * , u8 * , u8 * ,
                        struct ieee80211_tx_info * , struct ieee80211_sta * , struct sk_buff * ,
                        u8 , struct rtl_tcb_desc * ) ;
   void (*fill_fake_txdesc)(struct ieee80211_hw * , u8 * , u32 , bool ) ;
   void (*fill_tx_cmddesc)(struct ieee80211_hw * , u8 * , bool , bool , struct sk_buff * ) ;
   bool (*cmd_send_packet)(struct ieee80211_hw * , struct sk_buff * ) ;
   bool (*query_rx_desc)(struct ieee80211_hw * , struct rtl_stats * , struct ieee80211_rx_status * ,
                         u8 * , struct sk_buff * ) ;
   void (*set_channel_access)(struct ieee80211_hw * ) ;
   bool (*radio_onoff_checking)(struct ieee80211_hw * , u8 * ) ;
   void (*dm_watchdog)(struct ieee80211_hw * ) ;
   void (*scan_operation_backup)(struct ieee80211_hw * , u8 ) ;
   bool (*set_rf_power_state)(struct ieee80211_hw * , enum rf_pwrstate ) ;
   void (*led_control)(struct ieee80211_hw * , enum led_ctl_mode ) ;
   void (*set_desc)(struct ieee80211_hw * , u8 * , bool , u8 , u8 * ) ;
   u32 (*get_desc)(u8 * , bool , u8 ) ;
   bool (*is_tx_desc_closed)(struct ieee80211_hw * , u8 , u16 ) ;
   void (*tx_polling)(struct ieee80211_hw * , u8 ) ;
   void (*enable_hw_sec)(struct ieee80211_hw * ) ;
   void (*set_key)(struct ieee80211_hw * , u32 , u8 * , bool , u8 , bool , bool ) ;
   void (*init_sw_leds)(struct ieee80211_hw * ) ;
   void (*deinit_sw_leds)(struct ieee80211_hw * ) ;
   u32 (*get_bbreg)(struct ieee80211_hw * , u32 , u32 ) ;
   void (*set_bbreg)(struct ieee80211_hw * , u32 , u32 , u32 ) ;
   u32 (*get_rfreg)(struct ieee80211_hw * , enum radio_path , u32 , u32 ) ;
   void (*set_rfreg)(struct ieee80211_hw * , enum radio_path , u32 , u32 , u32 ) ;
   void (*linked_set_reg)(struct ieee80211_hw * ) ;
   void (*chk_switch_dmdp)(struct ieee80211_hw * ) ;
   void (*dualmac_easy_concurrent)(struct ieee80211_hw * ) ;
   void (*dualmac_switch_to_dmdp)(struct ieee80211_hw * ) ;
   bool (*phy_rf6052_config)(struct ieee80211_hw * ) ;
   void (*phy_rf6052_set_cck_txpower)(struct ieee80211_hw * , u8 * ) ;
   void (*phy_rf6052_set_ofdm_txpower)(struct ieee80211_hw * , u8 * , u8 ) ;
   bool (*config_bb_with_headerfile)(struct ieee80211_hw * , u8 ) ;
   bool (*config_bb_with_pgheaderfile)(struct ieee80211_hw * , u8 ) ;
   void (*phy_lc_calibrate)(struct ieee80211_hw * , bool ) ;
   void (*phy_set_bw_mode_callback)(struct ieee80211_hw * ) ;
   void (*dm_dynamic_txpower)(struct ieee80211_hw * ) ;
   void (*c2h_command_handle)(struct ieee80211_hw * ) ;
   void (*bt_wifi_media_status_notify)(struct ieee80211_hw * , bool ) ;
   void (*bt_coex_off_before_lps)(struct ieee80211_hw * ) ;
   void (*fill_h2c_cmd)(struct ieee80211_hw * , u8 , u32 , u8 * ) ;
   bool (*get_btc_status)(void) ;
   bool (*is_fw_header)(struct rtl92c_firmware_header * ) ;
   u32 (*rx_command_packet)(struct ieee80211_hw * , struct rtl_stats , struct sk_buff * ) ;
};
struct rtl_intf_ops {
   void (*read_efuse_byte)(struct ieee80211_hw * , u16 , u8 * ) ;
   int (*adapter_start)(struct ieee80211_hw * ) ;
   void (*adapter_stop)(struct ieee80211_hw * ) ;
   bool (*check_buddy_priv)(struct ieee80211_hw * , struct rtl_priv ** ) ;
   int (*adapter_tx)(struct ieee80211_hw * , struct ieee80211_sta * , struct sk_buff * ,
                     struct rtl_tcb_desc * ) ;
   void (*flush)(struct ieee80211_hw * , bool ) ;
   int (*reset_trx_ring)(struct ieee80211_hw * ) ;
   bool (*waitq_insert)(struct ieee80211_hw * , struct ieee80211_sta * , struct sk_buff * ) ;
   void (*disable_aspm)(struct ieee80211_hw * ) ;
   void (*enable_aspm)(struct ieee80211_hw * ) ;
};
struct rtl_mod_params {
   bool sw_crypto ;
   int debug ;
   bool inactiveps ;
   bool swctrl_lps ;
   bool fwctrl_lps ;
   bool msi_support ;
};
struct rtl_hal_usbint_cfg {
   u32 in_ep_num ;
   u32 rx_urb_num ;
   u32 rx_max_size ;
   void (*usb_rx_hdl)(struct ieee80211_hw * , struct sk_buff * ) ;
   void (*usb_rx_segregate_hdl)(struct ieee80211_hw * , struct sk_buff * , struct sk_buff_head * ) ;
   void (*usb_tx_cleanup)(struct ieee80211_hw * , struct sk_buff * ) ;
   int (*usb_tx_post_hdl)(struct ieee80211_hw * , struct urb * , struct sk_buff * ) ;
   struct sk_buff *(*usb_tx_aggregate_hdl)(struct ieee80211_hw * , struct sk_buff_head * ) ;
   int (*usb_endpoint_mapping)(struct ieee80211_hw * ) ;
   u16 (*usb_mq_to_hwq)(__le16 , u16 ) ;
};
struct rtl_hal_cfg {
   u8 bar_id ;
   bool write_readback ;
   char *name ;
   char *fw_name ;
   char *alt_fw_name ;
   struct rtl_hal_ops *ops ;
   struct rtl_mod_params *mod_params ;
   struct rtl_hal_usbint_cfg *usb_interface_cfg ;
   u32 maps[83U] ;
};
struct rtl_locks {
   struct mutex conf_mutex ;
   struct mutex ps_mutex ;
   spinlock_t ips_lock ;
   spinlock_t irq_th_lock ;
   spinlock_t irq_pci_lock ;
   spinlock_t tx_lock ;
   spinlock_t h2c_lock ;
   spinlock_t rf_ps_lock ;
   spinlock_t rf_lock ;
   spinlock_t lps_lock ;
   spinlock_t waitq_lock ;
   spinlock_t entry_list_lock ;
   spinlock_t usb_lock ;
   spinlock_t fw_ps_lock ;
   spinlock_t cck_and_rw_pagea_lock ;
   spinlock_t check_sendpkt_lock ;
   spinlock_t iqk_lock ;
};
struct rtl_works {
   struct ieee80211_hw *hw ;
   struct timer_list watchdog_timer ;
   struct timer_list dualmac_easyconcurrent_retrytimer ;
   struct timer_list fw_clockoff_timer ;
   struct timer_list fast_antenna_training_timer ;
   struct tasklet_struct irq_tasklet ;
   struct tasklet_struct irq_prepare_bcn_tasklet ;
   struct workqueue_struct *rtl_wq ;
   struct delayed_work watchdog_wq ;
   struct delayed_work ips_nic_off_wq ;
   struct delayed_work ps_work ;
   struct delayed_work ps_rfon_wq ;
   struct delayed_work fwevt_wq ;
   struct work_struct lps_change_work ;
   struct work_struct fill_h2c_cmd ;
};
struct rtl_debug {
   u32 dbgp_type[19U] ;
   int global_debuglevel ;
   u64 global_debugcomponents ;
   struct proc_dir_entry *proc_dir ;
   char proc_name[20U] ;
};
struct rtl_dualmac_easy_concurrent_ctl {
   enum band_type currentbandtype_backfordmdp ;
   bool close_bbandrf_for_dmsp ;
   bool change_to_dmdp ;
   bool change_to_dmsp ;
   bool switch_in_process ;
};
struct rtl_dmsp_ctl {
   bool activescan_for_slaveofdmsp ;
   bool scan_for_anothermac_fordmsp ;
   bool scan_for_itself_fordmsp ;
   bool writedig_for_anothermacofdmsp ;
   u32 curdigvalue_for_anothermacofdmsp ;
   bool changecckpdstate_for_anothermacofdmsp ;
   u8 curcckpdstate_for_anothermacofdmsp ;
   bool changetxhighpowerlvl_for_anothermacofdmsp ;
   u8 curtxhighlvl_for_anothermacofdmsp ;
   long rssivalmin_for_anothermacofdmsp ;
};
struct ps_t {
   u8 pre_ccastate ;
   u8 cur_ccasate ;
   u8 pre_rfstate ;
   u8 cur_rfstate ;
   u8 initialize ;
   long rssi_val_min ;
};
struct dig_t {
   u32 rssi_lowthresh ;
   u32 rssi_highthresh ;
   u32 fa_lowthresh ;
   u32 fa_highthresh ;
   long last_min_undec_pwdb_for_dm ;
   long rssi_highpower_lowthresh ;
   long rssi_highpower_highthresh ;
   u32 recover_cnt ;
   u32 pre_igvalue ;
   u32 cur_igvalue ;
   long rssi_val ;
   u8 dig_enable_flag ;
   u8 dig_ext_port_stage ;
   u8 dig_algorithm ;
   u8 dig_twoport_algorithm ;
   u8 dig_dbgmode ;
   u8 dig_slgorithm_switch ;
   u8 cursta_cstate ;
   u8 presta_cstate ;
   u8 curmultista_cstate ;
   u8 stop_dig ;
   char back_val ;
   char back_range_max ;
   char back_range_min ;
   u8 rx_gain_max ;
   u8 rx_gain_min ;
   u8 min_undec_pwdb_for_dm ;
   u8 rssi_val_min ;
   u8 pre_cck_cca_thres ;
   u8 cur_cck_cca_thres ;
   u8 pre_cck_pd_state ;
   u8 cur_cck_pd_state ;
   u8 pre_cck_fa_state ;
   u8 cur_cck_fa_state ;
   u8 pre_ccastate ;
   u8 cur_ccasate ;
   u8 large_fa_hit ;
   u8 dig_dynamic_min ;
   u8 dig_dynamic_min_1 ;
   u8 forbidden_igi ;
   u8 dig_state ;
   u8 dig_highpwrstate ;
   u8 cur_sta_cstate ;
   u8 pre_sta_cstate ;
   u8 cur_ap_cstate ;
   u8 pre_ap_cstate ;
   u8 cur_pd_thstate ;
   u8 pre_pd_thstate ;
   u8 cur_cs_ratiostate ;
   u8 pre_cs_ratiostate ;
   u8 backoff_enable_flag ;
   char backoffval_range_max ;
   char backoffval_range_min ;
   u8 dig_min_0 ;
   u8 dig_min_1 ;
   u8 bt30_cur_igi ;
   bool media_connect_0 ;
   bool media_connect_1 ;
   u32 antdiv_rssi_max ;
   u32 rssi_max ;
};
struct rtl_global_var {
   struct list_head glb_priv_list ;
   spinlock_t glb_list_lock ;
};
struct rtl_btc_info {
   u8 bt_type ;
   u8 btcoexist ;
   u8 ant_num ;
};
struct rtl_btc_ops;
struct bt_coexist_info {
   struct rtl_btc_ops *btc_ops ;
   struct rtl_btc_info btc_info ;
   u8 eeprom_bt_coexist ;
   u8 eeprom_bt_type ;
   u8 eeprom_bt_ant_num ;
   u8 eeprom_bt_ant_isol ;
   u8 eeprom_bt_radio_shared ;
   u8 bt_coexistence ;
   u8 bt_ant_num ;
   u8 bt_coexist_type ;
   u8 bt_state ;
   u8 bt_cur_state ;
   u8 bt_ant_isolation ;
   u8 bt_pape_ctrl ;
   u8 bt_service ;
   u8 bt_radio_shared_type ;
   u8 bt_rfreg_origin_1e ;
   u8 bt_rfreg_origin_1f ;
   u8 bt_rssi_state ;
   u32 ratio_tx ;
   u32 ratio_pri ;
   u32 bt_edca_ul ;
   u32 bt_edca_dl ;
   bool init_set ;
   bool bt_busy_traffic ;
   bool bt_traffic_mode_set ;
   bool bt_non_traffic_mode_set ;
   bool fw_coexist_all_off ;
   bool sw_coexist_all_off ;
   bool hw_coexist_all_off ;
   u32 cstate ;
   u32 previous_state ;
   u32 cstate_h ;
   u32 previous_state_h ;
   u8 bt_pre_rssi_state ;
   u8 bt_pre_rssi_state1 ;
   u8 reg_bt_iso ;
   u8 reg_bt_sco ;
   bool balance_on ;
   u8 bt_active_zero_cnt ;
   bool cur_bt_disabled ;
   bool pre_bt_disabled ;
   u8 bt_profile_case ;
   u8 bt_profile_action ;
   bool bt_busy ;
   bool hold_for_bt_operation ;
   u8 lps_counter ;
};
struct rtl_btc_ops {
   void (*btc_init_variables)(struct rtl_priv * ) ;
   void (*btc_init_hal_vars)(struct rtl_priv * ) ;
   void (*btc_init_hw_config)(struct rtl_priv * ) ;
   void (*btc_ips_notify)(struct rtl_priv * , u8 ) ;
   void (*btc_scan_notify)(struct rtl_priv * , u8 ) ;
   void (*btc_connect_notify)(struct rtl_priv * , u8 ) ;
   void (*btc_mediastatus_notify)(struct rtl_priv * , enum _RT_MEDIA_STATUS ) ;
   void (*btc_periodical)(struct rtl_priv * ) ;
   void (*btc_halt_notify)(void) ;
   void (*btc_btinfo_notify)(struct rtl_priv * , u8 * , u8 ) ;
   bool (*btc_is_limited_dig)(struct rtl_priv * ) ;
   bool (*btc_is_disable_edca_turbo)(struct rtl_priv * ) ;
   bool (*btc_is_bt_disabled)(struct rtl_priv * ) ;
};
struct proxim {
   bool proxim_on ;
   void *proximity_priv ;
   int (*proxim_rx)(struct ieee80211_hw * , struct rtl_stats * , struct sk_buff * ) ;
   u8 (*proxim_get_var)(struct ieee80211_hw * , u8 ) ;
};
struct rtl_rate_priv;
struct rtl_priv {
   struct ieee80211_hw *hw ;
   struct completion firmware_loading_complete ;
   struct list_head list ;
   struct rtl_priv *buddy_priv ;
   struct rtl_global_var *glb_var ;
   struct rtl_dualmac_easy_concurrent_ctl easy_concurrent_ctl ;
   struct rtl_dmsp_ctl dmsp_ctl ;
   struct rtl_locks locks ;
   struct rtl_works works ;
   struct rtl_mac mac80211 ;
   struct rtl_hal rtlhal ;
   struct rtl_regulatory regd ;
   struct rtl_rfkill rfkill ;
   struct rtl_io io ;
   struct rtl_phy phy ;
   struct rtl_dm dm ;
   struct rtl_security sec ;
   struct rtl_efuse efuse ;
   struct rtl_ps_ctl psc ;
   struct rate_adaptive ra ;
   struct dynamic_primary_cca primarycca ;
   struct wireless_stats stats ;
   struct rt_link_detect link_info ;
   struct false_alarm_statistics falsealm_cnt ;
   struct rtl_rate_priv *rate_priv ;
   struct list_head entry_list ;
   struct rtl_debug dbg ;
   int max_fw_size ;
   struct rtl_hal_cfg *cfg ;
   struct rtl_intf_ops *intf_ops ;
   unsigned long status ;
   struct dig_t dm_digtable ;
   struct ps_t dm_pstable ;
   u32 reg_874 ;
   u32 reg_c70 ;
   u32 reg_85c ;
   u32 reg_a74 ;
   bool reg_init ;
   bool bt_operation_on ;
   __le32 *usb_data ;
   int usb_data_index ;
   bool initialized ;
   bool enter_ps ;
   u8 rate_mask[5U] ;
   struct proxim proximity ;
   struct bt_coexist_info btcoexist ;
   bool use_new_trx_flow ;
   u8 priv[0U] ;
};
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
union __anonunion_ldv_52075_303 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_52075_303 ldv_52075 ;
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
extern int printk(char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
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
extern void __const_udelay(unsigned long ) ;
u32 btc_dbg_type[2U] ;
void ex_halbtc8723b2ant_init_hwconfig(struct btc_coexist *btcoexist ) ;
void ex_halbtc8723b2ant_init_coex_dm(struct btc_coexist *btcoexist ) ;
void ex_halbtc8723b2ant_ips_notify(struct btc_coexist *btcoexist , u8 type ) ;
void ex_halbtc8723b2ant_lps_notify(struct btc_coexist *btcoexist , u8 type ) ;
void ex_halbtc8723b2ant_scan_notify(struct btc_coexist *btcoexist , u8 type ) ;
void ex_halbtc8723b2ant_connect_notify(struct btc_coexist *btcoexist , u8 type ) ;
void btc8723b_med_stat_notify(struct btc_coexist *btcoexist , u8 type ) ;
void ex_halbtc8723b2ant_special_packet_notify(struct btc_coexist *btcoexist , u8 type ) ;
void ex_halbtc8723b2ant_bt_info_notify(struct btc_coexist *btcoexist , u8 *tmpbuf ,
                                       u8 length ) ;
void ex_halbtc8723b2ant_stack_operation_notify(struct btc_coexist *btcoexist , u8 type ) ;
void ex_halbtc8723b2ant_halt_notify(struct btc_coexist *btcoexist ) ;
void ex_halbtc8723b2ant_periodical(struct btc_coexist *btcoexist ) ;
void ex_halbtc8723b2ant_display_coex_info(struct btc_coexist *btcoexist ) ;
static struct coex_dm_8723b_2ant glcoex_dm_8723b_2ant ;
static struct coex_dm_8723b_2ant *coex_dm = & glcoex_dm_8723b_2ant;
static struct coex_sta_8723b_2ant glcoex_sta_8723b_2ant ;
static struct coex_sta_8723b_2ant *coex_sta = & glcoex_sta_8723b_2ant;
static char const * const glbt_info_src_8723b_2ant[3U] = { "BT Info[wifi fw]", "BT Info[bt rsp]", "BT Info[bt auto report]"};
static u32 glcoex_ver_date_8723b_2ant = 20130731U;
static u32 glcoex_ver_8723b_2ant = 59U;
static u8 btc8723b2ant_bt_rssi_state(u8 level_num , u8 rssi_thresh , u8 rssi_thresh1 )
{
  s32 bt_rssi ;
  u8 bt_rssi_state ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  {
  bt_rssi = 0;
  bt_rssi_state = coex_sta->pre_bt_rssi_state;
  bt_rssi = (s32 )coex_sta->bt_rssi;
  if ((unsigned int )level_num == 2U) {
    if ((unsigned int )coex_sta->pre_bt_rssi_state == 2U || (unsigned int )coex_sta->pre_bt_rssi_state == 5U) {
      if ((int )rssi_thresh + 2 <= bt_rssi) {
        bt_rssi_state = 0U;
        tmp = ldv__builtin_expect((long )((int )btc_dbg_type[1]) & 1L, 0L);
        if (tmp != 0L) {
          printk("[BTCoex], BT Rssi state switch to High\n");
        } else {
        }
      } else {
        bt_rssi_state = 5U;
        tmp___0 = ldv__builtin_expect((long )((int )btc_dbg_type[1]) & 1L, 0L);
        if (tmp___0 != 0L) {
          printk("[BTCoex], BT Rssi state stay at Low\n");
        } else {
        }
      }
    } else
    if ((int )rssi_thresh > bt_rssi) {
      bt_rssi_state = 2U;
      tmp___1 = ldv__builtin_expect((long )((int )btc_dbg_type[1]) & 1L, 0L);
      if (tmp___1 != 0L) {
        printk("[BTCoex], BT Rssi state switch to Low\n");
      } else {
      }
    } else {
      bt_rssi_state = 3U;
      tmp___2 = ldv__builtin_expect((long )((int )btc_dbg_type[1]) & 1L, 0L);
      if (tmp___2 != 0L) {
        printk("[BTCoex], BT Rssi state stay at High\n");
      } else {
      }
    }
  } else
  if ((unsigned int )level_num == 3U) {
    if ((int )rssi_thresh > (int )rssi_thresh1) {
      tmp___3 = ldv__builtin_expect((long )((int )btc_dbg_type[1]) & 1L, 0L);
      if (tmp___3 != 0L) {
        printk("[BTCoex], BT Rssi thresh error!!\n");
      } else {
      }
      return (coex_sta->pre_bt_rssi_state);
    } else {
    }
    if ((unsigned int )coex_sta->pre_bt_rssi_state == 2U || (unsigned int )coex_sta->pre_bt_rssi_state == 5U) {
      if ((int )rssi_thresh + 2 <= bt_rssi) {
        bt_rssi_state = 1U;
        tmp___4 = ldv__builtin_expect((long )((int )btc_dbg_type[1]) & 1L, 0L);
        if (tmp___4 != 0L) {
          printk("[BTCoex], BT Rssi state switch to Medium\n");
        } else {
        }
      } else {
        bt_rssi_state = 5U;
        tmp___5 = ldv__builtin_expect((long )((int )btc_dbg_type[1]) & 1L, 0L);
        if (tmp___5 != 0L) {
          printk("[BTCoex], BT Rssi state stay at Low\n");
        } else {
        }
      }
    } else
    if ((unsigned int )coex_sta->pre_bt_rssi_state == 1U || (unsigned int )coex_sta->pre_bt_rssi_state == 4U) {
      if ((int )rssi_thresh1 + 2 <= bt_rssi) {
        bt_rssi_state = 0U;
        tmp___6 = ldv__builtin_expect((long )((int )btc_dbg_type[1]) & 1L, 0L);
        if (tmp___6 != 0L) {
          printk("[BTCoex], BT Rssi state switch to High\n");
        } else {
        }
      } else
      if ((int )rssi_thresh > bt_rssi) {
        bt_rssi_state = 2U;
        tmp___7 = ldv__builtin_expect((long )((int )btc_dbg_type[1]) & 1L, 0L);
        if (tmp___7 != 0L) {
          printk("[BTCoex], BT Rssi state switch to Low\n");
        } else {
        }
      } else {
        bt_rssi_state = 4U;
        tmp___8 = ldv__builtin_expect((long )((int )btc_dbg_type[1]) & 1L, 0L);
        if (tmp___8 != 0L) {
          printk("[BTCoex], BT Rssi state stay at Medium\n");
        } else {
        }
      }
    } else
    if ((int )rssi_thresh1 > bt_rssi) {
      bt_rssi_state = 1U;
      tmp___9 = ldv__builtin_expect((long )((int )btc_dbg_type[1]) & 1L, 0L);
      if (tmp___9 != 0L) {
        printk("[BTCoex], BT Rssi state switch to Medium\n");
      } else {
      }
    } else {
      bt_rssi_state = 3U;
      tmp___10 = ldv__builtin_expect((long )((int )btc_dbg_type[1]) & 1L, 0L);
      if (tmp___10 != 0L) {
        printk("[BTCoex], BT Rssi state stay at High\n");
      } else {
      }
    }
  } else {
  }
  coex_sta->pre_bt_rssi_state = bt_rssi_state;
  return (bt_rssi_state);
}
}
static u8 btc8723b2ant_wifi_rssi_state(struct btc_coexist *btcoexist , u8 index ,
                                       u8 level_num , u8 rssi_thresh , u8 rssi_thresh1 )
{
  s32 wifi_rssi ;
  u8 wifi_rssi_state ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  {
  wifi_rssi = 0;
  wifi_rssi_state = coex_sta->pre_wifi_rssi_state[(int )index];
  (*(btcoexist->btc_get))((void *)btcoexist, 17, (void *)(& wifi_rssi));
  if ((unsigned int )level_num == 2U) {
    if ((unsigned int )coex_sta->pre_wifi_rssi_state[(int )index] == 2U || (unsigned int )coex_sta->pre_wifi_rssi_state[(int )index] == 5U) {
      if ((int )rssi_thresh + 2 <= wifi_rssi) {
        wifi_rssi_state = 0U;
        tmp = ldv__builtin_expect((btc_dbg_type[1] & 2U) != 0U, 0L);
        if (tmp != 0L) {
          printk("[BTCoex], wifi RSSI state switch to High\n");
        } else {
        }
      } else {
        wifi_rssi_state = 5U;
        tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 2U) != 0U, 0L);
        if (tmp___0 != 0L) {
          printk("[BTCoex], wifi RSSI state stay at Low\n");
        } else {
        }
      }
    } else
    if ((int )rssi_thresh > wifi_rssi) {
      wifi_rssi_state = 2U;
      tmp___1 = ldv__builtin_expect((btc_dbg_type[1] & 2U) != 0U, 0L);
      if (tmp___1 != 0L) {
        printk("[BTCoex], wifi RSSI state switch to Low\n");
      } else {
      }
    } else {
      wifi_rssi_state = 3U;
      tmp___2 = ldv__builtin_expect((btc_dbg_type[1] & 2U) != 0U, 0L);
      if (tmp___2 != 0L) {
        printk("[BTCoex], wifi RSSI state stay at High\n");
      } else {
      }
    }
  } else
  if ((unsigned int )level_num == 3U) {
    if ((int )rssi_thresh > (int )rssi_thresh1) {
      tmp___3 = ldv__builtin_expect((btc_dbg_type[1] & 2U) != 0U, 0L);
      if (tmp___3 != 0L) {
        printk("[BTCoex], wifi RSSI thresh error!!\n");
      } else {
      }
      return (coex_sta->pre_wifi_rssi_state[(int )index]);
    } else {
    }
    if ((unsigned int )coex_sta->pre_wifi_rssi_state[(int )index] == 2U || (unsigned int )coex_sta->pre_wifi_rssi_state[(int )index] == 5U) {
      if ((int )rssi_thresh + 2 <= wifi_rssi) {
        wifi_rssi_state = 1U;
        tmp___4 = ldv__builtin_expect((btc_dbg_type[1] & 2U) != 0U, 0L);
        if (tmp___4 != 0L) {
          printk("[BTCoex], wifi RSSI state switch to Medium\n");
        } else {
        }
      } else {
        wifi_rssi_state = 5U;
        tmp___5 = ldv__builtin_expect((btc_dbg_type[1] & 2U) != 0U, 0L);
        if (tmp___5 != 0L) {
          printk("[BTCoex], wifi RSSI state stay at Low\n");
        } else {
        }
      }
    } else
    if ((unsigned int )coex_sta->pre_wifi_rssi_state[(int )index] == 1U || (unsigned int )coex_sta->pre_wifi_rssi_state[(int )index] == 4U) {
      if ((int )rssi_thresh1 + 2 <= wifi_rssi) {
        wifi_rssi_state = 0U;
        tmp___6 = ldv__builtin_expect((btc_dbg_type[1] & 2U) != 0U, 0L);
        if (tmp___6 != 0L) {
          printk("[BTCoex], wifi RSSI state switch to High\n");
        } else {
        }
      } else
      if ((int )rssi_thresh > wifi_rssi) {
        wifi_rssi_state = 2U;
        tmp___7 = ldv__builtin_expect((btc_dbg_type[1] & 2U) != 0U, 0L);
        if (tmp___7 != 0L) {
          printk("[BTCoex], wifi RSSI state switch to Low\n");
        } else {
        }
      } else {
        wifi_rssi_state = 4U;
        tmp___8 = ldv__builtin_expect((btc_dbg_type[1] & 2U) != 0U, 0L);
        if (tmp___8 != 0L) {
          printk("[BTCoex], wifi RSSI state stay at Medium\n");
        } else {
        }
      }
    } else
    if ((int )rssi_thresh1 > wifi_rssi) {
      wifi_rssi_state = 1U;
      tmp___9 = ldv__builtin_expect((btc_dbg_type[1] & 2U) != 0U, 0L);
      if (tmp___9 != 0L) {
        printk("[BTCoex], wifi RSSI state switch to Medium\n");
      } else {
      }
    } else {
      wifi_rssi_state = 3U;
      tmp___10 = ldv__builtin_expect((btc_dbg_type[1] & 2U) != 0U, 0L);
      if (tmp___10 != 0L) {
        printk("[BTCoex], wifi RSSI state stay at High\n");
      } else {
      }
    }
  } else {
  }
  coex_sta->pre_wifi_rssi_state[(int )index] = wifi_rssi_state;
  return (wifi_rssi_state);
}
}
static void btc8723b2ant_monitor_bt_ctr(struct btc_coexist *btcoexist )
{
  u32 reg_hp_txrx ;
  u32 reg_lp_txrx ;
  u32 u32tmp ;
  u32 reg_hp_tx ;
  u32 reg_hp_rx ;
  u32 reg_lp_tx ;
  u32 reg_lp_rx ;
  long tmp ;
  long tmp___0 ;
  {
  reg_hp_tx = 0U;
  reg_hp_rx = 0U;
  reg_lp_tx = 0U;
  reg_lp_rx = 0U;
  reg_hp_txrx = 1904U;
  reg_lp_txrx = 1908U;
  u32tmp = (*(btcoexist->btc_read_4byte))((void *)btcoexist, reg_hp_txrx);
  reg_hp_tx = u32tmp & 65535U;
  reg_hp_rx = u32tmp >> 16;
  u32tmp = (*(btcoexist->btc_read_4byte))((void *)btcoexist, reg_lp_txrx);
  reg_lp_tx = u32tmp & 65535U;
  reg_lp_rx = u32tmp >> 16;
  coex_sta->high_priority_tx = reg_hp_tx;
  coex_sta->high_priority_rx = reg_hp_rx;
  coex_sta->low_priority_tx = reg_lp_tx;
  coex_sta->low_priority_rx = reg_lp_rx;
  tmp = ldv__builtin_expect((btc_dbg_type[1] & 4U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], High Priority Tx/Rx(reg 0x%x)=0x%x(%d)/0x%x(%d)\n", reg_hp_txrx,
           reg_hp_tx, reg_hp_tx, reg_hp_rx, reg_hp_rx);
  } else {
  }
  tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 4U) != 0U, 0L);
  if (tmp___0 != 0L) {
    printk("[BTCoex], Low Priority Tx/Rx(reg 0x%x)=0x%x(%d)/0x%x(%d)\n", reg_lp_txrx,
           reg_lp_tx, reg_lp_tx, reg_lp_rx, reg_lp_rx);
  } else {
  }
  (*(btcoexist->btc_write_1byte))((void *)btcoexist, 1902U, 12);
  return;
}
}
static bool btc8723b2ant_is_wifi_status_changed(struct btc_coexist *btcoexist )
{
  bool pre_wifi_busy ;
  bool pre_under_4way ;
  bool pre_bt_hs_on ;
  bool wifi_busy ;
  bool under_4way ;
  bool bt_hs_on ;
  bool wifi_connected ;
  {
  wifi_busy = 0;
  under_4way = 0;
  bt_hs_on = 0;
  wifi_connected = 0;
  (*(btcoexist->btc_get))((void *)btcoexist, 2, (void *)(& wifi_connected));
  (*(btcoexist->btc_get))((void *)btcoexist, 3, (void *)(& wifi_busy));
  (*(btcoexist->btc_get))((void *)btcoexist, 0, (void *)(& bt_hs_on));
  (*(btcoexist->btc_get))((void *)btcoexist, 11, (void *)(& under_4way));
  if ((int )wifi_connected) {
    if ((int )wifi_busy != (int )pre_wifi_busy) {
      pre_wifi_busy = wifi_busy;
      return (1);
    } else {
    }
    if ((int )under_4way != (int )pre_under_4way) {
      pre_under_4way = under_4way;
      return (1);
    } else {
    }
    if ((int )bt_hs_on != (int )pre_bt_hs_on) {
      pre_bt_hs_on = bt_hs_on;
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
static void btc8723b2ant_update_bt_link_info(struct btc_coexist *btcoexist )
{
  struct btc_bt_link_info *bt_link_info ;
  bool bt_hs_on ;
  {
  bt_link_info = & btcoexist->bt_link_info;
  bt_hs_on = 0;
  (*(btcoexist->btc_get))((void *)btcoexist, 0, (void *)(& bt_hs_on));
  bt_link_info->bt_link_exist = coex_sta->bt_link_exist;
  bt_link_info->sco_exist = coex_sta->sco_exist;
  bt_link_info->a2dp_exist = coex_sta->a2dp_exist;
  bt_link_info->pan_exist = coex_sta->pan_exist;
  bt_link_info->hid_exist = coex_sta->hid_exist;
  if ((int )bt_hs_on) {
    bt_link_info->pan_exist = 1;
    bt_link_info->bt_link_exist = 1;
  } else {
  }
  if ((((int )bt_link_info->sco_exist && ! bt_link_info->a2dp_exist) && ! bt_link_info->pan_exist) && ! bt_link_info->hid_exist) {
    bt_link_info->sco_only = 1;
  } else {
    bt_link_info->sco_only = 0;
  }
  if (((! bt_link_info->sco_exist && (int )bt_link_info->a2dp_exist) && ! bt_link_info->pan_exist) && ! bt_link_info->hid_exist) {
    bt_link_info->a2dp_only = 1;
  } else {
    bt_link_info->a2dp_only = 0;
  }
  if (((! bt_link_info->sco_exist && ! bt_link_info->a2dp_exist) && (int )bt_link_info->pan_exist) && ! bt_link_info->hid_exist) {
    bt_link_info->pan_only = 1;
  } else {
    bt_link_info->pan_only = 0;
  }
  if (((! bt_link_info->sco_exist && ! bt_link_info->a2dp_exist) && ! bt_link_info->pan_exist) && (int )bt_link_info->hid_exist) {
    bt_link_info->hid_only = 1;
  } else {
    bt_link_info->hid_only = 0;
  }
  return;
}
}
static u8 btc8723b2ant_action_algorithm(struct btc_coexist *btcoexist )
{
  struct btc_bt_link_info *bt_link_info ;
  bool bt_hs_on ;
  u8 algorithm ;
  u8 num_of_diff_profile ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  long tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  long tmp___15 ;
  long tmp___16 ;
  long tmp___17 ;
  long tmp___18 ;
  long tmp___19 ;
  long tmp___20 ;
  long tmp___21 ;
  long tmp___22 ;
  {
  bt_link_info = & btcoexist->bt_link_info;
  bt_hs_on = 0;
  algorithm = 0U;
  num_of_diff_profile = 0U;
  (*(btcoexist->btc_get))((void *)btcoexist, 0, (void *)(& bt_hs_on));
  if (! bt_link_info->bt_link_exist) {
    tmp = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp != 0L) {
      printk("[BTCoex], No BT link exists!!!\n");
    } else {
    }
    return (algorithm);
  } else {
  }
  if ((int )bt_link_info->sco_exist) {
    num_of_diff_profile = (u8 )((int )num_of_diff_profile + 1);
  } else {
  }
  if ((int )bt_link_info->hid_exist) {
    num_of_diff_profile = (u8 )((int )num_of_diff_profile + 1);
  } else {
  }
  if ((int )bt_link_info->pan_exist) {
    num_of_diff_profile = (u8 )((int )num_of_diff_profile + 1);
  } else {
  }
  if ((int )bt_link_info->a2dp_exist) {
    num_of_diff_profile = (u8 )((int )num_of_diff_profile + 1);
  } else {
  }
  if ((unsigned int )num_of_diff_profile == 1U) {
    if ((int )bt_link_info->sco_exist) {
      tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
      if (tmp___0 != 0L) {
        printk("[BTCoex], SCO only\n");
      } else {
      }
      algorithm = 1U;
    } else
    if ((int )bt_link_info->hid_exist) {
      tmp___1 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
      if (tmp___1 != 0L) {
        printk("[BTCoex], HID only\n");
      } else {
      }
      algorithm = 2U;
    } else
    if ((int )bt_link_info->a2dp_exist) {
      tmp___2 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
      if (tmp___2 != 0L) {
        printk("[BTCoex], A2DP only\n");
      } else {
      }
      algorithm = 3U;
    } else
    if ((int )bt_link_info->pan_exist) {
      if ((int )bt_hs_on) {
        tmp___3 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
        if (tmp___3 != 0L) {
          printk("[BTCoex], PAN(HS) only\n");
        } else {
        }
        algorithm = 6U;
      } else {
        tmp___4 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
        if (tmp___4 != 0L) {
          printk("[BTCoex], PAN(EDR) only\n");
        } else {
        }
        algorithm = 5U;
      }
    } else {
    }
  } else
  if ((unsigned int )num_of_diff_profile == 2U) {
    if ((int )bt_link_info->sco_exist) {
      if ((int )bt_link_info->hid_exist) {
        tmp___5 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
        if (tmp___5 != 0L) {
          printk("[BTCoex], SCO + HID\n");
        } else {
        }
        algorithm = 8U;
      } else
      if ((int )bt_link_info->a2dp_exist) {
        tmp___6 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
        if (tmp___6 != 0L) {
          printk("[BTCoex], SCO + A2DP ==> SCO\n");
        } else {
        }
        algorithm = 8U;
      } else
      if ((int )bt_link_info->pan_exist) {
        if ((int )bt_hs_on) {
          tmp___7 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
          if (tmp___7 != 0L) {
            printk("[BTCoex], SCO + PAN(HS)\n");
          } else {
          }
          algorithm = 1U;
        } else {
          tmp___8 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
          if (tmp___8 != 0L) {
            printk("[BTCoex], SCO + PAN(EDR)\n");
          } else {
          }
          algorithm = 8U;
        }
      } else {
      }
    } else
    if ((int )bt_link_info->hid_exist && (int )bt_link_info->a2dp_exist) {
      tmp___9 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
      if (tmp___9 != 0L) {
        printk("[BTCoex], HID + A2DP\n");
      } else {
      }
      algorithm = 10U;
    } else
    if ((int )bt_link_info->hid_exist && (int )bt_link_info->pan_exist) {
      if ((int )bt_hs_on) {
        tmp___10 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
        if (tmp___10 != 0L) {
          printk("[BTCoex], HID + PAN(HS)\n");
        } else {
        }
        algorithm = 2U;
      } else {
        tmp___11 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
        if (tmp___11 != 0L) {
          printk("[BTCoex], HID + PAN(EDR)\n");
        } else {
        }
        algorithm = 8U;
      }
    } else
    if ((int )bt_link_info->pan_exist && (int )bt_link_info->a2dp_exist) {
      if ((int )bt_hs_on) {
        tmp___12 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
        if (tmp___12 != 0L) {
          printk("[BTCoex], A2DP + PAN(HS)\n");
        } else {
        }
        algorithm = 4U;
      } else {
        tmp___13 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
        if (tmp___13 != 0L) {
          printk("[BTCoex],A2DP + PAN(EDR)\n");
        } else {
        }
        algorithm = 7U;
      }
    } else {
    }
  } else
  if ((unsigned int )num_of_diff_profile == 3U) {
    if ((int )bt_link_info->sco_exist) {
      if ((int )bt_link_info->hid_exist && (int )bt_link_info->a2dp_exist) {
        tmp___14 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
        if (tmp___14 != 0L) {
          printk("[BTCoex], SCO + HID + A2DP ==> HID\n");
        } else {
        }
        algorithm = 8U;
      } else
      if ((int )bt_link_info->hid_exist && (int )bt_link_info->pan_exist) {
        if ((int )bt_hs_on) {
          tmp___15 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
          if (tmp___15 != 0L) {
            printk("[BTCoex], SCO + HID + PAN(HS)\n");
          } else {
          }
          algorithm = 8U;
        } else {
          tmp___16 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
          if (tmp___16 != 0L) {
            printk("[BTCoex], SCO + HID + PAN(EDR)\n");
          } else {
          }
          algorithm = 8U;
        }
      } else
      if ((int )bt_link_info->pan_exist && (int )bt_link_info->a2dp_exist) {
        if ((int )bt_hs_on) {
          tmp___17 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
          if (tmp___17 != 0L) {
            printk("[BTCoex], SCO + A2DP + PAN(HS)\n");
          } else {
          }
          algorithm = 8U;
        } else {
          tmp___18 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
          if (tmp___18 != 0L) {
            printk("[BTCoex], SCO + A2DP + PAN(EDR) ==> HID\n");
          } else {
          }
          algorithm = 8U;
        }
      } else {
      }
    } else
    if (((int )bt_link_info->hid_exist && (int )bt_link_info->pan_exist) && (int )bt_link_info->a2dp_exist) {
      if ((int )bt_hs_on) {
        tmp___19 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
        if (tmp___19 != 0L) {
          printk("[BTCoex], HID + A2DP + PAN(HS)\n");
        } else {
        }
        algorithm = 10U;
      } else {
        tmp___20 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
        if (tmp___20 != 0L) {
          printk("[BTCoex], HID + A2DP + PAN(EDR)\n");
        } else {
        }
        algorithm = 9U;
      }
    } else {
    }
  } else
  if ((unsigned int )num_of_diff_profile > 2U) {
    if ((int )bt_link_info->sco_exist) {
      if (((int )bt_link_info->hid_exist && (int )bt_link_info->pan_exist) && (int )bt_link_info->a2dp_exist) {
        if ((int )bt_hs_on) {
          tmp___21 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
          if (tmp___21 != 0L) {
            printk("[BTCoex], Error!!! SCO + HID + A2DP + PAN(HS)\n");
          } else {
          }
        } else {
          tmp___22 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
          if (tmp___22 != 0L) {
            printk("[BTCoex], SCO + HID + A2DP + PAN(EDR)==>PAN(EDR)+HID\n");
          } else {
          }
          algorithm = 8U;
        }
      } else {
      }
    } else {
    }
  } else {
  }
  return (algorithm);
}
}
static bool btc8723b_need_dec_pwr(struct btc_coexist *btcoexist )
{
  bool ret ;
  bool bt_hs_on ;
  bool wifi_connected ;
  s32 bt_hs_rssi ;
  u8 bt_rssi_state ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  ret = 0;
  bt_hs_on = 0;
  wifi_connected = 0;
  bt_hs_rssi = 0;
  tmp = (*(btcoexist->btc_get))((void *)btcoexist, 0, (void *)(& bt_hs_on));
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (0);
  } else {
  }
  tmp___1 = (*(btcoexist->btc_get))((void *)btcoexist, 2, (void *)(& wifi_connected));
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (0);
  } else {
  }
  tmp___3 = (*(btcoexist->btc_get))((void *)btcoexist, 18, (void *)(& bt_hs_rssi));
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4) {
    return (0);
  } else {
  }
  bt_rssi_state = btc8723b2ant_bt_rssi_state(2, 35, 0);
  if ((int )wifi_connected) {
    if ((int )bt_hs_on) {
      if (bt_hs_rssi > 37) {
        tmp___5 = ldv__builtin_expect((btc_dbg_type[1] & 16U) != 0U, 0L);
        if (tmp___5 != 0L) {
          printk("[BTCoex], Need to decrease bt power for HS mode!!\n");
        } else {
        }
        ret = 1;
      } else {
      }
    } else
    if ((unsigned int )bt_rssi_state == 0U || (unsigned int )bt_rssi_state == 3U) {
      tmp___6 = ldv__builtin_expect((btc_dbg_type[1] & 16U) != 0U, 0L);
      if (tmp___6 != 0L) {
        printk("[BTCoex], Need to decrease bt power for Wifi is connected!!\n");
      } else {
      }
      ret = 1;
    } else {
    }
  } else {
  }
  return (ret);
}
}
static void btc8723b2ant_set_fw_dac_swing_level(struct btc_coexist *btcoexist , u8 dac_swing_lvl )
{
  u8 h2c_parameter[1U] ;
  long tmp ;
  long tmp___0 ;
  {
  h2c_parameter[0] = 0U;
  h2c_parameter[0] = dac_swing_lvl;
  tmp = ldv__builtin_expect((btc_dbg_type[1] & 64U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], Set Dac Swing Level=0x%x\n", (int )dac_swing_lvl);
  } else {
  }
  tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 64U) != 0U, 0L);
  if (tmp___0 != 0L) {
    printk("[BTCoex], FW write 0x64=0x%x\n", (int )h2c_parameter[0]);
  } else {
  }
  (*(btcoexist->btc_fill_h2c))((void *)btcoexist, 100, 1U, (u8 *)(& h2c_parameter));
  return;
}
}
static void btc8723b2ant_set_fw_dec_bt_pwr(struct btc_coexist *btcoexist , bool dec_bt_pwr )
{
  u8 h2c_parameter[1U] ;
  long tmp ;
  {
  h2c_parameter[0] = 0U;
  h2c_parameter[0] = 0U;
  if ((int )dec_bt_pwr) {
    h2c_parameter[0] = (u8 )((unsigned int )h2c_parameter[0] | 2U);
  } else {
  }
  tmp = ldv__builtin_expect((btc_dbg_type[1] & 64U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], decrease Bt Power : %s, FW write 0x62=0x%x\n", (int )dec_bt_pwr ? (char *)"Yes!!" : (char *)"No!!",
           (int )h2c_parameter[0]);
  } else {
  }
  (*(btcoexist->btc_fill_h2c))((void *)btcoexist, 98, 1U, (u8 *)(& h2c_parameter));
  return;
}
}
static void btc8723b2ant_dec_bt_pwr(struct btc_coexist *btcoexist , bool force_exec ,
                                    bool dec_bt_pwr )
{
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect((btc_dbg_type[1] & 16U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], %s Dec BT power = %s\n", (int )force_exec ? (char *)"force to" : (char *)"",
           (int )dec_bt_pwr ? (char *)"ON" : (char *)"OFF");
  } else {
  }
  coex_dm->cur_dec_bt_pwr = dec_bt_pwr;
  if (! force_exec) {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 32U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], bPreDecBtPwr=%d, bCurDecBtPwr=%d\n", (int )coex_dm->pre_dec_bt_pwr,
             (int )coex_dm->cur_dec_bt_pwr);
    } else {
    }
    if ((int )coex_dm->pre_dec_bt_pwr == (int )coex_dm->cur_dec_bt_pwr) {
      return;
    } else {
    }
  } else {
  }
  btc8723b2ant_set_fw_dec_bt_pwr(btcoexist, (int )coex_dm->cur_dec_bt_pwr);
  coex_dm->pre_dec_bt_pwr = coex_dm->cur_dec_bt_pwr;
  return;
}
}
static void btc8723b2ant_fw_dac_swing_lvl(struct btc_coexist *btcoexist , bool force_exec ,
                                          u8 fw_dac_swing_lvl )
{
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect((btc_dbg_type[1] & 16U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], %s set FW Dac Swing level = %d\n", (int )force_exec ? (char *)"force to" : (char *)"",
           (int )fw_dac_swing_lvl);
  } else {
  }
  coex_dm->cur_fw_dac_swing_lvl = fw_dac_swing_lvl;
  if (! force_exec) {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 32U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], preFwDacSwingLvl=%d, curFwDacSwingLvl=%d\n", (int )coex_dm->pre_fw_dac_swing_lvl,
             (int )coex_dm->cur_fw_dac_swing_lvl);
    } else {
    }
    if ((int )coex_dm->pre_fw_dac_swing_lvl == (int )coex_dm->cur_fw_dac_swing_lvl) {
      return;
    } else {
    }
  } else {
  }
  btc8723b2ant_set_fw_dac_swing_level(btcoexist, (int )coex_dm->cur_fw_dac_swing_lvl);
  coex_dm->pre_fw_dac_swing_lvl = coex_dm->cur_fw_dac_swing_lvl;
  return;
}
}
static void btc8723b2ant_set_sw_rf_rx_lpf_corner(struct btc_coexist *btcoexist , bool rx_rf_shrink_on )
{
  long tmp ;
  long tmp___0 ;
  {
  if ((int )rx_rf_shrink_on) {
    tmp = ldv__builtin_expect((btc_dbg_type[1] & 512U) != 0U, 0L);
    if (tmp != 0L) {
      printk("[BTCoex], Shrink RF Rx LPF corner!!\n");
    } else {
    }
    (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 30U, 1048575U, 1048572U);
  } else
  if ((int )btcoexist->initilized) {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 512U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], Resume RF Rx LPF corner!!\n");
    } else {
    }
    (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 30U, 1048575U, coex_dm->bt_rf0x1e_backup);
  } else {
  }
  return;
}
}
static void btc8723b2ant_rf_shrink(struct btc_coexist *btcoexist , bool force_exec ,
                                   bool rx_rf_shrink_on )
{
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect((btc_dbg_type[1] & 128U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], %s turn Rx RF Shrink = %s\n", (int )force_exec ? (char *)"force to" : (char *)"",
           (int )rx_rf_shrink_on ? (char *)"ON" : (char *)"OFF");
  } else {
  }
  coex_dm->cur_rf_rx_lpf_shrink = rx_rf_shrink_on;
  if (! force_exec) {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 256U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], bPreRfRxLpfShrink=%d, bCurRfRxLpfShrink=%d\n", (int )coex_dm->pre_rf_rx_lpf_shrink,
             (int )coex_dm->cur_rf_rx_lpf_shrink);
    } else {
    }
    if ((int )coex_dm->pre_rf_rx_lpf_shrink == (int )coex_dm->cur_rf_rx_lpf_shrink) {
      return;
    } else {
    }
  } else {
  }
  btc8723b2ant_set_sw_rf_rx_lpf_corner(btcoexist, (int )coex_dm->cur_rf_rx_lpf_shrink);
  coex_dm->pre_rf_rx_lpf_shrink = coex_dm->cur_rf_rx_lpf_shrink;
  return;
}
}
static void btc8723b_set_penalty_txrate(struct btc_coexist *btcoexist , bool low_penalty_ra )
{
  u8 h2c_parameter[6U] ;
  unsigned int tmp ;
  long tmp___0 ;
  {
  h2c_parameter[0] = 0U;
  tmp = 1U;
  while (1) {
    if (tmp >= 6U) {
      break;
    } else {
    }
    h2c_parameter[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  h2c_parameter[0] = 6U;
  if ((int )low_penalty_ra) {
    h2c_parameter[1] = (u8 )((unsigned int )h2c_parameter[1] | 1U);
    h2c_parameter[2] = 0U;
    h2c_parameter[3] = 247U;
    h2c_parameter[4] = 248U;
    h2c_parameter[5] = 249U;
  } else {
  }
  tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 64U) != 0U, 0L);
  if (tmp___0 != 0L) {
    printk("[BTCoex], set WiFi Low-Penalty Retry: %s", (int )low_penalty_ra ? (char *)"ON!!" : (char *)"OFF!!");
  } else {
  }
  (*(btcoexist->btc_fill_h2c))((void *)btcoexist, 105, 6U, (u8 *)(& h2c_parameter));
  return;
}
}
static void btc8723b2ant_low_penalty_ra(struct btc_coexist *btcoexist , bool force_exec ,
                                        bool low_penalty_ra )
{
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect((btc_dbg_type[1] & 128U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], %s turn LowPenaltyRA = %s\n", (int )force_exec ? (char *)"force to" : (char *)"",
           (int )low_penalty_ra ? (char *)"ON" : (char *)"OFF");
  } else {
  }
  coex_dm->cur_low_penalty_ra = low_penalty_ra;
  if (! force_exec) {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 256U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], bPreLowPenaltyRa=%d, bCurLowPenaltyRa=%d\n", (int )coex_dm->pre_low_penalty_ra,
             (int )coex_dm->cur_low_penalty_ra);
    } else {
    }
    if ((int )coex_dm->pre_low_penalty_ra == (int )coex_dm->cur_low_penalty_ra) {
      return;
    } else {
    }
  } else {
  }
  btc8723b_set_penalty_txrate(btcoexist, (int )coex_dm->cur_low_penalty_ra);
  coex_dm->pre_low_penalty_ra = coex_dm->cur_low_penalty_ra;
  return;
}
}
static void btc8723b2ant_set_dac_swing_reg(struct btc_coexist *btcoexist , u32 level )
{
  u8 val ;
  long tmp ;
  {
  val = (unsigned char )level;
  tmp = ldv__builtin_expect((btc_dbg_type[1] & 512U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], Write SwDacSwing = 0x%x\n", level);
  } else {
  }
  (*(btcoexist->btc_write_1byte_bitmask))((void *)btcoexist, 2179U, 62U, (int )val);
  return;
}
}
static void btc8723b2ant_set_sw_fulltime_dac_swing(struct btc_coexist *btcoex , bool sw_dac_swing_on ,
                                                   u32 sw_dac_swing_lvl )
{
  {
  if ((int )sw_dac_swing_on) {
    btc8723b2ant_set_dac_swing_reg(btcoex, sw_dac_swing_lvl);
  } else {
    btc8723b2ant_set_dac_swing_reg(btcoex, 24U);
  }
  return;
}
}
static void btc8723b2ant_dac_swing(struct btc_coexist *btcoexist , bool force_exec ,
                                   bool dac_swing_on , u32 dac_swing_lvl )
{
  long tmp ;
  long tmp___0 ;
  unsigned long __ms ;
  unsigned long tmp___1 ;
  {
  tmp = ldv__builtin_expect((btc_dbg_type[1] & 128U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], %s turn DacSwing=%s, dac_swing_lvl=0x%x\n", (int )force_exec ? (char *)"force to" : (char *)"",
           (int )dac_swing_on ? (char *)"ON" : (char *)"OFF", dac_swing_lvl);
  } else {
  }
  coex_dm->cur_dac_swing_on = dac_swing_on;
  coex_dm->cur_dac_swing_lvl = dac_swing_lvl;
  if (! force_exec) {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 256U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], bPreDacSwingOn=%d, preDacSwingLvl=0x%x, bCurDacSwingOn=%d, curDacSwingLvl=0x%x\n",
             (int )coex_dm->pre_dac_swing_on, coex_dm->pre_dac_swing_lvl, (int )coex_dm->cur_dac_swing_on,
             coex_dm->cur_dac_swing_lvl);
    } else {
    }
    if ((int )coex_dm->pre_dac_swing_on == (int )coex_dm->cur_dac_swing_on && coex_dm->pre_dac_swing_lvl == coex_dm->cur_dac_swing_lvl) {
      return;
    } else {
    }
  } else {
  }
  __ms = 30UL;
  goto ldv_51780;
  ldv_51779:
  __const_udelay(4295000UL);
  ldv_51780:
  tmp___1 = __ms;
  __ms = __ms - 1UL;
  if (tmp___1 != 0UL) {
    goto ldv_51779;
  } else {
  }
  btc8723b2ant_set_sw_fulltime_dac_swing(btcoexist, (int )dac_swing_on, dac_swing_lvl);
  coex_dm->pre_dac_swing_on = coex_dm->cur_dac_swing_on;
  coex_dm->pre_dac_swing_lvl = coex_dm->cur_dac_swing_lvl;
  return;
}
}
static void btc8723b2ant_set_agc_table(struct btc_coexist *btcoexist , bool agc_table_en )
{
  u8 rssi_adjust_val ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  {
  rssi_adjust_val = 0U;
  if ((int )agc_table_en) {
    tmp = ldv__builtin_expect((btc_dbg_type[1] & 512U) != 0U, 0L);
    if (tmp != 0L) {
      printk("[BTCoex], BB Agc Table On!\n");
    } else {
    }
    (*(btcoexist->btc_write_4byte))((void *)btcoexist, 3192U, 1847197697U);
    (*(btcoexist->btc_write_4byte))((void *)btcoexist, 3192U, 1830486017U);
    (*(btcoexist->btc_write_4byte))((void *)btcoexist, 3192U, 1813774337U);
    (*(btcoexist->btc_write_4byte))((void *)btcoexist, 3192U, 1797062657U);
    (*(btcoexist->btc_write_4byte))((void *)btcoexist, 3192U, 1780350977U);
    (*(btcoexist->btc_write_4byte))((void *)btcoexist, 3192U, 1763639297U);
    (*(btcoexist->btc_write_4byte))((void *)btcoexist, 3192U, 1746927617U);
  } else {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 512U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], BB Agc Table Off!\n");
    } else {
    }
    (*(btcoexist->btc_write_4byte))((void *)btcoexist, 3192U, 2853830657U);
    (*(btcoexist->btc_write_4byte))((void *)btcoexist, 3192U, 2837118977U);
    (*(btcoexist->btc_write_4byte))((void *)btcoexist, 3192U, 2820407297U);
    (*(btcoexist->btc_write_4byte))((void *)btcoexist, 3192U, 2803695617U);
    (*(btcoexist->btc_write_4byte))((void *)btcoexist, 3192U, 2786983937U);
    (*(btcoexist->btc_write_4byte))((void *)btcoexist, 3192U, 2770272257U);
    (*(btcoexist->btc_write_4byte))((void *)btcoexist, 3192U, 2753560577U);
  }
  (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 239U, 1048575U, 8192U);
  if ((int )agc_table_en) {
    tmp___1 = ldv__builtin_expect((btc_dbg_type[1] & 512U) != 0U, 0L);
    if (tmp___1 != 0L) {
      printk("[BTCoex], Agc Table On!\n");
    } else {
    }
    (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 59U, 1048575U, 233471U);
    (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 59U, 1048575U, 233470U);
  } else {
    tmp___2 = ldv__builtin_expect((btc_dbg_type[1] & 512U) != 0U, 0L);
    if (tmp___2 != 0L) {
      printk("[BTCoex], Agc Table Off!\n");
    } else {
    }
    (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 59U, 1048575U, 229571U);
    (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 59U, 1048575U, 167142U);
  }
  (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 239U, 1048575U, 0U);
  (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 237U, 1048575U, 1U);
  if ((int )agc_table_en) {
    tmp___3 = ldv__builtin_expect((btc_dbg_type[1] & 512U) != 0U, 0L);
    if (tmp___3 != 0L) {
      printk("[BTCoex], Agc Table On!\n");
    } else {
    }
    (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 64U, 1048575U, 233471U);
    (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 64U, 1048575U, 233470U);
  } else {
    tmp___4 = ldv__builtin_expect((btc_dbg_type[1] & 512U) != 0U, 0L);
    if (tmp___4 != 0L) {
      printk("[BTCoex], Agc Table Off!\n");
    } else {
    }
    (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 64U, 1048575U, 229571U);
    (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 64U, 1048575U, 167142U);
  }
  (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 237U, 1048575U, 0U);
  if ((int )agc_table_en) {
    rssi_adjust_val = 8U;
  } else {
  }
  (*(btcoexist->btc_set))((void *)btcoexist, 7, (void *)(& rssi_adjust_val));
  return;
}
}
static void btc8723b2ant_agc_table(struct btc_coexist *btcoexist , bool force_exec ,
                                   bool agc_table_en )
{
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect((btc_dbg_type[1] & 128U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], %s %s Agc Table\n", (int )force_exec ? (char *)"force to" : (char *)"",
           (int )agc_table_en ? (char *)"Enable" : (char *)"Disable");
  } else {
  }
  coex_dm->cur_agc_table_en = agc_table_en;
  if (! force_exec) {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 256U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], bPreAgcTableEn=%d, bCurAgcTableEn=%d\n", (int )coex_dm->pre_agc_table_en,
             (int )coex_dm->cur_agc_table_en);
    } else {
    }
    if ((int )coex_dm->pre_agc_table_en == (int )coex_dm->cur_agc_table_en) {
      return;
    } else {
    }
  } else {
  }
  btc8723b2ant_set_agc_table(btcoexist, (int )agc_table_en);
  coex_dm->pre_agc_table_en = coex_dm->cur_agc_table_en;
  return;
}
}
static void btc8723b2ant_set_coex_table(struct btc_coexist *btcoexist , u32 val0x6c0 ,
                                        u32 val0x6c4 , u32 val0x6c8 , u8 val0x6cc )
{
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = ldv__builtin_expect((btc_dbg_type[1] & 512U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], set coex table, set 0x6c0=0x%x\n", val0x6c0);
  } else {
  }
  (*(btcoexist->btc_write_4byte))((void *)btcoexist, 1728U, val0x6c0);
  tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 512U) != 0U, 0L);
  if (tmp___0 != 0L) {
    printk("[BTCoex], set coex table, set 0x6c4=0x%x\n", val0x6c4);
  } else {
  }
  (*(btcoexist->btc_write_4byte))((void *)btcoexist, 1732U, val0x6c4);
  tmp___1 = ldv__builtin_expect((btc_dbg_type[1] & 512U) != 0U, 0L);
  if (tmp___1 != 0L) {
    printk("[BTCoex], set coex table, set 0x6c8=0x%x\n", val0x6c8);
  } else {
  }
  (*(btcoexist->btc_write_4byte))((void *)btcoexist, 1736U, val0x6c8);
  tmp___2 = ldv__builtin_expect((btc_dbg_type[1] & 512U) != 0U, 0L);
  if (tmp___2 != 0L) {
    printk("[BTCoex], set coex table, set 0x6cc=0x%x\n", (int )val0x6cc);
  } else {
  }
  (*(btcoexist->btc_write_1byte))((void *)btcoexist, 1740U, (int )val0x6cc);
  return;
}
}
static void btc8723b2ant_coex_table(struct btc_coexist *btcoexist , bool force_exec ,
                                    u32 val0x6c0 , u32 val0x6c4 , u32 val0x6c8 , u8 val0x6cc )
{
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = ldv__builtin_expect((btc_dbg_type[1] & 128U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], %s write Coex Table 0x6c0=0x%x, 0x6c4=0x%x, 0x6c8=0x%x, 0x6cc=0x%x\n",
           (int )force_exec ? (char *)"force to" : (char *)"", val0x6c0, val0x6c4,
           val0x6c8, (int )val0x6cc);
  } else {
  }
  coex_dm->cur_val0x6c0 = val0x6c0;
  coex_dm->cur_val0x6c4 = val0x6c4;
  coex_dm->cur_val0x6c8 = val0x6c8;
  coex_dm->cur_val0x6cc = val0x6cc;
  if (! force_exec) {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 256U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], preVal0x6c0=0x%x, preVal0x6c4=0x%x, preVal0x6c8=0x%x, preVal0x6cc=0x%x !!\n",
             coex_dm->pre_val0x6c0, coex_dm->pre_val0x6c4, coex_dm->pre_val0x6c8,
             (int )coex_dm->pre_val0x6cc);
    } else {
    }
    tmp___1 = ldv__builtin_expect((btc_dbg_type[1] & 256U) != 0U, 0L);
    if (tmp___1 != 0L) {
      printk("[BTCoex], curVal0x6c0=0x%x, curVal0x6c4=0x%x, curVal0x6c8=0x%x, curVal0x6cc=0x%x !!\n",
             coex_dm->cur_val0x6c0, coex_dm->cur_val0x6c4, coex_dm->cur_val0x6c8,
             (int )coex_dm->cur_val0x6cc);
    } else {
    }
    if (((coex_dm->pre_val0x6c0 == coex_dm->cur_val0x6c0 && coex_dm->pre_val0x6c4 == coex_dm->cur_val0x6c4) && coex_dm->pre_val0x6c8 == coex_dm->cur_val0x6c8) && (int )coex_dm->pre_val0x6cc == (int )coex_dm->cur_val0x6cc) {
      return;
    } else {
    }
  } else {
  }
  btc8723b2ant_set_coex_table(btcoexist, val0x6c0, val0x6c4, val0x6c8, (int )val0x6cc);
  coex_dm->pre_val0x6c0 = coex_dm->cur_val0x6c0;
  coex_dm->pre_val0x6c4 = coex_dm->cur_val0x6c4;
  coex_dm->pre_val0x6c8 = coex_dm->cur_val0x6c8;
  coex_dm->pre_val0x6cc = coex_dm->cur_val0x6cc;
  return;
}
}
static void btc8723b_coex_tbl_type(struct btc_coexist *btcoexist , bool force_exec ,
                                   u8 type )
{
  {
  switch ((int )type) {
  case 0:
  btc8723b2ant_coex_table(btcoexist, (int )force_exec, 1431655765U, 1431655765U, 65535U,
                          3);
  goto ldv_51813;
  case 1:
  btc8723b2ant_coex_table(btcoexist, (int )force_exec, 1431655765U, 1526356730U, 65535U,
                          3);
  goto ldv_51813;
  case 2:
  btc8723b2ant_coex_table(btcoexist, (int )force_exec, 1515870810U, 1515870810U, 65535U,
                          3);
  goto ldv_51813;
  case 3:
  btc8723b2ant_coex_table(btcoexist, (int )force_exec, 2863311530U, 2863311530U, 65535U,
                          3);
  goto ldv_51813;
  case 4:
  btc8723b2ant_coex_table(btcoexist, (int )force_exec, 4294967295U, 4294967295U, 65535U,
                          3);
  goto ldv_51813;
  case 5:
  btc8723b2ant_coex_table(btcoexist, (int )force_exec, 1610571775U, 1610571775U, 65535U,
                          3);
  goto ldv_51813;
  case 6:
  btc8723b2ant_coex_table(btcoexist, (int )force_exec, 1442797055U, 1515870810U, 65535U,
                          3);
  goto ldv_51813;
  case 7:
  btc8723b2ant_coex_table(btcoexist, (int )force_exec, 1442797055U, 1526356730U, 65535U,
                          3);
  goto ldv_51813;
  case 8:
  btc8723b2ant_coex_table(btcoexist, (int )force_exec, 1525308138U, 1525308138U, 65535U,
                          3);
  goto ldv_51813;
  case 9:
  btc8723b2ant_coex_table(btcoexist, (int )force_exec, 1442797055U, 1525308138U, 65535U,
                          3);
  goto ldv_51813;
  case 10:
  btc8723b2ant_coex_table(btcoexist, (int )force_exec, 1442797055U, 1526684415U, 65535U,
                          3);
  goto ldv_51813;
  case 11:
  btc8723b2ant_coex_table(btcoexist, (int )force_exec, 1442797055U, 1516198495U, 65535U,
                          3);
  goto ldv_51813;
  case 12:
  btc8723b2ant_coex_table(btcoexist, (int )force_exec, 1442797055U, 1600085855U, 65535U,
                          3);
  goto ldv_51813;
  default: ;
  goto ldv_51813;
  }
  ldv_51813: ;
  return;
}
}
static void btc8723b2ant_set_fw_ignore_wlan_act(struct btc_coexist *btcoexist , bool enable )
{
  u8 h2c_parameter[1U] ;
  long tmp ;
  {
  h2c_parameter[0] = 0U;
  if ((int )enable) {
    h2c_parameter[0] = (u8 )((unsigned int )h2c_parameter[0] | 1U);
  } else {
  }
  tmp = ldv__builtin_expect((btc_dbg_type[1] & 64U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], set FW for BT Ignore Wlan_Act, FW write 0x63=0x%x\n", (int )h2c_parameter[0]);
  } else {
  }
  (*(btcoexist->btc_fill_h2c))((void *)btcoexist, 99, 1U, (u8 *)(& h2c_parameter));
  return;
}
}
static void btc8723b2ant_ignore_wlan_act(struct btc_coexist *btcoexist , bool force_exec ,
                                         bool enable )
{
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect((btc_dbg_type[1] & 16U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], %s turn Ignore WlanAct %s\n", (int )force_exec ? (char *)"force to" : (char *)"",
           (int )enable ? (char *)"ON" : (char *)"OFF");
  } else {
  }
  coex_dm->cur_ignore_wlan_act = enable;
  if (! force_exec) {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 32U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], bPreIgnoreWlanAct = %d, bCurIgnoreWlanAct = %d!!\n", (int )coex_dm->pre_ignore_wlan_act,
             (int )coex_dm->cur_ignore_wlan_act);
    } else {
    }
    if ((int )coex_dm->pre_ignore_wlan_act == (int )coex_dm->cur_ignore_wlan_act) {
      return;
    } else {
    }
  } else {
  }
  btc8723b2ant_set_fw_ignore_wlan_act(btcoexist, (int )enable);
  coex_dm->pre_ignore_wlan_act = coex_dm->cur_ignore_wlan_act;
  return;
}
}
static void btc8723b2ant_set_fw_ps_tdma(struct btc_coexist *btcoexist , u8 byte1 ,
                                        u8 byte2 , u8 byte3 , u8 byte4 , u8 byte5 )
{
  u8 h2c_parameter[5U] ;
  long tmp ;
  {
  h2c_parameter[0] = byte1;
  h2c_parameter[1] = byte2;
  h2c_parameter[2] = byte3;
  h2c_parameter[3] = byte4;
  h2c_parameter[4] = byte5;
  coex_dm->ps_tdma_para[0] = byte1;
  coex_dm->ps_tdma_para[1] = byte2;
  coex_dm->ps_tdma_para[2] = byte3;
  coex_dm->ps_tdma_para[3] = byte4;
  coex_dm->ps_tdma_para[4] = byte5;
  tmp = ldv__builtin_expect((btc_dbg_type[1] & 64U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], FW write 0x60(5bytes)=0x%x%08x\n", (int )h2c_parameter[0], ((((int )h2c_parameter[1] << 24) | ((int )h2c_parameter[2] << 16)) | ((int )h2c_parameter[3] << 8)) | (int )h2c_parameter[4]);
  } else {
  }
  (*(btcoexist->btc_fill_h2c))((void *)btcoexist, 96, 5U, (u8 *)(& h2c_parameter));
  return;
}
}
static void btc8723b2ant_sw_mechanism1(struct btc_coexist *btcoexist , bool shrink_rx_lpf ,
                                       bool low_penalty_ra , bool limited_dig , bool bt_lna_constrain )
{
  {
  btc8723b2ant_rf_shrink(btcoexist, 0, (int )shrink_rx_lpf);
  btc8723b2ant_low_penalty_ra(btcoexist, 0, (int )low_penalty_ra);
  return;
}
}
static void btc8723b2ant_sw_mechanism2(struct btc_coexist *btcoexist , bool agc_table_shift ,
                                       bool adc_backoff , bool sw_dac_swing , u32 dac_swing_lvl )
{
  {
  btc8723b2ant_agc_table(btcoexist, 0, (int )agc_table_shift);
  btc8723b2ant_dac_swing(btcoexist, 0, (int )sw_dac_swing, dac_swing_lvl);
  return;
}
}
static void btc8723b2ant_ps_tdma(struct btc_coexist *btcoexist , bool force_exec ,
                                 bool turn_on , u8 type )
{
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = ldv__builtin_expect((btc_dbg_type[1] & 16U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], %s turn %s PS TDMA, type=%d\n", (int )force_exec ? (char *)"force to" : (char *)"",
           (int )turn_on ? (char *)"ON" : (char *)"OFF", (int )type);
  } else {
  }
  coex_dm->cur_ps_tdma_on = turn_on;
  coex_dm->cur_ps_tdma = type;
  if (! force_exec) {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 32U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], bPrePsTdmaOn = %d, bCurPsTdmaOn = %d!!\n", (int )coex_dm->pre_ps_tdma_on,
             (int )coex_dm->cur_ps_tdma_on);
    } else {
    }
    tmp___1 = ldv__builtin_expect((btc_dbg_type[1] & 32U) != 0U, 0L);
    if (tmp___1 != 0L) {
      printk("[BTCoex], prePsTdma = %d, curPsTdma = %d!!\n", (int )coex_dm->pre_ps_tdma,
             (int )coex_dm->cur_ps_tdma);
    } else {
    }
    if ((int )coex_dm->pre_ps_tdma_on == (int )coex_dm->cur_ps_tdma_on && (int )coex_dm->pre_ps_tdma == (int )coex_dm->cur_ps_tdma) {
      return;
    } else {
    }
  } else {
  }
  if ((int )turn_on) {
    switch ((int )type) {
    case 1: ;
    default:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 227, 26, 26, 225, 144);
    goto ldv_51868;
    case 2:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 227, 18, 18, 225, 144);
    goto ldv_51868;
    case 3:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 227, 28, 3, 241, 144);
    goto ldv_51868;
    case 4:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 227, 16, 3, 241, 144);
    goto ldv_51868;
    case 5:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 227, 26, 26, 96, 144);
    goto ldv_51868;
    case 6:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 227, 18, 18, 96, 144);
    goto ldv_51868;
    case 7:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 227, 28, 3, 112, 144);
    goto ldv_51868;
    case 8:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 163, 16, 3, 112, 144);
    goto ldv_51868;
    case 9:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 227, 26, 26, 225, 144);
    goto ldv_51868;
    case 10:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 227, 18, 18, 225, 144);
    goto ldv_51868;
    case 11:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 227, 10, 10, 225, 144);
    goto ldv_51868;
    case 12:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 227, 5, 5, 225, 144);
    goto ldv_51868;
    case 13:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 227, 26, 26, 96, 144);
    goto ldv_51868;
    case 14:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 227, 18, 18, 96, 144);
    goto ldv_51868;
    case 15:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 227, 10, 10, 96, 144);
    goto ldv_51868;
    case 16:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 227, 5, 5, 96, 144);
    goto ldv_51868;
    case 17:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 163, 47, 47, 96, 144);
    goto ldv_51868;
    case 18:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 227, 5, 5, 225, 144);
    goto ldv_51868;
    case 19:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 227, 37, 37, 225, 144);
    goto ldv_51868;
    case 20:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 227, 37, 37, 96, 144);
    goto ldv_51868;
    case 21:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 227, 21, 3, 112, 144);
    goto ldv_51868;
    case 71:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 227, 26, 26, 225, 144);
    goto ldv_51868;
    }
    ldv_51868: ;
  } else {
    switch ((int )type) {
    case 0:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 0, 0, 0, 64, 0);
    goto ldv_51891;
    case 1:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 0, 0, 0, 72, 0);
    goto ldv_51891;
    default:
    btc8723b2ant_set_fw_ps_tdma(btcoexist, 0, 0, 0, 64, 0);
    goto ldv_51891;
    }
    ldv_51891: ;
  }
  coex_dm->pre_ps_tdma_on = coex_dm->cur_ps_tdma_on;
  coex_dm->pre_ps_tdma = coex_dm->cur_ps_tdma;
  return;
}
}
static void btc8723b2ant_coex_alloff(struct btc_coexist *btcoexist )
{
  {
  btc8723b2ant_ps_tdma(btcoexist, 0, 0, 1);
  btc8723b2ant_fw_dac_swing_lvl(btcoexist, 0, 6);
  btc8723b2ant_dec_bt_pwr(btcoexist, 0, 0);
  btc8723b2ant_sw_mechanism1(btcoexist, 0, 0, 0, 0);
  btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
  (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 1U, 1048575U, 0U);
  btc8723b_coex_tbl_type(btcoexist, 0, 0);
  return;
}
}
static void btc8723b2ant_init_coex_dm(struct btc_coexist *btcoexist )
{
  {
  btc8723b2ant_ps_tdma(btcoexist, 1, 0, 1);
  btc8723b2ant_fw_dac_swing_lvl(btcoexist, 1, 6);
  btc8723b2ant_dec_bt_pwr(btcoexist, 1, 0);
  btc8723b2ant_sw_mechanism1(btcoexist, 0, 0, 0, 0);
  btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
  return;
}
}
static void btc8723b2ant_action_bt_inquiry(struct btc_coexist *btcoexist )
{
  bool wifi_connected ;
  bool low_pwr_disable ;
  {
  wifi_connected = 0;
  low_pwr_disable = 1;
  (*(btcoexist->btc_set))((void *)btcoexist, 20, (void *)(& low_pwr_disable));
  (*(btcoexist->btc_get))((void *)btcoexist, 2, (void *)(& wifi_connected));
  if ((int )wifi_connected) {
    btc8723b_coex_tbl_type(btcoexist, 0, 7);
    btc8723b2ant_ps_tdma(btcoexist, 0, 1, 3);
  } else {
    btc8723b_coex_tbl_type(btcoexist, 0, 0);
    btc8723b2ant_ps_tdma(btcoexist, 0, 0, 1);
  }
  btc8723b2ant_fw_dac_swing_lvl(btcoexist, 1, 6);
  btc8723b2ant_dec_bt_pwr(btcoexist, 0, 0);
  btc8723b2ant_sw_mechanism1(btcoexist, 0, 0, 0, 0);
  btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
  coex_dm->need_recover_0x948 = 1;
  coex_dm->backup_0x948 = (*(btcoexist->btc_read_2byte))((void *)btcoexist, 2376U);
  (*(btcoexist->btc_write_2byte))((void *)btcoexist, 2376U, 640);
  return;
}
}
static bool btc8723b2ant_is_common_action(struct btc_coexist *btcoexist )
{
  bool common ;
  bool wifi_connected ;
  bool wifi_busy ;
  bool bt_hs_on ;
  bool low_pwr_disable ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  {
  common = 0;
  wifi_connected = 0;
  wifi_busy = 0;
  bt_hs_on = 0;
  low_pwr_disable = 0;
  (*(btcoexist->btc_get))((void *)btcoexist, 0, (void *)(& bt_hs_on));
  (*(btcoexist->btc_get))((void *)btcoexist, 2, (void *)(& wifi_connected));
  (*(btcoexist->btc_get))((void *)btcoexist, 3, (void *)(& wifi_busy));
  if (! wifi_connected) {
    low_pwr_disable = 0;
    (*(btcoexist->btc_set))((void *)btcoexist, 20, (void *)(& low_pwr_disable));
    tmp = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp != 0L) {
      printk("[BTCoex], Wifi non-connected idle!!\n");
    } else {
    }
    (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 1U, 1048575U, 0U);
    btc8723b_coex_tbl_type(btcoexist, 0, 0);
    btc8723b2ant_ps_tdma(btcoexist, 0, 0, 1);
    btc8723b2ant_fw_dac_swing_lvl(btcoexist, 0, 6);
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 0);
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 0, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
    common = 1;
  } else
  if ((unsigned int )coex_dm->bt_status == 0U) {
    low_pwr_disable = 0;
    (*(btcoexist->btc_set))((void *)btcoexist, 20, (void *)(& low_pwr_disable));
    tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], Wifi connected + BT non connected-idle!!\n");
    } else {
    }
    (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 1U, 1048575U, 0U);
    btc8723b_coex_tbl_type(btcoexist, 0, 0);
    btc8723b2ant_ps_tdma(btcoexist, 0, 0, 1);
    btc8723b2ant_fw_dac_swing_lvl(btcoexist, 0, 11);
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 0);
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 0, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
    common = 1;
  } else
  if ((unsigned int )coex_dm->bt_status == 1U) {
    low_pwr_disable = 1;
    (*(btcoexist->btc_set))((void *)btcoexist, 20, (void *)(& low_pwr_disable));
    if ((int )bt_hs_on) {
      return (0);
    } else {
    }
    tmp___1 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___1 != 0L) {
      printk("[BTCoex], Wifi connected + BT connected-idle!!\n");
    } else {
    }
    (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 1U, 1048575U, 0U);
    btc8723b_coex_tbl_type(btcoexist, 0, 0);
    btc8723b2ant_ps_tdma(btcoexist, 0, 0, 1);
    btc8723b2ant_fw_dac_swing_lvl(btcoexist, 0, 11);
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 0);
    btc8723b2ant_sw_mechanism1(btcoexist, 1, 0, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
    common = 1;
  } else {
    low_pwr_disable = 1;
    (*(btcoexist->btc_set))((void *)btcoexist, 20, (void *)(& low_pwr_disable));
    if ((int )wifi_busy) {
      tmp___2 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
      if (tmp___2 != 0L) {
        printk("[BTCoex], Wifi Connected-Busy + BT Busy!!\n");
      } else {
      }
      common = 0;
    } else {
      if ((int )bt_hs_on) {
        return (0);
      } else {
      }
      tmp___3 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
      if (tmp___3 != 0L) {
        printk("[BTCoex], Wifi Connected-Idle + BT Busy!!\n");
      } else {
      }
      (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 1U, 1048575U, 0U);
      btc8723b_coex_tbl_type(btcoexist, 0, 7);
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 21);
      btc8723b2ant_fw_dac_swing_lvl(btcoexist, 0, 11);
      tmp___4 = btc8723b_need_dec_pwr(btcoexist);
      if ((int )tmp___4) {
        btc8723b2ant_dec_bt_pwr(btcoexist, 0, 1);
      } else {
        btc8723b2ant_dec_bt_pwr(btcoexist, 0, 0);
      }
      btc8723b2ant_sw_mechanism1(btcoexist, 0, 0, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
      common = 1;
    }
  }
  return (common);
}
}
static void set_tdma_int1(struct btc_coexist *btcoexist , bool tx_pause , s32 result )
{
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  if ((int )tx_pause) {
    tmp = ldv__builtin_expect((btc_dbg_type[1] & 32U) != 0U, 0L);
    if (tmp != 0L) {
      printk("[BTCoex], TxPause = 1\n");
    } else {
    }
    if ((unsigned int )coex_dm->cur_ps_tdma == 71U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 5);
      coex_dm->tdma_adj_type = 5U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 1U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 5);
      coex_dm->tdma_adj_type = 5U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 2U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 6);
      coex_dm->tdma_adj_type = 6U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 3U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 7);
      coex_dm->tdma_adj_type = 7U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 4U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 8);
      coex_dm->tdma_adj_type = 8U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 9U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 13);
      coex_dm->tdma_adj_type = 13U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 10U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 14);
      coex_dm->tdma_adj_type = 14U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 11U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 15);
      coex_dm->tdma_adj_type = 15U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 12U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 16);
      coex_dm->tdma_adj_type = 16U;
    } else {
    }
    if (result == -1) {
      if ((unsigned int )coex_dm->cur_ps_tdma == 5U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 6);
        coex_dm->tdma_adj_type = 6U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 6U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 7);
        coex_dm->tdma_adj_type = 7U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 7U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 8);
        coex_dm->tdma_adj_type = 8U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 13U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 14);
        coex_dm->tdma_adj_type = 14U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 14U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 15);
        coex_dm->tdma_adj_type = 15U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 15U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 16);
        coex_dm->tdma_adj_type = 16U;
      } else {
      }
    } else
    if (result == 1) {
      if ((unsigned int )coex_dm->cur_ps_tdma == 8U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 7);
        coex_dm->tdma_adj_type = 7U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 7U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 6);
        coex_dm->tdma_adj_type = 6U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 6U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 5);
        coex_dm->tdma_adj_type = 5U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 16U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 15);
        coex_dm->tdma_adj_type = 15U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 15U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 14);
        coex_dm->tdma_adj_type = 14U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 14U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 13);
        coex_dm->tdma_adj_type = 13U;
      } else {
      }
    } else {
    }
  } else {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 32U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], TxPause = 0\n");
    } else {
    }
    if ((unsigned int )coex_dm->cur_ps_tdma == 5U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 71);
      coex_dm->tdma_adj_type = 71U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 6U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 2);
      coex_dm->tdma_adj_type = 2U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 7U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 3);
      coex_dm->tdma_adj_type = 3U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 8U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 4);
      coex_dm->tdma_adj_type = 4U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 13U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 9);
      coex_dm->tdma_adj_type = 9U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 14U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 10);
      coex_dm->tdma_adj_type = 10U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 15U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 11);
      coex_dm->tdma_adj_type = 11U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 16U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 12);
      coex_dm->tdma_adj_type = 12U;
    } else {
    }
    if (result == -1) {
      if ((unsigned int )coex_dm->cur_ps_tdma == 71U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 1);
        coex_dm->tdma_adj_type = 1U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 1U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 2);
        coex_dm->tdma_adj_type = 2U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 2U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 3);
        coex_dm->tdma_adj_type = 3U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 3U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 4);
        coex_dm->tdma_adj_type = 4U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 9U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 10);
        coex_dm->tdma_adj_type = 10U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 10U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 11);
        coex_dm->tdma_adj_type = 11U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 11U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 12);
        coex_dm->tdma_adj_type = 12U;
      } else {
      }
    } else
    if (result == 1) {
      tmp___1 = (int )coex_dm->cur_ps_tdma;
      switch (tmp___1) {
      case 4: ;
      case 3: ;
      case 2: ;
      case 12: ;
      case 11: ;
      case 10:
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, (int )((unsigned int )((u8 )tmp___1) + 255U));
      coex_dm->tdma_adj_type = (unsigned int )((u8 )tmp___1) + 255U;
      goto ldv_51925;
      case 1:
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 71);
      coex_dm->tdma_adj_type = 71U;
      goto ldv_51925;
      }
      ldv_51925: ;
    } else {
    }
  }
  return;
}
}
static void set_tdma_int2(struct btc_coexist *btcoexist , bool tx_pause , s32 result )
{
  long tmp ;
  long tmp___0 ;
  {
  if ((int )tx_pause) {
    tmp = ldv__builtin_expect((btc_dbg_type[1] & 32U) != 0U, 0L);
    if (tmp != 0L) {
      printk("[BTCoex], TxPause = 1\n");
    } else {
    }
    if ((unsigned int )coex_dm->cur_ps_tdma == 1U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 6);
      coex_dm->tdma_adj_type = 6U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 2U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 6);
      coex_dm->tdma_adj_type = 6U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 3U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 7);
      coex_dm->tdma_adj_type = 7U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 4U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 8);
      coex_dm->tdma_adj_type = 8U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 9U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 14);
      coex_dm->tdma_adj_type = 14U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 10U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 14);
      coex_dm->tdma_adj_type = 14U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 11U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 15);
      coex_dm->tdma_adj_type = 15U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 12U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 16);
      coex_dm->tdma_adj_type = 16U;
    } else {
    }
    if (result == -1) {
      if ((unsigned int )coex_dm->cur_ps_tdma == 5U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 6);
        coex_dm->tdma_adj_type = 6U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 6U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 7);
        coex_dm->tdma_adj_type = 7U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 7U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 8);
        coex_dm->tdma_adj_type = 8U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 13U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 14);
        coex_dm->tdma_adj_type = 14U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 14U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 15);
        coex_dm->tdma_adj_type = 15U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 15U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 16);
        coex_dm->tdma_adj_type = 16U;
      } else {
      }
    } else
    if (result == 1) {
      if ((unsigned int )coex_dm->cur_ps_tdma == 8U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 7);
        coex_dm->tdma_adj_type = 7U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 7U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 6);
        coex_dm->tdma_adj_type = 6U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 6U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 6);
        coex_dm->tdma_adj_type = 6U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 16U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 15);
        coex_dm->tdma_adj_type = 15U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 15U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 14);
        coex_dm->tdma_adj_type = 14U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 14U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 14);
        coex_dm->tdma_adj_type = 14U;
      } else {
      }
    } else {
    }
  } else {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 32U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], TxPause = 0\n");
    } else {
    }
    if ((unsigned int )coex_dm->cur_ps_tdma == 5U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 2);
      coex_dm->tdma_adj_type = 2U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 6U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 2);
      coex_dm->tdma_adj_type = 2U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 7U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 3);
      coex_dm->tdma_adj_type = 3U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 8U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 4);
      coex_dm->tdma_adj_type = 4U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 13U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 10);
      coex_dm->tdma_adj_type = 10U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 14U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 10);
      coex_dm->tdma_adj_type = 10U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 15U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 11);
      coex_dm->tdma_adj_type = 11U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 16U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 12);
      coex_dm->tdma_adj_type = 12U;
    } else {
    }
    if (result == -1) {
      if ((unsigned int )coex_dm->cur_ps_tdma == 1U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 2);
        coex_dm->tdma_adj_type = 2U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 2U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 3);
        coex_dm->tdma_adj_type = 3U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 3U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 4);
        coex_dm->tdma_adj_type = 4U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 9U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 10);
        coex_dm->tdma_adj_type = 10U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 10U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 11);
        coex_dm->tdma_adj_type = 11U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 11U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 12);
        coex_dm->tdma_adj_type = 12U;
      } else {
      }
    } else
    if (result == 1) {
      if ((unsigned int )coex_dm->cur_ps_tdma == 4U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 3);
        coex_dm->tdma_adj_type = 3U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 3U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 2);
        coex_dm->tdma_adj_type = 2U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 2U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 2);
        coex_dm->tdma_adj_type = 2U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 12U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 11);
        coex_dm->tdma_adj_type = 11U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 11U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 10);
        coex_dm->tdma_adj_type = 10U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 10U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 10);
        coex_dm->tdma_adj_type = 10U;
      } else {
      }
    } else {
    }
  }
  return;
}
}
static void set_tdma_int3(struct btc_coexist *btcoexist , bool tx_pause , s32 result )
{
  long tmp ;
  long tmp___0 ;
  {
  if ((int )tx_pause) {
    tmp = ldv__builtin_expect((btc_dbg_type[1] & 32U) != 0U, 0L);
    if (tmp != 0L) {
      printk("[BTCoex], TxPause = 1\n");
    } else {
    }
    if ((unsigned int )coex_dm->cur_ps_tdma == 1U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 7);
      coex_dm->tdma_adj_type = 7U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 2U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 7);
      coex_dm->tdma_adj_type = 7U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 3U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 7);
      coex_dm->tdma_adj_type = 7U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 4U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 8);
      coex_dm->tdma_adj_type = 8U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 9U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 15);
      coex_dm->tdma_adj_type = 15U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 10U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 15);
      coex_dm->tdma_adj_type = 15U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 11U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 15);
      coex_dm->tdma_adj_type = 15U;
    } else
    if ((unsigned int )coex_dm->cur_ps_tdma == 12U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 16);
      coex_dm->tdma_adj_type = 16U;
    } else {
    }
    if (result == -1) {
      if ((unsigned int )coex_dm->cur_ps_tdma == 5U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 7);
        coex_dm->tdma_adj_type = 7U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 6U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 7);
        coex_dm->tdma_adj_type = 7U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 7U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 8);
        coex_dm->tdma_adj_type = 8U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 13U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 15);
        coex_dm->tdma_adj_type = 15U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 14U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 15);
        coex_dm->tdma_adj_type = 15U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 15U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 16);
        coex_dm->tdma_adj_type = 16U;
      } else {
      }
    } else
    if (result == 1) {
      if ((unsigned int )coex_dm->cur_ps_tdma == 8U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 7);
        coex_dm->tdma_adj_type = 7U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 7U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 7);
        coex_dm->tdma_adj_type = 7U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 6U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 7);
        coex_dm->tdma_adj_type = 7U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 16U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 15);
        coex_dm->tdma_adj_type = 15U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 15U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 15);
        coex_dm->tdma_adj_type = 15U;
      } else
      if ((unsigned int )coex_dm->cur_ps_tdma == 14U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 15);
        coex_dm->tdma_adj_type = 15U;
      } else {
      }
    } else {
    }
  } else {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 32U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], TxPause = 0\n");
    } else {
    }
    switch ((int )coex_dm->cur_ps_tdma) {
    case 5:
    btc8723b2ant_ps_tdma(btcoexist, 0, 1, 3);
    coex_dm->tdma_adj_type = 3U;
    goto ldv_51938;
    case 6:
    btc8723b2ant_ps_tdma(btcoexist, 0, 1, 3);
    coex_dm->tdma_adj_type = 3U;
    goto ldv_51938;
    case 7:
    btc8723b2ant_ps_tdma(btcoexist, 0, 1, 3);
    coex_dm->tdma_adj_type = 3U;
    goto ldv_51938;
    case 8:
    btc8723b2ant_ps_tdma(btcoexist, 0, 1, 4);
    coex_dm->tdma_adj_type = 4U;
    goto ldv_51938;
    case 13:
    btc8723b2ant_ps_tdma(btcoexist, 0, 1, 11);
    coex_dm->tdma_adj_type = 11U;
    goto ldv_51938;
    case 14:
    btc8723b2ant_ps_tdma(btcoexist, 0, 1, 11);
    coex_dm->tdma_adj_type = 11U;
    goto ldv_51938;
    case 15:
    btc8723b2ant_ps_tdma(btcoexist, 0, 1, 11);
    coex_dm->tdma_adj_type = 11U;
    goto ldv_51938;
    case 16:
    btc8723b2ant_ps_tdma(btcoexist, 0, 1, 12);
    coex_dm->tdma_adj_type = 12U;
    goto ldv_51938;
    }
    ldv_51938: ;
    if (result == -1) {
      switch ((int )coex_dm->cur_ps_tdma) {
      case 1:
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 3);
      coex_dm->tdma_adj_type = 3U;
      goto ldv_51947;
      case 2:
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 3);
      coex_dm->tdma_adj_type = 3U;
      goto ldv_51947;
      case 3:
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 4);
      coex_dm->tdma_adj_type = 4U;
      goto ldv_51947;
      case 9:
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 11);
      coex_dm->tdma_adj_type = 11U;
      goto ldv_51947;
      case 10:
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 11);
      coex_dm->tdma_adj_type = 11U;
      goto ldv_51947;
      case 11:
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 12);
      coex_dm->tdma_adj_type = 12U;
      goto ldv_51947;
      }
      ldv_51947: ;
    } else
    if (result == 1) {
      switch ((int )coex_dm->cur_ps_tdma) {
      case 4:
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 3);
      coex_dm->tdma_adj_type = 3U;
      goto ldv_51954;
      case 3:
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 3);
      coex_dm->tdma_adj_type = 3U;
      goto ldv_51954;
      case 2:
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 3);
      coex_dm->tdma_adj_type = 3U;
      goto ldv_51954;
      case 12:
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 11);
      coex_dm->tdma_adj_type = 11U;
      goto ldv_51954;
      case 11:
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 11);
      coex_dm->tdma_adj_type = 11U;
      goto ldv_51954;
      case 10:
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 11);
      coex_dm->tdma_adj_type = 11U;
      }
      ldv_51954: ;
    } else {
    }
  }
  return;
}
}
static void btc8723b2ant_tdma_duration_adjust(struct btc_coexist *btcoexist , bool sco_hid ,
                                              bool tx_pause , u8 max_interval )
{
  s32 up___0 ;
  s32 dn ;
  s32 m ;
  s32 n ;
  s32 wait_count ;
  s32 result ;
  u8 retry_count ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  bool scan ;
  bool link ;
  bool roam ;
  long tmp___7 ;
  long tmp___8 ;
  {
  retry_count = 0U;
  tmp = ldv__builtin_expect((btc_dbg_type[1] & 16U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], TdmaDurationAdjust()\n");
  } else {
  }
  if (! coex_dm->auto_tdma_adjust) {
    coex_dm->auto_tdma_adjust = 1;
    tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 32U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], first run TdmaDurationAdjust()!!\n");
    } else {
    }
    if ((int )sco_hid) {
      if ((int )tx_pause) {
        if ((unsigned int )max_interval == 1U) {
          btc8723b2ant_ps_tdma(btcoexist, 0, 1, 13);
          coex_dm->tdma_adj_type = 13U;
        } else
        if ((unsigned int )max_interval == 2U) {
          btc8723b2ant_ps_tdma(btcoexist, 0, 1, 14);
          coex_dm->tdma_adj_type = 14U;
        } else
        if ((unsigned int )max_interval == 3U) {
          btc8723b2ant_ps_tdma(btcoexist, 0, 1, 15);
          coex_dm->tdma_adj_type = 15U;
        } else {
          btc8723b2ant_ps_tdma(btcoexist, 0, 1, 15);
          coex_dm->tdma_adj_type = 15U;
        }
      } else
      if ((unsigned int )max_interval == 1U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 9);
        coex_dm->tdma_adj_type = 9U;
      } else
      if ((unsigned int )max_interval == 2U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 10);
        coex_dm->tdma_adj_type = 10U;
      } else
      if ((unsigned int )max_interval == 3U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 11);
        coex_dm->tdma_adj_type = 11U;
      } else {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 11);
        coex_dm->tdma_adj_type = 11U;
      }
    } else
    if ((int )tx_pause) {
      if ((unsigned int )max_interval == 1U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 5);
        coex_dm->tdma_adj_type = 5U;
      } else
      if ((unsigned int )max_interval == 2U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 6);
        coex_dm->tdma_adj_type = 6U;
      } else
      if ((unsigned int )max_interval == 3U) {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 7);
        coex_dm->tdma_adj_type = 7U;
      } else {
        btc8723b2ant_ps_tdma(btcoexist, 0, 1, 7);
        coex_dm->tdma_adj_type = 7U;
      }
    } else
    if ((unsigned int )max_interval == 1U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 1);
      coex_dm->tdma_adj_type = 1U;
    } else
    if ((unsigned int )max_interval == 2U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 2);
      coex_dm->tdma_adj_type = 2U;
    } else
    if ((unsigned int )max_interval == 3U) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 3);
      coex_dm->tdma_adj_type = 3U;
    } else {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, 3);
      coex_dm->tdma_adj_type = 3U;
    }
    up___0 = 0;
    dn = 0;
    m = 1;
    n = 3;
    result = 0;
    wait_count = 0;
  } else {
    retry_count = coex_sta->bt_retry_cnt;
    tmp___1 = ldv__builtin_expect((btc_dbg_type[1] & 32U) != 0U, 0L);
    if (tmp___1 != 0L) {
      printk("[BTCoex], retry_count = %d\n", (int )retry_count);
    } else {
    }
    tmp___2 = ldv__builtin_expect((btc_dbg_type[1] & 32U) != 0U, 0L);
    if (tmp___2 != 0L) {
      printk("[BTCoex], up=%d, dn=%d, m=%d, n=%d, wait_count=%d\n", up___0, dn, m,
             n, wait_count);
    } else {
    }
    result = 0;
    wait_count = wait_count + 1;
    if ((unsigned int )retry_count == 0U) {
      up___0 = up___0 + 1;
      dn = dn - 1;
      if (dn <= 0) {
        dn = 0;
      } else {
      }
      if (up___0 >= n) {
        wait_count = 0;
        n = 3;
        up___0 = 0;
        dn = 0;
        result = 1;
        tmp___3 = ldv__builtin_expect((btc_dbg_type[1] & 32U) != 0U, 0L);
        if (tmp___3 != 0L) {
          printk("[BTCoex], Increase wifi duration!!\n");
        } else {
        }
      } else {
      }
    } else
    if ((unsigned int )retry_count <= 3U) {
      up___0 = up___0 - 1;
      dn = dn + 1;
      if (up___0 <= 0) {
        up___0 = 0;
      } else {
      }
      if (dn == 2) {
        if (wait_count <= 2) {
          m = m + 1;
        } else {
          m = 1;
        }
        if (m > 19) {
          m = 20;
        } else {
        }
        n = m * 3;
        up___0 = 0;
        dn = 0;
        wait_count = 0;
        result = -1;
        tmp___4 = ldv__builtin_expect((btc_dbg_type[1] & 32U) != 0U, 0L);
        if (tmp___4 != 0L) {
          printk("[BTCoex], Decrease wifi duration for retry_counter<3!!\n");
        } else {
        }
      } else {
      }
    } else {
      if (wait_count == 1) {
        m = m + 1;
      } else {
        m = 1;
      }
      if (m > 19) {
        m = 20;
      } else {
      }
      n = m * 3;
      up___0 = 0;
      dn = 0;
      wait_count = 0;
      result = -1;
      tmp___5 = ldv__builtin_expect((btc_dbg_type[1] & 32U) != 0U, 0L);
      if (tmp___5 != 0L) {
        printk("[BTCoex], Decrease wifi duration for retry_counter>3!!\n");
      } else {
      }
    }
    tmp___6 = ldv__builtin_expect((btc_dbg_type[1] & 32U) != 0U, 0L);
    if (tmp___6 != 0L) {
      printk("[BTCoex], max Interval = %d\n", (int )max_interval);
    } else {
    }
    if ((unsigned int )max_interval == 1U) {
      set_tdma_int1(btcoexist, (int )tx_pause, result);
    } else
    if ((unsigned int )max_interval == 2U) {
      set_tdma_int2(btcoexist, (int )tx_pause, result);
    } else
    if ((unsigned int )max_interval == 3U) {
      set_tdma_int3(btcoexist, (int )tx_pause, result);
    } else {
    }
  }
  if ((int )coex_dm->cur_ps_tdma != (int )coex_dm->tdma_adj_type) {
    scan = 0;
    link = 0;
    roam = 0;
    tmp___7 = ldv__builtin_expect((btc_dbg_type[1] & 32U) != 0U, 0L);
    if (tmp___7 != 0L) {
      printk("[BTCoex], PsTdma type dismatch!!!, curPsTdma=%d, recordPsTdma=%d\n",
             (int )coex_dm->cur_ps_tdma, (int )coex_dm->tdma_adj_type);
    } else {
    }
    (*(btcoexist->btc_get))((void *)btcoexist, 4, (void *)(& scan));
    (*(btcoexist->btc_get))((void *)btcoexist, 5, (void *)(& link));
    (*(btcoexist->btc_get))((void *)btcoexist, 10, (void *)(& roam));
    if ((! scan && ! link) && ! roam) {
      btc8723b2ant_ps_tdma(btcoexist, 0, 1, (int )coex_dm->tdma_adj_type);
    } else {
      tmp___8 = ldv__builtin_expect((btc_dbg_type[1] & 32U) != 0U, 0L);
      if (tmp___8 != 0L) {
        printk("[BTCoex], roaming/link/scan is under progress, will adjust next time!!!\n");
      } else {
      }
    }
  } else {
  }
  return;
}
}
static void btc8723b2ant_action_sco(struct btc_coexist *btcoexist )
{
  u8 wifi_rssi_state ;
  u32 wifi_bw ;
  bool tmp ;
  {
  wifi_rssi_state = btc8723b2ant_wifi_rssi_state(btcoexist, 0, 2, 15, 0);
  (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 1U, 1048575U, 0U);
  btc8723b2ant_fw_dac_swing_lvl(btcoexist, 0, 4);
  tmp = btc8723b_need_dec_pwr(btcoexist);
  if ((int )tmp) {
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 1);
  } else {
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 0);
  }
  (*(btcoexist->btc_get))((void *)btcoexist, 19, (void *)(& wifi_bw));
  if (wifi_bw == 0U) {
    btc8723b_coex_tbl_type(btcoexist, 0, 2);
  } else {
    btc8723b_coex_tbl_type(btcoexist, 0, 8);
  }
  btc8723b2ant_ps_tdma(btcoexist, 0, 0, 0);
  if (wifi_bw == 2U) {
    if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
      btc8723b2ant_sw_mechanism1(btcoexist, 1, 1, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 1, 0, 1, 4U);
    } else {
      btc8723b2ant_sw_mechanism1(btcoexist, 1, 1, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 1, 4U);
    }
  } else
  if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 1, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 1, 0, 1, 4U);
  } else {
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 1, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 1, 4U);
  }
  return;
}
}
static void btc8723b2ant_action_hid(struct btc_coexist *btcoexist )
{
  u8 wifi_rssi_state ;
  u8 bt_rssi_state ;
  u32 wifi_bw ;
  bool tmp ;
  {
  wifi_rssi_state = btc8723b2ant_wifi_rssi_state(btcoexist, 0, 2, 15, 0);
  bt_rssi_state = btc8723b2ant_bt_rssi_state(2, 35, 0);
  (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 1U, 1048575U, 0U);
  btc8723b2ant_fw_dac_swing_lvl(btcoexist, 0, 6);
  tmp = btc8723b_need_dec_pwr(btcoexist);
  if ((int )tmp) {
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 1);
  } else {
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 0);
  }
  (*(btcoexist->btc_get))((void *)btcoexist, 19, (void *)(& wifi_bw));
  if (wifi_bw == 0U) {
    btc8723b_coex_tbl_type(btcoexist, 0, 7);
  } else {
    btc8723b_coex_tbl_type(btcoexist, 0, 9);
  }
  if ((unsigned int )bt_rssi_state == 0U || (unsigned int )bt_rssi_state == 3U) {
    btc8723b2ant_ps_tdma(btcoexist, 0, 1, 9);
  } else {
    btc8723b2ant_ps_tdma(btcoexist, 0, 1, 13);
  }
  if (wifi_bw == 2U) {
    if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
      btc8723b2ant_sw_mechanism1(btcoexist, 1, 1, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 1, 0, 0, 24U);
    } else {
      btc8723b2ant_sw_mechanism1(btcoexist, 1, 1, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
    }
  } else
  if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 1, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 1, 0, 0, 24U);
  } else {
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 1, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
  }
  return;
}
}
static void btc8723b2ant_action_a2dp(struct btc_coexist *btcoexist )
{
  u8 wifi_rssi_state ;
  u8 bt_rssi_state ;
  u32 wifi_bw ;
  bool tmp ;
  {
  wifi_rssi_state = btc8723b2ant_wifi_rssi_state(btcoexist, 0, 2, 15, 0);
  bt_rssi_state = btc8723b2ant_bt_rssi_state(2, 35, 0);
  (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 1U, 1048575U, 0U);
  btc8723b2ant_fw_dac_swing_lvl(btcoexist, 0, 6);
  tmp = btc8723b_need_dec_pwr(btcoexist);
  if ((int )tmp) {
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 1);
  } else {
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 0);
  }
  btc8723b_coex_tbl_type(btcoexist, 0, 7);
  if ((unsigned int )bt_rssi_state == 0U || (unsigned int )bt_rssi_state == 3U) {
    btc8723b2ant_tdma_duration_adjust(btcoexist, 0, 0, 1);
  } else {
    btc8723b2ant_tdma_duration_adjust(btcoexist, 0, 1, 1);
  }
  (*(btcoexist->btc_get))((void *)btcoexist, 19, (void *)(& wifi_bw));
  if (wifi_bw == 2U) {
    if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
      btc8723b2ant_sw_mechanism1(btcoexist, 1, 0, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 1, 0, 0, 24U);
    } else {
      btc8723b2ant_sw_mechanism1(btcoexist, 1, 0, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
    }
  } else
  if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 0, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 1, 0, 0, 24U);
  } else {
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 0, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
  }
  return;
}
}
static void btc8723b2ant_action_a2dp_pan_hs(struct btc_coexist *btcoexist )
{
  u8 wifi_rssi_state ;
  u32 wifi_bw ;
  bool tmp ;
  {
  wifi_rssi_state = btc8723b2ant_wifi_rssi_state(btcoexist, 0, 2, 15, 0);
  (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 1U, 1048575U, 0U);
  btc8723b2ant_fw_dac_swing_lvl(btcoexist, 0, 6);
  tmp = btc8723b_need_dec_pwr(btcoexist);
  if ((int )tmp) {
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 1);
  } else {
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 0);
  }
  btc8723b_coex_tbl_type(btcoexist, 0, 7);
  btc8723b2ant_tdma_duration_adjust(btcoexist, 0, 1, 2);
  (*(btcoexist->btc_get))((void *)btcoexist, 19, (void *)(& wifi_bw));
  if (wifi_bw == 2U) {
    if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
      btc8723b2ant_sw_mechanism1(btcoexist, 1, 0, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 1, 0, 0, 24U);
    } else {
      btc8723b2ant_sw_mechanism1(btcoexist, 1, 0, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
    }
  } else
  if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 0, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 1, 0, 0, 24U);
  } else {
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 0, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
  }
  return;
}
}
static void btc8723b2ant_action_pan_edr(struct btc_coexist *btcoexist )
{
  u8 wifi_rssi_state ;
  u8 bt_rssi_state ;
  u32 wifi_bw ;
  bool tmp ;
  {
  wifi_rssi_state = btc8723b2ant_wifi_rssi_state(btcoexist, 0, 2, 15, 0);
  bt_rssi_state = btc8723b2ant_bt_rssi_state(2, 35, 0);
  (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 1U, 1048575U, 0U);
  btc8723b2ant_fw_dac_swing_lvl(btcoexist, 0, 6);
  tmp = btc8723b_need_dec_pwr(btcoexist);
  if ((int )tmp) {
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 1);
  } else {
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 0);
  }
  btc8723b_coex_tbl_type(btcoexist, 0, 10);
  if ((unsigned int )bt_rssi_state == 0U || (unsigned int )bt_rssi_state == 3U) {
    btc8723b2ant_ps_tdma(btcoexist, 0, 1, 1);
  } else {
    btc8723b2ant_ps_tdma(btcoexist, 0, 1, 5);
  }
  (*(btcoexist->btc_get))((void *)btcoexist, 19, (void *)(& wifi_bw));
  if (wifi_bw == 2U) {
    if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
      btc8723b2ant_sw_mechanism1(btcoexist, 1, 0, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 1, 0, 0, 24U);
    } else {
      btc8723b2ant_sw_mechanism1(btcoexist, 1, 0, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
    }
  } else
  if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 0, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 1, 0, 0, 24U);
  } else {
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 0, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
  }
  return;
}
}
static void btc8723b2ant_action_pan_hs(struct btc_coexist *btcoexist )
{
  u8 wifi_rssi_state ;
  u32 wifi_bw ;
  {
  wifi_rssi_state = btc8723b2ant_wifi_rssi_state(btcoexist, 0, 2, 15, 0);
  (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 1U, 1048575U, 0U);
  btc8723b2ant_fw_dac_swing_lvl(btcoexist, 0, 6);
  if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 1);
  } else {
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 0);
  }
  btc8723b_coex_tbl_type(btcoexist, 0, 7);
  btc8723b2ant_ps_tdma(btcoexist, 0, 0, 1);
  (*(btcoexist->btc_get))((void *)btcoexist, 19, (void *)(& wifi_bw));
  if (wifi_bw == 2U) {
    if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
      btc8723b2ant_sw_mechanism1(btcoexist, 1, 0, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 1, 0, 0, 24U);
    } else {
      btc8723b2ant_sw_mechanism1(btcoexist, 1, 0, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
    }
  } else
  if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 0, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 1, 0, 0, 24U);
  } else {
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 0, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
  }
  return;
}
}
static void btc8723b2ant_action_pan_edr_a2dp(struct btc_coexist *btcoexist )
{
  u8 wifi_rssi_state ;
  u8 bt_rssi_state ;
  u32 wifi_bw ;
  bool tmp ;
  {
  wifi_rssi_state = btc8723b2ant_wifi_rssi_state(btcoexist, 0, 2, 15, 0);
  bt_rssi_state = btc8723b2ant_bt_rssi_state(2, 35, 0);
  (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 1U, 1048575U, 0U);
  btc8723b2ant_fw_dac_swing_lvl(btcoexist, 0, 6);
  tmp = btc8723b_need_dec_pwr(btcoexist);
  if ((int )tmp) {
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 1);
  } else {
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 0);
  }
  (*(btcoexist->btc_get))((void *)btcoexist, 19, (void *)(& wifi_bw));
  if ((unsigned int )bt_rssi_state == 0U || (unsigned int )bt_rssi_state == 3U) {
    btc8723b_coex_tbl_type(btcoexist, 0, 12);
    if (wifi_bw == 2U) {
      btc8723b2ant_tdma_duration_adjust(btcoexist, 0, 1, 3);
    } else {
      btc8723b2ant_tdma_duration_adjust(btcoexist, 0, 0, 3);
    }
  } else {
    btc8723b_coex_tbl_type(btcoexist, 0, 7);
    btc8723b2ant_tdma_duration_adjust(btcoexist, 0, 1, 3);
  }
  if (wifi_bw == 2U) {
    if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
      btc8723b2ant_sw_mechanism1(btcoexist, 1, 0, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 1, 0, 0, 24U);
    } else {
      btc8723b2ant_sw_mechanism1(btcoexist, 1, 0, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
    }
  } else
  if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 0, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 1, 0, 0, 24U);
  } else {
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 0, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
  }
  return;
}
}
static void btc8723b2ant_action_pan_edr_hid(struct btc_coexist *btcoexist )
{
  u8 wifi_rssi_state ;
  u8 bt_rssi_state ;
  u32 wifi_bw ;
  bool tmp ;
  {
  wifi_rssi_state = btc8723b2ant_wifi_rssi_state(btcoexist, 0, 2, 15, 0);
  bt_rssi_state = btc8723b2ant_bt_rssi_state(2, 35, 0);
  (*(btcoexist->btc_get))((void *)btcoexist, 19, (void *)(& wifi_bw));
  tmp = btc8723b_need_dec_pwr(btcoexist);
  if ((int )tmp) {
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 1);
  } else {
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 0);
  }
  if ((unsigned int )bt_rssi_state == 0U || (unsigned int )bt_rssi_state == 3U) {
    if (wifi_bw == 2U) {
      btc8723b2ant_fw_dac_swing_lvl(btcoexist, 0, 3);
      btc8723b_coex_tbl_type(btcoexist, 0, 11);
      (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 1U, 1048575U, 1920U);
    } else {
      btc8723b2ant_fw_dac_swing_lvl(btcoexist, 0, 6);
      btc8723b_coex_tbl_type(btcoexist, 0, 7);
      (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 1U, 1048575U, 0U);
    }
    btc8723b2ant_tdma_duration_adjust(btcoexist, 1, 0, 2);
  } else {
    btc8723b2ant_fw_dac_swing_lvl(btcoexist, 0, 6);
    btc8723b_coex_tbl_type(btcoexist, 0, 11);
    (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 1U, 1048575U, 0U);
    btc8723b2ant_tdma_duration_adjust(btcoexist, 1, 1, 2);
  }
  if (wifi_bw == 2U) {
    if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
      btc8723b2ant_sw_mechanism1(btcoexist, 1, 1, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 1, 0, 0, 24U);
    } else {
      btc8723b2ant_sw_mechanism1(btcoexist, 1, 1, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
    }
  } else
  if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 1, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 1, 0, 0, 24U);
  } else {
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 1, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
  }
  return;
}
}
static void btc8723b2ant_action_hid_a2dp_pan_edr(struct btc_coexist *btcoexist )
{
  u8 wifi_rssi_state ;
  u8 bt_rssi_state ;
  u32 wifi_bw ;
  bool tmp ;
  {
  wifi_rssi_state = btc8723b2ant_wifi_rssi_state(btcoexist, 0, 2, 15, 0);
  bt_rssi_state = btc8723b2ant_bt_rssi_state(2, 35, 0);
  (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 1U, 1048575U, 0U);
  btc8723b2ant_fw_dac_swing_lvl(btcoexist, 0, 6);
  tmp = btc8723b_need_dec_pwr(btcoexist);
  if ((int )tmp) {
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 1);
  } else {
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 0);
  }
  (*(btcoexist->btc_get))((void *)btcoexist, 19, (void *)(& wifi_bw));
  btc8723b_coex_tbl_type(btcoexist, 0, 7);
  if ((unsigned int )bt_rssi_state == 0U || (unsigned int )bt_rssi_state == 3U) {
    if (wifi_bw == 2U) {
      btc8723b2ant_tdma_duration_adjust(btcoexist, 1, 1, 2);
    } else {
      btc8723b2ant_tdma_duration_adjust(btcoexist, 1, 0, 3);
    }
  } else {
    btc8723b2ant_tdma_duration_adjust(btcoexist, 1, 1, 3);
  }
  if (wifi_bw == 2U) {
    if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
      btc8723b2ant_sw_mechanism1(btcoexist, 1, 1, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 1, 0, 0, 24U);
    } else {
      btc8723b2ant_sw_mechanism1(btcoexist, 1, 1, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
    }
  } else
  if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 1, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 1, 0, 0, 24U);
  } else {
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 1, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
  }
  return;
}
}
static void btc8723b2ant_action_hid_a2dp(struct btc_coexist *btcoexist )
{
  u8 wifi_rssi_state ;
  u8 bt_rssi_state ;
  u32 wifi_bw ;
  bool tmp ;
  {
  wifi_rssi_state = btc8723b2ant_wifi_rssi_state(btcoexist, 0, 2, 15, 0);
  bt_rssi_state = btc8723b2ant_bt_rssi_state(2, 35, 0);
  (*(btcoexist->btc_set_rf_reg))((void *)btcoexist, 0, 1U, 1048575U, 0U);
  btc8723b2ant_fw_dac_swing_lvl(btcoexist, 0, 6);
  tmp = btc8723b_need_dec_pwr(btcoexist);
  if ((int )tmp) {
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 1);
  } else {
    btc8723b2ant_dec_bt_pwr(btcoexist, 0, 0);
  }
  (*(btcoexist->btc_get))((void *)btcoexist, 19, (void *)(& wifi_bw));
  btc8723b_coex_tbl_type(btcoexist, 0, 7);
  if ((unsigned int )bt_rssi_state == 0U || (unsigned int )bt_rssi_state == 3U) {
    btc8723b2ant_tdma_duration_adjust(btcoexist, 1, 0, 2);
  } else {
    btc8723b2ant_tdma_duration_adjust(btcoexist, 1, 1, 2);
  }
  if (wifi_bw == 2U) {
    if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
      btc8723b2ant_sw_mechanism1(btcoexist, 1, 1, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 1, 0, 0, 24U);
    } else {
      btc8723b2ant_sw_mechanism1(btcoexist, 1, 1, 0, 0);
      btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
    }
  } else
  if ((unsigned int )wifi_rssi_state == 0U || (unsigned int )wifi_rssi_state == 3U) {
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 1, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 1, 0, 0, 24U);
  } else {
    btc8723b2ant_sw_mechanism1(btcoexist, 0, 1, 0, 0);
    btc8723b2ant_sw_mechanism2(btcoexist, 0, 0, 0, 24U);
  }
  return;
}
}
static void btc8723b2ant_run_coexist_mechanism(struct btc_coexist *btcoexist )
{
  u8 algorithm ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  long tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  long tmp___15 ;
  long tmp___16 ;
  bool tmp___17 ;
  {
  algorithm = 0U;
  tmp = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], RunCoexistMechanism()===>\n");
  } else {
  }
  if ((int )btcoexist->manual_control) {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], RunCoexistMechanism(), return for Manual CTRL <===\n");
    } else {
    }
    return;
  } else {
  }
  if ((int )coex_sta->under_ips) {
    tmp___1 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___1 != 0L) {
      printk("[BTCoex], wifi is under IPS !!!\n");
    } else {
    }
    return;
  } else {
  }
  algorithm = btc8723b2ant_action_algorithm(btcoexist);
  if ((int )coex_sta->c2h_bt_inquiry_page && (unsigned int )algorithm != 6U) {
    tmp___2 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___2 != 0L) {
      printk("[BTCoex], BT is under inquiry/page scan !!\n");
    } else {
    }
    btc8723b2ant_action_bt_inquiry(btcoexist);
    return;
  } else
  if ((int )coex_dm->need_recover_0x948) {
    coex_dm->need_recover_0x948 = 0;
    (*(btcoexist->btc_write_2byte))((void *)btcoexist, 2376U, (int )coex_dm->backup_0x948);
  } else {
  }
  coex_dm->cur_algorithm = algorithm;
  tmp___3 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
  if (tmp___3 != 0L) {
    printk("[BTCoex], Algorithm = %d\n", (int )coex_dm->cur_algorithm);
  } else {
  }
  tmp___17 = btc8723b2ant_is_common_action(btcoexist);
  if ((int )tmp___17) {
    tmp___4 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___4 != 0L) {
      printk("[BTCoex], Action 2-Ant common.\n");
    } else {
    }
    coex_dm->auto_tdma_adjust = 0;
  } else {
    if ((int )coex_dm->cur_algorithm != (int )coex_dm->pre_algorithm) {
      tmp___5 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
      if (tmp___5 != 0L) {
        printk("[BTCoex], preAlgorithm=%d, curAlgorithm=%d\n", (int )coex_dm->pre_algorithm,
               (int )coex_dm->cur_algorithm);
      } else {
      }
      coex_dm->auto_tdma_adjust = 0;
    } else {
    }
    switch ((int )coex_dm->cur_algorithm) {
    case 1:
    tmp___6 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___6 != 0L) {
      printk("[BTCoex], Action 2-Ant, algorithm = SCO.\n");
    } else {
    }
    btc8723b2ant_action_sco(btcoexist);
    goto ldv_52038;
    case 2:
    tmp___7 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___7 != 0L) {
      printk("[BTCoex], Action 2-Ant, algorithm = HID.\n");
    } else {
    }
    btc8723b2ant_action_hid(btcoexist);
    goto ldv_52038;
    case 3:
    tmp___8 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___8 != 0L) {
      printk("[BTCoex], Action 2-Ant, algorithm = A2DP.\n");
    } else {
    }
    btc8723b2ant_action_a2dp(btcoexist);
    goto ldv_52038;
    case 4:
    tmp___9 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___9 != 0L) {
      printk("[BTCoex], Action 2-Ant, algorithm = A2DP+PAN(HS).\n");
    } else {
    }
    btc8723b2ant_action_a2dp_pan_hs(btcoexist);
    goto ldv_52038;
    case 5:
    tmp___10 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___10 != 0L) {
      printk("[BTCoex], Action 2-Ant, algorithm = PAN(EDR).\n");
    } else {
    }
    btc8723b2ant_action_pan_edr(btcoexist);
    goto ldv_52038;
    case 6:
    tmp___11 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___11 != 0L) {
      printk("[BTCoex], Action 2-Ant, algorithm = HS mode.\n");
    } else {
    }
    btc8723b2ant_action_pan_hs(btcoexist);
    goto ldv_52038;
    case 7:
    tmp___12 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___12 != 0L) {
      printk("[BTCoex], Action 2-Ant, algorithm = PAN+A2DP.\n");
    } else {
    }
    btc8723b2ant_action_pan_edr_a2dp(btcoexist);
    goto ldv_52038;
    case 8:
    tmp___13 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___13 != 0L) {
      printk("[BTCoex], Action 2-Ant, algorithm = PAN(EDR)+HID.\n");
    } else {
    }
    btc8723b2ant_action_pan_edr_hid(btcoexist);
    goto ldv_52038;
    case 9:
    tmp___14 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___14 != 0L) {
      printk("[BTCoex], Action 2-Ant, algorithm = HID+A2DP+PAN.\n");
    } else {
    }
    btc8723b2ant_action_hid_a2dp_pan_edr(btcoexist);
    goto ldv_52038;
    case 10:
    tmp___15 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___15 != 0L) {
      printk("[BTCoex], Action 2-Ant, algorithm = HID+A2DP.\n");
    } else {
    }
    btc8723b2ant_action_hid_a2dp(btcoexist);
    goto ldv_52038;
    default:
    tmp___16 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___16 != 0L) {
      printk("[BTCoex], Action 2-Ant, algorithm = coexist All Off!!\n");
    } else {
    }
    btc8723b2ant_coex_alloff(btcoexist);
    goto ldv_52038;
    }
    ldv_52038:
    coex_dm->pre_algorithm = coex_dm->cur_algorithm;
  }
  return;
}
}
void ex_halbtc8723b2ant_init_hwconfig(struct btc_coexist *btcoexist )
{
  struct btc_board_info *board_info ;
  u32 u32tmp ;
  u32 fw_ver ;
  u8 u8tmp ;
  u8 h2c_parameter[2U] ;
  unsigned int tmp ;
  long tmp___0 ;
  {
  board_info = & btcoexist->board_info;
  u32tmp = 0U;
  u8tmp = 0U;
  h2c_parameter[0] = 0U;
  tmp = 1U;
  while (1) {
    if (tmp >= 2U) {
      break;
    } else {
    }
    h2c_parameter[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  tmp___0 = ldv__builtin_expect((long )((int )btc_dbg_type[0]) & 1L, 0L);
  if (tmp___0 != 0L) {
    printk("[BTCoex], 2Ant Init HW Config!!\n");
  } else {
  }
  coex_dm->bt_rf0x1e_backup = (*(btcoexist->btc_get_rf_reg))((void *)btcoexist, 0,
                                                             30U, 1048575U);
  u32tmp = (*(btcoexist->btc_read_4byte))((void *)btcoexist, 76U);
  u32tmp = u32tmp & 4286578687U;
  u32tmp = u32tmp | 16777216U;
  (*(btcoexist->btc_write_4byte))((void *)btcoexist, 76U, u32tmp);
  (*(btcoexist->btc_write_1byte))((void *)btcoexist, 2420U, 255);
  (*(btcoexist->btc_write_1byte_bitmask))((void *)btcoexist, 2372U, 3U, 3);
  (*(btcoexist->btc_write_1byte))((void *)btcoexist, 2352U, 119);
  (*(btcoexist->btc_write_1byte_bitmask))((void *)btcoexist, 103U, 32U, 1);
  (*(btcoexist->btc_write_1byte_bitmask))((void *)btcoexist, 1893U, 24U, 0);
  (*(btcoexist->btc_write_2byte))((void *)btcoexist, 2376U, 0);
  u8tmp = (*(btcoexist->btc_read_1byte))((void *)btcoexist, 1936U);
  u8tmp = (unsigned int )u8tmp & 192U;
  u8tmp = (u8 )((unsigned int )u8tmp | 5U);
  (*(btcoexist->btc_write_1byte))((void *)btcoexist, 1936U, (int )u8tmp);
  (*(btcoexist->btc_get))((void *)btcoexist, 21, (void *)(& fw_ver));
  if (fw_ver <= 3071U) {
    if ((unsigned int )board_info->btdm_ant_pos == 1U) {
      (*(btcoexist->btc_write_1byte_bitmask))((void *)btcoexist, 2348U, 3U, 1);
      (*(btcoexist->btc_write_1byte_bitmask))((void *)btcoexist, 100U, 1U, 1);
      h2c_parameter[0] = 0U;
      h2c_parameter[1] = 1U;
      (*(btcoexist->btc_fill_h2c))((void *)btcoexist, 101, 2U, (u8 *)(& h2c_parameter));
    } else {
      (*(btcoexist->btc_write_1byte_bitmask))((void *)btcoexist, 2348U, 3U, 2);
      (*(btcoexist->btc_write_1byte_bitmask))((void *)btcoexist, 100U, 1U, 0);
      h2c_parameter[0] = 1U;
      h2c_parameter[1] = 1U;
      (*(btcoexist->btc_fill_h2c))((void *)btcoexist, 101, 2U, (u8 *)(& h2c_parameter));
    }
  } else {
    (*(btcoexist->btc_write_1byte_bitmask))((void *)btcoexist, 2348U, 3U, 1);
    (*(btcoexist->btc_write_1byte_bitmask))((void *)btcoexist, 100U, 1U, 1);
    if ((unsigned int )board_info->btdm_ant_pos == 1U) {
      h2c_parameter[0] = 0U;
      h2c_parameter[1] = 0U;
      (*(btcoexist->btc_fill_h2c))((void *)btcoexist, 101, 2U, (u8 *)(& h2c_parameter));
    } else {
      h2c_parameter[0] = 1U;
      h2c_parameter[1] = 0U;
      (*(btcoexist->btc_fill_h2c))((void *)btcoexist, 101, 2U, (u8 *)(& h2c_parameter));
    }
  }
  btc8723b_coex_tbl_type(btcoexist, 1, 0);
  (*(btcoexist->btc_write_1byte))((void *)btcoexist, 1902U, 12);
  (*(btcoexist->btc_write_1byte))((void *)btcoexist, 1912U, 3);
  (*(btcoexist->btc_write_1byte_bitmask))((void *)btcoexist, 64U, 32U, 1);
  return;
}
}
void ex_halbtc8723b2ant_init_coex_dm(struct btc_coexist *btcoexist )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((long )((int )btc_dbg_type[0]) & 1L, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], Coex Mechanism Init!!\n");
  } else {
  }
  btc8723b2ant_init_coex_dm(btcoexist);
  return;
}
}
void ex_halbtc8723b2ant_display_coex_info(struct btc_coexist *btcoexist )
{
  struct btc_board_info *board_info ;
  struct btc_stack_info *stack_info ;
  struct btc_bt_link_info *bt_link_info ;
  u8 *cli_buf ;
  u8 u8tmp[4U] ;
  u8 i ;
  u8 bt_info_ext ;
  u8 ps_tdma_case ;
  u32 u32tmp[4U] ;
  bool roam ;
  bool scan ;
  bool link ;
  bool wifi_under_5g ;
  bool bt_hs_on ;
  bool wifi_busy ;
  s32 wifi_rssi ;
  s32 bt_hs_rssi ;
  u32 wifi_bw ;
  u32 wifi_traffic_dir ;
  u32 fa_ofdm ;
  u32 fa_cck ;
  u8 wifi_dot11_chnl ;
  u8 wifi_hs_chnl ;
  u32 fw_ver ;
  u32 bt_patch_ver ;
  {
  board_info = & btcoexist->board_info;
  stack_info = & btcoexist->stack_info;
  bt_link_info = & btcoexist->bt_link_info;
  cli_buf = btcoexist->cli_buf;
  ps_tdma_case = 0U;
  roam = 0;
  scan = 0;
  link = 0;
  wifi_under_5g = 0;
  bt_hs_on = 0;
  wifi_busy = 0;
  wifi_rssi = 0;
  bt_hs_rssi = 0;
  fw_ver = 0U;
  bt_patch_ver = 0U;
  snprintf((char *)cli_buf, 100UL, "\r\n ============[BT Coexist info]============");
  printk((char const *)cli_buf);
  if ((int )btcoexist->manual_control) {
    snprintf((char *)cli_buf, 100UL, "\r\n ==========[Under Manual Control]============");
    printk((char const *)cli_buf);
    snprintf((char *)cli_buf, 100UL, "\r\n ==========================================");
    printk((char const *)cli_buf);
  } else {
  }
  if (! board_info->bt_exist) {
    snprintf((char *)cli_buf, 100UL, "\r\n BT not exists !!!");
    printk((char const *)cli_buf);
    return;
  } else {
  }
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = %d/ %d ", (char *)"Ant PG number/ Ant mechanism:",
           (int )board_info->pg_ant_num, (int )board_info->btdm_ant_num);
  printk((char const *)cli_buf);
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = %s / %d", (char *)"BT stack/ hci ext ver",
           (int )stack_info->profile_notified ? (char *)"Yes" : (char *)"No", (int )stack_info->hci_version);
  printk((char const *)cli_buf);
  (*(btcoexist->btc_get))((void *)btcoexist, 22, (void *)(& bt_patch_ver));
  (*(btcoexist->btc_get))((void *)btcoexist, 21, (void *)(& fw_ver));
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = %d_%x/ 0x%x/ 0x%x(%d)", (char *)"CoexVer/ FwVer/ PatchVer",
           glcoex_ver_date_8723b_2ant, glcoex_ver_8723b_2ant, fw_ver, bt_patch_ver,
           bt_patch_ver);
  printk((char const *)cli_buf);
  (*(btcoexist->btc_get))((void *)btcoexist, 0, (void *)(& bt_hs_on));
  (*(btcoexist->btc_get))((void *)btcoexist, 23, (void *)(& wifi_dot11_chnl));
  (*(btcoexist->btc_get))((void *)btcoexist, 25, (void *)(& wifi_hs_chnl));
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = %d / %d(%d)", (char *)"Dot11 channel / HsChnl(HsMode)",
           (int )wifi_dot11_chnl, (int )wifi_hs_chnl, (int )bt_hs_on);
  printk((char const *)cli_buf);
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = %02x %02x %02x ", (char *)"H2C Wifi inform bt chnl Info",
           (int )coex_dm->wifi_chnl_info[0], (int )coex_dm->wifi_chnl_info[1], (int )coex_dm->wifi_chnl_info[2]);
  printk((char const *)cli_buf);
  (*(btcoexist->btc_get))((void *)btcoexist, 17, (void *)(& wifi_rssi));
  (*(btcoexist->btc_get))((void *)btcoexist, 18, (void *)(& bt_hs_rssi));
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = %d/ %d", (char *)"Wifi rssi/ HS rssi",
           wifi_rssi, bt_hs_rssi);
  printk((char const *)cli_buf);
  (*(btcoexist->btc_get))((void *)btcoexist, 4, (void *)(& scan));
  (*(btcoexist->btc_get))((void *)btcoexist, 5, (void *)(& link));
  (*(btcoexist->btc_get))((void *)btcoexist, 10, (void *)(& roam));
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = %d/ %d/ %d ", (char *)"Wifi link/ roam/ scan",
           (int )link, (int )roam, (int )scan);
  printk((char const *)cli_buf);
  (*(btcoexist->btc_get))((void *)btcoexist, 12, (void *)(& wifi_under_5g));
  (*(btcoexist->btc_get))((void *)btcoexist, 19, (void *)(& wifi_bw));
  (*(btcoexist->btc_get))((void *)btcoexist, 3, (void *)(& wifi_busy));
  (*(btcoexist->btc_get))((void *)btcoexist, 20, (void *)(& wifi_traffic_dir));
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = %s / %s/ %s ", (char *)"Wifi status",
           (int )wifi_under_5g ? (char *)"5G" : (char *)"2.4G", wifi_bw != 0U ? (wifi_bw == 2U ? (char *)"HT40" : (char *)"HT20") : (char *)"Legacy",
           ! wifi_busy ? (char *)"idle" : (wifi_traffic_dir == 0U ? (char *)"uplink" : (char *)"downlink"));
  printk((char const *)cli_buf);
  printk((char const *)cli_buf);
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = %d / %d / %d / %d", (char *)"SCO/HID/PAN/A2DP",
           (int )bt_link_info->sco_exist, (int )bt_link_info->hid_exist, (int )bt_link_info->pan_exist,
           (int )bt_link_info->a2dp_exist);
  printk((char const *)cli_buf);
  (*(btcoexist->btc_disp_dbg_msg))((void *)btcoexist, 1);
  bt_info_ext = coex_sta->bt_info_ext;
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = %s", (char *)"BT Info A2DP rate",
           (int )bt_info_ext & 1 ? (char *)"Basic rate" : (char *)"EDR rate");
  printk((char const *)cli_buf);
  i = 0U;
  goto ldv_52089;
  ldv_52088: ;
  if (coex_sta->bt_info_c2h_cnt[(int )i] != 0U) {
    snprintf((char *)cli_buf, 100UL, "\r\n %-35s = %02x %02x %02x %02x %02x %02x %02x(%d)",
             glbt_info_src_8723b_2ant[(int )i], (int )coex_sta->bt_info_c2h[(int )i][0],
             (int )coex_sta->bt_info_c2h[(int )i][1], (int )coex_sta->bt_info_c2h[(int )i][2],
             (int )coex_sta->bt_info_c2h[(int )i][3], (int )coex_sta->bt_info_c2h[(int )i][4],
             (int )coex_sta->bt_info_c2h[(int )i][5], (int )coex_sta->bt_info_c2h[(int )i][6],
             coex_sta->bt_info_c2h_cnt[(int )i]);
    printk((char const *)cli_buf);
  } else {
  }
  i = (u8 )((int )i + 1);
  ldv_52089: ;
  if ((unsigned int )i <= 2U) {
    goto ldv_52088;
  } else {
  }
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = %s/%s", (char *)"PS state, IPS/LPS",
           (int )coex_sta->under_ips ? (char *)"IPS ON" : (char *)"IPS OFF", (int )coex_sta->under_lps ? (char *)"LPS ON" : (char *)"LPS OFF");
  printk((char const *)cli_buf);
  (*(btcoexist->btc_disp_dbg_msg))((void *)btcoexist, 3);
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s", (char *)"============[Sw mechanism]============");
  printk((char const *)cli_buf);
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = %d/ %d/ %d ", (char *)"SM1[ShRf/ LpRA/ LimDig]",
           (int )coex_dm->cur_rf_rx_lpf_shrink, (int )coex_dm->cur_low_penalty_ra,
           (int )coex_dm->limited_dig);
  printk((char const *)cli_buf);
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = %d/ %d/ %d(0x%x) ", (char *)"SM2[AgcT/ AdcB/ SwDacSwing(lvl)]",
           (int )coex_dm->cur_agc_table_en, (int )coex_dm->cur_adc_back_off, (int )coex_dm->cur_dac_swing_on,
           coex_dm->cur_dac_swing_lvl);
  printk((char const *)cli_buf);
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s", (char *)"============[Fw mechanism]============");
  printk((char const *)cli_buf);
  ps_tdma_case = coex_dm->cur_ps_tdma;
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = %02x %02x %02x %02x %02x case-%d (auto:%d)",
           (char *)"PS TDMA", (int )coex_dm->ps_tdma_para[0], (int )coex_dm->ps_tdma_para[1],
           (int )coex_dm->ps_tdma_para[2], (int )coex_dm->ps_tdma_para[3], (int )coex_dm->ps_tdma_para[4],
           (int )ps_tdma_case, (int )coex_dm->auto_tdma_adjust);
  printk((char const *)cli_buf);
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = %d/ %d ", (char *)"DecBtPwr/ IgnWlanAct",
           (int )coex_dm->cur_dec_bt_pwr, (int )coex_dm->cur_ignore_wlan_act);
  printk((char const *)cli_buf);
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s", (char *)"============[Hw setting]============");
  printk((char const *)cli_buf);
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = 0x%x", (char *)"RF-A, 0x1e initVal",
           coex_dm->bt_rf0x1e_backup);
  printk((char const *)cli_buf);
  u8tmp[0] = (*(btcoexist->btc_read_1byte))((void *)btcoexist, 1912U);
  u32tmp[0] = (*(btcoexist->btc_read_4byte))((void *)btcoexist, 2176U);
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = 0x%x/ 0x%x", (char *)"0x778/0x880[29:25]",
           (int )u8tmp[0], (u32tmp[0] & 1040187392U) >> 25);
  printk((char const *)cli_buf);
  u32tmp[0] = (*(btcoexist->btc_read_4byte))((void *)btcoexist, 2376U);
  u8tmp[0] = (*(btcoexist->btc_read_1byte))((void *)btcoexist, 103U);
  u8tmp[1] = (*(btcoexist->btc_read_1byte))((void *)btcoexist, 1893U);
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = 0x%x/ 0x%x/ 0x%x", (char *)"0x948/ 0x67[5] / 0x765",
           u32tmp[0], ((int )u8tmp[0] & 32) >> 5, (int )u8tmp[1]);
  printk((char const *)cli_buf);
  u32tmp[0] = (*(btcoexist->btc_read_4byte))((void *)btcoexist, 2348U);
  u32tmp[1] = (*(btcoexist->btc_read_4byte))((void *)btcoexist, 2352U);
  u32tmp[2] = (*(btcoexist->btc_read_4byte))((void *)btcoexist, 2372U);
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = 0x%x/ 0x%x/ 0x%x", (char *)"0x92c[1:0]/ 0x930[7:0]/0x944[1:0]",
           u32tmp[0] & 3U, u32tmp[1] & 255U, u32tmp[2] & 3U);
  printk((char const *)cli_buf);
  u8tmp[0] = (*(btcoexist->btc_read_1byte))((void *)btcoexist, 57U);
  u8tmp[1] = (*(btcoexist->btc_read_1byte))((void *)btcoexist, 64U);
  u32tmp[0] = (*(btcoexist->btc_read_4byte))((void *)btcoexist, 76U);
  u8tmp[2] = (*(btcoexist->btc_read_1byte))((void *)btcoexist, 100U);
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x", (char *)"0x38[11]/0x40/0x4c[24:23]/0x64[0]",
           ((int )u8tmp[0] & 8) >> 3, (int )u8tmp[1], (u32tmp[0] & 25165824U) >> 23,
           (int )u8tmp[2] & 1);
  printk((char const *)cli_buf);
  u32tmp[0] = (*(btcoexist->btc_read_4byte))((void *)btcoexist, 1360U);
  u8tmp[0] = (*(btcoexist->btc_read_1byte))((void *)btcoexist, 1314U);
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = 0x%x/ 0x%x", (char *)"0x550(bcn ctrl)/0x522",
           u32tmp[0], (int )u8tmp[0]);
  printk((char const *)cli_buf);
  u32tmp[0] = (*(btcoexist->btc_read_4byte))((void *)btcoexist, 3152U);
  u8tmp[0] = (*(btcoexist->btc_read_1byte))((void *)btcoexist, 1180U);
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = 0x%x/ 0x%x", (char *)"0xc50(dig)/0x49c(null-drop)",
           u32tmp[0] & 255U, (int )u8tmp[0]);
  printk((char const *)cli_buf);
  u32tmp[0] = (*(btcoexist->btc_read_4byte))((void *)btcoexist, 3488U);
  u32tmp[1] = (*(btcoexist->btc_read_4byte))((void *)btcoexist, 3492U);
  u32tmp[2] = (*(btcoexist->btc_read_4byte))((void *)btcoexist, 3496U);
  u32tmp[3] = (*(btcoexist->btc_read_4byte))((void *)btcoexist, 3312U);
  u8tmp[0] = (*(btcoexist->btc_read_1byte))((void *)btcoexist, 2651U);
  u8tmp[1] = (*(btcoexist->btc_read_1byte))((void *)btcoexist, 2652U);
  fa_ofdm = (((((u32tmp[0] >> 16) + (u32tmp[1] >> 16)) + (u32tmp[1] & 65535U)) + (u32tmp[2] & 65535U)) + (u32tmp[3] >> 16)) + (u32tmp[3] & 65535U);
  fa_cck = (u32 )(((int )u8tmp[0] << 8) + (int )u8tmp[1]);
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = 0x%x/ 0x%x/ 0x%x", (char *)"OFDM-CCA/OFDM-FA/CCK-FA",
           u32tmp[0] & 65535U, fa_ofdm, fa_cck);
  printk((char const *)cli_buf);
  u32tmp[0] = (*(btcoexist->btc_read_4byte))((void *)btcoexist, 1728U);
  u32tmp[1] = (*(btcoexist->btc_read_4byte))((void *)btcoexist, 1732U);
  u32tmp[2] = (*(btcoexist->btc_read_4byte))((void *)btcoexist, 1736U);
  u8tmp[0] = (*(btcoexist->btc_read_1byte))((void *)btcoexist, 1740U);
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = 0x%x/ 0x%x/ 0x%x/ 0x%x", (char *)"0x6c0/0x6c4/0x6c8/0x6cc(coexTable)",
           u32tmp[0], u32tmp[1], u32tmp[2], (int )u8tmp[0]);
  printk((char const *)cli_buf);
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = %d/ %d", (char *)"0x770(high-pri rx/tx)",
           coex_sta->high_priority_rx, coex_sta->high_priority_tx);
  printk((char const *)cli_buf);
  snprintf((char *)cli_buf, 100UL, "\r\n %-35s = %d/ %d", (char *)"0x774(low-pri rx/tx)",
           coex_sta->low_priority_rx, coex_sta->low_priority_tx);
  printk((char const *)cli_buf);
  btc8723b2ant_monitor_bt_ctr(btcoexist);
  (*(btcoexist->btc_disp_dbg_msg))((void *)btcoexist, 0);
  return;
}
}
void ex_halbtc8723b2ant_ips_notify(struct btc_coexist *btcoexist , u8 type )
{
  long tmp ;
  long tmp___0 ;
  {
  if ((unsigned int )type == 1U) {
    tmp = ldv__builtin_expect((btc_dbg_type[0] & 4U) != 0U, 0L);
    if (tmp != 0L) {
      printk("[BTCoex], IPS ENTER notify\n");
    } else {
    }
    coex_sta->under_ips = 1;
    btc8723b2ant_coex_alloff(btcoexist);
  } else
  if ((unsigned int )type == 0U) {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[0] & 4U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], IPS LEAVE notify\n");
    } else {
    }
    coex_sta->under_ips = 0;
  } else {
  }
  return;
}
}
void ex_halbtc8723b2ant_lps_notify(struct btc_coexist *btcoexist , u8 type )
{
  long tmp ;
  long tmp___0 ;
  {
  if ((unsigned int )type == 1U) {
    tmp = ldv__builtin_expect((btc_dbg_type[0] & 4U) != 0U, 0L);
    if (tmp != 0L) {
      printk("[BTCoex], LPS ENABLE notify\n");
    } else {
    }
    coex_sta->under_lps = 1;
  } else
  if ((unsigned int )type == 0U) {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[0] & 4U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], LPS DISABLE notify\n");
    } else {
    }
    coex_sta->under_lps = 0;
  } else {
  }
  return;
}
}
void ex_halbtc8723b2ant_scan_notify(struct btc_coexist *btcoexist , u8 type )
{
  long tmp ;
  long tmp___0 ;
  {
  if ((unsigned int )type == 1U) {
    tmp = ldv__builtin_expect((btc_dbg_type[0] & 4U) != 0U, 0L);
    if (tmp != 0L) {
      printk("[BTCoex], SCAN START notify\n");
    } else {
    }
  } else
  if ((unsigned int )type == 0U) {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[0] & 4U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], SCAN FINISH notify\n");
    } else {
    }
  } else {
  }
  return;
}
}
void ex_halbtc8723b2ant_connect_notify(struct btc_coexist *btcoexist , u8 type )
{
  long tmp ;
  long tmp___0 ;
  {
  if ((unsigned int )type == 1U) {
    tmp = ldv__builtin_expect((btc_dbg_type[0] & 4U) != 0U, 0L);
    if (tmp != 0L) {
      printk("[BTCoex], CONNECT START notify\n");
    } else {
    }
  } else
  if ((unsigned int )type == 0U) {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[0] & 4U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], CONNECT FINISH notify\n");
    } else {
    }
  } else {
  }
  return;
}
}
void btc8723b_med_stat_notify(struct btc_coexist *btcoexist , u8 type )
{
  u8 h2c_parameter[3U] ;
  unsigned int tmp ;
  u32 wifi_bw ;
  u8 wifi_central_chnl ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  h2c_parameter[0] = 0U;
  tmp = 1U;
  while (1) {
    if (tmp >= 3U) {
      break;
    } else {
    }
    h2c_parameter[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  if ((unsigned int )type == 1U) {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[0] & 4U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], MEDIA connect notify\n");
    } else {
    }
  } else {
    tmp___1 = ldv__builtin_expect((btc_dbg_type[0] & 4U) != 0U, 0L);
    if (tmp___1 != 0L) {
      printk("[BTCoex], MEDIA disconnect notify\n");
    } else {
    }
  }
  (*(btcoexist->btc_get))((void *)btcoexist, 24, (void *)(& wifi_central_chnl));
  if ((unsigned int )type == 1U && (unsigned int )wifi_central_chnl <= 14U) {
    h2c_parameter[0] = 1U;
    h2c_parameter[1] = wifi_central_chnl;
    (*(btcoexist->btc_get))((void *)btcoexist, 19, (void *)(& wifi_bw));
    if (wifi_bw == 2U) {
      h2c_parameter[2] = 48U;
    } else {
      h2c_parameter[2] = 32U;
    }
  } else {
  }
  coex_dm->wifi_chnl_info[0] = h2c_parameter[0];
  coex_dm->wifi_chnl_info[1] = h2c_parameter[1];
  coex_dm->wifi_chnl_info[2] = h2c_parameter[2];
  tmp___2 = ldv__builtin_expect((btc_dbg_type[1] & 64U) != 0U, 0L);
  if (tmp___2 != 0L) {
    printk("[BTCoex], FW write 0x66=0x%x\n", (((int )h2c_parameter[0] << 16) | ((int )h2c_parameter[1] << 8)) | (int )h2c_parameter[2]);
  } else {
  }
  (*(btcoexist->btc_fill_h2c))((void *)btcoexist, 102, 3U, (u8 *)(& h2c_parameter));
  return;
}
}
void ex_halbtc8723b2ant_special_packet_notify(struct btc_coexist *btcoexist , u8 type )
{
  long tmp ;
  {
  if ((unsigned int )type == 1U) {
    tmp = ldv__builtin_expect((btc_dbg_type[0] & 4U) != 0U, 0L);
    if (tmp != 0L) {
      printk("[BTCoex], DHCP Packet notify\n");
    } else {
    }
  } else {
  }
  return;
}
}
void ex_halbtc8723b2ant_bt_info_notify(struct btc_coexist *btcoexist , u8 *tmpbuf ,
                                       u8 length )
{
  u8 bt_info ;
  u8 i ;
  u8 rsp_source ;
  bool bt_busy ;
  bool limited_dig ;
  bool wifi_connected ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  {
  bt_info = 0U;
  rsp_source = 0U;
  bt_busy = 0;
  limited_dig = 0;
  wifi_connected = 0;
  coex_sta->c2h_bt_info_req_sent = 0;
  rsp_source = (unsigned int )*tmpbuf & 15U;
  if ((unsigned int )rsp_source > 2U) {
    rsp_source = 0U;
  } else {
  }
  coex_sta->bt_info_c2h_cnt[(int )rsp_source] = coex_sta->bt_info_c2h_cnt[(int )rsp_source] + 1U;
  tmp = ldv__builtin_expect((btc_dbg_type[0] & 4U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], Bt info[%d], length=%d, hex data=[", (int )rsp_source, (int )length);
  } else {
  }
  i = 0U;
  goto ldv_52130;
  ldv_52129:
  coex_sta->bt_info_c2h[(int )rsp_source][(int )i] = *(tmpbuf + (unsigned long )i);
  if ((unsigned int )i == 1U) {
    bt_info = *(tmpbuf + (unsigned long )i);
  } else {
  }
  if ((int )i == (int )length + -1) {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[0] & 4U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("0x%02x]\n", (int )*(tmpbuf + (unsigned long )i));
    } else {
    }
  } else {
    tmp___1 = ldv__builtin_expect((btc_dbg_type[0] & 4U) != 0U, 0L);
    if (tmp___1 != 0L) {
      printk("0x%02x, ", (int )*(tmpbuf + (unsigned long )i));
    } else {
    }
  }
  i = (u8 )((int )i + 1);
  ldv_52130: ;
  if ((int )i < (int )length) {
    goto ldv_52129;
  } else {
  }
  if ((int )btcoexist->manual_control) {
    tmp___2 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___2 != 0L) {
      printk("[BTCoex], BtInfoNotify(), return for Manual CTRL<===\n");
    } else {
    }
    return;
  } else {
  }
  if ((unsigned int )rsp_source != 0U) {
    coex_sta->bt_retry_cnt = (unsigned int )coex_sta->bt_info_c2h[(int )rsp_source][2] & 15U;
    coex_sta->bt_rssi = (unsigned int )((u8 )((int )coex_sta->bt_info_c2h[(int )rsp_source][3] + 5)) * 2U;
    coex_sta->bt_info_ext = coex_sta->bt_info_c2h[(int )rsp_source][4];
    if (((int )coex_sta->bt_info_ext & 2) != 0) {
      tmp___3 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
      if (tmp___3 != 0L) {
        printk("[BTCoex], BT ext info bit1 check, send wifi BW&Chnl to BT!!\n");
      } else {
      }
      (*(btcoexist->btc_get))((void *)btcoexist, 2, (void *)(& wifi_connected));
      if ((int )wifi_connected) {
        btc8723b_med_stat_notify(btcoexist, 1);
      } else {
        btc8723b_med_stat_notify(btcoexist, 0);
      }
    } else {
    }
    if (((int )coex_sta->bt_info_ext & 8) != 0) {
      tmp___4 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
      if (tmp___4 != 0L) {
        printk("[BTCoex], BT ext info bit3 check, set BT NOT to ignore Wlan active!!\n");
      } else {
      }
      btc8723b2ant_ignore_wlan_act(btcoexist, 1, 0);
    } else {
    }
  } else {
  }
  if (((int )bt_info & 4) != 0) {
    coex_sta->c2h_bt_inquiry_page = 1;
  } else {
    coex_sta->c2h_bt_inquiry_page = 0;
  }
  if (((int )bt_info & 1) == 0) {
    coex_sta->bt_link_exist = 0;
    coex_sta->pan_exist = 0;
    coex_sta->a2dp_exist = 0;
    coex_sta->hid_exist = 0;
    coex_sta->sco_exist = 0;
  } else {
    coex_sta->bt_link_exist = 1;
    if ((int )((signed char )bt_info) < 0) {
      coex_sta->pan_exist = 1;
    } else {
      coex_sta->pan_exist = 0;
    }
    if (((int )bt_info & 64) != 0) {
      coex_sta->a2dp_exist = 1;
    } else {
      coex_sta->a2dp_exist = 0;
    }
    if (((int )bt_info & 32) != 0) {
      coex_sta->hid_exist = 1;
    } else {
      coex_sta->hid_exist = 0;
    }
    if (((int )bt_info & 2) != 0) {
      coex_sta->sco_exist = 1;
    } else {
      coex_sta->sco_exist = 0;
    }
  }
  btc8723b2ant_update_bt_link_info(btcoexist);
  if (((int )bt_info & 1) == 0) {
    coex_dm->bt_status = 0U;
    tmp___5 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___5 != 0L) {
      printk("[BTCoex], BtInfoNotify(), BT Non-Connected idle!!!\n");
    } else {
    }
  } else
  if ((unsigned int )bt_info == 1U) {
    coex_dm->bt_status = 1U;
    tmp___6 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___6 != 0L) {
      printk("[BTCoex], BtInfoNotify(), BT Connected-idle!!!\n");
    } else {
    }
  } else
  if (((int )bt_info & 2) != 0 || ((int )bt_info & 16) != 0) {
    coex_dm->bt_status = 4U;
    tmp___7 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___7 != 0L) {
      printk("[BTCoex], BtInfoNotify(), BT SCO busy!!!\n");
    } else {
    }
  } else
  if (((int )bt_info & 8) != 0) {
    coex_dm->bt_status = 3U;
    tmp___8 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___8 != 0L) {
      printk("[BTCoex], BtInfoNotify(), BT ACL busy!!!\n");
    } else {
    }
  } else {
    coex_dm->bt_status = 6U;
    tmp___9 = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
    if (tmp___9 != 0L) {
      printk("[BTCoex], BtInfoNotify(), BT Non-Defined state!!!\n");
    } else {
    }
  }
  if (((unsigned int )coex_dm->bt_status == 3U || (unsigned int )coex_dm->bt_status == 4U) || (unsigned int )coex_dm->bt_status == 5U) {
    bt_busy = 1;
    limited_dig = 1;
  } else {
    bt_busy = 0;
    limited_dig = 0;
  }
  (*(btcoexist->btc_set))((void *)btcoexist, 1, (void *)(& bt_busy));
  coex_dm->limited_dig = limited_dig;
  (*(btcoexist->btc_set))((void *)btcoexist, 2, (void *)(& limited_dig));
  btc8723b2ant_run_coexist_mechanism(btcoexist);
  return;
}
}
void ex_halbtc8723b2ant_stack_operation_notify(struct btc_coexist *btcoexist , u8 type )
{
  long tmp ;
  long tmp___0 ;
  {
  if ((unsigned int )type == 1U) {
    tmp = ldv__builtin_expect((btc_dbg_type[0] & 4U) != 0U, 0L);
    if (tmp != 0L) {
      printk("[BTCoex],StackOP Inquiry/page/pair start notify\n");
    } else {
    }
  } else
  if ((unsigned int )type == 2U) {
    tmp___0 = ldv__builtin_expect((btc_dbg_type[0] & 4U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex],StackOP Inquiry/page/pair finish notify\n");
    } else {
    }
  } else {
  }
  return;
}
}
void ex_halbtc8723b2ant_halt_notify(struct btc_coexist *btcoexist )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((btc_dbg_type[0] & 4U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], Halt notify\n");
  } else {
  }
  btc8723b2ant_ignore_wlan_act(btcoexist, 1, 1);
  btc8723b_med_stat_notify(btcoexist, 0);
  return;
}
}
void ex_halbtc8723b2ant_periodical(struct btc_coexist *btcoexist )
{
  struct btc_board_info *board_info ;
  struct btc_stack_info *stack_info ;
  u8 dis_ver_info_cnt ;
  u32 fw_ver ;
  u32 bt_patch_ver ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  bool tmp___5 ;
  {
  board_info = & btcoexist->board_info;
  stack_info = & btcoexist->stack_info;
  fw_ver = 0U;
  bt_patch_ver = 0U;
  tmp = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
  if (tmp != 0L) {
    printk("[BTCoex], ==========================Periodical===========================\n");
  } else {
  }
  if ((unsigned int )dis_ver_info_cnt <= 5U) {
    dis_ver_info_cnt = (unsigned int )dis_ver_info_cnt + 1U;
    tmp___0 = ldv__builtin_expect((long )((int )btc_dbg_type[0]) & 1L, 0L);
    if (tmp___0 != 0L) {
      printk("[BTCoex], ****************************************************************\n");
    } else {
    }
    tmp___1 = ldv__builtin_expect((long )((int )btc_dbg_type[0]) & 1L, 0L);
    if (tmp___1 != 0L) {
      printk("[BTCoex], Ant PG Num/ Ant Mech/ Ant Pos = %d/ %d/ %d\n", (int )board_info->pg_ant_num,
             (int )board_info->btdm_ant_num, (int )board_info->btdm_ant_pos);
    } else {
    }
    tmp___2 = ldv__builtin_expect((long )((int )btc_dbg_type[0]) & 1L, 0L);
    if (tmp___2 != 0L) {
      printk("[BTCoex], BT stack/ hci ext ver = %s / %d\n", (int )stack_info->profile_notified ? (char *)"Yes" : (char *)"No",
             (int )stack_info->hci_version);
    } else {
    }
    (*(btcoexist->btc_get))((void *)btcoexist, 22, (void *)(& bt_patch_ver));
    (*(btcoexist->btc_get))((void *)btcoexist, 21, (void *)(& fw_ver));
    tmp___3 = ldv__builtin_expect((long )((int )btc_dbg_type[0]) & 1L, 0L);
    if (tmp___3 != 0L) {
      printk("[BTCoex], CoexVer/ FwVer/ PatchVer = %d_%x/ 0x%x/ 0x%x(%d)\n", glcoex_ver_date_8723b_2ant,
             glcoex_ver_8723b_2ant, fw_ver, bt_patch_ver, bt_patch_ver);
    } else {
    }
    tmp___4 = ldv__builtin_expect((long )((int )btc_dbg_type[0]) & 1L, 0L);
    if (tmp___4 != 0L) {
      printk("[BTCoex], ****************************************************************\n");
    } else {
    }
  } else {
  }
  tmp___5 = btc8723b2ant_is_wifi_status_changed(btcoexist);
  if ((int )tmp___5 || (int )coex_dm->auto_tdma_adjust) {
    btc8723b2ant_run_coexist_mechanism(btcoexist);
  } else {
  }
  return;
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
void ldv_kfree_skb_17(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_18(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_19(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_22(struct sk_buff *ldv_func_arg1 ) ;
void ldv_consume_skb_16(struct sk_buff *ldv_func_arg1 ) ;
__inline static u8 rtl_read_byte(struct rtl_priv *rtlpriv , u32 addr )
{
  u8 tmp ;
  {
  tmp = (*(rtlpriv->io.read8_sync))(rtlpriv, addr);
  return (tmp);
}
}
__inline static u16 rtl_read_word(struct rtl_priv *rtlpriv , u32 addr )
{
  u16 tmp ;
  {
  tmp = (*(rtlpriv->io.read16_sync))(rtlpriv, addr);
  return (tmp);
}
}
__inline static u32 rtl_read_dword(struct rtl_priv *rtlpriv , u32 addr )
{
  u32 tmp ;
  {
  tmp = (*(rtlpriv->io.read32_sync))(rtlpriv, addr);
  return (tmp);
}
}
__inline static void rtl_write_byte(struct rtl_priv *rtlpriv , u32 addr , u8 val8 )
{
  {
  (*(rtlpriv->io.write8_async))(rtlpriv, addr, (int )val8);
  if ((int )(rtlpriv->cfg)->write_readback) {
    (*(rtlpriv->io.read8_sync))(rtlpriv, addr);
  } else {
  }
  return;
}
}
__inline static void rtl_write_word(struct rtl_priv *rtlpriv , u32 addr , u16 val16 )
{
  {
  (*(rtlpriv->io.write16_async))(rtlpriv, addr, (int )val16);
  if ((int )(rtlpriv->cfg)->write_readback) {
    (*(rtlpriv->io.read16_sync))(rtlpriv, addr);
  } else {
  }
  return;
}
}
__inline static void rtl_write_dword(struct rtl_priv *rtlpriv , u32 addr , u32 val32 )
{
  {
  (*(rtlpriv->io.write32_async))(rtlpriv, addr, val32);
  if ((int )(rtlpriv->cfg)->write_readback) {
    (*(rtlpriv->io.read32_sync))(rtlpriv, addr);
  } else {
  }
  return;
}
}
__inline static u32 rtl_get_bbreg(struct ieee80211_hw *hw , u32 regaddr , u32 bitmask )
{
  struct rtl_priv *rtlpriv ;
  u32 tmp ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp = (*(((rtlpriv->cfg)->ops)->get_bbreg))(hw, regaddr, bitmask);
  return (tmp);
}
}
__inline static void rtl_set_bbreg(struct ieee80211_hw *hw , u32 regaddr , u32 bitmask ,
                                   u32 data )
{
  struct rtl_priv *rtlpriv ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  (*(((rtlpriv->cfg)->ops)->set_bbreg))(hw, regaddr, bitmask, data);
  return;
}
}
__inline static u32 rtl_get_rfreg(struct ieee80211_hw *hw , enum radio_path rfpath ,
                                  u32 regaddr , u32 bitmask )
{
  struct rtl_priv *rtlpriv ;
  u32 tmp ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  tmp = (*(((rtlpriv->cfg)->ops)->get_rfreg))(hw, rfpath, regaddr, bitmask);
  return (tmp);
}
}
__inline static void rtl_set_rfreg(struct ieee80211_hw *hw , enum radio_path rfpath ,
                                   u32 regaddr , u32 bitmask , u32 data )
{
  struct rtl_priv *rtlpriv ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  (*(((rtlpriv->cfg)->ops)->set_rfreg))(hw, rfpath, regaddr, bitmask, data);
  return;
}
}
u32 btc_dbg_type[2U] ;
bool halbtc_is_wifi_uplink(struct rtl_priv *adapter ) ;
struct btc_coexist gl_bt_coexist ;
bool exhalbtc_initlize_variables(struct rtl_priv *adapter ) ;
void exhalbtc_init_hw_config(struct btc_coexist *btcoexist ) ;
void exhalbtc_init_coex_dm(struct btc_coexist *btcoexist ) ;
void exhalbtc_ips_notify(struct btc_coexist *btcoexist , u8 type ) ;
void exhalbtc_lps_notify(struct btc_coexist *btcoexist , u8 type ) ;
void exhalbtc_scan_notify(struct btc_coexist *btcoexist , u8 type ) ;
void exhalbtc_connect_notify(struct btc_coexist *btcoexist , u8 action ) ;
void exhalbtc_mediastatus_notify(struct btc_coexist *btcoexist , enum _RT_MEDIA_STATUS media_status ) ;
void exhalbtc_special_packet_notify(struct btc_coexist *btcoexist , u8 pkt_type ) ;
void exhalbtc_bt_info_notify(struct btc_coexist *btcoexist , u8 *tmp_buf , u8 length ) ;
void exhalbtc_stack_operation_notify(struct btc_coexist *btcoexist , u8 type ) ;
void exhalbtc_halt_notify(struct btc_coexist *btcoexist ) ;
void exhalbtc_pnp_notify(struct btc_coexist *btcoexist , u8 pnp_state ) ;
void exhalbtc_periodical(struct btc_coexist *btcoexist ) ;
void exhalbtc_dbg_control(struct btc_coexist *btcoexist , u8 code , u8 len , u8 *data ) ;
void exhalbtc_stack_update_profile_info(void) ;
void exhalbtc_set_hci_version(u16 hci_version ) ;
void exhalbtc_set_bt_patch_version(u16 bt_hci_version , u16 bt_patch_version ) ;
void exhalbtc_update_min_bt_rssi(char bt_rssi ) ;
void exhalbtc_set_bt_exist(bool bt_exist ) ;
void exhalbtc_set_chip_type(u8 chip_type ) ;
void exhalbtc_set_ant_num(u8 type , u8 ant_num ) ;
void exhalbtc_display_bt_coex_info(struct btc_coexist *btcoexist ) ;
static u8 btc_dbg_buf[100U] ;
static bool halbtc_is_bt_coexist_available(struct btc_coexist *btcoexist )
{
  {
  if (! btcoexist->binded || (unsigned long )btcoexist->adapter == (unsigned long )((void *)0)) {
    return (0);
  } else {
  }
  return (1);
}
}
static bool halbtc_is_wifi_busy(struct rtl_priv *rtlpriv )
{
  {
  if ((int )rtlpriv->link_info.busytraffic) {
    return (1);
  } else {
    return (0);
  }
}
}
static void halbtc_dbg_init(void)
{
  u8 i ;
  {
  i = 0U;
  goto ldv_51674;
  ldv_51673:
  btc_dbg_type[(int )i] = 0U;
  i = (u8 )((int )i + 1);
  ldv_51674: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_51673;
  } else {
  }
  btc_dbg_type[0] = 0U;
  btc_dbg_type[1] = 0U;
  return;
}
}
static bool halbtc_is_bt40(struct rtl_priv *adapter )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  bool is_ht40 ;
  enum ht_channel_width bw ;
  {
  rtlpriv = adapter;
  rtlphy = & rtlpriv->phy;
  is_ht40 = 1;
  bw = (enum ht_channel_width )rtlphy->current_chan_bw;
  if ((unsigned int )bw == 0U) {
    is_ht40 = 0;
  } else
  if ((unsigned int )bw == 1U) {
    is_ht40 = 1;
  } else {
  }
  return (is_ht40);
}
}
static bool halbtc_legacy(struct rtl_priv *adapter )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_mac *mac ;
  bool is_legacy ;
  {
  rtlpriv = adapter;
  mac = & rtlpriv->mac80211;
  is_legacy = 0;
  if ((unsigned int )mac->mode == 2U || (unsigned int )mac->mode == 2U) {
    is_legacy = 1;
  } else {
  }
  return (is_legacy);
}
}
bool halbtc_is_wifi_uplink(struct rtl_priv *adapter )
{
  struct rtl_priv *rtlpriv ;
  {
  rtlpriv = adapter;
  if ((int )rtlpriv->link_info.tx_busy_traffic) {
    return (1);
  } else {
    return (0);
  }
}
}
static u32 halbtc_get_wifi_bw(struct btc_coexist *btcoexist )
{
  struct rtl_priv *rtlpriv ;
  u32 wifi_bw ;
  bool tmp ;
  bool tmp___0 ;
  {
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  wifi_bw = 1U;
  tmp___0 = halbtc_is_bt40(rtlpriv);
  if ((int )tmp___0) {
    wifi_bw = 2U;
  } else {
    tmp = halbtc_legacy(rtlpriv);
    if ((int )tmp) {
      wifi_bw = 0U;
    } else {
      wifi_bw = 1U;
    }
  }
  return (wifi_bw);
}
}
static u8 halbtc_get_wifi_central_chnl(struct btc_coexist *btcoexist )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  u8 chnl ;
  long tmp ;
  {
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  rtlphy = & rtlpriv->phy;
  chnl = 1U;
  if ((unsigned int )rtlphy->current_channel != 0U) {
    chnl = rtlphy->current_channel;
  } else {
  }
  tmp = ldv__builtin_expect((btc_dbg_type[1] & 8U) != 0U, 0L);
  if (tmp != 0L) {
    printk("static halbtc_get_wifi_central_chnl:%d\n", (int )chnl);
  } else {
  }
  return (chnl);
}
}
static void halbtc_leave_lps(struct btc_coexist *btcoexist )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_ps_ctl *ppsc ;
  bool ap_enable ;
  {
  ap_enable = 0;
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  ppsc = & rtlpriv->psc;
  (*(btcoexist->btc_get))((void *)btcoexist, 13, (void *)(& ap_enable));
  if ((int )ap_enable) {
    printk("\016btcoexist: halbtc_leave_lps()<--dont leave lps under AP mode\n");
    return;
  } else {
  }
  btcoexist->bt_info.bt_ctrl_lps = 1;
  btcoexist->bt_info.bt_lps_on = 0;
  return;
}
}
static void halbtc_enter_lps(struct btc_coexist *btcoexist )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_ps_ctl *ppsc ;
  bool ap_enable ;
  {
  ap_enable = 0;
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  ppsc = & rtlpriv->psc;
  (*(btcoexist->btc_get))((void *)btcoexist, 13, (void *)(& ap_enable));
  if ((int )ap_enable) {
    printk("\016btcoexist: halbtc_enter_lps()<--dont enter lps under AP mode\n");
    return;
  } else {
  }
  btcoexist->bt_info.bt_ctrl_lps = 1;
  btcoexist->bt_info.bt_lps_on = 0;
  return;
}
}
static void halbtc_normal_lps(struct btc_coexist *btcoexist )
{
  {
  if ((int )btcoexist->bt_info.bt_ctrl_lps) {
    btcoexist->bt_info.bt_lps_on = 0;
    btcoexist->bt_info.bt_ctrl_lps = 0;
  } else {
  }
  return;
}
}
static void halbtc_leave_low_power(void)
{
  {
  return;
}
}
static void halbtc_nomal_low_power(void)
{
  {
  return;
}
}
static void halbtc_disable_low_power(void)
{
  {
  return;
}
}
static void halbtc_aggregation_check(void)
{
  {
  return;
}
}
static u32 halbtc_get_bt_patch_version(struct btc_coexist *btcoexist )
{
  {
  return (0U);
}
}
static s32 halbtc_get_wifi_rssi(struct rtl_priv *adapter )
{
  struct rtl_priv *rtlpriv ;
  s32 undec_sm_pwdb ;
  {
  rtlpriv = adapter;
  undec_sm_pwdb = 0;
  if ((unsigned int )rtlpriv->mac80211.link_state > 1U) {
    undec_sm_pwdb = (s32 )rtlpriv->dm.undec_sm_pwdb;
  } else {
    undec_sm_pwdb = (s32 )rtlpriv->dm.undec_sm_pwdb;
  }
  return (undec_sm_pwdb);
}
}
static bool halbtc_get(void *void_btcoexist , u8 get_type , void *out_buf )
{
  struct btc_coexist *btcoexist ;
  struct rtl_priv *rtlpriv ;
  struct rtl_phy *rtlphy ;
  struct rtl_mac *mac ;
  struct rtl_hal *rtlhal ;
  bool *bool_tmp ;
  int *s32_tmp ;
  u32 *u32_tmp ;
  u8 *u8_tmp ;
  bool tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  {
  btcoexist = (struct btc_coexist *)void_btcoexist;
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  rtlphy = & rtlpriv->phy;
  mac = & rtlpriv->mac80211;
  rtlhal = & rtlpriv->rtlhal;
  bool_tmp = (bool *)out_buf;
  s32_tmp = (int *)out_buf;
  u32_tmp = (u32 *)out_buf;
  u8_tmp = (u8 *)out_buf;
  tmp = 0;
  tmp___0 = halbtc_is_bt_coexist_available(btcoexist);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
  }
  switch ((int )get_type) {
  case 0:
  *bool_tmp = 0;
  goto ldv_51755;
  case 1:
  *bool_tmp = 0;
  goto ldv_51755;
  case 2: ;
  if ((unsigned int )rtlpriv->mac80211.link_state > 1U) {
    tmp = 1;
  } else {
  }
  *bool_tmp = tmp;
  goto ldv_51755;
  case 3:
  tmp___2 = halbtc_is_wifi_busy(rtlpriv);
  if ((int )tmp___2) {
    *bool_tmp = 1;
  } else {
    *bool_tmp = 0;
  }
  goto ldv_51755;
  case 4: ;
  if ((int )mac->act_scanning) {
    *bool_tmp = 1;
  } else {
    *bool_tmp = 0;
  }
  goto ldv_51755;
  case 5: ;
  if ((unsigned int )mac->link_state == 1U) {
    *bool_tmp = 1;
  } else {
    *bool_tmp = 0;
  }
  goto ldv_51755;
  case 10: ;
  if ((unsigned int )mac->link_state == 1U) {
    *bool_tmp = 1;
  } else {
    *bool_tmp = 0;
  }
  goto ldv_51755;
  case 11:
  *bool_tmp = 0;
  goto ldv_51755;
  case 12:
  *bool_tmp = 0;
  case 6: ;
  goto ldv_51755;
  case 7:
  *bool_tmp = 1;
  goto ldv_51755;
  case 8:
  *bool_tmp = 0;
  goto ldv_51755;
  case 9:
  *bool_tmp = 0;
  goto ldv_51755;
  case 13:
  *bool_tmp = 0;
  goto ldv_51755;
  case 14: ;
  if ((unsigned int )rtlpriv->sec.pairwise_enc_algorithm == 0U) {
    *bool_tmp = 0;
  } else {
    *bool_tmp = 1;
  }
  goto ldv_51755;
  case 15:
  *bool_tmp = 0;
  goto ldv_51755;
  case 16:
  *bool_tmp = 0;
  goto ldv_51755;
  case 17:
  *s32_tmp = halbtc_get_wifi_rssi(rtlpriv);
  goto ldv_51755;
  case 18:
  *s32_tmp = halbtc_get_wifi_rssi(rtlpriv);
  goto ldv_51755;
  case 19:
  *u32_tmp = halbtc_get_wifi_bw(btcoexist);
  goto ldv_51755;
  case 20:
  tmp___3 = halbtc_is_wifi_uplink(rtlpriv);
  if ((int )tmp___3) {
    *u32_tmp = 0U;
  } else {
    *u32_tmp = 1U;
  }
  goto ldv_51755;
  case 21:
  *u32_tmp = (u32 )rtlhal->fw_version;
  goto ldv_51755;
  case 22:
  *u32_tmp = halbtc_get_bt_patch_version(btcoexist);
  goto ldv_51755;
  case 23:
  *u8_tmp = rtlphy->current_channel;
  goto ldv_51755;
  case 24:
  *u8_tmp = halbtc_get_wifi_central_chnl(btcoexist);
  goto ldv_51755;
  case 25:
  *u8_tmp = 1U;
  goto ldv_51755;
  case 26:
  *u8_tmp = 255U;
  goto ldv_51755;
  case 27:
  *u8_tmp = btcoexist->pwr_mode_val[0];
  goto ldv_51755;
  default: ;
  goto ldv_51755;
  }
  ldv_51755: ;
  return (1);
}
}
static bool halbtc_set(void *void_btcoexist , u8 set_type , void *in_buf )
{
  struct btc_coexist *btcoexist ;
  bool *bool_tmp ;
  u8 *u8_tmp ;
  u32 *u32_tmp ;
  bool tmp ;
  int tmp___0 ;
  {
  btcoexist = (struct btc_coexist *)void_btcoexist;
  bool_tmp = (bool *)in_buf;
  u8_tmp = (u8 *)in_buf;
  u32_tmp = (u32 *)in_buf;
  tmp = halbtc_is_bt_coexist_available(btcoexist);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (0);
  } else {
  }
  switch ((int )set_type) {
  case 0:
  btcoexist->bt_info.bt_disabled = *bool_tmp;
  goto ldv_51794;
  case 1:
  btcoexist->bt_info.bt_busy = *bool_tmp;
  goto ldv_51794;
  case 2:
  btcoexist->bt_info.limited_dig = *bool_tmp;
  goto ldv_51794;
  case 3:
  btcoexist->bt_info.force_to_roam = *bool_tmp;
  goto ldv_51794;
  case 4:
  btcoexist->bt_info.reject_agg_pkt = *bool_tmp;
  goto ldv_51794;
  case 5:
  btcoexist->bt_info.b_bt_ctrl_buf_size = *bool_tmp;
  goto ldv_51794;
  case 6:
  btcoexist->bt_info.increase_scan_dev_num = *bool_tmp;
  goto ldv_51794;
  case 7:
  btcoexist->bt_info.rssi_adjust_for_agc_table_on = *u8_tmp;
  goto ldv_51794;
  case 10:
  btcoexist->bt_info.agg_buf_size = *u8_tmp;
  goto ldv_51794;
  case 11: ;
  goto ldv_51794;
  case 12:
  halbtc_aggregation_check();
  goto ldv_51794;
  case 8:
  btcoexist->bt_info.rssi_adjust_for_1ant_coex_type = *u8_tmp;
  goto ldv_51794;
  case 9: ;
  goto ldv_51794;
  case 14:
  btcoexist->bt_info.lps_1ant = *u8_tmp;
  goto ldv_51794;
  case 15:
  btcoexist->bt_info.rpwm_1ant = *u8_tmp;
  goto ldv_51794;
  case 16:
  halbtc_leave_lps(btcoexist);
  goto ldv_51794;
  case 17:
  halbtc_enter_lps(btcoexist);
  goto ldv_51794;
  case 18:
  halbtc_normal_lps(btcoexist);
  goto ldv_51794;
  case 20:
  halbtc_disable_low_power();
  goto ldv_51794;
  case 21:
  btcoexist->bt_info.ra_mask = *u32_tmp;
  goto ldv_51794;
  case 22: ;
  goto ldv_51794;
  case 19:
  btcoexist->bt_info.force_exec_pwr_cmd_cnt = (u8 )((int )btcoexist->bt_info.force_exec_pwr_cmd_cnt + 1);
  goto ldv_51794;
  case 23: ;
  goto ldv_51794;
  case 24: ;
  goto ldv_51794;
  default: ;
  goto ldv_51794;
  }
  ldv_51794: ;
  return (1);
}
}
static void halbtc_display_coex_statistics(struct btc_coexist *btcoexist )
{
  {
  return;
}
}
static void halbtc_display_bt_link_info(struct btc_coexist *btcoexist )
{
  {
  return;
}
}
static void halbtc_display_bt_fw_info(struct btc_coexist *btcoexist )
{
  {
  return;
}
}
static void halbtc_display_fw_pwr_mode_cmd(struct btc_coexist *btcoexist )
{
  {
  return;
}
}
static u8 halbtc_read_1byte(void *bt_context , u32 reg_addr )
{
  struct btc_coexist *btcoexist ;
  struct rtl_priv *rtlpriv ;
  u8 tmp ;
  {
  btcoexist = (struct btc_coexist *)bt_context;
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  tmp = rtl_read_byte(rtlpriv, reg_addr);
  return (tmp);
}
}
static u16 halbtc_read_2byte(void *bt_context , u32 reg_addr )
{
  struct btc_coexist *btcoexist ;
  struct rtl_priv *rtlpriv ;
  u16 tmp ;
  {
  btcoexist = (struct btc_coexist *)bt_context;
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  tmp = rtl_read_word(rtlpriv, reg_addr);
  return (tmp);
}
}
static u32 halbtc_read_4byte(void *bt_context , u32 reg_addr )
{
  struct btc_coexist *btcoexist ;
  struct rtl_priv *rtlpriv ;
  u32 tmp ;
  {
  btcoexist = (struct btc_coexist *)bt_context;
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  tmp = rtl_read_dword(rtlpriv, reg_addr);
  return (tmp);
}
}
static void halbtc_write_1byte(void *bt_context , u32 reg_addr , u8 data )
{
  struct btc_coexist *btcoexist ;
  struct rtl_priv *rtlpriv ;
  {
  btcoexist = (struct btc_coexist *)bt_context;
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  rtl_write_byte(rtlpriv, reg_addr, (int )data);
  return;
}
}
static void halbtc_bitmask_write_1byte(void *bt_context , u32 reg_addr , u32 bit_mask ,
                                       u8 data )
{
  struct btc_coexist *btcoexist ;
  struct rtl_priv *rtlpriv ;
  u8 original_value ;
  u8 bit_shift ;
  u8 i ;
  {
  btcoexist = (struct btc_coexist *)bt_context;
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  bit_shift = 0U;
  if (bit_mask != 4294967295U) {
    original_value = rtl_read_byte(rtlpriv, reg_addr);
    i = 0U;
    goto ldv_51869;
    ldv_51868: ;
    if ((int )(bit_mask >> (int )i) & 1) {
      goto ldv_51867;
    } else {
    }
    i = (u8 )((int )i + 1);
    ldv_51869: ;
    if ((unsigned int )i <= 7U) {
      goto ldv_51868;
    } else {
    }
    ldv_51867:
    bit_shift = i;
    data = (~ ((int )((u8 )bit_mask)) & (int )original_value) | ((int )((u8 )((int )data << (int )bit_shift)) & (int )((u8 )bit_mask));
  } else {
  }
  rtl_write_byte(rtlpriv, reg_addr, (int )data);
  return;
}
}
static void halbtc_write_2byte(void *bt_context , u32 reg_addr , u16 data )
{
  struct btc_coexist *btcoexist ;
  struct rtl_priv *rtlpriv ;
  {
  btcoexist = (struct btc_coexist *)bt_context;
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  rtl_write_word(rtlpriv, reg_addr, (int )data);
  return;
}
}
static void halbtc_write_4byte(void *bt_context , u32 reg_addr , u32 data )
{
  struct btc_coexist *btcoexist ;
  struct rtl_priv *rtlpriv ;
  {
  btcoexist = (struct btc_coexist *)bt_context;
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  rtl_write_dword(rtlpriv, reg_addr, data);
  return;
}
}
static void halbtc_set_bbreg(void *bt_context , u32 reg_addr , u32 bit_mask , u32 data )
{
  struct btc_coexist *btcoexist ;
  struct rtl_priv *rtlpriv ;
  {
  btcoexist = (struct btc_coexist *)bt_context;
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  rtl_set_bbreg(rtlpriv->mac80211.hw, reg_addr, bit_mask, data);
  return;
}
}
static u32 halbtc_get_bbreg(void *bt_context , u32 reg_addr , u32 bit_mask )
{
  struct btc_coexist *btcoexist ;
  struct rtl_priv *rtlpriv ;
  u32 tmp ;
  {
  btcoexist = (struct btc_coexist *)bt_context;
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  tmp = rtl_get_bbreg(rtlpriv->mac80211.hw, reg_addr, bit_mask);
  return (tmp);
}
}
static void halbtc_set_rfreg(void *bt_context , u8 rf_path , u32 reg_addr , u32 bit_mask ,
                             u32 data )
{
  struct btc_coexist *btcoexist ;
  struct rtl_priv *rtlpriv ;
  {
  btcoexist = (struct btc_coexist *)bt_context;
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  rtl_set_rfreg(rtlpriv->mac80211.hw, (enum radio_path )rf_path, reg_addr, bit_mask,
                data);
  return;
}
}
static u32 halbtc_get_rfreg(void *bt_context , u8 rf_path , u32 reg_addr , u32 bit_mask )
{
  struct btc_coexist *btcoexist ;
  struct rtl_priv *rtlpriv ;
  u32 tmp ;
  {
  btcoexist = (struct btc_coexist *)bt_context;
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  tmp = rtl_get_rfreg(rtlpriv->mac80211.hw, (enum radio_path )rf_path, reg_addr, bit_mask);
  return (tmp);
}
}
static void halbtc_fill_h2c_cmd(void *bt_context , u8 element_id , u32 cmd_len , u8 *cmd_buf )
{
  struct btc_coexist *btcoexist ;
  struct rtl_priv *rtlpriv ;
  {
  btcoexist = (struct btc_coexist *)bt_context;
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  (*(((rtlpriv->cfg)->ops)->fill_h2c_cmd))(rtlpriv->mac80211.hw, (int )element_id,
                                           cmd_len, cmd_buf);
  return;
}
}
static void halbtc_display_dbg_msg(void *bt_context , u8 disp_type )
{
  struct btc_coexist *btcoexist ;
  {
  btcoexist = (struct btc_coexist *)bt_context;
  switch ((int )disp_type) {
  case 0:
  halbtc_display_coex_statistics(btcoexist);
  goto ldv_51930;
  case 1:
  halbtc_display_bt_link_info(btcoexist);
  goto ldv_51930;
  case 2:
  halbtc_display_bt_fw_info(btcoexist);
  goto ldv_51930;
  case 3:
  halbtc_display_fw_pwr_mode_cmd(btcoexist);
  goto ldv_51930;
  default: ;
  goto ldv_51930;
  }
  ldv_51930: ;
  return;
}
}
bool exhalbtc_initlize_variables(struct rtl_priv *adapter )
{
  struct btc_coexist *btcoexist ;
  {
  btcoexist = & gl_bt_coexist;
  btcoexist->statistics.cnt_bind = btcoexist->statistics.cnt_bind + 1U;
  halbtc_dbg_init();
  if ((int )btcoexist->binded) {
    return (0);
  } else {
    btcoexist->binded = 1;
  }
  btcoexist->chip_interface = 0;
  if ((unsigned long )btcoexist->adapter == (unsigned long )((void *)0)) {
    btcoexist->adapter = (void *)adapter;
  } else {
  }
  btcoexist->stack_info.profile_notified = 0;
  btcoexist->btc_read_1byte = & halbtc_read_1byte;
  btcoexist->btc_write_1byte = & halbtc_write_1byte;
  btcoexist->btc_write_1byte_bitmask = & halbtc_bitmask_write_1byte;
  btcoexist->btc_read_2byte = & halbtc_read_2byte;
  btcoexist->btc_write_2byte = & halbtc_write_2byte;
  btcoexist->btc_read_4byte = & halbtc_read_4byte;
  btcoexist->btc_write_4byte = & halbtc_write_4byte;
  btcoexist->btc_set_bb_reg = & halbtc_set_bbreg;
  btcoexist->btc_get_bb_reg = & halbtc_get_bbreg;
  btcoexist->btc_set_rf_reg = & halbtc_set_rfreg;
  btcoexist->btc_get_rf_reg = & halbtc_get_rfreg;
  btcoexist->btc_fill_h2c = & halbtc_fill_h2c_cmd;
  btcoexist->btc_disp_dbg_msg = & halbtc_display_dbg_msg;
  btcoexist->btc_get = & halbtc_get;
  btcoexist->btc_set = & halbtc_set;
  btcoexist->cli_buf = (u8 *)(& btc_dbg_buf);
  btcoexist->bt_info.b_bt_ctrl_buf_size = 0;
  btcoexist->bt_info.agg_buf_size = 5U;
  btcoexist->bt_info.increase_scan_dev_num = 0;
  return (1);
}
}
void exhalbtc_init_hw_config(struct btc_coexist *btcoexist )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  bool tmp ;
  int tmp___0 ;
  {
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  rtlhal = & rtlpriv->rtlhal;
  tmp = halbtc_is_bt_coexist_available(btcoexist);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  btcoexist->statistics.cnt_init_hw_config = btcoexist->statistics.cnt_init_hw_config + 1U;
  if ((unsigned int )rtlhal->hw_type == 10U) {
    ex_halbtc8723b2ant_init_hwconfig(btcoexist);
  } else {
  }
  return;
}
}
void exhalbtc_init_coex_dm(struct btc_coexist *btcoexist )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  bool tmp ;
  int tmp___0 ;
  {
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  rtlhal = & rtlpriv->rtlhal;
  tmp = halbtc_is_bt_coexist_available(btcoexist);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  btcoexist->statistics.cnt_init_coex_dm = btcoexist->statistics.cnt_init_coex_dm + 1U;
  if ((unsigned int )rtlhal->hw_type == 10U) {
    ex_halbtc8723b2ant_init_coex_dm(btcoexist);
  } else {
  }
  btcoexist->initilized = 1;
  return;
}
}
void exhalbtc_ips_notify(struct btc_coexist *btcoexist , u8 type )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u8 ips_type ;
  bool tmp ;
  int tmp___0 ;
  {
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  rtlhal = & rtlpriv->rtlhal;
  tmp = halbtc_is_bt_coexist_available(btcoexist);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  btcoexist->statistics.cnt_ips_notify = btcoexist->statistics.cnt_ips_notify + 1U;
  if ((int )btcoexist->manual_control) {
    return;
  } else {
  }
  if ((unsigned int )type == 2U) {
    ips_type = 1U;
  } else {
    ips_type = 0U;
  }
  halbtc_leave_low_power();
  if ((unsigned int )rtlhal->hw_type == 10U) {
    ex_halbtc8723b2ant_ips_notify(btcoexist, (int )ips_type);
  } else {
  }
  halbtc_nomal_low_power();
  return;
}
}
void exhalbtc_lps_notify(struct btc_coexist *btcoexist , u8 type )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u8 lps_type ;
  bool tmp ;
  int tmp___0 ;
  {
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  rtlhal = & rtlpriv->rtlhal;
  tmp = halbtc_is_bt_coexist_available(btcoexist);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  btcoexist->statistics.cnt_lps_notify = btcoexist->statistics.cnt_lps_notify + 1U;
  if ((int )btcoexist->manual_control) {
    return;
  } else {
  }
  if ((unsigned int )type == 0U) {
    lps_type = 0U;
  } else {
    lps_type = 1U;
  }
  if ((unsigned int )rtlhal->hw_type == 10U) {
    ex_halbtc8723b2ant_lps_notify(btcoexist, (int )lps_type);
  } else {
  }
  return;
}
}
void exhalbtc_scan_notify(struct btc_coexist *btcoexist , u8 type )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u8 scan_type ;
  bool tmp ;
  int tmp___0 ;
  {
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  rtlhal = & rtlpriv->rtlhal;
  tmp = halbtc_is_bt_coexist_available(btcoexist);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  btcoexist->statistics.cnt_scan_notify = btcoexist->statistics.cnt_scan_notify + 1U;
  if ((int )btcoexist->manual_control) {
    return;
  } else {
  }
  if ((unsigned int )type != 0U) {
    scan_type = 1U;
  } else {
    scan_type = 0U;
  }
  halbtc_leave_low_power();
  if ((unsigned int )rtlhal->hw_type == 10U) {
    ex_halbtc8723b2ant_scan_notify(btcoexist, (int )scan_type);
  } else {
  }
  halbtc_nomal_low_power();
  return;
}
}
void exhalbtc_connect_notify(struct btc_coexist *btcoexist , u8 action )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u8 asso_type ;
  bool tmp ;
  int tmp___0 ;
  {
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  rtlhal = & rtlpriv->rtlhal;
  tmp = halbtc_is_bt_coexist_available(btcoexist);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  btcoexist->statistics.cnt_connect_notify = btcoexist->statistics.cnt_connect_notify + 1U;
  if ((int )btcoexist->manual_control) {
    return;
  } else {
  }
  if ((unsigned int )action != 0U) {
    asso_type = 1U;
  } else {
    asso_type = 0U;
  }
  halbtc_leave_low_power();
  if ((unsigned int )rtlhal->hw_type == 10U) {
    ex_halbtc8723b2ant_connect_notify(btcoexist, (int )asso_type);
  } else {
  }
  return;
}
}
void exhalbtc_mediastatus_notify(struct btc_coexist *btcoexist , enum _RT_MEDIA_STATUS media_status )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u8 status ;
  bool tmp ;
  int tmp___0 ;
  {
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  rtlhal = & rtlpriv->rtlhal;
  tmp = halbtc_is_bt_coexist_available(btcoexist);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  btcoexist->statistics.cnt_media_status_notify = btcoexist->statistics.cnt_media_status_notify + 1U;
  if ((int )btcoexist->manual_control) {
    return;
  } else {
  }
  if ((unsigned int )media_status == 1U) {
    status = 1U;
  } else {
    status = 0U;
  }
  halbtc_leave_low_power();
  if ((unsigned int )rtlhal->hw_type == 10U) {
    btc8723b_med_stat_notify(btcoexist, (int )status);
  } else {
  }
  halbtc_nomal_low_power();
  return;
}
}
void exhalbtc_special_packet_notify(struct btc_coexist *btcoexist , u8 pkt_type )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u8 packet_type ;
  bool tmp ;
  int tmp___0 ;
  {
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  rtlhal = & rtlpriv->rtlhal;
  tmp = halbtc_is_bt_coexist_available(btcoexist);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  btcoexist->statistics.cnt_special_packet_notify = btcoexist->statistics.cnt_special_packet_notify + 1U;
  if ((int )btcoexist->manual_control) {
    return;
  } else {
  }
  packet_type = 1U;
  halbtc_leave_low_power();
  if ((unsigned int )rtlhal->hw_type == 10U) {
    ex_halbtc8723b2ant_special_packet_notify(btcoexist, (int )packet_type);
  } else {
  }
  halbtc_nomal_low_power();
  return;
}
}
void exhalbtc_bt_info_notify(struct btc_coexist *btcoexist , u8 *tmp_buf , u8 length )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  bool tmp ;
  int tmp___0 ;
  {
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  rtlhal = & rtlpriv->rtlhal;
  tmp = halbtc_is_bt_coexist_available(btcoexist);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  btcoexist->statistics.cnt_bt_info_notify = btcoexist->statistics.cnt_bt_info_notify + 1U;
  if ((unsigned int )rtlhal->hw_type == 10U) {
    ex_halbtc8723b2ant_bt_info_notify(btcoexist, tmp_buf, (int )length);
  } else {
  }
  return;
}
}
void exhalbtc_stack_operation_notify(struct btc_coexist *btcoexist , u8 type )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  u8 stack_op_type ;
  bool tmp ;
  int tmp___0 ;
  {
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  rtlhal = & rtlpriv->rtlhal;
  tmp = halbtc_is_bt_coexist_available(btcoexist);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  btcoexist->statistics.cnt_stack_operation_notify = btcoexist->statistics.cnt_stack_operation_notify + 1U;
  if ((int )btcoexist->manual_control) {
    return;
  } else {
  }
  stack_op_type = 0U;
  halbtc_leave_low_power();
  if ((unsigned int )rtlhal->hw_type == 10U) {
    ex_halbtc8723b2ant_stack_operation_notify(btcoexist, (int )stack_op_type);
  } else {
  }
  halbtc_nomal_low_power();
  return;
}
}
void exhalbtc_halt_notify(struct btc_coexist *btcoexist )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  bool tmp ;
  int tmp___0 ;
  {
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  rtlhal = & rtlpriv->rtlhal;
  tmp = halbtc_is_bt_coexist_available(btcoexist);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  if ((unsigned int )rtlhal->hw_type == 10U) {
    ex_halbtc8723b2ant_halt_notify(btcoexist);
  } else {
  }
  return;
}
}
void exhalbtc_pnp_notify(struct btc_coexist *btcoexist , u8 pnp_state )
{
  bool tmp ;
  int tmp___0 ;
  {
  tmp = halbtc_is_bt_coexist_available(btcoexist);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  return;
}
}
void exhalbtc_periodical(struct btc_coexist *btcoexist )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  bool tmp ;
  int tmp___0 ;
  {
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  rtlhal = & rtlpriv->rtlhal;
  tmp = halbtc_is_bt_coexist_available(btcoexist);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  btcoexist->statistics.cnt_periodical = btcoexist->statistics.cnt_periodical + 1U;
  halbtc_leave_low_power();
  if ((unsigned int )rtlhal->hw_type == 10U) {
    ex_halbtc8723b2ant_periodical(btcoexist);
  } else {
  }
  halbtc_nomal_low_power();
  return;
}
}
void exhalbtc_dbg_control(struct btc_coexist *btcoexist , u8 code , u8 len , u8 *data )
{
  bool tmp ;
  int tmp___0 ;
  {
  tmp = halbtc_is_bt_coexist_available(btcoexist);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  btcoexist->statistics.cnt_dbg_ctrl = btcoexist->statistics.cnt_dbg_ctrl + 1U;
  return;
}
}
void exhalbtc_stack_update_profile_info(void)
{
  {
  return;
}
}
void exhalbtc_update_min_bt_rssi(char bt_rssi )
{
  struct btc_coexist *btcoexist ;
  bool tmp ;
  int tmp___0 ;
  {
  btcoexist = & gl_bt_coexist;
  tmp = halbtc_is_bt_coexist_available(btcoexist);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  btcoexist->stack_info.min_bt_rssi = bt_rssi;
  return;
}
}
void exhalbtc_set_hci_version(u16 hci_version )
{
  struct btc_coexist *btcoexist ;
  bool tmp ;
  int tmp___0 ;
  {
  btcoexist = & gl_bt_coexist;
  tmp = halbtc_is_bt_coexist_available(btcoexist);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  btcoexist->stack_info.hci_version = hci_version;
  return;
}
}
void exhalbtc_set_bt_patch_version(u16 bt_hci_version , u16 bt_patch_version )
{
  struct btc_coexist *btcoexist ;
  bool tmp ;
  int tmp___0 ;
  {
  btcoexist = & gl_bt_coexist;
  tmp = halbtc_is_bt_coexist_available(btcoexist);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  btcoexist->bt_info.bt_real_fw_ver = bt_patch_version;
  btcoexist->bt_info.bt_hci_ver = bt_hci_version;
  return;
}
}
void exhalbtc_set_bt_exist(bool bt_exist )
{
  {
  gl_bt_coexist.board_info.bt_exist = bt_exist;
  return;
}
}
void exhalbtc_set_chip_type(u8 chip_type )
{
  {
  switch ((int )chip_type) {
  default: ;
  case 0: ;
  case 1: ;
  case 2: ;
  case 5:
  gl_bt_coexist.board_info.bt_chip_type = 0U;
  goto ldv_52052;
  case 3:
  gl_bt_coexist.board_info.bt_chip_type = 1U;
  goto ldv_52052;
  case 4:
  gl_bt_coexist.board_info.bt_chip_type = 2U;
  goto ldv_52052;
  case 6:
  gl_bt_coexist.board_info.bt_chip_type = 3U;
  goto ldv_52052;
  case 7:
  gl_bt_coexist.board_info.bt_chip_type = 4U;
  goto ldv_52052;
  case 8:
  gl_bt_coexist.board_info.bt_chip_type = 5U;
  goto ldv_52052;
  }
  ldv_52052: ;
  return;
}
}
void exhalbtc_set_ant_num(u8 type , u8 ant_num )
{
  {
  if ((unsigned int )type == 0U) {
    gl_bt_coexist.board_info.pg_ant_num = ant_num;
    gl_bt_coexist.board_info.btdm_ant_num = ant_num;
  } else
  if ((unsigned int )type == 1U) {
    gl_bt_coexist.board_info.btdm_ant_num = ant_num;
  } else {
  }
  return;
}
}
void exhalbtc_display_bt_coex_info(struct btc_coexist *btcoexist )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_hal *rtlhal ;
  bool tmp ;
  int tmp___0 ;
  {
  rtlpriv = (struct rtl_priv *)btcoexist->adapter;
  rtlhal = & rtlpriv->rtlhal;
  tmp = halbtc_is_bt_coexist_available(btcoexist);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  if ((unsigned int )rtlhal->hw_type == 10U) {
    ex_halbtc8723b2ant_display_coex_info(btcoexist);
  } else {
  }
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
extern void __bad_percpu_size(void) ;
extern void *memset(void * , int , size_t ) ;
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
void ldv_kfree_skb_28(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_29(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_30(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_33(struct sk_buff *ldv_func_arg1 ) ;
void ldv_consume_skb_27(struct sk_buff *ldv_func_arg1 ) ;
extern u8 __VERIFIER_nondet_u8(void) ;
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
int ldv_state_variable_1 ;
struct rtl_priv *rtl_btc_operation_group0 ;
int ref_cnt ;
int ldv_state_variable_0 ;
void ldv_initialize_rtl_btc_ops_1(void) ;
void rtl_btc_init_variables(struct rtl_priv *rtlpriv ) ;
void rtl_btc_init_hal_vars(struct rtl_priv *rtlpriv ) ;
void rtl_btc_init_hw_config(struct rtl_priv *rtlpriv ) ;
void rtl_btc_ips_notify(struct rtl_priv *rtlpriv , u8 type ) ;
void rtl_btc_scan_notify(struct rtl_priv *rtlpriv , u8 scantype ) ;
void rtl_btc_connect_notify(struct rtl_priv *rtlpriv , u8 action ) ;
void rtl_btc_mediastatus_notify(struct rtl_priv *rtlpriv , enum _RT_MEDIA_STATUS mstatus ) ;
void rtl_btc_periodical(struct rtl_priv *rtlpriv ) ;
void rtl_btc_halt_notify(void) ;
void rtl_btc_btinfo_notify(struct rtl_priv *rtlpriv , u8 *tmp_buf , u8 length ) ;
bool rtl_btc_is_limited_dig(struct rtl_priv *rtlpriv ) ;
bool rtl_btc_is_disable_edca_turbo(struct rtl_priv *rtlpriv ) ;
bool rtl_btc_is_bt_disabled(struct rtl_priv *rtlpriv ) ;
struct rtl_btc_ops *rtl_btc_get_ops_pointer(void) ;
u8 rtl_get_hwpg_ant_num(struct rtl_priv *rtlpriv ) ;
u8 rtl_get_hwpg_bt_exist(struct rtl_priv *rtlpriv ) ;
u8 rtl_get_hwpg_bt_type(struct rtl_priv *rtlpriv ) ;
enum _RT_MEDIA_STATUS mgnt_link_status_query(struct ieee80211_hw *hw ) ;
static struct rtl_btc_ops rtl_btc_operation =
     {& rtl_btc_init_variables, & rtl_btc_init_hal_vars, & rtl_btc_init_hw_config, & rtl_btc_ips_notify,
    & rtl_btc_scan_notify, & rtl_btc_connect_notify, & rtl_btc_mediastatus_notify,
    & rtl_btc_periodical, & rtl_btc_halt_notify, & rtl_btc_btinfo_notify, & rtl_btc_is_limited_dig,
    & rtl_btc_is_disable_edca_turbo, & rtl_btc_is_bt_disabled};
void rtl_btc_init_variables(struct rtl_priv *rtlpriv )
{
  {
  exhalbtc_initlize_variables(rtlpriv);
  return;
}
}
void rtl_btc_init_hal_vars(struct rtl_priv *rtlpriv )
{
  u8 ant_num ;
  u8 bt_exist ;
  u8 bt_type ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  {
  ant_num = rtl_get_hwpg_ant_num(rtlpriv);
  tmp___1 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  if (tmp___1 != 0L) {
    tmp___2 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
    if (tmp___2 != 0L) {
      tmp = preempt_count();
      tmp___0 = preempt_count();
      printk("\017btcoexist:%s():<%lx-%x> %s, antNum is %d\n", "rtl_btc_init_hal_vars",
             (unsigned long )tmp___0 & 2096896UL, ((unsigned long )tmp & 0xffffffffffdfffffUL) != 0UL,
             "rtl_btc_init_hal_vars", (int )ant_num);
    } else {
    }
  } else {
  }
  bt_exist = rtl_get_hwpg_bt_exist(rtlpriv);
  tmp___5 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  if (tmp___5 != 0L) {
    tmp___6 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
    if (tmp___6 != 0L) {
      tmp___3 = preempt_count();
      tmp___4 = preempt_count();
      printk("\017btcoexist:%s():<%lx-%x> %s, bt_exist is %d\n", "rtl_btc_init_hal_vars",
             (unsigned long )tmp___4 & 2096896UL, ((unsigned long )tmp___3 & 0xffffffffffdfffffUL) != 0UL,
             "rtl_btc_init_hal_vars", (int )bt_exist);
    } else {
    }
  } else {
  }
  exhalbtc_set_bt_exist((unsigned int )bt_exist != 0U);
  bt_type = rtl_get_hwpg_bt_type(rtlpriv);
  tmp___9 = ldv__builtin_expect((rtlpriv->dbg.global_debugcomponents & 4ULL) != 0ULL,
                             0L);
  if (tmp___9 != 0L) {
    tmp___10 = ldv__builtin_expect(rtlpriv->dbg.global_debuglevel > 2, 0L);
    if (tmp___10 != 0L) {
      tmp___7 = preempt_count();
      tmp___8 = preempt_count();
      printk("\017btcoexist:%s():<%lx-%x> %s, bt_type is %d\n", "rtl_btc_init_hal_vars",
             (unsigned long )tmp___8 & 2096896UL, ((unsigned long )tmp___7 & 0xffffffffffdfffffUL) != 0UL,
             "rtl_btc_init_hal_vars", (int )bt_type);
    } else {
    }
  } else {
  }
  exhalbtc_set_chip_type((int )bt_type);
  exhalbtc_set_ant_num(0, (int )ant_num);
  return;
}
}
void rtl_btc_init_hw_config(struct rtl_priv *rtlpriv )
{
  {
  exhalbtc_init_hw_config(& gl_bt_coexist);
  exhalbtc_init_coex_dm(& gl_bt_coexist);
  return;
}
}
void rtl_btc_ips_notify(struct rtl_priv *rtlpriv , u8 type )
{
  {
  exhalbtc_ips_notify(& gl_bt_coexist, (int )type);
  return;
}
}
void rtl_btc_scan_notify(struct rtl_priv *rtlpriv , u8 scantype )
{
  {
  exhalbtc_scan_notify(& gl_bt_coexist, (int )scantype);
  return;
}
}
void rtl_btc_connect_notify(struct rtl_priv *rtlpriv , u8 action )
{
  {
  exhalbtc_connect_notify(& gl_bt_coexist, (int )action);
  return;
}
}
void rtl_btc_mediastatus_notify(struct rtl_priv *rtlpriv , enum _RT_MEDIA_STATUS mstatus )
{
  {
  exhalbtc_mediastatus_notify(& gl_bt_coexist, mstatus);
  return;
}
}
void rtl_btc_periodical(struct rtl_priv *rtlpriv )
{
  {
  exhalbtc_periodical(& gl_bt_coexist);
  return;
}
}
void rtl_btc_halt_notify(void)
{
  {
  exhalbtc_halt_notify(& gl_bt_coexist);
  return;
}
}
void rtl_btc_btinfo_notify(struct rtl_priv *rtlpriv , u8 *tmp_buf , u8 length )
{
  {
  exhalbtc_bt_info_notify(& gl_bt_coexist, tmp_buf, (int )length);
  return;
}
}
bool rtl_btc_is_limited_dig(struct rtl_priv *rtlpriv )
{
  {
  return (gl_bt_coexist.bt_info.limited_dig);
}
}
bool rtl_btc_is_disable_edca_turbo(struct rtl_priv *rtlpriv )
{
  bool bt_change_edca ;
  u32 cur_edca_val ;
  u32 edca_bt_hs_uplink ;
  u32 edca_bt_hs_downlink ;
  u32 edca_hs ;
  u32 edca_addr ;
  bool tmp ;
  {
  bt_change_edca = 0;
  edca_bt_hs_uplink = 6202411U;
  edca_bt_hs_downlink = 6202411U;
  edca_addr = 1284U;
  cur_edca_val = rtl_read_dword(rtlpriv, edca_addr);
  tmp = halbtc_is_wifi_uplink(rtlpriv);
  if ((int )tmp) {
    if (cur_edca_val != edca_bt_hs_uplink) {
      edca_hs = edca_bt_hs_uplink;
      bt_change_edca = 1;
    } else {
    }
  } else
  if (cur_edca_val != edca_bt_hs_downlink) {
    edca_hs = edca_bt_hs_downlink;
    bt_change_edca = 1;
  } else {
  }
  if ((int )bt_change_edca) {
    rtl_write_dword(rtlpriv, edca_addr, edca_hs);
  } else {
  }
  return (1);
}
}
bool rtl_btc_is_bt_disabled(struct rtl_priv *rtlpriv )
{
  {
  if ((int )gl_bt_coexist.bt_info.bt_disabled) {
    return (1);
  } else {
    return (0);
  }
}
}
struct rtl_btc_ops *rtl_btc_get_ops_pointer(void)
{
  {
  return (& rtl_btc_operation);
}
}
static char const __kstrtab_rtl_btc_get_ops_pointer[24U] =
  { 'r', 't', 'l', '_',
        'b', 't', 'c', '_',
        'g', 'e', 't', '_',
        'o', 'p', 's', '_',
        'p', 'o', 'i', 'n',
        't', 'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_rtl_btc_get_ops_pointer ;
struct kernel_symbol const __ksymtab_rtl_btc_get_ops_pointer = {(unsigned long )(& rtl_btc_get_ops_pointer), (char const *)(& __kstrtab_rtl_btc_get_ops_pointer)};
u8 rtl_get_hwpg_ant_num(struct rtl_priv *rtlpriv )
{
  u8 num ;
  {
  if ((unsigned int )rtlpriv->btcoexist.btc_info.ant_num == 0U) {
    num = 2U;
  } else {
    num = 1U;
  }
  return (num);
}
}
enum _RT_MEDIA_STATUS mgnt_link_status_query(struct ieee80211_hw *hw )
{
  struct rtl_priv *rtlpriv ;
  struct rtl_mac *mac ;
  enum _RT_MEDIA_STATUS m_status ;
  u8 bibss ;
  {
  rtlpriv = (struct rtl_priv *)hw->priv;
  mac = & ((struct rtl_priv *)hw->priv)->mac80211;
  m_status = 0;
  bibss = (unsigned int )mac->opmode == 1U;
  if ((unsigned int )bibss != 0U || (unsigned int )rtlpriv->mac80211.link_state > 1U) {
    m_status = 1;
  } else {
  }
  return (m_status);
}
}
u8 rtl_get_hwpg_bt_exist(struct rtl_priv *rtlpriv )
{
  {
  return (rtlpriv->btcoexist.btc_info.btcoexist);
}
}
u8 rtl_get_hwpg_bt_type(struct rtl_priv *rtlpriv )
{
  {
  return (rtlpriv->btcoexist.btc_info.bt_type);
}
}
static int rtl_btcoexist_module_init(void)
{
  {
  return (0);
}
}
static void rtl_btcoexist_module_exit(void)
{
  {
  return;
}
}
int ldv_retval_0 ;
void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
void ldv_initialize_rtl_btc_ops_1(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(19648UL);
  rtl_btc_operation_group0 = (struct rtl_priv *)tmp;
  return;
}
}
int main(void)
{
  u8 ldvarg1 ;
  u8 tmp ;
  enum _RT_MEDIA_STATUS ldvarg4 ;
  u8 ldvarg3 ;
  u8 tmp___0 ;
  u8 ldvarg0 ;
  u8 tmp___1 ;
  u8 ldvarg5 ;
  u8 tmp___2 ;
  u8 *ldvarg2 ;
  void *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  tmp = __VERIFIER_nondet_u8();
  ldvarg1 = tmp;
  tmp___0 = __VERIFIER_nondet_u8();
  ldvarg3 = tmp___0;
  tmp___1 = __VERIFIER_nondet_u8();
  ldvarg0 = tmp___1;
  tmp___2 = __VERIFIER_nondet_u8();
  ldvarg5 = tmp___2;
  tmp___3 = ldv_zalloc(1UL);
  ldvarg2 = (u8 *)tmp___3;
  ldv_initialize();
  memset((void *)(& ldvarg4), 0, 4UL);
  ldv_state_variable_1 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_52613:
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_1 != 0) {
    tmp___5 = __VERIFIER_nondet_int();
    switch (tmp___5) {
    case 0: ;
    if (ldv_state_variable_1 == 1) {
      rtl_btc_periodical(rtl_btc_operation_group0);
      ldv_state_variable_1 = 1;
    } else {
    }
    goto ldv_52591;
    case 1: ;
    if (ldv_state_variable_1 == 1) {
      rtl_btc_init_variables(rtl_btc_operation_group0);
      ldv_state_variable_1 = 1;
    } else {
    }
    goto ldv_52591;
    case 2: ;
    if (ldv_state_variable_1 == 1) {
      rtl_btc_connect_notify(rtl_btc_operation_group0, (int )ldvarg5);
      ldv_state_variable_1 = 1;
    } else {
    }
    goto ldv_52591;
    case 3: ;
    if (ldv_state_variable_1 == 1) {
      rtl_btc_mediastatus_notify(rtl_btc_operation_group0, ldvarg4);
      ldv_state_variable_1 = 1;
    } else {
    }
    goto ldv_52591;
    case 4: ;
    if (ldv_state_variable_1 == 1) {
      rtl_btc_is_bt_disabled(rtl_btc_operation_group0);
      ldv_state_variable_1 = 1;
    } else {
    }
    goto ldv_52591;
    case 5: ;
    if (ldv_state_variable_1 == 1) {
      rtl_btc_is_disable_edca_turbo(rtl_btc_operation_group0);
      ldv_state_variable_1 = 1;
    } else {
    }
    goto ldv_52591;
    case 6: ;
    if (ldv_state_variable_1 == 1) {
      rtl_btc_halt_notify();
      ldv_state_variable_1 = 1;
    } else {
    }
    goto ldv_52591;
    case 7: ;
    if (ldv_state_variable_1 == 1) {
      rtl_btc_ips_notify(rtl_btc_operation_group0, (int )ldvarg3);
      ldv_state_variable_1 = 1;
    } else {
    }
    goto ldv_52591;
    case 8: ;
    if (ldv_state_variable_1 == 1) {
      rtl_btc_init_hw_config(rtl_btc_operation_group0);
      ldv_state_variable_1 = 1;
    } else {
    }
    goto ldv_52591;
    case 9: ;
    if (ldv_state_variable_1 == 1) {
      rtl_btc_is_limited_dig(rtl_btc_operation_group0);
      ldv_state_variable_1 = 1;
    } else {
    }
    goto ldv_52591;
    case 10: ;
    if (ldv_state_variable_1 == 1) {
      rtl_btc_btinfo_notify(rtl_btc_operation_group0, ldvarg2, (int )ldvarg1);
      ldv_state_variable_1 = 1;
    } else {
    }
    goto ldv_52591;
    case 11: ;
    if (ldv_state_variable_1 == 1) {
      rtl_btc_scan_notify(rtl_btc_operation_group0, (int )ldvarg0);
      ldv_state_variable_1 = 1;
    } else {
    }
    goto ldv_52591;
    case 12: ;
    if (ldv_state_variable_1 == 1) {
      rtl_btc_init_hal_vars(rtl_btc_operation_group0);
      ldv_state_variable_1 = 1;
    } else {
    }
    goto ldv_52591;
    default:
    ldv_stop();
    }
    ldv_52591: ;
  } else {
  }
  goto ldv_52605;
  case 1: ;
  if (ldv_state_variable_0 != 0) {
    tmp___6 = __VERIFIER_nondet_int();
    switch (tmp___6) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      rtl_btcoexist_module_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_52609;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = rtl_btcoexist_module_init();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_1 = 1;
        ldv_initialize_rtl_btc_ops_1();
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_52609;
    default:
    ldv_stop();
    }
    ldv_52609: ;
  } else {
  }
  goto ldv_52605;
  default:
  ldv_stop();
  }
  ldv_52605: ;
  goto ldv_52613;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void ldv_consume_skb_27(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_28(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_29(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_30(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_33(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
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
void __const_udelay(unsigned long arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
