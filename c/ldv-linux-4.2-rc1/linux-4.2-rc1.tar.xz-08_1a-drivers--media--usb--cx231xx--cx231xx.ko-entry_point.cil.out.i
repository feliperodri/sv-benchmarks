extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
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
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
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
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
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
struct rt_mutex {
   raw_spinlock_t wait_lock ;
   struct rb_root waiters ;
   struct rb_node *waiters_leftmost ;
   struct task_struct *owner ;
   int save_state ;
   char const *name ;
   char const *file ;
   int line ;
   void *magic ;
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
struct v4l2_event_subscription;
struct videobuf_queue;
struct cx2341x_handler;
struct v4l2_fh;
struct v4l2_format;
struct i2c_adapter;
struct usb_interface;
struct v4l2_buffer;
struct videobuf_buffer;
struct v4l2_edid {
   __u32 pad ;
   __u32 start_block ;
   __u32 blocks ;
   __u32 reserved[5U] ;
   __u8 *edid ;
};
enum v4l2_field {
    V4L2_FIELD_ANY = 0,
    V4L2_FIELD_NONE = 1,
    V4L2_FIELD_TOP = 2,
    V4L2_FIELD_BOTTOM = 3,
    V4L2_FIELD_INTERLACED = 4,
    V4L2_FIELD_SEQ_TB = 5,
    V4L2_FIELD_SEQ_BT = 6,
    V4L2_FIELD_ALTERNATE = 7,
    V4L2_FIELD_INTERLACED_TB = 8,
    V4L2_FIELD_INTERLACED_BT = 9
} ;
enum v4l2_buf_type {
    V4L2_BUF_TYPE_VIDEO_CAPTURE = 1,
    V4L2_BUF_TYPE_VIDEO_OUTPUT = 2,
    V4L2_BUF_TYPE_VIDEO_OVERLAY = 3,
    V4L2_BUF_TYPE_VBI_CAPTURE = 4,
    V4L2_BUF_TYPE_VBI_OUTPUT = 5,
    V4L2_BUF_TYPE_SLICED_VBI_CAPTURE = 6,
    V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = 7,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_OVERLAY = 8,
    V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = 9,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = 10,
    V4L2_BUF_TYPE_SDR_CAPTURE = 11,
    V4L2_BUF_TYPE_PRIVATE = 128
} ;
enum v4l2_memory {
    V4L2_MEMORY_MMAP = 1,
    V4L2_MEMORY_USERPTR = 2,
    V4L2_MEMORY_OVERLAY = 3,
    V4L2_MEMORY_DMABUF = 4
} ;
enum v4l2_priority {
    V4L2_PRIORITY_UNSET = 0,
    V4L2_PRIORITY_BACKGROUND = 1,
    V4L2_PRIORITY_INTERACTIVE = 2,
    V4L2_PRIORITY_RECORD = 3,
    V4L2_PRIORITY_DEFAULT = 2
} ;
struct v4l2_rect {
   __s32 left ;
   __s32 top ;
   __u32 width ;
   __u32 height ;
};
struct v4l2_fract {
   __u32 numerator ;
   __u32 denominator ;
};
struct v4l2_capability {
   __u8 driver[16U] ;
   __u8 card[32U] ;
   __u8 bus_info[32U] ;
   __u32 version ;
   __u32 capabilities ;
   __u32 device_caps ;
   __u32 reserved[3U] ;
};
struct v4l2_pix_format {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   __u32 colorspace ;
   __u32 priv ;
   __u32 flags ;
   __u32 ycbcr_enc ;
   __u32 quantization ;
   __u32 xfer_func ;
};
struct v4l2_fmtdesc {
   __u32 index ;
   __u32 type ;
   __u32 flags ;
   __u8 description[32U] ;
   __u32 pixelformat ;
   __u32 reserved[4U] ;
};
struct v4l2_frmsize_discrete {
   __u32 width ;
   __u32 height ;
};
struct v4l2_frmsize_stepwise {
   __u32 min_width ;
   __u32 max_width ;
   __u32 step_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 step_height ;
};
union __anonunion____missing_field_name_217 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion____missing_field_name_217 __annonCompField58 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion____missing_field_name_218 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion____missing_field_name_218 __annonCompField59 ;
   __u32 reserved[2U] ;
};
struct v4l2_timecode {
   __u32 type ;
   __u32 flags ;
   __u8 frames ;
   __u8 seconds ;
   __u8 minutes ;
   __u8 hours ;
   __u8 userbits[4U] ;
};
struct v4l2_jpegcompression {
   int quality ;
   int APPn ;
   int APP_len ;
   char APP_data[60U] ;
   int COM_len ;
   char COM_data[60U] ;
   __u32 jpeg_markers ;
};
struct v4l2_requestbuffers {
   __u32 count ;
   __u32 type ;
   __u32 memory ;
   __u32 reserved[2U] ;
};
union __anonunion_m_219 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_219 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_220 {
   __u32 offset ;
   unsigned long userptr ;
   struct v4l2_plane *planes ;
   __s32 fd ;
};
struct v4l2_buffer {
   __u32 index ;
   __u32 type ;
   __u32 bytesused ;
   __u32 flags ;
   __u32 field ;
   struct timeval timestamp ;
   struct v4l2_timecode timecode ;
   __u32 sequence ;
   __u32 memory ;
   union __anonunion_m_220 m ;
   __u32 length ;
   __u32 reserved2 ;
   __u32 reserved ;
};
struct v4l2_exportbuffer {
   __u32 type ;
   __u32 index ;
   __u32 plane ;
   __u32 flags ;
   __s32 fd ;
   __u32 reserved[11U] ;
};
struct __anonstruct_fmt_221 {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   __u32 colorspace ;
   __u32 priv ;
};
struct v4l2_framebuffer {
   __u32 capability ;
   __u32 flags ;
   void *base ;
   struct __anonstruct_fmt_221 fmt ;
};
struct v4l2_clip {
   struct v4l2_rect c ;
   struct v4l2_clip *next ;
};
struct v4l2_window {
   struct v4l2_rect w ;
   __u32 field ;
   __u32 chromakey ;
   struct v4l2_clip *clips ;
   __u32 clipcount ;
   void *bitmap ;
   __u8 global_alpha ;
};
struct v4l2_captureparm {
   __u32 capability ;
   __u32 capturemode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 readbuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_outputparm {
   __u32 capability ;
   __u32 outputmode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 writebuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_cropcap {
   __u32 type ;
   struct v4l2_rect bounds ;
   struct v4l2_rect defrect ;
   struct v4l2_fract pixelaspect ;
};
struct v4l2_crop {
   __u32 type ;
   struct v4l2_rect c ;
};
struct v4l2_selection {
   __u32 type ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[9U] ;
};
typedef __u64 v4l2_std_id;
struct v4l2_bt_timings {
   __u32 width ;
   __u32 height ;
   __u32 interlaced ;
   __u32 polarities ;
   __u64 pixelclock ;
   __u32 hfrontporch ;
   __u32 hsync ;
   __u32 hbackporch ;
   __u32 vfrontporch ;
   __u32 vsync ;
   __u32 vbackporch ;
   __u32 il_vfrontporch ;
   __u32 il_vsync ;
   __u32 il_vbackporch ;
   __u32 standards ;
   __u32 flags ;
   __u32 reserved[14U] ;
};
union __anonunion____missing_field_name_222 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion____missing_field_name_222 __annonCompField60 ;
};
struct v4l2_enum_dv_timings {
   __u32 index ;
   __u32 pad ;
   __u32 reserved[2U] ;
   struct v4l2_dv_timings timings ;
};
struct v4l2_bt_timings_cap {
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u64 min_pixelclock ;
   __u64 max_pixelclock ;
   __u32 standards ;
   __u32 capabilities ;
   __u32 reserved[16U] ;
};
union __anonunion____missing_field_name_223 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 pad ;
   __u32 reserved[2U] ;
   union __anonunion____missing_field_name_223 __annonCompField61 ;
};
struct v4l2_input {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 tuner ;
   v4l2_std_id std ;
   __u32 status ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_output {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 modulator ;
   v4l2_std_id std ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion____missing_field_name_224 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
   __u8 *p_u8 ;
   __u16 *p_u16 ;
   __u32 *p_u32 ;
   void *ptr ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion____missing_field_name_224 __annonCompField62 ;
};
struct v4l2_ext_controls {
   __u32 ctrl_class ;
   __u32 count ;
   __u32 error_idx ;
   __u32 reserved[2U] ;
   struct v4l2_ext_control *controls ;
};
enum v4l2_ctrl_type {
    V4L2_CTRL_TYPE_INTEGER = 1,
    V4L2_CTRL_TYPE_BOOLEAN = 2,
    V4L2_CTRL_TYPE_MENU = 3,
    V4L2_CTRL_TYPE_BUTTON = 4,
    V4L2_CTRL_TYPE_INTEGER64 = 5,
    V4L2_CTRL_TYPE_CTRL_CLASS = 6,
    V4L2_CTRL_TYPE_STRING = 7,
    V4L2_CTRL_TYPE_BITMASK = 8,
    V4L2_CTRL_TYPE_INTEGER_MENU = 9,
    V4L2_CTRL_COMPOUND_TYPES = 256,
    V4L2_CTRL_TYPE_U8 = 256,
    V4L2_CTRL_TYPE_U16 = 257,
    V4L2_CTRL_TYPE_U32 = 258
} ;
struct v4l2_queryctrl {
   __u32 id ;
   __u32 type ;
   __u8 name[32U] ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 step ;
   __s32 default_value ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_query_ext_ctrl {
   __u32 id ;
   __u32 type ;
   char name[32U] ;
   __s64 minimum ;
   __s64 maximum ;
   __u64 step ;
   __s64 default_value ;
   __u32 flags ;
   __u32 elem_size ;
   __u32 elems ;
   __u32 nr_of_dims ;
   __u32 dims[4U] ;
   __u32 reserved[32U] ;
};
union __anonunion____missing_field_name_225 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion____missing_field_name_225 __annonCompField63 ;
   __u32 reserved ;
};
struct v4l2_tuner {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 rxsubchans ;
   __u32 audmode ;
   __s32 signal ;
   __s32 afc ;
   __u32 reserved[4U] ;
};
struct v4l2_modulator {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 txsubchans ;
   __u32 reserved[4U] ;
};
struct v4l2_frequency {
   __u32 tuner ;
   __u32 type ;
   __u32 frequency ;
   __u32 reserved[8U] ;
};
struct v4l2_frequency_band {
   __u32 tuner ;
   __u32 type ;
   __u32 index ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 modulation ;
   __u32 reserved[9U] ;
};
struct v4l2_hw_freq_seek {
   __u32 tuner ;
   __u32 type ;
   __u32 seek_upward ;
   __u32 wrap_around ;
   __u32 spacing ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 reserved[5U] ;
};
struct v4l2_audio {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_audioout {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx_entry {
   __u64 offset ;
   __u64 pts ;
   __u32 length ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx {
   __u32 entries ;
   __u32 entries_cap ;
   __u32 reserved[4U] ;
   struct v4l2_enc_idx_entry entry[64U] ;
};
struct __anonstruct_raw_227 {
   __u32 data[8U] ;
};
union __anonunion____missing_field_name_226 {
   struct __anonstruct_raw_227 raw ;
};
struct v4l2_encoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_226 __annonCompField64 ;
};
struct __anonstruct_stop_229 {
   __u64 pts ;
};
struct __anonstruct_start_230 {
   __s32 speed ;
   __u32 format ;
};
struct __anonstruct_raw_231 {
   __u32 data[16U] ;
};
union __anonunion____missing_field_name_228 {
   struct __anonstruct_stop_229 stop ;
   struct __anonstruct_start_230 start ;
   struct __anonstruct_raw_231 raw ;
};
struct v4l2_decoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_228 __annonCompField65 ;
};
struct v4l2_vbi_format {
   __u32 sampling_rate ;
   __u32 offset ;
   __u32 samples_per_line ;
   __u32 sample_format ;
   __s32 start[2U] ;
   __u32 count[2U] ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_format {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 io_size ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_cap {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 type ;
   __u32 reserved[3U] ;
};
struct v4l2_sliced_vbi_data {
   __u32 id ;
   __u32 field ;
   __u32 line ;
   __u32 reserved ;
   __u8 data[48U] ;
};
struct v4l2_plane_pix_format {
   __u32 sizeimage ;
   __u32 bytesperline ;
   __u16 reserved[6U] ;
};
struct v4l2_pix_format_mplane {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 colorspace ;
   struct v4l2_plane_pix_format plane_fmt[8U] ;
   __u8 num_planes ;
   __u8 flags ;
   __u8 ycbcr_enc ;
   __u8 quantization ;
   __u8 xfer_func ;
   __u8 reserved[7U] ;
};
struct v4l2_sdr_format {
   __u32 pixelformat ;
   __u32 buffersize ;
   __u8 reserved[24U] ;
};
union __anonunion_fmt_233 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   struct v4l2_sdr_format sdr ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_233 fmt ;
};
union __anonunion_parm_234 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_234 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion____missing_field_name_237 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion____missing_field_name_237 __annonCompField68 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
};
struct v4l2_dbg_chip_info {
   struct v4l2_dbg_match match ;
   char name[32U] ;
   __u32 flags ;
   __u32 reserved[32U] ;
};
struct v4l2_create_buffers {
   __u32 index ;
   __u32 count ;
   __u32 memory ;
   struct v4l2_format format ;
   __u32 reserved[8U] ;
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
struct input_device_id {
   kernel_ulong_t flags ;
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
   kernel_ulong_t evbit[1U] ;
   kernel_ulong_t keybit[12U] ;
   kernel_ulong_t relbit[1U] ;
   kernel_ulong_t absbit[1U] ;
   kernel_ulong_t mscbit[1U] ;
   kernel_ulong_t ledbit[1U] ;
   kernel_ulong_t sndbit[1U] ;
   kernel_ulong_t ffbit[2U] ;
   kernel_ulong_t swbit[1U] ;
   kernel_ulong_t driver_info ;
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
struct i2c_msg {
   __u16 addr ;
   __u16 flags ;
   __u16 len ;
   __u8 *buf ;
};
union i2c_smbus_data {
   __u8 byte ;
   __u16 word ;
   __u8 block[34U] ;
};
struct i2c_algorithm;
struct i2c_client;
enum i2c_slave_event;
enum i2c_slave_event;
struct i2c_client {
   unsigned short flags ;
   unsigned short addr ;
   char name[20U] ;
   struct i2c_adapter *adapter ;
   struct device dev ;
   int irq ;
   struct list_head detected ;
   int (*slave_cb)(struct i2c_client * , enum i2c_slave_event , u8 * ) ;
};
enum i2c_slave_event {
    I2C_SLAVE_READ_REQUESTED = 0,
    I2C_SLAVE_WRITE_REQUESTED = 1,
    I2C_SLAVE_READ_PROCESSED = 2,
    I2C_SLAVE_WRITE_RECEIVED = 3,
    I2C_SLAVE_STOP = 4
} ;
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
   int (*reg_slave)(struct i2c_client * ) ;
   int (*unreg_slave)(struct i2c_client * ) ;
};
struct i2c_bus_recovery_info {
   int (*recover_bus)(struct i2c_adapter * ) ;
   int (*get_scl)(struct i2c_adapter * ) ;
   void (*set_scl)(struct i2c_adapter * , int ) ;
   int (*get_sda)(struct i2c_adapter * ) ;
   void (*prepare_recovery)(struct i2c_adapter * ) ;
   void (*unprepare_recovery)(struct i2c_adapter * ) ;
   int scl_gpio ;
   int sda_gpio ;
};
struct i2c_adapter_quirks {
   u64 flags ;
   int max_num_msgs ;
   u16 max_write_len ;
   u16 max_read_len ;
   u16 max_comb_1st_msg_len ;
   u16 max_comb_2nd_msg_len ;
};
struct i2c_adapter {
   struct module *owner ;
   unsigned int class ;
   struct i2c_algorithm const *algo ;
   void *algo_data ;
   struct rt_mutex bus_lock ;
   int timeout ;
   int retries ;
   struct device dev ;
   int nr ;
   char name[48U] ;
   struct completion dev_released ;
   struct mutex userspace_clients_lock ;
   struct list_head userspace_clients ;
   struct i2c_bus_recovery_info *bus_recovery_info ;
   struct i2c_adapter_quirks const *quirks ;
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
struct proc_dir_entry;
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_253 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_252 {
   struct __anonstruct____missing_field_name_253 __annonCompField76 ;
};
struct lockref {
   union __anonunion____missing_field_name_252 __annonCompField77 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_255 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_254 {
   struct __anonstruct____missing_field_name_255 __annonCompField78 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_254 __annonCompField79 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_256 {
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
   union __anonunion_d_u_256 d_u ;
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
struct __anonstruct____missing_field_name_260 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_259 {
   struct __anonstruct____missing_field_name_260 __annonCompField80 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_259 __annonCompField81 ;
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
struct bdi_writeback;
struct export_operations;
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
struct __anonstruct_kprojid_t_264 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_264 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_265 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_265 __annonCompField83 ;
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
union __anonunion____missing_field_name_268 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_269 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_270 {
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
   union __anonunion____missing_field_name_268 __annonCompField84 ;
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
   union __anonunion____missing_field_name_269 __annonCompField85 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_270 __annonCompField86 ;
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
union __anonunion_f_u_271 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_271 f_u ;
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
struct __anonstruct_afs_273 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_272 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_273 afs ;
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
   union __anonunion_fl_u_272 fl_u ;
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
struct scatterlist;
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
struct v4l2_ctrl_handler;
struct v4l2_ctrl_helper;
struct v4l2_ctrl;
struct video_device;
struct v4l2_subdev;
union v4l2_ctrl_ptr {
   s32 *p_s32 ;
   s64 *p_s64 ;
   u8 *p_u8 ;
   u16 *p_u16 ;
   u32 *p_u32 ;
   char *p_char ;
   void *p ;
};
struct v4l2_ctrl_ops {
   int (*g_volatile_ctrl)(struct v4l2_ctrl * ) ;
   int (*try_ctrl)(struct v4l2_ctrl * ) ;
   int (*s_ctrl)(struct v4l2_ctrl * ) ;
};
struct v4l2_ctrl_type_ops {
   bool (*equal)(struct v4l2_ctrl const * , u32 , union v4l2_ctrl_ptr , union v4l2_ctrl_ptr ) ;
   void (*init)(struct v4l2_ctrl const * , u32 , union v4l2_ctrl_ptr ) ;
   void (*log)(struct v4l2_ctrl const * ) ;
   int (*validate)(struct v4l2_ctrl const * , u32 , union v4l2_ctrl_ptr ) ;
};
union __anonunion____missing_field_name_274 {
   u64 step ;
   u64 menu_skip_mask ;
};
union __anonunion____missing_field_name_275 {
   char const * const *qmenu ;
   s64 const *qmenu_int ;
};
struct __anonstruct_cur_276 {
   s32 val ;
};
struct v4l2_ctrl {
   struct list_head node ;
   struct list_head ev_subs ;
   struct v4l2_ctrl_handler *handler ;
   struct v4l2_ctrl **cluster ;
   unsigned int ncontrols ;
   unsigned char done : 1 ;
   unsigned char is_new : 1 ;
   unsigned char has_changed : 1 ;
   unsigned char is_private : 1 ;
   unsigned char is_auto : 1 ;
   unsigned char is_int : 1 ;
   unsigned char is_string : 1 ;
   unsigned char is_ptr : 1 ;
   unsigned char is_array : 1 ;
   unsigned char has_volatiles : 1 ;
   unsigned char call_notify : 1 ;
   unsigned char manual_mode_value ;
   struct v4l2_ctrl_ops const *ops ;
   struct v4l2_ctrl_type_ops const *type_ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s64 minimum ;
   s64 maximum ;
   s64 default_value ;
   u32 elems ;
   u32 elem_size ;
   u32 dims[4U] ;
   u32 nr_of_dims ;
   union __anonunion____missing_field_name_274 __annonCompField87 ;
   union __anonunion____missing_field_name_275 __annonCompField88 ;
   unsigned long flags ;
   void *priv ;
   s32 val ;
   struct __anonstruct_cur_276 cur ;
   union v4l2_ctrl_ptr p_new ;
   union v4l2_ctrl_ptr p_cur ;
};
struct v4l2_ctrl_ref {
   struct list_head node ;
   struct v4l2_ctrl_ref *next ;
   struct v4l2_ctrl *ctrl ;
   struct v4l2_ctrl_helper *helper ;
};
struct v4l2_ctrl_handler {
   struct mutex _lock ;
   struct mutex *lock ;
   struct list_head ctrls ;
   struct list_head ctrl_refs ;
   struct v4l2_ctrl_ref *cached ;
   struct v4l2_ctrl_ref **buckets ;
   void (*notify)(struct v4l2_ctrl * , void * ) ;
   void *notify_priv ;
   u16 nr_of_buckets ;
   int error ;
};
enum cx2341x_port {
    CX2341X_PORT_MEMORY = 0,
    CX2341X_PORT_STREAMING = 1,
    CX2341X_PORT_SERIAL = 2
} ;
struct cx2341x_handler_ops {
   int (*s_audio_sampling_freq)(struct cx2341x_handler * , u32 ) ;
   int (*s_audio_mode)(struct cx2341x_handler * , u32 ) ;
   int (*s_video_encoding)(struct cx2341x_handler * , u32 ) ;
   int (*s_stream_vbi_fmt)(struct cx2341x_handler * , u32 ) ;
};
struct __anonstruct____missing_field_name_277 {
   struct v4l2_ctrl *audio_sampling_freq ;
   struct v4l2_ctrl *audio_encoding ;
   struct v4l2_ctrl *audio_l2_bitrate ;
   struct v4l2_ctrl *audio_mode ;
   struct v4l2_ctrl *audio_mode_extension ;
   struct v4l2_ctrl *audio_emphasis ;
   struct v4l2_ctrl *audio_crc ;
   struct v4l2_ctrl *audio_ac3_bitrate ;
};
struct __anonstruct____missing_field_name_278 {
   struct v4l2_ctrl *video_b_frames ;
   struct v4l2_ctrl *video_gop_size ;
};
struct __anonstruct____missing_field_name_279 {
   struct v4l2_ctrl *stream_type ;
   struct v4l2_ctrl *video_encoding ;
   struct v4l2_ctrl *video_bitrate_mode ;
   struct v4l2_ctrl *video_bitrate ;
   struct v4l2_ctrl *video_bitrate_peak ;
};
struct __anonstruct____missing_field_name_280 {
   struct v4l2_ctrl *video_mute ;
   struct v4l2_ctrl *video_mute_yuv ;
};
struct __anonstruct____missing_field_name_281 {
   struct v4l2_ctrl *video_spatial_filter_mode ;
   struct v4l2_ctrl *video_temporal_filter_mode ;
   struct v4l2_ctrl *video_median_filter_type ;
};
struct __anonstruct____missing_field_name_282 {
   struct v4l2_ctrl *video_luma_spatial_filter_type ;
   struct v4l2_ctrl *video_chroma_spatial_filter_type ;
};
struct __anonstruct____missing_field_name_283 {
   struct v4l2_ctrl *video_spatial_filter ;
   struct v4l2_ctrl *video_temporal_filter ;
};
struct __anonstruct____missing_field_name_284 {
   struct v4l2_ctrl *video_luma_median_filter_top ;
   struct v4l2_ctrl *video_luma_median_filter_bottom ;
   struct v4l2_ctrl *video_chroma_median_filter_top ;
   struct v4l2_ctrl *video_chroma_median_filter_bottom ;
};
struct cx2341x_handler {
   u32 capabilities ;
   enum cx2341x_port port ;
   u16 width ;
   u16 height ;
   u16 is_50hz ;
   u32 audio_properties ;
   struct v4l2_ctrl_handler hdl ;
   void *priv ;
   int (*func)(void * , u32 , int , int , u32 * ) ;
   struct cx2341x_handler_ops const *ops ;
   struct v4l2_ctrl *stream_vbi_fmt ;
   struct __anonstruct____missing_field_name_277 __annonCompField89 ;
   struct __anonstruct____missing_field_name_278 __annonCompField90 ;
   struct __anonstruct____missing_field_name_279 __annonCompField91 ;
   struct __anonstruct____missing_field_name_280 __annonCompField92 ;
   struct __anonstruct____missing_field_name_281 __annonCompField93 ;
   struct __anonstruct____missing_field_name_282 __annonCompField94 ;
   struct __anonstruct____missing_field_name_283 __annonCompField95 ;
   struct __anonstruct____missing_field_name_284 __annonCompField96 ;
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
typedef struct poll_table_struct poll_table;
struct videobuf_mapping {
   unsigned int count ;
   struct videobuf_queue *q ;
};
enum videobuf_state {
    VIDEOBUF_NEEDS_INIT = 0,
    VIDEOBUF_PREPARED = 1,
    VIDEOBUF_QUEUED = 2,
    VIDEOBUF_ACTIVE = 3,
    VIDEOBUF_DONE = 4,
    VIDEOBUF_ERROR = 5,
    VIDEOBUF_IDLE = 6
} ;
struct videobuf_buffer {
   unsigned int i ;
   u32 magic ;
   unsigned int width ;
   unsigned int height ;
   unsigned int bytesperline ;
   unsigned long size ;
   enum v4l2_field field ;
   enum videobuf_state state ;
   struct list_head stream ;
   struct list_head queue ;
   wait_queue_head_t done ;
   unsigned int field_count ;
   struct timeval ts ;
   enum v4l2_memory memory ;
   size_t bsize ;
   size_t boff ;
   unsigned long baddr ;
   struct videobuf_mapping *map ;
   int privsize ;
   void *priv ;
};
struct videobuf_queue_ops {
   int (*buf_setup)(struct videobuf_queue * , unsigned int * , unsigned int * ) ;
   int (*buf_prepare)(struct videobuf_queue * , struct videobuf_buffer * , enum v4l2_field ) ;
   void (*buf_queue)(struct videobuf_queue * , struct videobuf_buffer * ) ;
   void (*buf_release)(struct videobuf_queue * , struct videobuf_buffer * ) ;
};
struct videobuf_qtype_ops {
   u32 magic ;
   struct videobuf_buffer *(*alloc_vb)(size_t ) ;
   void *(*vaddr)(struct videobuf_buffer * ) ;
   int (*iolock)(struct videobuf_queue * , struct videobuf_buffer * , struct v4l2_framebuffer * ) ;
   int (*sync)(struct videobuf_queue * , struct videobuf_buffer * ) ;
   int (*mmap_mapper)(struct videobuf_queue * , struct videobuf_buffer * , struct vm_area_struct * ) ;
};
struct videobuf_queue {
   struct mutex vb_lock ;
   struct mutex *ext_lock ;
   spinlock_t *irqlock ;
   struct device *dev ;
   wait_queue_head_t wait ;
   enum v4l2_buf_type type ;
   unsigned int msize ;
   enum v4l2_field field ;
   enum v4l2_field last ;
   struct videobuf_buffer *bufs[32U] ;
   struct videobuf_queue_ops const *ops ;
   struct videobuf_qtype_ops *int_ops ;
   unsigned char streaming : 1 ;
   unsigned char reading : 1 ;
   struct list_head stream ;
   unsigned int read_off ;
   struct videobuf_buffer *read_buf ;
   void *priv_data ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct media_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct media_devnode {
   struct media_file_operations const *fops ;
   struct device dev ;
   struct cdev cdev ;
   struct device *parent ;
   int minor ;
   unsigned long flags ;
   void (*release)(struct media_devnode * ) ;
};
struct media_pipeline {
};
struct media_pad;
struct media_link {
   struct media_pad *source ;
   struct media_pad *sink ;
   struct media_link *reverse ;
   unsigned long flags ;
};
struct media_entity;
struct media_pad {
   struct media_entity *entity ;
   u16 index ;
   unsigned long flags ;
};
struct media_entity_operations {
   int (*link_setup)(struct media_entity * , struct media_pad const * , struct media_pad const * ,
                     u32 ) ;
   int (*link_validate)(struct media_link * ) ;
};
struct media_device;
struct __anonstruct_dev_292 {
   u32 major ;
   u32 minor ;
};
union __anonunion_info_291 {
   struct __anonstruct_dev_292 dev ;
};
struct media_entity {
   struct list_head list ;
   struct media_device *parent ;
   u32 id ;
   char const *name ;
   u32 type ;
   u32 revision ;
   unsigned long flags ;
   u32 group_id ;
   u16 num_pads ;
   u16 num_links ;
   u16 num_backlinks ;
   u16 max_links ;
   struct media_pad *pads ;
   struct media_link *links ;
   struct media_entity_operations const *ops ;
   int stream_count ;
   int use_count ;
   struct media_pipeline *pipe ;
   union __anonunion_info_291 info ;
};
struct media_device {
   struct device *dev ;
   struct media_devnode devnode ;
   char model[32U] ;
   char serial[40U] ;
   char bus_info[32U] ;
   u32 hw_revision ;
   u32 driver_version ;
   u32 entity_id ;
   struct list_head entities ;
   spinlock_t lock ;
   struct mutex graph_mutex ;
   int (*link_notify)(struct media_link * , u32 , unsigned int ) ;
};
struct v4l2_mbus_framefmt {
   __u32 width ;
   __u32 height ;
   __u32 code ;
   __u32 field ;
   __u32 colorspace ;
   __u16 ycbcr_enc ;
   __u16 quantization ;
   __u16 xfer_func ;
   __u16 reserved[11U] ;
};
struct v4l2_subdev_format {
   __u32 which ;
   __u32 pad ;
   struct v4l2_mbus_framefmt format ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_mbus_code_enum {
   __u32 pad ;
   __u32 index ;
   __u32 code ;
   __u32 which ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_frame_size_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 which ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_frame_interval {
   __u32 pad ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 width ;
   __u32 height ;
   struct v4l2_fract interval ;
   __u32 which ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_selection {
   __u32 which ;
   __u32 pad ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[8U] ;
};
struct v4l2_device;
struct v4l2_async_notifier;
enum v4l2_async_match_type {
    V4L2_ASYNC_MATCH_CUSTOM = 0,
    V4L2_ASYNC_MATCH_DEVNAME = 1,
    V4L2_ASYNC_MATCH_I2C = 2,
    V4L2_ASYNC_MATCH_OF = 3
} ;
struct __anonstruct_of_295 {
   struct device_node const *node ;
};
struct __anonstruct_device_name_296 {
   char const *name ;
};
struct __anonstruct_i2c_297 {
   int adapter_id ;
   unsigned short address ;
};
struct __anonstruct_custom_298 {
   bool (*match)(struct device * , struct v4l2_async_subdev * ) ;
   void *priv ;
};
union __anonunion_match_294 {
   struct __anonstruct_of_295 of ;
   struct __anonstruct_device_name_296 device_name ;
   struct __anonstruct_i2c_297 i2c ;
   struct __anonstruct_custom_298 custom ;
};
struct v4l2_async_subdev {
   enum v4l2_async_match_type match_type ;
   union __anonunion_match_294 match ;
   struct list_head list ;
};
struct v4l2_async_notifier {
   unsigned int num_subdevs ;
   struct v4l2_async_subdev **subdevs ;
   struct v4l2_device *v4l2_dev ;
   struct list_head waiting ;
   struct list_head done ;
   struct list_head list ;
   int (*bound)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
   int (*complete)(struct v4l2_async_notifier * ) ;
   void (*unbind)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
};
struct v4l2_prio_state {
   atomic_t prios[4U] ;
};
struct v4l2_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl32)(struct file * , unsigned int , unsigned long ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct vb2_queue;
struct v4l2_ioctl_ops;
struct video_device {
   struct media_entity entity ;
   struct v4l2_file_operations const *fops ;
   struct device dev ;
   struct cdev *cdev ;
   struct v4l2_device *v4l2_dev ;
   struct device *dev_parent ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct vb2_queue *queue ;
   struct v4l2_prio_state *prio ;
   char name[32U] ;
   int vfl_type ;
   int vfl_dir ;
   int minor ;
   u16 num ;
   unsigned long flags ;
   int index ;
   spinlock_t fh_lock ;
   struct list_head fh_list ;
   int dev_debug ;
   v4l2_std_id tvnorms ;
   void (*release)(struct video_device * ) ;
   struct v4l2_ioctl_ops const *ioctl_ops ;
   unsigned long valid_ioctls[3U] ;
   unsigned long disable_locking[3U] ;
   struct mutex *lock ;
};
struct v4l2_subdev_ops;
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
struct v4l2_priv_tun_config {
   int tuner ;
   void *priv ;
};
struct v4l2_m2m_ctx;
struct v4l2_fh {
   struct list_head list ;
   struct video_device *vdev ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   enum v4l2_priority prio ;
   wait_queue_head_t wait ;
   struct list_head subscribed ;
   struct list_head available ;
   unsigned int navailable ;
   u32 sequence ;
   struct v4l2_m2m_ctx *m2m_ctx ;
};
enum v4l2_mbus_type {
    V4L2_MBUS_PARALLEL = 0,
    V4L2_MBUS_BT656 = 1,
    V4L2_MBUS_CSI2 = 2
} ;
struct v4l2_mbus_config {
   enum v4l2_mbus_type type ;
   unsigned int flags ;
};
struct v4l2_subdev_fh;
struct tuner_setup;
struct v4l2_mbus_frame_desc;
struct v4l2_decode_vbi_line {
   u32 is_second_field ;
   u8 *p ;
   u32 line ;
   u32 type ;
};
struct v4l2_subdev_io_pin_config {
   u32 flags ;
   u8 pin ;
   u8 function ;
   u8 value ;
   u8 strength ;
};
struct v4l2_subdev_core_ops {
   int (*log_status)(struct v4l2_subdev * ) ;
   int (*s_io_pin_config)(struct v4l2_subdev * , size_t , struct v4l2_subdev_io_pin_config * ) ;
   int (*init)(struct v4l2_subdev * , u32 ) ;
   int (*load_fw)(struct v4l2_subdev * ) ;
   int (*reset)(struct v4l2_subdev * , u32 ) ;
   int (*s_gpio)(struct v4l2_subdev * , u32 ) ;
   int (*queryctrl)(struct v4l2_subdev * , struct v4l2_queryctrl * ) ;
   int (*g_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*s_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*g_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*s_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*try_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*querymenu)(struct v4l2_subdev * , struct v4l2_querymenu * ) ;
   long (*ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
   long (*compat_ioctl32)(struct v4l2_subdev * , unsigned int , unsigned long ) ;
   int (*g_register)(struct v4l2_subdev * , struct v4l2_dbg_register * ) ;
   int (*s_register)(struct v4l2_subdev * , struct v4l2_dbg_register const * ) ;
   int (*s_power)(struct v4l2_subdev * , int ) ;
   int (*interrupt_service_routine)(struct v4l2_subdev * , u32 , bool * ) ;
   int (*subscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
   int (*unsubscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
};
struct v4l2_subdev_tuner_ops {
   int (*s_radio)(struct v4l2_subdev * ) ;
   int (*s_frequency)(struct v4l2_subdev * , struct v4l2_frequency const * ) ;
   int (*g_frequency)(struct v4l2_subdev * , struct v4l2_frequency * ) ;
   int (*enum_freq_bands)(struct v4l2_subdev * , struct v4l2_frequency_band * ) ;
   int (*g_tuner)(struct v4l2_subdev * , struct v4l2_tuner * ) ;
   int (*s_tuner)(struct v4l2_subdev * , struct v4l2_tuner const * ) ;
   int (*g_modulator)(struct v4l2_subdev * , struct v4l2_modulator * ) ;
   int (*s_modulator)(struct v4l2_subdev * , struct v4l2_modulator const * ) ;
   int (*s_type_addr)(struct v4l2_subdev * , struct tuner_setup * ) ;
   int (*s_config)(struct v4l2_subdev * , struct v4l2_priv_tun_config const * ) ;
};
struct v4l2_subdev_audio_ops {
   int (*s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_i2s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
};
struct v4l2_mbus_frame_desc_entry {
   u16 flags ;
   u32 pixelcode ;
   u32 length ;
};
struct v4l2_mbus_frame_desc {
   struct v4l2_mbus_frame_desc_entry entry[4U] ;
   unsigned short num_entries ;
};
struct v4l2_subdev_video_ops {
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_crystal_freq)(struct v4l2_subdev * , u32 , u32 ) ;
   int (*g_std)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*s_std)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*s_std_output)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*g_std_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*querystd)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_input_status)(struct v4l2_subdev * , u32 * ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
   int (*cropcap)(struct v4l2_subdev * , struct v4l2_cropcap * ) ;
   int (*g_crop)(struct v4l2_subdev * , struct v4l2_crop * ) ;
   int (*s_crop)(struct v4l2_subdev * , struct v4l2_crop const * ) ;
   int (*g_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*s_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*g_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*s_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*s_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*g_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*query_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*g_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config * ) ;
   int (*s_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config const * ) ;
   int (*s_rx_buffer)(struct v4l2_subdev * , void * , unsigned int * ) ;
};
struct v4l2_subdev_vbi_ops {
   int (*decode_vbi_line)(struct v4l2_subdev * , struct v4l2_decode_vbi_line * ) ;
   int (*s_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data const * ) ;
   int (*g_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data * ) ;
   int (*g_sliced_vbi_cap)(struct v4l2_subdev * , struct v4l2_sliced_vbi_cap * ) ;
   int (*s_raw_fmt)(struct v4l2_subdev * , struct v4l2_vbi_format * ) ;
   int (*g_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
   int (*s_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
};
struct v4l2_subdev_sensor_ops {
   int (*g_skip_top_lines)(struct v4l2_subdev * , u32 * ) ;
   int (*g_skip_frames)(struct v4l2_subdev * , u32 * ) ;
};
enum v4l2_subdev_ir_mode {
    V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = 0
} ;
struct v4l2_subdev_ir_parameters {
   unsigned int bytes_per_data_element ;
   enum v4l2_subdev_ir_mode mode ;
   bool enable ;
   bool interrupt_enable ;
   bool shutdown ;
   bool modulation ;
   u32 max_pulse_width ;
   unsigned int carrier_freq ;
   unsigned int duty_cycle ;
   bool invert_level ;
   bool invert_carrier_sense ;
   u32 noise_filter_min_width ;
   unsigned int carrier_range_lower ;
   unsigned int carrier_range_upper ;
   u32 resolution ;
};
struct v4l2_subdev_ir_ops {
   int (*rx_read)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*rx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*rx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_write)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*tx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
};
struct v4l2_subdev_pad_config {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_pad_ops {
   int (*enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * ,
                         struct v4l2_subdev_mbus_code_enum * ) ;
   int (*enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * ,
                          struct v4l2_subdev_frame_size_enum * ) ;
   int (*enum_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * ,
                              struct v4l2_subdev_frame_interval_enum * ) ;
   int (*get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * , struct v4l2_subdev_format * ) ;
   int (*set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * , struct v4l2_subdev_format * ) ;
   int (*get_selection)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * , struct v4l2_subdev_selection * ) ;
   int (*set_selection)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * , struct v4l2_subdev_selection * ) ;
   int (*get_edid)(struct v4l2_subdev * , struct v4l2_edid * ) ;
   int (*set_edid)(struct v4l2_subdev * , struct v4l2_edid * ) ;
   int (*dv_timings_cap)(struct v4l2_subdev * , struct v4l2_dv_timings_cap * ) ;
   int (*enum_dv_timings)(struct v4l2_subdev * , struct v4l2_enum_dv_timings * ) ;
   int (*link_validate)(struct v4l2_subdev * , struct media_link * , struct v4l2_subdev_format * ,
                        struct v4l2_subdev_format * ) ;
   int (*get_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
   int (*set_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
};
struct v4l2_subdev_ops {
   struct v4l2_subdev_core_ops const *core ;
   struct v4l2_subdev_tuner_ops const *tuner ;
   struct v4l2_subdev_audio_ops const *audio ;
   struct v4l2_subdev_video_ops const *video ;
   struct v4l2_subdev_vbi_ops const *vbi ;
   struct v4l2_subdev_ir_ops const *ir ;
   struct v4l2_subdev_sensor_ops const *sensor ;
   struct v4l2_subdev_pad_ops const *pad ;
};
struct v4l2_subdev_internal_ops {
   int (*registered)(struct v4l2_subdev * ) ;
   void (*unregistered)(struct v4l2_subdev * ) ;
   int (*open)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
   int (*close)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
};
struct regulator_bulk_data;
struct v4l2_subdev_platform_data {
   struct regulator_bulk_data *regulators ;
   int num_regulators ;
   void *host_priv ;
};
struct v4l2_subdev {
   struct media_entity entity ;
   struct list_head list ;
   struct module *owner ;
   bool owner_v4l2_dev ;
   u32 flags ;
   struct v4l2_device *v4l2_dev ;
   struct v4l2_subdev_ops const *ops ;
   struct v4l2_subdev_internal_ops const *internal_ops ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   char name[32U] ;
   u32 grp_id ;
   void *dev_priv ;
   void *host_priv ;
   struct video_device *devnode ;
   struct device *dev ;
   struct device_node *of_node ;
   struct list_head async_list ;
   struct v4l2_async_subdev *asd ;
   struct v4l2_async_notifier *notifier ;
   struct v4l2_subdev_platform_data *pdata ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct v4l2_subdev_pad_config *pad ;
};
struct v4l2_device {
   struct device *dev ;
   struct media_device *mdev ;
   struct list_head subdevs ;
   spinlock_t lock ;
   char name[36U] ;
   void (*notify)(struct v4l2_subdev * , unsigned int , void * ) ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct v4l2_prio_state prio ;
   struct kref ref ;
   void (*release)(struct v4l2_device * ) ;
};
struct input_id {
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
};
struct input_absinfo {
   __s32 value ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 fuzz ;
   __s32 flat ;
   __s32 resolution ;
};
struct input_keymap_entry {
   __u8 flags ;
   __u8 len ;
   __u16 index ;
   __u32 keycode ;
   __u8 scancode[32U] ;
};
struct ff_replay {
   __u16 length ;
   __u16 delay ;
};
struct ff_trigger {
   __u16 button ;
   __u16 interval ;
};
struct ff_envelope {
   __u16 attack_length ;
   __u16 attack_level ;
   __u16 fade_length ;
   __u16 fade_level ;
};
struct ff_constant_effect {
   __s16 level ;
   struct ff_envelope envelope ;
};
struct ff_ramp_effect {
   __s16 start_level ;
   __s16 end_level ;
   struct ff_envelope envelope ;
};
struct ff_condition_effect {
   __u16 right_saturation ;
   __u16 left_saturation ;
   __s16 right_coeff ;
   __s16 left_coeff ;
   __u16 deadband ;
   __s16 center ;
};
struct ff_periodic_effect {
   __u16 waveform ;
   __u16 period ;
   __s16 magnitude ;
   __s16 offset ;
   __u16 phase ;
   struct ff_envelope envelope ;
   __u32 custom_len ;
   __s16 *custom_data ;
};
struct ff_rumble_effect {
   __u16 strong_magnitude ;
   __u16 weak_magnitude ;
};
union __anonunion_u_302 {
   struct ff_constant_effect constant ;
   struct ff_ramp_effect ramp ;
   struct ff_periodic_effect periodic ;
   struct ff_condition_effect condition[2U] ;
   struct ff_rumble_effect rumble ;
};
struct ff_effect {
   __u16 type ;
   __s16 id ;
   __u16 direction ;
   struct ff_trigger trigger ;
   struct ff_replay replay ;
   union __anonunion_u_302 u ;
};
struct input_value {
   __u16 type ;
   __u16 code ;
   __s32 value ;
};
struct ff_device;
struct input_mt;
struct input_handle;
struct input_dev {
   char const *name ;
   char const *phys ;
   char const *uniq ;
   struct input_id id ;
   unsigned long propbit[1U] ;
   unsigned long evbit[1U] ;
   unsigned long keybit[12U] ;
   unsigned long relbit[1U] ;
   unsigned long absbit[1U] ;
   unsigned long mscbit[1U] ;
   unsigned long ledbit[1U] ;
   unsigned long sndbit[1U] ;
   unsigned long ffbit[2U] ;
   unsigned long swbit[1U] ;
   unsigned int hint_events_per_packet ;
   unsigned int keycodemax ;
   unsigned int keycodesize ;
   void *keycode ;
   int (*setkeycode)(struct input_dev * , struct input_keymap_entry const * , unsigned int * ) ;
   int (*getkeycode)(struct input_dev * , struct input_keymap_entry * ) ;
   struct ff_device *ff ;
   unsigned int repeat_key ;
   struct timer_list timer ;
   int rep[2U] ;
   struct input_mt *mt ;
   struct input_absinfo *absinfo ;
   unsigned long key[12U] ;
   unsigned long led[1U] ;
   unsigned long snd[1U] ;
   unsigned long sw[1U] ;
   int (*open)(struct input_dev * ) ;
   void (*close)(struct input_dev * ) ;
   int (*flush)(struct input_dev * , struct file * ) ;
   int (*event)(struct input_dev * , unsigned int , unsigned int , int ) ;
   struct input_handle *grab ;
   spinlock_t event_lock ;
   struct mutex mutex ;
   unsigned int users ;
   bool going_away ;
   struct device dev ;
   struct list_head h_list ;
   struct list_head node ;
   unsigned int num_vals ;
   unsigned int max_vals ;
   struct input_value *vals ;
   bool devres_managed ;
};
struct input_handler {
   void *private ;
   void (*event)(struct input_handle * , unsigned int , unsigned int , int ) ;
   void (*events)(struct input_handle * , struct input_value const * , unsigned int ) ;
   bool (*filter)(struct input_handle * , unsigned int , unsigned int , int ) ;
   bool (*match)(struct input_handler * , struct input_dev * ) ;
   int (*connect)(struct input_handler * , struct input_dev * , struct input_device_id const * ) ;
   void (*disconnect)(struct input_handle * ) ;
   void (*start)(struct input_handle * ) ;
   bool legacy_minors ;
   int minor ;
   char const *name ;
   struct input_device_id const *id_table ;
   struct list_head h_list ;
   struct list_head node ;
};
struct input_handle {
   void *private ;
   int open ;
   char const *name ;
   struct input_dev *dev ;
   struct input_handler *handler ;
   struct list_head d_node ;
   struct list_head h_node ;
};
struct ff_device {
   int (*upload)(struct input_dev * , struct ff_effect * , struct ff_effect * ) ;
   int (*erase)(struct input_dev * , int ) ;
   int (*playback)(struct input_dev * , int , int ) ;
   void (*set_gain)(struct input_dev * , u16 ) ;
   void (*set_autocenter)(struct input_dev * , u16 ) ;
   void (*destroy)(struct ff_device * ) ;
   void *private ;
   unsigned long ffbit[2U] ;
   struct mutex mutex ;
   int max_effects ;
   struct ff_effect *effects ;
   struct file *effect_owners[] ;
};
enum rc_type {
    RC_TYPE_UNKNOWN = 0,
    RC_TYPE_OTHER = 1,
    RC_TYPE_LIRC = 2,
    RC_TYPE_RC5 = 3,
    RC_TYPE_RC5X = 4,
    RC_TYPE_RC5_SZ = 5,
    RC_TYPE_JVC = 6,
    RC_TYPE_SONY12 = 7,
    RC_TYPE_SONY15 = 8,
    RC_TYPE_SONY20 = 9,
    RC_TYPE_NEC = 10,
    RC_TYPE_SANYO = 11,
    RC_TYPE_MCE_KBD = 12,
    RC_TYPE_RC6_0 = 13,
    RC_TYPE_RC6_6A_20 = 14,
    RC_TYPE_RC6_6A_24 = 15,
    RC_TYPE_RC6_6A_32 = 16,
    RC_TYPE_RC6_MCE = 17,
    RC_TYPE_SHARP = 18,
    RC_TYPE_XMP = 19
} ;
struct rc_map_table {
   u32 scancode ;
   u32 keycode ;
};
struct rc_map {
   struct rc_map_table *scan ;
   unsigned int size ;
   unsigned int len ;
   unsigned int alloc ;
   enum rc_type rc_type ;
   char const *name ;
   spinlock_t lock ;
};
enum rc_driver_type {
    RC_DRIVER_SCANCODE = 0,
    RC_DRIVER_IR_RAW = 1
} ;
struct rc_scancode_filter {
   u32 data ;
   u32 mask ;
};
struct ir_raw_event_ctrl;
struct rc_dev {
   struct device dev ;
   struct attribute_group const *sysfs_groups[5U] ;
   char const *input_name ;
   char const *input_phys ;
   struct input_id input_id ;
   char *driver_name ;
   char const *map_name ;
   struct rc_map rc_map ;
   struct mutex lock ;
   unsigned long devno ;
   struct ir_raw_event_ctrl *raw ;
   struct input_dev *input_dev ;
   enum rc_driver_type driver_type ;
   bool idle ;
   bool encode_wakeup ;
   u64 allowed_protocols ;
   u64 enabled_protocols ;
   u64 allowed_wakeup_protocols ;
   u64 enabled_wakeup_protocols ;
   struct rc_scancode_filter scancode_filter ;
   struct rc_scancode_filter scancode_wakeup_filter ;
   u32 scancode_mask ;
   u32 users ;
   void *priv ;
   spinlock_t keylock ;
   bool keypressed ;
   unsigned long keyup_jiffies ;
   struct timer_list timer_keyup ;
   u32 last_keycode ;
   enum rc_type last_protocol ;
   u32 last_scancode ;
   u8 last_toggle ;
   u32 timeout ;
   u32 min_timeout ;
   u32 max_timeout ;
   u32 rx_resolution ;
   u32 tx_resolution ;
   int (*change_protocol)(struct rc_dev * , u64 * ) ;
   int (*change_wakeup_protocol)(struct rc_dev * , u64 * ) ;
   int (*open)(struct rc_dev * ) ;
   void (*close)(struct rc_dev * ) ;
   int (*s_tx_mask)(struct rc_dev * , u32 ) ;
   int (*s_tx_carrier)(struct rc_dev * , u32 ) ;
   int (*s_tx_duty_cycle)(struct rc_dev * , u32 ) ;
   int (*s_rx_carrier_range)(struct rc_dev * , u32 , u32 ) ;
   int (*tx_ir)(struct rc_dev * , unsigned int * , unsigned int ) ;
   void (*s_idle)(struct rc_dev * , bool ) ;
   int (*s_learning_mode)(struct rc_dev * , int ) ;
   int (*s_carrier_report)(struct rc_dev * , int ) ;
   int (*s_filter)(struct rc_dev * , struct rc_scancode_filter * ) ;
   int (*s_wakeup_filter)(struct rc_dev * , struct rc_scancode_filter * ) ;
};
struct IR_i2c;
struct IR_i2c {
   char *ir_codes ;
   struct i2c_client *c ;
   struct rc_dev *rc ;
   unsigned char old ;
   u32 polling_interval ;
   struct delayed_work work ;
   char name[32U] ;
   char phys[32U] ;
   int (*get_key)(struct IR_i2c * , enum rc_type * , u32 * , u8 * ) ;
};
enum ir_kbd_get_key_fn {
    IR_KBD_GET_KEY_CUSTOM = 0,
    IR_KBD_GET_KEY_PIXELVIEW = 1,
    IR_KBD_GET_KEY_HAUP = 2,
    IR_KBD_GET_KEY_KNC1 = 3,
    IR_KBD_GET_KEY_FUSIONHDTV = 4,
    IR_KBD_GET_KEY_HAUP_XVR = 5,
    IR_KBD_GET_KEY_AVERMEDIA_CARDBUS = 6
} ;
struct IR_i2c_init_data {
   char *ir_codes ;
   char const *name ;
   u64 type ;
   u32 polling_interval ;
   int (*get_key)(struct IR_i2c * , enum rc_type * , u32 * , u8 * ) ;
   enum ir_kbd_get_key_fn internal_get_key_func ;
   struct rc_dev *rc_dev ;
};
struct dvb_device;
struct dvb_adapter {
   int num ;
   struct list_head list_head ;
   struct list_head device_list ;
   char const *name ;
   u8 proposed_mac[6U] ;
   void *priv ;
   struct device *device ;
   struct module *module ;
   int mfe_shared ;
   struct dvb_device *mfe_dvbdev ;
   struct mutex mfe_lock ;
};
struct dvb_device {
   struct list_head list_head ;
   struct file_operations const *fops ;
   struct dvb_adapter *adapter ;
   int type ;
   int minor ;
   u32 id ;
   int readers ;
   int writers ;
   int users ;
   wait_queue_head_t wait_queue ;
   int (*kernel_ioctl)(struct file * , unsigned int , void * ) ;
   void *priv ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_310 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_310 __annonCompField103 ;
   unsigned long nr_segs ;
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
struct __anonstruct_sync_serial_settings_312 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_312 sync_serial_settings;
struct __anonstruct_te1_settings_313 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_313 te1_settings;
struct __anonstruct_raw_hdlc_proto_314 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_314 raw_hdlc_proto;
struct __anonstruct_fr_proto_315 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_315 fr_proto;
struct __anonstruct_fr_proto_pvc_316 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_316 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_317 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_317 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_318 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_318 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_319 {
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
   union __anonunion_ifs_ifsu_319 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_320 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_321 {
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
   union __anonunion_ifr_ifrn_320 ifr_ifrn ;
   union __anonunion_ifr_ifru_321 ifr_ifru ;
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
typedef u64 netdev_features_t;
union __anonunion_in6_u_337 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_337 in6_u ;
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
union __anonunion____missing_field_name_342 {
   struct net_device *physoutdev ;
   char neigh_header[8U] ;
};
union __anonunion____missing_field_name_343 {
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
   union __anonunion____missing_field_name_342 __annonCompField107 ;
   union __anonunion____missing_field_name_343 __annonCompField108 ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct____missing_field_name_346 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_345 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_346 __annonCompField109 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_345 __annonCompField110 ;
};
union __anonunion____missing_field_name_349 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_348 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_349 __annonCompField111 ;
};
union __anonunion____missing_field_name_347 {
   struct __anonstruct____missing_field_name_348 __annonCompField112 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_351 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_350 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_351 __annonCompField114 ;
};
union __anonunion____missing_field_name_352 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_353 {
   __u32 mark ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_354 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_347 __annonCompField113 ;
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
   union __anonunion____missing_field_name_350 __annonCompField115 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_352 __annonCompField116 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_353 __annonCompField117 ;
   union __anonunion____missing_field_name_354 __annonCompField118 ;
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
struct __anonstruct_possible_net_t_363 {
   struct net *net ;
};
typedef struct __anonstruct_possible_net_t_363 possible_net_t;
enum ldv_30379 {
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
typedef enum ldv_30379 phy_interface_t;
enum ldv_30433 {
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
   enum ldv_30433 state ;
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
struct wireless_dev;
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
struct __anonstruct_adj_list_372 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_373 {
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
union __anonunion____missing_field_name_374 {
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
   struct __anonstruct_adj_list_372 adj_list ;
   struct __anonstruct_all_adj_list_373 all_adj_list ;
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
   union __anonunion____missing_field_name_374 __annonCompField121 ;
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
struct ipv4_devconf {
   void *sysctl ;
   int data[29U] ;
   unsigned long state[1U] ;
};
struct in_ifaddr;
struct ip_mc_list;
struct in_device {
   struct net_device *dev ;
   atomic_t refcnt ;
   int dead ;
   struct in_ifaddr *ifa_list ;
   struct ip_mc_list *mc_list ;
   struct ip_mc_list **mc_hash ;
   int mc_count ;
   spinlock_t mc_tomb_lock ;
   struct ip_mc_list *mc_tomb ;
   unsigned long mr_v1_seen ;
   unsigned long mr_v2_seen ;
   unsigned long mr_maxdelay ;
   unsigned char mr_qrv ;
   unsigned char mr_gq_running ;
   unsigned char mr_ifc_count ;
   struct timer_list mr_gq_timer ;
   struct timer_list mr_ifc_timer ;
   struct neigh_parms *arp_parms ;
   struct ipv4_devconf cnf ;
   struct callback_head callback_head ;
};
struct in_ifaddr {
   struct hlist_node hash ;
   struct in_ifaddr *ifa_next ;
   struct in_device *ifa_dev ;
   struct callback_head callback_head ;
   __be32 ifa_local ;
   __be32 ifa_address ;
   __be32 ifa_mask ;
   __be32 ifa_broadcast ;
   unsigned char ifa_scope ;
   unsigned char ifa_prefixlen ;
   __u32 ifa_flags ;
   char ifa_label[16U] ;
   __u32 ifa_valid_lft ;
   __u32 ifa_preferred_lft ;
   unsigned long ifa_cstamp ;
   unsigned long ifa_tstamp ;
};
struct videobuf_dvb_frontends {
   struct list_head felist ;
   struct mutex lock ;
   struct dvb_adapter adapter ;
   int active_fe_id ;
   int gate ;
};
struct INTERFACE_INFO {
   u8 interrupt_index ;
   u8 ts1_index ;
   u8 ts2_index ;
   u8 audio_index ;
   u8 video_index ;
   u8 vanc_index ;
   u8 hanc_index ;
   u8 ir_index ;
};
struct CONFIG_INFO {
   u8 config_index ;
   struct INTERFACE_INFO interface_info ;
};
struct pcb_config {
   u8 index ;
   u8 type ;
   u8 speed ;
   u8 mode ;
   u32 ts1_source ;
   u32 ts2_source ;
   u32 analog_source ;
   u8 digital_index ;
   u8 analog_index ;
   u8 dif_index ;
   u8 external_index ;
   u8 config_num ;
   struct CONFIG_INFO hs_config_info[3U] ;
   struct CONFIG_INFO fs_config_info[3U] ;
};
struct cx231xx;
enum AV_MODE {
    POLARIS_AVMODE_DEFAULT = 0,
    POLARIS_AVMODE_DIGITAL = 16,
    POLARIS_AVMODE_ANALOGT_TV = 32,
    POLARIS_AVMODE_ENXTERNAL_AV = 48
} ;
enum cx231xx_mode {
    CX231XX_SUSPEND = 0,
    CX231XX_ANALOG_MODE = 1,
    CX231XX_DIGITAL_MODE = 2
} ;
enum cx231xx_std_mode {
    CX231XX_TV_AIR = 0,
    CX231XX_TV_CABLE = 1
} ;
struct cx231xx_buffer;
struct cx231xx_isoc_ctl {
   int max_pkt_size ;
   int num_bufs ;
   struct urb **urb ;
   char **transfer_buffer ;
   u8 cmd ;
   int pos ;
   int size ;
   int pktsize ;
   int field ;
   u32 tmp_buf ;
   int tmp_buf_len ;
   struct cx231xx_buffer *buf ;
   int nfields ;
   int (*isoc_copy)(struct cx231xx * , struct urb * ) ;
};
struct cx231xx_bulk_ctl {
   int max_pkt_size ;
   int num_bufs ;
   struct urb **urb ;
   char **transfer_buffer ;
   u8 cmd ;
   int pos ;
   int size ;
   int pktsize ;
   int field ;
   u32 tmp_buf ;
   int tmp_buf_len ;
   struct cx231xx_buffer *buf ;
   int nfields ;
   int (*bulk_copy)(struct cx231xx * , struct urb * ) ;
};
struct cx231xx_fmt {
   char *name ;
   u32 fourcc ;
   int depth ;
   int reg ;
};
struct cx231xx_buffer {
   struct videobuf_buffer vb ;
   struct list_head frame ;
   int top_field ;
   int receiving ;
};
enum ps_package_head {
    CX231XX_NEED_ADD_PS_PACKAGE_HEAD = 0,
    CX231XX_NONEED_PS_PACKAGE_HEAD = 1
} ;
struct cx231xx_dmaqueue {
   struct list_head active ;
   struct list_head queued ;
   wait_queue_head_t wq ;
   int pos ;
   u8 is_partial_line ;
   u8 partial_buf[8U] ;
   u8 last_sav ;
   int current_field ;
   u32 bytes_left_in_line ;
   u32 lines_completed ;
   u8 field1_done ;
   u32 lines_per_field ;
   u8 *p_left_data ;
   u32 left_data_count ;
   u8 mpeg_buffer_done ;
   u32 mpeg_buffer_completed ;
   enum ps_package_head add_ps_package_head ;
   char ps_head[10U] ;
};
enum cx231xx_itype {
    CX231XX_VMUX_COMPOSITE1 = 1,
    CX231XX_VMUX_SVIDEO = 2,
    CX231XX_VMUX_TELEVISION = 3,
    CX231XX_VMUX_CABLE = 4,
    CX231XX_RADIO = 5,
    CX231XX_VMUX_DVB = 6,
    CX231XX_VMUX_DEBUG = 7
} ;
enum cx231xx_amux {
    CX231XX_AMUX_VIDEO = 0,
    CX231XX_AMUX_LINE_IN = 1
} ;
struct cx231xx_reg_seq {
   unsigned char bit ;
   unsigned char val ;
   int sleep ;
};
struct cx231xx_input {
   enum cx231xx_itype type ;
   unsigned int vmux ;
   enum cx231xx_amux amux ;
   struct cx231xx_reg_seq *gpio ;
};
enum cx231xx_decoder {
    CX231XX_NODECODER = 0,
    CX231XX_AVDECODER = 1
} ;
struct cx231xx_board {
   char *name ;
   int vchannels ;
   int tuner_type ;
   int tuner_addr ;
   v4l2_std_id norm ;
   int demod_addr ;
   u8 demod_xfer_mode ;
   struct cx231xx_reg_seq *dvb_gpio ;
   struct cx231xx_reg_seq *suspend_gpio ;
   struct cx231xx_reg_seq *tuner_gpio ;
   s8 tuner_sif_gpio ;
   s8 tuner_scl_gpio ;
   s8 tuner_sda_gpio ;
   u32 ctl_pin_status_mask ;
   u8 agc_analog_digital_select_gpio ;
   u32 gpio_pin_status_mask ;
   u8 tuner_i2c_master ;
   u8 demod_i2c_master ;
   u8 ir_i2c_master ;
   char *rc_map_name ;
   unsigned char max_range_640_480 : 1 ;
   unsigned char has_dvb : 1 ;
   unsigned char has_417 : 1 ;
   unsigned char valid : 1 ;
   unsigned char no_alt_vanc : 1 ;
   unsigned char external_av : 1 ;
   unsigned char xclk ;
   unsigned char i2c_speed ;
   enum cx231xx_decoder decoder ;
   int output_mode ;
   struct cx231xx_input input[4U] ;
   struct cx231xx_input radio ;
   struct rc_map *ir_codes ;
};
enum cx231xx_dev_state {
    DEV_INITIALIZED = 1,
    DEV_DISCONNECTED = 2
} ;
enum AFE_MODE {
    AFE_MODE_LOW_IF = 0,
    AFE_MODE_BASEBAND = 1,
    AFE_MODE_EU_HI_IF = 2,
    AFE_MODE_US_HI_IF = 3,
    AFE_MODE_JAPAN_HI_IF = 4
} ;
struct snd_pcm_substream;
struct snd_card;
struct cx231xx_audio {
   char name[50U] ;
   char *transfer_buffer[5U] ;
   struct urb *urb[5U] ;
   struct usb_device *udev ;
   unsigned int capture_transfer_done ;
   struct snd_pcm_substream *capture_pcm_substream ;
   unsigned int hwptr_done_capture ;
   struct snd_card *sndcard ;
   int users ;
   int shutdown ;
   spinlock_t slock ;
   int alt ;
   int max_pkt_size ;
   int num_alt ;
   unsigned int *alt_max_pkt_size ;
   u16 end_point_addr ;
};
struct cx231xx_fh {
   struct v4l2_fh fh ;
   struct cx231xx *dev ;
   unsigned char stream_on : 1 ;
   enum v4l2_buf_type type ;
   struct videobuf_queue vb_vidq ;
   struct videobuf_queue vidq ;
   struct videobuf_queue vbiq ;
   atomic_t v4l_reading ;
};
struct cx231xx_i2c {
   struct cx231xx *dev ;
   int nr ;
   struct i2c_adapter i2c_adap ;
   u32 i2c_rc ;
   u8 i2c_period ;
   u8 i2c_nostop ;
   u8 i2c_reserve ;
};
struct cx231xx_i2c_xfer_data {
   u8 dev_addr ;
   u8 direction ;
   u8 saddr_len ;
   u16 saddr_dat ;
   u8 buf_size ;
   u8 *p_buffer ;
};
struct cx231xx_tvnorm {
   char *name ;
   v4l2_std_id id ;
   u32 cxiformat ;
   u32 cxoformat ;
};
struct cx231xx_video_mode {
   struct cx231xx_dmaqueue vidq ;
   struct cx231xx_isoc_ctl isoc_ctl ;
   struct cx231xx_bulk_ctl bulk_ctl ;
   spinlock_t slock ;
   int alt ;
   int max_pkt_size ;
   int num_alt ;
   unsigned int *alt_max_pkt_size ;
   u16 end_point_addr ;
};
struct cx231xx_tsport {
   struct cx231xx *dev ;
   int nr ;
   int sram_chno ;
   struct videobuf_dvb_frontends frontends ;
   u32 ts_packet_size ;
   u32 ts_packet_count ;
   int width ;
   int height ;
   spinlock_t slock ;
   u32 reg_gpcnt ;
   u32 reg_gpcnt_ctl ;
   u32 reg_dma_ctl ;
   u32 reg_lngth ;
   u32 reg_hw_sop_ctrl ;
   u32 reg_gen_ctrl ;
   u32 reg_bd_pkt_status ;
   u32 reg_sop_status ;
   u32 reg_fifo_ovfl_stat ;
   u32 reg_vld_misc ;
   u32 reg_ts_clk_en ;
   u32 reg_ts_int_msk ;
   u32 reg_ts_int_stat ;
   u32 reg_src_sel ;
   int pci_irqmask ;
   u32 dma_ctl_val ;
   u32 ts_int_msk_val ;
   u32 gen_ctrl_val ;
   u32 ts_clk_en_val ;
   u32 src_sel_val ;
   u32 vld_misc_val ;
   u32 hw_sop_ctrl_val ;
   u32 num_frontends ;
   void *port_priv ;
};
struct cx231xx_dvb;
struct cx231xx {
   char name[30U] ;
   int model ;
   int devno ;
   struct device *dev ;
   struct cx231xx_board board ;
   struct IR_i2c_init_data init_data ;
   struct i2c_client *ir_i2c_client ;
   unsigned char stream_on : 1 ;
   unsigned char vbi_stream_on : 1 ;
   unsigned char has_audio_class : 1 ;
   unsigned char has_alsa_audio : 1 ;
   unsigned char i2c_scan_running : 1 ;
   struct cx231xx_fmt *format ;
   struct v4l2_device v4l2_dev ;
   struct v4l2_subdev *sd_cx25840 ;
   struct v4l2_subdev *sd_tuner ;
   struct v4l2_ctrl_handler ctrl_handler ;
   struct v4l2_ctrl_handler radio_ctrl_handler ;
   struct cx2341x_handler mpeg_ctrl_handler ;
   struct work_struct wq_trigger ;
   atomic_t stream_started ;
   struct list_head devlist ;
   int tuner_type ;
   int tuner_addr ;
   struct cx231xx_i2c i2c_bus[3U] ;
   struct i2c_adapter *i2c_mux_adap[2U] ;
   unsigned char xc_fw_load_done : 1 ;
   unsigned char port_3_switch_enabled : 1 ;
   struct mutex gpio_i2c_lock ;
   struct mutex i2c_lock ;
   int users ;
   struct video_device vdev ;
   v4l2_std_id norm ;
   int ctl_freq ;
   unsigned int ctl_ainput ;
   int width ;
   int height ;
   int interlaced ;
   struct cx231xx_audio adev ;
   enum cx231xx_dev_state state ;
   struct work_struct request_module_wk ;
   struct mutex lock ;
   struct mutex ctrl_urb_lock ;
   struct list_head inqueue ;
   struct list_head outqueue ;
   wait_queue_head_t open ;
   wait_queue_head_t wait_frame ;
   wait_queue_head_t wait_stream ;
   struct video_device vbi_dev ;
   struct video_device radio_dev ;
   struct media_device *media_dev ;
   struct media_pad video_pad ;
   struct media_pad vbi_pad ;
   unsigned char eedata[256U] ;
   struct cx231xx_video_mode video_mode ;
   struct cx231xx_video_mode vbi_mode ;
   struct cx231xx_video_mode sliced_cc_mode ;
   struct cx231xx_video_mode ts1_mode ;
   atomic_t devlist_count ;
   struct usb_device *udev ;
   char urb_buf[80U] ;
   int (*cx231xx_read_ctrl_reg)(struct cx231xx * , u8 , u16 , char * , int ) ;
   int (*cx231xx_write_ctrl_reg)(struct cx231xx * , u8 , u16 , char * , int ) ;
   int (*cx231xx_send_usb_command)(struct cx231xx_i2c * , struct cx231xx_i2c_xfer_data * ) ;
   int (*cx231xx_gpio_i2c_read)(struct cx231xx * , u8 , u8 * , u8 ) ;
   int (*cx231xx_gpio_i2c_write)(struct cx231xx * , u8 , u8 * , u8 ) ;
   int (*cx231xx_set_analog_freq)(struct cx231xx * , u32 ) ;
   int (*cx231xx_reset_analog_tuner)(struct cx231xx * ) ;
   enum cx231xx_mode mode ;
   struct cx231xx_dvb *dvb ;
   struct pcb_config current_pcb_config ;
   u8 current_scenario_idx ;
   u8 interface_count ;
   u8 max_iad_interface_count ;
   u32 gpio_dir ;
   u32 gpio_val ;
   int power_mode ;
   enum AFE_MODE afe_mode ;
   u32 afe_ref_count ;
   u32 video_input ;
   u32 active_mode ;
   u8 vbi_or_sliced_cc_mode ;
   enum cx231xx_std_mode std_mode ;
   u8 mode_tv ;
   u8 USE_ISO ;
   struct cx231xx_tvnorm encodernorm ;
   struct cx231xx_tsport ts1 ;
   struct cx231xx_tsport ts2 ;
   struct video_device v4l_device ;
   atomic_t v4l_reader_count ;
   u32 freq ;
   unsigned int input ;
   u32 cx23417_mailbox ;
   u32 *lmmio ;
   u8 *bmmio ;
};
struct v4l2_ioctl_ops {
   int (*vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
   int (*vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_overlay)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_sdr_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sdr_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sdr_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sdr_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
   int (*vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_expbuf)(struct file * , void * , struct v4l2_exportbuffer * ) ;
   int (*vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_create_bufs)(struct file * , void * , struct v4l2_create_buffers * ) ;
   int (*vidioc_prepare_buf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_overlay)(struct file * , void * , unsigned int ) ;
   int (*vidioc_g_fbuf)(struct file * , void * , struct v4l2_framebuffer * ) ;
   int (*vidioc_s_fbuf)(struct file * , void * , struct v4l2_framebuffer const * ) ;
   int (*vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_g_std)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_s_std)(struct file * , void * , v4l2_std_id ) ;
   int (*vidioc_querystd)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
   int (*vidioc_g_input)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_input)(struct file * , void * , unsigned int ) ;
   int (*vidioc_enum_output)(struct file * , void * , struct v4l2_output * ) ;
   int (*vidioc_g_output)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_output)(struct file * , void * , unsigned int ) ;
   int (*vidioc_queryctrl)(struct file * , void * , struct v4l2_queryctrl * ) ;
   int (*vidioc_query_ext_ctrl)(struct file * , void * , struct v4l2_query_ext_ctrl * ) ;
   int (*vidioc_g_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_s_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_g_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_s_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_try_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_querymenu)(struct file * , void * , struct v4l2_querymenu * ) ;
   int (*vidioc_enumaudio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_g_audio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_s_audio)(struct file * , void * , struct v4l2_audio const * ) ;
   int (*vidioc_enumaudout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_g_audout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_s_audout)(struct file * , void * , struct v4l2_audioout const * ) ;
   int (*vidioc_g_modulator)(struct file * , void * , struct v4l2_modulator * ) ;
   int (*vidioc_s_modulator)(struct file * , void * , struct v4l2_modulator const * ) ;
   int (*vidioc_cropcap)(struct file * , void * , struct v4l2_cropcap * ) ;
   int (*vidioc_g_crop)(struct file * , void * , struct v4l2_crop * ) ;
   int (*vidioc_s_crop)(struct file * , void * , struct v4l2_crop const * ) ;
   int (*vidioc_g_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_s_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_g_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression * ) ;
   int (*vidioc_s_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression const * ) ;
   int (*vidioc_g_enc_index)(struct file * , void * , struct v4l2_enc_idx * ) ;
   int (*vidioc_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_try_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_try_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_g_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_s_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
   int (*vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner const * ) ;
   int (*vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
   int (*vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency const * ) ;
   int (*vidioc_enum_freq_bands)(struct file * , void * , struct v4l2_frequency_band * ) ;
   int (*vidioc_g_sliced_vbi_cap)(struct file * , void * , struct v4l2_sliced_vbi_cap * ) ;
   int (*vidioc_log_status)(struct file * , void * ) ;
   int (*vidioc_s_hw_freq_seek)(struct file * , void * , struct v4l2_hw_freq_seek const * ) ;
   int (*vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
   int (*vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register const * ) ;
   int (*vidioc_g_chip_info)(struct file * , void * , struct v4l2_dbg_chip_info * ) ;
   int (*vidioc_enum_framesizes)(struct file * , void * , struct v4l2_frmsizeenum * ) ;
   int (*vidioc_enum_frameintervals)(struct file * , void * , struct v4l2_frmivalenum * ) ;
   int (*vidioc_s_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_g_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_query_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_enum_dv_timings)(struct file * , void * , struct v4l2_enum_dv_timings * ) ;
   int (*vidioc_dv_timings_cap)(struct file * , void * , struct v4l2_dv_timings_cap * ) ;
   int (*vidioc_g_edid)(struct file * , void * , struct v4l2_edid * ) ;
   int (*vidioc_s_edid)(struct file * , void * , struct v4l2_edid * ) ;
   int (*vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   int (*vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   long (*vidioc_default)(struct file * , void * , bool , unsigned int , void * ) ;
};
struct tuner_setup {
   unsigned short addr ;
   unsigned int type ;
   unsigned int mode_mask ;
   void *config ;
   int (*tuner_callback)(void * , int , int , int ) ;
};
typedef bool ldv_func_ret_type;
typedef bool ldv_func_ret_type___0;
typedef bool ldv_func_ret_type___1;
typedef bool ldv_func_ret_type___2;
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
enum hrtimer_restart;
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
enum i2c_slave_event;
enum i2c_slave_event;
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
struct tveeprom {
   u32 has_radio ;
   u32 has_ir ;
   u32 has_MAC_address ;
   u32 tuner_type ;
   u32 tuner_formats ;
   u32 tuner_hauppauge_model ;
   u32 tuner2_type ;
   u32 tuner2_formats ;
   u32 tuner2_hauppauge_model ;
   u32 digitizer ;
   u32 digitizer_formats ;
   u32 audio_processor ;
   u32 decoder_processor ;
   u32 model ;
   u32 revision ;
   u32 serial_number ;
   char rev_str[5U] ;
   u8 MAC_address[6U] ;
};
struct eeprom {
   struct tveeprom tvee ;
   u8 eeprom[256U] ;
   struct i2c_client client ;
};
typedef bool ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
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
enum i2c_slave_event;
enum i2c_slave_event;
struct VENDOR_REQUEST_IN {
   u8 bRequest ;
   u16 wValue ;
   u16 wIndex ;
   u16 wLength ;
   u8 direction ;
   u8 bData ;
   u8 *pBuff ;
};
struct cx231xx_ops {
   struct list_head next ;
   char *name ;
   int id ;
   int (*init)(struct cx231xx * ) ;
   int (*fini)(struct cx231xx * ) ;
};
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
enum AUDIO_INPUT {
    AUDIO_INPUT_MUTE = 0,
    AUDIO_INPUT_LINE = 1,
    AUDIO_INPUT_TUNER_TV = 2,
    AUDIO_INPUT_SPDIF = 3,
    AUDIO_INPUT_TUNER_FM = 4
} ;
struct dif_settings {
   u32 if_freq ;
   u32 register_address ;
   u32 value ;
};
struct va_list;
typedef __builtin_va_list __gnuc_va_list;
typedef __gnuc_va_list va_list;
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
enum hrtimer_restart;
struct i2c_board_info;
enum i2c_slave_event;
enum i2c_slave_event;
struct i2c_board_info {
   char type[20U] ;
   unsigned short flags ;
   unsigned short addr ;
   void *platform_data ;
   struct dev_archdata *archdata ;
   struct device_node *of_node ;
   struct fwnode_handle *fwnode ;
   int irq ;
};
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
extern int printk(char const * , ...) ;
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void list_del(struct list_head * ) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void __bad_percpu_size(void) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern char *strcpy(char * , char const * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
}
}
extern int __preempt_count ;
__inline static int preempt_count(void)
{
  int pfo_ret__ ;
  {
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6002;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6002;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6002;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6002;
  default:
  __bad_percpu_size();
  }
  ldv_6002: ;
  return (pfo_ret__ & 2147483647);
}
}
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  return;
}
}
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern int mutex_lock_interruptible_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
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
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
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
struct v4l2_event_subscription const *video_ioctl_ops_group0 ;
struct videobuf_queue *cx231xx_video_qops_group1 ;
int ldv_state_variable_13 ;
int ldv_state_variable_12 ;
struct file *radio_ioctl_ops_group2 ;
int ldv_state_variable_14 ;
struct file *cx231xx_v4l_fops_group0 ;
struct v4l2_fh *video_ioctl_ops_group1 ;
int ldv_state_variable_9 ;
int ref_cnt ;
struct file *radio_fops_group0 ;
int ldv_state_variable_10 ;
struct file *video_ioctl_ops_group2 ;
struct v4l2_format *video_ioctl_ops_group4 ;
struct v4l2_event_subscription const *radio_ioctl_ops_group0 ;
int ldv_state_variable_11 ;
int LDV_IN_INTERRUPT = 1;
struct v4l2_fh *radio_ioctl_ops_group1 ;
struct videobuf_buffer *cx231xx_video_qops_group2 ;
struct v4l2_buffer *video_ioctl_ops_group3 ;
void call_and_disable_all_1(int state ) ;
void ldv_videobuf_queue_ops_14(void) ;
void activate_work_1(struct work_struct *work , int state ) ;
void ldv_initialize_v4l2_file_operations_13(void) ;
void ldv_initialize_v4l2_file_operations_10(void) ;
void ldv_initialize_v4l2_ioctl_ops_12(void) ;
void ldv_initialize_v4l2_ioctl_ops_9(void) ;
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
__inline static int usb_make_path(struct usb_device *dev , char *buf , size_t size )
{
  int actual ;
  {
  actual = snprintf(buf, size, "usb-%s-%s", (dev->bus)->bus_name, (char *)(& dev->devpath));
  return ((int )size > actual ? actual : -1);
}
}
extern int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler * , unsigned int ,
                                        struct lock_class_key * , char const * ) ;
extern void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler * ) ;
extern int v4l2_ctrl_add_handler(struct v4l2_ctrl_handler * , struct v4l2_ctrl_handler * ,
                                 bool (*)(struct v4l2_ctrl const * ) ) ;
extern bool v4l2_ctrl_radio_filter(struct v4l2_ctrl const * ) ;
extern int v4l2_ctrl_subscribe_event(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
extern unsigned int v4l2_ctrl_poll(struct file * , struct poll_table_struct * ) ;
__inline static void poll_wait(struct file *filp , wait_queue_head_t *wait_address ,
                               poll_table *p )
{
  {
  if (((unsigned long )p != (unsigned long )((poll_table *)0) && (unsigned long )p->_qproc != (unsigned long )((void (*)(struct file * ,
                                                                                                                         wait_queue_head_t * ,
                                                                                                                         struct poll_table_struct * ))0)) && (unsigned long )wait_address != (unsigned long )((wait_queue_head_t *)0)) {
    (*(p->_qproc))(filp, wait_address, p);
  } else {
  }
  return;
}
}
__inline static unsigned long poll_requested_events(poll_table const *p )
{
  {
  return ((unsigned long )p != (unsigned long )((poll_table const *)0) ? (unsigned long )p->_key : 0xffffffffffffffffUL);
}
}
extern int videobuf_iolock(struct videobuf_queue * , struct videobuf_buffer * , struct v4l2_framebuffer * ) ;
extern int videobuf_queue_is_busy(struct videobuf_queue * ) ;
extern int videobuf_reqbufs(struct videobuf_queue * , struct v4l2_requestbuffers * ) ;
extern int videobuf_querybuf(struct videobuf_queue * , struct v4l2_buffer * ) ;
extern int videobuf_qbuf(struct videobuf_queue * , struct v4l2_buffer * ) ;
extern int videobuf_dqbuf(struct videobuf_queue * , struct v4l2_buffer * , int ) ;
extern int videobuf_streamon(struct videobuf_queue * ) ;
extern int videobuf_streamoff(struct videobuf_queue * ) ;
extern void videobuf_stop(struct videobuf_queue * ) ;
extern ssize_t videobuf_read_stream(struct videobuf_queue * , char * , size_t , loff_t * ,
                                    int , int ) ;
extern unsigned int videobuf_poll_stream(struct file * , struct videobuf_queue * ,
                                         poll_table * ) ;
extern int videobuf_mmap_free(struct videobuf_queue * ) ;
extern int videobuf_mmap_mapper(struct videobuf_queue * , struct vm_area_struct * ) ;
extern void videobuf_queue_vmalloc_init(struct videobuf_queue * , struct videobuf_queue_ops const * ,
                                        struct device * , spinlock_t * , enum v4l2_buf_type ,
                                        enum v4l2_field , unsigned int , void * ,
                                        struct mutex * ) ;
extern void *videobuf_to_vmalloc(struct videobuf_buffer * ) ;
extern void videobuf_vmalloc_free(struct videobuf_buffer * ) ;
extern int media_entity_init(struct media_entity * , u16 , struct media_pad * , u16 ) ;
extern int media_entity_setup_link(struct media_link * , u32 ) ;
extern int __video_register_device(struct video_device * , int , int , int , struct module * ) ;
__inline static int video_register_device(struct video_device *vdev , int type , int nr )
{
  int tmp ;
  {
  tmp = __video_register_device(vdev, type, nr, 1, (vdev->fops)->owner);
  return (tmp);
}
}
extern void video_unregister_device(struct video_device * ) ;
extern void video_device_release_empty(struct video_device * ) ;
__inline static void v4l2_disable_ioctl(struct video_device *vdev , unsigned int cmd )
{
  {
  if ((cmd & 255U) <= 191U) {
    set_bit((long )cmd & 255L, (unsigned long volatile *)(& vdev->valid_ioctls));
  } else {
  }
  return;
}
}
__inline static void *video_get_drvdata(struct video_device *vdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& vdev->dev));
  return (tmp);
}
}
__inline static void video_set_drvdata(struct video_device *vdev , void *data )
{
  {
  dev_set_drvdata(& vdev->dev, data);
  return;
}
}
extern struct video_device *video_devdata(struct file * ) ;
__inline static void *video_drvdata(struct file *file )
{
  struct video_device *tmp ;
  void *tmp___0 ;
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  return (tmp___0);
}
}
__inline static char const *video_device_node_name(struct video_device *vdev )
{
  char const *tmp ;
  {
  tmp = dev_name((struct device const *)(& vdev->dev));
  return (tmp);
}
}
__inline static int video_is_registered(struct video_device *vdev )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& vdev->flags));
  return (tmp);
}
}
extern void v4l_bound_align_image(unsigned int * , unsigned int , unsigned int ,
                                  unsigned int , unsigned int * , unsigned int ,
                                  unsigned int , unsigned int , unsigned int ) ;
extern void v4l2_get_timestamp(struct timeval * ) ;
extern void v4l2_fh_init(struct v4l2_fh * , struct video_device * ) ;
extern void v4l2_fh_add(struct v4l2_fh * ) ;
extern void v4l2_fh_del(struct v4l2_fh * ) ;
extern void v4l2_fh_exit(struct v4l2_fh * ) ;
__inline static void v4l2_fill_pix_format(struct v4l2_pix_format *pix_fmt , struct v4l2_mbus_framefmt const *mbus_fmt )
{
  {
  pix_fmt->width = mbus_fmt->width;
  pix_fmt->height = mbus_fmt->height;
  pix_fmt->field = mbus_fmt->field;
  pix_fmt->colorspace = mbus_fmt->colorspace;
  pix_fmt->ycbcr_enc = (__u32 )mbus_fmt->ycbcr_enc;
  pix_fmt->quantization = (__u32 )mbus_fmt->quantization;
  pix_fmt->xfer_func = (__u32 )mbus_fmt->xfer_func;
  return;
}
}
__inline static void v4l2_fill_mbus_format(struct v4l2_mbus_framefmt *mbus_fmt , struct v4l2_pix_format const *pix_fmt ,
                                           u32 code )
{
  {
  mbus_fmt->width = pix_fmt->width;
  mbus_fmt->height = pix_fmt->height;
  mbus_fmt->field = pix_fmt->field;
  mbus_fmt->colorspace = pix_fmt->colorspace;
  mbus_fmt->ycbcr_enc = (__u16 )pix_fmt->ycbcr_enc;
  mbus_fmt->quantization = (__u16 )pix_fmt->quantization;
  mbus_fmt->xfer_func = (__u16 )pix_fmt->xfer_func;
  mbus_fmt->code = code;
  return;
}
}
int cx231xx_read_i2c_data(struct cx231xx *dev , u8 dev_addr , u16 saddr , u8 saddr_len ,
                          u32 *data , u8 data_len ) ;
int cx231xx_write_i2c_data(struct cx231xx *dev , u8 dev_addr , u16 saddr , u8 saddr_len ,
                           u32 data , u8 data_len ) ;
void cx231xx_set_Colibri_For_LowIF(struct cx231xx *dev , u32 if_freq , u8 spectral_invert ,
                                   u32 mode ) ;
void update_HH_register_after_set_DIF(struct cx231xx *dev ) ;
int cx231xx_tuner_pre_channel_change(struct cx231xx *dev ) ;
int cx231xx_tuner_post_channel_change(struct cx231xx *dev ) ;
u8 cx231xx_find_next_SAV_EAV(u8 *p_buffer , u32 buffer_size , u32 *p_bytes_used ) ;
u8 cx231xx_find_boundary_SAV_EAV(u8 *p_buffer , u8 *partial_buf , u32 *p_bytes_used ) ;
int cx231xx_do_copy(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q , u8 *p_buffer ,
                    u32 bytes_to_copy ) ;
void cx231xx_reset_video_buffer(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q ) ;
u8 cx231xx_is_buffer_done(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q ) ;
u32 cx231xx_copy_video_line(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q ,
                            u8 *p_line , u32 length , int field_number ) ;
u32 cx231xx_get_video_line(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q ,
                           u8 sav_eav , u8 *p_buffer , u32 buffer_size ) ;
void cx231xx_swab(u16 *from , u16 *to , u16 len ) ;
int cx231xx_read_ctrl_reg(struct cx231xx *dev , u8 req , u16 reg , char *buf , int len ) ;
int cx231xx_write_ctrl_reg(struct cx231xx *dev , u8 req , u16 reg , char *buf , int len ) ;
int cx231xx_set_video_alternate(struct cx231xx *dev ) ;
int cx231xx_set_alt_setting(struct cx231xx *dev , u8 index , u8 alt___0 ) ;
int cx231xx_init_isoc(struct cx231xx *dev , int max_packets , int num_bufs , int max_pkt_size ,
                      int (*isoc_copy)(struct cx231xx * , struct urb * ) ) ;
int cx231xx_init_bulk(struct cx231xx *dev , int max_packets , int num_bufs , int max_pkt_size ,
                      int (*bulk_copy)(struct cx231xx * , struct urb * ) ) ;
void cx231xx_uninit_isoc(struct cx231xx *dev ) ;
void cx231xx_uninit_bulk(struct cx231xx *dev ) ;
int cx231xx_set_mode(struct cx231xx *dev , enum cx231xx_mode set_mode ) ;
void cx231xx_release_resources(struct cx231xx *dev ) ;
void cx231xx_release_analog_resources(struct cx231xx *dev ) ;
int cx231xx_register_analog_devices(struct cx231xx *dev ) ;
void cx231xx_config_i2c(struct cx231xx *dev ) ;
int cx231xx_set_power_mode(struct cx231xx *dev , enum AV_MODE mode ) ;
void video_mux(struct cx231xx *dev , int index ) ;
int cx231xx_set_video_input_mux(struct cx231xx *dev , u8 input ) ;
int cx231xx_do_mode_ctrl_overrides(struct cx231xx *dev ) ;
int cx231xx_set_audio_input(struct cx231xx *dev , u8 input ) ;
int cx231xx_querycap(struct file *file , void *priv , struct v4l2_capability *cap ) ;
int cx231xx_g_tuner(struct file *file , void *priv , struct v4l2_tuner *t ) ;
int cx231xx_s_tuner(struct file *file , void *priv , struct v4l2_tuner const *t ) ;
int cx231xx_g_frequency(struct file *file , void *priv , struct v4l2_frequency *f ) ;
int cx231xx_s_frequency(struct file *file , void *priv , struct v4l2_frequency const *f ) ;
int cx231xx_enum_input(struct file *file , void *priv , struct v4l2_input *i ) ;
int cx231xx_g_input(struct file *file , void *priv , unsigned int *i ) ;
int cx231xx_s_input(struct file *file , void *priv , unsigned int i ) ;
int cx231xx_g_chip_info(struct file *file , void *fh , struct v4l2_dbg_chip_info *chip ) ;
int cx231xx_g_register(struct file *file , void *priv , struct v4l2_dbg_register *reg ) ;
int cx231xx_s_register(struct file *file , void *priv , struct v4l2_dbg_register const *reg ) ;
struct cx231xx_board cx231xx_boards[23U] ;
void cx231xx_417_unregister(struct cx231xx *dev ) ;
__inline static unsigned int norm_maxw(struct cx231xx *dev )
{
  {
  if ((unsigned int )*((unsigned char *)dev + 144UL) != 0U) {
    return (640U);
  } else {
    return (720U);
  }
}
}
__inline static unsigned int norm_maxh(struct cx231xx *dev )
{
  {
  if ((unsigned int )*((unsigned char *)dev + 144UL) != 0U) {
    return (480U);
  } else {
    return ((dev->norm & 16713471ULL) != 0ULL ? 576U : 480U);
  }
}
}
extern char const *v4l2_type_names[] ;
extern long video_ioctl2(struct file * , unsigned int , unsigned long ) ;
extern int v4l2_event_pending(struct v4l2_fh * ) ;
extern int v4l2_event_unsubscribe(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
struct videobuf_queue_ops cx231xx_vbi_qops ;
void cx231xx_uninit_vbi_isoc(struct cx231xx *dev ) ;
static unsigned int isoc_debug ;
static unsigned int video_nr[8U] =
  { 4294967295U, 4294967295U, 4294967295U, 4294967295U,
        4294967295U, 4294967295U, 4294967295U, 4294967295U};
static unsigned int vbi_nr[8U] =
  { 4294967295U, 4294967295U, 4294967295U, 4294967295U,
        4294967295U, 4294967295U, 4294967295U, 4294967295U};
static unsigned int radio_nr[8U] =
  { 4294967295U, 4294967295U, 4294967295U, 4294967295U,
        4294967295U, 4294967295U, 4294967295U, 4294967295U};
static unsigned int video_debug ;
static struct cx231xx_fmt format[1U] = { {(char *)"16bpp YUY2, 4:2:2, packed", 1448695129U, 16, 0}};
static int cx231xx_enable_analog_tuner(struct cx231xx *dev )
{
  struct media_device *mdev ;
  struct media_entity *entity ;
  struct media_entity *decoder ;
  struct media_entity *source ;
  struct media_link *link ;
  struct media_link *found_link ;
  int i ;
  int ret ;
  int active_links ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct media_entity *sink ;
  int flags ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  mdev = dev->media_dev;
  decoder = (struct media_entity *)0;
  found_link = (struct media_link *)0;
  active_links = 0;
  if ((unsigned long )mdev == (unsigned long )((struct media_device *)0)) {
    return (0);
  } else {
  }
  __mptr = (struct list_head const *)mdev->entities.next;
  entity = (struct media_entity *)__mptr;
  goto ldv_52542;
  ldv_52541: ;
  if (entity->type == 131076U) {
    decoder = entity;
    goto ldv_52540;
  } else {
  }
  __mptr___0 = (struct list_head const *)entity->list.next;
  entity = (struct media_entity *)__mptr___0;
  ldv_52542: ;
  if ((unsigned long )(& entity->list) != (unsigned long )(& mdev->entities)) {
    goto ldv_52541;
  } else {
  }
  ldv_52540: ;
  if ((unsigned long )decoder == (unsigned long )((struct media_entity *)0)) {
    return (0);
  } else {
  }
  i = 0;
  goto ldv_52545;
  ldv_52544:
  link = decoder->links + (unsigned long )i;
  if ((unsigned long )(link->sink)->entity == (unsigned long )decoder) {
    found_link = link;
    if ((int )link->flags & 1) {
      active_links = active_links + 1;
    } else {
    }
    goto ldv_52543;
  } else {
  }
  i = i + 1;
  ldv_52545: ;
  if ((int )decoder->num_links > i) {
    goto ldv_52544;
  } else {
  }
  ldv_52543: ;
  if (active_links == 1 || (unsigned long )found_link == (unsigned long )((struct media_link *)0)) {
    return (0);
  } else {
  }
  source = (found_link->source)->entity;
  i = 0;
  goto ldv_52551;
  ldv_52550:
  flags = 0;
  link = source->links + (unsigned long )i;
  sink = (link->sink)->entity;
  if ((unsigned long )sink == (unsigned long )entity) {
    flags = 1;
  } else {
  }
  ret = media_entity_setup_link(link, (u32 )flags);
  if (ret != 0) {
    dev_err((struct device const *)dev->dev, "Couldn\'t change link %s->%s to %s. Error %d\n",
            source->name, sink->name, flags != 0 ? (char *)"enabled" : (char *)"disabled",
            ret);
    return (ret);
  } else {
    descriptor.modname = "cx231xx";
    descriptor.function = "cx231xx_enable_analog_tuner";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-video.c";
    descriptor.format = "link %s->%s was %s\n";
    descriptor.lineno = 166U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "link %s->%s was %s\n",
                        source->name, sink->name, flags != 0 ? (char *)"ENABLED" : (char *)"disabled");
    } else {
    }
  }
  i = i + 1;
  ldv_52551: ;
  if ((int )source->num_links > i) {
    goto ldv_52550;
  } else {
  }
  return (0);
}
}
__inline static void buffer_filled(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q ,
                                   struct cx231xx_buffer *buf )
{
  {
  if (isoc_debug != 0U) {
    printk("\016%s %s :[%p/%d] wakeup\n", (char *)(& dev->name), "buffer_filled",
           buf, buf->vb.i);
  } else {
  }
  buf->vb.state = 4;
  buf->vb.field_count = buf->vb.field_count + 1U;
  v4l2_get_timestamp(& buf->vb.ts);
  if ((unsigned int )dev->USE_ISO != 0U) {
    dev->video_mode.isoc_ctl.buf = (struct cx231xx_buffer *)0;
  } else {
    dev->video_mode.bulk_ctl.buf = (struct cx231xx_buffer *)0;
  }
  list_del(& buf->vb.queue);
  __wake_up(& buf->vb.done, 3U, 1, (void *)0);
  return;
}
}
__inline static void print_err_status(struct cx231xx *dev , int packet , int status )
{
  char *errmsg ;
  {
  errmsg = (char *)"Unknown";
  switch (status) {
  case -2:
  errmsg = (char *)"unlinked synchronuously";
  goto ldv_52566;
  case -104:
  errmsg = (char *)"unlinked asynchronuously";
  goto ldv_52566;
  case -63:
  errmsg = (char *)"Buffer error (overrun)";
  goto ldv_52566;
  case -32:
  errmsg = (char *)"Stalled (device not responding)";
  goto ldv_52566;
  case -75:
  errmsg = (char *)"Babble (bad cable?)";
  goto ldv_52566;
  case -71:
  errmsg = (char *)"Bit-stuff error (bad cable?)";
  goto ldv_52566;
  case -84:
  errmsg = (char *)"CRC/Timeout (could be anything)";
  goto ldv_52566;
  case -62:
  errmsg = (char *)"Device does not respond";
  goto ldv_52566;
  }
  ldv_52566: ;
  if (packet < 0) {
    if (isoc_debug != 0U) {
      printk("\016%s %s :URB status %d [%s].\n", (char *)(& dev->name), "print_err_status",
             status, errmsg);
    } else {
    }
  } else
  if (isoc_debug != 0U) {
    printk("\016%s %s :URB packet %d, status %d [%s].\n", (char *)(& dev->name), "print_err_status",
           packet, status, errmsg);
  } else {
  }
  return;
}
}
__inline static void get_next_buf(struct cx231xx_dmaqueue *dma_q , struct cx231xx_buffer **buf )
{
  struct cx231xx_video_mode *vmode ;
  struct cx231xx_dmaqueue const *__mptr ;
  struct cx231xx *dev ;
  struct cx231xx_video_mode const *__mptr___0 ;
  char *outp ;
  int tmp ;
  struct list_head const *__mptr___1 ;
  void *tmp___0 ;
  {
  __mptr = (struct cx231xx_dmaqueue const *)dma_q;
  vmode = (struct cx231xx_video_mode *)__mptr;
  __mptr___0 = (struct cx231xx_video_mode const *)vmode;
  dev = (struct cx231xx *)__mptr___0 + 0xffffffffffffc660UL;
  tmp = list_empty((struct list_head const *)(& dma_q->active));
  if (tmp != 0) {
    if (isoc_debug != 0U) {
      printk("\016%s %s :No active queue to serve\n", (char *)(& dev->name), "get_next_buf");
    } else {
    }
    if ((unsigned int )dev->USE_ISO != 0U) {
      dev->video_mode.isoc_ctl.buf = (struct cx231xx_buffer *)0;
    } else {
      dev->video_mode.bulk_ctl.buf = (struct cx231xx_buffer *)0;
    }
    *buf = (struct cx231xx_buffer *)0;
    return;
  } else {
  }
  __mptr___1 = (struct list_head const *)dma_q->active.next;
  *buf = (struct cx231xx_buffer *)__mptr___1 + 0xffffffffffffffc8UL;
  tmp___0 = videobuf_to_vmalloc(& (*buf)->vb);
  outp = (char *)tmp___0;
  memset((void *)outp, 0, (*buf)->vb.size);
  if ((unsigned int )dev->USE_ISO != 0U) {
    dev->video_mode.isoc_ctl.buf = *buf;
  } else {
    dev->video_mode.bulk_ctl.buf = *buf;
  }
  return;
}
}
__inline static int cx231xx_isoc_copy(struct cx231xx *dev , struct urb *urb )
{
  struct cx231xx_dmaqueue *dma_q ;
  int i ;
  unsigned char *p_buffer ;
  u32 bytes_parsed ;
  u32 buffer_size ;
  u8 sav_eav ;
  int status ;
  u32 tmp ;
  u32 bytes_used ;
  u32 tmp___0 ;
  {
  dma_q = (struct cx231xx_dmaqueue *)urb->context;
  bytes_parsed = 0U;
  buffer_size = 0U;
  sav_eav = 0U;
  if ((unsigned long )dev == (unsigned long )((struct cx231xx *)0)) {
    return (0);
  } else {
  }
  if (((unsigned int )dev->state & 2U) != 0U) {
    return (0);
  } else {
  }
  if (urb->status < 0) {
    print_err_status(dev, -1, urb->status);
    if (urb->status == -2) {
      return (0);
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_52607;
  ldv_52606:
  status = urb->iso_frame_desc[i].status;
  if (status < 0) {
    print_err_status(dev, i, status);
    if (urb->iso_frame_desc[i].status != -71) {
      goto ldv_52600;
    } else {
    }
  } else {
  }
  if (urb->iso_frame_desc[i].actual_length == 0U) {
    goto ldv_52600;
  } else {
  }
  if (urb->iso_frame_desc[i].actual_length > (unsigned int )dev->video_mode.max_pkt_size) {
    if (isoc_debug != 0U) {
      printk("\016%s %s :packet bigger than packet size", (char *)(& dev->name), "cx231xx_isoc_copy");
    } else {
    }
    goto ldv_52600;
  } else {
  }
  p_buffer = (unsigned char *)urb->transfer_buffer + (unsigned long )urb->iso_frame_desc[i].offset;
  buffer_size = urb->iso_frame_desc[i].actual_length;
  bytes_parsed = 0U;
  if ((unsigned int )dma_q->is_partial_line != 0U) {
    sav_eav = dma_q->last_sav;
  } else {
    sav_eav = cx231xx_find_boundary_SAV_EAV(p_buffer, (u8 *)(& dma_q->partial_buf),
                                            & bytes_parsed);
  }
  sav_eav = (unsigned int )sav_eav & 240U;
  if ((unsigned int )sav_eav != 0U) {
    tmp = cx231xx_get_video_line(dev, dma_q, (int )sav_eav, p_buffer + (unsigned long )bytes_parsed,
                                 buffer_size - bytes_parsed);
    bytes_parsed = tmp + bytes_parsed;
  } else {
  }
  goto ldv_52604;
  ldv_52603:
  bytes_used = 0U;
  sav_eav = cx231xx_find_next_SAV_EAV(p_buffer + (unsigned long )bytes_parsed, buffer_size - bytes_parsed,
                                      & bytes_used);
  bytes_parsed = bytes_parsed + bytes_used;
  sav_eav = (unsigned int )sav_eav & 240U;
  if ((unsigned int )sav_eav != 0U && bytes_parsed < buffer_size) {
    tmp___0 = cx231xx_get_video_line(dev, dma_q, (int )sav_eav, p_buffer + (unsigned long )bytes_parsed,
                                     buffer_size - bytes_parsed);
    bytes_parsed = tmp___0 + bytes_parsed;
  } else {
  }
  ldv_52604: ;
  if (bytes_parsed < buffer_size) {
    goto ldv_52603;
  } else {
  }
  memcpy((void *)(& dma_q->partial_buf), (void const *)(p_buffer + ((unsigned long )buffer_size + 0xfffffffffffffffcUL)),
           4UL);
  bytes_parsed = 0U;
  ldv_52600:
  i = i + 1;
  ldv_52607: ;
  if (urb->number_of_packets > i) {
    goto ldv_52606;
  } else {
  }
  return (1);
}
}
__inline static int cx231xx_bulk_copy(struct cx231xx *dev , struct urb *urb )
{
  struct cx231xx_dmaqueue *dma_q ;
  unsigned char *p_buffer ;
  u32 bytes_parsed ;
  u32 buffer_size ;
  u8 sav_eav ;
  u32 tmp ;
  u32 bytes_used ;
  u32 tmp___0 ;
  {
  dma_q = (struct cx231xx_dmaqueue *)urb->context;
  bytes_parsed = 0U;
  buffer_size = 0U;
  sav_eav = 0U;
  if ((unsigned long )dev == (unsigned long )((struct cx231xx *)0)) {
    return (0);
  } else {
  }
  if (((unsigned int )dev->state & 2U) != 0U) {
    return (0);
  } else {
  }
  if (urb->status < 0) {
    print_err_status(dev, -1, urb->status);
    if (urb->status == -2) {
      return (0);
    } else {
    }
  } else {
  }
  p_buffer = (unsigned char *)urb->transfer_buffer;
  buffer_size = urb->actual_length;
  bytes_parsed = 0U;
  if ((unsigned int )dma_q->is_partial_line != 0U) {
    sav_eav = dma_q->last_sav;
  } else {
    sav_eav = cx231xx_find_boundary_SAV_EAV(p_buffer, (u8 *)(& dma_q->partial_buf),
                                            & bytes_parsed);
  }
  sav_eav = (unsigned int )sav_eav & 240U;
  if ((unsigned int )sav_eav != 0U) {
    tmp = cx231xx_get_video_line(dev, dma_q, (int )sav_eav, p_buffer + (unsigned long )bytes_parsed,
                                 buffer_size - bytes_parsed);
    bytes_parsed = tmp + bytes_parsed;
  } else {
  }
  goto ldv_52620;
  ldv_52619:
  bytes_used = 0U;
  sav_eav = cx231xx_find_next_SAV_EAV(p_buffer + (unsigned long )bytes_parsed, buffer_size - bytes_parsed,
                                      & bytes_used);
  bytes_parsed = bytes_parsed + bytes_used;
  sav_eav = (unsigned int )sav_eav & 240U;
  if ((unsigned int )sav_eav != 0U && bytes_parsed < buffer_size) {
    tmp___0 = cx231xx_get_video_line(dev, dma_q, (int )sav_eav, p_buffer + (unsigned long )bytes_parsed,
                                     buffer_size - bytes_parsed);
    bytes_parsed = tmp___0 + bytes_parsed;
  } else {
  }
  ldv_52620: ;
  if (bytes_parsed < buffer_size) {
    goto ldv_52619;
  } else {
  }
  memcpy((void *)(& dma_q->partial_buf), (void const *)(p_buffer + ((unsigned long )buffer_size + 0xfffffffffffffffcUL)),
           4UL);
  bytes_parsed = 0U;
  return (1);
}
}
u8 cx231xx_find_boundary_SAV_EAV(u8 *p_buffer , u8 *partial_buf , u32 *p_bytes_used )
{
  u32 bytes_used ;
  u8 boundary_bytes[8U] ;
  u8 sav_eav ;
  {
  sav_eav = 0U;
  *p_bytes_used = 0U;
  memcpy((void *)(& boundary_bytes), (void const *)partial_buf, 4UL);
  memcpy((void *)(& boundary_bytes) + 4U, (void const *)p_buffer, 4UL);
  sav_eav = cx231xx_find_next_SAV_EAV((u8 *)(& boundary_bytes), 8U, & bytes_used);
  if ((unsigned int )sav_eav != 0U) {
    *p_bytes_used = bytes_used - 4U;
  } else {
  }
  return (sav_eav);
}
}
u8 cx231xx_find_next_SAV_EAV(u8 *p_buffer , u32 buffer_size , u32 *p_bytes_used )
{
  u32 i ;
  u8 sav_eav ;
  {
  sav_eav = 0U;
  if (buffer_size <= 3U) {
    *p_bytes_used = buffer_size;
    return (0U);
  } else {
  }
  i = 0U;
  goto ldv_52638;
  ldv_52637: ;
  if (((unsigned int )*(p_buffer + (unsigned long )i) == 255U && (unsigned int )*(p_buffer + (unsigned long )(i + 1U)) == 0U) && (unsigned int )*(p_buffer + (unsigned long )(i + 2U)) == 0U) {
    *p_bytes_used = i + 4U;
    sav_eav = *(p_buffer + (unsigned long )(i + 3U));
    return (sav_eav);
  } else {
  }
  i = i + 1U;
  ldv_52638: ;
  if (buffer_size - 3U > i) {
    goto ldv_52637;
  } else {
  }
  *p_bytes_used = buffer_size;
  return (0U);
}
}
u32 cx231xx_get_video_line(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q ,
                           u8 sav_eav , u8 *p_buffer , u32 buffer_size )
{
  u32 bytes_copied ;
  int current_field ;
  {
  bytes_copied = 0U;
  current_field = -1;
  switch ((int )sav_eav) {
  case 128: ;
  if ((((buffer_size > 3U && (unsigned int )*p_buffer == 255U) && (unsigned int )*(p_buffer + 1UL) == 0U) && (unsigned int )*(p_buffer + 2UL) == 0U) && ((((unsigned int )*(p_buffer + 3UL) == 144U || (unsigned int )*(p_buffer + 3UL) == 208U) || (unsigned int )*(p_buffer + 3UL) == 176U) || (unsigned int )*(p_buffer + 3UL) == 240U)) {
    return (bytes_copied);
  } else {
  }
  current_field = 1;
  goto ldv_52650;
  case 192: ;
  if ((((buffer_size > 3U && (unsigned int )*p_buffer == 255U) && (unsigned int )*(p_buffer + 1UL) == 0U) && (unsigned int )*(p_buffer + 2UL) == 0U) && ((((unsigned int )*(p_buffer + 3UL) == 144U || (unsigned int )*(p_buffer + 3UL) == 208U) || (unsigned int )*(p_buffer + 3UL) == 176U) || (unsigned int )*(p_buffer + 3UL) == 240U)) {
    return (bytes_copied);
  } else {
  }
  current_field = 2;
  goto ldv_52650;
  }
  ldv_52650:
  dma_q->last_sav = sav_eav;
  bytes_copied = cx231xx_copy_video_line(dev, dma_q, p_buffer, buffer_size, current_field);
  return (bytes_copied);
}
}
u32 cx231xx_copy_video_line(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q ,
                            u8 *p_line , u32 length , int field_number )
{
  u32 bytes_to_copy ;
  struct cx231xx_buffer *buf ;
  u32 _line_size ;
  u8 tmp ;
  {
  _line_size = (u32 )(dev->width * 2);
  if (dma_q->current_field != field_number) {
    cx231xx_reset_video_buffer(dev, dma_q);
  } else {
  }
  if ((unsigned int )dev->USE_ISO != 0U) {
    buf = dev->video_mode.isoc_ctl.buf;
  } else {
    buf = dev->video_mode.bulk_ctl.buf;
  }
  dma_q->current_field = field_number;
  bytes_to_copy = dma_q->bytes_left_in_line;
  if (bytes_to_copy > length) {
    bytes_to_copy = length;
  } else {
  }
  if (dma_q->lines_completed >= dma_q->lines_per_field) {
    dma_q->bytes_left_in_line = dma_q->bytes_left_in_line - bytes_to_copy;
    dma_q->is_partial_line = dma_q->bytes_left_in_line != 0U;
    return (0U);
  } else {
  }
  dma_q->is_partial_line = 1U;
  if ((unsigned long )buf == (unsigned long )((struct cx231xx_buffer *)0)) {
    dma_q->bytes_left_in_line = dma_q->bytes_left_in_line - bytes_to_copy;
    dma_q->is_partial_line = dma_q->bytes_left_in_line != 0U;
    return (bytes_to_copy);
  } else {
  }
  cx231xx_do_copy(dev, dma_q, p_line, bytes_to_copy);
  dma_q->pos = (int )((u32 )dma_q->pos + bytes_to_copy);
  dma_q->bytes_left_in_line = dma_q->bytes_left_in_line - bytes_to_copy;
  if (dma_q->bytes_left_in_line == 0U) {
    dma_q->bytes_left_in_line = _line_size;
    dma_q->lines_completed = dma_q->lines_completed + 1U;
    dma_q->is_partial_line = 0U;
    tmp = cx231xx_is_buffer_done(dev, dma_q);
    if ((unsigned int )tmp != 0U && (unsigned long )buf != (unsigned long )((struct cx231xx_buffer *)0)) {
      buffer_filled(dev, dma_q, buf);
      dma_q->pos = 0;
      buf = (struct cx231xx_buffer *)0;
      dma_q->lines_completed = 0U;
    } else {
    }
  } else {
  }
  return (bytes_to_copy);
}
}
void cx231xx_reset_video_buffer(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q )
{
  struct cx231xx_buffer *buf ;
  {
  if (dma_q->current_field == 1) {
    if (dma_q->lines_completed >= dma_q->lines_per_field) {
      dma_q->field1_done = 1U;
    } else {
      dma_q->field1_done = 0U;
    }
  } else {
  }
  if ((unsigned int )dev->USE_ISO != 0U) {
    buf = dev->video_mode.isoc_ctl.buf;
  } else {
    buf = dev->video_mode.bulk_ctl.buf;
  }
  if ((unsigned long )buf == (unsigned long )((struct cx231xx_buffer *)0)) {
    get_next_buf(dma_q, & buf);
    dma_q->pos = 0;
    dma_q->field1_done = 0U;
    dma_q->current_field = -1;
  } else {
  }
  dma_q->bytes_left_in_line = (u32 )(dev->width << 1);
  dma_q->lines_completed = 0U;
  return;
}
}
int cx231xx_do_copy(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q , u8 *p_buffer ,
                    u32 bytes_to_copy )
{
  u8 *p_out_buffer ;
  u32 current_line_bytes_copied ;
  struct cx231xx_buffer *buf ;
  u32 _line_size ;
  void *startwrite ;
  int offset ;
  int lencopy ;
  void *tmp ;
  {
  p_out_buffer = (u8 *)0U;
  current_line_bytes_copied = 0U;
  _line_size = (u32 )(dev->width << 1);
  if ((unsigned int )dev->USE_ISO != 0U) {
    buf = dev->video_mode.isoc_ctl.buf;
  } else {
    buf = dev->video_mode.bulk_ctl.buf;
  }
  if ((unsigned long )buf == (unsigned long )((struct cx231xx_buffer *)0)) {
    return (-1);
  } else {
  }
  tmp = videobuf_to_vmalloc(& buf->vb);
  p_out_buffer = (u8 *)tmp;
  current_line_bytes_copied = _line_size - dma_q->bytes_left_in_line;
  offset = dma_q->current_field != 1 ? (int )_line_size : 0;
  startwrite = (void *)p_out_buffer + (unsigned long )offset;
  startwrite = startwrite + (unsigned long )((dma_q->lines_completed * _line_size) * 2U);
  startwrite = startwrite + (unsigned long )current_line_bytes_copied;
  lencopy = (int )(bytes_to_copy < dma_q->bytes_left_in_line ? bytes_to_copy : dma_q->bytes_left_in_line);
  if ((unsigned long )((u8 *)startwrite + (unsigned long )lencopy) > (unsigned long )(p_out_buffer + buf->vb.size)) {
    return (0);
  } else {
  }
  cx231xx_swab((u16 *)p_buffer, (u16 *)startwrite, (int )((unsigned short )lencopy));
  return (0);
}
}
void cx231xx_swab(u16 *from , u16 *to , u16 len )
{
  u16 i ;
  {
  if ((unsigned int )len == 0U) {
    return;
  } else {
  }
  i = 0U;
  goto ldv_52687;
  ldv_52686:
  *(to + (unsigned long )i) = (u16 )((int )((short )((int )*(from + (unsigned long )i) << 8)) | (int )((short )((int )*(from + (unsigned long )i) >> 8)));
  i = (u16 )((int )i + 1);
  ldv_52687: ;
  if ((unsigned int )len / 2U > (unsigned int )i) {
    goto ldv_52686;
  } else {
  }
  return;
}
}
u8 cx231xx_is_buffer_done(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q )
{
  u8 buffer_complete ;
  {
  buffer_complete = 0U;
  buffer_complete = (u8 )((dma_q->current_field == 2 && dma_q->lines_completed >= dma_q->lines_per_field) && (unsigned int )dma_q->field1_done != 0U);
  return (buffer_complete);
}
}
static int buffer_setup(struct videobuf_queue *vq , unsigned int *count , unsigned int *size )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  {
  fh = (struct cx231xx_fh *)vq->priv_data;
  dev = fh->dev;
  *size = (unsigned int )((((fh->dev)->width * (fh->dev)->height) * (dev->format)->depth + 7) >> 3);
  if (*count == 0U) {
    *count = 12U;
  } else {
  }
  if (*count <= 3U) {
    *count = 4U;
  } else {
  }
  cx231xx_enable_analog_tuner(dev);
  return (0);
}
}
static void free_buffer(struct videobuf_queue *vq , struct cx231xx_buffer *buf )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  unsigned long flags ;
  int tmp ;
  long tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  {
  fh = (struct cx231xx_fh *)vq->priv_data;
  dev = fh->dev;
  flags = 0UL;
  tmp = preempt_count();
  tmp___0 = ldv__builtin_expect(((unsigned long )tmp & 2096896UL) != 0UL, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-video.c"),
                         "i" (752), "i" (12UL));
    ldv_52708: ;
    goto ldv_52708;
  } else {
  }
  tmp___1 = spinlock_check(& dev->video_mode.slock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  if ((unsigned int )dev->USE_ISO != 0U) {
    if ((unsigned long )dev->video_mode.isoc_ctl.buf == (unsigned long )buf) {
      dev->video_mode.isoc_ctl.buf = (struct cx231xx_buffer *)0;
    } else {
    }
  } else
  if ((unsigned long )dev->video_mode.bulk_ctl.buf == (unsigned long )buf) {
    dev->video_mode.bulk_ctl.buf = (struct cx231xx_buffer *)0;
  } else {
  }
  spin_unlock_irqrestore(& dev->video_mode.slock, flags);
  videobuf_vmalloc_free(& buf->vb);
  buf->vb.state = 0;
  return;
}
}
static int buffer_prepare(struct videobuf_queue *vq , struct videobuf_buffer *vb ,
                          enum v4l2_field field )
{
  struct cx231xx_fh *fh ;
  struct cx231xx_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  struct cx231xx *dev ;
  int rc ;
  int urb_init ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  fh = (struct cx231xx_fh *)vq->priv_data;
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx231xx_buffer *)__mptr;
  dev = fh->dev;
  rc = 0;
  urb_init = 0;
  buf->vb.size = (unsigned long )((((fh->dev)->width * (fh->dev)->height) * (dev->format)->depth + 7) >> 3);
  if (buf->vb.baddr != 0UL && buf->vb.bsize < buf->vb.size) {
    return (-22);
  } else {
  }
  buf->vb.width = (unsigned int )dev->width;
  buf->vb.height = (unsigned int )dev->height;
  buf->vb.field = field;
  if ((unsigned int )buf->vb.state == 0U) {
    rc = videobuf_iolock(vq, & buf->vb, (struct v4l2_framebuffer *)0);
    if (rc < 0) {
      goto fail;
    } else {
    }
  } else {
  }
  if ((unsigned int )dev->USE_ISO != 0U) {
    if (dev->video_mode.isoc_ctl.num_bufs == 0) {
      urb_init = 1;
    } else {
    }
  } else
  if (dev->video_mode.bulk_ctl.num_bufs == 0) {
    urb_init = 1;
  } else {
  }
  descriptor.modname = "cx231xx";
  descriptor.function = "buffer_prepare";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-video.c";
  descriptor.format = "urb_init=%d dev->video_mode.max_pkt_size=%d\n";
  descriptor.lineno = 812U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "urb_init=%d dev->video_mode.max_pkt_size=%d\n",
                      urb_init, dev->video_mode.max_pkt_size);
  } else {
  }
  if (urb_init != 0) {
    dev->mode_tv = 0U;
    if ((unsigned int )dev->USE_ISO != 0U) {
      rc = cx231xx_init_isoc(dev, 40, 8, dev->video_mode.max_pkt_size, & cx231xx_isoc_copy);
    } else {
      rc = cx231xx_init_bulk(dev, 40, 8, dev->video_mode.max_pkt_size, & cx231xx_bulk_copy);
    }
    if (rc < 0) {
      goto fail;
    } else {
    }
  } else {
  }
  buf->vb.state = 1;
  return (0);
  fail:
  free_buffer(vq, buf);
  return (rc);
}
}
static void buffer_queue(struct videobuf_queue *vq , struct videobuf_buffer *vb )
{
  struct cx231xx_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  struct cx231xx_dmaqueue *vidq ;
  {
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx231xx_buffer *)__mptr;
  fh = (struct cx231xx_fh *)vq->priv_data;
  dev = fh->dev;
  vidq = & dev->video_mode.vidq;
  buf->vb.state = 2;
  list_add_tail(& buf->vb.queue, & vidq->active);
  return;
}
}
static void buffer_release(struct videobuf_queue *vq , struct videobuf_buffer *vb )
{
  struct cx231xx_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  {
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx231xx_buffer *)__mptr;
  fh = (struct cx231xx_fh *)vq->priv_data;
  dev = fh->dev;
  if (isoc_debug != 0U) {
    printk("\016%s %s :cx231xx: called buffer_release\n", (char *)(& dev->name), "buffer_release");
  } else {
  }
  free_buffer(vq, buf);
  return;
}
}
static struct videobuf_queue_ops cx231xx_video_qops = {& buffer_setup, & buffer_prepare, & buffer_queue, & buffer_release};
void video_mux(struct cx231xx *dev , int index )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  dev->video_input = (u32 )index;
  dev->ctl_ainput = (unsigned int )((struct cx231xx_input *)(& cx231xx_boards[dev->model].input) + (unsigned long )index)->amux;
  cx231xx_set_video_input_mux(dev, (int )((u8 )index));
  if ((unsigned long )dev->sd_cx25840 != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((dev->sd_cx25840)->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )(((dev->sd_cx25840)->ops)->video)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                            u32 ,
                                                                                                                                                                                                                                            u32 ,
                                                                                                                                                                                                                                            u32 ))0)) {
      (*((((dev->sd_cx25840)->ops)->video)->s_routing))(dev->sd_cx25840, ((struct cx231xx_input *)(& cx231xx_boards[dev->model].input) + (unsigned long )index)->vmux,
                                                        0U, 0U);
    } else {
    }
  } else {
  }
  cx231xx_set_audio_input(dev, (int )((u8 )dev->ctl_ainput));
  descriptor.modname = "cx231xx";
  descriptor.function = "video_mux";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-video.c";
  descriptor.format = "video_mux : %d\n";
  descriptor.lineno = 884U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "video_mux : %d\n",
                      index);
  } else {
  }
  cx231xx_do_mode_ctrl_overrides(dev);
  return;
}
}
static int res_get(struct cx231xx_fh *fh )
{
  struct cx231xx *dev ;
  int rc ;
  {
  dev = fh->dev;
  rc = 0;
  if ((unsigned int )*((unsigned char *)fh + 184UL) != 0U) {
    return (rc);
  } else {
  }
  if ((unsigned int )fh->type == 1U) {
    if ((unsigned int )*((unsigned char *)dev + 352UL) != 0U) {
      return (-16);
    } else {
    }
    dev->stream_on = 1U;
  } else
  if ((unsigned int )fh->type == 4U) {
    if ((unsigned int )*((unsigned char *)dev + 352UL) != 0U) {
      return (-16);
    } else {
    }
    dev->vbi_stream_on = 1U;
  } else {
    return (-22);
  }
  fh->stream_on = 1U;
  return (rc);
}
}
static int res_check(struct cx231xx_fh *fh )
{
  {
  return ((int )fh->stream_on);
}
}
static void res_free(struct cx231xx_fh *fh )
{
  struct cx231xx *dev ;
  {
  dev = fh->dev;
  fh->stream_on = 0U;
  if ((unsigned int )fh->type == 1U) {
    dev->stream_on = 0U;
  } else {
  }
  if ((unsigned int )fh->type == 4U) {
    dev->vbi_stream_on = 0U;
  } else {
  }
  return;
}
}
static int check_dev(struct cx231xx *dev )
{
  {
  if (((unsigned int )dev->state & 2U) != 0U) {
    dev_err((struct device const *)dev->dev, "v4l2 ioctl: device not present\n");
    return (-19);
  } else {
  }
  return (0);
}
}
static int vidioc_g_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  f->fmt.pix.width = (__u32 )dev->width;
  f->fmt.pix.height = (__u32 )dev->height;
  f->fmt.pix.pixelformat = (dev->format)->fourcc;
  f->fmt.pix.bytesperline = (__u32 )((dev->width * (dev->format)->depth + 7) >> 3);
  f->fmt.pix.sizeimage = f->fmt.pix.bytesperline * (__u32 )dev->height;
  f->fmt.pix.colorspace = 1U;
  f->fmt.pix.field = 4U;
  return (0);
}
}
static struct cx231xx_fmt *format_by_fourcc(unsigned int fourcc )
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_52783;
  ldv_52782: ;
  if (format[i].fourcc == fourcc) {
    return ((struct cx231xx_fmt *)(& format) + (unsigned long )i);
  } else {
  }
  i = i + 1U;
  ldv_52783: ;
  if (i == 0U) {
    goto ldv_52782;
  } else {
  }
  return ((struct cx231xx_fmt *)0);
}
}
static int vidioc_try_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  unsigned int width ;
  unsigned int height ;
  unsigned int maxw ;
  unsigned int tmp ;
  unsigned int maxh ;
  unsigned int tmp___0 ;
  struct cx231xx_fmt *fmt ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  width = f->fmt.pix.width;
  height = f->fmt.pix.height;
  tmp = norm_maxw(dev);
  maxw = tmp;
  tmp___0 = norm_maxh(dev);
  maxh = tmp___0;
  fmt = format_by_fourcc(f->fmt.pix.pixelformat);
  if ((unsigned long )fmt == (unsigned long )((struct cx231xx_fmt *)0)) {
    if (video_debug != 0U) {
      printk("\016%s %s :Fourcc format (%08x) invalid.\n", (char *)(& dev->name),
             "vidioc_try_fmt_vid_cap", f->fmt.pix.pixelformat);
    } else {
    }
    return (-22);
  } else {
  }
  v4l_bound_align_image(& width, 48U, maxw, 1U, & height, 32U, maxh, 1U, 0U);
  f->fmt.pix.width = width;
  f->fmt.pix.height = height;
  f->fmt.pix.pixelformat = fmt->fourcc;
  f->fmt.pix.bytesperline = ((unsigned int )fmt->depth * width + 7U) >> 3;
  f->fmt.pix.sizeimage = f->fmt.pix.bytesperline * height;
  f->fmt.pix.colorspace = 1U;
  f->fmt.pix.field = 4U;
  return (0);
}
}
static int vidioc_s_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int rc ;
  struct cx231xx_fmt *fmt ;
  struct v4l2_subdev_format format___0 ;
  int tmp ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  format___0.which = 1U;
  format___0.pad = 0U;
  format___0.format.width = 0U;
  format___0.format.height = 0U;
  format___0.format.code = 0U;
  format___0.format.field = 0U;
  format___0.format.colorspace = 0U;
  format___0.format.ycbcr_enc = (unsigned short)0;
  format___0.format.quantization = (unsigned short)0;
  format___0.format.xfer_func = (unsigned short)0;
  format___0.format.reserved[0] = (unsigned short)0;
  format___0.format.reserved[1] = (unsigned short)0;
  format___0.format.reserved[2] = (unsigned short)0;
  format___0.format.reserved[3] = (unsigned short)0;
  format___0.format.reserved[4] = (unsigned short)0;
  format___0.format.reserved[5] = (unsigned short)0;
  format___0.format.reserved[6] = (unsigned short)0;
  format___0.format.reserved[7] = (unsigned short)0;
  format___0.format.reserved[8] = (unsigned short)0;
  format___0.format.reserved[9] = (unsigned short)0;
  format___0.format.reserved[10] = (unsigned short)0;
  format___0.reserved[0] = 0U;
  format___0.reserved[1] = 0U;
  format___0.reserved[2] = 0U;
  format___0.reserved[3] = 0U;
  format___0.reserved[4] = 0U;
  format___0.reserved[5] = 0U;
  format___0.reserved[6] = 0U;
  format___0.reserved[7] = 0U;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  vidioc_try_fmt_vid_cap(file, priv, f);
  fmt = format_by_fourcc(f->fmt.pix.pixelformat);
  if ((unsigned long )fmt == (unsigned long )((struct cx231xx_fmt *)0)) {
    return (-22);
  } else {
  }
  tmp = videobuf_queue_is_busy(& fh->vb_vidq);
  if (tmp != 0) {
    dev_err((struct device const *)dev->dev, "%s: queue busy\n", "vidioc_s_fmt_vid_cap");
    return (-16);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 352UL) != 0U && (unsigned int )*((unsigned char *)fh + 184UL) == 0U) {
    dev_err((struct device const *)dev->dev, "%s: device in use by another fh\n",
            "vidioc_s_fmt_vid_cap");
    return (-16);
  } else {
  }
  dev->width = (int )f->fmt.pix.width;
  dev->height = (int )f->fmt.pix.height;
  dev->format = fmt;
  v4l2_fill_mbus_format(& format___0.format, (struct v4l2_pix_format const *)(& f->fmt.pix),
                        1U);
  __err = 0L;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_52817;
  ldv_52816: ;
  if ((unsigned long )(__sd->ops)->pad != (unsigned long )((struct v4l2_subdev_pad_ops const * )0) && (unsigned long )((__sd->ops)->pad)->set_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                        struct v4l2_subdev_pad_config * ,
                                                                                                                                                                                                        struct v4l2_subdev_format * ))0)) {
    tmp___0 = (*(((__sd->ops)->pad)->set_fmt))(__sd, (struct v4l2_subdev_pad_config *)0,
                                               & format___0);
    __err = (long )tmp___0;
  } else {
  }
  if (__err != 0L && __err != -515L) {
    goto ldv_52815;
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_52817: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_52816;
  } else {
  }
  ldv_52815:
  v4l2_fill_pix_format(& f->fmt.pix, (struct v4l2_mbus_framefmt const *)(& format___0.format));
  return (rc);
}
}
static int vidioc_g_std(struct file *file , void *priv , v4l2_std_id *id )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  *id = dev->norm;
  return (0);
}
}
static int vidioc_s_std(struct file *file , void *priv , v4l2_std_id norm )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  struct v4l2_subdev_format format___0 ;
  int rc ;
  int tmp ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  long __err___0 ;
  struct list_head const *__mptr___1 ;
  int tmp___1 ;
  struct list_head const *__mptr___2 ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  format___0.which = 1U;
  format___0.pad = 0U;
  format___0.format.width = 0U;
  format___0.format.height = 0U;
  format___0.format.code = 0U;
  format___0.format.field = 0U;
  format___0.format.colorspace = 0U;
  format___0.format.ycbcr_enc = (unsigned short)0;
  format___0.format.quantization = (unsigned short)0;
  format___0.format.xfer_func = (unsigned short)0;
  format___0.format.reserved[0] = (unsigned short)0;
  format___0.format.reserved[1] = (unsigned short)0;
  format___0.format.reserved[2] = (unsigned short)0;
  format___0.format.reserved[3] = (unsigned short)0;
  format___0.format.reserved[4] = (unsigned short)0;
  format___0.format.reserved[5] = (unsigned short)0;
  format___0.format.reserved[6] = (unsigned short)0;
  format___0.format.reserved[7] = (unsigned short)0;
  format___0.format.reserved[8] = (unsigned short)0;
  format___0.format.reserved[9] = (unsigned short)0;
  format___0.format.reserved[10] = (unsigned short)0;
  format___0.reserved[0] = 0U;
  format___0.reserved[1] = 0U;
  format___0.reserved[2] = 0U;
  format___0.reserved[3] = 0U;
  format___0.reserved[4] = 0U;
  format___0.reserved[5] = 0U;
  format___0.reserved[6] = 0U;
  format___0.reserved[7] = 0U;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if (dev->norm == norm) {
    return (0);
  } else {
  }
  tmp = videobuf_queue_is_busy(& fh->vb_vidq);
  if (tmp != 0) {
    return (-16);
  } else {
  }
  dev->norm = norm;
  dev->width = 720;
  dev->height = (dev->norm & 16713471ULL) != 0ULL ? 576 : 480;
  __err = 0L;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_52844;
  ldv_52843: ;
  if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->s_std != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                            v4l2_std_id ))0)) {
    tmp___0 = (*(((__sd->ops)->video)->s_std))(__sd, dev->norm);
    __err = (long )tmp___0;
  } else {
  }
  if (__err != 0L && __err != -515L) {
    goto ldv_52842;
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_52844: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_52843;
  } else {
  }
  ldv_52842:
  format___0.format.code = 1U;
  format___0.format.width = (__u32 )dev->width;
  format___0.format.height = (__u32 )dev->height;
  __err___0 = 0L;
  __mptr___1 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff88UL;
  goto ldv_52855;
  ldv_52854: ;
  if ((unsigned long )(__sd___0->ops)->pad != (unsigned long )((struct v4l2_subdev_pad_ops const * )0) && (unsigned long )((__sd___0->ops)->pad)->set_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                struct v4l2_subdev_pad_config * ,
                                                                                                                                                                                                                struct v4l2_subdev_format * ))0)) {
    tmp___1 = (*(((__sd___0->ops)->pad)->set_fmt))(__sd___0, (struct v4l2_subdev_pad_config *)0,
                                                   & format___0);
    __err___0 = (long )tmp___1;
  } else {
  }
  if (__err___0 != 0L && __err___0 != -515L) {
    goto ldv_52853;
  } else {
  }
  __mptr___2 = (struct list_head const *)__sd___0->list.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff88UL;
  ldv_52855: ;
  if ((unsigned long )(& __sd___0->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_52854;
  } else {
  }
  ldv_52853:
  cx231xx_do_mode_ctrl_overrides(dev);
  return (0);
}
}
static char const *iname[8U] =
  { 0, "Composite1", "S-Video", "Television",
        "Cable TV", 0, "DVB", "for debug only"};
int cx231xx_enum_input(struct file *file , void *priv , struct v4l2_input *i )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  u32 gen_stat ;
  unsigned int ret ;
  unsigned int n ;
  int tmp ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  n = i->index;
  if (n > 3U) {
    return (-22);
  } else {
  }
  if ((unsigned int )((struct cx231xx_input *)(& cx231xx_boards[dev->model].input) + (unsigned long )n)->type == 0U) {
    return (-22);
  } else {
  }
  i->index = n;
  i->type = 2U;
  strcpy((char *)(& i->name), iname[(unsigned int )((struct cx231xx_input *)(& cx231xx_boards[dev->model].input) + (unsigned long )n)->type]);
  if ((unsigned int )((struct cx231xx_input *)(& cx231xx_boards[dev->model].input) + (unsigned long )n)->type == 3U || (unsigned int )((struct cx231xx_input *)(& cx231xx_boards[dev->model].input) + (unsigned long )n)->type == 4U) {
    i->type = 1U;
  } else {
  }
  i->std = dev->vdev.tvnorms;
  if (dev->video_input == n) {
    tmp = cx231xx_read_i2c_data(dev, 136, 1036, 2, & gen_stat, 4);
    ret = (unsigned int )tmp;
    if (ret != 0U) {
      if ((gen_stat & 2097152U) == 0U) {
        i->status = i->status | 2U;
      } else {
      }
      if ((gen_stat & 65536U) == 0U) {
        i->status = i->status | 256U;
      } else {
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
int cx231xx_g_input(struct file *file , void *priv , unsigned int *i )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  *i = dev->video_input;
  return (0);
}
}
int cx231xx_s_input(struct file *file , void *priv , unsigned int i )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int rc ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  dev->mode_tv = 0U;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if (i > 3U) {
    return (-22);
  } else {
  }
  if ((unsigned int )((struct cx231xx_input *)(& cx231xx_boards[dev->model].input) + (unsigned long )i)->type == 0U) {
    return (-22);
  } else {
  }
  video_mux(dev, (int )i);
  if ((unsigned int )((struct cx231xx_input *)(& cx231xx_boards[dev->model].input) + (unsigned long )i)->type == 3U || (unsigned int )((struct cx231xx_input *)(& cx231xx_boards[dev->model].input) + (unsigned long )i)->type == 4U) {
    __err = 0L;
    __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
    goto ldv_52892;
    ldv_52891: ;
    if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->s_std != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              v4l2_std_id ))0)) {
      tmp = (*(((__sd->ops)->video)->s_std))(__sd, dev->norm);
      __err = (long )tmp;
    } else {
    }
    if (__err != 0L && __err != -515L) {
      goto ldv_52890;
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
    ldv_52892: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_52891;
    } else {
    }
    ldv_52890: ;
  } else {
  }
  return (0);
}
}
int cx231xx_g_tuner(struct file *file , void *priv , struct v4l2_tuner *t )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int rc ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if (t->index != 0U) {
    return (-22);
  } else {
  }
  strcpy((char *)(& t->name), "Tuner");
  t->type = 2U;
  t->capability = 2U;
  t->rangehigh = 4294967295U;
  t->signal = 65535;
  __err = 0L;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_52911;
  ldv_52910: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->g_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner * ))0)) {
    tmp = (*(((__sd->ops)->tuner)->g_tuner))(__sd, t);
    __err = (long )tmp;
  } else {
  }
  if (__err != 0L && __err != -515L) {
    goto ldv_52909;
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_52911: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_52910;
  } else {
  }
  ldv_52909: ;
  return (0);
}
}
int cx231xx_s_tuner(struct file *file , void *priv , struct v4l2_tuner const *t )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int rc ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if ((unsigned int )t->index != 0U) {
    return (-22);
  } else {
  }
  return (0);
}
}
int cx231xx_g_frequency(struct file *file , void *priv , struct v4l2_frequency *f )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  if (f->tuner != 0U) {
    return (-22);
  } else {
  }
  f->frequency = (__u32 )dev->ctl_freq;
  return (0);
}
}
int cx231xx_s_frequency(struct file *file , void *priv , struct v4l2_frequency const *f )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  struct v4l2_frequency new_freq ;
  int rc ;
  u32 if_frequency ;
  struct _ddebug descriptor ;
  long tmp ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  long __err___0 ;
  struct list_head const *__mptr___1 ;
  int tmp___1 ;
  struct list_head const *__mptr___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  new_freq = *f;
  if_frequency = 5400000U;
  descriptor.modname = "cx231xx";
  descriptor.function = "cx231xx_s_frequency";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-video.c";
  descriptor.format = "Enter vidioc_s_frequency()f->frequency=%d;f->type=%d\n";
  descriptor.lineno = 1257U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "Enter vidioc_s_frequency()f->frequency=%d;f->type=%d\n",
                      f->frequency, f->type);
  } else {
  }
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if ((unsigned int )f->tuner != 0U) {
    return (-22);
  } else {
  }
  rc = cx231xx_tuner_pre_channel_change(dev);
  __err = 0L;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_52949;
  ldv_52948: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                  struct v4l2_frequency const * ))0)) {
    tmp___0 = (*(((__sd->ops)->tuner)->s_frequency))(__sd, f);
    __err = (long )tmp___0;
  } else {
  }
  if (__err != 0L && __err != -515L) {
    goto ldv_52947;
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_52949: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_52948;
  } else {
  }
  ldv_52947:
  __err___0 = 0L;
  __mptr___1 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff88UL;
  goto ldv_52960;
  ldv_52959: ;
  if ((unsigned long )(__sd___0->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd___0->ops)->tuner)->g_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                          struct v4l2_frequency * ))0)) {
    tmp___1 = (*(((__sd___0->ops)->tuner)->g_frequency))(__sd___0, & new_freq);
    __err___0 = (long )tmp___1;
  } else {
  }
  if (__err___0 != 0L && __err___0 != -515L) {
    goto ldv_52958;
  } else {
  }
  __mptr___2 = (struct list_head const *)__sd___0->list.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff88UL;
  ldv_52960: ;
  if ((unsigned long )(& __sd___0->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_52959;
  } else {
  }
  ldv_52958:
  dev->ctl_freq = (int )new_freq.frequency;
  rc = cx231xx_tuner_post_channel_change(dev);
  if (dev->tuner_type == 83) {
    if ((dev->norm & 63232ULL) != 0ULL) {
      if_frequency = 5400000U;
    } else
    if ((dev->norm & 65539ULL) != 0ULL) {
      if_frequency = 6000000U;
    } else
    if ((dev->norm & 3277024ULL) != 0ULL) {
      if_frequency = 6900000U;
    } else
    if ((dev->norm & 786444ULL) != 0ULL) {
      if_frequency = 7100000U;
    } else
    if ((dev->norm & 16ULL) != 0ULL) {
      if_frequency = 7250000U;
    } else
    if ((dev->norm & 4194304ULL) != 0ULL) {
      if_frequency = 6900000U;
    } else
    if ((dev->norm & 8388608ULL) != 0ULL) {
      if_frequency = 1250000U;
    } else {
    }
    descriptor___0.modname = "cx231xx";
    descriptor___0.function = "cx231xx_s_frequency";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-video.c";
    descriptor___0.format = "if_frequency is set to %d\n";
    descriptor___0.lineno = 1293U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev->dev, "if_frequency is set to %d\n",
                        if_frequency);
    } else {
    }
    cx231xx_set_Colibri_For_LowIF(dev, if_frequency, 1, 1U);
    update_HH_register_after_set_DIF(dev);
  } else {
  }
  descriptor___1.modname = "cx231xx";
  descriptor___1.function = "cx231xx_s_frequency";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-video.c";
  descriptor___1.format = "Set New FREQUENCY to %d\n";
  descriptor___1.lineno = 1299U;
  descriptor___1.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)dev->dev, "Set New FREQUENCY to %d\n",
                      f->frequency);
  } else {
  }
  return (rc);
}
}
int cx231xx_g_chip_info(struct file *file , void *fh , struct v4l2_dbg_chip_info *chip )
{
  {
  switch (chip->match.__annonCompField68.addr) {
  case 0U: ;
  return (0);
  case 1U:
  strlcpy((char *)(& chip->name), "AFE (byte)", 32UL);
  return (0);
  case 2U:
  strlcpy((char *)(& chip->name), "Video (byte)", 32UL);
  return (0);
  case 3U:
  strlcpy((char *)(& chip->name), "I2S (byte)", 32UL);
  return (0);
  case 4U:
  strlcpy((char *)(& chip->name), "AFE (dword)", 32UL);
  return (0);
  case 5U:
  strlcpy((char *)(& chip->name), "Video (dword)", 32UL);
  return (0);
  case 6U:
  strlcpy((char *)(& chip->name), "I2S (dword)", 32UL);
  return (0);
  }
  return (-22);
}
}
int cx231xx_g_register(struct file *file , void *priv , struct v4l2_dbg_register *reg )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int ret ;
  u8 value[4U] ;
  u32 data ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  value[0] = 0U;
  value[1] = 0U;
  value[2] = 0U;
  value[3] = 0U;
  data = 0U;
  switch (reg->match.__annonCompField68.addr) {
  case 0U:
  ret = cx231xx_read_ctrl_reg(dev, 13, (int )((unsigned short )reg->reg), (char *)(& value),
                              4);
  reg->val = (__u64 )((((int )value[0] | ((int )value[1] << 8)) | ((int )value[2] << 16)) | ((int )value[3] << 24));
  reg->size = 4U;
  goto ldv_52988;
  case 1U:
  ret = cx231xx_read_i2c_data(dev, 96, (int )((unsigned short )reg->reg), 2, & data,
                              1);
  reg->val = (__u64 )data;
  reg->size = 1U;
  goto ldv_52988;
  case 2U:
  ret = cx231xx_read_i2c_data(dev, 136, (int )((unsigned short )reg->reg), 2, & data,
                              1);
  reg->val = (__u64 )data;
  reg->size = 1U;
  goto ldv_52988;
  case 3U:
  ret = cx231xx_read_i2c_data(dev, 152, (int )((unsigned short )reg->reg), 1, & data,
                              1);
  reg->val = (__u64 )data;
  reg->size = 1U;
  goto ldv_52988;
  case 4U:
  ret = cx231xx_read_i2c_data(dev, 96, (int )((unsigned short )reg->reg), 2, & data,
                              4);
  reg->val = (__u64 )data;
  reg->size = 4U;
  goto ldv_52988;
  case 5U:
  ret = cx231xx_read_i2c_data(dev, 136, (int )((unsigned short )reg->reg), 2, & data,
                              4);
  reg->val = (__u64 )data;
  reg->size = 4U;
  goto ldv_52988;
  case 6U:
  ret = cx231xx_read_i2c_data(dev, 152, (int )((unsigned short )reg->reg), 1, & data,
                              4);
  reg->val = (__u64 )data;
  reg->size = 4U;
  goto ldv_52988;
  default: ;
  return (-22);
  }
  ldv_52988: ;
  return (0 < ret ? 0 : ret);
}
}
int cx231xx_s_register(struct file *file , void *priv , struct v4l2_dbg_register const *reg )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int ret ;
  u8 data[4U] ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  data[0] = 0U;
  data[1] = 0U;
  data[2] = 0U;
  data[3] = 0U;
  switch (reg->match.__annonCompField68.addr) {
  case 0U:
  data[0] = (unsigned char )reg->val;
  data[1] = (unsigned char )(reg->val >> 8);
  data[2] = (unsigned char )(reg->val >> 16);
  data[3] = (unsigned char )(reg->val >> 24);
  ret = cx231xx_write_ctrl_reg(dev, 12, (int )((unsigned short )reg->reg), (char *)(& data),
                               4);
  goto ldv_53006;
  case 1U:
  ret = cx231xx_write_i2c_data(dev, 96, (int )((unsigned short )reg->reg), 2, (u32 )reg->val,
                               1);
  goto ldv_53006;
  case 2U:
  ret = cx231xx_write_i2c_data(dev, 136, (int )((unsigned short )reg->reg), 2, (u32 )reg->val,
                               1);
  goto ldv_53006;
  case 3U:
  ret = cx231xx_write_i2c_data(dev, 152, (int )((unsigned short )reg->reg), 1, (u32 )reg->val,
                               1);
  goto ldv_53006;
  case 4U:
  ret = cx231xx_write_i2c_data(dev, 96, (int )((unsigned short )reg->reg), 2, (u32 )reg->val,
                               4);
  goto ldv_53006;
  case 5U:
  ret = cx231xx_write_i2c_data(dev, 136, (int )((unsigned short )reg->reg), 2, (u32 )reg->val,
                               4);
  goto ldv_53006;
  case 6U:
  ret = cx231xx_write_i2c_data(dev, 152, (int )((unsigned short )reg->reg), 1, (u32 )reg->val,
                               4);
  goto ldv_53006;
  default: ;
  return (-22);
  }
  ldv_53006: ;
  return (0 < ret ? 0 : ret);
}
}
static int vidioc_cropcap(struct file *file , void *priv , struct v4l2_cropcap *cc )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  if (cc->type != 1U) {
    return (-22);
  } else {
  }
  cc->bounds.left = 0;
  cc->bounds.top = 0;
  cc->bounds.width = (__u32 )dev->width;
  cc->bounds.height = (__u32 )dev->height;
  cc->defrect = cc->bounds;
  cc->pixelaspect.numerator = 54U;
  cc->pixelaspect.denominator = 59U;
  return (0);
}
}
static int vidioc_streamon(struct file *file , void *priv , enum v4l2_buf_type type )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int rc ;
  long tmp ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  rc = res_get(fh);
  tmp = ldv__builtin_expect(rc >= 0, 1L);
  if (tmp != 0L) {
    rc = videobuf_streamon(& fh->vb_vidq);
  } else {
  }
  __err = 0L;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_53037;
  ldv_53036: ;
  if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->s_stream != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                               int ))0)) {
    tmp___0 = (*(((__sd->ops)->video)->s_stream))(__sd, 1);
    __err = (long )tmp___0;
  } else {
  }
  if (__err != 0L && __err != -515L) {
    goto ldv_53035;
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_53037: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_53036;
  } else {
  }
  ldv_53035: ;
  return (rc);
}
}
static int vidioc_streamoff(struct file *file , void *priv , enum v4l2_buf_type type )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int rc ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if ((unsigned int )fh->type != (unsigned int )type) {
    return (-22);
  } else {
  }
  if ((unsigned long )dev->sd_cx25840 != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((dev->sd_cx25840)->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )(((dev->sd_cx25840)->ops)->video)->s_stream != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                           int ))0)) {
      (*((((dev->sd_cx25840)->ops)->video)->s_stream))(dev->sd_cx25840, 0);
    } else {
    }
  } else {
  }
  videobuf_streamoff(& fh->vb_vidq);
  res_free(fh);
  return (0);
}
}
int cx231xx_querycap(struct file *file , void *priv , struct v4l2_capability *cap )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int tmp___0 ;
  {
  tmp = video_devdata(file);
  vdev = tmp;
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  strlcpy((char *)(& cap->driver), "cx231xx", 16UL);
  strlcpy((char *)(& cap->card), (char const *)cx231xx_boards[dev->model].name,
          32UL);
  usb_make_path(dev->udev, (char *)(& cap->bus_info), 32UL);
  if (vdev->vfl_type == 2) {
    cap->device_caps = 262144U;
  } else {
    cap->device_caps = 83886080U;
    if (vdev->vfl_type == 1) {
      cap->device_caps = cap->device_caps | 16U;
    } else {
      cap->device_caps = cap->device_caps | 1U;
    }
  }
  if (dev->tuner_type != 4) {
    cap->device_caps = cap->device_caps | 65536U;
  } else {
  }
  cap->capabilities = cap->device_caps | 2231369745U;
  tmp___0 = video_is_registered(& dev->radio_dev);
  if (tmp___0 != 0) {
    cap->capabilities = cap->capabilities | 262144U;
  } else {
  }
  return (0);
}
}
static int vidioc_enum_fmt_vid_cap(struct file *file , void *priv , struct v4l2_fmtdesc *f )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect(f->index != 0U, 0L);
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  strlcpy((char *)(& f->description), (char const *)format[f->index].name, 32UL);
  f->pixelformat = format[f->index].fourcc;
  return (0);
}
}
static int vidioc_g_fmt_vbi_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  f->fmt.vbi.sampling_rate = 27000000U;
  f->fmt.vbi.samples_per_line = 1440U;
  f->fmt.vbi.sample_format = 1497715271U;
  f->fmt.vbi.offset = 0U;
  f->fmt.vbi.start[0] = (dev->norm & 16713471ULL) != 0ULL ? 6 : 10;
  f->fmt.vbi.count[0] = (dev->norm & 16713471ULL) != 0ULL ? 18U : 12U;
  f->fmt.vbi.start[1] = (dev->norm & 16713471ULL) != 0ULL ? 318 : 273;
  f->fmt.vbi.count[1] = f->fmt.vbi.count[0];
  memset((void *)(& f->fmt.vbi.reserved), 0, 8UL);
  return (0);
}
}
static int vidioc_try_fmt_vbi_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  f->fmt.vbi.sampling_rate = 27000000U;
  f->fmt.vbi.samples_per_line = 1440U;
  f->fmt.vbi.sample_format = 1497715271U;
  f->fmt.vbi.offset = 0U;
  f->fmt.vbi.flags = 0U;
  f->fmt.vbi.start[0] = (dev->norm & 16713471ULL) != 0ULL ? 6 : 10;
  f->fmt.vbi.count[0] = (dev->norm & 16713471ULL) != 0ULL ? 18U : 12U;
  f->fmt.vbi.start[1] = (dev->norm & 16713471ULL) != 0ULL ? 318 : 273;
  f->fmt.vbi.count[1] = f->fmt.vbi.count[0];
  memset((void *)(& f->fmt.vbi.reserved), 0, 8UL);
  return (0);
}
}
static int vidioc_s_fmt_vbi_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int tmp ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  if ((unsigned int )*((unsigned char *)dev + 352UL) != 0U && (unsigned int )*((unsigned char *)fh + 184UL) == 0U) {
    dev_err((struct device const *)dev->dev, "%s device in use by another fh\n",
            "vidioc_s_fmt_vbi_cap");
    return (-16);
  } else {
  }
  tmp = vidioc_try_fmt_vbi_cap(file, priv, f);
  return (tmp);
}
}
static int vidioc_reqbufs(struct file *file , void *priv , struct v4l2_requestbuffers *rb )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int rc ;
  int tmp ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  tmp = videobuf_reqbufs(& fh->vb_vidq, rb);
  return (tmp);
}
}
static int vidioc_querybuf(struct file *file , void *priv , struct v4l2_buffer *b )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int rc ;
  int tmp ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  tmp = videobuf_querybuf(& fh->vb_vidq, b);
  return (tmp);
}
}
static int vidioc_qbuf(struct file *file , void *priv , struct v4l2_buffer *b )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int rc ;
  int tmp ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  tmp = videobuf_qbuf(& fh->vb_vidq, b);
  return (tmp);
}
}
static int vidioc_dqbuf(struct file *file , void *priv , struct v4l2_buffer *b )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int rc ;
  int tmp ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  tmp = videobuf_dqbuf(& fh->vb_vidq, b, (int )file->f_flags & 2048);
  return (tmp);
}
}
static int radio_g_tuner(struct file *file , void *priv , struct v4l2_tuner *t )
{
  struct cx231xx *dev ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  dev = ((struct cx231xx_fh *)priv)->dev;
  if (t->index != 0U) {
    return (-22);
  } else {
  }
  strcpy((char *)(& t->name), "Radio");
  __err = 0L;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_53131;
  ldv_53130: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->g_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner * ))0)) {
    tmp = (*(((__sd->ops)->tuner)->g_tuner))(__sd, t);
    __err = (long )tmp;
  } else {
  }
  if (__err != 0L && __err != -515L) {
    goto ldv_53129;
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_53131: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_53130;
  } else {
  }
  ldv_53129: ;
  return (0);
}
}
static int radio_s_tuner(struct file *file , void *priv , struct v4l2_tuner const *t )
{
  struct cx231xx *dev ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  dev = ((struct cx231xx_fh *)priv)->dev;
  if ((unsigned int )t->index != 0U) {
    return (-22);
  } else {
  }
  __err = 0L;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_53148;
  ldv_53147: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner const * ))0)) {
    tmp = (*(((__sd->ops)->tuner)->s_tuner))(__sd, t);
    __err = (long )tmp;
  } else {
  }
  if (__err != 0L && __err != -515L) {
    goto ldv_53146;
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_53148: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_53147;
  } else {
  }
  ldv_53146: ;
  return (0);
}
}
static int cx231xx_v4l2_open(struct file *filp )
{
  int radio ;
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct cx231xx *dev ;
  void *tmp___0 ;
  struct cx231xx_fh *fh ;
  enum v4l2_buf_type fh_type ;
  char const *tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp___4 ;
  struct list_head const *__mptr___0 ;
  {
  radio = 0;
  tmp = video_devdata(filp);
  vdev = tmp;
  tmp___0 = video_drvdata(filp);
  dev = (struct cx231xx *)tmp___0;
  fh_type = 0;
  switch (vdev->vfl_type) {
  case 0:
  fh_type = 1;
  goto ldv_53160;
  case 1:
  fh_type = 4;
  goto ldv_53160;
  case 2:
  radio = 1;
  goto ldv_53160;
  }
  ldv_53160: ;
  if (video_debug != 0U) {
    tmp___1 = video_device_node_name(vdev);
    printk("\016%s %s :open dev=%s type=%s users=%d\n", (char *)(& dev->name), "cx231xx_v4l2_open",
           tmp___1, v4l2_type_names[(unsigned int )fh_type], dev->users);
  } else {
  }
  tmp___2 = kzalloc(2024UL, 208U);
  fh = (struct cx231xx_fh *)tmp___2;
  if ((unsigned long )fh == (unsigned long )((struct cx231xx_fh *)0)) {
    return (-12);
  } else {
  }
  tmp___3 = mutex_lock_interruptible_nested(& dev->lock, 0U);
  if (tmp___3 != 0) {
    kfree((void const *)fh);
    return (-512);
  } else {
  }
  fh->dev = dev;
  fh->type = fh_type;
  filp->private_data = (void *)fh;
  v4l2_fh_init(& fh->fh, vdev);
  if ((unsigned int )fh->type == 1U && dev->users == 0) {
    if ((unsigned int )*((unsigned char *)dev + 144UL) != 0U) {
      cx231xx_set_power_mode(dev, 48);
    } else {
      cx231xx_set_power_mode(dev, 32);
    }
    cx231xx_set_video_alternate(dev);
    cx231xx_config_i2c(dev);
    dev->video_input = 2U < dev->video_input ? 2U : dev->video_input;
  } else {
  }
  if (radio != 0) {
    if (video_debug != 0U) {
      printk("\016%s %s :video_open: setting radio device\n", (char *)(& dev->name),
             "cx231xx_v4l2_open");
    } else {
    }
    __err = 0L;
    __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
    goto ldv_53172;
    ldv_53171: ;
    if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_radio != (unsigned long )((int (* )(struct v4l2_subdev * ))0)) {
      tmp___4 = (*(((__sd->ops)->tuner)->s_radio))(__sd);
      __err = (long )tmp___4;
    } else {
    }
    if (__err != 0L && __err != -515L) {
      goto ldv_53170;
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
    ldv_53172: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_53171;
    } else {
    }
    ldv_53170: ;
  } else {
  }
  dev->users = dev->users + 1;
  if ((unsigned int )fh->type == 1U) {
    videobuf_queue_vmalloc_init(& fh->vb_vidq, (struct videobuf_queue_ops const *)(& cx231xx_video_qops),
                                (struct device *)0, & dev->video_mode.slock, fh->type,
                                4, 264U, (void *)fh, & dev->lock);
  } else {
  }
  if ((unsigned int )fh->type == 4U) {
    cx231xx_set_alt_setting(dev, 5, 0);
    videobuf_queue_vmalloc_init(& fh->vb_vidq, (struct videobuf_queue_ops const *)(& cx231xx_vbi_qops),
                                (struct device *)0, & dev->vbi_mode.slock, fh->type,
                                5, 264U, (void *)fh, & dev->lock);
  } else {
  }
  mutex_unlock(& dev->lock);
  v4l2_fh_add(& fh->fh);
  return (0);
}
}
void cx231xx_release_analog_resources(struct cx231xx *dev )
{
  int tmp ;
  char const *tmp___0 ;
  int tmp___1 ;
  char const *tmp___2 ;
  int tmp___3 ;
  {
  tmp = video_is_registered(& dev->radio_dev);
  if (tmp != 0) {
    video_unregister_device(& dev->radio_dev);
  } else {
  }
  tmp___1 = video_is_registered(& dev->vbi_dev);
  if (tmp___1 != 0) {
    tmp___0 = video_device_node_name(& dev->vbi_dev);
    _dev_info((struct device const *)dev->dev, "V4L2 device %s deregistered\n",
              tmp___0);
    video_unregister_device(& dev->vbi_dev);
  } else {
  }
  tmp___3 = video_is_registered(& dev->vdev);
  if (tmp___3 != 0) {
    tmp___2 = video_device_node_name(& dev->vdev);
    _dev_info((struct device const *)dev->dev, "V4L2 device %s deregistered\n",
              tmp___2);
    if ((unsigned int )*((unsigned char *)dev + 144UL) != 0U) {
      cx231xx_417_unregister(dev);
    } else {
    }
    video_unregister_device(& dev->vdev);
  } else {
  }
  v4l2_ctrl_handler_free(& dev->ctrl_handler);
  v4l2_ctrl_handler_free(& dev->radio_ctrl_handler);
  return;
}
}
static int cx231xx_close(struct file *filp )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int tmp ;
  int tmp___0 ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp___1 ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct cx231xx_fh *)filp->private_data;
  dev = fh->dev;
  if (video_debug != 0U) {
    printk("\016%s %s :users=%d\n", (char *)(& dev->name), "cx231xx_close", dev->users);
  } else {
  }
  if (video_debug != 0U) {
    printk("\016%s %s :users=%d\n", (char *)(& dev->name), "cx231xx_close", dev->users);
  } else {
  }
  tmp = res_check(fh);
  if (tmp != 0) {
    res_free(fh);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 144UL) == 0U) {
    if ((unsigned int )fh->type == 4U) {
      videobuf_stop(& fh->vb_vidq);
      videobuf_mmap_free(& fh->vb_vidq);
      if (((unsigned int )dev->state & 2U) != 0U) {
        tmp___0 = atomic_read((atomic_t const *)(& dev->devlist_count));
        if (tmp___0 > 0) {
          cx231xx_release_resources(dev);
          fh->dev = (struct cx231xx *)0;
          return (0);
        } else {
        }
        return (0);
      } else {
      }
      cx231xx_uninit_vbi_isoc(dev);
      if ((unsigned int )dev->vbi_or_sliced_cc_mode == 0U) {
        cx231xx_set_alt_setting(dev, 5, 0);
      } else {
        cx231xx_set_alt_setting(dev, 6, 0);
      }
      v4l2_fh_del(& fh->fh);
      v4l2_fh_exit(& fh->fh);
      kfree((void const *)fh);
      dev->users = dev->users - 1;
      __wake_up(& dev->open, 1U, 1, (void *)0);
      return (0);
    } else {
    }
  } else {
  }
  v4l2_fh_del(& fh->fh);
  dev->users = dev->users - 1;
  if (dev->users == 0) {
    videobuf_stop(& fh->vb_vidq);
    videobuf_mmap_free(& fh->vb_vidq);
    if (((unsigned int )dev->state & 2U) != 0U) {
      cx231xx_release_resources(dev);
      fh->dev = (struct cx231xx *)0;
      return (0);
    } else {
    }
    __err = 0L;
    __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
    goto ldv_53192;
    ldv_53191: ;
    if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->s_power != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                             int ))0)) {
      tmp___1 = (*(((__sd->ops)->core)->s_power))(__sd, 0);
      __err = (long )tmp___1;
    } else {
    }
    if (__err != 0L && __err != -515L) {
      goto ldv_53190;
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
    ldv_53192: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_53191;
    } else {
    }
    ldv_53190: ;
    if ((unsigned int )dev->USE_ISO != 0U) {
      cx231xx_uninit_isoc(dev);
    } else {
      cx231xx_uninit_bulk(dev);
    }
    cx231xx_set_mode(dev, 0);
    cx231xx_set_alt_setting(dev, 4, 0);
  } else {
  }
  v4l2_fh_exit(& fh->fh);
  kfree((void const *)fh);
  __wake_up(& dev->open, 1U, 1, (void *)0);
  return (0);
}
}
static int cx231xx_v4l2_close(struct file *filp )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int rc ;
  {
  fh = (struct cx231xx_fh *)filp->private_data;
  dev = fh->dev;
  mutex_lock_nested(& dev->lock, 0U);
  rc = cx231xx_close(filp);
  mutex_unlock(& dev->lock);
  return (rc);
}
}
static ssize_t cx231xx_v4l2_read(struct file *filp , char *buf , size_t count , loff_t *pos )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int rc ;
  long tmp ;
  int tmp___0 ;
  ssize_t tmp___1 ;
  {
  fh = (struct cx231xx_fh *)filp->private_data;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return ((ssize_t )rc);
  } else {
  }
  if ((unsigned int )fh->type == 1U || (unsigned int )fh->type == 4U) {
    rc = res_get(fh);
    tmp = ldv__builtin_expect(rc < 0, 0L);
    if (tmp != 0L) {
      return ((ssize_t )rc);
    } else {
    }
    tmp___0 = mutex_lock_interruptible_nested(& dev->lock, 0U);
    if (tmp___0 != 0) {
      return (-512L);
    } else {
    }
    tmp___1 = videobuf_read_stream(& fh->vb_vidq, buf, count, pos, 0, (int )filp->f_flags & 2048);
    rc = (int )tmp___1;
    mutex_unlock(& dev->lock);
    return ((ssize_t )rc);
  } else {
  }
  return (0L);
}
}
static unsigned int cx231xx_v4l2_poll(struct file *filp , poll_table *wait )
{
  unsigned long req_events ;
  unsigned long tmp ;
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  unsigned int res ;
  int rc ;
  long tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  {
  tmp = poll_requested_events((poll_table const *)wait);
  req_events = tmp;
  fh = (struct cx231xx_fh *)filp->private_data;
  dev = fh->dev;
  res = 0U;
  rc = check_dev(dev);
  if (rc < 0) {
    return (8U);
  } else {
  }
  rc = res_get(fh);
  tmp___0 = ldv__builtin_expect(rc < 0, 0L);
  if (tmp___0 != 0L) {
    return (8U);
  } else {
  }
  tmp___1 = v4l2_event_pending(& fh->fh);
  if (tmp___1 != 0) {
    res = res | 2U;
  } else {
    poll_wait(filp, & fh->fh.wait, wait);
  }
  if ((req_events & 65UL) == 0UL) {
    return (res);
  } else {
  }
  if ((unsigned int )fh->type == 1U || (unsigned int )fh->type == 4U) {
    mutex_lock_nested(& dev->lock, 0U);
    tmp___2 = videobuf_poll_stream(filp, & fh->vb_vidq, wait);
    res = tmp___2 | res;
    mutex_unlock(& dev->lock);
    return (res);
  } else {
  }
  return (res | 8U);
}
}
static int cx231xx_v4l2_mmap(struct file *filp , struct vm_area_struct *vma )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int rc ;
  long tmp ;
  int tmp___0 ;
  {
  fh = (struct cx231xx_fh *)filp->private_data;
  dev = fh->dev;
  rc = check_dev(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  rc = res_get(fh);
  tmp = ldv__builtin_expect(rc < 0, 0L);
  if (tmp != 0L) {
    return (rc);
  } else {
  }
  tmp___0 = mutex_lock_interruptible_nested(& dev->lock, 0U);
  if (tmp___0 != 0) {
    return (-512);
  } else {
  }
  rc = videobuf_mmap_mapper(& fh->vb_vidq, vma);
  mutex_unlock(& dev->lock);
  if (video_debug != 0U) {
    printk("\016%s %s :vma start=0x%08lx, size=%ld, ret=%d\n", (char *)(& dev->name),
           "cx231xx_v4l2_mmap", vma->vm_start, vma->vm_end - vma->vm_start, rc);
  } else {
  }
  return (rc);
}
}
static struct v4l2_file_operations const cx231xx_v4l_fops =
     {& __this_module, & cx231xx_v4l2_read, 0, & cx231xx_v4l2_poll, & video_ioctl2,
    0, 0, & cx231xx_v4l2_mmap, & cx231xx_v4l2_open, & cx231xx_v4l2_close};
static struct v4l2_ioctl_ops const video_ioctl_ops =
     {& cx231xx_querycap, & vidioc_enum_fmt_vid_cap, 0, 0, 0, 0, 0, & vidioc_g_fmt_vid_cap,
    0, 0, 0, & vidioc_g_fmt_vbi_cap, 0, 0, 0, 0, 0, 0, & vidioc_s_fmt_vid_cap, 0,
    0, 0, & vidioc_s_fmt_vbi_cap, 0, 0, 0, 0, 0, 0, & vidioc_try_fmt_vid_cap, 0, 0,
    0, & vidioc_try_fmt_vbi_cap, 0, 0, 0, 0, 0, 0, & vidioc_reqbufs, & vidioc_querybuf,
    & vidioc_qbuf, 0, & vidioc_dqbuf, 0, 0, 0, 0, 0, & vidioc_streamon, & vidioc_streamoff,
    & vidioc_g_std, & vidioc_s_std, 0, & cx231xx_enum_input, & cx231xx_g_input, & cx231xx_s_input,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_cropcap, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & cx231xx_g_tuner, & cx231xx_s_tuner, & cx231xx_g_frequency,
    & cx231xx_s_frequency, 0, 0, 0, 0, & cx231xx_g_register, & cx231xx_s_register,
    & cx231xx_g_chip_info, 0, 0, 0, 0, 0, 0, 0, 0, 0, & v4l2_ctrl_subscribe_event,
    & v4l2_event_unsubscribe, 0};
static struct video_device cx231xx_vbi_template ;
static struct video_device const cx231xx_video_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {{0U, 0U}}}, & cx231xx_v4l_fops, {0, 0,
                                                                            {0, {0,
                                                                                 0},
                                                                             0, 0,
                                                                             0, 0,
                                                                             {{0}},
                                                                             {{{0L},
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}},
                                                                              {{0,
                                                                                0},
                                                                               0UL,
                                                                               0,
                                                                               0UL,
                                                                               0U,
                                                                               0,
                                                                               0,
                                                                               0,
                                                                               {(char)0,
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
                                                                               {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}},
                                                                              0, 0},
                                                                             (unsigned char)0,
                                                                             (unsigned char)0,
                                                                             (unsigned char)0,
                                                                             (unsigned char)0,
                                                                             (unsigned char)0},
                                                                            0, 0,
                                                                            {{0},
                                                                             {{{{{0}},
                                                                                0U,
                                                                                0U,
                                                                                0,
                                                                                {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}}},
                                                                             {0, 0},
                                                                             0, 0,
                                                                             {0, {0,
                                                                                  0},
                                                                              0, 0,
                                                                              0UL}},
                                                                            0, 0,
                                                                            0, 0,
                                                                            {{0},
                                                                             (unsigned char)0,
                                                                             (unsigned char)0,
                                                                             (_Bool)0,
                                                                             (_Bool)0,
                                                                             (_Bool)0,
                                                                             (_Bool)0,
                                                                             (_Bool)0,
                                                                             (_Bool)0,
                                                                             (_Bool)0,
                                                                             {{{{{0}},
                                                                                0U,
                                                                                0U,
                                                                                0,
                                                                                {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}}},
                                                                             {0, 0},
                                                                             {0U,
                                                                              {{{{{{0}},
                                                                                  0U,
                                                                                  0U,
                                                                                  0,
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0UL}}}},
                                                                               {0,
                                                                                0}}},
                                                                             0, (_Bool)0,
                                                                             (_Bool)0,
                                                                             {{0,
                                                                               0},
                                                                              0UL,
                                                                              0, 0UL,
                                                                              0U,
                                                                              0, 0,
                                                                              0, {(char)0,
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
                                                                              {0,
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0UL}},
                                                                             0UL,
                                                                             {{0L},
                                                                              {0,
                                                                               0},
                                                                              0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}},
                                                                             {{{{{{0}},
                                                                                 0U,
                                                                                 0U,
                                                                                 0,
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                                              {0,
                                                                               0}},
                                                                             0, {0},
                                                                             {0},
                                                                             (unsigned char)0,
                                                                             (unsigned char)0,
                                                                             (unsigned char)0,
                                                                             (unsigned char)0,
                                                                             (unsigned char)0,
                                                                             (unsigned char)0,
                                                                             (unsigned char)0,
                                                                             (unsigned char)0,
                                                                             (unsigned char)0,
                                                                             (unsigned char)0,
                                                                             (unsigned char)0,
                                                                             0, 0,
                                                                             0, 0,
                                                                             0UL,
                                                                             0UL,
                                                                             0UL,
                                                                             0UL,
                                                                             0, 0,
                                                                             0}, 0,
                                                                            0, 0,
                                                                            0, 0ULL,
                                                                            0UL, 0,
                                                                            {0, 0},
                                                                            0, 0,
                                                                            {0, 0},
                                                                            0, 0,
                                                                            0U, 0U,
                                                                            {{{{{0}},
                                                                               0U,
                                                                               0U,
                                                                               0,
                                                                               {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
                                                                            {0, 0},
                                                                            {0, {0,
                                                                                 0},
                                                                             {{0}}},
                                                                            0, 0,
                                                                            0, 0,
                                                                            (_Bool)0,
                                                                            (_Bool)0},
    0, 0, 0, 0, 0, 0, {(char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                       (char)0, (char)0, (char)0, (char)0}, 0, 0, 0, (unsigned short)0,
    0UL, 0, {{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 16777215ULL,
    & video_device_release_empty, & video_ioctl_ops, {0UL, 0UL, 0UL}, {0UL, 0UL, 0UL},
    0};
static struct v4l2_file_operations const radio_fops =
     {& __this_module, 0, 0, & v4l2_ctrl_poll, & video_ioctl2, 0, 0, 0, & cx231xx_v4l2_open,
    & cx231xx_v4l2_close};
static struct v4l2_ioctl_ops const radio_ioctl_ops =
     {& cx231xx_querycap, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & radio_g_tuner, & radio_s_tuner,
    & cx231xx_g_frequency, & cx231xx_s_frequency, 0, 0, 0, 0, & cx231xx_g_register,
    & cx231xx_s_register, & cx231xx_g_chip_info, 0, 0, 0, 0, 0, 0, 0, 0, 0, & v4l2_ctrl_subscribe_event,
    & v4l2_event_unsubscribe, 0};
static struct video_device cx231xx_radio_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {{0U, 0U}}}, & radio_fops, {0, 0, {0, {0,
                                                                                 0},
                                                                             0, 0,
                                                                             0, 0,
                                                                             {{0}},
                                                                             {{{0L},
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}},
                                                                              {{0,
                                                                                0},
                                                                               0UL,
                                                                               0,
                                                                               0UL,
                                                                               0U,
                                                                               0,
                                                                               0,
                                                                               0,
                                                                               {(char)0,
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
                                                                               {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}},
                                                                              0, 0},
                                                                             (unsigned char)0,
                                                                             (unsigned char)0,
                                                                             (unsigned char)0,
                                                                             (unsigned char)0,
                                                                             (unsigned char)0},
                                                                      0, 0, {{0},
                                                                             {{{{{0}},
                                                                                0U,
                                                                                0U,
                                                                                0,
                                                                                {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}}},
                                                                             {0, 0},
                                                                             0, 0,
                                                                             {0, {0,
                                                                                  0},
                                                                              0, 0,
                                                                              0UL}},
                                                                      0, 0, 0, 0,
                                                                      {{0}, (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (_Bool)0, (_Bool)0,
                                                                       (_Bool)0, (_Bool)0,
                                                                       (_Bool)0, (_Bool)0,
                                                                       (_Bool)0, {{{{{0}},
                                                                                    0U,
                                                                                    0U,
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}}}},
                                                                       {0, 0}, {0U,
                                                                                {{{{{{0}},
                                                                                    0U,
                                                                                    0U,
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}}}},
                                                                                 {0,
                                                                                  0}}},
                                                                       0, (_Bool)0,
                                                                       (_Bool)0, {{0,
                                                                                   0},
                                                                                  0UL,
                                                                                  0,
                                                                                  0UL,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  {(char)0,
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
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0UL}},
                                                                       0UL, {{0L},
                                                                             {0, 0},
                                                                             0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}},
                                                                       {{{{{{0}},
                                                                           0U, 0U,
                                                                           0, {0,
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0UL}}}},
                                                                        {0, 0}}, 0,
                                                                       {0}, {0}, (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       0, 0, 0, 0,
                                                                       0UL, 0UL, 0UL,
                                                                       0UL, 0, 0,
                                                                       0}, 0, 0, 0,
                                                                      0, 0ULL, 0UL,
                                                                      0, {0, 0}, 0,
                                                                      0, {0, 0}, 0,
                                                                      0, 0U, 0U, {{{{{0}},
                                                                                    0U,
                                                                                    0U,
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}}}},
                                                                      {0, 0}, {0,
                                                                               {0,
                                                                                0},
                                                                               {{0}}},
                                                                      0, 0, 0, 0,
                                                                      (_Bool)0, (_Bool)0},
    0, 0, 0, 0, 0, 0, {'c', 'x', '2', '3', '1', 'x', 'x', '-', 'r', 'a', 'd', 'i',
                       'o', '\000'}, 0, 0, 0, (unsigned short)0, 0UL, 0, {{{{{0}},
                                                                            0U, 0U,
                                                                            0, {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
    {0, 0}, 0, 0ULL, 0, & radio_ioctl_ops, {0UL, 0UL, 0UL}, {0UL, 0UL, 0UL}, 0};
static void cx231xx_vdev_init(struct cx231xx *dev , struct video_device *vfd , struct video_device const *template ,
                              char const *type_name )
{
  {
  *vfd = *template;
  vfd->v4l2_dev = & dev->v4l2_dev;
  vfd->release = & video_device_release_empty;
  vfd->lock = & dev->lock;
  snprintf((char *)(& vfd->name), 32UL, "%s %s", (char *)(& dev->name), type_name);
  video_set_drvdata(vfd, (void *)dev);
  if (dev->tuner_type == 4) {
    v4l2_disable_ioctl(vfd, 3224131128U);
    v4l2_disable_ioctl(vfd, 1076647481U);
    v4l2_disable_ioctl(vfd, 3226752541U);
    v4l2_disable_ioctl(vfd, 1079268894U);
  } else {
  }
  return;
}
}
int cx231xx_register_analog_devices(struct cx231xx *dev )
{
  int ret ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp___1 ;
  struct list_head const *__mptr___0 ;
  struct lock_class_key _key ;
  struct lock_class_key _key___0 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  {
  _dev_info((struct device const *)dev->dev, "v4l2 driver version %s\n", (char *)"0.0.3");
  dev->norm = 255ULL;
  tmp = norm_maxw(dev);
  dev->width = (int )tmp;
  tmp___0 = norm_maxh(dev);
  dev->height = (int )tmp___0;
  dev->interlaced = 0;
  dev->format = (struct cx231xx_fmt *)(& format);
  video_mux(dev, (int )dev->video_input);
  __err = 0L;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_53252;
  ldv_53251: ;
  if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->s_std != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                            v4l2_std_id ))0)) {
    tmp___1 = (*(((__sd->ops)->video)->s_std))(__sd, dev->norm);
    __err = (long )tmp___1;
  } else {
  }
  if (__err != 0L && __err != -515L) {
    goto ldv_53250;
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_53252: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_53251;
  } else {
  }
  ldv_53250:
  v4l2_ctrl_handler_init_class(& dev->ctrl_handler, 10U, & _key, "cx231xx_video:2155:(&dev->ctrl_handler)->_lock");
  v4l2_ctrl_handler_init_class(& dev->radio_ctrl_handler, 5U, & _key___0, "cx231xx_video:2156:(&dev->radio_ctrl_handler)->_lock");
  if ((unsigned long )dev->sd_cx25840 != (unsigned long )((struct v4l2_subdev *)0)) {
    v4l2_ctrl_add_handler(& dev->ctrl_handler, (dev->sd_cx25840)->ctrl_handler, (bool (*)(struct v4l2_ctrl const * ))0);
    v4l2_ctrl_add_handler(& dev->radio_ctrl_handler, (dev->sd_cx25840)->ctrl_handler,
                          & v4l2_ctrl_radio_filter);
  } else {
  }
  if (dev->ctrl_handler.error != 0) {
    return (dev->ctrl_handler.error);
  } else {
  }
  if (dev->radio_ctrl_handler.error != 0) {
    return (dev->radio_ctrl_handler.error);
  } else {
  }
  cx231xx_vdev_init(dev, & dev->vdev, & cx231xx_video_template, "video");
  dev->video_pad.flags = 1UL;
  ret = media_entity_init(& dev->vdev.entity, 1, & dev->video_pad, 0);
  if (ret < 0) {
    dev_err((struct device const *)dev->dev, "failed to initialize video media entity!\n");
  } else {
  }
  dev->vdev.ctrl_handler = & dev->ctrl_handler;
  ret = video_register_device(& dev->vdev, 0, (int )video_nr[dev->devno]);
  if (ret != 0) {
    dev_err((struct device const *)dev->dev, "unable to register video device (error=%i).\n",
            ret);
    return (ret);
  } else {
  }
  tmp___2 = video_device_node_name(& dev->vdev);
  _dev_info((struct device const *)dev->dev, "Registered video device %s [v4l2]\n",
            tmp___2);
  cx231xx_vbi_template = cx231xx_video_template;
  strcpy((char *)(& cx231xx_vbi_template.name), "cx231xx-vbi");
  cx231xx_vdev_init(dev, & dev->vbi_dev, (struct video_device const *)(& cx231xx_vbi_template),
                    "vbi");
  dev->vbi_pad.flags = 1UL;
  ret = media_entity_init(& dev->vbi_dev.entity, 1, & dev->vbi_pad, 0);
  if (ret < 0) {
    dev_err((struct device const *)dev->dev, "failed to initialize vbi media entity!\n");
  } else {
  }
  dev->vbi_dev.ctrl_handler = & dev->ctrl_handler;
  ret = video_register_device(& dev->vbi_dev, 1, (int )vbi_nr[dev->devno]);
  if (ret < 0) {
    dev_err((struct device const *)dev->dev, "unable to register vbi device\n");
    return (ret);
  } else {
  }
  tmp___3 = video_device_node_name(& dev->vbi_dev);
  _dev_info((struct device const *)dev->dev, "Registered VBI device %s\n", tmp___3);
  if ((unsigned int )cx231xx_boards[dev->model].radio.type == 5U) {
    cx231xx_vdev_init(dev, & dev->radio_dev, (struct video_device const *)(& cx231xx_radio_template),
                      "radio");
    dev->radio_dev.ctrl_handler = & dev->radio_ctrl_handler;
    ret = video_register_device(& dev->radio_dev, 2, (int )radio_nr[dev->devno]);
    if (ret < 0) {
      dev_err((struct device const *)dev->dev, "can\'t register radio device\n");
      return (ret);
    } else {
    }
    tmp___4 = video_device_node_name(& dev->radio_dev);
    _dev_info((struct device const *)dev->dev, "Registered radio device as %s\n",
              tmp___4);
  } else {
  }
  return (0);
}
}
int ldv_retval_5 ;
int ldv_retval_6 ;
int ldv_retval_3 ;
extern int ldv_probe_11(void) ;
void ldv_videobuf_queue_ops_14(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(608UL);
  cx231xx_video_qops_group1 = (struct videobuf_queue *)tmp;
  tmp___0 = ldv_init_zalloc(240UL);
  cx231xx_video_qops_group2 = (struct videobuf_buffer *)tmp___0;
  return;
}
}
void ldv_initialize_v4l2_file_operations_13(void)
{
  {
  cx231xx_v4l_fops_group0 = ldv_malloc(sizeof(struct file));
  return;
}
}
void ldv_initialize_v4l2_file_operations_10(void)
{
  {
  radio_fops_group0 = ldv_malloc(sizeof(struct file));
  return;
}
}
void ldv_initialize_v4l2_ioctl_ops_12(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___2 ;
  void *tmp___3 ;
  {
  tmp = ldv_init_zalloc(32UL);
  video_ioctl_ops_group0 = (struct v4l2_event_subscription const *)tmp;
  tmp___0 = ldv_init_zalloc(208UL);
  video_ioctl_ops_group4 = (struct v4l2_format *)tmp___0;
  video_ioctl_ops_group2 = ldv_malloc(sizeof(struct file));
  tmp___2 = ldv_init_zalloc(176UL);
  video_ioctl_ops_group1 = (struct v4l2_fh *)tmp___2;
  tmp___3 = ldv_init_zalloc(88UL);
  video_ioctl_ops_group3 = (struct v4l2_buffer *)tmp___3;
  return;
}
}
void ldv_initialize_v4l2_ioctl_ops_9(void)
{
  void *tmp ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(32UL);
  radio_ioctl_ops_group0 = (struct v4l2_event_subscription const *)tmp;
  radio_ioctl_ops_group2 = ldv_malloc(sizeof(struct file));
  tmp___1 = ldv_init_zalloc(176UL);
  radio_ioctl_ops_group1 = (struct v4l2_fh *)tmp___1;
  return;
}
}
void ldv_main_exported_11(void)
{
  struct video_device *ldvarg3 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_init_zalloc(1832UL);
  ldvarg3 = (struct video_device *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_11 == 2) {
    video_device_release_empty(ldvarg3);
    ldv_state_variable_11 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_53284;
  case 1: ;
  if (ldv_state_variable_11 == 1) {
    ldv_probe_11();
    ldv_state_variable_11 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_53284;
  default:
  ldv_stop();
  }
  ldv_53284: ;
  return;
}
}
void ldv_main_exported_13(void)
{
  unsigned int ldvarg118 ;
  unsigned long ldvarg117 ;
  struct poll_table_struct *ldvarg119 ;
  void *tmp ;
  loff_t *ldvarg120 ;
  void *tmp___0 ;
  char *ldvarg122 ;
  void *tmp___1 ;
  size_t ldvarg121 ;
  struct vm_area_struct *ldvarg123 ;
  void *tmp___2 ;
  int tmp___3 ;
  {
  tmp = ldv_init_zalloc(16UL);
  ldvarg119 = (struct poll_table_struct *)tmp;
  tmp___0 = ldv_init_zalloc(8UL);
  ldvarg120 = (loff_t *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg122 = (char *)tmp___1;
  tmp___2 = ldv_init_zalloc(184UL);
  ldvarg123 = (struct vm_area_struct *)tmp___2;
  ldv_memset((void *)(& ldvarg118), 0, 4UL);
  ldv_memset((void *)(& ldvarg117), 0, 8UL);
  ldv_memset((void *)(& ldvarg121), 0, 8UL);
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_13 == 1) {
    cx231xx_v4l2_mmap(cx231xx_v4l_fops_group0, ldvarg123);
    ldv_state_variable_13 = 1;
  } else {
  }
  if (ldv_state_variable_13 == 2) {
    cx231xx_v4l2_mmap(cx231xx_v4l_fops_group0, ldvarg123);
    ldv_state_variable_13 = 2;
  } else {
  }
  goto ldv_53298;
  case 1: ;
  if (ldv_state_variable_13 == 2) {
    cx231xx_v4l2_close(cx231xx_v4l_fops_group0);
    ldv_state_variable_13 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_53298;
  case 2: ;
  if (ldv_state_variable_13 == 2) {
    cx231xx_v4l2_read(cx231xx_v4l_fops_group0, ldvarg122, ldvarg121, ldvarg120);
    ldv_state_variable_13 = 2;
  } else {
  }
  goto ldv_53298;
  case 3: ;
  if (ldv_state_variable_13 == 1) {
    cx231xx_v4l2_poll(cx231xx_v4l_fops_group0, ldvarg119);
    ldv_state_variable_13 = 1;
  } else {
  }
  if (ldv_state_variable_13 == 2) {
    cx231xx_v4l2_poll(cx231xx_v4l_fops_group0, ldvarg119);
    ldv_state_variable_13 = 2;
  } else {
  }
  goto ldv_53298;
  case 4: ;
  if (ldv_state_variable_13 == 1) {
    ldv_retval_5 = cx231xx_v4l2_open(cx231xx_v4l_fops_group0);
    if (ldv_retval_5 == 0) {
      ldv_state_variable_13 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_53298;
  case 5: ;
  if (ldv_state_variable_13 == 1) {
    video_ioctl2(cx231xx_v4l_fops_group0, ldvarg118, ldvarg117);
    ldv_state_variable_13 = 1;
  } else {
  }
  if (ldv_state_variable_13 == 2) {
    video_ioctl2(cx231xx_v4l_fops_group0, ldvarg118, ldvarg117);
    ldv_state_variable_13 = 2;
  } else {
  }
  goto ldv_53298;
  default:
  ldv_stop();
  }
  ldv_53298: ;
  return;
}
}
void ldv_main_exported_10(void)
{
  struct poll_table_struct *ldvarg126 ;
  void *tmp ;
  unsigned int ldvarg125 ;
  unsigned long ldvarg124 ;
  int tmp___0 ;
  {
  tmp = ldv_init_zalloc(16UL);
  ldvarg126 = (struct poll_table_struct *)tmp;
  ldv_memset((void *)(& ldvarg125), 0, 4UL);
  ldv_memset((void *)(& ldvarg124), 0, 8UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_10 == 1) {
    ldv_retval_6 = cx231xx_v4l2_open(radio_fops_group0);
    if (ldv_retval_6 == 0) {
      ldv_state_variable_10 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_53312;
  case 1: ;
  if (ldv_state_variable_10 == 2) {
    cx231xx_v4l2_close(radio_fops_group0);
    ldv_state_variable_10 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_53312;
  case 2: ;
  if (ldv_state_variable_10 == 1) {
    v4l2_ctrl_poll(radio_fops_group0, ldvarg126);
    ldv_state_variable_10 = 1;
  } else {
  }
  if (ldv_state_variable_10 == 2) {
    v4l2_ctrl_poll(radio_fops_group0, ldvarg126);
    ldv_state_variable_10 = 2;
  } else {
  }
  goto ldv_53312;
  case 3: ;
  if (ldv_state_variable_10 == 1) {
    video_ioctl2(radio_fops_group0, ldvarg125, ldvarg124);
    ldv_state_variable_10 = 1;
  } else {
  }
  if (ldv_state_variable_10 == 2) {
    video_ioctl2(radio_fops_group0, ldvarg125, ldvarg124);
    ldv_state_variable_10 = 2;
  } else {
  }
  goto ldv_53312;
  default:
  ldv_stop();
  }
  ldv_53312: ;
  return;
}
}
void ldv_main_exported_9(void)
{
  struct v4l2_tuner *ldvarg19 ;
  void *tmp ;
  void *ldvarg22 ;
  void *tmp___0 ;
  struct v4l2_dbg_chip_info *ldvarg17 ;
  void *tmp___1 ;
  void *ldvarg14 ;
  void *tmp___2 ;
  struct v4l2_tuner *ldvarg21 ;
  void *tmp___3 ;
  void *ldvarg16 ;
  void *tmp___4 ;
  struct v4l2_frequency *ldvarg15 ;
  void *tmp___5 ;
  struct v4l2_dbg_register *ldvarg9 ;
  void *tmp___6 ;
  void *ldvarg10 ;
  void *tmp___7 ;
  struct v4l2_capability *ldvarg13 ;
  void *tmp___8 ;
  void *ldvarg8 ;
  void *tmp___9 ;
  void *ldvarg12 ;
  void *tmp___10 ;
  struct v4l2_dbg_register *ldvarg7 ;
  void *tmp___11 ;
  void *ldvarg20 ;
  void *tmp___12 ;
  struct v4l2_frequency *ldvarg11 ;
  void *tmp___13 ;
  void *ldvarg18 ;
  void *tmp___14 ;
  int tmp___15 ;
  {
  tmp = ldv_init_zalloc(84UL);
  ldvarg19 = (struct v4l2_tuner *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg22 = tmp___0;
  tmp___1 = ldv_init_zalloc(200UL);
  ldvarg17 = (struct v4l2_dbg_chip_info *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg14 = tmp___2;
  tmp___3 = ldv_init_zalloc(84UL);
  ldvarg21 = (struct v4l2_tuner *)tmp___3;
  tmp___4 = ldv_init_zalloc(1UL);
  ldvarg16 = tmp___4;
  tmp___5 = ldv_init_zalloc(44UL);
  ldvarg15 = (struct v4l2_frequency *)tmp___5;
  tmp___6 = ldv_init_zalloc(56UL);
  ldvarg9 = (struct v4l2_dbg_register *)tmp___6;
  tmp___7 = ldv_init_zalloc(1UL);
  ldvarg10 = tmp___7;
  tmp___8 = ldv_init_zalloc(104UL);
  ldvarg13 = (struct v4l2_capability *)tmp___8;
  tmp___9 = ldv_init_zalloc(1UL);
  ldvarg8 = tmp___9;
  tmp___10 = ldv_init_zalloc(1UL);
  ldvarg12 = tmp___10;
  tmp___11 = ldv_init_zalloc(56UL);
  ldvarg7 = (struct v4l2_dbg_register *)tmp___11;
  tmp___12 = ldv_init_zalloc(1UL);
  ldvarg20 = tmp___12;
  tmp___13 = ldv_init_zalloc(44UL);
  ldvarg11 = (struct v4l2_frequency *)tmp___13;
  tmp___14 = ldv_init_zalloc(1UL);
  ldvarg18 = tmp___14;
  tmp___15 = __VERIFIER_nondet_int();
  switch (tmp___15) {
  case 0: ;
  if (ldv_state_variable_9 == 1) {
    v4l2_event_unsubscribe(radio_ioctl_ops_group1, radio_ioctl_ops_group0);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_53337;
  case 1: ;
  if (ldv_state_variable_9 == 1) {
    radio_g_tuner(radio_ioctl_ops_group2, ldvarg22, ldvarg21);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_53337;
  case 2: ;
  if (ldv_state_variable_9 == 1) {
    radio_s_tuner(radio_ioctl_ops_group2, ldvarg20, (struct v4l2_tuner const *)ldvarg19);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_53337;
  case 3: ;
  if (ldv_state_variable_9 == 1) {
    cx231xx_g_chip_info(radio_ioctl_ops_group2, ldvarg18, ldvarg17);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_53337;
  case 4: ;
  if (ldv_state_variable_9 == 1) {
    cx231xx_g_frequency(radio_ioctl_ops_group2, ldvarg16, ldvarg15);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_53337;
  case 5: ;
  if (ldv_state_variable_9 == 1) {
    cx231xx_querycap(radio_ioctl_ops_group2, ldvarg14, ldvarg13);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_53337;
  case 6: ;
  if (ldv_state_variable_9 == 1) {
    cx231xx_s_frequency(radio_ioctl_ops_group2, ldvarg12, (struct v4l2_frequency const *)ldvarg11);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_53337;
  case 7: ;
  if (ldv_state_variable_9 == 1) {
    cx231xx_g_register(radio_ioctl_ops_group2, ldvarg10, ldvarg9);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_53337;
  case 8: ;
  if (ldv_state_variable_9 == 1) {
    v4l2_ctrl_subscribe_event(radio_ioctl_ops_group1, radio_ioctl_ops_group0);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_53337;
  case 9: ;
  if (ldv_state_variable_9 == 1) {
    cx231xx_s_register(radio_ioctl_ops_group2, ldvarg8, (struct v4l2_dbg_register const *)ldvarg7);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_53337;
  default:
  ldv_stop();
  }
  ldv_53337: ;
  return;
}
}
void ldv_main_exported_12(void)
{
  void *ldvarg52 ;
  void *tmp ;
  struct v4l2_dbg_register *ldvarg25 ;
  void *tmp___0 ;
  void *ldvarg61 ;
  void *tmp___1 ;
  void *ldvarg54 ;
  void *tmp___2 ;
  struct v4l2_input *ldvarg30 ;
  void *tmp___3 ;
  void *ldvarg26 ;
  void *tmp___4 ;
  void *ldvarg27 ;
  void *tmp___5 ;
  void *ldvarg63 ;
  void *tmp___6 ;
  void *ldvarg45 ;
  void *tmp___7 ;
  void *ldvarg40 ;
  void *tmp___8 ;
  struct v4l2_frequency *ldvarg36 ;
  void *tmp___9 ;
  void *ldvarg55 ;
  void *tmp___10 ;
  struct v4l2_requestbuffers *ldvarg66 ;
  void *tmp___11 ;
  void *ldvarg57 ;
  void *tmp___12 ;
  void *ldvarg65 ;
  void *tmp___13 ;
  void *ldvarg62 ;
  void *tmp___14 ;
  void *ldvarg49 ;
  void *tmp___15 ;
  void *ldvarg59 ;
  void *tmp___16 ;
  unsigned int *ldvarg41 ;
  void *tmp___17 ;
  v4l2_std_id ldvarg60 ;
  void *ldvarg31 ;
  void *tmp___18 ;
  void *ldvarg39 ;
  void *tmp___19 ;
  void *ldvarg47 ;
  void *tmp___20 ;
  v4l2_std_id *ldvarg34 ;
  void *tmp___21 ;
  unsigned int ldvarg28 ;
  struct v4l2_cropcap *ldvarg48 ;
  void *tmp___22 ;
  void *ldvarg33 ;
  void *tmp___23 ;
  struct v4l2_capability *ldvarg38 ;
  void *tmp___24 ;
  void *ldvarg35 ;
  void *tmp___25 ;
  void *ldvarg24 ;
  void *tmp___26 ;
  void *ldvarg44 ;
  void *tmp___27 ;
  void *ldvarg29 ;
  void *tmp___28 ;
  struct v4l2_tuner *ldvarg64 ;
  void *tmp___29 ;
  enum v4l2_buf_type ldvarg53 ;
  void *ldvarg37 ;
  void *tmp___30 ;
  struct v4l2_tuner *ldvarg58 ;
  void *tmp___31 ;
  struct v4l2_dbg_chip_info *ldvarg46 ;
  void *tmp___32 ;
  void *ldvarg50 ;
  void *tmp___33 ;
  void *ldvarg56 ;
  void *tmp___34 ;
  void *ldvarg42 ;
  void *tmp___35 ;
  struct v4l2_frequency *ldvarg43 ;
  void *tmp___36 ;
  enum v4l2_buf_type ldvarg23 ;
  void *ldvarg67 ;
  void *tmp___37 ;
  struct v4l2_dbg_register *ldvarg32 ;
  void *tmp___38 ;
  struct v4l2_fmtdesc *ldvarg51 ;
  void *tmp___39 ;
  int tmp___40 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg52 = tmp;
  tmp___0 = ldv_init_zalloc(56UL);
  ldvarg25 = (struct v4l2_dbg_register *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg61 = tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg54 = tmp___2;
  tmp___3 = ldv_init_zalloc(80UL);
  ldvarg30 = (struct v4l2_input *)tmp___3;
  tmp___4 = ldv_init_zalloc(1UL);
  ldvarg26 = tmp___4;
  tmp___5 = ldv_init_zalloc(1UL);
  ldvarg27 = tmp___5;
  tmp___6 = ldv_init_zalloc(1UL);
  ldvarg63 = tmp___6;
  tmp___7 = ldv_init_zalloc(1UL);
  ldvarg45 = tmp___7;
  tmp___8 = ldv_init_zalloc(1UL);
  ldvarg40 = tmp___8;
  tmp___9 = ldv_init_zalloc(44UL);
  ldvarg36 = (struct v4l2_frequency *)tmp___9;
  tmp___10 = ldv_init_zalloc(1UL);
  ldvarg55 = tmp___10;
  tmp___11 = ldv_init_zalloc(20UL);
  ldvarg66 = (struct v4l2_requestbuffers *)tmp___11;
  tmp___12 = ldv_init_zalloc(1UL);
  ldvarg57 = tmp___12;
  tmp___13 = ldv_init_zalloc(1UL);
  ldvarg65 = tmp___13;
  tmp___14 = ldv_init_zalloc(1UL);
  ldvarg62 = tmp___14;
  tmp___15 = ldv_init_zalloc(1UL);
  ldvarg49 = tmp___15;
  tmp___16 = ldv_init_zalloc(1UL);
  ldvarg59 = tmp___16;
  tmp___17 = ldv_init_zalloc(4UL);
  ldvarg41 = (unsigned int *)tmp___17;
  tmp___18 = ldv_init_zalloc(1UL);
  ldvarg31 = tmp___18;
  tmp___19 = ldv_init_zalloc(1UL);
  ldvarg39 = tmp___19;
  tmp___20 = ldv_init_zalloc(1UL);
  ldvarg47 = tmp___20;
  tmp___21 = ldv_init_zalloc(8UL);
  ldvarg34 = (v4l2_std_id *)tmp___21;
  tmp___22 = ldv_init_zalloc(44UL);
  ldvarg48 = (struct v4l2_cropcap *)tmp___22;
  tmp___23 = ldv_init_zalloc(1UL);
  ldvarg33 = tmp___23;
  tmp___24 = ldv_init_zalloc(104UL);
  ldvarg38 = (struct v4l2_capability *)tmp___24;
  tmp___25 = ldv_init_zalloc(1UL);
  ldvarg35 = tmp___25;
  tmp___26 = ldv_init_zalloc(1UL);
  ldvarg24 = tmp___26;
  tmp___27 = ldv_init_zalloc(1UL);
  ldvarg44 = tmp___27;
  tmp___28 = ldv_init_zalloc(1UL);
  ldvarg29 = tmp___28;
  tmp___29 = ldv_init_zalloc(84UL);
  ldvarg64 = (struct v4l2_tuner *)tmp___29;
  tmp___30 = ldv_init_zalloc(1UL);
  ldvarg37 = tmp___30;
  tmp___31 = ldv_init_zalloc(84UL);
  ldvarg58 = (struct v4l2_tuner *)tmp___31;
  tmp___32 = ldv_init_zalloc(200UL);
  ldvarg46 = (struct v4l2_dbg_chip_info *)tmp___32;
  tmp___33 = ldv_init_zalloc(1UL);
  ldvarg50 = tmp___33;
  tmp___34 = ldv_init_zalloc(1UL);
  ldvarg56 = tmp___34;
  tmp___35 = ldv_init_zalloc(1UL);
  ldvarg42 = tmp___35;
  tmp___36 = ldv_init_zalloc(44UL);
  ldvarg43 = (struct v4l2_frequency *)tmp___36;
  tmp___37 = ldv_init_zalloc(1UL);
  ldvarg67 = tmp___37;
  tmp___38 = ldv_init_zalloc(56UL);
  ldvarg32 = (struct v4l2_dbg_register *)tmp___38;
  tmp___39 = ldv_init_zalloc(64UL);
  ldvarg51 = (struct v4l2_fmtdesc *)tmp___39;
  ldv_memset((void *)(& ldvarg60), 0, 8UL);
  ldv_memset((void *)(& ldvarg28), 0, 4UL);
  ldv_memset((void *)(& ldvarg53), 0, 4UL);
  ldv_memset((void *)(& ldvarg23), 0, 4UL);
  tmp___40 = __VERIFIER_nondet_int();
  switch (tmp___40) {
  case 0: ;
  if (ldv_state_variable_12 == 1) {
    vidioc_reqbufs(video_ioctl_ops_group2, ldvarg67, ldvarg66);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 1: ;
  if (ldv_state_variable_12 == 1) {
    v4l2_event_unsubscribe(video_ioctl_ops_group1, video_ioctl_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 2: ;
  if (ldv_state_variable_12 == 1) {
    cx231xx_g_tuner(video_ioctl_ops_group2, ldvarg65, ldvarg64);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 3: ;
  if (ldv_state_variable_12 == 1) {
    vidioc_s_fmt_vbi_cap(video_ioctl_ops_group2, ldvarg63, video_ioctl_ops_group4);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 4: ;
  if (ldv_state_variable_12 == 1) {
    vidioc_try_fmt_vid_cap(video_ioctl_ops_group2, ldvarg62, video_ioctl_ops_group4);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 5: ;
  if (ldv_state_variable_12 == 1) {
    vidioc_s_std(video_ioctl_ops_group2, ldvarg61, ldvarg60);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 6: ;
  if (ldv_state_variable_12 == 1) {
    cx231xx_s_tuner(video_ioctl_ops_group2, ldvarg59, (struct v4l2_tuner const *)ldvarg58);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 7: ;
  if (ldv_state_variable_12 == 1) {
    vidioc_try_fmt_vbi_cap(video_ioctl_ops_group2, ldvarg57, video_ioctl_ops_group4);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 8: ;
  if (ldv_state_variable_12 == 1) {
    vidioc_querybuf(video_ioctl_ops_group2, ldvarg56, video_ioctl_ops_group3);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 9: ;
  if (ldv_state_variable_12 == 1) {
    vidioc_dqbuf(video_ioctl_ops_group2, ldvarg55, video_ioctl_ops_group3);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 10: ;
  if (ldv_state_variable_12 == 1) {
    vidioc_streamoff(video_ioctl_ops_group2, ldvarg54, ldvarg53);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 11: ;
  if (ldv_state_variable_12 == 1) {
    vidioc_enum_fmt_vid_cap(video_ioctl_ops_group2, ldvarg52, ldvarg51);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 12: ;
  if (ldv_state_variable_12 == 1) {
    vidioc_s_fmt_vid_cap(video_ioctl_ops_group2, ldvarg50, video_ioctl_ops_group4);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 13: ;
  if (ldv_state_variable_12 == 1) {
    vidioc_cropcap(video_ioctl_ops_group2, ldvarg49, ldvarg48);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 14: ;
  if (ldv_state_variable_12 == 1) {
    cx231xx_g_chip_info(video_ioctl_ops_group2, ldvarg47, ldvarg46);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 15: ;
  if (ldv_state_variable_12 == 1) {
    vidioc_g_fmt_vid_cap(video_ioctl_ops_group2, ldvarg45, video_ioctl_ops_group4);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 16: ;
  if (ldv_state_variable_12 == 1) {
    cx231xx_g_frequency(video_ioctl_ops_group2, ldvarg44, ldvarg43);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 17: ;
  if (ldv_state_variable_12 == 1) {
    cx231xx_g_input(video_ioctl_ops_group2, ldvarg42, ldvarg41);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 18: ;
  if (ldv_state_variable_12 == 1) {
    vidioc_qbuf(video_ioctl_ops_group2, ldvarg40, video_ioctl_ops_group3);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 19: ;
  if (ldv_state_variable_12 == 1) {
    cx231xx_querycap(video_ioctl_ops_group2, ldvarg39, ldvarg38);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 20: ;
  if (ldv_state_variable_12 == 1) {
    cx231xx_s_frequency(video_ioctl_ops_group2, ldvarg37, (struct v4l2_frequency const *)ldvarg36);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 21: ;
  if (ldv_state_variable_12 == 1) {
    vidioc_g_std(video_ioctl_ops_group2, ldvarg35, ldvarg34);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 22: ;
  if (ldv_state_variable_12 == 1) {
    cx231xx_g_register(video_ioctl_ops_group2, ldvarg33, ldvarg32);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 23: ;
  if (ldv_state_variable_12 == 1) {
    cx231xx_enum_input(video_ioctl_ops_group2, ldvarg31, ldvarg30);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 24: ;
  if (ldv_state_variable_12 == 1) {
    v4l2_ctrl_subscribe_event(video_ioctl_ops_group1, video_ioctl_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 25: ;
  if (ldv_state_variable_12 == 1) {
    cx231xx_s_input(video_ioctl_ops_group2, ldvarg29, ldvarg28);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 26: ;
  if (ldv_state_variable_12 == 1) {
    vidioc_g_fmt_vbi_cap(video_ioctl_ops_group2, ldvarg27, video_ioctl_ops_group4);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 27: ;
  if (ldv_state_variable_12 == 1) {
    cx231xx_s_register(video_ioctl_ops_group2, ldvarg26, (struct v4l2_dbg_register const *)ldvarg25);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  case 28: ;
  if (ldv_state_variable_12 == 1) {
    vidioc_streamon(video_ioctl_ops_group2, ldvarg24, ldvarg23);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_53397;
  default:
  ldv_stop();
  }
  ldv_53397: ;
  return;
}
}
void ldv_main_exported_14(void)
{
  unsigned int *ldvarg72 ;
  void *tmp ;
  enum v4l2_field ldvarg71 ;
  unsigned int *ldvarg73 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(4UL);
  ldvarg72 = (unsigned int *)tmp;
  tmp___0 = ldv_init_zalloc(4UL);
  ldvarg73 = (unsigned int *)tmp___0;
  ldv_memset((void *)(& ldvarg71), 0, 4UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_14 == 1) {
    buffer_setup(cx231xx_video_qops_group1, ldvarg73, ldvarg72);
    ldv_state_variable_14 = 1;
  } else {
  }
  if (ldv_state_variable_14 == 2) {
    buffer_setup(cx231xx_video_qops_group1, ldvarg73, ldvarg72);
    ldv_state_variable_14 = 2;
  } else {
  }
  goto ldv_53434;
  case 1: ;
  if (ldv_state_variable_14 == 2) {
    buffer_release(cx231xx_video_qops_group1, cx231xx_video_qops_group2);
    ldv_state_variable_14 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_53434;
  case 2: ;
  if (ldv_state_variable_14 == 1) {
    buffer_queue(cx231xx_video_qops_group1, cx231xx_video_qops_group2);
    ldv_state_variable_14 = 1;
  } else {
  }
  if (ldv_state_variable_14 == 2) {
    buffer_queue(cx231xx_video_qops_group1, cx231xx_video_qops_group2);
    ldv_state_variable_14 = 2;
  } else {
  }
  goto ldv_53434;
  case 3: ;
  if (ldv_state_variable_14 == 1) {
    ldv_retval_3 = buffer_prepare(cx231xx_video_qops_group1, cx231xx_video_qops_group2,
                                  ldvarg71);
    if (ldv_retval_3 == 0) {
      ldv_state_variable_14 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_53434;
  default:
  ldv_stop();
  }
  ldv_53434: ;
  return;
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
__inline static long ldv__builtin_expect(long exp , long c ) ;
bool ldv_queue_work_on_19(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_21(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_20(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_23(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_22(struct workqueue_struct *ldv_func_arg1 ) ;
int ldv_state_variable_8 ;
struct i2c_adapter *cx231xx_algo_group0 ;
void ldv_initialize_i2c_algorithm_8(void) ;
extern void dev_warn(struct device const * , char const * , ...) ;
extern int i2c_master_recv(struct i2c_client const * , char * , int ) ;
__inline static void i2c_set_adapdata(struct i2c_adapter *dev , void *data )
{
  {
  dev_set_drvdata(& dev->dev, data);
  return;
}
}
extern int i2c_add_adapter(struct i2c_adapter * ) ;
extern void i2c_del_adapter(struct i2c_adapter * ) ;
void cx231xx_do_i2c_scan(struct cx231xx *dev , int i2c_port ) ;
int cx231xx_i2c_register(struct cx231xx_i2c *bus ) ;
int cx231xx_i2c_unregister(struct cx231xx_i2c *bus ) ;
int cx231xx_i2c_mux_register(struct cx231xx *dev , int mux_no ) ;
void cx231xx_i2c_mux_unregister(struct cx231xx *dev , int mux_no ) ;
struct i2c_adapter *cx231xx_get_i2c_adap(struct cx231xx *dev , int i2c_port ) ;
int cx231xx_enable_i2c_port_3(struct cx231xx *dev , bool is_port_3 ) ;
extern struct i2c_adapter *i2c_add_mux_adapter(struct i2c_adapter * , struct device * ,
                                               void * , u32 , u32 , unsigned int ,
                                               int (*)(struct i2c_adapter * , void * ,
                                                       u32 ) , int (*)(struct i2c_adapter * ,
                                                                        void * , u32 ) ) ;
extern void i2c_del_mux_adapter(struct i2c_adapter * ) ;
static unsigned int i2c_scan ;
static unsigned int i2c_debug ;
__inline static int get_real_i2c_port(struct cx231xx *dev , int bus_nr )
{
  {
  if (bus_nr == 1) {
    return ((unsigned int )*((unsigned char *)dev + 7584UL) != 0U ? 4 : 3);
  } else {
  }
  return (bus_nr);
}
}
__inline static bool is_tuner(struct cx231xx *dev , struct cx231xx_i2c *bus , struct i2c_msg const *msg ,
                              int tuner_type )
{
  int i2c_port ;
  int tmp ;
  {
  tmp = get_real_i2c_port(dev, bus->nr);
  i2c_port = tmp;
  if ((int )dev->board.tuner_i2c_master != i2c_port) {
    return (0);
  } else {
  }
  if ((int )msg->addr != dev->board.tuner_addr) {
    return (0);
  } else {
  }
  if (dev->tuner_type != tuner_type) {
    return (0);
  } else {
  }
  return (1);
}
}
static int cx231xx_i2c_send_bytes(struct i2c_adapter *i2c_adap , struct i2c_msg const *msg )
{
  struct cx231xx_i2c *bus ;
  struct cx231xx *dev ;
  struct cx231xx_i2c_xfer_data req_data ;
  int status ;
  u16 size ;
  u8 loop ;
  u8 saddr_len ;
  u8 *buf_ptr ;
  u16 saddr ;
  u8 need_gpio ;
  int tmp ;
  bool tmp___0 ;
  {
  bus = (struct cx231xx_i2c *)i2c_adap->algo_data;
  dev = bus->dev;
  status = 0;
  size = 0U;
  loop = 0U;
  saddr_len = 1U;
  buf_ptr = (u8 *)0U;
  saddr = 0U;
  need_gpio = 0U;
  tmp___0 = is_tuner(dev, bus, msg, 76);
  if ((int )tmp___0) {
    size = msg->len;
    if ((unsigned int )size == 2U) {
      return (0);
    } else
    if ((unsigned int )size == 4U) {
      if ((unsigned int )((unsigned short )msg->len) > 1U) {
        saddr = (u16 )((int )((short )((int )*(msg->buf) << 8)) | (int )((short )*(msg->buf + 1UL)));
      } else
      if ((unsigned int )((unsigned short )msg->len) == 1U) {
        saddr = (u16 )*(msg->buf);
      } else {
      }
      switch ((int )saddr) {
      case 0:
      need_gpio = 1U;
      dev->xc_fw_load_done = 1U;
      goto ldv_51888;
      case 13: ;
      case 1: ;
      case 2: ;
      case 3:
      need_gpio = 1U;
      goto ldv_51888;
      default: ;
      if ((unsigned int )*((unsigned char *)dev + 7584UL) != 0U) {
        need_gpio = 1U;
      } else {
      }
      goto ldv_51888;
      }
      ldv_51888: ;
      if ((unsigned int )need_gpio != 0U) {
        if (i2c_debug != 0U) {
          printk("GPIO WRITE: addr 0x%x, len %d, saddr 0x%x\n", (int )msg->addr, (int )msg->len,
                 (int )saddr);
        } else {
        }
        tmp = (*(dev->cx231xx_gpio_i2c_write))(dev, (int )((u8 )msg->addr), (u8 *)msg->buf,
                                               (int )((u8 )msg->len));
        return (tmp);
      } else {
      }
    } else {
    }
    saddr_len = 1U;
    size = (int )size - (int )((u16 )saddr_len);
    buf_ptr = (u8 *)msg->buf + 1U;
    ldv_51894:
    req_data.dev_addr = (u8 )msg->addr;
    req_data.direction = (u8 )msg->flags;
    req_data.saddr_len = saddr_len;
    req_data.saddr_dat = (u16 )*(msg->buf);
    req_data.buf_size = (unsigned int )size <= 16U ? (u8 )size : 16U;
    req_data.p_buffer = buf_ptr + (unsigned long )((int )loop * 16);
    bus->i2c_nostop = (unsigned int )size > 16U;
    bus->i2c_reserve = (unsigned int )loop != 0U;
    status = (*(dev->cx231xx_send_usb_command))(bus, & req_data);
    loop = (u8 )((int )loop + 1);
    if ((unsigned int )size > 15U) {
      size = (unsigned int )size + 65520U;
    } else {
      size = 0U;
    }
    if ((unsigned int )size != 0U) {
      goto ldv_51894;
    } else {
    }
    bus->i2c_nostop = 0U;
    bus->i2c_reserve = 0U;
  } else {
    req_data.dev_addr = (u8 )msg->addr;
    req_data.direction = (u8 )msg->flags;
    req_data.saddr_len = 0U;
    req_data.saddr_dat = 0U;
    req_data.buf_size = (u8 )msg->len;
    req_data.p_buffer = (u8 *)msg->buf;
    status = (*(dev->cx231xx_send_usb_command))(bus, & req_data);
  }
  return (0 < status ? 0 : status);
}
}
static int cx231xx_i2c_recv_bytes(struct i2c_adapter *i2c_adap , struct i2c_msg const *msg )
{
  struct cx231xx_i2c *bus ;
  struct cx231xx *dev ;
  struct cx231xx_i2c_xfer_data req_data ;
  int status ;
  u16 saddr ;
  u8 need_gpio ;
  bool tmp ;
  {
  bus = (struct cx231xx_i2c *)i2c_adap->algo_data;
  dev = bus->dev;
  status = 0;
  saddr = 0U;
  need_gpio = 0U;
  tmp = is_tuner(dev, bus, msg, 76);
  if ((int )tmp) {
    if ((unsigned int )((unsigned short )msg->len) == 2U) {
      saddr = (u16 )((int )((short )((int )*(msg->buf) << 8)) | (int )((short )*(msg->buf + 1UL)));
    } else
    if ((unsigned int )((unsigned short )msg->len) == 1U) {
      saddr = (u16 )*(msg->buf);
    } else {
    }
    if ((unsigned int )*((unsigned char *)dev + 7584UL) != 0U) {
      switch ((int )saddr) {
      case 9: ;
      if (i2c_debug != 0U) {
        printk("GPIO R E A D: Special case BUSY check \n");
      } else {
      }
      *(msg->buf) = 0U;
      if ((unsigned int )((unsigned short )msg->len) == 2U) {
        *(msg->buf + 1UL) = 0U;
      } else {
      }
      return (0);
      case 4:
      need_gpio = 1U;
      goto ldv_51908;
      }
      ldv_51908: ;
      if ((unsigned int )need_gpio != 0U) {
        if (i2c_debug != 0U) {
          printk("GPIO R E A D: addr 0x%x, len %d, saddr 0x%x\n", (int )msg->addr,
                 (int )msg->len, ((int )*(msg->buf) << 8) | (int )*(msg->buf + 1UL));
        } else {
        }
        status = (*(dev->cx231xx_gpio_i2c_write))(dev, (int )((u8 )msg->addr), (u8 *)msg->buf,
                                                  (int )((u8 )msg->len));
        status = (*(dev->cx231xx_gpio_i2c_read))(dev, (int )((u8 )msg->addr), (u8 *)msg->buf,
                                                 (int )((u8 )msg->len));
        return (status);
      } else {
      }
    } else {
    }
    req_data.dev_addr = (u8 )msg->addr;
    req_data.direction = (u8 )msg->flags;
    req_data.saddr_len = (u8 )msg->len;
    req_data.saddr_dat = (u16 )((int )((short )((int )*(msg->buf) << 8)) | (int )((short )*(msg->buf + 1UL)));
    req_data.buf_size = (u8 )msg->len;
    req_data.p_buffer = (u8 *)msg->buf;
    status = (*(dev->cx231xx_send_usb_command))(bus, & req_data);
  } else {
    req_data.dev_addr = (u8 )msg->addr;
    req_data.direction = (u8 )msg->flags;
    req_data.saddr_len = 0U;
    req_data.saddr_dat = 0U;
    req_data.buf_size = (u8 )msg->len;
    req_data.p_buffer = (u8 *)msg->buf;
    status = (*(dev->cx231xx_send_usb_command))(bus, & req_data);
  }
  return (0 < status ? 0 : status);
}
}
static int cx231xx_i2c_recv_bytes_with_saddr(struct i2c_adapter *i2c_adap , struct i2c_msg const *msg1 ,
                                             struct i2c_msg const *msg2 )
{
  struct cx231xx_i2c *bus ;
  struct cx231xx *dev ;
  struct cx231xx_i2c_xfer_data req_data ;
  int status ;
  u16 saddr ;
  u8 need_gpio ;
  bool tmp ;
  {
  bus = (struct cx231xx_i2c *)i2c_adap->algo_data;
  dev = bus->dev;
  status = 0;
  saddr = 0U;
  need_gpio = 0U;
  if ((unsigned int )((unsigned short )msg1->len) == 2U) {
    saddr = (u16 )((int )((short )((int )*(msg1->buf) << 8)) | (int )((short )*(msg1->buf + 1UL)));
  } else
  if ((unsigned int )((unsigned short )msg1->len) == 1U) {
    saddr = (u16 )*(msg1->buf);
  } else {
  }
  tmp = is_tuner(dev, bus, msg2, 76);
  if ((int )tmp) {
    if ((unsigned int )((unsigned short )msg2->len) <= 15U) {
      if (i2c_debug != 0U) {
        printk("i2c_read: addr 0x%x, len %d, saddr 0x%x, len %d\n", (int )msg2->addr,
               (int )msg2->len, (int )saddr, (int )msg1->len);
      } else {
      }
      switch ((int )saddr) {
      case 8:
      need_gpio = 1U;
      goto ldv_51921;
      case 4:
      need_gpio = 1U;
      goto ldv_51921;
      }
      ldv_51921: ;
      if ((unsigned int )need_gpio != 0U) {
        status = (*(dev->cx231xx_gpio_i2c_write))(dev, (int )((u8 )msg1->addr), (u8 *)msg1->buf,
                                                  (int )((u8 )msg1->len));
        status = (*(dev->cx231xx_gpio_i2c_read))(dev, (int )((u8 )msg2->addr), (u8 *)msg2->buf,
                                                 (int )((u8 )msg2->len));
        return (status);
      } else {
      }
    } else {
    }
  } else {
  }
  req_data.dev_addr = (u8 )msg2->addr;
  req_data.direction = (u8 )msg2->flags;
  req_data.saddr_len = (u8 )msg1->len;
  req_data.saddr_dat = saddr;
  req_data.buf_size = (u8 )msg2->len;
  req_data.p_buffer = (u8 *)msg2->buf;
  status = (*(dev->cx231xx_send_usb_command))(bus, & req_data);
  return (0 < status ? 0 : status);
}
}
static int cx231xx_i2c_check_for_device(struct i2c_adapter *i2c_adap , struct i2c_msg const *msg )
{
  struct cx231xx_i2c *bus ;
  struct cx231xx *dev ;
  struct cx231xx_i2c_xfer_data req_data ;
  int status ;
  u8 buf[1U] ;
  {
  bus = (struct cx231xx_i2c *)i2c_adap->algo_data;
  dev = bus->dev;
  status = 0;
  req_data.dev_addr = (u8 )msg->addr;
  req_data.direction = 1U;
  req_data.saddr_len = 0U;
  req_data.saddr_dat = 0U;
  req_data.buf_size = 1U;
  req_data.p_buffer = (u8 *)(& buf);
  status = (*(dev->cx231xx_send_usb_command))(bus, & req_data);
  return (0 < status ? 0 : status);
}
}
static int cx231xx_i2c_xfer(struct i2c_adapter *i2c_adap , struct i2c_msg *msgs ,
                            int num )
{
  struct cx231xx_i2c *bus ;
  struct cx231xx *dev ;
  int addr ;
  int rc ;
  int i ;
  int byte ;
  {
  bus = (struct cx231xx_i2c *)i2c_adap->algo_data;
  dev = bus->dev;
  if (num <= 0) {
    return (0);
  } else {
  }
  mutex_lock_nested(& dev->i2c_lock, 0U);
  i = 0;
  goto ldv_51958;
  ldv_51957:
  addr = (int )(msgs + (unsigned long )i)->addr;
  if (i2c_debug > 1U) {
    printk("\017%s at %s: %s %s addr=0x%x len=%d:", (char *)(& dev->name), "cx231xx_i2c_xfer",
           (int )(msgs + (unsigned long )i)->flags & 1 ? (char *)"read" : (char *)"write",
           num + -1 == i ? (char *)"stop" : (char *)"nonstop", addr, (int )(msgs + (unsigned long )i)->len);
  } else {
  }
  if ((unsigned int )(msgs + (unsigned long )i)->len == 0U) {
    rc = cx231xx_i2c_check_for_device(i2c_adap, (struct i2c_msg const *)msgs + (unsigned long )i);
    if (rc < 0) {
      if (i2c_debug > 1U) {
        printk("\017%s at %s:  no device\n", (char *)(& dev->name), "cx231xx_i2c_xfer");
      } else {
      }
      mutex_unlock(& dev->i2c_lock);
      return (rc);
    } else {
    }
  } else
  if ((int )(msgs + (unsigned long )i)->flags & 1) {
    rc = cx231xx_i2c_recv_bytes(i2c_adap, (struct i2c_msg const *)msgs + (unsigned long )i);
    if (i2c_debug > 1U) {
      byte = 0;
      goto ldv_51945;
      ldv_51944:
      printk(" %02x", (int )*((msgs + (unsigned long )i)->buf + (unsigned long )byte));
      byte = byte + 1;
      ldv_51945: ;
      if ((int )(msgs + (unsigned long )i)->len > byte) {
        goto ldv_51944;
      } else {
      }
    } else {
    }
  } else
  if ((((i + 1 < num && (int )(msgs + ((unsigned long )i + 1UL))->flags & 1) && (int )(msgs + (unsigned long )i)->addr == (int )(msgs + ((unsigned long )i + 1UL))->addr) && (unsigned int )(msgs + (unsigned long )i)->len <= 2U) && bus->nr <= 2) {
    if (i2c_debug > 1U) {
      byte = 0;
      goto ldv_51948;
      ldv_51947:
      printk(" %02x", (int )*((msgs + (unsigned long )i)->buf + (unsigned long )byte));
      byte = byte + 1;
      ldv_51948: ;
      if ((int )(msgs + (unsigned long )i)->len > byte) {
        goto ldv_51947;
      } else {
      }
      printk("\n");
    } else {
    }
    if (i2c_debug > 1U) {
      printk("\017%s at %s: plus %s %s addr=0x%x len=%d:", (char *)(& dev->name),
             "cx231xx_i2c_xfer", (int )(msgs + ((unsigned long )i + 1UL))->flags & 1 ? (char *)"read" : (char *)"write",
             i + 1 == num + -1 ? (char *)"stop" : (char *)"nonstop", addr, (int )(msgs + ((unsigned long )i + 1UL))->len);
    } else {
    }
    rc = cx231xx_i2c_recv_bytes_with_saddr(i2c_adap, (struct i2c_msg const *)msgs + (unsigned long )i,
                                           (struct i2c_msg const *)(msgs + ((unsigned long )i + 1UL)));
    if (i2c_debug > 1U) {
      byte = 0;
      goto ldv_51951;
      ldv_51950:
      printk(" %02x", (int )*((msgs + ((unsigned long )i + 1UL))->buf + (unsigned long )byte));
      byte = byte + 1;
      ldv_51951: ;
      if ((int )(msgs + ((unsigned long )i + 1UL))->len > byte) {
        goto ldv_51950;
      } else {
      }
    } else {
    }
    i = i + 1;
  } else {
    if (i2c_debug > 1U) {
      byte = 0;
      goto ldv_51954;
      ldv_51953:
      printk(" %02x", (int )*((msgs + (unsigned long )i)->buf + (unsigned long )byte));
      byte = byte + 1;
      ldv_51954: ;
      if ((int )(msgs + (unsigned long )i)->len > byte) {
        goto ldv_51953;
      } else {
      }
    } else {
    }
    rc = cx231xx_i2c_send_bytes(i2c_adap, (struct i2c_msg const *)msgs + (unsigned long )i);
  }
  if (rc < 0) {
    goto err;
  } else {
  }
  if (i2c_debug > 1U) {
    printk("\n");
  } else {
  }
  i = i + 1;
  ldv_51958: ;
  if (i < num) {
    goto ldv_51957;
  } else {
  }
  mutex_unlock(& dev->i2c_lock);
  return (num);
  err: ;
  if (i2c_debug > 1U) {
    printk("\017%s at %s:  OLD_ERROR: %i\n", (char *)(& dev->name), "cx231xx_i2c_xfer",
           rc);
  } else {
  }
  mutex_unlock(& dev->i2c_lock);
  return (rc);
}
}
static u32 functionality(struct i2c_adapter *adap )
{
  {
  return (251592713U);
}
}
static struct i2c_algorithm cx231xx_algo = {& cx231xx_i2c_xfer, 0, & functionality, 0, 0};
static struct i2c_adapter cx231xx_adap_template =
     {& __this_module, 0U, (struct i2c_algorithm const *)(& cx231xx_algo), 0, {{{{0}},
                                                                                0U,
                                                                                0U,
                                                                                0,
                                                                                {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}},
                                                                               {0},
                                                                               0,
                                                                               0,
                                                                               0,
                                                                               0,
                                                                               0,
                                                                               0,
                                                                               0},
    0, 0, {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, {{{0L}, {0, 0}, 0, {0, {0, 0}, 0,
                                                                    0, 0UL}}, {{0,
                                                                                0},
                                                                               0UL,
                                                                               0,
                                                                               0UL,
                                                                               0U,
                                                                               0,
                                                                               0,
                                                                               0,
                                                                               {(char)0,
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
                                                                               {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}},
                                                 0, 0}, (unsigned char)0, (unsigned char)0,
                  (unsigned char)0, (unsigned char)0, (unsigned char)0}, 0, 0, {{0},
                                                                                {{{{{0}},
                                                                                   0U,
                                                                                   0U,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}}}},
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}},
           0, 0, 0, 0, {{0}, (unsigned char)0, (unsigned char)0, (_Bool)0, (_Bool)0,
                        (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, {{{{{0}},
                                                                             0U, 0U,
                                                                             0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}}},
                        {0, 0}, {0U, {{{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
                                      {0, 0}}}, 0, (_Bool)0, (_Bool)0, {{0, 0}, 0UL,
                                                                        0, 0UL, 0U,
                                                                        0, 0, 0, {(char)0,
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
                                                                        {0, {0, 0},
                                                                         0, 0, 0UL}},
                        0UL, {{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}}, {{{{{{0}},
                                                                            0U, 0U,
                                                                            0, {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
                                                                         {0, 0}},
                        0, {0}, {0}, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                        0, 0, 0, 0, 0UL, 0UL, 0UL, 0UL, 0, 0, 0}, 0, 0, 0, 0, 0ULL,
           0UL, 0, {0, 0}, 0, 0, {0, 0}, 0, 0, 0U, 0U, {{{{{0}}, 0U, 0U, 0, {0, {0,
                                                                                 0},
                                                                             0, 0,
                                                                             0UL}}}},
           {0, 0}, {0, {0, 0}, {{0}}}, 0, 0, 0, 0, (_Bool)0, (_Bool)0}, 0, {'c', 'x',
                                                                            '2', '3',
                                                                            '1', 'x',
                                                                            'x', '\000'},
    {0U, {{{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}}, {{0}, {{{{{0}},
                                                                             0U, 0U,
                                                                             0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}}},
                                                                     {0, 0}, 0, 0,
                                                                     {0, {0, 0}, 0,
                                                                      0, 0UL}}, {0,
                                                                                 0},
    0, 0};
static char const *i2c_devs[128U] =
  { 0, "Aquarius", 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        "demod", 0, 0, 0,
        0, 0, 0, 0,
        0, "GeminiIII", 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        "colibri", 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        "hammerhead", 0, 0, "CIR",
        0, 0, 0, 0,
        0, 0, 0, 0,
        "eeprom", 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        "tuner", "tuner"};
void cx231xx_do_i2c_scan(struct cx231xx *dev , int i2c_port )
{
  unsigned char buf ;
  int i ;
  int rc ;
  struct i2c_client client ;
  {
  if (i2c_scan == 0U) {
    return;
  } else {
  }
  dev->i2c_scan_running = 1U;
  memset((void *)(& client), 0, 1480UL);
  client.adapter = cx231xx_get_i2c_adap(dev, i2c_port);
  i = 0;
  goto ldv_51976;
  ldv_51975:
  client.addr = (unsigned short )i;
  rc = i2c_master_recv((struct i2c_client const *)(& client), (char *)(& buf), 0);
  if (rc < 0) {
    goto ldv_51974;
  } else {
  }
  _dev_info((struct device const *)dev->dev, "i2c scan: found device @ port %d addr 0x%x  [%s]\n",
            i2c_port, i << 1, (unsigned long )i2c_devs[i] != (unsigned long )((char const *)0) ? i2c_devs[i] : "???");
  ldv_51974:
  i = i + 1;
  ldv_51976: ;
  if (i <= 127) {
    goto ldv_51975;
  } else {
  }
  dev->i2c_scan_running = 0U;
  return;
}
}
int cx231xx_i2c_register(struct cx231xx_i2c *bus )
{
  struct cx231xx *dev ;
  long tmp ;
  {
  dev = bus->dev;
  tmp = ldv__builtin_expect((unsigned long )dev->cx231xx_send_usb_command == (unsigned long )((int (*)(struct cx231xx_i2c * ,
                                                                                                    struct cx231xx_i2c_xfer_data * ))0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-i2c.c"),
                         "i" (528), "i" (12UL));
    ldv_51982: ;
    goto ldv_51982;
  } else {
  }
  bus->i2c_adap = cx231xx_adap_template;
  bus->i2c_adap.dev.parent = dev->dev;
  snprintf((char *)(& bus->i2c_adap.name), 48UL, "%s-%d", (char *)(& (bus->dev)->name),
           bus->nr);
  bus->i2c_adap.algo_data = (void *)bus;
  i2c_set_adapdata(& bus->i2c_adap, (void *)(& dev->v4l2_dev));
  i2c_add_adapter(& bus->i2c_adap);
  if (bus->i2c_rc != 0U) {
    dev_warn((struct device const *)dev->dev, "i2c bus %d register FAILED\n", bus->nr);
  } else {
  }
  return ((int )bus->i2c_rc);
}
}
int cx231xx_i2c_unregister(struct cx231xx_i2c *bus )
{
  {
  i2c_del_adapter(& bus->i2c_adap);
  return (0);
}
}
static int cx231xx_i2c_mux_select(struct i2c_adapter *adap , void *mux_priv , u32 chan_id )
{
  struct cx231xx *dev ;
  int tmp ;
  {
  dev = (struct cx231xx *)mux_priv;
  tmp = cx231xx_enable_i2c_port_3(dev, chan_id != 0U);
  return (tmp);
}
}
int cx231xx_i2c_mux_register(struct cx231xx *dev , int mux_no )
{
  struct i2c_adapter *i2c_parent ;
  struct device *mux_dev ;
  {
  i2c_parent = & dev->i2c_bus[1].i2c_adap;
  mux_dev = dev->dev;
  dev->i2c_mux_adap[mux_no] = i2c_add_mux_adapter(i2c_parent, mux_dev, (void *)dev,
                                                  0U, (u32 )mux_no, 0U, & cx231xx_i2c_mux_select,
                                                  (int (*)(struct i2c_adapter * ,
                                                           void * , u32 ))0);
  if ((unsigned long )dev->i2c_mux_adap[mux_no] == (unsigned long )((struct i2c_adapter *)0)) {
    dev_warn((struct device const *)dev->dev, "i2c mux %d register FAILED\n", mux_no);
  } else {
  }
  return (0);
}
}
void cx231xx_i2c_mux_unregister(struct cx231xx *dev , int mux_no )
{
  {
  i2c_del_mux_adapter(dev->i2c_mux_adap[mux_no]);
  dev->i2c_mux_adap[mux_no] = (struct i2c_adapter *)0;
  return;
}
}
struct i2c_adapter *cx231xx_get_i2c_adap(struct cx231xx *dev , int i2c_port )
{
  {
  switch (i2c_port) {
  case 0: ;
  return (& dev->i2c_bus[0].i2c_adap);
  case 1: ;
  return (& dev->i2c_bus[1].i2c_adap);
  case 2: ;
  return (& dev->i2c_bus[2].i2c_adap);
  case 3: ;
  return (dev->i2c_mux_adap[0]);
  case 4: ;
  return (dev->i2c_mux_adap[1]);
  default: ;
  return ((struct i2c_adapter *)0);
  }
}
}
static char const __kstrtab_cx231xx_get_i2c_adap[21U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        'g', 'e', 't', '_',
        'i', '2', 'c', '_',
        'a', 'd', 'a', 'p',
        '\000'};
struct kernel_symbol const __ksymtab_cx231xx_get_i2c_adap ;
struct kernel_symbol const __ksymtab_cx231xx_get_i2c_adap = {(unsigned long )(& cx231xx_get_i2c_adap), (char const *)(& __kstrtab_cx231xx_get_i2c_adap)};
void ldv_initialize_i2c_algorithm_8(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1936UL);
  cx231xx_algo_group0 = (struct i2c_adapter *)tmp;
  return;
}
}
void ldv_main_exported_8(void)
{
  struct i2c_msg *ldvarg75 ;
  void *tmp ;
  int ldvarg74 ;
  int tmp___0 ;
  {
  tmp = ldv_init_zalloc(16UL);
  ldvarg75 = (struct i2c_msg *)tmp;
  ldv_memset((void *)(& ldvarg74), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_8 == 1) {
    cx231xx_i2c_xfer(cx231xx_algo_group0, ldvarg75, ldvarg74);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_52029;
  case 1: ;
  if (ldv_state_variable_8 == 1) {
    functionality(cx231xx_algo_group0);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_52029;
  default:
  ldv_stop();
  }
  ldv_52029: ;
  return;
}
}
bool ldv_queue_work_on_19(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_20(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_21(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_22(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_23(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
extern unsigned long find_first_zero_bit(unsigned long const * , unsigned long ) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
bool ldv_queue_work_on_33(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_35(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_34(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_37(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_36(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool flush_work(struct work_struct * ) ;
bool ldv_flush_work_38(struct work_struct *ldv_func_arg1 ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_33(8192, wq, work);
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
extern int __request_module(bool , char const * , ...) ;
struct v4l2_event_subscription const *video_ioctl_ops_group0 ;
int ldv_state_variable_8 ;
struct videobuf_queue *cx231xx_video_qops_group1 ;
struct cx2341x_handler *cx231xx_ops_group0 ;
struct work_struct *ldv_work_struct_1_3 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_state_variable_13 ;
int ldv_work_1_1 ;
int ldv_state_variable_12 ;
struct file *radio_ioctl_ops_group2 ;
int ldv_state_variable_14 ;
struct file *cx231xx_v4l_fops_group0 ;
struct v4l2_fh *video_ioctl_ops_group1 ;
struct v4l2_format *mpeg_ioctl_ops_group4 ;
struct file *mpeg_ioctl_ops_group1 ;
int ldv_state_variable_9 ;
struct videobuf_queue *cx231xx_qops_group1 ;
int ref_cnt ;
struct videobuf_queue *cx231xx_vbi_qops_group1 ;
struct file *radio_fops_group0 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
struct i2c_adapter *cx231xx_algo_group0 ;
struct work_struct *ldv_work_struct_1_0 ;
struct usb_interface *cx231xx_usb_driver_group1 ;
struct work_struct *ldv_work_struct_1_1 ;
int ldv_state_variable_10 ;
struct v4l2_buffer *mpeg_ioctl_ops_group3 ;
int ldv_work_1_3 ;
int ldv_state_variable_6 ;
struct file *video_ioctl_ops_group2 ;
struct v4l2_event_subscription const *mpeg_ioctl_ops_group0 ;
int ldv_state_variable_2 ;
struct v4l2_format *video_ioctl_ops_group4 ;
int usb_counter ;
struct v4l2_event_subscription const *radio_ioctl_ops_group0 ;
struct file *mpeg_fops_group0 ;
int ldv_state_variable_11 ;
int ldv_work_1_2 ;
struct work_struct *ldv_work_struct_1_2 ;
struct videobuf_buffer *cx231xx_qops_group2 ;
int ldv_state_variable_3 ;
struct videobuf_buffer *cx231xx_vbi_qops_group2 ;
struct v4l2_fh *radio_ioctl_ops_group1 ;
struct videobuf_buffer *cx231xx_video_qops_group2 ;
int ldv_work_1_0 ;
struct v4l2_fh *mpeg_ioctl_ops_group2 ;
struct v4l2_buffer *video_ioctl_ops_group3 ;
int ldv_state_variable_4 ;
void call_and_disable_work_1(struct work_struct *work ) ;
void ldv_initialize_v4l2_ioctl_ops_4(void) ;
void ldv_usb_driver_7(void) ;
void ldv_videobuf_queue_ops_2(void) ;
void disable_work_1(struct work_struct *work ) ;
void work_init_1(void) ;
void invoke_work_1(void) ;
void ldv_initialize_v4l2_file_operations_5(void) ;
void ldv_initialize_cx2341x_handler_ops_3(void) ;
void ldv_videobuf_queue_ops_6(void) ;
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
extern int i2c_transfer(struct i2c_adapter * , struct i2c_msg * , int ) ;
extern void msleep(unsigned int ) ;
__inline static void *usb_get_intfdata(struct usb_interface *intf )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& intf->dev));
  return (tmp);
}
}
__inline static void usb_set_intfdata(struct usb_interface *intf , void *data )
{
  {
  dev_set_drvdata(& intf->dev, data);
  return;
}
}
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf )
{
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)intf->dev.parent;
  return ((struct usb_device *)__mptr + 0xffffffffffffff70UL);
}
}
extern struct usb_device *usb_get_dev(struct usb_device * ) ;
extern void usb_put_dev(struct usb_device * ) ;
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
int ldv_usb_register_driver_39(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
void ldv_usb_deregister_40(struct usb_driver *arg ) ;
extern int media_entity_create_link(struct media_entity * , u16 , struct media_entity * ,
                                    u16 , u32 ) ;
extern int __media_device_register(struct media_device * , struct module * ) ;
extern void media_device_unregister(struct media_device * ) ;
extern struct v4l2_subdev *v4l2_i2c_new_subdev(struct v4l2_device * , struct i2c_adapter * ,
                                               char const * , u8 , unsigned short const * ) ;
extern int v4l2_device_register(struct device * , struct v4l2_device * ) ;
extern void v4l2_device_unregister(struct v4l2_device * ) ;
int initialize_cx231xx(struct cx231xx *dev ) ;
int cx231xx_send_usb_command(struct cx231xx_i2c *i2c_bus , struct cx231xx_i2c_xfer_data *req_data ) ;
int cx231xx_set_gpio_value(struct cx231xx *dev , int pin_number , int pin_value ) ;
int cx231xx_set_gpio_direction(struct cx231xx *dev , int pin_number , int pin_value ) ;
int cx231xx_gpio_i2c_read(struct cx231xx *dev , u8 dev_addr , u8 *buf , u8 len ) ;
int cx231xx_gpio_i2c_write(struct cx231xx *dev , u8 dev_addr , u8 *buf , u8 len ) ;
void cx231xx_remove_from_devlist(struct cx231xx *dev ) ;
void cx231xx_add_into_devlist(struct cx231xx *dev ) ;
void cx231xx_init_extension(struct cx231xx *dev ) ;
void cx231xx_close_extension(struct cx231xx *dev ) ;
int cx231xx_dev_init(struct cx231xx *dev ) ;
void cx231xx_dev_uninit(struct cx231xx *dev ) ;
int cx231xx_config(struct cx231xx *dev ) ;
int cx231xx_set_agc_analog_digital_mux_select(struct cx231xx *dev , u8 analog_or_digital ) ;
void cx231xx_pre_card_setup(struct cx231xx *dev ) ;
void cx231xx_card_setup(struct cx231xx *dev ) ;
struct usb_device_id cx231xx_id_table[30U] ;
unsigned int const cx231xx_bcount ;
int cx231xx_tuner_callback(void *ptr , int component , int command , int arg ) ;
int cx231xx_417_register(struct cx231xx *dev ) ;
int cx231xx_ir_init(struct cx231xx *dev ) ;
void cx231xx_ir_exit(struct cx231xx *dev ) ;
extern void tveeprom_hauppauge_analog(struct i2c_client * , struct tveeprom * , unsigned char * ) ;
static int transfer_mode = 1;
static unsigned long cx231xx_devused ;
static struct cx231xx_reg_seq RDE250_XCV_TUNER[4U] = { {3U, 1U, 10},
        {3U, 0U, 30},
        {3U, 1U, 10},
        {255U, 255U, -1}};
struct cx231xx_board cx231xx_boards[23U] =
  { {(char *)"Unknown CX231xx video grabber", 0, 4, 0, 0ULL, 0, (unsigned char)0,
      0, 0, 0, (signed char)0, (signed char)0, (signed char)0, 0U, (unsigned char)0,
      0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 0, 0, {{3, 3U, 0, (struct cx231xx_reg_seq *)0},
                                                 {1, 2U, 1, (struct cx231xx_reg_seq *)0},
                                                 {2, 2147483905U, 1, (struct cx231xx_reg_seq *)0}},
      {0, 0U, 0, 0}, 0},
        {(char *)"Conexant Hybrid TV - CARRAERA", 0, 76, 97, 255ULL, 2, 0U, 0, 0, (struct cx231xx_reg_seq *)(& RDE250_XCV_TUNER),
      5, 26, 27, 4294967236U, 12U, 67112960U, 4U, 2U, (unsigned char)0, 0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1, 2, {{3, 3U, 0, (struct cx231xx_reg_seq *)0},
                                                 {1, 2U, 1, (struct cx231xx_reg_seq *)0},
                                                 {2, 2147483905U, 1, (struct cx231xx_reg_seq *)0}},
      {0, 0U, 0, 0}, 0},
        {(char *)"Conexant Hybrid TV - SHELBY", 0, 76, 97, 45056ULL, 50, 0U, 0, 0, (struct cx231xx_reg_seq *)(& RDE250_XCV_TUNER),
      5, 26, 27, 4294967236U, 12U, 67112960U, 4U, 2U, (unsigned char)0, 0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1, 2, {{3, 3U, 0, (struct cx231xx_reg_seq *)0},
                                                 {1, 2U, 1, (struct cx231xx_reg_seq *)0},
                                                 {2, 2147483905U, 1, (struct cx231xx_reg_seq *)0}},
      {0, 0U, 0, 0}, 0},
        {(char *)"Conexant Hybrid TV - RDE253S", 0, 83, 96, 255ULL, 2, 0U, 0, 0, (struct cx231xx_reg_seq *)(& RDE250_XCV_TUNER),
      5, 26, 27, 4294967236U, 28U, 67112960U, 4U, 2U, (unsigned char)0, 0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1, 2, {{3, 3U, 0, (struct cx231xx_reg_seq *)0},
                                                 {1, 2U, 1, (struct cx231xx_reg_seq *)0},
                                                 {2, 2147483905U, 1, (struct cx231xx_reg_seq *)0}},
      {0, 0U, 0, 0}, 0},
        {(char *)"Conexant Hybrid TV - RDU253S", 0, 83, 96, 255ULL, 2, 0U, 0, 0, (struct cx231xx_reg_seq *)(& RDE250_XCV_TUNER),
      5, 26, 27, 4294967236U, 28U, 67112960U, 4U, 2U, (unsigned char)0, 0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1, 2, {{3, 3U, 0, (struct cx231xx_reg_seq *)0},
                                                 {1, 2U, 1, (struct cx231xx_reg_seq *)0},
                                                 {2, 2147483905U, 1, (struct cx231xx_reg_seq *)0}},
      {0, 0U, 0, 0}, 0},
        {(char *)"Conexant VIDEO GRABBER", 0, 4, 0, 255ULL, 0, (unsigned char)0, 0, 0,
      0, (signed char)0, (signed char)0, (signed char)0, 4294967236U, 28U, 67112960U,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 0, (unsigned char)0, (unsigned char)0,
      0U, (unsigned char)0, 1U, 1U, (unsigned char)0, (unsigned char)0, 1, 2, {{1,
                                                                                2U,
                                                                                1,
                                                                                (struct cx231xx_reg_seq *)0},
                                                                               {2,
                                                                                2147483905U,
                                                                                1,
                                                                                (struct cx231xx_reg_seq *)0}},
      {0, 0U, 0, 0}, 0},
        {(char *)"Conexant Hybrid TV - rde 250", 0, 76, 97, 255ULL, 2, 0U, 0, 0, (struct cx231xx_reg_seq *)(& RDE250_XCV_TUNER),
      5, 26, 27, 4294967236U, 12U, 67112960U, 4U, 2U, (unsigned char)0, 0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1, 2, {{3, 2U, 0, (struct cx231xx_reg_seq *)0}},
      {0, 0U, 0, 0}, 0},
        {(char *)"Conexant Hybrid TV - RDU 250", 0, 76, 97, 45056ULL, 50, 0U, 0, 0, (struct cx231xx_reg_seq *)(& RDE250_XCV_TUNER),
      5, 26, 27, 4294967236U, 12U, 67112960U, 4U, 2U, (unsigned char)0, 0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1, 2, {{3, 2U, 0, (struct cx231xx_reg_seq *)0}},
      {0, 0U, 0, 0}, 0},
        {(char *)"Hauppauge EXETER", 0, 83, 96, 45056ULL, 14, 0U, 0, 0, (struct cx231xx_reg_seq *)(& RDE250_XCV_TUNER),
      5, 26, 27, 4294967236U, 12U, 67112960U, 3U, 2U, (unsigned char)0, 0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1, 2, {{3, 3U, 0, (struct cx231xx_reg_seq *)0},
                                                 {1, 2U, 1, (struct cx231xx_reg_seq *)0},
                                                 {2, 2147483905U, 1, (struct cx231xx_reg_seq *)0}},
      {0, 0U, 0, 0}, 0},
        {(char *)"Hauppauge USB Live 2", 0, 4, 0, 45056ULL, 0, 0U, 0, 0, 0, (signed char)0,
      (signed char)0, (signed char)0, 4294967236U, 12U, 67112960U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, 1U, (unsigned char)0, (unsigned char)0, 1, 2, {{1, 2U,
                                                                            1, (struct cx231xx_reg_seq *)0},
                                                                           {2, 2147483905U,
                                                                            1, (struct cx231xx_reg_seq *)0}},
      {0, 0U, 0, 0}, 0},
        {(char *)"Pixelview PlayTV USB Hybrid", 0, 83, 96, 256ULL, 16, 0U, 0, 0, 0, -1,
      -1, -1, 4294967236U, 0U, 67112960U, 2U, 4U, 2U, (char *)"rc-pixelview-002t",
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 1, 2, {{3, 3U, 0, (struct cx231xx_reg_seq *)0},
                                                                   {1, 2U, 1, (struct cx231xx_reg_seq *)0},
                                                                   {2, 2147483905U,
                                                                    1, (struct cx231xx_reg_seq *)0}},
      {0, 0U, 0, 0}, 0},
        {(char *)"Pixelview Xcapture USB", 0, 4, 0, 45056ULL, 0, 0U, 0, 0, 0, (signed char)0,
      (signed char)0, (signed char)0, 4294967236U, 12U, 67112960U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, 1U, (unsigned char)0, (unsigned char)0, 1, 2, {{1, 2U,
                                                                            1, (struct cx231xx_reg_seq *)0},
                                                                           {2, 2147483905U,
                                                                            1, (struct cx231xx_reg_seq *)0}},
      {0, 0U, 0, 0}, 0},
        {(char *)"Kworld UB430 USB Hybrid", 0, 83, 96, 256ULL, 16, 0U, 0, 0, 0, -1, -1,
      -1, 4294967236U, 17U, 67112960U, 2U, 4U, 2U, 0, (unsigned char)0, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1, 2, {{3, 3U, 0, (struct cx231xx_reg_seq *)0}, {1, 2U, 1, (struct cx231xx_reg_seq *)0},
             {2, 2147483905U, 1, (struct cx231xx_reg_seq *)0}}, {0, 0U, 0, 0}, 0},
        {(char *)"Iconbit Analog Stick U100 FM",
      0, 4, 0, 0ULL, 0, 0U, 0, 0, 0, (signed char)0, (signed char)0, (signed char)0,
      4294967236U, 28U, 67112960U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 1, 2, {{1, 2U, 1, (struct cx231xx_reg_seq *)0},
                                                                   {2, 2147483905U,
                                                                    1, (struct cx231xx_reg_seq *)0}},
      {0, 0U, 0, 0}, 0},
        {(char *)"Hauppauge WinTV USB2 FM (PAL)", 0, 83, 96, 255ULL, 0, (unsigned char)0,
      0, 0, (struct cx231xx_reg_seq *)(& RDE250_XCV_TUNER), 5, 26, 27, 4294967236U,
      12U, 67112960U, 4U, (unsigned char)0, (unsigned char)0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1, 2, {{3, 3U, 0, (struct cx231xx_reg_seq *)0},
                                                 {1, 2U, 1, (struct cx231xx_reg_seq *)0},
                                                 {2, 2147483905U, 1, (struct cx231xx_reg_seq *)0}},
      {0, 0U, 0, 0}, 0},
        {(char *)"Hauppauge WinTV USB2 FM (NTSC)", 0, 83, 96, 45056ULL, 0, (unsigned char)0,
      0, 0, (struct cx231xx_reg_seq *)(& RDE250_XCV_TUNER), 5, 26, 27, 4294967236U,
      12U, 67112960U, 4U, (unsigned char)0, (unsigned char)0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1, 2, {{3, 3U, 0, (struct cx231xx_reg_seq *)0},
                                                 {1, 2U, 1, (struct cx231xx_reg_seq *)0},
                                                 {2, 2147483905U, 1, (struct cx231xx_reg_seq *)0}},
      {0, 0U, 0, 0}, 0},
        {(char *)"Elgato Video Capture V2", 0, 4, 0, 45056ULL, 0, 0U, 0, 0, 0, (signed char)0,
      (signed char)0, (signed char)0, 4294967236U, 12U, 67112960U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, 1U, (unsigned char)0, (unsigned char)0, 1, 2, {{1, 2U,
                                                                            1, (struct cx231xx_reg_seq *)0},
                                                                           {2, 2147483905U,
                                                                            1, (struct cx231xx_reg_seq *)0}},
      {0, 0U, 0, 0}, 0},
        {(char *)"Geniatech OTG102", 0, 4, 0, 45056ULL, 0, (unsigned char)0, 0, 0, 0,
      (signed char)0, (signed char)0, (signed char)0, 4294967236U, 12U, 67112960U,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, 1U, (unsigned char)0, (unsigned char)0,
      1, 2, {{1, 2U, 1, (struct cx231xx_reg_seq *)0}, {2, 2147483905U, 1, (struct cx231xx_reg_seq *)0}},
      {0, 0U, 0, 0}, 0},
        {(char *)"Kworld UB445 USB Hybrid", 0, 83, 96, 4096ULL, 16, 0U, 0, 0, 0, -1,
      -1, -1, 4294967236U, 17U, 67112960U, 2U, 4U, 2U, 0, (unsigned char)0, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1, 2, {{3, 3U, 0, (struct cx231xx_reg_seq *)0}, {1, 2U, 1, (struct cx231xx_reg_seq *)0},
             {2, 2147483905U, 1, (struct cx231xx_reg_seq *)0}}, {0, 0U, 0, 0}, 0},
        {(char *)"Hauppauge WinTV 930C-HD (1113xx) / HVR-900H (111xxx) / PCTV QuatroStick 521e",
      0, 83, 96, 255ULL, 14, 0U, 0, 0, (struct cx231xx_reg_seq *)(& RDE250_XCV_TUNER),
      5, 26, 27, 4294967236U, 12U, 67112960U, 4U, 2U, (unsigned char)0, 0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1, 2, {{3, 3U, 0, (struct cx231xx_reg_seq *)0},
                                                 {1, 2U, 1, (struct cx231xx_reg_seq *)0},
                                                 {2, 2147483905U, 1, (struct cx231xx_reg_seq *)0}},
      {0, 0U, 0, 0}, 0},
        {(char *)"Hauppauge WinTV 930C-HD (1114xx) / HVR-901H (1114xx) / PCTV QuatroStick 522e",
      0, 4, 96, 255ULL, 14, 0U, 0, 0, (struct cx231xx_reg_seq *)(& RDE250_XCV_TUNER),
      5, 26, 27, 4294967236U, 12U, 67112960U, 4U, 2U, (unsigned char)0, 0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1, 2, {{3, 3U, 0, (struct cx231xx_reg_seq *)0},
                                                 {1, 2U, 1, (struct cx231xx_reg_seq *)0},
                                                 {2, 2147483905U, 1, (struct cx231xx_reg_seq *)0}},
      {0, 0U, 0, 0}, 0},
        {(char *)"Hauppauge WinTV-HVR-955Q (111401)", 0, 4, 96, 45056ULL, 14, 0U, 0,
      0, (struct cx231xx_reg_seq *)(& RDE250_XCV_TUNER), 5, 26, 27, 4294967236U, 12U,
      67112960U, 4U, 2U, (unsigned char)0, 0, (unsigned char)0, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1, 2, {{3, 3U, 0, (struct cx231xx_reg_seq *)0}, {1, 2U, 1, (struct cx231xx_reg_seq *)0},
             {2, 2147483905U, 1, (struct cx231xx_reg_seq *)0}}, {0, 0U, 0, 0}, 0},
        {(char *)"Terratec Grabby",
      0, 4, 0, 255ULL, 0, 0U, 0, 0, 0, (signed char)0, (signed char)0, (signed char)0,
      4294967236U, 12U, 67112960U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U,
      1U, (unsigned char)0, (unsigned char)0, 1, 2, {{1, 2U, 1, (struct cx231xx_reg_seq *)0},
                                                     {2, 2147483905U, 1, (struct cx231xx_reg_seq *)0}},
      {0, 0U, 0, 0}, 0}};
unsigned int const cx231xx_bcount = 23U;
struct usb_device_id cx231xx_id_table[30U] =
  { {3U, 7449U, 24841U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      11UL},
        {3U, 1394U, 23100U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 1394U, 22690U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1394U, 22689U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      2UL},
        {3U, 1394U, 22692U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 1394U, 22693U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      4UL},
        {3U, 1394U, 22694U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      5UL},
        {3U, 1394U, 22686U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      6UL},
        {3U, 1394U, 22688U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      7UL},
        {3U, 8256U, 45328U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      14UL},
        {3U, 8256U, 45329U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      15UL},
        {3U, 8256U, 45344U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      8UL},
        {3U, 8256U, 45347U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      21UL},
        {3U, 8256U, 45360U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      19UL},
        {3U, 8256U, 45361U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      20UL},
        {3U, 8256U, 45368U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      19UL},
        {3U, 8256U, 45369U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      20UL},
        {3U, 8256U, 45376U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      8UL},
        {3U, 8256U, 49664U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 8211U, 601U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      19UL},
        {3U, 8211U, 606U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      20UL},
        {15U, 5460U, 20496U, 16384U, 16385U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 10UL},
        {3U,
      5460U, 20500U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      11UL},
        {3U, 7040U, 58404U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      12UL},
        {3U, 7040U, 58401U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      18UL},
        {3U, 8013U, 567U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      13UL},
        {3U, 4057U, 55U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      16UL},
        {3U, 8013U, 258U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      17UL},
        {3U, 3277U, 166U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      22UL}};
struct usb_device_id const __mod_usb__cx231xx_id_table_device_table[30U] ;
int cx231xx_tuner_callback(void *ptr , int component , int command , int arg )
{
  int rc ;
  struct cx231xx *dev ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  rc = 0;
  dev = (struct cx231xx *)ptr;
  if (dev->tuner_type == 76) {
    if (command == 0) {
      descriptor.modname = "cx231xx";
      descriptor.function = "cx231xx_tuner_callback";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-cards.c";
      descriptor.format = "Tuner CB: RESET: cmd %d : tuner type %d\n";
      descriptor.lineno = 929U;
      descriptor.flags = 0U;
      tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "Tuner CB: RESET: cmd %d : tuner type %d\n",
                          command, dev->tuner_type);
      } else {
      }
      cx231xx_set_gpio_value(dev, (int )(dev->board.tuner_gpio)->bit, 1);
      msleep(10U);
      cx231xx_set_gpio_value(dev, (int )(dev->board.tuner_gpio)->bit, 0);
      msleep(330U);
      cx231xx_set_gpio_value(dev, (int )(dev->board.tuner_gpio)->bit, 1);
      msleep(10U);
    } else {
    }
  } else
  if (dev->tuner_type == 83) {
    switch (command) {
    case 0: ;
    if (dev->model == 10) {
      rc = cx231xx_set_agc_analog_digital_mux_select(dev, (int )((u8 )arg));
    } else {
    }
    goto ldv_52147;
    default:
    rc = -22;
    goto ldv_52147;
    }
    ldv_52147: ;
  } else {
  }
  return (rc);
}
}
static char const __kstrtab_cx231xx_tuner_callback[23U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        't', 'u', 'n', 'e',
        'r', '_', 'c', 'a',
        'l', 'l', 'b', 'a',
        'c', 'k', '\000'};
struct kernel_symbol const __ksymtab_cx231xx_tuner_callback ;
struct kernel_symbol const __ksymtab_cx231xx_tuner_callback = {(unsigned long )(& cx231xx_tuner_callback), (char const *)(& __kstrtab_cx231xx_tuner_callback)};
static void cx231xx_reset_out(struct cx231xx *dev )
{
  {
  cx231xx_set_gpio_value(dev, 9, 1);
  msleep(200U);
  cx231xx_set_gpio_value(dev, 9, 0);
  msleep(200U);
  cx231xx_set_gpio_value(dev, 9, 1);
  return;
}
}
static void cx231xx_enable_OSC(struct cx231xx *dev )
{
  {
  cx231xx_set_gpio_value(dev, 8, 1);
  return;
}
}
static void cx231xx_sleep_s5h1432(struct cx231xx *dev )
{
  {
  cx231xx_set_gpio_value(dev, 30, 0);
  return;
}
}
__inline static void cx231xx_set_model(struct cx231xx *dev )
{
  {
  dev->board = cx231xx_boards[dev->model];
  return;
}
}
void cx231xx_pre_card_setup(struct cx231xx *dev )
{
  {
  _dev_info((struct device const *)dev->dev, "Identified as %s (card=%d)\n", dev->board.name,
            dev->model);
  if ((unsigned long )dev->board.tuner_gpio != (unsigned long )((struct cx231xx_reg_seq *)0)) {
    cx231xx_set_gpio_direction(dev, (int )(dev->board.tuner_gpio)->bit, 1);
    cx231xx_set_gpio_value(dev, (int )(dev->board.tuner_gpio)->bit, 1);
  } else {
  }
  if ((int )dev->board.tuner_sif_gpio >= 0) {
    cx231xx_set_gpio_direction(dev, (int )dev->board.tuner_sif_gpio, 1);
  } else {
  }
  cx231xx_set_mode(dev, 1);
  return;
}
}
static void cx231xx_config_tuner(struct cx231xx *dev )
{
  struct tuner_setup tun_setup ;
  struct v4l2_frequency f ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  if (dev->tuner_type == 4) {
    return;
  } else {
  }
  tun_setup.mode_mask = 6U;
  tun_setup.type = (unsigned int )dev->tuner_type;
  tun_setup.addr = (unsigned short )dev->tuner_addr;
  tun_setup.tuner_callback = & cx231xx_tuner_callback;
  if ((unsigned long )dev->sd_tuner != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((dev->sd_tuner)->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )(((dev->sd_tuner)->ops)->tuner)->s_type_addr != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                          struct tuner_setup * ))0)) {
      (*((((dev->sd_tuner)->ops)->tuner)->s_type_addr))(dev->sd_tuner, & tun_setup);
    } else {
    }
  } else {
  }
  f.tuner = 0U;
  f.type = 2U;
  f.frequency = 9076U;
  dev->ctl_freq = (int )f.frequency;
  __err = 0L;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_52187;
  ldv_52186: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                  struct v4l2_frequency const * ))0)) {
    tmp = (*(((__sd->ops)->tuner)->s_frequency))(__sd, (struct v4l2_frequency const *)(& f));
    __err = (long )tmp;
  } else {
  }
  if (__err != 0L && __err != -515L) {
    goto ldv_52185;
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_52187: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_52186;
  } else {
  }
  ldv_52185: ;
  return;
}
}
static int read_eeprom(struct cx231xx *dev , struct i2c_client *client , u8 *eedata ,
                       int len )
{
  int ret ;
  u8 start_offset ;
  int len_todo ;
  u8 *eedata_cur ;
  int i ;
  struct i2c_msg msg_write ;
  struct i2c_msg msg_read ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  ret = 0;
  start_offset = 0U;
  len_todo = len;
  eedata_cur = eedata;
  msg_write.addr = client->addr;
  msg_write.flags = 0U;
  msg_write.len = 1U;
  msg_write.buf = & start_offset;
  msg_read.addr = client->addr;
  msg_read.flags = 1U;
  msg_read.len = (unsigned short)0;
  msg_read.buf = 0;
  ret = i2c_transfer(client->adapter, & msg_write, 1);
  if (ret < 0) {
    dev_err((struct device const *)dev->dev, "Can\'t read eeprom\n");
    return (ret);
  } else {
  }
  goto ldv_52204;
  ldv_52203:
  msg_read.len = (__u16 )(64 < len_todo ? 64 : len_todo);
  msg_read.buf = eedata_cur;
  ret = i2c_transfer(client->adapter, & msg_read, 1);
  if (ret < 0) {
    dev_err((struct device const *)dev->dev, "Can\'t read eeprom\n");
    return (ret);
  } else {
  }
  eedata_cur = eedata_cur + (unsigned long )msg_read.len;
  len_todo = len_todo - (int )msg_read.len;
  ldv_52204: ;
  if (len_todo > 0) {
    goto ldv_52203;
  } else {
  }
  i = 0;
  goto ldv_52209;
  ldv_52208:
  descriptor.modname = "cx231xx";
  descriptor.function = "read_eeprom";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-cards.c";
  descriptor.format = "i2c eeprom %02x: %*ph\n";
  descriptor.lineno = 1077U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "i2c eeprom %02x: %*ph\n",
                      i, 16, eedata + (unsigned long )i);
  } else {
  }
  i = i + 16;
  ldv_52209: ;
  if (i + 15 < len) {
    goto ldv_52208;
  } else {
  }
  return (0);
}
}
void cx231xx_card_setup(struct cx231xx *dev )
{
  struct i2c_adapter *tmp ;
  struct i2c_adapter *tuner_i2c ;
  struct i2c_adapter *tmp___0 ;
  struct eeprom *e ;
  void *tmp___1 ;
  {
  cx231xx_set_model(dev);
  dev->tuner_type = cx231xx_boards[dev->model].tuner_type;
  if (cx231xx_boards[dev->model].tuner_addr != 0) {
    dev->tuner_addr = cx231xx_boards[dev->model].tuner_addr;
  } else {
  }
  if ((unsigned int )dev->board.decoder == 1U) {
    tmp = cx231xx_get_i2c_adap(dev, 0);
    dev->sd_cx25840 = v4l2_i2c_new_subdev(& dev->v4l2_dev, tmp, "cx25840", 68, (unsigned short const *)0U);
    if ((unsigned long )dev->sd_cx25840 == (unsigned long )((struct v4l2_subdev *)0)) {
      dev_err((struct device const *)dev->dev, "cx25840 subdev registration failure\n");
    } else {
    }
    if ((unsigned long )dev->sd_cx25840 != (unsigned long )((struct v4l2_subdev *)0)) {
      if ((unsigned long )((dev->sd_cx25840)->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )(((dev->sd_cx25840)->ops)->core)->load_fw != (unsigned long )((int (* )(struct v4l2_subdev * ))0)) {
        (*((((dev->sd_cx25840)->ops)->core)->load_fw))(dev->sd_cx25840);
      } else {
      }
    } else {
    }
  } else {
  }
  if (dev->board.tuner_type != 4) {
    tmp___0 = cx231xx_get_i2c_adap(dev, (int )dev->board.tuner_i2c_master);
    tuner_i2c = tmp___0;
    dev->sd_tuner = v4l2_i2c_new_subdev(& dev->v4l2_dev, tuner_i2c, "tuner", (int )((u8 )dev->tuner_addr),
                                        (unsigned short const *)0U);
    if ((unsigned long )dev->sd_tuner == (unsigned long )((struct v4l2_subdev *)0)) {
      dev_err((struct device const *)dev->dev, "tuner subdev registration failure\n");
    } else {
      cx231xx_config_tuner(dev);
    }
  } else {
  }
  switch (dev->model) {
  case 19: ;
  case 20: ;
  case 21:
  tmp___1 = kzalloc(1816UL, 208U);
  e = (struct eeprom *)tmp___1;
  if ((unsigned long )e == (unsigned long )((struct eeprom *)0)) {
    dev_err((struct device const *)dev->dev, "failed to allocate memory to read eeprom\n");
    goto ldv_52223;
  } else {
  }
  e->client.adapter = cx231xx_get_i2c_adap(dev, 3);
  e->client.addr = 80U;
  read_eeprom(dev, & e->client, (u8 *)(& e->eeprom), 256);
  tveeprom_hauppauge_analog(& e->client, & e->tvee, (unsigned char *)(& e->eeprom) + 192U);
  kfree((void const *)e);
  goto ldv_52223;
  }
  ldv_52223: ;
  return;
}
}
int cx231xx_config(struct cx231xx *dev )
{
  {
  return (0);
}
}
void cx231xx_config_i2c(struct cx231xx *dev )
{
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  __err = 0L;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_52238;
  ldv_52237: ;
  if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->s_stream != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                               int ))0)) {
    tmp = (*(((__sd->ops)->video)->s_stream))(__sd, 1);
    __err = (long )tmp;
  } else {
  }
  if (__err != 0L && __err != -515L) {
    goto ldv_52236;
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_52238: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_52237;
  } else {
  }
  ldv_52236: ;
  return;
}
}
static void cx231xx_unregister_media_device(struct cx231xx *dev )
{
  {
  if ((unsigned long )dev->media_dev != (unsigned long )((struct media_device *)0)) {
    media_device_unregister(dev->media_dev);
    kfree((void const *)dev->media_dev);
    dev->media_dev = (struct media_device *)0;
  } else {
  }
  return;
}
}
void cx231xx_release_resources(struct cx231xx *dev )
{
  {
  cx231xx_unregister_media_device(dev);
  cx231xx_release_analog_resources(dev);
  cx231xx_remove_from_devlist(dev);
  cx231xx_ir_exit(dev);
  cx231xx_dev_uninit(dev);
  v4l2_device_unregister(& dev->v4l2_dev);
  usb_put_dev(dev->udev);
  clear_bit((long )dev->devno, (unsigned long volatile *)(& cx231xx_devused));
  return;
}
}
static void cx231xx_media_device_register(struct cx231xx *dev , struct usb_device *udev )
{
  struct media_device *mdev ;
  int ret ;
  void *tmp ;
  {
  tmp = kzalloc(2176UL, 208U);
  mdev = (struct media_device *)tmp;
  if ((unsigned long )mdev == (unsigned long )((struct media_device *)0)) {
    return;
  } else {
  }
  mdev->dev = dev->dev;
  strlcpy((char *)(& mdev->model), (char const *)dev->board.name, 32UL);
  if ((unsigned long )udev->serial != (unsigned long )((char *)0)) {
    strlcpy((char *)(& mdev->serial), (char const *)udev->serial, 40UL);
  } else {
  }
  strcpy((char *)(& mdev->bus_info), (char const *)(& udev->devpath));
  mdev->hw_revision = (u32 )udev->descriptor.bcdDevice;
  mdev->driver_version = 262656U;
  ret = __media_device_register(mdev, & __this_module);
  if (ret != 0) {
    dev_err((struct device const *)dev->dev, "Couldn\'t create a media device. Error: %d\n",
            ret);
    kfree((void const *)mdev);
    return;
  } else {
  }
  dev->media_dev = mdev;
  return;
}
}
static void cx231xx_create_media_graph(struct cx231xx *dev )
{
  struct media_device *mdev ;
  struct media_entity *entity ;
  struct media_entity *tuner___0 ;
  struct media_entity *decoder ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  mdev = dev->media_dev;
  tuner___0 = (struct media_entity *)0;
  decoder = (struct media_entity *)0;
  if ((unsigned long )mdev == (unsigned long )((struct media_device *)0)) {
    return;
  } else {
  }
  __mptr = (struct list_head const *)mdev->entities.next;
  entity = (struct media_entity *)__mptr;
  goto ldv_52268;
  ldv_52267: ;
  switch (entity->type) {
  case 131077U:
  tuner___0 = entity;
  goto ldv_52265;
  case 131076U:
  decoder = entity;
  goto ldv_52265;
  }
  ldv_52265:
  __mptr___0 = (struct list_head const *)entity->list.next;
  entity = (struct media_entity *)__mptr___0;
  ldv_52268: ;
  if ((unsigned long )(& entity->list) != (unsigned long )(& mdev->entities)) {
    goto ldv_52267;
  } else {
  }
  if ((unsigned long )decoder == (unsigned long )((struct media_entity *)0)) {
    return;
  } else {
  }
  if ((unsigned long )tuner___0 != (unsigned long )((struct media_entity *)0)) {
    media_entity_create_link(tuner___0, 0, decoder, 0, 1U);
  } else {
  }
  media_entity_create_link(decoder, 1, & dev->vdev.entity, 0, 1U);
  media_entity_create_link(decoder, 2, & dev->vbi_dev.entity, 0, 1U);
  return;
}
}
static int cx231xx_init_dev(struct cx231xx *dev , struct usb_device *udev , int minor )
{
  int retval ;
  unsigned int maxh ;
  unsigned int maxw ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  struct lock_class_key __key___5 ;
  struct lock_class_key __key___6 ;
  struct lock_class_key __key___7 ;
  struct lock_class_key __key___8 ;
  int tmp ;
  {
  retval = -12;
  dev->udev = udev;
  __mutex_init(& dev->lock, "&dev->lock", & __key);
  __mutex_init(& dev->ctrl_urb_lock, "&dev->ctrl_urb_lock", & __key___0);
  __mutex_init(& dev->gpio_i2c_lock, "&dev->gpio_i2c_lock", & __key___1);
  __mutex_init(& dev->i2c_lock, "&dev->i2c_lock", & __key___2);
  spinlock_check(& dev->video_mode.slock);
  __raw_spin_lock_init(& dev->video_mode.slock.__annonCompField18.rlock, "&(&dev->video_mode.slock)->rlock",
                       & __key___3);
  spinlock_check(& dev->vbi_mode.slock);
  __raw_spin_lock_init(& dev->vbi_mode.slock.__annonCompField18.rlock, "&(&dev->vbi_mode.slock)->rlock",
                       & __key___4);
  spinlock_check(& dev->sliced_cc_mode.slock);
  __raw_spin_lock_init(& dev->sliced_cc_mode.slock.__annonCompField18.rlock, "&(&dev->sliced_cc_mode.slock)->rlock",
                       & __key___5);
  __init_waitqueue_head(& dev->open, "&dev->open", & __key___6);
  __init_waitqueue_head(& dev->wait_frame, "&dev->wait_frame", & __key___7);
  __init_waitqueue_head(& dev->wait_stream, "&dev->wait_stream", & __key___8);
  dev->cx231xx_read_ctrl_reg = & cx231xx_read_ctrl_reg;
  dev->cx231xx_write_ctrl_reg = & cx231xx_write_ctrl_reg;
  dev->cx231xx_send_usb_command = & cx231xx_send_usb_command;
  dev->cx231xx_gpio_i2c_read = & cx231xx_gpio_i2c_read;
  dev->cx231xx_gpio_i2c_write = & cx231xx_gpio_i2c_write;
  retval = initialize_cx231xx(dev);
  if (retval < 0) {
    dev_err((struct device const *)dev->dev, "Failed to read PCB config\n");
    return (retval);
  } else {
  }
  if (dev->model == 5 || dev->model == 9) {
    cx231xx_set_alt_setting(dev, 4, 3);
    cx231xx_set_alt_setting(dev, 5, 1);
  } else {
  }
  cx231xx_pre_card_setup(dev);
  retval = cx231xx_config(dev);
  if (retval != 0) {
    dev_err((struct device const *)dev->dev, "error configuring device\n");
    return (-12);
  } else {
  }
  dev->norm = dev->board.norm;
  retval = cx231xx_dev_init(dev);
  if (retval != 0) {
    dev_err((struct device const *)dev->dev, "%s: cx231xx_i2c_register - errCode [%d]!\n",
            "cx231xx_init_dev", retval);
    goto err_dev_init;
  } else {
  }
  cx231xx_card_setup(dev);
  cx231xx_config_i2c(dev);
  maxw = norm_maxw(dev);
  maxh = norm_maxh(dev);
  dev->width = (int )maxw;
  dev->height = (int )maxh;
  dev->interlaced = 0;
  dev->video_input = 0U;
  retval = cx231xx_config(dev);
  if (retval != 0) {
    dev_err((struct device const *)dev->dev, "%s: cx231xx_config - errCode [%d]!\n",
            "cx231xx_init_dev", retval);
    goto err_dev_init;
  } else {
  }
  INIT_LIST_HEAD(& dev->video_mode.vidq.active);
  INIT_LIST_HEAD(& dev->video_mode.vidq.queued);
  INIT_LIST_HEAD(& dev->vbi_mode.vidq.active);
  INIT_LIST_HEAD(& dev->vbi_mode.vidq.queued);
  cx231xx_add_into_devlist(dev);
  if ((unsigned int )*((unsigned char *)dev + 144UL) != 0U) {
    _dev_info((struct device const *)dev->dev, "attach 417 %d\n", dev->model);
    tmp = cx231xx_417_register(dev);
    if (tmp < 0) {
      dev_err((struct device const *)dev->dev, "%s() Failed to register 417 on VID_B\n",
              "cx231xx_init_dev");
    } else {
    }
  } else {
  }
  retval = cx231xx_register_analog_devices(dev);
  if (retval != 0) {
    goto err_analog;
  } else {
  }
  cx231xx_ir_init(dev);
  cx231xx_init_extension(dev);
  return (0);
  err_analog:
  cx231xx_unregister_media_device(dev);
  cx231xx_release_analog_resources(dev);
  cx231xx_remove_from_devlist(dev);
  err_dev_init:
  cx231xx_dev_uninit(dev);
  return (retval);
}
}
static void request_module_async(struct work_struct *work )
{
  struct cx231xx *dev ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  dev = (struct cx231xx *)__mptr + 0xffffffffffffd8a0UL;
  if ((unsigned int )*((unsigned char *)dev + 352UL) != 0U) {
    __request_module(1, "cx231xx-alsa");
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 144UL) != 0U) {
    __request_module(1, "cx231xx-dvb");
  } else {
  }
  return;
}
}
static void request_modules(struct cx231xx *dev )
{
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  __init_work(& dev->request_module_wk, 0);
  __constr_expr_0.counter = 137438953408L;
  dev->request_module_wk.data = __constr_expr_0;
  lockdep_init_map(& dev->request_module_wk.lockdep_map, "(&dev->request_module_wk)",
                   & __key, 0);
  INIT_LIST_HEAD(& dev->request_module_wk.entry);
  dev->request_module_wk.func = & request_module_async;
  schedule_work(& dev->request_module_wk);
  return;
}
}
static void flush_request_modules(struct cx231xx *dev )
{
  {
  ldv_flush_work_38(& dev->request_module_wk);
  return;
}
}
static int cx231xx_init_v4l2(struct cx231xx *dev , struct usb_device *udev , struct usb_interface *interface ,
                             int isoc_pipe )
{
  struct usb_interface *uif ;
  int i ;
  int idx ;
  void *tmp ;
  u16 tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  void *tmp___2 ;
  u16 tmp___3 ;
  struct _ddebug descriptor___0 ;
  long tmp___4 ;
  void *tmp___5 ;
  u16 tmp___6 ;
  struct _ddebug descriptor___1 ;
  long tmp___7 ;
  {
  idx = (int )dev->current_pcb_config.hs_config_info[0].interface_info.video_index + 1;
  if ((int )dev->max_iad_interface_count <= idx) {
    dev_err((struct device const *)dev->dev, "Video PCB interface #%d doesn\'t exist\n",
            idx);
    return (-19);
  } else {
  }
  uif = (udev->actconfig)->interface[idx];
  dev->video_mode.end_point_addr = (u16 )((uif->altsetting)->endpoint + (unsigned long )isoc_pipe)->desc.bEndpointAddress;
  dev->video_mode.num_alt = (int )uif->num_altsetting;
  _dev_info((struct device const *)dev->dev, "video EndPoint Addr 0x%x, Alternate settings: %i\n",
            (int )dev->video_mode.end_point_addr, dev->video_mode.num_alt);
  tmp = devm_kmalloc_array(& udev->dev, 32UL, (size_t )dev->video_mode.num_alt, 208U);
  dev->video_mode.alt_max_pkt_size = (unsigned int *)tmp;
  if ((unsigned long )dev->video_mode.alt_max_pkt_size == (unsigned long )((unsigned int *)0U)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_52318;
  ldv_52317:
  tmp___0 = ((uif->altsetting + (unsigned long )i)->endpoint + (unsigned long )isoc_pipe)->desc.wMaxPacketSize;
  *(dev->video_mode.alt_max_pkt_size + (unsigned long )i) = (unsigned int )(((int )tmp___0 & 2047) * ((((int )tmp___0 & 6144) >> 11) + 1));
  descriptor.modname = "cx231xx";
  descriptor.function = "cx231xx_init_v4l2";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-cards.c";
  descriptor.format = "Alternate setting %i, max size= %i\n";
  descriptor.lineno = 1467U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "Alternate setting %i, max size= %i\n",
                      i, *(dev->video_mode.alt_max_pkt_size + (unsigned long )i));
  } else {
  }
  i = i + 1;
  ldv_52318: ;
  if (dev->video_mode.num_alt > i) {
    goto ldv_52317;
  } else {
  }
  idx = (int )dev->current_pcb_config.hs_config_info[0].interface_info.vanc_index + 1;
  if ((int )dev->max_iad_interface_count <= idx) {
    dev_err((struct device const *)dev->dev, "VBI PCB interface #%d doesn\'t exist\n",
            idx);
    return (-19);
  } else {
  }
  uif = (udev->actconfig)->interface[idx];
  dev->vbi_mode.end_point_addr = (u16 )((uif->altsetting)->endpoint + (unsigned long )isoc_pipe)->desc.bEndpointAddress;
  dev->vbi_mode.num_alt = (int )uif->num_altsetting;
  _dev_info((struct device const *)dev->dev, "VBI EndPoint Addr 0x%x, Alternate settings: %i\n",
            (int )dev->vbi_mode.end_point_addr, dev->vbi_mode.num_alt);
  tmp___2 = devm_kmalloc_array(& udev->dev, 32UL, (size_t )dev->vbi_mode.num_alt,
                               208U);
  dev->vbi_mode.alt_max_pkt_size = (unsigned int *)tmp___2;
  if ((unsigned long )dev->vbi_mode.alt_max_pkt_size == (unsigned long )((unsigned int *)0U)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_52323;
  ldv_52322:
  tmp___3 = ((uif->altsetting + (unsigned long )i)->endpoint + (unsigned long )isoc_pipe)->desc.wMaxPacketSize;
  *(dev->vbi_mode.alt_max_pkt_size + (unsigned long )i) = (unsigned int )(((int )tmp___3 & 2047) * ((((int )tmp___3 & 6144) >> 11) + 1));
  descriptor___0.modname = "cx231xx";
  descriptor___0.function = "cx231xx_init_v4l2";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-cards.c";
  descriptor___0.format = "Alternate setting %i, max size= %i\n";
  descriptor___0.lineno = 1503U;
  descriptor___0.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev->dev, "Alternate setting %i, max size= %i\n",
                      i, *(dev->vbi_mode.alt_max_pkt_size + (unsigned long )i));
  } else {
  }
  i = i + 1;
  ldv_52323: ;
  if (dev->vbi_mode.num_alt > i) {
    goto ldv_52322;
  } else {
  }
  idx = (int )dev->current_pcb_config.hs_config_info[0].interface_info.hanc_index + 1;
  if ((int )dev->max_iad_interface_count <= idx) {
    dev_err((struct device const *)dev->dev, "Sliced CC PCB interface #%d doesn\'t exist\n",
            idx);
    return (-19);
  } else {
  }
  uif = (udev->actconfig)->interface[idx];
  dev->sliced_cc_mode.end_point_addr = (u16 )((uif->altsetting)->endpoint + (unsigned long )isoc_pipe)->desc.bEndpointAddress;
  dev->sliced_cc_mode.num_alt = (int )uif->num_altsetting;
  _dev_info((struct device const *)dev->dev, "sliced CC EndPoint Addr 0x%x, Alternate settings: %i\n",
            (int )dev->sliced_cc_mode.end_point_addr, dev->sliced_cc_mode.num_alt);
  tmp___5 = devm_kmalloc_array(& udev->dev, 32UL, (size_t )dev->sliced_cc_mode.num_alt,
                               208U);
  dev->sliced_cc_mode.alt_max_pkt_size = (unsigned int *)tmp___5;
  if ((unsigned long )dev->sliced_cc_mode.alt_max_pkt_size == (unsigned long )((unsigned int *)0U)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_52328;
  ldv_52327:
  tmp___6 = ((uif->altsetting + (unsigned long )i)->endpoint + (unsigned long )isoc_pipe)->desc.wMaxPacketSize;
  *(dev->sliced_cc_mode.alt_max_pkt_size + (unsigned long )i) = (unsigned int )(((int )tmp___6 & 2047) * ((((int )tmp___6 & 6144) >> 11) + 1));
  descriptor___1.modname = "cx231xx";
  descriptor___1.function = "cx231xx_init_v4l2";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-cards.c";
  descriptor___1.format = "Alternate setting %i, max size= %i\n";
  descriptor___1.lineno = 1537U;
  descriptor___1.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)dev->dev, "Alternate setting %i, max size= %i\n",
                      i, *(dev->sliced_cc_mode.alt_max_pkt_size + (unsigned long )i));
  } else {
  }
  i = i + 1;
  ldv_52328: ;
  if (dev->sliced_cc_mode.num_alt > i) {
    goto ldv_52327;
  } else {
  }
  return (0);
}
}
static int cx231xx_usb_probe(struct usb_interface *interface , struct usb_device_id const *id )
{
  struct usb_device *udev ;
  struct device *d ;
  struct usb_interface *uif ;
  struct cx231xx *dev ;
  int retval ;
  int nr ;
  int ifnum ;
  int i ;
  int isoc_pipe ;
  char *speed ;
  u8 idx ;
  struct usb_interface_assoc_descriptor *assoc_desc ;
  unsigned long tmp ;
  int tmp___0 ;
  struct usb_device *tmp___1 ;
  void *tmp___2 ;
  struct _ddebug descriptor ;
  long tmp___3 ;
  void *tmp___4 ;
  u16 tmp___5 ;
  struct _ddebug descriptor___0 ;
  long tmp___6 ;
  {
  d = & interface->dev;
  dev = (struct cx231xx *)0;
  retval = -19;
  nr = 0;
  isoc_pipe = 0;
  ifnum = (int )(interface->altsetting)->desc.bInterfaceNumber;
  if (ifnum != 1) {
    return (-19);
  } else {
  }
  ldv_52346:
  tmp = find_first_zero_bit((unsigned long const *)(& cx231xx_devused), 8UL);
  nr = (int )tmp;
  if (nr > 7) {
    dev_err((struct device const *)d, "Supports only %i devices.\n", 8);
    return (-12);
  } else {
  }
  tmp___0 = test_and_set_bit((long )nr, (unsigned long volatile *)(& cx231xx_devused));
  if (tmp___0 != 0) {
    goto ldv_52346;
  } else {
  }
  tmp___1 = interface_to_usbdev(interface);
  udev = usb_get_dev(tmp___1);
  tmp___2 = devm_kzalloc(& udev->dev, 20080UL, 208U);
  dev = (struct cx231xx *)tmp___2;
  if ((unsigned long )dev == (unsigned long )((struct cx231xx *)0)) {
    retval = -12;
    goto err_if;
  } else {
  }
  snprintf((char *)(& dev->name), 29UL, "cx231xx #%d", nr);
  dev->devno = nr;
  dev->model = (int )id->driver_info;
  dev->video_mode.alt = -1;
  dev->dev = d;
  cx231xx_set_model(dev);
  dev->interface_count = (u8 )((int )dev->interface_count + 1);
  dev->gpio_dir = 0U;
  dev->gpio_val = 0U;
  dev->xc_fw_load_done = 0U;
  dev->has_alsa_audio = 1U;
  dev->power_mode = -1;
  atomic_set(& dev->devlist_count, 0);
  dev->vbi_or_sliced_cc_mode = 0U;
  dev->max_iad_interface_count = (udev->config)->desc.bNumInterfaces;
  dev->mode_tv = 0U;
  dev->USE_ISO = (u8 )transfer_mode;
  switch ((unsigned int )udev->speed) {
  case 1U:
  speed = (char *)"1.5";
  goto ldv_52350;
  case 0U: ;
  case 2U:
  speed = (char *)"12";
  goto ldv_52350;
  case 3U:
  speed = (char *)"480";
  goto ldv_52350;
  default:
  speed = (char *)"unknown";
  }
  ldv_52350:
  _dev_info((struct device const *)d, "New device %s %s @ %s Mbps (%04x:%04x) with %d interfaces\n",
            (unsigned long )udev->manufacturer != (unsigned long )((char *)0) ? udev->manufacturer : (char *)"",
            (unsigned long )udev->product != (unsigned long )((char *)0) ? udev->product : (char *)"",
            speed, (int )udev->descriptor.idVendor, (int )udev->descriptor.idProduct,
            (int )dev->max_iad_interface_count);
  dev->interface_count = (u8 )((int )dev->interface_count + 1);
  nr = dev->devno;
  assoc_desc = (udev->actconfig)->intf_assoc[0];
  if ((int )assoc_desc->bFirstInterface != ifnum) {
    dev_err((struct device const *)d, "Not found matching IAD interface\n");
    retval = -19;
    goto err_if;
  } else {
  }
  descriptor.modname = "cx231xx";
  descriptor.function = "cx231xx_usb_probe";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-cards.c";
  descriptor.format = "registering interface %d\n";
  descriptor.lineno = 1658U;
  descriptor.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)d, "registering interface %d\n",
                      ifnum);
  } else {
  }
  usb_set_intfdata(interface, (void *)dev);
  cx231xx_media_device_register(dev, udev);
  dev->v4l2_dev.mdev = dev->media_dev;
  retval = v4l2_device_register(& interface->dev, & dev->v4l2_dev);
  if (retval != 0) {
    dev_err((struct device const *)d, "v4l2_device_register failed\n");
    goto err_v4l2;
  } else {
  }
  retval = cx231xx_init_dev(dev, udev, nr);
  if (retval != 0) {
    goto err_init;
  } else {
  }
  retval = cx231xx_init_v4l2(dev, udev, interface, isoc_pipe);
  if (retval != 0) {
    goto err_init;
  } else {
  }
  if (dev->current_pcb_config.ts1_source != 255U) {
    idx = (unsigned int )dev->current_pcb_config.hs_config_info[0].interface_info.ts1_index + 1U;
    if ((int )dev->max_iad_interface_count <= (int )idx) {
      dev_err((struct device const *)d, "TS1 PCB interface #%d doesn\'t exist\n",
              (int )idx);
      retval = -19;
      goto err_video_alt;
    } else {
    }
    uif = (udev->actconfig)->interface[(int )idx];
    dev->ts1_mode.end_point_addr = (u16 )((uif->altsetting)->endpoint + (unsigned long )isoc_pipe)->desc.bEndpointAddress;
    dev->ts1_mode.num_alt = (int )uif->num_altsetting;
    _dev_info((struct device const *)d, "TS EndPoint Addr 0x%x, Alternate settings: %i\n",
              (int )dev->ts1_mode.end_point_addr, dev->ts1_mode.num_alt);
    tmp___4 = devm_kmalloc_array(& udev->dev, 32UL, (size_t )dev->ts1_mode.num_alt,
                                 208U);
    dev->ts1_mode.alt_max_pkt_size = (unsigned int *)tmp___4;
    if ((unsigned long )dev->ts1_mode.alt_max_pkt_size == (unsigned long )((unsigned int *)0U)) {
      retval = -12;
      goto err_video_alt;
    } else {
    }
    i = 0;
    goto ldv_52363;
    ldv_52362:
    tmp___5 = ((uif->altsetting + (unsigned long )i)->endpoint + (unsigned long )isoc_pipe)->desc.wMaxPacketSize;
    *(dev->ts1_mode.alt_max_pkt_size + (unsigned long )i) = (unsigned int )(((int )tmp___5 & 2047) * ((((int )tmp___5 & 6144) >> 11) + 1));
    descriptor___0.modname = "cx231xx";
    descriptor___0.function = "cx231xx_usb_probe";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-cards.c";
    descriptor___0.format = "Alternate setting %i, max size= %i\n";
    descriptor___0.lineno = 1719U;
    descriptor___0.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)d, "Alternate setting %i, max size= %i\n",
                        i, *(dev->ts1_mode.alt_max_pkt_size + (unsigned long )i));
    } else {
    }
    i = i + 1;
    ldv_52363: ;
    if (dev->ts1_mode.num_alt > i) {
      goto ldv_52362;
    } else {
    }
  } else {
  }
  if (dev->model == 5) {
    cx231xx_enable_OSC(dev);
    cx231xx_reset_out(dev);
    cx231xx_set_alt_setting(dev, 4, 3);
  } else {
  }
  if (dev->model == 3) {
    cx231xx_sleep_s5h1432(dev);
  } else {
  }
  request_modules(dev);
  cx231xx_create_media_graph(dev);
  return (0);
  err_video_alt:
  cx231xx_close_extension(dev);
  cx231xx_ir_exit(dev);
  cx231xx_release_analog_resources(dev);
  cx231xx_417_unregister(dev);
  cx231xx_remove_from_devlist(dev);
  cx231xx_dev_uninit(dev);
  err_init:
  v4l2_device_unregister(& dev->v4l2_dev);
  err_v4l2:
  usb_set_intfdata(interface, (void *)0);
  err_if:
  usb_put_dev(udev);
  clear_bit((long )nr, (unsigned long volatile *)(& cx231xx_devused));
  return (retval);
}
}
static void cx231xx_usb_disconnect(struct usb_interface *interface )
{
  struct cx231xx *dev ;
  void *tmp ;
  char const *tmp___0 ;
  {
  tmp = usb_get_intfdata(interface);
  dev = (struct cx231xx *)tmp;
  usb_set_intfdata(interface, (void *)0);
  if ((unsigned long )dev == (unsigned long )((struct cx231xx *)0)) {
    return;
  } else {
  }
  if ((unsigned long )dev->udev == (unsigned long )((struct usb_device *)0)) {
    return;
  } else {
  }
  dev->state = (enum cx231xx_dev_state )((unsigned int )dev->state | 2U);
  flush_request_modules(dev);
  mutex_lock_nested(& dev->lock, 0U);
  __wake_up(& dev->open, 1U, 0, (void *)0);
  if (dev->users != 0) {
    tmp___0 = video_device_node_name(& dev->vdev);
    dev_warn((struct device const *)dev->dev, "device %s is open! Deregistration and memory deallocation are deferred on close.\n",
             tmp___0);
    cx231xx_ir_exit(dev);
    if ((unsigned int )dev->USE_ISO != 0U) {
      cx231xx_uninit_isoc(dev);
    } else {
      cx231xx_uninit_bulk(dev);
    }
    __wake_up(& dev->wait_frame, 1U, 1, (void *)0);
    __wake_up(& dev->wait_stream, 1U, 1, (void *)0);
  } else {
  }
  cx231xx_close_extension(dev);
  mutex_unlock(& dev->lock);
  if (dev->users == 0) {
    cx231xx_release_resources(dev);
  } else {
  }
  return;
}
}
static struct usb_driver cx231xx_usb_driver =
     {"cx231xx", & cx231xx_usb_probe, & cx231xx_usb_disconnect, 0, 0, 0, 0, 0, 0, (struct usb_device_id const *)(& cx231xx_id_table),
    {{{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, {{0, 0, 0, 0, (_Bool)0,
                                                                0, 0, 0, 0, 0, 0,
                                                                0, 0, 0, 0, 0}, 0},
    (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0};
static int cx231xx_usb_driver_init(void)
{
  int tmp ;
  {
  tmp = ldv_usb_register_driver_39(& cx231xx_usb_driver, & __this_module, "cx231xx");
  return (tmp);
}
}
static void cx231xx_usb_driver_exit(void)
{
  {
  ldv_usb_deregister_40(& cx231xx_usb_driver);
  return;
}
}
int ldv_retval_4 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
void call_and_disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 2 || ldv_work_1_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_0) {
    request_module_async(work);
    ldv_work_1_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_1 == 2 || ldv_work_1_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_1) {
    request_module_async(work);
    ldv_work_1_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_2 == 2 || ldv_work_1_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_2) {
    request_module_async(work);
    ldv_work_1_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_3 == 2 || ldv_work_1_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_3) {
    request_module_async(work);
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
void ldv_usb_driver_7(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1560UL);
  cx231xx_usb_driver_group1 = (struct usb_interface *)tmp;
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
    request_module_async(ldv_work_struct_1_0);
    ldv_work_1_0 = 1;
  } else {
  }
  goto ldv_52419;
  case 1: ;
  if (ldv_work_1_1 == 2 || ldv_work_1_1 == 3) {
    ldv_work_1_1 = 4;
    request_module_async(ldv_work_struct_1_0);
    ldv_work_1_1 = 1;
  } else {
  }
  goto ldv_52419;
  case 2: ;
  if (ldv_work_1_2 == 2 || ldv_work_1_2 == 3) {
    ldv_work_1_2 = 4;
    request_module_async(ldv_work_struct_1_0);
    ldv_work_1_2 = 1;
  } else {
  }
  goto ldv_52419;
  case 3: ;
  if (ldv_work_1_3 == 2 || ldv_work_1_3 == 3) {
    ldv_work_1_3 = 4;
    request_module_async(ldv_work_struct_1_0);
    ldv_work_1_3 = 1;
  } else {
  }
  goto ldv_52419;
  default:
  ldv_stop();
  }
  ldv_52419: ;
  return;
}
}
void ldv_main_exported_2(void) ;
void ldv_main_exported_6(void) ;
void ldv_main_exported_4(void) ;
void ldv_main_exported_3(void) ;
void ldv_main_exported_5(void) ;
int main(void)
{
  struct usb_device_id *ldvarg6 ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(32UL);
  ldvarg6 = (struct usb_device_id *)tmp;
  ldv_initialize();
  ldv_state_variable_6 = 0;
  ldv_state_variable_11 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_8 = 0;
  work_init_1();
  ldv_state_variable_1 = 1;
  ldv_state_variable_4 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_13 = 0;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 0;
  ldv_52484:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    ldv_main_exported_6();
  } else {
  }
  goto ldv_52459;
  case 1: ;
  if (ldv_state_variable_11 != 0) {
    ldv_main_exported_11();
  } else {
  }
  goto ldv_52459;
  case 2: ;
  if (ldv_state_variable_3 != 0) {
    ldv_main_exported_3();
  } else {
  }
  goto ldv_52459;
  case 3: ;
  if (ldv_state_variable_7 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      ldv_retval_1 = cx231xx_usb_probe(cx231xx_usb_driver_group1, (struct usb_device_id const *)ldvarg6);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_7 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_52464;
    case 1: ;
    if (ldv_state_variable_7 == 2 && usb_counter == 0) {
      cx231xx_usb_disconnect(cx231xx_usb_driver_group1);
      ldv_state_variable_7 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_52464;
    default:
    ldv_stop();
    }
    ldv_52464: ;
  } else {
  }
  goto ldv_52459;
  case 4: ;
  if (ldv_state_variable_9 != 0) {
    ldv_main_exported_9();
  } else {
  }
  goto ldv_52459;
  case 5: ;
  if (ldv_state_variable_12 != 0) {
    ldv_main_exported_12();
  } else {
  }
  goto ldv_52459;
  case 6: ;
  if (ldv_state_variable_2 != 0) {
    ldv_main_exported_2();
  } else {
  }
  goto ldv_52459;
  case 7: ;
  if (ldv_state_variable_14 != 0) {
    ldv_main_exported_14();
  } else {
  }
  goto ldv_52459;
  case 8: ;
  if (ldv_state_variable_8 != 0) {
    ldv_main_exported_8();
  } else {
  }
  goto ldv_52459;
  case 9: ;
  if (ldv_state_variable_1 != 0) {
    invoke_work_1();
  } else {
  }
  goto ldv_52459;
  case 10: ;
  if (ldv_state_variable_4 != 0) {
    ldv_main_exported_4();
  } else {
  }
  goto ldv_52459;
  case 11: ;
  if (ldv_state_variable_0 != 0) {
    tmp___2 = __VERIFIER_nondet_int();
    switch (tmp___2) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      cx231xx_usb_driver_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_52477;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_4 = cx231xx_usb_driver_init();
      if (ldv_retval_4 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_initialize_v4l2_file_operations_5();
        ldv_state_variable_10 = 1;
        ldv_initialize_v4l2_file_operations_10();
        ldv_state_variable_13 = 1;
        ldv_initialize_v4l2_file_operations_13();
        ldv_state_variable_4 = 1;
        ldv_initialize_v4l2_ioctl_ops_4();
        ldv_state_variable_8 = 1;
        ldv_initialize_i2c_algorithm_8();
        ldv_state_variable_14 = 1;
        ldv_videobuf_queue_ops_14();
        ldv_state_variable_2 = 1;
        ldv_videobuf_queue_ops_2();
        ldv_state_variable_12 = 1;
        ldv_initialize_v4l2_ioctl_ops_12();
        ldv_state_variable_9 = 1;
        ldv_initialize_v4l2_ioctl_ops_9();
        ldv_state_variable_3 = 1;
        ldv_initialize_cx2341x_handler_ops_3();
        ldv_state_variable_11 = 1;
        ldv_state_variable_6 = 1;
        ldv_videobuf_queue_ops_6();
      } else {
      }
      if (ldv_retval_4 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_52477;
    default:
    ldv_stop();
    }
    ldv_52477: ;
  } else {
  }
  goto ldv_52459;
  case 12: ;
  if (ldv_state_variable_13 != 0) {
    ldv_main_exported_13();
  } else {
  }
  goto ldv_52459;
  case 13: ;
  if (ldv_state_variable_10 != 0) {
    ldv_main_exported_10();
  } else {
  }
  goto ldv_52459;
  case 14: ;
  if (ldv_state_variable_5 != 0) {
    ldv_main_exported_5();
  } else {
  }
  goto ldv_52459;
  default:
  ldv_stop();
  }
  ldv_52459: ;
  goto ldv_52484;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
bool ldv_queue_work_on_33(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_34(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_35(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_36(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_37(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_flush_work_38(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = flush_work(ldv_func_arg1);
  ldv_func_res = tmp;
  call_and_disable_work_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_usb_register_driver_39(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = usb_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_7 = 1;
  usb_counter = 0;
  ldv_usb_driver_7();
  return (ldv_func_res);
}
}
void ldv_usb_deregister_40(struct usb_driver *arg )
{
  {
  usb_deregister(arg);
  ldv_state_variable_7 = 0;
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct pv_irq_ops pv_irq_ops ;
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
    ldv_4860: ;
    goto ldv_4860;
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
bool ldv_queue_work_on_53(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_55(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_54(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_57(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_56(struct workqueue_struct *ldv_func_arg1 ) ;
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
  int _min1 ;
  int _max1 ;
  int _max2 ;
  int _min2 ;
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  if ((unsigned int )dev->speed == 3U || (unsigned int )dev->speed == 5U) {
    _max1 = interval;
    _max2 = 1;
    _min1 = _max1 > _max2 ? _max1 : _max2;
    _min2 = 16;
    interval = _min1 < _min2 ? _min1 : _min2;
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
extern int usb_unlink_urb(struct urb * ) ;
extern void usb_kill_urb(struct urb * ) ;
extern void *usb_alloc_coherent(struct usb_device * , size_t , gfp_t , dma_addr_t * ) ;
extern void usb_free_coherent(struct usb_device * , size_t , void * , dma_addr_t ) ;
extern int usb_control_msg(struct usb_device * , unsigned int , __u8 , __u8 , __u16 ,
                           __u16 , void * , __u16 , int ) ;
extern int usb_bulk_msg(struct usb_device * , unsigned int , void * , int , int * ,
                        int ) ;
extern int usb_set_interface(struct usb_device * , int , int ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
}
}
struct list_head cx231xx_devlist ;
int cx231xx_read_i2c_master(struct cx231xx *dev , u8 dev_addr , u16 saddr , u8 saddr_len ,
                            u32 *data , u8 data_len , int master ) ;
int cx231xx_write_i2c_master(struct cx231xx *dev , u8 dev_addr , u16 saddr , u8 saddr_len ,
                             u32 data , u8 data_len , int master ) ;
int cx231xx_reg_mask_write(struct cx231xx *dev , u8 dev_addr , u8 size , u16 register_address ,
                           u8 bit_start , u8 bit_end , u32 value ) ;
int cx231xx_read_modify_write_i2c_dword(struct cx231xx *dev , u8 dev_addr , u16 saddr ,
                                        u32 mask , u32 value ) ;
u32 cx231xx_set_field(u32 field_mask , u32 data ) ;
int cx231xx_afe_init_super_block(struct cx231xx *dev , u32 ref_count ) ;
int cx231xx_afe_init_channels(struct cx231xx *dev ) ;
int cx231xx_i2s_blk_initialize(struct cx231xx *dev ) ;
int cx231xx_dif_set_standard(struct cx231xx *dev , u32 standard ) ;
int cx231xx_mode_register(struct cx231xx *dev , u16 address , u32 mode ) ;
int cx231xx_send_vendor_cmd(struct cx231xx *dev , struct VENDOR_REQUEST_IN *ven_req ) ;
int cx231xx_send_gpio_cmd(struct cx231xx *dev , u32 gpio_bit , u8 *gpio_val , u8 len ,
                          u8 request , u8 direction ) ;
int cx231xx_capture_start(struct cx231xx *dev , int start , u8 media_type ) ;
int is_fw_load(struct cx231xx *dev ) ;
int cx231xx_check_fw(struct cx231xx *dev ) ;
void cx231xx_stop_TS1(struct cx231xx *dev ) ;
void cx231xx_start_TS1(struct cx231xx *dev ) ;
int cx231xx_ep5_bulkout(struct cx231xx *dev , u8 *firmware , u16 size ) ;
int cx231xx_demod_reset(struct cx231xx *dev ) ;
int cx231xx_gpio_set(struct cx231xx *dev , struct cx231xx_reg_seq *gpio ) ;
int cx231xx_init_ctrl_pin_status(struct cx231xx *dev ) ;
int cx231xx_register_extension(struct cx231xx_ops *ops ) ;
void cx231xx_unregister_extension(struct cx231xx_ops *ops ) ;
static unsigned int core_debug ;
static unsigned int reg_debug ;
struct list_head cx231xx_devlist = {& cx231xx_devlist, & cx231xx_devlist};
static struct mutex cx231xx_devlist_mutex = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "cx231xx_devlist_mutex.wait_lock",
                                                          0, 0UL}}}}, {& cx231xx_devlist_mutex.wait_list,
                                                                       & cx231xx_devlist_mutex.wait_list},
    0, (void *)(& cx231xx_devlist_mutex), {0, {0, 0}, "cx231xx_devlist_mutex", 0,
                                           0UL}};
void cx231xx_remove_from_devlist(struct cx231xx *dev )
{
  int tmp ;
  {
  if ((unsigned long )dev == (unsigned long )((struct cx231xx *)0)) {
    return;
  } else {
  }
  if ((unsigned long )dev->udev == (unsigned long )((struct usb_device *)0)) {
    return;
  } else {
  }
  tmp = atomic_read((atomic_t const *)(& dev->devlist_count));
  if (tmp > 0) {
    mutex_lock_nested(& cx231xx_devlist_mutex, 0U);
    list_del(& dev->devlist);
    atomic_dec(& dev->devlist_count);
    mutex_unlock(& cx231xx_devlist_mutex);
  } else {
  }
  return;
}
}
void cx231xx_add_into_devlist(struct cx231xx *dev )
{
  {
  mutex_lock_nested(& cx231xx_devlist_mutex, 0U);
  list_add_tail(& dev->devlist, & cx231xx_devlist);
  atomic_inc(& dev->devlist_count);
  mutex_unlock(& cx231xx_devlist_mutex);
  return;
}
}
static struct list_head cx231xx_extension_devlist = {& cx231xx_extension_devlist, & cx231xx_extension_devlist};
int cx231xx_register_extension(struct cx231xx_ops *ops )
{
  struct cx231xx *dev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  dev = (struct cx231xx *)0;
  mutex_lock_nested(& cx231xx_devlist_mutex, 0U);
  list_add_tail(& ops->next, & cx231xx_extension_devlist);
  __mptr = (struct list_head const *)cx231xx_devlist.next;
  dev = (struct cx231xx *)__mptr + 0xfffffffffffff980UL;
  goto ldv_52037;
  ldv_52036:
  (*(ops->init))(dev);
  _dev_info((struct device const *)dev->dev, "%s initialized\n", ops->name);
  __mptr___0 = (struct list_head const *)dev->devlist.next;
  dev = (struct cx231xx *)__mptr___0 + 0xfffffffffffff980UL;
  ldv_52037: ;
  if ((unsigned long )(& dev->devlist) != (unsigned long )(& cx231xx_devlist)) {
    goto ldv_52036;
  } else {
  }
  mutex_unlock(& cx231xx_devlist_mutex);
  return (0);
}
}
static char const __kstrtab_cx231xx_register_extension[27U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        'r', 'e', 'g', 'i',
        's', 't', 'e', 'r',
        '_', 'e', 'x', 't',
        'e', 'n', 's', 'i',
        'o', 'n', '\000'};
struct kernel_symbol const __ksymtab_cx231xx_register_extension ;
struct kernel_symbol const __ksymtab_cx231xx_register_extension = {(unsigned long )(& cx231xx_register_extension), (char const *)(& __kstrtab_cx231xx_register_extension)};
void cx231xx_unregister_extension(struct cx231xx_ops *ops )
{
  struct cx231xx *dev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  dev = (struct cx231xx *)0;
  mutex_lock_nested(& cx231xx_devlist_mutex, 0U);
  __mptr = (struct list_head const *)cx231xx_devlist.next;
  dev = (struct cx231xx *)__mptr + 0xfffffffffffff980UL;
  goto ldv_52055;
  ldv_52054:
  (*(ops->fini))(dev);
  _dev_info((struct device const *)dev->dev, "%s removed\n", ops->name);
  __mptr___0 = (struct list_head const *)dev->devlist.next;
  dev = (struct cx231xx *)__mptr___0 + 0xfffffffffffff980UL;
  ldv_52055: ;
  if ((unsigned long )(& dev->devlist) != (unsigned long )(& cx231xx_devlist)) {
    goto ldv_52054;
  } else {
  }
  list_del(& ops->next);
  mutex_unlock(& cx231xx_devlist_mutex);
  return;
}
}
static char const __kstrtab_cx231xx_unregister_extension[29U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        'u', 'n', 'r', 'e',
        'g', 'i', 's', 't',
        'e', 'r', '_', 'e',
        'x', 't', 'e', 'n',
        's', 'i', 'o', 'n',
        '\000'};
struct kernel_symbol const __ksymtab_cx231xx_unregister_extension ;
struct kernel_symbol const __ksymtab_cx231xx_unregister_extension = {(unsigned long )(& cx231xx_unregister_extension), (char const *)(& __kstrtab_cx231xx_unregister_extension)};
void cx231xx_init_extension(struct cx231xx *dev )
{
  struct cx231xx_ops *ops ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  {
  ops = (struct cx231xx_ops *)0;
  mutex_lock_nested(& cx231xx_devlist_mutex, 0U);
  tmp = list_empty((struct list_head const *)(& cx231xx_extension_devlist));
  if (tmp == 0) {
    __mptr = (struct list_head const *)cx231xx_extension_devlist.next;
    ops = (struct cx231xx_ops *)__mptr;
    goto ldv_52073;
    ldv_52072: ;
    if ((unsigned long )ops->init != (unsigned long )((int (*)(struct cx231xx * ))0)) {
      (*(ops->init))(dev);
    } else {
    }
    __mptr___0 = (struct list_head const *)ops->next.next;
    ops = (struct cx231xx_ops *)__mptr___0;
    ldv_52073: ;
    if ((unsigned long )(& ops->next) != (unsigned long )(& cx231xx_extension_devlist)) {
      goto ldv_52072;
    } else {
    }
  } else {
  }
  mutex_unlock(& cx231xx_devlist_mutex);
  return;
}
}
void cx231xx_close_extension(struct cx231xx *dev )
{
  struct cx231xx_ops *ops ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  {
  ops = (struct cx231xx_ops *)0;
  mutex_lock_nested(& cx231xx_devlist_mutex, 0U);
  tmp = list_empty((struct list_head const *)(& cx231xx_extension_devlist));
  if (tmp == 0) {
    __mptr = (struct list_head const *)cx231xx_extension_devlist.next;
    ops = (struct cx231xx_ops *)__mptr;
    goto ldv_52084;
    ldv_52083: ;
    if ((unsigned long )ops->fini != (unsigned long )((int (*)(struct cx231xx * ))0)) {
      (*(ops->fini))(dev);
    } else {
    }
    __mptr___0 = (struct list_head const *)ops->next.next;
    ops = (struct cx231xx_ops *)__mptr___0;
    ldv_52084: ;
    if ((unsigned long )(& ops->next) != (unsigned long )(& cx231xx_extension_devlist)) {
      goto ldv_52083;
    } else {
    }
  } else {
  }
  mutex_unlock(& cx231xx_devlist_mutex);
  return;
}
}
int cx231xx_send_usb_command(struct cx231xx_i2c *i2c_bus , struct cx231xx_i2c_xfer_data *req_data )
{
  int status ;
  struct cx231xx *dev ;
  struct VENDOR_REQUEST_IN ven_req ;
  u8 saddr_len ;
  u8 _i2c_period ;
  u8 _i2c_nostop ;
  u8 _i2c_reserve ;
  {
  status = 0;
  dev = i2c_bus->dev;
  saddr_len = 0U;
  _i2c_period = 0U;
  _i2c_nostop = 0U;
  _i2c_reserve = 0U;
  if (((unsigned int )dev->state & 2U) != 0U) {
    return (-19);
  } else {
  }
  _i2c_period = i2c_bus->i2c_period;
  _i2c_nostop = i2c_bus->i2c_nostop;
  _i2c_reserve = i2c_bus->i2c_reserve;
  saddr_len = req_data->saddr_len;
  ven_req.wValue = (u16 )((((((int )((short )((int )req_data->dev_addr << 9)) | (int )((short )((int )_i2c_period << 4))) | (int )((short )((int )saddr_len << 2))) | (int )((short )((int )_i2c_nostop << 1))) | 1) | (int )((short )((int )_i2c_reserve << 6)));
  if ((int )req_data->direction & 1) {
    ven_req.bRequest = (unsigned int )((u8 )i2c_bus->nr) + 4U;
  } else {
    ven_req.bRequest = (u8 )i2c_bus->nr;
  }
  switch ((int )saddr_len) {
  case 0:
  ven_req.wIndex = 0U;
  goto ldv_52098;
  case 1:
  ven_req.wIndex = (unsigned int )req_data->saddr_dat & 255U;
  goto ldv_52098;
  case 2:
  ven_req.wIndex = req_data->saddr_dat;
  goto ldv_52098;
  }
  ldv_52098:
  ven_req.wLength = (u16 )req_data->buf_size;
  ven_req.bData = 0U;
  if ((unsigned int )req_data->direction != 0U) {
    ven_req.direction = 128U;
    memset((void *)req_data->p_buffer, 0, (size_t )ven_req.wLength);
  } else {
    ven_req.direction = 0U;
  }
  ven_req.pBuff = req_data->p_buffer;
  status = cx231xx_send_vendor_cmd(dev, & ven_req);
  if (status < 0 && (unsigned int )*((unsigned char *)dev + 352UL) == 0U) {
    dev_err((struct device const *)dev->dev, "%s: failed with status -%d\n", "cx231xx_send_usb_command",
            status);
  } else {
  }
  return (status);
}
}
static char const __kstrtab_cx231xx_send_usb_command[25U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        's', 'e', 'n', 'd',
        '_', 'u', 's', 'b',
        '_', 'c', 'o', 'm',
        'm', 'a', 'n', 'd',
        '\000'};
struct kernel_symbol const __ksymtab_cx231xx_send_usb_command ;
struct kernel_symbol const __ksymtab_cx231xx_send_usb_command = {(unsigned long )(& cx231xx_send_usb_command), (char const *)(& __kstrtab_cx231xx_send_usb_command)};
static int __usb_control_msg(struct cx231xx *dev , unsigned int pipe , __u8 request ,
                             __u8 requesttype , __u16 value , __u16 index , void *data ,
                             __u16 size , int timeout )
{
  int rc ;
  int i ;
  long tmp ;
  {
  if (reg_debug != 0U) {
    printk("\017%s: (pipe 0x%08x): %s:  %02x %02x %02x %02x %02x %02x %02x %02x ",
           (char *)(& dev->name), pipe, (int )((signed char )requesttype) < 0 ? (char *)"IN" : (char *)"OUT",
           (int )requesttype, (int )request, (int )value & 255, (int )value >> 8,
           (int )index & 255, (int )index >> 8, (int )size & 255, (int )size >> 8);
    if ((int )((signed char )requesttype) >= 0) {
      printk(">>>");
      i = 0;
      goto ldv_52124;
      ldv_52123:
      printk(" %02x", (int )*((unsigned char *)data + (unsigned long )i));
      i = i + 1;
      ldv_52124: ;
      if ((int )size > i) {
        goto ldv_52123;
      } else {
      }
    } else {
    }
  } else {
  }
  mutex_lock_nested(& dev->ctrl_urb_lock, 0U);
  if ((int )((signed char )requesttype) >= 0 && (unsigned int )size != 0U) {
    memcpy((void *)(& dev->urb_buf), (void const *)data, (size_t )size);
  } else {
  }
  rc = usb_control_msg(dev->udev, pipe, (int )request, (int )requesttype, (int )value,
                       (int )index, (void *)(& dev->urb_buf), (int )size, timeout);
  if ((int )((signed char )requesttype) < 0 && (unsigned int )size != 0U) {
    memcpy(data, (void const *)(& dev->urb_buf), (size_t )size);
  } else {
  }
  mutex_unlock(& dev->ctrl_urb_lock);
  if (reg_debug != 0U) {
    tmp = ldv__builtin_expect(rc < 0, 0L);
    if (tmp != 0L) {
      printk("FAILED!\n");
      return (rc);
    } else {
    }
    if ((int )((signed char )requesttype) < 0) {
      printk("<<<");
      i = 0;
      goto ldv_52127;
      ldv_52126:
      printk(" %02x", (int )*((unsigned char *)data + (unsigned long )i));
      i = i + 1;
      ldv_52127: ;
      if ((int )size > i) {
        goto ldv_52126;
      } else {
      }
    } else {
    }
    printk("\n");
  } else {
  }
  return (rc);
}
}
int cx231xx_read_ctrl_reg(struct cx231xx *dev , u8 req , u16 reg , char *buf , int len )
{
  u8 val ;
  int ret ;
  int pipe ;
  unsigned int tmp ;
  {
  val = 0U;
  tmp = __create_pipe(dev->udev, 0U);
  pipe = (int )(tmp | 2147483776U);
  if (((unsigned int )dev->state & 2U) != 0U) {
    return (-19);
  } else {
  }
  if (len > 80) {
    return (-22);
  } else {
  }
  switch (len) {
  case 1:
  val = 1U;
  goto ldv_52140;
  case 2:
  val = 3U;
  goto ldv_52140;
  case 3:
  val = 7U;
  goto ldv_52140;
  case 4:
  val = 15U;
  goto ldv_52140;
  default:
  val = 255U;
  }
  ldv_52140: ;
  if ((unsigned int )val == 255U) {
    return (-22);
  } else {
  }
  ret = __usb_control_msg(dev, (unsigned int )pipe, (int )req, 192, (int )val, (int )reg,
                          (void *)buf, (int )((__u16 )len), 250);
  return (ret);
}
}
int cx231xx_send_vendor_cmd(struct cx231xx *dev , struct VENDOR_REQUEST_IN *ven_req )
{
  int ret ;
  int pipe ;
  int unsend_size ;
  u8 *pdata ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  pipe = 0;
  unsend_size = 0;
  if (((unsigned int )dev->state & 2U) != 0U) {
    return (-19);
  } else {
  }
  if ((unsigned int )ven_req->wLength > 80U) {
    return (-22);
  } else {
  }
  if ((unsigned int )ven_req->direction != 0U) {
    tmp = __create_pipe(dev->udev, 0U);
    pipe = (int )(tmp | 2147483776U);
  } else {
    tmp___0 = __create_pipe(dev->udev, 0U);
    pipe = (int )(tmp___0 | 2147483648U);
  }
  if ((unsigned int )ven_req->wLength > 4U && (((unsigned int )ven_req->bRequest == 4U || (unsigned int )ven_req->bRequest == 5U) || (unsigned int )ven_req->bRequest == 6U)) {
    unsend_size = 0;
    pdata = ven_req->pBuff;
    unsend_size = (int )ven_req->wLength;
    ven_req->wValue = (unsigned int )ven_req->wValue & 65531U;
    ven_req->wValue = (u16 )(((int )((short )ven_req->wValue) & -67) | 2);
    ret = __usb_control_msg(dev, (unsigned int )pipe, (int )ven_req->bRequest, (int )((unsigned int )ven_req->direction | 64U),
                            (int )ven_req->wValue, (int )ven_req->wIndex, (void *)pdata,
                            4, 250);
    unsend_size = unsend_size + -4;
    ven_req->wValue = (unsigned int )ven_req->wValue | 66U;
    goto ldv_52154;
    ldv_52153:
    pdata = pdata + 4UL;
    ret = __usb_control_msg(dev, (unsigned int )pipe, (int )ven_req->bRequest, (int )((unsigned int )ven_req->direction | 64U),
                            (int )ven_req->wValue, (int )ven_req->wIndex, (void *)pdata,
                            4, 250);
    unsend_size = unsend_size + -4;
    ldv_52154: ;
    if (unsend_size + -4 > 0) {
      goto ldv_52153;
    } else {
    }
    ven_req->wValue = (u16 )(((int )((short )ven_req->wValue) & -67) | 64);
    pdata = pdata + 4UL;
    ret = __usb_control_msg(dev, (unsigned int )pipe, (int )ven_req->bRequest, (int )((unsigned int )ven_req->direction | 64U),
                            (int )ven_req->wValue, (int )ven_req->wIndex, (void *)pdata,
                            (int )((__u16 )unsend_size), 250);
  } else {
    ret = __usb_control_msg(dev, (unsigned int )pipe, (int )ven_req->bRequest, (int )((unsigned int )ven_req->direction | 64U),
                            (int )ven_req->wValue, (int )ven_req->wIndex, (void *)ven_req->pBuff,
                            (int )ven_req->wLength, 250);
  }
  return (ret);
}
}
int cx231xx_write_ctrl_reg(struct cx231xx *dev , u8 req , u16 reg , char *buf , int len )
{
  u8 val ;
  int ret ;
  int pipe ;
  unsigned int tmp ;
  int byte ;
  {
  val = 0U;
  tmp = __create_pipe(dev->udev, 0U);
  pipe = (int )(tmp | 2147483648U);
  if (((unsigned int )dev->state & 2U) != 0U) {
    return (-19);
  } else {
  }
  if (len <= 0 || len > 80) {
    return (-22);
  } else {
  }
  switch (len) {
  case 1:
  val = 1U;
  goto ldv_52167;
  case 2:
  val = 3U;
  goto ldv_52167;
  case 3:
  val = 7U;
  goto ldv_52167;
  case 4:
  val = 15U;
  goto ldv_52167;
  default:
  val = 255U;
  }
  ldv_52167: ;
  if ((unsigned int )val == 255U) {
    return (-22);
  } else {
  }
  if (reg_debug != 0U) {
    if (core_debug != 0U) {
      printk("\016%s %s :(pipe 0x%08x): OUT: %02x %02x %02x %02x %02x %02x %02x %02x >>>",
             (char *)(& dev->name), "cx231xx_write_ctrl_reg", pipe, 64, (int )req,
             0, (int )val, (int )reg & 255, (int )reg >> 8, len & 255, len >> 8);
    } else {
    }
    byte = 0;
    goto ldv_52175;
    ldv_52174: ;
    if (core_debug != 0U) {
      printk("\016%s %s : %02x", (char *)(& dev->name), "cx231xx_write_ctrl_reg",
             (int )((unsigned char )*(buf + (unsigned long )byte)));
    } else {
    }
    byte = byte + 1;
    ldv_52175: ;
    if (byte < len) {
      goto ldv_52174;
    } else {
    }
    if (core_debug != 0U) {
      printk("\016%s %s :\n", (char *)(& dev->name), "cx231xx_write_ctrl_reg");
    } else {
    }
  } else {
  }
  ret = __usb_control_msg(dev, (unsigned int )pipe, (int )req, 64, (int )val, (int )reg,
                          (void *)buf, (int )((__u16 )len), 250);
  return (ret);
}
}
int cx231xx_set_video_alternate(struct cx231xx *dev )
{
  int errCode ;
  int prev_alt ;
  unsigned int min_pkt_size ;
  u32 usb_interface_index ;
  {
  prev_alt = dev->video_mode.alt;
  min_pkt_size = (unsigned int )((dev->width + 2) * 2);
  usb_interface_index = 0U;
  if ((dev->width * 2) * dev->height > 345600) {
    min_pkt_size = min_pkt_size * 2U;
  } else {
  }
  if (dev->width > 360) {
    dev->video_mode.alt = 3;
  } else
  if (dev->width > 180) {
    dev->video_mode.alt = 2;
  } else
  if (dev->width > 0) {
    dev->video_mode.alt = 1;
  } else {
    dev->video_mode.alt = 0;
  }
  if ((unsigned int )dev->USE_ISO == 0U) {
    dev->video_mode.alt = 0;
  } else {
  }
  if (core_debug != 0U) {
    printk("\016%s %s :dev->video_mode.alt= %d\n", (char *)(& dev->name), "cx231xx_set_video_alternate",
           dev->video_mode.alt);
  } else {
  }
  usb_interface_index = (u32 )((int )dev->current_pcb_config.hs_config_info[0].interface_info.video_index + 1);
  if (dev->video_mode.alt != prev_alt) {
    if (core_debug != 0U) {
      printk("\016%s %s :minimum isoc packet size: %u (alt=%d)\n", (char *)(& dev->name),
             "cx231xx_set_video_alternate", min_pkt_size, dev->video_mode.alt);
    } else {
    }
    if ((unsigned long )dev->video_mode.alt_max_pkt_size != (unsigned long )((unsigned int *)0U)) {
      dev->video_mode.max_pkt_size = (int )*(dev->video_mode.alt_max_pkt_size + (unsigned long )dev->video_mode.alt);
    } else {
    }
    if (core_debug != 0U) {
      printk("\016%s %s :setting alternate %d with wMaxPacketSize=%u\n", (char *)(& dev->name),
             "cx231xx_set_video_alternate", dev->video_mode.alt, dev->video_mode.max_pkt_size);
    } else {
    }
    errCode = usb_set_interface(dev->udev, (int )usb_interface_index, dev->video_mode.alt);
    if (errCode < 0) {
      dev_err((struct device const *)dev->dev, "cannot change alt number to %d (error=%i)\n",
              dev->video_mode.alt, errCode);
      return (errCode);
    } else {
    }
  } else {
  }
  return (0);
}
}
int cx231xx_set_alt_setting(struct cx231xx *dev , u8 index , u8 alt___0 )
{
  int status ;
  u32 usb_interface_index ;
  u32 max_pkt_size ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  status = 0;
  usb_interface_index = 0U;
  max_pkt_size = 0U;
  switch ((int )index) {
  case 1:
  usb_interface_index = (u32 )((int )dev->current_pcb_config.hs_config_info[0].interface_info.ts1_index + 1);
  dev->ts1_mode.alt = (int )alt___0;
  if ((unsigned long )dev->ts1_mode.alt_max_pkt_size != (unsigned long )((unsigned int *)0U)) {
    tmp = (int )*(dev->ts1_mode.alt_max_pkt_size + (unsigned long )dev->ts1_mode.alt);
    dev->ts1_mode.max_pkt_size = tmp;
    max_pkt_size = (u32 )tmp;
  } else {
  }
  goto ldv_52194;
  case 2:
  usb_interface_index = (u32 )((int )dev->current_pcb_config.hs_config_info[0].interface_info.ts2_index + 1);
  goto ldv_52194;
  case 3:
  usb_interface_index = (u32 )((int )dev->current_pcb_config.hs_config_info[0].interface_info.audio_index + 1);
  dev->adev.alt = (int )alt___0;
  if ((unsigned long )dev->adev.alt_max_pkt_size != (unsigned long )((unsigned int *)0U)) {
    tmp___0 = (int )*(dev->adev.alt_max_pkt_size + (unsigned long )dev->adev.alt);
    dev->adev.max_pkt_size = tmp___0;
    max_pkt_size = (u32 )tmp___0;
  } else {
  }
  goto ldv_52194;
  case 4:
  usb_interface_index = (u32 )((int )dev->current_pcb_config.hs_config_info[0].interface_info.video_index + 1);
  dev->video_mode.alt = (int )alt___0;
  if ((unsigned long )dev->video_mode.alt_max_pkt_size != (unsigned long )((unsigned int *)0U)) {
    tmp___1 = (int )*(dev->video_mode.alt_max_pkt_size + (unsigned long )dev->video_mode.alt);
    dev->video_mode.max_pkt_size = tmp___1;
    max_pkt_size = (u32 )tmp___1;
  } else {
  }
  goto ldv_52194;
  case 5: ;
  if ((unsigned int )*((unsigned char *)dev + 144UL) != 0U) {
    return (0);
  } else {
  }
  usb_interface_index = (u32 )((int )dev->current_pcb_config.hs_config_info[0].interface_info.vanc_index + 1);
  dev->vbi_mode.alt = (int )alt___0;
  if ((unsigned long )dev->vbi_mode.alt_max_pkt_size != (unsigned long )((unsigned int *)0U)) {
    tmp___2 = (int )*(dev->vbi_mode.alt_max_pkt_size + (unsigned long )dev->vbi_mode.alt);
    dev->vbi_mode.max_pkt_size = tmp___2;
    max_pkt_size = (u32 )tmp___2;
  } else {
  }
  goto ldv_52194;
  case 6:
  usb_interface_index = (u32 )((int )dev->current_pcb_config.hs_config_info[0].interface_info.hanc_index + 1);
  dev->sliced_cc_mode.alt = (int )alt___0;
  if ((unsigned long )dev->sliced_cc_mode.alt_max_pkt_size != (unsigned long )((unsigned int *)0U)) {
    tmp___3 = (int )*(dev->sliced_cc_mode.alt_max_pkt_size + (unsigned long )dev->sliced_cc_mode.alt);
    dev->sliced_cc_mode.max_pkt_size = tmp___3;
    max_pkt_size = (u32 )tmp___3;
  } else {
  }
  goto ldv_52194;
  default: ;
  goto ldv_52194;
  }
  ldv_52194: ;
  if ((unsigned int )alt___0 != 0U && max_pkt_size == 0U) {
    dev_err((struct device const *)dev->dev, "can\'t change interface %d alt no. to %d: Max. Pkt size = 0\n",
            usb_interface_index, (int )alt___0);
    if ((unsigned int )*((unsigned char *)dev + 144UL) != 0U) {
      return (-1);
    } else {
    }
  } else {
  }
  if (core_debug != 0U) {
    printk("\016%s %s :setting alternate %d with wMaxPacketSize=%u,Interface = %d\n",
           (char *)(& dev->name), "cx231xx_set_alt_setting", (int )alt___0, max_pkt_size,
           usb_interface_index);
  } else {
  }
  if (usb_interface_index != 0U) {
    status = usb_set_interface(dev->udev, (int )usb_interface_index, (int )alt___0);
    if (status < 0) {
      dev_err((struct device const *)dev->dev, "can\'t change interface %d alt no. to %d (err=%i)\n",
              usb_interface_index, (int )alt___0, status);
      return (status);
    } else {
    }
  } else {
  }
  return (status);
}
}
static char const __kstrtab_cx231xx_set_alt_setting[24U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        's', 'e', 't', '_',
        'a', 'l', 't', '_',
        's', 'e', 't', 't',
        'i', 'n', 'g', '\000'};
struct kernel_symbol const __ksymtab_cx231xx_set_alt_setting ;
struct kernel_symbol const __ksymtab_cx231xx_set_alt_setting = {(unsigned long )(& cx231xx_set_alt_setting), (char const *)(& __kstrtab_cx231xx_set_alt_setting)};
int cx231xx_gpio_set(struct cx231xx *dev , struct cx231xx_reg_seq *gpio )
{
  int rc ;
  {
  rc = 0;
  if ((unsigned long )gpio == (unsigned long )((struct cx231xx_reg_seq *)0)) {
    return (rc);
  } else {
  }
  goto ldv_52217;
  ldv_52216:
  rc = cx231xx_set_gpio_value(dev, (int )gpio->bit, (int )gpio->val);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if (gpio->sleep > 0) {
    msleep((unsigned int )gpio->sleep);
  } else {
  }
  gpio = gpio + 1;
  ldv_52217: ;
  if (gpio->sleep >= 0) {
    goto ldv_52216;
  } else {
  }
  return (rc);
}
}
int cx231xx_demod_reset(struct cx231xx *dev )
{
  u8 status ;
  u8 value[4U] ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  status = 0U;
  value[0] = 0U;
  value[1] = 0U;
  value[2] = 0U;
  value[3] = 0U;
  tmp = cx231xx_read_ctrl_reg(dev, 13, 116, (char *)(& value), 4);
  status = (u8 )tmp;
  if (core_debug != 0U) {
    printk("\016%s %s :reg0x%x=0x%x 0x%x 0x%x 0x%x\n", (char *)(& dev->name), "cx231xx_demod_reset",
           116, (int )value[0], (int )value[1], (int )value[2], (int )value[3]);
  } else {
  }
  if (core_debug != 0U) {
    printk("\016%s %s :Enter cx231xx_demod_reset()\n", (char *)(& dev->name), "cx231xx_demod_reset");
  } else {
  }
  value[1] = 3U;
  tmp___0 = cx231xx_write_ctrl_reg(dev, 12, 116, (char *)(& value), 4);
  status = (u8 )tmp___0;
  msleep(10U);
  value[1] = 0U;
  tmp___1 = cx231xx_write_ctrl_reg(dev, 12, 116, (char *)(& value), 4);
  status = (u8 )tmp___1;
  msleep(10U);
  value[1] = 3U;
  tmp___2 = cx231xx_write_ctrl_reg(dev, 12, 116, (char *)(& value), 4);
  status = (u8 )tmp___2;
  msleep(10U);
  tmp___3 = cx231xx_read_ctrl_reg(dev, 13, 116, (char *)(& value), 4);
  status = (u8 )tmp___3;
  if (core_debug != 0U) {
    printk("\016%s %s :reg0x%x=0x%x 0x%x 0x%x 0x%x\n", (char *)(& dev->name), "cx231xx_demod_reset",
           116, (int )value[0], (int )value[1], (int )value[2], (int )value[3]);
  } else {
  }
  return ((int )status);
}
}
static char const __kstrtab_cx231xx_demod_reset[20U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        'd', 'e', 'm', 'o',
        'd', '_', 'r', 'e',
        's', 'e', 't', '\000'};
struct kernel_symbol const __ksymtab_cx231xx_demod_reset ;
struct kernel_symbol const __ksymtab_cx231xx_demod_reset = {(unsigned long )(& cx231xx_demod_reset), (char const *)(& __kstrtab_cx231xx_demod_reset)};
int is_fw_load(struct cx231xx *dev )
{
  int tmp ;
  {
  tmp = cx231xx_check_fw(dev);
  return (tmp);
}
}
static char const __kstrtab_is_fw_load[11U] =
  { 'i', 's', '_', 'f',
        'w', '_', 'l', 'o',
        'a', 'd', '\000'};
struct kernel_symbol const __ksymtab_is_fw_load ;
struct kernel_symbol const __ksymtab_is_fw_load = {(unsigned long )(& is_fw_load), (char const *)(& __kstrtab_is_fw_load)};
int cx231xx_set_mode(struct cx231xx *dev , enum cx231xx_mode set_mode )
{
  int errCode ;
  {
  errCode = 0;
  if ((unsigned int )dev->mode == (unsigned int )set_mode) {
    return (0);
  } else {
  }
  if ((unsigned int )set_mode == 0U) {
    dev->mode = set_mode;
  } else {
  }
  if ((unsigned int )dev->mode != 0U) {
    return (-22);
  } else {
  }
  dev->mode = set_mode;
  if ((unsigned int )dev->mode == 2U) {
    switch (dev->model) {
    case 1: ;
    case 6: ;
    case 2: ;
    case 7:
    errCode = cx231xx_set_agc_analog_digital_mux_select(dev, 0);
    goto ldv_52251;
    case 3: ;
    case 4:
    errCode = cx231xx_set_agc_analog_digital_mux_select(dev, 1);
    goto ldv_52251;
    case 8: ;
    case 19:
    errCode = cx231xx_set_power_mode(dev, 16);
    goto ldv_52251;
    default: ;
    goto ldv_52251;
    }
    ldv_52251: ;
  } else {
    switch (dev->model) {
    case 1: ;
    case 6: ;
    case 2: ;
    case 7:
    errCode = cx231xx_set_agc_analog_digital_mux_select(dev, 1);
    goto ldv_52261;
    case 3: ;
    case 4: ;
    case 8: ;
    case 19: ;
    case 10: ;
    case 14: ;
    case 15:
    errCode = cx231xx_set_agc_analog_digital_mux_select(dev, 0);
    goto ldv_52261;
    default: ;
    goto ldv_52261;
    }
    ldv_52261: ;
  }
  return (errCode != 0 ? -22 : 0);
}
}
static char const __kstrtab_cx231xx_set_mode[17U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        's', 'e', 't', '_',
        'm', 'o', 'd', 'e',
        '\000'};
struct kernel_symbol const __ksymtab_cx231xx_set_mode ;
struct kernel_symbol const __ksymtab_cx231xx_set_mode = {(unsigned long )(& cx231xx_set_mode), (char const *)(& __kstrtab_cx231xx_set_mode)};
int cx231xx_ep5_bulkout(struct cx231xx *dev , u8 *firmware , u16 size )
{
  int errCode ;
  int actlen ;
  int ret ;
  u32 *buffer ;
  void *tmp ;
  unsigned int tmp___0 ;
  {
  errCode = 0;
  ret = -12;
  tmp = kzalloc(4096UL, 208U);
  buffer = (u32 *)tmp;
  if ((unsigned long )buffer == (unsigned long )((u32 *)0U)) {
    return (-12);
  } else {
  }
  memcpy((void *)buffer, (void const *)firmware, 4096UL);
  tmp___0 = __create_pipe(dev->udev, 5U);
  ret = usb_bulk_msg(dev->udev, tmp___0 | 3221225472U, (void *)buffer, 4096, & actlen,
                     2000);
  if (ret != 0) {
    dev_err((struct device const *)dev->dev, "bulk message failed: %d (%d/%d)",
            ret, (int )size, actlen);
  } else {
    errCode = (int )size != actlen ? -1 : 0;
  }
  kfree((void const *)buffer);
  return (errCode);
}
}
static void cx231xx_isoc_irq_callback(struct urb *urb )
{
  struct cx231xx_dmaqueue *dma_q ;
  struct cx231xx_video_mode *vmode ;
  struct cx231xx_dmaqueue const *__mptr ;
  struct cx231xx *dev ;
  struct cx231xx_video_mode const *__mptr___0 ;
  int i ;
  {
  dma_q = (struct cx231xx_dmaqueue *)urb->context;
  __mptr = (struct cx231xx_dmaqueue const *)dma_q;
  vmode = (struct cx231xx_video_mode *)__mptr;
  __mptr___0 = (struct cx231xx_video_mode const *)vmode;
  dev = (struct cx231xx *)__mptr___0 + 0xffffffffffffc660UL;
  switch (urb->status) {
  case 0: ;
  case -110: ;
  goto ldv_52300;
  case -104: ;
  case -2: ;
  case -108: ;
  return;
  default: ;
  if (core_debug != 0U) {
    printk("\016%s %s :urb completition error %d.\n", (char *)(& dev->name), "cx231xx_isoc_irq_callback",
           urb->status);
  } else {
  }
  goto ldv_52300;
  }
  ldv_52300:
  spin_lock(& dev->video_mode.slock);
  (*(dev->video_mode.isoc_ctl.isoc_copy))(dev, urb);
  spin_unlock(& dev->video_mode.slock);
  i = 0;
  goto ldv_52307;
  ldv_52306:
  urb->iso_frame_desc[i].status = 0;
  urb->iso_frame_desc[i].actual_length = 0U;
  i = i + 1;
  ldv_52307: ;
  if (urb->number_of_packets > i) {
    goto ldv_52306;
  } else {
  }
  urb->status = usb_submit_urb(urb, 32U);
  if (urb->status != 0) {
    if (core_debug != 0U) {
      printk("\016%s %s :urb resubmit failed (error=%i)\n", (char *)(& dev->name),
             "cx231xx_isoc_irq_callback", urb->status);
    } else {
    }
  } else {
  }
  return;
}
}
static void cx231xx_bulk_irq_callback(struct urb *urb )
{
  struct cx231xx_dmaqueue *dma_q ;
  struct cx231xx_video_mode *vmode ;
  struct cx231xx_dmaqueue const *__mptr ;
  struct cx231xx *dev ;
  struct cx231xx_video_mode const *__mptr___0 ;
  {
  dma_q = (struct cx231xx_dmaqueue *)urb->context;
  __mptr = (struct cx231xx_dmaqueue const *)dma_q;
  vmode = (struct cx231xx_video_mode *)__mptr;
  __mptr___0 = (struct cx231xx_video_mode const *)vmode;
  dev = (struct cx231xx *)__mptr___0 + 0xffffffffffffc660UL;
  switch (urb->status) {
  case 0: ;
  case -110: ;
  goto ldv_52321;
  case -104: ;
  case -2: ;
  case -108: ;
  return;
  default: ;
  if (core_debug != 0U) {
    printk("\016%s %s :urb completition error %d.\n", (char *)(& dev->name), "cx231xx_bulk_irq_callback",
           urb->status);
  } else {
  }
  goto ldv_52321;
  }
  ldv_52321:
  spin_lock(& dev->video_mode.slock);
  (*(dev->video_mode.bulk_ctl.bulk_copy))(dev, urb);
  spin_unlock(& dev->video_mode.slock);
  urb->status = usb_submit_urb(urb, 32U);
  if (urb->status != 0) {
    if (core_debug != 0U) {
      printk("\016%s %s :urb resubmit failed (error=%i)\n", (char *)(& dev->name),
             "cx231xx_bulk_irq_callback", urb->status);
    } else {
    }
  } else {
  }
  return;
}
}
void cx231xx_uninit_isoc(struct cx231xx *dev )
{
  struct cx231xx_dmaqueue *dma_q ;
  struct urb *urb ;
  int i ;
  unsigned long _flags ;
  int tmp ;
  {
  dma_q = & dev->video_mode.vidq;
  if (core_debug != 0U) {
    printk("\016%s %s :cx231xx: called cx231xx_uninit_isoc\n", (char *)(& dev->name),
           "cx231xx_uninit_isoc");
  } else {
  }
  dev->video_mode.isoc_ctl.nfields = -1;
  i = 0;
  goto ldv_52344;
  ldv_52343:
  urb = *(dev->video_mode.isoc_ctl.urb + (unsigned long )i);
  if ((unsigned long )urb != (unsigned long )((struct urb *)0)) {
    _flags = arch_local_save_flags();
    tmp = arch_irqs_disabled_flags(_flags);
    if (tmp == 0) {
      usb_kill_urb(urb);
    } else {
      usb_unlink_urb(urb);
    }
    if ((unsigned long )*(dev->video_mode.isoc_ctl.transfer_buffer + (unsigned long )i) != (unsigned long )((char *)0)) {
      usb_free_coherent(dev->udev, (size_t )urb->transfer_buffer_length, (void *)*(dev->video_mode.isoc_ctl.transfer_buffer + (unsigned long )i),
                        urb->transfer_dma);
    } else {
    }
    usb_free_urb(urb);
    *(dev->video_mode.isoc_ctl.urb + (unsigned long )i) = (struct urb *)0;
  } else {
  }
  *(dev->video_mode.isoc_ctl.transfer_buffer + (unsigned long )i) = (char *)0;
  i = i + 1;
  ldv_52344: ;
  if (dev->video_mode.isoc_ctl.num_bufs > i) {
    goto ldv_52343;
  } else {
  }
  kfree((void const *)dev->video_mode.isoc_ctl.urb);
  kfree((void const *)dev->video_mode.isoc_ctl.transfer_buffer);
  kfree((void const *)dma_q->p_left_data);
  dev->video_mode.isoc_ctl.urb = (struct urb **)0;
  dev->video_mode.isoc_ctl.transfer_buffer = (char **)0;
  dev->video_mode.isoc_ctl.num_bufs = 0;
  dma_q->p_left_data = (u8 *)0U;
  if ((unsigned int )dev->mode_tv == 0U) {
    cx231xx_capture_start(dev, 0, 0);
  } else {
    cx231xx_capture_start(dev, 0, 4);
  }
  return;
}
}
static char const __kstrtab_cx231xx_uninit_isoc[20U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        'u', 'n', 'i', 'n',
        'i', 't', '_', 'i',
        's', 'o', 'c', '\000'};
struct kernel_symbol const __ksymtab_cx231xx_uninit_isoc ;
struct kernel_symbol const __ksymtab_cx231xx_uninit_isoc = {(unsigned long )(& cx231xx_uninit_isoc), (char const *)(& __kstrtab_cx231xx_uninit_isoc)};
void cx231xx_uninit_bulk(struct cx231xx *dev )
{
  struct urb *urb ;
  int i ;
  unsigned long _flags ;
  int tmp ;
  {
  if (core_debug != 0U) {
    printk("\016%s %s :cx231xx: called cx231xx_uninit_bulk\n", (char *)(& dev->name),
           "cx231xx_uninit_bulk");
  } else {
  }
  dev->video_mode.bulk_ctl.nfields = -1;
  i = 0;
  goto ldv_52369;
  ldv_52368:
  urb = *(dev->video_mode.bulk_ctl.urb + (unsigned long )i);
  if ((unsigned long )urb != (unsigned long )((struct urb *)0)) {
    _flags = arch_local_save_flags();
    tmp = arch_irqs_disabled_flags(_flags);
    if (tmp == 0) {
      usb_kill_urb(urb);
    } else {
      usb_unlink_urb(urb);
    }
    if ((unsigned long )*(dev->video_mode.bulk_ctl.transfer_buffer + (unsigned long )i) != (unsigned long )((char *)0)) {
      usb_free_coherent(dev->udev, (size_t )urb->transfer_buffer_length, (void *)*(dev->video_mode.isoc_ctl.transfer_buffer + (unsigned long )i),
                        urb->transfer_dma);
    } else {
    }
    usb_free_urb(urb);
    *(dev->video_mode.bulk_ctl.urb + (unsigned long )i) = (struct urb *)0;
  } else {
  }
  *(dev->video_mode.bulk_ctl.transfer_buffer + (unsigned long )i) = (char *)0;
  i = i + 1;
  ldv_52369: ;
  if (dev->video_mode.bulk_ctl.num_bufs > i) {
    goto ldv_52368;
  } else {
  }
  kfree((void const *)dev->video_mode.bulk_ctl.urb);
  kfree((void const *)dev->video_mode.bulk_ctl.transfer_buffer);
  dev->video_mode.bulk_ctl.urb = (struct urb **)0;
  dev->video_mode.bulk_ctl.transfer_buffer = (char **)0;
  dev->video_mode.bulk_ctl.num_bufs = 0;
  if ((unsigned int )dev->mode_tv == 0U) {
    cx231xx_capture_start(dev, 0, 0);
  } else {
    cx231xx_capture_start(dev, 0, 4);
  }
  return;
}
}
static char const __kstrtab_cx231xx_uninit_bulk[20U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        'u', 'n', 'i', 'n',
        'i', 't', '_', 'b',
        'u', 'l', 'k', '\000'};
struct kernel_symbol const __ksymtab_cx231xx_uninit_bulk ;
struct kernel_symbol const __ksymtab_cx231xx_uninit_bulk = {(unsigned long )(& cx231xx_uninit_bulk), (char const *)(& __kstrtab_cx231xx_uninit_bulk)};
int cx231xx_init_isoc(struct cx231xx *dev , int max_packets , int num_bufs , int max_pkt_size ,
                      int (*isoc_copy)(struct cx231xx * , struct urb * ) )
{
  struct cx231xx_dmaqueue *dma_q ;
  int i ;
  int sb_size ;
  int pipe ;
  struct urb *urb ;
  int j ;
  int k ;
  int rc ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  unsigned int tmp___4 ;
  struct lock_class_key __key ;
  {
  dma_q = & dev->video_mode.vidq;
  cx231xx_uninit_isoc(dev);
  tmp = kzalloc(4096UL, 208U);
  dma_q->p_left_data = (u8 *)tmp;
  if ((unsigned long )dma_q->p_left_data == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  dev->video_mode.isoc_ctl.isoc_copy = isoc_copy;
  dev->video_mode.isoc_ctl.num_bufs = num_bufs;
  dma_q->pos = 0;
  dma_q->is_partial_line = 0U;
  dma_q->last_sav = 0U;
  dma_q->current_field = -1;
  dma_q->field1_done = 0U;
  dma_q->lines_per_field = (u32 )(dev->height / 2);
  dma_q->bytes_left_in_line = (u32 )(dev->width << 1);
  dma_q->lines_completed = 0U;
  dma_q->mpeg_buffer_done = 0U;
  dma_q->left_data_count = 0U;
  dma_q->mpeg_buffer_completed = 0U;
  dma_q->add_ps_package_head = 0;
  dma_q->ps_head[0] = 0;
  dma_q->ps_head[1] = 0;
  dma_q->ps_head[2] = 1;
  dma_q->ps_head[3] = -70;
  i = 0;
  goto ldv_52396;
  ldv_52395:
  dma_q->partial_buf[i] = 0U;
  i = i + 1;
  ldv_52396: ;
  if (i <= 7) {
    goto ldv_52395;
  } else {
  }
  tmp___0 = kzalloc((unsigned long )num_bufs * 8UL, 208U);
  dev->video_mode.isoc_ctl.urb = (struct urb **)tmp___0;
  if ((unsigned long )dev->video_mode.isoc_ctl.urb == (unsigned long )((struct urb **)0)) {
    dev_err((struct device const *)dev->dev, "cannot alloc memory for usb buffers\n");
    return (-12);
  } else {
  }
  tmp___1 = kzalloc((unsigned long )num_bufs * 8UL, 208U);
  dev->video_mode.isoc_ctl.transfer_buffer = (char **)tmp___1;
  if ((unsigned long )dev->video_mode.isoc_ctl.transfer_buffer == (unsigned long )((char **)0)) {
    dev_err((struct device const *)dev->dev, "cannot allocate memory for usbtransfer\n");
    kfree((void const *)dev->video_mode.isoc_ctl.urb);
    return (-12);
  } else {
  }
  dev->video_mode.isoc_ctl.max_pkt_size = max_pkt_size;
  dev->video_mode.isoc_ctl.buf = (struct cx231xx_buffer *)0;
  sb_size = dev->video_mode.isoc_ctl.max_pkt_size * max_packets;
  if ((unsigned int )dev->mode_tv == 1U) {
    dev->video_mode.end_point_addr = 129U;
  } else {
    dev->video_mode.end_point_addr = 132U;
  }
  i = 0;
  goto ldv_52402;
  ldv_52401:
  urb = usb_alloc_urb(max_packets, 208U);
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    dev_err((struct device const *)dev->dev, "cannot alloc isoc_ctl.urb %i\n", i);
    cx231xx_uninit_isoc(dev);
    return (-12);
  } else {
  }
  *(dev->video_mode.isoc_ctl.urb + (unsigned long )i) = urb;
  tmp___2 = usb_alloc_coherent(dev->udev, (size_t )sb_size, 208U, & urb->transfer_dma);
  *(dev->video_mode.isoc_ctl.transfer_buffer + (unsigned long )i) = (char *)tmp___2;
  if ((unsigned long )*(dev->video_mode.isoc_ctl.transfer_buffer + (unsigned long )i) == (unsigned long )((char *)0)) {
    tmp___3 = preempt_count();
    dev_err((struct device const *)dev->dev, "unable to allocate %i bytes for transfer buffer %i%s\n",
            sb_size, i, ((unsigned long )tmp___3 & 2096896UL) != 0UL ? (char *)" while in int" : (char *)"");
    cx231xx_uninit_isoc(dev);
    return (-12);
  } else {
  }
  memset((void *)*(dev->video_mode.isoc_ctl.transfer_buffer + (unsigned long )i),
           0, (size_t )sb_size);
  tmp___4 = __create_pipe(dev->udev, (unsigned int )dev->video_mode.end_point_addr);
  pipe = (int )(tmp___4 | 128U);
  usb_fill_int_urb(urb, dev->udev, (unsigned int )pipe, (void *)*(dev->video_mode.isoc_ctl.transfer_buffer + (unsigned long )i),
                   sb_size, & cx231xx_isoc_irq_callback, (void *)dma_q, 1);
  urb->number_of_packets = max_packets;
  urb->transfer_flags = 6U;
  k = 0;
  j = 0;
  goto ldv_52399;
  ldv_52398:
  urb->iso_frame_desc[j].offset = (unsigned int )k;
  urb->iso_frame_desc[j].length = (unsigned int )dev->video_mode.isoc_ctl.max_pkt_size;
  k = dev->video_mode.isoc_ctl.max_pkt_size + k;
  j = j + 1;
  ldv_52399: ;
  if (j < max_packets) {
    goto ldv_52398;
  } else {
  }
  i = i + 1;
  ldv_52402: ;
  if (dev->video_mode.isoc_ctl.num_bufs > i) {
    goto ldv_52401;
  } else {
  }
  __init_waitqueue_head(& dma_q->wq, "&dma_q->wq", & __key);
  i = 0;
  goto ldv_52406;
  ldv_52405:
  rc = usb_submit_urb(*(dev->video_mode.isoc_ctl.urb + (unsigned long )i), 32U);
  if (rc != 0) {
    dev_err((struct device const *)dev->dev, "submit of urb %i failed (error=%i)\n",
            i, rc);
    cx231xx_uninit_isoc(dev);
    return (rc);
  } else {
  }
  i = i + 1;
  ldv_52406: ;
  if (dev->video_mode.isoc_ctl.num_bufs > i) {
    goto ldv_52405;
  } else {
  }
  if ((unsigned int )dev->mode_tv == 0U) {
    cx231xx_capture_start(dev, 1, 0);
  } else {
    cx231xx_capture_start(dev, 1, 4);
  }
  return (0);
}
}
static char const __kstrtab_cx231xx_init_isoc[18U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        'i', 'n', 'i', 't',
        '_', 'i', 's', 'o',
        'c', '\000'};
struct kernel_symbol const __ksymtab_cx231xx_init_isoc ;
struct kernel_symbol const __ksymtab_cx231xx_init_isoc = {(unsigned long )(& cx231xx_init_isoc), (char const *)(& __kstrtab_cx231xx_init_isoc)};
int cx231xx_init_bulk(struct cx231xx *dev , int max_packets , int num_bufs , int max_pkt_size ,
                      int (*bulk_copy)(struct cx231xx * , struct urb * ) )
{
  struct cx231xx_dmaqueue *dma_q ;
  int i ;
  int sb_size ;
  int pipe ;
  struct urb *urb ;
  int rc ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  struct lock_class_key __key ;
  {
  dma_q = & dev->video_mode.vidq;
  dev->video_input = 2U < dev->video_input ? 2U : dev->video_input;
  if (core_debug != 0U) {
    printk("\016%s %s :Setting Video mux to %d\n", (char *)(& dev->name), "cx231xx_init_bulk",
           dev->video_input);
  } else {
  }
  video_mux(dev, (int )dev->video_input);
  cx231xx_uninit_bulk(dev);
  dev->video_mode.bulk_ctl.bulk_copy = bulk_copy;
  dev->video_mode.bulk_ctl.num_bufs = num_bufs;
  dma_q->pos = 0;
  dma_q->is_partial_line = 0U;
  dma_q->last_sav = 0U;
  dma_q->current_field = -1;
  dma_q->field1_done = 0U;
  dma_q->lines_per_field = (u32 )(dev->height / 2);
  dma_q->bytes_left_in_line = (u32 )(dev->width << 1);
  dma_q->lines_completed = 0U;
  dma_q->mpeg_buffer_done = 0U;
  dma_q->left_data_count = 0U;
  dma_q->mpeg_buffer_completed = 0U;
  dma_q->ps_head[0] = 0;
  dma_q->ps_head[1] = 0;
  dma_q->ps_head[2] = 1;
  dma_q->ps_head[3] = -70;
  i = 0;
  goto ldv_52436;
  ldv_52435:
  dma_q->partial_buf[i] = 0U;
  i = i + 1;
  ldv_52436: ;
  if (i <= 7) {
    goto ldv_52435;
  } else {
  }
  tmp = kzalloc((unsigned long )num_bufs * 8UL, 208U);
  dev->video_mode.bulk_ctl.urb = (struct urb **)tmp;
  if ((unsigned long )dev->video_mode.bulk_ctl.urb == (unsigned long )((struct urb **)0)) {
    dev_err((struct device const *)dev->dev, "cannot alloc memory for usb buffers\n");
    return (-12);
  } else {
  }
  tmp___0 = kzalloc((unsigned long )num_bufs * 8UL, 208U);
  dev->video_mode.bulk_ctl.transfer_buffer = (char **)tmp___0;
  if ((unsigned long )dev->video_mode.bulk_ctl.transfer_buffer == (unsigned long )((char **)0)) {
    dev_err((struct device const *)dev->dev, "cannot allocate memory for usbtransfer\n");
    kfree((void const *)dev->video_mode.bulk_ctl.urb);
    return (-12);
  } else {
  }
  dev->video_mode.bulk_ctl.max_pkt_size = max_pkt_size;
  dev->video_mode.bulk_ctl.buf = (struct cx231xx_buffer *)0;
  sb_size = dev->video_mode.bulk_ctl.max_pkt_size * max_packets;
  if ((unsigned int )dev->mode_tv == 1U) {
    dev->video_mode.end_point_addr = 129U;
  } else {
    dev->video_mode.end_point_addr = 132U;
  }
  i = 0;
  goto ldv_52439;
  ldv_52438:
  urb = usb_alloc_urb(0, 208U);
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    dev_err((struct device const *)dev->dev, "cannot alloc bulk_ctl.urb %i\n", i);
    cx231xx_uninit_bulk(dev);
    return (-12);
  } else {
  }
  *(dev->video_mode.bulk_ctl.urb + (unsigned long )i) = urb;
  urb->transfer_flags = 4U;
  tmp___1 = usb_alloc_coherent(dev->udev, (size_t )sb_size, 208U, & urb->transfer_dma);
  *(dev->video_mode.bulk_ctl.transfer_buffer + (unsigned long )i) = (char *)tmp___1;
  if ((unsigned long )*(dev->video_mode.bulk_ctl.transfer_buffer + (unsigned long )i) == (unsigned long )((char *)0)) {
    tmp___2 = preempt_count();
    dev_err((struct device const *)dev->dev, "unable to allocate %i bytes for transfer buffer %i%s\n",
            sb_size, i, ((unsigned long )tmp___2 & 2096896UL) != 0UL ? (char *)" while in int" : (char *)"");
    cx231xx_uninit_bulk(dev);
    return (-12);
  } else {
  }
  memset((void *)*(dev->video_mode.bulk_ctl.transfer_buffer + (unsigned long )i),
           0, (size_t )sb_size);
  tmp___3 = __create_pipe(dev->udev, (unsigned int )dev->video_mode.end_point_addr);
  pipe = (int )(tmp___3 | 3221225600U);
  usb_fill_bulk_urb(urb, dev->udev, (unsigned int )pipe, (void *)*(dev->video_mode.bulk_ctl.transfer_buffer + (unsigned long )i),
                    sb_size, & cx231xx_bulk_irq_callback, (void *)dma_q);
  i = i + 1;
  ldv_52439: ;
  if (dev->video_mode.bulk_ctl.num_bufs > i) {
    goto ldv_52438;
  } else {
  }
  __init_waitqueue_head(& dma_q->wq, "&dma_q->wq", & __key);
  i = 0;
  goto ldv_52443;
  ldv_52442:
  rc = usb_submit_urb(*(dev->video_mode.bulk_ctl.urb + (unsigned long )i), 32U);
  if (rc != 0) {
    dev_err((struct device const *)dev->dev, "submit of urb %i failed (error=%i)\n",
            i, rc);
    cx231xx_uninit_bulk(dev);
    return (rc);
  } else {
  }
  i = i + 1;
  ldv_52443: ;
  if (dev->video_mode.bulk_ctl.num_bufs > i) {
    goto ldv_52442;
  } else {
  }
  if ((unsigned int )dev->mode_tv == 0U) {
    cx231xx_capture_start(dev, 1, 0);
  } else {
    cx231xx_capture_start(dev, 1, 4);
  }
  return (0);
}
}
static char const __kstrtab_cx231xx_init_bulk[18U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        'i', 'n', 'i', 't',
        '_', 'b', 'u', 'l',
        'k', '\000'};
struct kernel_symbol const __ksymtab_cx231xx_init_bulk ;
struct kernel_symbol const __ksymtab_cx231xx_init_bulk = {(unsigned long )(& cx231xx_init_bulk), (char const *)(& __kstrtab_cx231xx_init_bulk)};
void cx231xx_stop_TS1(struct cx231xx *dev )
{
  u8 val[4U] ;
  {
  val[0] = 0U;
  val[1] = 0U;
  val[2] = 0U;
  val[3] = 0U;
  val[0] = 0U;
  val[1] = 3U;
  val[2] = 0U;
  val[3] = 0U;
  cx231xx_write_ctrl_reg(dev, 12, 4, (char *)(& val), 4);
  val[0] = 0U;
  val[1] = 112U;
  val[2] = 4U;
  val[3] = 0U;
  cx231xx_write_ctrl_reg(dev, 12, 8, (char *)(& val), 4);
  return;
}
}
void cx231xx_start_TS1(struct cx231xx *dev )
{
  u8 val[4U] ;
  {
  val[0] = 0U;
  val[1] = 0U;
  val[2] = 0U;
  val[3] = 0U;
  val[0] = 3U;
  val[1] = 3U;
  val[2] = 0U;
  val[3] = 0U;
  cx231xx_write_ctrl_reg(dev, 12, 4, (char *)(& val), 4);
  val[0] = 4U;
  val[1] = 163U;
  val[2] = 59U;
  val[3] = 0U;
  cx231xx_write_ctrl_reg(dev, 12, 8, (char *)(& val), 4);
  return;
}
}
int cx231xx_dev_init(struct cx231xx *dev )
{
  int errCode ;
  {
  errCode = 0;
  dev->i2c_bus[0].nr = 0;
  dev->i2c_bus[0].dev = dev;
  dev->i2c_bus[0].i2c_period = 2U;
  dev->i2c_bus[0].i2c_nostop = 0U;
  dev->i2c_bus[0].i2c_reserve = 0U;
  dev->i2c_bus[1].nr = 1;
  dev->i2c_bus[1].dev = dev;
  dev->i2c_bus[1].i2c_period = 2U;
  dev->i2c_bus[1].i2c_nostop = 0U;
  dev->i2c_bus[1].i2c_reserve = 0U;
  dev->i2c_bus[2].nr = 2;
  dev->i2c_bus[2].dev = dev;
  dev->i2c_bus[2].i2c_period = 2U;
  dev->i2c_bus[2].i2c_nostop = 0U;
  dev->i2c_bus[2].i2c_reserve = 0U;
  cx231xx_i2c_register((struct cx231xx_i2c *)(& dev->i2c_bus));
  cx231xx_i2c_register((struct cx231xx_i2c *)(& dev->i2c_bus) + 1UL);
  cx231xx_i2c_register((struct cx231xx_i2c *)(& dev->i2c_bus) + 2UL);
  cx231xx_i2c_mux_register(dev, 0);
  cx231xx_i2c_mux_register(dev, 1);
  cx231xx_do_i2c_scan(dev, 0);
  cx231xx_do_i2c_scan(dev, 3);
  cx231xx_do_i2c_scan(dev, 2);
  cx231xx_do_i2c_scan(dev, 4);
  if ((unsigned int )*((unsigned char *)dev + 144UL) != 0U) {
    errCode = cx231xx_set_power_mode(dev, 48);
    if (errCode < 0) {
      dev_err((struct device const *)dev->dev, "%s: Failed to set Power - errCode [%d]!\n",
              "cx231xx_dev_init", errCode);
      return (errCode);
    } else {
    }
  } else {
    errCode = cx231xx_set_power_mode(dev, 32);
    if (errCode < 0) {
      dev_err((struct device const *)dev->dev, "%s: Failed to set Power - errCode [%d]!\n",
              "cx231xx_dev_init", errCode);
      return (errCode);
    } else {
    }
  }
  if (dev->board.tuner_type == 76 || dev->board.tuner_type == 71) {
    cx231xx_gpio_set(dev, dev->board.tuner_gpio);
  } else {
  }
  errCode = cx231xx_afe_init_super_block(dev, 572U);
  if (errCode < 0) {
    dev_err((struct device const *)dev->dev, "%s: cx231xx_afe init super block - errCode [%d]!\n",
            "cx231xx_dev_init", errCode);
    return (errCode);
  } else {
  }
  errCode = cx231xx_afe_init_channels(dev);
  if (errCode < 0) {
    dev_err((struct device const *)dev->dev, "%s: cx231xx_afe init channels - errCode [%d]!\n",
            "cx231xx_dev_init", errCode);
    return (errCode);
  } else {
  }
  errCode = cx231xx_dif_set_standard(dev, 4294967295U);
  if (errCode < 0) {
    dev_err((struct device const *)dev->dev, "%s: cx231xx_dif set to By pass mode - errCode [%d]!\n",
            "cx231xx_dev_init", errCode);
    return (errCode);
  } else {
  }
  errCode = cx231xx_i2s_blk_initialize(dev);
  if (errCode < 0) {
    dev_err((struct device const *)dev->dev, "%s: cx231xx_i2s block initialize - errCode [%d]!\n",
            "cx231xx_dev_init", errCode);
    return (errCode);
  } else {
  }
  errCode = cx231xx_init_ctrl_pin_status(dev);
  if (errCode < 0) {
    dev_err((struct device const *)dev->dev, "%s: cx231xx_init ctrl pins - errCode [%d]!\n",
            "cx231xx_dev_init", errCode);
    return (errCode);
  } else {
  }
  switch (dev->model) {
  case 1: ;
  case 6: ;
  case 2: ;
  case 7:
  errCode = cx231xx_set_agc_analog_digital_mux_select(dev, 1);
  goto ldv_52473;
  case 3: ;
  case 4: ;
  case 8: ;
  case 19: ;
  case 10: ;
  case 14: ;
  case 15:
  errCode = cx231xx_set_agc_analog_digital_mux_select(dev, 0);
  goto ldv_52473;
  default: ;
  goto ldv_52473;
  }
  ldv_52473: ;
  if (errCode < 0) {
    dev_err((struct device const *)dev->dev, "%s: cx231xx_AGC mode to Analog - errCode [%d]!\n",
            "cx231xx_dev_init", errCode);
    return (errCode);
  } else {
  }
  cx231xx_set_alt_setting(dev, 4, 0);
  cx231xx_set_alt_setting(dev, 5, 0);
  cx231xx_set_alt_setting(dev, 6, 0);
  if ((unsigned int )*((unsigned char *)dev + 144UL) != 0U) {
    cx231xx_set_alt_setting(dev, 1, 0);
  } else {
  }
  errCode = 0;
  return (errCode);
}
}
static char const __kstrtab_cx231xx_dev_init[17U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        'd', 'e', 'v', '_',
        'i', 'n', 'i', 't',
        '\000'};
struct kernel_symbol const __ksymtab_cx231xx_dev_init ;
struct kernel_symbol const __ksymtab_cx231xx_dev_init = {(unsigned long )(& cx231xx_dev_init), (char const *)(& __kstrtab_cx231xx_dev_init)};
void cx231xx_dev_uninit(struct cx231xx *dev )
{
  {
  cx231xx_i2c_mux_unregister(dev, 1);
  cx231xx_i2c_mux_unregister(dev, 0);
  cx231xx_i2c_unregister((struct cx231xx_i2c *)(& dev->i2c_bus) + 2UL);
  cx231xx_i2c_unregister((struct cx231xx_i2c *)(& dev->i2c_bus) + 1UL);
  cx231xx_i2c_unregister((struct cx231xx_i2c *)(& dev->i2c_bus));
  return;
}
}
static char const __kstrtab_cx231xx_dev_uninit[19U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        'd', 'e', 'v', '_',
        'u', 'n', 'i', 'n',
        'i', 't', '\000'};
struct kernel_symbol const __ksymtab_cx231xx_dev_uninit ;
struct kernel_symbol const __ksymtab_cx231xx_dev_uninit = {(unsigned long )(& cx231xx_dev_uninit), (char const *)(& __kstrtab_cx231xx_dev_uninit)};
int cx231xx_send_gpio_cmd(struct cx231xx *dev , u32 gpio_bit , u8 *gpio_val , u8 len ,
                          u8 request , u8 direction )
{
  int status ;
  struct VENDOR_REQUEST_IN ven_req ;
  {
  status = 0;
  ven_req.wValue = (unsigned short )(gpio_bit >> 16);
  if ((unsigned int )request == 0U) {
    if ((unsigned int )direction != 0U) {
      ven_req.bRequest = 9U;
    } else {
      ven_req.bRequest = 8U;
    }
  } else
  if ((unsigned int )direction != 0U) {
    ven_req.bRequest = 11U;
  } else {
    ven_req.bRequest = 10U;
  }
  ven_req.wIndex = (unsigned short )gpio_bit;
  ven_req.wLength = (u16 )len;
  ven_req.bData = 0U;
  ven_req.pBuff = gpio_val;
  if ((unsigned int )direction != 0U) {
    ven_req.direction = 128U;
    memset((void *)ven_req.pBuff, 0, (size_t )ven_req.wLength);
  } else {
    ven_req.direction = 0U;
  }
  status = cx231xx_send_vendor_cmd(dev, & ven_req);
  if (status < 0) {
    dev_err((struct device const *)dev->dev, "%s: failed with status -%d\n", "cx231xx_send_gpio_cmd",
            status);
  } else {
  }
  return (status);
}
}
static char const __kstrtab_cx231xx_send_gpio_cmd[22U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        's', 'e', 'n', 'd',
        '_', 'g', 'p', 'i',
        'o', '_', 'c', 'm',
        'd', '\000'};
struct kernel_symbol const __ksymtab_cx231xx_send_gpio_cmd ;
struct kernel_symbol const __ksymtab_cx231xx_send_gpio_cmd = {(unsigned long )(& cx231xx_send_gpio_cmd), (char const *)(& __kstrtab_cx231xx_send_gpio_cmd)};
int cx231xx_mode_register(struct cx231xx *dev , u16 address , u32 mode )
{
  u8 value[4U] ;
  u32 tmp ;
  int status ;
  {
  value[0] = 0U;
  value[1] = 0U;
  value[2] = 0U;
  value[3] = 0U;
  tmp = 0U;
  status = 0;
  status = cx231xx_read_ctrl_reg(dev, 13, (int )address, (char *)(& value), 4);
  if (status < 0) {
    return (status);
  } else {
  }
  tmp = *((__le32 *)(& value));
  tmp = tmp | mode;
  value[0] = (unsigned char )tmp;
  value[1] = (unsigned char )(tmp >> 8);
  value[2] = (unsigned char )(tmp >> 16);
  value[3] = (unsigned char )(tmp >> 24);
  status = cx231xx_write_ctrl_reg(dev, 12, (int )address, (char *)(& value), 4);
  return (status);
}
}
int cx231xx_read_i2c_master(struct cx231xx *dev , u8 dev_addr , u16 saddr , u8 saddr_len ,
                            u32 *data , u8 data_len , int master )
{
  int status ;
  struct cx231xx_i2c_xfer_data req_data ;
  u8 value[64U] ;
  unsigned int tmp ;
  {
  status = 0;
  value[0] = '0';
  value[1] = '\000';
  tmp = 2U;
  while (1) {
    if (tmp >= 64U) {
      break;
    } else {
    }
    value[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  if ((unsigned int )saddr_len == 0U) {
    saddr = 0U;
  } else
  if ((unsigned int )saddr_len == 1U) {
    saddr = (unsigned int )saddr & 255U;
  } else {
  }
  req_data.dev_addr = (u8 )((int )dev_addr >> 1);
  req_data.direction = 1U;
  req_data.saddr_len = saddr_len;
  req_data.saddr_dat = saddr;
  req_data.buf_size = data_len;
  req_data.p_buffer = (u8 *)(& value);
  if (master == 0) {
    status = (*(dev->cx231xx_send_usb_command))((struct cx231xx_i2c *)(& dev->i2c_bus),
                                                & req_data);
  } else
  if (master == 1) {
    status = (*(dev->cx231xx_send_usb_command))((struct cx231xx_i2c *)(& dev->i2c_bus) + 1UL,
                                                & req_data);
  } else
  if (master == 2) {
    status = (*(dev->cx231xx_send_usb_command))((struct cx231xx_i2c *)(& dev->i2c_bus) + 2UL,
                                                & req_data);
  } else {
  }
  if (status >= 0) {
    if ((unsigned int )data_len == 1U) {
      *data = (u32 )value[0];
    } else
    if ((unsigned int )data_len == 4U) {
      *data = (u32 )((((int )value[0] | ((int )value[1] << 8)) | ((int )value[2] << 16)) | ((int )value[3] << 24));
    } else
    if ((unsigned int )data_len > 4U) {
      *data = (u32 )value[(int )saddr];
    } else {
    }
  } else {
  }
  return (status);
}
}
int cx231xx_write_i2c_master(struct cx231xx *dev , u8 dev_addr , u16 saddr , u8 saddr_len ,
                             u32 data , u8 data_len , int master )
{
  int status ;
  u8 value[4U] ;
  struct cx231xx_i2c_xfer_data req_data ;
  {
  status = 0;
  value[0] = 0U;
  value[1] = 0U;
  value[2] = 0U;
  value[3] = 0U;
  value[0] = (unsigned char )data;
  value[1] = (unsigned char )(data >> 8);
  value[2] = (unsigned char )(data >> 16);
  value[3] = (unsigned char )(data >> 24);
  if ((unsigned int )saddr_len == 0U) {
    saddr = 0U;
  } else
  if ((unsigned int )saddr_len == 1U) {
    saddr = (unsigned int )saddr & 255U;
  } else {
  }
  req_data.dev_addr = (u8 )((int )dev_addr >> 1);
  req_data.direction = 0U;
  req_data.saddr_len = saddr_len;
  req_data.saddr_dat = saddr;
  req_data.buf_size = data_len;
  req_data.p_buffer = (u8 *)(& value);
  if (master == 0) {
    status = (*(dev->cx231xx_send_usb_command))((struct cx231xx_i2c *)(& dev->i2c_bus),
                                                & req_data);
  } else
  if (master == 1) {
    status = (*(dev->cx231xx_send_usb_command))((struct cx231xx_i2c *)(& dev->i2c_bus) + 1UL,
                                                & req_data);
  } else
  if (master == 2) {
    status = (*(dev->cx231xx_send_usb_command))((struct cx231xx_i2c *)(& dev->i2c_bus) + 2UL,
                                                & req_data);
  } else {
  }
  return (status);
}
}
int cx231xx_read_i2c_data(struct cx231xx *dev , u8 dev_addr , u16 saddr , u8 saddr_len ,
                          u32 *data , u8 data_len )
{
  int status ;
  struct cx231xx_i2c_xfer_data req_data ;
  u8 value[4U] ;
  {
  status = 0;
  value[0] = 0U;
  value[1] = 0U;
  value[2] = 0U;
  value[3] = 0U;
  if ((unsigned int )saddr_len == 0U) {
    saddr = 0U;
  } else
  if ((unsigned int )saddr_len == 1U) {
    saddr = (unsigned int )saddr & 255U;
  } else {
  }
  req_data.dev_addr = (u8 )((int )dev_addr >> 1);
  req_data.direction = 1U;
  req_data.saddr_len = saddr_len;
  req_data.saddr_dat = saddr;
  req_data.buf_size = data_len;
  req_data.p_buffer = (u8 *)(& value);
  status = (*(dev->cx231xx_send_usb_command))((struct cx231xx_i2c *)(& dev->i2c_bus),
                                              & req_data);
  if (status >= 0) {
    if ((unsigned int )data_len == 1U) {
      *data = (u32 )value[0];
    } else {
      *data = (u32 )((((int )value[0] | ((int )value[1] << 8)) | ((int )value[2] << 16)) | ((int )value[3] << 24));
    }
  } else {
  }
  return (status);
}
}
int cx231xx_write_i2c_data(struct cx231xx *dev , u8 dev_addr , u16 saddr , u8 saddr_len ,
                           u32 data , u8 data_len )
{
  int status ;
  u8 value[4U] ;
  struct cx231xx_i2c_xfer_data req_data ;
  {
  status = 0;
  value[0] = 0U;
  value[1] = 0U;
  value[2] = 0U;
  value[3] = 0U;
  value[0] = (unsigned char )data;
  value[1] = (unsigned char )(data >> 8);
  value[2] = (unsigned char )(data >> 16);
  value[3] = (unsigned char )(data >> 24);
  if ((unsigned int )saddr_len == 0U) {
    saddr = 0U;
  } else
  if ((unsigned int )saddr_len == 1U) {
    saddr = (unsigned int )saddr & 255U;
  } else {
  }
  req_data.dev_addr = (u8 )((int )dev_addr >> 1);
  req_data.direction = 0U;
  req_data.saddr_len = saddr_len;
  req_data.saddr_dat = saddr;
  req_data.buf_size = data_len;
  req_data.p_buffer = (u8 *)(& value);
  status = (*(dev->cx231xx_send_usb_command))((struct cx231xx_i2c *)(& dev->i2c_bus),
                                              & req_data);
  return (status);
}
}
int cx231xx_reg_mask_write(struct cx231xx *dev , u8 dev_addr , u8 size , u16 register_address ,
                           u8 bit_start , u8 bit_end , u32 value )
{
  int status ;
  u32 tmp ;
  u32 mask ;
  int i ;
  {
  status = 0;
  mask = 0U;
  if ((int )bit_start > (int )size + -1 || (int )bit_end > (int )size + -1) {
    return (-1);
  } else {
  }
  if ((unsigned int )size == 8U) {
    status = cx231xx_read_i2c_data(dev, (int )dev_addr, (int )register_address, 2,
                                   & tmp, 1);
  } else {
    status = cx231xx_read_i2c_data(dev, (int )dev_addr, (int )register_address, 2,
                                   & tmp, 4);
  }
  if (status < 0) {
    return (status);
  } else {
  }
  mask = (u32 )(1 << (int )bit_end);
  i = (int )bit_end;
  goto ldv_52590;
  ldv_52589:
  mask = (u32 )(1 << (i + -1)) + mask;
  i = i - 1;
  ldv_52590: ;
  if ((int )bit_start < i && i > 0) {
    goto ldv_52589;
  } else {
  }
  value = value << (int )bit_start;
  if ((unsigned int )size == 8U) {
    tmp = ~ mask & tmp;
    tmp = tmp | value;
    tmp = tmp & 255U;
    status = cx231xx_write_i2c_data(dev, (int )dev_addr, (int )register_address, 2,
                                    tmp, 1);
  } else {
    tmp = ~ mask & tmp;
    tmp = tmp | value;
    status = cx231xx_write_i2c_data(dev, (int )dev_addr, (int )register_address, 2,
                                    tmp, 4);
  }
  return (status);
}
}
int cx231xx_read_modify_write_i2c_dword(struct cx231xx *dev , u8 dev_addr , u16 saddr ,
                                        u32 mask , u32 value )
{
  u32 temp ;
  int status ;
  {
  status = 0;
  status = cx231xx_read_i2c_data(dev, (int )dev_addr, (int )saddr, 2, & temp, 4);
  if (status < 0) {
    return (status);
  } else {
  }
  temp = ~ mask & temp;
  temp = temp | value;
  status = cx231xx_write_i2c_data(dev, (int )dev_addr, (int )saddr, 2, temp, 4);
  return (status);
}
}
u32 cx231xx_set_field(u32 field_mask , u32 data )
{
  u32 temp ;
  {
  temp = field_mask;
  goto ldv_52607;
  ldv_52606:
  data = data << 1;
  temp = temp >> 1;
  ldv_52607: ;
  if ((temp & 1U) == 0U) {
    goto ldv_52606;
  } else {
  }
  return (data);
}
}
bool ldv_queue_work_on_53(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_54(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_55(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_56(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_57(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
__inline static long ldv__builtin_expect(long exp , long c ) ;
bool ldv_queue_work_on_67(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_69(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_68(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_71(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_70(struct workqueue_struct *ldv_func_arg1 ) ;
void initGPIO(struct cx231xx *dev ) ;
void uninitGPIO(struct cx231xx *dev ) ;
int cx231xx_afe_setup_AFE_for_baseband(struct cx231xx *dev ) ;
int cx231xx_afe_set_input_mux(struct cx231xx *dev , u32 input_mux ) ;
int cx231xx_afe_set_mode(struct cx231xx *dev , enum AFE_MODE mode ) ;
int cx231xx_afe_update_power_control(struct cx231xx *dev , enum AV_MODE avmode ) ;
int cx231xx_afe_adjust_ref_count(struct cx231xx *dev , u32 video_input ) ;
int cx231xx_i2s_blk_update_power_control(struct cx231xx *dev , enum AV_MODE avmode ) ;
int cx231xx_i2s_blk_set_audio_input(struct cx231xx *dev , u8 audio_input ) ;
int cx231xx_dif_configure_C2HH_for_low_IF(struct cx231xx *dev , u32 mode , u32 function_mode ,
                                          u32 standard ) ;
u32 cx231xx_Get_Colibri_CarrierOffset(u32 mode , u32 standerd ) ;
void cx231xx_set_DIF_bandpass(struct cx231xx *dev , u32 if_freq , u8 spectral_invert ,
                              u32 mode ) ;
void cx231xx_Setup_AFE_for_LowIF(struct cx231xx *dev ) ;
void cx231xx_dump_HH_reg(struct cx231xx *dev ) ;
int cx231xx_gpio_i2c_start(struct cx231xx *dev ) ;
int cx231xx_gpio_i2c_end(struct cx231xx *dev ) ;
int cx231xx_gpio_i2c_write_byte(struct cx231xx *dev , u8 data ) ;
int cx231xx_gpio_i2c_read_byte(struct cx231xx *dev , u8 *buf ) ;
int cx231xx_gpio_i2c_read_ack(struct cx231xx *dev ) ;
int cx231xx_gpio_i2c_write_ack(struct cx231xx *dev ) ;
int cx231xx_gpio_i2c_write_nak(struct cx231xx *dev ) ;
int cx231xx_set_audio_decoder_input(struct cx231xx *dev , enum AUDIO_INPUT audio_input ) ;
int cx231xx_unmute_audio(struct cx231xx *dev ) ;
void cx231xx_disable656(struct cx231xx *dev ) ;
void cx231xx_enable656(struct cx231xx *dev ) ;
int cx231xx_start_stream(struct cx231xx *dev , u32 ep_mask ) ;
int cx231xx_stop_stream(struct cx231xx *dev , u32 ep_mask ) ;
int cx231xx_initialize_stream_xfer(struct cx231xx *dev , u32 media_type ) ;
int cx231xx_power_suspend(struct cx231xx *dev ) ;
int cx231xx_set_decoder_video_input(struct cx231xx *dev , u8 pin_type , u8 input ) ;
static struct dif_settings Dif_set_array[2489U] =
  { {3000000U, 840U, 2U},
        {3000000U, 844U, 524306U},
        {3000000U, 848U, 1966116U},
        {3000000U, 852U, 1835000U},
        {3000000U, 856U, 4290051920U},
        {3000000U, 860U, 4275633768U},
        {3000000U, 864U, 4263837236U},
        {3000000U, 868U, 4273668039U},
        {3000000U, 872U, 21824287U},
        {3000000U, 876U, 82839133U},
        {3000000U, 880U, 117507720U},
        {3000000U, 884U, 80282070U},
        {3000000U, 888U, 4261476819U},
        {3000000U, 892U, 4127257410U},
        {3000000U, 896U, 4063621943U},
        {3000000U, 900U, 4132371234U},
        {3000000U, 904U, 17106703U},
        {3000000U, 908U, 205918158U},
        {3000000U, 912U, 286064640U},
        {3100000U, 840U, 1U},
        {3100000U, 844U, 458770U},
        {3100000U, 848U, 2228274U},
        {3100000U, 852U, 3604518U},
        {3100000U, 856U, 4293984145U},
        {3100000U, 860U, 4279172732U},
        {3100000U, 864U, 4261543372U},
        {3100000U, 868U, 4262133467U},
        {3100000U, 872U, 4456996U},
        {3100000U, 876U, 70518284U},
        {3100000U, 880U, 121112398U},
        {3100000U, 884U, 101253985U},
        {3100000U, 888U, 4288281401U},
        {3100000U, 892U, 4143903670U},
        {3100000U, 896U, 4061852325U},
        {3100000U, 900U, 4118018611U},
        {3100000U, 904U, 3409533U},
        {3100000U, 908U, 201002937U},
        {3100000U, 912U, 286064640U},
        {3200000U, 840U, 0U},
        {3200000U, 844U, 262158U},
        {3200000U, 848U, 2097208U},
        {3200000U, 852U, 4980815U},
        {3200000U, 856U, 3145695U},
        {3200000U, 860U, 4284284598U},
        {3200000U, 864U, 4262329746U},
        {3200000U, 868U, 4253023747U},
        {3200000U, 872U, 4281729290U},
        {3200000U, 876U, 54592885U},
        {3200000U, 880U, 119932882U},
        {3200000U, 884U, 119014613U},
        {3200000U, 888U, 20249783U},
        {3200000U, 892U, 4162843729U},
        {3200000U, 896U, 4062442030U},
        {3200000U, 900U, 4104649035U},
        {3200000U, 904U, 4284745192U},
        {3200000U, 908U, 195956644U},
        {3200000U, 912U, 286064640U},
        {3300000U, 840U, 65535U},
        {3300000U, 844U, 8U},
        {3300000U, 848U, 1703990U},
        {3300000U, 852U, 5636205U},
        {3300000U, 856U, 6750256U},
        {3300000U, 860U, 4290641680U},
        {3300000U, 864U, 4266065293U},
        {3300000U, 868U, 4247125327U},
        {3300000U, 872U, 4264951776U},
        {3300000U, 876U, 35914911U},
        {3300000U, 880U, 113838094U},
        {3300000U, 884U, 133105191U},
        {3300000U, 888U, 46792261U},
        {3300000U, 892U, 4183946515U},
        {3300000U, 896U, 4065391058U},
        {3300000U, 900U, 4092393577U},
        {3300000U, 904U, 4271048018U},
        {3300000U, 908U, 190779279U},
        {3300000U, 912U, 286064640U},
        {3400000U, 840U, 4294967294U},
        {3400000U, 844U, 4294770689U},
        {3400000U, 848U, 983084U},
        {3400000U, 852U, 5505149U},
        {3400000U, 856U, 9633916U},
        {3400000U, 860U, 2424706U},
        {3400000U, 864U, 4272356795U},
        {3400000U, 868U, 4244896970U},
        {3400000U, 872U, 4250009273U},
        {3400000U, 876U, 15401874U},
        {3400000U, 880U, 103221250U},
        {3400000U, 884U, 143132496U},
        {3400000U, 888U, 72220635U},
        {3400000U, 892U, 4206753272U},
        {3400000U, 896U, 4070633875U},
        {3400000U, 900U, 4081252239U},
        {3400000U, 904U, 4257481913U},
        {3400000U, 908U, 185470840U},
        {3400000U, 912U, 286064640U},
        {3500000U, 840U, 4294967293U},
        {3500000U, 844U, 4294639609U},
        {3500000U, 848U, 131099U},
        {3500000U, 852U, 4587645U},
        {3500000U, 856U, 11337914U},
        {3500000U, 860U, 8847360U},
        {3500000U, 864U, 4280745498U},
        {3500000U, 868U, 4246469758U},
        {3500000U, 872U, 4237950372U},
        {3500000U, 876U, 4289004124U},
        {3500000U, 880U, 88410029U},
        {3500000U, 884U, 148703303U},
        {3500000U, 888U, 95945074U},
        {3500000U, 892U, 4230936319U},
        {3500000U, 896U, 4078170480U},
        {3500000U, 900U, 4071356093U},
        {3500000U, 904U, 4243981343U},
        {3500000U, 908U, 180096865U},
        {3500000U, 912U, 286064640U},
        {3600000U, 840U, 4294967293U},
        {3600000U, 844U, 4294508531U},
        {3600000U, 848U, 4294246406U},
        {3600000U, 852U, 3080300U},
        {3600000U, 856U, 11665635U},
        {3600000U, 860U, 14418046U},
        {3600000U, 864U, 4290379424U},
        {3600000U, 868U, 4251712625U},
        {3600000U, 872U, 4229430449U},
        {3600000U, 876U, 4268032267U},
        {3600000U, 880U, 70059795U},
        {3600000U, 884U, 149686534U},
        {3600000U, 888U, 117572354U},
        {3600000U, 892U, 4256167971U},
        {3600000U, 896U, 4087869802U},
        {3600000U, 900U, 4062770677U},
        {3600000U, 904U, 4230611844U},
        {3600000U, 908U, 174526282U},
        {3600000U, 912U, 286064640U},
        {3700000U, 840U, 65533U},
        {3700000U, 844U, 4294442991U},
        {3700000U, 848U, 4293525489U},
        {3700000U, 852U, 1048653U},
        {3700000U, 856U, 10551538U},
        {3700000U, 860U, 18481392U},
        {3700000U, 864U, 5504836U},
        {3700000U, 868U, 4260232354U},
        {3700000U, 872U, 4224973807U},
        {3700000U, 876U, 4248436654U},
        {3700000U, 880U, 48891448U},
        {3700000U, 884U, 146082183U},
        {3700000U, 888U, 136512643U},
        {3700000U, 892U, 4281989472U},
        {3700000U, 896U, 4099666304U},
        {3700000U, 900U, 4055430455U},
        {3700000U, 904U, 4217438951U},
        {3700000U, 908U, 168890162U},
        {3700000U, 912U, 286064640U},
        {3800000U, 840U, 65534U},
        {3800000U, 844U, 4294574062U},
        {3800000U, 848U, 4293001181U},
        {3800000U, 852U, 4293918756U},
        {3800000U, 856U, 8126693U},
        {3800000U, 860U, 20578634U},
        {3800000U, 864U, 15138808U},
        {3800000U, 868U, 4271439119U},
        {3800000U, 872U, 4224973671U},
        {3800000U, 876U, 4231200340U},
        {3800000U, 880U, 25691429U},
        {3800000U, 884U, 137955783U},
        {3800000U, 888U, 152372718U},
        {3800000U, 892U, 13105843U},
        {3800000U, 896U, 4113428916U},
        {3800000U, 900U, 4049466500U},
        {3800000U, 904U, 4204462665U},
        {3800000U, 908U, 163188505U},
        {3800000U, 912U, 286064640U},
        {3900000U, 840U, 0U},
        {3900000U, 844U, 4294705136U},
        {3900000U, 848U, 4292804559U},
        {3900000U, 852U, 4291952630U},
        {3900000U, 856U, 4718782U},
        {3900000U, 860U, 20513156U},
        {3900000U, 864U, 23265452U},
        {3900000U, 868U, 4284415409U},
        {3900000U, 872U, 4229430051U},
        {3900000U, 876U, 4217175309U},
        {3900000U, 880U, 1508324U},
        {3900000U, 884U, 125503940U},
        {3900000U, 888U, 164759356U},
        {3900000U, 892U, 38927384U},
        {3900000U, 896U, 4129092099U},
        {3900000U, 900U, 4044944348U},
        {3900000U, 904U, 4191682986U},
        {3900000U, 908U, 157290239U},
        {3900000U, 912U, 286064640U},
        {4000000U, 840U, 1U},
        {4000000U, 844U, 4294901748U},
        {4000000U, 848U, 4293001160U},
        {4000000U, 852U, 4290445258U},
        {4000000U, 856U, 721026U},
        {4000000U, 860U, 18284952U},
        {4000000U, 864U, 29426002U},
        {4000000U, 868U, 3210875U},
        {4000000U, 872U, 4237949732U},
        {4000000U, 876U, 4207148009U},
        {4000000U, 880U, 4272226943U},
        {4000000U, 884U, 109250943U},
        {4000000U, 888U, 173410407U},
        {4000000U, 892U, 64159113U},
        {4000000U, 896U, 4146328175U},
        {4000000U, 900U, 4041798465U},
        {4000000U, 904U, 4179165450U},
        {4000000U, 908U, 151391973U},
        {4000000U, 912U, 286064640U},
        {4100000U, 840U, 65538U},
        {4100000U, 844U, 196603U},
        {4100000U, 848U, 4293459914U},
        {4100000U, 852U, 4289527716U},
        {4100000U, 856U, 4291625014U},
        {4100000U, 860U, 14090628U},
        {4100000U, 864U, 32899548U},
        {4100000U, 868U, 16777056U},
        {4100000U, 872U, 4250008429U},
        {4100000U, 876U, 4201577205U},
        {4100000U, 880U, 4248895747U},
        {4100000U, 884U, 89590009U},
        {4100000U, 888U, 178129257U},
        {4100000U, 892U, 88342274U},
        {4100000U, 896U, 4165137141U},
        {4100000U, 900U, 4040094386U},
        {4100000U, 904U, 4166910059U},
        {4100000U, 908U, 145362635U},
        {4100000U, 912U, 286064640U},
        {4200000U, 840U, 65539U},
        {4200000U, 844U, 327683U},
        {4200000U, 848U, 4294180819U},
        {4200000U, 852U, 4289396619U},
        {4200000U, 856U, 4288020453U},
        {4200000U, 860U, 8388938U},
        {4200000U, 864U, 33423935U},
        {4200000U, 868U, 28966992U},
        {4200000U, 872U, 4264950776U},
        {4200000U, 876U, 4200790587U},
        {4200000U, 880U, 4227465086U},
        {4200000U, 884U, 67176502U},
        {4200000U, 888U, 178850365U},
        {4200000U, 892U, 111083647U},
        {4200000U, 896U, 4185256853U},
        {4200000U, 900U, 4039897649U},
        {4200000U, 904U, 4155113419U},
        {4200000U, 908U, 139202223U},
        {4200000U, 912U, 286064640U},
        {4300000U, 840U, 65539U},
        {4300000U, 844U, 524298U},
        {4300000U, 848U, 65508U},
        {4300000U, 852U, 4290051969U},
        {4300000U, 856U, 4285202326U},
        {4300000U, 860U, 1835248U},
        {4300000U, 864U, 30868081U},
        {4300000U, 868U, 39059771U},
        {4300000U, 872U, 4281793725U},
        {4300000U, 876U, 4204788165U},
        {4300000U, 880U, 4208721406U},
        {4300000U, 884U, 42731323U},
        {4300000U, 888U, 175442655U},
        {4300000U, 892U, 132186618U},
        {4300000U, 896U, 4206425166U},
        {4300000U, 900U, 4041077182U},
        {4300000U, 904U, 4143578923U},
        {4300000U, 908U, 132976276U},
        {4300000U, 912U, 286064640U},
        {4400000U, 840U, 3U},
        {4400000U, 844U, 589839U},
        {4400000U, 848U, 983032U},
        {4400000U, 852U, 4291428231U},
        {4400000U, 856U, 4283629396U},
        {4400000U, 860U, 4290052222U},
        {4400000U, 864U, 25559664U},
        {4400000U, 868U, 46137872U},
        {4400000U, 872U, 4521394U},
        {4400000U, 876U, 4213373335U},
        {4400000U, 880U, 4193451152U},
        {4400000U, 884U, 16909839U},
        {4400000U, 888U, 168102732U},
        {4400000U, 892U, 151126894U},
        {4400000U, 896U, 4228576542U},
        {4400000U, 900U, 4043764058U},
        {4400000U, 904U, 4132372107U},
        {4400000U, 908U, 126684791U},
        {4400000U, 912U, 286064640U},
        {4500000U, 840U, 2U},
        {4500000U, 844U, 524306U},
        {4500000U, 848U, 1638414U},
        {4500000U, 852U, 4293263262U},
        {4500000U, 856U, 4283432741U},
        {4500000U, 860U, 4283826176U},
        {4500000U, 864U, 17957435U},
        {4500000U, 868U, 49742528U},
        {4500000U, 872U, 21888712U},
        {4500000U, 876U, 4226152883U},
        {4500000U, 880U, 4182244161U},
        {4500000U, 884U, 4285531321U},
        {4500000U, 888U, 156896129U},
        {4500000U, 892U, 167773400U},
        {4500000U, 896U, 4251317763U},
        {4500000U, 900U, 4047827204U},
        {4500000U, 904U, 4121624044U},
        {4500000U, 908U, 120262234U},
        {4500000U, 912U, 286064640U},
        {4600000U, 840U, 1U},
        {4600000U, 844U, 393234U},
        {4600000U, 848U, 2097186U},
        {4600000U, 852U, 393153U},
        {4600000U, 856U, 4284612368U},
        {4600000U, 860U, 4278845314U},
        {4600000U, 864U, 8782295U},
        {4600000U, 868U, 49611584U},
        {4600000U, 872U, 37879792U},
        {4600000U, 876U, 4242405913U},
        {4600000U, 880U, 4175624734U},
        {4600000U, 884U, 4259513155U},
        {4600000U, 888U, 142150527U},
        {4600000U, 892U, 181732913U},
        {4600000U, 896U, 4274517756U},
        {4600000U, 900U, 4053332157U},
        {4600000U, 904U, 4111334734U},
        {4600000U, 908U, 113839677U},
        {4600000U, 912U, 286064640U},
        {4700000U, 840U, 65535U},
        {4700000U, 844U, 196623U},
        {4700000U, 848U, 2228272U},
        {4700000U, 852U, 2490349U},
        {4700000U, 856U, 4287102741U},
        {4700000U, 860U, 4275502864U},
        {4700000U, 864U, 4293722444U},
        {4700000U, 868U, 45679494U},
        {4700000U, 872U, 51446041U},
        {4700000U, 876U, 4261345988U},
        {4700000U, 880U, 4173789487U},
        {4700000U, 884U, 4234609079U},
        {4700000U, 888U, 124193604U},
        {4700000U, 892U, 192808822U},
        {4700000U, 896U, 3012615U},
        {4700000U, 900U, 4060147846U},
        {4700000U, 904U, 4101504177U},
        {4700000U, 908U, 107286046U},
        {4700000U, 912U, 286064640U},
        {4800000U, 840U, 4294967294U},
        {4800000U, 844U, 4294901769U},
        {4800000U, 848U, 1966136U},
        {4800000U, 852U, 4128795U},
        {4800000U, 856U, 4290576182U},
        {4800000U, 860U, 4274192054U},
        {4800000U, 864U, 4283826341U},
        {4800000U, 868U, 38273933U},
        {4800000U, 872U, 61866546U},
        {4800000U, 876U, 4281990059U},
        {4800000U, 880U, 4176803967U},
        {4800000U, 884U, 4211474464U},
        {4800000U, 888U, 103418578U},
        {4800000U, 892U, 200870051U},
        {4800000U, 896U, 26409250U},
        {4800000U, 900U, 4068339806U},
        {4800000U, 904U, 4092132372U},
        {4800000U, 908U, 100666880U},
        {4800000U, 912U, 286064640U},
        {4900000U, 840U, 4294967293U},
        {4900000U, 844U, 4294705154U},
        {4900000U, 848U, 1441847U},
        {4900000U, 852U, 5308486U},
        {4900000U, 856U, 4294573933U},
        {4900000U, 860U, 4275109500U},
        {4900000U, 864U, 4274978800U},
        {4900000U, 868U, 27919190U},
        {4900000U, 872U, 68354859U},
        {4900000U, 876U, 8387781U},
        {4900000U, 880U, 4184668178U},
        {4900000U, 884U, 4191092359U},
        {4900000U, 888U, 80284204U},
        {4900000U, 892U, 205719988U},
        {4900000U, 896U, 49543754U},
        {4900000U, 900U, 4077842502U},
        {4900000U, 904U, 4083284858U},
        {4900000U, 908U, 94047712U},
        {4900000U, 912U, 286064640U},
        {5000000U, 840U, 4294967293U},
        {5000000U, 844U, 4294574074U},
        {5000000U, 848U, 655405U},
        {5000000U, 852U, 5701735U},
        {5000000U, 856U, 3669941U},
        {5000000U, 860U, 4278189672U},
        {5000000U, 864U, 4267900733U},
        {5000000U, 868U, 15467235U},
        {5000000U, 872U, 70583286U},
        {5000000U, 876U, 29294085U},
        {5000000U, 880U, 4196923374U},
        {5000000U, 884U, 4173790456U},
        {5000000U, 888U, 55314772U},
        {5000000U, 892U, 207358628U},
        {5000000U, 896U, 72153982U},
        {5000000U, 900U, 4088524863U},
        {5000000U, 904U, 4074961633U},
        {5000000U, 908U, 87297472U},
        {5000000U, 912U, 286064640U},
        {5100000U, 840U, 65533U},
        {5100000U, 844U, 4294508532U},
        {5100000U, 848U, 4294770718U},
        {5100000U, 852U, 5308539U},
        {5100000U, 856U, 7208966U},
        {5100000U, 860U, 4282973820U},
        {5100000U, 864U, 4263247514U},
        {5100000U, 868U, 1901118U},
        {5100000U, 872U, 68355208U},
        {5100000U, 876U, 48693083U},
        {5100000U, 880U, 4213110802U},
        {5100000U, 884U, 4160224127U},
        {5100000U, 888U, 29100110U},
        {5100000U, 892U, 205720434U},
        {5100000U, 896U, 94043322U},
        {5100000U, 900U, 4100452422U},
        {5100000U, 904U, 4067228234U},
        {5100000U, 908U, 80547232U},
        {5100000U, 912U, 286064640U},
        {5200000U, 840U, 65534U},
        {5200000U, 844U, 4294508527U},
        {5200000U, 848U, 4293918729U},
        {5200000U, 852U, 4128895U},
        {5200000U, 856U, 9961558U},
        {5200000U, 860U, 4289068726U},
        {5200000U, 864U, 4261477909U},
        {5200000U, 868U, 4283105648U},
        {5200000U, 872U, 61867223U},
        {5200000U, 876U, 65536185U},
        {5200000U, 880U, 4232640639U},
        {5200000U, 884U, 4150852131U},
        {5200000U, 888U, 2230047U},
        {5200000U, 892U, 200870939U},
        {5200000U, 896U, 115015165U},
        {5200000U, 900U, 4113428574U},
        {5200000U, 904U, 4060019125U},
        {5200000U, 908U, 73665919U},
        {5200000U, 912U, 286064640U},
        {5300000U, 840U, 65535U},
        {5300000U, 844U, 4294574062U},
        {5300000U, 848U, 4293328883U},
        {5300000U, 852U, 2424946U},
        {5300000U, 856U, 11468956U},
        {5300000U, 860U, 851728U},
        {5300000U, 864U, 4262723000U},
        {5300000U, 868U, 4270260361U},
        {5300000U, 872U, 51447009U},
        {5300000U, 876U, 79168015U},
        {5300000U, 880U, 4254660911U},
        {5300000U, 884U, 4145936624U},
        {5300000U, 888U, 4270327246U},
        {5300000U, 892U, 192810140U},
        {5300000U, 896U, 134807364U},
        {5300000U, 900U, 4127453318U},
        {5300000U, 904U, 4053465378U},
        {5300000U, 908U, 66784606U},
        {5300000U, 912U, 286064640U},
        {5400000U, 840U, 1U},
        {5400000U, 844U, 4294770671U},
        {5400000U, 848U, 4292935648U},
        {5400000U, 852U, 327766U},
        {5400000U, 856U, 11534545U},
        {5400000U, 860U, 7470978U},
        {5400000U, 864U, 4266917260U},
        {5400000U, 868U, 4259315609U},
        {5400000U, 872U, 37815459U},
        {5400000U, 876U, 88736589U},
        {5400000U, 880U, 4278319646U},
        {5400000U, 884U, 4145543149U},
        {5400000U, 888U, 4243915873U},
        {5400000U, 892U, 181734644U},
        {5400000U, 896U, 153157773U},
        {5400000U, 900U, 4142395581U},
        {5400000U, 904U, 4047501457U},
        {5400000U, 908U, 59903291U},
        {5400000U, 912U, 286064640U},
        {5500000U, 840U, 65538U},
        {5500000U, 844U, 4294967283U},
        {5500000U, 848U, 4292804561U},
        {5500000U, 852U, 4293197871U},
        {5500000U, 856U, 10223853U},
        {5500000U, 860U, 13303808U},
        {5500000U, 864U, 4273667476U},
        {5500000U, 868U, 4251057840U},
        {5500000U, 872U, 21824546U},
        {5500000U, 876U, 93783140U},
        {5500000U, 880U, 7666497U},
        {5500000U, 884U, 4149868321U},
        {5500000U, 888U, 4218749662U},
        {5500000U, 892U, 167775521U},
        {5500000U, 896U, 170000852U},
        {5500000U, 900U, 4158255364U},
        {5500000U, 904U, 4042127364U},
        {5500000U, 908U, 52956441U},
        {5500000U, 912U, 286064640U},
        {5600000U, 840U, 65539U},
        {5600000U, 844U, 262138U},
        {5600000U, 848U, 4293132233U},
        {5600000U, 852U, 4291362818U},
        {5600000U, 856U, 7667951U},
        {5600000U, 860U, 17694846U},
        {5600000U, 864U, 4282252751U},
        {5600000U, 868U, 4246142429U},
        {5600000U, 872U, 4457317U},
        {5600000U, 876U, 94045512U},
        {5600000U, 880U, 31718544U},
        {5600000U, 884U, 4158650001U},
        {5600000U, 888U, 4195287373U},
        {5600000U, 892U, 151129379U},
        {5600000U, 896U, 185205528U},
        {5600000U, 900U, 4174901594U},
        {5600000U, 904U, 4037408633U},
        {5600000U, 908U, 45944054U},
        {5600000U, 912U, 286064640U},
        {5700000U, 840U, 65539U},
        {5700000U, 844U, 393217U},
        {5700000U, 848U, 4293722057U},
        {5700000U, 852U, 4290052052U},
        {5700000U, 856U, 4194517U},
        {5700000U, 860U, 20316400U},
        {5700000U, 864U, 4292083257U},
        {5700000U, 868U, 4244962609U},
        {5700000U, 872U, 4281729655U},
        {5700000U, 876U, 89523695U},
        {5700000U, 880U, 54459902U},
        {5700000U, 884U, 4171626050U},
        {5700000U, 888U, 4174118838U},
        {5700000U, 892U, 132189435U},
        {5700000U, 896U, 198509654U},
        {5700000U, 900U, 4192203198U},
        {5700000U, 904U, 4033345266U},
        {5700000U, 908U, 38931666U},
        {5700000U, 912U, 286064640U},
        {5800000U, 840U, 3U},
        {5800000U, 844U, 524297U},
        {5800000U, 848U, 4294508498U},
        {5800000U, 852U, 4289396652U},
        {5800000U, 856U, 131235U},
        {5800000U, 860U, 20709706U},
        {5800000U, 864U, 7208649U},
        {5800000U, 868U, 4247518391U},
        {5800000U, 872U, 4264886629U},
        {5800000U, 876U, 80414289U},
        {5800000U, 880U, 74973054U},
        {5800000U, 884U, 4188403253U},
        {5800000U, 888U, 4155637280U},
        {5800000U, 892U, 111086760U},
        {5800000U, 896U, 209782155U},
        {5800000U, 900U, 4210094641U},
        {5800000U, 904U, 4029937261U},
        {5800000U, 908U, 31853742U},
        {5800000U, 912U, 286064640U},
        {5900000U, 840U, 2U},
        {5900000U, 844U, 589838U},
        {5900000U, 848U, 393185U},
        {5900000U, 852U, 4289527696U},
        {5900000U, 856U, 4291100767U},
        {5900000U, 860U, 18940292U},
        {5900000U, 864U, 16580466U},
        {5900000U, 868U, 4253744247U},
        {5900000U, 872U, 4249944127U},
        {5900000U, 876U, 67241577U},
        {5900000U, 880U, 92471555U},
        {5900000U, 884U, 4208457323U},
        {5900000U, 888U, 4140366995U},
        {5900000U, 892U, 88280107U},
        {5900000U, 896U, 218957493U},
        {5900000U, 900U, 4228444850U},
        {5900000U, 904U, 4027250156U},
        {5900000U, 908U, 24841353U},
        {5900000U, 912U, 286064640U},
        {6000000U, 840U, 1U},
        {6000000U, 844U, 458770U},
        {6000000U, 848U, 1245173U},
        {6000000U, 852U, 4290445186U},
        {6000000U, 856U, 4287496207U},
        {6000000U, 860U, 15204760U},
        {6000000U, 864U, 24444968U},
        {6000000U, 868U, 4263050357U},
        {6000000U, 872U, 4237950741U},
        {6000000U, 876U, 50660918U},
        {6000000U, 880U, 106300031U},
        {6000000U, 884U, 4231198434U},
        {6000000U, 888U, 4128570135U},
        {6000000U, 892U, 64097159U},
        {6000000U, 896U, 225904594U},
        {6000000U, 900U, 4247188289U},
        {6000000U, 904U, 4025152879U},
        {6000000U, 908U, 17763428U},
        {6000000U, 912U, 286064640U},
        {6100000U, 840U, 4294901760U},
        {6100000U, 844U, 327698U},
        {6100000U, 848U, 1835019U},
        {6100000U, 852U, 4291952516U},
        {6100000U, 856U, 4284940222U},
        {6100000U, 860U, 9830788U},
        {6100000U, 864U, 30212314U},
        {6100000U, 868U, 4274846898U},
        {6100000U, 872U, 4229430777U},
        {6100000U, 876U, 31458748U},
        {6100000U, 880U, 115803108U},
        {6100000U, 884U, 4255905688U},
        {6100000U, 888U, 4120508851U},
        {6100000U, 892U, 38865597U},
        {6100000U, 896U, 230623455U},
        {6100000U, 900U, 4266193884U},
        {6100000U, 904U, 4023776502U},
        {6100000U, 908U, 10619966U},
        {6100000U, 912U, 286064640U},
        {6200000U, 840U, 4294967294U},
        {6200000U, 844U, 131087U},
        {6200000U, 848U, 2162719U},
        {6200000U, 852U, 4293984151U},
        {6200000U, 856U, 4283498356U},
        {6200000U, 860U, 3408202U},
        {6200000U, 864U, 33161593U},
        {6200000U, 868U, 4288150826U},
        {6200000U, 872U, 4224974074U},
        {6200000U, 876U, 10683646U},
        {6200000U, 880U, 120653093U},
        {6200000U, 884U, 4281858182U},
        {6200000U, 888U, 4116510830U},
        {6200000U, 892U, 13044176U},
        {6200000U, 896U, 232917467U},
        {6200000U, 900U, 4285396100U},
        {6200000U, 904U, 4023121025U},
        {6200000U, 908U, 3542040U},
        {6200000U, 912U, 286064640U},
        {6300000U, 840U, 4294967293U},
        {6300000U, 844U, 4294836234U},
        {6300000U, 848U, 2162735U},
        {6300000U, 852U, 1114040U},
        {6300000U, 856U, 4283498299U},
        {6300000U, 860U, 4291559664U},
        {6300000U, 864U, 33161722U},
        {6300000U, 868U, 6946260U},
        {6300000U, 872U, 4224973862U},
        {6300000U, 876U, 4284285959U},
        {6300000U, 880U, 120653368U},
        {6300000U, 884U, 13236648U},
        {6300000U, 888U, 4116510542U},
        {6300000U, 892U, 4281927875U},
        {6300000U, 896U, 232917699U},
        {6300000U, 900U, 9696567U},
        {6300000U, 904U, 4023120912U},
        {6300000U, 908U, 4291431410U},
        {6300000U, 912U, 286064640U},
        {6400000U, 840U, 4294967293U},
        {6400000U, 844U, 4294639619U},
        {6400000U, 848U, 1835063U},
        {6400000U, 852U, 3145698U},
        {6400000U, 856U, 4284940055U},
        {6400000U, 860U, 4285137022U},
        {6400000U, 864U, 30212689U},
        {6400000U, 868U, 20250277U},
        {6400000U, 872U, 4229430155U},
        {6400000U, 876U, 4263510752U},
        {6400000U, 880U, 115803923U},
        {6400000U, 884U, 39189237U},
        {6400000U, 888U, 4120507992U},
        {6400000U, 892U, 4256106393U},
        {6400000U, 896U, 230624150U},
        {6400000U, 900U, 28898805U},
        {6400000U, 904U, 4023776163U},
        {6400000U, 908U, 4284353482U},
        {6400000U, 912U, 286064640U},
        {6500000U, 840U, 65533U},
        {6500000U, 844U, 4294574075U},
        {6500000U, 848U, 1179703U},
        {6500000U, 852U, 4587536U},
        {6500000U, 856U, 4287561487U},
        {6500000U, 860U, 4279762944U},
        {6500000U, 864U, 24445558U},
        {6500000U, 868U, 32046989U},
        {6500000U, 872U, 4237949745U},
        {6500000U, 876U, 4244308376U},
        {6500000U, 880U, 106301357U},
        {6500000U, 884U, 63896676U},
        {6500000U, 888U, 4128568722U},
        {6500000U, 892U, 4230874710U},
        {6500000U, 896U, 225905746U},
        {6500000U, 900U, 47904445U},
        {6500000U, 904U, 4025152315U},
        {6500000U, 908U, 4277210019U},
        {6500000U, 912U, 286064640U},
        {6600000U, 840U, 65534U},
        {6600000U, 844U, 4294442997U},
        {6600000U, 848U, 327727U},
        {6600000U, 852U, 5505084U},
        {6600000U, 856U, 4291165986U},
        {6600000U, 860U, 4276092802U},
        {6600000U, 864U, 16515687U},
        {6600000U, 868U, 41287806U},
        {6600000U, 872U, 4250008348U},
        {6600000U, 876U, 4227727422U},
        {6600000U, 880U, 92473346U},
        {6600000U, 884U, 86638060U},
        {6600000U, 888U, 4140365054U},
        {6600000U, 892U, 4206691583U},
        {6600000U, 896U, 218959094U},
        {6600000U, 900U, 66647951U},
        {6600000U, 904U, 4027249367U},
        {6600000U, 908U, 4270132091U},
        {6600000U, 912U, 286064640U},
        {6700000U, 840U, 65535U},
        {6700000U, 844U, 4294508528U},
        {6700000U, 848U, 4294443040U},
        {6700000U, 852U, 5636192U},
        {6700000U, 856U, 196430U},
        {6700000U, 860U, 4274323216U},
        {6700000U, 864U, 7143973U},
        {6700000U, 868U, 47513958U},
        {6700000U, 872U, 4264950606U},
        {6700000U, 876U, 4214619873U},
        {6700000U, 880U, 74909710U},
        {6700000U, 884U, 106692482U},
        {6700000U, 888U, 4155634848U},
        {6700000U, 892U, 4183884695U},
        {6700000U, 896U, 209784192U},
        {6700000U, 900U, 84998249U},
        {6700000U, 904U, 4029936248U},
        {6700000U, 908U, 4263119698U},
        {6700000U, 912U, 286064640U},
        {6800000U, 840U, 65536U},
        {6800000U, 844U, 4294639598U},
        {6800000U, 848U, 4293656588U},
        {6800000U, 852U, 4980856U},
        {6800000U, 856U, 4259726U},
        {6800000U, 860U, 4274716342U},
        {6800000U, 864U, 4292018614U},
        {6800000U, 868U, 50070069U},
        {6800000U, 872U, 4281793477U},
        {6800000U, 876U, 4205510032U},
        {6800000U, 880U, 54396882U},
        {6800000U, 884U, 123404571U},
        {6800000U, 888U, 4174115962U},
        {6800000U, 892U, 4162781732U},
        {6800000U, 896U, 198512111U},
        {6800000U, 900U, 102889803U},
        {6800000U, 904U, 4033344030U},
        {6800000U, 908U, 4256041769U},
        {6800000U, 912U, 286064640U},
        {6900000U, 840U, 65537U},
        {6900000U, 844U, 4294836207U},
        {6900000U, 848U, 4293132278U},
        {6900000U, 852U, 3604607U},
        {6900000U, 856U, 7733212U},
        {6900000U, 860U, 4277337724U},
        {6900000U, 864U, 4282188066U},
        {6900000U, 868U, 48890589U},
        {6900000U, 872U, 4521081U},
        {6900000U, 876U, 4200987741U},
        {6900000U, 880U, 31655758U},
        {6900000U, 884U, 136381101U},
        {6900000U, 888U, 4195349644U},
        {6900000U, 892U, 4143841449U},
        {6900000U, 896U, 185208387U},
        {6900000U, 900U, 120191539U},
        {6900000U, 904U, 4037407177U},
        {6900000U, 908U, 4249029376U},
        {6900000U, 912U, 286064640U},
        {7000000U, 840U, 65538U},
        {7000000U, 844U, 131059U},
        {7000000U, 848U, 4292804578U},
        {7000000U, 852U, 1769590U},
        {7000000U, 856U, 10223661U},
        {7000000U, 860U, 4281728616U},
        {7000000U, 864U, 4273602678U},
        {7000000U, 868U, 43975506U},
        {7000000U, 872U, 21888352U},
        {7000000U, 876U, 4201249619U},
        {7000000U, 880U, 7603848U},
        {7000000U, 884U, 145163309U},
        {7000000U, 888U, 4218811606U},
        {7000000U, 892U, 4127260461U},
        {7000000U, 896U, 170004090U},
        {7000000U, 900U, 136837922U},
        {7000000U, 904U, 4042125690U},
        {7000000U, 908U, 4242016982U},
        {7000000U, 912U, 286064640U},
        {7100000U, 840U, 3U},
        {7100000U, 844U, 327673U},
        {7100000U, 848U, 4292935634U},
        {7100000U, 852U, 4294639710U},
        {7100000U, 856U, 11534458U},
        {7100000U, 860U, 4287626876U},
        {7100000U, 864U, 4266917825U},
        {7100000U, 868U, 35718028U},
        {7100000U, 872U, 37879406U},
        {7100000U, 876U, 4206295680U},
        {7100000U, 880U, 4278257031U},
        {7100000U, 884U, 149489040U},
        {7100000U, 888U, 4243977558U},
        {7100000U, 892U, 4113300915U},
        {7100000U, 896U, 153161365U},
        {7100000U, 900U, 152697877U},
        {7100000U, 904U, 4047499567U},
        {7100000U, 908U, 4235070123U},
        {7100000U, 912U, 286064640U},
        {7200000U, 840U, 3U},
        {7200000U, 844U, 458752U},
        {7200000U, 848U, 4293328841U},
        {7200000U, 852U, 4292542521U},
        {7200000U, 856U, 11468984U},
        {7200000U, 860U, 4294246070U},
        {7200000U, 864U, 4262723344U},
        {7200000U, 868U, 24707976U},
        {7200000U, 872U, 51511186U},
        {7200000U, 876U, 4215863789U},
        {7200000U, 880U, 4254598227U},
        {7200000U, 884U, 149096141U},
        {7200000U, 888U, 4270388746U},
        {7200000U, 892U, 4102224960U},
        {7200000U, 896U, 134745747U},
        {7200000U, 900U, 167640332U},
        {7200000U, 904U, 4053463274U},
        {7200000U, 908U, 4228188801U},
        {7200000U, 912U, 286064640U},
        {7300000U, 840U, 2U},
        {7300000U, 844U, 524296U},
        {7300000U, 848U, 4293984201U},
        {7300000U, 852U, 4290838541U},
        {7300000U, 856U, 9961698U},
        {7300000U, 860U, 6029072U},
        {7300000U, 864U, 4261478004U},
        {7300000U, 868U, 11862853U},
        {7300000U, 872U, 61866172U},
        {7300000U, 876U, 4229495201U},
        {7300000U, 880U, 4232577785U},
        {7300000U, 884U, 144181212U},
        {7300000U, 888U, 2291440U},
        {7300000U, 892U, 4094163674U},
        {7300000U, 896U, 114953844U},
        {7300000U, 900U, 181665286U},
        {7300000U, 904U, 4060016811U},
        {7300000U, 908U, 4221307477U},
        {7300000U, 912U, 286064640U},
        {7400000U, 840U, 1U},
        {7400000U, 844U, 524302U},
        {7400000U, 848U, 4294836176U},
        {7400000U, 852U, 4289724383U},
        {7400000U, 856U, 7209202U},
        {7400000U, 860U, 12124034U},
        {7400000U, 864U, 4263247352U},
        {7400000U, 868U, 4293067464U},
        {7400000U, 872U, 68354524U},
        {7400000U, 876U, 4246403486U},
        {7400000U, 880U, 4213047683U},
        {7400000U, 884U, 134809781U},
        {7400000U, 888U, 29161473U},
        {7400000U, 892U, 4089313669U},
        {7400000U, 896U, 93982264U},
        {7400000U, 900U, 194641667U},
        {7400000U, 904U, 4067225713U},
        {7400000U, 908U, 4214426154U},
        {7400000U, 912U, 286064640U},
        {7500000U, 840U, 4294901760U},
        {7500000U, 844U, 458769U},
        {7500000U, 848U, 720863U},
        {7500000U, 852U, 4289331125U},
        {7500000U, 856U, 3604710U},
        {7500000U, 860U, 16842752U},
        {7500000U, 864U, 4267900328U},
        {7500000U, 868U, 4279501337U},
        {7500000U, 872U, 70583009U},
        {7500000U, 876U, 4265802214U},
        {7500000U, 880U, 4196859904U},
        {7500000U, 884U, 121243987U},
        {7500000U, 888U, 55376185U},
        {7500000U, 892U, 4087674949U},
        {7500000U, 896U, 72093153U},
        {7500000U, 900U, 206503936U},
        {7500000U, 904U, 4074958908U},
        {7500000U, 908U, 4207675902U},
        {7500000U, 912U, 286064640U},
        {7600000U, 840U, 4294967295U},
        {7600000U, 844U, 262162U},
        {7600000U, 848U, 1507315U},
        {7600000U, 852U, 4289724309U},
        {7600000U, 856U, 4294508736U},
        {7600000U, 860U, 19923070U},
        {7600000U, 864U, 4274978185U},
        {7600000U, 868U, 4267049286U},
        {7600000U, 872U, 68355004U},
        {7600000U, 876U, 4286708342U},
        {7600000U, 880U, 4184669821U},
        {7600000U, 884U, 103942577U},
        {7600000U, 888U, 80345747U},
        {7600000U, 892U, 4089313054U},
        {7600000U, 896U, 49483118U},
        {7600000U, 900U, 217186557U},
        {7600000U, 904U, 4083281934U},
        {7600000U, 908U, 4200925649U},
        {7600000U, 912U, 286064640U},
        {7700000U, 840U, 4294967294U},
        {7700000U, 844U, 65552U},
        {7700000U, 848U, 1966088U},
        {7700000U, 852U, 4290903940U},
        {7700000U, 856U, 4290510980U},
        {7700000U, 860U, 20840688U},
        {7700000U, 864U, 4283891103U},
        {7700000U, 868U, 4256694364U},
        {7700000U, 872U, 61867104U},
        {7700000U, 876U, 13105989U},
        {7700000U, 880U, 4176805127U},
        {7700000U, 884U, 83495374U},
        {7700000U, 888U, 103480327U},
        {7700000U, 892U, 4094162452U},
        {7700000U, 896U, 26348768U},
        {7700000U, 900U, 226689530U},
        {7700000U, 904U, 4092129253U},
        {7700000U, 908U, 4194306468U},
        {7700000U, 912U, 286064640U},
        {7800000U, 840U, 65533U},
        {7800000U, 844U, 4294770699U},
        {7800000U, 848U, 2228253U},
        {7800000U, 852U, 4292607874U},
        {7800000U, 856U, 4287037497U},
        {7800000U, 860U, 19530058U},
        {7800000U, 864U, 4293787111U},
        {7800000U, 868U, 4249354091U},
        {7800000U, 872U, 51446982U},
        {7800000U, 876U, 33750092U},
        {7800000U, 880U, 4173790125U},
        {7800000U, 884U, 60361127U},
        {7800000U, 888U, 124255630U},
        {7800000U, 892U, 4102223147U},
        {7800000U, 896U, 2952249U},
        {7800000U, 900U, 234881780U},
        {7800000U, 904U, 4101500866U},
        {7800000U, 908U, 4187687287U},
        {7800000U, 912U, 286064640U},
        {7900000U, 840U, 65533U},
        {7900000U, 844U, 4294574084U},
        {7900000U, 848U, 2097197U},
        {7900000U, 852U, 4294705041U},
        {7900000U, 856U, 4284612584U},
        {7900000U, 860U, 16187780U},
        {7900000U, 864U, 8846940U},
        {7900000U, 868U, 4245421701U},
        {7900000U, 872U, 37815525U},
        {7900000U, 876U, 52690301U},
        {7900000U, 880U, 4175624825U},
        {7900000U, 884U, 35457343U},
        {7900000U, 888U, 142212898U},
        {7900000U, 892U, 4113298533U},
        {7900000U, 896U, 4274457465U},
        {7900000U, 900U, 241697771U},
        {7900000U, 904U, 4111331237U},
        {7900000U, 908U, 4181133642U},
        {7900000U, 912U, 286064640U},
        {8000000U, 840U, 65534U},
        {8000000U, 844U, 4294508541U},
        {8000000U, 848U, 1638454U},
        {8000000U, 852U, 1834927U},
        {8000000U, 856U, 4283432857U},
        {8000000U, 860U, 11141528U},
        {8000000U, 864U, 18022131U},
        {8000000U, 868U, 4245290425U},
        {8000000U, 872U, 21824702U},
        {8000000U, 876U, 68943564U},
        {8000000U, 880U, 4182243704U},
        {8000000U, 884U, 9439383U},
        {8000000U, 888U, 156893369U},
        {8000000U, 892U, 4127257541U},
        {8000000U, 896U, 4251257507U},
        {8000000U, 900U, 247203038U},
        {8000000U, 904U, 4121620366U},
        {8000000U, 908U, 4174711068U},
        {8000000U, 912U, 286064640U},
        {8100000U, 840U, 65535U},
        {8100000U, 844U, 4294442998U},
        {8100000U, 848U, 917560U},
        {8100000U, 852U, 3669975U},
        {8100000U, 856U, 4283629398U},
        {8100000U, 860U, 4915588U},
        {8100000U, 864U, 25624481U},
        {8100000U, 868U, 4248894742U},
        {8100000U, 872U, 4457554U},
        {8100000U, 876U, 81657897U},
        {8100000U, 880U, 4193450162U},
        {8100000U, 884U, 4278060981U},
        {8100000U, 888U, 168100429U},
        {8100000U, 892U, 4143903565U},
        {8100000U, 896U, 4228516280U},
        {8100000U, 900U, 251266509U},
        {8100000U, 904U, 4132368253U},
        {8100000U, 908U, 4168288493U},
        {8100000U, 912U, 286064640U},
        {8200000U, 840U, 65536U},
        {8200000U, 844U, 4294508528U},
        {8200000U, 848U, 49U},
        {8200000U, 852U, 4980741U},
        {8200000U, 856U, 4285202215U},
        {8200000U, 860U, 4293132618U},
        {8200000U, 864U, 30867543U},
        {8200000U, 868U, 4255972518U},
        {8200000U, 872U, 4281729959U},
        {8200000U, 876U, 90243460U},
        {8200000U, 880U, 4208719918U},
        {8200000U, 884U, 4252239519U},
        {8200000U, 888U, 175440854U},
        {8200000U, 892U, 4162843391U},
        {8200000U, 896U, 4206364857U},
        {8200000U, 900U, 253953717U},
        {8200000U, 904U, 4143574898U},
        {8200000U, 908U, 4161996991U},
        {8200000U, 912U, 286064640U},
        {8300000U, 840U, 65537U},
        {8300000U, 844U, 4294705134U},
        {8300000U, 848U, 4294115362U},
        {8300000U, 852U, 5636146U},
        {8300000U, 856U, 4288020240U},
        {8300000U, 860U, 4286578928U},
        {8300000U, 864U, 33423622U},
        {8300000U, 868U, 4266065009U},
        {8300000U, 872U, 4264886983U},
        {8300000U, 876U, 94241486U},
        {8300000U, 880U, 4227463154U},
        {8300000U, 884U, 4227794267U},
        {8300000U, 888U, 178849100U},
        {8300000U, 892U, 4183945947U},
        {8300000U, 896U, 4185196458U},
        {8300000U, 900U, 255133591U},
        {8300000U, 904U, 4155109229U},
        {8300000U, 908U, 4155771024U},
        {8300000U, 912U, 286064640U},
        {8400000U, 840U, 65538U},
        {8400000U, 844U, 4294901742U},
        {8400000U, 848U, 4293394447U},
        {8400000U, 852U, 5505112U},
        {8400000U, 856U, 4291690260U},
        {8400000U, 860U, 4280877182U},
        {8400000U, 864U, 32899486U},
        {8400000U, 868U, 4278320252U},
        {8400000U, 872U, 4249944511U},
        {8400000U, 876U, 93455350U},
        {8400000U, 880U, 4248958974U},
        {8400000U, 884U, 4205380595U},
        {8400000U, 888U, 178128553U},
        {8400000U, 892U, 4206752482U},
        {8400000U, 896U, 4165076619U},
        {8400000U, 900U, 254937201U},
        {8400000U, 904U, 4166971246U},
        {8400000U, 908U, 4149610592U},
        {8400000U, 912U, 286064640U},
        {8500000U, 840U, 3U},
        {8500000U, 844U, 196594U},
        {8500000U, 848U, 4293001209U},
        {8500000U, 852U, 4587635U},
        {8500000U, 856U, 786228U},
        {8500000U, 860U, 4276682752U},
        {8500000U, 864U, 29426197U},
        {8500000U, 868U, 4291886277U},
        {8500000U, 872U, 4237885597U},
        {8500000U, 876U, 87885041U},
        {8500000U, 880U, 4272289875U},
        {8500000U, 884U, 4185719408U},
        {8500000U, 888U, 173410276U},
        {8500000U, 892U, 4230935316U},
        {8500000U, 896U, 4146267487U},
        {8500000U, 900U, 253233475U},
        {8500000U, 904U, 4179226485U},
        {8500000U, 908U, 4143581232U},
        {8500000U, 912U, 286064640U},
        {8600000U, 840U, 3U},
        {8600000U, 844U, 393208U},
        {8600000U, 848U, 4292804580U},
        {8600000U, 852U, 3080319U},
        {8600000U, 856U, 4783979U},
        {8600000U, 860U, 4274519938U},
        {8600000U, 864U, 23265887U},
        {8600000U, 868U, 10681671U},
        {8600000U, 872U, 4229431155U},
        {8600000U, 876U, 77858226U},
        {8600000U, 880U, 1571053U},
        {8600000U, 884U, 4169466076U},
        {8600000U, 888U, 164759801U},
        {8600000U, 892U, 4256166768U},
        {8600000U, 896U, 4129031209U},
        {8600000U, 900U, 250087947U},
        {8600000U, 904U, 4191743874U},
        {8600000U, 908U, 4137682944U},
        {8600000U, 912U, 286064640U},
        {8700000U, 840U, 3U},
        {8700000U, 844U, 524287U},
        {8700000U, 848U, 4293001172U},
        {8700000U, 852U, 1048698U},
        {8700000U, 856U, 8191922U},
        {8700000U, 860U, 4274454288U},
        {8700000U, 864U, 15073911U},
        {8700000U, 868U, 23657977U},
        {8700000U, 872U, 4224974416U},
        {8700000U, 876U, 63833649U},
        {8700000U, 880U, 25754056U},
        {8700000U, 884U, 4157079363U},
        {8700000U, 888U, 152373731U},
        {8700000U, 892U, 4281988086U},
        {8700000U, 896U, 4113367786U},
        {8700000U, 900U, 245566153U},
        {8700000U, 904U, 4204523413U},
        {8700000U, 908U, 4131784656U},
        {8700000U, 912U, 286064640U},
        {8800000U, 840U, 2U},
        {8800000U, 844U, 589831U},
        {8800000U, 848U, 4293525450U},
        {8800000U, 852U, 4293918821U},
        {8800000U, 856U, 10551299U},
        {8800000U, 860U, 4276551350U},
        {8800000U, 864U, 5440091U},
        {8800000U, 868U, 34864848U},
        {8800000U, 872U, 4224974150U},
        {8800000U, 876U, 46597736U},
        {8800000U, 880U, 48954075U},
        {8800000U, 884U, 4148952494U},
        {8800000U, 888U, 136514204U},
        {8800000U, 892U, 13104291U},
        {8800000U, 896U, 4099604902U},
        {8800000U, 900U, 239602556U},
        {8800000U, 904U, 4217499566U},
        {8800000U, 908U, 4126082975U},
        {8800000U, 912U, 286064640U},
        {8900000U, 840U, 4294901760U},
        {8900000U, 844U, 524301U},
        {8900000U, 848U, 4294311880U},
        {8900000U, 852U, 4291887171U},
        {8900000U, 856U, 11665491U},
        {8900000U, 860U, 4280614524U},
        {8900000U, 864U, 4290314764U},
        {8900000U, 868U, 43384763U},
        {8900000U, 872U, 4229430372U},
        {8900000U, 876U, 26936916U},
        {8900000U, 880U, 70122524U},
        {8900000U, 884U, 4145347626U},
        {8900000U, 888U, 117574433U},
        {8900000U, 892U, 38925685U},
        {8900000U, 896U, 4087808094U},
        {8900000U, 900U, 232262692U},
        {8900000U, 904U, 4230672333U},
        {8900000U, 908U, 4120446830U},
        {8900000U, 912U, 286064640U},
        {9000000U, 840U, 4294967295U},
        {9000000U, 844U, 393233U},
        {9000000U, 848U, 196559U},
        {9000000U, 852U, 4290379800U},
        {9000000U, 856U, 11337882U},
        {9000000U, 860U, 4286185064U},
        {9000000U, 864U, 4280680850U},
        {9000000U, 868U, 48562347U},
        {9000000U, 872U, 4237949878U},
        {9000000U, 876U, 5965303U},
        {9000000U, 880U, 88472961U},
        {9000000U, 884U, 4146330303U},
        {9000000U, 888U, 95947632U},
        {9000000U, 892U, 64157289U},
        {9000000U, 896U, 4078173973U},
        {9000000U, 900U, 223677631U},
        {9000000U, 904U, 4244041714U},
        {9000000U, 908U, 4114876221U},
        {9000000U, 912U, 286064640U},
        {9100000U, 840U, 4294967294U},
        {9100000U, 844U, 196626U},
        {9100000U, 848U, 1048541U},
        {9100000U, 852U, 4289527786U},
        {9100000U, 856U, 9633999U},
        {9100000U, 860U, 4292673148U},
        {9100000U, 864U, 4272292087U},
        {9100000U, 868U, 50135440U},
        {9100000U, 872U, 4250008390U},
        {9100000U, 876U, 4279567700U},
        {9100000U, 880U, 103284477U},
        {9100000U, 884U, 4151900536U},
        {9100000U, 888U, 72158087U},
        {9100000U, 892U, 88340349U},
        {9100000U, 896U, 4070637007U},
        {9100000U, 900U, 213781838U},
        {9100000U, 904U, 4257542173U},
        {9100000U, 908U, 4109502219U},
        {9100000U, 912U, 286064640U},
        {9200000U, 840U, 65533U},
        {9200000U, 844U, 16U},
        {9200000U, 848U, 1769456U},
        {9200000U, 852U, 4289396671U},
        {9200000U, 856U, 6750445U},
        {9200000U, 860U, 4456118U},
        {9200000U, 864U, 4266000455U},
        {9200000U, 868U, 47907416U},
        {9200000U, 872U, 4264950555U},
        {9200000U, 876U, 4259054707U},
        {9200000U, 880U, 113836162U},
        {9200000U, 884U, 4161927262U},
        {9200000U, 888U, 46730086U},
        {9200000U, 892U, 111147181U},
        {9200000U, 896U, 4065393805U},
        {9200000U, 900U, 202640847U},
        {9200000U, 904U, 4271108173U},
        {9200000U, 908U, 4104193753U},
        {9200000U, 912U, 286064640U},
        {9300000U, 840U, 65533U},
        {9300000U, 844U, 4294705164U},
        {9300000U, 848U, 2097158U},
        {9300000U, 852U, 4290051996U},
        {9300000U, 856U, 3080431U},
        {9300000U, 860U, 10813200U},
        {9300000U, 864U, 4262330258U},
        {9300000U, 868U, 42009335U},
        {9300000U, 872U, 4281793335U},
        {9300000U, 876U, 4240376670U},
        {9300000U, 880U, 119931394U},
        {9300000U, 884U, 4176017272U},
        {9300000U, 888U, 20187917U},
        {9300000U, 892U, 132250100U},
        {9300000U, 896U, 4062444369U},
        {9300000U, 900U, 190385730U},
        {9300000U, 904U, 4284805251U},
        {9300000U, 908U, 4099016359U},
        {9300000U, 912U, 286064640U},
        {9400000U, 840U, 65533U},
        {9400000U, 844U, 4294508549U},
        {9400000U, 848U, 2228250U},
        {9400000U, 852U, 4291428230U},
        {9400000U, 856U, 4293918935U},
        {9400000U, 860U, 15925122U},
        {9400000U, 864U, 4261543653U},
        {9400000U, 868U, 32899938U},
        {9400000U, 872U, 4520857U},
        {9400000U, 876U, 4224451106U},
        {9400000U, 880U, 121111408U},
        {9400000U, 884U, 4193777356U},
        {9400000U, 888U, 4288219774U},
        {9400000U, 892U, 151190352U},
        {9400000U, 896U, 4061854239U},
        {9400000U, 900U, 177016486U},
        {9400000U, 904U, 3469503U},
        {9400000U, 908U, 4093970037U},
        {9400000U, 912U, 286064640U},
        {9500000U, 840U, 65534U},
        {9500000U, 844U, 4294508542U},
        {9500000U, 848U, 1966123U},
        {9500000U, 852U, 4293263233U},
        {9500000U, 856U, 4289986725U},
        {9500000U, 860U, 19398656U},
        {9500000U, 864U, 4263837264U},
        {9500000U, 868U, 21365648U},
        {9500000U, 872U, 21888058U},
        {9500000U, 876U, 4212129998U},
        {9500000U, 880U, 117507263U},
        {9500000U, 884U, 4214748767U},
        {9500000U, 888U, 4261415356U},
        {9500000U, 892U, 167836859U},
        {9500000U, 896U, 4063623416U},
        {9500000U, 900U, 162664188U},
        {9500000U, 904U, 17166593U},
        {9500000U, 908U, 4089054786U},
        {9500000U, 912U, 286064640U},
        {9600000U, 840U, 131071U},
        {9600000U, 844U, 4294508535U},
        {9600000U, 848U, 1376310U},
        {9600000U, 852U, 393100U},
        {9600000U, 856U, 4286644321U},
        {9600000U, 860U, 20775038U},
        {9600000U, 864U, 4268883423U},
        {9600000U, 868U, 8127360U},
        {9600000U, 872U, 37879059U},
        {9600000U, 876U, 4204068720U},
        {9600000U, 880U, 109053410U},
        {9600000U, 884U, 4238079539U},
        {9600000U, 888U, 4235397322U},
        {9600000U, 892U, 181796400U},
        {9600000U, 896U, 4067751904U},
        {9600000U, 900U, 147394371U},
        {9600000U, 904U, 30732615U},
        {9600000U, 908U, 4084270607U},
        {9600000U, 912U, 286064640U},
        {9700000U, 840U, 65537U},
        {9700000U, 844U, 4294574065U},
        {9700000U, 848U, 589880U},
        {9700000U, 852U, 2490279U},
        {9700000U, 856U, 4284350482U},
        {9700000U, 860U, 20054256U},
        {9700000U, 864U, 4276354459U},
        {9700000U, 868U, 4289332017U},
        {9700000U, 872U, 51510805U},
        {9700000U, 876U, 4200660504U},
        {9700000U, 880U, 96274129U},
        {9700000U, 884U, 4263245386U},
        {9700000U, 888U, 4210689966U},
        {9700000U, 892U, 192872363U},
        {9700000U, 896U, 4074108631U},
        {9700000U, 900U, 131272570U},
        {9700000U, 904U, 44298644U},
        {9700000U, 908U, 4079551964U},
        {9700000U, 912U, 286064640U},
        {9800000U, 840U, 65538U},
        {9800000U, 844U, 4294770670U},
        {9800000U, 848U, 4294639666U},
        {9800000U, 852U, 4194253U},
        {9800000U, 856U, 4283367361U},
        {9800000U, 860U, 17170762U},
        {9800000U, 864U, 4285463946U},
        {9800000U, 868U, 4275897002U},
        {9800000U, 872U, 61931316U},
        {9800000U, 876U, 4201970903U},
        {9800000U, 880U, 79628161U},
        {9800000U, 884U, 4289394339U},
        {9800000U, 888U, 4187883115U},
        {9800000U, 892U, 200868136U},
        {9800000U, 896U, 4082759137U},
        {9800000U, 900U, 114429858U},
        {9800000U, 904U, 57733605U},
        {9800000U, 908U, 4075029928U},
        {9800000U, 912U, 286064640U},
        {9900000U, 840U, 3U},
        {9900000U, 844U, 4294967278U},
        {9900000U, 848U, 4293853220U},
        {9900000U, 852U, 5373946U},
        {9900000U, 856U, 4283760503U},
        {9900000U, 860U, 12452228U},
        {9900000U, 864U, 458157U},
        {9900000U, 868U, 4263969267U},
        {9900000U, 872U, 68354142U},
        {9900000U, 876U, 4208065466U},
        {9900000U, 880U, 59770862U},
        {9900000U, 884U, 20707133U},
        {9900000U, 888U, 4167566602U},
        {9900000U, 892U, 205718177U},
        {9900000U, 896U, 4093506814U},
        {9900000U, 900U, 96931770U},
        {9900000U, 904U, 71037500U},
        {9900000U, 908U, 4070638965U},
        {9900000U, 912U, 286064640U},
        {10000000U, 840U, 3U},
        {10000000U, 844U, 262129U},
        {10000000U, 848U, 4293197841U},
        {10000000U, 852U, 5701671U},
        {10000000U, 856U, 4285595452U},
        {10000000U, 860U, 6422936U},
        {10000000U, 864U, 10419713U},
        {10000000U, 868U, 4254400794U},
        {10000000U, 872U, 70582659U},
        {10000000U, 876U, 4218550992U},
        {10000000U, 880U, 37488658U},
        {10000000U, 884U, 46397457U},
        {10000000U, 888U, 4150133648U},
        {10000000U, 892U, 207356945U},
        {10000000U, 896U, 4106351666U},
        {10000000U, 900U, 78843841U},
        {10000000U, 904U, 84144791U},
        {10000000U, 908U, 4066444609U},
        {10000000U, 912U, 286064640U},
        {10100000U, 840U, 3U},
        {10100000U, 844U, 458743U},
        {10100000U, 848U, 4292870140U},
        {10100000U, 852U, 5308496U},
        {10100000U, 856U, 4288544536U},
        {10100000U, 860U, 4294705540U},
        {10100000U, 864U, 19463808U},
        {10100000U, 868U, 4247912494U},
        {10100000U, 872U, 68354706U},
        {10100000U, 876U, 4232968737U},
        {10100000U, 880U, 13699054U},
        {10100000U, 884U, 70646044U},
        {10100000U, 888U, 4135911941U},
        {10100000U, 892U, 205718899U},
        {10100000U, 896U, 4121031549U},
        {10100000U, 900U, 60362682U},
        {10100000U, 904U, 96989944U},
        {10100000U, 908U, 4062315789U},
        {10100000U, 912U, 286064640U},
        {10200000U, 840U, 2U},
        {10200000U, 844U, 589822U},
        {10200000U, 848U, 4292870119U},
        {10200000U, 852U, 4128878U},
        {10200000U, 856U, 4292280079U},
        {10200000U, 860U, 4288020810U},
        {10200000U, 864U, 26738463U},
        {10200000U, 868U, 4245028670U},
        {10200000U, 872U, 61866876U},
        {10200000U, 876U, 4250532279U},
        {10200000U, 880U, 4284286849U},
        {10200000U, 884U, 92666454U},
        {10200000U, 888U, 4125360239U},
        {10200000U, 892U, 200869572U},
        {10200000U, 896U, 4137546464U},
        {10200000U, 900U, 41488290U},
        {10200000U, 904U, 109638493U},
        {10200000U, 908U, 4058383576U},
        {10200000U, 912U, 286064640U},
        {10300000U, 840U, 4294901761U},
        {10300000U, 844U, 589829U},
        {10300000U, 848U, 4293197782U},
        {10300000U, 852U, 2424958U},
        {10300000U, 856U, 1376032U},
        {10300000U, 860U, 4282122480U},
        {10300000U, 864U, 31588304U},
        {10300000U, 868U, 4245880412U},
        {10300000U, 872U, 51446835U},
        {10300000U, 876U, 4270389654U},
        {10300000U, 880U, 4260431569U},
        {10300000U, 884U, 111868855U},
        {10300000U, 888U, 4118740696U},
        {10300000U, 892U, 192808959U},
        {10300000U, 896U, 4155568734U},
        {10300000U, 900U, 22417274U},
        {10300000U, 904U, 122024903U},
        {10300000U, 908U, 4054582436U},
        {10300000U, 912U, 286064640U},
        {10400000U, 840U, 4294967295U},
        {10400000U, 844U, 524300U},
        {10400000U, 848U, 4293787595U},
        {10400000U, 852U, 327805U},
        {10400000U, 856U, 5308236U},
        {10400000U, 860U, 4277534846U},
        {10400000U, 864U, 33489030U},
        {10400000U, 868U, 4250467735U},
        {10400000U, 872U, 37815469U},
        {10400000U, 876U, 4291492288U},
        {10400000U, 880U, 4237886946U},
        {10400000U, 884U, 127597877U},
        {10400000U, 888U, 4116053318U},
        {10400000U, 892U, 181733664U},
        {10400000U, 896U, 4175032822U},
        {10400000U, 900U, 3215171U},
        {10400000U, 904U, 134083637U},
        {10400000U, 908U, 4050912367U},
        {10400000U, 912U, 286064640U},
        {10500000U, 840U, 4294967294U},
        {10500000U, 844U, 327697U},
        {10500000U, 848U, 4294639560U},
        {10500000U, 852U, 4293197931U},
        {10500000U, 856U, 8585100U},
        {10500000U, 860U, 4274782208U},
        {10500000U, 864U, 32506160U},
        {10500000U, 868U, 4258462972U},
        {10500000U, 872U, 21824739U},
        {10500000U, 876U, 17758770U},
        {10500000U, 880U, 4217636031U},
        {10500000U, 884U, 139394757U},
        {10500000U, 888U, 4117363650U},
        {10500000U, 892U, 167774755U},
        {10500000U, 896U, 4195742123U},
        {10500000U, 900U, 4278914812U},
        {10500000U, 904U, 145814695U},
        {10500000U, 908U, 4047438906U},
        {10500000U, 912U, 286064640U},
        {10600000U, 840U, 65533U},
        {10600000U, 844U, 131090U},
        {10600000U, 848U, 524237U},
        {10600000U, 852U, 4291362892U},
        {10600000U, 856U, 10813401U},
        {10600000U, 860U, 4274257794U},
        {10600000U, 864U, 28574145U},
        {10600000U, 868U, 4269210775U},
        {10600000U, 872U, 4457682U},
        {10600000U, 876U, 38140648U},
        {10600000U, 880U, 4200530800U},
        {10600000U, 884U, 146866271U},
        {10600000U, 888U, 4122802770U},
        {10600000U, 892U, 151128836U},
        {10600000U, 896U, 4217434491U},
        {10600000U, 900U, 4259778214U},
        {10600000U, 904U, 157152542U},
        {10600000U, 908U, 4044096517U},
        {10600000U, 912U, 286064640U},
        {10700000U, 840U, 65533U},
        {10700000U, 844U, 4294901777U},
        {10700000U, 848U, 1376219U},
        {10700000U, 852U, 4289986595U},
        {10700000U, 856U, 11665450U},
        {10700000U, 860U, 4275830544U},
        {10700000U, 864U, 22020653U},
        {10700000U, 868U, 4281924719U},
        {10700000U, 872U, 4281730171U},
        {10700000U, 876U, 56556506U},
        {10700000U, 880U, 4187226626U},
        {10700000U, 884U, 149815797U},
        {10700000U, 888U, 4132043006U},
        {10700000U, 892U, 132189122U},
        {10700000U, 896U, 4239847785U},
        {10700000U, 900U, 4240838210U},
        {10700000U, 904U, 168097177U},
        {10700000U, 908U, 4040885200U},
        {10700000U, 912U, 286064640U},
        {10800000U, 840U, 65533U},
        {10800000U, 844U, 4294639629U},
        {10800000U, 848U, 1966061U},
        {10800000U, 852U, 4289396725U},
        {10800000U, 856U, 11141239U},
        {10800000U, 860U, 4279500470U},
        {10800000U, 864U, 13501035U},
        {10800000U, 868U, 720005U},
        {10800000U, 872U, 4264887267U},
        {10800000U, 876U, 72154363U},
        {10800000U, 880U, 4178313346U},
        {10800000U, 884U, 148177791U},
        {10800000U, 888U, 4145084364U},
        {10800000U, 892U, 111086681U},
        {10800000U, 896U, 4262916467U},
        {10800000U, 900U, 4222225871U},
        {10800000U, 904U, 178648599U},
        {10800000U, 908U, 4037870491U},
        {10800000U, 912U, 286064640U},
        {10900000U, 840U, 65534U},
        {10900000U, 844U, 4294508550U},
        {10900000U, 848U, 2162691U},
        {10900000U, 852U, 4289527752U},
        {10900000U, 856U, 9306294U},
        {10900000U, 860U, 4284743292U},
        {10900000U, 864U, 3801717U},
        {10900000U, 868U, 14351578U},
        {10900000U, 872U, 4249944851U},
        {10900000U, 876U, 84016704U},
        {10900000U, 880U, 4174118653U},
        {10900000U, 884U, 141952240U},
        {10900000U, 888U, 4161468098U},
        {10900000U, 892U, 88280264U},
        {10900000U, 896U, 4286247322U},
        {10900000U, 900U, 4204006734U},
        {10900000U, 904U, 188741273U},
        {10900000U, 908U, 4034986853U},
        {10900000U, 912U, 286064640U},
        {11000000U, 840U, 131071U},
        {11000000U, 844U, 4294508543U},
        {11000000U, 848U, 2162712U},
        {11000000U, 852U, 4290445219U},
        {11000000U, 856U, 6291681U},
        {11000000U, 860U, 4291100264U},
        {11000000U, 864U, 4288676427U},
        {11000000U, 868U, 26934630U},
        {11000000U, 872U, 4237885974U},
        {11000000U, 876U, 91619225U},
        {11000000U, 880U, 4174708097U},
        {11000000U, 884U, 131335744U},
        {11000000U, 888U, 4180866534U},
        {11000000U, 892U, 64097549U},
        {11000000U, 896U, 14676446U},
        {11000000U, 900U, 4186311871U},
        {11000000U, 904U, 198309662U},
        {11000000U, 908U, 4032299823U},
        {11000000U, 912U, 286064640U},
        {11100000U, 840U, 65536U},
        {11100000U, 844U, 4294508536U},
        {11100000U, 848U, 1769513U},
        {11100000U, 852U, 4291952522U},
        {11100000U, 856U, 2490610U},
        {11100000U, 860U, 2948732U},
        {11100000U, 864U, 4279173616U},
        {11100000U, 868U, 37486112U},
        {11100000U, 872U, 4229366010U},
        {11100000U, 876U, 94503159U},
        {11100000U, 880U, 4180147228U},
        {11100000U, 884U, 116655973U},
        {11100000U, 888U, 4202886459U},
        {11100000U, 892U, 38866215U},
        {11100000U, 896U, 38007357U},
        {11100000U, 900U, 4169206820U},
        {11100000U, 904U, 207419303U},
        {11100000U, 908U, 4029743866U},
        {11100000U, 912U, 286064640U},
        {11200000U, 840U, 65538U},
        {11200000U, 844U, 4294639602U},
        {11200000U, 848U, 1114165U},
        {11200000U, 852U, 4293984129U},
        {11200000U, 856U, 4293329127U},
        {11200000U, 860U, 9436854U},
        {11200000U, 864U, 4271112557U},
        {11200000U, 868U, 45154043U},
        {11200000U, 872U, 4224974801U},
        {11200000U, 876U, 92602953U},
        {11200000U, 880U, 4190239451U},
        {11200000U, 884U, 98437208U},
        {11200000U, 888U, 4227003588U},
        {11200000U, 892U, 13045015U},
        {11200000U, 896U, 60879544U},
        {11200000U, 900U, 4152822652U},
        {11200000U, 904U, 216004659U},
        {11200000U, 908U, 4027384516U},
        {11200000U, 912U, 286064640U},
        {11300000U, 840U, 3U},
        {11300000U, 844U, 4294836206U},
        {11300000U, 848U, 262200U},
        {11300000U, 852U, 1113992U},
        {11300000U, 856U, 4289462466U},
        {11300000U, 860U, 14876432U},
        {11300000U, 864U, 4265148619U},
        {11300000U, 868U, 49414121U},
        {11300000U, 872U, 4224974506U},
        {11300000U, 876U, 86049665U},
        {11300000U, 880U, 4204591560U},
        {11300000U, 884U, 77138194U},
        {11300000U, 888U, 4252693636U},
        {11300000U, 892U, 4281928923U},
        {11300000U, 896U, 83161933U},
        {11300000U, 900U, 4137290441U},
        {11300000U, 904U, 224065729U},
        {11300000U, 908U, 4025221774U},
        {11300000U, 912U, 286064640U},
        {11400000U, 840U, 3U},
        {11400000U, 844U, 65518U},
        {11400000U, 848U, 4294311987U},
        {11400000U, 852U, 3145631U},
        {11400000U, 856U, 4286251143U},
        {11400000U, 860U, 18808706U},
        {11400000U, 864U, 4261937176U},
        {11400000U, 868U, 49873112U},
        {11400000U, 872U, 4229430678U},
        {11400000U, 876U, 75039888U},
        {11400000U, 880U, 4222482669U},
        {11400000U, 884U, 53414286U},
        {11400000U, 888U, 4279301245U},
        {11400000U, 892U, 4256107637U},
        {11400000U, 896U, 104657916U},
        {11400000U, 900U, 4122610187U},
        {11400000U, 904U, 231536978U},
        {11400000U, 908U, 4023190104U},
        {11400000U, 912U, 286064640U},
        {11500000U, 840U, 3U},
        {11500000U, 844U, 327665U},
        {11500000U, 848U, 4293525542U},
        {11500000U, 852U, 4652995U},
        {11500000U, 856U, 4284088380U},
        {11500000U, 860U, 20643840U},
        {11500000U, 864U, 4261740387U},
        {11500000U, 868U, 46662072U},
        {11500000U, 872U, 4237950118U},
        {11500000U, 876U, 60228970U},
        {11500000U, 880U, 4243388499U},
        {11500000U, 884U, 28117449U},
        {11500000U, 888U, 11334829U},
        {11500000U, 892U, 4230876135U},
        {11500000U, 896U, 125039810U},
        {11500000U, 900U, 4108912963U},
        {11500000U, 904U, 238418406U},
        {11500000U, 908U, 4021355041U},
        {11500000U, 912U, 286064640U},
        {11600000U, 840U, 2U},
        {11600000U, 844U, 524278U},
        {11600000U, 848U, 4293001236U},
        {11600000U, 852U, 5570542U},
        {11600000U, 856U, 4283367403U},
        {11600000U, 860U, 20381822U},
        {11600000U, 864U, 4264492731U},
        {11600000U, 868U, 39846522U},
        {11600000U, 872U, 4250008550U},
        {11600000U, 876U, 42403333U},
        {11600000U, 880U, 4266326014U},
        {11600000U, 884U, 1903041U},
        {11600000U, 888U, 38008085U},
        {11600000U, 892U, 4206693170U},
        {11600000U, 896U, 144176542U},
        {11600000U, 900U, 4096264305U},
        {11600000U, 904U, 244710012U},
        {11600000U, 908U, 4019651051U},
        {11600000U, 912U, 286064640U},
        {11700000U, 840U, 4294901761U},
        {11700000U, 844U, 589821U},
        {11700000U, 848U, 4292804607U},
        {11700000U, 852U, 5636125U},
        {11700000U, 856U, 4283957148U},
        {11700000U, 860U, 18022640U},
        {11700000U, 864U, 4269997614U},
        {11700000U, 868U, 30016272U},
        {11700000U, 872U, 4264950626U},
        {11700000U, 876U, 22349402U},
        {11700000U, 880U, 4290443250U},
        {11700000U, 884U, 4270590327U},
        {11700000U, 888U, 63894962U},
        {11700000U, 892U, 4183886424U},
        {11700000U, 896U, 161871503U},
        {11700000U, 900U, 4084795287U},
        {11700000U, 904U, 250346260U},
        {11700000U, 908U, 4018143669U},
        {11700000U, 912U, 286064640U},
        {11800000U, 840U, 4294901760U},
        {11800000U, 844U, 524292U},
        {11800000U, 848U, 4292935657U},
        {11800000U, 852U, 4980807U},
        {11800000U, 856U, 4285923160U},
        {11800000U, 860U, 13697354U},
        {11800000U, 864U, 4277796296U},
        {11800000U, 868U, 17892207U},
        {11800000U, 872U, 4281793313U},
        {11800000U, 876U, 1181285U},
        {11800000U, 880U, 19789870U},
        {11800000U, 884U, 4245096684U},
        {11800000U, 888U, 88274562U},
        {11800000U, 892U, 4162783580U},
        {11800000U, 896U, 177928082U},
        {11800000U, 900U, 4074440373U},
        {11800000U, 904U, 255392685U},
        {11800000U, 908U, 4016832894U},
        {11800000U, 912U, 286064640U},
        {11900000U, 840U, 4294967295U},
        {11900000U, 844U, 458763U},
        {11900000U, 848U, 4293394392U},
        {11900000U, 852U, 3604584U},
        {11900000U, 856U, 4289003304U},
        {11900000U, 860U, 7930244U},
        {11900000U, 864U, 4287102353U},
        {11900000U, 868U, 4391826U},
        {11900000U, 872U, 4520742U},
        {11900000U, 876U, 4274914854U},
        {11900000U, 880U, 43317426U},
        {11900000U, 884U, 4221110309U},
        {11900000U, 888U, 110688127U},
        {11900000U, 892U, 4143843394U},
        {11900000U, 896U, 192149671U},
        {11900000U, 900U, 4065396173U},
        {11900000U, 904U, 259783752U},
        {11900000U, 908U, 4015653192U},
        {11900000U, 912U, 286064640U},
        {12000000U, 840U, 65534U},
        {12000000U, 844U, 327696U},
        {12000000U, 848U, 4294115276U},
        {12000000U, 852U, 1769595U},
        {12000000U, 856U, 4292869904U},
        {12000000U, 860U, 1311128U},
        {12000000U, 864U, 2162062U},
        {12000000U, 868U, 4285596533U},
        {12000000U, 872U, 21887859U},
        {12000000U, 876U, 4254729631U},
        {12000000U, 880U, 65075576U},
        {12000000U, 884U, 4199417638U},
        {12000000U, 888U, 130611367U},
        {12000000U, 892U, 4127196940U},
        {12000000U, 896U, 204470729U},
        {12000000U, 900U, 4057662686U},
        {12000000U, 904U, 263519461U},
        {12000000U, 908U, 4014670097U},
        {12000000U, 912U, 286064640U},
        {12100000U, 840U, 65533U},
        {12100000U, 844U, 65554U},
        {12100000U, 848U, 4294967240U},
        {12100000U, 852U, 4294639742U},
        {12100000U, 856U, 1965844U},
        {12100000U, 860U, 4289528196U},
        {12100000U, 864U, 12058046U},
        {12100000U, 868U, 4272489243U},
        {12100000U, 872U, 37878785U},
        {12100000U, 876U, 4236575958U},
        {12100000U, 880U, 84212345U},
        {12100000U, 884U, 4180674038U},
        {12100000U, 888U, 147519986U},
        {12100000U, 892U, 4113237440U},
        {12100000U, 896U, 214694649U},
        {12100000U, 900U, 4051239915U},
        {12100000U, 904U, 266599811U},
        {12100000U, 908U, 4013883611U},
        {12100000U, 912U, 286064640U},
        {12200000U, 840U, 65533U},
        {12200000U, 844U, 4294836241U},
        {12200000U, 848U, 851916U},
        {12200000U, 852U, 4292542577U},
        {12200000U, 856U, 5832498U},
        {12200000U, 860U, 4283367754U},
        {12200000U, 864U, 20774431U},
        {12200000U, 868U, 4261085834U},
        {12200000U, 872U, 51510473U},
        {12200000U, 876U, 4221371350U},
        {12200000U, 880U, 99941293U},
        {12200000U, 884U, 4165469341U},
        {12200000U, 888U, 161086299U},
        {12200000U, 892U, 4102161505U},
        {12200000U, 896U, 222755890U},
        {12200000U, 900U, 4046258932U},
        {12200000U, 904U, 268959265U},
        {12200000U, 908U, 4013293732U},
        {12200000U, 912U, 286064640U},
        {12300000U, 840U, 65534U},
        {12300000U, 844U, 4294574094U},
        {12300000U, 848U, 1572825U},
        {12300000U, 852U, 4290838613U},
        {12300000U, 856U, 8978280U},
        {12300000U, 860U, 4278452464U},
        {12300000U, 864U, 27721383U},
        {12300000U, 868U, 4252303820U},
        {12300000U, 872U, 61930944U},
        {12300000U, 876U, 4209967784U},
        {12300000U, 880U, 111672583U},
        {12300000U, 884U, 4154262310U},
        {12300000U, 888U, 171048154U},
        {12300000U, 892U, 4094100211U},
        {12300000U, 896U, 228588914U},
        {12300000U, 900U, 4042654202U},
        {12300000U, 904U, 270663360U},
        {12300000U, 908U, 4012834925U},
        {12300000U, 912U, 286064640U},
        {12400000U, 840U, 131071U},
        {12400000U, 844U, 4294443015U},
        {12400000U, 848U, 2097131U},
        {12400000U, 852U, 4289658925U},
        {12400000U, 856U, 11075504U},
        {12400000U, 860U, 4275241086U},
        {12400000U, 864U, 32112460U},
        {12400000U, 868U, 4246733038U},
        {12400000U, 872U, 68419288U},
        {12400000U, 876U, 4202824028U},
        {12400000U, 880U, 118881917U},
        {12400000U, 884U, 4147380632U},
        {12400000U, 888U, 177077865U},
        {12400000U, 892U, 4089250172U},
        {12400000U, 896U, 232128184U},
        {12400000U, 900U, 4040491261U},
        {12400000U, 904U, 271712096U},
        {12400000U, 908U, 4012572727U},
        {12400000U, 912U, 286064640U},
        {12500000U, 840U, 65536U},
        {12500000U, 844U, 4294377472U},
        {12500000U, 848U, 2228224U},
        {12500000U, 852U, 4289265664U},
        {12500000U, 856U, 11730944U},
        {12500000U, 860U, 4274126848U},
        {12500000U, 864U, 33554432U},
        {12500000U, 868U, 4244832256U},
        {12500000U, 872U, 70582272U},
        {12500000U, 876U, 4200464384U},
        {12500000U, 880U, 121307136U},
        {12500000U, 884U, 4145086464U},
        {12500000U, 888U, 179044352U},
        {12500000U, 892U, 4087611392U},
        {12500000U, 896U, 233242624U},
        {12500000U, 900U, 4039704576U},
        {12500000U, 904U, 271974400U},
        {12500000U, 908U, 4012441600U},
        {12500000U, 912U, 286064640U},
        {12600000U, 840U, 65537U},
        {12600000U, 844U, 4294508537U},
        {12600000U, 848U, 2031637U},
        {12600000U, 852U, 4289724371U},
        {12600000U, 856U, 11010128U},
        {12600000U, 860U, 4275306370U},
        {12600000U, 864U, 32047284U},
        {12600000U, 868U, 4246798098U},
        {12600000U, 872U, 68354344U},
        {12600000U, 876U, 4202888868U},
        {12600000U, 880U, 118817155U},
        {12600000U, 884U, 4147445352U},
        {12600000U, 888U, 177013143U},
        {12600000U, 892U, 4089314948U},
        {12600000U, 896U, 232063304U},
        {12600000U, 900U, 4040556291U},
        {12600000U, 904U, 271646880U},
        {12600000U, 908U, 4012638153U},
        {12600000U, 912U, 286064640U},
        {12700000U, 840U, 2U},
        {12700000U, 844U, 4294639602U},
        {12700000U, 848U, 1507367U},
        {12700000U, 852U, 4290903979U},
        {12700000U, 856U, 8913048U},
        {12700000U, 860U, 4278517520U},
        {12700000U, 864U, 27656537U},
        {12700000U, 868U, 4252368436U},
        {12700000U, 872U, 61866560U},
        {12700000U, 876U, 4210031960U},
        {12700000U, 880U, 111608569U},
        {12700000U, 884U, 4154326234U},
        {12700000U, 888U, 170984230U},
        {12700000U, 892U, 4094164237U},
        {12700000U, 896U, 228524686U},
        {12700000U, 900U, 4042718726U},
        {12700000U, 904U, 270598464U},
        {12700000U, 908U, 4012900243U},
        {12700000U, 912U, 286064640U},
        {12800000U, 840U, 3U},
        {12800000U, 844U, 4294901743U},
        {12800000U, 848U, 786484U},
        {12800000U, 852U, 4292607887U},
        {12800000U, 856U, 5767374U},
        {12800000U, 860U, 4283432630U},
        {12800000U, 864U, 20709857U},
        {12800000U, 868U, 4261150070U},
        {12800000U, 872U, 51446583U},
        {12800000U, 876U, 4221434922U},
        {12800000U, 880U, 99877971U},
        {12800000U, 884U, 4165532515U},
        {12800000U, 888U, 161023141U},
        {12800000U, 892U, 4102224799U},
        {12800000U, 896U, 222692302U},
        {12800000U, 900U, 4046322956U},
        {12800000U, 904U, 268894687U},
        {12800000U, 908U, 4013358940U},
        {12800000U, 912U, 286064640U},
        {12900000U, 840U, 3U},
        {12900000U, 844U, 131054U},
        {12900000U, 848U, 4294901816U},
        {12900000U, 852U, 4294705026U},
        {12900000U, 856U, 1900780U},
        {12900000U, 860U, 4289592956U},
        {12900000U, 864U, 11993666U},
        {12900000U, 868U, 4272553189U},
        {12900000U, 872U, 37815295U},
        {12900000U, 876U, 4236639018U},
        {12900000U, 880U, 84149639U},
        {12900000U, 884U, 4180736522U},
        {12900000U, 888U, 147457550U},
        {12900000U, 892U, 4113300032U},
        {12900000U, 896U, 214631687U},
        {12900000U, 900U, 4051303445U},
        {12900000U, 904U, 266535549U},
        {12900000U, 908U, 4013948709U},
        {12900000U, 912U, 286064640U},
        {13000000U, 840U, 2U},
        {13000000U, 844U, 393200U},
        {13000000U, 848U, 4294049844U},
        {13000000U, 852U, 1834885U},
        {13000000U, 856U, 4292804848U},
        {13000000U, 860U, 1375848U},
        {13000000U, 864U, 2097778U},
        {13000000U, 868U, 4285660299U},
        {13000000U, 872U, 21824653U},
        {13000000U, 876U, 4254792289U},
        {13000000U, 880U, 65013384U},
        {13000000U, 884U, 4199479514U},
        {13000000U, 888U, 130549593U},
        {13000000U, 892U, 4127258868U},
        {13000000U, 896U, 204408375U},
        {13000000U, 900U, 4057725730U},
        {13000000U, 904U, 263455515U},
        {13000000U, 908U, 4014735087U},
        {13000000U, 912U, 286064640U},
        {13100000U, 840U, 4294901761U},
        {13100000U, 844U, 524277U},
        {13100000U, 848U, 4293328936U},
        {13100000U, 852U, 3669912U},
        {13100000U, 856U, 4288938200U},
        {13100000U, 860U, 7995004U},
        {13100000U, 864U, 4287038063U},
        {13100000U, 868U, 4455534U},
        {13100000U, 872U, 4457690U},
        {13100000U, 876U, 4274977242U},
        {13100000U, 880U, 43255630U},
        {13100000U, 884U, 4221171675U},
        {13100000U, 888U, 110626945U},
        {13100000U, 892U, 4143904702U},
        {13100000U, 896U, 192087897U},
        {13100000U, 900U, 4065458739U},
        {13100000U, 904U, 259720120U},
        {13100000U, 908U, 4015718072U},
        {13100000U, 912U, 286064640U},
        {13200000U, 840U, 4294901760U},
        {13200000U, 844U, 589820U},
        {13200000U, 848U, 4292870167U},
        {13200000U, 852U, 5046201U},
        {13200000U, 856U, 4285857960U},
        {13200000U, 860U, 13762230U},
        {13200000U, 864U, 4277731896U},
        {13200000U, 868U, 17955985U},
        {13200000U, 872U, 4281730271U},
        {13200000U, 876U, 1243547U},
        {13200000U, 880U, 19728338U},
        {13200000U, 884U, 4245157652U},
        {13200000U, 888U, 88213886U},
        {13200000U, 892U, 4162844324U},
        {13200000U, 896U, 177866862U},
        {13200000U, 900U, 4074502475U},
        {13200000U, 904U, 255329363U},
        {13200000U, 908U, 4016897666U},
        {13200000U, 912U, 286064640U},
        {13300000U, 840U, 4294967295U},
        {13300000U, 844U, 524291U},
        {13300000U, 848U, 4292739073U},
        {13300000U, 852U, 5701603U},
        {13300000U, 856U, 4283891812U},
        {13300000U, 860U, 18087696U},
        {13300000U, 864U, 4269933010U},
        {13300000U, 868U, 30080240U},
        {13300000U, 872U, 4264887454U},
        {13300000U, 876U, 22411686U},
        {13300000U, 880U, 4290381838U},
        {13300000U, 884U, 4270651017U},
        {13300000U, 888U, 63834702U},
        {13300000U, 892U, 4183946664U},
        {13300000U, 896U, 161810801U},
        {13300000U, 900U, 4084856937U},
        {13300000U, 904U, 250283244U},
        {13300000U, 908U, 4018208331U},
        {13300000U, 912U, 286064640U},
        {13400000U, 840U, 65534U},
        {13400000U, 844U, 458762U},
        {13400000U, 848U, 4293066732U},
        {13400000U, 852U, 5505042U},
        {13400000U, 856U, 4283301909U},
        {13400000U, 860U, 20447106U},
        {13400000U, 864U, 4264427845U},
        {13400000U, 868U, 39910790U},
        {13400000U, 872U, 4249945114U},
        {13400000U, 876U, 42465787U},
        {13400000U, 880U, 4266264578U},
        {13400000U, 884U, 1963583U},
        {13400000U, 888U, 37948139U},
        {13400000U, 892U, 4206752974U},
        {13400000U, 896U, 144116322U},
        {13400000U, 900U, 4096325519U},
        {13400000U, 904U, 244647300U},
        {13400000U, 908U, 4019715605U},
        {13400000U, 912U, 286064640U},
        {13500000U, 840U, 65533U},
        {13500000U, 844U, 262159U},
        {13500000U, 848U, 4293591002U},
        {13500000U, 852U, 4587581U},
        {13500000U, 856U, 4284153796U},
        {13500000U, 860U, 20643840U},
        {13500000U, 864U, 4261675165U},
        {13500000U, 868U, 46726728U},
        {13500000U, 872U, 4237886298U},
        {13500000U, 876U, 60291734U},
        {13500000U, 880U, 4243326893U},
        {13500000U, 884U, 28177975U},
        {13500000U, 888U, 11275091U},
        {13500000U, 892U, 4230935577U},
        {13500000U, 896U, 124980030U},
        {13500000U, 900U, 4108973757U},
        {13500000U, 904U, 238355994U},
        {13500000U, 908U, 4021419487U},
        {13500000U, 912U, 286064640U},
        {13600000U, 840U, 65533U},
        {13600000U, 844U, 18U},
        {13600000U, 848U, 4294377421U},
        {13600000U, 852U, 3080289U},
        {13600000U, 856U, 4286316409U},
        {13600000U, 860U, 18743422U},
        {13600000U, 864U, 4262002664U},
        {13600000U, 868U, 49938216U},
        {13600000U, 872U, 4229366378U},
        {13600000U, 876U, 75103088U},
        {13600000U, 880U, 4222420755U},
        {13600000U, 884U, 53474930U},
        {13600000U, 888U, 4279241603U},
        {13600000U, 892U, 4256166795U},
        {13600000U, 896U, 104598532U},
        {13600000U, 900U, 4122670581U},
        {13600000U, 904U, 231474862U},
        {13600000U, 908U, 4023254440U},
        {13600000U, 912U, 286064640U},
        {13700000U, 840U, 65533U},
        {13700000U, 844U, 4294770706U},
        {13700000U, 848U, 327624U},
        {13700000U, 852U, 1048696U},
        {13700000U, 856U, 4289527614U},
        {13700000U, 860U, 14811376U},
        {13700000U, 864U, 4265213749U},
        {13700000U, 868U, 49348631U},
        {13700000U, 872U, 4224909654U},
        {13700000U, 876U, 86113407U},
        {13700000U, 880U, 4204529208U},
        {13700000U, 884U, 77199086U},
        {13700000U, 888U, 4252633980U},
        {13700000U, 892U, 4281987877U},
        {13700000U, 896U, 83102899U},
        {13700000U, 900U, 4137350455U},
        {13700000U, 904U, 224003903U},
        {13700000U, 908U, 4025286002U},
        {13700000U, 912U, 286064640U},
        {13800000U, 840U, 131070U},
        {13800000U, 844U, 4294574094U},
        {13800000U, 848U, 1179595U},
        {13800000U, 852U, 4293918847U},
        {13800000U, 856U, 4293394201U},
        {13800000U, 860U, 9371978U},
        {13800000U, 864U, 4271177363U},
        {13800000U, 868U, 45089029U},
        {13800000U, 872U, 4224909359U},
        {13800000U, 876U, 92667319U},
        {13800000U, 880U, 4190176549U},
        {13800000U, 884U, 98498472U},
        {13800000U, 888U, 4226943804U},
        {13800000U, 892U, 13103849U},
        {13800000U, 896U, 60820808U},
        {13800000U, 900U, 4152882308U},
        {13800000U, 904U, 215943117U},
        {13800000U, 908U, 4027448636U},
        {13800000U, 912U, 286064640U},
        {13900000U, 840U, 65536U},
        {13900000U, 844U, 4294443016U},
        {13900000U, 848U, 1834967U},
        {13900000U, 852U, 4291887222U},
        {13900000U, 856U, 2555662U},
        {13900000U, 860U, 2883972U},
        {13900000U, 864U, 4279238160U},
        {13900000U, 868U, 37421536U},
        {13900000U, 872U, 4229431046U},
        {13900000U, 876U, 94568201U},
        {13900000U, 880U, 4180083684U},
        {13900000U, 884U, 116717723U},
        {13900000U, 888U, 4202826437U},
        {13900000U, 892U, 38925017U},
        {13900000U, 896U, 37948867U},
        {13900000U, 900U, 4169266140U},
        {13900000U, 904U, 207358041U},
        {13900000U, 908U, 4029807878U},
        {13900000U, 912U, 286064640U},
        {14000000U, 840U, 65537U},
        {14000000U, 844U, 4294443009U},
        {14000000U, 848U, 2228200U},
        {14000000U, 852U, 4290379869U},
        {14000000U, 856U, 6356767U},
        {14000000U, 860U, 4291035544U},
        {14000000U, 864U, 4288740789U},
        {14000000U, 868U, 26870426U},
        {14000000U, 872U, 4237950442U},
        {14000000U, 876U, 91553895U},
        {14000000U, 880U, 4174643839U},
        {14000000U, 884U, 131398080U},
        {14000000U, 888U, 4180806170U},
        {14000000U, 892U, 64156403U},
        {14000000U, 896U, 14618146U},
        {14000000U, 900U, 4186370881U},
        {14000000U, 904U, 198248674U},
        {14000000U, 908U, 4032363729U},
        {14000000U, 912U, 286064640U},
        {14100000U, 840U, 2U},
        {14100000U, 844U, 4294574074U},
        {14100000U, 848U, 2228221U},
        {14100000U, 852U, 4289462328U},
        {14100000U, 856U, 9371466U},
        {14100000U, 860U, 4284678532U},
        {14100000U, 864U, 3865995U},
        {14100000U, 868U, 14287654U},
        {14100000U, 872U, 4250008813U},
        {14100000U, 876U, 83952064U},
        {14100000U, 880U, 4174053635U},
        {14100000U, 884U, 142015248U},
        {14100000U, 888U, 4161407294U},
        {14100000U, 892U, 88339256U},
        {14100000U, 896U, 4286189158U},
        {14100000U, 900U, 4204065458U},
        {14100000U, 904U, 188680551U},
        {14100000U, 908U, 4035050651U},
        {14100000U, 912U, 286064640U},
        {14200000U, 840U, 3U},
        {14200000U, 844U, 4294705139U},
        {14200000U, 848U, 1900563U},
        {14200000U, 852U, 4289331211U},
        {14200000U, 856U, 11206537U},
        {14200000U, 860U, 4279435594U},
        {14200000U, 864U, 13565333U},
        {14200000U, 868U, 656251U},
        {14200000U, 872U, 4264950813U},
        {14200000U, 876U, 72090373U},
        {14200000U, 880U, 4178378622U},
        {14200000U, 884U, 148241537U},
        {14200000U, 888U, 4145023028U},
        {14200000U, 892U, 111145895U},
        {14200000U, 896U, 4262858381U},
        {14200000U, 900U, 4222284337U},
        {14200000U, 904U, 178588137U},
        {14200000U, 908U, 4037934181U},
        {14200000U, 912U, 286064640U},
        {14300000U, 840U, 3U},
        {14300000U, 844U, 4294967279U},
        {14300000U, 848U, 1310757U},
        {14300000U, 852U, 4290052061U},
        {14300000U, 856U, 11730902U},
        {14300000U, 860U, 4275765488U},
        {14300000U, 864U, 22085075U},
        {14300000U, 868U, 4281861009U},
        {14300000U, 872U, 4281793413U},
        {14300000U, 876U, 56493094U},
        {14300000U, 880U, 4187291134U},
        {14300000U, 884U, 149880331U},
        {14300000U, 888U, 4131981058U},
        {14300000U, 892U, 132248638U},
        {14300000U, 896U, 4239789719U},
        {14300000U, 900U, 4240896446U},
        {14300000U, 904U, 168036967U},
        {14300000U, 908U, 4040948784U},
        {14300000U, 912U, 286064640U},
        {14400000U, 840U, 3U},
        {14400000U, 844U, 196590U},
        {14400000U, 848U, 458803U},
        {14400000U, 852U, 4291428276U},
        {14400000U, 856U, 10747943U},
        {14400000U, 860U, 4274192510U},
        {14400000U, 864U, 28638783U},
        {14400000U, 868U, 4269146985U},
        {14400000U, 872U, 4520750U},
        {14400000U, 876U, 38077720U},
        {14400000U, 880U, 4200594576U},
        {14400000U, 884U, 146931617U},
        {14400000U, 888U, 4122740142U},
        {14400000U, 892U, 151188732U},
        {14400000U, 896U, 4217376389U},
        {14400000U, 900U, 4259836250U},
        {14400000U, 904U, 157092578U},
        {14400000U, 908U, 4044159995U},
        {14400000U, 912U, 286064640U},
        {14500000U, 840U, 4294901762U},
        {14500000U, 844U, 393199U},
        {14500000U, 848U, 4294574136U},
        {14500000U, 852U, 4293263253U},
        {14500000U, 856U, 8519796U},
        {14500000U, 860U, 4274782208U},
        {14500000U, 864U, 32571088U},
        {14500000U, 868U, 4258398980U},
        {14500000U, 872U, 21887773U},
        {14500000U, 876U, 17696206U},
        {14500000U, 880U, 4217699137U},
        {14500000U, 884U, 139329851U},
        {14500000U, 888U, 4117300286U},
        {14500000U, 892U, 167835101U},
        {14500000U, 896U, 4195683925U},
        {14500000U, 900U, 4278972676U},
        {14500000U, 904U, 145754969U},
        {14500000U, 908U, 4047502278U},
        {14500000U, 912U, 286064640U},
        {14600000U, 840U, 4294901761U},
        {14600000U, 844U, 589812U},
        {14600000U, 848U, 4293722165U},
        {14600000U, 852U, 393091U},
        {14600000U, 856U, 5243060U},
        {14600000U, 860U, 4277600130U},
        {14600000U, 864U, 33554298U},
        {14600000U, 868U, 4250403433U},
        {14600000U, 872U, 37878611U},
        {14600000U, 876U, 4291429952U},
        {14600000U, 880U, 4237949470U},
        {14600000U, 884U, 127533771U},
        {14600000U, 888U, 4115989178U},
        {14600000U, 892U, 181794528U},
        {14600000U, 896U, 4174974474U},
        {14600000U, 900U, 3272893U},
        {14600000U, 904U, 134024139U},
        {14600000U, 908U, 4050975633U},
        {14600000U, 912U, 286064640U},
        {14700000U, 840U, 4294967295U},
        {14700000U, 844U, 655355U},
        {14700000U, 848U, 4293132330U},
        {14700000U, 852U, 2490242U},
        {14700000U, 856U, 1310944U},
        {14700000U, 860U, 4282187536U},
        {14700000U, 864U, 31522864U},
        {14700000U, 868U, 4245815716U},
        {14700000U, 872U, 51510221U},
        {14700000U, 876U, 4270327402U},
        {14700000U, 880U, 4260493615U},
        {14700000U, 884U, 111805513U},
        {14700000U, 888U, 4118675752U},
        {14700000U, 892U, 192870401U},
        {14700000U, 896U, 4155510178U},
        {14700000U, 900U, 22474886U},
        {14700000U, 904U, 121965625U},
        {14700000U, 908U, 4054645596U},
        {14700000U, 912U, 286064640U},
        {14800000U, 840U, 65534U},
        {14800000U, 844U, 524290U},
        {14800000U, 848U, 4292804633U},
        {14800000U, 852U, 4194194U},
        {14800000U, 856U, 4292215025U},
        {14800000U, 860U, 4288085686U},
        {14800000U, 864U, 26673377U},
        {14800000U, 868U, 4244963522U},
        {14800000U, 872U, 61930628U},
        {14800000U, 876U, 4250469961U},
        {14800000U, 880U, 4284348543U},
        {14800000U, 884U, 92603818U},
        {14800000U, 888U, 4125425553U},
        {14800000U, 892U, 200931644U},
        {14800000U, 896U, 4137487648U},
        {14800000U, 900U, 41545822U},
        {14800000U, 904U, 109579427U},
        {14800000U, 908U, 4058446632U},
        {14800000U, 912U, 286064640U},
        {14900000U, 840U, 65533U},
        {14900000U, 844U, 393225U},
        {14900000U, 848U, 4292804612U},
        {14900000U, 852U, 5373872U},
        {14900000U, 856U, 4288479464U},
        {14900000U, 860U, 4294770300U},
        {14900000U, 864U, 19399040U},
        {14900000U, 868U, 4247977938U},
        {14900000U, 872U, 68418926U},
        {14900000U, 876U, 4232906207U},
        {14900000U, 880U, 13760530U},
        {14900000U, 884U, 70584036U},
        {14900000U, 888U, 4135976443U},
        {14900000U, 892U, 205781645U},
        {14900000U, 896U, 4120972419U},
        {14900000U, 900U, 60420166U},
        {14900000U, 904U, 96931080U},
        {14900000U, 908U, 4062378739U},
        {14900000U, 912U, 286064640U},
        {15000000U, 840U, 65533U},
        {15000000U, 844U, 196623U},
        {15000000U, 848U, 4293263343U},
        {15000000U, 852U, 5767129U},
        {15000000U, 856U, 4285530308U},
        {15000000U, 860U, 6487656U},
        {15000000U, 864U, 10355199U},
        {15000000U, 868U, 4254465766U},
        {15000000U, 872U, 70647421U},
        {15000000U, 876U, 4218488112U},
        {15000000U, 880U, 37550062U},
        {15000000U, 884U, 46335983U},
        {15000000U, 888U, 4150197360U},
        {15000000U, 892U, 207420399U},
        {15000000U, 896U, 4106292174U},
        {15000000U, 900U, 78901311U},
        {15000000U, 904U, 84086121U},
        {15000000U, 908U, 4066507455U},
        {15000000U, 912U, 286064640U},
        {15100000U, 840U, 65533U},
        {15100000U, 844U, 4294901778U},
        {15100000U, 848U, 4293918684U},
        {15100000U, 852U, 5308422U},
        {15100000U, 856U, 4283695241U},
        {15100000U, 860U, 12516988U},
        {15100000U, 864U, 393811U},
        {15100000U, 868U, 4264033805U},
        {15100000U, 872U, 68419490U},
        {15100000U, 876U, 4208002118U},
        {15100000U, 880U, 59832338U},
        {15100000U, 884U, 20646083U},
        {15100000U, 888U, 4167629558U},
        {15100000U, 892U, 205782367U},
        {15100000U, 896U, 4093446914U},
        {15100000U, 900U, 96989254U},
        {15100000U, 904U, 70979012U},
        {15100000U, 908U, 4070701707U},
        {15100000U, 912U, 286064640U},
        {15200000U, 840U, 131070U},
        {15200000U, 844U, 4294705170U},
        {15200000U, 848U, 4294705102U},
        {15200000U, 852U, 4128819U},
        {15200000U, 856U, 4283301951U},
        {15200000U, 860U, 17235638U},
        {15200000U, 864U, 4285399670U},
        {15200000U, 868U, 4275961174U},
        {15200000U, 872U, 61866188U},
        {15200000U, 876U, 4201906985U},
        {15200000U, 880U, 79689855U},
        {15200000U, 884U, 4289333597U},
        {15200000U, 888U, 4187945365U},
        {15200000U, 892U, 200933080U},
        {15200000U, 896U, 4082698783U},
        {15200000U, 900U, 114487390U},
        {15200000U, 904U, 57675291U},
        {15200000U, 908U, 4075092568U},
        {15200000U, 912U, 286064640U},
        {15300000U, 840U, 131071U},
        {15300000U, 844U, 4294508559U},
        {15300000U, 848U, 655304U},
        {15300000U, 852U, 2424921U},
        {15300000U, 856U, 4284415982U},
        {15300000U, 860U, 20119312U},
        {15300000U, 864U, 4276290149U},
        {15300000U, 868U, 4289395919U},
        {15300000U, 872U, 51446251U},
        {15300000U, 876U, 4200595944U},
        {15300000U, 880U, 96336175U},
        {15300000U, 884U, 4263184822U},
        {15300000U, 888U, 4210751570U},
        {15300000U, 892U, 192806997U},
        {15300000U, 896U, 4074047785U},
        {15300000U, 900U, 131330182U},
        {15300000U, 904U, 44240492U},
        {15300000U, 908U, 4079614500U},
        {15300000U, 912U, 286064640U},
        {15400000U, 840U, 65537U},
        {15400000U, 844U, 4294443017U},
        {15400000U, 848U, 1441738U},
        {15400000U, 852U, 327796U},
        {15400000U, 856U, 4286709663U},
        {15400000U, 860U, 20840322U},
        {15400000U, 864U, 4268818977U},
        {15400000U, 868U, 8191104U},
        {15400000U, 872U, 37815021U},
        {15400000U, 876U, 4204003472U},
        {15400000U, 880U, 109115934U},
        {15400000U, 884U, 4238019021U},
        {15400000U, 888U, 4235458358U},
        {15400000U, 892U, 181731792U},
        {15400000U, 896U, 4067690528U},
        {15400000U, 900U, 147452093U},
        {15400000U, 904U, 30674617U},
        {15400000U, 908U, 4084333041U},
        {15400000U, 912U, 286064640U},
        {15500000U, 840U, 2U},
        {15500000U, 844U, 4294443010U},
        {15500000U, 848U, 2031573U},
        {15500000U, 852U, 4293197951U},
        {15500000U, 856U, 4290051931U},
        {15500000U, 860U, 19398656U},
        {15500000U, 864U, 4263772592U},
        {15500000U, 868U, 21429360U},
        {15500000U, 872U, 21824454U},
        {15500000U, 876U, 4212195122U},
        {15500000U, 880U, 117570369U},
        {15500000U, 884U, 4214688161U},
        {15500000U, 888U, 4261475908U},
        {15500000U, 892U, 167772997U},
        {15500000U, 896U, 4063561480U},
        {15500000U, 900U, 162722052U},
        {15500000U, 904U, 17108735U},
        {15500000U, 908U, 4089117118U},
        {15500000U, 912U, 286064640U},
        {15600000U, 840U, 3U},
        {15600000U, 844U, 4294574075U},
        {15600000U, 848U, 2293734U},
        {15600000U, 852U, 4291362938U},
        {15600000U, 856U, 4293984041U},
        {15600000U, 860U, 15859838U},
        {15600000U, 864U, 4261478683U},
        {15600000U, 868U, 32963742U},
        {15600000U, 872U, 4457575U},
        {15600000U, 876U, 4224515550U},
        {15600000U, 880U, 121175184U},
        {15600000U, 884U, 4193716532U},
        {15600000U, 888U, 4288279938U},
        {15600000U, 892U, 151127216U},
        {15600000U, 896U, 4061791713U},
        {15600000U, 900U, 177074522U},
        {15600000U, 904U, 3411777U},
        {15600000U, 908U, 4094032267U},
        {15600000U, 912U, 286064640U},
        {15700000U, 840U, 3U},
        {15700000U, 844U, 4294770676U},
        {15700000U, 848U, 2162682U},
        {15700000U, 852U, 4289986660U},
        {15700000U, 856U, 3145489U},
        {15700000U, 860U, 10748144U},
        {15700000U, 864U, 4262264942U},
        {15700000U, 868U, 42073353U},
        {15700000U, 872U, 4281730249U},
        {15700000U, 876U, 4240440482U},
        {15700000U, 880U, 119995902U},
        {15700000U, 884U, 4175956104U},
        {15700000U, 888U, 20247795U},
        {15700000U, 892U, 132187660U},
        {15700000U, 896U, 4062381231U},
        {15700000U, 900U, 190443966U},
        {15700000U, 904U, 4284747645U},
        {15700000U, 908U, 4099078489U},
        {15700000U, 912U, 286064640U},
        {15800000U, 840U, 3U},
        {15800000U, 844U, 65520U},
        {15800000U, 848U, 1703952U},
        {15800000U, 852U, 4289331265U},
        {15800000U, 856U, 6815507U},
        {15800000U, 860U, 4391242U},
        {15800000U, 864U, 4266065849U},
        {15800000U, 868U, 47971752U},
        {15800000U, 872U, 4264887525U},
        {15800000U, 876U, 4259117965U},
        {15800000U, 880U, 113901438U},
        {15800000U, 884U, 4161865634U},
        {15800000U, 888U, 46789786U},
        {15800000U, 892U, 111085395U},
        {15800000U, 896U, 4065330035U},
        {15800000U, 900U, 202699313U},
        {15800000U, 904U, 4271050675U},
        {15800000U, 908U, 4104255783U},
        {15800000U, 912U, 286064640U},
        {15900000U, 840U, 4294901762U},
        {15900000U, 844U, 262126U},
        {15900000U, 848U, 983075U},
        {15900000U, 852U, 4289462294U},
        {15900000U, 856U, 9699121U},
        {15900000U, 860U, 4292608388U},
        {15900000U, 864U, 4272357129U},
        {15900000U, 868U, 50200176U},
        {15900000U, 872U, 4249945274U},
        {15900000U, 876U, 4279630508U},
        {15900000U, 880U, 103219459U},
        {15900000U, 884U, 4151838344U},
        {15900000U, 888U, 72217721U},
        {15900000U, 892U, 88279171U},
        {15900000U, 896U, 4070572593U},
        {15900000U, 900U, 213840562U},
        {15900000U, 904U, 4257484771U},
        {15900000U, 908U, 4109564149U},
        {15900000U, 912U, 286064640U},
        {16000000U, 840U, 4294901761U},
        {16000000U, 844U, 458735U},
        {16000000U, 848U, 131121U},
        {16000000U, 852U, 4290445288U},
        {16000000U, 856U, 11403110U},
        {16000000U, 860U, 4286120344U},
        {16000000U, 864U, 4280745582U},
        {16000000U, 868U, 48627541U},
        {16000000U, 872U, 4237886538U},
        {16000000U, 876U, 6027785U},
        {16000000U, 880U, 88408703U},
        {16000000U, 884U, 4146267457U},
        {16000000U, 888U, 96007312U},
        {16000000U, 892U, 64096663U},
        {16000000U, 896U, 4078108907U},
        {16000000U, 900U, 223736641U},
        {16000000U, 904U, 4243984398U},
        {16000000U, 908U, 4114938051U},
        {16000000U, 912U, 286064640U}};
static int verve_write_byte(struct cx231xx *dev , u8 saddr , u8 data )
{
  int tmp ;
  {
  tmp = cx231xx_write_i2c_data(dev, 64, (int )saddr, 1, (u32 )data, 1);
  return (tmp);
}
}
static int verve_read_byte(struct cx231xx *dev , u8 saddr , u8 *data )
{
  int status ;
  u32 temp ;
  {
  temp = 0U;
  status = cx231xx_read_i2c_data(dev, 64, (int )saddr, 1, & temp, 1);
  *data = (unsigned char )temp;
  return (status);
}
}
void initGPIO(struct cx231xx *dev )
{
  u32 _gpio_direction ;
  u32 value ;
  u8 val ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  _gpio_direction = 0U;
  value = 0U;
  val = 0U;
  _gpio_direction = _gpio_direction & 4227859455U;
  _gpio_direction = _gpio_direction | 66976768U;
  cx231xx_send_gpio_cmd(dev, _gpio_direction, (u8 *)(& value), 4, 0, 0);
  verve_read_byte(dev, 7, & val);
  descriptor.modname = "cx231xx";
  descriptor.function = "initGPIO";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
  descriptor.format = "verve_read_byte address0x07=0x%x\n";
  descriptor.lineno = 85U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "verve_read_byte address0x07=0x%x\n",
                      (int )val);
  } else {
  }
  verve_write_byte(dev, 7, 244);
  verve_read_byte(dev, 7, & val);
  descriptor___0.modname = "cx231xx";
  descriptor___0.function = "initGPIO";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
  descriptor___0.format = "verve_read_byte address0x07=0x%x\n";
  descriptor___0.lineno = 88U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev->dev, "verve_read_byte address0x07=0x%x\n",
                      (int )val);
  } else {
  }
  cx231xx_capture_start(dev, 1, 2);
  cx231xx_mode_register(dev, 24, 83951104U);
  cx231xx_mode_register(dev, 104, 4294836223U);
  return;
}
}
void uninitGPIO(struct cx231xx *dev )
{
  u8 value[4U] ;
  {
  value[0] = 0U;
  value[1] = 0U;
  value[2] = 0U;
  value[3] = 0U;
  cx231xx_capture_start(dev, 0, 2);
  verve_write_byte(dev, 7, 20);
  cx231xx_write_ctrl_reg(dev, 12, 104, (char *)(& value), 4);
  return;
}
}
static int afe_write_byte(struct cx231xx *dev , u16 saddr , u8 data )
{
  int tmp ;
  {
  tmp = cx231xx_write_i2c_data(dev, 96, (int )saddr, 2, (u32 )data, 1);
  return (tmp);
}
}
static int afe_read_byte(struct cx231xx *dev , u16 saddr , u8 *data )
{
  int status ;
  u32 temp ;
  {
  temp = 0U;
  status = cx231xx_read_i2c_data(dev, 96, (int )saddr, 2, & temp, 1);
  *data = (unsigned char )temp;
  return (status);
}
}
int cx231xx_afe_init_super_block(struct cx231xx *dev , u32 ref_count )
{
  int status ;
  u8 temp ;
  u8 afe_power_status ;
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  {
  status = 0;
  temp = 0U;
  afe_power_status = 0U;
  i = 0;
  temp = (unsigned char )ref_count;
  status = afe_write_byte(dev, 1, (int )temp);
  if (status < 0) {
    return (status);
  } else {
  }
  status = afe_read_byte(dev, 1, & afe_power_status);
  if (status < 0) {
    return (status);
  } else {
  }
  temp = (unsigned char )((ref_count & 768U) >> 8);
  temp = (u8 )((unsigned int )temp | 64U);
  status = afe_write_byte(dev, 0, (int )temp);
  if (status < 0) {
    return (status);
  } else {
  }
  status = afe_write_byte(dev, 5, 15);
  if (status < 0) {
    return (status);
  } else {
  }
  goto ldv_52350;
  ldv_52349:
  status = afe_write_byte(dev, 8, 24);
  if (status < 0) {
    descriptor.modname = "cx231xx";
    descriptor.function = "cx231xx_afe_init_super_block";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
    descriptor.format = "%s: Init Super Block failed in send cmd\n";
    descriptor.lineno = 160U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "%s: Init Super Block failed in send cmd\n",
                        "cx231xx_afe_init_super_block");
    } else {
    }
    goto ldv_52346;
  } else {
  }
  status = afe_read_byte(dev, 8, & afe_power_status);
  afe_power_status = afe_power_status;
  if (status < 0) {
    descriptor___0.modname = "cx231xx";
    descriptor___0.function = "cx231xx_afe_init_super_block";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
    descriptor___0.format = "%s: Init Super Block failed in receive cmd\n";
    descriptor___0.lineno = 169U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev->dev, "%s: Init Super Block failed in receive cmd\n",
                        "cx231xx_afe_init_super_block");
    } else {
    }
    goto ldv_52346;
  } else {
  }
  i = i + 1;
  if (i == 10) {
    descriptor___1.modname = "cx231xx";
    descriptor___1.function = "cx231xx_afe_init_super_block";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
    descriptor___1.format = "%s: Init Super Block force break in loop !!!!\n";
    descriptor___1.lineno = 176U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)dev->dev, "%s: Init Super Block force break in loop !!!!\n",
                        "cx231xx_afe_init_super_block");
    } else {
    }
    status = -1;
    goto ldv_52346;
  } else {
  }
  ldv_52350: ;
  if ((unsigned int )afe_power_status != 24U) {
    goto ldv_52349;
  } else {
  }
  ldv_52346: ;
  if (status < 0) {
    return (status);
  } else {
  }
  status = afe_write_byte(dev, 2, 64);
  if (status < 0) {
    return (status);
  } else {
  }
  msleep(5U);
  status = afe_write_byte(dev, 2, 0);
  return (status);
}
}
int cx231xx_afe_init_channels(struct cx231xx *dev )
{
  int status ;
  {
  status = 0;
  status = afe_write_byte(dev, 35, 0);
  status = afe_write_byte(dev, 67, 0);
  status = afe_write_byte(dev, 99, 0);
  status = afe_write_byte(dev, 11, 2);
  status = afe_write_byte(dev, 39, 23);
  status = afe_write_byte(dev, 71, 23);
  status = afe_write_byte(dev, 103, 23);
  status = afe_write_byte(dev, 34, 16);
  status = afe_write_byte(dev, 66, 16);
  status = afe_write_byte(dev, 98, 16);
  msleep(5U);
  status = afe_write_byte(dev, 39, 7);
  status = afe_write_byte(dev, 71, 7);
  status = afe_write_byte(dev, 103, 7);
  status = afe_write_byte(dev, 41, 240);
  status = afe_write_byte(dev, 73, 240);
  status = afe_write_byte(dev, 105, 240);
  status = cx231xx_reg_mask_write(dev, 96, 8, 42, 3, 7, 0U);
  status = cx231xx_reg_mask_write(dev, 96, 8, 74, 3, 7, 0U);
  status = cx231xx_reg_mask_write(dev, 96, 8, 106, 3, 7, 0U);
  status = afe_write_byte(dev, 38, 3);
  status = afe_write_byte(dev, 70, 3);
  status = afe_write_byte(dev, 102, 3);
  return (status);
}
}
int cx231xx_afe_setup_AFE_for_baseband(struct cx231xx *dev )
{
  u8 c_value ;
  int status ;
  {
  c_value = 0U;
  status = 0;
  status = afe_read_byte(dev, 67, & c_value);
  c_value = (unsigned int )c_value & 175U;
  status = afe_write_byte(dev, 67, (int )c_value);
  return (status);
}
}
int cx231xx_afe_set_input_mux(struct cx231xx *dev , u32 input_mux )
{
  u8 ch1_setting ;
  u8 ch2_setting ;
  u8 ch3_setting ;
  int status ;
  u8 value ;
  {
  ch1_setting = (unsigned char )input_mux;
  ch2_setting = (unsigned char )(input_mux >> 8);
  ch3_setting = (unsigned char )(input_mux >> 16);
  status = 0;
  value = 0U;
  if ((unsigned int )ch1_setting != 0U) {
    status = afe_read_byte(dev, 40, & value);
    value = (unsigned int )value & 207U;
    value = (u8 )((int )((signed char )(((int )ch1_setting + -1) << 4)) | (int )((signed char )value));
    value = value;
    status = afe_write_byte(dev, 40, (int )value);
  } else {
  }
  if ((unsigned int )ch2_setting != 0U) {
    status = afe_read_byte(dev, 72, & value);
    value = (unsigned int )value & 207U;
    value = (u8 )((int )((signed char )(((int )ch2_setting + -1) << 4)) | (int )((signed char )value));
    value = value;
    status = afe_write_byte(dev, 72, (int )value);
  } else {
  }
  if ((unsigned int )ch3_setting != 0U) {
    status = afe_read_byte(dev, 104, & value);
    value = (unsigned int )value & 207U;
    value = (u8 )((int )((signed char )(((int )ch3_setting + -1) << 4)) | (int )((signed char )value));
    value = value;
    status = afe_write_byte(dev, 104, (int )value);
  } else {
  }
  return (status);
}
}
int cx231xx_afe_set_mode(struct cx231xx *dev , enum AFE_MODE mode )
{
  int status ;
  {
  status = 0;
  switch ((unsigned int )mode) {
  case 0U:
  cx231xx_Setup_AFE_for_LowIF(dev);
  goto ldv_52375;
  case 1U:
  status = cx231xx_afe_setup_AFE_for_baseband(dev);
  goto ldv_52375;
  case 2U: ;
  goto ldv_52375;
  case 3U: ;
  goto ldv_52375;
  case 4U: ;
  goto ldv_52375;
  }
  ldv_52375: ;
  if ((unsigned int )dev->afe_mode != (unsigned int )mode && dev->video_input == 3U) {
    status = cx231xx_afe_adjust_ref_count(dev, 3U);
  } else {
  }
  dev->afe_mode = mode;
  return (status);
}
}
int cx231xx_afe_update_power_control(struct cx231xx *dev , enum AV_MODE avmode )
{
  u8 afe_power_status ;
  int status ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  struct _ddebug descriptor ;
  long tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  struct _ddebug descriptor___0 ;
  long tmp___23 ;
  {
  afe_power_status = 0U;
  status = 0;
  switch (dev->model) {
  case 1: ;
  case 6: ;
  case 2: ;
  case 7: ;
  case 3: ;
  case 4: ;
  case 5: ;
  case 8: ;
  case 19: ;
  case 9: ;
  case 10: ;
  case 14: ;
  case 15: ;
  case 17: ;
  if ((unsigned int )avmode == 32U) {
    goto ldv_52402;
    ldv_52401:
    status = afe_write_byte(dev, 8, 24);
    tmp = afe_read_byte(dev, 8, & afe_power_status);
    status = tmp | status;
    if (status < 0) {
      goto ldv_52400;
    } else {
    }
    ldv_52402: ;
    if ((unsigned int )afe_power_status != 24U) {
      goto ldv_52401;
    } else {
    }
    ldv_52400:
    status = afe_write_byte(dev, 35, 0);
    tmp___0 = afe_write_byte(dev, 67, 0);
    status = tmp___0 | status;
    tmp___1 = afe_write_byte(dev, 99, 0);
    status = tmp___1 | status;
  } else
  if ((unsigned int )avmode == 16U) {
    status = afe_write_byte(dev, 35, 112);
    tmp___2 = afe_write_byte(dev, 67, 112);
    status = tmp___2 | status;
    tmp___3 = afe_write_byte(dev, 99, 112);
    status = tmp___3 | status;
    tmp___4 = afe_read_byte(dev, 8, & afe_power_status);
    status = tmp___4 | status;
    afe_power_status = (u8 )((unsigned int )afe_power_status | 7U);
    tmp___5 = afe_write_byte(dev, 8, (int )afe_power_status);
    status = tmp___5 | status;
  } else
  if ((unsigned int )avmode == 48U) {
    goto ldv_52405;
    ldv_52404:
    status = afe_write_byte(dev, 8, 24);
    tmp___6 = afe_read_byte(dev, 8, & afe_power_status);
    status = tmp___6 | status;
    if (status < 0) {
      goto ldv_52403;
    } else {
    }
    ldv_52405: ;
    if ((unsigned int )afe_power_status != 24U) {
      goto ldv_52404;
    } else {
    }
    ldv_52403:
    tmp___7 = afe_write_byte(dev, 35, 0);
    status = tmp___7 | status;
    tmp___8 = afe_write_byte(dev, 67, 0);
    status = tmp___8 | status;
    tmp___9 = afe_write_byte(dev, 99, 0);
    status = tmp___9 | status;
  } else {
    descriptor.modname = "cx231xx";
    descriptor.function = "cx231xx_afe_update_power_control";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
    descriptor.format = "Invalid AV mode input\n";
    descriptor.lineno = 415U;
    descriptor.flags = 0U;
    tmp___10 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___10 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "Invalid AV mode input\n");
    } else {
    }
    status = -1;
  }
  goto ldv_52408;
  default: ;
  if ((unsigned int )avmode == 32U) {
    goto ldv_52412;
    ldv_52411:
    status = afe_write_byte(dev, 8, 24);
    tmp___11 = afe_read_byte(dev, 8, & afe_power_status);
    status = tmp___11 | status;
    if (status < 0) {
      goto ldv_52410;
    } else {
    }
    ldv_52412: ;
    if ((unsigned int )afe_power_status != 24U) {
      goto ldv_52411;
    } else {
    }
    ldv_52410:
    tmp___12 = afe_write_byte(dev, 35, 64);
    status = tmp___12 | status;
    tmp___13 = afe_write_byte(dev, 67, 64);
    status = tmp___13 | status;
    tmp___14 = afe_write_byte(dev, 99, 0);
    status = tmp___14 | status;
  } else
  if ((unsigned int )avmode == 16U) {
    status = afe_write_byte(dev, 35, 112);
    tmp___15 = afe_write_byte(dev, 67, 112);
    status = tmp___15 | status;
    tmp___16 = afe_write_byte(dev, 99, 112);
    status = tmp___16 | status;
    tmp___17 = afe_read_byte(dev, 8, & afe_power_status);
    status = tmp___17 | status;
    afe_power_status = (u8 )((unsigned int )afe_power_status | 7U);
    tmp___18 = afe_write_byte(dev, 8, (int )afe_power_status);
    status = tmp___18 | status;
  } else
  if ((unsigned int )avmode == 48U) {
    goto ldv_52415;
    ldv_52414:
    status = afe_write_byte(dev, 8, 24);
    tmp___19 = afe_read_byte(dev, 8, & afe_power_status);
    status = tmp___19 | status;
    if (status < 0) {
      goto ldv_52413;
    } else {
    }
    ldv_52415: ;
    if ((unsigned int )afe_power_status != 24U) {
      goto ldv_52414;
    } else {
    }
    ldv_52413:
    tmp___20 = afe_write_byte(dev, 35, 0);
    status = tmp___20 | status;
    tmp___21 = afe_write_byte(dev, 67, 0);
    status = tmp___21 | status;
    tmp___22 = afe_write_byte(dev, 99, 64);
    status = tmp___22 | status;
  } else {
    descriptor___0.modname = "cx231xx";
    descriptor___0.function = "cx231xx_afe_update_power_control";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
    descriptor___0.format = "Invalid AV mode input\n";
    descriptor___0.lineno = 472U;
    descriptor___0.flags = 0U;
    tmp___23 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___23 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev->dev, "Invalid AV mode input\n");
    } else {
    }
    status = -1;
  }
  }
  ldv_52408: ;
  return (status);
}
}
int cx231xx_afe_adjust_ref_count(struct cx231xx *dev , u32 video_input )
{
  u8 input_mode ;
  u8 ntf_mode ;
  int status ;
  {
  input_mode = 0U;
  ntf_mode = 0U;
  status = 0;
  dev->video_input = video_input;
  if (video_input == 3U) {
    status = afe_read_byte(dev, 104, & input_mode);
    status = afe_read_byte(dev, 105, & ntf_mode);
  } else {
    status = afe_read_byte(dev, 40, & input_mode);
    status = afe_read_byte(dev, 41, & ntf_mode);
  }
  input_mode = (u8 )(((int )((signed char )ntf_mode) & 3) | (int )((signed char )(((int )input_mode & 6) << 1)));
  switch ((int )input_mode) {
  case 0:
  dev->afe_ref_count = 572U;
  goto ldv_52425;
  case 4:
  dev->afe_ref_count = 588U;
  goto ldv_52425;
  case 9:
  dev->afe_ref_count = 600U;
  goto ldv_52425;
  case 10:
  dev->afe_ref_count = 608U;
  goto ldv_52425;
  default: ;
  goto ldv_52425;
  }
  ldv_52425:
  status = cx231xx_afe_init_super_block(dev, dev->afe_ref_count);
  return (status);
}
}
static int vid_blk_write_byte(struct cx231xx *dev , u16 saddr , u8 data )
{
  int tmp ;
  {
  tmp = cx231xx_write_i2c_data(dev, 136, (int )saddr, 2, (u32 )data, 1);
  return (tmp);
}
}
static int vid_blk_read_byte(struct cx231xx *dev , u16 saddr , u8 *data )
{
  int status ;
  u32 temp ;
  {
  temp = 0U;
  status = cx231xx_read_i2c_data(dev, 136, (int )saddr, 2, & temp, 1);
  *data = (unsigned char )temp;
  return (status);
}
}
static int vid_blk_write_word(struct cx231xx *dev , u16 saddr , u32 data )
{
  int tmp ;
  {
  tmp = cx231xx_write_i2c_data(dev, 136, (int )saddr, 2, data, 4);
  return (tmp);
}
}
static int vid_blk_read_word(struct cx231xx *dev , u16 saddr , u32 *data )
{
  int tmp ;
  {
  tmp = cx231xx_read_i2c_data(dev, 136, (int )saddr, 2, data, 4);
  return (tmp);
}
}
int cx231xx_check_fw(struct cx231xx *dev )
{
  u8 temp ;
  int status ;
  {
  temp = 0U;
  status = 0;
  status = vid_blk_read_byte(dev, 2048, & temp);
  if (status < 0) {
    return (status);
  } else {
    return ((int )temp);
  }
}
}
int cx231xx_set_video_input_mux(struct cx231xx *dev , u8 input )
{
  int status ;
  {
  status = 0;
  switch ((unsigned int )((struct cx231xx_input *)(& cx231xx_boards[dev->model].input) + (unsigned long )input)->type) {
  case 1U: ;
  case 2U: ;
  if ((unsigned int )dev->current_pcb_config.type == 1U && dev->power_mode != 48) {
    status = cx231xx_set_power_mode(dev, 48);
    if (status < 0) {
      dev_err((struct device const *)dev->dev, "%s: Failed to set Power - errCode [%d]!\n",
              "cx231xx_set_video_input_mux", status);
      return (status);
    } else {
    }
  } else {
  }
  status = cx231xx_set_decoder_video_input(dev, (int )((u8 )((struct cx231xx_input *)(& cx231xx_boards[dev->model].input) + (unsigned long )input)->type),
                                           (int )((u8 )((struct cx231xx_input *)(& cx231xx_boards[dev->model].input) + (unsigned long )input)->vmux));
  goto ldv_52465;
  case 3U: ;
  case 4U: ;
  if ((unsigned int )dev->current_pcb_config.type == 1U && dev->power_mode != 32) {
    status = cx231xx_set_power_mode(dev, 32);
    if (status < 0) {
      dev_err((struct device const *)dev->dev, "%s: Failed to set Power - errCode [%d]!\n",
              "cx231xx_set_video_input_mux", status);
      return (status);
    } else {
    }
  } else {
  }
  if (dev->tuner_type == 83) {
    status = cx231xx_set_decoder_video_input(dev, 3, (int )((u8 )((struct cx231xx_input *)(& cx231xx_boards[dev->model].input) + (unsigned long )input)->vmux));
  } else {
    status = cx231xx_set_decoder_video_input(dev, 1, (int )((u8 )((struct cx231xx_input *)(& cx231xx_boards[dev->model].input) + (unsigned long )input)->vmux));
  }
  goto ldv_52465;
  default:
  dev_err((struct device const *)dev->dev, "%s: Unknown Input %d !\n", "cx231xx_set_video_input_mux",
          (unsigned int )((struct cx231xx_input *)(& cx231xx_boards[dev->model].input) + (unsigned long )input)->type);
  goto ldv_52465;
  }
  ldv_52465:
  dev->video_input = (u32 )input;
  return (status);
}
}
int cx231xx_set_decoder_video_input(struct cx231xx *dev , u8 pin_type , u8 input )
{
  int status ;
  u32 value ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  {
  status = 0;
  value = 0U;
  if ((u32 )pin_type != dev->video_input) {
    status = cx231xx_afe_adjust_ref_count(dev, (u32 )pin_type);
    if (status < 0) {
      dev_err((struct device const *)dev->dev, "%s: adjust_ref_count :Failed to set AFE input mux - errCode [%d]!\n",
              "cx231xx_set_decoder_video_input", status);
      return (status);
    } else {
    }
  } else {
  }
  status = cx231xx_afe_set_input_mux(dev, (u32 )input);
  if (status < 0) {
    dev_err((struct device const *)dev->dev, "%s: set_input_mux :Failed to set AFE input mux - errCode [%d]!\n",
            "cx231xx_set_decoder_video_input", status);
    return (status);
  } else {
  }
  switch ((int )pin_type) {
  case 1:
  status = vid_blk_read_word(dev, 260, & value);
  value = value | 16U;
  value = value & 4294967263U;
  value = value & 4261445631U;
  value = value | 16777216U;
  status = vid_blk_write_word(dev, 260, value);
  status = vid_blk_read_word(dev, 1028, & value);
  value = value | 128U;
  status = vid_blk_write_word(dev, 1028, value);
  status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1028, 3U, (u32 )dev->board.output_mode);
  status = cx231xx_dif_set_standard(dev, 4294967295U);
  if (status < 0) {
    dev_err((struct device const *)dev->dev, "%s: cx231xx_dif set to By pass mode- errCode [%d]!\n",
            "cx231xx_set_decoder_video_input", status);
    return (status);
  } else {
  }
  status = vid_blk_read_word(dev, 1160, & value);
  value = value | 134217728U;
  value = value | 268435456U;
  status = vid_blk_write_word(dev, 1160, value);
  tmp = cx231xx_set_field(32U, 1U);
  status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1024, 32U, tmp);
  tmp___0 = cx231xx_set_field(1536U, 0U);
  status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1024, 1536U, tmp___0);
  goto ldv_52478;
  case 2:
  status = vid_blk_read_word(dev, 260, & value);
  value = value & 4261445631U;
  value = value | 16777232U;
  status = vid_blk_write_word(dev, 260, value);
  status = cx231xx_dif_set_standard(dev, 4294967295U);
  if (status < 0) {
    dev_err((struct device const *)dev->dev, "%s: cx231xx_dif set to By pass mode- errCode [%d]!\n",
            "cx231xx_set_decoder_video_input", status);
    return (status);
  } else {
  }
  status = vid_blk_read_word(dev, 1160, & value);
  value = value | 134217728U;
  value = value | 268435456U;
  status = vid_blk_write_word(dev, 1160, value);
  tmp___1 = cx231xx_set_field(32U, 1U);
  status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1024, 32U, tmp___1);
  tmp___2 = cx231xx_set_field(1536U, 1U);
  status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1024, 1536U, tmp___2);
  status = vid_blk_read_word(dev, 260, & value);
  value = value | 4096U;
  value = value & 4294966911U;
  status = vid_blk_write_word(dev, 260, value);
  status = cx231xx_afe_set_mode(dev, 1);
  goto ldv_52478;
  case 3: ;
  case 4: ;
  default: ;
  if (dev->board.tuner_type == 76) {
    status = vid_blk_read_word(dev, 260, & value);
    value = value | 16U;
    value = value & 4294967263U;
    value = value & 4261445631U;
    value = value | 16777216U;
    status = vid_blk_write_word(dev, 260, value);
    status = vid_blk_read_word(dev, 1028, & value);
    value = value | 128U;
    status = vid_blk_write_word(dev, 1028, value);
    status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1028, 3U, (u32 )dev->board.output_mode);
    status = cx231xx_dif_set_standard(dev, 4294967295U);
    if (status < 0) {
      dev_err((struct device const *)dev->dev, "%s: cx231xx_dif set to By pass mode- errCode [%d]!\n",
              "cx231xx_set_decoder_video_input", status);
      return (status);
    } else {
    }
    status = vid_blk_read_word(dev, 1160, & value);
    value = value | 134217728U;
    value = value | 268435456U;
    status = vid_blk_write_word(dev, 1160, value);
    tmp___3 = cx231xx_set_field(32U, 1U);
    status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1024, 32U, tmp___3);
    tmp___4 = cx231xx_set_field(1536U, 0U);
    status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1024, 1536U, tmp___4);
  } else {
    status = cx231xx_dif_set_standard(dev, (u32 )dev->norm);
    if (status < 0) {
      dev_err((struct device const *)dev->dev, "%s: cx231xx_dif set to By pass mode- errCode [%d]!\n",
              "cx231xx_set_decoder_video_input", status);
      return (status);
    } else {
    }
    status = vid_blk_read_word(dev, 828, & value);
    value = value & 2147483647U;
    status = vid_blk_write_word(dev, 828, value);
    status = vid_blk_read_word(dev, 1160, & value);
    value = value & 4160749567U;
    value = value | 1344274432U;
    status = vid_blk_write_word(dev, 1160, value);
    msleep(1U);
    value = value & 4026531839U;
    status = vid_blk_write_word(dev, 1160, value);
    status = vid_blk_read_word(dev, 288, & value);
    value = value | 7U;
    status = vid_blk_write_word(dev, 288, value);
    status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1028, 3U, (u32 )dev->board.output_mode);
    tmp___5 = cx231xx_set_field(32U, 1U);
    status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1024, 32U, tmp___5);
    tmp___6 = cx231xx_set_field(1536U, 0U);
    status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1024, 1536U, tmp___6);
    status = vid_blk_read_word(dev, 260, & value);
    value = value & 4269801471U;
    value = value | 8388608U;
    value = value | 384U;
    status = vid_blk_write_word(dev, 260, value);
    if (dev->tuner_type == 83) {
      status = vid_blk_read_word(dev, 288, & value);
      status = vid_blk_write_word(dev, 288, value & 4294967279U);
    } else {
    }
    goto ldv_52478;
  }
  goto ldv_52478;
  }
  ldv_52478:
  tmp___7 = cx231xx_set_field(8U, 1U);
  status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1028, 8U, tmp___7);
  status = vid_blk_read_word(dev, 1028, & value);
  if ((value & 2U) != 0U) {
    value = value | 524288U;
    status = vid_blk_write_word(dev, 1028, value);
  } else {
  }
  return (status);
}
}
void cx231xx_enable656(struct cx231xx *dev )
{
  u8 temp ;
  {
  temp = 0U;
  vid_blk_write_byte(dev, 7, 255);
  vid_blk_read_byte(dev, 8, & temp);
  temp = (u8 )((unsigned int )temp | 4U);
  vid_blk_write_byte(dev, 8, (int )temp);
  return;
}
}
static char const __kstrtab_cx231xx_enable656[18U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        'e', 'n', 'a', 'b',
        'l', 'e', '6', '5',
        '6', '\000'};
struct kernel_symbol const __ksymtab_cx231xx_enable656 ;
struct kernel_symbol const __ksymtab_cx231xx_enable656 = {(unsigned long )(& cx231xx_enable656), (char const *)(& __kstrtab_cx231xx_enable656)};
void cx231xx_disable656(struct cx231xx *dev )
{
  u8 temp ;
  {
  temp = 0U;
  vid_blk_write_byte(dev, 7, 0);
  vid_blk_read_byte(dev, 8, & temp);
  temp = (unsigned int )temp & 251U;
  vid_blk_write_byte(dev, 8, (int )temp);
  return;
}
}
static char const __kstrtab_cx231xx_disable656[19U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        'd', 'i', 's', 'a',
        'b', 'l', 'e', '6',
        '5', '6', '\000'};
struct kernel_symbol const __ksymtab_cx231xx_disable656 ;
struct kernel_symbol const __ksymtab_cx231xx_disable656 = {(unsigned long )(& cx231xx_disable656), (char const *)(& __kstrtab_cx231xx_disable656)};
int cx231xx_do_mode_ctrl_overrides(struct cx231xx *dev )
{
  int status ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  u32 tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  struct _ddebug descriptor___2 ;
  long tmp___6 ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  u32 tmp___9 ;
  {
  status = 0;
  descriptor.modname = "cx231xx";
  descriptor.function = "cx231xx_do_mode_ctrl_overrides";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
  descriptor.format = "%s: 0x%x\n";
  descriptor.lineno = 976U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "%s: 0x%x\n",
                      "cx231xx_do_mode_ctrl_overrides", (unsigned int )dev->norm);
  } else {
  }
  status = vid_blk_write_word(dev, 1168, 3443458688U);
  if ((dev->norm & 45312ULL) != 0ULL) {
    descriptor___0.modname = "cx231xx";
    descriptor___0.function = "cx231xx_do_mode_ctrl_overrides";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
    descriptor___0.format = "%s: NTSC\n";
    descriptor___0.lineno = 982U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev->dev, "%s: NTSC\n",
                        "cx231xx_do_mode_ctrl_overrides");
    } else {
    }
    status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1140, 1023U, 24U);
    status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1140, 4190208U, 1994752U);
    status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1140, 4278190080U, 469762048U);
    tmp___1 = cx231xx_set_field(1023U, 121U);
    status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1136, 1023U, tmp___1);
  } else
  if ((dev->norm & 16711680ULL) != 0ULL) {
    descriptor___1.modname = "cx231xx";
    descriptor___1.function = "cx231xx_do_mode_ctrl_overrides";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
    descriptor___1.format = "%s: SECAM\n";
    descriptor___1.lineno = 1009U;
    descriptor___1.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)dev->dev, "%s: SECAM\n",
                        "cx231xx_do_mode_ctrl_overrides");
    } else {
    }
    status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1140, 1023U, 32U);
    tmp___3 = cx231xx_set_field(4190208U, 580U);
    status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1140, 4190208U, tmp___3);
    tmp___4 = cx231xx_set_field(4278190080U, 36U);
    status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1140, 4278190080U, tmp___4);
    tmp___5 = cx231xx_set_field(1023U, 133U);
    status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1136, 1023U, tmp___5);
  } else {
    descriptor___2.modname = "cx231xx";
    descriptor___2.function = "cx231xx_do_mode_ctrl_overrides";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
    descriptor___2.format = "%s: PAL\n";
    descriptor___2.lineno = 1036U;
    descriptor___2.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)dev->dev, "%s: PAL\n",
                        "cx231xx_do_mode_ctrl_overrides");
    } else {
    }
    status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1140, 1023U, 32U);
    tmp___7 = cx231xx_set_field(4190208U, 580U);
    status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1140, 4190208U, tmp___7);
    tmp___8 = cx231xx_set_field(4278190080U, 36U);
    status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1140, 4278190080U, tmp___8);
    tmp___9 = cx231xx_set_field(1023U, 133U);
    status = cx231xx_read_modify_write_i2c_dword(dev, 136, 1136, 1023U, tmp___9);
  }
  return (status);
}
}
int cx231xx_unmute_audio(struct cx231xx *dev )
{
  int tmp ;
  {
  tmp = vid_blk_write_byte(dev, 2260, 36);
  return (tmp);
}
}
static char const __kstrtab_cx231xx_unmute_audio[21U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        'u', 'n', 'm', 'u',
        't', 'e', '_', 'a',
        'u', 'd', 'i', 'o',
        '\000'};
struct kernel_symbol const __ksymtab_cx231xx_unmute_audio ;
struct kernel_symbol const __ksymtab_cx231xx_unmute_audio = {(unsigned long )(& cx231xx_unmute_audio), (char const *)(& __kstrtab_cx231xx_unmute_audio)};
static int stopAudioFirmware(struct cx231xx *dev )
{
  int tmp ;
  {
  tmp = vid_blk_write_byte(dev, 2051, 3);
  return (tmp);
}
}
static int restartAudioFirmware(struct cx231xx *dev )
{
  int tmp ;
  {
  tmp = vid_blk_write_byte(dev, 2051, 19);
  return (tmp);
}
}
int cx231xx_set_audio_input(struct cx231xx *dev , u8 input )
{
  int status ;
  enum AUDIO_INPUT ainput ;
  {
  status = 0;
  ainput = 1;
  switch ((unsigned int )((struct cx231xx_input *)(& cx231xx_boards[dev->model].input) + (unsigned long )input)->amux) {
  case 0U:
  ainput = 2;
  goto ldv_52537;
  case 1U:
  status = cx231xx_i2s_blk_set_audio_input(dev, (int )input);
  ainput = 1;
  goto ldv_52537;
  default: ;
  goto ldv_52537;
  }
  ldv_52537:
  status = cx231xx_set_audio_decoder_input(dev, ainput);
  return (status);
}
}
int cx231xx_set_audio_decoder_input(struct cx231xx *dev , enum AUDIO_INPUT audio_input )
{
  u32 dwval ;
  int status ;
  u8 gen_ctrl ;
  u32 value ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  u32 tmp___9 ;
  u32 tmp___10 ;
  u32 tmp___11 ;
  u32 tmp___12 ;
  u32 tmp___13 ;
  u32 tmp___14 ;
  u32 tmp___15 ;
  u32 tmp___16 ;
  u32 tmp___17 ;
  u32 tmp___18 ;
  u32 tmp___19 ;
  u32 tmp___20 ;
  u32 tmp___21 ;
  {
  value = 0U;
  status = vid_blk_read_byte(dev, 2064, & gen_ctrl);
  gen_ctrl = (u8 )((unsigned int )gen_ctrl | 1U);
  status = vid_blk_write_byte(dev, 2064, (int )gen_ctrl);
  switch ((unsigned int )audio_input) {
  case 1U:
  value = cx231xx_set_field(3U, 0U);
  status = vid_blk_write_word(dev, 292, value);
  status = vid_blk_read_word(dev, 2332, & dwval);
  status = vid_blk_write_word(dev, 2332, dwval | 16777216U);
  tmp = cx231xx_set_field(786432U, 0U);
  tmp___0 = cx231xx_set_field(196608U, 0U);
  tmp___1 = cx231xx_set_field(3U, 0U);
  status = vid_blk_write_word(dev, 2320, (tmp | tmp___0) | tmp___1);
  status = vid_blk_write_word(dev, 2048, 50331649U);
  status = vid_blk_write_word(dev, 2256, 405619U);
  status = vid_blk_read_word(dev, 2260, & dwval);
  status = vid_blk_write_word(dev, 2260, dwval | 2147418112U);
  status = vid_blk_read_word(dev, 2268, & dwval);
  status = vid_blk_write_word(dev, 2268, dwval | 2147418112U);
  goto ldv_52549;
  case 2U: ;
  default:
  status = stopAudioFirmware(dev);
  tmp___2 = cx231xx_set_field(3221225472U, 0U);
  tmp___3 = cx231xx_set_field(805306368U, 1U);
  tmp___4 = cx231xx_set_field(201326592U, 0U);
  tmp___5 = cx231xx_set_field(50331648U, 2U);
  tmp___6 = cx231xx_set_field(12582912U, 2U);
  tmp___7 = cx231xx_set_field(3145728U, 3U);
  tmp___8 = cx231xx_set_field(786432U, 0U);
  tmp___9 = cx231xx_set_field(196608U, 0U);
  tmp___10 = cx231xx_set_field(65280U, 0U);
  tmp___11 = cx231xx_set_field(192U, 3U);
  tmp___12 = cx231xx_set_field(48U, 0U);
  tmp___13 = cx231xx_set_field(12U, 2U);
  tmp___14 = cx231xx_set_field(3U, 1U);
  status = vid_blk_write_word(dev, 2320, (((((((((((tmp___2 | tmp___3) | tmp___4) | tmp___5) | tmp___6) | tmp___7) | tmp___8) | tmp___9) | tmp___10) | tmp___11) | tmp___12) | tmp___13) | tmp___14);
  tmp___15 = cx231xx_set_field(128U, 0U);
  tmp___16 = cx231xx_set_field(64U, 0U);
  tmp___17 = cx231xx_set_field(48U, 0U);
  tmp___18 = cx231xx_set_field(12U, 0U);
  tmp___19 = cx231xx_set_field(3U, 3U);
  status = vid_blk_write_word(dev, 292, (((tmp___15 | tmp___16) | tmp___17) | tmp___18) | tmp___19);
  status = vid_blk_write_word(dev, 2256, 520501360U);
  status = vid_blk_write_word(dev, 2256, 407664U);
  status = restartAudioFirmware(dev);
  switch (dev->board.tuner_type) {
  case 76:
  tmp___20 = cx231xx_set_field(131072U, 1U);
  status = cx231xx_read_modify_write_i2c_dword(dev, 136, 256, 131072U, tmp___20);
  goto ldv_52553;
  case 83:
  tmp___21 = cx231xx_set_field(131072U, 0U);
  status = cx231xx_read_modify_write_i2c_dword(dev, 136, 256, 131072U, tmp___21);
  goto ldv_52553;
  default:
  _dev_info((struct device const *)dev->dev, "Unknown tuner type configuring SIF");
  goto ldv_52553;
  }
  ldv_52553: ;
  goto ldv_52549;
  case 4U: ;
  goto ldv_52549;
  case 0U:
  status = vid_blk_write_word(dev, 2256, 520163346U);
  goto ldv_52549;
  }
  ldv_52549:
  status = vid_blk_read_byte(dev, 2064, & gen_ctrl);
  gen_ctrl = (unsigned int )gen_ctrl & 254U;
  status = vid_blk_write_byte(dev, 2064, (int )gen_ctrl);
  return (status);
}
}
int cx231xx_init_ctrl_pin_status(struct cx231xx *dev )
{
  u32 value ;
  int status ;
  {
  status = 0;
  status = vid_blk_read_word(dev, 288, & value);
  value = ~ dev->board.ctl_pin_status_mask | value;
  status = vid_blk_write_word(dev, 288, value);
  return (status);
}
}
int cx231xx_set_agc_analog_digital_mux_select(struct cx231xx *dev , u8 analog_or_digital )
{
  int status ;
  {
  status = 0;
  status = cx231xx_set_gpio_direction(dev, (int )dev->board.agc_analog_digital_select_gpio,
                                      1);
  status = cx231xx_set_gpio_value(dev, (int )dev->board.agc_analog_digital_select_gpio,
                                  (int )analog_or_digital);
  return (status);
}
}
int cx231xx_enable_i2c_port_3(struct cx231xx *dev , bool is_port_3 )
{
  u8 value[4U] ;
  int status ;
  bool current_is_port_3 ;
  {
  value[0] = 0U;
  value[1] = 0U;
  value[2] = 0U;
  value[3] = 0U;
  status = 0;
  status = cx231xx_read_ctrl_reg(dev, 13, 116, (char *)(& value), 4);
  if (status < 0) {
    return (status);
  } else {
  }
  current_is_port_3 = ((int )value[0] & 1) != 0;
  if ((int )current_is_port_3 == (int )is_port_3) {
    return (0);
  } else {
  }
  if ((int )is_port_3) {
    value[0] = (u8 )((unsigned int )value[0] | 1U);
  } else {
    value[0] = (unsigned int )value[0] & 254U;
  }
  status = cx231xx_write_ctrl_reg(dev, 12, 116, (char *)(& value), 4);
  if (status >= 0) {
    dev->port_3_switch_enabled = (unsigned char )is_port_3;
  } else {
  }
  return (status);
}
}
static char const __kstrtab_cx231xx_enable_i2c_port_3[26U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        'e', 'n', 'a', 'b',
        'l', 'e', '_', 'i',
        '2', 'c', '_', 'p',
        'o', 'r', 't', '_',
        '3', '\000'};
struct kernel_symbol const __ksymtab_cx231xx_enable_i2c_port_3 ;
struct kernel_symbol const __ksymtab_cx231xx_enable_i2c_port_3 = {(unsigned long )(& cx231xx_enable_i2c_port_3), (char const *)(& __kstrtab_cx231xx_enable_i2c_port_3)};
void update_HH_register_after_set_DIF(struct cx231xx *dev )
{
  {
  return;
}
}
void cx231xx_dump_HH_reg(struct cx231xx *dev )
{
  u32 value ;
  u16 i ;
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
  {
  value = 0U;
  i = 0U;
  value = 1157649296U;
  vid_blk_write_word(dev, 260, value);
  i = 256U;
  goto ldv_52594;
  ldv_52593:
  vid_blk_read_word(dev, (int )i, & value);
  descriptor.modname = "cx231xx";
  descriptor.function = "cx231xx_dump_HH_reg";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
  descriptor.format = "reg0x%x=0x%x\n";
  descriptor.lineno = 1337U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "reg0x%x=0x%x\n",
                      (int )i, value);
  } else {
  }
  i = (unsigned int )i + 3U;
  i = (u16 )((int )i + 1);
  ldv_52594: ;
  if ((unsigned int )i <= 319U) {
    goto ldv_52593;
  } else {
  }
  i = 768U;
  goto ldv_52598;
  ldv_52597:
  vid_blk_read_word(dev, (int )i, & value);
  descriptor___0.modname = "cx231xx";
  descriptor___0.function = "cx231xx_dump_HH_reg";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
  descriptor___0.format = "reg0x%x=0x%x\n";
  descriptor___0.lineno = 1343U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev->dev, "reg0x%x=0x%x\n",
                      (int )i, value);
  } else {
  }
  i = (unsigned int )i + 3U;
  i = (u16 )((int )i + 1);
  ldv_52598: ;
  if ((unsigned int )i <= 1023U) {
    goto ldv_52597;
  } else {
  }
  i = 1024U;
  goto ldv_52602;
  ldv_52601:
  vid_blk_read_word(dev, (int )i, & value);
  descriptor___1.modname = "cx231xx";
  descriptor___1.function = "cx231xx_dump_HH_reg";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
  descriptor___1.format = "reg0x%x=0x%x\n";
  descriptor___1.lineno = 1349U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)dev->dev, "reg0x%x=0x%x\n",
                      (int )i, value);
  } else {
  }
  i = (unsigned int )i + 3U;
  i = (u16 )((int )i + 1);
  ldv_52602: ;
  if ((unsigned int )i <= 1087U) {
    goto ldv_52601;
  } else {
  }
  vid_blk_read_word(dev, 260, & value);
  descriptor___2.modname = "cx231xx";
  descriptor___2.function = "cx231xx_dump_HH_reg";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
  descriptor___2.format = "AFE_CTRL_C2HH_SRC_CTRL=0x%x\n";
  descriptor___2.lineno = 1354U;
  descriptor___2.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)dev->dev, "AFE_CTRL_C2HH_SRC_CTRL=0x%x\n",
                      value);
  } else {
  }
  vid_blk_write_word(dev, 260, 1149621136U);
  vid_blk_read_word(dev, 260, & value);
  descriptor___3.modname = "cx231xx";
  descriptor___3.function = "cx231xx_dump_HH_reg";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
  descriptor___3.format = "AFE_CTRL_C2HH_SRC_CTRL=0x%x\n";
  descriptor___3.lineno = 1357U;
  descriptor___3.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)dev->dev, "AFE_CTRL_C2HH_SRC_CTRL=0x%x\n",
                      value);
  } else {
  }
  return;
}
}
void cx231xx_Setup_AFE_for_LowIF(struct cx231xx *dev )
{
  u8 value ;
  {
  value = 0U;
  afe_read_byte(dev, 97, & value);
  value = (unsigned int )value | 1U;
  afe_write_byte(dev, 97, (int )value);
  afe_read_byte(dev, 97, & value);
  value = (unsigned int )value & 254U;
  afe_write_byte(dev, 97, (int )value);
  afe_read_byte(dev, 105, & value);
  value = (unsigned int )value & 252U;
  afe_write_byte(dev, 105, (int )value);
  afe_read_byte(dev, 104, & value);
  value = (u8 )(((int )((signed char )value) & -7) | 2);
  afe_write_byte(dev, 104, (int )value);
  afe_read_byte(dev, 103, & value);
  value = (unsigned int )value | 4U;
  afe_write_byte(dev, 103, (int )value);
  afe_read_byte(dev, 102, & value);
  value = (unsigned int )value | 3U;
  afe_write_byte(dev, 102, (int )value);
  afe_read_byte(dev, 101, & value);
  value = (unsigned int )value | 4U;
  afe_write_byte(dev, 101, (int )value);
  afe_read_byte(dev, 100, & value);
  value = (u8 )(((int )((signed char )value) & -8) | 6);
  afe_write_byte(dev, 100, (int )value);
  afe_read_byte(dev, 100, & value);
  value = (u8 )(((int )((signed char )value) & -113) | 64);
  afe_write_byte(dev, 100, (int )value);
  afe_read_byte(dev, 99, & value);
  value = (unsigned int )value | 32U;
  afe_write_byte(dev, 99, (int )value);
  return;
}
}
void cx231xx_set_Colibri_For_LowIF(struct cx231xx *dev , u32 if_freq , u8 spectral_invert ,
                                   u32 mode )
{
  u32 colibri_carrier_offset ;
  u32 func_mode ;
  u32 standard ;
  u8 value[4U] ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  colibri_carrier_offset = 0U;
  func_mode = 1U;
  standard = 0U;
  value[0] = 0U;
  value[1] = 0U;
  value[2] = 0U;
  value[3] = 0U;
  descriptor.modname = "cx231xx";
  descriptor.function = "cx231xx_set_Colibri_For_LowIF";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
  descriptor.format = "Enter cx231xx_set_Colibri_For_LowIF()\n";
  descriptor.lineno = 1527U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "Enter cx231xx_set_Colibri_For_LowIF()\n");
  } else {
  }
  value[0] = 111U;
  value[1] = 111U;
  value[2] = 111U;
  value[3] = 111U;
  cx231xx_write_ctrl_reg(dev, 12, 116, (char *)(& value), 4);
  cx231xx_afe_set_mode(dev, 0);
  standard = (u32 )dev->norm;
  cx231xx_dif_configure_C2HH_for_low_IF(dev, dev->active_mode, func_mode, standard);
  colibri_carrier_offset = cx231xx_Get_Colibri_CarrierOffset(mode, standard);
  descriptor___0.modname = "cx231xx";
  descriptor___0.function = "cx231xx_set_Colibri_For_LowIF";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
  descriptor___0.format = "colibri_carrier_offset=%d, standard=0x%x\n";
  descriptor___0.lineno = 1548U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev->dev, "colibri_carrier_offset=%d, standard=0x%x\n",
                      colibri_carrier_offset, standard);
  } else {
  }
  cx231xx_set_DIF_bandpass(dev, if_freq + colibri_carrier_offset, (int )spectral_invert,
                           mode);
  return;
}
}
u32 cx231xx_Get_Colibri_CarrierOffset(u32 mode , u32 standerd )
{
  u32 colibri_carrier_offset ;
  {
  colibri_carrier_offset = 0U;
  if (mode == 0U) {
    colibri_carrier_offset = 1100000U;
  } else
  if (((unsigned long long )standerd & 46848ULL) != 0ULL) {
    colibri_carrier_offset = 4832000U;
  } else
  if (((unsigned long long )standerd & 5ULL) != 0ULL) {
    colibri_carrier_offset = 2700000U;
  } else
  if (((unsigned long long )standerd & 16711728ULL) != 0ULL) {
    colibri_carrier_offset = 2100000U;
  } else {
  }
  return (colibri_carrier_offset);
}
}
void cx231xx_set_DIF_bandpass(struct cx231xx *dev , u32 if_freq , u8 spectral_invert ,
                              u32 mode )
{
  unsigned long pll_freq_word ;
  u32 dif_misc_ctrl_value ;
  u64 pll_freq_u64 ;
  u32 i ;
  struct _ddebug descriptor ;
  long tmp ;
  uint32_t __base ;
  uint32_t __rem ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  dif_misc_ctrl_value = 0U;
  pll_freq_u64 = 0ULL;
  i = 0U;
  descriptor.modname = "cx231xx";
  descriptor.function = "cx231xx_set_DIF_bandpass";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
  descriptor.format = "if_freq=%d;spectral_invert=0x%x;mode=0x%x\n";
  descriptor.lineno = 1582U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "if_freq=%d;spectral_invert=0x%x;mode=0x%x\n",
                      if_freq, (int )spectral_invert, mode);
  } else {
  }
  if (mode == 0U) {
    pll_freq_word = 2421824684UL;
    vid_blk_write_word(dev, 768, (u32 )pll_freq_word);
  } else {
    pll_freq_word = (unsigned long )if_freq;
    pll_freq_u64 = (unsigned long long )pll_freq_word << 28;
    __base = 50000000U;
    __rem = (uint32_t )(pll_freq_u64 % (u64 )__base);
    pll_freq_u64 = pll_freq_u64 / (u64 )__base;
    pll_freq_word = (unsigned long )((unsigned int )pll_freq_u64);
    vid_blk_write_word(dev, 768, (u32 )pll_freq_word);
    if ((unsigned int )spectral_invert != 0U) {
      if_freq = if_freq - 400000U;
      vid_blk_read_word(dev, 828, & dif_misc_ctrl_value);
      dif_misc_ctrl_value = dif_misc_ctrl_value | 2097152U;
      vid_blk_write_word(dev, 828, dif_misc_ctrl_value);
    } else {
      if_freq = if_freq + 400000U;
      vid_blk_read_word(dev, 828, & dif_misc_ctrl_value);
      dif_misc_ctrl_value = dif_misc_ctrl_value & 4292870143U;
      vid_blk_write_word(dev, 828, dif_misc_ctrl_value);
    }
    if_freq = (if_freq / 100000U) * 100000U;
    if (if_freq <= 2999999U) {
      if_freq = 3000000U;
    } else {
    }
    if (if_freq > 16000000U) {
      if_freq = 16000000U;
    } else {
    }
  }
  descriptor___0.modname = "cx231xx";
  descriptor___0.function = "cx231xx_set_DIF_bandpass";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
  descriptor___0.format = "Enter IF=%zu\n";
  descriptor___0.lineno = 1625U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev->dev, "Enter IF=%zu\n",
                      2489UL);
  } else {
  }
  i = 0U;
  goto ldv_52649;
  ldv_52648: ;
  if (Dif_set_array[i].if_freq == if_freq) {
    vid_blk_write_word(dev, (int )((u16 )Dif_set_array[i].register_address), Dif_set_array[i].value);
  } else {
  }
  i = i + 1U;
  ldv_52649: ;
  if (i <= 2488U) {
    goto ldv_52648;
  } else {
  }
  return;
}
}
int cx231xx_dif_configure_C2HH_for_low_IF(struct cx231xx *dev , u32 mode , u32 function_mode ,
                                          u32 standard )
{
  int status ;
  {
  status = 0;
  if (mode == 1U) {
    status = cx231xx_reg_mask_write(dev, 136, 32, 260, 30, 31, 1U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 260, 23, 24, function_mode);
    status = cx231xx_reg_mask_write(dev, 136, 32, 260, 15, 22, 255U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 260, 9, 9, 1U);
  } else
  if (standard != 4294967295U) {
    if (((unsigned long long )standard & 46848ULL) != 0ULL) {
      status = cx231xx_reg_mask_write(dev, 136, 32, 260, 30, 31, 1U);
      status = cx231xx_reg_mask_write(dev, 136, 32, 260, 23, 24, function_mode);
      status = cx231xx_reg_mask_write(dev, 136, 32, 260, 15, 22, 11U);
      status = cx231xx_reg_mask_write(dev, 136, 32, 260, 9, 9, 1U);
      status = cx231xx_reg_mask_write(dev, 136, 32, 292, 0, 31, 3U);
    } else
    if ((((unsigned long long )(standard == 16U) | ((unsigned long long )standard & 32ULL)) | ((unsigned long long )standard & 16711680ULL)) != 0ULL) {
      status = cx231xx_reg_mask_write(dev, 136, 32, 260, 30, 31, 1U);
      status = cx231xx_reg_mask_write(dev, 136, 32, 260, 23, 24, function_mode);
      status = cx231xx_reg_mask_write(dev, 136, 32, 260, 15, 22, 15U);
      status = cx231xx_reg_mask_write(dev, 136, 32, 260, 9, 9, 1U);
    } else {
      status = cx231xx_reg_mask_write(dev, 136, 32, 260, 30, 31, 1U);
      status = cx231xx_reg_mask_write(dev, 136, 32, 260, 23, 24, function_mode);
      status = cx231xx_reg_mask_write(dev, 136, 32, 260, 15, 22, 14U);
      status = cx231xx_reg_mask_write(dev, 136, 32, 260, 9, 9, 1U);
    }
  } else {
  }
  return (status);
}
}
int cx231xx_dif_set_standard(struct cx231xx *dev , u32 standard )
{
  int status ;
  u32 dif_misc_ctrl_value ;
  u32 func_mode ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  status = 0;
  dif_misc_ctrl_value = 0U;
  func_mode = 0U;
  descriptor.modname = "cx231xx";
  descriptor.function = "cx231xx_dif_set_standard";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
  descriptor.format = "%s: setStandard to %x\n";
  descriptor.lineno = 1737U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "%s: setStandard to %x\n",
                      "cx231xx_dif_set_standard", standard);
  } else {
  }
  status = vid_blk_read_word(dev, 828, & dif_misc_ctrl_value);
  if (standard != 4294967295U) {
    dev->norm = (v4l2_std_id )standard;
  } else {
  }
  switch (dev->model) {
  case 1: ;
  case 6: ;
  case 2: ;
  case 7: ;
  case 5: ;
  case 8: ;
  case 17:
  func_mode = 3U;
  goto ldv_52674;
  case 3: ;
  case 4: ;
  case 14: ;
  case 15:
  func_mode = 1U;
  goto ldv_52674;
  default:
  func_mode = 1U;
  }
  ldv_52674:
  status = cx231xx_dif_configure_C2HH_for_low_IF(dev, dev->active_mode, func_mode,
                                                 standard);
  if (standard == 4294967295U) {
    status = vid_blk_write_word(dev, 832, 234348419U);
    status = vid_blk_read_word(dev, 828, & dif_misc_ctrl_value);
    dif_misc_ctrl_value = dif_misc_ctrl_value | 2147483648U;
    status = vid_blk_write_word(dev, 828, dif_misc_ctrl_value);
  } else
  if (((unsigned long long )standard & 32ULL) != 0ULL) {
    status = cx231xx_reg_mask_write(dev, 136, 32, 772, 0, 31, 1694743564U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 776, 0, 31, 3171126405U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 780, 0, 31, 498361354U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 784, 0, 31, 34816U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 788, 0, 31, 1145836416U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 792, 0, 31, 3660588544U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 796, 0, 31, 3659929344U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 800, 0, 31, 3659933184U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 804, 0, 31, 637540096U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 808, 0, 31, 9824U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 812, 0, 31, 1917847552U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 816, 0, 31, 654311680U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 820, 0, 31, 1060713706U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 824, 0, 31, 0U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 832, 0, 31, 468696838U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 836, 0, 31, 13800U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 916, 0, 31, 0U);
    dif_misc_ctrl_value = dif_misc_ctrl_value & 2097152U;
    dif_misc_ctrl_value = dif_misc_ctrl_value | 973225745U;
  } else
  if (((unsigned long long )standard & 16ULL) != 0ULL) {
    status = cx231xx_reg_mask_write(dev, 136, 32, 772, 0, 31, 1694743564U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 776, 0, 31, 3171126405U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 780, 0, 31, 498361354U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 784, 0, 31, 34816U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 788, 0, 31, 1145836416U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 792, 0, 31, 3660588544U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 796, 0, 31, 3659929344U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 800, 0, 31, 3659933184U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 804, 0, 31, 637540096U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 808, 0, 31, 9824U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 812, 0, 31, 1917847552U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 816, 0, 31, 654311680U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 820, 0, 31, 1597614388U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 824, 0, 31, 0U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 832, 0, 31, 468696838U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 836, 0, 31, 13800U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 916, 0, 31, 0U);
    dif_misc_ctrl_value = dif_misc_ctrl_value & 2097152U;
    dif_misc_ctrl_value = dif_misc_ctrl_value | 973291281U;
  } else
  if (((unsigned long long )standard & 256ULL) != 0ULL) {
    status = vid_blk_write_word(dev, 772, 4278320908U);
    status = vid_blk_write_word(dev, 776, 3171126405U);
    status = vid_blk_write_word(dev, 780, 498361354U);
    status = vid_blk_write_word(dev, 784, 34816U);
    status = vid_blk_write_word(dev, 788, 1145836416U);
    status = vid_blk_write_word(dev, 804, 637540096U);
    status = vid_blk_write_word(dev, 808, 9824U);
    status = vid_blk_write_word(dev, 812, 1917847552U);
    status = vid_blk_write_word(dev, 816, 654311680U);
    status = vid_blk_write_word(dev, 820, 19677277U);
    status = vid_blk_write_word(dev, 824, 10440897U);
    status = vid_blk_write_word(dev, 832, 468696838U);
    status = vid_blk_write_word(dev, 836, 13800U);
    status = vid_blk_write_word(dev, 920, 0U);
    dif_misc_ctrl_value = dif_misc_ctrl_value & 2097152U;
    dif_misc_ctrl_value = dif_misc_ctrl_value | 973750032U;
  } else
  if (((unsigned long long )standard & 1536ULL) != 0ULL) {
    status = vid_blk_write_word(dev, 772, 4278320908U);
    status = vid_blk_write_word(dev, 776, 3171126405U);
    status = vid_blk_write_word(dev, 780, 498361354U);
    status = vid_blk_write_word(dev, 784, 34816U);
    status = vid_blk_write_word(dev, 788, 1145836416U);
    status = vid_blk_write_word(dev, 804, 637540096U);
    status = vid_blk_write_word(dev, 808, 9824U);
    status = vid_blk_write_word(dev, 812, 1917847552U);
    status = vid_blk_write_word(dev, 816, 654311680U);
    status = vid_blk_write_word(dev, 820, 19677277U);
    status = vid_blk_write_word(dev, 824, 10440897U);
    status = vid_blk_write_word(dev, 832, 468696838U);
    status = vid_blk_write_word(dev, 836, 13800U);
    status = vid_blk_write_word(dev, 920, 0U);
    dif_misc_ctrl_value = dif_misc_ctrl_value & 2097152U;
    dif_misc_ctrl_value = 973684496U;
  } else
  if (((unsigned long long )standard & 3604480ULL) != 0ULL) {
    status = cx231xx_reg_mask_write(dev, 136, 32, 772, 0, 31, 1694743564U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 776, 0, 31, 3171126405U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 780, 0, 31, 498361354U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 784, 0, 31, 34816U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 788, 0, 31, 2290877312U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 792, 0, 31, 3760596480U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 796, 0, 31, 3256293120U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 800, 0, 31, 3257280000U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 804, 0, 31, 637540096U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 808, 0, 31, 9824U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 816, 0, 31, 654311680U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 820, 0, 31, 1060450540U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 824, 0, 31, 0U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 832, 0, 31, 468696838U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 836, 0, 31, 13800U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 916, 0, 31, 0U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 812, 0, 31, 4093640704U);
    dif_misc_ctrl_value = dif_misc_ctrl_value & 2097152U;
    dif_misc_ctrl_value = dif_misc_ctrl_value | 973225745U;
  } else
  if (((unsigned long long )standard & 12582912ULL) != 0ULL) {
    status = cx231xx_reg_mask_write(dev, 136, 32, 772, 0, 31, 1694743564U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 776, 0, 31, 3171126405U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 780, 0, 31, 498361354U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 784, 0, 31, 34816U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 788, 0, 31, 2290877312U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 792, 0, 31, 3760596480U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 796, 0, 31, 3256293120U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 800, 0, 31, 3257280000U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 804, 0, 31, 637540096U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 808, 0, 31, 9824U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 816, 0, 31, 654311680U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 820, 0, 31, 1060450540U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 824, 0, 31, 0U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 832, 0, 31, 468696838U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 836, 0, 31, 13800U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 916, 0, 31, 0U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 812, 0, 31, 4065722368U);
    dif_misc_ctrl_value = dif_misc_ctrl_value & 2097152U;
    dif_misc_ctrl_value = dif_misc_ctrl_value | 973225745U;
  } else
  if (((unsigned long long )standard & 4096ULL) != 0ULL) {
    status = vid_blk_write_word(dev, 772, 1694743564U);
    status = vid_blk_write_word(dev, 776, 3171126405U);
    status = vid_blk_write_word(dev, 780, 498361354U);
    status = vid_blk_write_word(dev, 784, 34816U);
    status = vid_blk_write_word(dev, 788, 1145832320U);
    status = vid_blk_write_word(dev, 804, 637540096U);
    status = vid_blk_write_word(dev, 808, 9824U);
    status = vid_blk_write_word(dev, 812, 67110912U);
    status = vid_blk_write_word(dev, 816, 654311680U);
    status = vid_blk_write_word(dev, 820, 19492383U);
    status = vid_blk_write_word(dev, 824, 10440897U);
    status = vid_blk_write_word(dev, 832, 468696838U);
    status = vid_blk_write_word(dev, 836, 13800U);
    status = vid_blk_write_word(dev, 792, 3257280000U);
    status = vid_blk_write_word(dev, 796, 3257280000U);
    status = vid_blk_write_word(dev, 800, 3257280000U);
    dif_misc_ctrl_value = dif_misc_ctrl_value & 2097152U;
    dif_misc_ctrl_value = dif_misc_ctrl_value | 973094672U;
  } else {
    status = cx231xx_reg_mask_write(dev, 136, 32, 772, 0, 31, 1694743564U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 776, 0, 31, 3171126405U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 780, 0, 31, 498361354U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 784, 0, 31, 34816U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 788, 0, 31, 1145836416U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 792, 0, 31, 3660588544U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 796, 0, 31, 3659929344U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 800, 0, 31, 3659933184U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 804, 0, 31, 637540096U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 808, 0, 31, 9824U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 812, 0, 31, 1917847552U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 816, 0, 31, 654311680U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 820, 0, 31, 1060450540U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 824, 0, 31, 10900392U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 832, 0, 31, 468696838U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 836, 0, 31, 13800U);
    status = cx231xx_reg_mask_write(dev, 136, 32, 916, 0, 31, 0U);
    dif_misc_ctrl_value = dif_misc_ctrl_value & 2097152U;
    dif_misc_ctrl_value = dif_misc_ctrl_value | 973160209U;
  }
  dif_misc_ctrl_value = dif_misc_ctrl_value & 4294443007U;
  if (dev->active_mode == 1U) {
    dif_misc_ctrl_value = 2047344640U;
  } else {
  }
  status = vid_blk_write_word(dev, 828, dif_misc_ctrl_value);
  return (status);
}
}
int cx231xx_tuner_pre_channel_change(struct cx231xx *dev )
{
  int status ;
  u32 dwval ;
  {
  status = 0;
  status = vid_blk_read_word(dev, 788, & dwval);
  dwval = dwval & 16777215U;
  dwval = dwval | 855638016U;
  status = vid_blk_write_word(dev, 788, dwval);
  return (status);
}
}
int cx231xx_tuner_post_channel_change(struct cx231xx *dev )
{
  int status ;
  u32 dwval ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  status = 0;
  descriptor.modname = "cx231xx";
  descriptor.function = "cx231xx_tuner_post_channel_change";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
  descriptor.format = "%s: dev->tuner_type =0%d\n";
  descriptor.lineno = 2141U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "%s: dev->tuner_type =0%d\n",
                      "cx231xx_tuner_post_channel_change", dev->tuner_type);
  } else {
  }
  status = vid_blk_read_word(dev, 788, & dwval);
  dwval = dwval & 16777215U;
  if ((dev->norm & 4390912ULL) != 0ULL) {
    if (dev->tuner_type == 83) {
      dwval = dwval & 4294963200U;
      dwval = dwval | 2281702144U;
    } else {
      dwval = dwval | 2281701376U;
    }
  } else
  if (dev->tuner_type == 83) {
    dwval = dwval & 4294963200U;
    dwval = dwval | 3422552832U;
  } else {
    dwval = dwval | 1140850688U;
  }
  status = vid_blk_write_word(dev, 788, dwval);
  return (status == 4 ? 0 : -5);
}
}
int cx231xx_i2s_blk_initialize(struct cx231xx *dev )
{
  int status ;
  u32 value ;
  {
  status = 0;
  status = cx231xx_read_i2c_data(dev, 152, 14, 1, & value, 1);
  value = value | 128U;
  status = cx231xx_write_i2c_data(dev, 152, 14, 1, value, 1);
  status = cx231xx_write_i2c_data(dev, 152, 15, 1, 0U, 1);
  return (status);
}
}
int cx231xx_i2s_blk_update_power_control(struct cx231xx *dev , enum AV_MODE avmode )
{
  int status ;
  u32 value ;
  {
  status = 0;
  value = 0U;
  if ((unsigned int )avmode != 48U) {
    status = cx231xx_read_i2c_data(dev, 152, 15, 1, & value, 1);
    value = value | 254U;
    status = cx231xx_write_i2c_data(dev, 152, 15, 1, value, 1);
  } else {
    status = cx231xx_write_i2c_data(dev, 152, 15, 1, 0U, 1);
  }
  return (status);
}
}
int cx231xx_i2s_blk_set_audio_input(struct cx231xx *dev , u8 audio_input )
{
  int status ;
  {
  status = 0;
  switch ((int )audio_input) {
  case 1:
  status = cx231xx_write_i2c_data(dev, 152, 15, 1, 0U, 1);
  status = cx231xx_write_i2c_data(dev, 152, 14, 1, 128U, 1);
  goto ldv_52709;
  case 0: ;
  default: ;
  goto ldv_52709;
  }
  ldv_52709:
  dev->ctl_ainput = (unsigned int )audio_input;
  return (status);
}
}
int cx231xx_set_power_mode(struct cx231xx *dev , enum AV_MODE mode )
{
  u8 value[4U] ;
  u32 tmp ;
  int status ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  value[0] = 0U;
  value[1] = 0U;
  value[2] = 0U;
  value[3] = 0U;
  tmp = 0U;
  status = 0;
  if ((unsigned int )dev->power_mode != (unsigned int )mode) {
    dev->power_mode = (int )mode;
  } else {
    descriptor.modname = "cx231xx";
    descriptor.function = "cx231xx_set_power_mode";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
    descriptor.format = "%s: mode = %d, No Change req.\n";
    descriptor.lineno = 2243U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "%s: mode = %d, No Change req.\n",
                        "cx231xx_set_power_mode", (unsigned int )mode);
    } else {
    }
    return (0);
  }
  status = cx231xx_read_ctrl_reg(dev, 13, 116, (char *)(& value), 4);
  if (status < 0) {
    return (status);
  } else {
  }
  tmp = *((__le32 *)(& value));
  switch ((unsigned int )mode) {
  case 48U:
  tmp = tmp & 4294966912U;
  tmp = tmp | 8U;
  value[0] = (unsigned char )tmp;
  value[1] = (unsigned char )(tmp >> 8);
  value[2] = (unsigned char )(tmp >> 16);
  value[3] = (unsigned char )(tmp >> 24);
  status = cx231xx_write_ctrl_reg(dev, 12, 116, (char *)(& value), 4);
  msleep(10U);
  tmp = tmp | 64U;
  value[0] = (unsigned char )tmp;
  value[1] = (unsigned char )(tmp >> 8);
  value[2] = (unsigned char )(tmp >> 16);
  value[3] = (unsigned char )(tmp >> 24);
  status = cx231xx_write_ctrl_reg(dev, 12, 116, (char *)(& value), 4);
  msleep(10U);
  tmp = tmp | 48U;
  value[0] = (unsigned char )tmp;
  value[1] = (unsigned char )(tmp >> 8);
  value[2] = (unsigned char )(tmp >> 16);
  value[3] = (unsigned char )(tmp >> 24);
  status = cx231xx_write_ctrl_reg(dev, 12, 116, (char *)(& value), 4);
  dev->xc_fw_load_done = 0U;
  goto ldv_52722;
  case 32U:
  tmp = tmp | 2U;
  value[0] = (unsigned char )tmp;
  value[1] = (unsigned char )(tmp >> 8);
  value[2] = (unsigned char )(tmp >> 16);
  value[3] = (unsigned char )(tmp >> 24);
  status = cx231xx_write_ctrl_reg(dev, 12, 116, (char *)(& value), 4);
  msleep(10U);
  if ((tmp & 4U) == 0U) {
    tmp = tmp | 4U;
    value[0] = (unsigned char )tmp;
    value[1] = (unsigned char )(tmp >> 8);
    value[2] = (unsigned char )(tmp >> 16);
    value[3] = (unsigned char )(tmp >> 24);
    status = cx231xx_write_ctrl_reg(dev, 12, 116, (char *)(& value), 4);
    msleep(10U);
  } else {
  }
  if ((tmp & 8U) == 0U) {
    tmp = tmp | 8U;
    value[0] = (unsigned char )tmp;
    value[1] = (unsigned char )(tmp >> 8);
    value[2] = (unsigned char )(tmp >> 16);
    value[3] = (unsigned char )(tmp >> 24);
    status = cx231xx_write_ctrl_reg(dev, 12, 116, (char *)(& value), 4);
    msleep(10U);
  } else {
  }
  if ((tmp & 64U) == 0U) {
    tmp = tmp | 64U;
    value[0] = (unsigned char )tmp;
    value[1] = (unsigned char )(tmp >> 8);
    value[2] = (unsigned char )(tmp >> 16);
    value[3] = (unsigned char )(tmp >> 24);
    status = cx231xx_write_ctrl_reg(dev, 12, 116, (char *)(& value), 4);
    msleep(10U);
  } else {
  }
  if ((tmp & 32U) == 0U) {
    tmp = tmp | 32U;
    value[0] = (unsigned char )tmp;
    value[1] = (unsigned char )(tmp >> 8);
    value[2] = (unsigned char )(tmp >> 16);
    value[3] = (unsigned char )(tmp >> 24);
    status = cx231xx_write_ctrl_reg(dev, 12, 116, (char *)(& value), 4);
    msleep(10U);
  } else {
  }
  if (dev->board.tuner_type != 4) {
    if ((unsigned long )dev->board.tuner_gpio != (unsigned long )((struct cx231xx_reg_seq *)0)) {
      cx231xx_gpio_set(dev, dev->board.tuner_gpio);
    } else {
    }
    if ((unsigned long )dev->cx231xx_reset_analog_tuner != (unsigned long )((int (*)(struct cx231xx * ))0)) {
      (*(dev->cx231xx_reset_analog_tuner))(dev);
    } else {
    }
  } else {
  }
  goto ldv_52722;
  case 16U: ;
  if ((tmp & 4U) == 0U) {
    tmp = tmp | 4U;
    value[0] = (unsigned char )tmp;
    value[1] = (unsigned char )(tmp >> 8);
    value[2] = (unsigned char )(tmp >> 16);
    value[3] = (unsigned char )(tmp >> 24);
    status = cx231xx_write_ctrl_reg(dev, 12, 116, (char *)(& value), 4);
    msleep(10U);
  } else {
  }
  if ((tmp & 8U) == 0U) {
    tmp = tmp | 8U;
    value[0] = (unsigned char )tmp;
    value[1] = (unsigned char )(tmp >> 8);
    value[2] = (unsigned char )(tmp >> 16);
    value[3] = (unsigned char )(tmp >> 24);
    status = cx231xx_write_ctrl_reg(dev, 12, 116, (char *)(& value), 4);
    msleep(10U);
  } else {
  }
  if ((tmp & 64U) == 0U) {
    tmp = tmp | 64U;
    value[0] = (unsigned char )tmp;
    value[1] = (unsigned char )(tmp >> 8);
    value[2] = (unsigned char )(tmp >> 16);
    value[3] = (unsigned char )(tmp >> 24);
    status = cx231xx_write_ctrl_reg(dev, 12, 116, (char *)(& value), 4);
    msleep(10U);
  } else {
  }
  tmp = tmp & 4294967247U;
  tmp = tmp | 16U;
  value[0] = (unsigned char )tmp;
  value[1] = (unsigned char )(tmp >> 8);
  value[2] = (unsigned char )(tmp >> 16);
  value[3] = (unsigned char )(tmp >> 24);
  status = cx231xx_write_ctrl_reg(dev, 12, 116, (char *)(& value), 4);
  msleep(10U);
  if ((tmp & 2U) == 0U) {
    tmp = tmp | 2U;
    value[0] = (unsigned char )tmp;
    value[1] = (unsigned char )(tmp >> 8);
    value[2] = (unsigned char )(tmp >> 16);
    value[3] = (unsigned char )(tmp >> 24);
    status = cx231xx_write_ctrl_reg(dev, 12, 116, (char *)(& value), 4);
    msleep(10U);
  } else {
  }
  if (dev->board.tuner_type != 4) {
    if ((unsigned long )dev->board.tuner_gpio != (unsigned long )((struct cx231xx_reg_seq *)0)) {
      cx231xx_gpio_set(dev, dev->board.tuner_gpio);
    } else {
    }
    if ((unsigned long )dev->cx231xx_reset_analog_tuner != (unsigned long )((int (*)(struct cx231xx * ))0)) {
      (*(dev->cx231xx_reset_analog_tuner))(dev);
    } else {
    }
  } else {
  }
  goto ldv_52722;
  default: ;
  goto ldv_52722;
  }
  ldv_52722:
  msleep(10U);
  if ((unsigned int )mode == 16U) {
    tmp = tmp | 256U;
    value[0] = (unsigned char )tmp;
    value[1] = (unsigned char )(tmp >> 8);
    value[2] = (unsigned char )(tmp >> 16);
    value[3] = (unsigned char )(tmp >> 24);
    status = cx231xx_write_ctrl_reg(dev, 12, 116, (char *)(& value), 4);
    msleep(10U);
  } else {
  }
  status = cx231xx_afe_update_power_control(dev, mode);
  status = cx231xx_i2s_blk_update_power_control(dev, mode);
  status = cx231xx_read_ctrl_reg(dev, 13, 116, (char *)(& value), 4);
  return (status);
}
}
int cx231xx_power_suspend(struct cx231xx *dev )
{
  u8 value[4U] ;
  u32 tmp ;
  int status ;
  {
  value[0] = 0U;
  value[1] = 0U;
  value[2] = 0U;
  value[3] = 0U;
  tmp = 0U;
  status = 0;
  status = cx231xx_read_ctrl_reg(dev, 13, 116, (char *)(& value), 4);
  if (status > 0) {
    return (status);
  } else {
  }
  tmp = *((__le32 *)(& value));
  tmp = tmp & 4294966912U;
  value[0] = (unsigned char )tmp;
  value[1] = (unsigned char )(tmp >> 8);
  value[2] = (unsigned char )(tmp >> 16);
  value[3] = (unsigned char )(tmp >> 24);
  status = cx231xx_write_ctrl_reg(dev, 12, 116, (char *)(& value), 4);
  return (status);
}
}
int cx231xx_start_stream(struct cx231xx *dev , u32 ep_mask )
{
  u8 value[4U] ;
  u32 tmp ;
  int status ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  value[0] = 0U;
  value[1] = 0U;
  value[2] = 0U;
  value[3] = 0U;
  tmp = 0U;
  status = 0;
  descriptor.modname = "cx231xx";
  descriptor.function = "cx231xx_start_stream";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
  descriptor.format = "%s: ep_mask = %x\n";
  descriptor.lineno = 2482U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "%s: ep_mask = %x\n",
                      "cx231xx_start_stream", ep_mask);
  } else {
  }
  status = cx231xx_read_ctrl_reg(dev, 13, 24, (char *)(& value), 4);
  if (status < 0) {
    return (status);
  } else {
  }
  tmp = *((__le32 *)(& value));
  tmp = tmp | ep_mask;
  value[0] = (unsigned char )tmp;
  value[1] = (unsigned char )(tmp >> 8);
  value[2] = (unsigned char )(tmp >> 16);
  value[3] = (unsigned char )(tmp >> 24);
  status = cx231xx_write_ctrl_reg(dev, 12, 24, (char *)(& value), 4);
  return (status);
}
}
int cx231xx_stop_stream(struct cx231xx *dev , u32 ep_mask )
{
  u8 value[4U] ;
  u32 tmp ;
  int status ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  value[0] = 0U;
  value[1] = 0U;
  value[2] = 0U;
  value[3] = 0U;
  tmp = 0U;
  status = 0;
  descriptor.modname = "cx231xx";
  descriptor.function = "cx231xx_stop_stream";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
  descriptor.format = "%s: ep_mask = %x\n";
  descriptor.lineno = 2507U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "%s: ep_mask = %x\n",
                      "cx231xx_stop_stream", ep_mask);
  } else {
  }
  status = cx231xx_read_ctrl_reg(dev, 13, 24, (char *)(& value), 4);
  if (status < 0) {
    return (status);
  } else {
  }
  tmp = *((__le32 *)(& value));
  tmp = ~ ep_mask & tmp;
  value[0] = (unsigned char )tmp;
  value[1] = (unsigned char )(tmp >> 8);
  value[2] = (unsigned char )(tmp >> 16);
  value[3] = (unsigned char )(tmp >> 24);
  status = cx231xx_write_ctrl_reg(dev, 12, 24, (char *)(& value), 4);
  return (status);
}
}
int cx231xx_initialize_stream_xfer(struct cx231xx *dev , u32 media_type )
{
  int status ;
  u32 value ;
  u8 val[4U] ;
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
  struct _ddebug descriptor___5 ;
  long tmp___5 ;
  struct _ddebug descriptor___6 ;
  long tmp___6 ;
  {
  status = 0;
  value = 0U;
  val[0] = 0U;
  val[1] = 0U;
  val[2] = 0U;
  val[3] = 0U;
  if ((unsigned int )(dev->udev)->speed == 3U) {
    switch (media_type) {
    case 1U:
    descriptor.modname = "cx231xx";
    descriptor.function = "cx231xx_initialize_stream_xfer";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
    descriptor.format = "%s: Audio enter HANC\n";
    descriptor.lineno = 2536U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "%s: Audio enter HANC\n",
                        "cx231xx_initialize_stream_xfer");
    } else {
    }
    status = cx231xx_mode_register(dev, 4, 37632U);
    goto ldv_52760;
    case 2U:
    descriptor___0.modname = "cx231xx";
    descriptor___0.function = "cx231xx_initialize_stream_xfer";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
    descriptor___0.format = "%s: set vanc registers\n";
    descriptor___0.lineno = 2543U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev->dev, "%s: set vanc registers\n",
                        "cx231xx_initialize_stream_xfer");
    } else {
    }
    status = cx231xx_mode_register(dev, 4, 768U);
    goto ldv_52760;
    case 3U:
    descriptor___1.modname = "cx231xx";
    descriptor___1.function = "cx231xx_initialize_stream_xfer";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
    descriptor___1.format = "%s: set hanc registers\n";
    descriptor___1.lineno = 2549U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)dev->dev, "%s: set hanc registers\n",
                        "cx231xx_initialize_stream_xfer");
    } else {
    }
    status = cx231xx_mode_register(dev, 4, 4864U);
    goto ldv_52760;
    case 0U:
    descriptor___2.modname = "cx231xx";
    descriptor___2.function = "cx231xx_initialize_stream_xfer";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
    descriptor___2.format = "%s: set video registers\n";
    descriptor___2.lineno = 2556U;
    descriptor___2.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)dev->dev, "%s: set video registers\n",
                        "cx231xx_initialize_stream_xfer");
    } else {
    }
    status = cx231xx_mode_register(dev, 4, 256U);
    goto ldv_52760;
    case 4U:
    descriptor___3.modname = "cx231xx";
    descriptor___3.function = "cx231xx_initialize_stream_xfer";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
    descriptor___3.format = "%s: set ts1 registers";
    descriptor___3.lineno = 2562U;
    descriptor___3.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)dev->dev, "%s: set ts1 registers",
                        "cx231xx_initialize_stream_xfer");
    } else {
    }
    if ((unsigned int )*((unsigned char *)dev + 144UL) != 0U) {
      descriptor___4.modname = "cx231xx";
      descriptor___4.function = "cx231xx_initialize_stream_xfer";
      descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
      descriptor___4.format = "%s: MPEG\n";
      descriptor___4.lineno = 2566U;
      descriptor___4.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
      if (tmp___4 != 0L) {
        __dynamic_dev_dbg(& descriptor___4, (struct device const *)dev->dev, "%s: MPEG\n",
                          "cx231xx_initialize_stream_xfer");
      } else {
      }
      value = value & 4294967292U;
      value = value | 3U;
      status = cx231xx_mode_register(dev, 4, value);
      val[0] = 4U;
      val[1] = 163U;
      val[2] = 59U;
      val[3] = 0U;
      status = cx231xx_write_ctrl_reg(dev, 12, 8, (char *)(& val), 4);
      val[0] = 0U;
      val[1] = 8U;
      val[2] = 0U;
      val[3] = 8U;
      status = cx231xx_write_ctrl_reg(dev, 12, 12, (char *)(& val), 4);
    } else {
      descriptor___5.modname = "cx231xx";
      descriptor___5.function = "cx231xx_initialize_stream_xfer";
      descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
      descriptor___5.format = "%s: BDA\n";
      descriptor___5.lineno = 2589U;
      descriptor___5.flags = 0U;
      tmp___5 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
      if (tmp___5 != 0L) {
        __dynamic_dev_dbg(& descriptor___5, (struct device const *)dev->dev, "%s: BDA\n",
                          "cx231xx_initialize_stream_xfer");
      } else {
      }
      status = cx231xx_mode_register(dev, 4, 257U);
      status = cx231xx_mode_register(dev, 8, 16U);
    }
    goto ldv_52760;
    case 6U:
    descriptor___6.modname = "cx231xx";
    descriptor___6.function = "cx231xx_initialize_stream_xfer";
    descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
    descriptor___6.format = "%s: set ts1 parallel mode registers\n";
    descriptor___6.lineno = 2600U;
    descriptor___6.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_dev_dbg(& descriptor___6, (struct device const *)dev->dev, "%s: set ts1 parallel mode registers\n",
                        "cx231xx_initialize_stream_xfer");
    } else {
    }
    status = cx231xx_mode_register(dev, 4, 256U);
    status = cx231xx_mode_register(dev, 8, 1024U);
    goto ldv_52760;
    }
    ldv_52760: ;
  } else {
    status = cx231xx_mode_register(dev, 4, 257U);
  }
  return (status);
}
}
int cx231xx_capture_start(struct cx231xx *dev , int start , u8 media_type )
{
  int rc ;
  u32 ep_mask ;
  struct pcb_config *pcb_config ;
  {
  rc = -1;
  ep_mask = 4294967295U;
  pcb_config = & dev->current_pcb_config;
  if ((unsigned int )pcb_config->config_num != 0U) {
    switch ((int )media_type) {
    case 0:
    ep_mask = 8U;
    goto ldv_52782;
    case 1:
    ep_mask = 4U;
    goto ldv_52782;
    case 2:
    ep_mask = 16U;
    goto ldv_52782;
    case 3:
    ep_mask = 32U;
    goto ldv_52782;
    case 4: ;
    case 6:
    ep_mask = 1U;
    goto ldv_52782;
    case 5:
    ep_mask = 2U;
    goto ldv_52782;
    }
    ldv_52782: ;
  } else {
  }
  if (start != 0) {
    rc = cx231xx_initialize_stream_xfer(dev, (u32 )media_type);
    if (rc < 0) {
      return (rc);
    } else {
    }
    if (ep_mask != 0U) {
      rc = cx231xx_start_stream(dev, ep_mask);
    } else {
    }
  } else
  if (ep_mask != 0U) {
    rc = cx231xx_stop_stream(dev, ep_mask);
  } else {
  }
  return (rc);
}
}
static char const __kstrtab_cx231xx_capture_start[22U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        'c', 'a', 'p', 't',
        'u', 'r', 'e', '_',
        's', 't', 'a', 'r',
        't', '\000'};
struct kernel_symbol const __ksymtab_cx231xx_capture_start ;
struct kernel_symbol const __ksymtab_cx231xx_capture_start = {(unsigned long )(& cx231xx_capture_start), (char const *)(& __kstrtab_cx231xx_capture_start)};
static int cx231xx_set_gpio_bit(struct cx231xx *dev , u32 gpio_bit , u32 gpio_val )
{
  int status ;
  {
  status = 0;
  gpio_val = gpio_val;
  status = cx231xx_send_gpio_cmd(dev, gpio_bit, (u8 *)(& gpio_val), 4, 0, 0);
  return (status);
}
}
static int cx231xx_get_gpio_bit(struct cx231xx *dev , u32 gpio_bit , u32 *gpio_val )
{
  __le32 tmp ;
  int status ;
  {
  status = 0;
  status = cx231xx_send_gpio_cmd(dev, gpio_bit, (u8 *)(& tmp), 4, 0, 1);
  *gpio_val = tmp;
  return (status);
}
}
int cx231xx_set_gpio_direction(struct cx231xx *dev , int pin_number , int pin_value )
{
  int status ;
  u32 value ;
  {
  status = 0;
  value = 0U;
  if (pin_number > 31) {
    return (-22);
  } else {
  }
  if (pin_value == 0) {
    value = dev->gpio_dir & (u32 )(~ (1 << pin_number));
  } else {
    value = dev->gpio_dir | (u32 )(1 << pin_number);
  }
  status = cx231xx_set_gpio_bit(dev, value, dev->gpio_val);
  dev->gpio_dir = value;
  return (status);
}
}
int cx231xx_set_gpio_value(struct cx231xx *dev , int pin_number , int pin_value )
{
  int status ;
  u32 value ;
  {
  status = 0;
  value = 0U;
  if (pin_number > 31) {
    return (-22);
  } else {
  }
  if ((dev->gpio_dir & (u32 )(1 << pin_number)) == 0U) {
    value = dev->gpio_dir | (u32 )(1 << pin_number);
    dev->gpio_dir = value;
    status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
    value = 0U;
  } else {
  }
  if (pin_value == 0) {
    value = dev->gpio_val & (u32 )(~ (1 << pin_number));
  } else {
    value = dev->gpio_val | (u32 )(1 << pin_number);
  }
  dev->gpio_val = value;
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  return (status);
}
}
int cx231xx_gpio_i2c_start(struct cx231xx *dev )
{
  int status ;
  {
  status = 0;
  dev->gpio_dir = dev->gpio_dir | (u32 )(1 << (int )dev->board.tuner_scl_gpio);
  dev->gpio_dir = dev->gpio_dir | (u32 )(1 << (int )dev->board.tuner_sda_gpio);
  dev->gpio_val = dev->gpio_val | (u32 )(1 << (int )dev->board.tuner_scl_gpio);
  dev->gpio_val = dev->gpio_val | (u32 )(1 << (int )dev->board.tuner_sda_gpio);
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  if (status < 0) {
    return (-22);
  } else {
  }
  dev->gpio_val = dev->gpio_val | (u32 )(1 << (int )dev->board.tuner_scl_gpio);
  dev->gpio_val = dev->gpio_val & (u32 )(~ (1 << (int )dev->board.tuner_sda_gpio));
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  if (status < 0) {
    return (-22);
  } else {
  }
  dev->gpio_val = dev->gpio_val & (u32 )(~ (1 << (int )dev->board.tuner_scl_gpio));
  dev->gpio_val = dev->gpio_val & (u32 )(~ (1 << (int )dev->board.tuner_sda_gpio));
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  if (status < 0) {
    return (-22);
  } else {
  }
  return (status);
}
}
int cx231xx_gpio_i2c_end(struct cx231xx *dev )
{
  int status ;
  {
  status = 0;
  dev->gpio_dir = dev->gpio_dir | (u32 )(1 << (int )dev->board.tuner_scl_gpio);
  dev->gpio_dir = dev->gpio_dir | (u32 )(1 << (int )dev->board.tuner_sda_gpio);
  dev->gpio_val = dev->gpio_val & (u32 )(~ (1 << (int )dev->board.tuner_scl_gpio));
  dev->gpio_val = dev->gpio_val & (u32 )(~ (1 << (int )dev->board.tuner_sda_gpio));
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  if (status < 0) {
    return (-22);
  } else {
  }
  dev->gpio_val = dev->gpio_val | (u32 )(1 << (int )dev->board.tuner_scl_gpio);
  dev->gpio_val = dev->gpio_val & (u32 )(~ (1 << (int )dev->board.tuner_sda_gpio));
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  if (status < 0) {
    return (-22);
  } else {
  }
  dev->gpio_dir = dev->gpio_dir & (u32 )(~ (1 << (int )dev->board.tuner_scl_gpio));
  dev->gpio_dir = dev->gpio_dir & (u32 )(~ (1 << (int )dev->board.tuner_sda_gpio));
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  if (status < 0) {
    return (-22);
  } else {
  }
  return (status);
}
}
int cx231xx_gpio_i2c_write_byte(struct cx231xx *dev , u8 data )
{
  int status ;
  u8 i ;
  {
  status = 0;
  dev->gpio_dir = dev->gpio_dir | (u32 )(1 << (int )dev->board.tuner_scl_gpio);
  dev->gpio_dir = dev->gpio_dir | (u32 )(1 << (int )dev->board.tuner_sda_gpio);
  i = 0U;
  goto ldv_52840;
  ldv_52839: ;
  if ((((int )data << (int )i) & 128) == 0) {
    dev->gpio_val = dev->gpio_val & (u32 )(~ (1 << (int )dev->board.tuner_scl_gpio));
    dev->gpio_val = dev->gpio_val & (u32 )(~ (1 << (int )dev->board.tuner_sda_gpio));
    status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
    dev->gpio_val = dev->gpio_val | (u32 )(1 << (int )dev->board.tuner_scl_gpio);
    status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
    dev->gpio_val = dev->gpio_val & (u32 )(~ (1 << (int )dev->board.tuner_scl_gpio));
    status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  } else {
    dev->gpio_val = dev->gpio_val & (u32 )(~ (1 << (int )dev->board.tuner_scl_gpio));
    dev->gpio_val = dev->gpio_val | (u32 )(1 << (int )dev->board.tuner_sda_gpio);
    status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
    dev->gpio_val = dev->gpio_val | (u32 )(1 << (int )dev->board.tuner_scl_gpio);
    status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
    dev->gpio_val = dev->gpio_val & (u32 )(~ (1 << (int )dev->board.tuner_scl_gpio));
    status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  }
  i = (u8 )((int )i + 1);
  ldv_52840: ;
  if ((unsigned int )i <= 7U) {
    goto ldv_52839;
  } else {
  }
  return (status);
}
}
int cx231xx_gpio_i2c_read_byte(struct cx231xx *dev , u8 *buf )
{
  u8 value ;
  int status ;
  u32 gpio_logic_value ;
  u8 i ;
  {
  value = 0U;
  status = 0;
  gpio_logic_value = 0U;
  i = 0U;
  goto ldv_52851;
  ldv_52850:
  dev->gpio_val = dev->gpio_val & (u32 )(~ (1 << (int )dev->board.tuner_scl_gpio));
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  dev->gpio_val = dev->gpio_val | (u32 )(1 << (int )dev->board.tuner_scl_gpio);
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  gpio_logic_value = dev->gpio_val;
  status = cx231xx_get_gpio_bit(dev, dev->gpio_dir, & dev->gpio_val);
  if ((dev->gpio_val & (u32 )(1 << (int )dev->board.tuner_sda_gpio)) != 0U) {
    value = (u8 )((int )((signed char )(1 << (7 - (int )i))) | (int )((signed char )value));
  } else {
  }
  dev->gpio_val = gpio_logic_value;
  i = (u8 )((int )i + 1);
  ldv_52851: ;
  if ((unsigned int )i <= 7U) {
    goto ldv_52850;
  } else {
  }
  dev->gpio_val = dev->gpio_val & (u32 )(~ (1 << (int )dev->board.tuner_scl_gpio));
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  *buf = value;
  return (status);
}
}
int cx231xx_gpio_i2c_read_ack(struct cx231xx *dev )
{
  int status ;
  u32 gpio_logic_value ;
  int nCnt ;
  int nInit ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  status = 0;
  gpio_logic_value = 0U;
  nCnt = 10;
  nInit = nCnt;
  dev->gpio_dir = dev->gpio_dir & (u32 )(~ (1 << (int )dev->board.tuner_sda_gpio));
  dev->gpio_dir = dev->gpio_dir & (u32 )(~ (1 << (int )dev->board.tuner_scl_gpio));
  gpio_logic_value = dev->gpio_val;
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  ldv_52860:
  msleep(2U);
  status = cx231xx_get_gpio_bit(dev, dev->gpio_dir, & dev->gpio_val);
  nCnt = nCnt - 1;
  if ((dev->gpio_val & (u32 )(1 << (int )dev->board.tuner_scl_gpio)) == 0U && nCnt > 0) {
    goto ldv_52860;
  } else {
  }
  if (nCnt == 0) {
    descriptor.modname = "cx231xx";
    descriptor.function = "cx231xx_gpio_i2c_read_ack";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-avcore.c";
    descriptor.format = "No ACK after %d msec -GPIO I2C failed!";
    descriptor.lineno = 2955U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "No ACK after %d msec -GPIO I2C failed!",
                        nInit * 10);
    } else {
    }
  } else {
  }
  status = cx231xx_get_gpio_bit(dev, dev->gpio_dir, & dev->gpio_val);
  if ((dev->gpio_val & (u32 )(1 << (int )dev->board.tuner_sda_gpio)) == 0U) {
    dev->gpio_val = gpio_logic_value;
    dev->gpio_val = dev->gpio_val & (u32 )(~ (1 << (int )dev->board.tuner_sda_gpio));
    status = 0;
  } else {
    dev->gpio_val = gpio_logic_value;
    dev->gpio_val = dev->gpio_val | (u32 )(1 << (int )dev->board.tuner_sda_gpio);
  }
  dev->gpio_val = gpio_logic_value;
  dev->gpio_dir = dev->gpio_dir | (u32 )(1 << (int )dev->board.tuner_scl_gpio);
  dev->gpio_val = dev->gpio_val & (u32 )(~ (1 << (int )dev->board.tuner_scl_gpio));
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  return (status);
}
}
int cx231xx_gpio_i2c_write_ack(struct cx231xx *dev )
{
  int status ;
  {
  status = 0;
  dev->gpio_dir = dev->gpio_dir | (u32 )(1 << (int )dev->board.tuner_sda_gpio);
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  dev->gpio_val = dev->gpio_val & (u32 )(~ (1 << (int )dev->board.tuner_sda_gpio));
  dev->gpio_val = dev->gpio_val & (u32 )(~ (1 << (int )dev->board.tuner_scl_gpio));
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  dev->gpio_val = dev->gpio_val | (u32 )(1 << (int )dev->board.tuner_scl_gpio);
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  dev->gpio_val = dev->gpio_val & (u32 )(~ (1 << (int )dev->board.tuner_scl_gpio));
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  dev->gpio_dir = dev->gpio_dir & (u32 )(~ (1 << (int )dev->board.tuner_sda_gpio));
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  return (status);
}
}
int cx231xx_gpio_i2c_write_nak(struct cx231xx *dev )
{
  int status ;
  {
  status = 0;
  dev->gpio_dir = dev->gpio_dir | (u32 )(1 << (int )dev->board.tuner_scl_gpio);
  dev->gpio_dir = dev->gpio_dir & (u32 )(~ (1 << (int )dev->board.tuner_sda_gpio));
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  dev->gpio_val = dev->gpio_val & (u32 )(~ (1 << (int )dev->board.tuner_scl_gpio));
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  dev->gpio_val = dev->gpio_val | (u32 )(1 << (int )dev->board.tuner_scl_gpio);
  status = cx231xx_set_gpio_bit(dev, dev->gpio_dir, dev->gpio_val);
  return (status);
}
}
int cx231xx_gpio_i2c_read(struct cx231xx *dev , u8 dev_addr , u8 *buf , u8 len )
{
  int status ;
  int i ;
  {
  status = 0;
  i = 0;
  mutex_lock_nested(& dev->gpio_i2c_lock, 0U);
  status = cx231xx_gpio_i2c_start(dev);
  status = cx231xx_gpio_i2c_write_byte(dev, (int )((unsigned int )((int )dev_addr << 1U) + 1U));
  status = cx231xx_gpio_i2c_read_ack(dev);
  i = 0;
  goto ldv_52881;
  ldv_52880:
  *(buf + (unsigned long )i) = 0U;
  status = cx231xx_gpio_i2c_read_byte(dev, buf + (unsigned long )i);
  if (i + 1 != (int )len) {
    status = cx231xx_gpio_i2c_write_ack(dev);
  } else {
  }
  i = i + 1;
  ldv_52881: ;
  if ((int )len > i) {
    goto ldv_52880;
  } else {
  }
  status = cx231xx_gpio_i2c_write_nak(dev);
  status = cx231xx_gpio_i2c_end(dev);
  mutex_unlock(& dev->gpio_i2c_lock);
  return (status);
}
}
int cx231xx_gpio_i2c_write(struct cx231xx *dev , u8 dev_addr , u8 *buf , u8 len )
{
  int i ;
  {
  i = 0;
  mutex_lock_nested(& dev->gpio_i2c_lock, 0U);
  cx231xx_gpio_i2c_start(dev);
  cx231xx_gpio_i2c_write_byte(dev, (int )dev_addr << 1U);
  cx231xx_gpio_i2c_read_ack(dev);
  i = 0;
  goto ldv_52891;
  ldv_52890:
  cx231xx_gpio_i2c_write_byte(dev, (int )*(buf + (unsigned long )i));
  cx231xx_gpio_i2c_read_ack(dev);
  i = i + 1;
  ldv_52891: ;
  if ((int )len > i) {
    goto ldv_52890;
  } else {
  }
  cx231xx_gpio_i2c_end(dev);
  mutex_unlock(& dev->gpio_i2c_lock);
  return (0);
}
}
bool ldv_queue_work_on_67(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_68(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_69(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_70(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_71(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv__builtin_va_end(__builtin_va_list * ) ;
void ldv__builtin_va_arg(__builtin_va_list , unsigned long , void * ) ;
__inline static long ldv__builtin_expect(long exp , long c ) ;
void ldv__builtin_va_start(__builtin_va_list * ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern void __cmpxchg_wrong_size(void) ;
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
  goto ldv_5659;
  case 2UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5659;
  case 4UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5659;
  case 8UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5659;
  default:
  __xadd_wrong_size();
  }
  ldv_5659: ;
  return (__ret + i);
}
}
__inline static int atomic_sub_return(int i , atomic_t *v )
{
  int tmp ;
  {
  tmp = atomic_add_return(- i, v);
  return (tmp);
}
}
__inline static int atomic_cmpxchg(atomic_t *v , int old , int new )
{
  int __ret ;
  int __old ;
  int __new ;
  u8 volatile *__ptr ;
  u16 volatile *__ptr___0 ;
  u32 volatile *__ptr___1 ;
  u64 volatile *__ptr___2 ;
  {
  __old = old;
  __new = new;
  switch (4UL) {
  case 1UL:
  __ptr = (u8 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgb %2,%1": "=a" (__ret),
                       "+m" (*__ptr): "q" (__new), "0" (__old): "memory");
  goto ldv_5679;
  case 2UL:
  __ptr___0 = (u16 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgw %2,%1": "=a" (__ret),
                       "+m" (*__ptr___0): "r" (__new), "0" (__old): "memory");
  goto ldv_5679;
  case 4UL:
  __ptr___1 = (u32 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgl %2,%1": "=a" (__ret),
                       "+m" (*__ptr___1): "r" (__new), "0" (__old): "memory");
  goto ldv_5679;
  case 8UL:
  __ptr___2 = (u64 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgq %2,%1": "=a" (__ret),
                       "+m" (*__ptr___2): "r" (__new), "0" (__old): "memory");
  goto ldv_5679;
  default:
  __cmpxchg_wrong_size();
  }
  ldv_5679: ;
  return (__ret);
}
}
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
bool ldv_queue_work_on_81(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_83(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_82(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_85(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_84(struct workqueue_struct *ldv_func_arg1 ) ;
extern void __const_udelay(unsigned long ) ;
extern int v4l2_ctrl_log_status(struct file * , void * ) ;
extern int cx2341x_handler_init(struct cx2341x_handler * , unsigned int ) ;
extern void cx2341x_handler_set_50hz(struct cx2341x_handler * , int ) ;
extern int cx2341x_handler_setup(struct cx2341x_handler * ) ;
extern int videobuf_waiton(struct videobuf_queue * , struct videobuf_buffer * , int ,
                           int ) ;
extern void videobuf_read_stop(struct videobuf_queue * ) ;
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
extern void *vmalloc(unsigned long ) ;
extern void vfree(void const * ) ;
static unsigned int mpegbufs = 8U;
static unsigned int mpeglines = 128U;
static unsigned int mpeglinesize = 512U;
static unsigned int v4l_debug = 1U;
static struct cx231xx_tvnorm cx231xx_tvnorms[11U] =
  { {(char *)"NTSC-M", 4096ULL, 0U, 0U},
        {(char *)"NTSC-JP", 8192ULL, 0U, 0U},
        {(char *)"PAL-BG", 7ULL, 0U, 0U},
        {(char *)"PAL-DK", 224ULL, 0U, 0U},
        {(char *)"PAL-I", 16ULL, 0U, 0U},
        {(char *)"PAL-M", 256ULL, 0U, 0U},
        {(char *)"PAL-N", 512ULL, 0U, 0U},
        {(char *)"PAL-Nc", 1024ULL, 0U, 0U},
        {(char *)"PAL-60", 2048ULL, 0U, 0U},
        {(char *)"SECAM-L", 4194304ULL, 0U, 0U},
        {(char *)"SECAM-DK", 3276800ULL, 0U, 0U}};
static int set_itvc_reg(struct cx231xx *dev , u32 gpio_direction , u32 value )
{
  int status ;
  u32 _gpio_direction ;
  {
  status = 0;
  _gpio_direction = 0U;
  _gpio_direction = _gpio_direction & 4227859455U;
  _gpio_direction = _gpio_direction | gpio_direction;
  status = cx231xx_send_gpio_cmd(dev, _gpio_direction, (u8 *)(& value), 4, 0, 0);
  return (status);
}
}
static int get_itvc_reg(struct cx231xx *dev , u32 gpio_direction , u32 *val_ptr )
{
  int status ;
  u32 _gpio_direction ;
  {
  status = 0;
  _gpio_direction = 0U;
  _gpio_direction = _gpio_direction & 4227859455U;
  _gpio_direction = _gpio_direction | gpio_direction;
  status = cx231xx_send_gpio_cmd(dev, _gpio_direction, (u8 *)val_ptr, 4, 0, 1);
  return (status);
}
}
static int wait_for_mci_complete(struct cx231xx *dev )
{
  u32 gpio ;
  u32 gpio_direction ;
  u8 count ;
  u8 tmp ;
  {
  gpio_direction = 0U;
  count = 0U;
  get_itvc_reg(dev, gpio_direction, & gpio);
  goto ldv_52717;
  ldv_52716:
  msleep(10U);
  get_itvc_reg(dev, gpio_direction, & gpio);
  tmp = count;
  count = (u8 )((int )count + 1);
  if ((unsigned int )tmp > 100U) {
    if (v4l_debug > 2U) {
      printk("\017ERROR: Timeout - gpio=%x\n", gpio);
    } else {
    }
    return (-1);
  } else {
  }
  ldv_52717: ;
  if ((gpio & 131072U) == 0U) {
    goto ldv_52716;
  } else {
  }
  return (0);
}
}
static int mc417_register_write(struct cx231xx *dev , u16 address , u32 value )
{
  u32 temp ;
  int status ;
  int tmp ;
  {
  status = 0;
  temp = ((value << 8) & 65535U) | 194U;
  temp = temp << 10;
  status = set_itvc_reg(dev, 66976768U, temp);
  if (status < 0) {
    return (status);
  } else {
  }
  temp = temp | 5120U;
  set_itvc_reg(dev, 66976768U, temp);
  temp = (value & 65280U) | 202U;
  temp = temp << 10;
  set_itvc_reg(dev, 66976768U, temp);
  temp = temp | 5120U;
  set_itvc_reg(dev, 66976768U, temp);
  temp = ((value & 16711680U) >> 8) | 210U;
  temp = temp << 10;
  set_itvc_reg(dev, 66976768U, temp);
  temp = temp | 5120U;
  set_itvc_reg(dev, 66976768U, temp);
  temp = ((value & 4278190080U) >> 16) | 218U;
  temp = temp << 10;
  set_itvc_reg(dev, 66976768U, temp);
  temp = temp | 5120U;
  set_itvc_reg(dev, 66976768U, temp);
  temp = (u32 )((((int )address << 8) & 65535) | 226);
  temp = temp << 10;
  set_itvc_reg(dev, 66976768U, temp);
  temp = temp | 5120U;
  set_itvc_reg(dev, 66976768U, temp);
  temp = (u32 )(((int )address & 65280) | 234);
  temp = temp << 10;
  set_itvc_reg(dev, 66976768U, temp);
  temp = temp | 5120U;
  set_itvc_reg(dev, 66976768U, temp);
  temp = 498U;
  temp = temp << 10;
  set_itvc_reg(dev, 66976768U, temp);
  temp = temp | 5120U;
  set_itvc_reg(dev, 66976768U, temp);
  tmp = wait_for_mci_complete(dev);
  return (tmp);
}
}
static int mc417_register_read(struct cx231xx *dev , u16 address , u32 *value )
{
  u32 temp ;
  u32 return_value ;
  int ret ;
  {
  return_value = 0U;
  ret = 0;
  temp = (u32 )((((int )address << 8) & 65535) | 226);
  temp = temp << 10;
  set_itvc_reg(dev, 66976768U, temp);
  temp = temp | 5120U;
  set_itvc_reg(dev, 66976768U, temp);
  temp = (u32 )(((int )address & 65280) | 234);
  temp = temp << 10;
  set_itvc_reg(dev, 66976768U, temp);
  temp = temp | 5120U;
  set_itvc_reg(dev, 66976768U, temp);
  temp = 242U;
  temp = temp << 10;
  set_itvc_reg(dev, 66976768U, temp);
  temp = temp | 5120U;
  set_itvc_reg(dev, 66976768U, temp);
  ret = wait_for_mci_complete(dev);
  temp = 198656U;
  set_itvc_reg(dev, 130048U, temp);
  temp = 197632U;
  set_itvc_reg(dev, 130048U, temp);
  get_itvc_reg(dev, 130048U, & temp);
  return_value = ((temp & 66846720U) >> 18) | return_value;
  set_itvc_reg(dev, 130048U, 138240U);
  temp = 206848U;
  set_itvc_reg(dev, 130048U, temp);
  temp = 205824U;
  set_itvc_reg(dev, 130048U, temp);
  get_itvc_reg(dev, 130048U, & temp);
  return_value = ((temp & 66846720U) >> 10) | return_value;
  set_itvc_reg(dev, 130048U, 138240U);
  temp = 215040U;
  set_itvc_reg(dev, 130048U, temp);
  temp = 214016U;
  set_itvc_reg(dev, 130048U, temp);
  get_itvc_reg(dev, 130048U, & temp);
  return_value = ((temp & 66846720U) >> 2) | return_value;
  set_itvc_reg(dev, 130048U, 138240U);
  temp = 223232U;
  set_itvc_reg(dev, 130048U, temp);
  temp = 222208U;
  set_itvc_reg(dev, 130048U, temp);
  get_itvc_reg(dev, 130048U, & temp);
  return_value = ((temp & 66846720U) << 6) | return_value;
  set_itvc_reg(dev, 130048U, 138240U);
  *value = return_value;
  return (ret);
}
}
static int mc417_memory_write(struct cx231xx *dev , u32 address , u32 value )
{
  u32 temp ;
  int ret ;
  {
  ret = 0;
  temp = ((value << 8) & 65535U) | 130U;
  temp = temp << 10;
  ret = set_itvc_reg(dev, 66976768U, temp);
  if (ret < 0) {
    return (ret);
  } else {
  }
  temp = temp | 5120U;
  set_itvc_reg(dev, 66976768U, temp);
  temp = (value & 65280U) | 138U;
  temp = temp << 10;
  set_itvc_reg(dev, 66976768U, temp);
  temp = temp | 5120U;
  set_itvc_reg(dev, 66976768U, temp);
  temp = ((value & 16711680U) >> 8) | 146U;
  temp = temp << 10;
  set_itvc_reg(dev, 66976768U, temp);
  temp = temp | 5120U;
  set_itvc_reg(dev, 66976768U, temp);
  temp = ((value & 4278190080U) >> 16) | 154U;
  temp = temp << 10;
  set_itvc_reg(dev, 66976768U, temp);
  temp = temp | 5120U;
  set_itvc_reg(dev, 66976768U, temp);
  temp = ((address & 4128768U) >> 8) | 16546U;
  temp = temp << 10;
  set_itvc_reg(dev, 66976768U, temp);
  temp = temp | 5120U;
  set_itvc_reg(dev, 66976768U, temp);
  temp = (address & 65280U) | 170U;
  temp = temp << 10;
  set_itvc_reg(dev, 66976768U, temp);
  temp = temp | 5120U;
  set_itvc_reg(dev, 66976768U, temp);
  temp = ((address << 8) & 65535U) | 178U;
  temp = temp << 10;
  set_itvc_reg(dev, 66976768U, temp);
  temp = temp | 5120U;
  set_itvc_reg(dev, 66976768U, temp);
  wait_for_mci_complete(dev);
  return (0);
}
}
static int mc417_memory_read(struct cx231xx *dev , u32 address , u32 *value )
{
  u32 temp ;
  u32 return_value ;
  int ret ;
  {
  temp = 0U;
  return_value = 0U;
  ret = 0;
  temp = ((address & 4128768U) >> 8) | 162U;
  temp = temp << 10;
  ret = set_itvc_reg(dev, 66976768U, temp);
  if (ret < 0) {
    return (ret);
  } else {
  }
  temp = temp | 5120U;
  set_itvc_reg(dev, 66976768U, temp);
  temp = (address & 65280U) | 170U;
  temp = temp << 10;
  set_itvc_reg(dev, 66976768U, temp);
  temp = temp | 5120U;
  set_itvc_reg(dev, 66976768U, temp);
  temp = ((address << 8) & 65535U) | 178U;
  temp = temp << 10;
  set_itvc_reg(dev, 66976768U, temp);
  temp = temp | 5120U;
  set_itvc_reg(dev, 66976768U, temp);
  ret = wait_for_mci_complete(dev);
  temp = 157696U;
  set_itvc_reg(dev, 130048U, temp);
  temp = 156672U;
  set_itvc_reg(dev, 130048U, temp);
  get_itvc_reg(dev, 130048U, & temp);
  return_value = ((temp & 66846720U) << 6) | return_value;
  set_itvc_reg(dev, 130048U, 138240U);
  temp = 149504U;
  set_itvc_reg(dev, 130048U, temp);
  temp = 148480U;
  set_itvc_reg(dev, 130048U, temp);
  get_itvc_reg(dev, 130048U, & temp);
  return_value = ((temp & 66846720U) >> 2) | return_value;
  set_itvc_reg(dev, 130048U, 138240U);
  temp = 141312U;
  set_itvc_reg(dev, 130048U, temp);
  temp = 140288U;
  set_itvc_reg(dev, 130048U, temp);
  get_itvc_reg(dev, 130048U, & temp);
  return_value = ((temp & 66846720U) >> 10) | return_value;
  set_itvc_reg(dev, 130048U, 138240U);
  temp = 133120U;
  set_itvc_reg(dev, 130048U, temp);
  temp = 132096U;
  set_itvc_reg(dev, 130048U, temp);
  get_itvc_reg(dev, 130048U, & temp);
  return_value = ((temp & 66846720U) >> 18) | return_value;
  set_itvc_reg(dev, 130048U, 138240U);
  *value = return_value;
  return (ret);
}
}
static char *cmd_to_str(int cmd )
{
  {
  switch (cmd) {
  case 128: ;
  return ((char *)"PING_FW");
  case 129: ;
  return ((char *)"START_CAPTURE");
  case 130: ;
  return ((char *)"STOP_CAPTURE");
  case 137: ;
  return ((char *)"SET_AUDIO_ID");
  case 139: ;
  return ((char *)"SET_VIDEO_ID");
  case 141: ;
  return ((char *)"SET_PCR_PID");
  case 143: ;
  return ((char *)"SET_FRAME_RATE");
  case 145: ;
  return ((char *)"SET_FRAME_SIZE");
  case 149: ;
  return ((char *)"SET_BIT_RATE");
  case 151: ;
  return ((char *)"SET_GOP_PROPERTIES");
  case 153: ;
  return ((char *)"SET_ASPECT_RATIO");
  case 155: ;
  return ((char *)"SET_DNR_FILTER_PROPS");
  case 157: ;
  return ((char *)"SET_DNR_FILTER_PROPS");
  case 159: ;
  return ((char *)"SET_CORING_LEVELS");
  case 161: ;
  return ((char *)"SET_SPATIAL_FILTER_TYPE");
  case 183: ;
  return ((char *)"SET_VBI_LINE");
  case 185: ;
  return ((char *)"SET_STREAM_TYPE");
  case 187: ;
  return ((char *)"SET_OUTPUT_PORT");
  case 189: ;
  return ((char *)"SET_AUDIO_PROPERTIES");
  case 195: ;
  return ((char *)"HALT_FW");
  case 196: ;
  return ((char *)"GET_VERSION");
  case 197: ;
  return ((char *)"SET_GOP_CLOSURE");
  case 198: ;
  return ((char *)"GET_SEQ_END");
  case 199: ;
  return ((char *)"SET_PGM_INDEX_INFO");
  case 200: ;
  return ((char *)"SET_VBI_CONFIG");
  case 201: ;
  return ((char *)"SET_DMA_BLOCK_SIZE");
  case 202: ;
  return ((char *)"GET_PREV_DMA_INFO_MB_10");
  case 203: ;
  return ((char *)"GET_PREV_DMA_INFO_MB_9");
  case 204: ;
  return ((char *)"SCHED_DMA_TO_HOST");
  case 205: ;
  return ((char *)"INITIALIZE_INPUT");
  case 208: ;
  return ((char *)"SET_FRAME_DROP_RATE");
  case 210: ;
  return ((char *)"PAUSE_ENCODER");
  case 211: ;
  return ((char *)"REFRESH_INPUT");
  case 212: ;
  return ((char *)"SET_COPYRIGHT");
  case 213: ;
  return ((char *)"SET_EVENT_NOTIFICATION");
  case 214: ;
  return ((char *)"SET_NUM_VSYNC_LINES");
  case 215: ;
  return ((char *)"SET_PLACEHOLDER");
  case 217: ;
  return ((char *)"MUTE_VIDEO");
  case 218: ;
  return ((char *)"MUTE_AUDIO");
  case 220: ;
  return ((char *)"MISC");
  default: ;
  return ((char *)"UNKNOWN");
  }
}
}
static int cx231xx_mbox_func(void *priv , u32 command , int in , int out , u32 *data )
{
  struct cx231xx *dev ;
  unsigned long timeout ;
  u32 value ;
  u32 flag ;
  u32 retval ;
  int i ;
  char *tmp ;
  char *tmp___0 ;
  char *tmp___1 ;
  unsigned long tmp___2 ;
  {
  dev = (struct cx231xx *)priv;
  retval = 0U;
  if (v4l_debug > 2U) {
    tmp = cmd_to_str((int )command);
    printk("\017%s: command(0x%X) = %s\n", "cx231xx_mbox_func", command, tmp);
  } else {
  }
  mc417_memory_read(dev, dev->cx23417_mailbox - 4U, & value);
  if (value != 305419896U) {
    if (v4l_debug > 2U) {
      tmp___0 = cmd_to_str((int )command);
      printk("\017Firmware and/or mailbox pointer not initialized or corrupted, signature = 0x%x, cmd = %s\n",
             value, tmp___0);
    } else {
    }
    return (-5);
  } else {
  }
  mc417_memory_read(dev, dev->cx23417_mailbox, & flag);
  if (flag != 0U) {
    if (v4l_debug > 2U) {
      tmp___1 = cmd_to_str((int )command);
      printk("\017ERROR: Mailbox appears to be in use (%x), cmd = %s\n", flag, tmp___1);
    } else {
    }
    return (-16);
  } else {
  }
  flag = flag | 1U;
  mc417_memory_write(dev, dev->cx23417_mailbox, flag);
  mc417_memory_write(dev, dev->cx23417_mailbox + 1U, command);
  mc417_memory_write(dev, dev->cx23417_mailbox + 3U, 500U);
  i = 0;
  goto ldv_52808;
  ldv_52807:
  mc417_memory_write(dev, (dev->cx23417_mailbox + (u32 )i) + 4U, *(data + (unsigned long )i));
  if (v4l_debug > 2U) {
    printk("\017API Input %d = %d\n", i, *(data + (unsigned long )i));
  } else {
  }
  i = i + 1;
  ldv_52808: ;
  if (i < in) {
    goto ldv_52807;
  } else {
  }
  goto ldv_52811;
  ldv_52810:
  mc417_memory_write(dev, (dev->cx23417_mailbox + (u32 )i) + 4U, 0U);
  i = i + 1;
  ldv_52811: ;
  if (i <= 15) {
    goto ldv_52810;
  } else {
  }
  flag = flag | 3U;
  mc417_memory_write(dev, dev->cx23417_mailbox, flag);
  tmp___2 = msecs_to_jiffies(10U);
  timeout = tmp___2 + (unsigned long )jiffies;
  ldv_52820:
  mc417_memory_read(dev, dev->cx23417_mailbox, & flag);
  if ((flag & 4U) != 0U) {
    goto ldv_52813;
  } else {
  }
  if ((long )(timeout - (unsigned long )jiffies) < 0L) {
    if (v4l_debug > 2U) {
      printk("\017ERROR: API Mailbox timeout\n");
    } else {
    }
    return (-5);
  } else {
  }
  __const_udelay(42950UL);
  goto ldv_52820;
  ldv_52813:
  i = 0;
  goto ldv_52822;
  ldv_52821:
  mc417_memory_read(dev, (dev->cx23417_mailbox + (u32 )i) + 4U, data + (unsigned long )i);
  if (v4l_debug > 2U) {
    printk("\017API Output %d = %d\n", i, *(data + (unsigned long )i));
  } else {
  }
  i = i + 1;
  ldv_52822: ;
  if (i < out) {
    goto ldv_52821;
  } else {
  }
  mc417_memory_read(dev, dev->cx23417_mailbox + 2U, & retval);
  if (v4l_debug > 2U) {
    printk("\017API result = %d\n", retval);
  } else {
  }
  flag = 0U;
  mc417_memory_write(dev, dev->cx23417_mailbox, flag);
  return (0);
}
}
static int cx231xx_api_cmd(struct cx231xx *dev , u32 command , u32 inputcnt , u32 outputcnt
                           , ...)
{
  u32 data[16U] ;
  va_list vargs ;
  int i ;
  int err ;
  int tmp___0 ;
  int *vptr ;
  int *tmp___2 ;
  {
  if (v4l_debug > 2U) {
    printk("\017%s() cmds = 0x%08x\n", "cx231xx_api_cmd", command);
  } else {
  }
  ldv__builtin_va_start((va_list *)(& vargs));
  i = 0;
  goto ldv_52836;
  ldv_52835:
  ldv__builtin_va_arg(vargs, sizeof(int ), (void *)(& tmp___0));
  data[i] = (u32 )tmp___0;
  i = i + 1;
  ldv_52836: ;
  if ((u32 )i < inputcnt) {
    goto ldv_52835;
  } else {
  }
  err = cx231xx_mbox_func((void *)dev, command, (int )inputcnt, (int )outputcnt, (u32 *)(& data));
  i = 0;
  goto ldv_52840;
  ldv_52839:
  ldv__builtin_va_arg(vargs, sizeof(int *), (void *)(& tmp___2));
  vptr = tmp___2;
  *vptr = (int )data[i];
  i = i + 1;
  ldv_52840: ;
  if ((u32 )i < outputcnt) {
    goto ldv_52839;
  } else {
  }
  ldv__builtin_va_end((va_list *)(& vargs));
  return (err);
}
}
static int cx231xx_find_mailbox(struct cx231xx *dev )
{
  u32 signature[4U] ;
  int signaturecnt ;
  u32 value ;
  int i ;
  int ret ;
  {
  signature[0] = 305419896U;
  signature[1] = 878082066U;
  signature[2] = 1450709556U;
  signature[3] = 2014458966U;
  signaturecnt = 0;
  ret = 0;
  if (v4l_debug > 1U) {
    printk("\017%s()\n", "cx231xx_find_mailbox");
  } else {
  }
  i = 0;
  goto ldv_52852;
  ldv_52851:
  ret = mc417_memory_read(dev, (u32 )i, & value);
  if (ret < 0) {
    return (ret);
  } else {
  }
  if (signature[signaturecnt] == value) {
    signaturecnt = signaturecnt + 1;
  } else {
    signaturecnt = 0;
  }
  if (signaturecnt == 4) {
    if (v4l_debug != 0U) {
      printk("\017Mailbox signature found at 0x%x\n", i + 1);
    } else {
    }
    return (i + 1);
  } else {
  }
  i = i + 1;
  ldv_52852: ;
  if (i <= 255) {
    goto ldv_52851;
  } else {
  }
  if (v4l_debug > 2U) {
    printk("\017Mailbox signature values not found!\n");
  } else {
  }
  return (-1);
}
}
static void mci_write_memory_to_gpio(struct cx231xx *dev , u32 address , u32 value ,
                                     u32 *p_fw_image )
{
  u32 temp ;
  int i ;
  {
  temp = 0U;
  i = 0;
  temp = ((value << 8) & 65535U) | 130U;
  temp = temp << 10;
  *p_fw_image = temp;
  p_fw_image = p_fw_image + 1;
  temp = temp | 5120U;
  *p_fw_image = temp;
  p_fw_image = p_fw_image + 1;
  temp = (value & 65280U) | 138U;
  temp = temp << 10;
  *p_fw_image = temp;
  p_fw_image = p_fw_image + 1;
  temp = temp | 5120U;
  *p_fw_image = temp;
  p_fw_image = p_fw_image + 1;
  temp = ((value & 16711680U) >> 8) | 146U;
  temp = temp << 10;
  *p_fw_image = temp;
  p_fw_image = p_fw_image + 1;
  temp = temp | 5120U;
  *p_fw_image = temp;
  p_fw_image = p_fw_image + 1;
  temp = ((value & 4278190080U) >> 16) | 154U;
  temp = temp << 10;
  *p_fw_image = temp;
  p_fw_image = p_fw_image + 1;
  temp = temp | 5120U;
  *p_fw_image = temp;
  p_fw_image = p_fw_image + 1;
  temp = ((address & 4128768U) >> 8) | 16546U;
  temp = temp << 10;
  *p_fw_image = temp;
  p_fw_image = p_fw_image + 1;
  temp = temp | 5120U;
  *p_fw_image = temp;
  p_fw_image = p_fw_image + 1;
  temp = (address & 65280U) | 170U;
  temp = temp << 10;
  *p_fw_image = temp;
  p_fw_image = p_fw_image + 1;
  temp = temp | 5120U;
  *p_fw_image = temp;
  p_fw_image = p_fw_image + 1;
  temp = ((address << 8) & 65535U) | 178U;
  temp = temp << 10;
  *p_fw_image = temp;
  p_fw_image = p_fw_image + 1;
  temp = temp | 5120U;
  *p_fw_image = temp;
  p_fw_image = p_fw_image + 1;
  i = 0;
  goto ldv_52863;
  ldv_52862:
  *p_fw_image = 4294967295U;
  p_fw_image = p_fw_image + 1;
  i = i + 1;
  ldv_52863: ;
  if (i <= 5) {
    goto ldv_52862;
  } else {
  }
  return;
}
}
static int cx231xx_load_firmware(struct cx231xx *dev )
{
  unsigned char magic[8U] ;
  struct firmware const *firmware ;
  int i ;
  int retval ;
  u32 value ;
  u32 gpio_output ;
  u32 transfer_size ;
  u32 fw_data ;
  u32 address ;
  u32 *p_current_fw ;
  u32 *p_fw ;
  u32 *p_fw_data ;
  int frame ;
  u16 _buffer_size ;
  u8 *p_buffer ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  {
  magic[0] = 167U;
  magic[1] = 13U;
  magic[2] = 0U;
  magic[3] = 0U;
  magic[4] = 102U;
  magic[5] = 187U;
  magic[6] = 85U;
  magic[7] = 170U;
  retval = 0;
  value = 0U;
  gpio_output = 0U;
  transfer_size = 0U;
  fw_data = 0U;
  address = 0U;
  frame = 0;
  _buffer_size = 4096U;
  tmp = vmalloc(7536720UL);
  p_current_fw = (u32 *)tmp;
  p_fw = p_current_fw;
  if ((unsigned long )p_current_fw == (unsigned long )((u32 *)0U)) {
    if (v4l_debug > 1U) {
      printk("\017FAIL!!!\n");
    } else {
    }
    return (-1);
  } else {
  }
  tmp___0 = vmalloc(4096UL);
  p_buffer = (u8 *)tmp___0;
  if ((unsigned long )p_buffer == (unsigned long )((u8 *)0U)) {
    if (v4l_debug > 1U) {
      printk("\017FAIL!!!\n");
    } else {
    }
    return (-1);
  } else {
  }
  if (v4l_debug > 1U) {
    printk("\017%s()\n", "cx231xx_load_firmware");
  } else {
  }
  tmp___1 = mc417_memory_read(dev, 36896U, & gpio_output);
  retval = tmp___1 | retval;
  tmp___2 = mc417_memory_read(dev, 36876U, & value);
  retval = tmp___2 | retval;
  retval = mc417_register_write(dev, 36952, 4294967277U);
  tmp___3 = mc417_register_write(dev, 36948, 4294967295U);
  retval = tmp___3 | retval;
  tmp___4 = mc417_register_write(dev, 2040, 2147485696U);
  retval = tmp___4 | retval;
  tmp___5 = mc417_register_write(dev, 2044, 26U);
  retval = tmp___5 | retval;
  tmp___6 = mc417_register_write(dev, 41060, 0U);
  retval = tmp___6 | retval;
  if (retval != 0) {
    dev_err((struct device const *)dev->dev, "%s: Error with mc417_register_write\n",
            "cx231xx_load_firmware");
    return (-1);
  } else {
  }
  retval = request_firmware(& firmware, "v4l-cx23885-enc.fw", dev->dev);
  if (retval != 0) {
    dev_err((struct device const *)dev->dev, "OLD_ERROR: Hotplug firmware request failed (%s).\n",
            (char *)"v4l-cx23885-enc.fw");
    dev_err((struct device const *)dev->dev, "Please fix your hotplug setup, the board will not work without firmware loaded!\n");
    return (-1);
  } else {
  }
  if ((unsigned long )firmware->size != 376836UL) {
    dev_err((struct device const *)dev->dev, "OLD_ERROR: Firmware size mismatch (have %zd, expected %d)\n",
            firmware->size, 376836);
    release_firmware(firmware);
    return (-1);
  } else {
  }
  tmp___7 = memcmp((void const *)firmware->data, (void const *)(& magic), 8UL);
  if (tmp___7 != 0) {
    dev_err((struct device const *)dev->dev, "OLD_ERROR: Firmware magic mismatch, wrong file?\n");
    release_firmware(firmware);
    return (-1);
  } else {
  }
  initGPIO(dev);
  if (v4l_debug > 1U) {
    printk("\017Loading firmware to GPIO...\n");
  } else {
  }
  p_fw_data = (u32 *)firmware->data;
  if (v4l_debug > 1U) {
    printk("\017firmware->size=%zd\n", firmware->size);
  } else {
  }
  transfer_size = 0U;
  goto ldv_52885;
  ldv_52884:
  fw_data = *p_fw_data;
  mci_write_memory_to_gpio(dev, address, fw_data, p_current_fw);
  address = address + 1U;
  p_current_fw = p_current_fw + 20UL;
  p_fw_data = p_fw_data + 1UL;
  transfer_size = transfer_size + 4U;
  ldv_52885: ;
  if ((unsigned long )transfer_size < (unsigned long )firmware->size) {
    goto ldv_52884;
  } else {
  }
  frame = 0;
  goto ldv_52891;
  ldv_52890:
  i = 0;
  goto ldv_52888;
  ldv_52887:
  *(p_buffer + (unsigned long )i) = (unsigned char )*(p_fw + (unsigned long )(frame * 1024 + i / 4));
  i = i + 1;
  *(p_buffer + (unsigned long )i) = (unsigned char )((*(p_fw + (unsigned long )(frame * 1024 + i / 4)) & 65280U) >> 8);
  i = i + 1;
  *(p_buffer + (unsigned long )i) = (unsigned char )((*(p_fw + (unsigned long )(frame * 1024 + i / 4)) & 16711680U) >> 16);
  i = i + 1;
  *(p_buffer + (unsigned long )i) = (unsigned char )(*(p_fw + (unsigned long )(frame * 1024 + i / 4)) >> 24);
  i = i + 1;
  ldv_52888: ;
  if ((int )_buffer_size > i) {
    goto ldv_52887;
  } else {
  }
  cx231xx_ep5_bulkout(dev, p_buffer, (int )_buffer_size);
  frame = frame + 1;
  ldv_52891: ;
  if (7536720 / (int )_buffer_size > frame) {
    goto ldv_52890;
  } else {
  }
  p_current_fw = p_fw;
  vfree((void const *)p_current_fw);
  p_current_fw = (u32 *)0U;
  uninitGPIO(dev);
  release_firmware(firmware);
  if (v4l_debug != 0U) {
    printk("\017Firmware upload successful.\n");
  } else {
  }
  tmp___8 = mc417_register_write(dev, 36948, 4294967295U);
  retval = tmp___8 | retval;
  if (retval < 0) {
    dev_err((struct device const *)dev->dev, "%s: Error with mc417_register_write\n",
            "cx231xx_load_firmware");
    return (retval);
  } else {
  }
  tmp___9 = mc417_register_write(dev, 36896, gpio_output);
  retval = tmp___9 | retval;
  tmp___10 = mc417_register_write(dev, 36876, value);
  retval = tmp___10 | retval;
  tmp___11 = mc417_register_read(dev, 36952, & value);
  retval = tmp___11 | retval;
  tmp___12 = mc417_register_write(dev, 36952, value & 4294967272U);
  retval = tmp___12 | retval;
  if (retval < 0) {
    dev_err((struct device const *)dev->dev, "%s: Error with mc417_register_write\n",
            "cx231xx_load_firmware");
    return (retval);
  } else {
  }
  return (0);
}
}
static void cx231xx_417_check_encoder(struct cx231xx *dev )
{
  u32 status ;
  u32 seq ;
  {
  status = 0U;
  seq = 0U;
  cx231xx_api_cmd(dev, 198U, 0U, 2U, & status, & seq);
  if (v4l_debug != 0U) {
    printk("\017%s() status = %d, seq = %d\n", "cx231xx_417_check_encoder", status,
           seq);
  } else {
  }
  return;
}
}
static void cx231xx_codec_settings(struct cx231xx *dev )
{
  {
  if (v4l_debug != 0U) {
    printk("\017%s()\n", "cx231xx_codec_settings");
  } else {
  }
  cx231xx_api_cmd(dev, 145U, 2U, 0U, dev->ts1.height, dev->ts1.width);
  dev->mpeg_ctrl_handler.width = (u16 )dev->ts1.width;
  dev->mpeg_ctrl_handler.height = (u16 )dev->ts1.height;
  cx2341x_handler_setup(& dev->mpeg_ctrl_handler);
  cx231xx_api_cmd(dev, 220U, 2U, 0U, 3, 1);
  cx231xx_api_cmd(dev, 220U, 2U, 0U, 4, 1);
  return;
}
}
static int cx231xx_initialize_codec(struct cx231xx *dev )
{
  int version ;
  int retval ;
  u32 i ;
  u32 val ;
  {
  val = 0U;
  if (v4l_debug != 0U) {
    printk("\017%s()\n", "cx231xx_initialize_codec");
  } else {
  }
  cx231xx_disable656(dev);
  retval = cx231xx_api_cmd(dev, 128U, 0U, 0U);
  if (retval < 0) {
    if (v4l_debug > 1U) {
      printk("\017%s: PING OK\n", "cx231xx_initialize_codec");
    } else {
    }
    retval = cx231xx_load_firmware(dev);
    if (retval < 0) {
      dev_err((struct device const *)dev->dev, "%s: f/w load failed\n", "cx231xx_initialize_codec");
      return (retval);
    } else {
    }
    retval = cx231xx_find_mailbox(dev);
    if (retval < 0) {
      dev_err((struct device const *)dev->dev, "%s: mailbox < 0, error\n", "cx231xx_initialize_codec");
      return (-1);
    } else {
    }
    dev->cx23417_mailbox = (u32 )retval;
    retval = cx231xx_api_cmd(dev, 128U, 0U, 0U);
    if (retval < 0) {
      dev_err((struct device const *)dev->dev, "OLD_ERROR: cx23417 firmware ping failed!\n");
      return (-1);
    } else {
    }
    retval = cx231xx_api_cmd(dev, 196U, 0U, 1U, & version);
    if (retval < 0) {
      dev_err((struct device const *)dev->dev, "OLD_ERROR: cx23417 firmware get encoder: version failed!\n");
      return (-1);
    } else {
    }
    if (v4l_debug != 0U) {
      printk("\017cx23417 firmware version is 0x%08x\n", version);
    } else {
    }
    msleep(200U);
  } else {
  }
  i = 0U;
  goto ldv_52912;
  ldv_52911:
  retval = mc417_register_read(dev, 8440, & val);
  if (v4l_debug > 2U) {
    printk("\017***before enable656() VIM Capture Lines = %d ***\n", val);
  } else {
  }
  if (retval < 0) {
    return (retval);
  } else {
  }
  i = i + 1U;
  ldv_52912: ;
  if (i == 0U) {
    goto ldv_52911;
  } else {
  }
  cx231xx_enable656(dev);
  cx231xx_api_cmd(dev, 130U, 3U, 0U, 1, 3, 4);
  cx231xx_codec_settings(dev);
  msleep(60U);
  retval = cx231xx_api_cmd(dev, 205U, 0U, 0U);
  if (retval < 0) {
    return (retval);
  } else {
  }
  msleep(60U);
  mc417_memory_write(dev, 2120U, 128U);
  retval = cx231xx_api_cmd(dev, 129U, 2U, 0U, 0, 0);
  if (retval < 0) {
    return (retval);
  } else {
  }
  msleep(10U);
  i = 0U;
  goto ldv_52915;
  ldv_52914:
  mc417_register_read(dev, 8440, & val);
  if (v4l_debug > 2U) {
    printk("\017***VIM Capture Lines =%d ***\n", val);
  } else {
  }
  i = i + 1U;
  ldv_52915: ;
  if (i == 0U) {
    goto ldv_52914;
  } else {
  }
  return (0);
}
}
static int bb_buf_setup(struct videobuf_queue *q , unsigned int *count , unsigned int *size )
{
  struct cx231xx_fh *fh ;
  {
  fh = (struct cx231xx_fh *)q->priv_data;
  (fh->dev)->ts1.ts_packet_size = mpeglinesize;
  (fh->dev)->ts1.ts_packet_count = mpeglines;
  *size = (fh->dev)->ts1.ts_packet_size * (fh->dev)->ts1.ts_packet_count;
  *count = mpegbufs;
  return (0);
}
}
static void free_buffer___0(struct videobuf_queue *vq , struct cx231xx_buffer *buf )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  unsigned long flags ;
  int tmp ;
  long tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  {
  fh = (struct cx231xx_fh *)vq->priv_data;
  dev = fh->dev;
  flags = 0UL;
  tmp = preempt_count();
  tmp___0 = ldv__builtin_expect(((unsigned long )tmp & 2096896UL) != 0UL, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-417.c"),
                         "i" (1252), "i" (12UL));
    ldv_52930: ;
    goto ldv_52930;
  } else {
  }
  tmp___1 = spinlock_check(& dev->video_mode.slock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  if ((unsigned int )dev->USE_ISO != 0U) {
    if ((unsigned long )dev->video_mode.isoc_ctl.buf == (unsigned long )buf) {
      dev->video_mode.isoc_ctl.buf = (struct cx231xx_buffer *)0;
    } else {
    }
  } else
  if ((unsigned long )dev->video_mode.bulk_ctl.buf == (unsigned long )buf) {
    dev->video_mode.bulk_ctl.buf = (struct cx231xx_buffer *)0;
  } else {
  }
  spin_unlock_irqrestore(& dev->video_mode.slock, flags);
  videobuf_waiton(vq, & buf->vb, 0, 0);
  videobuf_vmalloc_free(& buf->vb);
  buf->vb.state = 0;
  return;
}
}
static void buffer_copy(struct cx231xx *dev , char *data , int len , struct urb *urb ,
                        struct cx231xx_dmaqueue *dma_q )
{
  void *vbuf ;
  struct cx231xx_buffer *buf ;
  u32 tail_data ;
  char *p_data ;
  int tmp ;
  struct list_head const *__mptr ;
  {
  tail_data = 0U;
  if ((unsigned int )dma_q->mpeg_buffer_done == 0U) {
    tmp = list_empty((struct list_head const *)(& dma_q->active));
    if (tmp != 0) {
      return;
    } else {
    }
    __mptr = (struct list_head const *)dma_q->active.next;
    buf = (struct cx231xx_buffer *)__mptr + 0xffffffffffffffc8UL;
    dev->video_mode.isoc_ctl.buf = buf;
    dma_q->mpeg_buffer_done = 1U;
  } else {
  }
  buf = dev->video_mode.isoc_ctl.buf;
  vbuf = videobuf_to_vmalloc(& buf->vb);
  if (dma_q->mpeg_buffer_completed + (u32 )len < mpeglines * mpeglinesize) {
    if ((unsigned int )dma_q->add_ps_package_head == 0U) {
      memcpy(vbuf + (unsigned long )dma_q->mpeg_buffer_completed, (void const *)(& dma_q->ps_head),
               3UL);
      dma_q->mpeg_buffer_completed = dma_q->mpeg_buffer_completed + 3U;
      dma_q->add_ps_package_head = 1;
    } else {
    }
    memcpy(vbuf + (unsigned long )dma_q->mpeg_buffer_completed, (void const *)data,
             (size_t )len);
    dma_q->mpeg_buffer_completed = dma_q->mpeg_buffer_completed + (u32 )len;
  } else {
    dma_q->mpeg_buffer_done = 0U;
    tail_data = mpeglines * mpeglinesize - dma_q->mpeg_buffer_completed;
    memcpy(vbuf + (unsigned long )dma_q->mpeg_buffer_completed, (void const *)data,
             (size_t )tail_data);
    buf->vb.state = 4;
    buf->vb.field_count = buf->vb.field_count + 1U;
    v4l2_get_timestamp(& buf->vb.ts);
    list_del(& buf->vb.queue);
    __wake_up(& buf->vb.done, 3U, 1, (void *)0);
    dma_q->mpeg_buffer_completed = 0U;
    if ((u32 )len != tail_data) {
      p_data = data + (unsigned long )tail_data;
      dma_q->left_data_count = (u32 )len - tail_data;
      memcpy((void *)dma_q->p_left_data, (void const *)p_data, (size_t )((u32 )len - tail_data));
    } else {
    }
  }
  return;
}
}
static void buffer_filled___0(char *data , int len , struct urb *urb , struct cx231xx_dmaqueue *dma_q )
{
  void *vbuf ;
  struct cx231xx_buffer *buf ;
  int tmp ;
  struct list_head const *__mptr ;
  {
  tmp = list_empty((struct list_head const *)(& dma_q->active));
  if (tmp != 0) {
    return;
  } else {
  }
  __mptr = (struct list_head const *)dma_q->active.next;
  buf = (struct cx231xx_buffer *)__mptr + 0xffffffffffffffc8UL;
  vbuf = videobuf_to_vmalloc(& buf->vb);
  memcpy(vbuf, (void const *)data, (size_t )len);
  buf->vb.state = 4;
  buf->vb.field_count = buf->vb.field_count + 1U;
  v4l2_get_timestamp(& buf->vb.ts);
  list_del(& buf->vb.queue);
  __wake_up(& buf->vb.done, 3U, 1, (void *)0);
  return;
}
}
static int cx231xx_isoc_copy___0(struct cx231xx *dev , struct urb *urb )
{
  struct cx231xx_dmaqueue *dma_q ;
  unsigned char *p_buffer ;
  u32 buffer_size ;
  u32 i ;
  {
  dma_q = (struct cx231xx_dmaqueue *)urb->context;
  buffer_size = 0U;
  i = 0U;
  i = 0U;
  goto ldv_52966;
  ldv_52965: ;
  if (dma_q->left_data_count != 0U) {
    buffer_copy(dev, (char *)dma_q->p_left_data, (int )dma_q->left_data_count, urb,
                dma_q);
    dma_q->mpeg_buffer_completed = dma_q->left_data_count;
    dma_q->left_data_count = 0U;
  } else {
  }
  p_buffer = (unsigned char *)urb->transfer_buffer + (unsigned long )urb->iso_frame_desc[i].offset;
  buffer_size = urb->iso_frame_desc[i].actual_length;
  if (buffer_size != 0U) {
    buffer_copy(dev, (char *)p_buffer, (int )buffer_size, urb, dma_q);
  } else {
  }
  i = i + 1U;
  ldv_52966: ;
  if ((u32 )urb->number_of_packets > i) {
    goto ldv_52965;
  } else {
  }
  return (0);
}
}
static int cx231xx_bulk_copy___0(struct cx231xx *dev , struct urb *urb )
{
  struct cx231xx_dmaqueue *dma_q ;
  unsigned char *p_buffer ;
  unsigned char *buffer ;
  u32 buffer_size ;
  void *tmp ;
  {
  dma_q = (struct cx231xx_dmaqueue *)urb->context;
  buffer_size = 0U;
  p_buffer = (unsigned char *)urb->transfer_buffer;
  buffer_size = urb->actual_length;
  tmp = kmalloc((size_t )buffer_size, 32U);
  buffer = (unsigned char *)tmp;
  memcpy((void *)buffer, (void const *)(& dma_q->ps_head), 3UL);
  memcpy((void *)buffer + 3U, (void const *)p_buffer, (size_t )(buffer_size - 3U));
  memcpy((void *)(& dma_q->ps_head), (void const *)(p_buffer + ((unsigned long )buffer_size + 0xfffffffffffffffdUL)),
           3UL);
  p_buffer = buffer;
  buffer_filled___0((char *)p_buffer, (int )buffer_size, urb, dma_q);
  kfree((void const *)buffer);
  return (0);
}
}
static int bb_buf_prepare(struct videobuf_queue *q , struct videobuf_buffer *vb ,
                          enum v4l2_field field )
{
  struct cx231xx_fh *fh ;
  struct cx231xx_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  struct cx231xx *dev ;
  int rc ;
  int urb_init ;
  int size ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  fh = (struct cx231xx_fh *)q->priv_data;
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx231xx_buffer *)__mptr;
  dev = fh->dev;
  rc = 0;
  urb_init = 0;
  size = (int )((fh->dev)->ts1.ts_packet_size * (fh->dev)->ts1.ts_packet_count);
  if (buf->vb.baddr != 0UL && buf->vb.bsize < (size_t )size) {
    return (-22);
  } else {
  }
  buf->vb.width = (fh->dev)->ts1.ts_packet_size;
  buf->vb.height = (fh->dev)->ts1.ts_packet_count;
  buf->vb.size = (unsigned long )size;
  buf->vb.field = field;
  if ((unsigned int )buf->vb.state == 0U) {
    rc = videobuf_iolock(q, & buf->vb, (struct v4l2_framebuffer *)0);
    if (rc < 0) {
      goto fail;
    } else {
    }
  } else {
  }
  if ((unsigned int )dev->USE_ISO != 0U) {
    if (dev->video_mode.isoc_ctl.num_bufs == 0) {
      urb_init = 1;
    } else {
    }
  } else
  if (dev->video_mode.bulk_ctl.num_bufs == 0) {
    urb_init = 1;
  } else {
  }
  descriptor.modname = "cx231xx";
  descriptor.function = "bb_buf_prepare";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-417.c";
  descriptor.format = "urb_init=%d dev->video_mode.max_pkt_size=%d\n";
  descriptor.lineno = 1429U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "urb_init=%d dev->video_mode.max_pkt_size=%d\n",
                      urb_init, dev->video_mode.max_pkt_size);
  } else {
  }
  dev->mode_tv = 1U;
  if (urb_init != 0) {
    rc = cx231xx_set_mode(dev, 2);
    rc = cx231xx_unmute_audio(dev);
    if ((unsigned int )dev->USE_ISO != 0U) {
      cx231xx_set_alt_setting(dev, 1, 4);
      rc = cx231xx_init_isoc(dev, (int )mpeglines, (int )mpegbufs, dev->ts1_mode.max_pkt_size,
                             & cx231xx_isoc_copy___0);
    } else {
      cx231xx_set_alt_setting(dev, 1, 0);
      rc = cx231xx_init_bulk(dev, (int )mpeglines, (int )mpegbufs, dev->ts1_mode.max_pkt_size,
                             & cx231xx_bulk_copy___0);
    }
    if (rc < 0) {
      goto fail;
    } else {
    }
  } else {
  }
  buf->vb.state = 1;
  return (0);
  fail:
  free_buffer___0(q, buf);
  return (rc);
}
}
static void bb_buf_queue(struct videobuf_queue *q , struct videobuf_buffer *vb )
{
  struct cx231xx_fh *fh ;
  struct cx231xx_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  struct cx231xx *dev ;
  struct cx231xx_dmaqueue *vidq ;
  {
  fh = (struct cx231xx_fh *)q->priv_data;
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx231xx_buffer *)__mptr;
  dev = fh->dev;
  vidq = & dev->video_mode.vidq;
  buf->vb.state = 2;
  list_add_tail(& buf->vb.queue, & vidq->active);
  return;
}
}
static void bb_buf_release(struct videobuf_queue *q , struct videobuf_buffer *vb )
{
  struct cx231xx_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  {
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx231xx_buffer *)__mptr;
  free_buffer___0(q, buf);
  return;
}
}
static struct videobuf_queue_ops cx231xx_qops = {& bb_buf_setup, & bb_buf_prepare, & bb_buf_queue, & bb_buf_release};
static int vidioc_g_std___0(struct file *file , void *fh0 , v4l2_std_id *norm )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  {
  fh = (struct cx231xx_fh *)file->private_data;
  dev = fh->dev;
  *norm = dev->encodernorm.id;
  return (0);
}
}
static int vidioc_s_std___0(struct file *file , void *priv , v4l2_std_id id )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  unsigned int i ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct cx231xx_fh *)file->private_data;
  dev = fh->dev;
  i = 0U;
  goto ldv_53029;
  ldv_53028: ;
  if ((cx231xx_tvnorms[i].id & id) != 0ULL) {
    goto ldv_53027;
  } else {
  }
  i = i + 1U;
  ldv_53029: ;
  if (i <= 10U) {
    goto ldv_53028;
  } else {
  }
  ldv_53027: ;
  if (i == 11U) {
    return (-22);
  } else {
  }
  dev->encodernorm = cx231xx_tvnorms[i];
  if ((dev->encodernorm.id & 45056ULL) != 0ULL) {
    if (v4l_debug > 2U) {
      printk("\017encodernorm set to NTSC\n");
    } else {
    }
    dev->norm = 45056ULL;
    dev->ts1.height = 480;
    cx2341x_handler_set_50hz(& dev->mpeg_ctrl_handler, 0);
  } else {
    if (v4l_debug > 2U) {
      printk("\017encodernorm set to PAL\n");
    } else {
    }
    dev->norm = 1ULL;
    dev->ts1.height = 576;
    cx2341x_handler_set_50hz(& dev->mpeg_ctrl_handler, 1);
  }
  __err = 0L;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_53040;
  ldv_53039: ;
  if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->s_std != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                            v4l2_std_id ))0)) {
    tmp = (*(((__sd->ops)->video)->s_std))(__sd, dev->norm);
    __err = (long )tmp;
  } else {
  }
  if (__err != 0L && __err != -515L) {
    goto ldv_53038;
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_53040: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_53039;
  } else {
  }
  ldv_53038:
  cx231xx_do_mode_ctrl_overrides(dev);
  if (v4l_debug > 2U) {
    printk("\017exit vidioc_s_std() i=0x%x\n", i);
  } else {
  }
  return (0);
}
}
static int vidioc_s_ctrl(struct file *file , void *priv , struct v4l2_control *ctl )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct cx231xx_fh *)file->private_data;
  dev = fh->dev;
  if (v4l_debug > 2U) {
    printk("\017enter vidioc_s_ctrl()\n");
  } else {
  }
  __err = 0L;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_53058;
  ldv_53057: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->s_ctrl != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                          struct v4l2_control * ))0)) {
    tmp = (*(((__sd->ops)->core)->s_ctrl))(__sd, ctl);
    __err = (long )tmp;
  } else {
  }
  if (__err != 0L && __err != -515L) {
    goto ldv_53056;
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_53058: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_53057;
  } else {
  }
  ldv_53056: ;
  if (v4l_debug > 2U) {
    printk("\017exit vidioc_s_ctrl()\n");
  } else {
  }
  return (0);
}
}
static int vidioc_enum_fmt_vid_cap___0(struct file *file , void *priv , struct v4l2_fmtdesc *f )
{
  {
  if (f->index != 0U) {
    return (-22);
  } else {
  }
  strlcpy((char *)(& f->description), "MPEG", 32UL);
  f->pixelformat = 1195724877U;
  return (0);
}
}
static int vidioc_g_fmt_vid_cap___0(struct file *file , void *priv , struct v4l2_format *f )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  {
  fh = (struct cx231xx_fh *)file->private_data;
  dev = fh->dev;
  if (v4l_debug > 2U) {
    printk("\017enter vidioc_g_fmt_vid_cap()\n");
  } else {
  }
  f->fmt.pix.pixelformat = 1195724877U;
  f->fmt.pix.bytesperline = 0U;
  f->fmt.pix.sizeimage = mpeglines * mpeglinesize;
  f->fmt.pix.colorspace = 1U;
  f->fmt.pix.width = (__u32 )dev->ts1.width;
  f->fmt.pix.height = (__u32 )dev->ts1.height;
  f->fmt.pix.field = 4U;
  if (v4l_debug != 0U) {
    printk("\017VIDIOC_G_FMT: w: %d, h: %d\n", dev->ts1.width, dev->ts1.height);
  } else {
  }
  if (v4l_debug > 2U) {
    printk("\017exit vidioc_g_fmt_vid_cap()\n");
  } else {
  }
  return (0);
}
}
static int vidioc_try_fmt_vid_cap___0(struct file *file , void *priv , struct v4l2_format *f )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  {
  fh = (struct cx231xx_fh *)file->private_data;
  dev = fh->dev;
  if (v4l_debug > 2U) {
    printk("\017enter vidioc_try_fmt_vid_cap()\n");
  } else {
  }
  f->fmt.pix.pixelformat = 1195724877U;
  f->fmt.pix.bytesperline = 0U;
  f->fmt.pix.sizeimage = mpeglines * mpeglinesize;
  f->fmt.pix.field = 4U;
  f->fmt.pix.colorspace = 1U;
  if (v4l_debug != 0U) {
    printk("\017VIDIOC_TRY_FMT: w: %d, h: %d\n", dev->ts1.width, dev->ts1.height);
  } else {
  }
  if (v4l_debug > 2U) {
    printk("\017exit vidioc_try_fmt_vid_cap()\n");
  } else {
  }
  return (0);
}
}
static int vidioc_reqbufs___0(struct file *file , void *priv , struct v4l2_requestbuffers *p )
{
  struct cx231xx_fh *fh ;
  int tmp ;
  {
  fh = (struct cx231xx_fh *)file->private_data;
  tmp = videobuf_reqbufs(& fh->vidq, p);
  return (tmp);
}
}
static int vidioc_querybuf___0(struct file *file , void *priv , struct v4l2_buffer *p )
{
  struct cx231xx_fh *fh ;
  int tmp ;
  {
  fh = (struct cx231xx_fh *)file->private_data;
  tmp = videobuf_querybuf(& fh->vidq, p);
  return (tmp);
}
}
static int vidioc_qbuf___0(struct file *file , void *priv , struct v4l2_buffer *p )
{
  struct cx231xx_fh *fh ;
  int tmp ;
  {
  fh = (struct cx231xx_fh *)file->private_data;
  tmp = videobuf_qbuf(& fh->vidq, p);
  return (tmp);
}
}
static int vidioc_dqbuf___0(struct file *file , void *priv , struct v4l2_buffer *b )
{
  struct cx231xx_fh *fh ;
  int tmp ;
  {
  fh = (struct cx231xx_fh *)priv;
  tmp = videobuf_dqbuf(& fh->vidq, b, (int )file->f_flags & 2048);
  return (tmp);
}
}
static int vidioc_streamon___0(struct file *file , void *priv , enum v4l2_buf_type i )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int tmp ;
  {
  fh = (struct cx231xx_fh *)file->private_data;
  dev = fh->dev;
  if (v4l_debug > 2U) {
    printk("\017enter vidioc_streamon()\n");
  } else {
  }
  cx231xx_set_alt_setting(dev, 1, 0);
  cx231xx_set_mode(dev, 2);
  if ((unsigned int )dev->USE_ISO != 0U) {
    cx231xx_init_isoc(dev, 40, 8, dev->video_mode.max_pkt_size, & cx231xx_isoc_copy___0);
  } else {
    cx231xx_init_bulk(dev, 320, 5, dev->ts1_mode.max_pkt_size, & cx231xx_bulk_copy___0);
  }
  if (v4l_debug > 2U) {
    printk("\017exit vidioc_streamon()\n");
  } else {
  }
  tmp = videobuf_streamon(& fh->vidq);
  return (tmp);
}
}
static int vidioc_streamoff___0(struct file *file , void *priv , enum v4l2_buf_type i )
{
  struct cx231xx_fh *fh ;
  int tmp ;
  {
  fh = (struct cx231xx_fh *)file->private_data;
  tmp = videobuf_streamoff(& fh->vidq);
  return (tmp);
}
}
static int vidioc_log_status(struct file *file , void *priv )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  int tmp___0 ;
  {
  fh = (struct cx231xx_fh *)priv;
  dev = fh->dev;
  __err = 0L;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_53131;
  ldv_53130: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->log_status != (unsigned long )((int (* )(struct v4l2_subdev * ))0)) {
    tmp = (*(((__sd->ops)->core)->log_status))(__sd);
    __err = (long )tmp;
  } else {
  }
  if (__err != 0L && __err != -515L) {
    goto ldv_53129;
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_53131: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_53130;
  } else {
  }
  ldv_53129:
  tmp___0 = v4l2_ctrl_log_status(file, priv);
  return (tmp___0);
}
}
static int mpeg_open(struct file *file )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct cx231xx *dev ;
  void *tmp___0 ;
  struct cx231xx_fh *fh ;
  int tmp___1 ;
  void *tmp___2 ;
  {
  tmp = video_devdata(file);
  vdev = tmp;
  tmp___0 = video_drvdata(file);
  dev = (struct cx231xx *)tmp___0;
  if (v4l_debug > 1U) {
    printk("\017%s()\n", "mpeg_open");
  } else {
  }
  tmp___1 = mutex_lock_interruptible_nested(& dev->lock, 0U);
  if (tmp___1 != 0) {
    return (-512);
  } else {
  }
  tmp___2 = kzalloc(2024UL, 208U);
  fh = (struct cx231xx_fh *)tmp___2;
  if ((unsigned long )fh == (unsigned long )((struct cx231xx_fh *)0)) {
    mutex_unlock(& dev->lock);
    return (-12);
  } else {
  }
  file->private_data = (void *)fh;
  v4l2_fh_init(& fh->fh, vdev);
  fh->dev = dev;
  videobuf_queue_vmalloc_init(& fh->vidq, (struct videobuf_queue_ops const *)(& cx231xx_qops),
                              (struct device *)0, & dev->video_mode.slock, 1, 4, 264U,
                              (void *)fh, & dev->lock);
  cx231xx_set_alt_setting(dev, 5, 1);
  cx231xx_set_gpio_value(dev, 2, 0);
  cx231xx_initialize_codec(dev);
  mutex_unlock(& dev->lock);
  v4l2_fh_add(& fh->fh);
  cx231xx_start_TS1(dev);
  return (0);
}
}
static int mpeg_release(struct file *file )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int tmp ;
  int tmp___0 ;
  {
  fh = (struct cx231xx_fh *)file->private_data;
  dev = fh->dev;
  if (v4l_debug > 2U) {
    printk("\017mpeg_release()! dev=0x%p\n", dev);
  } else {
  }
  mutex_lock_nested(& dev->lock, 0U);
  cx231xx_stop_TS1(dev);
  if ((unsigned int )dev->USE_ISO != 0U) {
    cx231xx_uninit_isoc(dev);
  } else {
    cx231xx_uninit_bulk(dev);
  }
  cx231xx_set_mode(dev, 0);
  cx231xx_api_cmd(fh->dev, 130U, 3U, 0U, 1, 0, 0);
  tmp___0 = atomic_cmpxchg(& fh->v4l_reading, 1, 0);
  if (tmp___0 == 1) {
    tmp = atomic_sub_return(1, & dev->v4l_reader_count);
    if (tmp == 0) {
      msleep(500U);
      cx231xx_417_check_encoder(dev);
    } else {
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)fh + 1360UL) != 0U) {
    videobuf_streamoff(& fh->vidq);
  } else {
  }
  if ((unsigned int )*((unsigned char *)fh + 1360UL) != 0U) {
    videobuf_read_stop(& fh->vidq);
  } else {
  }
  videobuf_mmap_free(& fh->vidq);
  v4l2_fh_del(& fh->fh);
  v4l2_fh_exit(& fh->fh);
  kfree((void const *)fh);
  mutex_unlock(& dev->lock);
  return (0);
}
}
static ssize_t mpeg_read(struct file *file , char *data , size_t count , loff_t *ppos )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  ssize_t tmp___2 ;
  {
  fh = (struct cx231xx_fh *)file->private_data;
  dev = fh->dev;
  tmp___1 = atomic_cmpxchg(& fh->v4l_reading, 0, 1);
  if (tmp___1 == 0) {
    tmp___0 = atomic_add_return(1, & dev->v4l_reader_count);
    if (tmp___0 == 1) {
      tmp = cx231xx_initialize_codec(dev);
      if (tmp < 0) {
        return (-22L);
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___2 = videobuf_read_stream(& fh->vidq, data, count, ppos, 0, (int )file->f_flags & 2048);
  return (tmp___2);
}
}
static unsigned int mpeg_poll(struct file *file , struct poll_table_struct *wait )
{
  unsigned long req_events ;
  unsigned long tmp ;
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  unsigned int res ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  {
  tmp = poll_requested_events((poll_table const *)wait);
  req_events = tmp;
  fh = (struct cx231xx_fh *)file->private_data;
  dev = fh->dev;
  res = 0U;
  tmp___0 = v4l2_event_pending(& fh->fh);
  if (tmp___0 != 0) {
    res = res | 2U;
  } else {
    poll_wait(file, & fh->fh.wait, wait);
  }
  if ((req_events & 65UL) == 0UL) {
    return (res);
  } else {
  }
  mutex_lock_nested(& dev->lock, 0U);
  tmp___1 = videobuf_poll_stream(file, & fh->vidq, wait);
  res = tmp___1 | res;
  mutex_unlock(& dev->lock);
  return (res);
}
}
static int mpeg_mmap(struct file *file , struct vm_area_struct *vma )
{
  struct cx231xx_fh *fh ;
  int tmp ;
  {
  fh = (struct cx231xx_fh *)file->private_data;
  if (v4l_debug > 1U) {
    printk("\017%s()\n", "mpeg_mmap");
  } else {
  }
  tmp = videobuf_mmap_mapper(& fh->vidq, vma);
  return (tmp);
}
}
static struct v4l2_file_operations mpeg_fops =
     {& __this_module, & mpeg_read, 0, & mpeg_poll, & video_ioctl2, 0, 0, & mpeg_mmap,
    & mpeg_open, & mpeg_release};
static struct v4l2_ioctl_ops const mpeg_ioctl_ops =
     {& cx231xx_querycap, & vidioc_enum_fmt_vid_cap___0, 0, 0, 0, 0, 0, & vidioc_g_fmt_vid_cap___0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_try_fmt_vid_cap___0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, & vidioc_try_fmt_vid_cap___0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_reqbufs___0,
    & vidioc_querybuf___0, & vidioc_qbuf___0, 0, & vidioc_dqbuf___0, 0, 0, 0, 0, 0,
    & vidioc_streamon___0, & vidioc_streamoff___0, & vidioc_g_std___0, & vidioc_s_std___0,
    0, & cx231xx_enum_input, & cx231xx_g_input, & cx231xx_s_input, 0, 0, 0, 0, 0,
    0, & vidioc_s_ctrl, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, & cx231xx_g_tuner, & cx231xx_s_tuner, & cx231xx_g_frequency,
    & cx231xx_s_frequency, 0, 0, & vidioc_log_status, 0, & cx231xx_g_register, & cx231xx_s_register,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & v4l2_ctrl_subscribe_event, & v4l2_event_unsubscribe,
    0};
static struct video_device cx231xx_mpeg_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {{0U, 0U}}}, (struct v4l2_file_operations const *)(& mpeg_fops),
    {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, {{{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}},
                                           {{0, 0}, 0UL, 0, 0UL, 0U, 0, 0, 0, {(char)0,
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
                                            {0, {0, 0}, 0, 0, 0UL}}, 0, 0}, (unsigned char)0,
            (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0},
     0, 0, {{0}, {{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 0, {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}},
     0, 0, 0, 0, {{0}, (unsigned char)0, (unsigned char)0, (_Bool)0, (_Bool)0, (_Bool)0,
                  (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, {{{{{0}}, 0U, 0U, 0, {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
                  {0, 0}, {0U, {{{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0,
                                                                                 0}}},
                  0, (_Bool)0, (_Bool)0, {{0, 0}, 0UL, 0, 0UL, 0U, 0, 0, 0, {(char)0,
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
                                          {0, {0, 0}, 0, 0, 0UL}}, 0UL, {{0L}, {0,
                                                                                0},
                                                                         0, {0, {0,
                                                                                 0},
                                                                             0, 0,
                                                                             0UL}},
                  {{{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, 0, {0},
                  {0}, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                  (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                  (unsigned char)0, (unsigned char)0, (unsigned char)0, 0, 0, 0, 0,
                  0UL, 0UL, 0UL, 0UL, 0, 0, 0}, 0, 0, 0, 0, 0ULL, 0UL, 0, {0, 0},
     0, 0, {0, 0}, 0, 0, 0U, 0U, {{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0,
                                                                                  0},
     {0, {0, 0}, {{0}}}, 0, 0, 0, 0, (_Bool)0, (_Bool)0}, 0, 0, 0, 0, 0, 0, {'c',
                                                                             'x',
                                                                             '2',
                                                                             '3',
                                                                             '1',
                                                                             'x',
                                                                             'x',
                                                                             '\000'},
    0, 0, -1, (unsigned short)0, 0UL, 0, {{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
    {0, 0}, 0, 16777215ULL, 0, & mpeg_ioctl_ops, {0UL, 0UL, 0UL}, {0UL, 0UL, 0UL},
    0};
void cx231xx_417_unregister(struct cx231xx *dev )
{
  int tmp ;
  {
  if (v4l_debug != 0U) {
    printk("\017%s()\n", "cx231xx_417_unregister");
  } else {
  }
  if (v4l_debug > 2U) {
    printk("\017%s()\n", "cx231xx_417_unregister");
  } else {
  }
  tmp = video_is_registered(& dev->v4l_device);
  if (tmp != 0) {
    video_unregister_device(& dev->v4l_device);
    v4l2_ctrl_handler_free(& dev->mpeg_ctrl_handler.hdl);
  } else {
  }
  return;
}
}
static int cx231xx_s_video_encoding(struct cx2341x_handler *cxhdl , u32 val )
{
  struct cx231xx *dev ;
  struct cx2341x_handler const *__mptr ;
  int is_mpeg1 ;
  struct v4l2_subdev_format format___0 ;
  {
  __mptr = (struct cx2341x_handler const *)cxhdl;
  dev = (struct cx231xx *)__mptr + 0xfffffffffffffbe0UL;
  is_mpeg1 = val == 0U;
  format___0.which = 1U;
  format___0.pad = 0U;
  format___0.format.width = 0U;
  format___0.format.height = 0U;
  format___0.format.code = 0U;
  format___0.format.field = 0U;
  format___0.format.colorspace = 0U;
  format___0.format.ycbcr_enc = (unsigned short)0;
  format___0.format.quantization = (unsigned short)0;
  format___0.format.xfer_func = (unsigned short)0;
  format___0.format.reserved[0] = (unsigned short)0;
  format___0.format.reserved[1] = (unsigned short)0;
  format___0.format.reserved[2] = (unsigned short)0;
  format___0.format.reserved[3] = (unsigned short)0;
  format___0.format.reserved[4] = (unsigned short)0;
  format___0.format.reserved[5] = (unsigned short)0;
  format___0.format.reserved[6] = (unsigned short)0;
  format___0.format.reserved[7] = (unsigned short)0;
  format___0.format.reserved[8] = (unsigned short)0;
  format___0.format.reserved[9] = (unsigned short)0;
  format___0.format.reserved[10] = (unsigned short)0;
  format___0.reserved[0] = 0U;
  format___0.reserved[1] = 0U;
  format___0.reserved[2] = 0U;
  format___0.reserved[3] = 0U;
  format___0.reserved[4] = 0U;
  format___0.reserved[5] = 0U;
  format___0.reserved[6] = 0U;
  format___0.reserved[7] = 0U;
  format___0.format.width = (__u32 )((int )cxhdl->width / (is_mpeg1 != 0 ? 2 : 1));
  format___0.format.height = (__u32 )cxhdl->height;
  format___0.format.code = 1U;
  if ((unsigned long )dev->sd_cx25840 != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((dev->sd_cx25840)->ops)->pad != (unsigned long )((struct v4l2_subdev_pad_ops const * )0) && (unsigned long )(((dev->sd_cx25840)->ops)->pad)->set_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                    struct v4l2_subdev_pad_config * ,
                                                                                                                                                                                                                                    struct v4l2_subdev_format * ))0)) {
      (*((((dev->sd_cx25840)->ops)->pad)->set_fmt))(dev->sd_cx25840, (struct v4l2_subdev_pad_config *)0,
                                                    & format___0);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int cx231xx_s_audio_sampling_freq(struct cx2341x_handler *cxhdl , u32 idx )
{
  u32 freqs[3U] ;
  struct cx231xx *dev ;
  struct cx2341x_handler const *__mptr ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  struct list_head const *__mptr___1 ;
  {
  freqs[0] = 44100U;
  freqs[1] = 48000U;
  freqs[2] = 32000U;
  __mptr = (struct cx2341x_handler const *)cxhdl;
  dev = (struct cx231xx *)__mptr + 0xfffffffffffffbe0UL;
  if (idx <= 2U) {
    __err = 0L;
    __mptr___0 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
    goto ldv_53202;
    ldv_53201: ;
    if ((unsigned long )(__sd->ops)->audio != (unsigned long )((struct v4l2_subdev_audio_ops const * )0) && (unsigned long )((__sd->ops)->audio)->s_clock_freq != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                     u32 ))0)) {
      tmp = (*(((__sd->ops)->audio)->s_clock_freq))(__sd, freqs[idx]);
      __err = (long )tmp;
    } else {
    }
    if (__err != 0L && __err != -515L) {
      goto ldv_53200;
    } else {
    }
    __mptr___1 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff88UL;
    ldv_53202: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_53201;
    } else {
    }
    ldv_53200: ;
  } else {
  }
  return (0);
}
}
static struct cx2341x_handler_ops cx231xx_ops = {& cx231xx_s_audio_sampling_freq, 0, & cx231xx_s_video_encoding, 0};
static void cx231xx_video_dev_init(struct cx231xx *dev , struct usb_device *usbdev ,
                                   struct video_device *vfd , struct video_device const *template ,
                                   char const *type )
{
  {
  if (v4l_debug != 0U) {
    printk("\017%s()\n", "cx231xx_video_dev_init");
  } else {
  }
  *vfd = *template;
  snprintf((char *)(& vfd->name), 32UL, "%s %s (%s)", (char *)(& dev->name), type,
           cx231xx_boards[dev->model].name);
  vfd->v4l2_dev = & dev->v4l2_dev;
  vfd->lock = & dev->lock;
  vfd->release = & video_device_release_empty;
  vfd->ctrl_handler = & dev->mpeg_ctrl_handler.hdl;
  video_set_drvdata(vfd, (void *)dev);
  if (dev->tuner_type == 4) {
    v4l2_disable_ioctl(vfd, 3224131128U);
    v4l2_disable_ioctl(vfd, 1076647481U);
    v4l2_disable_ioctl(vfd, 3226752541U);
    v4l2_disable_ioctl(vfd, 1079268894U);
  } else {
  }
  return;
}
}
int cx231xx_417_register(struct cx231xx *dev )
{
  int err ;
  struct cx231xx_tsport *tsport ;
  {
  err = -19;
  tsport = & dev->ts1;
  if (v4l_debug != 0U) {
    printk("\017%s()\n", "cx231xx_417_register");
  } else {
  }
  dev->encodernorm = cx231xx_tvnorms[0];
  if ((dev->encodernorm.id & 63744ULL) != 0ULL) {
    tsport->height = 480;
  } else {
    tsport->height = 576;
  }
  tsport->width = 720;
  err = cx2341x_handler_init(& dev->mpeg_ctrl_handler, 50U);
  if (err != 0) {
    if (v4l_debug > 2U) {
      printk("\017%s: can\'t init cx2341x controls\n", (char *)(& dev->name));
    } else {
    }
    return (err);
  } else {
  }
  dev->mpeg_ctrl_handler.func = & cx231xx_mbox_func;
  dev->mpeg_ctrl_handler.priv = (void *)dev;
  dev->mpeg_ctrl_handler.ops = (struct cx2341x_handler_ops const *)(& cx231xx_ops);
  if ((unsigned long )dev->sd_cx25840 != (unsigned long )((struct v4l2_subdev *)0)) {
    v4l2_ctrl_add_handler(& dev->mpeg_ctrl_handler.hdl, (dev->sd_cx25840)->ctrl_handler,
                          (bool (*)(struct v4l2_ctrl const * ))0);
  } else {
  }
  if (dev->mpeg_ctrl_handler.hdl.error != 0) {
    err = dev->mpeg_ctrl_handler.hdl.error;
    if (v4l_debug > 2U) {
      printk("\017%s: can\'t add cx25840 controls\n", (char *)(& dev->name));
    } else {
    }
    v4l2_ctrl_handler_free(& dev->mpeg_ctrl_handler.hdl);
    return (err);
  } else {
  }
  dev->norm = 45056ULL;
  dev->mpeg_ctrl_handler.port = 2;
  cx2341x_handler_set_50hz(& dev->mpeg_ctrl_handler, 0);
  cx231xx_video_dev_init(dev, dev->udev, & dev->v4l_device, (struct video_device const *)(& cx231xx_mpeg_template),
                         "mpeg");
  err = video_register_device(& dev->v4l_device, 0, -1);
  if (err < 0) {
    if (v4l_debug > 2U) {
      printk("\017%s: can\'t register mpeg device\n", (char *)(& dev->name));
    } else {
    }
    v4l2_ctrl_handler_free(& dev->mpeg_ctrl_handler.hdl);
    return (err);
  } else {
  }
  if (v4l_debug > 2U) {
    printk("\017%s: registered device video%d [mpeg]\n", (char *)(& dev->name), (int )dev->v4l_device.num);
  } else {
  }
  return (0);
}
}
int ldv_retval_0 ;
int ldv_retval_7 ;
void ldv_initialize_v4l2_ioctl_ops_4(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___3 ;
  {
  tmp = ldv_init_zalloc(32UL);
  mpeg_ioctl_ops_group0 = (struct v4l2_event_subscription const *)tmp;
  tmp___0 = ldv_init_zalloc(208UL);
  mpeg_ioctl_ops_group4 = (struct v4l2_format *)tmp___0;
  tmp___1 = ldv_init_zalloc(176UL);
  mpeg_ioctl_ops_group2 = (struct v4l2_fh *)tmp___1;
  mpeg_ioctl_ops_group1 = ldv_malloc(sizeof(struct file));
  tmp___3 = ldv_init_zalloc(88UL);
  mpeg_ioctl_ops_group3 = (struct v4l2_buffer *)tmp___3;
  return;
}
}
void ldv_initialize_v4l2_file_operations_5(void)
{
  {
  mpeg_fops_group0 = ldv_malloc(sizeof(struct file));
  return;
}
}
void ldv_initialize_cx2341x_handler_ops_3(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(520UL);
  cx231xx_ops_group0 = (struct cx2341x_handler *)tmp;
  return;
}
}
void ldv_videobuf_queue_ops_6(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(608UL);
  cx231xx_qops_group1 = (struct videobuf_queue *)tmp;
  tmp___0 = ldv_init_zalloc(240UL);
  cx231xx_qops_group2 = (struct videobuf_buffer *)tmp___0;
  return;
}
}
void ldv_main_exported_6(void)
{
  enum v4l2_field ldvarg2 ;
  unsigned int *ldvarg0 ;
  void *tmp ;
  unsigned int *ldvarg1 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(4UL);
  ldvarg0 = (unsigned int *)tmp;
  tmp___0 = ldv_init_zalloc(4UL);
  ldvarg1 = (unsigned int *)tmp___0;
  ldv_memset((void *)(& ldvarg2), 0, 4UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_6 == 1) {
    ldv_retval_0 = bb_buf_prepare(cx231xx_qops_group1, cx231xx_qops_group2, ldvarg2);
    if (ldv_retval_0 == 0) {
      ldv_state_variable_6 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_53242;
  case 1: ;
  if (ldv_state_variable_6 == 2) {
    bb_buf_release(cx231xx_qops_group1, cx231xx_qops_group2);
    ldv_state_variable_6 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_53242;
  case 2: ;
  if (ldv_state_variable_6 == 1) {
    bb_buf_setup(cx231xx_qops_group1, ldvarg1, ldvarg0);
    ldv_state_variable_6 = 1;
  } else {
  }
  if (ldv_state_variable_6 == 2) {
    bb_buf_setup(cx231xx_qops_group1, ldvarg1, ldvarg0);
    ldv_state_variable_6 = 2;
  } else {
  }
  goto ldv_53242;
  case 3: ;
  if (ldv_state_variable_6 == 1) {
    bb_buf_queue(cx231xx_qops_group1, cx231xx_qops_group2);
    ldv_state_variable_6 = 1;
  } else {
  }
  if (ldv_state_variable_6 == 2) {
    bb_buf_queue(cx231xx_qops_group1, cx231xx_qops_group2);
    ldv_state_variable_6 = 2;
  } else {
  }
  goto ldv_53242;
  default:
  ldv_stop();
  }
  ldv_53242: ;
  return;
}
}
void ldv_main_exported_4(void)
{
  struct v4l2_input *ldvarg82 ;
  void *tmp ;
  enum v4l2_buf_type ldvarg76 ;
  void *ldvarg92 ;
  void *tmp___0 ;
  v4l2_std_id ldvarg108 ;
  struct v4l2_capability *ldvarg90 ;
  void *tmp___1 ;
  struct v4l2_dbg_register *ldvarg78 ;
  void *tmp___2 ;
  struct v4l2_frequency *ldvarg88 ;
  void *tmp___3 ;
  void *ldvarg116 ;
  void *tmp___4 ;
  void *ldvarg81 ;
  void *tmp___5 ;
  struct v4l2_fmtdesc *ldvarg99 ;
  void *tmp___6 ;
  void *ldvarg96 ;
  void *tmp___7 ;
  struct v4l2_control *ldvarg113 ;
  void *tmp___8 ;
  void *ldvarg112 ;
  void *tmp___9 ;
  void *ldvarg102 ;
  void *tmp___10 ;
  void *ldvarg79 ;
  void *tmp___11 ;
  struct v4l2_tuner *ldvarg111 ;
  void *tmp___12 ;
  struct v4l2_dbg_register *ldvarg86 ;
  void *tmp___13 ;
  void *ldvarg87 ;
  void *tmp___14 ;
  unsigned int ldvarg80 ;
  void *ldvarg104 ;
  void *tmp___15 ;
  void *ldvarg107 ;
  void *tmp___16 ;
  void *ldvarg89 ;
  void *tmp___17 ;
  void *ldvarg110 ;
  void *tmp___18 ;
  unsigned int *ldvarg93 ;
  void *tmp___19 ;
  void *ldvarg105 ;
  void *tmp___20 ;
  void *ldvarg85 ;
  void *tmp___21 ;
  struct v4l2_frequency *ldvarg95 ;
  void *tmp___22 ;
  void *ldvarg83 ;
  void *tmp___23 ;
  void *ldvarg103 ;
  void *tmp___24 ;
  void *ldvarg114 ;
  void *tmp___25 ;
  void *ldvarg97 ;
  void *tmp___26 ;
  void *ldvarg98 ;
  void *tmp___27 ;
  void *ldvarg109 ;
  void *tmp___28 ;
  struct v4l2_requestbuffers *ldvarg115 ;
  void *tmp___29 ;
  void *ldvarg100 ;
  void *tmp___30 ;
  void *ldvarg91 ;
  void *tmp___31 ;
  void *ldvarg94 ;
  void *tmp___32 ;
  enum v4l2_buf_type ldvarg101 ;
  struct v4l2_tuner *ldvarg106 ;
  void *tmp___33 ;
  v4l2_std_id *ldvarg84 ;
  void *tmp___34 ;
  void *ldvarg77 ;
  void *tmp___35 ;
  int tmp___36 ;
  {
  tmp = ldv_init_zalloc(80UL);
  ldvarg82 = (struct v4l2_input *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg92 = tmp___0;
  tmp___1 = ldv_init_zalloc(104UL);
  ldvarg90 = (struct v4l2_capability *)tmp___1;
  tmp___2 = ldv_init_zalloc(56UL);
  ldvarg78 = (struct v4l2_dbg_register *)tmp___2;
  tmp___3 = ldv_init_zalloc(44UL);
  ldvarg88 = (struct v4l2_frequency *)tmp___3;
  tmp___4 = ldv_init_zalloc(1UL);
  ldvarg116 = tmp___4;
  tmp___5 = ldv_init_zalloc(1UL);
  ldvarg81 = tmp___5;
  tmp___6 = ldv_init_zalloc(64UL);
  ldvarg99 = (struct v4l2_fmtdesc *)tmp___6;
  tmp___7 = ldv_init_zalloc(1UL);
  ldvarg96 = tmp___7;
  tmp___8 = ldv_init_zalloc(8UL);
  ldvarg113 = (struct v4l2_control *)tmp___8;
  tmp___9 = ldv_init_zalloc(1UL);
  ldvarg112 = tmp___9;
  tmp___10 = ldv_init_zalloc(1UL);
  ldvarg102 = tmp___10;
  tmp___11 = ldv_init_zalloc(1UL);
  ldvarg79 = tmp___11;
  tmp___12 = ldv_init_zalloc(84UL);
  ldvarg111 = (struct v4l2_tuner *)tmp___12;
  tmp___13 = ldv_init_zalloc(56UL);
  ldvarg86 = (struct v4l2_dbg_register *)tmp___13;
  tmp___14 = ldv_init_zalloc(1UL);
  ldvarg87 = tmp___14;
  tmp___15 = ldv_init_zalloc(1UL);
  ldvarg104 = tmp___15;
  tmp___16 = ldv_init_zalloc(1UL);
  ldvarg107 = tmp___16;
  tmp___17 = ldv_init_zalloc(1UL);
  ldvarg89 = tmp___17;
  tmp___18 = ldv_init_zalloc(1UL);
  ldvarg110 = tmp___18;
  tmp___19 = ldv_init_zalloc(4UL);
  ldvarg93 = (unsigned int *)tmp___19;
  tmp___20 = ldv_init_zalloc(1UL);
  ldvarg105 = tmp___20;
  tmp___21 = ldv_init_zalloc(1UL);
  ldvarg85 = tmp___21;
  tmp___22 = ldv_init_zalloc(44UL);
  ldvarg95 = (struct v4l2_frequency *)tmp___22;
  tmp___23 = ldv_init_zalloc(1UL);
  ldvarg83 = tmp___23;
  tmp___24 = ldv_init_zalloc(1UL);
  ldvarg103 = tmp___24;
  tmp___25 = ldv_init_zalloc(1UL);
  ldvarg114 = tmp___25;
  tmp___26 = ldv_init_zalloc(1UL);
  ldvarg97 = tmp___26;
  tmp___27 = ldv_init_zalloc(1UL);
  ldvarg98 = tmp___27;
  tmp___28 = ldv_init_zalloc(1UL);
  ldvarg109 = tmp___28;
  tmp___29 = ldv_init_zalloc(20UL);
  ldvarg115 = (struct v4l2_requestbuffers *)tmp___29;
  tmp___30 = ldv_init_zalloc(1UL);
  ldvarg100 = tmp___30;
  tmp___31 = ldv_init_zalloc(1UL);
  ldvarg91 = tmp___31;
  tmp___32 = ldv_init_zalloc(1UL);
  ldvarg94 = tmp___32;
  tmp___33 = ldv_init_zalloc(84UL);
  ldvarg106 = (struct v4l2_tuner *)tmp___33;
  tmp___34 = ldv_init_zalloc(8UL);
  ldvarg84 = (v4l2_std_id *)tmp___34;
  tmp___35 = ldv_init_zalloc(1UL);
  ldvarg77 = tmp___35;
  ldv_memset((void *)(& ldvarg76), 0, 4UL);
  ldv_memset((void *)(& ldvarg108), 0, 8UL);
  ldv_memset((void *)(& ldvarg80), 0, 4UL);
  ldv_memset((void *)(& ldvarg101), 0, 4UL);
  tmp___36 = __VERIFIER_nondet_int();
  switch (tmp___36) {
  case 0: ;
  if (ldv_state_variable_4 == 1) {
    vidioc_reqbufs___0(mpeg_ioctl_ops_group1, ldvarg116, ldvarg115);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 1: ;
  if (ldv_state_variable_4 == 1) {
    v4l2_event_unsubscribe(mpeg_ioctl_ops_group2, mpeg_ioctl_ops_group0);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 2: ;
  if (ldv_state_variable_4 == 1) {
    vidioc_s_ctrl(mpeg_ioctl_ops_group1, ldvarg114, ldvarg113);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 3: ;
  if (ldv_state_variable_4 == 1) {
    cx231xx_g_tuner(mpeg_ioctl_ops_group1, ldvarg112, ldvarg111);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 4: ;
  if (ldv_state_variable_4 == 1) {
    vidioc_try_fmt_vid_cap___0(mpeg_ioctl_ops_group1, ldvarg110, mpeg_ioctl_ops_group4);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 5: ;
  if (ldv_state_variable_4 == 1) {
    vidioc_s_std___0(mpeg_ioctl_ops_group1, ldvarg109, ldvarg108);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 6: ;
  if (ldv_state_variable_4 == 1) {
    cx231xx_s_tuner(mpeg_ioctl_ops_group1, ldvarg107, (struct v4l2_tuner const *)ldvarg106);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 7: ;
  if (ldv_state_variable_4 == 1) {
    vidioc_log_status(mpeg_ioctl_ops_group1, ldvarg105);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 8: ;
  if (ldv_state_variable_4 == 1) {
    vidioc_querybuf___0(mpeg_ioctl_ops_group1, ldvarg104, mpeg_ioctl_ops_group3);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 9: ;
  if (ldv_state_variable_4 == 1) {
    vidioc_dqbuf___0(mpeg_ioctl_ops_group1, ldvarg103, mpeg_ioctl_ops_group3);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 10: ;
  if (ldv_state_variable_4 == 1) {
    vidioc_streamoff___0(mpeg_ioctl_ops_group1, ldvarg102, ldvarg101);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 11: ;
  if (ldv_state_variable_4 == 1) {
    vidioc_enum_fmt_vid_cap___0(mpeg_ioctl_ops_group1, ldvarg100, ldvarg99);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 12: ;
  if (ldv_state_variable_4 == 1) {
    vidioc_try_fmt_vid_cap___0(mpeg_ioctl_ops_group1, ldvarg98, mpeg_ioctl_ops_group4);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 13: ;
  if (ldv_state_variable_4 == 1) {
    vidioc_g_fmt_vid_cap___0(mpeg_ioctl_ops_group1, ldvarg97, mpeg_ioctl_ops_group4);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 14: ;
  if (ldv_state_variable_4 == 1) {
    cx231xx_g_frequency(mpeg_ioctl_ops_group1, ldvarg96, ldvarg95);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 15: ;
  if (ldv_state_variable_4 == 1) {
    cx231xx_g_input(mpeg_ioctl_ops_group1, ldvarg94, ldvarg93);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 16: ;
  if (ldv_state_variable_4 == 1) {
    vidioc_qbuf___0(mpeg_ioctl_ops_group1, ldvarg92, mpeg_ioctl_ops_group3);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 17: ;
  if (ldv_state_variable_4 == 1) {
    cx231xx_querycap(mpeg_ioctl_ops_group1, ldvarg91, ldvarg90);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 18: ;
  if (ldv_state_variable_4 == 1) {
    cx231xx_s_frequency(mpeg_ioctl_ops_group1, ldvarg89, (struct v4l2_frequency const *)ldvarg88);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 19: ;
  if (ldv_state_variable_4 == 1) {
    cx231xx_g_register(mpeg_ioctl_ops_group1, ldvarg87, ldvarg86);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 20: ;
  if (ldv_state_variable_4 == 1) {
    vidioc_g_std___0(mpeg_ioctl_ops_group1, ldvarg85, ldvarg84);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 21: ;
  if (ldv_state_variable_4 == 1) {
    cx231xx_enum_input(mpeg_ioctl_ops_group1, ldvarg83, ldvarg82);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 22: ;
  if (ldv_state_variable_4 == 1) {
    v4l2_ctrl_subscribe_event(mpeg_ioctl_ops_group2, mpeg_ioctl_ops_group0);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 23: ;
  if (ldv_state_variable_4 == 1) {
    cx231xx_s_input(mpeg_ioctl_ops_group1, ldvarg81, ldvarg80);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 24: ;
  if (ldv_state_variable_4 == 1) {
    cx231xx_s_register(mpeg_ioctl_ops_group1, ldvarg79, (struct v4l2_dbg_register const *)ldvarg78);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  case 25: ;
  if (ldv_state_variable_4 == 1) {
    vidioc_streamon___0(mpeg_ioctl_ops_group1, ldvarg77, ldvarg76);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_53292;
  default:
  ldv_stop();
  }
  ldv_53292: ;
  return;
}
}
void ldv_main_exported_3(void)
{
  u32 ldvarg5 ;
  u32 ldvarg4 ;
  int tmp ;
  {
  ldv_memset((void *)(& ldvarg5), 0, 4UL);
  ldv_memset((void *)(& ldvarg4), 0, 4UL);
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_3 == 1) {
    cx231xx_s_video_encoding(cx231xx_ops_group0, ldvarg5);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_53325;
  case 1: ;
  if (ldv_state_variable_3 == 1) {
    cx231xx_s_audio_sampling_freq(cx231xx_ops_group0, ldvarg4);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_53325;
  default:
  ldv_stop();
  }
  ldv_53325: ;
  return;
}
}
void ldv_main_exported_5(void)
{
  char *ldvarg132 ;
  void *tmp ;
  unsigned int ldvarg128 ;
  loff_t *ldvarg130 ;
  void *tmp___0 ;
  struct vm_area_struct *ldvarg133 ;
  void *tmp___1 ;
  struct poll_table_struct *ldvarg129 ;
  void *tmp___2 ;
  unsigned long ldvarg127 ;
  size_t ldvarg131 ;
  int tmp___3 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg132 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(8UL);
  ldvarg130 = (loff_t *)tmp___0;
  tmp___1 = ldv_init_zalloc(184UL);
  ldvarg133 = (struct vm_area_struct *)tmp___1;
  tmp___2 = ldv_init_zalloc(16UL);
  ldvarg129 = (struct poll_table_struct *)tmp___2;
  ldv_memset((void *)(& ldvarg128), 0, 4UL);
  ldv_memset((void *)(& ldvarg127), 0, 8UL);
  ldv_memset((void *)(& ldvarg131), 0, 8UL);
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_5 == 1) {
    ldv_retval_7 = mpeg_open(mpeg_fops_group0);
    if (ldv_retval_7 == 0) {
      ldv_state_variable_5 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_53339;
  case 1: ;
  if (ldv_state_variable_5 == 1) {
    mpeg_mmap(mpeg_fops_group0, ldvarg133);
    ldv_state_variable_5 = 1;
  } else {
  }
  if (ldv_state_variable_5 == 2) {
    mpeg_mmap(mpeg_fops_group0, ldvarg133);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_53339;
  case 2: ;
  if (ldv_state_variable_5 == 2) {
    mpeg_release(mpeg_fops_group0);
    ldv_state_variable_5 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_53339;
  case 3: ;
  if (ldv_state_variable_5 == 2) {
    mpeg_read(mpeg_fops_group0, ldvarg132, ldvarg131, ldvarg130);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_53339;
  case 4: ;
  if (ldv_state_variable_5 == 1) {
    mpeg_poll(mpeg_fops_group0, ldvarg129);
    ldv_state_variable_5 = 1;
  } else {
  }
  if (ldv_state_variable_5 == 2) {
    mpeg_poll(mpeg_fops_group0, ldvarg129);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_53339;
  case 5: ;
  if (ldv_state_variable_5 == 1) {
    video_ioctl2(mpeg_fops_group0, ldvarg128, ldvarg127);
    ldv_state_variable_5 = 1;
  } else {
  }
  if (ldv_state_variable_5 == 2) {
    video_ioctl2(mpeg_fops_group0, ldvarg128, ldvarg127);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_53339;
  default:
  ldv_stop();
  }
  ldv_53339: ;
  return;
}
}
bool ldv_queue_work_on_81(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_82(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_83(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_84(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_85(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_95(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_97(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_96(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_99(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_98(struct workqueue_struct *ldv_func_arg1 ) ;
static unsigned int pcb_debug ;
static struct pcb_config cx231xx_Scenario[9U] =
  { {0U, 0U, 0U, 1U, 16U, 255U, 255U, 0U, 0U, 0U, 0U, 1U, {{0U, {0U, 1U, 255U, 255U,
                                                                  255U, 255U, 255U,
                                                                  255U}}, {255U, {255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  (unsigned char)0}},
                                                            {255U, {255U, 255U, 255U,
                                                                    255U, 255U, 255U,
                                                                    255U, (unsigned char)0}}},
      {{0U, {0U, 1U, 255U, 255U, 255U, 255U, 255U, 255U}}, {255U, {255U, 255U, 255U,
                                                                   255U, 255U, 255U,
                                                                   255U, (unsigned char)0}},
       {255U, {255U, 255U, 255U, 255U, 255U, 255U, 255U, (unsigned char)0}}}},
        {1U, 0U, 0U, 1U, 16U, 0U, 255U, 0U, 0U, 0U, 0U, 1U, {{0U, {0U, 1U, 2U, 255U,
                                                                255U, 255U, 255U,
                                                                255U}}, {255U, {255U,
                                                                                255U,
                                                                                255U,
                                                                                255U,
                                                                                255U,
                                                                                255U,
                                                                                255U,
                                                                                (unsigned char)0}},
                                                          {255U, {255U, 255U, 255U,
                                                                  255U, 255U, 255U,
                                                                  255U, (unsigned char)0}}},
      {{0U, {0U, 1U, 2U, 255U, 255U, 255U, 255U, 255U}}, {255U, {255U, 255U, 255U,
                                                                 255U, 255U, 255U,
                                                                 255U, (unsigned char)0}},
       {255U, {255U, 255U, 255U, 255U, 255U, 255U, 255U, (unsigned char)0}}}},
        {2U, 0U, 0U, 14U, 255U, 255U, 0U, 0U, 0U, 0U, 0U, 1U, {{0U, {0U, 255U, 255U,
                                                                  1U, 2U, 3U, 4U,
                                                                  255U}}, {255U, {255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  (unsigned char)0}},
                                                            {255U, {255U, 255U, 255U,
                                                                    255U, 255U, 255U,
                                                                    255U, (unsigned char)0}}},
      {{0U, {0U, 255U, 255U, 1U, 2U, 255U, 255U, 255U}}, {255U, {255U, 255U, 255U,
                                                                 255U, 255U, 255U,
                                                                 255U, (unsigned char)0}},
       {255U, {255U, 255U, 255U, 255U, 255U, 255U, 255U, (unsigned char)0}}}},
        {3U, 0U, 0U, 15U, 0U, 255U, 0U, 0U, 0U, 0U, 0U, 1U, {{0U, {0U, 1U, 255U, 2U,
                                                                3U, 4U, 5U, 255U}},
                                                          {255U, {255U, 255U, 255U,
                                                                  255U, 255U, 255U,
                                                                  255U, (unsigned char)0}},
                                                          {255U, {255U, 255U, 255U,
                                                                  255U, 255U, 255U,
                                                                  255U, (unsigned char)0}}},
      {{0U, {0U, 1U, 255U, 2U, 3U, 255U, 255U, 255U}}, {255U, {255U, 255U, 255U, 255U,
                                                               255U, 255U, 255U, (unsigned char)0}},
       {255U, {255U, 255U, 255U, 255U, 255U, 255U, 255U, (unsigned char)0}}}},
        {4U, 0U, 0U, 15U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, {{0U, {0U, 1U, 2U, 3U, 4U,
                                                              5U, 6U, 255U}}, {255U,
                                                                               {255U,
                                                                                255U,
                                                                                255U,
                                                                                255U,
                                                                                255U,
                                                                                255U,
                                                                                255U,
                                                                                (unsigned char)0}},
                                                        {255U, {255U, 255U, 255U,
                                                                255U, 255U, 255U,
                                                                255U, (unsigned char)0}}},
      {{0U, {0U, 1U, 2U, 3U, 4U, 255U, 255U, 255U}}, {255U, {255U, 255U, 255U, 255U,
                                                             255U, 255U, 255U, (unsigned char)0}},
       {255U, {255U, 255U, 255U, 255U, 255U, 255U, 255U, (unsigned char)0}}}},
        {5U, 0U, 0U, 15U, 255U, 16U, 0U, 0U, 0U, 0U, 0U, 1U, {{0U, {0U, 255U, 1U, 2U,
                                                                 3U, 4U, 5U, 255U}},
                                                           {255U, {255U, 255U, 255U,
                                                                   255U, 255U, 255U,
                                                                   255U, (unsigned char)0}},
                                                           {255U, {255U, 255U, 255U,
                                                                   255U, 255U, 255U,
                                                                   255U, (unsigned char)0}}},
      {{0U, {0U, 255U, 1U, 2U, 3U, 255U, 255U, 255U}}, {255U, {255U, 255U, 255U, 255U,
                                                               255U, 255U, 255U, (unsigned char)0}},
       {255U, {255U, 255U, 255U, 255U, 255U, 255U, 255U, (unsigned char)0}}}},
        {6U, 1U, 0U, 1U, 16U, 255U, 255U, 0U, 0U, 0U, 0U, 1U, {{0U, {0U, 1U, 255U, 255U,
                                                                  255U, 255U, 255U,
                                                                  255U}}, {255U, {255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  (unsigned char)0}},
                                                            {255U, {255U, 255U, 255U,
                                                                    255U, 255U, 255U,
                                                                    255U, (unsigned char)0}}},
      {{0U, {0U, 1U, 255U, 255U, 255U, 255U, 255U, 255U}}, {255U, {255U, 255U, 255U,
                                                                   255U, 255U, 255U,
                                                                   255U, (unsigned char)0}},
       {255U, {255U, 255U, 255U, 255U, 255U, 255U, 255U, (unsigned char)0}}}},
        {7U, 1U, 0U, 2U, 255U, 255U, 2U, 0U, 0U, 0U, 0U, 1U, {{0U, {0U, 255U, 255U, 1U,
                                                                 2U, 3U, 4U, 255U}},
                                                           {255U, {255U, 255U, 255U,
                                                                   255U, 255U, 255U,
                                                                   255U, (unsigned char)0}},
                                                           {255U, {255U, 255U, 255U,
                                                                   255U, 255U, 255U,
                                                                   255U, (unsigned char)0}}},
      {{0U, {0U, 255U, 255U, 1U, 2U, 255U, 255U, 255U}}, {255U, {255U, 255U, 255U,
                                                                 255U, 255U, 255U,
                                                                 255U, (unsigned char)0}},
       {255U, {255U, 255U, 255U, 255U, 255U, 255U, 255U, (unsigned char)0}}}},
        {8U, 1U, 0U, 15U, 16U, 255U, 14U, 0U, 0U, 0U, 0U, 1U, {{0U, {0U, 1U, 255U, 2U,
                                                                  3U, 4U, 5U, 255U}},
                                                            {255U, {255U, 255U, 255U,
                                                                    255U, 255U, 255U,
                                                                    255U, (unsigned char)0}},
                                                            {255U, {255U, 255U, 255U,
                                                                    255U, 255U, 255U,
                                                                    255U, (unsigned char)0}}},
      {{0U, {0U, 1U, 255U, 2U, 3U, 255U, 255U, 255U}}, {255U, {255U, 255U, 255U, 255U,
                                                               255U, 255U, 255U, (unsigned char)0}},
       {255U, {255U, 255U, 255U, 255U, 255U, 255U, 255U, (unsigned char)0}}}}};
int initialize_cx231xx(struct cx231xx *dev )
{
  int retval ;
  u32 config_info ;
  struct pcb_config *p_pcb_info ;
  u8 usb_speed ;
  u8 data[4U] ;
  u32 ts1_source ;
  u32 ts2_source ;
  u32 analog_source ;
  u8 _current_scenario_idx ;
  {
  config_info = 0U;
  usb_speed = 1U;
  data[0] = 0U;
  data[1] = 0U;
  data[2] = 0U;
  data[3] = 0U;
  ts1_source = 0U;
  ts2_source = 0U;
  analog_source = 0U;
  _current_scenario_idx = 255U;
  ts1_source = 16U;
  ts2_source = 16U;
  retval = cx231xx_read_ctrl_reg(dev, 13, 0, (char *)(& data), 4);
  if (retval < 0) {
    return (retval);
  } else {
  }
  config_info = *((__le32 *)(& data));
  usb_speed = (unsigned int )((unsigned char )config_info) & 1U;
  if ((config_info & 64U) != 0U) {
    switch (config_info & 196U) {
    case 68U:
    cx231xx_Scenario[6].speed = usb_speed;
    p_pcb_info = (struct pcb_config *)(& cx231xx_Scenario) + 6UL;
    _current_scenario_idx = 6U;
    goto ldv_51827;
    case 192U:
    cx231xx_Scenario[7].speed = usb_speed;
    p_pcb_info = (struct pcb_config *)(& cx231xx_Scenario) + 7UL;
    _current_scenario_idx = 7U;
    goto ldv_51827;
    case 196U:
    cx231xx_Scenario[8].speed = usb_speed;
    p_pcb_info = (struct pcb_config *)(& cx231xx_Scenario) + 8UL;
    _current_scenario_idx = 8U;
    goto ldv_51827;
    default:
    dev_err((struct device const *)dev->dev, "bad config in buspower!!!!\nconfig_info=%x\n",
            config_info & 196U);
    return (1);
    }
    ldv_51827: ;
  } else {
    switch (config_info & 134U) {
    case 4U:
    cx231xx_Scenario[0].speed = usb_speed;
    p_pcb_info = (struct pcb_config *)(& cx231xx_Scenario);
    _current_scenario_idx = 0U;
    goto ldv_51832;
    case 6U:
    cx231xx_Scenario[1].speed = usb_speed;
    cx231xx_Scenario[1].ts2_source = ts2_source;
    p_pcb_info = (struct pcb_config *)(& cx231xx_Scenario) + 1UL;
    _current_scenario_idx = 1U;
    goto ldv_51832;
    case 128U:
    cx231xx_Scenario[2].speed = usb_speed;
    cx231xx_Scenario[2].analog_source = analog_source;
    p_pcb_info = (struct pcb_config *)(& cx231xx_Scenario) + 2UL;
    _current_scenario_idx = 2U;
    goto ldv_51832;
    case 132U:
    cx231xx_Scenario[3].speed = usb_speed;
    cx231xx_Scenario[3].ts1_source = ts1_source;
    cx231xx_Scenario[3].analog_source = analog_source;
    p_pcb_info = (struct pcb_config *)(& cx231xx_Scenario) + 3UL;
    _current_scenario_idx = 3U;
    goto ldv_51832;
    case 134U:
    cx231xx_Scenario[4].speed = usb_speed;
    cx231xx_Scenario[4].ts1_source = ts1_source;
    cx231xx_Scenario[4].ts2_source = ts2_source;
    cx231xx_Scenario[4].analog_source = analog_source;
    p_pcb_info = (struct pcb_config *)(& cx231xx_Scenario) + 4UL;
    _current_scenario_idx = 4U;
    goto ldv_51832;
    case 130U:
    cx231xx_Scenario[5].speed = usb_speed;
    cx231xx_Scenario[5].analog_source = analog_source;
    p_pcb_info = (struct pcb_config *)(& cx231xx_Scenario) + 5UL;
    _current_scenario_idx = 5U;
    goto ldv_51832;
    default:
    dev_err((struct device const *)dev->dev, "bad senario!!!!!\nconfig_info=%x\n",
            config_info & 134U);
    return (-19);
    }
    ldv_51832: ;
  }
  dev->current_scenario_idx = _current_scenario_idx;
  memcpy((void *)(& dev->current_pcb_config), (void const *)p_pcb_info, 76UL);
  if (pcb_debug != 0U) {
    _dev_info((struct device const *)dev->dev, "SC(0x00) register = 0x%x\n", config_info);
    _dev_info((struct device const *)dev->dev, "scenario %d\n", (int )dev->current_pcb_config.index + 1);
    _dev_info((struct device const *)dev->dev, "type=%x\n", (int )dev->current_pcb_config.type);
    _dev_info((struct device const *)dev->dev, "mode=%x\n", (int )dev->current_pcb_config.mode);
    _dev_info((struct device const *)dev->dev, "speed=%x\n", (int )dev->current_pcb_config.speed);
    _dev_info((struct device const *)dev->dev, "ts1_source=%x\n", dev->current_pcb_config.ts1_source);
    _dev_info((struct device const *)dev->dev, "ts2_source=%x\n", dev->current_pcb_config.ts2_source);
    _dev_info((struct device const *)dev->dev, "analog_source=%x\n", dev->current_pcb_config.analog_source);
  } else {
  }
  return (0);
}
}
bool ldv_queue_work_on_95(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_96(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_97(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_98(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_99(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
__inline static long ldv__builtin_expect(long exp , long c ) ;
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
    ldv_4860: ;
    goto ldv_4860;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (43UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
bool ldv_queue_work_on_109(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_111(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_110(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_113(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_112(struct workqueue_struct *ldv_func_arg1 ) ;
extern int usb_clear_halt(struct usb_device * , int ) ;
int cx231xx_init_vbi_isoc(struct cx231xx *dev , int max_packets , int num_bufs , int max_pkt_size ,
                          int (*bulk_copy)(struct cx231xx * , struct urb * ) ) ;
u32 cx231xx_get_vbi_line(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q , u8 sav_eav ,
                         u8 *p_buffer , u32 buffer_size ) ;
u32 cx231xx_copy_vbi_line(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q , u8 *p_line ,
                          u32 length , int field_number ) ;
void cx231xx_reset_vbi_buffer(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q ) ;
int cx231xx_do_vbi_copy(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q , u8 *p_buffer ,
                        u32 bytes_to_copy ) ;
u8 cx231xx_is_vbi_buffer_done(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q ) ;
__inline static void print_err_status___0(struct cx231xx *dev , int packet , int status )
{
  char *errmsg ;
  {
  errmsg = (char *)"Unknown";
  switch (status) {
  case -2:
  errmsg = (char *)"unlinked synchronuously";
  goto ldv_52335;
  case -104:
  errmsg = (char *)"unlinked asynchronuously";
  goto ldv_52335;
  case -63:
  errmsg = (char *)"Buffer error (overrun)";
  goto ldv_52335;
  case -32:
  errmsg = (char *)"Stalled (device not responding)";
  goto ldv_52335;
  case -75:
  errmsg = (char *)"Babble (bad cable?)";
  goto ldv_52335;
  case -71:
  errmsg = (char *)"Bit-stuff error (bad cable?)";
  goto ldv_52335;
  case -84:
  errmsg = (char *)"CRC/Timeout (could be anything)";
  goto ldv_52335;
  case -62:
  errmsg = (char *)"Device does not respond";
  goto ldv_52335;
  }
  ldv_52335: ;
  if (packet < 0) {
    dev_err((struct device const *)dev->dev, "URB status %d [%s].\n", status, errmsg);
  } else {
    dev_err((struct device const *)dev->dev, "URB packet %d, status %d [%s].\n",
            packet, status, errmsg);
  }
  return;
}
}
__inline static int cx231xx_isoc_vbi_copy(struct cx231xx *dev , struct urb *urb )
{
  struct cx231xx_dmaqueue *dma_q ;
  int rc ;
  unsigned char *p_buffer ;
  u32 bytes_parsed ;
  u32 buffer_size ;
  u8 sav_eav ;
  u32 tmp ;
  u32 bytes_used ;
  u32 tmp___0 ;
  {
  dma_q = (struct cx231xx_dmaqueue *)urb->context;
  rc = 1;
  bytes_parsed = 0U;
  buffer_size = 0U;
  sav_eav = 0U;
  if ((unsigned long )dev == (unsigned long )((struct cx231xx *)0)) {
    return (0);
  } else {
  }
  if (((unsigned int )dev->state & 2U) != 0U) {
    return (0);
  } else {
  }
  if (urb->status < 0) {
    print_err_status___0(dev, -1, urb->status);
    if (urb->status == -2) {
      return (0);
    } else {
    }
  } else {
  }
  p_buffer = (unsigned char *)urb->transfer_buffer;
  buffer_size = urb->actual_length;
  if (buffer_size != 0U) {
    bytes_parsed = 0U;
    if ((unsigned int )dma_q->is_partial_line != 0U) {
      sav_eav = dma_q->last_sav;
    } else {
      sav_eav = cx231xx_find_boundary_SAV_EAV(p_buffer, (u8 *)(& dma_q->partial_buf),
                                              & bytes_parsed);
    }
    sav_eav = (unsigned int )sav_eav & 240U;
    if ((unsigned int )sav_eav != 0U) {
      tmp = cx231xx_get_vbi_line(dev, dma_q, (int )sav_eav, p_buffer + (unsigned long )bytes_parsed,
                                 buffer_size - bytes_parsed);
      bytes_parsed = tmp + bytes_parsed;
    } else {
    }
    dma_q->is_partial_line = 0U;
    goto ldv_52355;
    ldv_52354:
    bytes_used = 0U;
    sav_eav = cx231xx_find_next_SAV_EAV(p_buffer + (unsigned long )bytes_parsed, buffer_size - bytes_parsed,
                                        & bytes_used);
    bytes_parsed = bytes_parsed + bytes_used;
    sav_eav = (unsigned int )sav_eav & 240U;
    if ((unsigned int )sav_eav != 0U && bytes_parsed < buffer_size) {
      tmp___0 = cx231xx_get_vbi_line(dev, dma_q, (int )sav_eav, p_buffer + (unsigned long )bytes_parsed,
                                     buffer_size - bytes_parsed);
      bytes_parsed = tmp___0 + bytes_parsed;
    } else {
    }
    ldv_52355: ;
    if (bytes_parsed < buffer_size) {
      goto ldv_52354;
    } else {
    }
    memcpy((void *)(& dma_q->partial_buf), (void const *)(p_buffer + ((unsigned long )buffer_size + 0xfffffffffffffffcUL)),
             4UL);
    bytes_parsed = 0U;
  } else {
  }
  return (rc);
}
}
static int vbi_buffer_setup(struct videobuf_queue *vq , unsigned int *count , unsigned int *size )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  u32 height ;
  {
  fh = (struct cx231xx_fh *)vq->priv_data;
  dev = fh->dev;
  height = 0U;
  height = (dev->norm & 16713471ULL) != 0ULL ? 18U : 12U;
  *size = ((u32 )dev->width * height) * 4U;
  if (*count == 0U) {
    *count = 6U;
  } else {
  }
  if (*count <= 3U) {
    *count = 4U;
  } else {
  }
  return (0);
}
}
static void free_buffer___1(struct videobuf_queue *vq , struct cx231xx_buffer *buf )
{
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  unsigned long flags ;
  int tmp ;
  long tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  {
  fh = (struct cx231xx_fh *)vq->priv_data;
  dev = fh->dev;
  flags = 0UL;
  tmp = preempt_count();
  tmp___0 = ldv__builtin_expect(((unsigned long )tmp & 2096896UL) != 0UL, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-vbi.c"),
                         "i" (195), "i" (12UL));
    ldv_52372: ;
    goto ldv_52372;
  } else {
  }
  tmp___1 = spinlock_check(& dev->vbi_mode.slock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  if ((unsigned long )dev->vbi_mode.bulk_ctl.buf == (unsigned long )buf) {
    dev->vbi_mode.bulk_ctl.buf = (struct cx231xx_buffer *)0;
  } else {
  }
  spin_unlock_irqrestore(& dev->vbi_mode.slock, flags);
  videobuf_vmalloc_free(& buf->vb);
  buf->vb.state = 0;
  return;
}
}
static int vbi_buffer_prepare(struct videobuf_queue *vq , struct videobuf_buffer *vb ,
                              enum v4l2_field field )
{
  struct cx231xx_fh *fh ;
  struct cx231xx_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  struct cx231xx *dev ;
  int rc ;
  int urb_init ;
  u32 height ;
  {
  fh = (struct cx231xx_fh *)vq->priv_data;
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx231xx_buffer *)__mptr;
  dev = fh->dev;
  rc = 0;
  urb_init = 0;
  height = 0U;
  height = (dev->norm & 16713471ULL) != 0ULL ? 18U : 12U;
  buf->vb.size = (unsigned long )(((u32 )(dev->width << 1) * height) * 2U);
  if (buf->vb.baddr != 0UL && buf->vb.bsize < buf->vb.size) {
    return (-22);
  } else {
  }
  buf->vb.width = (unsigned int )dev->width;
  buf->vb.height = height;
  buf->vb.field = field;
  buf->vb.field = 5;
  if ((unsigned int )buf->vb.state == 0U) {
    rc = videobuf_iolock(vq, & buf->vb, (struct v4l2_framebuffer *)0);
    if (rc < 0) {
      goto fail;
    } else {
    }
  } else {
  }
  if (dev->vbi_mode.bulk_ctl.num_bufs == 0) {
    urb_init = 1;
  } else {
  }
  if (urb_init != 0) {
    rc = cx231xx_init_vbi_isoc(dev, 4, 5, (int )*(dev->vbi_mode.alt_max_pkt_size),
                               & cx231xx_isoc_vbi_copy);
    if (rc < 0) {
      goto fail;
    } else {
    }
  } else {
  }
  buf->vb.state = 1;
  return (0);
  fail:
  free_buffer___1(vq, buf);
  return (rc);
}
}
static void vbi_buffer_queue(struct videobuf_queue *vq , struct videobuf_buffer *vb )
{
  struct cx231xx_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  struct cx231xx_fh *fh ;
  struct cx231xx *dev ;
  struct cx231xx_dmaqueue *vidq ;
  {
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx231xx_buffer *)__mptr;
  fh = (struct cx231xx_fh *)vq->priv_data;
  dev = fh->dev;
  vidq = & dev->vbi_mode.vidq;
  buf->vb.state = 2;
  list_add_tail(& buf->vb.queue, & vidq->active);
  return;
}
}
static void vbi_buffer_release(struct videobuf_queue *vq , struct videobuf_buffer *vb )
{
  struct cx231xx_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  {
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx231xx_buffer *)__mptr;
  free_buffer___1(vq, buf);
  return;
}
}
struct videobuf_queue_ops cx231xx_vbi_qops = {& vbi_buffer_setup, & vbi_buffer_prepare, & vbi_buffer_queue, & vbi_buffer_release};
static void cx231xx_irq_vbi_callback(struct urb *urb )
{
  struct cx231xx_dmaqueue *dma_q ;
  struct cx231xx_video_mode *vmode ;
  struct cx231xx_dmaqueue const *__mptr ;
  struct cx231xx *dev ;
  struct cx231xx_video_mode const *__mptr___0 ;
  {
  dma_q = (struct cx231xx_dmaqueue *)urb->context;
  __mptr = (struct cx231xx_dmaqueue const *)dma_q;
  vmode = (struct cx231xx_video_mode *)__mptr;
  __mptr___0 = (struct cx231xx_video_mode const *)vmode;
  dev = (struct cx231xx *)__mptr___0 + 0xffffffffffffc490UL;
  switch (urb->status) {
  case 0: ;
  case -110: ;
  goto ldv_52420;
  case -104: ;
  case -2: ;
  case -108: ;
  return;
  default:
  dev_err((struct device const *)dev->dev, "urb completition error %d.\n", urb->status);
  goto ldv_52420;
  }
  ldv_52420:
  spin_lock(& dev->vbi_mode.slock);
  (*(dev->vbi_mode.bulk_ctl.bulk_copy))(dev, urb);
  spin_unlock(& dev->vbi_mode.slock);
  urb->status = 0;
  urb->status = usb_submit_urb(urb, 32U);
  if (urb->status != 0) {
    dev_err((struct device const *)dev->dev, "urb resubmit failed (error=%i)\n",
            urb->status);
  } else {
  }
  return;
}
}
void cx231xx_uninit_vbi_isoc(struct cx231xx *dev )
{
  struct urb *urb ;
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned long _flags ;
  int tmp___0 ;
  {
  descriptor.modname = "cx231xx";
  descriptor.function = "cx231xx_uninit_vbi_isoc";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-vbi.c";
  descriptor.format = "called cx231xx_uninit_vbi_isoc\n";
  descriptor.lineno = 346U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "called cx231xx_uninit_vbi_isoc\n");
  } else {
  }
  dev->vbi_mode.bulk_ctl.nfields = -1;
  i = 0;
  goto ldv_52442;
  ldv_52441:
  urb = *(dev->vbi_mode.bulk_ctl.urb + (unsigned long )i);
  if ((unsigned long )urb != (unsigned long )((struct urb *)0)) {
    _flags = arch_local_save_flags___0();
    tmp___0 = arch_irqs_disabled_flags(_flags);
    if (tmp___0 == 0) {
      usb_kill_urb(urb);
    } else {
      usb_unlink_urb(urb);
    }
    if ((unsigned long )*(dev->vbi_mode.bulk_ctl.transfer_buffer + (unsigned long )i) != (unsigned long )((char *)0)) {
      kfree((void const *)*(dev->vbi_mode.bulk_ctl.transfer_buffer + (unsigned long )i));
      *(dev->vbi_mode.bulk_ctl.transfer_buffer + (unsigned long )i) = (char *)0;
    } else {
    }
    usb_free_urb(urb);
    *(dev->vbi_mode.bulk_ctl.urb + (unsigned long )i) = (struct urb *)0;
  } else {
  }
  *(dev->vbi_mode.bulk_ctl.transfer_buffer + (unsigned long )i) = (char *)0;
  i = i + 1;
  ldv_52442: ;
  if (dev->vbi_mode.bulk_ctl.num_bufs > i) {
    goto ldv_52441;
  } else {
  }
  kfree((void const *)dev->vbi_mode.bulk_ctl.urb);
  kfree((void const *)dev->vbi_mode.bulk_ctl.transfer_buffer);
  dev->vbi_mode.bulk_ctl.urb = (struct urb **)0;
  dev->vbi_mode.bulk_ctl.transfer_buffer = (char **)0;
  dev->vbi_mode.bulk_ctl.num_bufs = 0;
  cx231xx_capture_start(dev, 0, 2);
  return;
}
}
static char const __kstrtab_cx231xx_uninit_vbi_isoc[24U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        'u', 'n', 'i', 'n',
        'i', 't', '_', 'v',
        'b', 'i', '_', 'i',
        's', 'o', 'c', '\000'};
struct kernel_symbol const __ksymtab_cx231xx_uninit_vbi_isoc ;
struct kernel_symbol const __ksymtab_cx231xx_uninit_vbi_isoc = {(unsigned long )(& cx231xx_uninit_vbi_isoc), (char const *)(& __kstrtab_cx231xx_uninit_vbi_isoc)};
int cx231xx_init_vbi_isoc(struct cx231xx *dev , int max_packets , int num_bufs , int max_pkt_size ,
                          int (*bulk_copy)(struct cx231xx * , struct urb * ) )
{
  struct cx231xx_dmaqueue *dma_q ;
  int i ;
  int sb_size ;
  int pipe ;
  struct urb *urb ;
  int rc ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned int tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  unsigned int tmp___5 ;
  struct lock_class_key __key ;
  {
  dma_q = & dev->vbi_mode.vidq;
  descriptor.modname = "cx231xx";
  descriptor.function = "cx231xx_init_vbi_isoc";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-vbi.c";
  descriptor.format = "called cx231xx_vbi_isoc\n";
  descriptor.lineno = 395U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "called cx231xx_vbi_isoc\n");
  } else {
  }
  cx231xx_uninit_vbi_isoc(dev);
  tmp___0 = __create_pipe(dev->udev, (unsigned int )dev->vbi_mode.end_point_addr);
  usb_clear_halt(dev->udev, (int )(tmp___0 | 3221225600U));
  dev->vbi_mode.bulk_ctl.bulk_copy = bulk_copy;
  dev->vbi_mode.bulk_ctl.num_bufs = num_bufs;
  dma_q->pos = 0;
  dma_q->is_partial_line = 0U;
  dma_q->last_sav = 0U;
  dma_q->current_field = -1;
  dma_q->bytes_left_in_line = (u32 )(dev->width << 1);
  dma_q->lines_per_field = (dev->norm & 16713471ULL) != 0ULL ? 18U : 12U;
  dma_q->lines_completed = 0U;
  i = 0;
  goto ldv_52469;
  ldv_52468:
  dma_q->partial_buf[i] = 0U;
  i = i + 1;
  ldv_52469: ;
  if (i <= 7) {
    goto ldv_52468;
  } else {
  }
  tmp___1 = kzalloc((unsigned long )num_bufs * 8UL, 208U);
  dev->vbi_mode.bulk_ctl.urb = (struct urb **)tmp___1;
  if ((unsigned long )dev->vbi_mode.bulk_ctl.urb == (unsigned long )((struct urb **)0)) {
    dev_err((struct device const *)dev->dev, "cannot alloc memory for usb buffers\n");
    return (-12);
  } else {
  }
  tmp___2 = kzalloc((unsigned long )num_bufs * 8UL, 208U);
  dev->vbi_mode.bulk_ctl.transfer_buffer = (char **)tmp___2;
  if ((unsigned long )dev->vbi_mode.bulk_ctl.transfer_buffer == (unsigned long )((char **)0)) {
    dev_err((struct device const *)dev->dev, "cannot allocate memory for usbtransfer\n");
    kfree((void const *)dev->vbi_mode.bulk_ctl.urb);
    return (-12);
  } else {
  }
  dev->vbi_mode.bulk_ctl.max_pkt_size = max_pkt_size;
  dev->vbi_mode.bulk_ctl.buf = (struct cx231xx_buffer *)0;
  sb_size = dev->vbi_mode.bulk_ctl.max_pkt_size * max_packets;
  i = 0;
  goto ldv_52472;
  ldv_52471:
  urb = usb_alloc_urb(0, 208U);
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    dev_err((struct device const *)dev->dev, "cannot alloc bulk_ctl.urb %i\n", i);
    cx231xx_uninit_vbi_isoc(dev);
    return (-12);
  } else {
  }
  *(dev->vbi_mode.bulk_ctl.urb + (unsigned long )i) = urb;
  urb->transfer_flags = 0U;
  tmp___3 = kzalloc((size_t )sb_size, 208U);
  *(dev->vbi_mode.bulk_ctl.transfer_buffer + (unsigned long )i) = (char *)tmp___3;
  if ((unsigned long )*(dev->vbi_mode.bulk_ctl.transfer_buffer + (unsigned long )i) == (unsigned long )((char *)0)) {
    tmp___4 = preempt_count();
    dev_err((struct device const *)dev->dev, "unable to allocate %i bytes for transfer buffer %i%s\n",
            sb_size, i, ((unsigned long )tmp___4 & 2096896UL) != 0UL ? (char *)" while in int" : (char *)"");
    cx231xx_uninit_vbi_isoc(dev);
    return (-12);
  } else {
  }
  tmp___5 = __create_pipe(dev->udev, (unsigned int )dev->vbi_mode.end_point_addr);
  pipe = (int )(tmp___5 | 3221225600U);
  usb_fill_bulk_urb(urb, dev->udev, (unsigned int )pipe, (void *)*(dev->vbi_mode.bulk_ctl.transfer_buffer + (unsigned long )i),
                    sb_size, & cx231xx_irq_vbi_callback, (void *)dma_q);
  i = i + 1;
  ldv_52472: ;
  if (dev->vbi_mode.bulk_ctl.num_bufs > i) {
    goto ldv_52471;
  } else {
  }
  __init_waitqueue_head(& dma_q->wq, "&dma_q->wq", & __key);
  i = 0;
  goto ldv_52476;
  ldv_52475:
  rc = usb_submit_urb(*(dev->vbi_mode.bulk_ctl.urb + (unsigned long )i), 32U);
  if (rc != 0) {
    dev_err((struct device const *)dev->dev, "submit of urb %i failed (error=%i)\n",
            i, rc);
    cx231xx_uninit_vbi_isoc(dev);
    return (rc);
  } else {
  }
  i = i + 1;
  ldv_52476: ;
  if (dev->vbi_mode.bulk_ctl.num_bufs > i) {
    goto ldv_52475;
  } else {
  }
  cx231xx_capture_start(dev, 1, 2);
  return (0);
}
}
static char const __kstrtab_cx231xx_init_vbi_isoc[22U] =
  { 'c', 'x', '2', '3',
        '1', 'x', 'x', '_',
        'i', 'n', 'i', 't',
        '_', 'v', 'b', 'i',
        '_', 'i', 's', 'o',
        'c', '\000'};
struct kernel_symbol const __ksymtab_cx231xx_init_vbi_isoc ;
struct kernel_symbol const __ksymtab_cx231xx_init_vbi_isoc = {(unsigned long )(& cx231xx_init_vbi_isoc), (char const *)(& __kstrtab_cx231xx_init_vbi_isoc)};
u32 cx231xx_get_vbi_line(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q , u8 sav_eav ,
                         u8 *p_buffer , u32 buffer_size )
{
  u32 bytes_copied ;
  int current_field ;
  {
  bytes_copied = 0U;
  current_field = -1;
  switch ((int )sav_eav) {
  case 32:
  current_field = 1;
  goto ldv_52499;
  case 96:
  current_field = 2;
  goto ldv_52499;
  default: ;
  goto ldv_52499;
  }
  ldv_52499: ;
  if (current_field < 0) {
    return (bytes_copied);
  } else {
  }
  dma_q->last_sav = sav_eav;
  bytes_copied = cx231xx_copy_vbi_line(dev, dma_q, p_buffer, buffer_size, current_field);
  return (bytes_copied);
}
}
__inline static void vbi_buffer_filled(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q ,
                                       struct cx231xx_buffer *buf )
{
  {
  buf->vb.state = 4;
  buf->vb.field_count = buf->vb.field_count + 1U;
  v4l2_get_timestamp(& buf->vb.ts);
  dev->vbi_mode.bulk_ctl.buf = (struct cx231xx_buffer *)0;
  list_del(& buf->vb.queue);
  __wake_up(& buf->vb.done, 3U, 1, (void *)0);
  return;
}
}
u32 cx231xx_copy_vbi_line(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q , u8 *p_line ,
                          u32 length , int field_number )
{
  u32 bytes_to_copy ;
  struct cx231xx_buffer *buf ;
  u32 _line_size ;
  u8 tmp ;
  {
  _line_size = (u32 )(dev->width * 2);
  if (dma_q->current_field == -1) {
    cx231xx_reset_vbi_buffer(dev, dma_q);
  } else {
  }
  if (dma_q->current_field != field_number) {
    dma_q->lines_completed = 0U;
  } else {
  }
  buf = dev->vbi_mode.bulk_ctl.buf;
  dma_q->current_field = field_number;
  bytes_to_copy = dma_q->bytes_left_in_line;
  if (bytes_to_copy > length) {
    bytes_to_copy = length;
  } else {
  }
  if (dma_q->lines_completed >= dma_q->lines_per_field) {
    dma_q->bytes_left_in_line = dma_q->bytes_left_in_line - bytes_to_copy;
    dma_q->is_partial_line = dma_q->bytes_left_in_line != 0U;
    return (0U);
  } else {
  }
  dma_q->is_partial_line = 1U;
  if ((unsigned long )buf == (unsigned long )((struct cx231xx_buffer *)0)) {
    dma_q->bytes_left_in_line = dma_q->bytes_left_in_line - bytes_to_copy;
    dma_q->is_partial_line = dma_q->bytes_left_in_line != 0U;
    return (bytes_to_copy);
  } else {
  }
  cx231xx_do_vbi_copy(dev, dma_q, p_line, bytes_to_copy);
  dma_q->pos = (int )((u32 )dma_q->pos + bytes_to_copy);
  dma_q->bytes_left_in_line = dma_q->bytes_left_in_line - bytes_to_copy;
  if (dma_q->bytes_left_in_line == 0U) {
    dma_q->bytes_left_in_line = _line_size;
    dma_q->lines_completed = dma_q->lines_completed + 1U;
    dma_q->is_partial_line = 0U;
    tmp = cx231xx_is_vbi_buffer_done(dev, dma_q);
    if ((unsigned int )tmp != 0U && (unsigned long )buf != (unsigned long )((struct cx231xx_buffer *)0)) {
      vbi_buffer_filled(dev, dma_q, buf);
      dma_q->pos = 0;
      dma_q->lines_completed = 0U;
      cx231xx_reset_vbi_buffer(dev, dma_q);
    } else {
    }
  } else {
  }
  return (bytes_to_copy);
}
}
__inline static void get_next_vbi_buf(struct cx231xx_dmaqueue *dma_q , struct cx231xx_buffer **buf )
{
  struct cx231xx_video_mode *vmode ;
  struct cx231xx_dmaqueue const *__mptr ;
  struct cx231xx *dev ;
  struct cx231xx_video_mode const *__mptr___0 ;
  char *outp ;
  int tmp ;
  struct list_head const *__mptr___1 ;
  void *tmp___0 ;
  {
  __mptr = (struct cx231xx_dmaqueue const *)dma_q;
  vmode = (struct cx231xx_video_mode *)__mptr;
  __mptr___0 = (struct cx231xx_video_mode const *)vmode;
  dev = (struct cx231xx *)__mptr___0 + 0xffffffffffffc490UL;
  tmp = list_empty((struct list_head const *)(& dma_q->active));
  if (tmp != 0) {
    dev_err((struct device const *)dev->dev, "No active queue to serve\n");
    dev->vbi_mode.bulk_ctl.buf = (struct cx231xx_buffer *)0;
    *buf = (struct cx231xx_buffer *)0;
    return;
  } else {
  }
  __mptr___1 = (struct list_head const *)dma_q->active.next;
  *buf = (struct cx231xx_buffer *)__mptr___1 + 0xffffffffffffffc8UL;
  tmp___0 = videobuf_to_vmalloc(& (*buf)->vb);
  outp = (char *)tmp___0;
  memset((void *)outp, 0, (*buf)->vb.size);
  dev->vbi_mode.bulk_ctl.buf = *buf;
  return;
}
}
void cx231xx_reset_vbi_buffer(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q )
{
  struct cx231xx_buffer *buf ;
  {
  buf = dev->vbi_mode.bulk_ctl.buf;
  if ((unsigned long )buf == (unsigned long )((struct cx231xx_buffer *)0)) {
    get_next_vbi_buf(dma_q, & buf);
    dma_q->pos = 0;
    dma_q->current_field = -1;
  } else {
  }
  dma_q->bytes_left_in_line = (u32 )(dev->width << 1);
  dma_q->lines_completed = 0U;
  return;
}
}
int cx231xx_do_vbi_copy(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q , u8 *p_buffer ,
                        u32 bytes_to_copy )
{
  u8 *p_out_buffer ;
  u32 current_line_bytes_copied ;
  struct cx231xx_buffer *buf ;
  u32 _line_size ;
  void *startwrite ;
  int offset ;
  int lencopy ;
  void *tmp ;
  {
  p_out_buffer = (u8 *)0U;
  current_line_bytes_copied = 0U;
  _line_size = (u32 )(dev->width << 1);
  buf = dev->vbi_mode.bulk_ctl.buf;
  if ((unsigned long )buf == (unsigned long )((struct cx231xx_buffer *)0)) {
    return (-22);
  } else {
  }
  tmp = videobuf_to_vmalloc(& buf->vb);
  p_out_buffer = (u8 *)tmp;
  if (dma_q->bytes_left_in_line != _line_size) {
    current_line_bytes_copied = _line_size - dma_q->bytes_left_in_line;
  } else {
  }
  offset = (int )(dma_q->lines_completed * _line_size + current_line_bytes_copied);
  if (dma_q->current_field == 2) {
    offset = (int )(((u32 )dev->width * dma_q->lines_per_field) * 2U + (u32 )offset);
  } else {
  }
  startwrite = (void *)p_out_buffer + (unsigned long )offset;
  lencopy = (int )(bytes_to_copy < dma_q->bytes_left_in_line ? bytes_to_copy : dma_q->bytes_left_in_line);
  memcpy(startwrite, (void const *)p_buffer, (size_t )lencopy);
  return (0);
}
}
u8 cx231xx_is_vbi_buffer_done(struct cx231xx *dev , struct cx231xx_dmaqueue *dma_q )
{
  u32 height ;
  {
  height = 0U;
  height = (dev->norm & 16713471ULL) != 0ULL ? 18U : 12U;
  if (dma_q->lines_completed == height && dma_q->current_field == 2) {
    return (1U);
  } else {
    return (0U);
  }
}
}
int ldv_retval_2 ;
void ldv_videobuf_queue_ops_2(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(608UL);
  cx231xx_vbi_qops_group1 = (struct videobuf_queue *)tmp;
  tmp___0 = ldv_init_zalloc(240UL);
  cx231xx_vbi_qops_group2 = (struct videobuf_buffer *)tmp___0;
  return;
}
}
void ldv_main_exported_2(void)
{
  unsigned int *ldvarg69 ;
  void *tmp ;
  unsigned int *ldvarg68 ;
  void *tmp___0 ;
  enum v4l2_field ldvarg70 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(4UL);
  ldvarg69 = (unsigned int *)tmp;
  tmp___0 = ldv_init_zalloc(4UL);
  ldvarg68 = (unsigned int *)tmp___0;
  ldv_memset((void *)(& ldvarg70), 0, 4UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_2 == 1) {
    ldv_retval_2 = vbi_buffer_prepare(cx231xx_vbi_qops_group1, cx231xx_vbi_qops_group2,
                                      ldvarg70);
    if (ldv_retval_2 == 0) {
      ldv_state_variable_2 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_52564;
  case 1: ;
  if (ldv_state_variable_2 == 2) {
    vbi_buffer_release(cx231xx_vbi_qops_group1, cx231xx_vbi_qops_group2);
    ldv_state_variable_2 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_52564;
  case 2: ;
  if (ldv_state_variable_2 == 1) {
    vbi_buffer_setup(cx231xx_vbi_qops_group1, ldvarg69, ldvarg68);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    vbi_buffer_setup(cx231xx_vbi_qops_group1, ldvarg69, ldvarg68);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_52564;
  case 3: ;
  if (ldv_state_variable_2 == 1) {
    vbi_buffer_queue(cx231xx_vbi_qops_group1, cx231xx_vbi_qops_group2);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    vbi_buffer_queue(cx231xx_vbi_qops_group1, cx231xx_vbi_qops_group2);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_52564;
  default:
  ldv_stop();
  }
  ldv_52564: ;
  return;
}
}
bool ldv_queue_work_on_109(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_110(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_111(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_112(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_113(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
__inline static long ldv__builtin_expect(long exp , long c ) ;
bool ldv_queue_work_on_123(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_125(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_124(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_127(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_126(struct workqueue_struct *ldv_func_arg1 ) ;
extern struct i2c_client *i2c_new_device(struct i2c_adapter * , struct i2c_board_info const * ) ;
extern void i2c_unregister_device(struct i2c_client * ) ;
extern struct rc_dev *rc_allocate_device(void) ;
extern u8 const byte_rev_table[256U] ;
__inline static u8 __bitrev8(u8 byte )
{
  {
  return ((u8 )byte_rev_table[(int )byte]);
}
}
static int get_key_isdbt(struct IR_i2c *ir , enum rc_type *protocol , u32 *pscancode ,
                         u8 *toggle )
{
  int rc ;
  u8 cmd ;
  u8 scancode ;
  struct _ddebug descriptor ;
  long tmp ;
  u8 __x ;
  u8 tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  {
  descriptor.modname = "cx231xx";
  descriptor.function = "get_key_isdbt";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-input.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 33U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& ((ir->rc)->input_dev)->dev),
                      "%s\n", "get_key_isdbt");
  } else {
  }
  rc = i2c_master_recv((struct i2c_client const *)ir->c, (char *)(& cmd), 1);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if (rc != 1) {
    return (-5);
  } else {
  }
  if ((unsigned int )cmd == 255U) {
    return (0);
  } else {
  }
  __x = cmd;
  tmp___0 = __bitrev8((int )__x);
  scancode = (u8 )((int )tmp___0);
  descriptor___0.modname = "cx231xx";
  descriptor___0.function = "get_key_isdbt";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-input.c";
  descriptor___0.format = "cmd %02x, scan = %02x\n";
  descriptor___0.lineno = 52U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& ((ir->rc)->input_dev)->dev),
                      "cmd %02x, scan = %02x\n", (int )cmd, (int )scancode);
  } else {
  }
  *protocol = 1;
  *pscancode = (u32 )scancode;
  *toggle = 0U;
  return (1);
}
}
int cx231xx_ir_init(struct cx231xx *dev )
{
  struct i2c_board_info info ;
  u8 ir_i2c_bus ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct i2c_adapter *tmp___1 ;
  {
  descriptor.modname = "cx231xx";
  descriptor.function = "cx231xx_ir_init";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-input.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 65U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "%s\n", "cx231xx_ir_init");
  } else {
  }
  if ((unsigned long )cx231xx_boards[dev->model].rc_map_name == (unsigned long )((char *)0)) {
    return (-19);
  } else {
  }
  __request_module(1, "ir-kbd-i2c");
  memset((void *)(& info), 0, 64UL);
  memset((void *)(& dev->init_data), 0, 56UL);
  dev->init_data.rc_dev = rc_allocate_device();
  if ((unsigned long )dev->init_data.rc_dev == (unsigned long )((struct rc_dev *)0)) {
    return (-12);
  } else {
  }
  dev->init_data.name = (char const *)cx231xx_boards[dev->model].name;
  strlcpy((char *)(& info.type), "ir_video", 20UL);
  info.platform_data = (void *)(& dev->init_data);
  dev->init_data.get_key = & get_key_isdbt;
  dev->init_data.ir_codes = cx231xx_boards[dev->model].rc_map_name;
  (dev->init_data.rc_dev)->scancode_mask = 255U;
  (dev->init_data.rc_dev)->driver_name = (char *)"cx231xx";
  dev->init_data.type = 1024ULL;
  info.addr = 48U;
  ir_i2c_bus = cx231xx_boards[dev->model].ir_i2c_master;
  descriptor___0.modname = "cx231xx";
  descriptor___0.function = "cx231xx_ir_init";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3986/dscv_tempdir/dscv/ri/08_1a/drivers/media/usb/cx231xx/cx231xx-input.c";
  descriptor___0.format = "Trying to bind ir at bus %d, addr 0x%02x\n";
  descriptor___0.lineno = 101U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev->dev, "Trying to bind ir at bus %d, addr 0x%02x\n",
                      (int )ir_i2c_bus, (int )info.addr);
  } else {
  }
  tmp___1 = cx231xx_get_i2c_adap(dev, (int )ir_i2c_bus);
  dev->ir_i2c_client = i2c_new_device(tmp___1, (struct i2c_board_info const *)(& info));
  return (0);
}
}
void cx231xx_ir_exit(struct cx231xx *dev )
{
  {
  if ((unsigned long )dev->ir_i2c_client != (unsigned long )((struct i2c_client *)0)) {
    i2c_unregister_device(dev->ir_i2c_client);
  } else {
  }
  dev->ir_i2c_client = (struct i2c_client *)0;
  return;
}
}
bool ldv_queue_work_on_123(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_124(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_125(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_126(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_127(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void __const_udelay(unsigned long arg0) {
  return;
}
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
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
int __VERIFIER_nondet_int(void);
int __media_device_register(struct media_device *arg0, struct module *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __request_module(bool arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __video_register_device(struct video_device *arg0, int arg1, int arg2, int arg3, struct module *arg4) {
  return __VERIFIER_nondet_int();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
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
int __VERIFIER_nondet_int(void);
int cx2341x_handler_init(struct cx2341x_handler *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void cx2341x_handler_set_50hz(struct cx2341x_handler *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int cx2341x_handler_setup(struct cx2341x_handler *arg0) {
  return __VERIFIER_nondet_int();
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
void *devm_kmalloc(struct device *arg0, size_t arg1, gfp_t arg2) {
  return ldv_malloc(0UL);
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_first_zero_bit(const unsigned long *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
bool __VERIFIER_nondet_bool(void);
bool flush_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int i2c_add_adapter(struct i2c_adapter *arg0) {
  return __VERIFIER_nondet_int();
}
struct i2c_adapter *i2c_add_mux_adapter(struct i2c_adapter *arg0, struct device *arg1, void *arg2, u32 arg3, u32 arg4, unsigned int arg5, int (*arg6)(struct i2c_adapter *, void *, u32 ), int (*arg7)(struct i2c_adapter *, void *, u32 )) {
  return ldv_malloc(sizeof(struct i2c_adapter));
}
void i2c_del_adapter(struct i2c_adapter *arg0) {
  return;
}
void i2c_del_mux_adapter(struct i2c_adapter *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int i2c_master_recv(const struct i2c_client *arg0, char *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
struct i2c_client *i2c_new_device(struct i2c_adapter *arg0, const struct i2c_board_info *arg1) {
  return ldv_malloc(sizeof(struct i2c_client));
}
int __VERIFIER_nondet_int(void);
int i2c_transfer(struct i2c_adapter *arg0, struct i2c_msg *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void i2c_unregister_device(struct i2c_client *arg0) {
  return;
}
void ldv__builtin_va_arg(__builtin_va_list arg0, unsigned long arg1, void *arg2) {
  return;
}
void ldv__builtin_va_end(__builtin_va_list *arg0) {
  return;
}
void ldv__builtin_va_start(__builtin_va_list *arg0) {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_probe_11() {
  return __VERIFIER_nondet_int();
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void media_device_unregister(struct media_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int media_entity_create_link(struct media_entity *arg0, u16 arg1, struct media_entity *arg2, u16 arg3, u32 arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int media_entity_init(struct media_entity *arg0, u16 arg1, struct media_pad *arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int media_entity_setup_link(struct media_link *arg0, u32 arg1) {
  return __VERIFIER_nondet_int();
}
void msleep(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_lock_interruptible_nested(struct mutex *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
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
struct rc_dev *rc_allocate_device() {
  return ldv_malloc(sizeof(struct rc_dev));
}
void release_firmware(const struct firmware *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_firmware(const struct firmware **arg0, const char *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void tveeprom_hauppauge_analog(struct i2c_client *arg0, struct tveeprom *arg1, unsigned char *arg2) {
  return;
}
void *usb_alloc_coherent(struct usb_device *arg0, size_t arg1, gfp_t arg2, dma_addr_t *arg3) {
  return ldv_malloc(0UL);
}
struct urb *usb_alloc_urb(int arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct urb));
}
int __VERIFIER_nondet_int(void);
int usb_bulk_msg(struct usb_device *arg0, unsigned int arg1, void *arg2, int arg3, int *arg4, int arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_clear_halt(struct usb_device *arg0, int arg1) {
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
struct usb_device *usb_get_dev(struct usb_device *arg0) {
  return ldv_malloc(sizeof(struct usb_device));
}
void usb_kill_urb(struct urb *arg0) {
  return;
}
void usb_put_dev(struct usb_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_set_interface(struct usb_device *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_submit_urb(struct urb *arg0, gfp_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_unlink_urb(struct urb *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_add_handler(struct v4l2_ctrl_handler *arg0, struct v4l2_ctrl_handler *arg1, bool (*arg2)(const struct v4l2_ctrl *)) {
  return __VERIFIER_nondet_int();
}
void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler *arg0, unsigned int arg1, struct lock_class_key *arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_log_status(struct file *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int v4l2_ctrl_poll(struct file *arg0, struct poll_table_struct *arg1) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_subscribe_event(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register(struct device *arg0, struct v4l2_device *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_device_unregister(struct v4l2_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_event_pending(struct v4l2_fh *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_event_unsubscribe(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_fh_add(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_del(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_exit(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_init(struct v4l2_fh *arg0, struct video_device *arg1) {
  return;
}
void v4l2_get_timestamp(struct timeval *arg0) {
  return;
}
struct v4l2_subdev *v4l2_i2c_new_subdev(struct v4l2_device *arg0, struct i2c_adapter *arg1, const char *arg2, u8 arg3, const unsigned short *arg4) {
  return ldv_malloc(sizeof(struct v4l2_subdev));
}
void v4l_bound_align_image(unsigned int *arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int *arg4, unsigned int arg5, unsigned int arg6, unsigned int arg7, unsigned int arg8) {
  return;
}
void vfree(const void *arg0) {
  return;
}
struct video_device *video_devdata(struct file *arg0) {
  return ldv_malloc(sizeof(struct video_device));
}
void video_device_release_empty(struct video_device *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int video_ioctl2(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
void video_unregister_device(struct video_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int videobuf_dqbuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_iolock(struct videobuf_queue *arg0, struct videobuf_buffer *arg1, struct v4l2_framebuffer *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_mmap_free(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_mmap_mapper(struct videobuf_queue *arg0, struct vm_area_struct *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int videobuf_poll_stream(struct file *arg0, struct videobuf_queue *arg1, poll_table *arg2) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int videobuf_qbuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_querybuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_queue_is_busy(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
void videobuf_queue_vmalloc_init(struct videobuf_queue *arg0, const struct videobuf_queue_ops *arg1, struct device *arg2, spinlock_t *arg3, enum v4l2_buf_type arg4, enum v4l2_field arg5, unsigned int arg6, void *arg7, struct mutex *arg8) {
  return;
}
void videobuf_read_stop(struct videobuf_queue *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
ssize_t videobuf_read_stream(struct videobuf_queue *arg0, char *arg1, size_t arg2, loff_t *arg3, int arg4, int arg5) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int videobuf_reqbufs(struct videobuf_queue *arg0, struct v4l2_requestbuffers *arg1) {
  return __VERIFIER_nondet_int();
}
void videobuf_stop(struct videobuf_queue *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int videobuf_streamoff(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_streamon(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
void *videobuf_to_vmalloc(struct videobuf_buffer *arg0) {
  return ldv_malloc(0UL);
}
void videobuf_vmalloc_free(struct videobuf_buffer *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int videobuf_waiton(struct videobuf_queue *arg0, struct videobuf_buffer *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void *vmalloc(unsigned long arg0) {
  return ldv_malloc(0UL);
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
