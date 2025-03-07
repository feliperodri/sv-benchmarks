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
struct net_device;
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
struct ctl_table;
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
struct __anonstruct____missing_field_name_50 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_49 {
   struct __anonstruct____missing_field_name_50 __annonCompField19 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_49 __annonCompField20 ;
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
struct usb_interface;
struct usbnet;
struct wireless_dev;
struct sk_buff;
struct station_info;
struct wiphy;
struct cfg80211_pmksa;
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
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_217 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_217 __annonCompField58 ;
   unsigned long nr_segs ;
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
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct kiocb;
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iov_iter msg_iter ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
   struct kiocb *msg_iocb ;
};
struct __anonstruct_sync_serial_settings_219 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_219 sync_serial_settings;
struct __anonstruct_te1_settings_220 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_220 te1_settings;
struct __anonstruct_raw_hdlc_proto_221 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_221 raw_hdlc_proto;
struct __anonstruct_fr_proto_222 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_222 fr_proto;
struct __anonstruct_fr_proto_pvc_223 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_223 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_224 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_224 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_225 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_225 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_226 {
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
   union __anonunion_ifs_ifsu_226 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_227 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_228 {
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
   union __anonunion_ifr_ifrn_227 ifr_ifrn ;
   union __anonunion_ifr_ifru_228 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_233 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_232 {
   struct __anonstruct____missing_field_name_233 __annonCompField59 ;
};
struct lockref {
   union __anonunion____missing_field_name_232 __annonCompField60 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_235 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_234 {
   struct __anonstruct____missing_field_name_235 __annonCompField61 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_234 __annonCompField62 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_236 {
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
   union __anonunion_d_u_236 d_u ;
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
struct __anonstruct____missing_field_name_240 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_239 {
   struct __anonstruct____missing_field_name_240 __annonCompField63 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_239 __annonCompField64 ;
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
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct export_operations;
struct poll_table_struct;
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
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_244 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_244 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_245 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_245 __annonCompField66 ;
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
union __anonunion____missing_field_name_248 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_249 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_250 {
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
   union __anonunion____missing_field_name_248 __annonCompField67 ;
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
   union __anonunion____missing_field_name_249 __annonCompField68 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_250 __annonCompField69 ;
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
union __anonunion_f_u_251 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_251 f_u ;
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
struct net;
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
struct __anonstruct_afs_253 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_252 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_253 afs ;
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
   union __anonunion_fl_u_252 fl_u ;
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
typedef s32 compat_time_t;
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
enum ldv_23644 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_23644 socket_state;
struct socket_wq {
   wait_queue_head_t wait ;
   struct fasync_struct *fasync_list ;
   struct callback_head rcu ;
};
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
   int (*sendmsg)(struct socket * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct socket * , struct msghdr * , size_t , int ) ;
   int (*mmap)(struct file * , struct socket * , struct vm_area_struct * ) ;
   ssize_t (*sendpage)(struct socket * , struct page * , int , size_t , int ) ;
   ssize_t (*splice_read)(struct socket * , loff_t * , struct pipe_inode_info * ,
                          size_t , unsigned int ) ;
   int (*set_peek_off)(struct sock * , int ) ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct in6_addr;
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
union __anonunion_in6_u_268 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_268 in6_u ;
};
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
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
struct napi_struct;
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
   union __anonunion____missing_field_name_273 __annonCompField73 ;
   union __anonunion____missing_field_name_274 __annonCompField74 ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct____missing_field_name_277 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_276 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_277 __annonCompField75 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_276 __annonCompField76 ;
};
union __anonunion____missing_field_name_280 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_279 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_280 __annonCompField77 ;
};
union __anonunion____missing_field_name_278 {
   struct __anonstruct____missing_field_name_279 __annonCompField78 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_282 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_281 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_282 __annonCompField80 ;
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
   union __anonunion____missing_field_name_278 __annonCompField79 ;
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
   union __anonunion____missing_field_name_281 __annonCompField81 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_283 __annonCompField82 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_284 __annonCompField83 ;
   union __anonunion____missing_field_name_285 __annonCompField84 ;
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
struct dst_entry;
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
   char erom_version[32U] ;
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
struct ethtool_tunable {
   __u32 cmd ;
   __u32 id ;
   __u32 type_id ;
   __u32 len ;
   void *data[0U] ;
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
   int (*get_rxfh)(struct net_device * , u32 * , u8 * , u8 * ) ;
   int (*set_rxfh)(struct net_device * , u32 const * , u8 const * , u8 const ) ;
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
   int (*get_tunable)(struct net_device * , struct ethtool_tunable const * , void * ) ;
   int (*set_tunable)(struct net_device * , struct ethtool_tunable const * , void const * ) ;
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
   unsigned long mibs[9U] ;
};
struct linux_mib {
   unsigned long mibs[115U] ;
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
   struct percpu_counter mem ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
   bool warned ;
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
   bool fib_offload_disabled ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct sock *mc_autojoin_sk ;
   struct inet_peer_base *peers ;
   struct sock **tcp_sk ;
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
   int sysctl_tcp_ecn_fallback ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   int sysctl_ip_nonlocal_bind ;
   int sysctl_fwmark_reflect ;
   int sysctl_tcp_fwmark_accept ;
   int sysctl_tcp_mtu_probing ;
   int sysctl_tcp_base_mss ;
   int sysctl_tcp_probe_threshold ;
   u32 sysctl_tcp_probe_interval ;
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
   int auto_flowlabels ;
   int icmpv6_time ;
   int anycast_src_echo_reply ;
   int fwmark_reflect ;
   int idgen_retries ;
   int idgen_delay ;
   int flowlabel_state_ranges ;
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
   struct sock *mc_autojoin_sk ;
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
   atomic_t dev_addr_genid ;
   atomic_t fib6_sernum ;
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
   bool clusterip_deprecated_warning ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
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
   struct delayed_work ecache_dwork ;
   bool ecache_dwork_pending ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
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
   struct nft_af_info *netdev ;
   unsigned int base_seq ;
   u8 gencursor ;
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
   u8 dbits4 ;
   u8 sbits4 ;
   u8 dbits6 ;
   u8 sbits6 ;
};
struct xfrm_policy_hthresh {
   struct work_struct work ;
   seqlock_t lock ;
   u8 lbits4 ;
   u8 rbits4 ;
   u8 lbits6 ;
   u8 rbits6 ;
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
   struct hlist_head policy_inexact[3U] ;
   struct xfrm_policy_hash policy_bydst[3U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct xfrm_policy_hthresh policy_hthresh ;
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
struct mpls_route;
struct netns_mpls {
   size_t platform_labels ;
   struct mpls_route **platform_label ;
   struct ctl_table_header *ctl ;
};
struct proc_ns_operations;
struct ns_common {
   atomic_long_t stashed ;
   struct proc_ns_operations const *ops ;
   unsigned int inum ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   atomic64_t cookie_gen ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   spinlock_t nsid_lock ;
   struct idr netns_ids ;
   struct ns_common ns ;
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
   struct netns_mpls mpls ;
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
};
struct __anonstruct_possible_net_t_302 {
   struct net *net ;
};
typedef struct __anonstruct_possible_net_t_302 possible_net_t;
typedef unsigned long kernel_ulong_t;
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
struct mii_if_info {
   int phy_id ;
   int advertising ;
   int phy_id_mask ;
   int reg_num_mask ;
   unsigned char full_duplex : 1 ;
   unsigned char force_media : 1 ;
   unsigned char supports_gmii : 1 ;
   struct net_device *dev ;
   int (*mdio_read)(struct net_device * , int , int ) ;
   void (*mdio_write)(struct net_device * , int , int , int ) ;
};
enum ldv_27928 {
    PHY_INTERFACE_MODE_NA = 0,
    PHY_INTERFACE_MODE_MII = 1,
    PHY_INTERFACE_MODE_GMII = 2,
    PHY_INTERFACE_MODE_SGMII = 3,
    PHY_INTERFACE_MODE_TBI = 4,
    PHY_INTERFACE_MODE_REVMII = 5,
    PHY_INTERFACE_MODE_RMII = 6,
    PHY_INTERFACE_MODE_RGMII = 7,
    PHY_INTERFACE_MODE_RGMII_ID = 8,
    PHY_INTERFACE_MODE_RGMII_RXID = 9,
    PHY_INTERFACE_MODE_RGMII_TXID = 10,
    PHY_INTERFACE_MODE_RTBI = 11,
    PHY_INTERFACE_MODE_SMII = 12,
    PHY_INTERFACE_MODE_XGMII = 13,
    PHY_INTERFACE_MODE_MOCA = 14,
    PHY_INTERFACE_MODE_QSGMII = 15,
    PHY_INTERFACE_MODE_MAX = 16
} ;
typedef enum ldv_27928 phy_interface_t;
enum ldv_27982 {
    MDIOBUS_ALLOCATED = 1,
    MDIOBUS_REGISTERED = 2,
    MDIOBUS_UNREGISTERED = 3,
    MDIOBUS_RELEASED = 4
} ;
struct phy_device;
struct mii_bus {
   char const *name ;
   char id[17U] ;
   void *priv ;
   int (*read)(struct mii_bus * , int , int ) ;
   int (*write)(struct mii_bus * , int , int , u16 ) ;
   int (*reset)(struct mii_bus * ) ;
   struct mutex mdio_lock ;
   struct device *parent ;
   enum ldv_27982 state ;
   struct device dev ;
   struct phy_device *phy_map[32U] ;
   u32 phy_mask ;
   u32 phy_ignore_ta_mask ;
   int *irq ;
};
enum phy_state {
    PHY_DOWN = 0,
    PHY_STARTING = 1,
    PHY_READY = 2,
    PHY_PENDING = 3,
    PHY_UP = 4,
    PHY_AN = 5,
    PHY_RUNNING = 6,
    PHY_NOLINK = 7,
    PHY_FORCING = 8,
    PHY_CHANGELINK = 9,
    PHY_HALTED = 10,
    PHY_RESUMING = 11
} ;
struct phy_c45_device_ids {
   u32 devices_in_package ;
   u32 device_ids[8U] ;
};
struct phy_driver;
struct phy_device {
   struct phy_driver *drv ;
   struct mii_bus *bus ;
   struct device dev ;
   u32 phy_id ;
   struct phy_c45_device_ids c45_ids ;
   bool is_c45 ;
   bool is_internal ;
   bool has_fixups ;
   bool suspended ;
   enum phy_state state ;
   u32 dev_flags ;
   phy_interface_t interface ;
   int addr ;
   int speed ;
   int duplex ;
   int pause ;
   int asym_pause ;
   int link ;
   u32 interrupts ;
   u32 supported ;
   u32 advertising ;
   u32 lp_advertising ;
   int autoneg ;
   int link_timeout ;
   int irq ;
   void *priv ;
   struct work_struct phy_queue ;
   struct delayed_work state_queue ;
   atomic_t irq_disable ;
   struct mutex lock ;
   struct net_device *attached_dev ;
   void (*adjust_link)(struct net_device * ) ;
};
struct phy_driver {
   u32 phy_id ;
   char *name ;
   unsigned int phy_id_mask ;
   u32 features ;
   u32 flags ;
   void const *driver_data ;
   int (*soft_reset)(struct phy_device * ) ;
   int (*config_init)(struct phy_device * ) ;
   int (*probe)(struct phy_device * ) ;
   int (*suspend)(struct phy_device * ) ;
   int (*resume)(struct phy_device * ) ;
   int (*config_aneg)(struct phy_device * ) ;
   int (*aneg_done)(struct phy_device * ) ;
   int (*read_status)(struct phy_device * ) ;
   int (*ack_interrupt)(struct phy_device * ) ;
   int (*config_intr)(struct phy_device * ) ;
   int (*did_interrupt)(struct phy_device * ) ;
   void (*remove)(struct phy_device * ) ;
   int (*match_phy_device)(struct phy_device * ) ;
   int (*ts_info)(struct phy_device * , struct ethtool_ts_info * ) ;
   int (*hwtstamp)(struct phy_device * , struct ifreq * ) ;
   bool (*rxtstamp)(struct phy_device * , struct sk_buff * , int ) ;
   void (*txtstamp)(struct phy_device * , struct sk_buff * , int ) ;
   int (*set_wol)(struct phy_device * , struct ethtool_wolinfo * ) ;
   void (*get_wol)(struct phy_device * , struct ethtool_wolinfo * ) ;
   void (*link_change_notify)(struct phy_device * ) ;
   int (*read_mmd_indirect)(struct phy_device * , int , int , int ) ;
   void (*write_mmd_indirect)(struct phy_device * , int , int , int , u32 ) ;
   int (*module_info)(struct phy_device * , struct ethtool_modinfo * ) ;
   int (*module_eeprom)(struct phy_device * , struct ethtool_eeprom * , u8 * ) ;
   struct device_driver driver ;
};
struct fixed_phy_status {
   int link ;
   int speed ;
   int duplex ;
   int pause ;
   int asym_pause ;
};
enum dsa_tag_protocol {
    DSA_TAG_PROTO_NONE = 0,
    DSA_TAG_PROTO_DSA = 1,
    DSA_TAG_PROTO_TRAILER = 2,
    DSA_TAG_PROTO_EDSA = 3,
    DSA_TAG_PROTO_BRCM = 4
} ;
struct dsa_chip_data {
   struct device *host_dev ;
   int sw_addr ;
   int eeprom_len ;
   struct device_node *of_node ;
   char *port_names[12U] ;
   struct device_node *port_dn[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   struct net_device *of_netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct packet_type;
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   int (*rcv)(struct sk_buff * , struct net_device * , struct packet_type * , struct net_device * ) ;
   enum dsa_tag_protocol tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   enum dsa_tag_protocol tag_protocol ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct device *master_dev ;
   char hwmon_name[24U] ;
   struct device *hwmon_dev ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   u32 phys_mii_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   enum dsa_tag_protocol tag_protocol ;
   int priv_size ;
   char *(*probe)(struct device * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   u32 (*get_phy_flags)(struct dsa_switch * , int ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*adjust_link)(struct dsa_switch * , int , struct phy_device * ) ;
   void (*fixed_link_update)(struct dsa_switch * , int , struct fixed_phy_status * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
   void (*get_wol)(struct dsa_switch * , int , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct dsa_switch * , int , struct ethtool_wolinfo * ) ;
   int (*suspend)(struct dsa_switch * ) ;
   int (*resume)(struct dsa_switch * ) ;
   int (*port_enable)(struct dsa_switch * , int , struct phy_device * ) ;
   void (*port_disable)(struct dsa_switch * , int , struct phy_device * ) ;
   int (*set_eee)(struct dsa_switch * , int , struct phy_device * , struct ethtool_eee * ) ;
   int (*get_eee)(struct dsa_switch * , int , struct ethtool_eee * ) ;
   int (*get_temp)(struct dsa_switch * , int * ) ;
   int (*get_temp_limit)(struct dsa_switch * , int * ) ;
   int (*set_temp_limit)(struct dsa_switch * , int ) ;
   int (*get_temp_alarm)(struct dsa_switch * , bool * ) ;
   int (*get_eeprom_len)(struct dsa_switch * ) ;
   int (*get_eeprom)(struct dsa_switch * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct dsa_switch * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_regs_len)(struct dsa_switch * , int ) ;
   void (*get_regs)(struct dsa_switch * , int , struct ethtool_regs * , void * ) ;
   int (*port_join_bridge)(struct dsa_switch * , int , u32 ) ;
   int (*port_leave_bridge)(struct dsa_switch * , int , u32 ) ;
   int (*port_stp_update)(struct dsa_switch * , int , u8 ) ;
   int (*fdb_add)(struct dsa_switch * , int , unsigned char const * , u16 ) ;
   int (*fdb_del)(struct dsa_switch * , int , unsigned char const * , u16 ) ;
   int (*fdb_getnext)(struct dsa_switch * , int , unsigned char * , bool * ) ;
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
struct ieee_qcn {
   __u8 rpg_enable[8U] ;
   __u32 rppp_max_rps[8U] ;
   __u32 rpg_time_reset[8U] ;
   __u32 rpg_byte_reset[8U] ;
   __u32 rpg_threshold[8U] ;
   __u32 rpg_max_rate[8U] ;
   __u32 rpg_ai_rate[8U] ;
   __u32 rpg_hai_rate[8U] ;
   __u32 rpg_gd[8U] ;
   __u32 rpg_min_dec_fac[8U] ;
   __u32 rpg_min_rate[8U] ;
   __u32 cndd_state_machine[8U] ;
};
struct ieee_qcn_stats {
   __u64 rppp_rp_centiseconds[8U] ;
   __u32 rppp_created_rps[8U] ;
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
   int (*ieee_getqcn)(struct net_device * , struct ieee_qcn * ) ;
   int (*ieee_setqcn)(struct net_device * , struct ieee_qcn * ) ;
   int (*ieee_getqcnstats)(struct net_device * , struct ieee_qcn_stats * ) ;
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
   int (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   int (*getapp)(struct net_device * , u8 , u16 ) ;
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
struct ifla_vf_stats {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 broadcast ;
   __u64 multicast ;
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
   __u32 rss_query_en ;
};
struct netpoll_info;
struct wpan_dev;
struct mpls_dev;
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
   struct hrtimer timer ;
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
   unsigned long tx_maxrate ;
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
struct netdev_phys_item_id {
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
   int (*ndo_get_vf_stats)(struct net_device * , int , struct ifla_vf_stats * ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_set_vf_rss_query_en)(struct net_device * , int , bool ) ;
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
                      u16 , u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       struct net_device * , int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * , u16 ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 , int ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * , u16 ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_item_id * ) ;
   int (*ndo_get_phys_port_name)(struct net_device * , char * , size_t ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
   int (*ndo_get_lock_subclass)(struct net_device * ) ;
   netdev_features_t (*ndo_features_check)(struct sk_buff * , struct net_device * ,
                                           netdev_features_t ) ;
   int (*ndo_set_tx_maxrate)(struct net_device * , int , u32 ) ;
   int (*ndo_get_iflink)(struct net_device const * ) ;
};
struct __anonstruct_adj_list_315 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_316 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct switchdev_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct tcf_proto;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion____missing_field_name_317 {
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
   atomic_t carrier_changes ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct list_head ptype_all ;
   struct list_head ptype_specific ;
   struct __anonstruct_adj_list_315 adj_list ;
   struct __anonstruct_all_adj_list_316 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int group ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   atomic_long_t tx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct switchdev_ops const *switchdev_ops ;
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
   unsigned char name_assign_type ;
   bool uc_promisc ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
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
   struct wpan_dev *ieee802154_ptr ;
   struct mpls_dev *mpls_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   unsigned long gro_flush_timeout ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct tcf_proto *ingress_cl_list ;
   struct netdev_queue *ingress_queue ;
   struct list_head nf_hooks_ingress ;
   unsigned char broadcast[32U] ;
   struct cpu_rmap *rx_cpu_rmap ;
   struct hlist_node index_hlist ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   int watchdog_timeo ;
   struct xps_dev_maps *xps_maps ;
   unsigned long trans_start ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct list_head link_watch_list ;
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   possible_net_t nd_net ;
   union __anonunion____missing_field_name_317 __annonCompField94 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   u16 gso_min_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
};
struct packet_type {
   __be16 type ;
   struct net_device *dev ;
   int (*func)(struct sk_buff * , struct net_device * , struct packet_type * , struct net_device * ) ;
   bool (*id_match)(struct packet_type * , struct sock * ) ;
   void *af_packet_priv ;
   struct list_head list ;
};
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
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
struct usb_driver;
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
    NL80211_IFTYPE_OCB = 11,
    NUM_NL80211_IFTYPES = 12,
    NL80211_IFTYPE_MAX = 11
} ;
struct nl80211_sta_flag_update {
   __u32 mask ;
   __u32 set ;
};
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
enum nl80211_mesh_power_mode {
    NL80211_MESH_POWER_UNKNOWN = 0,
    NL80211_MESH_POWER_ACTIVE = 1,
    NL80211_MESH_POWER_LIGHT_SLEEP = 2,
    NL80211_MESH_POWER_DEEP_SLEEP = 3,
    __NL80211_MESH_POWER_AFTER_LAST = 4,
    NL80211_MESH_POWER_MAX = 3
} ;
enum nl80211_ac {
    NL80211_AC_VO = 0,
    NL80211_AC_VI = 1,
    NL80211_AC_BE = 2,
    NL80211_AC_BK = 3,
    NL80211_NUM_ACS = 4
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
enum nl80211_bss_scan_width {
    NL80211_BSS_CHAN_WIDTH_20 = 0,
    NL80211_BSS_CHAN_WIDTH_10 = 1,
    NL80211_BSS_CHAN_WIDTH_5 = 2
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
enum nl80211_key_type {
    NL80211_KEYTYPE_GROUP = 0,
    NL80211_KEYTYPE_PAIRWISE = 1,
    NL80211_KEYTYPE_PEERKEY = 2,
    NUM_NL80211_KEYTYPES = 3
} ;
enum nl80211_mfp {
    NL80211_MFP_NO = 0,
    NL80211_MFP_REQUIRED = 1
} ;
enum nl80211_txrate_gi {
    NL80211_TXRATE_DEFAULT_GI = 0,
    NL80211_TXRATE_FORCE_SGI = 1,
    NL80211_TXRATE_FORCE_LGI = 2
} ;
enum nl80211_cqm_rssi_threshold_event {
    NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW = 0,
    NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH = 1,
    NL80211_CQM_RSSI_BEACON_LOSS_EVENT = 2
} ;
enum nl80211_tx_power_setting {
    NL80211_TX_POWER_AUTOMATIC = 0,
    NL80211_TX_POWER_LIMITED = 1,
    NL80211_TX_POWER_FIXED = 2
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
enum nl80211_coalesce_condition {
    NL80211_COALESCE_CONDITION_MATCH = 0,
    NL80211_COALESCE_CONDITION_NO_MATCH = 1
} ;
enum nl80211_hidden_ssid {
    NL80211_HIDDEN_SSID_NOT_IN_USE = 0,
    NL80211_HIDDEN_SSID_ZERO_LEN = 1,
    NL80211_HIDDEN_SSID_ZERO_CONTENTS = 2
} ;
enum nl80211_tdls_operation {
    NL80211_TDLS_DISCOVERY_REQ = 0,
    NL80211_TDLS_SETUP = 1,
    NL80211_TDLS_TEARDOWN = 2,
    NL80211_TDLS_ENABLE_LINK = 3,
    NL80211_TDLS_DISABLE_LINK = 4
} ;
enum nl80211_acl_policy {
    NL80211_ACL_POLICY_ACCEPT_UNLESS_LISTED = 0,
    NL80211_ACL_POLICY_DENY_UNLESS_LISTED = 1
} ;
enum nl80211_smps_mode {
    NL80211_SMPS_OFF = 0,
    NL80211_SMPS_STATIC = 1,
    NL80211_SMPS_DYNAMIC = 2,
    __NL80211_SMPS_AFTER_LAST = 3,
    NL80211_SMPS_MAX = 2
} ;
enum nl80211_dfs_state {
    NL80211_DFS_USABLE = 0,
    NL80211_DFS_UNAVAILABLE = 1,
    NL80211_DFS_AVAILABLE = 2
} ;
enum nl80211_crit_proto_id {
    NL80211_CRIT_PROTO_UNSPEC = 0,
    NL80211_CRIT_PROTO_DHCP = 1,
    NL80211_CRIT_PROTO_EAPOL = 2,
    NL80211_CRIT_PROTO_APIPA = 3,
    NUM_NL80211_CRIT_PROTO = 4
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
   char alpha2[3U] ;
   enum nl80211_dfs_regions dfs_region ;
   struct ieee80211_reg_rule reg_rules[] ;
};
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
struct vif_params {
   int use_4addr ;
   u8 macaddr[6U] ;
};
struct key_params {
   u8 const *key ;
   u8 const *seq ;
   int key_len ;
   int seq_len ;
   u32 cipher ;
};
struct cfg80211_chan_def {
   struct ieee80211_channel *chan ;
   enum nl80211_chan_width width ;
   u32 center_freq1 ;
   u32 center_freq2 ;
};
struct survey_info {
   struct ieee80211_channel *channel ;
   u64 time ;
   u64 time_busy ;
   u64 time_ext_busy ;
   u64 time_rx ;
   u64 time_tx ;
   u64 time_scan ;
   u32 filled ;
   s8 noise ;
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
struct cfg80211_beacon_data {
   u8 const *head ;
   u8 const *tail ;
   u8 const *beacon_ies ;
   u8 const *proberesp_ies ;
   u8 const *assocresp_ies ;
   u8 const *probe_resp ;
   size_t head_len ;
   size_t tail_len ;
   size_t beacon_ies_len ;
   size_t proberesp_ies_len ;
   size_t assocresp_ies_len ;
   size_t probe_resp_len ;
};
struct mac_address {
   u8 addr[6U] ;
};
struct cfg80211_acl_data {
   enum nl80211_acl_policy acl_policy ;
   int n_acl_entries ;
   struct mac_address mac_addrs[] ;
};
struct cfg80211_ap_settings {
   struct cfg80211_chan_def chandef ;
   struct cfg80211_beacon_data beacon ;
   int beacon_interval ;
   int dtim_period ;
   u8 const *ssid ;
   size_t ssid_len ;
   enum nl80211_hidden_ssid hidden_ssid ;
   struct cfg80211_crypto_settings crypto ;
   bool privacy ;
   enum nl80211_auth_type auth_type ;
   enum nl80211_smps_mode smps_mode ;
   int inactivity_timeout ;
   u8 p2p_ctwindow ;
   bool p2p_opp_ps ;
   struct cfg80211_acl_data const *acl ;
};
struct cfg80211_csa_settings {
   struct cfg80211_chan_def chandef ;
   struct cfg80211_beacon_data beacon_csa ;
   u16 const *counter_offsets_beacon ;
   u16 const *counter_offsets_presp ;
   unsigned int n_counter_offsets_beacon ;
   unsigned int n_counter_offsets_presp ;
   struct cfg80211_beacon_data beacon_after ;
   bool radar_required ;
   bool block_tx ;
   u8 count ;
};
struct station_parameters {
   u8 const *supported_rates ;
   struct net_device *vlan ;
   u32 sta_flags_mask ;
   u32 sta_flags_set ;
   u32 sta_modify_mask ;
   int listen_interval ;
   u16 aid ;
   u8 supported_rates_len ;
   u8 plink_action ;
   u8 plink_state ;
   struct ieee80211_ht_cap const *ht_capa ;
   struct ieee80211_vht_cap const *vht_capa ;
   u8 uapsd_queues ;
   u8 max_sp ;
   enum nl80211_mesh_power_mode local_pm ;
   u16 capability ;
   u8 const *ext_capab ;
   u8 ext_capab_len ;
   u8 const *supported_channels ;
   u8 supported_channels_len ;
   u8 const *supported_oper_classes ;
   u8 supported_oper_classes_len ;
   u8 opmode_notif ;
   bool opmode_notif_used ;
};
struct station_del_parameters {
   u8 const *mac ;
   u8 subtype ;
   u16 reason_code ;
};
struct rate_info {
   u8 flags ;
   u8 mcs ;
   u16 legacy ;
   u8 nss ;
   u8 bw ;
};
struct sta_bss_parameters {
   u8 flags ;
   u8 dtim_period ;
   u16 beacon_interval ;
};
struct cfg80211_tid_stats {
   u32 filled ;
   u64 rx_msdu ;
   u64 tx_msdu ;
   u64 tx_msdu_retries ;
   u64 tx_msdu_failed ;
};
struct station_info {
   u32 filled ;
   u32 connected_time ;
   u32 inactive_time ;
   u64 rx_bytes ;
   u64 tx_bytes ;
   u16 llid ;
   u16 plid ;
   u8 plink_state ;
   s8 signal ;
   s8 signal_avg ;
   u8 chains ;
   s8 chain_signal[4U] ;
   s8 chain_signal_avg[4U] ;
   struct rate_info txrate ;
   struct rate_info rxrate ;
   u32 rx_packets ;
   u32 tx_packets ;
   u32 tx_retries ;
   u32 tx_failed ;
   u32 rx_dropped_misc ;
   struct sta_bss_parameters bss_param ;
   struct nl80211_sta_flag_update sta_flags ;
   int generation ;
   u8 const *assoc_req_ies ;
   size_t assoc_req_ies_len ;
   u32 beacon_loss_count ;
   s64 t_offset ;
   enum nl80211_mesh_power_mode local_pm ;
   enum nl80211_mesh_power_mode peer_pm ;
   enum nl80211_mesh_power_mode nonpeer_pm ;
   u32 expected_throughput ;
   u64 rx_beacon ;
   u8 rx_beacon_signal_avg ;
   struct cfg80211_tid_stats pertid[17U] ;
};
struct mpath_info {
   u32 filled ;
   u32 frame_qlen ;
   u32 sn ;
   u32 metric ;
   u32 exptime ;
   u32 discovery_timeout ;
   u8 discovery_retries ;
   u8 flags ;
   int generation ;
};
struct bss_parameters {
   int use_cts_prot ;
   int use_short_preamble ;
   int use_short_slot_time ;
   u8 const *basic_rates ;
   u8 basic_rates_len ;
   int ap_isolate ;
   int ht_opmode ;
   s8 p2p_ctwindow ;
   s8 p2p_opp_ps ;
};
struct mesh_config {
   u16 dot11MeshRetryTimeout ;
   u16 dot11MeshConfirmTimeout ;
   u16 dot11MeshHoldingTimeout ;
   u16 dot11MeshMaxPeerLinks ;
   u8 dot11MeshMaxRetries ;
   u8 dot11MeshTTL ;
   u8 element_ttl ;
   bool auto_open_plinks ;
   u32 dot11MeshNbrOffsetMaxNeighbor ;
   u8 dot11MeshHWMPmaxPREQretries ;
   u32 path_refresh_time ;
   u16 min_discovery_timeout ;
   u32 dot11MeshHWMPactivePathTimeout ;
   u16 dot11MeshHWMPpreqMinInterval ;
   u16 dot11MeshHWMPperrMinInterval ;
   u16 dot11MeshHWMPnetDiameterTraversalTime ;
   u8 dot11MeshHWMPRootMode ;
   u16 dot11MeshHWMPRannInterval ;
   bool dot11MeshGateAnnouncementProtocol ;
   bool dot11MeshForwarding ;
   s32 rssi_threshold ;
   u16 ht_opmode ;
   u32 dot11MeshHWMPactivePathToRootTimeout ;
   u16 dot11MeshHWMProotInterval ;
   u16 dot11MeshHWMPconfirmationInterval ;
   enum nl80211_mesh_power_mode power_mode ;
   u16 dot11MeshAwakeWindowDuration ;
   u32 plink_timeout ;
};
struct mesh_setup {
   struct cfg80211_chan_def chandef ;
   u8 const *mesh_id ;
   u8 mesh_id_len ;
   u8 sync_method ;
   u8 path_sel_proto ;
   u8 path_metric ;
   u8 auth_id ;
   u8 const *ie ;
   u8 ie_len ;
   bool is_authenticated ;
   bool is_secure ;
   bool user_mpm ;
   u8 dtim_period ;
   u16 beacon_interval ;
   int mcast_rate[3U] ;
   u32 basic_rates ;
};
struct ocb_setup {
   struct cfg80211_chan_def chandef ;
};
struct ieee80211_txq_params {
   enum nl80211_ac ac ;
   u16 txop ;
   u16 cwmin ;
   u16 cwmax ;
   u8 aifs ;
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
   u8 mac_addr[6U] ;
   u8 mac_addr_mask[6U] ;
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
   u32 delay ;
   u8 mac_addr[6U] ;
   u8 mac_addr_mask[6U] ;
   struct wiphy *wiphy ;
   struct net_device *dev ;
   unsigned long scan_start ;
   struct callback_head callback_head ;
   u32 owner_nlportid ;
   struct ieee80211_channel *channels[0U] ;
};
enum cfg80211_signal_type {
    CFG80211_SIGNAL_TYPE_NONE = 0,
    CFG80211_SIGNAL_TYPE_MBM = 1,
    CFG80211_SIGNAL_TYPE_UNSPEC = 2
} ;
struct cfg80211_bss_ies {
   u64 tsf ;
   struct callback_head callback_head ;
   int len ;
   bool from_beacon ;
   u8 data[] ;
};
struct cfg80211_bss {
   struct ieee80211_channel *channel ;
   enum nl80211_bss_scan_width scan_width ;
   struct cfg80211_bss_ies const *ies ;
   struct cfg80211_bss_ies const *beacon_ies ;
   struct cfg80211_bss_ies const *proberesp_ies ;
   struct cfg80211_bss *hidden_beacon_bss ;
   s32 signal ;
   u16 beacon_interval ;
   u16 capability ;
   u8 bssid[6U] ;
   u8 priv[0U] ;
};
struct cfg80211_auth_request {
   struct cfg80211_bss *bss ;
   u8 const *ie ;
   size_t ie_len ;
   enum nl80211_auth_type auth_type ;
   u8 const *key ;
   u8 key_len ;
   u8 key_idx ;
   u8 const *sae_data ;
   size_t sae_data_len ;
};
struct cfg80211_assoc_request {
   struct cfg80211_bss *bss ;
   u8 const *ie ;
   u8 const *prev_bssid ;
   size_t ie_len ;
   struct cfg80211_crypto_settings crypto ;
   bool use_mfp ;
   u32 flags ;
   struct ieee80211_ht_cap ht_capa ;
   struct ieee80211_ht_cap ht_capa_mask ;
   struct ieee80211_vht_cap vht_capa ;
   struct ieee80211_vht_cap vht_capa_mask ;
};
struct cfg80211_deauth_request {
   u8 const *bssid ;
   u8 const *ie ;
   size_t ie_len ;
   u16 reason_code ;
   bool local_state_change ;
};
struct cfg80211_disassoc_request {
   struct cfg80211_bss *bss ;
   u8 const *ie ;
   size_t ie_len ;
   u16 reason_code ;
   bool local_state_change ;
};
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
struct __anonstruct_control_365 {
   u32 legacy ;
   u8 ht_mcs[10U] ;
   u16 vht_mcs[8U] ;
   enum nl80211_txrate_gi gi ;
};
struct cfg80211_bitrate_mask {
   struct __anonstruct_control_365 control[3U] ;
};
struct cfg80211_pmksa {
   u8 const *bssid ;
   u8 const *pmkid ;
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
   struct cfg80211_sched_scan_request *nd_config ;
};
struct cfg80211_coalesce_rules {
   int delay ;
   enum nl80211_coalesce_condition condition ;
   struct cfg80211_pkt_pattern *patterns ;
   int n_patterns ;
};
struct cfg80211_coalesce {
   struct cfg80211_coalesce_rules *rules ;
   int n_rules ;
};
struct cfg80211_gtk_rekey_data {
   u8 const *kek ;
   u8 const *kck ;
   u8 const *replay_ctr ;
};
struct cfg80211_update_ft_ies_params {
   u16 md ;
   u8 const *ie ;
   size_t ie_len ;
};
struct cfg80211_mgmt_tx_params {
   struct ieee80211_channel *chan ;
   bool offchan ;
   unsigned int wait ;
   u8 const *buf ;
   size_t len ;
   bool no_cck ;
   bool dont_wait_for_ack ;
   int n_csa_offsets ;
   u16 const *csa_offsets ;
};
struct cfg80211_dscp_exception {
   u8 dscp ;
   u8 up ;
};
struct cfg80211_dscp_range {
   u8 low ;
   u8 high ;
};
struct cfg80211_qos_map {
   u8 num_des ;
   struct cfg80211_dscp_exception dscp_exception[21U] ;
   struct cfg80211_dscp_range up[8U] ;
};
struct cfg80211_ops {
   int (*suspend)(struct wiphy * , struct cfg80211_wowlan * ) ;
   int (*resume)(struct wiphy * ) ;
   void (*set_wakeup)(struct wiphy * , bool ) ;
   struct wireless_dev *(*add_virtual_intf)(struct wiphy * , char const * , unsigned char ,
                                            enum nl80211_iftype , u32 * , struct vif_params * ) ;
   int (*del_virtual_intf)(struct wiphy * , struct wireless_dev * ) ;
   int (*change_virtual_intf)(struct wiphy * , struct net_device * , enum nl80211_iftype ,
                              u32 * , struct vif_params * ) ;
   int (*add_key)(struct wiphy * , struct net_device * , u8 , bool , u8 const * ,
                  struct key_params * ) ;
   int (*get_key)(struct wiphy * , struct net_device * , u8 , bool , u8 const * ,
                  void * , void (*)(void * , struct key_params * ) ) ;
   int (*del_key)(struct wiphy * , struct net_device * , u8 , bool , u8 const * ) ;
   int (*set_default_key)(struct wiphy * , struct net_device * , u8 , bool , bool ) ;
   int (*set_default_mgmt_key)(struct wiphy * , struct net_device * , u8 ) ;
   int (*start_ap)(struct wiphy * , struct net_device * , struct cfg80211_ap_settings * ) ;
   int (*change_beacon)(struct wiphy * , struct net_device * , struct cfg80211_beacon_data * ) ;
   int (*stop_ap)(struct wiphy * , struct net_device * ) ;
   int (*add_station)(struct wiphy * , struct net_device * , u8 const * , struct station_parameters * ) ;
   int (*del_station)(struct wiphy * , struct net_device * , struct station_del_parameters * ) ;
   int (*change_station)(struct wiphy * , struct net_device * , u8 const * , struct station_parameters * ) ;
   int (*get_station)(struct wiphy * , struct net_device * , u8 const * , struct station_info * ) ;
   int (*dump_station)(struct wiphy * , struct net_device * , int , u8 * , struct station_info * ) ;
   int (*add_mpath)(struct wiphy * , struct net_device * , u8 const * , u8 const * ) ;
   int (*del_mpath)(struct wiphy * , struct net_device * , u8 const * ) ;
   int (*change_mpath)(struct wiphy * , struct net_device * , u8 const * , u8 const * ) ;
   int (*get_mpath)(struct wiphy * , struct net_device * , u8 * , u8 * , struct mpath_info * ) ;
   int (*dump_mpath)(struct wiphy * , struct net_device * , int , u8 * , u8 * , struct mpath_info * ) ;
   int (*get_mpp)(struct wiphy * , struct net_device * , u8 * , u8 * , struct mpath_info * ) ;
   int (*dump_mpp)(struct wiphy * , struct net_device * , int , u8 * , u8 * , struct mpath_info * ) ;
   int (*get_mesh_config)(struct wiphy * , struct net_device * , struct mesh_config * ) ;
   int (*update_mesh_config)(struct wiphy * , struct net_device * , u32 , struct mesh_config const * ) ;
   int (*join_mesh)(struct wiphy * , struct net_device * , struct mesh_config const * ,
                    struct mesh_setup const * ) ;
   int (*leave_mesh)(struct wiphy * , struct net_device * ) ;
   int (*join_ocb)(struct wiphy * , struct net_device * , struct ocb_setup * ) ;
   int (*leave_ocb)(struct wiphy * , struct net_device * ) ;
   int (*change_bss)(struct wiphy * , struct net_device * , struct bss_parameters * ) ;
   int (*set_txq_params)(struct wiphy * , struct net_device * , struct ieee80211_txq_params * ) ;
   int (*libertas_set_mesh_channel)(struct wiphy * , struct net_device * , struct ieee80211_channel * ) ;
   int (*set_monitor_channel)(struct wiphy * , struct cfg80211_chan_def * ) ;
   int (*scan)(struct wiphy * , struct cfg80211_scan_request * ) ;
   int (*auth)(struct wiphy * , struct net_device * , struct cfg80211_auth_request * ) ;
   int (*assoc)(struct wiphy * , struct net_device * , struct cfg80211_assoc_request * ) ;
   int (*deauth)(struct wiphy * , struct net_device * , struct cfg80211_deauth_request * ) ;
   int (*disassoc)(struct wiphy * , struct net_device * , struct cfg80211_disassoc_request * ) ;
   int (*connect)(struct wiphy * , struct net_device * , struct cfg80211_connect_params * ) ;
   int (*disconnect)(struct wiphy * , struct net_device * , u16 ) ;
   int (*join_ibss)(struct wiphy * , struct net_device * , struct cfg80211_ibss_params * ) ;
   int (*leave_ibss)(struct wiphy * , struct net_device * ) ;
   int (*set_mcast_rate)(struct wiphy * , struct net_device * , int * ) ;
   int (*set_wiphy_params)(struct wiphy * , u32 ) ;
   int (*set_tx_power)(struct wiphy * , struct wireless_dev * , enum nl80211_tx_power_setting ,
                       int ) ;
   int (*get_tx_power)(struct wiphy * , struct wireless_dev * , int * ) ;
   int (*set_wds_peer)(struct wiphy * , struct net_device * , u8 const * ) ;
   void (*rfkill_poll)(struct wiphy * ) ;
   int (*testmode_cmd)(struct wiphy * , struct wireless_dev * , void * , int ) ;
   int (*testmode_dump)(struct wiphy * , struct sk_buff * , struct netlink_callback * ,
                        void * , int ) ;
   int (*set_bitrate_mask)(struct wiphy * , struct net_device * , u8 const * , struct cfg80211_bitrate_mask const * ) ;
   int (*dump_survey)(struct wiphy * , struct net_device * , int , struct survey_info * ) ;
   int (*set_pmksa)(struct wiphy * , struct net_device * , struct cfg80211_pmksa * ) ;
   int (*del_pmksa)(struct wiphy * , struct net_device * , struct cfg80211_pmksa * ) ;
   int (*flush_pmksa)(struct wiphy * , struct net_device * ) ;
   int (*remain_on_channel)(struct wiphy * , struct wireless_dev * , struct ieee80211_channel * ,
                            unsigned int , u64 * ) ;
   int (*cancel_remain_on_channel)(struct wiphy * , struct wireless_dev * , u64 ) ;
   int (*mgmt_tx)(struct wiphy * , struct wireless_dev * , struct cfg80211_mgmt_tx_params * ,
                  u64 * ) ;
   int (*mgmt_tx_cancel_wait)(struct wiphy * , struct wireless_dev * , u64 ) ;
   int (*set_power_mgmt)(struct wiphy * , struct net_device * , bool , int ) ;
   int (*set_cqm_rssi_config)(struct wiphy * , struct net_device * , s32 , u32 ) ;
   int (*set_cqm_txe_config)(struct wiphy * , struct net_device * , u32 , u32 ,
                             u32 ) ;
   void (*mgmt_frame_register)(struct wiphy * , struct wireless_dev * , u16 , bool ) ;
   int (*set_antenna)(struct wiphy * , u32 , u32 ) ;
   int (*get_antenna)(struct wiphy * , u32 * , u32 * ) ;
   int (*sched_scan_start)(struct wiphy * , struct net_device * , struct cfg80211_sched_scan_request * ) ;
   int (*sched_scan_stop)(struct wiphy * , struct net_device * ) ;
   int (*set_rekey_data)(struct wiphy * , struct net_device * , struct cfg80211_gtk_rekey_data * ) ;
   int (*tdls_mgmt)(struct wiphy * , struct net_device * , u8 const * , u8 , u8 ,
                    u16 , u32 , bool , u8 const * , size_t ) ;
   int (*tdls_oper)(struct wiphy * , struct net_device * , u8 const * , enum nl80211_tdls_operation ) ;
   int (*probe_client)(struct wiphy * , struct net_device * , u8 const * , u64 * ) ;
   int (*set_noack_map)(struct wiphy * , struct net_device * , u16 ) ;
   int (*get_channel)(struct wiphy * , struct wireless_dev * , struct cfg80211_chan_def * ) ;
   int (*start_p2p_device)(struct wiphy * , struct wireless_dev * ) ;
   void (*stop_p2p_device)(struct wiphy * , struct wireless_dev * ) ;
   int (*set_mac_acl)(struct wiphy * , struct net_device * , struct cfg80211_acl_data const * ) ;
   int (*start_radar_detection)(struct wiphy * , struct net_device * , struct cfg80211_chan_def * ,
                                u32 ) ;
   int (*update_ft_ies)(struct wiphy * , struct net_device * , struct cfg80211_update_ft_ies_params * ) ;
   int (*crit_proto_start)(struct wiphy * , struct wireless_dev * , enum nl80211_crit_proto_id ,
                           u16 ) ;
   void (*crit_proto_stop)(struct wiphy * , struct wireless_dev * ) ;
   int (*set_coalesce)(struct wiphy * , struct cfg80211_coalesce * ) ;
   int (*channel_switch)(struct wiphy * , struct net_device * , struct cfg80211_csa_settings * ) ;
   int (*set_qos_map)(struct wiphy * , struct net_device * , struct cfg80211_qos_map * ) ;
   int (*set_ap_chanwidth)(struct wiphy * , struct net_device * , struct cfg80211_chan_def * ) ;
   int (*add_tx_ts)(struct wiphy * , struct net_device * , u8 , u8 const * , u8 ,
                    u16 ) ;
   int (*del_tx_ts)(struct wiphy * , struct net_device * , u8 , u8 const * ) ;
   int (*tdls_channel_switch)(struct wiphy * , struct net_device * , u8 const * ,
                              u8 , struct cfg80211_chan_def * ) ;
   void (*tdls_cancel_channel_switch)(struct wiphy * , struct net_device * , u8 const * ) ;
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
   int max_nd_match_sets ;
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
   u8 ext_features[1U] ;
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
   possible_net_t _net ;
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
struct __anonstruct_wext_366 {
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
   struct __anonstruct_wext_366 wext ;
};
enum cfg80211_bss_frame_type {
    CFG80211_BSS_FTYPE_UNKNOWN = 0,
    CFG80211_BSS_FTYPE_BEACON = 1,
    CFG80211_BSS_FTYPE_PRESP = 2
} ;
struct driver_info;
struct usbnet {
   struct usb_device *udev ;
   struct usb_interface *intf ;
   struct driver_info *driver_info ;
   char const *driver_name ;
   void *driver_priv ;
   wait_queue_head_t wait ;
   struct mutex phy_mutex ;
   unsigned char suspend_count ;
   unsigned char pkt_cnt ;
   unsigned char pkt_err ;
   unsigned short rx_qlen ;
   unsigned short tx_qlen ;
   unsigned char can_dma_sg : 1 ;
   unsigned int in ;
   unsigned int out ;
   struct usb_host_endpoint *status ;
   unsigned int maxpacket ;
   struct timer_list delay ;
   char const *padding_pkt ;
   struct net_device *net ;
   int msg_enable ;
   unsigned long data[5U] ;
   u32 xid ;
   u32 hard_mtu ;
   size_t rx_urb_size ;
   struct mii_if_info mii ;
   struct sk_buff_head rxq ;
   struct sk_buff_head txq ;
   struct sk_buff_head done ;
   struct sk_buff_head rxq_pause ;
   struct urb *interrupt ;
   unsigned int interrupt_count ;
   struct mutex interrupt_mutex ;
   struct usb_anchor deferred ;
   struct tasklet_struct bh ;
   struct work_struct kevent ;
   unsigned long flags ;
};
struct driver_info {
   char *description ;
   int flags ;
   int (*bind)(struct usbnet * , struct usb_interface * ) ;
   void (*unbind)(struct usbnet * , struct usb_interface * ) ;
   int (*reset)(struct usbnet * ) ;
   int (*stop)(struct usbnet * ) ;
   int (*check_connect)(struct usbnet * ) ;
   int (*manage_power)(struct usbnet * , int ) ;
   void (*status)(struct usbnet * , struct urb * ) ;
   int (*link_reset)(struct usbnet * ) ;
   int (*rx_fixup)(struct usbnet * , struct sk_buff * ) ;
   struct sk_buff *(*tx_fixup)(struct usbnet * , struct sk_buff * , gfp_t ) ;
   void (*recover)(struct usbnet * ) ;
   int (*early_init)(struct usbnet * ) ;
   void (*indication)(struct usbnet * , void * , int ) ;
   void (*set_rx_mode)(struct usbnet * ) ;
   int in ;
   int out ;
   unsigned long data ;
};
struct rndis_msg_hdr {
   __le32 msg_type ;
   __le32 msg_len ;
   __le32 request_id ;
   __le32 status ;
};
struct rndis_query {
   __le32 msg_type ;
   __le32 msg_len ;
   __le32 request_id ;
   __le32 oid ;
   __le32 len ;
   __le32 offset ;
   __le32 handle ;
};
struct rndis_query_c {
   __le32 msg_type ;
   __le32 msg_len ;
   __le32 request_id ;
   __le32 status ;
   __le32 len ;
   __le32 offset ;
};
struct rndis_set {
   __le32 msg_type ;
   __le32 msg_len ;
   __le32 request_id ;
   __le32 oid ;
   __le32 len ;
   __le32 offset ;
   __le32 handle ;
};
struct rndis_set_c {
   __le32 msg_type ;
   __le32 msg_len ;
   __le32 request_id ;
   __le32 status ;
};
struct rndis_reset {
   __le32 msg_type ;
   __le32 msg_len ;
   __le32 reserved ;
};
struct rndis_indicate {
   __le32 msg_type ;
   __le32 msg_len ;
   __le32 status ;
   __le32 length ;
   __le32 offset ;
   __le32 diag_status ;
   __le32 error_offset ;
   __le32 message ;
};
struct ndis_80211_auth_request {
   __le32 length ;
   u8 bssid[6U] ;
   u8 padding[2U] ;
   __le32 flags ;
};
struct ndis_80211_pmkid_candidate {
   u8 bssid[6U] ;
   u8 padding[2U] ;
   __le32 flags ;
};
struct ndis_80211_pmkid_cand_list {
   __le32 version ;
   __le32 num_candidates ;
   struct ndis_80211_pmkid_candidate candidate_list[0U] ;
};
union __anonunion_u_367 {
   __le32 media_stream_mode ;
   __le32 radio_status ;
   struct ndis_80211_auth_request auth_request[0U] ;
   struct ndis_80211_pmkid_cand_list cand_list ;
};
struct ndis_80211_status_indication {
   __le32 status_type ;
   union __anonunion_u_367 u ;
};
struct ndis_80211_ssid {
   __le32 length ;
   u8 essid[32U] ;
};
struct ndis_80211_conf_freq_hop {
   __le32 length ;
   __le32 hop_pattern ;
   __le32 hop_set ;
   __le32 dwell_time ;
};
struct ndis_80211_conf {
   __le32 length ;
   __le32 beacon_period ;
   __le32 atim_window ;
   __le32 ds_config ;
   struct ndis_80211_conf_freq_hop fh_config ;
};
struct ndis_80211_bssid_ex {
   __le32 length ;
   u8 mac[6U] ;
   u8 padding[2U] ;
   struct ndis_80211_ssid ssid ;
   __le32 privacy ;
   __le32 rssi ;
   __le32 net_type ;
   struct ndis_80211_conf config ;
   __le32 net_infra ;
   u8 rates[16U] ;
   __le32 ie_length ;
   u8 ies[0U] ;
};
struct ndis_80211_bssid_list_ex {
   __le32 num_items ;
   struct ndis_80211_bssid_ex bssid[0U] ;
};
struct ndis_80211_fixed_ies {
   u8 timestamp[8U] ;
   __le16 beacon_interval ;
   __le16 capabilities ;
};
struct ndis_80211_wep_key {
   __le32 size ;
   __le32 index ;
   __le32 length ;
   u8 material[32U] ;
};
struct ndis_80211_key {
   __le32 size ;
   __le32 index ;
   __le32 length ;
   u8 bssid[6U] ;
   u8 padding[6U] ;
   u8 rsc[8U] ;
   u8 material[32U] ;
};
struct ndis_80211_remove_key {
   __le32 size ;
   __le32 index ;
   u8 bssid[6U] ;
   u8 padding[2U] ;
};
struct ndis_config_param {
   __le32 name_offs ;
   __le32 name_length ;
   __le32 type ;
   __le32 value_offs ;
   __le32 value_length ;
};
struct req_ie {
   __le16 capa ;
   __le16 listen_interval ;
   u8 cur_ap_address[6U] ;
};
struct resp_ie {
   __le16 capa ;
   __le16 status_code ;
   __le16 assoc_id ;
};
struct ndis_80211_assoc_info {
   __le32 length ;
   __le16 req_ies ;
   struct req_ie req_ie ;
   __le32 req_ie_length ;
   __le32 offset_req_ies ;
   __le16 resp_ies ;
   struct resp_ie resp_ie ;
   __le32 resp_ie_length ;
   __le32 offset_resp_ies ;
};
struct ndis_80211_auth_encr_pair {
   __le32 auth_mode ;
   __le32 encr_mode ;
};
struct ndis_80211_capability {
   __le32 length ;
   __le32 version ;
   __le32 num_pmkids ;
   __le32 num_auth_encr_pair ;
   struct ndis_80211_auth_encr_pair auth_encr_pair[0U] ;
};
struct ndis_80211_bssid_info {
   u8 bssid[6U] ;
   u8 pmkid[16U] ;
};
struct ndis_80211_pmkid {
   __le32 length ;
   __le32 bssid_info_count ;
   struct ndis_80211_bssid_info bssid_info[0U] ;
};
struct rndis_wlan_encr_key {
   int len ;
   u32 cipher ;
   u8 material[32U] ;
   u8 bssid[6U] ;
   bool pairwise ;
   bool tx_key ;
};
struct rndis_wlan_private {
   struct usbnet *usbdev ;
   struct wireless_dev wdev ;
   struct cfg80211_scan_request *scan_request ;
   struct workqueue_struct *workqueue ;
   struct delayed_work dev_poller_work ;
   struct delayed_work scan_work ;
   struct work_struct work ;
   struct mutex command_lock ;
   unsigned long work_pending ;
   int last_qual ;
   s32 cqm_rssi_thold ;
   u32 cqm_rssi_hyst ;
   int last_cqm_event_rssi ;
   struct ieee80211_supported_band band ;
   struct ieee80211_channel channels[14U] ;
   struct ieee80211_rate rates[12U] ;
   u32 cipher_suites[4U] ;
   int device_type ;
   int caps ;
   int multicast_size ;
   char param_country[4U] ;
   int param_frameburst ;
   int param_afterburner ;
   int param_power_save ;
   int param_power_output ;
   int param_roamtrigger ;
   int param_roamdelta ;
   u32 param_workaround_interval ;
   bool radio_on ;
   int power_mode ;
   int infra_mode ;
   bool connected ;
   u8 bssid[6U] ;
   u32 current_command_oid ;
   u8 encr_tx_key_index ;
   struct rndis_wlan_encr_key encr_keys[4U] ;
   int wpa_version ;
   u8 command_buffer[1053U] ;
};
union __anonunion_u_369 {
   void *buf ;
   struct rndis_msg_hdr *header ;
   struct rndis_query *get ;
   struct rndis_query_c *get_c ;
};
union __anonunion_u_371 {
   void *buf ;
   struct rndis_msg_hdr *header ;
   struct rndis_set *set ;
   struct rndis_set_c *set_c ;
};
struct __anonstruct_networks_supported_373 {
   __le32 num_items ;
   __le32 items[8U] ;
};
typedef bool ldv_func_ret_type___2;
typedef bool ldv_func_ret_type___3;
typedef bool ldv_func_ret_type___4;
typedef bool ldv_func_ret_type___5;
typedef bool ldv_func_ret_type___6;
typedef bool ldv_func_ret_type___7;
typedef bool ldv_func_ret_type___8;
typedef bool ldv_func_ret_type___9;
typedef bool ldv_func_ret_type___10;
typedef bool ldv_func_ret_type___11;
typedef bool ldv_func_ret_type___12;
typedef bool ldv_func_ret_type___13;
typedef bool ldv_func_ret_type___14;
typedef int ldv_func_ret_type___15;
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
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
extern void __dynamic_netdev_dbg(struct _ddebug * , struct net_device const * ,
                                 char const * , ...) ;
extern int sprintf(char * , char const * , ...) ;
bool ldv_is_err(void const *ptr ) ;
void *ldv_err_ptr(long error ) ;
long ldv_ptr_err(void const *ptr ) ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
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
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strcpy(char * , char const * ) ;
extern int strcmp(char const * , char const * ) ;
__inline static void *ERR_PTR(long error ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
__inline static void ldv_spin_lock_bh_6(spinlock_t *lock )
{
  {
  _raw_spin_lock_bh(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_lock_bh(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_10(spinlock_t *lock )
{
  {
  _raw_spin_unlock_bh(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock_bh(spinlock_t *lock ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern unsigned long __msecs_to_jiffies(unsigned int const ) ;
__inline static unsigned long msecs_to_jiffies(unsigned int const m )
{
  unsigned long tmp___0 ;
  {
  tmp___0 = __msecs_to_jiffies(m);
  return (tmp___0);
}
}
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern unsigned long round_jiffies_relative(unsigned long ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
void ldv_destroy_workqueue_47(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_destroy_workqueue_52(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
bool ldv_queue_work_on_15(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_17(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
bool ldv_queue_delayed_work_on_16(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_19(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
extern void flush_workqueue(struct workqueue_struct * ) ;
void ldv_flush_workqueue_18(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_46(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_51(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_56(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
bool ldv_cancel_work_sync_45(struct work_struct *ldv_func_arg1 ) ;
bool ldv_cancel_work_sync_50(struct work_struct *ldv_func_arg1 ) ;
bool ldv_cancel_work_sync_55(struct work_struct *ldv_func_arg1 ) ;
extern bool cancel_delayed_work_sync(struct delayed_work * ) ;
bool ldv_cancel_delayed_work_sync_43(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_sync_44(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_sync_48(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_sync_49(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_sync_53(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_sync_54(struct delayed_work *ldv_func_arg1 ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_15(8192, wq, work);
  return (tmp);
}
}
__inline static bool queue_delayed_work(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                        unsigned long delay )
{
  bool tmp ;
  {
  tmp = ldv_queue_delayed_work_on_16(8192, wq, dwork, delay);
  return (tmp);
}
}
void *ldv_krealloc_42(void const *ldv_func_arg1 , size_t ldv_func_arg2 , gfp_t flags ) ;
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
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
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
int ldv_state_variable_8 ;
struct usb_interface *bcm4320b_info_group1 ;
struct usb_interface *rndis_wlan_info_group1 ;
struct usbnet *bcm4320a_info_group2 ;
struct work_struct *ldv_work_struct_3_1 ;
struct work_struct *ldv_work_struct_1_3 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_work_1_1 ;
int ldv_work_3_2 ;
int ldv_work_3_0 ;
struct work_struct *ldv_work_struct_2_3 ;
struct work_struct *ldv_work_struct_2_0 ;
struct usb_interface *rndis_wlan_driver_group1 ;
int ldv_state_variable_9 ;
struct work_struct *ldv_work_struct_2_2 ;
struct wireless_dev *rndis_config_ops_group0 ;
int ref_cnt ;
int ldv_work_3_3 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
struct usbnet *rndis_wlan_info_group2 ;
struct work_struct *ldv_work_struct_3_3 ;
struct work_struct *ldv_work_struct_1_0 ;
struct work_struct *ldv_work_struct_1_1 ;
struct net_device *rndis_config_ops_group4 ;
int ldv_work_1_3 ;
struct work_struct *ldv_work_struct_2_1 ;
struct work_struct *ldv_work_struct_3_2 ;
int ldv_state_variable_6 ;
int ldv_work_3_1 ;
struct net_device *rndis_wlan_netdev_ops_group1 ;
struct sk_buff *bcm4320b_info_group0 ;
int ldv_state_variable_2 ;
struct sk_buff *rndis_wlan_info_group0 ;
int ldv_work_2_0 ;
struct station_info *rndis_config_ops_group1 ;
int usb_counter ;
struct work_struct *ldv_work_struct_3_0 ;
struct wiphy *rndis_config_ops_group3 ;
int ldv_work_1_2 ;
struct sk_buff *bcm4320a_info_group0 ;
int LDV_IN_INTERRUPT = 1;
struct cfg80211_pmksa *rndis_config_ops_group2 ;
struct work_struct *ldv_work_struct_1_2 ;
struct usbnet *bcm4320b_info_group2 ;
int ldv_work_2_2 ;
int ldv_state_variable_3 ;
struct usb_interface *bcm4320a_info_group1 ;
int ldv_work_1_0 ;
int ldv_work_2_3 ;
int ldv_state_variable_4 ;
int ldv_work_2_1 ;
void ldv_initialize_driver_info_6(void) ;
void work_init_3(void) ;
void call_and_disable_work_1(struct work_struct *work ) ;
void ldv_initialize_driver_info_7(void) ;
void work_init_2(void) ;
void ldv_usb_driver_4(void) ;
void call_and_disable_all_2(int state ) ;
void call_and_disable_all_1(int state ) ;
void activate_work_2(struct work_struct *work , int state ) ;
void activate_work_3(struct work_struct *work , int state ) ;
void ldv_initialize_driver_info_5(void) ;
void activate_work_1(struct work_struct *work , int state ) ;
void call_and_disable_work_3(struct work_struct *work ) ;
void disable_work_3(struct work_struct *work ) ;
void disable_work_2(struct work_struct *work ) ;
void disable_work_1(struct work_struct *work ) ;
void invoke_work_3(void) ;
void work_init_1(void) ;
void invoke_work_1(void) ;
void ldv_net_device_ops_8(void) ;
void call_and_disable_all_3(int state ) ;
void ldv_initialize_cfg80211_ops_9(void) ;
void call_and_disable_work_2(struct work_struct *work ) ;
void invoke_work_2(void) ;
extern void msleep(unsigned int ) ;
extern void get_random_bytes(void * , int ) ;
struct sk_buff *ldv_skb_clone_33(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_41(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_35(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_39(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_40(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
void *ldv_malloc(size_t size ) ;
struct sk_buff *ldv___netdev_alloc_skb_36(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_37(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_38(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3008U);
}
}
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
__inline static void netif_addr_lock_bh(struct net_device *dev )
{
  {
  spin_lock_bh(& dev->addr_list_lock);
  return;
}
}
__inline static void netif_addr_unlock_bh(struct net_device *dev )
{
  {
  spin_unlock_bh(& dev->addr_list_lock);
  return;
}
}
extern void netdev_err(struct net_device const * , char const * , ...) ;
extern void netdev_warn(struct net_device const * , char const * , ...) ;
extern void netdev_info(struct net_device const * , char const * , ...) ;
extern int eth_mac_addr(struct net_device * , void * ) ;
extern int eth_validate_addr(struct net_device * ) ;
__inline static bool is_zero_ether_addr(u8 const *addr )
{
  {
  return (((unsigned int )*((u32 const *)addr) | (unsigned int )*((u16 const *)addr + 4U)) == 0U);
}
}
__inline static bool is_broadcast_ether_addr(u8 const *addr )
{
  {
  return ((unsigned int )(((int )((unsigned short )*((u16 const *)addr)) & (int )((unsigned short )*((u16 const *)addr + 2U))) & (int )((unsigned short )*((u16 const *)addr + 4U))) == 65535U);
}
}
__inline static void eth_broadcast_addr(u8 *addr )
{
  {
  memset((void *)addr, 255, 6UL);
  return;
}
}
__inline static void eth_zero_addr(u8 *addr )
{
  {
  memset((void *)addr, 0, 6UL);
  return;
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
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
int ldv_usb_register_driver_57(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
void ldv_usb_deregister_58(struct usb_driver *arg ) ;
extern unsigned char const _ctype[] ;
__inline static unsigned char __toupper(unsigned char c )
{
  {
  if (((int )_ctype[(int )c] & 2) != 0) {
    c = (unsigned int )c + 224U;
  } else {
  }
  return (c);
}
}
__inline static void *wiphy_priv(struct wiphy *wiphy )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )wiphy == (unsigned long )((struct wiphy *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/net/cfg80211.h"),
                         "i" (3259), "i" (12UL));
    ldv_48785: ;
    goto ldv_48785;
  } else {
  }
  return ((void *)(& wiphy->priv));
}
}
__inline static void set_wiphy_dev(struct wiphy *wiphy , struct device *dev )
{
  {
  wiphy->dev.parent = dev;
  return;
}
}
extern struct wiphy *wiphy_new_nm(struct cfg80211_ops const * , int , char const * ) ;
__inline static struct wiphy *wiphy_new(struct cfg80211_ops const *ops , int sizeof_priv )
{
  struct wiphy *tmp ;
  {
  tmp = wiphy_new_nm(ops, sizeof_priv, (char const *)0);
  return (tmp);
}
}
extern int wiphy_register(struct wiphy * ) ;
extern void wiphy_unregister(struct wiphy * ) ;
extern void wiphy_free(struct wiphy * ) ;
extern int ieee80211_channel_to_frequency(int , enum ieee80211_band ) ;
extern int ieee80211_frequency_to_channel(int ) ;
extern struct ieee80211_channel *__ieee80211_get_channel(struct wiphy * , int ) ;
__inline static struct ieee80211_channel *ieee80211_get_channel(struct wiphy *wiphy ,
                                                                int freq )
{
  struct ieee80211_channel *tmp ;
  {
  tmp = __ieee80211_get_channel(wiphy, freq);
  return (tmp);
}
}
extern void cfg80211_scan_done(struct cfg80211_scan_request * , bool ) ;
extern struct cfg80211_bss *cfg80211_inform_bss_width(struct wiphy * , struct ieee80211_channel * ,
                                                      enum nl80211_bss_scan_width ,
                                                      enum cfg80211_bss_frame_type ,
                                                      u8 const * , u64 , u16 ,
                                                      u16 , u8 const * , size_t ,
                                                      s32 , gfp_t ) ;
__inline static struct cfg80211_bss *cfg80211_inform_bss(struct wiphy *wiphy , struct ieee80211_channel *rx_channel ,
                                                         enum cfg80211_bss_frame_type ftype ,
                                                         u8 const *bssid , u64 tsf ,
                                                         u16 capability , u16 beacon_interval ,
                                                         u8 const *ie , size_t ielen ,
                                                         s32 signal , gfp_t gfp )
{
  struct cfg80211_bss *tmp ;
  {
  tmp = cfg80211_inform_bss_width(wiphy, rx_channel, 0, ftype, bssid, tsf, (int )capability,
                                  (int )beacon_interval, ie, ielen, signal, gfp);
  return (tmp);
}
}
extern void cfg80211_put_bss(struct wiphy * , struct cfg80211_bss * ) ;
extern void cfg80211_michael_mic_failure(struct net_device * , u8 const * , enum nl80211_key_type ,
                                         int , u8 const * , gfp_t ) ;
extern void cfg80211_ibss_joined(struct net_device * , u8 const * , struct ieee80211_channel * ,
                                 gfp_t ) ;
extern void cfg80211_connect_result(struct net_device * , u8 const * , u8 const * ,
                                    size_t , u8 const * , size_t , u16 , gfp_t ) ;
extern void cfg80211_roamed(struct net_device * , struct ieee80211_channel * , u8 const * ,
                            u8 const * , size_t , u8 const * , size_t , gfp_t ) ;
extern void cfg80211_disconnected(struct net_device * , u16 , u8 const * , size_t ,
                                  bool , gfp_t ) ;
extern void cfg80211_cqm_rssi_notify(struct net_device * , enum nl80211_cqm_rssi_threshold_event ,
                                     gfp_t ) ;
extern void cfg80211_pmksa_candidate_notify(struct net_device * , int , u8 const * ,
                                            bool , gfp_t ) ;
extern int usbnet_probe(struct usb_interface * , struct usb_device_id const * ) ;
extern int usbnet_suspend(struct usb_interface * , pm_message_t ) ;
extern int usbnet_resume(struct usb_interface * ) ;
extern void usbnet_disconnect(struct usb_interface * ) ;
extern int usbnet_open(struct net_device * ) ;
extern int usbnet_stop(struct net_device * ) ;
extern netdev_tx_t usbnet_start_xmit(struct sk_buff * , struct net_device * ) ;
extern void usbnet_tx_timeout(struct net_device * ) ;
extern void usbnet_pause_rx(struct usbnet * ) ;
extern void usbnet_resume_rx(struct usbnet * ) ;
extern void usbnet_purge_paused_rxq(struct usbnet * ) ;
extern void rndis_status(struct usbnet * , struct urb * ) ;
extern int rndis_command(struct usbnet * , struct rndis_msg_hdr * , int ) ;
extern int generic_rndis_bind(struct usbnet * , struct usb_interface * , int ) ;
extern void rndis_unbind(struct usbnet * , struct usb_interface * ) ;
extern int rndis_rx_fixup(struct usbnet * , struct sk_buff * ) ;
extern struct sk_buff *rndis_tx_fixup(struct usbnet * , struct sk_buff * , gfp_t ) ;
static char modparam_country[4U] = { 'E', 'U', '\000'};
static int modparam_frameburst = 1;
static int modparam_afterburner = 0;
static int modparam_power_save = 0;
static int modparam_power_output = 3;
static int modparam_roamtrigger = -70;
static int modparam_roamdelta = 1;
static int modparam_workaround_interval ;
static struct ieee80211_channel const rndis_channels[14U] =
  { {0, 2412U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2417U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2422U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2427U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2432U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2437U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2442U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2447U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2452U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2457U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2462U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2467U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2472U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2484U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U}};
static struct ieee80211_rate const rndis_rates[12U] =
  { {0U, 10U, (unsigned short)0, (unsigned short)0},
        {1U, 20U, (unsigned short)0, (unsigned short)0},
        {1U, 55U, (unsigned short)0, (unsigned short)0},
        {1U, 110U, (unsigned short)0, (unsigned short)0},
        {0U, 60U, (unsigned short)0, (unsigned short)0},
        {0U, 90U, (unsigned short)0, (unsigned short)0},
        {0U, 120U, (unsigned short)0, (unsigned short)0},
        {0U, 180U, (unsigned short)0, (unsigned short)0},
        {0U, 240U, (unsigned short)0, (unsigned short)0},
        {0U, 360U, (unsigned short)0, (unsigned short)0},
        {0U, 480U, (unsigned short)0, (unsigned short)0},
        {0U, 540U, (unsigned short)0, (unsigned short)0}};
static u32 const rndis_cipher_suites[4U] = { 1027073U, 1027077U, 1027074U, 1027076U};
static int rndis_change_virtual_intf(struct wiphy *wiphy , struct net_device *dev ,
                                     enum nl80211_iftype type , u32 *flags , struct vif_params *params ) ;
static int rndis_scan(struct wiphy *wiphy , struct cfg80211_scan_request *request ) ;
static int rndis_set_wiphy_params(struct wiphy *wiphy , u32 changed ) ;
static int rndis_set_tx_power(struct wiphy *wiphy , struct wireless_dev *wdev , enum nl80211_tx_power_setting type ,
                              int mbm ) ;
static int rndis_get_tx_power(struct wiphy *wiphy , struct wireless_dev *wdev , int *dbm ) ;
static int rndis_connect(struct wiphy *wiphy , struct net_device *dev , struct cfg80211_connect_params *sme ) ;
static int rndis_disconnect(struct wiphy *wiphy , struct net_device *dev , u16 reason_code ) ;
static int rndis_join_ibss(struct wiphy *wiphy , struct net_device *dev , struct cfg80211_ibss_params *params ) ;
static int rndis_leave_ibss(struct wiphy *wiphy , struct net_device *dev ) ;
static int rndis_add_key(struct wiphy *wiphy , struct net_device *netdev , u8 key_index ,
                         bool pairwise , u8 const *mac_addr , struct key_params *params ) ;
static int rndis_del_key(struct wiphy *wiphy , struct net_device *netdev , u8 key_index ,
                         bool pairwise , u8 const *mac_addr ) ;
static int rndis_set_default_key(struct wiphy *wiphy , struct net_device *netdev ,
                                 u8 key_index , bool unicast , bool multicast ) ;
static int rndis_get_station(struct wiphy *wiphy , struct net_device *dev , u8 const *mac ,
                             struct station_info *sinfo ) ;
static int rndis_dump_station(struct wiphy *wiphy , struct net_device *dev , int idx ,
                              u8 *mac , struct station_info *sinfo ) ;
static int rndis_set_pmksa(struct wiphy *wiphy , struct net_device *netdev , struct cfg80211_pmksa *pmksa ) ;
static int rndis_del_pmksa(struct wiphy *wiphy , struct net_device *netdev , struct cfg80211_pmksa *pmksa ) ;
static int rndis_flush_pmksa(struct wiphy *wiphy , struct net_device *netdev ) ;
static int rndis_set_power_mgmt(struct wiphy *wiphy , struct net_device *dev , bool enabled ,
                                int timeout ) ;
static int rndis_set_cqm_rssi_config(struct wiphy *wiphy , struct net_device *dev ,
                                     s32 rssi_thold , u32 rssi_hyst ) ;
static struct cfg80211_ops const rndis_config_ops =
     {0, 0, 0, 0, 0, & rndis_change_virtual_intf, & rndis_add_key, 0, & rndis_del_key,
    & rndis_set_default_key, 0, 0, 0, 0, 0, 0, 0, & rndis_get_station, & rndis_dump_station,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & rndis_scan, 0, 0, 0, 0, & rndis_connect,
    & rndis_disconnect, & rndis_join_ibss, & rndis_leave_ibss, 0, & rndis_set_wiphy_params,
    & rndis_set_tx_power, & rndis_get_tx_power, 0, 0, 0, 0, 0, 0, & rndis_set_pmksa,
    & rndis_del_pmksa, & rndis_flush_pmksa, 0, 0, 0, 0, & rndis_set_power_mgmt, & rndis_set_cqm_rssi_config,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0};
static void *rndis_wiphy_privid = (void *)(& rndis_wiphy_privid);
static struct rndis_wlan_private *get_rndis_wlan_priv(struct usbnet *dev )
{
  {
  return ((struct rndis_wlan_private *)dev->driver_priv);
}
}
static u32 get_bcm4320_power_dbm(struct rndis_wlan_private *priv )
{
  {
  switch (priv->param_power_output) {
  default: ;
  case 3: ;
  return (13U);
  case 2: ;
  return (12U);
  case 1: ;
  return (10U);
  case 0: ;
  return (7U);
  }
}
}
static bool is_wpa_key(struct rndis_wlan_private *priv , u8 idx )
{
  int cipher ;
  {
  cipher = (int )priv->encr_keys[(int )idx].cipher;
  return ((bool )(cipher == 1027076 || cipher == 1027074));
}
}
static int rndis_cipher_to_alg(u32 cipher )
{
  {
  switch (cipher) {
  default: ;
  return (0);
  case 1027073U: ;
  case 1027077U: ;
  return (1);
  case 1027074U: ;
  return (2);
  case 1027076U: ;
  return (4);
  }
}
}
static int rndis_akm_suite_to_key_mgmt(u32 akm_suite )
{
  {
  switch (akm_suite) {
  default: ;
  return (0);
  case 1027073U: ;
  return (1);
  case 1027074U: ;
  return (2);
  }
}
}
static char const *oid_to_string(u32 oid )
{
  {
  return ("?");
}
}
static int rndis_error_status(__le32 rndis_status___0 )
{
  int ret ;
  {
  ret = -22;
  switch (rndis_status___0) {
  case 0U:
  ret = 0;
  goto ldv_50261;
  case 3221225473U: ;
  case 3221291029U:
  ret = -22;
  goto ldv_50261;
  case 3221225659U:
  ret = -95;
  goto ldv_50261;
  case 3221291025U: ;
  case 3221291026U:
  ret = -16;
  goto ldv_50261;
  }
  ldv_50261: ;
  return (ret);
}
}
static int rndis_query_oid(struct usbnet *dev , u32 oid , void *data , int *len )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  union __anonunion_u_369 u ;
  int ret ;
  int buflen ;
  int resplen ;
  int respoffs ;
  int copylen ;
  struct _ddebug descriptor ;
  char const *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  char const *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  char const *tmp___4 ;
  long tmp___5 ;
  {
  tmp = get_rndis_wlan_priv(dev);
  priv = tmp;
  buflen = (int )((unsigned int )*len + 28U);
  if (buflen <= 1024) {
    buflen = 1025;
  } else {
  }
  if ((unsigned int )buflen > 1053U) {
    u.buf = kmalloc((size_t )buflen, 208U);
    if ((unsigned long )u.buf == (unsigned long )((void *)0)) {
      return (-12);
    } else {
    }
  } else {
    u.buf = (void *)(& priv->command_buffer);
  }
  mutex_lock_nested(& priv->command_lock, 0U);
  memset((void *)u.get, 0, 28UL);
  (u.get)->msg_type = 4U;
  (u.get)->msg_len = 28U;
  (u.get)->oid = oid;
  priv->current_command_oid = oid;
  ret = rndis_command(dev, u.header, buflen);
  priv->current_command_oid = 0U;
  if (ret < 0) {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "rndis_query_oid";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "%s(%s): rndis_command() failed, %d (%08x)\n";
    descriptor.lineno = 743U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = oid_to_string(oid);
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "%s(%s): rndis_command() failed, %d (%08x)\n",
                           "rndis_query_oid", tmp___0, ret, (u.get_c)->status);
    } else {
    }
  } else {
  }
  if (ret == 0) {
    resplen = (int )(u.get_c)->len;
    respoffs = (int )((u.get_c)->offset + 8U);
    if (respoffs > buflen) {
      descriptor___0.modname = "rndis_wlan";
      descriptor___0.function = "rndis_query_oid";
      descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
      descriptor___0.format = "%s(%s): received invalid data offset: %d > %d\n";
      descriptor___0.lineno = 753U;
      descriptor___0.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        tmp___2 = oid_to_string(oid);
        __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev->net,
                             "%s(%s): received invalid data offset: %d > %d\n", "rndis_query_oid",
                             tmp___2, respoffs, buflen);
      } else {
      }
      ret = -22;
      goto exit_unlock;
    } else {
    }
    if (resplen + respoffs > buflen) {
      copylen = buflen - respoffs;
    } else {
      copylen = resplen;
    }
    if (*len < copylen) {
      copylen = *len;
    } else {
    }
    memcpy(data, (void const *)u.buf + (unsigned long )respoffs, (size_t )copylen);
    *len = resplen;
    ret = rndis_error_status((u.get_c)->status);
    if (ret < 0) {
      descriptor___1.modname = "rndis_wlan";
      descriptor___1.function = "rndis_query_oid";
      descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
      descriptor___1.format = "%s(%s): device returned error,  0x%08x (%d)\n";
      descriptor___1.lineno = 779U;
      descriptor___1.flags = 0U;
      tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___5 != 0L) {
        tmp___4 = oid_to_string(oid);
        __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)dev->net,
                             "%s(%s): device returned error,  0x%08x (%d)\n", "rndis_query_oid",
                             tmp___4, (u.get_c)->status, ret);
      } else {
      }
    } else {
    }
  } else {
  }
  exit_unlock:
  mutex_unlock(& priv->command_lock);
  if ((unsigned long )u.buf != (unsigned long )((void *)(& priv->command_buffer))) {
    kfree((void const *)u.buf);
  } else {
  }
  return (ret);
}
}
static int rndis_set_oid(struct usbnet *dev , u32 oid , void const *data , int len )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  union __anonunion_u_371 u ;
  int ret ;
  int buflen ;
  struct _ddebug descriptor ;
  char const *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  char const *tmp___2 ;
  long tmp___3 ;
  {
  tmp = get_rndis_wlan_priv(dev);
  priv = tmp;
  buflen = (int )((unsigned int )len + 28U);
  if (buflen <= 1024) {
    buflen = 1025;
  } else {
  }
  if ((unsigned int )buflen > 1053U) {
    u.buf = kmalloc((size_t )buflen, 208U);
    if ((unsigned long )u.buf == (unsigned long )((void *)0)) {
      return (-12);
    } else {
    }
  } else {
    u.buf = (void *)(& priv->command_buffer);
  }
  mutex_lock_nested(& priv->command_lock, 0U);
  memset((void *)u.set, 0, 28UL);
  (u.set)->msg_type = 5U;
  (u.set)->msg_len = (unsigned int )len + 28U;
  (u.set)->oid = oid;
  (u.set)->len = (unsigned int )len;
  (u.set)->offset = 20U;
  (u.set)->handle = 0U;
  memcpy(u.buf + 28UL, data, (size_t )len);
  priv->current_command_oid = oid;
  ret = rndis_command(dev, u.header, buflen);
  priv->current_command_oid = 0U;
  if (ret < 0) {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "rndis_set_oid";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "%s(%s): rndis_command() failed, %d (%08x)\n";
    descriptor.lineno = 831U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = oid_to_string(oid);
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "%s(%s): rndis_command() failed, %d (%08x)\n",
                           "rndis_set_oid", tmp___0, ret, (u.set_c)->status);
    } else {
    }
  } else {
  }
  if (ret == 0) {
    ret = rndis_error_status((u.set_c)->status);
    if (ret < 0) {
      descriptor___0.modname = "rndis_wlan";
      descriptor___0.function = "rndis_set_oid";
      descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
      descriptor___0.format = "%s(%s): device returned error, 0x%08x (%d)\n";
      descriptor___0.lineno = 839U;
      descriptor___0.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        tmp___2 = oid_to_string(oid);
        __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev->net,
                             "%s(%s): device returned error, 0x%08x (%d)\n", "rndis_set_oid",
                             tmp___2, (u.set_c)->status, ret);
      } else {
      }
    } else {
    }
  } else {
  }
  mutex_unlock(& priv->command_lock);
  if ((unsigned long )u.buf != (unsigned long )((void *)(& priv->command_buffer))) {
    kfree((void const *)u.buf);
  } else {
  }
  return (ret);
}
}
static int rndis_reset(struct usbnet *usbdev )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct rndis_reset *reset ;
  int ret ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  mutex_lock_nested(& priv->command_lock, 0U);
  reset = (struct rndis_reset *)(& priv->command_buffer);
  memset((void *)reset, 0, 12UL);
  reset->msg_type = 6U;
  reset->msg_len = 12U;
  priv->current_command_oid = 0U;
  ret = rndis_command(usbdev, (struct rndis_msg_hdr *)reset, 1025);
  mutex_unlock(& priv->command_lock);
  if (ret < 0) {
    return (ret);
  } else {
  }
  return (0);
}
}
static int rndis_set_config_parameter(struct usbnet *dev , char *param , int value_type ,
                                      void *value )
{
  struct ndis_config_param *infobuf ;
  int value_len ;
  int info_len ;
  int param_len ;
  int ret ;
  int i ;
  __le16 *unibuf ;
  __le32 *dst_value ;
  size_t tmp ;
  size_t tmp___0 ;
  void *tmp___1 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  {
  if (value_type == 0) {
    value_len = 4;
  } else
  if (value_type == 2) {
    tmp = strlen((char const *)value);
    value_len = (int )((unsigned int )tmp * 2U);
  } else {
    return (-22);
  }
  tmp___0 = strlen((char const *)param);
  param_len = (int )((unsigned int )tmp___0 * 2U);
  info_len = (int )(((unsigned int )param_len + (unsigned int )value_len) + 20U);
  tmp___1 = kmalloc((size_t )info_len, 208U);
  infobuf = (struct ndis_config_param *)tmp___1;
  if ((unsigned long )infobuf == (unsigned long )((struct ndis_config_param *)0)) {
    return (-12);
  } else {
  }
  if (value_type == 2) {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "rndis_set_config_parameter";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "setting config parameter: %s, value: %s\n";
    descriptor.lineno = 909U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "setting config parameter: %s, value: %s\n",
                           param, (u8 *)value);
    } else {
    }
  } else {
    descriptor___0.modname = "rndis_wlan";
    descriptor___0.function = "rndis_set_config_parameter";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor___0.format = "setting config parameter: %s, value: %d\n";
    descriptor___0.lineno = 912U;
    descriptor___0.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev->net,
                           "setting config parameter: %s, value: %d\n", param, *((u32 *)value));
    } else {
    }
  }
  infobuf->name_offs = 20U;
  infobuf->name_length = (unsigned int )param_len;
  infobuf->type = (unsigned int )value_type;
  infobuf->value_offs = (unsigned int )param_len + 20U;
  infobuf->value_length = (unsigned int )value_len;
  unibuf = (__le16 *)infobuf + 20U;
  i = 0;
  goto ldv_50332;
  ldv_50331:
  *(unibuf + (unsigned long )i) = (unsigned short )*(param + (unsigned long )i);
  i = i + 1;
  ldv_50332: ;
  if ((unsigned long )i < (unsigned long )param_len / 2UL) {
    goto ldv_50331;
  } else {
  }
  if (value_type == 2) {
    unibuf = (__le16 *)infobuf + ((unsigned long )param_len + 20UL);
    i = 0;
    goto ldv_50335;
    ldv_50334:
    *(unibuf + (unsigned long )i) = (unsigned short )*((u8 *)value + (unsigned long )i);
    i = i + 1;
    ldv_50335: ;
    if ((unsigned long )i < (unsigned long )value_len / 2UL) {
      goto ldv_50334;
    } else {
    }
  } else {
    dst_value = (__le32 *)infobuf + ((unsigned long )param_len + 20UL);
    *dst_value = *((u32 *)value);
  }
  ret = rndis_set_oid(dev, 66075U, (void const *)infobuf, info_len);
  if (ret != 0) {
    descriptor___1.modname = "rndis_wlan";
    descriptor___1.function = "rndis_set_config_parameter";
    descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor___1.format = "setting rndis config parameter failed, %d\n";
    descriptor___1.lineno = 949U;
    descriptor___1.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)dev->net,
                           "setting rndis config parameter failed, %d\n", ret);
    } else {
    }
  } else {
  }
  kfree((void const *)infobuf);
  return (ret);
}
}
static int rndis_set_config_parameter_str(struct usbnet *dev , char *param , char *value )
{
  int tmp ;
  {
  tmp = rndis_set_config_parameter(dev, param, 2, (void *)value);
  return (tmp);
}
}
static int level_to_qual(int level )
{
  int qual ;
  {
  qual = (level * 100 + 9600) / 64;
  return (qual >= 0 ? (100 < qual ? 100 : qual) : 0);
}
}
static int set_infra_mode(struct usbnet *usbdev , int mode ) ;
static void restore_keys(struct usbnet *usbdev ) ;
static int rndis_check_bssid_list(struct usbnet *usbdev , u8 *match_bssid , bool *matched ) ;
static int rndis_start_bssid_list_scan(struct usbnet *usbdev )
{
  __le32 tmp ;
  int tmp___0 ;
  {
  tmp = 1U;
  tmp___0 = rndis_set_oid(usbdev, 218169626U, (void const *)(& tmp), 4);
  return (tmp___0);
}
}
static int set_essid(struct usbnet *usbdev , struct ndis_80211_ssid *ssid )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  ret = rndis_set_oid(usbdev, 218169602U, (void const *)ssid, 36);
  if (ret < 0) {
    netdev_warn((struct net_device const *)usbdev->net, "setting SSID failed (%08X)\n",
                ret);
    return (ret);
  } else {
  }
  if (ret == 0) {
    priv->radio_on = 1;
    descriptor.modname = "rndis_wlan";
    descriptor.function = "set_essid";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "%s(): radio_on = true\n";
    descriptor.lineno = 1001U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net,
                           "%s(): radio_on = true\n", "set_essid");
    } else {
    }
  } else {
  }
  return (ret);
}
}
static int set_bssid(struct usbnet *usbdev , u8 const *bssid )
{
  int ret ;
  {
  ret = rndis_set_oid(usbdev, 218169601U, (void const *)bssid, 6);
  if (ret < 0) {
    netdev_warn((struct net_device const *)usbdev->net, "setting BSSID[%pM] failed (%08X)\n",
                bssid, ret);
    return (ret);
  } else {
  }
  return (ret);
}
}
static int clear_bssid(struct usbnet *usbdev )
{
  u8 broadcast_mac[6U] ;
  int tmp ;
  {
  broadcast_mac[0] = 255U;
  broadcast_mac[1] = 255U;
  broadcast_mac[2] = 255U;
  broadcast_mac[3] = 255U;
  broadcast_mac[4] = 255U;
  broadcast_mac[5] = 255U;
  tmp = set_bssid(usbdev, (u8 const *)(& broadcast_mac));
  return (tmp);
}
}
static int get_bssid(struct usbnet *usbdev , u8 *bssid )
{
  int ret ;
  int len ;
  {
  len = 6;
  ret = rndis_query_oid(usbdev, 218169601U, (void *)bssid, & len);
  if (ret != 0) {
    eth_zero_addr(bssid);
  } else {
  }
  return (ret);
}
}
static int get_association_info(struct usbnet *usbdev , struct ndis_80211_assoc_info *info ,
                                int len )
{
  int tmp ;
  {
  tmp = rndis_query_oid(usbdev, 218169631U, (void *)info, & len);
  return (tmp);
}
}
static bool is_associated(struct usbnet *usbdev )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  u8 bssid[6U] ;
  int ret ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  if (! priv->radio_on) {
    return (0);
  } else {
  }
  ret = get_bssid(usbdev, (u8 *)(& bssid));
  if (ret == 0) {
    tmp___0 = is_zero_ether_addr((u8 const *)(& bssid));
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  return ((bool )tmp___2);
}
}
static int disassociate(struct usbnet *usbdev , bool reset_ssid )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct ndis_80211_ssid ssid ;
  int i ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  ret = 0;
  if ((int )priv->radio_on) {
    ret = rndis_set_oid(usbdev, 218169621U, (void const *)0, 0);
    if (ret == 0) {
      priv->radio_on = 0;
      descriptor.modname = "rndis_wlan";
      descriptor.function = "disassociate";
      descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
      descriptor.format = "%s(): radio_on = false\n";
      descriptor.lineno = 1080U;
      descriptor.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net,
                             "%s(): radio_on = false\n", "disassociate");
      } else {
      }
      if ((int )reset_ssid) {
        msleep(100U);
      } else {
      }
    } else {
    }
  } else {
  }
  if ((int )reset_ssid) {
    set_infra_mode(usbdev, 1);
    ssid.length = 32U;
    get_random_bytes((void *)(& ssid.essid) + 2U, 30);
    ssid.essid[0] = 1U;
    ssid.essid[1] = 255U;
    i = 2;
    goto ldv_50405;
    ldv_50404:
    ssid.essid[i] = (unsigned int )((u8 )(((int )ssid.essid[i] * 254) / 255)) + 1U;
    i = i + 1;
    ldv_50405: ;
    if ((unsigned int )i <= 31U) {
      goto ldv_50404;
    } else {
    }
    ret = set_essid(usbdev, & ssid);
  } else {
  }
  return (ret);
}
}
static int set_auth_mode(struct usbnet *usbdev , u32 wpa_version , enum nl80211_auth_type auth_type ,
                         int keymgmt )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  __le32 tmp___0 ;
  int auth_mode ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "set_auth_mode";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): wpa_version=0x%x authalg=0x%x keymgmt=0x%x\n";
  descriptor.lineno = 1114U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): wpa_version=0x%x authalg=0x%x keymgmt=0x%x\n",
                         "set_auth_mode", wpa_version, (unsigned int )auth_type, keymgmt);
  } else {
  }
  if ((wpa_version & 2U) != 0U) {
    if (keymgmt & 1) {
      auth_mode = 6;
    } else {
      auth_mode = 7;
    }
  } else
  if ((int )wpa_version & 1) {
    if (keymgmt & 1) {
      auth_mode = 3;
    } else
    if ((keymgmt & 2) != 0) {
      auth_mode = 4;
    } else {
      auth_mode = 5;
    }
  } else
  if ((unsigned int )auth_type == 1U) {
    auth_mode = 1;
  } else
  if ((unsigned int )auth_type == 0U) {
    auth_mode = 0;
  } else
  if ((unsigned int )auth_type == 5U) {
    auth_mode = 2;
  } else {
    return (-524);
  }
  tmp___0 = (unsigned int )auth_mode;
  ret = rndis_set_oid(usbdev, 218169624U, (void const *)(& tmp___0), 4);
  if (ret != 0) {
    netdev_warn((struct net_device const *)usbdev->net, "setting auth mode failed (%08X)\n",
                ret);
    return (ret);
  } else {
  }
  priv->wpa_version = (int )wpa_version;
  return (0);
}
}
static int set_priv_filter(struct usbnet *usbdev )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  __le32 tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  int tmp___2 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "set_priv_filter";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): wpa_version=0x%x\n";
  descriptor.lineno = 1158U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): wpa_version=0x%x\n",
                         "set_priv_filter", priv->wpa_version);
  } else {
  }
  if ((priv->wpa_version & 2) != 0 || priv->wpa_version & 1) {
    tmp___0 = 1U;
  } else {
    tmp___0 = 0U;
  }
  tmp___2 = rndis_set_oid(usbdev, 218169625U, (void const *)(& tmp___0), 4);
  return (tmp___2);
}
}
static int set_encr_mode(struct usbnet *usbdev , int pairwise , int groupwise )
{
  __le32 tmp ;
  int encr_mode ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  descriptor.modname = "rndis_wlan";
  descriptor.function = "set_encr_mode";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): cipher_pair=0x%x cipher_group=0x%x\n";
  descriptor.lineno = 1177U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): cipher_pair=0x%x cipher_group=0x%x\n",
                         "set_encr_mode", pairwise, groupwise);
  } else {
  }
  if ((pairwise & 4) != 0) {
    encr_mode = 6;
  } else
  if ((pairwise & 2) != 0) {
    encr_mode = 4;
  } else
  if (pairwise & 1) {
    encr_mode = 0;
  } else
  if ((groupwise & 4) != 0) {
    encr_mode = 6;
  } else
  if ((groupwise & 2) != 0) {
    encr_mode = 4;
  } else {
    encr_mode = 1;
  }
  tmp = (unsigned int )encr_mode;
  ret = rndis_set_oid(usbdev, 218169627U, (void const *)(& tmp), 4);
  if (ret != 0) {
    netdev_warn((struct net_device const *)usbdev->net, "setting encr mode failed (%08X)\n",
                ret);
    return (ret);
  } else {
  }
  return (0);
}
}
static int set_infra_mode(struct usbnet *usbdev , int mode )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  __le32 tmp___0 ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "set_infra_mode";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): infra_mode=0x%x\n";
  descriptor.lineno = 1212U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): infra_mode=0x%x\n",
                         "set_infra_mode", priv->infra_mode);
  } else {
  }
  tmp___0 = (unsigned int )mode;
  ret = rndis_set_oid(usbdev, 218169608U, (void const *)(& tmp___0), 4);
  if (ret != 0) {
    netdev_warn((struct net_device const *)usbdev->net, "setting infra mode failed (%08X)\n",
                ret);
    return (ret);
  } else {
  }
  restore_keys(usbdev);
  priv->infra_mode = mode;
  return (0);
}
}
static int set_rts_threshold(struct usbnet *usbdev , u32 rts_threshold )
{
  __le32 tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  {
  descriptor.modname = "rndis_wlan";
  descriptor.function = "set_rts_threshold";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): %i\n";
  descriptor.lineno = 1237U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): %i\n",
                         "set_rts_threshold", rts_threshold);
  } else {
  }
  if (rts_threshold > 2347U) {
    rts_threshold = 2347U;
  } else {
  }
  tmp = rts_threshold;
  tmp___1 = rndis_set_oid(usbdev, 218169866U, (void const *)(& tmp), 4);
  return (tmp___1);
}
}
static int set_frag_threshold(struct usbnet *usbdev , u32 frag_threshold )
{
  __le32 tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  {
  descriptor.modname = "rndis_wlan";
  descriptor.function = "set_frag_threshold";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): %i\n";
  descriptor.lineno = 1252U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): %i\n",
                         "set_frag_threshold", frag_threshold);
  } else {
  }
  if (frag_threshold <= 255U || frag_threshold > 2346U) {
    frag_threshold = 2346U;
  } else {
  }
  tmp = frag_threshold;
  tmp___1 = rndis_set_oid(usbdev, 218169865U, (void const *)(& tmp), 4);
  return (tmp___1);
}
}
static void set_default_iw_params(struct usbnet *usbdev )
{
  {
  set_infra_mode(usbdev, 1);
  set_auth_mode(usbdev, 0U, 0, 0);
  set_priv_filter(usbdev);
  set_encr_mode(usbdev, 0, 0);
  return;
}
}
static int deauthenticate(struct usbnet *usbdev )
{
  int ret ;
  {
  ret = disassociate(usbdev, 1);
  set_default_iw_params(usbdev);
  return (ret);
}
}
static int set_channel(struct usbnet *usbdev , int channel )
{
  struct ndis_80211_conf config ;
  unsigned int dsconfig ;
  int len ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  {
  descriptor.modname = "rndis_wlan";
  descriptor.function = "set_channel";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(%d)\n";
  descriptor.lineno = 1287U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(%d)\n",
                         "set_channel", channel);
  } else {
  }
  tmp___0 = is_associated(usbdev);
  if ((int )tmp___0) {
    return (0);
  } else {
  }
  tmp___1 = ieee80211_channel_to_frequency(channel, 0);
  dsconfig = (unsigned int )(tmp___1 * 1000);
  len = 32;
  ret = rndis_query_oid(usbdev, 218169873U, (void *)(& config), & len);
  if (ret < 0) {
    descriptor___0.modname = "rndis_wlan";
    descriptor___0.function = "set_channel";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor___0.format = "%s(): querying configuration failed\n";
    descriptor___0.lineno = 1302U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)usbdev->net,
                           "%s(): querying configuration failed\n", "set_channel");
    } else {
    }
    return (ret);
  } else {
  }
  config.ds_config = dsconfig;
  ret = rndis_set_oid(usbdev, 218169873U, (void const *)(& config), 32);
  descriptor___1.modname = "rndis_wlan";
  descriptor___1.function = "set_channel";
  descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor___1.format = "%s(): %d -> %d\n";
  descriptor___1.lineno = 1311U;
  descriptor___1.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)usbdev->net,
                         "%s(): %d -> %d\n", "set_channel", channel, ret);
  } else {
  }
  return (ret);
}
}
static struct ieee80211_channel *get_current_channel(struct usbnet *usbdev , u32 *beacon_period )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct ieee80211_channel *channel ;
  struct ndis_80211_conf config ;
  int len ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  len = 32;
  ret = rndis_query_oid(usbdev, 218169873U, (void *)(& config), & len);
  descriptor.modname = "rndis_wlan";
  descriptor.function = "get_current_channel";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): RNDIS_OID_802_11_CONFIGURATION -> %d\n";
  descriptor.lineno = 1330U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): RNDIS_OID_802_11_CONFIGURATION -> %d\n",
                         "get_current_channel", ret);
  } else {
  }
  if (ret < 0) {
    return ((struct ieee80211_channel *)0);
  } else {
  }
  channel = ieee80211_get_channel(priv->wdev.wiphy, (int )(config.ds_config / 1000U));
  if ((unsigned long )channel == (unsigned long )((struct ieee80211_channel *)0)) {
    return ((struct ieee80211_channel *)0);
  } else {
  }
  if ((unsigned long )beacon_period != (unsigned long )((u32 *)0U)) {
    *beacon_period = config.beacon_period;
  } else {
  }
  return (channel);
}
}
static int add_wep_key(struct usbnet *usbdev , u8 const *key , int key_len , u8 index )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct ndis_80211_wep_key ndis_key ;
  u32 cipher ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "add_wep_key";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(idx: %d, len: %d)\n";
  descriptor.lineno = 1354U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(idx: %d, len: %d)\n",
                         "add_wep_key", (int )index, key_len);
  } else {
  }
  if ((unsigned int )index > 3U) {
    return (-22);
  } else {
  }
  if (key_len == 5) {
    cipher = 1027073U;
  } else
  if (key_len == 13) {
    cipher = 1027077U;
  } else {
    return (-22);
  }
  memset((void *)(& ndis_key), 0, 44UL);
  ndis_key.size = 44U;
  ndis_key.length = (unsigned int )key_len;
  ndis_key.index = (unsigned int )index;
  memcpy((void *)(& ndis_key.material), (void const *)key, (size_t )key_len);
  if ((int )priv->encr_tx_key_index == (int )index) {
    ndis_key.index = ndis_key.index | 2147483648U;
    ret = set_encr_mode(usbdev, 1, 0);
    if (ret != 0) {
      netdev_warn((struct net_device const *)usbdev->net, "encryption couldn\'t be enabled (%08X)\n",
                  ret);
    } else {
    }
  } else {
  }
  ret = rndis_set_oid(usbdev, 218169619U, (void const *)(& ndis_key), 44);
  if (ret != 0) {
    netdev_warn((struct net_device const *)usbdev->net, "adding encryption key %d failed (%08X)\n",
                (int )index + 1, ret);
    return (ret);
  } else {
  }
  priv->encr_keys[(int )index].len = key_len;
  priv->encr_keys[(int )index].cipher = cipher;
  memcpy((void *)(& priv->encr_keys[(int )index].material), (void const *)key,
           (size_t )key_len);
  eth_broadcast_addr((u8 *)(& priv->encr_keys[(int )index].bssid));
  return (0);
}
}
static int add_wpa_key(struct usbnet *usbdev , u8 const *key , int key_len , u8 index ,
                       u8 const *addr , u8 const *rx_seq , int seq_len , u32 cipher ,
                       __le32 flags )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct ndis_80211_key ndis_key ;
  bool is_addr_ok ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  bool tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  struct _ddebug descriptor___3 ;
  long tmp___9 ;
  struct _ddebug descriptor___4 ;
  long tmp___10 ;
  struct _ddebug descriptor___5 ;
  long tmp___11 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  if ((unsigned int )index > 3U) {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "add_wpa_key";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "%s(): index out of range (%i)\n";
    descriptor.lineno = 1410U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net,
                           "%s(): index out of range (%i)\n", "add_wpa_key", (int )index);
    } else {
    }
    return (-22);
  } else {
  }
  if ((unsigned int )key_len > 32U || key_len < 0) {
    descriptor___0.modname = "rndis_wlan";
    descriptor___0.function = "add_wpa_key";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor___0.format = "%s(): key length out of range (%i)\n";
    descriptor___0.lineno = 1415U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)usbdev->net,
                           "%s(): key length out of range (%i)\n", "add_wpa_key",
                           key_len);
    } else {
    }
    return (-22);
  } else {
  }
  if ((flags & 536870912U) != 0U) {
    if ((unsigned long )rx_seq == (unsigned long )((u8 const *)0U) || seq_len <= 0) {
      descriptor___1.modname = "rndis_wlan";
      descriptor___1.function = "add_wpa_key";
      descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
      descriptor___1.format = "%s(): recv seq flag without buffer\n";
      descriptor___1.lineno = 1421U;
      descriptor___1.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___2 != 0L) {
        __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)usbdev->net,
                             "%s(): recv seq flag without buffer\n", "add_wpa_key");
      } else {
      }
      return (-22);
    } else {
    }
    if ((unsigned long )rx_seq != (unsigned long )((u8 const *)0U) && (unsigned int )seq_len > 8U) {
      descriptor___2.modname = "rndis_wlan";
      descriptor___2.function = "add_wpa_key";
      descriptor___2.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
      descriptor___2.format = "%s(): too big recv seq buffer\n";
      descriptor___2.lineno = 1425U;
      descriptor___2.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        __dynamic_netdev_dbg(& descriptor___2, (struct net_device const *)usbdev->net,
                             "%s(): too big recv seq buffer\n", "add_wpa_key");
      } else {
      }
      return (-22);
    } else {
    }
  } else {
  }
  if ((unsigned long )addr != (unsigned long )((u8 const *)0U)) {
    tmp___4 = is_zero_ether_addr(addr);
    if (tmp___4) {
      tmp___5 = 0;
    } else {
      tmp___5 = 1;
    }
    if (tmp___5) {
      tmp___6 = is_broadcast_ether_addr(addr);
      if (tmp___6) {
        tmp___7 = 0;
      } else {
        tmp___7 = 1;
      }
      if (tmp___7) {
        tmp___8 = 1;
      } else {
        tmp___8 = 0;
      }
    } else {
      tmp___8 = 0;
    }
  } else {
    tmp___8 = 0;
  }
  is_addr_ok = (bool )tmp___8;
  if ((flags & 1073741824U) != 0U && ! is_addr_ok) {
    descriptor___3.modname = "rndis_wlan";
    descriptor___3.function = "add_wpa_key";
    descriptor___3.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor___3.format = "%s(): pairwise but bssid invalid (%pM)\n";
    descriptor___3.lineno = 1434U;
    descriptor___3.flags = 0U;
    tmp___9 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      __dynamic_netdev_dbg(& descriptor___3, (struct net_device const *)usbdev->net,
                           "%s(): pairwise but bssid invalid (%pM)\n", "add_wpa_key",
                           addr);
    } else {
    }
    return (-22);
  } else {
  }
  descriptor___4.modname = "rndis_wlan";
  descriptor___4.function = "add_wpa_key";
  descriptor___4.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor___4.format = "%s(%i): flags:%i%i%i\n";
  descriptor___4.lineno = 1442U;
  descriptor___4.flags = 0U;
  tmp___10 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    __dynamic_netdev_dbg(& descriptor___4, (struct net_device const *)usbdev->net,
                         "%s(%i): flags:%i%i%i\n", "add_wpa_key", (int )index, (int )flags < 0,
                         (flags & 1073741824U) != 0U, (flags & 536870912U) != 0U);
  } else {
  }
  memset((void *)(& ndis_key), 0, 64UL);
  ndis_key.size = (unsigned int )key_len + 32U;
  ndis_key.length = (unsigned int )key_len;
  ndis_key.index = (unsigned int )index | flags;
  if (cipher == 1027074U && key_len == 32) {
    memcpy((void *)(& ndis_key.material), (void const *)key, 16UL);
    memcpy((void *)(& ndis_key.material) + 16U, (void const *)key + 24U, 8UL);
    memcpy((void *)(& ndis_key.material) + 24U, (void const *)key + 16U, 8UL);
  } else {
    memcpy((void *)(& ndis_key.material), (void const *)key, (size_t )key_len);
  }
  if ((flags & 536870912U) != 0U) {
    memcpy((void *)(& ndis_key.rsc), (void const *)rx_seq, (size_t )seq_len);
  } else {
  }
  if ((flags & 1073741824U) != 0U) {
    memcpy((void *)(& ndis_key.bssid), (void const *)addr, 6UL);
  } else
  if (priv->infra_mode == 0) {
    eth_broadcast_addr((u8 *)(& ndis_key.bssid));
  } else {
    get_bssid(usbdev, (u8 *)(& ndis_key.bssid));
  }
  ret = rndis_set_oid(usbdev, 218169629U, (void const *)(& ndis_key), (int )ndis_key.size);
  descriptor___5.modname = "rndis_wlan";
  descriptor___5.function = "add_wpa_key";
  descriptor___5.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor___5.format = "%s(): RNDIS_OID_802_11_ADD_KEY -> %08X\n";
  descriptor___5.lineno = 1478U;
  descriptor___5.flags = 0U;
  tmp___11 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___11 != 0L) {
    __dynamic_netdev_dbg(& descriptor___5, (struct net_device const *)usbdev->net,
                         "%s(): RNDIS_OID_802_11_ADD_KEY -> %08X\n", "add_wpa_key",
                         ret);
  } else {
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  memset((void *)(& priv->encr_keys) + (unsigned long )index, 0, 48UL);
  priv->encr_keys[(int )index].len = key_len;
  priv->encr_keys[(int )index].cipher = cipher;
  memcpy((void *)(& priv->encr_keys[(int )index].material), (void const *)key,
           (size_t )key_len);
  if ((flags & 1073741824U) != 0U) {
    memcpy((void *)(& priv->encr_keys[(int )index].bssid), (void const *)(& ndis_key.bssid),
             6UL);
  } else {
    eth_broadcast_addr((u8 *)(& priv->encr_keys[(int )index].bssid));
  }
  if ((int )flags < 0) {
    priv->encr_tx_key_index = index;
  } else {
  }
  return (0);
}
}
static int restore_key(struct usbnet *usbdev , u8 key_idx )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct rndis_wlan_encr_key key ;
  bool tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  int tmp___2 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  tmp___0 = is_wpa_key(priv, (int )key_idx);
  if ((int )tmp___0) {
    return (0);
  } else {
  }
  key = priv->encr_keys[(int )key_idx];
  descriptor.modname = "rndis_wlan";
  descriptor.function = "restore_key";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): %i:%i\n";
  descriptor.lineno = 1507U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): %i:%i\n",
                         "restore_key", (int )key_idx, key.len);
  } else {
  }
  if (key.len == 0) {
    return (0);
  } else {
  }
  tmp___2 = add_wep_key(usbdev, (u8 const *)(& key.material), key.len, (int )key_idx);
  return (tmp___2);
}
}
static void restore_keys(struct usbnet *usbdev )
{
  int i ;
  {
  i = 0;
  goto ldv_50537;
  ldv_50536:
  restore_key(usbdev, (int )((u8 )i));
  i = i + 1;
  ldv_50537: ;
  if (i <= 3) {
    goto ldv_50536;
  } else {
  }
  return;
}
}
static void clear_key(struct rndis_wlan_private *priv , u8 idx )
{
  {
  memset((void *)(& priv->encr_keys) + (unsigned long )idx, 0, 48UL);
  return;
}
}
static int remove_key(struct usbnet *usbdev , u8 index , u8 const *bssid )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct ndis_80211_remove_key remove_key___0 ;
  __le32 keyindex ;
  bool is_wpa ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  if ((unsigned int )index > 3U) {
    return (-2);
  } else {
  }
  if (priv->encr_keys[(int )index].len == 0) {
    return (0);
  } else {
  }
  is_wpa = is_wpa_key(priv, (int )index);
  descriptor.modname = "rndis_wlan";
  descriptor.function = "remove_key";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): %i:%s:%i\n";
  descriptor.lineno = 1547U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): %i:%s:%i\n",
                         "remove_key", (int )index, (int )is_wpa ? (char *)"wpa" : (char *)"wep",
                         priv->encr_keys[(int )index].len);
  } else {
  }
  clear_key(priv, (int )index);
  if ((int )is_wpa) {
    remove_key___0.size = 16U;
    remove_key___0.index = (unsigned int )index;
    if ((unsigned long )bssid != (unsigned long )((u8 const *)0U)) {
      tmp___1 = is_broadcast_ether_addr(bssid);
      if (tmp___1) {
        tmp___2 = 0;
      } else {
        tmp___2 = 1;
      }
      if (tmp___2) {
        remove_key___0.index = remove_key___0.index | 1073741824U;
      } else {
      }
      memcpy((void *)(& remove_key___0.bssid), (void const *)bssid, 6UL);
    } else {
      memset((void *)(& remove_key___0.bssid), 255, 6UL);
    }
    ret = rndis_set_oid(usbdev, 218169630U, (void const *)(& remove_key___0), 16);
    if (ret != 0) {
      return (ret);
    } else {
    }
  } else {
    keyindex = (unsigned int )index;
    ret = rndis_set_oid(usbdev, 218169620U, (void const *)(& keyindex), 4);
    if (ret != 0) {
      netdev_warn((struct net_device const *)usbdev->net, "removing encryption key %d failed (%08X)\n",
                  (int )index, ret);
      return (ret);
    } else {
    }
  }
  if ((int )priv->encr_tx_key_index == (int )index) {
    set_encr_mode(usbdev, 0, 0);
  } else {
  }
  return (0);
}
}
static void set_multicast_list(struct usbnet *usbdev )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct netdev_hw_addr *ha ;
  __le32 filter ;
  __le32 basefilter ;
  int ret ;
  char *mc_addrs ;
  int mc_count ;
  int i ;
  void *tmp___0 ;
  struct list_head const *__mptr ;
  int tmp___1 ;
  struct list_head const *__mptr___0 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  mc_addrs = (char *)0;
  filter = 9U;
  basefilter = filter;
  if (((usbdev->net)->flags & 256U) != 0U) {
    filter = filter | 160U;
  } else
  if (((usbdev->net)->flags & 512U) != 0U) {
    filter = filter | 4U;
  } else {
  }
  if (filter != basefilter) {
    goto set_filter;
  } else {
  }
  netif_addr_lock_bh(usbdev->net);
  mc_count = (usbdev->net)->mc.count;
  if (priv->multicast_size < mc_count) {
    filter = filter | 4U;
  } else
  if (mc_count != 0) {
    i = 0;
    tmp___0 = kmalloc_array((size_t )mc_count, 6UL, 32U);
    mc_addrs = (char *)tmp___0;
    if ((unsigned long )mc_addrs == (unsigned long )((char *)0)) {
      netif_addr_unlock_bh(usbdev->net);
      return;
    } else {
    }
    __mptr = (struct list_head const *)(usbdev->net)->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    goto ldv_50572;
    ldv_50571:
    tmp___1 = i;
    i = i + 1;
    memcpy((void *)mc_addrs + (unsigned long )(tmp___1 * 6), (void const *)(& ha->addr),
             6UL);
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    ldv_50572: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& (usbdev->net)->mc.list)) {
      goto ldv_50571;
    } else {
    }
  } else {
  }
  netif_addr_unlock_bh(usbdev->net);
  if (filter != basefilter) {
    goto set_filter;
  } else {
  }
  if (mc_count != 0) {
    ret = rndis_set_oid(usbdev, 16843011U, (void const *)mc_addrs, mc_count * 6);
    kfree((void const *)mc_addrs);
    if (ret == 0) {
      filter = filter | 2U;
    } else {
      filter = filter | 4U;
    }
    descriptor.modname = "rndis_wlan";
    descriptor.function = "set_multicast_list";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "RNDIS_OID_802_3_MULTICAST_LIST(%d, max: %d) -> %d\n";
    descriptor.lineno = 1649U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net,
                           "RNDIS_OID_802_3_MULTICAST_LIST(%d, max: %d) -> %d\n",
                           mc_count, priv->multicast_size, ret);
    } else {
    }
  } else {
  }
  set_filter:
  ret = rndis_set_oid(usbdev, 65806U, (void const *)(& filter), 4);
  if (ret < 0) {
    netdev_warn((struct net_device const *)usbdev->net, "couldn\'t set packet filter: %08x\n",
                filter);
  } else {
  }
  descriptor___0.modname = "rndis_wlan";
  descriptor___0.function = "set_multicast_list";
  descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor___0.format = "RNDIS_OID_GEN_CURRENT_PACKET_FILTER(%08x) -> %d\n";
  descriptor___0.lineno = 1661U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)usbdev->net,
                         "RNDIS_OID_GEN_CURRENT_PACKET_FILTER(%08x) -> %d\n", filter,
                         ret);
  } else {
  }
  return;
}
}
static void debug_print_pmkids(struct usbnet *usbdev , struct ndis_80211_pmkid *pmkids ,
                               char const *func_str )
{
  {
  return;
}
}
static struct ndis_80211_pmkid *get_device_pmkids(struct usbnet *usbdev )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct ndis_80211_pmkid *pmkids ;
  int len ;
  int ret ;
  int max_pmkids ;
  void *tmp___0 ;
  void *tmp___1 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  void *tmp___3 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  max_pmkids = (int )(priv->wdev.wiphy)->max_num_pmkids;
  len = (int )((unsigned int )((unsigned long )max_pmkids) * 22U + 8U);
  tmp___0 = kmalloc((size_t )len, 208U);
  pmkids = (struct ndis_80211_pmkid *)tmp___0;
  if ((unsigned long )pmkids == (unsigned long )((struct ndis_80211_pmkid *)0)) {
    tmp___1 = ERR_PTR(-12L);
    return ((struct ndis_80211_pmkid *)tmp___1);
  } else {
  }
  pmkids->length = (unsigned int )len;
  pmkids->bssid_info_count = (unsigned int )max_pmkids;
  ret = rndis_query_oid(usbdev, 218169635U, (void *)pmkids, & len);
  if (ret < 0) {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "get_device_pmkids";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "%s(): RNDIS_OID_802_11_PMKID(%d, %d) -> %d\n";
    descriptor.lineno = 1723U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net,
                           "%s(): RNDIS_OID_802_11_PMKID(%d, %d) -> %d\n", "get_device_pmkids",
                           len, max_pmkids, ret);
    } else {
    }
    kfree((void const *)pmkids);
    tmp___3 = ERR_PTR((long )ret);
    return ((struct ndis_80211_pmkid *)tmp___3);
  } else {
  }
  if (pmkids->bssid_info_count > (__le32 )max_pmkids) {
    pmkids->bssid_info_count = (unsigned int )max_pmkids;
  } else {
  }
  debug_print_pmkids(usbdev, pmkids, "get_device_pmkids");
  return (pmkids);
}
}
static int set_device_pmkids(struct usbnet *usbdev , struct ndis_80211_pmkid *pmkids )
{
  int ret ;
  int len ;
  int num_pmkids ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  num_pmkids = (int )pmkids->bssid_info_count;
  len = (int )((unsigned int )((unsigned long )num_pmkids) * 22U + 8U);
  pmkids->length = (unsigned int )len;
  debug_print_pmkids(usbdev, pmkids, "set_device_pmkids");
  ret = rndis_set_oid(usbdev, 218169635U, (void const *)pmkids, (int )pmkids->length);
  if (ret < 0) {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "set_device_pmkids";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "%s(): RNDIS_OID_802_11_PMKID(%d, %d) -> %d\n";
    descriptor.lineno = 1752U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net,
                           "%s(): RNDIS_OID_802_11_PMKID(%d, %d) -> %d\n", "set_device_pmkids",
                           len, num_pmkids, ret);
    } else {
    }
  } else {
  }
  kfree((void const *)pmkids);
  return (ret);
}
}
static struct ndis_80211_pmkid *remove_pmkid(struct usbnet *usbdev , struct ndis_80211_pmkid *pmkids ,
                                             struct cfg80211_pmksa *pmksa , int max_pmkids )
{
  int i ;
  int newlen ;
  int err ;
  unsigned int count ;
  bool tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  void *tmp___1 ;
  {
  count = pmkids->bssid_info_count;
  if ((unsigned int )max_pmkids < count) {
    count = (unsigned int )max_pmkids;
  } else {
  }
  i = 0;
  goto ldv_50613;
  ldv_50612:
  tmp = ether_addr_equal((u8 const *)(& pmkids->bssid_info[i].bssid), pmksa->bssid);
  if ((int )tmp) {
    goto ldv_50611;
  } else {
  }
  i = i + 1;
  ldv_50613: ;
  if ((unsigned int )i < count) {
    goto ldv_50612;
  } else {
  }
  ldv_50611: ;
  if ((unsigned int )i == count) {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "remove_pmkid";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "%s(): bssid not found (%pM)\n";
    descriptor.lineno = 1780U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net,
                           "%s(): bssid not found (%pM)\n", "remove_pmkid", pmksa->bssid);
    } else {
    }
    err = -2;
    goto error;
  } else {
  }
  goto ldv_50618;
  ldv_50617:
  pmkids->bssid_info[i] = pmkids->bssid_info[i + 1];
  i = i + 1;
  ldv_50618: ;
  if ((unsigned int )(i + 1) < count) {
    goto ldv_50617;
  } else {
  }
  count = count - 1U;
  newlen = (int )(count * 22U + 8U);
  pmkids->length = (unsigned int )newlen;
  pmkids->bssid_info_count = count;
  return (pmkids);
  error:
  kfree((void const *)pmkids);
  tmp___1 = ERR_PTR((long )err);
  return ((struct ndis_80211_pmkid *)tmp___1);
}
}
static struct ndis_80211_pmkid *update_pmkid(struct usbnet *usbdev , struct ndis_80211_pmkid *pmkids ,
                                             struct cfg80211_pmksa *pmksa , int max_pmkids )
{
  struct ndis_80211_pmkid *new_pmkids ;
  int i ;
  int err ;
  int newlen ;
  unsigned int count ;
  bool tmp ;
  int tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  {
  count = pmkids->bssid_info_count;
  if ((unsigned int )max_pmkids < count) {
    count = (unsigned int )max_pmkids;
  } else {
  }
  i = 0;
  goto ldv_50633;
  ldv_50632:
  tmp = ether_addr_equal((u8 const *)(& pmkids->bssid_info[i].bssid), pmksa->bssid);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    goto ldv_50631;
  } else {
  }
  memcpy((void *)(& pmkids->bssid_info[i].pmkid), (void const *)pmksa->pmkid,
           16UL);
  return (pmkids);
  ldv_50631:
  i = i + 1;
  ldv_50633: ;
  if ((unsigned int )i < count) {
    goto ldv_50632;
  } else {
  }
  if (i == max_pmkids) {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "update_pmkid";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "%s(): out of space\n";
    descriptor.lineno = 1828U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net,
                           "%s(): out of space\n", "update_pmkid");
    } else {
    }
    err = -28;
    goto error;
  } else {
  }
  newlen = (int )((count + 1U) * 22U + 8U);
  tmp___2 = ldv_krealloc_42((void const *)pmkids, (size_t )newlen, 208U);
  new_pmkids = (struct ndis_80211_pmkid *)tmp___2;
  if ((unsigned long )new_pmkids == (unsigned long )((struct ndis_80211_pmkid *)0)) {
    err = -12;
    goto error;
  } else {
  }
  pmkids = new_pmkids;
  pmkids->length = (unsigned int )newlen;
  pmkids->bssid_info_count = count + 1U;
  memcpy((void *)(& pmkids->bssid_info[count].bssid), (void const *)pmksa->bssid,
           6UL);
  memcpy((void *)(& pmkids->bssid_info[count].pmkid), (void const *)pmksa->pmkid,
           16UL);
  return (pmkids);
  error:
  kfree((void const *)pmkids);
  tmp___3 = ERR_PTR((long )err);
  return ((struct ndis_80211_pmkid *)tmp___3);
}
}
static int rndis_change_virtual_intf(struct wiphy *wiphy , struct net_device *dev ,
                                     enum nl80211_iftype type , u32 *flags , struct vif_params *params )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  int mode ;
  int tmp___0 ;
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  switch ((unsigned int )type) {
  case 1U:
  mode = 0;
  goto ldv_50649;
  case 2U:
  mode = 1;
  goto ldv_50649;
  default: ;
  return (-22);
  }
  ldv_50649:
  priv->wdev.iftype = type;
  tmp___0 = set_infra_mode(usbdev, mode);
  return (tmp___0);
}
}
static int rndis_set_wiphy_params(struct wiphy *wiphy , u32 changed )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  int err ;
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  if ((changed & 4U) != 0U) {
    err = set_frag_threshold(usbdev, wiphy->frag_threshold);
    if (err < 0) {
      return (err);
    } else {
    }
  } else {
  }
  if ((changed & 8U) != 0U) {
    err = set_rts_threshold(usbdev, wiphy->rts_threshold);
    if (err < 0) {
      return (err);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int rndis_set_tx_power(struct wiphy *wiphy , struct wireless_dev *wdev , enum nl80211_tx_power_setting type ,
                              int mbm )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  u32 tmp___1 ;
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_set_tx_power";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): type:0x%x mbm:%i\n";
  descriptor.lineno = 1913U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): type:0x%x mbm:%i\n",
                         "rndis_set_tx_power", (unsigned int )type, mbm);
  } else {
  }
  if (mbm < 0 || mbm % 100 != 0) {
    return (-524);
  } else {
  }
  if ((unsigned int )type == 0U) {
    goto _L;
  } else {
    tmp___1 = get_bcm4320_power_dbm(priv);
    if ((u32 )(mbm / 100) == tmp___1) {
      _L:
      if (! priv->radio_on) {
        disassociate(usbdev, 1);
      } else {
      }
      return (0);
    } else {
    }
  }
  return (-524);
}
}
static int rndis_get_tx_power(struct wiphy *wiphy , struct wireless_dev *wdev , int *dbm )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  u32 tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  tmp___0 = get_bcm4320_power_dbm(priv);
  *dbm = (int )tmp___0;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_get_tx_power";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): dbm:%i\n";
  descriptor.lineno = 1942U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): dbm:%i\n",
                         "rndis_get_tx_power", *dbm);
  } else {
  }
  return (0);
}
}
static int rndis_scan(struct wiphy *wiphy , struct cfg80211_scan_request *request )
{
  struct net_device *dev ;
  struct usbnet *usbdev ;
  void *tmp ;
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp___0 ;
  int ret ;
  int delay ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  dev = (request->wdev)->netdev;
  tmp = netdev_priv((struct net_device const *)dev);
  usbdev = (struct usbnet *)tmp;
  tmp___0 = get_rndis_wlan_priv(usbdev);
  priv = tmp___0;
  delay = 1500;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_scan";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "cfg80211.scan\n";
  descriptor.lineno = 1957U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "cfg80211.scan\n");
  } else {
  }
  rndis_check_bssid_list(usbdev, (u8 *)0U, (bool *)0);
  if ((unsigned long )priv->scan_request != (unsigned long )((struct cfg80211_scan_request *)0) && (unsigned long )priv->scan_request != (unsigned long )request) {
    return (-16);
  } else {
  }
  priv->scan_request = request;
  ret = rndis_start_bssid_list_scan(usbdev);
  if (ret == 0) {
    if (priv->device_type == 1) {
      delay = 250;
    } else {
    }
    queue_delayed_work(priv->workqueue, & priv->scan_work, (unsigned long )delay);
  } else {
  }
  return (ret);
}
}
static bool rndis_bss_info_update(struct usbnet *usbdev , struct ndis_80211_bssid_ex *bssid )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct ieee80211_channel *channel ;
  struct cfg80211_bss *bss ;
  s32 signal ;
  u64 timestamp ;
  u16 capability ;
  u16 beacon_interval ;
  struct ndis_80211_fixed_ies *fixed ;
  int ie_len ;
  int bssid_len ;
  u8 *ie ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int _min1 ;
  int _min2 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_bss_info_update";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = " found bssid: \'%.32s\' [%pM], len: %d\n";
  descriptor.lineno = 1996U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, " found bssid: \'%.32s\' [%pM], len: %d\n",
                         (u8 *)(& bssid->ssid.essid), (u8 *)(& bssid->mac), bssid->length);
  } else {
  }
  bssid_len = (int )bssid->length;
  if ((unsigned int )bssid_len <= 127U) {
    return (0);
  } else {
  }
  fixed = (struct ndis_80211_fixed_ies *)(& bssid->ies);
  ie = (u8 *)(& bssid->ies) + 12U;
  _min1 = bssid_len + -116;
  _min2 = (int )bssid->ie_length;
  ie_len = _min1 < _min2 ? _min1 : _min2;
  ie_len = (int )((unsigned int )ie_len - 12U);
  if (ie_len < 0) {
    return (0);
  } else {
  }
  channel = ieee80211_get_channel(priv->wdev.wiphy, (int )(bssid->config.ds_config / 1000U));
  if ((unsigned long )channel == (unsigned long )((struct ieee80211_channel *)0)) {
    return (0);
  } else {
  }
  signal = level_to_qual((int )bssid->rssi);
  timestamp = *((__le64 *)(& fixed->timestamp));
  capability = fixed->capabilities;
  beacon_interval = fixed->beacon_interval;
  bss = cfg80211_inform_bss(priv->wdev.wiphy, channel, 0, (u8 const *)(& bssid->mac),
                            timestamp, (int )capability, (int )beacon_interval, (u8 const *)ie,
                            (size_t )ie_len, signal, 208U);
  cfg80211_put_bss(priv->wdev.wiphy, bss);
  return ((unsigned long )bss != (unsigned long )((struct cfg80211_bss *)0));
}
}
static struct ndis_80211_bssid_ex *next_bssid_list_item(struct ndis_80211_bssid_ex *bssid ,
                                                        int *bssid_len , void *buf ,
                                                        int len )
{
  void *buf_end ;
  void *bssid_end ;
  {
  buf_end = buf + (unsigned long )len;
  bssid_end = (void *)bssid + (unsigned long )*bssid_len;
  if ((unsigned int )((long )buf_end) - (unsigned int )((long )bssid_end) <= 3U) {
    *bssid_len = 0;
    return ((struct ndis_80211_bssid_ex *)0);
  } else {
    bssid = bssid + (unsigned long )*bssid_len;
    *bssid_len = (int )bssid->length;
    return (bssid);
  }
}
}
static bool check_bssid_list_item(struct ndis_80211_bssid_ex *bssid , int bssid_len ,
                                  void *buf , int len )
{
  void *buf_end ;
  void *bssid_end ;
  {
  if (((unsigned long )bssid == (unsigned long )((struct ndis_80211_bssid_ex *)0) || bssid_len <= 0) || bssid_len > len) {
    return (0);
  } else {
  }
  buf_end = buf + (unsigned long )len;
  bssid_end = (void *)bssid + (unsigned long )bssid_len;
  return ((bool )((int )((unsigned int )((long )buf_end) - (unsigned int )((long )bssid_end)) >= 0 && (int )((unsigned int )((long )bssid_end) - (unsigned int )((long )buf)) >= 0));
}
}
static int rndis_check_bssid_list(struct usbnet *usbdev , u8 *match_bssid , bool *matched )
{
  void *buf ;
  struct ndis_80211_bssid_list_ex *bssid_list ;
  struct ndis_80211_bssid_ex *bssid ;
  int ret ;
  int len ;
  int count ;
  int bssid_len ;
  int real_count ;
  int new_len ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  {
  buf = (void *)0;
  ret = -22;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_check_bssid_list";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s()\n";
  descriptor.lineno = 2075U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s()\n",
                         "rndis_check_bssid_list");
  } else {
  }
  len = 1025;
  resize_buf:
  buf = kmalloc((size_t )len, 208U);
  if ((unsigned long )buf == (unsigned long )((void *)0)) {
    ret = -12;
    goto out;
  } else {
  }
  new_len = len;
  ret = rndis_query_oid(usbdev, 218169879U, buf, & new_len);
  if (ret != 0 || (unsigned int )new_len <= 3U) {
    goto out;
  } else {
  }
  if (new_len > len) {
    len = new_len;
    kfree((void const *)buf);
    goto resize_buf;
  } else {
  }
  len = new_len;
  bssid_list = (struct ndis_80211_bssid_list_ex *)buf;
  count = (int )bssid_list->num_items;
  real_count = 0;
  descriptor___0.modname = "rndis_wlan";
  descriptor___0.function = "rndis_check_bssid_list";
  descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor___0.format = "%s(): buflen: %d\n";
  descriptor___0.lineno = 2105U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)usbdev->net,
                         "%s(): buflen: %d\n", "rndis_check_bssid_list", len);
  } else {
  }
  bssid_len = 0;
  bssid = next_bssid_list_item((struct ndis_80211_bssid_ex *)(& bssid_list->bssid),
                               & bssid_len, buf, len);
  goto ldv_50745;
  ldv_50744:
  tmp___2 = rndis_bss_info_update(usbdev, bssid);
  if (((int )tmp___2 && (unsigned long )match_bssid != (unsigned long )((u8 *)0U)) && (unsigned long )matched != (unsigned long )((bool *)0)) {
    tmp___1 = ether_addr_equal((u8 const *)(& bssid->mac), (u8 const *)match_bssid);
    if ((int )tmp___1) {
      *matched = 1;
    } else {
    }
  } else {
  }
  real_count = real_count + 1;
  bssid = next_bssid_list_item(bssid, & bssid_len, buf, len);
  ldv_50745:
  tmp___3 = check_bssid_list_item(bssid, bssid_len, buf, len);
  if ((int )tmp___3) {
    goto ldv_50744;
  } else {
  }
  descriptor___1.modname = "rndis_wlan";
  descriptor___1.function = "rndis_check_bssid_list";
  descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor___1.format = "%s(): num_items from device: %d, really found: %d\n";
  descriptor___1.lineno = 2125U;
  descriptor___1.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)usbdev->net,
                         "%s(): num_items from device: %d, really found: %d\n", "rndis_check_bssid_list",
                         count, real_count);
  } else {
  }
  out:
  kfree((void const *)buf);
  return (ret);
}
}
static void rndis_get_scan_results(struct work_struct *work )
{
  struct rndis_wlan_private *priv ;
  struct work_struct const *__mptr ;
  struct usbnet *usbdev ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  __mptr = (struct work_struct const *)work;
  priv = (struct rndis_wlan_private *)__mptr + 0xfffffffffffffb38UL;
  usbdev = priv->usbdev;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_get_scan_results";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "get_scan_results\n";
  descriptor.lineno = 2139U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "get_scan_results\n");
  } else {
  }
  if ((unsigned long )priv->scan_request == (unsigned long )((struct cfg80211_scan_request *)0)) {
    return;
  } else {
  }
  ret = rndis_check_bssid_list(usbdev, (u8 *)0U, (bool *)0);
  cfg80211_scan_done(priv->scan_request, ret < 0);
  priv->scan_request = (struct cfg80211_scan_request *)0;
  return;
}
}
static int rndis_connect(struct wiphy *wiphy , struct net_device *dev , struct cfg80211_connect_params *sme )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  struct ieee80211_channel *channel ;
  struct ndis_80211_ssid ssid ;
  int pairwise ;
  int groupwise ;
  int keymgmt ;
  int length ;
  int i ;
  int ret ;
  int chan ;
  int tmp___0 ;
  int tmp___1 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  bool tmp___3 ;
  struct _ddebug descriptor___0 ;
  long tmp___4 ;
  struct _ddebug descriptor___1 ;
  long tmp___5 ;
  struct _ddebug descriptor___2 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  long tmp___7 ;
  struct _ddebug descriptor___4 ;
  long tmp___8 ;
  struct _ddebug descriptor___5 ;
  long tmp___9 ;
  bool tmp___10 ;
  int tmp___11 ;
  bool tmp___12 ;
  int tmp___13 ;
  struct _ddebug descriptor___6 ;
  long tmp___14 ;
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  channel = sme->channel;
  pairwise = 0;
  groupwise = 0;
  keymgmt = 0;
  chan = -1;
  if ((unsigned long )channel != (unsigned long )((struct ieee80211_channel *)0)) {
    chan = ieee80211_frequency_to_channel((int )channel->center_freq);
  } else {
  }
  groupwise = rndis_cipher_to_alg(sme->crypto.cipher_group);
  i = 0;
  goto ldv_50775;
  ldv_50774:
  tmp___0 = rndis_cipher_to_alg(sme->crypto.ciphers_pairwise[i]);
  pairwise = tmp___0 | pairwise;
  i = i + 1;
  ldv_50775: ;
  if (sme->crypto.n_ciphers_pairwise > i) {
    goto ldv_50774;
  } else {
  }
  if (sme->crypto.n_ciphers_pairwise > 0 && pairwise == 0) {
    netdev_err((struct net_device const *)usbdev->net, "Unsupported pairwise cipher\n");
    return (-524);
  } else {
  }
  i = 0;
  goto ldv_50778;
  ldv_50777:
  tmp___1 = rndis_akm_suite_to_key_mgmt(sme->crypto.akm_suites[i]);
  keymgmt = tmp___1 | keymgmt;
  i = i + 1;
  ldv_50778: ;
  if (sme->crypto.n_akm_suites > i) {
    goto ldv_50777;
  } else {
  }
  if (sme->crypto.n_akm_suites > 0 && keymgmt == 0) {
    netdev_err((struct net_device const *)usbdev->net, "Invalid keymgmt\n");
    return (-524);
  } else {
  }
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_connect";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "cfg80211.connect(\'%.32s\':[%pM]:%d:[%d,0x%x:0x%x]:[0x%x:0x%x]:0x%x)\n";
  descriptor.lineno = 2190U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "cfg80211.connect(\'%.32s\':[%pM]:%d:[%d,0x%x:0x%x]:[0x%x:0x%x]:0x%x)\n",
                         sme->ssid, sme->bssid, chan, (int )sme->privacy, sme->crypto.wpa_versions,
                         (unsigned int )sme->auth_type, groupwise, pairwise, keymgmt);
  } else {
  }
  tmp___3 = is_associated(usbdev);
  if ((int )tmp___3) {
    disassociate(usbdev, 0);
  } else {
  }
  ret = set_infra_mode(usbdev, 1);
  if (ret < 0) {
    descriptor___0.modname = "rndis_wlan";
    descriptor___0.function = "rndis_connect";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor___0.format = "connect: set_infra_mode failed, %d\n";
    descriptor___0.lineno = 2198U;
    descriptor___0.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)usbdev->net,
                           "connect: set_infra_mode failed, %d\n", ret);
    } else {
    }
    goto err_turn_radio_on;
  } else {
  }
  ret = set_auth_mode(usbdev, sme->crypto.wpa_versions, sme->auth_type, keymgmt);
  if (ret < 0) {
    descriptor___1.modname = "rndis_wlan";
    descriptor___1.function = "rndis_connect";
    descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor___1.format = "connect: set_auth_mode failed, %d\n";
    descriptor___1.lineno = 2206U;
    descriptor___1.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)usbdev->net,
                           "connect: set_auth_mode failed, %d\n", ret);
    } else {
    }
    goto err_turn_radio_on;
  } else {
  }
  set_priv_filter(usbdev);
  ret = set_encr_mode(usbdev, pairwise, groupwise);
  if (ret < 0) {
    descriptor___2.modname = "rndis_wlan";
    descriptor___2.function = "rndis_connect";
    descriptor___2.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor___2.format = "connect: set_encr_mode failed, %d\n";
    descriptor___2.lineno = 2215U;
    descriptor___2.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_netdev_dbg(& descriptor___2, (struct net_device const *)usbdev->net,
                           "connect: set_encr_mode failed, %d\n", ret);
    } else {
    }
    goto err_turn_radio_on;
  } else {
  }
  if ((unsigned long )channel != (unsigned long )((struct ieee80211_channel *)0)) {
    ret = set_channel(usbdev, chan);
    if (ret < 0) {
      descriptor___3.modname = "rndis_wlan";
      descriptor___3.function = "rndis_connect";
      descriptor___3.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
      descriptor___3.format = "connect: set_channel failed, %d\n";
      descriptor___3.lineno = 2223U;
      descriptor___3.flags = 0U;
      tmp___7 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
      if (tmp___7 != 0L) {
        __dynamic_netdev_dbg(& descriptor___3, (struct net_device const *)usbdev->net,
                             "connect: set_channel failed, %d\n", ret);
      } else {
      }
      goto err_turn_radio_on;
    } else {
    }
  } else {
  }
  if ((unsigned long )sme->key != (unsigned long )((u8 const *)0U) && (groupwise | pairwise) & 1) {
    priv->encr_tx_key_index = sme->key_idx;
    ret = add_wep_key(usbdev, sme->key, (int )sme->key_len, (int )sme->key_idx);
    if (ret < 0) {
      descriptor___4.modname = "rndis_wlan";
      descriptor___4.function = "rndis_connect";
      descriptor___4.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
      descriptor___4.format = "connect: add_wep_key failed, %d (%d, %d)\n";
      descriptor___4.lineno = 2233U;
      descriptor___4.flags = 0U;
      tmp___8 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
      if (tmp___8 != 0L) {
        __dynamic_netdev_dbg(& descriptor___4, (struct net_device const *)usbdev->net,
                             "connect: add_wep_key failed, %d (%d, %d)\n", ret, (int )sme->key_len,
                             (int )sme->key_idx);
      } else {
      }
      goto err_turn_radio_on;
    } else {
    }
  } else {
  }
  if ((unsigned long )sme->bssid != (unsigned long )((u8 const *)0U)) {
    tmp___10 = is_zero_ether_addr(sme->bssid);
    if (tmp___10) {
      tmp___11 = 0;
    } else {
      tmp___11 = 1;
    }
    if (tmp___11) {
      tmp___12 = is_broadcast_ether_addr(sme->bssid);
      if (tmp___12) {
        tmp___13 = 0;
      } else {
        tmp___13 = 1;
      }
      if (tmp___13) {
        ret = set_bssid(usbdev, sme->bssid);
        if (ret < 0) {
          descriptor___5.modname = "rndis_wlan";
          descriptor___5.function = "rndis_connect";
          descriptor___5.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
          descriptor___5.format = "connect: set_bssid failed, %d\n";
          descriptor___5.lineno = 2243U;
          descriptor___5.flags = 0U;
          tmp___9 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
          if (tmp___9 != 0L) {
            __dynamic_netdev_dbg(& descriptor___5, (struct net_device const *)usbdev->net,
                                 "connect: set_bssid failed, %d\n", ret);
          } else {
          }
          goto err_turn_radio_on;
        } else {
        }
      } else {
        clear_bssid(usbdev);
      }
    } else {
      clear_bssid(usbdev);
    }
  } else {
    clear_bssid(usbdev);
  }
  length = (int )sme->ssid_len;
  if (length > 32) {
    length = 32;
  } else {
  }
  memset((void *)(& ssid), 0, 36UL);
  ssid.length = (unsigned int )length;
  memcpy((void *)(& ssid.essid), (void const *)sme->ssid, (size_t )length);
  usbnet_pause_rx(usbdev);
  usbnet_purge_paused_rxq(usbdev);
  ret = set_essid(usbdev, & ssid);
  if (ret < 0) {
    descriptor___6.modname = "rndis_wlan";
    descriptor___6.function = "rndis_connect";
    descriptor___6.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor___6.format = "connect: set_essid failed, %d\n";
    descriptor___6.lineno = 2265U;
    descriptor___6.flags = 0U;
    tmp___14 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
    if (tmp___14 != 0L) {
      __dynamic_netdev_dbg(& descriptor___6, (struct net_device const *)usbdev->net,
                           "connect: set_essid failed, %d\n", ret);
    } else {
    }
  } else {
  }
  return (ret);
  err_turn_radio_on:
  disassociate(usbdev, 1);
  return (ret);
}
}
static int rndis_disconnect(struct wiphy *wiphy , struct net_device *dev , u16 reason_code )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_disconnect";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "cfg80211.disconnect(%d)\n";
  descriptor.lineno = 2280U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "cfg80211.disconnect(%d)\n",
                         (int )reason_code);
  } else {
  }
  priv->connected = 0;
  eth_zero_addr((u8 *)(& priv->bssid));
  tmp___1 = deauthenticate(usbdev);
  return (tmp___1);
}
}
static int rndis_join_ibss(struct wiphy *wiphy , struct net_device *dev , struct cfg80211_ibss_params *params )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  struct ieee80211_channel *channel ;
  struct ndis_80211_ssid ssid ;
  enum nl80211_auth_type auth_type ;
  int ret ;
  int alg ;
  int length ;
  int chan ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  bool tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  struct _ddebug descriptor___2 ;
  long tmp___4 ;
  struct _ddebug descriptor___3 ;
  long tmp___5 ;
  struct _ddebug descriptor___4 ;
  long tmp___6 ;
  bool tmp___7 ;
  int tmp___8 ;
  bool tmp___9 ;
  int tmp___10 ;
  struct _ddebug descriptor___5 ;
  long tmp___11 ;
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  channel = params->chandef.chan;
  chan = -1;
  if ((unsigned long )channel != (unsigned long )((struct ieee80211_channel *)0)) {
    chan = ieee80211_frequency_to_channel((int )channel->center_freq);
  } else {
  }
  if ((int )params->privacy) {
    auth_type = 1;
    alg = 1;
  } else {
    auth_type = 0;
    alg = 0;
  }
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_join_ibss";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "cfg80211.join_ibss(\'%.32s\':[%pM]:%d:%d)\n";
  descriptor.lineno = 2315U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "cfg80211.join_ibss(\'%.32s\':[%pM]:%d:%d)\n",
                         params->ssid, params->bssid, chan, (int )params->privacy);
  } else {
  }
  tmp___1 = is_associated(usbdev);
  if ((int )tmp___1) {
    disassociate(usbdev, 0);
  } else {
  }
  ret = set_infra_mode(usbdev, 0);
  if (ret < 0) {
    descriptor___0.modname = "rndis_wlan";
    descriptor___0.function = "rndis_join_ibss";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor___0.format = "join_ibss: set_infra_mode failed, %d\n";
    descriptor___0.lineno = 2323U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)usbdev->net,
                           "join_ibss: set_infra_mode failed, %d\n", ret);
    } else {
    }
    goto err_turn_radio_on;
  } else {
  }
  ret = set_auth_mode(usbdev, 0U, auth_type, 0);
  if (ret < 0) {
    descriptor___1.modname = "rndis_wlan";
    descriptor___1.function = "rndis_join_ibss";
    descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor___1.format = "join_ibss: set_auth_mode failed, %d\n";
    descriptor___1.lineno = 2330U;
    descriptor___1.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)usbdev->net,
                           "join_ibss: set_auth_mode failed, %d\n", ret);
    } else {
    }
    goto err_turn_radio_on;
  } else {
  }
  set_priv_filter(usbdev);
  ret = set_encr_mode(usbdev, alg, 0);
  if (ret < 0) {
    descriptor___2.modname = "rndis_wlan";
    descriptor___2.function = "rndis_join_ibss";
    descriptor___2.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor___2.format = "join_ibss: set_encr_mode failed, %d\n";
    descriptor___2.lineno = 2339U;
    descriptor___2.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_netdev_dbg(& descriptor___2, (struct net_device const *)usbdev->net,
                           "join_ibss: set_encr_mode failed, %d\n", ret);
    } else {
    }
    goto err_turn_radio_on;
  } else {
  }
  if ((unsigned long )channel != (unsigned long )((struct ieee80211_channel *)0)) {
    ret = set_channel(usbdev, chan);
    if (ret < 0) {
      descriptor___3.modname = "rndis_wlan";
      descriptor___3.function = "rndis_join_ibss";
      descriptor___3.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
      descriptor___3.format = "join_ibss: set_channel failed, %d\n";
      descriptor___3.lineno = 2347U;
      descriptor___3.flags = 0U;
      tmp___5 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
      if (tmp___5 != 0L) {
        __dynamic_netdev_dbg(& descriptor___3, (struct net_device const *)usbdev->net,
                             "join_ibss: set_channel failed, %d\n", ret);
      } else {
      }
      goto err_turn_radio_on;
    } else {
    }
  } else {
  }
  if ((unsigned long )params->bssid != (unsigned long )((u8 const *)0U)) {
    tmp___7 = is_zero_ether_addr(params->bssid);
    if (tmp___7) {
      tmp___8 = 0;
    } else {
      tmp___8 = 1;
    }
    if (tmp___8) {
      tmp___9 = is_broadcast_ether_addr(params->bssid);
      if (tmp___9) {
        tmp___10 = 0;
      } else {
        tmp___10 = 1;
      }
      if (tmp___10) {
        ret = set_bssid(usbdev, params->bssid);
        if (ret < 0) {
          descriptor___4.modname = "rndis_wlan";
          descriptor___4.function = "rndis_join_ibss";
          descriptor___4.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
          descriptor___4.format = "join_ibss: set_bssid failed, %d\n";
          descriptor___4.lineno = 2357U;
          descriptor___4.flags = 0U;
          tmp___6 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
          if (tmp___6 != 0L) {
            __dynamic_netdev_dbg(& descriptor___4, (struct net_device const *)usbdev->net,
                                 "join_ibss: set_bssid failed, %d\n", ret);
          } else {
          }
          goto err_turn_radio_on;
        } else {
        }
      } else {
        clear_bssid(usbdev);
      }
    } else {
      clear_bssid(usbdev);
    }
  } else {
    clear_bssid(usbdev);
  }
  length = (int )params->ssid_len;
  if (length > 32) {
    length = 32;
  } else {
  }
  memset((void *)(& ssid), 0, 36UL);
  ssid.length = (unsigned int )length;
  memcpy((void *)(& ssid.essid), (void const *)params->ssid, (size_t )length);
  usbnet_purge_paused_rxq(usbdev);
  usbnet_resume_rx(usbdev);
  ret = set_essid(usbdev, & ssid);
  if (ret < 0) {
    descriptor___5.modname = "rndis_wlan";
    descriptor___5.function = "rndis_join_ibss";
    descriptor___5.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor___5.format = "join_ibss: set_essid failed, %d\n";
    descriptor___5.lineno = 2378U;
    descriptor___5.flags = 0U;
    tmp___11 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    if (tmp___11 != 0L) {
      __dynamic_netdev_dbg(& descriptor___5, (struct net_device const *)usbdev->net,
                           "join_ibss: set_essid failed, %d\n", ret);
    } else {
    }
  } else {
  }
  return (ret);
  err_turn_radio_on:
  disassociate(usbdev, 1);
  return (ret);
}
}
static int rndis_leave_ibss(struct wiphy *wiphy , struct net_device *dev )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_leave_ibss";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "cfg80211.leave_ibss()\n";
  descriptor.lineno = 2392U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "cfg80211.leave_ibss()\n");
  } else {
  }
  priv->connected = 0;
  eth_zero_addr((u8 *)(& priv->bssid));
  tmp___1 = deauthenticate(usbdev);
  return (tmp___1);
}
}
static int rndis_add_key(struct wiphy *wiphy , struct net_device *netdev , u8 key_index ,
                         bool pairwise , u8 const *mac_addr , struct key_params *params )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  __le32 flags ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_add_key";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(%i, %pM, %08x)\n";
  descriptor.lineno = 2409U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(%i, %pM, %08x)\n",
                         "rndis_add_key", (int )key_index, mac_addr, params->cipher);
  } else {
  }
  switch (params->cipher) {
  case 1027073U: ;
  case 1027077U:
  tmp___1 = add_wep_key(usbdev, params->key, params->key_len, (int )key_index);
  return (tmp___1);
  case 1027074U: ;
  case 1027076U:
  flags = 0U;
  if ((unsigned long )params->seq != (unsigned long )((u8 const *)0U) && params->seq_len > 0) {
    flags = flags | 536870912U;
  } else {
  }
  if ((unsigned long )mac_addr != (unsigned long )((u8 const *)0U)) {
    flags = flags | 3221225472U;
  } else {
  }
  tmp___2 = add_wpa_key(usbdev, params->key, params->key_len, (int )key_index, mac_addr,
                        params->seq, params->seq_len, params->cipher, flags);
  return (tmp___2);
  default:
  descriptor___0.modname = "rndis_wlan";
  descriptor___0.function = "rndis_add_key";
  descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor___0.format = "%s(): unsupported cipher %08x\n";
  descriptor___0.lineno = 2431U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)usbdev->net,
                         "%s(): unsupported cipher %08x\n", "rndis_add_key", params->cipher);
  } else {
  }
  return (-524);
  }
}
}
static int rndis_del_key(struct wiphy *wiphy , struct net_device *netdev , u8 key_index ,
                         bool pairwise , u8 const *mac_addr )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_del_key";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(%i, %pM)\n";
  descriptor.lineno = 2442U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(%i, %pM)\n",
                         "rndis_del_key", (int )key_index, mac_addr);
  } else {
  }
  tmp___1 = remove_key(usbdev, (int )key_index, mac_addr);
  return (tmp___1);
}
}
static int rndis_set_default_key(struct wiphy *wiphy , struct net_device *netdev ,
                                 u8 key_index , bool unicast , bool multicast )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  struct rndis_wlan_encr_key key ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_set_default_key";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(%i)\n";
  descriptor.lineno = 2454U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(%i)\n",
                         "rndis_set_default_key", (int )key_index);
  } else {
  }
  if ((unsigned int )key_index > 3U) {
    return (-2);
  } else {
  }
  priv->encr_tx_key_index = key_index;
  tmp___1 = is_wpa_key(priv, (int )key_index);
  if ((int )tmp___1) {
    return (0);
  } else {
  }
  key = priv->encr_keys[(int )key_index];
  tmp___2 = add_wep_key(usbdev, (u8 const *)(& key.material), key.len, (int )key_index);
  return (tmp___2);
}
}
static void rndis_fill_station_info(struct usbnet *usbdev , struct station_info *sinfo )
{
  __le32 linkspeed ;
  __le32 rssi ;
  int ret ;
  int len ;
  int tmp ;
  {
  memset((void *)sinfo, 0, 840UL);
  len = 4;
  ret = rndis_query_oid(usbdev, 65799U, (void *)(& linkspeed), & len);
  if (ret == 0) {
    sinfo->txrate.legacy = (u16 )(linkspeed / 1000U);
    sinfo->filled = sinfo->filled | 256U;
  } else {
  }
  len = 4;
  ret = rndis_query_oid(usbdev, 218169862U, (void *)(& rssi), & len);
  if (ret == 0) {
    tmp = level_to_qual((int )rssi);
    sinfo->signal = (s8 )tmp;
    sinfo->filled = sinfo->filled | 128U;
  } else {
  }
  return;
}
}
static int rndis_get_station(struct wiphy *wiphy , struct net_device *dev , u8 const *mac ,
                             struct station_info *sinfo )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  tmp___0 = ether_addr_equal((u8 const *)(& priv->bssid), mac);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-2);
  } else {
  }
  rndis_fill_station_info(usbdev, sinfo);
  return (0);
}
}
static int rndis_dump_station(struct wiphy *wiphy , struct net_device *dev , int idx ,
                              u8 *mac , struct station_info *sinfo )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  if (idx != 0) {
    return (-2);
  } else {
  }
  memcpy((void *)mac, (void const *)(& priv->bssid), 6UL);
  rndis_fill_station_info(usbdev, sinfo);
  return (0);
}
}
static int rndis_set_pmksa(struct wiphy *wiphy , struct net_device *netdev , struct cfg80211_pmksa *pmksa )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  struct ndis_80211_pmkid *pmkids ;
  u32 *tmp___0 ;
  struct _ddebug descriptor ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  bool tmp___7 ;
  long tmp___8 ;
  bool tmp___9 ;
  int tmp___10 ;
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  tmp___0 = (u32 *)pmksa->pmkid;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_set_pmksa";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(%pM, %08X:%08X:%08X:%08X)\n";
  descriptor.lineno = 2534U;
  descriptor.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___1 = __fswab32(*(tmp___0 + 3UL));
    tmp___2 = __fswab32(*(tmp___0 + 2UL));
    tmp___3 = __fswab32(*(tmp___0 + 1UL));
    tmp___4 = __fswab32(*tmp___0);
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(%pM, %08X:%08X:%08X:%08X)\n",
                         "rndis_set_pmksa", pmksa->bssid, tmp___4, tmp___3, tmp___2,
                         tmp___1);
  } else {
  }
  pmkids = get_device_pmkids(usbdev);
  tmp___7 = IS_ERR((void const *)pmkids);
  if ((int )tmp___7) {
    tmp___6 = PTR_ERR((void const *)pmkids);
    return ((int )tmp___6);
  } else {
  }
  pmkids = update_pmkid(usbdev, pmkids, pmksa, (int )wiphy->max_num_pmkids);
  tmp___9 = IS_ERR((void const *)pmkids);
  if ((int )tmp___9) {
    tmp___8 = PTR_ERR((void const *)pmkids);
    return ((int )tmp___8);
  } else {
  }
  tmp___10 = set_device_pmkids(usbdev, pmkids);
  return (tmp___10);
}
}
static int rndis_del_pmksa(struct wiphy *wiphy , struct net_device *netdev , struct cfg80211_pmksa *pmksa )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  struct ndis_80211_pmkid *pmkids ;
  u32 *tmp___0 ;
  struct _ddebug descriptor ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  bool tmp___7 ;
  long tmp___8 ;
  bool tmp___9 ;
  int tmp___10 ;
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  tmp___0 = (u32 *)pmksa->pmkid;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_del_pmksa";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(%pM, %08X:%08X:%08X:%08X)\n";
  descriptor.lineno = 2562U;
  descriptor.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___1 = __fswab32(*(tmp___0 + 3UL));
    tmp___2 = __fswab32(*(tmp___0 + 2UL));
    tmp___3 = __fswab32(*(tmp___0 + 1UL));
    tmp___4 = __fswab32(*tmp___0);
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(%pM, %08X:%08X:%08X:%08X)\n",
                         "rndis_del_pmksa", pmksa->bssid, tmp___4, tmp___3, tmp___2,
                         tmp___1);
  } else {
  }
  pmkids = get_device_pmkids(usbdev);
  tmp___7 = IS_ERR((void const *)pmkids);
  if ((int )tmp___7) {
    tmp___6 = PTR_ERR((void const *)pmkids);
    return ((int )tmp___6);
  } else {
  }
  pmkids = remove_pmkid(usbdev, pmkids, pmksa, (int )wiphy->max_num_pmkids);
  tmp___9 = IS_ERR((void const *)pmkids);
  if ((int )tmp___9) {
    tmp___8 = PTR_ERR((void const *)pmkids);
    return ((int )tmp___8);
  } else {
  }
  tmp___10 = set_device_pmkids(usbdev, pmkids);
  return (tmp___10);
}
}
static int rndis_flush_pmksa(struct wiphy *wiphy , struct net_device *netdev )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  struct ndis_80211_pmkid pmkid ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_flush_pmksa";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s()\n";
  descriptor.lineno = 2585U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s()\n",
                         "rndis_flush_pmksa");
  } else {
  }
  memset((void *)(& pmkid), 0, 8UL);
  pmkid.length = 8U;
  pmkid.bssid_info_count = 0U;
  tmp___1 = rndis_set_oid(usbdev, 218169635U, (void const *)(& pmkid), 8);
  return (tmp___1);
}
}
static int rndis_set_power_mgmt(struct wiphy *wiphy , struct net_device *dev , bool enabled ,
                                int timeout )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  int power_mode ;
  __le32 mode ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  if (priv->device_type != 2) {
    return (-524);
  } else {
  }
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_set_power_mgmt";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): %s, %d\n";
  descriptor.lineno = 2610U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): %s, %d\n",
                         "rndis_set_power_mgmt", (int )enabled ? (char *)"enabled" : (char *)"disabled",
                         timeout);
  } else {
  }
  if ((int )enabled) {
    power_mode = 2;
  } else {
    power_mode = 0;
  }
  if (priv->power_mode == power_mode) {
    return (0);
  } else {
  }
  priv->power_mode = power_mode;
  mode = (unsigned int )power_mode;
  ret = rndis_set_oid(usbdev, 218169878U, (void const *)(& mode), 4);
  descriptor___0.modname = "rndis_wlan";
  descriptor___0.function = "rndis_set_power_mgmt";
  descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor___0.format = "%s(): RNDIS_OID_802_11_POWER_MODE -> %d\n";
  descriptor___0.lineno = 2627U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)usbdev->net,
                         "%s(): RNDIS_OID_802_11_POWER_MODE -> %d\n", "rndis_set_power_mgmt",
                         ret);
  } else {
  }
  return (ret);
}
}
static int rndis_set_cqm_rssi_config(struct wiphy *wiphy , struct net_device *dev ,
                                     s32 rssi_thold , u32 rssi_hyst )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  priv->cqm_rssi_thold = rssi_thold;
  priv->cqm_rssi_hyst = rssi_hyst;
  priv->last_cqm_event_rssi = 0;
  return (0);
}
}
static void rndis_wlan_craft_connected_bss(struct usbnet *usbdev , u8 *bssid , struct ndis_80211_assoc_info *info )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct ieee80211_channel *channel ;
  struct ndis_80211_ssid ssid ;
  struct cfg80211_bss *bss ;
  s32 signal ;
  u64 timestamp ;
  u16 capability ;
  u32 beacon_period ;
  __le32 rssi ;
  u8 ie_buf[34U] ;
  int len ;
  int ret ;
  int ie_len ;
  struct _ddebug descriptor ;
  int tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  beacon_period = 0U;
  len = 4;
  rssi = 0U;
  ret = rndis_query_oid(usbdev, 218169862U, (void *)(& rssi), & len);
  signal = level_to_qual((int )rssi);
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_wlan_craft_connected_bss";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): RNDIS_OID_802_11_RSSI -> %d, rssi:%d, qual: %d\n";
  descriptor.lineno = 2669U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = level_to_qual((int )rssi);
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): RNDIS_OID_802_11_RSSI -> %d, rssi:%d, qual: %d\n",
                         "rndis_wlan_craft_connected_bss", ret, rssi, tmp___0);
  } else {
  }
  if ((unsigned long )info != (unsigned long )((struct ndis_80211_assoc_info *)0)) {
    capability = info->resp_ie.capa;
  } else {
    capability = priv->infra_mode == 1 ? 1U : 2U;
  }
  channel = get_current_channel(usbdev, & beacon_period);
  if ((unsigned long )channel == (unsigned long )((struct ieee80211_channel *)0)) {
    netdev_warn((struct net_device const *)usbdev->net, "%s(): could not get channel.\n",
                "rndis_wlan_craft_connected_bss");
    return;
  } else {
  }
  len = 36;
  memset((void *)(& ssid), 0, 36UL);
  ret = rndis_query_oid(usbdev, 218169602U, (void *)(& ssid), & len);
  descriptor___0.modname = "rndis_wlan";
  descriptor___0.function = "rndis_wlan_craft_connected_bss";
  descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor___0.format = "%s(): RNDIS_OID_802_11_SSID -> %d, len: %d, ssid: \'%.32s\'\n";
  descriptor___0.lineno = 2695U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)usbdev->net,
                         "%s(): RNDIS_OID_802_11_SSID -> %d, len: %d, ssid: \'%.32s\'\n",
                         "rndis_wlan_craft_connected_bss", ret, ssid.length, (u8 *)(& ssid.essid));
  } else {
  }
  if (ssid.length > 32U) {
    ssid.length = 32U;
  } else {
  }
  ie_buf[0] = 0U;
  ie_buf[1] = (u8 )ssid.length;
  memcpy((void *)(& ie_buf) + 2U, (void const *)(& ssid.essid), (size_t )ssid.length);
  ie_len = (int )(ssid.length + 2U);
  timestamp = 0ULL;
  descriptor___1.modname = "rndis_wlan";
  descriptor___1.function = "rndis_wlan_craft_connected_bss";
  descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor___1.format = "%s(): channel:%d(freq), bssid:[%pM], tsf:%d, capa:%x, beacon int:%d, resp_ie(len:%d, essid:\'%.32s\'), signal:%d\n";
  descriptor___1.lineno = 2713U;
  descriptor___1.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)usbdev->net,
                         "%s(): channel:%d(freq), bssid:[%pM], tsf:%d, capa:%x, beacon int:%d, resp_ie(len:%d, essid:\'%.32s\'), signal:%d\n",
                         "rndis_wlan_craft_connected_bss", (unsigned long )channel != (unsigned long )((struct ieee80211_channel *)0) ? (int )channel->center_freq : -1,
                         bssid, (unsigned int )timestamp, (int )capability, beacon_period,
                         ie_len, (u8 *)(& ssid.essid), signal);
  } else {
  }
  bss = cfg80211_inform_bss(priv->wdev.wiphy, channel, 0, (u8 const *)bssid, timestamp,
                            (int )capability, (int )((u16 )beacon_period), (u8 const *)(& ie_buf),
                            (size_t )ie_len, signal, 208U);
  cfg80211_put_bss(priv->wdev.wiphy, bss);
  return;
}
}
static void rndis_wlan_do_link_up_work(struct usbnet *usbdev )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct ndis_80211_assoc_info *info ;
  u8 bssid[6U] ;
  unsigned int resp_ie_len ;
  unsigned int req_ie_len ;
  unsigned int offset ;
  u8 *req_ie ;
  u8 *resp_ie ;
  int ret ;
  bool roamed ;
  bool match_bss ;
  void *tmp___0 ;
  int __ret_warn_on ;
  long tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor ;
  long tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  struct ieee80211_channel *tmp___6 ;
  struct ieee80211_channel *tmp___7 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  info = (struct ndis_80211_assoc_info *)0;
  roamed = 0;
  if (priv->infra_mode == 1 && (int )priv->connected) {
    roamed = 1;
  } else {
  }
  req_ie_len = 0U;
  resp_ie_len = 0U;
  req_ie = (u8 *)0U;
  resp_ie = (u8 *)0U;
  if (priv->infra_mode == 1) {
    tmp___0 = kmalloc(1025UL, 208U);
    info = (struct ndis_80211_assoc_info *)tmp___0;
    if ((unsigned long )info == (unsigned long )((struct ndis_80211_assoc_info *)0)) {
      set_bit(0L, (unsigned long volatile *)(& priv->work_pending));
      queue_work(priv->workqueue, & priv->work);
      return;
    } else {
    }
    ret = get_association_info(usbdev, info, 1025);
    if (ret == 0) {
      req_ie_len = info->req_ie_length;
      if (req_ie_len > 1025U) {
        req_ie_len = 1025U;
      } else {
      }
      if (req_ie_len != 0U) {
        offset = info->offset_req_ies;
        if (offset > 1025U) {
          offset = 1025U;
        } else {
        }
        req_ie = (u8 *)info + (unsigned long )offset;
        if (offset + req_ie_len > 1025U) {
          req_ie_len = 1025U - offset;
        } else {
        }
      } else {
      }
      resp_ie_len = info->resp_ie_length;
      if (resp_ie_len > 1025U) {
        resp_ie_len = 1025U;
      } else {
      }
      if (resp_ie_len != 0U) {
        offset = info->offset_resp_ies;
        if (offset > 1025U) {
          offset = 1025U;
        } else {
        }
        resp_ie = (u8 *)info + (unsigned long )offset;
        if (offset + resp_ie_len > 1025U) {
          resp_ie_len = 1025U - offset;
        } else {
        }
      } else {
      }
    } else {
      kfree((void const *)info);
      info = (struct ndis_80211_assoc_info *)0;
    }
  } else {
    __ret_warn_on = priv->infra_mode != 0;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c",
                         2799);
    } else {
    }
    tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___2 != 0L) {
      return;
    } else {
    }
  }
  ret = get_bssid(usbdev, (u8 *)(& bssid));
  if (ret < 0) {
    memset((void *)(& bssid), 0, 6UL);
  } else {
  }
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_wlan_do_link_up_work";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "link up work: [%pM]%s\n";
  descriptor.lineno = 2807U;
  descriptor.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "link up work: [%pM]%s\n",
                         (u8 *)(& bssid), (int )roamed ? (char *)" roamed" : (char *)"");
  } else {
  }
  match_bss = 0;
  rndis_check_bssid_list(usbdev, (u8 *)(& bssid), & match_bss);
  tmp___4 = is_zero_ether_addr((u8 const *)(& bssid));
  if (tmp___4) {
    tmp___5 = 0;
  } else {
    tmp___5 = 1;
  }
  if (tmp___5 && ! match_bss) {
    rndis_wlan_craft_connected_bss(usbdev, (u8 *)(& bssid), info);
  } else {
  }
  if (priv->infra_mode == 1) {
    if (! roamed) {
      cfg80211_connect_result(usbdev->net, (u8 const *)(& bssid), (u8 const *)req_ie,
                              (size_t )req_ie_len, (u8 const *)resp_ie, (size_t )resp_ie_len,
                              0, 208U);
    } else {
      tmp___6 = get_current_channel(usbdev, (u32 *)0U);
      cfg80211_roamed(usbdev->net, tmp___6, (u8 const *)(& bssid), (u8 const *)req_ie,
                      (size_t )req_ie_len, (u8 const *)resp_ie, (size_t )resp_ie_len,
                      208U);
    }
  } else
  if (priv->infra_mode == 0) {
    tmp___7 = get_current_channel(usbdev, (u32 *)0U);
    cfg80211_ibss_joined(usbdev->net, (u8 const *)(& bssid), tmp___7, 208U);
  } else {
  }
  kfree((void const *)info);
  priv->connected = 1;
  memcpy((void *)(& priv->bssid), (void const *)(& bssid), 6UL);
  usbnet_resume_rx(usbdev);
  netif_carrier_on(usbdev->net);
  return;
}
}
static void rndis_wlan_do_link_down_work(struct usbnet *usbdev )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  if ((int )priv->connected) {
    priv->connected = 0;
    eth_zero_addr((u8 *)(& priv->bssid));
    deauthenticate(usbdev);
    cfg80211_disconnected(usbdev->net, 0, (u8 const *)0U, 0UL, 1, 208U);
  } else {
  }
  netif_carrier_off(usbdev->net);
  return;
}
}
static void rndis_wlan_worker(struct work_struct *work )
{
  struct rndis_wlan_private *priv ;
  struct work_struct const *__mptr ;
  struct usbnet *usbdev ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct work_struct const *)work;
  priv = (struct rndis_wlan_private *)__mptr + 0xfffffffffffffa58UL;
  usbdev = priv->usbdev;
  tmp = test_and_clear_bit(0L, (unsigned long volatile *)(& priv->work_pending));
  if (tmp != 0) {
    rndis_wlan_do_link_up_work(usbdev);
  } else {
  }
  tmp___0 = test_and_clear_bit(1L, (unsigned long volatile *)(& priv->work_pending));
  if (tmp___0 != 0) {
    rndis_wlan_do_link_down_work(usbdev);
  } else {
  }
  tmp___1 = test_and_clear_bit(2L, (unsigned long volatile *)(& priv->work_pending));
  if (tmp___1 != 0) {
    set_multicast_list(usbdev);
  } else {
  }
  return;
}
}
static void rndis_wlan_set_multicast_list(struct net_device *dev )
{
  struct usbnet *usbdev ;
  void *tmp ;
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  usbdev = (struct usbnet *)tmp;
  tmp___0 = get_rndis_wlan_priv(usbdev);
  priv = tmp___0;
  tmp___1 = constant_test_bit(2L, (unsigned long const volatile *)(& priv->work_pending));
  if (tmp___1 != 0) {
    return;
  } else {
  }
  set_bit(2L, (unsigned long volatile *)(& priv->work_pending));
  queue_work(priv->workqueue, & priv->work);
  return;
}
}
static void rndis_wlan_auth_indication(struct usbnet *usbdev , struct ndis_80211_status_indication *indication ,
                                       int len )
{
  u8 *buf ;
  char const *type ;
  int flags ;
  int buflen ;
  int key_id ;
  bool pairwise_error ;
  bool group_error ;
  struct ndis_80211_auth_request *auth_req ;
  enum nl80211_key_type key_type ;
  {
  if ((unsigned int )len <= 19U) {
    netdev_info((struct net_device const *)usbdev->net, "authentication indication: too short message (%i)\n",
                len);
    return;
  } else {
  }
  buf = (u8 *)(& indication->u.auth_request);
  buflen = (int )((unsigned int )len - 4U);
  goto ldv_51020;
  ldv_51019:
  auth_req = (struct ndis_80211_auth_request *)buf;
  type = "unknown";
  flags = (int )auth_req->flags;
  pairwise_error = 0;
  group_error = 0;
  if (flags & 1) {
    type = "reauth request";
  } else {
  }
  if ((flags & 2) != 0) {
    type = "key update request";
  } else {
  }
  if ((flags & 6) != 0) {
    pairwise_error = 1;
    type = "pairwise_error";
  } else {
  }
  if ((flags & 14) != 0) {
    group_error = 1;
    type = "group_error";
  } else {
  }
  netdev_info((struct net_device const *)usbdev->net, "authentication indication: %s (0x%08x)\n",
              type, auth_req->flags);
  if ((int )pairwise_error) {
    key_type = 1;
    key_id = -1;
    cfg80211_michael_mic_failure(usbdev->net, (u8 const *)(& auth_req->bssid), key_type,
                                 key_id, (u8 const *)0U, 208U);
  } else {
  }
  if ((int )group_error) {
    key_type = 0;
    key_id = -1;
    cfg80211_michael_mic_failure(usbdev->net, (u8 const *)(& auth_req->bssid), key_type,
                                 key_id, (u8 const *)0U, 208U);
  } else {
  }
  buflen = (int )((__le32 )buflen - auth_req->length);
  buf = buf + (unsigned long )auth_req->length;
  ldv_51020: ;
  if ((unsigned int )buflen > 15U) {
    goto ldv_51019;
  } else {
  }
  return;
}
}
static void rndis_wlan_pmkid_cand_list_indication(struct usbnet *usbdev , struct ndis_80211_status_indication *indication ,
                                                  int len )
{
  struct ndis_80211_pmkid_cand_list *cand_list ;
  int list_len ;
  int expected_len ;
  int i ;
  struct ndis_80211_pmkid_candidate *cand ;
  bool preauth ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  if ((unsigned int )len <= 11U) {
    netdev_info((struct net_device const *)usbdev->net, "pmkid candidate list indication: too short message (%i)\n",
                len);
    return;
  } else {
  }
  list_len = (int )(indication->u.cand_list.num_candidates * 12U);
  expected_len = (int )((unsigned int )list_len + 12U);
  if (len < expected_len) {
    netdev_info((struct net_device const *)usbdev->net, "pmkid candidate list indication: list larger than buffer (%i < %i)\n",
                len, expected_len);
    return;
  } else {
  }
  cand_list = & indication->u.cand_list;
  netdev_info((struct net_device const *)usbdev->net, "pmkid candidate list indication: version %i, candidates %i\n",
              cand_list->version, cand_list->num_candidates);
  if (cand_list->version != 1U) {
    return;
  } else {
  }
  i = 0;
  goto ldv_51036;
  ldv_51035:
  cand = (struct ndis_80211_pmkid_candidate *)(& cand_list->candidate_list) + (unsigned long )i;
  preauth = ((int )cand->flags & 1) != 0;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_wlan_pmkid_cand_list_indication";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "cand[%i]: flags: 0x%08x, preauth: %d, bssid: %pM\n";
  descriptor.lineno = 3008U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "cand[%i]: flags: 0x%08x, preauth: %d, bssid: %pM\n",
                         i, cand->flags, (int )preauth, (u8 *)(& cand->bssid));
  } else {
  }
  cfg80211_pmksa_candidate_notify(usbdev->net, i, (u8 const *)(& cand->bssid), (int )preauth,
                                  32U);
  i = i + 1;
  ldv_51036: ;
  if ((__le32 )i < cand_list->num_candidates) {
    goto ldv_51035;
  } else {
  }
  return;
}
}
static void rndis_wlan_media_specific_indication(struct usbnet *usbdev , struct rndis_indicate *msg ,
                                                 int buflen )
{
  struct ndis_80211_status_indication *indication ;
  unsigned int len ;
  unsigned int offset ;
  {
  offset = msg->offset + 8U;
  len = msg->length;
  if (len <= 7U) {
    netdev_info((struct net_device const *)usbdev->net, "media specific indication, ignore too short message (%i < 8)\n",
                len);
    return;
  } else {
  }
  if (((unsigned int )buflen < len || (unsigned int )buflen < offset) || offset + len > (unsigned int )buflen) {
    netdev_info((struct net_device const *)usbdev->net, "media specific indication, too large to fit to buffer (%i > %i)\n",
                offset + len, buflen);
    return;
  } else {
  }
  indication = (struct ndis_80211_status_indication *)msg + (unsigned long )offset;
  switch (indication->status_type) {
  case 3U:
  netdev_info((struct net_device const *)usbdev->net, "radio state indication: %i\n",
              indication->u.radio_status);
  return;
  case 1U:
  netdev_info((struct net_device const *)usbdev->net, "media stream mode indication: %i\n",
              indication->u.media_stream_mode);
  return;
  case 0U:
  rndis_wlan_auth_indication(usbdev, indication, (int )len);
  return;
  case 2U:
  rndis_wlan_pmkid_cand_list_indication(usbdev, indication, (int )len);
  return;
  default:
  netdev_info((struct net_device const *)usbdev->net, "media specific indication: unknown status type 0x%08x\n",
              indication->status_type);
  }
  return;
}
}
static void rndis_wlan_indication(struct usbnet *usbdev , void *ind , int buflen )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct rndis_indicate *msg ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  msg = (struct rndis_indicate *)ind;
  switch (msg->status) {
  case 1073807371U: ;
  if (priv->current_command_oid == 218169629U) {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "rndis_wlan_indication";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "ignored RNDIS_OID_802_11_ADD_KEY triggered \'media connect\'\n";
    descriptor.lineno = 3077U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net,
                           "ignored RNDIS_OID_802_11_ADD_KEY triggered \'media connect\'\n");
    } else {
    }
    return;
  } else {
  }
  usbnet_pause_rx(usbdev);
  netdev_info((struct net_device const *)usbdev->net, "media connect\n");
  set_bit(0L, (unsigned long volatile *)(& priv->work_pending));
  queue_work(priv->workqueue, & priv->work);
  goto ldv_51061;
  case 1073807372U:
  netdev_info((struct net_device const *)usbdev->net, "media disconnect\n");
  set_bit(1L, (unsigned long volatile *)(& priv->work_pending));
  queue_work(priv->workqueue, & priv->work);
  goto ldv_51061;
  case 1073807378U:
  rndis_wlan_media_specific_indication(usbdev, msg, buflen);
  goto ldv_51061;
  default:
  netdev_info((struct net_device const *)usbdev->net, "indication: 0x%08x\n", msg->status);
  goto ldv_51061;
  }
  ldv_51061: ;
  return;
}
}
static int rndis_wlan_get_caps(struct usbnet *usbdev , struct wiphy *wiphy )
{
  struct __anonstruct_networks_supported_373 networks_supported ;
  struct ndis_80211_capability *caps ;
  u8 caps_buf[16U] ;
  int len ;
  int retval ;
  int i ;
  int n ;
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  len = 36;
  retval = rndis_query_oid(usbdev, 218169859U, (void *)(& networks_supported), & len);
  if (retval >= 0) {
    n = (int )networks_supported.num_items;
    if (n > 8) {
      n = 8;
    } else {
    }
    i = 0;
    goto ldv_51086;
    ldv_51085: ;
    switch (networks_supported.items[i]) {
    case 0U: ;
    case 1U:
    priv->caps = priv->caps | 2;
    goto ldv_51082;
    case 2U:
    priv->caps = priv->caps | 1;
    goto ldv_51082;
    case 3U:
    priv->caps = priv->caps | 4;
    goto ldv_51082;
    }
    ldv_51082:
    i = i + 1;
    ldv_51086: ;
    if (i < n) {
      goto ldv_51085;
    } else {
    }
  } else {
  }
  caps = (struct ndis_80211_capability *)(& caps_buf);
  len = 16;
  retval = rndis_query_oid(usbdev, 218169634U, (void *)caps, & len);
  if (retval >= 0) {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "rndis_wlan_get_caps";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "RNDIS_OID_802_11_CAPABILITY -> len %d, ver %d, pmkids %d, auth-encr-pairs %d\n";
    descriptor.lineno = 3157U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net,
                           "RNDIS_OID_802_11_CAPABILITY -> len %d, ver %d, pmkids %d, auth-encr-pairs %d\n",
                           caps->length, caps->version, caps->num_pmkids, caps->num_auth_encr_pair);
    } else {
    }
    wiphy->max_num_pmkids = (u8 )caps->num_pmkids;
  } else {
    wiphy->max_num_pmkids = 0U;
  }
  return (retval);
}
}
static void rndis_do_cqm(struct usbnet *usbdev , s32 rssi )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  enum nl80211_cqm_rssi_threshold_event event ;
  int thold ;
  int hyst ;
  int last_event ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  if (priv->cqm_rssi_thold >= 0 || rssi >= 0) {
    return;
  } else {
  }
  if (priv->infra_mode != 1) {
    return;
  } else {
  }
  last_event = priv->last_cqm_event_rssi;
  thold = priv->cqm_rssi_thold;
  hyst = (int )priv->cqm_rssi_hyst;
  if (rssi < thold && (last_event == 0 || last_event - hyst > rssi)) {
    event = 0;
  } else
  if (rssi > thold && (last_event == 0 || last_event + hyst < rssi)) {
    event = 1;
  } else {
    return;
  }
  priv->last_cqm_event_rssi = rssi;
  cfg80211_cqm_rssi_notify(usbdev->net, event, 208U);
  return;
}
}
static void rndis_device_poller(struct work_struct *work )
{
  struct rndis_wlan_private *priv ;
  struct work_struct const *__mptr ;
  struct usbnet *usbdev ;
  __le32 rssi ;
  __le32 tmp ;
  int len ;
  int ret ;
  int j ;
  int update_jiffies ;
  void *buf ;
  bool tmp___0 ;
  int tmp___1 ;
  struct _ddebug descriptor ;
  int tmp___2 ;
  long tmp___3 ;
  unsigned long tmp___4 ;
  unsigned long tmp___5 ;
  unsigned long tmp___6 ;
  long ret___0 ;
  int __x___0 ;
  {
  __mptr = (struct work_struct const *)work;
  priv = (struct rndis_wlan_private *)__mptr + 0xfffffffffffffc18UL;
  usbdev = priv->usbdev;
  update_jiffies = 250;
  tmp___0 = is_associated(usbdev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    if ((priv->device_type == 1 && (int )priv->radio_on) && (unsigned long )priv->scan_request == (unsigned long )((struct cfg80211_scan_request *)0)) {
      rndis_check_bssid_list(usbdev, (u8 *)0U, (bool *)0);
      rndis_start_bssid_list_scan(usbdev);
    } else {
    }
    goto end;
  } else {
  }
  len = 4;
  ret = rndis_query_oid(usbdev, 218169862U, (void *)(& rssi), & len);
  if (ret == 0) {
    priv->last_qual = level_to_qual((int )rssi);
    rndis_do_cqm(usbdev, (s32 )rssi);
  } else {
  }
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_device_poller";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "dev-poller: RNDIS_OID_802_11_RSSI -> %d, rssi:%d, qual: %d\n";
  descriptor.lineno = 3232U;
  descriptor.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = level_to_qual((int )rssi);
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "dev-poller: RNDIS_OID_802_11_RSSI -> %d, rssi:%d, qual: %d\n",
                         ret, rssi, tmp___2);
  } else {
  }
  if (priv->param_workaround_interval != 0U && priv->last_qual <= 25) {
    tmp___4 = msecs_to_jiffies(priv->param_workaround_interval);
    j = (int )tmp___4;
    if (j > 250) {
      j = 250;
    } else
    if (j <= 0) {
      j = 1;
    } else {
    }
    update_jiffies = j;
    tmp = 1U;
    rndis_set_oid(usbdev, 218169626U, (void const *)(& tmp), 4);
    len = 1025;
    buf = kmalloc((size_t )len, 208U);
    if ((unsigned long )buf == (unsigned long )((void *)0)) {
      goto end;
    } else {
    }
    rndis_query_oid(usbdev, 218169879U, buf, & len);
    kfree((void const *)buf);
  } else {
  }
  end: ;
  if (update_jiffies > 249) {
    tmp___5 = round_jiffies_relative((unsigned long )update_jiffies);
    update_jiffies = (int )tmp___5;
  } else {
    tmp___6 = round_jiffies_relative((unsigned long )update_jiffies);
    j = (int )tmp___6;
    __x___0 = j - update_jiffies;
    ret___0 = (long )(__x___0 < 0 ? - __x___0 : __x___0);
    if (ret___0 <= 10L) {
      update_jiffies = j;
    } else {
    }
  }
  queue_delayed_work(priv->workqueue, & priv->dev_poller_work, (unsigned long )update_jiffies);
  return;
}
}
static void rndis_copy_module_params(struct usbnet *usbdev , int device_type )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  int tmp___2 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  priv->device_type = device_type;
  priv->param_country[0] = modparam_country[0];
  priv->param_country[1] = modparam_country[1];
  priv->param_country[2] = 0;
  priv->param_frameburst = modparam_frameburst;
  priv->param_afterburner = modparam_afterburner;
  priv->param_power_save = modparam_power_save;
  priv->param_power_output = modparam_power_output;
  priv->param_roamtrigger = modparam_roamtrigger;
  priv->param_roamdelta = modparam_roamdelta;
  tmp___0 = __toupper((int )((unsigned char )priv->param_country[0]));
  priv->param_country[0] = (char )tmp___0;
  tmp___1 = __toupper((int )((unsigned char )priv->param_country[1]));
  priv->param_country[1] = (char )tmp___1;
  tmp___2 = strcmp((char const *)(& priv->param_country), "EU");
  if (tmp___2 == 0) {
    strcpy((char *)(& priv->param_country), "FI");
  } else {
  }
  if (priv->param_power_save < 0) {
    priv->param_power_save = 0;
  } else
  if (priv->param_power_save > 2) {
    priv->param_power_save = 2;
  } else {
  }
  if (priv->param_power_output < 0) {
    priv->param_power_output = 0;
  } else
  if (priv->param_power_output > 3) {
    priv->param_power_output = 3;
  } else {
  }
  if (priv->param_roamtrigger < -80) {
    priv->param_roamtrigger = -80;
  } else
  if (priv->param_roamtrigger >= -59) {
    priv->param_roamtrigger = -60;
  } else {
  }
  if (priv->param_roamdelta < 0) {
    priv->param_roamdelta = 0;
  } else
  if (priv->param_roamdelta > 2) {
    priv->param_roamdelta = 2;
  } else {
  }
  if (modparam_workaround_interval < 0) {
    priv->param_workaround_interval = 500U;
  } else {
    priv->param_workaround_interval = (u32 )modparam_workaround_interval;
  }
  return;
}
}
static int unknown_early_init(struct usbnet *usbdev )
{
  {
  rndis_copy_module_params(usbdev, 0);
  return (0);
}
}
static int bcm4320a_early_init(struct usbnet *usbdev )
{
  {
  rndis_copy_module_params(usbdev, 1);
  return (0);
}
}
static int bcm4320b_early_init(struct usbnet *usbdev )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  char buf[8U] ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  rndis_copy_module_params(usbdev, 2);
  rndis_set_config_parameter_str(usbdev, (char *)"Country", (char *)(& priv->param_country));
  rndis_set_config_parameter_str(usbdev, (char *)"FrameBursting", priv->param_frameburst != 0 ? (char *)"1" : (char *)"0");
  rndis_set_config_parameter_str(usbdev, (char *)"Afterburner", priv->param_afterburner != 0 ? (char *)"1" : (char *)"0");
  sprintf((char *)(& buf), "%d", priv->param_power_save);
  rndis_set_config_parameter_str(usbdev, (char *)"PowerSaveMode", (char *)(& buf));
  sprintf((char *)(& buf), "%d", priv->param_power_output);
  rndis_set_config_parameter_str(usbdev, (char *)"PwrOut", (char *)(& buf));
  sprintf((char *)(& buf), "%d", priv->param_roamtrigger);
  rndis_set_config_parameter_str(usbdev, (char *)"RoamTrigger", (char *)(& buf));
  sprintf((char *)(& buf), "%d", priv->param_roamdelta);
  rndis_set_config_parameter_str(usbdev, (char *)"RoamDelta", (char *)(& buf));
  return (0);
}
}
static struct net_device_ops const rndis_wlan_netdev_ops =
     {0, 0, & usbnet_open, & usbnet_stop, & usbnet_start_xmit, 0, 0, & rndis_wlan_set_multicast_list,
    & eth_mac_addr, & eth_validate_addr, 0, 0, 0, 0, & usbnet_tx_timeout, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int rndis_wlan_bind(struct usbnet *usbdev , struct usb_interface *intf )
{
  struct wiphy *wiphy ;
  struct rndis_wlan_private *priv ;
  int retval ;
  int len ;
  __le32 tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  char const *__lock_name ;
  struct workqueue_struct *tmp___1 ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___2 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  atomic_long_t __constr_expr_2 ;
  struct lock_class_key __key___5 ;
  int tmp___2 ;
  {
  wiphy = wiphy_new(& rndis_config_ops, 4168);
  if ((unsigned long )wiphy == (unsigned long )((struct wiphy *)0)) {
    return (-12);
  } else {
  }
  tmp___0 = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp___0;
  (usbdev->net)->ieee80211_ptr = & priv->wdev;
  priv->wdev.wiphy = wiphy;
  priv->wdev.iftype = 2;
  usbdev->driver_priv = (void *)priv;
  priv->usbdev = usbdev;
  __mutex_init(& priv->command_lock, "&priv->command_lock", & __key);
  __lock_name = "\"%s\"\"rndis_wlan\"";
  tmp___1 = __alloc_workqueue_key("%s", 131082U, 1, & __key___0, __lock_name, (char *)"rndis_wlan");
  priv->workqueue = tmp___1;
  __init_work(& priv->work, 0);
  __constr_expr_0.counter = 137438953408L;
  priv->work.data = __constr_expr_0;
  lockdep_init_map(& priv->work.lockdep_map, "(&priv->work)", & __key___1, 0);
  INIT_LIST_HEAD(& priv->work.entry);
  priv->work.func = & rndis_wlan_worker;
  __init_work(& priv->dev_poller_work.work, 0);
  __constr_expr_1.counter = 137438953408L;
  priv->dev_poller_work.work.data = __constr_expr_1;
  lockdep_init_map(& priv->dev_poller_work.work.lockdep_map, "(&(&priv->dev_poller_work)->work)",
                   & __key___2, 0);
  INIT_LIST_HEAD(& priv->dev_poller_work.work.entry);
  priv->dev_poller_work.work.func = & rndis_device_poller;
  init_timer_key(& priv->dev_poller_work.timer, 2097152U, "(&(&priv->dev_poller_work)->timer)",
                 & __key___3);
  priv->dev_poller_work.timer.function = & delayed_work_timer_fn;
  priv->dev_poller_work.timer.data = (unsigned long )(& priv->dev_poller_work);
  __init_work(& priv->scan_work.work, 0);
  __constr_expr_2.counter = 137438953408L;
  priv->scan_work.work.data = __constr_expr_2;
  lockdep_init_map(& priv->scan_work.work.lockdep_map, "(&(&priv->scan_work)->work)",
                   & __key___4, 0);
  INIT_LIST_HEAD(& priv->scan_work.work.entry);
  priv->scan_work.work.func = & rndis_get_scan_results;
  init_timer_key(& priv->scan_work.timer, 2097152U, "(&(&priv->scan_work)->timer)",
                 & __key___5);
  priv->scan_work.timer.function = & delayed_work_timer_fn;
  priv->scan_work.timer.data = (unsigned long )(& priv->scan_work);
  retval = generic_rndis_bind(usbdev, intf, 2);
  if (retval < 0) {
    goto fail;
  } else {
  }
  (usbdev->net)->netdev_ops = & rndis_wlan_netdev_ops;
  tmp = 9U;
  retval = rndis_set_oid(usbdev, 65806U, (void const *)(& tmp), 4);
  len = 4;
  retval = rndis_query_oid(usbdev, 16843012U, (void *)(& tmp), & len);
  priv->multicast_size = (int )tmp;
  if (retval < 0 || priv->multicast_size < 0) {
    priv->multicast_size = 0;
  } else {
  }
  if (priv->multicast_size > 0) {
    (usbdev->net)->flags = (usbdev->net)->flags | 4096U;
  } else {
    (usbdev->net)->flags = (usbdev->net)->flags & 4294963199U;
  }
  memcpy((void *)(& wiphy->perm_addr), (void const *)(usbdev->net)->dev_addr,
           6UL);
  wiphy->privid = (void const *)rndis_wiphy_privid;
  wiphy->interface_modes = 6U;
  wiphy->max_scan_ssids = 1U;
  rndis_wlan_get_caps(usbdev, wiphy);
  memcpy((void *)(& priv->channels), (void const *)(& rndis_channels), 896UL);
  memcpy((void *)(& priv->rates), (void const *)(& rndis_rates), 144UL);
  priv->band.channels = (struct ieee80211_channel *)(& priv->channels);
  priv->band.n_channels = 14;
  priv->band.bitrates = (struct ieee80211_rate *)(& priv->rates);
  priv->band.n_bitrates = 12;
  wiphy->bands[0] = & priv->band;
  wiphy->signal_type = 2;
  memcpy((void *)(& priv->cipher_suites), (void const *)(& rndis_cipher_suites),
           16UL);
  wiphy->cipher_suites = (u32 const *)(& priv->cipher_suites);
  wiphy->n_cipher_suites = 4;
  set_wiphy_dev(wiphy, & (usbdev->udev)->dev);
  tmp___2 = wiphy_register(wiphy);
  if (tmp___2 != 0) {
    retval = -19;
    goto fail;
  } else {
  }
  set_default_iw_params(usbdev);
  priv->power_mode = -1;
  rndis_set_wiphy_params(wiphy, 12U);
  priv->radio_on = 0;
  disassociate(usbdev, 0);
  netif_carrier_off(usbdev->net);
  return (0);
  fail:
  ldv_cancel_delayed_work_sync_43(& priv->dev_poller_work);
  ldv_cancel_delayed_work_sync_44(& priv->scan_work);
  ldv_cancel_work_sync_45(& priv->work);
  ldv_flush_workqueue_46(priv->workqueue);
  ldv_destroy_workqueue_47(priv->workqueue);
  wiphy_free(wiphy);
  return (retval);
}
}
static void rndis_wlan_unbind(struct usbnet *usbdev , struct usb_interface *intf )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  disassociate(usbdev, 0);
  ldv_cancel_delayed_work_sync_48(& priv->dev_poller_work);
  ldv_cancel_delayed_work_sync_49(& priv->scan_work);
  ldv_cancel_work_sync_50(& priv->work);
  ldv_flush_workqueue_51(priv->workqueue);
  ldv_destroy_workqueue_52(priv->workqueue);
  rndis_unbind(usbdev, intf);
  wiphy_unregister(priv->wdev.wiphy);
  wiphy_free(priv->wdev.wiphy);
  return;
}
}
static int rndis_wlan_reset(struct usbnet *usbdev )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  int retval ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_wlan_reset";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s()\n";
  descriptor.lineno = 3544U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s()\n",
                         "rndis_wlan_reset");
  } else {
  }
  retval = rndis_reset(usbdev);
  if (retval != 0) {
    netdev_warn((struct net_device const *)usbdev->net, "rndis_reset failed: %d\n",
                retval);
  } else {
  }
  set_multicast_list(usbdev);
  tmp___1 = round_jiffies_relative(250UL);
  queue_delayed_work(priv->workqueue, & priv->dev_poller_work, tmp___1);
  tmp___2 = deauthenticate(usbdev);
  return (tmp___2);
}
}
static int rndis_wlan_stop(struct usbnet *usbdev )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  int retval ;
  __le32 filter ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_wlan_stop";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11759/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s()\n";
  descriptor.lineno = 3566U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s()\n",
                         "rndis_wlan_stop");
  } else {
  }
  retval = disassociate(usbdev, 0);
  priv->work_pending = 0UL;
  ldv_cancel_delayed_work_sync_53(& priv->dev_poller_work);
  ldv_cancel_delayed_work_sync_54(& priv->scan_work);
  ldv_cancel_work_sync_55(& priv->work);
  ldv_flush_workqueue_56(priv->workqueue);
  if ((unsigned long )priv->scan_request != (unsigned long )((struct cfg80211_scan_request *)0)) {
    cfg80211_scan_done(priv->scan_request, 1);
    priv->scan_request = (struct cfg80211_scan_request *)0;
  } else {
  }
  filter = 0U;
  rndis_set_oid(usbdev, 65806U, (void const *)(& filter), 4);
  return (retval);
}
}
static struct driver_info const bcm4320b_info =
     {(char *)"Wireless RNDIS device, BCM4320b based", 408, & rndis_wlan_bind, & rndis_wlan_unbind,
    & rndis_wlan_reset, & rndis_wlan_stop, 0, 0, & rndis_status, 0, & rndis_rx_fixup,
    & rndis_tx_fixup, 0, & bcm4320b_early_init, & rndis_wlan_indication, 0, 0, 0,
    0UL};
