extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
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
typedef char *__kernel_caddr_t;
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
typedef __kernel_caddr_t *caddr_t;
typedef __s8 int8_t;
typedef __s32 int32_t;
typedef __u8 uint8_t;
typedef __u16 uint16_t;
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
struct semaphore {
   raw_spinlock_t lock ;
   unsigned int count ;
   struct list_head wait_list ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
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
union __anonunion____missing_field_name_244 {
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
   union __anonunion____missing_field_name_244 __annonCompField69 ;
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
struct dma_pool;
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
struct miscdevice {
   int minor ;
   char const *name ;
   struct file_operations const *fops ;
   struct list_head list ;
   struct device *parent ;
   struct device *this_device ;
   struct attribute_group const **groups ;
   char const *nodename ;
   umode_t mode ;
};
struct __anonstruct_mbox_t_245 {
   uint8_t cmd ;
   uint8_t cmdid ;
   uint16_t numsectors ;
   uint32_t lba ;
   uint32_t xferaddr ;
   uint8_t logdrv ;
   uint8_t numsge ;
   uint8_t resvd ;
   uint8_t busy ;
   uint8_t numstatus ;
   uint8_t status ;
   uint8_t completed[46U] ;
   uint8_t poll ;
   uint8_t ack ;
};
typedef struct __anonstruct_mbox_t_245 mbox_t;
struct __anonstruct_mbox64_t_246 {
   uint32_t xferaddr_lo ;
   uint32_t xferaddr_hi ;
   mbox_t mbox32 ;
};
typedef struct __anonstruct_mbox64_t_246 mbox64_t;
struct __anonstruct_mraid_passthru_t_248 {
   unsigned char timeout : 3 ;
   unsigned char ars : 1 ;
   unsigned char reserved : 3 ;
   unsigned char islogical : 1 ;
   uint8_t logdrv ;
   uint8_t channel ;
   uint8_t target ;
   uint8_t queuetag ;
   uint8_t queueaction ;
   uint8_t cdb[10U] ;
   uint8_t cdblen ;
   uint8_t reqsenselen ;
   uint8_t reqsensearea[32U] ;
   uint8_t numsge ;
   uint8_t scsistatus ;
   uint32_t dataxferaddr ;
   uint32_t dataxferlen ;
};
typedef struct __anonstruct_mraid_passthru_t_248 mraid_passthru_t;
struct uioc {
   uint8_t signature[16U] ;
   uint16_t mb_type ;
   uint16_t app_type ;
   uint32_t opcode ;
   uint32_t adapno ;
   uint64_t cmdbuf ;
   uint32_t xferlen ;
   uint32_t data_dir ;
   int32_t status ;
   uint8_t reserved[128U] ;
   void *user_data ;
   uint32_t user_data_len ;
   uint32_t pad_for_64bit_align ;
   mraid_passthru_t *user_pthru ;
   mraid_passthru_t *pthru32 ;
   dma_addr_t pthru32_h ;
   struct list_head list ;
   void (*done)(struct uioc * ) ;
   caddr_t buf_vaddr ;
   dma_addr_t buf_paddr ;
   int8_t pool_index ;
   uint8_t free_buf ;
   uint8_t timedout ;
};
typedef struct uioc uioc_t;
struct mraid_hba_info {
   uint16_t pci_vendor_id ;
   uint16_t pci_device_id ;
   uint16_t subsys_vendor_id ;
   uint16_t subsys_device_id ;
   uint64_t baseport ;
   uint8_t pci_bus ;
   uint8_t pci_dev_fn ;
   uint8_t pci_slot ;
   uint8_t irq ;
   uint32_t unique_id ;
   uint32_t host_no ;
   uint8_t num_ldrv ;
};
typedef struct mraid_hba_info mraid_hba_info_t;
struct mcontroller {
   uint64_t base ;
   uint8_t irq ;
   uint8_t numldrv ;
   uint8_t pcibus ;
   uint16_t pcidev ;
   uint8_t pcifun ;
   uint16_t pciid ;
   uint16_t pcivendor ;
   uint8_t pcislot ;
   uint32_t uid ;
};
typedef struct mcontroller mcontroller_t;
struct mm_dmapool {
   caddr_t vaddr ;
   dma_addr_t paddr ;
   uint32_t buf_size ;
   struct dma_pool *handle ;
   spinlock_t lock ;
   uint8_t in_use ;
};
typedef struct mm_dmapool mm_dmapool_t;
struct mraid_mmadp {
   uint32_t unique_id ;
   uint32_t drvr_type ;
   unsigned long drvr_data ;
   uint16_t timeout ;
   uint8_t max_kioc ;
   struct pci_dev *pdev ;
   int (*issue_uioc)(unsigned long , uioc_t * , uint32_t ) ;
   uint32_t quiescent ;
   struct list_head list ;
   uioc_t *kioc_list ;
   struct list_head kioc_pool ;
   spinlock_t kioc_pool_lock ;
   struct semaphore kioc_semaphore ;
   mbox64_t *mbox_list ;
   struct dma_pool *pthru_dma_pool ;
   mm_dmapool_t dma_pool_list[5U] ;
};
typedef struct mraid_mmadp mraid_mmadp_t;
struct __anonstruct_fcs_273 {
   uint8_t opcode ;
   uint8_t subopcode ;
   uint16_t adapno ;
   uint8_t *buffer ;
   uint32_t length ;
};
union __anonunion_ui_272 {
   uint8_t fca[16U] ;
   struct __anonstruct_fcs_273 fcs ;
};
struct mimd {
   uint32_t inlen ;
   uint32_t outlen ;
   union __anonunion_ui_272 ui ;
   uint8_t mbox[18U] ;
   mraid_passthru_t pthru ;
   char *data ;
};
typedef struct mimd mimd_t;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
extern int printk(char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern void __might_fault(char const * , int ) ;
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
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
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
extern int memcmp(void const * , void const * , size_t ) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void ldv_spin_unlock_irqrestore_12(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern unsigned long volatile jiffies ;
extern void add_timer(struct timer_list * ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_25(struct timer_list *ldv_func_arg1 ) ;
extern bool capable(int ) ;
extern void schedule(void) ;
extern void kfree(void const * ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
int LDV_IN_INTERRUPT = 1;
int ldv_state_variable_2 ;
int ldv_timer_state_1 = 0;
int ref_cnt ;
struct file *lsi_fops_group2 ;
struct inode *lsi_fops_group1 ;
int ldv_state_variable_1 ;
struct timer_list *ldv_timer_list_1 ;
int ldv_state_variable_0 ;
int reg_timer_1(struct timer_list *timer ) ;
void ldv_file_operations_2(void) ;
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void choose_timer_1(struct timer_list *timer ) ;
void disable_suitable_timer_1(struct timer_list *timer ) ;
__inline static void sema_init(struct semaphore *sem , int val )
{
  struct lock_class_key __key ;
  struct semaphore __constr_expr_0 ;
  {
  __constr_expr_0.lock.raw_lock.val.counter = 0;
  __constr_expr_0.lock.magic = 3735899821U;
  __constr_expr_0.lock.owner_cpu = 4294967295U;
  __constr_expr_0.lock.owner = (void *)-1;
  __constr_expr_0.lock.dep_map.key = 0;
  __constr_expr_0.lock.dep_map.class_cache[0] = 0;
  __constr_expr_0.lock.dep_map.class_cache[1] = 0;
  __constr_expr_0.lock.dep_map.name = "(*sem).lock";
  __constr_expr_0.lock.dep_map.cpu = 0;
  __constr_expr_0.lock.dep_map.ip = 0UL;
  __constr_expr_0.count = (unsigned int )val;
  __constr_expr_0.wait_list.next = & sem->wait_list;
  __constr_expr_0.wait_list.prev = & sem->wait_list;
  *sem = __constr_expr_0;
  lockdep_init_map(& sem->lock.dep_map, "semaphore->lock", & __key, 0);
  return;
}
}
extern void down(struct semaphore * ) ;
extern void up(struct semaphore * ) ;
extern loff_t noop_llseek(struct file * , loff_t , int ) ;
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
extern struct dma_pool *dma_pool_create(char const * , struct device * , size_t ,
                                        size_t , size_t ) ;
extern void dma_pool_destroy(struct dma_pool * ) ;
void *ldv_dma_pool_alloc_24(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 ) ;
void *ldv_dma_pool_alloc_26(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 ) ;
void *ldv_dma_pool_alloc_27(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 ) ;
extern void dma_pool_free(struct dma_pool * , void * , dma_addr_t ) ;
extern int misc_register(struct miscdevice * ) ;
int ldv_misc_register_28(struct miscdevice *misc ) ;
extern int misc_deregister(struct miscdevice * ) ;
int ldv_misc_deregister_29(struct miscdevice *misc ) ;
int mraid_mm_register_adp(mraid_mmadp_t *lld_adp ) ;
int mraid_mm_unregister_adp(uint32_t unique_id ) ;
uint32_t mraid_mm_adapter_app_handle(uint32_t unique_id ) ;
static struct mutex mraid_mm_mutex = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "mraid_mm_mutex.wait_lock",
                                                          0, 0UL}}}}, {& mraid_mm_mutex.wait_list,
                                                                       & mraid_mm_mutex.wait_list},
    0, (void *)(& mraid_mm_mutex), {0, {0, 0}, "mraid_mm_mutex", 0, 0UL}};
static int mraid_mm_open(struct inode *inode , struct file *filep ) ;
static long mraid_mm_unlocked_ioctl(struct file *filep , unsigned int cmd , unsigned long arg ) ;
static int mimd_to_kioc(mimd_t *umimd , mraid_mmadp_t *adp , uioc_t *kioc ) ;
static int kioc_to_mimd(uioc_t *kioc , mimd_t *mimd ) ;
static int handle_drvrcmd(void *arg , uint8_t old_ioctl , int *rval ) ;
static int lld_ioctl(mraid_mmadp_t *adp , uioc_t *kioc ) ;
static void ioctl_done(uioc_t *kioc ) ;
static void lld_timedout(unsigned long ptr ) ;
static void hinfo_to_cinfo(mraid_hba_info_t *hinfo , mcontroller_t *cinfo ) ;
static mraid_mmadp_t *mraid_mm_get_adapter(mimd_t *umimd , int *rval ) ;
static uioc_t *mraid_mm_alloc_kioc(mraid_mmadp_t *adp ) ;
static void mraid_mm_dealloc_kioc(mraid_mmadp_t *adp , uioc_t *kioc ) ;
static int mraid_mm_attach_buf(mraid_mmadp_t *adp , uioc_t *kioc , int xferlen ) ;
static int mraid_mm_setup_dma_pools(mraid_mmadp_t *adp ) ;
static void mraid_mm_free_adp_resources(mraid_mmadp_t *adp ) ;
static void mraid_mm_teardown_dma_pools(mraid_mmadp_t *adp ) ;
static long mraid_mm_compat_ioctl(struct file *filep , unsigned int cmd , unsigned long arg ) ;
static int dbglevel = 0;
static char const __kstrtab_mraid_mm_register_adp[22U] =
  { 'm', 'r', 'a', 'i',
        'd', '_', 'm', 'm',
        '_', 'r', 'e', 'g',
        'i', 's', 't', 'e',
        'r', '_', 'a', 'd',
        'p', '\000'};
struct kernel_symbol const __ksymtab_mraid_mm_register_adp ;
struct kernel_symbol const __ksymtab_mraid_mm_register_adp = {(unsigned long )(& mraid_mm_register_adp), (char const *)(& __kstrtab_mraid_mm_register_adp)};
static char const __kstrtab_mraid_mm_unregister_adp[24U] =
  { 'm', 'r', 'a', 'i',
        'd', '_', 'm', 'm',
        '_', 'u', 'n', 'r',
        'e', 'g', 'i', 's',
        't', 'e', 'r', '_',
        'a', 'd', 'p', '\000'};
struct kernel_symbol const __ksymtab_mraid_mm_unregister_adp ;
struct kernel_symbol const __ksymtab_mraid_mm_unregister_adp = {(unsigned long )(& mraid_mm_unregister_adp), (char const *)(& __kstrtab_mraid_mm_unregister_adp)};
static char const __kstrtab_mraid_mm_adapter_app_handle[28U] =
  { 'm', 'r', 'a', 'i',
        'd', '_', 'm', 'm',
        '_', 'a', 'd', 'a',
        'p', 't', 'e', 'r',
        '_', 'a', 'p', 'p',
        '_', 'h', 'a', 'n',
        'd', 'l', 'e', '\000'};
struct kernel_symbol const __ksymtab_mraid_mm_adapter_app_handle ;
struct kernel_symbol const __ksymtab_mraid_mm_adapter_app_handle = {(unsigned long )(& mraid_mm_adapter_app_handle), (char const *)(& __kstrtab_mraid_mm_adapter_app_handle)};
static uint32_t drvr_ver = 35652103U;
static int adapters_count_g ;
static struct list_head adapters_list_g ;
static wait_queue_head_t wait_q ;
static struct file_operations const lsi_fops =
     {& __this_module, & noop_llseek, 0, 0, 0, 0, 0, 0, & mraid_mm_unlocked_ioctl, & mraid_mm_compat_ioctl,
    0, 0, & mraid_mm_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct miscdevice megaraid_mm_dev =
     {255, "megadev0", & lsi_fops, {0, 0}, 0, 0, 0, 0, (unsigned short)0};
static int mraid_mm_open(struct inode *inode , struct file *filep )
{
  bool tmp ;
  int tmp___0 ;
  {
  tmp = capable(21);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-13);
  } else {
  }
  return (0);
}
}
static int mraid_mm_ioctl(struct file *filep , unsigned int cmd , unsigned long arg )
{
  uioc_t *kioc ;
  char signature[16U] ;
  unsigned int tmp ;
  int rval ;
  mraid_mmadp_t *adp ;
  uint8_t old_ioctl ;
  int drvrcmd_rval ;
  void *argp ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  {
  signature[0] = 0;
  tmp = 1U;
  while (1) {
    if (tmp >= 16U) {
      break;
    } else {
    }
    signature[tmp] = (char)0;
    tmp = tmp + 1U;
  }
  argp = (void *)arg;
  if (((cmd >> 8) & 255U) != 109U && cmd != 128U) {
    return (-22);
  } else {
  }
  tmp___0 = copy_from_user((void *)(& signature), (void const *)argp, 16UL);
  if (tmp___0 != 0UL) {
    if (dbglevel >= 0) {
      printk("\fmegaraid cmm: copy from usr addr failed\n");
    } else {
    }
    return (-14);
  } else {
  }
  tmp___1 = memcmp((void const *)(& signature), (void const *)"$$_EXTD_IOCTL_$$",
                   16UL);
  if (tmp___1 == 0) {
    old_ioctl = 0U;
  } else {
    old_ioctl = 1U;
  }
  if ((unsigned int )old_ioctl == 0U) {
    return (-22);
  } else {
  }
  rval = handle_drvrcmd(argp, (int )old_ioctl, & drvrcmd_rval);
  if (rval < 0) {
    return (rval);
  } else
  if (rval == 0) {
    return (drvrcmd_rval);
  } else {
  }
  rval = 0;
  adp = mraid_mm_get_adapter((mimd_t *)argp, & rval);
  if ((unsigned long )adp == (unsigned long )((mraid_mmadp_t *)0)) {
    return (rval);
  } else {
  }
  if (adp->quiescent == 0U) {
    if (dbglevel >= 0) {
      printk("\fmegaraid cmm: controller cannot accept cmds due to earlier errors\n");
    } else {
    }
    return (-14);
  } else {
  }
  kioc = mraid_mm_alloc_kioc(adp);
  rval = mimd_to_kioc((mimd_t *)argp, adp, kioc);
  if (rval != 0) {
    mraid_mm_dealloc_kioc(adp, kioc);
    return (rval);
  } else {
  }
  kioc->done = & ioctl_done;
  rval = lld_ioctl(adp, kioc);
  if (rval != 0) {
    if ((unsigned int )kioc->timedout == 0U) {
      mraid_mm_dealloc_kioc(adp, kioc);
    } else {
    }
    return (rval);
  } else {
  }
  rval = kioc_to_mimd(kioc, (mimd_t *)argp);
  mraid_mm_dealloc_kioc(adp, kioc);
  return (rval);
}
}
static long mraid_mm_unlocked_ioctl(struct file *filep , unsigned int cmd , unsigned long arg )
{
  int err ;
  {
  mutex_lock_nested(& mraid_mm_mutex, 0U);
  err = mraid_mm_ioctl(filep, cmd, arg);
  mutex_unlock(& mraid_mm_mutex);
  return ((long )err);
}
}
static mraid_mmadp_t *mraid_mm_get_adapter(mimd_t *umimd , int *rval )
{
  mraid_mmadp_t *adapter ;
  mimd_t mimd ;
  uint32_t adapno ;
  int iterator ;
  unsigned long tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  {
  tmp = copy_from_user((void *)(& mimd), (void const *)umimd, 110UL);
  if (tmp != 0UL) {
    *rval = -14;
    return ((mraid_mmadp_t *)0);
  } else {
  }
  adapno = (unsigned int )mimd.ui.fcs.adapno ^ 27904U;
  if ((uint32_t )adapters_count_g <= adapno) {
    *rval = -19;
    return ((mraid_mmadp_t *)0);
  } else {
  }
  adapter = (mraid_mmadp_t *)0;
  iterator = 0;
  __mptr = (struct list_head const *)adapters_list_g.next;
  adapter = (mraid_mmadp_t *)__mptr + 0xffffffffffffffd0UL;
  goto ldv_31543;
  ldv_31542:
  tmp___0 = iterator;
  iterator = iterator + 1;
  if ((uint32_t )tmp___0 == adapno) {
    goto ldv_31541;
  } else {
  }
  __mptr___0 = (struct list_head const *)adapter->list.next;
  adapter = (mraid_mmadp_t *)__mptr___0 + 0xffffffffffffffd0UL;
  ldv_31543: ;
  if ((unsigned long )(& adapter->list) != (unsigned long )(& adapters_list_g)) {
    goto ldv_31542;
  } else {
  }
  ldv_31541: ;
  if ((unsigned long )adapter == (unsigned long )((mraid_mmadp_t *)0)) {
    *rval = -19;
    return ((mraid_mmadp_t *)0);
  } else {
  }
  return (adapter);
}
}
static int handle_drvrcmd(void *arg , uint8_t old_ioctl , int *rval )
{
  mimd_t *umimd ;
  mimd_t kmimd ;
  uint8_t opcode ;
  uint8_t subopcode ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  {
  if ((unsigned int )old_ioctl != 0U) {
    goto old_packet;
  } else {
  }
  return (-524);
  old_packet:
  *rval = 0;
  umimd = (mimd_t *)arg;
  tmp = copy_from_user((void *)(& kmimd), (void const *)umimd, 110UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  opcode = kmimd.ui.fcs.opcode;
  subopcode = kmimd.ui.fcs.subopcode;
  if ((unsigned int )opcode != 130U) {
    return (1);
  } else {
  }
  switch ((int )subopcode) {
  case 101:
  tmp___0 = copy_to_user((void *)kmimd.data, (void const *)(& drvr_ver), 4UL);
  if (tmp___0 != 0UL) {
    return (-14);
  } else {
  }
  return (0);
  case 109:
  *rval = adapters_count_g;
  tmp___1 = copy_to_user((void *)kmimd.data, (void const *)(& adapters_count_g),
                         4UL);
  if (tmp___1 != 0UL) {
    return (-14);
  } else {
  }
  return (0);
  default: ;
  return (1);
  }
  return (0);
}
}
static int mimd_to_kioc(mimd_t *umimd , mraid_mmadp_t *adp , uioc_t *kioc )
{
  mbox64_t *mbox64 ;
  mbox_t *mbox ;
  mraid_passthru_t *pthru32 ;
  uint32_t adapno ;
  uint8_t opcode ;
  uint8_t subopcode ;
  mimd_t mimd ;
  unsigned long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  unsigned long tmp___3 ;
  unsigned long tmp___4 ;
  unsigned long tmp___5 ;
  {
  tmp = copy_from_user((void *)(& mimd), (void const *)umimd, 110UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  if ((unsigned int )mimd.mbox[0] == 195U || (unsigned int )mimd.mbox[0] == 227U) {
    return (-22);
  } else {
  }
  opcode = mimd.ui.fcs.opcode;
  subopcode = mimd.ui.fcs.subopcode;
  adapno = (unsigned int )mimd.ui.fcs.adapno ^ 27904U;
  if ((uint32_t )adapters_count_g <= adapno) {
    return (-19);
  } else {
  }
  kioc->adapno = adapno;
  kioc->mb_type = 0U;
  kioc->app_type = 0U;
  switch ((int )opcode) {
  case 130: ;
  if ((unsigned int )subopcode == 103U) {
    kioc->opcode = 196608U;
    kioc->data_dir = 1U;
    kioc->xferlen = 256U;
    tmp___0 = mraid_mm_attach_buf(adp, kioc, (int )kioc->xferlen);
    if (tmp___0 != 0) {
      return (-12);
    } else {
    }
  } else {
    if (dbglevel >= 0) {
      printk("\fmegaraid cmm: Invalid subop\n");
    } else {
    }
    return (-22);
  }
  goto ldv_31571;
  case 129:
  kioc->opcode = 0U;
  kioc->xferlen = mimd.ui.fcs.length;
  kioc->user_data_len = kioc->xferlen;
  kioc->user_data = (void *)mimd.ui.fcs.buffer;
  tmp___1 = mraid_mm_attach_buf(adp, kioc, (int )kioc->xferlen);
  if (tmp___1 != 0) {
    return (-12);
  } else {
  }
  if (mimd.outlen != 0U) {
    kioc->data_dir = 1U;
  } else {
  }
  if (mimd.inlen != 0U) {
    kioc->data_dir = kioc->data_dir | 2U;
  } else {
  }
  goto ldv_31571;
  case 128:
  kioc->opcode = 0U;
  kioc->xferlen = mimd.outlen > mimd.inlen ? mimd.outlen : mimd.inlen;
  kioc->user_data_len = kioc->xferlen;
  kioc->user_data = (void *)mimd.data;
  tmp___2 = mraid_mm_attach_buf(adp, kioc, (int )kioc->xferlen);
  if (tmp___2 != 0) {
    return (-12);
  } else {
  }
  if (mimd.outlen != 0U) {
    kioc->data_dir = 1U;
  } else {
  }
  if (mimd.inlen != 0U) {
    kioc->data_dir = kioc->data_dir | 2U;
  } else {
  }
  goto ldv_31571;
  default: ;
  return (-22);
  }
  ldv_31571: ;
  if ((unsigned int )opcode == 130U) {
    return (0);
  } else {
  }
  mbox64 = (mbox64_t *)kioc->cmdbuf;
  mbox = & mbox64->mbox32;
  memcpy((void *)mbox, (void const *)(& mimd.mbox), 14UL);
  if ((unsigned int )mbox->cmd != 3U) {
    mbox->xferaddr = (unsigned int )kioc->buf_paddr;
    if ((kioc->data_dir & 2U) != 0U) {
      tmp___3 = copy_from_user((void *)kioc->buf_vaddr, (void const *)kioc->user_data,
                               (unsigned long )kioc->xferlen);
      if (tmp___3 != 0UL) {
        return (-14);
      } else {
      }
    } else {
    }
    return (0);
  } else {
  }
  pthru32 = kioc->pthru32;
  kioc->user_pthru = & umimd->pthru;
  mbox->xferaddr = (unsigned int )kioc->pthru32_h;
  tmp___4 = copy_from_user((void *)pthru32, (void const *)kioc->user_pthru, 60UL);
  if (tmp___4 != 0UL) {
    return (-14);
  } else {
  }
  pthru32->dataxferaddr = (uint32_t )kioc->buf_paddr;
  if ((kioc->data_dir & 2U) != 0U) {
    if (pthru32->dataxferlen > kioc->xferlen) {
      return (-22);
    } else {
    }
    tmp___5 = copy_from_user((void *)kioc->buf_vaddr, (void const *)kioc->user_data,
                             (unsigned long )pthru32->dataxferlen);
    if (tmp___5 != 0UL) {
      return (-14);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int mraid_mm_attach_buf(mraid_mmadp_t *adp , uioc_t *kioc , int xferlen )
{
  mm_dmapool_t *pool ;
  int right_pool ;
  unsigned long flags ;
  int i ;
  void *tmp ;
  {
  right_pool = -1;
  kioc->pool_index = -1;
  kioc->buf_vaddr = (caddr_t )0;
  kioc->buf_paddr = 0ULL;
  kioc->free_buf = 0U;
  i = 0;
  goto ldv_31586;
  ldv_31585:
  pool = (mm_dmapool_t *)(& adp->dma_pool_list) + (unsigned long )i;
  if ((uint32_t )xferlen > pool->buf_size) {
    goto ldv_31584;
  } else {
  }
  if (right_pool == -1) {
    right_pool = i;
  } else {
  }
  ldv_spin_lock();
  if ((unsigned int )pool->in_use == 0U) {
    pool->in_use = 1U;
    kioc->pool_index = (int8_t )i;
    kioc->buf_vaddr = pool->vaddr;
    kioc->buf_paddr = pool->paddr;
    spin_unlock_irqrestore(& pool->lock, flags);
    return (0);
  } else {
    spin_unlock_irqrestore(& pool->lock, flags);
    goto ldv_31584;
  }
  ldv_31584:
  i = i + 1;
  ldv_31586: ;
  if (i <= 4) {
    goto ldv_31585;
  } else {
  }
  if (right_pool == -1) {
    return (-22);
  } else {
  }
  pool = (mm_dmapool_t *)(& adp->dma_pool_list) + (unsigned long )right_pool;
  ldv_spin_lock();
  kioc->pool_index = (int8_t )right_pool;
  kioc->free_buf = 1U;
  tmp = ldv_dma_pool_alloc_24(pool->handle, 208U, & kioc->buf_paddr);
  kioc->buf_vaddr = (caddr_t )tmp;
  spin_unlock_irqrestore(& pool->lock, flags);
  if ((unsigned long )kioc->buf_vaddr == (unsigned long )((caddr_t )0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
static uioc_t *mraid_mm_alloc_kioc(mraid_mmadp_t *adp )
{
  uioc_t *kioc ;
  struct list_head *head ;
  unsigned long flags ;
  int tmp ;
  struct list_head const *__mptr ;
  {
  down(& adp->kioc_semaphore);
  ldv_spin_lock();
  head = & adp->kioc_pool;
  tmp = list_empty((struct list_head const *)head);
  if (tmp != 0) {
    up(& adp->kioc_semaphore);
    spin_unlock_irqrestore(& adp->kioc_pool_lock, flags);
    if (dbglevel >= 0) {
      printk("megaraid cmm: kioc list empty!\n");
    } else {
    }
    return ((uioc_t *)0);
  } else {
  }
  __mptr = (struct list_head const *)head->next;
  kioc = (uioc_t *)__mptr + 0xffffffffffffff28UL;
  list_del_init(& kioc->list);
  spin_unlock_irqrestore(& adp->kioc_pool_lock, flags);
  memset((void *)kioc->cmdbuf, 0, 74UL);
  memset((void *)kioc->pthru32, 0, 60UL);
  kioc->buf_vaddr = (caddr_t )0;
  kioc->buf_paddr = 0ULL;
  kioc->pool_index = -1;
  kioc->free_buf = 0U;
  kioc->user_data = (void *)0;
  kioc->user_data_len = 0U;
  kioc->user_pthru = (mraid_passthru_t *)0;
  kioc->timedout = 0U;
  return (kioc);
}
}
static void mraid_mm_dealloc_kioc(mraid_mmadp_t *adp , uioc_t *kioc )
{
  mm_dmapool_t *pool ;
  unsigned long flags ;
  {
  if ((int )kioc->pool_index != -1) {
    pool = (mm_dmapool_t *)(& adp->dma_pool_list) + (unsigned long )kioc->pool_index;
    ldv_spin_lock();
    if ((unsigned int )kioc->free_buf == 1U) {
      dma_pool_free(pool->handle, (void *)kioc->buf_vaddr, kioc->buf_paddr);
    } else {
      pool->in_use = 0U;
    }
    spin_unlock_irqrestore(& pool->lock, flags);
  } else {
  }
  ldv_spin_lock();
  list_add(& kioc->list, & adp->kioc_pool);
  spin_unlock_irqrestore(& adp->kioc_pool_lock, flags);
  up(& adp->kioc_semaphore);
  return;
}
}
static int lld_ioctl(mraid_mmadp_t *adp , uioc_t *kioc )
{
  int rval ;
  struct timer_list timer ;
  struct timer_list *tp ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp ;
  {
  tp = (struct timer_list *)0;
  kioc->status = -61;
  rval = (*(adp->issue_uioc))(adp->drvr_data, kioc, 1U);
  if (rval != 0) {
    return (rval);
  } else {
  }
  if ((unsigned int )adp->timeout != 0U) {
    tp = & timer;
    reg_timer_1(tp);
    tp->function = & lld_timedout;
    tp->data = (unsigned long )kioc;
    tp->expires = (unsigned long )((int )adp->timeout * 250) + (unsigned long )jiffies;
    add_timer(tp);
  } else {
  }
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3278/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/megaraid/megaraid_mm.c",
                711, 0);
  if (kioc->status != -61) {
    goto ldv_31609;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_31615:
  tmp = prepare_to_wait_event(& wait_q, & __wait, 2);
  __int = tmp;
  if (kioc->status != -61) {
    goto ldv_31614;
  } else {
  }
  schedule();
  goto ldv_31615;
  ldv_31614:
  finish_wait(& wait_q, & __wait);
  ldv_31609: ;
  if ((unsigned long )tp != (unsigned long )((struct timer_list *)0)) {
    ldv_del_timer_sync_25(tp);
  } else {
  }
  if ((unsigned int )kioc->timedout != 0U) {
    adp->quiescent = 0U;
  } else {
  }
  return (kioc->status);
}
}
static void ioctl_done(uioc_t *kioc )
{
  uint32_t adapno ;
  int iterator ;
  mraid_mmadp_t *adapter ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  if (kioc->status == -61) {
    if (dbglevel >= 0) {
      printk("\fmegaraid cmm: lld didn\'t change status!\n");
    } else {
    }
    kioc->status = -22;
  } else {
  }
  if ((unsigned int )kioc->timedout != 0U) {
    iterator = 0;
    adapter = (mraid_mmadp_t *)0;
    adapno = kioc->adapno;
    if (dbglevel >= 0) {
      printk("\fmegaraid cmm: completed ioctl that was timedout before\n");
    } else {
    }
    __mptr = (struct list_head const *)adapters_list_g.next;
    adapter = (mraid_mmadp_t *)__mptr + 0xffffffffffffffd0UL;
    goto ldv_31629;
    ldv_31628:
    tmp = iterator;
    iterator = iterator + 1;
    if ((uint32_t )tmp == adapno) {
      goto ldv_31627;
    } else {
    }
    __mptr___0 = (struct list_head const *)adapter->list.next;
    adapter = (mraid_mmadp_t *)__mptr___0 + 0xffffffffffffffd0UL;
    ldv_31629: ;
    if ((unsigned long )(& adapter->list) != (unsigned long )(& adapters_list_g)) {
      goto ldv_31628;
    } else {
    }
    ldv_31627:
    kioc->timedout = 0U;
    if ((unsigned long )adapter != (unsigned long )((mraid_mmadp_t *)0)) {
      mraid_mm_dealloc_kioc(adapter, kioc);
    } else {
    }
  } else {
    __wake_up(& wait_q, 3U, 1, (void *)0);
  }
  return;
}
}
static void lld_timedout(unsigned long ptr )
{
  uioc_t *kioc ;
  {
  kioc = (uioc_t *)ptr;
  kioc->status = -62;
  kioc->timedout = 1U;
  if (dbglevel >= 0) {
    printk("\fmegaraid cmm: ioctl timed out\n");
  } else {
  }
  __wake_up(& wait_q, 3U, 1, (void *)0);
  return;
}
}
static int kioc_to_mimd(uioc_t *kioc , mimd_t *mimd )
{
  mimd_t kmimd ;
  uint8_t opcode ;
  uint8_t subopcode ;
  mbox64_t *mbox64 ;
  mraid_passthru_t *upthru32 ;
  mraid_passthru_t *kpthru32 ;
  mcontroller_t cinfo ;
  mraid_hba_info_t *hinfo ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  tmp = copy_from_user((void *)(& kmimd), (void const *)mimd, 110UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  opcode = kmimd.ui.fcs.opcode;
  subopcode = kmimd.ui.fcs.subopcode;
  if ((unsigned int )opcode == 130U) {
    switch ((int )subopcode) {
    case 103:
    hinfo = (mraid_hba_info_t *)kioc->buf_vaddr;
    hinfo_to_cinfo(hinfo, & cinfo);
    tmp___0 = copy_to_user((void *)kmimd.data, (void const *)(& cinfo), 23UL);
    if (tmp___0 != 0UL) {
      return (-14);
    } else {
    }
    return (0);
    default: ;
    return (-22);
    }
    return (0);
  } else {
  }
  mbox64 = (mbox64_t *)kioc->cmdbuf;
  if ((unsigned long )kioc->user_pthru != (unsigned long )((mraid_passthru_t *)0)) {
    upthru32 = kioc->user_pthru;
    kpthru32 = kioc->pthru32;
    tmp___1 = copy_to_user((void *)(& upthru32->scsistatus), (void const *)(& kpthru32->scsistatus),
                           1UL);
    if (tmp___1 != 0UL) {
      return (-14);
    } else {
    }
  } else {
  }
  if ((unsigned long )kioc->user_data != (unsigned long )((void *)0)) {
    tmp___2 = copy_to_user(kioc->user_data, (void const *)kioc->buf_vaddr, (unsigned long )kioc->user_data_len);
    if (tmp___2 != 0UL) {
      return (-14);
    } else {
    }
  } else {
  }
  tmp___3 = copy_to_user((void *)(& mimd->mbox) + 17U, (void const *)(& mbox64->mbox32.status),
                         1UL);
  if (tmp___3 != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static void hinfo_to_cinfo(mraid_hba_info_t *hinfo , mcontroller_t *cinfo )
{
  {
  if ((unsigned long )hinfo == (unsigned long )((mraid_hba_info_t *)0) || (unsigned long )cinfo == (unsigned long )((mcontroller_t *)0)) {
    return;
  } else {
  }
  cinfo->base = hinfo->baseport;
  cinfo->irq = hinfo->irq;
  cinfo->numldrv = hinfo->num_ldrv;
  cinfo->pcibus = hinfo->pci_bus;
  cinfo->pcidev = (uint16_t )hinfo->pci_slot;
  cinfo->pcifun = (unsigned int )hinfo->pci_dev_fn & 7U;
  cinfo->pciid = hinfo->pci_device_id;
  cinfo->pcivendor = hinfo->pci_vendor_id;
  cinfo->pcislot = hinfo->pci_slot;
  cinfo->uid = hinfo->unique_id;
  return;
}
}
int mraid_mm_register_adp(mraid_mmadp_t *lld_adp )
{
  mraid_mmadp_t *adapter ;
  mbox64_t *mbox_list ;
  uioc_t *kioc ;
  uint32_t rval ;
  int i ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  struct lock_class_key __key ;
  void *tmp___2 ;
  int tmp___3 ;
  {
  if (lld_adp->drvr_type != 1U) {
    return (-22);
  } else {
  }
  tmp = kmalloc(832UL, 208U);
  adapter = (mraid_mmadp_t *)tmp;
  if ((unsigned long )adapter == (unsigned long )((mraid_mmadp_t *)0)) {
    return (-12);
  } else {
  }
  adapter->unique_id = lld_adp->unique_id;
  adapter->drvr_type = lld_adp->drvr_type;
  adapter->drvr_data = lld_adp->drvr_data;
  adapter->pdev = lld_adp->pdev;
  adapter->issue_uioc = lld_adp->issue_uioc;
  adapter->timeout = lld_adp->timeout;
  adapter->max_kioc = lld_adp->max_kioc;
  adapter->quiescent = 1U;
  tmp___0 = kmalloc((unsigned long )lld_adp->max_kioc * 1024UL, 208U);
  adapter->kioc_list = (uioc_t *)tmp___0;
  tmp___1 = kmalloc((unsigned long )lld_adp->max_kioc * 74UL, 208U);
  adapter->mbox_list = (mbox64_t *)tmp___1;
  adapter->pthru_dma_pool = dma_pool_create("megaraid mm pthru pool", & (adapter->pdev)->dev,
                                            60UL, 16UL, 0UL);
  if (((unsigned long )adapter->kioc_list == (unsigned long )((uioc_t *)0) || (unsigned long )adapter->mbox_list == (unsigned long )((mbox64_t *)0)) || (unsigned long )adapter->pthru_dma_pool == (unsigned long )((struct dma_pool *)0)) {
    if (dbglevel >= 0) {
      printk("\fmegaraid cmm: out of memory, %s %d\n", "mraid_mm_register_adp", 949);
    } else {
    }
    rval = 4294967284U;
    goto memalloc_error;
  } else {
  }
  INIT_LIST_HEAD(& adapter->kioc_pool);
  spinlock_check(& adapter->kioc_pool_lock);
  __raw_spin_lock_init(& adapter->kioc_pool_lock.__annonCompField18.rlock, "&(&adapter->kioc_pool_lock)->rlock",
                       & __key);
  sema_init(& adapter->kioc_semaphore, (int )lld_adp->max_kioc);
  mbox_list = adapter->mbox_list;
  i = 0;
  goto ldv_31665;
  ldv_31664:
  kioc = adapter->kioc_list + (unsigned long )i;
  kioc->cmdbuf = (unsigned long long )(mbox_list + (unsigned long )i);
  tmp___2 = ldv_dma_pool_alloc_26(adapter->pthru_dma_pool, 208U, & kioc->pthru32_h);
  kioc->pthru32 = (mraid_passthru_t *)tmp___2;
  if ((unsigned long )kioc->pthru32 == (unsigned long )((mraid_passthru_t *)0)) {
    if (dbglevel >= 0) {
      printk("\fmegaraid cmm: out of memory, %s %d\n", "mraid_mm_register_adp", 976);
    } else {
    }
    rval = 4294967284U;
    goto pthru_dma_pool_error;
  } else {
  }
  list_add_tail(& kioc->list, & adapter->kioc_pool);
  i = i + 1;
  ldv_31665: ;
  if ((int )lld_adp->max_kioc > i) {
    goto ldv_31664;
  } else {
  }
  tmp___3 = mraid_mm_setup_dma_pools(adapter);
  rval = (uint32_t )tmp___3;
  if (rval != 0U) {
    goto dma_pool_error;
  } else {
  }
  list_add_tail(& adapter->list, & adapters_list_g);
  adapters_count_g = adapters_count_g + 1;
  return (0);
  dma_pool_error: ;
  pthru_dma_pool_error:
  i = 0;
  goto ldv_31669;
  ldv_31668:
  kioc = adapter->kioc_list + (unsigned long )i;
  if ((unsigned long )kioc->pthru32 != (unsigned long )((mraid_passthru_t *)0)) {
    dma_pool_free(adapter->pthru_dma_pool, (void *)kioc->pthru32, kioc->pthru32_h);
  } else {
  }
  i = i + 1;
  ldv_31669: ;
  if ((int )lld_adp->max_kioc > i) {
    goto ldv_31668;
  } else {
  }
  memalloc_error:
  kfree((void const *)adapter->kioc_list);
  kfree((void const *)adapter->mbox_list);
  if ((unsigned long )adapter->pthru_dma_pool != (unsigned long )((struct dma_pool *)0)) {
    dma_pool_destroy(adapter->pthru_dma_pool);
  } else {
  }
  kfree((void const *)adapter);
  return ((int )rval);
}
}
uint32_t mraid_mm_adapter_app_handle(uint32_t unique_id )
{
  mraid_mmadp_t *adapter ;
  mraid_mmadp_t *tmp ;
  int index ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  index = 0;
  __mptr = (struct list_head const *)adapters_list_g.next;
  adapter = (mraid_mmadp_t *)__mptr + 0xffffffffffffffd0UL;
  __mptr___0 = (struct list_head const *)adapter->list.next;
  tmp = (mraid_mmadp_t *)__mptr___0 + 0xffffffffffffffd0UL;
  goto ldv_31684;
  ldv_31683: ;
  if (adapter->unique_id == unique_id) {
    return ((uint32_t )(index | 27904));
  } else {
  }
  index = index + 1;
  adapter = tmp;
  __mptr___1 = (struct list_head const *)tmp->list.next;
  tmp = (mraid_mmadp_t *)__mptr___1 + 0xffffffffffffffd0UL;
  ldv_31684: ;
  if ((unsigned long )(& adapter->list) != (unsigned long )(& adapters_list_g)) {
    goto ldv_31683;
  } else {
  }
  return (0U);
}
}
static int mraid_mm_setup_dma_pools(mraid_mmadp_t *adp )
{
  mm_dmapool_t *pool ;
  int bufsize ;
  int i ;
  struct lock_class_key __key ;
  void *tmp ;
  {
  bufsize = 4096;
  i = 0;
  goto ldv_31695;
  ldv_31694:
  pool = (mm_dmapool_t *)(& adp->dma_pool_list) + (unsigned long )i;
  pool->buf_size = (uint32_t )bufsize;
  spinlock_check(& pool->lock);
  __raw_spin_lock_init(& pool->lock.__annonCompField18.rlock, "&(&pool->lock)->rlock",
                       & __key);
  pool->handle = dma_pool_create("megaraid mm data buffer", & (adp->pdev)->dev, (size_t )bufsize,
                                 16UL, 0UL);
  if ((unsigned long )pool->handle == (unsigned long )((struct dma_pool *)0)) {
    goto dma_pool_setup_error;
  } else {
  }
  tmp = ldv_dma_pool_alloc_27(pool->handle, 208U, & pool->paddr);
  pool->vaddr = (caddr_t )tmp;
  if ((unsigned long )pool->vaddr == (unsigned long )((caddr_t )0)) {
    goto dma_pool_setup_error;
  } else {
  }
  bufsize = bufsize * 2;
  i = i + 1;
  ldv_31695: ;
  if (i <= 4) {
    goto ldv_31694;
  } else {
  }
  return (0);
  dma_pool_setup_error:
  mraid_mm_teardown_dma_pools(adp);
  return (-12);
}
}
int mraid_mm_unregister_adp(uint32_t unique_id )
{
  mraid_mmadp_t *adapter ;
  mraid_mmadp_t *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)adapters_list_g.next;
  adapter = (mraid_mmadp_t *)__mptr + 0xffffffffffffffd0UL;
  __mptr___0 = (struct list_head const *)adapter->list.next;
  tmp = (mraid_mmadp_t *)__mptr___0 + 0xffffffffffffffd0UL;
  goto ldv_31709;
  ldv_31708: ;
  if (adapter->unique_id == unique_id) {
    adapters_count_g = adapters_count_g - 1;
    list_del_init(& adapter->list);
    mraid_mm_free_adp_resources(adapter);
    kfree((void const *)adapter);
    if (dbglevel >= 0) {
      printk("megaraid cmm: Unregistered one adapter:%#x\n", unique_id);
    } else {
    }
    return (0);
  } else {
  }
  adapter = tmp;
  __mptr___1 = (struct list_head const *)tmp->list.next;
  tmp = (mraid_mmadp_t *)__mptr___1 + 0xffffffffffffffd0UL;
  ldv_31709: ;
  if ((unsigned long )(& adapter->list) != (unsigned long )(& adapters_list_g)) {
    goto ldv_31708;
  } else {
  }
  return (-19);
}
}
static void mraid_mm_free_adp_resources(mraid_mmadp_t *adp )
{
  uioc_t *kioc ;
  int i ;
  {
  mraid_mm_teardown_dma_pools(adp);
  i = 0;
  goto ldv_31717;
  ldv_31716:
  kioc = adp->kioc_list + (unsigned long )i;
  dma_pool_free(adp->pthru_dma_pool, (void *)kioc->pthru32, kioc->pthru32_h);
  i = i + 1;
  ldv_31717: ;
  if ((int )adp->max_kioc > i) {
    goto ldv_31716;
  } else {
  }
  kfree((void const *)adp->kioc_list);
  kfree((void const *)adp->mbox_list);
  dma_pool_destroy(adp->pthru_dma_pool);
  return;
}
}
static void mraid_mm_teardown_dma_pools(mraid_mmadp_t *adp )
{
  int i ;
  mm_dmapool_t *pool ;
  {
  i = 0;
  goto ldv_31725;
  ldv_31724:
  pool = (mm_dmapool_t *)(& adp->dma_pool_list) + (unsigned long )i;
  if ((unsigned long )pool->handle != (unsigned long )((struct dma_pool *)0)) {
    if ((unsigned long )pool->vaddr != (unsigned long )((caddr_t )0)) {
      dma_pool_free(pool->handle, (void *)pool->vaddr, pool->paddr);
    } else {
    }
    dma_pool_destroy(pool->handle);
    pool->handle = (struct dma_pool *)0;
  } else {
  }
  i = i + 1;
  ldv_31725: ;
  if (i <= 4) {
    goto ldv_31724;
  } else {
  }
  return;
}
}
static int mraid_mm_init(void)
{
  int err ;
  struct lock_class_key __key ;
  {
  if (dbglevel >= 0) {
    printk("\016megaraid cmm: %s %s\n", (char *)"2.20.2.7", (char *)"(Release Date: Sun Jul 16 00:01:03 EST 2006)");
  } else {
  }
  err = ldv_misc_register_28(& megaraid_mm_dev);
  if (err < 0) {
    if (dbglevel >= 0) {
      printk("megaraid cmm: cannot register misc device\n");
    } else {
    }
    return (err);
  } else {
  }
  __init_waitqueue_head(& wait_q, "&wait_q", & __key);
  INIT_LIST_HEAD(& adapters_list_g);
  return (0);
}
}
static long mraid_mm_compat_ioctl(struct file *filep , unsigned int cmd , unsigned long arg )
{
  int err ;
  {
  err = mraid_mm_ioctl(filep, cmd, arg);
  return ((long )err);
}
}
static void mraid_mm_exit(void)
{
  {
  if (dbglevel > 0) {
    printk("exiting common mod\n");
  } else {
  }
  ldv_misc_deregister_29(& megaraid_mm_dev);
  return;
}
}
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
extern int ldv_release_2(void) ;
extern void ldv_check_final_state(void) ;
int reg_timer_1(struct timer_list *timer )
{
  {
  ldv_timer_list_1 = timer;
  ldv_timer_state_1 = 1;
  return (0);
}
}
void ldv_file_operations_2(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  lsi_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  lsi_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_1 == (unsigned long )timer) {
    if (ldv_timer_state_1 == 2 || pending_flag != 0) {
      ldv_timer_list_1 = timer;
      ldv_timer_list_1->data = data;
      ldv_timer_state_1 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_1(timer);
  ldv_timer_list_1->data = data;
  return;
}
}
void choose_timer_1(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_1 = 2;
  return;
}
}
void disable_suitable_timer_1(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_1) {
    ldv_timer_state_1 = 0;
    return;
  } else {
  }
  return;
}
}
int main(void)
{
  unsigned int ldvarg1 ;
  unsigned long ldvarg4 ;
  loff_t ldvarg3 ;
  unsigned long ldvarg0 ;
  unsigned int ldvarg5 ;
  int ldvarg2 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  adapters_count_g = __VERIFIER_nondet_int();
  ldv_initialize();
  ldv_memset((void *)(& ldvarg1), 0, 4UL);
  ldv_memset((void *)(& ldvarg4), 0, 8UL);
  ldv_memset((void *)(& ldvarg3), 0, 8UL);
  ldv_memset((void *)(& ldvarg0), 0, 8UL);
  ldvarg5 = (unsigned int) __VERIFIER_nondet_int ();
  ldv_memset((void *)(& ldvarg2), 0, 4UL);
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_2 = 0;
  ldv_31808:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_1 != 0) {
    choose_timer_1(ldv_timer_list_1);
  } else {
  }
  goto ldv_31792;
  case 1: ;
  if (ldv_state_variable_0 != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      mraid_mm_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_31796;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = mraid_mm_init();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_31796;
    default:
    ldv_stop();
    }
    ldv_31796: ;
  } else {
  }
  goto ldv_31792;
  case 2: ;
  if (ldv_state_variable_2 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_2 == 2) {
      mraid_mm_compat_ioctl(lsi_fops_group2, ldvarg5, ldvarg4);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_31801;
    case 1: ;
    if (ldv_state_variable_2 == 2) {
      noop_llseek(lsi_fops_group2, ldvarg3, ldvarg2);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_31801;
    case 2: ;
    if (ldv_state_variable_2 == 1) {
      ldv_retval_1 = mraid_mm_open(lsi_fops_group1, lsi_fops_group2);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_2 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_31801;
    case 3: ;
    if (ldv_state_variable_2 == 2) {
      mraid_mm_unlocked_ioctl(lsi_fops_group2, ldvarg1, ldvarg0);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_31801;
    case 4: ;
    if (ldv_state_variable_2 == 2) {
      ldv_release_2();
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_31801;
    default:
    ldv_stop();
    }
    ldv_31801: ;
  } else {
  }
  goto ldv_31792;
  default:
  ldv_stop();
  }
  ldv_31792: ;
  goto ldv_31808;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_12(lock, flags);
  return;
}
}
void *ldv_malloc(size_t size ) ;
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(size);
  return (tmp);
}
}
void *ldv_dma_pool_alloc_24(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(4096UL);
  return (tmp);
}
}
int ldv_del_timer_sync_25(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
void *ldv_dma_pool_alloc_26(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(60UL);
  return (tmp);
}
}
void *ldv_dma_pool_alloc_27(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(4096UL);
  return (tmp);
}
}
int ldv_misc_register_28(struct miscdevice *misc )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = misc_register(misc);
  ldv_func_res = tmp;
  ldv_state_variable_2 = 1;
  ldv_file_operations_2();
  return (ldv_func_res);
}
}
int ldv_misc_deregister_29(struct miscdevice *misc )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = misc_deregister(misc);
  ldv_func_res = tmp;
  ldv_state_variable_2 = 0;
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
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __might_fault(const char *arg0, int arg1) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
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
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_timer(struct timer_list *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
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
void down(struct semaphore *arg0) {
  return;
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_release_2() {
  return __VERIFIER_nondet_int();
}
struct page *ldv_some_page() {
  return ldv_malloc(sizeof(struct page));
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int misc_deregister(struct miscdevice *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int misc_register(struct miscdevice *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
loff_t noop_llseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
void up(struct semaphore *arg0) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
