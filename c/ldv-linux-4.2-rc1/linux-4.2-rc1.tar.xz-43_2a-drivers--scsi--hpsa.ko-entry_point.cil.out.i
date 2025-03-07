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
typedef unsigned int uint;
typedef unsigned long ulong;
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
typedef int pao_T__;
typedef int pao_T_____0;
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
struct execute_work {
   struct work_struct work ;
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
struct ctlr_info;
struct Scsi_Host;
struct scsi_cmnd;
struct device_attribute;
struct scsi_device;
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct proc_dir_entry;
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
struct pci_driver;
union __anonunion____missing_field_name_228 {
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
   union __anonunion____missing_field_name_228 __annonCompField65 ;
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
struct msix_entry {
   u32 vector ;
   u16 entry ;
};
struct acpi_device;
struct pci_sysdata {
   int domain ;
   int node ;
   struct acpi_device *companion ;
   void *iommu ;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_232 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_231 {
   struct __anonstruct____missing_field_name_232 __annonCompField66 ;
};
struct lockref {
   union __anonunion____missing_field_name_231 __annonCompField67 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_234 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_233 {
   struct __anonstruct____missing_field_name_234 __annonCompField68 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_233 __annonCompField69 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_235 {
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
   union __anonunion_d_u_235 d_u ;
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
struct __anonstruct____missing_field_name_239 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_238 {
   struct __anonstruct____missing_field_name_239 __annonCompField70 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_238 __annonCompField71 ;
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
union __anonunion____missing_field_name_242 {
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
   union __anonunion____missing_field_name_242 __annonCompField72 ;
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
struct __anonstruct_kprojid_t_243 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_243 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_244 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_244 __annonCompField73 ;
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
union __anonunion____missing_field_name_247 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_248 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_249 {
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
   union __anonunion____missing_field_name_247 __annonCompField74 ;
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
   union __anonunion____missing_field_name_248 __annonCompField75 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_249 __annonCompField76 ;
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
union __anonunion_f_u_250 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_250 f_u ;
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
struct __anonstruct_afs_252 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_251 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_252 afs ;
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
   union __anonunion_fl_u_251 fl_u ;
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
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_253 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_253 __annonCompField77 ;
   unsigned long nr_segs ;
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
union __anonunion____missing_field_name_279 {
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
   union __anonunion____missing_field_name_279 __annonCompField78 ;
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
union __anonunion____missing_field_name_280 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion____missing_field_name_281 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion____missing_field_name_280 __annonCompField79 ;
   union __anonunion____missing_field_name_281 __annonCompField80 ;
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
union __anonunion____missing_field_name_282 {
   struct call_single_data csd ;
   unsigned long fifo_time ;
};
struct blk_mq_ctx;
union __anonunion____missing_field_name_283 {
   struct hlist_node hash ;
   struct list_head ipi_list ;
};
union __anonunion____missing_field_name_284 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_286 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_287 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion____missing_field_name_285 {
   struct __anonstruct_elv_286 elv ;
   struct __anonstruct_flush_287 flush ;
};
struct request {
   struct list_head queuelist ;
   union __anonunion____missing_field_name_282 __annonCompField81 ;
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
   union __anonunion____missing_field_name_283 __annonCompField82 ;
   union __anonunion____missing_field_name_284 __annonCompField83 ;
   union __anonunion____missing_field_name_285 __annonCompField84 ;
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
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct rchan;
struct rchan_buf {
   void *start ;
   void *data ;
   size_t offset ;
   size_t subbufs_produced ;
   size_t subbufs_consumed ;
   struct rchan *chan ;
   wait_queue_head_t read_wait ;
   struct timer_list timer ;
   struct dentry *dentry ;
   struct kref kref ;
   struct page **page_array ;
   unsigned int page_count ;
   unsigned int finalized ;
   size_t *padding ;
   size_t prev_padding ;
   size_t bytes_consumed ;
   size_t early_bytes ;
   unsigned int cpu ;
};
struct rchan_callbacks;
struct rchan {
   u32 version ;
   size_t subbuf_size ;
   size_t n_subbufs ;
   size_t alloc_size ;
   struct rchan_callbacks *cb ;
   struct kref kref ;
   void *private_data ;
   size_t last_toobig ;
   struct rchan_buf *buf[8192U] ;
   int is_global ;
   struct list_head list ;
   struct dentry *parent ;
   int has_base_filename ;
   char base_filename[255U] ;
};
struct rchan_callbacks {
   int (*subbuf_start)(struct rchan_buf * , void * , void * , size_t ) ;
   void (*buf_mapped)(struct rchan_buf * , struct file * ) ;
   void (*buf_unmapped)(struct rchan_buf * , struct file * ) ;
   struct dentry *(*create_buf_file)(char const * , struct dentry * , umode_t ,
                                     struct rchan_buf * , int * ) ;
   int (*remove_buf_file)(struct dentry * ) ;
};
struct blk_trace {
   int trace_state ;
   struct rchan *rchan ;
   unsigned long *sequence ;
   unsigned char *msg_data ;
   u16 act_mask ;
   u64 start_lba ;
   u64 end_lba ;
   u32 pid ;
   u32 dev ;
   struct dentry *dir ;
   struct dentry *dropped_file ;
   struct dentry *msg_file ;
   struct list_head running_list ;
   atomic_t dropped ;
};
struct scsi_sense_hdr {
   u8 response_code ;
   u8 sense_key ;
   u8 asc ;
   u8 ascq ;
   u8 byte4 ;
   u8 byte5 ;
   u8 byte6 ;
   u8 additional_length ;
};
enum scsi_device_state {
    SDEV_CREATED = 1,
    SDEV_RUNNING = 2,
    SDEV_CANCEL = 3,
    SDEV_DEL = 4,
    SDEV_QUIESCE = 5,
    SDEV_OFFLINE = 6,
    SDEV_TRANSPORT_OFFLINE = 7,
    SDEV_BLOCK = 8,
    SDEV_CREATED_BLOCK = 9
} ;
struct scsi_target;
struct scsi_dh_data;
struct scsi_device {
   struct Scsi_Host *host ;
   struct request_queue *request_queue ;
   struct list_head siblings ;
   struct list_head same_target_siblings ;
   atomic_t device_busy ;
   atomic_t device_blocked ;
   spinlock_t list_lock ;
   struct list_head cmd_list ;
   struct list_head starved_entry ;
   struct scsi_cmnd *current_cmnd ;
   unsigned short queue_depth ;
   unsigned short max_queue_depth ;
   unsigned short last_queue_full_depth ;
   unsigned short last_queue_full_count ;
   unsigned long last_queue_full_time ;
   unsigned long queue_ramp_up_period ;
   unsigned long last_queue_ramp_up ;
   unsigned int id ;
   unsigned int channel ;
   u64 lun ;
   unsigned int manufacturer ;
   unsigned int sector_size ;
   void *hostdata ;
   char type ;
   char scsi_level ;
   char inq_periph_qual ;
   unsigned char inquiry_len ;
   unsigned char *inquiry ;
   char const *vendor ;
   char const *model ;
   char const *rev ;
   int vpd_pg83_len ;
   unsigned char *vpd_pg83 ;
   int vpd_pg80_len ;
   unsigned char *vpd_pg80 ;
   unsigned char current_tag ;
   struct scsi_target *sdev_target ;
   unsigned int sdev_bflags ;
   unsigned int eh_timeout ;
   unsigned char removable : 1 ;
   unsigned char changed : 1 ;
   unsigned char busy : 1 ;
   unsigned char lockable : 1 ;
   unsigned char locked : 1 ;
   unsigned char borken : 1 ;
   unsigned char disconnect : 1 ;
   unsigned char soft_reset : 1 ;
   unsigned char sdtr : 1 ;
   unsigned char wdtr : 1 ;
   unsigned char ppr : 1 ;
   unsigned char tagged_supported : 1 ;
   unsigned char simple_tags : 1 ;
   unsigned char was_reset : 1 ;
   unsigned char expecting_cc_ua : 1 ;
   unsigned char use_10_for_rw : 1 ;
   unsigned char use_10_for_ms : 1 ;
   unsigned char no_report_opcodes : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char use_16_for_rw : 1 ;
   unsigned char skip_ms_page_8 : 1 ;
   unsigned char skip_ms_page_3f : 1 ;
   unsigned char skip_vpd_pages : 1 ;
   unsigned char try_vpd_pages : 1 ;
   unsigned char use_192_bytes_for_3f : 1 ;
   unsigned char no_start_on_add : 1 ;
   unsigned char allow_restart : 1 ;
   unsigned char manage_start_stop : 1 ;
   unsigned char start_stop_pwr_cond : 1 ;
   unsigned char no_uld_attach : 1 ;
   unsigned char select_no_atn : 1 ;
   unsigned char fix_capacity : 1 ;
   unsigned char guess_capacity : 1 ;
   unsigned char retry_hwerror : 1 ;
   unsigned char last_sector_bug : 1 ;
   unsigned char no_read_disc_info : 1 ;
   unsigned char no_read_capacity_16 : 1 ;
   unsigned char try_rc_10_first : 1 ;
   unsigned char is_visible : 1 ;
   unsigned char wce_default_on : 1 ;
   unsigned char no_dif : 1 ;
   unsigned char broken_fua : 1 ;
   unsigned char lun_in_cdb : 1 ;
   atomic_t disk_events_disable_depth ;
   unsigned long supported_events[1U] ;
   unsigned long pending_events[1U] ;
   struct list_head event_list ;
   struct work_struct event_work ;
   unsigned int max_device_blocked ;
   atomic_t iorequest_cnt ;
   atomic_t iodone_cnt ;
   atomic_t ioerr_cnt ;
   struct device sdev_gendev ;
   struct device sdev_dev ;
   struct execute_work ew ;
   struct work_struct requeue_work ;
   struct scsi_dh_data *scsi_dh_data ;
   enum scsi_device_state sdev_state ;
   unsigned long sdev_data[0U] ;
};
struct scsi_device_handler {
   struct list_head list ;
   struct module *module ;
   char const *name ;
   int (*check_sense)(struct scsi_device * , struct scsi_sense_hdr * ) ;
   struct scsi_dh_data *(*attach)(struct scsi_device * ) ;
   void (*detach)(struct scsi_device * ) ;
   int (*activate)(struct scsi_device * , void (*)(void * , int ) , void * ) ;
   int (*prep_fn)(struct scsi_device * , struct request * ) ;
   int (*set_params)(struct scsi_device * , char const * ) ;
   bool (*match)(struct scsi_device * ) ;
};
struct scsi_dh_data {
   struct scsi_device_handler *scsi_dh ;
   struct scsi_device *sdev ;
   struct kref kref ;
};
enum scsi_target_state {
    STARGET_CREATED = 1,
    STARGET_RUNNING = 2,
    STARGET_DEL = 3
} ;
struct scsi_target {
   struct scsi_device *starget_sdev_user ;
   struct list_head siblings ;
   struct list_head devices ;
   struct device dev ;
   struct kref reap_ref ;
   unsigned int channel ;
   unsigned int id ;
   unsigned char create : 1 ;
   unsigned char single_lun : 1 ;
   unsigned char pdt_1f_for_no_lun : 1 ;
   unsigned char no_report_luns : 1 ;
   unsigned char expecting_lun_change : 1 ;
   atomic_t target_busy ;
   atomic_t target_blocked ;
   unsigned int can_queue ;
   unsigned int max_target_blocked ;
   char scsi_level ;
   enum scsi_target_state state ;
   void *hostdata ;
   unsigned long starget_data[0U] ;
};
struct scsi_data_buffer {
   struct sg_table table ;
   unsigned int length ;
   int resid ;
};
struct scsi_pointer {
   char *ptr ;
   int this_residual ;
   struct scatterlist *buffer ;
   int buffers_residual ;
   dma_addr_t dma_handle ;
   int volatile Status ;
   int volatile Message ;
   int volatile have_data_in ;
   int volatile sent_command ;
   int volatile phase ;
};
struct scsi_cmnd {
   struct scsi_device *device ;
   struct list_head list ;
   struct list_head eh_entry ;
   struct delayed_work abort_work ;
   int eh_eflags ;
   unsigned long serial_number ;
   unsigned long jiffies_at_alloc ;
   int retries ;
   int allowed ;
   unsigned char prot_op ;
   unsigned char prot_type ;
   unsigned char prot_flags ;
   unsigned short cmd_len ;
   enum dma_data_direction sc_data_direction ;
   unsigned char *cmnd ;
   struct scsi_data_buffer sdb ;
   struct scsi_data_buffer *prot_sdb ;
   unsigned int underflow ;
   unsigned int transfersize ;
   struct request *request ;
   unsigned char *sense_buffer ;
   void (*scsi_done)(struct scsi_cmnd * ) ;
   struct scsi_pointer SCp ;
   unsigned char *host_scribble ;
   int result ;
   int flags ;
   unsigned char tag ;
};
struct blk_mq_tags;
struct blk_mq_cpu_notifier {
   struct list_head list ;
   void *data ;
   int (*notify)(void * , unsigned long , unsigned int ) ;
};
struct blk_align_bitmap;
struct blk_mq_ctxmap {
   unsigned int size ;
   unsigned int bits_per_word ;
   struct blk_align_bitmap *map ;
};
struct __anonstruct____missing_field_name_290 {
   spinlock_t lock ;
   struct list_head dispatch ;
};
struct blk_mq_hw_ctx {
   struct __anonstruct____missing_field_name_290 __annonCompField85 ;
   unsigned long state ;
   struct delayed_work run_work ;
   struct delayed_work delay_work ;
   cpumask_var_t cpumask ;
   int next_cpu ;
   int next_cpu_batch ;
   unsigned long flags ;
   struct request_queue *queue ;
   struct blk_flush_queue *fq ;
   void *driver_data ;
   struct blk_mq_ctxmap ctx_map ;
   unsigned int nr_ctx ;
   struct blk_mq_ctx **ctxs ;
   atomic_t wait_index ;
   struct blk_mq_tags *tags ;
   unsigned long queued ;
   unsigned long run ;
   unsigned long dispatched[10U] ;
   unsigned int numa_node ;
   unsigned int queue_num ;
   atomic_t nr_active ;
   struct blk_mq_cpu_notifier cpu_notifier ;
   struct kobject kobj ;
};
struct blk_mq_tag_set {
   struct blk_mq_ops *ops ;
   unsigned int nr_hw_queues ;
   unsigned int queue_depth ;
   unsigned int reserved_tags ;
   unsigned int cmd_size ;
   int numa_node ;
   unsigned int timeout ;
   unsigned int flags ;
   void *driver_data ;
   struct blk_mq_tags **tags ;
   struct mutex tag_list_lock ;
   struct list_head tag_list ;
};
struct blk_mq_queue_data {
   struct request *rq ;
   struct list_head *list ;
   bool last ;
};
typedef int queue_rq_fn(struct blk_mq_hw_ctx * , struct blk_mq_queue_data const * );
typedef struct blk_mq_hw_ctx *map_queue_fn(struct request_queue * , int const );
typedef enum blk_eh_timer_return timeout_fn(struct request * , bool );
typedef int init_hctx_fn(struct blk_mq_hw_ctx * , void * , unsigned int );
typedef void exit_hctx_fn(struct blk_mq_hw_ctx * , unsigned int );
typedef int init_request_fn(void * , struct request * , unsigned int , unsigned int ,
                            unsigned int );
typedef void exit_request_fn(void * , struct request * , unsigned int , unsigned int );
struct blk_mq_ops {
   queue_rq_fn *queue_rq ;
   map_queue_fn *map_queue ;
   timeout_fn *timeout ;
   softirq_done_fn *complete ;
   init_hctx_fn *init_hctx ;
   exit_hctx_fn *exit_hctx ;
   init_request_fn *init_request ;
   exit_request_fn *exit_request ;
};
struct scsi_host_cmd_pool;
struct scsi_transport_template;
struct scsi_host_template {
   struct module *module ;
   char const *name ;
   int (*detect)(struct scsi_host_template * ) ;
   int (*release)(struct Scsi_Host * ) ;
   char const *(*info)(struct Scsi_Host * ) ;
   int (*ioctl)(struct scsi_device * , int , void * ) ;
   int (*compat_ioctl)(struct scsi_device * , int , void * ) ;
   int (*queuecommand)(struct Scsi_Host * , struct scsi_cmnd * ) ;
   int (*eh_abort_handler)(struct scsi_cmnd * ) ;
   int (*eh_device_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_target_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_bus_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_host_reset_handler)(struct scsi_cmnd * ) ;
   int (*slave_alloc)(struct scsi_device * ) ;
   int (*slave_configure)(struct scsi_device * ) ;
   void (*slave_destroy)(struct scsi_device * ) ;
   int (*target_alloc)(struct scsi_target * ) ;
   void (*target_destroy)(struct scsi_target * ) ;
   int (*scan_finished)(struct Scsi_Host * , unsigned long ) ;
   void (*scan_start)(struct Scsi_Host * ) ;
   int (*change_queue_depth)(struct scsi_device * , int ) ;
   int (*bios_param)(struct scsi_device * , struct block_device * , sector_t , int * ) ;
   void (*unlock_native_capacity)(struct scsi_device * ) ;
   int (*show_info)(struct seq_file * , struct Scsi_Host * ) ;
   int (*write_info)(struct Scsi_Host * , char * , int ) ;
   enum blk_eh_timer_return (*eh_timed_out)(struct scsi_cmnd * ) ;
   int (*host_reset)(struct Scsi_Host * , int ) ;
   char const *proc_name ;
   struct proc_dir_entry *proc_dir ;
   int can_queue ;
   int this_id ;
   unsigned short sg_tablesize ;
   unsigned short sg_prot_tablesize ;
   unsigned int max_sectors ;
   unsigned long dma_boundary ;
   short cmd_per_lun ;
   unsigned char present ;
   int tag_alloc_policy ;
   unsigned char use_blk_tags : 1 ;
   unsigned char track_queue_depth : 1 ;
   unsigned char supported_mode : 2 ;
   unsigned char unchecked_isa_dma : 1 ;
   unsigned char use_clustering : 1 ;
   unsigned char emulated : 1 ;
   unsigned char skip_settle_delay : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char no_async_abort : 1 ;
   unsigned int max_host_blocked ;
   struct device_attribute **shost_attrs ;
   struct device_attribute **sdev_attrs ;
   struct list_head legacy_hosts ;
   u64 vendor_id ;
   unsigned int cmd_size ;
   struct scsi_host_cmd_pool *cmd_pool ;
   bool disable_blk_mq ;
};
enum scsi_host_state {
    SHOST_CREATED = 1,
    SHOST_RUNNING = 2,
    SHOST_CANCEL = 3,
    SHOST_DEL = 4,
    SHOST_RECOVERY = 5,
    SHOST_CANCEL_RECOVERY = 6,
    SHOST_DEL_RECOVERY = 7
} ;
union __anonunion____missing_field_name_291 {
   struct blk_queue_tag *bqt ;
   struct blk_mq_tag_set tag_set ;
};
struct Scsi_Host {
   struct list_head __devices ;
   struct list_head __targets ;
   struct scsi_host_cmd_pool *cmd_pool ;
   spinlock_t free_list_lock ;
   struct list_head free_list ;
   struct list_head starved_list ;
   spinlock_t default_lock ;
   spinlock_t *host_lock ;
   struct mutex scan_mutex ;
   struct list_head eh_cmd_q ;
   struct task_struct *ehandler ;
   struct completion *eh_action ;
   wait_queue_head_t host_wait ;
   struct scsi_host_template *hostt ;
   struct scsi_transport_template *transportt ;
   union __anonunion____missing_field_name_291 __annonCompField86 ;
   atomic_t host_busy ;
   atomic_t host_blocked ;
   unsigned int host_failed ;
   unsigned int host_eh_scheduled ;
   unsigned int host_no ;
   int eh_deadline ;
   unsigned long last_reset ;
   unsigned int max_channel ;
   unsigned int max_id ;
   u64 max_lun ;
   unsigned int unique_id ;
   unsigned short max_cmd_len ;
   int this_id ;
   int can_queue ;
   short cmd_per_lun ;
   unsigned short sg_tablesize ;
   unsigned short sg_prot_tablesize ;
   unsigned int max_sectors ;
   unsigned long dma_boundary ;
   unsigned int nr_hw_queues ;
   unsigned long cmd_serial_number ;
   unsigned char active_mode : 2 ;
   unsigned char unchecked_isa_dma : 1 ;
   unsigned char use_clustering : 1 ;
   unsigned char host_self_blocked : 1 ;
   unsigned char reverse_ordering : 1 ;
   unsigned char tmf_in_progress : 1 ;
   unsigned char async_scan : 1 ;
   unsigned char eh_noresume : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char use_blk_mq : 1 ;
   unsigned char use_cmd_list : 1 ;
   char work_q_name[20U] ;
   struct workqueue_struct *work_q ;
   struct workqueue_struct *tmf_work_q ;
   unsigned char no_scsi2_lun_in_cdb : 1 ;
   unsigned int max_host_blocked ;
   unsigned int prot_capabilities ;
   unsigned char prot_guard_type ;
   struct request_queue *uspace_req_q ;
   unsigned long base ;
   unsigned long io_port ;
   unsigned char n_io_port ;
   unsigned char dma_channel ;
   unsigned int irq ;
   enum scsi_host_state shost_state ;
   struct device shost_gendev ;
   struct device shost_dev ;
   struct list_head sht_legacy_list ;
   void *shost_data ;
   struct device *dma_dev ;
   unsigned long hostdata[0U] ;
};
struct __anonstruct_PeripDev_294 {
   __u8 Dev ;
   unsigned char Bus : 6 ;
   unsigned char Mode : 2 ;
};
struct __anonstruct_LogDev_295 {
   __u8 DevLSB ;
   unsigned char DevMSB : 6 ;
   unsigned char Mode : 2 ;
};
struct __anonstruct_LogUnit_296 {
   unsigned char Dev : 5 ;
   unsigned char Bus : 3 ;
   unsigned char Targ : 6 ;
   unsigned char Mode : 2 ;
};
union _SCSI3Addr_struct {
   struct __anonstruct_PeripDev_294 PeripDev ;
   struct __anonstruct_LogDev_295 LogDev ;
   struct __anonstruct_LogUnit_296 LogUnit ;
};
typedef union _SCSI3Addr_struct SCSI3Addr_struct;
struct _PhysDevAddr_struct {
   unsigned int TargetId : 24 ;
   unsigned char Bus : 6 ;
   unsigned char Mode : 2 ;
   SCSI3Addr_struct Target[2U] ;
};
typedef struct _PhysDevAddr_struct PhysDevAddr_struct;
struct _LogDevAddr_struct {
   unsigned int VolId : 30 ;
   unsigned char Mode : 2 ;
   __u8 reserved[4U] ;
};
typedef struct _LogDevAddr_struct LogDevAddr_struct;
union _LUNAddr_struct {
   __u8 LunAddrBytes[8U] ;
   SCSI3Addr_struct SCSI3Lun[4U] ;
   PhysDevAddr_struct PhysDev ;
   LogDevAddr_struct LogDev ;
};
typedef union _LUNAddr_struct LUNAddr_struct;
struct __anonstruct_Type_297 {
   unsigned char Type : 3 ;
   unsigned char Attribute : 3 ;
   unsigned char Direction : 2 ;
};
struct _RequestBlock_struct {
   __u8 CDBLen ;
   struct __anonstruct_Type_297 Type ;
   __u16 Timeout ;
   __u8 CDB[16U] ;
};
typedef struct _RequestBlock_struct RequestBlock_struct;
struct __anonstruct_Common_Info_298 {
   __u8 Reserved[3U] ;
   __u8 Type ;
   __u32 ErrorInfo ;
};
struct __anonstruct_Invalid_Cmd_299 {
   __u8 Reserved[2U] ;
   __u8 offense_size ;
   __u8 offense_num ;
   __u32 offense_value ;
};
union _MoreErrInfo_struct {
   struct __anonstruct_Common_Info_298 Common_Info ;
   struct __anonstruct_Invalid_Cmd_299 Invalid_Cmd ;
};
typedef union _MoreErrInfo_struct MoreErrInfo_struct;
struct _ErrorInfo_struct {
   __u8 ScsiStatus ;
   __u8 SenseLen ;
   __u16 CommandStatus ;
   __u32 ResidualCnt ;
   MoreErrInfo_struct MoreErrInfo ;
   __u8 SenseInfo[32U] ;
};
typedef struct _ErrorInfo_struct ErrorInfo_struct;
typedef __u32 DriverVer_type;
struct _IOCTL_Command_struct {
   LUNAddr_struct LUN_info ;
   RequestBlock_struct Request ;
   ErrorInfo_struct error_info ;
   __u16 buf_size ;
   __u8 *buf ;
};
typedef struct _IOCTL_Command_struct IOCTL_Command_struct;
struct _BIG_IOCTL_Command_struct {
   LUNAddr_struct LUN_info ;
   RequestBlock_struct Request ;
   ErrorInfo_struct error_info ;
   __u32 malloc_size ;
   __u32 buf_size ;
   __u8 *buf ;
};
typedef struct _BIG_IOCTL_Command_struct BIG_IOCTL_Command_struct;
struct _IOCTL32_Command_struct {
   LUNAddr_struct LUN_info ;
   RequestBlock_struct Request ;
   ErrorInfo_struct error_info ;
   __u16 buf_size ;
   __u32 buf ;
};
typedef struct _IOCTL32_Command_struct IOCTL32_Command_struct;
struct _BIG_IOCTL32_Command_struct {
   LUNAddr_struct LUN_info ;
   RequestBlock_struct Request ;
   ErrorInfo_struct error_info ;
   __u32 malloc_size ;
   __u32 buf_size ;
   __u32 buf ;
};
typedef struct _BIG_IOCTL32_Command_struct BIG_IOCTL32_Command_struct;
struct vals32 {
   u32 lower ;
   u32 upper ;
};
struct raid_map_disk_data {
   u32 ioaccel_handle ;
   u8 xor_mult[2U] ;
   u8 reserved[2U] ;
};
struct raid_map_data {
   __le32 structure_size ;
   __le32 volume_blk_size ;
   __le64 volume_blk_cnt ;
   u8 phys_blk_shift ;
   u8 parity_rotation_shift ;
   __le16 strip_size ;
   __le64 disk_starting_blk ;
   __le64 disk_blk_cnt ;
   __le16 data_disks_per_row ;
   __le16 metadata_disks_per_row ;
   __le16 row_cnt ;
   __le16 layout_map_count ;
   __le16 flags ;
   __le16 dekindex ;
   u8 reserved[16U] ;
   struct raid_map_disk_data data[256U] ;
};
struct ReportLUNdata {
   u8 LUNListLength[4U] ;
   u8 extended_response_flag ;
   u8 reserved[3U] ;
   u8 LUN[1024U][8U] ;
};
struct ext_report_lun_entry {
   u8 lunid[8U] ;
   u8 wwid[8U] ;
   u8 device_type ;
   u8 device_flags ;
   u8 lun_count ;
   u8 redundant_paths ;
   u32 ioaccel_handle ;
};
struct ReportExtendedLUNdata {
   u8 LUNListLength[4U] ;
   u8 extended_response_flag ;
   u8 reserved[3U] ;
   struct ext_report_lun_entry LUN[1024U] ;
};
struct __anonstruct_PeripDev_300 {
   u8 Dev ;
   unsigned char Bus : 6 ;
   unsigned char Mode : 2 ;
};
struct __anonstruct_LogDev_301 {
   u8 DevLSB ;
   unsigned char DevMSB : 6 ;
   unsigned char Mode : 2 ;
};
struct __anonstruct_LogUnit_302 {
   unsigned char Dev : 5 ;
   unsigned char Bus : 3 ;
   unsigned char Targ : 6 ;
   unsigned char Mode : 2 ;
};
union SCSI3Addr {
   struct __anonstruct_PeripDev_300 PeripDev ;
   struct __anonstruct_LogDev_301 LogDev ;
   struct __anonstruct_LogUnit_302 LogUnit ;
};
struct PhysDevAddr {
   unsigned int TargetId : 24 ;
   unsigned char Bus : 6 ;
   unsigned char Mode : 2 ;
   union SCSI3Addr Target[2U] ;
};
struct LogDevAddr {
   unsigned int VolId : 30 ;
   unsigned char Mode : 2 ;
   u8 reserved[4U] ;
};
union LUNAddr {
   u8 LunAddrBytes[8U] ;
   union SCSI3Addr SCSI3Lun[4U] ;
   struct PhysDevAddr PhysDev ;
   struct LogDevAddr LogDev ;
};
struct CommandListHeader {
   u8 ReplyQueue ;
   u8 SGList ;
   __le16 SGTotal ;
   __le64 tag ;
   union LUNAddr LUN ;
};
struct RequestBlock {
   u8 CDBLen ;
   u8 type_attr_dir ;
   u16 Timeout ;
   u8 CDB[16U] ;
};
struct ErrDescriptor {
   __le64 Addr ;
   __le32 Len ;
};
struct SGDescriptor {
   __le64 Addr ;
   __le32 Len ;
   __le32 Ext ;
};
struct __anonstruct_Common_Info_303 {
   u8 Reserved[3U] ;
   u8 Type ;
   u32 ErrorInfo ;
};
struct __anonstruct_Invalid_Cmd_304 {
   u8 Reserved[2U] ;
   u8 offense_size ;
   u8 offense_num ;
   u32 offense_value ;
};
union MoreErrInfo {
   struct __anonstruct_Common_Info_303 Common_Info ;
   struct __anonstruct_Invalid_Cmd_304 Invalid_Cmd ;
};
struct ErrorInfo {
   u8 ScsiStatus ;
   u8 SenseLen ;
   u16 CommandStatus ;
   u32 ResidualCnt ;
   union MoreErrInfo MoreErrInfo ;
   u8 SenseInfo[32U] ;
};
struct hpsa_scsi_dev_t;
struct CommandList {
   struct CommandListHeader Header ;
   struct RequestBlock Request ;
   struct ErrDescriptor ErrDesc ;
   struct SGDescriptor SG[32U] ;
   u32 busaddr ;
   struct ErrorInfo *err_info ;
   struct ctlr_info *h ;
   int cmd_type ;
   long cmdindex ;
   struct completion *waiting ;
   struct scsi_cmnd *scsi_cmd ;
   struct work_struct work ;
   struct hpsa_scsi_dev_t *phys_disk ;
   int abort_pending ;
   struct hpsa_scsi_dev_t *reset_pending ;
   atomic_t refcount ;
};
struct io_accel1_cmd {
   __le16 dev_handle ;
   u8 reserved1 ;
   u8 function ;
   u8 reserved2[8U] ;
   u32 err_info ;
   u8 reserved3[2U] ;
   u8 err_info_len ;
   u8 reserved4 ;
   u8 sgl_offset ;
   u8 reserved5[7U] ;
   __le32 transfer_len ;
   u8 reserved6[4U] ;
   __le16 io_flags ;
   u8 reserved7[14U] ;
   u8 LUN[8U] ;
   __le32 control ;
   u8 CDB[16U] ;
   u8 reserved8[16U] ;
   __le16 host_context_flags ;
   __le16 timeout_sec ;
   u8 ReplyQueue ;
   u8 reserved9[3U] ;
   __le64 tag ;
   __le64 host_addr ;
   u8 CISS_LUN[8U] ;
   struct SGDescriptor SG[24U] ;
};
struct ioaccel2_sg_element {
   __le64 address ;
   __le32 length ;
   u8 reserved[3U] ;
   u8 chain_indicator ;
};
struct io_accel2_scsi_response {
   u8 IU_type ;
   u8 reserved1[3U] ;
   u8 req_id[4U] ;
   u8 reserved2[4U] ;
   u8 serv_response ;
   u8 status ;
   u8 data_present ;
   u8 sense_data_len ;
   u8 resid_cnt[4U] ;
   u8 sense_data_buff[32U] ;
};
struct io_accel2_cmd {
   u8 IU_type ;
   u8 direction ;
   u8 reply_queue ;
   u8 reserved1 ;
   __le32 scsi_nexus ;
   __le32 Tag ;
   __le32 tweak_lower ;
   u8 cdb[16U] ;
   u8 cciss_lun[8U] ;
   __le32 data_len ;
   u8 cmd_priority_task_attr ;
   u8 sg_count ;
   __le16 dekindex ;
   __le64 err_ptr ;
   __le32 err_len ;
   __le32 tweak_upper ;
   struct ioaccel2_sg_element sg[28U] ;
   struct io_accel2_scsi_response error_data ;
};
struct hpsa_tmf_struct {
   u8 iu_type ;
   u8 reply_queue ;
   u8 tmf ;
   u8 reserved1 ;
   __le32 it_nexus ;
   u8 lun_id[8U] ;
   __le64 tag ;
   __le64 abort_tag ;
   __le64 error_ptr ;
   __le32 error_len ;
};
struct HostWrite {
   __le32 TransportRequest ;
   __le32 command_pool_addr_hi ;
   __le32 CoalIntDelay ;
   __le32 CoalIntCount ;
};
struct CfgTable {
   u8 Signature[4U] ;
   __le32 SpecValence ;
   __le32 TransportSupport ;
   __le32 TransportActive ;
   struct HostWrite HostWrite ;
   __le32 CmdsOutMax ;
   __le32 BusTypes ;
   __le32 TransMethodOffset ;
   u8 ServerName[16U] ;
   __le32 HeartBeat ;
   __le32 driver_support ;
   __le32 MaxScatterGatherElements ;
   __le32 MaxLogicalUnits ;
   __le32 MaxPhysicalDevices ;
   __le32 MaxPhysicalDrivesPerLogicalUnit ;
   __le32 MaxPerformantModeCommands ;
   __le32 MaxBlockFetch ;
   __le32 PowerConservationSupport ;
   __le32 PowerConservationEnable ;
   __le32 TMFSupportFlags ;
   u8 TMFTagMask[8U] ;
   u8 reserved[8U] ;
   __le32 misc_fw_support ;
   u8 driver_version[32U] ;
   __le32 max_cached_write_size ;
   u8 driver_scratchpad[16U] ;
   __le32 max_error_info_length ;
   __le32 io_accel_max_embedded_sg_count ;
   __le32 io_accel_request_size_offset ;
   __le32 event_notify ;
   __le32 clear_event_notify ;
};
struct TransTable_struct {
   __le32 BlockFetch[8U] ;
   __le32 RepQSize ;
   __le32 RepQCount ;
   __le32 RepQCtrAddrLow32 ;
   __le32 RepQCtrAddrHigh32 ;
   struct vals32 RepQAddr[64U] ;
};
struct hpsa_pci_info {
   unsigned char bus ;
   unsigned char dev_fn ;
   unsigned short domain ;
   u32 board_id ;
};
struct bmic_identify_physical_device {
   u8 scsi_bus ;
   u8 scsi_id ;
   __le16 block_size ;
   __le32 total_blocks ;
   __le32 reserved_blocks ;
   u8 model[40U] ;
   u8 serial_number[40U] ;
   u8 firmware_revision[8U] ;
   u8 scsi_inquiry_bits ;
   u8 compaq_drive_stamp ;
   u8 last_failure_reason ;
   u8 flags ;
   u8 more_flags ;
   u8 scsi_lun ;
   u8 yet_more_flags ;
   u8 even_more_flags ;
   __le32 spi_speed_rules ;
   u8 phys_connector[2U] ;
   u8 phys_box_on_bus ;
   u8 phys_bay_in_box ;
   __le32 rpm ;
   u8 device_type ;
   u8 sata_version ;
   __le64 big_total_block_count ;
   __le64 ris_starting_lba ;
   __le32 ris_size ;
   u8 wwid[20U] ;
   u8 controller_phy_map[32U] ;
   __le16 phy_count ;
   u8 phy_connected_dev_type[256U] ;
   u8 phy_to_drive_bay_num[256U] ;
   __le16 phy_to_attached_dev_index[256U] ;
   u8 box_index ;
   u8 reserved ;
   __le16 extra_physical_drive_flags ;
   u8 negotiated_link_rate[256U] ;
   u8 phy_to_phy_map[256U] ;
   u8 redundant_path_present_map ;
   u8 redundant_path_failure_map ;
   u8 active_path_number ;
   __le16 alternate_paths_phys_connector[8U] ;
   u8 alternate_paths_phys_box_on_port[8U] ;
   u8 multi_lun_device_lun_count ;
   u8 minimum_good_fw_revision[8U] ;
   u8 unique_inquiry_bytes[20U] ;
   u8 current_temperature_degreesC ;
   u8 temperature_threshold_degreesC ;
   u8 max_temperature_degreesC ;
   u8 logical_blocks_per_phys_block_exp ;
   __le16 current_queue_depth_limit ;
   u8 switch_name[10U] ;
   __le16 switch_port ;
   u8 alternate_paths_switch_name[40U] ;
   u8 alternate_paths_switch_port[8U] ;
   __le16 power_on_hours ;
   __le16 percent_endurance_used ;
   u8 drive_authentication ;
   u8 smart_carrier_authentication ;
   u8 smart_carrier_app_fw_version ;
   u8 smart_carrier_bootloader_fw_version ;
   u8 encryption_key_name[64U] ;
   __le32 misc_drive_flags ;
   __le16 dek_index ;
   u8 padding[112U] ;
};
struct access_method {
   void (*submit_command)(struct ctlr_info * , struct CommandList * ) ;
   void (*set_intr_mask)(struct ctlr_info * , unsigned long ) ;
   bool (*intr_pending)(struct ctlr_info * ) ;
   unsigned long (*command_completed)(struct ctlr_info * , u8 ) ;
};
struct hpsa_scsi_dev_t {
   int devtype ;
   int bus ;
   int target ;
   int lun ;
   unsigned char scsi3addr[8U] ;
   unsigned char device_id[16U] ;
   unsigned char vendor[8U] ;
   unsigned char model[16U] ;
   unsigned char raid_level ;
   unsigned char volume_offline ;
   u16 queue_depth ;
   atomic_t reset_cmds_out ;
   atomic_t ioaccel_cmds_out ;
   u32 ioaccel_handle ;
   int offload_config ;
   int offload_enabled ;
   int offload_to_be_enabled ;
   int hba_ioaccel_enabled ;
   int offload_to_mirror ;
   struct raid_map_data raid_map ;
   struct hpsa_scsi_dev_t *phys_disk[256U] ;
   int nphysical_disks ;
   int supports_aborts ;
   u8 expose_state ;
};
struct reply_queue_buffer {
   u64 *head ;
   size_t size ;
   u8 wraparound ;
   u32 current_entry ;
   dma_addr_t busaddr ;
};
struct bmic_controller_parameters {
   u8 led_flags ;
   u8 enable_command_list_verification ;
   u8 backed_out_write_drives ;
   u16 stripes_for_parity ;
   u8 parity_distribution_mode_flags ;
   u16 max_driver_requests ;
   u16 elevator_trend_count ;
   u8 disable_elevator ;
   u8 force_scan_complete ;
   u8 scsi_transfer_mode ;
   u8 force_narrow ;
   u8 rebuild_priority ;
   u8 expand_priority ;
   u8 host_sdb_asic_fix ;
   u8 pdpi_burst_from_host_disabled ;
   char software_name[64U] ;
   char hardware_name[32U] ;
   u8 bridge_revision ;
   u8 snapshot_priority ;
   u32 os_specific ;
   u8 post_prompt_timeout ;
   u8 automatic_drive_slamming ;
   u8 reserved1 ;
   u8 nvram_flags ;
   u8 cache_nvram_flags ;
   u8 drive_config_flags ;
   u16 reserved2 ;
   u8 temp_warning_level ;
   u8 temp_shutdown_level ;
   u8 temp_condition_reset ;
   u8 max_coalesce_commands ;
   u32 max_coalesce_delay ;
   u8 orca_password[4U] ;
   u8 access_id[16U] ;
   u8 reserved[356U] ;
};
struct ctlr_info {
   int ctlr ;
   char devname[8U] ;
   char *product_name ;
   struct pci_dev *pdev ;
   u32 board_id ;
   void *vaddr ;
   unsigned long paddr ;
   int nr_cmds ;
   struct CfgTable *cfgtable ;
   int interrupts_enabled ;
   int max_commands ;
   atomic_t commands_outstanding ;
   unsigned int intr[64U] ;
   unsigned int msix_vector ;
   unsigned int msi_vector ;
   int intr_mode ;
   struct access_method access ;
   char hba_mode_enabled ;
   unsigned int Qdepth ;
   unsigned int maxSG ;
   spinlock_t lock ;
   int maxsgentries ;
   u8 max_cmd_sg_entries ;
   int chainsize ;
   struct SGDescriptor **cmd_sg_list ;
   struct ioaccel2_sg_element **ioaccel2_cmd_sg_list ;
   struct CommandList *cmd_pool ;
   dma_addr_t cmd_pool_dhandle ;
   struct io_accel1_cmd *ioaccel_cmd_pool ;
   dma_addr_t ioaccel_cmd_pool_dhandle ;
   struct io_accel2_cmd *ioaccel2_cmd_pool ;
   dma_addr_t ioaccel2_cmd_pool_dhandle ;
   struct ErrorInfo *errinfo_pool ;
   dma_addr_t errinfo_pool_dhandle ;
   unsigned long *cmd_pool_bits ;
   int scan_finished ;
   spinlock_t scan_lock ;
   wait_queue_head_t scan_wait_queue ;
   struct Scsi_Host *scsi_host ;
   spinlock_t devlock ;
   int ndevices ;
   struct hpsa_scsi_dev_t *dev[2081U] ;
   u32 trans_support ;
   u32 trans_offset ;
   struct TransTable_struct *transtable ;
   unsigned long transMethod ;
   atomic_t passthru_cmds_avail ;
   size_t reply_queue_size ;
   struct reply_queue_buffer reply_queue[64U] ;
   u8 nreply_queues ;
   u32 *blockFetchTable ;
   u32 *ioaccel1_blockFetchTable ;
   u32 *ioaccel2_blockFetchTable ;
   u32 *ioaccel2_bft2_regs ;
   unsigned char *hba_inquiry_data ;
   u32 driver_support ;
   u32 fw_support ;
   int ioaccel_support ;
   int ioaccel_maxsg ;
   u64 last_intr_timestamp ;
   u32 last_heartbeat ;
   u64 last_heartbeat_timestamp ;
   u32 heartbeat_sample_interval ;
   atomic_t firmware_flash_in_progress ;
   u32 *lockup_detected ;
   struct delayed_work monitor_ctlr_work ;
   struct delayed_work rescan_ctlr_work ;
   int remove_in_progress ;
   u8 q[64U] ;
   char intrname[64U][16U] ;
   u32 TMFSupportFlags ;
   u32 events ;
   spinlock_t offline_device_lock ;
   struct list_head offline_device_list ;
   int acciopath_status ;
   int raid_offload_debug ;
   int needs_abort_tags_swizzled ;
   struct workqueue_struct *resubmit_wq ;
   struct workqueue_struct *rescan_ctlr_wq ;
   atomic_t abort_cmds_available ;
   wait_queue_head_t abort_cmd_wait_queue ;
   wait_queue_head_t event_sync_wait_queue ;
   struct mutex reset_mutex ;
};
struct offline_device_entry {
   unsigned char scsi3addr[8U] ;
   struct list_head offline_list ;
};
struct board_type {
   u32 board_id ;
   char *product_name ;
   struct access_method *access ;
};
struct Command {
   struct CommandListHeader CommandHeader ;
   struct RequestBlock Request ;
   struct ErrDescriptor ErrorDescriptor ;
};
typedef bool ldv_func_ret_type___2;
typedef bool ldv_func_ret_type___3;
typedef bool ldv_func_ret_type___4;
typedef bool ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef bool ldv_func_ret_type___7;
typedef struct Scsi_Host *ldv_func_ret_type___8;
typedef bool ldv_func_ret_type___9;
typedef bool ldv_func_ret_type___10;
typedef int ldv_func_ret_type___11;
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void __set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
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
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern unsigned long find_next_bit(unsigned long const * , unsigned long , unsigned long ) ;
extern unsigned long find_next_zero_bit(unsigned long const * , unsigned long ,
                                        unsigned long ) ;
extern unsigned long find_first_bit(unsigned long const * , unsigned long ) ;
extern unsigned long find_first_zero_bit(unsigned long const * , unsigned long ) ;
__inline static __u32 __arch_swab32(__u32 val )
{
  {
  __asm__ ("bswapl %0": "=r" (val): "0" (val));
  return (val);
}
}
__inline static __u64 __arch_swab64(__u64 val )
{
  {
  __asm__ ("bswapq %0": "=r" (val): "0" (val));
  return (val);
}
}
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
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
__inline static __u64 __fswab64(__u64 val )
{
  __u64 tmp ;
  {
  tmp = __arch_swab64(val);
  return (tmp);
}
}
__inline static __u16 __swab16p(__u16 const *p )
{
  __u16 tmp ;
  {
  tmp = __fswab16((int )*p);
  return (tmp);
}
}
__inline static __u32 __swab32p(__u32 const *p )
{
  __u32 tmp ;
  {
  tmp = __fswab32(*p);
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
__inline static __u64 __be64_to_cpup(__be64 const *p )
{
  __u64 tmp ;
  {
  tmp = __swab64p(p);
  return (tmp);
}
}
__inline static __u32 __be32_to_cpup(__be32 const *p )
{
  __u32 tmp ;
  {
  tmp = __swab32p(p);
  return (tmp);
}
}
__inline static __u16 __be16_to_cpup(__be16 const *p )
{
  __u16 tmp ;
  {
  tmp = __swab16p(p);
  return (tmp);
}
}
extern unsigned int reset_devices ;
extern int printk(char const * , ...) ;
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern void __might_fault(char const * , int ) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern int sscanf(char const * , char const * , ...) ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern void *memmove(void * , void const * , size_t ) ;
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
extern unsigned long __per_cpu_offset[8192U] ;
extern void warn_slowpath_null(char const * , int const ) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
extern int __bitmap_weight(unsigned long const * , unsigned int ) ;
__inline static void bitmap_zero(unsigned long *dst , unsigned int nbits )
{
  unsigned int len ;
  {
  len = (unsigned int )(((unsigned long )nbits + 63UL) / 64UL) * 8U;
  memset((void *)dst, 0, (size_t )len);
  return;
}
}
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
__inline static unsigned int cpumask_check(unsigned int cpu )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  __ret_warn_once = (unsigned int )nr_cpu_ids <= cpu;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/linux/cpumask.h", 117);
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
  return (cpu);
}
}
__inline static unsigned int cpumask_first(struct cpumask const *srcp )
{
  unsigned long tmp ;
  {
  tmp = find_first_bit((unsigned long const *)(& srcp->bits), (unsigned long )nr_cpu_ids);
  return ((unsigned int )tmp);
}
}
__inline static unsigned int cpumask_next(int n , struct cpumask const *srcp )
{
  unsigned long tmp ;
  {
  if (n != -1) {
    cpumask_check((unsigned int )n);
  } else {
  }
  tmp = find_next_bit((unsigned long const *)(& srcp->bits), (unsigned long )nr_cpu_ids,
                      (unsigned long )(n + 1));
  return ((unsigned int )tmp);
}
}
__inline static unsigned int cpumask_weight(struct cpumask const *srcp )
{
  int tmp ;
  {
  tmp = bitmap_weight((unsigned long const *)(& srcp->bits), (unsigned int )nr_cpu_ids);
  return ((unsigned int )tmp);
}
}
extern unsigned long const cpu_bit_bitmap[65U][128U] ;
__inline static struct cpumask const *get_cpu_mask(unsigned int cpu )
{
  unsigned long const *p ;
  {
  p = (unsigned long const *)(& cpu_bit_bitmap) + (unsigned long )((cpu & 63U) + 1U);
  p = p + - ((unsigned long )(cpu / 64U));
  return ((struct cpumask const *)p);
}
}
extern void __cmpxchg_wrong_size(void) ;
extern void __xadd_wrong_size(void) ;
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
__inline static int atomic_add_return(int i , atomic_t *v )
{
  int __ret ;
  {
  __ret = i;
  switch (4UL) {
  case 1UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddb %b0, %1\n": "+q" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5763;
  case 2UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5763;
  case 4UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5763;
  case 8UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5763;
  default:
  __xadd_wrong_size();
  }
  ldv_5763: ;
  return (__ret + i);
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
  goto ldv_5783;
  case 2UL:
  __ptr___0 = (u16 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgw %2,%1": "=a" (__ret),
                       "+m" (*__ptr___0): "r" (__new), "0" (__old): "memory");
  goto ldv_5783;
  case 4UL:
  __ptr___1 = (u32 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgl %2,%1": "=a" (__ret),
                       "+m" (*__ptr___1): "r" (__new), "0" (__old): "memory");
  goto ldv_5783;
  case 8UL:
  __ptr___2 = (u64 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgq %2,%1": "=a" (__ret),
                       "+m" (*__ptr___2): "r" (__new), "0" (__old): "memory");
  goto ldv_5783;
  default:
  __cmpxchg_wrong_size();
  }
  ldv_5783: ;
  return (__ret);
}
}
__inline static int atomic_dec_if_positive(atomic_t *v )
{
  int c ;
  int old ;
  int dec ;
  long tmp ;
  long tmp___0 ;
  {
  c = atomic_read((atomic_t const *)v);
  ldv_5957:
  dec = c + -1;
  tmp = ldv__builtin_expect(dec < 0, 0L);
  if (tmp != 0L) {
    goto ldv_5956;
  } else {
  }
  old = atomic_cmpxchg(v, c, dec);
  tmp___0 = ldv__builtin_expect(old == c, 1L);
  if (tmp___0 != 0L) {
    goto ldv_5956;
  } else {
  }
  c = old;
  goto ldv_5957;
  ldv_5956: ;
  return (dec);
}
}
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
  goto ldv_6163;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6163;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6163;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_6163;
  default:
  __bad_percpu_size();
  }
  ldv_6163: ;
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
  goto ldv_6175;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6175;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6175;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6175;
  default:
  __bad_percpu_size();
  }
  ldv_6175: ;
  return;
}
}
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
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_lock_interruptible_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  return;
}
}
extern void wait_for_completion_io(struct completion * ) ;
extern unsigned long wait_for_completion_io_timeout(struct completion * , unsigned long ) ;
extern void complete(struct completion * ) ;
extern unsigned long volatile jiffies ;
__inline static u64 get_jiffies_64(void)
{
  {
  return ((u64 )jiffies);
}
}
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
extern void delayed_work_timer_fn(unsigned long ) ;
__inline static struct delayed_work *to_delayed_work(struct work_struct *work )
{
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  return ((struct delayed_work *)__mptr);
}
}
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
void ldv_destroy_workqueue_32(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_destroy_workqueue_33(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_destroy_workqueue_35(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_destroy_workqueue_36(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_destroy_workqueue_39(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_destroy_workqueue_40(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
bool ldv_queue_work_on_15(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_17(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_30(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
bool ldv_queue_delayed_work_on_16(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_19(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
extern void flush_workqueue(struct workqueue_struct * ) ;
void ldv_flush_workqueue_18(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_34(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool cancel_delayed_work_sync(struct delayed_work * ) ;
bool ldv_cancel_delayed_work_sync_37(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_sync_38(struct delayed_work *ldv_func_arg1 ) ;
__inline static bool queue_delayed_work(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                        unsigned long delay )
{
  bool tmp ;
  {
  tmp = ldv_queue_delayed_work_on_16(8192, wq, dwork, delay);
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
__inline static unsigned char readb(void const volatile *addr )
{
  unsigned char ret ;
  {
  __asm__ volatile ("movb %1,%0": "=q" (ret): "m" (*((unsigned char volatile *)addr)): "memory");
  return (ret);
}
}
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
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
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
extern void iounmap(void volatile * ) ;
extern int cpu_number ;
extern void *__alloc_percpu(size_t , size_t ) ;
extern void free_percpu(void * ) ;
extern bool capable(int ) ;
extern long schedule_timeout(long ) ;
extern void schedule(void) ;
extern void kfree(void const * ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
int ldv_state_variable_8 ;
int ldv_state_variable_15 ;
struct ctlr_info *SA5_ioaccel_mode2_access_group0 ;
int ldv_state_variable_20 ;
int pci_counter ;
struct work_struct *ldv_work_struct_3_1 ;
struct work_struct *ldv_work_struct_1_3 ;
int ldv_state_variable_0 ;
int ldv_state_variable_21 ;
int ldv_state_variable_5 ;
int ldv_state_variable_13 ;
int ldv_work_1_1 ;
int ldv_state_variable_12 ;
struct Scsi_Host *hpsa_driver_template_group1 ;
int ldv_work_3_2 ;
int ldv_state_variable_22 ;
int ldv_state_variable_14 ;
int ldv_work_3_0 ;
struct scsi_cmnd *hpsa_driver_template_group0 ;
int ldv_state_variable_17 ;
struct work_struct *ldv_work_struct_2_3 ;
struct work_struct *ldv_work_struct_2_0 ;
struct pci_dev *hpsa_pci_driver_group1 ;
int ldv_state_variable_19 ;
int ldv_state_variable_9 ;
struct work_struct *ldv_work_struct_2_2 ;
int ref_cnt ;
int ldv_work_3_3 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
struct ctlr_info *SA5_performant_access_group0 ;
struct work_struct *ldv_work_struct_3_3 ;
struct work_struct *ldv_work_struct_1_0 ;
struct work_struct *ldv_work_struct_1_1 ;
int ldv_state_variable_10 ;
int ldv_work_1_3 ;
struct work_struct *ldv_work_struct_2_1 ;
struct work_struct *ldv_work_struct_3_2 ;
int ldv_state_variable_6 ;
struct ctlr_info *SA5_performant_access_no_read_group0 ;
struct ctlr_info *SA5_access_group0 ;
int ldv_work_3_1 ;
int ldv_state_variable_16 ;
struct device_attribute *dev_attr_hp_ssd_smart_path_status_group0 ;
int ldv_state_variable_2 ;
int ldv_work_2_0 ;
struct scsi_device *hpsa_driver_template_group2 ;
struct work_struct *ldv_work_struct_3_0 ;
int ldv_state_variable_11 ;
int ldv_work_1_2 ;
int LDV_IN_INTERRUPT = 1;
int ldv_state_variable_18 ;
struct device *dev_attr_hp_ssd_smart_path_status_group1 ;
struct ctlr_info *SA5_ioaccel_mode1_access_group0 ;
struct work_struct *ldv_work_struct_1_2 ;
int ldv_work_2_2 ;
int ldv_state_variable_3 ;
int ldv_work_1_0 ;
int ldv_work_2_3 ;
int ldv_state_variable_4 ;
int ldv_work_2_1 ;
void ldv_initialize_device_attribute_12(void) ;
void work_init_3(void) ;
void call_and_disable_work_1(struct work_struct *work ) ;
void ldv_initialize_access_method_22(void) ;
void work_init_2(void) ;
void call_and_disable_all_2(int state ) ;
void call_and_disable_all_1(int state ) ;
void activate_work_2(struct work_struct *work , int state ) ;
void activate_work_3(struct work_struct *work , int state ) ;
void ldv_initialize_scsi_host_template_5(void) ;
void ldv_initialize_access_method_20(void) ;
void ldv_pci_driver_4(void) ;
void activate_work_1(struct work_struct *work , int state ) ;
void call_and_disable_work_3(struct work_struct *work ) ;
void disable_work_3(struct work_struct *work ) ;
void disable_work_2(struct work_struct *work ) ;
void disable_work_1(struct work_struct *work ) ;
void invoke_work_3(void) ;
void work_init_1(void) ;
void ldv_initialize_access_method_18(void) ;
void invoke_work_1(void) ;
void call_and_disable_all_3(int state ) ;
void ldv_initialize_access_method_21(void) ;
void ldv_initialize_access_method_19(void) ;
void call_and_disable_work_2(struct work_struct *work ) ;
void invoke_work_2(void) ;
extern int check_signature(void const volatile * , unsigned char const * , int ) ;
extern unsigned long copy_in_user(void * , void const * , unsigned int ) ;
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
extern void free_irq(unsigned int , void * ) ;
extern int irq_set_affinity_hint(unsigned int , struct cpumask const * ) ;
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
extern void dev_printk(char const * , struct device const * , char const *
                       , ...) ;
extern void dev_err(struct device const * , char const * , ...) ;
extern void dev_warn(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
extern int pci_find_capability(struct pci_dev * , int ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_write_config_word(struct pci_bus * , unsigned int , int , u16 ) ;
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_write_config_word(struct pci_dev const *dev , int where ,
                                          u16 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_word(dev->bus, dev->devfn, where, (int )val);
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
int ldv___pci_register_driver_42(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
void ldv_pci_unregister_driver_43(struct pci_driver *ldv_func_arg1 ) ;
extern struct scatterlist *sg_next(struct scatterlist * ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
extern void pci_disable_msix(struct pci_dev * ) ;
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
extern int pci_enable_msix_range(struct pci_dev * , struct msix_entry * , int , int ) ;
__inline static int pci_domain_nr(struct pci_bus *bus )
{
  struct pci_sysdata *sd ;
  {
  sd = (struct pci_sysdata *)bus->sysdata;
  return (sd->domain);
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
    ldv_28200: ;
    goto ldv_28200;
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
    ldv_28209: ;
    goto ldv_28209;
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
extern void *dma_alloc_attrs(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
extern void dma_free_attrs(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
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
__inline static void *pci_alloc_consistent(struct pci_dev *hwdev , size_t size , dma_addr_t *dma_handle )
{
  void *tmp ;
  {
  tmp = dma_alloc_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                        size, dma_handle, 32U, (struct dma_attrs *)0);
  return (tmp);
}
}
__inline static void pci_free_consistent(struct pci_dev *hwdev , size_t size , void *vaddr ,
                                         dma_addr_t dma_handle )
{
  {
  dma_free_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 size, vaddr, dma_handle, (struct dma_attrs *)0);
  return;
}
}
__inline static dma_addr_t pci_map_single(struct pci_dev *hwdev , void *ptr , size_t size ,
                                          int direction )
{
  dma_addr_t tmp ;
  {
  tmp = dma_map_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             ptr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return (tmp);
}
}
__inline static void pci_unmap_single(struct pci_dev *hwdev , dma_addr_t dma_addr ,
                                      size_t size , int direction )
{
  {
  dma_unmap_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                         dma_addr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return;
}
}
__inline static int pci_set_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_set_mask(& dev->dev, mask);
  return (tmp);
}
}
__inline static int pci_set_consistent_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_set_coherent_mask(& dev->dev, mask);
  return (tmp);
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
extern void *pci_ioremap_bar(struct pci_dev * , int ) ;
extern void pci_disable_link_state(struct pci_dev * , int ) ;
extern void msleep(unsigned int ) ;
__inline static void *compat_ptr(compat_uptr_t uptr )
{
  {
  return ((void *)((unsigned long )uptr));
}
}
extern void *compat_alloc_user_space(unsigned long ) ;
extern struct blk_queue_tag *blk_init_tags(int , int ) ;
extern char const *scsi_device_type(unsigned int ) ;
extern bool scsi_normalize_sense(u8 const * , int , struct scsi_sense_hdr * ) ;
extern int scsi_add_device(struct Scsi_Host * , uint , uint , u64 ) ;
extern void scsi_remove_device(struct scsi_device * ) ;
extern void scsi_device_put(struct scsi_device * ) ;
extern struct scsi_device *scsi_device_lookup(struct Scsi_Host * , uint , uint ,
                                              u64 ) ;
extern int scsi_change_queue_depth(struct scsi_device * , int ) ;
__inline static unsigned int sdev_channel(struct scsi_device *sdev )
{
  {
  return (sdev->channel);
}
}
__inline static unsigned int sdev_id(struct scsi_device *sdev )
{
  {
  return (sdev->id);
}
}
extern int scsi_dma_map(struct scsi_cmnd * ) ;
extern void scsi_dma_unmap(struct scsi_cmnd * ) ;
__inline static unsigned int scsi_sg_count(struct scsi_cmnd *cmd )
{
  {
  return (cmd->sdb.table.nents);
}
}
__inline static struct scatterlist *scsi_sglist(struct scsi_cmnd *cmd )
{
  {
  return (cmd->sdb.table.sgl);
}
}
__inline static void scsi_set_resid(struct scsi_cmnd *cmd , int resid )
{
  {
  cmd->sdb.resid = resid;
  return;
}
}
__inline static void *shost_priv(struct Scsi_Host *shost )
{
  {
  return ((void *)(& shost->hostdata));
}
}
__inline static bool shost_use_blk_mq(struct Scsi_Host *shost )
{
  {
  return ((int )shost->use_blk_mq != 0);
}
}
extern struct Scsi_Host *scsi_host_alloc(struct scsi_host_template * , int ) ;
struct Scsi_Host *ldv_scsi_host_alloc_31(struct scsi_host_template *sht , int privsize ) ;
extern int scsi_add_host_with_dma(struct Scsi_Host * , struct device * , struct device * ) ;
int ldv_scsi_add_host_with_dma_29(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev ) ;
extern void scsi_scan_host(struct Scsi_Host * ) ;
extern void scsi_remove_host(struct Scsi_Host * ) ;
void ldv_scsi_remove_host_41(struct Scsi_Host *shost ) ;
extern struct Scsi_Host *scsi_host_get(struct Scsi_Host * ) ;
extern void scsi_host_put(struct Scsi_Host * ) ;
__inline static int scsi_add_host(struct Scsi_Host *host , struct device *dev )
{
  int tmp ;
  {
  tmp = ldv_scsi_add_host_with_dma_29(host, dev, dev);
  return (tmp);
}
}
extern void scsi_unblock_requests(struct Scsi_Host * ) ;
extern void scsi_block_requests(struct Scsi_Host * ) ;
__inline static int scsi_init_shared_tag_map(struct Scsi_Host *shost , int depth )
{
  bool tmp ;
  {
  tmp = shost_use_blk_mq(shost);
  if ((int )tmp) {
    return (0);
  } else {
  }
  if ((unsigned long )shost->__annonCompField86.bqt == (unsigned long )((struct blk_queue_tag *)0)) {
    shost->__annonCompField86.bqt = blk_init_tags(depth, (shost->hostt)->tag_alloc_policy);
    if ((unsigned long )shost->__annonCompField86.bqt == (unsigned long )((struct blk_queue_tag *)0)) {
      return (-12);
    } else {
    }
  } else {
  }
  return (0);
}
}
extern void scsi_print_command(struct scsi_cmnd * ) ;
__inline static u16 get_unaligned_be16(void const *p )
{
  __u16 tmp ;
  {
  tmp = __be16_to_cpup((__be16 const *)p);
  return (tmp);
}
}
__inline static u32 get_unaligned_be32(void const *p )
{
  __u32 tmp ;
  {
  tmp = __be32_to_cpup((__be32 const *)p);
  return (tmp);
}
}
__inline static u64 get_unaligned_be64(void const *p )
{
  __u64 tmp ;
  {
  tmp = __be64_to_cpup((__be64 const *)p);
  return (tmp);
}
}
static void SA5_submit_command(struct ctlr_info *h , struct CommandList *c )
{
  {
  writel(c->busaddr, (void volatile *)h->vaddr + 64U);
  readl((void const volatile *)h->vaddr + 176U);
  return;
}
}
static void SA5_submit_command_no_read(struct ctlr_info *h , struct CommandList *c )
{
  {
  writel(c->busaddr, (void volatile *)h->vaddr + 64U);
  return;
}
}
static void SA5_submit_command_ioaccel2(struct ctlr_info *h , struct CommandList *c )
{
  {
  writel(c->busaddr, (void volatile *)h->vaddr + 64U);
  return;
}
}
static void SA5_intr_mask(struct ctlr_info *h , unsigned long val )
{
  {
  if (val != 0UL) {
    h->interrupts_enabled = 1;
    writel(0U, (void volatile *)h->vaddr + 52U);
    readl((void const volatile *)h->vaddr + 52U);
  } else {
    h->interrupts_enabled = 0;
    writel(8U, (void volatile *)h->vaddr + 52U);
    readl((void const volatile *)h->vaddr + 52U);
  }
  return;
}
}
static void SA5_performant_intr_mask(struct ctlr_info *h , unsigned long val )
{
  {
  if (val != 0UL) {
    h->interrupts_enabled = 1;
    writel(0U, (void volatile *)h->vaddr + 52U);
    readl((void const volatile *)h->vaddr + 52U);
  } else {
    h->interrupts_enabled = 0;
    writel(5U, (void volatile *)h->vaddr + 52U);
    readl((void const volatile *)h->vaddr + 52U);
  }
  return;
}
}
static unsigned long SA5_performant_completed(struct ctlr_info *h , u8 q )
{
  struct reply_queue_buffer *rq ;
  unsigned long register_value ;
  long tmp ;
  {
  rq = (struct reply_queue_buffer *)(& h->reply_queue) + (unsigned long )q;
  register_value = 4294967295UL;
  tmp = ldv__builtin_expect((long )(h->msi_vector == 0U && h->msix_vector == 0U), 0L);
  if (tmp != 0L) {
    readl((void const volatile *)h->vaddr + 156U);
    writel(1U, (void volatile *)h->vaddr + 160U);
    readl((void const volatile *)h->vaddr + 156U);
  } else {
  }
  if (((unsigned int )*(rq->head + (unsigned long )rq->current_entry) & 1U) == (unsigned int )rq->wraparound) {
    register_value = (unsigned long )*(rq->head + (unsigned long )rq->current_entry);
    rq->current_entry = rq->current_entry + 1U;
    atomic_dec(& h->commands_outstanding);
  } else {
    register_value = 4294967295UL;
  }
  if (rq->current_entry == (u32 )h->max_commands) {
    rq->current_entry = 0U;
    rq->wraparound = (u8 )((unsigned int )rq->wraparound ^ 1U);
  } else {
  }
  return (register_value);
}
}
static unsigned long SA5_completed(struct ctlr_info *h , u8 q )
{
  unsigned long register_value ;
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)h->vaddr + 68U);
  register_value = (unsigned long )tmp;
  if (register_value != 4294967295UL) {
    atomic_dec(& h->commands_outstanding);
  } else {
  }
  return (register_value);
}
}
static bool SA5_intr_pending(struct ctlr_info *h )
{
  unsigned long register_value ;
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)h->vaddr + 48U);
  register_value = (unsigned long )tmp;
  return ((register_value & 8UL) != 0UL);
}
}
static bool SA5_performant_intr_pending(struct ctlr_info *h )
{
  unsigned long register_value ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  tmp = readl((void const volatile *)h->vaddr + 48U);
  register_value = (unsigned long )tmp;
  if (register_value == 0UL) {
    return (0);
  } else {
  }
  tmp___0 = readl((void const volatile *)h->vaddr + 156U);
  register_value = (unsigned long )tmp___0;
  return ((register_value & 1UL) != 0UL);
}
}
static bool SA5_ioaccel_mode1_intr_pending(struct ctlr_info *h )
{
  unsigned long register_value ;
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)h->vaddr + 48U);
  register_value = (unsigned long )tmp;
  return ((register_value & 256UL) != 0UL);
}
}
static unsigned long SA5_ioaccel_mode1_completed(struct ctlr_info *h , u8 q )
{
  u64 register_value ;
  struct reply_queue_buffer *rq ;
  long tmp ;
  {
  rq = (struct reply_queue_buffer *)(& h->reply_queue) + (unsigned long )q;
  tmp = ldv__builtin_expect((int )h->nreply_queues <= (int )q, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/scsi/hpsa.h"),
                         "i" (523), "i" (12UL));
    ldv_39767: ;
    goto ldv_39767;
  } else {
  }
  register_value = *(rq->head + (unsigned long )rq->current_entry);
  if (register_value != 0xffffffffffffffffULL) {
    *(rq->head + (unsigned long )rq->current_entry) = 0xffffffffffffffffULL;
    rq->current_entry = rq->current_entry + 1U;
    if ((size_t )rq->current_entry == rq->size) {
      rq->current_entry = 0U;
    } else {
    }
    __asm__ volatile ("sfence": : : "memory");
    writel((u32 )((int )q << 24) | rq->current_entry, (void volatile *)h->vaddr + 444U);
    atomic_dec(& h->commands_outstanding);
  } else {
  }
  return ((unsigned long )register_value);
}
}
static struct access_method SA5_access = {& SA5_submit_command, & SA5_intr_mask, & SA5_intr_pending, & SA5_completed};
static struct access_method SA5_ioaccel_mode1_access = {& SA5_submit_command, & SA5_performant_intr_mask, & SA5_ioaccel_mode1_intr_pending,
    & SA5_ioaccel_mode1_completed};
static struct access_method SA5_ioaccel_mode2_access = {& SA5_submit_command_ioaccel2, & SA5_performant_intr_mask, & SA5_performant_intr_pending,
    & SA5_performant_completed};
static struct access_method SA5_performant_access = {& SA5_submit_command, & SA5_performant_intr_mask, & SA5_performant_intr_pending,
    & SA5_performant_completed};
static struct access_method SA5_performant_access_no_read = {& SA5_submit_command_no_read, & SA5_performant_intr_mask, & SA5_performant_intr_pending,
    & SA5_performant_completed};
static int hpsa_allow_any ;
static int hpsa_simple_mode ;
static struct pci_device_id const hpsa_pci_device_id[48U] =
  { {4156U, 12858U, 4156U, 12865U, 0U, 0U, 0UL},
        {4156U, 12858U, 4156U, 12867U, 0U, 0U, 0UL},
        {4156U, 12858U, 4156U, 12869U, 0U, 0U, 0UL},
        {4156U, 12858U, 4156U, 12871U, 0U, 0U, 0UL},
        {4156U, 12858U, 4156U, 12873U, 0U, 0U, 0UL},
        {4156U, 12858U, 4156U, 12874U, 0U, 0U, 0UL},
        {4156U, 12858U, 4156U, 12875U, 0U, 0U, 0UL},
        {4156U, 12858U, 4156U, 12851U, 0U, 0U, 0UL},
        {4156U, 12859U, 4156U, 13136U, 0U, 0U, 0UL},
        {4156U, 12859U, 4156U, 13137U, 0U, 0U, 0UL},
        {4156U, 12859U, 4156U, 13138U, 0U, 0U, 0UL},
        {4156U, 12859U, 4156U, 13139U, 0U, 0U, 0UL},
        {4156U, 12859U, 4156U, 13140U, 0U, 0U, 0UL},
        {4156U, 12859U, 4156U, 13141U, 0U, 0U, 0UL},
        {4156U, 12859U, 4156U, 13142U, 0U, 0U, 0UL},
        {4156U, 12860U, 4156U, 6433U, 0U, 0U, 0UL},
        {4156U, 12860U, 4156U, 6434U, 0U, 0U, 0UL},
        {4156U, 12860U, 4156U, 6435U, 0U, 0U, 0UL},
        {4156U, 12860U, 4156U, 6436U, 0U, 0U, 0UL},
        {4156U, 12860U, 4156U, 6438U, 0U, 0U, 0UL},
        {4156U, 12860U, 4156U, 6440U, 0U, 0U, 0UL},
        {4156U, 12860U, 4156U, 6441U, 0U, 0U, 0UL},
        {4156U, 12857U, 4156U, 8637U, 0U, 0U, 0UL},
        {4156U, 12857U, 4156U, 8638U, 0U, 0U, 0UL},
        {4156U, 12857U, 4156U, 8639U, 0U, 0U, 0UL},
        {4156U, 12857U, 4156U, 8640U, 0U, 0U, 0UL},
        {4156U, 12857U, 4156U, 8641U, 0U, 0U, 0UL},
        {4156U, 12857U, 4156U, 8642U, 0U, 0U, 0UL},
        {4156U, 12857U, 4156U, 8643U, 0U, 0U, 0UL},
        {4156U, 12857U, 4156U, 8644U, 0U, 0U, 0UL},
        {4156U, 12857U, 4156U, 8645U, 0U, 0U, 0UL},
        {4156U, 12857U, 4156U, 8646U, 0U, 0U, 0UL},
        {4156U, 12857U, 4156U, 8647U, 0U, 0U, 0UL},
        {4156U, 12857U, 4156U, 8648U, 0U, 0U, 0UL},
        {4156U, 12857U, 4156U, 8649U, 0U, 0U, 0UL},
        {4156U, 12857U, 4156U, 8650U, 0U, 0U, 0UL},
        {4156U, 12857U, 4156U, 8651U, 0U, 0U, 0UL},
        {4156U, 12857U, 4156U, 8652U, 0U, 0U, 0UL},
        {4156U, 12857U, 4156U, 8653U, 0U, 0U, 0UL},
        {4156U, 12857U, 4156U, 8654U, 0U, 0U, 0UL},
        {36869U, 656U, 36869U, 1408U, 0U, 0U, 0UL},
        {5520U, 117U, 5520U, 118U, 0U, 0U, 0UL},
        {5520U, 117U, 5520U, 135U, 0U, 0U, 0UL},
        {5520U, 117U, 5520U, 125U, 0U, 0U, 0UL},
        {5520U, 117U, 5520U, 136U, 0U, 0U, 0UL},
        {4156U, 13119U, 4156U, 13119U, 0U, 0U, 0UL},
        {4156U, 4294967295U, 4294967295U, 4294967295U, 66560U, 16776960U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__hpsa_pci_device_id_device_table[48U] ;
static struct board_type products[47U] =
  { {843124796U, (char *)"Smart Array P212", & SA5_access},
        {843255868U, (char *)"Smart Array P410", & SA5_access},
        {843386940U, (char *)"Smart Array P410i", & SA5_access},
        {843518012U, (char *)"Smart Array P411", & SA5_access},
        {843649084U, (char *)"Smart Array P812", & SA5_access},
        {843714620U, (char *)"Smart Array P712m", & SA5_access},
        {843780156U, (char *)"Smart Array P711m", & SA5_access},
        {842207292U, (char *)"HP StorageWorks 1210m", & SA5_access},
        {860885052U, (char *)"Smart Array P222", & SA5_access},
        {860950588U, (char *)"Smart Array P420", & SA5_access},
        {861016124U, (char *)"Smart Array P421", & SA5_access},
        {861081660U, (char *)"Smart Array P822", & SA5_access},
        {861147196U, (char *)"Smart Array P420i", & SA5_access},
        {861212732U, (char *)"Smart Array P220i", & SA5_access},
        {861278268U, (char *)"Smart Array P721m", & SA5_access},
        {421597244U, (char *)"Smart Array P830i", & SA5_access},
        {421662780U, (char *)"Smart Array P430", & SA5_access},
        {421728316U, (char *)"Smart Array P431", & SA5_access},
        {421793852U, (char *)"Smart Array P830", & SA5_access},
        {421924924U, (char *)"Smart Array P731m", & SA5_access},
        {422055996U, (char *)"Smart Array P230i", & SA5_access},
        {422121532U, (char *)"Smart Array P530", & SA5_access},
        {566038588U, (char *)"Smart Array P244br", & SA5_access},
        {566104124U, (char *)"Smart Array P741m", & SA5_access},
        {566169660U, (char *)"Smart HBA H240ar", & SA5_access},
        {566235196U, (char *)"Smart Array P440ar", & SA5_access},
        {566300732U, (char *)"Smart Array P840ar", & SA5_access},
        {566366268U, (char *)"Smart Array P440", & SA5_access},
        {566431804U, (char *)"Smart Array P441", & SA5_access},
        {566497340U, (char *)"Smart Array", & SA5_access},
        {566562876U, (char *)"Smart Array P841", & SA5_access},
        {566628412U, (char *)"Smart HBA H244br", & SA5_access},
        {566693948U, (char *)"Smart HBA H240", & SA5_access},
        {566759484U, (char *)"Smart HBA H241", & SA5_access},
        {566825020U, (char *)"Smart Array", & SA5_access},
        {566890556U, (char *)"Smart Array P246br", & SA5_access},
        {566956092U, (char *)"Smart Array P840", & SA5_access},
        {567021628U, (char *)"Smart Array", & SA5_access},
        {567087164U, (char *)"Smart Array", & SA5_access},
        {567152700U, (char *)"Smart HBA", & SA5_access},
        {92311557U, (char *)"SmartHBA-SA", & SA5_access},
        {7738768U, (char *)"HP Storage P1224 Array Controller", & SA5_access},
        {8852880U, (char *)"HP Storage P1224e Array Controller", & SA5_access},
        {8197520U, (char *)"HP Storage P1228 Array Controller", & SA5_access},
        {8918416U, (char *)"HP Storage P1228e Array Controller", & SA5_access},
        {859770940U, (char *)"HP StorageWorks 1210m Array Controller", & SA5_access},
        {4294905916U,
      (char *)"Unknown Smart Array", & SA5_access}};
static struct scsi_cmnd const hpsa_cmd_busy ;
static struct scsi_cmnd const hpsa_cmd_idle ;
static int number_of_controllers ;
static irqreturn_t do_hpsa_intr_intx(int irq , void *queue ) ;
static irqreturn_t do_hpsa_intr_msi(int irq , void *queue ) ;
static int hpsa_ioctl(struct scsi_device *dev , int cmd , void *arg ) ;
static int hpsa_compat_ioctl(struct scsi_device *dev , int cmd , void *arg ) ;
static void cmd_free(struct ctlr_info *h , struct CommandList *c ) ;
static struct CommandList *cmd_alloc(struct ctlr_info *h ) ;
static void cmd_tagged_free(struct ctlr_info *h , struct CommandList *c ) ;
static struct CommandList *cmd_tagged_alloc(struct ctlr_info *h , struct scsi_cmnd *scmd ) ;
static int fill_cmd(struct CommandList *c , u8 cmd , struct ctlr_info *h , void *buff ,
                    size_t size , u16 page_code , unsigned char *scsi3addr , int cmd_type ) ;
static void hpsa_free_cmd_pool(struct ctlr_info *h ) ;
static int hpsa_scsi_queue_command(struct Scsi_Host *sh , struct scsi_cmnd *cmd ) ;
static void hpsa_scan_start(struct Scsi_Host *sh ) ;
static int hpsa_scan_finished(struct Scsi_Host *sh , unsigned long elapsed_time ) ;
static int hpsa_change_queue_depth(struct scsi_device *sdev , int qdepth ) ;
static int hpsa_eh_device_reset_handler(struct scsi_cmnd *scsicmd ) ;
static int hpsa_eh_abort_handler(struct scsi_cmnd *sc ) ;
static int hpsa_slave_alloc(struct scsi_device *sdev ) ;
static int hpsa_slave_configure(struct scsi_device *sdev ) ;
static void hpsa_slave_destroy(struct scsi_device *sdev ) ;
static void hpsa_update_scsi_devices(struct ctlr_info *h , int hostno ) ;
static int check_for_unit_attention(struct ctlr_info *h , struct CommandList *c ) ;
static void check_ioctl_unit_attention(struct ctlr_info *h , struct CommandList *c ) ;
static void calc_bucket_map(int *bucket , int num_buckets , int nsgs , int min_blocks ,
                            u32 *bucket_map ) ;
static void hpsa_free_performant_mode(struct ctlr_info *h ) ;
static int hpsa_put_ctlr_into_performant_mode(struct ctlr_info *h ) ;
__inline static u32 next_command(struct ctlr_info *h , u8 q ) ;
static int hpsa_find_cfg_addrs(struct pci_dev *pdev , void *vaddr , u32 *cfg_base_addr ,
                               u64 *cfg_base_addr_index , u64 *cfg_offset ) ;
static int hpsa_pci_find_memory_BAR(struct pci_dev *pdev , unsigned long *memory_bar ) ;
static int hpsa_lookup_board_id(struct pci_dev *pdev , u32 *board_id ) ;
static int hpsa_wait_for_board_state(struct pci_dev *pdev , void *vaddr , int wait_for_ready ) ;
__inline static void finish_cmd(struct CommandList *c ) ;
static int hpsa_wait_for_mode_change_ack(struct ctlr_info *h ) ;
static void hpsa_drain_accel_commands(struct ctlr_info *h ) ;
static void hpsa_flush_cache(struct ctlr_info *h ) ;
static int hpsa_scsi_ioaccel_queue_command(struct ctlr_info *h , struct CommandList *c ,
                                           u32 ioaccel_handle , u8 *cdb , int cdb_len ,
                                           u8 *scsi3addr , struct hpsa_scsi_dev_t *phys_disk ) ;
static void hpsa_command_resubmit_worker(struct work_struct *work ) ;
static u32 lockup_detected(struct ctlr_info *h ) ;
static int detect_controller_lockup(struct ctlr_info *h ) ;
__inline static struct ctlr_info *sdev_to_hba(struct scsi_device *sdev )
{
  unsigned long *priv ;
  void *tmp ;
  {
  tmp = shost_priv(sdev->host);
  priv = (unsigned long *)tmp;
  return ((struct ctlr_info *)*priv);
}
}
__inline static struct ctlr_info *shost_to_hba(struct Scsi_Host *sh )
{
  unsigned long *priv ;
  void *tmp ;
  {
  tmp = shost_priv(sh);
  priv = (unsigned long *)tmp;
  return ((struct ctlr_info *)*priv);
}
}
__inline static bool hpsa_is_cmd_idle(struct CommandList *c )
{
  {
  return ((unsigned long )c->scsi_cmd == (unsigned long )((struct scsi_cmnd *)(& hpsa_cmd_idle)));
}
}
__inline static bool hpsa_is_pending_event(struct CommandList *c )
{
  {
  return ((bool )(c->abort_pending != 0 || (unsigned long )c->reset_pending != (unsigned long )((struct hpsa_scsi_dev_t *)0)));
}
}
static void decode_sense_data(u8 const *sense_data , int sense_data_len , u8 *sense_key ,
                              u8 *asc , u8 *ascq )
{
  struct scsi_sense_hdr sshdr ;
  bool rc ;
  {
  *sense_key = 255U;
  *asc = 255U;
  *ascq = 255U;
  if (sense_data_len <= 0) {
    return;
  } else {
  }
  rc = scsi_normalize_sense(sense_data, sense_data_len, & sshdr);
  if ((int )rc) {
    *sense_key = sshdr.sense_key;
    *asc = sshdr.asc;
    *ascq = sshdr.ascq;
  } else {
  }
  return;
}
}
static int check_for_unit_attention(struct ctlr_info *h , struct CommandList *c )
{
  u8 sense_key ;
  u8 asc ;
  u8 ascq ;
  int sense_len ;
  {
  if ((unsigned int )(c->err_info)->SenseLen > 32U) {
    sense_len = 32;
  } else {
    sense_len = (int )(c->err_info)->SenseLen;
  }
  decode_sense_data((u8 const *)(& (c->err_info)->SenseInfo), sense_len, & sense_key,
                    & asc, & ascq);
  if ((unsigned int )sense_key != 6U) {
    return (0);
  } else {
  }
  switch ((int )asc) {
  case 42:
  dev_warn((struct device const *)(& (h->pdev)->dev), "%s: a state change detected, command retried\n",
           (char *)(& h->devname));
  goto ldv_39976;
  case 62:
  dev_warn((struct device const *)(& (h->pdev)->dev), "%s: LUN failure detected\n",
           (char *)(& h->devname));
  goto ldv_39976;
  case 63:
  dev_warn((struct device const *)(& (h->pdev)->dev), "%s: report LUN data changed\n",
           (char *)(& h->devname));
  goto ldv_39976;
  case 41:
  dev_warn((struct device const *)(& (h->pdev)->dev), "%s: a power on or device reset detected\n",
           (char *)(& h->devname));
  goto ldv_39976;
  case 47:
  dev_warn((struct device const *)(& (h->pdev)->dev), "%s: unit attention cleared by another initiator\n",
           (char *)(& h->devname));
  goto ldv_39976;
  default:
  dev_warn((struct device const *)(& (h->pdev)->dev), "%s: unknown unit attention detected\n",
           (char *)(& h->devname));
  goto ldv_39976;
  }
  ldv_39976: ;
  return (1);
}
}
static int check_for_busy(struct ctlr_info *h , struct CommandList *c )
{
  {
  if ((unsigned int )(c->err_info)->CommandStatus != 1U || ((unsigned int )(c->err_info)->ScsiStatus != 8U && (unsigned int )(c->err_info)->ScsiStatus != 40U)) {
    return (0);
  } else {
  }
  dev_warn((struct device const *)(& (h->pdev)->dev), "hpsadevice busy");
  return (1);
}
}
static ssize_t host_show_lockup_detected(struct device *dev , struct device_attribute *attr ,
                                         char *buf )
{
  int ld ;
  struct ctlr_info *h ;
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  u32 tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  h = shost_to_hba(shost);
  tmp = lockup_detected(h);
  ld = (int )tmp;
  tmp___0 = sprintf(buf, "ld=%d\n", ld);
  return ((ssize_t )tmp___0);
}
}
static ssize_t host_store_hp_ssd_smart_path_status(struct device *dev , struct device_attribute *attr ,
                                                   char const *buf , size_t count )
{
  int status ;
  int len ;
  struct ctlr_info *h ;
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  char tmpbuf[10U] ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  tmp = capable(21);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-13L);
  } else {
    tmp___1 = capable(17);
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      return (-13L);
    } else {
    }
  }
  len = (int )(9UL < count ? 9UL : count);
  strncpy((char *)(& tmpbuf), buf, (__kernel_size_t )len);
  tmpbuf[len] = 0;
  tmp___3 = sscanf((char const *)(& tmpbuf), "%d", & status);
  if (tmp___3 != 1) {
    return (-22L);
  } else {
  }
  h = shost_to_hba(shost);
  h->acciopath_status = status != 0;
  dev_warn((struct device const *)(& (h->pdev)->dev), "hpsa: HP SSD Smart Path %s via sysfs update.\n",
           h->acciopath_status != 0 ? (char *)"enabled" : (char *)"disabled");
  return ((ssize_t )count);
}
}
static ssize_t host_store_raid_offload_debug(struct device *dev , struct device_attribute *attr ,
                                             char const *buf , size_t count )
{
  int debug_level ;
  int len ;
  struct ctlr_info *h ;
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  char tmpbuf[10U] ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  tmp = capable(21);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-13L);
  } else {
    tmp___1 = capable(17);
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      return (-13L);
    } else {
    }
  }
  len = (int )(9UL < count ? 9UL : count);
  strncpy((char *)(& tmpbuf), buf, (__kernel_size_t )len);
  tmpbuf[len] = 0;
  tmp___3 = sscanf((char const *)(& tmpbuf), "%d", & debug_level);
  if (tmp___3 != 1) {
    return (-22L);
  } else {
  }
  if (debug_level < 0) {
    debug_level = 0;
  } else {
  }
  h = shost_to_hba(shost);
  h->raid_offload_debug = debug_level;
  dev_warn((struct device const *)(& (h->pdev)->dev), "hpsa: Set raid_offload_debug level = %d\n",
           h->raid_offload_debug);
  return ((ssize_t )count);
}
}
static ssize_t host_store_rescan(struct device *dev , struct device_attribute *attr ,
                                 char const *buf , size_t count )
{
  struct ctlr_info *h ;
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  h = shost_to_hba(shost);
  hpsa_scan_start(h->scsi_host);
  return ((ssize_t )count);
}
}
static ssize_t host_show_firmware_revision(struct device *dev , struct device_attribute *attr ,
                                           char *buf )
{
  struct ctlr_info *h ;
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  unsigned char *fwrev ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  h = shost_to_hba(shost);
  if ((unsigned long )h->hba_inquiry_data == (unsigned long )((unsigned char *)0U)) {
    return (0L);
  } else {
  }
  fwrev = h->hba_inquiry_data + 32UL;
  tmp = snprintf(buf, 20UL, "%c%c%c%c\n", (int )*fwrev, (int )*(fwrev + 1UL), (int )*(fwrev + 2UL),
                 (int )*(fwrev + 3UL));
  return ((ssize_t )tmp);
}
}
static ssize_t host_show_commands_outstanding(struct device *dev , struct device_attribute *attr ,
                                              char *buf )
{
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  struct ctlr_info *h ;
  struct ctlr_info *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  tmp = shost_to_hba(shost);
  h = tmp;
  tmp___0 = atomic_read((atomic_t const *)(& h->commands_outstanding));
  tmp___1 = snprintf(buf, 20UL, "%d\n", tmp___0);
  return ((ssize_t )tmp___1);
}
}
static ssize_t host_show_transport_mode(struct device *dev , struct device_attribute *attr ,
                                        char *buf )
{
  struct ctlr_info *h ;
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  h = shost_to_hba(shost);
  tmp = snprintf(buf, 20UL, "%s\n", (h->transMethod & 4UL) != 0UL ? (char *)"performant" : (char *)"simple");
  return ((ssize_t )tmp);
}
}
static ssize_t host_show_hp_ssd_smart_path_status(struct device *dev , struct device_attribute *attr ,
                                                  char *buf )
{
  struct ctlr_info *h ;
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  h = shost_to_hba(shost);
  tmp = snprintf(buf, 30UL, "HP SSD Smart Path %s\n", h->acciopath_status == 1 ? (char *)"enabled" : (char *)"disabled");
  return ((ssize_t )tmp);
}
}
static u32 unresettable_controller[21U] =
  { 843714620U, 843780156U, 841158716U, 842272828U,
        842338364U, 839979068U, 840044604U, 840110140U,
        840175676U, 840241212U, 842469436U, 842862652U,
        1082134033U, 1083969041U, 1084034577U, 1081085457U,
        1082265105U, 1082330641U, 1083837969U, 1083903505U,
        1083248145U};
static u32 soft_unresettable_controller[9U] =
  { 1082134033U, 1081085457U, 1082265105U, 1082330641U,
        1083837969U, 1083903505U, 1083248145U, 1083969041U,
        1084034577U};
static u32 needs_abort_tags_swizzled[3U] = { 842862652U, 843714620U, 843780156U};
static int board_id_in_array(u32 *a , int nelems , u32 board_id )
{
  int i ;
  {
  i = 0;
  goto ldv_40081;
  ldv_40080: ;
  if (*(a + (unsigned long )i) == board_id) {
    return (1);
  } else {
  }
  i = i + 1;
  ldv_40081: ;
  if (i < nelems) {
    goto ldv_40080;
  } else {
  }
  return (0);
}
}
static int ctlr_is_hard_resettable(u32 board_id )
{
  int tmp ;
  {
  tmp = board_id_in_array((u32 *)(& unresettable_controller), 21, board_id);
  return (tmp == 0);
}
}
static int ctlr_is_soft_resettable(u32 board_id )
{
  int tmp ;
  {
  tmp = board_id_in_array((u32 *)(& soft_unresettable_controller), 9, board_id);
  return (tmp == 0);
}
}
static int ctlr_is_resettable(u32 board_id )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = ctlr_is_hard_resettable(board_id);
  if (tmp != 0) {
    tmp___1 = 1;
  } else {
    tmp___0 = ctlr_is_soft_resettable(board_id);
    if (tmp___0 != 0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  }
  return (tmp___1);
}
}
static int ctlr_needs_abort_tags_swizzled(u32 board_id )
{
  int tmp ;
  {
  tmp = board_id_in_array((u32 *)(& needs_abort_tags_swizzled), 3, board_id);
  return (tmp);
}
}
static ssize_t host_show_resettable(struct device *dev , struct device_attribute *attr ,
                                    char *buf )
{
  struct ctlr_info *h ;
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  int tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  h = shost_to_hba(shost);
  tmp = ctlr_is_resettable(h->board_id);
  tmp___0 = snprintf(buf, 20UL, "%d\n", tmp);
  return ((ssize_t )tmp___0);
}
}
__inline static int is_logical_dev_addr_mode(unsigned char *scsi3addr )
{
  {
  return (((int )*(scsi3addr + 3UL) & 192) == 64);
}
}
static char const * const raid_label[8U] =
  { "0", "4", "1(+0)", "5",
        "5+1", "6", "1(+0)ADM", "UNKNOWN"};
static ssize_t raid_level_show(struct device *dev , struct device_attribute *attr ,
                               char *buf )
{
  ssize_t l ;
  unsigned char rlevel ;
  struct ctlr_info *h ;
  struct scsi_device *sdev ;
  struct hpsa_scsi_dev_t *hdev ;
  unsigned long flags ;
  struct device const *__mptr ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  l = 0L;
  __mptr = (struct device const *)dev;
  sdev = (struct scsi_device *)__mptr + 0xfffffffffffffe28UL;
  h = sdev_to_hba(sdev);
  ldv_spin_lock();
  hdev = (struct hpsa_scsi_dev_t *)sdev->hostdata;
  if ((unsigned long )hdev == (unsigned long )((struct hpsa_scsi_dev_t *)0)) {
    spin_unlock_irqrestore(& h->lock, flags);
    return (-19L);
  } else {
  }
  tmp___0 = is_logical_dev_addr_mode((unsigned char *)(& hdev->scsi3addr));
  if (tmp___0 == 0) {
    spin_unlock_irqrestore(& h->lock, flags);
    tmp = snprintf(buf, 4096UL, "N/A\n");
    l = (ssize_t )tmp;
    return (l);
  } else {
  }
  rlevel = hdev->raid_level;
  spin_unlock_irqrestore(& h->lock, flags);
  if ((unsigned int )rlevel > 7U) {
    rlevel = 7U;
  } else {
  }
  tmp___1 = snprintf(buf, 4096UL, "RAID %s\n", raid_label[(int )rlevel]);
  l = (ssize_t )tmp___1;
  return (l);
}
}
static ssize_t lunid_show(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct ctlr_info *h ;
  struct scsi_device *sdev ;
  struct hpsa_scsi_dev_t *hdev ;
  unsigned long flags ;
  unsigned char lunid[8U] ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  sdev = (struct scsi_device *)__mptr + 0xfffffffffffffe28UL;
  h = sdev_to_hba(sdev);
  ldv_spin_lock();
  hdev = (struct hpsa_scsi_dev_t *)sdev->hostdata;
  if ((unsigned long )hdev == (unsigned long )((struct hpsa_scsi_dev_t *)0)) {
    spin_unlock_irqrestore(& h->lock, flags);
    return (-19L);
  } else {
  }
  memmove((void *)(& lunid), (void const *)(& hdev->scsi3addr), 8UL);
  spin_unlock_irqrestore(& h->lock, flags);
  tmp = snprintf(buf, 20UL, "0x%02x%02x%02x%02x%02x%02x%02x%02x\n", (int )lunid[0],
                 (int )lunid[1], (int )lunid[2], (int )lunid[3], (int )lunid[4], (int )lunid[5],
                 (int )lunid[6], (int )lunid[7]);
  return ((ssize_t )tmp);
}
}
static ssize_t unique_id_show(struct device *dev , struct device_attribute *attr ,
                              char *buf )
{
  struct ctlr_info *h ;
  struct scsi_device *sdev ;
  struct hpsa_scsi_dev_t *hdev ;
  unsigned long flags ;
  unsigned char sn[16U] ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  sdev = (struct scsi_device *)__mptr + 0xfffffffffffffe28UL;
  h = sdev_to_hba(sdev);
  ldv_spin_lock();
  hdev = (struct hpsa_scsi_dev_t *)sdev->hostdata;
  if ((unsigned long )hdev == (unsigned long )((struct hpsa_scsi_dev_t *)0)) {
    spin_unlock_irqrestore(& h->lock, flags);
    return (-19L);
  } else {
  }
  memmove((void *)(& sn), (void const *)(& hdev->device_id), 16UL);
  spin_unlock_irqrestore(& h->lock, flags);
  tmp = snprintf(buf, 34UL, "%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\n",
                 (int )sn[0], (int )sn[1], (int )sn[2], (int )sn[3], (int )sn[4],
                 (int )sn[5], (int )sn[6], (int )sn[7], (int )sn[8], (int )sn[9],
                 (int )sn[10], (int )sn[11], (int )sn[12], (int )sn[13], (int )sn[14],
                 (int )sn[15]);
  return ((ssize_t )tmp);
}
}
static ssize_t host_show_hp_ssd_smart_path_enabled(struct device *dev , struct device_attribute *attr ,
                                                   char *buf )
{
  struct ctlr_info *h ;
  struct scsi_device *sdev ;
  struct hpsa_scsi_dev_t *hdev ;
  unsigned long flags ;
  int offload_enabled ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  sdev = (struct scsi_device *)__mptr + 0xfffffffffffffe28UL;
  h = sdev_to_hba(sdev);
  ldv_spin_lock();
  hdev = (struct hpsa_scsi_dev_t *)sdev->hostdata;
  if ((unsigned long )hdev == (unsigned long )((struct hpsa_scsi_dev_t *)0)) {
    spin_unlock_irqrestore(& h->lock, flags);
    return (-19L);
  } else {
  }
  offload_enabled = hdev->offload_enabled;
  spin_unlock_irqrestore(& h->lock, flags);
  tmp = snprintf(buf, 20UL, "%d\n", offload_enabled);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_raid_level = {{"raid_level", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & raid_level_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                    char const * , size_t ))0};
static struct device_attribute dev_attr_lunid = {{"lunid", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & lunid_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_unique_id = {{"unique_id", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & unique_id_show, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                   size_t ))0};
static struct device_attribute dev_attr_rescan = {{"rescan", 128U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, (ssize_t (*)(struct device * ,
                                                                                     struct device_attribute * ,
                                                                                     char * ))0,
    & host_store_rescan};
static struct device_attribute dev_attr_hp_ssd_smart_path_enabled = {{"hp_ssd_smart_path_enabled", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & host_show_hp_ssd_smart_path_enabled,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_hp_ssd_smart_path_status = {{"hp_ssd_smart_path_status", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & host_show_hp_ssd_smart_path_status,
    & host_store_hp_ssd_smart_path_status};
static struct device_attribute dev_attr_raid_offload_debug = {{"raid_offload_debug", 128U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    (ssize_t (*)(struct device * , struct device_attribute * , char * ))0, & host_store_raid_offload_debug};
static struct device_attribute dev_attr_firmware_revision = {{"firmware_revision", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & host_show_firmware_revision, (ssize_t (*)(struct device * , struct device_attribute * ,
                                                char const * , size_t ))0};
static struct device_attribute dev_attr_commands_outstanding = {{"commands_outstanding", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                  {(char)0}, {(char)0}, {(char)0},
                                                  {(char)0}, {(char)0}}}}, & host_show_commands_outstanding,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct device_attribute dev_attr_transport_mode = {{"transport_mode", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & host_show_transport_mode, (ssize_t (*)(struct device * , struct device_attribute * ,
                                             char const * , size_t ))0};
static struct device_attribute dev_attr_resettable = {{"resettable", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & host_show_resettable, (ssize_t (*)(struct device * , struct device_attribute * ,
                                         char const * , size_t ))0};
static struct device_attribute dev_attr_lockup_detected = {{"lockup_detected", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & host_show_lockup_detected, (ssize_t (*)(struct device * , struct device_attribute * ,
                                              char const * , size_t ))0};
static struct device_attribute *hpsa_sdev_attrs[6U] = { & dev_attr_raid_level, & dev_attr_lunid, & dev_attr_unique_id, & dev_attr_hp_ssd_smart_path_enabled,
        & dev_attr_lockup_detected, (struct device_attribute *)0};
static struct device_attribute *hpsa_shost_attrs[8U] =
  { & dev_attr_rescan, & dev_attr_firmware_revision, & dev_attr_commands_outstanding, & dev_attr_transport_mode,
        & dev_attr_resettable, & dev_attr_hp_ssd_smart_path_status, & dev_attr_raid_offload_debug, (struct device_attribute *)0};
static struct scsi_host_template hpsa_driver_template =
     {& __this_module, "hpsa", 0, 0, 0, & hpsa_ioctl, & hpsa_compat_ioctl, & hpsa_scsi_queue_command,
    & hpsa_eh_abort_handler, & hpsa_eh_device_reset_handler, 0, 0, 0, & hpsa_slave_alloc,
    & hpsa_slave_configure, & hpsa_slave_destroy, 0, 0, & hpsa_scan_finished, & hpsa_scan_start,
    & hpsa_change_queue_depth, 0, 0, 0, 0, 0, 0, "hpsa", 0, 0, -1, (unsigned short)0,
    (unsigned short)0, 8192U, 0UL, (short)0, (unsigned char)0, 0, (unsigned char)0,
    (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
    1U, (unsigned char)0, 0U, (struct device_attribute **)(& hpsa_shost_attrs), (struct device_attribute **)(& hpsa_sdev_attrs),
    {0, 0}, 0ULL, 0U, 0, (_Bool)0};
__inline static u32 next_command(struct ctlr_info *h , u8 q )
{
  u32 a ;
  struct reply_queue_buffer *rq ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  long tmp___1 ;
  {
  rq = (struct reply_queue_buffer *)(& h->reply_queue) + (unsigned long )q;
  if ((h->transMethod & 128UL) != 0UL) {
    tmp = (*(h->access.command_completed))(h, (int )q);
    return ((u32 )tmp);
  } else {
  }
  tmp___1 = ldv__builtin_expect((h->transMethod & 4UL) == 0UL, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = (*(h->access.command_completed))(h, (int )q);
    return ((u32 )tmp___0);
  } else {
  }
  if ((*(rq->head + (unsigned long )rq->current_entry) & 1ULL) == (u64 )rq->wraparound) {
    a = (u32 )*(rq->head + (unsigned long )rq->current_entry);
    rq->current_entry = rq->current_entry + 1U;
    atomic_dec(& h->commands_outstanding);
  } else {
    a = 4294967295U;
  }
  if (rq->current_entry == (u32 )h->max_commands) {
    rq->current_entry = 0U;
    rq->wraparound = (u8 )((unsigned int )rq->wraparound ^ 1U);
  } else {
  }
  return (a);
}
}
static void set_performant_mode(struct ctlr_info *h , struct CommandList *c , int reply_queue )
{
  long tmp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp___1 = ldv__builtin_expect((h->transMethod & 4UL) != 0UL, 1L);
  if (tmp___1 != 0L) {
    c->busaddr = (c->busaddr | (*(h->blockFetchTable + (unsigned long )c->Header.SGList) << 1)) | 1U;
    tmp = ldv__builtin_expect(h->msix_vector == 0U, 0L);
    if (tmp != 0L) {
      return;
    } else {
    }
    tmp___0 = ldv__builtin_expect(reply_queue == -1, 1L);
    if (tmp___0 != 0L) {
      __vpp_verify = (void const *)0;
      switch (4UL) {
      case 1UL: ;
      switch (4UL) {
      case 1UL:
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
      goto ldv_40342;
      case 2UL:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_40342;
      case 4UL:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_40342;
      case 8UL:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_40342;
      default:
      __bad_percpu_size();
      }
      ldv_40342:
      pscr_ret__ = pfo_ret__;
      goto ldv_40348;
      case 2UL: ;
      switch (4UL) {
      case 1UL:
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_40352;
      case 2UL:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_40352;
      case 4UL:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_40352;
      case 8UL:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_40352;
      default:
      __bad_percpu_size();
      }
      ldv_40352:
      pscr_ret__ = pfo_ret_____0;
      goto ldv_40348;
      case 4UL: ;
      switch (4UL) {
      case 1UL:
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_40361;
      case 2UL:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_40361;
      case 4UL:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_40361;
      case 8UL:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_40361;
      default:
      __bad_percpu_size();
      }
      ldv_40361:
      pscr_ret__ = pfo_ret_____1;
      goto ldv_40348;
      case 8UL: ;
      switch (4UL) {
      case 1UL:
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_40370;
      case 2UL:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_40370;
      case 4UL:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_40370;
      case 8UL:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_40370;
      default:
      __bad_percpu_size();
      }
      ldv_40370:
      pscr_ret__ = pfo_ret_____2;
      goto ldv_40348;
      default:
      __bad_size_call_parameter();
      goto ldv_40348;
      }
      ldv_40348:
      c->Header.ReplyQueue = (u8 )(pscr_ret__ % (int )h->nreply_queues);
    } else {
      c->Header.ReplyQueue = (u8 )(reply_queue % (int )h->nreply_queues);
    }
  } else {
  }
  return;
}
}
static void set_ioaccel1_performant_mode(struct ctlr_info *h , struct CommandList *c ,
                                         int reply_queue )
{
  struct io_accel1_cmd *cp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  long tmp ;
  {
  cp = h->ioaccel_cmd_pool + (unsigned long )c->cmdindex;
  tmp = ldv__builtin_expect(reply_queue == -1, 1L);
  if (tmp != 0L) {
    __vpp_verify = (void const *)0;
    switch (4UL) {
    case 1UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_40389;
    case 2UL:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_40389;
    case 4UL:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_40389;
    case 8UL:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_40389;
    default:
    __bad_percpu_size();
    }
    ldv_40389:
    pscr_ret__ = pfo_ret__;
    goto ldv_40395;
    case 2UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_40399;
    case 2UL:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_40399;
    case 4UL:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_40399;
    case 8UL:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_40399;
    default:
    __bad_percpu_size();
    }
    ldv_40399:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_40395;
    case 4UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_40408;
    case 2UL:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_40408;
    case 4UL:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_40408;
    case 8UL:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_40408;
    default:
    __bad_percpu_size();
    }
    ldv_40408:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_40395;
    case 8UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_40417;
    case 2UL:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_40417;
    case 4UL:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_40417;
    case 8UL:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_40417;
    default:
    __bad_percpu_size();
    }
    ldv_40417:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_40395;
    default:
    __bad_size_call_parameter();
    goto ldv_40395;
    }
    ldv_40395:
    cp->ReplyQueue = (u8 )(pscr_ret__ % (int )h->nreply_queues);
  } else {
    cp->ReplyQueue = (u8 )(reply_queue % (int )h->nreply_queues);
  }
  c->busaddr = (c->busaddr | (*(h->ioaccel1_blockFetchTable + (unsigned long )c->Header.SGList) << 1)) | 97U;
  return;
}
}
static void set_ioaccel2_tmf_performant_mode(struct ctlr_info *h , struct CommandList *c ,
                                             int reply_queue )
{
  struct hpsa_tmf_struct *cp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  long tmp ;
  {
  cp = (struct hpsa_tmf_struct *)h->ioaccel2_cmd_pool + (unsigned long )c->cmdindex;
  tmp = ldv__builtin_expect(reply_queue == -1, 1L);
  if (tmp != 0L) {
    __vpp_verify = (void const *)0;
    switch (4UL) {
    case 1UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_40436;
    case 2UL:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_40436;
    case 4UL:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_40436;
    case 8UL:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_40436;
    default:
    __bad_percpu_size();
    }
    ldv_40436:
    pscr_ret__ = pfo_ret__;
    goto ldv_40442;
    case 2UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_40446;
    case 2UL:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_40446;
    case 4UL:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_40446;
    case 8UL:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_40446;
    default:
    __bad_percpu_size();
    }
    ldv_40446:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_40442;
    case 4UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_40455;
    case 2UL:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_40455;
    case 4UL:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_40455;
    case 8UL:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_40455;
    default:
    __bad_percpu_size();
    }
    ldv_40455:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_40442;
    case 8UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_40464;
    case 2UL:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_40464;
    case 4UL:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_40464;
    case 8UL:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_40464;
    default:
    __bad_percpu_size();
    }
    ldv_40464:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_40442;
    default:
    __bad_size_call_parameter();
    goto ldv_40442;
    }
    ldv_40442:
    cp->reply_queue = (u8 )(pscr_ret__ % (int )h->nreply_queues);
  } else {
    cp->reply_queue = (u8 )(reply_queue % (int )h->nreply_queues);
  }
  c->busaddr = c->busaddr | *(h->ioaccel2_blockFetchTable);
  return;
}
}
static void set_ioaccel2_performant_mode(struct ctlr_info *h , struct CommandList *c ,
                                         int reply_queue )
{
  struct io_accel2_cmd *cp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  long tmp ;
  {
  cp = h->ioaccel2_cmd_pool + (unsigned long )c->cmdindex;
  tmp = ldv__builtin_expect(reply_queue == -1, 1L);
  if (tmp != 0L) {
    __vpp_verify = (void const *)0;
    switch (4UL) {
    case 1UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_40483;
    case 2UL:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_40483;
    case 4UL:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_40483;
    case 8UL:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_40483;
    default:
    __bad_percpu_size();
    }
    ldv_40483:
    pscr_ret__ = pfo_ret__;
    goto ldv_40489;
    case 2UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_40493;
    case 2UL:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_40493;
    case 4UL:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_40493;
    case 8UL:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_40493;
    default:
    __bad_percpu_size();
    }
    ldv_40493:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_40489;
    case 4UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_40502;
    case 2UL:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_40502;
    case 4UL:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_40502;
    case 8UL:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_40502;
    default:
    __bad_percpu_size();
    }
    ldv_40502:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_40489;
    case 8UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_40511;
    case 2UL:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_40511;
    case 4UL:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_40511;
    case 8UL:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_40511;
    default:
    __bad_percpu_size();
    }
    ldv_40511:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_40489;
    default:
    __bad_size_call_parameter();
    goto ldv_40489;
    }
    ldv_40489:
    cp->reply_queue = (u8 )(pscr_ret__ % (int )h->nreply_queues);
  } else {
    cp->reply_queue = (u8 )(reply_queue % (int )h->nreply_queues);
  }
  c->busaddr = c->busaddr | *(h->ioaccel2_blockFetchTable + (unsigned long )cp->sg_count);
  return;
}
}
static int is_firmware_flash_cmd(u8 *cdb )
{
  {
  return ((unsigned int )*cdb == 39U && (unsigned int )*(cdb + 6UL) == 247U);
}
}
static void dial_down_lockup_detection_during_fw_flash(struct ctlr_info *h , struct CommandList *c )
{
  int tmp ;
  {
  tmp = is_firmware_flash_cmd((u8 *)(& c->Request.CDB));
  if (tmp == 0) {
    return;
  } else {
  }
  atomic_inc(& h->firmware_flash_in_progress);
  h->heartbeat_sample_interval = 60000U;
  return;
}
}
static void dial_up_lockup_detection_on_fw_flash_complete(struct ctlr_info *h , struct CommandList *c )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = is_firmware_flash_cmd((u8 *)(& c->Request.CDB));
  if (tmp != 0) {
    tmp___0 = atomic_dec_and_test(& h->firmware_flash_in_progress);
    if (tmp___0 != 0) {
      h->heartbeat_sample_interval = 7500U;
    } else {
    }
  } else {
  }
  return;
}
}
static void __enqueue_cmd_and_start_io(struct ctlr_info *h , struct CommandList *c ,
                                       int reply_queue )
{
  {
  dial_down_lockup_detection_during_fw_flash(h, c);
  atomic_inc(& h->commands_outstanding);
  switch (c->cmd_type) {
  case 4:
  set_ioaccel1_performant_mode(h, c, reply_queue);
  writel(c->busaddr, (void volatile *)h->vaddr + 64U);
  goto ldv_40536;
  case 5:
  set_ioaccel2_performant_mode(h, c, reply_queue);
  writel(c->busaddr, (void volatile *)h->vaddr + 72U);
  goto ldv_40536;
  case 6:
  set_ioaccel2_tmf_performant_mode(h, c, reply_queue);
  writel(c->busaddr, (void volatile *)h->vaddr + 72U);
  goto ldv_40536;
  default:
  set_performant_mode(h, c, reply_queue);
  (*(h->access.submit_command))(h, c);
  }
  ldv_40536: ;
  return;
}
}
static void enqueue_cmd_and_start_io(struct ctlr_info *h , struct CommandList *c )
{
  bool tmp ;
  long tmp___0 ;
  {
  tmp = hpsa_is_pending_event(c);
  tmp___0 = ldv__builtin_expect((long )tmp, 0L);
  if (tmp___0 != 0L) {
    return;
  } else {
  }
  __enqueue_cmd_and_start_io(h, c, -1);
  return;
}
}
__inline static int is_hba_lunid(unsigned char *scsi3addr )
{
  int tmp ;
  {
  tmp = memcmp((void const *)scsi3addr, (void const *)"", 8UL);
  return (tmp == 0);
}
}
__inline static int is_scsi_rev_5(struct ctlr_info *h )
{
  {
  if ((unsigned long )h->hba_inquiry_data == (unsigned long )((unsigned char *)0U)) {
    return (0);
  } else {
  }
  if (((int )*(h->hba_inquiry_data + 2UL) & 7) == 5) {
    return (1);
  } else {
  }
  return (0);
}
}
static int hpsa_find_target_lun(struct ctlr_info *h , unsigned char *scsi3addr , int bus ,
                                int *target , int *lun )
{
  int i ;
  int found ;
  unsigned long lun_taken[33U] ;
  unsigned long tmp ;
  {
  found = 0;
  bitmap_zero((unsigned long *)(& lun_taken), 2081U);
  i = 0;
  goto ldv_40561;
  ldv_40560: ;
  if ((h->dev[i])->bus == bus && (h->dev[i])->target != -1) {
    __set_bit((long )(h->dev[i])->target, (unsigned long volatile *)(& lun_taken));
  } else {
  }
  i = i + 1;
  ldv_40561: ;
  if (h->ndevices > i) {
    goto ldv_40560;
  } else {
  }
  tmp = find_first_zero_bit((unsigned long const *)(& lun_taken), 2081UL);
  i = (int )tmp;
  if (i <= 2080) {
    *target = i;
    *lun = 0;
    found = 1;
  } else {
  }
  return (found == 0);
}
}
__inline static void hpsa_show_dev_msg(char const *level , struct ctlr_info *h ,
                                       struct hpsa_scsi_dev_t *dev , char *description )
{
  char const *tmp ;
  {
  tmp = scsi_device_type((unsigned int )dev->devtype);
  dev_printk(level, (struct device const *)(& (h->pdev)->dev), "scsi %d:%d:%d:%d: %s %s %.8s %.16s RAID-%s SSDSmartPathCap%c En%c Exp=%d\n",
             (h->scsi_host)->host_no, dev->bus, dev->target, dev->lun, description,
             tmp, (unsigned char *)(& dev->vendor), (unsigned char *)(& dev->model),
             (unsigned int )dev->raid_level <= 7U ? raid_label[(int )dev->raid_level] : (char const * )"RAID-?",
             dev->offload_config != 0 ? 43 : 45, dev->offload_enabled != 0 ? 43 : 45,
             (int )dev->expose_state);
  return;
}
}
static int hpsa_scsi_add_entry(struct ctlr_info *h , int hostno , struct hpsa_scsi_dev_t *device ,
                               struct hpsa_scsi_dev_t **added , int *nadded )
{
  int n ;
  int i ;
  unsigned char addr1[8U] ;
  unsigned char addr2[8U] ;
  struct hpsa_scsi_dev_t *sd ;
  int tmp ;
  int tmp___0 ;
  {
  n = h->ndevices;
  if (n > 2080) {
    dev_err((struct device const *)(& (h->pdev)->dev), "too many devices, some will be inaccessible.\n");
    return (-1);
  } else {
  }
  if (device->lun != -1) {
    goto lun_assigned;
  } else {
  }
  if ((unsigned int )device->scsi3addr[4] == 0U) {
    tmp = hpsa_find_target_lun(h, (unsigned char *)(& device->scsi3addr), device->bus,
                               & device->target, & device->lun);
    if (tmp != 0) {
      return (-1);
    } else {
    }
    goto lun_assigned;
  } else {
  }
  memcpy((void *)(& addr1), (void const *)(& device->scsi3addr), 8UL);
  addr1[4] = 0U;
  i = 0;
  goto ldv_40586;
  ldv_40585:
  sd = h->dev[i];
  memcpy((void *)(& addr2), (void const *)(& sd->scsi3addr), 8UL);
  addr2[4] = 0U;
  tmp___0 = memcmp((void const *)(& addr1), (void const *)(& addr2), 8UL);
  if (tmp___0 == 0) {
    device->bus = sd->bus;
    device->target = sd->target;
    device->lun = (int )device->scsi3addr[4];
    goto ldv_40584;
  } else {
  }
  i = i + 1;
  ldv_40586: ;
  if (i < n) {
    goto ldv_40585;
  } else {
  }
  ldv_40584: ;
  if (device->lun == -1) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "physical device with no LUN=0, suspect firmware bug or unsupported hardware configuration.\n");
    return (-1);
  } else {
  }
  lun_assigned:
  h->dev[n] = device;
  h->ndevices = h->ndevices + 1;
  *(added + (unsigned long )*nadded) = device;
  *nadded = *nadded + 1;
  hpsa_show_dev_msg("\016", h, device, ((int )device->expose_state & 3) != 0 ? (char *)"added" : (char *)"masked");
  device->offload_to_be_enabled = device->offload_enabled;
  device->offload_enabled = 0;
  return (0);
}
}
static void hpsa_scsi_update_entry(struct ctlr_info *h , int hostno , int entry ,
                                   struct hpsa_scsi_dev_t *new_entry )
{
  int offload_enabled ;
  long tmp ;
  {
  tmp = ldv__builtin_expect((long )(entry < 0 || entry > 2080), 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (1130), "i" (12UL));
    ldv_40594: ;
    goto ldv_40594;
  } else {
  }
  (h->dev[entry])->raid_level = new_entry->raid_level;
  if (new_entry->offload_config != 0 && new_entry->offload_enabled != 0) {
    (h->dev[entry])->raid_map = new_entry->raid_map;
    (h->dev[entry])->ioaccel_handle = new_entry->ioaccel_handle;
  } else {
  }
  if (new_entry->hba_ioaccel_enabled != 0) {
    (h->dev[entry])->ioaccel_handle = new_entry->ioaccel_handle;
    __asm__ volatile ("sfence": : : "memory");
  } else {
  }
  (h->dev[entry])->hba_ioaccel_enabled = new_entry->hba_ioaccel_enabled;
  (h->dev[entry])->offload_config = new_entry->offload_config;
  (h->dev[entry])->offload_to_mirror = new_entry->offload_to_mirror;
  (h->dev[entry])->queue_depth = new_entry->queue_depth;
  (h->dev[entry])->offload_to_be_enabled = new_entry->offload_enabled;
  if (new_entry->offload_enabled == 0) {
    (h->dev[entry])->offload_enabled = 0;
  } else {
  }
  offload_enabled = (h->dev[entry])->offload_enabled;
  (h->dev[entry])->offload_enabled = (h->dev[entry])->offload_to_be_enabled;
  hpsa_show_dev_msg("\016", h, h->dev[entry], (char *)"updated");
  (h->dev[entry])->offload_enabled = offload_enabled;
  return;
}
}
static void hpsa_scsi_replace_entry(struct ctlr_info *h , int hostno , int entry ,
                                    struct hpsa_scsi_dev_t *new_entry , struct hpsa_scsi_dev_t **added ,
                                    int *nadded , struct hpsa_scsi_dev_t **removed ,
                                    int *nremoved )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((long )(entry < 0 || entry > 2080), 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (1179), "i" (12UL));
    ldv_40605: ;
    goto ldv_40605;
  } else {
  }
  *(removed + (unsigned long )*nremoved) = h->dev[entry];
  *nremoved = *nremoved + 1;
  if (new_entry->target == -1) {
    new_entry->target = (h->dev[entry])->target;
    new_entry->lun = (h->dev[entry])->lun;
  } else {
  }
  h->dev[entry] = new_entry;
  *(added + (unsigned long )*nadded) = new_entry;
  *nadded = *nadded + 1;
  hpsa_show_dev_msg("\016", h, new_entry, (char *)"replaced");
  new_entry->offload_to_be_enabled = new_entry->offload_enabled;
  new_entry->offload_enabled = 0;
  return;
}
}
static void hpsa_scsi_remove_entry(struct ctlr_info *h , int hostno , int entry ,
                                   struct hpsa_scsi_dev_t **removed , int *nremoved )
{
  int i ;
  struct hpsa_scsi_dev_t *sd ;
  long tmp ;
  {
  tmp = ldv__builtin_expect((long )(entry < 0 || entry > 2080), 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (1208), "i" (12UL));
    ldv_40615: ;
    goto ldv_40615;
  } else {
  }
  sd = h->dev[entry];
  *(removed + (unsigned long )*nremoved) = h->dev[entry];
  *nremoved = *nremoved + 1;
  i = entry;
  goto ldv_40617;
  ldv_40616:
  h->dev[i] = h->dev[i + 1];
  i = i + 1;
  ldv_40617: ;
  if (h->ndevices + -1 > i) {
    goto ldv_40616;
  } else {
  }
  h->ndevices = h->ndevices - 1;
  hpsa_show_dev_msg("\016", h, sd, (char *)"removed");
  return;
}
}
static void fixup_botched_add(struct ctlr_info *h , struct hpsa_scsi_dev_t *added )
{
  unsigned long flags ;
  int i ;
  int j ;
  {
  ldv_spin_lock();
  i = 0;
  goto ldv_40631;
  ldv_40630: ;
  if ((unsigned long )h->dev[i] == (unsigned long )added) {
    j = i;
    goto ldv_40627;
    ldv_40626:
    h->dev[j] = h->dev[j + 1];
    j = j + 1;
    ldv_40627: ;
    if (h->ndevices + -1 > j) {
      goto ldv_40626;
    } else {
    }
    h->ndevices = h->ndevices - 1;
    goto ldv_40629;
  } else {
  }
  i = i + 1;
  ldv_40631: ;
  if (h->ndevices > i) {
    goto ldv_40630;
  } else {
  }
  ldv_40629:
  spin_unlock_irqrestore(& h->lock, flags);
  kfree((void const *)added);
  return;
}
}
__inline static int device_is_the_same(struct hpsa_scsi_dev_t *dev1 , struct hpsa_scsi_dev_t *dev2 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = memcmp((void const *)(& dev1->scsi3addr), (void const *)(& dev2->scsi3addr),
               8UL);
  if (tmp != 0) {
    return (0);
  } else {
  }
  tmp___0 = memcmp((void const *)(& dev1->device_id), (void const *)(& dev2->device_id),
                   16UL);
  if (tmp___0 != 0) {
    return (0);
  } else {
  }
  tmp___1 = memcmp((void const *)(& dev1->model), (void const *)(& dev2->model),
                   16UL);
  if (tmp___1 != 0) {
    return (0);
  } else {
  }
  tmp___2 = memcmp((void const *)(& dev1->vendor), (void const *)(& dev2->vendor),
                   8UL);
  if (tmp___2 != 0) {
    return (0);
  } else {
  }
  if (dev1->devtype != dev2->devtype) {
    return (0);
  } else {
  }
  if (dev1->bus != dev2->bus) {
    return (0);
  } else {
  }
  return (1);
}
}
__inline static int device_updated(struct hpsa_scsi_dev_t *dev1 , struct hpsa_scsi_dev_t *dev2 )
{
  {
  if ((int )dev1->raid_level != (int )dev2->raid_level) {
    return (1);
  } else {
  }
  if (dev1->offload_config != dev2->offload_config) {
    return (1);
  } else {
  }
  if (dev1->offload_enabled != dev2->offload_enabled) {
    return (1);
  } else {
  }
  if ((int )dev1->queue_depth != (int )dev2->queue_depth) {
    return (1);
  } else {
  }
  return (0);
}
}
static int hpsa_scsi_find_entry(struct hpsa_scsi_dev_t *needle , struct hpsa_scsi_dev_t **haystack ,
                                int haystack_size , int *index )
{
  int i ;
  int tmp ;
  int tmp___0 ;
  {
  i = 0;
  goto ldv_40649;
  ldv_40648: ;
  if ((unsigned long )*(haystack + (unsigned long )i) == (unsigned long )((struct hpsa_scsi_dev_t *)0)) {
    goto ldv_40647;
  } else {
  }
  if ((((((((int )needle->scsi3addr[7] == (int )(*(haystack + (unsigned long )i))->scsi3addr[7] && (int )needle->scsi3addr[6] == (int )(*(haystack + (unsigned long )i))->scsi3addr[6]) && (int )needle->scsi3addr[5] == (int )(*(haystack + (unsigned long )i))->scsi3addr[5]) && (int )needle->scsi3addr[4] == (int )(*(haystack + (unsigned long )i))->scsi3addr[4]) && (int )needle->scsi3addr[3] == (int )(*(haystack + (unsigned long )i))->scsi3addr[3]) && (int )needle->scsi3addr[2] == (int )(*(haystack + (unsigned long )i))->scsi3addr[2]) && (int )needle->scsi3addr[1] == (int )(*(haystack + (unsigned long )i))->scsi3addr[1]) && (int )needle->scsi3addr[0] == (int )(*(haystack + (unsigned long )i))->scsi3addr[0]) {
    *index = i;
    tmp___0 = device_is_the_same(needle, *(haystack + (unsigned long )i));
    if (tmp___0 != 0) {
      tmp = device_updated(needle, *(haystack + (unsigned long )i));
      if (tmp != 0) {
        return (3);
      } else {
      }
      return (2);
    } else {
      if ((unsigned int )needle->volume_offline != 0U) {
        return (0);
      } else {
      }
      return (1);
    }
  } else {
  }
  ldv_40647:
  i = i + 1;
  ldv_40649: ;
  if (i < haystack_size) {
    goto ldv_40648;
  } else {
  }
  *index = -1;
  return (0);
}
}
static void hpsa_monitor_offline_device(struct ctlr_info *h , unsigned char *scsi3addr )
{
  struct offline_device_entry *device ;
  unsigned long flags ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  void *tmp___0 ;
  {
  ldv_spin_lock();
  __mptr = (struct list_head const *)h->offline_device_list.next;
  device = (struct offline_device_entry *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_40662;
  ldv_40661:
  tmp = memcmp((void const *)(& device->scsi3addr), (void const *)scsi3addr, 8UL);
  if (tmp == 0) {
    spin_unlock_irqrestore(& h->offline_device_lock, flags);
    return;
  } else {
  }
  __mptr___0 = (struct list_head const *)device->offline_list.next;
  device = (struct offline_device_entry *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_40662: ;
  if ((unsigned long )(& device->offline_list) != (unsigned long )(& h->offline_device_list)) {
    goto ldv_40661;
  } else {
  }
  spin_unlock_irqrestore(& h->offline_device_lock, flags);
  tmp___0 = kmalloc(24UL, 208U);
  device = (struct offline_device_entry *)tmp___0;
  if ((unsigned long )device == (unsigned long )((struct offline_device_entry *)0)) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "out of memory in %s\n",
             "hpsa_monitor_offline_device");
    return;
  } else {
  }
  memcpy((void *)(& device->scsi3addr), (void const *)scsi3addr, 8UL);
  ldv_spin_lock();
  list_add_tail(& device->offline_list, & h->offline_device_list);
  spin_unlock_irqrestore(& h->offline_device_lock, flags);
  return;
}
}
static void hpsa_show_volume_status(struct ctlr_info *h , struct hpsa_scsi_dev_t *sd )
{
  {
  if ((unsigned int )sd->volume_offline == 255U) {
    _dev_info((struct device const *)(& (h->pdev)->dev), "C%d:B%d:T%d:L%d Volume status is not available through vital product data pages.\n",
              (h->scsi_host)->host_no, sd->bus, sd->target, sd->lun);
  } else {
  }
  switch ((int )sd->volume_offline) {
  case 0: ;
  goto ldv_40670;
  case 15:
  _dev_info((struct device const *)(& (h->pdev)->dev), "C%d:B%d:T%d:L%d Volume is undergoing background erase process.\n",
            (h->scsi_host)->host_no, sd->bus, sd->target, sd->lun);
  goto ldv_40670;
  case 18:
  _dev_info((struct device const *)(& (h->pdev)->dev), "C%d:B%d:T%d:L%d Volume is undergoing rapid parity initialization process.\n",
            (h->scsi_host)->host_no, sd->bus, sd->target, sd->lun);
  goto ldv_40670;
  case 19:
  _dev_info((struct device const *)(& (h->pdev)->dev), "C%d:B%d:T%d:L%d Volume is queued for rapid parity initialization process.\n",
            (h->scsi_host)->host_no, sd->bus, sd->target, sd->lun);
  goto ldv_40670;
  case 20:
  _dev_info((struct device const *)(& (h->pdev)->dev), "C%d:B%d:T%d:L%d Volume is encrypted and cannot be accessed because key is not present.\n",
            (h->scsi_host)->host_no, sd->bus, sd->target, sd->lun);
  goto ldv_40670;
  case 21:
  _dev_info((struct device const *)(& (h->pdev)->dev), "C%d:B%d:T%d:L%d Volume is not encrypted and cannot be accessed because controller is in encryption-only mode.\n",
            (h->scsi_host)->host_no, sd->bus, sd->target, sd->lun);
  goto ldv_40670;
  case 22:
  _dev_info((struct device const *)(& (h->pdev)->dev), "C%d:B%d:T%d:L%d Volume is undergoing encryption process.\n",
            (h->scsi_host)->host_no, sd->bus, sd->target, sd->lun);
  goto ldv_40670;
  case 23:
  _dev_info((struct device const *)(& (h->pdev)->dev), "C%d:B%d:T%d:L%d Volume is undergoing encryption re-keying process.\n",
            (h->scsi_host)->host_no, sd->bus, sd->target, sd->lun);
  goto ldv_40670;
  case 24:
  _dev_info((struct device const *)(& (h->pdev)->dev), "C%d:B%d:T%d:L%d Volume is encrypted and cannot be accessed because controller does not have encryption enabled.\n",
            (h->scsi_host)->host_no, sd->bus, sd->target, sd->lun);
  goto ldv_40670;
  case 25:
  _dev_info((struct device const *)(& (h->pdev)->dev), "C%d:B%d:T%d:L%d Volume is pending migration to encrypted state, but process has not started.\n",
            (h->scsi_host)->host_no, sd->bus, sd->target, sd->lun);
  goto ldv_40670;
  case 26:
  _dev_info((struct device const *)(& (h->pdev)->dev), "C%d:B%d:T%d:L%d Volume is encrypted and is pending encryption rekeying.\n",
            (h->scsi_host)->host_no, sd->bus, sd->target, sd->lun);
  goto ldv_40670;
  }
  ldv_40670: ;
  return;
}
}
static void hpsa_figure_phys_disk_ptrs(struct ctlr_info *h , struct hpsa_scsi_dev_t **dev ,
                                       int ndevices , struct hpsa_scsi_dev_t *logical_drive )
{
  struct raid_map_data *map ;
  struct raid_map_disk_data *dd ;
  int i ;
  int j ;
  int total_disks_per_row ;
  int nraid_map_entries ;
  int nphys_disk ;
  int qdepth ;
  int tmp ;
  int _min1 ;
  int _min2 ;
  {
  map = & logical_drive->raid_map;
  dd = (struct raid_map_disk_data *)(& map->data);
  total_disks_per_row = (int )map->data_disks_per_row + (int )map->metadata_disks_per_row;
  nraid_map_entries = ((int )map->row_cnt * (int )map->layout_map_count) * total_disks_per_row;
  nphys_disk = (int )map->layout_map_count * total_disks_per_row;
  if (nraid_map_entries > 256) {
    nraid_map_entries = 256;
  } else {
  }
  logical_drive->nphysical_disks = nraid_map_entries;
  qdepth = 0;
  i = 0;
  goto ldv_40704;
  ldv_40703:
  logical_drive->phys_disk[i] = (struct hpsa_scsi_dev_t *)0;
  if (logical_drive->offload_config == 0) {
    goto ldv_40695;
  } else {
  }
  j = 0;
  goto ldv_40702;
  ldv_40701: ;
  if ((*(dev + (unsigned long )j))->devtype != 0) {
    goto ldv_40696;
  } else {
  }
  tmp = is_logical_dev_addr_mode((unsigned char *)(& (*(dev + (unsigned long )j))->scsi3addr));
  if (tmp != 0) {
    goto ldv_40696;
  } else {
  }
  if ((*(dev + (unsigned long )j))->ioaccel_handle != (dd + (unsigned long )i)->ioaccel_handle) {
    goto ldv_40696;
  } else {
  }
  logical_drive->phys_disk[i] = *(dev + (unsigned long )j);
  if (i < nphys_disk) {
    _min1 = h->nr_cmds;
    _min2 = (int )(logical_drive->phys_disk[i])->queue_depth + qdepth;
    qdepth = _min1 < _min2 ? _min1 : _min2;
  } else {
  }
  goto ldv_40700;
  ldv_40696:
  j = j + 1;
  ldv_40702: ;
  if (j < ndevices) {
    goto ldv_40701;
  } else {
  }
  ldv_40700: ;
  if ((unsigned long )logical_drive->phys_disk[i] == (unsigned long )((struct hpsa_scsi_dev_t *)0)) {
    logical_drive->offload_enabled = 0;
    logical_drive->offload_to_be_enabled = 0;
    logical_drive->queue_depth = 8U;
  } else {
  }
  ldv_40695:
  i = i + 1;
  ldv_40704: ;
  if (i < nraid_map_entries) {
    goto ldv_40703;
  } else {
  }
  if (nraid_map_entries != 0) {
    logical_drive->queue_depth = (u16 )qdepth;
  } else {
    logical_drive->queue_depth = (u16 )h->nr_cmds;
  }
  return;
}
}
static void hpsa_update_log_drive_phys_drive_ptrs(struct ctlr_info *h , struct hpsa_scsi_dev_t **dev ,
                                                  int ndevices )
{
  int i ;
  int tmp ;
  {
  i = 0;
  goto ldv_40714;
  ldv_40713: ;
  if ((*(dev + (unsigned long )i))->devtype != 0) {
    goto ldv_40712;
  } else {
  }
  tmp = is_logical_dev_addr_mode((unsigned char *)(& (*(dev + (unsigned long )i))->scsi3addr));
  if (tmp == 0) {
    goto ldv_40712;
  } else {
  }
  if ((*(dev + (unsigned long )i))->offload_enabled != 0) {
    goto ldv_40712;
  } else {
  }
  hpsa_figure_phys_disk_ptrs(h, dev, ndevices, *(dev + (unsigned long )i));
  ldv_40712:
  i = i + 1;
  ldv_40714: ;
  if (i < ndevices) {
    goto ldv_40713;
  } else {
  }
  return;
}
}
static void adjust_hpsa_scsi_table(struct ctlr_info *h , int hostno , struct hpsa_scsi_dev_t **sd ,
                                   int nsds )
{
  int i ;
  int entry ;
  int device_change ;
  int changes ;
  struct hpsa_scsi_dev_t *csd ;
  unsigned long flags ;
  struct hpsa_scsi_dev_t **added ;
  struct hpsa_scsi_dev_t **removed ;
  int nadded ;
  int nremoved ;
  struct Scsi_Host *sh ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  struct scsi_device *sdev ;
  struct scsi_device *tmp___2 ;
  int tmp___3 ;
  {
  changes = 0;
  sh = (struct Scsi_Host *)0;
  tmp = kmalloc(16648UL, 208U);
  added = (struct hpsa_scsi_dev_t **)tmp;
  tmp___0 = kmalloc(16648UL, 208U);
  removed = (struct hpsa_scsi_dev_t **)tmp___0;
  if ((unsigned long )added == (unsigned long )((struct hpsa_scsi_dev_t **)0) || (unsigned long )removed == (unsigned long )((struct hpsa_scsi_dev_t **)0)) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "out of memory in adjust_hpsa_scsi_table\n");
    goto free_and_out;
  } else {
  }
  ldv_spin_lock();
  i = 0;
  nremoved = 0;
  nadded = 0;
  goto ldv_40734;
  ldv_40735:
  csd = h->dev[i];
  device_change = hpsa_scsi_find_entry(csd, sd, nsds, & entry);
  if (device_change == 0) {
    changes = changes + 1;
    hpsa_scsi_remove_entry(h, hostno, i, removed, & nremoved);
    goto ldv_40734;
  } else
  if (device_change == 1) {
    changes = changes + 1;
    hpsa_scsi_replace_entry(h, hostno, i, *(sd + (unsigned long )entry), added, & nadded,
                            removed, & nremoved);
    *(sd + (unsigned long )entry) = (struct hpsa_scsi_dev_t *)0;
  } else
  if (device_change == 3) {
    hpsa_scsi_update_entry(h, hostno, i, *(sd + (unsigned long )entry));
  } else {
  }
  i = i + 1;
  ldv_40734: ;
  if (h->ndevices > i) {
    goto ldv_40735;
  } else {
  }
  i = 0;
  goto ldv_40740;
  ldv_40739: ;
  if ((unsigned long )*(sd + (unsigned long )i) == (unsigned long )((struct hpsa_scsi_dev_t *)0)) {
    goto ldv_40737;
  } else {
  }
  if ((unsigned int )(*(sd + (unsigned long )i))->volume_offline != 0U) {
    hpsa_show_volume_status(h, *(sd + (unsigned long )i));
    hpsa_show_dev_msg("\016", h, *(sd + (unsigned long )i), (char *)"offline");
    goto ldv_40737;
  } else {
  }
  device_change = hpsa_scsi_find_entry(*(sd + (unsigned long )i), (struct hpsa_scsi_dev_t **)(& h->dev),
                                       h->ndevices, & entry);
  if (device_change == 0) {
    changes = changes + 1;
    tmp___1 = hpsa_scsi_add_entry(h, hostno, *(sd + (unsigned long )i), added, & nadded);
    if (tmp___1 != 0) {
      goto ldv_40738;
    } else {
    }
    *(sd + (unsigned long )i) = (struct hpsa_scsi_dev_t *)0;
  } else
  if (device_change == 1) {
    changes = changes + 1;
    dev_warn((struct device const *)(& (h->pdev)->dev), "device unexpectedly changed.\n");
  } else {
  }
  ldv_40737:
  i = i + 1;
  ldv_40740: ;
  if (i < nsds) {
    goto ldv_40739;
  } else {
  }
  ldv_40738:
  hpsa_update_log_drive_phys_drive_ptrs(h, (struct hpsa_scsi_dev_t **)(& h->dev),
                                        h->ndevices);
  i = 0;
  goto ldv_40742;
  ldv_40741:
  (h->dev[i])->offload_enabled = (h->dev[i])->offload_to_be_enabled;
  i = i + 1;
  ldv_40742: ;
  if (h->ndevices > i) {
    goto ldv_40741;
  } else {
  }
  spin_unlock_irqrestore(& h->devlock, flags);
  i = 0;
  goto ldv_40746;
  ldv_40745: ;
  if ((unsigned long )*(sd + (unsigned long )i) == (unsigned long )((struct hpsa_scsi_dev_t *)0)) {
    goto ldv_40744;
  } else {
  }
  if ((unsigned int )(*(sd + (unsigned long )i))->volume_offline != 0U) {
    hpsa_monitor_offline_device(h, (unsigned char *)(& (*(sd + (unsigned long )i))->scsi3addr));
  } else {
  }
  ldv_40744:
  i = i + 1;
  ldv_40746: ;
  if (i < nsds) {
    goto ldv_40745;
  } else {
  }
  if (hostno == -1 || changes == 0) {
    goto free_and_out;
  } else {
  }
  sh = h->scsi_host;
  i = 0;
  goto ldv_40750;
  ldv_40749: ;
  if (((int )(*(removed + (unsigned long )i))->expose_state & 3) != 0) {
    tmp___2 = scsi_device_lookup(sh, (uint )(*(removed + (unsigned long )i))->bus,
                                 (uint )(*(removed + (unsigned long )i))->target,
                                 (u64 )(*(removed + (unsigned long )i))->lun);
    sdev = tmp___2;
    if ((unsigned long )sdev != (unsigned long )((struct scsi_device *)0)) {
      scsi_remove_device(sdev);
      scsi_device_put(sdev);
    } else {
      hpsa_show_dev_msg("\f", h, *(removed + (unsigned long )i), (char *)"didn\'t find device for removal.");
    }
  } else {
  }
  kfree((void const *)*(removed + (unsigned long )i));
  *(removed + (unsigned long )i) = (struct hpsa_scsi_dev_t *)0;
  i = i + 1;
  ldv_40750: ;
  if (i < nremoved) {
    goto ldv_40749;
  } else {
  }
  i = 0;
  goto ldv_40754;
  ldv_40753: ;
  if (((int )(*(added + (unsigned long )i))->expose_state & 3) == 0) {
    goto ldv_40752;
  } else {
  }
  tmp___3 = scsi_add_device(sh, (uint )(*(added + (unsigned long )i))->bus, (uint )(*(added + (unsigned long )i))->target,
                            (u64 )(*(added + (unsigned long )i))->lun);
  if (tmp___3 == 0) {
    goto ldv_40752;
  } else {
  }
  hpsa_show_dev_msg("\f", h, *(added + (unsigned long )i), (char *)"addition failed, device not added.");
  fixup_botched_add(h, *(added + (unsigned long )i));
  *(added + (unsigned long )i) = (struct hpsa_scsi_dev_t *)0;
  ldv_40752:
  i = i + 1;
  ldv_40754: ;
  if (i < nadded) {
    goto ldv_40753;
  } else {
  }
  free_and_out:
  kfree((void const *)added);
  kfree((void const *)removed);
  return;
}
}
static struct hpsa_scsi_dev_t *lookup_hpsa_scsi_dev(struct ctlr_info *h , int bus ,
                                                    int target , int lun )
{
  int i ;
  struct hpsa_scsi_dev_t *sd ;
  {
  i = 0;
  goto ldv_40765;
  ldv_40764:
  sd = h->dev[i];
  if ((sd->bus == bus && sd->target == target) && sd->lun == lun) {
    return (sd);
  } else {
  }
  i = i + 1;
  ldv_40765: ;
  if (h->ndevices > i) {
    goto ldv_40764;
  } else {
  }
  return ((struct hpsa_scsi_dev_t *)0);
}
}
static int hpsa_slave_alloc(struct scsi_device *sdev )
{
  struct hpsa_scsi_dev_t *sd ;
  unsigned long flags ;
  struct ctlr_info *h ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  long tmp___1 ;
  {
  h = sdev_to_hba(sdev);
  ldv_spin_lock();
  tmp = sdev_id(sdev);
  tmp___0 = sdev_channel(sdev);
  sd = lookup_hpsa_scsi_dev(h, (int )tmp___0, (int )tmp, (int )sdev->lun);
  tmp___1 = ldv__builtin_expect((unsigned long )sd != (unsigned long )((struct hpsa_scsi_dev_t *)0),
                             1L);
  if (tmp___1 != 0L) {
    atomic_set(& sd->ioaccel_cmds_out, 0);
    sdev->hostdata = ((int )sd->expose_state & 3) != 0 ? (void *)sd : (void *)0;
  } else {
    sdev->hostdata = (void *)0;
  }
  spin_unlock_irqrestore(& h->devlock, flags);
  return (0);
}
}
static int hpsa_slave_configure(struct scsi_device *sdev )
{
  struct hpsa_scsi_dev_t *sd ;
  int queue_depth ;
  {
  sd = (struct hpsa_scsi_dev_t *)sdev->hostdata;
  sdev->no_uld_attach = (unsigned char )((unsigned long )sd == (unsigned long )((struct hpsa_scsi_dev_t *)0) || ((int )sd->expose_state & 2) == 0);
  if ((unsigned long )sd != (unsigned long )((struct hpsa_scsi_dev_t *)0)) {
    queue_depth = (unsigned int )sd->queue_depth != 0U ? (int )sd->queue_depth : (sdev->host)->can_queue;
  } else {
    queue_depth = (sdev->host)->can_queue;
  }
  scsi_change_queue_depth(sdev, queue_depth);
  return (0);
}
}
static void hpsa_slave_destroy(struct scsi_device *sdev )
{
  {
  return;
}
}
static void hpsa_free_ioaccel2_sg_chain_blocks(struct ctlr_info *h )
{
  int i ;
  {
  if ((unsigned long )h->ioaccel2_cmd_sg_list == (unsigned long )((struct ioaccel2_sg_element **)0)) {
    return;
  } else {
  }
  i = 0;
  goto ldv_40786;
  ldv_40785:
  kfree((void const *)*(h->ioaccel2_cmd_sg_list + (unsigned long )i));
  *(h->ioaccel2_cmd_sg_list + (unsigned long )i) = (struct ioaccel2_sg_element *)0;
  i = i + 1;
  ldv_40786: ;
  if (h->nr_cmds > i) {
    goto ldv_40785;
  } else {
  }
  kfree((void const *)h->ioaccel2_cmd_sg_list);
  h->ioaccel2_cmd_sg_list = (struct ioaccel2_sg_element **)0;
  return;
}
}
static int hpsa_allocate_ioaccel2_sg_chain_blocks(struct ctlr_info *h )
{
  int i ;
  void *tmp ;
  void *tmp___0 ;
  {
  if (h->chainsize <= 0) {
    return (0);
  } else {
  }
  tmp = kmalloc((unsigned long )h->nr_cmds * 8UL, 208U);
  h->ioaccel2_cmd_sg_list = (struct ioaccel2_sg_element **)tmp;
  if ((unsigned long )h->ioaccel2_cmd_sg_list == (unsigned long )((struct ioaccel2_sg_element **)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_40794;
  ldv_40793:
  tmp___0 = kmalloc((unsigned long )h->maxsgentries * 16UL, 208U);
  *(h->ioaccel2_cmd_sg_list + (unsigned long )i) = (struct ioaccel2_sg_element *)tmp___0;
  if ((unsigned long )*(h->ioaccel2_cmd_sg_list + (unsigned long )i) == (unsigned long )((struct ioaccel2_sg_element *)0)) {
    goto clean;
  } else {
  }
  i = i + 1;
  ldv_40794: ;
  if (h->nr_cmds > i) {
    goto ldv_40793;
  } else {
  }
  return (0);
  clean:
  hpsa_free_ioaccel2_sg_chain_blocks(h);
  return (-12);
}
}
static void hpsa_free_sg_chain_blocks(struct ctlr_info *h )
{
  int i ;
  {
  if ((unsigned long )h->cmd_sg_list == (unsigned long )((struct SGDescriptor **)0)) {
    return;
  } else {
  }
  i = 0;
  goto ldv_40801;
  ldv_40800:
  kfree((void const *)*(h->cmd_sg_list + (unsigned long )i));
  *(h->cmd_sg_list + (unsigned long )i) = (struct SGDescriptor *)0;
  i = i + 1;
  ldv_40801: ;
  if (h->nr_cmds > i) {
    goto ldv_40800;
  } else {
  }
  kfree((void const *)h->cmd_sg_list);
  h->cmd_sg_list = (struct SGDescriptor **)0;
  return;
}
}
static int hpsa_alloc_sg_chain_blocks(struct ctlr_info *h )
{
  int i ;
  void *tmp ;
  void *tmp___0 ;
  {
  if (h->chainsize <= 0) {
    return (0);
  } else {
  }
  tmp = kmalloc((unsigned long )h->nr_cmds * 8UL, 208U);
  h->cmd_sg_list = (struct SGDescriptor **)tmp;
  if ((unsigned long )h->cmd_sg_list == (unsigned long )((struct SGDescriptor **)0)) {
    dev_err((struct device const *)(& (h->pdev)->dev), "Failed to allocate SG list\n");
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_40809;
  ldv_40808:
  tmp___0 = kmalloc((unsigned long )h->chainsize * 16UL, 208U);
  *(h->cmd_sg_list + (unsigned long )i) = (struct SGDescriptor *)tmp___0;
  if ((unsigned long )*(h->cmd_sg_list + (unsigned long )i) == (unsigned long )((struct SGDescriptor *)0)) {
    dev_err((struct device const *)(& (h->pdev)->dev), "Failed to allocate cmd SG\n");
    goto clean;
  } else {
  }
  i = i + 1;
  ldv_40809: ;
  if (h->nr_cmds > i) {
    goto ldv_40808;
  } else {
  }
  return (0);
  clean:
  hpsa_free_sg_chain_blocks(h);
  return (-12);
}
}
static int hpsa_map_ioaccel2_sg_chain_block(struct ctlr_info *h , struct io_accel2_cmd *cp ,
                                            struct CommandList *c )
{
  struct ioaccel2_sg_element *chain_block ;
  u64 temp64 ;
  u32 chain_size ;
  int tmp ;
  {
  chain_block = *(h->ioaccel2_cmd_sg_list + (unsigned long )c->cmdindex);
  chain_size = cp->data_len;
  temp64 = pci_map_single(h->pdev, (void *)chain_block, (size_t )chain_size, 1);
  tmp = dma_mapping_error(& (h->pdev)->dev, temp64);
  if (tmp != 0) {
    ((struct ioaccel2_sg_element *)(& cp->sg))->address = 0ULL;
    return (-1);
  } else {
  }
  ((struct ioaccel2_sg_element *)(& cp->sg))->address = temp64;
  return (0);
}
}
static void hpsa_unmap_ioaccel2_sg_chain_block(struct ctlr_info *h , struct io_accel2_cmd *cp )
{
  struct ioaccel2_sg_element *chain_sg ;
  u64 temp64 ;
  u32 chain_size ;
  {
  chain_sg = (struct ioaccel2_sg_element *)(& cp->sg);
  temp64 = chain_sg->address;
  chain_size = cp->data_len;
  pci_unmap_single(h->pdev, temp64, (size_t )chain_size, 1);
  return;
}
}
static int hpsa_map_sg_chain_block(struct ctlr_info *h , struct CommandList *c )
{
  struct SGDescriptor *chain_sg ;
  struct SGDescriptor *chain_block ;
  u64 temp64 ;
  u32 chain_len ;
  int tmp ;
  {
  chain_sg = (struct SGDescriptor *)(& c->SG) + ((unsigned long )h->max_cmd_sg_entries + 0xffffffffffffffffUL);
  chain_block = *(h->cmd_sg_list + (unsigned long )c->cmdindex);
  chain_sg->Ext = 2147483648U;
  chain_len = (u32 )((unsigned long )((int )c->Header.SGTotal - (int )h->max_cmd_sg_entries)) * 16U;
  chain_sg->Len = chain_len;
  temp64 = pci_map_single(h->pdev, (void *)chain_block, (size_t )chain_len, 1);
  tmp = dma_mapping_error(& (h->pdev)->dev, temp64);
  if (tmp != 0) {
    chain_sg->Addr = 0ULL;
    return (-1);
  } else {
  }
  chain_sg->Addr = temp64;
  return (0);
}
}
static void hpsa_unmap_sg_chain_block(struct ctlr_info *h , struct CommandList *c )
{
  struct SGDescriptor *chain_sg ;
  {
  if ((int )c->Header.SGTotal <= (int )((unsigned short )h->max_cmd_sg_entries)) {
    return;
  } else {
  }
  chain_sg = (struct SGDescriptor *)(& c->SG) + ((unsigned long )h->max_cmd_sg_entries + 0xffffffffffffffffUL);
  pci_unmap_single(h->pdev, chain_sg->Addr, (size_t )chain_sg->Len, 1);
  return;
}
}
static void hpsa_cmd_resolve_events(struct ctlr_info *h , struct CommandList *c )
{
  bool do_wake ;
  unsigned long flags ;
  struct hpsa_scsi_dev_t *dev ;
  int tmp ;
  {
  do_wake = 0;
  c->scsi_cmd = (struct scsi_cmnd *)(& hpsa_cmd_idle);
  __asm__ volatile ("mfence": : : "memory");
  if (c->abort_pending != 0) {
    do_wake = 1;
    c->abort_pending = 0;
  } else {
  }
  if ((unsigned long )c->reset_pending != (unsigned long )((struct hpsa_scsi_dev_t *)0)) {
    ldv_spin_lock();
    dev = c->reset_pending;
    if ((unsigned long )dev != (unsigned long )((struct hpsa_scsi_dev_t *)0)) {
      tmp = atomic_dec_and_test(& dev->reset_cmds_out);
      if (tmp != 0) {
        do_wake = 1;
      } else {
      }
    } else {
    }
    c->reset_pending = (struct hpsa_scsi_dev_t *)0;
    spin_unlock_irqrestore(& h->lock, flags);
  } else {
  }
  if ((int )do_wake) {
    __wake_up(& h->event_sync_wait_queue, 3U, 0, (void *)0);
  } else {
  }
  return;
}
}
static void hpsa_cmd_resolve_and_free(struct ctlr_info *h , struct CommandList *c )
{
  {
  hpsa_cmd_resolve_events(h, c);
  cmd_tagged_free(h, c);
  return;
}
}
static int hpsa_evaluate_tmf_status(struct ctlr_info *h , struct CommandList *cp )
{
  u8 tmf_status ;
  {
  tmf_status = (cp->err_info)->ScsiStatus;
  switch ((int )tmf_status) {
  case 0: ;
  case 8: ;
  return (0);
  case 2: ;
  case 4: ;
  case 5: ;
  case 9: ;
  case 10: ;
  goto ldv_40963;
  default:
  dev_warn((struct device const *)(& (h->pdev)->dev), "Unknown TMF status: 0x%02x\n",
           (int )tmf_status);
  goto ldv_40963;
  }
  ldv_40963: ;
  return (- ((int )tmf_status));
}
}
static void complete_scsi_command(struct CommandList *cp )
{
  struct scsi_cmnd *cmd ;
  struct ctlr_info *h ;
  struct ErrorInfo *ei ;
  struct hpsa_scsi_dev_t *dev ;
  struct io_accel2_cmd *c2 ;
  u8 sense_key ;
  u8 asc ;
  u8 ascq ;
  unsigned long sense_data_size ;
  long tmp ;
  bool tmp___0 ;
  long tmp___1 ;
  struct io_accel1_cmd *c ;
  unsigned int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  ei = cp->err_info;
  cmd = cp->scsi_cmd;
  h = cp->h;
  dev = (struct hpsa_scsi_dev_t *)(cmd->device)->hostdata;
  c2 = h->ioaccel2_cmd_pool + (unsigned long )cp->cmdindex;
  scsi_dma_unmap(cmd);
  if (cp->cmd_type == 3 && (int )cp->Header.SGTotal > (int )((unsigned short )h->max_cmd_sg_entries)) {
    hpsa_unmap_sg_chain_block(h, cp);
  } else {
  }
  if (cp->cmd_type == 5 && (unsigned int )c2->sg[0].chain_indicator == 128U) {
    hpsa_unmap_ioaccel2_sg_chain_block(h, c2);
  } else {
  }
  cmd->result = 0;
  cmd->result = cmd->result;
  if (cp->cmd_type == 5 || cp->cmd_type == 4) {
    atomic_dec(& (cp->phys_disk)->ioaccel_cmds_out);
  } else {
  }
  tmp = ldv__builtin_expect((unsigned int )ei->CommandStatus == 65535U, 0L);
  if (tmp != 0L) {
    cmd->result = 65536;
    return;
  } else {
  }
  tmp___0 = hpsa_is_pending_event(cp);
  tmp___1 = ldv__builtin_expect((long )tmp___0, 0L);
  if (tmp___1 != 0L) {
    if ((unsigned long )cp->reset_pending != (unsigned long )((struct hpsa_scsi_dev_t *)0)) {
      return;
    } else {
    }
    if (cp->abort_pending != 0) {
      return;
    } else {
    }
  } else {
  }
  if (cp->cmd_type == 5) {
    return;
  } else {
  }
  scsi_set_resid(cmd, (int )ei->ResidualCnt);
  if ((unsigned int )ei->CommandStatus == 0U) {
    return;
  } else {
  }
  if (cp->cmd_type == 4) {
    c = h->ioaccel_cmd_pool + (unsigned long )cp->cmdindex;
    tmp___2 = scsi_sg_count(cmd);
    cp->Header.SGList = (u8 )tmp___2;
    cp->Header.SGTotal = (unsigned short )cp->Header.SGList;
    cp->Request.CDBLen = (unsigned int )((u8 )c->io_flags) & 31U;
    cp->Header.tag = c->tag;
    memcpy((void *)(& cp->Header.LUN.LunAddrBytes), (void const *)(& c->CISS_LUN),
             8UL);
    memcpy((void *)(& cp->Request.CDB), (void const *)(& c->CDB), (size_t )cp->Request.CDBLen);
    tmp___3 = is_logical_dev_addr_mode((unsigned char *)(& dev->scsi3addr));
    if (tmp___3 != 0) {
      if ((unsigned int )ei->CommandStatus == 14U) {
        dev->offload_enabled = 0;
      } else {
      }
      return;
    } else {
    }
  } else {
  }
  switch ((int )ei->CommandStatus) {
  case 1:
  cmd->result = cmd->result | (int )ei->ScsiStatus;
  sense_data_size = 32UL;
  if ((unsigned long )ei->SenseLen < sense_data_size) {
    sense_data_size = (unsigned long )ei->SenseLen;
  } else {
  }
  memcpy((void *)cmd->sense_buffer, (void const *)(& ei->SenseInfo), sense_data_size);
  if ((unsigned int )ei->ScsiStatus != 0U) {
    decode_sense_data((u8 const *)(& ei->SenseInfo), (int )sense_data_size, & sense_key,
                      & asc, & ascq);
  } else {
  }
  if ((unsigned int )ei->ScsiStatus == 2U) {
    if ((unsigned int )sense_key == 11U) {
      cmd->result = cmd->result | 720896;
      goto ldv_40979;
    } else {
    }
    goto ldv_40979;
  } else {
  }
  if ((unsigned int )ei->ScsiStatus != 0U) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "cp %p has status 0x%x Sense: 0x%x, ASC: 0x%x, ASCQ: 0x%x, Returning result: 0x%x\n",
             cp, (int )ei->ScsiStatus, (int )sense_key, (int )asc, (int )ascq, cmd->result);
  } else {
    dev_warn((struct device const *)(& (h->pdev)->dev), "cp %p SCSI status was 0. Returning no connection.\n",
             cp);
    cmd->result = 65536;
  }
  goto ldv_40979;
  case 2: ;
  goto ldv_40979;
  case 3:
  dev_warn((struct device const *)(& (h->pdev)->dev), "CDB %16phN data overrun\n",
           (u8 *)(& cp->Request.CDB));
  goto ldv_40979;
  case 4:
  cmd->result = 65536;
  goto ldv_40979;
  case 5:
  cmd->result = 458752;
  dev_warn((struct device const *)(& (h->pdev)->dev), "CDB %16phN : protocol error\n",
           (u8 *)(& cp->Request.CDB));
  goto ldv_40979;
  case 6:
  cmd->result = 458752;
  dev_warn((struct device const *)(& (h->pdev)->dev), "CDB %16phN : hardware error\n",
           (u8 *)(& cp->Request.CDB));
  goto ldv_40979;
  case 7:
  cmd->result = 458752;
  dev_warn((struct device const *)(& (h->pdev)->dev), "CDB %16phN : connection lost\n",
           (u8 *)(& cp->Request.CDB));
  goto ldv_40979;
  case 8: ;
  return;
  case 9:
  cmd->result = 458752;
  dev_warn((struct device const *)(& (h->pdev)->dev), "CDB %16phN : abort failed\n",
           (u8 *)(& cp->Request.CDB));
  goto ldv_40979;
  case 10:
  cmd->result = 720896;
  dev_warn((struct device const *)(& (h->pdev)->dev), "CDB %16phN : unsolicited abort\n",
           (u8 *)(& cp->Request.CDB));
  goto ldv_40979;
  case 11:
  cmd->result = 196608;
  dev_warn((struct device const *)(& (h->pdev)->dev), "CDB %16phN timed out\n",
           (u8 *)(& cp->Request.CDB));
  goto ldv_40979;
  case 12:
  cmd->result = 458752;
  dev_warn((struct device const *)(& (h->pdev)->dev), "Command unabortable\n");
  goto ldv_40979;
  case 13:
  tmp___4 = hpsa_evaluate_tmf_status(h, cp);
  if (tmp___4 != 0) {
    cmd->result = 458752;
  } else {
  }
  goto ldv_40979;
  case 14:
  cmd->result = 720896;
  dev_warn((struct device const *)(& (h->pdev)->dev), "cp %p had HP SSD Smart Path error\n",
           cp);
  goto ldv_40979;
  default:
  cmd->result = 458752;
  dev_warn((struct device const *)(& (h->pdev)->dev), "cp %p returned unknown status %x\n",
           cp, (int )ei->CommandStatus);
  }
  ldv_40979: ;
  return;
}
}
static void hpsa_pci_unmap(struct pci_dev *pdev , struct CommandList *c , int sg_used ,
                           int data_direction )
{
  int i ;
  {
  i = 0;
  goto ldv_41002;
  ldv_41001:
  pci_unmap_single(pdev, c->SG[i].Addr, (size_t )c->SG[i].Len, data_direction);
  i = i + 1;
  ldv_41002: ;
  if (i < sg_used) {
    goto ldv_41001;
  } else {
  }
  return;
}
}
static int hpsa_map_one(struct pci_dev *pdev , struct CommandList *cp , unsigned char *buf ,
                        size_t buflen , int data_direction )
{
  u64 addr64 ;
  int tmp ;
  {
  if (buflen == 0UL || data_direction == 3) {
    cp->Header.SGList = 0U;
    cp->Header.SGTotal = 0U;
    return (0);
  } else {
  }
  addr64 = pci_map_single(pdev, (void *)buf, buflen, data_direction);
  tmp = dma_mapping_error(& pdev->dev, addr64);
  if (tmp != 0) {
    cp->Header.SGList = 0U;
    cp->Header.SGTotal = 0U;
    return (-1);
  } else {
  }
  cp->SG[0].Addr = addr64;
  cp->SG[0].Len = (unsigned int )buflen;
  cp->SG[0].Ext = 1073741824U;
  cp->Header.SGList = 1U;
  cp->Header.SGTotal = 1U;
  return (0);
}
}
static int hpsa_scsi_do_simple_cmd_core(struct ctlr_info *h , struct CommandList *c ,
                                        int reply_queue , unsigned long timeout_msecs )
{
  struct completion wait ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  init_completion(& wait);
  wait = wait;
  c->waiting = & wait;
  __enqueue_cmd_and_start_io(h, c, reply_queue);
  if (timeout_msecs == 0xffffffffffffffffUL) {
    wait_for_completion_io(& wait);
    return (0);
  } else {
  }
  tmp = msecs_to_jiffies((unsigned int const )timeout_msecs);
  tmp___0 = wait_for_completion_io_timeout(& wait, tmp);
  if (tmp___0 == 0UL) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "Command timed out.\n");
    return (-110);
  } else {
  }
  return (0);
}
}
static int hpsa_scsi_do_simple_cmd(struct ctlr_info *h , struct CommandList *c , int reply_queue ,
                                   unsigned long timeout_msecs )
{
  u32 tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  tmp = lockup_detected(h);
  tmp___0 = ldv__builtin_expect(tmp != 0U, 0L);
  if (tmp___0 != 0L) {
    (c->err_info)->CommandStatus = 65535U;
    return (0);
  } else {
  }
  tmp___1 = hpsa_scsi_do_simple_cmd_core(h, c, reply_queue, timeout_msecs);
  return (tmp___1);
}
}
static u32 lockup_detected(struct ctlr_info *h )
{
  int cpu ;
  u32 rc ;
  u32 *lockup_detected___0 ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  void const *__vpp_verify___0 ;
  unsigned long __ptr ;
  {
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  __vpp_verify = (void const *)0;
  switch (4UL) {
  case 1UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
  goto ldv_41037;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_41037;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_41037;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_41037;
  default:
  __bad_percpu_size();
  }
  ldv_41037:
  pscr_ret__ = pfo_ret__;
  goto ldv_41043;
  case 2UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_41047;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_41047;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_41047;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_41047;
  default:
  __bad_percpu_size();
  }
  ldv_41047:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_41043;
  case 4UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_41056;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_41056;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_41056;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_41056;
  default:
  __bad_percpu_size();
  }
  ldv_41056:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_41043;
  case 8UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_41065;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_41065;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_41065;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_41065;
  default:
  __bad_percpu_size();
  }
  ldv_41065:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_41043;
  default:
  __bad_size_call_parameter();
  goto ldv_41043;
  }
  ldv_41043:
  cpu = pscr_ret__;
  __vpp_verify___0 = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (h->lockup_detected));
  lockup_detected___0 = (u32 *)(__per_cpu_offset[cpu] + __ptr);
  rc = *lockup_detected___0;
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  return (rc);
}
}
static int hpsa_scsi_do_simple_cmd_with_retry(struct ctlr_info *h , struct CommandList *c ,
                                              int data_direction , unsigned long timeout_msecs )
{
  int backoff_time ;
  int retry_count ;
  int rc ;
  int tmp ;
  int tmp___0 ;
  {
  backoff_time = 10;
  retry_count = 0;
  ldv_41088:
  memset((void *)c->err_info, 0, 48UL);
  rc = hpsa_scsi_do_simple_cmd(h, c, -1, timeout_msecs);
  if (rc != 0) {
    goto ldv_41087;
  } else {
  }
  retry_count = retry_count + 1;
  if (retry_count > 3) {
    msleep((unsigned int )backoff_time);
    if (backoff_time <= 999) {
      backoff_time = backoff_time * 2;
    } else {
    }
  } else {
  }
  tmp = check_for_unit_attention(h, c);
  if (tmp != 0) {
    goto _L;
  } else {
    tmp___0 = check_for_busy(h, c);
    if (tmp___0 != 0) {
      _L:
      if (retry_count <= 25) {
        goto ldv_41088;
      } else {
        goto ldv_41087;
      }
    } else {
      goto ldv_41087;
    }
  }
  ldv_41087:
  hpsa_pci_unmap(h->pdev, c, 1, data_direction);
  if (retry_count > 25) {
    rc = -5;
  } else {
  }
  return (rc);
}
}
static void hpsa_print_cmd(struct ctlr_info *h , char *txt , struct CommandList *c )
{
  u8 const *cdb ;
  u8 const *lun ;
  {
  cdb = (u8 const *)(& c->Request.CDB);
  lun = (u8 const *)(& c->Header.LUN.LunAddrBytes);
  dev_warn((struct device const *)(& (h->pdev)->dev), "%s: LUN:%02x%02x%02x%02x%02x%02x%02x%02x CDB:%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\n",
           txt, (int )*lun, (int )*(lun + 1UL), (int )*(lun + 2UL), (int )*(lun + 3UL),
           (int )*(lun + 4UL), (int )*(lun + 5UL), (int )*(lun + 6UL), (int )*(lun + 7UL),
           (int )*cdb, (int )*(cdb + 1UL), (int )*(cdb + 2UL), (int )*(cdb + 3UL),
           (int )*(cdb + 4UL), (int )*(cdb + 5UL), (int )*(cdb + 6UL), (int )*(cdb + 7UL),
           (int )*(cdb + 8UL), (int )*(cdb + 9UL), (int )*(cdb + 10UL), (int )*(cdb + 11UL),
           (int )*(cdb + 12UL), (int )*(cdb + 13UL), (int )*(cdb + 14UL), (int )*(cdb + 15UL));
  return;
}
}
static void hpsa_scsi_interpret_error(struct ctlr_info *h , struct CommandList *cp )
{
  struct ErrorInfo const *ei ;
  struct device *d ;
  u8 sense_key ;
  u8 asc ;
  u8 ascq ;
  int sense_len ;
  {
  ei = (struct ErrorInfo const *)cp->err_info;
  d = & ((cp->h)->pdev)->dev;
  switch ((int )ei->CommandStatus) {
  case 1: ;
  if ((unsigned int )((unsigned char )ei->SenseLen) > 32U) {
    sense_len = 32;
  } else {
    sense_len = (int )ei->SenseLen;
  }
  decode_sense_data((u8 const *)(& ei->SenseInfo), sense_len, & sense_key, & asc,
                    & ascq);
  hpsa_print_cmd(h, (char *)"SCSI status", cp);
  if ((unsigned int )((unsigned char )ei->ScsiStatus) == 2U) {
    dev_warn((struct device const *)d, "SCSI Status = 02, Sense key = 0x%02x, ASC = 0x%02x, ASCQ = 0x%02x\n",
             (int )sense_key, (int )asc, (int )ascq);
  } else {
    dev_warn((struct device const *)d, "SCSI Status = 0x%02x\n", (int )ei->ScsiStatus);
  }
  if ((unsigned int )((unsigned char )ei->ScsiStatus) == 0U) {
    dev_warn((struct device const *)d, "SCSI status is abnormally zero.  (probably indicates selection timeout reported incorrectly due to a known firmware bug, circa July, 2001.)\n");
  } else {
  }
  goto ldv_41107;
  case 2: ;
  goto ldv_41107;
  case 3:
  hpsa_print_cmd(h, (char *)"overrun condition", cp);
  goto ldv_41107;
  case 4:
  hpsa_print_cmd(h, (char *)"invalid command", cp);
  dev_warn((struct device const *)d, "probably means device no longer present\n");
  goto ldv_41107;
  case 5:
  hpsa_print_cmd(h, (char *)"protocol error", cp);
  goto ldv_41107;
  case 6:
  hpsa_print_cmd(h, (char *)"hardware error", cp);
  goto ldv_41107;
  case 7:
  hpsa_print_cmd(h, (char *)"connection lost", cp);
  goto ldv_41107;
  case 8:
  hpsa_print_cmd(h, (char *)"aborted", cp);
  goto ldv_41107;
  case 9:
  hpsa_print_cmd(h, (char *)"abort failed", cp);
  goto ldv_41107;
  case 10:
  hpsa_print_cmd(h, (char *)"unsolicited abort", cp);
  goto ldv_41107;
  case 11:
  hpsa_print_cmd(h, (char *)"timed out", cp);
  goto ldv_41107;
  case 12:
  hpsa_print_cmd(h, (char *)"unabortable", cp);
  goto ldv_41107;
  case 65535:
  hpsa_print_cmd(h, (char *)"controller lockup detected", cp);
  goto ldv_41107;
  default:
  hpsa_print_cmd(h, (char *)"unknown status", cp);
  dev_warn((struct device const *)d, "Unknown command status %x\n", (int )ei->CommandStatus);
  }
  ldv_41107: ;
  return;
}
}
static int hpsa_scsi_do_inquiry(struct ctlr_info *h , unsigned char *scsi3addr , u16 page ,
                                unsigned char *buf , unsigned char bufsize )
{
  int rc ;
  struct CommandList *c ;
  struct ErrorInfo *ei ;
  int tmp ;
  {
  rc = 0;
  c = cmd_alloc(h);
  tmp = fill_cmd(c, 18, h, (void *)buf, (size_t )bufsize, (int )page, scsi3addr, 0);
  if (tmp != 0) {
    rc = -1;
    goto out;
  } else {
  }
  rc = hpsa_scsi_do_simple_cmd_with_retry(h, c, 2, 0xffffffffffffffffUL);
  if (rc != 0) {
    goto out;
  } else {
  }
  ei = c->err_info;
  if ((unsigned int )ei->CommandStatus != 0U && (unsigned int )ei->CommandStatus != 2U) {
    hpsa_scsi_interpret_error(h, c);
    rc = -1;
  } else {
  }
  out:
  cmd_free(h, c);
  return (rc);
}
}
static int hpsa_bmic_ctrl_mode_sense(struct ctlr_info *h , unsigned char *scsi3addr ,
                                     unsigned char page , struct bmic_controller_parameters *buf ,
                                     size_t bufsize )
{
  int rc ;
  struct CommandList *c ;
  struct ErrorInfo *ei ;
  int tmp ;
  {
  rc = 0;
  c = cmd_alloc(h);
  tmp = fill_cmd(c, 100, h, (void *)buf, bufsize, (int )page, scsi3addr, 0);
  if (tmp != 0) {
    rc = -1;
    goto out;
  } else {
  }
  rc = hpsa_scsi_do_simple_cmd_with_retry(h, c, 2, 0xffffffffffffffffUL);
  if (rc != 0) {
    goto out;
  } else {
  }
  ei = c->err_info;
  if ((unsigned int )ei->CommandStatus != 0U && (unsigned int )ei->CommandStatus != 2U) {
    hpsa_scsi_interpret_error(h, c);
    rc = -1;
  } else {
  }
  out:
  cmd_free(h, c);
  return (rc);
}
}
static int hpsa_send_reset(struct ctlr_info *h , unsigned char *scsi3addr , u8 reset_type ,
                           int reply_queue )
{
  int rc ;
  struct CommandList *c ;
  struct ErrorInfo *ei ;
  {
  rc = 0;
  c = cmd_alloc(h);
  fill_cmd(c, 1, h, (void *)0, 0UL, 0, scsi3addr, 1);
  c->Request.CDB[1] = reset_type;
  rc = hpsa_scsi_do_simple_cmd(h, c, reply_queue, 0xffffffffffffffffUL);
  if (rc != 0) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "Failed to send reset command\n");
    goto out;
  } else {
  }
  ei = c->err_info;
  if ((unsigned int )ei->CommandStatus != 0U) {
    hpsa_scsi_interpret_error(h, c);
    rc = -1;
  } else {
  }
  out:
  cmd_free(h, c);
  return (rc);
}
}
static bool hpsa_cmd_dev_match(struct ctlr_info *h , struct CommandList *c , struct hpsa_scsi_dev_t *dev ,
                               unsigned char *scsi3addr )
{
  int i ;
  bool match ;
  struct io_accel2_cmd *c2 ;
  struct hpsa_tmf_struct *ac ;
  bool tmp ;
  int tmp___0 ;
  {
  match = 0;
  c2 = h->ioaccel2_cmd_pool + (unsigned long )c->cmdindex;
  ac = (struct hpsa_tmf_struct *)c2;
  tmp = hpsa_is_cmd_idle(c);
  if ((int )tmp) {
    return (0);
  } else {
  }
  switch (c->cmd_type) {
  case 3: ;
  case 1:
  tmp___0 = memcmp((void const *)scsi3addr, (void const *)(& c->Header.LUN.LunAddrBytes),
                   8UL);
  match = tmp___0 == 0;
  goto ldv_41165;
  case 4: ;
  case 5: ;
  if ((unsigned long )c->phys_disk == (unsigned long )dev) {
    match = 1;
  } else {
    i = 0;
    goto ldv_41169;
    ldv_41168:
    match = (unsigned long )dev->phys_disk[i] == (unsigned long )c->phys_disk;
    i = i + 1;
    ldv_41169: ;
    if (dev->nphysical_disks > i && ! match) {
      goto ldv_41168;
    } else {
    }
  }
  goto ldv_41165;
  case 6:
  i = 0;
  goto ldv_41173;
  ldv_41172:
  match = (dev->phys_disk[i])->ioaccel_handle == ac->it_nexus;
  i = i + 1;
  ldv_41173: ;
  if (dev->nphysical_disks > i && ! match) {
    goto ldv_41172;
  } else {
  }
  goto ldv_41165;
  case 0:
  match = 0;
  goto ldv_41165;
  default:
  dev_err((struct device const *)(& (h->pdev)->dev), "unexpected cmd_type: %d\n",
          c->cmd_type);
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                       "i" (2700), "i" (12UL));
  ldv_41177: ;
  goto ldv_41177;
  }
  ldv_41165: ;
  return (match);
}
}
static int hpsa_do_reset(struct ctlr_info *h , struct hpsa_scsi_dev_t *dev , unsigned char *scsi3addr ,
                         u8 reset_type , int reply_queue )
{
  int i ;
  int rc ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  struct CommandList *c ;
  int refcount ;
  int tmp___2 ;
  unsigned long flags ;
  bool tmp___3 ;
  int tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  u32 tmp___7 ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___8 ;
  int tmp___9 ;
  u32 tmp___10 ;
  u32 tmp___11 ;
  long tmp___12 ;
  long tmp___13 ;
  {
  rc = 0;
  tmp = mutex_lock_interruptible_nested(& h->reset_mutex, 0U);
  if (tmp == -4) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "concurrent reset wait interrupted.\n");
    return (-4);
  } else {
  }
  tmp___0 = atomic_read((atomic_t const *)(& dev->reset_cmds_out));
  tmp___1 = ldv__builtin_expect(tmp___0 != 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (2718), "i" (12UL));
    ldv_41187: ;
    goto ldv_41187;
  } else {
  }
  i = 0;
  goto ldv_41192;
  ldv_41191:
  c = h->cmd_pool + (unsigned long )i;
  tmp___2 = atomic_add_return(1, & c->refcount);
  refcount = tmp___2;
  if (refcount > 1) {
    tmp___5 = hpsa_cmd_dev_match(h, c, dev, scsi3addr);
    if ((int )tmp___5) {
      c->reset_pending = dev;
      ldv_spin_lock();
      tmp___3 = hpsa_is_cmd_idle(c);
      if (tmp___3) {
        tmp___4 = 0;
      } else {
        tmp___4 = 1;
      }
      if (tmp___4) {
        atomic_inc(& dev->reset_cmds_out);
      } else {
        c->reset_pending = (struct hpsa_scsi_dev_t *)0;
      }
      spin_unlock_irqrestore(& h->lock, flags);
    } else {
    }
  } else {
  }
  cmd_free(h, c);
  i = i + 1;
  ldv_41192: ;
  if (h->nr_cmds > i) {
    goto ldv_41191;
  } else {
  }
  rc = hpsa_send_reset(h, scsi3addr, (int )reset_type, reply_queue);
  if (rc == 0) {
    __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c",
                  2749, 0);
    tmp___6 = atomic_read((atomic_t const *)(& dev->reset_cmds_out));
    if (tmp___6 == 0) {
      goto ldv_41194;
    } else {
      tmp___7 = lockup_detected(h);
      if (tmp___7 != 0U) {
        goto ldv_41194;
      } else {
      }
    }
    __ret = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_41200:
    tmp___8 = prepare_to_wait_event(& h->event_sync_wait_queue, & __wait, 2);
    __int = tmp___8;
    tmp___9 = atomic_read((atomic_t const *)(& dev->reset_cmds_out));
    if (tmp___9 == 0) {
      goto ldv_41199;
    } else {
      tmp___10 = lockup_detected(h);
      if (tmp___10 != 0U) {
        goto ldv_41199;
      } else {
      }
    }
    schedule();
    goto ldv_41200;
    ldv_41199:
    finish_wait(& h->event_sync_wait_queue, & __wait);
    ldv_41194: ;
  } else {
  }
  tmp___11 = lockup_detected(h);
  tmp___12 = ldv__builtin_expect(tmp___11 != 0U, 0L);
  if (tmp___12 != 0L) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "Controller lockup detected during reset wait\n");
    mutex_unlock(& h->reset_mutex);
    rc = -19;
  } else {
  }
  tmp___13 = ldv__builtin_expect(rc != 0, 0L);
  if (tmp___13 != 0L) {
    atomic_set(& dev->reset_cmds_out, 0);
  } else {
  }
  mutex_unlock(& h->reset_mutex);
  return (rc);
}
}
static void hpsa_get_raid_level(struct ctlr_info *h , unsigned char *scsi3addr , unsigned char *raid_level )
{
  int rc ;
  unsigned char *buf ;
  void *tmp ;
  {
  *raid_level = 7U;
  tmp = kmalloc(64UL, 208U);
  buf = (unsigned char *)tmp;
  if ((unsigned long )buf == (unsigned long )((unsigned char *)0U)) {
    return;
  } else {
  }
  rc = hpsa_scsi_do_inquiry(h, scsi3addr, 449, buf, 64);
  if (rc == 0) {
    *raid_level = *(buf + 8UL);
  } else {
  }
  if ((unsigned int )*raid_level > 7U) {
    *raid_level = 7U;
  } else {
  }
  kfree((void const *)buf);
  return;
}
}
static void hpsa_debug_map_buff(struct ctlr_info *h , int rc , struct raid_map_data *map_buff )
{
  struct raid_map_disk_data *dd ;
  int map ;
  int row ;
  int col ;
  u16 map_cnt ;
  u16 row_cnt ;
  u16 disks_per_row ;
  {
  dd = (struct raid_map_disk_data *)(& map_buff->data);
  if (rc != 0) {
    return;
  } else {
  }
  if (h->raid_offload_debug <= 1) {
    return;
  } else {
  }
  _dev_info((struct device const *)(& (h->pdev)->dev), "structure_size = %u\n",
            map_buff->structure_size);
  _dev_info((struct device const *)(& (h->pdev)->dev), "volume_blk_size = %u\n",
            map_buff->volume_blk_size);
  _dev_info((struct device const *)(& (h->pdev)->dev), "volume_blk_cnt = 0x%llx\n",
            map_buff->volume_blk_cnt);
  _dev_info((struct device const *)(& (h->pdev)->dev), "physicalBlockShift = %u\n",
            (int )map_buff->phys_blk_shift);
  _dev_info((struct device const *)(& (h->pdev)->dev), "parity_rotation_shift = %u\n",
            (int )map_buff->parity_rotation_shift);
  _dev_info((struct device const *)(& (h->pdev)->dev), "strip_size = %u\n", (int )map_buff->strip_size);
  _dev_info((struct device const *)(& (h->pdev)->dev), "disk_starting_blk = 0x%llx\n",
            map_buff->disk_starting_blk);
  _dev_info((struct device const *)(& (h->pdev)->dev), "disk_blk_cnt = 0x%llx\n",
            map_buff->disk_blk_cnt);
  _dev_info((struct device const *)(& (h->pdev)->dev), "data_disks_per_row = %u\n",
            (int )map_buff->data_disks_per_row);
  _dev_info((struct device const *)(& (h->pdev)->dev), "metadata_disks_per_row = %u\n",
            (int )map_buff->metadata_disks_per_row);
  _dev_info((struct device const *)(& (h->pdev)->dev), "row_cnt = %u\n", (int )map_buff->row_cnt);
  _dev_info((struct device const *)(& (h->pdev)->dev), "layout_map_count = %u\n",
            (int )map_buff->layout_map_count);
  _dev_info((struct device const *)(& (h->pdev)->dev), "flags = 0x%x\n", (int )map_buff->flags);
  _dev_info((struct device const *)(& (h->pdev)->dev), "encrypytion = %s\n", (int )map_buff->flags & 1 ? (char *)"ON" : (char *)"OFF");
  _dev_info((struct device const *)(& (h->pdev)->dev), "dekindex = %u\n", (int )map_buff->dekindex);
  map_cnt = map_buff->layout_map_count;
  map = 0;
  goto ldv_41237;
  ldv_41236:
  _dev_info((struct device const *)(& (h->pdev)->dev), "Map%u:\n", map);
  row_cnt = map_buff->row_cnt;
  row = 0;
  goto ldv_41234;
  ldv_41233:
  _dev_info((struct device const *)(& (h->pdev)->dev), "  Row%u:\n", row);
  disks_per_row = map_buff->data_disks_per_row;
  col = 0;
  goto ldv_41228;
  ldv_41227:
  _dev_info((struct device const *)(& (h->pdev)->dev), "    D%02u: h=0x%04x xor=%u,%u\n",
            col, dd->ioaccel_handle, (int )dd->xor_mult[0], (int )dd->xor_mult[1]);
  col = col + 1;
  dd = dd + 1;
  ldv_41228: ;
  if ((int )disks_per_row > col) {
    goto ldv_41227;
  } else {
  }
  disks_per_row = map_buff->metadata_disks_per_row;
  col = 0;
  goto ldv_41231;
  ldv_41230:
  _dev_info((struct device const *)(& (h->pdev)->dev), "    M%02u: h=0x%04x xor=%u,%u\n",
            col, dd->ioaccel_handle, (int )dd->xor_mult[0], (int )dd->xor_mult[1]);
  col = col + 1;
  dd = dd + 1;
  ldv_41231: ;
  if ((int )disks_per_row > col) {
    goto ldv_41230;
  } else {
  }
  row = row + 1;
  ldv_41234: ;
  if ((int )row_cnt > row) {
    goto ldv_41233;
  } else {
  }
  map = map + 1;
  ldv_41237: ;
  if ((int )map_cnt > map) {
    goto ldv_41236;
  } else {
  }
  return;
}
}
static int hpsa_get_raid_map(struct ctlr_info *h , unsigned char *scsi3addr , struct hpsa_scsi_dev_t *this_device )
{
  int rc ;
  struct CommandList *c ;
  struct ErrorInfo *ei ;
  int tmp ;
  {
  rc = 0;
  c = cmd_alloc(h);
  tmp = fill_cmd(c, 200, h, (void *)(& this_device->raid_map), 2112UL, 0, scsi3addr,
                 0);
  if (tmp != 0) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "hpsa_get_raid_map fill_cmd failed\n");
    cmd_free(h, c);
    return (-1);
  } else {
  }
  rc = hpsa_scsi_do_simple_cmd_with_retry(h, c, 2, 0xffffffffffffffffUL);
  if (rc != 0) {
    goto out;
  } else {
  }
  ei = c->err_info;
  if ((unsigned int )ei->CommandStatus != 0U && (unsigned int )ei->CommandStatus != 2U) {
    hpsa_scsi_interpret_error(h, c);
    rc = -1;
    goto out;
  } else {
  }
  cmd_free(h, c);
  if (this_device->raid_map.structure_size > 2112U) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "RAID map size is too large!\n");
    rc = -1;
  } else {
  }
  hpsa_debug_map_buff(h, rc, & this_device->raid_map);
  return (rc);
  out:
  cmd_free(h, c);
  return (rc);
}
}
static int hpsa_bmic_id_physical_device(struct ctlr_info *h , unsigned char *scsi3addr ,
                                        u16 bmic_device_index , struct bmic_identify_physical_device *buf ,
                                        size_t bufsize )
{
  int rc ;
  struct CommandList *c ;
  struct ErrorInfo *ei ;
  {
  rc = 0;
  c = cmd_alloc(h);
  rc = fill_cmd(c, 21, h, (void *)buf, bufsize, 0, (unsigned char *)"", 0);
  if (rc != 0) {
    goto out;
  } else {
  }
  c->Request.CDB[2] = (u8 )bmic_device_index;
  c->Request.CDB[9] = (u8 )((int )bmic_device_index >> 8);
  hpsa_scsi_do_simple_cmd_with_retry(h, c, 2, 0xffffffffffffffffUL);
  ei = c->err_info;
  if ((unsigned int )ei->CommandStatus != 0U && (unsigned int )ei->CommandStatus != 2U) {
    hpsa_scsi_interpret_error(h, c);
    rc = -1;
  } else {
  }
  out:
  cmd_free(h, c);
  return (rc);
}
}
static int hpsa_vpd_page_supported(struct ctlr_info *h , unsigned char *scsi3addr ,
                                   u8 page )
{
  int rc ;
  int i ;
  int pages ;
  unsigned char *buf ;
  unsigned char bufsize ;
  void *tmp ;
  {
  tmp = kmalloc(256UL, 208U);
  buf = (unsigned char *)tmp;
  if ((unsigned long )buf == (unsigned long )((unsigned char *)0U)) {
    return (0);
  } else {
  }
  rc = hpsa_scsi_do_inquiry(h, scsi3addr, 256, buf, 4);
  if (rc != 0) {
    goto exit_unsupported;
  } else {
  }
  pages = (int )*(buf + 3UL);
  if (pages + 4 <= 255) {
    bufsize = (unsigned int )((unsigned char )pages) + 4U;
  } else {
    bufsize = 255U;
  }
  rc = hpsa_scsi_do_inquiry(h, scsi3addr, 256, buf, (int )bufsize);
  if (rc != 0) {
    goto exit_unsupported;
  } else {
  }
  pages = (int )*(buf + 3UL);
  i = 1;
  goto ldv_41272;
  ldv_41271: ;
  if ((int )*(buf + (unsigned long )(i + 3)) == (int )page) {
    goto exit_supported;
  } else {
  }
  i = i + 1;
  ldv_41272: ;
  if (i <= pages) {
    goto ldv_41271;
  } else {
  }
  exit_unsupported:
  kfree((void const *)buf);
  return (0);
  exit_supported:
  kfree((void const *)buf);
  return (1);
}
}
static void hpsa_get_ioaccel_status(struct ctlr_info *h , unsigned char *scsi3addr ,
                                    struct hpsa_scsi_dev_t *this_device )
{
  int rc ;
  unsigned char *buf ;
  u8 ioaccel_status ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  this_device->offload_config = 0;
  this_device->offload_enabled = 0;
  this_device->offload_to_be_enabled = 0;
  tmp = kmalloc(64UL, 208U);
  buf = (unsigned char *)tmp;
  if ((unsigned long )buf == (unsigned long )((unsigned char *)0U)) {
    return;
  } else {
  }
  tmp___0 = hpsa_vpd_page_supported(h, scsi3addr, 194);
  if (tmp___0 == 0) {
    goto out;
  } else {
  }
  rc = hpsa_scsi_do_inquiry(h, scsi3addr, 450, buf, 64);
  if (rc != 0) {
    goto out;
  } else {
  }
  ioaccel_status = *(buf + 4UL);
  this_device->offload_config = (int )ioaccel_status & 1;
  if (this_device->offload_config != 0) {
    this_device->offload_enabled = ((int )ioaccel_status & 2) != 0;
    tmp___1 = hpsa_get_raid_map(h, scsi3addr, this_device);
    if (tmp___1 != 0) {
      this_device->offload_enabled = 0;
    } else {
    }
  } else {
  }
  this_device->offload_to_be_enabled = this_device->offload_enabled;
  out:
  kfree((void const *)buf);
  return;
}
}
static int hpsa_get_device_id(struct ctlr_info *h , unsigned char *scsi3addr , unsigned char *device_id ,
                              int buflen )
{
  int rc ;
  unsigned char *buf ;
  void *tmp ;
  {
  if (buflen > 16) {
    buflen = 16;
  } else {
  }
  tmp = kmalloc(64UL, 208U);
  buf = (unsigned char *)tmp;
  if ((unsigned long )buf == (unsigned long )((unsigned char *)0U)) {
    return (-12);
  } else {
  }
  rc = hpsa_scsi_do_inquiry(h, scsi3addr, 387, buf, 64);
  if (rc == 0) {
    memcpy((void *)device_id, (void const *)buf + 8U, (size_t )buflen);
  } else {
  }
  kfree((void const *)buf);
  return (rc != 0);
}
}
static int hpsa_scsi_do_report_luns(struct ctlr_info *h , int logical , void *buf ,
                                    int bufsize , int extended_response )
{
  int rc ;
  struct CommandList *c ;
  unsigned char scsi3addr[8U] ;
  struct ErrorInfo *ei ;
  int tmp ;
  struct ReportLUNdata *rld ;
  {
  rc = 0;
  c = cmd_alloc(h);
  memset((void *)(& scsi3addr), 0, 8UL);
  tmp = fill_cmd(c, logical != 0 ? 194 : 195, h, buf, (size_t )bufsize, 0, (unsigned char *)(& scsi3addr),
                 0);
  if (tmp != 0) {
    rc = -1;
    goto out;
  } else {
  }
  if (extended_response != 0) {
    c->Request.CDB[1] = (u8 )extended_response;
  } else {
  }
  rc = hpsa_scsi_do_simple_cmd_with_retry(h, c, 2, 0xffffffffffffffffUL);
  if (rc != 0) {
    goto out;
  } else {
  }
  ei = c->err_info;
  if ((unsigned int )ei->CommandStatus != 0U && (unsigned int )ei->CommandStatus != 2U) {
    hpsa_scsi_interpret_error(h, c);
    rc = -1;
  } else {
    rld = (struct ReportLUNdata *)buf;
    if ((int )rld->extended_response_flag != extended_response) {
      dev_err((struct device const *)(& (h->pdev)->dev), "report luns requested format %u, got %u\n",
              extended_response, (int )rld->extended_response_flag);
      rc = -1;
    } else {
    }
  }
  out:
  cmd_free(h, c);
  return (rc);
}
}
__inline static int hpsa_scsi_do_report_phys_luns(struct ctlr_info *h , struct ReportExtendedLUNdata *buf ,
                                                  int bufsize )
{
  int tmp ;
  {
  tmp = hpsa_scsi_do_report_luns(h, 0, (void *)buf, bufsize, 2);
  return (tmp);
}
}
__inline static int hpsa_scsi_do_report_log_luns(struct ctlr_info *h , struct ReportLUNdata *buf ,
                                                 int bufsize )
{
  int tmp ;
  {
  tmp = hpsa_scsi_do_report_luns(h, 1, (void *)buf, bufsize, 0);
  return (tmp);
}
}
__inline static void hpsa_set_bus_target_lun(struct hpsa_scsi_dev_t *device , int bus ,
                                             int target , int lun )
{
  {
  device->bus = bus;
  device->target = target;
  device->lun = lun;
  return;
}
}
static int hpsa_get_volume_status(struct ctlr_info *h , unsigned char *scsi3addr )
{
  int rc ;
  int status ;
  int size ;
  unsigned char *buf ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = kmalloc(64UL, 208U);
  buf = (unsigned char *)tmp;
  if ((unsigned long )buf == (unsigned long )((unsigned char *)0U)) {
    return (255);
  } else {
  }
  tmp___0 = hpsa_vpd_page_supported(h, scsi3addr, 195);
  if (tmp___0 == 0) {
    goto exit_failed;
  } else {
  }
  rc = hpsa_scsi_do_inquiry(h, scsi3addr, 451, buf, 4);
  if (rc != 0) {
    goto exit_failed;
  } else {
  }
  size = (int )*(buf + 3UL);
  rc = hpsa_scsi_do_inquiry(h, scsi3addr, 451, buf, (int )((unsigned int )((unsigned char )size) + 4U));
  if (rc != 0) {
    goto exit_failed;
  } else {
  }
  status = (int )*(buf + 4UL);
  kfree((void const *)buf);
  return (status);
  exit_failed:
  kfree((void const *)buf);
  return (255);
}
}
static int hpsa_volume_offline(struct ctlr_info *h , unsigned char *scsi3addr )
{
  struct CommandList *c ;
  unsigned char *sense ;
  u8 sense_key ;
  u8 asc ;
  u8 ascq ;
  int sense_len ;
  int rc ;
  int ldstat ;
  u16 cmd_status ;
  u8 scsi_status ;
  {
  ldstat = 0;
  c = cmd_alloc(h);
  fill_cmd(c, 0, h, (void *)0, 0UL, 0, scsi3addr, 0);
  rc = hpsa_scsi_do_simple_cmd(h, c, -1, 0xffffffffffffffffUL);
  if (rc != 0) {
    cmd_free(h, c);
    return (0);
  } else {
  }
  sense = (unsigned char *)(& (c->err_info)->SenseInfo);
  if ((unsigned int )(c->err_info)->SenseLen > 32U) {
    sense_len = 32;
  } else {
    sense_len = (int )(c->err_info)->SenseLen;
  }
  decode_sense_data((u8 const *)sense, sense_len, & sense_key, & asc, & ascq);
  cmd_status = (c->err_info)->CommandStatus;
  scsi_status = (c->err_info)->ScsiStatus;
  cmd_free(h, c);
  if ((((unsigned int )cmd_status != 1U || (unsigned int )scsi_status != 2U) || (unsigned int )sense_key != 2U) || (unsigned int )asc != 4U) {
    return (0);
  } else {
  }
  ldstat = hpsa_get_volume_status(h, scsi3addr);
  switch (ldstat) {
  case 15: ;
  case 18: ;
  case 19: ;
  case 20: ;
  case 21: ;
  case 22: ;
  case 23: ;
  case 24: ;
  return (ldstat);
  case 255: ;
  if ((unsigned int )ascq == 4U || (unsigned int )ascq == 2U) {
    return (ldstat);
  } else {
  }
  goto ldv_41352;
  default: ;
  goto ldv_41352;
  }
  ldv_41352: ;
  return (0);
}
}
static int hpsa_device_supports_aborts(struct ctlr_info *h , unsigned char *scsi3addr )
{
  struct CommandList *c ;
  struct ErrorInfo *ei ;
  int rc ;
  u64 tag ;
  int tmp ;
  {
  rc = 0;
  tag = 0xffffffffffffffffULL;
  tmp = is_logical_dev_addr_mode(scsi3addr);
  if (tmp == 0) {
    return (1);
  } else {
  }
  c = cmd_alloc(h);
  fill_cmd(c, 0, h, (void *)(& tag), 0UL, 0, scsi3addr, 1);
  hpsa_scsi_do_simple_cmd(h, c, -1, 0xffffffffffffffffUL);
  ei = c->err_info;
  switch ((int )ei->CommandStatus) {
  case 4:
  rc = 0;
  goto ldv_41363;
  case 12: ;
  case 9:
  rc = 1;
  goto ldv_41363;
  case 13:
  rc = hpsa_evaluate_tmf_status(h, c);
  goto ldv_41363;
  default:
  rc = 0;
  goto ldv_41363;
  }
  ldv_41363:
  cmd_free(h, c);
  return (rc);
}
}
static int hpsa_update_device_info(struct ctlr_info *h , unsigned char *scsi3addr ,
                                   struct hpsa_scsi_dev_t *this_device , unsigned char *is_OBDR_device )
{
  unsigned char *inq_buff ;
  unsigned char *obdr_sig ;
  void *tmp ;
  int tmp___0 ;
  int volume_offline ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = kmalloc(49UL, 208U);
  inq_buff = (unsigned char *)tmp;
  if ((unsigned long )inq_buff == (unsigned long )((unsigned char *)0U)) {
    goto bail_out;
  } else {
  }
  tmp___0 = hpsa_scsi_do_inquiry(h, scsi3addr, 0, inq_buff, 49);
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (h->pdev)->dev), "hpsa_update_device_info: inquiry failed\n");
    goto bail_out;
  } else {
  }
  this_device->devtype = (int )*inq_buff & 31;
  memcpy((void *)(& this_device->scsi3addr), (void const *)scsi3addr, 8UL);
  memcpy((void *)(& this_device->vendor), (void const *)inq_buff + 8U, 8UL);
  memcpy((void *)(& this_device->model), (void const *)inq_buff + 16U, 16UL);
  memset((void *)(& this_device->device_id), 0, 16UL);
  hpsa_get_device_id(h, scsi3addr, (unsigned char *)(& this_device->device_id), 16);
  if (this_device->devtype == 0) {
    tmp___1 = is_logical_dev_addr_mode(scsi3addr);
    if (tmp___1 != 0) {
      hpsa_get_raid_level(h, scsi3addr, & this_device->raid_level);
      if ((h->fw_support & 32U) != 0U) {
        hpsa_get_ioaccel_status(h, scsi3addr, this_device);
      } else {
      }
      volume_offline = hpsa_volume_offline(h, scsi3addr);
      if (volume_offline < 0 || volume_offline > 255) {
        volume_offline = 255;
      } else {
      }
      this_device->volume_offline = (unsigned char )volume_offline;
    } else {
      goto _L;
    }
  } else {
    _L:
    this_device->raid_level = 7U;
    this_device->offload_config = 0;
    this_device->offload_enabled = 0;
    this_device->offload_to_be_enabled = 0;
    this_device->hba_ioaccel_enabled = 0;
    this_device->volume_offline = 0U;
    this_device->queue_depth = (u16 )h->nr_cmds;
  }
  if ((unsigned long )is_OBDR_device != (unsigned long )((unsigned char *)0U)) {
    obdr_sig = inq_buff + 43UL;
    if (this_device->devtype == 5) {
      tmp___2 = strncmp((char const *)obdr_sig, "$DR-10", 6UL);
      if (tmp___2 == 0) {
        tmp___3 = 1;
      } else {
        tmp___3 = 0;
      }
    } else {
      tmp___3 = 0;
    }
    *is_OBDR_device = (unsigned char )tmp___3;
  } else {
  }
  kfree((void const *)inq_buff);
  return (0);
  bail_out:
  kfree((void const *)inq_buff);
  return (1);
}
}
static void hpsa_update_device_supports_aborts(struct ctlr_info *h , struct hpsa_scsi_dev_t *dev ,
                                               u8 *scsi3addr )
{
  unsigned long flags ;
  int rc ;
  int entry ;
  {
  ldv_spin_lock();
  rc = hpsa_scsi_find_entry(dev, (struct hpsa_scsi_dev_t **)(& h->dev), h->ndevices,
                            & entry);
  if (((rc == 2 || rc == 3) && entry >= 0) && h->ndevices > entry) {
    dev->supports_aborts = (h->dev[entry])->supports_aborts;
    spin_unlock_irqrestore(& h->devlock, flags);
  } else {
    spin_unlock_irqrestore(& h->devlock, flags);
    dev->supports_aborts = hpsa_device_supports_aborts(h, scsi3addr);
    if (dev->supports_aborts < 0) {
      dev->supports_aborts = 0;
    } else {
    }
  }
  return;
}
}
static unsigned char *ext_target_model[7U] = { (unsigned char *)"MSA2012", (unsigned char *)"MSA2024", (unsigned char *)"MSA2312", (unsigned char *)"MSA2324",
        (unsigned char *)"P2000 G3 SAS", (unsigned char *)"MSA 2040 SAS", (unsigned char *)0U};
static int is_ext_target(struct ctlr_info *h , struct hpsa_scsi_dev_t *device )
{
  int i ;
  size_t tmp ;
  int tmp___0 ;
  {
  i = 0;
  goto ldv_41395;
  ldv_41394:
  tmp = strlen((char const *)ext_target_model[i]);
  tmp___0 = strncmp((char const *)(& device->model), (char const *)ext_target_model[i],
                    tmp);
  if (tmp___0 == 0) {
    return (1);
  } else {
  }
  i = i + 1;
  ldv_41395: ;
  if ((unsigned long )ext_target_model[i] != (unsigned long )((unsigned char *)0U)) {
    goto ldv_41394;
  } else {
  }
  return (0);
}
}
static void figure_bus_target_lun(struct ctlr_info *h , u8 *lunaddrbytes , struct hpsa_scsi_dev_t *device )
{
  u32 lunid ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  lunid = *((__le32 *)lunaddrbytes);
  tmp___0 = is_logical_dev_addr_mode(lunaddrbytes);
  if (tmp___0 == 0) {
    tmp = is_hba_lunid(lunaddrbytes);
    if (tmp != 0) {
      hpsa_set_bus_target_lun(device, 3, 0, (int )lunid & 16383);
    } else {
      hpsa_set_bus_target_lun(device, 2, -1, -1);
    }
    return;
  } else {
  }
  tmp___1 = is_ext_target(h, device);
  if (tmp___1 != 0) {
    hpsa_set_bus_target_lun(device, 1, (int )(lunid >> 16) & 16383, (int )lunid & 255);
    return;
  } else {
  }
  hpsa_set_bus_target_lun(device, 0, 0, (int )lunid & 16383);
  return;
}
}
static int add_ext_target_dev(struct ctlr_info *h , struct hpsa_scsi_dev_t *tmpdevice ,
                              struct hpsa_scsi_dev_t *this_device , u8 *lunaddrbytes ,
                              unsigned long *lunzerobits , int *n_ext_target_devs )
{
  unsigned char scsi3addr[8U] ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp = variable_test_bit((long )tmpdevice->target, (unsigned long const volatile *)lunzerobits);
  if (tmp != 0) {
    return (0);
  } else {
  }
  tmp___0 = is_logical_dev_addr_mode(lunaddrbytes);
  if (tmp___0 == 0) {
    return (0);
  } else {
  }
  tmp___1 = is_ext_target(h, tmpdevice);
  if (tmp___1 == 0) {
    return (0);
  } else {
  }
  if (tmpdevice->lun == 0) {
    return (0);
  } else {
  }
  memset((void *)(& scsi3addr), 0, 8UL);
  scsi3addr[3] = (unsigned char )tmpdevice->target;
  tmp___2 = is_hba_lunid((unsigned char *)(& scsi3addr));
  if (tmp___2 != 0) {
    return (0);
  } else {
  }
  tmp___3 = is_scsi_rev_5(h);
  if (tmp___3 != 0) {
    return (0);
  } else {
  }
  if (*n_ext_target_devs > 31) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "Maximum number of external target devices exceeded.  Check your hardware configuration.");
    return (0);
  } else {
  }
  tmp___4 = hpsa_update_device_info(h, (unsigned char *)(& scsi3addr), this_device,
                                    (unsigned char *)0U);
  if (tmp___4 != 0) {
    return (0);
  } else {
  }
  *n_ext_target_devs = *n_ext_target_devs + 1;
  hpsa_set_bus_target_lun(this_device, tmpdevice->bus, tmpdevice->target, 0);
  hpsa_update_device_supports_aborts(h, this_device, (u8 *)(& scsi3addr));
  set_bit((long )tmpdevice->target, (unsigned long volatile *)lunzerobits);
  return (1);
}
}
static int hpsa_get_pdisk_of_ioaccel2(struct ctlr_info *h , struct CommandList *ioaccel2_cmd_to_abort ,
                                      unsigned char *scsi3addr )
{
  struct io_accel2_cmd *c2 ;
  unsigned long flags ;
  int i ;
  {
  c2 = h->ioaccel2_cmd_pool + (unsigned long )ioaccel2_cmd_to_abort->cmdindex;
  ldv_spin_lock();
  i = 0;
  goto ldv_41421;
  ldv_41420: ;
  if ((h->dev[i])->ioaccel_handle == c2->scsi_nexus) {
    memcpy((void *)scsi3addr, (void const *)(& (h->dev[i])->scsi3addr), 8UL);
    spin_unlock_irqrestore(& h->devlock, flags);
    return (1);
  } else {
  }
  i = i + 1;
  ldv_41421: ;
  if (h->ndevices > i) {
    goto ldv_41420;
  } else {
  }
  spin_unlock_irqrestore(& h->devlock, flags);
  return (0);
}
}
static int hpsa_gather_lun_info(struct ctlr_info *h , struct ReportExtendedLUNdata *physdev ,
                                u32 *nphysicals , struct ReportLUNdata *logdev , u32 *nlogicals )
{
  int tmp ;
  __u32 tmp___0 ;
  int tmp___1 ;
  __u32 tmp___2 ;
  {
  tmp = hpsa_scsi_do_report_phys_luns(h, physdev, 24584);
  if (tmp != 0) {
    dev_err((struct device const *)(& (h->pdev)->dev), "report physical LUNs failed.\n");
    return (-1);
  } else {
  }
  tmp___0 = __fswab32(*((__be32 *)(& physdev->LUNListLength)));
  *nphysicals = tmp___0 / 24U;
  if (*nphysicals > 1024U) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "maximum physical LUNs (%d) exceeded. %d LUNs ignored.\n",
             1024, *nphysicals - 1024U);
    *nphysicals = 1024U;
  } else {
  }
  tmp___1 = hpsa_scsi_do_report_log_luns(h, logdev, 8200);
  if (tmp___1 != 0) {
    dev_err((struct device const *)(& (h->pdev)->dev), "report logical LUNs failed.\n");
    return (-1);
  } else {
  }
  tmp___2 = __fswab32(*((__be32 *)(& logdev->LUNListLength)));
  *nlogicals = tmp___2 / 8U;
  if (*nlogicals > 1024U) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "maximum logical LUNs (%d) exceeded.  %d LUNs ignored.\n",
             1024, *nlogicals - 1024U);
    *nlogicals = 1024U;
  } else {
  }
  if (*nlogicals + *nphysicals > 1024U) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "maximum logical + physical LUNs (%d) exceeded. %d LUNs ignored.\n",
             1024, (*nphysicals + *nlogicals) - 1024U);
    *nlogicals = 1024U - *nphysicals;
  } else {
  }
  return (0);
}
}
static u8 *figure_lunaddrbytes(struct ctlr_info *h , int raid_ctlr_position , int i ,
                               int nphysicals , int nlogicals , struct ReportExtendedLUNdata *physdev_list ,
                               struct ReportLUNdata *logdev_list )
{
  int logicals_start ;
  int last_device ;
  {
  logicals_start = (raid_ctlr_position == 0) + nphysicals;
  last_device = (nphysicals + nlogicals) + (raid_ctlr_position == 0);
  if (i == raid_ctlr_position) {
    return ((u8 *)"");
  } else {
  }
  if (i < logicals_start) {
    return ((u8 *)(& physdev_list->LUN[i - (raid_ctlr_position == 0)].lunid));
  } else {
  }
  if (i < last_device) {
    return ((u8 *)(& logdev_list->LUN) + (unsigned long )((i - nphysicals) - (raid_ctlr_position == 0)));
  } else {
  }
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                       "i" (3561), "i" (12UL));
  ldv_41441: ;
  goto ldv_41441;
  return ((u8 *)0U);
}
}
static int hpsa_hba_mode_enabled(struct ctlr_info *h )
{
  int rc ;
  int hba_mode_enabled ;
  struct bmic_controller_parameters *ctlr_params ;
  void *tmp ;
  {
  tmp = kmalloc(512UL, 208U);
  ctlr_params = (struct bmic_controller_parameters *)tmp;
  if ((unsigned long )ctlr_params == (unsigned long )((struct bmic_controller_parameters *)0)) {
    return (-12);
  } else {
  }
  rc = hpsa_bmic_ctrl_mode_sense(h, (unsigned char *)"", 0, ctlr_params, 512UL);
  if (rc != 0) {
    kfree((void const *)ctlr_params);
    return (rc);
  } else {
  }
  hba_mode_enabled = ((int )ctlr_params->nvram_flags & 8) != 0;
  kfree((void const *)ctlr_params);
  return (hba_mode_enabled);
}
}
static void hpsa_get_ioaccel_drive_info(struct ctlr_info *h , struct hpsa_scsi_dev_t *dev ,
                                        u8 *lunaddrbytes , struct bmic_identify_physical_device *id_phys )
{
  int rc ;
  struct ext_report_lun_entry *rle ;
  {
  rle = (struct ext_report_lun_entry *)lunaddrbytes;
  dev->ioaccel_handle = rle->ioaccel_handle;
  if (((int )*(lunaddrbytes + 17UL) & 8) != 0 && dev->ioaccel_handle != 0U) {
    dev->hba_ioaccel_enabled = 1;
  } else {
  }
  memset((void *)id_phys, 0, 2048UL);
  rc = hpsa_bmic_id_physical_device(h, lunaddrbytes, (int )(((((unsigned int )((u16 )*(lunaddrbytes + 7UL)) & 63U) + 65535U) << 8U) + (unsigned int )((u16 )*(lunaddrbytes + 6UL))),
                                    id_phys, 2048UL);
  if (rc == 0) {
    dev->queue_depth = (unsigned int )id_phys->current_queue_depth_limit + 65534U;
  } else {
    dev->queue_depth = 7U;
  }
  atomic_set(& dev->ioaccel_cmds_out, 0);
  atomic_set(& dev->reset_cmds_out, 0);
  return;
}
}
static void hpsa_update_scsi_devices(struct ctlr_info *h , int hostno )
{
  struct ReportExtendedLUNdata *physdev_list ;
  struct ReportLUNdata *logdev_list ;
  struct bmic_identify_physical_device *id_phys ;
  u32 nphysicals ;
  u32 nlogicals ;
  u32 ndev_allocated ;
  struct hpsa_scsi_dev_t **currentsd ;
  struct hpsa_scsi_dev_t *this_device ;
  struct hpsa_scsi_dev_t *tmpdevice ;
  int ncurrent ;
  int i ;
  int n_ext_target_devs ;
  int ndevs_to_allocate ;
  int raid_ctlr_position ;
  int rescan_hba_mode ;
  unsigned long lunzerobits[1U] ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  int tmp___6 ;
  u8 *lunaddrbytes ;
  u8 is_OBDR ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  {
  physdev_list = (struct ReportExtendedLUNdata *)0;
  logdev_list = (struct ReportLUNdata *)0;
  id_phys = (struct bmic_identify_physical_device *)0;
  nphysicals = 0U;
  nlogicals = 0U;
  ndev_allocated = 0U;
  ncurrent = 0;
  tmp = kmalloc(16648UL, 208U);
  currentsd = (struct hpsa_scsi_dev_t **)tmp;
  tmp___0 = kmalloc(24584UL, 208U);
  physdev_list = (struct ReportExtendedLUNdata *)tmp___0;
  tmp___1 = kmalloc(8200UL, 208U);
  logdev_list = (struct ReportLUNdata *)tmp___1;
  tmp___2 = kmalloc(4280UL, 208U);
  tmpdevice = (struct hpsa_scsi_dev_t *)tmp___2;
  tmp___3 = kmalloc(2048UL, 208U);
  id_phys = (struct bmic_identify_physical_device *)tmp___3;
  if (((((unsigned long )currentsd == (unsigned long )((struct hpsa_scsi_dev_t **)0) || (unsigned long )physdev_list == (unsigned long )((struct ReportExtendedLUNdata *)0)) || (unsigned long )logdev_list == (unsigned long )((struct ReportLUNdata *)0)) || (unsigned long )tmpdevice == (unsigned long )((struct hpsa_scsi_dev_t *)0)) || (unsigned long )id_phys == (unsigned long )((struct bmic_identify_physical_device *)0)) {
    dev_err((struct device const *)(& (h->pdev)->dev), "out of memory\n");
    goto out;
  } else {
  }
  memset((void *)(& lunzerobits), 0, 8UL);
  rescan_hba_mode = hpsa_hba_mode_enabled(h);
  if (rescan_hba_mode < 0) {
    goto out;
  } else {
  }
  if ((int )((signed char )h->hba_mode_enabled) == 0 && rescan_hba_mode != 0) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "HBA mode enabled\n");
  } else
  if ((int )((signed char )h->hba_mode_enabled) != 0 && rescan_hba_mode == 0) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "HBA mode disabled\n");
  } else {
  }
  h->hba_mode_enabled = (char )rescan_hba_mode;
  tmp___4 = hpsa_gather_lun_info(h, physdev_list, & nphysicals, logdev_list, & nlogicals);
  if (tmp___4 != 0) {
    goto out;
  } else {
  }
  ndevs_to_allocate = (int )((nphysicals + nlogicals) + 33U);
  i = 0;
  goto ldv_41479;
  ldv_41478: ;
  if (i > 2080) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "maximum devices (%d) exceeded.  %d devices ignored.\n",
             2081, ndevs_to_allocate + -2081);
    goto ldv_41477;
  } else {
  }
  tmp___5 = kmalloc(4280UL, 208U);
  *(currentsd + (unsigned long )i) = (struct hpsa_scsi_dev_t *)tmp___5;
  if ((unsigned long )*(currentsd + (unsigned long )i) == (unsigned long )((struct hpsa_scsi_dev_t *)0)) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "out of memory at %s:%d\n",
             (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c",
             3689);
    goto out;
  } else {
  }
  ndev_allocated = ndev_allocated + 1U;
  i = i + 1;
  ldv_41479: ;
  if (i < ndevs_to_allocate) {
    goto ldv_41478;
  } else {
  }
  ldv_41477:
  tmp___6 = is_scsi_rev_5(h);
  if (tmp___6 != 0) {
    raid_ctlr_position = 0;
  } else {
    raid_ctlr_position = (int )(nphysicals + nlogicals);
  }
  n_ext_target_devs = 0;
  i = 0;
  goto ldv_41493;
  ldv_41492:
  is_OBDR = 0U;
  lunaddrbytes = figure_lunaddrbytes(h, raid_ctlr_position, i, (int )nphysicals, (int )nlogicals,
                                     physdev_list, logdev_list);
  if (((int )*(lunaddrbytes + 3UL) & 192) != 0) {
    if ((u32 )i < (u32 )(raid_ctlr_position == 0) + nphysicals && (int )*(lunaddrbytes + 17UL) & 1) {
      goto ldv_41482;
    } else {
    }
  } else {
  }
  tmp___7 = hpsa_update_device_info(h, lunaddrbytes, tmpdevice, & is_OBDR);
  if (tmp___7 != 0) {
    goto ldv_41482;
  } else {
  }
  figure_bus_target_lun(h, lunaddrbytes, tmpdevice);
  hpsa_update_device_supports_aborts(h, tmpdevice, lunaddrbytes);
  this_device = *(currentsd + (unsigned long )ncurrent);
  tmp___8 = add_ext_target_dev(h, tmpdevice, this_device, lunaddrbytes, (unsigned long *)(& lunzerobits),
                               & n_ext_target_devs);
  if (tmp___8 != 0) {
    ncurrent = ncurrent + 1;
    this_device = *(currentsd + (unsigned long )ncurrent);
  } else {
  }
  *this_device = *tmpdevice;
  if (((int )*(lunaddrbytes + 3UL) & 192) != 0 && (u32 )i < (u32 )(raid_ctlr_position == 0) + nphysicals) {
    if ((int )((signed char )h->hba_mode_enabled) != 0) {
      dev_warn((struct device const *)(& (h->pdev)->dev), "Masked physical device detected\n");
    } else {
    }
    this_device->expose_state = 0U;
  } else {
    this_device->expose_state = 3U;
  }
  switch (this_device->devtype) {
  case 5: ;
  if ((unsigned int )is_OBDR != 0U) {
    ncurrent = ncurrent + 1;
  } else {
  }
  goto ldv_41484;
  case 0: ;
  if ((u32 )i >= nphysicals) {
    ncurrent = ncurrent + 1;
    goto ldv_41484;
  } else {
  }
  if ((int )((signed char )h->hba_mode_enabled) != 0) {
    this_device->offload_enabled = 0;
  } else
  if ((h->transMethod & 128UL) == 0UL && (h->transMethod & 256UL) == 0UL) {
    goto ldv_41484;
  } else {
  }
  hpsa_get_ioaccel_drive_info(h, this_device, lunaddrbytes, id_phys);
  atomic_set(& this_device->ioaccel_cmds_out, 0);
  ncurrent = ncurrent + 1;
  goto ldv_41484;
  case 1: ;
  case 8:
  ncurrent = ncurrent + 1;
  goto ldv_41484;
  case 13: ;
  if ((int )((signed char )h->hba_mode_enabled) != 0) {
    ncurrent = ncurrent + 1;
  } else {
  }
  goto ldv_41484;
  case 12:
  tmp___9 = is_hba_lunid(lunaddrbytes);
  if (tmp___9 == 0) {
    goto ldv_41484;
  } else {
  }
  ncurrent = ncurrent + 1;
  goto ldv_41484;
  default: ;
  goto ldv_41484;
  }
  ldv_41484: ;
  if (ncurrent > 2080) {
    goto ldv_41491;
  } else {
  }
  ldv_41482:
  i = i + 1;
  ldv_41493: ;
  if ((u32 )i < (nphysicals + nlogicals) + 1U) {
    goto ldv_41492;
  } else {
  }
  ldv_41491:
  adjust_hpsa_scsi_table(h, hostno, currentsd, ncurrent);
  out:
  kfree((void const *)tmpdevice);
  i = 0;
  goto ldv_41495;
  ldv_41494:
  kfree((void const *)*(currentsd + (unsigned long )i));
  i = i + 1;
  ldv_41495: ;
  if ((u32 )i < ndev_allocated) {
    goto ldv_41494;
  } else {
  }
  kfree((void const *)currentsd);
  kfree((void const *)physdev_list);
  kfree((void const *)logdev_list);
  kfree((void const *)id_phys);
  return;
}
}
static void hpsa_set_sg_descriptor(struct SGDescriptor *desc , struct scatterlist *sg )
{
  u64 addr64 ;
  unsigned int len ;
  {
  addr64 = sg->dma_address;
  len = sg->dma_length;
  desc->Addr = addr64;
  desc->Len = len;
  desc->Ext = 0U;
  return;
}
}
static int hpsa_scatter_gather(struct ctlr_info *h , struct CommandList *cp , struct scsi_cmnd *cmd )
{
  struct scatterlist *sg ;
  int use_sg ;
  int i ;
  int sg_limit ;
  int chained ;
  int last_sg ;
  struct SGDescriptor *curr_sg ;
  unsigned int tmp ;
  long tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  {
  tmp = scsi_sg_count(cmd);
  tmp___0 = ldv__builtin_expect(tmp > (unsigned int )h->maxsgentries, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (3840), "i" (12UL));
    ldv_41515: ;
    goto ldv_41515;
  } else {
  }
  use_sg = scsi_dma_map(cmd);
  if (use_sg < 0) {
    return (use_sg);
  } else {
  }
  if (use_sg == 0) {
    goto sglist_finished;
  } else {
  }
  curr_sg = (struct SGDescriptor *)(& cp->SG);
  chained = (int )h->max_cmd_sg_entries < use_sg;
  sg_limit = chained != 0 ? (int )h->max_cmd_sg_entries + -1 : use_sg;
  tmp___1 = scsi_sg_count(cmd);
  last_sg = (int )(tmp___1 - 1U);
  i = 0;
  sg = scsi_sglist(cmd);
  goto ldv_41518;
  ldv_41517:
  hpsa_set_sg_descriptor(curr_sg, sg);
  curr_sg = curr_sg + 1;
  i = i + 1;
  sg = sg_next(sg);
  ldv_41518: ;
  if (i < sg_limit) {
    goto ldv_41517;
  } else {
  }
  if (chained != 0) {
    curr_sg = *(h->cmd_sg_list + (unsigned long )cp->cmdindex);
    sg_limit = use_sg - sg_limit;
    i = 0;
    sg = sg;
    goto ldv_41521;
    ldv_41520:
    hpsa_set_sg_descriptor(curr_sg, sg);
    curr_sg = curr_sg + 1;
    i = i + 1;
    sg = sg_next(sg);
    ldv_41521: ;
    if (i < sg_limit) {
      goto ldv_41520;
    } else {
    }
  } else {
  }
  (curr_sg + 0xffffffffffffffffUL)->Ext = 1073741824U;
  if ((unsigned int )(use_sg + chained) > h->maxSG) {
    h->maxSG = (unsigned int )(use_sg + chained);
  } else {
  }
  if (chained != 0) {
    cp->Header.SGList = h->max_cmd_sg_entries;
    cp->Header.SGTotal = (unsigned int )((unsigned short )use_sg) + 1U;
    tmp___2 = hpsa_map_sg_chain_block(h, cp);
    if (tmp___2 != 0) {
      scsi_dma_unmap(cmd);
      return (-1);
    } else {
    }
    return (0);
  } else {
  }
  sglist_finished:
  cp->Header.SGList = (unsigned char )use_sg;
  cp->Header.SGTotal = (unsigned short )use_sg;
  return (0);
}
}
static int fixup_ioaccel_cdb(u8 *cdb , int *cdb_len )
{
  int is_write ;
  u32 block ;
  u32 block_cnt ;
  long tmp ;
  {
  is_write = 0;
  switch ((int )*cdb) {
  case 10: ;
  case 170:
  is_write = 1;
  case 8: ;
  case 168: ;
  if (*cdb_len == 6) {
    block = ((unsigned int )*(cdb + 2UL) << 8) | (unsigned int )*(cdb + 3UL);
    block_cnt = (u32 )*(cdb + 4UL);
  } else {
    tmp = ldv__builtin_expect(*cdb_len != 12, 0L);
    if (tmp != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                           "i" (3921), "i" (12UL));
      ldv_41534: ;
      goto ldv_41534;
    } else {
    }
    block = ((((unsigned int )*(cdb + 2UL) << 24) | ((unsigned int )*(cdb + 3UL) << 16)) | ((unsigned int )*(cdb + 4UL) << 8)) | (unsigned int )*(cdb + 5UL);
    block_cnt = ((((unsigned int )*(cdb + 6UL) << 24) | ((unsigned int )*(cdb + 7UL) << 16)) | ((unsigned int )*(cdb + 8UL) << 8)) | (unsigned int )*(cdb + 9UL);
  }
  if (block_cnt > 65535U) {
    return (1);
  } else {
  }
  *cdb = is_write != 0 ? 42U : 40U;
  *(cdb + 1UL) = 0U;
  *(cdb + 2UL) = (unsigned char )(block >> 24);
  *(cdb + 3UL) = (unsigned char )(block >> 16);
  *(cdb + 4UL) = (unsigned char )(block >> 8);
  *(cdb + 5UL) = (unsigned char )block;
  *(cdb + 6UL) = 0U;
  *(cdb + 7UL) = (unsigned char )(block_cnt >> 8);
  *(cdb + 8UL) = (unsigned char )block_cnt;
  *(cdb + 9UL) = 0U;
  *cdb_len = 10;
  goto ldv_41535;
  }
  ldv_41535: ;
  return (0);
}
}
static int hpsa_scsi_ioaccel1_queue_command(struct ctlr_info *h , struct CommandList *c ,
                                            u32 ioaccel_handle , u8 *cdb , int cdb_len ,
                                            u8 *scsi3addr , struct hpsa_scsi_dev_t *phys_disk )
{
  struct scsi_cmnd *cmd ;
  struct io_accel1_cmd *cp ;
  unsigned int len ;
  unsigned int total_len ;
  struct scatterlist *sg ;
  u64 addr64 ;
  int use_sg ;
  int i ;
  struct SGDescriptor *curr_sg ;
  u32 control ;
  unsigned int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  cmd = c->scsi_cmd;
  cp = h->ioaccel_cmd_pool + (unsigned long )c->cmdindex;
  total_len = 0U;
  control = 0U;
  tmp = scsi_sg_count(cmd);
  if (tmp > (unsigned int )h->ioaccel_maxsg) {
    atomic_dec(& phys_disk->ioaccel_cmds_out);
    return (1);
  } else {
  }
  tmp___0 = ldv__builtin_expect((unsigned int )cmd->cmd_len > 16U, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (3971), "i" (12UL));
    ldv_41555: ;
    goto ldv_41555;
  } else {
  }
  tmp___1 = fixup_ioaccel_cdb(cdb, & cdb_len);
  if (tmp___1 != 0) {
    atomic_dec(& phys_disk->ioaccel_cmds_out);
    return (1);
  } else {
  }
  c->cmd_type = 4;
  c->busaddr = (u32 )h->ioaccel_cmd_pool_dhandle + (u32 )c->cmdindex * 512U;
  tmp___2 = ldv__builtin_expect((c->busaddr & 127U) != 0U, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (3983), "i" (12UL));
    ldv_41556: ;
    goto ldv_41556;
  } else {
  }
  use_sg = scsi_dma_map(cmd);
  if (use_sg < 0) {
    atomic_dec(& phys_disk->ioaccel_cmds_out);
    return (use_sg);
  } else {
  }
  if (use_sg != 0) {
    curr_sg = (struct SGDescriptor *)(& cp->SG);
    i = 0;
    sg = scsi_sglist(cmd);
    goto ldv_41558;
    ldv_41557:
    addr64 = sg->dma_address;
    len = sg->dma_length;
    total_len = total_len + len;
    curr_sg->Addr = addr64;
    curr_sg->Len = len;
    curr_sg->Ext = 0U;
    curr_sg = curr_sg + 1;
    i = i + 1;
    sg = sg_next(sg);
    ldv_41558: ;
    if (i < use_sg) {
      goto ldv_41557;
    } else {
    }
    curr_sg = curr_sg - 1;
    curr_sg->Ext = 1073741824U;
    switch ((unsigned int )cmd->sc_data_direction) {
    case 1U:
    control = control | 16777216U;
    goto ldv_41561;
    case 2U:
    control = control | 33554432U;
    goto ldv_41561;
    case 3U:
    control = control;
    goto ldv_41561;
    default:
    dev_err((struct device const *)(& (h->pdev)->dev), "unknown data direction: %d\n",
            (unsigned int )cmd->sc_data_direction);
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (4017), "i" (12UL));
    ldv_41565: ;
    goto ldv_41565;
    }
    ldv_41561: ;
  } else {
    control = control;
  }
  c->Header.SGList = (u8 )use_sg;
  cp->dev_handle = (unsigned short )ioaccel_handle;
  cp->transfer_len = total_len;
  cp->io_flags = (unsigned short )(((int )((short )cdb_len) & 31) | 16384);
  cp->control = control;
  memcpy((void *)(& cp->CDB), (void const *)cdb, (size_t )cdb_len);
  memcpy((void *)(& cp->CISS_LUN), (void const *)scsi3addr, 8UL);
  enqueue_cmd_and_start_io(h, c);
  return (0);
}
}
static int hpsa_scsi_ioaccel_direct_map(struct ctlr_info *h , struct CommandList *c )
{
  struct scsi_cmnd *cmd ;
  struct hpsa_scsi_dev_t *dev ;
  int tmp ;
  {
  cmd = c->scsi_cmd;
  dev = (struct hpsa_scsi_dev_t *)(cmd->device)->hostdata;
  c->phys_disk = dev;
  tmp = hpsa_scsi_ioaccel_queue_command(h, c, dev->ioaccel_handle, cmd->cmnd, (int )cmd->cmd_len,
                                        (u8 *)(& dev->scsi3addr), dev);
  return (tmp);
}
}
static void set_encrypt_ioaccel2(struct ctlr_info *h , struct CommandList *c , struct io_accel2_cmd *cp )
{
  struct scsi_cmnd *cmd ;
  struct hpsa_scsi_dev_t *dev ;
  struct raid_map_data *map ;
  u64 first_block ;
  u16 tmp ;
  u32 tmp___0 ;
  {
  cmd = c->scsi_cmd;
  dev = (struct hpsa_scsi_dev_t *)(cmd->device)->hostdata;
  map = & dev->raid_map;
  if (((int )map->flags & 1) == 0) {
    return;
  } else {
  }
  cp->dekindex = map->dekindex;
  cp->direction = (u8 )((unsigned int )cp->direction | 8U);
  switch ((int )*(cmd->cmnd)) {
  case 10: ;
  case 8:
  tmp = get_unaligned_be16((void const *)cmd->cmnd + 2U);
  first_block = (u64 )tmp;
  goto ldv_41583;
  case 42: ;
  case 40: ;
  case 170: ;
  case 168:
  tmp___0 = get_unaligned_be32((void const *)cmd->cmnd + 2U);
  first_block = (u64 )tmp___0;
  goto ldv_41583;
  case 138: ;
  case 136:
  first_block = get_unaligned_be64((void const *)cmd->cmnd + 2U);
  goto ldv_41583;
  default:
  dev_err((struct device const *)(& (h->pdev)->dev), "OLD_ERROR: %s: size (0x%x) not supported for encryption\n",
          "set_encrypt_ioaccel2", (int )*(cmd->cmnd));
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                       "i" (4099), "i" (12UL));
  ldv_41592: ;
  goto ldv_41592;
  }
  ldv_41583: ;
  if (map->volume_blk_size != 512U) {
    first_block = ((u64 )map->volume_blk_size * first_block) / 512ULL;
  } else {
  }
  cp->tweak_lower = (unsigned int )first_block;
  cp->tweak_upper = (unsigned int )(first_block >> 32);
  return;
}
}
static int hpsa_scsi_ioaccel2_queue_command(struct ctlr_info *h , struct CommandList *c ,
                                            u32 ioaccel_handle , u8 *cdb , int cdb_len ,
                                            u8 *scsi3addr , struct hpsa_scsi_dev_t *phys_disk )
{
  struct scsi_cmnd *cmd ;
  struct io_accel2_cmd *cp ;
  struct ioaccel2_sg_element *curr_sg ;
  int use_sg ;
  int i ;
  struct scatterlist *sg ;
  u64 addr64 ;
  u32 len ;
  u32 total_len ;
  unsigned int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  {
  cmd = c->scsi_cmd;
  cp = h->ioaccel2_cmd_pool + (unsigned long )c->cmdindex;
  total_len = 0U;
  tmp = scsi_sg_count(cmd);
  tmp___0 = ldv__builtin_expect(tmp > (unsigned int )h->maxsgentries, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (4124), "i" (12UL));
    ldv_41611: ;
    goto ldv_41611;
  } else {
  }
  tmp___1 = fixup_ioaccel_cdb(cdb, & cdb_len);
  if (tmp___1 != 0) {
    atomic_dec(& phys_disk->ioaccel_cmds_out);
    return (1);
  } else {
  }
  c->cmd_type = 5;
  c->busaddr = (u32 )h->ioaccel2_cmd_pool_dhandle + (u32 )c->cmdindex * 640U;
  tmp___2 = ldv__builtin_expect((c->busaddr & 127U) != 0U, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (4135), "i" (12UL));
    ldv_41612: ;
    goto ldv_41612;
  } else {
  }
  memset((void *)cp, 0, 640UL);
  cp->IU_type = 64U;
  use_sg = scsi_dma_map(cmd);
  if (use_sg < 0) {
    atomic_dec(& phys_disk->ioaccel_cmds_out);
    return (use_sg);
  } else {
  }
  if (use_sg != 0) {
    curr_sg = (struct ioaccel2_sg_element *)(& cp->sg);
    if (h->ioaccel_maxsg < use_sg) {
      addr64 = (*(h->ioaccel2_cmd_sg_list + (unsigned long )c->cmdindex))->address;
      curr_sg->address = addr64;
      curr_sg->length = 0U;
      curr_sg->reserved[0] = 0U;
      curr_sg->reserved[1] = 0U;
      curr_sg->reserved[2] = 0U;
      curr_sg->chain_indicator = 128U;
      curr_sg = *(h->ioaccel2_cmd_sg_list + (unsigned long )c->cmdindex);
    } else {
    }
    i = 0;
    sg = scsi_sglist(cmd);
    goto ldv_41614;
    ldv_41613:
    addr64 = sg->dma_address;
    len = sg->dma_length;
    total_len = total_len + len;
    curr_sg->address = addr64;
    curr_sg->length = len;
    curr_sg->reserved[0] = 0U;
    curr_sg->reserved[1] = 0U;
    curr_sg->reserved[2] = 0U;
    curr_sg->chain_indicator = 0U;
    curr_sg = curr_sg + 1;
    i = i + 1;
    sg = sg_next(sg);
    ldv_41614: ;
    if (i < use_sg) {
      goto ldv_41613;
    } else {
    }
    switch ((unsigned int )cmd->sc_data_direction) {
    case 1U:
    cp->direction = (unsigned int )cp->direction & 252U;
    cp->direction = (u8 )((unsigned int )cp->direction | 2U);
    goto ldv_41617;
    case 2U:
    cp->direction = (unsigned int )cp->direction & 252U;
    cp->direction = (u8 )((unsigned int )cp->direction | 1U);
    goto ldv_41617;
    case 3U:
    cp->direction = (unsigned int )cp->direction & 252U;
    cp->direction = cp->direction;
    goto ldv_41617;
    default:
    dev_err((struct device const *)(& (h->pdev)->dev), "unknown data direction: %d\n",
            (unsigned int )cmd->sc_data_direction);
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (4189), "i" (12UL));
    ldv_41621: ;
    goto ldv_41621;
    }
    ldv_41617: ;
  } else {
    cp->direction = (unsigned int )cp->direction & 252U;
    cp->direction = cp->direction;
  }
  set_encrypt_ioaccel2(h, c, cp);
  cp->scsi_nexus = ioaccel_handle;
  cp->Tag = (unsigned int )c->cmdindex << 4U;
  memcpy((void *)(& cp->cdb), (void const *)cdb, 16UL);
  cp->data_len = total_len;
  cp->err_ptr = (unsigned long long )((unsigned long )c->busaddr + 512UL);
  cp->err_len = 52U;
  if (h->ioaccel_maxsg < use_sg) {
    cp->sg_count = 1U;
    tmp___3 = hpsa_map_ioaccel2_sg_chain_block(h, cp, c);
    if (tmp___3 != 0) {
      atomic_dec(& phys_disk->ioaccel_cmds_out);
      scsi_dma_unmap(cmd);
      return (-1);
    } else {
    }
  } else {
    cp->sg_count = (unsigned char )use_sg;
  }
  enqueue_cmd_and_start_io(h, c);
  return (0);
}
}
static int hpsa_scsi_ioaccel_queue_command(struct ctlr_info *h , struct CommandList *c ,
                                           u32 ioaccel_handle , u8 *cdb , int cdb_len ,
                                           u8 *scsi3addr , struct hpsa_scsi_dev_t *phys_disk )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = atomic_add_return(1, & phys_disk->ioaccel_cmds_out);
  if (tmp > (int )phys_disk->queue_depth) {
    atomic_dec(& phys_disk->ioaccel_cmds_out);
    return (1);
  } else {
  }
  if ((h->transMethod & 128UL) != 0UL) {
    tmp___0 = hpsa_scsi_ioaccel1_queue_command(h, c, ioaccel_handle, cdb, cdb_len,
                                               scsi3addr, phys_disk);
    return (tmp___0);
  } else {
    tmp___1 = hpsa_scsi_ioaccel2_queue_command(h, c, ioaccel_handle, cdb, cdb_len,
                                               scsi3addr, phys_disk);
    return (tmp___1);
  }
}
}
static void raid_map_helper(struct raid_map_data *map , int offload_to_mirror , u32 *map_index ,
                            u32 *current_group )
{
  {
  if (offload_to_mirror == 0) {
    *map_index = *map_index % (u32 )map->data_disks_per_row;
    return;
  } else {
  }
  ldv_41638:
  *current_group = *map_index / (u32 )map->data_disks_per_row;
  if ((u32 )offload_to_mirror == *current_group) {
    goto ldv_41637;
  } else {
  }
  if (*current_group < (u32 )((int )map->layout_map_count + -1)) {
    *map_index = *map_index + (u32 )map->data_disks_per_row;
    *current_group = *current_group + 1U;
  } else {
    *map_index = *map_index % (u32 )map->data_disks_per_row;
    *current_group = 0U;
  }
  ldv_41637: ;
  if ((u32 )offload_to_mirror != *current_group) {
    goto ldv_41638;
  } else {
  }
  return;
}
}
static int hpsa_scsi_ioaccel_raid_map(struct ctlr_info *h , struct CommandList *c )
{
  struct scsi_cmnd *cmd ;
  struct hpsa_scsi_dev_t *dev ;
  struct raid_map_data *map ;
  struct raid_map_disk_data *dd ;
  int is_write ;
  u32 map_index ;
  u64 first_block ;
  u64 last_block ;
  u32 block_cnt ;
  u32 blocks_per_row ;
  u64 first_row ;
  u64 last_row ;
  u32 first_row_offset ;
  u32 last_row_offset ;
  u32 first_column ;
  u32 last_column ;
  u64 r0_first_row ;
  u64 r0_last_row ;
  u32 r5or6_blocks_per_row ;
  u64 r5or6_first_row ;
  u64 r5or6_last_row ;
  u32 r5or6_first_row_offset ;
  u32 r5or6_last_row_offset ;
  u32 r5or6_first_column ;
  u32 r5or6_last_column ;
  u32 total_disks_per_row ;
  u32 stripesize ;
  u32 first_group ;
  u32 last_group ;
  u32 current_group ;
  u32 map_row ;
  u32 disk_handle ;
  u64 disk_block ;
  u32 disk_block_cnt ;
  u8 cdb[16U] ;
  u8 cdb_len ;
  u16 strip_size ;
  int offload_to_mirror ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  {
  cmd = c->scsi_cmd;
  dev = (struct hpsa_scsi_dev_t *)(cmd->device)->hostdata;
  map = & dev->raid_map;
  dd = (struct raid_map_disk_data *)(& map->data);
  is_write = 0;
  switch ((int )*(cmd->cmnd)) {
  case 10:
  is_write = 1;
  case 8:
  first_block = ((unsigned long long )*(cmd->cmnd + 2UL) << 8) | (unsigned long long )*(cmd->cmnd + 3UL);
  block_cnt = (u32 )*(cmd->cmnd + 4UL);
  if (block_cnt == 0U) {
    block_cnt = 256U;
  } else {
  }
  goto ldv_41684;
  case 42:
  is_write = 1;
  case 40:
  first_block = ((((unsigned long long )*(cmd->cmnd + 2UL) << 24) | ((unsigned long long )*(cmd->cmnd + 3UL) << 16)) | ((unsigned long long )*(cmd->cmnd + 4UL) << 8)) | (unsigned long long )*(cmd->cmnd + 5UL);
  block_cnt = ((unsigned int )*(cmd->cmnd + 7UL) << 8) | (unsigned int )*(cmd->cmnd + 8UL);
  goto ldv_41684;
  case 170:
  is_write = 1;
  case 168:
  first_block = ((((unsigned long long )*(cmd->cmnd + 2UL) << 24) | ((unsigned long long )*(cmd->cmnd + 3UL) << 16)) | ((unsigned long long )*(cmd->cmnd + 4UL) << 8)) | (unsigned long long )*(cmd->cmnd + 5UL);
  block_cnt = ((((unsigned int )*(cmd->cmnd + 6UL) << 24) | ((unsigned int )*(cmd->cmnd + 7UL) << 16)) | ((unsigned int )*(cmd->cmnd + 8UL) << 8)) | (unsigned int )*(cmd->cmnd + 9UL);
  goto ldv_41684;
  case 138:
  is_write = 1;
  case 136:
  first_block = ((((((((unsigned long long )*(cmd->cmnd + 2UL) << 56) | ((unsigned long long )*(cmd->cmnd + 3UL) << 48)) | ((unsigned long long )*(cmd->cmnd + 4UL) << 40)) | ((unsigned long long )*(cmd->cmnd + 5UL) << 32)) | ((unsigned long long )*(cmd->cmnd + 6UL) << 24)) | ((unsigned long long )*(cmd->cmnd + 7UL) << 16)) | ((unsigned long long )*(cmd->cmnd + 8UL) << 8)) | (unsigned long long )*(cmd->cmnd + 9UL);
  block_cnt = ((((unsigned int )*(cmd->cmnd + 10UL) << 24) | ((unsigned int )*(cmd->cmnd + 11UL) << 16)) | ((unsigned int )*(cmd->cmnd + 12UL) << 8)) | (unsigned int )*(cmd->cmnd + 13UL);
  goto ldv_41684;
  default: ;
  return (1);
  }
  ldv_41684:
  last_block = ((u64 )block_cnt + first_block) - 1ULL;
  if (is_write != 0 && (unsigned int )dev->raid_level != 0U) {
    return (1);
  } else {
  }
  if (map->volume_blk_cnt <= last_block || last_block < first_block) {
    return (1);
  } else {
  }
  blocks_per_row = (u32 )((int )map->data_disks_per_row * (int )map->strip_size);
  strip_size = map->strip_size;
  first_row = first_block / (u64 )blocks_per_row;
  last_row = last_block / (u64 )blocks_per_row;
  first_row_offset = (unsigned int )first_block - (unsigned int )first_row * blocks_per_row;
  last_row_offset = (unsigned int )last_block - (unsigned int )last_row * blocks_per_row;
  first_column = first_row_offset / (u32 )strip_size;
  last_column = last_row_offset / (u32 )strip_size;
  if (first_row != last_row || first_column != last_column) {
    return (1);
  } else {
  }
  total_disks_per_row = (u32 )((int )map->data_disks_per_row + (int )map->metadata_disks_per_row);
  map_row = (unsigned int )(first_row >> (int )map->parity_rotation_shift) % (unsigned int )map->row_cnt;
  map_index = map_row * total_disks_per_row + first_column;
  switch ((int )dev->raid_level) {
  case 0: ;
  goto ldv_41693;
  case 2:
  tmp = ldv__builtin_expect((unsigned int )map->layout_map_count != 2U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (4428), "i" (12UL));
    ldv_41695: ;
    goto ldv_41695;
  } else {
  }
  if (dev->offload_to_mirror != 0) {
    map_index = (u32 )map->data_disks_per_row + map_index;
  } else {
  }
  dev->offload_to_mirror = dev->offload_to_mirror == 0;
  goto ldv_41693;
  case 6:
  tmp___0 = ldv__builtin_expect((unsigned int )map->layout_map_count != 3U, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (4437), "i" (12UL));
    ldv_41697: ;
    goto ldv_41697;
  } else {
  }
  offload_to_mirror = dev->offload_to_mirror;
  raid_map_helper(map, offload_to_mirror, & map_index, & current_group);
  offload_to_mirror = (int )map->layout_map_count + -1 > offload_to_mirror ? offload_to_mirror + 1 : 0;
  dev->offload_to_mirror = offload_to_mirror;
  goto ldv_41693;
  case 3: ;
  case 5: ;
  if ((unsigned int )map->layout_map_count <= 1U) {
    goto ldv_41693;
  } else {
  }
  r5or6_blocks_per_row = (u32 )((int )map->strip_size * (int )map->data_disks_per_row);
  tmp___1 = ldv__builtin_expect(r5or6_blocks_per_row == 0U, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (4462), "i" (12UL));
    ldv_41700: ;
    goto ldv_41700;
  } else {
  }
  stripesize = (u32 )map->layout_map_count * r5or6_blocks_per_row;
  first_group = (u32 )((first_block % (u64 )stripesize) / (u64 )r5or6_blocks_per_row);
  last_group = (u32 )((last_block % (u64 )stripesize) / (u64 )r5or6_blocks_per_row);
  if (first_group != last_group) {
    return (1);
  } else {
  }
  r0_first_row = first_block / (u64 )stripesize;
  r5or6_first_row = r0_first_row;
  first_row = r5or6_first_row;
  r0_last_row = last_block / (u64 )stripesize;
  r5or6_last_row = r0_last_row;
  if (r5or6_first_row != r5or6_last_row) {
    return (1);
  } else {
  }
  r5or6_first_row_offset = (unsigned int )((first_block % (u64 )stripesize) % (u64 )r5or6_blocks_per_row);
  first_row_offset = r5or6_first_row_offset;
  r5or6_last_row_offset = (unsigned int )((last_block % (u64 )stripesize) % (u64 )r5or6_blocks_per_row);
  r5or6_first_column = r5or6_first_row_offset / (u32 )map->strip_size;
  first_column = r5or6_first_column;
  r5or6_last_column = r5or6_last_row_offset / (u32 )map->strip_size;
  if (r5or6_first_column != r5or6_last_column) {
    return (1);
  } else {
  }
  map_row = (unsigned int )(first_row >> (int )map->parity_rotation_shift) % (unsigned int )map->row_cnt;
  map_index = (((u32 )map->row_cnt * total_disks_per_row) * first_group + map_row * total_disks_per_row) + first_column;
  goto ldv_41693;
  default: ;
  return (1);
  }
  ldv_41693:
  tmp___2 = ldv__builtin_expect(map_index > 255U, 0L);
  if (tmp___2 != 0L) {
    return (1);
  } else {
  }
  c->phys_disk = dev->phys_disk[map_index];
  disk_handle = (dd + (unsigned long )map_index)->ioaccel_handle;
  disk_block = (map->disk_starting_blk + (u64 )map->strip_size * first_row) + (unsigned long long )(first_row_offset - (u32 )map->strip_size * first_column);
  disk_block_cnt = block_cnt;
  if ((unsigned int )map->phys_blk_shift != 0U) {
    disk_block = disk_block << (int )map->phys_blk_shift;
    disk_block_cnt = disk_block_cnt << (int )map->phys_blk_shift;
  } else {
  }
  tmp___3 = ldv__builtin_expect(disk_block_cnt > 65535U, 0L);
  if (tmp___3 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (4563), "i" (12UL));
    ldv_41702: ;
    goto ldv_41702;
  } else {
  }
  if (disk_block > 4294967295ULL) {
    cdb[0] = is_write != 0 ? 138U : 136U;
    cdb[1] = 0U;
    cdb[2] = (unsigned char )(disk_block >> 56);
    cdb[3] = (unsigned char )(disk_block >> 48);
    cdb[4] = (unsigned char )(disk_block >> 40);
    cdb[5] = (unsigned char )(disk_block >> 32);
    cdb[6] = (unsigned char )(disk_block >> 24);
    cdb[7] = (unsigned char )(disk_block >> 16);
    cdb[8] = (unsigned char )(disk_block >> 8);
    cdb[9] = (unsigned char )disk_block;
    cdb[10] = (unsigned char )(disk_block_cnt >> 24);
    cdb[11] = (unsigned char )(disk_block_cnt >> 16);
    cdb[12] = (unsigned char )(disk_block_cnt >> 8);
    cdb[13] = (unsigned char )disk_block_cnt;
    cdb[14] = 0U;
    cdb[15] = 0U;
    cdb_len = 16U;
  } else {
    cdb[0] = is_write != 0 ? 42U : 40U;
    cdb[1] = 0U;
    cdb[2] = (unsigned char )(disk_block >> 24);
    cdb[3] = (unsigned char )(disk_block >> 16);
    cdb[4] = (unsigned char )(disk_block >> 8);
    cdb[5] = (unsigned char )disk_block;
    cdb[6] = 0U;
    cdb[7] = (unsigned char )(disk_block_cnt >> 8);
    cdb[8] = (unsigned char )disk_block_cnt;
    cdb[9] = 0U;
    cdb_len = 10U;
  }
  tmp___4 = hpsa_scsi_ioaccel_queue_command(h, c, disk_handle, (u8 *)(& cdb), (int )cdb_len,
                                            (u8 *)(& dev->scsi3addr), dev->phys_disk[map_index]);
  return (tmp___4);
}
}
static int hpsa_ciss_submit(struct ctlr_info *h , struct CommandList *c , struct scsi_cmnd *cmd ,
                            unsigned char *scsi3addr )
{
  long tmp ;
  int tmp___0 ;
  {
  cmd->host_scribble = (unsigned char *)c;
  c->cmd_type = 3;
  c->scsi_cmd = cmd;
  c->Header.ReplyQueue = 0U;
  memcpy((void *)(& c->Header.LUN.LunAddrBytes), (void const *)scsi3addr, 8UL);
  c->Header.tag = (unsigned long long )(c->cmdindex << 4);
  c->Request.Timeout = 0U;
  tmp = ldv__builtin_expect((unsigned int )cmd->cmd_len > 16U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (4621), "i" (12UL));
    ldv_41709: ;
    goto ldv_41709;
  } else {
  }
  c->Request.CDBLen = (u8 )cmd->cmd_len;
  memcpy((void *)(& c->Request.CDB), (void const *)cmd->cmnd, (size_t )cmd->cmd_len);
  switch ((unsigned int )cmd->sc_data_direction) {
  case 1U:
  c->Request.type_attr_dir = 96U;
  goto ldv_41711;
  case 2U:
  c->Request.type_attr_dir = 160U;
  goto ldv_41711;
  case 3U:
  c->Request.type_attr_dir = 32U;
  goto ldv_41711;
  case 0U:
  c->Request.type_attr_dir = 224U;
  goto ldv_41711;
  default:
  dev_err((struct device const *)(& (h->pdev)->dev), "unknown data direction: %d\n",
          (unsigned int )cmd->sc_data_direction);
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                       "i" (4658), "i" (12UL));
  ldv_41716: ;
  goto ldv_41716;
  }
  ldv_41711:
  tmp___0 = hpsa_scatter_gather(h, c, cmd);
  if (tmp___0 < 0) {
    hpsa_cmd_resolve_and_free(h, c);
    return (4181);
  } else {
  }
  enqueue_cmd_and_start_io(h, c);
  return (0);
}
}
static void hpsa_cmd_init(struct ctlr_info *h , int index , struct CommandList *c )
{
  dma_addr_t cmd_dma_handle ;
  dma_addr_t err_dma_handle ;
  {
  memset((void *)c, 0, 712UL);
  c->Header.tag = (unsigned long long )(index << 4);
  cmd_dma_handle = h->cmd_pool_dhandle + (unsigned long long )((unsigned long )index * 768UL);
  c->err_info = h->errinfo_pool + (unsigned long )index;
  memset((void *)c->err_info, 0, 48UL);
  err_dma_handle = h->errinfo_pool_dhandle + (unsigned long long )((unsigned long )index * 48UL);
  c->cmdindex = (long )index;
  c->busaddr = (unsigned int )cmd_dma_handle;
  c->ErrDesc.Addr = err_dma_handle;
  c->ErrDesc.Len = 48U;
  c->h = h;
  c->scsi_cmd = (struct scsi_cmnd *)(& hpsa_cmd_idle);
  return;
}
}
static void hpsa_preinitialize_commands(struct ctlr_info *h )
{
  int i ;
  struct CommandList *c ;
  {
  i = 0;
  goto ldv_41730;
  ldv_41729:
  c = h->cmd_pool + (unsigned long )i;
  hpsa_cmd_init(h, i, c);
  atomic_set(& c->refcount, 0);
  i = i + 1;
  ldv_41730: ;
  if (h->nr_cmds > i) {
    goto ldv_41729;
  } else {
  }
  return;
}
}
__inline static void hpsa_cmd_partial_init(struct ctlr_info *h , int index , struct CommandList *c )
{
  dma_addr_t cmd_dma_handle ;
  long tmp ;
  {
  cmd_dma_handle = h->cmd_pool_dhandle + (unsigned long long )((unsigned long )index * 768UL);
  tmp = ldv__builtin_expect(c->cmdindex != (long )index, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (4709), "i" (12UL));
    ldv_41738: ;
    goto ldv_41738;
  } else {
  }
  memset((void *)(& c->Request.CDB), 0, 16UL);
  memset((void *)c->err_info, 0, 48UL);
  c->busaddr = (unsigned int )cmd_dma_handle;
  return;
}
}
static int hpsa_ioaccel_submit(struct ctlr_info *h , struct CommandList *c , struct scsi_cmnd *cmd ,
                               unsigned char *scsi3addr )
{
  struct hpsa_scsi_dev_t *dev ;
  int rc ;
  {
  dev = (struct hpsa_scsi_dev_t *)(cmd->device)->hostdata;
  rc = 1;
  cmd->host_scribble = (unsigned char *)c;
  if (dev->offload_enabled != 0) {
    hpsa_cmd_init(h, (int )c->cmdindex, c);
    c->cmd_type = 3;
    c->scsi_cmd = cmd;
    rc = hpsa_scsi_ioaccel_raid_map(h, c);
    if (rc < 0) {
      rc = 4181;
    } else {
    }
  } else
  if (dev->hba_ioaccel_enabled != 0) {
    hpsa_cmd_init(h, (int )c->cmdindex, c);
    c->cmd_type = 3;
    c->scsi_cmd = cmd;
    rc = hpsa_scsi_ioaccel_direct_map(h, c);
    if (rc < 0) {
      rc = 4181;
    } else {
    }
  } else {
  }
  return (rc);
}
}
static void hpsa_command_resubmit_worker(struct work_struct *work )
{
  struct scsi_cmnd *cmd ;
  struct hpsa_scsi_dev_t *dev ;
  struct CommandList *c ;
  struct work_struct const *__mptr ;
  struct ctlr_info *h ;
  struct io_accel2_cmd *c2 ;
  int rc ;
  int tmp ;
  {
  __mptr = (struct work_struct const *)work;
  c = (struct CommandList *)__mptr + 0xfffffffffffffd9cUL;
  cmd = c->scsi_cmd;
  dev = (struct hpsa_scsi_dev_t *)(cmd->device)->hostdata;
  if ((unsigned long )dev == (unsigned long )((struct hpsa_scsi_dev_t *)0)) {
    cmd->result = 65536;
    return;
  } else {
  }
  if ((unsigned long )c->reset_pending != (unsigned long )((struct hpsa_scsi_dev_t *)0)) {
    return;
  } else {
  }
  if (c->abort_pending != 0) {
    return;
  } else {
  }
  if (c->cmd_type == 5) {
    h = c->h;
    c2 = h->ioaccel2_cmd_pool + (unsigned long )c->cmdindex;
    if ((unsigned int )c2->error_data.serv_response == 40U) {
      rc = hpsa_ioaccel_submit(h, c, cmd, (unsigned char *)(& dev->scsi3addr));
      if (rc == 0) {
        return;
      } else {
      }
      if (rc == 4181) {
        cmd->result = 786432;
        return;
      } else {
      }
    } else {
    }
  } else {
  }
  hpsa_cmd_partial_init(c->h, (int )c->cmdindex, c);
  tmp = hpsa_ciss_submit(c->h, c, cmd, (unsigned char *)(& dev->scsi3addr));
  if (tmp != 0) {
    cmd->result = 786432;
    (*(cmd->scsi_done))(cmd);
  } else {
  }
  return;
}
}
static int hpsa_scsi_queue_command(struct Scsi_Host *sh , struct scsi_cmnd *cmd )
{
  struct ctlr_info *h ;
  struct hpsa_scsi_dev_t *dev ;
  unsigned char scsi3addr[8U] ;
  struct CommandList *c ;
  int rc ;
  long tmp ;
  u32 tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  {
  rc = 0;
  h = sdev_to_hba(cmd->device);
  tmp = ldv__builtin_expect((cmd->request)->tag < 0, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (4808), "i" (12UL));
    ldv_41767: ;
    goto ldv_41767;
  } else {
  }
  dev = (struct hpsa_scsi_dev_t *)(cmd->device)->hostdata;
  if ((unsigned long )dev == (unsigned long )((struct hpsa_scsi_dev_t *)0)) {
    cmd->result = 65536;
    (*(cmd->scsi_done))(cmd);
    return (0);
  } else {
  }
  memcpy((void *)(& scsi3addr), (void const *)(& dev->scsi3addr), 8UL);
  tmp___0 = lockup_detected(h);
  tmp___1 = ldv__builtin_expect(tmp___0 != 0U, 0L);
  if (tmp___1 != 0L) {
    cmd->result = 65536;
    (*(cmd->scsi_done))(cmd);
    return (0);
  } else {
  }
  c = cmd_tagged_alloc(h, cmd);
  tmp___2 = ldv__builtin_expect((long )((cmd->retries == 0 && (cmd->request)->cmd_type == 1U) && h->acciopath_status != 0),
                             1L);
  if (tmp___2 != 0L) {
    rc = hpsa_ioaccel_submit(h, c, cmd, (unsigned char *)(& scsi3addr));
    if (rc == 0) {
      return (0);
    } else {
    }
    if (rc == 4181) {
      hpsa_cmd_resolve_and_free(h, c);
      return (4181);
    } else {
    }
  } else {
  }
  tmp___3 = hpsa_ciss_submit(h, c, cmd, (unsigned char *)(& scsi3addr));
  return (tmp___3);
}
}
static void hpsa_scan_complete(struct ctlr_info *h )
{
  unsigned long flags ;
  {
  ldv_spin_lock();
  h->scan_finished = 1;
  __wake_up(& h->scan_wait_queue, 3U, 0, (void *)0);
  spin_unlock_irqrestore(& h->scan_lock, flags);
  return;
}
}
static void hpsa_scan_start(struct Scsi_Host *sh )
{
  struct ctlr_info *h ;
  struct ctlr_info *tmp ;
  unsigned long flags ;
  u32 tmp___0 ;
  long tmp___1 ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___2 ;
  u32 tmp___3 ;
  long tmp___4 ;
  {
  tmp = shost_to_hba(sh);
  h = tmp;
  tmp___0 = lockup_detected(h);
  tmp___1 = ldv__builtin_expect(tmp___0 != 0U, 0L);
  if (tmp___1 != 0L) {
    return;
  } else {
  }
  ldv_41786:
  ldv_spin_lock();
  if (h->scan_finished != 0) {
    goto ldv_41777;
  } else {
  }
  spin_unlock_irqrestore(& h->scan_lock, flags);
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c",
                4874, 0);
  if (h->scan_finished != 0) {
    goto ldv_41778;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_41784:
  tmp___2 = prepare_to_wait_event(& h->scan_wait_queue, & __wait, 2);
  __int = tmp___2;
  if (h->scan_finished != 0) {
    goto ldv_41783;
  } else {
  }
  schedule();
  goto ldv_41784;
  ldv_41783:
  finish_wait(& h->scan_wait_queue, & __wait);
  ldv_41778: ;
  goto ldv_41786;
  ldv_41777:
  h->scan_finished = 0;
  spin_unlock_irqrestore(& h->scan_lock, flags);
  tmp___3 = lockup_detected(h);
  tmp___4 = ldv__builtin_expect(tmp___3 != 0U, 0L);
  if (tmp___4 != 0L) {
    return;
  } else {
  }
  hpsa_update_scsi_devices(h, (int )(h->scsi_host)->host_no);
  hpsa_scan_complete(h);
  return;
}
}
static int hpsa_change_queue_depth(struct scsi_device *sdev , int qdepth )
{
  struct hpsa_scsi_dev_t *logical_drive ;
  int tmp ;
  {
  logical_drive = (struct hpsa_scsi_dev_t *)sdev->hostdata;
  if ((unsigned long )logical_drive == (unsigned long )((struct hpsa_scsi_dev_t *)0)) {
    return (-19);
  } else {
  }
  if (qdepth <= 0) {
    qdepth = 1;
  } else
  if ((int )logical_drive->queue_depth < qdepth) {
    qdepth = (int )logical_drive->queue_depth;
  } else {
  }
  tmp = scsi_change_queue_depth(sdev, qdepth);
  return (tmp);
}
}
static int hpsa_scan_finished(struct Scsi_Host *sh , unsigned long elapsed_time )
{
  struct ctlr_info *h ;
  struct ctlr_info *tmp ;
  unsigned long flags ;
  int finished ;
  {
  tmp = shost_to_hba(sh);
  h = tmp;
  ldv_spin_lock();
  finished = h->scan_finished;
  spin_unlock_irqrestore(& h->scan_lock, flags);
  return (finished);
}
}
static int hpsa_scsi_host_alloc(struct ctlr_info *h )
{
  struct Scsi_Host *sh ;
  int error ;
  {
  sh = ldv_scsi_host_alloc_31(& hpsa_driver_template, 8);
  if ((unsigned long )sh == (unsigned long )((struct Scsi_Host *)0)) {
    dev_err((struct device const *)(& (h->pdev)->dev), "scsi_host_alloc failed\n");
    return (-12);
  } else {
  }
  sh->io_port = 0UL;
  sh->n_io_port = 0U;
  sh->this_id = -1;
  sh->max_channel = 3U;
  sh->max_cmd_len = 16U;
  sh->max_lun = 1024ULL;
  sh->max_id = 1024U;
  sh->can_queue = h->nr_cmds + -13;
  sh->cmd_per_lun = (short )sh->can_queue;
  sh->sg_tablesize = (unsigned short )h->maxsgentries;
  sh->hostdata[0] = (unsigned long )h;
  sh->irq = h->intr[h->intr_mode];
  sh->unique_id = sh->irq;
  error = scsi_init_shared_tag_map(sh, sh->can_queue);
  if (error != 0) {
    dev_err((struct device const *)(& (h->pdev)->dev), "%s: scsi_init_shared_tag_map failed for controller %d\n",
            "hpsa_scsi_host_alloc", h->ctlr);
    scsi_host_put(sh);
    return (error);
  } else {
  }
  h->scsi_host = sh;
  return (0);
}
}
static int hpsa_scsi_add_host(struct ctlr_info *h )
{
  int rv ;
  {
  rv = scsi_add_host(h->scsi_host, & (h->pdev)->dev);
  if (rv != 0) {
    dev_err((struct device const *)(& (h->pdev)->dev), "scsi_add_host failed\n");
    return (rv);
  } else {
  }
  scsi_scan_host(h->scsi_host);
  return (0);
}
}
static int hpsa_get_cmd_index(struct scsi_cmnd *scmd )
{
  int idx ;
  {
  idx = (scmd->request)->tag;
  if (idx < 0) {
    return (idx);
  } else {
  }
  idx = idx + 13;
  return (idx);
}
}
static int hpsa_send_test_unit_ready(struct ctlr_info *h , struct CommandList *c ,
                                     unsigned char *lunaddr , int reply_queue )
{
  int rc ;
  {
  fill_cmd(c, 0, h, (void *)0, 0UL, 0, lunaddr, 0);
  rc = hpsa_scsi_do_simple_cmd(h, c, reply_queue, 0xffffffffffffffffUL);
  if (rc != 0) {
    return (rc);
  } else {
  }
  if ((unsigned int )(c->err_info)->CommandStatus == 0U) {
    return (0);
  } else {
  }
  if (((unsigned int )(c->err_info)->CommandStatus == 1U && (unsigned int )(c->err_info)->ScsiStatus == 2U) && ((unsigned int )(c->err_info)->SenseInfo[2] == 0U || (unsigned int )(c->err_info)->SenseInfo[2] == 6U)) {
    return (0);
  } else {
  }
  return (1);
}
}
static int hpsa_wait_for_test_unit_ready(struct ctlr_info *h , struct CommandList *c ,
                                         unsigned char *lunaddr , int reply_queue )
{
  int rc ;
  int count ;
  int waittime ;
  {
  count = 0;
  waittime = 1;
  count = 0;
  goto ldv_41831;
  ldv_41830:
  msleep((unsigned int )(waittime * 1000));
  rc = hpsa_send_test_unit_ready(h, c, lunaddr, reply_queue);
  if (rc == 0) {
    goto ldv_41829;
  } else {
  }
  if (waittime <= 29) {
    waittime = waittime * 2;
  } else {
  }
  dev_warn((struct device const *)(& (h->pdev)->dev), "waiting %d secs for device to become ready.\n",
           waittime);
  count = count + 1;
  ldv_41831: ;
  if (count <= 19) {
    goto ldv_41830;
  } else {
  }
  ldv_41829: ;
  return (rc);
}
}
static int wait_for_device_to_become_ready(struct ctlr_info *h , unsigned char *lunaddr ,
                                           int reply_queue )
{
  int first_queue ;
  int last_queue ;
  int rq ;
  int rc ;
  struct CommandList *c ;
  {
  rc = 0;
  c = cmd_alloc(h);
  if (reply_queue == -1) {
    first_queue = 0;
    last_queue = (int )h->nreply_queues + -1;
  } else {
    first_queue = reply_queue;
    last_queue = reply_queue;
  }
  rq = first_queue;
  goto ldv_41844;
  ldv_41843:
  rc = hpsa_wait_for_test_unit_ready(h, c, lunaddr, rq);
  if (rc != 0) {
    goto ldv_41842;
  } else {
  }
  rq = rq + 1;
  ldv_41844: ;
  if (rq <= last_queue) {
    goto ldv_41843;
  } else {
  }
  ldv_41842: ;
  if (rc != 0) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "giving up on device.\n");
  } else {
    dev_warn((struct device const *)(& (h->pdev)->dev), "device is ready.\n");
  }
  cmd_free(h, c);
  return (rc);
}
}
static int hpsa_eh_device_reset_handler(struct scsi_cmnd *scsicmd )
{
  int rc ;
  struct ctlr_info *h ;
  struct hpsa_scsi_dev_t *dev ;
  char msg[40U] ;
  u32 tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  h = sdev_to_hba(scsicmd->device);
  if ((unsigned long )h == (unsigned long )((struct ctlr_info *)0)) {
    return (8195);
  } else {
  }
  tmp = lockup_detected(h);
  if (tmp != 0U) {
    return (8195);
  } else {
  }
  dev = (struct hpsa_scsi_dev_t *)(scsicmd->device)->hostdata;
  if ((unsigned long )dev == (unsigned long )((struct hpsa_scsi_dev_t *)0)) {
    dev_err((struct device const *)(& (h->pdev)->dev), "%s: device lookup failed\n",
            "hpsa_eh_device_reset_handler");
    return (8195);
  } else {
  }
  tmp___1 = lockup_detected(h);
  if (tmp___1 != 0U) {
    tmp___0 = hpsa_get_cmd_index(scsicmd);
    sprintf((char *)(& msg), "cmd %d RESET FAILED, lockup detected", tmp___0);
    hpsa_show_dev_msg("\f", h, dev, (char *)(& msg));
    return (8195);
  } else {
  }
  tmp___3 = detect_controller_lockup(h);
  if (tmp___3 != 0) {
    tmp___2 = hpsa_get_cmd_index(scsicmd);
    sprintf((char *)(& msg), "cmd %d RESET FAILED, new lockup detected", tmp___2);
    hpsa_show_dev_msg("\f", h, dev, (char *)(& msg));
    return (8195);
  } else {
  }
  tmp___4 = is_hba_lunid((unsigned char *)(& dev->scsi3addr));
  if (tmp___4 != 0) {
    return (8194);
  } else {
  }
  hpsa_show_dev_msg("\f", h, dev, (char *)"resetting");
  rc = hpsa_do_reset(h, dev, (unsigned char *)(& dev->scsi3addr), 4, -1);
  sprintf((char *)(& msg), "reset %s", rc == 0 ? (char *)"completed successfully" : (char *)"failed");
  hpsa_show_dev_msg("\f", h, dev, (char *)(& msg));
  return (rc == 0 ? 8194 : 8195);
}
}
static void swizzle_abort_tag(u8 *tag )
{
  u8 original_tag[8U] ;
  {
  memcpy((void *)(& original_tag), (void const *)tag, 8UL);
  *tag = original_tag[3];
  *(tag + 1UL) = original_tag[2];
  *(tag + 2UL) = original_tag[1];
  *(tag + 3UL) = original_tag[0];
  *(tag + 4UL) = original_tag[7];
  *(tag + 5UL) = original_tag[6];
  *(tag + 6UL) = original_tag[5];
  *(tag + 7UL) = original_tag[4];
  return;
}
}
static void hpsa_get_tag(struct ctlr_info *h , struct CommandList *c , __le32 *taglower ,
                         __le32 *tagupper )
{
  u64 tag ;
  struct io_accel1_cmd *cm1 ;
  struct io_accel2_cmd *cm2 ;
  {
  if (c->cmd_type == 4) {
    cm1 = h->ioaccel_cmd_pool + (unsigned long )c->cmdindex;
    tag = cm1->tag;
    *tagupper = (unsigned int )(tag >> 32);
    *taglower = (unsigned int )tag;
    return;
  } else {
  }
  if (c->cmd_type == 5) {
    cm2 = h->ioaccel2_cmd_pool + (unsigned long )c->cmdindex;
    memset((void *)tagupper, 0, 4UL);
    *taglower = cm2->Tag;
    return;
  } else {
  }
  tag = c->Header.tag;
  *tagupper = (unsigned int )(tag >> 32);
  *taglower = (unsigned int )tag;
  return;
}
}
static int hpsa_send_abort(struct ctlr_info *h , unsigned char *scsi3addr , struct CommandList *abort ,
                           int reply_queue )
{
  int rc ;
  struct CommandList *c ;
  struct ErrorInfo *ei ;
  __le32 tagupper ;
  __le32 taglower ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  {
  rc = 0;
  c = cmd_alloc(h);
  fill_cmd(c, 0, h, (void *)(& abort->Header.tag), 0UL, 0, scsi3addr, 1);
  if (h->needs_abort_tags_swizzled != 0) {
    swizzle_abort_tag((u8 *)(& c->Request.CDB) + 4UL);
  } else {
  }
  hpsa_scsi_do_simple_cmd(h, c, reply_queue, 0xffffffffffffffffUL);
  hpsa_get_tag(h, abort, & taglower, & tagupper);
  descriptor.modname = "hpsa";
  descriptor.function = "hpsa_send_abort";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c";
  descriptor.format = "%s: Tag:0x%08x:%08x: do_simple_cmd(abort) completed.\n";
  descriptor.lineno = 5211U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (h->pdev)->dev), "%s: Tag:0x%08x:%08x: do_simple_cmd(abort) completed.\n",
                      "hpsa_send_abort", tagupper, taglower);
  } else {
  }
  ei = c->err_info;
  switch ((int )ei->CommandStatus) {
  case 0: ;
  goto ldv_41880;
  case 13:
  rc = hpsa_evaluate_tmf_status(h, c);
  goto ldv_41880;
  case 12:
  rc = -1;
  goto ldv_41880;
  default:
  descriptor___0.modname = "hpsa";
  descriptor___0.function = "hpsa_send_abort";
  descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c";
  descriptor___0.format = "%s: Tag:0x%08x:%08x: interpreting error.\n";
  descriptor___0.lineno = 5226U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (h->pdev)->dev),
                      "%s: Tag:0x%08x:%08x: interpreting error.\n", "hpsa_send_abort",
                      tagupper, taglower);
  } else {
  }
  hpsa_scsi_interpret_error(h, c);
  rc = -1;
  goto ldv_41880;
  }
  ldv_41880:
  cmd_free(h, c);
  descriptor___1.modname = "hpsa";
  descriptor___1.function = "hpsa_send_abort";
  descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c";
  descriptor___1.format = "%s: Tag:0x%08x:%08x: Finished.\n";
  descriptor___1.lineno = 5233U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& (h->pdev)->dev),
                      "%s: Tag:0x%08x:%08x: Finished.\n", "hpsa_send_abort", tagupper,
                      taglower);
  } else {
  }
  return (rc);
}
}
static void setup_ioaccel2_abort_cmd(struct CommandList *c , struct ctlr_info *h ,
                                     struct CommandList *command_to_abort , int reply_queue )
{
  struct io_accel2_cmd *c2 ;
  struct hpsa_tmf_struct *ac ;
  struct io_accel2_cmd *c2a ;
  struct scsi_cmnd *scmd ;
  struct hpsa_scsi_dev_t *dev ;
  long tmp ;
  long tmp___0 ;
  {
  c2 = h->ioaccel2_cmd_pool + (unsigned long )c->cmdindex;
  ac = (struct hpsa_tmf_struct *)c2;
  c2a = h->ioaccel2_cmd_pool + (unsigned long )command_to_abort->cmdindex;
  scmd = command_to_abort->scsi_cmd;
  dev = (struct hpsa_scsi_dev_t *)(scmd->device)->hostdata;
  tmp = ldv__builtin_expect(0L, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (5256), "i" (12UL));
    ldv_41897: ;
    goto ldv_41897;
  } else {
  }
  c->cmd_type = 6;
  c->scsi_cmd = (struct scsi_cmnd *)(& hpsa_cmd_busy);
  c->busaddr = (u32 )h->ioaccel2_cmd_pool_dhandle + (u32 )c->cmdindex * 640U;
  tmp___0 = ldv__builtin_expect((c->busaddr & 127U) != 0U, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (5264), "i" (12UL));
    ldv_41898: ;
    goto ldv_41898;
  } else {
  }
  memset((void *)ac, 0, 640UL);
  ac->iu_type = 65U;
  ac->reply_queue = (u8 )reply_queue;
  ac->tmf = 1U;
  ac->it_nexus = dev->ioaccel_handle;
  memset((void *)(& ac->lun_id), 0, 8UL);
  ac->tag = (unsigned long long )(c->cmdindex << 4);
  ac->abort_tag = (unsigned long long )c2a->Tag;
  ac->error_ptr = (unsigned long long )((unsigned long )c->busaddr + 512UL);
  ac->error_len = 52U;
  return;
}
}
static int hpsa_send_reset_as_abort_ioaccel2(struct ctlr_info *h , unsigned char *scsi3addr ,
                                             struct CommandList *abort , int reply_queue )
{
  int rc ;
  struct scsi_cmnd *scmd ;
  struct hpsa_scsi_dev_t *dev ;
  unsigned char phys_scsi3addr[8U] ;
  unsigned char *psa ;
  int tmp ;
  int tmp___0 ;
  {
  rc = 0;
  psa = (unsigned char *)(& phys_scsi3addr);
  scmd = abort->scsi_cmd;
  dev = (struct hpsa_scsi_dev_t *)(scmd->device)->hostdata;
  if ((unsigned long )dev == (unsigned long )((struct hpsa_scsi_dev_t *)0)) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "Cannot abort: no device pointer for command.\n");
    return (-1);
  } else {
  }
  if (h->raid_offload_debug > 0) {
    _dev_info((struct device const *)(& (h->pdev)->dev), "scsi %d:%d:%d:%d %s scsi3addr 0x%02x%02x%02x%02x%02x%02x%02x%02x\n",
              (h->scsi_host)->host_no, dev->bus, dev->target, dev->lun, (char *)"Reset as abort",
              (int )*scsi3addr, (int )*(scsi3addr + 1UL), (int )*(scsi3addr + 2UL),
              (int )*(scsi3addr + 3UL), (int )*(scsi3addr + 4UL), (int )*(scsi3addr + 5UL),
              (int )*(scsi3addr + 6UL), (int )*(scsi3addr + 7UL));
  } else {
  }
  if (dev->offload_enabled == 0) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "Can\'t abort: device is not operating in HP SSD Smart Path mode.\n");
    return (-1);
  } else {
  }
  tmp = hpsa_get_pdisk_of_ioaccel2(h, abort, psa);
  if (tmp == 0) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "Can\'t abort: Failed lookup of physical address.\n");
    return (-1);
  } else {
  }
  if (h->raid_offload_debug > 0) {
    _dev_info((struct device const *)(& (h->pdev)->dev), "Reset as abort: Resetting physical device at scsi3addr 0x%02x%02x%02x%02x%02x%02x%02x%02x\n",
              (int )*psa, (int )*(psa + 1UL), (int )*(psa + 2UL), (int )*(psa + 3UL),
              (int )*(psa + 4UL), (int )*(psa + 5UL), (int )*(psa + 6UL), (int )*(psa + 7UL));
  } else {
  }
  rc = hpsa_do_reset(h, dev, psa, 3, reply_queue);
  if (rc != 0) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "Reset as abort: Failed on physical device at scsi3addr 0x%02x%02x%02x%02x%02x%02x%02x%02x\n",
             (int )*psa, (int )*(psa + 1UL), (int )*(psa + 2UL), (int )*(psa + 3UL),
             (int )*(psa + 4UL), (int )*(psa + 5UL), (int )*(psa + 6UL), (int )*(psa + 7UL));
    return (rc);
  } else {
  }
  tmp___0 = wait_for_device_to_become_ready(h, psa, reply_queue);
  if (tmp___0 != 0) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "Reset as abort: Failed: Device never recovered from reset: 0x%02x%02x%02x%02x%02x%02x%02x%02x\n",
             (int )*psa, (int )*(psa + 1UL), (int )*(psa + 2UL), (int )*(psa + 3UL),
             (int )*(psa + 4UL), (int )*(psa + 5UL), (int )*(psa + 6UL), (int )*(psa + 7UL));
    return (-1);
  } else {
  }
  _dev_info((struct device const *)(& (h->pdev)->dev), "Reset as abort: Device recovered from reset: scsi3addr 0x%02x%02x%02x%02x%02x%02x%02x%02x\n",
            (int )*psa, (int )*(psa + 1UL), (int )*(psa + 2UL), (int )*(psa + 3UL),
            (int )*(psa + 4UL), (int )*(psa + 5UL), (int )*(psa + 6UL), (int )*(psa + 7UL));
  return (rc);
}
}
static int hpsa_send_abort_ioaccel2(struct ctlr_info *h , struct CommandList *abort ,
                                    int reply_queue )
{
  int rc ;
  struct CommandList *c ;
  __le32 taglower ;
  __le32 tagupper ;
  struct hpsa_scsi_dev_t *dev ;
  struct io_accel2_cmd *c2 ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  {
  rc = 0;
  dev = (struct hpsa_scsi_dev_t *)((abort->scsi_cmd)->device)->hostdata;
  if (dev->offload_enabled == 0 && dev->hba_ioaccel_enabled == 0) {
    return (-1);
  } else {
  }
  c = cmd_alloc(h);
  setup_ioaccel2_abort_cmd(c, h, abort, reply_queue);
  c2 = h->ioaccel2_cmd_pool + (unsigned long )c->cmdindex;
  hpsa_scsi_do_simple_cmd(h, c, reply_queue, 0xffffffffffffffffUL);
  hpsa_get_tag(h, abort, & taglower, & tagupper);
  descriptor.modname = "hpsa";
  descriptor.function = "hpsa_send_abort_ioaccel2";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c";
  descriptor.format = "%s: Tag:0x%08x:%08x: do_simple_cmd(ioaccel2 abort) completed.\n";
  descriptor.lineno = 5377U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (h->pdev)->dev), "%s: Tag:0x%08x:%08x: do_simple_cmd(ioaccel2 abort) completed.\n",
                      "hpsa_send_abort_ioaccel2", tagupper, taglower);
  } else {
  }
  descriptor___0.modname = "hpsa";
  descriptor___0.function = "hpsa_send_abort_ioaccel2";
  descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c";
  descriptor___0.format = "%s: Tag:0x%08x:%08x: abort service response = 0x%02x.\n";
  descriptor___0.lineno = 5382U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (h->pdev)->dev),
                      "%s: Tag:0x%08x:%08x: abort service response = 0x%02x.\n", "hpsa_send_abort_ioaccel2",
                      tagupper, taglower, (int )c2->error_data.serv_response);
  } else {
  }
  switch ((int )c2->error_data.serv_response) {
  case 2: ;
  case 3:
  rc = 0;
  goto ldv_41926;
  case 4: ;
  case 1: ;
  case 5:
  rc = -1;
  goto ldv_41926;
  default:
  dev_warn((struct device const *)(& (h->pdev)->dev), "%s: Tag:0x%08x:%08x: unknown abort service response 0x%02x\n",
           "hpsa_send_abort_ioaccel2", tagupper, taglower, (int )c2->error_data.serv_response);
  rc = -1;
  }
  ldv_41926:
  cmd_free(h, c);
  descriptor___1.modname = "hpsa";
  descriptor___1.function = "hpsa_send_abort_ioaccel2";
  descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c";
  descriptor___1.format = "%s: Tag:0x%08x:%08x: Finished.\n";
  descriptor___1.lineno = 5402U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)(& (h->pdev)->dev),
                      "%s: Tag:0x%08x:%08x: Finished.\n", "hpsa_send_abort_ioaccel2",
                      tagupper, taglower);
  } else {
  }
  return (rc);
}
}
static int hpsa_send_abort_both_ways(struct ctlr_info *h , unsigned char *scsi3addr ,
                                     struct CommandList *abort , int reply_queue )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if (abort->cmd_type == 5) {
    if ((h->TMFSupportFlags & 32768U) != 0U) {
      tmp = hpsa_send_abort_ioaccel2(h, abort, reply_queue);
      return (tmp);
    } else {
      tmp___0 = hpsa_send_reset_as_abort_ioaccel2(h, scsi3addr, abort, reply_queue);
      return (tmp___0);
    }
  } else {
  }
  tmp___1 = hpsa_send_abort(h, scsi3addr, abort, reply_queue);
  return (tmp___1);
}
}
static int hpsa_extract_reply_queue(struct ctlr_info *h , struct CommandList *c )
{
  {
  if (c->cmd_type == 5) {
    return ((int )(h->ioaccel2_cmd_pool + (unsigned long )c->cmdindex)->reply_queue);
  } else {
  }
  return ((int )c->Header.ReplyQueue);
}
}
__inline static int wait_for_available_abort_cmd(struct ctlr_info *h )
{
  long __ret ;
  unsigned long tmp ;
  wait_queue_t __wait ;
  long __ret___0 ;
  unsigned long tmp___0 ;
  long __int ;
  long tmp___1 ;
  bool __cond ;
  int tmp___2 ;
  bool __cond___0 ;
  int tmp___3 ;
  {
  tmp = msecs_to_jiffies(5000U);
  __ret = (long )tmp;
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c",
                5444, 0);
  tmp___3 = atomic_dec_if_positive(& h->abort_cmds_available);
  __cond___0 = tmp___3 >= 0;
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    tmp___0 = msecs_to_jiffies(5000U);
    __ret___0 = (long )tmp___0;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_41955:
    tmp___1 = prepare_to_wait_event(& h->abort_cmd_wait_queue, & __wait, 2);
    __int = tmp___1;
    tmp___2 = atomic_dec_if_positive(& h->abort_cmds_available);
    __cond = tmp___2 >= 0;
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_41954;
    } else {
    }
    __ret___0 = schedule_timeout(__ret___0);
    goto ldv_41955;
    ldv_41954:
    finish_wait(& h->abort_cmd_wait_queue, & __wait);
    __ret = __ret___0;
  } else {
  }
  return (__ret == 0L);
}
}
static int hpsa_eh_abort_handler(struct scsi_cmnd *sc )
{
  int rc ;
  struct ctlr_info *h ;
  struct hpsa_scsi_dev_t *dev ;
  struct CommandList *abort ;
  struct scsi_cmnd *as ;
  char msg[256U] ;
  int ml ;
  __le32 tagupper ;
  __le32 taglower ;
  int refcount ;
  int reply_queue ;
  u32 tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___6 ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  {
  ml = 0;
  if ((unsigned long )sc == (unsigned long )((struct scsi_cmnd *)0)) {
    return (8195);
  } else {
  }
  if ((unsigned long )sc->device == (unsigned long )((struct scsi_device *)0)) {
    return (8195);
  } else {
  }
  h = sdev_to_hba(sc->device);
  if ((unsigned long )h == (unsigned long )((struct ctlr_info *)0)) {
    return (8195);
  } else {
  }
  dev = (struct hpsa_scsi_dev_t *)(sc->device)->hostdata;
  if ((unsigned long )dev == (unsigned long )((struct hpsa_scsi_dev_t *)0)) {
    dev_err((struct device const *)(& (h->pdev)->dev), "%s FAILED, Device lookup failed.\n",
            (char *)(& msg));
    return (8195);
  } else {
  }
  tmp = lockup_detected(h);
  if (tmp != 0U) {
    hpsa_show_dev_msg("\f", h, dev, (char *)"ABORT FAILED, lockup detected");
    return (8195);
  } else {
  }
  tmp___0 = detect_controller_lockup(h);
  if (tmp___0 != 0) {
    hpsa_show_dev_msg("\f", h, dev, (char *)"ABORT FAILED, new lockup detected");
    return (8195);
  } else {
  }
  if ((h->TMFSupportFlags & 8U) == 0U && (h->TMFSupportFlags & 524288U) == 0U) {
    return (8195);
  } else {
  }
  memset((void *)(& msg), 0, 256UL);
  tmp___1 = sprintf((char *)(& msg) + (unsigned long )ml, "scsi %d:%d:%d:%llu %s %p",
                    (h->scsi_host)->host_no, (sc->device)->channel, (sc->device)->id,
                    (sc->device)->lun, (char *)"Aborting command", sc);
  ml = tmp___1 + ml;
  abort = (struct CommandList *)sc->host_scribble;
  if ((unsigned long )abort == (unsigned long )((struct CommandList *)0)) {
    return (8194);
  } else {
  }
  refcount = atomic_add_return(1, & abort->refcount);
  if (refcount == 1) {
    cmd_free(h, abort);
    return (8194);
  } else {
  }
  if ((abort->cmd_type != 5 && abort->cmd_type != 4) && dev->supports_aborts == 0) {
    cmd_free(h, abort);
    return (8195);
  } else {
  }
  if ((unsigned long )abort->scsi_cmd != (unsigned long )sc) {
    cmd_free(h, abort);
    return (8194);
  } else {
  }
  abort->abort_pending = 1;
  hpsa_get_tag(h, abort, & taglower, & tagupper);
  reply_queue = hpsa_extract_reply_queue(h, abort);
  tmp___2 = sprintf((char *)(& msg) + (unsigned long )ml, "Tag:0x%08x:%08x ", tagupper,
                    taglower);
  ml = tmp___2 + ml;
  as = abort->scsi_cmd;
  if ((unsigned long )as != (unsigned long )((struct scsi_cmnd *)0)) {
    tmp___3 = sprintf((char *)(& msg) + (unsigned long )ml, "CDBLen: %d CDB: 0x%02x%02x... SN: 0x%lx ",
                      (int )as->cmd_len, (int )*(as->cmnd), (int )*(as->cmnd + 1UL),
                      as->serial_number);
    ml = tmp___3 + ml;
  } else {
  }
  dev_warn((struct device const *)(& (h->pdev)->dev), "%s BEING SENT\n", (char *)(& msg));
  hpsa_show_dev_msg("\f", h, dev, (char *)"Aborting command");
  tmp___4 = wait_for_available_abort_cmd(h);
  if (tmp___4 != 0) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "%s FAILED, timeout waiting for an abort command to become available.\n",
             (char *)(& msg));
    cmd_free(h, abort);
    return (8195);
  } else {
  }
  rc = hpsa_send_abort_both_ways(h, (unsigned char *)(& dev->scsi3addr), abort, reply_queue);
  atomic_inc(& h->abort_cmds_available);
  __wake_up(& h->abort_cmd_wait_queue, 3U, 0, (void *)0);
  if (rc != 0) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "%s SENT, FAILED\n", (char *)(& msg));
    hpsa_show_dev_msg("\f", h, dev, (char *)"FAILED to abort command");
    cmd_free(h, abort);
    return (8195);
  } else {
  }
  _dev_info((struct device const *)(& (h->pdev)->dev), "%s SENT, SUCCESS\n", (char *)(& msg));
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c",
                5573, 0);
  if ((unsigned long )abort->scsi_cmd != (unsigned long )sc) {
    goto ldv_41972;
  } else {
    tmp___5 = lockup_detected(h);
    if (tmp___5 != 0U) {
      goto ldv_41972;
    } else {
    }
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_41978:
  tmp___6 = prepare_to_wait_event(& h->event_sync_wait_queue, & __wait, 2);
  __int = tmp___6;
  if ((unsigned long )abort->scsi_cmd != (unsigned long )sc) {
    goto ldv_41977;
  } else {
    tmp___7 = lockup_detected(h);
    if (tmp___7 != 0U) {
      goto ldv_41977;
    } else {
    }
  }
  schedule();
  goto ldv_41978;
  ldv_41977:
  finish_wait(& h->event_sync_wait_queue, & __wait);
  ldv_41972:
  cmd_free(h, abort);
  tmp___8 = lockup_detected(h);
  return (tmp___8 == 0U ? 8194 : 8195);
}
}
static struct CommandList *cmd_tagged_alloc(struct ctlr_info *h , struct scsi_cmnd *scmd )
{
  int idx ;
  int tmp ;
  struct CommandList *c ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = hpsa_get_cmd_index(scmd);
  idx = tmp;
  c = h->cmd_pool + (unsigned long )idx;
  if (idx <= 12 || h->nr_cmds <= idx) {
    dev_err((struct device const *)(& (h->pdev)->dev), "Bad block tag: %d not in [%d..%d]\n",
            idx, 13, h->nr_cmds + -1);
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (5596), "i" (12UL));
    ldv_41986: ;
    goto ldv_41986;
  } else {
  }
  atomic_inc(& c->refcount);
  tmp___0 = hpsa_is_cmd_idle(c);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  tmp___2 = ldv__builtin_expect((long )tmp___1, 0L);
  if (tmp___2 != 0L) {
    dev_err((struct device const *)(& (h->pdev)->dev), "tag collision (tag=%d) in cmd_tagged_alloc().\n",
            idx);
    if ((unsigned long )c->scsi_cmd != (unsigned long )((struct scsi_cmnd *)0)) {
      scsi_print_command(c->scsi_cmd);
    } else {
    }
    scsi_print_command(scmd);
  } else {
  }
  hpsa_cmd_partial_init(h, idx, c);
  return (c);
}
}
static void cmd_tagged_free(struct ctlr_info *h , struct CommandList *c )
{
  {
  atomic_dec(& c->refcount);
  return;
}
}
static struct CommandList *cmd_alloc(struct ctlr_info *h )
{
  struct CommandList *c ;
  int refcount ;
  int i ;
  int offset ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  offset = 0;
  ldv_42000:
  tmp = find_next_zero_bit((unsigned long const *)h->cmd_pool_bits, 13UL, (unsigned long )offset);
  i = (int )tmp;
  tmp___0 = ldv__builtin_expect(i > 12, 0L);
  if (tmp___0 != 0L) {
    offset = 0;
    goto ldv_41998;
  } else {
  }
  c = h->cmd_pool + (unsigned long )i;
  refcount = atomic_add_return(1, & c->refcount);
  tmp___1 = ldv__builtin_expect(refcount > 1, 0L);
  if (tmp___1 != 0L) {
    cmd_free(h, c);
    offset = (i + 1) % 13;
    goto ldv_41998;
  } else {
  }
  set_bit((long )i & 63L, (unsigned long volatile *)h->cmd_pool_bits + (unsigned long )(i / 64));
  goto ldv_41999;
  ldv_41998: ;
  goto ldv_42000;
  ldv_41999:
  hpsa_cmd_partial_init(h, i, c);
  return (c);
}
}
static void cmd_free(struct ctlr_info *h , struct CommandList *c )
{
  int i ;
  int tmp ;
  {
  tmp = atomic_dec_and_test(& c->refcount);
  if (tmp != 0) {
    i = (int )(((long )c - (long )h->cmd_pool) / 768L);
    clear_bit((long )i & 63L, (unsigned long volatile *)h->cmd_pool_bits + (unsigned long )(i / 64));
  } else {
  }
  return;
}
}
static int hpsa_ioctl32_passthru(struct scsi_device *dev , int cmd , void *arg )
{
  IOCTL32_Command_struct *arg32 ;
  IOCTL_Command_struct arg64 ;
  IOCTL_Command_struct *p ;
  void *tmp ;
  int err ;
  u32 cp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  int __ret_gu___0 ;
  register unsigned long __val_gu___0 ;
  void *tmp___3 ;
  unsigned long tmp___4 ;
  unsigned long tmp___5 ;
  {
  arg32 = (IOCTL32_Command_struct *)arg;
  tmp = compat_alloc_user_space(88UL);
  p = (IOCTL_Command_struct *)tmp;
  memset((void *)(& arg64), 0, 88UL);
  err = 0;
  tmp___0 = copy_from_user((void *)(& arg64.LUN_info), (void const *)(& arg32->LUN_info),
                           8UL);
  err = (int )((unsigned int )tmp___0 | (unsigned int )err);
  tmp___1 = copy_from_user((void *)(& arg64.Request), (void const *)(& arg32->Request),
                           20UL);
  err = (int )((unsigned int )tmp___1 | (unsigned int )err);
  tmp___2 = copy_from_user((void *)(& arg64.error_info), (void const *)(& arg32->error_info),
                           48UL);
  err = (int )((unsigned int )tmp___2 | (unsigned int )err);
  __might_fault("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c",
                5724);
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" (& arg32->buf_size),
                       "i" (2UL));
  arg64.buf_size = (unsigned short )__val_gu;
  err = __ret_gu | err;
  __might_fault("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c",
                5725);
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___0), "=r" (__val_gu___0): "0" (& arg32->buf),
                       "i" (4UL));
  cp = (unsigned int )__val_gu___0;
  err = __ret_gu___0 | err;
  tmp___3 = compat_ptr(cp);
  arg64.buf = (__u8 *)tmp___3;
  tmp___4 = copy_to_user((void *)p, (void const *)(& arg64), 88UL);
  err = (int )((unsigned int )tmp___4 | (unsigned int )err);
  if (err != 0) {
    return (-14);
  } else {
  }
  err = hpsa_ioctl(dev, -1067957749, (void *)p);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp___5 = copy_in_user((void *)(& arg32->error_info), (void const *)(& p->error_info),
                         48U);
  err = (int )((unsigned int )tmp___5 | (unsigned int )err);
  if (err != 0) {
    return (-14);
  } else {
  }
  return (err);
}
}
static int hpsa_ioctl32_big_passthru(struct scsi_device *dev , int cmd , void *arg )
{
  BIG_IOCTL32_Command_struct *arg32 ;
  BIG_IOCTL_Command_struct arg64 ;
  BIG_IOCTL_Command_struct *p ;
  void *tmp ;
  int err ;
  u32 cp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  int __ret_gu___0 ;
  register unsigned long __val_gu___0 ;
  int __ret_gu___1 ;
  register unsigned long __val_gu___1 ;
  void *tmp___3 ;
  unsigned long tmp___4 ;
  unsigned long tmp___5 ;
  {
  arg32 = (BIG_IOCTL32_Command_struct *)arg;
  tmp = compat_alloc_user_space(96UL);
  p = (BIG_IOCTL_Command_struct *)tmp;
  memset((void *)(& arg64), 0, 96UL);
  err = 0;
  tmp___0 = copy_from_user((void *)(& arg64.LUN_info), (void const *)(& arg32->LUN_info),
                           8UL);
  err = (int )((unsigned int )tmp___0 | (unsigned int )err);
  tmp___1 = copy_from_user((void *)(& arg64.Request), (void const *)(& arg32->Request),
                           20UL);
  err = (int )((unsigned int )tmp___1 | (unsigned int )err);
  tmp___2 = copy_from_user((void *)(& arg64.error_info), (void const *)(& arg32->error_info),
                           48UL);
  err = (int )((unsigned int )tmp___2 | (unsigned int )err);
  __might_fault("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c",
                5761);
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" (& arg32->buf_size),
                       "i" (4UL));
  arg64.buf_size = (unsigned int )__val_gu;
  err = __ret_gu | err;
  __might_fault("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c",
                5762);
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___0), "=r" (__val_gu___0): "0" (& arg32->malloc_size),
                       "i" (4UL));
  arg64.malloc_size = (unsigned int )__val_gu___0;
  err = __ret_gu___0 | err;
  __might_fault("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c",
                5763);
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___1), "=r" (__val_gu___1): "0" (& arg32->buf),
                       "i" (4UL));
  cp = (unsigned int )__val_gu___1;
  err = __ret_gu___1 | err;
  tmp___3 = compat_ptr(cp);
  arg64.buf = (__u8 *)tmp___3;
  tmp___4 = copy_to_user((void *)p, (void const *)(& arg64), 96UL);
  err = (int )((unsigned int )tmp___4 | (unsigned int )err);
  if (err != 0) {
    return (-14);
  } else {
  }
  err = hpsa_ioctl(dev, -1067433454, (void *)p);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp___5 = copy_in_user((void *)(& arg32->error_info), (void const *)(& p->error_info),
                         48U);
  err = (int )((unsigned int )tmp___5 | (unsigned int )err);
  if (err != 0) {
    return (-14);
  } else {
  }
  return (err);
}
}
static int hpsa_compat_ioctl(struct scsi_device *dev , int cmd , void *arg )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  switch (cmd) {
  case -2146942463: ;
  case -2146942462: ;
  case 1074283011: ;
  case -2146418172: ;
  case 1074807301: ;
  case -2147204602: ;
  case -2147204601: ;
  case -2147204600: ;
  case -2147204599: ;
  case 16906: ;
  case 16908: ;
  case 1074020877: ;
  case 16910: ;
  case 16912: ;
  case -2146680303:
  tmp = hpsa_ioctl(dev, cmd, arg);
  return (tmp);
  case -1068219893:
  tmp___0 = hpsa_ioctl32_passthru(dev, cmd, arg);
  return (tmp___0);
  case -1067957742:
  tmp___1 = hpsa_ioctl32_big_passthru(dev, cmd, arg);
  return (tmp___1);
  default: ;
  return (-515);
  }
}
}
static int hpsa_getpciinfo_ioctl(struct ctlr_info *h , void *argp )
{
  struct hpsa_pci_info pciinfo ;
  int tmp ;
  unsigned long tmp___0 ;
  {
  if ((unsigned long )argp == (unsigned long )((void *)0)) {
    return (-22);
  } else {
  }
  tmp = pci_domain_nr((h->pdev)->bus);
  pciinfo.domain = (unsigned short )tmp;
  pciinfo.bus = ((h->pdev)->bus)->number;
  pciinfo.dev_fn = (unsigned char )(h->pdev)->devfn;
  pciinfo.board_id = h->board_id;
  tmp___0 = copy_to_user(argp, (void const *)(& pciinfo), 8UL);
  if (tmp___0 != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int hpsa_getdrivver_ioctl(struct ctlr_info *h , void *argp )
{
  DriverVer_type DriverVer ;
  unsigned char vmaj ;
  unsigned char vmin ;
  unsigned char vsubmin ;
  int rc ;
  unsigned long tmp ;
  {
  rc = sscanf("3.4.10-0", "%hhu.%hhu.%hhu", & vmaj, & vmin, & vsubmin);
  if (rc != 3) {
    _dev_info((struct device const *)(& (h->pdev)->dev), "driver version string \'%s\' unrecognized.",
              (char *)"3.4.10-0");
    vmaj = 0U;
    vmin = 0U;
    vsubmin = 0U;
  } else {
  }
  DriverVer = (DriverVer_type )((((int )vmaj << 16) | ((int )vmin << 8)) | (int )vsubmin);
  if ((unsigned long )argp == (unsigned long )((void *)0)) {
    return (-22);
  } else {
  }
  tmp = copy_to_user(argp, (void const *)(& DriverVer), 4UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int hpsa_passthru_ioctl(struct ctlr_info *h , void *argp )
{
  IOCTL_Command_struct iocommand ;
  struct CommandList *c ;
  char *buff ;
  u64 temp64 ;
  int rc ;
  bool tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  void *tmp___2 ;
  unsigned long tmp___3 ;
  int tmp___4 ;
  unsigned long tmp___5 ;
  unsigned long tmp___6 ;
  {
  buff = (char *)0;
  rc = 0;
  if ((unsigned long )argp == (unsigned long )((void *)0)) {
    return (-22);
  } else {
  }
  tmp = capable(17);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-1);
  } else {
  }
  tmp___1 = copy_from_user((void *)(& iocommand), (void const *)argp, 88UL);
  if (tmp___1 != 0UL) {
    return (-14);
  } else {
  }
  if ((unsigned int )iocommand.buf_size == 0U && (unsigned int )*((unsigned char *)(& iocommand) + 9UL) != 0U) {
    return (-22);
  } else {
  }
  if ((unsigned int )iocommand.buf_size != 0U) {
    tmp___2 = kmalloc((size_t )iocommand.buf_size, 208U);
    buff = (char *)tmp___2;
    if ((unsigned long )buff == (unsigned long )((char *)0)) {
      return (-12);
    } else {
    }
    if ((int )iocommand.Request.Type.Direction & 1) {
      tmp___3 = copy_from_user((void *)buff, (void const *)iocommand.buf, (unsigned long )iocommand.buf_size);
      if (tmp___3 != 0UL) {
        rc = -14;
        goto out_kfree;
      } else {
      }
    } else {
      memset((void *)buff, 0, (size_t )iocommand.buf_size);
    }
  } else {
  }
  c = cmd_alloc(h);
  c->cmd_type = 1;
  c->scsi_cmd = (struct scsi_cmnd *)(& hpsa_cmd_busy);
  c->Header.ReplyQueue = 0U;
  if ((unsigned int )iocommand.buf_size != 0U) {
    c->Header.SGList = 1U;
    c->Header.SGTotal = 1U;
  } else {
    c->Header.SGList = 0U;
    c->Header.SGTotal = 0U;
  }
  memcpy((void *)(& c->Header.LUN), (void const *)(& iocommand.LUN_info), 8UL);
  memcpy((void *)(& c->Request), (void const *)(& iocommand.Request), 20UL);
  if ((unsigned int )iocommand.buf_size != 0U) {
    temp64 = pci_map_single(h->pdev, (void *)buff, (size_t )iocommand.buf_size, 0);
    tmp___4 = dma_mapping_error(& (h->pdev)->dev, temp64);
    if (tmp___4 != 0) {
      c->SG[0].Addr = 0ULL;
      c->SG[0].Len = 0U;
      rc = -12;
      goto out;
    } else {
    }
    c->SG[0].Addr = temp64;
    c->SG[0].Len = (unsigned int )iocommand.buf_size;
    c->SG[0].Ext = 1073741824U;
  } else {
  }
  rc = hpsa_scsi_do_simple_cmd(h, c, -1, 0xffffffffffffffffUL);
  if ((unsigned int )iocommand.buf_size != 0U) {
    hpsa_pci_unmap(h->pdev, c, 1, 0);
  } else {
  }
  check_ioctl_unit_attention(h, c);
  if (rc != 0) {
    rc = -5;
    goto out;
  } else {
  }
  memcpy((void *)(& iocommand.error_info), (void const *)c->err_info, 48UL);
  tmp___5 = copy_to_user(argp, (void const *)(& iocommand), 88UL);
  if (tmp___5 != 0UL) {
    rc = -14;
    goto out;
  } else {
  }
  if (((int )iocommand.Request.Type.Direction & 2) != 0 && (unsigned int )iocommand.buf_size != 0U) {
    tmp___6 = copy_to_user((void *)iocommand.buf, (void const *)buff, (unsigned long )iocommand.buf_size);
    if (tmp___6 != 0UL) {
      rc = -14;
      goto out;
    } else {
    }
  } else {
  }
  out:
  cmd_free(h, c);
  out_kfree:
  kfree((void const *)buff);
  return (rc);
}
}
static int hpsa_big_passthru_ioctl(struct ctlr_info *h , void *argp )
{
  BIG_IOCTL_Command_struct *ioc ;
  struct CommandList *c ;
  unsigned char **buff ;
  int *buff_size ;
  u64 temp64 ;
  __u8 sg_used ;
  int status ;
  u32 left ;
  u32 sz ;
  __u8 *data_ptr ;
  bool tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  unsigned long tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  unsigned long tmp___6 ;
  int i ;
  int tmp___7 ;
  unsigned long tmp___8 ;
  int i___0 ;
  __u8 *ptr ;
  unsigned long tmp___9 ;
  int i___1 ;
  {
  buff = (unsigned char **)0U;
  buff_size = (int *)0;
  sg_used = 0U;
  status = 0;
  if ((unsigned long )argp == (unsigned long )((void *)0)) {
    return (-22);
  } else {
  }
  tmp = capable(17);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-1);
  } else {
  }
  tmp___1 = kmalloc(96UL, 208U);
  ioc = (BIG_IOCTL_Command_struct *)tmp___1;
  if ((unsigned long )ioc == (unsigned long )((BIG_IOCTL_Command_struct *)0)) {
    status = -12;
    goto cleanup1;
  } else {
  }
  tmp___2 = copy_from_user((void *)ioc, (void const *)argp, 96UL);
  if (tmp___2 != 0UL) {
    status = -14;
    goto cleanup1;
  } else {
  }
  if (ioc->buf_size == 0U && (unsigned int )*((unsigned char *)ioc + 9UL) != 0U) {
    status = -22;
    goto cleanup1;
  } else {
  }
  if (ioc->malloc_size > 128000U) {
    status = -22;
    goto cleanup1;
  } else {
  }
  if (ioc->buf_size > ioc->malloc_size * 32U) {
    status = -22;
    goto cleanup1;
  } else {
  }
  tmp___3 = kmalloc(256UL, 208U);
  buff = (unsigned char **)tmp___3;
  if ((unsigned long )buff == (unsigned long )((unsigned char **)0U)) {
    status = -12;
    goto cleanup1;
  } else {
  }
  tmp___4 = kmalloc(128UL, 208U);
  buff_size = (int *)tmp___4;
  if ((unsigned long )buff_size == (unsigned long )((int *)0)) {
    status = -12;
    goto cleanup1;
  } else {
  }
  left = ioc->buf_size;
  data_ptr = ioc->buf;
  goto ldv_42105;
  ldv_42104:
  sz = left < ioc->malloc_size ? left : ioc->malloc_size;
  *(buff_size + (unsigned long )sg_used) = (int )sz;
  tmp___5 = kmalloc((size_t )sz, 208U);
  *(buff + (unsigned long )sg_used) = (unsigned char *)tmp___5;
  if ((unsigned long )*(buff + (unsigned long )sg_used) == (unsigned long )((unsigned char *)0U)) {
    status = -12;
    goto cleanup1;
  } else {
  }
  if ((int )ioc->Request.Type.Direction & 1) {
    tmp___6 = copy_from_user((void *)*(buff + (unsigned long )sg_used), (void const *)data_ptr,
                             (unsigned long )sz);
    if (tmp___6 != 0UL) {
      status = -14;
      goto cleanup1;
    } else {
    }
  } else {
    memset((void *)*(buff + (unsigned long )sg_used), 0, (size_t )sz);
  }
  left = left - sz;
  data_ptr = data_ptr + (unsigned long )sz;
  sg_used = (__u8 )((int )sg_used + 1);
  ldv_42105: ;
  if (left != 0U) {
    goto ldv_42104;
  } else {
  }
  c = cmd_alloc(h);
  c->cmd_type = 1;
  c->scsi_cmd = (struct scsi_cmnd *)(& hpsa_cmd_busy);
  c->Header.ReplyQueue = 0U;
  c->Header.SGList = sg_used;
  c->Header.SGTotal = (unsigned short )sg_used;
  memcpy((void *)(& c->Header.LUN), (void const *)(& ioc->LUN_info), 8UL);
  memcpy((void *)(& c->Request), (void const *)(& ioc->Request), 20UL);
  if (ioc->buf_size != 0U) {
    i = 0;
    goto ldv_42110;
    ldv_42109:
    temp64 = pci_map_single(h->pdev, (void *)*(buff + (unsigned long )i), (size_t )*(buff_size + (unsigned long )i),
                            0);
    tmp___7 = dma_mapping_error(& (h->pdev)->dev, temp64);
    if (tmp___7 != 0) {
      c->SG[i].Addr = 0ULL;
      c->SG[i].Len = 0U;
      hpsa_pci_unmap(h->pdev, c, i, 0);
      status = -12;
      goto cleanup0;
    } else {
    }
    c->SG[i].Addr = temp64;
    c->SG[i].Len = (unsigned int )*(buff_size + (unsigned long )i);
    c->SG[i].Ext = 0U;
    i = i + 1;
    ldv_42110: ;
    if ((int )sg_used > i) {
      goto ldv_42109;
    } else {
    }
    i = i - 1;
    c->SG[i].Ext = 1073741824U;
  } else {
  }
  status = hpsa_scsi_do_simple_cmd(h, c, -1, 0xffffffffffffffffUL);
  if ((unsigned int )sg_used != 0U) {
    hpsa_pci_unmap(h->pdev, c, (int )sg_used, 0);
  } else {
  }
  check_ioctl_unit_attention(h, c);
  if (status != 0) {
    status = -5;
    goto cleanup0;
  } else {
  }
  memcpy((void *)(& ioc->error_info), (void const *)c->err_info, 48UL);
  tmp___8 = copy_to_user(argp, (void const *)ioc, 96UL);
  if (tmp___8 != 0UL) {
    status = -14;
    goto cleanup0;
  } else {
  }
  if (((int )ioc->Request.Type.Direction & 2) != 0 && ioc->buf_size != 0U) {
    ptr = ioc->buf;
    i___0 = 0;
    goto ldv_42115;
    ldv_42114:
    tmp___9 = copy_to_user((void *)ptr, (void const *)*(buff + (unsigned long )i___0),
                           (unsigned long )*(buff_size + (unsigned long )i___0));
    if (tmp___9 != 0UL) {
      status = -14;
      goto cleanup0;
    } else {
    }
    ptr = ptr + (unsigned long )*(buff_size + (unsigned long )i___0);
    i___0 = i___0 + 1;
    ldv_42115: ;
    if ((int )sg_used > i___0) {
      goto ldv_42114;
    } else {
    }
  } else {
  }
  status = 0;
  cleanup0:
  cmd_free(h, c);
  cleanup1: ;
  if ((unsigned long )buff != (unsigned long )((unsigned char **)0U)) {
    i___1 = 0;
    goto ldv_42119;
    ldv_42118:
    kfree((void const *)*(buff + (unsigned long )i___1));
    i___1 = i___1 + 1;
    ldv_42119: ;
    if ((int )sg_used > i___1) {
      goto ldv_42118;
    } else {
    }
    kfree((void const *)buff);
  } else {
  }
  kfree((void const *)buff_size);
  kfree((void const *)ioc);
  return (status);
}
}
static void check_ioctl_unit_attention(struct ctlr_info *h , struct CommandList *c )
{
  {
  if ((unsigned int )(c->err_info)->CommandStatus == 1U && (unsigned int )(c->err_info)->ScsiStatus != 2U) {
    check_for_unit_attention(h, c);
  } else {
  }
  return;
}
}
static int hpsa_ioctl(struct scsi_device *dev , int cmd , void *arg )
{
  struct ctlr_info *h ;
  void *argp ;
  int rc ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  argp = arg;
  h = sdev_to_hba(dev);
  switch (cmd) {
  case 16908: ;
  case 1074020877: ;
  case 16910:
  hpsa_scan_start(h->scsi_host);
  return (0);
  case -2146942463:
  tmp = hpsa_getpciinfo_ioctl(h, argp);
  return (tmp);
  case -2147204599:
  tmp___0 = hpsa_getdrivver_ioctl(h, argp);
  return (tmp___0);
  case -1067957749:
  tmp___1 = atomic_dec_if_positive(& h->passthru_cmds_avail);
  if (tmp___1 < 0) {
    return (-11);
  } else {
  }
  rc = hpsa_passthru_ioctl(h, argp);
  atomic_inc(& h->passthru_cmds_avail);
  return (rc);
  case -1067433454:
  tmp___2 = atomic_dec_if_positive(& h->passthru_cmds_avail);
  if (tmp___2 < 0) {
    return (-11);
  } else {
  }
  rc = hpsa_big_passthru_ioctl(h, argp);
  atomic_inc(& h->passthru_cmds_avail);
  return (rc);
  default: ;
  return (-25);
  }
}
}
static void hpsa_send_host_reset(struct ctlr_info *h , unsigned char *scsi3addr ,
                                 u8 reset_type )
{
  struct CommandList *c ;
  {
  c = cmd_alloc(h);
  fill_cmd(c, 1, h, (void *)0, 0UL, 0, (unsigned char *)"", 1);
  c->Request.CDB[1] = reset_type;
  c->waiting = (struct completion *)0;
  enqueue_cmd_and_start_io(h, c);
  return;
}
}
static int fill_cmd(struct CommandList *c , u8 cmd , struct ctlr_info *h , void *buff ,
                    size_t size , u16 page_code , unsigned char *scsi3addr , int cmd_type )
{
  int pci_dir ;
  u64 tag ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  {
  pci_dir = 0;
  c->cmd_type = 1;
  c->scsi_cmd = (struct scsi_cmnd *)(& hpsa_cmd_busy);
  c->Header.ReplyQueue = 0U;
  if ((unsigned long )buff != (unsigned long )((void *)0) && size != 0UL) {
    c->Header.SGList = 1U;
    c->Header.SGTotal = 1U;
  } else {
    c->Header.SGList = 0U;
    c->Header.SGTotal = 0U;
  }
  memcpy((void *)(& c->Header.LUN.LunAddrBytes), (void const *)scsi3addr, 8UL);
  if (cmd_type == 0) {
    switch ((int )cmd) {
    case 18: ;
    if (((int )page_code & 256) != 0) {
      c->Request.CDB[1] = 1U;
      c->Request.CDB[2] = (u8 )page_code;
    } else {
    }
    c->Request.CDBLen = 6U;
    c->Request.type_attr_dir = (u8 )(((int )((signed char )cmd_type) & 7) | -96);
    c->Request.Timeout = 0U;
    c->Request.CDB[0] = 18U;
    c->Request.CDB[4] = (u8 )size;
    goto ldv_42160;
    case 194: ;
    case 195:
    c->Request.CDBLen = 12U;
    c->Request.type_attr_dir = (u8 )(((int )((signed char )cmd_type) & 7) | -96);
    c->Request.Timeout = 0U;
    c->Request.CDB[0] = cmd;
    c->Request.CDB[6] = (u8 )(size >> 24);
    c->Request.CDB[7] = (u8 )(size >> 16);
    c->Request.CDB[8] = (u8 )(size >> 8);
    c->Request.CDB[9] = (u8 )size;
    goto ldv_42160;
    case 1:
    c->Request.CDBLen = 12U;
    c->Request.type_attr_dir = (u8 )(((int )((signed char )cmd_type) & 7) | 96);
    c->Request.Timeout = 0U;
    c->Request.CDB[0] = 39U;
    c->Request.CDB[6] = 194U;
    c->Request.CDB[7] = (u8 )(size >> 8);
    c->Request.CDB[8] = (u8 )size;
    goto ldv_42160;
    case 0:
    c->Request.CDBLen = 6U;
    c->Request.type_attr_dir = (u8 )(((int )((signed char )cmd_type) & 7) | 32);
    c->Request.Timeout = 0U;
    goto ldv_42160;
    case 200:
    c->Request.CDBLen = 12U;
    c->Request.type_attr_dir = (u8 )(((int )((signed char )cmd_type) & 7) | -96);
    c->Request.Timeout = 0U;
    c->Request.CDB[0] = 192U;
    c->Request.CDB[1] = cmd;
    c->Request.CDB[6] = (u8 )(size >> 24);
    c->Request.CDB[7] = (u8 )(size >> 16);
    c->Request.CDB[8] = (u8 )(size >> 8);
    c->Request.CDB[9] = (u8 )size;
    goto ldv_42160;
    case 100:
    c->Request.CDBLen = 10U;
    c->Request.type_attr_dir = (u8 )(((int )((signed char )cmd_type) & 7) | -96);
    c->Request.Timeout = 0U;
    c->Request.CDB[0] = 38U;
    c->Request.CDB[6] = 100U;
    c->Request.CDB[7] = (u8 )(size >> 16);
    c->Request.CDB[8] = (u8 )(size >> 8);
    goto ldv_42160;
    case 21:
    c->Request.CDBLen = 10U;
    c->Request.type_attr_dir = (u8 )(((int )((signed char )cmd_type) & 7) | -96);
    c->Request.Timeout = 0U;
    c->Request.CDB[0] = 38U;
    c->Request.CDB[6] = 21U;
    c->Request.CDB[7] = (u8 )(size >> 16);
    c->Request.CDB[8] = (u8 )(size >> 8);
    goto ldv_42160;
    default:
    dev_warn((struct device const *)(& (h->pdev)->dev), "unknown command 0x%c\n",
             (int )cmd);
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (6258), "i" (12UL));
    ldv_42169: ;
    goto ldv_42169;
    return (-1);
    }
    ldv_42160: ;
  } else
  if (cmd_type == 1) {
    switch ((int )cmd) {
    case 1:
    c->Request.CDBLen = 16U;
    c->Request.type_attr_dir = (u8 )(((int )((signed char )cmd_type) & 7) | 32);
    c->Request.Timeout = 0U;
    memset((void *)(& c->Request.CDB), 0, 16UL);
    c->Request.CDB[0] = cmd;
    c->Request.CDB[1] = 4U;
    c->Request.CDB[4] = 0U;
    c->Request.CDB[5] = 0U;
    c->Request.CDB[6] = 0U;
    c->Request.CDB[7] = 0U;
    goto ldv_42171;
    case 0:
    memcpy((void *)(& tag), (void const *)buff, 8UL);
    descriptor.modname = "hpsa";
    descriptor.function = "fill_cmd";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c";
    descriptor.format = "Abort Tag:0x%016llx using rqst Tag:0x%016llx";
    descriptor.lineno = 6283U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& (h->pdev)->dev),
                        "Abort Tag:0x%016llx using rqst Tag:0x%016llx", tag, c->Header.tag);
    } else {
    }
    c->Request.CDBLen = 16U;
    c->Request.type_attr_dir = (u8 )(((int )((signed char )cmd_type) & 7) | 96);
    c->Request.Timeout = 0U;
    c->Request.CDB[0] = 0U;
    c->Request.CDB[1] = 0U;
    c->Request.CDB[2] = 0U;
    c->Request.CDB[3] = 0U;
    memcpy((void *)(& c->Request.CDB) + 4U, (void const *)(& tag), 8UL);
    c->Request.CDB[12] = 0U;
    c->Request.CDB[13] = 0U;
    c->Request.CDB[14] = 0U;
    c->Request.CDB[15] = 0U;
    goto ldv_42171;
    default:
    dev_warn((struct device const *)(& (h->pdev)->dev), "unknown message type %d\n",
             (int )cmd);
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (6303), "i" (12UL));
    ldv_42176: ;
    goto ldv_42176;
    }
    ldv_42171: ;
  } else {
    dev_warn((struct device const *)(& (h->pdev)->dev), "unknown command type %d\n",
             cmd_type);
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c"),
                         "i" (6307), "i" (12UL));
    ldv_42177: ;
    goto ldv_42177;
  }
  switch (((int )c->Request.type_attr_dir >> 6) & 3) {
  case 2:
  pci_dir = 2;
  goto ldv_42179;
  case 1:
  pci_dir = 1;
  goto ldv_42179;
  case 0:
  pci_dir = 3;
  goto ldv_42179;
  default:
  pci_dir = 0;
  }
  ldv_42179:
  tmp___0 = hpsa_map_one(h->pdev, c, (unsigned char *)buff, size, pci_dir);
  if (tmp___0 != 0) {
    return (-1);
  } else {
  }
  return (0);
}
}
static void *remap_pci_mem(ulong base , ulong size )
{
  ulong page_base ;
  ulong page_offs ;
  void *page_remapped ;
  void *tmp ;
  {
  page_base = base & 0xfffffffffffff000UL;
  page_offs = base - page_base;
  tmp = ioremap_nocache((resource_size_t )page_base, page_offs + size);
  page_remapped = tmp;
  return ((unsigned long )page_remapped != (unsigned long )((void *)0) ? page_remapped + page_offs : (void *)0);
}
}
__inline static unsigned long get_next_completion(struct ctlr_info *h , u8 q )
{
  unsigned long tmp ;
  {
  tmp = (*(h->access.command_completed))(h, (int )q);
  return (tmp);
}
}
__inline static bool interrupt_pending(struct ctlr_info *h )
{
  bool tmp ;
  {
  tmp = (*(h->access.intr_pending))(h);
  return (tmp);
}
}
__inline static long interrupt_not_for_us(struct ctlr_info *h )
{
  bool tmp ;
  int tmp___0 ;
  {
  tmp = (*(h->access.intr_pending))(h);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  return ((long )(tmp___0 || h->interrupts_enabled == 0));
}
}
__inline static int bad_tag(struct ctlr_info *h , u32 tag_index , u32 raw_tag )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((u32 )h->nr_cmds <= tag_index, 0L);
  if (tmp != 0L) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "bad tag 0x%08x ignored.\n",
             raw_tag);
    return (1);
  } else {
  }
  return (0);
}
}
__inline static void finish_cmd(struct CommandList *c )
{
  long tmp ;
  {
  dial_up_lockup_detection_on_fw_flash_complete(c->h, c);
  tmp = ldv__builtin_expect((long )((c->cmd_type == 4 || c->cmd_type == 3) || c->cmd_type == 5),
                         1L);
  if (tmp != 0L) {
    complete_scsi_command(c);
  } else
  if (c->cmd_type == 1 || c->cmd_type == 6) {
    complete(c->waiting);
  } else {
  }
  return;
}
}
__inline static void process_indexed_cmd(struct ctlr_info *h , u32 raw_tag )
{
  u32 tag_index ;
  struct CommandList *c ;
  int tmp ;
  {
  tag_index = raw_tag >> 4;
  tmp = bad_tag(h, tag_index, raw_tag);
  if (tmp == 0) {
    c = h->cmd_pool + (unsigned long )tag_index;
    finish_cmd(c);
  } else {
  }
  return;
}
}
static int ignore_bogus_interrupt(struct ctlr_info *h )
{
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect(reset_devices == 0U, 1L);
  if (tmp != 0L) {
    return (0);
  } else {
  }
  tmp___0 = ldv__builtin_expect(h->interrupts_enabled != 0, 1L);
  if (tmp___0 != 0L) {
    return (0);
  } else {
  }
  _dev_info((struct device const *)(& (h->pdev)->dev), "Received interrupt while interrupts disabled (known firmware bug.)  Ignoring.\n");
  return (1);
}
}
static struct ctlr_info *queue_to_hba(u8 *queue )
{
  u8 const *__mptr ;
  {
  __mptr = (u8 const *)(queue + - ((unsigned long )*queue));
  return ((struct ctlr_info *)__mptr + 0xffffffffffffb164UL);
}
}
static irqreturn_t hpsa_intx_discard_completions(int irq , void *queue )
{
  struct ctlr_info *h ;
  struct ctlr_info *tmp ;
  u8 q ;
  u32 raw_tag ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  bool tmp___3 ;
  {
  tmp = queue_to_hba((u8 *)queue);
  h = tmp;
  q = *((u8 *)queue);
  tmp___0 = ignore_bogus_interrupt(h);
  if (tmp___0 != 0) {
    return (0);
  } else {
  }
  tmp___1 = interrupt_not_for_us(h);
  if (tmp___1 != 0L) {
    return (0);
  } else {
  }
  h->last_intr_timestamp = get_jiffies_64();
  goto ldv_42237;
  ldv_42236:
  tmp___2 = get_next_completion(h, (int )q);
  raw_tag = (u32 )tmp___2;
  goto ldv_42234;
  ldv_42233:
  raw_tag = next_command(h, (int )q);
  ldv_42234: ;
  if (raw_tag != 4294967295U) {
    goto ldv_42233;
  } else {
  }
  ldv_42237:
  tmp___3 = interrupt_pending(h);
  if ((int )tmp___3) {
    goto ldv_42236;
  } else {
  }
  return (1);
}
}
static irqreturn_t hpsa_msix_discard_completions(int irq , void *queue )
{
  struct ctlr_info *h ;
  struct ctlr_info *tmp ;
  u32 raw_tag ;
  u8 q ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  {
  tmp = queue_to_hba((u8 *)queue);
  h = tmp;
  q = *((u8 *)queue);
  tmp___0 = ignore_bogus_interrupt(h);
  if (tmp___0 != 0) {
    return (0);
  } else {
  }
  h->last_intr_timestamp = get_jiffies_64();
  tmp___1 = get_next_completion(h, (int )q);
  raw_tag = (u32 )tmp___1;
  goto ldv_42247;
  ldv_42246:
  raw_tag = next_command(h, (int )q);
  ldv_42247: ;
  if (raw_tag != 4294967295U) {
    goto ldv_42246;
  } else {
  }
  return (1);
}
}
static irqreturn_t do_hpsa_intr_intx(int irq , void *queue )
{
  struct ctlr_info *h ;
  struct ctlr_info *tmp ;
  u32 raw_tag ;
  u8 q ;
  long tmp___0 ;
  unsigned long tmp___1 ;
  bool tmp___2 ;
  {
  tmp = queue_to_hba((u8 *)queue);
  h = tmp;
  q = *((u8 *)queue);
  tmp___0 = interrupt_not_for_us(h);
  if (tmp___0 != 0L) {
    return (0);
  } else {
  }
  h->last_intr_timestamp = get_jiffies_64();
  goto ldv_42260;
  ldv_42259:
  tmp___1 = get_next_completion(h, (int )q);
  raw_tag = (u32 )tmp___1;
  goto ldv_42257;
  ldv_42256:
  process_indexed_cmd(h, raw_tag);
  raw_tag = next_command(h, (int )q);
  ldv_42257: ;
  if (raw_tag != 4294967295U) {
    goto ldv_42256;
  } else {
  }
  ldv_42260:
  tmp___2 = interrupt_pending(h);
  if ((int )tmp___2) {
    goto ldv_42259;
  } else {
  }
  return (1);
}
}
static irqreturn_t do_hpsa_intr_msi(int irq , void *queue )
{
  struct ctlr_info *h ;
  struct ctlr_info *tmp ;
  u32 raw_tag ;
  u8 q ;
  unsigned long tmp___0 ;
  {
  tmp = queue_to_hba((u8 *)queue);
  h = tmp;
  q = *((u8 *)queue);
  h->last_intr_timestamp = get_jiffies_64();
  tmp___0 = get_next_completion(h, (int )q);
  raw_tag = (u32 )tmp___0;
  goto ldv_42270;
  ldv_42269:
  process_indexed_cmd(h, raw_tag);
  raw_tag = next_command(h, (int )q);
  ldv_42270: ;
  if (raw_tag != 4294967295U) {
    goto ldv_42269;
  } else {
  }
  return (1);
}
}
static int hpsa_message(struct pci_dev *pdev , unsigned char opcode , unsigned char type )
{
  struct Command *cmd ;
  size_t cmd_sz ;
  dma_addr_t paddr64 ;
  __le32 paddr32 ;
  u32 tag ;
  void *vaddr ;
  int i ;
  int err ;
  void *tmp ;
  {
  cmd_sz = 64UL;
  vaddr = pci_ioremap_bar(pdev, 0);
  if ((unsigned long )vaddr == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  err = pci_set_consistent_dma_mask(pdev, 4294967295ULL);
  if (err != 0) {
    iounmap((void volatile *)vaddr);
    return (err);
  } else {
  }
  tmp = pci_alloc_consistent(pdev, cmd_sz, & paddr64);
  cmd = (struct Command *)tmp;
  if ((unsigned long )cmd == (unsigned long )((struct Command *)0)) {
    iounmap((void volatile *)vaddr);
    return (-12);
  } else {
  }
  paddr32 = (unsigned int )paddr64;
  cmd->CommandHeader.ReplyQueue = 0U;
  cmd->CommandHeader.SGList = 0U;
  cmd->CommandHeader.SGTotal = 0U;
  cmd->CommandHeader.tag = paddr64;
  memset((void *)(& cmd->CommandHeader.LUN.LunAddrBytes), 0, 8UL);
  cmd->Request.CDBLen = 16U;
  cmd->Request.type_attr_dir = 41U;
  cmd->Request.Timeout = 0U;
  cmd->Request.CDB[0] = opcode;
  cmd->Request.CDB[1] = type;
  memset((void *)(& cmd->Request.CDB) + 2U, 0, 14UL);
  cmd->ErrorDescriptor.Addr = (unsigned long long )((unsigned long )paddr32 + 52UL);
  cmd->ErrorDescriptor.Len = 48U;
  writel(paddr32, (void volatile *)vaddr + 64U);
  i = 0;
  goto ldv_42291;
  ldv_42290:
  tag = readl((void const volatile *)vaddr + 68U);
  if (((dma_addr_t )tag & 4294967292ULL) == paddr64) {
    goto ldv_42289;
  } else {
  }
  msleep(10000U);
  i = i + 1;
  ldv_42291: ;
  if (i <= 9) {
    goto ldv_42290;
  } else {
  }
  ldv_42289:
  iounmap((void volatile *)vaddr);
  if (i == 10) {
    dev_err((struct device const *)(& pdev->dev), "controller message %02x:%02x timed out\n",
            (int )opcode, (int )type);
    return (-110);
  } else {
  }
  pci_free_consistent(pdev, cmd_sz, (void *)cmd, paddr64);
  if ((tag & 2U) != 0U) {
    dev_err((struct device const *)(& pdev->dev), "controller message %02x:%02x failed\n",
            (int )opcode, (int )type);
    return (-5);
  } else {
  }
  _dev_info((struct device const *)(& pdev->dev), "controller message %02x:%02x succeeded\n",
            (int )opcode, (int )type);
  return (0);
}
}
static int hpsa_controller_hard_reset(struct pci_dev *pdev , void *vaddr , u32 use_doorbell )
{
  int rc ;
  {
  if (use_doorbell != 0U) {
    _dev_info((struct device const *)(& pdev->dev), "using doorbell to reset controller\n");
    writel(use_doorbell, (void volatile *)vaddr + 32U);
    msleep(10000U);
  } else {
    rc = 0;
    _dev_info((struct device const *)(& pdev->dev), "using PCI PM to reset controller\n");
    rc = pci_set_power_state(pdev, 3);
    if (rc != 0) {
      return (rc);
    } else {
    }
    msleep(500U);
    rc = pci_set_power_state(pdev, 0);
    if (rc != 0) {
      return (rc);
    } else {
    }
    msleep(500U);
  }
  return (0);
}
}
static void init_driver_version(char *driver_version , int len )
{
  {
  memset((void *)driver_version, 0, (size_t )len);
  strncpy(driver_version, "hpsa 3.4.10-0", (__kernel_size_t )(len + -1));
  return;
}
}
static int write_driver_ver_to_cfgtable(struct CfgTable *cfgtable )
{
  char *driver_version ;
  int i ;
  int size ;
  void *tmp ;
  {
  size = 32;
  tmp = kmalloc((size_t )size, 208U);
  driver_version = (char *)tmp;
  if ((unsigned long )driver_version == (unsigned long )((char *)0)) {
    return (-12);
  } else {
  }
  init_driver_version(driver_version, size);
  i = 0;
  goto ldv_42309;
  ldv_42308:
  writeb((int )((unsigned char )*(driver_version + (unsigned long )i)), (void volatile *)(& cfgtable->driver_version) + (unsigned long )i);
  i = i + 1;
  ldv_42309: ;
  if (i < size) {
    goto ldv_42308;
  } else {
  }
  kfree((void const *)driver_version);
  return (0);
}
}
static void read_driver_ver_from_cfgtable(struct CfgTable *cfgtable , unsigned char *driver_ver )
{
  int i ;
  {
  i = 0;
  goto ldv_42317;
  ldv_42316:
  *(driver_ver + (unsigned long )i) = readb((void const volatile *)(& cfgtable->driver_version) + (unsigned long )i);
  i = i + 1;
  ldv_42317: ;
  if ((unsigned int )i <= 31U) {
    goto ldv_42316;
  } else {
  }
  return;
}
}
static int controller_reset_failed(struct CfgTable *cfgtable )
{
  char *driver_ver ;
  char *old_driver_ver ;
  int rc ;
  int size ;
  void *tmp ;
  int tmp___0 ;
  {
  size = 32;
  tmp = kmalloc((size_t )(size * 2), 208U);
  old_driver_ver = (char *)tmp;
  if ((unsigned long )old_driver_ver == (unsigned long )((char *)0)) {
    return (-12);
  } else {
  }
  driver_ver = old_driver_ver + (unsigned long )size;
  init_driver_version(old_driver_ver, size);
  read_driver_ver_from_cfgtable(cfgtable, (unsigned char *)driver_ver);
  tmp___0 = memcmp((void const *)driver_ver, (void const *)old_driver_ver, (size_t )size);
  rc = tmp___0 == 0;
  kfree((void const *)old_driver_ver);
  return (rc);
}
}
static int hpsa_kdump_hard_reset_controller(struct pci_dev *pdev , u32 board_id )
{
  u64 cfg_offset ;
  u32 cfg_base_addr ;
  u64 cfg_base_addr_index ;
  void *vaddr ;
  unsigned long paddr ;
  u32 misc_fw_support ;
  int rc ;
  struct CfgTable *cfgtable ;
  u32 use_doorbell ;
  u16 command_register ;
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ctlr_is_resettable(board_id);
  if (tmp == 0) {
    dev_warn((struct device const *)(& pdev->dev), "Controller not resettable\n");
    return (-19);
  } else {
  }
  tmp___0 = ctlr_is_hard_resettable(board_id);
  if (tmp___0 == 0) {
    return (-524);
  } else {
  }
  pci_read_config_word((struct pci_dev const *)pdev, 4, & command_register);
  pci_save_state(pdev);
  rc = hpsa_pci_find_memory_BAR(pdev, & paddr);
  if (rc != 0) {
    return (rc);
  } else {
  }
  vaddr = remap_pci_mem(paddr, 592UL);
  if ((unsigned long )vaddr == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  rc = hpsa_find_cfg_addrs(pdev, vaddr, & cfg_base_addr, & cfg_base_addr_index, & cfg_offset);
  if (rc != 0) {
    goto unmap_vaddr;
  } else {
  }
  tmp___1 = remap_pci_mem((ulong )(pdev->resource[cfg_base_addr_index].start + cfg_offset),
                          196UL);
  cfgtable = (struct CfgTable *)tmp___1;
  if ((unsigned long )cfgtable == (unsigned long )((struct CfgTable *)0)) {
    rc = -12;
    goto unmap_vaddr;
  } else {
  }
  rc = write_driver_ver_to_cfgtable(cfgtable);
  if (rc != 0) {
    goto unmap_cfgtable;
  } else {
  }
  misc_fw_support = readl((void const volatile *)(& cfgtable->misc_fw_support));
  use_doorbell = misc_fw_support & 16U;
  if (use_doorbell != 0U) {
    use_doorbell = 32U;
  } else {
    use_doorbell = misc_fw_support & 2U;
    if (use_doorbell != 0U) {
      dev_warn((struct device const *)(& pdev->dev), "Soft reset not supported. Firmware update is required.\n");
      rc = -524;
      goto unmap_cfgtable;
    } else {
    }
  }
  rc = hpsa_controller_hard_reset(pdev, vaddr, use_doorbell);
  if (rc != 0) {
    goto unmap_cfgtable;
  } else {
  }
  pci_restore_state(pdev);
  pci_write_config_word((struct pci_dev const *)pdev, 4, (int )command_register);
  msleep(3000U);
  rc = hpsa_wait_for_board_state(pdev, vaddr, 1);
  if (rc != 0) {
    dev_warn((struct device const *)(& pdev->dev), "Failed waiting for board to become ready after hard reset\n");
    goto unmap_cfgtable;
  } else {
  }
  rc = controller_reset_failed((struct CfgTable *)vaddr);
  if (rc < 0) {
    goto unmap_cfgtable;
  } else {
  }
  if (rc != 0) {
    dev_warn((struct device const *)(& pdev->dev), "Unable to successfully reset controller. Will try soft reset.\n");
    rc = -524;
  } else {
    _dev_info((struct device const *)(& pdev->dev), "board ready after hard reset.\n");
  }
  unmap_cfgtable:
  iounmap((void volatile *)cfgtable);
  unmap_vaddr:
  iounmap((void volatile *)vaddr);
  return (rc);
}
}
static void print_cfg_table(struct device *dev , struct CfgTable *tb )
{
  {
  return;
}
}
static int find_PCI_BAR_index(struct pci_dev *pdev , unsigned long pci_bar_addr )
{
  int i ;
  int offset ;
  int mem_type ;
  int bar_type ;
  {
  if (pci_bar_addr == 16UL) {
    return (0);
  } else {
  }
  offset = 0;
  i = 0;
  goto ldv_42360;
  ldv_42359:
  bar_type = (int )pdev->resource[i].flags & 1;
  if (bar_type == 1) {
    offset = offset + 4;
  } else {
    mem_type = (int )pdev->resource[i].flags & 6;
    switch (mem_type) {
    case 0: ;
    case 2:
    offset = offset + 4;
    goto ldv_42356;
    case 4:
    offset = offset + 8;
    goto ldv_42356;
    default:
    dev_warn((struct device const *)(& pdev->dev), "base address is invalid\n");
    return (-1);
    }
    ldv_42356: ;
  }
  if ((unsigned long )offset == pci_bar_addr - 16UL) {
    return (i + 1);
  } else {
  }
  i = i + 1;
  ldv_42360: ;
  if (i <= 16) {
    goto ldv_42359;
  } else {
  }
  return (-1);
}
}
static void hpsa_disable_interrupt_mode(struct ctlr_info *h )
{
  {
  if (h->msix_vector != 0U) {
    if ((unsigned int )*((unsigned char *)h->pdev + 2530UL) != 0U) {
      pci_disable_msix(h->pdev);
    } else {
    }
    h->msix_vector = 0U;
  } else
  if (h->msi_vector != 0U) {
    if ((unsigned int )*((unsigned char *)h->pdev + 2530UL) != 0U) {
      pci_disable_msi(h->pdev);
    } else {
    }
    h->msi_vector = 0U;
  } else {
  }
  return;
}
}
static void hpsa_interrupt_mode(struct ctlr_info *h )
{
  int err ;
  int i ;
  struct msix_entry hpsa_msix_entries[64U] ;
  unsigned int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  i = 0;
  goto ldv_42372;
  ldv_42371:
  hpsa_msix_entries[i].vector = 0U;
  hpsa_msix_entries[i].entry = (u16 )i;
  i = i + 1;
  ldv_42372: ;
  if (i <= 63) {
    goto ldv_42371;
  } else {
  }
  if (((h->board_id == 1081085457U || h->board_id == 1082134033U) || h->board_id == 1082265105U) || h->board_id == 1082330641U) {
    goto default_int_mode;
  } else {
  }
  tmp___0 = pci_find_capability(h->pdev, 17);
  if (tmp___0 != 0) {
    _dev_info((struct device const *)(& (h->pdev)->dev), "MSI-X capable controller\n");
    h->msix_vector = 64U;
    tmp = cpumask_weight(cpu_online_mask);
    if (h->msix_vector > tmp) {
      h->msix_vector = cpumask_weight(cpu_online_mask);
    } else {
    }
    err = pci_enable_msix_range(h->pdev, (struct msix_entry *)(& hpsa_msix_entries),
                                1, (int )h->msix_vector);
    if (err < 0) {
      dev_warn((struct device const *)(& (h->pdev)->dev), "MSI-X init failed %d\n",
               err);
      h->msix_vector = 0U;
      goto single_msi_mode;
    } else
    if ((unsigned int )err < h->msix_vector) {
      dev_warn((struct device const *)(& (h->pdev)->dev), "only %d MSI-X vectors available\n",
               err);
    } else {
    }
    h->msix_vector = (unsigned int )err;
    i = 0;
    goto ldv_42377;
    ldv_42376:
    h->intr[i] = hpsa_msix_entries[i].vector;
    i = i + 1;
    ldv_42377: ;
    if ((unsigned int )i < h->msix_vector) {
      goto ldv_42376;
    } else {
    }
    return;
  } else {
  }
  single_msi_mode:
  tmp___2 = pci_find_capability(h->pdev, 5);
  if (tmp___2 != 0) {
    _dev_info((struct device const *)(& (h->pdev)->dev), "MSI capable controller\n");
    tmp___1 = pci_enable_msi_exact(h->pdev, 1);
    if (tmp___1 == 0) {
      h->msi_vector = 1U;
    } else {
      dev_warn((struct device const *)(& (h->pdev)->dev), "MSI init failed\n");
    }
  } else {
  }
  default_int_mode:
  h->intr[h->intr_mode] = (h->pdev)->irq;
  return;
}
}
static int hpsa_lookup_board_id(struct pci_dev *pdev , u32 *board_id )
{
  int i ;
  u32 subsystem_vendor_id ;
  u32 subsystem_device_id ;
  {
  subsystem_vendor_id = (u32 )pdev->subsystem_vendor;
  subsystem_device_id = (u32 )pdev->subsystem_device;
  *board_id = (subsystem_device_id << 16) | subsystem_vendor_id;
  i = 0;
  goto ldv_42389;
  ldv_42388: ;
  if (*board_id == products[i].board_id) {
    return (i);
  } else {
  }
  i = i + 1;
  ldv_42389: ;
  if ((unsigned int )i <= 46U) {
    goto ldv_42388;
  } else {
  }
  if ((subsystem_vendor_id != 4156U && subsystem_vendor_id != 3601U) || hpsa_allow_any == 0) {
    dev_warn((struct device const *)(& pdev->dev), "unrecognized board ID: 0x%08x, ignoring.\n",
             *board_id);
    return (-19);
  } else {
  }
  return (46);
}
}
static int hpsa_pci_find_memory_BAR(struct pci_dev *pdev , unsigned long *memory_bar )
{
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  i = 0;
  goto ldv_42401;
  ldv_42400: ;
  if ((pdev->resource[i].flags & 512UL) != 0UL) {
    *memory_bar = (unsigned long )pdev->resource[i].start;
    descriptor.modname = "hpsa";
    descriptor.function = "hpsa_pci_find_memory_BAR";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3512/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/hpsa.c";
    descriptor.format = "memory BAR = %lx\n";
    descriptor.lineno = 6997U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& pdev->dev), "memory BAR = %lx\n",
                        *memory_bar);
    } else {
    }
    return (0);
  } else {
  }
  i = i + 1;
  ldv_42401: ;
  if (i <= 16) {
    goto ldv_42400;
  } else {
  }
  dev_warn((struct device const *)(& pdev->dev), "no memory BAR found\n");
  return (-19);
}
}
static int hpsa_wait_for_board_state(struct pci_dev *pdev , void *vaddr , int wait_for_ready )
{
  int i ;
  int iterations ;
  u32 scratchpad ;
  {
  if (wait_for_ready != 0) {
    iterations = 1200;
  } else {
    iterations = 1000;
  }
  i = 0;
  goto ldv_42412;
  ldv_42411:
  scratchpad = readl((void const volatile *)vaddr + 176U);
  if (wait_for_ready != 0) {
    if (scratchpad == 4294901760U) {
      return (0);
    } else {
    }
  } else
  if (scratchpad != 4294901760U) {
    return (0);
  } else {
  }
  msleep(100U);
  i = i + 1;
  ldv_42412: ;
  if (i < iterations) {
    goto ldv_42411;
  } else {
  }
  dev_warn((struct device const *)(& pdev->dev), "board not ready, timed out.\n");
  return (-19);
}
}
static int hpsa_find_cfg_addrs(struct pci_dev *pdev , void *vaddr , u32 *cfg_base_addr ,
                               u64 *cfg_base_addr_index , u64 *cfg_offset )
{
  unsigned int tmp ;
  int tmp___0 ;
  {
  *cfg_base_addr = readl((void const volatile *)vaddr + 180U);
  tmp = readl((void const volatile *)vaddr + 184U);
  *cfg_offset = (u64 )tmp;
  *cfg_base_addr = *cfg_base_addr & 65535U;
  tmp___0 = find_PCI_BAR_index(pdev, (unsigned long )*cfg_base_addr);
  *cfg_base_addr_index = (u64 )tmp___0;
  if (*cfg_base_addr_index == 0xffffffffffffffffULL) {
    dev_warn((struct device const *)(& pdev->dev), "cannot find cfg_base_addr_index\n");
    return (-19);
  } else {
  }
  return (0);
}
}
static void hpsa_free_cfgtables(struct ctlr_info *h )
{
  {
  if ((unsigned long )h->transtable != (unsigned long )((struct TransTable_struct *)0)) {
    iounmap((void volatile *)h->transtable);
    h->transtable = (struct TransTable_struct *)0;
  } else {
  }
  if ((unsigned long )h->cfgtable != (unsigned long )((struct CfgTable *)0)) {
    iounmap((void volatile *)h->cfgtable);
    h->cfgtable = (struct CfgTable *)0;
  } else {
  }
  return;
}
}
static int hpsa_find_cfgtables(struct ctlr_info *h )
{
  u64 cfg_offset ;
  u32 cfg_base_addr ;
  u64 cfg_base_addr_index ;
  u32 trans_offset ;
  int rc ;
  void *tmp ;
  void *tmp___0 ;
  {
  rc = hpsa_find_cfg_addrs(h->pdev, h->vaddr, & cfg_base_addr, & cfg_base_addr_index,
                           & cfg_offset);
  if (rc != 0) {
    return (rc);
  } else {
  }
  tmp = remap_pci_mem((ulong )((h->pdev)->resource[cfg_base_addr_index].start + cfg_offset),
                      196UL);
  h->cfgtable = (struct CfgTable *)tmp;
  if ((unsigned long )h->cfgtable == (unsigned long )((struct CfgTable *)0)) {
    dev_err((struct device const *)(& (h->pdev)->dev), "Failed mapping cfgtable\n");
    return (-12);
  } else {
  }
  rc = write_driver_ver_to_cfgtable(h->cfgtable);
  if (rc != 0) {
    return (rc);
  } else {
  }
  trans_offset = readl((void const volatile *)(& (h->cfgtable)->TransMethodOffset));
  tmp___0 = remap_pci_mem((ulong )(((h->pdev)->resource[cfg_base_addr_index].start + cfg_offset) + (unsigned long long )trans_offset),
                          560UL);
  h->transtable = (struct TransTable_struct *)tmp___0;
  if ((unsigned long )h->transtable == (unsigned long )((struct TransTable_struct *)0)) {
    dev_err((struct device const *)(& (h->pdev)->dev), "Failed mapping transfer table\n");
    hpsa_free_cfgtables(h);
    return (-12);
  } else {
  }
  return (0);
}
}
static void hpsa_get_max_perf_mode_cmds(struct ctlr_info *h )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)(& (h->cfgtable)->MaxPerformantModeCommands));
  h->max_commands = (int )tmp;
  if (reset_devices != 0U && h->max_commands > 32) {
    h->max_commands = 32;
  } else {
  }
  if (h->max_commands <= 15) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "Controller reports max supported commands of %d Using %d instead. Ensure that firmware is up to date.\n",
             h->max_commands, 16);
    h->max_commands = 16;
  } else {
  }
  return;
}
}
static int hpsa_supports_chained_sg_blocks(struct ctlr_info *h )
{
  {
  return (h->maxsgentries > 512);
}
}
static void hpsa_find_board_params(struct ctlr_info *h )
{
  unsigned int tmp ;
  int tmp___0 ;
  {
  hpsa_get_max_perf_mode_cmds(h);
  h->nr_cmds = h->max_commands;
  tmp = readl((void const volatile *)(& (h->cfgtable)->MaxScatterGatherElements));
  h->maxsgentries = (int )tmp;
  h->fw_support = readl((void const volatile *)(& (h->cfgtable)->misc_fw_support));
  tmp___0 = hpsa_supports_chained_sg_blocks(h);
  if (tmp___0 != 0) {
    h->max_cmd_sg_entries = 32U;
    h->chainsize = h->maxsgentries - (int )h->max_cmd_sg_entries;
    h->maxsgentries = h->maxsgentries - 1;
  } else {
    h->max_cmd_sg_entries = 31U;
    h->maxsgentries = 31;
    h->chainsize = 0;
  }
  h->TMFSupportFlags = readl((void const volatile *)(& (h->cfgtable)->TMFSupportFlags));
  if ((h->TMFSupportFlags & 8U) == 0U) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "Physical aborts not supported\n");
  } else {
  }
  if ((h->TMFSupportFlags & 524288U) == 0U) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "Logical aborts not supported\n");
  } else {
  }
  if ((h->TMFSupportFlags & 32768U) == 0U) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "HP SSD Smart Path aborts not supported\n");
  } else {
  }
  return;
}
}
__inline static bool hpsa_CISS_signature_present(struct ctlr_info *h )
{
  int tmp ;
  {
  tmp = check_signature((void const volatile *)(& (h->cfgtable)->Signature), (unsigned char const *)"CISS",
                        4);
  if (tmp == 0) {
    dev_err((struct device const *)(& (h->pdev)->dev), "not a valid CISS config table\n");
    return (0);
  } else {
  }
  return (1);
}
}
__inline static void hpsa_set_driver_support_bits(struct ctlr_info *h )
{
  u32 driver_support ;
  {
  driver_support = readl((void const volatile *)(& (h->cfgtable)->driver_support));
  driver_support = driver_support | 256U;
  driver_support = driver_support | 1U;
  writel(driver_support, (void volatile *)(& (h->cfgtable)->driver_support));
  return;
}
}
__inline static void hpsa_p600_dma_prefetch_quirk(struct ctlr_info *h )
{
  u32 dma_prefetch ;
  {
  if (h->board_id != 841289788U) {
    return;
  } else {
  }
  dma_prefetch = readl((void const volatile *)h->vaddr + 532U);
  dma_prefetch = dma_prefetch | 32768U;
  writel(dma_prefetch, (void volatile *)h->vaddr + 532U);
  return;
}
}
static int hpsa_wait_for_clear_event_notify_ack(struct ctlr_info *h )
{
  int i ;
  u32 doorbell_value ;
  unsigned long flags ;
  {
  i = 0;
  goto ldv_42460;
  ldv_42459:
  ldv_spin_lock();
  doorbell_value = readl((void const volatile *)h->vaddr + 32U);
  spin_unlock_irqrestore(& h->lock, flags);
  if (((long )doorbell_value & 64L) == 0L) {
    goto done;
  } else {
  }
  msleep(20U);
  i = i + 1;
  ldv_42460: ;
  if (i <= 29999) {
    goto ldv_42459;
  } else {
  }
  return (-19);
  done: ;
  return (0);
}
}
static int hpsa_wait_for_mode_change_ack(struct ctlr_info *h )
{
  int i ;
  u32 doorbell_value ;
  unsigned long flags ;
  {
  i = 0;
  goto ldv_42470;
  ldv_42469: ;
  if (h->remove_in_progress != 0) {
    goto done;
  } else {
  }
  ldv_spin_lock();
  doorbell_value = readl((void const volatile *)h->vaddr + 32U);
  spin_unlock_irqrestore(& h->lock, flags);
  if (((long )doorbell_value & 1L) == 0L) {
    goto done;
  } else {
  }
  msleep(10U);
  i = i + 1;
  ldv_42470: ;
  if (i <= 1999) {
    goto ldv_42469;
  } else {
  }
  return (-19);
  done: ;
  return (0);
}
}
static int hpsa_enter_simple_mode(struct ctlr_info *h )
{
  u32 trans_support ;
  unsigned int tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  {
  trans_support = readl((void const volatile *)(& (h->cfgtable)->TransportSupport));
  if ((trans_support & 2U) == 0U) {
    return (-524);
  } else {
  }
  tmp = readl((void const volatile *)(& (h->cfgtable)->CmdsOutMax));
  h->max_commands = (int )tmp;
  writel(2U, (void volatile *)(& (h->cfgtable)->HostWrite.TransportRequest));
  writel(0U, (void volatile *)(& (h->cfgtable)->HostWrite.command_pool_addr_hi));
  writel(1U, (void volatile *)h->vaddr + 32U);
  tmp___0 = hpsa_wait_for_mode_change_ack(h);
  if (tmp___0 != 0) {
    goto error;
  } else {
  }
  print_cfg_table(& (h->pdev)->dev, h->cfgtable);
  tmp___1 = readl((void const volatile *)(& (h->cfgtable)->TransportActive));
  if (((long )tmp___1 & 2L) == 0L) {
    goto error;
  } else {
  }
  h->transMethod = 2UL;
  return (0);
  error:
  dev_err((struct device const *)(& (h->pdev)->dev), "failed to enter simple mode\n");
  return (-19);
}
}
static void hpsa_free_pci_init(struct ctlr_info *h )
{
  {
  hpsa_free_cfgtables(h);
  iounmap((void volatile *)h->vaddr);
  h->vaddr = (void *)0;
  hpsa_disable_interrupt_mode(h);
  pci_disable_device(h->pdev);
  pci_release_regions(h->pdev);
  return;
}
}
static int hpsa_pci_init(struct ctlr_info *h )
{
  int prod_index ;
  int err ;
  bool tmp ;
  int tmp___0 ;
  {
  prod_index = hpsa_lookup_board_id(h->pdev, & h->board_id);
  if (prod_index < 0) {
    return (prod_index);
  } else {
  }
  h->product_name = products[prod_index].product_name;
  h->access = *(products[prod_index].access);
  h->needs_abort_tags_swizzled = ctlr_needs_abort_tags_swizzled(h->board_id);
  pci_disable_link_state(h->pdev, 7);
  err = pci_enable_device(h->pdev);
  if (err != 0) {
    dev_err((struct device const *)(& (h->pdev)->dev), "failed to enable PCI device\n");
    pci_disable_device(h->pdev);
    return (err);
  } else {
  }
  err = pci_request_regions(h->pdev, "hpsa");
  if (err != 0) {
    dev_err((struct device const *)(& (h->pdev)->dev), "failed to obtain PCI resources\n");
    pci_disable_device(h->pdev);
    return (err);
  } else {
  }
  pci_set_master(h->pdev);
  hpsa_interrupt_mode(h);
  err = hpsa_pci_find_memory_BAR(h->pdev, & h->paddr);
  if (err != 0) {
    goto clean2;
  } else {
  }
  h->vaddr = remap_pci_mem(h->paddr, 592UL);
  if ((unsigned long )h->vaddr == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (h->pdev)->dev), "failed to remap PCI mem\n");
    err = -12;
    goto clean2;
  } else {
  }
  err = hpsa_wait_for_board_state(h->pdev, h->vaddr, 1);
  if (err != 0) {
    goto clean3;
  } else {
  }
  err = hpsa_find_cfgtables(h);
  if (err != 0) {
    goto clean3;
  } else {
  }
  hpsa_find_board_params(h);
  tmp = hpsa_CISS_signature_present(h);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    err = -19;
    goto clean4;
  } else {
  }
  hpsa_set_driver_support_bits(h);
  hpsa_p600_dma_prefetch_quirk(h);
  err = hpsa_enter_simple_mode(h);
  if (err != 0) {
    goto clean4;
  } else {
  }
  return (0);
  clean4:
  hpsa_free_cfgtables(h);
  clean3:
  iounmap((void volatile *)h->vaddr);
  h->vaddr = (void *)0;
  clean2:
  hpsa_disable_interrupt_mode(h);
  pci_disable_device(h->pdev);
  pci_release_regions(h->pdev);
  return (err);
}
}
static void hpsa_hba_inquiry(struct ctlr_info *h )
{
  int rc ;
  void *tmp ;
  {
  tmp = kmalloc(64UL, 208U);
  h->hba_inquiry_data = (unsigned char *)tmp;
  if ((unsigned long )h->hba_inquiry_data == (unsigned long )((unsigned char *)0U)) {
    return;
  } else {
  }
  rc = hpsa_scsi_do_inquiry(h, (unsigned char *)"", 0, h->hba_inquiry_data, 64);
  if (rc != 0) {
    kfree((void const *)h->hba_inquiry_data);
    h->hba_inquiry_data = (unsigned char *)0U;
  } else {
  }
  return;
}
}
static int hpsa_init_reset_devices(struct pci_dev *pdev , u32 board_id )
{
  int rc ;
  int i ;
  void *vaddr ;
  int tmp ;
  {
  if (reset_devices == 0U) {
    return (0);
  } else {
  }
  rc = pci_enable_device(pdev);
  if (rc != 0) {
    dev_warn((struct device const *)(& pdev->dev), "Failed to enable PCI device\n");
    return (-19);
  } else {
  }
  pci_disable_device(pdev);
  msleep(260U);
  rc = pci_enable_device(pdev);
  if (rc != 0) {
    dev_warn((struct device const *)(& pdev->dev), "failed to enable device.\n");
    return (-19);
  } else {
  }
  pci_set_master(pdev);
  vaddr = pci_ioremap_bar(pdev, 0);
  if ((unsigned long )vaddr == (unsigned long )((void *)0)) {
    rc = -12;
    goto out_disable;
  } else {
  }
  writel(8U, (void volatile *)vaddr + 52U);
  iounmap((void volatile *)vaddr);
  rc = hpsa_kdump_hard_reset_controller(pdev, board_id);
  if (rc != 0) {
    goto out_disable;
  } else {
  }
  _dev_info((struct device const *)(& pdev->dev), "Waiting for controller to respond to no-op\n");
  i = 0;
  goto ldv_42502;
  ldv_42501:
  tmp = hpsa_message(pdev, 3, 0);
  if (tmp == 0) {
    goto ldv_42500;
  } else {
    dev_warn((struct device const *)(& pdev->dev), "no-op failed%s\n", i <= 10 ? (char *)"; re-trying" : (char *)"");
  }
  i = i + 1;
  ldv_42502: ;
  if (i <= 11) {
    goto ldv_42501;
  } else {
  }
  ldv_42500: ;
  out_disable:
  pci_disable_device(pdev);
  return (rc);
}
}
static void hpsa_free_cmd_pool(struct ctlr_info *h )
{
  {
  kfree((void const *)h->cmd_pool_bits);
  h->cmd_pool_bits = (unsigned long *)0UL;
  if ((unsigned long )h->cmd_pool != (unsigned long )((struct CommandList *)0)) {
    pci_free_consistent(h->pdev, (unsigned long )h->nr_cmds * 768UL, (void *)h->cmd_pool,
                        h->cmd_pool_dhandle);
    h->cmd_pool = (struct CommandList *)0;
    h->cmd_pool_dhandle = 0ULL;
  } else {
  }
  if ((unsigned long )h->errinfo_pool != (unsigned long )((struct ErrorInfo *)0)) {
    pci_free_consistent(h->pdev, (unsigned long )h->nr_cmds * 48UL, (void *)h->errinfo_pool,
                        h->errinfo_pool_dhandle);
    h->errinfo_pool = (struct ErrorInfo *)0;
    h->errinfo_pool_dhandle = 0ULL;
  } else {
  }
  return;
}
}
static int hpsa_alloc_cmd_pool(struct ctlr_info *h )
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = kmalloc((unsigned long )((h->nr_cmds + 63) / 64) * 8UL, 208U);
  h->cmd_pool_bits = (unsigned long *)tmp;
  tmp___0 = pci_alloc_consistent(h->pdev, (unsigned long )h->nr_cmds * 768UL, & h->cmd_pool_dhandle);
  h->cmd_pool = (struct CommandList *)tmp___0;
  tmp___1 = pci_alloc_consistent(h->pdev, (unsigned long )h->nr_cmds * 48UL, & h->errinfo_pool_dhandle);
  h->errinfo_pool = (struct ErrorInfo *)tmp___1;
  if (((unsigned long )h->cmd_pool_bits == (unsigned long )((unsigned long *)0UL) || (unsigned long )h->cmd_pool == (unsigned long )((struct CommandList *)0)) || (unsigned long )h->errinfo_pool == (unsigned long )((struct ErrorInfo *)0)) {
    dev_err((struct device const *)(& (h->pdev)->dev), "out of memory in %s", "hpsa_alloc_cmd_pool");
    goto clean_up;
  } else {
  }
  hpsa_preinitialize_commands(h);
  return (0);
  clean_up:
  hpsa_free_cmd_pool(h);
  return (-12);
}
}
static void hpsa_irq_affinity_hints(struct ctlr_info *h )
{
  int i ;
  int cpu ;
  unsigned int tmp ;
  struct cpumask const *tmp___0 ;
  unsigned int tmp___1 ;
  {
  tmp = cpumask_first(cpu_online_mask);
  cpu = (int )tmp;
  i = 0;
  goto ldv_42517;
  ldv_42516:
  tmp___0 = get_cpu_mask((unsigned int )cpu);
  irq_set_affinity_hint(h->intr[i], tmp___0);
  tmp___1 = cpumask_next(cpu, cpu_online_mask);
  cpu = (int )tmp___1;
  i = i + 1;
  ldv_42517: ;
  if ((unsigned int )i < h->msix_vector) {
    goto ldv_42516;
  } else {
  }
  return;
}
}
static void hpsa_free_irqs(struct ctlr_info *h )
{
  int i ;
  {
  if (h->msix_vector == 0U || h->intr_mode != 0) {
    i = h->intr_mode;
    irq_set_affinity_hint(h->intr[i], (struct cpumask const *)0);
    free_irq(h->intr[i], (void *)(& h->q) + (unsigned long )i);
    h->q[i] = 0U;
    return;
  } else {
  }
  i = 0;
  goto ldv_42524;
  ldv_42523:
  irq_set_affinity_hint(h->intr[i], (struct cpumask const *)0);
  free_irq(h->intr[i], (void *)(& h->q) + (unsigned long )i);
  h->q[i] = 0U;
  i = i + 1;
  ldv_42524: ;
  if ((unsigned int )i < h->msix_vector) {
    goto ldv_42523;
  } else {
  }
  goto ldv_42527;
  ldv_42526:
  h->q[i] = 0U;
  i = i + 1;
  ldv_42527: ;
  if (i <= 63) {
    goto ldv_42526;
  } else {
  }
  return;
}
}
static int hpsa_request_irqs(struct ctlr_info *h , irqreturn_t (*msixhandler)(int ,
                                                                              void * ) ,
                             irqreturn_t (*intxhandler)(int , void * ) )
{
  int rc ;
  int i ;
  int j ;
  {
  i = 0;
  goto ldv_42541;
  ldv_42540:
  h->q[i] = (unsigned char )i;
  i = i + 1;
  ldv_42541: ;
  if (i <= 63) {
    goto ldv_42540;
  } else {
  }
  if (h->intr_mode == 0 && h->msix_vector != 0U) {
    i = 0;
    goto ldv_42551;
    ldv_42550:
    sprintf((char *)(& h->intrname) + (unsigned long )i, "%s-msix%d", (char *)(& h->devname),
            i);
    rc = request_irq(h->intr[i], msixhandler, 0UL, (char const *)(& h->intrname) + (unsigned long )i,
                     (void *)(& h->q) + (unsigned long )i);
    if (rc != 0) {
      dev_err((struct device const *)(& (h->pdev)->dev), "failed to get irq %d for %s\n",
              h->intr[i], (char *)(& h->devname));
      j = 0;
      goto ldv_42545;
      ldv_42544:
      free_irq(h->intr[j], (void *)(& h->q) + (unsigned long )j);
      h->q[j] = 0U;
      j = j + 1;
      ldv_42545: ;
      if (j < i) {
        goto ldv_42544;
      } else {
      }
      goto ldv_42548;
      ldv_42547:
      h->q[j] = 0U;
      j = j + 1;
      ldv_42548: ;
      if (j <= 63) {
        goto ldv_42547;
      } else {
      }
      return (rc);
    } else {
    }
    i = i + 1;
    ldv_42551: ;
    if ((unsigned int )i < h->msix_vector) {
      goto ldv_42550;
    } else {
    }
    hpsa_irq_affinity_hints(h);
  } else {
    if (h->msix_vector != 0U || h->msi_vector != 0U) {
      if (h->msix_vector != 0U) {
        sprintf((char *)(& h->intrname) + (unsigned long )h->intr_mode, "%s-msix",
                (char *)(& h->devname));
      } else {
        sprintf((char *)(& h->intrname) + (unsigned long )h->intr_mode, "%s-msi",
                (char *)(& h->devname));
      }
      rc = request_irq(h->intr[h->intr_mode], msixhandler, 0UL, (char const *)(& h->intrname) + (unsigned long )h->intr_mode,
                       (void *)(& h->q) + (unsigned long )h->intr_mode);
    } else {
      sprintf((char *)(& h->intrname) + (unsigned long )h->intr_mode, "%s-intx", (char *)(& h->devname));
      rc = request_irq(h->intr[h->intr_mode], intxhandler, 128UL, (char const *)(& h->intrname) + (unsigned long )h->intr_mode,
                       (void *)(& h->q) + (unsigned long )h->intr_mode);
    }
    irq_set_affinity_hint(h->intr[h->intr_mode], (struct cpumask const *)0);
  }
  if (rc != 0) {
    dev_err((struct device const *)(& (h->pdev)->dev), "failed to get irq %d for %s\n",
            h->intr[h->intr_mode], (char *)(& h->devname));
    hpsa_free_irqs(h);
    return (-19);
  } else {
  }
  return (0);
}
}
static int hpsa_kdump_soft_reset(struct ctlr_info *h )
{
  int rc ;
  {
  hpsa_send_host_reset(h, (unsigned char *)"", 0);
  _dev_info((struct device const *)(& (h->pdev)->dev), "Waiting for board to soft reset.\n");
  rc = hpsa_wait_for_board_state(h->pdev, h->vaddr, 0);
  if (rc != 0) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "Soft reset had no effect.\n");
    return (rc);
  } else {
  }
  _dev_info((struct device const *)(& (h->pdev)->dev), "Board reset, awaiting READY status.\n");
  rc = hpsa_wait_for_board_state(h->pdev, h->vaddr, 1);
  if (rc != 0) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "Board failed to become ready after soft reset.\n");
    return (rc);
  } else {
  }
  return (0);
}
}
static void hpsa_free_reply_queues(struct ctlr_info *h )
{
  int i ;
  {
  i = 0;
  goto ldv_42563;
  ldv_42562: ;
  if ((unsigned long )h->reply_queue[i].head == (unsigned long )((u64 *)0ULL)) {
    goto ldv_42561;
  } else {
  }
  pci_free_consistent(h->pdev, h->reply_queue_size, (void *)h->reply_queue[i].head,
                      h->reply_queue[i].busaddr);
  h->reply_queue[i].head = (u64 *)0ULL;
  h->reply_queue[i].busaddr = 0ULL;
  ldv_42561:
  i = i + 1;
  ldv_42563: ;
  if ((int )h->nreply_queues > i) {
    goto ldv_42562;
  } else {
  }
  h->reply_queue_size = 0UL;
  return;
}
}
static void hpsa_undo_allocations_after_kdump_soft_reset(struct ctlr_info *h )
{
  {
  hpsa_free_performant_mode(h);
  hpsa_free_sg_chain_blocks(h);
  hpsa_free_cmd_pool(h);
  hpsa_free_irqs(h);
  scsi_host_put(h->scsi_host);
  h->scsi_host = (struct Scsi_Host *)0;
  hpsa_free_pci_init(h);
  free_percpu((void *)h->lockup_detected);
  h->lockup_detected = (u32 *)0U;
  if ((unsigned long )h->resubmit_wq != (unsigned long )((struct workqueue_struct *)0)) {
    ldv_destroy_workqueue_32(h->resubmit_wq);
    h->resubmit_wq = (struct workqueue_struct *)0;
  } else {
  }
  if ((unsigned long )h->rescan_ctlr_wq != (unsigned long )((struct workqueue_struct *)0)) {
    ldv_destroy_workqueue_33(h->rescan_ctlr_wq);
    h->rescan_ctlr_wq = (struct workqueue_struct *)0;
  } else {
  }
  kfree((void const *)h);
  return;
}
}
static void fail_all_outstanding_cmds(struct ctlr_info *h )
{
  int i ;
  int refcount ;
  struct CommandList *c ;
  int failcount ;
  {
  failcount = 0;
  ldv_flush_workqueue_34(h->resubmit_wq);
  i = 0;
  goto ldv_42576;
  ldv_42575:
  c = h->cmd_pool + (unsigned long )i;
  refcount = atomic_add_return(1, & c->refcount);
  if (refcount > 1) {
    (c->err_info)->CommandStatus = 65535U;
    finish_cmd(c);
    atomic_dec(& h->commands_outstanding);
    failcount = failcount + 1;
  } else {
  }
  cmd_free(h, c);
  i = i + 1;
  ldv_42576: ;
  if (h->nr_cmds > i) {
    goto ldv_42575;
  } else {
  }
  dev_warn((struct device const *)(& (h->pdev)->dev), "failed %d commands in fail_all\n",
           failcount);
  return;
}
}
static void set_lockup_detected_for_all_cpus(struct ctlr_info *h , u32 value )
{
  int cpu ;
  u32 *lockup_detected___0 ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  unsigned int tmp ;
  {
  cpu = -1;
  goto ldv_42589;
  ldv_42588:
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (h->lockup_detected));
  lockup_detected___0 = (u32 *)(__per_cpu_offset[cpu] + __ptr);
  *lockup_detected___0 = value;
  ldv_42589:
  tmp = cpumask_next(cpu, cpu_online_mask);
  cpu = (int )tmp;
  if (cpu < nr_cpu_ids) {
    goto ldv_42588;
  } else {
  }
  __asm__ volatile ("sfence": : : "memory");
  return;
}
}
static void controller_lockup_detected(struct ctlr_info *h )
{
  unsigned long flags ;
  u32 lockup_detected___0 ;
  {
  (*(h->access.set_intr_mask))(h, 0UL);
  ldv_spin_lock();
  lockup_detected___0 = readl((void const volatile *)h->vaddr + 176U);
  if (lockup_detected___0 == 0U) {
    dev_warn((struct device const *)(& (h->pdev)->dev), "lockup detected after %d but scratchpad register is zero\n",
             h->heartbeat_sample_interval / 250U);
    lockup_detected___0 = 4294967295U;
  } else {
  }
  set_lockup_detected_for_all_cpus(h, lockup_detected___0);
  spin_unlock_irqrestore(& h->lock, flags);
  dev_warn((struct device const *)(& (h->pdev)->dev), "Controller lockup detected: 0x%08x after %d\n",
           lockup_detected___0, h->heartbeat_sample_interval / 250U);
  pci_disable_device(h->pdev);
  fail_all_outstanding_cmds(h);
  return;
}
}
static int detect_controller_lockup(struct ctlr_info *h )
{
  u64 now ;
  u32 heartbeat ;
  unsigned long flags ;
  {
  now = get_jiffies_64();
  if ((long long )(now - (h->last_intr_timestamp + (u64 )h->heartbeat_sample_interval)) < 0LL) {
    return (0);
  } else {
  }
  if ((long long )(now - (h->last_heartbeat_timestamp + (u64 )h->heartbeat_sample_interval)) < 0LL) {
    return (0);
  } else {
  }
  ldv_spin_lock();
  heartbeat = readl((void const volatile *)(& (h->cfgtable)->HeartBeat));
  spin_unlock_irqrestore(& h->lock, flags);
  if (h->last_heartbeat == heartbeat) {
    controller_lockup_detected(h);
    return (1);
  } else {
  }
  h->last_heartbeat = heartbeat;
  h->last_heartbeat_timestamp = now;
  return (0);
}
}
static void hpsa_ack_ctlr_events(struct ctlr_info *h )
{
  int i ;
  char *event_type ;
  {
  if ((h->fw_support & 128U) == 0U) {
    return;
  } else {
  }
  if ((h->transMethod & 384UL) != 0UL && ((h->events & 1073741824U) != 0U || (int )h->events < 0)) {
    if ((h->events & 1073741824U) != 0U) {
      event_type = (char *)"state change";
    } else {
    }
    if ((int )h->events < 0) {
      event_type = (char *)"configuration change";
    } else {
    }
    scsi_block_requests(h->scsi_host);
    i = 0;
    goto ldv_42620;
    ldv_42619:
    (h->dev[i])->offload_enabled = 0;
    i = i + 1;
    ldv_42620: ;
    if (h->ndevices > i) {
      goto ldv_42619;
    } else {
    }
    hpsa_drain_accel_commands(h);
    dev_warn((struct device const *)(& (h->pdev)->dev), "Acknowledging event: 0x%08x (HP SSD Smart Path %s)\n",
             h->events, event_type);
    writel(h->events, (void volatile *)(& (h->cfgtable)->clear_event_notify));
    writel(64U, (void volatile *)h->vaddr + 32U);
    hpsa_wait_for_clear_event_notify_ack(h);
    scsi_unblock_requests(h->scsi_host);
  } else {
    writel(h->events, (void volatile *)(& (h->cfgtable)->clear_event_notify));
    writel(64U, (void volatile *)h->vaddr + 32U);
    hpsa_wait_for_clear_event_notify_ack(h);
  }
  return;
}
}
static int hpsa_ctlr_needs_rescan(struct ctlr_info *h )
{
  {
  if ((h->fw_support & 128U) == 0U) {
    return (0);
  } else {
  }
  h->events = readl((void const volatile *)(& (h->cfgtable)->event_notify));
  return ((int )h->events & -1073741774);
}
}
static int hpsa_offline_devices_ready(struct ctlr_info *h )
{
  unsigned long flags ;
  struct offline_device_entry *d ;
  struct list_head *this ;
  struct list_head *tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  {
  ldv_spin_lock();
  this = h->offline_device_list.next;
  tmp = this->next;
  goto ldv_42635;
  ldv_42634:
  __mptr = (struct list_head const *)this;
  d = (struct offline_device_entry *)__mptr + 0xfffffffffffffff8UL;
  spin_unlock_irqrestore(& h->offline_device_lock, flags);
  tmp___0 = hpsa_volume_offline(h, (unsigned char *)(& d->scsi3addr));
  if (tmp___0 == 0) {
    ldv_spin_lock();
    list_del(& d->offline_list);
    spin_unlock_irqrestore(& h->offline_device_lock, flags);
    return (1);
  } else {
  }
  ldv_spin_lock();
  this = tmp;
  tmp = this->next;
  ldv_42635: ;
  if ((unsigned long )(& h->offline_device_list) != (unsigned long )this) {
    goto ldv_42634;
  } else {
  }
  spin_unlock_irqrestore(& h->offline_device_lock, flags);
  return (0);
}
}
static void hpsa_rescan_ctlr_worker(struct work_struct *work )
{
  unsigned long flags ;
  struct ctlr_info *h ;
  struct delayed_work const *__mptr ;
  struct delayed_work *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = to_delayed_work(work);
  __mptr = (struct delayed_work const *)tmp;
  h = (struct ctlr_info *)__mptr + 0xffffffffffffb248UL;
  if (h->remove_in_progress != 0) {
    return;
  } else {
  }
  tmp___0 = hpsa_ctlr_needs_rescan(h);
  if (tmp___0 != 0) {
    scsi_host_get(h->scsi_host);
    hpsa_ack_ctlr_events(h);
    hpsa_scan_start(h->scsi_host);
    scsi_host_put(h->scsi_host);
  } else {
    tmp___1 = hpsa_offline_devices_ready(h);
    if (tmp___1 != 0) {
      scsi_host_get(h->scsi_host);
      hpsa_ack_ctlr_events(h);
      hpsa_scan_start(h->scsi_host);
      scsi_host_put(h->scsi_host);
    } else {
    }
  }
  ldv_spin_lock();
  if (h->remove_in_progress == 0) {
    queue_delayed_work(h->rescan_ctlr_wq, & h->rescan_ctlr_work, (unsigned long )h->heartbeat_sample_interval);
  } else {
  }
  spin_unlock_irqrestore(& h->lock, flags);
  return;
}
}
static void hpsa_monitor_ctlr_worker(struct work_struct *work )
{
  unsigned long flags ;
  struct ctlr_info *h ;
  struct delayed_work const *__mptr ;
  struct delayed_work *tmp ;
  u32 tmp___0 ;
  {
  tmp = to_delayed_work(work);
  __mptr = (struct delayed_work const *)tmp;
  h = (struct ctlr_info *)__mptr + 0xffffffffffffb328UL;
  detect_controller_lockup(h);
  tmp___0 = lockup_detected(h);
  if (tmp___0 != 0U) {
    return;
  } else {
  }
  ldv_spin_lock();
  if (h->remove_in_progress == 0) {
    schedule_delayed_work(& h->monitor_ctlr_work, (unsigned long )h->heartbeat_sample_interval);
  } else {
  }
  spin_unlock_irqrestore(& h->lock, flags);
  return;
}
}
static struct workqueue_struct *hpsa_create_controller_wq(struct ctlr_info *h , char *name )
{
  struct workqueue_struct *wq ;
  struct lock_class_key __key ;
  char const *__lock_name ;
  struct workqueue_struct *tmp ;
  {
  wq = (struct workqueue_struct *)0;
  __lock_name = "\"%s_%d_hpsa\"name, h->ctlr";
  tmp = __alloc_workqueue_key("%s_%d_hpsa", 131074U, 1, & __key, __lock_name, name,
                              h->ctlr);
  wq = tmp;
  if ((unsigned long )wq == (unsigned long )((struct workqueue_struct *)0)) {
    dev_err((struct device const *)(& (h->pdev)->dev), "failed to create %s workqueue\n",
            name);
  } else {
  }
  return (wq);
}
}
static int hpsa_init_one(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  int dac ;
  int rc ;
  struct ctlr_info *h ;
  int try_soft_reset ;
  unsigned long flags ;
  u32 board_id ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  void *tmp___0 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  struct lock_class_key __key___5 ;
  struct lock_class_key __key___6 ;
  struct lock_class_key __key___7 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___8 ;
  struct lock_class_key __key___9 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___10 ;
  {
  try_soft_reset = 0;
  if (number_of_controllers == 0) {
    printk("\016HP HPSA Driver (v 3.4.10-0)\n");
  } else {
  }
  rc = hpsa_lookup_board_id(pdev, & board_id);
  if (rc < 0) {
    dev_warn((struct device const *)(& pdev->dev), "Board ID not found\n");
    return (rc);
  } else {
  }
  rc = hpsa_init_reset_devices(pdev, board_id);
  if (rc != 0) {
    if (rc != -524) {
      return (rc);
    } else {
    }
    try_soft_reset = 1;
    rc = 0;
  } else {
  }
  reinit_after_soft_reset:
  tmp = kmalloc(21688UL, 208U);
  h = (struct ctlr_info *)tmp;
  if ((unsigned long )h == (unsigned long )((struct ctlr_info *)0)) {
    dev_err((struct device const *)(& pdev->dev), "Failed to allocate controller head\n");
    return (-12);
  } else {
  }
  h->pdev = pdev;
  h->intr_mode = hpsa_simple_mode != 0 ? 2 : 0;
  INIT_LIST_HEAD(& h->offline_device_list);
  spinlock_check(& h->lock);
  __raw_spin_lock_init(& h->lock.__annonCompField18.rlock, "&(&h->lock)->rlock", & __key);
  spinlock_check(& h->offline_device_lock);
  __raw_spin_lock_init(& h->offline_device_lock.__annonCompField18.rlock, "&(&h->offline_device_lock)->rlock",
                       & __key___0);
  spinlock_check(& h->scan_lock);
  __raw_spin_lock_init(& h->scan_lock.__annonCompField18.rlock, "&(&h->scan_lock)->rlock",
                       & __key___1);
  atomic_set(& h->passthru_cmds_avail, 10);
  atomic_set(& h->abort_cmds_available, 2);
  tmp___0 = __alloc_percpu(4UL, 4UL);
  h->lockup_detected = (u32 *)tmp___0;
  if ((unsigned long )h->lockup_detected == (unsigned long )((u32 *)0U)) {
    dev_err((struct device const *)(& (h->pdev)->dev), "Failed to allocate lockup detector\n");
    rc = -12;
    goto clean1;
  } else {
  }
  set_lockup_detected_for_all_cpus(h, 0U);
  rc = hpsa_pci_init(h);
  if (rc != 0) {
    goto clean2;
  } else {
  }
  rc = hpsa_scsi_host_alloc(h);
  if (rc != 0) {
    goto clean2_5;
  } else {
  }
  sprintf((char *)(& h->devname), "hpsa%d", (h->scsi_host)->host_no);
  h->ctlr = number_of_controllers;
  number_of_controllers = number_of_controllers + 1;
  rc = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
  if (rc == 0) {
    dac = 1;
  } else {
    rc = pci_set_dma_mask(pdev, 4294967295ULL);
    if (rc == 0) {
      dac = 0;
    } else {
      dev_err((struct device const *)(& pdev->dev), "no suitable DMA available\n");
      goto clean3;
    }
  }
  (*(h->access.set_intr_mask))(h, 0UL);
  rc = hpsa_request_irqs(h, & do_hpsa_intr_msi, & do_hpsa_intr_intx);
  if (rc != 0) {
    goto clean3;
  } else {
  }
  rc = hpsa_alloc_cmd_pool(h);
  if (rc != 0) {
    goto clean4;
  } else {
  }
  rc = hpsa_alloc_sg_chain_blocks(h);
  if (rc != 0) {
    goto clean5;
  } else {
  }
  __init_waitqueue_head(& h->scan_wait_queue, "&h->scan_wait_queue", & __key___2);
  __init_waitqueue_head(& h->abort_cmd_wait_queue, "&h->abort_cmd_wait_queue", & __key___3);
  __init_waitqueue_head(& h->event_sync_wait_queue, "&h->event_sync_wait_queue", & __key___4);
  __mutex_init(& h->reset_mutex, "&h->reset_mutex", & __key___5);
  h->scan_finished = 1;
  pci_set_drvdata(pdev, (void *)h);
  h->ndevices = 0;
  h->hba_mode_enabled = 0;
  spinlock_check(& h->devlock);
  __raw_spin_lock_init(& h->devlock.__annonCompField18.rlock, "&(&h->devlock)->rlock",
                       & __key___6);
  rc = hpsa_put_ctlr_into_performant_mode(h);
  if (rc != 0) {
    goto clean6;
  } else {
  }
  rc = hpsa_scsi_add_host(h);
  if (rc != 0) {
    goto clean7;
  } else {
  }
  h->rescan_ctlr_wq = hpsa_create_controller_wq(h, (char *)"rescan");
  if ((unsigned long )h->rescan_ctlr_wq == (unsigned long )((struct workqueue_struct *)0)) {
    rc = -12;
    goto clean7;
  } else {
  }
  h->resubmit_wq = hpsa_create_controller_wq(h, (char *)"resubmit");
  if ((unsigned long )h->resubmit_wq == (unsigned long )((struct workqueue_struct *)0)) {
    rc = -12;
    goto clean7;
  } else {
  }
  if (try_soft_reset != 0) {
    ldv_spin_lock();
    (*(h->access.set_intr_mask))(h, 0UL);
    spin_unlock_irqrestore(& h->lock, flags);
    hpsa_free_irqs(h);
    rc = hpsa_request_irqs(h, & hpsa_msix_discard_completions, & hpsa_intx_discard_completions);
    if (rc != 0) {
      dev_warn((struct device const *)(& (h->pdev)->dev), "Failed to request_irq after soft reset.\n");
      hpsa_free_performant_mode(h);
      hpsa_free_sg_chain_blocks(h);
      hpsa_free_cmd_pool(h);
      goto clean3;
    } else {
    }
    rc = hpsa_kdump_soft_reset(h);
    if (rc != 0) {
      goto clean9;
    } else {
    }
    _dev_info((struct device const *)(& (h->pdev)->dev), "Board READY.\n");
    _dev_info((struct device const *)(& (h->pdev)->dev), "Waiting for stale completions to drain.\n");
    (*(h->access.set_intr_mask))(h, 1UL);
    msleep(10000U);
    (*(h->access.set_intr_mask))(h, 0UL);
    rc = controller_reset_failed(h->cfgtable);
    if (rc != 0) {
      _dev_info((struct device const *)(& (h->pdev)->dev), "Soft reset appears to have failed.\n");
    } else {
    }
    hpsa_undo_allocations_after_kdump_soft_reset(h);
    try_soft_reset = 0;
    if (rc != 0) {
      return (-19);
    } else {
    }
    goto reinit_after_soft_reset;
  } else {
  }
  h->acciopath_status = 1;
  (*(h->access.set_intr_mask))(h, 1UL);
  hpsa_hba_inquiry(h);
  h->heartbeat_sample_interval = 7500U;
  __init_work(& h->monitor_ctlr_work.work, 0);
  __constr_expr_0.counter = 137438953408L;
  h->monitor_ctlr_work.work.data = __constr_expr_0;
  lockdep_init_map(& h->monitor_ctlr_work.work.lockdep_map, "(&(&h->monitor_ctlr_work)->work)",
                   & __key___7, 0);
  INIT_LIST_HEAD(& h->monitor_ctlr_work.work.entry);
  h->monitor_ctlr_work.work.func = & hpsa_monitor_ctlr_worker;
  init_timer_key(& h->monitor_ctlr_work.timer, 2097152U, "(&(&h->monitor_ctlr_work)->timer)",
                 & __key___8);
  h->monitor_ctlr_work.timer.function = & delayed_work_timer_fn;
  h->monitor_ctlr_work.timer.data = (unsigned long )(& h->monitor_ctlr_work);
  schedule_delayed_work(& h->monitor_ctlr_work, (unsigned long )h->heartbeat_sample_interval);
  __init_work(& h->rescan_ctlr_work.work, 0);
  __constr_expr_1.counter = 137438953408L;
  h->rescan_ctlr_work.work.data = __constr_expr_1;
  lockdep_init_map(& h->rescan_ctlr_work.work.lockdep_map, "(&(&h->rescan_ctlr_work)->work)",
                   & __key___9, 0);
  INIT_LIST_HEAD(& h->rescan_ctlr_work.work.entry);
  h->rescan_ctlr_work.work.func = & hpsa_rescan_ctlr_worker;
  init_timer_key(& h->rescan_ctlr_work.timer, 2097152U, "(&(&h->rescan_ctlr_work)->timer)",
                 & __key___10);
  h->rescan_ctlr_work.timer.function = & delayed_work_timer_fn;
  h->rescan_ctlr_work.timer.data = (unsigned long )(& h->rescan_ctlr_work);
  queue_delayed_work(h->rescan_ctlr_wq, & h->rescan_ctlr_work, (unsigned long )h->heartbeat_sample_interval);
  return (0);
  clean9:
  kfree((void const *)h->hba_inquiry_data);
  clean7:
  hpsa_free_performant_mode(h);
  (*(h->access.set_intr_mask))(h, 0UL);
  clean6:
  hpsa_free_sg_chain_blocks(h);
  clean5:
  hpsa_free_cmd_pool(h);
  clean4:
  hpsa_free_irqs(h);
  clean3:
  scsi_host_put(h->scsi_host);
  h->scsi_host = (struct Scsi_Host *)0;
  clean2_5:
  hpsa_free_pci_init(h);
  clean2: ;
  if ((unsigned long )h->lockup_detected != (unsigned long )((u32 *)0U)) {
    free_percpu((void *)h->lockup_detected);
    h->lockup_detected = (u32 *)0U;
  } else {
  }
  clean1: ;
  if ((unsigned long )h->resubmit_wq != (unsigned long )((struct workqueue_struct *)0)) {
    ldv_destroy_workqueue_35(h->resubmit_wq);
    h->resubmit_wq = (struct workqueue_struct *)0;
  } else {
  }
  if ((unsigned long )h->rescan_ctlr_wq != (unsigned long )((struct workqueue_struct *)0)) {
    ldv_destroy_workqueue_36(h->rescan_ctlr_wq);
    h->rescan_ctlr_wq = (struct workqueue_struct *)0;
  } else {
  }
  kfree((void const *)h);
  return (rc);
}
}
static void hpsa_flush_cache(struct ctlr_info *h )
{
  char *flush_buf ;
  struct CommandList *c ;
  int rc ;
  u32 tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = lockup_detected(h);
  tmp___0 = ldv__builtin_expect(tmp != 0U, 0L);
  if (tmp___0 != 0L) {
    return;
  } else {
  }
  tmp___1 = kmalloc(4UL, 208U);
  flush_buf = (char *)tmp___1;
  if ((unsigned long )flush_buf == (unsigned long )((char *)0)) {
    return;
  } else {
  }
  c = cmd_alloc(h);
  tmp___2 = fill_cmd(c, 1, h, (void *)flush_buf, 4UL, 0, (unsigned char *)"", 0);
  if (tmp___2 != 0) {
    goto out;
  } else {
  }
  rc = hpsa_scsi_do_simple_cmd_with_retry(h, c, 1, 0xffffffffffffffffUL);
  if (rc != 0) {
    goto out;
  } else {
  }
  if ((unsigned int )(c->err_info)->CommandStatus != 0U) {
    out:
    dev_warn((struct device const *)(& (h->pdev)->dev), "error flushing cache on controller\n");
  } else {
  }
  cmd_free(h, c);
  kfree((void const *)flush_buf);
  return;
}
}
static void hpsa_shutdown(struct pci_dev *pdev )
{
  struct ctlr_info *h ;
  void *tmp ;
  {
  tmp = pci_get_drvdata(pdev);
  h = (struct ctlr_info *)tmp;
  hpsa_flush_cache(h);
  (*(h->access.set_intr_mask))(h, 0UL);
  hpsa_free_irqs(h);
  hpsa_disable_interrupt_mode(h);
  return;
}
}
static void hpsa_free_device_info(struct ctlr_info *h )
{
  int i ;
  {
  i = 0;
  goto ldv_42709;
  ldv_42708:
  kfree((void const *)h->dev[i]);
  h->dev[i] = (struct hpsa_scsi_dev_t *)0;
  i = i + 1;
  ldv_42709: ;
  if (h->ndevices > i) {
    goto ldv_42708;
  } else {
  }
  return;
}
}
static void hpsa_remove_one(struct pci_dev *pdev )
{
  struct ctlr_info *h ;
  unsigned long flags ;
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = pci_get_drvdata(pdev);
  if ((unsigned long )tmp == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& pdev->dev), "unable to remove device\n");
    return;
  } else {
  }
  tmp___0 = pci_get_drvdata(pdev);
  h = (struct ctlr_info *)tmp___0;
  ldv_spin_lock();
  h->remove_in_progress = 1;
  spin_unlock_irqrestore(& h->lock, flags);
  ldv_cancel_delayed_work_sync_37(& h->monitor_ctlr_work);
  ldv_cancel_delayed_work_sync_38(& h->rescan_ctlr_work);
  ldv_destroy_workqueue_39(h->rescan_ctlr_wq);
  ldv_destroy_workqueue_40(h->resubmit_wq);
  hpsa_shutdown(pdev);
  hpsa_free_device_info(h);
  kfree((void const *)h->hba_inquiry_data);
  h->hba_inquiry_data = (unsigned char *)0U;
  if ((unsigned long )h->scsi_host != (unsigned long )((struct Scsi_Host *)0)) {
    ldv_scsi_remove_host_41(h->scsi_host);
  } else {
  }
  hpsa_free_ioaccel2_sg_chain_blocks(h);
  hpsa_free_performant_mode(h);
  hpsa_free_sg_chain_blocks(h);
  hpsa_free_cmd_pool(h);
  scsi_host_put(h->scsi_host);
  h->scsi_host = (struct Scsi_Host *)0;
  hpsa_free_pci_init(h);
  free_percpu((void *)h->lockup_detected);
  h->lockup_detected = (u32 *)0U;
  kfree((void const *)h);
  return;
}
}
static int hpsa_suspend(struct pci_dev *pdev , pm_message_t state )
{
  {
  return (-38);
}
}
static int hpsa_resume(struct pci_dev *pdev )
{
  {
  return (-38);
}
}
static struct pci_driver hpsa_pci_driver =
     {{0, 0}, "hpsa", (struct pci_device_id const *)(& hpsa_pci_device_id), & hpsa_init_one,
    & hpsa_remove_one, & hpsa_suspend, 0, 0, & hpsa_resume, & hpsa_shutdown, 0, 0,
    {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {{{{{{0}}, 0U, 0U, 0,
                                                                 {0, {0, 0}, 0, 0,
                                                                  0UL}}}}, {0, 0}}};
static void calc_bucket_map(int *bucket , int num_buckets , int nsgs , int min_blocks ,
                            u32 *bucket_map )
{
  int i ;
  int j ;
  int b ;
  int size ;
  {
  i = 0;
  goto ldv_42739;
  ldv_42738:
  size = i + min_blocks;
  b = num_buckets;
  j = 0;
  goto ldv_42737;
  ldv_42736: ;
  if (*(bucket + (unsigned long )j) >= size) {
    b = j;
    goto ldv_42735;
  } else {
  }
  j = j + 1;
  ldv_42737: ;
  if (j < num_buckets) {
    goto ldv_42736;
  } else {
  }
  ldv_42735:
  *(bucket_map + (unsigned long )i) = (u32 )b;
  i = i + 1;
  ldv_42739: ;
  if (i <= nsgs) {
    goto ldv_42738;
  } else {
  }
  return;
}
}
static int hpsa_enter_performant_mode(struct ctlr_info *h , u32 trans_support )
{
  int i ;
  unsigned long register_value ;
  unsigned long transMethod ;
  struct access_method access ;
  int bft[8U] ;
  int bft2[16U] ;
  int tmp ;
  unsigned int tmp___0 ;
  struct io_accel1_cmd *cp ;
  u64 cfg_offset ;
  u64 cfg_base_addr_index ;
  u32 bft2_offset ;
  u32 cfg_base_addr ;
  int rc ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  transMethod = (unsigned long )((((long )trans_support & 536870912L) | 1073741828L) | ((long )trans_support & 384L));
  access = SA5_performant_access;
  bft[0] = 5;
  bft[1] = 6;
  bft[2] = 8;
  bft[3] = 10;
  bft[4] = 12;
  bft[5] = 20;
  bft[6] = 28;
  bft[7] = 36;
  bft2[0] = 5;
  bft2[1] = 6;
  bft2[2] = 7;
  bft2[3] = 8;
  bft2[4] = 9;
  bft2[5] = 10;
  bft2[6] = 11;
  bft2[7] = 12;
  bft2[8] = 13;
  bft2[9] = 14;
  bft2[10] = 15;
  bft2[11] = 16;
  bft2[12] = 17;
  bft2[13] = 18;
  bft2[14] = 19;
  bft2[15] = 32;
  if (((long )trans_support & 384L) != 0L) {
    access = SA5_performant_access_no_read;
  } else {
  }
  i = 0;
  goto ldv_42752;
  ldv_42751:
  memset((void *)h->reply_queue[i].head, 0, h->reply_queue_size);
  i = i + 1;
  ldv_42752: ;
  if ((int )h->nreply_queues > i) {
    goto ldv_42751;
  } else {
  }
  bft[7] = 36;
  calc_bucket_map((int *)(& bft), 8, 32, 4, h->blockFetchTable);
  i = 0;
  goto ldv_42757;
  ldv_42756:
  writel((unsigned int )bft[i], (void volatile *)(& (h->transtable)->BlockFetch) + (unsigned long )i);
  i = i + 1;
  ldv_42757: ;
  if (i <= 7) {
    goto ldv_42756;
  } else {
  }
  writel((unsigned int )h->max_commands, (void volatile *)(& (h->transtable)->RepQSize));
  writel((unsigned int )h->nreply_queues, (void volatile *)(& (h->transtable)->RepQCount));
  writel(0U, (void volatile *)(& (h->transtable)->RepQCtrAddrLow32));
  writel(0U, (void volatile *)(& (h->transtable)->RepQCtrAddrHigh32));
  i = 0;
  goto ldv_42760;
  ldv_42759:
  writel(0U, (void volatile *)(& (h->transtable)->RepQAddr[i].upper));
  writel((unsigned int )h->reply_queue[i].busaddr, (void volatile *)(& (h->transtable)->RepQAddr[i].lower));
  i = i + 1;
  ldv_42760: ;
  if ((int )h->nreply_queues > i) {
    goto ldv_42759;
  } else {
  }
  writel(0U, (void volatile *)(& (h->cfgtable)->HostWrite.command_pool_addr_hi));
  writel((unsigned int )transMethod, (void volatile *)(& (h->cfgtable)->HostWrite.TransportRequest));
  if (((long )trans_support & 128L) != 0L) {
    access = SA5_ioaccel_mode1_access;
    writel(10U, (void volatile *)(& (h->cfgtable)->HostWrite.CoalIntDelay));
    writel(4U, (void volatile *)(& (h->cfgtable)->HostWrite.CoalIntCount));
  } else
  if (((long )trans_support & 256L) != 0L) {
    access = SA5_ioaccel_mode2_access;
    writel(10U, (void volatile *)(& (h->cfgtable)->HostWrite.CoalIntDelay));
    writel(4U, (void volatile *)(& (h->cfgtable)->HostWrite.CoalIntCount));
  } else {
  }
  writel(1U, (void volatile *)h->vaddr + 32U);
  tmp = hpsa_wait_for_mode_change_ack(h);
  if (tmp != 0) {
    dev_err((struct device const *)(& (h->pdev)->dev), "performant mode problem - doorbell timeout\n");
    return (-19);
  } else {
  }
  tmp___0 = readl((void const volatile *)(& (h->cfgtable)->TransportActive));
  register_value = (unsigned long )tmp___0;
  if ((register_value & 4UL) == 0UL) {
    dev_err((struct device const *)(& (h->pdev)->dev), "performant mode problem - transport not active\n");
    return (-19);
  } else {
  }
  h->access = access;
  h->transMethod = transMethod;
  if (((long )trans_support & 128L) == 0L && ((long )trans_support & 256L) == 0L) {
    return (0);
  } else {
  }
  if (((long )trans_support & 128L) != 0L) {
    i = 0;
    goto ldv_42763;
    ldv_42762:
    writel((unsigned int )i, (void volatile *)h->vaddr + 416U);
    h->reply_queue[i].current_entry = readl((void const volatile *)h->vaddr + 440U);
    i = i + 1;
    ldv_42763: ;
    if ((int )h->nreply_queues > i) {
      goto ldv_42762;
    } else {
    }
    bft[7] = h->ioaccel_maxsg + 8;
    calc_bucket_map((int *)(& bft), 8, h->ioaccel_maxsg, 8, h->ioaccel1_blockFetchTable);
    i = 0;
    goto ldv_42768;
    ldv_42767:
    memset((void *)h->reply_queue[i].head, 255, h->reply_queue_size);
    i = i + 1;
    ldv_42768: ;
    if ((int )h->nreply_queues > i) {
      goto ldv_42767;
    } else {
    }
    i = 0;
    goto ldv_42772;
    ldv_42771:
    cp = h->ioaccel_cmd_pool + (unsigned long )i;
    cp->function = 0U;
    cp->err_info = (unsigned int )h->errinfo_pool_dhandle + (unsigned int )((unsigned long )i) * 48U;
    cp->err_info_len = 48U;
    cp->sgl_offset = 32U;
    cp->host_context_flags = 19U;
    cp->timeout_sec = 0U;
    cp->ReplyQueue = 0U;
    cp->tag = (unsigned long long )(i << 4);
    cp->host_addr = h->ioaccel_cmd_pool_dhandle + (unsigned long long )((unsigned long )i * 512UL);
    i = i + 1;
    ldv_42772: ;
    if (h->nr_cmds > i) {
      goto ldv_42771;
    } else {
    }
  } else
  if (((long )trans_support & 256L) != 0L) {
    rc = hpsa_find_cfg_addrs(h->pdev, h->vaddr, & cfg_base_addr, & cfg_base_addr_index,
                             & cfg_offset);
    bft2[15] = h->ioaccel_maxsg + 4;
    calc_bucket_map((int *)(& bft2), 16, h->ioaccel_maxsg, 4, h->ioaccel2_blockFetchTable);
    bft2_offset = readl((void const volatile *)(& (h->cfgtable)->io_accel_request_size_offset));
    tmp___1 = remap_pci_mem((ulong )(((h->pdev)->resource[cfg_base_addr_index].start + cfg_offset) + (unsigned long long )bft2_offset),
                            64UL);
    h->ioaccel2_bft2_regs = (u32 *)tmp___1;
    i = 0;
    goto ldv_42786;
    ldv_42785:
    writel((unsigned int )bft2[i], (void volatile *)h->ioaccel2_bft2_regs + (unsigned long )i);
    i = i + 1;
    ldv_42786: ;
    if ((unsigned int )i <= 15U) {
      goto ldv_42785;
    } else {
    }
  } else {
  }
  writel(1U, (void volatile *)h->vaddr + 32U);
  tmp___2 = hpsa_wait_for_mode_change_ack(h);
  if (tmp___2 != 0) {
    dev_err((struct device const *)(& (h->pdev)->dev), "performant mode problem - enabling ioaccel mode\n");
    return (-19);
  } else {
  }
  return (0);
}
}
static void hpsa_free_ioaccel1_cmd_and_bft(struct ctlr_info *h )
{
  {
  if ((unsigned long )h->ioaccel_cmd_pool != (unsigned long )((struct io_accel1_cmd *)0)) {
    pci_free_consistent(h->pdev, (unsigned long )h->nr_cmds * 512UL, (void *)h->ioaccel_cmd_pool,
                        h->ioaccel_cmd_pool_dhandle);
    h->ioaccel_cmd_pool = (struct io_accel1_cmd *)0;
    h->ioaccel_cmd_pool_dhandle = 0ULL;
  } else {
  }
  kfree((void const *)h->ioaccel1_blockFetchTable);
  h->ioaccel1_blockFetchTable = (u32 *)0U;
  return;
}
}
static int hpsa_alloc_ioaccel1_cmd_and_bft(struct ctlr_info *h )
{
  unsigned int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = readl((void const volatile *)(& (h->cfgtable)->io_accel_max_embedded_sg_count));
  h->ioaccel_maxsg = (int )tmp;
  if (h->ioaccel_maxsg > 24) {
    h->ioaccel_maxsg = 24;
  } else {
  }
  tmp___0 = pci_alloc_consistent(h->pdev, (unsigned long )h->nr_cmds * 512UL, & h->ioaccel_cmd_pool_dhandle);
  h->ioaccel_cmd_pool = (struct io_accel1_cmd *)tmp___0;
  tmp___1 = kmalloc((unsigned long )(h->ioaccel_maxsg + 1) * 4UL, 208U);
  h->ioaccel1_blockFetchTable = (u32 *)tmp___1;
  if ((unsigned long )h->ioaccel_cmd_pool == (unsigned long )((struct io_accel1_cmd *)0) || (unsigned long )h->ioaccel1_blockFetchTable == (unsigned long )((u32 *)0U)) {
    goto clean_up;
  } else {
  }
  memset((void *)h->ioaccel_cmd_pool, 0, (unsigned long )h->nr_cmds * 512UL);
  return (0);
  clean_up:
  hpsa_free_ioaccel1_cmd_and_bft(h);
  return (-12);
}
}
static void hpsa_free_ioaccel2_cmd_and_bft(struct ctlr_info *h )
{
  {
  hpsa_free_ioaccel2_sg_chain_blocks(h);
  if ((unsigned long )h->ioaccel2_cmd_pool != (unsigned long )((struct io_accel2_cmd *)0)) {
    pci_free_consistent(h->pdev, (unsigned long )h->nr_cmds * 640UL, (void *)h->ioaccel2_cmd_pool,
                        h->ioaccel2_cmd_pool_dhandle);
    h->ioaccel2_cmd_pool = (struct io_accel2_cmd *)0;
    h->ioaccel2_cmd_pool_dhandle = 0ULL;
  } else {
  }
  kfree((void const *)h->ioaccel2_blockFetchTable);
  h->ioaccel2_blockFetchTable = (u32 *)0U;
  return;
}
}
static int hpsa_alloc_ioaccel2_cmd_and_bft(struct ctlr_info *h )
{
  int rc ;
  unsigned int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = readl((void const volatile *)(& (h->cfgtable)->io_accel_max_embedded_sg_count));
  h->ioaccel_maxsg = (int )tmp;
  if (h->ioaccel_maxsg > 28) {
    h->ioaccel_maxsg = 28;
  } else {
  }
  tmp___0 = pci_alloc_consistent(h->pdev, (unsigned long )h->nr_cmds * 640UL, & h->ioaccel2_cmd_pool_dhandle);
  h->ioaccel2_cmd_pool = (struct io_accel2_cmd *)tmp___0;
  tmp___1 = kmalloc((unsigned long )(h->ioaccel_maxsg + 1) * 4UL, 208U);
  h->ioaccel2_blockFetchTable = (u32 *)tmp___1;
  if ((unsigned long )h->ioaccel2_cmd_pool == (unsigned long )((struct io_accel2_cmd *)0) || (unsigned long )h->ioaccel2_blockFetchTable == (unsigned long )((u32 *)0U)) {
    rc = -12;
    goto clean_up;
  } else {
  }
  rc = hpsa_allocate_ioaccel2_sg_chain_blocks(h);
  if (rc != 0) {
    goto clean_up;
  } else {
  }
  memset((void *)h->ioaccel2_cmd_pool, 0, (unsigned long )h->nr_cmds * 640UL);
  return (0);
  clean_up:
  hpsa_free_ioaccel2_cmd_and_bft(h);
  return (rc);
}
}
static void hpsa_free_performant_mode(struct ctlr_info *h )
{
  {
  kfree((void const *)h->blockFetchTable);
  h->blockFetchTable = (u32 *)0U;
  hpsa_free_reply_queues(h);
  hpsa_free_ioaccel1_cmd_and_bft(h);
  hpsa_free_ioaccel2_cmd_and_bft(h);
  return;
}
}
static int hpsa_put_ctlr_into_performant_mode(struct ctlr_info *h )
{
  u32 trans_support ;
  unsigned long transMethod ;
  int i ;
  int rc ;
  void *tmp ;
  void *tmp___0 ;
  {
  transMethod = 536870916UL;
  if (hpsa_simple_mode != 0) {
    return (0);
  } else {
  }
  trans_support = readl((void const volatile *)(& (h->cfgtable)->TransportSupport));
  if ((trans_support & 4U) == 0U) {
    return (0);
  } else {
  }
  if (((long )trans_support & 128L) != 0L) {
    transMethod = transMethod | 1073741952UL;
    rc = hpsa_alloc_ioaccel1_cmd_and_bft(h);
    if (rc != 0) {
      return (rc);
    } else {
    }
  } else
  if (((long )trans_support & 256L) != 0L) {
    transMethod = transMethod | 1073742080UL;
    rc = hpsa_alloc_ioaccel2_cmd_and_bft(h);
    if (rc != 0) {
      return (rc);
    } else {
    }
  } else {
  }
  h->nreply_queues = h->msix_vector != 0U ? (u8 )h->msix_vector : 1U;
  hpsa_get_max_perf_mode_cmds(h);
  h->reply_queue_size = (unsigned long )h->max_commands * 8UL;
  i = 0;
  goto ldv_42815;
  ldv_42814:
  tmp = pci_alloc_consistent(h->pdev, h->reply_queue_size, & h->reply_queue[i].busaddr);
  h->reply_queue[i].head = (u64 *)tmp;
  if ((unsigned long )h->reply_queue[i].head == (unsigned long )((u64 *)0ULL)) {
    rc = -12;
    goto clean1;
  } else {
  }
  h->reply_queue[i].size = (size_t )h->max_commands;
  h->reply_queue[i].wraparound = 1U;
  h->reply_queue[i].current_entry = 0U;
  i = i + 1;
  ldv_42815: ;
  if ((int )h->nreply_queues > i) {
    goto ldv_42814;
  } else {
  }
  tmp___0 = kmalloc(132UL, 208U);
  h->blockFetchTable = (u32 *)tmp___0;
  if ((unsigned long )h->blockFetchTable == (unsigned long )((u32 *)0U)) {
    rc = -12;
    goto clean1;
  } else {
  }
  rc = hpsa_enter_performant_mode(h, trans_support);
  if (rc != 0) {
    goto clean2;
  } else {
  }
  return (0);
  clean2:
  kfree((void const *)h->blockFetchTable);
  h->blockFetchTable = (u32 *)0U;
  clean1:
  hpsa_free_reply_queues(h);
  hpsa_free_ioaccel1_cmd_and_bft(h);
  hpsa_free_ioaccel2_cmd_and_bft(h);
  return (rc);
}
}
static int is_accelerated_cmd(struct CommandList *c )
{
  {
  return (c->cmd_type == 4 || c->cmd_type == 5);
}
}
static void hpsa_drain_accel_commands(struct ctlr_info *h )
{
  struct CommandList *c ;
  int i ;
  int accel_cmds_out ;
  int refcount ;
  int tmp ;
  {
  c = (struct CommandList *)0;
  ldv_42832:
  accel_cmds_out = 0;
  i = 0;
  goto ldv_42829;
  ldv_42828:
  c = h->cmd_pool + (unsigned long )i;
  refcount = atomic_add_return(1, & c->refcount);
  if (refcount > 1) {
    tmp = is_accelerated_cmd(c);
    accel_cmds_out = tmp + accel_cmds_out;
  } else {
  }
  cmd_free(h, c);
  i = i + 1;
  ldv_42829: ;
  if (h->nr_cmds > i) {
    goto ldv_42828;
  } else {
  }
  if (accel_cmds_out <= 0) {
    goto ldv_42831;
  } else {
  }
  msleep(100U);
  goto ldv_42832;
  ldv_42831: ;
  return;
}
}
static int hpsa_init(void)
{
  int tmp ;
  {
  tmp = ldv___pci_register_driver_42(& hpsa_pci_driver, & __this_module, "hpsa");
  return (tmp);
}
}
static void hpsa_cleanup(void)
{
  {
  ldv_pci_unregister_driver_43(& hpsa_pci_driver);
  return;
}
}
int ldv_retval_2 ;
extern int ldv_suspend_late_4(void) ;
int ldv_retval_5 ;
int ldv_retval_0 ;
int ldv_retval_4 ;
extern void ldv_initialize(void) ;
int ldv_retval_1 ;
extern void ldv_check_final_state(void) ;
int ldv_retval_3 ;
extern int ldv_resume_early_4(void) ;
void ldv_initialize_device_attribute_12(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_hp_ssd_smart_path_status_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_hp_ssd_smart_path_status_group1 = (struct device *)tmp___0;
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
    hpsa_command_resubmit_worker(work);
    ldv_work_1_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_1 == 2 || ldv_work_1_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_1) {
    hpsa_command_resubmit_worker(work);
    ldv_work_1_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_2 == 2 || ldv_work_1_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_2) {
    hpsa_command_resubmit_worker(work);
    ldv_work_1_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_3 == 2 || ldv_work_1_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_3) {
    hpsa_command_resubmit_worker(work);
    ldv_work_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_access_method_22(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(21688UL);
  SA5_access_group0 = (struct ctlr_info *)tmp;
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
void ldv_initialize_scsi_host_template_5(void)
{
  void *tmp___0 ;
  {
  hpsa_driver_template_group0 = ldv_malloc(sizeof(struct scsi_cmnd));
  tmp___0 = ldv_init_zalloc(3816UL);
  hpsa_driver_template_group1 = (struct Scsi_Host *)tmp___0;
  hpsa_driver_template_group2 = ldv_malloc(sizeof(struct scsi_device));
  return;
}
}
void ldv_initialize_access_method_20(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(21688UL);
  SA5_ioaccel_mode2_access_group0 = (struct ctlr_info *)tmp;
  return;
}
}
void ldv_pci_driver_4(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(2976UL);
  hpsa_pci_driver_group1 = (struct pci_dev *)tmp;
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
    hpsa_rescan_ctlr_worker(work);
    ldv_work_3_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_1 == 2 || ldv_work_3_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_1) {
    hpsa_rescan_ctlr_worker(work);
    ldv_work_3_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_2 == 2 || ldv_work_3_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_2) {
    hpsa_rescan_ctlr_worker(work);
    ldv_work_3_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_3 == 2 || ldv_work_3_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_3) {
    hpsa_rescan_ctlr_worker(work);
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
    hpsa_rescan_ctlr_worker(ldv_work_struct_3_0);
    ldv_work_3_0 = 1;
  } else {
  }
  goto ldv_42930;
  case 1: ;
  if (ldv_work_3_1 == 2 || ldv_work_3_1 == 3) {
    ldv_work_3_1 = 4;
    hpsa_rescan_ctlr_worker(ldv_work_struct_3_0);
    ldv_work_3_1 = 1;
  } else {
  }
  goto ldv_42930;
  case 2: ;
  if (ldv_work_3_2 == 2 || ldv_work_3_2 == 3) {
    ldv_work_3_2 = 4;
    hpsa_rescan_ctlr_worker(ldv_work_struct_3_0);
    ldv_work_3_2 = 1;
  } else {
  }
  goto ldv_42930;
  case 3: ;
  if (ldv_work_3_3 == 2 || ldv_work_3_3 == 3) {
    ldv_work_3_3 = 4;
    hpsa_rescan_ctlr_worker(ldv_work_struct_3_0);
    ldv_work_3_3 = 1;
  } else {
  }
  goto ldv_42930;
  default:
  ldv_stop();
  }
  ldv_42930: ;
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
void ldv_initialize_access_method_18(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(21688UL);
  SA5_performant_access_no_read_group0 = (struct ctlr_info *)tmp;
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
    hpsa_command_resubmit_worker(ldv_work_struct_1_0);
    ldv_work_1_0 = 1;
  } else {
  }
  goto ldv_42947;
  case 1: ;
  if (ldv_work_1_1 == 2 || ldv_work_1_1 == 3) {
    ldv_work_1_1 = 4;
    hpsa_command_resubmit_worker(ldv_work_struct_1_0);
    ldv_work_1_1 = 1;
  } else {
  }
  goto ldv_42947;
  case 2: ;
  if (ldv_work_1_2 == 2 || ldv_work_1_2 == 3) {
    ldv_work_1_2 = 4;
    hpsa_command_resubmit_worker(ldv_work_struct_1_0);
    ldv_work_1_2 = 1;
  } else {
  }
  goto ldv_42947;
  case 3: ;
  if (ldv_work_1_3 == 2 || ldv_work_1_3 == 3) {
    ldv_work_1_3 = 4;
    hpsa_command_resubmit_worker(ldv_work_struct_1_0);
    ldv_work_1_3 = 1;
  } else {
  }
  goto ldv_42947;
  default:
  ldv_stop();
  }
  ldv_42947: ;
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
void ldv_initialize_access_method_21(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(21688UL);
  SA5_ioaccel_mode1_access_group0 = (struct ctlr_info *)tmp;
  return;
}
}
void ldv_initialize_access_method_19(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(21688UL);
  SA5_performant_access_group0 = (struct ctlr_info *)tmp;
  return;
}
}
void call_and_disable_work_2(struct work_struct *work )
{
  {
  if ((ldv_work_2_0 == 2 || ldv_work_2_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_0) {
    hpsa_monitor_ctlr_worker(work);
    ldv_work_2_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_1 == 2 || ldv_work_2_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_1) {
    hpsa_monitor_ctlr_worker(work);
    ldv_work_2_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_2 == 2 || ldv_work_2_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_2) {
    hpsa_monitor_ctlr_worker(work);
    ldv_work_2_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_3 == 2 || ldv_work_2_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_3) {
    hpsa_monitor_ctlr_worker(work);
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
    hpsa_monitor_ctlr_worker(ldv_work_struct_2_0);
    ldv_work_2_0 = 1;
  } else {
  }
  goto ldv_42974;
  case 1: ;
  if (ldv_work_2_1 == 2 || ldv_work_2_1 == 3) {
    ldv_work_2_1 = 4;
    hpsa_monitor_ctlr_worker(ldv_work_struct_2_0);
    ldv_work_2_1 = 1;
  } else {
  }
  goto ldv_42974;
  case 2: ;
  if (ldv_work_2_2 == 2 || ldv_work_2_2 == 3) {
    ldv_work_2_2 = 4;
    hpsa_monitor_ctlr_worker(ldv_work_struct_2_0);
    ldv_work_2_2 = 1;
  } else {
  }
  goto ldv_42974;
  case 3: ;
  if (ldv_work_2_3 == 2 || ldv_work_2_3 == 3) {
    ldv_work_2_3 = 4;
    hpsa_monitor_ctlr_worker(ldv_work_struct_2_0);
    ldv_work_2_3 = 1;
  } else {
  }
  goto ldv_42974;
  default:
  ldv_stop();
  }
  ldv_42974: ;
  return;
}
}
int main(void)
{
  struct device *ldvarg1 ;
  void *tmp ;
  struct device_attribute *ldvarg3 ;
  void *tmp___0 ;
  size_t ldvarg0 ;
  char *ldvarg2 ;
  void *tmp___1 ;
  unsigned long ldvarg4 ;
  struct CommandList *ldvarg5 ;
  void *tmp___2 ;
  u8 ldvarg6 ;
  char *ldvarg8 ;
  void *tmp___3 ;
  struct device *ldvarg7 ;
  void *tmp___4 ;
  struct device_attribute *ldvarg9 ;
  void *tmp___5 ;
  char *ldvarg11 ;
  void *tmp___6 ;
  struct device *ldvarg10 ;
  void *tmp___7 ;
  struct device_attribute *ldvarg12 ;
  void *tmp___8 ;
  struct CommandList *ldvarg14 ;
  void *tmp___9 ;
  unsigned long ldvarg13 ;
  u8 ldvarg15 ;
  u8 ldvarg18 ;
  struct CommandList *ldvarg17 ;
  void *tmp___10 ;
  unsigned long ldvarg16 ;
  struct device_attribute *ldvarg21 ;
  void *tmp___11 ;
  char *ldvarg20 ;
  void *tmp___12 ;
  struct device *ldvarg19 ;
  void *tmp___13 ;
  struct device_attribute *ldvarg24 ;
  void *tmp___14 ;
  char *ldvarg23 ;
  void *tmp___15 ;
  struct device *ldvarg22 ;
  void *tmp___16 ;
  struct device_attribute *ldvarg27 ;
  void *tmp___17 ;
  char *ldvarg26 ;
  void *tmp___18 ;
  struct device *ldvarg25 ;
  void *tmp___19 ;
  char *ldvarg29 ;
  void *tmp___20 ;
  struct device *ldvarg28 ;
  void *tmp___21 ;
  struct device_attribute *ldvarg30 ;
  void *tmp___22 ;
  size_t ldvarg32 ;
  char *ldvarg31 ;
  void *tmp___23 ;
  char *ldvarg33 ;
  void *tmp___24 ;
  struct CommandList *ldvarg35 ;
  void *tmp___25 ;
  u8 ldvarg36 ;
  unsigned long ldvarg34 ;
  char *ldvarg39 ;
  void *tmp___26 ;
  size_t ldvarg37 ;
  struct device_attribute *ldvarg40 ;
  void *tmp___27 ;
  struct device *ldvarg38 ;
  void *tmp___28 ;
  struct device *ldvarg41 ;
  void *tmp___29 ;
  struct device_attribute *ldvarg43 ;
  void *tmp___30 ;
  char *ldvarg42 ;
  void *tmp___31 ;
  char *ldvarg45 ;
  void *tmp___32 ;
  struct device *ldvarg44 ;
  void *tmp___33 ;
  struct device_attribute *ldvarg46 ;
  void *tmp___34 ;
  struct pci_device_id *ldvarg48 ;
  void *tmp___35 ;
  pm_message_t ldvarg47 ;
  u8 ldvarg51 ;
  unsigned long ldvarg49 ;
  struct CommandList *ldvarg50 ;
  void *tmp___36 ;
  struct device_attribute *ldvarg54 ;
  void *tmp___37 ;
  char *ldvarg53 ;
  void *tmp___38 ;
  struct device *ldvarg52 ;
  void *tmp___39 ;
  void *ldvarg57 ;
  void *tmp___40 ;
  int ldvarg58 ;
  unsigned long ldvarg60 ;
  void *ldvarg55 ;
  void *tmp___41 ;
  int ldvarg59 ;
  int ldvarg56 ;
  int tmp___42 ;
  int tmp___43 ;
  int tmp___44 ;
  int tmp___45 ;
  int tmp___46 ;
  int tmp___47 ;
  int tmp___48 ;
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
  {
  tmp = ldv_init_zalloc(1416UL);
  ldvarg1 = (struct device *)tmp;
  tmp___0 = ldv_init_zalloc(48UL);
  ldvarg3 = (struct device_attribute *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg2 = (char *)tmp___1;
  tmp___2 = ldv_init_zalloc(768UL);
  ldvarg5 = (struct CommandList *)tmp___2;
  tmp___3 = ldv_init_zalloc(1UL);
  ldvarg8 = (char *)tmp___3;
  tmp___4 = ldv_init_zalloc(1416UL);
  ldvarg7 = (struct device *)tmp___4;
  tmp___5 = ldv_init_zalloc(48UL);
  ldvarg9 = (struct device_attribute *)tmp___5;
  tmp___6 = ldv_init_zalloc(1UL);
  ldvarg11 = (char *)tmp___6;
  tmp___7 = ldv_init_zalloc(1416UL);
  ldvarg10 = (struct device *)tmp___7;
  tmp___8 = ldv_init_zalloc(48UL);
  ldvarg12 = (struct device_attribute *)tmp___8;
  tmp___9 = ldv_init_zalloc(768UL);
  ldvarg14 = (struct CommandList *)tmp___9;
  tmp___10 = ldv_init_zalloc(768UL);
  ldvarg17 = (struct CommandList *)tmp___10;
  tmp___11 = ldv_init_zalloc(48UL);
  ldvarg21 = (struct device_attribute *)tmp___11;
  tmp___12 = ldv_init_zalloc(1UL);
  ldvarg20 = (char *)tmp___12;
  tmp___13 = ldv_init_zalloc(1416UL);
  ldvarg19 = (struct device *)tmp___13;
  tmp___14 = ldv_init_zalloc(48UL);
  ldvarg24 = (struct device_attribute *)tmp___14;
  tmp___15 = ldv_init_zalloc(1UL);
  ldvarg23 = (char *)tmp___15;
  tmp___16 = ldv_init_zalloc(1416UL);
  ldvarg22 = (struct device *)tmp___16;
  tmp___17 = ldv_init_zalloc(48UL);
  ldvarg27 = (struct device_attribute *)tmp___17;
  tmp___18 = ldv_init_zalloc(1UL);
  ldvarg26 = (char *)tmp___18;
  tmp___19 = ldv_init_zalloc(1416UL);
  ldvarg25 = (struct device *)tmp___19;
  tmp___20 = ldv_init_zalloc(1UL);
  ldvarg29 = (char *)tmp___20;
  tmp___21 = ldv_init_zalloc(1416UL);
  ldvarg28 = (struct device *)tmp___21;
  tmp___22 = ldv_init_zalloc(48UL);
  ldvarg30 = (struct device_attribute *)tmp___22;
  tmp___23 = ldv_init_zalloc(1UL);
  ldvarg31 = (char *)tmp___23;
  tmp___24 = ldv_init_zalloc(1UL);
  ldvarg33 = (char *)tmp___24;
  tmp___25 = ldv_init_zalloc(768UL);
  ldvarg35 = (struct CommandList *)tmp___25;
  tmp___26 = ldv_init_zalloc(1UL);
  ldvarg39 = (char *)tmp___26;
  tmp___27 = ldv_init_zalloc(48UL);
  ldvarg40 = (struct device_attribute *)tmp___27;
  tmp___28 = ldv_init_zalloc(1416UL);
  ldvarg38 = (struct device *)tmp___28;
  tmp___29 = ldv_init_zalloc(1416UL);
  ldvarg41 = (struct device *)tmp___29;
  tmp___30 = ldv_init_zalloc(48UL);
  ldvarg43 = (struct device_attribute *)tmp___30;
  tmp___31 = ldv_init_zalloc(1UL);
  ldvarg42 = (char *)tmp___31;
  tmp___32 = ldv_init_zalloc(1UL);
  ldvarg45 = (char *)tmp___32;
  tmp___33 = ldv_init_zalloc(1416UL);
  ldvarg44 = (struct device *)tmp___33;
  tmp___34 = ldv_init_zalloc(48UL);
  ldvarg46 = (struct device_attribute *)tmp___34;
  tmp___35 = ldv_init_zalloc(32UL);
  ldvarg48 = (struct pci_device_id *)tmp___35;
  tmp___36 = ldv_init_zalloc(768UL);
  ldvarg50 = (struct CommandList *)tmp___36;
  tmp___37 = ldv_init_zalloc(48UL);
  ldvarg54 = (struct device_attribute *)tmp___37;
  tmp___38 = ldv_init_zalloc(1UL);
  ldvarg53 = (char *)tmp___38;
  tmp___39 = ldv_init_zalloc(1416UL);
  ldvarg52 = (struct device *)tmp___39;
  tmp___40 = ldv_init_zalloc(1UL);
  ldvarg57 = tmp___40;
  tmp___41 = ldv_init_zalloc(1UL);
  ldvarg55 = tmp___41;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg0), 0, 8UL);
  ldv_memset((void *)(& ldvarg4), 0, 8UL);
  ldv_memset((void *)(& ldvarg6), 0, 1UL);
  ldv_memset((void *)(& ldvarg13), 0, 8UL);
  ldv_memset((void *)(& ldvarg15), 0, 1UL);
  ldv_memset((void *)(& ldvarg18), 0, 1UL);
  ldv_memset((void *)(& ldvarg16), 0, 8UL);
  ldv_memset((void *)(& ldvarg32), 0, 8UL);
  ldv_memset((void *)(& ldvarg36), 0, 1UL);
  ldv_memset((void *)(& ldvarg34), 0, 8UL);
  ldv_memset((void *)(& ldvarg37), 0, 8UL);
  ldv_memset((void *)(& ldvarg47), 0, 4UL);
  ldv_memset((void *)(& ldvarg51), 0, 1UL);
  ldv_memset((void *)(& ldvarg49), 0, 8UL);
  ldv_memset((void *)(& ldvarg58), 0, 4UL);
  ldv_memset((void *)(& ldvarg60), 0, 8UL);
  ldv_memset((void *)(& ldvarg59), 0, 4UL);
  ldv_memset((void *)(& ldvarg56), 0, 4UL);
  ldv_state_variable_11 = 0;
  ldv_state_variable_21 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_17 = 0;
  work_init_2();
  ldv_state_variable_2 = 1;
  ldv_state_variable_22 = 0;
  work_init_1();
  ldv_state_variable_1 = 1;
  ldv_state_variable_18 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_16 = 0;
  ldv_state_variable_13 = 0;
  ldv_state_variable_6 = 0;
  work_init_3();
  ldv_state_variable_3 = 1;
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
  ldv_43202:
  tmp___42 = __VERIFIER_nondet_int();
  switch (tmp___42) {
  case 0: ;
  if (ldv_state_variable_11 != 0) {
    tmp___43 = __VERIFIER_nondet_int();
    switch (tmp___43) {
    case 0: ;
    if (ldv_state_variable_11 == 1) {
      host_store_raid_offload_debug(ldvarg1, ldvarg3, (char const *)ldvarg2, ldvarg0);
      ldv_state_variable_11 = 1;
    } else {
    }
    goto ldv_43085;
    default:
    ldv_stop();
    }
    ldv_43085: ;
  } else {
  }
  goto ldv_43087;
  case 1: ;
  if (ldv_state_variable_21 != 0) {
    tmp___44 = __VERIFIER_nondet_int();
    switch (tmp___44) {
    case 0: ;
    if (ldv_state_variable_21 == 1) {
      SA5_ioaccel_mode1_intr_pending(SA5_ioaccel_mode1_access_group0);
      ldv_state_variable_21 = 1;
    } else {
    }
    goto ldv_43090;
    case 1: ;
    if (ldv_state_variable_21 == 1) {
      SA5_ioaccel_mode1_completed(SA5_ioaccel_mode1_access_group0, (int )ldvarg6);
      ldv_state_variable_21 = 1;
    } else {
    }
    goto ldv_43090;
    case 2: ;
    if (ldv_state_variable_21 == 1) {
      SA5_submit_command(SA5_ioaccel_mode1_access_group0, ldvarg5);
      ldv_state_variable_21 = 1;
    } else {
    }
    goto ldv_43090;
    case 3: ;
    if (ldv_state_variable_21 == 1) {
      SA5_performant_intr_mask(SA5_ioaccel_mode1_access_group0, ldvarg4);
      ldv_state_variable_21 = 1;
    } else {
    }
    goto ldv_43090;
    default:
    ldv_stop();
    }
    ldv_43090: ;
  } else {
  }
  goto ldv_43087;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    tmp___45 = __VERIFIER_nondet_int();
    switch (tmp___45) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      host_show_resettable(ldvarg7, ldvarg9, ldvarg8);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_43097;
    default:
    ldv_stop();
    }
    ldv_43097: ;
  } else {
  }
  goto ldv_43087;
  case 3: ;
  if (ldv_state_variable_17 != 0) {
    tmp___46 = __VERIFIER_nondet_int();
    switch (tmp___46) {
    case 0: ;
    if (ldv_state_variable_17 == 1) {
      raid_level_show(ldvarg10, ldvarg12, ldvarg11);
      ldv_state_variable_17 = 1;
    } else {
    }
    goto ldv_43101;
    default:
    ldv_stop();
    }
    ldv_43101: ;
  } else {
  }
  goto ldv_43087;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    invoke_work_2();
  } else {
  }
  goto ldv_43087;
  case 5: ;
  if (ldv_state_variable_22 != 0) {
    tmp___47 = __VERIFIER_nondet_int();
    switch (tmp___47) {
    case 0: ;
    if (ldv_state_variable_22 == 1) {
      SA5_intr_pending(SA5_access_group0);
      ldv_state_variable_22 = 1;
    } else {
    }
    goto ldv_43106;
    case 1: ;
    if (ldv_state_variable_22 == 1) {
      SA5_completed(SA5_access_group0, (int )ldvarg15);
      ldv_state_variable_22 = 1;
    } else {
    }
    goto ldv_43106;
    case 2: ;
    if (ldv_state_variable_22 == 1) {
      SA5_submit_command(SA5_access_group0, ldvarg14);
      ldv_state_variable_22 = 1;
    } else {
    }
    goto ldv_43106;
    case 3: ;
    if (ldv_state_variable_22 == 1) {
      SA5_intr_mask(SA5_access_group0, ldvarg13);
      ldv_state_variable_22 = 1;
    } else {
    }
    goto ldv_43106;
    default:
    ldv_stop();
    }
    ldv_43106: ;
  } else {
  }
  goto ldv_43087;
  case 6: ;
  if (ldv_state_variable_1 != 0) {
    invoke_work_1();
  } else {
  }
  goto ldv_43087;
  case 7: ;
  if (ldv_state_variable_18 != 0) {
    tmp___48 = __VERIFIER_nondet_int();
    switch (tmp___48) {
    case 0: ;
    if (ldv_state_variable_18 == 1) {
      SA5_performant_intr_pending(SA5_performant_access_no_read_group0);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_43114;
    case 1: ;
    if (ldv_state_variable_18 == 1) {
      SA5_performant_completed(SA5_performant_access_no_read_group0, (int )ldvarg18);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_43114;
    case 2: ;
    if (ldv_state_variable_18 == 1) {
      SA5_submit_command_no_read(SA5_performant_access_no_read_group0, ldvarg17);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_43114;
    case 3: ;
    if (ldv_state_variable_18 == 1) {
      SA5_performant_intr_mask(SA5_performant_access_no_read_group0, ldvarg16);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_43114;
    default:
    ldv_stop();
    }
    ldv_43114: ;
  } else {
  }
  goto ldv_43087;
  case 8: ;
  if (ldv_state_variable_0 != 0) {
    tmp___49 = __VERIFIER_nondet_int();
    switch (tmp___49) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      hpsa_cleanup();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_43122;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = hpsa_init();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_19 = 1;
        ldv_initialize_access_method_19();
        ldv_state_variable_10 = 1;
        ldv_state_variable_8 = 1;
        ldv_state_variable_20 = 1;
        ldv_initialize_access_method_20();
        ldv_state_variable_15 = 1;
        ldv_state_variable_14 = 1;
        ldv_state_variable_12 = 1;
        ldv_initialize_device_attribute_12();
        ldv_state_variable_9 = 1;
        ldv_state_variable_6 = 1;
        ldv_state_variable_13 = 1;
        ldv_state_variable_16 = 1;
        ldv_state_variable_18 = 1;
        ldv_initialize_access_method_18();
        ldv_state_variable_22 = 1;
        ldv_initialize_access_method_22();
        ldv_state_variable_17 = 1;
        ldv_state_variable_7 = 1;
        ldv_state_variable_21 = 1;
        ldv_initialize_access_method_21();
        ldv_state_variable_11 = 1;
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_43122;
    default:
    ldv_stop();
    }
    ldv_43122: ;
  } else {
  }
  goto ldv_43087;
  case 9: ;
  if (ldv_state_variable_16 != 0) {
    tmp___50 = __VERIFIER_nondet_int();
    switch (tmp___50) {
    case 0: ;
    if (ldv_state_variable_16 == 1) {
      lunid_show(ldvarg19, ldvarg21, ldvarg20);
      ldv_state_variable_16 = 1;
    } else {
    }
    goto ldv_43127;
    default:
    ldv_stop();
    }
    ldv_43127: ;
  } else {
  }
  goto ldv_43087;
  case 10: ;
  if (ldv_state_variable_13 != 0) {
    tmp___51 = __VERIFIER_nondet_int();
    switch (tmp___51) {
    case 0: ;
    if (ldv_state_variable_13 == 1) {
      host_show_hp_ssd_smart_path_enabled(ldvarg22, ldvarg24, ldvarg23);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_43131;
    default:
    ldv_stop();
    }
    ldv_43131: ;
  } else {
  }
  goto ldv_43087;
  case 11: ;
  if (ldv_state_variable_6 != 0) {
    tmp___52 = __VERIFIER_nondet_int();
    switch (tmp___52) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      host_show_lockup_detected(ldvarg25, ldvarg27, ldvarg26);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_43135;
    default:
    ldv_stop();
    }
    ldv_43135: ;
  } else {
  }
  goto ldv_43087;
  case 12: ;
  if (ldv_state_variable_3 != 0) {
    invoke_work_3();
  } else {
  }
  goto ldv_43087;
  case 13: ;
  if (ldv_state_variable_9 != 0) {
    tmp___53 = __VERIFIER_nondet_int();
    switch (tmp___53) {
    case 0: ;
    if (ldv_state_variable_9 == 1) {
      host_show_commands_outstanding(ldvarg28, ldvarg30, ldvarg29);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_43140;
    default:
    ldv_stop();
    }
    ldv_43140: ;
  } else {
  }
  goto ldv_43087;
  case 14: ;
  if (ldv_state_variable_12 != 0) {
    tmp___54 = __VERIFIER_nondet_int();
    switch (tmp___54) {
    case 0: ;
    if (ldv_state_variable_12 == 1) {
      host_store_hp_ssd_smart_path_status(dev_attr_hp_ssd_smart_path_status_group1,
                                          dev_attr_hp_ssd_smart_path_status_group0,
                                          (char const *)ldvarg33, ldvarg32);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_43144;
    case 1: ;
    if (ldv_state_variable_12 == 1) {
      host_show_hp_ssd_smart_path_status(dev_attr_hp_ssd_smart_path_status_group1,
                                         dev_attr_hp_ssd_smart_path_status_group0,
                                         ldvarg31);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_43144;
    default:
    ldv_stop();
    }
    ldv_43144: ;
  } else {
  }
  goto ldv_43087;
  case 15: ;
  if (ldv_state_variable_20 != 0) {
    tmp___55 = __VERIFIER_nondet_int();
    switch (tmp___55) {
    case 0: ;
    if (ldv_state_variable_20 == 1) {
      SA5_performant_intr_pending(SA5_ioaccel_mode2_access_group0);
      ldv_state_variable_20 = 1;
    } else {
    }
    goto ldv_43149;
    case 1: ;
    if (ldv_state_variable_20 == 1) {
      SA5_performant_completed(SA5_ioaccel_mode2_access_group0, (int )ldvarg36);
      ldv_state_variable_20 = 1;
    } else {
    }
    goto ldv_43149;
    case 2: ;
    if (ldv_state_variable_20 == 1) {
      SA5_submit_command_ioaccel2(SA5_ioaccel_mode2_access_group0, ldvarg35);
      ldv_state_variable_20 = 1;
    } else {
    }
    goto ldv_43149;
    case 3: ;
    if (ldv_state_variable_20 == 1) {
      SA5_performant_intr_mask(SA5_ioaccel_mode2_access_group0, ldvarg34);
      ldv_state_variable_20 = 1;
    } else {
    }
    goto ldv_43149;
    default:
    ldv_stop();
    }
    ldv_43149: ;
  } else {
  }
  goto ldv_43087;
  case 16: ;
  if (ldv_state_variable_14 != 0) {
    tmp___56 = __VERIFIER_nondet_int();
    switch (tmp___56) {
    case 0: ;
    if (ldv_state_variable_14 == 1) {
      host_store_rescan(ldvarg38, ldvarg40, (char const *)ldvarg39, ldvarg37);
      ldv_state_variable_14 = 1;
    } else {
    }
    goto ldv_43156;
    default:
    ldv_stop();
    }
    ldv_43156: ;
  } else {
  }
  goto ldv_43087;
  case 17: ;
  if (ldv_state_variable_15 != 0) {
    tmp___57 = __VERIFIER_nondet_int();
    switch (tmp___57) {
    case 0: ;
    if (ldv_state_variable_15 == 1) {
      unique_id_show(ldvarg41, ldvarg43, ldvarg42);
      ldv_state_variable_15 = 1;
    } else {
    }
    goto ldv_43160;
    default:
    ldv_stop();
    }
    ldv_43160: ;
  } else {
  }
  goto ldv_43087;
  case 18: ;
  if (ldv_state_variable_8 != 0) {
    tmp___58 = __VERIFIER_nondet_int();
    switch (tmp___58) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      host_show_transport_mode(ldvarg44, ldvarg46, ldvarg45);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_43164;
    default:
    ldv_stop();
    }
    ldv_43164: ;
  } else {
  }
  goto ldv_43087;
  case 19: ;
  if (ldv_state_variable_4 != 0) {
    tmp___59 = __VERIFIER_nondet_int();
    switch (tmp___59) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      ldv_retval_5 = hpsa_init_one(hpsa_pci_driver_group1, (struct pci_device_id const *)ldvarg48);
      if (ldv_retval_5 == 0) {
        ldv_state_variable_4 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_43168;
    case 1: ;
    if (ldv_state_variable_4 == 4) {
      hpsa_shutdown(hpsa_pci_driver_group1);
      ldv_state_variable_4 = 4;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      hpsa_shutdown(hpsa_pci_driver_group1);
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      hpsa_shutdown(hpsa_pci_driver_group1);
      ldv_state_variable_4 = 2;
    } else {
    }
    if (ldv_state_variable_4 == 5) {
      hpsa_shutdown(hpsa_pci_driver_group1);
      ldv_state_variable_4 = 5;
    } else {
    }
    goto ldv_43168;
    case 2: ;
    if (ldv_state_variable_4 == 2 && pci_counter == 0) {
      ldv_retval_4 = hpsa_suspend(hpsa_pci_driver_group1, ldvarg47);
      if (ldv_retval_4 == 0) {
        ldv_state_variable_4 = 3;
      } else {
      }
    } else {
    }
    goto ldv_43168;
    case 3: ;
    if (ldv_state_variable_4 == 4) {
      hpsa_remove_one(hpsa_pci_driver_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      hpsa_remove_one(hpsa_pci_driver_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      hpsa_remove_one(hpsa_pci_driver_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 5) {
      hpsa_remove_one(hpsa_pci_driver_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_43168;
    case 4: ;
    if (ldv_state_variable_4 == 4) {
      ldv_retval_3 = hpsa_resume(hpsa_pci_driver_group1);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_4 = 2;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      ldv_retval_3 = hpsa_resume(hpsa_pci_driver_group1);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_4 = 2;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_4 == 5) {
      ldv_retval_3 = hpsa_resume(hpsa_pci_driver_group1);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_4 = 2;
      } else {
      }
    } else {
    }
    goto ldv_43168;
    case 5: ;
    if (ldv_state_variable_4 == 3) {
      ldv_retval_2 = ldv_suspend_late_4();
      if (ldv_retval_2 == 0) {
        ldv_state_variable_4 = 4;
      } else {
      }
    } else {
    }
    goto ldv_43168;
    case 6: ;
    if (ldv_state_variable_4 == 4) {
      ldv_retval_1 = ldv_resume_early_4();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_4 = 5;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      ldv_retval_1 = ldv_resume_early_4();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_4 = 5;
      } else {
      }
    } else {
    }
    goto ldv_43168;
    default:
    ldv_stop();
    }
    ldv_43168: ;
  } else {
  }
  goto ldv_43087;
  case 20: ;
  if (ldv_state_variable_19 != 0) {
    tmp___60 = __VERIFIER_nondet_int();
    switch (tmp___60) {
    case 0: ;
    if (ldv_state_variable_19 == 1) {
      SA5_performant_intr_pending(SA5_performant_access_group0);
      ldv_state_variable_19 = 1;
    } else {
    }
    goto ldv_43178;
    case 1: ;
    if (ldv_state_variable_19 == 1) {
      SA5_performant_completed(SA5_performant_access_group0, (int )ldvarg51);
      ldv_state_variable_19 = 1;
    } else {
    }
    goto ldv_43178;
    case 2: ;
    if (ldv_state_variable_19 == 1) {
      SA5_submit_command(SA5_performant_access_group0, ldvarg50);
      ldv_state_variable_19 = 1;
    } else {
    }
    goto ldv_43178;
    case 3: ;
    if (ldv_state_variable_19 == 1) {
      SA5_performant_intr_mask(SA5_performant_access_group0, ldvarg49);
      ldv_state_variable_19 = 1;
    } else {
    }
    goto ldv_43178;
    default:
    ldv_stop();
    }
    ldv_43178: ;
  } else {
  }
  goto ldv_43087;
  case 21: ;
  if (ldv_state_variable_10 != 0) {
    tmp___61 = __VERIFIER_nondet_int();
    switch (tmp___61) {
    case 0: ;
    if (ldv_state_variable_10 == 1) {
      host_show_firmware_revision(ldvarg52, ldvarg54, ldvarg53);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_43185;
    default:
    ldv_stop();
    }
    ldv_43185: ;
  } else {
  }
  goto ldv_43087;
  case 22: ;
  if (ldv_state_variable_5 != 0) {
    tmp___62 = __VERIFIER_nondet_int();
    switch (tmp___62) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      hpsa_scan_finished(hpsa_driver_template_group1, ldvarg60);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_43189;
    case 1: ;
    if (ldv_state_variable_5 == 1) {
      hpsa_slave_configure(hpsa_driver_template_group2);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_43189;
    case 2: ;
    if (ldv_state_variable_5 == 1) {
      hpsa_change_queue_depth(hpsa_driver_template_group2, ldvarg59);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_43189;
    case 3: ;
    if (ldv_state_variable_5 == 1) {
      hpsa_scsi_queue_command(hpsa_driver_template_group1, hpsa_driver_template_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_43189;
    case 4: ;
    if (ldv_state_variable_5 == 1) {
      hpsa_compat_ioctl(hpsa_driver_template_group2, ldvarg58, ldvarg57);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_43189;
    case 5: ;
    if (ldv_state_variable_5 == 1) {
      hpsa_eh_device_reset_handler(hpsa_driver_template_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_43189;
    case 6: ;
    if (ldv_state_variable_5 == 1) {
      hpsa_scan_start(hpsa_driver_template_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_43189;
    case 7: ;
    if (ldv_state_variable_5 == 1) {
      hpsa_eh_abort_handler(hpsa_driver_template_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_43189;
    case 8: ;
    if (ldv_state_variable_5 == 1) {
      hpsa_slave_alloc(hpsa_driver_template_group2);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_43189;
    case 9: ;
    if (ldv_state_variable_5 == 1) {
      hpsa_ioctl(hpsa_driver_template_group2, ldvarg56, ldvarg55);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_43189;
    case 10: ;
    if (ldv_state_variable_5 == 1) {
      hpsa_slave_destroy(hpsa_driver_template_group2);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_43189;
    default:
    ldv_stop();
    }
    ldv_43189: ;
  } else {
  }
  goto ldv_43087;
  default:
  ldv_stop();
  }
  ldv_43087: ;
  goto ldv_43202;
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
bool ldv_queue_work_on_15(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
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
  activate_work_2(& ldv_func_arg3->work, 2);
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
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_18(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
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
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
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
int ldv_scsi_add_host_with_dma_29(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(shost, dev, dma_dev);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_5 = 1;
    ldv_initialize_scsi_host_template_5();
  } else {
  }
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_30(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
struct Scsi_Host *ldv_scsi_host_alloc_31(struct scsi_host_template *sht , int privsize )
{
  ldv_func_ret_type___8 ldv_func_res ;
  struct Scsi_Host *tmp ;
  {
  tmp = scsi_host_alloc(sht, privsize);
  ldv_func_res = tmp;
  if ((unsigned long )ldv_func_res != (unsigned long )((ldv_func_ret_type___8 )0)) {
    ldv_state_variable_5 = 1;
    ldv_initialize_scsi_host_template_5();
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_destroy_workqueue_32(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
void ldv_destroy_workqueue_33(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
void ldv_flush_workqueue_34(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
void ldv_destroy_workqueue_35(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
void ldv_destroy_workqueue_36(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_cancel_delayed_work_sync_37(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_2(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_sync_38(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_2(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
void ldv_destroy_workqueue_39(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
void ldv_destroy_workqueue_40(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
void ldv_scsi_remove_host_41(struct Scsi_Host *shost )
{
  {
  scsi_remove_host(shost);
  ldv_state_variable_5 = 0;
  return;
}
}
int ldv___pci_register_driver_42(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 )
{
  ldv_func_ret_type___11 ldv_func_res ;
  int tmp ;
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_4 = 1;
  ldv_pci_driver_4();
  return (ldv_func_res);
}
}
void ldv_pci_unregister_driver_43(struct pci_driver *ldv_func_arg1 )
{
  {
  pci_unregister_driver(ldv_func_arg1);
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
void *__alloc_percpu(size_t arg0, size_t arg1) {
  return ldv_malloc(0UL);
}
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int __bitmap_weight(const unsigned long *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
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
void __might_fault(const char *arg0, int arg1) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
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
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
struct blk_queue_tag *blk_init_tags(int arg0, int arg1) {
  return ldv_malloc(sizeof(struct blk_queue_tag));
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work_sync(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int check_signature(const volatile void *arg0, const unsigned char *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void *compat_alloc_user_space(unsigned long arg0) {
  return ldv_malloc(0UL);
}
void complete(struct completion *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int copy_in_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_mapping_error(struct device *arg0, dma_addr_t arg1) {
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
void dev_printk(const char *arg0, const struct device *arg1, const char *arg2, ...) {
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
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_first_bit(const unsigned long *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_first_zero_bit(const unsigned long *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_next_bit(const unsigned long *arg0, unsigned long arg1, unsigned long arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_next_zero_bit(const unsigned long *arg0, unsigned long arg1, unsigned long arg2) {
  return __VERIFIER_nondet_ulong();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_percpu(void *arg0) {
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
int __VERIFIER_nondet_int(void);
int irq_set_affinity_hint(unsigned int arg0, const struct cpumask *arg1) {
  return __VERIFIER_nondet_int();
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_resume_early_4() {
  return __VERIFIER_nondet_int();
}
struct page *ldv_some_page() {
  return ldv_malloc(sizeof(struct page));
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_late_4() {
  return __VERIFIER_nondet_int();
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void msleep(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_lock_interruptible_nested(struct mutex *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_link_state(struct pci_dev *arg0, int arg1) {
  return;
}
void pci_disable_msi(struct pci_dev *arg0) {
  return;
}
void pci_disable_msix(struct pci_dev *arg0) {
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
int __VERIFIER_nondet_int(void);
int pci_enable_msix_range(struct pci_dev *arg0, struct msix_entry *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_find_capability(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void *pci_ioremap_bar(struct pci_dev *arg0, int arg1) {
  return ldv_malloc(0UL);
}
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void pci_restore_state(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_save_state(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_set_power_state(struct pci_dev *arg0, pci_power_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
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
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int scsi_add_device(struct Scsi_Host *arg0, uint arg1, uint arg2, u64 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scsi_add_host_with_dma(struct Scsi_Host *arg0, struct device *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
void scsi_block_requests(struct Scsi_Host *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_change_queue_depth(struct scsi_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
struct scsi_device *scsi_device_lookup(struct Scsi_Host *arg0, uint arg1, uint arg2, u64 arg3) {
  return ldv_malloc(sizeof(struct scsi_device));
}
void scsi_device_put(struct scsi_device *arg0) {
  return;
}
const char *scsi_device_type(unsigned int arg0) {
  return ldv_malloc(sizeof(char));
}
int __VERIFIER_nondet_int(void);
int scsi_dma_map(struct scsi_cmnd *arg0) {
  return __VERIFIER_nondet_int();
}
void scsi_dma_unmap(struct scsi_cmnd *arg0) {
  return;
}
struct Scsi_Host *scsi_host_alloc(struct scsi_host_template *arg0, int arg1) {
  return ldv_malloc(sizeof(struct Scsi_Host));
}
struct Scsi_Host *scsi_host_get(struct Scsi_Host *arg0) {
  return ldv_malloc(sizeof(struct Scsi_Host));
}
void scsi_host_put(struct Scsi_Host *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool scsi_normalize_sense(const u8 *arg0, int arg1, struct scsi_sense_hdr *arg2) {
  return __VERIFIER_nondet_bool();
}
void scsi_print_command(struct scsi_cmnd *arg0) {
  return;
}
void scsi_remove_device(struct scsi_device *arg0) {
  return;
}
void scsi_remove_host(struct Scsi_Host *arg0) {
  return;
}
void scsi_scan_host(struct Scsi_Host *arg0) {
  return;
}
void scsi_unblock_requests(struct Scsi_Host *arg0) {
  return;
}
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return ldv_malloc(sizeof(struct scatterlist));
}
void wait_for_completion_io(struct completion *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int wait_for_completion_io_timeout(struct completion *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