static struct driver_info const bcm4320a_info =
     {(char *)"Wireless RNDIS device, BCM4320a based", 408, & rndis_wlan_bind, & rndis_wlan_unbind,
    & rndis_wlan_reset, & rndis_wlan_stop, 0, 0, & rndis_status, 0, & rndis_rx_fixup,
    & rndis_tx_fixup, 0, & bcm4320a_early_init, & rndis_wlan_indication, 0, 0, 0,
    0UL};
static struct driver_info const rndis_wlan_info =
     {(char *)"Wireless RNDIS device", 408, & rndis_wlan_bind, & rndis_wlan_unbind,
    & rndis_wlan_reset, & rndis_wlan_stop, 0, 0, & rndis_status, 0, & rndis_rx_fixup,
    & rndis_tx_fixup, 0, & unknown_early_init, & rndis_wlan_indication, 0, 0, 0, 0UL};
static struct usb_device_id const products[15U] =
  { {899U, 1041U, 188U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320b_info)},
        {899U,
      2991U, 283U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320b_info)},
        {899U,
      1293U, 283U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320b_info)},
        {899U,
      6041U, 283U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320b_info)},
        {899U,
      5041U, 20U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320b_info)},
        {899U,
      5041U, 38U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320b_info)},
        {899U,
      2821U, 5911U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320b_info)},
        {899U,
      2652U, 53531U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320b_info)},
        {899U,
      5776U, 1813U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320b_info)},
        {899U,
      5041U, 14U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320a_info)},
        {899U,
      2991U, 273U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320a_info)},
        {899U,
      1041U, 75U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320a_info)},
        {896U,
      (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0,
      (unsigned long )(& rndis_wlan_info)},
        {896U, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 239U, 1U, 1U, (unsigned char)0,
      (unsigned long )(& rndis_wlan_info)}};
