extern void __VERIFIER_error() __attribute__ ((__noreturn__));
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
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
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
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
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
struct vm_area_struct;
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
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
struct __anonstruct_nodemask_t_46 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_46 nodemask_t;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct cyapa;
struct device_attribute;
struct firmware;
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
struct i2c_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
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
union __anonunion____missing_field_name_208 {
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
   union __anonunion____missing_field_name_208 __annonCompField56 ;
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
struct i2c_adapter;
struct i2c_client;
struct i2c_driver;
struct i2c_board_info;
enum i2c_slave_event;
enum i2c_slave_event;
struct i2c_driver {
   unsigned int class ;
   int (*attach_adapter)(struct i2c_adapter * ) ;
   int (*probe)(struct i2c_client * , struct i2c_device_id const * ) ;
   int (*remove)(struct i2c_client * ) ;
   void (*shutdown)(struct i2c_client * ) ;
   void (*alert)(struct i2c_client * , unsigned int ) ;
   int (*command)(struct i2c_client * , unsigned int , void * ) ;
   struct device_driver driver ;
   struct i2c_device_id const *id_table ;
   int (*detect)(struct i2c_client * , struct i2c_board_info * ) ;
   unsigned short const *address_list ;
   struct list_head clients ;
};
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
union __anonunion_u_210 {
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
   union __anonunion_u_210 u ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_214 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_213 {
   struct __anonstruct____missing_field_name_214 __annonCompField57 ;
};
struct lockref {
   union __anonunion____missing_field_name_213 __annonCompField58 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_216 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_215 {
   struct __anonstruct____missing_field_name_216 __annonCompField59 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_215 __annonCompField60 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_217 {
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
   union __anonunion_d_u_217 d_u ;
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
struct __anonstruct____missing_field_name_221 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_220 {
   struct __anonstruct____missing_field_name_221 __annonCompField61 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_220 __annonCompField62 ;
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
struct __anonstruct_kprojid_t_225 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_225 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_226 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_226 __annonCompField64 ;
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
union __anonunion____missing_field_name_229 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_230 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_231 {
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
   union __anonunion____missing_field_name_229 __annonCompField65 ;
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
   union __anonunion____missing_field_name_230 __annonCompField66 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_231 __annonCompField67 ;
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
union __anonunion_f_u_232 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_232 f_u ;
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
struct __anonstruct_afs_234 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_233 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_234 afs ;
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
   union __anonunion_fl_u_233 fl_u ;
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
struct input_mt_slot {
   int abs[14U] ;
   unsigned int frame ;
   unsigned int key ;
};
struct input_mt {
   int trkid ;
   int num_slots ;
   int slot ;
   unsigned int flags ;
   unsigned int frame ;
   int *red ;
   struct input_mt_slot slots[] ;
};
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
union __anonunion____missing_field_name_247 {
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
   union __anonunion____missing_field_name_247 __annonCompField75 ;
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
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
struct cyapa_dev_ops {
   int (*check_fw)(struct cyapa * , struct firmware const * ) ;
   int (*bl_enter)(struct cyapa * ) ;
   int (*bl_activate)(struct cyapa * ) ;
   int (*bl_initiate)(struct cyapa * , struct firmware const * ) ;
   int (*update_fw)(struct cyapa * , struct firmware const * ) ;
   int (*bl_deactivate)(struct cyapa * ) ;
   ssize_t (*show_baseline)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*calibrate_store)(struct device * , struct device_attribute * , char const * ,
                              size_t ) ;
   int (*initialize)(struct cyapa * ) ;
   int (*state_parse)(struct cyapa * , u8 * , int ) ;
   int (*operational_check)(struct cyapa * ) ;
   int (*irq_handler)(struct cyapa * ) ;
   bool (*irq_cmd_handler)(struct cyapa * ) ;
   int (*sort_empty_output_data)(struct cyapa * , u8 * , int * , bool (*)(struct cyapa * ,
                                                                          u8 * , int ) ) ;
   int (*set_power_mode)(struct cyapa * , u8 , u16 ) ;
};
struct cyapa_gen5_cmd_states {
   struct mutex cmd_lock ;
   struct completion cmd_ready ;
   atomic_t cmd_issued ;
   u8 in_progress_cmd ;
   bool is_irq_mode ;
   bool (*resp_sort_func)(struct cyapa * , u8 * , int ) ;
   u8 *resp_data ;
   int *resp_len ;
   u8 irq_cmd_buf[256U] ;
   u8 empty_buf[256U] ;
};
union cyapa_cmd_states {
   struct cyapa_gen5_cmd_states gen5 ;
};
enum cyapa_state {
    CYAPA_STATE_NO_DEVICE = 0,
    CYAPA_STATE_BL_BUSY = 1,
    CYAPA_STATE_BL_IDLE = 2,
    CYAPA_STATE_BL_ACTIVE = 3,
    CYAPA_STATE_OP = 4,
    CYAPA_STATE_GEN5_BL = 5,
    CYAPA_STATE_GEN5_APP = 6
} ;
struct cyapa {
   enum cyapa_state state ;
   u8 status[3U] ;
   bool operational ;
   struct i2c_client *client ;
   struct input_dev *input ;
   char phys[32U] ;
   bool irq_wake ;
   bool smbus ;
   u8 suspend_power_mode ;
   u16 suspend_sleep_time ;
   u8 runtime_suspend_power_mode ;
   u16 runtime_suspend_sleep_time ;
   u8 dev_pwr_mode ;
   u16 dev_sleep_time ;
   char product_id[16U] ;
   u8 fw_maj_ver ;
   u8 fw_min_ver ;
   u8 btn_capability ;
   u8 gen ;
   int max_abs_x ;
   int max_abs_y ;
   int physical_size_x ;
   int physical_size_y ;
   u8 x_origin ;
   u8 y_origin ;
   int electrodes_x ;
   int electrodes_y ;
   int electrodes_rx ;
   int aligned_electrodes_rx ;
   int max_z ;
   struct mutex state_sync_lock ;
   struct cyapa_dev_ops const *ops ;
   union cyapa_cmd_states cmd_states ;
};
typedef int ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
typedef int ldv_func_ret_type___8;
typedef int ldv_func_ret_type___9;
typedef int ldv_func_ret_type___10;
typedef int ldv_func_ret_type___11;
typedef int ldv_func_ret_type___12;
typedef int ldv_func_ret_type___13;
typedef int ldv_func_ret_type___14;
typedef __u16 __be16;
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
struct cyapa_touch {
   u8 xy_hi ;
   u8 x_lo ;
   u8 y_lo ;
   u8 pressure ;
   u8 id ;
};
struct cyapa_reg_data {
   u8 device_status ;
   u8 finger_btn ;
   struct cyapa_touch touches[5U] ;
};
struct gen3_write_block_cmd {
   u8 checksum_seed ;
   u8 cmd_code ;
   u8 key[8U] ;
   __be16 block_num ;
   u8 block_data[64U] ;
   u8 block_checksum ;
   u8 cmd_checksum ;
};
struct cyapa_cmd_len {
   u8 cmd ;
   u8 len ;
};
typedef __u16 __le16;
typedef __u32 __le32;
typedef __u32 __be32;
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
struct cyapa_gen5_touch_record {
   u8 touch_type ;
   u8 touch_tip_event_id ;
   u8 x_lo ;
   u8 x_hi ;
   u8 y_lo ;
   u8 y_hi ;
   u8 z ;
   u8 major_axis_len ;
   u8 minor_axis_len ;
   u8 major_tool_len ;
   u8 minor_tool_len ;
   u8 orientation ;
};
struct cyapa_gen5_report_data {
   u8 report_head[7U] ;
   struct cyapa_gen5_touch_record touch_records[10U] ;
};
struct cyapa_tsg_bin_image_head {
   u8 head_size ;
   u8 ttda_driver_major_version ;
   u8 ttda_driver_minor_version ;
   u8 fw_major_version ;
   u8 fw_minor_version ;
   u8 fw_revision_control_number[8U] ;
};
struct cyapa_tsg_bin_image_data_record {
   u8 flash_array_id ;
   __be16 row_number ;
   __be16 record_len ;
   u8 record_data[128U] ;
};
struct cyapa_tsg_bin_image {
   struct cyapa_tsg_bin_image_head image_head ;
   struct cyapa_tsg_bin_image_data_record records[0U] ;
};
struct gen5_bl_packet_start {
   u8 sop ;
   u8 cmd_code ;
   __le16 data_length ;
};
struct gen5_bl_packet_end {
   __le16 crc ;
   u8 eop ;
};
struct gen5_bl_cmd_head {
   __le16 addr ;
   __le16 length ;
   u8 report_id ;
   u8 rsvd ;
   struct gen5_bl_packet_start packet_start ;
   u8 data[0U] ;
};
struct gen5_bl_initiate_cmd_data {
   u8 key[8U] ;
   u8 metadata_raw_parameter[60U] ;
   __le16 metadata_crc ;
};
struct gen5_bl_metadata_row_params {
   __le16 size ;
   __le16 maximum_size ;
   __le32 app_start ;
   __le16 app_len ;
   __le16 app_crc ;
   __le32 app_entry ;
   __le32 upgrade_start ;
   __le16 upgrade_len ;
   __le16 entry_row_crc ;
   u8 padding[36U] ;
   __le16 metadata_crc ;
};
struct gen5_bl_flash_row_head {
   u8 flash_array_id ;
   __le16 flash_row_id ;
   u8 flash_data[0U] ;
};
struct gen5_app_cmd_head {
   __le16 addr ;
   __le16 length ;
   u8 report_id ;
   u8 rsvd ;
   u8 cmd_code ;
   u8 parameter_data[0U] ;
};
struct gen5_app_set_parameter_data {
   u8 parameter_id ;
   u8 parameter_size ;
   __le32 value ;
};
struct gen5_app_get_parameter_data {
   u8 parameter_id ;
};
struct gen5_retrieve_panel_scan_data {
   __le16 read_offset ;
   __le16 read_elements ;
   u8 data_id ;
};
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
__inline static void __set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern int kstrtou16(char const * , unsigned int , u16 * ) ;
extern int sprintf(char * , char const * , ...) ;
extern int scnprintf(char * , size_t , char const * , ...) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern bool sysfs_streq(char const * , char const * ) ;
extern void __cmpxchg_wrong_size(void) ;
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
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
  goto ldv_5616;
  case 2UL:
  __ptr___0 = (u16 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgw %2,%1": "=a" (__ret),
                       "+m" (*__ptr___0): "r" (__new), "0" (__old): "memory");
  goto ldv_5616;
  case 4UL:
  __ptr___1 = (u32 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgl %2,%1": "=a" (__ret),
                       "+m" (*__ptr___1): "r" (__new), "0" (__old): "memory");
  goto ldv_5616;
  case 8UL:
  __ptr___2 = (u64 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgq %2,%1": "=a" (__ret),
                       "+m" (*__ptr___2): "r" (__new), "0" (__old): "memory");
  goto ldv_5616;
  default:
  __cmpxchg_wrong_size();
  }
  ldv_5616: ;
  return (__ret);
}
}
__inline static int __atomic_add_unless(atomic_t *v , int a , int u )
{
  int c ;
  int old ;
  long tmp ;
  long tmp___0 ;
  {
  c = atomic_read((atomic_t const *)v);
  ldv_5645:
  tmp = ldv__builtin_expect(c == u, 0L);
  if (tmp != 0L) {
    goto ldv_5644;
  } else {
  }
  old = atomic_cmpxchg(v, c, c + a);
  tmp___0 = ldv__builtin_expect(old == c, 1L);
  if (tmp___0 != 0L) {
    goto ldv_5644;
  } else {
  }
  c = old;
  goto ldv_5645;
  ldv_5644: ;
  return (c);
}
}
__inline static int atomic_add_unless(atomic_t *v , int a , int u )
{
  int tmp ;
  {
  tmp = __atomic_add_unless(v, a, u);
  return (tmp != u);
}
}
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_8(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_17(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_20(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_22(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_24(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_26(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_28(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_34(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_38(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 ) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern int __VERIFIER_nondet_int(void) ;
extern long __VERIFIER_nondet_long(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern unsigned char __VERIFIER_nondet_uchar();
extern unsigned int __VERIFIER_nondet_uint();
extern _Bool __VERIFIER_nondet_bool(void) ;
extern void __VERIFIER_assume(int ) ;
void *ldv_successful_malloc(size_t __size) {
  void *p = malloc(__size);
  __VERIFIER_assume(p != (void *)0);
  return p;
}
extern void free(void *__ptr) __attribute__ ((__nothrow__ , __leaf__));
int check_fw_dummy(struct cyapa *p1, struct firmware const *p2) {
  return __VERIFIER_nondet_int();
};
int bl_enter_dummy(struct cyapa *p1) {
  return __VERIFIER_nondet_int();
};
int bl_activate_dummy(struct cyapa *p1) {
  return __VERIFIER_nondet_int();
};
int bl_initiate_dummy(struct cyapa *p1, struct firmware const *p2) {
  return __VERIFIER_nondet_int();
};
int update_fw_dummy(struct cyapa *p1, struct firmware const *p2) {
  return __VERIFIER_nondet_int();
};
int bl_deactivate_dummy(struct cyapa *p1) {
  return __VERIFIER_nondet_int();
};
ssize_t *show_baseline_dummy(struct device *p1, struct device_attribute *p2, char *p3) {
  return __VERIFIER_nondet_long();
};
ssize_t *calibrate_store_dummy(struct device *p1, struct device_attribute *p2, char const *p3, size_t p4) {
  return __VERIFIER_nondet_long();
};
int initialize_dummy(struct cyapa *p1) {
  return __VERIFIER_nondet_int();
};
int state_parse_dummy(struct cyapa *p1, u8 *p2, int p3) {
  return __VERIFIER_nondet_int();
};
int operational_check_dummy(struct cyapa *p1) {
  return __VERIFIER_nondet_int();
};
int irq_handler_dummy(struct cyapa *p1) {
  return __VERIFIER_nondet_int();
};
bool irq_cmd_handler_dummy(struct cyapa *p1) {
  return __VERIFIER_nondet_bool();
};
int sort_empty_output_data_dummy(struct cyapa *p1, u8 *p2, int *p3, bool (*p4)(struct cyapa * , u8 * , int )) {
  return __VERIFIER_nondet_int();
};
int set_power_mode_dummy(struct cyapa *p1, u8 p2, u16 p3) {
  return __VERIFIER_nondet_int();
};
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
extern int mutex_lock_interruptible(struct mutex * ) ;
int ldv_mutex_lock_interruptible_13(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_19(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_21(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_23(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_25(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_27(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_29(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_31(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_33(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_35(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_37(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_40(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_7(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_42(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_lock_interruptible_state_sync_lock_of_cyapa(struct mutex *lock ) ;
void ldv_mutex_lock_state_sync_lock_of_cyapa(struct mutex *lock ) ;
int ldv_mutex_trylock_state_sync_lock_of_cyapa(struct mutex *lock ) ;
void ldv_mutex_unlock_state_sync_lock_of_cyapa(struct mutex *lock ) ;
extern unsigned long volatile jiffies ;
extern char const power_group_name[] ;
int ldv_state_variable_8 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_state_variable_13 ;
int ldv_irq_2_0 = 0;
int ldv_state_variable_12 ;
struct device *ldv_irq_dev_2_0 ;
int ldv_state_variable_14 ;
struct cyapa *cyapa_gen5_ops_group1 ;
struct device *cyapa_pm_ops_group1 ;
struct device *cyapa_gen3_ops_group3 ;
void *ldv_irq_data_2_3 ;
int ldv_irq_2_2 = 0;
int ldv_state_variable_9 ;
struct device *ldv_irq_dev_1_2 ;
int ldv_irq_line_2_0 ;
struct device_attribute *dev_attr_runtime_suspend_scanrate_ms_group0 ;
struct device *ldv_irq_dev_2_1 ;
int ref_cnt ;
void *ldv_irq_data_2_2 ;
int ldv_irq_line_1_1 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
struct device_attribute *cyapa_gen3_ops_group2 ;
int ldv_irq_line_1_2 ;
struct device *ldv_irq_dev_2_2 ;
int ldv_irq_line_2_3 ;
int ldv_irq_2_1 = 0;
void *ldv_irq_data_2_1 ;
int ldv_irq_1_3 = 0;
struct device *ldv_irq_dev_1_1 ;
struct cyapa *cyapa_gen3_ops_group1 ;
void *ldv_irq_data_1_1 ;
int ldv_irq_line_2_2 ;
int ldv_state_variable_10 ;
int ldv_irq_1_0 = 0;
struct device *cyapa_gen5_ops_group3 ;
struct device *dev_attr_suspend_scanrate_ms_group1 ;
void *ldv_irq_data_1_0 ;
int ldv_state_variable_6 ;
int ldv_irq_line_2_1 ;
void *ldv_irq_data_1_3 ;
struct device *ldv_irq_dev_1_3 ;
int ldv_state_variable_2 ;
struct device *ldv_irq_dev_1_0 ;
struct device_attribute *cyapa_gen5_ops_group2 ;
void *ldv_irq_data_1_2 ;
struct device *ldv_irq_dev_2_3 ;
void *ldv_irq_data_2_0 ;
struct firmware const *cyapa_gen5_ops_group0 ;
int ldv_state_variable_11 ;
int ldv_irq_1_2 = 0;
struct device_attribute *dev_attr_suspend_scanrate_ms_group0 ;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_1 = 0;
struct device *dev_attr_runtime_suspend_scanrate_ms_group1 ;
int ldv_irq_2_3 = 0;
int ldv_irq_line_1_3 ;
struct firmware const *cyapa_gen3_ops_group0 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
int ldv_state_variable_4 ;
void choose_interrupt_2(void) ;
void disable_suitable_irq_2(struct device *dev , int line , void *data ) ;
void ldv_initialize_device_attribute_13(void) ;
void activate_suitable_irq_2(struct device *dev , int line , void *data ) ;
void ldv_initialize_device_attribute_14(void) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) , irqreturn_t (*thread_fn)(int ,
                                                                                  void * ) ) ;
void choose_interrupt_1(void) ;
int reg_check_2(irqreturn_t (*handler)(int , void * ) , irqreturn_t (*thread_fn)(int ,
                                                                                  void * ) ) ;
void ldv_dev_pm_ops_6(void) ;
void disable_suitable_irq_1(struct device *dev , int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void activate_suitable_irq_1(struct device *dev , int line , void *data ) ;
int ldv_irq_2(int state , int line , void *data ) ;
void ldv_initialize_cyapa_dev_ops_3(void) ;
void ldv_initialize_cyapa_dev_ops_4(void) ;
extern void msleep(unsigned int ) ;
extern int sysfs_create_group(struct kobject * , struct attribute_group const * ) ;
extern void sysfs_remove_group(struct kobject * , struct attribute_group const * ) ;
extern int sysfs_merge_group(struct kobject * , struct attribute_group const * ) ;
extern void sysfs_unmerge_group(struct kobject * , struct attribute_group const * ) ;
extern void *devm_kmalloc(struct device * , size_t , gfp_t ) ;
__inline static void *devm_kzalloc(struct device *dev , size_t size , gfp_t gfp )
{
  void *tmp ;
  {
  tmp = devm_kmalloc(dev, size, gfp | 32768U);
  return (tmp);
}
}
extern int devm_add_action(struct device * , void (*)(void * ) , void * ) ;
__inline static bool device_can_wakeup(struct device *dev )
{
  {
  return ((int )dev->power.can_wakeup != 0);
}
}
__inline static bool device_may_wakeup(struct device *dev )
{
  {
  return ((bool )((unsigned int )*((unsigned char *)dev + 524UL) != 0U && (unsigned long )dev->power.wakeup != (unsigned long )((struct wakeup_source *)0)));
}
}
extern void pm_wakeup_event(struct device * , unsigned int ) ;
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
extern int i2c_master_send(struct i2c_client const * , char const * , int ) ;
extern int i2c_transfer(struct i2c_adapter * , struct i2c_msg * , int ) ;
extern s32 i2c_smbus_xfer(struct i2c_adapter * , u16 , unsigned short , char ,
                          u8 , int , union i2c_smbus_data * ) ;
__inline static void *i2c_get_clientdata(struct i2c_client const *dev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata(& dev->dev);
  return (tmp);
}
}
__inline static void i2c_set_clientdata(struct i2c_client *dev , void *data )
{
  {
  dev_set_drvdata(& dev->dev, data);
  return;
}
}
extern int i2c_register_driver(struct module * , struct i2c_driver * ) ;
extern void i2c_del_driver(struct i2c_driver * ) ;
__inline static u32 i2c_get_functionality(struct i2c_adapter *adap )
{
  u32 tmp ;
  {
  tmp = (*((adap->algo)->functionality))(adap);
  return (tmp);
}
}
__inline static int i2c_check_functionality(struct i2c_adapter *adap , u32 func )
{
  u32 tmp ;
  {
  tmp = i2c_get_functionality(adap);
  return ((tmp & func) == func);
}
}
extern struct input_dev *devm_input_allocate_device(struct device * ) ;
__inline static void *input_get_drvdata(struct input_dev *dev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& dev->dev));
  return (tmp);
}
}
__inline static void input_set_drvdata(struct input_dev *dev , void *data )
{
  {
  dev_set_drvdata(& dev->dev, data);
  return;
}
}
extern int input_register_device(struct input_dev * ) ;
extern void input_unregister_device(struct input_dev * ) ;
extern void input_alloc_absinfo(struct input_dev * ) ;
extern void input_set_abs_params(struct input_dev * , unsigned int , int , int ,
                                 int , int ) ;
__inline static void input_abs_set_res(struct input_dev *dev , unsigned int axis ,
                                       int val )
{
  {
  input_alloc_absinfo(dev);
  if ((unsigned long )dev->absinfo != (unsigned long )((struct input_absinfo *)0)) {
    (dev->absinfo + (unsigned long )axis)->resolution = val;
  } else {
  }
  return;
}
}
extern int input_mt_init_slots(struct input_dev * , unsigned int , unsigned int ) ;
extern int devm_request_threaded_irq(struct device * , unsigned int , irqreturn_t (*)(int ,
                                                                                       void * ) ,
                                     irqreturn_t (*)(int , void * ) , unsigned long ,
                                     char const * , void * ) ;
int ldv_devm_request_threaded_irq_12(struct device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                     irqreturn_t (*handler)(int , void * ) , irqreturn_t (*thread_fn)(int ,
                                                                                                       void * ) ,
                                     unsigned long ldv_func_arg5 , char const *ldv_func_arg6 ,
                                     void *ldv_func_arg7 ) ;
int ldv_devm_request_threaded_irq_39(struct device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                     irqreturn_t (*handler)(int , void * ) , irqreturn_t (*thread_fn)(int ,
                                                                                                       void * ) ,
                                     unsigned long ldv_func_arg5 , char const *ldv_func_arg6 ,
                                     void *ldv_func_arg7 ) ;
extern void disable_irq(unsigned int ) ;
extern void enable_irq(unsigned int ) ;
extern int irq_set_irq_wake(unsigned int , unsigned int ) ;
__inline static int enable_irq_wake(unsigned int irq )
{
  int tmp ;
  {
  tmp = irq_set_irq_wake(irq, 1U);
  return (tmp);
}
}
__inline static int disable_irq_wake(unsigned int irq )
{
  int tmp ;
  {
  tmp = irq_set_irq_wake(irq, 0U);
  return (tmp);
}
}
extern int __pm_runtime_suspend(struct device * , int ) ;
extern int __pm_runtime_resume(struct device * , int ) ;
extern int __pm_runtime_set_status(struct device * , unsigned int ) ;
extern void pm_runtime_enable(struct device * ) ;
extern void __pm_runtime_disable(struct device * , bool ) ;
extern void __pm_runtime_use_autosuspend(struct device * , bool ) ;
extern void pm_runtime_set_autosuspend_delay(struct device * , int ) ;
__inline static void pm_runtime_put_noidle(struct device *dev )
{
  {
  atomic_add_unless(& dev->power.usage_count, -1, 0);
  return;
}
}
__inline static bool pm_runtime_enabled(struct device *dev )
{
  {
  return ((unsigned int )*((unsigned char *)dev + 1048UL) == 0U);
}
}
__inline static void pm_runtime_mark_last_busy(struct device *dev )
{
  unsigned long __var ;
  {
  __var = 0UL;
  *((unsigned long volatile *)(& dev->power.last_busy)) = jiffies;
  return;
}
}
__inline static int pm_runtime_get_sync(struct device *dev )
{
  int tmp ;
  {
  tmp = __pm_runtime_resume(dev, 4);
  return (tmp);
}
}
__inline static int pm_runtime_put_sync_autosuspend(struct device *dev )
{
  int tmp ;
  {
  tmp = __pm_runtime_suspend(dev, 12);
  return (tmp);
}
}
__inline static int pm_runtime_set_active(struct device *dev )
{
  int tmp ;
  {
  tmp = __pm_runtime_set_status(dev, 0U);
  return (tmp);
}
}
__inline static void pm_runtime_set_suspended(struct device *dev )
{
  {
  __pm_runtime_set_status(dev, 2U);
  return;
}
}
__inline static void pm_runtime_disable(struct device *dev )
{
  {
  __pm_runtime_disable(dev, 1);
  return;
}
}
__inline static void pm_runtime_use_autosuspend(struct device *dev )
{
  {
  __pm_runtime_use_autosuspend(dev, 1);
  return;
}
}
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
ssize_t cyapa_i2c_reg_read_block(struct cyapa *cyapa , u8 reg , size_t len , u8 *values ) ;
ssize_t cyapa_read_block(struct cyapa *cyapa , u8 cmd_idx , u8 *values ) ;
int cyapa_poll_state(struct cyapa *cyapa , unsigned int timeout ) ;
u8 cyapa_sleep_time_to_pwr_cmd(u16 sleep_time ) ;
u16 cyapa_pwr_cmd_to_sleep_time(u8 pwr_mode ) ;
char const product_id[6U] ;
struct cyapa_dev_ops const cyapa_gen3_ops ;
struct cyapa_dev_ops const cyapa_gen5_ops ;
char const product_id[6U] = { 'C', 'Y', 'T', 'R',
        'A', '\000'};
static int cyapa_reinitialize(struct cyapa *cyapa ) ;
__inline static bool cyapa_is_bootloader_mode(struct cyapa *cyapa )
{
  {
  if ((unsigned int )cyapa->gen == 5U && (unsigned int )cyapa->state == 5U) {
    return (1);
  } else {
  }
  if (((unsigned int )cyapa->gen == 3U && (unsigned int )cyapa->state != 0U) && (unsigned int )cyapa->state <= 3U) {
    return (1);
  } else {
  }
  return (0);
}
}
__inline static bool cyapa_is_operational_mode(struct cyapa *cyapa )
{
  {
  if ((unsigned int )cyapa->gen == 5U && (unsigned int )cyapa->state == 6U) {
    return (1);
  } else {
  }
  if ((unsigned int )cyapa->gen == 3U && (unsigned int )cyapa->state == 4U) {
    return (1);
  } else {
  }
  return (0);
}
}
static ssize_t cyapa_i2c_read(struct cyapa *cyapa , u8 reg , size_t len , u8 *values )
{
  struct i2c_client *client ;
  struct i2c_msg msgs[2U] ;
  int ret ;
  {
  client = cyapa->client;
  msgs[0].addr = client->addr;
  msgs[0].flags = 0U;
  msgs[0].len = 1U;
  msgs[0].buf = & reg;
  msgs[1].addr = client->addr;
  msgs[1].flags = 1U;
  msgs[1].len = (unsigned short )len;
  msgs[1].buf = values;
  ret = i2c_transfer(client->adapter, (struct i2c_msg *)(& msgs), 2);
  if (ret != 2) {
    return (ret < 0 ? (ssize_t )ret : -5L);
  } else {
  }
  return (0L);
}
}
static int cyapa_i2c_write(struct cyapa *cyapa , u8 reg , size_t len , void const *values )
{
  struct i2c_client *client ;
  char buf[32U] ;
  int ret ;
  {
  client = cyapa->client;
  if (len > 31UL) {
    return (-12);
  } else {
  }
  buf[0] = (char )reg;
  memcpy((void *)(& buf) + 1U, values, len);
  ret = i2c_master_send((struct i2c_client const *)client, (char const *)(& buf),
                        (int )((unsigned int )len + 1U));
  if ((size_t )ret != len + 1UL) {
    return (ret < 0 ? ret : -5);
  } else {
  }
  return (0);
}
}
static u8 cyapa_check_adapter_functionality(struct i2c_client *client )
{
  u8 ret ;
  int tmp ;
  int tmp___0 ;
  {
  ret = 0U;
  tmp = i2c_check_functionality(client->adapter, 1U);
  if (tmp != 0) {
    ret = (u8 )((unsigned int )ret | 1U);
  } else {
  }
  tmp___0 = i2c_check_functionality(client->adapter, 253231104U);
  if (tmp___0 != 0) {
    ret = (u8 )((unsigned int )ret | 2U);
  } else {
  }
  return (ret);
}
}
static int cyapa_get_state(struct cyapa *cyapa )
{
  u8 status[3U] ;
  u8 cmd[32U] ;
  bool even_addr ;
  bool smbus ;
  int retries ;
  int error ;
  ssize_t tmp ;
  ssize_t tmp___0 ;
  ssize_t tmp___1 ;
  {
  even_addr = ((int )(cyapa->client)->addr & 1) == 0;
  smbus = 0;
  retries = 2;
  cyapa->state = 0;
  tmp = cyapa_i2c_reg_read_block(cyapa, 0, 3UL, (u8 *)(& status));
  error = (int )tmp;
  if ((int )cyapa->smbus && (error == -110 || error == -6)) {
    if (! even_addr) {
      tmp___0 = cyapa_read_block(cyapa, 6, (u8 *)(& status));
      error = (int )tmp___0;
    } else {
    }
    smbus = 1;
  } else {
  }
  if (error != 3) {
    goto error;
  } else {
  }
  ldv_32783:
  cyapa->status[0] = status[0];
  cyapa->status[1] = status[1];
  cyapa->status[2] = status[2];
  if ((unsigned int )cyapa->gen == 0U || (unsigned int )cyapa->gen == 3U) {
    error = (*(cyapa_gen3_ops.state_parse))(cyapa, (u8 *)(& status), 3);
    if (error == 0) {
      goto out_detected;
    } else {
    }
  } else {
  }
  if ((((unsigned int )cyapa->gen == 0U || (unsigned int )cyapa->gen == 5U) && ! smbus) && (int )even_addr) {
    error = (*(cyapa_gen5_ops.state_parse))(cyapa, (u8 *)(& status), 3);
    if (error == 0) {
      goto out_detected;
    } else {
    }
  } else {
  }
  if (! smbus) {
    cmd[0] = 0U;
    cmd[1] = 0U;
    error = cyapa_i2c_write(cyapa, 0, 2UL, (void const *)(& cmd));
    if (error != 0) {
      goto error;
    } else {
    }
    msleep(50U);
    tmp___1 = cyapa_i2c_read(cyapa, 0, 3UL, (u8 *)(& status));
    error = (int )tmp___1;
    if (error != 0) {
      goto error;
    } else {
    }
  } else {
  }
  retries = retries - 1;
  if (retries > 0 && ! smbus) {
    goto ldv_32783;
  } else {
  }
  goto error;
  out_detected: ;
  if ((unsigned int )cyapa->state <= 1U) {
    return (-11);
  } else {
  }
  return (0);
  error: ;
  return (error < 0 ? error : -11);
}
}
int cyapa_poll_state(struct cyapa *cyapa , unsigned int timeout )
{
  int error ;
  int tries ;
  int tmp ;
  {
  tries = (int )(timeout / 100U);
  ldv_32791:
  error = cyapa_get_state(cyapa);
  if (error == 0 && (unsigned int )cyapa->state > 1U) {
    return (0);
  } else {
  }
  msleep(100U);
  tmp = tries;
  tries = tries - 1;
  if (tmp != 0) {
    goto ldv_32791;
  } else {
  }
  return (error != -11 && error != -110 ? error : -110);
}
}
static int cyapa_check_is_operational(struct cyapa *cyapa )
{
  int error ;
  bool tmp ;
  {
  error = cyapa_poll_state(cyapa, 4000U);
  if (error != 0) {
    return (error);
  } else {
  }
  switch ((int )cyapa->gen) {
  case 5:
  cyapa->ops = & cyapa_gen5_ops;
  goto ldv_32798;
  case 3:
  cyapa->ops = & cyapa_gen3_ops;
  goto ldv_32798;
  default: ;
  return (-19);
  }
  ldv_32798:
  error = (*((cyapa->ops)->operational_check))(cyapa);
  if (error == 0) {
    tmp = cyapa_is_operational_mode(cyapa);
    if ((int )tmp) {
      cyapa->operational = 1;
    } else {
      cyapa->operational = 0;
    }
  } else {
    cyapa->operational = 0;
  }
  return (error);
}
}
static int cyapa_detect(struct cyapa *cyapa )
{
  struct device *dev ;
  int error ;
  bool tmp ;
  {
  dev = & (cyapa->client)->dev;
  error = cyapa_check_is_operational(cyapa);
  if (error != 0) {
    if (error != -110 && error != -19) {
      tmp = cyapa_is_bootloader_mode(cyapa);
      if ((int )tmp) {
        dev_warn((struct device const *)dev, "device detected but not operational\n");
        return (0);
      } else {
      }
    } else {
    }
    dev_err((struct device const *)dev, "no device detected: %d\n", error);
    return (error);
  } else {
  }
  return (0);
}
}
static int cyapa_open(struct input_dev *input )
{
  struct cyapa *cyapa ;
  void *tmp ;
  struct i2c_client *client ;
  int error ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = input_get_drvdata(input);
  cyapa = (struct cyapa *)tmp;
  client = cyapa->client;
  error = ldv_mutex_lock_interruptible_13(& cyapa->state_sync_lock);
  if (error != 0) {
    return (error);
  } else {
  }
  if ((int )cyapa->operational) {
    error = (*((cyapa->ops)->set_power_mode))(cyapa, 252, 0);
    if (error != 0) {
      dev_warn((struct device const *)(& client->dev), "set active power failed: %d\n",
               error);
      goto out;
    } else {
    }
  } else {
    error = cyapa_reinitialize(cyapa);
    if (error != 0 || ! cyapa->operational) {
      error = error != 0 ? error : -11;
      goto out;
    } else {
    }
  }
  enable_irq((unsigned int )client->irq);
  tmp___0 = pm_runtime_enabled(& client->dev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    pm_runtime_set_active(& client->dev);
    pm_runtime_enable(& client->dev);
  } else {
  }
  out:
  ldv_mutex_unlock_14(& cyapa->state_sync_lock);
  return (error);
}
}
static void cyapa_close(struct input_dev *input )
{
  struct cyapa *cyapa ;
  void *tmp ;
  struct i2c_client *client ;
  bool tmp___0 ;
  {
  tmp = input_get_drvdata(input);
  cyapa = (struct cyapa *)tmp;
  client = cyapa->client;
  ldv_mutex_lock_15(& cyapa->state_sync_lock);
  disable_irq((unsigned int )client->irq);
  tmp___0 = pm_runtime_enabled(& client->dev);
  if ((int )tmp___0) {
    pm_runtime_disable(& client->dev);
  } else {
  }
  pm_runtime_set_suspended(& client->dev);
  if ((int )cyapa->operational) {
    (*((cyapa->ops)->set_power_mode))(cyapa, 0, 0);
  } else {
  }
  ldv_mutex_unlock_16(& cyapa->state_sync_lock);
  return;
}
}
static int cyapa_create_input_dev(struct cyapa *cyapa )
{
  struct device *dev ;
  struct input_dev *input ;
  int error ;
  {
  dev = & (cyapa->client)->dev;
  if (cyapa->physical_size_x == 0 || cyapa->physical_size_y == 0) {
    return (-22);
  } else {
  }
  input = devm_input_allocate_device(dev);
  if ((unsigned long )input == (unsigned long )((struct input_dev *)0)) {
    dev_err((struct device const *)dev, "failed to allocate memory for input device.\n");
    return (-12);
  } else {
  }
  input->name = "Cypress APA Trackpad (cyapa)";
  input->phys = (char const *)(& cyapa->phys);
  input->id.bustype = 24U;
  input->id.version = 1U;
  input->id.product = 0U;
  input->dev.parent = & (cyapa->client)->dev;
  input->open = & cyapa_open;
  input->close = & cyapa_close;
  input_set_drvdata(input, (void *)cyapa);
  __set_bit(3L, (unsigned long volatile *)(& input->evbit));
  input_set_abs_params(input, 53U, 0, cyapa->max_abs_x, 0, 0);
  input_set_abs_params(input, 54U, 0, cyapa->max_abs_y, 0, 0);
  input_set_abs_params(input, 58U, 0, cyapa->max_z, 0, 0);
  if ((unsigned int )cyapa->gen > 3U) {
    input_set_abs_params(input, 48U, 0, 255, 0, 0);
    input_set_abs_params(input, 49U, 0, 255, 0, 0);
    input_set_abs_params(input, 52U, -127, 127, 0, 0);
  } else {
  }
  if ((unsigned int )cyapa->gen > 4U) {
    input_set_abs_params(input, 50U, 0, 255, 0, 0);
    input_set_abs_params(input, 51U, 0, 255, 0, 0);
  } else {
  }
  input_abs_set_res(input, 53U, cyapa->max_abs_x / cyapa->physical_size_x);
  input_abs_set_res(input, 54U, cyapa->max_abs_y / cyapa->physical_size_y);
  if (((int )cyapa->btn_capability & 8) != 0) {
    __set_bit(272L, (unsigned long volatile *)(& input->keybit));
  } else {
  }
  if (((int )cyapa->btn_capability & 32) != 0) {
    __set_bit(274L, (unsigned long volatile *)(& input->keybit));
  } else {
  }
  if (((int )cyapa->btn_capability & 16) != 0) {
    __set_bit(273L, (unsigned long volatile *)(& input->keybit));
  } else {
  }
  if ((unsigned int )cyapa->btn_capability == 8U) {
    __set_bit(2L, (unsigned long volatile *)(& input->propbit));
  } else {
  }
  error = input_mt_init_slots(input, 15U, 5U);
  if (error != 0) {
    dev_err((struct device const *)dev, "failed to initialize MT slots: %d\n", error);
    return (error);
  } else {
  }
  error = input_register_device(input);
  if (error != 0) {
    dev_err((struct device const *)dev, "failed to register input device: %d\n",
            error);
    return (error);
  } else {
  }
  cyapa->input = input;
  return (0);
}
}
static void cyapa_enable_irq_for_cmd(struct cyapa *cyapa )
{
  struct input_dev *input ;
  {
  input = cyapa->input;
  if ((unsigned long )input == (unsigned long )((struct input_dev *)0) || input->users == 0U) {
    if ((unsigned long )input == (unsigned long )((struct input_dev *)0) || (int )cyapa->operational) {
      (*((cyapa->ops)->set_power_mode))(cyapa, 252, 0);
    } else {
    }
    if ((unsigned int )cyapa->gen > 4U) {
      enable_irq((unsigned int )(cyapa->client)->irq);
    } else {
    }
  } else {
  }
  return;
}
}
static void cyapa_disable_irq_for_cmd(struct cyapa *cyapa )
{
  struct input_dev *input ;
  {
  input = cyapa->input;
  if ((unsigned long )input == (unsigned long )((struct input_dev *)0) || input->users == 0U) {
    if ((unsigned int )cyapa->gen > 4U) {
      disable_irq((unsigned int )(cyapa->client)->irq);
    } else {
    }
    if ((unsigned long )input == (unsigned long )((struct input_dev *)0) || (int )cyapa->operational) {
      (*((cyapa->ops)->set_power_mode))(cyapa, 0, 0);
    } else {
    }
  } else {
  }
  return;
}
}
u8 cyapa_sleep_time_to_pwr_cmd(u16 sleep_time )
{
  u16 encoded_time ;
  u16 __min1 ;
  u16 __max1 ;
  u16 __max2 ;
  u16 __min2 ;
  {
  __max1 = sleep_time;
  __max2 = 20U;
  __min1 = (u16 )((int )__max1 > (int )__max2 ? __max1 : __max2);
  __min2 = 1000U;
  sleep_time = (u16 )((int )__min1 < (int )__min2 ? __min1 : __min2);
  encoded_time = (unsigned int )sleep_time <= 99U ? (u16 )((unsigned int )sleep_time / 10U) : (unsigned int )((u16 )((unsigned int )sleep_time / 20U)) + 5U;
  return ((u8 )((int )encoded_time << 2));
}
}
u16 cyapa_pwr_cmd_to_sleep_time(u8 pwr_mode )
{
  u8 encoded_time ;
  {
  encoded_time = (u8 )((int )pwr_mode >> 2);
  return ((unsigned int )encoded_time <= 9U ? (unsigned int )((u16 )encoded_time) * 10U : (unsigned int )((u16 )encoded_time) * 20U + 65436U);
}
}
static int cyapa_initialize(struct cyapa *cyapa )
{
  int error ;
  struct lock_class_key __key ;
  {
  error = 0;
  cyapa->state = 0;
  cyapa->gen = 0U;
  __mutex_init(& cyapa->state_sync_lock, "&cyapa->state_sync_lock", & __key);
  cyapa->suspend_power_mode = 20U;
  cyapa->suspend_sleep_time = cyapa_pwr_cmd_to_sleep_time((int )cyapa->suspend_power_mode);
  error = (*(cyapa_gen3_ops.initialize))(cyapa);
  if (error == 0) {
    error = (*(cyapa_gen5_ops.initialize))(cyapa);
  } else {
  }
  if (error != 0) {
    return (error);
  } else {
  }
  error = cyapa_detect(cyapa);
  if (error != 0) {
    return (error);
  } else {
  }
  if ((int )cyapa->operational) {
    (*((cyapa->ops)->set_power_mode))(cyapa, 0, 0);
  } else {
  }
  return (0);
}
}
static int cyapa_reinitialize(struct cyapa *cyapa )
{
  struct device *dev ;
  struct input_dev *input ;
  int error ;
  bool tmp ;
  {
  dev = & (cyapa->client)->dev;
  input = cyapa->input;
  tmp = pm_runtime_enabled(dev);
  if ((int )tmp) {
    pm_runtime_disable(dev);
  } else {
  }
  if ((int )cyapa->operational) {
    (*((cyapa->ops)->set_power_mode))(cyapa, 252, 0);
  } else {
  }
  error = cyapa_detect(cyapa);
  if (error != 0) {
    goto out;
  } else {
  }
  if ((unsigned long )input == (unsigned long )((struct input_dev *)0) && (int )cyapa->operational) {
    error = cyapa_create_input_dev(cyapa);
    if (error != 0) {
      dev_err((struct device const *)dev, "create input_dev instance failed: %d\n",
              error);
      goto out;
    } else {
    }
  } else {
  }
  out: ;
  if ((unsigned long )input == (unsigned long )((struct input_dev *)0) || input->users == 0U) {
    if ((int )cyapa->operational) {
      (*((cyapa->ops)->set_power_mode))(cyapa, 0, 0);
    } else {
    }
  } else
  if (error == 0 && (int )cyapa->operational) {
    pm_runtime_set_active(dev);
    pm_runtime_enable(dev);
  } else {
  }
  return (error);
}
}
static irqreturn_t cyapa_irq(int irq , void *dev_id )
{
  struct cyapa *cyapa ;
  struct device *dev ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  {
  cyapa = (struct cyapa *)dev_id;
  dev = & (cyapa->client)->dev;
  pm_runtime_get_sync(dev);
  tmp = device_may_wakeup(dev);
  if ((int )tmp) {
    pm_wakeup_event(dev, 0U);
  } else {
  }
  tmp___2 = (*((cyapa->ops)->irq_cmd_handler))(cyapa);
  if ((int )tmp___2) {
    if ((unsigned long )cyapa->input == (unsigned long )((struct input_dev *)0)) {
      (*((cyapa->ops)->sort_empty_output_data))(cyapa, (u8 *)0U, (int *)0, (bool (*)(struct cyapa * ,
                                                                                     u8 * ,
                                                                                     int ))0);
      goto out;
    } else {
    }
    if (! cyapa->operational) {
      goto _L;
    } else {
      tmp___1 = (*((cyapa->ops)->irq_handler))(cyapa);
      if (tmp___1 != 0) {
        _L:
        tmp___0 = ldv_mutex_trylock_17(& cyapa->state_sync_lock);
        if (tmp___0 == 0) {
          (*((cyapa->ops)->sort_empty_output_data))(cyapa, (u8 *)0U, (int *)0, (bool (*)(struct cyapa * ,
                                                                                         u8 * ,
                                                                                         int ))0);
          goto out;
        } else {
        }
        cyapa_reinitialize(cyapa);
        ldv_mutex_unlock_18(& cyapa->state_sync_lock);
      } else {
      }
    }
  } else {
  }
  out:
  pm_runtime_mark_last_busy(dev);
  pm_runtime_put_sync_autosuspend(dev);
  return (1);
}
}
static ssize_t cyapa_show_suspend_scanrate(struct device *dev , struct device_attribute *attr ,
                                           char *buf )
{
  struct cyapa *cyapa ;
  void *tmp ;
  u8 pwr_cmd ;
  u16 sleep_time ;
  int len ;
  int error ;
  u16 tmp___0 ;
  int tmp___1 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  cyapa = (struct cyapa *)tmp;
  pwr_cmd = cyapa->suspend_power_mode;
  error = ldv_mutex_lock_interruptible_19(& cyapa->state_sync_lock);
  if (error != 0) {
    return ((ssize_t )error);
  } else {
  }
  pwr_cmd = cyapa->suspend_power_mode;
  sleep_time = cyapa->suspend_sleep_time;
  ldv_mutex_unlock_20(& cyapa->state_sync_lock);
  switch ((int )pwr_cmd) {
  case 4:
  len = scnprintf(buf, 4096UL, "%s\n", (char *)"buttononly");
  goto ldv_32876;
  case 0:
  len = scnprintf(buf, 4096UL, "%s\n", (char *)"off");
  goto ldv_32876;
  default: ;
  if ((unsigned int )cyapa->gen == 3U) {
    tmp___0 = cyapa_pwr_cmd_to_sleep_time((int )pwr_cmd);
    tmp___1 = (int )tmp___0;
  } else {
    tmp___1 = (int )sleep_time;
  }
  len = scnprintf(buf, 4096UL, "%u\n", tmp___1);
  goto ldv_32876;
  }
  ldv_32876: ;
  return ((ssize_t )len);
}
}
static ssize_t cyapa_update_suspend_scanrate(struct device *dev , struct device_attribute *attr ,
                                             char const *buf , size_t count )
{
  struct cyapa *cyapa ;
  void *tmp ;
  u16 sleep_time ;
  int error ;
  u16 __min1 ;
  u16 __min2 ;
  int tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  cyapa = (struct cyapa *)tmp;
  error = ldv_mutex_lock_interruptible_21(& cyapa->state_sync_lock);
  if (error != 0) {
    return ((ssize_t )error);
  } else {
  }
  tmp___2 = sysfs_streq(buf, "buttononly");
  if ((int )tmp___2) {
    cyapa->suspend_power_mode = 4U;
  } else {
    tmp___1 = sysfs_streq(buf, "off");
    if ((int )tmp___1) {
      cyapa->suspend_power_mode = 0U;
    } else {
      tmp___0 = kstrtou16(buf, 10U, & sleep_time);
      if (tmp___0 == 0) {
        __min1 = sleep_time;
        __min2 = 1000U;
        cyapa->suspend_sleep_time = (u16 )((int )__min1 < (int )__min2 ? __min1 : __min2);
        cyapa->suspend_power_mode = cyapa_sleep_time_to_pwr_cmd((int )cyapa->suspend_sleep_time);
      } else {
        count = 0xffffffffffffffeaUL;
      }
    }
  }
  ldv_mutex_unlock_22(& cyapa->state_sync_lock);
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_suspend_scanrate_ms = {{"suspend_scanrate_ms", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}}}}, & cyapa_show_suspend_scanrate,
    & cyapa_update_suspend_scanrate};
static struct attribute *cyapa_power_wakeup_entries[2U] = { & dev_attr_suspend_scanrate_ms.attr, (struct attribute *)0};
static struct attribute_group const cyapa_power_wakeup_group = {(char const *)(& power_group_name), 0, (struct attribute **)(& cyapa_power_wakeup_entries),
    0};
static void cyapa_remove_power_wakeup_group(void *data )
{
  struct cyapa *cyapa ;
  {
  cyapa = (struct cyapa *)data;
  sysfs_unmerge_group(& (cyapa->client)->dev.kobj, & cyapa_power_wakeup_group);
  return;
}
}
static int cyapa_prepare_wakeup_controls(struct cyapa *cyapa )
{
  struct i2c_client *client ;
  struct device *dev ;
  int error ;
  bool tmp ;
  {
  client = cyapa->client;
  dev = & client->dev;
  tmp = device_can_wakeup(dev);
  if ((int )tmp) {
    error = sysfs_merge_group(& client->dev.kobj, & cyapa_power_wakeup_group);
    if (error != 0) {
      dev_err((struct device const *)dev, "failed to add power wakeup group: %d\n",
              error);
      return (error);
    } else {
    }
    error = devm_add_action(dev, & cyapa_remove_power_wakeup_group, (void *)cyapa);
    if (error != 0) {
      cyapa_remove_power_wakeup_group((void *)cyapa);
      dev_err((struct device const *)dev, "failed to add power cleanup action: %d\n",
              error);
      return (error);
    } else {
    }
  } else {
  }
  return (0);
}
}
static ssize_t cyapa_show_rt_suspend_scanrate(struct device *dev , struct device_attribute *attr ,
                                              char *buf )
{
  struct cyapa *cyapa ;
  void *tmp ;
  u8 pwr_cmd ;
  u16 sleep_time ;
  int error ;
  u16 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  cyapa = (struct cyapa *)tmp;
  error = ldv_mutex_lock_interruptible_23(& cyapa->state_sync_lock);
  if (error != 0) {
    return ((ssize_t )error);
  } else {
  }
  pwr_cmd = cyapa->runtime_suspend_power_mode;
  sleep_time = cyapa->runtime_suspend_sleep_time;
  ldv_mutex_unlock_24(& cyapa->state_sync_lock);
  if ((unsigned int )cyapa->gen == 3U) {
    tmp___0 = cyapa_pwr_cmd_to_sleep_time((int )pwr_cmd);
    tmp___1 = (int )tmp___0;
  } else {
    tmp___1 = (int )sleep_time;
  }
  tmp___2 = scnprintf(buf, 4096UL, "%u\n", tmp___1);
  return ((ssize_t )tmp___2);
}
}
static ssize_t cyapa_update_rt_suspend_scanrate(struct device *dev , struct device_attribute *attr ,
                                                char const *buf , size_t count )
{
  struct cyapa *cyapa ;
  void *tmp ;
  u16 time ;
  int error ;
  int tmp___0 ;
  u16 __min1 ;
  u16 __min2 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  cyapa = (struct cyapa *)tmp;
  if ((unsigned long )buf == (unsigned long )((char const *)0) || count == 0UL) {
    dev_err((struct device const *)dev, "invalid runtime suspend scanrate ms parameter\n");
    return (-22L);
  } else {
    tmp___0 = kstrtou16(buf, 10U, & time);
    if (tmp___0 != 0) {
      dev_err((struct device const *)dev, "invalid runtime suspend scanrate ms parameter\n");
      return (-22L);
    } else {
    }
  }
  pm_runtime_get_sync(dev);
  error = ldv_mutex_lock_interruptible_25(& cyapa->state_sync_lock);
  if (error != 0) {
    return ((ssize_t )error);
  } else {
  }
  __min1 = time;
  __min2 = 1000U;
  cyapa->runtime_suspend_sleep_time = (u16 )((int )__min1 < (int )__min2 ? __min1 : __min2);
  cyapa->runtime_suspend_power_mode = cyapa_sleep_time_to_pwr_cmd((int )cyapa->runtime_suspend_sleep_time);
  ldv_mutex_unlock_26(& cyapa->state_sync_lock);
  pm_runtime_put_sync_autosuspend(dev);
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_runtime_suspend_scanrate_ms = {{"runtime_suspend_scanrate_ms", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                         {(char)0}, {(char)0}, {(char)0},
                                                         {(char)0}, {(char)0}}}},
    & cyapa_show_rt_suspend_scanrate, & cyapa_update_rt_suspend_scanrate};
static struct attribute *cyapa_power_runtime_entries[2U] = { & dev_attr_runtime_suspend_scanrate_ms.attr, (struct attribute *)0};
static struct attribute_group const cyapa_power_runtime_group = {(char const *)(& power_group_name), 0, (struct attribute **)(& cyapa_power_runtime_entries),
    0};
static void cyapa_remove_power_runtime_group(void *data )
{
  struct cyapa *cyapa ;
  {
  cyapa = (struct cyapa *)data;
  sysfs_unmerge_group(& (cyapa->client)->dev.kobj, & cyapa_power_runtime_group);
  return;
}
}
static int cyapa_start_runtime(struct cyapa *cyapa )
{
  struct device *dev ;
  int error ;
  {
  dev = & (cyapa->client)->dev;
  cyapa->runtime_suspend_power_mode = 12U;
  cyapa->runtime_suspend_sleep_time = cyapa_pwr_cmd_to_sleep_time((int )cyapa->runtime_suspend_power_mode);
  error = sysfs_merge_group(& dev->kobj, & cyapa_power_runtime_group);
  if (error != 0) {
    dev_err((struct device const *)dev, "failed to create power runtime group: %d\n",
            error);
    return (error);
  } else {
  }
  error = devm_add_action(dev, & cyapa_remove_power_runtime_group, (void *)cyapa);
  if (error != 0) {
    cyapa_remove_power_runtime_group((void *)cyapa);
    dev_err((struct device const *)dev, "failed to add power runtime cleanup action: %d\n",
            error);
    return (error);
  } else {
  }
  pm_runtime_set_suspended(dev);
  pm_runtime_use_autosuspend(dev);
  pm_runtime_set_autosuspend_delay(dev, 2000);
  return (0);
}
}
static ssize_t cyapa_show_fm_ver(struct device *dev , struct device_attribute *attr ,
                                 char *buf )
{
  int error ;
  struct cyapa *cyapa ;
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  cyapa = (struct cyapa *)tmp;
  error = ldv_mutex_lock_interruptible_27(& cyapa->state_sync_lock);
  if (error != 0) {
    return ((ssize_t )error);
  } else {
  }
  error = scnprintf(buf, 4096UL, "%d.%d\n", (int )cyapa->fw_maj_ver, (int )cyapa->fw_min_ver);
  ldv_mutex_unlock_28(& cyapa->state_sync_lock);
  return ((ssize_t )error);
}
}
static ssize_t cyapa_show_product_id(struct device *dev , struct device_attribute *attr ,
                                     char *buf )
{
  struct cyapa *cyapa ;
  void *tmp ;
  int size ;
  int error ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  cyapa = (struct cyapa *)tmp;
  error = ldv_mutex_lock_interruptible_29(& cyapa->state_sync_lock);
  if (error != 0) {
    return ((ssize_t )error);
  } else {
  }
  size = scnprintf(buf, 4096UL, "%s\n", (char *)(& cyapa->product_id));
  ldv_mutex_unlock_30(& cyapa->state_sync_lock);
  return ((ssize_t )size);
}
}
static int cyapa_firmware(struct cyapa *cyapa , char const *fw_name )
{
  struct device *dev ;
  struct firmware const *fw ;
  int error ;
  {
  dev = & (cyapa->client)->dev;
  error = request_firmware(& fw, fw_name, dev);
  if (error != 0) {
    dev_err((struct device const *)dev, "Could not load firmware from %s: %d\n",
            fw_name, error);
    return (error);
  } else {
  }
  error = (*((cyapa->ops)->check_fw))(cyapa, fw);
  if (error != 0) {
    dev_err((struct device const *)dev, "Invalid CYAPA firmware image: %s\n", fw_name);
    goto done;
  } else {
  }
  pm_runtime_get_sync(dev);
  cyapa_enable_irq_for_cmd(cyapa);
  error = (*((cyapa->ops)->bl_enter))(cyapa);
  if (error != 0) {
    dev_err((struct device const *)dev, "bl_enter failed, %d\n", error);
    goto err_detect;
  } else {
  }
  error = (*((cyapa->ops)->bl_activate))(cyapa);
  if (error != 0) {
    dev_err((struct device const *)dev, "bl_activate failed, %d\n", error);
    goto err_detect;
  } else {
  }
  error = (*((cyapa->ops)->bl_initiate))(cyapa, fw);
  if (error != 0) {
    dev_err((struct device const *)dev, "bl_initiate failed, %d\n", error);
    goto err_detect;
  } else {
  }
  error = (*((cyapa->ops)->update_fw))(cyapa, fw);
  if (error != 0) {
    dev_err((struct device const *)dev, "update_fw failed, %d\n", error);
    goto err_detect;
  } else {
  }
  err_detect:
  cyapa_disable_irq_for_cmd(cyapa);
  pm_runtime_put_noidle(dev);
  done:
  release_firmware(fw);
  return (error);
}
}
static ssize_t cyapa_update_fw_store(struct device *dev , struct device_attribute *attr ,
                                     char const *buf , size_t count )
{
  struct cyapa *cyapa ;
  void *tmp ;
  char fw_name[255U] ;
  int ret ;
  int error ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  cyapa = (struct cyapa *)tmp;
  if (count > 254UL) {
    dev_err((struct device const *)dev, "File name too long\n");
    return (-22L);
  } else {
  }
  memcpy((void *)(& fw_name), (void const *)buf, count);
  if ((int )((signed char )fw_name[count - 1UL]) == 10) {
    fw_name[count - 1UL] = 0;
  } else {
    fw_name[count] = 0;
  }
  if ((unsigned long )cyapa->input != (unsigned long )((struct input_dev *)0)) {
    input_unregister_device(cyapa->input);
    cyapa->input = (struct input_dev *)0;
  } else {
  }
  error = ldv_mutex_lock_interruptible_31(& cyapa->state_sync_lock);
  if (error != 0) {
    cyapa_reinitialize(cyapa);
    return ((ssize_t )error);
  } else {
  }
  error = cyapa_firmware(cyapa, (char const *)(& fw_name));
  if (error != 0) {
    dev_err((struct device const *)dev, "firmware update failed: %d\n", error);
  } else {
    descriptor.modname = "cyapatp";
    descriptor.function = "cyapa_update_fw_store";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1984/dscv_tempdir/dscv/ri/32_7a/drivers/input/mouse/cyapa.c";
    descriptor.format = "firmware update successfully done.\n";
    descriptor.lineno = 1051U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "firmware update successfully done.\n");
    } else {
    }
  }
  ret = cyapa_reinitialize(cyapa);
  if (ret != 0) {
    dev_err((struct device const *)dev, "failed to redetect after updated: %d\n",
            ret);
    error = error != 0 ? error : ret;
  } else {
  }
  ldv_mutex_unlock_32(& cyapa->state_sync_lock);
  return ((ssize_t )(error != 0 ? (size_t )error : count));
}
}
static ssize_t cyapa_calibrate_store(struct device *dev , struct device_attribute *attr ,
                                     char const *buf , size_t count )
{
  struct cyapa *cyapa ;
  void *tmp ;
  int error ;
  ssize_t tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  cyapa = (struct cyapa *)tmp;
  error = ldv_mutex_lock_interruptible_33(& cyapa->state_sync_lock);
  if (error != 0) {
    return ((ssize_t )error);
  } else {
  }
  if ((int )cyapa->operational) {
    cyapa_enable_irq_for_cmd(cyapa);
    tmp___0 = (*((cyapa->ops)->calibrate_store))(dev, attr, buf, count);
    error = (int )tmp___0;
    cyapa_disable_irq_for_cmd(cyapa);
  } else {
    error = -16;
  }
  ldv_mutex_unlock_34(& cyapa->state_sync_lock);
  return ((ssize_t )(error < 0 ? (size_t )error : count));
}
}
static ssize_t cyapa_show_baseline(struct device *dev , struct device_attribute *attr ,
                                   char *buf )
{
  struct cyapa *cyapa ;
  void *tmp ;
  ssize_t error ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  cyapa = (struct cyapa *)tmp;
  tmp___0 = ldv_mutex_lock_interruptible_35(& cyapa->state_sync_lock);
  error = (ssize_t )tmp___0;
  if (error != 0L) {
    return (error);
  } else {
  }
  if ((int )cyapa->operational) {
    cyapa_enable_irq_for_cmd(cyapa);
    error = (*((cyapa->ops)->show_baseline))(dev, attr, buf);
    cyapa_disable_irq_for_cmd(cyapa);
  } else {
    error = -16L;
  }
  ldv_mutex_unlock_36(& cyapa->state_sync_lock);
  return (error);
}
}
static char *cyapa_state_to_string(struct cyapa *cyapa )
{
  {
  switch ((unsigned int )cyapa->state) {
  case 1U: ;
  return ((char *)"bootloader busy");
  case 2U: ;
  return ((char *)"bootloader idle");
  case 3U: ;
  return ((char *)"bootloader active");
  case 5U: ;
  return ((char *)"bootloader");
  case 4U: ;
  case 6U: ;
  return ((char *)"operational");
  default: ;
  return ((char *)"invalid mode");
  }
}
}
static ssize_t cyapa_show_mode(struct device *dev , struct device_attribute *attr ,
                               char *buf )
{
  struct cyapa *cyapa ;
  void *tmp ;
  int size ;
  int error ;
  char *tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  cyapa = (struct cyapa *)tmp;
  error = ldv_mutex_lock_interruptible_37(& cyapa->state_sync_lock);
  if (error != 0) {
    return ((ssize_t )error);
  } else {
  }
  tmp___0 = cyapa_state_to_string(cyapa);
  size = scnprintf(buf, 4096UL, "gen%d %s\n", (int )cyapa->gen, tmp___0);
  ldv_mutex_unlock_38(& cyapa->state_sync_lock);
  return ((ssize_t )size);
}
}
static struct device_attribute dev_attr_firmware_version = {{"firmware_version", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & cyapa_show_fm_ver, (ssize_t (*)(struct device * , struct device_attribute * ,
                                      char const * , size_t ))0};
static struct device_attribute dev_attr_product_id = {{"product_id", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & cyapa_show_product_id, (ssize_t (*)(struct device * , struct device_attribute * ,
                                          char const * , size_t ))0};
static struct device_attribute dev_attr_update_fw = {{"update_fw", 128U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    (ssize_t (*)(struct device * , struct device_attribute * , char * ))0, & cyapa_update_fw_store};
static struct device_attribute dev_attr_baseline = {{"baseline", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & cyapa_show_baseline, (ssize_t (*)(struct device * , struct device_attribute * ,
                                        char const * , size_t ))0};
static struct device_attribute dev_attr_calibrate = {{"calibrate", 128U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    (ssize_t (*)(struct device * , struct device_attribute * , char * ))0, & cyapa_calibrate_store};
static struct device_attribute dev_attr_mode = {{"mode", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, & cyapa_show_mode,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct attribute *cyapa_sysfs_entries[7U] = { & dev_attr_firmware_version.attr, & dev_attr_product_id.attr, & dev_attr_update_fw.attr, & dev_attr_baseline.attr,
        & dev_attr_calibrate.attr, & dev_attr_mode.attr, (struct attribute *)0};
static struct attribute_group const cyapa_sysfs_group = {0, 0, (struct attribute **)(& cyapa_sysfs_entries), 0};
static void cyapa_remove_sysfs_group(void *data )
{
  struct cyapa *cyapa ;
  {
  cyapa = (struct cyapa *)data;
  sysfs_remove_group(& (cyapa->client)->dev.kobj, & cyapa_sysfs_group);
  return;
}
}
static int cyapa_probe(struct i2c_client *client , struct i2c_device_id const *dev_id )
{
  struct device *dev ;
  struct cyapa *cyapa ;
  u8 adapter_func ;
  union i2c_smbus_data dummy ;
  int error ;
  s32 tmp ;
  void *tmp___0 ;
  {
  dev = & client->dev;
  adapter_func = cyapa_check_adapter_functionality(client);
  if ((unsigned int )adapter_func == 0U) {
    dev_err((struct device const *)dev, "not a supported I2C/SMBus adapter\n");
    return (-5);
  } else {
  }
  tmp = i2c_smbus_xfer(client->adapter, (int )client->addr, 0, 1, 0, 1, & dummy);
  if (tmp < 0) {
    return (-19);
  } else {
  }
  tmp___0 = devm_kzalloc(dev, 1104UL, 208U);
  cyapa = (struct cyapa *)tmp___0;
  if ((unsigned long )cyapa == (unsigned long )((struct cyapa *)0)) {
    return (-12);
  } else {
  }
  if ((unsigned int )adapter_func == 2U) {
    cyapa->smbus = 1;
  } else {
  }
  cyapa->client = client;
  i2c_set_clientdata(client, (void *)cyapa);
  sprintf((char *)(& cyapa->phys), "i2c-%d-%04x/input0", (client->adapter)->nr, (int )client->addr);
  error = cyapa_initialize(cyapa);
  if (error != 0) {
    dev_err((struct device const *)dev, "failed to detect and initialize tp device.\n");
    return (error);
  } else {
  }
  error = sysfs_create_group(& client->dev.kobj, & cyapa_sysfs_group);
  if (error != 0) {
    dev_err((struct device const *)dev, "failed to create sysfs entries: %d\n",
            error);
    return (error);
  } else {
  }
  error = devm_add_action(dev, & cyapa_remove_sysfs_group, (void *)cyapa);
  if (error != 0) {
    cyapa_remove_sysfs_group((void *)cyapa);
    dev_err((struct device const *)dev, "failed to add sysfs cleanup action: %d\n",
            error);
    return (error);
  } else {
  }
  error = cyapa_prepare_wakeup_controls(cyapa);
  if (error != 0) {
    dev_err((struct device const *)dev, "failed to prepare wakeup controls: %d\n",
            error);
    return (error);
  } else {
  }
  error = cyapa_start_runtime(cyapa);
  if (error != 0) {
    dev_err((struct device const *)dev, "failed to start pm_runtime: %d\n", error);
    return (error);
  } else {
  }
  error = ldv_devm_request_threaded_irq_39(dev, (unsigned int )client->irq, (irqreturn_t (*)(int ,
                                                                                             void * ))0,
                                           & cyapa_irq, 8194UL, "cyapa", (void *)cyapa);
  if (error != 0) {
    dev_err((struct device const *)dev, "failed to request threaded irq: %d\n",
            error);
    return (error);
  } else {
  }
  disable_irq((unsigned int )client->irq);
  if ((int )cyapa->operational) {
    error = cyapa_create_input_dev(cyapa);
    if (error != 0) {
      dev_err((struct device const *)dev, "create input_dev instance failed: %d\n",
              error);
      return (error);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int cyapa_suspend(struct device *dev )
{
  struct i2c_client *client ;
  struct device const *__mptr ;
  struct cyapa *cyapa ;
  void *tmp ;
  u8 power_mode ;
  int error ;
  bool tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  {
  __mptr = (struct device const *)dev;
  client = (struct i2c_client *)__mptr + 0xffffffffffffffe0UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  cyapa = (struct cyapa *)tmp;
  error = ldv_mutex_lock_interruptible_40(& cyapa->state_sync_lock);
  if (error != 0) {
    return (error);
  } else {
  }
  tmp___0 = pm_runtime_enabled(dev);
  if ((int )tmp___0) {
    pm_runtime_disable(dev);
  } else {
  }
  disable_irq((unsigned int )client->irq);
  if ((int )cyapa->operational) {
    tmp___1 = device_may_wakeup(dev);
    power_mode = (int )tmp___1 ? cyapa->suspend_power_mode : 0U;
    error = (*((cyapa->ops)->set_power_mode))(cyapa, (int )power_mode, (int )cyapa->suspend_sleep_time);
    if (error != 0) {
      dev_err((struct device const *)dev, "suspend set power mode failed: %d\n",
              error);
    } else {
    }
  } else {
  }
  tmp___3 = device_may_wakeup(dev);
  if ((int )tmp___3) {
    tmp___2 = enable_irq_wake((unsigned int )client->irq);
    cyapa->irq_wake = tmp___2 == 0;
  } else {
  }
  ldv_mutex_unlock_41(& cyapa->state_sync_lock);
  return (0);
}
}
static int cyapa_resume(struct device *dev )
{
  struct i2c_client *client ;
  struct device const *__mptr ;
  struct cyapa *cyapa ;
  void *tmp ;
  int error ;
  bool tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  client = (struct i2c_client *)__mptr + 0xffffffffffffffe0UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  cyapa = (struct cyapa *)tmp;
  ldv_mutex_lock_42(& cyapa->state_sync_lock);
  tmp___0 = device_may_wakeup(dev);
  if ((int )tmp___0 && (int )cyapa->irq_wake) {
    disable_irq_wake((unsigned int )client->irq);
    cyapa->irq_wake = 0;
  } else {
  }
  error = cyapa_reinitialize(cyapa);
  if (error != 0) {
    dev_warn((struct device const *)dev, "failed to reinitialize TP device: %d\n",
             error);
  } else {
  }
  enable_irq((unsigned int )client->irq);
  ldv_mutex_unlock_43(& cyapa->state_sync_lock);
  return (0);
}
}
static int cyapa_runtime_suspend(struct device *dev )
{
  struct cyapa *cyapa ;
  void *tmp ;
  int error ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  cyapa = (struct cyapa *)tmp;
  error = (*((cyapa->ops)->set_power_mode))(cyapa, (int )cyapa->runtime_suspend_power_mode,
                                            (int )cyapa->runtime_suspend_sleep_time);
  if (error != 0) {
    dev_warn((struct device const *)dev, "runtime suspend failed: %d\n", error);
  } else {
  }
  return (0);
}
}
static int cyapa_runtime_resume(struct device *dev )
{
  struct cyapa *cyapa ;
  void *tmp ;
  int error ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  cyapa = (struct cyapa *)tmp;
  error = (*((cyapa->ops)->set_power_mode))(cyapa, 252, 0);
  if (error != 0) {
    dev_warn((struct device const *)dev, "runtime resume failed: %d\n", error);
  } else {
  }
  return (0);
}
}
static struct dev_pm_ops const cyapa_pm_ops =
     {0, 0, & cyapa_suspend, & cyapa_resume, & cyapa_suspend, & cyapa_resume, & cyapa_suspend,
    & cyapa_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & cyapa_runtime_suspend, & cyapa_runtime_resume,
    (int (*)(struct device * ))0};
static struct i2c_device_id const cyapa_id_table[2U] = { {{'c', 'y', 'a', 'p', 'a', '\000'}, 0UL}};
struct i2c_device_id const __mod_i2c__cyapa_id_table_device_table[2U] ;
static struct acpi_device_id const cyapa_acpi_id[3U] = { {{'C', 'Y', 'A', 'P', '0', '0', '0', '0', '\000'}, 0UL},
        {{'C', 'Y', 'A', 'P', '0', '0', '0', '1', '\000'}, 0UL}};
struct acpi_device_id const __mod_acpi__cyapa_acpi_id_device_table[3U] ;
static struct i2c_driver cyapa_driver =
     {0U, 0, & cyapa_probe, 0, 0, 0, 0, {"cyapa", 0, & __this_module, 0, (_Bool)0, 0,
                                       0, (struct acpi_device_id const *)(& cyapa_acpi_id),
                                       0, 0, 0, 0, 0, 0, & cyapa_pm_ops, 0}, (struct i2c_device_id const *)(& cyapa_id_table),
    0, 0, {0, 0}};
static int cyapa_driver_init(void)
{
  int tmp ;
  {
  tmp = i2c_register_driver(& __this_module, & cyapa_driver);
  return (tmp);
}
}
static void cyapa_driver_exit(void)
{
  {
  i2c_del_driver(& cyapa_driver);
  return;
}
}
int ldv_retval_20 ;
int ldv_retval_18 ;
extern int ldv_suspend_noirq_6(void) ;
int ldv_retval_2 ;
int ldv_retval_5 ;
int ldv_retval_0 ;
int ldv_retval_11 ;
int ldv_retval_1 ;
extern int ldv_thaw_noirq_6(void) ;
int ldv_retval_22 ;
int ldv_retval_15 ;
int ldv_retval_16 ;
extern int ldv_restore_early_6(void) ;
extern int ldv_release_5(void) ;
extern int ldv_freeze_late_6(void) ;
extern int ldv_prepare_6(void) ;
extern int ldv_restore_noirq_6(void) ;
void ldv_check_final_state(void) ;
int ldv_retval_8 ;
int ldv_retval_7 ;
int ldv_retval_19 ;
extern int ldv_freeze_noirq_6(void) ;
int ldv_retval_14 ;
extern int ldv_poweroff_late_6(void) ;
int ldv_retval_17 ;
int ldv_retval_12 ;
extern void ldv_initialize(void) ;
int ldv_retval_6 ;
extern int ldv_complete_6(void) ;
extern int ldv_poweroff_noirq_6(void) ;
extern int ldv_thaw_early_6(void) ;
int ldv_retval_21 ;
int ldv_retval_13 ;
int ldv_retval_9 ;
int ldv_retval_10 ;
extern int ldv_resume_early_6(void) ;
extern int ldv_resume_noirq_6(void) ;
extern int ldv_suspend_late_6(void) ;
int ldv_retval_4 ;
int ldv_retval_3 ;
void choose_interrupt_2(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_0, ldv_irq_line_2_0, ldv_irq_data_2_0);
  goto ldv_33242;
  case 1:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_1, ldv_irq_line_2_1, ldv_irq_data_2_1);
  goto ldv_33242;
  case 2:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_2, ldv_irq_line_2_2, ldv_irq_data_2_2);
  goto ldv_33242;
  case 3:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_3, ldv_irq_line_2_3, ldv_irq_data_2_3);
  goto ldv_33242;
  default:
  ldv_stop();
  }
  ldv_33242: ;
  return;
}
}
void disable_suitable_irq_2(struct device *dev , int line , void *data )
{
  {
  if ((ldv_irq_2_0 != 0 && line == ldv_irq_line_2_0) && (unsigned long )dev == (unsigned long )ldv_irq_dev_2_0) {
    ldv_irq_2_0 = 0;
    return;
  } else {
  }
  if ((ldv_irq_2_1 != 0 && line == ldv_irq_line_2_1) && (unsigned long )dev == (unsigned long )ldv_irq_dev_2_1) {
    ldv_irq_2_1 = 0;
    return;
  } else {
  }
  if ((ldv_irq_2_2 != 0 && line == ldv_irq_line_2_2) && (unsigned long )dev == (unsigned long )ldv_irq_dev_2_2) {
    ldv_irq_2_2 = 0;
    return;
  } else {
  }
  if ((ldv_irq_2_3 != 0 && line == ldv_irq_line_2_3) && (unsigned long )dev == (unsigned long )ldv_irq_dev_2_3) {
    ldv_irq_2_3 = 0;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_device_attribute_13(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_runtime_suspend_scanrate_ms_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_runtime_suspend_scanrate_ms_group1 = (struct device *)tmp___0;
  return;
}
}
void activate_suitable_irq_2(struct device *dev , int line , void *data )
{
  {
  if (ldv_irq_2_0 == 0) {
    ldv_irq_dev_2_0 = dev;
    ldv_irq_line_2_0 = line;
    ldv_irq_data_2_0 = data;
    ldv_irq_2_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_1 == 0) {
    ldv_irq_dev_2_1 = dev;
    ldv_irq_line_2_1 = line;
    ldv_irq_data_2_1 = data;
    ldv_irq_2_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_2 == 0) {
    ldv_irq_dev_2_2 = dev;
    ldv_irq_line_2_2 = line;
    ldv_irq_data_2_2 = data;
    ldv_irq_2_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_3 == 0) {
    ldv_irq_dev_2_3 = dev;
    ldv_irq_line_2_3 = line;
    ldv_irq_data_2_3 = data;
    ldv_irq_2_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_device_attribute_14(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_suspend_scanrate_ms_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_suspend_scanrate_ms_group1 = (struct device *)tmp___0;
  return;
}
}
int reg_check_1(irqreturn_t (*handler)(int , void * ) , irqreturn_t (*thread_fn)(int ,
                                                                                  void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )((irqreturn_t (*)(int , void * ))0) && (unsigned long )thread_fn == (unsigned long )(& cyapa_irq)) {
    return (1);
  } else {
  }
  return (0);
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
  goto ldv_33275;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_33275;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_33275;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_33275;
  default:
  ldv_stop();
  }
  ldv_33275: ;
  return;
}
}
int reg_check_2(irqreturn_t (*handler)(int , void * ) , irqreturn_t (*thread_fn)(int ,
                                                                                  void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )((irqreturn_t (*)(int , void * ))0) && (unsigned long )thread_fn == (unsigned long )(& cyapa_irq)) {
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_dev_pm_ops_6(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1416UL);
  cyapa_pm_ops_group1 = (struct device *)tmp;
  return;
}
}
void disable_suitable_irq_1(struct device *dev , int line , void *data )
{
  {
  if ((ldv_irq_1_0 != 0 && line == ldv_irq_line_1_0) && (unsigned long )dev == (unsigned long )ldv_irq_dev_1_0) {
    ldv_irq_1_0 = 0;
    return;
  } else {
  }
  if ((ldv_irq_1_1 != 0 && line == ldv_irq_line_1_1) && (unsigned long )dev == (unsigned long )ldv_irq_dev_1_1) {
    ldv_irq_1_1 = 0;
    return;
  } else {
  }
  if ((ldv_irq_1_2 != 0 && line == ldv_irq_line_1_2) && (unsigned long )dev == (unsigned long )ldv_irq_dev_1_2) {
    ldv_irq_1_2 = 0;
    return;
  } else {
  }
  if ((ldv_irq_1_3 != 0 && line == ldv_irq_line_1_3) && (unsigned long )dev == (unsigned long )ldv_irq_dev_1_3) {
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
      LDV_IN_INTERRUPT = 1;
      if ((unsigned int )irq_retval == 2U) {
        state = 2;
      } else {
      }
      if ((unsigned int )irq_retval != 2U) {
        state = 1;
      } else {
      }
      return (state);
    } else {
    }
    goto ldv_33303;
    case 1: ;
    if (state == 2) {
      cyapa_irq(line, data);
      return (state);
    } else {
    }
    goto ldv_33303;
    default:
    ldv_stop();
    }
    ldv_33303: ;
  } else {
  }
  return (state);
}
}
void activate_suitable_irq_1(struct device *dev , int line , void *data )
{
  {
  if (ldv_irq_1_0 == 0) {
    ldv_irq_dev_1_0 = dev;
    ldv_irq_line_1_0 = line;
    ldv_irq_data_1_0 = data;
    ldv_irq_1_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_1 == 0) {
    ldv_irq_dev_1_1 = dev;
    ldv_irq_line_1_1 = line;
    ldv_irq_data_1_1 = data;
    ldv_irq_1_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_2 == 0) {
    ldv_irq_dev_1_2 = dev;
    ldv_irq_line_1_2 = line;
    ldv_irq_data_1_2 = data;
    ldv_irq_1_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_3 == 0) {
    ldv_irq_dev_1_3 = dev;
    ldv_irq_line_1_3 = line;
    ldv_irq_data_1_3 = data;
    ldv_irq_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
int ldv_irq_2(int state , int line , void *data )
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
      LDV_IN_INTERRUPT = 1;
      if ((unsigned int )irq_retval == 2U) {
        state = 2;
      } else {
      }
      if ((unsigned int )irq_retval != 2U) {
        state = 1;
      } else {
      }
      return (state);
    } else {
    }
    goto ldv_33320;
    case 1: ;
    if (state == 2) {
      cyapa_irq(line, data);
      return (state);
    } else {
    }
    goto ldv_33320;
    default:
    ldv_stop();
    }
    ldv_33320: ;
  } else {
  }
  return (state);
}
}
void ldv_main_exported_3(void) ;
void ldv_main_exported_4(void) ;
int main(void)
{
  char *ldvarg1 ;
  void *tmp ;
  struct device *ldvarg0 ;
  void *tmp___0 ;
  struct device_attribute *ldvarg2 ;
  void *tmp___1 ;
  char *ldvarg14 ;
  void *tmp___2 ;
  struct device *ldvarg13 ;
  void *tmp___3 ;
  struct device_attribute *ldvarg15 ;
  void *tmp___4 ;
  struct device_attribute *ldvarg18 ;
  void *tmp___5 ;
  char *ldvarg17 ;
  void *tmp___6 ;
  struct device *ldvarg16 ;
  void *tmp___7 ;
  struct device_attribute *ldvarg21 ;
  void *tmp___8 ;
  char *ldvarg20 ;
  void *tmp___9 ;
  struct device *ldvarg19 ;
  void *tmp___10 ;
  char *ldvarg24 ;
  void *tmp___11 ;
  size_t ldvarg23 ;
  char *ldvarg22 ;
  void *tmp___12 ;
  char *ldvarg27 ;
  void *tmp___13 ;
  struct device *ldvarg26 ;
  void *tmp___14 ;
  size_t ldvarg25 ;
  struct device_attribute *ldvarg28 ;
  void *tmp___15 ;
  char *ldvarg39 ;
  void *tmp___16 ;
  char *ldvarg41 ;
  void *tmp___17 ;
  size_t ldvarg40 ;
  struct device_attribute *ldvarg45 ;
  void *tmp___18 ;
  struct device *ldvarg43 ;
  void *tmp___19 ;
  size_t ldvarg42 ;
  char *ldvarg44 ;
  void *tmp___20 ;
  struct i2c_device_id *ldvarg47 ;
  void *tmp___21 ;
  struct i2c_client *ldvarg46 ;
  void *tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  int tmp___27 ;
  int tmp___28 ;
  int tmp___29 ;
  int tmp___30 ;
  int tmp___31 ;
  int tmp___32 ;
  int tmp___33 ;
  int tmp___34 ;
  {
  struct cyapa *cyapa_p1 = ldv_successful_malloc(sizeof(struct cyapa));
  cyapa_gen5_ops_group1 = cyapa_p1;
  struct device *device_p1 = ldv_successful_malloc(sizeof(struct device));
  cyapa_pm_ops_group1 = device_p1;
  cyapa_gen3_ops_group3 = device_p1;
  struct device_attribute *device_attribute_p1 = ldv_successful_malloc(sizeof(struct device_attribute));
  dev_attr_runtime_suspend_scanrate_ms_group0 = device_attribute_p1;
  cyapa_gen3_ops_group2 = device_attribute_p1;
  cyapa_gen3_ops_group1 = cyapa_p1;
  cyapa_gen5_ops_group3 = device_p1;
  dev_attr_suspend_scanrate_ms_group1 = device_p1;
  cyapa_gen5_ops_group2 = device_attribute_p1;
  const struct firmware *firmware_p1 = ldv_successful_malloc(sizeof(struct firmware));
  cyapa_gen5_ops_group0 = firmware_p1;
  dev_attr_suspend_scanrate_ms_group0 = device_attribute_p1;
  dev_attr_runtime_suspend_scanrate_ms_group1 = device_p1;
  cyapa_gen3_ops_group0 = firmware_p1;
  char *char_p1 = ldv_successful_malloc(sizeof(char));
  *(char_p1) = __VERIFIER_nondet_uchar();
  ldvarg0 = device_p1;
  ldvarg1 = char_p1;
  ldvarg2 = device_attribute_p1;
  char *char_p2 = ldv_successful_malloc(sizeof(char));
  *(char_p2) = __VERIFIER_nondet_uchar();
  ldvarg13 = device_p1;
  ldvarg14 = char_p2;
  ldvarg15 = device_attribute_p1;
  ldvarg18 = device_attribute_p1;
  char *char_p3 = ldv_successful_malloc(sizeof(char));
  *(char_p3) = __VERIFIER_nondet_uchar();
  ldvarg16 = device_p1;
  ldvarg17 = char_p3;
  ldvarg21 = device_attribute_p1;
  char *char_p4 = ldv_successful_malloc(sizeof(char));
  *(char_p4) = __VERIFIER_nondet_uchar();
  ldvarg19 = device_p1;
  ldvarg20 = char_p4;
  char *char_p5 = ldv_successful_malloc(sizeof(char));
  *(char_p5) = __VERIFIER_nondet_uchar();
  ldvarg23 = __VERIFIER_nondet_ulong();
  ldvarg24 = char_p5;
  char *char_p6 = ldv_successful_malloc(sizeof(char));
  *(char_p6) = __VERIFIER_nondet_uchar();
  ldvarg22 = char_p6;
  char *char_p7 = ldv_successful_malloc(sizeof(char));
  *(char_p7) = __VERIFIER_nondet_uchar();
  ldvarg25 = __VERIFIER_nondet_ulong();
  ldvarg26 = device_p1;
  ldvarg27 = char_p7;
  ldvarg28 = device_attribute_p1;
  char *char_p8 = ldv_successful_malloc(sizeof(char));
  *(char_p8) = __VERIFIER_nondet_uchar();
  ldvarg39 = char_p8;
  char *char_p9 = ldv_successful_malloc(sizeof(char));
  *(char_p9) = __VERIFIER_nondet_uchar();
  ldvarg40 = __VERIFIER_nondet_ulong();
  ldvarg41 = char_p9;
  ldvarg42 = __VERIFIER_nondet_ulong();
  ldvarg43 = device_p1;
  ldvarg45 = device_attribute_p1;
  char *char_p10 = ldv_successful_malloc(sizeof(char));
  *(char_p10) = __VERIFIER_nondet_uchar();
  ldvarg44 = char_p10;
  struct i2c_device_id *i2c_device_id_p1 = ldv_successful_malloc(sizeof(struct i2c_device_id));
  ldvarg47 = i2c_device_id_p1;
  struct i2c_client *i2c_client_p1 = ldv_successful_malloc(sizeof(struct i2c_client));
  ldvarg46 = i2c_client_p1;
  struct input_dev *input_dev_p1 = ldv_successful_malloc(sizeof(struct input_dev));
  cyapa_p1->input = input_dev_p1;
  cyapa_p1->suspend_power_mode = __VERIFIER_nondet_uchar();
  struct mutex *mutex_p1 = ldv_successful_malloc(sizeof(struct mutex));
  cyapa_p1->state_sync_lock = *(mutex_p1);
  struct cyapa_dev_ops *cyapa_dev_ops_p1 = ldv_successful_malloc(sizeof(struct cyapa_dev_ops));
  cyapa_p1->ops = (const struct cyapa_dev_ops *) cyapa_dev_ops_p1;
  input_dev_p1->users = __VERIFIER_nondet_uint();
  cyapa_dev_ops_p1->check_fw = &check_fw_dummy;
  cyapa_dev_ops_p1->bl_enter = &bl_enter_dummy;
  cyapa_dev_ops_p1->bl_activate = &bl_activate_dummy;
  cyapa_dev_ops_p1->bl_initiate = &bl_initiate_dummy;
  cyapa_dev_ops_p1->update_fw = &update_fw_dummy;
  cyapa_dev_ops_p1->bl_deactivate = &bl_deactivate_dummy;
  cyapa_dev_ops_p1->show_baseline = &show_baseline_dummy;
  cyapa_dev_ops_p1->calibrate_store = &calibrate_store_dummy;
  cyapa_dev_ops_p1->initialize = &initialize_dummy;
  cyapa_dev_ops_p1->state_parse = &state_parse_dummy;
  cyapa_dev_ops_p1->operational_check = &operational_check_dummy;
  cyapa_dev_ops_p1->irq_handler = &irq_handler_dummy;
  cyapa_dev_ops_p1->irq_cmd_handler = &irq_cmd_handler_dummy;
  cyapa_dev_ops_p1->sort_empty_output_data = &sort_empty_output_data_dummy;
  cyapa_dev_ops_p1->set_power_mode = &set_power_mode_dummy;
  device_p1->driver_data = cyapa_p1;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg23), 0, 8UL);
  ldv_memset((void *)(& ldvarg25), 0, 8UL);
  ldv_memset((void *)(& ldvarg40), 0, 8UL);
  ldv_memset((void *)(& ldvarg42), 0, 8UL);
  ldv_state_variable_6 = 0;
  ldv_state_variable_11 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_2 = 1;
  ldv_state_variable_14 = 0;
  ldv_state_variable_8 = 0;
  ldv_state_variable_1 = 1;
  ldv_state_variable_4 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_13 = 0;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 0;
  ldv_33456:
  tmp___23 = __VERIFIER_nondet_int();
  switch (tmp___23) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___24 = __VERIFIER_nondet_int();
    switch (tmp___24) {
    case 0: ;
    if (ldv_state_variable_6 == 2) {
      ldv_retval_20 = cyapa_runtime_resume(cyapa_pm_ops_group1);
      if (ldv_retval_20 == 0) {
        ldv_state_variable_6 = 1;
        ref_cnt = ref_cnt - 1;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 1: ;
    if (ldv_state_variable_6 == 15) {
      ldv_retval_19 = cyapa_resume(cyapa_pm_ops_group1);
      if (ldv_retval_19 == 0) {
        ldv_state_variable_6 = 16;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 2: ;
    if (ldv_state_variable_6 == 3) {
      ldv_retval_18 = cyapa_suspend(cyapa_pm_ops_group1);
      if (ldv_retval_18 == 0) {
        ldv_state_variable_6 = 4;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 3: ;
    if (ldv_state_variable_6 == 14) {
      ldv_retval_17 = cyapa_resume(cyapa_pm_ops_group1);
      if (ldv_retval_17 == 0) {
        ldv_state_variable_6 = 16;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 4: ;
    if (ldv_state_variable_6 == 1) {
      ldv_retval_16 = cyapa_runtime_suspend(cyapa_pm_ops_group1);
      if (ldv_retval_16 == 0) {
        ldv_state_variable_6 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 5: ;
    if (ldv_state_variable_6 == 3) {
      ldv_retval_15 = cyapa_suspend(cyapa_pm_ops_group1);
      if (ldv_retval_15 == 0) {
        ldv_state_variable_6 = 5;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 6: ;
    if (ldv_state_variable_6 == 3) {
      ldv_retval_14 = cyapa_suspend(cyapa_pm_ops_group1);
      if (ldv_retval_14 == 0) {
        ldv_state_variable_6 = 6;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 7: ;
    if (ldv_state_variable_6 == 13) {
      ldv_retval_13 = cyapa_resume(cyapa_pm_ops_group1);
      if (ldv_retval_13 == 0) {
        ldv_state_variable_6 = 16;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 8: ;
    if (ldv_state_variable_6 == 4) {
      ldv_retval_12 = ldv_suspend_late_6();
      if (ldv_retval_12 == 0) {
        ldv_state_variable_6 = 7;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 9: ;
    if (ldv_state_variable_6 == 10) {
      ldv_retval_11 = ldv_restore_early_6();
      if (ldv_retval_11 == 0) {
        ldv_state_variable_6 = 14;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 10: ;
    if (ldv_state_variable_6 == 7) {
      ldv_retval_10 = ldv_resume_early_6();
      if (ldv_retval_10 == 0) {
        ldv_state_variable_6 = 13;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 11: ;
    if (ldv_state_variable_6 == 12) {
      ldv_retval_9 = ldv_thaw_early_6();
      if (ldv_retval_9 == 0) {
        ldv_state_variable_6 = 15;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 12: ;
    if (ldv_state_variable_6 == 8) {
      ldv_retval_8 = ldv_resume_noirq_6();
      if (ldv_retval_8 == 0) {
        ldv_state_variable_6 = 13;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 13: ;
    if (ldv_state_variable_6 == 6) {
      ldv_retval_7 = ldv_freeze_noirq_6();
      if (ldv_retval_7 == 0) {
        ldv_state_variable_6 = 11;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 14: ;
    if (ldv_state_variable_6 == 1) {
      ldv_retval_6 = ldv_prepare_6();
      if (ldv_retval_6 == 0) {
        ldv_state_variable_6 = 3;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 15: ;
    if (ldv_state_variable_6 == 6) {
      ldv_retval_5 = ldv_freeze_late_6();
      if (ldv_retval_5 == 0) {
        ldv_state_variable_6 = 12;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 16: ;
    if (ldv_state_variable_6 == 11) {
      ldv_retval_4 = ldv_thaw_noirq_6();
      if (ldv_retval_4 == 0) {
        ldv_state_variable_6 = 15;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 17: ;
    if (ldv_state_variable_6 == 5) {
      ldv_retval_3 = ldv_poweroff_noirq_6();
      if (ldv_retval_3 == 0) {
        ldv_state_variable_6 = 9;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 18: ;
    if (ldv_state_variable_6 == 5) {
      ldv_retval_2 = ldv_poweroff_late_6();
      if (ldv_retval_2 == 0) {
        ldv_state_variable_6 = 10;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 19: ;
    if (ldv_state_variable_6 == 9) {
      ldv_retval_1 = ldv_restore_noirq_6();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_6 = 14;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 20: ;
    if (ldv_state_variable_6 == 4) {
      ldv_retval_0 = ldv_suspend_noirq_6();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_6 = 8;
      } else {
      }
    } else {
    }
    goto ldv_33382;
    case 21: ;
    if (ldv_state_variable_6 == 16) {
      ldv_complete_6();
      ldv_state_variable_6 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33382;
    default:
    ldv_stop();
    }
    ldv_33382: ;
  } else {
  }
  goto ldv_33405;
  case 1: ;
  if (ldv_state_variable_11 != 0) {
    tmp___25 = __VERIFIER_nondet_int();
    switch (tmp___25) {
    case 0: ;
    if (ldv_state_variable_11 == 1) {
      cyapa_show_product_id(ldvarg0, ldvarg2, ldvarg1);
      ldv_state_variable_11 = 1;
    } else {
    }
    goto ldv_33408;
    default:
    ldv_stop();
    }
    ldv_33408: ;
  } else {
  }
  goto ldv_33405;
  case 2: ;
  if (ldv_state_variable_3 != 0) {
    ldv_main_exported_3();
  } else {
  }
  goto ldv_33405;
  case 3: ;
  if (ldv_state_variable_7 != 0) {
    tmp___26 = __VERIFIER_nondet_int();
    switch (tmp___26) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      cyapa_show_mode(ldvarg13, ldvarg15, ldvarg14);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_33413;
    default:
    ldv_stop();
    }
    ldv_33413: ;
  } else {
  }
  goto ldv_33405;
  case 4: ;
  if (ldv_state_variable_9 != 0) {
    tmp___27 = __VERIFIER_nondet_int();
    switch (tmp___27) {
    case 0: ;
    if (ldv_state_variable_9 == 1) {
      cyapa_show_baseline(ldvarg16, ldvarg18, ldvarg17);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_33417;
    default:
    ldv_stop();
    }
    ldv_33417: ;
  } else {
  }
  goto ldv_33405;
  case 5: ;
  if (ldv_state_variable_12 != 0) {
    tmp___28 = __VERIFIER_nondet_int();
    switch (tmp___28) {
    case 0: ;
    if (ldv_state_variable_12 == 1) {
      cyapa_show_fm_ver(ldvarg19, ldvarg21, ldvarg20);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_33421;
    default:
    ldv_stop();
    }
    ldv_33421: ;
  } else {
  }
  goto ldv_33405;
  case 6: ;
  if (ldv_state_variable_2 != 0) {
    choose_interrupt_2();
  } else {
  }
  goto ldv_33405;
  case 7: ;
  if (ldv_state_variable_14 != 0) {
    tmp___29 = __VERIFIER_nondet_int();
    switch (tmp___29) {
    case 0: ;
    if (ldv_state_variable_14 == 1) {
      cyapa_update_suspend_scanrate(dev_attr_suspend_scanrate_ms_group1, dev_attr_suspend_scanrate_ms_group0,
                                    (char const *)ldvarg24, ldvarg23);
      ldv_state_variable_14 = 1;
    } else {
    }
    goto ldv_33426;
    case 1: ;
    if (ldv_state_variable_14 == 1) {
      cyapa_show_suspend_scanrate(dev_attr_suspend_scanrate_ms_group1, dev_attr_suspend_scanrate_ms_group0,
                                  ldvarg22);
      ldv_state_variable_14 = 1;
    } else {
    }
    goto ldv_33426;
    default:
    ldv_stop();
    }
    ldv_33426: ;
  } else {
  }
  goto ldv_33405;
  case 8: ;
  if (ldv_state_variable_8 != 0) {
    tmp___30 = __VERIFIER_nondet_int();
    switch (tmp___30) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      cyapa_calibrate_store(ldvarg26, ldvarg28, (char const *)ldvarg27, ldvarg25);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33431;
    default:
    ldv_stop();
    }
    ldv_33431: ;
  } else {
  }
  goto ldv_33405;
  case 9: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_33405;
  case 10: ;
  if (ldv_state_variable_4 != 0) {
    ldv_main_exported_4();
  } else {
  }
  goto ldv_33405;
  case 11: ;
  if (ldv_state_variable_0 != 0) {
    tmp___31 = __VERIFIER_nondet_int();
    switch (tmp___31) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      cyapa_driver_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_33438;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_21 = cyapa_driver_init();
      if (ldv_retval_21 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_state_variable_10 = 1;
        ldv_state_variable_13 = 1;
        ldv_initialize_device_attribute_13();
        ldv_state_variable_4 = 1;
        ldv_initialize_cyapa_dev_ops_4();
        ldv_state_variable_8 = 1;
        ldv_state_variable_14 = 1;
        ldv_initialize_device_attribute_14();
        ldv_state_variable_12 = 1;
        ldv_state_variable_9 = 1;
        ldv_state_variable_7 = 1;
        ldv_state_variable_3 = 1;
        ldv_initialize_cyapa_dev_ops_3();
        ldv_state_variable_11 = 1;
        ldv_state_variable_6 = 1;
        ldv_dev_pm_ops_6();
      } else {
      }
      if (ldv_retval_21 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_33438;
    default:
    ldv_stop();
    }
    ldv_33438: ;
  } else {
  }
  goto ldv_33405;
  case 12: ;
  if (ldv_state_variable_13 != 0) {
    tmp___32 = __VERIFIER_nondet_int();
    switch (tmp___32) {
    case 0: ;
    if (ldv_state_variable_13 == 1) {
      cyapa_update_rt_suspend_scanrate(dev_attr_runtime_suspend_scanrate_ms_group1,
                                       dev_attr_runtime_suspend_scanrate_ms_group0,
                                       (char const *)ldvarg41, ldvarg40);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_33443;
    case 1: ;
    if (ldv_state_variable_13 == 1) {
      cyapa_show_rt_suspend_scanrate(dev_attr_runtime_suspend_scanrate_ms_group1,
                                     dev_attr_runtime_suspend_scanrate_ms_group0,
                                     ldvarg39);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_33443;
    default:
    ldv_stop();
    }
    ldv_33443: ;
  } else {
  }
  goto ldv_33405;
  case 13: ;
  if (ldv_state_variable_10 != 0) {
    tmp___33 = __VERIFIER_nondet_int();
    switch (tmp___33) {
    case 0: ;
    if (ldv_state_variable_10 == 1) {
      cyapa_update_fw_store(ldvarg43, ldvarg45, (char const *)ldvarg44, ldvarg42);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_33448;
    default:
    ldv_stop();
    }
    ldv_33448: ;
  } else {
  }
  goto ldv_33405;
  case 14: ;
  if (ldv_state_variable_5 != 0) {
    tmp___34 = __VERIFIER_nondet_int();
    switch (tmp___34) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      ldv_retval_22 = cyapa_probe(ldvarg46, (struct i2c_device_id const *)ldvarg47);
      if (ldv_retval_22 == 0) {
        ldv_state_variable_5 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_33452;
    case 1: ;
    if (ldv_state_variable_5 == 2) {
      ldv_release_5();
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33452;
    default:
    ldv_stop();
    }
    ldv_33452: ;
  } else {
  }
  goto ldv_33405;
  default:
  ldv_stop();
  }
  ldv_33405: ;
  goto ldv_33456;
  ldv_final:
  ldv_check_final_state();
  free(cyapa_p1);
  free(char_p4);
  free(char_p3);
  free(char_p6);
  free(char_p5);
  free(char_p2);
  free(char_p1);
  free(cyapa_dev_ops_p1);
  free(device_p1);
  free(input_dev_p1);
  free(device_attribute_p1);
  free(char_p10);
  free(i2c_client_p1);
  free(mutex_p1);
  free(i2c_device_id_p1);
  free(firmware_p1);
  free(char_p8);
  free(char_p7);
  free(char_p9);
  return 0;
}
}
void ldv_mutex_lock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_6(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_8(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type ldv_func_res ;
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
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_devm_request_threaded_irq_12(struct device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                     irqreturn_t (*handler)(int , void * ) , irqreturn_t (*thread_fn)(int ,
                                                                                                       void * ) ,
                                     unsigned long ldv_func_arg5 , char const *ldv_func_arg6 ,
                                     void *ldv_func_arg7 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = devm_request_threaded_irq(ldv_func_arg1, ldv_func_arg2, handler, thread_fn,
                                  ldv_func_arg5, ldv_func_arg6, ldv_func_arg7);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2(ldv_func_arg1, (int )ldv_func_arg2, ldv_func_arg7);
  } else {
  }
  return (ldv_func_res);
}
}
int ldv_mutex_lock_interruptible_13(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_state_sync_lock_of_cyapa(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_state_sync_lock_of_cyapa(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_state_sync_lock_of_cyapa(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_state_sync_lock_of_cyapa(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_17(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_state_sync_lock_of_cyapa(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_state_sync_lock_of_cyapa(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_19(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_state_sync_lock_of_cyapa(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_state_sync_lock_of_cyapa(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_21(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_state_sync_lock_of_cyapa(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_22(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_state_sync_lock_of_cyapa(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_23(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_state_sync_lock_of_cyapa(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_24(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_state_sync_lock_of_cyapa(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_25(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_state_sync_lock_of_cyapa(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_26(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_state_sync_lock_of_cyapa(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_27(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_state_sync_lock_of_cyapa(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_28(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_state_sync_lock_of_cyapa(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_29(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_state_sync_lock_of_cyapa(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_state_sync_lock_of_cyapa(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_31(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_state_sync_lock_of_cyapa(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_state_sync_lock_of_cyapa(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_33(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_state_sync_lock_of_cyapa(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_34(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_state_sync_lock_of_cyapa(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_35(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___11 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_state_sync_lock_of_cyapa(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_state_sync_lock_of_cyapa(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_37(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___12 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_state_sync_lock_of_cyapa(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_38(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_state_sync_lock_of_cyapa(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_devm_request_threaded_irq_39(struct device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                     irqreturn_t (*handler)(int , void * ) , irqreturn_t (*thread_fn)(int ,
                                                                                                       void * ) ,
                                     unsigned long ldv_func_arg5 , char const *ldv_func_arg6 ,
                                     void *ldv_func_arg7 )
{
  ldv_func_ret_type___13 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = devm_request_threaded_irq(ldv_func_arg1, ldv_func_arg2, handler, thread_fn,
                                  ldv_func_arg5, ldv_func_arg6, ldv_func_arg7);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler, thread_fn);
  if (tmp___0 != 0 && ldv_func_res >= 0) {
    activate_suitable_irq_2(ldv_func_arg1, (int )ldv_func_arg2, ldv_func_arg7);
  } else {
  }
  return (ldv_func_res);
}
}
int ldv_mutex_lock_interruptible_40(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___14 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_state_sync_lock_of_cyapa(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_state_sync_lock_of_cyapa(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_42(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_state_sync_lock_of_cyapa(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_state_sync_lock_of_cyapa(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
extern int memcmp(void const * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
int ldv_mutex_trylock_90(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_88(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_91(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_92(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_87(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_89(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_93(struct mutex *ldv_func_arg1 ) ;
extern void usleep_range(unsigned long , unsigned long ) ;
extern s32 i2c_smbus_read_byte_data(struct i2c_client const * , u8 ) ;
extern s32 i2c_smbus_write_byte_data(struct i2c_client const * , u8 , u8 ) ;
extern s32 i2c_smbus_read_block_data(struct i2c_client const * , u8 , u8 * ) ;
extern s32 i2c_smbus_read_i2c_block_data(struct i2c_client const * , u8 , u8 ,
                                         u8 * ) ;
extern s32 i2c_smbus_write_i2c_block_data(struct i2c_client const * , u8 , u8 ,
                                          u8 const * ) ;
extern void input_event(struct input_dev * , unsigned int , unsigned int , int ) ;
__inline static void input_report_key(struct input_dev *dev , unsigned int code ,
                                      int value )
{
  {
  input_event(dev, 1U, code, value != 0);
  return;
}
}
__inline static void input_report_abs(struct input_dev *dev , unsigned int code ,
                                      int value )
{
  {
  input_event(dev, 3U, code, value);
  return;
}
}
__inline static void input_sync(struct input_dev *dev )
{
  {
  input_event(dev, 0U, 0U, 0);
  return;
}
}
__inline static void input_mt_slot(struct input_dev *dev , int slot )
{
  {
  input_event(dev, 3U, 47U, slot);
  return;
}
}
extern void input_mt_report_slot_state(struct input_dev * , unsigned int , bool ) ;
extern void input_mt_sync_frame(struct input_dev * ) ;
__inline static void put_unaligned_be16(u16 val , void *p )
{
  __u16 tmp ;
  {
  tmp = __fswab16((int )val);
  *((__be16 *)p) = tmp;
  return;
}
}
ssize_t cyapa_smbus_read_block(struct cyapa *cyapa , u8 cmd , size_t len , u8 *values ) ;
static u8 const security_key[8U] =
  { 0U, 1U, 2U, 3U,
        4U, 5U, 6U, 7U};
static u8 const bl_activate[11U] =
  { 0U, 255U, 56U, 0U,
        1U, 2U, 3U, 4U,
        5U, 6U, 7U};
static u8 const bl_deactivate[11U] =
  { 0U, 255U, 59U, 0U,
        1U, 2U, 3U, 4U,
        5U, 6U, 7U};
static u8 const bl_exit[11U] =
  { 0U, 255U, 165U, 0U,
        1U, 2U, 3U, 4U,
        5U, 6U, 7U};
static struct cyapa_cmd_len const cyapa_i2c_cmds[15U] =
  { {40U, 1U},
        {41U, 1U},
        {0U, 1U},
        {0U, 27U},
        {40U, 0U},
        {42U, 27U},
        {0U, 3U},
        {0U, 16U},
        {0U, 16U},
        {16U, 16U},
        {0U, 32U},
        {42U, 16U},
        {0U, 32U},
        {38U, 1U},
        {39U, 1U}};
static struct cyapa_cmd_len const cyapa_smbus_cmds[15U] =
  { {0U, 1U},
        {2U, 1U},
        {4U, 1U},
        {128U, 27U},
        {144U, 2U},
        {152U, 27U},
        {192U, 3U},
        {194U, 16U},
        {196U, 16U},
        {198U, 16U},
        {200U, 32U},
        {202U, 16U},
        {204U, 16U},
        {6U, 1U},
        {8U, 1U}};
ssize_t cyapa_smbus_read_block(struct cyapa *cyapa , u8 cmd , size_t len , u8 *values )
{
  ssize_t ret ;
  u8 index ;
  u8 smbus_cmd ;
  u8 *buf ;
  struct i2c_client *client ;
  s32 tmp ;
  s32 tmp___0 ;
  {
  client = cyapa->client;
  if ((int )((signed char )cmd) >= 0) {
    return (-22L);
  } else {
  }
  if (((unsigned int )cmd & 64U) != 0U) {
    smbus_cmd = (u8 )((unsigned int )cmd | 1U);
    tmp = i2c_smbus_read_block_data((struct i2c_client const *)client, (int )smbus_cmd,
                                    values);
    ret = (ssize_t )tmp;
    goto out;
  } else {
  }
  ret = 0L;
  index = 0U;
  goto ldv_27025;
  ldv_27024:
  smbus_cmd = (u8 )((int )((signed char )(((int )index & 3) << 1)) | (int )((signed char )cmd));
  smbus_cmd = (u8 )((unsigned int )smbus_cmd | 1U);
  buf = values + (unsigned long )((int )index * 32);
  tmp___0 = i2c_smbus_read_block_data((struct i2c_client const *)client, (int )smbus_cmd,
                                      buf);
  ret = (ssize_t )tmp___0;
  if (ret < 0L) {
    goto out;
  } else {
  }
  index = (u8 )((int )index + 1);
  ldv_27025: ;
  if ((size_t )((int )index * 32) < len) {
    goto ldv_27024;
  } else {
  }
  out: ;
  return (ret > 0L ? (ssize_t )len : ret);
}
}
static s32 cyapa_read_byte(struct cyapa *cyapa , u8 cmd_idx )
{
  u8 cmd ;
  s32 tmp ;
  {
  if ((int )cyapa->smbus) {
    cmd = cyapa_smbus_cmds[(int )cmd_idx].cmd;
    cmd = (u8 )((unsigned int )cmd | 1U);
  } else {
    cmd = cyapa_i2c_cmds[(int )cmd_idx].cmd;
  }
  tmp = i2c_smbus_read_byte_data((struct i2c_client const *)cyapa->client, (int )cmd);
  return (tmp);
}
}
static s32 cyapa_write_byte(struct cyapa *cyapa , u8 cmd_idx , u8 value )
{
  u8 cmd ;
  s32 tmp ;
  {
  if ((int )cyapa->smbus) {
    cmd = cyapa_smbus_cmds[(int )cmd_idx].cmd;
    cmd = cmd;
  } else {
    cmd = cyapa_i2c_cmds[(int )cmd_idx].cmd;
  }
  tmp = i2c_smbus_write_byte_data((struct i2c_client const *)cyapa->client, (int )cmd,
                                  (int )value);
  return (tmp);
}
}
ssize_t cyapa_i2c_reg_read_block(struct cyapa *cyapa , u8 reg , size_t len , u8 *values )
{
  s32 tmp ;
  {
  tmp = i2c_smbus_read_i2c_block_data((struct i2c_client const *)cyapa->client,
                                      (int )reg, (int )((u8 )len), values);
  return ((ssize_t )tmp);
}
}
static ssize_t cyapa_i2c_reg_write_block(struct cyapa *cyapa , u8 reg , size_t len ,
                                         u8 const *values )
{
  s32 tmp ;
  {
  tmp = i2c_smbus_write_i2c_block_data((struct i2c_client const *)cyapa->client,
                                       (int )reg, (int )((u8 )len), values);
  return ((ssize_t )tmp);
}
}
ssize_t cyapa_read_block(struct cyapa *cyapa , u8 cmd_idx , u8 *values )
{
  u8 cmd ;
  size_t len ;
  ssize_t tmp ;
  ssize_t tmp___0 ;
  {
  if ((int )cyapa->smbus) {
    cmd = cyapa_smbus_cmds[(int )cmd_idx].cmd;
    len = (size_t )cyapa_smbus_cmds[(int )cmd_idx].len;
    tmp = cyapa_smbus_read_block(cyapa, (int )cmd, len, values);
    return (tmp);
  } else {
  }
  cmd = cyapa_i2c_cmds[(int )cmd_idx].cmd;
  len = (size_t )cyapa_i2c_cmds[(int )cmd_idx].len;
  tmp___0 = cyapa_i2c_reg_read_block(cyapa, (int )cmd, len, values);
  return (tmp___0);
}
}
static int cyapa_gen3_state_parse(struct cyapa *cyapa , u8 *reg_data , int len )
{
  {
  cyapa->state = 0;
  if (((unsigned int )*reg_data == 0U && (unsigned int )*(reg_data + 2UL) == 0U) && ((unsigned int )*(reg_data + 1UL) == 17U || (unsigned int )*(reg_data + 1UL) == 16U)) {
    cyapa->gen = 3U;
    cyapa->state = 2;
  } else
  if ((unsigned int )*reg_data == 0U && ((int )*(reg_data + 1UL) & 16) != 0) {
    cyapa->gen = 3U;
    if ((int )((signed char )*(reg_data + 1UL)) < 0) {
      cyapa->state = 1;
    } else
    if (((int )*(reg_data + 2UL) & 32) != 0) {
      cyapa->state = 3;
    } else {
      cyapa->state = 2;
    }
  } else
  if ((int )((signed char )*reg_data) < 0 && ((int )*(reg_data + 1UL) & 8) != 0) {
    if ((((int )*(reg_data + 1UL) >> 4) & 7) <= 5) {
      cyapa->gen = 3U;
      cyapa->state = 4;
    } else {
    }
  } else
  if ((unsigned int )*reg_data == 12U && (unsigned int )*(reg_data + 1UL) == 8U) {
    cyapa->gen = 3U;
    cyapa->state = 4;
  } else
  if (((int )*(reg_data + 1UL) & 144) != 0) {
    cyapa->gen = 3U;
    cyapa->state = 1;
  } else {
  }
  if ((unsigned int )cyapa->gen == 3U && ((((unsigned int )cyapa->state == 4U || (unsigned int )cyapa->state == 2U) || (unsigned int )cyapa->state == 3U) || (unsigned int )cyapa->state == 1U)) {
    return (0);
  } else {
  }
  return (-11);
}
}
static int cyapa_gen3_bl_enter(struct cyapa *cyapa )
{
  int error ;
  int waiting_time ;
  {
  error = cyapa_poll_state(cyapa, 500U);
  if (error != 0) {
    return (error);
  } else {
  }
  if ((unsigned int )cyapa->state == 2U) {
    return (0);
  } else {
  }
  if ((unsigned int )cyapa->state != 4U) {
    return (-11);
  } else {
  }
  cyapa->operational = 0;
  cyapa->state = 0;
  error = cyapa_write_byte(cyapa, 0, 1);
  if (error != 0) {
    return (-5);
  } else {
  }
  usleep_range(25000UL, 50000UL);
  waiting_time = 2000;
  ldv_27069:
  error = cyapa_poll_state(cyapa, 500U);
  if (error != 0) {
    if (error == -110) {
      waiting_time = waiting_time + -500;
      goto ldv_27067;
    } else {
    }
    return (error);
  } else {
  }
  if ((unsigned int )cyapa->state == 2U && ((int )cyapa->status[1] & 2) == 0) {
    goto ldv_27068;
  } else {
  }
  msleep(100U);
  waiting_time = waiting_time + -100;
  ldv_27067: ;
  if (waiting_time > 0) {
    goto ldv_27069;
  } else {
  }
  ldv_27068: ;
  if ((unsigned int )cyapa->state != 2U || ((int )cyapa->status[1] & 2) != 0) {
    return (-11);
  } else {
  }
  return (0);
}
}
static int cyapa_gen3_bl_activate(struct cyapa *cyapa )
{
  int error ;
  ssize_t tmp ;
  {
  tmp = cyapa_i2c_reg_write_block(cyapa, 0, 11UL, (u8 const *)(& bl_activate));
  error = (int )tmp;
  if (error != 0) {
    return (error);
  } else {
  }
  msleep(2000U);
  error = cyapa_poll_state(cyapa, 11000U);
  if (error != 0) {
    return (error);
  } else {
  }
  if ((unsigned int )cyapa->state != 3U) {
    return (-11);
  } else {
  }
  return (0);
}
}
static int cyapa_gen3_bl_deactivate(struct cyapa *cyapa )
{
  int error ;
  ssize_t tmp ;
  {
  tmp = cyapa_i2c_reg_write_block(cyapa, 0, 11UL, (u8 const *)(& bl_deactivate));
  error = (int )tmp;
  if (error != 0) {
    return (error);
  } else {
  }
  msleep(100U);
  error = cyapa_poll_state(cyapa, 500U);
  if (error != 0) {
    return (error);
  } else {
  }
  if ((unsigned int )cyapa->state != 2U) {
    return (-11);
  } else {
  }
  return (0);
}
}
static int cyapa_gen3_bl_exit(struct cyapa *cyapa )
{
  int error ;
  ssize_t tmp ;
  {
  tmp = cyapa_i2c_reg_write_block(cyapa, 0, 11UL, (u8 const *)(& bl_exit));
  error = (int )tmp;
  if (error != 0) {
    return (error);
  } else {
  }
  usleep_range(50000UL, 100000UL);
  error = cyapa_poll_state(cyapa, 4000U);
  if (error < 0) {
    return (error);
  } else {
  }
  if ((unsigned int )cyapa->state != 4U) {
    return (-11);
  } else {
  }
  return (0);
}
}
static u16 cyapa_gen3_csum(u8 const *buf , size_t count )
{
  int i ;
  u16 csum ;
  {
  csum = 0U;
  i = 0;
  goto ldv_27089;
  ldv_27088:
  csum = (int )((u16 )*(buf + (unsigned long )i)) + (int )csum;
  i = i + 1;
  ldv_27089: ;
  if ((size_t )i < count) {
    goto ldv_27088;
  } else {
  }
  return (csum);
}
}
static int cyapa_gen3_check_fw(struct cyapa *cyapa , struct firmware const *fw )
{
  struct device *dev ;
  u16 csum ;
  u16 csum_expected ;
  {
  dev = & (cyapa->client)->dev;
  if ((unsigned long )fw->size != 30848UL) {
    dev_err((struct device const *)dev, "invalid firmware size = %zu, expected %u.\n",
            fw->size, 30848);
    return (-22);
  } else {
  }
  csum_expected = (u16 )((int )((short )((int )*(fw->data) << 8)) | (int )((short )*(fw->data + 1UL)));
  csum = cyapa_gen3_csum(fw->data + 2UL, 126UL);
  if ((int )csum != (int )csum_expected) {
    dev_err((struct device const *)dev, "%s %04x, expected: %04x\n", (char *)"invalid firmware header checksum = ",
            (int )csum, (int )csum_expected);
    return (-22);
  } else {
  }
  csum_expected = (u16 )((int )((short )((int )*(fw->data + 126UL) << 8)) | (int )((short )*(fw->data + 127UL)));
  csum = cyapa_gen3_csum(fw->data + 128UL, 30720UL);
  if ((int )csum != (int )csum_expected) {
    dev_err((struct device const *)dev, "%s %04x, expected: %04x\n", (char *)"invalid firmware header checksum = ",
            (int )csum, (int )csum_expected);
    return (-22);
  } else {
  }
  return (0);
}
}
static int cyapa_gen3_write_buffer(struct cyapa *cyapa , u8 const *buf , size_t len )
{
  int error ;
  size_t i ;
  unsigned char cmd[17U] ;
  size_t cmd_len ;
  u8 const *payload ;
  ssize_t tmp ;
  {
  i = 0UL;
  goto ldv_27109;
  ldv_27108:
  payload = buf + i;
  cmd_len = 16UL < len - i ? 16UL : len - i;
  cmd[0] = (unsigned char )i;
  memcpy((void *)(& cmd) + 1U, (void const *)payload, cmd_len);
  tmp = cyapa_i2c_reg_write_block(cyapa, 0, cmd_len + 1UL, (u8 const *)(& cmd));
  error = (int )tmp;
  if (error != 0) {
    return (error);
  } else {
  }
  i = i + 16UL;
  ldv_27109: ;
  if (i < len) {
    goto ldv_27108;
  } else {
  }
  return (0);
}
}
static int cyapa_gen3_write_fw_block(struct cyapa *cyapa , u16 block , u8 const *data )
{
  int ret ;
  struct gen3_write_block_cmd write_block_cmd ;
  u8 status[3U] ;
  int tries ;
  u8 bl_status ;
  u8 bl_error ;
  u16 tmp ;
  u16 tmp___0 ;
  ssize_t tmp___1 ;
  {
  write_block_cmd.checksum_seed = 255U;
  write_block_cmd.cmd_code = 57U;
  memcpy((void *)(& write_block_cmd.key), (void const *)(& security_key), 8UL);
  put_unaligned_be16((int )block, (void *)(& write_block_cmd.block_num));
  memcpy((void *)(& write_block_cmd.block_data), (void const *)data, 64UL);
  tmp = cyapa_gen3_csum((u8 const *)(& write_block_cmd.block_data), 64UL);
  write_block_cmd.block_checksum = (u8 )tmp;
  tmp___0 = cyapa_gen3_csum((u8 const *)(& write_block_cmd), 77UL);
  write_block_cmd.cmd_checksum = (u8 )tmp___0;
  ret = cyapa_gen3_write_buffer(cyapa, (u8 const *)(& write_block_cmd), 78UL);
  if (ret != 0) {
    return (ret);
  } else {
  }
  tries = 11;
  ldv_27122:
  usleep_range(10000UL, 20000UL);
  tmp___1 = cyapa_i2c_reg_read_block(cyapa, 0, 3UL, (u8 *)(& status));
  ret = (int )tmp___1;
  if (ret != 3) {
    return (ret < 0 ? ret : -5);
  } else {
  }
  if ((int )((signed char )status[1]) < 0) {
    tries = tries - 1;
    if (tries != 0) {
      goto ldv_27122;
    } else {
      goto ldv_27123;
    }
  } else {
  }
  ldv_27123:
  bl_status = (unsigned int )status[1] & 145U;
  bl_error = (unsigned int )status[2] & 252U;
  if ((int )((signed char )bl_status) < 0) {
    ret = -110;
  } else
  if ((unsigned int )bl_status != 16U || (unsigned int )bl_error != 32U) {
    ret = -5;
  } else {
    ret = 0;
  }
  return (ret);
}
}
static int cyapa_gen3_write_blocks(struct cyapa *cyapa , size_t start_block , size_t block_count ,
                                   u8 const *image_data )
{
  int error ;
  int i ;
  size_t block ;
  size_t addr ;
  u8 const *data ;
  {
  i = 0;
  goto ldv_27136;
  ldv_27135:
  block = (size_t )i + start_block;
  addr = (size_t )(i * 64);
  data = image_data + addr;
  error = cyapa_gen3_write_fw_block(cyapa, (int )((u16 )block), data);
  if (error != 0) {
    return (error);
  } else {
  }
  i = i + 1;
  ldv_27136: ;
  if ((size_t )i < block_count) {
    goto ldv_27135;
  } else {
  }
  return (0);
}
}
static int cyapa_gen3_do_fw_update(struct cyapa *cyapa , struct firmware const *fw )
{
  struct device *dev ;
  int error ;
  {
  dev = & (cyapa->client)->dev;
  error = cyapa_gen3_write_blocks(cyapa, 32UL, 480UL, fw->data + 128UL);
  if (error != 0) {
    dev_err((struct device const *)dev, "FW update aborted, write image: %d\n",
            error);
    return (error);
  } else {
  }
  error = cyapa_gen3_write_blocks(cyapa, 30UL, 2UL, fw->data);
  if (error != 0) {
    dev_err((struct device const *)dev, "FW update aborted, write checksum: %d\n",
            error);
    return (error);
  } else {
  }
  return (0);
}
}
static ssize_t cyapa_gen3_do_calibrate(struct device *dev , struct device_attribute *attr ,
                                       char const *buf , size_t count )
{
  struct cyapa *cyapa ;
  void *tmp ;
  int tries ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  cyapa = (struct cyapa *)tmp;
  ret = cyapa_read_byte(cyapa, 2);
  if (ret < 0) {
    dev_err((struct device const *)dev, "Error reading dev status: %d\n", ret);
    goto out;
  } else {
  }
  if ((ret & 3) != 3) {
    dev_warn((struct device const *)dev, "Trackpad device is busy, device state: 0x%02x\n",
             ret);
    ret = -11;
    goto out;
  } else {
  }
  ret = cyapa_write_byte(cyapa, 0, 128);
  if (ret < 0) {
    dev_err((struct device const *)dev, "Failed to send calibrate command: %d\n",
            ret);
    goto out;
  } else {
  }
  tries = 20;
  ldv_27155:
  usleep_range(100000UL, 200000UL);
  ret = cyapa_read_byte(cyapa, 2);
  if (ret < 0) {
    dev_err((struct device const *)dev, "Error reading dev status: %d\n", ret);
    goto out;
  } else {
  }
  if ((ret & 3) == 3) {
    goto ldv_27154;
  } else {
  }
  tries = tries - 1;
  if (tries != 0) {
    goto ldv_27155;
  } else {
  }
  ldv_27154: ;
  if (tries == 0) {
    dev_err((struct device const *)dev, "Failed to calibrate. Timeout.\n");
    ret = -110;
    goto out;
  } else {
  }
  descriptor.modname = "cyapatp";
  descriptor.function = "cyapa_gen3_do_calibrate";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1984/dscv_tempdir/dscv/ri/32_7a/drivers/input/mouse/cyapa_gen3.c";
  descriptor.format = "Calibration successful.\n";
  descriptor.lineno = 838U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "Calibration successful.\n");
  } else {
  }
  out: ;
  return ((ssize_t )(ret < 0 ? (size_t )ret : count));
}
}
static ssize_t cyapa_gen3_show_baseline(struct device *dev , struct device_attribute *attr ,
                                        char *buf )
{
  struct cyapa *cyapa ;
  void *tmp ;
  int max_baseline ;
  int min_baseline ;
  int tries ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  cyapa = (struct cyapa *)tmp;
  ret = cyapa_read_byte(cyapa, 2);
  if (ret < 0) {
    dev_err((struct device const *)dev, "Error reading dev status. err = %d\n",
            ret);
    goto out;
  } else {
  }
  if ((ret & 3) != 3) {
    dev_warn((struct device const *)dev, "Trackpad device is busy. device state = 0x%x\n",
             ret);
    ret = -11;
    goto out;
  } else {
  }
  ret = cyapa_write_byte(cyapa, 0, 64);
  if (ret < 0) {
    dev_err((struct device const *)dev, "Failed to send report baseline command. %d\n",
            ret);
    goto out;
  } else {
  }
  tries = 3;
  ldv_27170:
  usleep_range(10000UL, 20000UL);
  ret = cyapa_read_byte(cyapa, 2);
  if (ret < 0) {
    dev_err((struct device const *)dev, "Error reading dev status. err = %d\n",
            ret);
    goto out;
  } else {
  }
  if ((ret & 3) == 3) {
    goto ldv_27169;
  } else {
  }
  tries = tries - 1;
  if (tries != 0) {
    goto ldv_27170;
  } else {
  }
  ldv_27169: ;
  if (tries == 0) {
    dev_err((struct device const *)dev, "Device timed out going to Normal state.\n");
    ret = -110;
    goto out;
  } else {
  }
  ret = cyapa_read_byte(cyapa, 13);
  if (ret < 0) {
    dev_err((struct device const *)dev, "Failed to read max baseline. err = %d\n",
            ret);
    goto out;
  } else {
  }
  max_baseline = ret;
  ret = cyapa_read_byte(cyapa, 14);
  if (ret < 0) {
    dev_err((struct device const *)dev, "Failed to read min baseline. err = %d\n",
            ret);
    goto out;
  } else {
  }
  min_baseline = ret;
  descriptor.modname = "cyapatp";
  descriptor.function = "cyapa_gen3_show_baseline";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1984/dscv_tempdir/dscv/ri/32_7a/drivers/input/mouse/cyapa_gen3.c";
  descriptor.format = "Baseline report successful. Max: %d Min: %d\n";
  descriptor.lineno = 907U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "Baseline report successful. Max: %d Min: %d\n",
                      max_baseline, min_baseline);
  } else {
  }
  ret = scnprintf(buf, 4096UL, "%d %d\n", max_baseline, min_baseline);
  out: ;
  return ((ssize_t )ret);
}
}
static u16 cyapa_get_wait_time_for_pwr_cmd(u8 pwr_mode )
{
  u16 tmp ;
  {
  switch ((int )pwr_mode) {
  case 252: ;
  return (20U);
  case 4: ;
  return (20U);
  case 0: ;
  return (20U);
  default:
  tmp = cyapa_pwr_cmd_to_sleep_time((int )pwr_mode);
  return ((unsigned int )tmp + 50U);
  }
}
}
static int cyapa_gen3_set_power_mode(struct cyapa *cyapa , u8 power_mode , u16 always_unused )
{
  int ret ;
  u8 power ;
  int tries ;
  u16 sleep_time ;
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned int )cyapa->state != 4U) {
    return (0);
  } else {
  }
  tries = 5;
  goto ldv_27191;
  ldv_27190:
  ret = cyapa_read_byte(cyapa, 1);
  if (ret >= 0) {
    goto ldv_27189;
  } else {
  }
  usleep_range(10000UL, 20000UL);
  ldv_27191:
  tmp = tries;
  tries = tries - 1;
  if (tmp != 0) {
    goto ldv_27190;
  } else {
  }
  ldv_27189: ;
  if (ret < 0) {
    return (ret);
  } else {
  }
  if ((ret & 252) == (int )power_mode) {
    return (0);
  } else {
  }
  sleep_time = cyapa_get_wait_time_for_pwr_cmd((int )((u8 )ret) & 252);
  power = (u8 )ret;
  power = (unsigned int )power & 3U;
  power = (u8 )(((int )((signed char )power_mode) & -4) | (int )((signed char )power));
  tries = 5;
  goto ldv_27194;
  ldv_27193:
  ret = cyapa_write_byte(cyapa, 1, (int )power);
  if (ret == 0) {
    goto ldv_27192;
  } else {
  }
  usleep_range(10000UL, 20000UL);
  ldv_27194:
  tmp___0 = tries;
  tries = tries - 1;
  if (tmp___0 != 0) {
    goto ldv_27193;
  } else {
  }
  ldv_27192:
  msleep((unsigned int )sleep_time);
  return (ret);
}
}
static int cyapa_gen3_get_query_data(struct cyapa *cyapa )
{
  u8 query_data[27U] ;
  int ret ;
  ssize_t tmp ;
  {
  if ((unsigned int )cyapa->state != 4U) {
    return (-16);
  } else {
  }
  tmp = cyapa_read_block(cyapa, 5, (u8 *)(& query_data));
  ret = (int )tmp;
  if (ret != 27) {
    return (ret < 0 ? ret : -5);
  } else {
  }
  memcpy((void *)(& cyapa->product_id), (void const *)(& query_data), 5UL);
  cyapa->product_id[5] = 45;
  memcpy((void *)(& cyapa->product_id) + 6U, (void const *)(& query_data) + 5U,
           6UL);
  cyapa->product_id[12] = 45;
  memcpy((void *)(& cyapa->product_id) + 13U, (void const *)(& query_data) + 11U,
           2UL);
  cyapa->product_id[15] = 0;
  cyapa->fw_maj_ver = query_data[15];
  cyapa->fw_min_ver = query_data[16];
  cyapa->btn_capability = (unsigned int )query_data[19] & 56U;
  cyapa->gen = (unsigned int )query_data[20] & 15U;
  cyapa->max_abs_x = (((int )query_data[21] & 240) << 4) | (int )query_data[22];
  cyapa->max_abs_y = (((int )query_data[21] & 15) << 8) | (int )query_data[23];
  cyapa->physical_size_x = (((int )query_data[24] & 240) << 4) | (int )query_data[25];
  cyapa->physical_size_y = (((int )query_data[24] & 15) << 8) | (int )query_data[26];
  cyapa->max_z = 255;
  return (0);
}
}
static int cyapa_gen3_bl_query_data(struct cyapa *cyapa )
{
  u8 bl_data[16U] ;
  int ret ;
  ssize_t tmp ;
  {
  tmp = cyapa_i2c_reg_read_block(cyapa, 0, 16UL, (u8 *)(& bl_data));
  ret = (int )tmp;
  if (ret != 16) {
    return (ret < 0 ? ret : -5);
  } else {
  }
  if ((unsigned int )bl_data[1] == 17U) {
    cyapa->fw_maj_ver = bl_data[11];
    cyapa->fw_min_ver = bl_data[12];
  } else {
  }
  return (0);
}
}
static int cyapa_gen3_do_operational_check(struct cyapa *cyapa )
{
  struct device *dev ;
  int error ;
  size_t tmp ;
  int tmp___0 ;
  {
  dev = & (cyapa->client)->dev;
  switch ((unsigned int )cyapa->state) {
  case 3U:
  error = cyapa_gen3_bl_deactivate(cyapa);
  if (error != 0) {
    dev_err((struct device const *)dev, "failed to bl_deactivate: %d\n", error);
    return (error);
  } else {
  }
  case 2U:
  cyapa_gen3_bl_query_data(cyapa);
  error = cyapa_gen3_bl_exit(cyapa);
  if (error != 0) {
    dev_err((struct device const *)dev, "failed to bl_exit: %d\n", error);
    return (error);
  } else {
  }
  case 4U:
  error = cyapa_gen3_set_power_mode(cyapa, 252, 0);
  if (error != 0) {
    dev_err((struct device const *)dev, "%s: set full power mode failed: %d\n",
            "cyapa_gen3_do_operational_check", error);
  } else {
  }
  error = cyapa_gen3_get_query_data(cyapa);
  if (error < 0) {
    return (error);
  } else {
  }
  if ((unsigned int )cyapa->gen != 3U) {
    dev_err((struct device const *)dev, "unsupported protocol version (%d)", (int )cyapa->gen);
    return (-22);
  } else {
  }
  tmp = strlen((char const *)(& product_id));
  tmp___0 = memcmp((void const *)(& cyapa->product_id), (void const *)(& product_id),
                   tmp);
  if (tmp___0 != 0) {
    dev_err((struct device const *)dev, "unsupported product ID (%s)\n", (char *)(& cyapa->product_id));
    return (-22);
  } else {
  }
  return (0);
  default: ;
  return (-5);
  }
  return (0);
}
}
static bool cyapa_gen3_irq_cmd_handler(struct cyapa *cyapa )
{
  {
  if ((unsigned int )cyapa->gen != 3U) {
    return (1);
  } else {
  }
  if ((int )cyapa->operational) {
    return (1);
  } else {
  }
  return (0);
}
}
static int cyapa_gen3_irq_handler(struct cyapa *cyapa )
{
  struct input_dev *input ;
  struct device *dev ;
  struct cyapa_reg_data data ;
  int num_fingers ;
  int ret ;
  int i ;
  ssize_t tmp ;
  struct cyapa_touch const *touch ;
  int slot ;
  {
  input = cyapa->input;
  dev = & (cyapa->client)->dev;
  tmp = cyapa_read_block(cyapa, 3, (u8 *)(& data));
  ret = (int )tmp;
  if (ret != 27) {
    dev_err((struct device const *)dev, "failed to read report data, (%d)\n", ret);
    return (-22);
  } else {
  }
  if (((int )((signed char )data.device_status) >= 0 || ((int )data.device_status & 3) != 3) || ((int )data.finger_btn & 8) == 0) {
    dev_err((struct device const *)dev, "invalid device state bytes, %02x %02x\n",
            (int )data.device_status, (int )data.finger_btn);
    return (-22);
  } else {
  }
  num_fingers = ((int )data.finger_btn >> 4) & 15;
  i = 0;
  goto ldv_27230;
  ldv_27229:
  touch = (struct cyapa_touch const *)(& data.touches) + (unsigned long )i;
  slot = (int )touch->id + -1;
  input_mt_slot(input, slot);
  input_mt_report_slot_state(input, 0U, 1);
  input_report_abs(input, 53U, (((int )touch->xy_hi & 240) << 4) | (int )touch->x_lo);
  input_report_abs(input, 54U, (((int )touch->xy_hi & 15) << 8) | (int )touch->y_lo);
  input_report_abs(input, 58U, (int )touch->pressure);
  i = i + 1;
  ldv_27230: ;
  if (i < num_fingers) {
    goto ldv_27229;
  } else {
  }
  input_mt_sync_frame(input);
  if (((int )cyapa->btn_capability & 8) != 0) {
    input_report_key(input, 272U, (int )data.finger_btn & 1);
  } else {
  }
  if (((int )cyapa->btn_capability & 32) != 0) {
    input_report_key(input, 274U, ((int )data.finger_btn & 4) != 0);
  } else {
  }
  if (((int )cyapa->btn_capability & 16) != 0) {
    input_report_key(input, 273U, ((int )data.finger_btn & 2) != 0);
  } else {
  }
  input_sync(input);
  return (0);
}
}
static int cyapa_gen3_initialize(struct cyapa *cyapa )
{
  {
  return (0);
}
}
static int cyapa_gen3_bl_initiate(struct cyapa *cyapa , struct firmware const *fw )
{
  {
  return (0);
}
}
static int cyapa_gen3_empty_output_data(struct cyapa *cyapa , u8 *buf , int *len ,
                                        bool (*func)(struct cyapa * , u8 * , int ) )
{
  {
  return (0);
}
}
struct cyapa_dev_ops const cyapa_gen3_ops =
     {& cyapa_gen3_check_fw, & cyapa_gen3_bl_enter, & cyapa_gen3_bl_activate, & cyapa_gen3_bl_initiate,
    & cyapa_gen3_do_fw_update, & cyapa_gen3_bl_deactivate, & cyapa_gen3_show_baseline,
    & cyapa_gen3_do_calibrate, & cyapa_gen3_initialize, & cyapa_gen3_state_parse,
    & cyapa_gen3_do_operational_check, & cyapa_gen3_irq_handler, & cyapa_gen3_irq_cmd_handler,
    & cyapa_gen3_empty_output_data, & cyapa_gen3_set_power_mode};
void ldv_initialize_cyapa_dev_ops_4(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  tmp = ldv_init_zalloc(32UL);
  cyapa_gen3_ops_group0 = (struct firmware const *)tmp;
  tmp___0 = ldv_init_zalloc(1104UL);
  cyapa_gen3_ops_group1 = (struct cyapa *)tmp___0;
  tmp___1 = ldv_init_zalloc(48UL);
  cyapa_gen3_ops_group2 = (struct device_attribute *)tmp___1;
  tmp___2 = ldv_init_zalloc(1416UL);
  cyapa_gen3_ops_group3 = (struct device *)tmp___2;
  return;
}
}
void ldv_main_exported_4(void)
{
  bool (*ldvarg34)(struct cyapa * , u8 * , int ) ;
  u8 *ldvarg36 ;
  void *tmp ;
  char *ldvarg29 ;
  void *tmp___0 ;
  u16 ldvarg37 ;
  int ldvarg30 ;
  char *ldvarg33 ;
  void *tmp___1 ;
  u8 ldvarg38 ;
  u8 *ldvarg31 ;
  void *tmp___2 ;
  size_t ldvarg32 ;
  int *ldvarg35 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg36 = (u8 *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg29 = (char *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg33 = (char *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg31 = (u8 *)tmp___2;
  tmp___3 = ldv_init_zalloc(4UL);
  ldvarg35 = (int *)tmp___3;
  ldv_memset((void *)(& ldvarg34), 0, 8UL);
  ldv_memset((void *)(& ldvarg37), 0, 2UL);
  ldv_memset((void *)(& ldvarg30), 0, 4UL);
  ldv_memset((void *)(& ldvarg38), 0, 1UL);
  ldv_memset((void *)(& ldvarg32), 0, 8UL);
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_4 == 1) {
    cyapa_gen3_irq_cmd_handler(cyapa_gen3_ops_group1);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_27269;
  case 1: ;
  if (ldv_state_variable_4 == 1) {
    cyapa_gen3_check_fw(cyapa_gen3_ops_group1, cyapa_gen3_ops_group0);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_27269;
  case 2: ;
  if (ldv_state_variable_4 == 1) {
    cyapa_gen3_set_power_mode(cyapa_gen3_ops_group1, (int )ldvarg38, (int )ldvarg37);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_27269;
  case 3: ;
  if (ldv_state_variable_4 == 1) {
    cyapa_gen3_do_fw_update(cyapa_gen3_ops_group1, cyapa_gen3_ops_group0);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_27269;
  case 4: ;
  if (ldv_state_variable_4 == 1) {
    cyapa_gen3_irq_handler(cyapa_gen3_ops_group1);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_27269;
  case 5: ;
  if (ldv_state_variable_4 == 1) {
    cyapa_gen3_empty_output_data(cyapa_gen3_ops_group1, ldvarg36, ldvarg35, ldvarg34);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_27269;
  case 6: ;
  if (ldv_state_variable_4 == 1) {
    cyapa_gen3_initialize(cyapa_gen3_ops_group1);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_27269;
  case 7: ;
  if (ldv_state_variable_4 == 1) {
    cyapa_gen3_do_calibrate(cyapa_gen3_ops_group3, cyapa_gen3_ops_group2, (char const *)ldvarg33,
                            ldvarg32);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_27269;
  case 8: ;
  if (ldv_state_variable_4 == 1) {
    cyapa_gen3_bl_enter(cyapa_gen3_ops_group1);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_27269;
  case 9: ;
  if (ldv_state_variable_4 == 1) {
    cyapa_gen3_bl_initiate(cyapa_gen3_ops_group1, cyapa_gen3_ops_group0);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_27269;
  case 10: ;
  if (ldv_state_variable_4 == 1) {
    cyapa_gen3_do_operational_check(cyapa_gen3_ops_group1);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_27269;
  case 11: ;
  if (ldv_state_variable_4 == 1) {
    cyapa_gen3_bl_deactivate(cyapa_gen3_ops_group1);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_27269;
  case 12: ;
  if (ldv_state_variable_4 == 1) {
    cyapa_gen3_bl_activate(cyapa_gen3_ops_group1);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_27269;
  case 13: ;
  if (ldv_state_variable_4 == 1) {
    cyapa_gen3_state_parse(cyapa_gen3_ops_group1, ldvarg31, ldvarg30);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_27269;
  case 14: ;
  if (ldv_state_variable_4 == 1) {
    cyapa_gen3_show_baseline(cyapa_gen3_ops_group3, cyapa_gen3_ops_group2, ldvarg29);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_27269;
  default:
  ldv_stop();
  }
  ldv_27269: ;
  return;
}
}
void ldv_mutex_lock_87(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_88(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_89(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_90(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type ldv_func_res ;
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
void ldv_mutex_unlock_91(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_92(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_93(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
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
__inline static __u32 __le32_to_cpup(__le32 const *p )
{
  {
  return ((__u32 )*p);
}
}
__inline static __u16 __le16_to_cpup(__le16 const *p )
{
  {
  return ((__u16 )*p);
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
int ldv_mutex_trylock_108(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_106(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_109(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_110(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_112(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_105(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_107(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_111(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_cmd_lock_of_cyapa_gen5_cmd_states(struct mutex *lock ) ;
void ldv_mutex_unlock_cmd_lock_of_cyapa_gen5_cmd_states(struct mutex *lock ) ;
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
extern unsigned long wait_for_completion_timeout(struct completion * , unsigned long ) ;
extern void complete(struct completion * ) ;
extern unsigned long __msecs_to_jiffies(unsigned int const ) ;
__inline static unsigned long msecs_to_jiffies(unsigned int const m )
{
  unsigned long tmp___0 ;
  {
  tmp___0 = __msecs_to_jiffies(m);
  return (tmp___0);
}
}
extern int i2c_master_recv(struct i2c_client const * , char * , int ) ;
__inline static u16 get_unaligned_le16(void const *p )
{
  __u16 tmp ;
  {
  tmp = __le16_to_cpup((__le16 const *)p);
  return (tmp);
}
}
__inline static u32 get_unaligned_le32(void const *p )
{
  __u32 tmp ;
  {
  tmp = __le32_to_cpup((__le32 const *)p);
  return (tmp);
}
}
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
extern u16 crc_itu_t(u16 , u8 const * , size_t ) ;
static u8 cyapa_gen5_bl_cmd_key[8U] =
  { 165U, 1U, 2U, 3U,
        255U, 254U, 253U, 90U};
static int cyapa_gen5_initialize(struct cyapa *cyapa )
{
  struct cyapa_gen5_cmd_states *gen5_pip ;
  struct lock_class_key __key ;
  {
  gen5_pip = & cyapa->cmd_states.gen5;
  init_completion(& gen5_pip->cmd_ready);
  atomic_set(& gen5_pip->cmd_issued, 0);
  __mutex_init(& gen5_pip->cmd_lock, "&gen5_pip->cmd_lock", & __key);
  gen5_pip->resp_sort_func = (bool (*)(struct cyapa * , u8 * , int ))0;
  gen5_pip->in_progress_cmd = 255U;
  gen5_pip->resp_data = (u8 *)0U;
  gen5_pip->resp_len = (int *)0;
  cyapa->dev_pwr_mode = 255U;
  cyapa->dev_sleep_time = 65535U;
  return (0);
}
}
static ssize_t cyapa_i2c_pip_read(struct cyapa *cyapa , u8 *buf , size_t size )
{
  int ret ;
  {
  if (size == 0UL) {
    return (0L);
  } else {
  }
  if ((unsigned long )buf == (unsigned long )((u8 *)0U) || size > 256UL) {
    return (-22L);
  } else {
  }
  ret = i2c_master_recv((struct i2c_client const *)cyapa->client, (char *)buf, (int )size);
  if ((size_t )ret != size) {
    return (ret < 0 ? (ssize_t )ret : -5L);
  } else {
  }
  return ((ssize_t )size);
}
}
static ssize_t cyapa_i2c_pip_write(struct cyapa *cyapa , u8 *buf , size_t size )
{
  int ret ;
  {
  if ((unsigned long )buf == (unsigned long )((u8 *)0U) || size == 0UL) {
    return (-22L);
  } else {
  }
  ret = i2c_master_send((struct i2c_client const *)cyapa->client, (char const *)buf,
                        (int )size);
  if ((size_t )ret != size) {
    return (ret < 0 ? (ssize_t )ret : -5L);
  } else {
  }
  return (0L);
}
}
static int cyapa_empty_pip_output_data(struct cyapa *cyapa , u8 *buf , int *len ,
                                       bool (*func)(struct cyapa * , u8 * , int ) )
{
  struct cyapa_gen5_cmd_states *gen5_pip ;
  int length ;
  int report_count ;
  int empty_count ;
  int buf_len ;
  int error ;
  ssize_t tmp ;
  u16 tmp___0 ;
  int _min1 ;
  int _min2 ;
  bool tmp___1 ;
  ssize_t tmp___2 ;
  u16 tmp___3 ;
  int _min1___0 ;
  int _min2___0 ;
  bool tmp___4 ;
  {
  gen5_pip = & cyapa->cmd_states.gen5;
  buf_len = 0;
  if ((unsigned long )len != (unsigned long )((int *)0)) {
    buf_len = 256 < *len ? 256 : *len;
    *len = 0;
  } else {
  }
  report_count = 8;
  empty_count = 0;
  ldv_26223: ;
  if (empty_count > 5) {
    return (0);
  } else {
  }
  tmp = cyapa_i2c_pip_read(cyapa, (u8 *)(& gen5_pip->empty_buf), 2UL);
  error = (int )tmp;
  if (error < 0) {
    return (error);
  } else {
  }
  tmp___0 = get_unaligned_le16((void const *)(& gen5_pip->empty_buf));
  length = (int )tmp___0;
  if (length == 2) {
    empty_count = empty_count + 1;
    goto ldv_26216;
  } else
  if (length > 256) {
    return (-22);
  } else
  if (length == 0) {
    length = 2;
    if (((unsigned long )buf != (unsigned long )((u8 *)0U) && buf_len != 0) && (unsigned long )func != (unsigned long )((bool (*)(struct cyapa * ,
                                                                                                                                  u8 * ,
                                                                                                                                  int ))0)) {
      tmp___1 = (*func)(cyapa, (u8 *)(& gen5_pip->empty_buf), length);
      if ((int )tmp___1) {
        _min1 = buf_len;
        _min2 = length;
        length = _min1 < _min2 ? _min1 : _min2;
        memcpy((void *)buf, (void const *)(& gen5_pip->empty_buf), (size_t )length);
        *len = length;
        return (0);
      } else {
      }
    } else {
    }
    goto ldv_26216;
  } else {
  }
  tmp___2 = cyapa_i2c_pip_read(cyapa, (u8 *)(& gen5_pip->empty_buf), (size_t )length);
  error = (int )tmp___2;
  if (error < 0) {
    return (error);
  } else {
  }
  report_count = report_count - 1;
  empty_count = 0;
  tmp___3 = get_unaligned_le16((void const *)(& gen5_pip->empty_buf));
  length = (int )tmp___3;
  if (length <= 2) {
    empty_count = empty_count + 1;
  } else
  if (((unsigned long )buf != (unsigned long )((u8 *)0U) && buf_len != 0) && (unsigned long )func != (unsigned long )((bool (*)(struct cyapa * ,
                                                                                                                                u8 * ,
                                                                                                                                int ))0)) {
    tmp___4 = (*func)(cyapa, (u8 *)(& gen5_pip->empty_buf), length);
    if ((int )tmp___4) {
      _min1___0 = buf_len;
      _min2___0 = length;
      length = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
      memcpy((void *)buf, (void const *)(& gen5_pip->empty_buf), (size_t )length);
      *len = length;
      return (0);
    } else {
    }
  } else {
  }
  error = -22;
  ldv_26216: ;
  if (report_count != 0) {
    goto ldv_26223;
  } else {
  }
  return (error);
}
}
static int cyapa_do_i2c_pip_cmd_irq_sync(struct cyapa *cyapa , u8 *cmd , size_t cmd_len ,
                                         unsigned long timeout )
{
  struct cyapa_gen5_cmd_states *gen5_pip ;
  int error ;
  ssize_t tmp ;
  unsigned long tmp___0 ;
  {
  gen5_pip = & cyapa->cmd_states.gen5;
  init_completion(& gen5_pip->cmd_ready);
  atomic_inc(& gen5_pip->cmd_issued);
  tmp = cyapa_i2c_pip_write(cyapa, cmd, cmd_len);
  error = (int )tmp;
  if (error != 0) {
    atomic_dec(& gen5_pip->cmd_issued);
    return (error < 0 ? error : -5);
  } else {
  }
  tmp___0 = msecs_to_jiffies((unsigned int const )timeout);
  timeout = wait_for_completion_timeout(& gen5_pip->cmd_ready, tmp___0);
  if (timeout == 0UL) {
    atomic_dec(& gen5_pip->cmd_issued);
    return (-110);
  } else {
  }
  return (0);
}
}
static int cyapa_do_i2c_pip_cmd_polling(struct cyapa *cyapa , u8 *cmd , size_t cmd_len ,
                                        u8 *resp_data , int *resp_len , unsigned long timeout ,
                                        bool (*func)(struct cyapa * , u8 * , int ) )
{
  struct cyapa_gen5_cmd_states *gen5_pip ;
  int tries ;
  int length ;
  int error ;
  ssize_t tmp ;
  {
  gen5_pip = & cyapa->cmd_states.gen5;
  atomic_inc(& gen5_pip->cmd_issued);
  tmp = cyapa_i2c_pip_write(cyapa, cmd, cmd_len);
  error = (int )tmp;
  if (error != 0) {
    atomic_dec(& gen5_pip->cmd_issued);
    return (error < 0 ? error : -5);
  } else {
  }
  length = (unsigned long )resp_len != (unsigned long )((int *)0) ? *resp_len : 0;
  if ((((unsigned long )resp_data != (unsigned long )((u8 *)0U) && (unsigned long )resp_len != (unsigned long )((int *)0)) && length != 0) && (unsigned long )func != (unsigned long )((bool (*)(struct cyapa * ,
                                                                                                                                                                                                 u8 * ,
                                                                                                                                                                                                 int ))0)) {
    tries = (int )(timeout / 5UL);
    ldv_26248:
    usleep_range(3000UL, 5000UL);
    *resp_len = length;
    error = cyapa_empty_pip_output_data(cyapa, resp_data, resp_len, func);
    if (error != 0 || *resp_len == 0) {
      goto ldv_26246;
    } else {
      goto ldv_26247;
    }
    ldv_26246:
    tries = tries - 1;
    if (tries > 0) {
      goto ldv_26248;
    } else {
    }
    ldv_26247: ;
    if ((error != 0 || *resp_len == 0) || tries <= 0) {
      error = error != 0 ? error : -110;
    } else {
    }
  } else {
  }
  atomic_dec(& gen5_pip->cmd_issued);
  return (error);
}
}
static int cyapa_i2c_pip_cmd_irq_sync(struct cyapa *cyapa , u8 *cmd , int cmd_len ,
                                      u8 *resp_data , int *resp_len , unsigned long timeout ,
                                      bool (*func)(struct cyapa * , u8 * , int ) ,
                                      bool irq_mode )
{
  struct cyapa_gen5_cmd_states *gen5_pip ;
  int error ;
  {
  gen5_pip = & cyapa->cmd_states.gen5;
  if ((unsigned long )cmd == (unsigned long )((u8 *)0U) || cmd_len == 0) {
    return (-22);
  } else {
  }
  error = ldv_mutex_lock_interruptible_112(& gen5_pip->cmd_lock);
  if (error != 0) {
    return (error);
  } else {
  }
  gen5_pip->resp_sort_func = func;
  gen5_pip->resp_data = resp_data;
  gen5_pip->resp_len = resp_len;
  if (cmd_len > 6 && (unsigned int )*(cmd + 4UL) == 47U) {
    gen5_pip->in_progress_cmd = (unsigned int )*(cmd + 6UL) & 127U;
  } else
  if (cmd_len > 12 && (unsigned int )*(cmd + 4UL) == 64U) {
    gen5_pip->in_progress_cmd = *(cmd + 7UL);
  } else {
  }
  if ((int )irq_mode) {
    gen5_pip->is_irq_mode = 1;
    error = cyapa_do_i2c_pip_cmd_irq_sync(cyapa, cmd, (size_t )cmd_len, timeout);
    if ((((error == -110 && (unsigned long )resp_data != (unsigned long )((u8 *)0U)) && (unsigned long )resp_len != (unsigned long )((int *)0)) && *resp_len != 0) && (unsigned long )func != (unsigned long )((bool (*)(struct cyapa * ,
                                                                                                                                                                                                                         u8 * ,
                                                                                                                                                                                                                         int ))0)) {
      error = cyapa_empty_pip_output_data(cyapa, resp_data, resp_len, func);
      if (error != 0 || *resp_len == 0) {
        error = error != 0 ? error : -110;
      } else {
      }
    } else {
    }
  } else {
    gen5_pip->is_irq_mode = 0;
    error = cyapa_do_i2c_pip_cmd_polling(cyapa, cmd, (size_t )cmd_len, resp_data,
                                         resp_len, timeout, func);
  }
  gen5_pip->resp_sort_func = (bool (*)(struct cyapa * , u8 * , int ))0;
  gen5_pip->resp_data = (u8 *)0U;
  gen5_pip->resp_len = (int *)0;
  gen5_pip->in_progress_cmd = 255U;
  ldv_mutex_unlock_113(& gen5_pip->cmd_lock);
  return (error);
}
}
static bool cyapa_gen5_sort_tsg_pip_bl_resp_data(struct cyapa *cyapa , u8 *data ,
                                                 int len )
{
  {
  if ((unsigned long )data == (unsigned long )((u8 *)0U) || len <= 10) {
    return (0);
  } else {
  }
  if (((unsigned int )*(data + 2UL) == 48U && (unsigned int )*(data + 3UL) == 0U) && (unsigned int )*(data + 4UL) == 1U) {
    return (1);
  } else {
  }
  return (0);
}
}
static bool cyapa_gen5_sort_tsg_pip_app_resp_data(struct cyapa *cyapa , u8 *data ,
                                                  int len )
{
  struct cyapa_gen5_cmd_states *gen5_pip ;
  int resp_len ;
  u16 tmp ;
  {
  gen5_pip = & cyapa->cmd_states.gen5;
  if ((unsigned long )data == (unsigned long )((u8 *)0U) || len <= 4) {
    return (0);
  } else {
  }
  if ((unsigned int )*(data + 2UL) == 31U && (unsigned int )*(data + 3UL) == 0U) {
    tmp = get_unaligned_le16((void const *)data);
    resp_len = (int )tmp;
    if ((((int )*(data + 4UL) & 127) == 0 && resp_len == 6) && (int )*(data + 5UL) == (int )gen5_pip->in_progress_cmd) {
      return (0);
    } else
    if (((int )*(data + 4UL) & 127) == (int )gen5_pip->in_progress_cmd) {
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
static bool cyapa_gen5_sort_application_launch_data(struct cyapa *cyapa , u8 *buf ,
                                                    int len )
{
  {
  if ((unsigned long )buf == (unsigned long )((u8 *)0U) || len <= 1) {
    return (0);
  } else {
  }
  if ((unsigned int )*buf == 0U && (unsigned int )*(buf + 1UL) == 0U) {
    return (1);
  } else {
  }
  return (0);
}
}
static bool cyapa_gen5_sort_hid_descriptor_data(struct cyapa *cyapa , u8 *buf , int len )
{
  int resp_len ;
  int max_output_len ;
  u16 tmp ;
  u16 tmp___0 ;
  {
  if (len != 32) {
    return (0);
  } else {
  }
  tmp = get_unaligned_le16((void const *)buf);
  resp_len = (int )tmp;
  tmp___0 = get_unaligned_le16((void const *)buf + 16U);
  max_output_len = (int )tmp___0;
  if (resp_len == 32) {
    if ((unsigned int )*(buf + 2UL) == 255U && max_output_len == 256) {
      return (1);
    } else
    if ((unsigned int )*(buf + 2UL) == 247U && max_output_len == 254) {
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
static bool cyapa_gen5_sort_deep_sleep_data(struct cyapa *cyapa , u8 *buf , int len )
{
  {
  if ((len == 5 && (unsigned int )*(buf + 2UL) == 240U) && ((int )*(buf + 4UL) & 15) == 8) {
    return (1);
  } else {
  }
  return (0);
}
}
static int gen5_idle_state_parse(struct cyapa *cyapa )
{
  u8 resp_data[32U] ;
  int max_output_len ;
  int length ;
  u8 cmd[2U] ;
  int ret ;
  int error ;
  ssize_t tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  {
  cyapa_empty_pip_output_data(cyapa, (u8 *)0U, (int *)0, (bool (*)(struct cyapa * ,
                                                                   u8 * , int ))0);
  memset((void *)(& resp_data), 0, 32UL);
  tmp = cyapa_i2c_pip_read(cyapa, (u8 *)(& resp_data), 3UL);
  ret = (int )tmp;
  if (ret != 3) {
    return (ret < 0 ? ret : -5);
  } else {
  }
  tmp___0 = get_unaligned_le16((void const *)(& resp_data));
  length = (int )tmp___0;
  if (length == 2) {
    cyapa->gen = 5U;
    cyapa_empty_pip_output_data(cyapa, (u8 *)0U, (int *)0, (bool (*)(struct cyapa * ,
                                                                     u8 * , int ))0);
    cmd[0] = 1U;
    cmd[1] = 0U;
    length = 32;
    error = cyapa_i2c_pip_cmd_irq_sync(cyapa, (u8 *)(& cmd), 2, (u8 *)(& resp_data),
                                       & length, 300UL, & cyapa_gen5_sort_hid_descriptor_data,
                                       0);
    if (error != 0) {
      return (error);
    } else {
    }
    tmp___1 = get_unaligned_le16((void const *)(& resp_data));
    length = (int )tmp___1;
    tmp___2 = get_unaligned_le16((void const *)(& resp_data) + 16U);
    max_output_len = (int )tmp___2;
    if (((length == 32 || length == 2) && (unsigned int )resp_data[2] == 255U) && max_output_len == 256) {
      cyapa->state = 5;
    } else
    if (((length == 32 || length == 2) && (unsigned int )resp_data[2] == 247U) && max_output_len == 254) {
      cyapa->state = 6;
    } else {
      cyapa->state = 0;
    }
  } else {
  }
  return (0);
}
}
static int gen5_hid_description_header_parse(struct cyapa *cyapa , u8 *reg_data )
{
  int length ;
  u8 resp_data[32U] ;
  int max_output_len ;
  int ret ;
  ssize_t tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  {
  tmp = cyapa_i2c_pip_read(cyapa, (u8 *)(& resp_data), 32UL);
  ret = (int )tmp;
  if (ret != 32) {
    return (ret < 0 ? ret : -5);
  } else {
  }
  tmp___0 = get_unaligned_le16((void const *)(& resp_data));
  length = (int )tmp___0;
  tmp___1 = get_unaligned_le16((void const *)(& resp_data) + 16U);
  max_output_len = (int )tmp___1;
  if (length == 2) {
    if ((unsigned int )*(reg_data + 2UL) == 255U) {
      cyapa->gen = 5U;
      cyapa->state = 5;
    } else {
      cyapa->gen = 5U;
      cyapa->state = 6;
    }
  } else
  if ((length == 32 && (unsigned int )resp_data[2] == 255U) && max_output_len == 256) {
    cyapa->gen = 5U;
    cyapa->state = 5;
  } else
  if ((length == 32 && (unsigned int )resp_data[2] == 247U) && max_output_len == 254) {
    cyapa->gen = 5U;
    cyapa->state = 6;
  } else {
    cyapa->state = 0;
  }
  return (0);
}
}
static int gen5_report_data_header_parse(struct cyapa *cyapa , u8 *reg_data )
{
  int length ;
  u16 tmp ;
  {
  tmp = get_unaligned_le16((void const *)reg_data);
  length = (int )tmp;
  switch ((int )*(reg_data + 2UL)) {
  case 1: ;
  if (length <= 6 || length > 127) {
    return (-22);
  } else {
  }
  goto ldv_26313;
  case 3: ;
  case 5: ;
  case 6: ;
  if (length <= 5 || length > 14) {
    return (-22);
  } else {
  }
  goto ldv_26313;
  case 4: ;
  if (length != 4) {
    return (-22);
  } else {
  }
  goto ldv_26313;
  default: ;
  return (-22);
  }
  ldv_26313:
  cyapa->gen = 5U;
  cyapa->state = 6;
  return (0);
}
}
static int gen5_cmd_resp_header_parse(struct cyapa *cyapa , u8 *reg_data )
{
  struct cyapa_gen5_cmd_states *gen5_pip ;
  int length ;
  int ret ;
  u16 tmp ;
  ssize_t tmp___0 ;
  {
  gen5_pip = & cyapa->cmd_states.gen5;
  tmp = get_unaligned_le16((void const *)reg_data);
  length = (int )tmp;
  tmp___0 = cyapa_i2c_pip_read(cyapa, (u8 *)(& gen5_pip->empty_buf), (size_t )length);
  ret = (int )tmp___0;
  if (ret != length) {
    return (ret < 0 ? ret : -5);
  } else {
  }
  if (length == 2) {
    if ((unsigned int )*(reg_data + 2UL) == 48U) {
      cyapa->gen = 5U;
      cyapa->state = 5;
    } else {
      cyapa->gen = 5U;
      cyapa->state = 6;
    }
  } else
  if ((((unsigned int )gen5_pip->empty_buf[2] == 48U && (unsigned int )gen5_pip->empty_buf[3] == 0U) && (unsigned int )gen5_pip->empty_buf[4] == 1U) && (unsigned int )gen5_pip->empty_buf[length + -1] == 23U) {
    cyapa->gen = 5U;
    cyapa->state = 5;
  } else
  if ((unsigned int )gen5_pip->empty_buf[2] == 31U && (unsigned int )gen5_pip->empty_buf[3] == 0U) {
    cyapa->gen = 5U;
    cyapa->state = 6;
  } else {
    cyapa->state = 0;
  }
  return (0);
}
}
static int cyapa_gen5_state_parse(struct cyapa *cyapa , u8 *reg_data , int len )
{
  int length ;
  u16 tmp ;
  {
  if ((unsigned long )reg_data == (unsigned long )((u8 *)0U) || len <= 2) {
    return (-22);
  } else {
  }
  cyapa->state = 0;
  tmp = get_unaligned_le16((void const *)reg_data);
  length = (int )tmp;
  if (length == 0 || length == 2) {
    gen5_idle_state_parse(cyapa);
  } else
  if (length == 32 && ((unsigned int )*(reg_data + 2UL) == 255U || (unsigned int )*(reg_data + 2UL) == 247U)) {
    gen5_hid_description_header_parse(cyapa, reg_data);
  } else
  if ((length == 238 || length == 250) && (unsigned int )*(reg_data + 2UL) == 246U) {
    cyapa->gen = 5U;
    cyapa->state = 6;
  } else
  if (length == 29 && (unsigned int )*(reg_data + 2UL) == 254U) {
    cyapa->gen = 5U;
    cyapa->state = 5;
  } else
  if (((((unsigned int )*(reg_data + 2UL) == 1U || (unsigned int )*(reg_data + 2UL) == 3U) || (unsigned int )*(reg_data + 2UL) == 5U) || (unsigned int )*(reg_data + 2UL) == 6U) || (unsigned int )*(reg_data + 2UL) == 4U) {
    gen5_report_data_header_parse(cyapa, reg_data);
  } else
  if ((unsigned int )*(reg_data + 2UL) == 48U || (unsigned int )*(reg_data + 2UL) == 31U) {
    gen5_cmd_resp_header_parse(cyapa, reg_data);
  } else {
  }
  if ((unsigned int )cyapa->gen == 5U) {
    cyapa_empty_pip_output_data(cyapa, (u8 *)0U, (int *)0, (bool (*)(struct cyapa * ,
                                                                     u8 * , int ))0);
    if ((unsigned int )cyapa->state == 6U || (unsigned int )cyapa->state == 5U) {
      return (0);
    } else {
    }
  } else {
  }
  return (-11);
}
}
static int cyapa_gen5_bl_initiate(struct cyapa *cyapa , struct firmware const *fw )
{
  struct cyapa_tsg_bin_image *image ;
  struct gen5_bl_cmd_head *bl_cmd_head ;
  struct gen5_bl_packet_start *bl_packet_start ;
  struct gen5_bl_initiate_cmd_data *cmd_data ;
  struct gen5_bl_packet_end *bl_packet_end ;
  u8 cmd[256U] ;
  int cmd_len ;
  u16 cmd_data_len ;
  u16 cmd_crc ;
  u16 meta_data_crc ;
  u8 resp_data[11U] ;
  int resp_len ;
  int records_num ;
  u8 *data ;
  int error ;
  {
  cmd_crc = 0U;
  meta_data_crc = 0U;
  cyapa_empty_pip_output_data(cyapa, (u8 *)0U, (int *)0, (bool (*)(struct cyapa * ,
                                                                   u8 * , int ))0);
  memset((void *)(& cmd), 0, 256UL);
  bl_cmd_head = (struct gen5_bl_cmd_head *)(& cmd);
  cmd_data_len = 136U;
  cmd_len = (int )((unsigned int )cmd_data_len + 13U);
  put_unaligned_le16(4, (void *)(& bl_cmd_head->addr));
  put_unaligned_le16((int )((unsigned int )((u16 )cmd_len) + 65534U), (void *)(& bl_cmd_head->length));
  bl_cmd_head->report_id = 64U;
  bl_packet_start = & bl_cmd_head->packet_start;
  bl_packet_start->sop = 1U;
  bl_packet_start->cmd_code = 72U;
  put_unaligned_le16((int )cmd_data_len, (void *)(& bl_packet_start->data_length));
  cmd_data = (struct gen5_bl_initiate_cmd_data *)(& bl_cmd_head->data);
  memcpy((void *)(& cmd_data->key), (void const *)(& cyapa_gen5_bl_cmd_key), 8UL);
  image = (struct cyapa_tsg_bin_image *)fw->data;
  records_num = (int )(((unsigned long )fw->size - 13UL) / 133UL);
  data = (u8 *)(& image->records[records_num + -1].record_data);
  memcpy((void *)(& cmd_data->metadata_raw_parameter), (void const *)data, 60UL);
  meta_data_crc = crc_itu_t(65535, (u8 const *)(& cmd_data->metadata_raw_parameter),
                            60UL);
  put_unaligned_le16((int )meta_data_crc, (void *)(& cmd_data->metadata_crc));
  bl_packet_end = (struct gen5_bl_packet_end *)(& bl_cmd_head->data) + (unsigned long )cmd_data_len;
  cmd_crc = crc_itu_t(65535, (u8 const *)bl_packet_start, (unsigned long )cmd_data_len + 4UL);
  put_unaligned_le16((int )cmd_crc, (void *)(& bl_packet_end->crc));
  bl_packet_end->eop = 23U;
  resp_len = 11;
  error = cyapa_i2c_pip_cmd_irq_sync(cyapa, (u8 *)(& cmd), cmd_len, (u8 *)(& resp_data),
                                     & resp_len, 12000UL, & cyapa_gen5_sort_tsg_pip_bl_resp_data,
                                     1);
  if (((error != 0 || resp_len != 11) || (unsigned int )resp_data[2] != 48U) || (unsigned int )resp_data[5] != 0U) {
    return (error != 0 ? error : -11);
  } else {
  }
  return (0);
}
}
static bool cyapa_gen5_sort_bl_exit_data(struct cyapa *cyapa , u8 *buf , int len )
{
  {
  if ((unsigned long )buf == (unsigned long )((u8 *)0U) || len <= 1) {
    return (0);
  } else {
  }
  if ((unsigned int )*buf == 0U && (unsigned int )*(buf + 1UL) == 0U) {
    return (1);
  } else {
  }
  if ((((len == 11 && (unsigned int )*(buf + 2UL) == 48U) && (unsigned int )*(buf + 3UL) == 0U) && (unsigned int )*(buf + 4UL) == 1U) && (unsigned int )*(buf + 10UL) == 23U) {
    return (1);
  } else {
  }
  return (0);
}
}
static int cyapa_gen5_bl_exit(struct cyapa *cyapa )
{
  u8 bl_gen5_bl_exit[13U] ;
  u8 resp_data[11U] ;
  int resp_len ;
  int error ;
  {
  bl_gen5_bl_exit[0] = 4U;
  bl_gen5_bl_exit[1] = 0U;
  bl_gen5_bl_exit[2] = 11U;
  bl_gen5_bl_exit[3] = 0U;
  bl_gen5_bl_exit[4] = 64U;
  bl_gen5_bl_exit[5] = 0U;
  bl_gen5_bl_exit[6] = 1U;
  bl_gen5_bl_exit[7] = 59U;
  bl_gen5_bl_exit[8] = 0U;
  bl_gen5_bl_exit[9] = 0U;
  bl_gen5_bl_exit[10] = 32U;
  bl_gen5_bl_exit[11] = 199U;
  bl_gen5_bl_exit[12] = 23U;
  resp_len = 11;
  error = cyapa_i2c_pip_cmd_irq_sync(cyapa, (u8 *)(& bl_gen5_bl_exit), 13, (u8 *)(& resp_data),
                                     & resp_len, 5000UL, & cyapa_gen5_sort_bl_exit_data,
                                     0);
  if (error != 0) {
    return (error);
  } else {
  }
  if (resp_len == 11 || (unsigned int )resp_data[2] == 48U) {
    return (-11);
  } else {
  }
  if ((unsigned int )resp_data[0] == 0U && (unsigned int )resp_data[1] == 0U) {
    return (0);
  } else {
  }
  return (-19);
}
}
static int cyapa_gen5_bl_enter(struct cyapa *cyapa )
{
  u8 cmd[7U] ;
  u8 resp_data[2U] ;
  int resp_len ;
  int error ;
  {
  cmd[0] = 4U;
  cmd[1] = 0U;
  cmd[2] = 5U;
  cmd[3] = 0U;
  cmd[4] = 47U;
  cmd[5] = 0U;
  cmd[6] = 1U;
  error = cyapa_poll_state(cyapa, 500U);
  if (error < 0) {
    return (error);
  } else {
  }
  if ((unsigned int )cyapa->gen != 5U) {
    return (-22);
  } else {
  }
  if ((unsigned int )cyapa->state == 5U) {
    return (0);
  } else {
  }
  if ((unsigned int )cyapa->state != 6U) {
    return (-11);
  } else {
  }
  cyapa_empty_pip_output_data(cyapa, (u8 *)0U, (int *)0, (bool (*)(struct cyapa * ,
                                                                   u8 * , int ))0);
  resp_len = 2;
  memset((void *)(& resp_data), 0, (size_t )resp_len);
  error = cyapa_i2c_pip_cmd_irq_sync(cyapa, (u8 *)(& cmd), 7, (u8 *)(& resp_data),
                                     & resp_len, 5000UL, & cyapa_gen5_sort_application_launch_data,
                                     1);
  if ((error != 0 || (unsigned int )resp_data[0] != 0U) || (unsigned int )resp_data[1] != 0U) {
    return (error < 0 ? error : -11);
  } else {
  }
  cyapa->operational = 0;
  cyapa->state = 5;
  return (0);
}
}
static int cyapa_gen5_check_fw(struct cyapa *cyapa , struct firmware const *fw )
{
  struct device *dev ;
  struct cyapa_tsg_bin_image const *image ;
  struct cyapa_tsg_bin_image_data_record const *app_integrity ;
  struct gen5_bl_metadata_row_params const *metadata ;
  size_t flash_records_count ;
  u32 fw_app_start ;
  u32 fw_upgrade_start ;
  u16 fw_app_len ;
  u16 fw_upgrade_len ;
  u16 app_crc ;
  u16 app_integrity_crc ;
  int record_index ;
  int i ;
  u16 tmp ;
  u16 tmp___0 ;
  u8 const *data ;
  u16 tmp___1 ;
  {
  dev = & (cyapa->client)->dev;
  image = (struct cyapa_tsg_bin_image const *)fw->data;
  flash_records_count = ((unsigned long )fw->size - 13UL) / 133UL;
  app_integrity = (struct cyapa_tsg_bin_image_data_record const *)(& image->records) + (flash_records_count + 0xffffffffffffffffUL);
  if ((unsigned int )((unsigned char )app_integrity->flash_array_id) != 0U) {
    dev_err((struct device const *)dev, "%s: invalid app_integrity data.\n", "cyapa_gen5_check_fw");
    return (-22);
  } else {
    tmp = get_unaligned_be16((void const *)(& app_integrity->row_number));
    if ((unsigned int )tmp != 511U) {
      dev_err((struct device const *)dev, "%s: invalid app_integrity data.\n", "cyapa_gen5_check_fw");
      return (-22);
    } else {
    }
  }
  metadata = (struct gen5_bl_metadata_row_params const *)(& app_integrity->record_data);
  app_integrity_crc = crc_itu_t(65535, (u8 const *)(& app_integrity->record_data),
                                60UL);
  tmp___0 = get_unaligned_le16((void const *)(& metadata->metadata_crc));
  if ((int )tmp___0 != (int )app_integrity_crc) {
    dev_err((struct device const *)dev, "%s: invalid app_integrity crc.\n", "cyapa_gen5_check_fw");
    return (-22);
  } else {
  }
  fw_app_start = get_unaligned_le32((void const *)(& metadata->app_start));
  fw_app_len = get_unaligned_le16((void const *)(& metadata->app_len));
  fw_upgrade_start = get_unaligned_le32((void const *)(& metadata->upgrade_start));
  fw_upgrade_len = get_unaligned_le16((void const *)(& metadata->upgrade_len));
  if ((((fw_app_start & 127U) != 0U || ((unsigned int )fw_app_len & 127U) != 0U) || (fw_upgrade_start & 127U) != 0U) || ((unsigned int )fw_upgrade_len & 127U) != 0U) {
    dev_err((struct device const *)dev, "%s: invalid image alignment.\n", "cyapa_gen5_check_fw");
    return (-22);
  } else {
  }
  record_index = (int )(fw_app_start / 128U - 46U);
  app_crc = 65535U;
  i = 0;
  goto ldv_26390;
  ldv_26389:
  data = (u8 const *)(& image->records[record_index + i].record_data);
  app_crc = crc_itu_t((int )app_crc, data, 128UL);
  i = i + 1;
  ldv_26390: ;
  if ((int )((unsigned int )fw_app_len / 128U) > i) {
    goto ldv_26389;
  } else {
  }
  tmp___1 = get_unaligned_le16((void const *)(& metadata->app_crc));
  if ((int )tmp___1 != (int )app_crc) {
    dev_err((struct device const *)dev, "%s: invalid firmware app crc check.\n",
            "cyapa_gen5_check_fw");
    return (-22);
  } else {
  }
  return (0);
}
}
static int cyapa_gen5_write_fw_block(struct cyapa *cyapa , struct cyapa_tsg_bin_image_data_record *flash_record )
{
  struct gen5_bl_cmd_head *bl_cmd_head ;
  struct gen5_bl_packet_start *bl_packet_start ;
  struct gen5_bl_flash_row_head *flash_row_head ;
  struct gen5_bl_packet_end *bl_packet_end ;
  u8 cmd[256U] ;
  u16 cmd_len ;
  u8 flash_array_id ;
  u16 flash_row_id ;
  u16 record_len ;
  u8 *record_data ;
  u16 data_len ;
  u16 crc ;
  u8 resp_data[11U] ;
  int resp_len ;
  int error ;
  {
  flash_array_id = flash_record->flash_array_id;
  flash_row_id = get_unaligned_be16((void const *)(& flash_record->row_number));
  record_len = get_unaligned_be16((void const *)(& flash_record->record_len));
  record_data = (u8 *)(& flash_record->record_data);
  memset((void *)(& cmd), 0, 256UL);
  bl_cmd_head = (struct gen5_bl_cmd_head *)(& cmd);
  bl_packet_start = & bl_cmd_head->packet_start;
  cmd_len = 144U;
  put_unaligned_le16(4, (void *)(& bl_cmd_head->addr));
  put_unaligned_le16((int )((unsigned int )cmd_len + 65534U), (void *)(& bl_cmd_head->length));
  bl_cmd_head->report_id = 64U;
  bl_packet_start->sop = 1U;
  bl_packet_start->cmd_code = 57U;
  data_len = (unsigned int )record_len + 3U;
  put_unaligned_le16((int )data_len, (void *)(& bl_packet_start->data_length));
  flash_row_head = (struct gen5_bl_flash_row_head *)(& bl_cmd_head->data);
  flash_row_head->flash_array_id = flash_array_id;
  put_unaligned_le16((int )flash_row_id, (void *)(& flash_row_head->flash_row_id));
  memcpy((void *)(& flash_row_head->flash_data), (void const *)record_data, (size_t )record_len);
  bl_packet_end = (struct gen5_bl_packet_end *)(& bl_cmd_head->data) + (unsigned long )data_len;
  crc = crc_itu_t(65535, (u8 const *)bl_packet_start, (unsigned long )data_len + 4UL);
  put_unaligned_le16((int )crc, (void *)(& bl_packet_end->crc));
  bl_packet_end->eop = 23U;
  resp_len = 11;
  error = cyapa_i2c_pip_cmd_irq_sync(cyapa, (u8 *)(& cmd), (int )cmd_len, (u8 *)(& resp_data),
                                     & resp_len, 500UL, & cyapa_gen5_sort_tsg_pip_bl_resp_data,
                                     1);
  if (((error != 0 || resp_len != 11) || (unsigned int )resp_data[2] != 48U) || (unsigned int )resp_data[5] != 0U) {
    return (error < 0 ? error : -11);
  } else {
  }
  return (0);
}
}
static int cyapa_gen5_do_fw_update(struct cyapa *cyapa , struct firmware const *fw )
{
  struct device *dev ;
  struct cyapa_tsg_bin_image_data_record *flash_record ;
  struct cyapa_tsg_bin_image *image ;
  int flash_records_count ;
  int i ;
  int error ;
  {
  dev = & (cyapa->client)->dev;
  image = (struct cyapa_tsg_bin_image *)fw->data;
  cyapa_empty_pip_output_data(cyapa, (u8 *)0U, (int *)0, (bool (*)(struct cyapa * ,
                                                                   u8 * , int ))0);
  flash_records_count = (int )(((unsigned long )fw->size - 13UL) / 133UL);
  i = 0;
  goto ldv_26423;
  ldv_26422:
  flash_record = (struct cyapa_tsg_bin_image_data_record *)(& image->records) + (unsigned long )i;
  error = cyapa_gen5_write_fw_block(cyapa, flash_record);
  if (error != 0) {
    dev_err((struct device const *)dev, "%s: Gen5 FW update aborted: %d\n", "cyapa_gen5_do_fw_update",
            error);
    return (error);
  } else {
  }
  i = i + 1;
  ldv_26423: ;
  if (flash_records_count + -1 > i) {
    goto ldv_26422;
  } else {
  }
  return (0);
}
}
static int cyapa_gen5_change_power_state(struct cyapa *cyapa , u8 power_state )
{
  u8 cmd[8U] ;
  u8 resp_data[6U] ;
  int resp_len ;
  int error ;
  {
  cmd[0] = 4U;
  cmd[1] = 0U;
  cmd[2] = 6U;
  cmd[3] = 0U;
  cmd[4] = 47U;
  cmd[5] = 0U;
  cmd[6] = 8U;
  cmd[7] = 1U;
  cmd[7] = power_state;
  resp_len = 6;
  error = cyapa_i2c_pip_cmd_irq_sync(cyapa, (u8 *)(& cmd), 8, (u8 *)(& resp_data),
                                     & resp_len, 500UL, & cyapa_gen5_sort_tsg_pip_app_resp_data,
                                     0);
  if ((error != 0 || (((unsigned int )resp_data[2] != 31U || (unsigned int )resp_data[3] != 0U) || ((int )resp_data[4] & 127) != 8)) || (unsigned int )resp_data[5] != 0U) {
    return (error < 0 ? error : -22);
  } else {
  }
  return (0);
}
}
static int cyapa_gen5_set_interval_time(struct cyapa *cyapa , u8 parameter_id , u16 interval_time )
{
  struct gen5_app_cmd_head *app_cmd_head ;
  struct gen5_app_set_parameter_data *parameter_data ;
  u8 cmd[256U] ;
  int cmd_len ;
  u8 resp_data[7U] ;
  int resp_len ;
  u8 parameter_size ;
  int error ;
  {
  memset((void *)(& cmd), 0, 256UL);
  app_cmd_head = (struct gen5_app_cmd_head *)(& cmd);
  parameter_data = (struct gen5_app_set_parameter_data *)(& app_cmd_head->parameter_data);
  cmd_len = 13;
  switch ((int )parameter_id) {
  case 77:
  parameter_size = 1U;
  goto ldv_26447;
  case 79:
  parameter_size = 2U;
  goto ldv_26447;
  case 76:
  parameter_size = 2U;
  goto ldv_26447;
  default: ;
  return (-22);
  }
  ldv_26447:
  put_unaligned_le16(4, (void *)(& app_cmd_head->addr));
  put_unaligned_le16((int )((unsigned int )((int )((u16 )parameter_size) + (int )((u16 )cmd_len)) + 65530U),
                     (void *)(& app_cmd_head->length));
  app_cmd_head->report_id = 47U;
  app_cmd_head->cmd_code = 6U;
  parameter_data->parameter_id = parameter_id;
  parameter_data->parameter_size = parameter_size;
  put_unaligned_le32((unsigned int )interval_time, (void *)(& parameter_data->value));
  resp_len = 7;
  error = cyapa_i2c_pip_cmd_irq_sync(cyapa, (u8 *)(& cmd), cmd_len, (u8 *)(& resp_data),
                                     & resp_len, 500UL, & cyapa_gen5_sort_tsg_pip_app_resp_data,
                                     0);
  if (((error != 0 || (int )resp_data[5] != (int )parameter_id) || (int )resp_data[6] != (int )parameter_size) || (((unsigned int )resp_data[2] != 31U || (unsigned int )resp_data[3] != 0U) || ((int )resp_data[4] & 127) != 6)) {
    return (error < 0 ? error : -22);
  } else {
  }
  return (0);
}
}
static int cyapa_gen5_get_interval_time(struct cyapa *cyapa , u8 parameter_id , u16 *interval_time )
{
  struct gen5_app_cmd_head *app_cmd_head ;
  struct gen5_app_get_parameter_data *parameter_data ;
  u8 cmd[256U] ;
  int cmd_len ;
  u8 resp_data[11U] ;
  int resp_len ;
  u8 parameter_size ;
  u16 mask ;
  u16 i ;
  int error ;
  u16 tmp ;
  {
  memset((void *)(& cmd), 0, 256UL);
  app_cmd_head = (struct gen5_app_cmd_head *)(& cmd);
  parameter_data = (struct gen5_app_get_parameter_data *)(& app_cmd_head->parameter_data);
  cmd_len = 8;
  *interval_time = 0U;
  switch ((int )parameter_id) {
  case 77:
  parameter_size = 1U;
  goto ldv_26467;
  case 79:
  parameter_size = 2U;
  goto ldv_26467;
  case 76:
  parameter_size = 2U;
  goto ldv_26467;
  default: ;
  return (-22);
  }
  ldv_26467:
  put_unaligned_le16(1, (void *)(& app_cmd_head->addr));
  put_unaligned_le16((int )((unsigned int )((u16 )cmd_len) + 65534U), (void *)(& app_cmd_head->length));
  app_cmd_head->report_id = 47U;
  app_cmd_head->cmd_code = 5U;
  parameter_data->parameter_id = parameter_id;
  resp_len = 11;
  error = cyapa_i2c_pip_cmd_irq_sync(cyapa, (u8 *)(& cmd), cmd_len, (u8 *)(& resp_data),
                                     & resp_len, 500UL, & cyapa_gen5_sort_tsg_pip_app_resp_data,
                                     0);
  if (((error != 0 || (int )resp_data[5] != (int )parameter_id) || (unsigned int )resp_data[6] == 0U) || (((unsigned int )resp_data[2] != 31U || (unsigned int )resp_data[3] != 0U) || ((int )resp_data[4] & 127) != 5)) {
    return (error < 0 ? error : -22);
  } else {
  }
  mask = 0U;
  i = 0U;
  goto ldv_26472;
  ldv_26471:
  mask = (u16 )((int )((short )(255 << (int )i * 8)) | (int )((short )mask));
  i = (u16 )((int )i + 1);
  ldv_26472: ;
  if ((int )((unsigned short )parameter_size) > (int )i) {
    goto ldv_26471;
  } else {
  }
  tmp = get_unaligned_le16((void const *)(& resp_data) + 7U);
  *interval_time = (u16 )((int )tmp & (int )mask);
  return (0);
}
}
static int cyapa_gen5_disable_pip_report(struct cyapa *cyapa )
{
  struct gen5_app_cmd_head *app_cmd_head ;
  u8 cmd[10U] ;
  u8 resp_data[7U] ;
  int resp_len ;
  int error ;
  {
  memset((void *)(& cmd), 0, 10UL);
  app_cmd_head = (struct gen5_app_cmd_head *)(& cmd);
  put_unaligned_le16(1, (void *)(& app_cmd_head->addr));
  put_unaligned_le16(8, (void *)(& app_cmd_head->length));
  app_cmd_head->report_id = 47U;
  app_cmd_head->cmd_code = 6U;
  app_cmd_head->parameter_data[0] = 8U;
  app_cmd_head->parameter_data[1] = 1U;
  app_cmd_head->parameter_data[2] = 1U;
  resp_len = 7;
  error = cyapa_i2c_pip_cmd_irq_sync(cyapa, (u8 *)(& cmd), 10, (u8 *)(& resp_data),
                                     & resp_len, 500UL, & cyapa_gen5_sort_tsg_pip_app_resp_data,
                                     0);
  if (((error != 0 || (unsigned int )resp_data[5] != 8U) || (((unsigned int )resp_data[2] != 31U || (unsigned int )resp_data[3] != 0U) || ((int )resp_data[4] & 127) != 6)) || (unsigned int )resp_data[6] != 1U) {
    return (error < 0 ? error : -22);
  } else {
  }
  return (0);
}
}
static int cyapa_gen5_deep_sleep(struct cyapa *cyapa , u8 state )
{
  u8 cmd[4U] ;
  u8 resp_data[5U] ;
  int resp_len ;
  int error ;
  {
  cmd[0] = 5U;
  cmd[1] = 0U;
  cmd[2] = 0U;
  cmd[3] = 8U;
  cmd[2] = (unsigned int )state & 3U;
  resp_len = 5;
  error = cyapa_i2c_pip_cmd_irq_sync(cyapa, (u8 *)(& cmd), 4, (u8 *)(& resp_data),
                                     & resp_len, 500UL, & cyapa_gen5_sort_deep_sleep_data,
                                     0);
  if (error != 0 || ((int )resp_data[3] & 3) != (int )state) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int cyapa_gen5_set_power_mode(struct cyapa *cyapa , u8 power_mode , u16 sleep_time )
{
  struct device *dev ;
  u8 power_state ;
  int error ;
  int tmp ;
  int tmp___0 ;
  {
  dev = & (cyapa->client)->dev;
  if ((unsigned int )cyapa->state != 6U) {
    return (0);
  } else {
  }
  cyapa_empty_pip_output_data(cyapa, (u8 *)0U, (int *)0, (bool (*)(struct cyapa * ,
                                                                   u8 * , int ))0);
  if ((unsigned int )cyapa->dev_pwr_mode == 255U) {
    cyapa->dev_pwr_mode = 0U;
  } else {
  }
  if ((unsigned int )cyapa->dev_sleep_time == 65535U && (unsigned int )cyapa->dev_pwr_mode != 0U) {
    tmp = cyapa_gen5_get_interval_time(cyapa, 76, & cyapa->dev_sleep_time);
    if (tmp != 0) {
      cyapa->dev_sleep_time = 65535U;
    } else {
    }
  } else {
  }
  if ((int )cyapa->dev_pwr_mode == (int )power_mode) {
    if ((((unsigned int )power_mode == 0U || (unsigned int )power_mode == 252U) || (unsigned int )power_mode == 4U) || (int )cyapa->dev_sleep_time == (int )sleep_time) {
      return (0);
    } else {
    }
  } else {
  }
  if ((unsigned int )power_mode == 0U) {
    error = cyapa_gen5_deep_sleep(cyapa, 1);
    if (error != 0) {
      dev_err((struct device const *)dev, "enter deep sleep fail: %d\n", error);
      return (error);
    } else {
    }
    cyapa->dev_pwr_mode = 0U;
    return (0);
  } else {
  }
  if ((unsigned int )cyapa->dev_pwr_mode == 0U) {
    error = cyapa_gen5_deep_sleep(cyapa, 0);
    if (error != 0) {
      dev_err((struct device const *)dev, "deep sleep wake fail: %d\n", error);
      return (error);
    } else {
    }
  } else {
  }
  if ((unsigned int )power_mode == 252U) {
    error = cyapa_gen5_change_power_state(cyapa, 1);
    if (error != 0) {
      dev_err((struct device const *)dev, "change to active fail: %d\n", error);
      return (error);
    } else {
    }
    cyapa->dev_pwr_mode = 252U;
  } else
  if ((unsigned int )power_mode == 4U) {
    error = cyapa_gen5_change_power_state(cyapa, 5);
    if (error != 0) {
      dev_err((struct device const *)dev, "fail to button only mode: %d\n", error);
      return (error);
    } else {
    }
    cyapa->dev_pwr_mode = 4U;
  } else {
    if ((unsigned int )cyapa->dev_sleep_time == 65535U || (int )cyapa->dev_sleep_time != (int )sleep_time) {
      tmp___0 = cyapa_gen5_set_interval_time(cyapa, 76, (int )sleep_time);
      if (tmp___0 == 0) {
        cyapa->dev_sleep_time = sleep_time;
      } else {
      }
    } else {
    }
    if ((unsigned int )sleep_time <= 50U) {
      power_state = 3U;
    } else {
      power_state = 4U;
    }
    error = cyapa_gen5_change_power_state(cyapa, (int )power_state);
    if (error != 0) {
      dev_err((struct device const *)dev, "set power state to 0x%02x failed: %d\n",
              (int )power_state, error);
      return (error);
    } else {
    }
    cyapa_empty_pip_output_data(cyapa, (u8 *)0U, (int *)0, (bool (*)(struct cyapa * ,
                                                                     u8 * , int ))0);
    cyapa_gen5_disable_pip_report(cyapa);
    cyapa->dev_pwr_mode = cyapa_sleep_time_to_pwr_cmd((int )sleep_time);
  }
  return (0);
}
}
static int cyapa_gen5_resume_scanning(struct cyapa *cyapa )
{
  u8 cmd[7U] ;
  u8 resp_data[6U] ;
  int resp_len ;
  int error ;
  {
  cmd[0] = 4U;
  cmd[1] = 0U;
  cmd[2] = 5U;
  cmd[3] = 0U;
  cmd[4] = 47U;
  cmd[5] = 0U;
  cmd[6] = 4U;
  cyapa_empty_pip_output_data(cyapa, (u8 *)0U, (int *)0, (bool (*)(struct cyapa * ,
                                                                   u8 * , int ))0);
  resp_len = 6;
  error = cyapa_i2c_pip_cmd_irq_sync(cyapa, (u8 *)(& cmd), 7, (u8 *)(& resp_data),
                                     & resp_len, 500UL, & cyapa_gen5_sort_tsg_pip_app_resp_data,
                                     1);
  if (error != 0 || (((unsigned int )resp_data[2] != 31U || (unsigned int )resp_data[3] != 0U) || ((int )resp_data[4] & 127) != 4)) {
    return (-22);
  } else {
  }
  cyapa_empty_pip_output_data(cyapa, (u8 *)0U, (int *)0, (bool (*)(struct cyapa * ,
                                                                   u8 * , int ))0);
  return (0);
}
}
static int cyapa_gen5_suspend_scanning(struct cyapa *cyapa )
{
  u8 cmd[7U] ;
  u8 resp_data[6U] ;
  int resp_len ;
  int error ;
  {
  cmd[0] = 4U;
  cmd[1] = 0U;
  cmd[2] = 5U;
  cmd[3] = 0U;
  cmd[4] = 47U;
  cmd[5] = 0U;
  cmd[6] = 3U;
  cyapa_empty_pip_output_data(cyapa, (u8 *)0U, (int *)0, (bool (*)(struct cyapa * ,
                                                                   u8 * , int ))0);
  resp_len = 6;
  error = cyapa_i2c_pip_cmd_irq_sync(cyapa, (u8 *)(& cmd), 7, (u8 *)(& resp_data),
                                     & resp_len, 500UL, & cyapa_gen5_sort_tsg_pip_app_resp_data,
                                     1);
  if (error != 0 || (((unsigned int )resp_data[2] != 31U || (unsigned int )resp_data[3] != 0U) || ((int )resp_data[4] & 127) != 3)) {
    return (-22);
  } else {
  }
  cyapa_empty_pip_output_data(cyapa, (u8 *)0U, (int *)0, (bool (*)(struct cyapa * ,
                                                                   u8 * , int ))0);
  return (0);
}
}
static int cyapa_gen5_calibrate_pwcs(struct cyapa *cyapa , u8 calibrate_sensing_mode_type )
{
  struct gen5_app_cmd_head *app_cmd_head ;
  u8 cmd[8U] ;
  u8 resp_data[6U] ;
  int resp_len ;
  int error ;
  {
  cyapa_empty_pip_output_data(cyapa, (u8 *)0U, (int *)0, (bool (*)(struct cyapa * ,
                                                                   u8 * , int ))0);
  memset((void *)(& cmd), 0, 8UL);
  app_cmd_head = (struct gen5_app_cmd_head *)(& cmd);
  put_unaligned_le16(4, (void *)(& app_cmd_head->addr));
  put_unaligned_le16(6, (void *)(& app_cmd_head->length));
  app_cmd_head->report_id = 47U;
  app_cmd_head->cmd_code = 40U;
  app_cmd_head->parameter_data[0] = calibrate_sensing_mode_type;
  resp_len = 6;
  error = cyapa_i2c_pip_cmd_irq_sync(cyapa, (u8 *)(& cmd), 8, (u8 *)(& resp_data),
                                     & resp_len, 5000UL, & cyapa_gen5_sort_tsg_pip_app_resp_data,
                                     1);
  if ((error != 0 || (((unsigned int )resp_data[2] != 31U || (unsigned int )resp_data[3] != 0U) || ((int )resp_data[4] & 127) != 40)) || (unsigned int )resp_data[5] != 0U) {
    return (error < 0 ? error : -11);
  } else {
  }
  return (0);
}
}
static ssize_t cyapa_gen5_do_calibrate(struct device *dev , struct device_attribute *attr ,
                                       char const *buf , size_t count )
{
  struct cyapa *cyapa ;
  void *tmp ;
  int error ;
  int calibrate_error ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  cyapa = (struct cyapa *)tmp;
  error = cyapa_gen5_suspend_scanning(cyapa);
  if (error != 0) {
    return ((ssize_t )error);
  } else {
  }
  calibrate_error = cyapa_gen5_calibrate_pwcs(cyapa, 0);
  if (calibrate_error != 0) {
    goto resume_scanning;
  } else {
  }
  calibrate_error = cyapa_gen5_calibrate_pwcs(cyapa, 2);
  if (calibrate_error != 0) {
  } else {
  }
  resume_scanning:
  error = cyapa_gen5_resume_scanning(cyapa);
  if (error != 0 || calibrate_error != 0) {
    return ((ssize_t )(error != 0 ? error : calibrate_error));
  } else {
  }
  return ((ssize_t )count);
}
}
static s32 twos_complement_to_s32(s32 value , int num_bits )
{
  {
  if (value >> (num_bits + -1) != 0) {
    value = (-1 << num_bits) | value;
  } else {
  }
  return (value);
}
}
static s32 cyapa_parse_structure_data(u8 data_format , u8 *buf , int buf_len )
{
  int data_size ;
  bool big_endian ;
  bool unsigned_type ;
  s32 value ;
  u16 tmp ;
  u16 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  {
  data_size = (int )data_format & 7;
  big_endian = ((int )data_format & 16) == 0;
  unsigned_type = ((int )data_format & 32) == 0;
  if (buf_len < data_size) {
    return (0);
  } else {
  }
  switch (data_size) {
  case 1:
  value = (s32 )*buf;
  goto ldv_26545;
  case 2: ;
  if ((int )big_endian) {
    tmp = get_unaligned_be16((void const *)buf);
    value = (s32 )tmp;
  } else {
    tmp___0 = get_unaligned_le16((void const *)buf);
    value = (s32 )tmp___0;
  }
  goto ldv_26545;
  case 4: ;
  if ((int )big_endian) {
    tmp___1 = get_unaligned_be32((void const *)buf);
    value = (s32 )tmp___1;
  } else {
    tmp___2 = get_unaligned_le32((void const *)buf);
    value = (s32 )tmp___2;
  }
  goto ldv_26545;
  default:
  value = 0;
  goto ldv_26545;
  }
  ldv_26545: ;
  if (! unsigned_type) {
    value = twos_complement_to_s32(value, data_size * 8);
  } else {
  }
  return (value);
}
}
static void cyapa_gen5_guess_electrodes(struct cyapa *cyapa , int *electrodes_rx ,
                                        int *electrodes_tx )
{
  int _min1 ;
  int _min2 ;
  int _max1 ;
  int _max2 ;
  {
  if (cyapa->electrodes_rx != 0) {
    *electrodes_rx = cyapa->electrodes_rx;
    *electrodes_tx = cyapa->electrodes_x == *electrodes_rx ? cyapa->electrodes_y : cyapa->electrodes_x;
  } else {
    _min1 = cyapa->electrodes_x;
    _min2 = cyapa->electrodes_y;
    *electrodes_tx = _min1 < _min2 ? _min1 : _min2;
    _max1 = cyapa->electrodes_x;
    _max2 = cyapa->electrodes_y;
    *electrodes_rx = _max1 > _max2 ? _max1 : _max2;
  }
  return;
}
}
static int cyapa_gen5_read_idac_data(struct cyapa *cyapa , u8 cmd_code , u8 idac_data_type ,
                                     int *data_size , int *idac_max , int *idac_min ,
                                     int *idac_ave )
{
  struct gen5_app_cmd_head *cmd_head ;
  u8 cmd[12U] ;
  u8 resp_data[256U] ;
  int resp_len ;
  int read_len ;
  int value ;
  u16 offset ;
  int read_elements ;
  bool read_global_idac ;
  int sum ;
  int count ;
  int max_element_cnt ;
  int tmp_max ;
  int tmp_min ;
  int tmp_ave ;
  int tmp_sum ;
  int tmp_count ;
  int electrodes_rx ;
  int electrodes_tx ;
  int i ;
  int error ;
  int _min1 ;
  int _min2 ;
  u16 tmp ;
  int _min1___0 ;
  int _min2___0 ;
  int _max1 ;
  int _max2 ;
  int _min1___1 ;
  int _min2___1 ;
  int _max1___0 ;
  int _max2___0 ;
  {
  if ((((((unsigned int )cmd_code != 36U || ((unsigned int )idac_data_type != 0U && (unsigned int )idac_data_type != 1U)) || (unsigned long )data_size == (unsigned long )((int *)0)) || (unsigned long )idac_max == (unsigned long )((int *)0)) || (unsigned long )idac_min == (unsigned long )((int *)0)) || (unsigned long )idac_ave == (unsigned long )((int *)0)) {
    return (-22);
  } else {
  }
  *idac_max = (-0x7FFFFFFF-1);
  *idac_min = 2147483647;
  tmp_count = 0;
  count = tmp_count;
  sum = count;
  electrodes_tx = 0;
  electrodes_rx = electrodes_tx;
  if (*data_size == 0) {
    read_global_idac = 1;
    offset = 0U;
    *data_size = 4;
    tmp_max = (-0x7FFFFFFF-1);
    tmp_min = 2147483647;
    tmp_count = 0;
    tmp_sum = tmp_count;
    tmp_ave = tmp_sum;
    if ((unsigned int )idac_data_type == 0U) {
      if (cyapa->aligned_electrodes_rx == 0) {
        cyapa_gen5_guess_electrodes(cyapa, & electrodes_rx, & electrodes_tx);
        cyapa->aligned_electrodes_rx = (electrodes_rx + 3) & -4;
      } else {
      }
      max_element_cnt = (cyapa->aligned_electrodes_rx + 7) & -8;
    } else {
      max_element_cnt = 2;
    }
  } else {
    read_global_idac = 0;
    if (*data_size > 4) {
      *data_size = 4;
    } else {
    }
    if ((unsigned int )idac_data_type == 0U) {
      offset = (int )((u16 )cyapa->aligned_electrodes_rx) * (int )((u16 )*data_size);
      if (cyapa->electrodes_rx == cyapa->electrodes_x) {
        electrodes_tx = cyapa->electrodes_y;
      } else {
        electrodes_tx = cyapa->electrodes_x;
      }
      max_element_cnt = (int )(((unsigned int )(cyapa->aligned_electrodes_rx + 7) & 4294967288U) * (unsigned int )electrodes_tx);
    } else {
      offset = 2U;
      max_element_cnt = cyapa->electrodes_x + cyapa->electrodes_y;
      max_element_cnt = (max_element_cnt + 3) & -4;
    }
  }
  memset((void *)(& cmd), 0, 12UL);
  cmd_head = (struct gen5_app_cmd_head *)(& cmd);
  put_unaligned_le16(4, (void *)(& cmd_head->addr));
  put_unaligned_le16(10, (void *)(& cmd_head->length));
  cmd_head->report_id = 47U;
  cmd_head->cmd_code = cmd_code;
  ldv_26610:
  read_elements = 246 / *data_size;
  _min1 = read_elements;
  _min2 = max_element_cnt - count;
  read_elements = _min1 < _min2 ? _min1 : _min2;
  read_len = *data_size * read_elements;
  put_unaligned_le16((int )offset, (void *)(& cmd_head->parameter_data));
  put_unaligned_le16((int )((u16 )read_len), (void *)(& cmd_head->parameter_data) + 2U);
  cmd_head->parameter_data[4] = idac_data_type;
  resp_len = read_len + 10;
  error = cyapa_i2c_pip_cmd_irq_sync(cyapa, (u8 *)(& cmd), 12, (u8 *)(& resp_data),
                                     & resp_len, 500UL, & cyapa_gen5_sort_tsg_pip_app_resp_data,
                                     1);
  if ((((error != 0 || resp_len <= 9) || (((unsigned int )resp_data[2] != 31U || (unsigned int )resp_data[3] != 0U) || ((int )resp_data[4] & 127) != (int )cmd_code)) || (unsigned int )resp_data[5] != 0U) || (int )resp_data[6] != (int )idac_data_type) {
    return (error < 0 ? error : -11);
  } else {
  }
  tmp = get_unaligned_le16((void const *)(& resp_data) + 7U);
  read_len = (int )tmp;
  if (read_len == 0) {
    goto ldv_26593;
  } else {
  }
  *data_size = (int )resp_data[9] & 7;
  if (*data_size > read_len) {
    return (-22);
  } else {
  }
  if ((int )read_global_idac && (unsigned int )idac_data_type == 1U) {
    *idac_max = cyapa_parse_structure_data((int )resp_data[9], (u8 *)(& resp_data) + 10UL,
                                           *data_size);
    *idac_min = cyapa_parse_structure_data((int )resp_data[9], (u8 *)(& resp_data) + (unsigned long )(*data_size + 10),
                                           *data_size);
    goto ldv_26593;
  } else {
  }
  offset = (int )((u16 )read_len) + (int )offset;
  i = 10;
  goto ldv_26608;
  ldv_26607:
  value = cyapa_parse_structure_data((int )resp_data[9], (u8 *)(& resp_data) + (unsigned long )i,
                                     *data_size);
  _min1___0 = value;
  _min2___0 = *idac_min;
  *idac_min = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  _max1 = value;
  _max2 = *idac_max;
  *idac_max = _max1 > _max2 ? _max1 : _max2;
  if (((unsigned int )idac_data_type == 0U && cyapa->aligned_electrodes_rx > tmp_count) && (int )read_global_idac) {
    if (tmp_ave == 0 || tmp_ave / 2 < value) {
      _min1___1 = value;
      _min2___1 = tmp_min;
      tmp_min = _min1___1 < _min2___1 ? _min1___1 : _min2___1;
      _max1___0 = value;
      _max2___0 = tmp_max;
      tmp_max = _max1___0 > _max2___0 ? _max1___0 : _max2___0;
      tmp_sum = tmp_sum + value;
      tmp_count = tmp_count + 1;
      tmp_ave = tmp_sum / tmp_count;
    } else {
    }
  } else {
  }
  sum = sum + value;
  count = count + 1;
  if (count >= max_element_cnt) {
    goto out;
  } else {
  }
  i = *data_size + i;
  ldv_26608: ;
  if (read_len + 10 > i) {
    goto ldv_26607;
  } else {
  }
  goto ldv_26610;
  ldv_26593: ;
  out:
  *idac_ave = count != 0 ? sum / count : 0;
  if ((int )read_global_idac && (unsigned int )idac_data_type == 0U) {
    if (tmp_count == 0) {
      return (0);
    } else {
    }
    if (cyapa->aligned_electrodes_rx == tmp_count) {
      cyapa->electrodes_rx = cyapa->electrodes_rx != 0 ? cyapa->electrodes_rx : electrodes_rx;
    } else
    if (tmp_count == electrodes_rx) {
      cyapa->electrodes_rx = cyapa->electrodes_rx != 0 ? cyapa->electrodes_rx : electrodes_rx;
      cyapa->aligned_electrodes_rx = electrodes_rx;
    } else {
      cyapa->electrodes_rx = cyapa->electrodes_rx != 0 ? cyapa->electrodes_rx : electrodes_tx;
      cyapa->aligned_electrodes_rx = tmp_count;
    }
    *idac_min = tmp_min;
    *idac_max = tmp_max;
    *idac_ave = tmp_ave;
  } else {
  }
  return (0);
}
}
static int cyapa_gen5_read_mutual_idac_data(struct cyapa *cyapa , int *gidac_mutual_max ,
                                            int *gidac_mutual_min , int *gidac_mutual_ave ,
                                            int *lidac_mutual_max , int *lidac_mutual_min ,
                                            int *lidac_mutual_ave )
{
  int data_size ;
  int error ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp___0 = 0;
  *gidac_mutual_ave = tmp___0;
  tmp = tmp___0;
  *gidac_mutual_min = tmp;
  *gidac_mutual_max = tmp;
  tmp___2 = 0;
  *lidac_mutual_ave = tmp___2;
  tmp___1 = tmp___2;
  *lidac_mutual_min = tmp___1;
  *lidac_mutual_max = tmp___1;
  data_size = 0;
  error = cyapa_gen5_read_idac_data(cyapa, 36, 0, & data_size, gidac_mutual_max, gidac_mutual_min,
                                    gidac_mutual_ave);
  if (error != 0) {
    return (error);
  } else {
  }
  error = cyapa_gen5_read_idac_data(cyapa, 36, 0, & data_size, lidac_mutual_max, lidac_mutual_min,
                                    lidac_mutual_ave);
  return (error);
}
}
static int cyapa_gen5_read_self_idac_data(struct cyapa *cyapa , int *gidac_self_rx ,
                                          int *gidac_self_tx , int *lidac_self_max ,
                                          int *lidac_self_min , int *lidac_self_ave )
{
  int data_size ;
  int error ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = 0;
  *gidac_self_tx = tmp;
  *gidac_self_rx = tmp;
  tmp___1 = 0;
  *lidac_self_ave = tmp___1;
  tmp___0 = tmp___1;
  *lidac_self_min = tmp___0;
  *lidac_self_max = tmp___0;
  data_size = 0;
  error = cyapa_gen5_read_idac_data(cyapa, 36, 1, & data_size, lidac_self_max, lidac_self_min,
                                    lidac_self_ave);
  if (error != 0) {
    return (error);
  } else {
  }
  *gidac_self_rx = *lidac_self_max;
  *gidac_self_tx = *lidac_self_min;
  error = cyapa_gen5_read_idac_data(cyapa, 36, 1, & data_size, lidac_self_max, lidac_self_min,
                                    lidac_self_ave);
  return (error);
}
}
static ssize_t cyapa_gen5_execute_panel_scan(struct cyapa *cyapa )
{
  struct gen5_app_cmd_head *app_cmd_head ;
  u8 cmd[7U] ;
  u8 resp_data[6U] ;
  int resp_len ;
  int error ;
  {
  memset((void *)(& cmd), 0, 7UL);
  app_cmd_head = (struct gen5_app_cmd_head *)(& cmd);
  put_unaligned_le16(4, (void *)(& app_cmd_head->addr));
  put_unaligned_le16(5, (void *)(& app_cmd_head->length));
  app_cmd_head->report_id = 47U;
  app_cmd_head->cmd_code = 42U;
  resp_len = 6;
  error = cyapa_i2c_pip_cmd_irq_sync(cyapa, (u8 *)(& cmd), 7, (u8 *)(& resp_data),
                                     & resp_len, 500UL, & cyapa_gen5_sort_tsg_pip_app_resp_data,
                                     1);
  if (((error != 0 || resp_len != 6) || (((unsigned int )resp_data[2] != 31U || (unsigned int )resp_data[3] != 0U) || ((int )resp_data[4] & 127) != 42)) || (unsigned int )resp_data[5] != 0U) {
    return (error != 0 ? (ssize_t )error : -11L);
  } else {
  }
  return (0L);
}
}
static int cyapa_gen5_read_panel_scan_raw_data(struct cyapa *cyapa , u8 cmd_code ,
                                               u8 raw_data_type , int raw_data_max_num ,
                                               int *raw_data_max , int *raw_data_min ,
                                               int *raw_data_ave , u8 *buffer )
{
  struct gen5_app_cmd_head *app_cmd_head ;
  struct gen5_retrieve_panel_scan_data *panel_sacn_data ;
  u8 cmd[12U] ;
  u8 resp_data[256U] ;
  int resp_len ;
  int read_elements ;
  int read_len ;
  u16 offset ;
  s32 value ;
  int sum ;
  int count ;
  int data_size ;
  s32 *intp ;
  int i ;
  int error ;
  u16 tmp ;
  s32 _min1 ;
  int _min2 ;
  s32 _max1 ;
  int _max2 ;
  {
  if (((((unsigned int )cmd_code != 43U || (unsigned int )raw_data_type > 5U) || (unsigned long )raw_data_max == (unsigned long )((int *)0)) || (unsigned long )raw_data_min == (unsigned long )((int *)0)) || (unsigned long )raw_data_ave == (unsigned long )((int *)0)) {
    return (-22);
  } else {
  }
  intp = (s32 *)buffer;
  *raw_data_max = (-0x7FFFFFFF-1);
  *raw_data_min = 2147483647;
  count = 0;
  sum = count;
  offset = 0U;
  read_elements = 61;
  read_len = read_elements * 4;
  app_cmd_head = (struct gen5_app_cmd_head *)(& cmd);
  put_unaligned_le16(4, (void *)(& app_cmd_head->addr));
  put_unaligned_le16(10, (void *)(& app_cmd_head->length));
  app_cmd_head->report_id = 47U;
  app_cmd_head->cmd_code = cmd_code;
  panel_sacn_data = (struct gen5_retrieve_panel_scan_data *)(& app_cmd_head->parameter_data);
  ldv_26675:
  put_unaligned_le16((int )offset, (void *)(& panel_sacn_data->read_offset));
  put_unaligned_le16((int )((u16 )read_elements), (void *)(& panel_sacn_data->read_elements));
  panel_sacn_data->data_id = raw_data_type;
  resp_len = read_len + 10;
  error = cyapa_i2c_pip_cmd_irq_sync(cyapa, (u8 *)(& cmd), 12, (u8 *)(& resp_data),
                                     & resp_len, 500UL, & cyapa_gen5_sort_tsg_pip_app_resp_data,
                                     1);
  if ((((error != 0 || resp_len <= 9) || (((unsigned int )resp_data[2] != 31U || (unsigned int )resp_data[3] != 0U) || ((int )resp_data[4] & 127) != (int )cmd_code)) || (unsigned int )resp_data[5] != 0U) || (int )resp_data[6] != (int )raw_data_type) {
    return (error != 0 ? error : -11);
  } else {
  }
  tmp = get_unaligned_le16((void const *)(& resp_data) + 7U);
  read_elements = (int )tmp;
  if (read_elements == 0) {
    goto ldv_26665;
  } else {
  }
  data_size = (int )resp_data[9] & 7;
  offset = (int )((u16 )read_elements) + (int )offset;
  if (read_elements != 0) {
    i = 10;
    goto ldv_26673;
    ldv_26672:
    value = cyapa_parse_structure_data((int )resp_data[9], (u8 *)(& resp_data) + (unsigned long )i,
                                       data_size);
    _min1 = value;
    _min2 = *raw_data_min;
    *raw_data_min = _min1 < _min2 ? _min1 : _min2;
    _max1 = value;
    _max2 = *raw_data_max;
    *raw_data_max = _max1 > _max2 ? _max1 : _max2;
    if ((unsigned long )intp != (unsigned long )((s32 *)0)) {
      put_unaligned_le32((u32 )value, (void *)intp + (unsigned long )count);
    } else {
    }
    sum = sum + value;
    count = count + 1;
    i = i + data_size;
    ldv_26673: ;
    if (read_elements * data_size + 10 > i) {
      goto ldv_26672;
    } else {
    }
  } else {
  }
  if (count >= raw_data_max_num) {
    goto ldv_26665;
  } else {
  }
  read_elements = (int )(246UL / (unsigned long )data_size);
  read_len = read_elements * data_size;
  goto ldv_26675;
  ldv_26665:
  *raw_data_ave = count != 0 ? sum / count : 0;
  return (0);
}
}
static ssize_t cyapa_gen5_show_baseline(struct device *dev , struct device_attribute *attr ,
                                        char *buf )
{
  struct cyapa *cyapa ;
  void *tmp ;
  int gidac_mutual_max ;
  int gidac_mutual_min ;
  int gidac_mutual_ave ;
  int lidac_mutual_max ;
  int lidac_mutual_min ;
  int lidac_mutual_ave ;
  int gidac_self_rx ;
  int gidac_self_tx ;
  int lidac_self_max ;
  int lidac_self_min ;
  int lidac_self_ave ;
  int raw_cap_mutual_max ;
  int raw_cap_mutual_min ;
  int raw_cap_mutual_ave ;
  int raw_cap_self_max ;
  int raw_cap_self_min ;
  int raw_cap_self_ave ;
  int mutual_diffdata_max ;
  int mutual_diffdata_min ;
  int mutual_diffdata_ave ;
  int self_diffdata_max ;
  int self_diffdata_min ;
  int self_diffdata_ave ;
  int mutual_baseline_max ;
  int mutual_baseline_min ;
  int mutual_baseline_ave ;
  int self_baseline_max ;
  int self_baseline_min ;
  int self_baseline_ave ;
  int error ;
  int resume_error ;
  int size ;
  ssize_t tmp___0 ;
  int tmp___1 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  cyapa = (struct cyapa *)tmp;
  if ((unsigned int )cyapa->state != 6U) {
    return (-16L);
  } else {
  }
  error = cyapa_gen5_suspend_scanning(cyapa);
  if (error != 0) {
    return ((ssize_t )error);
  } else {
  }
  gidac_self_tx = 0;
  gidac_self_rx = gidac_self_tx;
  error = cyapa_gen5_read_mutual_idac_data(cyapa, & gidac_mutual_max, & gidac_mutual_min,
                                           & gidac_mutual_ave, & lidac_mutual_max,
                                           & lidac_mutual_min, & lidac_mutual_ave);
  if (error != 0) {
    goto resume_scanning;
  } else {
  }
  error = cyapa_gen5_read_self_idac_data(cyapa, & gidac_self_rx, & gidac_self_tx,
                                         & lidac_self_max, & lidac_self_min, & lidac_self_ave);
  if (error != 0) {
    goto resume_scanning;
  } else {
  }
  tmp___0 = cyapa_gen5_execute_panel_scan(cyapa);
  error = (int )tmp___0;
  if (error != 0) {
    goto resume_scanning;
  } else {
  }
  error = cyapa_gen5_read_panel_scan_raw_data(cyapa, 43, 0, cyapa->electrodes_x * cyapa->electrodes_y,
                                              & raw_cap_mutual_max, & raw_cap_mutual_min,
                                              & raw_cap_mutual_ave, (u8 *)0U);
  if (error != 0) {
    goto resume_scanning;
  } else {
  }
  error = cyapa_gen5_read_panel_scan_raw_data(cyapa, 43, 3, cyapa->electrodes_x + cyapa->electrodes_y,
                                              & raw_cap_self_max, & raw_cap_self_min,
                                              & raw_cap_self_ave, (u8 *)0U);
  if (error != 0) {
    goto resume_scanning;
  } else {
  }
  error = cyapa_gen5_read_panel_scan_raw_data(cyapa, 43, 2, cyapa->electrodes_x * cyapa->electrodes_y,
                                              & mutual_diffdata_max, & mutual_diffdata_min,
                                              & mutual_diffdata_ave, (u8 *)0U);
  if (error != 0) {
    goto resume_scanning;
  } else {
  }
  error = cyapa_gen5_read_panel_scan_raw_data(cyapa, 43, 5, cyapa->electrodes_x + cyapa->electrodes_y,
                                              & self_diffdata_max, & self_diffdata_min,
                                              & self_diffdata_ave, (u8 *)0U);
  if (error != 0) {
    goto resume_scanning;
  } else {
  }
  error = cyapa_gen5_read_panel_scan_raw_data(cyapa, 43, 1, cyapa->electrodes_x * cyapa->electrodes_y,
                                              & mutual_baseline_max, & mutual_baseline_min,
                                              & mutual_baseline_ave, (u8 *)0U);
  if (error != 0) {
    goto resume_scanning;
  } else {
  }
  error = cyapa_gen5_read_panel_scan_raw_data(cyapa, 43, 4, cyapa->electrodes_x + cyapa->electrodes_y,
                                              & self_baseline_max, & self_baseline_min,
                                              & self_baseline_ave, (u8 *)0U);
  if (error != 0) {
  } else {
  }
  resume_scanning:
  resume_error = cyapa_gen5_resume_scanning(cyapa);
  if (resume_error != 0 || error != 0) {
    return ((ssize_t )(resume_error != 0 ? resume_error : error));
  } else {
  }
  size = scnprintf(buf, 4096UL, "%d %d %d %d %d %d %d %d %d %d %d ", gidac_mutual_min,
                   gidac_mutual_max, gidac_mutual_ave, lidac_mutual_min, lidac_mutual_max,
                   lidac_mutual_ave, gidac_self_rx, gidac_self_tx, lidac_self_min,
                   lidac_self_max, lidac_self_ave);
  tmp___1 = scnprintf(buf + (unsigned long )size, 4096UL - (unsigned long )size, "%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d\n",
                      raw_cap_mutual_min, raw_cap_mutual_max, raw_cap_mutual_ave,
                      raw_cap_self_min, raw_cap_self_max, raw_cap_self_ave, mutual_diffdata_min,
                      mutual_diffdata_max, mutual_diffdata_ave, self_diffdata_min,
                      self_diffdata_max, self_diffdata_ave, mutual_baseline_min, mutual_baseline_max,
                      mutual_baseline_ave, self_baseline_min, self_baseline_max, self_baseline_ave);
  size = tmp___1 + size;
  return ((ssize_t )size);
}
}
static bool cyapa_gen5_sort_system_info_data(struct cyapa *cyapa , u8 *buf , int len )
{
  {
  if (((unsigned int )*(buf + 2UL) == 31U && (unsigned int )*(buf + 3UL) == 0U) && ((int )*(buf + 4UL) & 127) == 2) {
    return (1);
  } else {
  }
  return (0);
}
}
static int cyapa_gen5_bl_query_data(struct cyapa *cyapa )
{
  u8 bl_query_data_cmd[13U] ;
  u8 resp_data[31U] ;
  int resp_len ;
  int error ;
  {
  bl_query_data_cmd[0] = 4U;
  bl_query_data_cmd[1] = 0U;
  bl_query_data_cmd[2] = 11U;
  bl_query_data_cmd[3] = 0U;
  bl_query_data_cmd[4] = 64U;
  bl_query_data_cmd[5] = 0U;
  bl_query_data_cmd[6] = 1U;
  bl_query_data_cmd[7] = 60U;
  bl_query_data_cmd[8] = 0U;
  bl_query_data_cmd[9] = 0U;
  bl_query_data_cmd[10] = 176U;
  bl_query_data_cmd[11] = 66U;
  bl_query_data_cmd[12] = 23U;
  resp_len = 31;
  error = cyapa_i2c_pip_cmd_irq_sync(cyapa, (u8 *)(& bl_query_data_cmd), 13, (u8 *)(& resp_data),
                                     & resp_len, 500UL, & cyapa_gen5_sort_tsg_pip_bl_resp_data,
                                     0);
  if ((error != 0 || resp_len != 31) || (unsigned int )resp_data[5] != 0U) {
    return (error != 0 ? error : -5);
  } else {
  }
  memcpy((void *)(& cyapa->product_id), (void const *)(& resp_data) + 8U, 5UL);
  cyapa->product_id[5] = 45;
  memcpy((void *)(& cyapa->product_id) + 6U, (void const *)(& resp_data) + 13U,
           6UL);
  cyapa->product_id[12] = 45;
  memcpy((void *)(& cyapa->product_id) + 13U, (void const *)(& resp_data) + 19U,
           2UL);
  cyapa->product_id[15] = 0;
  cyapa->fw_maj_ver = resp_data[22];
  cyapa->fw_min_ver = resp_data[23];
  return (0);
}
}
static int cyapa_gen5_get_query_data(struct cyapa *cyapa )
{
  u8 get_system_information[7U] ;
  u8 resp_data[71U] ;
  int resp_len ;
  u16 product_family ;
  int error ;
  u16 tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  {
  get_system_information[0] = 4U;
  get_system_information[1] = 0U;
  get_system_information[2] = 5U;
  get_system_information[3] = 0U;
  get_system_information[4] = 47U;
  get_system_information[5] = 0U;
  get_system_information[6] = 2U;
  resp_len = 71;
  error = cyapa_i2c_pip_cmd_irq_sync(cyapa, (u8 *)(& get_system_information), 7, (u8 *)(& resp_data),
                                     & resp_len, 2000UL, & cyapa_gen5_sort_system_info_data,
                                     0);
  if (error != 0 || (unsigned int )resp_len <= 70U) {
    return (error != 0 ? error : -5);
  } else {
  }
  product_family = get_unaligned_le16((void const *)(& resp_data) + 7U);
  if (((int )product_family & 61440) != 4096) {
    return (-22);
  } else {
  }
  cyapa->fw_maj_ver = resp_data[15];
  cyapa->fw_min_ver = resp_data[16];
  cyapa->electrodes_x = (int )resp_data[52];
  cyapa->electrodes_y = (int )resp_data[53];
  tmp = get_unaligned_le16((void const *)(& resp_data) + 54U);
  cyapa->physical_size_x = (int )((unsigned int )tmp / 100U);
  tmp___0 = get_unaligned_le16((void const *)(& resp_data) + 56U);
  cyapa->physical_size_y = (int )((unsigned int )tmp___0 / 100U);
  tmp___1 = get_unaligned_le16((void const *)(& resp_data) + 58U);
  cyapa->max_abs_x = (int )tmp___1;
  tmp___2 = get_unaligned_le16((void const *)(& resp_data) + 60U);
  cyapa->max_abs_y = (int )tmp___2;
  tmp___3 = get_unaligned_le16((void const *)(& resp_data) + 62U);
  cyapa->max_z = (int )tmp___3;
  cyapa->x_origin = (unsigned int )resp_data[64] & 1U;
  cyapa->y_origin = (unsigned int )resp_data[65] & 1U;
  cyapa->btn_capability = (unsigned int )((u8 )((int )resp_data[70] << 3)) & 56U;
  memcpy((void *)(& cyapa->product_id), (void const *)(& resp_data) + 33U, 5UL);
  cyapa->product_id[5] = 45;
  memcpy((void *)(& cyapa->product_id) + 6U, (void const *)(& resp_data) + 38U,
           6UL);
  cyapa->product_id[12] = 45;
  memcpy((void *)(& cyapa->product_id) + 13U, (void const *)(& resp_data) + 44U,
           2UL);
  cyapa->product_id[15] = 0;
  if ((((((cyapa->electrodes_x == 0 || cyapa->electrodes_y == 0) || cyapa->physical_size_x == 0) || cyapa->physical_size_y == 0) || cyapa->max_abs_x == 0) || cyapa->max_abs_y == 0) || cyapa->max_z == 0) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int cyapa_gen5_do_operational_check(struct cyapa *cyapa )
{
  struct device *dev ;
  int error ;
  size_t tmp ;
  int tmp___0 ;
  {
  dev = & (cyapa->client)->dev;
  if ((unsigned int )cyapa->gen != 5U) {
    return (-19);
  } else {
  }
  switch ((unsigned int )cyapa->state) {
  case 5U:
  error = cyapa_gen5_bl_exit(cyapa);
  if (error != 0) {
    cyapa_gen5_bl_query_data(cyapa);
    goto out;
  } else {
  }
  cyapa->state = 6;
  case 6U:
  error = cyapa_gen5_set_power_mode(cyapa, 252, 0);
  if (error != 0) {
    dev_warn((struct device const *)dev, "%s: failed to set power active mode.\n",
             "cyapa_gen5_do_operational_check");
  } else {
  }
  error = cyapa_gen5_get_query_data(cyapa);
  if (error != 0) {
    goto out;
  } else {
  }
  tmp = strlen((char const *)(& product_id));
  tmp___0 = memcmp((void const *)(& cyapa->product_id), (void const *)(& product_id),
                   tmp);
  if (tmp___0 != 0) {
    dev_err((struct device const *)dev, "%s: unknown product ID (%s)\n", "cyapa_gen5_do_operational_check",
            (char *)(& cyapa->product_id));
    error = -22;
  } else {
  }
  goto ldv_26744;
  default:
  error = -22;
  }
  ldv_26744: ;
  out: ;
  return (error);
}
}
static bool cyapa_gen5_irq_cmd_handler(struct cyapa *cyapa )
{
  struct cyapa_gen5_cmd_states *gen5_pip ;
  int length ;
  u16 tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  gen5_pip = & cyapa->cmd_states.gen5;
  tmp___2 = atomic_read((atomic_t const *)(& gen5_pip->cmd_issued));
  if (tmp___2 != 0) {
    if (! gen5_pip->is_irq_mode) {
      return (0);
    } else {
    }
    cyapa_i2c_pip_read(cyapa, (u8 *)(& gen5_pip->irq_cmd_buf), 2UL);
    tmp = get_unaligned_le16((void const *)(& gen5_pip->irq_cmd_buf));
    length = (int )tmp;
    length = 2 > length ? 2 : length;
    if (length > 2) {
      cyapa_i2c_pip_read(cyapa, (u8 *)(& gen5_pip->irq_cmd_buf), (size_t )length);
    } else {
    }
    if ((unsigned long )gen5_pip->resp_sort_func == (unsigned long )((bool (*)(struct cyapa * ,
                                                                               u8 * ,
                                                                               int ))0)) {
      goto _L;
    } else {
      tmp___0 = (*(gen5_pip->resp_sort_func))(cyapa, (u8 *)(& gen5_pip->irq_cmd_buf),
                                              length);
      if (tmp___0) {
        tmp___1 = 0;
      } else {
        tmp___1 = 1;
      }
      if (tmp___1) {
        _L:
        length = 0;
        if ((unsigned long )gen5_pip->resp_len != (unsigned long )((int *)0)) {
          length = *(gen5_pip->resp_len);
        } else {
        }
        cyapa_empty_pip_output_data(cyapa, gen5_pip->resp_data, & length, gen5_pip->resp_sort_func);
        if ((unsigned long )gen5_pip->resp_len != (unsigned long )((int *)0) && length != 0) {
          *(gen5_pip->resp_len) = length;
          atomic_dec(& gen5_pip->cmd_issued);
          complete(& gen5_pip->cmd_ready);
        } else {
        }
        return (0);
      } else {
      }
    }
    if ((unsigned long )gen5_pip->resp_data != (unsigned long )((u8 *)0U) && (unsigned long )gen5_pip->resp_len != (unsigned long )((int *)0)) {
      *(gen5_pip->resp_len) = length < *(gen5_pip->resp_len) ? length : *(gen5_pip->resp_len);
      memcpy((void *)gen5_pip->resp_data, (void const *)(& gen5_pip->irq_cmd_buf),
               (size_t )*(gen5_pip->resp_len));
    } else {
    }
    atomic_dec(& gen5_pip->cmd_issued);
    complete(& gen5_pip->cmd_ready);
    return (0);
  } else {
  }
  return (1);
}
}
static void cyapa_gen5_report_buttons(struct cyapa *cyapa , struct cyapa_gen5_report_data const *report_data )
{
  struct input_dev *input ;
  u8 buttons ;
  {
  input = cyapa->input;
  buttons = report_data->report_head[5];
  buttons = (unsigned int )((u8 )((int )buttons << 3)) & 56U;
  if (((int )cyapa->btn_capability & 8) != 0) {
    input_report_key(input, 272U, ((int )buttons & 8) != 0);
  } else {
  }
  if (((int )cyapa->btn_capability & 32) != 0) {
    input_report_key(input, 274U, ((int )buttons & 32) != 0);
  } else {
  }
  if (((int )cyapa->btn_capability & 16) != 0) {
    input_report_key(input, 273U, ((int )buttons & 16) != 0);
  } else {
  }
  input_sync(input);
  return;
}
}
static void cyapa_gen5_report_slot_data(struct cyapa *cyapa , struct cyapa_gen5_touch_record const *touch )
{
  struct input_dev *input ;
  u8 event_id ;
  int slot ;
  int x ;
  int y ;
  {
  input = cyapa->input;
  event_id = (unsigned int )((u8 )((int )((unsigned char )touch->touch_tip_event_id) >> 5)) & 3U;
  slot = (int )touch->touch_tip_event_id & 31;
  if ((unsigned int )event_id == 3U) {
    return;
  } else {
  }
  input_mt_slot(input, slot);
  input_mt_report_slot_state(input, 0U, 1);
  x = ((int )touch->x_hi << 8) | (int )touch->x_lo;
  if ((unsigned int )cyapa->x_origin != 0U) {
    x = cyapa->max_abs_x - x;
  } else {
  }
  input_report_abs(input, 53U, x);
  y = ((int )touch->y_hi << 8) | (int )touch->y_lo;
  if ((unsigned int )cyapa->y_origin != 0U) {
    y = cyapa->max_abs_y - y;
  } else {
  }
  input_report_abs(input, 54U, y);
  input_report_abs(input, 58U, (int )touch->z);
  input_report_abs(input, 48U, (int )touch->major_axis_len);
  input_report_abs(input, 49U, (int )touch->minor_axis_len);
  input_report_abs(input, 50U, (int )touch->major_tool_len);
  input_report_abs(input, 51U, (int )touch->minor_tool_len);
  input_report_abs(input, 52U, (int )touch->orientation);
  return;
}
}
static void cyapa_gen5_report_touches(struct cyapa *cyapa , struct cyapa_gen5_report_data const *report_data )
{
  struct input_dev *input ;
  unsigned int touch_num ;
  int i ;
  {
  input = cyapa->input;
  touch_num = (unsigned int )report_data->report_head[5] & 31U;
  i = 0;
  goto ldv_26774;
  ldv_26773:
  cyapa_gen5_report_slot_data(cyapa, (struct cyapa_gen5_touch_record const *)(& report_data->touch_records) + (unsigned long )i);
  i = i + 1;
  ldv_26774: ;
  if ((unsigned int )i < touch_num) {
    goto ldv_26773;
  } else {
  }
  input_mt_sync_frame(input);
  input_sync(input);
  return;
}
}
static int cyapa_gen5_irq_handler(struct cyapa *cyapa )
{
  struct device *dev ;
  struct cyapa_gen5_report_data report_data ;
  int ret ;
  u8 report_id ;
  unsigned int report_len ;
  ssize_t tmp ;
  u16 tmp___0 ;
  ssize_t tmp___1 ;
  {
  dev = & (cyapa->client)->dev;
  if ((unsigned int )cyapa->gen != 5U || (unsigned int )cyapa->state != 6U) {
    dev_err((struct device const *)dev, "invalid device state, gen=%d, state=0x%02x\n",
            (int )cyapa->gen, (unsigned int )cyapa->state);
    return (-22);
  } else {
  }
  tmp = cyapa_i2c_pip_read(cyapa, (u8 *)(& report_data), 2UL);
  ret = (int )tmp;
  if (ret != 2) {
    dev_err((struct device const *)dev, "failed to read length bytes, (%d)\n", ret);
    return (-22);
  } else {
  }
  tmp___0 = get_unaligned_le16((void const *)(& report_data.report_head));
  report_len = (unsigned int )tmp___0;
  if (report_len <= 1U) {
    dev_err((struct device const *)dev, "invalid report_len=%d. bytes: %02x %02x\n",
            report_len, (int )report_data.report_head[0], (int )report_data.report_head[1]);
    return (-22);
  } else {
  }
  if (report_len == 2U) {
    return (0);
  } else {
  }
  tmp___1 = cyapa_i2c_pip_read(cyapa, (u8 *)(& report_data), (size_t )report_len);
  ret = (int )tmp___1;
  if ((unsigned int )ret != report_len) {
    dev_err((struct device const *)dev, "failed to read %d bytes report data, (%d)\n",
            report_len, ret);
    return (-22);
  } else {
  }
  report_id = report_data.report_head[2];
  if ((unsigned int )report_id == 4U && report_len == 4U) {
    return (0);
  } else
  if ((((unsigned int )report_id != 1U && (unsigned int )report_id != 3U) && (unsigned int )report_id != 5U) && (unsigned int )report_id != 6U) {
    dev_err((struct device const *)dev, "invalid report_id=0x%02x\n", (int )report_id);
    return (-22);
  } else {
  }
  if ((unsigned int )report_id == 1U && (report_len <= 6U || report_len > 127U)) {
    dev_err((struct device const *)dev, "invalid touch packet length=%d\n", report_len);
    return (0);
  } else {
  }
  if ((((unsigned int )report_id == 3U || (unsigned int )report_id == 5U) || (unsigned int )report_id == 6U) && (report_len <= 5U || report_len > 14U)) {
    dev_err((struct device const *)dev, "invalid button packet length=%d\n", report_len);
    return (0);
  } else {
  }
  if ((unsigned int )report_id == 1U) {
    cyapa_gen5_report_touches(cyapa, (struct cyapa_gen5_report_data const *)(& report_data));
  } else {
    cyapa_gen5_report_buttons(cyapa, (struct cyapa_gen5_report_data const *)(& report_data));
  }
  return (0);
}
}
static int cyapa_gen5_bl_activate(struct cyapa *cyapa )
{
  {
  return (0);
}
}
static int cyapa_gen5_bl_deactivate(struct cyapa *cyapa )
{
  {
  return (0);
}
}
struct cyapa_dev_ops const cyapa_gen5_ops =
     {& cyapa_gen5_check_fw, & cyapa_gen5_bl_enter, & cyapa_gen5_bl_activate, & cyapa_gen5_bl_initiate,
    & cyapa_gen5_do_fw_update, & cyapa_gen5_bl_deactivate, & cyapa_gen5_show_baseline,
    & cyapa_gen5_do_calibrate, & cyapa_gen5_initialize, & cyapa_gen5_state_parse,
    & cyapa_gen5_do_operational_check, & cyapa_gen5_irq_handler, & cyapa_gen5_irq_cmd_handler,
    & cyapa_empty_pip_output_data, & cyapa_gen5_set_power_mode};
void ldv_initialize_cyapa_dev_ops_3(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  tmp = ldv_init_zalloc(32UL);
  cyapa_gen5_ops_group0 = (struct firmware const *)tmp;
  tmp___0 = ldv_init_zalloc(1104UL);
  cyapa_gen5_ops_group1 = (struct cyapa *)tmp___0;
  tmp___1 = ldv_init_zalloc(48UL);
  cyapa_gen5_ops_group2 = (struct device_attribute *)tmp___1;
  tmp___2 = ldv_init_zalloc(1416UL);
  cyapa_gen5_ops_group3 = (struct device *)tmp___2;
  return;
}
}
void ldv_main_exported_3(void)
{
  int *ldvarg9 ;
  void *tmp ;
  u8 *ldvarg10 ;
  void *tmp___0 ;
  int ldvarg4 ;
  bool (*ldvarg8)(struct cyapa * , u8 * , int ) ;
  size_t ldvarg6 ;
  u8 *ldvarg5 ;
  void *tmp___1 ;
  u8 ldvarg12 ;
  char *ldvarg3 ;
  void *tmp___2 ;
  char *ldvarg7 ;
  void *tmp___3 ;
  u16 ldvarg11 ;
  int tmp___4 ;
  {
  tmp = ldv_init_zalloc(4UL);
  ldvarg9 = (int *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg10 = (u8 *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg5 = (u8 *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg3 = (char *)tmp___2;
  tmp___3 = ldv_init_zalloc(1UL);
  ldvarg7 = (char *)tmp___3;
  ldv_memset((void *)(& ldvarg4), 0, 4UL);
  ldv_memset((void *)(& ldvarg8), 0, 8UL);
  ldv_memset((void *)(& ldvarg6), 0, 8UL);
  ldv_memset((void *)(& ldvarg12), 0, 1UL);
  ldv_memset((void *)(& ldvarg11), 0, 2UL);
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_3 == 1) {
    cyapa_gen5_irq_cmd_handler(cyapa_gen5_ops_group1);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_26814;
  case 1: ;
  if (ldv_state_variable_3 == 1) {
    cyapa_gen5_check_fw(cyapa_gen5_ops_group1, cyapa_gen5_ops_group0);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_26814;
  case 2: ;
  if (ldv_state_variable_3 == 1) {
    cyapa_gen5_set_power_mode(cyapa_gen5_ops_group1, (int )ldvarg12, (int )ldvarg11);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_26814;
  case 3: ;
  if (ldv_state_variable_3 == 1) {
    cyapa_gen5_do_fw_update(cyapa_gen5_ops_group1, cyapa_gen5_ops_group0);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_26814;
  case 4: ;
  if (ldv_state_variable_3 == 1) {
    cyapa_gen5_irq_handler(cyapa_gen5_ops_group1);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_26814;
  case 5: ;
  if (ldv_state_variable_3 == 1) {
    cyapa_empty_pip_output_data(cyapa_gen5_ops_group1, ldvarg10, ldvarg9, ldvarg8);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_26814;
  case 6: ;
  if (ldv_state_variable_3 == 1) {
    cyapa_gen5_initialize(cyapa_gen5_ops_group1);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_26814;
  case 7: ;
  if (ldv_state_variable_3 == 1) {
    cyapa_gen5_do_calibrate(cyapa_gen5_ops_group3, cyapa_gen5_ops_group2, (char const *)ldvarg7,
                            ldvarg6);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_26814;
  case 8: ;
  if (ldv_state_variable_3 == 1) {
    cyapa_gen5_bl_enter(cyapa_gen5_ops_group1);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_26814;
  case 9: ;
  if (ldv_state_variable_3 == 1) {
    cyapa_gen5_bl_initiate(cyapa_gen5_ops_group1, cyapa_gen5_ops_group0);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_26814;
  case 10: ;
  if (ldv_state_variable_3 == 1) {
    cyapa_gen5_do_operational_check(cyapa_gen5_ops_group1);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_26814;
  case 11: ;
  if (ldv_state_variable_3 == 1) {
    cyapa_gen5_bl_deactivate(cyapa_gen5_ops_group1);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_26814;
  case 12: ;
  if (ldv_state_variable_3 == 1) {
    cyapa_gen5_bl_activate(cyapa_gen5_ops_group1);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_26814;
  case 13: ;
  if (ldv_state_variable_3 == 1) {
    cyapa_gen5_state_parse(cyapa_gen5_ops_group1, ldvarg5, ldvarg4);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_26814;
  case 14: ;
  if (ldv_state_variable_3 == 1) {
    cyapa_gen5_show_baseline(cyapa_gen5_ops_group3, cyapa_gen5_ops_group2, ldvarg3);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_26814;
  default:
  ldv_stop();
  }
  ldv_26814: ;
  return;
}
}
void ldv_mutex_lock_105(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_106(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_107(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_108(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type ldv_func_res ;
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
void ldv_mutex_unlock_109(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_110(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_111(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_112(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_cmd_lock_of_cyapa_gen5_cmd_states(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cmd_lock_of_cyapa_gen5_cmd_states(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
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
static int ldv_mutex_cmd_lock_of_cyapa_gen5_cmd_states = 1;
int ldv_mutex_lock_interruptible_cmd_lock_of_cyapa_gen5_cmd_states(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cmd_lock_of_cyapa_gen5_cmd_states != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_cmd_lock_of_cyapa_gen5_cmd_states = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_cmd_lock_of_cyapa_gen5_cmd_states(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cmd_lock_of_cyapa_gen5_cmd_states != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_cmd_lock_of_cyapa_gen5_cmd_states = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_cmd_lock_of_cyapa_gen5_cmd_states(struct mutex *lock )
{
  {
  if (ldv_mutex_cmd_lock_of_cyapa_gen5_cmd_states != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_cmd_lock_of_cyapa_gen5_cmd_states = 2;
  return;
}
}
int ldv_mutex_trylock_cmd_lock_of_cyapa_gen5_cmd_states(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_cmd_lock_of_cyapa_gen5_cmd_states != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_cmd_lock_of_cyapa_gen5_cmd_states = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_cmd_lock_of_cyapa_gen5_cmd_states(atomic_t *cnt ,
                                                                    struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_cmd_lock_of_cyapa_gen5_cmd_states != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_cmd_lock_of_cyapa_gen5_cmd_states = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_cmd_lock_of_cyapa_gen5_cmd_states(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cmd_lock_of_cyapa_gen5_cmd_states == 1) {
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
void ldv_mutex_unlock_cmd_lock_of_cyapa_gen5_cmd_states(struct mutex *lock )
{
  {
  if (ldv_mutex_cmd_lock_of_cyapa_gen5_cmd_states != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_cmd_lock_of_cyapa_gen5_cmd_states = 1;
  return;
}
}
void ldv_usb_lock_device_cmd_lock_of_cyapa_gen5_cmd_states(void)
{
  {
  ldv_mutex_lock_cmd_lock_of_cyapa_gen5_cmd_states((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_cmd_lock_of_cyapa_gen5_cmd_states(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_cmd_lock_of_cyapa_gen5_cmd_states((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_cmd_lock_of_cyapa_gen5_cmd_states(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_cmd_lock_of_cyapa_gen5_cmd_states((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_cmd_lock_of_cyapa_gen5_cmd_states(void)
{
  {
  ldv_mutex_unlock_cmd_lock_of_cyapa_gen5_cmd_states((struct mutex *)0);
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
static int ldv_mutex_state_sync_lock_of_cyapa = 1;
int ldv_mutex_lock_interruptible_state_sync_lock_of_cyapa(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_state_sync_lock_of_cyapa != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_state_sync_lock_of_cyapa = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_state_sync_lock_of_cyapa(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_state_sync_lock_of_cyapa != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_state_sync_lock_of_cyapa = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_state_sync_lock_of_cyapa(struct mutex *lock )
{
  {
  if (ldv_mutex_state_sync_lock_of_cyapa != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_state_sync_lock_of_cyapa = 2;
  return;
}
}
int ldv_mutex_trylock_state_sync_lock_of_cyapa(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_state_sync_lock_of_cyapa != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_state_sync_lock_of_cyapa = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_state_sync_lock_of_cyapa(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_state_sync_lock_of_cyapa != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_state_sync_lock_of_cyapa = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_state_sync_lock_of_cyapa(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_state_sync_lock_of_cyapa == 1) {
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
void ldv_mutex_unlock_state_sync_lock_of_cyapa(struct mutex *lock )
{
  {
  if (ldv_mutex_state_sync_lock_of_cyapa != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_state_sync_lock_of_cyapa = 1;
  return;
}
}
void ldv_usb_lock_device_state_sync_lock_of_cyapa(void)
{
  {
  ldv_mutex_lock_state_sync_lock_of_cyapa((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_state_sync_lock_of_cyapa(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_state_sync_lock_of_cyapa((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_state_sync_lock_of_cyapa(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_state_sync_lock_of_cyapa((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_state_sync_lock_of_cyapa(void)
{
  {
  ldv_mutex_unlock_state_sync_lock_of_cyapa((struct mutex *)0);
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_cmd_lock_of_cyapa_gen5_cmd_states != 1) {
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
  if (ldv_mutex_state_sync_lock_of_cyapa != 1) {
    ldv_error();
  } else {
  }
  return;
}
}
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __pm_runtime_disable(struct device *arg0, bool arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pm_runtime_resume(struct device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __pm_runtime_set_status(struct device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __pm_runtime_suspend(struct device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void __pm_runtime_use_autosuspend(struct device *arg0, bool arg1) {
  return;
}
void complete(struct completion *arg0) {
  return;
}
unsigned short __VERIFIER_nondet_ushort(void);
u16 crc_itu_t(u16 arg0, const u8 *arg1, size_t arg2) {
  return __VERIFIER_nondet_ushort();
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int devm_add_action(struct device *arg0, void (*arg1)(void *), void *arg2) {
  return __VERIFIER_nondet_int();
}
struct input_dev *devm_input_allocate_device(struct device *arg0) {
  return ldv_malloc(sizeof(struct input_dev));
}
void *devm_kmalloc(struct device *arg0, size_t arg1, gfp_t arg2) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int devm_request_threaded_irq(struct device *arg0, unsigned int arg1, irqreturn_t (*arg2)(int, void *), irqreturn_t (*arg3)(int, void *), unsigned long arg4, const char *arg5, void *arg6) {
  return __VERIFIER_nondet_int();
}
void disable_irq(unsigned int arg0) {
  return;
}
void enable_irq(unsigned int arg0) {
  return;
}
void i2c_del_driver(struct i2c_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int i2c_master_recv(const struct i2c_client *arg0, char *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int i2c_master_send(const struct i2c_client *arg0, const char *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int i2c_register_driver(struct module *arg0, struct i2c_driver *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
s32 i2c_smbus_read_block_data(const struct i2c_client *arg0, u8 arg1, u8 *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
s32 i2c_smbus_read_byte_data(const struct i2c_client *arg0, u8 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
s32 i2c_smbus_read_i2c_block_data(const struct i2c_client *arg0, u8 arg1, u8 arg2, u8 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
s32 i2c_smbus_write_byte_data(const struct i2c_client *arg0, u8 arg1, u8 arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
s32 i2c_smbus_write_i2c_block_data(const struct i2c_client *arg0, u8 arg1, u8 arg2, const u8 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
s32 i2c_smbus_xfer(struct i2c_adapter *arg0, u16 arg1, unsigned short arg2, char arg3, u8 arg4, int arg5, union i2c_smbus_data *arg6) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int i2c_transfer(struct i2c_adapter *arg0, struct i2c_msg *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void input_alloc_absinfo(struct input_dev *arg0) {
  return;
}
void input_event(struct input_dev *arg0, unsigned int arg1, unsigned int arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int input_mt_init_slots(struct input_dev *arg0, unsigned int arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
void input_mt_report_slot_state(struct input_dev *arg0, unsigned int arg1, bool arg2) {
  return;
}
void input_mt_sync_frame(struct input_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int input_register_device(struct input_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void input_set_abs_params(struct input_dev *arg0, unsigned int arg1, int arg2, int arg3, int arg4, int arg5) {
  return;
}
void input_unregister_device(struct input_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int irq_set_irq_wake(unsigned int arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int kstrtou16(const char *arg0, unsigned int arg1, u16 *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_complete_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_late_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_noirq_6() {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_late_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_noirq_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_prepare_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_early_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_noirq_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_early_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_noirq_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_late_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_noirq_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_early_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_noirq_6() {
  return __VERIFIER_nondet_int();
}
void msleep(unsigned int arg0) {
  return;
}
void mutex_lock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_lock_interruptible(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mutex_trylock(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
void pm_runtime_enable(struct device *arg0) {
  return;
}
void pm_runtime_set_autosuspend_delay(struct device *arg0, int arg1) {
  return;
}
void pm_wakeup_event(struct device *arg0, unsigned int arg1) {
  return;
}
void release_firmware(const struct firmware *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_firmware(const struct firmware **arg0, const char *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scnprintf(char *arg0, size_t arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sysfs_create_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sysfs_merge_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool sysfs_streq(const char *arg0, const char *arg1) {
  return __VERIFIER_nondet_bool();
}
void sysfs_unmerge_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return;
}
void usleep_range(unsigned long arg0, unsigned long arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int wait_for_completion_timeout(struct completion *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
