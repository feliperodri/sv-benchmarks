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
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u16 __sum16;
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
struct __anonstruct_mm_segment_t_33 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_33 mm_segment_t;
typedef atomic64_t atomic_long_t;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct ethtool_coalesce;
struct ethtool_cmd;
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
union __anonunion____missing_field_name_220 {
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
   union __anonunion____missing_field_name_220 __annonCompField58 ;
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
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_221 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_221 __annonCompField59 ;
   unsigned long nr_segs ;
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
enum ldv_22324 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_22324 socket_state;
struct poll_table_struct;
struct net;
struct fasync_struct;
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
struct sk_buff;
typedef u64 netdev_features_t;
union __anonunion_in6_u_222 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_222 in6_u ;
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
union __anonunion____missing_field_name_227 {
   struct net_device *physoutdev ;
   char neigh_header[8U] ;
};
union __anonunion____missing_field_name_228 {
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
   union __anonunion____missing_field_name_227 __annonCompField63 ;
   union __anonunion____missing_field_name_228 __annonCompField64 ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
struct skb_frag_struct;
typedef struct skb_frag_struct skb_frag_t;
struct __anonstruct_page_229 {
   struct page *p ;
};
struct skb_frag_struct {
   struct __anonstruct_page_229 page ;
   __u32 page_offset ;
   __u32 size ;
};
struct skb_shared_hwtstamps {
   ktime_t hwtstamp ;
};
struct skb_shared_info {
   unsigned char nr_frags ;
   __u8 tx_flags ;
   unsigned short gso_size ;
   unsigned short gso_segs ;
   unsigned short gso_type ;
   struct sk_buff *frag_list ;
   struct skb_shared_hwtstamps hwtstamps ;
   u32 tskey ;
   __be32 ip6_frag_id ;
   atomic_t dataref ;
   void *destructor_arg ;
   skb_frag_t frags[17U] ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct____missing_field_name_231 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_230 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_231 __annonCompField65 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_230 __annonCompField66 ;
};
union __anonunion____missing_field_name_234 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_233 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_234 __annonCompField67 ;
};
union __anonunion____missing_field_name_232 {
   struct __anonstruct____missing_field_name_233 __annonCompField68 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_236 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_235 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_236 __annonCompField70 ;
};
union __anonunion____missing_field_name_237 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_238 {
   __u32 mark ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_239 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_232 __annonCompField69 ;
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
   union __anonunion____missing_field_name_235 __annonCompField71 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_237 __annonCompField72 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_238 __annonCompField73 ;
   union __anonunion____missing_field_name_239 __annonCompField74 ;
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
struct rtable;
struct iphdr {
   unsigned char ihl : 4 ;
   unsigned char version : 4 ;
   __u8 tos ;
   __be16 tot_len ;
   __be16 id ;
   __be16 frag_off ;
   __u8 ttl ;
   __u8 protocol ;
   __sum16 check ;
   __be32 saddr ;
   __be32 daddr ;
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
struct __anonstruct_sync_serial_settings_241 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_241 sync_serial_settings;
struct __anonstruct_te1_settings_242 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_242 te1_settings;
struct __anonstruct_raw_hdlc_proto_243 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_243 raw_hdlc_proto;
struct __anonstruct_fr_proto_244 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_244 fr_proto;
struct __anonstruct_fr_proto_pvc_245 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_245 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_246 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_246 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_247 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_247 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_248 {
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
   union __anonunion_ifs_ifsu_248 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_249 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_250 {
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
   union __anonunion_ifr_ifrn_249 ifr_ifrn ;
   union __anonunion_ifr_ifru_250 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_255 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_254 {
   struct __anonstruct____missing_field_name_255 __annonCompField75 ;
};
struct lockref {
   union __anonunion____missing_field_name_254 __annonCompField76 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_257 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_256 {
   struct __anonstruct____missing_field_name_257 __annonCompField77 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_256 __annonCompField78 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_258 {
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
   union __anonunion_d_u_258 d_u ;
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
struct __anonstruct____missing_field_name_262 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_261 {
   struct __anonstruct____missing_field_name_262 __annonCompField79 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_261 __annonCompField80 ;
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
struct __anonstruct_kprojid_t_266 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_266 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_267 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_267 __annonCompField82 ;
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
union __anonunion____missing_field_name_270 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_271 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_272 {
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
   union __anonunion____missing_field_name_270 __annonCompField83 ;
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
   union __anonunion____missing_field_name_271 __annonCompField84 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_272 __annonCompField85 ;
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
union __anonunion_f_u_273 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_273 f_u ;
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
struct __anonstruct_afs_275 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_274 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_275 afs ;
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
   union __anonunion_fl_u_274 fl_u ;
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
struct icmpv6_mib_device {
   atomic_long_t mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6msg_mib_device {
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
struct __anonstruct_possible_net_t_306 {
   struct net *net ;
};
typedef struct __anonstruct_possible_net_t_306 possible_net_t;
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
enum ldv_28608 {
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
typedef enum ldv_28608 phy_interface_t;
enum ldv_28662 {
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
   enum ldv_28662 state ;
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
struct xfrm_policy;
struct xfrm_state;
struct request_sock;
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
enum gro_result {
    GRO_MERGED = 0,
    GRO_MERGED_FREE = 1,
    GRO_HELD = 2,
    GRO_NORMAL = 3,
    GRO_DROP = 4
} ;
typedef enum gro_result gro_result_t;
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
struct __anonstruct_adj_list_316 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_317 {
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
union __anonunion____missing_field_name_318 {
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
   struct __anonstruct_adj_list_316 adj_list ;
   struct __anonstruct_all_adj_list_317 all_adj_list ;
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
   union __anonunion____missing_field_name_318 __annonCompField95 ;
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
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
struct page_counter {
   atomic_long_t count ;
   unsigned long limit ;
   struct page_counter *parent ;
   unsigned long watermark ;
   unsigned long failcnt ;
};
struct sock_filter {
   __u16 code ;
   __u8 jt ;
   __u8 jf ;
   __u32 k ;
};
struct bpf_insn {
   __u8 code ;
   unsigned char dst_reg : 4 ;
   unsigned char src_reg : 4 ;
   __s16 off ;
   __s32 imm ;
};
enum bpf_prog_type {
    BPF_PROG_TYPE_UNSPEC = 0,
    BPF_PROG_TYPE_SOCKET_FILTER = 1,
    BPF_PROG_TYPE_KPROBE = 2,
    BPF_PROG_TYPE_SCHED_CLS = 3,
    BPF_PROG_TYPE_SCHED_ACT = 4
} ;
struct bpf_prog_aux;
struct sock_fprog_kern {
   u16 len ;
   struct sock_filter *filter ;
};
union __anonunion____missing_field_name_329 {
   struct sock_filter insns[0U] ;
   struct bpf_insn insnsi[0U] ;
};
struct bpf_prog {
   u16 pages ;
   bool jited ;
   bool gpl_compatible ;
   u32 len ;
   enum bpf_prog_type type ;
   struct bpf_prog_aux *aux ;
   struct sock_fprog_kern *orig_prog ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct bpf_insn const * ) ;
   union __anonunion____missing_field_name_329 __annonCompField100 ;
};
struct sk_filter {
   atomic_t refcnt ;
   struct callback_head rcu ;
   struct bpf_prog *prog ;
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
struct nla_policy {
   u16 type ;
   u16 len ;
};
struct rtnl_link_ops {
   struct list_head list ;
   char const *kind ;
   size_t priv_size ;
   void (*setup)(struct net_device * ) ;
   int maxtype ;
   struct nla_policy const *policy ;
   int (*validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*newlink)(struct net * , struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   int (*changelink)(struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   void (*dellink)(struct net_device * , struct list_head * ) ;
   size_t (*get_size)(struct net_device const * ) ;
   int (*fill_info)(struct sk_buff * , struct net_device const * ) ;
   size_t (*get_xstats_size)(struct net_device const * ) ;
   int (*fill_xstats)(struct sk_buff * , struct net_device const * ) ;
   unsigned int (*get_num_tx_queues)(void) ;
   unsigned int (*get_num_rx_queues)(void) ;
   int slave_maxtype ;
   struct nla_policy const *slave_policy ;
   int (*slave_validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*slave_changelink)(struct net_device * , struct net_device * , struct nlattr ** ,
                           struct nlattr ** ) ;
   size_t (*get_slave_size)(struct net_device const * , struct net_device const * ) ;
   int (*fill_slave_info)(struct sk_buff * , struct net_device const * , struct net_device const * ) ;
   struct net *(*get_link_net)(struct net_device const * ) ;
};
struct neigh_table;
struct neigh_parms {
   possible_net_t net ;
   struct net_device *dev ;
   struct list_head list ;
   int (*neigh_setup)(struct neighbour * ) ;
   void (*neigh_cleanup)(struct neighbour * ) ;
   struct neigh_table *tbl ;
   void *sysctl_table ;
   int dead ;
   atomic_t refcnt ;
   struct callback_head callback_head ;
   int reachable_time ;
   int data[13U] ;
   unsigned long data_state[1U] ;
};
struct neigh_statistics {
   unsigned long allocs ;
   unsigned long destroys ;
   unsigned long hash_grows ;
   unsigned long res_failed ;
   unsigned long lookups ;
   unsigned long hits ;
   unsigned long rcv_probes_mcast ;
   unsigned long rcv_probes_ucast ;
   unsigned long periodic_gc_runs ;
   unsigned long forced_gc_runs ;
   unsigned long unres_discards ;
};
struct neigh_ops;
struct neighbour {
   struct neighbour *next ;
   struct neigh_table *tbl ;
   struct neigh_parms *parms ;
   unsigned long confirmed ;
   unsigned long updated ;
   rwlock_t lock ;
   atomic_t refcnt ;
   struct sk_buff_head arp_queue ;
   unsigned int arp_queue_len_bytes ;
   struct timer_list timer ;
   unsigned long used ;
   atomic_t probes ;
   __u8 flags ;
   __u8 nud_state ;
   __u8 type ;
   __u8 dead ;
   seqlock_t ha_lock ;
   unsigned char ha[32U] ;
   struct hh_cache hh ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   struct neigh_ops const *ops ;
   struct callback_head rcu ;
   struct net_device *dev ;
   u8 primary_key[0U] ;
};
struct neigh_ops {
   int family ;
   void (*solicit)(struct neighbour * , struct sk_buff * ) ;
   void (*error_report)(struct neighbour * , struct sk_buff * ) ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   int (*connected_output)(struct neighbour * , struct sk_buff * ) ;
};
struct pneigh_entry {
   struct pneigh_entry *next ;
   possible_net_t net ;
   struct net_device *dev ;
   u8 flags ;
   u8 key[0U] ;
};
struct neigh_hash_table {
   struct neighbour **hash_buckets ;
   unsigned int hash_shift ;
   __u32 hash_rnd[4U] ;
   struct callback_head rcu ;
};
struct neigh_table {
   int family ;
   int entry_size ;
   int key_len ;
   __be16 protocol ;
   __u32 (*hash)(void const * , struct net_device const * , __u32 * ) ;
   bool (*key_eq)(struct neighbour const * , void const * ) ;
   int (*constructor)(struct neighbour * ) ;
   int (*pconstructor)(struct pneigh_entry * ) ;
   void (*pdestructor)(struct pneigh_entry * ) ;
   void (*proxy_redo)(struct sk_buff * ) ;
   char *id ;
   struct neigh_parms parms ;
   struct list_head parms_list ;
   int gc_interval ;
   int gc_thresh1 ;
   int gc_thresh2 ;
   int gc_thresh3 ;
   unsigned long last_flush ;
   struct delayed_work gc_work ;
   struct timer_list proxy_timer ;
   struct sk_buff_head proxy_queue ;
   atomic_t entries ;
   rwlock_t lock ;
   unsigned long last_rand ;
   struct neigh_statistics *stats ;
   struct neigh_hash_table *nht ;
   struct pneigh_entry **phash_buckets ;
};
struct dn_route;
union __anonunion____missing_field_name_340 {
   struct dst_entry *next ;
   struct rtable *rt_next ;
   struct rt6_info *rt6_next ;
   struct dn_route *dn_next ;
};
struct dst_entry {
   struct callback_head callback_head ;
   struct dst_entry *child ;
   struct net_device *dev ;
   struct dst_ops *ops ;
   unsigned long _metrics ;
   unsigned long expires ;
   struct dst_entry *path ;
   struct dst_entry *from ;
   struct xfrm_state *xfrm ;
   int (*input)(struct sk_buff * ) ;
   int (*output)(struct sock * , struct sk_buff * ) ;
   unsigned short flags ;
   unsigned short pending_confirm ;
   short error ;
   short obsolete ;
   unsigned short header_len ;
   unsigned short trailer_len ;
   __u32 tclassid ;
   long __pad_to_align_refcnt[2U] ;
   atomic_t __refcnt ;
   int __use ;
   unsigned long lastuse ;
   union __anonunion____missing_field_name_340 __annonCompField101 ;
};
struct hwtstamp_config {
   int flags ;
   int tx_type ;
   int rx_filter ;
};
struct __anonstruct_socket_lock_t_341 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_341 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct____missing_field_name_343 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion____missing_field_name_342 {
   __addrpair skc_addrpair ;
   struct __anonstruct____missing_field_name_343 __annonCompField102 ;
};
union __anonunion____missing_field_name_344 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct____missing_field_name_346 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion____missing_field_name_345 {
   __portpair skc_portpair ;
   struct __anonstruct____missing_field_name_346 __annonCompField105 ;
};
union __anonunion____missing_field_name_347 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion____missing_field_name_348 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion____missing_field_name_342 __annonCompField103 ;
   union __anonunion____missing_field_name_344 __annonCompField104 ;
   union __anonunion____missing_field_name_345 __annonCompField106 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 1 ;
   unsigned char skc_ipv6only : 1 ;
   unsigned char skc_net_refcnt : 1 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_347 __annonCompField107 ;
   struct proto *skc_prot ;
   possible_net_t skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   atomic64_t skc_cookie ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_348 __annonCompField108 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_349 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_349 sk_backlog ;
   int sk_forward_alloc ;
   __u32 sk_rxhash ;
   u16 sk_incoming_cpu ;
   __u32 sk_txhash ;
   unsigned int sk_napi_id ;
   unsigned int sk_ll_usec ;
   atomic_t sk_drops ;
   int sk_rcvbuf ;
   struct sk_filter *sk_filter ;
   struct socket_wq *sk_wq ;
   struct xfrm_policy *sk_policy[2U] ;
   unsigned long sk_flags ;
   struct dst_entry *sk_rx_dst ;
   struct dst_entry *sk_dst_cache ;
   spinlock_t sk_dst_lock ;
   atomic_t sk_wmem_alloc ;
   atomic_t sk_omem_alloc ;
   int sk_sndbuf ;
   struct sk_buff_head sk_write_queue ;
   unsigned char sk_shutdown : 2 ;
   unsigned char sk_no_check_tx : 1 ;
   unsigned char sk_no_check_rx : 1 ;
   unsigned char sk_userlocks : 4 ;
   unsigned char sk_protocol ;
   unsigned short sk_type ;
   int sk_wmem_queued ;
   gfp_t sk_allocation ;
   u32 sk_pacing_rate ;
   u32 sk_max_pacing_rate ;
   netdev_features_t sk_route_caps ;
   netdev_features_t sk_route_nocaps ;
   int sk_gso_type ;
   unsigned int sk_gso_max_size ;
   u16 sk_gso_max_segs ;
   int sk_rcvlowat ;
   unsigned long sk_lingertime ;
   struct sk_buff_head sk_error_queue ;
   struct proto *sk_prot_creator ;
   rwlock_t sk_callback_lock ;
   int sk_err ;
   int sk_err_soft ;
   u32 sk_ack_backlog ;
   u32 sk_max_ack_backlog ;
   __u32 sk_priority ;
   __u32 sk_cgrp_prioidx ;
   struct pid *sk_peer_pid ;
   struct cred const *sk_peer_cred ;
   long sk_rcvtimeo ;
   long sk_sndtimeo ;
   struct timer_list sk_timer ;
   ktime_t sk_stamp ;
   u16 sk_tsflags ;
   u32 sk_tskey ;
   struct socket *sk_socket ;
   void *sk_user_data ;
   struct page_frag sk_frag ;
   struct sk_buff *sk_send_head ;
   __s32 sk_peek_off ;
   int sk_write_pending ;
   void *sk_security ;
   __u32 sk_mark ;
   u32 sk_classid ;
   struct cg_proto *sk_cgrp ;
   void (*sk_state_change)(struct sock * ) ;
   void (*sk_data_ready)(struct sock * ) ;
   void (*sk_write_space)(struct sock * ) ;
   void (*sk_error_report)(struct sock * ) ;
   int (*sk_backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*sk_destruct)(struct sock * ) ;
};
struct request_sock_ops;
struct timewait_sock_ops;
struct inet_hashinfo;
struct raw_hashinfo;
struct udp_table;
union __anonunion_h_352 {
   struct inet_hashinfo *hashinfo ;
   struct udp_table *udp_table ;
   struct raw_hashinfo *raw_hash ;
};
struct proto {
   void (*close)(struct sock * , long ) ;
   int (*connect)(struct sock * , struct sockaddr * , int ) ;
   int (*disconnect)(struct sock * , int ) ;
   struct sock *(*accept)(struct sock * , int , int * ) ;
   int (*ioctl)(struct sock * , int , unsigned long ) ;
   int (*init)(struct sock * ) ;
   void (*destroy)(struct sock * ) ;
   void (*shutdown)(struct sock * , int ) ;
   int (*setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_ioctl)(struct sock * , unsigned int , unsigned long ) ;
   int (*sendmsg)(struct sock * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct sock * , struct msghdr * , size_t , int , int , int * ) ;
   int (*sendpage)(struct sock * , struct page * , int , size_t , int ) ;
   int (*bind)(struct sock * , struct sockaddr * , int ) ;
   int (*backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*release_cb)(struct sock * ) ;
   void (*hash)(struct sock * ) ;
   void (*unhash)(struct sock * ) ;
   void (*rehash)(struct sock * ) ;
   int (*get_port)(struct sock * , unsigned short ) ;
   void (*clear_sk)(struct sock * , int ) ;
   unsigned int inuse_idx ;
   bool (*stream_memory_free)(struct sock const * ) ;
   void (*enter_memory_pressure)(struct sock * ) ;
   atomic_long_t *memory_allocated ;
   struct percpu_counter *sockets_allocated ;
   int *memory_pressure ;
   long *sysctl_mem ;
   int *sysctl_wmem ;
   int *sysctl_rmem ;
   int max_header ;
   bool no_autobind ;
   struct kmem_cache *slab ;
   unsigned int obj_size ;
   int slab_flags ;
   struct percpu_counter *orphan_count ;
   struct request_sock_ops *rsk_prot ;
   struct timewait_sock_ops *twsk_prot ;
   union __anonunion_h_352 h ;
   struct module *owner ;
   char name[32U] ;
   struct list_head node ;
   int (*init_cgroup)(struct mem_cgroup * , struct cgroup_subsys * ) ;
   void (*destroy_cgroup)(struct mem_cgroup * ) ;
   struct cg_proto *(*proto_cgroup)(struct mem_cgroup * ) ;
};
struct cg_proto {
   struct page_counter memory_allocated ;
   struct percpu_counter sockets_allocated ;
   int memory_pressure ;
   long sysctl_mem[3U] ;
   unsigned long flags ;
   struct mem_cgroup *memcg ;
};
struct request_sock_ops {
   int family ;
   int obj_size ;
   struct kmem_cache *slab ;
   char *slab_name ;
   int (*rtx_syn_ack)(struct sock * , struct request_sock * ) ;
   void (*send_ack)(struct sock * , struct sk_buff * , struct request_sock * ) ;
   void (*send_reset)(struct sock * , struct sk_buff * ) ;
   void (*destructor)(struct request_sock * ) ;
   void (*syn_ack_timeout)(struct request_sock const * ) ;
};
struct request_sock {
   struct sock_common __req_common ;
   struct request_sock *dl_next ;
   struct sock *rsk_listener ;
   u16 mss ;
   u8 num_retrans ;
   unsigned char cookie_ts : 1 ;
   unsigned char num_timeout : 7 ;
   u32 window_clamp ;
   u32 rcv_wnd ;
   u32 ts_recent ;
   struct timer_list rsk_timer ;
   struct request_sock_ops const *rsk_ops ;
   struct sock *sk ;
   u32 *saved_syn ;
   u32 secid ;
   u32 peer_secid ;
};
struct ipv6hdr {
   unsigned char priority : 4 ;
   unsigned char version : 4 ;
   __u8 flow_lbl[3U] ;
   __be16 payload_len ;
   __u8 nexthdr ;
   __u8 hop_limit ;
   struct in6_addr saddr ;
   struct in6_addr daddr ;
};
struct ipv6_stable_secret {
   bool initialized ;
   struct in6_addr secret ;
};
struct ipv6_devconf {
   __s32 forwarding ;
   __s32 hop_limit ;
   __s32 mtu6 ;
   __s32 accept_ra ;
   __s32 accept_redirects ;
   __s32 autoconf ;
   __s32 dad_transmits ;
   __s32 rtr_solicits ;
   __s32 rtr_solicit_interval ;
   __s32 rtr_solicit_delay ;
   __s32 force_mld_version ;
   __s32 mldv1_unsolicited_report_interval ;
   __s32 mldv2_unsolicited_report_interval ;
   __s32 use_tempaddr ;
   __s32 temp_valid_lft ;
   __s32 temp_prefered_lft ;
   __s32 regen_max_retry ;
   __s32 max_desync_factor ;
   __s32 max_addresses ;
   __s32 accept_ra_defrtr ;
   __s32 accept_ra_pinfo ;
   __s32 accept_ra_rtr_pref ;
   __s32 rtr_probe_interval ;
   __s32 accept_ra_rt_info_max_plen ;
   __s32 proxy_ndp ;
   __s32 accept_source_route ;
   __s32 accept_ra_from_local ;
   __s32 optimistic_dad ;
   __s32 use_optimistic ;
   __s32 mc_forwarding ;
   __s32 disable_ipv6 ;
   __s32 accept_dad ;
   __s32 force_tllao ;
   __s32 ndisc_notify ;
   __s32 suppress_frag_ndisc ;
   __s32 accept_ra_mtu ;
   struct ipv6_stable_secret stable_secret ;
   void *sysctl ;
};
struct timewait_sock_ops {
   struct kmem_cache *twsk_slab ;
   char *twsk_slab_name ;
   unsigned int twsk_obj_size ;
   int (*twsk_unique)(struct sock * , struct sock * , void * ) ;
   void (*twsk_destructor)(struct sock * ) ;
};
struct ip6_sf_list {
   struct ip6_sf_list *sf_next ;
   struct in6_addr sf_addr ;
   unsigned long sf_count[2U] ;
   unsigned char sf_gsresp ;
   unsigned char sf_oldin ;
   unsigned char sf_crcount ;
};
struct ifmcaddr6 {
   struct in6_addr mca_addr ;
   struct inet6_dev *idev ;
   struct ifmcaddr6 *next ;
   struct ip6_sf_list *mca_sources ;
   struct ip6_sf_list *mca_tomb ;
   unsigned int mca_sfmode ;
   unsigned char mca_crcount ;
   unsigned long mca_sfcount[2U] ;
   struct timer_list mca_timer ;
   unsigned int mca_flags ;
   int mca_users ;
   atomic_t mca_refcnt ;
   spinlock_t mca_lock ;
   unsigned long mca_cstamp ;
   unsigned long mca_tstamp ;
};
struct ifacaddr6 {
   struct in6_addr aca_addr ;
   struct inet6_dev *aca_idev ;
   struct rt6_info *aca_rt ;
   struct ifacaddr6 *aca_next ;
   int aca_users ;
   atomic_t aca_refcnt ;
   unsigned long aca_cstamp ;
   unsigned long aca_tstamp ;
};
struct ipv6_devstat {
   struct proc_dir_entry *proc_dir_entry ;
   struct ipstats_mib *ipv6 ;
   struct icmpv6_mib_device *icmpv6dev ;
   struct icmpv6msg_mib_device *icmpv6msgdev ;
};
struct inet6_dev {
   struct net_device *dev ;
   struct list_head addr_list ;
   struct ifmcaddr6 *mc_list ;
   struct ifmcaddr6 *mc_tomb ;
   spinlock_t mc_lock ;
   unsigned char mc_qrv ;
   unsigned char mc_gq_running ;
   unsigned char mc_ifc_count ;
   unsigned char mc_dad_count ;
   unsigned long mc_v1_seen ;
   unsigned long mc_qi ;
   unsigned long mc_qri ;
   unsigned long mc_maxdelay ;
   struct timer_list mc_gq_timer ;
   struct timer_list mc_ifc_timer ;
   struct timer_list mc_dad_timer ;
   struct ifacaddr6 *ac_list ;
   rwlock_t lock ;
   atomic_t refcnt ;
   __u32 if_flags ;
   int dead ;
   u8 rndid[8U] ;
   struct timer_list regen_timer ;
   struct list_head tempaddr_list ;
   struct in6_addr token ;
   struct neigh_parms *nd_parms ;
   struct ipv6_devconf cnf ;
   struct ipv6_devstat stats ;
   struct timer_list rs_timer ;
   __u8 rs_probes ;
   __u8 addr_gen_mode ;
   unsigned long tstamp ;
   struct callback_head rcu ;
};
union __anonunion____missing_field_name_372 {
   __be32 a4 ;
   __be32 a6[4U] ;
   struct in6_addr in6 ;
};
struct inetpeer_addr_base {
   union __anonunion____missing_field_name_372 __annonCompField110 ;
};
struct inetpeer_addr {
   struct inetpeer_addr_base addr ;
   __u16 family ;
};
union __anonunion____missing_field_name_373 {
   struct list_head gc_list ;
   struct callback_head gc_rcu ;
};
struct __anonstruct____missing_field_name_375 {
   atomic_t rid ;
};
union __anonunion____missing_field_name_374 {
   struct __anonstruct____missing_field_name_375 __annonCompField112 ;
   struct callback_head rcu ;
   struct inet_peer *gc_next ;
};
struct inet_peer {
   struct inet_peer *avl_left ;
   struct inet_peer *avl_right ;
   struct inetpeer_addr daddr ;
   __u32 avl_height ;
   u32 metrics[16U] ;
   u32 rate_tokens ;
   unsigned long rate_last ;
   union __anonunion____missing_field_name_373 __annonCompField111 ;
   union __anonunion____missing_field_name_374 __annonCompField113 ;
   __u32 dtime ;
   atomic_t refcnt ;
};
struct inet_peer_base {
   struct inet_peer *root ;
   seqlock_t lock ;
   int total ;
};
struct uncached_list;
struct rtable {
   struct dst_entry dst ;
   int rt_genid ;
   unsigned int rt_flags ;
   __u16 rt_type ;
   __u8 rt_is_input ;
   __u8 rt_uses_gateway ;
   int rt_iif ;
   __be32 rt_gateway ;
   u32 rt_pmtu ;
   struct list_head rt_uncached ;
   struct uncached_list *rt_uncached_list ;
};
struct vlan_ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_vlan_proto ;
   __be16 h_vlan_TCI ;
   __be16 h_vlan_encapsulated_proto ;
};
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct ptp_clock_time {
   __s64 sec ;
   __u32 nsec ;
   __u32 reserved ;
};
struct ptp_extts_request {
   unsigned int index ;
   unsigned int flags ;
   unsigned int rsv[2U] ;
};
struct ptp_perout_request {
   struct ptp_clock_time start ;
   struct ptp_clock_time period ;
   unsigned int index ;
   unsigned int flags ;
   unsigned int rsv[4U] ;
};
enum ptp_pin_function {
    PTP_PF_NONE = 0,
    PTP_PF_EXTTS = 1,
    PTP_PF_PEROUT = 2,
    PTP_PF_PHYSYNC = 3
} ;
struct ptp_pin_desc {
   char name[64U] ;
   unsigned int index ;
   unsigned int func ;
   unsigned int chan ;
   unsigned int rsv[5U] ;
};
enum ldv_35156 {
    PTP_CLK_REQ_EXTTS = 0,
    PTP_CLK_REQ_PEROUT = 1,
    PTP_CLK_REQ_PPS = 2
} ;
union __anonunion____missing_field_name_382 {
   struct ptp_extts_request extts ;
   struct ptp_perout_request perout ;
};
struct ptp_clock_request {
   enum ldv_35156 type ;
   union __anonunion____missing_field_name_382 __annonCompField115 ;
};
struct ptp_clock_info {
   struct module *owner ;
   char name[16U] ;
   s32 max_adj ;
   int n_alarm ;
   int n_ext_ts ;
   int n_per_out ;
   int n_pins ;
   int pps ;
   struct ptp_pin_desc *pin_config ;
   int (*adjfreq)(struct ptp_clock_info * , s32 ) ;
   int (*adjtime)(struct ptp_clock_info * , s64 ) ;
   int (*gettime64)(struct ptp_clock_info * , struct timespec * ) ;
   int (*settime64)(struct ptp_clock_info * , struct timespec const * ) ;
   int (*enable)(struct ptp_clock_info * , struct ptp_clock_request * , int ) ;
   int (*verify)(struct ptp_clock_info * , unsigned int , enum ptp_pin_function ,
                 unsigned int ) ;
};
struct ptp_clock;
struct octeon_iq_config {
   unsigned char max_iqs ;
   unsigned int pending_list_size ;
   unsigned int instr_type ;
   unsigned char db_min ;
   unsigned short db_timeout ;
   unsigned int reserved ;
};
struct octeon_oq_config {
   unsigned char max_oqs ;
   unsigned int info_ptr ;
   unsigned short refill_threshold ;
   unsigned short oq_intr_pkt ;
   unsigned short oq_intr_time ;
   unsigned short pkts_per_intr ;
   unsigned short reserved ;
};
struct octeon_nic_if_config {
   unsigned short max_txqs ;
   unsigned short num_txqs ;
   unsigned short max_rxqs ;
   unsigned short num_rxqs ;
   unsigned short num_rx_descs ;
   unsigned short num_tx_descs ;
   unsigned short rx_buf_size ;
   unsigned char gmx_port_id ;
   unsigned short base_queue ;
   unsigned long reserved : 56 ;
};
struct octeon_misc_config {
   unsigned char ctrlq_grp : 4 ;
   unsigned char enable_sli_oq_bp : 1 ;
   unsigned int oct_link_query_interval ;
   unsigned int host_link_query_interval ;
};
struct octeon_config {
   u16 card_type ;
   char *card_name ;
   struct octeon_iq_config iq ;
   struct octeon_oq_config oq ;
   struct octeon_nic_if_config nic_if_cfg[32U] ;
   struct octeon_misc_config misc ;
   int num_nic_ports ;
   int num_def_tx_descs ;
   int num_def_rx_descs ;
   int def_rx_buf_size ;
};
union __anonunion_u_384 {
   u16 size[4U] ;
   u64 size64 ;
};
struct octeon_sg_entry {
   union __anonunion_u_384 u ;
   u64 ptr[4U] ;
};
enum octnet_ifflags {
    OCTNET_IFFLAG_PROMISC = 1,
    OCTNET_IFFLAG_ALLMULTI = 2,
    OCTNET_IFFLAG_MULTICAST = 4,
    OCTNET_IFFLAG_BROADCAST = 8,
    OCTNET_IFFLAG_UNICAST = 16
} ;
struct __anonstruct_s_385 {
   unsigned char param3 ;
   unsigned short param2 ;
   unsigned int param1 : 29 ;
   unsigned char more : 6 ;
   unsigned char cmd : 5 ;
};
union octnet_cmd {
   u64 u64 ;
   struct __anonstruct_s_385 s ;
};
struct octeon_instr_ih {
   unsigned int tag ;
   unsigned char tagtype : 2 ;
   unsigned char rs : 1 ;
   unsigned char grp : 4 ;
   unsigned char qos : 3 ;
   unsigned char fsz : 6 ;
   unsigned short dlengsz : 14 ;
   unsigned char gather : 1 ;
   unsigned char raw : 1 ;
};
struct octeon_instr_irh {
   unsigned int ossp ;
   unsigned char reserved : 4 ;
   unsigned short rid : 13 ;
   unsigned char len : 3 ;
   unsigned char subcode : 7 ;
   unsigned char rflag : 1 ;
   unsigned char opcode : 4 ;
};
struct octeon_instr_rdp {
   unsigned short rlen : 12 ;
   unsigned char pcie_port : 3 ;
   unsigned long reserved : 49 ;
};
struct __anonstruct_r_386 {
   unsigned int ossp ;
   unsigned char reserved : 4 ;
   unsigned short rid : 13 ;
   unsigned char len : 3 ;
   unsigned char subcode ;
   unsigned char opcode : 4 ;
};
struct __anonstruct_r_dh_387 {
   unsigned char has_hwtstamp : 1 ;
   unsigned char csum_verified : 3 ;
   unsigned char link ;
   unsigned int extra : 24 ;
   unsigned short rid : 13 ;
   unsigned char len : 3 ;
   unsigned char subcode ;
   unsigned char opcode : 4 ;
};
struct __anonstruct_r_core_drv_init_388 {
   unsigned short app_mode ;
   unsigned char app_cap_flags : 4 ;
   unsigned char max_nic_ports ;
   unsigned char num_gmx_ports ;
   unsigned short rid : 13 ;
   unsigned char len : 3 ;
   unsigned char subcode ;
   unsigned char opcode : 4 ;
};
struct __anonstruct_r_nic_info_389 {
   unsigned char ifidx : 7 ;
   unsigned int extra : 25 ;
   unsigned char reserved : 4 ;
   unsigned short rid : 13 ;
   unsigned char len : 3 ;
   unsigned char subcode ;
   unsigned char opcode : 4 ;
};
union octeon_rh {
   u64 u64 ;
   struct __anonstruct_r_386 r ;
   struct __anonstruct_r_dh_387 r_dh ;
   struct __anonstruct_r_core_drv_init_388 r_core_drv_init ;
   struct __anonstruct_r_nic_info_389 r_nic_info ;
};
struct __anonstruct_s_390 {
   unsigned char ifidx ;
   unsigned short csoffset : 9 ;
   unsigned char tsflag : 1 ;
   unsigned char ipsec_ops : 4 ;
   unsigned char ipv4opts_ipv6exthdr : 2 ;
   unsigned char ip_csum : 1 ;
   unsigned char tnl_csum : 1 ;
   unsigned char reserved : 6 ;
};
union octnic_packet_params {
   u32 u32 ;
   struct __anonstruct_s_390 s ;
};
struct __anonstruct_s_391 {
   unsigned short reserved : 10 ;
   unsigned char pause : 1 ;
   unsigned char interface : 4 ;
   unsigned char autoneg : 1 ;
   unsigned short speed ;
   unsigned short mtu ;
   unsigned char status ;
   unsigned char duplex ;
};
union oct_link_status {
   u64 u64 ;
   struct __anonstruct_s_391 s ;
};
struct oct_link_info {
   union oct_link_status link ;
   u64 hw_addr ;
   u8 ifidx ;
   u8 num_rxpciq ;
   u8 num_txpciq ;
   u8 rsvd[3U] ;
   u16 gmxport ;
   u8 txpciq[32U] ;
   u8 rxpciq[32U] ;
};
struct liquidio_if_cfg_info {
   u64 ifidx ;
   u64 iqmask ;
   u64 oqmask ;
   struct oct_link_info linfo ;
};
struct oct_intrmod_cfg {
   u64 intrmod_enable ;
   u64 intrmod_check_intrvl ;
   u64 intrmod_maxpkt_ratethr ;
   u64 intrmod_minpkt_ratethr ;
   u64 intrmod_maxcnt_trigger ;
   u64 intrmod_maxtmr_trigger ;
   u64 intrmod_mincnt_trigger ;
   u64 intrmod_mintmr_trigger ;
};
struct __anonstruct_s_392 {
   unsigned char reserved ;
   unsigned char gmx_port_id ;
   unsigned short num_oqueues ;
   unsigned short num_iqueues ;
   unsigned short base_queue ;
};
union oct_nic_if_cfg {
   u64 u64 ;
   struct __anonstruct_s_392 s ;
};
struct octeon_droq_desc {
   u64 buffer_ptr ;
   u64 info_ptr ;
};
struct octeon_droq_info {
   union octeon_rh rh ;
   u64 length ;
};
struct octeon_recv_buffer {
   void *buffer ;
   u8 *data ;
};
struct oct_droq_stats {
   u64 pkts_received ;
   u64 bytes_received ;
   u64 dropped_nodispatch ;
   u64 dropped_nomem ;
   u64 dropped_toomany ;
   u64 rx_pkts_received ;
   u64 rx_bytes_received ;
   u64 rx_dropped ;
};
struct octeon_recv_pkt {
   u16 buffer_count ;
   u16 octeon_id ;
   u32 length ;
   union octeon_rh rh ;
   void *buffer_ptr[64U] ;
   u32 buffer_size[64U] ;
};
struct octeon_recv_info {
   void *rsvd ;
   struct octeon_recv_pkt *recv_pkt ;
};
struct octeon_droq_ops {
   void (*fptr)(u32 , void * , u32 , union octeon_rh * , void * ) ;
   void (*napi_fn)(void * ) ;
   u32 poll_mode ;
   u32 drop_on_max ;
};
struct octeon_device;
struct octeon_droq {
   spinlock_t lock ;
   u32 q_no ;
   struct octeon_droq_ops ops ;
   struct octeon_device *oct_dev ;
   struct octeon_droq_desc *desc_ring ;
   u32 read_idx ;
   u32 write_idx ;
   u32 refill_idx ;
   atomic_t pkts_pending ;
   u32 max_count ;
   u32 refill_count ;
   u32 pkts_per_intr ;
   u32 refill_threshold ;
   u32 max_empty_descs ;
   struct octeon_droq_info *info_list ;
   struct octeon_recv_buffer *recv_buf_list ;
   u32 buffer_size ;
   void *pkts_credit_reg ;
   void *pkts_sent_reg ;
   struct list_head dispatch_list ;
   struct oct_droq_stats stats ;
   size_t desc_ring_dma ;
   size_t info_base_addr ;
   size_t info_list_dma ;
   u32 info_alloc_size ;
   void *app_ctx ;
   struct napi_struct napi ;
   u32 cpu_id ;
   struct call_single_data csd ;
};
struct octeon_request_list {
   u32 reqtype ;
   void *buf ;
};
struct oct_iq_stats {
   u64 instr_posted ;
   u64 instr_processed ;
   u64 instr_dropped ;
   u64 bytes_sent ;
   u64 sgentry_sent ;
   u64 tx_done ;
   u64 tx_iq_busy ;
   u64 tx_dropped ;
   u64 tx_tot_bytes ;
};
struct octeon_instr_queue {
   spinlock_t lock ;
   unsigned char iqcmd_64B : 1 ;
   unsigned char iq_no : 5 ;
   unsigned int rsvd : 17 ;
   unsigned char do_auto_flush : 1 ;
   unsigned char status ;
   u32 max_count ;
   u32 host_write_index ;
   u32 octeon_read_index ;
   u32 flush_index ;
   atomic_t instr_pending ;
   u32 reset_instr_cnt ;
   u8 *base_addr ;
   struct octeon_request_list *request_list ;
   void *doorbell_reg ;
   void *inst_cnt_reg ;
   u32 fill_cnt ;
   u32 fill_threshold ;
   u64 last_db_time ;
   u32 db_timeout ;
   struct oct_iq_stats stats ;
   u64 base_addr_dma ;
   void *app_ctx ;
};
struct octeon_instr_64B {
   u64 dptr ;
   u64 ih ;
   u64 irh ;
   u64 ossp[2U] ;
   u64 rdp ;
   u64 rptr ;
   u64 reserved ;
};
struct octeon_soft_command {
   struct list_head node ;
   u64 dma_addr ;
   u32 size ;
   struct octeon_instr_64B cmd ;
   u64 *status_word ;
   void *virtdptr ;
   u64 dmadptr ;
   u32 datasize ;
   void *virtrptr ;
   u64 dmarptr ;
   u32 rdatasize ;
   void *ctxptr ;
   u32 ctxsize ;
   size_t wait_time ;
   size_t timeout ;
   u32 iq_no ;
   void (*callback)(struct octeon_device * , u32 , void * ) ;
   void *callback_arg ;
};
struct octeon_sc_buffer_pool {
   struct list_head head ;
   spinlock_t lock ;
   atomic_t alloc_buf_count ;
};
struct octeon_response_list {
   struct list_head head ;
   spinlock_t lock ;
   atomic_t pending_req_count ;
};
struct octeon_dispatch {
   struct list_head list ;
   u16 opcode ;
   int (*dispatch_fn)(struct octeon_recv_info * , void * ) ;
   void *arg ;
};
struct octeon_dispatch_list {
   spinlock_t lock ;
   u32 count ;
   struct octeon_dispatch *dlist ;
};
struct octeon_mmio {
   u64 start ;
   u32 len ;
   u32 mapped_len ;
   u8 *hw_addr ;
   u32 done ;
};
struct octeon_io_enable {
   u32 iq ;
   u32 oq ;
   u32 iq64B ;
};
struct octeon_reg_list {
   u32 *pci_win_wr_addr_hi ;
   u32 *pci_win_wr_addr_lo ;
   u64 *pci_win_wr_addr ;
   u32 *pci_win_rd_addr_hi ;
   u32 *pci_win_rd_addr_lo ;
   u64 *pci_win_rd_addr ;
   u32 *pci_win_wr_data_hi ;
   u32 *pci_win_wr_data_lo ;
   u64 *pci_win_wr_data ;
   u32 *pci_win_rd_data_hi ;
   u32 *pci_win_rd_data_lo ;
   u64 *pci_win_rd_data ;
};
struct octeon_console {
   u32 active ;
   u32 waiting ;
   u64 addr ;
   u32 buffer_size ;
   u64 input_base_addr ;
   u64 output_base_addr ;
   char leftover[512U] ;
};
struct octeon_board_info {
   char name[32U] ;
   char serial_number[64U] ;
   u64 major ;
   u64 minor ;
};
struct octeon_fn_list {
   void (*setup_iq_regs)(struct octeon_device * , u32 ) ;
   void (*setup_oq_regs)(struct octeon_device * , u32 ) ;
   irqreturn_t (*process_interrupt_regs)(void * ) ;
   int (*soft_reset)(struct octeon_device * ) ;
   int (*setup_device_regs)(struct octeon_device * ) ;
   void (*reinit_regs)(struct octeon_device * ) ;
   void (*bar1_idx_setup)(struct octeon_device * , u64 , u32 , int ) ;
   void (*bar1_idx_write)(struct octeon_device * , u32 , u32 ) ;
   u32 (*bar1_idx_read)(struct octeon_device * , u32 ) ;
   u32 (*update_iq_read_idx)(struct octeon_device * , struct octeon_instr_queue * ) ;
   void (*enable_oq_pkt_time_intr)(struct octeon_device * , u32 ) ;
   void (*disable_oq_pkt_time_intr)(struct octeon_device * , u32 ) ;
   void (*enable_interrupt)(void * ) ;
   void (*disable_interrupt)(void * ) ;
   void (*enable_io_queues)(struct octeon_device * ) ;
   void (*disable_io_queues)(struct octeon_device * ) ;
};
struct cvmx_bootmem_named_block_desc {
   u64 base_addr ;
   u64 size ;
   char name[128U] ;
};
struct oct_fw_info {
   u32 max_nic_ports ;
   u32 num_gmx_ports ;
   u64 app_cap_flags ;
   u32 app_mode ;
   char liquidio_firmware_version[32U] ;
};
struct cavium_wk {
   struct delayed_work work ;
   void *ctxptr ;
   size_t ctxul ;
};
struct cavium_wq {
   struct workqueue_struct *wq ;
   struct cavium_wk wk ;
};
struct octdev_props {
   struct net_device *netdev ;
};
struct octeon_device {
   spinlock_t pci_win_lock ;
   spinlock_t mem_access_lock ;
   struct pci_dev *pci_dev ;
   void *chip ;
   u32 ifcount ;
   struct octdev_props props[32U] ;
   u16 chip_id ;
   u16 rev_id ;
   u32 octeon_id ;
   u16 pcie_port ;
   u16 flags ;
   atomic_t status ;
   struct octeon_mmio mmio[3U] ;
   struct octeon_reg_list reg_list ;
   struct octeon_fn_list fn_list ;
   struct octeon_board_info boardinfo ;
   u32 num_iqs ;
   struct octeon_sc_buffer_pool sc_buf_pool ;
   struct octeon_instr_queue *instr_queue[32U] ;
   struct octeon_response_list response_list[4U] ;
   u32 num_oqs ;
   struct octeon_droq *droq[32U] ;
   struct octeon_io_enable io_qmask ;
   struct octeon_dispatch_list dispatch ;
   struct oct_intrmod_cfg intrmod ;
   u32 int_status ;
   u64 droq_intr ;
   u64 bootmem_desc_addr ;
   struct cvmx_bootmem_named_block_desc bootmem_named_block_desc ;
   u64 console_desc_addr ;
   u32 num_consoles ;
   struct octeon_console console[32U] ;
   u64 coproc_clock_rate ;
   u32 app_mode ;
   struct oct_fw_info fw_info ;
   char device_name[32U] ;
   void *app_ctx ;
   struct cavium_wq dma_comp_wq ;
   struct cavium_wq check_db_wq[32U] ;
   struct cavium_wk nic_poll_work ;
   struct cavium_wk console_poll_work[32U] ;
   void *priv ;
};
struct octnic_ctrl_pkt {
   union octnet_cmd ncmd ;
   void *data ;
   u64 dmadata ;
   void *rdata ;
   u64 dmardata ;
   u64 udd[32U] ;
   size_t wait_time ;
   u64 netpndev ;
   void (*cb_fn)(void * ) ;
};
struct octnic_data_pkt {
   void *buf ;
   u32 reqtype ;
   u32 datasize ;
   struct octeon_instr_64B cmd ;
   u32 q_no ;
};
union __anonunion_u_394 {
   u32 datasize ;
   u32 gatherptrs ;
};
struct __anonstruct_s_393 {
   unsigned char ifidx ;
   unsigned char cksum_offset : 7 ;
   unsigned char gather : 1 ;
   unsigned char timestamp : 1 ;
   unsigned char ipv4opts_ipv6exthdr : 2 ;
   unsigned char ip_csum : 1 ;
   unsigned char tnl_csum : 1 ;
   unsigned short rsvd : 11 ;
   union __anonunion_u_394 u ;
};
union octnic_cmd_setup {
   struct __anonstruct_s_393 s ;
   u64 u64 ;
};
struct octnic_ctrl_params {
   u32 resp_order ;
};
struct lio {
   atomic_t ifstate ;
   int ifidx ;
   int txq ;
   int rxq ;
   spinlock_t lock ;
   struct list_head glist ;
   struct octdev_props *octprops ;
   struct octeon_device *oct_dev ;
   struct net_device *netdev ;
   struct oct_link_info linfo ;
   u32 tx_qsize ;
   u32 rx_qsize ;
   u32 mtu ;
   u32 msg_enable ;
   u64 dev_capability ;
   u32 phy_beacon_val ;
   u32 led_ctrl_val ;
   struct ptp_clock_info ptp_info ;
   struct ptp_clock *ptp_clock ;
   s64 ptp_adjust ;
   spinlock_t ptp_lock ;
   u32 intf_open ;
   struct cavium_wq txq_status_wq ;
};
struct liquidio_if_cfg_context {
   int octeon_id ;
   wait_queue_head_t wc ;
   int cond ;
};
struct liquidio_if_cfg_resp {
   u64 rh ;
   struct liquidio_if_cfg_info cfg_info ;
   u64 status ;
};
struct oct_timestamp_resp {
   u64 rh ;
   u64 timestamp ;
   u64 status ;
};
struct __anonstruct_s_395 {
   u32 reserved ;
   u16 gso_segs ;
   u16 gso_size ;
};
union tx_info {
   u64 u64 ;
   struct __anonstruct_s_395 s ;
};
struct octnic_gather {
   struct list_head list ;
   int sg_size ;
   int adjust ;
   struct octeon_sg_entry *sg ;
};
struct octnet_buf_free_info {
   struct lio *lio ;
   struct sk_buff *skb ;
   struct octnic_gather *g ;
   u64 dptr ;
   struct octeon_soft_command *sc ;
};
struct handshake {
   struct completion init ;
   struct completion started ;
   struct pci_dev *pci_dev ;
   int init_ok ;
   int started_ok ;
};
struct octeon_device_priv {
   struct tasklet_struct droq_tasklet ;
   unsigned long napi_mask ;
};
typedef bool ldv_func_ret_type;
typedef bool ldv_func_ret_type___0;
typedef bool ldv_func_ret_type___1;
typedef bool ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef bool ldv_func_ret_type___5;
typedef bool ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
enum hrtimer_restart;
struct oct_mdio_cmd {
   u64 op ;
   u64 mdio_addr ;
   u64 value1 ;
   u64 value2 ;
   u64 value3 ;
};
struct oct_intrmod_cmd {
   struct octeon_device *oct_dev ;
   struct octeon_soft_command *sc ;
   struct oct_intrmod_cfg *cfg ;
};
struct octeon_cn6xxx {
   u8 *intr_sum_reg64 ;
   u8 *intr_enb_reg64 ;
   u64 intr_mask64 ;
   struct octeon_config *conf ;
   spinlock_t lock_for_droq_int_enb_reg ;
};
struct oct_mdio_cmd_context {
   int octeon_id ;
   wait_queue_head_t wc ;
   int cond ;
};
struct oct_mdio_cmd_resp {
   u64 rh ;
   struct oct_mdio_cmd resp ;
   u64 status ;
};
enum hrtimer_restart;
struct iq_post_status {
   int status ;
   int index ;
};
typedef bool ldv_func_ret_type___8;
enum hrtimer_restart;
typedef __u64 __be64;
enum hrtimer_restart;
struct octeon_core_setup {
   u64 corefreq ;
   char boardname[32U] ;
   char board_serial_number[64U] ;
   u64 board_rev_major ;
   u64 board_rev_minor ;
};
typedef int (*octeon_dispatch_fn_t)(struct octeon_recv_info * , void * );
struct octeon_firmware_desc {
   __be64 addr ;
   __be32 len ;
   __be32 crc32 ;
};
struct octeon_firmware_file_header {
   __be32 magic ;
   char version[16U] ;
   char bootcmd[1024U] ;
   __be32 num_images ;
   struct octeon_firmware_desc desc[16U] ;
   __be32 pad ;
   __be32 crc32 ;
};
struct octeon_config_ptr {
   u32 conf_type ;
};
enum hrtimer_restart;
enum octeon_pcie_mps {
    PCIE_MPS_DEFAULT = -1,
    PCIE_MPS_128B = 0,
    PCIE_MPS_256B = 1
} ;
enum octeon_pcie_mrrs {
    PCIE_MRRS_DEFAULT = -1,
    PCIE_MRRS_128B = 0,
    PCIE_MRRS_256B = 1,
    PCIE_MRRS_512B = 2,
    PCIE_MRRS_1024B = 3,
    PCIE_MRRS_2048B = 4,
    PCIE_MRRS_4096B = 5
} ;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
struct __dispatch {
   struct list_head list ;
   struct octeon_recv_info *rinfo ;
   int (*disp_fn)(struct octeon_recv_info * , void * ) ;
};
enum hrtimer_restart;
enum hrtimer_restart;
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
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
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
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
__inline static unsigned long __ffs(unsigned long word )
{
  {
  __asm__ ("rep; bsf %1,%0": "=r" (word): "rm" (word));
  return (word);
}
}
__inline static unsigned long __arch_hweight64(__u64 w )
{
  unsigned long res ;
  {
  res = 0UL;
  __asm__ ("661:\n\tcall __sw_hweight64\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 4*32+23)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0xf3,0x48,0x0f,0xb8,0xc7\n6651:\n\t.popsection": "=a" (res): "D" (w));
  return (res);
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
__inline static __u64 __swab64p(__u64 const *p )
{
  __u64 tmp ;
  {
  tmp = __fswab64(*p);
  return (tmp);
}
}
__inline static void __swab64s(__u64 *p )
{
  {
  *p = __swab64p((__u64 const *)p);
  return;
}
}
__inline static unsigned long __ffs64(u64 word )
{
  unsigned long tmp ;
  {
  tmp = __ffs((unsigned long )word);
  return (tmp);
}
}
extern int printk(char const * , ...) ;
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern void __might_fault(char const * , int ) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
bool ldv_is_err(void const *ptr ) ;
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
extern void list_del(struct list_head * ) ;
extern void __bad_percpu_size(void) ;
extern void __bad_size_call_parameter(void) ;
extern unsigned long __phys_addr(unsigned long ) ;
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
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
extern int __bitmap_weight(unsigned long const * , unsigned int ) ;
__inline static int bitmap_weight(unsigned long const *src , unsigned int nbits )
{
  int tmp___0 ;
  {
  tmp___0 = __bitmap_weight(src, nbits);
  return (tmp___0);
}
}
extern int nr_cpu_ids ;
extern struct cpumask const * const cpu_online_mask ;
extern struct cpumask const * const cpu_present_mask ;
__inline static unsigned int cpumask_weight(struct cpumask const *srcp )
{
  int tmp ;
  {
  tmp = bitmap_weight((unsigned long const *)(& srcp->bits), (unsigned int )nr_cpu_ids);
  return ((unsigned int )tmp);
}
}
__inline static u64 div_u64_rem(u64 dividend , u32 divisor , u32 *remainder )
{
  {
  *remainder = (u32 )(dividend % (u64 )divisor);
  return (dividend / (u64 )divisor);
}
}
__inline static bool IS_ERR(void const *ptr ) ;
extern void __xchg_wrong_size(void) ;
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp ;
  {
  tmp = variable_test_bit((long )flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  _raw_spin_lock_bh(& lock->__annonCompField18.rlock);
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
__inline static void spin_unlock_bh(spinlock_t *lock )
{
  {
  _raw_spin_unlock_bh(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  return;
}
}
__inline static s64 timespec_to_ns(struct timespec const *ts )
{
  {
  return ((long long )ts->tv_sec * 1000000000LL + (long long )ts->tv_nsec);
}
}
extern int default_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
__inline static void init_waitqueue_entry(wait_queue_t *q , struct task_struct *p )
{
  {
  q->flags = 0U;
  q->private = (void *)p;
  q->func = & default_wake_function;
  return;
}
}
extern void add_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
extern void remove_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  return;
}
}
extern void wait_for_completion(struct completion * ) ;
extern unsigned long wait_for_completion_timeout(struct completion * , unsigned long ) ;
extern void complete(struct completion * ) ;
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
__inline static ktime_t ns_to_ktime(u64 ns )
{
  ktime_t ktime_zero ;
  ktime_t __constr_expr_0 ;
  {
  ktime_zero.tv64 = 0LL;
  __constr_expr_0.tv64 = (long long )((unsigned long long )ktime_zero.tv64 + ns);
  return (__constr_expr_0);
}
}
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
void ldv_destroy_workqueue_21(struct workqueue_struct *ldv_func_arg1 ) ;
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
void ldv_flush_workqueue_20(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool cancel_delayed_work_sync(struct delayed_work * ) ;
bool ldv_cancel_delayed_work_sync_15(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_sync_19(struct delayed_work *ldv_func_arg1 ) ;
__inline static bool queue_delayed_work(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                        unsigned long delay )
{
  bool tmp ;
  {
  tmp = ldv_queue_delayed_work_on_6(8192, wq, dwork, delay);
  return (tmp);
}
}
__inline static bool schedule_delayed_work(struct delayed_work *dwork , unsigned long delay )
{
  bool tmp ;
  {
  tmp = queue_delayed_work(system_wq, dwork, delay);
  return (tmp);
}
}
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
extern void iounmap(void volatile * ) ;
extern int cpu_number ;
extern int smp_call_function_single_async(int , struct call_single_data * ) ;
bool ldv_try_module_get_18(struct module *ldv_func_arg1 ) ;
void ldv_module_put_22(struct module *ldv_func_arg1 ) ;
int ldv_try_module_get(struct module *module ) ;
void ldv_module_put(struct module *module ) ;
extern long schedule_timeout_uninterruptible(long ) ;
extern void schedule(void) ;
__inline static int test_tsk_thread_flag(struct task_struct *tsk , int flag )
{
  int tmp ;
  {
  tmp = test_ti_thread_flag((struct thread_info *)tsk->stack, flag);
  return (tmp);
}
}
__inline static int signal_pending(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  return ((int )tmp___0);
}
}
extern void kfree(void const * ) ;
extern void *__kmalloc(size_t , gfp_t ) ;
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
int pci_counter ;
struct work_struct *ldv_work_struct_3_1 ;
struct work_struct *ldv_work_struct_6_3 ;
struct work_struct *ldv_work_struct_5_2 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
struct work_struct *ldv_work_struct_5_3 ;
struct ethtool_coalesce *lio_ethtool_ops_group1 ;
int ldv_work_3_2 ;
struct net_device *lionetdevops_group1 ;
int ldv_work_3_0 ;
struct work_struct *ldv_work_struct_2_3 ;
struct pci_dev *liquidio_err_handler_group0 ;
struct work_struct *ldv_work_struct_2_0 ;
struct ethtool_cmd *lio_ethtool_ops_group0 ;
struct work_struct *ldv_work_struct_4_3 ;
int ldv_state_variable_9 ;
int ldv_work_6_0 ;
struct work_struct *ldv_work_struct_2_2 ;
struct work_struct *ldv_work_struct_6_1 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
int ldv_work_3_3 ;
struct work_struct *ldv_work_struct_4_0 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_work_5_3 ;
int ldv_irq_line_1_2 ;
struct work_struct *ldv_work_struct_3_3 ;
int ldv_work_6_1 ;
int ldv_irq_1_3 = 0;
void *ldv_irq_data_1_1 ;
struct work_struct *ldv_work_struct_6_2 ;
int ldv_state_variable_10 ;
int ldv_irq_1_0 = 0;
struct work_struct *ldv_work_struct_2_1 ;
int ldv_work_4_0 ;
struct work_struct *ldv_work_struct_3_2 ;
int ldv_state_variable_6 ;
void *ldv_irq_data_1_0 ;
struct net_device *lio_ethtool_ops_group2 ;
int ldv_work_4_1 ;
int ldv_work_4_3 ;
int ldv_work_3_1 ;
void *ldv_irq_data_1_3 ;
int ldv_state_variable_2 ;
int ldv_work_5_0 ;
int ldv_work_5_1 ;
int ldv_work_2_0 ;
struct work_struct *ldv_work_struct_4_2 ;
int ldv_work_6_3 ;
void *ldv_irq_data_1_2 ;
struct work_struct *ldv_work_struct_3_0 ;
struct pci_dev *liquidio_pci_driver_group1 ;
int ldv_work_4_2 ;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
struct work_struct *ldv_work_struct_6_0 ;
int ldv_irq_1_1 = 0;
struct work_struct *ldv_work_struct_5_0 ;
struct work_struct *ldv_work_struct_5_1 ;
int ldv_irq_line_1_3 ;
int ldv_work_5_2 ;
int ldv_work_2_2 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
struct work_struct *ldv_work_struct_4_1 ;
int ldv_work_6_2 ;
int ldv_work_2_3 ;
int ldv_state_variable_4 ;
int ldv_work_2_1 ;
void work_init_3(void) ;
void work_init_2(void) ;
void call_and_disable_all_2(int state ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void activate_work_2(struct work_struct *work , int state ) ;
void activate_work_3(struct work_struct *work , int state ) ;
void disable_work_6(struct work_struct *work ) ;
void work_init_6(void) ;
void work_init_5(void) ;
void choose_interrupt_1(void) ;
void ldv_initialize_pci_error_handlers_10(void) ;
void ldv_initialize_ethtool_ops_7(void) ;
void call_and_disable_work_3(struct work_struct *work ) ;
void disable_work_3(struct work_struct *work ) ;
void disable_work_2(struct work_struct *work ) ;
void call_and_disable_all_6(int state ) ;
void ldv_pci_driver_9(void) ;
void work_init_4(void) ;
void invoke_work_3(void) ;
void disable_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void activate_suitable_irq_1(int line , void *data ) ;
void ldv_net_device_ops_8(void) ;
void call_and_disable_all_3(int state ) ;
void call_and_disable_work_2(struct work_struct *work ) ;
void invoke_work_2(void) ;
void activate_work_6(struct work_struct *work , int state ) ;
extern u32 crc32_le(u32 , unsigned char const * , size_t ) ;
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
extern void dev_warn(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  if (tmp != 0L || (unsigned long )dev->archdata.dma_ops == (unsigned long )((struct dma_map_ops *)0)) {
    return (dma_ops);
  } else {
    return (dev->archdata.dma_ops);
  }
}
}
__inline static dma_addr_t dma_map_single_attrs(struct device *dev , void *ptr , size_t size ,
                                                enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    ldv_24888: ;
    goto ldv_24888;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                            (unsigned long )ptr & 4095UL, size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, (struct page *)-24189255811072L + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  return (addr);
}
}
__inline static void dma_unmap_single_attrs(struct device *dev , dma_addr_t addr ,
                                            size_t size , enum dma_data_direction dir ,
                                            struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (36), "i" (12UL));
    ldv_24897: ;
    goto ldv_24897;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, attrs);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  return;
}
}
__inline static dma_addr_t dma_map_page(struct device *dev , struct page *page , size_t offset ,
                                        size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = lowmem_page_address((struct page const *)page);
  kmemcheck_mark_initialized(tmp___0 + offset, (unsigned int )size);
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (84), "i" (12UL));
    ldv_24932: ;
    goto ldv_24932;
  } else {
  }
  addr = (*(ops->map_page))(dev, page, offset, size, dir, (struct dma_attrs *)0);
  debug_dma_map_page(dev, page, offset, size, (int )dir, addr, 0);
  return (addr);
}
}
__inline static void dma_unmap_page(struct device *dev , dma_addr_t addr , size_t size ,
                                    enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (96), "i" (12UL));
    ldv_24940: ;
    goto ldv_24940;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, (struct dma_attrs *)0);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 0);
  return;
}
}
__inline static int dma_mapping_error(struct device *dev , dma_addr_t dma_addr )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  debug_dma_mapping_error(dev, dma_addr);
  if ((unsigned long )ops->mapping_error != (unsigned long )((int (*)(struct device * ,
                                                                      dma_addr_t ))0)) {
    tmp___0 = (*(ops->mapping_error))(dev, dma_addr);
    return (tmp___0);
  } else {
  }
  return (dma_addr == 0ULL);
}
}
extern int dma_supported(struct device * , u64 ) ;
extern int dma_set_mask(struct device * , u64 ) ;
__inline static int dma_set_coherent_mask(struct device *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_supported(dev, mask);
  if (tmp == 0) {
    return (-5);
  } else {
  }
  dev->coherent_dma_mask = mask;
  return (0);
}
}
__inline static int dma_set_mask_and_coherent(struct device *dev , u64 mask )
{
  int rc ;
  int tmp ;
  {
  tmp = dma_set_mask(dev, mask);
  rc = tmp;
  if (rc == 0) {
    dma_set_coherent_mask(dev, mask);
  } else {
  }
  return (rc);
}
}
extern int pci_bus_read_config_dword(struct pci_bus * , unsigned int , int , u32 * ) ;
extern int pci_bus_write_config_dword(struct pci_bus * , unsigned int , int , u32 ) ;
__inline static int pci_read_config_dword(struct pci_dev const *dev , int where ,
                                          u32 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_dword(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_write_config_dword(struct pci_dev const *dev , int where ,
                                           u32 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_dword(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern void pci_release_region(struct pci_dev * , int ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
int ldv___pci_register_driver_11(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
void ldv_pci_unregister_driver_12(struct pci_driver *ldv_func_arg1 ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
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
__inline static void pci_unmap_page(struct pci_dev *hwdev , dma_addr_t dma_address ,
                                    size_t size , int direction )
{
  {
  dma_unmap_page((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 dma_address, size, (enum dma_data_direction )direction);
  return;
}
}
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
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static struct skb_shared_hwtstamps *skb_hwtstamps(struct sk_buff *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  return (& ((struct skb_shared_info *)tmp)->hwtstamps);
}
}
extern unsigned char *skb_pull(struct sk_buff * , unsigned int ) ;
__inline static unsigned char *skb_transport_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->transport_header);
}
}
__inline static unsigned char *skb_network_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->network_header);
}
}
__inline static unsigned char *skb_mac_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->mac_header);
}
}
extern void skb_tstamp_tx(struct sk_buff * , struct skb_shared_hwtstamps * ) ;
__inline static u16 skb_get_queue_mapping(struct sk_buff const *skb )
{
  {
  return ((u16 )skb->queue_mapping);
}
}
__inline static u16 skb_get_rx_queue(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((u16 )skb->queue_mapping) + 65535U);
}
}
__inline static bool skb_rx_queue_recorded(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((unsigned short )skb->queue_mapping) != 0U);
}
}
__inline static struct iphdr *ip_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_network_header(skb);
  return ((struct iphdr *)tmp);
}
}
extern void __const_udelay(unsigned long ) ;
__inline static void dql_queued(struct dql *dql , unsigned int count )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect(count > 268435455U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/dynamic_queue_limits.h"),
                         "i" (74), "i" (12UL));
    ldv_30879: ;
    goto ldv_30879;
  } else {
  }
  dql->last_obj_cnt = count;
  __asm__ volatile ("": : : "memory");
  dql->num_queued = dql->num_queued + count;
  return;
}
}
__inline static int dql_avail(struct dql const *dql )
{
  unsigned int __var ;
  unsigned int __var___0 ;
  {
  __var = 0U;
  __var___0 = 0U;
  return ((int )((unsigned int )*((unsigned int const volatile *)(& dql->adj_limit)) - (unsigned int )*((unsigned int const volatile *)(& dql->num_queued))));
}
}
extern void dql_completed(struct dql * , unsigned int ) ;
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  tmp = request_threaded_irq(irq, handler, (irqreturn_t (*)(int , void * ))0, flags,
                             name, dev);
  return (tmp);
}
}
__inline static int ldv_request_irq_13(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_10(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_14(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
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
extern void tasklet_init(struct tasklet_struct * , void (*)(unsigned long ) , unsigned long ) ;
extern void __napi_schedule(struct napi_struct * ) ;
__inline static bool napi_disable_pending(struct napi_struct *n )
{
  int tmp ;
  {
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& n->state));
  return (tmp != 0);
}
}
__inline static bool napi_schedule_prep(struct napi_struct *n )
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = napi_disable_pending(n);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    tmp___1 = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
    if (tmp___1 == 0) {
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
__inline static void napi_schedule(struct napi_struct *n )
{
  bool tmp ;
  {
  tmp = napi_schedule_prep(n);
  if ((int )tmp) {
    __napi_schedule(n);
  } else {
  }
  return;
}
}
__inline static void napi_complete(struct napi_struct *n )
{
  {
  return;
}
}
extern void napi_disable(struct napi_struct * ) ;
__inline static void napi_enable(struct napi_struct *n )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& n->state));
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/netdevice.h"),
                         "i" (507), "i" (12UL));
    ldv_43400: ;
    goto ldv_43400;
  } else {
  }
  __asm__ volatile ("": : : "memory");
  clear_bit(0L, (unsigned long volatile *)(& n->state));
  return;
}
}
__inline static struct netdev_queue *netdev_get_tx_queue(struct net_device const *dev ,
                                                         unsigned int index )
{
  {
  return ((struct netdev_queue *)dev->_tx + (unsigned long )index);
}
}
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3008U);
}
}
extern void netif_napi_add(struct net_device * , struct napi_struct * , int (*)(struct napi_struct * ,
                                                                                int ) ,
                           int ) ;
extern void free_netdev(struct net_device * ) ;
void ldv_free_netdev_17(struct net_device *dev ) ;
extern void netif_schedule_queue(struct netdev_queue * ) ;
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_start_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_start_queue(tmp);
  return;
}
}
extern void netif_tx_wake_queue(struct netdev_queue * ) ;
__inline static void netif_wake_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_wake_queue(tmp);
  return;
}
}
__inline static void netif_tx_stop_queue(struct netdev_queue *dev_queue )
{
  {
  set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_stop_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_stop_queue(tmp);
  return;
}
}
__inline static void netdev_tx_sent_queue(struct netdev_queue *dev_queue , unsigned int bytes )
{
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  dql_queued(& dev_queue->dql, bytes);
  tmp = dql_avail((struct dql const *)(& dev_queue->dql));
  tmp___0 = ldv__builtin_expect(tmp >= 0, 1L);
  if (tmp___0 != 0L) {
    return;
  } else {
  }
  set_bit(1L, (unsigned long volatile *)(& dev_queue->state));
  __asm__ volatile ("mfence": : : "memory");
  tmp___1 = dql_avail((struct dql const *)(& dev_queue->dql));
  tmp___2 = ldv__builtin_expect(tmp___1 >= 0, 0L);
  if (tmp___2 != 0L) {
    clear_bit(1L, (unsigned long volatile *)(& dev_queue->state));
  } else {
  }
  return;
}
}
__inline static void netdev_tx_completed_queue(struct netdev_queue *dev_queue , unsigned int pkts ,
                                               unsigned int bytes )
{
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv__builtin_expect(bytes == 0U, 0L);
  if (tmp != 0L) {
    return;
  } else {
  }
  dql_completed(& dev_queue->dql, bytes);
  __asm__ volatile ("mfence": : : "memory");
  tmp___0 = dql_avail((struct dql const *)(& dev_queue->dql));
  if (tmp___0 < 0) {
    return;
  } else {
  }
  tmp___1 = test_and_clear_bit(1L, (unsigned long volatile *)(& dev_queue->state));
  if (tmp___1 != 0) {
    netif_schedule_queue(dev_queue);
  } else {
  }
  return;
}
}
__inline static void netif_start_subqueue(struct net_device *dev , u16 queue_index )
{
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, (unsigned int )queue_index);
  txq = tmp;
  netif_tx_start_queue(txq);
  return;
}
}
__inline static void netif_stop_subqueue(struct net_device *dev , u16 queue_index )
{
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, (unsigned int )queue_index);
  txq = tmp;
  netif_tx_stop_queue(txq);
  return;
}
}
extern void netif_wake_subqueue(struct net_device * , u16 ) ;
__inline static bool netif_is_multiqueue(struct net_device const *dev )
{
  {
  return ((unsigned int )dev->num_tx_queues > 1U);
}
}
extern void __dev_kfree_skb_any(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_any(struct sk_buff *skb )
{
  {
  __dev_kfree_skb_any(skb, 1);
  return;
}
}
extern gro_result_t napi_gro_receive(struct napi_struct * , struct sk_buff * ) ;
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
__inline static u32 netif_msg_init(int debug_value , int default_msg_enable_bits )
{
  {
  if (debug_value < 0 || (unsigned int )debug_value > 31U) {
    return ((u32 )default_msg_enable_bits);
  } else {
  }
  if (debug_value == 0) {
    return (0U);
  } else {
  }
  return ((u32 )((1 << debug_value) + -1));
}
}
extern int register_netdev(struct net_device * ) ;
int ldv_register_netdev_23(struct net_device *dev ) ;
extern void unregister_netdev(struct net_device * ) ;
void ldv_unregister_netdev_16(struct net_device *dev ) ;
__inline static void netif_set_gso_max_size(struct net_device *dev , unsigned int size )
{
  {
  dev->gso_max_size = size;
  return;
}
}
extern void netdev_info(struct net_device const * , char const * , ...) ;
__inline static struct ipv6hdr *ipv6_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_network_header(skb);
  return ((struct ipv6hdr *)tmp);
}
}
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
__inline static bool is_zero_ether_addr(u8 const *addr )
{
  {
  return (((unsigned int )*((u32 const *)addr) | (unsigned int )*((u16 const *)addr + 4U)) == 0U);
}
}
__inline static bool is_multicast_ether_addr(u8 const *addr )
{
  u32 a ;
  {
  a = *((u32 const *)addr);
  return ((a & 1U) != 0U);
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
__inline static void ether_addr_copy(u8 *dst , u8 const *src )
{
  {
  *((u32 *)dst) = *((u32 const *)src);
  *((u16 *)dst + 4U) = *((u16 const *)src + 4U);
  return;
}
}
__inline static struct vlan_ethhdr *vlan_eth_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_mac_header(skb);
  return ((struct vlan_ethhdr *)tmp);
}
}
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
extern struct ptp_clock *ptp_clock_register(struct ptp_clock_info * , struct device * ) ;
extern int ptp_clock_unregister(struct ptp_clock * ) ;
__inline static void add_sg_size(struct octeon_sg_entry *sg_entry , u16 size , u32 pos )
{
  {
  sg_entry->u.size[3U - pos] = size;
  return;
}
}
__inline static void octeon_free_recv_info(struct octeon_recv_info *recv_info )
{
  {
  kfree((void const *)recv_info);
  return;
}
}
int octeon_delete_droq(struct octeon_device *oct , u32 q_no ) ;
int octeon_register_droq_ops(struct octeon_device *oct , u32 q_no , struct octeon_droq_ops *ops ) ;
int octeon_unregister_droq_ops(struct octeon_device *oct , u32 q_no ) ;
int octeon_register_dispatch_fn(struct octeon_device *oct , u16 opcode , u16 subcode ,
                                int (*fn)(struct octeon_recv_info * , void * ) , void *fn_arg ) ;
u32 octeon_droq_check_hw_for_pkts(struct octeon_device *oct , struct octeon_droq *droq ) ;
int octeon_create_droq(struct octeon_device *oct , u32 q_no , u32 num_descs , u32 desc_size ,
                       void *app_ctx ) ;
int octeon_droq_process_packets(struct octeon_device *oct , struct octeon_droq *droq ,
                                u32 budget ) ;
int octeon_process_droq_poll_cmd(struct octeon_device *oct , u32 q_no , int cmd ,
                                 u32 arg ) ;
int octeon_setup_sc_buffer_pool(struct octeon_device *oct ) ;
int octeon_free_sc_buffer_pool(struct octeon_device *oct ) ;
struct octeon_soft_command *octeon_alloc_soft_command(struct octeon_device *oct ,
                                                      u32 datasize , u32 rdatasize ,
                                                      u32 ctxsize ) ;
void octeon_free_soft_command(struct octeon_device *oct , struct octeon_soft_command *sc ) ;
int octeon_delete_instr_queue(struct octeon_device *oct , u32 iq_no ) ;
int lio_wait_for_instr_fetch(struct octeon_device *oct ) ;
int octeon_register_reqtype_free_fn(struct octeon_device *oct , int reqtype , void (*fn)(void * ) ) ;
int lio_process_iq_request_list(struct octeon_device *oct , struct octeon_instr_queue *iq ) ;
int octeon_send_command(struct octeon_device *oct , u32 iq_no , u32 force_db , void *cmd ,
                        void *buf , u32 datasize , u32 reqtype ) ;
void octeon_prepare_soft_command(struct octeon_device *oct , struct octeon_soft_command *sc ,
                                 u8 opcode , u8 subcode , u32 irh_ossp , u64 ossp0 ,
                                 u64 ossp1 ) ;
int octeon_send_soft_command(struct octeon_device *oct , struct octeon_soft_command *sc ) ;
int octeon_setup_iq(struct octeon_device *oct , u32 iq_no , u32 num_descs , void *app_ctx ) ;
int octeon_setup_response_list(struct octeon_device *oct ) ;
void octeon_delete_response_list(struct octeon_device *oct ) ;
int lio_process_ordered_list(struct octeon_device *octeon_dev , u32 force_quit ) ;
void octeon_init_device_list(int conf_type___0 ) ;
void octeon_free_device_mem(struct octeon_device *oct ) ;
struct octeon_device *octeon_allocate_device(u32 pci_id , u32 priv_size ) ;
int octeon_init_dispatch_list(struct octeon_device *oct ) ;
void octeon_delete_dispatch_list(struct octeon_device *oct ) ;
int octeon_core_drv_init(struct octeon_recv_info *recv_info , void *buf ) ;
struct octeon_device *lio_get_device(u32 octeon_id ) ;
int lio_get_device_id(void *dev ) ;
__inline static u16 OCTEON_MAJOR_REV(struct octeon_device *oct )
{
  u16 rev ;
  {
  rev = (u16 )(((int )oct->rev_id & 12) >> 2);
  return ((unsigned int )rev != 0U ? rev : 1U);
}
}
__inline static u16 OCTEON_MINOR_REV(struct octeon_device *oct )
{
  {
  return ((unsigned int )oct->rev_id & 3U);
}
}
u64 lio_pci_readq(struct octeon_device *oct , u64 addr ) ;
void lio_pci_writeq(struct octeon_device *oct , u64 val , u64 addr ) ;
int octeon_wait_for_ddr_init(struct octeon_device *oct , u32 *timeout ) ;
int octeon_wait_for_bootloader(struct octeon_device *oct , u32 wait_time_hundredths ) ;
int octeon_init_consoles(struct octeon_device *oct ) ;
int octeon_add_console(struct octeon_device *oct , u32 console_num ) ;
void octeon_remove_consoles(struct octeon_device *oct ) ;
int octeon_download_firmware(struct octeon_device *oct , u8 const *data , size_t size ) ;
char *lio_get_state_string(atomic_t *state_ptr ) ;
int octeon_setup_instr_queues(struct octeon_device *oct ) ;
int octeon_setup_output_queues(struct octeon_device *oct ) ;
int octeon_get_tx_qsize(struct octeon_device *oct , u32 q_no ) ;
int octeon_get_rx_qsize(struct octeon_device *oct , u32 q_no ) ;
void octeon_set_io_queues_off(struct octeon_device *oct ) ;
void octeon_set_droq_pkt_op(struct octeon_device *oct , u32 q_no , u32 enable ) ;
struct octeon_config *octeon_get_conf(struct octeon_device *oct ) ;
__inline static int octnet_iq_is_full(struct octeon_device *oct , u32 q_no )
{
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& (oct->instr_queue[q_no])->instr_pending));
  return ((unsigned int )tmp >= (oct->instr_queue[q_no])->max_count - 2U);
}
}
__inline static void octnet_prepare_pci_cmd(struct octeon_instr_64B *cmd , union octnic_cmd_setup *setup ,
                                            u32 tag )
{
  struct octeon_instr_ih *ih ;
  struct octeon_instr_irh *irh ;
  union octnic_packet_params packet_params ;
  {
  memset((void *)cmd, 0, 64UL);
  ih = (struct octeon_instr_ih *)(& cmd->ih);
  ih->fsz = 24U;
  ih->tagtype = 0U;
  ih->grp = 0U;
  if (tag != 0U) {
    ih->tag = tag;
  } else {
    ih->tag = (unsigned int )((int )setup->s.ifidx + 286331153);
  }
  ih->raw = 1U;
  ih->qos = (unsigned char )(((unsigned int )setup->s.ifidx & 3U) + 4U);
  if ((unsigned int )*((unsigned char *)setup + 1UL) == 0U) {
    ih->dlengsz = (unsigned short )setup->s.u.datasize;
  } else {
    ih->gather = 1U;
    ih->dlengsz = (unsigned short )setup->s.u.gatherptrs;
  }
  irh = (struct octeon_instr_irh *)(& cmd->irh);
  irh->opcode = 1U;
  irh->subcode = 2U;
  packet_params.u32 = 0U;
  if ((unsigned int )*((unsigned char *)setup + 1UL) != 0U) {
    packet_params.s.csoffset = (unsigned short )setup->s.cksum_offset;
    packet_params.s.ipv4opts_ipv6exthdr = setup->s.ipv4opts_ipv6exthdr;
  } else {
  }
  packet_params.s.ip_csum = setup->s.ip_csum;
  packet_params.s.tnl_csum = setup->s.tnl_csum;
  packet_params.s.ifidx = setup->s.ifidx;
  packet_params.s.tsflag = setup->s.timestamp;
  irh->ossp = packet_params.u32;
  return;
}
}
void *octeon_alloc_soft_command_resp(struct octeon_device *oct , struct octeon_instr_64B *cmd ,
                                     size_t rdatasize ) ;
int octnet_send_nic_data_pkt(struct octeon_device *oct , struct octnic_data_pkt *ndata ,
                             u32 xmit_more ) ;
int octnet_send_nic_ctrl_pkt(struct octeon_device *oct , struct octnic_ctrl_pkt *nctrl ,
                             struct octnic_ctrl_params nparams ) ;
int octeon_console_debug_enabled(u32 console ) ;
void octeon_report_sent_bytes_to_bql(void *buf , int reqtype ) ;
void octeon_update_tx_completion_counters(void *buf , int reqtype , unsigned int *pkts_compl ,
                                          unsigned int *bytes_compl ) ;
void octeon_report_tx_completion_to_bql(void *txq , unsigned int pkts_compl , unsigned int bytes_compl ) ;
__inline static void octeon_swap_8B_data(u64 *data , u32 blocks )
{
  {
  goto ldv_53733;
  ldv_53732:
  __swab64s(data);
  blocks = blocks - 1U;
  data = data + 1;
  ldv_53733: ;
  if (blocks != 0U) {
    goto ldv_53732;
  } else {
  }
  return;
}
}
__inline static void octeon_unmap_pci_barx(struct octeon_device *oct , int baridx )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  descriptor.modname = "liquidio";
  descriptor.function = "octeon_unmap_pci_barx";
  descriptor.filename = "/work/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/net/ethernet/cavium/liquidio/octeon_main.h";
  descriptor.format = "Freeing PCI mapped regions for Bar%d\n";
  descriptor.lineno = 74U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "Freeing PCI mapped regions for Bar%d\n", baridx);
  } else {
  }
  if (oct->mmio[baridx].done != 0U) {
    iounmap((void volatile *)oct->mmio[baridx].hw_addr);
  } else {
  }
  if (oct->mmio[baridx].start != 0ULL) {
    pci_release_region(oct->pci_dev, baridx * 2);
  } else {
  }
  return;
}
}
__inline static void sleep_cond(wait_queue_head_t *wait_queue , int *condition )
{
  wait_queue_t we ;
  struct task_struct *tmp ;
  struct task_struct *tmp___0 ;
  long volatile __ret ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  struct task_struct *tmp___3 ;
  struct task_struct *tmp___4 ;
  struct task_struct *tmp___5 ;
  int tmp___6 ;
  int __var ;
  struct task_struct *tmp___7 ;
  long volatile __ret___0 ;
  struct task_struct *tmp___8 ;
  struct task_struct *tmp___9 ;
  struct task_struct *tmp___10 ;
  struct task_struct *tmp___11 ;
  {
  tmp = get_current();
  init_waitqueue_entry(& we, tmp);
  add_wait_queue(wait_queue, & we);
  goto ldv_53777;
  ldv_53776:
  tmp___0 = get_current();
  tmp___0->task_state_change = 0UL;
  __ret = 1L;
  switch (8UL) {
  case 1UL:
  tmp___1 = get_current();
  __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (tmp___1->state): : "memory",
                       "cc");
  goto ldv_53769;
  case 2UL:
  tmp___2 = get_current();
  __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (tmp___2->state): : "memory",
                       "cc");
  goto ldv_53769;
  case 4UL:
  tmp___3 = get_current();
  __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (tmp___3->state): : "memory",
                       "cc");
  goto ldv_53769;
  case 8UL:
  tmp___4 = get_current();
  __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (tmp___4->state): : "memory",
                       "cc");
  goto ldv_53769;
  default:
  __xchg_wrong_size();
  }
  ldv_53769:
  tmp___5 = get_current();
  tmp___6 = signal_pending(tmp___5);
  if (tmp___6 != 0) {
    goto out;
  } else {
  }
  schedule();
  ldv_53777:
  __var = 0;
  if ((int )*((int volatile *)condition) == 0) {
    goto ldv_53776;
  } else {
  }
  out:
  tmp___7 = get_current();
  tmp___7->task_state_change = 0UL;
  __ret___0 = 0L;
  switch (8UL) {
  case 1UL:
  tmp___8 = get_current();
  __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret___0), "+m" (tmp___8->state): : "memory",
                       "cc");
  goto ldv_53781;
  case 2UL:
  tmp___9 = get_current();
  __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret___0), "+m" (tmp___9->state): : "memory",
                       "cc");
  goto ldv_53781;
  case 4UL:
  tmp___10 = get_current();
  __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret___0), "+m" (tmp___10->state): : "memory",
                       "cc");
  goto ldv_53781;
  case 8UL:
  tmp___11 = get_current();
  __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret___0), "+m" (tmp___11->state): : "memory",
                       "cc");
  goto ldv_53781;
  default:
  __xchg_wrong_size();
  }
  ldv_53781:
  remove_wait_queue(wait_queue, & we);
  return;
}
}
int liquidio_set_feature(struct net_device *netdev , int cmd ) ;
void liquidio_link_ctrl_cmd_completion(void *nctrl_ptr ) ;
void liquidio_set_ethtool_ops(struct net_device *netdev ) ;
__inline static void recv_buffer_free(void *buffer )
{
  {
  dev_kfree_skb_any((struct sk_buff *)buffer);
  return;
}
}
int lio_setup_cn66xx_octeon_device(struct octeon_device *oct ) ;
int lio_setup_cn68xx_octeon_device(struct octeon_device *oct ) ;
static int ddr_timeout = 10000;
static u32 console_bitmask ;
static int debug = -1;
static char fw_type[8U] ;
static int conf_type ;
static int octeon_device_init(struct octeon_device *octeon_dev ) ;
static void liquidio_remove(struct pci_dev *pdev ) ;
static int liquidio_probe(struct pci_dev *pdev , struct pci_device_id const *ent ) ;
static struct handshake handshake[32U] ;
static struct completion first_stage ;
static void octeon_droq_bh(unsigned long pdev )
{
  int q_no ;
  int reschedule ;
  struct octeon_device *oct ;
  struct octeon_device_priv *oct_priv ;
  int tmp ;
  {
  reschedule = 0;
  oct = (struct octeon_device *)pdev;
  oct_priv = (struct octeon_device_priv *)oct->priv;
  q_no = 0;
  goto ldv_54179;
  ldv_54178: ;
  if ((((unsigned long )oct->io_qmask.oq >> q_no) & 1UL) == 0UL) {
    goto ldv_54177;
  } else {
  }
  tmp = octeon_droq_process_packets(oct, oct->droq[q_no], 4294967295U);
  reschedule = tmp | reschedule;
  ldv_54177:
  q_no = q_no + 1;
  ldv_54179: ;
  if (q_no <= 31) {
    goto ldv_54178;
  } else {
  }
  if (reschedule != 0) {
    tasklet_schedule(& oct_priv->droq_tasklet);
  } else {
  }
  return;
}
}
static int lio_wait_for_oq_pkts(struct octeon_device *oct )
{
  struct octeon_device_priv *oct_priv ;
  int retry ;
  int pkt_cnt ;
  int pending_pkts ;
  int i ;
  u32 tmp ;
  int tmp___0 ;
  {
  oct_priv = (struct octeon_device_priv *)oct->priv;
  retry = 100;
  pkt_cnt = 0;
  pending_pkts = 0;
  ldv_54193:
  pending_pkts = 0;
  i = 0;
  goto ldv_54191;
  ldv_54190: ;
  if ((((unsigned long )oct->io_qmask.oq >> i) & 1UL) == 0UL) {
    goto ldv_54189;
  } else {
  }
  tmp = octeon_droq_check_hw_for_pkts(oct, oct->droq[i]);
  pkt_cnt = (int )(tmp + (u32 )pkt_cnt);
  ldv_54189:
  i = i + 1;
  ldv_54191: ;
  if (i <= 31) {
    goto ldv_54190;
  } else {
  }
  if (pkt_cnt > 0) {
    pending_pkts = pending_pkts + pkt_cnt;
    tasklet_schedule(& oct_priv->droq_tasklet);
  } else {
  }
  pkt_cnt = 0;
  schedule_timeout_uninterruptible(1L);
  tmp___0 = retry;
  retry = retry - 1;
  if (tmp___0 != 0 && pending_pkts != 0) {
    goto ldv_54193;
  } else {
  }
  return (pkt_cnt);
}
}
void octeon_report_tx_completion_to_bql(void *txq , unsigned int pkts_compl , unsigned int bytes_compl )
{
  struct netdev_queue *netdev_queue ;
  {
  netdev_queue = (struct netdev_queue *)txq;
  netdev_tx_completed_queue(netdev_queue, pkts_compl, bytes_compl);
  return;
}
}
void octeon_update_tx_completion_counters(void *buf , int reqtype , unsigned int *pkts_compl ,
                                          unsigned int *bytes_compl )
{
  struct octnet_buf_free_info *finfo ;
  struct sk_buff *skb ;
  struct octeon_soft_command *sc ;
  {
  skb = (struct sk_buff *)0;
  switch (reqtype) {
  case 1: ;
  case 2:
  finfo = (struct octnet_buf_free_info *)buf;
  skb = finfo->skb;
  goto ldv_54212;
  case 4: ;
  case 3:
  sc = (struct octeon_soft_command *)buf;
  skb = (struct sk_buff *)sc->callback_arg;
  goto ldv_54212;
  default: ;
  return;
  }
  ldv_54212:
  *pkts_compl = *pkts_compl + 1U;
  *bytes_compl = *bytes_compl + skb->len;
  return;
}
}
void octeon_report_sent_bytes_to_bql(void *buf , int reqtype )
{
  struct octnet_buf_free_info *finfo ;
  struct sk_buff *skb ;
  struct octeon_soft_command *sc ;
  struct netdev_queue *txq ;
  u16 tmp ;
  {
  switch (reqtype) {
  case 1: ;
  case 2:
  finfo = (struct octnet_buf_free_info *)buf;
  skb = finfo->skb;
  goto ldv_54226;
  case 4: ;
  case 3:
  sc = (struct octeon_soft_command *)buf;
  skb = (struct sk_buff *)sc->callback_arg;
  goto ldv_54226;
  default: ;
  return;
  }
  ldv_54226:
  tmp = skb_get_queue_mapping((struct sk_buff const *)skb);
  txq = netdev_get_tx_queue((struct net_device const *)skb->dev, (unsigned int )tmp);
  netdev_tx_sent_queue(txq, skb->len);
  return;
}
}
int octeon_console_debug_enabled(u32 console )
{
  {
  return ((int )(console_bitmask >> (int )console) & 1);
}
}
static void force_io_queues_off(struct octeon_device *oct )
{
  {
  if ((unsigned int )oct->chip_id == 146U || (unsigned int )oct->chip_id == 145U) {
    writel(0U, (void volatile *)oct->mmio[0].hw_addr + 4096U);
    writel(0U, (void volatile *)oct->mmio[0].hw_addr + 4112U);
  } else {
  }
  return;
}
}
static int wait_for_pending_requests(struct octeon_device *oct )
{
  int i ;
  int pcount ;
  {
  pcount = 0;
  i = 0;
  goto ldv_54243;
  ldv_54242:
  pcount = atomic_read((atomic_t const *)(& oct->response_list[3].pending_req_count));
  if (pcount != 0) {
    schedule_timeout_uninterruptible(25L);
  } else {
    goto ldv_54241;
  }
  i = i + 1;
  ldv_54243: ;
  if (i <= 99) {
    goto ldv_54242;
  } else {
  }
  ldv_54241: ;
  if (pcount != 0) {
    return (1);
  } else {
  }
  return (0);
}
}
__inline static void pcierror_quiesce_device(struct octeon_device *oct )
{
  int i ;
  int tmp ;
  struct octeon_instr_queue *iq ;
  int tmp___0 ;
  int tmp___1 ;
  {
  force_io_queues_off(oct);
  schedule_timeout_uninterruptible(100L);
  tmp = wait_for_pending_requests(oct);
  if (tmp != 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "There were pending requests\n");
  } else {
  }
  i = 0;
  goto ldv_54251;
  ldv_54250: ;
  if ((((unsigned long )oct->io_qmask.iq >> i) & 1UL) == 0UL) {
    goto ldv_54249;
  } else {
  }
  iq = oct->instr_queue[i];
  tmp___1 = atomic_read((atomic_t const *)(& iq->instr_pending));
  if (tmp___1 != 0) {
    spin_lock_bh(& iq->lock);
    iq->fill_cnt = 0U;
    iq->octeon_read_index = iq->host_write_index;
    tmp___0 = atomic_read((atomic_t const *)(& iq->instr_pending));
    iq->stats.instr_processed = iq->stats.instr_processed + (u64 )tmp___0;
    lio_process_iq_request_list(oct, iq);
    spin_unlock_bh(& iq->lock);
  } else {
  }
  ldv_54249:
  i = i + 1;
  ldv_54251: ;
  if (i <= 31) {
    goto ldv_54250;
  } else {
  }
  lio_process_ordered_list(oct, 1U);
  return;
}
}
static void cleanup_aer_uncorrect_error_status(struct pci_dev *dev )
{
  int pos ;
  u32 status ;
  u32 mask ;
  {
  pos = 256;
  printk("\016%s :\n", "cleanup_aer_uncorrect_error_status");
  pci_read_config_dword((struct pci_dev const *)dev, pos + 4, & status);
  pci_read_config_dword((struct pci_dev const *)dev, pos + 12, & mask);
  if (dev->error_state == 1U) {
    status = ~ mask & status;
  } else {
    status = status & mask;
  }
  pci_write_config_dword((struct pci_dev const *)dev, pos + 4, status);
  return;
}
}
static void stop_pci_io(struct octeon_device *oct )
{
  struct _ddebug descriptor ;
  char *tmp ;
  long tmp___0 ;
  {
  atomic_set(& oct->status, 12);
  pci_disable_device(oct->pci_dev);
  (*(oct->fn_list.disable_interrupt))(oct->chip);
  pcierror_quiesce_device(oct);
  ldv_free_irq_10((oct->pci_dev)->irq, (void *)oct);
  if (((unsigned int )oct->flags & 2U) != 0U) {
    pci_disable_msi(oct->pci_dev);
  } else {
  }
  descriptor.modname = "liquidio";
  descriptor.function = "stop_pci_io";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
  descriptor.format = "Device state is now %s\n";
  descriptor.lineno = 462U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = lio_get_state_string(& oct->status);
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "Device state is now %s\n", tmp);
  } else {
  }
  cleanup_aer_uncorrect_error_status(oct->pci_dev);
  return;
}
}
static pci_ers_result_t liquidio_pcie_error_detected(struct pci_dev *pdev , pci_channel_state_t state )
{
  struct octeon_device *oct ;
  void *tmp ;
  {
  tmp = pci_get_drvdata(pdev);
  oct = (struct octeon_device *)tmp;
  if (state == 1U) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Non-correctable non-fatal error reported:\n");
    cleanup_aer_uncorrect_error_status(oct->pci_dev);
    return (2U);
  } else {
  }
  dev_err((struct device const *)(& (oct->pci_dev)->dev), "Non-correctable FATAL reported by PCI AER driver\n");
  stop_pci_io(oct);
  return (4U);
}
}
static pci_ers_result_t liquidio_pcie_mmio_enabled(struct pci_dev *pdev )
{
  {
  return (5U);
}
}
static pci_ers_result_t liquidio_pcie_slot_reset(struct pci_dev *pdev )
{
  {
  return (5U);
}
}
static void liquidio_pcie_resume(struct pci_dev *pdev )
{
  {
  return;
}
}
static int liquidio_suspend(struct pci_dev *pdev , pm_message_t state )
{
  {
  return (0);
}
}
static int liquidio_resume(struct pci_dev *pdev )
{
  {
  return (0);
}
}
static struct pci_error_handlers liquidio_err_handler = {(pci_ers_result_t (*)(struct pci_dev * , enum pci_channel_state ))(& liquidio_pcie_error_detected),
    & liquidio_pcie_mmio_enabled, 0, & liquidio_pcie_slot_reset, 0, & liquidio_pcie_resume};
static struct pci_device_id const liquidio_pci_tbl[3U] = { {6013U, 145U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {6013U, 146U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__liquidio_pci_tbl_device_table[3U] ;
static struct pci_driver liquidio_pci_driver =
     {{0, 0}, "LiquidIO", (struct pci_device_id const *)(& liquidio_pci_tbl), & liquidio_probe,
    & liquidio_remove, & liquidio_suspend, 0, 0, & liquidio_resume, 0, 0, (struct pci_error_handlers const *)(& liquidio_err_handler),
    {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {{{{{{0}}, 0U, 0U, 0,
                                                                 {0, {0, 0}, 0, 0,
                                                                  0UL}}}}, {0, 0}}};
static int liquidio_init_pci(void)
{
  int tmp ;
  {
  tmp = ldv___pci_register_driver_11(& liquidio_pci_driver, & __this_module, "liquidio");
  return (tmp);
}
}
static void liquidio_deinit_pci(void)
{
  {
  ldv_pci_unregister_driver_12(& liquidio_pci_driver);
  return;
}
}
__inline static int ifstate_check(struct lio *lio , int state_flag )
{
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& lio->ifstate));
  return (tmp & state_flag);
}
}
__inline static void ifstate_set(struct lio *lio , int state_flag )
{
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& lio->ifstate));
  atomic_set(& lio->ifstate, tmp | state_flag);
  return;
}
}
__inline static void ifstate_reset(struct lio *lio , int state_flag )
{
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& lio->ifstate));
  atomic_set(& lio->ifstate, tmp & ~ state_flag);
  return;
}
}
__inline static void txqs_stop(struct net_device *netdev )
{
  int i ;
  bool tmp ;
  {
  tmp = netif_is_multiqueue((struct net_device const *)netdev);
  if ((int )tmp) {
    i = 0;
    goto ldv_54313;
    ldv_54312:
    netif_stop_subqueue(netdev, (int )((u16 )i));
    i = i + 1;
    ldv_54313: ;
    if ((unsigned int )i < netdev->num_tx_queues) {
      goto ldv_54312;
    } else {
    }
  } else {
    netif_stop_queue(netdev);
  }
  return;
}
}
__inline static void txqs_start(struct net_device *netdev )
{
  int i ;
  bool tmp ;
  {
  tmp = netif_is_multiqueue((struct net_device const *)netdev);
  if ((int )tmp) {
    i = 0;
    goto ldv_54320;
    ldv_54319:
    netif_start_subqueue(netdev, (int )((u16 )i));
    i = i + 1;
    ldv_54320: ;
    if ((unsigned int )i < netdev->num_tx_queues) {
      goto ldv_54319;
    } else {
    }
  } else {
    netif_start_queue(netdev);
  }
  return;
}
}
__inline static void txqs_wake(struct net_device *netdev )
{
  int i ;
  bool tmp ;
  {
  tmp = netif_is_multiqueue((struct net_device const *)netdev);
  if ((int )tmp) {
    i = 0;
    goto ldv_54327;
    ldv_54326:
    netif_wake_subqueue(netdev, (int )((u16 )i));
    i = i + 1;
    ldv_54327: ;
    if ((unsigned int )i < netdev->num_tx_queues) {
      goto ldv_54326;
    } else {
    }
  } else {
    netif_wake_queue(netdev);
  }
  return;
}
}
static void stop_txq(struct net_device *netdev )
{
  {
  txqs_stop(netdev);
  return;
}
}
static void start_txq(struct net_device *netdev )
{
  struct lio *lio ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  if ((unsigned int )lio->linfo.link.s.status != 0U) {
    txqs_start(netdev);
    return;
  } else {
  }
  return;
}
}
__inline static void wake_q(struct net_device *netdev , int q )
{
  bool tmp ;
  {
  tmp = netif_is_multiqueue((struct net_device const *)netdev);
  if ((int )tmp) {
    netif_wake_subqueue(netdev, (int )((u16 )q));
  } else {
    netif_wake_queue(netdev);
  }
  return;
}
}
__inline static void stop_q(struct net_device *netdev , int q )
{
  bool tmp ;
  {
  tmp = netif_is_multiqueue((struct net_device const *)netdev);
  if ((int )tmp) {
    netif_stop_subqueue(netdev, (int )((u16 )q));
  } else {
    netif_stop_queue(netdev);
  }
  return;
}
}
__inline static int check_txq_status(struct lio *lio )
{
  int ret_val ;
  int numqs ;
  int q ;
  int iq ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  ret_val = 0;
  tmp___1 = netif_is_multiqueue((struct net_device const *)lio->netdev);
  if ((int )tmp___1) {
    numqs = (int )(lio->netdev)->num_tx_queues;
    iq = 0;
    q = 0;
    goto ldv_54353;
    ldv_54352:
    iq = (int )lio->linfo.txpciq[((int )lio->linfo.num_txpciq + -1) & q];
    tmp = octnet_iq_is_full(lio->oct_dev, (u32 )iq);
    if (tmp != 0) {
      goto ldv_54351;
    } else {
    }
    wake_q(lio->netdev, q);
    ret_val = ret_val + 1;
    ldv_54351:
    q = q + 1;
    ldv_54353: ;
    if (q < numqs) {
      goto ldv_54352;
    } else {
    }
  } else {
    tmp___0 = octnet_iq_is_full(lio->oct_dev, (u32 )lio->txq);
    if (tmp___0 != 0) {
      return (0);
    } else {
    }
    wake_q(lio->netdev, lio->txq);
    ret_val = 1;
  }
  return (ret_val);
}
}
__inline static struct list_head *list_delete_head(struct list_head *root )
{
  struct list_head *node ;
  {
  if ((unsigned long )root->prev == (unsigned long )root && (unsigned long )root->next == (unsigned long )root) {
    node = (struct list_head *)0;
  } else {
    node = root->next;
  }
  if ((unsigned long )node != (unsigned long )((struct list_head *)0)) {
    list_del(node);
  } else {
  }
  return (node);
}
}
static void delete_glist(struct lio *lio )
{
  struct octnic_gather *g ;
  struct list_head *tmp ;
  {
  ldv_54363:
  tmp = list_delete_head(& lio->glist);
  g = (struct octnic_gather *)tmp;
  if ((unsigned long )g != (unsigned long )((struct octnic_gather *)0)) {
    if ((unsigned long )g->sg != (unsigned long )((struct octeon_sg_entry *)0)) {
      kfree((void const *)((unsigned long )g->sg - (unsigned long )g->adjust));
    } else {
    }
    kfree((void const *)g);
  } else {
  }
  if ((unsigned long )g != (unsigned long )((struct octnic_gather *)0)) {
    goto ldv_54363;
  } else {
  }
  return;
}
}
static int setup_glist(struct lio *lio )
{
  int i ;
  struct octnic_gather *g ;
  void *tmp ;
  void *tmp___0 ;
  {
  INIT_LIST_HEAD(& lio->glist);
  i = 0;
  goto ldv_54372;
  ldv_54371:
  tmp = kmalloc(32UL, 208U);
  g = (struct octnic_gather *)tmp;
  if ((unsigned long )g == (unsigned long )((struct octnic_gather *)0)) {
    goto ldv_54370;
  } else {
  }
  memset((void *)g, 0, 32UL);
  g->sg_size = 200;
  tmp___0 = kmalloc((size_t )(g->sg_size + 8), 208U);
  g->sg = (struct octeon_sg_entry *)tmp___0;
  if ((unsigned long )g->sg == (unsigned long )((struct octeon_sg_entry *)0)) {
    kfree((void const *)g);
    goto ldv_54370;
  } else {
  }
  if (((unsigned long )g->sg & 7UL) != 0UL) {
    g->adjust = (int )(8U - ((unsigned int )((long )g->sg) & 7U));
    g->sg = (struct octeon_sg_entry *)((unsigned long )g->sg + (unsigned long )g->adjust);
  } else {
  }
  list_add_tail(& g->list, & lio->glist);
  i = i + 1;
  ldv_54372: ;
  if ((u32 )i < lio->tx_qsize) {
    goto ldv_54371;
  } else {
  }
  ldv_54370: ;
  if ((u32 )i == lio->tx_qsize) {
    return (0);
  } else {
  }
  delete_glist(lio);
  return (1);
}
}
static void print_link_info(struct net_device *netdev )
{
  struct lio *lio ;
  void *tmp ;
  struct oct_link_info *linfo ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  tmp___0 = atomic_read((atomic_t const *)(& lio->ifstate));
  if ((tmp___0 & 2) != 0) {
    linfo = & lio->linfo;
    if ((unsigned int )linfo->link.s.status != 0U) {
      if ((lio->msg_enable & 4U) != 0U) {
        netdev_info((struct net_device const *)lio->netdev, "%d Mbps %s Duplex UP\n",
                    (int )linfo->link.s.speed, (unsigned int )linfo->link.s.duplex != 0U ? (char *)"Full" : (char *)"Half");
      } else {
      }
    } else
    if ((lio->msg_enable & 4U) != 0U) {
      netdev_info((struct net_device const *)lio->netdev, "Link Down\n");
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void update_link_status(struct net_device *netdev , union oct_link_status *ls )
{
  struct lio *lio ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  if (lio->intf_open != 0U && lio->linfo.link.u64 != ls->u64) {
    lio->linfo.link.u64 = ls->u64;
    print_link_info(netdev);
    if ((unsigned int )lio->linfo.link.s.status != 0U) {
      netif_carrier_on(netdev);
      txqs_wake(netdev);
    } else {
      netif_carrier_off(netdev);
      stop_txq(netdev);
    }
  } else {
  }
  return;
}
}
static void liquidio_schedule_droq_pkt_handlers(struct octeon_device *oct )
{
  struct octeon_device_priv *oct_priv ;
  u64 oq_no ;
  struct octeon_droq *droq ;
  {
  oct_priv = (struct octeon_device_priv *)oct->priv;
  if ((oct->int_status & 4U) != 0U) {
    oq_no = 0ULL;
    goto ldv_54391;
    ldv_54390: ;
    if ((oct->droq_intr & (u64 )(1 << (int )oq_no)) == 0ULL) {
      goto ldv_54389;
    } else {
    }
    droq = oct->droq[oq_no];
    if (droq->ops.poll_mode != 0U) {
      (*(droq->ops.napi_fn))((void *)droq);
      oct_priv->napi_mask = oct_priv->napi_mask | (unsigned long )(1 << (int )oq_no);
    } else {
      tasklet_schedule(& oct_priv->droq_tasklet);
    }
    ldv_54389:
    oq_no = oq_no + 1ULL;
    ldv_54391: ;
    if (oq_no <= 31ULL) {
      goto ldv_54390;
    } else {
    }
  } else {
  }
  return;
}
}
static irqreturn_t liquidio_intr_handler(int irq , void *dev )
{
  struct octeon_device *oct ;
  irqreturn_t ret ;
  int tmp ;
  {
  oct = (struct octeon_device *)dev;
  (*(oct->fn_list.disable_interrupt))(oct->chip);
  ret = (*(oct->fn_list.process_interrupt_regs))((void *)oct);
  if ((unsigned int )ret == 1U) {
    liquidio_schedule_droq_pkt_handlers(oct);
  } else {
  }
  tmp = atomic_read((atomic_t const *)(& oct->status));
  if (tmp != 12) {
    (*(oct->fn_list.enable_interrupt))(oct->chip);
  } else {
  }
  return (ret);
}
}
static int octeon_setup_interrupt(struct octeon_device *oct )
{
  int irqret ;
  int err ;
  {
  err = pci_enable_msi_exact(oct->pci_dev, 1);
  if (err != 0) {
    dev_warn((struct device const *)(& (oct->pci_dev)->dev), "Reverting to legacy interrupts. Error: %d\n",
             err);
  } else {
    oct->flags = (u16 )((unsigned int )oct->flags | 2U);
  }
  irqret = ldv_request_irq_13((oct->pci_dev)->irq, & liquidio_intr_handler, 128UL,
                              "octeon", (void *)oct);
  if (irqret != 0) {
    if (((unsigned int )oct->flags & 2U) != 0U) {
      pci_disable_msi(oct->pci_dev);
    } else {
    }
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Request IRQ failed with code: %d\n",
            irqret);
    return (1);
  } else {
  }
  return (0);
}
}
static int liquidio_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  struct octeon_device *oct_dev ;
  struct handshake *hs ;
  int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  oct_dev = (struct octeon_device *)0;
  oct_dev = octeon_allocate_device((u32 )pdev->device, 48U);
  if ((unsigned long )oct_dev == (unsigned long )((struct octeon_device *)0)) {
    dev_err((struct device const *)(& pdev->dev), "Unable to allocate device\n");
    return (-12);
  } else {
  }
  _dev_info((struct device const *)(& pdev->dev), "Initializing device %x:%x.\n",
            (unsigned int )pdev->vendor, (unsigned int )pdev->device);
  pci_set_drvdata(pdev, (void *)oct_dev);
  oct_dev->pci_dev = pdev;
  hs = (struct handshake *)(& handshake) + (unsigned long )oct_dev->octeon_id;
  init_completion(& hs->init);
  init_completion(& hs->started);
  hs->pci_dev = pdev;
  if (oct_dev->octeon_id == 0U) {
    complete(& first_stage);
  } else {
  }
  tmp = octeon_device_init(oct_dev);
  if (tmp != 0) {
    liquidio_remove(pdev);
    return (-12);
  } else {
  }
  descriptor.modname = "liquidio";
  descriptor.function = "liquidio_probe";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
  descriptor.format = "Device is ready\n";
  descriptor.lineno = 1026U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct_dev->pci_dev)->dev),
                      "Device is ready\n");
  } else {
  }
  return (0);
}
}
static void octeon_destroy_resources(struct octeon_device *oct )
{
  int i ;
  struct octeon_device_priv *oct_priv ;
  struct handshake *hs ;
  int tmp ;
  struct _ddebug descriptor ;
  char *tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  unsigned long __ms ;
  unsigned long tmp___5 ;
  {
  oct_priv = (struct octeon_device_priv *)oct->priv;
  tmp = atomic_read((atomic_t const *)(& oct->status));
  switch (tmp) {
  case 11: ;
  case 10:
  atomic_set(& oct->status, 12);
  oct->app_mode = 2U;
  descriptor.modname = "liquidio";
  descriptor.function = "octeon_destroy_resources";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
  descriptor.format = "Device state is now %s\n";
  descriptor.lineno = 1053U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = lio_get_state_string(& oct->status);
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "Device state is now %s\n", tmp___0);
  } else {
  }
  schedule_timeout_uninterruptible(25L);
  case 9: ;
  case 8:
  octeon_remove_consoles(oct);
  case 7:
  tmp___2 = wait_for_pending_requests(oct);
  if (tmp___2 != 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "There were pending requests\n");
  } else {
  }
  tmp___3 = lio_wait_for_instr_fetch(oct);
  if (tmp___3 != 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "IQ had pending instructions\n");
  } else {
  }
  (*(oct->fn_list.disable_io_queues))(oct);
  tmp___4 = lio_wait_for_oq_pkts(oct);
  if (tmp___4 != 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "OQ had pending packets\n");
  } else {
  }
  (*(oct->fn_list.disable_interrupt))(oct->chip);
  ldv_free_irq_14((oct->pci_dev)->irq, (void *)oct);
  if (((unsigned int )oct->flags & 2U) != 0U) {
    pci_disable_msi(oct->pci_dev);
  } else {
  }
  (*(oct->fn_list.soft_reset))(oct);
  pci_disable_device(oct->pci_dev);
  case 12: ;
  case 6:
  __ms = 100UL;
  goto ldv_54429;
  ldv_54428:
  __const_udelay(4295000UL);
  ldv_54429:
  tmp___5 = __ms;
  __ms = __ms - 1UL;
  if (tmp___5 != 0UL) {
    goto ldv_54428;
  } else {
  }
  i = 0;
  goto ldv_54433;
  ldv_54432: ;
  if ((((unsigned long )oct->io_qmask.oq >> i) & 1UL) == 0UL) {
    goto ldv_54431;
  } else {
  }
  octeon_delete_droq(oct, (u32 )i);
  ldv_54431:
  i = i + 1;
  ldv_54433: ;
  if (i <= 31) {
    goto ldv_54432;
  } else {
  }
  i = 0;
  goto ldv_54436;
  ldv_54435:
  hs = (struct handshake *)(& handshake) + (unsigned long )i;
  if ((unsigned long )hs->pci_dev != (unsigned long )((struct pci_dev *)0)) {
    handshake[oct->octeon_id].init_ok = 0;
    complete(& handshake[oct->octeon_id].init);
    handshake[oct->octeon_id].started_ok = 0;
    complete(& handshake[oct->octeon_id].started);
  } else {
  }
  i = i + 1;
  ldv_54436: ;
  if (i <= 31) {
    goto ldv_54435;
  } else {
  }
  case 5:
  octeon_delete_response_list(oct);
  case 4:
  octeon_free_sc_buffer_pool(oct);
  case 3:
  i = 0;
  goto ldv_54443;
  ldv_54442: ;
  if ((((unsigned long )oct->io_qmask.iq >> i) & 1UL) == 0UL) {
    goto ldv_54441;
  } else {
  }
  octeon_delete_instr_queue(oct, (u32 )i);
  ldv_54441:
  i = i + 1;
  ldv_54443: ;
  if (i <= 31) {
    goto ldv_54442;
  } else {
  }
  case 2:
  octeon_delete_dispatch_list(oct);
  ldv_cancel_delayed_work_sync_15(& oct->nic_poll_work.work);
  case 1:
  octeon_unmap_pci_barx(oct, 0);
  octeon_unmap_pci_barx(oct, 1);
  case 0: ;
  goto ldv_54448;
  }
  ldv_54448:
  tasklet_kill(& oct_priv->droq_tasklet);
  return;
}
}
static void send_rx_ctrl_cmd(struct lio *lio , int start_stop )
{
  struct octnic_ctrl_pkt nctrl ;
  struct octnic_ctrl_params nparams ;
  int tmp ;
  {
  memset((void *)(& nctrl), 0, 320UL);
  nctrl.ncmd.s.cmd = 4U;
  nctrl.ncmd.s.param1 = (unsigned int )lio->linfo.ifidx;
  nctrl.ncmd.s.param2 = (unsigned short )start_stop;
  nctrl.netpndev = (unsigned long long )lio->netdev;
  nparams.resp_order = 2U;
  tmp = octnet_send_nic_ctrl_pkt(lio->oct_dev, & nctrl, nparams);
  if (tmp < 0) {
    if ((lio->msg_enable & 64U) != 0U) {
      netdev_info((struct net_device const *)lio->netdev, "Failed to send RX Control message\n");
    } else {
    }
  } else {
  }
  return;
}
}
static void liquidio_destroy_nic_device(struct octeon_device *oct , int ifidx )
{
  struct net_device *netdev ;
  struct lio *lio ;
  void *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  netdev = oct->props[ifidx].netdev;
  if ((unsigned long )netdev == (unsigned long )((struct net_device *)0)) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s No netdevice ptr for index %d\n",
            "liquidio_destroy_nic_device", ifidx);
    return;
  } else {
  }
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  descriptor.modname = "liquidio";
  descriptor.function = "liquidio_destroy_nic_device";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
  descriptor.format = "NIC device cleanup\n";
  descriptor.lineno = 1199U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "NIC device cleanup\n");
  } else {
  }
  send_rx_ctrl_cmd(lio, 0);
  tmp___1 = atomic_read((atomic_t const *)(& lio->ifstate));
  if ((tmp___1 & 4) != 0) {
    txqs_stop(netdev);
  } else {
  }
  tmp___2 = atomic_read((atomic_t const *)(& lio->ifstate));
  if ((tmp___2 & 2) != 0) {
    ldv_unregister_netdev_16(netdev);
  } else {
  }
  delete_glist(lio);
  ldv_free_netdev_17(netdev);
  oct->props[ifidx].netdev = (struct net_device *)0;
  return;
}
}
static int liquidio_stop_nic_module(struct octeon_device *oct )
{
  int i ;
  int j ;
  struct lio *lio ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  {
  descriptor.modname = "liquidio";
  descriptor.function = "liquidio_stop_nic_module";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
  descriptor.format = "Stopping network interfaces\n";
  descriptor.lineno = 1225U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "Stopping network interfaces\n");
  } else {
  }
  if (oct->ifcount == 0U) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Init for Octeon was not completed\n");
    return (1);
  } else {
  }
  i = 0;
  goto ldv_54475;
  ldv_54474:
  tmp___0 = netdev_priv((struct net_device const *)oct->props[i].netdev);
  lio = (struct lio *)tmp___0;
  j = 0;
  goto ldv_54472;
  ldv_54471:
  octeon_unregister_droq_ops(oct, (u32 )lio->linfo.rxpciq[j]);
  j = j + 1;
  ldv_54472: ;
  if ((int )lio->linfo.num_rxpciq > j) {
    goto ldv_54471;
  } else {
  }
  i = i + 1;
  ldv_54475: ;
  if ((u32 )i < oct->ifcount) {
    goto ldv_54474;
  } else {
  }
  i = 0;
  goto ldv_54478;
  ldv_54477:
  liquidio_destroy_nic_device(oct, i);
  i = i + 1;
  ldv_54478: ;
  if ((u32 )i < oct->ifcount) {
    goto ldv_54477;
  } else {
  }
  descriptor___0.modname = "liquidio";
  descriptor___0.function = "liquidio_stop_nic_module";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
  descriptor___0.format = "Network interfaces stopped\n";
  descriptor___0.lineno = 1240U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (oct->pci_dev)->dev),
                      "Network interfaces stopped\n");
  } else {
  }
  return (0);
}
}
static void liquidio_remove(struct pci_dev *pdev )
{
  struct octeon_device *oct_dev ;
  void *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = pci_get_drvdata(pdev);
  oct_dev = (struct octeon_device *)tmp;
  descriptor.modname = "liquidio";
  descriptor.function = "liquidio_remove";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
  descriptor.format = "Stopping device\n";
  descriptor.lineno = 1252U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct_dev->pci_dev)->dev),
                      "Stopping device\n");
  } else {
  }
  if (oct_dev->app_mode != 0U && oct_dev->app_mode == 1U) {
    liquidio_stop_nic_module(oct_dev);
  } else {
  }
  octeon_destroy_resources(oct_dev);
  _dev_info((struct device const *)(& (oct_dev->pci_dev)->dev), "Device removed\n");
  octeon_free_device_mem(oct_dev);
  return;
}
}
static int octeon_chip_specific_setup(struct octeon_device *oct )
{
  u32 dev_id ;
  u32 rev_id ;
  int ret ;
  struct octeon_config *tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  {
  ret = 1;
  pci_read_config_dword((struct pci_dev const *)oct->pci_dev, 0, & dev_id);
  pci_read_config_dword((struct pci_dev const *)oct->pci_dev, 8, & rev_id);
  oct->rev_id = (unsigned int )((u16 )rev_id) & 255U;
  switch (dev_id) {
  case 9508733U:
  oct->chip_id = 145U;
  ret = lio_setup_cn68xx_octeon_device(oct);
  goto ldv_54494;
  case 9574269U:
  oct->chip_id = 146U;
  ret = lio_setup_cn66xx_octeon_device(oct);
  goto ldv_54494;
  default:
  dev_err((struct device const *)(& (oct->pci_dev)->dev), "Unknown device found (dev_id: %x)\n",
          dev_id);
  }
  ldv_54494: ;
  if (ret == 0) {
    tmp = octeon_get_conf(oct);
    tmp___0 = OCTEON_MINOR_REV(oct);
    tmp___1 = OCTEON_MAJOR_REV(oct);
    _dev_info((struct device const *)(& (oct->pci_dev)->dev), "CN68XX PASS%d.%d %s\n",
              (int )tmp___1, (int )tmp___0, tmp->card_name);
  } else {
  }
  return (ret);
}
}
static int octeon_pci_os_setup(struct octeon_device *oct )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = pci_enable_device(oct->pci_dev);
  if (tmp != 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "pci_enable_device failed\n");
    return (1);
  } else {
  }
  tmp___0 = dma_set_mask_and_coherent(& (oct->pci_dev)->dev, 0xffffffffffffffffULL);
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Unexpected DMA device capability\n");
    return (1);
  } else {
  }
  pci_set_master(oct->pci_dev);
  return (0);
}
}
__inline static int check_txq_state(struct lio *lio , struct sk_buff *skb )
{
  int q ;
  int iq ;
  bool tmp ;
  int tmp___0 ;
  {
  q = 0;
  iq = 0;
  tmp = netif_is_multiqueue((struct net_device const *)lio->netdev);
  if ((int )tmp) {
    q = (int )skb->queue_mapping;
    iq = (int )lio->linfo.txpciq[((int )lio->linfo.num_txpciq + -1) & q];
  } else {
    iq = lio->txq;
  }
  tmp___0 = octnet_iq_is_full(lio->oct_dev, (u32 )iq);
  if (tmp___0 != 0) {
    return (0);
  } else {
  }
  wake_q(lio->netdev, q);
  return (1);
}
}
static void free_netbuf(void *buf )
{
  struct sk_buff *skb ;
  struct octnet_buf_free_info *finfo ;
  struct lio *lio ;
  {
  finfo = (struct octnet_buf_free_info *)buf;
  skb = finfo->skb;
  lio = finfo->lio;
  dma_unmap_single_attrs(& ((lio->oct_dev)->pci_dev)->dev, finfo->dptr, (size_t )skb->len,
                         1, (struct dma_attrs *)0);
  check_txq_state(lio, skb);
  recv_buffer_free((void *)skb);
  return;
}
}
static void free_netsgbuf(void *buf )
{
  struct octnet_buf_free_info *finfo ;
  struct sk_buff *skb ;
  struct lio *lio ;
  struct octnic_gather *g ;
  int i ;
  int frags ;
  unsigned char *tmp ;
  struct skb_frag_struct *frag ;
  unsigned char *tmp___0 ;
  int tmp___1 ;
  {
  finfo = (struct octnet_buf_free_info *)buf;
  skb = finfo->skb;
  lio = finfo->lio;
  g = finfo->g;
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  frags = (int )((struct skb_shared_info *)tmp)->nr_frags;
  dma_unmap_single_attrs(& ((lio->oct_dev)->pci_dev)->dev, (g->sg)->ptr[0], (size_t )(skb->len - skb->data_len),
                         1, (struct dma_attrs *)0);
  i = 1;
  goto ldv_54523;
  ldv_54522:
  tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
  frag = (struct skb_frag_struct *)(& ((struct skb_shared_info *)tmp___0)->frags) + ((unsigned long )i + 0xffffffffffffffffUL);
  pci_unmap_page((lio->oct_dev)->pci_dev, (g->sg + (unsigned long )(i >> 2))->ptr[i & 3],
                 (size_t )frag->size, 1);
  i = i + 1;
  ldv_54523:
  tmp___1 = frags;
  frags = frags - 1;
  if (tmp___1 != 0) {
    goto ldv_54522;
  } else {
  }
  dma_unmap_single_attrs(& ((lio->oct_dev)->pci_dev)->dev, finfo->dptr, (size_t )g->sg_size,
                         1, (struct dma_attrs *)0);
  spin_lock(& lio->lock);
  list_add_tail(& g->list, & lio->glist);
  spin_unlock(& lio->lock);
  check_txq_state(lio, skb);
  recv_buffer_free((void *)skb);
  return;
}
}
static void free_netsgbuf_with_resp(void *buf )
{
  struct octeon_soft_command *sc ;
  struct octnet_buf_free_info *finfo ;
  struct sk_buff *skb ;
  struct lio *lio ;
  struct octnic_gather *g ;
  int i ;
  int frags ;
  unsigned char *tmp ;
  struct skb_frag_struct *frag ;
  unsigned char *tmp___0 ;
  int tmp___1 ;
  {
  sc = (struct octeon_soft_command *)buf;
  skb = (struct sk_buff *)sc->callback_arg;
  finfo = (struct octnet_buf_free_info *)(& skb->cb);
  lio = finfo->lio;
  g = finfo->g;
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  frags = (int )((struct skb_shared_info *)tmp)->nr_frags;
  dma_unmap_single_attrs(& ((lio->oct_dev)->pci_dev)->dev, (g->sg)->ptr[0], (size_t )(skb->len - skb->data_len),
                         1, (struct dma_attrs *)0);
  i = 1;
  goto ldv_54537;
  ldv_54536:
  tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
  frag = (struct skb_frag_struct *)(& ((struct skb_shared_info *)tmp___0)->frags) + ((unsigned long )i + 0xffffffffffffffffUL);
  pci_unmap_page((lio->oct_dev)->pci_dev, (g->sg + (unsigned long )(i >> 2))->ptr[i & 3],
                 (size_t )frag->size, 1);
  i = i + 1;
  ldv_54537:
  tmp___1 = frags;
  frags = frags - 1;
  if (tmp___1 != 0) {
    goto ldv_54536;
  } else {
  }
  dma_unmap_single_attrs(& ((lio->oct_dev)->pci_dev)->dev, finfo->dptr, (size_t )g->sg_size,
                         1, (struct dma_attrs *)0);
  spin_lock(& lio->lock);
  list_add_tail(& g->list, & lio->glist);
  spin_unlock(& lio->lock);
  check_txq_state(lio, skb);
  return;
}
}
static int liquidio_ptp_adjfreq(struct ptp_clock_info *ptp , s32 ppb )
{
  struct lio *lio ;
  struct ptp_clock_info const *__mptr ;
  struct octeon_device *oct ;
  u64 comp ;
  u64 delta ;
  unsigned long flags ;
  bool neg_adj ;
  uint32_t __base ;
  uint32_t __rem ;
  raw_spinlock_t *tmp ;
  {
  __mptr = (struct ptp_clock_info const *)ptp;
  lio = (struct lio *)__mptr + 0xffffffffffffff08UL;
  oct = lio->oct_dev;
  neg_adj = 0;
  if (ppb < 0) {
    neg_adj = 1;
    ppb = - ppb;
  } else {
  }
  delta = (unsigned long long )ppb << 32;
  __base = (uint32_t )oct->coproc_clock_rate;
  __rem = (uint32_t )(delta % (u64 )__base);
  delta = delta / (u64 )__base;
  tmp = spinlock_check(& lio->ptp_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  comp = lio_pci_readq(oct, 289171558108952ULL);
  if ((int )neg_adj) {
    comp = comp - delta;
  } else {
    comp = comp + delta;
  }
  lio_pci_writeq(oct, comp, 289171558108952ULL);
  spin_unlock_irqrestore(& lio->ptp_lock, flags);
  return (0);
}
}
static int liquidio_ptp_adjtime(struct ptp_clock_info *ptp , s64 delta )
{
  unsigned long flags ;
  struct lio *lio ;
  struct ptp_clock_info const *__mptr ;
  raw_spinlock_t *tmp ;
  {
  __mptr = (struct ptp_clock_info const *)ptp;
  lio = (struct lio *)__mptr + 0xffffffffffffff08UL;
  tmp = spinlock_check(& lio->ptp_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  lio->ptp_adjust = lio->ptp_adjust + delta;
  spin_unlock_irqrestore(& lio->ptp_lock, flags);
  return (0);
}
}
static int liquidio_ptp_gettime(struct ptp_clock_info *ptp , struct timespec *ts )
{
  u64 ns ;
  u32 remainder ;
  unsigned long flags ;
  struct lio *lio ;
  struct ptp_clock_info const *__mptr ;
  struct octeon_device *oct ;
  raw_spinlock_t *tmp ;
  u64 tmp___0 ;
  {
  __mptr = (struct ptp_clock_info const *)ptp;
  lio = (struct lio *)__mptr + 0xffffffffffffff08UL;
  oct = lio->oct_dev;
  tmp = spinlock_check(& lio->ptp_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  ns = lio_pci_readq(oct, 289171558108944ULL);
  ns = (unsigned long long )lio->ptp_adjust + ns;
  spin_unlock_irqrestore(& lio->ptp_lock, flags);
  tmp___0 = div_u64_rem(ns, 1000000000U, & remainder);
  ts->tv_sec = (__kernel_time_t )tmp___0;
  ts->tv_nsec = (long )remainder;
  return (0);
}
}
static int liquidio_ptp_settime(struct ptp_clock_info *ptp , struct timespec const *ts )
{
  u64 ns ;
  unsigned long flags ;
  struct lio *lio ;
  struct ptp_clock_info const *__mptr ;
  struct octeon_device *oct ;
  s64 tmp ;
  raw_spinlock_t *tmp___0 ;
  {
  __mptr = (struct ptp_clock_info const *)ptp;
  lio = (struct lio *)__mptr + 0xffffffffffffff08UL;
  oct = lio->oct_dev;
  tmp = timespec_to_ns(ts);
  ns = (u64 )tmp;
  tmp___0 = spinlock_check(& lio->ptp_lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  lio_pci_writeq(oct, ns, 289171558108944ULL);
  lio->ptp_adjust = 0LL;
  spin_unlock_irqrestore(& lio->ptp_lock, flags);
  return (0);
}
}
static int liquidio_ptp_enable(struct ptp_clock_info *ptp , struct ptp_clock_request *rq ,
                               int on )
{
  {
  return (-95);
}
}
static void oct_ptp_open(struct net_device *netdev )
{
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct ;
  struct lock_class_key __key ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct = lio->oct_dev;
  spinlock_check(& lio->ptp_lock);
  __raw_spin_lock_init(& lio->ptp_lock.__annonCompField18.rlock, "&(&lio->ptp_lock)->rlock",
                       & __key);
  snprintf((char *)(& lio->ptp_info.name), 16UL, "%s", (char *)(& netdev->name));
  lio->ptp_info.owner = & __this_module;
  lio->ptp_info.max_adj = 250000000;
  lio->ptp_info.n_alarm = 0;
  lio->ptp_info.n_ext_ts = 0;
  lio->ptp_info.n_per_out = 0;
  lio->ptp_info.pps = 0;
  lio->ptp_info.adjfreq = & liquidio_ptp_adjfreq;
  lio->ptp_info.adjtime = & liquidio_ptp_adjtime;
  lio->ptp_info.gettime64 = & liquidio_ptp_gettime;
  lio->ptp_info.settime64 = & liquidio_ptp_settime;
  lio->ptp_info.enable = & liquidio_ptp_enable;
  lio->ptp_adjust = 0LL;
  lio->ptp_clock = ptp_clock_register(& lio->ptp_info, & (oct->pci_dev)->dev);
  tmp___0 = IS_ERR((void const *)lio->ptp_clock);
  if ((int )tmp___0) {
    lio->ptp_clock = (struct ptp_clock *)0;
  } else {
  }
  return;
}
}
static void liquidio_ptp_init(struct octeon_device *oct )
{
  u64 clock_comp ;
  u64 cfg ;
  uint32_t __base ;
  uint32_t __rem ;
  {
  clock_comp = 4294967296000000000ULL;
  __base = (uint32_t )oct->coproc_clock_rate;
  __rem = (uint32_t )(clock_comp % (u64 )__base);
  clock_comp = clock_comp / (u64 )__base;
  lio_pci_writeq(oct, clock_comp, 289171558108952ULL);
  cfg = lio_pci_readq(oct, 289171558108928ULL);
  lio_pci_writeq(oct, cfg | 1ULL, 289171558108928ULL);
  return;
}
}
static int load_firmware(struct octeon_device *oct )
{
  int ret ;
  struct firmware const *fw ;
  char fw_name[256U] ;
  char *tmp_fw_type ;
  int tmp ;
  struct octeon_config *tmp___0 ;
  {
  ret = 0;
  tmp = strncmp((char const *)(& fw_type), "none", 5UL);
  if (tmp == 0) {
    _dev_info((struct device const *)(& (oct->pci_dev)->dev), "Skipping firmware load\n");
    return (ret);
  } else {
  }
  if ((int )((signed char )fw_type[0]) == 0) {
    tmp_fw_type = (char *)"nic";
  } else {
    tmp_fw_type = (char *)(& fw_type);
  }
  tmp___0 = octeon_get_conf(oct);
  sprintf((char *)(& fw_name), "%s%s%s_%s%s", (char *)"liquidio/", (char *)"lio_",
          tmp___0->card_name, tmp_fw_type, (char *)".bin");
  ret = request_firmware(& fw, (char const *)(& fw_name), & (oct->pci_dev)->dev);
  if (ret != 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Request firmware failed. Could not find file %s.\n.",
            (char *)(& fw_name));
    return (ret);
  } else {
  }
  ret = octeon_download_firmware(oct, fw->data, fw->size);
  release_firmware(fw);
  return (ret);
}
}
static int octeon_setup_droq(struct octeon_device *oct , int q_no , int num_descs ,
                             int desc_size , void *app_ctx )
{
  int ret_val ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  ret_val = 0;
  descriptor.modname = "liquidio";
  descriptor.function = "octeon_setup_droq";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
  descriptor.format = "Creating Droq: %d\n";
  descriptor.lineno = 1686U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "Creating Droq: %d\n", q_no);
  } else {
  }
  ret_val = octeon_create_droq(oct, (u32 )q_no, (u32 )num_descs, (u32 )desc_size,
                               app_ctx);
  if (ret_val == -1) {
    return (ret_val);
  } else {
  }
  if (ret_val == 1) {
    descriptor___0.modname = "liquidio";
    descriptor___0.function = "octeon_setup_droq";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
    descriptor___0.format = "Using default droq %d\n";
    descriptor___0.lineno = 1693U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (oct->pci_dev)->dev),
                        "Using default droq %d\n", q_no);
    } else {
    }
    return (0);
  } else {
  }
  octeon_set_droq_pkt_op(oct, (u32 )q_no, 1U);
  writel((oct->droq[q_no])->max_count, (void volatile *)(oct->droq[q_no])->pkts_credit_reg);
  return (ret_val);
}
}
static void if_cfg_callback(struct octeon_device *oct , u32 status , void *buf )
{
  struct octeon_soft_command *sc ;
  struct liquidio_if_cfg_resp *resp ;
  struct liquidio_if_cfg_context *ctx ;
  int __var ;
  {
  sc = (struct octeon_soft_command *)buf;
  resp = (struct liquidio_if_cfg_resp *)sc->virtrptr;
  ctx = (struct liquidio_if_cfg_context *)sc->ctxptr;
  oct = lio_get_device((u32 )ctx->octeon_id);
  if (resp->status != 0ULL) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "nic if cfg instruction failed. Status: %llx\n",
            (long long )resp->status);
  } else {
  }
  __var = 0;
  *((int volatile *)(& ctx->cond)) = 1;
  __asm__ volatile ("sfence": : : "memory");
  __wake_up(& ctx->wc, 1U, 1, (void *)0);
  return;
}
}
static u16 select_q(struct net_device *dev , struct sk_buff *skb , void *accel_priv ,
                    u16 (*fallback)(struct net_device * , struct sk_buff * ) )
{
  int qindex ;
  struct lio *lio ;
  void *tmp ;
  u16 tmp___1 ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  bool tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  lio = (struct lio *)tmp;
  tmp___2 = skb_rx_queue_recorded((struct sk_buff const *)skb);
  if ((int )tmp___2) {
    tmp___1 = skb_get_rx_queue((struct sk_buff const *)skb);
    qindex = (int )tmp___1;
  } else {
    __vpp_verify = (void const *)0;
    switch (4UL) {
    case 1UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_54655;
    case 2UL:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_54655;
    case 4UL:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_54655;
    case 8UL:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_54655;
    default:
    __bad_percpu_size();
    }
    ldv_54655:
    pscr_ret__ = pfo_ret__;
    goto ldv_54661;
    case 2UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_54665;
    case 2UL:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_54665;
    case 4UL:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_54665;
    case 8UL:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_54665;
    default:
    __bad_percpu_size();
    }
    ldv_54665:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_54661;
    case 4UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_54674;
    case 2UL:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_54674;
    case 4UL:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_54674;
    case 8UL:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_54674;
    default:
    __bad_percpu_size();
    }
    ldv_54674:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_54661;
    case 8UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_54683;
    case 2UL:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_54683;
    case 4UL:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_54683;
    case 8UL:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_54683;
    default:
    __bad_percpu_size();
    }
    ldv_54683:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_54661;
    default:
    __bad_size_call_parameter();
    goto ldv_54661;
    }
    ldv_54661:
    qindex = pscr_ret__;
  }
  return ((u16 )((int )((short )qindex) & (int )((short )((unsigned int )((unsigned short )lio->linfo.num_txpciq) - 1U))));
}
}
static void liquidio_push_packet(u32 octeon_id , void *skbuff , u32 len , union octeon_rh *rh ,
                                 void *param )
{
  struct napi_struct *napi ;
  struct octeon_device *oct ;
  struct octeon_device *tmp ;
  struct sk_buff *skb ;
  struct skb_shared_hwtstamps *shhwtstamps ;
  u64 ns ;
  struct net_device *netdev ;
  struct octeon_droq *droq ;
  struct napi_struct const *__mptr ;
  int packet_was_received ;
  struct lio *lio ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  gro_result_t tmp___3 ;
  {
  napi = (struct napi_struct *)param;
  tmp = lio_get_device(octeon_id);
  oct = tmp;
  skb = (struct sk_buff *)skbuff;
  netdev = oct->props[(int )rh->r_dh.link].netdev;
  __mptr = (struct napi_struct const *)param;
  droq = (struct octeon_droq *)__mptr + 0xfffffffffffffec0UL;
  if ((unsigned long )netdev != (unsigned long )((struct net_device *)0)) {
    tmp___0 = netdev_priv((struct net_device const *)netdev);
    lio = (struct lio *)tmp___0;
    tmp___1 = ifstate_check(lio, 4);
    if (tmp___1 == 0) {
      recv_buffer_free((void *)skb);
      droq->stats.rx_dropped = droq->stats.rx_dropped + 1ULL;
      return;
    } else {
    }
    skb->dev = netdev;
    if ((unsigned int )*((unsigned char *)rh + 0UL) != 0U) {
      tmp___2 = ifstate_check(lio, 8);
      if (tmp___2 != 0) {
        memcpy((void *)(& ns), (void const *)skb->data, 8UL);
        shhwtstamps = skb_hwtstamps(skb);
        shhwtstamps->hwtstamp = ns_to_ktime((unsigned long long )lio->ptp_adjust + ns);
      } else {
      }
      skb_pull(skb, 8U);
    } else {
    }
    skb->protocol = eth_type_trans(skb, skb->dev);
    if ((netdev->features & 17179869184ULL) != 0ULL && (unsigned int )*((unsigned char *)rh + 0UL) == 6U) {
      skb->ip_summed = 1U;
    } else {
      skb->ip_summed = 0U;
    }
    tmp___3 = napi_gro_receive(napi, skb);
    packet_was_received = (unsigned int )tmp___3 != 4U;
    if (packet_was_received != 0) {
      droq->stats.rx_bytes_received = droq->stats.rx_bytes_received + (u64 )len;
      droq->stats.rx_pkts_received = droq->stats.rx_pkts_received + 1ULL;
      netdev->last_rx = jiffies;
    } else {
      droq->stats.rx_dropped = droq->stats.rx_dropped + 1ULL;
      if ((lio->msg_enable & 64U) != 0U) {
        netdev_info((struct net_device const *)lio->netdev, "droq:%d  error rx_dropped:%llu\n",
                    droq->q_no, droq->stats.rx_dropped);
      } else {
      }
    }
  } else {
    recv_buffer_free((void *)skb);
  }
  return;
}
}
static void napi_schedule_wrapper(void *param )
{
  struct napi_struct *napi ;
  {
  napi = (struct napi_struct *)param;
  napi_schedule(napi);
  return;
}
}
static void liquidio_napi_drv_callback(void *arg )
{
  struct octeon_droq *droq ;
  int this_cpu ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  struct call_single_data *csd ;
  {
  droq = (struct octeon_droq *)arg;
  __vpp_verify = (void const *)0;
  switch (4UL) {
  case 1UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
  goto ldv_54723;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_54723;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_54723;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_54723;
  default:
  __bad_percpu_size();
  }
  ldv_54723:
  pscr_ret__ = pfo_ret__;
  goto ldv_54729;
  case 2UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_54733;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_54733;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_54733;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_54733;
  default:
  __bad_percpu_size();
  }
  ldv_54733:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_54729;
  case 4UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_54742;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_54742;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_54742;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_54742;
  default:
  __bad_percpu_size();
  }
  ldv_54742:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_54729;
  case 8UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_54751;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_54751;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_54751;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_54751;
  default:
  __bad_percpu_size();
  }
  ldv_54751:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_54729;
  default:
  __bad_size_call_parameter();
  goto ldv_54729;
  }
  ldv_54729:
  this_cpu = pscr_ret__;
  if (droq->cpu_id == (u32 )this_cpu) {
    napi_schedule(& droq->napi);
  } else {
    csd = & droq->csd;
    csd->func = & napi_schedule_wrapper;
    csd->info = (void *)(& droq->napi);
    csd->flags = 0U;
    smp_call_function_single_async((int )droq->cpu_id, csd);
  }
  return;
}
}
static int liquidio_napi_do_rx(struct octeon_droq *droq , int budget )
{
  int work_done ;
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct ;
  {
  tmp = netdev_priv((struct net_device const *)droq->napi.dev);
  lio = (struct lio *)tmp;
  oct = lio->oct_dev;
  work_done = octeon_process_droq_poll_cmd(oct, droq->q_no, 2, (u32 )budget);
  if (work_done < 0) {
    if ((lio->msg_enable & 64U) != 0U) {
      netdev_info((struct net_device const *)lio->netdev, "Receive work_done < 0, rxq:%d\n",
                  droq->q_no);
    } else {
    }
    goto octnet_napi_finish;
  } else {
  }
  if (work_done > budget) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), ">>>> %s work_done: %d budget: %d\n",
            "liquidio_napi_do_rx", work_done, budget);
  } else {
  }
  return (work_done);
  octnet_napi_finish:
  napi_complete(& droq->napi);
  octeon_process_droq_poll_cmd(oct, droq->q_no, 4, 0U);
  return (0);
}
}
static int liquidio_napi_poll(struct napi_struct *napi , int budget )
{
  struct octeon_droq *droq ;
  int work_done ;
  struct napi_struct const *__mptr ;
  {
  __mptr = (struct napi_struct const *)napi;
  droq = (struct octeon_droq *)__mptr + 0xfffffffffffffec0UL;
  work_done = liquidio_napi_do_rx(droq, budget);
  if (work_done < budget) {
    napi_complete(napi);
    octeon_process_droq_poll_cmd(droq->oct_dev, droq->q_no, 4, 0U);
    return (0);
  } else {
  }
  return (work_done);
}
}
__inline static int setup_io_queues(struct octeon_device *octeon_dev , struct net_device *net_device )
{
  int first_time ;
  struct octeon_droq_ops droq_ops ;
  int cpu_id ;
  int cpu_id_modulus ;
  struct octeon_droq *droq ;
  struct napi_struct *napi ;
  int q ;
  int q_no ;
  int retval ;
  struct lio *lio ;
  int num_tx_descs ;
  void *tmp ;
  unsigned int tmp___0 ;
  struct octeon_config *tmp___1 ;
  struct octeon_config *tmp___2 ;
  struct octeon_config *tmp___3 ;
  struct netdev_queue *tmp___4 ;
  {
  first_time = 1;
  retval = 0;
  tmp = netdev_priv((struct net_device const *)net_device);
  lio = (struct lio *)tmp;
  if (first_time != 0) {
    first_time = 0;
    memset((void *)(& droq_ops), 0, 24UL);
    droq_ops.fptr = & liquidio_push_packet;
    droq_ops.poll_mode = 1U;
    droq_ops.napi_fn = & liquidio_napi_drv_callback;
    cpu_id = 0;
    tmp___0 = cpumask_weight(cpu_present_mask);
    cpu_id_modulus = (int )tmp___0;
  } else {
  }
  q = 0;
  goto ldv_54794;
  ldv_54793:
  q_no = (int )lio->linfo.rxpciq[q];
  tmp___1 = octeon_get_conf(octeon_dev);
  tmp___2 = octeon_get_conf(octeon_dev);
  retval = octeon_setup_droq(octeon_dev, q_no, (int )tmp___2->nic_if_cfg[lio->ifidx].num_rx_descs,
                             (int )tmp___1->nic_if_cfg[lio->ifidx].rx_buf_size, (void *)0);
  if (retval != 0) {
    dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), " %s : Runtime DROQ(RxQ) creation failed.\n",
            "setup_io_queues");
    return (1);
  } else {
  }
  droq = octeon_dev->droq[q_no];
  napi = & droq->napi;
  netif_napi_add(net_device, napi, & liquidio_napi_poll, 64);
  droq->cpu_id = (u32 )cpu_id;
  cpu_id = cpu_id + 1;
  if (cpu_id >= cpu_id_modulus) {
    cpu_id = 0;
  } else {
  }
  octeon_register_droq_ops(octeon_dev, (u32 )q_no, & droq_ops);
  q = q + 1;
  ldv_54794: ;
  if ((int )lio->linfo.num_rxpciq > q) {
    goto ldv_54793;
  } else {
  }
  q = 0;
  goto ldv_54797;
  ldv_54796:
  tmp___3 = octeon_get_conf(octeon_dev);
  num_tx_descs = (int )tmp___3->nic_if_cfg[lio->ifidx].num_tx_descs;
  tmp___4 = netdev_get_tx_queue((struct net_device const *)net_device, (unsigned int )q);
  retval = octeon_setup_iq(octeon_dev, (u32 )lio->linfo.txpciq[q], (u32 )num_tx_descs,
                           (void *)tmp___4);
  if (retval != 0) {
    dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), " %s : Runtime IQ(TxQ) creation failed.\n",
            "setup_io_queues");
    return (1);
  } else {
  }
  q = q + 1;
  ldv_54797: ;
  if ((int )lio->linfo.num_txpciq > q) {
    goto ldv_54796;
  } else {
  }
  return (0);
}
}
static void octnet_poll_check_txq_status(struct work_struct *work )
{
  struct cavium_wk *wk ;
  struct lio *lio ;
  int tmp ;
  unsigned long tmp___0 ;
  {
  wk = (struct cavium_wk *)work;
  lio = (struct lio *)wk->ctxptr;
  tmp = ifstate_check(lio, 4);
  if (tmp == 0) {
    return;
  } else {
  }
  check_txq_status(lio);
  tmp___0 = msecs_to_jiffies(1U);
  queue_delayed_work(lio->txq_status_wq.wq, & lio->txq_status_wq.wk.work, tmp___0);
  return;
}
}
__inline static void setup_tx_poll_fn(struct net_device *netdev )
{
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct ;
  struct lock_class_key __key ;
  char const *__lock_name ;
  struct workqueue_struct *tmp___0 ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___1 ;
  unsigned long tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct = lio->oct_dev;
  __lock_name = "\"%s\"(\"txq-status\")";
  tmp___0 = __alloc_workqueue_key("%s", 8U, 1, & __key, __lock_name, (char *)"txq-status");
  lio->txq_status_wq.wq = tmp___0;
  if ((unsigned long )lio->txq_status_wq.wq == (unsigned long )((struct workqueue_struct *)0)) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "unable to create cavium txq status wq\n");
    return;
  } else {
  }
  __init_work(& lio->txq_status_wq.wk.work.work, 0);
  __constr_expr_0.counter = 137438953408L;
  lio->txq_status_wq.wk.work.work.data = __constr_expr_0;
  lockdep_init_map(& lio->txq_status_wq.wk.work.work.lockdep_map, "(&(&lio->txq_status_wq.wk.work)->work)",
                   & __key___0, 0);
  INIT_LIST_HEAD(& lio->txq_status_wq.wk.work.work.entry);
  lio->txq_status_wq.wk.work.work.func = & octnet_poll_check_txq_status;
  init_timer_key(& lio->txq_status_wq.wk.work.timer, 2097152U, "(&(&lio->txq_status_wq.wk.work)->timer)",
                 & __key___1);
  lio->txq_status_wq.wk.work.timer.function = & delayed_work_timer_fn;
  lio->txq_status_wq.wk.work.timer.data = (unsigned long )(& lio->txq_status_wq.wk.work);
  lio->txq_status_wq.wk.ctxptr = (void *)lio;
  tmp___1 = msecs_to_jiffies(1U);
  queue_delayed_work(lio->txq_status_wq.wq, & lio->txq_status_wq.wk.work, tmp___1);
  return;
}
}
static int liquidio_open(struct net_device *netdev )
{
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct ;
  struct napi_struct *napi ;
  struct napi_struct *n ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct = lio->oct_dev;
  __mptr = (struct list_head const *)netdev->napi_list.next;
  napi = (struct napi_struct *)__mptr + 0xffffffffffffff10UL;
  __mptr___0 = (struct list_head const *)napi->dev_list.next;
  n = (struct napi_struct *)__mptr___0 + 0xffffffffffffff10UL;
  goto ldv_54829;
  ldv_54828:
  napi_enable(napi);
  napi = n;
  __mptr___1 = (struct list_head const *)n->dev_list.next;
  n = (struct napi_struct *)__mptr___1 + 0xffffffffffffff10UL;
  ldv_54829: ;
  if ((unsigned long )(& napi->dev_list) != (unsigned long )(& netdev->napi_list)) {
    goto ldv_54828;
  } else {
  }
  oct_ptp_open(netdev);
  ifstate_set(lio, 4);
  setup_tx_poll_fn(netdev);
  start_txq(netdev);
  if ((lio->msg_enable & 32U) != 0U) {
    netdev_info((struct net_device const *)lio->netdev, "Interface Open, ready for traffic\n");
  } else {
  }
  ldv_try_module_get_18(& __this_module);
  send_rx_ctrl_cmd(lio, 1);
  lio->intf_open = 1U;
  _dev_info((struct device const *)(& (oct->pci_dev)->dev), "%s interface is opened\n",
            (char *)(& netdev->name));
  return (0);
}
}
static int liquidio_stop(struct net_device *netdev )
{
  struct napi_struct *napi ;
  struct napi_struct *n ;
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct = lio->oct_dev;
  if ((lio->msg_enable & 16U) != 0U) {
    netdev_info((struct net_device const *)lio->netdev, "Stopping interface!\n");
  } else {
  }
  lio->intf_open = 0U;
  lio->linfo.link.s.status = 0U;
  netif_carrier_off(netdev);
  send_rx_ctrl_cmd(lio, 0);
  ldv_cancel_delayed_work_sync_19(& lio->txq_status_wq.wk.work);
  ldv_flush_workqueue_20(lio->txq_status_wq.wq);
  ldv_destroy_workqueue_21(lio->txq_status_wq.wq);
  if ((unsigned long )lio->ptp_clock != (unsigned long )((struct ptp_clock *)0)) {
    ptp_clock_unregister(lio->ptp_clock);
    lio->ptp_clock = (struct ptp_clock *)0;
  } else {
  }
  ifstate_reset(lio, 4);
  set_bit(0L, (unsigned long volatile *)(& (lio->netdev)->state));
  __mptr = (struct list_head const *)netdev->napi_list.next;
  napi = (struct napi_struct *)__mptr + 0xffffffffffffff10UL;
  __mptr___0 = (struct list_head const *)napi->dev_list.next;
  n = (struct napi_struct *)__mptr___0 + 0xffffffffffffff10UL;
  goto ldv_54845;
  ldv_54844:
  napi_disable(napi);
  napi = n;
  __mptr___1 = (struct list_head const *)n->dev_list.next;
  n = (struct napi_struct *)__mptr___1 + 0xffffffffffffff10UL;
  ldv_54845: ;
  if ((unsigned long )(& napi->dev_list) != (unsigned long )(& netdev->napi_list)) {
    goto ldv_54844;
  } else {
  }
  txqs_stop(netdev);
  _dev_info((struct device const *)(& (oct->pci_dev)->dev), "%s interface is stopped\n",
            (char *)(& netdev->name));
  ldv_module_put_22(& __this_module);
  return (0);
}
}
void liquidio_link_ctrl_cmd_completion(void *nctrl_ptr )
{
  struct octnic_ctrl_pkt *nctrl ;
  struct net_device *netdev ;
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct ;
  {
  nctrl = (struct octnic_ctrl_pkt *)nctrl_ptr;
  netdev = (struct net_device *)nctrl->netpndev;
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct = lio->oct_dev;
  switch ((int )nctrl->ncmd.s.cmd) {
  case 3: ;
  case 5: ;
  goto ldv_54856;
  case 2: ;
  if ((lio->msg_enable & 2U) != 0U) {
    netdev_info((struct net_device const *)lio->netdev, " MACAddr changed to 0x%llx\n",
                (long long )nctrl->udd[0]);
  } else {
  }
  _dev_info((struct device const *)(& (oct->pci_dev)->dev), "%s MACAddr changed to 0x%llx\n",
            (char *)(& netdev->name), (long long )nctrl->udd[0]);
  memcpy((void *)netdev->dev_addr, (void const *)(& nctrl->udd) + 2U, 6UL);
  goto ldv_54856;
  case 1: ;
  if ((lio->msg_enable & 2U) != 0U) {
    netdev_info((struct net_device const *)lio->netdev, " MTU Changed from %d to %d\n",
                netdev->mtu, (int )nctrl->ncmd.s.param2);
  } else {
  }
  _dev_info((struct device const *)(& (oct->pci_dev)->dev), "%s MTU Changed from %d to %d\n",
            (char *)(& netdev->name), netdev->mtu, (int )nctrl->ncmd.s.param2);
  netdev->mtu = (unsigned int )nctrl->ncmd.s.param2;
  goto ldv_54856;
  case 10: ;
  if ((lio->msg_enable & 2U) != 0U) {
    netdev_info((struct net_device const *)lio->netdev, "LED Flashing visual identification\n");
  } else {
  }
  goto ldv_54856;
  case 11:
  _dev_info((struct device const *)(& (oct->pci_dev)->dev), "%s LRO Enabled\n",
            (char *)(& netdev->name));
  goto ldv_54856;
  case 12:
  _dev_info((struct device const *)(& (oct->pci_dev)->dev), "%s LRO Disabled\n",
            (char *)(& netdev->name));
  goto ldv_54856;
  case 20:
  _dev_info((struct device const *)(& (oct->pci_dev)->dev), "%s LRO Enabled\n",
            (char *)(& netdev->name));
  goto ldv_54856;
  case 21:
  _dev_info((struct device const *)(& (oct->pci_dev)->dev), "%s LRO Disabled\n",
            (char *)(& netdev->name));
  goto ldv_54856;
  case 7:
  _dev_info((struct device const *)(& (oct->pci_dev)->dev), "%s settings changed\n",
            (char *)(& netdev->name));
  goto ldv_54856;
  default:
  dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s Unknown cmd %d\n",
          "liquidio_link_ctrl_cmd_completion", (int )nctrl->ncmd.s.cmd);
  }
  ldv_54856: ;
  return;
}
}
__inline static enum octnet_ifflags get_new_flags(struct net_device *netdev )
{
  enum octnet_ifflags f ;
  {
  f = 16;
  if ((netdev->flags & 256U) != 0U) {
    f = (enum octnet_ifflags )((unsigned int )f | 1U);
  } else {
  }
  if ((netdev->flags & 512U) != 0U) {
    f = (enum octnet_ifflags )((unsigned int )f | 2U);
  } else {
  }
  if ((netdev->flags & 4096U) != 0U) {
    f = (enum octnet_ifflags )((unsigned int )f | 4U);
    if (netdev->mc.count > 32) {
      f = (enum octnet_ifflags )((unsigned int )f | 2U);
    } else {
    }
  } else {
  }
  if ((netdev->flags & 2U) != 0U) {
    f = (enum octnet_ifflags )((unsigned int )f | 8U);
  } else {
  }
  return (f);
}
}
static void liquidio_set_mcast_list(struct net_device *netdev )
{
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct ;
  struct octnic_ctrl_pkt nctrl ;
  struct octnic_ctrl_params nparams ;
  struct netdev_hw_addr *ha ;
  u64 *mc ;
  int ret ;
  int i ;
  int mc_count ;
  int _min1 ;
  int _min2 ;
  enum octnet_ifflags tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct = lio->oct_dev;
  _min1 = netdev->mc.count;
  _min2 = 32;
  mc_count = _min1 < _min2 ? _min1 : _min2;
  memset((void *)(& nctrl), 0, 320UL);
  nctrl.ncmd.u64 = 0ULL;
  nctrl.ncmd.s.cmd = 5U;
  nctrl.ncmd.s.param1 = (unsigned int )lio->linfo.ifidx;
  tmp___0 = get_new_flags(netdev);
  nctrl.ncmd.s.param2 = (unsigned short )tmp___0;
  nctrl.ncmd.s.param3 = (unsigned char )mc_count;
  nctrl.ncmd.s.more = (unsigned char )mc_count;
  nctrl.netpndev = (unsigned long long )netdev;
  nctrl.cb_fn = & liquidio_link_ctrl_cmd_completion;
  i = 0;
  mc = (u64 *)(& nctrl.udd);
  __mptr = (struct list_head const *)netdev->mc.list.next;
  ha = (struct netdev_hw_addr *)__mptr;
  goto ldv_54892;
  ldv_54891:
  *mc = 0ULL;
  memcpy((void *)mc + 2U, (void const *)(& ha->addr), 6UL);
  mc = mc + 1;
  if ((unsigned long )mc > (unsigned long )((u64 *)(& nctrl.udd) + (unsigned long )mc_count)) {
    goto ldv_54890;
  } else {
  }
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (struct netdev_hw_addr *)__mptr___0;
  ldv_54892: ;
  if ((unsigned long )(& ha->list) != (unsigned long )(& netdev->mc.list)) {
    goto ldv_54891;
  } else {
  }
  ldv_54890:
  nctrl.wait_time = 0UL;
  nparams.resp_order = 2U;
  ret = octnet_send_nic_ctrl_pkt(lio->oct_dev, & nctrl, nparams);
  if (ret < 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "DEVFLAGS change failed in core (ret: 0x%x)\n",
            ret);
  } else {
  }
  return;
}
}
static int liquidio_set_mac(struct net_device *netdev , void *p )
{
  int ret ;
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct ;
  struct sockaddr *addr ;
  struct octnic_ctrl_pkt nctrl ;
  struct octnic_ctrl_params nparams ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  ret = 0;
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct = lio->oct_dev;
  addr = (struct sockaddr *)p;
  tmp___0 = is_valid_ether_addr((u8 const *)(& addr->sa_data));
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-99);
  } else {
    tmp___2 = ifstate_check(lio, 4);
    if (tmp___2 != 0) {
      return (-99);
    } else {
    }
  }
  memset((void *)(& nctrl), 0, 320UL);
  nctrl.ncmd.u64 = 0ULL;
  nctrl.ncmd.s.cmd = 2U;
  nctrl.ncmd.s.param1 = (unsigned int )lio->linfo.ifidx;
  nctrl.ncmd.s.param2 = 0U;
  nctrl.ncmd.s.more = 1U;
  nctrl.netpndev = (unsigned long long )netdev;
  nctrl.cb_fn = & liquidio_link_ctrl_cmd_completion;
  nctrl.wait_time = 100UL;
  nctrl.udd[0] = 0ULL;
  memcpy((void *)(& nctrl.udd) + 2U, (void const *)(& addr->sa_data), 6UL);
  nparams.resp_order = 0U;
  ret = octnet_send_nic_ctrl_pkt(lio->oct_dev, & nctrl, nparams);
  if (ret < 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "MAC Address change failed\n");
    return (-12);
  } else {
  }
  memcpy((void *)netdev->dev_addr, (void const *)(& addr->sa_data), (size_t )netdev->addr_len);
  memcpy((void *)(& lio->linfo.hw_addr) + 2U, (void const *)(& addr->sa_data),
           6UL);
  return (0);
}
}
static struct net_device_stats *liquidio_get_stats(struct net_device *netdev )
{
  struct lio *lio ;
  void *tmp ;
  struct net_device_stats *stats ;
  struct octeon_device *oct ;
  u64 pkts ;
  u64 drop ;
  u64 bytes ;
  struct oct_droq_stats *oq_stats ;
  struct oct_iq_stats *iq_stats ;
  int i ;
  int iq_no ;
  int oq_no ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  stats = & netdev->stats;
  pkts = 0ULL;
  drop = 0ULL;
  bytes = 0ULL;
  oct = lio->oct_dev;
  i = 0;
  goto ldv_54918;
  ldv_54917:
  iq_no = (int )lio->linfo.txpciq[i];
  iq_stats = & (oct->instr_queue[iq_no])->stats;
  pkts = iq_stats->tx_done + pkts;
  drop = iq_stats->tx_dropped + drop;
  bytes = iq_stats->tx_tot_bytes + bytes;
  i = i + 1;
  ldv_54918: ;
  if ((int )lio->linfo.num_txpciq > i) {
    goto ldv_54917;
  } else {
  }
  stats->tx_packets = (unsigned long )pkts;
  stats->tx_bytes = (unsigned long )bytes;
  stats->tx_dropped = (unsigned long )drop;
  pkts = 0ULL;
  drop = 0ULL;
  bytes = 0ULL;
  i = 0;
  goto ldv_54921;
  ldv_54920:
  oq_no = (int )lio->linfo.rxpciq[i];
  oq_stats = & (oct->droq[oq_no])->stats;
  pkts = oq_stats->rx_pkts_received + pkts;
  drop = (((oq_stats->rx_dropped + oq_stats->dropped_nodispatch) + oq_stats->dropped_toomany) + oq_stats->dropped_nomem) + drop;
  bytes = oq_stats->rx_bytes_received + bytes;
  i = i + 1;
  ldv_54921: ;
  if ((int )lio->linfo.num_rxpciq > i) {
    goto ldv_54920;
  } else {
  }
  stats->rx_bytes = (unsigned long )bytes;
  stats->rx_packets = (unsigned long )pkts;
  stats->rx_dropped = (unsigned long )drop;
  return (stats);
}
}
static int liquidio_change_mtu(struct net_device *netdev , int new_mtu )
{
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct ;
  struct octnic_ctrl_pkt nctrl ;
  struct octnic_ctrl_params nparams ;
  int max_frm_size ;
  int ret ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct = lio->oct_dev;
  max_frm_size = new_mtu + 30;
  ret = 0;
  if (max_frm_size <= 71 || max_frm_size > 16030) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Invalid MTU: %d\n",
            new_mtu);
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Valid range %d and %d\n",
            42, 16000);
    return (-22);
  } else {
  }
  memset((void *)(& nctrl), 0, 320UL);
  nctrl.ncmd.u64 = 0ULL;
  nctrl.ncmd.s.cmd = 1U;
  nctrl.ncmd.s.param1 = (unsigned int )lio->linfo.ifidx;
  nctrl.ncmd.s.param2 = (unsigned short )new_mtu;
  nctrl.wait_time = 100UL;
  nctrl.netpndev = (unsigned long long )netdev;
  nctrl.cb_fn = & liquidio_link_ctrl_cmd_completion;
  nparams.resp_order = 0U;
  ret = octnet_send_nic_ctrl_pkt(lio->oct_dev, & nctrl, nparams);
  if (ret < 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Failed to set MTU\n");
    return (-1);
  } else {
  }
  lio->mtu = (u32 )new_mtu;
  return (0);
}
}
static int hwtstamp_ioctl(struct net_device *netdev , struct ifreq *ifr , int cmd )
{
  struct hwtstamp_config conf ;
  struct lio *lio ;
  void *tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  tmp___0 = copy_from_user((void *)(& conf), (void const *)ifr->ifr_ifru.ifru_data,
                           12UL);
  if (tmp___0 != 0UL) {
    return (-14);
  } else {
  }
  if (conf.flags != 0) {
    return (-22);
  } else {
  }
  switch (conf.tx_type) {
  case 1: ;
  case 0: ;
  goto ldv_54942;
  default: ;
  return (-34);
  }
  ldv_54942: ;
  switch (conf.rx_filter) {
  case 0: ;
  goto ldv_54945;
  case 1: ;
  case 2: ;
  case 3: ;
  case 4: ;
  case 5: ;
  case 6: ;
  case 7: ;
  case 8: ;
  case 9: ;
  case 10: ;
  case 11: ;
  case 12: ;
  case 13: ;
  case 14:
  conf.rx_filter = 1;
  goto ldv_54945;
  default: ;
  return (-34);
  }
  ldv_54945: ;
  if (conf.rx_filter == 1) {
    ifstate_set(lio, 8);
  } else {
    ifstate_reset(lio, 8);
  }
  tmp___1 = copy_to_user(ifr->ifr_ifru.ifru_data, (void const *)(& conf), 12UL);
  return (tmp___1 != 0UL ? -14 : 0);
}
}
static int liquidio_ioctl(struct net_device *netdev , struct ifreq *ifr , int cmd )
{
  int tmp ;
  {
  switch (cmd) {
  case 35248:
  tmp = hwtstamp_ioctl(netdev, ifr, cmd);
  return (tmp);
  default: ;
  return (-95);
  }
}
}
static void handle_timestamp(struct octeon_device *oct , u32 status , void *buf )
{
  struct octnet_buf_free_info *finfo ;
  struct octeon_soft_command *sc ;
  struct oct_timestamp_resp *resp ;
  struct lio *lio ;
  struct sk_buff *skb ;
  struct skb_shared_hwtstamps ts ;
  u64 ns ;
  unsigned char *tmp ;
  long tmp___0 ;
  {
  skb = (struct sk_buff *)buf;
  finfo = (struct octnet_buf_free_info *)(& skb->cb);
  lio = finfo->lio;
  sc = finfo->sc;
  oct = lio->oct_dev;
  resp = (struct oct_timestamp_resp *)sc->virtrptr;
  if (status != 0U) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Tx timestamp instruction failed. Status: %llx\n",
            (long long )status);
    resp->timestamp = 0ULL;
  } else {
  }
  octeon_swap_8B_data(& resp->timestamp, 1U);
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  tmp___0 = ldv__builtin_expect(1L, 0L);
  if (tmp___0 != 0L) {
    ns = resp->timestamp;
    if ((lio->msg_enable & 1024U) != 0U) {
      netdev_info((struct net_device const *)lio->netdev, "Got resulting SKBTX_HW_TSTAMP skb=%p ns=%016llu\n",
                  skb, ns);
    } else {
    }
    ts.hwtstamp = ns_to_ktime((unsigned long long )lio->ptp_adjust + ns);
    skb_tstamp_tx(skb, & ts);
  } else {
  }
  octeon_free_soft_command(oct, sc);
  recv_buffer_free((void *)skb);
  return;
}
}
__inline static int send_nic_timestamp_pkt(struct octeon_device *oct , struct octnic_data_pkt *ndata ,
                                           struct octnet_buf_free_info *finfo , int xmit_more )
{
  int retval ;
  struct octeon_soft_command *sc ;
  struct octeon_instr_ih *ih ;
  struct octeon_instr_rdp *rdp ;
  struct lio *lio ;
  int ring_doorbell___0 ;
  void *tmp ;
  {
  lio = finfo->lio;
  tmp = octeon_alloc_soft_command_resp(oct, & ndata->cmd, 24UL);
  sc = (struct octeon_soft_command *)tmp;
  finfo->sc = sc;
  if ((unsigned long )sc == (unsigned long )((struct octeon_soft_command *)0)) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "No memory for timestamped data packet\n");
    return (-1);
  } else {
  }
  if (ndata->reqtype == 1U) {
    ndata->reqtype = 3U;
  } else
  if (ndata->reqtype == 2U) {
    ndata->reqtype = 4U;
  } else {
  }
  sc->callback = & handle_timestamp;
  sc->callback_arg = (void *)finfo->skb;
  sc->iq_no = ndata->q_no;
  ih = (struct octeon_instr_ih *)(& sc->cmd.ih);
  rdp = (struct octeon_instr_rdp *)(& sc->cmd.rdp);
  ring_doorbell___0 = xmit_more == 0;
  retval = octeon_send_command(oct, sc->iq_no, (u32 )ring_doorbell___0, (void *)(& sc->cmd),
                               (void *)sc, (u32 )ih->dlengsz, ndata->reqtype);
  if (retval != 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "timestamp data packet failed status: %x\n",
            retval);
    octeon_free_soft_command(oct, sc);
  } else
  if ((lio->msg_enable & 256U) != 0U) {
    netdev_info((struct net_device const *)lio->netdev, "Queued timestamp packet\n");
  } else {
  }
  return (retval);
}
}
__inline static int is_ipv4(struct sk_buff *skb )
{
  struct iphdr *tmp ;
  int tmp___0 ;
  {
  if ((unsigned int )skb->protocol == 8U) {
    tmp = ip_hdr((struct sk_buff const *)skb);
    if ((unsigned int )*((unsigned char *)tmp + 0UL) == 64U) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  return (tmp___0);
}
}
__inline static int is_vlan(struct sk_buff *skb )
{
  {
  return ((unsigned int )skb->protocol == 129U);
}
}
__inline static int is_ip_fragmented(struct sk_buff *skb )
{
  struct iphdr *tmp ;
  {
  tmp = ip_hdr((struct sk_buff const *)skb);
  return (((int )tmp->frag_off & 65343) != 0);
}
}
__inline static int is_ipv6(struct sk_buff *skb )
{
  struct ipv6hdr *tmp ;
  int tmp___0 ;
  {
  if ((unsigned int )skb->protocol == 56710U) {
    tmp = ipv6_hdr((struct sk_buff const *)skb);
    if ((unsigned int )*((unsigned char *)tmp + 0UL) == 96U) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  return (tmp___0);
}
}
__inline static int is_with_extn_hdr(struct sk_buff *skb )
{
  struct ipv6hdr *tmp ;
  struct ipv6hdr *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ipv6_hdr((struct sk_buff const *)skb);
  if ((unsigned int )tmp->nexthdr != 6U) {
    tmp___0 = ipv6_hdr((struct sk_buff const *)skb);
    if ((unsigned int )tmp___0->nexthdr != 17U) {
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
__inline static int is_tcpudp(struct sk_buff *skb )
{
  struct iphdr *tmp ;
  struct iphdr *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ip_hdr((struct sk_buff const *)skb);
  if ((unsigned int )tmp->protocol == 6U) {
    tmp___1 = 1;
  } else {
    tmp___0 = ip_hdr((struct sk_buff const *)skb);
    if ((unsigned int )tmp___0->protocol == 17U) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  }
  return (tmp___1);
}
}
__inline static u32 get_ipv4_5tuple_tag(struct sk_buff *skb )
{
  u32 tag ;
  struct iphdr *iphdr ;
  struct iphdr *tmp ;
  unsigned char *tmp___0 ;
  {
  tmp = ip_hdr((struct sk_buff const *)skb);
  iphdr = tmp;
  tag = crc32_le(0U, (unsigned char const *)(& iphdr->protocol), 1UL);
  tag = crc32_le(tag, (unsigned char const *)(& iphdr->saddr), 8UL);
  tmp___0 = skb_transport_header((struct sk_buff const *)skb);
  tag = crc32_le(tag, (unsigned char const *)tmp___0, 4UL);
  return (tag);
}
}
__inline static u32 get_ipv6_5tuple_tag(struct sk_buff *skb )
{
  u32 tag ;
  struct ipv6hdr *ipv6hdr ;
  struct ipv6hdr *tmp ;
  unsigned char *tmp___0 ;
  {
  tmp = ipv6_hdr((struct sk_buff const *)skb);
  ipv6hdr = tmp;
  tag = crc32_le(0U, (unsigned char const *)(& ipv6hdr->nexthdr), 1UL);
  tag = crc32_le(tag, (unsigned char const *)(& ipv6hdr->saddr), 32UL);
  tmp___0 = skb_transport_header((struct sk_buff const *)skb);
  tag = crc32_le(tag, (unsigned char const *)tmp___0, 4UL);
  return (tag);
}
}
static int liquidio_xmit(struct sk_buff *skb , struct net_device *netdev )
{
  struct lio *lio ;
  struct octnet_buf_free_info *finfo ;
  union octnic_cmd_setup cmdsetup ;
  struct octnic_data_pkt ndata ;
  struct octeon_device *oct ;
  struct oct_iq_stats *stats ;
  int cpu ;
  int status ;
  int q_idx ;
  int iq_no ;
  int xmit_more ;
  u32 tag ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  struct iphdr *tmp___5 ;
  int tmp___6 ;
  struct iphdr *tmp___7 ;
  int tmp___8 ;
  struct vlan_ethhdr *tmp___9 ;
  struct vlan_ethhdr *tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  unsigned char *tmp___18 ;
  unsigned char *tmp___19 ;
  unsigned char *tmp___20 ;
  long tmp___21 ;
  int tmp___22 ;
  int i ;
  int frags ;
  struct skb_frag_struct *frag ;
  struct octnic_gather *g ;
  struct list_head *tmp___23 ;
  unsigned char *tmp___24 ;
  int tmp___25 ;
  unsigned char *tmp___26 ;
  unsigned char *tmp___27 ;
  int tmp___28 ;
  int tmp___29 ;
  unsigned char *tmp___30 ;
  struct octeon_instr_irh *irh ;
  union tx_info *tx_info ;
  unsigned char *tmp___31 ;
  unsigned char *tmp___32 ;
  unsigned char *tmp___33 ;
  long tmp___34 ;
  {
  cpu = 0;
  status = 0;
  q_idx = 0;
  iq_no = 0;
  tag = 0U;
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct = lio->oct_dev;
  tmp___0 = netif_is_multiqueue((struct net_device const *)netdev);
  if ((int )tmp___0) {
    cpu = (int )skb->queue_mapping;
    q_idx = ((int )lio->linfo.num_txpciq + -1) & cpu;
    iq_no = (int )lio->linfo.txpciq[q_idx];
  } else {
    iq_no = lio->txq;
  }
  stats = & (oct->instr_queue[iq_no])->stats;
  tmp___1 = atomic_read((atomic_t const *)(& lio->ifstate));
  if (((tmp___1 & 4) == 0 || (unsigned int )lio->linfo.link.s.status == 0U) || skb->len == 0U) {
    if ((lio->msg_enable & 128U) != 0U) {
      netdev_info((struct net_device const *)lio->netdev, "Transmit failed link_status : %d\n",
                  (int )lio->linfo.link.s.status);
    } else {
    }
    goto lio_xmit_failed;
  } else {
  }
  finfo = (struct octnet_buf_free_info *)(& skb->cb);
  finfo->lio = lio;
  finfo->skb = skb;
  finfo->sc = (struct octeon_soft_command *)0;
  memset((void *)(& ndata), 0, 88UL);
  ndata.buf = (void *)finfo;
  ndata.q_no = (u32 )iq_no;
  tmp___4 = netif_is_multiqueue((struct net_device const *)netdev);
  if ((int )tmp___4) {
    tmp___2 = octnet_iq_is_full(oct, ndata.q_no);
    if (tmp___2 != 0) {
      if ((lio->msg_enable & 128U) != 0U) {
        netdev_info((struct net_device const *)lio->netdev, "Transmit failed iq:%d full\n",
                    ndata.q_no);
      } else {
      }
      stats->tx_iq_busy = stats->tx_iq_busy + 1ULL;
      return (16);
    } else {
    }
  } else {
    tmp___3 = octnet_iq_is_full(oct, (u32 )lio->txq);
    if (tmp___3 != 0) {
      stats->tx_iq_busy = stats->tx_iq_busy + 1ULL;
      if ((lio->msg_enable & 128U) != 0U) {
        netdev_info((struct net_device const *)lio->netdev, "Transmit failed iq:%d full\n",
                    ndata.q_no);
      } else {
      }
      return (16);
    } else {
    }
  }
  ndata.datasize = skb->len;
  cmdsetup.u64 = 0ULL;
  cmdsetup.s.ifidx = lio->linfo.ifidx;
  if ((unsigned int )*((unsigned char *)skb + 145UL) == 6U) {
    tmp___15 = is_ipv4(skb);
    if (tmp___15 != 0) {
      tmp___16 = is_ip_fragmented(skb);
      if (tmp___16 == 0) {
        tmp___17 = is_tcpudp(skb);
        if (tmp___17 != 0) {
          tag = get_ipv4_5tuple_tag(skb);
          cmdsetup.s.cksum_offset = 15U;
          tmp___5 = ip_hdr((struct sk_buff const *)skb);
          if ((int )tmp___5->ihl > 5) {
            cmdsetup.s.ipv4opts_ipv6exthdr = 1U;
          } else {
          }
        } else {
          goto _L___2;
        }
      } else {
        goto _L___2;
      }
    } else {
      _L___2:
      tmp___14 = is_ipv6(skb);
      if (tmp___14 != 0) {
        tag = get_ipv6_5tuple_tag(skb);
        cmdsetup.s.cksum_offset = 15U;
        tmp___6 = is_with_extn_hdr(skb);
        if (tmp___6 != 0) {
          cmdsetup.s.ipv4opts_ipv6exthdr = 2U;
        } else {
        }
      } else {
        tmp___13 = is_vlan(skb);
        if (tmp___13 != 0) {
          tmp___10 = vlan_eth_hdr((struct sk_buff const *)skb);
          if ((unsigned int )tmp___10->h_vlan_encapsulated_proto == 8U) {
            tmp___11 = is_ip_fragmented(skb);
            if (tmp___11 == 0) {
              tmp___12 = is_tcpudp(skb);
              if (tmp___12 != 0) {
                tag = get_ipv4_5tuple_tag(skb);
                cmdsetup.s.cksum_offset = 19U;
                tmp___7 = ip_hdr((struct sk_buff const *)skb);
                if ((int )tmp___7->ihl > 5) {
                  cmdsetup.s.ipv4opts_ipv6exthdr = 1U;
                } else {
                }
              } else {
                goto _L___0;
              }
            } else {
              goto _L___0;
            }
          } else {
            _L___0:
            tmp___9 = vlan_eth_hdr((struct sk_buff const *)skb);
            if ((unsigned int )tmp___9->h_vlan_encapsulated_proto == 56710U) {
              tag = get_ipv6_5tuple_tag(skb);
              cmdsetup.s.cksum_offset = 19U;
              tmp___8 = is_with_extn_hdr(skb);
              if (tmp___8 != 0) {
                cmdsetup.s.ipv4opts_ipv6exthdr = 2U;
              } else {
              }
            } else {
            }
          }
        } else {
        }
      }
    }
  } else {
  }
  tmp___20 = skb_end_pointer((struct sk_buff const *)skb);
  tmp___21 = ldv__builtin_expect((long )((struct skb_shared_info *)tmp___20)->tx_flags & 1L,
                              0L);
  if (tmp___21 != 0L) {
    tmp___18 = skb_end_pointer((struct sk_buff const *)skb);
    tmp___19 = skb_end_pointer((struct sk_buff const *)skb);
    ((struct skb_shared_info *)tmp___18)->tx_flags = (__u8 )((unsigned int )((struct skb_shared_info *)tmp___19)->tx_flags | 4U);
    cmdsetup.s.timestamp = 1U;
  } else {
  }
  tmp___30 = skb_end_pointer((struct sk_buff const *)skb);
  if ((unsigned int )((struct skb_shared_info *)tmp___30)->nr_frags == 0U) {
    cmdsetup.s.u.datasize = skb->len;
    octnet_prepare_pci_cmd(& ndata.cmd, & cmdsetup, tag);
    ndata.cmd.dptr = dma_map_single_attrs(& (oct->pci_dev)->dev, (void *)skb->data,
                                          (size_t )skb->len, 1, (struct dma_attrs *)0);
    tmp___22 = dma_mapping_error(& (oct->pci_dev)->dev, ndata.cmd.dptr);
    if (tmp___22 != 0) {
      dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s DMA mapping error 1\n",
              "liquidio_xmit");
      return (16);
    } else {
    }
    finfo->dptr = ndata.cmd.dptr;
    ndata.reqtype = 1U;
  } else {
    spin_lock(& lio->lock);
    tmp___23 = list_delete_head(& lio->glist);
    g = (struct octnic_gather *)tmp___23;
    spin_unlock(& lio->lock);
    if ((unsigned long )g == (unsigned long )((struct octnic_gather *)0)) {
      if ((lio->msg_enable & 128U) != 0U) {
        netdev_info((struct net_device const *)lio->netdev, "Transmit scatter gather: glist null!\n");
      } else {
      }
      goto lio_xmit_failed;
    } else {
    }
    cmdsetup.s.gather = 1U;
    tmp___24 = skb_end_pointer((struct sk_buff const *)skb);
    cmdsetup.s.u.gatherptrs = (u32 )((int )((struct skb_shared_info *)tmp___24)->nr_frags + 1);
    octnet_prepare_pci_cmd(& ndata.cmd, & cmdsetup, tag);
    memset((void *)g->sg, 0, (size_t )g->sg_size);
    (g->sg)->ptr[0] = dma_map_single_attrs(& (oct->pci_dev)->dev, (void *)skb->data,
                                           (size_t )(skb->len - skb->data_len), 1,
                                           (struct dma_attrs *)0);
    tmp___25 = dma_mapping_error(& (oct->pci_dev)->dev, (g->sg)->ptr[0]);
    if (tmp___25 != 0) {
      dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s DMA mapping error 2\n",
              "liquidio_xmit");
      return (16);
    } else {
    }
    add_sg_size(g->sg, (int )((u16 )skb->len) - (int )((u16 )skb->data_len), 0U);
    tmp___26 = skb_end_pointer((struct sk_buff const *)skb);
    frags = (int )((struct skb_shared_info *)tmp___26)->nr_frags;
    i = 1;
    goto ldv_55043;
    ldv_55042:
    tmp___27 = skb_end_pointer((struct sk_buff const *)skb);
    frag = (struct skb_frag_struct *)(& ((struct skb_shared_info *)tmp___27)->frags) + ((unsigned long )i + 0xffffffffffffffffUL);
    (g->sg + (unsigned long )(i >> 2))->ptr[i & 3] = dma_map_page(& (oct->pci_dev)->dev,
                                                                  frag->page.p, (size_t )frag->page_offset,
                                                                  (size_t )frag->size,
                                                                  1);
    add_sg_size(g->sg + (unsigned long )(i >> 2), (int )((u16 )frag->size), (u32 )i & 3U);
    i = i + 1;
    ldv_55043:
    tmp___28 = frags;
    frags = frags - 1;
    if (tmp___28 != 0) {
      goto ldv_55042;
    } else {
    }
    ndata.cmd.dptr = dma_map_single_attrs(& (oct->pci_dev)->dev, (void *)g->sg, (size_t )g->sg_size,
                                          1, (struct dma_attrs *)0);
    tmp___29 = dma_mapping_error(& (oct->pci_dev)->dev, ndata.cmd.dptr);
    if (tmp___29 != 0) {
      dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s DMA mapping error 3\n",
              "liquidio_xmit");
      dma_unmap_single_attrs(& (oct->pci_dev)->dev, (g->sg)->ptr[0], (size_t )(skb->len - skb->data_len),
                             1, (struct dma_attrs *)0);
      return (16);
    } else {
    }
    finfo->dptr = ndata.cmd.dptr;
    finfo->g = g;
    ndata.reqtype = 2U;
  }
  tmp___33 = skb_end_pointer((struct sk_buff const *)skb);
  if ((unsigned int )((struct skb_shared_info *)tmp___33)->gso_size != 0U) {
    irh = (struct octeon_instr_irh *)(& ndata.cmd.irh);
    tx_info = (union tx_info *)(& ndata.cmd.ossp);
    irh->len = 1U;
    tmp___31 = skb_end_pointer((struct sk_buff const *)skb);
    tx_info->s.gso_size = ((struct skb_shared_info *)tmp___31)->gso_size;
    tmp___32 = skb_end_pointer((struct sk_buff const *)skb);
    tx_info->s.gso_segs = ((struct skb_shared_info *)tmp___32)->gso_segs;
  } else {
  }
  xmit_more = (int )skb->xmit_more;
  tmp___34 = ldv__builtin_expect((long )*((unsigned char *)(& cmdsetup) + 2UL) & 1L,
                              0L);
  if (tmp___34 != 0L) {
    status = send_nic_timestamp_pkt(oct, & ndata, finfo, xmit_more);
  } else {
    status = octnet_send_nic_data_pkt(oct, & ndata, (u32 )xmit_more);
  }
  if (status == -1) {
    goto lio_xmit_failed;
  } else {
  }
  if ((lio->msg_enable & 256U) != 0U) {
    netdev_info((struct net_device const *)lio->netdev, "Transmit queued successfully\n");
  } else {
  }
  if (status == 1) {
    stop_q(lio->netdev, q_idx);
  } else {
  }
  netdev->trans_start = jiffies;
  stats->tx_done = stats->tx_done + 1ULL;
  stats->tx_tot_bytes = stats->tx_tot_bytes + (u64 )skb->len;
  return (0);
  lio_xmit_failed:
  stats->tx_dropped = stats->tx_dropped + 1ULL;
  if ((lio->msg_enable & 128U) != 0U) {
    netdev_info((struct net_device const *)lio->netdev, "IQ%d Transmit dropped:%llu\n",
                iq_no, stats->tx_dropped);
  } else {
  }
  dma_unmap_single_attrs(& (oct->pci_dev)->dev, ndata.cmd.dptr, (size_t )ndata.datasize,
                         1, (struct dma_attrs *)0);
  recv_buffer_free((void *)skb);
  return (0);
}
}
static void liquidio_tx_timeout(struct net_device *netdev )
{
  struct lio *lio ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  if ((lio->msg_enable & 128U) != 0U) {
    netdev_info((struct net_device const *)lio->netdev, "Transmit timeout tx_dropped:%ld, waking up queues now!!\n",
                netdev->stats.tx_dropped);
  } else {
  }
  netdev->trans_start = jiffies;
  txqs_wake(netdev);
  return;
}
}
int liquidio_set_feature(struct net_device *netdev , int cmd )
{
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct ;
  struct octnic_ctrl_pkt nctrl ;
  struct octnic_ctrl_params nparams ;
  int ret ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct = lio->oct_dev;
  ret = 0;
  memset((void *)(& nctrl), 0, 320UL);
  nctrl.ncmd.u64 = 0ULL;
  nctrl.ncmd.s.cmd = (unsigned char )cmd;
  nctrl.ncmd.s.param1 = (unsigned int )lio->linfo.ifidx;
  nctrl.ncmd.s.param2 = 3U;
  nctrl.wait_time = 100UL;
  nctrl.netpndev = (unsigned long long )netdev;
  nctrl.cb_fn = & liquidio_link_ctrl_cmd_completion;
  nparams.resp_order = 2U;
  ret = octnet_send_nic_ctrl_pkt(lio->oct_dev, & nctrl, nparams);
  if (ret < 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Feature change failed in core (ret: 0x%x)\n",
            ret);
  } else {
  }
  return (ret);
}
}
static netdev_features_t liquidio_fix_features(struct net_device *netdev , netdev_features_t request )
{
  struct lio *lio ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  if ((request & 17179869184ULL) != 0ULL && (lio->dev_capability & 17179869184ULL) == 0ULL) {
    request = request & 0xfffffffbffffffffULL;
  } else {
  }
  if ((request & 8ULL) != 0ULL && (lio->dev_capability & 8ULL) == 0ULL) {
    request = request & 0xfffffffffffffff7ULL;
  } else {
  }
  if ((request & 65536ULL) != 0ULL && (lio->dev_capability & 65536ULL) == 0ULL) {
    request = request & 0xfffffffffffeffffULL;
  } else {
  }
  if ((request & 1048576ULL) != 0ULL && (lio->dev_capability & 1048576ULL) == 0ULL) {
    request = request & 0xffffffffffefffffULL;
  } else {
  }
  if ((request & 32768ULL) != 0ULL && (lio->dev_capability & 32768ULL) == 0ULL) {
    request = request & 0xffffffffffff7fffULL;
  } else {
  }
  if (((request & 17179869184ULL) == 0ULL && (netdev->features & 32768ULL) != 0ULL) && (lio->dev_capability & 32768ULL) != 0ULL) {
    request = request & 0xffffffffffff7fffULL;
  } else {
  }
  return (request);
}
}
static int liquidio_set_features(struct net_device *netdev , netdev_features_t features )
{
  struct lio *lio ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  if (((netdev->features ^ features) & 32768ULL) == 0ULL) {
    return (0);
  } else {
  }
  if ((features & 32768ULL) != 0ULL && (lio->dev_capability & 32768ULL) != 0ULL) {
    liquidio_set_feature(netdev, 11);
  } else
  if ((features & 32768ULL) == 0ULL && (lio->dev_capability & 32768ULL) != 0ULL) {
    liquidio_set_feature(netdev, 12);
  } else {
  }
  return (0);
}
}
static struct net_device_ops lionetdevops =
     {0, 0, & liquidio_open, & liquidio_stop, (netdev_tx_t (*)(struct sk_buff * , struct net_device * ))(& liquidio_xmit),
    0, 0, & liquidio_set_mcast_list, & liquidio_set_mac, 0, & liquidio_ioctl, 0, & liquidio_change_mtu,
    0, & liquidio_tx_timeout, 0, & liquidio_get_stats, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & liquidio_fix_features,
    & liquidio_set_features, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0};
static int liquidio_init(void)
{
  int i ;
  struct handshake *hs ;
  int tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  {
  init_completion(& first_stage);
  octeon_init_device_list(conf_type);
  tmp = liquidio_init_pci();
  if (tmp != 0) {
    return (-22);
  } else {
  }
  tmp___0 = msecs_to_jiffies(1000U);
  wait_for_completion_timeout(& first_stage, tmp___0);
  i = 0;
  goto ldv_55077;
  ldv_55076:
  hs = (struct handshake *)(& handshake) + (unsigned long )i;
  if ((unsigned long )hs->pci_dev != (unsigned long )((struct pci_dev *)0)) {
    wait_for_completion(& hs->init);
    if (hs->init_ok == 0) {
      dev_err((struct device const *)(& (hs->pci_dev)->dev), "Failed to init device\n");
      liquidio_deinit_pci();
      return (-5);
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_55077: ;
  if (i <= 31) {
    goto ldv_55076;
  } else {
  }
  i = 0;
  goto ldv_55080;
  ldv_55079:
  hs = (struct handshake *)(& handshake) + (unsigned long )i;
  if ((unsigned long )hs->pci_dev != (unsigned long )((struct pci_dev *)0)) {
    tmp___1 = msecs_to_jiffies(30000U);
    wait_for_completion_timeout(& hs->started, tmp___1);
    if (hs->started_ok == 0) {
      dev_err((struct device const *)(& (hs->pci_dev)->dev), "Firmware failed to start\n");
      liquidio_deinit_pci();
      return (-5);
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_55080: ;
  if (i <= 31) {
    goto ldv_55079;
  } else {
  }
  return (0);
}
}
static int lio_nic_info(struct octeon_recv_info *recv_info , void *buf )
{
  struct octeon_device *oct ;
  struct octeon_recv_pkt *recv_pkt ;
  int ifidx ;
  union oct_link_status *ls ;
  int i ;
  {
  oct = (struct octeon_device *)buf;
  recv_pkt = recv_info->recv_pkt;
  ifidx = 0;
  if (recv_pkt->buffer_size[0] != 8U || (u32 )recv_pkt->rh.r_nic_info.ifidx > oct->ifcount) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Malformed NIC_INFO, len=%d, ifidx=%d\n",
            recv_pkt->buffer_size[0], (int )recv_pkt->rh.r_nic_info.ifidx);
    goto nic_info_err;
  } else {
  }
  ifidx = (int )recv_pkt->rh.r_nic_info.ifidx;
  ls = (union oct_link_status *)((struct sk_buff *)recv_pkt->buffer_ptr[0])->data;
  octeon_swap_8B_data((u64 *)ls, 1U);
  update_link_status(oct->props[ifidx].netdev, ls);
  nic_info_err:
  i = 0;
  goto ldv_55093;
  ldv_55092:
  recv_buffer_free(recv_pkt->buffer_ptr[i]);
  i = i + 1;
  ldv_55093: ;
  if ((int )recv_pkt->buffer_count > i) {
    goto ldv_55092;
  } else {
  }
  octeon_free_recv_info(recv_info);
  return (0);
}
}
static int setup_nic_devices(struct octeon_device *octeon_dev )
{
  struct lio *lio ;
  struct net_device *netdev ;
  u8 mac[6U] ;
  u8 i ;
  u8 j ;
  struct octeon_soft_command *sc ;
  struct liquidio_if_cfg_context *ctx ;
  struct liquidio_if_cfg_resp *resp ;
  struct octdev_props *props ;
  int retval ;
  int num_iqueues ;
  int num_oqueues ;
  int q_no ;
  u64 q_mask ;
  int num_cpus ;
  unsigned int tmp ;
  union oct_nic_if_cfg if_cfg ;
  unsigned int base_queue ;
  unsigned int gmx_port_id ;
  u32 resp_size ;
  u32 ctx_size ;
  struct octeon_config *tmp___0 ;
  struct octeon_config *tmp___1 ;
  struct octeon_config *tmp___2 ;
  struct octeon_config *tmp___3 ;
  struct _ddebug descriptor ;
  long tmp___4 ;
  int __var ;
  struct lock_class_key __key ;
  unsigned long tmp___5 ;
  unsigned long tmp___6 ;
  struct _ddebug descriptor___0 ;
  long tmp___7 ;
  void *tmp___8 ;
  unsigned long tmp___9 ;
  unsigned long tmp___10 ;
  struct lock_class_key __key___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  struct _ddebug descriptor___2 ;
  long tmp___17 ;
  struct _ddebug descriptor___3 ;
  long tmp___18 ;
  u8 tmp___19 ;
  {
  lio = (struct lio *)0;
  tmp = cpumask_weight(cpu_online_mask);
  num_cpus = (int )tmp;
  octeon_register_dispatch_fn(octeon_dev, 1, 4, & lio_nic_info, (void *)octeon_dev);
  octeon_register_reqtype_free_fn(octeon_dev, 1, & free_netbuf);
  octeon_register_reqtype_free_fn(octeon_dev, 2, & free_netsgbuf);
  octeon_register_reqtype_free_fn(octeon_dev, 4, & free_netsgbuf_with_resp);
  i = 0U;
  goto ldv_55139;
  ldv_55138:
  resp_size = 128U;
  ctx_size = 104U;
  sc = octeon_alloc_soft_command(octeon_dev, 0U, resp_size, ctx_size);
  resp = (struct liquidio_if_cfg_resp *)sc->virtrptr;
  ctx = (struct liquidio_if_cfg_context *)sc->ctxptr;
  tmp___0 = octeon_get_conf(octeon_dev);
  num_iqueues = (int )tmp___0->nic_if_cfg[(int )i].num_txqs;
  tmp___1 = octeon_get_conf(octeon_dev);
  num_oqueues = (int )tmp___1->nic_if_cfg[(int )i].num_rxqs;
  tmp___2 = octeon_get_conf(octeon_dev);
  base_queue = (unsigned int )tmp___2->nic_if_cfg[(int )i].base_queue;
  tmp___3 = octeon_get_conf(octeon_dev);
  gmx_port_id = (unsigned int )tmp___3->nic_if_cfg[(int )i].gmx_port_id;
  if (num_iqueues > num_cpus) {
    num_iqueues = num_cpus;
  } else {
  }
  if (num_oqueues > num_cpus) {
    num_oqueues = num_cpus;
  } else {
  }
  descriptor.modname = "liquidio";
  descriptor.function = "setup_nic_devices";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
  descriptor.format = "requesting config for interface %d, iqs %d, oqs %d\n";
  descriptor.lineno = 3179U;
  descriptor.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (octeon_dev->pci_dev)->dev),
                      "requesting config for interface %d, iqs %d, oqs %d\n", (int )i,
                      num_iqueues, num_oqueues);
  } else {
  }
  __var = 0;
  *((int volatile *)(& ctx->cond)) = 0;
  ctx->octeon_id = lio_get_device_id((void *)octeon_dev);
  __init_waitqueue_head(& ctx->wc, "&ctx->wc", & __key);
  if_cfg.u64 = 0ULL;
  if_cfg.s.num_iqueues = (unsigned short )num_iqueues;
  if_cfg.s.num_oqueues = (unsigned short )num_oqueues;
  if_cfg.s.base_queue = (unsigned short )base_queue;
  if_cfg.s.gmx_port_id = (unsigned char )gmx_port_id;
  octeon_prepare_soft_command(octeon_dev, sc, 1, 9, (u32 )i, if_cfg.u64, 0ULL);
  sc->callback = & if_cfg_callback;
  sc->callback_arg = (void *)sc;
  sc->wait_time = 1000UL;
  retval = octeon_send_soft_command(octeon_dev, sc);
  if (retval != 0) {
    dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), "iq/oq config failed status: %x\n",
            retval);
    goto setup_nic_dev_fail;
  } else {
  }
  sleep_cond(& ctx->wc, & ctx->cond);
  retval = (int )resp->status;
  if (retval != 0) {
    dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), "iq/oq config failed\n");
    goto setup_nic_dev_fail;
  } else {
  }
  octeon_swap_8B_data((u64 *)(& resp->cfg_info), 14U);
  tmp___5 = __arch_hweight64(resp->cfg_info.iqmask);
  num_iqueues = (int )tmp___5;
  tmp___6 = __arch_hweight64(resp->cfg_info.oqmask);
  num_oqueues = (int )tmp___6;
  if (num_iqueues == 0 || num_oqueues == 0) {
    dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), "Got bad iqueues (%016llx) or oqueues (%016llx) from firmware.\n",
            resp->cfg_info.iqmask, resp->cfg_info.oqmask);
    goto setup_nic_dev_fail;
  } else {
  }
  descriptor___0.modname = "liquidio";
  descriptor___0.function = "setup_nic_devices";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
  descriptor___0.format = "interface %d, iqmask %016llx, oqmask %016llx, numiqueues %d, numoqueues %d\n";
  descriptor___0.lineno = 3232U;
  descriptor___0.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (octeon_dev->pci_dev)->dev),
                      "interface %d, iqmask %016llx, oqmask %016llx, numiqueues %d, numoqueues %d\n",
                      (int )i, resp->cfg_info.iqmask, resp->cfg_info.oqmask, num_iqueues,
                      num_oqueues);
  } else {
  }
  netdev = alloc_etherdev_mqs(696, (unsigned int )num_iqueues, (unsigned int )num_iqueues);
  if ((unsigned long )netdev == (unsigned long )((struct net_device *)0)) {
    dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), "Device allocation failed\n");
    goto setup_nic_dev_fail;
  } else {
  }
  props = (struct octdev_props *)(& octeon_dev->props) + (unsigned long )i;
  props->netdev = netdev;
  if (num_iqueues > 1) {
    lionetdevops.ndo_select_queue = & select_q;
  } else {
  }
  netdev->netdev_ops = (struct net_device_ops const *)(& lionetdevops);
  tmp___8 = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp___8;
  memset((void *)lio, 0, 696UL);
  lio->linfo.ifidx = (u8 )resp->cfg_info.ifidx;
  lio->ifidx = (int )resp->cfg_info.ifidx;
  lio->linfo.num_rxpciq = (u8 )num_oqueues;
  lio->linfo.num_txpciq = (u8 )num_iqueues;
  q_mask = resp->cfg_info.oqmask;
  j = 0U;
  goto ldv_55126;
  ldv_55125:
  tmp___9 = __ffs64(q_mask);
  q_no = (int )tmp___9;
  q_mask = (unsigned long long )(~ (1UL << q_no)) & q_mask;
  lio->linfo.rxpciq[(int )j] = (u8 )q_no;
  j = (u8 )((int )j + 1);
  ldv_55126: ;
  if ((int )j < num_oqueues) {
    goto ldv_55125;
  } else {
  }
  q_mask = resp->cfg_info.iqmask;
  j = 0U;
  goto ldv_55129;
  ldv_55128:
  tmp___10 = __ffs64(q_mask);
  q_no = (int )tmp___10;
  q_mask = (unsigned long long )(~ (1UL << q_no)) & q_mask;
  lio->linfo.txpciq[(int )j] = (u8 )q_no;
  j = (u8 )((int )j + 1);
  ldv_55129: ;
  if ((int )j < num_iqueues) {
    goto ldv_55128;
  } else {
  }
  lio->linfo.hw_addr = resp->cfg_info.linfo.hw_addr;
  lio->linfo.gmxport = resp->cfg_info.linfo.gmxport;
  lio->linfo.link.u64 = resp->cfg_info.linfo.link.u64;
  lio->msg_enable = netif_msg_init(debug, 7);
  lio->dev_capability = 17181016115ULL;
  netif_set_gso_max_size(netdev, 65408U);
  netdev->features = lio->dev_capability;
  netdev->vlan_features = lio->dev_capability;
  netdev->hw_features = lio->dev_capability;
  lio->oct_dev = octeon_dev;
  lio->octprops = props;
  lio->netdev = netdev;
  spinlock_check(& lio->lock);
  __raw_spin_lock_init(& lio->lock.__annonCompField18.rlock, "&(&lio->lock)->rlock",
                       & __key___0);
  descriptor___1.modname = "liquidio";
  descriptor___1.function = "setup_nic_devices";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
  descriptor___1.format = "if%d gmx: %d hw_addr: 0x%llx\n";
  descriptor___1.lineno = 3301U;
  descriptor___1.flags = 0U;
  tmp___11 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___11 != 0L) {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& (octeon_dev->pci_dev)->dev),
                      "if%d gmx: %d hw_addr: 0x%llx\n", (int )i, (int )lio->linfo.gmxport,
                      (long long )lio->linfo.hw_addr);
  } else {
  }
  octeon_swap_8B_data(& lio->linfo.hw_addr, 1U);
  j = 0U;
  goto ldv_55134;
  ldv_55133:
  mac[(int )j] = *((u8 *)(& lio->linfo.hw_addr) + ((unsigned long )j + 2UL));
  j = (u8 )((int )j + 1);
  ldv_55134: ;
  if ((unsigned int )j <= 5U) {
    goto ldv_55133;
  } else {
  }
  ether_addr_copy(netdev->dev_addr, (u8 const *)(& mac));
  tmp___12 = setup_io_queues(octeon_dev, netdev);
  if (tmp___12 != 0) {
    dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), "I/O queues creation failed\n");
    goto setup_nic_dev_fail;
  } else {
  }
  ifstate_set(lio, 1);
  lio->txq = (int )lio->linfo.txpciq[0];
  lio->rxq = (int )lio->linfo.rxpciq[0];
  tmp___13 = octeon_get_tx_qsize(octeon_dev, (u32 )lio->txq);
  lio->tx_qsize = (u32 )tmp___13;
  tmp___14 = octeon_get_rx_qsize(octeon_dev, (u32 )lio->rxq);
  lio->rx_qsize = (u32 )tmp___14;
  tmp___15 = setup_glist(lio);
  if (tmp___15 != 0) {
    dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), "Gather list allocation failed\n");
    goto setup_nic_dev_fail;
  } else {
  }
  liquidio_set_ethtool_ops(netdev);
  liquidio_set_feature(netdev, 11);
  if (debug != -1 && (debug & 8192) != 0) {
    liquidio_set_feature(netdev, 20);
  } else {
  }
  tmp___16 = ldv_register_netdev_23(netdev);
  if (tmp___16 != 0) {
    dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), "Device registration failed\n");
    goto setup_nic_dev_fail;
  } else {
  }
  descriptor___2.modname = "liquidio";
  descriptor___2.function = "setup_nic_devices";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
  descriptor___2.format = "Setup NIC ifidx:%d mac:%02x%02x%02x%02x%02x%02x\n";
  descriptor___2.lineno = 3350U;
  descriptor___2.flags = 0U;
  tmp___17 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___17 != 0L) {
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)(& (octeon_dev->pci_dev)->dev),
                      "Setup NIC ifidx:%d mac:%02x%02x%02x%02x%02x%02x\n", (int )i,
                      (int )mac[0], (int )mac[1], (int )mac[2], (int )mac[3], (int )mac[4],
                      (int )mac[5]);
  } else {
  }
  netif_carrier_off(netdev);
  if ((unsigned int )lio->linfo.link.s.status != 0U) {
    netif_carrier_on(netdev);
    start_txq(netdev);
  } else {
    netif_carrier_off(netdev);
  }
  ifstate_set(lio, 2);
  descriptor___3.modname = "liquidio";
  descriptor___3.function = "setup_nic_devices";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
  descriptor___3.format = "NIC ifidx:%d Setup successful\n";
  descriptor___3.lineno = 3363U;
  descriptor___3.flags = 0U;
  tmp___18 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___18 != 0L) {
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)(& (octeon_dev->pci_dev)->dev),
                      "NIC ifidx:%d Setup successful\n", (int )i);
  } else {
  }
  octeon_free_soft_command(octeon_dev, sc);
  i = (u8 )((int )i + 1);
  ldv_55139: ;
  if ((u32 )i < octeon_dev->ifcount) {
    goto ldv_55138;
  } else {
  }
  return (0);
  setup_nic_dev_fail:
  octeon_free_soft_command(octeon_dev, sc);
  goto ldv_55142;
  ldv_55141:
  dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), "NIC ifidx:%d Setup failed\n",
          (int )i);
  liquidio_destroy_nic_device(octeon_dev, (int )i);
  ldv_55142:
  tmp___19 = i;
  i = (u8 )((int )i - 1);
  if ((unsigned int )tmp___19 != 0U) {
    goto ldv_55141;
  } else {
  }
  return (-19);
}
}
static int liquidio_init_nic_module(struct octeon_device *oct )
{
  struct oct_intrmod_cfg *intrmod_cfg ;
  int retval ;
  int num_nic_ports ;
  struct octeon_config *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  {
  retval = 0;
  tmp = octeon_get_conf(oct);
  num_nic_ports = tmp->num_nic_ports;
  descriptor.modname = "liquidio";
  descriptor.function = "liquidio_init_nic_module";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
  descriptor.format = "Initializing network interfaces\n";
  descriptor.lineno = 3395U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "Initializing network interfaces\n");
  } else {
  }
  oct->ifcount = (u32 )num_nic_ports;
  memset((void *)(& oct->props), 0, (unsigned long )num_nic_ports * 8UL);
  retval = setup_nic_devices(oct);
  if (retval != 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Setup NIC devices failed\n");
    goto octnet_init_failure;
  } else {
  }
  liquidio_ptp_init(oct);
  intrmod_cfg = & oct->intrmod;
  intrmod_cfg->intrmod_enable = 1ULL;
  intrmod_cfg->intrmod_check_intrvl = 1ULL;
  intrmod_cfg->intrmod_maxpkt_ratethr = 196608ULL;
  intrmod_cfg->intrmod_minpkt_ratethr = 9216ULL;
  intrmod_cfg->intrmod_maxcnt_trigger = 384ULL;
  intrmod_cfg->intrmod_maxtmr_trigger = 128ULL;
  intrmod_cfg->intrmod_mintmr_trigger = 32ULL;
  intrmod_cfg->intrmod_mincnt_trigger = 1ULL;
  descriptor___0.modname = "liquidio";
  descriptor___0.function = "liquidio_init_nic_module";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
  descriptor___0.format = "Network interfaces ready\n";
  descriptor___0.lineno = 3425U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (oct->pci_dev)->dev),
                      "Network interfaces ready\n");
  } else {
  }
  return (retval);
  octnet_init_failure:
  oct->ifcount = 0U;
  return (retval);
}
}
static void nic_starter(struct work_struct *work )
{
  struct octeon_device *oct ;
  struct cavium_wk *wk ;
  int tmp ;
  int tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  int tmp___2 ;
  {
  wk = (struct cavium_wk *)work;
  oct = (struct octeon_device *)wk->ctxptr;
  tmp = atomic_read((atomic_t const *)(& oct->status));
  if (tmp == 11) {
    return;
  } else {
  }
  tmp___0 = atomic_read((atomic_t const *)(& oct->status));
  if (tmp___0 != 10) {
    schedule_delayed_work(& oct->nic_poll_work.work, 100UL);
    return;
  } else {
  }
  atomic_set(& oct->status, 11);
  if (oct->app_mode != 0U && oct->app_mode == 1U) {
    descriptor.modname = "liquidio";
    descriptor.function = "nic_starter";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
    descriptor.format = "Starting NIC module\n";
    descriptor.lineno = 3465U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                        "Starting NIC module\n");
    } else {
    }
    tmp___2 = liquidio_init_nic_module(oct);
    if (tmp___2 != 0) {
      dev_err((struct device const *)(& (oct->pci_dev)->dev), "NIC initialization failed\n");
    } else {
      handshake[oct->octeon_id].started_ok = 1;
    }
  } else {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Unexpected application running on NIC (%d). Check firmware.\n",
            oct->app_mode);
  }
  complete(& handshake[oct->octeon_id].started);
  return;
}
}
static int octeon_device_init(struct octeon_device *octeon_dev )
{
  int j ;
  int ret ;
  struct octeon_device_priv *oct_priv ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  struct _ddebug descriptor ;
  long tmp___7 ;
  struct _ddebug descriptor___0 ;
  long tmp___8 ;
  int tmp___9 ;
  struct _ddebug descriptor___1 ;
  long tmp___10 ;
  struct _ddebug descriptor___2 ;
  long tmp___11 ;
  {
  oct_priv = (struct octeon_device_priv *)octeon_dev->priv;
  atomic_set(& octeon_dev->status, 0);
  tmp = octeon_pci_os_setup(octeon_dev);
  if (tmp != 0) {
    return (1);
  } else {
  }
  tmp___0 = octeon_chip_specific_setup(octeon_dev);
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), "Chip specific setup failed\n");
    return (1);
  } else {
  }
  atomic_set(& octeon_dev->status, 1);
  octeon_dev->app_mode = 2U;
  tmp___1 = (*(octeon_dev->fn_list.soft_reset))(octeon_dev);
  if (tmp___1 != 0) {
    return (1);
  } else {
  }
  tmp___2 = octeon_init_dispatch_list(octeon_dev);
  if (tmp___2 != 0) {
    return (1);
  } else {
  }
  octeon_register_dispatch_fn(octeon_dev, 1, 1, & octeon_core_drv_init, (void *)octeon_dev);
  __init_work(& octeon_dev->nic_poll_work.work.work, 0);
  __constr_expr_0.counter = 137438953408L;
  octeon_dev->nic_poll_work.work.work.data = __constr_expr_0;
  lockdep_init_map(& octeon_dev->nic_poll_work.work.work.lockdep_map, "(&(&octeon_dev->nic_poll_work.work)->work)",
                   & __key, 0);
  INIT_LIST_HEAD(& octeon_dev->nic_poll_work.work.work.entry);
  octeon_dev->nic_poll_work.work.work.func = & nic_starter;
  init_timer_key(& octeon_dev->nic_poll_work.work.timer, 2097152U, "(&(&octeon_dev->nic_poll_work.work)->timer)",
                 & __key___0);
  octeon_dev->nic_poll_work.work.timer.function = & delayed_work_timer_fn;
  octeon_dev->nic_poll_work.work.timer.data = (unsigned long )(& octeon_dev->nic_poll_work.work);
  octeon_dev->nic_poll_work.ctxptr = (void *)octeon_dev;
  schedule_delayed_work(& octeon_dev->nic_poll_work.work, 100UL);
  atomic_set(& octeon_dev->status, 2);
  octeon_set_io_queues_off(octeon_dev);
  tmp___3 = octeon_setup_instr_queues(octeon_dev);
  if (tmp___3 != 0) {
    dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), "instruction queue initialization failed\n");
    j = 0;
    goto ldv_55171;
    ldv_55170:
    octeon_delete_instr_queue(octeon_dev, (u32 )j);
    j = j + 1;
    ldv_55171: ;
    if ((u32 )j < octeon_dev->num_iqs) {
      goto ldv_55170;
    } else {
    }
    return (1);
  } else {
  }
  atomic_set(& octeon_dev->status, 3);
  tmp___4 = octeon_setup_sc_buffer_pool(octeon_dev);
  if (tmp___4 != 0) {
    dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), "sc buffer pool allocation failed\n");
    return (1);
  } else {
  }
  atomic_set(& octeon_dev->status, 4);
  tmp___5 = octeon_setup_response_list(octeon_dev);
  if (tmp___5 != 0) {
    dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), "Response list allocation failed\n");
    return (1);
  } else {
  }
  atomic_set(& octeon_dev->status, 5);
  tmp___6 = octeon_setup_output_queues(octeon_dev);
  if (tmp___6 != 0) {
    dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), "Output queue initialization failed\n");
    j = 0;
    goto ldv_55174;
    ldv_55173:
    octeon_delete_droq(octeon_dev, (u32 )j);
    j = j + 1;
    ldv_55174: ;
    if ((u32 )j < octeon_dev->num_oqs) {
      goto ldv_55173;
    } else {
    }
  } else {
  }
  atomic_set(& octeon_dev->status, 6);
  ret = (*(octeon_dev->fn_list.setup_device_regs))(octeon_dev);
  if (ret != 0) {
    dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), "Failed to configure device registers\n");
    return (ret);
  } else {
  }
  descriptor.modname = "liquidio";
  descriptor.function = "octeon_device_init";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
  descriptor.format = "Initializing droq tasklet\n";
  descriptor.lineno = 3580U;
  descriptor.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (octeon_dev->pci_dev)->dev),
                      "Initializing droq tasklet\n");
  } else {
  }
  tasklet_init(& oct_priv->droq_tasklet, & octeon_droq_bh, (unsigned long )octeon_dev);
  octeon_setup_interrupt(octeon_dev);
  (*(octeon_dev->fn_list.enable_interrupt))(octeon_dev->chip);
  (*(octeon_dev->fn_list.enable_io_queues))(octeon_dev);
  atomic_set(& octeon_dev->status, 7);
  descriptor___0.modname = "liquidio";
  descriptor___0.function = "octeon_device_init";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
  descriptor___0.format = "Waiting for DDR initialization...\n";
  descriptor___0.lineno = 3596U;
  descriptor___0.flags = 0U;
  tmp___8 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (octeon_dev->pci_dev)->dev),
                      "Waiting for DDR initialization...\n");
  } else {
  }
  if (ddr_timeout == 0) {
    _dev_info((struct device const *)(& (octeon_dev->pci_dev)->dev), "WAITING. Set ddr_timeout to non-zero value to proceed with initialization.\n");
  } else {
  }
  schedule_timeout_uninterruptible(750L);
  ret = octeon_wait_for_ddr_init(octeon_dev, (u32 *)(& ddr_timeout));
  if (ret != 0) {
    dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), "DDR not initialized. Please confirm that board is configured to boot from Flash, ret: %d\n",
            ret);
    return (1);
  } else {
  }
  tmp___9 = octeon_wait_for_bootloader(octeon_dev, 1000U);
  if (tmp___9 != 0) {
    dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), "Board not responding\n");
    return (1);
  } else {
  }
  descriptor___1.modname = "liquidio";
  descriptor___1.function = "octeon_device_init";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
  descriptor___1.format = "Initializing consoles\n";
  descriptor___1.lineno = 3619U;
  descriptor___1.flags = 0U;
  tmp___10 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& (octeon_dev->pci_dev)->dev),
                      "Initializing consoles\n");
  } else {
  }
  ret = octeon_init_consoles(octeon_dev);
  if (ret != 0) {
    dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), "Could not access board consoles\n");
    return (1);
  } else {
  }
  ret = octeon_add_console(octeon_dev, 0U);
  if (ret != 0) {
    dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), "Could not access board console\n");
    return (1);
  } else {
  }
  atomic_set(& octeon_dev->status, 8);
  descriptor___2.modname = "liquidio";
  descriptor___2.function = "octeon_device_init";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/lio_main.c";
  descriptor___2.format = "Loading firmware\n";
  descriptor___2.lineno = 3633U;
  descriptor___2.flags = 0U;
  tmp___11 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___11 != 0L) {
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)(& (octeon_dev->pci_dev)->dev),
                      "Loading firmware\n");
  } else {
  }
  ret = load_firmware(octeon_dev);
  if (ret != 0) {
    dev_err((struct device const *)(& (octeon_dev->pci_dev)->dev), "Could not load firmware to board\n");
    return (1);
  } else {
  }
  handshake[octeon_dev->octeon_id].init_ok = 1;
  complete(& handshake[octeon_dev->octeon_id].init);
  atomic_set(& octeon_dev->status, 9);
  j = 0;
  goto ldv_55182;
  ldv_55181:
  writel((octeon_dev->droq[j])->max_count, (void volatile *)(octeon_dev->droq[j])->pkts_credit_reg);
  j = j + 1;
  ldv_55182: ;
  if ((u32 )j < octeon_dev->num_oqs) {
    goto ldv_55181;
  } else {
  }
  return (0);
}
}
static void liquidio_exit(void)
{
  {
  liquidio_deinit_pci();
  printk("\016LiquidIO network module is now unloaded\n");
  return;
}
}
extern int ldv_resume_early_9(void) ;
int ldv_retval_2 ;
int ldv_retval_5 ;
int ldv_retval_0 ;
int ldv_retval_6 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
extern int ldv_shutdown_9(void) ;
extern int ldv_ndo_uninit_8(void) ;
extern int ldv_suspend_late_9(void) ;
extern int ldv_release_10(void) ;
extern int ldv_probe_10(void) ;
extern int ldv_suspend_10(void) ;
int ldv_retval_4 ;
void ldv_check_final_state(void) ;
int ldv_retval_3 ;
int ldv_retval_7 ;
extern int ldv_ndo_init_8(void) ;
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
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& liquidio_intr_handler)) {
    return (1);
  } else {
  }
  return (0);
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
void choose_interrupt_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_0, ldv_irq_line_1_0, ldv_irq_data_1_0);
  goto ldv_55251;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_55251;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_55251;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_55251;
  default:
  ldv_stop();
  }
  ldv_55251: ;
  return;
}
}
void ldv_initialize_pci_error_handlers_10(void)
{
  {
  liquidio_err_handler_group0 = ldv_malloc(sizeof(struct pci_dev));
  return;
}
}
void call_and_disable_work_3(struct work_struct *work )
{
  {
  if ((ldv_work_3_0 == 2 || ldv_work_3_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_0) {
    nic_starter(work);
    ldv_work_3_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_1 == 2 || ldv_work_3_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_1) {
    nic_starter(work);
    ldv_work_3_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_2 == 2 || ldv_work_3_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_2) {
    nic_starter(work);
    ldv_work_3_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_3 == 2 || ldv_work_3_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_3) {
    nic_starter(work);
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
void ldv_pci_driver_9(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(2976UL);
  liquidio_pci_driver_group1 = (struct pci_dev *)tmp;
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
    nic_starter(ldv_work_struct_3_0);
    ldv_work_3_0 = 1;
  } else {
  }
  goto ldv_55279;
  case 1: ;
  if (ldv_work_3_1 == 2 || ldv_work_3_1 == 3) {
    ldv_work_3_1 = 4;
    nic_starter(ldv_work_struct_3_0);
    ldv_work_3_1 = 1;
  } else {
  }
  goto ldv_55279;
  case 2: ;
  if (ldv_work_3_2 == 2 || ldv_work_3_2 == 3) {
    ldv_work_3_2 = 4;
    nic_starter(ldv_work_struct_3_0);
    ldv_work_3_2 = 1;
  } else {
  }
  goto ldv_55279;
  case 3: ;
  if (ldv_work_3_3 == 2 || ldv_work_3_3 == 3) {
    ldv_work_3_3 = 4;
    nic_starter(ldv_work_struct_3_0);
    ldv_work_3_3 = 1;
  } else {
  }
  goto ldv_55279;
  default:
  ldv_stop();
  }
  ldv_55279: ;
  return;
}
}
void disable_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 != 0 && line == ldv_irq_line_1_0) {
    ldv_irq_1_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_1 != 0 && line == ldv_irq_line_1_1) {
    ldv_irq_1_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_2 != 0 && line == ldv_irq_line_1_2) {
    ldv_irq_1_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_3 != 0 && line == ldv_irq_line_1_3) {
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
      irq_retval = liquidio_intr_handler(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_55295;
    default:
    ldv_stop();
    }
    ldv_55295: ;
  } else {
  }
  return (state);
}
}
void activate_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 == 0) {
    ldv_irq_line_1_0 = line;
    ldv_irq_data_1_0 = data;
    ldv_irq_1_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_1 == 0) {
    ldv_irq_line_1_1 = line;
    ldv_irq_data_1_1 = data;
    ldv_irq_1_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_2 == 0) {
    ldv_irq_line_1_2 = line;
    ldv_irq_data_1_2 = data;
    ldv_irq_1_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_3 == 0) {
    ldv_irq_line_1_3 = line;
    ldv_irq_data_1_3 = data;
    ldv_irq_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_net_device_ops_8(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(3008UL);
  lionetdevops_group1 = (struct net_device *)tmp;
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
void call_and_disable_work_2(struct work_struct *work )
{
  {
  if ((ldv_work_2_0 == 2 || ldv_work_2_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_0) {
    octnet_poll_check_txq_status(work);
    ldv_work_2_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_1 == 2 || ldv_work_2_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_1) {
    octnet_poll_check_txq_status(work);
    ldv_work_2_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_2 == 2 || ldv_work_2_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_2) {
    octnet_poll_check_txq_status(work);
    ldv_work_2_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_3 == 2 || ldv_work_2_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_3) {
    octnet_poll_check_txq_status(work);
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
    octnet_poll_check_txq_status(ldv_work_struct_2_0);
    ldv_work_2_0 = 1;
  } else {
  }
  goto ldv_55320;
  case 1: ;
  if (ldv_work_2_1 == 2 || ldv_work_2_1 == 3) {
    ldv_work_2_1 = 4;
    octnet_poll_check_txq_status(ldv_work_struct_2_0);
    ldv_work_2_1 = 1;
  } else {
  }
  goto ldv_55320;
  case 2: ;
  if (ldv_work_2_2 == 2 || ldv_work_2_2 == 3) {
    ldv_work_2_2 = 4;
    octnet_poll_check_txq_status(ldv_work_struct_2_0);
    ldv_work_2_2 = 1;
  } else {
  }
  goto ldv_55320;
  case 3: ;
  if (ldv_work_2_3 == 2 || ldv_work_2_3 == 3) {
    ldv_work_2_3 = 4;
    octnet_poll_check_txq_status(ldv_work_struct_2_0);
    ldv_work_2_3 = 1;
  } else {
  }
  goto ldv_55320;
  default:
  ldv_stop();
  }
  ldv_55320: ;
  return;
}
}
void ldv_main_exported_7(void) ;
int main(void)
{
  struct pci_device_id *ldvarg17 ;
  void *tmp ;
  pm_message_t ldvarg16 ;
  struct ifreq *ldvarg24 ;
  void *tmp___0 ;
  int ldvarg21 ;
  void *ldvarg18 ;
  void *tmp___1 ;
  struct sk_buff *ldvarg20 ;
  void *tmp___2 ;
  int ldvarg23 ;
  netdev_features_t ldvarg22 ;
  netdev_features_t ldvarg19 ;
  enum pci_channel_state ldvarg25 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  tmp = ldv_init_zalloc(32UL);
  ldvarg17 = (struct pci_device_id *)tmp;
  tmp___0 = ldv_init_zalloc(40UL);
  ldvarg24 = (struct ifreq *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg18 = tmp___1;
  tmp___2 = ldv_init_zalloc(232UL);
  ldvarg20 = (struct sk_buff *)tmp___2;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg16), 0, 4UL);
  ldv_memset((void *)(& ldvarg21), 0, 4UL);
  ldv_memset((void *)(& ldvarg23), 0, 4UL);
  ldv_memset((void *)(& ldvarg22), 0, 8UL);
  ldv_memset((void *)(& ldvarg19), 0, 8UL);
  ldv_memset((void *)(& ldvarg25), 0, 4UL);
  work_init_6();
  ldv_state_variable_6 = 1;
  work_init_3();
  ldv_state_variable_3 = 1;
  ldv_state_variable_7 = 0;
  ldv_state_variable_9 = 0;
  work_init_2();
  ldv_state_variable_2 = 1;
  ldv_state_variable_8 = 0;
  ldv_state_variable_1 = 1;
  work_init_4();
  ldv_state_variable_4 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_10 = 0;
  work_init_5();
  ldv_state_variable_5 = 1;
  ldv_55399:
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  goto ldv_55349;
  case 1: ;
  if (ldv_state_variable_3 != 0) {
    invoke_work_3();
  } else {
  }
  goto ldv_55349;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    ldv_main_exported_7();
  } else {
  }
  goto ldv_55349;
  case 3: ;
  if (ldv_state_variable_9 != 0) {
    tmp___4 = __VERIFIER_nondet_int();
    switch (tmp___4) {
    case 0: ;
    if (ldv_state_variable_9 == 1) {
      ldv_retval_4 = liquidio_probe(liquidio_pci_driver_group1, (struct pci_device_id const *)ldvarg17);
      if (ldv_retval_4 == 0) {
        ldv_state_variable_9 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_55354;
    case 1: ;
    if (ldv_state_variable_9 == 2 && pci_counter == 0) {
      ldv_retval_3 = liquidio_suspend(liquidio_pci_driver_group1, ldvarg16);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_9 = 3;
      } else {
      }
    } else {
    }
    goto ldv_55354;
    case 2: ;
    if (ldv_state_variable_9 == 4) {
      liquidio_remove(liquidio_pci_driver_group1);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      liquidio_remove(liquidio_pci_driver_group1);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      liquidio_remove(liquidio_pci_driver_group1);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 5) {
      liquidio_remove(liquidio_pci_driver_group1);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_55354;
    case 3: ;
    if (ldv_state_variable_9 == 4) {
      ldv_retval_2 = liquidio_resume(liquidio_pci_driver_group1);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_9 = 2;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      ldv_retval_2 = liquidio_resume(liquidio_pci_driver_group1);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_9 = 2;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_9 == 5) {
      ldv_retval_2 = liquidio_resume(liquidio_pci_driver_group1);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_9 = 2;
      } else {
      }
    } else {
    }
    goto ldv_55354;
    case 4: ;
    if (ldv_state_variable_9 == 3) {
      ldv_retval_1 = ldv_suspend_late_9();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_9 = 4;
      } else {
      }
    } else {
    }
    goto ldv_55354;
    case 5: ;
    if (ldv_state_variable_9 == 4) {
      ldv_retval_0 = ldv_resume_early_9();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_9 = 5;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      ldv_retval_0 = ldv_resume_early_9();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_9 = 5;
      } else {
      }
    } else {
    }
    goto ldv_55354;
    case 6: ;
    if (ldv_state_variable_9 == 4) {
      ldv_shutdown_9();
      ldv_state_variable_9 = 4;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      ldv_shutdown_9();
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      ldv_shutdown_9();
      ldv_state_variable_9 = 2;
    } else {
    }
    if (ldv_state_variable_9 == 5) {
      ldv_shutdown_9();
      ldv_state_variable_9 = 5;
    } else {
    }
    goto ldv_55354;
    default:
    ldv_stop();
    }
    ldv_55354: ;
  } else {
  }
  goto ldv_55349;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    invoke_work_2();
  } else {
  }
  goto ldv_55349;
  case 5: ;
  if (ldv_state_variable_8 != 0) {
    tmp___5 = __VERIFIER_nondet_int();
    switch (tmp___5) {
    case 0: ;
    if (ldv_state_variable_8 == 3) {
      liquidio_stop(lionetdevops_group1);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_55365;
    case 1: ;
    if (ldv_state_variable_8 == 1) {
      liquidio_set_mcast_list(lionetdevops_group1);
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      liquidio_set_mcast_list(lionetdevops_group1);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      liquidio_set_mcast_list(lionetdevops_group1);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_55365;
    case 2: ;
    if (ldv_state_variable_8 == 1) {
      liquidio_ioctl(lionetdevops_group1, ldvarg24, ldvarg23);
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      liquidio_ioctl(lionetdevops_group1, ldvarg24, ldvarg23);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      liquidio_ioctl(lionetdevops_group1, ldvarg24, ldvarg23);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_55365;
    case 3: ;
    if (ldv_state_variable_8 == 1) {
      liquidio_get_stats(lionetdevops_group1);
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      liquidio_get_stats(lionetdevops_group1);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      liquidio_get_stats(lionetdevops_group1);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_55365;
    case 4: ;
    if (ldv_state_variable_8 == 1) {
      liquidio_set_features(lionetdevops_group1, ldvarg22);
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      liquidio_set_features(lionetdevops_group1, ldvarg22);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      liquidio_set_features(lionetdevops_group1, ldvarg22);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_55365;
    case 5: ;
    if (ldv_state_variable_8 == 3) {
      liquidio_change_mtu(lionetdevops_group1, ldvarg21);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      liquidio_change_mtu(lionetdevops_group1, ldvarg21);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_55365;
    case 6: ;
    if (ldv_state_variable_8 == 2) {
      ldv_retval_6 = liquidio_open(lionetdevops_group1);
      if (ldv_retval_6 == 0) {
        ldv_state_variable_8 = 3;
      } else {
      }
    } else {
    }
    goto ldv_55365;
    case 7: ;
    if (ldv_state_variable_8 == 3) {
      liquidio_xmit(ldvarg20, lionetdevops_group1);
      ldv_state_variable_8 = 3;
    } else {
    }
    goto ldv_55365;
    case 8: ;
    if (ldv_state_variable_8 == 1) {
      liquidio_fix_features(lionetdevops_group1, ldvarg19);
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      liquidio_fix_features(lionetdevops_group1, ldvarg19);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      liquidio_fix_features(lionetdevops_group1, ldvarg19);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_55365;
    case 9: ;
    if (ldv_state_variable_8 == 1) {
      liquidio_set_mac(lionetdevops_group1, ldvarg18);
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      liquidio_set_mac(lionetdevops_group1, ldvarg18);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      liquidio_set_mac(lionetdevops_group1, ldvarg18);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_55365;
    case 10: ;
    if (ldv_state_variable_8 == 1) {
      liquidio_tx_timeout(lionetdevops_group1);
      ldv_state_variable_8 = 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      liquidio_tx_timeout(lionetdevops_group1);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      liquidio_tx_timeout(lionetdevops_group1);
      ldv_state_variable_8 = 2;
    } else {
    }
    goto ldv_55365;
    case 11: ;
    if (ldv_state_variable_8 == 1) {
      ldv_retval_5 = ldv_ndo_init_8();
      if (ldv_retval_5 == 0) {
        ldv_state_variable_8 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_55365;
    case 12: ;
    if (ldv_state_variable_8 == 2) {
      ldv_ndo_uninit_8();
      ldv_state_variable_8 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_55365;
    default:
    ldv_stop();
    }
    ldv_55365: ;
  } else {
  }
  goto ldv_55349;
  case 6: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_55349;
  case 7: ;
  goto ldv_55349;
  case 8: ;
  if (ldv_state_variable_0 != 0) {
    tmp___6 = __VERIFIER_nondet_int();
    switch (tmp___6) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      liquidio_exit();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_55384;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_7 = liquidio_init();
      if (ldv_retval_7 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_7 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_10 = 1;
        ldv_initialize_pci_error_handlers_10();
        ldv_state_variable_7 = 1;
        ldv_initialize_ethtool_ops_7();
      } else {
      }
    } else {
    }
    goto ldv_55384;
    default:
    ldv_stop();
    }
    ldv_55384: ;
  } else {
  }
  goto ldv_55349;
  case 9: ;
  if (ldv_state_variable_10 != 0) {
    tmp___7 = __VERIFIER_nondet_int();
    switch (tmp___7) {
    case 0: ;
    if (ldv_state_variable_10 == 1) {
      liquidio_pcie_slot_reset(liquidio_err_handler_group0);
      ldv_state_variable_10 = 1;
    } else {
    }
    if (ldv_state_variable_10 == 3) {
      liquidio_pcie_slot_reset(liquidio_err_handler_group0);
      ldv_state_variable_10 = 3;
    } else {
    }
    if (ldv_state_variable_10 == 2) {
      liquidio_pcie_slot_reset(liquidio_err_handler_group0);
      ldv_state_variable_10 = 2;
    } else {
    }
    goto ldv_55389;
    case 1: ;
    if (ldv_state_variable_10 == 1) {
      liquidio_pcie_error_detected(liquidio_err_handler_group0, (pci_channel_state_t )ldvarg25);
      ldv_state_variable_10 = 1;
    } else {
    }
    if (ldv_state_variable_10 == 3) {
      liquidio_pcie_error_detected(liquidio_err_handler_group0, (pci_channel_state_t )ldvarg25);
      ldv_state_variable_10 = 3;
    } else {
    }
    if (ldv_state_variable_10 == 2) {
      liquidio_pcie_error_detected(liquidio_err_handler_group0, (pci_channel_state_t )ldvarg25);
      ldv_state_variable_10 = 2;
    } else {
    }
    goto ldv_55389;
    case 2: ;
    if (ldv_state_variable_10 == 1) {
      liquidio_pcie_mmio_enabled(liquidio_err_handler_group0);
      ldv_state_variable_10 = 1;
    } else {
    }
    if (ldv_state_variable_10 == 3) {
      liquidio_pcie_mmio_enabled(liquidio_err_handler_group0);
      ldv_state_variable_10 = 3;
    } else {
    }
    if (ldv_state_variable_10 == 2) {
      liquidio_pcie_mmio_enabled(liquidio_err_handler_group0);
      ldv_state_variable_10 = 2;
    } else {
    }
    goto ldv_55389;
    case 3: ;
    if (ldv_state_variable_10 == 3) {
      liquidio_pcie_resume(liquidio_err_handler_group0);
      ldv_state_variable_10 = 2;
    } else {
    }
    goto ldv_55389;
    case 4: ;
    if (ldv_state_variable_10 == 2) {
      ldv_suspend_10();
      ldv_state_variable_10 = 3;
    } else {
    }
    goto ldv_55389;
    case 5: ;
    if (ldv_state_variable_10 == 3) {
      ldv_release_10();
      ldv_state_variable_10 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_10 == 2) {
      ldv_release_10();
      ldv_state_variable_10 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_55389;
    case 6: ;
    if (ldv_state_variable_10 == 1) {
      ldv_probe_10();
      ldv_state_variable_10 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_55389;
    default:
    ldv_stop();
    }
    ldv_55389: ;
  } else {
  }
  goto ldv_55349;
  case 10: ;
  goto ldv_55349;
  default:
  ldv_stop();
  }
  ldv_55349: ;
  goto ldv_55399;
  ldv_final:
  ldv_check_final_state();
  return 0;
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
  activate_work_6(ldv_func_arg3, 2);
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
  activate_work_6(& ldv_func_arg3->work, 2);
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
  activate_work_6(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_8(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_6(2);
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
  activate_work_6(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_free_irq_10(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
int ldv___pci_register_driver_11(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_9 = 1;
  ldv_pci_driver_9();
  return (ldv_func_res);
}
}
void ldv_pci_unregister_driver_12(struct pci_driver *ldv_func_arg1 )
{
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_state_variable_9 = 0;
  return;
}
}
__inline static int ldv_request_irq_13(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_1(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_1((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_free_irq_14(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
bool ldv_cancel_delayed_work_sync_15(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_6(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
void ldv_unregister_netdev_16(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_8 = 0;
  return;
}
}
void ldv_free_netdev_17(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_8 = 0;
  return;
}
}
bool ldv_try_module_get_18(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
bool ldv_cancel_delayed_work_sync_19(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_6(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_20(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_6(2);
  return;
}
}
void ldv_destroy_workqueue_21(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_6(2);
  return;
}
}
void ldv_module_put_22(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
int ldv_register_netdev_23(struct net_device *dev )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  {
  tmp = register_netdev(dev);
  ldv_func_res = tmp;
  ldv_state_variable_8 = 1;
  ldv_net_device_ops_8();
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern char *strcpy(char * , char const * ) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
bool ldv_queue_work_on_45(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_47(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_46(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_49(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_48(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
__inline static int signal_pending___0(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  return ((int )tmp___0);
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
__inline static void ethtool_cmd_speed_set(struct ethtool_cmd *ep , __u32 speed )
{
  {
  ep->speed = (unsigned short )speed;
  ep->speed_hi = (unsigned short )(speed >> 16);
  return;
}
}
extern u32 ethtool_op_get_link(struct net_device * ) ;
__inline static bool netif_running(struct net_device const *dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev->state));
  return (tmp != 0);
}
}
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  tmp = dev_name(& pdev->dev);
  return (tmp);
}
}
__inline static void octeon_swap_8B_data___0(u64 *data , u32 blocks )
{
  {
  goto ldv_46140;
  ldv_46139:
  __swab64s(data);
  blocks = blocks - 1U;
  data = data + 1;
  ldv_46140: ;
  if (blocks != 0U) {
    goto ldv_46139;
  } else {
  }
  return;
}
}
__inline static void sleep_cond___0(wait_queue_head_t *wait_queue , int *condition )
{
  wait_queue_t we ;
  struct task_struct *tmp ;
  struct task_struct *tmp___0 ;
  long volatile __ret ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  struct task_struct *tmp___3 ;
  struct task_struct *tmp___4 ;
  struct task_struct *tmp___5 ;
  int tmp___6 ;
  int __var ;
  struct task_struct *tmp___7 ;
  long volatile __ret___0 ;
  struct task_struct *tmp___8 ;
  struct task_struct *tmp___9 ;
  struct task_struct *tmp___10 ;
  struct task_struct *tmp___11 ;
  {
  tmp = get_current();
  init_waitqueue_entry(& we, tmp);
  add_wait_queue(wait_queue, & we);
  goto ldv_46184;
  ldv_46183:
  tmp___0 = get_current();
  tmp___0->task_state_change = 0UL;
  __ret = 1L;
  switch (8UL) {
  case 1UL:
  tmp___1 = get_current();
  __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (tmp___1->state): : "memory",
                       "cc");
  goto ldv_46176;
  case 2UL:
  tmp___2 = get_current();
  __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (tmp___2->state): : "memory",
                       "cc");
  goto ldv_46176;
  case 4UL:
  tmp___3 = get_current();
  __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (tmp___3->state): : "memory",
                       "cc");
  goto ldv_46176;
  case 8UL:
  tmp___4 = get_current();
  __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (tmp___4->state): : "memory",
                       "cc");
  goto ldv_46176;
  default:
  __xchg_wrong_size();
  }
  ldv_46176:
  tmp___5 = get_current();
  tmp___6 = signal_pending___0(tmp___5);
  if (tmp___6 != 0) {
    goto out;
  } else {
  }
  schedule();
  ldv_46184:
  __var = 0;
  if ((int )*((int volatile *)condition) == 0) {
    goto ldv_46183;
  } else {
  }
  out:
  tmp___7 = get_current();
  tmp___7->task_state_change = 0UL;
  __ret___0 = 0L;
  switch (8UL) {
  case 1UL:
  tmp___8 = get_current();
  __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret___0), "+m" (tmp___8->state): : "memory",
                       "cc");
  goto ldv_46188;
  case 2UL:
  tmp___9 = get_current();
  __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret___0), "+m" (tmp___9->state): : "memory",
                       "cc");
  goto ldv_46188;
  case 4UL:
  tmp___10 = get_current();
  __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret___0), "+m" (tmp___10->state): : "memory",
                       "cc");
  goto ldv_46188;
  case 8UL:
  tmp___11 = get_current();
  __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret___0), "+m" (tmp___11->state): : "memory",
                       "cc");
  goto ldv_46188;
  default:
  __xchg_wrong_size();
  }
  ldv_46188:
  remove_wait_queue(wait_queue, & we);
  return;
}
}
extern int ptp_clock_index(struct ptp_clock * ) ;
u32 lio_cn6xxx_get_oq_ticks(struct octeon_device *oct , u32 time_intr_in_us ) ;
static char const oct_iq_stats_strings[10U][32U] =
  { { 'I', 'n', 's', 't',
            'r', ' ', 'p', 'o',
            's', 't', 'e', 'd',
            '\000'},
   { 'I', 'n', 's', 't',
            'r', ' ', 'p', 'r',
            'o', 'c', 'e', 's',
            's', 'e', 'd', '\000'},
   { 'I', 'n', 's', 't',
            'r', ' ', 'd', 'r',
            'o', 'p', 'p', 'e',
            'd', '\000'},
   { 'B', 'y', 't', 'e',
            's', ' ', 'S', 'e',
            'n', 't', '\000'},
   { 'S', 'g', 'e', 'n',
            't', 'r', 'y', '_',
            's', 'e', 'n', 't',
            '\000'},
   { 'I', 'n', 's', 't',
            ' ', 'c', 'n', 't',
            'r', 'e', 'g', '\000'},
   { 'T', 'x', ' ', 'd',
            'o', 'n', 'e', '\000'},
   { 'T', 'x', ' ', 'I',
            'q', ' ', 'b', 'u',
            's', 'y', '\000'},
   { 'T', 'x', ' ', 'd',
            'r', 'o', 'p', 'p',
            'e', 'd', '\000'},
   { 'T', 'x', ' ', 'b',
            'y', 't', 'e', 's',
            '\000'}};
static char const oct_droq_stats_strings[8U][32U] =
  { { 'O', 'Q', ' ', 'P',
            'k', 't', 's', ' ',
            'R', 'e', 'c', 'e',
            'i', 'v', 'e', 'd',
            '\000'},
   { 'O', 'Q', ' ', 'B',
            'y', 't', 'e', 's',
            ' ', 'R', 'e', 'c',
            'e', 'i', 'v', 'e',
            'd', '\000'},
   { 'D', 'r', 'o', 'p',
            'p', 'e', 'd', ' ',
            'n', 'o', ' ', 'd',
            'i', 's', 'p', 'a',
            't', 'c', 'h', '\000'},
   { 'D', 'r', 'o', 'p',
            'p', 'e', 'd', ' ',
            'n', 'o', 'm', 'e',
            'm', '\000'},
   { 'D', 'r', 'o', 'p',
            'p', 'e', 'd', ' ',
            't', 'o', 'o', 'm',
            'a', 'n', 'y', '\000'},
   { 'S', 't', 'a', 'c',
            'k', ' ', 'R', 'X',
            ' ', 'c', 'n', 't',
            '\000'},
   { 'S', 't', 'a', 'c',
            'k', ' ', 'R', 'X',
            ' ', 'B', 'y', 't',
            'e', 's', '\000'},
   { 'R', 'X', ' ', 'd',
            'r', 'o', 'p', 'p',
            'e', 'd', '\000'}};
static int lio_get_settings(struct net_device *netdev , struct ethtool_cmd *ecmd )
{
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct ;
  struct oct_link_info *linfo ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct = lio->oct_dev;
  linfo = & lio->linfo;
  if ((unsigned int )*((unsigned char *)linfo + 1UL) == 40U || (unsigned int )*((unsigned char *)linfo + 1UL) == 96U) {
    ecmd->port = 3U;
    ecmd->supported = 13312U;
    ecmd->advertising = 12288U;
    ecmd->transceiver = 1U;
    ecmd->autoneg = 0U;
  } else {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Unknown link interface reported\n");
  }
  if ((unsigned int )linfo->link.s.status != 0U) {
    ethtool_cmd_speed_set(ecmd, (__u32 )linfo->link.s.speed);
    ecmd->duplex = linfo->link.s.duplex;
  } else {
    ethtool_cmd_speed_set(ecmd, 4294967295U);
    ecmd->duplex = 255U;
  }
  return (0);
}
}
static void lio_get_drvinfo(struct net_device *netdev , struct ethtool_drvinfo *drvinfo )
{
  struct lio *lio ;
  struct octeon_device *oct ;
  void *tmp ;
  char const *tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct = lio->oct_dev;
  memset((void *)drvinfo, 0, 196UL);
  strcpy((char *)(& drvinfo->driver), "liquidio");
  strcpy((char *)(& drvinfo->version), "1.1.9");
  strncpy((char *)(& drvinfo->fw_version), (char const *)(& oct->fw_info.liquidio_firmware_version),
          32UL);
  tmp___0 = pci_name((struct pci_dev const *)oct->pci_dev);
  strncpy((char *)(& drvinfo->bus_info), tmp___0, 32UL);
  drvinfo->regdump_len = 4096U;
  return;
}
}
static void lio_ethtool_get_channels(struct net_device *dev , struct ethtool_channels *channel )
{
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct ;
  u32 max_rx ;
  u32 max_tx ;
  u32 tx_count ;
  u32 rx_count ;
  struct octeon_config *conf6x ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  lio = (struct lio *)tmp;
  oct = lio->oct_dev;
  max_rx = 0U;
  max_tx = 0U;
  tx_count = 0U;
  rx_count = 0U;
  if ((unsigned int )oct->chip_id == 146U || (unsigned int )oct->chip_id == 145U) {
    conf6x = ((struct octeon_cn6xxx *)oct->chip)->conf;
    max_rx = (u32 )conf6x->oq.max_oqs;
    max_tx = (u32 )conf6x->iq.max_iqs;
    rx_count = (u32 )conf6x->nic_if_cfg[lio->ifidx].num_rxqs;
    tx_count = (u32 )conf6x->nic_if_cfg[lio->ifidx].num_txqs;
  } else {
  }
  channel->max_rx = max_rx;
  channel->max_tx = max_tx;
  channel->rx_count = rx_count;
  channel->tx_count = tx_count;
  return;
}
}
static int lio_get_eeprom_len(struct net_device *netdev )
{
  u8 buf[128U] ;
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct_dev ;
  struct octeon_board_info *board_info ;
  int len ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct_dev = lio->oct_dev;
  board_info = & oct_dev->boardinfo;
  len = sprintf((char *)(& buf), "boardname:%s serialnum:%s maj:%lld min:%lld\n",
                (char *)(& board_info->name), (char *)(& board_info->serial_number),
                board_info->major, board_info->minor);
  return (len);
}
}
static int lio_get_eeprom(struct net_device *netdev , struct ethtool_eeprom *eeprom ,
                          u8 *bytes )
{
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct_dev ;
  struct octeon_board_info *board_info ;
  int len ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct_dev = lio->oct_dev;
  if (eeprom->offset != 0U) {
    return (-22);
  } else {
  }
  eeprom->magic = (__u32 )(oct_dev->pci_dev)->vendor;
  board_info = & oct_dev->boardinfo;
  len = sprintf((char *)bytes, "boardname:%s serialnum:%s maj:%lld min:%lld\n", (char *)(& board_info->name),
                (char *)(& board_info->serial_number), board_info->major, board_info->minor);
  return (0);
}
}
static int octnet_gpio_access(struct net_device *netdev , int addr , int val )
{
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct ;
  struct octnic_ctrl_pkt nctrl ;
  struct octnic_ctrl_params nparams ;
  int ret ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct = lio->oct_dev;
  ret = 0;
  memset((void *)(& nctrl), 0, 320UL);
  nctrl.ncmd.u64 = 0ULL;
  nctrl.ncmd.s.cmd = 10U;
  nctrl.ncmd.s.param1 = (unsigned int )lio->linfo.ifidx;
  nctrl.ncmd.s.param2 = (unsigned short )addr;
  nctrl.ncmd.s.param3 = (unsigned char )val;
  nctrl.wait_time = 100UL;
  nctrl.netpndev = (unsigned long long )netdev;
  nctrl.cb_fn = & liquidio_link_ctrl_cmd_completion;
  nparams.resp_order = 0U;
  ret = octnet_send_nic_ctrl_pkt(lio->oct_dev, & nctrl, nparams);
  if (ret < 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Failed to configure gpio value\n");
    return (-22);
  } else {
  }
  return (0);
}
}
static void octnet_mdio_resp_callback(struct octeon_device *oct , u32 status , void *buf )
{
  struct oct_mdio_cmd_resp *mdio_cmd_rsp ;
  struct oct_mdio_cmd_context *mdio_cmd_ctx ;
  struct octeon_soft_command *sc ;
  int __var ;
  int __var___0 ;
  {
  sc = (struct octeon_soft_command *)buf;
  mdio_cmd_rsp = (struct oct_mdio_cmd_resp *)sc->virtrptr;
  mdio_cmd_ctx = (struct oct_mdio_cmd_context *)sc->ctxptr;
  oct = lio_get_device((u32 )mdio_cmd_ctx->octeon_id);
  if (status != 0U) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "MIDO instruction failed. Status: %llx\n",
            (long long )status);
    __var = 0;
    *((int volatile *)(& mdio_cmd_ctx->cond)) = -1;
  } else {
    __var___0 = 0;
    *((int volatile *)(& mdio_cmd_ctx->cond)) = 1;
  }
  __wake_up(& mdio_cmd_ctx->wc, 1U, 1, (void *)0);
  return;
}
}
static int octnet_mdio45_access(struct lio *lio , int op , int loc , int *value )
{
  struct octeon_device *oct_dev ;
  struct octeon_soft_command *sc ;
  struct oct_mdio_cmd_resp *mdio_cmd_rsp ;
  struct oct_mdio_cmd_context *mdio_cmd_ctx ;
  struct oct_mdio_cmd *mdio_cmd ;
  int retval ;
  int __var ;
  struct lock_class_key __key ;
  int __var___0 ;
  {
  oct_dev = lio->oct_dev;
  retval = 0;
  sc = octeon_alloc_soft_command(oct_dev, 40U, 56U, 104U);
  if ((unsigned long )sc == (unsigned long )((struct octeon_soft_command *)0)) {
    return (-12);
  } else {
  }
  mdio_cmd_ctx = (struct oct_mdio_cmd_context *)sc->ctxptr;
  mdio_cmd_rsp = (struct oct_mdio_cmd_resp *)sc->virtrptr;
  mdio_cmd = (struct oct_mdio_cmd *)sc->virtdptr;
  __var = 0;
  *((int volatile *)(& mdio_cmd_ctx->cond)) = 0;
  mdio_cmd_ctx->octeon_id = lio_get_device_id((void *)oct_dev);
  mdio_cmd->op = (u64 )op;
  mdio_cmd->mdio_addr = (u64 )loc;
  if (op != 0) {
    mdio_cmd->value1 = (u64 )*value;
  } else {
  }
  mdio_cmd->value2 = (u64 )lio->linfo.ifidx;
  octeon_swap_8B_data___0((u64 *)mdio_cmd, 5U);
  octeon_prepare_soft_command(oct_dev, sc, 1, 6, 0U, 0ULL, 0ULL);
  sc->wait_time = 1000UL;
  sc->callback = & octnet_mdio_resp_callback;
  sc->callback_arg = (void *)sc;
  __init_waitqueue_head(& mdio_cmd_ctx->wc, "&mdio_cmd_ctx->wc", & __key);
  retval = octeon_send_soft_command(oct_dev, sc);
  if (retval != 0) {
    dev_err((struct device const *)(& (oct_dev->pci_dev)->dev), "octnet_mdio45_access instruction failed status: %x\n",
            retval);
    retval = -16;
  } else {
    sleep_cond___0(& mdio_cmd_ctx->wc, & mdio_cmd_ctx->cond);
    retval = (int )mdio_cmd_rsp->status;
    if (retval != 0) {
      dev_err((struct device const *)(& (oct_dev->pci_dev)->dev), "octnet mdio45 access failed\n");
      retval = -16;
    } else {
      octeon_swap_8B_data___0((u64 *)(& mdio_cmd_rsp->resp), 5U);
      __var___0 = 0;
      if ((int )*((int volatile *)(& mdio_cmd_ctx->cond)) == 1) {
        if (op == 0) {
          *value = (int )mdio_cmd_rsp->resp.value1;
        } else {
        }
      } else {
        retval = -22;
      }
    }
  }
  octeon_free_soft_command(oct_dev, sc);
  return (retval);
}
}
static int lio_set_phys_id(struct net_device *netdev , enum ethtool_phys_id_state state )
{
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct ;
  int value ;
  int ret ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct = lio->oct_dev;
  switch ((unsigned int )state) {
  case 1U: ;
  if ((unsigned int )oct->chip_id == 146U) {
    octnet_gpio_access(netdev, 8, 1);
    return (2);
  } else
  if ((unsigned int )oct->chip_id == 145U) {
    ret = octnet_mdio45_access(lio, 0, 13576, (int *)(& lio->phy_beacon_val));
    if (ret != 0) {
      return (ret);
    } else {
    }
    ret = octnet_mdio45_access(lio, 0, 13569, (int *)(& lio->led_ctrl_val));
    if (ret != 0) {
      return (ret);
    } else {
    }
    value = 18429;
    ret = octnet_mdio45_access(lio, 1, 13576, & value);
    if (ret != 0) {
      return (ret);
    } else {
    }
    value = 31;
    ret = octnet_mdio45_access(lio, 1, 13569, & value);
    if (ret != 0) {
      return (ret);
    } else {
    }
  } else {
    return (-22);
  }
  goto ldv_46744;
  case 2U: ;
  if ((unsigned int )oct->chip_id == 146U) {
    octnet_gpio_access(netdev, 8, 2);
  } else
  if ((unsigned int )oct->chip_id == 145U) {
    return (-22);
  } else {
    return (-22);
  }
  goto ldv_46744;
  case 3U: ;
  if ((unsigned int )oct->chip_id == 146U) {
    octnet_gpio_access(netdev, 8, 3);
  } else
  if ((unsigned int )oct->chip_id == 145U) {
    return (-22);
  } else {
    return (-22);
  }
  goto ldv_46744;
  case 0U: ;
  if ((unsigned int )oct->chip_id == 146U) {
    octnet_gpio_access(netdev, 8, 4);
  } else
  if ((unsigned int )oct->chip_id == 145U) {
    ret = octnet_mdio45_access(lio, 1, 13569, (int *)(& lio->led_ctrl_val));
    if (ret != 0) {
      return (ret);
    } else {
    }
    ret = octnet_mdio45_access(lio, 1, 13576, (int *)(& lio->phy_beacon_val));
    if (ret != 0) {
      return (ret);
    } else {
    }
  } else {
    return (-22);
  }
  goto ldv_46744;
  default: ;
  return (-22);
  }
  ldv_46744: ;
  return (0);
}
}
static void lio_ethtool_get_ringparam(struct net_device *netdev , struct ethtool_ringparam *ering )
{
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct ;
  u32 tx_max_pending ;
  u32 rx_max_pending ;
  u32 tx_pending ;
  u32 rx_pending ;
  struct octeon_config *conf6x ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct = lio->oct_dev;
  tx_max_pending = 0U;
  rx_max_pending = 0U;
  tx_pending = 0U;
  rx_pending = 0U;
  if ((unsigned int )oct->chip_id == 146U || (unsigned int )oct->chip_id == 145U) {
    conf6x = ((struct octeon_cn6xxx *)oct->chip)->conf;
    tx_max_pending = 2048U;
    rx_max_pending = 2048U;
    rx_pending = (u32 )conf6x->nic_if_cfg[lio->ifidx].num_rx_descs;
    tx_pending = (u32 )conf6x->nic_if_cfg[lio->ifidx].num_tx_descs;
  } else {
  }
  if (lio->mtu > 1530U) {
    ering->rx_pending = 0U;
    ering->rx_max_pending = 0U;
    ering->rx_mini_pending = 0U;
    ering->rx_jumbo_pending = rx_pending;
    ering->rx_mini_max_pending = 0U;
    ering->rx_jumbo_max_pending = rx_max_pending;
  } else {
    ering->rx_pending = rx_pending;
    ering->rx_max_pending = rx_max_pending;
    ering->rx_mini_pending = 0U;
    ering->rx_jumbo_pending = 0U;
    ering->rx_mini_max_pending = 0U;
    ering->rx_jumbo_max_pending = 0U;
  }
  ering->tx_pending = tx_pending;
  ering->tx_max_pending = tx_max_pending;
  return;
}
}
static u32 lio_get_msglevel(struct net_device *netdev )
{
  struct lio *lio ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  return (lio->msg_enable);
}
}
static void lio_set_msglevel(struct net_device *netdev , u32 msglvl )
{
  struct lio *lio ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  if (((lio->msg_enable ^ msglvl) & 8192U) != 0U) {
    if ((msglvl & 8192U) != 0U) {
      liquidio_set_feature(netdev, 20);
    } else {
      liquidio_set_feature(netdev, 21);
    }
  } else {
  }
  lio->msg_enable = msglvl;
  return;
}
}
static void lio_get_pauseparam(struct net_device *netdev , struct ethtool_pauseparam *pause )
{
  {
  pause->tx_pause = 1U;
  pause->rx_pause = 1U;
  return;
}
}
static void lio_get_ethtool_stats(struct net_device *netdev , struct ethtool_stats *stats ,
                                  u64 *data )
{
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct_dev ;
  int i ;
  int j ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  unsigned int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct_dev = lio->oct_dev;
  i = 0;
  j = 0;
  goto ldv_46784;
  ldv_46783: ;
  if ((((unsigned long )oct_dev->io_qmask.iq >> j) & 1UL) == 0UL) {
    goto ldv_46782;
  } else {
  }
  tmp___0 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___0) = (oct_dev->instr_queue[j])->stats.instr_posted;
  tmp___1 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___1) = (oct_dev->instr_queue[j])->stats.instr_processed;
  tmp___2 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___2) = (oct_dev->instr_queue[j])->stats.instr_dropped;
  tmp___3 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___3) = (oct_dev->instr_queue[j])->stats.bytes_sent;
  tmp___4 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___4) = (oct_dev->instr_queue[j])->stats.sgentry_sent;
  tmp___5 = i;
  i = i + 1;
  tmp___6 = readl((void const volatile *)(oct_dev->instr_queue[j])->inst_cnt_reg);
  *(data + (unsigned long )tmp___5) = (u64 )tmp___6;
  tmp___7 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___7) = (oct_dev->instr_queue[j])->stats.tx_done;
  tmp___8 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___8) = (oct_dev->instr_queue[j])->stats.tx_iq_busy;
  tmp___9 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___9) = (oct_dev->instr_queue[j])->stats.tx_dropped;
  tmp___10 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___10) = (oct_dev->instr_queue[j])->stats.tx_tot_bytes;
  ldv_46782:
  j = j + 1;
  ldv_46784: ;
  if (j <= 31) {
    goto ldv_46783;
  } else {
  }
  j = 0;
  goto ldv_46788;
  ldv_46787: ;
  if ((((unsigned long )oct_dev->io_qmask.oq >> j) & 1UL) == 0UL) {
    goto ldv_46786;
  } else {
  }
  tmp___11 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___11) = (oct_dev->droq[j])->stats.pkts_received;
  tmp___12 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___12) = (oct_dev->droq[j])->stats.bytes_received;
  tmp___13 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___13) = (oct_dev->droq[j])->stats.dropped_nodispatch;
  tmp___14 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___14) = (oct_dev->droq[j])->stats.dropped_nomem;
  tmp___15 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___15) = (oct_dev->droq[j])->stats.dropped_toomany;
  tmp___16 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___16) = (oct_dev->droq[j])->stats.rx_pkts_received;
  tmp___17 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___17) = (oct_dev->droq[j])->stats.rx_bytes_received;
  tmp___18 = i;
  i = i + 1;
  *(data + (unsigned long )tmp___18) = (oct_dev->droq[j])->stats.rx_dropped;
  ldv_46786:
  j = j + 1;
  ldv_46788: ;
  if (j <= 31) {
    goto ldv_46787;
  } else {
  }
  return;
}
}
static void lio_get_strings(struct net_device *netdev , u32 stringset , u8 *data )
{
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct_dev ;
  int num_iq_stats ;
  int num_oq_stats ;
  int i ;
  int j ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct_dev = lio->oct_dev;
  num_iq_stats = 10;
  i = 0;
  goto ldv_46808;
  ldv_46807: ;
  if ((((unsigned long )oct_dev->io_qmask.iq >> i) & 1UL) == 0UL) {
    goto ldv_46803;
  } else {
  }
  j = 0;
  goto ldv_46805;
  ldv_46804:
  sprintf((char *)data, "IQ%d %s", i, (char const *)(& oct_iq_stats_strings) + (unsigned long )j);
  data = data + 32UL;
  j = j + 1;
  ldv_46805: ;
  if (j < num_iq_stats) {
    goto ldv_46804;
  } else {
  }
  ldv_46803:
  i = i + 1;
  ldv_46808: ;
  if (i <= 31) {
    goto ldv_46807;
  } else {
  }
  num_oq_stats = 8;
  i = 0;
  goto ldv_46817;
  ldv_46816: ;
  if ((((unsigned long )oct_dev->io_qmask.oq >> i) & 1UL) == 0UL) {
    goto ldv_46812;
  } else {
  }
  j = 0;
  goto ldv_46814;
  ldv_46813:
  sprintf((char *)data, "OQ%d %s", i, (char const *)(& oct_droq_stats_strings) + (unsigned long )j);
  data = data + 32UL;
  j = j + 1;
  ldv_46814: ;
  if (j < num_oq_stats) {
    goto ldv_46813;
  } else {
  }
  ldv_46812:
  i = i + 1;
  ldv_46817: ;
  if (i <= 31) {
    goto ldv_46816;
  } else {
  }
  return;
}
}
static int lio_get_sset_count(struct net_device *netdev , int sset )
{
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct_dev ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct_dev = lio->oct_dev;
  return ((int )(oct_dev->num_iqs * 10U + oct_dev->num_oqs * 8U));
}
}
static int lio_get_intr_coalesce(struct net_device *netdev , struct ethtool_coalesce *intr_coal )
{
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct ;
  struct octeon_cn6xxx *cn6xxx ;
  struct octeon_instr_queue *iq ;
  struct oct_intrmod_cfg *intrmod_cfg ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct = lio->oct_dev;
  cn6xxx = (struct octeon_cn6xxx *)oct->chip;
  intrmod_cfg = & oct->intrmod;
  switch ((int )oct->chip_id) {
  case 145: ;
  case 146: ;
  if (intrmod_cfg->intrmod_enable == 0ULL) {
    intr_coal->rx_coalesce_usecs = (__u32 )(cn6xxx->conf)->oq.oq_intr_time;
    intr_coal->rx_max_coalesced_frames = (__u32 )(cn6xxx->conf)->oq.oq_intr_pkt;
  } else {
    intr_coal->use_adaptive_rx_coalesce = (__u32 )intrmod_cfg->intrmod_enable;
    intr_coal->rate_sample_interval = (__u32 )intrmod_cfg->intrmod_check_intrvl;
    intr_coal->pkt_rate_high = (__u32 )intrmod_cfg->intrmod_maxpkt_ratethr;
    intr_coal->pkt_rate_low = (__u32 )intrmod_cfg->intrmod_minpkt_ratethr;
    intr_coal->rx_max_coalesced_frames_high = (__u32 )intrmod_cfg->intrmod_maxcnt_trigger;
    intr_coal->rx_coalesce_usecs_high = (__u32 )intrmod_cfg->intrmod_maxtmr_trigger;
    intr_coal->rx_coalesce_usecs_low = (__u32 )intrmod_cfg->intrmod_mintmr_trigger;
    intr_coal->rx_max_coalesced_frames_low = (__u32 )intrmod_cfg->intrmod_mincnt_trigger;
  }
  iq = oct->instr_queue[(int )lio->linfo.txpciq[0]];
  intr_coal->tx_max_coalesced_frames = iq->fill_threshold;
  goto ldv_46840;
  default: ;
  if ((int )lio->msg_enable & 1) {
    netdev_info((struct net_device const *)lio->netdev, "Unknown Chip !!\n");
  } else {
  }
  return (-22);
  }
  ldv_46840: ;
  return (0);
}
}
static void octnet_intrmod_callback(struct octeon_device *oct_dev , u32 status , void *ptr )
{
  struct oct_intrmod_cmd *cmd ;
  struct octeon_soft_command *sc ;
  {
  cmd = (struct oct_intrmod_cmd *)ptr;
  sc = cmd->sc;
  oct_dev = cmd->oct_dev;
  if (status != 0U) {
    dev_err((struct device const *)(& (oct_dev->pci_dev)->dev), "intrmod config failed. Status: %llx\n",
            (long long )status);
  } else {
    _dev_info((struct device const *)(& (oct_dev->pci_dev)->dev), "Rx-Adaptive Interrupt moderation enabled:%llx\n",
              oct_dev->intrmod.intrmod_enable);
  }
  octeon_free_soft_command(oct_dev, sc);
  return;
}
}
static int octnet_set_intrmod_cfg(void *oct , struct oct_intrmod_cfg *intr_cfg )
{
  struct octeon_soft_command *sc ;
  struct oct_intrmod_cmd *cmd ;
  struct oct_intrmod_cfg *cfg ;
  int retval ;
  struct octeon_device *oct_dev ;
  {
  oct_dev = (struct octeon_device *)oct;
  sc = octeon_alloc_soft_command(oct_dev, 64U, 0U, 24U);
  if ((unsigned long )sc == (unsigned long )((struct octeon_soft_command *)0)) {
    return (-12);
  } else {
  }
  cmd = (struct oct_intrmod_cmd *)sc->ctxptr;
  cfg = (struct oct_intrmod_cfg *)sc->virtdptr;
  memcpy((void *)cfg, (void const *)intr_cfg, 64UL);
  octeon_swap_8B_data___0((u64 *)cfg, 8U);
  cmd->sc = sc;
  cmd->cfg = cfg;
  cmd->oct_dev = oct_dev;
  octeon_prepare_soft_command(oct_dev, sc, 1, 8, 0U, 0ULL, 0ULL);
  sc->callback = & octnet_intrmod_callback;
  sc->callback_arg = (void *)cmd;
  sc->wait_time = 1000UL;
  retval = octeon_send_soft_command(oct_dev, sc);
  if (retval != 0) {
    octeon_free_soft_command(oct_dev, sc);
    return (-22);
  } else {
  }
  return (0);
}
}
static int oct_cfg_adaptive_intr(struct lio *lio , struct ethtool_coalesce *intr_coal ,
                                 int adaptive )
{
  int ret ;
  struct octeon_device *oct ;
  struct oct_intrmod_cfg *intrmod_cfg ;
  {
  ret = 0;
  oct = lio->oct_dev;
  intrmod_cfg = & oct->intrmod;
  if (adaptive != 0) {
    if (intr_coal->rate_sample_interval != 0U) {
      intrmod_cfg->intrmod_check_intrvl = (u64 )intr_coal->rate_sample_interval;
    } else {
      intrmod_cfg->intrmod_check_intrvl = 1ULL;
    }
    if (intr_coal->pkt_rate_high != 0U) {
      intrmod_cfg->intrmod_maxpkt_ratethr = (u64 )intr_coal->pkt_rate_high;
    } else {
      intrmod_cfg->intrmod_maxpkt_ratethr = 196608ULL;
    }
    if (intr_coal->pkt_rate_low != 0U) {
      intrmod_cfg->intrmod_minpkt_ratethr = (u64 )intr_coal->pkt_rate_low;
    } else {
      intrmod_cfg->intrmod_minpkt_ratethr = 9216ULL;
    }
    if (intr_coal->rx_max_coalesced_frames_high != 0U) {
      intrmod_cfg->intrmod_maxcnt_trigger = (u64 )intr_coal->rx_max_coalesced_frames_high;
    } else {
      intrmod_cfg->intrmod_maxcnt_trigger = 384ULL;
    }
    if (intr_coal->rx_coalesce_usecs_high != 0U) {
      intrmod_cfg->intrmod_maxtmr_trigger = (u64 )intr_coal->rx_coalesce_usecs_high;
    } else {
      intrmod_cfg->intrmod_maxtmr_trigger = 128ULL;
    }
    if (intr_coal->rx_coalesce_usecs_low != 0U) {
      intrmod_cfg->intrmod_mintmr_trigger = (u64 )intr_coal->rx_coalesce_usecs_low;
    } else {
      intrmod_cfg->intrmod_mintmr_trigger = 32ULL;
    }
    if (intr_coal->rx_max_coalesced_frames_low != 0U) {
      intrmod_cfg->intrmod_mincnt_trigger = (u64 )intr_coal->rx_max_coalesced_frames_low;
    } else {
      intrmod_cfg->intrmod_mincnt_trigger = 1ULL;
    }
  } else {
  }
  intrmod_cfg->intrmod_enable = (u64 )adaptive;
  ret = octnet_set_intrmod_cfg((void *)oct, intrmod_cfg);
  return (ret);
}
}
static int oct_cfg_rx_intrcnt(struct lio *lio , struct ethtool_coalesce *intr_coal )
{
  int ret ;
  struct octeon_device *oct ;
  struct octeon_cn6xxx *cn6xxx ;
  u32 rx_max_coalesced_frames ;
  {
  oct = lio->oct_dev;
  cn6xxx = (struct octeon_cn6xxx *)oct->chip;
  if (intr_coal->rx_max_coalesced_frames == 0U) {
    rx_max_coalesced_frames = 64U;
  } else {
    rx_max_coalesced_frames = intr_coal->rx_max_coalesced_frames;
  }
  ret = oct_cfg_adaptive_intr(lio, intr_coal, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  writel(rx_max_coalesced_frames, (void volatile *)oct->mmio[0].hw_addr + 4384U);
  (cn6xxx->conf)->oq.oq_intr_pkt = (unsigned short )rx_max_coalesced_frames;
  return (0);
}
}
static int oct_cfg_rx_intrtime(struct lio *lio , struct ethtool_coalesce *intr_coal )
{
  int ret ;
  struct octeon_device *oct ;
  struct octeon_cn6xxx *cn6xxx ;
  u32 time_threshold ;
  u32 rx_coalesce_usecs ;
  {
  oct = lio->oct_dev;
  cn6xxx = (struct octeon_cn6xxx *)oct->chip;
  if (intr_coal->rx_coalesce_usecs == 0U) {
    rx_coalesce_usecs = 100U;
  } else {
    rx_coalesce_usecs = intr_coal->rx_coalesce_usecs;
  }
  ret = oct_cfg_adaptive_intr(lio, intr_coal, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  time_threshold = lio_cn6xxx_get_oq_ticks(oct, rx_coalesce_usecs);
  writel(time_threshold, (void volatile *)oct->mmio[0].hw_addr + 4388U);
  (cn6xxx->conf)->oq.oq_intr_time = (unsigned short )rx_coalesce_usecs;
  return (0);
}
}
static int lio_set_intr_coalesce(struct net_device *netdev , struct ethtool_coalesce *intr_coal )
{
  struct lio *lio ;
  void *tmp ;
  int ret ;
  struct octeon_device *oct ;
  u32 j ;
  u32 q_no ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct = lio->oct_dev;
  if (intr_coal->tx_max_coalesced_frames != 0U && intr_coal->tx_max_coalesced_frames <= 8U) {
    j = 0U;
    goto ldv_46893;
    ldv_46892:
    q_no = (u32 )lio->linfo.txpciq[j];
    (oct->instr_queue[q_no])->fill_threshold = intr_coal->tx_max_coalesced_frames;
    j = j + 1U;
    ldv_46893: ;
    if ((u32 )lio->linfo.num_txpciq > j) {
      goto ldv_46892;
    } else {
    }
  } else {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "LIQUIDIO: Invalid tx-frames:%d. Range is min:%d max:%d\n",
            intr_coal->tx_max_coalesced_frames, 1, 8);
    return (-22);
  }
  if (intr_coal->use_adaptive_rx_coalesce != 0U) {
    ret = oct_cfg_adaptive_intr(lio, intr_coal, 1);
    if (ret != 0) {
      goto ret_intrmod;
    } else {
    }
  } else {
  }
  if (intr_coal->rx_coalesce_usecs != 0U && intr_coal->use_adaptive_rx_coalesce == 0U) {
    ret = oct_cfg_rx_intrtime(lio, intr_coal);
    if (ret != 0) {
      goto ret_intrmod;
    } else {
    }
  } else {
  }
  if (intr_coal->rx_max_coalesced_frames != 0U && intr_coal->use_adaptive_rx_coalesce == 0U) {
    ret = oct_cfg_rx_intrcnt(lio, intr_coal);
    if (ret != 0) {
      goto ret_intrmod;
    } else {
    }
  } else {
  }
  if ((intr_coal->rx_max_coalesced_frames == 0U && intr_coal->use_adaptive_rx_coalesce == 0U) && intr_coal->rx_coalesce_usecs == 0U) {
    _dev_info((struct device const *)(& (oct->pci_dev)->dev), "Turning off adaptive-rx interrupt moderation\n");
    _dev_info((struct device const *)(& (oct->pci_dev)->dev), "Using RX Coalesce Default values rx_coalesce_usecs:%d rx_max_coalesced_frames:%d\n",
              100, 64);
    ret = oct_cfg_rx_intrtime(lio, intr_coal);
    if (ret != 0) {
      goto ret_intrmod;
    } else {
    }
    ret = oct_cfg_rx_intrcnt(lio, intr_coal);
    if (ret != 0) {
      goto ret_intrmod;
    } else {
    }
  } else {
  }
  return (0);
  ret_intrmod: ;
  return (ret);
}
}
static int lio_get_ts_info(struct net_device *netdev , struct ethtool_ts_info *info )
{
  struct lio *lio ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  info->so_timestamping = 95U;
  if ((unsigned long )lio->ptp_clock != (unsigned long )((struct ptp_clock *)0)) {
    info->phc_index = ptp_clock_index(lio->ptp_clock);
  } else {
    info->phc_index = -1;
  }
  info->tx_types = 3U;
  info->rx_filters = 585U;
  return (0);
}
}
static int lio_set_settings(struct net_device *netdev , struct ethtool_cmd *ecmd )
{
  struct lio *lio ;
  void *tmp ;
  struct octeon_device *oct ;
  struct oct_link_info *linfo ;
  struct octnic_ctrl_pkt nctrl ;
  struct octnic_ctrl_params nparams ;
  int ret ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  lio = (struct lio *)tmp;
  oct = lio->oct_dev;
  ret = 0;
  linfo = & lio->linfo;
  if ((unsigned int )ecmd->autoneg != 1U && (unsigned int )ecmd->autoneg != 0U) {
    return (-22);
  } else {
  }
  if ((unsigned int )ecmd->autoneg == 0U && (((unsigned int )ecmd->speed != 100U && (unsigned int )ecmd->speed != 10U) || ((unsigned int )ecmd->duplex != 0U && (unsigned int )ecmd->duplex != 1U))) {
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)linfo + 1UL) == 40U || (unsigned int )*((unsigned char *)linfo + 1UL) == 96U) {
    _dev_info((struct device const *)(& (oct->pci_dev)->dev), "XAUI IFs settings cannot be modified.\n");
    return (-22);
  } else {
  }
  memset((void *)(& nctrl), 0, 320UL);
  nctrl.ncmd.u64 = 0ULL;
  nctrl.ncmd.s.cmd = 7U;
  nctrl.wait_time = 1000UL;
  nctrl.netpndev = (unsigned long long )netdev;
  nctrl.ncmd.s.param1 = (unsigned int )lio->linfo.ifidx;
  nctrl.cb_fn = & liquidio_link_ctrl_cmd_completion;
  if ((unsigned int )ecmd->autoneg == 1U) {
    nctrl.ncmd.s.more = 3U;
    nctrl.ncmd.s.param2 = (unsigned short )ecmd->advertising;
  } else {
    nctrl.ncmd.s.more = 2U;
    nctrl.ncmd.s.param3 = ecmd->duplex;
    nctrl.ncmd.s.param2 = ecmd->speed;
  }
  nparams.resp_order = 0U;
  ret = octnet_send_nic_ctrl_pkt(lio->oct_dev, & nctrl, nparams);
  if (ret < 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Failed to set settings\n");
    return (-1);
  } else {
  }
  return (0);
}
}
static int lio_nway_reset(struct net_device *netdev )
{
  struct ethtool_cmd ecmd ;
  bool tmp ;
  {
  tmp = netif_running((struct net_device const *)netdev);
  if ((int )tmp) {
    memset((void *)(& ecmd), 0, 44UL);
    ecmd.autoneg = 0U;
    ecmd.speed = 0U;
    ecmd.duplex = 0U;
    lio_set_settings(netdev, & ecmd);
  } else {
  }
  return (0);
}
}
static int lio_get_regs_len(struct net_device *dev )
{
  {
  return (4096);
}
}
static int cn6xxx_read_csr_reg(char *s , struct octeon_device *oct )
{
  u32 reg ;
  int i ;
  int len ;
  int tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  int tmp___3 ;
  unsigned int tmp___4 ;
  int tmp___5 ;
  unsigned int tmp___6 ;
  int tmp___7 ;
  unsigned int tmp___8 ;
  int tmp___9 ;
  unsigned int tmp___10 ;
  int tmp___11 ;
  unsigned int tmp___12 ;
  int tmp___13 ;
  unsigned int tmp___14 ;
  int tmp___15 ;
  unsigned int tmp___16 ;
  int tmp___17 ;
  unsigned int tmp___18 ;
  int tmp___19 ;
  unsigned int tmp___20 ;
  int tmp___21 ;
  unsigned int tmp___22 ;
  int tmp___23 ;
  unsigned int tmp___24 ;
  int tmp___25 ;
  unsigned int tmp___26 ;
  int tmp___27 ;
  u32 reg___0 ;
  unsigned int tmp___28 ;
  int tmp___29 ;
  unsigned int tmp___30 ;
  int tmp___31 ;
  unsigned int tmp___32 ;
  int tmp___33 ;
  unsigned int tmp___34 ;
  int tmp___35 ;
  unsigned int tmp___36 ;
  int tmp___37 ;
  unsigned int tmp___38 ;
  int tmp___39 ;
  unsigned int tmp___40 ;
  int tmp___41 ;
  unsigned int tmp___42 ;
  int tmp___43 ;
  int tmp___44 ;
  u64 tmp___45 ;
  int tmp___46 ;
  {
  len = 0;
  tmp = sprintf(s + (unsigned long )len, "\n\t Octeon CSR Registers\n\n");
  len = tmp + len;
  reg = 0U;
  tmp___0 = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )reg);
  tmp___1 = sprintf(s + (unsigned long )len, "\n[%02x] (WIN_WR_ADDR_LO): %08x\n",
                    0, tmp___0);
  len = tmp___1 + len;
  reg = 4U;
  tmp___2 = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )reg);
  tmp___3 = sprintf(s + (unsigned long )len, "[%02x] (WIN_WR_ADDR_HI): %08x\n", 4,
                    tmp___2);
  len = tmp___3 + len;
  reg = 16U;
  tmp___4 = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )reg);
  tmp___5 = sprintf(s + (unsigned long )len, "[%02x] (WIN_RD_ADDR_LO): %08x\n", 16,
                    tmp___4);
  len = tmp___5 + len;
  reg = 20U;
  tmp___6 = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )reg);
  tmp___7 = sprintf(s + (unsigned long )len, "[%02x] (WIN_RD_ADDR_HI): %08x\n", 20,
                    tmp___6);
  len = tmp___7 + len;
  reg = 32U;
  tmp___8 = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )reg);
  tmp___9 = sprintf(s + (unsigned long )len, "[%02x] (WIN_WR_DATA_LO): %08x\n", 32,
                    tmp___8);
  len = tmp___9 + len;
  reg = 36U;
  tmp___10 = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )reg);
  tmp___11 = sprintf(s + (unsigned long )len, "[%02x] (WIN_WR_DATA_HI): %08x\n", 36,
                     tmp___10);
  len = tmp___11 + len;
  tmp___12 = readl((void const volatile *)oct->mmio[0].hw_addr + 48U);
  tmp___13 = sprintf(s + (unsigned long )len, "[%02x] (WIN_WR_MASK_REG): %08x\n",
                     48, tmp___12);
  len = tmp___13 + len;
  tmp___14 = readl((void const volatile *)oct->mmio[0].hw_addr + 832U);
  tmp___15 = sprintf(s + (unsigned long )len, "\n[%x] (INT_ENABLE PORT 0): %08x\n",
                     832, tmp___14);
  len = tmp___15 + len;
  tmp___16 = readl((void const volatile *)oct->mmio[0].hw_addr + 848U);
  tmp___17 = sprintf(s + (unsigned long )len, "\n[%x] (INT_ENABLE PORT 1): %08x\n",
                     848, tmp___16);
  len = tmp___17 + len;
  tmp___18 = readl((void const volatile *)oct->mmio[0].hw_addr + 816U);
  tmp___19 = sprintf(s + (unsigned long )len, "[%x] (INT_SUM): %08x\n", 816, tmp___18);
  len = tmp___19 + len;
  i = 0;
  goto ldv_46926;
  ldv_46925:
  reg = (u32 )((i + 576) * 16);
  tmp___20 = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )reg);
  tmp___21 = sprintf(s + (unsigned long )len, "\n[%x] (PKTS_SENT_%d): %08x\n", reg,
                     i, tmp___20);
  len = tmp___21 + len;
  reg = (u32 )((i + 384) * 16);
  tmp___22 = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )reg);
  tmp___23 = sprintf(s + (unsigned long )len, "[%x] (PKT_CREDITS_%d): %08x\n", reg,
                     i, tmp___22);
  len = tmp___23 + len;
  i = i + 1;
  ldv_46926: ;
  if ((u32 )i < oct->num_oqs) {
    goto ldv_46925;
  } else {
  }
  reg = 4384U;
  tmp___24 = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )reg);
  tmp___25 = sprintf(s + (unsigned long )len, "\n[%x] (PKTS_SENT_INT_LEVEL): %08x\n",
                     reg, tmp___24);
  len = tmp___25 + len;
  reg = 4388U;
  tmp___26 = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )reg);
  tmp___27 = sprintf(s + (unsigned long )len, "[%x] (PKTS_SENT_TIME): %08x\n", reg,
                     tmp___26);
  len = tmp___27 + len;
  i = 0;
  goto ldv_46930;
  ldv_46929:
  reg___0 = (u32 )((i + 704) * 16);
  tmp___28 = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )reg___0);
  tmp___29 = sprintf(s + (unsigned long )len, "\n[%x] (INSTR_DOORBELL_%d): %08x\n",
                     reg___0, i, tmp___28);
  len = tmp___29 + len;
  reg___0 = (u32 )((i + 512) * 16);
  tmp___30 = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )reg___0);
  tmp___31 = sprintf(s + (unsigned long )len, "[%x] (INSTR_COUNT_%d): %08x\n", reg___0,
                     i, tmp___30);
  len = tmp___31 + len;
  i = i + 1;
  ldv_46930: ;
  if (i <= 3) {
    goto ldv_46929;
  } else {
  }
  tmp___32 = readl((void const volatile *)oct->mmio[0].hw_addr + 1024U);
  tmp___33 = sprintf(s + (unsigned long )len, "\n[%x] (DMA_CNT_0): %08x\n", 1024,
                     tmp___32);
  len = tmp___33 + len;
  reg = 992U;
  tmp___34 = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )reg);
  tmp___35 = sprintf(s + (unsigned long )len, "[%x] (DMA_INT_LEV_0): %08x\n", 992,
                     tmp___34);
  len = tmp___35 + len;
  reg = 996U;
  tmp___36 = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )reg);
  tmp___37 = sprintf(s + (unsigned long )len, "[%x] (DMA_TIME_0): %08x\n", 996, tmp___36);
  len = tmp___37 + len;
  tmp___38 = readl((void const volatile *)oct->mmio[0].hw_addr + 1040U);
  tmp___39 = sprintf(s + (unsigned long )len, "\n[%x] (DMA_CNT_1): %08x\n", 1040,
                     tmp___38);
  len = tmp___39 + len;
  reg = 1008U;
  tmp___40 = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )reg);
  tmp___41 = sprintf(s + (unsigned long )len, "[%x] (DMA_INT_LEV_1): %08x\n", 1008,
                     tmp___40);
  len = tmp___41 + len;
  reg = 1008U;
  tmp___42 = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )reg);
  tmp___43 = sprintf(s + (unsigned long )len, "[%x] (DMA_TIME_1): %08x\n", 1012, tmp___42);
  len = tmp___43 + len;
  tmp___44 = sprintf(s + (unsigned long )len, "\n");
  len = tmp___44 + len;
  i = 0;
  goto ldv_46933;
  ldv_46932:
  tmp___45 = lio_pci_readq(oct, ((unsigned long long )oct->pcie_port * 16777216ULL + (unsigned long long )(i * 8)) + 307866477002920ULL);
  reg = (u32 )tmp___45;
  tmp___46 = sprintf(s + (unsigned long )len, "[%llx] (BAR1_INDEX_%02d): %08x\n",
                     ((unsigned long long )oct->pcie_port * 16777216ULL + (unsigned long long )(i * 8)) + 307866477002920ULL,
                     i, reg);
  len = tmp___46 + len;
  i = i + 1;
  ldv_46933: ;
  if (i <= 15) {
    goto ldv_46932;
  } else {
  }
  return (len);
}
}
static int cn6xxx_read_config_reg(char *s , struct octeon_device *oct )
{
  u32 val ;
  int i ;
  int len ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  len = 0;
  tmp = sprintf(s + (unsigned long )len, "\n\t Octeon Config space Registers\n\n");
  len = tmp + len;
  i = 0;
  goto ldv_46943;
  ldv_46942:
  pci_read_config_dword((struct pci_dev const *)oct->pci_dev, i * 4, & val);
  tmp___0 = sprintf(s + (unsigned long )len, "[0x%x] (Config[%d]): 0x%08x\n", i * 4,
                    i, val);
  len = tmp___0 + len;
  i = i + 1;
  ldv_46943: ;
  if (i <= 13) {
    goto ldv_46942;
  } else {
  }
  i = 30;
  goto ldv_46946;
  ldv_46945:
  pci_read_config_dword((struct pci_dev const *)oct->pci_dev, i * 4, & val);
  tmp___1 = sprintf(s + (unsigned long )len, "[0x%x] (Config[%d]): 0x%08x\n", i * 4,
                    i, val);
  len = tmp___1 + len;
  i = i + 1;
  ldv_46946: ;
  if (i <= 34) {
    goto ldv_46945;
  } else {
  }
  return (len);
}
}
static void lio_get_regs(struct net_device *dev , struct ethtool_regs *regs , void *regbuf )
{
  struct lio *lio ;
  void *tmp ;
  int len ;
  struct octeon_device *oct ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  lio = (struct lio *)tmp;
  len = 0;
  oct = lio->oct_dev;
  memset(regbuf, 0, 4096UL);
  regs->version = 1U;
  switch ((int )oct->chip_id) {
  case 145: ;
  case 146:
  tmp___0 = cn6xxx_read_csr_reg((char *)regbuf + (unsigned long )len, oct);
  len = tmp___0 + len;
  tmp___1 = cn6xxx_read_config_reg((char *)regbuf + (unsigned long )len, oct);
  len = tmp___1 + len;
  goto ldv_46958;
  default:
  dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s Unknown chipid: %d\n",
          "lio_get_regs", (int )oct->chip_id);
  }
  ldv_46958: ;
  return;
}
}
static struct ethtool_ops const lio_ethtool_ops =
     {& lio_get_settings, & lio_set_settings, & lio_get_drvinfo, & lio_get_regs_len,
    & lio_get_regs, 0, 0, & lio_get_msglevel, & lio_set_msglevel, & lio_nway_reset,
    & ethtool_op_get_link, & lio_get_eeprom_len, & lio_get_eeprom, 0, & lio_get_intr_coalesce,
    & lio_set_intr_coalesce, & lio_ethtool_get_ringparam, 0, & lio_get_pauseparam,
    0, 0, & lio_get_strings, & lio_set_phys_id, & lio_get_ethtool_stats, 0, 0, 0,
    0, & lio_get_sset_count, 0, 0, 0, 0, 0, 0, 0, 0, & lio_ethtool_get_channels, 0,
    0, 0, 0, & lio_get_ts_info, 0, 0, 0, 0, 0, 0};
void liquidio_set_ethtool_ops(struct net_device *netdev )
{
  {
  netdev->ethtool_ops = & lio_ethtool_ops;
  return;
}
}
void ldv_initialize_ethtool_ops_7(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(92UL);
  lio_ethtool_ops_group1 = (struct ethtool_coalesce *)tmp;
  tmp___0 = ldv_init_zalloc(3008UL);
  lio_ethtool_ops_group2 = (struct net_device *)tmp___0;
  tmp___1 = ldv_init_zalloc(44UL);
  lio_ethtool_ops_group0 = (struct ethtool_cmd *)tmp___1;
  return;
}
}
void ldv_main_exported_7(void)
{
  u32 ldvarg2 ;
  struct ethtool_stats *ldvarg14 ;
  void *tmp ;
  struct ethtool_eeprom *ldvarg4 ;
  void *tmp___0 ;
  struct ethtool_drvinfo *ldvarg15 ;
  void *tmp___1 ;
  struct ethtool_ts_info *ldvarg6 ;
  void *tmp___2 ;
  u32 ldvarg5 ;
  struct ethtool_channels *ldvarg0 ;
  void *tmp___3 ;
  struct ethtool_pauseparam *ldvarg9 ;
  void *tmp___4 ;
  void *ldvarg10 ;
  void *tmp___5 ;
  u64 *ldvarg13 ;
  void *tmp___6 ;
  u8 *ldvarg1 ;
  void *tmp___7 ;
  enum ethtool_phys_id_state ldvarg8 ;
  struct ethtool_ringparam *ldvarg12 ;
  void *tmp___8 ;
  u8 *ldvarg3 ;
  void *tmp___9 ;
  int ldvarg7 ;
  struct ethtool_regs *ldvarg11 ;
  void *tmp___10 ;
  int tmp___11 ;
  {
  tmp = ldv_init_zalloc(8UL);
  ldvarg14 = (struct ethtool_stats *)tmp;
  tmp___0 = ldv_init_zalloc(16UL);
  ldvarg4 = (struct ethtool_eeprom *)tmp___0;
  tmp___1 = ldv_init_zalloc(196UL);
  ldvarg15 = (struct ethtool_drvinfo *)tmp___1;
  tmp___2 = ldv_init_zalloc(44UL);
  ldvarg6 = (struct ethtool_ts_info *)tmp___2;
  tmp___3 = ldv_init_zalloc(36UL);
  ldvarg0 = (struct ethtool_channels *)tmp___3;
  tmp___4 = ldv_init_zalloc(16UL);
  ldvarg9 = (struct ethtool_pauseparam *)tmp___4;
  tmp___5 = ldv_init_zalloc(1UL);
  ldvarg10 = tmp___5;
  tmp___6 = ldv_init_zalloc(8UL);
  ldvarg13 = (u64 *)tmp___6;
  tmp___7 = ldv_init_zalloc(1UL);
  ldvarg1 = (u8 *)tmp___7;
  tmp___8 = ldv_init_zalloc(36UL);
  ldvarg12 = (struct ethtool_ringparam *)tmp___8;
  tmp___9 = ldv_init_zalloc(1UL);
  ldvarg3 = (u8 *)tmp___9;
  tmp___10 = ldv_init_zalloc(12UL);
  ldvarg11 = (struct ethtool_regs *)tmp___10;
  ldv_memset((void *)(& ldvarg2), 0, 4UL);
  ldv_memset((void *)(& ldvarg5), 0, 4UL);
  ldv_memset((void *)(& ldvarg8), 0, 4UL);
  ldv_memset((void *)(& ldvarg7), 0, 4UL);
  tmp___11 = __VERIFIER_nondet_int();
  switch (tmp___11) {
  case 0: ;
  if (ldv_state_variable_7 == 1) {
    lio_get_drvinfo(lio_ethtool_ops_group2, ldvarg15);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  case 1: ;
  if (ldv_state_variable_7 == 1) {
    lio_get_ethtool_stats(lio_ethtool_ops_group2, ldvarg14, ldvarg13);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  case 2: ;
  if (ldv_state_variable_7 == 1) {
    lio_get_intr_coalesce(lio_ethtool_ops_group2, lio_ethtool_ops_group1);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  case 3: ;
  if (ldv_state_variable_7 == 1) {
    lio_ethtool_get_ringparam(lio_ethtool_ops_group2, ldvarg12);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  case 4: ;
  if (ldv_state_variable_7 == 1) {
    lio_get_regs(lio_ethtool_ops_group2, ldvarg11, ldvarg10);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  case 5: ;
  if (ldv_state_variable_7 == 1) {
    lio_get_pauseparam(lio_ethtool_ops_group2, ldvarg9);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  case 6: ;
  if (ldv_state_variable_7 == 1) {
    lio_set_phys_id(lio_ethtool_ops_group2, ldvarg8);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  case 7: ;
  if (ldv_state_variable_7 == 1) {
    lio_get_sset_count(lio_ethtool_ops_group2, ldvarg7);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  case 8: ;
  if (ldv_state_variable_7 == 1) {
    lio_get_settings(lio_ethtool_ops_group2, lio_ethtool_ops_group0);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  case 9: ;
  if (ldv_state_variable_7 == 1) {
    lio_set_intr_coalesce(lio_ethtool_ops_group2, lio_ethtool_ops_group1);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  case 10: ;
  if (ldv_state_variable_7 == 1) {
    lio_get_ts_info(lio_ethtool_ops_group2, ldvarg6);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  case 11: ;
  if (ldv_state_variable_7 == 1) {
    lio_set_msglevel(lio_ethtool_ops_group2, ldvarg5);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  case 12: ;
  if (ldv_state_variable_7 == 1) {
    lio_get_eeprom_len(lio_ethtool_ops_group2);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  case 13: ;
  if (ldv_state_variable_7 == 1) {
    lio_set_settings(lio_ethtool_ops_group2, lio_ethtool_ops_group0);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  case 14: ;
  if (ldv_state_variable_7 == 1) {
    lio_get_eeprom(lio_ethtool_ops_group2, ldvarg4, ldvarg3);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  case 15: ;
  if (ldv_state_variable_7 == 1) {
    lio_get_strings(lio_ethtool_ops_group2, ldvarg2, ldvarg1);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  case 16: ;
  if (ldv_state_variable_7 == 1) {
    lio_nway_reset(lio_ethtool_ops_group2);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  case 17: ;
  if (ldv_state_variable_7 == 1) {
    lio_get_msglevel(lio_ethtool_ops_group2);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  case 18: ;
  if (ldv_state_variable_7 == 1) {
    lio_get_regs_len(lio_ethtool_ops_group2);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  case 19: ;
  if (ldv_state_variable_7 == 1) {
    lio_ethtool_get_channels(lio_ethtool_ops_group2, ldvarg0);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  case 20: ;
  if (ldv_state_variable_7 == 1) {
    ethtool_op_get_link(lio_ethtool_ops_group2);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_46988;
  default:
  ldv_stop();
  }
  ldv_46988: ;
  return;
}
}
bool ldv_queue_work_on_45(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_6(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_46(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_6(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_47(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_6(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_48(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_6(2);
  return;
}
}
bool ldv_queue_delayed_work_on_49(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_6(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
__inline static void atomic_sub(int i , atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; subl %1,%0": "+m" (v->counter): "ir" (i));
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
void ldv_destroy_workqueue_66(struct workqueue_struct *ldv_func_arg1 ) ;
bool ldv_queue_work_on_59(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_61(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_60(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_63(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_62(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_65(struct workqueue_struct *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_sync_64(struct delayed_work *ldv_func_arg1 ) ;
__inline static bool queue_delayed_work___0(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                            unsigned long delay )
{
  bool tmp ;
  {
  tmp = ldv_queue_delayed_work_on_60(8192, wq, dwork, delay);
  return (tmp);
}
}
void activate_work_4(struct work_struct *work , int state ) ;
void call_and_disable_all_4(int state ) ;
void disable_work_4(struct work_struct *work ) ;
void invoke_work_4(void) ;
void call_and_disable_work_4(struct work_struct *work ) ;
extern void *dma_alloc_attrs(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
extern void dma_free_attrs(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
extern void *vmalloc(unsigned long ) ;
extern void vfree(void const * ) ;
int octeon_init_instr_queue(struct octeon_device *oct , u32 iq_no , u32 num_descs ) ;
static void check_db_timeout(struct work_struct *work ) ;
static void __check_db_timeout(struct octeon_device *oct , unsigned long iq_no ) ;
static void (*reqtype_free_fn[32U][6U])(void * ) ;
int octeon_init_instr_queue(struct octeon_device *oct , u32 iq_no , u32 num_descs )
{
  struct octeon_instr_queue *iq ;
  struct octeon_iq_config *conf ;
  u32 q_size ;
  struct cavium_wq *db_wq ;
  void *tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  char const *__lock_name ;
  struct workqueue_struct *tmp___2 ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___2 ;
  unsigned long tmp___3 ;
  {
  conf = (struct octeon_iq_config *)0;
  if ((unsigned int )oct->chip_id == 146U || (unsigned int )oct->chip_id == 145U) {
    conf = & (((struct octeon_cn6xxx *)oct->chip)->conf)->iq;
  } else {
  }
  if ((unsigned long )conf == (unsigned long )((struct octeon_iq_config *)0)) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Unsupported Chip %x\n",
            (int )oct->chip_id);
    return (1);
  } else {
  }
  if (((num_descs - 1U) & num_descs) != 0U) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Number of descriptors for instr queue %d not in power of 2.\n",
            iq_no);
    return (1);
  } else {
  }
  q_size = conf->instr_type * num_descs;
  iq = oct->instr_queue[iq_no];
  tmp = dma_alloc_attrs(& (oct->pci_dev)->dev, (size_t )q_size, & iq->base_addr_dma,
                        208U, (struct dma_attrs *)0);
  iq->base_addr = (u8 *)tmp;
  if ((unsigned long )iq->base_addr == (unsigned long )((u8 *)0U)) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Cannot allocate memory for instr queue %d\n",
            iq_no);
    return (1);
  } else {
  }
  iq->max_count = num_descs;
  tmp___0 = vmalloc((unsigned long )num_descs * 16UL);
  iq->request_list = (struct octeon_request_list *)tmp___0;
  if ((unsigned long )iq->request_list == (unsigned long )((struct octeon_request_list *)0)) {
    dma_free_attrs(& (oct->pci_dev)->dev, (size_t )q_size, (void *)iq->base_addr,
                   iq->base_addr_dma, (struct dma_attrs *)0);
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Alloc failed for IQ[%d] nr free list\n",
            iq_no);
    return (1);
  } else {
  }
  memset((void *)iq->request_list, 0, (unsigned long )num_descs * 16UL);
  descriptor.modname = "liquidio";
  descriptor.function = "octeon_init_instr_queue";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/request_manager.c";
  descriptor.format = "IQ[%d]: base: %p basedma: %llx count: %d\n";
  descriptor.lineno = 123U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "IQ[%d]: base: %p basedma: %llx count: %d\n", iq_no, iq->base_addr,
                      iq->base_addr_dma, iq->max_count);
  } else {
  }
  iq->iq_no = (unsigned char )iq_no;
  iq->fill_threshold = (unsigned int )conf->db_min;
  iq->fill_cnt = 0U;
  iq->host_write_index = 0U;
  iq->octeon_read_index = 0U;
  iq->flush_index = 0U;
  iq->last_db_time = 0ULL;
  iq->do_auto_flush = 1U;
  iq->db_timeout = (unsigned int )conf->db_timeout;
  atomic_set(& iq->instr_pending, 0);
  spinlock_check(& iq->lock);
  __raw_spin_lock_init(& iq->lock.__annonCompField18.rlock, "&(&iq->lock)->rlock",
                       & __key);
  oct->io_qmask.iq = oct->io_qmask.iq | (u32 )(1 << (int )iq_no);
  oct->io_qmask.iq64B = oct->io_qmask.iq64B | (u32 )((conf->instr_type == 64U) << (int )iq_no);
  iq->iqcmd_64B = conf->instr_type == 64U;
  (*(oct->fn_list.setup_iq_regs))(oct, iq_no);
  __lock_name = "\"%s\"(\"check_iq_db\")";
  tmp___2 = __alloc_workqueue_key("%s", 8U, 1, & __key___0, __lock_name, (char *)"check_iq_db");
  oct->check_db_wq[iq_no].wq = tmp___2;
  if ((unsigned long )oct->check_db_wq[iq_no].wq == (unsigned long )((struct workqueue_struct *)0)) {
    dma_free_attrs(& (oct->pci_dev)->dev, (size_t )q_size, (void *)iq->base_addr,
                   iq->base_addr_dma, (struct dma_attrs *)0);
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "check db wq create failed for iq %d\n",
            iq_no);
    return (1);
  } else {
  }
  db_wq = (struct cavium_wq *)(& oct->check_db_wq) + (unsigned long )iq_no;
  __init_work(& db_wq->wk.work.work, 0);
  __constr_expr_0.counter = 137438953408L;
  db_wq->wk.work.work.data = __constr_expr_0;
  lockdep_init_map(& db_wq->wk.work.work.lockdep_map, "(&(&db_wq->wk.work)->work)",
                   & __key___1, 0);
  INIT_LIST_HEAD(& db_wq->wk.work.work.entry);
  db_wq->wk.work.work.func = & check_db_timeout;
  init_timer_key(& db_wq->wk.work.timer, 2097152U, "(&(&db_wq->wk.work)->timer)",
                 & __key___2);
  db_wq->wk.work.timer.function = & delayed_work_timer_fn;
  db_wq->wk.work.timer.data = (unsigned long )(& db_wq->wk.work);
  db_wq->wk.ctxptr = (void *)oct;
  db_wq->wk.ctxul = (size_t )iq_no;
  tmp___3 = msecs_to_jiffies(1U);
  queue_delayed_work___0(db_wq->wq, & db_wq->wk.work, tmp___3);
  return (0);
}
}
int octeon_delete_instr_queue(struct octeon_device *oct , u32 iq_no )
{
  u64 desc_size ;
  u64 q_size ;
  struct octeon_instr_queue *iq ;
  {
  desc_size = 0ULL;
  iq = oct->instr_queue[iq_no];
  ldv_cancel_delayed_work_sync_64(& oct->check_db_wq[iq_no].wk.work);
  ldv_flush_workqueue_65(oct->check_db_wq[iq_no].wq);
  ldv_destroy_workqueue_66(oct->check_db_wq[iq_no].wq);
  if ((unsigned int )oct->chip_id == 146U || (unsigned int )oct->chip_id == 145U) {
    desc_size = (u64 )(((struct octeon_cn6xxx *)oct->chip)->conf)->iq.instr_type;
  } else {
  }
  vfree((void const *)iq->request_list);
  if ((unsigned long )iq->base_addr != (unsigned long )((u8 *)0U)) {
    q_size = (u64 )iq->max_count * desc_size;
    dma_free_attrs(& (oct->pci_dev)->dev, (size_t )((unsigned int )q_size), (void *)iq->base_addr,
                   iq->base_addr_dma, (struct dma_attrs *)0);
    return (0);
  } else {
  }
  return (1);
}
}
int octeon_setup_iq(struct octeon_device *oct , u32 iq_no , u32 num_descs , void *app_ctx )
{
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned long )oct->instr_queue[iq_no] != (unsigned long )((struct octeon_instr_queue *)0)) {
    descriptor.modname = "liquidio";
    descriptor.function = "octeon_setup_iq";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/request_manager.c";
    descriptor.format = "IQ is in use. Cannot create the IQ: %d again\n";
    descriptor.lineno = 197U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                        "IQ is in use. Cannot create the IQ: %d again\n", iq_no);
    } else {
    }
    (oct->instr_queue[iq_no])->app_ctx = app_ctx;
    return (0);
  } else {
  }
  tmp___0 = vmalloc(248UL);
  oct->instr_queue[iq_no] = (struct octeon_instr_queue *)tmp___0;
  if ((unsigned long )oct->instr_queue[iq_no] == (unsigned long )((struct octeon_instr_queue *)0)) {
    return (1);
  } else {
  }
  memset((void *)oct->instr_queue[iq_no], 0, 248UL);
  (oct->instr_queue[iq_no])->app_ctx = app_ctx;
  tmp___1 = octeon_init_instr_queue(oct, iq_no, num_descs);
  if (tmp___1 != 0) {
    vfree((void const *)oct->instr_queue[iq_no]);
    oct->instr_queue[iq_no] = (struct octeon_instr_queue *)0;
    return (1);
  } else {
  }
  oct->num_iqs = oct->num_iqs + 1U;
  (*(oct->fn_list.enable_io_queues))(oct);
  return (0);
}
}
int lio_wait_for_instr_fetch(struct octeon_device *oct )
{
  int i ;
  int retry ;
  int pending ;
  int instr_cnt ;
  int tmp ;
  {
  retry = 1000;
  instr_cnt = 0;
  ldv_46877:
  instr_cnt = 0;
  i = 0;
  goto ldv_46874;
  ldv_46873: ;
  if ((((unsigned long )oct->io_qmask.iq >> i) & 1UL) == 0UL) {
    goto ldv_46872;
  } else {
  }
  pending = atomic_read((atomic_t const *)(& (oct->instr_queue[i])->instr_pending));
  if (pending != 0) {
    __check_db_timeout(oct, (unsigned long )i);
  } else {
  }
  instr_cnt = instr_cnt + pending;
  ldv_46872:
  i = i + 1;
  ldv_46874: ;
  if (i <= 31) {
    goto ldv_46873;
  } else {
  }
  if (instr_cnt == 0) {
    goto ldv_46876;
  } else {
  }
  schedule_timeout_uninterruptible(1L);
  tmp = retry;
  retry = retry - 1;
  if (tmp != 0 && instr_cnt != 0) {
    goto ldv_46877;
  } else {
  }
  ldv_46876: ;
  return (instr_cnt);
}
}
__inline static void ring_doorbell(struct octeon_device *oct , struct octeon_instr_queue *iq )
{
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& oct->status));
  if (tmp == 11) {
    writel(iq->fill_cnt, (void volatile *)iq->doorbell_reg);
    __asm__ volatile ("": : : "memory");
    iq->fill_cnt = 0U;
    iq->last_db_time = (u64 )jiffies;
    return;
  } else {
  }
  return;
}
}
__inline static void __copy_cmd_into_iq(struct octeon_instr_queue *iq , u8 *cmd )
{
  u8 *iqptr ;
  u8 cmdsize ;
  {
  cmdsize = (unsigned int )*((unsigned char *)iq + 72UL) != 0U ? 64U : 32U;
  iqptr = iq->base_addr + (unsigned long )((u32 )cmdsize * iq->host_write_index);
  memcpy((void *)iqptr, (void const *)cmd, (size_t )cmdsize);
  return;
}
}
__inline static struct iq_post_status __post_command2(struct octeon_device *octeon_dev ,
                                                      struct octeon_instr_queue *iq ,
                                                      u32 force_db , u8 *cmd )
{
  struct iq_post_status st ;
  int tmp ;
  int tmp___0 ;
  {
  st.status = 0;
  tmp = atomic_read((atomic_t const *)(& iq->instr_pending));
  if (tmp >= (int )(iq->max_count - 1U)) {
    st.status = -1;
    st.index = -1;
    return (st);
  } else {
  }
  tmp___0 = atomic_read((atomic_t const *)(& iq->instr_pending));
  if (tmp___0 >= (int )(iq->max_count - 2U)) {
    st.status = 1;
  } else {
  }
  __copy_cmd_into_iq(iq, cmd);
  st.index = (int )iq->host_write_index;
  iq->host_write_index = iq->host_write_index + 1U;
  if (iq->host_write_index == iq->max_count) {
    iq->host_write_index = 0U;
  } else {
  }
  iq->fill_cnt = iq->fill_cnt + 1U;
  __asm__ volatile ("sfence": : : "memory");
  atomic_inc(& iq->instr_pending);
  return (st);
}
}
int octeon_register_reqtype_free_fn(struct octeon_device *oct , int reqtype , void (*fn)(void * ) )
{
  {
  if (reqtype > 5) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s: Invalid reqtype: %d\n",
            "octeon_register_reqtype_free_fn", reqtype);
    return (-22);
  } else {
  }
  reqtype_free_fn[oct->octeon_id][reqtype] = fn;
  return (0);
}
}
__inline static void __add_to_request_list(struct octeon_instr_queue *iq , int idx ,
                                           void *buf , int reqtype )
{
  {
  (iq->request_list + (unsigned long )idx)->buf = buf;
  (iq->request_list + (unsigned long )idx)->reqtype = (u32 )reqtype;
  return;
}
}
int lio_process_iq_request_list(struct octeon_device *oct , struct octeon_instr_queue *iq )
{
  int reqtype ;
  void *buf ;
  u32 old ;
  u32 inst_count ;
  unsigned int pkts_compl ;
  unsigned int bytes_compl ;
  struct octeon_soft_command *sc ;
  struct octeon_instr_irh *irh ;
  {
  old = iq->flush_index;
  inst_count = 0U;
  pkts_compl = 0U;
  bytes_compl = 0U;
  goto ldv_46937;
  ldv_46936:
  reqtype = (int )(iq->request_list + (unsigned long )old)->reqtype;
  buf = (iq->request_list + (unsigned long )old)->buf;
  if (reqtype == 0) {
    goto skip_this;
  } else {
  }
  octeon_update_tx_completion_counters(buf, reqtype, & pkts_compl, & bytes_compl);
  switch (reqtype) {
  case 1: ;
  case 2: ;
  case 4:
  (*(reqtype_free_fn[oct->octeon_id][reqtype]))(buf);
  goto ldv_46931;
  case 3: ;
  case 5:
  sc = (struct octeon_soft_command *)buf;
  irh = (struct octeon_instr_irh *)(& sc->cmd.irh);
  if ((unsigned int )*((unsigned char *)irh + 7UL) != 0U) {
    spin_lock_bh(& oct->response_list[3].lock);
    atomic_inc(& oct->response_list[3].pending_req_count);
    list_add_tail(& sc->node, & oct->response_list[3].head);
    spin_unlock_bh(& oct->response_list[3].lock);
  } else
  if ((unsigned long )sc->callback != (unsigned long )((void (*)(struct octeon_device * ,
                                                                 u32 , void * ))0)) {
    (*(sc->callback))(oct, 0U, sc->callback_arg);
  } else {
  }
  goto ldv_46931;
  default:
  dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s Unknown reqtype: %d buf: %p at idx %d\n",
          "lio_process_iq_request_list", reqtype, buf, old);
  }
  ldv_46931:
  (iq->request_list + (unsigned long )old)->buf = (void *)0;
  (iq->request_list + (unsigned long )old)->reqtype = 0U;
  skip_this:
  inst_count = inst_count + 1U;
  old = old + 1U;
  if (old == iq->max_count) {
    old = 0U;
  } else {
  }
  ldv_46937: ;
  if (iq->octeon_read_index != old) {
    goto ldv_46936;
  } else {
  }
  if (bytes_compl != 0U) {
    octeon_report_tx_completion_to_bql(iq->app_ctx, pkts_compl, bytes_compl);
  } else {
  }
  iq->flush_index = old;
  return ((int )inst_count);
}
}
__inline static void update_iq_indices(struct octeon_device *oct , struct octeon_instr_queue *iq )
{
  u32 inst_processed ;
  int tmp ;
  {
  inst_processed = 0U;
  iq->octeon_read_index = (*(oct->fn_list.update_iq_read_idx))(oct, iq);
  if (iq->flush_index != iq->octeon_read_index) {
    tmp = lio_process_iq_request_list(oct, iq);
    inst_processed = (u32 )tmp;
  } else {
  }
  if (inst_processed != 0U) {
    atomic_sub((int )inst_processed, & iq->instr_pending);
    iq->stats.instr_processed = iq->stats.instr_processed + (u64 )inst_processed;
  } else {
  }
  return;
}
}
static void octeon_flush_iq(struct octeon_device *oct , struct octeon_instr_queue *iq ,
                            u32 pending_thresh )
{
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& iq->instr_pending));
  if (tmp >= (int )pending_thresh) {
    spin_lock_bh(& iq->lock);
    update_iq_indices(oct, iq);
    spin_unlock_bh(& iq->lock);
  } else {
  }
  return;
}
}
static void __check_db_timeout(struct octeon_device *oct , unsigned long iq_no )
{
  struct octeon_instr_queue *iq ;
  u64 next_time ;
  {
  if ((unsigned long )oct == (unsigned long )((struct octeon_device *)0)) {
    return;
  } else {
  }
  iq = oct->instr_queue[iq_no];
  if ((unsigned long )iq == (unsigned long )((struct octeon_instr_queue *)0)) {
    return;
  } else {
  }
  next_time = iq->last_db_time + (u64 )iq->db_timeout;
  if ((long )((unsigned long )next_time - (unsigned long )jiffies) >= 0L) {
    return;
  } else {
  }
  iq->last_db_time = (u64 )jiffies;
  spin_lock_bh(& iq->lock);
  if (iq->fill_cnt != 0U) {
    ring_doorbell(oct, iq);
  } else {
  }
  spin_unlock_bh(& iq->lock);
  if ((unsigned int )*((unsigned char *)iq + 74UL) != 0U) {
    octeon_flush_iq(oct, iq, 1U);
  } else {
  }
  return;
}
}
static void check_db_timeout(struct work_struct *work )
{
  struct cavium_wk *wk ;
  struct octeon_device *oct ;
  unsigned long iq_no ;
  struct cavium_wq *db_wq ;
  unsigned long tmp ;
  {
  wk = (struct cavium_wk *)work;
  oct = (struct octeon_device *)wk->ctxptr;
  iq_no = wk->ctxul;
  db_wq = (struct cavium_wq *)(& oct->check_db_wq) + iq_no;
  __check_db_timeout(oct, iq_no);
  tmp = msecs_to_jiffies(1U);
  queue_delayed_work___0(db_wq->wq, & db_wq->wk.work, tmp);
  return;
}
}
int octeon_send_command(struct octeon_device *oct , u32 iq_no , u32 force_db , void *cmd ,
                        void *buf , u32 datasize , u32 reqtype )
{
  struct iq_post_status st ;
  struct octeon_instr_queue *iq ;
  {
  iq = oct->instr_queue[iq_no];
  spin_lock_bh(& iq->lock);
  st = __post_command2(oct, iq, force_db, (u8 *)cmd);
  if (st.status != -1) {
    octeon_report_sent_bytes_to_bql(buf, (int )reqtype);
    __add_to_request_list(iq, st.index, buf, (int )reqtype);
    (oct->instr_queue[iq_no])->stats.bytes_sent = (oct->instr_queue[iq_no])->stats.bytes_sent + (u64 )datasize;
    (oct->instr_queue[iq_no])->stats.instr_posted = (oct->instr_queue[iq_no])->stats.instr_posted + 1ULL;
    if (iq->fill_cnt >= iq->fill_threshold || force_db != 0U) {
      ring_doorbell(oct, iq);
    } else {
    }
  } else {
    (oct->instr_queue[iq_no])->stats.instr_dropped = (oct->instr_queue[iq_no])->stats.instr_dropped + 1ULL;
  }
  spin_unlock_bh(& iq->lock);
  if ((unsigned int )*((unsigned char *)iq + 74UL) != 0U) {
    octeon_flush_iq(oct, iq, 2U);
  } else {
  }
  return (st.status);
}
}
void octeon_prepare_soft_command(struct octeon_device *oct , struct octeon_soft_command *sc ,
                                 u8 opcode , u8 subcode , u32 irh_ossp , u64 ossp0 ,
                                 u64 ossp1 )
{
  struct octeon_config *oct_cfg ;
  struct octeon_instr_ih *ih ;
  struct octeon_instr_irh *irh ;
  struct octeon_instr_rdp *rdp ;
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect((unsigned int )opcode > 15U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/request_manager.c"),
                         "i" (564), "i" (12UL));
    ldv_46992: ;
    goto ldv_46992;
  } else {
  }
  tmp___0 = ldv__builtin_expect((int )((signed char )subcode) < 0, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/request_manager.c"),
                         "i" (565), "i" (12UL));
    ldv_46993: ;
    goto ldv_46993;
  } else {
  }
  oct_cfg = octeon_get_conf(oct);
  ih = (struct octeon_instr_ih *)(& sc->cmd.ih);
  ih->tagtype = 1U;
  ih->tag = 286331152U;
  ih->raw = 1U;
  ih->grp = oct_cfg->misc.ctrlq_grp;
  if (sc->datasize != 0U) {
    ih->dlengsz = (unsigned short )sc->datasize;
    ih->rs = 1U;
  } else {
  }
  irh = (struct octeon_instr_irh *)(& sc->cmd.irh);
  irh->opcode = opcode;
  irh->subcode = subcode;
  irh->ossp = irh_ossp;
  sc->cmd.ossp[0] = ossp0;
  sc->cmd.ossp[1] = ossp1;
  if (sc->rdatasize != 0U) {
    rdp = (struct octeon_instr_rdp *)(& sc->cmd.rdp);
    rdp->pcie_port = (unsigned char )oct->pcie_port;
    rdp->rlen = (unsigned short )sc->rdatasize;
    irh->rflag = 1U;
    irh->len = 4U;
    ih->fsz = 40U;
  } else {
    irh->rflag = 0U;
    irh->len = 2U;
    ih->fsz = 24U;
  }
  goto ldv_46995;
  ldv_46994:
  sc->iq_no = sc->iq_no + 1U;
  ldv_46995: ;
  if ((oct->io_qmask.iq & (u32 )(1 << (int )sc->iq_no)) == 0U) {
    goto ldv_46994;
  } else {
  }
  return;
}
}
int octeon_send_soft_command(struct octeon_device *oct , struct octeon_soft_command *sc )
{
  struct octeon_instr_ih *ih ;
  struct octeon_instr_irh *irh ;
  struct octeon_instr_rdp *rdp ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  ih = (struct octeon_instr_ih *)(& sc->cmd.ih);
  if ((unsigned int )*((unsigned short *)ih + 3UL) != 0U) {
    tmp = ldv__builtin_expect(sc->dmadptr == 0ULL, 0L);
    if (tmp != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/request_manager.c"),
                           "i" (616), "i" (12UL));
      ldv_47004: ;
      goto ldv_47004;
    } else {
    }
    sc->cmd.dptr = sc->dmadptr;
  } else {
  }
  irh = (struct octeon_instr_irh *)(& sc->cmd.irh);
  if ((unsigned int )*((unsigned char *)irh + 7UL) != 0U) {
    tmp___0 = ldv__builtin_expect(sc->dmarptr == 0ULL, 0L);
    if (tmp___0 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/request_manager.c"),
                           "i" (622), "i" (12UL));
      ldv_47005: ;
      goto ldv_47005;
    } else {
    }
    tmp___1 = ldv__builtin_expect((unsigned long )sc->status_word == (unsigned long )((u64 *)0ULL),
                               0L);
    if (tmp___1 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/request_manager.c"),
                           "i" (623), "i" (12UL));
      ldv_47006: ;
      goto ldv_47006;
    } else {
    }
    *(sc->status_word) = 0xffffffffffffffffULL;
    rdp = (struct octeon_instr_rdp *)(& sc->cmd.rdp);
    sc->cmd.rptr = sc->dmarptr;
  } else {
  }
  if (sc->wait_time != 0UL) {
    sc->timeout = sc->wait_time + (unsigned long )jiffies;
  } else {
  }
  tmp___2 = octeon_send_command(oct, sc->iq_no, 1U, (void *)(& sc->cmd), (void *)sc,
                                (unsigned int )ih->dlengsz, 5U);
  return (tmp___2);
}
}
int octeon_setup_sc_buffer_pool(struct octeon_device *oct )
{
  int i ;
  u64 dma_addr ;
  struct octeon_soft_command *sc ;
  struct lock_class_key __key ;
  void *tmp ;
  {
  INIT_LIST_HEAD(& oct->sc_buf_pool.head);
  spinlock_check(& oct->sc_buf_pool.lock);
  __raw_spin_lock_init(& oct->sc_buf_pool.lock.__annonCompField18.rlock, "&(&oct->sc_buf_pool.lock)->rlock",
                       & __key);
  atomic_set(& oct->sc_buf_pool.alloc_buf_count, 0);
  i = 0;
  goto ldv_47015;
  ldv_47014:
  tmp = dma_alloc_attrs(& (oct->pci_dev)->dev, 1024UL, & dma_addr, 208U, (struct dma_attrs *)0);
  sc = (struct octeon_soft_command *)tmp;
  if ((unsigned long )sc == (unsigned long )((struct octeon_soft_command *)0)) {
    return (1);
  } else {
  }
  sc->dma_addr = dma_addr;
  sc->size = 1024U;
  list_add_tail(& sc->node, & oct->sc_buf_pool.head);
  i = i + 1;
  ldv_47015: ;
  if (i <= 15) {
    goto ldv_47014;
  } else {
  }
  return (0);
}
}
int octeon_free_sc_buffer_pool(struct octeon_device *oct )
{
  struct list_head *tmp ;
  struct list_head *tmp2 ;
  struct octeon_soft_command *sc ;
  {
  spin_lock(& oct->sc_buf_pool.lock);
  tmp = oct->sc_buf_pool.head.next;
  tmp2 = tmp->next;
  goto ldv_47024;
  ldv_47023:
  list_del(tmp);
  sc = (struct octeon_soft_command *)tmp;
  dma_free_attrs(& (oct->pci_dev)->dev, (size_t )sc->size, (void *)sc, sc->dma_addr,
                 (struct dma_attrs *)0);
  tmp = tmp2;
  tmp2 = tmp->next;
  ldv_47024: ;
  if ((unsigned long )(& oct->sc_buf_pool.head) != (unsigned long )tmp) {
    goto ldv_47023;
  } else {
  }
  INIT_LIST_HEAD(& oct->sc_buf_pool.head);
  spin_unlock(& oct->sc_buf_pool.lock);
  return (0);
}
}
struct octeon_soft_command *octeon_alloc_soft_command(struct octeon_device *oct ,
                                                      u32 datasize , u32 rdatasize ,
                                                      u32 ctxsize )
{
  u64 dma_addr ;
  u32 size ;
  u32 offset ;
  struct octeon_soft_command *sc ;
  struct list_head *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  offset = 208U;
  sc = (struct octeon_soft_command *)0;
  tmp___0 = ldv__builtin_expect(((offset + datasize) + rdatasize) + ctxsize > 1024U,
                             0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/request_manager.c"),
                         "i" (699), "i" (12UL));
    ldv_47037: ;
    goto ldv_47037;
  } else {
  }
  spin_lock(& oct->sc_buf_pool.lock);
  tmp___1 = list_empty((struct list_head const *)(& oct->sc_buf_pool.head));
  if (tmp___1 != 0) {
    spin_unlock(& oct->sc_buf_pool.lock);
    return ((struct octeon_soft_command *)0);
  } else {
  }
  tmp = oct->sc_buf_pool.head.next;
  goto ldv_47040;
  ldv_47039: ;
  goto ldv_47038;
  tmp = tmp->next;
  ldv_47040: ;
  if ((unsigned long )(& oct->sc_buf_pool.head) != (unsigned long )tmp) {
    goto ldv_47039;
  } else {
  }
  ldv_47038:
  list_del(tmp);
  atomic_inc(& oct->sc_buf_pool.alloc_buf_count);
  spin_unlock(& oct->sc_buf_pool.lock);
  sc = (struct octeon_soft_command *)tmp;
  dma_addr = sc->dma_addr;
  size = sc->size;
  memset((void *)sc, 0, (size_t )sc->size);
  sc->dma_addr = dma_addr;
  sc->size = size;
  if (ctxsize != 0U) {
    sc->ctxptr = (void *)sc + (unsigned long )offset;
    sc->ctxsize = ctxsize;
  } else {
  }
  offset = ((offset + ctxsize) + 127U) & 4294967168U;
  if (datasize != 0U) {
    sc->virtdptr = (void *)sc + (unsigned long )offset;
    sc->dmadptr = (u64 )offset + dma_addr;
    sc->datasize = datasize;
  } else {
  }
  offset = ((offset + datasize) + 127U) & 4294967168U;
  if (rdatasize != 0U) {
    tmp___2 = ldv__builtin_expect(rdatasize <= 15U, 0L);
    if (tmp___2 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/request_manager.c"),
                           "i" (745), "i" (12UL));
      ldv_47041: ;
      goto ldv_47041;
    } else {
    }
    sc->virtrptr = (void *)sc + (unsigned long )offset;
    sc->dmarptr = (u64 )offset + dma_addr;
    sc->rdatasize = rdatasize;
    sc->status_word = (u64 *)sc->virtrptr + ((unsigned long )rdatasize + 0xfffffffffffffff8UL);
  } else {
  }
  return (sc);
}
}
void octeon_free_soft_command(struct octeon_device *oct , struct octeon_soft_command *sc )
{
  {
  spin_lock(& oct->sc_buf_pool.lock);
  list_add_tail(& sc->node, & oct->sc_buf_pool.head);
  atomic_dec(& oct->sc_buf_pool.alloc_buf_count);
  spin_unlock(& oct->sc_buf_pool.lock);
  return;
}
}
void activate_work_4(struct work_struct *work , int state )
{
  {
  if (ldv_work_4_0 == 0) {
    ldv_work_struct_4_0 = work;
    ldv_work_4_0 = state;
    return;
  } else {
  }
  if (ldv_work_4_1 == 0) {
    ldv_work_struct_4_1 = work;
    ldv_work_4_1 = state;
    return;
  } else {
  }
  if (ldv_work_4_2 == 0) {
    ldv_work_struct_4_2 = work;
    ldv_work_4_2 = state;
    return;
  } else {
  }
  if (ldv_work_4_3 == 0) {
    ldv_work_struct_4_3 = work;
    ldv_work_4_3 = state;
    return;
  } else {
  }
  return;
}
}
void call_and_disable_all_4(int state )
{
  {
  if (ldv_work_4_0 == state) {
    call_and_disable_work_4(ldv_work_struct_4_0);
  } else {
  }
  if (ldv_work_4_1 == state) {
    call_and_disable_work_4(ldv_work_struct_4_1);
  } else {
  }
  if (ldv_work_4_2 == state) {
    call_and_disable_work_4(ldv_work_struct_4_2);
  } else {
  }
  if (ldv_work_4_3 == state) {
    call_and_disable_work_4(ldv_work_struct_4_3);
  } else {
  }
  return;
}
}
void disable_work_4(struct work_struct *work )
{
  {
  if ((ldv_work_4_0 == 3 || ldv_work_4_0 == 2) && (unsigned long )ldv_work_struct_4_0 == (unsigned long )work) {
    ldv_work_4_0 = 1;
  } else {
  }
  if ((ldv_work_4_1 == 3 || ldv_work_4_1 == 2) && (unsigned long )ldv_work_struct_4_1 == (unsigned long )work) {
    ldv_work_4_1 = 1;
  } else {
  }
  if ((ldv_work_4_2 == 3 || ldv_work_4_2 == 2) && (unsigned long )ldv_work_struct_4_2 == (unsigned long )work) {
    ldv_work_4_2 = 1;
  } else {
  }
  if ((ldv_work_4_3 == 3 || ldv_work_4_3 == 2) && (unsigned long )ldv_work_struct_4_3 == (unsigned long )work) {
    ldv_work_4_3 = 1;
  } else {
  }
  return;
}
}
void work_init_4(void)
{
  {
  ldv_work_4_0 = 0;
  ldv_work_4_1 = 0;
  ldv_work_4_2 = 0;
  ldv_work_4_3 = 0;
  return;
}
}
void invoke_work_4(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_4_0 == 2 || ldv_work_4_0 == 3) {
    ldv_work_4_0 = 4;
    check_db_timeout(ldv_work_struct_4_0);
    ldv_work_4_0 = 1;
  } else {
  }
  goto ldv_47065;
  case 1: ;
  if (ldv_work_4_1 == 2 || ldv_work_4_1 == 3) {
    ldv_work_4_1 = 4;
    check_db_timeout(ldv_work_struct_4_0);
    ldv_work_4_1 = 1;
  } else {
  }
  goto ldv_47065;
  case 2: ;
  if (ldv_work_4_2 == 2 || ldv_work_4_2 == 3) {
    ldv_work_4_2 = 4;
    check_db_timeout(ldv_work_struct_4_0);
    ldv_work_4_2 = 1;
  } else {
  }
  goto ldv_47065;
  case 3: ;
  if (ldv_work_4_3 == 2 || ldv_work_4_3 == 3) {
    ldv_work_4_3 = 4;
    check_db_timeout(ldv_work_struct_4_0);
    ldv_work_4_3 = 1;
  } else {
  }
  goto ldv_47065;
  default:
  ldv_stop();
  }
  ldv_47065: ;
  return;
}
}
void call_and_disable_work_4(struct work_struct *work )
{
  {
  if ((ldv_work_4_0 == 2 || ldv_work_4_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_0) {
    check_db_timeout(work);
    ldv_work_4_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_1 == 2 || ldv_work_4_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_1) {
    check_db_timeout(work);
    ldv_work_4_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_2 == 2 || ldv_work_4_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_2) {
    check_db_timeout(work);
    ldv_work_4_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_3 == 2 || ldv_work_4_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_3) {
    check_db_timeout(work);
    ldv_work_4_3 = 1;
    return;
  } else {
  }
  return;
}
}
bool ldv_queue_work_on_59(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_6(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_60(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_6(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_61(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_6(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_62(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_6(2);
  return;
}
}
bool ldv_queue_delayed_work_on_63(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_6(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_sync_64(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_6(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_65(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_6(2);
  return;
}
}
void ldv_destroy_workqueue_66(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_6(2);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
void ldv_destroy_workqueue_86(struct workqueue_struct *ldv_func_arg1 ) ;
bool ldv_queue_work_on_79(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_81(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_80(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_83(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_82(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_85(struct workqueue_struct *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_sync_84(struct delayed_work *ldv_func_arg1 ) ;
__inline static bool queue_delayed_work___1(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                            unsigned long delay )
{
  bool tmp ;
  {
  tmp = ldv_queue_delayed_work_on_80(8192, wq, dwork, delay);
  return (tmp);
}
}
void activate_work_5(struct work_struct *work , int state ) ;
void call_and_disable_all_5(int state ) ;
void invoke_work_5(void) ;
void disable_work_5(struct work_struct *work ) ;
void call_and_disable_work_5(struct work_struct *work ) ;
extern void debug_dma_sync_single_for_cpu(struct device * , dma_addr_t , size_t ,
                                          int ) ;
__inline static void dma_sync_single_for_cpu(struct device *dev , dma_addr_t addr ,
                                             size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (108), "i" (12UL));
    ldv_26596: ;
    goto ldv_26596;
  } else {
  }
  if ((unsigned long )ops->sync_single_for_cpu != (unsigned long )((void (*)(struct device * ,
                                                                             dma_addr_t ,
                                                                             size_t ,
                                                                             enum dma_data_direction ))0)) {
    (*(ops->sync_single_for_cpu))(dev, addr, size, dir);
  } else {
  }
  debug_dma_sync_single_for_cpu(dev, addr, size, (int )dir);
  return;
}
}
__inline static void octeon_swap_8B_data___1(u64 *data , u32 blocks )
{
  {
  goto ldv_46175;
  ldv_46174:
  __swab64s(data);
  blocks = blocks - 1U;
  data = data + 1;
  ldv_46175: ;
  if (blocks != 0U) {
    goto ldv_46174;
  } else {
  }
  return;
}
}
static void oct_poll_req_completion(struct work_struct *work ) ;
int octeon_setup_response_list(struct octeon_device *oct )
{
  int i ;
  int ret ;
  struct cavium_wq *cwq ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  char const *__lock_name ;
  struct workqueue_struct *tmp ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___2 ;
  unsigned long tmp___0 ;
  {
  ret = 0;
  i = 0;
  goto ldv_46674;
  ldv_46673:
  INIT_LIST_HEAD(& oct->response_list[i].head);
  spinlock_check(& oct->response_list[i].lock);
  __raw_spin_lock_init(& oct->response_list[i].lock.__annonCompField18.rlock, "&(&oct->response_list[i].lock)->rlock",
                       & __key);
  atomic_set(& oct->response_list[i].pending_req_count, 0);
  i = i + 1;
  ldv_46674: ;
  if (i <= 3) {
    goto ldv_46673;
  } else {
  }
  __lock_name = "\"%s\"(\"dma-comp\")";
  tmp = __alloc_workqueue_key("%s", 8U, 1, & __key___0, __lock_name, (char *)"dma-comp");
  oct->dma_comp_wq.wq = tmp;
  if ((unsigned long )oct->dma_comp_wq.wq == (unsigned long )((struct workqueue_struct *)0)) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "failed to create wq thread\n");
    return (-12);
  } else {
  }
  cwq = & oct->dma_comp_wq;
  __init_work(& cwq->wk.work.work, 0);
  __constr_expr_0.counter = 137438953408L;
  cwq->wk.work.work.data = __constr_expr_0;
  lockdep_init_map(& cwq->wk.work.work.lockdep_map, "(&(&cwq->wk.work)->work)", & __key___1,
                   0);
  INIT_LIST_HEAD(& cwq->wk.work.work.entry);
  cwq->wk.work.work.func = & oct_poll_req_completion;
  init_timer_key(& cwq->wk.work.timer, 2097152U, "(&(&cwq->wk.work)->timer)", & __key___2);
  cwq->wk.work.timer.function = & delayed_work_timer_fn;
  cwq->wk.work.timer.data = (unsigned long )(& cwq->wk.work);
  cwq->wk.ctxptr = (void *)oct;
  tmp___0 = msecs_to_jiffies(100U);
  queue_delayed_work___1(cwq->wq, & cwq->wk.work, tmp___0);
  return (ret);
}
}
void octeon_delete_response_list(struct octeon_device *oct )
{
  {
  ldv_cancel_delayed_work_sync_84(& oct->dma_comp_wq.wk.work);
  ldv_flush_workqueue_85(oct->dma_comp_wq.wq);
  ldv_destroy_workqueue_86(oct->dma_comp_wq.wq);
  return;
}
}
int lio_process_ordered_list(struct octeon_device *octeon_dev , u32 force_quit )
{
  struct octeon_response_list *ordered_sc_list ;
  struct octeon_soft_command *sc ;
  int request_complete ;
  int resp_to_process ;
  u32 status ;
  u64 status64 ;
  struct octeon_instr_rdp *rdp ;
  {
  request_complete = 0;
  resp_to_process = 4096;
  ordered_sc_list = (struct octeon_response_list *)(& octeon_dev->response_list) + 3UL;
  ldv_46703:
  spin_lock_bh(& ordered_sc_list->lock);
  if ((unsigned long )ordered_sc_list->head.next == (unsigned long )(& ordered_sc_list->head)) {
    spin_unlock_bh(& ordered_sc_list->lock);
    return (1);
  } else {
  }
  sc = (struct octeon_soft_command *)ordered_sc_list->head.next;
  rdp = (struct octeon_instr_rdp *)(& sc->cmd.rdp);
  status = 1U;
  dma_sync_single_for_cpu(& (octeon_dev->pci_dev)->dev, sc->cmd.rptr, (size_t )rdp->rlen,
                          2);
  status64 = *(sc->status_word);
  if (status64 != 0xffffffffffffffffULL) {
    if ((status64 & 255ULL) != 255ULL) {
      octeon_swap_8B_data___1(& status64, 1U);
      if ((status64 & 255ULL) != 255ULL) {
        status = (unsigned int )status64;
      } else {
      }
    } else {
    }
  } else
  if (force_quit != 0U || (sc->timeout != 0UL && (long )(sc->timeout - (unsigned long )jiffies) < 0L)) {
    status = 3U;
  } else {
  }
  if (status != 1U) {
    list_del(& sc->node);
    atomic_dec(& octeon_dev->response_list[3].pending_req_count);
    spin_unlock_bh(& ordered_sc_list->lock);
    if ((unsigned long )sc->callback != (unsigned long )((void (*)(struct octeon_device * ,
                                                                   u32 , void * ))0)) {
      (*(sc->callback))(octeon_dev, status, sc->callback_arg);
    } else {
    }
    request_complete = request_complete + 1;
  } else {
    request_complete = 0;
    spin_unlock_bh(& ordered_sc_list->lock);
  }
  if (request_complete >= resp_to_process) {
    goto ldv_46702;
  } else {
  }
  if (request_complete != 0) {
    goto ldv_46703;
  } else {
  }
  ldv_46702: ;
  return (0);
}
}
static void oct_poll_req_completion(struct work_struct *work )
{
  struct cavium_wk *wk ;
  struct octeon_device *oct ;
  struct cavium_wq *cwq ;
  unsigned long tmp ;
  {
  wk = (struct cavium_wk *)work;
  oct = (struct octeon_device *)wk->ctxptr;
  cwq = & oct->dma_comp_wq;
  lio_process_ordered_list(oct, 0U);
  tmp = msecs_to_jiffies(100U);
  queue_delayed_work___1(cwq->wq, & cwq->wk.work, tmp);
  return;
}
}
void activate_work_5(struct work_struct *work , int state )
{
  {
  if (ldv_work_5_0 == 0) {
    ldv_work_struct_5_0 = work;
    ldv_work_5_0 = state;
    return;
  } else {
  }
  if (ldv_work_5_1 == 0) {
    ldv_work_struct_5_1 = work;
    ldv_work_5_1 = state;
    return;
  } else {
  }
  if (ldv_work_5_2 == 0) {
    ldv_work_struct_5_2 = work;
    ldv_work_5_2 = state;
    return;
  } else {
  }
  if (ldv_work_5_3 == 0) {
    ldv_work_struct_5_3 = work;
    ldv_work_5_3 = state;
    return;
  } else {
  }
  return;
}
}
void call_and_disable_all_5(int state )
{
  {
  if (ldv_work_5_0 == state) {
    call_and_disable_work_5(ldv_work_struct_5_0);
  } else {
  }
  if (ldv_work_5_1 == state) {
    call_and_disable_work_5(ldv_work_struct_5_1);
  } else {
  }
  if (ldv_work_5_2 == state) {
    call_and_disable_work_5(ldv_work_struct_5_2);
  } else {
  }
  if (ldv_work_5_3 == state) {
    call_and_disable_work_5(ldv_work_struct_5_3);
  } else {
  }
  return;
}
}
void work_init_5(void)
{
  {
  ldv_work_5_0 = 0;
  ldv_work_5_1 = 0;
  ldv_work_5_2 = 0;
  ldv_work_5_3 = 0;
  return;
}
}
void invoke_work_5(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_5_0 == 2 || ldv_work_5_0 == 3) {
    ldv_work_5_0 = 4;
    oct_poll_req_completion(ldv_work_struct_5_0);
    ldv_work_5_0 = 1;
  } else {
  }
  goto ldv_46726;
  case 1: ;
  if (ldv_work_5_1 == 2 || ldv_work_5_1 == 3) {
    ldv_work_5_1 = 4;
    oct_poll_req_completion(ldv_work_struct_5_0);
    ldv_work_5_1 = 1;
  } else {
  }
  goto ldv_46726;
  case 2: ;
  if (ldv_work_5_2 == 2 || ldv_work_5_2 == 3) {
    ldv_work_5_2 = 4;
    oct_poll_req_completion(ldv_work_struct_5_0);
    ldv_work_5_2 = 1;
  } else {
  }
  goto ldv_46726;
  case 3: ;
  if (ldv_work_5_3 == 2 || ldv_work_5_3 == 3) {
    ldv_work_5_3 = 4;
    oct_poll_req_completion(ldv_work_struct_5_0);
    ldv_work_5_3 = 1;
  } else {
  }
  goto ldv_46726;
  default:
  ldv_stop();
  }
  ldv_46726: ;
  return;
}
}
void disable_work_5(struct work_struct *work )
{
  {
  if ((ldv_work_5_0 == 3 || ldv_work_5_0 == 2) && (unsigned long )ldv_work_struct_5_0 == (unsigned long )work) {
    ldv_work_5_0 = 1;
  } else {
  }
  if ((ldv_work_5_1 == 3 || ldv_work_5_1 == 2) && (unsigned long )ldv_work_struct_5_1 == (unsigned long )work) {
    ldv_work_5_1 = 1;
  } else {
  }
  if ((ldv_work_5_2 == 3 || ldv_work_5_2 == 2) && (unsigned long )ldv_work_struct_5_2 == (unsigned long )work) {
    ldv_work_5_2 = 1;
  } else {
  }
  if ((ldv_work_5_3 == 3 || ldv_work_5_3 == 2) && (unsigned long )ldv_work_struct_5_3 == (unsigned long )work) {
    ldv_work_5_3 = 1;
  } else {
  }
  return;
}
}
void call_and_disable_work_5(struct work_struct *work )
{
  {
  if ((ldv_work_5_0 == 2 || ldv_work_5_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_5_0) {
    oct_poll_req_completion(work);
    ldv_work_5_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_5_1 == 2 || ldv_work_5_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_5_1) {
    oct_poll_req_completion(work);
    ldv_work_5_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_5_2 == 2 || ldv_work_5_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_5_2) {
    oct_poll_req_completion(work);
    ldv_work_5_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_5_3 == 2 || ldv_work_5_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_5_3) {
    oct_poll_req_completion(work);
    ldv_work_5_3 = 1;
    return;
  } else {
  }
  return;
}
}
bool ldv_queue_work_on_79(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_6(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_80(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_6(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_81(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_6(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_82(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_6(2);
  return;
}
}
bool ldv_queue_delayed_work_on_83(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_6(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_sync_84(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_6(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_85(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_6(2);
  return;
}
}
void ldv_destroy_workqueue_86(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_6(2);
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
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
extern int memcmp(void const * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
bool ldv_queue_work_on_99(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_101(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_100(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_103(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_102(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static unsigned long readq(void const volatile *addr )
{
  unsigned long ret ;
  {
  __asm__ volatile ("movq %1,%0": "=r" (ret): "m" (*((unsigned long volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writeq(unsigned long val , void volatile *addr )
{
  {
  __asm__ volatile ("movq %0,%1": : "r" (val), "m" (*((unsigned long volatile *)addr)): "memory");
  return;
}
}
int octeon_init_droq(struct octeon_device *oct , u32 q_no , u32 num_descs , u32 desc_size ,
                     void *app_ctx ) ;
int octeon_unregister_dispatch_fn(struct octeon_device *oct , u16 opcode , u16 subcode ) ;
octeon_dispatch_fn_t octeon_get_dispatch(struct octeon_device *octeon_dev , u16 opcode ,
                                         u16 subcode ) ;
int octeon_mem_access_ok(struct octeon_device *oct ) ;
int octeon_console_send_cmd(struct octeon_device *oct , char *cmd_str , u32 wait_hundredths ) ;
void *oct_get_config_info(struct octeon_device *oct , u16 card_type ) ;
__inline static void octeon_swap_8B_data___2(u64 *data , u32 blocks )
{
  {
  goto ldv_46354;
  ldv_46353:
  __swab64s(data);
  blocks = blocks - 1U;
  data = data + 1;
  ldv_46354: ;
  if (blocks != 0U) {
    goto ldv_46353;
  } else {
  }
  return;
}
}
int lio_validate_cn6xxx_config_info(struct octeon_device *oct , struct octeon_config *conf6xxx ) ;
void octeon_pci_write_core_mem(struct octeon_device *oct , u64 coreaddr , u8 *buf ,
                               u32 len ) ;
static struct octeon_config default_cn66xx_conf =
     {0U, (char *)"210sv", {32U, 65536U, 64U, 1U, 1U, 0U}, {32U, 1U, 128U, 64U, 100U,
                                                          128U, (unsigned short)0},
    {{8U, 4U, 8U, 4U, 2048U, 2048U, 1536U, 0U, 65535U, 0UL}, {8U, 4U, 8U, 4U, 2048U,
                                                              2048U, 1536U, 1U, 65535U,
                                                              0UL}}, {1U, 0U, 100U,
                                                                      500U}, 2, 2048,
    2048, 1536};
static struct octeon_config default_cn68xx_conf =
     {2U, (char *)"410nv", {32U, 65536U, 64U, 1U, 1U, 0U}, {32U, 1U, 128U, 64U, 100U,
                                                          128U, (unsigned short)0},
    {{8U, 4U, 8U, 4U, 2048U, 2048U, 1536U, 0U, 65535U, 0UL}, {8U, 4U, 8U, 4U, 2048U,
                                                              2048U, 1536U, 1U, 65535U,
                                                              0UL}, {8U, 4U, 8U, 4U,
                                                                     2048U, 2048U,
                                                                     1536U, 2U, 65535U,
                                                                     0UL}, {8U, 4U,
                                                                            8U, 4U,
                                                                            2048U,
                                                                            2048U,
                                                                            1536U,
                                                                            3U, 65535U,
                                                                            0UL}},
    {1U, 0U, 100U, 500U}, 4, 2048, 2048, 1536};
static struct octeon_config default_cn68xx_210nv_conf =
     {1U, (char *)"210nv", {32U, 65536U, 64U, 1U, 1U, 0U}, {32U, 1U, 128U, 64U, 100U,
                                                          128U, (unsigned short)0},
    {{8U, 4U, 8U, 4U, 2048U, 2048U, 1536U, 0U, 65535U, 0UL}, {8U, 4U, 8U, 4U, 2048U,
                                                              2048U, 1536U, 1U, 65535U,
                                                              0UL}}, {1U, 0U, 100U,
                                                                      500U}, 2, 2048,
    2048, 1536};
static struct octeon_config_ptr oct_conf_info[32U] = { {0U},
        {0U},
        {0U},
        {0U}};
static char oct_dev_state_str[14U][32U] =
  { { 'B', 'E', 'G', 'I',
            'N', '\000'},
   { 'P', 'C', 'I', '-',
            'M', 'A', 'P', '-',
            'D', 'O', 'N', 'E',
            '\000'},
   { 'D', 'I', 'S', 'P',
            'A', 'T', 'C', 'H',
            '-', 'I', 'N', 'I',
            'T', '-', 'D', 'O',
            'N', 'E', '\000'},
   { 'I', 'Q', '-', 'I',
            'N', 'I', 'T', '-',
            'D', 'O', 'N', 'E',
            '\000'},
   { 'S', 'C', 'B', 'U',
            'F', 'F', '-', 'P',
            'O', 'O', 'L', '-',
            'I', 'N', 'I', 'T',
            '-', 'D', 'O', 'N',
            'E', '\000'},
   { 'R', 'E', 'S', 'P',
            'L', 'I', 'S', 'T',
            '-', 'I', 'N', 'I',
            'T', '-', 'D', 'O',
            'N', 'E', '\000'},
   { 'D', 'R', 'O', 'Q',
            '-', 'I', 'N', 'I',
            'T', '-', 'D', 'O',
            'N', 'E', '\000'},
   { 'I', 'O', '-', 'Q',
            'U', 'E', 'U', 'E',
            'S', '-', 'I', 'N',
            'I', 'T', '-', 'D',
            'O', 'N', 'E', '\000'},
   { 'C', 'O', 'N', 'S',
            'O', 'L', 'E', '-',
            'I', 'N', 'I', 'T',
            '-', 'D', 'O', 'N',
            'E', '\000'},
   { 'H', 'O', 'S', 'T',
            '-', 'R', 'E', 'A',
            'D', 'Y', '\000'},
   { 'C', 'O', 'R', 'E',
            '-', 'R', 'E', 'A',
            'D', 'Y', '\000'},
   { 'R', 'U', 'N', 'N',
            'I', 'N', 'G', '\000'},
   { 'I', 'N', '-', 'R',
            'E', 'S', 'E', 'T',
            '\000'},
   { 'I', 'N', 'V', 'A',
            'L', 'I', 'D', '\000'}};
static char oct_dev_app_str[3U][32U] = { { 'B', 'A', 'S', 'E',
            '\000'},
   { 'N', 'I', 'C', '\000'},
   { 'U', 'N', 'K', 'N',
            'O', 'W', 'N', '\000'}};
static struct octeon_device *octeon_device[32U] ;
static u32 octeon_device_count ;
static struct octeon_core_setup core_setup[32U] ;
static void oct_set_config_info(int oct_id , int conf_type___0 )
{
  {
  if (conf_type___0 < 0 || conf_type___0 > 0) {
    conf_type___0 = 0;
  } else {
  }
  oct_conf_info[oct_id].conf_type = (u32 )conf_type___0;
  return;
}
}
void octeon_init_device_list(int conf_type___0 )
{
  int i ;
  {
  memset((void *)(& octeon_device), 0, 256UL);
  i = 0;
  goto ldv_46886;
  ldv_46885:
  oct_set_config_info(i, conf_type___0);
  i = i + 1;
  ldv_46886: ;
  if (i <= 31) {
    goto ldv_46885;
  } else {
  }
  return;
}
}
static void *__retrieve_octeon_config_info(struct octeon_device *oct , u16 card_type )
{
  u32 oct_id ;
  void *ret ;
  {
  oct_id = oct->octeon_id;
  ret = (void *)0;
  switch (oct_conf_info[oct_id].conf_type) {
  case 0U: ;
  if ((unsigned int )oct->chip_id == 146U) {
    ret = (void *)(& default_cn66xx_conf);
  } else
  if ((unsigned int )oct->chip_id == 145U && (unsigned int )card_type == 1U) {
    ret = (void *)(& default_cn68xx_210nv_conf);
  } else
  if ((unsigned int )oct->chip_id == 145U && (unsigned int )card_type == 2U) {
    ret = (void *)(& default_cn68xx_conf);
  } else {
  }
  goto ldv_46895;
  default: ;
  goto ldv_46895;
  }
  ldv_46895: ;
  return (ret);
}
}
static int __verify_octeon_config_info(struct octeon_device *oct , void *conf )
{
  int tmp ;
  {
  switch ((int )oct->chip_id) {
  case 146: ;
  case 145:
  tmp = lio_validate_cn6xxx_config_info(oct, (struct octeon_config *)conf);
  return (tmp);
  default: ;
  goto ldv_46904;
  }
  ldv_46904: ;
  return (1);
}
}
void *oct_get_config_info(struct octeon_device *oct , u16 card_type )
{
  void *conf ;
  int tmp ;
  {
  conf = (void *)0;
  conf = __retrieve_octeon_config_info(oct, (int )card_type);
  if ((unsigned long )conf == (unsigned long )((void *)0)) {
    return ((void *)0);
  } else {
  }
  tmp = __verify_octeon_config_info(oct, conf);
  if (tmp != 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Configuration verification failed\n");
    return ((void *)0);
  } else {
  }
  return (conf);
}
}
char *lio_get_state_string(atomic_t *state_ptr )
{
  s32 istate ;
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)state_ptr);
  istate = tmp;
  if (istate > 13 || istate < 0) {
    return ((char *)(& oct_dev_state_str) + 13U);
  } else {
  }
  return ((char *)(& oct_dev_state_str) + (unsigned long )istate);
}
}
static char *get_oct_app_string(u32 app_mode )
{
  {
  if (app_mode <= 1U) {
    return ((char *)(& oct_dev_app_str) + (unsigned long )app_mode);
  } else {
  }
  return ((char *)(& oct_dev_app_str) + 2U);
}
}
int octeon_download_firmware(struct octeon_device *oct , u8 const *data , size_t size )
{
  int ret ;
  u8 *p ;
  u8 *buffer ;
  u32 crc32_result ;
  u64 load_addr ;
  u32 image_len ;
  struct octeon_firmware_file_header *h ;
  u32 i ;
  __u32 tmp ;
  u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  size_t tmp___3 ;
  int tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  void *tmp___7 ;
  __u64 tmp___8 ;
  __u32 tmp___9 ;
  u32 tmp___10 ;
  __u32 tmp___11 ;
  __u32 tmp___12 ;
  struct _ddebug descriptor ;
  long tmp___13 ;
  __u32 tmp___14 ;
  {
  ret = 0;
  if (size <= 1311UL) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Firmware file too small (%d < %d).\n",
            (unsigned int )size, 1312U);
    return (-22);
  } else {
  }
  h = (struct octeon_firmware_file_header *)data;
  tmp = __fswab32(h->magic);
  if (tmp != 1129204035U) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Unrecognized firmware file.\n");
    return (-22);
  } else {
  }
  tmp___0 = crc32_le(4294967295U, data, 1308UL);
  crc32_result = ~ tmp___0;
  tmp___2 = __fswab32(h->crc32);
  if (tmp___2 != crc32_result) {
    tmp___1 = __fswab32(h->crc32);
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Firmware CRC mismatch (0x%08x != 0x%08x).\n",
            crc32_result, tmp___1);
    return (-22);
  } else {
  }
  tmp___3 = strlen("1.1.9");
  tmp___4 = memcmp((void const *)"1.1.9", (void const *)(& h->version), tmp___3);
  if (tmp___4 != 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Unmatched firmware version. Expected %s, got %s.\n",
            (char *)"1.1.9", (char *)(& h->version));
    return (-22);
  } else {
  }
  tmp___6 = __fswab32(h->num_images);
  if (tmp___6 > 16U) {
    tmp___5 = __fswab32(h->num_images);
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Too many images in firmware file (%d).\n",
            tmp___5);
    return (-22);
  } else {
  }
  _dev_info((struct device const *)(& (oct->pci_dev)->dev), "Firmware version: %s\n",
            (char *)(& h->version));
  snprintf((char *)(& oct->fw_info.liquidio_firmware_version), 32UL, "LIQUIDIO: %s",
           (char *)(& h->version));
  tmp___7 = kmalloc(size, 208U);
  buffer = (u8 *)tmp___7;
  if ((unsigned long )buffer == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  memcpy((void *)buffer, (void const *)data, size);
  p = buffer + 1312UL;
  i = 0U;
  goto ldv_46934;
  ldv_46933:
  tmp___8 = __fswab64(h->desc[i].addr);
  load_addr = tmp___8;
  tmp___9 = __fswab32(h->desc[i].len);
  image_len = tmp___9;
  tmp___10 = crc32_le(4294967295U, (unsigned char const *)p, (size_t )image_len);
  crc32_result = ~ tmp___10;
  tmp___12 = __fswab32(h->desc[i].crc32);
  if (tmp___12 != crc32_result) {
    tmp___11 = __fswab32(h->desc[i].crc32);
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Firmware CRC mismatch in image %d (0x%08x != 0x%08x).\n",
            i, crc32_result, tmp___11);
    ret = -22;
    goto done_downloading;
  } else {
  }
  octeon_pci_write_core_mem(oct, load_addr, p, image_len);
  p = p + (unsigned long )image_len;
  descriptor.modname = "liquidio";
  descriptor.function = "octeon_download_firmware";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/octeon_device.c";
  descriptor.format = "Downloaded image %d (%d bytes) to address 0x%016llx\n";
  descriptor.lineno = 635U;
  descriptor.flags = 0U;
  tmp___13 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___13 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "Downloaded image %d (%d bytes) to address 0x%016llx\n", i,
                      image_len, load_addr);
  } else {
  }
  i = i + 1U;
  ldv_46934:
  tmp___14 = __fswab32(h->num_images);
  if (tmp___14 > i) {
    goto ldv_46933;
  } else {
  }
  ret = octeon_console_send_cmd(oct, (char *)(& h->bootcmd), 50U);
  done_downloading:
  kfree((void const *)buffer);
  return (ret);
}
}
void octeon_free_device_mem(struct octeon_device *oct )
{
  u32 i ;
  {
  i = 0U;
  goto ldv_46941;
  ldv_46940:
  vfree((void const *)oct->droq[i]);
  i = i + 1U;
  ldv_46941: ;
  if (i <= 31U) {
    goto ldv_46940;
  } else {
  }
  i = 0U;
  goto ldv_46944;
  ldv_46943:
  vfree((void const *)oct->instr_queue[i]);
  i = i + 1U;
  ldv_46944: ;
  if (i <= 31U) {
    goto ldv_46943;
  } else {
  }
  i = oct->octeon_id;
  vfree((void const *)oct);
  octeon_device[i] = (struct octeon_device *)0;
  octeon_device_count = octeon_device_count - 1U;
  return;
}
}
static struct octeon_device *octeon_allocate_device_mem(u32 pci_id , u32 priv_size )
{
  struct octeon_device *oct ;
  u8 *buf ;
  u32 octdevsize ;
  u32 configsize ;
  u32 size ;
  void *tmp ;
  {
  buf = (u8 *)0U;
  octdevsize = 0U;
  configsize = 0U;
  switch (pci_id) {
  case 145U: ;
  case 146U:
  configsize = 104U;
  goto ldv_46957;
  default:
  printk("\v%s: Unknown PCI Device: 0x%x\n", "octeon_allocate_device_mem", pci_id);
  return ((struct octeon_device *)0);
  }
  ldv_46957: ;
  if ((configsize & 7U) != 0U) {
    configsize = (configsize & 4294967288U) + 8U;
  } else {
  }
  octdevsize = 36120U;
  if ((octdevsize & 7U) != 0U) {
    octdevsize = (octdevsize & 4294967288U) + 8U;
  } else {
  }
  if ((priv_size & 7U) != 0U) {
    priv_size = (priv_size & 4294967288U) + 8U;
  } else {
  }
  size = ((octdevsize + priv_size) + configsize) + 2560U;
  tmp = vmalloc((unsigned long )size);
  buf = (u8 *)tmp;
  if ((unsigned long )buf == (unsigned long )((u8 *)0U)) {
    return ((struct octeon_device *)0);
  } else {
  }
  memset((void *)buf, 0, (size_t )size);
  oct = (struct octeon_device *)buf;
  oct->priv = (void *)buf + (unsigned long )octdevsize;
  oct->chip = (void *)(buf + ((unsigned long )octdevsize + (unsigned long )priv_size));
  oct->dispatch.dlist = (struct octeon_dispatch *)(buf + (((unsigned long )octdevsize + (unsigned long )priv_size) + (unsigned long )configsize));
  return (oct);
}
}
struct octeon_device *octeon_allocate_device(u32 pci_id , u32 priv_size )
{
  u32 oct_idx ;
  struct octeon_device *oct ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  oct_idx = 0U;
  oct = (struct octeon_device *)0;
  oct_idx = 0U;
  goto ldv_46968;
  ldv_46967: ;
  if ((unsigned long )octeon_device[oct_idx] == (unsigned long )((struct octeon_device *)0)) {
    goto ldv_46966;
  } else {
  }
  oct_idx = oct_idx + 1U;
  ldv_46968: ;
  if (oct_idx <= 31U) {
    goto ldv_46967;
  } else {
  }
  ldv_46966: ;
  if (oct_idx == 32U) {
    return ((struct octeon_device *)0);
  } else {
  }
  oct = octeon_allocate_device_mem(pci_id, priv_size);
  if ((unsigned long )oct == (unsigned long )((struct octeon_device *)0)) {
    return ((struct octeon_device *)0);
  } else {
  }
  spinlock_check(& oct->pci_win_lock);
  __raw_spin_lock_init(& oct->pci_win_lock.__annonCompField18.rlock, "&(&oct->pci_win_lock)->rlock",
                       & __key);
  spinlock_check(& oct->mem_access_lock);
  __raw_spin_lock_init(& oct->mem_access_lock.__annonCompField18.rlock, "&(&oct->mem_access_lock)->rlock",
                       & __key___0);
  octeon_device_count = octeon_device_count + 1U;
  octeon_device[oct_idx] = oct;
  oct->octeon_id = oct_idx;
  snprintf((char *)(& oct->device_name), 32UL, "LiquidIO%d", oct->octeon_id);
  return (oct);
}
}
int octeon_setup_instr_queues(struct octeon_device *oct )
{
  u32 i ;
  u32 num_iqs ;
  u32 num_descs ;
  void *tmp ;
  int tmp___0 ;
  {
  num_iqs = 0U;
  num_descs = 0U;
  if ((unsigned int )oct->chip_id == 146U || (unsigned int )oct->chip_id == 145U) {
    num_iqs = 1U;
    num_descs = (u32 )(((struct octeon_cn6xxx *)oct->chip)->conf)->num_def_tx_descs;
  } else {
  }
  oct->num_iqs = 0U;
  i = 0U;
  goto ldv_46978;
  ldv_46977:
  tmp = vmalloc(248UL);
  oct->instr_queue[i] = (struct octeon_instr_queue *)tmp;
  if ((unsigned long )oct->instr_queue[i] == (unsigned long )((struct octeon_instr_queue *)0)) {
    return (1);
  } else {
  }
  memset((void *)oct->instr_queue[i], 0, 248UL);
  (oct->instr_queue[i])->app_ctx = (void *)((unsigned long )i);
  tmp___0 = octeon_init_instr_queue(oct, i, num_descs);
  if (tmp___0 != 0) {
    return (1);
  } else {
  }
  oct->num_iqs = oct->num_iqs + 1U;
  i = i + 1U;
  ldv_46978: ;
  if (i < num_iqs) {
    goto ldv_46977;
  } else {
  }
  return (0);
}
}
int octeon_setup_output_queues(struct octeon_device *oct )
{
  u32 i ;
  u32 num_oqs ;
  u32 num_descs ;
  u32 desc_size ;
  void *tmp ;
  int tmp___0 ;
  {
  num_oqs = 0U;
  num_descs = 0U;
  desc_size = 0U;
  if ((unsigned int )oct->chip_id == 146U || (unsigned int )oct->chip_id == 145U) {
    num_oqs = 1U;
    num_descs = (u32 )(((struct octeon_cn6xxx *)oct->chip)->conf)->num_def_rx_descs;
    desc_size = (u32 )(((struct octeon_cn6xxx *)oct->chip)->conf)->def_rx_buf_size;
  } else {
  }
  oct->num_oqs = 0U;
  i = 0U;
  goto ldv_46988;
  ldv_46987:
  tmp = vmalloc(640UL);
  oct->droq[i] = (struct octeon_droq *)tmp;
  if ((unsigned long )oct->droq[i] == (unsigned long )((struct octeon_droq *)0)) {
    return (1);
  } else {
  }
  memset((void *)oct->droq[i], 0, 640UL);
  tmp___0 = octeon_init_droq(oct, i, num_descs, desc_size, (void *)0);
  if (tmp___0 != 0) {
    return (1);
  } else {
  }
  oct->num_oqs = oct->num_oqs + 1U;
  i = i + 1U;
  ldv_46988: ;
  if (i < num_oqs) {
    goto ldv_46987;
  } else {
  }
  return (0);
}
}
void octeon_set_io_queues_off(struct octeon_device *oct )
{
  {
  writel(0U, (void volatile *)oct->mmio[0].hw_addr + 4096U);
  writel(0U, (void volatile *)oct->mmio[0].hw_addr + 4112U);
  return;
}
}
void octeon_set_droq_pkt_op(struct octeon_device *oct , u32 q_no , u32 enable )
{
  u32 reg_val ;
  {
  reg_val = 0U;
  reg_val = readl((void const volatile *)oct->mmio[0].hw_addr + 4112U);
  if (enable != 0U) {
    reg_val = (u32 )(1 << (int )q_no) | reg_val;
  } else {
    reg_val = (u32 )(~ (1 << (int )q_no)) & reg_val;
  }
  writel(reg_val, (void volatile *)oct->mmio[0].hw_addr + 4112U);
  return;
}
}
int octeon_init_dispatch_list(struct octeon_device *oct )
{
  u32 i ;
  struct lock_class_key __key ;
  {
  oct->dispatch.count = 0U;
  i = 0U;
  goto ldv_47004;
  ldv_47003:
  (oct->dispatch.dlist + (unsigned long )i)->opcode = 0U;
  INIT_LIST_HEAD(& (oct->dispatch.dlist + (unsigned long )i)->list);
  i = i + 1U;
  ldv_47004: ;
  if (i <= 63U) {
    goto ldv_47003;
  } else {
  }
  i = 0U;
  goto ldv_47007;
  ldv_47006:
  octeon_register_reqtype_free_fn(oct, (int )i, (void (*)(void * ))0);
  i = i + 1U;
  ldv_47007: ;
  if (i <= 5U) {
    goto ldv_47006;
  } else {
  }
  spinlock_check(& oct->dispatch.lock);
  __raw_spin_lock_init(& oct->dispatch.lock.__annonCompField18.rlock, "&(&oct->dispatch.lock)->rlock",
                       & __key);
  return (0);
}
}
void octeon_delete_dispatch_list(struct octeon_device *oct )
{
  u32 i ;
  struct list_head freelist ;
  struct list_head *temp ;
  struct list_head *tmp2 ;
  struct list_head *dispatch ;
  {
  INIT_LIST_HEAD(& freelist);
  spin_lock_bh(& oct->dispatch.lock);
  i = 0U;
  goto ldv_47022;
  ldv_47021:
  dispatch = & (oct->dispatch.dlist + (unsigned long )i)->list;
  goto ldv_47019;
  ldv_47018:
  temp = dispatch->next;
  list_del(temp);
  list_add_tail(temp, & freelist);
  ldv_47019: ;
  if ((unsigned long )dispatch->next != (unsigned long )dispatch) {
    goto ldv_47018;
  } else {
  }
  (oct->dispatch.dlist + (unsigned long )i)->opcode = 0U;
  i = i + 1U;
  ldv_47022: ;
  if (i <= 63U) {
    goto ldv_47021;
  } else {
  }
  oct->dispatch.count = 0U;
  spin_unlock_bh(& oct->dispatch.lock);
  temp = freelist.next;
  tmp2 = temp->next;
  goto ldv_47025;
  ldv_47024:
  list_del(temp);
  vfree((void const *)temp);
  temp = tmp2;
  tmp2 = temp->next;
  ldv_47025: ;
  if ((unsigned long )(& freelist) != (unsigned long )temp) {
    goto ldv_47024;
  } else {
  }
  return;
}
}
octeon_dispatch_fn_t octeon_get_dispatch(struct octeon_device *octeon_dev , u16 opcode ,
                                         u16 subcode )
{
  u32 idx ;
  struct list_head *dispatch ;
  int (*fn)(struct octeon_recv_info * , void * ) ;
  u16 combined_opcode ;
  {
  fn = (int (*)(struct octeon_recv_info * , void * ))0;
  combined_opcode = (u16 )((int )((short )(((int )opcode & 15) << 8)) | ((int )((short )subcode) & 127));
  idx = (u32 )combined_opcode & 63U;
  spin_lock_bh(& octeon_dev->dispatch.lock);
  if (octeon_dev->dispatch.count == 0U) {
    spin_unlock_bh(& octeon_dev->dispatch.lock);
    return ((int (*)(struct octeon_recv_info * , void * ))0);
  } else {
  }
  if ((unsigned int )(octeon_dev->dispatch.dlist + (unsigned long )idx)->opcode == 0U) {
    spin_unlock_bh(& octeon_dev->dispatch.lock);
    return ((int (*)(struct octeon_recv_info * , void * ))0);
  } else {
  }
  if ((int )(octeon_dev->dispatch.dlist + (unsigned long )idx)->opcode == (int )combined_opcode) {
    fn = (octeon_dev->dispatch.dlist + (unsigned long )idx)->dispatch_fn;
  } else {
    dispatch = (octeon_dev->dispatch.dlist + (unsigned long )idx)->list.next;
    goto ldv_47038;
    ldv_47037: ;
    if ((int )((struct octeon_dispatch *)dispatch)->opcode == (int )combined_opcode) {
      fn = ((struct octeon_dispatch *)dispatch)->dispatch_fn;
      goto ldv_47036;
    } else {
    }
    dispatch = dispatch->next;
    ldv_47038: ;
    if ((unsigned long )(& (octeon_dev->dispatch.dlist + (unsigned long )idx)->list) != (unsigned long )dispatch) {
      goto ldv_47037;
    } else {
    }
    ldv_47036: ;
  }
  spin_unlock_bh(& octeon_dev->dispatch.lock);
  return (fn);
}
}
int octeon_register_dispatch_fn(struct octeon_device *oct , u16 opcode , u16 subcode ,
                                int (*fn)(struct octeon_recv_info * , void * ) , void *fn_arg )
{
  u32 idx ;
  int (*pfn)(struct octeon_recv_info * , void * ) ;
  u16 combined_opcode ;
  struct octeon_dispatch *dispatch ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  {
  combined_opcode = (u16 )((int )((short )(((int )opcode & 15) << 8)) | ((int )((short )subcode) & 127));
  idx = (u32 )combined_opcode & 63U;
  spin_lock_bh(& oct->dispatch.lock);
  if ((unsigned int )(oct->dispatch.dlist + (unsigned long )idx)->opcode == 0U) {
    (oct->dispatch.dlist + (unsigned long )idx)->opcode = combined_opcode;
    (oct->dispatch.dlist + (unsigned long )idx)->dispatch_fn = fn;
    (oct->dispatch.dlist + (unsigned long )idx)->arg = fn_arg;
    oct->dispatch.count = oct->dispatch.count + 1U;
    spin_unlock_bh(& oct->dispatch.lock);
    return (0);
  } else {
  }
  spin_unlock_bh(& oct->dispatch.lock);
  pfn = octeon_get_dispatch(oct, (int )opcode, (int )subcode);
  if ((unsigned long )pfn == (unsigned long )((int (*)(struct octeon_recv_info * ,
                                                       void * ))0)) {
    descriptor.modname = "liquidio";
    descriptor.function = "octeon_register_dispatch_fn";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/octeon_device.c";
    descriptor.format = "Adding opcode to dispatch list linked list\n";
    descriptor.lineno = 980U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                        "Adding opcode to dispatch list linked list\n");
    } else {
    }
    tmp___0 = vmalloc(40UL);
    dispatch = (struct octeon_dispatch *)tmp___0;
    if ((unsigned long )dispatch == (unsigned long )((struct octeon_dispatch *)0)) {
      dev_err((struct device const *)(& (oct->pci_dev)->dev), "No memory to add dispatch function\n");
      return (1);
    } else {
    }
    dispatch->opcode = combined_opcode;
    dispatch->dispatch_fn = fn;
    dispatch->arg = fn_arg;
    spin_lock_bh(& oct->dispatch.lock);
    list_add(& dispatch->list, & (oct->dispatch.dlist + (unsigned long )idx)->list);
    oct->dispatch.count = oct->dispatch.count + 1U;
    spin_unlock_bh(& oct->dispatch.lock);
  } else {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Found previously registered dispatch fn for opcode/subcode: %x/%x\n",
            (int )opcode, (int )subcode);
    return (1);
  }
  return (0);
}
}
int octeon_unregister_dispatch_fn(struct octeon_device *oct , u16 opcode , u16 subcode )
{
  int retval ;
  u32 idx ;
  struct list_head *dispatch ;
  struct list_head *dfree ;
  struct list_head *tmp2 ;
  u16 combined_opcode ;
  {
  retval = 0;
  dfree = (struct list_head *)0;
  combined_opcode = (u16 )((int )((short )(((int )opcode & 15) << 8)) | ((int )((short )subcode) & 127));
  idx = (u32 )combined_opcode & 63U;
  spin_lock_bh(& oct->dispatch.lock);
  if (oct->dispatch.count == 0U) {
    spin_unlock_bh(& oct->dispatch.lock);
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "No dispatch functions registered for this device\n");
    return (1);
  } else {
  }
  if ((int )(oct->dispatch.dlist + (unsigned long )idx)->opcode == (int )combined_opcode) {
    dispatch = & (oct->dispatch.dlist + (unsigned long )idx)->list;
    if ((unsigned long )dispatch->next != (unsigned long )dispatch) {
      dispatch = dispatch->next;
      (oct->dispatch.dlist + (unsigned long )idx)->opcode = ((struct octeon_dispatch *)dispatch)->opcode;
      (oct->dispatch.dlist + (unsigned long )idx)->dispatch_fn = ((struct octeon_dispatch *)dispatch)->dispatch_fn;
      (oct->dispatch.dlist + (unsigned long )idx)->arg = ((struct octeon_dispatch *)dispatch)->arg;
      list_del(dispatch);
      dfree = dispatch;
    } else {
      (oct->dispatch.dlist + (unsigned long )idx)->opcode = 0U;
      (oct->dispatch.dlist + (unsigned long )idx)->dispatch_fn = (int (*)(struct octeon_recv_info * ,
                                                                          void * ))0;
      (oct->dispatch.dlist + (unsigned long )idx)->arg = (void *)0;
    }
  } else {
    retval = 1;
    dispatch = (oct->dispatch.dlist + (unsigned long )idx)->list.next;
    tmp2 = dispatch->next;
    goto ldv_47064;
    ldv_47063: ;
    if ((int )((struct octeon_dispatch *)dispatch)->opcode == (int )combined_opcode) {
      list_del(dispatch);
      dfree = dispatch;
      retval = 0;
    } else {
    }
    dispatch = tmp2;
    tmp2 = dispatch->next;
    ldv_47064: ;
    if ((unsigned long )(& (oct->dispatch.dlist + (unsigned long )idx)->list) != (unsigned long )dispatch) {
      goto ldv_47063;
    } else {
    }
  }
  if (retval == 0) {
    oct->dispatch.count = oct->dispatch.count - 1U;
  } else {
  }
  spin_unlock_bh(& oct->dispatch.lock);
  vfree((void const *)dfree);
  return (retval);
}
}
int octeon_core_drv_init(struct octeon_recv_info *recv_info , void *buf )
{
  u32 i ;
  char app_name[16U] ;
  struct octeon_device *oct ;
  struct octeon_recv_pkt *recv_pkt ;
  struct octeon_core_setup *cs ;
  u32 num_nic_ports ;
  int tmp ;
  int tmp___0 ;
  char *tmp___1 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  {
  oct = (struct octeon_device *)buf;
  recv_pkt = recv_info->recv_pkt;
  cs = (struct octeon_core_setup *)0;
  num_nic_ports = 0U;
  if ((unsigned int )oct->chip_id == 146U || (unsigned int )oct->chip_id == 145U) {
    num_nic_ports = (u32 )(((struct octeon_cn6xxx *)oct->chip)->conf)->num_nic_ports;
  } else {
  }
  tmp___0 = atomic_read((atomic_t const *)(& oct->status));
  if (tmp___0 > 10) {
    tmp = atomic_read((atomic_t const *)(& oct->status));
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Received CORE OK when device state is 0x%x\n",
            tmp);
    goto core_drv_init_err;
  } else {
  }
  tmp___1 = get_oct_app_string((unsigned int )recv_pkt->rh.r_core_drv_init.app_mode);
  strncpy((char *)(& app_name), (char const *)tmp___1, 15UL);
  oct->app_mode = (unsigned int )recv_pkt->rh.r_core_drv_init.app_mode;
  if ((unsigned int )recv_pkt->rh.r_core_drv_init.app_mode == 1U) {
    oct->fw_info.max_nic_ports = (unsigned int )recv_pkt->rh.r_core_drv_init.max_nic_ports;
    oct->fw_info.num_gmx_ports = (unsigned int )recv_pkt->rh.r_core_drv_init.num_gmx_ports;
  } else {
  }
  if (oct->fw_info.max_nic_ports < num_nic_ports) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Config has more ports than firmware allows (%d > %d).\n",
            num_nic_ports, oct->fw_info.max_nic_ports);
    goto core_drv_init_err;
  } else {
  }
  oct->fw_info.app_cap_flags = (u64 )recv_pkt->rh.r_core_drv_init.app_cap_flags;
  oct->fw_info.app_mode = (unsigned int )recv_pkt->rh.r_core_drv_init.app_mode;
  atomic_set(& oct->status, 10);
  cs = (struct octeon_core_setup *)(& core_setup) + (unsigned long )oct->octeon_id;
  if (recv_pkt->buffer_size[0] != 120U) {
    descriptor.modname = "liquidio";
    descriptor.function = "octeon_core_drv_init";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/octeon_device.c";
    descriptor.format = "Core setup bytes expected %u found %d\n";
    descriptor.lineno = 1130U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                        "Core setup bytes expected %u found %d\n", 120U, recv_pkt->buffer_size[0]);
    } else {
    }
  } else {
  }
  memcpy((void *)cs, (void const *)((struct sk_buff *)recv_pkt->buffer_ptr[0])->data,
           120UL);
  strncpy((char *)(& oct->boardinfo.name), (char const *)(& cs->boardname), 32UL);
  strncpy((char *)(& oct->boardinfo.serial_number), (char const *)(& cs->board_serial_number),
          64UL);
  octeon_swap_8B_data___2((u64 *)cs, 15U);
  oct->boardinfo.major = cs->board_rev_major;
  oct->boardinfo.minor = cs->board_rev_minor;
  _dev_info((struct device const *)(& (oct->pci_dev)->dev), "Running %s (%llu Hz)\n",
            (char *)(& app_name), (long long )cs->corefreq);
  core_drv_init_err:
  i = 0U;
  goto ldv_47080;
  ldv_47079:
  recv_buffer_free(recv_pkt->buffer_ptr[i]);
  i = i + 1U;
  ldv_47080: ;
  if ((u32 )recv_pkt->buffer_count > i) {
    goto ldv_47079;
  } else {
  }
  octeon_free_recv_info(recv_info);
  return (0);
}
}
int octeon_get_tx_qsize(struct octeon_device *oct , u32 q_no )
{
  {
  if (((unsigned long )oct != (unsigned long )((struct octeon_device *)0) && q_no <= 31U) && (int )((unsigned long )oct->io_qmask.iq >> (int )q_no) & 1) {
    return ((int )(oct->instr_queue[q_no])->max_count);
  } else {
  }
  return (-1);
}
}
int octeon_get_rx_qsize(struct octeon_device *oct , u32 q_no )
{
  {
  if (((unsigned long )oct != (unsigned long )((struct octeon_device *)0) && q_no <= 31U) && (int )((unsigned long )oct->io_qmask.oq >> (int )q_no) & 1) {
    return ((int )(oct->droq[q_no])->max_count);
  } else {
  }
  return (-1);
}
}
struct octeon_config *octeon_get_conf(struct octeon_device *oct )
{
  struct octeon_config *default_oct_conf ;
  {
  default_oct_conf = (struct octeon_config *)0;
  if ((unsigned int )oct->chip_id == 146U || (unsigned int )oct->chip_id == 145U) {
    default_oct_conf = ((struct octeon_cn6xxx *)oct->chip)->conf;
  } else {
  }
  return (default_oct_conf);
}
}
struct octeon_device *lio_get_device(u32 octeon_id )
{
  {
  if (octeon_id > 31U) {
    return ((struct octeon_device *)0);
  } else {
    return (octeon_device[octeon_id]);
  }
}
}
u64 lio_pci_readq(struct octeon_device *oct , u64 addr )
{
  u64 val64 ;
  unsigned long flags ;
  u32 val32 ;
  u32 addrhi ;
  raw_spinlock_t *tmp ;
  unsigned long tmp___0 ;
  {
  tmp = spinlock_check(& oct->pci_win_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  addrhi = (u32 )(addr >> 32);
  if ((unsigned int )oct->chip_id == 146U || (unsigned int )oct->chip_id == 145U) {
    addrhi = addrhi | 393216U;
  } else {
  }
  writel(addrhi, (void volatile *)oct->reg_list.pci_win_rd_addr_hi);
  val32 = readl((void const volatile *)oct->reg_list.pci_win_rd_addr_hi);
  writel((unsigned int )addr, (void volatile *)oct->reg_list.pci_win_rd_addr_lo);
  val32 = readl((void const volatile *)oct->reg_list.pci_win_rd_addr_lo);
  tmp___0 = readq((void const volatile *)oct->reg_list.pci_win_rd_data);
  val64 = (u64 )tmp___0;
  spin_unlock_irqrestore(& oct->pci_win_lock, flags);
  return (val64);
}
}
void lio_pci_writeq(struct octeon_device *oct , u64 val , u64 addr )
{
  u32 val32 ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(& oct->pci_win_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  writeq((unsigned long )addr, (void volatile *)oct->reg_list.pci_win_wr_addr);
  writel((unsigned int )(val >> 32), (void volatile *)oct->reg_list.pci_win_wr_data_hi);
  val32 = readl((void const volatile *)oct->reg_list.pci_win_wr_data_hi);
  writel((unsigned int )val, (void volatile *)oct->reg_list.pci_win_wr_data_lo);
  spin_unlock_irqrestore(& oct->pci_win_lock, flags);
  return;
}
}
int octeon_mem_access_ok(struct octeon_device *oct )
{
  u64 access_okay ;
  u64 lmc0_reset_ctl ;
  u64 tmp ;
  {
  access_okay = 0ULL;
  tmp = lio_pci_readq(oct, 307865537479040ULL);
  lmc0_reset_ctl = tmp;
  access_okay = lmc0_reset_ctl & 1ULL;
  return (access_okay == 0ULL);
}
}
int octeon_wait_for_ddr_init(struct octeon_device *oct , u32 *timeout )
{
  int ret ;
  u32 ms ;
  {
  ret = 1;
  if ((unsigned long )timeout == (unsigned long )((u32 *)0U)) {
    return (ret);
  } else {
  }
  goto ldv_47130;
  ldv_47129:
  schedule_timeout_uninterruptible(25L);
  ldv_47130: ;
  if (*timeout == 0U) {
    goto ldv_47129;
  } else {
  }
  ms = 0U;
  goto ldv_47133;
  ldv_47132:
  ret = octeon_mem_access_ok(oct);
  if (ret != 0) {
    schedule_timeout_uninterruptible(25L);
  } else {
  }
  ms = ms + 25U;
  ldv_47133: ;
  if (ret != 0 && (*timeout == 0U || *timeout >= ms)) {
    goto ldv_47132;
  } else {
  }
  return (ret);
}
}
int lio_get_device_id(void *dev )
{
  struct octeon_device *octeon_dev ;
  u32 i ;
  {
  octeon_dev = (struct octeon_device *)dev;
  i = 0U;
  goto ldv_47141;
  ldv_47140: ;
  if ((unsigned long )octeon_device[i] == (unsigned long )octeon_dev) {
    return ((int )octeon_dev->octeon_id);
  } else {
  }
  i = i + 1U;
  ldv_47141: ;
  if (i <= 31U) {
    goto ldv_47140;
  } else {
  }
  return (-1);
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
  activate_work_6(ldv_func_arg3, 2);
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
  activate_work_6(& ldv_func_arg3->work, 2);
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
  activate_work_6(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_102(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_6(2);
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
  activate_work_6(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
bool ldv_queue_work_on_113(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_115(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_114(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_117(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_116(struct workqueue_struct *ldv_func_arg1 ) ;
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{
  void *tmp ;
  {
  tmp = ioremap_nocache(offset, size);
  return (tmp);
}
}
extern int pci_request_region(struct pci_dev * , int , char const * ) ;
__inline static int octeon_map_pci_barx(struct octeon_device *oct , int baridx , int max_map_len )
{
  u32 mapped_len ;
  int tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  mapped_len = 0U;
  tmp = pci_request_region(oct->pci_dev, baridx * 2, "LiquidIO");
  if (tmp != 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "pci_request_region failed for bar %d\n",
            baridx);
    return (1);
  } else {
  }
  oct->mmio[baridx].start = (oct->pci_dev)->resource[baridx * 2].start;
  oct->mmio[baridx].len = (oct->pci_dev)->resource[baridx * 2].start != 0ULL || (oct->pci_dev)->resource[baridx * 2].end != (oct->pci_dev)->resource[baridx * 2].start ? ((u32 )(oct->pci_dev)->resource[baridx * 2].end - (u32 )(oct->pci_dev)->resource[baridx * 2].start) + 1U : 0U;
  mapped_len = oct->mmio[baridx].len;
  if (mapped_len == 0U) {
    return (1);
  } else {
  }
  if (max_map_len != 0 && (u32 )max_map_len < mapped_len) {
    mapped_len = (u32 )max_map_len;
  } else {
  }
  tmp___0 = ioremap(oct->mmio[baridx].start, (unsigned long )mapped_len);
  oct->mmio[baridx].hw_addr = (u8 *)tmp___0;
  oct->mmio[baridx].mapped_len = mapped_len;
  descriptor.modname = "liquidio";
  descriptor.function = "octeon_map_pci_barx";
  descriptor.filename = "/work/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/net/ethernet/cavium/liquidio/octeon_main.h";
  descriptor.format = "BAR%d start: 0x%llx mapped %u of %u bytes\n";
  descriptor.lineno = 116U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "BAR%d start: 0x%llx mapped %u of %u bytes\n", baridx, oct->mmio[baridx].start,
                      mapped_len, oct->mmio[baridx].len);
  } else {
  }
  if ((unsigned long )oct->mmio[baridx].hw_addr == (unsigned long )((u8 *)0U)) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "error ioremap for bar %d\n",
            baridx);
    return (1);
  } else {
  }
  oct->mmio[baridx].done = 1U;
  return (0);
}
}
int lio_cn6xxx_soft_reset(struct octeon_device *oct ) ;
void lio_cn6xxx_enable_error_reporting(struct octeon_device *oct ) ;
void lio_cn6xxx_setup_pcie_mps(struct octeon_device *oct , enum octeon_pcie_mps mps ) ;
void lio_cn6xxx_setup_pcie_mrrs(struct octeon_device *oct , enum octeon_pcie_mrrs mrrs ) ;
void lio_cn6xxx_setup_global_input_regs(struct octeon_device *oct ) ;
void lio_cn6xxx_setup_global_output_regs(struct octeon_device *oct ) ;
void lio_cn6xxx_setup_iq_regs(struct octeon_device *oct , u32 iq_no ) ;
void lio_cn6xxx_setup_oq_regs(struct octeon_device *oct , u32 oq_no ) ;
void lio_cn6xxx_enable_io_queues(struct octeon_device *oct ) ;
void lio_cn6xxx_disable_io_queues(struct octeon_device *oct ) ;
void lio_cn6xxx_process_pcie_error_intr(struct octeon_device *oct , u64 intr64 ) ;
int lio_cn6xxx_process_droq_intr_regs(struct octeon_device *oct ) ;
irqreturn_t lio_cn6xxx_process_interrupt_regs(void *dev ) ;
void lio_cn6xxx_reinit_regs(struct octeon_device *oct ) ;
void lio_cn6xxx_bar1_idx_setup(struct octeon_device *oct , u64 core_addr , u32 idx ,
                               int valid ) ;
void lio_cn6xxx_bar1_idx_write(struct octeon_device *oct , u32 idx , u32 mask ) ;
u32 lio_cn6xxx_bar1_idx_read(struct octeon_device *oct , u32 idx ) ;
u32 lio_cn6xxx_update_read_index(struct octeon_device *oct , struct octeon_instr_queue *iq ) ;
void lio_cn6xxx_enable_interrupt(void *chip ) ;
void lio_cn6xxx_disable_interrupt(void *chip ) ;
void lio_cn6xxx_setup_reg_address(struct octeon_device *oct , void *chip , struct octeon_reg_list *reg_list ) ;
u32 lio_cn6xxx_coprocessor_clock(struct octeon_device *oct ) ;
int lio_cn6xxx_soft_reset(struct octeon_device *oct )
{
  struct _ddebug descriptor ;
  long tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  {
  writeq(255UL, (void volatile *)oct->mmio[0].hw_addr + 48U);
  descriptor.modname = "liquidio";
  descriptor.function = "lio_cn6xxx_soft_reset";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/cn66xx_device.c";
  descriptor.format = "BIST enabled for soft reset\n";
  descriptor.lineno = 47U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "BIST enabled for soft reset\n");
  } else {
  }
  lio_pci_writeq(oct, 1ULL, 289171558106936ULL);
  writeq(4660UL, (void volatile *)oct->mmio[0].hw_addr + 960U);
  lio_pci_readq(oct, 289171558106944ULL);
  lio_pci_writeq(oct, 1ULL, 289171558106944ULL);
  __asm__ volatile ("": : : "memory");
  __ms = 100UL;
  goto ldv_46675;
  ldv_46674:
  __const_udelay(4295000UL);
  ldv_46675:
  tmp___0 = __ms;
  __ms = __ms - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_46674;
  } else {
  }
  tmp___1 = readq((void const volatile *)oct->mmio[0].hw_addr + 960U);
  if ((unsigned long long )tmp___1 == 4660ULL) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Soft reset failed\n");
    return (1);
  } else {
  }
  descriptor___0.modname = "liquidio";
  descriptor___0.function = "lio_cn6xxx_soft_reset";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/cn66xx_device.c";
  descriptor___0.format = "Reset completed\n";
  descriptor___0.lineno = 66U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (oct->pci_dev)->dev),
                      "Reset completed\n");
  } else {
  }
  writeq(255UL, (void volatile *)oct->mmio[0].hw_addr + 48U);
  return (0);
}
}
void lio_cn6xxx_enable_error_reporting(struct octeon_device *oct )
{
  u32 val ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  pci_read_config_dword((struct pci_dev const *)oct->pci_dev, 120, & val);
  if ((val & 983040U) != 0U) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "PCI-E Link error detected: 0x%08x\n",
            val & 983040U);
  } else {
  }
  val = val | 15U;
  descriptor.modname = "liquidio";
  descriptor.function = "lio_cn6xxx_enable_error_reporting";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/cn66xx_device.c";
  descriptor.format = "Enabling PCI-E error reporting..\n";
  descriptor.lineno = 84U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "Enabling PCI-E error reporting..\n");
  } else {
  }
  pci_write_config_dword((struct pci_dev const *)oct->pci_dev, 120, val);
  return;
}
}
void lio_cn6xxx_setup_pcie_mps(struct octeon_device *oct , enum octeon_pcie_mps mps )
{
  u32 val ;
  u64 r64 ;
  {
  pci_read_config_dword((struct pci_dev const *)oct->pci_dev, 120, & val);
  if ((int )mps == -1) {
    mps = (enum octeon_pcie_mps )((val & 224U) >> 5);
  } else {
    val = val & 4294967071U;
    val = (u32 )((int )mps << 5) | val;
    pci_write_config_dword((struct pci_dev const *)oct->pci_dev, 120, val);
  }
  r64 = lio_pci_readq(oct, (unsigned long long )((int )oct->pcie_port * 16) + 526666069707008ULL);
  r64 = (u64 )((int )mps << 4) | r64;
  lio_pci_writeq(oct, r64, (unsigned long long )((int )oct->pcie_port * 16) + 526666069707008ULL);
  return;
}
}
void lio_cn6xxx_setup_pcie_mrrs(struct octeon_device *oct , enum octeon_pcie_mrrs mrrs )
{
  u32 val ;
  u64 r64 ;
  unsigned long tmp ;
  {
  pci_read_config_dword((struct pci_dev const *)oct->pci_dev, 120, & val);
  if ((int )mrrs == -1) {
    mrrs = (enum octeon_pcie_mrrs )((val & 28672U) >> 12);
  } else {
    val = val & 4294938623U;
    val = (u32 )((int )mrrs << 12) | val;
    pci_write_config_dword((struct pci_dev const *)oct->pci_dev, 120, val);
  }
  tmp = readq((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )(((int )oct->pcie_port + 984) * 16));
  r64 = (u64 )tmp;
  r64 = (u64 )mrrs | r64;
  writeq((unsigned long )r64, (void volatile *)oct->mmio[0].hw_addr + (unsigned long )(((int )oct->pcie_port + 984) * 16));
  r64 = lio_pci_readq(oct, (unsigned long long )((int )oct->pcie_port * 16) + 526666069707008ULL);
  r64 = (u64 )mrrs | r64;
  lio_pci_writeq(oct, r64, (unsigned long long )((int )oct->pcie_port * 16) + 526666069707008ULL);
  return;
}
}
u32 lio_cn6xxx_coprocessor_clock(struct octeon_device *oct )
{
  u64 tmp ;
  {
  tmp = lio_pci_readq(oct, 307863255782912ULL);
  return (((u32 )(tmp >> 24) & 63U) * 50U);
}
}
u32 lio_cn6xxx_get_oq_ticks(struct octeon_device *oct , u32 time_intr_in_us )
{
  u32 oqticks_per_us ;
  u32 tmp ;
  {
  tmp = lio_cn6xxx_coprocessor_clock(oct);
  oqticks_per_us = tmp;
  oqticks_per_us = oqticks_per_us * 1000U;
  oqticks_per_us = oqticks_per_us / 1024U;
  oqticks_per_us = oqticks_per_us * time_intr_in_us;
  oqticks_per_us = oqticks_per_us / 1000U;
  return (oqticks_per_us);
}
}
void lio_cn6xxx_setup_global_input_regs(struct octeon_device *oct )
{
  {
  writel(80U, (void volatile *)oct->mmio[0].hw_addr + 4464U);
  writeq(0xffffffffffffffffUL, (void volatile *)oct->mmio[0].hw_addr + 4512U);
  writeq((unsigned long )((unsigned long long )oct->pcie_port * 6148914691236517205ULL),
         (void volatile *)oct->mmio[0].hw_addr + 4528U);
  return;
}
}
static void lio_cn66xx_setup_pkt_ctl_regs(struct octeon_device *oct )
{
  u64 pktctl ;
  struct octeon_cn6xxx *cn6xxx ;
  unsigned long tmp ;
  {
  cn6xxx = (struct octeon_cn6xxx *)oct->chip;
  tmp = readq((void const volatile *)oct->mmio[0].hw_addr + 4640U);
  pktctl = (u64 )tmp;
  if ((unsigned int )(cn6xxx->conf)->oq.max_oqs <= 4U) {
    pktctl = pktctl & 0xffffffffffffffefULL;
  } else {
    pktctl = pktctl | 16ULL;
  }
  if ((unsigned int )*((unsigned char *)cn6xxx->conf + 1080UL) != 0U) {
    pktctl = pktctl | 15ULL;
  } else {
    pktctl = pktctl & 0xfffffffffffffff0ULL;
  }
  writeq((unsigned long )pktctl, (void volatile *)oct->mmio[0].hw_addr + 4640U);
  return;
}
}
void lio_cn6xxx_setup_global_output_regs(struct octeon_device *oct )
{
  u32 time_threshold ;
  struct octeon_cn6xxx *cn6xxx ;
  {
  cn6xxx = (struct octeon_cn6xxx *)oct->chip;
  writeq((unsigned long )((unsigned long long )oct->pcie_port * 6148914691236517205ULL),
         (void volatile *)oct->mmio[0].hw_addr + 4320U);
  if ((unsigned int )*((unsigned char *)cn6xxx->conf + 1080UL) != 0U) {
    writeq(32UL, (void volatile *)oct->mmio[0].hw_addr + 4480U);
  } else {
    writeq(0UL, (void volatile *)oct->mmio[0].hw_addr + 4480U);
  }
  writel(4294967295U, (void volatile *)oct->mmio[0].hw_addr + 4208U);
  writel(0U, (void volatile *)oct->mmio[0].hw_addr + 4304U);
  writel(4294967295U, (void volatile *)oct->mmio[0].hw_addr + 4224U);
  writel(0U, (void volatile *)oct->mmio[0].hw_addr + 4144U);
  writel(0U, (void volatile *)oct->mmio[0].hw_addr + 4160U);
  writeq(0UL, (void volatile *)oct->mmio[0].hw_addr + 4176U);
  writel(0U, (void volatile *)oct->mmio[0].hw_addr + 4240U);
  writel(0U, (void volatile *)oct->mmio[0].hw_addr + 4256U);
  writeq(6148914691236517205UL, (void volatile *)oct->mmio[0].hw_addr + 4272U);
  writel((unsigned int )(cn6xxx->conf)->oq.oq_intr_pkt, (void volatile *)oct->mmio[0].hw_addr + 4384U);
  time_threshold = lio_cn6xxx_get_oq_ticks(oct, (unsigned int )(cn6xxx->conf)->oq.oq_intr_time);
  writel(time_threshold, (void volatile *)oct->mmio[0].hw_addr + 4388U);
  return;
}
}
static int lio_cn6xxx_setup_device_regs(struct octeon_device *oct )
{
  {
  lio_cn6xxx_setup_pcie_mps(oct, -1);
  lio_cn6xxx_setup_pcie_mrrs(oct, 2);
  lio_cn6xxx_enable_error_reporting(oct);
  lio_cn6xxx_setup_global_input_regs(oct);
  lio_cn66xx_setup_pkt_ctl_regs(oct);
  lio_cn6xxx_setup_global_output_regs(oct);
  writeq(2097152UL, (void volatile *)oct->mmio[0].hw_addr + 736U);
  return (0);
}
}
void lio_cn6xxx_setup_iq_regs(struct octeon_device *oct , u32 iq_no )
{
  struct octeon_instr_queue *iq ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  iq = oct->instr_queue[iq_no];
  writeq(0UL, (void volatile *)oct->mmio[0].hw_addr + (unsigned long )((iq_no + 832U) * 16U));
  writeq((unsigned long )iq->base_addr_dma, (void volatile *)oct->mmio[0].hw_addr + (unsigned long )((iq_no + 640U) * 16U));
  writel(iq->max_count, (void volatile *)oct->mmio[0].hw_addr + (unsigned long )((iq_no + 768U) * 16U));
  iq->doorbell_reg = (void *)oct->mmio[0].hw_addr + (unsigned long )((iq_no + 704U) * 16U);
  iq->inst_cnt_reg = (void *)oct->mmio[0].hw_addr + (unsigned long )((iq_no + 512U) * 16U);
  descriptor.modname = "liquidio";
  descriptor.function = "lio_cn6xxx_setup_iq_regs";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/cn66xx_device.c";
  descriptor.format = "InstQ[%d]:dbell reg @ 0x%p instcnt_reg @ 0x%p\n";
  descriptor.lineno = 303U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "InstQ[%d]:dbell reg @ 0x%p instcnt_reg @ 0x%p\n", iq_no, iq->doorbell_reg,
                      iq->inst_cnt_reg);
  } else {
  }
  iq->reset_instr_cnt = readl((void const volatile *)iq->inst_cnt_reg);
  return;
}
}
static void lio_cn66xx_setup_iq_regs(struct octeon_device *oct , u32 iq_no )
{
  {
  lio_cn6xxx_setup_iq_regs(oct, iq_no);
  writeq(0xffffffff00000000UL, (void volatile *)oct->mmio[0].hw_addr + (unsigned long )((iq_no + 896U) * 16U));
  return;
}
}
void lio_cn6xxx_setup_oq_regs(struct octeon_device *oct , u32 oq_no )
{
  u32 intr ;
  struct octeon_droq *droq ;
  {
  droq = oct->droq[oq_no];
  writeq(droq->desc_ring_dma, (void volatile *)oct->mmio[0].hw_addr + (unsigned long )((oq_no + 320U) * 16U));
  writel(droq->max_count, (void volatile *)oct->mmio[0].hw_addr + (unsigned long )((oq_no + 448U) * 16U));
  writel(droq->buffer_size | 524288U, (void volatile *)oct->mmio[0].hw_addr + (unsigned long )((oq_no + 192U) * 16U));
  droq->pkts_sent_reg = (void *)oct->mmio[0].hw_addr + (unsigned long )((oq_no + 576U) * 16U);
  droq->pkts_credit_reg = (void *)oct->mmio[0].hw_addr + (unsigned long )((oq_no + 384U) * 16U);
  intr = readl((void const volatile *)oct->mmio[0].hw_addr + 4448U);
  intr = (u32 )(1 << (int )oq_no) | intr;
  writel(intr, (void volatile *)oct->mmio[0].hw_addr + 4448U);
  intr = readl((void const volatile *)oct->mmio[0].hw_addr + 4432U);
  intr = (u32 )(1 << (int )oq_no) | intr;
  writel(intr, (void volatile *)oct->mmio[0].hw_addr + 4432U);
  return;
}
}
void lio_cn6xxx_enable_io_queues(struct octeon_device *oct )
{
  u32 mask ;
  {
  mask = readl((void const volatile *)oct->mmio[0].hw_addr + 4128U);
  mask = oct->io_qmask.iq64B | mask;
  writel(mask, (void volatile *)oct->mmio[0].hw_addr + 4128U);
  mask = readl((void const volatile *)oct->mmio[0].hw_addr + 4096U);
  mask = oct->io_qmask.iq | mask;
  writel(mask, (void volatile *)oct->mmio[0].hw_addr + 4096U);
  mask = readl((void const volatile *)oct->mmio[0].hw_addr + 4112U);
  mask = oct->io_qmask.oq | mask;
  writel(mask, (void volatile *)oct->mmio[0].hw_addr + 4112U);
  return;
}
}
void lio_cn6xxx_disable_io_queues(struct octeon_device *oct )
{
  u32 mask ;
  u32 i ;
  u32 loop ;
  u32 d32 ;
  u32 tmp ;
  u32 tmp___0 ;
  {
  loop = 250U;
  mask = readl((void const volatile *)oct->mmio[0].hw_addr + 4096U);
  mask = oct->io_qmask.iq ^ mask;
  writel(mask, (void volatile *)oct->mmio[0].hw_addr + 4096U);
  mask = oct->io_qmask.iq;
  d32 = readl((void const volatile *)oct->mmio[0].hw_addr + 4596U);
  goto ldv_46749;
  ldv_46748:
  d32 = readl((void const volatile *)oct->mmio[0].hw_addr + 4596U);
  schedule_timeout_uninterruptible(1L);
  ldv_46749: ;
  if ((d32 & mask) != mask) {
    tmp = loop;
    loop = loop - 1U;
    if (tmp != 0U) {
      goto ldv_46748;
    } else {
      goto ldv_46750;
    }
  } else {
  }
  ldv_46750:
  i = 0U;
  goto ldv_46753;
  ldv_46752: ;
  if ((((unsigned long )oct->io_qmask.iq >> (int )i) & 1UL) == 0UL) {
    goto ldv_46751;
  } else {
  }
  writel(4294967295U, (void volatile *)oct->mmio[0].hw_addr + (unsigned long )((i + 704U) * 16U));
  d32 = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )((i + 704U) * 16U));
  ldv_46751:
  i = i + 1U;
  ldv_46753: ;
  if (i <= 31U) {
    goto ldv_46752;
  } else {
  }
  mask = readl((void const volatile *)oct->mmio[0].hw_addr + 4112U);
  mask = oct->io_qmask.oq ^ mask;
  writel(mask, (void volatile *)oct->mmio[0].hw_addr + 4112U);
  loop = 250U;
  mask = oct->io_qmask.oq;
  d32 = readl((void const volatile *)oct->mmio[0].hw_addr + 4592U);
  goto ldv_46756;
  ldv_46755:
  d32 = readl((void const volatile *)oct->mmio[0].hw_addr + 4592U);
  schedule_timeout_uninterruptible(1L);
  ldv_46756: ;
  if ((d32 & mask) != mask) {
    tmp___0 = loop;
    loop = loop - 1U;
    if (tmp___0 != 0U) {
      goto ldv_46755;
    } else {
      goto ldv_46757;
    }
  } else {
  }
  ldv_46757:
  i = 0U;
  goto ldv_46760;
  ldv_46759: ;
  if ((((unsigned long )oct->io_qmask.oq >> (int )i) & 1UL) == 0UL) {
    goto ldv_46758;
  } else {
  }
  writel(4294967295U, (void volatile *)oct->mmio[0].hw_addr + (unsigned long )((i + 384U) * 16U));
  d32 = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )((i + 384U) * 16U));
  d32 = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )((i + 576U) * 16U));
  writel(d32, (void volatile *)oct->mmio[0].hw_addr + (unsigned long )((i + 576U) * 16U));
  ldv_46758:
  i = i + 1U;
  ldv_46760: ;
  if (i <= 31U) {
    goto ldv_46759;
  } else {
  }
  d32 = readl((void const volatile *)oct->mmio[0].hw_addr + 4400U);
  if (d32 != 0U) {
    writel(d32, (void volatile *)oct->mmio[0].hw_addr + 4400U);
  } else {
  }
  d32 = readl((void const volatile *)oct->mmio[0].hw_addr + 4416U);
  if (d32 != 0U) {
    writel(d32, (void volatile *)oct->mmio[0].hw_addr + 4416U);
  } else {
  }
  return;
}
}
void lio_cn6xxx_reinit_regs(struct octeon_device *oct )
{
  u32 i ;
  {
  i = 0U;
  goto ldv_46768;
  ldv_46767: ;
  if ((((unsigned long )oct->io_qmask.iq >> (int )i) & 1UL) == 0UL) {
    goto ldv_46766;
  } else {
  }
  (*(oct->fn_list.setup_iq_regs))(oct, i);
  ldv_46766:
  i = i + 1U;
  ldv_46768: ;
  if (i <= 31U) {
    goto ldv_46767;
  } else {
  }
  i = 0U;
  goto ldv_46772;
  ldv_46771: ;
  if ((((unsigned long )oct->io_qmask.oq >> (int )i) & 1UL) == 0UL) {
    goto ldv_46770;
  } else {
  }
  (*(oct->fn_list.setup_oq_regs))(oct, i);
  ldv_46770:
  i = i + 1U;
  ldv_46772: ;
  if (i <= 31U) {
    goto ldv_46771;
  } else {
  }
  (*(oct->fn_list.setup_device_regs))(oct);
  (*(oct->fn_list.enable_interrupt))(oct->chip);
  (*(oct->fn_list.enable_io_queues))(oct);
  i = 0U;
  goto ldv_46776;
  ldv_46775: ;
  if ((((unsigned long )oct->io_qmask.oq >> (int )i) & 1UL) == 0UL) {
    goto ldv_46774;
  } else {
  }
  writel((oct->droq[i])->max_count, (void volatile *)(oct->droq[i])->pkts_credit_reg);
  ldv_46774:
  i = i + 1U;
  ldv_46776: ;
  if (i <= 31U) {
    goto ldv_46775;
  } else {
  }
  return;
}
}
void lio_cn6xxx_bar1_idx_setup(struct octeon_device *oct , u64 core_addr , u32 idx ,
                               int valid )
{
  u64 bar1 ;
  {
  if (valid == 0) {
    bar1 = lio_pci_readq(oct, ((unsigned long long )oct->pcie_port * 16777216ULL + (unsigned long long )(idx * 8U)) + 307866477002920ULL);
    lio_pci_writeq(oct, bar1 & 4294967294ULL, ((unsigned long long )oct->pcie_port * 16777216ULL + (unsigned long long )(idx * 8U)) + 307866477002920ULL);
    bar1 = lio_pci_readq(oct, ((unsigned long long )oct->pcie_port * 16777216ULL + (unsigned long long )(idx * 8U)) + 307866477002920ULL);
    return;
  } else {
  }
  lio_pci_writeq(oct, ((core_addr >> 22) << 4) | 11ULL, ((unsigned long long )oct->pcie_port * 16777216ULL + (unsigned long long )(idx * 8U)) + 307866477002920ULL);
  bar1 = lio_pci_readq(oct, ((unsigned long long )oct->pcie_port * 16777216ULL + (unsigned long long )(idx * 8U)) + 307866477002920ULL);
  return;
}
}
void lio_cn6xxx_bar1_idx_write(struct octeon_device *oct , u32 idx , u32 mask )
{
  {
  lio_pci_writeq(oct, (u64 )mask, ((unsigned long long )oct->pcie_port * 16777216ULL + (unsigned long long )(idx * 8U)) + 307866477002920ULL);
  return;
}
}
u32 lio_cn6xxx_bar1_idx_read(struct octeon_device *oct , u32 idx )
{
  u64 tmp ;
  {
  tmp = lio_pci_readq(oct, ((unsigned long long )oct->pcie_port * 16777216ULL + (unsigned long long )(idx * 8U)) + 307866477002920ULL);
  return ((u32 )tmp);
}
}
u32 lio_cn6xxx_update_read_index(struct octeon_device *oct , struct octeon_instr_queue *iq )
{
  u32 new_idx ;
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)iq->inst_cnt_reg);
  new_idx = tmp;
  if (iq->reset_instr_cnt < new_idx) {
    new_idx = new_idx - iq->reset_instr_cnt;
  } else {
    new_idx = new_idx - iq->reset_instr_cnt;
  }
  new_idx = new_idx % iq->max_count;
  return (new_idx);
}
}
void lio_cn6xxx_enable_interrupt(void *chip )
{
  struct octeon_cn6xxx *cn6xxx ;
  u64 mask ;
  {
  cn6xxx = (struct octeon_cn6xxx *)chip;
  mask = cn6xxx->intr_mask64 | 4294967296ULL;
  writeq((unsigned long )mask, (void volatile *)cn6xxx->intr_enb_reg64);
  return;
}
}
void lio_cn6xxx_disable_interrupt(void *chip )
{
  struct octeon_cn6xxx *cn6xxx ;
  {
  cn6xxx = (struct octeon_cn6xxx *)chip;
  writeq(0UL, (void volatile *)cn6xxx->intr_enb_reg64);
  __asm__ volatile ("": : : "memory");
  return;
}
}
static void lio_cn6xxx_get_pcie_qlmport(struct octeon_device *oct )
{
  unsigned int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = readl((void const volatile *)oct->mmio[0].hw_addr + 15872U);
  oct->pcie_port = (unsigned int )((u16 )tmp) & 255U;
  descriptor.modname = "liquidio";
  descriptor.function = "lio_cn6xxx_get_pcie_qlmport";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/cn66xx_device.c";
  descriptor.format = "Using PCIE Port %d\n";
  descriptor.lineno = 547U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "Using PCIE Port %d\n", (int )oct->pcie_port);
  } else {
  }
  return;
}
}
void lio_cn6xxx_process_pcie_error_intr(struct octeon_device *oct , u64 intr64 )
{
  {
  dev_err((struct device const *)(& (oct->pci_dev)->dev), "Error Intr: 0x%016llx\n",
          (long long )intr64);
  return;
}
}
int lio_cn6xxx_process_droq_intr_regs(struct octeon_device *oct )
{
  struct octeon_droq *droq ;
  u32 oq_no ;
  u32 pkt_count ;
  u32 droq_time_mask ;
  u32 droq_mask ;
  u32 droq_int_enb ;
  u32 droq_cnt_enb ;
  u32 droq_cnt_mask ;
  u32 value ;
  u32 reg ;
  struct octeon_cn6xxx *cn6xxx ;
  {
  droq_cnt_enb = readl((void const volatile *)oct->mmio[0].hw_addr + 4432U);
  droq_cnt_mask = readl((void const volatile *)oct->mmio[0].hw_addr + 4400U);
  droq_mask = droq_cnt_mask & droq_cnt_enb;
  droq_time_mask = readl((void const volatile *)oct->mmio[0].hw_addr + 4416U);
  droq_int_enb = readl((void const volatile *)oct->mmio[0].hw_addr + 4448U);
  droq_mask = (droq_time_mask & droq_int_enb) | droq_mask;
  droq_mask = oct->io_qmask.oq & droq_mask;
  oct->droq_intr = 0ULL;
  oq_no = 0U;
  goto ldv_46833;
  ldv_46832: ;
  if (((u32 )(1 << (int )oq_no) & droq_mask) == 0U) {
    goto ldv_46828;
  } else {
  }
  droq = oct->droq[oq_no];
  pkt_count = octeon_droq_check_hw_for_pkts(oct, droq);
  if (pkt_count != 0U) {
    oct->droq_intr = oct->droq_intr | (1ULL << (int )oq_no);
    if (droq->ops.poll_mode != 0U) {
      cn6xxx = (struct octeon_cn6xxx *)oct->chip;
      spin_lock(& cn6xxx->lock_for_droq_int_enb_reg);
      reg = 4448U;
      value = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )reg);
      value = (u32 )(~ (1 << (int )oq_no)) & value;
      writel(value, (void volatile *)oct->mmio[0].hw_addr + (unsigned long )reg);
      reg = 4432U;
      value = readl((void const volatile *)oct->mmio[0].hw_addr + (unsigned long )reg);
      value = (u32 )(~ (1 << (int )oq_no)) & value;
      writel(value, (void volatile *)oct->mmio[0].hw_addr + (unsigned long )reg);
      __asm__ volatile ("": : : "memory");
      spin_unlock(& cn6xxx->lock_for_droq_int_enb_reg);
    } else {
    }
  } else {
  }
  ldv_46828:
  oq_no = oq_no + 1U;
  ldv_46833: ;
  if (oq_no <= 31U) {
    goto ldv_46832;
  } else {
  }
  droq_time_mask = oct->io_qmask.oq & droq_time_mask;
  droq_cnt_mask = oct->io_qmask.oq & droq_cnt_mask;
  if (droq_time_mask != 0U) {
    writel(droq_time_mask, (void volatile *)oct->mmio[0].hw_addr + 4416U);
  } else {
  }
  if (droq_cnt_mask != 0U) {
    writel(droq_cnt_mask, (void volatile *)oct->mmio[0].hw_addr + 4400U);
  } else {
  }
  return (0);
}
}
irqreturn_t lio_cn6xxx_process_interrupt_regs(void *dev )
{
  struct octeon_device *oct ;
  struct octeon_cn6xxx *cn6xxx ;
  u64 intr64 ;
  unsigned long tmp ;
  {
  oct = (struct octeon_device *)dev;
  cn6xxx = (struct octeon_cn6xxx *)oct->chip;
  tmp = readq((void const volatile *)cn6xxx->intr_sum_reg64);
  intr64 = (u64 )tmp;
  if (intr64 == 0ULL || intr64 == 0xffffffffffffffffULL) {
    return (0);
  } else {
  }
  oct->int_status = 0U;
  if ((intr64 & 1440870405781896972ULL) != 0ULL) {
    lio_cn6xxx_process_pcie_error_intr(oct, intr64);
  } else {
  }
  if ((intr64 & 48ULL) != 0ULL) {
    lio_cn6xxx_process_droq_intr_regs(oct);
    oct->int_status = oct->int_status | 4U;
  } else {
  }
  if ((intr64 & 4294967296ULL) != 0ULL) {
    oct->int_status = oct->int_status | 1U;
  } else {
  }
  if ((intr64 & 8589934592ULL) != 0ULL) {
    oct->int_status = oct->int_status | 2U;
  } else {
  }
  writeq((unsigned long )intr64, (void volatile *)cn6xxx->intr_sum_reg64);
  return (1);
}
}
void lio_cn6xxx_setup_reg_address(struct octeon_device *oct , void *chip , struct octeon_reg_list *reg_list )
{
  u8 *bar0_pciaddr ;
  struct octeon_cn6xxx *cn6xxx ;
  {
  bar0_pciaddr = oct->mmio[0].hw_addr;
  cn6xxx = (struct octeon_cn6xxx *)chip;
  reg_list->pci_win_wr_addr_hi = (u32 *)bar0_pciaddr + 4U;
  reg_list->pci_win_wr_addr_lo = (u32 *)bar0_pciaddr;
  reg_list->pci_win_wr_addr = (u64 *)bar0_pciaddr;
  reg_list->pci_win_rd_addr_hi = (u32 *)bar0_pciaddr + 20U;
  reg_list->pci_win_rd_addr_lo = (u32 *)bar0_pciaddr + 16U;
  reg_list->pci_win_rd_addr = (u64 *)bar0_pciaddr + 16U;
  reg_list->pci_win_wr_data_hi = (u32 *)bar0_pciaddr + 36U;
  reg_list->pci_win_wr_data_lo = (u32 *)bar0_pciaddr + 32U;
  reg_list->pci_win_wr_data = (u64 *)bar0_pciaddr + 32U;
  reg_list->pci_win_rd_data_hi = (u32 *)bar0_pciaddr + 68U;
  reg_list->pci_win_rd_data_lo = (u32 *)bar0_pciaddr + 64U;
  reg_list->pci_win_rd_data = (u64 *)bar0_pciaddr + 64U;
  lio_cn6xxx_get_pcie_qlmport(oct);
  cn6xxx->intr_sum_reg64 = bar0_pciaddr + 816UL;
  cn6xxx->intr_mask64 = 1440870624826212156ULL;
  cn6xxx->intr_enb_reg64 = bar0_pciaddr + (unsigned long )(((int )oct->pcie_port + 52) * 16);
  return;
}
}
int lio_setup_cn66xx_octeon_device(struct octeon_device *oct )
{
  struct octeon_cn6xxx *cn6xxx ;
  int tmp ;
  int tmp___0 ;
  struct lock_class_key __key ;
  void *tmp___1 ;
  u32 tmp___2 ;
  {
  cn6xxx = (struct octeon_cn6xxx *)oct->chip;
  tmp = octeon_map_pci_barx(oct, 0, 0);
  if (tmp != 0) {
    return (1);
  } else {
  }
  tmp___0 = octeon_map_pci_barx(oct, 1, 12582912);
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s CN66XX BAR1 map failed\n",
            "lio_setup_cn66xx_octeon_device");
    octeon_unmap_pci_barx(oct, 0);
    return (1);
  } else {
  }
  spinlock_check(& cn6xxx->lock_for_droq_int_enb_reg);
  __raw_spin_lock_init(& cn6xxx->lock_for_droq_int_enb_reg.__annonCompField18.rlock,
                       "&(&cn6xxx->lock_for_droq_int_enb_reg)->rlock", & __key);
  oct->fn_list.setup_iq_regs = & lio_cn66xx_setup_iq_regs;
  oct->fn_list.setup_oq_regs = & lio_cn6xxx_setup_oq_regs;
  oct->fn_list.soft_reset = & lio_cn6xxx_soft_reset;
  oct->fn_list.setup_device_regs = & lio_cn6xxx_setup_device_regs;
  oct->fn_list.reinit_regs = & lio_cn6xxx_reinit_regs;
  oct->fn_list.update_iq_read_idx = & lio_cn6xxx_update_read_index;
  oct->fn_list.bar1_idx_setup = & lio_cn6xxx_bar1_idx_setup;
  oct->fn_list.bar1_idx_write = & lio_cn6xxx_bar1_idx_write;
  oct->fn_list.bar1_idx_read = & lio_cn6xxx_bar1_idx_read;
  oct->fn_list.process_interrupt_regs = & lio_cn6xxx_process_interrupt_regs;
  oct->fn_list.enable_interrupt = & lio_cn6xxx_enable_interrupt;
  oct->fn_list.disable_interrupt = & lio_cn6xxx_disable_interrupt;
  oct->fn_list.enable_io_queues = & lio_cn6xxx_enable_io_queues;
  oct->fn_list.disable_io_queues = & lio_cn6xxx_disable_io_queues;
  lio_cn6xxx_setup_reg_address(oct, oct->chip, & oct->reg_list);
  tmp___1 = oct_get_config_info(oct, 0);
  cn6xxx->conf = (struct octeon_config *)tmp___1;
  if ((unsigned long )cn6xxx->conf == (unsigned long )((struct octeon_config *)0)) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s No Config found for CN66XX\n",
            "lio_setup_cn66xx_octeon_device");
    octeon_unmap_pci_barx(oct, 0);
    octeon_unmap_pci_barx(oct, 1);
    return (1);
  } else {
  }
  tmp___2 = lio_cn6xxx_coprocessor_clock(oct);
  oct->coproc_clock_rate = (unsigned long long )tmp___2 * 1000000ULL;
  return (0);
}
}
int lio_validate_cn6xxx_config_info(struct octeon_device *oct , struct octeon_config *conf6xxx )
{
  {
  if ((unsigned int )conf6xxx->iq.max_iqs > 32U) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s: Num IQ (%d) exceeds Max (%d)\n",
            "lio_validate_cn6xxx_config_info", (int )conf6xxx->iq.max_iqs, 32);
    return (1);
  } else {
  }
  if ((unsigned int )conf6xxx->oq.max_oqs > 32U) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s: Num OQ (%d) exceeds Max (%d)\n",
            "lio_validate_cn6xxx_config_info", (int )conf6xxx->oq.max_oqs, 32);
    return (1);
  } else {
  }
  if (conf6xxx->iq.instr_type != 32U && conf6xxx->iq.instr_type != 64U) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s: Invalid instr type for IQ\n",
            "lio_validate_cn6xxx_config_info");
    return (1);
  } else {
  }
  if (*((unsigned long *)conf6xxx + 5UL) == 0UL || *((unsigned int *)conf6xxx + 11UL) == 0U) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s: Invalid parameter for OQ\n",
            "lio_validate_cn6xxx_config_info");
    return (1);
  } else {
  }
  if ((unsigned int )conf6xxx->oq.oq_intr_time == 0U) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s: No Time Interrupt for OQ\n",
            "lio_validate_cn6xxx_config_info");
    return (1);
  } else {
  }
  return (0);
}
}
bool ldv_queue_work_on_113(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_6(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_114(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_6(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_115(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_6(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_116(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_6(2);
  return;
}
}
bool ldv_queue_delayed_work_on_117(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_6(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
bool ldv_queue_work_on_127(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_129(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_128(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_131(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_130(struct workqueue_struct *ldv_func_arg1 ) ;
int lio_is_210nv(struct octeon_device *oct ) ;
static void lio_cn68xx_set_dpi_regs(struct octeon_device *oct )
{
  u32 i ;
  u32 fifo_sizes[6U] ;
  struct _ddebug descriptor ;
  u64 tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  u64 tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  u64 tmp___3 ;
  long tmp___4 ;
  {
  fifo_sizes[0] = 3U;
  fifo_sizes[1] = 3U;
  fifo_sizes[2] = 1U;
  fifo_sizes[3] = 1U;
  fifo_sizes[4] = 1U;
  fifo_sizes[5] = 8U;
  lio_pci_writeq(oct, 504403158265544704ULL, 526666069704776ULL);
  descriptor.modname = "liquidio";
  descriptor.function = "lio_cn68xx_set_dpi_regs";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/cn68xx_device.c";
  descriptor.format = "DPI_DMA_CONTROL: 0x%016llx\n";
  descriptor.lineno = 52U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = lio_pci_readq(oct, 526666069704776ULL);
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "DPI_DMA_CONTROL: 0x%016llx\n", tmp);
  } else {
  }
  i = 0U;
  goto ldv_46681;
  ldv_46680:
  lio_pci_writeq(oct, 0ULL, (unsigned long long )(i * 8U) + 526666069704832ULL);
  lio_pci_writeq(oct, (u64 )fifo_sizes[i], (unsigned long long )(i * 8U) + 526666069706880ULL);
  descriptor___0.modname = "liquidio";
  descriptor___0.function = "lio_cn68xx_set_dpi_regs";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/cn68xx_device.c";
  descriptor___0.format = "DPI_ENG_BUF%d: 0x%016llx\n";
  descriptor___0.lineno = 62U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = lio_pci_readq(oct, (unsigned long long )(i * 8U) + 526666069706880ULL);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (oct->pci_dev)->dev),
                      "DPI_ENG_BUF%d: 0x%016llx\n", i, tmp___1);
  } else {
  }
  i = i + 1U;
  ldv_46681: ;
  if (i <= 5U) {
    goto ldv_46680;
  } else {
  }
  lio_pci_writeq(oct, 1ULL, 526666069704768ULL);
  descriptor___1.modname = "liquidio";
  descriptor___1.function = "lio_cn68xx_set_dpi_regs";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/cn68xx_device.c";
  descriptor___1.format = "DPI_CTL: 0x%016llx\n";
  descriptor___1.lineno = 71U;
  descriptor___1.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = lio_pci_readq(oct, 526666069704768ULL);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& (oct->pci_dev)->dev),
                      "DPI_CTL: 0x%016llx\n", tmp___3);
  } else {
  }
  return;
}
}
static int lio_cn68xx_soft_reset(struct octeon_device *oct )
{
  {
  lio_cn6xxx_soft_reset(oct);
  lio_cn68xx_set_dpi_regs(oct);
  return (0);
}
}
static void lio_cn68xx_setup_pkt_ctl_regs(struct octeon_device *oct )
{
  struct octeon_cn6xxx *cn68xx ;
  u64 pktctl ;
  u64 tx_pipe ;
  u64 max_oqs ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  cn68xx = (struct octeon_cn6xxx *)oct->chip;
  tmp = readq((void const volatile *)oct->mmio[0].hw_addr + 4640U);
  pktctl = (u64 )tmp;
  max_oqs = (u64 )(((struct octeon_cn6xxx *)oct->chip)->conf)->oq.max_oqs;
  tmp___0 = readq((void const volatile *)oct->mmio[0].hw_addr + 4656U);
  tx_pipe = (u64 )tmp___0;
  tx_pipe = tx_pipe & 0xffffffffff00ffffULL;
  tx_pipe = (max_oqs << 16) | tx_pipe;
  writeq((unsigned long )tx_pipe, (void volatile *)oct->mmio[0].hw_addr + 4656U);
  if ((unsigned int )*((unsigned char *)cn68xx->conf + 1080UL) != 0U) {
    pktctl = pktctl | 15ULL;
  } else {
    pktctl = pktctl & 0xfffffffffffffff0ULL;
  }
  writeq((unsigned long )pktctl, (void volatile *)oct->mmio[0].hw_addr + 4640U);
  return;
}
}
static int lio_cn68xx_setup_device_regs(struct octeon_device *oct )
{
  {
  lio_cn6xxx_setup_pcie_mps(oct, -1);
  lio_cn6xxx_setup_pcie_mrrs(oct, 1);
  lio_cn6xxx_enable_error_reporting(oct);
  lio_cn6xxx_setup_global_input_regs(oct);
  lio_cn68xx_setup_pkt_ctl_regs(oct);
  lio_cn6xxx_setup_global_output_regs(oct);
  writeq(2097152UL, (void volatile *)oct->mmio[0].hw_addr + 736U);
  return (0);
}
}
__inline static void lio_cn68xx_vendor_message_fix(struct octeon_device *oct )
{
  u32 val ;
  {
  val = 0U;
  pci_read_config_dword((struct pci_dev const *)oct->pci_dev, 1824, & val);
  val = val | 3U;
  pci_write_config_dword((struct pci_dev const *)oct->pci_dev, 1824, val);
  return;
}
}
int lio_is_210nv(struct octeon_device *oct )
{
  u64 mio_qlm4_cfg ;
  u64 tmp ;
  {
  tmp = lio_pci_readq(oct, 307863255782832ULL);
  mio_qlm4_cfg = tmp;
  return ((mio_qlm4_cfg & 7ULL) == 0ULL);
}
}
int lio_setup_cn68xx_octeon_device(struct octeon_device *oct )
{
  struct octeon_cn6xxx *cn68xx ;
  u16 card_type ;
  int tmp ;
  int tmp___0 ;
  struct lock_class_key __key ;
  int tmp___1 ;
  void *tmp___2 ;
  u32 tmp___3 ;
  {
  cn68xx = (struct octeon_cn6xxx *)oct->chip;
  card_type = 2U;
  tmp = octeon_map_pci_barx(oct, 0, 0);
  if (tmp != 0) {
    return (1);
  } else {
  }
  tmp___0 = octeon_map_pci_barx(oct, 1, 12582912);
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s CN68XX BAR1 map failed\n",
            "lio_setup_cn68xx_octeon_device");
    octeon_unmap_pci_barx(oct, 0);
    return (1);
  } else {
  }
  spinlock_check(& cn68xx->lock_for_droq_int_enb_reg);
  __raw_spin_lock_init(& cn68xx->lock_for_droq_int_enb_reg.__annonCompField18.rlock,
                       "&(&cn68xx->lock_for_droq_int_enb_reg)->rlock", & __key);
  oct->fn_list.setup_iq_regs = & lio_cn6xxx_setup_iq_regs;
  oct->fn_list.setup_oq_regs = & lio_cn6xxx_setup_oq_regs;
  oct->fn_list.process_interrupt_regs = & lio_cn6xxx_process_interrupt_regs;
  oct->fn_list.soft_reset = & lio_cn68xx_soft_reset;
  oct->fn_list.setup_device_regs = & lio_cn68xx_setup_device_regs;
  oct->fn_list.reinit_regs = & lio_cn6xxx_reinit_regs;
  oct->fn_list.update_iq_read_idx = & lio_cn6xxx_update_read_index;
  oct->fn_list.bar1_idx_setup = & lio_cn6xxx_bar1_idx_setup;
  oct->fn_list.bar1_idx_write = & lio_cn6xxx_bar1_idx_write;
  oct->fn_list.bar1_idx_read = & lio_cn6xxx_bar1_idx_read;
  oct->fn_list.enable_interrupt = & lio_cn6xxx_enable_interrupt;
  oct->fn_list.disable_interrupt = & lio_cn6xxx_disable_interrupt;
  oct->fn_list.enable_io_queues = & lio_cn6xxx_enable_io_queues;
  oct->fn_list.disable_io_queues = & lio_cn6xxx_disable_io_queues;
  lio_cn6xxx_setup_reg_address(oct, oct->chip, & oct->reg_list);
  tmp___1 = lio_is_210nv(oct);
  if (tmp___1 != 0) {
    card_type = 1U;
  } else {
  }
  tmp___2 = oct_get_config_info(oct, (int )card_type);
  cn68xx->conf = (struct octeon_config *)tmp___2;
  if ((unsigned long )cn68xx->conf == (unsigned long )((struct octeon_config *)0)) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s No Config found for CN68XX %s\n",
            "lio_setup_cn68xx_octeon_device", (unsigned int )card_type == 2U ? (char *)"410nv" : (char *)"210nv");
    octeon_unmap_pci_barx(oct, 0);
    octeon_unmap_pci_barx(oct, 1);
    return (1);
  } else {
  }
  tmp___3 = lio_cn6xxx_coprocessor_clock(oct);
  oct->coproc_clock_rate = (unsigned long long )tmp___3 * 1000000ULL;
  lio_cn68xx_vendor_message_fix(oct);
  return (0);
}
}
bool ldv_queue_work_on_127(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_6(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_128(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_6(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_129(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_6(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_130(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_6(2);
  return;
}
}
bool ldv_queue_delayed_work_on_131(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_6(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_141(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_143(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_142(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_145(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_144(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static unsigned char readb(void const volatile *addr )
{
  unsigned char ret ;
  {
  __asm__ volatile ("movb %1,%0": "=q" (ret): "m" (*((unsigned char volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writeb(unsigned char val , void volatile *addr )
{
  {
  __asm__ volatile ("movb %0,%1": : "q" (val), "m" (*((unsigned char volatile *)addr)): "memory");
  return;
}
}
u64 octeon_read_device_mem64(struct octeon_device *oct , u64 coreaddr ) ;
u32 octeon_read_device_mem32(struct octeon_device *oct , u64 coreaddr ) ;
void octeon_write_device_mem32(struct octeon_device *oct , u64 coreaddr , u32 val ) ;
void octeon_pci_read_core_mem(struct octeon_device *oct , u64 coreaddr , u8 *buf ,
                              u32 len ) ;
__inline static void octeon_toggle_bar1_swapmode(struct octeon_device *oct , u32 idx )
{
  {
  return;
}
}
static void octeon_pci_fastwrite(struct octeon_device *oct , u8 *mapped_addr , u8 *hostbuf ,
                                 u32 len )
{
  u8 *tmp ;
  u8 *tmp___0 ;
  u8 *tmp___1 ;
  u8 *tmp___2 ;
  u32 tmp___3 ;
  {
  goto ldv_46683;
  ldv_46682:
  tmp = mapped_addr;
  mapped_addr = mapped_addr + 1;
  tmp___0 = hostbuf;
  hostbuf = hostbuf + 1;
  writeb((int )*tmp___0, (void volatile *)tmp);
  len = len - 1U;
  ldv_46683: ;
  if (len != 0U && ((unsigned long )mapped_addr & 7UL) != 0UL) {
    goto ldv_46682;
  } else {
  }
  octeon_toggle_bar1_swapmode(oct, 2U);
  goto ldv_46686;
  ldv_46685:
  writeq((unsigned long )*((u64 *)hostbuf), (void volatile *)mapped_addr);
  mapped_addr = mapped_addr + 8UL;
  hostbuf = hostbuf + 8UL;
  len = len - 8U;
  ldv_46686: ;
  if (len > 7U) {
    goto ldv_46685;
  } else {
  }
  octeon_toggle_bar1_swapmode(oct, 2U);
  goto ldv_46689;
  ldv_46688:
  tmp___1 = mapped_addr;
  mapped_addr = mapped_addr + 1;
  tmp___2 = hostbuf;
  hostbuf = hostbuf + 1;
  writeb((int )*tmp___2, (void volatile *)tmp___1);
  ldv_46689:
  tmp___3 = len;
  len = len - 1U;
  if (tmp___3 != 0U) {
    goto ldv_46688;
  } else {
  }
  return;
}
}
static void octeon_pci_fastread(struct octeon_device *oct , u8 *mapped_addr , u8 *hostbuf ,
                                u32 len )
{
  u8 *tmp ;
  u8 *tmp___0 ;
  unsigned long tmp___1 ;
  u8 *tmp___2 ;
  u8 *tmp___3 ;
  u32 tmp___4 ;
  {
  goto ldv_46698;
  ldv_46697:
  tmp = hostbuf;
  hostbuf = hostbuf + 1;
  tmp___0 = mapped_addr;
  mapped_addr = mapped_addr + 1;
  *tmp = readb((void const volatile *)tmp___0);
  len = len - 1U;
  ldv_46698: ;
  if (len != 0U && ((unsigned long )mapped_addr & 7UL) != 0UL) {
    goto ldv_46697;
  } else {
  }
  octeon_toggle_bar1_swapmode(oct, 2U);
  goto ldv_46701;
  ldv_46700:
  tmp___1 = readq((void const volatile *)mapped_addr);
  *((u64 *)hostbuf) = (u64 )tmp___1;
  mapped_addr = mapped_addr + 8UL;
  hostbuf = hostbuf + 8UL;
  len = len - 8U;
  ldv_46701: ;
  if (len > 7U) {
    goto ldv_46700;
  } else {
  }
  octeon_toggle_bar1_swapmode(oct, 2U);
  goto ldv_46704;
  ldv_46703:
  tmp___2 = hostbuf;
  hostbuf = hostbuf + 1;
  tmp___3 = mapped_addr;
  mapped_addr = mapped_addr + 1;
  *tmp___2 = readb((void const volatile *)tmp___3);
  ldv_46704:
  tmp___4 = len;
  len = len - 1U;
  if (tmp___4 != 0U) {
    goto ldv_46703;
  } else {
  }
  return;
}
}
static void __octeon_pci_rw_core_mem(struct octeon_device *oct , u64 addr , u8 *hostbuf ,
                                     u32 len , u32 op )
{
  u32 copy_len ;
  u32 index_reg_val ;
  unsigned long flags ;
  u8 *mapped_addr ;
  raw_spinlock_t *tmp ;
  {
  copy_len = 0U;
  index_reg_val = 0U;
  tmp = spinlock_check(& oct->mem_access_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  index_reg_val = (*(oct->fn_list.bar1_idx_read))(oct, 2U);
  ldv_46720:
  (*(oct->fn_list.bar1_idx_setup))(oct, addr, 2U, 1);
  mapped_addr = oct->mmio[1].hw_addr + (((unsigned long )addr & 4194303UL) + 8388608UL);
  if ((((((u64 )len + addr) - 1ULL) ^ addr) & 0xffffffffffc00000ULL) != 0ULL) {
    copy_len = (((unsigned int )addr & 4290772992U) - (unsigned int )addr) + 8388608U;
  } else {
    copy_len = len;
  }
  if (op != 0U) {
    octeon_pci_fastread(oct, mapped_addr, hostbuf, copy_len);
  } else {
    octeon_pci_fastwrite(oct, mapped_addr, hostbuf, copy_len);
  }
  len = len - copy_len;
  addr = (u64 )copy_len + addr;
  hostbuf = hostbuf + (unsigned long )copy_len;
  if (len != 0U) {
    goto ldv_46720;
  } else {
  }
  (*(oct->fn_list.bar1_idx_write))(oct, 2U, index_reg_val);
  spin_unlock_irqrestore(& oct->mem_access_lock, flags);
  return;
}
}
void octeon_pci_read_core_mem(struct octeon_device *oct , u64 coreaddr , u8 *buf ,
                              u32 len )
{
  {
  __octeon_pci_rw_core_mem(oct, coreaddr, buf, len, 1U);
  return;
}
}
void octeon_pci_write_core_mem(struct octeon_device *oct , u64 coreaddr , u8 *buf ,
                               u32 len )
{
  {
  __octeon_pci_rw_core_mem(oct, coreaddr, buf, len, 0U);
  return;
}
}
u64 octeon_read_device_mem64(struct octeon_device *oct , u64 coreaddr )
{
  __be64 ret ;
  __u64 tmp ;
  {
  __octeon_pci_rw_core_mem(oct, coreaddr, (u8 *)(& ret), 8U, 1U);
  tmp = __fswab64(ret);
  return (tmp);
}
}
u32 octeon_read_device_mem32(struct octeon_device *oct , u64 coreaddr )
{
  __be32 ret ;
  __u32 tmp ;
  {
  __octeon_pci_rw_core_mem(oct, coreaddr, (u8 *)(& ret), 4U, 1U);
  tmp = __fswab32(ret);
  return (tmp);
}
}
void octeon_write_device_mem32(struct octeon_device *oct , u64 coreaddr , u32 val )
{
  __be32 t ;
  __u32 tmp ;
  {
  tmp = __fswab32(val);
  t = tmp;
  __octeon_pci_rw_core_mem(oct, coreaddr, (u8 *)(& t), 4U, 0U);
  return;
}
}
bool ldv_queue_work_on_141(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_6(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_142(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_6(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_143(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_6(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_144(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_6(2);
  return;
}
}
bool ldv_queue_delayed_work_on_145(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_6(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
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
extern void print_hex_dump(char const * , char const * , int , int , int ,
                           void const * , size_t , bool ) ;
__inline static int __get_order(unsigned long size )
{
  int order ;
  {
  size = size - 1UL;
  size = size >> 12;
  order = fls64((__u64 )size);
  return (order);
}
}
__inline static void atomic_add(int i , atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; addl %1,%0": "+m" (v->counter): "ir" (i));
  return;
}
}
bool ldv_queue_work_on_155(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_157(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_156(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_159(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_158(struct workqueue_struct *ldv_func_arg1 ) ;
extern unsigned long __get_free_pages(gfp_t , unsigned int ) ;
extern void free_pages(unsigned long , unsigned int ) ;
__inline static dma_addr_t dma_map_single_attrs___0(struct device *dev , void *ptr ,
                                                    size_t size , enum dma_data_direction dir ,
                                                    struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    ldv_26422: ;
    goto ldv_26422;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                            (unsigned long )ptr & 4095UL, size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, (struct page *)-24189255811072L + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  return (addr);
}
}
__inline static void dma_unmap_single_attrs___0(struct device *dev , dma_addr_t addr ,
                                                size_t size , enum dma_data_direction dir ,
                                                struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (36), "i" (12UL));
    ldv_26431: ;
    goto ldv_26431;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, attrs);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  return;
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
__inline static void skb_reserve(struct sk_buff *skb , int len )
{
  {
  skb->data = skb->data + (unsigned long )len;
  skb->tail = skb->tail + (sk_buff_data_t )len;
  return;
}
}
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
__inline static struct sk_buff *netdev_alloc_skb(struct net_device *dev , unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = __netdev_alloc_skb(dev, length, 32U);
  return (tmp);
}
}
__inline static struct sk_buff *dev_alloc_skb(unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = netdev_alloc_skb((struct net_device *)0, length);
  return (tmp);
}
}
__inline static struct octeon_recv_info *octeon_alloc_recv_info(int extra_bytes )
{
  struct octeon_recv_info *recv_info ;
  u8 *buf ;
  void *tmp ;
  {
  tmp = kmalloc((unsigned long )extra_bytes + 800UL, 32U);
  buf = (u8 *)tmp;
  if ((unsigned long )buf == (unsigned long )((u8 *)0U)) {
    return ((struct octeon_recv_info *)0);
  } else {
  }
  recv_info = (struct octeon_recv_info *)buf;
  recv_info->recv_pkt = (struct octeon_recv_pkt *)buf + 16U;
  recv_info->rsvd = (void *)0;
  if (extra_bytes != 0) {
    recv_info->rsvd = (void *)buf + 800U;
  } else {
  }
  return (recv_info);
}
}
__inline static void octeon_swap_8B_data___3(u64 *data , u32 blocks )
{
  {
  goto ldv_46316;
  ldv_46315:
  __swab64s(data);
  blocks = blocks - 1U;
  data = data + 1;
  ldv_46316: ;
  if (blocks != 0U) {
    goto ldv_46315;
  } else {
  }
  return;
}
}
__inline static void *cnnic_alloc_aligned_dma(struct pci_dev *pci_dev , u32 size ,
                                              u32 *alloc_size , size_t *orig_ptr ,
                                              size_t *dma_addr )
{
  int retries ;
  void *ptr ;
  int tmp ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  {
  retries = 0;
  ptr = (void *)0;
  ldv_46341:
  tmp = __get_order((unsigned long )size);
  tmp___0 = __get_free_pages(208U, (unsigned int )tmp);
  ptr = (void *)tmp___0;
  if (((unsigned long )ptr & 7UL) != 0UL) {
    tmp___1 = __get_order((unsigned long )size);
    free_pages((unsigned long )ptr, (unsigned int )tmp___1);
    ptr = (void *)0;
    if (retries == 0) {
      size = size + 7U;
    } else {
    }
  } else {
  }
  retries = retries + 1;
  if (retries <= 1 && (unsigned long )ptr == (unsigned long )((void *)0)) {
    goto ldv_46341;
  } else {
  }
  *alloc_size = size;
  *orig_ptr = (unsigned long )ptr;
  if (((unsigned long )ptr & 7UL) != 0UL) {
    ptr = (void *)(((unsigned long )ptr + 7UL) & 0xfffffffffffffff8UL);
  } else {
  }
  return (ptr);
}
}
__inline static void *recv_buffer_alloc(struct octeon_device *oct , u32 q_no , u32 size )
{
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  u32 r ;
  {
  tmp = dev_alloc_skb(size + 64U);
  skb = tmp;
  if (((unsigned long )skb->data & 63UL) != 0UL) {
    r = 64U - ((u32 )((long )skb->data) & 63U);
    skb_reserve(skb, (int )r);
  } else {
  }
  return ((void *)skb);
}
}
__inline static u64 lio_map_ring_info(struct octeon_droq *droq , u32 i )
{
  dma_addr_t dma_addr ;
  struct octeon_device *oct ;
  int tmp ;
  long tmp___0 ;
  {
  oct = droq->oct_dev;
  dma_addr = dma_map_single_attrs___0(& (oct->pci_dev)->dev, (void *)droq->info_list + (unsigned long )i,
                                      16UL, 2, (struct dma_attrs *)0);
  tmp = dma_mapping_error(& (oct->pci_dev)->dev, dma_addr);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/net/ethernet/cavium/liquidio/octeon_network.h"),
                         "i" (173), "i" (12UL));
    ldv_46673: ;
    goto ldv_46673;
  } else {
  }
  return (dma_addr);
}
}
__inline static void lio_unmap_ring_info(struct pci_dev *pci_dev , u64 info_ptr ,
                                         u32 size )
{
  {
  dma_unmap_single_attrs___0(& pci_dev->dev, info_ptr, (size_t )size, 2, (struct dma_attrs *)0);
  return;
}
}
__inline static u64 lio_map_ring(struct pci_dev *pci_dev , void *buf , u32 size )
{
  dma_addr_t dma_addr ;
  int tmp ;
  long tmp___0 ;
  {
  dma_addr = dma_map_single_attrs___0(& pci_dev->dev, (void *)((struct sk_buff *)buf)->data,
                                      (size_t )size, 2, (struct dma_attrs *)0);
  tmp = dma_mapping_error(& pci_dev->dev, dma_addr);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/net/ethernet/cavium/liquidio/octeon_network.h"),
                         "i" (194), "i" (12UL));
    ldv_46685: ;
    goto ldv_46685;
  } else {
  }
  return (dma_addr);
}
}
__inline static void *octeon_fast_packet_alloc(struct octeon_device *oct , struct octeon_droq *droq ,
                                               u32 q_no , u32 size )
{
  void *tmp ;
  {
  tmp = recv_buffer_alloc(oct, q_no, size);
  return (tmp);
}
}
__inline static void octeon_fast_packet_next(struct octeon_droq *droq , struct sk_buff *nicbuf ,
                                             int copy_len , int idx )
{
  unsigned char *tmp ;
  {
  tmp = skb_put(nicbuf, (unsigned int )copy_len);
  memcpy((void *)tmp, (void const *)((struct sk_buff *)(droq->recv_buf_list + (unsigned long )idx)->buffer)->data,
           (size_t )copy_len);
  return;
}
}
__inline static void *octeon_get_dispatch_arg(struct octeon_device *octeon_dev , u16 opcode ,
                                              u16 subcode )
{
  int idx ;
  struct list_head *dispatch ;
  void *fn_arg ;
  u16 combined_opcode ;
  {
  fn_arg = (void *)0;
  combined_opcode = (u16 )((int )((short )(((int )opcode & 15) << 8)) | ((int )((short )subcode) & 127));
  idx = (int )combined_opcode & 63;
  spin_lock_bh(& octeon_dev->dispatch.lock);
  if (octeon_dev->dispatch.count == 0U) {
    spin_unlock_bh(& octeon_dev->dispatch.lock);
    return ((void *)0);
  } else {
  }
  if ((int )(octeon_dev->dispatch.dlist + (unsigned long )idx)->opcode == (int )combined_opcode) {
    fn_arg = (octeon_dev->dispatch.dlist + (unsigned long )idx)->arg;
  } else {
    dispatch = (octeon_dev->dispatch.dlist + (unsigned long )idx)->list.next;
    goto ldv_46843;
    ldv_46842: ;
    if ((int )((struct octeon_dispatch *)dispatch)->opcode == (int )combined_opcode) {
      fn_arg = ((struct octeon_dispatch *)dispatch)->arg;
      goto ldv_46841;
    } else {
    }
    dispatch = dispatch->next;
    ldv_46843: ;
    if ((unsigned long )(& (octeon_dev->dispatch.dlist + (unsigned long )idx)->list) != (unsigned long )dispatch) {
      goto ldv_46842;
    } else {
    }
    ldv_46841: ;
  }
  spin_unlock_bh(& octeon_dev->dispatch.lock);
  return (fn_arg);
}
}
u32 octeon_droq_check_hw_for_pkts(struct octeon_device *oct , struct octeon_droq *droq )
{
  u32 pkt_count ;
  {
  pkt_count = 0U;
  pkt_count = readl((void const volatile *)droq->pkts_sent_reg);
  if (pkt_count != 0U) {
    atomic_add((int )pkt_count, & droq->pkts_pending);
    writel(pkt_count, (void volatile *)droq->pkts_sent_reg);
  } else {
  }
  return (pkt_count);
}
}
static void octeon_droq_compute_max_packet_bufs(struct octeon_droq *droq )
{
  u32 count ;
  {
  count = 0U;
  droq->max_empty_descs = 0U;
  ldv_46853:
  droq->max_empty_descs = droq->max_empty_descs + 1U;
  count = droq->buffer_size + count;
  if (count <= 65535U) {
    goto ldv_46853;
  } else {
  }
  droq->max_empty_descs = droq->max_count - droq->max_empty_descs;
  return;
}
}
static void octeon_droq_reset_indices(struct octeon_droq *droq )
{
  {
  droq->read_idx = 0U;
  droq->write_idx = 0U;
  droq->refill_idx = 0U;
  droq->refill_count = 0U;
  atomic_set(& droq->pkts_pending, 0);
  return;
}
}
static void octeon_droq_destroy_ring_buffers(struct octeon_device *oct , struct octeon_droq *droq )
{
  u32 i ;
  {
  i = 0U;
  goto ldv_46864;
  ldv_46863: ;
  if ((unsigned long )(droq->recv_buf_list + (unsigned long )i)->buffer != (unsigned long )((void *)0)) {
    if ((unsigned long )droq->desc_ring != (unsigned long )((struct octeon_droq_desc *)0)) {
      lio_unmap_ring_info(oct->pci_dev, (droq->desc_ring + (unsigned long )i)->info_ptr,
                          16U);
      lio_unmap_ring_info(oct->pci_dev, (droq->desc_ring + (unsigned long )i)->buffer_ptr,
                          droq->buffer_size);
    } else {
    }
    recv_buffer_free((droq->recv_buf_list + (unsigned long )i)->buffer);
    (droq->recv_buf_list + (unsigned long )i)->buffer = (void *)0;
  } else {
  }
  i = i + 1U;
  ldv_46864: ;
  if (droq->max_count > i) {
    goto ldv_46863;
  } else {
  }
  octeon_droq_reset_indices(droq);
  return;
}
}
static int octeon_droq_setup_ring_buffers(struct octeon_device *oct , struct octeon_droq *droq )
{
  u32 i ;
  void *buf ;
  struct octeon_droq_desc *desc_ring ;
  {
  desc_ring = droq->desc_ring;
  i = 0U;
  goto ldv_46875;
  ldv_46874:
  buf = recv_buffer_alloc(oct, droq->q_no, droq->buffer_size);
  if ((unsigned long )buf == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s buffer alloc failed\n",
            "octeon_droq_setup_ring_buffers");
    return (-12);
  } else {
  }
  (droq->recv_buf_list + (unsigned long )i)->buffer = buf;
  (droq->recv_buf_list + (unsigned long )i)->data = ((struct sk_buff *)buf)->data;
  (droq->info_list + (unsigned long )i)->length = 0ULL;
  (desc_ring + (unsigned long )i)->info_ptr = lio_map_ring_info(droq, i);
  (desc_ring + (unsigned long )i)->buffer_ptr = lio_map_ring(oct->pci_dev, (droq->recv_buf_list + (unsigned long )i)->buffer,
                                                             droq->buffer_size);
  i = i + 1U;
  ldv_46875: ;
  if (droq->max_count > i) {
    goto ldv_46874;
  } else {
  }
  octeon_droq_reset_indices(droq);
  octeon_droq_compute_max_packet_bufs(droq);
  return (0);
}
}
int octeon_delete_droq(struct octeon_device *oct , u32 q_no )
{
  struct octeon_droq *droq ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  {
  droq = oct->droq[q_no];
  descriptor.modname = "liquidio";
  descriptor.function = "octeon_delete_droq";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/octeon_droq.c";
  descriptor.format = "%s[%d]\n";
  descriptor.lineno = 216U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "%s[%d]\n", "octeon_delete_droq", q_no);
  } else {
  }
  octeon_droq_destroy_ring_buffers(oct, droq);
  vfree((void const *)droq->recv_buf_list);
  if (droq->info_base_addr != 0UL) {
    tmp___0 = __get_order((unsigned long )droq->info_alloc_size);
    free_pages(droq->info_base_addr, (unsigned int )tmp___0);
  } else {
  }
  if ((unsigned long )droq->desc_ring != (unsigned long )((struct octeon_droq_desc *)0)) {
    dma_free_attrs(& (oct->pci_dev)->dev, (unsigned long )droq->max_count * 16UL,
                   (void *)droq->desc_ring, (dma_addr_t )droq->desc_ring_dma, (struct dma_attrs *)0);
  } else {
  }
  memset((void *)droq, 0, 640UL);
  return (0);
}
}
int octeon_init_droq(struct octeon_device *oct , u32 q_no , u32 num_descs , u32 desc_size ,
                     void *app_ctx )
{
  struct octeon_droq *droq ;
  u32 desc_ring_size ;
  u32 c_num_descs ;
  u32 c_buf_size ;
  u32 c_pkts_per_intr ;
  u32 c_refill_threshold ;
  struct _ddebug descriptor ;
  long tmp ;
  struct octeon_config *conf6x ;
  void *tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  struct _ddebug descriptor___2 ;
  long tmp___6 ;
  struct lock_class_key __key ;
  {
  desc_ring_size = 0U;
  c_num_descs = 0U;
  c_buf_size = 0U;
  c_pkts_per_intr = 0U;
  c_refill_threshold = 0U;
  descriptor.modname = "liquidio";
  descriptor.function = "octeon_init_droq";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/octeon_droq.c";
  descriptor.format = "%s[%d]\n";
  descriptor.lineno = 246U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "%s[%d]\n", "octeon_init_droq", q_no);
  } else {
  }
  droq = oct->droq[q_no];
  memset((void *)droq, 0, 640UL);
  droq->oct_dev = oct;
  droq->q_no = q_no;
  if ((unsigned long )app_ctx != (unsigned long )((void *)0)) {
    droq->app_ctx = app_ctx;
  } else {
    droq->app_ctx = (void *)((unsigned long )q_no);
  }
  c_num_descs = num_descs;
  c_buf_size = desc_size;
  if ((unsigned int )oct->chip_id == 146U || (unsigned int )oct->chip_id == 145U) {
    conf6x = ((struct octeon_cn6xxx *)oct->chip)->conf;
    c_pkts_per_intr = (unsigned int )conf6x->oq.pkts_per_intr;
    c_refill_threshold = (unsigned int )conf6x->oq.refill_threshold;
  } else {
  }
  droq->max_count = c_num_descs;
  droq->buffer_size = c_buf_size;
  desc_ring_size = droq->max_count * 16U;
  tmp___0 = dma_alloc_attrs(& (oct->pci_dev)->dev, (size_t )desc_ring_size, (dma_addr_t *)(& droq->desc_ring_dma),
                            208U, (struct dma_attrs *)0);
  droq->desc_ring = (struct octeon_droq_desc *)tmp___0;
  if ((unsigned long )droq->desc_ring == (unsigned long )((struct octeon_droq_desc *)0)) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Output queue %d ring alloc failed\n",
            q_no);
    return (1);
  } else {
  }
  descriptor___0.modname = "liquidio";
  descriptor___0.function = "octeon_init_droq";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/octeon_droq.c";
  descriptor___0.format = "droq[%d]: desc_ring: virt: 0x%p, dma: %lx\n";
  descriptor___0.lineno = 281U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (oct->pci_dev)->dev),
                      "droq[%d]: desc_ring: virt: 0x%p, dma: %lx\n", q_no, droq->desc_ring,
                      droq->desc_ring_dma);
  } else {
  }
  descriptor___1.modname = "liquidio";
  descriptor___1.function = "octeon_init_droq";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/octeon_droq.c";
  descriptor___1.format = "droq[%d]: num_desc: %d\n";
  descriptor___1.lineno = 283U;
  descriptor___1.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& (oct->pci_dev)->dev),
                      "droq[%d]: num_desc: %d\n", q_no, droq->max_count);
  } else {
  }
  tmp___3 = cnnic_alloc_aligned_dma(oct->pci_dev, droq->max_count * 16U, & droq->info_alloc_size,
                                    & droq->info_base_addr, & droq->info_list_dma);
  droq->info_list = (struct octeon_droq_info *)tmp___3;
  if ((unsigned long )droq->info_list == (unsigned long )((struct octeon_droq_info *)0)) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Cannot allocate memory for info list.\n");
    dma_free_attrs(& (oct->pci_dev)->dev, (unsigned long )droq->max_count * 16UL,
                   (void *)droq->desc_ring, (dma_addr_t )droq->desc_ring_dma, (struct dma_attrs *)0);
    return (1);
  } else {
  }
  tmp___4 = vmalloc((unsigned long )droq->max_count * 16UL);
  droq->recv_buf_list = (struct octeon_recv_buffer *)tmp___4;
  if ((unsigned long )droq->recv_buf_list == (unsigned long )((struct octeon_recv_buffer *)0)) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Output queue recv buf list alloc failed\n");
    goto init_droq_fail;
  } else {
  }
  tmp___5 = octeon_droq_setup_ring_buffers(oct, droq);
  if (tmp___5 != 0) {
    goto init_droq_fail;
  } else {
  }
  droq->pkts_per_intr = c_pkts_per_intr;
  droq->refill_threshold = c_refill_threshold;
  descriptor___2.modname = "liquidio";
  descriptor___2.function = "octeon_init_droq";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/octeon_droq.c";
  descriptor___2.format = "DROQ INIT: max_empty_descs: %d\n";
  descriptor___2.lineno = 314U;
  descriptor___2.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)(& (oct->pci_dev)->dev),
                      "DROQ INIT: max_empty_descs: %d\n", droq->max_empty_descs);
  } else {
  }
  spinlock_check(& droq->lock);
  __raw_spin_lock_init(& droq->lock.__annonCompField18.rlock, "&(&droq->lock)->rlock",
                       & __key);
  INIT_LIST_HEAD(& droq->dispatch_list);
  (*(oct->fn_list.setup_oq_regs))(oct, q_no);
  oct->io_qmask.oq = oct->io_qmask.oq | (u32 )(1 << (int )q_no);
  return (0);
  init_droq_fail:
  octeon_delete_droq(oct, q_no);
  return (1);
}
}
__inline static struct octeon_recv_info *octeon_create_recv_info(struct octeon_device *octeon_dev ,
                                                                 struct octeon_droq *droq ,
                                                                 u32 buf_cnt , u32 idx )
{
  struct octeon_droq_info *info ;
  struct octeon_recv_pkt *recv_pkt ;
  struct octeon_recv_info *recv_info ;
  u32 i ;
  u32 bytes_left ;
  {
  info = droq->info_list + (unsigned long )idx;
  recv_info = octeon_alloc_recv_info(32);
  if ((unsigned long )recv_info == (unsigned long )((struct octeon_recv_info *)0)) {
    return ((struct octeon_recv_info *)0);
  } else {
  }
  recv_pkt = recv_info->recv_pkt;
  recv_pkt->rh = info->rh;
  recv_pkt->length = (unsigned int )info->length;
  recv_pkt->buffer_count = (unsigned short )buf_cnt;
  recv_pkt->octeon_id = (unsigned short )octeon_dev->octeon_id;
  i = 0U;
  bytes_left = (unsigned int )info->length;
  goto ldv_46917;
  ldv_46916:
  lio_unmap_ring_info(octeon_dev->pci_dev, (droq->desc_ring + (unsigned long )idx)->buffer_ptr,
                      droq->buffer_size);
  recv_pkt->buffer_size[i] = bytes_left < droq->buffer_size ? bytes_left : droq->buffer_size;
  recv_pkt->buffer_ptr[i] = (droq->recv_buf_list + (unsigned long )idx)->buffer;
  (droq->recv_buf_list + (unsigned long )idx)->buffer = (void *)0;
  idx = idx + 1U;
  if (idx == droq->max_count) {
    idx = 0U;
  } else {
  }
  bytes_left = bytes_left - droq->buffer_size;
  i = i + 1U;
  buf_cnt = buf_cnt - 1U;
  ldv_46917: ;
  if (buf_cnt != 0U) {
    goto ldv_46916;
  } else {
  }
  return (recv_info);
}
}
__inline static u32 octeon_droq_refill_pullup_descs(struct octeon_droq *droq , struct octeon_droq_desc *desc_ring )
{
  u32 desc_refilled ;
  u32 refill_index ;
  {
  desc_refilled = 0U;
  refill_index = droq->refill_idx;
  goto ldv_46928;
  ldv_46927: ;
  if ((unsigned long )(droq->recv_buf_list + (unsigned long )refill_index)->buffer != (unsigned long )((void *)0)) {
    (droq->recv_buf_list + (unsigned long )droq->refill_idx)->buffer = (droq->recv_buf_list + (unsigned long )refill_index)->buffer;
    (droq->recv_buf_list + (unsigned long )droq->refill_idx)->data = (droq->recv_buf_list + (unsigned long )refill_index)->data;
    (desc_ring + (unsigned long )droq->refill_idx)->buffer_ptr = (desc_ring + (unsigned long )refill_index)->buffer_ptr;
    (droq->recv_buf_list + (unsigned long )refill_index)->buffer = (void *)0;
    (desc_ring + (unsigned long )refill_index)->buffer_ptr = 0ULL;
    ldv_46925:
    droq->refill_idx = droq->refill_idx + 1U;
    if (droq->refill_idx == droq->max_count) {
      droq->refill_idx = 0U;
    } else {
    }
    desc_refilled = desc_refilled + 1U;
    droq->refill_count = droq->refill_count - 1U;
    if ((unsigned long )(droq->recv_buf_list + (unsigned long )droq->refill_idx)->buffer != (unsigned long )((void *)0)) {
      goto ldv_46925;
    } else {
    }
  } else {
  }
  refill_index = refill_index + 1U;
  if (refill_index == droq->max_count) {
    refill_index = 0U;
  } else {
  }
  ldv_46928: ;
  if (droq->read_idx != refill_index) {
    goto ldv_46927;
  } else {
  }
  return (desc_refilled);
}
}
static u32 octeon_droq_refill(struct octeon_device *octeon_dev , struct octeon_droq *droq )
{
  struct octeon_droq_desc *desc_ring ;
  void *buf ;
  u8 *data ;
  u32 desc_refilled ;
  u32 tmp ;
  {
  buf = (void *)0;
  desc_refilled = 0U;
  desc_ring = droq->desc_ring;
  goto ldv_46940;
  ldv_46939: ;
  if ((unsigned long )(droq->recv_buf_list + (unsigned long )droq->refill_idx)->buffer == (unsigned long )((void *)0)) {
    buf = recv_buffer_alloc(octeon_dev, droq->q_no, droq->buffer_size);
    if ((unsigned long )buf == (unsigned long )((void *)0)) {
      goto ldv_46938;
    } else {
    }
    (droq->recv_buf_list + (unsigned long )droq->refill_idx)->buffer = buf;
    data = ((struct sk_buff *)buf)->data;
  } else {
    data = ((struct sk_buff *)(droq->recv_buf_list + (unsigned long )droq->refill_idx)->buffer)->data;
  }
  (droq->recv_buf_list + (unsigned long )droq->refill_idx)->data = data;
  (desc_ring + (unsigned long )droq->refill_idx)->buffer_ptr = lio_map_ring(octeon_dev->pci_dev,
                                                                            (droq->recv_buf_list + (unsigned long )droq->refill_idx)->buffer,
                                                                            droq->buffer_size);
  (droq->info_list + (unsigned long )droq->refill_idx)->length = 0ULL;
  droq->refill_idx = droq->refill_idx + 1U;
  if (droq->refill_idx == droq->max_count) {
    droq->refill_idx = 0U;
  } else {
  }
  desc_refilled = desc_refilled + 1U;
  droq->refill_count = droq->refill_count - 1U;
  ldv_46940: ;
  if (droq->refill_count != 0U && droq->max_count > desc_refilled) {
    goto ldv_46939;
  } else {
  }
  ldv_46938: ;
  if (droq->refill_count != 0U) {
    tmp = octeon_droq_refill_pullup_descs(droq, desc_ring);
    desc_refilled = tmp + desc_refilled;
  } else {
  }
  return (desc_refilled);
}
}
__inline static u32 octeon_droq_get_bufcount(u32 buf_size , u32 total_len )
{
  u32 buf_cnt ;
  {
  buf_cnt = 0U;
  goto ldv_46947;
  ldv_46946:
  buf_cnt = buf_cnt + 1U;
  ldv_46947: ;
  if (buf_size * buf_cnt < total_len) {
    goto ldv_46946;
  } else {
  }
  return (buf_cnt);
}
}
static int octeon_droq_dispatch_pkt(struct octeon_device *oct , struct octeon_droq *droq ,
                                    union octeon_rh *rh , struct octeon_droq_info *info )
{
  u32 cnt ;
  int (*disp_fn)(struct octeon_recv_info * , void * ) ;
  struct octeon_recv_info *rinfo ;
  struct __dispatch *rdisp ;
  {
  cnt = octeon_droq_get_bufcount(droq->buffer_size, (unsigned int )info->length);
  disp_fn = octeon_get_dispatch(oct, (int )rh->r.opcode, (int )rh->r.subcode);
  if ((unsigned long )disp_fn != (unsigned long )((int (*)(struct octeon_recv_info * ,
                                                           void * ))0)) {
    rinfo = octeon_create_recv_info(oct, droq, cnt, droq->read_idx);
    if ((unsigned long )rinfo != (unsigned long )((struct octeon_recv_info *)0)) {
      rdisp = (struct __dispatch *)rinfo->rsvd;
      rdisp->rinfo = rinfo;
      rdisp->disp_fn = disp_fn;
      (rinfo->recv_pkt)->rh = *rh;
      list_add_tail(& rdisp->list, & droq->dispatch_list);
    } else {
      droq->stats.dropped_nomem = droq->stats.dropped_nomem + 1ULL;
    }
  } else {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "DROQ: No dispatch function\n");
    droq->stats.dropped_nodispatch = droq->stats.dropped_nodispatch + 1ULL;
  }
  return ((int )cnt);
}
}
__inline static void octeon_droq_drop_packets(struct octeon_device *oct , struct octeon_droq *droq ,
                                              u32 cnt )
{
  u32 i ;
  u32 buf_cnt ;
  struct octeon_droq_info *info ;
  {
  i = 0U;
  i = 0U;
  goto ldv_46968;
  ldv_46967:
  info = droq->info_list + (unsigned long )droq->read_idx;
  octeon_swap_8B_data___3((u64 *)info, 2U);
  if (info->length != 0ULL) {
    info->length = info->length - 8ULL;
    droq->stats.bytes_received = droq->stats.bytes_received + info->length;
    buf_cnt = octeon_droq_get_bufcount(droq->buffer_size, (unsigned int )info->length);
  } else {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "DROQ: In drop: pkt with len 0\n");
    buf_cnt = 1U;
  }
  if (droq->read_idx + buf_cnt >= droq->max_count) {
    droq->read_idx = (droq->read_idx + buf_cnt) - droq->max_count;
  } else {
    droq->read_idx = droq->read_idx + buf_cnt;
  }
  droq->refill_count = droq->refill_count + buf_cnt;
  i = i + 1U;
  ldv_46968: ;
  if (i < cnt) {
    goto ldv_46967;
  } else {
  }
  return;
}
}
static u32 octeon_droq_fast_process_packets(struct octeon_device *oct , struct octeon_droq *droq ,
                                            u32 pkts_to_process )
{
  struct octeon_droq_info *info ;
  union octeon_rh *rh ;
  u32 pkt ;
  u32 total_len ;
  u32 pkt_count ;
  u32 pkt_len ;
  struct sk_buff *nicbuf ;
  struct _ddebug descriptor ;
  long tmp ;
  u32 buf_cnt ;
  int tmp___0 ;
  void *tmp___1 ;
  int cpy_len ;
  int desc_refilled ;
  u32 tmp___2 ;
  {
  total_len = 0U;
  pkt_count = pkts_to_process;
  pkt = 0U;
  goto ldv_46992;
  ldv_46991:
  pkt_len = 0U;
  nicbuf = (struct sk_buff *)0;
  info = droq->info_list + (unsigned long )droq->read_idx;
  octeon_swap_8B_data___3((u64 *)info, 2U);
  if (info->length == 0ULL) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "DROQ[%d] idx: %d len:0, pkt_cnt: %d\n",
            droq->q_no, droq->read_idx, pkt_count);
    descriptor.modname = "liquidio";
    descriptor.function = "octeon_droq_fast_process_packets";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/octeon_droq.c";
    descriptor.format = "";
    descriptor.lineno = 599U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      print_hex_dump("\017", "", 1, 16, 1, (void const *)info, 16UL, 1);
    } else {
    }
    goto ldv_46984;
  } else {
  }
  info->length = info->length - 8ULL;
  rh = & info->rh;
  total_len = (u32 )info->length + total_len;
  if (((((int )rh->r.opcode & 15) << 8) | ((int )rh->r.subcode & 127)) != 258) {
    tmp___0 = octeon_droq_dispatch_pkt(oct, droq, rh, info);
    buf_cnt = (u32 )tmp___0;
    if (droq->read_idx + buf_cnt >= droq->max_count) {
      droq->read_idx = (droq->read_idx + buf_cnt) - droq->max_count;
    } else {
      droq->read_idx = droq->read_idx + buf_cnt;
    }
    droq->refill_count = droq->refill_count + buf_cnt;
  } else {
    if (info->length <= (u64 )droq->buffer_size) {
      lio_unmap_ring_info(oct->pci_dev, (droq->desc_ring + (unsigned long )droq->read_idx)->buffer_ptr,
                          droq->buffer_size);
      pkt_len = (unsigned int )info->length;
      nicbuf = (struct sk_buff *)(droq->recv_buf_list + (unsigned long )droq->read_idx)->buffer;
      (droq->recv_buf_list + (unsigned long )droq->read_idx)->buffer = (void *)0;
      droq->read_idx = droq->read_idx + 1U;
      if (droq->read_idx == droq->max_count) {
        droq->read_idx = 0U;
      } else {
      }
      skb_put(nicbuf, pkt_len);
      droq->refill_count = droq->refill_count + 1U;
    } else {
      tmp___1 = octeon_fast_packet_alloc(oct, droq, droq->q_no, (unsigned int )info->length);
      nicbuf = (struct sk_buff *)tmp___1;
      pkt_len = 0U;
      goto ldv_46988;
      ldv_46987:
      cpy_len = (u64 )(droq->buffer_size + pkt_len) > info->length ? (int )((unsigned int )info->length - pkt_len) : (int )droq->buffer_size;
      if ((unsigned long )nicbuf != (unsigned long )((struct sk_buff *)0)) {
        lio_unmap_ring_info(oct->pci_dev, (droq->desc_ring + (unsigned long )droq->read_idx)->buffer_ptr,
                            droq->buffer_size);
        octeon_fast_packet_next(droq, nicbuf, cpy_len, (int )droq->read_idx);
      } else {
      }
      pkt_len = pkt_len + (u32 )cpy_len;
      droq->read_idx = droq->read_idx + 1U;
      if (droq->read_idx == droq->max_count) {
        droq->read_idx = 0U;
      } else {
      }
      droq->refill_count = droq->refill_count + 1U;
      ldv_46988: ;
      if ((u64 )pkt_len < info->length) {
        goto ldv_46987;
      } else {
      }
    }
    if ((unsigned long )nicbuf != (unsigned long )((struct sk_buff *)0)) {
      if ((unsigned long )droq->ops.fptr != (unsigned long )((void (*)(u32 , void * ,
                                                                       u32 , union octeon_rh * ,
                                                                       void * ))0)) {
        (*(droq->ops.fptr))(oct->octeon_id, (void *)nicbuf, pkt_len, rh, (void *)(& droq->napi));
      } else {
        recv_buffer_free((void *)nicbuf);
      }
    } else {
    }
  }
  if (droq->refill_count >= droq->refill_threshold) {
    tmp___2 = octeon_droq_refill(oct, droq);
    desc_refilled = (int )tmp___2;
    __asm__ volatile ("sfence": : : "memory");
    writel((unsigned int )desc_refilled, (void volatile *)droq->pkts_credit_reg);
    __asm__ volatile ("": : : "memory");
  } else {
  }
  pkt = pkt + 1U;
  ldv_46992: ;
  if (pkt < pkt_count) {
    goto ldv_46991;
  } else {
  }
  ldv_46984:
  droq->stats.pkts_received = droq->stats.pkts_received + (u64 )pkt;
  droq->stats.bytes_received = droq->stats.bytes_received + (u64 )total_len;
  if (droq->ops.drop_on_max != 0U && pkts_to_process != pkt) {
    octeon_droq_drop_packets(oct, droq, pkts_to_process - pkt);
    droq->stats.dropped_toomany = droq->stats.dropped_toomany + (u64 )(pkts_to_process - pkt);
    return (pkts_to_process);
  } else {
  }
  return (pkt);
}
}
int octeon_droq_process_packets(struct octeon_device *oct , struct octeon_droq *droq ,
                                u32 budget )
{
  u32 pkt_count ;
  u32 pkts_processed ;
  struct list_head *tmp ;
  struct list_head *tmp2 ;
  int tmp___0 ;
  struct __dispatch *rdisp ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  pkt_count = 0U;
  pkts_processed = 0U;
  tmp___0 = atomic_read((atomic_t const *)(& droq->pkts_pending));
  pkt_count = (u32 )tmp___0;
  if (pkt_count == 0U) {
    return (0);
  } else {
  }
  if (pkt_count > budget) {
    pkt_count = budget;
  } else {
  }
  spin_lock(& droq->lock);
  pkts_processed = octeon_droq_fast_process_packets(oct, droq, pkt_count);
  atomic_sub((int )pkts_processed, & droq->pkts_pending);
  spin_unlock(& droq->lock);
  tmp = droq->dispatch_list.next;
  tmp2 = tmp->next;
  goto ldv_47004;
  ldv_47003:
  rdisp = (struct __dispatch *)tmp;
  list_del(tmp);
  tmp___1 = octeon_get_dispatch_arg(oct, (int )((rdisp->rinfo)->recv_pkt)->rh.r.opcode,
                                    (int )((rdisp->rinfo)->recv_pkt)->rh.r.subcode);
  (*(rdisp->disp_fn))(rdisp->rinfo, tmp___1);
  tmp = tmp2;
  tmp2 = tmp->next;
  ldv_47004: ;
  if ((unsigned long )(& droq->dispatch_list) != (unsigned long )tmp) {
    goto ldv_47003;
  } else {
  }
  tmp___2 = atomic_read((atomic_t const *)(& droq->pkts_pending));
  if (tmp___2 != 0) {
    return (1);
  } else {
  }
  return (0);
}
}
static int octeon_droq_process_poll_pkts(struct octeon_device *oct , struct octeon_droq *droq ,
                                         u32 budget )
{
  struct list_head *tmp ;
  struct list_head *tmp2 ;
  u32 pkts_available ;
  u32 pkts_processed ;
  u32 total_pkts_processed ;
  int tmp___1 ;
  int tmp___2 ;
  struct __dispatch *rdisp ;
  void *tmp___3 ;
  {
  pkts_available = 0U;
  pkts_processed = 0U;
  total_pkts_processed = 0U;
  if (droq->max_count < budget) {
    budget = droq->max_count;
  } else {
  }
  spin_lock(& droq->lock);
  goto ldv_47018;
  ldv_47017:
  tmp___2 = atomic_read((atomic_t const *)(& droq->pkts_pending));
  if (budget - total_pkts_processed < (u32 )tmp___2) {
    pkts_available = budget - total_pkts_processed;
  } else {
    tmp___1 = atomic_read((atomic_t const *)(& droq->pkts_pending));
    pkts_available = (unsigned int )tmp___1;
  }
  if (pkts_available == 0U) {
    goto ldv_47016;
  } else {
  }
  pkts_processed = octeon_droq_fast_process_packets(oct, droq, pkts_available);
  atomic_sub((int )pkts_processed, & droq->pkts_pending);
  total_pkts_processed = total_pkts_processed + pkts_processed;
  octeon_droq_check_hw_for_pkts(oct, droq);
  ldv_47018: ;
  if (total_pkts_processed < budget) {
    goto ldv_47017;
  } else {
  }
  ldv_47016:
  spin_unlock(& droq->lock);
  tmp = droq->dispatch_list.next;
  tmp2 = tmp->next;
  goto ldv_47021;
  ldv_47020:
  rdisp = (struct __dispatch *)tmp;
  list_del(tmp);
  tmp___3 = octeon_get_dispatch_arg(oct, (int )((rdisp->rinfo)->recv_pkt)->rh.r.opcode,
                                    (int )((rdisp->rinfo)->recv_pkt)->rh.r.subcode);
  (*(rdisp->disp_fn))(rdisp->rinfo, tmp___3);
  tmp = tmp2;
  tmp2 = tmp->next;
  ldv_47021: ;
  if ((unsigned long )(& droq->dispatch_list) != (unsigned long )tmp) {
    goto ldv_47020;
  } else {
  }
  return ((int )total_pkts_processed);
}
}
int octeon_process_droq_poll_cmd(struct octeon_device *oct , u32 q_no , int cmd ,
                                 u32 arg )
{
  struct octeon_droq *droq ;
  struct octeon_config *oct_cfg ;
  int tmp ;
  u32 pkt_cnt ;
  int tmp___0 ;
  int tmp___1 ;
  u32 value ;
  unsigned long flags ;
  struct octeon_cn6xxx *cn6xxx ;
  raw_spinlock_t *tmp___2 ;
  {
  oct_cfg = (struct octeon_config *)0;
  oct_cfg = octeon_get_conf(oct);
  if ((unsigned long )oct_cfg == (unsigned long )((struct octeon_config *)0)) {
    return (-22);
  } else {
  }
  if ((u32 )oct_cfg->oq.max_oqs <= q_no) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s: droq id (%d) exceeds MAX (%d)\n",
            "octeon_process_droq_poll_cmd", q_no, oct->num_oqs - 1U);
    return (-22);
  } else {
  }
  droq = oct->droq[q_no];
  if (cmd == 2) {
    tmp = octeon_droq_process_poll_pkts(oct, droq, arg);
    return (tmp);
  } else {
  }
  if (cmd == 3) {
    tmp___0 = atomic_read((atomic_t const *)(& droq->pkts_pending));
    pkt_cnt = (u32 )tmp___0;
    tmp___1 = octeon_droq_process_packets(oct, droq, pkt_cnt);
    return (tmp___1);
  } else {
  }
  if (cmd == 4) {
    switch ((int )oct->chip_id) {
    case 146: ;
    case 145:
    cn6xxx = (struct octeon_cn6xxx *)oct->chip;
    tmp___2 = spinlock_check(& cn6xxx->lock_for_droq_int_enb_reg);
    flags = _raw_spin_lock_irqsave(tmp___2);
    value = readl((void const volatile *)oct->mmio[0].hw_addr + 4448U);
    value = (u32 )(1 << (int )q_no) | value;
    writel(value, (void volatile *)oct->mmio[0].hw_addr + 4448U);
    value = readl((void const volatile *)oct->mmio[0].hw_addr + 4432U);
    value = (u32 )(1 << (int )q_no) | value;
    writel(value, (void volatile *)oct->mmio[0].hw_addr + 4432U);
    spin_unlock_irqrestore(& cn6xxx->lock_for_droq_int_enb_reg, flags);
    return (0);
    }
    return (0);
  } else {
  }
  dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s Unknown command: %d\n",
          "octeon_process_droq_poll_cmd", cmd);
  return (-22);
}
}
int octeon_register_droq_ops(struct octeon_device *oct , u32 q_no , struct octeon_droq_ops *ops )
{
  struct octeon_droq *droq ;
  unsigned long flags ;
  struct octeon_config *oct_cfg ;
  raw_spinlock_t *tmp ;
  {
  oct_cfg = (struct octeon_config *)0;
  oct_cfg = octeon_get_conf(oct);
  if ((unsigned long )oct_cfg == (unsigned long )((struct octeon_config *)0)) {
    return (-22);
  } else {
  }
  if ((unsigned long )ops == (unsigned long )((struct octeon_droq_ops *)0)) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s: droq_ops pointer is NULL\n",
            "octeon_register_droq_ops");
    return (-22);
  } else {
  }
  if ((u32 )oct_cfg->oq.max_oqs <= q_no) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s: droq id (%d) exceeds MAX (%d)\n",
            "octeon_register_droq_ops", q_no, oct->num_oqs - 1U);
    return (-22);
  } else {
  }
  droq = oct->droq[q_no];
  tmp = spinlock_check(& droq->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  memcpy((void *)(& droq->ops), (void const *)ops, 24UL);
  spin_unlock_irqrestore(& droq->lock, flags);
  return (0);
}
}
int octeon_unregister_droq_ops(struct octeon_device *oct , u32 q_no )
{
  unsigned long flags ;
  struct octeon_droq *droq ;
  struct octeon_config *oct_cfg ;
  raw_spinlock_t *tmp ;
  {
  oct_cfg = (struct octeon_config *)0;
  oct_cfg = octeon_get_conf(oct);
  if ((unsigned long )oct_cfg == (unsigned long )((struct octeon_config *)0)) {
    return (-22);
  } else {
  }
  if ((u32 )oct_cfg->oq.max_oqs <= q_no) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s: droq id (%d) exceeds MAX (%d)\n",
            "octeon_unregister_droq_ops", q_no, oct->num_oqs - 1U);
    return (-22);
  } else {
  }
  droq = oct->droq[q_no];
  if ((unsigned long )droq == (unsigned long )((struct octeon_droq *)0)) {
    _dev_info((struct device const *)(& (oct->pci_dev)->dev), "Droq id (%d) not available.\n",
              q_no);
    return (0);
  } else {
  }
  tmp = spinlock_check(& droq->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  droq->ops.fptr = (void (*)(u32 , void * , u32 , union octeon_rh * , void * ))0;
  droq->ops.drop_on_max = 0U;
  spin_unlock_irqrestore(& droq->lock, flags);
  return (0);
}
}
int octeon_create_droq(struct octeon_device *oct , u32 q_no , u32 num_descs , u32 desc_size ,
                       void *app_ctx )
{
  struct octeon_droq *droq ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  {
  if ((unsigned long )oct->droq[q_no] != (unsigned long )((struct octeon_droq *)0)) {
    descriptor.modname = "liquidio";
    descriptor.function = "octeon_create_droq";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/octeon_droq.c";
    descriptor.format = "Droq already in use. Cannot create droq %d again\n";
    descriptor.lineno = 955U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                        "Droq already in use. Cannot create droq %d again\n", q_no);
    } else {
    }
    return (1);
  } else {
  }
  tmp___0 = vmalloc(640UL);
  droq = (struct octeon_droq *)tmp___0;
  if ((unsigned long )droq == (unsigned long )((struct octeon_droq *)0)) {
    goto create_droq_fail;
  } else {
  }
  memset((void *)droq, 0, 640UL);
  octeon_set_droq_pkt_op(oct, q_no, 0U);
  oct->droq[q_no] = droq;
  octeon_init_droq(oct, q_no, num_descs, desc_size, app_ctx);
  oct->num_oqs = oct->num_oqs + 1U;
  descriptor___0.modname = "liquidio";
  descriptor___0.function = "octeon_create_droq";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/octeon_droq.c";
  descriptor___0.format = "%s: Total number of OQ: %d\n";
  descriptor___0.lineno = 975U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (oct->pci_dev)->dev),
                      "%s: Total number of OQ: %d\n", "octeon_create_droq", oct->num_oqs);
  } else {
  }
  return (0);
  create_droq_fail:
  octeon_delete_droq(oct, q_no);
  return (-1);
}
}
bool ldv_queue_work_on_155(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_6(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_156(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_6(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_157(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_6(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_158(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_6(2);
  return;
}
}
bool ldv_queue_delayed_work_on_159(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_6(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
bool ldv_queue_work_on_169(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_171(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_170(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_173(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_172(struct workqueue_struct *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_sync_174(struct delayed_work *ldv_func_arg1 ) ;
__inline static bool queue_delayed_work___2(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                            unsigned long delay )
{
  bool tmp ;
  {
  tmp = ldv_queue_delayed_work_on_170(8192, wq, dwork, delay);
  return (tmp);
}
}
__inline static bool schedule_delayed_work___0(struct delayed_work *dwork , unsigned long delay )
{
  bool tmp ;
  {
  tmp = queue_delayed_work___2(system_wq, dwork, delay);
  return (tmp);
}
}
void invoke_work_6(void) ;
void call_and_disable_work_6(struct work_struct *work ) ;
int octeon_console_read(struct octeon_device *oct , u32 console_num , char *buffer ,
                        u32 buf_size , u32 flags ) ;
static void octeon_remote_lock(void) ;
static void octeon_remote_unlock(void) ;
static u64 cvmx_bootmem_phy_named_block_find(struct octeon_device *oct , char const *name ,
                                             u32 flags ) ;
__inline static u64 __cvmx_bootmem_desc_get(struct octeon_device *oct , u64 base ,
                                            u32 offset , u32 size )
{
  u32 tmp ;
  u64 tmp___0 ;
  {
  base = ((u64 )offset + base) | 0x8000000000000000ULL;
  switch (size) {
  case 4U:
  tmp = octeon_read_device_mem32(oct, base);
  return ((u64 )tmp);
  case 8U:
  tmp___0 = octeon_read_device_mem64(oct, base);
  return (tmp___0);
  default: ;
  return (0ULL);
  }
}
}
static void CVMX_BOOTMEM_NAMED_GET_NAME(struct octeon_device *oct , u64 addr , char *str ,
                                        u32 len )
{
  {
  addr = addr + 16ULL;
  octeon_pci_read_core_mem(oct, addr, (u8 *)str, len);
  *(str + (unsigned long )len) = 0;
  return;
}
}
static int __cvmx_bootmem_check_version(struct octeon_device *oct , u32 exact_match )
{
  u32 major_version ;
  u32 minor_version ;
  u64 tmp ;
  u64 tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  if (oct->bootmem_desc_addr == 0ULL) {
    oct->bootmem_desc_addr = octeon_read_device_mem64(oct, 442624ULL);
  } else {
  }
  tmp = __cvmx_bootmem_desc_get(oct, oct->bootmem_desc_addr, 16U, 4U);
  major_version = (unsigned int )tmp;
  tmp___0 = __cvmx_bootmem_desc_get(oct, oct->bootmem_desc_addr, 20U, 4U);
  minor_version = (unsigned int )tmp___0;
  descriptor.modname = "liquidio";
  descriptor.function = "__cvmx_bootmem_check_version";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/octeon_console.c";
  descriptor.format = "%s: major_version=%d\n";
  descriptor.lineno = 268U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "%s: major_version=%d\n", "__cvmx_bootmem_check_version", major_version);
  } else {
  }
  if (major_version > 3U || (exact_match != 0U && major_version != exact_match)) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "bootmem ver mismatch %d.%d addr:0x%llx\n",
            major_version, minor_version, oct->bootmem_desc_addr);
    return (-1);
  } else {
    return (0);
  }
}
}
static struct cvmx_bootmem_named_block_desc const *__cvmx_bootmem_find_named_block_flags(struct octeon_device *oct ,
                                                                                           char const *name ,
                                                                                           u32 flags )
{
  struct cvmx_bootmem_named_block_desc *desc ;
  u64 named_addr ;
  u64 tmp ;
  {
  desc = & oct->bootmem_named_block_desc;
  tmp = cvmx_bootmem_phy_named_block_find(oct, name, flags);
  named_addr = tmp;
  if (named_addr != 0ULL) {
    desc->base_addr = __cvmx_bootmem_desc_get(oct, named_addr, 0U, 8U);
    desc->size = __cvmx_bootmem_desc_get(oct, named_addr, 8U, 8U);
    strncpy((char *)(& desc->name), name, 128UL);
    desc->name[127UL] = 0;
    return ((struct cvmx_bootmem_named_block_desc const *)(& oct->bootmem_named_block_desc));
  } else {
    return ((struct cvmx_bootmem_named_block_desc const *)0);
  }
}
}
static u64 cvmx_bootmem_phy_named_block_find(struct octeon_device *oct , char const *name ,
                                             u32 flags )
{
  u64 result ;
  u32 i ;
  u64 named_block_array_addr ;
  u64 tmp ;
  u32 num_blocks ;
  u64 tmp___0 ;
  u32 name_length ;
  u64 tmp___1 ;
  u64 named_addr ;
  u64 named_size ;
  u64 tmp___2 ;
  char *name_tmp ;
  void *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  result = 0ULL;
  tmp___5 = __cvmx_bootmem_check_version(oct, 3U);
  if (tmp___5 == 0) {
    tmp = __cvmx_bootmem_desc_get(oct, oct->bootmem_desc_addr, 48U, 8U);
    named_block_array_addr = tmp;
    tmp___0 = __cvmx_bootmem_desc_get(oct, oct->bootmem_desc_addr, 40U, 4U);
    num_blocks = (unsigned int )tmp___0;
    tmp___1 = __cvmx_bootmem_desc_get(oct, oct->bootmem_desc_addr, 44U, 4U);
    name_length = (unsigned int )tmp___1;
    named_addr = named_block_array_addr;
    i = 0U;
    goto ldv_46757;
    ldv_46756:
    tmp___2 = __cvmx_bootmem_desc_get(oct, named_addr, 8U, 8U);
    named_size = tmp___2;
    if ((unsigned long )name != (unsigned long )((char const *)0) && named_size != 0ULL) {
      tmp___3 = kmalloc((size_t )(name_length + 1U), 208U);
      name_tmp = (char *)tmp___3;
      CVMX_BOOTMEM_NAMED_GET_NAME(oct, named_addr, name_tmp, name_length);
      tmp___4 = strncmp(name, (char const *)name_tmp, (__kernel_size_t )name_length);
      if (tmp___4 == 0) {
        result = named_addr;
        kfree((void const *)name_tmp);
        goto ldv_46755;
      } else {
      }
      kfree((void const *)name_tmp);
    } else
    if ((unsigned long )name == (unsigned long )((char const *)0) && named_size == 0ULL) {
      result = named_addr;
      goto ldv_46755;
    } else {
    }
    named_addr = named_addr + 144ULL;
    i = i + 1U;
    ldv_46757: ;
    if (i < num_blocks) {
      goto ldv_46756;
    } else {
    }
    ldv_46755: ;
  } else {
  }
  return (result);
}
}
static int octeon_named_block_find(struct octeon_device *oct , char const *name ,
                                   u64 *base_addr , u64 *size )
{
  struct cvmx_bootmem_named_block_desc const *named_block ;
  {
  octeon_remote_lock();
  named_block = __cvmx_bootmem_find_named_block_flags(oct, name, 0U);
  octeon_remote_unlock();
  if ((unsigned long )named_block != (unsigned long )((struct cvmx_bootmem_named_block_desc const *)0)) {
    *base_addr = named_block->base_addr;
    *size = named_block->size;
    return (0);
  } else {
  }
  return (1);
}
}
static void octeon_remote_lock(void)
{
  {
  return;
}
}
static void octeon_remote_unlock(void)
{
  {
  return;
}
}
int octeon_console_send_cmd(struct octeon_device *oct , char *cmd_str , u32 wait_hundredths )
{
  u32 len ;
  size_t tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = strlen((char const *)cmd_str);
  len = (u32 )tmp;
  descriptor.modname = "liquidio";
  descriptor.function = "octeon_console_send_cmd";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/octeon_console.c";
  descriptor.format = "sending \"%s\" to bootloader\n";
  descriptor.lineno = 388U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "sending \"%s\" to bootloader\n", cmd_str);
  } else {
  }
  if (len > 247U) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Command string too long, max length is: %d\n",
            247);
    return (-1);
  } else {
  }
  tmp___1 = octeon_wait_for_bootloader(oct, wait_hundredths);
  if (tmp___1 != 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Bootloader not ready for command.\n");
    return (-1);
  } else {
  }
  octeon_remote_lock();
  octeon_pci_write_core_mem(oct, 442376ULL, (u8 *)cmd_str, len);
  octeon_write_device_mem32(oct, 442372ULL, len);
  octeon_write_device_mem32(oct, 442368ULL, 1U);
  tmp___2 = octeon_wait_for_bootloader(oct, 200U);
  if (tmp___2 != 0) {
    octeon_remote_unlock();
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Bootloader did not accept command.\n");
    return (-1);
  } else {
  }
  octeon_remote_unlock();
  return (0);
}
}
int octeon_wait_for_bootloader(struct octeon_device *oct , u32 wait_time_hundredths )
{
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  {
  descriptor.modname = "liquidio";
  descriptor.function = "octeon_wait_for_bootloader";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/octeon_console.c";
  descriptor.format = "waiting %d0 ms for bootloader\n";
  descriptor.lineno = 426U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "waiting %d0 ms for bootloader\n", wait_time_hundredths);
  } else {
  }
  tmp___0 = octeon_mem_access_ok(oct);
  if (tmp___0 != 0) {
    return (-1);
  } else {
  }
  goto ldv_46786;
  ldv_46785:
  wait_time_hundredths = wait_time_hundredths - 1U;
  if (wait_time_hundredths == 0U) {
    return (-1);
  } else {
  }
  schedule_timeout_uninterruptible(2L);
  ldv_46786: ;
  if (wait_time_hundredths != 0U) {
    tmp___1 = octeon_read_device_mem32(oct, 442368ULL);
    if (tmp___1 != 2U) {
      goto ldv_46785;
    } else {
      goto ldv_46787;
    }
  } else {
  }
  ldv_46787: ;
  return (0);
}
}
static void octeon_console_handle_result(struct octeon_device *oct , size_t console_num ,
                                         char *buffer , s32 bytes_read )
{
  struct octeon_console *console ;
  {
  console = (struct octeon_console *)(& oct->console) + console_num;
  console->waiting = 0U;
  return;
}
}
static char console_buffer[512U] ;
static void output_console_line(struct octeon_device *oct , struct octeon_console *console ,
                                size_t console_num , char *console_buffer___0 , s32 bytes_read )
{
  char *line ;
  s32 i ;
  {
  line = console_buffer___0;
  i = 0;
  goto ldv_46806;
  ldv_46805: ;
  if ((int )((signed char )*(console_buffer___0 + (unsigned long )i)) == 10) {
    *(console_buffer___0 + (unsigned long )i) = 0;
    if ((int )((signed char )console->leftover[0]) != 0) {
      _dev_info((struct device const *)(& (oct->pci_dev)->dev), "%lu: %s%s\n", console_num,
                (char *)(& console->leftover), line);
      console->leftover[0] = 0;
    } else {
      _dev_info((struct device const *)(& (oct->pci_dev)->dev), "%lu: %s\n", console_num,
                line);
    }
    line = console_buffer___0 + ((unsigned long )i + 1UL);
  } else {
  }
  i = i + 1;
  ldv_46806: ;
  if (i < bytes_read) {
    goto ldv_46805;
  } else {
  }
  if ((unsigned long )(console_buffer___0 + (unsigned long )bytes_read) != (unsigned long )line) {
    *(console_buffer___0 + (unsigned long )bytes_read) = 0;
    strcpy((char *)(& console->leftover), (char const *)line);
  } else {
  }
  return;
}
}
static void check_console(struct work_struct *work )
{
  s32 bytes_read ;
  s32 tries ;
  s32 total_read ;
  struct octeon_console *console ;
  struct cavium_wk *wk ;
  struct octeon_device *oct ;
  size_t console_num ;
  u32 delay ;
  int tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  {
  wk = (struct cavium_wk *)work;
  oct = (struct octeon_device *)wk->ctxptr;
  console_num = wk->ctxul;
  console = (struct octeon_console *)(& oct->console) + console_num;
  tries = 0;
  total_read = 0;
  ldv_46819:
  bytes_read = octeon_console_read(oct, (u32 )console_num, (char *)(& console_buffer),
                                   511U, 0U);
  if (bytes_read > 0) {
    total_read = total_read + bytes_read;
    if (console->waiting != 0U) {
      octeon_console_handle_result(oct, console_num, (char *)(& console_buffer), bytes_read);
    } else {
    }
    tmp = octeon_console_debug_enabled((u32 )console_num);
    if (tmp != 0) {
      output_console_line(oct, console, console_num, (char *)(& console_buffer), bytes_read);
    } else {
    }
  } else
  if (bytes_read < 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Error reading console %lu, ret=%d\n",
            console_num, bytes_read);
  } else {
  }
  tries = tries + 1;
  if (bytes_read > 0 && tries <= 15) {
    goto ldv_46819;
  } else {
  }
  tmp___0 = octeon_console_debug_enabled((u32 )console_num);
  if ((tmp___0 != 0 && total_read == 0) && (int )((signed char )console->leftover[0]) != 0) {
    _dev_info((struct device const *)(& (oct->pci_dev)->dev), "%lu: %s\n", console_num,
              (char *)(& console->leftover));
    console->leftover[0] = 0;
  } else {
  }
  delay = 100U;
  tmp___1 = msecs_to_jiffies(delay);
  schedule_delayed_work___0(& wk->work, tmp___1);
  return;
}
}
int octeon_init_consoles(struct octeon_device *oct )
{
  int ret ;
  u64 addr ;
  u64 size ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  ret = 0;
  ret = octeon_mem_access_ok(oct);
  if (ret != 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Memory access not okay\'\n");
    return (ret);
  } else {
  }
  ret = octeon_named_block_find(oct, "__pci_console", & addr, & size);
  if (ret != 0) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Could not find console \'%s\'\n",
            (char *)"__pci_console");
    return (ret);
  } else {
  }
  oct->num_consoles = octeon_read_device_mem32(oct, addr + 16ULL);
  oct->console_desc_addr = addr;
  descriptor.modname = "liquidio";
  descriptor.function = "octeon_init_consoles";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11516/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/cavium/liquidio/octeon_console.c";
  descriptor.format = "Initialized consoles. %d available\n";
  descriptor.lineno = 571U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (oct->pci_dev)->dev),
                      "Initialized consoles. %d available\n", oct->num_consoles);
  } else {
  }
  return (ret);
}
}
int octeon_add_console(struct octeon_device *oct , u32 console_num )
{
  int ret ;
  u32 delay ;
  u64 coreaddr ;
  struct delayed_work *work ;
  struct octeon_console *console ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  unsigned long tmp ;
  int tmp___0 ;
  {
  ret = 0;
  if (oct->num_consoles <= console_num) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "trying to read from console number %d when only 0 to %d exist\n",
            console_num, oct->num_consoles);
  } else {
    console = (struct octeon_console *)(& oct->console) + (unsigned long )console_num;
    console->waiting = 0U;
    coreaddr = (oct->console_desc_addr + (u64 )(console_num * 8U)) + 24ULL;
    console->addr = octeon_read_device_mem64(oct, coreaddr);
    coreaddr = console->addr + 36ULL;
    console->buffer_size = octeon_read_device_mem32(oct, coreaddr);
    coreaddr = console->addr;
    console->input_base_addr = octeon_read_device_mem64(oct, coreaddr);
    coreaddr = console->addr + 16ULL;
    console->output_base_addr = octeon_read_device_mem64(oct, coreaddr);
    console->leftover[0] = 0;
    work = & oct->console_poll_work[console_num].work;
    __init_work(& work->work, 0);
    __constr_expr_0.counter = 137438953408L;
    work->work.data = __constr_expr_0;
    lockdep_init_map(& work->work.lockdep_map, "(&(work)->work)", & __key, 0);
    INIT_LIST_HEAD(& work->work.entry);
    work->work.func = & check_console;
    init_timer_key(& work->timer, 2097152U, "(&(work)->timer)", & __key___0);
    work->timer.function = & delayed_work_timer_fn;
    work->timer.data = (unsigned long )work;
    oct->console_poll_work[console_num].ctxptr = (void *)oct;
    oct->console_poll_work[console_num].ctxul = (size_t )console_num;
    delay = 100U;
    tmp = msecs_to_jiffies(delay);
    schedule_delayed_work___0(work, tmp);
    tmp___0 = octeon_console_debug_enabled(console_num);
    if (tmp___0 != 0) {
      ret = octeon_console_send_cmd(oct, (char *)"setenv pci_console_active 1", 2000U);
    } else {
    }
    console->active = 1U;
  }
  return (ret);
}
}
void octeon_remove_consoles(struct octeon_device *oct )
{
  u32 i ;
  struct octeon_console *console ;
  {
  i = 0U;
  goto ldv_46848;
  ldv_46847:
  console = (struct octeon_console *)(& oct->console) + (unsigned long )i;
  if (console->active == 0U) {
    goto ldv_46846;
  } else {
  }
  ldv_cancel_delayed_work_sync_174(& oct->console_poll_work[i].work);
  console->addr = 0ULL;
  console->buffer_size = 0U;
  console->input_base_addr = 0ULL;
  console->output_base_addr = 0ULL;
  ldv_46846:
  i = i + 1U;
  ldv_46848: ;
  if (oct->num_consoles > i) {
    goto ldv_46847;
  } else {
  }
  oct->num_consoles = 0U;
  return;
}
}
__inline static int octeon_console_free_bytes(u32 buffer_size , u32 wr_idx , u32 rd_idx )
{
  {
  if (rd_idx >= buffer_size || wr_idx >= buffer_size) {
    return (-1);
  } else {
  }
  return ((int )(((buffer_size + (rd_idx - wr_idx)) - 1U) % buffer_size));
}
}
__inline static int octeon_console_avail_bytes(u32 buffer_size , u32 wr_idx , u32 rd_idx )
{
  int tmp ;
  {
  if (rd_idx >= buffer_size || wr_idx >= buffer_size) {
    return (-1);
  } else {
  }
  tmp = octeon_console_free_bytes(buffer_size, wr_idx, rd_idx);
  return ((int )((buffer_size - (u32 )tmp) - 1U));
}
}
int octeon_console_read(struct octeon_device *oct , u32 console_num , char *buffer ,
                        u32 buf_size , u32 flags )
{
  int bytes_to_read ;
  u32 rd_idx ;
  u32 wr_idx ;
  struct octeon_console *console ;
  int _min1 ;
  int _min2 ;
  {
  if (oct->num_consoles <= console_num) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "Attempted to read from disabled console %d\n",
            console_num);
    return (0);
  } else {
  }
  console = (struct octeon_console *)(& oct->console) + (unsigned long )console_num;
  rd_idx = octeon_read_device_mem32(oct, console->addr + 24ULL);
  wr_idx = octeon_read_device_mem32(oct, console->addr + 28ULL);
  bytes_to_read = octeon_console_avail_bytes(console->buffer_size, wr_idx, rd_idx);
  if (bytes_to_read <= 0) {
    return (bytes_to_read);
  } else {
  }
  _min1 = bytes_to_read;
  _min2 = (int )buf_size;
  bytes_to_read = _min1 < _min2 ? _min1 : _min2;
  if (rd_idx + (u32 )bytes_to_read >= console->buffer_size) {
    bytes_to_read = (int )(console->buffer_size - rd_idx);
  } else {
  }
  octeon_pci_read_core_mem(oct, console->output_base_addr + (u64 )rd_idx, (u8 *)buffer,
                           (u32 )bytes_to_read);
  octeon_write_device_mem32(oct, console->addr + 24ULL, (rd_idx + (u32 )bytes_to_read) % console->buffer_size);
  return (bytes_to_read);
}
}
void invoke_work_6(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_6_0 == 2 || ldv_work_6_0 == 3) {
    ldv_work_6_0 = 4;
    check_console(ldv_work_struct_6_0);
    ldv_work_6_0 = 1;
  } else {
  }
  goto ldv_46880;
  case 1: ;
  if (ldv_work_6_1 == 2 || ldv_work_6_1 == 3) {
    ldv_work_6_1 = 4;
    check_console(ldv_work_struct_6_0);
    ldv_work_6_1 = 1;
  } else {
  }
  goto ldv_46880;
  case 2: ;
  if (ldv_work_6_2 == 2 || ldv_work_6_2 == 3) {
    ldv_work_6_2 = 4;
    check_console(ldv_work_struct_6_0);
    ldv_work_6_2 = 1;
  } else {
  }
  goto ldv_46880;
  case 3: ;
  if (ldv_work_6_3 == 2 || ldv_work_6_3 == 3) {
    ldv_work_6_3 = 4;
    check_console(ldv_work_struct_6_0);
    ldv_work_6_3 = 1;
  } else {
  }
  goto ldv_46880;
  default:
  ldv_stop();
  }
  ldv_46880: ;
  return;
}
}
void disable_work_6(struct work_struct *work )
{
  {
  if ((ldv_work_6_0 == 3 || ldv_work_6_0 == 2) && (unsigned long )ldv_work_struct_6_0 == (unsigned long )work) {
    ldv_work_6_0 = 1;
  } else {
  }
  if ((ldv_work_6_1 == 3 || ldv_work_6_1 == 2) && (unsigned long )ldv_work_struct_6_1 == (unsigned long )work) {
    ldv_work_6_1 = 1;
  } else {
  }
  if ((ldv_work_6_2 == 3 || ldv_work_6_2 == 2) && (unsigned long )ldv_work_struct_6_2 == (unsigned long )work) {
    ldv_work_6_2 = 1;
  } else {
  }
  if ((ldv_work_6_3 == 3 || ldv_work_6_3 == 2) && (unsigned long )ldv_work_struct_6_3 == (unsigned long )work) {
    ldv_work_6_3 = 1;
  } else {
  }
  return;
}
}
void work_init_6(void)
{
  {
  ldv_work_6_0 = 0;
  ldv_work_6_1 = 0;
  ldv_work_6_2 = 0;
  ldv_work_6_3 = 0;
  return;
}
}
void call_and_disable_all_6(int state )
{
  {
  if (ldv_work_6_0 == state) {
    call_and_disable_work_6(ldv_work_struct_6_0);
  } else {
  }
  if (ldv_work_6_1 == state) {
    call_and_disable_work_6(ldv_work_struct_6_1);
  } else {
  }
  if (ldv_work_6_2 == state) {
    call_and_disable_work_6(ldv_work_struct_6_2);
  } else {
  }
  if (ldv_work_6_3 == state) {
    call_and_disable_work_6(ldv_work_struct_6_3);
  } else {
  }
  return;
}
}
void call_and_disable_work_6(struct work_struct *work )
{
  {
  if ((ldv_work_6_0 == 2 || ldv_work_6_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_6_0) {
    check_console(work);
    ldv_work_6_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_6_1 == 2 || ldv_work_6_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_6_1) {
    check_console(work);
    ldv_work_6_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_6_2 == 2 || ldv_work_6_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_6_2) {
    check_console(work);
    ldv_work_6_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_6_3 == 2 || ldv_work_6_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_6_3) {
    check_console(work);
    ldv_work_6_3 = 1;
    return;
  } else {
  }
  return;
}
}
void activate_work_6(struct work_struct *work , int state )
{
  {
  if (ldv_work_6_0 == 0) {
    ldv_work_struct_6_0 = work;
    ldv_work_6_0 = state;
    return;
  } else {
  }
  if (ldv_work_6_1 == 0) {
    ldv_work_struct_6_1 = work;
    ldv_work_6_1 = state;
    return;
  } else {
  }
  if (ldv_work_6_2 == 0) {
    ldv_work_struct_6_2 = work;
    ldv_work_6_2 = state;
    return;
  } else {
  }
  if (ldv_work_6_3 == 0) {
    ldv_work_struct_6_3 = work;
    ldv_work_6_3 = state;
    return;
  } else {
  }
  return;
}
}
bool ldv_queue_work_on_169(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_6(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_170(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_6(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_171(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_6(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_172(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_6(2);
  return;
}
}
bool ldv_queue_delayed_work_on_173(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_6(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_sync_174(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_6(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_185(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_187(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_186(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_189(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_188(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static void octeon_swap_8B_data___4(u64 *data , u32 blocks )
{
  {
  goto ldv_46163;
  ldv_46162:
  __swab64s(data);
  blocks = blocks - 1U;
  data = data + 1;
  ldv_46163: ;
  if (blocks != 0U) {
    goto ldv_46162;
  } else {
  }
  return;
}
}
void *octeon_alloc_soft_command_resp(struct octeon_device *oct , struct octeon_instr_64B *cmd ,
                                     size_t rdatasize )
{
  struct octeon_soft_command *sc ;
  struct octeon_instr_ih *ih ;
  struct octeon_instr_irh *irh ;
  struct octeon_instr_rdp *rdp ;
  {
  sc = octeon_alloc_soft_command(oct, 0U, (u32 )rdatasize, 0U);
  if ((unsigned long )sc == (unsigned long )((struct octeon_soft_command *)0)) {
    return ((void *)0);
  } else {
  }
  memcpy((void *)(& sc->cmd), (void const *)cmd, 64UL);
  ih = (struct octeon_instr_ih *)(& sc->cmd.ih);
  ih->fsz = 40U;
  irh = (struct octeon_instr_irh *)(& sc->cmd.irh);
  irh->rflag = 1U;
  irh->len = 4U;
  rdp = (struct octeon_instr_rdp *)(& sc->cmd.rdp);
  rdp->pcie_port = (unsigned char )oct->pcie_port;
  rdp->rlen = (unsigned short )rdatasize;
  *(sc->status_word) = 0xffffffffffffffffULL;
  sc->wait_time = 1000UL;
  sc->timeout = sc->wait_time + (unsigned long )jiffies;
  return ((void *)sc);
}
}
int octnet_send_nic_data_pkt(struct octeon_device *oct , struct octnic_data_pkt *ndata ,
                             u32 xmit_more )
{
  int ring_doorbell___0 ;
  int tmp ;
  {
  ring_doorbell___0 = xmit_more == 0U;
  tmp = octeon_send_command(oct, ndata->q_no, (u32 )ring_doorbell___0, (void *)(& ndata->cmd),
                            ndata->buf, ndata->datasize, ndata->reqtype);
  return (tmp);
}
}
static void octnet_link_ctrl_callback(struct octeon_device *oct , u32 status , void *sc_ptr )
{
  struct octeon_soft_command *sc ;
  struct octnic_ctrl_pkt *nctrl ;
  {
  sc = (struct octeon_soft_command *)sc_ptr;
  nctrl = (struct octnic_ctrl_pkt *)sc->ctxptr;
  if (status == 0U && (unsigned long )nctrl->cb_fn != (unsigned long )((void (*)(void * ))0)) {
    (*(nctrl->cb_fn))((void *)nctrl);
  } else {
  }
  octeon_free_soft_command(oct, sc);
  return;
}
}
__inline static struct octeon_soft_command *octnic_alloc_ctrl_pkt_sc(struct octeon_device *oct ,
                                                                     struct octnic_ctrl_pkt *nctrl ,
                                                                     struct octnic_ctrl_params nparams )
{
  struct octeon_soft_command *sc ;
  u8 *data ;
  size_t rdatasize ;
  u32 uddsize ;
  u32 datasize ;
  {
  sc = (struct octeon_soft_command *)0;
  uddsize = 0U;
  datasize = 0U;
  uddsize = (unsigned int )((int )nctrl->ncmd.s.more * 8);
  datasize = uddsize + 8U;
  rdatasize = nctrl->wait_time != 0UL ? 16UL : 0UL;
  sc = octeon_alloc_soft_command(oct, datasize, (u32 )rdatasize, 320U);
  if ((unsigned long )sc == (unsigned long )((struct octeon_soft_command *)0)) {
    return ((struct octeon_soft_command *)0);
  } else {
  }
  memcpy(sc->ctxptr, (void const *)nctrl, 320UL);
  data = (u8 *)sc->virtdptr;
  memcpy((void *)data, (void const *)(& nctrl->ncmd), 8UL);
  octeon_swap_8B_data___4((u64 *)data, 1U);
  if (uddsize != 0U) {
    memcpy((void *)data + 8U, (void const *)(& nctrl->udd), (size_t )uddsize);
  } else {
  }
  octeon_prepare_soft_command(oct, sc, 1, 3, 0U, 0ULL, 0ULL);
  sc->callback = & octnet_link_ctrl_callback;
  sc->callback_arg = (void *)sc;
  sc->wait_time = nctrl->wait_time;
  return (sc);
}
}
int octnet_send_nic_ctrl_pkt(struct octeon_device *oct , struct octnic_ctrl_pkt *nctrl ,
                             struct octnic_ctrl_params nparams )
{
  int retval ;
  struct octeon_soft_command *sc ;
  {
  sc = (struct octeon_soft_command *)0;
  sc = octnic_alloc_ctrl_pkt_sc(oct, nctrl, nparams);
  if ((unsigned long )sc == (unsigned long )((struct octeon_soft_command *)0)) {
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s soft command alloc failed\n",
            "octnet_send_nic_ctrl_pkt");
    return (-1);
  } else {
  }
  retval = octeon_send_soft_command(oct, sc);
  if (retval != 0) {
    octeon_free_soft_command(oct, sc);
    dev_err((struct device const *)(& (oct->pci_dev)->dev), "%s soft command send failed status: %x\n",
            "octnet_send_nic_ctrl_pkt", retval);
    return (-1);
  } else {
  }
  return (retval);
}
}
bool ldv_queue_work_on_185(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_6(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_186(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_6(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_187(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_6(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_188(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_6(2);
  return;
}
}
bool ldv_queue_delayed_work_on_189(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_6(& ldv_func_arg3->work, 2);
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
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int __bitmap_weight(const unsigned long *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __get_free_pages(gfp_t arg0, unsigned int arg1) {
  return __VERIFIER_nondet_ulong();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void *__kmalloc(size_t arg0, gfp_t arg1) {
  return ldv_malloc(0UL);
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __might_fault(const char *arg0, int arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void __napi_schedule(struct napi_struct *arg0) {
  return;
}
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return ldv_malloc(sizeof(struct sk_buff));
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __tasklet_schedule(struct tasklet_struct *arg0) {
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
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_bh(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return ldv_malloc(sizeof(struct net_device));
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work_sync(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
void complete(struct completion *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
u32 crc32_le(u32 arg0, const unsigned char *arg1, size_t arg2) {
  return __VERIFIER_nondet_uint();
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_mapping_error(struct device *arg0, dma_addr_t arg1) {
  return;
}
void debug_dma_sync_single_for_cpu(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
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
void *dma_alloc_attrs(struct device *arg0, size_t arg1, dma_addr_t *arg2, gfp_t arg3, struct dma_attrs *arg4) {
  return ldv_malloc(0UL);
}
void dma_free_attrs(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3, struct dma_attrs *arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_supported(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void dql_completed(struct dql *arg0, unsigned int arg1) {
  return;
}
unsigned short __VERIFIER_nondet_ushort(void);
__be16 eth_type_trans(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_ushort();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 ethtool_op_get_link(struct net_device *arg0) {
  return __VERIFIER_nondet_uint();
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
void free_pages(unsigned long arg0, unsigned int arg1) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void iounmap(volatile void *arg0) {
  return;
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
int ldv_probe_10() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_10() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_early_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_shutdown_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_10() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_late_9() {
  return __VERIFIER_nondet_int();
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void napi_disable(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
gro_result_t napi_gro_receive(struct napi_struct *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
}
void netdev_info(const struct net_device *arg0, const char *arg1, ...) {
  return;
}
void netif_carrier_off(struct net_device *arg0) {
  return;
}
void netif_carrier_on(struct net_device *arg0) {
  return;
}
void netif_napi_add(struct net_device *arg0, struct napi_struct *arg1, int (*arg2)(struct napi_struct *, int), int arg3) {
  return;
}
void netif_schedule_queue(struct netdev_queue *arg0) {
  return;
}
void netif_tx_wake_queue(struct netdev_queue *arg0) {
  return;
}
void netif_wake_subqueue(struct net_device *arg0, u16 arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 arg3) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_msi(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msi_range(struct pci_dev *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void pci_release_region(struct pci_dev *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_region(struct pci_dev *arg0, int arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
void print_hex_dump(const char *arg0, const char *arg1, int arg2, int arg3, int arg4, const void *arg5, size_t arg6, bool arg7) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ptp_clock_index(struct ptp_clock *arg0) {
  return __VERIFIER_nondet_int();
}
struct ptp_clock *ptp_clock_register(struct ptp_clock_info *arg0, struct device *arg1) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int ptp_clock_unregister(struct ptp_clock *arg0) {
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
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void release_firmware(const struct firmware *arg0) {
  return;
}
void remove_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_firmware(const struct firmware **arg0, const char *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout_uninterruptible(long arg0) {
  return __VERIFIER_nondet_long();
}
unsigned char *skb_pull(struct sk_buff *arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(unsigned char));
}
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  unsigned char *ret_val = arg0->data + arg0->tail;
  arg0->tail += arg1;
  return ret_val;
}
void skb_tstamp_tx(struct sk_buff *arg0, struct skb_shared_hwtstamps *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int smp_call_function_single_async(int arg0, struct call_single_data *arg1) {
  return __VERIFIER_nondet_int();
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
  return;
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
void vfree(const void *arg0) {
  return;
}
void *vmalloc(unsigned long arg0) {
  return ldv_malloc(0UL);
}
void wait_for_completion(struct completion *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int wait_for_completion_timeout(struct completion *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int default_wake_function(wait_queue_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