struct usb_device_id const __mod_usb__products_device_table[15U] ;
static struct usb_driver rndis_wlan_driver =
     {"rndis_wlan", & usbnet_probe, & usbnet_disconnect, 0, & usbnet_suspend, & usbnet_resume,
    0, 0, 0, (struct usb_device_id const *)(& products), {{{{{{0}}, 0U, 0U, 0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                            {0, 0}}, {{0, 0, 0, 0,
                                                                       (_Bool)0, 0,
                                                                       0, 0, 0, 0,
                                                                       0, 0, 0, 0,
                                                                       0, 0}, 0},
    (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0};
static int rndis_wlan_driver_init(void)
{
  int tmp ;
  {
  tmp = ldv_usb_register_driver_57(& rndis_wlan_driver, & __this_module, "rndis_wlan");
  return (tmp);
}
}
static void rndis_wlan_driver_exit(void)
{
  {
  ldv_usb_deregister_58(& rndis_wlan_driver);
  return;
}
}
extern int ldv_init_6(void) ;
extern int ldv_release_9(void) ;
extern int ldv_init_7(void) ;
extern int ldv_start_5(void) ;
int ldv_retval_2 ;
extern int ldv_start_6(void) ;
int ldv_retval_5 ;
int ldv_retval_0 ;
int ldv_retval_6 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
extern int ldv_init_5(void) ;
extern int ldv_disconnect_7(void) ;
extern int ldv_reset_resume_4(void) ;
extern int ldv_ndo_uninit_8(void) ;
extern int ldv_start_7(void) ;
extern int ldv_bind_9(void) ;
int ldv_retval_9 ;
extern int ldv_disconnect_6(void) ;
int ldv_retval_4 ;
extern int ldv_disconnect_5(void) ;
extern void ldv_check_final_state(void) ;
int ldv_retval_8 ;
int ldv_retval_3 ;
int ldv_retval_7 ;
extern int ldv_ndo_init_8(void) ;
void ldv_initialize_driver_info_6(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(232UL);
  bcm4320a_info_group0 = (struct sk_buff *)tmp;
  tmp___0 = ldv_init_zalloc(1456UL);
  bcm4320a_info_group2 = (struct usbnet *)tmp___0;
  tmp___1 = ldv_init_zalloc(1560UL);
  bcm4320a_info_group1 = (struct usb_interface *)tmp___1;
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
void call_and_disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 2 || ldv_work_1_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_0) {
    rndis_wlan_worker(work);
    ldv_work_1_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_1 == 2 || ldv_work_1_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_1) {
    rndis_wlan_worker(work);
    ldv_work_1_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_2 == 2 || ldv_work_1_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_2) {
    rndis_wlan_worker(work);
    ldv_work_1_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_3 == 2 || ldv_work_1_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_3) {
    rndis_wlan_worker(work);
    ldv_work_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_driver_info_7(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(232UL);
  bcm4320b_info_group0 = (struct sk_buff *)tmp;
  tmp___0 = ldv_init_zalloc(1456UL);
  bcm4320b_info_group2 = (struct usbnet *)tmp___0;
  tmp___1 = ldv_init_zalloc(1560UL);
  bcm4320b_info_group1 = (struct usb_interface *)tmp___1;
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
void ldv_usb_driver_4(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1560UL);
  rndis_wlan_driver_group1 = (struct usb_interface *)tmp;
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
void ldv_initialize_driver_info_5(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(232UL);
  rndis_wlan_info_group0 = (struct sk_buff *)tmp;
  tmp___0 = ldv_init_zalloc(1456UL);
  rndis_wlan_info_group2 = (struct usbnet *)tmp___0;
  tmp___1 = ldv_init_zalloc(1560UL);
  rndis_wlan_info_group1 = (struct usb_interface *)tmp___1;
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
void call_and_disable_work_3(struct work_struct *work )
{
  {
  if ((ldv_work_3_0 == 2 || ldv_work_3_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_0) {
    rndis_get_scan_results(work);
    ldv_work_3_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_1 == 2 || ldv_work_3_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_1) {
    rndis_get_scan_results(work);
    ldv_work_3_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_2 == 2 || ldv_work_3_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_2) {
    rndis_get_scan_results(work);
    ldv_work_3_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_3 == 2 || ldv_work_3_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_3) {
    rndis_get_scan_results(work);
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
void invoke_work_3(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_3_0 == 2 || ldv_work_3_0 == 3) {
    ldv_work_3_0 = 4;
    rndis_get_scan_results(ldv_work_struct_3_0);
    ldv_work_3_0 = 1;
  } else {
  }
  goto ldv_51314;
  case 1: ;
  if (ldv_work_3_1 == 2 || ldv_work_3_1 == 3) {
    ldv_work_3_1 = 4;
    rndis_get_scan_results(ldv_work_struct_3_0);
    ldv_work_3_1 = 1;
  } else {
  }
  goto ldv_51314;
  case 2: ;
  if (ldv_work_3_2 == 2 || ldv_work_3_2 == 3) {
    ldv_work_3_2 = 4;
    rndis_get_scan_results(ldv_work_struct_3_0);
    ldv_work_3_2 = 1;
  } else {
  }
  goto ldv_51314;
  case 3: ;
  if (ldv_work_3_3 == 2 || ldv_work_3_3 == 3) {
    ldv_work_3_3 = 4;
    rndis_get_scan_results(ldv_work_struct_3_0);
    ldv_work_3_3 = 1;
  } else {
  }
  goto ldv_51314;
  default:
  ldv_stop();
  }
  ldv_51314: ;
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
    rndis_wlan_worker(ldv_work_struct_1_0);
    ldv_work_1_0 = 1;
  } else {
  }
  goto ldv_51328;
  case 1: ;
  if (ldv_work_1_1 == 2 || ldv_work_1_1 == 3) {
    ldv_work_1_1 = 4;
    rndis_wlan_worker(ldv_work_struct_1_0);
    ldv_work_1_1 = 1;
  } else {
  }
  goto ldv_51328;
  case 2: ;
  if (ldv_work_1_2 == 2 || ldv_work_1_2 == 3) {
    ldv_work_1_2 = 4;
    rndis_wlan_worker(ldv_work_struct_1_0);
    ldv_work_1_2 = 1;
  } else {
  }
  goto ldv_51328;
  case 3: ;
  if (ldv_work_1_3 == 2 || ldv_work_1_3 == 3) {
    ldv_work_1_3 = 4;
    rndis_wlan_worker(ldv_work_struct_1_0);
    ldv_work_1_3 = 1;
  } else {
  }
  goto ldv_51328;
  default:
  ldv_stop();
  }
  ldv_51328: ;
  return;
}
}
void ldv_net_device_ops_8(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(3008UL);
  rndis_wlan_netdev_ops_group1 = (struct net_device *)tmp;
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
void ldv_initialize_cfg80211_ops_9(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  {
  tmp = ldv_init_zalloc(976UL);
  rndis_config_ops_group0 = (struct wireless_dev *)tmp;
  tmp___0 = ldv_init_zalloc(16UL);
  rndis_config_ops_group2 = (struct cfg80211_pmksa *)tmp___0;
  tmp___1 = ldv_init_zalloc(3008UL);
  rndis_config_ops_group4 = (struct net_device *)tmp___1;
  tmp___2 = ldv_init_zalloc(1792UL);
  rndis_config_ops_group3 = (struct wiphy *)tmp___2;
  tmp___3 = ldv_init_zalloc(840UL);
  rndis_config_ops_group1 = (struct station_info *)tmp___3;
  return;
}
}
void call_and_disable_work_2(struct work_struct *work )
{
  {
  if ((ldv_work_2_0 == 2 || ldv_work_2_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_0) {
    rndis_device_poller(work);
    ldv_work_2_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_1 == 2 || ldv_work_2_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_1) {
    rndis_device_poller(work);
    ldv_work_2_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_2 == 2 || ldv_work_2_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_2) {
    rndis_device_poller(work);
    ldv_work_2_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_3 == 2 || ldv_work_2_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_3) {
    rndis_device_poller(work);
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
    rndis_device_poller(ldv_work_struct_2_0);
    ldv_work_2_0 = 1;
  } else {
  }
  goto ldv_51355;
  case 1: ;
  if (ldv_work_2_1 == 2 || ldv_work_2_1 == 3) {
    ldv_work_2_1 = 4;
    rndis_device_poller(ldv_work_struct_2_0);
    ldv_work_2_1 = 1;
  } else {
  }
  goto ldv_51355;
  case 2: ;
  if (ldv_work_2_2 == 2 || ldv_work_2_2 == 3) {
    ldv_work_2_2 = 4;
    rndis_device_poller(ldv_work_struct_2_0);
    ldv_work_2_2 = 1;
  } else {
  }
  goto ldv_51355;
  case 3: ;
  if (ldv_work_2_3 == 2 || ldv_work_2_3 == 3) {
    ldv_work_2_3 = 4;
    rndis_device_poller(ldv_work_struct_2_0);
    ldv_work_2_3 = 1;
  } else {
  }
  goto ldv_51355;
  default:
  ldv_stop();
  }
  ldv_51355: ;
  return;
}
}
int main(void)
{
  gfp_t ldvarg1 ;
  void *ldvarg3 ;
  void *tmp ;
  struct urb *ldvarg0 ;
  void *tmp___0 ;
  int ldvarg2 ;
  void *ldvarg7 ;
  void *tmp___1 ;
  struct urb *ldvarg4 ;
  void *tmp___2 ;
  gfp_t ldvarg5 ;
  int ldvarg6 ;
  u8 *ldvarg18 ;
  void *tmp___3 ;
  int *ldvarg11 ;
  void *tmp___4 ;
  u8 ldvarg32 ;
  bool ldvarg31 ;
  bool ldvarg20 ;
  struct cfg80211_scan_request *ldvarg23 ;
  void *tmp___5 ;
  u8 *ldvarg12 ;
  void *tmp___6 ;
  struct cfg80211_ibss_params *ldvarg8 ;
  void *tmp___7 ;
  struct cfg80211_connect_params *ldvarg13 ;
  void *tmp___8 ;
  struct vif_params *ldvarg29 ;
  void *tmp___9 ;
  u32 ldvarg10 ;
  u16 ldvarg9 ;
  bool ldvarg24 ;
  u32 *ldvarg27 ;
  void *tmp___10 ;
  bool ldvarg26 ;
  bool ldvarg35 ;
  u8 *ldvarg33 ;
  void *tmp___11 ;
  struct key_params *ldvarg30 ;
  void *tmp___12 ;
  enum nl80211_tx_power_setting ldvarg15 ;
  u32 ldvarg16 ;
  u8 ldvarg21 ;
  u8 ldvarg25 ;
  int ldvarg14 ;
  s32 ldvarg17 ;
  u8 *ldvarg22 ;
  void *tmp___13 ;
  int ldvarg19 ;
  int ldvarg34 ;
  enum nl80211_iftype ldvarg28 ;
  struct sk_buff *ldvarg37 ;
  void *tmp___14 ;
  void *ldvarg36 ;
  void *tmp___15 ;
  struct usb_device_id *ldvarg39 ;
  void *tmp___16 ;
  pm_message_t ldvarg38 ;
  gfp_t ldvarg41 ;
  void *ldvarg43 ;
  void *tmp___17 ;
  int ldvarg42 ;
  struct urb *ldvarg40 ;
  void *tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg3 = tmp;
  tmp___0 = ldv_init_zalloc(192UL);
  ldvarg0 = (struct urb *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg7 = tmp___1;
  tmp___2 = ldv_init_zalloc(192UL);
  ldvarg4 = (struct urb *)tmp___2;
  tmp___3 = ldv_init_zalloc(1UL);
  ldvarg18 = (u8 *)tmp___3;
  tmp___4 = ldv_init_zalloc(4UL);
  ldvarg11 = (int *)tmp___4;
  tmp___5 = ldv_init_zalloc(104UL);
  ldvarg23 = (struct cfg80211_scan_request *)tmp___5;
  tmp___6 = ldv_init_zalloc(1UL);
  ldvarg12 = (u8 *)tmp___6;
  tmp___7 = ldv_init_zalloc(128UL);
  ldvarg8 = (struct cfg80211_ibss_params *)tmp___7;
  tmp___8 = ldv_init_zalloc(232UL);
  ldvarg13 = (struct cfg80211_connect_params *)tmp___8;
  tmp___9 = ldv_init_zalloc(12UL);
  ldvarg29 = (struct vif_params *)tmp___9;
  tmp___10 = ldv_init_zalloc(4UL);
  ldvarg27 = (u32 *)tmp___10;
  tmp___11 = ldv_init_zalloc(1UL);
  ldvarg33 = (u8 *)tmp___11;
  tmp___12 = ldv_init_zalloc(32UL);
  ldvarg30 = (struct key_params *)tmp___12;
  tmp___13 = ldv_init_zalloc(1UL);
  ldvarg22 = (u8 *)tmp___13;
  tmp___14 = ldv_init_zalloc(232UL);
  ldvarg37 = (struct sk_buff *)tmp___14;
  tmp___15 = ldv_init_zalloc(1UL);
  ldvarg36 = tmp___15;
  tmp___16 = ldv_init_zalloc(32UL);
  ldvarg39 = (struct usb_device_id *)tmp___16;
  tmp___17 = ldv_init_zalloc(1UL);
  ldvarg43 = tmp___17;
  tmp___18 = ldv_init_zalloc(192UL);
  ldvarg40 = (struct urb *)tmp___18;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg1), 0, 4UL);
  ldv_memset((void *)(& ldvarg2), 0, 4UL);
  ldv_memset((void *)(& ldvarg5), 0, 4UL);
  ldv_memset((void *)(& ldvarg6), 0, 4UL);
  ldv_memset((void *)(& ldvarg32), 0, 1UL);
  ldv_memset((void *)(& ldvarg31), 0, 1UL);
  ldv_memset((void *)(& ldvarg20), 0, 1UL);
  ldv_memset((void *)(& ldvarg10), 0, 4UL);
  ldv_memset((void *)(& ldvarg9), 0, 2UL);
  ldv_memset((void *)(& ldvarg24), 0, 1UL);
  ldv_memset((void *)(& ldvarg26), 0, 1UL);
  ldv_memset((void *)(& ldvarg35), 0, 1UL);
  ldv_memset((void *)(& ldvarg15), 0, 4UL);
  ldv_memset((void *)(& ldvarg16), 0, 4UL);
  ldv_memset((void *)(& ldvarg21), 0, 1UL);
  ldv_memset((void *)(& ldvarg25), 0, 1UL);
  ldv_memset((void *)(& ldvarg14), 0, 4UL);
  ldv_memset((void *)(& ldvarg17), 0, 4UL);
  ldv_memset((void *)(& ldvarg19), 0, 4UL);
  ldv_memset((void *)(& ldvarg34), 0, 4UL);
  ldv_memset((void *)(& ldvarg28), 0, 4UL);
  ldv_memset((void *)(& ldvarg38), 0, 4UL);
  ldv_memset((void *)(& ldvarg41), 0, 4UL);
  ldv_memset((void *)(& ldvarg42), 0, 4UL);
  ldv_state_variable_6 = 0;
  work_init_3();
  ldv_state_variable_3 = 1;
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
  ldv_state_variable_5 = 0;
  ldv_51521:
  tmp___19 = __VERIFIER_nondet_int();
  switch (tmp___19) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___20 = __VERIFIER_nondet_int();
    switch (tmp___20) {
    case 0: ;
    if (ldv_state_variable_6 == 4) {
      rndis_wlan_indication(bcm4320a_info_group2, ldvarg3, ldvarg2);
      ldv_state_variable_6 = 4;
    } else {
    }
    if (ldv_state_variable_6 == 1) {
      rndis_wlan_indication(bcm4320a_info_group2, ldvarg3, ldvarg2);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      rndis_wlan_indication(bcm4320a_info_group2, ldvarg3, ldvarg2);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      rndis_wlan_indication(bcm4320a_info_group2, ldvarg3, ldvarg2);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_51423;
    case 1: ;
    if (ldv_state_variable_6 == 4) {
      rndis_tx_fixup(bcm4320a_info_group2, bcm4320a_info_group0, ldvarg1);
      ldv_state_variable_6 = 4;
    } else {
    }
    if (ldv_state_variable_6 == 1) {
      rndis_tx_fixup(bcm4320a_info_group2, bcm4320a_info_group0, ldvarg1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      rndis_tx_fixup(bcm4320a_info_group2, bcm4320a_info_group0, ldvarg1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      rndis_tx_fixup(bcm4320a_info_group2, bcm4320a_info_group0, ldvarg1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_51423;
    case 2: ;
    if (ldv_state_variable_6 == 4) {
      bcm4320a_early_init(bcm4320a_info_group2);
      ldv_state_variable_6 = 4;
    } else {
    }
    if (ldv_state_variable_6 == 1) {
      bcm4320a_early_init(bcm4320a_info_group2);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      bcm4320a_early_init(bcm4320a_info_group2);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      bcm4320a_early_init(bcm4320a_info_group2);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_51423;
    case 3: ;
    if (ldv_state_variable_6 == 2) {
      rndis_wlan_unbind(bcm4320a_info_group2, bcm4320a_info_group1);
      ldv_state_variable_6 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_51423;
    case 4: ;
    if (ldv_state_variable_6 == 1) {
      ldv_retval_0 = rndis_wlan_bind(bcm4320a_info_group2, bcm4320a_info_group1);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_6 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_51423;
    case 5: ;
    if (ldv_state_variable_6 == 4) {
      rndis_wlan_stop(bcm4320a_info_group2);
      ldv_state_variable_6 = 3;
    } else {
    }
    goto ldv_51423;
    case 6: ;
    if (ldv_state_variable_6 == 4) {
      rndis_wlan_reset(bcm4320a_info_group2);
      ldv_state_variable_6 = 4;
    } else {
    }
    if (ldv_state_variable_6 == 1) {
      rndis_wlan_reset(bcm4320a_info_group2);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      rndis_wlan_reset(bcm4320a_info_group2);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      rndis_wlan_reset(bcm4320a_info_group2);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_51423;
    case 7: ;
    if (ldv_state_variable_6 == 4) {
      rndis_rx_fixup(bcm4320a_info_group2, bcm4320a_info_group0);
      ldv_state_variable_6 = 4;
    } else {
    }
    if (ldv_state_variable_6 == 1) {
      rndis_rx_fixup(bcm4320a_info_group2, bcm4320a_info_group0);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      rndis_rx_fixup(bcm4320a_info_group2, bcm4320a_info_group0);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      rndis_rx_fixup(bcm4320a_info_group2, bcm4320a_info_group0);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_51423;
    case 8: ;
    if (ldv_state_variable_6 == 4) {
      rndis_status(bcm4320a_info_group2, ldvarg0);
      ldv_state_variable_6 = 4;
    } else {
    }
    if (ldv_state_variable_6 == 1) {
      rndis_status(bcm4320a_info_group2, ldvarg0);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      rndis_status(bcm4320a_info_group2, ldvarg0);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      rndis_status(bcm4320a_info_group2, ldvarg0);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_51423;
    case 9: ;
    if (ldv_state_variable_6 == 4) {
      ldv_disconnect_6();
      ldv_state_variable_6 = 2;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      ldv_disconnect_6();
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_51423;
    case 10: ;
    if (ldv_state_variable_6 == 2) {
      ldv_init_6();
      ldv_state_variable_6 = 3;
    } else {
    }
    goto ldv_51423;
    case 11: ;
    if (ldv_state_variable_6 == 3) {
      ldv_start_6();
      ldv_state_variable_6 = 4;
    } else {
    }
    goto ldv_51423;
    default:
    ldv_stop();
    }
    ldv_51423: ;
  } else {
  }
  goto ldv_51436;
  case 1: ;
  if (ldv_state_variable_3 != 0) {
    invoke_work_3();
  } else {
  }
  goto ldv_51436;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    tmp___21 = __VERIFIER_nondet_int();
    switch (tmp___21) {
    case 0: ;
    if (ldv_state_variable_7 == 4) {
      rndis_wlan_indication(bcm4320b_info_group2, ldvarg7, ldvarg6);
      ldv_state_variable_7 = 4;
    } else {
    }
    if (ldv_state_variable_7 == 1) {
      rndis_wlan_indication(bcm4320b_info_group2, ldvarg7, ldvarg6);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      rndis_wlan_indication(bcm4320b_info_group2, ldvarg7, ldvarg6);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      rndis_wlan_indication(bcm4320b_info_group2, ldvarg7, ldvarg6);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_51440;
    case 1: ;
    if (ldv_state_variable_7 == 4) {
      rndis_tx_fixup(bcm4320b_info_group2, bcm4320b_info_group0, ldvarg5);
      ldv_state_variable_7 = 4;
    } else {
    }
    if (ldv_state_variable_7 == 1) {
      rndis_tx_fixup(bcm4320b_info_group2, bcm4320b_info_group0, ldvarg5);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      rndis_tx_fixup(bcm4320b_info_group2, bcm4320b_info_group0, ldvarg5);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      rndis_tx_fixup(bcm4320b_info_group2, bcm4320b_info_group0, ldvarg5);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_51440;
    case 2: ;
    if (ldv_state_variable_7 == 4) {
      bcm4320b_early_init(bcm4320b_info_group2);
      ldv_state_variable_7 = 4;
    } else {
    }
    if (ldv_state_variable_7 == 1) {
      bcm4320b_early_init(bcm4320b_info_group2);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      bcm4320b_early_init(bcm4320b_info_group2);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      bcm4320b_early_init(bcm4320b_info_group2);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_51440;
    case 3: ;
    if (ldv_state_variable_7 == 2) {
      rndis_wlan_unbind(bcm4320b_info_group2, bcm4320b_info_group1);
      ldv_state_variable_7 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_51440;
    case 4: ;
    if (ldv_state_variable_7 == 1) {
      ldv_retval_1 = rndis_wlan_bind(bcm4320b_info_group2, bcm4320b_info_group1);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_7 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_51440;
    case 5: ;
    if (ldv_state_variable_7 == 4) {
      rndis_wlan_stop(bcm4320b_info_group2);
      ldv_state_variable_7 = 3;
    } else {
    }
    goto ldv_51440;
    case 6: ;
    if (ldv_state_variable_7 == 4) {
      rndis_wlan_reset(bcm4320b_info_group2);
      ldv_state_variable_7 = 4;
    } else {
    }
    if (ldv_state_variable_7 == 1) {
      rndis_wlan_reset(bcm4320b_info_group2);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      rndis_wlan_reset(bcm4320b_info_group2);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      rndis_wlan_reset(bcm4320b_info_group2);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_51440;
    case 7: ;
    if (ldv_state_variable_7 == 4) {
      rndis_rx_fixup(bcm4320b_info_group2, bcm4320b_info_group0);
      ldv_state_variable_7 = 4;
    } else {
    }
    if (ldv_state_variable_7 == 1) {
      rndis_rx_fixup(bcm4320b_info_group2, bcm4320b_info_group0);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      rndis_rx_fixup(bcm4320b_info_group2, bcm4320b_info_group0);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      rndis_rx_fixup(bcm4320b_info_group2, bcm4320b_info_group0);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_51440;
    case 8: ;
    if (ldv_state_variable_7 == 4) {
      rndis_status(bcm4320b_info_group2, ldvarg4);
      ldv_state_variable_7 = 4;
    } else {
    }
    if (ldv_state_variable_7 == 1) {
      rndis_status(bcm4320b_info_group2, ldvarg4);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      rndis_status(bcm4320b_info_group2, ldvarg4);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      rndis_status(bcm4320b_info_group2, ldvarg4);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_51440;
    case 9: ;
    if (ldv_state_variable_7 == 4) {
      ldv_disconnect_7();
      ldv_state_variable_7 = 2;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      ldv_disconnect_7();
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_51440;
    case 10: ;
    if (ldv_state_variable_7 == 2) {
      ldv_init_7();
      ldv_state_variable_7 = 3;
    } else {
    }
    goto ldv_51440;
    case 11: ;
    if (ldv_state_variable_7 == 3) {
      ldv_start_7();
      ldv_state_variable_7 = 4;
    } else {
    }
    goto ldv_51440;
    default:
    ldv_stop();
    }
    ldv_51440: ;
  } else {
  }
  goto ldv_51436;
  case 3: ;
  if (ldv_state_variable_9 != 0) {
    tmp___22 = __VERIFIER_nondet_int();
    switch (tmp___22) {
    case 0: ;
    if (ldv_state_variable_9 == 1) {
      rndis_set_power_mgmt(rndis_config_ops_group3, rndis_config_ops_group4, (int )ldvarg35,
                           ldvarg34);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      rndis_set_power_mgmt(rndis_config_ops_group3, rndis_config_ops_group4, (int )ldvarg35,
                           ldvarg34);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      rndis_set_power_mgmt(rndis_config_ops_group3, rndis_config_ops_group4, (int )ldvarg35,
                           ldvarg34);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_51455;
    case 1: ;
    if (ldv_state_variable_9 == 1) {
      rndis_add_key(rndis_config_ops_group3, rndis_config_ops_group4, (int )ldvarg32,
                    (int )ldvarg31, (u8 const *)ldvarg33, ldvarg30);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      rndis_add_key(rndis_config_ops_group3, rndis_config_ops_group4, (int )ldvarg32,
                    (int )ldvarg31, (u8 const *)ldvarg33, ldvarg30);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      rndis_add_key(rndis_config_ops_group3, rndis_config_ops_group4, (int )ldvarg32,
                    (int )ldvarg31, (u8 const *)ldvarg33, ldvarg30);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_51455;
    case 2: ;
    if (ldv_state_variable_9 == 1) {
      rndis_change_virtual_intf(rndis_config_ops_group3, rndis_config_ops_group4,
                                ldvarg28, ldvarg27, ldvarg29);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      rndis_change_virtual_intf(rndis_config_ops_group3, rndis_config_ops_group4,
                                ldvarg28, ldvarg27, ldvarg29);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      rndis_change_virtual_intf(rndis_config_ops_group3, rndis_config_ops_group4,
                                ldvarg28, ldvarg27, ldvarg29);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_51455;
    case 3: ;
    if (ldv_state_variable_9 == 1) {
      rndis_set_default_key(rndis_config_ops_group3, rndis_config_ops_group4, (int )ldvarg25,
                            (int )ldvarg24, (int )ldvarg26);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      rndis_set_default_key(rndis_config_ops_group3, rndis_config_ops_group4, (int )ldvarg25,
                            (int )ldvarg24, (int )ldvarg26);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      rndis_set_default_key(rndis_config_ops_group3, rndis_config_ops_group4, (int )ldvarg25,
                            (int )ldvarg24, (int )ldvarg26);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_51455;
    case 4: ;
    if (ldv_state_variable_9 == 1) {
      rndis_scan(rndis_config_ops_group3, ldvarg23);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      rndis_scan(rndis_config_ops_group3, ldvarg23);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      rndis_scan(rndis_config_ops_group3, ldvarg23);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_51455;
    case 5: ;
    if (ldv_state_variable_9 == 1) {
      rndis_del_pmksa(rndis_config_ops_group3, rndis_config_ops_group4, rndis_config_ops_group2);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      rndis_del_pmksa(rndis_config_ops_group3, rndis_config_ops_group4, rndis_config_ops_group2);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      rndis_del_pmksa(rndis_config_ops_group3, rndis_config_ops_group4, rndis_config_ops_group2);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_51455;
    case 6: ;
    if (ldv_state_variable_9 == 1) {
      rndis_del_key(rndis_config_ops_group3, rndis_config_ops_group4, (int )ldvarg21,
                    (int )ldvarg20, (u8 const *)ldvarg22);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      rndis_del_key(rndis_config_ops_group3, rndis_config_ops_group4, (int )ldvarg21,
                    (int )ldvarg20, (u8 const *)ldvarg22);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      rndis_del_key(rndis_config_ops_group3, rndis_config_ops_group4, (int )ldvarg21,
                    (int )ldvarg20, (u8 const *)ldvarg22);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_51455;
    case 7: ;
    if (ldv_state_variable_9 == 1) {
      rndis_dump_station(rndis_config_ops_group3, rndis_config_ops_group4, ldvarg19,
                         ldvarg18, rndis_config_ops_group1);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      rndis_dump_station(rndis_config_ops_group3, rndis_config_ops_group4, ldvarg19,
                         ldvarg18, rndis_config_ops_group1);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      rndis_dump_station(rndis_config_ops_group3, rndis_config_ops_group4, ldvarg19,
                         ldvarg18, rndis_config_ops_group1);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_51455;
    case 8: ;
    if (ldv_state_variable_9 == 1) {
      rndis_set_cqm_rssi_config(rndis_config_ops_group3, rndis_config_ops_group4,
                                ldvarg17, ldvarg16);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      rndis_set_cqm_rssi_config(rndis_config_ops_group3, rndis_config_ops_group4,
                                ldvarg17, ldvarg16);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      rndis_set_cqm_rssi_config(rndis_config_ops_group3, rndis_config_ops_group4,
                                ldvarg17, ldvarg16);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_51455;
    case 9: ;
    if (ldv_state_variable_9 == 1) {
      rndis_set_tx_power(rndis_config_ops_group3, rndis_config_ops_group0, ldvarg15,
                         ldvarg14);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      rndis_set_tx_power(rndis_config_ops_group3, rndis_config_ops_group0, ldvarg15,
                         ldvarg14);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      rndis_set_tx_power(rndis_config_ops_group3, rndis_config_ops_group0, ldvarg15,
                         ldvarg14);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_51455;
    case 10: ;
    if (ldv_state_variable_9 == 2) {
      ldv_retval_2 = rndis_connect(rndis_config_ops_group3, rndis_config_ops_group4,
                                   ldvarg13);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_9 = 3;
      } else {
      }
    } else {
    }
    goto ldv_51455;
    case 11: ;
    if (ldv_state_variable_9 == 1) {
      rndis_flush_pmksa(rndis_config_ops_group3, rndis_config_ops_group4);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      rndis_flush_pmksa(rndis_config_ops_group3, rndis_config_ops_group4);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      rndis_flush_pmksa(rndis_config_ops_group3, rndis_config_ops_group4);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_51455;
    case 12: ;
    if (ldv_state_variable_9 == 1) {
      rndis_get_station(rndis_config_ops_group3, rndis_config_ops_group4, (u8 const *)ldvarg12,
                        rndis_config_ops_group1);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      rndis_get_station(rndis_config_ops_group3, rndis_config_ops_group4, (u8 const *)ldvarg12,
                        rndis_config_ops_group1);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      rndis_get_station(rndis_config_ops_group3, rndis_config_ops_group4, (u8 const *)ldvarg12,
                        rndis_config_ops_group1);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_51455;
    case 13: ;
    if (ldv_state_variable_9 == 1) {
      rndis_leave_ibss(rndis_config_ops_group3, rndis_config_ops_group4);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      rndis_leave_ibss(rndis_config_ops_group3, rndis_config_ops_group4);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      rndis_leave_ibss(rndis_config_ops_group3, rndis_config_ops_group4);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_51455;
    case 14: ;
    if (ldv_state_variable_9 == 1) {
      rndis_get_tx_power(rndis_config_ops_group3, rndis_config_ops_group0, ldvarg11);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      rndis_get_tx_power(rndis_config_ops_group3, rndis_config_ops_group0, ldvarg11);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      rndis_get_tx_power(rndis_config_ops_group3, rndis_config_ops_group0, ldvarg11);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_51455;
    case 15: ;
    if (ldv_state_variable_9 == 1) {
      rndis_set_wiphy_params(rndis_config_ops_group3, ldvarg10);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      rndis_set_wiphy_params(rndis_config_ops_group3, ldvarg10);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      rndis_set_wiphy_params(rndis_config_ops_group3, ldvarg10);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_51455;
    case 16: ;
    if (ldv_state_variable_9 == 3) {
      rndis_disconnect(rndis_config_ops_group3, rndis_config_ops_group4, (int )ldvarg9);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_51455;
    case 17: ;
    if (ldv_state_variable_9 == 1) {
      rndis_set_pmksa(rndis_config_ops_group3, rndis_config_ops_group4, rndis_config_ops_group2);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      rndis_set_pmksa(rndis_config_ops_group3, rndis_config_ops_group4, rndis_config_ops_group2);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      rndis_set_pmksa(rndis_config_ops_group3, rndis_config_ops_group4, rndis_config_ops_group2);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_51455;
    case 18: ;
    if (ldv_state_variable_9 == 1) {
      rndis_join_ibss(rndis_config_ops_group3, rndis_config_ops_group4, ldvarg8);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      rndis_join_ibss(rndis_config_ops_group3, rndis_config_ops_group4, ldvarg8);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      rndis_join_ibss(rndis_config_ops_group3, rndis_config_ops_group4, ldvarg8);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_51455;
    case 19: ;
    if (ldv_state_variable_9 == 2) {
      ldv_release_9();
      ldv_state_variable_9 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_51455;
    case 20: ;
    if (ldv_state_variable_9 == 1) {
      ldv_bind_9();
      ldv_state_variable_9 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_51455;
    default:
    ldv_stop();
    }
    ldv_51455: ;
  } else {
  }
  goto ldv_51436;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    invoke_work_2();
  } else {
  }
  goto ldv_51436;
  case 5: ;
  if (ldv_state_variable_8 != 0) {
    tmp___23 = __VERIFIER_nondet_int();
    switch (tmp___23) {
    case 0: ;
    if (ldv_state_variable_8 == 2) {
      ldv_retval_4 = usbnet_open(rndis_wlan_netdev_ops_group1);
      if (ldv_retval_4 == 0) {
        ldv_state_variable_8 = 3;
      } else {
      }
    } else {
    }
    goto ldv_51480;
    case 1: ;
    if (ldv_state_variable_8 == 3) {
      usbnet_start_xmit(ldvarg37, rndis_wlan_netdev_ops_group1);
      ldv_state_variable_8 = 3;
    } else {
    }
    goto ldv_51480;
    case 2: ;
    if (ldv_state_variable_8 == 1) {
      eth_validate_addr(rndis_wlan_netdev_ops_group1);
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      eth_validate_addr(rndis_wlan_netdev_ops_group1);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      eth_validate_addr(rndis_wlan_netdev_ops_group1);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_51480;
    case 3: ;
    if (ldv_state_variable_8 == 1) {
      rndis_wlan_set_multicast_list(rndis_wlan_netdev_ops_group1);
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      rndis_wlan_set_multicast_list(rndis_wlan_netdev_ops_group1);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      rndis_wlan_set_multicast_list(rndis_wlan_netdev_ops_group1);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_51480;
    case 4: ;
    if (ldv_state_variable_8 == 3) {
      usbnet_stop(rndis_wlan_netdev_ops_group1);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_51480;
    case 5: ;
    if (ldv_state_variable_8 == 1) {
      eth_mac_addr(rndis_wlan_netdev_ops_group1, ldvarg36);
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      eth_mac_addr(rndis_wlan_netdev_ops_group1, ldvarg36);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      eth_mac_addr(rndis_wlan_netdev_ops_group1, ldvarg36);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_51480;
    case 6: ;
    if (ldv_state_variable_8 == 1) {
      usbnet_tx_timeout(rndis_wlan_netdev_ops_group1);
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      usbnet_tx_timeout(rndis_wlan_netdev_ops_group1);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      usbnet_tx_timeout(rndis_wlan_netdev_ops_group1);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_51480;
    case 7: ;
    if (ldv_state_variable_8 == 1) {
      ldv_retval_3 = ldv_ndo_init_8();
      if (ldv_retval_3 == 0) {
        ldv_state_variable_8 = 2;
        usb_counter = usb_counter + 1;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_51480;
    case 8: ;
    if (ldv_state_variable_8 == 2) {
      ldv_ndo_uninit_8();
      ldv_state_variable_8 = 1;
      usb_counter = usb_counter - 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_51480;
    default:
    ldv_stop();
    }
    ldv_51480: ;
  } else {
  }
  goto ldv_51436;
  case 6: ;
  if (ldv_state_variable_1 != 0) {
    invoke_work_1();
  } else {
  }
  goto ldv_51436;
  case 7: ;
  if (ldv_state_variable_4 != 0) {
    tmp___24 = __VERIFIER_nondet_int();
    switch (tmp___24) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      ldv_retval_7 = usbnet_probe(rndis_wlan_driver_group1, (struct usb_device_id const *)ldvarg39);
      if (ldv_retval_7 == 0) {
        ldv_state_variable_4 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_51493;
    case 1: ;
    if (ldv_state_variable_4 == 2) {
      usbnet_suspend(rndis_wlan_driver_group1, ldvarg38);
      ldv_state_variable_4 = 3;
    } else {
    }
    goto ldv_51493;
    case 2: ;
    if (ldv_state_variable_4 == 3) {
      ldv_retval_6 = usbnet_resume(rndis_wlan_driver_group1);
      if (ldv_retval_6 == 0) {
        ldv_state_variable_4 = 2;
      } else {
      }
    } else {
    }
    goto ldv_51493;
    case 3: ;
    if (ldv_state_variable_4 == 3 && usb_counter == 0) {
      usbnet_disconnect(rndis_wlan_driver_group1);
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_4 == 2 && usb_counter == 0) {
      usbnet_disconnect(rndis_wlan_driver_group1);
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_51493;
    case 4: ;
    if (ldv_state_variable_4 == 3) {
      ldv_retval_5 = ldv_reset_resume_4();
      if (ldv_retval_5 == 0) {
        ldv_state_variable_4 = 2;
      } else {
      }
    } else {
    }
    goto ldv_51493;
    default:
    ldv_stop();
    }
    ldv_51493: ;
  } else {
  }
  goto ldv_51436;
  case 8: ;
  if (ldv_state_variable_0 != 0) {
    tmp___25 = __VERIFIER_nondet_int();
    switch (tmp___25) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      rndis_wlan_driver_exit();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_51502;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_8 = rndis_wlan_driver_init();
      if (ldv_retval_8 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_8 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_5 = 1;
        ldv_initialize_driver_info_5();
        ldv_state_variable_9 = 1;
        ldv_initialize_cfg80211_ops_9();
        ldv_state_variable_7 = 1;
        ldv_initialize_driver_info_7();
        ldv_state_variable_6 = 1;
        ldv_initialize_driver_info_6();
        ldv_state_variable_8 = 1;
        ldv_net_device_ops_8();
      } else {
      }
    } else {
    }
    goto ldv_51502;
    default:
    ldv_stop();
    }
    ldv_51502: ;
  } else {
  }
  goto ldv_51436;
  case 9: ;
  if (ldv_state_variable_5 != 0) {
    tmp___26 = __VERIFIER_nondet_int();
    switch (tmp___26) {
    case 0: ;
    if (ldv_state_variable_5 == 4) {
      rndis_wlan_indication(rndis_wlan_info_group2, ldvarg43, ldvarg42);
      ldv_state_variable_5 = 4;
    } else {
    }
    if (ldv_state_variable_5 == 1) {
      rndis_wlan_indication(rndis_wlan_info_group2, ldvarg43, ldvarg42);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      rndis_wlan_indication(rndis_wlan_info_group2, ldvarg43, ldvarg42);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      rndis_wlan_indication(rndis_wlan_info_group2, ldvarg43, ldvarg42);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_51507;
    case 1: ;
    if (ldv_state_variable_5 == 4) {
      rndis_tx_fixup(rndis_wlan_info_group2, rndis_wlan_info_group0, ldvarg41);
      ldv_state_variable_5 = 4;
    } else {
    }
    if (ldv_state_variable_5 == 1) {
      rndis_tx_fixup(rndis_wlan_info_group2, rndis_wlan_info_group0, ldvarg41);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      rndis_tx_fixup(rndis_wlan_info_group2, rndis_wlan_info_group0, ldvarg41);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      rndis_tx_fixup(rndis_wlan_info_group2, rndis_wlan_info_group0, ldvarg41);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_51507;
    case 2: ;
    if (ldv_state_variable_5 == 4) {
      unknown_early_init(rndis_wlan_info_group2);
      ldv_state_variable_5 = 4;
    } else {
    }
    if (ldv_state_variable_5 == 1) {
      unknown_early_init(rndis_wlan_info_group2);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      unknown_early_init(rndis_wlan_info_group2);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      unknown_early_init(rndis_wlan_info_group2);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_51507;
    case 3: ;
    if (ldv_state_variable_5 == 2) {
      rndis_wlan_unbind(rndis_wlan_info_group2, rndis_wlan_info_group1);
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_51507;
    case 4: ;
    if (ldv_state_variable_5 == 1) {
      ldv_retval_9 = rndis_wlan_bind(rndis_wlan_info_group2, rndis_wlan_info_group1);
      if (ldv_retval_9 == 0) {
        ldv_state_variable_5 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_51507;
    case 5: ;
    if (ldv_state_variable_5 == 4) {
      rndis_wlan_stop(rndis_wlan_info_group2);
      ldv_state_variable_5 = 3;
    } else {
    }
    goto ldv_51507;
    case 6: ;
    if (ldv_state_variable_5 == 4) {
      rndis_wlan_reset(rndis_wlan_info_group2);
      ldv_state_variable_5 = 4;
    } else {
    }
    if (ldv_state_variable_5 == 1) {
      rndis_wlan_reset(rndis_wlan_info_group2);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      rndis_wlan_reset(rndis_wlan_info_group2);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      rndis_wlan_reset(rndis_wlan_info_group2);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_51507;
    case 7: ;
    if (ldv_state_variable_5 == 4) {
      rndis_rx_fixup(rndis_wlan_info_group2, rndis_wlan_info_group0);
      ldv_state_variable_5 = 4;
    } else {
    }
    if (ldv_state_variable_5 == 1) {
      rndis_rx_fixup(rndis_wlan_info_group2, rndis_wlan_info_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      rndis_rx_fixup(rndis_wlan_info_group2, rndis_wlan_info_group0);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      rndis_rx_fixup(rndis_wlan_info_group2, rndis_wlan_info_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_51507;
    case 8: ;
    if (ldv_state_variable_5 == 4) {
      rndis_status(rndis_wlan_info_group2, ldvarg40);
      ldv_state_variable_5 = 4;
    } else {
    }
    if (ldv_state_variable_5 == 1) {
      rndis_status(rndis_wlan_info_group2, ldvarg40);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      rndis_status(rndis_wlan_info_group2, ldvarg40);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      rndis_status(rndis_wlan_info_group2, ldvarg40);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_51507;
    case 9: ;
    if (ldv_state_variable_5 == 4) {
      ldv_disconnect_5();
      ldv_state_variable_5 = 2;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      ldv_disconnect_5();
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_51507;
    case 10: ;
    if (ldv_state_variable_5 == 2) {
      ldv_init_5();
      ldv_state_variable_5 = 3;
    } else {
    }
    goto ldv_51507;
    case 11: ;
    if (ldv_state_variable_5 == 3) {
      ldv_start_5();
      ldv_state_variable_5 = 4;
    } else {
    }
    goto ldv_51507;
    default:
    ldv_stop();
    }
    ldv_51507: ;
  } else {
  }
  goto ldv_51436;
  default:
  ldv_stop();
  }
  ldv_51436: ;
  goto ldv_51521;
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
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_bh_6(lock);
  return;
}
}
__inline static void spin_unlock_bh(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_bh_10(lock);
  return;
}
}
bool ldv_queue_work_on_15(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_16(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_17(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_18(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_19(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(size);
  return (tmp);
}
}
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_33(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_35(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_36(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_37(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_38(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_39(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_pskb_expand_head_40(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_41(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
extern void *realloc(void * , size_t ) ;
void *ldv_krealloc_42(void const *ldv_func_arg1 , size_t ldv_func_arg2 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = realloc(ldv_func_arg1, ldv_func_arg2);
  return (tmp);
}
}
bool ldv_cancel_delayed_work_sync_43(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_sync_44(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_work_sync_45(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_46(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
void ldv_destroy_workqueue_47(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_cancel_delayed_work_sync_48(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_sync_49(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_work_sync_50(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___11 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_51(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
void ldv_destroy_workqueue_52(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_cancel_delayed_work_sync_53(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___12 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_sync_54(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___13 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_work_sync_55(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___14 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_56(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
int ldv_usb_register_driver_57(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 )
{
  ldv_func_ret_type___15 ldv_func_res ;
  int tmp ;
  {
  tmp = usb_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_4 = 1;
  usb_counter = 0;
  ldv_usb_driver_4();
  return (ldv_func_res);
}
}
void ldv_usb_deregister_58(struct usb_driver *arg )
{
  {
  usb_deregister(arg);
  ldv_state_variable_4 = 0;
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
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
void __dynamic_netdev_dbg(struct _ddebug *arg0, const struct net_device *arg1, const char *arg2, ...) {
  return;
}
struct ieee80211_channel *__ieee80211_get_channel(struct wiphy *arg0, int arg1) {
  return ldv_malloc(sizeof(struct ieee80211_channel));
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void _raw_spin_lock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_bh(raw_spinlock_t *arg0) {
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
void cfg80211_connect_result(struct net_device *arg0, const u8 *arg1, const u8 *arg2, size_t arg3, const u8 *arg4, size_t arg5, u16 arg6, gfp_t arg7) {
  return;
}
void cfg80211_cqm_rssi_notify(struct net_device *arg0, enum nl80211_cqm_rssi_threshold_event arg1, gfp_t arg2) {
  return;
}
void cfg80211_disconnected(struct net_device *arg0, u16 arg1, const u8 *arg2, size_t arg3, bool arg4, gfp_t arg5) {
  return;
}
void cfg80211_ibss_joined(struct net_device *arg0, const u8 *arg1, struct ieee80211_channel *arg2, gfp_t arg3) {
  return;
}
struct cfg80211_bss *cfg80211_inform_bss_width(struct wiphy *arg0, struct ieee80211_channel *arg1, enum nl80211_bss_scan_width arg2, enum cfg80211_bss_frame_type arg3, const u8 *arg4, u64 arg5, u16 arg6, u16 arg7, const u8 *arg8, size_t arg9, s32 arg10, gfp_t arg11) {
  return ldv_malloc(sizeof(struct cfg80211_bss));
}
void cfg80211_michael_mic_failure(struct net_device *arg0, const u8 *arg1, enum nl80211_key_type arg2, int arg3, const u8 *arg4, gfp_t arg5) {
  return;
}
void cfg80211_pmksa_candidate_notify(struct net_device *arg0, int arg1, const u8 *arg2, bool arg3, gfp_t arg4) {
  return;
}
void cfg80211_put_bss(struct wiphy *arg0, struct cfg80211_bss *arg1) {
  return;
}
void cfg80211_roamed(struct net_device *arg0, struct ieee80211_channel *arg1, const u8 *arg2, const u8 *arg3, size_t arg4, const u8 *arg5, size_t arg6, gfp_t arg7) {
  return;
}
void cfg80211_scan_done(struct cfg80211_scan_request *arg0, bool arg1) {
  return;
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int eth_mac_addr(struct net_device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int eth_validate_addr(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int generic_rndis_bind(struct usbnet *arg0, struct usb_interface *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void get_random_bytes(void *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int ieee80211_channel_to_frequency(int arg0, enum ieee80211_band arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ieee80211_frequency_to_channel(int arg0) {
  return __VERIFIER_nondet_int();
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_bind_9() {
  return __VERIFIER_nondet_int();
}
void ldv_check_final_state() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_disconnect_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_disconnect_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_disconnect_7() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_init_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_init_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_init_7() {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_init_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_uninit_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_reset_resume_4() {
  return __VERIFIER_nondet_int();
}
struct page *ldv_some_page() {
  return ldv_malloc(sizeof(struct page));
}
int __VERIFIER_nondet_int(void);
int ldv_start_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_start_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_start_7() {
  return __VERIFIER_nondet_int();
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void msleep(unsigned int arg0) {
  return;
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
void netdev_err(const struct net_device *arg0, const char *arg1, ...) {
  return;
}
void netdev_info(const struct net_device *arg0, const char *arg1, ...) {
  return;
}
void netdev_warn(const struct net_device *arg0, const char *arg1, ...) {
  return;
}
void netif_carrier_off(struct net_device *arg0) {
  return;
}
void netif_carrier_on(struct net_device *arg0) {
  return;
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
int rndis_command(struct usbnet *arg0, struct rndis_msg_hdr *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int rndis_rx_fixup(struct usbnet *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
}
void rndis_status(struct usbnet *arg0, struct urb *arg1) {
  return;
}
struct sk_buff *rndis_tx_fixup(struct usbnet *arg0, struct sk_buff *arg1, gfp_t arg2) {
  return ldv_malloc(sizeof(struct sk_buff));
}
void rndis_unbind(struct usbnet *arg0, struct usb_interface *arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int round_jiffies_relative(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void usbnet_disconnect(struct usb_interface *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usbnet_open(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void usbnet_pause_rx(struct usbnet *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usbnet_probe(struct usb_interface *arg0, const struct usb_device_id *arg1) {
  return __VERIFIER_nondet_int();
}
void usbnet_purge_paused_rxq(struct usbnet *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usbnet_resume(struct usb_interface *arg0) {
  return __VERIFIER_nondet_int();
}
void usbnet_resume_rx(struct usbnet *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
netdev_tx_t usbnet_start_xmit(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usbnet_stop(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usbnet_suspend(struct usb_interface *arg0, pm_message_t arg1) {
  return __VERIFIER_nondet_int();
}
void usbnet_tx_timeout(struct net_device *arg0) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void wiphy_free(struct wiphy *arg0) {
  return;
}
struct wiphy *wiphy_new_nm(const struct cfg80211_ops *arg0, int arg1, const char *arg2) {
  return ldv_malloc(sizeof(struct wiphy));
}
int __VERIFIER_nondet_int(void);
int wiphy_register(struct wiphy *arg0) {
  return __VERIFIER_nondet_int();
}
void wiphy_unregister(struct wiphy *arg0) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
