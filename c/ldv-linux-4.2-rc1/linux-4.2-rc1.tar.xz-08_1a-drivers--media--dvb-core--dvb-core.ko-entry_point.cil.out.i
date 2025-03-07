extern void __VERIFIER_error() __attribute__ ((__noreturn__));
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
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
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
typedef bool ldv_func_ret_type;
typedef bool ldv_func_ret_type___0;
typedef bool ldv_func_ret_type___1;
typedef bool ldv_func_ret_type___2;
typedef unsigned char __u8;
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
enum hrtimer_restart;
typedef struct poll_table_struct poll_table;
enum dmx_output {
    DMX_OUT_DECODER = 0,
    DMX_OUT_TAP = 1,
    DMX_OUT_TS_TAP = 2,
    DMX_OUT_TSDEMUX_TAP = 3
} ;
typedef enum dmx_output dmx_output_t;
enum dmx_input {
    DMX_IN_FRONTEND = 0,
    DMX_IN_DVR = 1
} ;
typedef enum dmx_input dmx_input_t;
enum dmx_ts_pes {
    DMX_PES_AUDIO0 = 0,
    DMX_PES_VIDEO0 = 1,
    DMX_PES_TELETEXT0 = 2,
    DMX_PES_SUBTITLE0 = 3,
    DMX_PES_PCR0 = 4,
    DMX_PES_AUDIO1 = 5,
    DMX_PES_VIDEO1 = 6,
    DMX_PES_TELETEXT1 = 7,
    DMX_PES_SUBTITLE1 = 8,
    DMX_PES_PCR1 = 9,
    DMX_PES_AUDIO2 = 10,
    DMX_PES_VIDEO2 = 11,
    DMX_PES_TELETEXT2 = 12,
    DMX_PES_SUBTITLE2 = 13,
    DMX_PES_PCR2 = 14,
    DMX_PES_AUDIO3 = 15,
    DMX_PES_VIDEO3 = 16,
    DMX_PES_TELETEXT3 = 17,
    DMX_PES_SUBTITLE3 = 18,
    DMX_PES_PCR3 = 19,
    DMX_PES_OTHER = 20
} ;
typedef enum dmx_ts_pes dmx_pes_type_t;
struct dmx_filter {
   __u8 filter[16U] ;
   __u8 mask[16U] ;
   __u8 mode[16U] ;
};
typedef struct dmx_filter dmx_filter_t;
struct dmx_sct_filter_params {
   __u16 pid ;
   dmx_filter_t filter ;
   __u32 timeout ;
   __u32 flags ;
};
struct dmx_pes_filter_params {
   __u16 pid ;
   dmx_input_t input ;
   dmx_output_t output ;
   dmx_pes_type_t pes_type ;
   __u32 flags ;
};
struct dmx_caps {
   __u32 caps ;
   int num_decoders ;
};
enum dmx_source {
    DMX_SOURCE_FRONT0 = 0,
    DMX_SOURCE_FRONT1 = 1,
    DMX_SOURCE_FRONT2 = 2,
    DMX_SOURCE_FRONT3 = 3,
    DMX_SOURCE_DVR0 = 16,
    DMX_SOURCE_DVR1 = 17,
    DMX_SOURCE_DVR2 = 18,
    DMX_SOURCE_DVR3 = 19
} ;
typedef enum dmx_source dmx_source_t;
struct dmx_stc {
   unsigned int num ;
   unsigned int base ;
   __u64 stc ;
};
enum dmx_success {
    DMX_OK = 0,
    DMX_LENGTH_ERROR = 1,
    DMX_OVERRUN_ERROR = 2,
    DMX_CRC_ERROR = 3,
    DMX_FRAME_ERROR = 4,
    DMX_FIFO_ERROR = 5,
    DMX_MISSED_ERROR = 6
} ;
struct dmx_demux;
struct dmx_ts_feed {
   int is_filtering ;
   struct dmx_demux *parent ;
   void *priv ;
   int (*set)(struct dmx_ts_feed * , u16 , int , enum dmx_ts_pes , size_t , struct timespec ) ;
   int (*start_filtering)(struct dmx_ts_feed * ) ;
   int (*stop_filtering)(struct dmx_ts_feed * ) ;
};
struct dmx_section_feed;
struct dmx_section_filter {
   u8 filter_value[18U] ;
   u8 filter_mask[18U] ;
   u8 filter_mode[18U] ;
   struct dmx_section_feed *parent ;
   void *priv ;
};
struct dmx_section_feed {
   int is_filtering ;
   struct dmx_demux *parent ;
   void *priv ;
   int check_crc ;
   u32 crc_val ;
   u8 *secbuf ;
   u8 secbuf_base[4284U] ;
   u16 secbufp ;
   u16 seclen ;
   u16 tsfeedp ;
   int (*set)(struct dmx_section_feed * , u16 , size_t , int ) ;
   int (*allocate_filter)(struct dmx_section_feed * , struct dmx_section_filter ** ) ;
   int (*release_filter)(struct dmx_section_feed * , struct dmx_section_filter * ) ;
   int (*start_filtering)(struct dmx_section_feed * ) ;
   int (*stop_filtering)(struct dmx_section_feed * ) ;
};
enum dmx_frontend_source {
    DMX_MEMORY_FE = 0,
    DMX_FRONTEND_0 = 1,
    DMX_FRONTEND_1 = 2,
    DMX_FRONTEND_2 = 3,
    DMX_FRONTEND_3 = 4,
    DMX_STREAM_0 = 5,
    DMX_STREAM_1 = 6,
    DMX_STREAM_2 = 7,
    DMX_STREAM_3 = 8
} ;
struct dmx_frontend {
   struct list_head connectivity_list ;
   enum dmx_frontend_source source ;
};
struct dmx_demux {
   u32 capabilities ;
   struct dmx_frontend *frontend ;
   void *priv ;
   int (*open)(struct dmx_demux * ) ;
   int (*close)(struct dmx_demux * ) ;
   int (*write)(struct dmx_demux * , char const * , size_t ) ;
   int (*allocate_ts_feed)(struct dmx_demux * , struct dmx_ts_feed ** , int (*)(u8 const * ,
                                                                                size_t ,
                                                                                u8 const * ,
                                                                                size_t ,
                                                                                struct dmx_ts_feed * ,
                                                                                enum dmx_success ) ) ;
   int (*release_ts_feed)(struct dmx_demux * , struct dmx_ts_feed * ) ;
   int (*allocate_section_feed)(struct dmx_demux * , struct dmx_section_feed ** ,
                                int (*)(u8 const * , size_t , u8 const * , size_t ,
                                        struct dmx_section_filter * , enum dmx_success ) ) ;
   int (*release_section_feed)(struct dmx_demux * , struct dmx_section_feed * ) ;
   int (*add_frontend)(struct dmx_demux * , struct dmx_frontend * ) ;
   int (*remove_frontend)(struct dmx_demux * , struct dmx_frontend * ) ;
   struct list_head *(*get_frontends)(struct dmx_demux * ) ;
   int (*connect_frontend)(struct dmx_demux * , struct dmx_frontend * ) ;
   int (*disconnect_frontend)(struct dmx_demux * ) ;
   int (*get_pes_pids)(struct dmx_demux * , u16 * ) ;
   int (*get_caps)(struct dmx_demux * , struct dmx_caps * ) ;
   int (*set_source)(struct dmx_demux * , dmx_source_t const * ) ;
   int (*get_stc)(struct dmx_demux * , unsigned int , u64 * , unsigned int * ) ;
};
struct dvb_ringbuffer {
   u8 *data ;
   ssize_t size ;
   ssize_t pread ;
   ssize_t pwrite ;
   int error ;
   wait_queue_head_t queue ;
   spinlock_t lock ;
};
enum dmxdev_type {
    DMXDEV_TYPE_NONE = 0,
    DMXDEV_TYPE_SEC = 1,
    DMXDEV_TYPE_PES = 2
} ;
enum dmxdev_state {
    DMXDEV_STATE_FREE = 0,
    DMXDEV_STATE_ALLOCATED = 1,
    DMXDEV_STATE_SET = 2,
    DMXDEV_STATE_GO = 3,
    DMXDEV_STATE_DONE = 4,
    DMXDEV_STATE_TIMEDOUT = 5
} ;
struct dmxdev_feed {
   u16 pid ;
   struct dmx_ts_feed *ts ;
   struct list_head next ;
};
union __anonunion_filter_250 {
   struct dmx_section_filter *sec ;
};
union __anonunion_feed_251 {
   struct list_head ts ;
   struct dmx_section_feed *sec ;
};
union __anonunion_params_252 {
   struct dmx_sct_filter_params sec ;
   struct dmx_pes_filter_params pes ;
};
struct dmxdev;
struct dmxdev_filter {
   union __anonunion_filter_250 filter ;
   union __anonunion_feed_251 feed ;
   union __anonunion_params_252 params ;
   enum dmxdev_type type ;
   enum dmxdev_state state ;
   struct dmxdev *dev ;
   struct dvb_ringbuffer buffer ;
   struct mutex mutex ;
   struct timer_list timer ;
   int todo ;
   u8 secheader[3U] ;
};
struct dmxdev {
   struct dvb_device *dvbdev ;
   struct dvb_device *dvr_dvbdev ;
   struct dmxdev_filter *filter ;
   struct dmx_demux *demux ;
   int filternum ;
   int capabilities ;
   unsigned char exit : 1 ;
   struct dmx_frontend *dvr_orig_fe ;
   struct dvb_ringbuffer dvr_buffer ;
   struct mutex mutex ;
   spinlock_t lock ;
};
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef __u8 uint8_t;
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
struct dvb_demux_feed;
struct dvb_demux_filter {
   struct dmx_section_filter filter ;
   u8 maskandmode[18U] ;
   u8 maskandnotmode[18U] ;
   int doneq ;
   struct dvb_demux_filter *next ;
   struct dvb_demux_feed *feed ;
   int index ;
   int state ;
   int type ;
   u16 hw_handle ;
   struct timer_list timer ;
};
union __anonunion_feed_242 {
   struct dmx_ts_feed ts ;
   struct dmx_section_feed sec ;
};
union __anonunion_cb_243 {
   int (*ts)(u8 const * , size_t , u8 const * , size_t , struct dmx_ts_feed * ,
             enum dmx_success ) ;
   int (*sec)(u8 const * , size_t , u8 const * , size_t , struct dmx_section_filter * ,
              enum dmx_success ) ;
};
struct dvb_demux;
struct dvb_demux_feed {
   union __anonunion_feed_242 feed ;
   union __anonunion_cb_243 cb ;
   struct dvb_demux *demux ;
   void *priv ;
   int type ;
   int state ;
   u16 pid ;
   u8 *buffer ;
   int buffer_size ;
   struct timespec timeout ;
   struct dvb_demux_filter *filter ;
   int ts_type ;
   enum dmx_ts_pes pes_type ;
   int cc ;
   int pusi_seen ;
   u16 peslen ;
   struct list_head list_head ;
   unsigned int index ;
};
struct dvb_demux {
   struct dmx_demux dmx ;
   void *priv ;
   int filternum ;
   int feednum ;
   int (*start_feed)(struct dvb_demux_feed * ) ;
   int (*stop_feed)(struct dvb_demux_feed * ) ;
   int (*write_to_decoder)(struct dvb_demux_feed * , u8 const * , size_t ) ;
   u32 (*check_crc32)(struct dvb_demux_feed * , u8 const * , size_t ) ;
   void (*memcopy)(struct dvb_demux_feed * , u8 * , u8 const * , size_t ) ;
   int users ;
   struct dvb_demux_filter *filter ;
   struct dvb_demux_feed *feed ;
   struct list_head frontend_list ;
   struct dvb_demux_feed *pesfilter[20U] ;
   u16 pids[20U] ;
   int playing ;
   int recording ;
   struct list_head feed_list ;
   u8 tsbuf[204U] ;
   int tsbufp ;
   struct mutex mutex ;
   spinlock_t lock ;
   uint8_t *cnt_storage ;
   struct timespec speed_last_time ;
   uint32_t speed_pkts_cnt ;
};
typedef int dvb_filter_pes2ts_cb_t(void * , unsigned char * );
struct dvb_filter_pes2ts {
   unsigned char buf[188U] ;
   unsigned char cc ;
   dvb_filter_pes2ts_cb_t *cb ;
   void *priv ;
};
struct dvb_audio_info {
   int layer ;
   u32 bit_rate ;
   u32 frequency ;
   u32 mode ;
   u32 mode_extension ;
   u32 emphasis ;
   u32 framesize ;
   u32 off ;
};
enum hrtimer_restart;
struct ca_slot_info {
   int num ;
   int type ;
   unsigned int flags ;
};
struct ca_caps {
   unsigned int slot_num ;
   unsigned int slot_type ;
   unsigned int descr_num ;
   unsigned int descr_type ;
};
struct dvb_ca_en50221 {
   struct module *owner ;
   int (*read_attribute_mem)(struct dvb_ca_en50221 * , int , int ) ;
   int (*write_attribute_mem)(struct dvb_ca_en50221 * , int , int , u8 ) ;
   int (*read_cam_control)(struct dvb_ca_en50221 * , int , u8 ) ;
   int (*write_cam_control)(struct dvb_ca_en50221 * , int , u8 , u8 ) ;
   int (*slot_reset)(struct dvb_ca_en50221 * , int ) ;
   int (*slot_shutdown)(struct dvb_ca_en50221 * , int ) ;
   int (*slot_ts_enable)(struct dvb_ca_en50221 * , int ) ;
   int (*poll_slot_status)(struct dvb_ca_en50221 * , int , int ) ;
   void *data ;
   void *private ;
};
struct dvb_ca_slot {
   int slot_state ;
   struct mutex slot_lock ;
   atomic_t camchange_count ;
   int camchange_type ;
   u32 config_base ;
   u8 config_option ;
   unsigned char da_irq_supported : 1 ;
   int link_buf_size ;
   struct dvb_ringbuffer rx_buffer ;
   unsigned long timeout ;
};
struct dvb_ca_private {
   struct dvb_ca_en50221 *pub ;
   struct dvb_device *dvbdev ;
   u32 flags ;
   unsigned int slot_count ;
   struct dvb_ca_slot *slot_info ;
   wait_queue_head_t wait_queue ;
   struct task_struct *thread ;
   unsigned char open : 1 ;
   unsigned char wakeup : 1 ;
   unsigned long delay ;
   int next_read_slot ;
   struct mutex ioctl_mutex ;
};
typedef long long __s64;
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
enum tk_offsets {
    TK_OFFS_REAL = 0,
    TK_OFFS_BOOT = 1,
    TK_OFFS_TAI = 2,
    TK_OFFS_MAX = 3
} ;
enum hrtimer_restart;
struct semaphore {
   raw_spinlock_t lock ;
   unsigned int count ;
   struct list_head wait_list ;
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
struct ratelimit_state {
   raw_spinlock_t lock ;
   int interval ;
   int burst ;
   int printed ;
   int missed ;
   unsigned long begin ;
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
enum fe_type {
    FE_QPSK = 0,
    FE_QAM = 1,
    FE_OFDM = 2,
    FE_ATSC = 3
} ;
enum fe_caps {
    FE_IS_STUPID = 0,
    FE_CAN_INVERSION_AUTO = 1,
    FE_CAN_FEC_1_2 = 2,
    FE_CAN_FEC_2_3 = 4,
    FE_CAN_FEC_3_4 = 8,
    FE_CAN_FEC_4_5 = 16,
    FE_CAN_FEC_5_6 = 32,
    FE_CAN_FEC_6_7 = 64,
    FE_CAN_FEC_7_8 = 128,
    FE_CAN_FEC_8_9 = 256,
    FE_CAN_FEC_AUTO = 512,
    FE_CAN_QPSK = 1024,
    FE_CAN_QAM_16 = 2048,
    FE_CAN_QAM_32 = 4096,
    FE_CAN_QAM_64 = 8192,
    FE_CAN_QAM_128 = 16384,
    FE_CAN_QAM_256 = 32768,
    FE_CAN_QAM_AUTO = 65536,
    FE_CAN_TRANSMISSION_MODE_AUTO = 131072,
    FE_CAN_BANDWIDTH_AUTO = 262144,
    FE_CAN_GUARD_INTERVAL_AUTO = 524288,
    FE_CAN_HIERARCHY_AUTO = 1048576,
    FE_CAN_8VSB = 2097152,
    FE_CAN_16VSB = 4194304,
    FE_HAS_EXTENDED_CAPS = 8388608,
    FE_CAN_MULTISTREAM = 67108864,
    FE_CAN_TURBO_FEC = 134217728,
    FE_CAN_2G_MODULATION = 268435456,
    FE_NEEDS_BENDING = 536870912,
    FE_CAN_RECOVER = 1073741824,
    FE_CAN_MUTE_TS = 2147483648U
} ;
struct dvb_frontend_info {
   char name[128U] ;
   enum fe_type type ;
   __u32 frequency_min ;
   __u32 frequency_max ;
   __u32 frequency_stepsize ;
   __u32 frequency_tolerance ;
   __u32 symbol_rate_min ;
   __u32 symbol_rate_max ;
   __u32 symbol_rate_tolerance ;
   __u32 notifier_delay ;
   enum fe_caps caps ;
};
struct dvb_diseqc_master_cmd {
   __u8 msg[6U] ;
   __u8 msg_len ;
};
struct dvb_diseqc_slave_reply {
   __u8 msg[4U] ;
   __u8 msg_len ;
   int timeout ;
};
enum fe_sec_voltage {
    SEC_VOLTAGE_13 = 0,
    SEC_VOLTAGE_18 = 1,
    SEC_VOLTAGE_OFF = 2
} ;
enum fe_sec_tone_mode {
    SEC_TONE_ON = 0,
    SEC_TONE_OFF = 1
} ;
enum fe_sec_mini_cmd {
    SEC_MINI_A = 0,
    SEC_MINI_B = 1
} ;
enum fe_status {
    FE_HAS_SIGNAL = 1,
    FE_HAS_CARRIER = 2,
    FE_HAS_VITERBI = 4,
    FE_HAS_SYNC = 8,
    FE_HAS_LOCK = 16,
    FE_TIMEDOUT = 32,
    FE_REINIT = 64
} ;
enum fe_spectral_inversion {
    INVERSION_OFF = 0,
    INVERSION_ON = 1,
    INVERSION_AUTO = 2
} ;
enum fe_code_rate {
    FEC_NONE = 0,
    FEC_1_2 = 1,
    FEC_2_3 = 2,
    FEC_3_4 = 3,
    FEC_4_5 = 4,
    FEC_5_6 = 5,
    FEC_6_7 = 6,
    FEC_7_8 = 7,
    FEC_8_9 = 8,
    FEC_AUTO = 9,
    FEC_3_5 = 10,
    FEC_9_10 = 11,
    FEC_2_5 = 12
} ;
enum fe_modulation {
    QPSK = 0,
    QAM_16 = 1,
    QAM_32 = 2,
    QAM_64 = 3,
    QAM_128 = 4,
    QAM_256 = 5,
    QAM_AUTO = 6,
    VSB_8 = 7,
    VSB_16 = 8,
    PSK_8 = 9,
    APSK_16 = 10,
    APSK_32 = 11,
    DQPSK = 12,
    QAM_4_NR = 13
} ;
enum fe_transmit_mode {
    TRANSMISSION_MODE_2K = 0,
    TRANSMISSION_MODE_8K = 1,
    TRANSMISSION_MODE_AUTO = 2,
    TRANSMISSION_MODE_4K = 3,
    TRANSMISSION_MODE_1K = 4,
    TRANSMISSION_MODE_16K = 5,
    TRANSMISSION_MODE_32K = 6,
    TRANSMISSION_MODE_C1 = 7,
    TRANSMISSION_MODE_C3780 = 8
} ;
enum fe_guard_interval {
    GUARD_INTERVAL_1_32 = 0,
    GUARD_INTERVAL_1_16 = 1,
    GUARD_INTERVAL_1_8 = 2,
    GUARD_INTERVAL_1_4 = 3,
    GUARD_INTERVAL_AUTO = 4,
    GUARD_INTERVAL_1_128 = 5,
    GUARD_INTERVAL_19_128 = 6,
    GUARD_INTERVAL_19_256 = 7,
    GUARD_INTERVAL_PN420 = 8,
    GUARD_INTERVAL_PN595 = 9,
    GUARD_INTERVAL_PN945 = 10
} ;
enum fe_hierarchy {
    HIERARCHY_NONE = 0,
    HIERARCHY_1 = 1,
    HIERARCHY_2 = 2,
    HIERARCHY_4 = 3,
    HIERARCHY_AUTO = 4
} ;
enum fe_interleaving {
    INTERLEAVING_NONE = 0,
    INTERLEAVING_AUTO = 1,
    INTERLEAVING_240 = 2,
    INTERLEAVING_720 = 3
} ;
enum fe_pilot {
    PILOT_ON = 0,
    PILOT_OFF = 1,
    PILOT_AUTO = 2
} ;
enum fe_rolloff {
    ROLLOFF_35 = 0,
    ROLLOFF_20 = 1,
    ROLLOFF_25 = 2,
    ROLLOFF_AUTO = 3
} ;
enum fe_delivery_system {
    SYS_UNDEFINED = 0,
    SYS_DVBC_ANNEX_A = 1,
    SYS_DVBC_ANNEX_B = 2,
    SYS_DVBT = 3,
    SYS_DSS = 4,
    SYS_DVBS = 5,
    SYS_DVBS2 = 6,
    SYS_DVBH = 7,
    SYS_ISDBT = 8,
    SYS_ISDBS = 9,
    SYS_ISDBC = 10,
    SYS_ATSC = 11,
    SYS_ATSCMH = 12,
    SYS_DTMB = 13,
    SYS_CMMB = 14,
    SYS_DAB = 15,
    SYS_DVBT2 = 16,
    SYS_TURBO = 17,
    SYS_DVBC_ANNEX_C = 18
} ;
struct dtv_cmds_h {
   char *name ;
   __u32 cmd ;
   unsigned char set : 1 ;
   unsigned char buffer : 1 ;
   unsigned int reserved : 30 ;
};
union __anonunion____missing_field_name_246 {
   __u64 uvalue ;
   __s64 svalue ;
};
struct dtv_stats {
   __u8 scale ;
   union __anonunion____missing_field_name_246 __annonCompField69 ;
};
struct dtv_fe_stats {
   __u8 len ;
   struct dtv_stats stat[4U] ;
};
struct __anonstruct_buffer_248 {
   __u8 data[32U] ;
   __u32 len ;
   __u32 reserved1[3U] ;
   void *reserved2 ;
};
union __anonunion_u_247 {
   __u32 data ;
   struct dtv_fe_stats st ;
   struct __anonstruct_buffer_248 buffer ;
};
struct dtv_property {
   __u32 cmd ;
   __u32 reserved[3U] ;
   union __anonunion_u_247 u ;
   int result ;
};
struct dtv_properties {
   __u32 num ;
   struct dtv_property *props ;
};
enum fe_bandwidth {
    BANDWIDTH_8_MHZ = 0,
    BANDWIDTH_7_MHZ = 1,
    BANDWIDTH_6_MHZ = 2,
    BANDWIDTH_AUTO = 3,
    BANDWIDTH_5_MHZ = 4,
    BANDWIDTH_10_MHZ = 5,
    BANDWIDTH_1_712_MHZ = 6
} ;
typedef enum fe_status fe_status_t;
typedef enum fe_spectral_inversion fe_spectral_inversion_t;
typedef enum fe_code_rate fe_code_rate_t;
typedef enum fe_modulation fe_modulation_t;
typedef enum fe_transmit_mode fe_transmit_mode_t;
typedef enum fe_bandwidth fe_bandwidth_t;
typedef enum fe_guard_interval fe_guard_interval_t;
typedef enum fe_hierarchy fe_hierarchy_t;
struct dvb_qpsk_parameters {
   __u32 symbol_rate ;
   fe_code_rate_t fec_inner ;
};
struct dvb_qam_parameters {
   __u32 symbol_rate ;
   fe_code_rate_t fec_inner ;
   fe_modulation_t modulation ;
};
struct dvb_vsb_parameters {
   fe_modulation_t modulation ;
};
struct dvb_ofdm_parameters {
   fe_bandwidth_t bandwidth ;
   fe_code_rate_t code_rate_HP ;
   fe_code_rate_t code_rate_LP ;
   fe_modulation_t constellation ;
   fe_transmit_mode_t transmission_mode ;
   fe_guard_interval_t guard_interval ;
   fe_hierarchy_t hierarchy_information ;
};
union __anonunion_u_249 {
   struct dvb_qpsk_parameters qpsk ;
   struct dvb_qam_parameters qam ;
   struct dvb_ofdm_parameters ofdm ;
   struct dvb_vsb_parameters vsb ;
};
struct dvb_frontend_parameters {
   __u32 frequency ;
   fe_spectral_inversion_t inversion ;
   union __anonunion_u_249 u ;
};
struct dvb_frontend_event {
   fe_status_t status ;
   struct dvb_frontend_parameters parameters ;
};
struct dvb_frontend;
struct dvb_frontend_tune_settings {
   int min_delay_ms ;
   int step_size ;
   int max_drift ;
};
struct dvb_tuner_info {
   char name[128U] ;
   u32 frequency_min ;
   u32 frequency_max ;
   u32 frequency_step ;
   u32 bandwidth_min ;
   u32 bandwidth_max ;
   u32 bandwidth_step ;
};
struct analog_parameters {
   unsigned int frequency ;
   unsigned int mode ;
   unsigned int audmode ;
   u64 std ;
};
enum tuner_param {
    DVBFE_TUNER_FREQUENCY = 1,
    DVBFE_TUNER_TUNERSTEP = 2,
    DVBFE_TUNER_IFFREQ = 4,
    DVBFE_TUNER_BANDWIDTH = 8,
    DVBFE_TUNER_REFCLOCK = 16,
    DVBFE_TUNER_IQSENSE = 32,
    DVBFE_TUNER_DUMMY = (-0x7FFFFFFF-1)
} ;
enum dvbfe_algo {
    DVBFE_ALGO_HW = 1,
    DVBFE_ALGO_SW = 2,
    DVBFE_ALGO_CUSTOM = 4,
    DVBFE_ALGO_RECOVERY = (-0x7FFFFFFF-1)
} ;
struct tuner_state {
   u32 frequency ;
   u32 tunerstep ;
   u32 ifreq ;
   u32 bandwidth ;
   u32 iqsense ;
   u32 refclock ;
};
enum dvbfe_search {
    DVBFE_ALGO_SEARCH_SUCCESS = 1,
    DVBFE_ALGO_SEARCH_ASLEEP = 2,
    DVBFE_ALGO_SEARCH_FAILED = 4,
    DVBFE_ALGO_SEARCH_INVALID = 8,
    DVBFE_ALGO_SEARCH_AGAIN = 16,
    DVBFE_ALGO_SEARCH_ERROR = (-0x7FFFFFFF-1)
} ;
struct dvb_tuner_ops {
   struct dvb_tuner_info info ;
   int (*release)(struct dvb_frontend * ) ;
   int (*init)(struct dvb_frontend * ) ;
   int (*sleep)(struct dvb_frontend * ) ;
   int (*suspend)(struct dvb_frontend * ) ;
   int (*resume)(struct dvb_frontend * ) ;
   int (*set_params)(struct dvb_frontend * ) ;
   int (*set_analog_params)(struct dvb_frontend * , struct analog_parameters * ) ;
   int (*calc_regs)(struct dvb_frontend * , u8 * , int ) ;
   int (*set_config)(struct dvb_frontend * , void * ) ;
   int (*get_frequency)(struct dvb_frontend * , u32 * ) ;
   int (*get_bandwidth)(struct dvb_frontend * , u32 * ) ;
   int (*get_if_frequency)(struct dvb_frontend * , u32 * ) ;
   int (*get_status)(struct dvb_frontend * , u32 * ) ;
   int (*get_rf_strength)(struct dvb_frontend * , u16 * ) ;
   int (*get_afc)(struct dvb_frontend * , s32 * ) ;
   int (*set_frequency)(struct dvb_frontend * , u32 ) ;
   int (*set_bandwidth)(struct dvb_frontend * , u32 ) ;
   int (*set_state)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
   int (*get_state)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
};
struct analog_demod_info {
   char *name ;
};
struct analog_demod_ops {
   struct analog_demod_info info ;
   void (*set_params)(struct dvb_frontend * , struct analog_parameters * ) ;
   int (*has_signal)(struct dvb_frontend * , u16 * ) ;
   int (*get_afc)(struct dvb_frontend * , s32 * ) ;
   void (*tuner_status)(struct dvb_frontend * ) ;
   void (*standby)(struct dvb_frontend * ) ;
   void (*release)(struct dvb_frontend * ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend * , int ) ;
   int (*set_config)(struct dvb_frontend * , void * ) ;
};
struct dtv_frontend_properties;
struct dvb_frontend_ops {
   struct dvb_frontend_info info ;
   u8 delsys[8U] ;
   void (*release)(struct dvb_frontend * ) ;
   void (*release_sec)(struct dvb_frontend * ) ;
   int (*init)(struct dvb_frontend * ) ;
   int (*sleep)(struct dvb_frontend * ) ;
   int (*write)(struct dvb_frontend * , u8 const * , int ) ;
   int (*tune)(struct dvb_frontend * , bool , unsigned int , unsigned int * , enum fe_status * ) ;
   enum dvbfe_algo (*get_frontend_algo)(struct dvb_frontend * ) ;
   int (*set_frontend)(struct dvb_frontend * ) ;
   int (*get_tune_settings)(struct dvb_frontend * , struct dvb_frontend_tune_settings * ) ;
   int (*get_frontend)(struct dvb_frontend * ) ;
   int (*read_status)(struct dvb_frontend * , enum fe_status * ) ;
   int (*read_ber)(struct dvb_frontend * , u32 * ) ;
   int (*read_signal_strength)(struct dvb_frontend * , u16 * ) ;
   int (*read_snr)(struct dvb_frontend * , u16 * ) ;
   int (*read_ucblocks)(struct dvb_frontend * , u32 * ) ;
   int (*diseqc_reset_overload)(struct dvb_frontend * ) ;
   int (*diseqc_send_master_cmd)(struct dvb_frontend * , struct dvb_diseqc_master_cmd * ) ;
   int (*diseqc_recv_slave_reply)(struct dvb_frontend * , struct dvb_diseqc_slave_reply * ) ;
   int (*diseqc_send_burst)(struct dvb_frontend * , enum fe_sec_mini_cmd ) ;
   int (*set_tone)(struct dvb_frontend * , enum fe_sec_tone_mode ) ;
   int (*set_voltage)(struct dvb_frontend * , enum fe_sec_voltage ) ;
   int (*enable_high_lnb_voltage)(struct dvb_frontend * , long ) ;
   int (*dishnetwork_send_legacy_command)(struct dvb_frontend * , unsigned long ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend * , int ) ;
   int (*ts_bus_ctrl)(struct dvb_frontend * , int ) ;
   int (*set_lna)(struct dvb_frontend * ) ;
   enum dvbfe_search (*search)(struct dvb_frontend * ) ;
   struct dvb_tuner_ops tuner_ops ;
   struct analog_demod_ops analog_ops ;
   int (*set_property)(struct dvb_frontend * , struct dtv_property * ) ;
   int (*get_property)(struct dvb_frontend * , struct dtv_property * ) ;
};
struct dvb_fe_events {
   struct dvb_frontend_event events[8U] ;
   int eventw ;
   int eventr ;
   int overflow ;
   wait_queue_head_t wait_queue ;
   struct mutex mtx ;
};
struct __anonstruct_layer_258 {
   u8 segment_count ;
   enum fe_code_rate fec ;
   enum fe_modulation modulation ;
   u8 interleaving ;
};
struct dtv_frontend_properties {
   u32 state ;
   u32 frequency ;
   enum fe_modulation modulation ;
   enum fe_sec_voltage voltage ;
   enum fe_sec_tone_mode sectone ;
   enum fe_spectral_inversion inversion ;
   enum fe_code_rate fec_inner ;
   enum fe_transmit_mode transmission_mode ;
   u32 bandwidth_hz ;
   enum fe_guard_interval guard_interval ;
   enum fe_hierarchy hierarchy ;
   u32 symbol_rate ;
   enum fe_code_rate code_rate_HP ;
   enum fe_code_rate code_rate_LP ;
   enum fe_pilot pilot ;
   enum fe_rolloff rolloff ;
   enum fe_delivery_system delivery_system ;
   enum fe_interleaving interleaving ;
   u8 isdbt_partial_reception ;
   u8 isdbt_sb_mode ;
   u8 isdbt_sb_subchannel ;
   u32 isdbt_sb_segment_idx ;
   u32 isdbt_sb_segment_count ;
   u8 isdbt_layer_enabled ;
   struct __anonstruct_layer_258 layer[3U] ;
   u32 stream_id ;
   u8 atscmh_fic_ver ;
   u8 atscmh_parade_id ;
   u8 atscmh_nog ;
   u8 atscmh_tnog ;
   u8 atscmh_sgn ;
   u8 atscmh_prc ;
   u8 atscmh_rs_frame_mode ;
   u8 atscmh_rs_frame_ensemble ;
   u8 atscmh_rs_code_mode_pri ;
   u8 atscmh_rs_code_mode_sec ;
   u8 atscmh_sccc_block_mode ;
   u8 atscmh_sccc_code_mode_a ;
   u8 atscmh_sccc_code_mode_b ;
   u8 atscmh_sccc_code_mode_c ;
   u8 atscmh_sccc_code_mode_d ;
   u32 lna ;
   struct dtv_fe_stats strength ;
   struct dtv_fe_stats cnr ;
   struct dtv_fe_stats pre_bit_error ;
   struct dtv_fe_stats pre_bit_count ;
   struct dtv_fe_stats post_bit_error ;
   struct dtv_fe_stats post_bit_count ;
   struct dtv_fe_stats block_error ;
   struct dtv_fe_stats block_count ;
};
struct dvb_frontend {
   struct dvb_frontend_ops ops ;
   struct dvb_adapter *dvb ;
   void *demodulator_priv ;
   void *tuner_priv ;
   void *frontend_priv ;
   void *sec_priv ;
   void *analog_demod_priv ;
   struct dtv_frontend_properties dtv_property_cache ;
   int (*callback)(void * , int , int , int ) ;
   int id ;
   unsigned int exit ;
};
struct dvb_frontend_private {
   struct dvb_device *dvbdev ;
   struct dvb_frontend_parameters parameters_out ;
   struct dvb_fe_events events ;
   struct semaphore sem ;
   struct list_head list_head ;
   wait_queue_head_t wait_queue ;
   struct task_struct *thread ;
   unsigned long release_jiffies ;
   unsigned int wakeup ;
   enum fe_status status ;
   unsigned long tune_mode_flags ;
   unsigned int delay ;
   unsigned int reinitialise ;
   int tone ;
   int voltage ;
   unsigned int state ;
   unsigned int bending ;
   int lnb_drift ;
   unsigned int inversion ;
   unsigned int auto_step ;
   unsigned int auto_sub_step ;
   unsigned int started_auto_step ;
   unsigned int min_delay ;
   unsigned int max_drift ;
   unsigned int step_size ;
   int quality ;
   unsigned int check_wrapped ;
   enum dvbfe_search algo_status ;
};
enum dvbv3_emulation_type {
    DVBV3_UNKNOWN = 0,
    DVBV3_QPSK = 1,
    DVBV3_QAM = 2,
    DVBV3_OFDM = 3,
    DVBV3_ATSC = 4
} ;
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u32 __wsum;
typedef __u64 uint64_t;
typedef u64 dma_addr_t;
typedef unsigned long pteval_t;
struct __anonstruct_pte_t_11 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_11 pte_t;
struct notifier_block;
enum hrtimer_restart;
struct ctl_table;
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
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct bio_vec;
struct uts_namespace;
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
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct net;
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
enum ldv_27750 {
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
typedef enum ldv_27750 phy_interface_t;
enum ldv_27804 {
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
   enum ldv_27804 state ;
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
struct dvb_net_if {
   __u16 pid ;
   __u16 if_num ;
   __u8 feedtype ;
};
struct __dvb_net_if_old {
   __u16 pid ;
   __u16 if_num ;
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
struct dvb_net {
   struct dvb_device *dvbdev ;
   struct net_device *device[10U] ;
   int state[10U] ;
   unsigned char exit : 1 ;
   struct dmx_demux *demux ;
   struct mutex ioctl_mutex ;
};
struct dvb_net_priv {
   int in_use ;
   u16 pid ;
   struct net_device *net ;
   struct dvb_net *host ;
   struct dmx_demux *demux ;
   struct dmx_section_feed *secfeed ;
   struct dmx_section_filter *secfilter ;
   struct dmx_ts_feed *tsfeed ;
   int multi_num ;
   struct dmx_section_filter *multi_secfilter[10U] ;
   unsigned char multi_macs[10U][6U] ;
   int rx_mode ;
   struct work_struct set_multicast_list_wq ;
   struct work_struct restart_net_feed_wq ;
   unsigned char feedtype ;
   int need_pusi ;
   unsigned char tscc ;
   struct sk_buff *ule_skb ;
   unsigned char *ule_next_hdr ;
   unsigned short ule_sndu_len ;
   unsigned short ule_sndu_type ;
   unsigned char ule_sndu_type_1 ;
   unsigned char ule_dbit ;
   unsigned char ule_bridged ;
   int ule_sndu_remain ;
   unsigned long ts_count ;
   struct mutex mutex ;
};
typedef bool ldv_func_ret_type___6;
typedef bool ldv_func_ret_type___7;
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
extern int printk(char const * , ...) ;
extern void __might_fault(char const * , int ) ;
extern char *kasprintf(gfp_t , char const * , ...) ;
bool ldv_is_err(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
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
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern void down_read(struct rw_semaphore * ) ;
extern void down_write(struct rw_semaphore * ) ;
extern void up_read(struct rw_semaphore * ) ;
extern void up_write(struct rw_semaphore * ) ;
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
extern int add_uevent_var(struct kobj_uevent_env * , char const * , ...) ;
bool ldv_try_module_get_10(struct module *ldv_func_arg1 ) ;
void ldv_module_put_11(struct module *ldv_func_arg1 ) ;
int ldv_try_module_get(struct module *module ) ;
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
int ldv_state_variable_8 ;
struct work_struct *ldv_work_struct_1_3 ;
struct timer_list *ldv_timer_list_3 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_timer_state_3 = 0;
int ldv_work_1_1 ;
struct inode *dvb_dvr_fops_group1 ;
struct net_device *dvb_netdev_ops_group1 ;
struct work_struct *ldv_work_struct_2_3 ;
struct work_struct *ldv_work_struct_2_0 ;
struct file *dvb_dvr_fops_group2 ;
int ldv_state_variable_9 ;
struct work_struct *ldv_work_struct_2_2 ;
int ref_cnt ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
struct file *dvb_demux_fops_group2 ;
struct work_struct *ldv_work_struct_1_0 ;
struct work_struct *ldv_work_struct_1_1 ;
struct inode *dvb_demux_fops_group1 ;
int ldv_state_variable_10 ;
struct inode *dvb_device_fops_group1 ;
int ldv_work_1_3 ;
struct work_struct *ldv_work_struct_2_1 ;
int ldv_state_variable_6 ;
struct file *dvb_ca_fops_group2 ;
int ldv_state_variable_2 ;
int ldv_work_2_0 ;
struct file *dvb_frontend_fops_group2 ;
int ldv_state_variable_11 ;
int ldv_work_1_2 ;
int LDV_IN_INTERRUPT = 1;
struct work_struct *ldv_work_struct_1_2 ;
struct inode *dvb_frontend_fops_group1 ;
struct inode *dvb_net_fops_group1 ;
int ldv_work_2_2 ;
int ldv_state_variable_3 ;
struct file *dvb_net_fops_group2 ;
int ldv_work_1_0 ;
int ldv_work_2_3 ;
struct inode *dvb_ca_fops_group1 ;
int ldv_state_variable_4 ;
int ldv_work_2_1 ;
struct file *dvb_device_fops_group2 ;
void work_init_2(void) ;
void call_and_disable_all_2(int state ) ;
void activate_work_2(struct work_struct *work , int state ) ;
void work_init_1(void) ;
void ldv_file_operations_11(void) ;
extern struct class *__class_create(struct module * , char const * , struct lock_class_key * ) ;
extern void class_destroy(struct class * ) ;
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
extern struct device *device_create(struct class * , struct device * , dev_t , void * ,
                                    char const * , ...) ;
extern void device_destroy(struct class * , dev_t ) ;
__inline static unsigned int iminor(struct inode const *inode )
{
  {
  return ((unsigned int )inode->i_rdev & 1048575U);
}
}
extern int register_chrdev_region(dev_t , unsigned int , char const * ) ;
extern void unregister_chrdev_region(dev_t , unsigned int ) ;
extern loff_t noop_llseek(struct file * , loff_t , int ) ;
extern void cdev_init(struct cdev * , struct file_operations const * ) ;
void ldv_cdev_init_12(struct cdev *cdev , struct file_operations const *fops ) ;
extern int cdev_add(struct cdev * , dev_t , unsigned int ) ;
extern void cdev_del(struct cdev * ) ;
void ldv_cdev_del_13(struct cdev *p ) ;
void ldv_cdev_del_14(struct cdev *p ) ;
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
int dvb_register_adapter(struct dvb_adapter *adap , char const *name , struct module *module ,
                         struct device *device , short *adapter_nums ) ;
int dvb_unregister_adapter(struct dvb_adapter *adap ) ;
int dvb_register_device(struct dvb_adapter *adap , struct dvb_device **pdvbdev , struct dvb_device const *template ,
                        void *priv , int type ) ;
void dvb_unregister_device(struct dvb_device *dvbdev ) ;
int dvb_generic_open(struct inode *inode , struct file *file ) ;
int dvb_generic_release(struct inode *inode , struct file *file ) ;
long dvb_generic_ioctl(struct file *file , unsigned int cmd , unsigned long arg ) ;
int dvb_usercopy(struct file *file , unsigned int cmd , unsigned long arg , int (*func)(struct file * ,
                                                                                        unsigned int ,
                                                                                        void * ) ) ;
static struct mutex dvbdev_mutex = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "dvbdev_mutex.wait_lock",
                                                          0, 0UL}}}}, {& dvbdev_mutex.wait_list,
                                                                       & dvbdev_mutex.wait_list},
    0, (void *)(& dvbdev_mutex), {0, {0, 0}, "dvbdev_mutex", 0, 0UL}};
static int dvbdev_debug ;
static struct list_head dvb_adapter_list = {& dvb_adapter_list, & dvb_adapter_list};
static struct mutex dvbdev_register_lock = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "dvbdev_register_lock.wait_lock",
                                                          0, 0UL}}}}, {& dvbdev_register_lock.wait_list,
                                                                       & dvbdev_register_lock.wait_list},
    0, (void *)(& dvbdev_register_lock), {0, {0, 0}, "dvbdev_register_lock", 0, 0UL}};
static char const * const dnames[9U] =
  { "video", "audio", "sec", "frontend",
        "demux", "dvr", "ca", "net",
        "osd"};
static struct class *dvb_class ;
static struct dvb_device *dvb_minors[256U] ;
static struct rw_semaphore minor_rwsem = {0L, {& minor_rwsem.wait_list, & minor_rwsem.wait_list}, {{{0}}, 3735899821U, 4294967295U,
                                                             (void *)-1, {0, {0, 0},
                                                                          "minor_rwsem.wait_lock",
                                                                          0, 0UL}},
    {{0}}, (struct task_struct *)0, {0, {0, 0}, "minor_rwsem", 0, 0UL}};
static int dvb_device_open(struct inode *inode , struct file *file )
{
  struct dvb_device *dvbdev ;
  unsigned int tmp ;
  int err ;
  struct file_operations const *new_fops ;
  bool tmp___1 ;
  struct file *__file ;
  struct file_operations const *tmp___2 ;
  long tmp___3 ;
  {
  mutex_lock_nested(& dvbdev_mutex, 0U);
  down_read(& minor_rwsem);
  tmp = iminor((struct inode const *)inode);
  dvbdev = dvb_minors[tmp];
  if ((unsigned long )dvbdev != (unsigned long )((struct dvb_device *)0) && (unsigned long )dvbdev->fops != (unsigned long )((struct file_operations const *)0)) {
    err = 0;
    if ((unsigned long )dvbdev->fops != (unsigned long )((struct file_operations const *)0)) {
      tmp___1 = ldv_try_module_get_10((dvbdev->fops)->owner);
      if ((int )tmp___1) {
        new_fops = dvbdev->fops;
      } else {
        new_fops = (struct file_operations const *)0;
      }
    } else {
      new_fops = (struct file_operations const *)0;
    }
    if ((unsigned long )new_fops == (unsigned long )((struct file_operations const *)0)) {
      goto fail;
    } else {
    }
    file->private_data = (void *)dvbdev;
    __file = file;
    if ((unsigned long )__file->f_op != (unsigned long )((struct file_operations const *)0)) {
      ldv_module_put_11((__file->f_op)->owner);
    } else {
    }
    tmp___2 = new_fops;
    __file->f_op = tmp___2;
    tmp___3 = ldv__builtin_expect((unsigned long )tmp___2 == (unsigned long )((struct file_operations const *)0),
                               0L);
    if (tmp___3 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvbdev.c"),
                           "i" (83), "i" (12UL));
      ldv_25659: ;
      goto ldv_25659;
    } else {
    }
    if ((unsigned long )(file->f_op)->open != (unsigned long )((int (* )(struct inode * ,
                                                                                    struct file * ))0)) {
      err = (*((file->f_op)->open))(inode, file);
    } else {
    }
    up_read(& minor_rwsem);
    mutex_unlock(& dvbdev_mutex);
    return (err);
  } else {
  }
  fail:
  up_read(& minor_rwsem);
  mutex_unlock(& dvbdev_mutex);
  return (-19);
}
}
static struct file_operations const dvb_device_fops =
     {& __this_module, & noop_llseek, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & dvb_device_open,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct cdev dvb_device_cdev ;
int dvb_generic_open(struct inode *inode , struct file *file )
{
  struct dvb_device *dvbdev ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  if ((unsigned long )dvbdev == (unsigned long )((struct dvb_device *)0)) {
    return (-19);
  } else {
  }
  if (dvbdev->users == 0) {
    return (-16);
  } else {
  }
  if ((file->f_flags & 3U) == 0U) {
    if (dvbdev->readers == 0) {
      return (-16);
    } else {
    }
    dvbdev->readers = dvbdev->readers - 1;
  } else {
    if (dvbdev->writers == 0) {
      return (-16);
    } else {
    }
    dvbdev->writers = dvbdev->writers - 1;
  }
  dvbdev->users = dvbdev->users - 1;
  return (0);
}
}
static char const __kstrtab_dvb_generic_open[17U] =
  { 'd', 'v', 'b', '_',
        'g', 'e', 'n', 'e',
        'r', 'i', 'c', '_',
        'o', 'p', 'e', 'n',
        '\000'};
struct kernel_symbol const __ksymtab_dvb_generic_open ;
struct kernel_symbol const __ksymtab_dvb_generic_open = {(unsigned long )(& dvb_generic_open), (char const *)(& __kstrtab_dvb_generic_open)};
int dvb_generic_release(struct inode *inode , struct file *file )
{
  struct dvb_device *dvbdev ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  if ((unsigned long )dvbdev == (unsigned long )((struct dvb_device *)0)) {
    return (-19);
  } else {
  }
  if ((file->f_flags & 3U) == 0U) {
    dvbdev->readers = dvbdev->readers + 1;
  } else {
    dvbdev->writers = dvbdev->writers + 1;
  }
  dvbdev->users = dvbdev->users + 1;
  return (0);
}
}
static char const __kstrtab_dvb_generic_release[20U] =
  { 'd', 'v', 'b', '_',
        'g', 'e', 'n', 'e',
        'r', 'i', 'c', '_',
        'r', 'e', 'l', 'e',
        'a', 's', 'e', '\000'};
struct kernel_symbol const __ksymtab_dvb_generic_release ;
struct kernel_symbol const __ksymtab_dvb_generic_release = {(unsigned long )(& dvb_generic_release), (char const *)(& __kstrtab_dvb_generic_release)};
long dvb_generic_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  struct dvb_device *dvbdev ;
  int tmp ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  if ((unsigned long )dvbdev == (unsigned long )((struct dvb_device *)0)) {
    return (-19L);
  } else {
  }
  if ((unsigned long )dvbdev->kernel_ioctl == (unsigned long )((int (*)(struct file * ,
                                                                        unsigned int ,
                                                                        void * ))0)) {
    return (-22L);
  } else {
  }
  tmp = dvb_usercopy(file, cmd, arg, dvbdev->kernel_ioctl);
  return ((long )tmp);
}
}
static char const __kstrtab_dvb_generic_ioctl[18U] =
  { 'd', 'v', 'b', '_',
        'g', 'e', 'n', 'e',
        'r', 'i', 'c', '_',
        'i', 'o', 'c', 't',
        'l', '\000'};
struct kernel_symbol const __ksymtab_dvb_generic_ioctl ;
struct kernel_symbol const __ksymtab_dvb_generic_ioctl = {(unsigned long )(& dvb_generic_ioctl), (char const *)(& __kstrtab_dvb_generic_ioctl)};
static int dvbdev_get_free_id(struct dvb_adapter *adap , int type )
{
  u32 id ;
  struct dvb_device *dev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  id = 0U;
  goto ldv_25718;
  ldv_25717:
  __mptr = (struct list_head const *)adap->device_list.next;
  dev = (struct dvb_device *)__mptr;
  goto ldv_25715;
  ldv_25714: ;
  if (dev->type == type && dev->id == id) {
    goto skip;
  } else {
  }
  __mptr___0 = (struct list_head const *)dev->list_head.next;
  dev = (struct dvb_device *)__mptr___0;
  ldv_25715: ;
  if ((unsigned long )(& dev->list_head) != (unsigned long )(& adap->device_list)) {
    goto ldv_25714;
  } else {
  }
  return ((int )id);
  skip:
  id = id + 1U;
  ldv_25718: ;
  if (id <= 255U) {
    goto ldv_25717;
  } else {
  }
  return (-23);
}
}
static void dvb_register_media_device(struct dvb_device *dvbdev , int type , int minor )
{
  {
  return;
}
}
int dvb_register_device(struct dvb_adapter *adap , struct dvb_device **pdvbdev , struct dvb_device const *template ,
                        void *priv , int type )
{
  struct dvb_device *dvbdev ;
  struct file_operations *dvbdevfops ;
  struct device *clsdev ;
  int minor ;
  int id ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  long tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  {
  mutex_lock_nested(& dvbdev_register_lock, 0U);
  id = dvbdev_get_free_id(adap, type);
  if (id < 0) {
    mutex_unlock(& dvbdev_register_lock);
    *pdvbdev = (struct dvb_device *)0;
    printk("\v%s: couldn\'t find free device id\n", "dvb_register_device");
    return (-23);
  } else {
  }
  tmp = kmalloc(160UL, 208U);
  dvbdev = (struct dvb_device *)tmp;
  *pdvbdev = dvbdev;
  if ((unsigned long )dvbdev == (unsigned long )((struct dvb_device *)0)) {
    mutex_unlock(& dvbdev_register_lock);
    return (-12);
  } else {
  }
  tmp___0 = kzalloc(224UL, 208U);
  dvbdevfops = (struct file_operations *)tmp___0;
  if ((unsigned long )dvbdevfops == (unsigned long )((struct file_operations *)0)) {
    kfree((void const *)dvbdev);
    mutex_unlock(& dvbdev_register_lock);
    return (-12);
  } else {
  }
  memcpy((void *)dvbdev, (void const *)template, 160UL);
  dvbdev->type = type;
  dvbdev->id = (u32 )id;
  dvbdev->adapter = adap;
  dvbdev->priv = priv;
  dvbdev->fops = (struct file_operations const *)dvbdevfops;
  __init_waitqueue_head(& dvbdev->wait_queue, "&dvbdev->wait_queue", & __key);
  memcpy((void *)dvbdevfops, (void const *)template->fops, 224UL);
  dvbdevfops->owner = adap->module;
  list_add_tail(& dvbdev->list_head, & adap->device_list);
  down_write(& minor_rwsem);
  minor = 0;
  goto ldv_25741;
  ldv_25740: ;
  if ((unsigned long )dvb_minors[minor] == (unsigned long )((struct dvb_device *)0)) {
    goto ldv_25739;
  } else {
  }
  minor = minor + 1;
  ldv_25741: ;
  if (minor <= 255) {
    goto ldv_25740;
  } else {
  }
  ldv_25739: ;
  if (minor == 256) {
    kfree((void const *)dvbdevfops);
    kfree((void const *)dvbdev);
    up_write(& minor_rwsem);
    mutex_unlock(& dvbdev_register_lock);
    return (-22);
  } else {
  }
  dvbdev->minor = minor;
  dvb_minors[minor] = dvbdev;
  up_write(& minor_rwsem);
  mutex_unlock(& dvbdev_register_lock);
  clsdev = device_create(dvb_class, adap->device, (dev_t )(minor | 222298112), (void *)dvbdev,
                         "dvb%d.%s%d", adap->num, dnames[type], id);
  tmp___3 = IS_ERR((void const *)clsdev);
  if ((int )tmp___3) {
    tmp___1 = PTR_ERR((void const *)clsdev);
    printk("\v%s: failed to create device dvb%d.%s%d (%ld)\n", "dvb_register_device",
           adap->num, dnames[type], id, tmp___1);
    tmp___2 = PTR_ERR((void const *)clsdev);
    return ((int )tmp___2);
  } else {
  }
  if (dvbdev_debug != 0) {
    printk("\017DVB: register adapter%d/%s%d @ minor: %i (0x%02x)\n", adap->num, dnames[type],
           id, minor, minor);
  } else {
  }
  dvb_register_media_device(dvbdev, type, minor);
  return (0);
}
}
static char const __kstrtab_dvb_register_device[20U] =
  { 'd', 'v', 'b', '_',
        'r', 'e', 'g', 'i',
        's', 't', 'e', 'r',
        '_', 'd', 'e', 'v',
        'i', 'c', 'e', '\000'};
struct kernel_symbol const __ksymtab_dvb_register_device ;
struct kernel_symbol const __ksymtab_dvb_register_device = {(unsigned long )(& dvb_register_device), (char const *)(& __kstrtab_dvb_register_device)};
void dvb_unregister_device(struct dvb_device *dvbdev )
{
  {
  if ((unsigned long )dvbdev == (unsigned long )((struct dvb_device *)0)) {
    return;
  } else {
  }
  down_write(& minor_rwsem);
  dvb_minors[dvbdev->minor] = (struct dvb_device *)0;
  up_write(& minor_rwsem);
  device_destroy(dvb_class, (dev_t )(dvbdev->minor | 222298112));
  list_del(& dvbdev->list_head);
  kfree((void const *)dvbdev->fops);
  kfree((void const *)dvbdev);
  return;
}
}
static char const __kstrtab_dvb_unregister_device[22U] =
  { 'd', 'v', 'b', '_',
        'u', 'n', 'r', 'e',
        'g', 'i', 's', 't',
        'e', 'r', '_', 'd',
        'e', 'v', 'i', 'c',
        'e', '\000'};
struct kernel_symbol const __ksymtab_dvb_unregister_device ;
struct kernel_symbol const __ksymtab_dvb_unregister_device = {(unsigned long )(& dvb_unregister_device), (char const *)(& __kstrtab_dvb_unregister_device)};
static int dvbdev_check_free_adapter_num(int num )
{
  struct list_head *entry ;
  struct dvb_adapter *adap ;
  struct list_head const *__mptr ;
  {
  entry = dvb_adapter_list.next;
  goto ldv_25771;
  ldv_25770:
  __mptr = (struct list_head const *)entry;
  adap = (struct dvb_adapter *)__mptr + 0xfffffffffffffff8UL;
  if (adap->num == num) {
    return (0);
  } else {
  }
  entry = entry->next;
  ldv_25771: ;
  if ((unsigned long )entry != (unsigned long )(& dvb_adapter_list)) {
    goto ldv_25770;
  } else {
  }
  return (1);
}
}
static int dvbdev_get_free_adapter_num(void)
{
  int num ;
  int tmp ;
  {
  num = 0;
  goto ldv_25778;
  ldv_25777:
  tmp = dvbdev_check_free_adapter_num(num);
  if (tmp != 0) {
    return (num);
  } else {
  }
  num = num + 1;
  ldv_25778: ;
  if (num <= 7) {
    goto ldv_25777;
  } else {
  }
  return (-23);
}
}
int dvb_register_adapter(struct dvb_adapter *adap , char const *name , struct module *module ,
                         struct device *device , short *adapter_nums )
{
  int i ;
  int num ;
  int tmp ;
  struct lock_class_key __key ;
  {
  mutex_lock_nested(& dvbdev_register_lock, 0U);
  i = 0;
  goto ldv_25791;
  ldv_25790:
  num = (int )*(adapter_nums + (unsigned long )i);
  if (num >= 0 && num <= 7) {
    tmp = dvbdev_check_free_adapter_num(num);
    if (tmp != 0) {
      goto ldv_25789;
    } else {
    }
  } else {
    num = dvbdev_get_free_adapter_num();
    goto ldv_25789;
  }
  num = -1;
  i = i + 1;
  ldv_25791: ;
  if (i <= 7) {
    goto ldv_25790;
  } else {
  }
  ldv_25789: ;
  if (num < 0) {
    mutex_unlock(& dvbdev_register_lock);
    return (-23);
  } else {
  }
  memset((void *)adap, 0, 256UL);
  INIT_LIST_HEAD(& adap->device_list);
  printk("\016DVB: registering new adapter (%s)\n", name);
  adap->num = num;
  adap->name = name;
  adap->module = module;
  adap->device = device;
  adap->mfe_shared = 0;
  adap->mfe_dvbdev = (struct dvb_device *)0;
  __mutex_init(& adap->mfe_lock, "&adap->mfe_lock", & __key);
  list_add_tail(& adap->list_head, & dvb_adapter_list);
  mutex_unlock(& dvbdev_register_lock);
  return (num);
}
}
static char const __kstrtab_dvb_register_adapter[21U] =
  { 'd', 'v', 'b', '_',
        'r', 'e', 'g', 'i',
        's', 't', 'e', 'r',
        '_', 'a', 'd', 'a',
        'p', 't', 'e', 'r',
        '\000'};
struct kernel_symbol const __ksymtab_dvb_register_adapter ;
struct kernel_symbol const __ksymtab_dvb_register_adapter = {(unsigned long )(& dvb_register_adapter), (char const *)(& __kstrtab_dvb_register_adapter)};
int dvb_unregister_adapter(struct dvb_adapter *adap )
{
  {
  mutex_lock_nested(& dvbdev_register_lock, 0U);
  list_del(& adap->list_head);
  mutex_unlock(& dvbdev_register_lock);
  return (0);
}
}
static char const __kstrtab_dvb_unregister_adapter[23U] =
  { 'd', 'v', 'b', '_',
        'u', 'n', 'r', 'e',
        'g', 'i', 's', 't',
        'e', 'r', '_', 'a',
        'd', 'a', 'p', 't',
        'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_dvb_unregister_adapter ;
struct kernel_symbol const __ksymtab_dvb_unregister_adapter = {(unsigned long )(& dvb_unregister_adapter), (char const *)(& __kstrtab_dvb_unregister_adapter)};
int dvb_usercopy(struct file *file , unsigned int cmd , unsigned long arg , int (*func)(struct file * ,
                                                                                        unsigned int ,
                                                                                        void * ) )
{
  char sbuf[128U] ;
  void *mbuf ;
  void *parg ;
  int err ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  mbuf = (void *)0;
  parg = (void *)0;
  err = -22;
  switch (cmd >> 30) {
  case 0U:
  parg = (void *)arg;
  goto ldv_25828;
  case 2U: ;
  case 1U: ;
  case 3U: ;
  if (((cmd >> 16) & 16383U) <= 128U) {
    parg = (void *)(& sbuf);
  } else {
    mbuf = kmalloc((size_t )(cmd >> 16) & 16383UL, 208U);
    if ((unsigned long )mbuf == (unsigned long )((void *)0)) {
      return (-12);
    } else {
    }
    parg = mbuf;
  }
  err = -14;
  tmp = copy_from_user(parg, (void const *)arg, (unsigned long )(cmd >> 16) & 16383UL);
  if (tmp != 0UL) {
    goto out;
  } else {
  }
  goto ldv_25828;
  }
  ldv_25828:
  err = (*func)(file, cmd, parg);
  if (err == -515) {
    err = -25;
  } else {
  }
  if (err < 0) {
    goto out;
  } else {
  }
  switch (cmd >> 30) {
  case 2U: ;
  case 3U:
  tmp___0 = copy_to_user((void *)arg, (void const *)parg, (unsigned long )(cmd >> 16) & 16383UL);
  if (tmp___0 != 0UL) {
    err = -14;
  } else {
  }
  goto ldv_25835;
  }
  ldv_25835: ;
  out:
  kfree((void const *)mbuf);
  return (err);
}
}
static int dvb_uevent(struct device *dev , struct kobj_uevent_env *env )
{
  struct dvb_device *dvbdev ;
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  dvbdev = (struct dvb_device *)tmp;
  add_uevent_var(env, "DVB_ADAPTER_NUM=%d", (dvbdev->adapter)->num);
  add_uevent_var(env, "DVB_DEVICE_TYPE=%s", dnames[dvbdev->type]);
  add_uevent_var(env, "DVB_DEVICE_NUM=%d", dvbdev->id);
  return (0);
}
}
static char *dvb_devnode(struct device *dev , umode_t *mode )
{
  struct dvb_device *dvbdev ;
  void *tmp ;
  char *tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  dvbdev = (struct dvb_device *)tmp;
  tmp___0 = kasprintf(208U, "dvb/adapter%d/%s%d", (dvbdev->adapter)->num, dnames[dvbdev->type],
                      dvbdev->id);
  return (tmp___0);
}
}
static int init_dvbdev(void)
{
  int retval ;
  dev_t dev ;
  struct lock_class_key __key ;
  struct class *tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  dev = 222298112U;
  retval = register_chrdev_region(dev, 256U, "DVB");
  if (retval != 0) {
    printk("\vdvb-core: unable to get major %d\n", 212);
    return (retval);
  } else {
  }
  ldv_cdev_init_12(& dvb_device_cdev, & dvb_device_fops);
  retval = cdev_add(& dvb_device_cdev, dev, 256U);
  if (retval != 0) {
    printk("\vdvb-core: unable register character device\n");
    goto error;
  } else {
  }
  tmp = __class_create(& __this_module, "dvb", & __key);
  dvb_class = tmp;
  tmp___1 = IS_ERR((void const *)dvb_class);
  if ((int )tmp___1) {
    tmp___0 = PTR_ERR((void const *)dvb_class);
    retval = (int )tmp___0;
    goto error;
  } else {
  }
  dvb_class->dev_uevent = & dvb_uevent;
  dvb_class->devnode = & dvb_devnode;
  return (0);
  error:
  ldv_cdev_del_13(& dvb_device_cdev);
  unregister_chrdev_region(dev, 256U);
  return (retval);
}
}
static void exit_dvbdev(void)
{
  {
  class_destroy(dvb_class);
  ldv_cdev_del_14(& dvb_device_cdev);
  unregister_chrdev_region(222298112U, 256U);
  return;
}
}
int ldv_retval_5 ;
int ldv_retval_0 ;
extern void ldv_initialize(void) ;
extern int ldv_release_11(void) ;
void ldv_check_final_state(void) ;
void ldv_file_operations_11(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  dvb_device_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  dvb_device_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_main_exported_10(void) ;
void ldv_main_exported_9(void) ;
void ldv_main_exported_8(void) ;
void ldv_main_exported_7(void) ;
void ldv_main_exported_6(void) ;
void ldv_main_exported_4(void) ;
void ldv_main_exported_5(void) ;
int main(void)
{
  int ldvarg8 ;
  loff_t ldvarg9 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_initialize();
  ldv_memset((void *)(& ldvarg8), 0, 4UL);
  ldv_memset((void *)(& ldvarg9), 0, 8UL);
  ldv_state_variable_6 = 0;
  ldv_state_variable_11 = 0;
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
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 0;
  ldv_25930:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    ldv_main_exported_6();
  } else {
  }
  goto ldv_25907;
  case 1: ;
  if (ldv_state_variable_11 != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (ldv_state_variable_11 == 2) {
      noop_llseek(dvb_device_fops_group2, ldvarg9, ldvarg8);
      ldv_state_variable_11 = 2;
    } else {
    }
    goto ldv_25910;
    case 1: ;
    if (ldv_state_variable_11 == 1) {
      ldv_retval_0 = dvb_device_open(dvb_device_fops_group1, dvb_device_fops_group2);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_11 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_25910;
    case 2: ;
    if (ldv_state_variable_11 == 2) {
      ldv_release_11();
      ldv_state_variable_11 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_25910;
    default:
    ldv_stop();
    }
    ldv_25910: ;
  } else {
  }
  goto ldv_25907;
  case 2: ;
  goto ldv_25907;
  case 3: ;
  if (ldv_state_variable_7 != 0) {
    ldv_main_exported_7();
  } else {
  }
  goto ldv_25907;
  case 4: ;
  if (ldv_state_variable_9 != 0) {
    ldv_main_exported_9();
  } else {
  }
  goto ldv_25907;
  case 5: ;
  goto ldv_25907;
  case 6: ;
  if (ldv_state_variable_8 != 0) {
    ldv_main_exported_8();
  } else {
  }
  goto ldv_25907;
  case 7: ;
  goto ldv_25907;
  case 8: ;
  if (ldv_state_variable_4 != 0) {
    ldv_main_exported_4();
  } else {
  }
  goto ldv_25907;
  case 9: ;
  if (ldv_state_variable_0 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      exit_dvbdev();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_25924;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_5 = init_dvbdev();
      if (ldv_retval_5 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_5 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_6 = 1;
      } else {
      }
    } else {
    }
    goto ldv_25924;
    default:
    ldv_stop();
    }
    ldv_25924: ;
  } else {
  }
  goto ldv_25907;
  case 10: ;
  if (ldv_state_variable_10 != 0) {
    ldv_main_exported_10();
  } else {
  }
  goto ldv_25907;
  case 11: ;
  if (ldv_state_variable_5 != 0) {
    ldv_main_exported_5();
  } else {
  }
  goto ldv_25907;
  default:
  ldv_stop();
  }
  ldv_25907: ;
  goto ldv_25930;
  ldv_final:
  ldv_check_final_state();
  return 0;
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
bool ldv_try_module_get_10(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_11(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_cdev_init_12(struct cdev *cdev , struct file_operations const *fops )
{
  {
  cdev_init(cdev, fops);
  ldv_state_variable_11 = 1;
  ldv_file_operations_11();
  return;
}
}
void ldv_cdev_del_13(struct cdev *p )
{
  {
  cdev_del(p);
  ldv_state_variable_11 = 0;
  return;
}
}
void ldv_cdev_del_14(struct cdev *p )
{
  {
  cdev_del(p);
  ldv_state_variable_11 = 0;
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern void __might_sleep(char const * , int , int ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
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
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->__annonCompField18.rlock);
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
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->__annonCompField18.rlock);
  return;
}
}
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int mutex_lock_interruptible_nested(struct mutex * , unsigned int ) ;
extern unsigned long volatile jiffies ;
extern int del_timer(struct timer_list * ) ;
int ldv_del_timer_32(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_33(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_34(struct timer_list *ldv_func_arg1 ) ;
extern void add_timer(struct timer_list * ) ;
bool ldv_queue_work_on_27(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_29(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_28(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_31(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_30(struct workqueue_struct *ldv_func_arg1 ) ;
extern void schedule(void) ;
void choose_timer_3(struct timer_list *timer ) ;
void ldv_file_operations_10(void) ;
void ldv_file_operations_9(void) ;
void disable_suitable_timer_3(struct timer_list *timer ) ;
void activate_pending_timer_3(struct timer_list *timer , unsigned long data , int pending_flag ) ;
int reg_timer_3(struct timer_list *timer ) ;
extern void *vmalloc(unsigned long ) ;
extern void vfree(void const * ) ;
extern loff_t default_llseek(struct file * , loff_t , int ) ;
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
void dvb_ringbuffer_init(struct dvb_ringbuffer *rbuf , void *data , size_t len ) ;
int dvb_ringbuffer_empty(struct dvb_ringbuffer *rbuf ) ;
ssize_t dvb_ringbuffer_free(struct dvb_ringbuffer *rbuf ) ;
ssize_t dvb_ringbuffer_avail(struct dvb_ringbuffer *rbuf ) ;
void dvb_ringbuffer_reset(struct dvb_ringbuffer *rbuf ) ;
void dvb_ringbuffer_flush(struct dvb_ringbuffer *rbuf ) ;
ssize_t dvb_ringbuffer_read_user(struct dvb_ringbuffer *rbuf , u8 *buf , size_t len ) ;
ssize_t dvb_ringbuffer_write(struct dvb_ringbuffer *rbuf , u8 const *buf , size_t len ) ;
int dvb_dmxdev_init(struct dmxdev *dmxdev , struct dvb_adapter *dvb_adapter ) ;
void dvb_dmxdev_release(struct dmxdev *dmxdev ) ;
static int debug ;
static int dvb_dmxdev_buffer_write(struct dvb_ringbuffer *buf , u8 const *src ,
                                   size_t len )
{
  ssize_t free ;
  ssize_t tmp ;
  {
  if (len == 0UL) {
    return (0);
  } else {
  }
  if ((unsigned long )buf->data == (unsigned long )((u8 *)0U)) {
    return (0);
  } else {
  }
  free = dvb_ringbuffer_free(buf);
  if ((unsigned long )free < len) {
    if (debug != 0) {
      printk("dmxdev: buffer overflow\n");
    } else {
    }
    return (-75);
  } else {
  }
  tmp = dvb_ringbuffer_write(buf, src, len);
  return ((int )tmp);
}
}
static ssize_t dvb_dmxdev_buffer_read(struct dvb_ringbuffer *src , int non_blocking ,
                                      char *buf , size_t count , loff_t *ppos )
{
  size_t todo ;
  ssize_t avail ;
  ssize_t ret ;
  int tmp ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  ret = 0L;
  if ((unsigned long )src->data == (unsigned long )((u8 *)0U)) {
    return (0L);
  } else {
  }
  if (src->error != 0) {
    ret = (ssize_t )src->error;
    dvb_ringbuffer_flush(src);
    return (ret);
  } else {
  }
  todo = count;
  goto ldv_26125;
  ldv_26124: ;
  if (non_blocking != 0) {
    tmp = dvb_ringbuffer_empty(src);
    if (tmp != 0) {
      ret = -11L;
      goto ldv_26114;
    } else {
    }
  } else {
  }
  __ret = 0;
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dmxdev.c",
                85, 0);
  tmp___2 = dvb_ringbuffer_empty(src);
  if (tmp___2 != 0 && src->error == 0) {
    __ret___0 = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_26121:
    tmp___0 = prepare_to_wait_event(& src->queue, & __wait, 1);
    __int = tmp___0;
    tmp___1 = dvb_ringbuffer_empty(src);
    if (tmp___1 == 0 || src->error != 0) {
      goto ldv_26120;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_26120;
    } else {
    }
    schedule();
    goto ldv_26121;
    ldv_26120:
    finish_wait(& src->queue, & __wait);
    __ret = (int )__ret___0;
  } else {
  }
  ret = (ssize_t )__ret;
  if (ret < 0L) {
    goto ldv_26114;
  } else {
  }
  if (src->error != 0) {
    ret = (ssize_t )src->error;
    dvb_ringbuffer_flush(src);
    goto ldv_26114;
  } else {
  }
  avail = dvb_ringbuffer_avail(src);
  if ((unsigned long )avail > todo) {
    avail = (ssize_t )todo;
  } else {
  }
  ret = dvb_ringbuffer_read_user(src, (u8 *)buf, (size_t )avail);
  if (ret < 0L) {
    goto ldv_26114;
  } else {
  }
  buf = buf + (unsigned long )ret;
  todo = todo - (unsigned long )ret;
  ldv_26125: ;
  if (todo != 0UL) {
    goto ldv_26124;
  } else {
  }
  ldv_26114: ;
  return (count != todo ? (ssize_t )(count - todo) : ret);
}
}
static struct dmx_frontend *get_fe(struct dmx_demux *demux , int type )
{
  struct list_head *head ;
  struct list_head *pos ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  head = (*(demux->get_frontends))(demux);
  if ((unsigned long )head == (unsigned long )((struct list_head *)0)) {
    return ((struct dmx_frontend *)0);
  } else {
  }
  pos = head->next;
  goto ldv_26137;
  ldv_26136:
  __mptr___0 = (struct list_head const *)pos;
  if ((unsigned int )((struct dmx_frontend *)__mptr___0)->source == (unsigned int )type) {
    __mptr = (struct list_head const *)pos;
    return ((struct dmx_frontend *)__mptr);
  } else {
  }
  pos = pos->next;
  ldv_26137: ;
  if ((unsigned long )pos != (unsigned long )head) {
    goto ldv_26136;
  } else {
  }
  return ((struct dmx_frontend *)0);
}
}
static int dvb_dvr_open(struct inode *inode , struct file *file )
{
  struct dvb_device *dvbdev ;
  struct dmxdev *dmxdev ;
  struct dmx_frontend *front ;
  int tmp ;
  void *mem ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  dmxdev = (struct dmxdev *)dvbdev->priv;
  if (debug != 0) {
    printk("function : %s\n", "dvb_dvr_open");
  } else {
  }
  tmp = mutex_lock_interruptible_nested(& dmxdev->mutex, 0U);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dmxdev + 40UL) != 0U) {
    mutex_unlock(& dmxdev->mutex);
    return (-19);
  } else {
  }
  if ((file->f_flags & 3U) == 2U) {
    if ((dmxdev->capabilities & 1) == 0) {
      mutex_unlock(& dmxdev->mutex);
      return (-95);
    } else {
    }
  } else {
  }
  if ((file->f_flags & 3U) == 0U) {
    if (dvbdev->readers == 0) {
      mutex_unlock(& dmxdev->mutex);
      return (-16);
    } else {
    }
    mem = vmalloc(1925120UL);
    if ((unsigned long )mem == (unsigned long )((void *)0)) {
      mutex_unlock(& dmxdev->mutex);
      return (-12);
    } else {
    }
    dvb_ringbuffer_init(& dmxdev->dvr_buffer, mem, 1925120UL);
    dvbdev->readers = dvbdev->readers - 1;
  } else {
  }
  if ((file->f_flags & 3U) == 1U) {
    dmxdev->dvr_orig_fe = (dmxdev->demux)->frontend;
    if ((unsigned long )(dmxdev->demux)->write == (unsigned long )((int (*)(struct dmx_demux * ,
                                                                            char const * ,
                                                                            size_t ))0)) {
      mutex_unlock(& dmxdev->mutex);
      return (-95);
    } else {
    }
    front = get_fe(dmxdev->demux, 0);
    if ((unsigned long )front == (unsigned long )((struct dmx_frontend *)0)) {
      mutex_unlock(& dmxdev->mutex);
      return (-22);
    } else {
    }
    (*((dmxdev->demux)->disconnect_frontend))(dmxdev->demux);
    (*((dmxdev->demux)->connect_frontend))(dmxdev->demux, front);
  } else {
  }
  dvbdev->users = dvbdev->users + 1;
  mutex_unlock(& dmxdev->mutex);
  return (0);
}
}
static int dvb_dvr_release(struct inode *inode , struct file *file )
{
  struct dvb_device *dvbdev ;
  struct dmxdev *dmxdev ;
  void *mem ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  dmxdev = (struct dmxdev *)dvbdev->priv;
  mutex_lock_nested(& dmxdev->mutex, 0U);
  if ((file->f_flags & 3U) == 1U) {
    (*((dmxdev->demux)->disconnect_frontend))(dmxdev->demux);
    (*((dmxdev->demux)->connect_frontend))(dmxdev->demux, dmxdev->dvr_orig_fe);
  } else {
  }
  if ((file->f_flags & 3U) == 0U) {
    dvbdev->readers = dvbdev->readers + 1;
    if ((unsigned long )dmxdev->dvr_buffer.data != (unsigned long )((u8 *)0U)) {
      mem = (void *)dmxdev->dvr_buffer.data;
      __asm__ volatile ("mfence": : : "memory");
      spin_lock_irq(& dmxdev->lock);
      dmxdev->dvr_buffer.data = (u8 *)0U;
      spin_unlock_irq(& dmxdev->lock);
      vfree((void const *)mem);
    } else {
    }
  } else {
  }
  dvbdev->users = dvbdev->users - 1;
  if (dvbdev->users == 1 && (unsigned int )*((unsigned char *)dmxdev + 40UL) != 0U) {
    mutex_unlock(& dmxdev->mutex);
    __wake_up(& dvbdev->wait_queue, 3U, 1, (void *)0);
  } else {
    mutex_unlock(& dmxdev->mutex);
  }
  return (0);
}
}
static ssize_t dvb_dvr_write(struct file *file , char const *buf , size_t count ,
                             loff_t *ppos )
{
  struct dvb_device *dvbdev ;
  struct dmxdev *dmxdev ;
  int ret ;
  int tmp ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  dmxdev = (struct dmxdev *)dvbdev->priv;
  if ((unsigned long )(dmxdev->demux)->write == (unsigned long )((int (*)(struct dmx_demux * ,
                                                                          char const * ,
                                                                          size_t ))0)) {
    return (-95L);
  } else {
  }
  if ((file->f_flags & 3U) != 1U) {
    return (-22L);
  } else {
  }
  tmp = mutex_lock_interruptible_nested(& dmxdev->mutex, 0U);
  if (tmp != 0) {
    return (-512L);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dmxdev + 40UL) != 0U) {
    mutex_unlock(& dmxdev->mutex);
    return (-19L);
  } else {
  }
  ret = (*((dmxdev->demux)->write))(dmxdev->demux, buf, count);
  mutex_unlock(& dmxdev->mutex);
  return ((ssize_t )ret);
}
}
static ssize_t dvb_dvr_read(struct file *file , char *buf , size_t count , loff_t *ppos )
{
  struct dvb_device *dvbdev ;
  struct dmxdev *dmxdev ;
  ssize_t tmp ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  dmxdev = (struct dmxdev *)dvbdev->priv;
  if ((unsigned int )*((unsigned char *)dmxdev + 40UL) != 0U) {
    return (-19L);
  } else {
  }
  tmp = dvb_dmxdev_buffer_read(& dmxdev->dvr_buffer, (int )file->f_flags & 2048, buf,
                               count, ppos);
  return (tmp);
}
}
static int dvb_dvr_set_buffer_size(struct dmxdev *dmxdev , unsigned long size )
{
  struct dvb_ringbuffer *buf ;
  void *newmem ;
  void *oldmem ;
  {
  buf = & dmxdev->dvr_buffer;
  if (debug != 0) {
    printk("function : %s\n", "dvb_dvr_set_buffer_size");
  } else {
  }
  if ((unsigned long )buf->size == size) {
    return (0);
  } else {
  }
  if (size == 0UL) {
    return (-22);
  } else {
  }
  newmem = vmalloc(size);
  if ((unsigned long )newmem == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  oldmem = (void *)buf->data;
  spin_lock_irq(& dmxdev->lock);
  buf->data = (u8 *)newmem;
  buf->size = (ssize_t )size;
  dvb_ringbuffer_reset(buf);
  spin_unlock_irq(& dmxdev->lock);
  vfree((void const *)oldmem);
  return (0);
}
}
__inline static void dvb_dmxdev_filter_state_set(struct dmxdev_filter *dmxdevfilter ,
                                                 int state )
{
  {
  spin_lock_irq(& (dmxdevfilter->dev)->lock);
  dmxdevfilter->state = (enum dmxdev_state )state;
  spin_unlock_irq(& (dmxdevfilter->dev)->lock);
  return;
}
}
static int dvb_dmxdev_set_buffer_size(struct dmxdev_filter *dmxdevfilter , unsigned long size )
{
  struct dvb_ringbuffer *buf ;
  void *newmem ;
  void *oldmem ;
  {
  buf = & dmxdevfilter->buffer;
  if ((unsigned long )buf->size == size) {
    return (0);
  } else {
  }
  if (size == 0UL) {
    return (-22);
  } else {
  }
  if ((unsigned int )dmxdevfilter->state > 2U) {
    return (-16);
  } else {
  }
  newmem = vmalloc(size);
  if ((unsigned long )newmem == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  oldmem = (void *)buf->data;
  spin_lock_irq(& (dmxdevfilter->dev)->lock);
  buf->data = (u8 *)newmem;
  buf->size = (ssize_t )size;
  dvb_ringbuffer_reset(buf);
  spin_unlock_irq(& (dmxdevfilter->dev)->lock);
  vfree((void const *)oldmem);
  return (0);
}
}
static void dvb_dmxdev_filter_timeout(unsigned long data )
{
  struct dmxdev_filter *dmxdevfilter ;
  {
  dmxdevfilter = (struct dmxdev_filter *)data;
  dmxdevfilter->buffer.error = -110;
  spin_lock_irq(& (dmxdevfilter->dev)->lock);
  dmxdevfilter->state = 5;
  spin_unlock_irq(& (dmxdevfilter->dev)->lock);
  __wake_up(& dmxdevfilter->buffer.queue, 3U, 1, (void *)0);
  return;
}
}
static void dvb_dmxdev_filter_timer(struct dmxdev_filter *dmxdevfilter )
{
  struct dmx_sct_filter_params *para ;
  {
  para = & dmxdevfilter->params.sec;
  ldv_del_timer_32(& dmxdevfilter->timer);
  if (para->timeout != 0U) {
    dmxdevfilter->timer.function = & dvb_dmxdev_filter_timeout;
    dmxdevfilter->timer.data = (unsigned long )dmxdevfilter;
    dmxdevfilter->timer.expires = ((unsigned long )((para->timeout * 250U + 125U) / 1000U) + (unsigned long )jiffies) + 1UL;
    add_timer(& dmxdevfilter->timer);
  } else {
  }
  return;
}
}
static int dvb_dmxdev_section_callback(u8 const *buffer1 , size_t buffer1_len ,
                                       u8 const *buffer2 , size_t buffer2_len ,
                                       struct dmx_section_filter *filter , enum dmx_success success )
{
  struct dmxdev_filter *dmxdevfilter ;
  int ret ;
  {
  dmxdevfilter = (struct dmxdev_filter *)filter->priv;
  if (dmxdevfilter->buffer.error != 0) {
    __wake_up(& dmxdevfilter->buffer.queue, 3U, 1, (void *)0);
    return (0);
  } else {
  }
  spin_lock(& (dmxdevfilter->dev)->lock);
  if ((unsigned int )dmxdevfilter->state != 3U) {
    spin_unlock(& (dmxdevfilter->dev)->lock);
    return (0);
  } else {
  }
  ldv_del_timer_33(& dmxdevfilter->timer);
  if (debug != 0) {
    printk("dmxdev: section callback %*ph\n", 6, buffer1);
  } else {
  }
  ret = dvb_dmxdev_buffer_write(& dmxdevfilter->buffer, buffer1, buffer1_len);
  if ((size_t )ret == buffer1_len) {
    ret = dvb_dmxdev_buffer_write(& dmxdevfilter->buffer, buffer2, buffer2_len);
  } else {
  }
  if (ret < 0) {
    dmxdevfilter->buffer.error = ret;
  } else {
  }
  if ((dmxdevfilter->params.sec.flags & 2U) != 0U) {
    dmxdevfilter->state = 4;
  } else {
  }
  spin_unlock(& (dmxdevfilter->dev)->lock);
  __wake_up(& dmxdevfilter->buffer.queue, 3U, 1, (void *)0);
  return (0);
}
}
static int dvb_dmxdev_ts_callback(u8 const *buffer1 , size_t buffer1_len , u8 const *buffer2 ,
                                  size_t buffer2_len , struct dmx_ts_feed *feed ,
                                  enum dmx_success success )
{
  struct dmxdev_filter *dmxdevfilter ;
  struct dvb_ringbuffer *buffer ;
  int ret ;
  {
  dmxdevfilter = (struct dmxdev_filter *)feed->priv;
  spin_lock(& (dmxdevfilter->dev)->lock);
  if ((unsigned int )dmxdevfilter->params.pes.output == 0U) {
    spin_unlock(& (dmxdevfilter->dev)->lock);
    return (0);
  } else {
  }
  if ((unsigned int )dmxdevfilter->params.pes.output == 1U || (unsigned int )dmxdevfilter->params.pes.output == 3U) {
    buffer = & dmxdevfilter->buffer;
  } else {
    buffer = & (dmxdevfilter->dev)->dvr_buffer;
  }
  if (buffer->error != 0) {
    spin_unlock(& (dmxdevfilter->dev)->lock);
    __wake_up(& buffer->queue, 3U, 1, (void *)0);
    return (0);
  } else {
  }
  ret = dvb_dmxdev_buffer_write(buffer, buffer1, buffer1_len);
  if ((size_t )ret == buffer1_len) {
    ret = dvb_dmxdev_buffer_write(buffer, buffer2, buffer2_len);
  } else {
  }
  if (ret < 0) {
    buffer->error = ret;
  } else {
  }
  spin_unlock(& (dmxdevfilter->dev)->lock);
  __wake_up(& buffer->queue, 3U, 1, (void *)0);
  return (0);
}
}
static int dvb_dmxdev_feed_stop(struct dmxdev_filter *dmxdevfilter )
{
  struct dmxdev_feed *feed ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  dvb_dmxdev_filter_state_set(dmxdevfilter, 2);
  switch ((unsigned int )dmxdevfilter->type) {
  case 1U:
  ldv_del_timer_34(& dmxdevfilter->timer);
  (*((dmxdevfilter->feed.sec)->stop_filtering))(dmxdevfilter->feed.sec);
  goto ldv_26225;
  case 2U:
  __mptr = (struct list_head const *)dmxdevfilter->feed.ts.next;
  feed = (struct dmxdev_feed *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_26232;
  ldv_26231:
  (*((feed->ts)->stop_filtering))(feed->ts);
  __mptr___0 = (struct list_head const *)feed->next.next;
  feed = (struct dmxdev_feed *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_26232: ;
  if ((unsigned long )(& feed->next) != (unsigned long )(& dmxdevfilter->feed.ts)) {
    goto ldv_26231;
  } else {
  }
  goto ldv_26225;
  default: ;
  return (-22);
  }
  ldv_26225: ;
  return (0);
}
}
static int dvb_dmxdev_feed_start(struct dmxdev_filter *filter )
{
  struct dmxdev_feed *feed ;
  int ret ;
  int tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  dvb_dmxdev_filter_state_set(filter, 3);
  switch ((unsigned int )filter->type) {
  case 1U:
  tmp = (*((filter->feed.sec)->start_filtering))(filter->feed.sec);
  return (tmp);
  case 2U:
  __mptr = (struct list_head const *)filter->feed.ts.next;
  feed = (struct dmxdev_feed *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_26247;
  ldv_26246:
  ret = (*((feed->ts)->start_filtering))(feed->ts);
  if (ret < 0) {
    dvb_dmxdev_feed_stop(filter);
    return (ret);
  } else {
  }
  __mptr___0 = (struct list_head const *)feed->next.next;
  feed = (struct dmxdev_feed *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_26247: ;
  if ((unsigned long )(& feed->next) != (unsigned long )(& filter->feed.ts)) {
    goto ldv_26246;
  } else {
  }
  goto ldv_26249;
  default: ;
  return (-22);
  }
  ldv_26249: ;
  return (0);
}
}
static int dvb_dmxdev_feed_restart(struct dmxdev_filter *filter )
{
  int i ;
  struct dmxdev *dmxdev ;
  u16 pid ;
  {
  dmxdev = filter->dev;
  pid = filter->params.sec.pid;
  i = 0;
  goto ldv_26258;
  ldv_26257: ;
  if (((unsigned int )(dmxdev->filter + (unsigned long )i)->state > 2U && (unsigned int )(dmxdev->filter + (unsigned long )i)->type == 1U) && (int )(dmxdev->filter + (unsigned long )i)->params.sec.pid == (int )pid) {
    dvb_dmxdev_feed_start(dmxdev->filter + (unsigned long )i);
    return (0);
  } else {
  }
  i = i + 1;
  ldv_26258: ;
  if (dmxdev->filternum > i) {
    goto ldv_26257;
  } else {
  }
  (*(((filter->dev)->demux)->release_section_feed))(dmxdev->demux, filter->feed.sec);
  return (0);
}
}
static int dvb_dmxdev_filter_stop(struct dmxdev_filter *dmxdevfilter )
{
  struct dmxdev_feed *feed ;
  struct dmx_demux *demux ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  if ((unsigned int )dmxdevfilter->state <= 2U) {
    return (0);
  } else {
  }
  switch ((unsigned int )dmxdevfilter->type) {
  case 1U: ;
  if ((unsigned long )dmxdevfilter->feed.sec == (unsigned long )((struct dmx_section_feed *)0)) {
    goto ldv_26266;
  } else {
  }
  dvb_dmxdev_feed_stop(dmxdevfilter);
  if ((unsigned long )dmxdevfilter->filter.sec != (unsigned long )((struct dmx_section_filter *)0)) {
    (*((dmxdevfilter->feed.sec)->release_filter))(dmxdevfilter->feed.sec, dmxdevfilter->filter.sec);
  } else {
  }
  dvb_dmxdev_feed_restart(dmxdevfilter);
  dmxdevfilter->feed.sec = (struct dmx_section_feed *)0;
  goto ldv_26266;
  case 2U:
  dvb_dmxdev_feed_stop(dmxdevfilter);
  demux = (dmxdevfilter->dev)->demux;
  __mptr = (struct list_head const *)dmxdevfilter->feed.ts.next;
  feed = (struct dmxdev_feed *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_26273;
  ldv_26272:
  (*(demux->release_ts_feed))(demux, feed->ts);
  feed->ts = (struct dmx_ts_feed *)0;
  __mptr___0 = (struct list_head const *)feed->next.next;
  feed = (struct dmxdev_feed *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_26273: ;
  if ((unsigned long )(& feed->next) != (unsigned long )(& dmxdevfilter->feed.ts)) {
    goto ldv_26272;
  } else {
  }
  goto ldv_26266;
  default: ;
  if ((unsigned int )dmxdevfilter->state == 1U) {
    return (0);
  } else {
  }
  return (-22);
  }
  ldv_26266:
  dvb_ringbuffer_flush(& dmxdevfilter->buffer);
  return (0);
}
}
static void dvb_dmxdev_delete_pids(struct dmxdev_filter *dmxdevfilter )
{
  struct dmxdev_feed *feed ;
  struct dmxdev_feed *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int tmp___0 ;
  long tmp___1 ;
  {
  __mptr = (struct list_head const *)dmxdevfilter->feed.ts.next;
  feed = (struct dmxdev_feed *)__mptr + 0xfffffffffffffff0UL;
  __mptr___0 = (struct list_head const *)feed->next.next;
  tmp = (struct dmxdev_feed *)__mptr___0 + 0xfffffffffffffff0UL;
  goto ldv_26288;
  ldv_26287:
  list_del(& feed->next);
  kfree((void const *)feed);
  feed = tmp;
  __mptr___1 = (struct list_head const *)tmp->next.next;
  tmp = (struct dmxdev_feed *)__mptr___1 + 0xfffffffffffffff0UL;
  ldv_26288: ;
  if ((unsigned long )(& feed->next) != (unsigned long )(& dmxdevfilter->feed.ts)) {
    goto ldv_26287;
  } else {
  }
  tmp___0 = list_empty((struct list_head const *)(& dmxdevfilter->feed.ts));
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dmxdev.c"),
                         "i" (541), "i" (12UL));
    ldv_26290: ;
    goto ldv_26290;
  } else {
  }
  return;
}
}
__inline static int dvb_dmxdev_filter_reset(struct dmxdev_filter *dmxdevfilter )
{
  {
  if ((unsigned int )dmxdevfilter->state <= 1U) {
    return (0);
  } else {
  }
  if ((unsigned int )dmxdevfilter->type == 2U) {
    dvb_dmxdev_delete_pids(dmxdevfilter);
  } else {
  }
  dmxdevfilter->type = 0;
  dvb_dmxdev_filter_state_set(dmxdevfilter, 1);
  return (0);
}
}
static int dvb_dmxdev_start_feed(struct dmxdev *dmxdev , struct dmxdev_filter *filter ,
                                 struct dmxdev_feed *feed )
{
  struct timespec timeout ;
  struct dmx_pes_filter_params *para ;
  dmx_output_t otype ;
  int ret ;
  int ts_type ;
  enum dmx_ts_pes ts_pes ;
  struct dmx_ts_feed *tsfeed ;
  {
  timeout.tv_sec = 0L;
  timeout.tv_nsec = 0L;
  para = & filter->params.pes;
  feed->ts = (struct dmx_ts_feed *)0;
  otype = para->output;
  ts_pes = para->pes_type;
  if ((unsigned int )ts_pes <= 19U) {
    ts_type = 4;
  } else {
    ts_type = 0;
  }
  if ((unsigned int )otype == 2U) {
    ts_type = ts_type | 1;
  } else
  if ((unsigned int )otype == 3U) {
    ts_type = ts_type | 9;
  } else
  if ((unsigned int )otype == 1U) {
    ts_type = ts_type | 11;
  } else {
  }
  ret = (*((dmxdev->demux)->allocate_ts_feed))(dmxdev->demux, & feed->ts, & dvb_dmxdev_ts_callback);
  if (ret < 0) {
    return (ret);
  } else {
  }
  tsfeed = feed->ts;
  tsfeed->priv = (void *)filter;
  ret = (*(tsfeed->set))(tsfeed, (int )feed->pid, ts_type, ts_pes, 32768UL, timeout);
  if (ret < 0) {
    (*((dmxdev->demux)->release_ts_feed))(dmxdev->demux, tsfeed);
    return (ret);
  } else {
  }
  ret = (*(tsfeed->start_filtering))(tsfeed);
  if (ret < 0) {
    (*((dmxdev->demux)->release_ts_feed))(dmxdev->demux, tsfeed);
    return (ret);
  } else {
  }
  return (0);
}
}
static int dvb_dmxdev_filter_start(struct dmxdev_filter *filter )
{
  struct dmxdev *dmxdev ;
  struct dmxdev_feed *feed ;
  void *mem ;
  int ret ;
  int i ;
  struct dmx_sct_filter_params *para ;
  struct dmx_section_filter **secfilter ;
  struct dmx_section_feed **secfeed ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  dmxdev = filter->dev;
  if ((unsigned int )filter->state <= 1U) {
    return (-22);
  } else {
  }
  if ((unsigned int )filter->state > 2U) {
    dvb_dmxdev_filter_stop(filter);
  } else {
  }
  if ((unsigned long )filter->buffer.data == (unsigned long )((u8 *)0U)) {
    mem = vmalloc((unsigned long )filter->buffer.size);
    if ((unsigned long )mem == (unsigned long )((void *)0)) {
      return (-12);
    } else {
    }
    spin_lock_irq(& (filter->dev)->lock);
    filter->buffer.data = (u8 *)mem;
    spin_unlock_irq(& (filter->dev)->lock);
  } else {
  }
  dvb_ringbuffer_flush(& filter->buffer);
  switch ((unsigned int )filter->type) {
  case 1U:
  para = & filter->params.sec;
  secfilter = & filter->filter.sec;
  secfeed = & filter->feed.sec;
  *secfilter = (struct dmx_section_filter *)0;
  *secfeed = (struct dmx_section_feed *)0;
  i = 0;
  goto ldv_26320;
  ldv_26319: ;
  if (((unsigned int )(dmxdev->filter + (unsigned long )i)->state > 2U && (unsigned int )(dmxdev->filter + (unsigned long )i)->type == 1U) && (int )(dmxdev->filter + (unsigned long )i)->params.sec.pid == (int )para->pid) {
    *secfeed = (dmxdev->filter + (unsigned long )i)->feed.sec;
    goto ldv_26318;
  } else {
  }
  i = i + 1;
  ldv_26320: ;
  if (dmxdev->filternum > i) {
    goto ldv_26319;
  } else {
  }
  ldv_26318: ;
  if ((unsigned long )*secfeed == (unsigned long )((struct dmx_section_feed *)0)) {
    ret = (*((dmxdev->demux)->allocate_section_feed))(dmxdev->demux, secfeed, & dvb_dmxdev_section_callback);
    if (ret < 0) {
      printk("DVB (%s): could not alloc feed\n", "dvb_dmxdev_filter_start");
      return (ret);
    } else {
    }
    ret = (*((*secfeed)->set))(*secfeed, (int )para->pid, 32768UL, (int )para->flags & 1);
    if (ret < 0) {
      printk("DVB (%s): could not set feed\n", "dvb_dmxdev_filter_start");
      dvb_dmxdev_feed_restart(filter);
      return (ret);
    } else {
    }
  } else {
    dvb_dmxdev_feed_stop(filter);
  }
  ret = (*((*secfeed)->allocate_filter))(*secfeed, secfilter);
  if (ret < 0) {
    dvb_dmxdev_feed_restart(filter);
    (*((filter->feed.sec)->start_filtering))(*secfeed);
    if (debug != 0) {
      printk("could not get filter\n");
    } else {
    }
    return (ret);
  } else {
  }
  (*secfilter)->priv = (void *)filter;
  memcpy((void *)(& (*secfilter)->filter_value) + 3U, (void const *)(& para->filter.filter) + 1U,
           15UL);
  memcpy((void *)(& (*secfilter)->filter_mask) + 3U, (void const *)(& para->filter.mask) + 1U,
           15UL);
  memcpy((void *)(& (*secfilter)->filter_mode) + 3U, (void const *)(& para->filter.mode) + 1U,
           15UL);
  (*secfilter)->filter_value[0] = para->filter.filter[0];
  (*secfilter)->filter_mask[0] = para->filter.mask[0];
  (*secfilter)->filter_mode[0] = para->filter.mode[0];
  (*secfilter)->filter_mask[1] = 0U;
  (*secfilter)->filter_mask[2] = 0U;
  filter->todo = 0;
  ret = (*((filter->feed.sec)->start_filtering))(filter->feed.sec);
  if (ret < 0) {
    return (ret);
  } else {
  }
  dvb_dmxdev_filter_timer(filter);
  goto ldv_26322;
  case 2U:
  __mptr = (struct list_head const *)filter->feed.ts.next;
  feed = (struct dmxdev_feed *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_26329;
  ldv_26328:
  ret = dvb_dmxdev_start_feed(dmxdev, filter, feed);
  if (ret < 0) {
    dvb_dmxdev_filter_stop(filter);
    return (ret);
  } else {
  }
  __mptr___0 = (struct list_head const *)feed->next.next;
  feed = (struct dmxdev_feed *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_26329: ;
  if ((unsigned long )(& feed->next) != (unsigned long )(& filter->feed.ts)) {
    goto ldv_26328;
  } else {
  }
  goto ldv_26322;
  default: ;
  return (-22);
  }
  ldv_26322:
  dvb_dmxdev_filter_state_set(filter, 3);
  return (0);
}
}
static int dvb_demux_open(struct inode *inode , struct file *file )
{
  struct dvb_device *dvbdev ;
  struct dmxdev *dmxdev ;
  int i ;
  struct dmxdev_filter *dmxdevfilter ;
  int tmp ;
  struct lock_class_key __key ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  dmxdev = (struct dmxdev *)dvbdev->priv;
  if ((unsigned long )dmxdev->filter == (unsigned long )((struct dmxdev_filter *)0)) {
    return (-22);
  } else {
  }
  tmp = mutex_lock_interruptible_nested(& dmxdev->mutex, 0U);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  i = 0;
  goto ldv_26342;
  ldv_26341: ;
  if ((unsigned int )(dmxdev->filter + (unsigned long )i)->state == 0U) {
    goto ldv_26340;
  } else {
  }
  i = i + 1;
  ldv_26342: ;
  if (dmxdev->filternum > i) {
    goto ldv_26341;
  } else {
  }
  ldv_26340: ;
  if (dmxdev->filternum == i) {
    mutex_unlock(& dmxdev->mutex);
    return (-24);
  } else {
  }
  dmxdevfilter = dmxdev->filter + (unsigned long )i;
  __mutex_init(& dmxdevfilter->mutex, "&dmxdevfilter->mutex", & __key);
  file->private_data = (void *)dmxdevfilter;
  dvb_ringbuffer_init(& dmxdevfilter->buffer, (void *)0, 8192UL);
  dmxdevfilter->type = 0;
  dvb_dmxdev_filter_state_set(dmxdevfilter, 1);
  reg_timer_3(& dmxdevfilter->timer);
  dvbdev->users = dvbdev->users + 1;
  mutex_unlock(& dmxdev->mutex);
  return (0);
}
}
static int dvb_dmxdev_filter_free(struct dmxdev *dmxdev , struct dmxdev_filter *dmxdevfilter )
{
  void *mem ;
  {
  mutex_lock_nested(& dmxdev->mutex, 0U);
  mutex_lock_nested(& dmxdevfilter->mutex, 0U);
  dvb_dmxdev_filter_stop(dmxdevfilter);
  dvb_dmxdev_filter_reset(dmxdevfilter);
  if ((unsigned long )dmxdevfilter->buffer.data != (unsigned long )((u8 *)0U)) {
    mem = (void *)dmxdevfilter->buffer.data;
    spin_lock_irq(& dmxdev->lock);
    dmxdevfilter->buffer.data = (u8 *)0U;
    spin_unlock_irq(& dmxdev->lock);
    vfree((void const *)mem);
  } else {
  }
  dvb_dmxdev_filter_state_set(dmxdevfilter, 0);
  __wake_up(& dmxdevfilter->buffer.queue, 3U, 1, (void *)0);
  mutex_unlock(& dmxdevfilter->mutex);
  mutex_unlock(& dmxdev->mutex);
  return (0);
}
}
__inline static void invert_mode(dmx_filter_t *filter )
{
  int i ;
  {
  i = 0;
  goto ldv_26354;
  ldv_26353:
  filter->mode[i] = ~ ((int )filter->mode[i]);
  i = i + 1;
  ldv_26354: ;
  if (i <= 15) {
    goto ldv_26353;
  } else {
  }
  return;
}
}
static int dvb_dmxdev_add_pid(struct dmxdev *dmxdev , struct dmxdev_filter *filter ,
                              u16 pid )
{
  struct dmxdev_feed *feed ;
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned int )filter->type != 2U || (unsigned int )filter->state <= 1U) {
    return (-22);
  } else {
  }
  if ((unsigned int )filter->params.pes.output != 3U) {
    tmp = list_empty((struct list_head const *)(& filter->feed.ts));
    if (tmp == 0) {
      return (-22);
    } else {
    }
  } else {
  }
  tmp___0 = kzalloc(32UL, 208U);
  feed = (struct dmxdev_feed *)tmp___0;
  if ((unsigned long )feed == (unsigned long )((struct dmxdev_feed *)0)) {
    return (-12);
  } else {
  }
  feed->pid = pid;
  list_add(& feed->next, & filter->feed.ts);
  if ((unsigned int )filter->state > 2U) {
    tmp___1 = dvb_dmxdev_start_feed(dmxdev, filter, feed);
    return (tmp___1);
  } else {
  }
  return (0);
}
}
static int dvb_dmxdev_remove_pid(struct dmxdev *dmxdev , struct dmxdev_filter *filter ,
                                 u16 pid )
{
  struct dmxdev_feed *feed ;
  struct dmxdev_feed *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  if ((unsigned int )filter->type != 2U || (unsigned int )filter->state <= 1U) {
    return (-22);
  } else {
  }
  __mptr = (struct list_head const *)filter->feed.ts.next;
  feed = (struct dmxdev_feed *)__mptr + 0xfffffffffffffff0UL;
  __mptr___0 = (struct list_head const *)feed->next.next;
  tmp = (struct dmxdev_feed *)__mptr___0 + 0xfffffffffffffff0UL;
  goto ldv_26376;
  ldv_26375: ;
  if ((int )feed->pid == (int )pid && (unsigned long )feed->ts != (unsigned long )((struct dmx_ts_feed *)0)) {
    (*((feed->ts)->stop_filtering))(feed->ts);
    (*(((filter->dev)->demux)->release_ts_feed))((filter->dev)->demux, feed->ts);
    list_del(& feed->next);
    kfree((void const *)feed);
  } else {
  }
  feed = tmp;
  __mptr___1 = (struct list_head const *)tmp->next.next;
  tmp = (struct dmxdev_feed *)__mptr___1 + 0xfffffffffffffff0UL;
  ldv_26376: ;
  if ((unsigned long )(& feed->next) != (unsigned long )(& filter->feed.ts)) {
    goto ldv_26375;
  } else {
  }
  return (0);
}
}
static int dvb_dmxdev_filter_set(struct dmxdev *dmxdev , struct dmxdev_filter *dmxdevfilter ,
                                 struct dmx_sct_filter_params *params )
{
  int tmp ;
  {
  if (debug != 0) {
    printk("function : %s, PID=0x%04x, flags=%02x, timeout=%d\n", "dvb_dmxdev_filter_set",
           (int )params->pid, params->flags, params->timeout);
  } else {
  }
  dvb_dmxdev_filter_stop(dmxdevfilter);
  dmxdevfilter->type = 1;
  memcpy((void *)(& dmxdevfilter->params.sec), (void const *)params, 60UL);
  invert_mode(& dmxdevfilter->params.sec.filter);
  dvb_dmxdev_filter_state_set(dmxdevfilter, 2);
  if ((params->flags & 4U) != 0U) {
    tmp = dvb_dmxdev_filter_start(dmxdevfilter);
    return (tmp);
  } else {
  }
  return (0);
}
}
static int dvb_dmxdev_pes_filter_set(struct dmxdev *dmxdev , struct dmxdev_filter *dmxdevfilter ,
                                     struct dmx_pes_filter_params *params )
{
  int ret ;
  int tmp ;
  {
  dvb_dmxdev_filter_stop(dmxdevfilter);
  dvb_dmxdev_filter_reset(dmxdevfilter);
  if ((unsigned int )params->pes_type > 20U) {
    return (-22);
  } else {
  }
  dmxdevfilter->type = 2;
  memcpy((void *)(& dmxdevfilter->params), (void const *)params, 20UL);
  INIT_LIST_HEAD(& dmxdevfilter->feed.ts);
  dvb_dmxdev_filter_state_set(dmxdevfilter, 2);
  ret = dvb_dmxdev_add_pid(dmxdev, dmxdevfilter, (int )dmxdevfilter->params.pes.pid);
  if (ret < 0) {
    return (ret);
  } else {
  }
  if ((params->flags & 4U) != 0U) {
    tmp = dvb_dmxdev_filter_start(dmxdevfilter);
    return (tmp);
  } else {
  }
  return (0);
}
}
static ssize_t dvb_dmxdev_read_sec(struct dmxdev_filter *dfil , struct file *file ,
                                   char *buf , size_t count , loff_t *ppos )
{
  int result ;
  int hcount ;
  int done ;
  ssize_t tmp ;
  unsigned long tmp___0 ;
  ssize_t tmp___1 ;
  {
  done = 0;
  if (dfil->todo <= 0) {
    hcount = dfil->todo + 3;
    if ((size_t )hcount > count) {
      hcount = (int )count;
    } else {
    }
    tmp = dvb_dmxdev_buffer_read(& dfil->buffer, (int )file->f_flags & 2048, buf,
                                 (size_t )hcount, ppos);
    result = (int )tmp;
    if (result < 0) {
      dfil->todo = 0;
      return ((ssize_t )result);
    } else {
    }
    tmp___0 = copy_from_user((void *)(& dfil->secheader) + - ((unsigned long )dfil->todo),
                             (void const *)buf, (unsigned long )result);
    if (tmp___0 != 0UL) {
      return (-14L);
    } else {
    }
    buf = buf + (unsigned long )result;
    done = result;
    count = count - (size_t )result;
    dfil->todo = dfil->todo - result;
    if (dfil->todo >= -2) {
      return ((ssize_t )done);
    } else {
    }
    dfil->todo = (((int )dfil->secheader[1] << 8) | (int )dfil->secheader[2]) & 4095;
    if (count == 0UL) {
      return ((ssize_t )done);
    } else {
    }
  } else {
  }
  if ((size_t )dfil->todo < count) {
    count = (size_t )dfil->todo;
  } else {
  }
  tmp___1 = dvb_dmxdev_buffer_read(& dfil->buffer, (int )file->f_flags & 2048, buf,
                                   count, ppos);
  result = (int )tmp___1;
  if (result < 0) {
    return ((ssize_t )result);
  } else {
  }
  dfil->todo = dfil->todo - result;
  return ((ssize_t )(result + done));
}
}
static ssize_t dvb_demux_read(struct file *file , char *buf , size_t count , loff_t *ppos )
{
  struct dmxdev_filter *dmxdevfilter ;
  int ret ;
  int tmp ;
  ssize_t tmp___0 ;
  ssize_t tmp___1 ;
  {
  dmxdevfilter = (struct dmxdev_filter *)file->private_data;
  tmp = mutex_lock_interruptible_nested(& dmxdevfilter->mutex, 0U);
  if (tmp != 0) {
    return (-512L);
  } else {
  }
  if ((unsigned int )dmxdevfilter->type == 1U) {
    tmp___0 = dvb_dmxdev_read_sec(dmxdevfilter, file, buf, count, ppos);
    ret = (int )tmp___0;
  } else {
    tmp___1 = dvb_dmxdev_buffer_read(& dmxdevfilter->buffer, (int )file->f_flags & 2048,
                                     buf, count, ppos);
    ret = (int )tmp___1;
  }
  mutex_unlock(& dmxdevfilter->mutex);
  return ((ssize_t )ret);
}
}
static int dvb_demux_do_ioctl(struct file *file , unsigned int cmd , void *parg )
{
  struct dmxdev_filter *dmxdevfilter ;
  struct dmxdev *dmxdev ;
  unsigned long arg ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  dmxdevfilter = (struct dmxdev_filter *)file->private_data;
  dmxdev = dmxdevfilter->dev;
  arg = (unsigned long )parg;
  ret = 0;
  tmp = mutex_lock_interruptible_nested(& dmxdev->mutex, 0U);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  switch (cmd) {
  case 28457U:
  tmp___0 = mutex_lock_interruptible_nested(& dmxdevfilter->mutex, 0U);
  if (tmp___0 != 0) {
    mutex_unlock(& dmxdev->mutex);
    return (-512);
  } else {
  }
  if ((unsigned int )dmxdevfilter->state <= 1U) {
    ret = -22;
  } else {
    ret = dvb_dmxdev_filter_start(dmxdevfilter);
  }
  mutex_unlock(& dmxdevfilter->mutex);
  goto ldv_26418;
  case 28458U:
  tmp___1 = mutex_lock_interruptible_nested(& dmxdevfilter->mutex, 0U);
  if (tmp___1 != 0) {
    mutex_unlock(& dmxdev->mutex);
    return (-512);
  } else {
  }
  ret = dvb_dmxdev_filter_stop(dmxdevfilter);
  mutex_unlock(& dmxdevfilter->mutex);
  goto ldv_26418;
  case 1077702443U:
  tmp___2 = mutex_lock_interruptible_nested(& dmxdevfilter->mutex, 0U);
  if (tmp___2 != 0) {
    mutex_unlock(& dmxdev->mutex);
    return (-512);
  } else {
  }
  ret = dvb_dmxdev_filter_set(dmxdev, dmxdevfilter, (struct dmx_sct_filter_params *)parg);
  mutex_unlock(& dmxdevfilter->mutex);
  goto ldv_26418;
  case 1075081004U:
  tmp___3 = mutex_lock_interruptible_nested(& dmxdevfilter->mutex, 0U);
  if (tmp___3 != 0) {
    mutex_unlock(& dmxdev->mutex);
    return (-512);
  } else {
  }
  ret = dvb_dmxdev_pes_filter_set(dmxdev, dmxdevfilter, (struct dmx_pes_filter_params *)parg);
  mutex_unlock(& dmxdevfilter->mutex);
  goto ldv_26418;
  case 28461U:
  tmp___4 = mutex_lock_interruptible_nested(& dmxdevfilter->mutex, 0U);
  if (tmp___4 != 0) {
    mutex_unlock(& dmxdev->mutex);
    return (-512);
  } else {
  }
  ret = dvb_dmxdev_set_buffer_size(dmxdevfilter, arg);
  mutex_unlock(& dmxdevfilter->mutex);
  goto ldv_26418;
  case 2148167471U: ;
  if ((unsigned long )(dmxdev->demux)->get_pes_pids == (unsigned long )((int (*)(struct dmx_demux * ,
                                                                                 u16 * ))0)) {
    ret = -22;
    goto ldv_26418;
  } else {
  }
  (*((dmxdev->demux)->get_pes_pids))(dmxdev->demux, (u16 *)parg);
  goto ldv_26418;
  case 2148036400U: ;
  if ((unsigned long )(dmxdev->demux)->get_caps == (unsigned long )((int (*)(struct dmx_demux * ,
                                                                             struct dmx_caps * ))0)) {
    ret = -22;
    goto ldv_26418;
  } else {
  }
  ret = (*((dmxdev->demux)->get_caps))(dmxdev->demux, (struct dmx_caps *)parg);
  goto ldv_26418;
  case 1074032433U: ;
  if ((unsigned long )(dmxdev->demux)->set_source == (unsigned long )((int (*)(struct dmx_demux * ,
                                                                               dmx_source_t const * ))0)) {
    ret = -22;
    goto ldv_26418;
  } else {
  }
  ret = (*((dmxdev->demux)->set_source))(dmxdev->demux, (dmx_source_t const *)parg);
  goto ldv_26418;
  case 3222302514U: ;
  if ((unsigned long )(dmxdev->demux)->get_stc == (unsigned long )((int (*)(struct dmx_demux * ,
                                                                            unsigned int ,
                                                                            u64 * ,
                                                                            unsigned int * ))0)) {
    ret = -22;
    goto ldv_26418;
  } else {
  }
  ret = (*((dmxdev->demux)->get_stc))(dmxdev->demux, ((struct dmx_stc *)parg)->num,
                                      & ((struct dmx_stc *)parg)->stc, & ((struct dmx_stc *)parg)->base);
  goto ldv_26418;
  case 1073901363U:
  tmp___5 = mutex_lock_interruptible_nested(& dmxdevfilter->mutex, 0U);
  if (tmp___5 != 0) {
    ret = -512;
    goto ldv_26418;
  } else {
  }
  ret = dvb_dmxdev_add_pid(dmxdev, dmxdevfilter, (int )*((u16 *)parg));
  mutex_unlock(& dmxdevfilter->mutex);
  goto ldv_26418;
  case 1073901364U:
  tmp___6 = mutex_lock_interruptible_nested(& dmxdevfilter->mutex, 0U);
  if (tmp___6 != 0) {
    ret = -512;
    goto ldv_26418;
  } else {
  }
  ret = dvb_dmxdev_remove_pid(dmxdev, dmxdevfilter, (int )*((u16 *)parg));
  mutex_unlock(& dmxdevfilter->mutex);
  goto ldv_26418;
  default:
  ret = -22;
  goto ldv_26418;
  }
  ldv_26418:
  mutex_unlock(& dmxdev->mutex);
  return (ret);
}
}
static long dvb_demux_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  int tmp ;
  {
  tmp = dvb_usercopy(file, cmd, arg, & dvb_demux_do_ioctl);
  return ((long )tmp);
}
}
static unsigned int dvb_demux_poll(struct file *file , poll_table *wait )
{
  struct dmxdev_filter *dmxdevfilter ;
  unsigned int mask ;
  int tmp ;
  {
  dmxdevfilter = (struct dmxdev_filter *)file->private_data;
  mask = 0U;
  if ((unsigned long )dmxdevfilter == (unsigned long )((struct dmxdev_filter *)0) || (unsigned int )*((unsigned char *)dmxdevfilter->dev + 40UL) != 0U) {
    return (8U);
  } else {
  }
  poll_wait(file, & dmxdevfilter->buffer.queue, wait);
  if (((unsigned int )dmxdevfilter->state != 3U && (unsigned int )dmxdevfilter->state != 4U) && (unsigned int )dmxdevfilter->state != 5U) {
    return (0U);
  } else {
  }
  if (dmxdevfilter->buffer.error != 0) {
    mask = mask | 75U;
  } else {
  }
  tmp = dvb_ringbuffer_empty(& dmxdevfilter->buffer);
  if (tmp == 0) {
    mask = mask | 67U;
  } else {
  }
  return (mask);
}
}
static int dvb_demux_release(struct inode *inode , struct file *file )
{
  struct dmxdev_filter *dmxdevfilter ;
  struct dmxdev *dmxdev ;
  int ret ;
  {
  dmxdevfilter = (struct dmxdev_filter *)file->private_data;
  dmxdev = dmxdevfilter->dev;
  ret = dvb_dmxdev_filter_free(dmxdev, dmxdevfilter);
  mutex_lock_nested(& dmxdev->mutex, 0U);
  (dmxdev->dvbdev)->users = (dmxdev->dvbdev)->users - 1;
  if ((dmxdev->dvbdev)->users == 1 && (unsigned int )*((unsigned char *)dmxdev + 40UL) != 0U) {
    mutex_unlock(& dmxdev->mutex);
    __wake_up(& (dmxdev->dvbdev)->wait_queue, 3U, 1, (void *)0);
  } else {
    mutex_unlock(& dmxdev->mutex);
  }
  return (ret);
}
}
static struct file_operations const dvb_demux_fops =
     {& __this_module, & default_llseek, & dvb_demux_read, 0, 0, 0, 0, & dvb_demux_poll,
    & dvb_demux_ioctl, 0, 0, 0, & dvb_demux_open, 0, & dvb_demux_release, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct dvb_device const dvbdev_demux =
     {{0, 0}, & dvb_demux_fops, 0, 0, 0, 0U, 0, 1, 1, {{{{{{0}}, 0U, 0U, 0, {0, {0,
                                                                               0},
                                                                           0, 0, 0UL}}}},
                                                     {0, 0}}, 0, (void *)0};
static int dvb_dvr_do_ioctl(struct file *file , unsigned int cmd , void *parg )
{
  struct dvb_device *dvbdev ;
  struct dmxdev *dmxdev ;
  unsigned long arg ;
  int ret ;
  int tmp ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  dmxdev = (struct dmxdev *)dvbdev->priv;
  arg = (unsigned long )parg;
  tmp = mutex_lock_interruptible_nested(& dmxdev->mutex, 0U);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  switch (cmd) {
  case 28461U:
  ret = dvb_dvr_set_buffer_size(dmxdev, arg);
  goto ldv_26460;
  default:
  ret = -22;
  goto ldv_26460;
  }
  ldv_26460:
  mutex_unlock(& dmxdev->mutex);
  return (ret);
}
}
static long dvb_dvr_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  int tmp ;
  {
  tmp = dvb_usercopy(file, cmd, arg, & dvb_dvr_do_ioctl);
  return ((long )tmp);
}
}
static unsigned int dvb_dvr_poll(struct file *file , poll_table *wait )
{
  struct dvb_device *dvbdev ;
  struct dmxdev *dmxdev ;
  unsigned int mask ;
  int tmp ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  dmxdev = (struct dmxdev *)dvbdev->priv;
  mask = 0U;
  if (debug != 0) {
    printk("function : %s\n", "dvb_dvr_poll");
  } else {
  }
  if ((unsigned int )*((unsigned char *)dmxdev + 40UL) != 0U) {
    return (8U);
  } else {
  }
  poll_wait(file, & dmxdev->dvr_buffer.queue, wait);
  if ((file->f_flags & 3U) == 0U) {
    if (dmxdev->dvr_buffer.error != 0) {
      mask = mask | 75U;
    } else {
    }
    tmp = dvb_ringbuffer_empty(& dmxdev->dvr_buffer);
    if (tmp == 0) {
      mask = mask | 67U;
    } else {
    }
  } else {
    mask = mask | 262U;
  }
  return (mask);
}
}
static struct file_operations const dvb_dvr_fops =
     {& __this_module, & default_llseek, & dvb_dvr_read, & dvb_dvr_write, 0, 0, 0, & dvb_dvr_poll,
    & dvb_dvr_ioctl, 0, 0, 0, & dvb_dvr_open, 0, & dvb_dvr_release, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0};
static struct dvb_device const dvbdev_dvr =
     {{0, 0}, & dvb_dvr_fops, 0, 0, 0, 0U, 1, 0, 1, {{{{{{0}}, 0U, 0U, 0, {0, {0, 0},
                                                                         0, 0, 0UL}}}},
                                                   {0, 0}}, 0, (void *)0};
int dvb_dmxdev_init(struct dmxdev *dmxdev , struct dvb_adapter *dvb_adapter )
{
  int i ;
  int tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  tmp = (*((dmxdev->demux)->open))(dmxdev->demux);
  if (tmp < 0) {
    return (-87);
  } else {
  }
  tmp___0 = vmalloc((unsigned long )dmxdev->filternum * 600UL);
  dmxdev->filter = (struct dmxdev_filter *)tmp___0;
  if ((unsigned long )dmxdev->filter == (unsigned long )((struct dmxdev_filter *)0)) {
    return (-12);
  } else {
  }
  __mutex_init(& dmxdev->mutex, "&dmxdev->mutex", & __key);
  spinlock_check(& dmxdev->lock);
  __raw_spin_lock_init(& dmxdev->lock.__annonCompField18.rlock, "&(&dmxdev->lock)->rlock",
                       & __key___0);
  i = 0;
  goto ldv_26485;
  ldv_26484:
  (dmxdev->filter + (unsigned long )i)->dev = dmxdev;
  (dmxdev->filter + (unsigned long )i)->buffer.data = (u8 *)0U;
  dvb_dmxdev_filter_state_set(dmxdev->filter + (unsigned long )i, 0);
  i = i + 1;
  ldv_26485: ;
  if (dmxdev->filternum > i) {
    goto ldv_26484;
  } else {
  }
  dvb_register_device(dvb_adapter, & dmxdev->dvbdev, & dvbdev_demux, (void *)dmxdev,
                      4);
  dvb_register_device(dvb_adapter, & dmxdev->dvr_dvbdev, & dvbdev_dvr, (void *)dmxdev,
                      5);
  dvb_ringbuffer_init(& dmxdev->dvr_buffer, (void *)0, 8192UL);
  return (0);
}
}
static char const __kstrtab_dvb_dmxdev_init[16U] =
  { 'd', 'v', 'b', '_',
        'd', 'm', 'x', 'd',
        'e', 'v', '_', 'i',
        'n', 'i', 't', '\000'};
struct kernel_symbol const __ksymtab_dvb_dmxdev_init ;
struct kernel_symbol const __ksymtab_dvb_dmxdev_init = {(unsigned long )(& dvb_dmxdev_init), (char const *)(& __kstrtab_dvb_dmxdev_init)};
void dvb_dmxdev_release(struct dmxdev *dmxdev )
{
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp ;
  wait_queue_t __wait___0 ;
  long __ret___0 ;
  long __int___0 ;
  long tmp___0 ;
  {
  dmxdev->exit = 1U;
  if ((dmxdev->dvbdev)->users > 1) {
    __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dmxdev.c",
                  1261, 0);
    if ((dmxdev->dvbdev)->users == 1) {
      goto ldv_26498;
    } else {
    }
    __ret = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_26504:
    tmp = prepare_to_wait_event(& (dmxdev->dvbdev)->wait_queue, & __wait, 2);
    __int = tmp;
    if ((dmxdev->dvbdev)->users == 1) {
      goto ldv_26503;
    } else {
    }
    schedule();
    goto ldv_26504;
    ldv_26503:
    finish_wait(& (dmxdev->dvbdev)->wait_queue, & __wait);
    ldv_26498: ;
  } else {
  }
  if ((dmxdev->dvr_dvbdev)->users > 1) {
    __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dmxdev.c",
                  1265, 0);
    if ((dmxdev->dvr_dvbdev)->users == 1) {
      goto ldv_26506;
    } else {
    }
    __ret___0 = 0L;
    INIT_LIST_HEAD(& __wait___0.task_list);
    __wait___0.flags = 0U;
    ldv_26512:
    tmp___0 = prepare_to_wait_event(& (dmxdev->dvr_dvbdev)->wait_queue, & __wait___0,
                                    2);
    __int___0 = tmp___0;
    if ((dmxdev->dvr_dvbdev)->users == 1) {
      goto ldv_26511;
    } else {
    }
    schedule();
    goto ldv_26512;
    ldv_26511:
    finish_wait(& (dmxdev->dvr_dvbdev)->wait_queue, & __wait___0);
    ldv_26506: ;
  } else {
  }
  dvb_unregister_device(dmxdev->dvbdev);
  dvb_unregister_device(dmxdev->dvr_dvbdev);
  vfree((void const *)dmxdev->filter);
  dmxdev->filter = (struct dmxdev_filter *)0;
  (*((dmxdev->demux)->close))(dmxdev->demux);
  return;
}
}
static char const __kstrtab_dvb_dmxdev_release[19U] =
  { 'd', 'v', 'b', '_',
        'd', 'm', 'x', 'd',
        'e', 'v', '_', 'r',
        'e', 'l', 'e', 'a',
        's', 'e', '\000'};
struct kernel_symbol const __ksymtab_dvb_dmxdev_release ;
struct kernel_symbol const __ksymtab_dvb_dmxdev_release = {(unsigned long )(& dvb_dmxdev_release), (char const *)(& __kstrtab_dvb_dmxdev_release)};
int ldv_retval_6 ;
int ldv_retval_2 ;
void choose_timer_3(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_3 = 2;
  return;
}
}
void ldv_file_operations_10(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  dvb_demux_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  dvb_demux_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_file_operations_9(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  dvb_dvr_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  dvb_dvr_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void disable_suitable_timer_3(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_3) {
    ldv_timer_state_3 = 0;
    return;
  } else {
  }
  return;
}
}
void activate_pending_timer_3(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_3 == (unsigned long )timer) {
    if (ldv_timer_state_3 == 2 || pending_flag != 0) {
      ldv_timer_list_3 = timer;
      ldv_timer_list_3->data = data;
      ldv_timer_state_3 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_3(timer);
  ldv_timer_list_3->data = data;
  return;
}
}
int reg_timer_3(struct timer_list *timer )
{
  {
  ldv_timer_list_3 = timer;
  ldv_timer_state_3 = 1;
  return (0);
}
}
void ldv_main_exported_10(void)
{
  size_t ldvarg47 ;
  loff_t ldvarg44 ;
  char *ldvarg48 ;
  void *tmp ;
  loff_t *ldvarg46 ;
  void *tmp___0 ;
  unsigned int ldvarg42 ;
  int ldvarg43 ;
  unsigned long ldvarg41 ;
  struct poll_table_struct *ldvarg45 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg48 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(8UL);
  ldvarg46 = (loff_t *)tmp___0;
  tmp___1 = ldv_init_zalloc(16UL);
  ldvarg45 = (struct poll_table_struct *)tmp___1;
  ldv_memset((void *)(& ldvarg47), 0, 8UL);
  ldv_memset((void *)(& ldvarg44), 0, 8UL);
  ldv_memset((void *)(& ldvarg42), 0, 4UL);
  ldv_memset((void *)(& ldvarg43), 0, 4UL);
  ldv_memset((void *)(& ldvarg41), 0, 8UL);
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_10 == 2) {
    dvb_demux_release(dvb_demux_fops_group1, dvb_demux_fops_group2);
    ldv_state_variable_10 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_26555;
  case 1: ;
  if (ldv_state_variable_10 == 2) {
    dvb_demux_read(dvb_demux_fops_group2, ldvarg48, ldvarg47, ldvarg46);
    ldv_state_variable_10 = 2;
  } else {
  }
  goto ldv_26555;
  case 2: ;
  if (ldv_state_variable_10 == 1) {
    dvb_demux_poll(dvb_demux_fops_group2, ldvarg45);
    ldv_state_variable_10 = 1;
  } else {
  }
  if (ldv_state_variable_10 == 2) {
    dvb_demux_poll(dvb_demux_fops_group2, ldvarg45);
    ldv_state_variable_10 = 2;
  } else {
  }
  goto ldv_26555;
  case 3: ;
  if (ldv_state_variable_10 == 2) {
    default_llseek(dvb_demux_fops_group2, ldvarg44, ldvarg43);
    ldv_state_variable_10 = 2;
  } else {
  }
  goto ldv_26555;
  case 4: ;
  if (ldv_state_variable_10 == 1) {
    ldv_retval_6 = dvb_demux_open(dvb_demux_fops_group1, dvb_demux_fops_group2);
    if (ldv_retval_6 == 0) {
      ldv_state_variable_10 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_26555;
  case 5: ;
  if (ldv_state_variable_10 == 2) {
    dvb_demux_ioctl(dvb_demux_fops_group2, ldvarg42, ldvarg41);
    ldv_state_variable_10 = 2;
  } else {
  }
  goto ldv_26555;
  default:
  ldv_stop();
  }
  ldv_26555: ;
  return;
}
}
void ldv_main_exported_9(void)
{
  struct poll_table_struct *ldvarg19 ;
  void *tmp ;
  char *ldvarg22 ;
  void *tmp___0 ;
  int ldvarg17 ;
  char *ldvarg25 ;
  void *tmp___1 ;
  size_t ldvarg21 ;
  unsigned long ldvarg15 ;
  unsigned int ldvarg16 ;
  loff_t *ldvarg23 ;
  void *tmp___2 ;
  loff_t *ldvarg20 ;
  void *tmp___3 ;
  loff_t ldvarg18 ;
  size_t ldvarg24 ;
  int tmp___4 ;
  {
  tmp = ldv_init_zalloc(16UL);
  ldvarg19 = (struct poll_table_struct *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg22 = (char *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg25 = (char *)tmp___1;
  tmp___2 = ldv_init_zalloc(8UL);
  ldvarg23 = (loff_t *)tmp___2;
  tmp___3 = ldv_init_zalloc(8UL);
  ldvarg20 = (loff_t *)tmp___3;
  ldv_memset((void *)(& ldvarg17), 0, 4UL);
  ldv_memset((void *)(& ldvarg21), 0, 8UL);
  ldv_memset((void *)(& ldvarg15), 0, 8UL);
  ldv_memset((void *)(& ldvarg16), 0, 4UL);
  ldv_memset((void *)(& ldvarg18), 0, 8UL);
  ldv_memset((void *)(& ldvarg24), 0, 8UL);
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_9 == 1) {
    dvb_dvr_write(dvb_dvr_fops_group2, (char const *)ldvarg25, ldvarg24, ldvarg23);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    dvb_dvr_write(dvb_dvr_fops_group2, (char const *)ldvarg25, ldvarg24, ldvarg23);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_26577;
  case 1: ;
  if (ldv_state_variable_9 == 2) {
    dvb_dvr_release(dvb_dvr_fops_group1, dvb_dvr_fops_group2);
    ldv_state_variable_9 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_26577;
  case 2: ;
  if (ldv_state_variable_9 == 2) {
    dvb_dvr_read(dvb_dvr_fops_group2, ldvarg22, ldvarg21, ldvarg20);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_26577;
  case 3: ;
  if (ldv_state_variable_9 == 1) {
    dvb_dvr_poll(dvb_dvr_fops_group2, ldvarg19);
    ldv_state_variable_9 = 1;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    dvb_dvr_poll(dvb_dvr_fops_group2, ldvarg19);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_26577;
  case 4: ;
  if (ldv_state_variable_9 == 2) {
    default_llseek(dvb_dvr_fops_group2, ldvarg18, ldvarg17);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_26577;
  case 5: ;
  if (ldv_state_variable_9 == 1) {
    ldv_retval_2 = dvb_dvr_open(dvb_dvr_fops_group1, dvb_dvr_fops_group2);
    if (ldv_retval_2 == 0) {
      ldv_state_variable_9 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_26577;
  case 6: ;
  if (ldv_state_variable_9 == 2) {
    dvb_dvr_ioctl(dvb_dvr_fops_group2, ldvarg16, ldvarg15);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_26577;
  default:
  ldv_stop();
  }
  ldv_26577: ;
  return;
}
}
bool ldv_queue_work_on_27(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_28(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_29(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_30(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_31(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
int ldv_del_timer_32(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_33(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_34(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern int __printk_ratelimit(char const * ) ;
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
extern void *memdup_user(void const * , size_t ) ;
__inline static u64 div64_u64(u64 dividend , u64 divisor )
{
  {
  return (dividend / divisor);
}
}
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp ;
  {
  tmp = variable_test_bit((long )flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  return;
}
}
extern void set_normalized_timespec(struct timespec * , time_t , s64 ) ;
__inline static struct timespec timespec_sub(struct timespec lhs , struct timespec rhs )
{
  struct timespec ts_delta ;
  {
  set_normalized_timespec(& ts_delta, lhs.tv_sec - rhs.tv_sec, (s64 )(lhs.tv_nsec - rhs.tv_nsec));
  return (ts_delta);
}
}
__inline static s64 timespec_to_ns(struct timespec const *ts )
{
  {
  return ((long long )ts->tv_sec * 1000000000LL + (long long )ts->tv_nsec);
}
}
extern struct timespec current_kernel_time(void) ;
bool ldv_queue_work_on_47(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_49(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_48(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_51(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_50(struct workqueue_struct *ldv_func_arg1 ) ;
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
extern u32 crc32_be(u32 , unsigned char const * , size_t ) ;
int dvb_dmx_init(struct dvb_demux *dvbdemux ) ;
void dvb_dmx_release(struct dvb_demux *dvbdemux ) ;
void dvb_dmx_swfilter_packets(struct dvb_demux *demux , u8 const *buf , size_t count ) ;
void dvb_dmx_swfilter(struct dvb_demux *demux , u8 const *buf , size_t count ) ;
void dvb_dmx_swfilter_204(struct dvb_demux *demux , u8 const *buf , size_t count ) ;
void dvb_dmx_swfilter_raw(struct dvb_demux *demux , u8 const *buf , size_t count ) ;
static int dvb_demux_tscheck ;
static int dvb_demux_speedcheck ;
static int dvb_demux_feed_err_pkts = 1;
__inline static u16 section_length(u8 const *buf )
{
  {
  return (((((unsigned int )((u16 )*(buf + 1UL)) & 15U) << 8U) + (unsigned int )((u16 )*(buf + 2UL))) + 3U);
}
}
__inline static u16 ts_pid(u8 const *buf )
{
  {
  return ((((unsigned int )((u16 )*(buf + 1UL)) & 31U) << 8U) + (unsigned int )((u16 )*(buf + 2UL)));
}
}
__inline static u8 payload(u8 const *tsp )
{
  {
  if (((int )*(tsp + 3UL) & 16) == 0) {
    return (0U);
  } else {
  }
  if (((int )*(tsp + 3UL) & 32) != 0) {
    if ((unsigned int )((unsigned char )*(tsp + 4UL)) > 183U) {
      return (0U);
    } else {
      return (183U - (unsigned int )((u8 )*(tsp + 4UL)));
    }
  } else {
  }
  return (184U);
}
}
static u32 dvb_dmx_crc32(struct dvb_demux_feed *f , u8 const *src , size_t len )
{
  u32 tmp ;
  {
  tmp = crc32_be(f->feed.sec.crc_val, src, len);
  f->feed.sec.crc_val = tmp;
  return (tmp);
}
}
static void dvb_dmx_memcopy(struct dvb_demux_feed *f , u8 *d , u8 const *s , size_t len )
{
  {
  memcpy((void *)d, (void const *)s, len);
  return;
}
}
__inline static int dvb_dmx_swfilter_payload(struct dvb_demux_feed *feed , u8 const *buf )
{
  int count ;
  u8 tmp ;
  int p ;
  int tmp___0 ;
  {
  tmp = payload(buf);
  count = (int )tmp;
  if (count == 0) {
    return (-1);
  } else {
  }
  p = 188 - count;
  if (((int )*(buf + 1UL) & 64) != 0) {
    feed->peslen = 65530U;
  } else {
  }
  feed->peslen = (int )feed->peslen + (int )((u16 )count);
  tmp___0 = (*(feed->cb.ts))(buf + (unsigned long )p, (size_t )count, (u8 const *)0U,
                             0UL, & feed->feed.ts, 0);
  return (tmp___0);
}
}
static int dvb_dmx_swfilter_sectionfilter(struct dvb_demux_feed *feed , struct dvb_demux_filter *f )
{
  u8 neq ;
  int i ;
  u8 xor ;
  int tmp ;
  {
  neq = 0U;
  i = 0;
  goto ldv_24689;
  ldv_24688:
  xor = (u8 )((int )f->filter.filter_value[i] ^ (int )*(feed->feed.sec.secbuf + (unsigned long )i));
  if ((unsigned int )((int )f->maskandmode[i] & (int )xor) != 0U) {
    return (0);
  } else {
  }
  neq = (u8 )(((int )f->maskandnotmode[i] & (int )xor) | (int )neq);
  i = i + 1;
  ldv_24689: ;
  if (i <= 17) {
    goto ldv_24688;
  } else {
  }
  if (f->doneq != 0 && (unsigned int )neq == 0U) {
    return (0);
  } else {
  }
  tmp = (*(feed->cb.sec))((u8 const *)feed->feed.sec.secbuf, (size_t )feed->feed.sec.seclen,
                          (u8 const *)0U, 0UL, & f->filter, 0);
  return (tmp);
}
}
__inline static int dvb_dmx_swfilter_section_feed(struct dvb_demux_feed *feed )
{
  struct dvb_demux *demux ;
  struct dvb_demux_filter *f ;
  struct dmx_section_feed *sec ;
  int section_syntax_indicator ;
  u32 tmp ;
  int tmp___0 ;
  {
  demux = feed->demux;
  f = feed->filter;
  sec = & feed->feed.sec;
  if (sec->is_filtering == 0) {
    return (0);
  } else {
  }
  if ((unsigned long )f == (unsigned long )((struct dvb_demux_filter *)0)) {
    return (0);
  } else {
  }
  if (sec->check_crc != 0) {
    section_syntax_indicator = (int )((signed char )*(sec->secbuf + 1UL)) < 0;
    if (section_syntax_indicator != 0) {
      tmp = (*(demux->check_crc32))(feed, (u8 const *)sec->secbuf, (size_t )sec->seclen);
      if (tmp != 0U) {
        return (-1);
      } else {
      }
    } else {
    }
  } else {
  }
  ldv_24698:
  tmp___0 = dvb_dmx_swfilter_sectionfilter(feed, f);
  if (tmp___0 < 0) {
    return (-1);
  } else {
  }
  f = f->next;
  if ((unsigned long )f != (unsigned long )((struct dvb_demux_filter *)0) && sec->is_filtering != 0) {
    goto ldv_24698;
  } else {
  }
  sec->seclen = 0U;
  return (0);
}
}
static void dvb_dmx_swfilter_section_new(struct dvb_demux_feed *feed )
{
  struct dmx_section_feed *sec ;
  u16 tmp ;
  u16 tmp___0 ;
  {
  sec = & feed->feed.sec;
  tmp___0 = 0U;
  sec->seclen = tmp___0;
  tmp = tmp___0;
  sec->secbufp = tmp;
  sec->tsfeedp = tmp;
  sec->secbuf = (u8 *)(& sec->secbuf_base);
  return;
}
}
static int dvb_dmx_swfilter_section_copy_dump(struct dvb_demux_feed *feed , u8 const *buf ,
                                              u8 len )
{
  struct dvb_demux *demux ;
  struct dmx_section_feed *sec ;
  u16 limit ;
  u16 seclen ;
  u16 n ;
  {
  demux = feed->demux;
  sec = & feed->feed.sec;
  if ((unsigned int )sec->tsfeedp > 4283U) {
    return (0);
  } else {
  }
  if ((int )sec->tsfeedp + (int )len > 4284) {
    len = 188U - (unsigned int )((u8 )sec->tsfeedp);
  } else {
  }
  if ((unsigned int )len == 0U) {
    return (0);
  } else {
  }
  (*(demux->memcopy))(feed, (u8 *)(& sec->secbuf_base) + (unsigned long )sec->tsfeedp,
                      buf, (size_t )len);
  sec->tsfeedp = (int )sec->tsfeedp + (int )((u16 )len);
  limit = sec->tsfeedp;
  if ((unsigned int )limit > 4284U) {
    return (-1);
  } else {
  }
  sec->secbuf = (u8 *)(& sec->secbuf_base) + (unsigned long )sec->secbufp;
  n = 0U;
  goto ldv_24715;
  ldv_24714:
  seclen = section_length((u8 const *)sec->secbuf);
  if (((unsigned int )seclen == 0U || (unsigned int )seclen > 4096U) || (int )seclen + (int )sec->secbufp > (int )limit) {
    return (0);
  } else {
  }
  sec->seclen = seclen;
  sec->crc_val = 4294967295U;
  if (feed->pusi_seen != 0) {
    dvb_dmx_swfilter_section_feed(feed);
  } else {
  }
  sec->secbufp = (int )sec->secbufp + (int )seclen;
  sec->secbuf = sec->secbuf + (unsigned long )seclen;
  n = (u16 )((int )n + 1);
  ldv_24715: ;
  if ((int )sec->secbufp + 2 < (int )limit) {
    goto ldv_24714;
  } else {
  }
  return (0);
}
}
static int dvb_dmx_swfilter_section_packet(struct dvb_demux_feed *feed , u8 const *buf )
{
  u8 p ;
  u8 count ;
  int ccok ;
  int dc_i ;
  u8 cc ;
  u8 const *before ;
  u8 before_len ;
  u8 const *after ;
  u8 after_len ;
  {
  dc_i = 0;
  count = payload(buf);
  if ((unsigned int )count == 0U) {
    return (-1);
  } else {
  }
  p = 188U - (unsigned int )count;
  cc = (unsigned int )((u8 )*(buf + 3UL)) & 15U;
  ccok = ((feed->cc + 1) & 15) == (int )cc;
  feed->cc = (int )cc;
  if (((int )*(buf + 3UL) & 32) != 0) {
    if ((unsigned int )((unsigned char )*(buf + 4UL)) != 0U && (int )((signed char )*(buf + 5UL)) < 0) {
      dc_i = 1;
    } else {
    }
  } else {
  }
  if (ccok == 0 || dc_i != 0) {
    feed->pusi_seen = 0;
    dvb_dmx_swfilter_section_new(feed);
  } else {
  }
  if (((int )*(buf + 1UL) & 64) != 0) {
    if ((unsigned int )count > 1U && (int )((unsigned char )*(buf + (unsigned long )p)) < (int )count) {
      before = buf + ((unsigned long )p + 1UL);
      before_len = *(buf + (unsigned long )p);
      after = before + (unsigned long )before_len;
      after_len = (unsigned int )((int )count - (int )before_len) + 255U;
      dvb_dmx_swfilter_section_copy_dump(feed, before, (int )before_len);
      feed->pusi_seen = 1;
      dvb_dmx_swfilter_section_new(feed);
      dvb_dmx_swfilter_section_copy_dump(feed, after, (int )after_len);
    } else {
    }
  } else {
    dvb_dmx_swfilter_section_copy_dump(feed, buf + (unsigned long )p, (int )count);
  }
  return (0);
}
}
__inline static void dvb_dmx_swfilter_packet_type(struct dvb_demux_feed *feed , u8 const *buf )
{
  u16 tmp ;
  int tmp___0 ;
  {
  switch (feed->type) {
  case 0: ;
  if (feed->feed.ts.is_filtering == 0) {
    goto ldv_24735;
  } else {
  }
  if (feed->ts_type & 1) {
    if ((feed->ts_type & 2) != 0) {
      dvb_dmx_swfilter_payload(feed, buf);
    } else {
      (*(feed->cb.ts))(buf, 188UL, (u8 const *)0U, 0UL, & feed->feed.ts, 0);
    }
  } else {
  }
  if ((feed->ts_type & 4) != 0) {
    if ((unsigned long )(feed->demux)->write_to_decoder != (unsigned long )((int (*)(struct dvb_demux_feed * ,
                                                                                     u8 const * ,
                                                                                     size_t ))0)) {
      (*((feed->demux)->write_to_decoder))(feed, buf, 188UL);
    } else {
    }
  } else {
  }
  goto ldv_24735;
  case 1: ;
  if (feed->feed.sec.is_filtering == 0) {
    goto ldv_24735;
  } else {
  }
  tmp___0 = dvb_dmx_swfilter_section_packet(feed, buf);
  if (tmp___0 < 0) {
    tmp = 0U;
    feed->feed.sec.secbufp = tmp;
    feed->feed.sec.seclen = tmp;
  } else {
  }
  goto ldv_24735;
  default: ;
  goto ldv_24735;
  }
  ldv_24735: ;
  return;
}
}
static void dvb_dmx_swfilter_packet(struct dvb_demux *demux , u8 const *buf )
{
  struct dvb_demux_feed *feed ;
  u16 pid ;
  u16 tmp ;
  int dvr_done ;
  struct timespec cur_time ;
  struct timespec delta_time ;
  u64 speed_bytes ;
  u64 speed_timedelta ;
  u64 tmp___0 ;
  s64 tmp___1 ;
  u64 tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  struct list_head const *__mptr ;
  int tmp___5 ;
  struct list_head const *__mptr___0 ;
  {
  tmp = ts_pid(buf);
  pid = tmp;
  dvr_done = 0;
  if (dvb_demux_speedcheck != 0) {
    demux->speed_pkts_cnt = demux->speed_pkts_cnt + 1U;
    if (demux->speed_pkts_cnt % 50000U == 0U) {
      cur_time = current_kernel_time();
      if (demux->speed_last_time.tv_sec != 0L && demux->speed_last_time.tv_nsec != 0L) {
        delta_time = timespec_sub(cur_time, demux->speed_last_time);
        speed_bytes = (unsigned long long )demux->speed_pkts_cnt * 1504ULL;
        tmp___0 = div64_u64(speed_bytes, 1024ULL);
        speed_bytes = tmp___0 * 1000ULL;
        tmp___1 = timespec_to_ns((struct timespec const *)(& delta_time));
        speed_timedelta = (unsigned long long )tmp___1;
        speed_timedelta = div64_u64(speed_timedelta, 1000000ULL);
        tmp___2 = div64_u64(speed_bytes, speed_timedelta);
        printk("\016TS speed %llu Kbits/sec \n", tmp___2);
      } else {
      }
      demux->speed_last_time = cur_time;
      demux->speed_pkts_cnt = 0U;
    } else {
    }
  } else {
  }
  if ((int )((signed char )*(buf + 1UL)) < 0) {
    if (dvb_demux_tscheck != 0) {
      tmp___3 = __printk_ratelimit("dvb_dmx_swfilter_packet");
      if (tmp___3 != 0) {
        printk("TEI detected. PID=0x%x data1=0x%x\n", (int )pid, (int )*(buf + 1UL));
      } else {
      }
    } else {
    }
    if (dvb_demux_feed_err_pkts == 0) {
      return;
    } else {
    }
  } else
  if ((unsigned long )demux->cnt_storage != (unsigned long )((uint8_t *)0U) && dvb_demux_tscheck != 0) {
    if ((unsigned int )pid <= 8190U) {
      if (((int )*(buf + 3UL) & 16) != 0) {
        *(demux->cnt_storage + (unsigned long )pid) = (unsigned int )((uint8_t )((unsigned int )*(demux->cnt_storage + (unsigned long )pid) + 1U)) & 15U;
      } else {
      }
      if (((int )*(buf + 3UL) & 15) != (int )*(demux->cnt_storage + (unsigned long )pid)) {
        if (dvb_demux_tscheck != 0) {
          tmp___4 = __printk_ratelimit("dvb_dmx_swfilter_packet");
          if (tmp___4 != 0) {
            printk("TS packet counter mismatch. PID=0x%x expected 0x%x got 0x%x\n",
                   (int )pid, (int )*(demux->cnt_storage + (unsigned long )pid), (int )*(buf + 3UL) & 15);
          } else {
          }
        } else {
        }
        *(demux->cnt_storage + (unsigned long )pid) = (unsigned int )((uint8_t )*(buf + 3UL)) & 15U;
      } else {
      }
    } else {
    }
  } else {
  }
  __mptr = (struct list_head const *)demux->feed_list.next;
  feed = (struct dvb_demux_feed *)__mptr + 0xffffffffffffee80UL;
  goto ldv_24756;
  ldv_24755: ;
  if ((int )feed->pid != (int )pid && (unsigned int )feed->pid != 8192U) {
    goto ldv_24754;
  } else {
  }
  if ((feed->type == 0 && feed->feed.ts.is_filtering != 0) && (feed->ts_type & 9) == 1) {
    tmp___5 = dvr_done;
    dvr_done = dvr_done + 1;
    if (tmp___5 != 0) {
      goto ldv_24754;
    } else {
    }
  } else {
  }
  if ((int )feed->pid == (int )pid) {
    dvb_dmx_swfilter_packet_type(feed, buf);
  } else
  if ((unsigned int )feed->pid == 8192U) {
    (*(feed->cb.ts))(buf, 188UL, (u8 const *)0U, 0UL, & feed->feed.ts, 0);
  } else {
  }
  ldv_24754:
  __mptr___0 = (struct list_head const *)feed->list_head.next;
  feed = (struct dvb_demux_feed *)__mptr___0 + 0xffffffffffffee80UL;
  ldv_24756: ;
  if ((unsigned long )(& feed->list_head) != (unsigned long )(& demux->feed_list)) {
    goto ldv_24755;
  } else {
  }
  return;
}
}
void dvb_dmx_swfilter_packets(struct dvb_demux *demux , u8 const *buf , size_t count )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  size_t tmp___0 ;
  {
  tmp = spinlock_check(& demux->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  goto ldv_24768;
  ldv_24767: ;
  if ((unsigned int )((unsigned char )*buf) == 71U) {
    dvb_dmx_swfilter_packet(demux, buf);
  } else {
  }
  buf = buf + 188UL;
  ldv_24768:
  tmp___0 = count;
  count = count - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_24767;
  } else {
  }
  spin_unlock_irqrestore(& demux->lock, flags);
  return;
}
}
static char const __kstrtab_dvb_dmx_swfilter_packets[25U] =
  { 'd', 'v', 'b', '_',
        'd', 'm', 'x', '_',
        's', 'w', 'f', 'i',
        'l', 't', 'e', 'r',
        '_', 'p', 'a', 'c',
        'k', 'e', 't', 's',
        '\000'};
struct kernel_symbol const __ksymtab_dvb_dmx_swfilter_packets ;
struct kernel_symbol const __ksymtab_dvb_dmx_swfilter_packets = {(unsigned long )(& dvb_dmx_swfilter_packets), (char const *)(& __kstrtab_dvb_dmx_swfilter_packets)};
__inline static int find_next_packet(u8 const *buf , int pos , size_t count , int const pktsize )
{
  int start ;
  int lost ;
  int backtrack ;
  {
  start = pos;
  goto ldv_24789;
  ldv_24788: ;
  if ((unsigned int )((unsigned char )*(buf + (unsigned long )pos)) == 71U || ((int )pktsize == 204 && (unsigned int )((unsigned char )*(buf + (unsigned long )pos)) == 184U)) {
    goto ldv_24787;
  } else {
  }
  pos = pos + 1;
  ldv_24789: ;
  if ((size_t )pos < count) {
    goto ldv_24788;
  } else {
  }
  ldv_24787:
  lost = pos - start;
  if (lost != 0) {
    backtrack = pos - (int )pktsize;
    if (backtrack >= 0 && ((unsigned int )((unsigned char )*(buf + (unsigned long )backtrack)) == 71U || ((int )pktsize == 204 && (unsigned int )((unsigned char )*(buf + (unsigned long )backtrack)) == 184U))) {
      return (backtrack);
    } else {
    }
  } else {
  }
  return (pos);
}
}
__inline static void _dvb_dmx_swfilter(struct dvb_demux *demux , u8 const *buf ,
                                       size_t count , int const pktsize )
{
  int p ;
  int i ;
  int j ;
  u8 const *q ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  p = 0;
  tmp = spinlock_check(& demux->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if (demux->tsbufp != 0) {
    i = demux->tsbufp;
    j = (int )pktsize - i;
    if ((size_t )j > count) {
      memcpy((void *)(& demux->tsbuf) + (unsigned long )i, (void const *)buf,
               count);
      demux->tsbufp = (int )((unsigned int )demux->tsbufp + (unsigned int )count);
      goto bailout;
    } else {
    }
    memcpy((void *)(& demux->tsbuf) + (unsigned long )i, (void const *)buf, (size_t )j);
    if ((unsigned int )demux->tsbuf[0] == 71U) {
      dvb_dmx_swfilter_packet(demux, (u8 const *)(& demux->tsbuf));
    } else {
    }
    demux->tsbufp = 0;
    p = p + j;
  } else {
  }
  ldv_24807:
  p = find_next_packet(buf, p, count, pktsize);
  if ((size_t )p >= count) {
    goto ldv_24806;
  } else {
  }
  if (count - (size_t )p < (size_t )pktsize) {
    goto ldv_24806;
  } else {
  }
  q = buf + (unsigned long )p;
  if ((int )pktsize == 204 && (unsigned int )((unsigned char )*q) == 184U) {
    memcpy((void *)(& demux->tsbuf), (void const *)q, 188UL);
    demux->tsbuf[0] = 71U;
    q = (u8 const *)(& demux->tsbuf);
  } else {
  }
  dvb_dmx_swfilter_packet(demux, q);
  p = p + (int )pktsize;
  goto ldv_24807;
  ldv_24806:
  i = (int )((unsigned int )count - (unsigned int )p);
  if (i != 0) {
    memcpy((void *)(& demux->tsbuf), (void const *)buf + (unsigned long )p, (size_t )i);
    demux->tsbufp = i;
    if ((int )pktsize == 204 && (unsigned int )demux->tsbuf[0] == 184U) {
      demux->tsbuf[0] = 71U;
    } else {
    }
  } else {
  }
  bailout:
  spin_unlock_irqrestore(& demux->lock, flags);
  return;
}
}
void dvb_dmx_swfilter(struct dvb_demux *demux , u8 const *buf , size_t count )
{
  {
  _dvb_dmx_swfilter(demux, buf, count, 188);
  return;
}
}
static char const __kstrtab_dvb_dmx_swfilter[17U] =
  { 'd', 'v', 'b', '_',
        'd', 'm', 'x', '_',
        's', 'w', 'f', 'i',
        'l', 't', 'e', 'r',
        '\000'};
struct kernel_symbol const __ksymtab_dvb_dmx_swfilter ;
struct kernel_symbol const __ksymtab_dvb_dmx_swfilter = {(unsigned long )(& dvb_dmx_swfilter), (char const *)(& __kstrtab_dvb_dmx_swfilter)};
void dvb_dmx_swfilter_204(struct dvb_demux *demux , u8 const *buf , size_t count )
{
  {
  _dvb_dmx_swfilter(demux, buf, count, 204);
  return;
}
}
static char const __kstrtab_dvb_dmx_swfilter_204[21U] =
  { 'd', 'v', 'b', '_',
        'd', 'm', 'x', '_',
        's', 'w', 'f', 'i',
        'l', 't', 'e', 'r',
        '_', '2', '0', '4',
        '\000'};
struct kernel_symbol const __ksymtab_dvb_dmx_swfilter_204 ;
struct kernel_symbol const __ksymtab_dvb_dmx_swfilter_204 = {(unsigned long )(& dvb_dmx_swfilter_204), (char const *)(& __kstrtab_dvb_dmx_swfilter_204)};
void dvb_dmx_swfilter_raw(struct dvb_demux *demux , u8 const *buf , size_t count )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(& demux->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  (*((demux->feed)->cb.ts))(buf, count, (u8 const *)0U, 0UL, & (demux->feed)->feed.ts,
                            0);
  spin_unlock_irqrestore(& demux->lock, flags);
  return;
}
}
static char const __kstrtab_dvb_dmx_swfilter_raw[21U] =
  { 'd', 'v', 'b', '_',
        'd', 'm', 'x', '_',
        's', 'w', 'f', 'i',
        'l', 't', 'e', 'r',
        '_', 'r', 'a', 'w',
        '\000'};
struct kernel_symbol const __ksymtab_dvb_dmx_swfilter_raw ;
struct kernel_symbol const __ksymtab_dvb_dmx_swfilter_raw = {(unsigned long )(& dvb_dmx_swfilter_raw), (char const *)(& __kstrtab_dvb_dmx_swfilter_raw)};
static struct dvb_demux_filter *dvb_dmx_filter_alloc(struct dvb_demux *demux )
{
  int i ;
  {
  i = 0;
  goto ldv_24860;
  ldv_24859: ;
  if ((demux->filter + (unsigned long )i)->state == 0) {
    goto ldv_24858;
  } else {
  }
  i = i + 1;
  ldv_24860: ;
  if (demux->filternum > i) {
    goto ldv_24859;
  } else {
  }
  ldv_24858: ;
  if (demux->filternum == i) {
    return ((struct dvb_demux_filter *)0);
  } else {
  }
  (demux->filter + (unsigned long )i)->state = 1;
  return (demux->filter + (unsigned long )i);
}
}
static struct dvb_demux_feed *dvb_dmx_feed_alloc(struct dvb_demux *demux )
{
  int i ;
  {
  i = 0;
  goto ldv_24867;
  ldv_24866: ;
  if ((demux->feed + (unsigned long )i)->state == 0) {
    goto ldv_24865;
  } else {
  }
  i = i + 1;
  ldv_24867: ;
  if (demux->feednum > i) {
    goto ldv_24866;
  } else {
  }
  ldv_24865: ;
  if (demux->feednum == i) {
    return ((struct dvb_demux_feed *)0);
  } else {
  }
  (demux->feed + (unsigned long )i)->state = 1;
  return (demux->feed + (unsigned long )i);
}
}
static int dvb_demux_feed_find(struct dvb_demux_feed *feed )
{
  struct dvb_demux_feed *entry ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)(feed->demux)->feed_list.next;
  entry = (struct dvb_demux_feed *)__mptr + 0xffffffffffffee80UL;
  goto ldv_24877;
  ldv_24876: ;
  if ((unsigned long )entry == (unsigned long )feed) {
    return (1);
  } else {
  }
  __mptr___0 = (struct list_head const *)entry->list_head.next;
  entry = (struct dvb_demux_feed *)__mptr___0 + 0xffffffffffffee80UL;
  ldv_24877: ;
  if ((unsigned long )(& entry->list_head) != (unsigned long )(& (feed->demux)->feed_list)) {
    goto ldv_24876;
  } else {
  }
  return (0);
}
}
static void dvb_demux_feed_add(struct dvb_demux_feed *feed )
{
  int tmp ;
  {
  spin_lock_irq(& (feed->demux)->lock);
  tmp = dvb_demux_feed_find(feed);
  if (tmp != 0) {
    printk("\v%s: feed already in list (type=%x state=%x pid=%x)\n", "dvb_demux_feed_add",
           feed->type, feed->state, (int )feed->pid);
    goto out;
  } else {
  }
  list_add(& feed->list_head, & (feed->demux)->feed_list);
  out:
  spin_unlock_irq(& (feed->demux)->lock);
  return;
}
}
static void dvb_demux_feed_del(struct dvb_demux_feed *feed )
{
  int tmp ;
  {
  spin_lock_irq(& (feed->demux)->lock);
  tmp = dvb_demux_feed_find(feed);
  if (tmp == 0) {
    printk("\v%s: feed not in list (type=%x state=%x pid=%x)\n", "dvb_demux_feed_del",
           feed->type, feed->state, (int )feed->pid);
    goto out;
  } else {
  }
  list_del(& feed->list_head);
  out:
  spin_unlock_irq(& (feed->demux)->lock);
  return;
}
}
static int dmx_ts_feed_set(struct dmx_ts_feed *ts_feed , u16 pid , int ts_type , enum dmx_ts_pes pes_type ,
                           size_t circular_buffer_size , struct timespec timeout )
{
  struct dvb_demux_feed *feed ;
  struct dvb_demux *demux ;
  int tmp ;
  {
  feed = (struct dvb_demux_feed *)ts_feed;
  demux = feed->demux;
  if ((unsigned int )pid > 8192U) {
    return (-22);
  } else {
  }
  tmp = mutex_lock_interruptible_nested(& demux->mutex, 0U);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  if ((ts_type & 4) != 0) {
    if ((unsigned int )pes_type > 19U) {
      mutex_unlock(& demux->mutex);
      return (-22);
    } else {
    }
    if ((unsigned long )demux->pesfilter[(unsigned int )pes_type] != (unsigned long )((struct dvb_demux_feed *)0) && (unsigned long )demux->pesfilter[(unsigned int )pes_type] != (unsigned long )feed) {
      mutex_unlock(& demux->mutex);
      return (-22);
    } else {
    }
    demux->pesfilter[(unsigned int )pes_type] = feed;
    demux->pids[(unsigned int )pes_type] = pid;
  } else {
  }
  dvb_demux_feed_add(feed);
  feed->pid = pid;
  feed->buffer_size = (int )circular_buffer_size;
  feed->timeout = timeout;
  feed->ts_type = ts_type;
  feed->pes_type = pes_type;
  if (feed->buffer_size != 0) {
    feed->buffer = (u8 *)0U;
  } else {
  }
  feed->state = 3;
  mutex_unlock(& demux->mutex);
  return (0);
}
}
static int dmx_ts_feed_start_filtering(struct dmx_ts_feed *ts_feed )
{
  struct dvb_demux_feed *feed ;
  struct dvb_demux *demux ;
  int ret ;
  int tmp ;
  {
  feed = (struct dvb_demux_feed *)ts_feed;
  demux = feed->demux;
  tmp = mutex_lock_interruptible_nested(& demux->mutex, 0U);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  if (feed->state != 3 || feed->type != 0) {
    mutex_unlock(& demux->mutex);
    return (-22);
  } else {
  }
  if ((unsigned long )demux->start_feed == (unsigned long )((int (*)(struct dvb_demux_feed * ))0)) {
    mutex_unlock(& demux->mutex);
    return (-19);
  } else {
  }
  ret = (*(demux->start_feed))(feed);
  if (ret < 0) {
    mutex_unlock(& demux->mutex);
    return (ret);
  } else {
  }
  spin_lock_irq(& demux->lock);
  ts_feed->is_filtering = 1;
  feed->state = 4;
  spin_unlock_irq(& demux->lock);
  mutex_unlock(& demux->mutex);
  return (0);
}
}
static int dmx_ts_feed_stop_filtering(struct dmx_ts_feed *ts_feed )
{
  struct dvb_demux_feed *feed ;
  struct dvb_demux *demux ;
  int ret ;
  {
  feed = (struct dvb_demux_feed *)ts_feed;
  demux = feed->demux;
  mutex_lock_nested(& demux->mutex, 0U);
  if (feed->state <= 3) {
    mutex_unlock(& demux->mutex);
    return (-22);
  } else {
  }
  if ((unsigned long )demux->stop_feed == (unsigned long )((int (*)(struct dvb_demux_feed * ))0)) {
    mutex_unlock(& demux->mutex);
    return (-19);
  } else {
  }
  ret = (*(demux->stop_feed))(feed);
  spin_lock_irq(& demux->lock);
  ts_feed->is_filtering = 0;
  feed->state = 1;
  spin_unlock_irq(& demux->lock);
  mutex_unlock(& demux->mutex);
  return (ret);
}
}
static int dvbdmx_allocate_ts_feed(struct dmx_demux *dmx , struct dmx_ts_feed **ts_feed ,
                                   int (*callback)(u8 const * , size_t , u8 const * ,
                                                   size_t , struct dmx_ts_feed * ,
                                                   enum dmx_success ) )
{
  struct dvb_demux *demux ;
  struct dvb_demux_feed *feed ;
  int tmp ;
  struct dvb_demux_filter *tmp___0 ;
  {
  demux = (struct dvb_demux *)dmx;
  tmp = mutex_lock_interruptible_nested(& demux->mutex, 0U);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  feed = dvb_dmx_feed_alloc(demux);
  if ((unsigned long )feed == (unsigned long )((struct dvb_demux_feed *)0)) {
    mutex_unlock(& demux->mutex);
    return (-16);
  } else {
  }
  feed->type = 0;
  feed->cb.ts = callback;
  feed->demux = demux;
  feed->pid = 65535U;
  feed->peslen = 65530U;
  feed->buffer = (u8 *)0U;
  *ts_feed = & feed->feed.ts;
  (*ts_feed)->parent = dmx;
  (*ts_feed)->priv = (void *)0;
  (*ts_feed)->is_filtering = 0;
  (*ts_feed)->start_filtering = & dmx_ts_feed_start_filtering;
  (*ts_feed)->stop_filtering = & dmx_ts_feed_stop_filtering;
  (*ts_feed)->set = & dmx_ts_feed_set;
  tmp___0 = dvb_dmx_filter_alloc(demux);
  feed->filter = tmp___0;
  if ((unsigned long )tmp___0 == (unsigned long )((struct dvb_demux_filter *)0)) {
    feed->state = 0;
    mutex_unlock(& demux->mutex);
    return (-16);
  } else {
  }
  (feed->filter)->type = 0;
  (feed->filter)->feed = feed;
  (feed->filter)->state = 3;
  mutex_unlock(& demux->mutex);
  return (0);
}
}
static int dvbdmx_release_ts_feed(struct dmx_demux *dmx , struct dmx_ts_feed *ts_feed )
{
  struct dvb_demux *demux ;
  struct dvb_demux_feed *feed ;
  {
  demux = (struct dvb_demux *)dmx;
  feed = (struct dvb_demux_feed *)ts_feed;
  mutex_lock_nested(& demux->mutex, 0U);
  if (feed->state == 0) {
    mutex_unlock(& demux->mutex);
    return (-22);
  } else {
  }
  feed->state = 0;
  (feed->filter)->state = 0;
  dvb_demux_feed_del(feed);
  feed->pid = 65535U;
  if ((feed->ts_type & 4) != 0 && (unsigned int )feed->pes_type <= 19U) {
    demux->pesfilter[(unsigned int )feed->pes_type] = (struct dvb_demux_feed *)0;
  } else {
  }
  mutex_unlock(& demux->mutex);
  return (0);
}
}
static int dmx_section_feed_allocate_filter(struct dmx_section_feed *feed , struct dmx_section_filter **filter )
{
  struct dvb_demux_feed *dvbdmxfeed ;
  struct dvb_demux *dvbdemux ;
  struct dvb_demux_filter *dvbdmxfilter ;
  int tmp ;
  {
  dvbdmxfeed = (struct dvb_demux_feed *)feed;
  dvbdemux = dvbdmxfeed->demux;
  tmp = mutex_lock_interruptible_nested(& dvbdemux->mutex, 0U);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  dvbdmxfilter = dvb_dmx_filter_alloc(dvbdemux);
  if ((unsigned long )dvbdmxfilter == (unsigned long )((struct dvb_demux_filter *)0)) {
    mutex_unlock(& dvbdemux->mutex);
    return (-16);
  } else {
  }
  spin_lock_irq(& dvbdemux->lock);
  *filter = & dvbdmxfilter->filter;
  (*filter)->parent = feed;
  (*filter)->priv = (void *)0;
  dvbdmxfilter->feed = dvbdmxfeed;
  dvbdmxfilter->type = 1;
  dvbdmxfilter->state = 3;
  dvbdmxfilter->next = dvbdmxfeed->filter;
  dvbdmxfeed->filter = dvbdmxfilter;
  spin_unlock_irq(& dvbdemux->lock);
  mutex_unlock(& dvbdemux->mutex);
  return (0);
}
}
static int dmx_section_feed_set(struct dmx_section_feed *feed , u16 pid , size_t circular_buffer_size ,
                                int check_crc )
{
  struct dvb_demux_feed *dvbdmxfeed ;
  struct dvb_demux *dvbdmx ;
  int tmp ;
  {
  dvbdmxfeed = (struct dvb_demux_feed *)feed;
  dvbdmx = dvbdmxfeed->demux;
  if ((unsigned int )pid > 8191U) {
    return (-22);
  } else {
  }
  tmp = mutex_lock_interruptible_nested(& dvbdmx->mutex, 0U);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  dvb_demux_feed_add(dvbdmxfeed);
  dvbdmxfeed->pid = pid;
  dvbdmxfeed->buffer_size = (int )circular_buffer_size;
  dvbdmxfeed->feed.sec.check_crc = check_crc;
  dvbdmxfeed->buffer = (u8 *)0U;
  dvbdmxfeed->state = 3;
  mutex_unlock(& dvbdmx->mutex);
  return (0);
}
}
static void prepare_secfilters(struct dvb_demux_feed *dvbdmxfeed )
{
  int i ;
  struct dvb_demux_filter *f ;
  struct dmx_section_filter *sf ;
  u8 mask ;
  u8 mode ;
  u8 doneq ;
  u8 tmp ;
  {
  f = dvbdmxfeed->filter;
  if ((unsigned long )f == (unsigned long )((struct dvb_demux_filter *)0)) {
    return;
  } else {
  }
  ldv_24951:
  sf = & f->filter;
  doneq = 0U;
  i = 0;
  goto ldv_24949;
  ldv_24948:
  mode = sf->filter_mode[i];
  mask = sf->filter_mask[i];
  f->maskandmode[i] = (u8 )((int )mask & (int )mode);
  tmp = (u8 )(~ ((int )((signed char )mode)) & (int )((signed char )mask));
  f->maskandnotmode[i] = tmp;
  doneq = (u8 )((int )tmp | (int )doneq);
  i = i + 1;
  ldv_24949: ;
  if (i <= 17) {
    goto ldv_24948;
  } else {
  }
  f->doneq = (unsigned int )doneq != 0U;
  f = f->next;
  if ((unsigned long )f != (unsigned long )((struct dvb_demux_filter *)0)) {
    goto ldv_24951;
  } else {
  }
  return;
}
}
static int dmx_section_feed_start_filtering(struct dmx_section_feed *feed )
{
  struct dvb_demux_feed *dvbdmxfeed ;
  struct dvb_demux *dvbdmx ;
  int ret ;
  int tmp ;
  {
  dvbdmxfeed = (struct dvb_demux_feed *)feed;
  dvbdmx = dvbdmxfeed->demux;
  tmp = mutex_lock_interruptible_nested(& dvbdmx->mutex, 0U);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  if (feed->is_filtering != 0) {
    mutex_unlock(& dvbdmx->mutex);
    return (-16);
  } else {
  }
  if ((unsigned long )dvbdmxfeed->filter == (unsigned long )((struct dvb_demux_filter *)0)) {
    mutex_unlock(& dvbdmx->mutex);
    return (-22);
  } else {
  }
  dvbdmxfeed->feed.sec.tsfeedp = 0U;
  dvbdmxfeed->feed.sec.secbuf = (u8 *)(& dvbdmxfeed->feed.sec.secbuf_base);
  dvbdmxfeed->feed.sec.secbufp = 0U;
  dvbdmxfeed->feed.sec.seclen = 0U;
  if ((unsigned long )dvbdmx->start_feed == (unsigned long )((int (*)(struct dvb_demux_feed * ))0)) {
    mutex_unlock(& dvbdmx->mutex);
    return (-19);
  } else {
  }
  prepare_secfilters(dvbdmxfeed);
  ret = (*(dvbdmx->start_feed))(dvbdmxfeed);
  if (ret < 0) {
    mutex_unlock(& dvbdmx->mutex);
    return (ret);
  } else {
  }
  spin_lock_irq(& dvbdmx->lock);
  feed->is_filtering = 1;
  dvbdmxfeed->state = 4;
  spin_unlock_irq(& dvbdmx->lock);
  mutex_unlock(& dvbdmx->mutex);
  return (0);
}
}
static int dmx_section_feed_stop_filtering(struct dmx_section_feed *feed )
{
  struct dvb_demux_feed *dvbdmxfeed ;
  struct dvb_demux *dvbdmx ;
  int ret ;
  {
  dvbdmxfeed = (struct dvb_demux_feed *)feed;
  dvbdmx = dvbdmxfeed->demux;
  mutex_lock_nested(& dvbdmx->mutex, 0U);
  if ((unsigned long )dvbdmx->stop_feed == (unsigned long )((int (*)(struct dvb_demux_feed * ))0)) {
    mutex_unlock(& dvbdmx->mutex);
    return (-19);
  } else {
  }
  ret = (*(dvbdmx->stop_feed))(dvbdmxfeed);
  spin_lock_irq(& dvbdmx->lock);
  dvbdmxfeed->state = 3;
  feed->is_filtering = 0;
  spin_unlock_irq(& dvbdmx->lock);
  mutex_unlock(& dvbdmx->mutex);
  return (ret);
}
}
static int dmx_section_feed_release_filter(struct dmx_section_feed *feed , struct dmx_section_filter *filter )
{
  struct dvb_demux_filter *dvbdmxfilter ;
  struct dvb_demux_filter *f ;
  struct dvb_demux_feed *dvbdmxfeed ;
  struct dvb_demux *dvbdmx ;
  {
  dvbdmxfilter = (struct dvb_demux_filter *)filter;
  dvbdmxfeed = (struct dvb_demux_feed *)feed;
  dvbdmx = dvbdmxfeed->demux;
  mutex_lock_nested(& dvbdmx->mutex, 0U);
  if ((unsigned long )dvbdmxfilter->feed != (unsigned long )dvbdmxfeed) {
    mutex_unlock(& dvbdmx->mutex);
    return (-22);
  } else {
  }
  if (feed->is_filtering != 0) {
    mutex_unlock(& dvbdmx->mutex);
    (*(feed->stop_filtering))(feed);
    mutex_lock_nested(& dvbdmx->mutex, 0U);
  } else {
  }
  spin_lock_irq(& dvbdmx->lock);
  f = dvbdmxfeed->filter;
  if ((unsigned long )f == (unsigned long )dvbdmxfilter) {
    dvbdmxfeed->filter = dvbdmxfilter->next;
  } else {
    goto ldv_24974;
    ldv_24973:
    f = f->next;
    ldv_24974: ;
    if ((unsigned long )f->next != (unsigned long )dvbdmxfilter) {
      goto ldv_24973;
    } else {
    }
    f->next = (f->next)->next;
  }
  dvbdmxfilter->state = 0;
  spin_unlock_irq(& dvbdmx->lock);
  mutex_unlock(& dvbdmx->mutex);
  return (0);
}
}
static int dvbdmx_allocate_section_feed(struct dmx_demux *demux , struct dmx_section_feed **feed ,
                                        int (*callback)(u8 const * , size_t , u8 const * ,
                                                        size_t , struct dmx_section_filter * ,
                                                        enum dmx_success ) )
{
  struct dvb_demux *dvbdmx ;
  struct dvb_demux_feed *dvbdmxfeed ;
  int tmp ;
  u16 tmp___0 ;
  {
  dvbdmx = (struct dvb_demux *)demux;
  tmp = mutex_lock_interruptible_nested(& dvbdmx->mutex, 0U);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  dvbdmxfeed = dvb_dmx_feed_alloc(dvbdmx);
  if ((unsigned long )dvbdmxfeed == (unsigned long )((struct dvb_demux_feed *)0)) {
    mutex_unlock(& dvbdmx->mutex);
    return (-16);
  } else {
  }
  dvbdmxfeed->type = 1;
  dvbdmxfeed->cb.sec = callback;
  dvbdmxfeed->demux = dvbdmx;
  dvbdmxfeed->pid = 65535U;
  dvbdmxfeed->feed.sec.secbuf = (u8 *)(& dvbdmxfeed->feed.sec.secbuf_base);
  tmp___0 = 0U;
  dvbdmxfeed->feed.sec.seclen = tmp___0;
  dvbdmxfeed->feed.sec.secbufp = tmp___0;
  dvbdmxfeed->feed.sec.tsfeedp = 0U;
  dvbdmxfeed->filter = (struct dvb_demux_filter *)0;
  dvbdmxfeed->buffer = (u8 *)0U;
  *feed = & dvbdmxfeed->feed.sec;
  (*feed)->is_filtering = 0;
  (*feed)->parent = demux;
  (*feed)->priv = (void *)0;
  (*feed)->set = & dmx_section_feed_set;
  (*feed)->allocate_filter = & dmx_section_feed_allocate_filter;
  (*feed)->start_filtering = & dmx_section_feed_start_filtering;
  (*feed)->stop_filtering = & dmx_section_feed_stop_filtering;
  (*feed)->release_filter = & dmx_section_feed_release_filter;
  mutex_unlock(& dvbdmx->mutex);
  return (0);
}
}
static int dvbdmx_release_section_feed(struct dmx_demux *demux , struct dmx_section_feed *feed )
{
  struct dvb_demux_feed *dvbdmxfeed ;
  struct dvb_demux *dvbdmx ;
  {
  dvbdmxfeed = (struct dvb_demux_feed *)feed;
  dvbdmx = (struct dvb_demux *)demux;
  mutex_lock_nested(& dvbdmx->mutex, 0U);
  if (dvbdmxfeed->state == 0) {
    mutex_unlock(& dvbdmx->mutex);
    return (-22);
  } else {
  }
  dvbdmxfeed->state = 0;
  dvb_demux_feed_del(dvbdmxfeed);
  dvbdmxfeed->pid = 65535U;
  mutex_unlock(& dvbdmx->mutex);
  return (0);
}
}
static int dvbdmx_open(struct dmx_demux *demux )
{
  struct dvb_demux *dvbdemux ;
  {
  dvbdemux = (struct dvb_demux *)demux;
  if (dvbdemux->users > 9) {
    return (-87);
  } else {
  }
  dvbdemux->users = dvbdemux->users + 1;
  return (0);
}
}
static int dvbdmx_close(struct dmx_demux *demux )
{
  struct dvb_demux *dvbdemux ;
  {
  dvbdemux = (struct dvb_demux *)demux;
  if (dvbdemux->users == 0) {
    return (-19);
  } else {
  }
  dvbdemux->users = dvbdemux->users - 1;
  return (0);
}
}
static int dvbdmx_write(struct dmx_demux *demux , char const *buf , size_t count )
{
  struct dvb_demux *dvbdemux ;
  void *p ;
  long tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  struct task_struct *tmp___2 ;
  int tmp___3 ;
  {
  dvbdemux = (struct dvb_demux *)demux;
  if ((unsigned long )demux->frontend == (unsigned long )((struct dmx_frontend *)0) || (unsigned int )(demux->frontend)->source != 0U) {
    return (-22);
  } else {
  }
  p = memdup_user((void const *)buf, count);
  tmp___0 = IS_ERR((void const *)p);
  if ((int )tmp___0) {
    tmp = PTR_ERR((void const *)p);
    return ((int )tmp);
  } else {
  }
  tmp___1 = mutex_lock_interruptible_nested(& dvbdemux->mutex, 0U);
  if (tmp___1 != 0) {
    kfree((void const *)p);
    return (-512);
  } else {
  }
  dvb_dmx_swfilter(dvbdemux, (u8 const *)p, count);
  kfree((void const *)p);
  mutex_unlock(& dvbdemux->mutex);
  tmp___2 = get_current();
  tmp___3 = signal_pending(tmp___2);
  if (tmp___3 != 0) {
    return (-4);
  } else {
  }
  return ((int )count);
}
}
static int dvbdmx_add_frontend(struct dmx_demux *demux , struct dmx_frontend *frontend )
{
  struct dvb_demux *dvbdemux ;
  struct list_head *head ;
  {
  dvbdemux = (struct dvb_demux *)demux;
  head = & dvbdemux->frontend_list;
  list_add(& frontend->connectivity_list, head);
  return (0);
}
}
static int dvbdmx_remove_frontend(struct dmx_demux *demux , struct dmx_frontend *frontend )
{
  struct dvb_demux *dvbdemux ;
  struct list_head *pos ;
  struct list_head *n ;
  struct list_head *head ;
  struct list_head const *__mptr ;
  {
  dvbdemux = (struct dvb_demux *)demux;
  head = & dvbdemux->frontend_list;
  pos = head->next;
  n = pos->next;
  goto ldv_25021;
  ldv_25020:
  __mptr = (struct list_head const *)pos;
  if ((unsigned long )((struct dmx_frontend *)__mptr) == (unsigned long )frontend) {
    list_del(pos);
    return (0);
  } else {
  }
  pos = n;
  n = pos->next;
  ldv_25021: ;
  if ((unsigned long )pos != (unsigned long )head) {
    goto ldv_25020;
  } else {
  }
  return (-19);
}
}
static struct list_head *dvbdmx_get_frontends(struct dmx_demux *demux )
{
  struct dvb_demux *dvbdemux ;
  int tmp ;
  {
  dvbdemux = (struct dvb_demux *)demux;
  tmp = list_empty((struct list_head const *)(& dvbdemux->frontend_list));
  if (tmp != 0) {
    return ((struct list_head *)0);
  } else {
  }
  return (& dvbdemux->frontend_list);
}
}
static int dvbdmx_connect_frontend(struct dmx_demux *demux , struct dmx_frontend *frontend )
{
  struct dvb_demux *dvbdemux ;
  {
  dvbdemux = (struct dvb_demux *)demux;
  if ((unsigned long )demux->frontend != (unsigned long )((struct dmx_frontend *)0)) {
    return (-22);
  } else {
  }
  mutex_lock_nested(& dvbdemux->mutex, 0U);
  demux->frontend = frontend;
  mutex_unlock(& dvbdemux->mutex);
  return (0);
}
}
static int dvbdmx_disconnect_frontend(struct dmx_demux *demux )
{
  struct dvb_demux *dvbdemux ;
  {
  dvbdemux = (struct dvb_demux *)demux;
  mutex_lock_nested(& dvbdemux->mutex, 0U);
  demux->frontend = (struct dmx_frontend *)0;
  mutex_unlock(& dvbdemux->mutex);
  return (0);
}
}
static int dvbdmx_get_pes_pids(struct dmx_demux *demux , u16 *pids )
{
  struct dvb_demux *dvbdemux ;
  {
  dvbdemux = (struct dvb_demux *)demux;
  memcpy((void *)pids, (void const *)(& dvbdemux->pids), 10UL);
  return (0);
}
}
int dvb_dmx_init(struct dvb_demux *dvbdemux )
{
  int i ;
  struct dmx_demux *dmx ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  dmx = & dvbdemux->dmx;
  dvbdemux->cnt_storage = (uint8_t *)0U;
  dvbdemux->users = 0;
  tmp = vmalloc((unsigned long )dvbdemux->filternum * 272UL);
  dvbdemux->filter = (struct dvb_demux_filter *)tmp;
  if ((unsigned long )dvbdemux->filter == (unsigned long )((struct dvb_demux_filter *)0)) {
    return (-12);
  } else {
  }
  tmp___0 = vmalloc((unsigned long )dvbdemux->feednum * 4504UL);
  dvbdemux->feed = (struct dvb_demux_feed *)tmp___0;
  if ((unsigned long )dvbdemux->feed == (unsigned long )((struct dvb_demux_feed *)0)) {
    vfree((void const *)dvbdemux->filter);
    dvbdemux->filter = (struct dvb_demux_filter *)0;
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_25047;
  ldv_25046:
  (dvbdemux->filter + (unsigned long )i)->state = 0;
  (dvbdemux->filter + (unsigned long )i)->index = i;
  i = i + 1;
  ldv_25047: ;
  if (dvbdemux->filternum > i) {
    goto ldv_25046;
  } else {
  }
  i = 0;
  goto ldv_25050;
  ldv_25049:
  (dvbdemux->feed + (unsigned long )i)->state = 0;
  (dvbdemux->feed + (unsigned long )i)->index = (unsigned int )i;
  i = i + 1;
  ldv_25050: ;
  if (dvbdemux->feednum > i) {
    goto ldv_25049;
  } else {
  }
  tmp___1 = vmalloc(8192UL);
  dvbdemux->cnt_storage = (uint8_t *)tmp___1;
  if ((unsigned long )dvbdemux->cnt_storage == (unsigned long )((uint8_t *)0U)) {
    printk("\fCouldn\'t allocate memory for TS/TEI check. Disabling it\n");
  } else {
  }
  INIT_LIST_HEAD(& dvbdemux->frontend_list);
  i = 0;
  goto ldv_25053;
  ldv_25052:
  dvbdemux->pesfilter[i] = (struct dvb_demux_feed *)0;
  dvbdemux->pids[i] = 65535U;
  i = i + 1;
  ldv_25053: ;
  if (i <= 19) {
    goto ldv_25052;
  } else {
  }
  INIT_LIST_HEAD(& dvbdemux->feed_list);
  dvbdemux->playing = 0;
  dvbdemux->recording = 0;
  dvbdemux->tsbufp = 0;
  if ((unsigned long )dvbdemux->check_crc32 == (unsigned long )((u32 (*)(struct dvb_demux_feed * ,
                                                                         u8 const * ,
                                                                         size_t ))0)) {
    dvbdemux->check_crc32 = & dvb_dmx_crc32;
  } else {
  }
  if ((unsigned long )dvbdemux->memcopy == (unsigned long )((void (*)(struct dvb_demux_feed * ,
                                                                      u8 * , u8 const * ,
                                                                      size_t ))0)) {
    dvbdemux->memcopy = & dvb_dmx_memcopy;
  } else {
  }
  dmx->frontend = (struct dmx_frontend *)0;
  dmx->priv = (void *)dvbdemux;
  dmx->open = & dvbdmx_open;
  dmx->close = & dvbdmx_close;
  dmx->write = & dvbdmx_write;
  dmx->allocate_ts_feed = & dvbdmx_allocate_ts_feed;
  dmx->release_ts_feed = & dvbdmx_release_ts_feed;
  dmx->allocate_section_feed = & dvbdmx_allocate_section_feed;
  dmx->release_section_feed = & dvbdmx_release_section_feed;
  dmx->add_frontend = & dvbdmx_add_frontend;
  dmx->remove_frontend = & dvbdmx_remove_frontend;
  dmx->get_frontends = & dvbdmx_get_frontends;
  dmx->connect_frontend = & dvbdmx_connect_frontend;
  dmx->disconnect_frontend = & dvbdmx_disconnect_frontend;
  dmx->get_pes_pids = & dvbdmx_get_pes_pids;
  __mutex_init(& dvbdemux->mutex, "&dvbdemux->mutex", & __key);
  spinlock_check(& dvbdemux->lock);
  __raw_spin_lock_init(& dvbdemux->lock.__annonCompField18.rlock, "&(&dvbdemux->lock)->rlock",
                       & __key___0);
  return (0);
}
}
static char const __kstrtab_dvb_dmx_init[13U] =
  { 'd', 'v', 'b', '_',
        'd', 'm', 'x', '_',
        'i', 'n', 'i', 't',
        '\000'};
struct kernel_symbol const __ksymtab_dvb_dmx_init ;
struct kernel_symbol const __ksymtab_dvb_dmx_init = {(unsigned long )(& dvb_dmx_init), (char const *)(& __kstrtab_dvb_dmx_init)};
void dvb_dmx_release(struct dvb_demux *dvbdemux )
{
  {
  vfree((void const *)dvbdemux->cnt_storage);
  vfree((void const *)dvbdemux->filter);
  vfree((void const *)dvbdemux->feed);
  return;
}
}
static char const __kstrtab_dvb_dmx_release[16U] =
  { 'd', 'v', 'b', '_',
        'd', 'm', 'x', '_',
        'r', 'e', 'l', 'e',
        'a', 's', 'e', '\000'};
struct kernel_symbol const __ksymtab_dvb_dmx_release ;
struct kernel_symbol const __ksymtab_dvb_dmx_release = {(unsigned long )(& dvb_dmx_release), (char const *)(& __kstrtab_dvb_dmx_release)};
bool ldv_queue_work_on_47(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_48(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_49(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_50(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_51(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_61(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_63(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_62(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_65(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_64(struct workqueue_struct *ldv_func_arg1 ) ;
void dvb_filter_pes2ts_init(struct dvb_filter_pes2ts *p2ts , unsigned short pid ,
                            dvb_filter_pes2ts_cb_t *cb , void *priv ) ;
int dvb_filter_pes2ts(struct dvb_filter_pes2ts *p2ts , unsigned char *pes , int len ,
                      int payload_start ) ;
int dvb_filter_get_ac3info(u8 *mbuf , int count , struct dvb_audio_info *ai , int pr ) ;
static u32 freq[4U] = { 480U, 441U, 320U, 0U};
static unsigned int ac3_bitrates[32U] =
  { 32U, 40U, 48U, 56U,
        64U, 80U, 96U, 112U,
        128U, 160U, 192U, 224U,
        256U, 320U, 384U, 448U,
        512U, 576U, 640U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U};
static u32 ac3_frames[3U][32U] = { { 64U, 80U, 96U, 112U,
            128U, 160U, 192U, 224U,
            256U, 320U, 384U, 448U,
            512U, 640U, 768U, 896U,
            1024U, 1152U, 1280U, 0U,
            0U, 0U, 0U, 0U,
            0U, 0U, 0U, 0U,
            0U, 0U, 0U, 0U},
   { 69U, 87U, 104U, 121U,
            139U, 174U, 208U, 243U,
            278U, 348U, 417U, 487U,
            557U, 696U, 835U, 975U,
            1114U, 1253U, 1393U, 0U,
            0U, 0U, 0U, 0U,
            0U, 0U, 0U, 0U,
            0U, 0U, 0U, 0U},
   { 96U, 120U, 144U, 168U,
            192U, 240U, 288U, 336U,
            384U, 480U, 576U, 672U,
            768U, 960U, 1152U, 1344U,
            1536U, 1728U, 1920U, 0U,
            0U, 0U, 0U, 0U,
            0U, 0U, 0U, 0U,
            0U, 0U, 0U, 0U}};
int dvb_filter_get_ac3info(u8 *mbuf , int count , struct dvb_audio_info *ai , int pr )
{
  u8 *headr ;
  int found ;
  int c ;
  u8 frame ;
  int fr ;
  u8 *b ;
  {
  found = 0;
  c = 0;
  frame = 0U;
  fr = 0;
  goto ldv_20307;
  ldv_20306:
  b = mbuf + (unsigned long )c;
  if ((unsigned int )*b == 11U && (unsigned int )*(b + 1UL) == 119U) {
    found = 1;
  } else {
    c = c + 1;
  }
  ldv_20307: ;
  if (found == 0 && c < count) {
    goto ldv_20306;
  } else {
  }
  if (found == 0) {
    return (-1);
  } else {
  }
  if (pr != 0) {
    printk("Audiostream: AC3");
  } else {
  }
  ai->off = (u32 )c;
  if (c + 5 >= count) {
    return (-1);
  } else {
  }
  ai->layer = 0;
  headr = mbuf + ((unsigned long )c + 2UL);
  frame = (unsigned int )*(headr + 2UL) & 63U;
  ai->bit_rate = ac3_bitrates[(int )frame >> 1] * 1000U;
  if (pr != 0) {
    printk("  BRate: %d kb/s", (int )ai->bit_rate / 1000);
  } else {
  }
  ai->frequency = (u32 )((int )*(headr + 2UL) >> 6);
  fr = (int )*(headr + 2UL) >> 6;
  ai->frequency = freq[fr] * 100U;
  if (pr != 0) {
    printk("  Freq: %d Hz\n", (int )ai->frequency);
  } else {
  }
  ai->framesize = ac3_frames[fr][(int )frame >> 1];
  if ((int )frame & 1 && fr == 1) {
    ai->framesize = ai->framesize + 1U;
  } else {
  }
  ai->framesize = ai->framesize << 1;
  if (pr != 0) {
    printk("  Framesize %d\n", (int )ai->framesize);
  } else {
  }
  return (0);
}
}
static char const __kstrtab_dvb_filter_get_ac3info[23U] =
  { 'd', 'v', 'b', '_',
        'f', 'i', 'l', 't',
        'e', 'r', '_', 'g',
        'e', 't', '_', 'a',
        'c', '3', 'i', 'n',
        'f', 'o', '\000'};
struct kernel_symbol const __ksymtab_dvb_filter_get_ac3info ;
struct kernel_symbol const __ksymtab_dvb_filter_get_ac3info = {(unsigned long )(& dvb_filter_get_ac3info), (char const *)(& __kstrtab_dvb_filter_get_ac3info)};
void dvb_filter_pes2ts_init(struct dvb_filter_pes2ts *p2ts , unsigned short pid ,
                            dvb_filter_pes2ts_cb_t *cb , void *priv )
{
  unsigned char *buf ;
  {
  buf = (unsigned char *)(& p2ts->buf);
  *buf = 71U;
  *(buf + 1UL) = (unsigned char )((int )pid >> 8);
  *(buf + 2UL) = (unsigned char )pid;
  p2ts->cc = 0U;
  p2ts->cb = cb;
  p2ts->priv = priv;
  return;
}
}
static char const __kstrtab_dvb_filter_pes2ts_init[23U] =
  { 'd', 'v', 'b', '_',
        'f', 'i', 'l', 't',
        'e', 'r', '_', 'p',
        'e', 's', '2', 't',
        's', '_', 'i', 'n',
        'i', 't', '\000'};
struct kernel_symbol const __ksymtab_dvb_filter_pes2ts_init ;
struct kernel_symbol const __ksymtab_dvb_filter_pes2ts_init = {(unsigned long )(& dvb_filter_pes2ts_init), (char const *)(& __kstrtab_dvb_filter_pes2ts_init)};
int dvb_filter_pes2ts(struct dvb_filter_pes2ts *p2ts , unsigned char *pes , int len ,
                      int payload_start )
{
  unsigned char *buf ;
  int ret ;
  int rest ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  int tmp___1 ;
  {
  buf = (unsigned char *)(& p2ts->buf);
  ret = 0;
  if (payload_start != 0) {
    *(buf + 1UL) = (unsigned int )*(buf + 1UL) | 64U;
  } else {
    *(buf + 1UL) = (unsigned int )*(buf + 1UL) & 191U;
  }
  goto ldv_20346;
  ldv_20345:
  tmp = p2ts->cc;
  p2ts->cc = (unsigned char )((int )p2ts->cc + 1);
  *(buf + 3UL) = (unsigned char )(((int )((signed char )tmp) & 15) | 16);
  memcpy((void *)buf + 4U, (void const *)pes, 184UL);
  ret = (*(p2ts->cb))(p2ts->priv, buf);
  if (ret != 0) {
    return (ret);
  } else {
  }
  len = len + -184;
  pes = pes + 184UL;
  *(buf + 1UL) = (unsigned int )*(buf + 1UL) & 191U;
  ldv_20346: ;
  if (len > 183) {
    goto ldv_20345;
  } else {
  }
  if (len == 0) {
    return (0);
  } else {
  }
  tmp___0 = p2ts->cc;
  p2ts->cc = (unsigned char )((int )p2ts->cc + 1);
  *(buf + 3UL) = (unsigned char )(((int )((signed char )tmp___0) & 15) | 48);
  rest = 183 - len;
  if (rest != 0) {
    *(buf + 5UL) = 0U;
    if (rest != 1) {
      memset((void *)buf + 6U, 255, (size_t )(rest + -1));
    } else {
    }
  } else {
  }
  *(buf + 4UL) = (unsigned char )rest;
  memcpy((void *)(buf + ((unsigned long )rest + 5UL)), (void const *)pes, (size_t )len);
  tmp___1 = (*(p2ts->cb))(p2ts->priv, buf);
  return (tmp___1);
}
}
static char const __kstrtab_dvb_filter_pes2ts[18U] =
  { 'd', 'v', 'b', '_',
        'f', 'i', 'l', 't',
        'e', 'r', '_', 'p',
        'e', 's', '2', 't',
        's', '\000'};
struct kernel_symbol const __ksymtab_dvb_filter_pes2ts ;
struct kernel_symbol const __ksymtab_dvb_filter_pes2ts = {(unsigned long )(& dvb_filter_pes2ts), (char const *)(& __kstrtab_dvb_filter_pes2ts)};
bool ldv_queue_work_on_61(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_62(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_63(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_64(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_65(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
__inline static long PTR_ERR(void const *ptr ) ;
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
bool ldv_queue_work_on_75(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_77(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_76(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_79(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_78(struct workqueue_struct *ldv_func_arg1 ) ;
bool ldv_try_module_get_80(struct module *ldv_func_arg1 ) ;
void ldv_module_put_81(struct module *ldv_func_arg1 ) ;
void ldv_module_put_82(struct module *ldv_func_arg1 ) ;
extern long schedule_timeout(long ) ;
extern int wake_up_process(struct task_struct * ) ;
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
void ldv_file_operations_8(void) ;
extern void msleep(unsigned int ) ;
extern struct task_struct *kthread_create_on_node(int (*)(void * ) , void * , int ,
                                                  char const * , ...) ;
extern int kthread_stop(struct task_struct * ) ;
extern bool kthread_should_stop(void) ;
void dvb_ca_en50221_camchange_irq(struct dvb_ca_en50221 *pubca , int slot , int change_type ) ;
void dvb_ca_en50221_camready_irq(struct dvb_ca_en50221 *pubca , int slot ) ;
void dvb_ca_en50221_frda_irq(struct dvb_ca_en50221 *pubca , int slot ) ;
int dvb_ca_en50221_init(struct dvb_adapter *dvb_adapter , struct dvb_ca_en50221 *pubca ,
                        int flags , int slot_count ) ;
void dvb_ca_en50221_release(struct dvb_ca_en50221 *pubca ) ;
ssize_t dvb_ringbuffer_pkt_write(struct dvb_ringbuffer *rbuf , u8 *buf , size_t len ) ;
ssize_t dvb_ringbuffer_pkt_read_user(struct dvb_ringbuffer *rbuf , size_t idx , int offset ,
                                     u8 *buf , size_t len ) ;
ssize_t dvb_ringbuffer_pkt_read(struct dvb_ringbuffer *rbuf , size_t idx , int offset ,
                                u8 *buf , size_t len ) ;
void dvb_ringbuffer_pkt_dispose(struct dvb_ringbuffer *rbuf , size_t idx ) ;
ssize_t dvb_ringbuffer_pkt_next(struct dvb_ringbuffer *rbuf , size_t idx , size_t *pktlen ) ;
static int dvb_ca_en50221_debug ;
static void dvb_ca_en50221_thread_wakeup(struct dvb_ca_private *ca ) ;
static int dvb_ca_en50221_read_data(struct dvb_ca_private *ca , int slot , u8 *ebuf ,
                                    int ecount ) ;
static int dvb_ca_en50221_write_data(struct dvb_ca_private *ca , int slot , u8 *buf ,
                                     int bytes_write ) ;
static char *findstr(char *haystack , int hlen , char *needle , int nlen )
{
  int i ;
  int tmp ;
  {
  if (hlen < nlen) {
    return ((char *)0);
  } else {
  }
  i = 0;
  goto ldv_26060;
  ldv_26059:
  tmp = strncmp((char const *)haystack + (unsigned long )i, (char const *)needle,
                (__kernel_size_t )nlen);
  if (tmp == 0) {
    return (haystack + (unsigned long )i);
  } else {
  }
  i = i + 1;
  ldv_26060: ;
  if (hlen - nlen >= i) {
    goto ldv_26059;
  } else {
  }
  return ((char *)0);
}
}
static int dvb_ca_en50221_check_camstatus(struct dvb_ca_private *ca , int slot )
{
  int slot_status ;
  int cam_present_now ;
  int cam_changed ;
  int tmp ;
  int cam_present_old ;
  {
  if ((int )ca->flags & 1) {
    tmp = atomic_read((atomic_t const *)(& (ca->slot_info + (unsigned long )slot)->camchange_count));
    return (tmp != 0);
  } else {
  }
  slot_status = (*((ca->pub)->poll_slot_status))(ca->pub, slot, (int )ca->open);
  cam_present_now = slot_status & 1;
  cam_changed = (slot_status & 2) != 0;
  if (cam_changed == 0) {
    cam_present_old = (ca->slot_info + (unsigned long )slot)->slot_state != 0;
    cam_changed = cam_present_now != cam_present_old;
  } else {
  }
  if (cam_changed != 0) {
    if (cam_present_now == 0) {
      (ca->slot_info + (unsigned long )slot)->camchange_type = 0;
    } else {
      (ca->slot_info + (unsigned long )slot)->camchange_type = 1;
    }
    atomic_set(& (ca->slot_info + (unsigned long )slot)->camchange_count, 1);
  } else
  if ((ca->slot_info + (unsigned long )slot)->slot_state == 4 && (slot_status & 4) != 0) {
    (ca->slot_info + (unsigned long )slot)->slot_state = 5;
  } else {
  }
  return (cam_changed);
}
}
static int dvb_ca_en50221_wait_if_status(struct dvb_ca_private *ca , int slot , u8 waitfor ,
                                         int timeout_hz )
{
  unsigned long timeout ;
  unsigned long start ;
  int res ;
  int tmp ;
  {
  if (dvb_ca_en50221_debug != 0) {
    printk("%s\n", "dvb_ca_en50221_wait_if_status");
  } else {
  }
  start = jiffies;
  timeout = (unsigned long )timeout_hz + (unsigned long )jiffies;
  ldv_26087:
  tmp = (*((ca->pub)->read_cam_control))(ca->pub, slot, 1);
  res = tmp;
  if (res < 0) {
    return (-5);
  } else {
  }
  if (((int )waitfor & res) != 0) {
    if (dvb_ca_en50221_debug != 0) {
      printk("%s succeeded timeout:%lu\n", "dvb_ca_en50221_wait_if_status", (unsigned long )jiffies - start);
    } else {
    }
    return (0);
  } else {
  }
  if ((long )(timeout - (unsigned long )jiffies) < 0L) {
    goto ldv_26086;
  } else {
  }
  msleep(1U);
  goto ldv_26087;
  ldv_26086: ;
  if (dvb_ca_en50221_debug != 0) {
    printk("%s failed timeout:%lu\n", "dvb_ca_en50221_wait_if_status", (unsigned long )jiffies - start);
  } else {
  }
  return (-110);
}
}
static int dvb_ca_en50221_link_init(struct dvb_ca_private *ca , int slot )
{
  int ret ;
  int buf_size ;
  u8 buf[2U] ;
  {
  if (dvb_ca_en50221_debug != 0) {
    printk("%s\n", "dvb_ca_en50221_link_init");
  } else {
  }
  (ca->slot_info + (unsigned long )slot)->da_irq_supported = 0U;
  (ca->slot_info + (unsigned long )slot)->link_buf_size = 2;
  ret = (*((ca->pub)->write_cam_control))(ca->pub, slot, 1, 132);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = dvb_ca_en50221_wait_if_status(ca, slot, 128, 25);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = dvb_ca_en50221_read_data(ca, slot, (u8 *)(& buf), 2);
  if (ret != 2) {
    return (-5);
  } else {
  }
  ret = (*((ca->pub)->write_cam_control))(ca->pub, slot, 1, 128);
  if (ret != 0) {
    return (ret);
  } else {
  }
  buf_size = ((int )buf[0] << 8) | (int )buf[1];
  if (buf_size > 512) {
    buf_size = 512;
  } else {
  }
  (ca->slot_info + (unsigned long )slot)->link_buf_size = buf_size;
  buf[0] = (u8 )(buf_size >> 8);
  buf[1] = (u8 )buf_size;
  if (dvb_ca_en50221_debug != 0) {
    printk("Chosen link buffer size of %i\n", buf_size);
  } else {
  }
  ret = (*((ca->pub)->write_cam_control))(ca->pub, slot, 1, 130);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = dvb_ca_en50221_wait_if_status(ca, slot, 64, 25);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = dvb_ca_en50221_write_data(ca, slot, (u8 *)(& buf), 2);
  if (ret != 2) {
    return (-5);
  } else {
  }
  ret = (*((ca->pub)->write_cam_control))(ca->pub, slot, 1, 128);
  if (ret != 0) {
    return (ret);
  } else {
  }
  return (0);
}
}
static int dvb_ca_en50221_read_tuple(struct dvb_ca_private *ca , int slot , int *address ,
                                     int *tupleType , int *tupleLength , u8 *tuple )
{
  int i ;
  int _tupleType ;
  int _tupleLength ;
  int _address ;
  int tmp ;
  {
  _address = *address;
  _tupleType = (*((ca->pub)->read_attribute_mem))(ca->pub, slot, _address);
  if (_tupleType < 0) {
    return (_tupleType);
  } else {
  }
  if (_tupleType == 255) {
    if (dvb_ca_en50221_debug != 0) {
      printk("END OF CHAIN TUPLE type:0x%x\n", _tupleType);
    } else {
    }
    *address = *address + 2;
    *tupleType = _tupleType;
    *tupleLength = 0;
    return (0);
  } else {
  }
  _tupleLength = (*((ca->pub)->read_attribute_mem))(ca->pub, slot, _address + 2);
  if (_tupleLength < 0) {
    return (_tupleLength);
  } else {
  }
  _address = _address + 4;
  if (dvb_ca_en50221_debug != 0) {
    printk("TUPLE type:0x%x length:%i\n", _tupleType, _tupleLength);
  } else {
  }
  i = 0;
  goto ldv_26109;
  ldv_26108:
  tmp = (*((ca->pub)->read_attribute_mem))(ca->pub, slot, i * 2 + _address);
  *(tuple + (unsigned long )i) = (u8 )tmp;
  if (dvb_ca_en50221_debug != 0) {
    printk("  0x%02x: 0x%02x %c\n", i, (int )*(tuple + (unsigned long )i), (unsigned int )*(tuple + (unsigned long )i) > 31U && (unsigned int )*(tuple + (unsigned long )i) <= 126U ? (int )*(tuple + (unsigned long )i) : 46);
  } else {
  }
  i = i + 1;
  ldv_26109: ;
  if (i < _tupleLength) {
    goto ldv_26108;
  } else {
  }
  _address = _tupleLength * 2 + _address;
  *tupleType = _tupleType;
  *tupleLength = _tupleLength;
  *address = _address;
  return (0);
}
}
static int dvb_ca_en50221_parse_attributes(struct dvb_ca_private *ca , int slot )
{
  int address ;
  int tupleLength ;
  int tupleType ;
  u8 tuple[257U] ;
  char *dvb_str ;
  int rasz ;
  int status ;
  int got_cftableentry ;
  int end_chain ;
  int i ;
  u16 manfid ;
  u16 devid ;
  int tmp ;
  char *tmp___0 ;
  char *tmp___1 ;
  {
  address = 0;
  got_cftableentry = 0;
  end_chain = 0;
  manfid = 0U;
  devid = 0U;
  status = dvb_ca_en50221_read_tuple(ca, slot, & address, & tupleType, & tupleLength,
                                     (u8 *)(& tuple));
  if (status < 0) {
    return (status);
  } else {
  }
  if (tupleType != 29) {
    return (-22);
  } else {
  }
  status = dvb_ca_en50221_read_tuple(ca, slot, & address, & tupleType, & tupleLength,
                                     (u8 *)(& tuple));
  if (status < 0) {
    return (status);
  } else {
  }
  if (tupleType != 28) {
    return (-22);
  } else {
  }
  status = dvb_ca_en50221_read_tuple(ca, slot, & address, & tupleType, & tupleLength,
                                     (u8 *)(& tuple));
  if (status < 0) {
    return (status);
  } else {
  }
  if (tupleType != 21) {
    return (-22);
  } else {
  }
  status = dvb_ca_en50221_read_tuple(ca, slot, & address, & tupleType, & tupleLength,
                                     (u8 *)(& tuple));
  if (status < 0) {
    return (status);
  } else {
  }
  if (tupleType != 32) {
    return (-22);
  } else {
  }
  if (tupleLength != 4) {
    return (-22);
  } else {
  }
  manfid = (u16 )((int )((short )((int )tuple[1] << 8)) | (int )((short )tuple[0]));
  devid = (u16 )((int )((short )((int )tuple[3] << 8)) | (int )((short )tuple[2]));
  status = dvb_ca_en50221_read_tuple(ca, slot, & address, & tupleType, & tupleLength,
                                     (u8 *)(& tuple));
  if (status < 0) {
    return (status);
  } else {
  }
  if (tupleType != 26) {
    return (-22);
  } else {
  }
  if (tupleLength <= 2) {
    return (-22);
  } else {
  }
  rasz = (int )tuple[0] & 3;
  if (rasz + 17 > tupleLength) {
    return (-22);
  } else {
  }
  (ca->slot_info + (unsigned long )slot)->config_base = 0U;
  i = 0;
  goto ldv_26128;
  ldv_26127:
  (ca->slot_info + (unsigned long )slot)->config_base = (ca->slot_info + (unsigned long )slot)->config_base | (u32 )((int )tuple[i + 2] << i * 8);
  i = i + 1;
  ldv_26128: ;
  if (rasz + 1 > i) {
    goto ldv_26127;
  } else {
  }
  dvb_str = findstr((char *)(& tuple), tupleLength, (char *)"DVB_CI_V", 8);
  if ((unsigned long )dvb_str == (unsigned long )((char *)0)) {
    return (-22);
  } else {
  }
  if ((long )tupleLength < ((long )dvb_str - (long )(& tuple)) + 12L) {
    return (-22);
  } else {
  }
  tmp = strncmp((char const *)dvb_str + 8U, "1.00", 4UL);
  if (tmp != 0) {
    printk("dvb_ca adapter %d: Unsupported DVB CAM module version %c%c%c%c\n", ((ca->dvbdev)->adapter)->num,
           (int )*(dvb_str + 8UL), (int )*(dvb_str + 9UL), (int )*(dvb_str + 10UL),
           (int )*(dvb_str + 11UL));
    return (-22);
  } else {
  }
  goto ldv_26136;
  ldv_26135:
  status = dvb_ca_en50221_read_tuple(ca, slot, & address, & tupleType, & tupleLength,
                                     (u8 *)(& tuple));
  if (status < 0) {
    return (status);
  } else {
  }
  switch (tupleType) {
  case 27: ;
  if (tupleLength <= 29) {
    goto ldv_26131;
  } else {
  }
  if (got_cftableentry != 0) {
    goto ldv_26131;
  } else {
  }
  (ca->slot_info + (unsigned long )slot)->config_option = (unsigned int )tuple[0] & 63U;
  tmp___0 = findstr((char *)(& tuple), tupleLength, (char *)"DVB_HOST", 8);
  if ((unsigned long )tmp___0 == (unsigned long )((char *)0)) {
    goto ldv_26131;
  } else {
    tmp___1 = findstr((char *)(& tuple), tupleLength, (char *)"DVB_CI_MODULE", 13);
    if ((unsigned long )tmp___1 == (unsigned long )((char *)0)) {
      goto ldv_26131;
    } else {
    }
  }
  got_cftableentry = 1;
  goto ldv_26131;
  case 20: ;
  goto ldv_26131;
  case 255:
  end_chain = 1;
  goto ldv_26131;
  default: ;
  if (dvb_ca_en50221_debug != 0) {
    printk("dvb_ca: Skipping unknown tuple type:0x%x length:0x%x\n", tupleType, tupleLength);
  } else {
  }
  goto ldv_26131;
  }
  ldv_26131: ;
  ldv_26136: ;
  if (end_chain == 0 && address <= 4095) {
    goto ldv_26135;
  } else {
  }
  if (address > 4096 || got_cftableentry == 0) {
    return (-22);
  } else {
  }
  if (dvb_ca_en50221_debug != 0) {
    printk("Valid DVB CAM detected MANID:%x DEVID:%x CONFIGBASE:0x%x CONFIGOPTION:0x%x\n",
           (int )manfid, (int )devid, (ca->slot_info + (unsigned long )slot)->config_base,
           (int )(ca->slot_info + (unsigned long )slot)->config_option);
  } else {
  }
  return (0);
}
}
static int dvb_ca_en50221_set_configoption(struct dvb_ca_private *ca , int slot )
{
  int configoption ;
  {
  if (dvb_ca_en50221_debug != 0) {
    printk("%s\n", "dvb_ca_en50221_set_configoption");
  } else {
  }
  (*((ca->pub)->write_attribute_mem))(ca->pub, slot, (int )(ca->slot_info + (unsigned long )slot)->config_base,
                                      (int )(ca->slot_info + (unsigned long )slot)->config_option);
  configoption = (*((ca->pub)->read_attribute_mem))(ca->pub, slot, (int )(ca->slot_info + (unsigned long )slot)->config_base);
  if (dvb_ca_en50221_debug != 0) {
    printk("Set configoption 0x%x, read configoption 0x%x\n", (int )(ca->slot_info + (unsigned long )slot)->config_option,
           configoption & 63);
  } else {
  }
  return (0);
}
}
static int dvb_ca_en50221_read_data(struct dvb_ca_private *ca , int slot , u8 *ebuf ,
                                    int ecount )
{
  int bytes_read ;
  int status ;
  u8 buf[512U] ;
  int i ;
  int buf_free ;
  ssize_t tmp ;
  {
  if (dvb_ca_en50221_debug != 0) {
    printk("%s\n", "dvb_ca_en50221_read_data");
  } else {
  }
  if ((unsigned long )ebuf == (unsigned long )((u8 *)0U)) {
    if ((unsigned long )(ca->slot_info + (unsigned long )slot)->rx_buffer.data == (unsigned long )((u8 *)0U)) {
      status = -5;
      goto exit;
    } else {
    }
    tmp = dvb_ringbuffer_free(& (ca->slot_info + (unsigned long )slot)->rx_buffer);
    buf_free = (int )tmp;
    if ((ca->slot_info + (unsigned long )slot)->link_buf_size + 3 > buf_free) {
      status = -11;
      goto exit;
    } else {
    }
  } else {
  }
  status = (*((ca->pub)->read_cam_control))(ca->pub, slot, 1);
  if (status < 0) {
    goto exit;
  } else {
  }
  if ((status & 128) == 0) {
    status = 0;
    goto exit;
  } else {
  }
  status = (*((ca->pub)->read_cam_control))(ca->pub, slot, 3);
  if (status < 0) {
    goto exit;
  } else {
  }
  bytes_read = status << 8;
  status = (*((ca->pub)->read_cam_control))(ca->pub, slot, 2);
  if (status < 0) {
    goto exit;
  } else {
  }
  bytes_read = bytes_read | status;
  if ((unsigned long )ebuf == (unsigned long )((u8 *)0U)) {
    if ((ca->slot_info + (unsigned long )slot)->link_buf_size < bytes_read) {
      printk("dvb_ca adapter %d: CAM tried to send a buffer larger than the link buffer size (%i > %i)!\n",
             ((ca->dvbdev)->adapter)->num, bytes_read, (ca->slot_info + (unsigned long )slot)->link_buf_size);
      (ca->slot_info + (unsigned long )slot)->slot_state = 7;
      status = -5;
      goto exit;
    } else {
    }
    if (bytes_read <= 1) {
      printk("dvb_ca adapter %d: CAM sent a buffer that was less than 2 bytes!\n",
             ((ca->dvbdev)->adapter)->num);
      (ca->slot_info + (unsigned long )slot)->slot_state = 7;
      status = -5;
      goto exit;
    } else {
    }
  } else
  if (bytes_read > ecount) {
    printk("dvb_ca adapter %d: CAM tried to send a buffer larger than the ecount size!\n",
           ((ca->dvbdev)->adapter)->num);
    status = -5;
    goto exit;
  } else {
  }
  i = 0;
  goto ldv_26158;
  ldv_26157:
  status = (*((ca->pub)->read_cam_control))(ca->pub, slot, 0);
  if (status < 0) {
    goto exit;
  } else {
  }
  buf[i] = (u8 )status;
  i = i + 1;
  ldv_26158: ;
  if (i < bytes_read) {
    goto ldv_26157;
  } else {
  }
  status = (*((ca->pub)->read_cam_control))(ca->pub, slot, 1);
  if (status < 0) {
    goto exit;
  } else {
  }
  if (status & 1) {
    (ca->slot_info + (unsigned long )slot)->slot_state = 7;
    status = -5;
    goto exit;
  } else {
  }
  if ((unsigned long )ebuf == (unsigned long )((u8 *)0U)) {
    if ((unsigned long )(ca->slot_info + (unsigned long )slot)->rx_buffer.data == (unsigned long )((u8 *)0U)) {
      status = -5;
      goto exit;
    } else {
    }
    dvb_ringbuffer_pkt_write(& (ca->slot_info + (unsigned long )slot)->rx_buffer,
                             (u8 *)(& buf), (size_t )bytes_read);
  } else {
    memcpy((void *)ebuf, (void const *)(& buf), (size_t )bytes_read);
  }
  if (dvb_ca_en50221_debug != 0) {
    printk("Received CA packet for slot %i connection id 0x%x last_frag:%i size:0x%x\n",
           slot, (int )buf[0], (int )((signed char )buf[1]) >= 0, bytes_read);
  } else {
  }
  if ((int )((signed char )buf[1]) >= 0) {
    __wake_up(& ca->wait_queue, 1U, 1, (void *)0);
  } else {
  }
  status = bytes_read;
  exit: ;
  return (status);
}
}
static int dvb_ca_en50221_write_data(struct dvb_ca_private *ca , int slot , u8 *buf ,
                                     int bytes_write )
{
  int status ;
  int i ;
  {
  if (dvb_ca_en50221_debug != 0) {
    printk("%s\n", "dvb_ca_en50221_write_data");
  } else {
  }
  if ((ca->slot_info + (unsigned long )slot)->link_buf_size < bytes_write) {
    return (-22);
  } else {
  }
  status = (*((ca->pub)->read_cam_control))(ca->pub, slot, 1);
  if (status < 0) {
    goto exitnowrite;
  } else {
  }
  if ((status & 129) != 0) {
    if ((status & 128) != 0) {
      dvb_ca_en50221_thread_wakeup(ca);
    } else {
    }
    status = -11;
    goto exitnowrite;
  } else {
  }
  status = (*((ca->pub)->write_cam_control))(ca->pub, slot, 1, 129);
  if (status != 0) {
    goto exit;
  } else {
  }
  status = (*((ca->pub)->read_cam_control))(ca->pub, slot, 1);
  if (status < 0) {
    goto exit;
  } else {
  }
  if ((status & 64) == 0) {
    status = -11;
    goto exit;
  } else {
  }
  status = (*((ca->pub)->write_cam_control))(ca->pub, slot, 3, (int )((u8 )(bytes_write >> 8)));
  if (status != 0) {
    goto exit;
  } else {
  }
  status = (*((ca->pub)->write_cam_control))(ca->pub, slot, 2, (int )((u8 )bytes_write));
  if (status != 0) {
    goto exit;
  } else {
  }
  i = 0;
  goto ldv_26172;
  ldv_26171:
  status = (*((ca->pub)->write_cam_control))(ca->pub, slot, 0, (int )*(buf + (unsigned long )i));
  if (status != 0) {
    goto exit;
  } else {
  }
  i = i + 1;
  ldv_26172: ;
  if (i < bytes_write) {
    goto ldv_26171;
  } else {
  }
  status = (*((ca->pub)->read_cam_control))(ca->pub, slot, 1);
  if (status < 0) {
    goto exit;
  } else {
  }
  if ((status & 2) != 0) {
    (ca->slot_info + (unsigned long )slot)->slot_state = 7;
    status = -5;
    goto exit;
  } else {
  }
  status = bytes_write;
  if (dvb_ca_en50221_debug != 0) {
    printk("Wrote CA packet for slot %i, connection id 0x%x last_frag:%i size:0x%x\n",
           slot, (int )*buf, (int )((signed char )*(buf + 1UL)) >= 0, bytes_write);
  } else {
  }
  exit:
  (*((ca->pub)->write_cam_control))(ca->pub, slot, 1, 128);
  exitnowrite: ;
  return (status);
}
}
static char const __kstrtab_dvb_ca_en50221_camchange_irq[29U] =
  { 'd', 'v', 'b', '_',
        'c', 'a', '_', 'e',
        'n', '5', '0', '2',
        '2', '1', '_', 'c',
        'a', 'm', 'c', 'h',
        'a', 'n', 'g', 'e',
        '_', 'i', 'r', 'q',
        '\000'};
struct kernel_symbol const __ksymtab_dvb_ca_en50221_camchange_irq ;
struct kernel_symbol const __ksymtab_dvb_ca_en50221_camchange_irq = {(unsigned long )(& dvb_ca_en50221_camchange_irq), (char const *)(& __kstrtab_dvb_ca_en50221_camchange_irq)};
static int dvb_ca_en50221_slot_shutdown(struct dvb_ca_private *ca , int slot )
{
  {
  if (dvb_ca_en50221_debug != 0) {
    printk("%s\n", "dvb_ca_en50221_slot_shutdown");
  } else {
  }
  (*((ca->pub)->slot_shutdown))(ca->pub, slot);
  (ca->slot_info + (unsigned long )slot)->slot_state = 0;
  __wake_up(& ca->wait_queue, 1U, 1, (void *)0);
  if (dvb_ca_en50221_debug != 0) {
    printk("Slot %i shutdown\n", slot);
  } else {
  }
  return (0);
}
}
static char const __kstrtab_dvb_ca_en50221_camready_irq[28U] =
  { 'd', 'v', 'b', '_',
        'c', 'a', '_', 'e',
        'n', '5', '0', '2',
        '2', '1', '_', 'c',
        'a', 'm', 'r', 'e',
        'a', 'd', 'y', '_',
        'i', 'r', 'q', '\000'};
struct kernel_symbol const __ksymtab_dvb_ca_en50221_camready_irq ;
struct kernel_symbol const __ksymtab_dvb_ca_en50221_camready_irq = {(unsigned long )(& dvb_ca_en50221_camready_irq), (char const *)(& __kstrtab_dvb_ca_en50221_camready_irq)};
void dvb_ca_en50221_camchange_irq(struct dvb_ca_en50221 *pubca , int slot , int change_type )
{
  struct dvb_ca_private *ca ;
  {
  ca = (struct dvb_ca_private *)pubca->private;
  if (dvb_ca_en50221_debug != 0) {
    printk("CAMCHANGE IRQ slot:%i change_type:%i\n", slot, change_type);
  } else {
  }
  switch (change_type) {
  case 0: ;
  case 1: ;
  goto ldv_26199;
  default: ;
  return;
  }
  ldv_26199:
  (ca->slot_info + (unsigned long )slot)->camchange_type = change_type;
  atomic_inc(& (ca->slot_info + (unsigned long )slot)->camchange_count);
  dvb_ca_en50221_thread_wakeup(ca);
  return;
}
}
static char const __kstrtab_dvb_ca_en50221_frda_irq[24U] =
  { 'd', 'v', 'b', '_',
        'c', 'a', '_', 'e',
        'n', '5', '0', '2',
        '2', '1', '_', 'f',
        'r', 'd', 'a', '_',
        'i', 'r', 'q', '\000'};
struct kernel_symbol const __ksymtab_dvb_ca_en50221_frda_irq ;
struct kernel_symbol const __ksymtab_dvb_ca_en50221_frda_irq = {(unsigned long )(& dvb_ca_en50221_frda_irq), (char const *)(& __kstrtab_dvb_ca_en50221_frda_irq)};
void dvb_ca_en50221_camready_irq(struct dvb_ca_en50221 *pubca , int slot )
{
  struct dvb_ca_private *ca ;
  {
  ca = (struct dvb_ca_private *)pubca->private;
  if (dvb_ca_en50221_debug != 0) {
    printk("CAMREADY IRQ slot:%i\n", slot);
  } else {
  }
  if ((ca->slot_info + (unsigned long )slot)->slot_state == 4) {
    (ca->slot_info + (unsigned long )slot)->slot_state = 5;
    dvb_ca_en50221_thread_wakeup(ca);
  } else {
  }
  return;
}
}
void dvb_ca_en50221_frda_irq(struct dvb_ca_en50221 *pubca , int slot )
{
  struct dvb_ca_private *ca ;
  int flags ;
  {
  ca = (struct dvb_ca_private *)pubca->private;
  if (dvb_ca_en50221_debug != 0) {
    printk("FR/DA IRQ slot:%i\n", slot);
  } else {
  }
  switch ((ca->slot_info + (unsigned long )slot)->slot_state) {
  case 7:
  flags = (*((ca->pub)->read_cam_control))(pubca, slot, 1);
  if ((flags & 128) != 0) {
    if (dvb_ca_en50221_debug != 0) {
      printk("CAM supports DA IRQ\n");
    } else {
    }
    (ca->slot_info + (unsigned long )slot)->da_irq_supported = 1U;
  } else {
  }
  goto ldv_26219;
  case 2: ;
  if ((unsigned int )*((unsigned char *)ca + 128UL) != 0U) {
    dvb_ca_en50221_thread_wakeup(ca);
  } else {
  }
  goto ldv_26219;
  }
  ldv_26219: ;
  return;
}
}
static void dvb_ca_en50221_thread_wakeup(struct dvb_ca_private *ca )
{
  {
  if (dvb_ca_en50221_debug != 0) {
    printk("%s\n", "dvb_ca_en50221_thread_wakeup");
  } else {
  }
  ca->wakeup = 1U;
  __asm__ volatile ("mfence": : : "memory");
  wake_up_process(ca->thread);
  return;
}
}
static void dvb_ca_en50221_thread_update_delay(struct dvb_ca_private *ca )
{
  int delay ;
  int curdelay ;
  int slot ;
  {
  curdelay = 100000000;
  slot = 0;
  goto ldv_26242;
  ldv_26241: ;
  switch ((ca->slot_info + (unsigned long )slot)->slot_state) {
  default: ;
  case 0:
  delay = 15000;
  if ((ca->flags & 1U) == 0U) {
    delay = 1250;
  } else {
  }
  goto ldv_26233;
  case 3:
  delay = 15000;
  if ((ca->flags & 1U) == 0U) {
    delay = 25;
  } else {
  }
  goto ldv_26233;
  case 1: ;
  case 4: ;
  case 5: ;
  case 6: ;
  case 7:
  delay = 25;
  goto ldv_26233;
  case 2:
  delay = 15000;
  if ((ca->flags & 1U) == 0U) {
    delay = 25;
  } else {
  }
  if ((unsigned int )*((unsigned char *)ca + 128UL) != 0U) {
    if ((unsigned int )*((unsigned char *)(ca->slot_info + (unsigned long )slot) + 181UL) == 0U || (ca->flags & 4U) == 0U) {
      delay = 25;
    } else {
    }
  } else {
  }
  goto ldv_26233;
  }
  ldv_26233: ;
  if (delay < curdelay) {
    curdelay = delay;
  } else {
  }
  slot = slot + 1;
  ldv_26242: ;
  if ((unsigned int )slot < ca->slot_count) {
    goto ldv_26241;
  } else {
  }
  ca->delay = (unsigned long )curdelay;
  return;
}
}
static int dvb_ca_en50221_thread(void *data )
{
  struct dvb_ca_private *ca ;
  int slot ;
  int flags ;
  int status ;
  int pktcount ;
  void *rxbuf ;
  struct task_struct *tmp ;
  long volatile __ret ;
  struct task_struct *tmp___0 ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  struct task_struct *tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  bool tmp___11 ;
  int tmp___12 ;
  {
  ca = (struct dvb_ca_private *)data;
  if (dvb_ca_en50221_debug != 0) {
    printk("%s\n", "dvb_ca_en50221_thread");
  } else {
  }
  dvb_ca_en50221_thread_update_delay(ca);
  goto ldv_26293;
  ldv_26292: ;
  if ((unsigned int )*((unsigned char *)ca + 128UL) == 0U) {
    tmp = get_current();
    tmp->task_state_change = 0UL;
    __ret = 1L;
    switch (8UL) {
    case 1UL:
    tmp___0 = get_current();
    __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (tmp___0->state): : "memory",
                         "cc");
    goto ldv_26256;
    case 2UL:
    tmp___1 = get_current();
    __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (tmp___1->state): : "memory",
                         "cc");
    goto ldv_26256;
    case 4UL:
    tmp___2 = get_current();
    __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (tmp___2->state): : "memory",
                         "cc");
    goto ldv_26256;
    case 8UL:
    tmp___3 = get_current();
    __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (tmp___3->state): : "memory",
                         "cc");
    goto ldv_26256;
    default:
    __xchg_wrong_size();
    }
    ldv_26256:
    schedule_timeout((long )ca->delay);
    tmp___4 = kthread_should_stop();
    if ((int )tmp___4) {
      return (0);
    } else {
    }
  } else {
  }
  ca->wakeup = 0U;
  slot = 0;
  goto ldv_26290;
  ldv_26289:
  mutex_lock_nested(& (ca->slot_info + (unsigned long )slot)->slot_lock, 0U);
  goto ldv_26263;
  ldv_26262: ;
  if ((ca->slot_info + (unsigned long )slot)->slot_state != 0) {
    dvb_ca_en50221_slot_shutdown(ca, slot);
  } else {
  }
  if ((ca->slot_info + (unsigned long )slot)->camchange_type == 1) {
    (ca->slot_info + (unsigned long )slot)->slot_state = 1;
  } else {
  }
  dvb_ca_en50221_thread_update_delay(ca);
  atomic_dec(& (ca->slot_info + (unsigned long )slot)->camchange_count);
  ldv_26263:
  tmp___5 = dvb_ca_en50221_check_camstatus(ca, slot);
  if (tmp___5 != 0) {
    goto ldv_26262;
  } else {
  }
  switch ((ca->slot_info + (unsigned long )slot)->slot_state) {
  case 0: ;
  case 3: ;
  goto ldv_26267;
  case 1:
  (ca->slot_info + (unsigned long )slot)->slot_state = 4;
  (*((ca->pub)->slot_reset))(ca->pub, slot);
  (ca->slot_info + (unsigned long )slot)->timeout = (unsigned long )jiffies + 2500UL;
  goto ldv_26267;
  case 4: ;
  if ((long )((ca->slot_info + (unsigned long )slot)->timeout - (unsigned long )jiffies) < 0L) {
    printk("dvb_ca adaptor %d: PC card did not respond :(\n", ((ca->dvbdev)->adapter)->num);
    (ca->slot_info + (unsigned long )slot)->slot_state = 3;
    dvb_ca_en50221_thread_update_delay(ca);
    goto ldv_26267;
  } else {
  }
  goto ldv_26267;
  case 5:
  tmp___6 = dvb_ca_en50221_parse_attributes(ca, slot);
  if (tmp___6 != 0) {
    if ((ca->flags & 1U) == 0U && (unsigned long )(ca->pub)->poll_slot_status != (unsigned long )((int (*)(struct dvb_ca_en50221 * ,
                                                                                                           int ,
                                                                                                           int ))0)) {
      status = (*((ca->pub)->poll_slot_status))(ca->pub, slot, 0);
      if ((status & 1) == 0) {
        (ca->slot_info + (unsigned long )slot)->slot_state = 0;
        dvb_ca_en50221_thread_update_delay(ca);
        goto ldv_26267;
      } else {
      }
    } else {
    }
    printk("dvb_ca adapter %d: Invalid PC card inserted :(\n", ((ca->dvbdev)->adapter)->num);
    (ca->slot_info + (unsigned long )slot)->slot_state = 3;
    dvb_ca_en50221_thread_update_delay(ca);
    goto ldv_26267;
  } else {
  }
  tmp___7 = dvb_ca_en50221_set_configoption(ca, slot);
  if (tmp___7 != 0) {
    printk("dvb_ca adapter %d: Unable to initialise CAM :(\n", ((ca->dvbdev)->adapter)->num);
    (ca->slot_info + (unsigned long )slot)->slot_state = 3;
    dvb_ca_en50221_thread_update_delay(ca);
    goto ldv_26267;
  } else {
  }
  tmp___8 = (*((ca->pub)->write_cam_control))(ca->pub, slot, 1, 8);
  if (tmp___8 != 0) {
    printk("dvb_ca adapter %d: Unable to reset CAM IF\n", ((ca->dvbdev)->adapter)->num);
    (ca->slot_info + (unsigned long )slot)->slot_state = 3;
    dvb_ca_en50221_thread_update_delay(ca);
    goto ldv_26267;
  } else {
  }
  if (dvb_ca_en50221_debug != 0) {
    printk("DVB CAM validated successfully\n");
  } else {
  }
  (ca->slot_info + (unsigned long )slot)->timeout = (unsigned long )jiffies + 2500UL;
  (ca->slot_info + (unsigned long )slot)->slot_state = 6;
  ca->wakeup = 1U;
  goto ldv_26267;
  case 6: ;
  if ((long )((ca->slot_info + (unsigned long )slot)->timeout - (unsigned long )jiffies) < 0L) {
    printk("dvb_ca adapter %d: DVB CAM did not respond :(\n", ((ca->dvbdev)->adapter)->num);
    (ca->slot_info + (unsigned long )slot)->slot_state = 3;
    dvb_ca_en50221_thread_update_delay(ca);
    goto ldv_26267;
  } else {
  }
  flags = (*((ca->pub)->read_cam_control))(ca->pub, slot, 1);
  if ((flags & 64) != 0) {
    (ca->slot_info + (unsigned long )slot)->slot_state = 7;
    ca->wakeup = 1U;
  } else {
  }
  goto ldv_26267;
  case 7:
  tmp___9 = dvb_ca_en50221_link_init(ca, slot);
  if (tmp___9 != 0) {
    if ((ca->flags & 1U) == 0U && (unsigned long )(ca->pub)->poll_slot_status != (unsigned long )((int (*)(struct dvb_ca_en50221 * ,
                                                                                                           int ,
                                                                                                           int ))0)) {
      status = (*((ca->pub)->poll_slot_status))(ca->pub, slot, 0);
      if ((status & 1) == 0) {
        (ca->slot_info + (unsigned long )slot)->slot_state = 0;
        dvb_ca_en50221_thread_update_delay(ca);
        goto ldv_26267;
      } else {
      }
    } else {
    }
    printk("dvb_ca adapter %d: DVB CAM link initialisation failed :(\n", ((ca->dvbdev)->adapter)->num);
    (ca->slot_info + (unsigned long )slot)->slot_state = 3;
    dvb_ca_en50221_thread_update_delay(ca);
    goto ldv_26267;
  } else {
  }
  if ((unsigned long )(ca->slot_info + (unsigned long )slot)->rx_buffer.data == (unsigned long )((u8 *)0U)) {
    rxbuf = vmalloc(65535UL);
    if ((unsigned long )rxbuf == (unsigned long )((void *)0)) {
      printk("dvb_ca adapter %d: Unable to allocate CAM rx buffer :(\n", ((ca->dvbdev)->adapter)->num);
      (ca->slot_info + (unsigned long )slot)->slot_state = 3;
      dvb_ca_en50221_thread_update_delay(ca);
      goto ldv_26267;
    } else {
    }
    dvb_ringbuffer_init(& (ca->slot_info + (unsigned long )slot)->rx_buffer, rxbuf,
                        65535UL);
  } else {
  }
  (*((ca->pub)->slot_ts_enable))(ca->pub, slot);
  (ca->slot_info + (unsigned long )slot)->slot_state = 2;
  dvb_ca_en50221_thread_update_delay(ca);
  printk("dvb_ca adapter %d: DVB CAM detected and initialised successfully\n", ((ca->dvbdev)->adapter)->num);
  goto ldv_26267;
  case 2: ;
  if ((unsigned int )*((unsigned char *)ca + 128UL) == 0U) {
    goto ldv_26267;
  } else {
  }
  pktcount = 0;
  goto ldv_26288;
  ldv_26287: ;
  if ((unsigned int )*((unsigned char *)ca + 128UL) == 0U) {
    goto ldv_26286;
  } else {
  }
  tmp___10 = dvb_ca_en50221_check_camstatus(ca, slot);
  if (tmp___10 != 0) {
    ca->wakeup = 1U;
    goto ldv_26286;
  } else {
  }
  pktcount = pktcount + 1;
  if (pktcount > 9) {
    ca->wakeup = 1U;
    goto ldv_26286;
  } else {
  }
  ldv_26288:
  status = dvb_ca_en50221_read_data(ca, slot, (u8 *)0U, 0);
  if (status > 0) {
    goto ldv_26287;
  } else {
  }
  ldv_26286: ;
  goto ldv_26267;
  }
  ldv_26267:
  mutex_unlock(& (ca->slot_info + (unsigned long )slot)->slot_lock);
  slot = slot + 1;
  ldv_26290: ;
  if ((unsigned int )slot < ca->slot_count) {
    goto ldv_26289;
  } else {
  }
  ldv_26293:
  tmp___11 = kthread_should_stop();
  if (tmp___11) {
    tmp___12 = 0;
  } else {
    tmp___12 = 1;
  }
  if (tmp___12) {
    goto ldv_26292;
  } else {
  }
  return (0);
}
}
static int dvb_ca_en50221_io_do_ioctl(struct file *file , unsigned int cmd , void *parg )
{
  struct dvb_device *dvbdev ;
  struct dvb_ca_private *ca ;
  int err ;
  int slot ;
  int tmp ;
  struct ca_caps *caps ;
  struct ca_slot_info *info ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  ca = (struct dvb_ca_private *)dvbdev->priv;
  err = 0;
  if (dvb_ca_en50221_debug != 0) {
    printk("%s\n", "dvb_ca_en50221_io_do_ioctl");
  } else {
  }
  tmp = mutex_lock_interruptible_nested(& ca->ioctl_mutex, 0U);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  switch (cmd) {
  case 28544U:
  slot = 0;
  goto ldv_26307;
  ldv_26306:
  mutex_lock_nested(& (ca->slot_info + (unsigned long )slot)->slot_lock, 0U);
  if ((ca->slot_info + (unsigned long )slot)->slot_state != 0) {
    dvb_ca_en50221_slot_shutdown(ca, slot);
    if ((int )ca->flags & 1) {
      dvb_ca_en50221_camchange_irq(ca->pub, slot, 1);
    } else {
    }
  } else {
  }
  mutex_unlock(& (ca->slot_info + (unsigned long )slot)->slot_lock);
  slot = slot + 1;
  ldv_26307: ;
  if ((unsigned int )slot < ca->slot_count) {
    goto ldv_26306;
  } else {
  }
  ca->next_read_slot = 0;
  dvb_ca_en50221_thread_wakeup(ca);
  goto ldv_26309;
  case 2148560769U:
  caps = (struct ca_caps *)parg;
  caps->slot_num = ca->slot_count;
  caps->slot_type = 2U;
  caps->descr_num = 0U;
  caps->descr_type = 0U;
  goto ldv_26309;
  case 2148298626U:
  info = (struct ca_slot_info *)parg;
  if ((unsigned int )info->num > ca->slot_count || info->num < 0) {
    err = -22;
    goto out_unlock;
  } else {
  }
  info->type = 2;
  info->flags = 0U;
  if ((ca->slot_info + (unsigned long )info->num)->slot_state != 0 && (ca->slot_info + (unsigned long )info->num)->slot_state != 3) {
    info->flags = 1U;
  } else {
  }
  if ((ca->slot_info + (unsigned long )info->num)->slot_state == 2) {
    info->flags = info->flags | 2U;
  } else {
  }
  goto ldv_26309;
  default:
  err = -22;
  goto ldv_26309;
  }
  ldv_26309: ;
  out_unlock:
  mutex_unlock(& ca->ioctl_mutex);
  return (err);
}
}
static long dvb_ca_en50221_io_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  int tmp ;
  {
  tmp = dvb_usercopy(file, cmd, arg, & dvb_ca_en50221_io_do_ioctl);
  return ((long )tmp);
}
}
static ssize_t dvb_ca_en50221_io_write(struct file *file , char const *buf , size_t count ,
                                       loff_t *ppos )
{
  struct dvb_device *dvbdev ;
  struct dvb_ca_private *ca ;
  u8 slot ;
  u8 connection_id ;
  int status ;
  u8 fragbuf[512U] ;
  int fragpos ;
  int fraglen ;
  unsigned long timeout ;
  int written ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  ca = (struct dvb_ca_private *)dvbdev->priv;
  fragpos = 0;
  if (dvb_ca_en50221_debug != 0) {
    printk("%s\n", "dvb_ca_en50221_io_write");
  } else {
  }
  if (count <= 1UL) {
    return (-22L);
  } else {
  }
  tmp = copy_from_user((void *)(& slot), (void const *)buf, 1UL);
  if (tmp != 0UL) {
    return (-14L);
  } else {
  }
  tmp___0 = copy_from_user((void *)(& connection_id), (void const *)buf + 1U, 1UL);
  if (tmp___0 != 0UL) {
    return (-14L);
  } else {
  }
  buf = buf + 2UL;
  count = count - 2UL;
  if ((ca->slot_info + (unsigned long )slot)->slot_state != 2) {
    return (-22L);
  } else {
  }
  goto ldv_26350;
  ldv_26349:
  fraglen = (ca->slot_info + (unsigned long )slot)->link_buf_size + -2;
  if (fraglen < 0) {
    goto ldv_26338;
  } else {
  }
  if (fraglen > 510) {
    fraglen = 510;
  } else {
  }
  if (count - (size_t )fragpos < (size_t )fraglen) {
    fraglen = (int )((unsigned int )count - (unsigned int )fragpos);
  } else {
  }
  fragbuf[0] = connection_id;
  fragbuf[1] = (size_t )(fragpos + fraglen) < count ? 128U : 0U;
  tmp___1 = copy_from_user((void *)(& fragbuf) + 2U, (void const *)buf + (unsigned long )fragpos,
                           (unsigned long )fraglen);
  status = (int )tmp___1;
  if (status != 0) {
    status = -14;
    goto exit;
  } else {
  }
  timeout = (unsigned long )jiffies + 125UL;
  written = 0;
  goto ldv_26348;
  ldv_26347: ;
  if ((ca->slot_info + (unsigned long )slot)->slot_state != 2) {
    status = -5;
    goto exit;
  } else {
  }
  mutex_lock_nested(& (ca->slot_info + (unsigned long )slot)->slot_lock, 0U);
  status = dvb_ca_en50221_write_data(ca, (int )slot, (u8 *)(& fragbuf), fraglen + 2);
  mutex_unlock(& (ca->slot_info + (unsigned long )slot)->slot_lock);
  if (fraglen + 2 == status) {
    written = 1;
    goto ldv_26346;
  } else {
  }
  if (status != -11) {
    goto exit;
  } else {
  }
  msleep(1U);
  ldv_26348: ;
  if ((long )(timeout - (unsigned long )jiffies) >= 0L) {
    goto ldv_26347;
  } else {
  }
  ldv_26346: ;
  if (written == 0) {
    status = -5;
    goto exit;
  } else {
  }
  fragpos = fragpos + fraglen;
  ldv_26350: ;
  if ((size_t )fragpos < count) {
    goto ldv_26349;
  } else {
  }
  ldv_26338:
  status = (int )((unsigned int )count + 2U);
  exit: ;
  return ((ssize_t )status);
}
}
static int dvb_ca_en50221_io_read_condition(struct dvb_ca_private *ca , int *result ,
                                            int *_slot )
{
  int slot ;
  int slot_count ;
  int idx ;
  size_t fraglen ;
  int connection_id ;
  int found ;
  u8 hdr[2U] ;
  ssize_t tmp ;
  ssize_t tmp___0 ;
  {
  slot_count = 0;
  connection_id = -1;
  found = 0;
  slot = ca->next_read_slot;
  goto ldv_26368;
  ldv_26367: ;
  if ((ca->slot_info + (unsigned long )slot)->slot_state != 2) {
    goto nextslot;
  } else {
  }
  if ((unsigned long )(ca->slot_info + (unsigned long )slot)->rx_buffer.data == (unsigned long )((u8 *)0U)) {
    return (0);
  } else {
  }
  tmp = dvb_ringbuffer_pkt_next(& (ca->slot_info + (unsigned long )slot)->rx_buffer,
                                0xffffffffffffffffUL, & fraglen);
  idx = (int )tmp;
  goto ldv_26366;
  ldv_26365:
  dvb_ringbuffer_pkt_read(& (ca->slot_info + (unsigned long )slot)->rx_buffer, (size_t )idx,
                          0, (u8 *)(& hdr), 2UL);
  if (connection_id == -1) {
    connection_id = (int )hdr[0];
  } else {
  }
  if ((int )hdr[0] == connection_id && (int )((signed char )hdr[1]) >= 0) {
    *_slot = slot;
    found = 1;
    goto ldv_26364;
  } else {
  }
  tmp___0 = dvb_ringbuffer_pkt_next(& (ca->slot_info + (unsigned long )slot)->rx_buffer,
                                    (size_t )idx, & fraglen);
  idx = (int )tmp___0;
  ldv_26366: ;
  if (idx != -1) {
    goto ldv_26365;
  } else {
  }
  ldv_26364: ;
  nextslot:
  slot = (int )((unsigned int )(slot + 1) % ca->slot_count);
  slot_count = slot_count + 1;
  ldv_26368: ;
  if ((unsigned int )slot_count < ca->slot_count && found == 0) {
    goto ldv_26367;
  } else {
  }
  ca->next_read_slot = slot;
  return (found);
}
}
static ssize_t dvb_ca_en50221_io_read(struct file *file , char *buf , size_t count ,
                                      loff_t *ppos )
{
  struct dvb_device *dvbdev ;
  struct dvb_ca_private *ca ;
  int status ;
  int result ;
  u8 hdr[2U] ;
  int slot ;
  int connection_id ;
  size_t idx ;
  size_t idx2 ;
  int last_fragment ;
  size_t fraglen ;
  int pktlen ;
  int dispose ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  ssize_t tmp___2 ;
  ssize_t tmp___3 ;
  ssize_t tmp___4 ;
  unsigned long tmp___5 ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  ca = (struct dvb_ca_private *)dvbdev->priv;
  result = 0;
  connection_id = -1;
  last_fragment = 0;
  dispose = 0;
  if (dvb_ca_en50221_debug != 0) {
    printk("%s\n", "dvb_ca_en50221_io_read");
  } else {
  }
  if (count <= 1UL) {
    return (-22L);
  } else {
  }
  status = dvb_ca_en50221_io_read_condition(ca, & result, & slot);
  if (status == 0) {
    if ((file->f_flags & 2048U) != 0U) {
      return (-11L);
    } else {
    }
    __ret = 0;
    __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_ca_en50221.c",
                  1458, 0);
    tmp___1 = dvb_ca_en50221_io_read_condition(ca, & result, & slot);
    if (tmp___1 == 0) {
      __ret___0 = 0L;
      INIT_LIST_HEAD(& __wait.task_list);
      __wait.flags = 0U;
      ldv_26396:
      tmp = prepare_to_wait_event(& ca->wait_queue, & __wait, 1);
      __int = tmp;
      tmp___0 = dvb_ca_en50221_io_read_condition(ca, & result, & slot);
      if (tmp___0 != 0) {
        goto ldv_26395;
      } else {
      }
      if (__int != 0L) {
        __ret___0 = __int;
        goto ldv_26395;
      } else {
      }
      schedule();
      goto ldv_26396;
      ldv_26395:
      finish_wait(& ca->wait_queue, & __wait);
      __ret = (int )__ret___0;
    } else {
    }
    status = __ret;
  } else {
  }
  if (status < 0 || result < 0) {
    if (result != 0) {
      return ((ssize_t )result);
    } else {
    }
    return ((ssize_t )status);
  } else {
  }
  tmp___2 = dvb_ringbuffer_pkt_next(& (ca->slot_info + (unsigned long )slot)->rx_buffer,
                                    0xffffffffffffffffUL, & fraglen);
  idx = (size_t )tmp___2;
  pktlen = 2;
  ldv_26400: ;
  if (idx == 0xffffffffffffffffUL) {
    printk("dvb_ca adapter %d: BUG: read packet ended before last_fragment encountered\n",
           ((ca->dvbdev)->adapter)->num);
    status = -5;
    goto exit;
  } else {
  }
  dvb_ringbuffer_pkt_read(& (ca->slot_info + (unsigned long )slot)->rx_buffer, idx,
                          0, (u8 *)(& hdr), 2UL);
  if (connection_id == -1) {
    connection_id = (int )hdr[0];
  } else {
  }
  if ((int )hdr[0] == connection_id) {
    if ((size_t )pktlen < count) {
      if (((size_t )pktlen + fraglen) - 2UL > count) {
        fraglen = count - (size_t )pktlen;
      } else {
        fraglen = fraglen - 2UL;
      }
      tmp___3 = dvb_ringbuffer_pkt_read_user(& (ca->slot_info + (unsigned long )slot)->rx_buffer,
                                             idx, 2, (u8 *)buf + (unsigned long )pktlen,
                                             fraglen);
      status = (int )tmp___3;
      if (status < 0) {
        goto exit;
      } else {
      }
      pktlen = (int )((unsigned int )fraglen + (unsigned int )pktlen);
    } else {
    }
    if ((int )((signed char )hdr[1]) >= 0) {
      last_fragment = 1;
    } else {
    }
    dispose = 1;
  } else {
  }
  tmp___4 = dvb_ringbuffer_pkt_next(& (ca->slot_info + (unsigned long )slot)->rx_buffer,
                                    idx, & fraglen);
  idx2 = (size_t )tmp___4;
  if (dispose != 0) {
    dvb_ringbuffer_pkt_dispose(& (ca->slot_info + (unsigned long )slot)->rx_buffer,
                               idx);
  } else {
  }
  idx = idx2;
  dispose = 0;
  if (last_fragment == 0) {
    goto ldv_26400;
  } else {
  }
  hdr[0] = (u8 )slot;
  hdr[1] = (u8 )connection_id;
  tmp___5 = copy_to_user((void *)buf, (void const *)(& hdr), 2UL);
  status = (int )tmp___5;
  if (status != 0) {
    status = -14;
    goto exit;
  } else {
  }
  status = pktlen;
  exit: ;
  return ((ssize_t )status);
}
}
static int dvb_ca_en50221_io_open(struct inode *inode , struct file *file )
{
  struct dvb_device *dvbdev ;
  struct dvb_ca_private *ca ;
  int err ;
  int i ;
  bool tmp ;
  int tmp___0 ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  ca = (struct dvb_ca_private *)dvbdev->priv;
  if (dvb_ca_en50221_debug != 0) {
    printk("%s\n", "dvb_ca_en50221_io_open");
  } else {
  }
  tmp = ldv_try_module_get_80((ca->pub)->owner);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-5);
  } else {
  }
  err = dvb_generic_open(inode, file);
  if (err < 0) {
    ldv_module_put_81((ca->pub)->owner);
    return (err);
  } else {
  }
  i = 0;
  goto ldv_26412;
  ldv_26411: ;
  if ((ca->slot_info + (unsigned long )i)->slot_state == 2) {
    if ((unsigned long )(ca->slot_info + (unsigned long )i)->rx_buffer.data != (unsigned long )((u8 *)0U)) {
      dvb_ringbuffer_flush(& (ca->slot_info + (unsigned long )i)->rx_buffer);
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_26412: ;
  if ((unsigned int )i < ca->slot_count) {
    goto ldv_26411;
  } else {
  }
  ca->open = 1U;
  dvb_ca_en50221_thread_update_delay(ca);
  dvb_ca_en50221_thread_wakeup(ca);
  return (0);
}
}
static int dvb_ca_en50221_io_release(struct inode *inode , struct file *file )
{
  struct dvb_device *dvbdev ;
  struct dvb_ca_private *ca ;
  int err ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  ca = (struct dvb_ca_private *)dvbdev->priv;
  if (dvb_ca_en50221_debug != 0) {
    printk("%s\n", "dvb_ca_en50221_io_release");
  } else {
  }
  ca->open = 0U;
  dvb_ca_en50221_thread_update_delay(ca);
  err = dvb_generic_release(inode, file);
  ldv_module_put_82((ca->pub)->owner);
  return (err);
}
}
static unsigned int dvb_ca_en50221_io_poll(struct file *file , poll_table *wait )
{
  struct dvb_device *dvbdev ;
  struct dvb_ca_private *ca ;
  unsigned int mask ;
  int slot ;
  int result ;
  int tmp ;
  int tmp___0 ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  ca = (struct dvb_ca_private *)dvbdev->priv;
  mask = 0U;
  result = 0;
  if (dvb_ca_en50221_debug != 0) {
    printk("%s\n", "dvb_ca_en50221_io_poll");
  } else {
  }
  tmp = dvb_ca_en50221_io_read_condition(ca, & result, & slot);
  if (tmp == 1) {
    mask = mask | 1U;
  } else {
  }
  if (mask != 0U) {
    return (mask);
  } else {
  }
  poll_wait(file, & ca->wait_queue, wait);
  tmp___0 = dvb_ca_en50221_io_read_condition(ca, & result, & slot);
  if (tmp___0 == 1) {
    mask = mask | 1U;
  } else {
  }
  return (mask);
}
}
static char const __kstrtab_dvb_ca_en50221_init[20U] =
  { 'd', 'v', 'b', '_',
        'c', 'a', '_', 'e',
        'n', '5', '0', '2',
        '2', '1', '_', 'i',
        'n', 'i', 't', '\000'};
struct kernel_symbol const __ksymtab_dvb_ca_en50221_init ;
struct kernel_symbol const __ksymtab_dvb_ca_en50221_init = {(unsigned long )(& dvb_ca_en50221_init), (char const *)(& __kstrtab_dvb_ca_en50221_init)};
static struct file_operations const dvb_ca_fops =
     {& __this_module, & noop_llseek, & dvb_ca_en50221_io_read, & dvb_ca_en50221_io_write,
    0, 0, 0, & dvb_ca_en50221_io_poll, & dvb_ca_en50221_io_ioctl, 0, 0, 0, & dvb_ca_en50221_io_open,
    0, & dvb_ca_en50221_io_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct dvb_device const dvbdev_ca =
     {{0, 0}, & dvb_ca_fops, 0, 0, 0, 0U, 1, 1, 1, {{{{{{0}}, 0U, 0U, 0, {0, {0, 0},
                                                                        0, 0, 0UL}}}},
                                                  {0, 0}}, 0, (void *)0};
int dvb_ca_en50221_init(struct dvb_adapter *dvb_adapter , struct dvb_ca_en50221 *pubca ,
                        int flags , int slot_count )
{
  int ret ;
  struct dvb_ca_private *ca ;
  int i ;
  void *tmp ;
  struct dvb_ca_slot *tmp___0 ;
  void *tmp___1 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct task_struct *tmp___2 ;
  int tmp___3 ;
  struct task_struct *__k ;
  struct task_struct *tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  bool tmp___8 ;
  {
  ca = (struct dvb_ca_private *)0;
  if (dvb_ca_en50221_debug != 0) {
    printk("%s\n", "dvb_ca_en50221_init");
  } else {
  }
  if (slot_count <= 0) {
    return (-22);
  } else {
  }
  tmp = kzalloc(312UL, 208U);
  ca = (struct dvb_ca_private *)tmp;
  if ((unsigned long )ca == (unsigned long )((struct dvb_ca_private *)0)) {
    ret = -12;
    goto exit;
  } else {
  }
  ca->pub = pubca;
  ca->flags = (u32 )flags;
  ca->slot_count = (unsigned int )slot_count;
  tmp___1 = kcalloc((size_t )slot_count, 400UL, 208U);
  tmp___0 = (struct dvb_ca_slot *)tmp___1;
  ca->slot_info = tmp___0;
  if ((unsigned long )tmp___0 == (unsigned long )((struct dvb_ca_slot *)0)) {
    ret = -12;
    goto free_ca;
  } else {
  }
  __init_waitqueue_head(& ca->wait_queue, "&ca->wait_queue", & __key);
  ca->open = 0U;
  ca->wakeup = 0U;
  ca->next_read_slot = 0;
  pubca->private = (void *)ca;
  ret = dvb_register_device(dvb_adapter, & ca->dvbdev, & dvbdev_ca, (void *)ca, 6);
  if (ret != 0) {
    goto free_slot_info;
  } else {
  }
  i = 0;
  goto ldv_26456;
  ldv_26455:
  memset((void *)ca->slot_info + (unsigned long )i, 0, 400UL);
  (ca->slot_info + (unsigned long )i)->slot_state = 0;
  atomic_set(& (ca->slot_info + (unsigned long )i)->camchange_count, 0);
  (ca->slot_info + (unsigned long )i)->camchange_type = 0;
  __mutex_init(& (ca->slot_info + (unsigned long )i)->slot_lock, "&ca->slot_info[i].slot_lock",
               & __key___0);
  i = i + 1;
  ldv_26456: ;
  if (i < slot_count) {
    goto ldv_26455;
  } else {
  }
  __mutex_init(& ca->ioctl_mutex, "&ca->ioctl_mutex", & __key___1);
  tmp___2 = get_current();
  tmp___3 = signal_pending___0(tmp___2);
  if (tmp___3 != 0) {
    ret = -4;
    goto unregister_device;
  } else {
  }
  __asm__ volatile ("mfence": : : "memory");
  tmp___4 = kthread_create_on_node(& dvb_ca_en50221_thread, (void *)ca, -1, "kdvb-ca-%i:%i",
                                   ((ca->dvbdev)->adapter)->num, (ca->dvbdev)->id);
  __k = tmp___4;
  tmp___5 = IS_ERR((void const *)__k);
  if (tmp___5) {
    tmp___6 = 0;
  } else {
    tmp___6 = 1;
  }
  if (tmp___6) {
    wake_up_process(__k);
  } else {
  }
  ca->thread = __k;
  tmp___8 = IS_ERR((void const *)ca->thread);
  if ((int )tmp___8) {
    tmp___7 = PTR_ERR((void const *)ca->thread);
    ret = (int )tmp___7;
    printk("dvb_ca_init: failed to start kernel_thread (%d)\n", ret);
    goto unregister_device;
  } else {
  }
  return (0);
  unregister_device:
  dvb_unregister_device(ca->dvbdev);
  free_slot_info:
  kfree((void const *)ca->slot_info);
  free_ca:
  kfree((void const *)ca);
  exit:
  pubca->private = (void *)0;
  return (ret);
}
}
static char const __kstrtab_dvb_ca_en50221_release[23U] =
  { 'd', 'v', 'b', '_',
        'c', 'a', '_', 'e',
        'n', '5', '0', '2',
        '2', '1', '_', 'r',
        'e', 'l', 'e', 'a',
        's', 'e', '\000'};
struct kernel_symbol const __ksymtab_dvb_ca_en50221_release ;
struct kernel_symbol const __ksymtab_dvb_ca_en50221_release = {(unsigned long )(& dvb_ca_en50221_release), (char const *)(& __kstrtab_dvb_ca_en50221_release)};
void dvb_ca_en50221_release(struct dvb_ca_en50221 *pubca )
{
  struct dvb_ca_private *ca ;
  int i ;
  {
  ca = (struct dvb_ca_private *)pubca->private;
  if (dvb_ca_en50221_debug != 0) {
    printk("%s\n", "dvb_ca_en50221_release");
  } else {
  }
  kthread_stop(ca->thread);
  i = 0;
  goto ldv_26475;
  ldv_26474:
  dvb_ca_en50221_slot_shutdown(ca, i);
  vfree((void const *)(ca->slot_info + (unsigned long )i)->rx_buffer.data);
  i = i + 1;
  ldv_26475: ;
  if ((unsigned int )i < ca->slot_count) {
    goto ldv_26474;
  } else {
  }
  kfree((void const *)ca->slot_info);
  dvb_unregister_device(ca->dvbdev);
  kfree((void const *)ca);
  pubca->private = (void *)0;
  return;
}
}
int ldv_retval_3 ;
void ldv_file_operations_8(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  dvb_ca_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  dvb_ca_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_main_exported_8(void)
{
  int ldvarg28 ;
  loff_t *ldvarg34 ;
  void *tmp ;
  loff_t ldvarg29 ;
  char *ldvarg36 ;
  void *tmp___0 ;
  struct poll_table_struct *ldvarg30 ;
  void *tmp___1 ;
  char *ldvarg33 ;
  void *tmp___2 ;
  loff_t *ldvarg31 ;
  void *tmp___3 ;
  size_t ldvarg32 ;
  size_t ldvarg35 ;
  unsigned long ldvarg26 ;
  unsigned int ldvarg27 ;
  int tmp___4 ;
  {
  tmp = ldv_init_zalloc(8UL);
  ldvarg34 = (loff_t *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg36 = (char *)tmp___0;
  tmp___1 = ldv_init_zalloc(16UL);
  ldvarg30 = (struct poll_table_struct *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg33 = (char *)tmp___2;
  tmp___3 = ldv_init_zalloc(8UL);
  ldvarg31 = (loff_t *)tmp___3;
  ldv_memset((void *)(& ldvarg28), 0, 4UL);
  ldv_memset((void *)(& ldvarg29), 0, 8UL);
  ldv_memset((void *)(& ldvarg32), 0, 8UL);
  ldv_memset((void *)(& ldvarg35), 0, 8UL);
  ldv_memset((void *)(& ldvarg26), 0, 8UL);
  ldv_memset((void *)(& ldvarg27), 0, 4UL);
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_8 == 1) {
    dvb_ca_en50221_io_write(dvb_ca_fops_group2, (char const *)ldvarg36, ldvarg35,
                            ldvarg34);
    ldv_state_variable_8 = 1;
  } else {
  }
  if (ldv_state_variable_8 == 2) {
    dvb_ca_en50221_io_write(dvb_ca_fops_group2, (char const *)ldvarg36, ldvarg35,
                            ldvarg34);
    ldv_state_variable_8 = 2;
  } else {
  }
  goto ldv_26496;
  case 1: ;
  if (ldv_state_variable_8 == 2) {
    dvb_ca_en50221_io_release(dvb_ca_fops_group1, dvb_ca_fops_group2);
    ldv_state_variable_8 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_26496;
  case 2: ;
  if (ldv_state_variable_8 == 2) {
    dvb_ca_en50221_io_read(dvb_ca_fops_group2, ldvarg33, ldvarg32, ldvarg31);
    ldv_state_variable_8 = 2;
  } else {
  }
  goto ldv_26496;
  case 3: ;
  if (ldv_state_variable_8 == 1) {
    dvb_ca_en50221_io_poll(dvb_ca_fops_group2, ldvarg30);
    ldv_state_variable_8 = 1;
  } else {
  }
  if (ldv_state_variable_8 == 2) {
    dvb_ca_en50221_io_poll(dvb_ca_fops_group2, ldvarg30);
    ldv_state_variable_8 = 2;
  } else {
  }
  goto ldv_26496;
  case 4: ;
  if (ldv_state_variable_8 == 2) {
    noop_llseek(dvb_ca_fops_group2, ldvarg29, ldvarg28);
    ldv_state_variable_8 = 2;
  } else {
  }
  goto ldv_26496;
  case 5: ;
  if (ldv_state_variable_8 == 1) {
    ldv_retval_3 = dvb_ca_en50221_io_open(dvb_ca_fops_group1, dvb_ca_fops_group2);
    if (ldv_retval_3 == 0) {
      ldv_state_variable_8 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_26496;
  case 6: ;
  if (ldv_state_variable_8 == 2) {
    dvb_ca_en50221_io_ioctl(dvb_ca_fops_group2, ldvarg27, ldvarg26);
    ldv_state_variable_8 = 2;
  } else {
  }
  goto ldv_26496;
  default:
  ldv_stop();
  }
  ldv_26496: ;
  return;
}
}
bool ldv_queue_work_on_75(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_76(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_77(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_78(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_79(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_try_module_get_80(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_81(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_module_put_82(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern void debug_check_no_locks_held(void) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
__inline static s64 ktime_divns(ktime_t const kt , s64 div )
{
  int __ret_warn_on ;
  long tmp ;
  {
  __ret_warn_on = div < 0LL;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("include/linux/ktime.h", 194);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  return ((long long )kt.tv64 / div);
}
}
__inline static s64 ktime_to_us(ktime_t const kt )
{
  s64 tmp ;
  {
  tmp = ktime_divns(kt, 1000LL);
  return (tmp);
}
}
__inline static s64 ktime_us_delta(ktime_t const later , ktime_t const earlier )
{
  ktime_t __constr_expr_0 ;
  s64 tmp ;
  {
  __constr_expr_0.tv64 = (long long )later.tv64 - (long long )earlier.tv64;
  tmp = ktime_to_us(__constr_expr_0);
  return (tmp);
}
}
__inline static ktime_t ktime_add_us(ktime_t const kt , u64 const usec )
{
  ktime_t __constr_expr_0 ;
  {
  __constr_expr_0.tv64 = (long long )((unsigned long long )kt.tv64 + (unsigned long long )usec * 1000ULL);
  return (__constr_expr_0);
}
}
extern ktime_t ktime_get_with_offset(enum tk_offsets ) ;
__inline static ktime_t ktime_get_real(void)
{
  ktime_t tmp ;
  {
  tmp = ktime_get_with_offset(0);
  return (tmp);
}
}
bool ldv_queue_work_on_92(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_94(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_93(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_96(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_95(struct workqueue_struct *ldv_func_arg1 ) ;
extern void symbol_put_addr(void * ) ;
__inline static int signal_pending___1(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  return ((int )tmp___0);
}
}
void ldv_file_operations_7(void) ;
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
extern int down_interruptible(struct semaphore * ) ;
extern void up(struct semaphore * ) ;
extern atomic_t system_freezing_cnt ;
extern bool freezing_slow_path(struct task_struct * ) ;
__inline static bool freezing(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  tmp = atomic_read((atomic_t const *)(& system_freezing_cnt));
  tmp___0 = ldv__builtin_expect(tmp == 0, 1L);
  if (tmp___0 != 0L) {
    return (0);
  } else {
  }
  tmp___1 = freezing_slow_path(p);
  return (tmp___1);
}
}
extern bool __refrigerator(bool ) ;
__inline static bool try_to_freeze_unsafe(void)
{
  struct task_struct *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  {
  __might_sleep("include/linux/freezer.h", 56, 0);
  tmp = get_current();
  tmp___0 = freezing(tmp);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  tmp___2 = ldv__builtin_expect((long )tmp___1, 1L);
  if (tmp___2 != 0L) {
    return (0);
  } else {
  }
  tmp___3 = __refrigerator(0);
  return (tmp___3);
}
}
__inline static bool try_to_freeze(void)
{
  struct task_struct *tmp ;
  bool tmp___0 ;
  {
  tmp = get_current();
  if ((tmp->flags & 32768U) == 0U) {
    debug_check_no_locks_held();
  } else {
  }
  tmp___0 = try_to_freeze_unsafe();
  return (tmp___0);
}
}
extern bool set_freezable(void) ;
extern int ___ratelimit(struct ratelimit_state * , char const * ) ;
extern void dev_err(struct device const * , char const * , ...) ;
extern void dev_warn(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
extern void __udelay(unsigned long ) ;
extern unsigned long msleep_interruptible(unsigned int ) ;
int dvb_register_frontend(struct dvb_adapter *dvb , struct dvb_frontend *fe ) ;
int dvb_unregister_frontend(struct dvb_frontend *fe ) ;
void dvb_frontend_detach(struct dvb_frontend *fe ) ;
void dvb_frontend_reinitialise(struct dvb_frontend *fe ) ;
int dvb_frontend_suspend(struct dvb_frontend *fe ) ;
int dvb_frontend_resume(struct dvb_frontend *fe ) ;
void dvb_frontend_sleep_until(ktime_t *waketime , u32 add_usec ) ;
static int dvb_frontend_debug ;
static int dvb_shutdown_timeout ;
static int dvb_force_auto_inversion ;
static int dvb_override_tune_delay ;
static int dvb_powerdown_on_sleep = 1;
static int dvb_mfe_wait_time = 5;
static struct mutex frontend_mutex = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "frontend_mutex.wait_lock",
                                                          0, 0UL}}}}, {& frontend_mutex.wait_list,
                                                                       & frontend_mutex.wait_list},
    0, (void *)(& frontend_mutex), {0, {0, 0}, "frontend_mutex", 0, 0UL}};
static void dvb_frontend_wakeup(struct dvb_frontend *fe ) ;
static int dtv_get_frontend(struct dvb_frontend *fe , struct dvb_frontend_parameters *p_out ) ;
static int dtv_property_legacy_params_sync(struct dvb_frontend *fe , struct dvb_frontend_parameters *p ) ;
static bool has_get_frontend(struct dvb_frontend *fe )
{
  {
  return ((unsigned long )fe->ops.get_frontend != (unsigned long )((int (*)(struct dvb_frontend * ))0));
}
}
static enum dvbv3_emulation_type dvbv3_type(u32 delivery_system )
{
  {
  switch (delivery_system) {
  case 1U: ;
  case 18U: ;
  return (2);
  case 5U: ;
  case 6U: ;
  case 17U: ;
  case 9U: ;
  case 4U: ;
  return (1);
  case 3U: ;
  case 16U: ;
  case 8U: ;
  case 13U: ;
  return (3);
  case 11U: ;
  case 12U: ;
  case 2U: ;
  return (4);
  case 0U: ;
  case 10U: ;
  case 7U: ;
  case 15U: ;
  default: ;
  return (0);
  }
}
}
static void dvb_frontend_add_event(struct dvb_frontend *fe , enum fe_status status )
{
  struct dvb_frontend_private *fepriv ;
  struct dvb_fe_events *events ;
  struct dvb_frontend_event *e ;
  int wp ;
  struct _ddebug descriptor ;
  long tmp ;
  bool tmp___0 ;
  {
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  events = & fepriv->events;
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_frontend_add_event";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s:\n";
  descriptor.lineno = 210U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s:\n",
                      "dvb_frontend_add_event");
  } else {
  }
  if (((unsigned int )status & 16U) != 0U) {
    tmp___0 = has_get_frontend(fe);
    if ((int )tmp___0) {
      dtv_get_frontend(fe, & fepriv->parameters_out);
    } else {
    }
  } else {
  }
  mutex_lock_nested(& events->mtx, 0U);
  wp = (events->eventw + 1) % 8;
  if (events->eventr == wp) {
    events->overflow = 1;
    events->eventr = (events->eventr + 1) % 8;
  } else {
  }
  e = (struct dvb_frontend_event *)(& events->events) + (unsigned long )events->eventw;
  e->status = status;
  e->parameters = fepriv->parameters_out;
  events->eventw = wp;
  mutex_unlock(& events->mtx);
  __wake_up(& events->wait_queue, 1U, 1, (void *)0);
  return;
}
}
static int dvb_frontend_get_event(struct dvb_frontend *fe , struct dvb_frontend_event *event ,
                                  int flags )
{
  struct dvb_frontend_private *fepriv ;
  struct dvb_fe_events *events ;
  struct _ddebug descriptor ;
  long tmp ;
  int ret ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___0 ;
  int tmp___1 ;
  {
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  events = & fepriv->events;
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_frontend_get_event";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s:\n";
  descriptor.lineno = 240U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s:\n",
                      "dvb_frontend_get_event");
  } else {
  }
  if (events->overflow != 0) {
    events->overflow = 0;
    return (-75);
  } else {
  }
  if (events->eventw == events->eventr) {
    if ((flags & 2048) != 0) {
      return (-11);
    } else {
    }
    up(& fepriv->sem);
    __ret = 0;
    __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c",
                  256, 0);
    if (events->eventw == events->eventr) {
      __ret___0 = 0L;
      INIT_LIST_HEAD(& __wait.task_list);
      __wait.flags = 0U;
      ldv_27739:
      tmp___0 = prepare_to_wait_event(& events->wait_queue, & __wait, 1);
      __int = tmp___0;
      if (events->eventw != events->eventr) {
        goto ldv_27738;
      } else {
      }
      if (__int != 0L) {
        __ret___0 = __int;
        goto ldv_27738;
      } else {
      }
      schedule();
      goto ldv_27739;
      ldv_27738:
      finish_wait(& events->wait_queue, & __wait);
      __ret = (int )__ret___0;
    } else {
    }
    ret = __ret;
    tmp___1 = down_interruptible(& fepriv->sem);
    if (tmp___1 != 0) {
      return (-512);
    } else {
    }
    if (ret < 0) {
      return (ret);
    } else {
    }
  } else {
  }
  mutex_lock_nested(& events->mtx, 0U);
  *event = events->events[events->eventr];
  events->eventr = (events->eventr + 1) % 8;
  mutex_unlock(& events->mtx);
  return (0);
}
}
static void dvb_frontend_clear_events(struct dvb_frontend *fe )
{
  struct dvb_frontend_private *fepriv ;
  struct dvb_fe_events *events ;
  {
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  events = & fepriv->events;
  mutex_lock_nested(& events->mtx, 0U);
  events->eventr = events->eventw;
  mutex_unlock(& events->mtx);
  return;
}
}
static void dvb_frontend_init(struct dvb_frontend *fe )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_frontend_init";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s: initialising adapter %i frontend %i (%s)...\n";
  descriptor.lineno = 287U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s: initialising adapter %i frontend %i (%s)...\n",
                      "dvb_frontend_init", (fe->dvb)->num, fe->id, (char *)(& fe->ops.info.name));
  } else {
  }
  if ((unsigned long )fe->ops.init != (unsigned long )((int (*)(struct dvb_frontend * ))0)) {
    (*(fe->ops.init))(fe);
  } else {
  }
  if ((unsigned long )fe->ops.tuner_ops.init != (unsigned long )((int (*)(struct dvb_frontend * ))0)) {
    if ((unsigned long )fe->ops.i2c_gate_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                           int ))0)) {
      (*(fe->ops.i2c_gate_ctrl))(fe, 1);
    } else {
    }
    (*(fe->ops.tuner_ops.init))(fe);
    if ((unsigned long )fe->ops.i2c_gate_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                           int ))0)) {
      (*(fe->ops.i2c_gate_ctrl))(fe, 0);
    } else {
    }
  } else {
  }
  return;
}
}
void dvb_frontend_reinitialise(struct dvb_frontend *fe )
{
  struct dvb_frontend_private *fepriv ;
  {
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  fepriv->reinitialise = 1U;
  dvb_frontend_wakeup(fe);
  return;
}
}
static char const __kstrtab_dvb_frontend_reinitialise[26U] =
  { 'd', 'v', 'b', '_',
        'f', 'r', 'o', 'n',
        't', 'e', 'n', 'd',
        '_', 'r', 'e', 'i',
        'n', 'i', 't', 'i',
        'a', 'l', 'i', 's',
        'e', '\000'};
struct kernel_symbol const __ksymtab_dvb_frontend_reinitialise ;
struct kernel_symbol const __ksymtab_dvb_frontend_reinitialise = {(unsigned long )(& dvb_frontend_reinitialise), (char const *)(& __kstrtab_dvb_frontend_reinitialise)};
static void dvb_frontend_swzigzag_update_delay(struct dvb_frontend_private *fepriv ,
                                               int locked )
{
  int q2 ;
  struct dvb_frontend *fe ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  fe = (struct dvb_frontend *)(fepriv->dvbdev)->priv;
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_frontend_swzigzag_update_delay";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s:\n";
  descriptor.lineno = 314U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s:\n",
                      "dvb_frontend_swzigzag_update_delay");
  } else {
  }
  if (locked != 0) {
    fepriv->quality = (fepriv->quality * 220 + 9216) / 256;
  } else {
    fepriv->quality = (fepriv->quality * 220) / 256;
  }
  q2 = fepriv->quality + -128;
  q2 = q2 * q2;
  fepriv->delay = fepriv->min_delay + (unsigned int )((q2 * 250) / 16384);
  return;
}
}
static int dvb_frontend_swzigzag_autotune(struct dvb_frontend *fe , int check_wrapped )
{
  int autoinversion ;
  int ready ;
  int fe_set_err ;
  struct dvb_frontend_private *fepriv ;
  struct dtv_frontend_properties *c ;
  struct dtv_frontend_properties tmp ;
  int original_inversion ;
  u32 original_frequency ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  ready = 0;
  fe_set_err = 0;
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  c = & fe->dtv_property_cache;
  original_inversion = (int )c->inversion;
  original_frequency = c->frequency;
  autoinversion = ((unsigned int )fe->ops.info.caps & 1U) == 0U && (unsigned int )c->inversion == 2U;
  goto ldv_27790;
  ldv_27789:
  fepriv->lnb_drift = (int )(fepriv->auto_step * fepriv->step_size);
  if ((unsigned int )fepriv->lnb_drift > fepriv->max_drift) {
    fepriv->auto_step = 0U;
    fepriv->auto_sub_step = 0U;
    fepriv->lnb_drift = 0;
  } else {
  }
  switch (fepriv->auto_sub_step) {
  case 0U:
  ready = 1;
  goto ldv_27784;
  case 1U: ;
  if (autoinversion == 0) {
    goto ldv_27784;
  } else {
  }
  fepriv->inversion = fepriv->inversion == 0U;
  ready = 1;
  goto ldv_27784;
  case 2U: ;
  if (fepriv->lnb_drift == 0) {
    goto ldv_27784;
  } else {
  }
  fepriv->lnb_drift = - fepriv->lnb_drift;
  ready = 1;
  goto ldv_27784;
  case 3U: ;
  if (fepriv->lnb_drift == 0) {
    goto ldv_27784;
  } else {
  }
  if (autoinversion == 0) {
    goto ldv_27784;
  } else {
  }
  fepriv->inversion = fepriv->inversion == 0U;
  fepriv->lnb_drift = - fepriv->lnb_drift;
  ready = 1;
  goto ldv_27784;
  default:
  fepriv->auto_step = fepriv->auto_step + 1U;
  fepriv->auto_sub_step = 4294967295U;
  goto ldv_27784;
  }
  ldv_27784: ;
  if (ready == 0) {
    fepriv->auto_sub_step = fepriv->auto_sub_step + 1U;
  } else {
  }
  ldv_27790: ;
  if (ready == 0) {
    goto ldv_27789;
  } else {
  }
  if ((fepriv->auto_step == fepriv->started_auto_step && fepriv->auto_sub_step == 0U) && check_wrapped != 0) {
    return (1);
  } else {
  }
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_frontend_swzigzag_autotune";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s: drift:%i inversion:%i auto_step:%i auto_sub_step:%i started_auto_step:%i\n";
  descriptor.lineno = 410U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s: drift:%i inversion:%i auto_step:%i auto_sub_step:%i started_auto_step:%i\n",
                      "dvb_frontend_swzigzag_autotune", fepriv->lnb_drift, fepriv->inversion,
                      fepriv->auto_step, fepriv->auto_sub_step, fepriv->started_auto_step);
  } else {
  }
  c->frequency = c->frequency + (u32 )fepriv->lnb_drift;
  if (autoinversion != 0) {
    c->inversion = (enum fe_spectral_inversion )fepriv->inversion;
  } else {
  }
  tmp = *c;
  if ((unsigned long )fe->ops.set_frontend != (unsigned long )((int (*)(struct dvb_frontend * ))0)) {
    fe_set_err = (*(fe->ops.set_frontend))(fe);
  } else {
  }
  *c = tmp;
  if (fe_set_err < 0) {
    fepriv->state = 256U;
    return (fe_set_err);
  } else {
  }
  c->frequency = original_frequency;
  c->inversion = (enum fe_spectral_inversion )original_inversion;
  fepriv->auto_sub_step = fepriv->auto_sub_step + 1U;
  return (0);
}
}
static void dvb_frontend_swzigzag(struct dvb_frontend *fe )
{
  enum fe_status s ;
  int retval ;
  struct dvb_frontend_private *fepriv ;
  struct dtv_frontend_properties *c ;
  struct dtv_frontend_properties tmp ;
  {
  s = 0;
  retval = 0;
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  c = & fe->dtv_property_cache;
  if ((int )fepriv->state & 1) {
    fepriv->delay = 750U;
    fepriv->quality = 0;
    return;
  } else {
  }
  if ((int )fepriv->tune_mode_flags & 1) {
    if ((fepriv->state & 2U) != 0U) {
      tmp = *c;
      if ((unsigned long )fe->ops.set_frontend != (unsigned long )((int (*)(struct dvb_frontend * ))0)) {
        retval = (*(fe->ops.set_frontend))(fe);
      } else {
      }
      *c = tmp;
      if (retval < 0) {
        fepriv->state = 256U;
      } else {
        fepriv->state = 16U;
      }
    } else {
    }
    fepriv->delay = 750U;
    fepriv->quality = 0;
    return;
  } else {
  }
  if ((fepriv->state & 2U) != 0U) {
    s = 0;
  } else {
    if ((unsigned long )fe->ops.read_status != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                         enum fe_status * ))0)) {
      (*(fe->ops.read_status))(fe, & s);
    } else {
    }
    if ((unsigned int )fepriv->status != (unsigned int )s) {
      dvb_frontend_add_event(fe, s);
      fepriv->status = s;
    } else {
    }
  }
  if ((fepriv->state & 236U) != 0U && ((unsigned int )s & 16U) != 0U) {
    dvb_frontend_swzigzag_update_delay(fepriv, (int )s & 16);
    fepriv->state = 16U;
    if (((unsigned int )fe->ops.info.caps & 1U) == 0U && (unsigned int )c->inversion == 2U) {
      c->inversion = (enum fe_spectral_inversion )fepriv->inversion;
    } else {
    }
    return;
  } else {
  }
  if ((fepriv->state & 16U) != 0U) {
    dvb_frontend_swzigzag_update_delay(fepriv, (int )s & 16);
    if (((unsigned int )s & 16U) != 0U) {
      return;
    } else {
      fepriv->state = 32U;
      fepriv->started_auto_step = fepriv->auto_step;
      fepriv->check_wrapped = 0U;
    }
  } else {
  }
  if (((fepriv->state & 96U) != 0U && ((unsigned int )fe->ops.info.caps & 1073741824U) != 0U) && fepriv->max_drift == 0U) {
    dvb_frontend_swzigzag_update_delay(fepriv, (int )s & 16);
    return;
  } else {
  }
  if ((fepriv->state & 128U) != 0U) {
    dvb_frontend_swzigzag_update_delay(fepriv, (int )s & 16);
    return;
  } else {
  }
  if ((fepriv->state & 2U) != 0U) {
    fepriv->lnb_drift = 0;
    fepriv->auto_step = 0U;
    fepriv->auto_sub_step = 0U;
    fepriv->started_auto_step = 0U;
    fepriv->check_wrapped = 0U;
  } else {
  }
  if ((fepriv->state & 36U) != 0U || (fepriv->state & 2U) != 0U) {
    fepriv->delay = fepriv->min_delay;
    retval = dvb_frontend_swzigzag_autotune(fe, (int )fepriv->check_wrapped);
    if (retval < 0) {
      return;
    } else
    if (retval != 0) {
      fepriv->state = 72U;
      fepriv->started_auto_step = fepriv->auto_step;
      return;
    } else {
    }
    fepriv->check_wrapped = 1U;
    if ((fepriv->state & 2U) != 0U) {
      fepriv->state = 4U;
    } else {
    }
  } else {
  }
  if ((fepriv->state & 72U) != 0U) {
    dvb_frontend_swzigzag_update_delay(fepriv, (int )s & 16);
    dvb_frontend_swzigzag_autotune(fe, 0);
  } else {
  }
  return;
}
}
static int dvb_frontend_is_exiting(struct dvb_frontend *fe )
{
  struct dvb_frontend_private *fepriv ;
  {
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  if (fe->exit != 0U) {
    return (1);
  } else {
  }
  if ((fepriv->dvbdev)->writers == 1) {
    if ((long )((unsigned long )jiffies - (fepriv->release_jiffies + (unsigned long )(dvb_shutdown_timeout * 250))) >= 0L) {
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int dvb_frontend_should_wakeup(struct dvb_frontend *fe )
{
  struct dvb_frontend_private *fepriv ;
  int tmp ;
  {
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  if (fepriv->wakeup != 0U) {
    fepriv->wakeup = 0U;
    return (1);
  } else {
  }
  tmp = dvb_frontend_is_exiting(fe);
  return (tmp);
}
}
static void dvb_frontend_wakeup(struct dvb_frontend *fe )
{
  struct dvb_frontend_private *fepriv ;
  {
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  fepriv->wakeup = 1U;
  __wake_up(& fepriv->wait_queue, 1U, 1, (void *)0);
  return;
}
}
static int dvb_frontend_thread(void *data )
{
  struct dvb_frontend *fe ;
  struct dvb_frontend_private *fepriv ;
  enum fe_status s ;
  enum dvbfe_algo algo ;
  bool re_tune ;
  bool semheld ;
  struct _ddebug descriptor ;
  long tmp ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___0 ;
  bool __cond ;
  int tmp___1 ;
  bool tmp___2 ;
  struct task_struct *tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  bool __cond___0 ;
  int tmp___6 ;
  bool tmp___7 ;
  struct task_struct *tmp___8 ;
  bool tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  bool tmp___12 ;
  int tmp___13 ;
  bool tmp___14 ;
  int tmp___15 ;
  struct _ddebug descriptor___0 ;
  long tmp___16 ;
  struct _ddebug descriptor___1 ;
  long tmp___17 ;
  struct _ddebug descriptor___2 ;
  long tmp___18 ;
  struct _ddebug descriptor___3 ;
  long tmp___19 ;
  struct _ddebug descriptor___4 ;
  long tmp___20 ;
  struct _ddebug descriptor___5 ;
  long tmp___21 ;
  struct _ddebug descriptor___6 ;
  long tmp___22 ;
  bool tmp___23 ;
  {
  fe = (struct dvb_frontend *)data;
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  re_tune = 0;
  semheld = 0;
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_frontend_thread";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s:\n";
  descriptor.lineno = 704U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s:\n",
                      "dvb_frontend_thread");
  } else {
  }
  fepriv->check_wrapped = 0U;
  fepriv->quality = 0;
  fepriv->delay = 750U;
  fepriv->status = 0;
  fepriv->wakeup = 0U;
  fepriv->reinitialise = 0U;
  dvb_frontend_init(fe);
  set_freezable();
  ldv_27858:
  up(& fepriv->sem);
  restart:
  __ret = (long )fepriv->delay;
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c",
                736, 0);
  tmp___6 = dvb_frontend_should_wakeup(fe);
  if (tmp___6 != 0) {
    tmp___10 = 1;
  } else {
    tmp___7 = kthread_should_stop();
    if ((int )tmp___7) {
      tmp___10 = 1;
    } else {
      tmp___8 = get_current();
      tmp___9 = freezing(tmp___8);
      if ((int )tmp___9) {
        tmp___10 = 1;
      } else {
        tmp___10 = 0;
      }
    }
  }
  __cond___0 = (bool )tmp___10;
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    __ret___0 = (long )fepriv->delay;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_27842:
    tmp___0 = prepare_to_wait_event(& fepriv->wait_queue, & __wait, 1);
    __int = tmp___0;
    tmp___1 = dvb_frontend_should_wakeup(fe);
    if (tmp___1 != 0) {
      tmp___5 = 1;
    } else {
      tmp___2 = kthread_should_stop();
      if ((int )tmp___2) {
        tmp___5 = 1;
      } else {
        tmp___3 = get_current();
        tmp___4 = freezing(tmp___3);
        if ((int )tmp___4) {
          tmp___5 = 1;
        } else {
          tmp___5 = 0;
        }
      }
    }
    __cond = (bool )tmp___5;
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_27841;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_27841;
    } else {
    }
    __ret___0 = schedule_timeout(__ret___0);
    goto ldv_27842;
    ldv_27841:
    finish_wait(& fepriv->wait_queue, & __wait);
    __ret = __ret___0;
  } else {
  }
  tmp___12 = kthread_should_stop();
  if ((int )tmp___12) {
    goto _L;
  } else {
    tmp___13 = dvb_frontend_is_exiting(fe);
    if (tmp___13 != 0) {
      _L:
      tmp___11 = down_interruptible(& fepriv->sem);
      if (tmp___11 == 0) {
        semheld = 1;
      } else {
      }
      fe->exit = 1U;
      goto ldv_27845;
    } else {
    }
  }
  tmp___14 = try_to_freeze();
  if ((int )tmp___14) {
    goto restart;
  } else {
  }
  tmp___15 = down_interruptible(& fepriv->sem);
  if (tmp___15 != 0) {
    goto ldv_27845;
  } else {
  }
  if (fepriv->reinitialise != 0U) {
    dvb_frontend_init(fe);
    if ((unsigned long )fe->ops.set_tone != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                      enum fe_sec_tone_mode ))0) && fepriv->tone != -1) {
      (*(fe->ops.set_tone))(fe, (enum fe_sec_tone_mode )fepriv->tone);
    } else {
    }
    if ((unsigned long )fe->ops.set_voltage != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                         enum fe_sec_voltage ))0) && fepriv->voltage != -1) {
      (*(fe->ops.set_voltage))(fe, (enum fe_sec_voltage )fepriv->voltage);
    } else {
    }
    fepriv->reinitialise = 0U;
  } else {
  }
  if ((unsigned long )fe->ops.get_frontend_algo != (unsigned long )((enum dvbfe_algo (*)(struct dvb_frontend * ))0)) {
    algo = (*(fe->ops.get_frontend_algo))(fe);
    switch ((int )algo) {
    case 1:
    descriptor___0.modname = "dvb_core";
    descriptor___0.function = "dvb_frontend_thread";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
    descriptor___0.format = "%s: Frontend ALGO = DVBFE_ALGO_HW\n";
    descriptor___0.lineno = 766U;
    descriptor___0.flags = 0U;
    tmp___16 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___16 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(fe->dvb)->device,
                        "%s: Frontend ALGO = DVBFE_ALGO_HW\n", "dvb_frontend_thread");
    } else {
    }
    if ((fepriv->state & 2U) != 0U) {
      descriptor___1.modname = "dvb_core";
      descriptor___1.function = "dvb_frontend_thread";
      descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
      descriptor___1.format = "%s: Retune requested, FESTATE_RETUNE\n";
      descriptor___1.lineno = 769U;
      descriptor___1.flags = 0U;
      tmp___17 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___17 != 0L) {
        __dynamic_dev_dbg(& descriptor___1, (struct device const *)(fe->dvb)->device,
                          "%s: Retune requested, FESTATE_RETUNE\n", "dvb_frontend_thread");
      } else {
      }
      re_tune = 1;
      fepriv->state = 16U;
    } else {
      re_tune = 0;
    }
    if ((unsigned long )fe->ops.tune != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                  bool , unsigned int ,
                                                                  unsigned int * ,
                                                                  enum fe_status * ))0)) {
      (*(fe->ops.tune))(fe, (int )re_tune, (unsigned int )fepriv->tune_mode_flags,
                        & fepriv->delay, & s);
    } else {
    }
    if ((unsigned int )fepriv->status != (unsigned int )s && (fepriv->tune_mode_flags & 1UL) == 0UL) {
      descriptor___2.modname = "dvb_core";
      descriptor___2.function = "dvb_frontend_thread";
      descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
      descriptor___2.format = "%s: state changed, adding current state\n";
      descriptor___2.lineno = 780U;
      descriptor___2.flags = 0U;
      tmp___18 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      if (tmp___18 != 0L) {
        __dynamic_dev_dbg(& descriptor___2, (struct device const *)(fe->dvb)->device,
                          "%s: state changed, adding current state\n", "dvb_frontend_thread");
      } else {
      }
      dvb_frontend_add_event(fe, s);
      fepriv->status = s;
    } else {
    }
    goto ldv_27850;
    case 2:
    descriptor___3.modname = "dvb_core";
    descriptor___3.function = "dvb_frontend_thread";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
    descriptor___3.format = "%s: Frontend ALGO = DVBFE_ALGO_SW\n";
    descriptor___3.lineno = 786U;
    descriptor___3.flags = 0U;
    tmp___19 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___19 != 0L) {
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)(fe->dvb)->device,
                        "%s: Frontend ALGO = DVBFE_ALGO_SW\n", "dvb_frontend_thread");
    } else {
    }
    dvb_frontend_swzigzag(fe);
    goto ldv_27850;
    case 4:
    descriptor___4.modname = "dvb_core";
    descriptor___4.function = "dvb_frontend_thread";
    descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
    descriptor___4.format = "%s: Frontend ALGO = DVBFE_ALGO_CUSTOM, state=%d\n";
    descriptor___4.lineno = 790U;
    descriptor___4.flags = 0U;
    tmp___20 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___20 != 0L) {
      __dynamic_dev_dbg(& descriptor___4, (struct device const *)(fe->dvb)->device,
                        "%s: Frontend ALGO = DVBFE_ALGO_CUSTOM, state=%d\n", "dvb_frontend_thread",
                        fepriv->state);
    } else {
    }
    if ((fepriv->state & 2U) != 0U) {
      descriptor___5.modname = "dvb_core";
      descriptor___5.function = "dvb_frontend_thread";
      descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
      descriptor___5.format = "%s: Retune requested, FESTAT_RETUNE\n";
      descriptor___5.lineno = 792U;
      descriptor___5.flags = 0U;
      tmp___21 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
      if (tmp___21 != 0L) {
        __dynamic_dev_dbg(& descriptor___5, (struct device const *)(fe->dvb)->device,
                          "%s: Retune requested, FESTAT_RETUNE\n", "dvb_frontend_thread");
      } else {
      }
      fepriv->state = 16U;
    } else {
    }
    if (((int )fepriv->algo_status & 16) != 0) {
      if ((unsigned long )fe->ops.search != (unsigned long )((enum dvbfe_search (*)(struct dvb_frontend * ))0)) {
        fepriv->algo_status = (*(fe->ops.search))(fe);
      } else {
        fepriv->algo_status = (enum dvbfe_search )((int )fepriv->algo_status & -17);
      }
    } else {
    }
    if ((int )fepriv->algo_status != 1) {
      fepriv->algo_status = (enum dvbfe_search )((int )fepriv->algo_status | 16);
      fepriv->delay = 125U;
    } else {
    }
    dtv_property_legacy_params_sync(fe, & fepriv->parameters_out);
    (*(fe->ops.read_status))(fe, & s);
    if ((unsigned int )fepriv->status != (unsigned int )s) {
      dvb_frontend_add_event(fe, s);
      fepriv->status = s;
      if (((unsigned int )s & 16U) == 0U) {
        fepriv->delay = 25U;
        fepriv->algo_status = (enum dvbfe_search )((int )fepriv->algo_status | 16);
      } else {
        fepriv->delay = 15000U;
      }
    } else {
    }
    goto ldv_27850;
    default:
    descriptor___6.modname = "dvb_core";
    descriptor___6.function = "dvb_frontend_thread";
    descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
    descriptor___6.format = "%s: UNDEFINED ALGO !\n";
    descriptor___6.lineno = 828U;
    descriptor___6.flags = 0U;
    tmp___22 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
    if (tmp___22 != 0L) {
      __dynamic_dev_dbg(& descriptor___6, (struct device const *)(fe->dvb)->device,
                        "%s: UNDEFINED ALGO !\n", "dvb_frontend_thread");
    } else {
    }
    goto ldv_27850;
    }
    ldv_27850: ;
  } else {
    dvb_frontend_swzigzag(fe);
  }
  goto ldv_27858;
  ldv_27845: ;
  if (dvb_powerdown_on_sleep != 0) {
    if ((unsigned long )fe->ops.set_voltage != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                         enum fe_sec_voltage ))0)) {
      (*(fe->ops.set_voltage))(fe, 2);
    } else {
    }
    if ((unsigned long )fe->ops.tuner_ops.sleep != (unsigned long )((int (*)(struct dvb_frontend * ))0)) {
      if ((unsigned long )fe->ops.i2c_gate_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                             int ))0)) {
        (*(fe->ops.i2c_gate_ctrl))(fe, 1);
      } else {
      }
      (*(fe->ops.tuner_ops.sleep))(fe);
      if ((unsigned long )fe->ops.i2c_gate_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                             int ))0)) {
        (*(fe->ops.i2c_gate_ctrl))(fe, 0);
      } else {
      }
    } else {
    }
    if ((unsigned long )fe->ops.sleep != (unsigned long )((int (*)(struct dvb_frontend * ))0)) {
      (*(fe->ops.sleep))(fe);
    } else {
    }
  } else {
  }
  fepriv->thread = (struct task_struct *)0;
  tmp___23 = kthread_should_stop();
  if ((int )tmp___23) {
    fe->exit = 2U;
  } else {
    fe->exit = 0U;
  }
  __asm__ volatile ("mfence": : : "memory");
  if ((int )semheld) {
    up(& fepriv->sem);
  } else {
  }
  dvb_frontend_wakeup(fe);
  return (0);
}
}
static void dvb_frontend_stop(struct dvb_frontend *fe )
{
  struct dvb_frontend_private *fepriv ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_frontend_stop";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s:\n";
  descriptor.lineno = 873U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s:\n",
                      "dvb_frontend_stop");
  } else {
  }
  if (fe->exit != 2U) {
    fe->exit = 1U;
  } else {
  }
  __asm__ volatile ("mfence": : : "memory");
  if ((unsigned long )fepriv->thread == (unsigned long )((struct task_struct *)0)) {
    return;
  } else {
  }
  kthread_stop(fepriv->thread);
  sema_init(& fepriv->sem, 1);
  fepriv->state = 1U;
  if ((unsigned long )fepriv->thread != (unsigned long )((struct task_struct *)0)) {
    dev_warn((struct device const *)(fe->dvb)->device, "dvb_frontend_stop: warning: thread %p won\'t exit\n",
             fepriv->thread);
  } else {
  }
  return;
}
}
void dvb_frontend_sleep_until(ktime_t *waketime , u32 add_usec )
{
  s32 delta ;
  s32 newdelta ;
  ktime_t tmp ;
  s64 tmp___0 ;
  ktime_t tmp___1 ;
  s64 tmp___2 ;
  {
  ktime_add_us(*waketime, (u64 const )add_usec);
  tmp = ktime_get_real();
  tmp___0 = ktime_us_delta(tmp, *waketime);
  delta = (s32 )tmp___0;
  if (delta > 2500) {
    msleep((unsigned int )((delta + -1500) / 1000));
    tmp___1 = ktime_get_real();
    tmp___2 = ktime_us_delta(tmp___1, *waketime);
    newdelta = (s32 )tmp___2;
    delta = newdelta <= delta ? newdelta : 0;
  } else {
  }
  if (delta > 0) {
    __udelay((unsigned long )delta);
  } else {
  }
  return;
}
}
static char const __kstrtab_dvb_frontend_sleep_until[25U] =
  { 'd', 'v', 'b', '_',
        'f', 'r', 'o', 'n',
        't', 'e', 'n', 'd',
        '_', 's', 'l', 'e',
        'e', 'p', '_', 'u',
        'n', 't', 'i', 'l',
        '\000'};
struct kernel_symbol const __ksymtab_dvb_frontend_sleep_until ;
struct kernel_symbol const __ksymtab_dvb_frontend_sleep_until = {(unsigned long )(& dvb_frontend_sleep_until), (char const *)(& __kstrtab_dvb_frontend_sleep_until)};
static int dvb_frontend_start(struct dvb_frontend *fe )
{
  int ret ;
  struct dvb_frontend_private *fepriv ;
  struct task_struct *fe_thread ;
  struct _ddebug descriptor ;
  long tmp ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct task_struct *__k ;
  struct task_struct *tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  bool tmp___7 ;
  {
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_frontend_start";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s:\n";
  descriptor.lineno = 922U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s:\n",
                      "dvb_frontend_start");
  } else {
  }
  if ((unsigned long )fepriv->thread != (unsigned long )((struct task_struct *)0)) {
    if (fe->exit == 0U) {
      return (0);
    } else {
      dvb_frontend_stop(fe);
    }
  } else {
  }
  tmp___0 = get_current();
  tmp___1 = signal_pending___1(tmp___0);
  if (tmp___1 != 0) {
    return (-4);
  } else {
  }
  tmp___2 = down_interruptible(& fepriv->sem);
  if (tmp___2 != 0) {
    return (-4);
  } else {
  }
  fepriv->state = 1U;
  fe->exit = 0U;
  fepriv->thread = (struct task_struct *)0;
  __asm__ volatile ("mfence": : : "memory");
  tmp___3 = kthread_create_on_node(& dvb_frontend_thread, (void *)fe, -1, "kdvb-ad-%i-fe-%i",
                                   (fe->dvb)->num, fe->id);
  __k = tmp___3;
  tmp___4 = IS_ERR((void const *)__k);
  if (tmp___4) {
    tmp___5 = 0;
  } else {
    tmp___5 = 1;
  }
  if (tmp___5) {
    wake_up_process(__k);
  } else {
  }
  fe_thread = __k;
  tmp___7 = IS_ERR((void const *)fe_thread);
  if ((int )tmp___7) {
    tmp___6 = PTR_ERR((void const *)fe_thread);
    ret = (int )tmp___6;
    dev_warn((struct device const *)(fe->dvb)->device, "dvb_frontend_start: failed to start kthread (%d)\n",
             ret);
    up(& fepriv->sem);
    return (ret);
  } else {
  }
  fepriv->thread = fe_thread;
  return (0);
}
}
static void dvb_frontend_get_frequency_limits(struct dvb_frontend *fe , u32 *freq_min ,
                                              u32 *freq_max )
{
  __u32 _max1 ;
  u32 _max2 ;
  __u32 _min1 ;
  u32 _min2 ;
  {
  _max1 = fe->ops.info.frequency_min;
  _max2 = fe->ops.tuner_ops.info.frequency_min;
  *freq_min = _max1 > _max2 ? _max1 : _max2;
  if (fe->ops.info.frequency_max == 0U) {
    *freq_max = fe->ops.tuner_ops.info.frequency_max;
  } else
  if (fe->ops.tuner_ops.info.frequency_max == 0U) {
    *freq_max = fe->ops.info.frequency_max;
  } else {
    _min1 = fe->ops.info.frequency_max;
    _min2 = fe->ops.tuner_ops.info.frequency_max;
    *freq_max = _min1 < _min2 ? _min1 : _min2;
  }
  if (*freq_min == 0U || *freq_max == 0U) {
    dev_warn((struct device const *)(fe->dvb)->device, "DVB: adapter %i frontend %u frequency limits undefined - fix the driver\n",
             (fe->dvb)->num, fe->id);
  } else {
  }
  return;
}
}
static int dvb_frontend_check_parameters(struct dvb_frontend *fe )
{
  struct dtv_frontend_properties *c ;
  u32 freq_min ;
  u32 freq_max ;
  {
  c = & fe->dtv_property_cache;
  dvb_frontend_get_frequency_limits(fe, & freq_min, & freq_max);
  if ((freq_min != 0U && c->frequency < freq_min) || (freq_max != 0U && c->frequency > freq_max)) {
    dev_warn((struct device const *)(fe->dvb)->device, "DVB: adapter %i frontend %i frequency %u out of range (%u..%u)\n",
             (fe->dvb)->num, fe->id, c->frequency, freq_min, freq_max);
    return (-22);
  } else {
  }
  switch ((unsigned int )c->delivery_system) {
  case 5U: ;
  case 6U: ;
  case 17U: ;
  case 1U: ;
  case 18U: ;
  if ((fe->ops.info.symbol_rate_min != 0U && c->symbol_rate < fe->ops.info.symbol_rate_min) || (fe->ops.info.symbol_rate_max != 0U && c->symbol_rate > fe->ops.info.symbol_rate_max)) {
    dev_warn((struct device const *)(fe->dvb)->device, "DVB: adapter %i frontend %i symbol rate %u out of range (%u..%u)\n",
             (fe->dvb)->num, fe->id, c->symbol_rate, fe->ops.info.symbol_rate_min,
             fe->ops.info.symbol_rate_max);
    return (-22);
  } else {
  }
  default: ;
  goto ldv_27912;
  }
  ldv_27912: ;
  return (0);
}
}
static int dvb_frontend_clear_cache(struct dvb_frontend *fe )
{
  struct dtv_frontend_properties *c ;
  int i ;
  u32 delsys ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  c = & fe->dtv_property_cache;
  delsys = (u32 )c->delivery_system;
  memset((void *)c, 0, 160UL);
  c->delivery_system = (enum fe_delivery_system )delsys;
  c->state = 2U;
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_frontend_clear_cache";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s: Clearing cache for delivery system %d\n";
  descriptor.lineno = 1025U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s: Clearing cache for delivery system %d\n",
                      "dvb_frontend_clear_cache", (unsigned int )c->delivery_system);
  } else {
  }
  c->transmission_mode = 2;
  c->bandwidth_hz = 0U;
  c->guard_interval = 4;
  c->hierarchy = 4;
  c->symbol_rate = 0U;
  c->code_rate_HP = 9;
  c->code_rate_LP = 9;
  c->fec_inner = 9;
  c->rolloff = 3;
  c->voltage = 2;
  c->sectone = 1;
  c->pilot = 2;
  c->isdbt_partial_reception = 0U;
  c->isdbt_sb_mode = 0U;
  c->isdbt_sb_subchannel = 0U;
  c->isdbt_sb_segment_idx = 0U;
  c->isdbt_sb_segment_count = 0U;
  c->isdbt_layer_enabled = 0U;
  i = 0;
  goto ldv_27922;
  ldv_27921:
  c->layer[i].fec = 9;
  c->layer[i].modulation = 6;
  c->layer[i].interleaving = 0U;
  c->layer[i].segment_count = 0U;
  i = i + 1;
  ldv_27922: ;
  if (i <= 2) {
    goto ldv_27921;
  } else {
  }
  c->stream_id = 4294967295U;
  switch ((unsigned int )c->delivery_system) {
  case 5U: ;
  case 6U: ;
  case 17U:
  c->modulation = 0;
  c->rolloff = 0;
  goto ldv_27927;
  case 11U:
  c->modulation = 7;
  goto ldv_27927;
  case 9U:
  c->symbol_rate = 28860000U;
  c->rolloff = 0;
  c->bandwidth_hz = (c->symbol_rate / 100U) * 135U;
  goto ldv_27927;
  default:
  c->modulation = 6;
  goto ldv_27927;
  }
  ldv_27927:
  c->lna = 4294967295U;
  return (0);
}
}
static struct dtv_cmds_h dtv_cmds[70U] =
  { {0, 0U, (unsigned char)0, (unsigned char)0, 0U},
        {(char *)"DTV_TUNE", 1U, 1U, 0U, 0U},
        {(char *)"DTV_CLEAR", 2U, 1U, 0U, 0U},
        {(char *)"DTV_FREQUENCY", 3U, 1U, 0U, 0U},
        {(char *)"DTV_MODULATION", 4U, 1U, 0U, 0U},
        {(char *)"DTV_BANDWIDTH_HZ", 5U, 1U, 0U, 0U},
        {(char *)"DTV_INVERSION", 6U, 1U, 0U, 0U},
        {(char *)"DTV_DISEQC_MASTER", 7U, 1U, 1U, 0U},
        {(char *)"DTV_SYMBOL_RATE", 8U, 1U, 0U, 0U},
        {(char *)"DTV_INNER_FEC", 9U, 1U, 0U, 0U},
        {(char *)"DTV_VOLTAGE", 10U, 1U, 0U, 0U},
        {(char *)"DTV_TONE", 11U, 1U, 0U, 0U},
        {(char *)"DTV_PILOT", 12U, 1U, 0U, 0U},
        {(char *)"DTV_ROLLOFF", 13U, 1U, 0U, 0U},
        {(char *)"DTV_DISEQC_SLAVE_REPLY", 14U, 0U, 1U, 0U},
        {0, 0U, (unsigned char)0, (unsigned char)0, 0U},
        {0, 0U, (unsigned char)0, (unsigned char)0, 0U},
        {(char *)"DTV_DELIVERY_SYSTEM", 17U, 1U, 0U, 0U},
        {(char *)"DTV_ISDBT_PARTIAL_RECEPTION", 18U, 1U, 0U, 0U},
        {(char *)"DTV_ISDBT_SOUND_BROADCASTING", 19U, 1U, 0U, 0U},
        {(char *)"DTV_ISDBT_SB_SUBCHANNEL_ID", 20U, 1U, 0U, 0U},
        {(char *)"DTV_ISDBT_SB_SEGMENT_IDX", 21U, 1U, 0U, 0U},
        {(char *)"DTV_ISDBT_SB_SEGMENT_COUNT", 22U, 1U, 0U, 0U},
        {(char *)"DTV_ISDBT_LAYERA_FEC", 23U, 1U, 0U, 0U},
        {(char *)"DTV_ISDBT_LAYERA_MODULATION", 24U, 1U, 0U, 0U},
        {(char *)"DTV_ISDBT_LAYERA_SEGMENT_COUNT", 25U, 1U, 0U, 0U},
        {(char *)"DTV_ISDBT_LAYERA_TIME_INTERLEAVING", 26U, 1U, 0U, 0U},
        {(char *)"DTV_ISDBT_LAYERB_FEC", 27U, 1U, 0U, 0U},
        {(char *)"DTV_ISDBT_LAYERB_MODULATION", 28U, 1U, 0U, 0U},
        {(char *)"DTV_ISDBT_LAYERB_SEGMENT_COUNT", 29U, 1U, 0U, 0U},
        {(char *)"DTV_ISDBT_LAYERB_TIME_INTERLEAVING", 30U, 1U, 0U, 0U},
        {(char *)"DTV_ISDBT_LAYERC_FEC", 31U, 1U, 0U, 0U},
        {(char *)"DTV_ISDBT_LAYERC_MODULATION", 32U, 1U, 0U, 0U},
        {(char *)"DTV_ISDBT_LAYERC_SEGMENT_COUNT", 33U, 1U, 0U, 0U},
        {(char *)"DTV_ISDBT_LAYERC_TIME_INTERLEAVING", 34U, 1U, 0U, 0U},
        {(char *)"DTV_API_VERSION", 35U, 0U, 0U, 0U},
        {(char *)"DTV_CODE_RATE_HP", 36U, 1U, 0U, 0U},
        {(char *)"DTV_CODE_RATE_LP", 37U, 1U, 0U, 0U},
        {(char *)"DTV_GUARD_INTERVAL", 38U, 1U, 0U, 0U},
        {(char *)"DTV_TRANSMISSION_MODE", 39U, 1U, 0U, 0U},
        {(char *)"DTV_HIERARCHY", 40U, 1U, 0U, 0U},
        {(char *)"DTV_ISDBT_LAYER_ENABLED", 41U, 1U, 0U, 0U},
        {(char *)"DTV_STREAM_ID", 42U, 1U, 0U, 0U},
        {(char *)"DTV_DVBT2_PLP_ID_LEGACY", 43U, 1U, 0U, 0U},
        {(char *)"DTV_ENUM_DELSYS", 44U, 0U, 0U, 0U},
        {(char *)"DTV_ATSCMH_FIC_VER", 45U, 0U, 0U, 0U},
        {(char *)"DTV_ATSCMH_PARADE_ID", 46U, 1U, 0U, 0U},
        {(char *)"DTV_ATSCMH_NOG", 47U, 0U, 0U, 0U},
        {(char *)"DTV_ATSCMH_TNOG", 48U, 0U, 0U, 0U},
        {(char *)"DTV_ATSCMH_SGN", 49U, 0U, 0U, 0U},
        {(char *)"DTV_ATSCMH_PRC", 50U, 0U, 0U, 0U},
        {(char *)"DTV_ATSCMH_RS_FRAME_MODE", 51U, 0U, 0U, 0U},
        {(char *)"DTV_ATSCMH_RS_FRAME_ENSEMBLE", 52U, 1U, 0U, 0U},
        {(char *)"DTV_ATSCMH_RS_CODE_MODE_PRI", 53U, 0U, 0U, 0U},
        {(char *)"DTV_ATSCMH_RS_CODE_MODE_SEC", 54U, 0U, 0U, 0U},
        {(char *)"DTV_ATSCMH_SCCC_BLOCK_MODE", 55U, 0U, 0U, 0U},
        {(char *)"DTV_ATSCMH_SCCC_CODE_MODE_A", 56U, 0U, 0U, 0U},
        {(char *)"DTV_ATSCMH_SCCC_CODE_MODE_B", 57U, 0U, 0U, 0U},
        {(char *)"DTV_ATSCMH_SCCC_CODE_MODE_C", 58U, 0U, 0U, 0U},
        {(char *)"DTV_ATSCMH_SCCC_CODE_MODE_D", 59U, 0U, 0U, 0U},
        {(char *)"DTV_INTERLEAVING", 60U, 1U, 0U, 0U},
        {(char *)"DTV_LNA", 61U, 1U, 0U, 0U},
        {(char *)"DTV_STAT_SIGNAL_STRENGTH", 62U, 0U, 0U, 0U},
        {(char *)"DTV_STAT_CNR", 63U, 0U, 0U, 0U},
        {(char *)"DTV_STAT_PRE_ERROR_BIT_COUNT", 64U, 0U, 0U, 0U},
        {(char *)"DTV_STAT_PRE_TOTAL_BIT_COUNT", 65U, 0U, 0U, 0U},
        {(char *)"DTV_STAT_POST_ERROR_BIT_COUNT", 66U, 0U, 0U, 0U},
        {(char *)"DTV_STAT_POST_TOTAL_BIT_COUNT", 67U, 0U, 0U, 0U},
        {(char *)"DTV_STAT_ERROR_BLOCK_COUNT", 68U, 0U, 0U, 0U},
        {(char *)"DTV_STAT_TOTAL_BLOCK_COUNT", 69U, 0U, 0U, 0U}};
static void dtv_property_dump(struct dvb_frontend *fe , struct dtv_property *tvp )
{
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  {
  if (tvp->cmd == 0U || tvp->cmd > 69U) {
    dev_warn((struct device const *)(fe->dvb)->device, "%s: tvp.cmd = 0x%08x undefined\n",
             "dtv_property_dump", tvp->cmd);
    return;
  } else {
  }
  descriptor.modname = "dvb_core";
  descriptor.function = "dtv_property_dump";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s: tvp.cmd    = 0x%08x (%s)\n";
  descriptor.lineno = 1180U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s: tvp.cmd    = 0x%08x (%s)\n",
                      "dtv_property_dump", tvp->cmd, dtv_cmds[tvp->cmd].name);
  } else {
  }
  if ((unsigned int )dtv_cmds[tvp->cmd].buffer != 0U) {
    descriptor___0.modname = "dvb_core";
    descriptor___0.function = "dtv_property_dump";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
    descriptor___0.format = "%s: tvp.u.buffer.len = 0x%02x\n";
    descriptor___0.lineno = 1184U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(fe->dvb)->device,
                        "%s: tvp.u.buffer.len = 0x%02x\n", "dtv_property_dump", tvp->u.buffer.len);
    } else {
    }
    i = 0;
    goto ldv_27942;
    ldv_27941:
    descriptor___1.modname = "dvb_core";
    descriptor___1.function = "dtv_property_dump";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
    descriptor___1.format = "%s: tvp.u.buffer.data[0x%02x] = 0x%02x\n";
    descriptor___1.lineno = 1189U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)(fe->dvb)->device,
                        "%s: tvp.u.buffer.data[0x%02x] = 0x%02x\n", "dtv_property_dump",
                        i, (int )tvp->u.buffer.data[i]);
    } else {
    }
    i = i + 1;
    ldv_27942: ;
    if ((__u32 )i < tvp->u.buffer.len) {
      goto ldv_27941;
    } else {
    }
  } else {
    descriptor___2.modname = "dvb_core";
    descriptor___2.function = "dtv_property_dump";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
    descriptor___2.format = "%s: tvp.u.data = 0x%08x\n";
    descriptor___2.lineno = 1192U;
    descriptor___2.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)(fe->dvb)->device,
                        "%s: tvp.u.data = 0x%08x\n", "dtv_property_dump", tvp->u.data);
    } else {
    }
  }
  return;
}
}
static int dtv_property_cache_sync(struct dvb_frontend *fe , struct dtv_frontend_properties *c ,
                                   struct dvb_frontend_parameters const *p )
{
  enum dvbv3_emulation_type tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  {
  c->frequency = p->frequency;
  c->inversion = p->inversion;
  tmp = dvbv3_type((u32 )c->delivery_system);
  switch ((unsigned int )tmp) {
  case 1U:
  descriptor.modname = "dvb_core";
  descriptor.function = "dtv_property_cache_sync";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s: Preparing QPSK req\n";
  descriptor.lineno = 1209U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s: Preparing QPSK req\n",
                      "dtv_property_cache_sync");
  } else {
  }
  c->symbol_rate = p->u.qpsk.symbol_rate;
  c->fec_inner = p->u.qpsk.fec_inner;
  goto ldv_27953;
  case 2U:
  descriptor___0.modname = "dvb_core";
  descriptor___0.function = "dtv_property_cache_sync";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor___0.format = "%s: Preparing QAM req\n";
  descriptor___0.lineno = 1214U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(fe->dvb)->device,
                      "%s: Preparing QAM req\n", "dtv_property_cache_sync");
  } else {
  }
  c->symbol_rate = p->u.qam.symbol_rate;
  c->fec_inner = p->u.qam.fec_inner;
  c->modulation = p->u.qam.modulation;
  goto ldv_27953;
  case 3U:
  descriptor___1.modname = "dvb_core";
  descriptor___1.function = "dtv_property_cache_sync";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor___1.format = "%s: Preparing OFDM req\n";
  descriptor___1.lineno = 1220U;
  descriptor___1.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)(fe->dvb)->device,
                      "%s: Preparing OFDM req\n", "dtv_property_cache_sync");
  } else {
  }
  switch ((unsigned int )p->u.ofdm.bandwidth) {
  case 5U:
  c->bandwidth_hz = 10000000U;
  goto ldv_27959;
  case 0U:
  c->bandwidth_hz = 8000000U;
  goto ldv_27959;
  case 1U:
  c->bandwidth_hz = 7000000U;
  goto ldv_27959;
  case 2U:
  c->bandwidth_hz = 6000000U;
  goto ldv_27959;
  case 4U:
  c->bandwidth_hz = 5000000U;
  goto ldv_27959;
  case 6U:
  c->bandwidth_hz = 1712000U;
  goto ldv_27959;
  case 3U:
  c->bandwidth_hz = 0U;
  }
  ldv_27959:
  c->code_rate_HP = p->u.ofdm.code_rate_HP;
  c->code_rate_LP = p->u.ofdm.code_rate_LP;
  c->modulation = p->u.ofdm.constellation;
  c->transmission_mode = p->u.ofdm.transmission_mode;
  c->guard_interval = p->u.ofdm.guard_interval;
  c->hierarchy = p->u.ofdm.hierarchy_information;
  goto ldv_27953;
  case 4U:
  descriptor___2.modname = "dvb_core";
  descriptor___2.function = "dtv_property_cache_sync";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor___2.format = "%s: Preparing ATSC req\n";
  descriptor___2.lineno = 1253U;
  descriptor___2.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)(fe->dvb)->device,
                      "%s: Preparing ATSC req\n", "dtv_property_cache_sync");
  } else {
  }
  c->modulation = p->u.vsb.modulation;
  if ((unsigned int )c->delivery_system == 12U) {
    goto ldv_27953;
  } else {
  }
  if ((unsigned int )c->modulation == 7U || (unsigned int )c->modulation == 8U) {
    c->delivery_system = 11;
  } else {
    c->delivery_system = 2;
  }
  goto ldv_27953;
  case 0U:
  dev_err((struct device const *)(fe->dvb)->device, "%s: doesn\'t know how to handle a DVBv3 call to delivery system %i\n",
          "dtv_property_cache_sync", (unsigned int )c->delivery_system);
  return (-22);
  }
  ldv_27953: ;
  return (0);
}
}
static int dtv_property_legacy_params_sync(struct dvb_frontend *fe , struct dvb_frontend_parameters *p )
{
  struct dtv_frontend_properties const *c ;
  enum dvbv3_emulation_type tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  {
  c = (struct dtv_frontend_properties const *)(& fe->dtv_property_cache);
  p->frequency = c->frequency;
  p->inversion = c->inversion;
  tmp = dvbv3_type((u32 )c->delivery_system);
  switch ((unsigned int )tmp) {
  case 0U:
  dev_err((struct device const *)(fe->dvb)->device, "%s: doesn\'t know how to handle a DVBv3 call to delivery system %i\n",
          "dtv_property_legacy_params_sync", (unsigned int )c->delivery_system);
  return (-22);
  case 1U:
  descriptor.modname = "dvb_core";
  descriptor.function = "dtv_property_legacy_params_sync";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s: Preparing QPSK req\n";
  descriptor.lineno = 1290U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s: Preparing QPSK req\n",
                      "dtv_property_legacy_params_sync");
  } else {
  }
  p->u.qpsk.symbol_rate = c->symbol_rate;
  p->u.qpsk.fec_inner = c->fec_inner;
  goto ldv_27978;
  case 2U:
  descriptor___0.modname = "dvb_core";
  descriptor___0.function = "dtv_property_legacy_params_sync";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor___0.format = "%s: Preparing QAM req\n";
  descriptor___0.lineno = 1295U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(fe->dvb)->device,
                      "%s: Preparing QAM req\n", "dtv_property_legacy_params_sync");
  } else {
  }
  p->u.qam.symbol_rate = c->symbol_rate;
  p->u.qam.fec_inner = c->fec_inner;
  p->u.qam.modulation = c->modulation;
  goto ldv_27978;
  case 3U:
  descriptor___1.modname = "dvb_core";
  descriptor___1.function = "dtv_property_legacy_params_sync";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor___1.format = "%s: Preparing OFDM req\n";
  descriptor___1.lineno = 1301U;
  descriptor___1.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)(fe->dvb)->device,
                      "%s: Preparing OFDM req\n", "dtv_property_legacy_params_sync");
  } else {
  }
  switch (c->bandwidth_hz) {
  case 10000000U:
  p->u.ofdm.bandwidth = 5;
  goto ldv_27984;
  case 8000000U:
  p->u.ofdm.bandwidth = 0;
  goto ldv_27984;
  case 7000000U:
  p->u.ofdm.bandwidth = 1;
  goto ldv_27984;
  case 6000000U:
  p->u.ofdm.bandwidth = 2;
  goto ldv_27984;
  case 5000000U:
  p->u.ofdm.bandwidth = 4;
  goto ldv_27984;
  case 1712000U:
  p->u.ofdm.bandwidth = 6;
  goto ldv_27984;
  case 0U: ;
  default:
  p->u.ofdm.bandwidth = 3;
  }
  ldv_27984:
  p->u.ofdm.code_rate_HP = c->code_rate_HP;
  p->u.ofdm.code_rate_LP = c->code_rate_LP;
  p->u.ofdm.constellation = c->modulation;
  p->u.ofdm.transmission_mode = c->transmission_mode;
  p->u.ofdm.guard_interval = c->guard_interval;
  p->u.ofdm.hierarchy_information = c->hierarchy;
  goto ldv_27978;
  case 4U:
  descriptor___2.modname = "dvb_core";
  descriptor___2.function = "dtv_property_legacy_params_sync";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor___2.format = "%s: Preparing VSB req\n";
  descriptor___2.lineno = 1333U;
  descriptor___2.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)(fe->dvb)->device,
                      "%s: Preparing VSB req\n", "dtv_property_legacy_params_sync");
  } else {
  }
  p->u.vsb.modulation = c->modulation;
  goto ldv_27978;
  }
  ldv_27978: ;
  return (0);
}
}
static int dtv_get_frontend(struct dvb_frontend *fe , struct dvb_frontend_parameters *p_out )
{
  int r ;
  long tmp ;
  {
  if ((unsigned long )fe->ops.get_frontend != (unsigned long )((int (*)(struct dvb_frontend * ))0)) {
    r = (*(fe->ops.get_frontend))(fe);
    tmp = ldv__builtin_expect(r < 0, 0L);
    if (tmp != 0L) {
      return (r);
    } else {
    }
    if ((unsigned long )p_out != (unsigned long )((struct dvb_frontend_parameters *)0)) {
      dtv_property_legacy_params_sync(fe, p_out);
    } else {
    }
    return (0);
  } else {
  }
  return (0);
}
}
static int dvb_frontend_ioctl_legacy(struct file *file , unsigned int cmd , void *parg ) ;
static int dvb_frontend_ioctl_properties(struct file *file , unsigned int cmd , void *parg ) ;
static int dtv_property_process_get(struct dvb_frontend *fe , struct dtv_frontend_properties const *c ,
                                    struct dtv_property *tvp , struct file *file )
{
  int r ;
  int ncaps ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  switch (tvp->cmd) {
  case 44U:
  ncaps = 0;
  goto ldv_28017;
  ldv_28016:
  tvp->u.buffer.data[ncaps] = fe->ops.delsys[ncaps];
  ncaps = ncaps + 1;
  ldv_28017: ;
  if (ncaps <= 7 && (unsigned int )fe->ops.delsys[ncaps] != 0U) {
    goto ldv_28016;
  } else {
  }
  tvp->u.buffer.len = (__u32 )ncaps;
  goto ldv_28019;
  case 3U:
  tvp->u.data = c->frequency;
  goto ldv_28019;
  case 4U:
  tvp->u.data = (__u32 )c->modulation;
  goto ldv_28019;
  case 5U:
  tvp->u.data = c->bandwidth_hz;
  goto ldv_28019;
  case 6U:
  tvp->u.data = (__u32 )c->inversion;
  goto ldv_28019;
  case 8U:
  tvp->u.data = c->symbol_rate;
  goto ldv_28019;
  case 9U:
  tvp->u.data = (__u32 )c->fec_inner;
  goto ldv_28019;
  case 12U:
  tvp->u.data = (__u32 )c->pilot;
  goto ldv_28019;
  case 13U:
  tvp->u.data = (__u32 )c->rolloff;
  goto ldv_28019;
  case 17U:
  tvp->u.data = (__u32 )c->delivery_system;
  goto ldv_28019;
  case 10U:
  tvp->u.data = (__u32 )c->voltage;
  goto ldv_28019;
  case 11U:
  tvp->u.data = (__u32 )c->sectone;
  goto ldv_28019;
  case 35U:
  tvp->u.data = 1290U;
  goto ldv_28019;
  case 36U:
  tvp->u.data = (__u32 )c->code_rate_HP;
  goto ldv_28019;
  case 37U:
  tvp->u.data = (__u32 )c->code_rate_LP;
  goto ldv_28019;
  case 38U:
  tvp->u.data = (__u32 )c->guard_interval;
  goto ldv_28019;
  case 39U:
  tvp->u.data = (__u32 )c->transmission_mode;
  goto ldv_28019;
  case 40U:
  tvp->u.data = (__u32 )c->hierarchy;
  goto ldv_28019;
  case 60U:
  tvp->u.data = (__u32 )c->interleaving;
  goto ldv_28019;
  case 18U:
  tvp->u.data = (__u32 )c->isdbt_partial_reception;
  goto ldv_28019;
  case 19U:
  tvp->u.data = (__u32 )c->isdbt_sb_mode;
  goto ldv_28019;
  case 20U:
  tvp->u.data = (__u32 )c->isdbt_sb_subchannel;
  goto ldv_28019;
  case 21U:
  tvp->u.data = c->isdbt_sb_segment_idx;
  goto ldv_28019;
  case 22U:
  tvp->u.data = c->isdbt_sb_segment_count;
  goto ldv_28019;
  case 41U:
  tvp->u.data = (__u32 )c->isdbt_layer_enabled;
  goto ldv_28019;
  case 23U:
  tvp->u.data = (__u32 )c->layer[0].fec;
  goto ldv_28019;
  case 24U:
  tvp->u.data = (__u32 )c->layer[0].modulation;
  goto ldv_28019;
  case 25U:
  tvp->u.data = (__u32 )c->layer[0].segment_count;
  goto ldv_28019;
  case 26U:
  tvp->u.data = (__u32 )c->layer[0].interleaving;
  goto ldv_28019;
  case 27U:
  tvp->u.data = (__u32 )c->layer[1].fec;
  goto ldv_28019;
  case 28U:
  tvp->u.data = (__u32 )c->layer[1].modulation;
  goto ldv_28019;
  case 29U:
  tvp->u.data = (__u32 )c->layer[1].segment_count;
  goto ldv_28019;
  case 30U:
  tvp->u.data = (__u32 )c->layer[1].interleaving;
  goto ldv_28019;
  case 31U:
  tvp->u.data = (__u32 )c->layer[2].fec;
  goto ldv_28019;
  case 32U:
  tvp->u.data = (__u32 )c->layer[2].modulation;
  goto ldv_28019;
  case 33U:
  tvp->u.data = (__u32 )c->layer[2].segment_count;
  goto ldv_28019;
  case 34U:
  tvp->u.data = (__u32 )c->layer[2].interleaving;
  goto ldv_28019;
  case 42U: ;
  case 43U:
  tvp->u.data = c->stream_id;
  goto ldv_28019;
  case 45U:
  tvp->u.data = (__u32 )fe->dtv_property_cache.atscmh_fic_ver;
  goto ldv_28019;
  case 46U:
  tvp->u.data = (__u32 )fe->dtv_property_cache.atscmh_parade_id;
  goto ldv_28019;
  case 47U:
  tvp->u.data = (__u32 )fe->dtv_property_cache.atscmh_nog;
  goto ldv_28019;
  case 48U:
  tvp->u.data = (__u32 )fe->dtv_property_cache.atscmh_tnog;
  goto ldv_28019;
  case 49U:
  tvp->u.data = (__u32 )fe->dtv_property_cache.atscmh_sgn;
  goto ldv_28019;
  case 50U:
  tvp->u.data = (__u32 )fe->dtv_property_cache.atscmh_prc;
  goto ldv_28019;
  case 51U:
  tvp->u.data = (__u32 )fe->dtv_property_cache.atscmh_rs_frame_mode;
  goto ldv_28019;
  case 52U:
  tvp->u.data = (__u32 )fe->dtv_property_cache.atscmh_rs_frame_ensemble;
  goto ldv_28019;
  case 53U:
  tvp->u.data = (__u32 )fe->dtv_property_cache.atscmh_rs_code_mode_pri;
  goto ldv_28019;
  case 54U:
  tvp->u.data = (__u32 )fe->dtv_property_cache.atscmh_rs_code_mode_sec;
  goto ldv_28019;
  case 55U:
  tvp->u.data = (__u32 )fe->dtv_property_cache.atscmh_sccc_block_mode;
  goto ldv_28019;
  case 56U:
  tvp->u.data = (__u32 )fe->dtv_property_cache.atscmh_sccc_code_mode_a;
  goto ldv_28019;
  case 57U:
  tvp->u.data = (__u32 )fe->dtv_property_cache.atscmh_sccc_code_mode_b;
  goto ldv_28019;
  case 58U:
  tvp->u.data = (__u32 )fe->dtv_property_cache.atscmh_sccc_code_mode_c;
  goto ldv_28019;
  case 59U:
  tvp->u.data = (__u32 )fe->dtv_property_cache.atscmh_sccc_code_mode_d;
  goto ldv_28019;
  case 61U:
  tvp->u.data = c->lna;
  goto ldv_28019;
  case 62U:
  tvp->u.st = c->strength;
  goto ldv_28019;
  case 63U:
  tvp->u.st = c->cnr;
  goto ldv_28019;
  case 64U:
  tvp->u.st = c->pre_bit_error;
  goto ldv_28019;
  case 65U:
  tvp->u.st = c->pre_bit_count;
  goto ldv_28019;
  case 66U:
  tvp->u.st = c->post_bit_error;
  goto ldv_28019;
  case 67U:
  tvp->u.st = c->post_bit_count;
  goto ldv_28019;
  case 68U:
  tvp->u.st = c->block_error;
  goto ldv_28019;
  case 69U:
  tvp->u.st = c->block_count;
  goto ldv_28019;
  default:
  descriptor.modname = "dvb_core";
  descriptor.function = "dtv_property_process_get";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s: FE property %d doesn\'t exist\n";
  descriptor.lineno = 1585U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s: FE property %d doesn\'t exist\n",
                      "dtv_property_process_get", tvp->cmd);
  } else {
  }
  return (-22);
  }
  ldv_28019: ;
  if ((unsigned long )fe->ops.get_property != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                        struct dtv_property * ))0)) {
    r = (*(fe->ops.get_property))(fe, tvp);
    if (r < 0) {
      return (r);
    } else {
    }
  } else {
  }
  dtv_property_dump(fe, tvp);
  return (0);
}
}
static int dtv_set_frontend(struct dvb_frontend *fe ) ;
static bool is_dvbv3_delsys(u32 delsys )
{
  bool status ;
  {
  status = (bool )(((delsys == 3U || delsys == 1U) || delsys == 5U) || delsys == 11U);
  return (status);
}
}
static int emulate_delivery_system(struct dvb_frontend *fe , u32 delsys )
{
  int i ;
  struct dtv_frontend_properties *c ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  c = & fe->dtv_property_cache;
  c->delivery_system = (enum fe_delivery_system )delsys;
  if ((unsigned int )c->delivery_system == 8U) {
    descriptor.modname = "dvb_core";
    descriptor.function = "emulate_delivery_system";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
    descriptor.format = "%s: Using defaults for SYS_ISDBT\n";
    descriptor.lineno = 1636U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device,
                        "%s: Using defaults for SYS_ISDBT\n", "emulate_delivery_system");
    } else {
    }
    if (c->bandwidth_hz == 0U) {
      c->bandwidth_hz = 6000000U;
    } else {
    }
    c->isdbt_partial_reception = 0U;
    c->isdbt_sb_mode = 0U;
    c->isdbt_sb_subchannel = 0U;
    c->isdbt_sb_segment_idx = 0U;
    c->isdbt_sb_segment_count = 0U;
    c->isdbt_layer_enabled = 7U;
    i = 0;
    goto ldv_28100;
    ldv_28099:
    c->layer[i].fec = 9;
    c->layer[i].modulation = 6;
    c->layer[i].interleaving = 0U;
    c->layer[i].segment_count = 0U;
    i = i + 1;
    ldv_28100: ;
    if (i <= 2) {
      goto ldv_28099;
    } else {
    }
  } else {
  }
  descriptor___0.modname = "dvb_core";
  descriptor___0.function = "emulate_delivery_system";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor___0.format = "%s: change delivery system on cache to %d\n";
  descriptor___0.lineno = 1655U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(fe->dvb)->device,
                      "%s: change delivery system on cache to %d\n", "emulate_delivery_system",
                      (unsigned int )c->delivery_system);
  } else {
  }
  return (0);
}
}
static int dvbv5_set_delivery_system(struct dvb_frontend *fe , u32 desired_system )
{
  int ncaps ;
  u32 delsys ;
  struct dtv_frontend_properties *c ;
  enum dvbv3_emulation_type type ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  enum dvbv3_emulation_type tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  long tmp___5 ;
  int tmp___6 ;
  {
  delsys = 0U;
  c = & fe->dtv_property_cache;
  if (desired_system == 0U) {
    desired_system = (u32 )fe->ops.delsys[0];
  } else {
  }
  ncaps = 0;
  goto ldv_28114;
  ldv_28113: ;
  if ((u32 )fe->ops.delsys[ncaps] == desired_system) {
    c->delivery_system = (enum fe_delivery_system )desired_system;
    descriptor.modname = "dvb_core";
    descriptor.function = "dvbv5_set_delivery_system";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
    descriptor.format = "%s: Changing delivery system to %d\n";
    descriptor.lineno = 1705U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device,
                        "%s: Changing delivery system to %d\n", "dvbv5_set_delivery_system",
                        desired_system);
    } else {
    }
    return (0);
  } else {
  }
  ncaps = ncaps + 1;
  ldv_28114: ;
  if (ncaps <= 7 && (unsigned int )fe->ops.delsys[ncaps] != 0U) {
    goto ldv_28113;
  } else {
  }
  tmp___1 = is_dvbv3_delsys(desired_system);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    descriptor___0.modname = "dvb_core";
    descriptor___0.function = "dvbv5_set_delivery_system";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
    descriptor___0.format = "%s: Delivery system %d not supported.\n";
    descriptor___0.lineno = 1721U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(fe->dvb)->device,
                        "%s: Delivery system %d not supported.\n", "dvbv5_set_delivery_system",
                        desired_system);
    } else {
    }
    return (-22);
  } else {
  }
  type = dvbv3_type(desired_system);
  ncaps = 0;
  goto ldv_28118;
  ldv_28117:
  tmp___3 = dvbv3_type((u32 )fe->ops.delsys[ncaps]);
  if ((unsigned int )tmp___3 == (unsigned int )type) {
    delsys = (u32 )fe->ops.delsys[ncaps];
  } else {
  }
  ncaps = ncaps + 1;
  ldv_28118: ;
  if (ncaps <= 7 && (unsigned int )fe->ops.delsys[ncaps] != 0U) {
    goto ldv_28117;
  } else {
  }
  if (delsys == 0U) {
    descriptor___1.modname = "dvb_core";
    descriptor___1.function = "dvbv5_set_delivery_system";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
    descriptor___1.format = "%s: Delivery system %d not supported on emulation mode.\n";
    descriptor___1.lineno = 1742U;
    descriptor___1.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)(fe->dvb)->device,
                        "%s: Delivery system %d not supported on emulation mode.\n",
                        "dvbv5_set_delivery_system", desired_system);
    } else {
    }
    return (-22);
  } else {
  }
  descriptor___2.modname = "dvb_core";
  descriptor___2.function = "dvbv5_set_delivery_system";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor___2.format = "%s: Using delivery system %d emulated as if it were %d\n";
  descriptor___2.lineno = 1748U;
  descriptor___2.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)(fe->dvb)->device,
                      "%s: Using delivery system %d emulated as if it were %d\n",
                      "dvbv5_set_delivery_system", delsys, desired_system);
  } else {
  }
  tmp___6 = emulate_delivery_system(fe, desired_system);
  return (tmp___6);
}
}
static int dvbv3_set_delivery_system(struct dvb_frontend *fe )
{
  int ncaps ;
  u32 delsys ;
  struct dtv_frontend_properties *c ;
  struct _ddebug descriptor ;
  long tmp ;
  bool tmp___0 ;
  enum dvbv3_emulation_type tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  int tmp___3 ;
  {
  delsys = 0U;
  c = & fe->dtv_property_cache;
  if ((unsigned int )c->delivery_system == 0U) {
    c->delivery_system = (enum fe_delivery_system )fe->ops.delsys[0];
  } else {
  }
  tmp___0 = is_dvbv3_delsys((u32 )c->delivery_system);
  if ((int )tmp___0) {
    descriptor.modname = "dvb_core";
    descriptor.function = "dvbv3_set_delivery_system";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
    descriptor.format = "%s: Using delivery system to %d\n";
    descriptor.lineno = 1798U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device,
                        "%s: Using delivery system to %d\n", "dvbv3_set_delivery_system",
                        (unsigned int )c->delivery_system);
    } else {
    }
    return (0);
  } else {
  }
  ncaps = 0;
  goto ldv_28132;
  ldv_28131:
  tmp___1 = dvbv3_type((u32 )fe->ops.delsys[ncaps]);
  if ((unsigned int )tmp___1 != 0U) {
    delsys = (u32 )fe->ops.delsys[ncaps];
    goto ldv_28130;
  } else {
  }
  ncaps = ncaps + 1;
  ldv_28132: ;
  if (ncaps <= 7 && (unsigned int )fe->ops.delsys[ncaps] != 0U) {
    goto ldv_28131;
  } else {
  }
  ldv_28130: ;
  if (delsys == 0U) {
    descriptor___0.modname = "dvb_core";
    descriptor___0.function = "dvbv3_set_delivery_system";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
    descriptor___0.format = "%s: Couldn\'t find a delivery system that works with FE_SET_FRONTEND\n";
    descriptor___0.lineno = 1817U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(fe->dvb)->device,
                        "%s: Couldn\'t find a delivery system that works with FE_SET_FRONTEND\n",
                        "dvbv3_set_delivery_system");
    } else {
    }
    return (-22);
  } else {
  }
  tmp___3 = emulate_delivery_system(fe, delsys);
  return (tmp___3);
}
}
static int dtv_property_process_set(struct dvb_frontend *fe , struct dtv_property *tvp ,
                                    struct file *file )
{
  int r ;
  struct dtv_frontend_properties *c ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  r = 0;
  c = & fe->dtv_property_cache;
  if ((unsigned long )fe->ops.set_property != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                        struct dtv_property * ))0)) {
    r = (*(fe->ops.set_property))(fe, tvp);
    if (r < 0) {
      return (r);
    } else {
    }
  } else {
  }
  switch (tvp->cmd) {
  case 2U:
  dvb_frontend_clear_cache(fe);
  goto ldv_28142;
  case 1U:
  c->state = tvp->cmd;
  descriptor.modname = "dvb_core";
  descriptor.function = "dtv_property_process_set";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s: Finalised property cache\n";
  descriptor.lineno = 1852U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s: Finalised property cache\n",
                      "dtv_property_process_set");
  } else {
  }
  r = dtv_set_frontend(fe);
  goto ldv_28142;
  case 3U:
  c->frequency = tvp->u.data;
  goto ldv_28142;
  case 4U:
  c->modulation = (enum fe_modulation )tvp->u.data;
  goto ldv_28142;
  case 5U:
  c->bandwidth_hz = tvp->u.data;
  goto ldv_28142;
  case 6U:
  c->inversion = (enum fe_spectral_inversion )tvp->u.data;
  goto ldv_28142;
  case 8U:
  c->symbol_rate = tvp->u.data;
  goto ldv_28142;
  case 9U:
  c->fec_inner = (enum fe_code_rate )tvp->u.data;
  goto ldv_28142;
  case 12U:
  c->pilot = (enum fe_pilot )tvp->u.data;
  goto ldv_28142;
  case 13U:
  c->rolloff = (enum fe_rolloff )tvp->u.data;
  goto ldv_28142;
  case 17U:
  r = dvbv5_set_delivery_system(fe, tvp->u.data);
  goto ldv_28142;
  case 10U:
  c->voltage = (enum fe_sec_voltage )tvp->u.data;
  r = dvb_frontend_ioctl_legacy(file, 28483U, (void *)((long )c->voltage));
  goto ldv_28142;
  case 11U:
  c->sectone = (enum fe_sec_tone_mode )tvp->u.data;
  r = dvb_frontend_ioctl_legacy(file, 28482U, (void *)((long )c->sectone));
  goto ldv_28142;
  case 36U:
  c->code_rate_HP = (enum fe_code_rate )tvp->u.data;
  goto ldv_28142;
  case 37U:
  c->code_rate_LP = (enum fe_code_rate )tvp->u.data;
  goto ldv_28142;
  case 38U:
  c->guard_interval = (enum fe_guard_interval )tvp->u.data;
  goto ldv_28142;
  case 39U:
  c->transmission_mode = (enum fe_transmit_mode )tvp->u.data;
  goto ldv_28142;
  case 40U:
  c->hierarchy = (enum fe_hierarchy )tvp->u.data;
  goto ldv_28142;
  case 60U:
  c->interleaving = (enum fe_interleaving )tvp->u.data;
  goto ldv_28142;
  case 18U:
  c->isdbt_partial_reception = (u8 )tvp->u.data;
  goto ldv_28142;
  case 19U:
  c->isdbt_sb_mode = (u8 )tvp->u.data;
  goto ldv_28142;
  case 20U:
  c->isdbt_sb_subchannel = (u8 )tvp->u.data;
  goto ldv_28142;
  case 21U:
  c->isdbt_sb_segment_idx = tvp->u.data;
  goto ldv_28142;
  case 22U:
  c->isdbt_sb_segment_count = tvp->u.data;
  goto ldv_28142;
  case 41U:
  c->isdbt_layer_enabled = (u8 )tvp->u.data;
  goto ldv_28142;
  case 23U:
  c->layer[0].fec = (enum fe_code_rate )tvp->u.data;
  goto ldv_28142;
  case 24U:
  c->layer[0].modulation = (enum fe_modulation )tvp->u.data;
  goto ldv_28142;
  case 25U:
  c->layer[0].segment_count = (u8 )tvp->u.data;
  goto ldv_28142;
  case 26U:
  c->layer[0].interleaving = (u8 )tvp->u.data;
  goto ldv_28142;
  case 27U:
  c->layer[1].fec = (enum fe_code_rate )tvp->u.data;
  goto ldv_28142;
  case 28U:
  c->layer[1].modulation = (enum fe_modulation )tvp->u.data;
  goto ldv_28142;
  case 29U:
  c->layer[1].segment_count = (u8 )tvp->u.data;
  goto ldv_28142;
  case 30U:
  c->layer[1].interleaving = (u8 )tvp->u.data;
  goto ldv_28142;
  case 31U:
  c->layer[2].fec = (enum fe_code_rate )tvp->u.data;
  goto ldv_28142;
  case 32U:
  c->layer[2].modulation = (enum fe_modulation )tvp->u.data;
  goto ldv_28142;
  case 33U:
  c->layer[2].segment_count = (u8 )tvp->u.data;
  goto ldv_28142;
  case 34U:
  c->layer[2].interleaving = (u8 )tvp->u.data;
  goto ldv_28142;
  case 42U: ;
  case 43U:
  c->stream_id = tvp->u.data;
  goto ldv_28142;
  case 46U:
  fe->dtv_property_cache.atscmh_parade_id = (u8 )tvp->u.data;
  goto ldv_28142;
  case 52U:
  fe->dtv_property_cache.atscmh_rs_frame_ensemble = (u8 )tvp->u.data;
  goto ldv_28142;
  case 61U:
  c->lna = tvp->u.data;
  if ((unsigned long )fe->ops.set_lna != (unsigned long )((int (*)(struct dvb_frontend * ))0)) {
    r = (*(fe->ops.set_lna))(fe);
  } else {
  }
  if (r < 0) {
    c->lna = 4294967295U;
  } else {
  }
  goto ldv_28142;
  default: ;
  return (-22);
  }
  ldv_28142: ;
  return (r);
}
}
static int dvb_frontend_ioctl(struct file *file , unsigned int cmd , void *parg )
{
  struct dvb_device *dvbdev ;
  struct dvb_frontend *fe ;
  struct dtv_frontend_properties *c ;
  struct dvb_frontend_private *fepriv ;
  int err ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  fe = (struct dvb_frontend *)dvbdev->priv;
  c = & fe->dtv_property_cache;
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  err = -95;
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_frontend_ioctl";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s: (%d)\n";
  descriptor.lineno = 2006U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s: (%d)\n",
                      "dvb_frontend_ioctl", cmd & 255U);
  } else {
  }
  tmp___0 = down_interruptible(& fepriv->sem);
  if (tmp___0 != 0) {
    return (-512);
  } else {
  }
  if (fe->exit != 0U) {
    up(& fepriv->sem);
    return (-19);
  } else {
  }
  if ((file->f_flags & 3U) == 0U && ((cmd >> 30 != 2U || cmd == 2150133582U) || cmd == 2148298560U)) {
    up(& fepriv->sem);
    return (-1);
  } else {
  }
  if (cmd == 1074818898U || cmd == 2148560723U) {
    err = dvb_frontend_ioctl_properties(file, cmd, parg);
  } else {
    c->state = 0U;
    err = dvb_frontend_ioctl_legacy(file, cmd, parg);
  }
  up(& fepriv->sem);
  return (err);
}
}
static int dvb_frontend_ioctl_properties(struct file *file , unsigned int cmd , void *parg )
{
  struct dvb_device *dvbdev ;
  struct dvb_frontend *fe ;
  struct dvb_frontend_private *fepriv ;
  struct dtv_frontend_properties *c ;
  int err ;
  struct dtv_properties *tvps ;
  struct dtv_property *tvp ;
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  void *tmp___2 ;
  unsigned long tmp___3 ;
  struct _ddebug descriptor___2 ;
  long tmp___4 ;
  struct _ddebug descriptor___3 ;
  long tmp___5 ;
  struct _ddebug descriptor___4 ;
  long tmp___6 ;
  void *tmp___7 ;
  unsigned long tmp___8 ;
  unsigned long tmp___9 ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  fe = (struct dvb_frontend *)dvbdev->priv;
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  c = & fe->dtv_property_cache;
  err = 0;
  tvps = (struct dtv_properties *)parg;
  tvp = (struct dtv_property *)0;
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_frontend_ioctl_properties";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s:\n";
  descriptor.lineno = 2046U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s:\n",
                      "dvb_frontend_ioctl_properties");
  } else {
  }
  if (cmd == 1074818898U) {
    descriptor___0.modname = "dvb_core";
    descriptor___0.function = "dvb_frontend_ioctl_properties";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
    descriptor___0.format = "%s: properties.num = %d\n";
    descriptor___0.lineno = 2049U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(fe->dvb)->device,
                        "%s: properties.num = %d\n", "dvb_frontend_ioctl_properties",
                        tvps->num);
    } else {
    }
    descriptor___1.modname = "dvb_core";
    descriptor___1.function = "dvb_frontend_ioctl_properties";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
    descriptor___1.format = "%s: properties.props = %p\n";
    descriptor___1.lineno = 2050U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)(fe->dvb)->device,
                        "%s: properties.props = %p\n", "dvb_frontend_ioctl_properties",
                        tvps->props);
    } else {
    }
    if (tvps->num == 0U || tvps->num > 64U) {
      return (-22);
    } else {
    }
    tmp___2 = kmalloc((unsigned long )tvps->num * 76UL, 208U);
    tvp = (struct dtv_property *)tmp___2;
    if ((unsigned long )tvp == (unsigned long )((struct dtv_property *)0)) {
      err = -12;
      goto out;
    } else {
    }
    tmp___3 = copy_from_user((void *)tvp, (void const *)tvps->props, (unsigned long )tvps->num * 76UL);
    if (tmp___3 != 0UL) {
      err = -14;
      goto out;
    } else {
    }
    i = 0;
    goto ldv_28218;
    ldv_28217:
    err = dtv_property_process_set(fe, tvp + (unsigned long )i, file);
    if (err < 0) {
      goto out;
    } else {
    }
    (tvp + (unsigned long )i)->result = err;
    i = i + 1;
    ldv_28218: ;
    if ((__u32 )i < tvps->num) {
      goto ldv_28217;
    } else {
    }
    if (c->state == 1U) {
      descriptor___2.modname = "dvb_core";
      descriptor___2.function = "dvb_frontend_ioctl_properties";
      descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
      descriptor___2.format = "%s: Property cache is full, tuning\n";
      descriptor___2.lineno = 2077U;
      descriptor___2.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      if (tmp___4 != 0L) {
        __dynamic_dev_dbg(& descriptor___2, (struct device const *)(fe->dvb)->device,
                          "%s: Property cache is full, tuning\n", "dvb_frontend_ioctl_properties");
      } else {
      }
    } else {
    }
  } else
  if (cmd == 2148560723U) {
    descriptor___3.modname = "dvb_core";
    descriptor___3.function = "dvb_frontend_ioctl_properties";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
    descriptor___3.format = "%s: properties.num = %d\n";
    descriptor___3.lineno = 2080U;
    descriptor___3.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)(fe->dvb)->device,
                        "%s: properties.num = %d\n", "dvb_frontend_ioctl_properties",
                        tvps->num);
    } else {
    }
    descriptor___4.modname = "dvb_core";
    descriptor___4.function = "dvb_frontend_ioctl_properties";
    descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
    descriptor___4.format = "%s: properties.props = %p\n";
    descriptor___4.lineno = 2081U;
    descriptor___4.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_dev_dbg(& descriptor___4, (struct device const *)(fe->dvb)->device,
                        "%s: properties.props = %p\n", "dvb_frontend_ioctl_properties",
                        tvps->props);
    } else {
    }
    if (tvps->num == 0U || tvps->num > 64U) {
      return (-22);
    } else {
    }
    tmp___7 = kmalloc((unsigned long )tvps->num * 76UL, 208U);
    tvp = (struct dtv_property *)tmp___7;
    if ((unsigned long )tvp == (unsigned long )((struct dtv_property *)0)) {
      err = -12;
      goto out;
    } else {
    }
    tmp___8 = copy_from_user((void *)tvp, (void const *)tvps->props, (unsigned long )tvps->num * 76UL);
    if (tmp___8 != 0UL) {
      err = -14;
      goto out;
    } else {
    }
    if (fepriv->state != 1U) {
      err = dtv_get_frontend(fe, (struct dvb_frontend_parameters *)0);
      if (err < 0) {
        goto out;
      } else {
      }
    } else {
    }
    i = 0;
    goto ldv_28224;
    ldv_28223:
    err = dtv_property_process_get(fe, (struct dtv_frontend_properties const *)c,
                                   tvp + (unsigned long )i, file);
    if (err < 0) {
      goto out;
    } else {
    }
    (tvp + (unsigned long )i)->result = err;
    i = i + 1;
    ldv_28224: ;
    if ((__u32 )i < tvps->num) {
      goto ldv_28223;
    } else {
    }
    tmp___9 = copy_to_user((void *)tvps->props, (void const *)tvp, (unsigned long )tvps->num * 76UL);
    if (tmp___9 != 0UL) {
      err = -14;
      goto out;
    } else {
    }
  } else {
    err = -95;
  }
  out:
  kfree((void const *)tvp);
  return (err);
}
}
static int dtv_set_frontend(struct dvb_frontend *fe )
{
  struct dvb_frontend_private *fepriv ;
  struct dtv_frontend_properties *c ;
  struct dvb_frontend_tune_settings fetunesettings ;
  u32 rolloff ;
  int tmp ;
  u32 quot ;
  u32 rem ;
  int tmp___0 ;
  {
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  c = & fe->dtv_property_cache;
  rolloff = 0U;
  tmp = dvb_frontend_check_parameters(fe);
  if (tmp < 0) {
    return (-22);
  } else {
  }
  dtv_property_legacy_params_sync(fe, & fepriv->parameters_out);
  switch ((unsigned int )c->delivery_system) {
  case 11U: ;
  case 2U:
  c->bandwidth_hz = 6000000U;
  goto ldv_28235;
  case 1U:
  rolloff = 115U;
  goto ldv_28235;
  case 18U:
  rolloff = 113U;
  goto ldv_28235;
  case 5U: ;
  case 17U: ;
  case 9U:
  rolloff = 135U;
  goto ldv_28235;
  case 6U: ;
  switch ((unsigned int )c->rolloff) {
  case 1U:
  rolloff = 120U;
  goto ldv_28243;
  case 2U:
  rolloff = 125U;
  goto ldv_28243;
  default: ;
  case 0U:
  rolloff = 135U;
  }
  ldv_28243: ;
  goto ldv_28235;
  default: ;
  goto ldv_28235;
  }
  ldv_28235: ;
  if (rolloff != 0U) {
    quot = c->symbol_rate / 100U;
    rem = c->symbol_rate % 100U;
    c->bandwidth_hz = quot * rolloff + (rem * rolloff) / 100U;
  } else {
  }
  if (dvb_force_auto_inversion != 0) {
    c->inversion = 2;
  } else {
  }
  if ((unsigned int )c->hierarchy == 0U && (unsigned int )c->code_rate_LP == 0U) {
    c->code_rate_LP = 9;
  } else {
  }
  memset((void *)(& fetunesettings), 0, 12UL);
  if ((unsigned long )fe->ops.get_tune_settings != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                             struct dvb_frontend_tune_settings * ))0)) {
    tmp___0 = (*(fe->ops.get_tune_settings))(fe, & fetunesettings);
    if (tmp___0 == 0) {
      fepriv->min_delay = (unsigned int )((fetunesettings.min_delay_ms * 250) / 1000);
      fepriv->max_drift = (unsigned int )fetunesettings.max_drift;
      fepriv->step_size = (unsigned int )fetunesettings.step_size;
    } else {
      goto _L;
    }
  } else {
    _L:
    switch ((unsigned int )c->delivery_system) {
    case 5U: ;
    case 6U: ;
    case 9U: ;
    case 17U: ;
    case 1U: ;
    case 18U:
    fepriv->min_delay = 12U;
    fepriv->step_size = c->symbol_rate / 16000U;
    fepriv->max_drift = c->symbol_rate / 2000U;
    goto ldv_28257;
    case 3U: ;
    case 16U: ;
    case 8U: ;
    case 13U:
    fepriv->min_delay = 12U;
    fepriv->step_size = fe->ops.info.frequency_stepsize * 2U;
    fepriv->max_drift = fe->ops.info.frequency_stepsize * 2U + 1U;
    goto ldv_28257;
    default:
    fepriv->min_delay = 12U;
    fepriv->step_size = 0U;
    fepriv->max_drift = 0U;
    goto ldv_28257;
    }
    ldv_28257: ;
  }
  if (dvb_override_tune_delay > 0) {
    fepriv->min_delay = (unsigned int )((dvb_override_tune_delay * 250) / 1000);
  } else {
  }
  fepriv->state = 2U;
  fepriv->algo_status = (enum dvbfe_search )((int )fepriv->algo_status | 16);
  dvb_frontend_clear_events(fe);
  dvb_frontend_add_event(fe, 0);
  dvb_frontend_wakeup(fe);
  fepriv->status = 0;
  return (0);
}
}
static int dvb_frontend_ioctl_legacy(struct file *file , unsigned int cmd , void *parg )
{
  struct dvb_device *dvbdev ;
  struct dvb_frontend *fe ;
  struct dvb_frontend_private *fepriv ;
  struct dtv_frontend_properties *c ;
  int err ;
  struct dvb_frontend_info *info ;
  enum dvbv3_emulation_type tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  enum fe_status *status ;
  struct dvb_diseqc_master_cmd *cmd___0 ;
  unsigned long swcmd ;
  ktime_t nexttime ;
  ktime_t tv[10U] ;
  int i ;
  u8 last ;
  s64 tmp___1 ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  fe = (struct dvb_frontend *)dvbdev->priv;
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  c = & fe->dtv_property_cache;
  err = -95;
  switch (cmd) {
  case 2158522173U:
  info = (struct dvb_frontend_info *)parg;
  memcpy((void *)info, (void const *)(& fe->ops.info), 168UL);
  dvb_frontend_get_frequency_limits(fe, & info->frequency_min, & info->frequency_max);
  tmp = dvbv3_type((u32 )c->delivery_system);
  switch ((unsigned int )tmp) {
  case 1U:
  info->type = 0;
  goto ldv_28276;
  case 4U:
  info->type = 3;
  goto ldv_28276;
  case 2U:
  info->type = 1;
  goto ldv_28276;
  case 3U:
  info->type = 2;
  goto ldv_28276;
  default:
  dev_err((struct device const *)(fe->dvb)->device, "%s: doesn\'t know how to handle a DVBv3 call to delivery system %i\n",
          "dvb_frontend_ioctl_legacy", (unsigned int )c->delivery_system);
  fe->ops.info.type = 2;
  }
  ldv_28276:
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_frontend_ioctl_legacy";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s: current delivery system on cache: %d, V3 type: %d\n";
  descriptor.lineno = 2315U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s: current delivery system on cache: %d, V3 type: %d\n",
                      "dvb_frontend_ioctl_legacy", (unsigned int )c->delivery_system,
                      (unsigned int )fe->ops.info.type);
  } else {
  }
  info->caps = (enum fe_caps )((unsigned int )info->caps | 1U);
  err = 0;
  goto ldv_28283;
  case 2147774277U:
  status = (enum fe_status *)parg;
  if (fepriv->state == 2U || fepriv->state == 256U) {
    err = 0;
    *status = 0;
    goto ldv_28283;
  } else {
  }
  if ((unsigned long )fe->ops.read_status != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                       enum fe_status * ))0)) {
    err = (*(fe->ops.read_status))(fe, status);
  } else {
  }
  goto ldv_28283;
  case 2147774278U: ;
  if ((unsigned long )fe->ops.read_ber != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                    u32 * ))0)) {
    if ((unsigned long )fepriv->thread != (unsigned long )((struct task_struct *)0)) {
      err = (*(fe->ops.read_ber))(fe, (u32 *)parg);
    } else {
      err = -11;
    }
  } else {
  }
  goto ldv_28283;
  case 2147643207U: ;
  if ((unsigned long )fe->ops.read_signal_strength != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                u16 * ))0)) {
    if ((unsigned long )fepriv->thread != (unsigned long )((struct task_struct *)0)) {
      err = (*(fe->ops.read_signal_strength))(fe, (u16 *)parg);
    } else {
      err = -11;
    }
  } else {
  }
  goto ldv_28283;
  case 2147643208U: ;
  if ((unsigned long )fe->ops.read_snr != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                    u16 * ))0)) {
    if ((unsigned long )fepriv->thread != (unsigned long )((struct task_struct *)0)) {
      err = (*(fe->ops.read_snr))(fe, (u16 *)parg);
    } else {
      err = -11;
    }
  } else {
  }
  goto ldv_28283;
  case 2147774281U: ;
  if ((unsigned long )fe->ops.read_ucblocks != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                         u32 * ))0)) {
    if ((unsigned long )fepriv->thread != (unsigned long )((struct task_struct *)0)) {
      err = (*(fe->ops.read_ucblocks))(fe, (u32 *)parg);
    } else {
      err = -11;
    }
  } else {
  }
  goto ldv_28283;
  case 28478U: ;
  if ((unsigned long )fe->ops.diseqc_reset_overload != (unsigned long )((int (*)(struct dvb_frontend * ))0)) {
    err = (*(fe->ops.diseqc_reset_overload))(fe);
    fepriv->state = 128U;
    fepriv->status = 0;
  } else {
  }
  goto ldv_28283;
  case 1074229055U: ;
  if ((unsigned long )fe->ops.diseqc_send_master_cmd != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                  struct dvb_diseqc_master_cmd * ))0)) {
    cmd___0 = (struct dvb_diseqc_master_cmd *)parg;
    if ((unsigned int )cmd___0->msg_len > 6U) {
      err = -22;
      goto ldv_28283;
    } else {
    }
    err = (*(fe->ops.diseqc_send_master_cmd))(fe, cmd___0);
    fepriv->state = 128U;
    fepriv->status = 0;
  } else {
  }
  goto ldv_28283;
  case 28481U: ;
  if ((unsigned long )fe->ops.diseqc_send_burst != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                             enum fe_sec_mini_cmd ))0)) {
    err = (*(fe->ops.diseqc_send_burst))(fe, (enum fe_sec_mini_cmd )((long )parg));
    fepriv->state = 128U;
    fepriv->status = 0;
  } else {
  }
  goto ldv_28283;
  case 28482U: ;
  if ((unsigned long )fe->ops.set_tone != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                    enum fe_sec_tone_mode ))0)) {
    err = (*(fe->ops.set_tone))(fe, (enum fe_sec_tone_mode )((long )parg));
    fepriv->tone = (int )((long )parg);
    fepriv->state = 128U;
    fepriv->status = 0;
  } else {
  }
  goto ldv_28283;
  case 28483U: ;
  if ((unsigned long )fe->ops.set_voltage != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                       enum fe_sec_voltage ))0)) {
    err = (*(fe->ops.set_voltage))(fe, (enum fe_sec_voltage )((long )parg));
    fepriv->voltage = (int )((long )parg);
    fepriv->state = 128U;
    fepriv->status = 0;
  } else {
  }
  goto ldv_28283;
  case 28496U: ;
  if ((unsigned long )fe->ops.dishnetwork_send_legacy_command != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                           unsigned long ))0)) {
    err = (*(fe->ops.dishnetwork_send_legacy_command))(fe, (unsigned long )parg);
    fepriv->state = 128U;
    fepriv->status = 0;
  } else
  if ((unsigned long )fe->ops.set_voltage != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                       enum fe_sec_voltage ))0)) {
    swcmd = (unsigned long )parg << 1;
    last = 1U;
    if (dvb_frontend_debug != 0) {
      printk("%s switch command: 0x%04lx\n", "dvb_frontend_ioctl_legacy", swcmd);
    } else {
    }
    nexttime = ktime_get_real();
    if (dvb_frontend_debug != 0) {
      tv[0] = nexttime;
    } else {
    }
    (*(fe->ops.set_voltage))(fe, 1);
    dvb_frontend_sleep_until(& nexttime, 32000U);
    i = 0;
    goto ldv_28303;
    ldv_28302: ;
    if (dvb_frontend_debug != 0) {
      tv[i + 1] = ktime_get_real();
    } else {
    }
    if ((swcmd & 1UL) != (unsigned long )last) {
      (*(fe->ops.set_voltage))(fe, (unsigned int )last == 0U);
      last = (unsigned int )last == 0U;
    } else {
    }
    swcmd = swcmd >> 1;
    if (i != 8) {
      dvb_frontend_sleep_until(& nexttime, 8000U);
    } else {
    }
    i = i + 1;
    ldv_28303: ;
    if (i <= 8) {
      goto ldv_28302;
    } else {
    }
    if (dvb_frontend_debug != 0) {
      printk("%s(%d): switch delay (should be 32k followed by all 8k\n", "dvb_frontend_ioctl_legacy",
             (fe->dvb)->num);
      i = 1;
      goto ldv_28306;
      ldv_28305:
      tmp___1 = ktime_us_delta(tv[i], tv[i + -1]);
      printk("%d: %d\n", i, (int )tmp___1);
      i = i + 1;
      ldv_28306: ;
      if (i <= 9) {
        goto ldv_28305;
      } else {
      }
    } else {
    }
    err = 0;
    fepriv->state = 128U;
    fepriv->status = 0;
  } else {
  }
  goto ldv_28283;
  case 2148298560U: ;
  if ((unsigned long )fe->ops.diseqc_recv_slave_reply != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                   struct dvb_diseqc_slave_reply * ))0)) {
    err = (*(fe->ops.diseqc_recv_slave_reply))(fe, (struct dvb_diseqc_slave_reply *)parg);
  } else {
  }
  goto ldv_28283;
  case 28484U: ;
  if ((unsigned long )fe->ops.enable_high_lnb_voltage != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                   long ))0)) {
    err = (*(fe->ops.enable_high_lnb_voltage))(fe, (long )parg);
  } else {
  }
  goto ldv_28283;
  case 1076129612U:
  err = dvbv3_set_delivery_system(fe);
  if (err != 0) {
    goto ldv_28283;
  } else {
  }
  err = dtv_property_cache_sync(fe, c, (struct dvb_frontend_parameters const *)parg);
  if (err != 0) {
    goto ldv_28283;
  } else {
  }
  err = dtv_set_frontend(fe);
  goto ldv_28283;
  case 2150133582U:
  err = dvb_frontend_get_event(fe, (struct dvb_frontend_event *)parg, (int )file->f_flags);
  goto ldv_28283;
  case 2149871437U:
  err = dtv_get_frontend(fe, (struct dvb_frontend_parameters *)parg);
  goto ldv_28283;
  case 28497U:
  fepriv->tune_mode_flags = (unsigned long )parg;
  err = 0;
  goto ldv_28283;
  }
  ldv_28283: ;
  return (err);
}
}
static unsigned int dvb_frontend_poll(struct file *file , struct poll_table_struct *wait )
{
  struct dvb_device *dvbdev ;
  struct dvb_frontend *fe ;
  struct dvb_frontend_private *fepriv ;
  struct ratelimit_state _rs ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  fe = (struct dvb_frontend *)dvbdev->priv;
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  _rs.lock.raw_lock.val.counter = 0;
  _rs.lock.magic = 3735899821U;
  _rs.lock.owner_cpu = 4294967295U;
  _rs.lock.owner = (void *)-1;
  _rs.lock.dep_map.key = 0;
  _rs.lock.dep_map.class_cache[0] = 0;
  _rs.lock.dep_map.class_cache[1] = 0;
  _rs.lock.dep_map.name = "_rs.lock";
  _rs.lock.dep_map.cpu = 0;
  _rs.lock.dep_map.ip = 0UL;
  _rs.interval = 1250;
  _rs.burst = 10;
  _rs.printed = 0;
  _rs.missed = 0;
  _rs.begin = 0UL;
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_frontend_poll";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s:\n";
  descriptor.lineno = 2536U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    tmp___0 = ___ratelimit(& _rs, "dvb_frontend_poll");
    if (tmp___0 != 0) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device,
                        "%s:\n", "dvb_frontend_poll");
    } else {
    }
  } else {
  }
  poll_wait(file, & fepriv->events.wait_queue, wait);
  if (fepriv->events.eventw != fepriv->events.eventr) {
    return (67U);
  } else {
  }
  return (0U);
}
}
static int dvb_frontend_open(struct inode *inode , struct file *file )
{
  struct dvb_device *dvbdev ;
  struct dvb_frontend *fe ;
  struct dvb_frontend_private *fepriv ;
  struct dvb_adapter *adapter ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  struct dvb_device *mfedev ;
  struct dvb_frontend *mfe ;
  struct dvb_frontend_private *mfepriv ;
  int mferetry ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  unsigned long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  fe = (struct dvb_frontend *)dvbdev->priv;
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  adapter = fe->dvb;
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_frontend_open";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s:\n";
  descriptor.lineno = 2554U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s:\n",
                      "dvb_frontend_open");
  } else {
  }
  if (fe->exit == 2U) {
    return (-19);
  } else {
  }
  if (adapter->mfe_shared != 0) {
    mutex_lock_nested(& adapter->mfe_lock, 0U);
    if ((unsigned long )adapter->mfe_dvbdev == (unsigned long )((struct dvb_device *)0)) {
      adapter->mfe_dvbdev = dvbdev;
    } else
    if ((unsigned long )adapter->mfe_dvbdev != (unsigned long )dvbdev) {
      mfedev = adapter->mfe_dvbdev;
      mfe = (struct dvb_frontend *)mfedev->priv;
      mfepriv = (struct dvb_frontend_private *)mfe->frontend_priv;
      mferetry = dvb_mfe_wait_time << 1;
      mutex_unlock(& adapter->mfe_lock);
      goto ldv_28341;
      ldv_28340:
      tmp___2 = msleep_interruptible(500U);
      if (tmp___2 != 0UL) {
        tmp___0 = get_current();
        tmp___1 = signal_pending___1(tmp___0);
        if (tmp___1 != 0) {
          return (-4);
        } else {
        }
      } else {
      }
      ldv_28341:
      tmp___3 = mferetry;
      mferetry = mferetry - 1;
      if (tmp___3 != 0 && (mfedev->users != -1 || (unsigned long )mfepriv->thread != (unsigned long )((struct task_struct *)0))) {
        goto ldv_28340;
      } else {
      }
      mutex_lock_nested(& adapter->mfe_lock, 0U);
      if ((unsigned long )adapter->mfe_dvbdev != (unsigned long )dvbdev) {
        mfedev = adapter->mfe_dvbdev;
        mfe = (struct dvb_frontend *)mfedev->priv;
        mfepriv = (struct dvb_frontend_private *)mfe->frontend_priv;
        if (mfedev->users != -1 || (unsigned long )mfepriv->thread != (unsigned long )((struct task_struct *)0)) {
          mutex_unlock(& adapter->mfe_lock);
          return (-16);
        } else {
        }
        adapter->mfe_dvbdev = dvbdev;
      } else {
      }
    } else {
    }
  } else {
  }
  if (dvbdev->users == -1 && (unsigned long )fe->ops.ts_bus_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                              int ))0)) {
    ret = (*(fe->ops.ts_bus_ctrl))(fe, 1);
    if (ret < 0) {
      goto err0;
    } else {
    }
    fepriv->reinitialise = 1U;
  } else {
  }
  ret = dvb_generic_open(inode, file);
  if (ret < 0) {
    goto err1;
  } else {
  }
  if ((file->f_flags & 3U) != 0U) {
    fepriv->tune_mode_flags = fepriv->tune_mode_flags & 0xfffffffffffffffeUL;
    fepriv->tone = -1;
    fepriv->voltage = -1;
    ret = dvb_frontend_start(fe);
    if (ret != 0) {
      goto err2;
    } else {
    }
    tmp___4 = 0;
    fepriv->events.eventw = tmp___4;
    fepriv->events.eventr = tmp___4;
  } else {
  }
  if (adapter->mfe_shared != 0) {
    mutex_unlock(& adapter->mfe_lock);
  } else {
  }
  return (ret);
  err2:
  dvb_generic_release(inode, file);
  err1: ;
  if (dvbdev->users == -1 && (unsigned long )fe->ops.ts_bus_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                              int ))0)) {
    (*(fe->ops.ts_bus_ctrl))(fe, 0);
  } else {
  }
  err0: ;
  if (adapter->mfe_shared != 0) {
    mutex_unlock(& adapter->mfe_lock);
  } else {
  }
  return (ret);
}
}
static int dvb_frontend_release(struct inode *inode , struct file *file )
{
  struct dvb_device *dvbdev ;
  struct dvb_frontend *fe ;
  struct dvb_frontend_private *fepriv ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  fe = (struct dvb_frontend *)dvbdev->priv;
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_frontend_release";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s:\n";
  descriptor.lineno = 2649U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s:\n",
                      "dvb_frontend_release");
  } else {
  }
  if ((file->f_flags & 3U) != 0U) {
    fepriv->release_jiffies = jiffies;
    __asm__ volatile ("mfence": : : "memory");
  } else {
  }
  ret = dvb_generic_release(inode, file);
  if (dvbdev->users == -1) {
    __wake_up(& fepriv->wait_queue, 3U, 1, (void *)0);
    if (fe->exit != 0U) {
      __wake_up(& dvbdev->wait_queue, 3U, 1, (void *)0);
    } else {
    }
    if ((unsigned long )fe->ops.ts_bus_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                         int ))0)) {
      (*(fe->ops.ts_bus_ctrl))(fe, 0);
    } else {
    }
  } else {
  }
  return (ret);
}
}
static struct file_operations const dvb_frontend_fops =
     {& __this_module, & noop_llseek, 0, 0, 0, 0, 0, & dvb_frontend_poll, & dvb_generic_ioctl,
    0, 0, 0, & dvb_frontend_open, 0, & dvb_frontend_release, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0};
int dvb_frontend_suspend(struct dvb_frontend *fe )
{
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  ret = 0;
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_frontend_suspend";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s: adap=%d fe=%d\n";
  descriptor.lineno = 2683U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s: adap=%d fe=%d\n",
                      "dvb_frontend_suspend", (fe->dvb)->num, fe->id);
  } else {
  }
  if ((unsigned long )fe->ops.tuner_ops.suspend != (unsigned long )((int (*)(struct dvb_frontend * ))0)) {
    ret = (*(fe->ops.tuner_ops.suspend))(fe);
  } else
  if ((unsigned long )fe->ops.tuner_ops.sleep != (unsigned long )((int (*)(struct dvb_frontend * ))0)) {
    ret = (*(fe->ops.tuner_ops.sleep))(fe);
  } else {
  }
  if ((unsigned long )fe->ops.sleep != (unsigned long )((int (*)(struct dvb_frontend * ))0)) {
    ret = (*(fe->ops.sleep))(fe);
  } else {
  }
  return (ret);
}
}
static char const __kstrtab_dvb_frontend_suspend[21U] =
  { 'd', 'v', 'b', '_',
        'f', 'r', 'o', 'n',
        't', 'e', 'n', 'd',
        '_', 's', 'u', 's',
        'p', 'e', 'n', 'd',
        '\000'};
struct kernel_symbol const __ksymtab_dvb_frontend_suspend ;
struct kernel_symbol const __ksymtab_dvb_frontend_suspend = {(unsigned long )(& dvb_frontend_suspend), (char const *)(& __kstrtab_dvb_frontend_suspend)};
int dvb_frontend_resume(struct dvb_frontend *fe )
{
  struct dvb_frontend_private *fepriv ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  ret = 0;
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_frontend_resume";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s: adap=%d fe=%d\n";
  descriptor.lineno = 2703U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s: adap=%d fe=%d\n",
                      "dvb_frontend_resume", (fe->dvb)->num, fe->id);
  } else {
  }
  fe->exit = 3U;
  if ((unsigned long )fe->ops.init != (unsigned long )((int (*)(struct dvb_frontend * ))0)) {
    ret = (*(fe->ops.init))(fe);
  } else {
  }
  if ((unsigned long )fe->ops.tuner_ops.resume != (unsigned long )((int (*)(struct dvb_frontend * ))0)) {
    ret = (*(fe->ops.tuner_ops.resume))(fe);
  } else
  if ((unsigned long )fe->ops.tuner_ops.init != (unsigned long )((int (*)(struct dvb_frontend * ))0)) {
    ret = (*(fe->ops.tuner_ops.init))(fe);
  } else {
  }
  fe->exit = 0U;
  fepriv->state = 2U;
  dvb_frontend_wakeup(fe);
  return (ret);
}
}
static char const __kstrtab_dvb_frontend_resume[20U] =
  { 'd', 'v', 'b', '_',
        'f', 'r', 'o', 'n',
        't', 'e', 'n', 'd',
        '_', 'r', 'e', 's',
        'u', 'm', 'e', '\000'};
struct kernel_symbol const __ksymtab_dvb_frontend_resume ;
struct kernel_symbol const __ksymtab_dvb_frontend_resume = {(unsigned long )(& dvb_frontend_resume), (char const *)(& __kstrtab_dvb_frontend_resume)};
int dvb_register_frontend(struct dvb_adapter *dvb , struct dvb_frontend *fe )
{
  struct dvb_frontend_private *fepriv ;
  struct dvb_device dvbdev_template ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  {
  dvbdev_template.list_head.next = 0;
  dvbdev_template.list_head.prev = 0;
  dvbdev_template.fops = & dvb_frontend_fops;
  dvbdev_template.adapter = 0;
  dvbdev_template.type = 0;
  dvbdev_template.minor = 0;
  dvbdev_template.id = 0U;
  dvbdev_template.readers = -2;
  dvbdev_template.writers = 1;
  dvbdev_template.users = -1;
  dvbdev_template.wait_queue.lock.__annonCompField18.rlock.raw_lock.val.counter = 0;
  dvbdev_template.wait_queue.lock.__annonCompField18.rlock.magic = 0U;
  dvbdev_template.wait_queue.lock.__annonCompField18.rlock.owner_cpu = 0U;
  dvbdev_template.wait_queue.lock.__annonCompField18.rlock.owner = 0;
  dvbdev_template.wait_queue.lock.__annonCompField18.rlock.dep_map.key = 0;
  dvbdev_template.wait_queue.lock.__annonCompField18.rlock.dep_map.class_cache[0] = 0;
  dvbdev_template.wait_queue.lock.__annonCompField18.rlock.dep_map.class_cache[1] = 0;
  dvbdev_template.wait_queue.lock.__annonCompField18.rlock.dep_map.name = 0;
  dvbdev_template.wait_queue.lock.__annonCompField18.rlock.dep_map.cpu = 0;
  dvbdev_template.wait_queue.lock.__annonCompField18.rlock.dep_map.ip = 0UL;
  dvbdev_template.wait_queue.task_list.next = 0;
  dvbdev_template.wait_queue.task_list.prev = 0;
  dvbdev_template.kernel_ioctl = & dvb_frontend_ioctl;
  dvbdev_template.priv = 0;
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_register_frontend";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s:\n";
  descriptor.lineno = 2737U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dvb->device, "%s:\n",
                      "dvb_register_frontend");
  } else {
  }
  tmp___0 = mutex_lock_interruptible_nested(& frontend_mutex, 0U);
  if (tmp___0 != 0) {
    return (-512);
  } else {
  }
  fe->frontend_priv = kzalloc(936UL, 208U);
  if ((unsigned long )fe->frontend_priv == (unsigned long )((void *)0)) {
    mutex_unlock(& frontend_mutex);
    return (-12);
  } else {
  }
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  sema_init(& fepriv->sem, 1);
  __init_waitqueue_head(& fepriv->wait_queue, "&fepriv->wait_queue", & __key);
  __init_waitqueue_head(& fepriv->events.wait_queue, "&fepriv->events.wait_queue",
                        & __key___0);
  __mutex_init(& fepriv->events.mtx, "&fepriv->events.mtx", & __key___1);
  fe->dvb = dvb;
  fepriv->inversion = 0U;
  _dev_info((struct device const *)(fe->dvb)->device, "DVB: registering adapter %i frontend %i (%s)...\n",
            (fe->dvb)->num, fe->id, (char *)(& fe->ops.info.name));
  dvb_register_device(fe->dvb, & fepriv->dvbdev, & dvbdev_template, (void *)fe, 3);
  fe->dtv_property_cache.delivery_system = (enum fe_delivery_system )fe->ops.delsys[0];
  dvb_frontend_clear_cache(fe);
  mutex_unlock(& frontend_mutex);
  return (0);
}
}
static char const __kstrtab_dvb_register_frontend[22U] =
  { 'd', 'v', 'b', '_',
        'r', 'e', 'g', 'i',
        's', 't', 'e', 'r',
        '_', 'f', 'r', 'o',
        'n', 't', 'e', 'n',
        'd', '\000'};
struct kernel_symbol const __ksymtab_dvb_register_frontend ;
struct kernel_symbol const __ksymtab_dvb_register_frontend = {(unsigned long )(& dvb_register_frontend), (char const *)(& __kstrtab_dvb_register_frontend)};
int dvb_unregister_frontend(struct dvb_frontend *fe )
{
  struct dvb_frontend_private *fepriv ;
  struct _ddebug descriptor ;
  long tmp ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___0 ;
  {
  fepriv = (struct dvb_frontend_private *)fe->frontend_priv;
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_unregister_frontend";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c";
  descriptor.format = "%s:\n";
  descriptor.lineno = 2779U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(fe->dvb)->device, "%s:\n",
                      "dvb_unregister_frontend");
  } else {
  }
  mutex_lock_nested(& frontend_mutex, 0U);
  dvb_frontend_stop(fe);
  mutex_unlock(& frontend_mutex);
  if ((fepriv->dvbdev)->users < -1) {
    __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_frontend.c",
                  2787, 0);
    if ((fepriv->dvbdev)->users == -1) {
      goto ldv_28409;
    } else {
    }
    __ret = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_28415:
    tmp___0 = prepare_to_wait_event(& (fepriv->dvbdev)->wait_queue, & __wait, 2);
    __int = tmp___0;
    if ((fepriv->dvbdev)->users == -1) {
      goto ldv_28414;
    } else {
    }
    schedule();
    goto ldv_28415;
    ldv_28414:
    finish_wait(& (fepriv->dvbdev)->wait_queue, & __wait);
    ldv_28409: ;
  } else {
  }
  mutex_lock_nested(& frontend_mutex, 0U);
  dvb_unregister_device(fepriv->dvbdev);
  kfree((void const *)fepriv);
  mutex_unlock(& frontend_mutex);
  return (0);
}
}
static char const __kstrtab_dvb_unregister_frontend[24U] =
  { 'd', 'v', 'b', '_',
        'u', 'n', 'r', 'e',
        'g', 'i', 's', 't',
        'e', 'r', '_', 'f',
        'r', 'o', 'n', 't',
        'e', 'n', 'd', '\000'};
struct kernel_symbol const __ksymtab_dvb_unregister_frontend ;
struct kernel_symbol const __ksymtab_dvb_unregister_frontend = {(unsigned long )(& dvb_unregister_frontend), (char const *)(& __kstrtab_dvb_unregister_frontend)};
void dvb_frontend_detach(struct dvb_frontend *fe )
{
  void *ptr ;
  {
  if ((unsigned long )fe->ops.release_sec != (unsigned long )((void (*)(struct dvb_frontend * ))0)) {
    (*(fe->ops.release_sec))(fe);
    symbol_put_addr((void *)fe->ops.release_sec);
  } else {
  }
  if ((unsigned long )fe->ops.tuner_ops.release != (unsigned long )((int (*)(struct dvb_frontend * ))0)) {
    (*(fe->ops.tuner_ops.release))(fe);
    symbol_put_addr((void *)fe->ops.tuner_ops.release);
  } else {
  }
  if ((unsigned long )fe->ops.analog_ops.release != (unsigned long )((void (*)(struct dvb_frontend * ))0)) {
    (*(fe->ops.analog_ops.release))(fe);
    symbol_put_addr((void *)fe->ops.analog_ops.release);
  } else {
  }
  ptr = (void *)fe->ops.release;
  if ((unsigned long )ptr != (unsigned long )((void *)0)) {
    (*(fe->ops.release))(fe);
    symbol_put_addr(ptr);
  } else {
  }
  return;
}
}
static char const __kstrtab_dvb_frontend_detach[20U] =
  { 'd', 'v', 'b', '_',
        'f', 'r', 'o', 'n',
        't', 'e', 'n', 'd',
        '_', 'd', 'e', 't',
        'a', 'c', 'h', '\000'};
struct kernel_symbol const __ksymtab_dvb_frontend_detach ;
struct kernel_symbol const __ksymtab_dvb_frontend_detach = {(unsigned long )(& dvb_frontend_detach), (char const *)(& __kstrtab_dvb_frontend_detach)};
int ldv_retval_1 ;
void ldv_file_operations_7(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  dvb_frontend_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  dvb_frontend_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_main_exported_7(void)
{
  int ldvarg12 ;
  unsigned long ldvarg10 ;
  loff_t ldvarg13 ;
  struct poll_table_struct *ldvarg14 ;
  void *tmp ;
  unsigned int ldvarg11 ;
  int tmp___0 ;
  {
  tmp = ldv_init_zalloc(16UL);
  ldvarg14 = (struct poll_table_struct *)tmp;
  ldv_memset((void *)(& ldvarg12), 0, 4UL);
  ldv_memset((void *)(& ldvarg10), 0, 8UL);
  ldv_memset((void *)(& ldvarg13), 0, 8UL);
  ldv_memset((void *)(& ldvarg11), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_7 == 2) {
    dvb_frontend_release(dvb_frontend_fops_group1, dvb_frontend_fops_group2);
    ldv_state_variable_7 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_28448;
  case 1: ;
  if (ldv_state_variable_7 == 1) {
    dvb_frontend_poll(dvb_frontend_fops_group2, ldvarg14);
    ldv_state_variable_7 = 1;
  } else {
  }
  if (ldv_state_variable_7 == 2) {
    dvb_frontend_poll(dvb_frontend_fops_group2, ldvarg14);
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_28448;
  case 2: ;
  if (ldv_state_variable_7 == 2) {
    noop_llseek(dvb_frontend_fops_group2, ldvarg13, ldvarg12);
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_28448;
  case 3: ;
  if (ldv_state_variable_7 == 1) {
    ldv_retval_1 = dvb_frontend_open(dvb_frontend_fops_group1, dvb_frontend_fops_group2);
    if (ldv_retval_1 == 0) {
      ldv_state_variable_7 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_28448;
  case 4: ;
  if (ldv_state_variable_7 == 2) {
    dvb_generic_ioctl(dvb_frontend_fops_group2, ldvarg11, ldvarg10);
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_28448;
  default:
  ldv_stop();
  }
  ldv_28448: ;
  return;
}
}
bool ldv_queue_work_on_92(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_93(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_94(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_95(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_96(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
extern void __dynamic_netdev_dbg(struct _ddebug * , struct net_device const * ,
                                 char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  _raw_spin_lock_bh(& lock->__annonCompField18.rlock);
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
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
bool ldv_queue_work_on_106(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_108(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_107(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_110(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_109(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool flush_work(struct work_struct * ) ;
bool ldv_flush_work_113(struct work_struct *ldv_func_arg1 ) ;
bool ldv_flush_work_114(struct work_struct *ldv_func_arg1 ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_106(8192, wq, work);
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
bool ldv_try_module_get_117(struct module *ldv_func_arg1 ) ;
bool ldv_try_module_get_120(struct module *ldv_func_arg1 ) ;
void ldv_module_put_118(struct module *ldv_func_arg1 ) ;
void ldv_module_put_119(struct module *ldv_func_arg1 ) ;
void ldv_module_put_121(struct module *ldv_func_arg1 ) ;
extern bool capable(int ) ;
void call_and_disable_work_1(struct work_struct *work ) ;
void call_and_disable_all_1(int state ) ;
void activate_work_1(struct work_struct *work , int state ) ;
void ldv_net_device_ops_5(void) ;
void disable_work_2(struct work_struct *work ) ;
void disable_work_1(struct work_struct *work ) ;
void invoke_work_1(void) ;
void call_and_disable_work_2(struct work_struct *work ) ;
void invoke_work_2(void) ;
void ldv_file_operations_4(void) ;
extern void consume_skb(struct sk_buff * ) ;
__inline static unsigned char *skb_tail_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->tail);
}
}
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
__inline static unsigned char *skb_mac_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->mac_header);
}
}
__inline static void skb_reset_mac_header(struct sk_buff *skb )
{
  {
  skb->mac_header = (int )((__u16 )((long )skb->data)) - (int )((__u16 )((long )skb->head));
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
__inline static void skb_copy_from_linear_data(struct sk_buff const *skb , void *to ,
                                               unsigned int const len )
{
  {
  memcpy(to, (void const *)skb->data, (size_t )len);
  return;
}
}
__inline static struct ethhdr *eth_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_mac_header(skb);
  return ((struct ethhdr *)tmp);
}
}
extern int eth_header_parse(struct sk_buff const * , unsigned char * ) ;
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3008U);
}
}
extern void free_netdev(struct net_device * ) ;
void ldv_free_netdev_112(struct net_device *dev ) ;
void ldv_free_netdev_116(struct net_device *dev ) ;
__inline static bool netif_running(struct net_device const *dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev->state));
  return (tmp != 0);
}
}
extern int netif_rx(struct sk_buff * ) ;
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
extern void ether_setup(struct net_device * ) ;
extern struct net_device *alloc_netdev_mqs(int , char const * , unsigned char ,
                                           void (*)(struct net_device * ) , unsigned int ,
                                           unsigned int ) ;
extern int register_netdev(struct net_device * ) ;
int ldv_register_netdev_111(struct net_device *dev ) ;
extern void unregister_netdev(struct net_device * ) ;
void ldv_unregister_netdev_115(struct net_device *dev ) ;
extern int eth_header(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                      void const * , unsigned int ) ;
extern int eth_change_mtu(struct net_device * , int ) ;
extern int eth_validate_addr(struct net_device * ) ;
__inline static bool ether_addr_equal(u8 const *addr1 , u8 const *addr2 )
{
  u32 fold ;
  {
  fold = ((unsigned int )*((u32 const *)addr1) ^ (unsigned int )*((u32 const *)addr2)) | (unsigned int )((int )((unsigned short )*((u16 const *)addr1 + 4U)) ^ (int )((unsigned short )*((u16 const *)addr2 + 4U)));
  return (fold == 0U);
}
}
void dvb_net_release(struct dvb_net *dvbnet ) ;
int dvb_net_init(struct dvb_adapter *adap , struct dvb_net *dvbnet , struct dmx_demux *dmx ) ;
__inline static __u32 iov_crc32(__u32 c , struct kvec *iov , unsigned int cnt )
{
  unsigned int j ;
  {
  j = 0U;
  goto ldv_45161;
  ldv_45160:
  c = crc32_be(c, (unsigned char const *)(iov + (unsigned long )j)->iov_base, (iov + (unsigned long )j)->iov_len);
  j = j + 1U;
  ldv_45161: ;
  if (j < cnt) {
    goto ldv_45160;
  } else {
  }
  return (c);
}
}
static __be16 dvb_net_eth_type_trans(struct sk_buff *skb , struct net_device *dev )
{
  struct ethhdr *eth ;
  unsigned char *rawp ;
  bool tmp ;
  __u16 tmp___0 ;
  {
  skb_reset_mac_header(skb);
  skb_pull(skb, (unsigned int )dev->hard_header_len);
  eth = eth_hdr((struct sk_buff const *)skb);
  if ((int )*((unsigned char *)(& eth->h_dest)) & 1) {
    tmp = ether_addr_equal((u8 const *)(& eth->h_dest), (u8 const *)(& dev->broadcast));
    if ((int )tmp) {
      skb->pkt_type = 1U;
    } else {
      skb->pkt_type = 2U;
    }
  } else {
  }
  tmp___0 = __fswab16((int )eth->h_proto);
  if ((unsigned int )tmp___0 > 1535U) {
    return (eth->h_proto);
  } else {
  }
  rawp = skb->data;
  if ((unsigned int )*((unsigned short *)rawp) == 65535U) {
    return (256U);
  } else {
  }
  return (1024U);
}
}
static int ule_test_sndu(struct dvb_net_priv *p )
{
  {
  return (-1);
}
}
static int ule_bridged_sndu(struct dvb_net_priv *p )
{
  struct ethhdr *hdr ;
  int framelen ;
  __u16 tmp ;
  __u16 tmp___0 ;
  {
  hdr = (struct ethhdr *)p->ule_next_hdr;
  tmp___0 = __fswab16((int )hdr->h_proto);
  if ((unsigned int )tmp___0 <= 1535U) {
    framelen = (int )((unsigned int )p->ule_sndu_len + ((unsigned int )((long )(p->ule_skb)->data) - (unsigned int )((long )(p->ule_next_hdr + 14UL))));
    tmp = __fswab16((int )hdr->h_proto);
    if ((int )tmp != framelen) {
      return (-1);
    } else {
    }
  } else {
  }
  p->ule_bridged = 1U;
  return (0);
}
}
static int ule_exthdr_padding(struct dvb_net_priv *p )
{
  {
  return (0);
}
}
static int handle_one_ule_extension(struct dvb_net_priv *p )
{
  int (*ule_mandatory_ext_handlers[255U])(struct dvb_net_priv * ) ;
  unsigned int tmp ;
  int (*ule_optional_ext_handlers[255U])(struct dvb_net_priv * ) ;
  unsigned int tmp___0 ;
  int ext_len ;
  unsigned char hlen ;
  unsigned char htype ;
  __u16 tmp___1 ;
  __u16 tmp___2 ;
  __u16 tmp___3 ;
  {
  ule_mandatory_ext_handlers[0] = & ule_test_sndu;
  ule_mandatory_ext_handlers[1] = & ule_bridged_sndu;
  ule_mandatory_ext_handlers[2] = (int (*)(struct dvb_net_priv * ))0;
  tmp = 3U;
  while (1) {
    if (tmp >= 255U) {
      break;
    } else {
    }
    ule_mandatory_ext_handlers[tmp] = 0;
    tmp = tmp + 1U;
  }
  ule_optional_ext_handlers[0] = & ule_exthdr_padding;
  ule_optional_ext_handlers[1] = (int (*)(struct dvb_net_priv * ))0;
  tmp___0 = 2U;
  while (1) {
    if (tmp___0 >= 255U) {
      break;
    } else {
    }
    ule_optional_ext_handlers[tmp___0] = 0;
    tmp___0 = tmp___0 + 1U;
  }
  ext_len = 0;
  hlen = (unsigned char )(((int )p->ule_sndu_type & 1792) >> 8);
  htype = (unsigned char )p->ule_sndu_type;
  if ((unsigned int )hlen == 0U) {
    if ((unsigned long )ule_mandatory_ext_handlers[(int )htype] != (unsigned long )((int (*)(struct dvb_net_priv * ))0)) {
      ext_len = (*(ule_mandatory_ext_handlers[(int )htype]))(p);
      if (ext_len >= 0) {
        p->ule_next_hdr = p->ule_next_hdr + (unsigned long )ext_len;
        if ((unsigned int )p->ule_bridged == 0U) {
          tmp___1 = __fswab16((int )*((__be16 *)p->ule_next_hdr));
          p->ule_sndu_type = tmp___1;
          p->ule_next_hdr = p->ule_next_hdr + 2UL;
        } else {
          tmp___2 = __fswab16((int )*((__be16 *)p->ule_next_hdr + ((unsigned int )p->ule_dbit != 0U ? 12U : 18U)));
          p->ule_sndu_type = tmp___2;
        }
      } else {
      }
    } else {
      ext_len = -1;
    }
  } else {
    ext_len = (int )hlen << 1;
    if ((unsigned long )ule_optional_ext_handlers[(int )htype] != (unsigned long )((int (*)(struct dvb_net_priv * ))0)) {
      (*(ule_optional_ext_handlers[(int )htype]))(p);
    } else {
    }
    p->ule_next_hdr = p->ule_next_hdr + (unsigned long )ext_len;
    tmp___3 = __fswab16((int )*((__be16 *)p->ule_next_hdr + 0xfffffffffffffffeUL));
    p->ule_sndu_type = tmp___3;
  }
  return (ext_len);
}
}
static int handle_ule_extensions(struct dvb_net_priv *p )
{
  int total_ext_len ;
  int l ;
  {
  total_ext_len = 0;
  p->ule_next_hdr = (p->ule_skb)->data;
  ldv_45223:
  l = handle_one_ule_extension(p);
  if (l < 0) {
    return (l);
  } else {
  }
  total_ext_len = total_ext_len + l;
  if ((unsigned int )p->ule_sndu_type <= 1535U) {
    goto ldv_45223;
  } else {
  }
  return (total_ext_len);
}
}
__inline static void reset_ule(struct dvb_net_priv *p )
{
  {
  p->ule_skb = (struct sk_buff *)0;
  p->ule_next_hdr = (unsigned char *)0U;
  p->ule_sndu_len = 0U;
  p->ule_sndu_type = 0U;
  p->ule_sndu_type_1 = 0U;
  p->ule_sndu_remain = 0;
  p->ule_dbit = 255U;
  p->ule_bridged = 0U;
  return;
}
}
static void dvb_net_ule(struct net_device *dev , u8 const *buf , size_t buf_len )
{
  struct dvb_net_priv *priv ;
  void *tmp ;
  unsigned long skipped ;
  u8 const *ts ;
  u8 const *ts_end ;
  u8 const *from_where ;
  u8 ts_remain ;
  u8 how_much ;
  u8 new_ts ;
  struct ethhdr *ethh ;
  bool error ;
  int _min1 ;
  int _min2 ;
  unsigned char *tmp___0 ;
  __be16 ulen ;
  __u16 tmp___1 ;
  __be16 utype ;
  __u16 tmp___2 ;
  u8 const *tail ;
  struct kvec iov[3U] ;
  u32 ule_crc ;
  u32 expected_crc ;
  unsigned char *tmp___3 ;
  u8 dest_addr[6U] ;
  u8 bc_addr[6U] ;
  register int drop ;
  int i ;
  bool tmp___4 ;
  int tmp___5 ;
  bool tmp___6 ;
  int tmp___7 ;
  bool tmp___8 ;
  int tmp___9 ;
  int l ;
  int tmp___10 ;
  __u16 tmp___11 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct dvb_net_priv *)tmp;
  skipped = 0UL;
  from_where = (u8 const *)0U;
  ts_remain = 0U;
  how_much = 0U;
  new_ts = 1U;
  ethh = (struct ethhdr *)0;
  error = 0;
  ts = buf;
  ts_end = buf + buf_len;
  goto ldv_45243;
  ldv_45266: ;
  if ((unsigned int )new_ts != 0U) {
    if (((unsigned int )((unsigned char )*ts) != 71U || (int )((signed char )*(ts + 1UL)) < 0) || ((int )*(ts + 3UL) & 192) != 0) {
      printk("\f%lu: Invalid TS cell: SYNC %#x, TEI %u, SC %#x.\n", priv->ts_count,
             (int )*ts, (int )((int const )*(ts + 1UL) >> 7), (int )((int const )*(ts + 3UL) >> 6));
      if ((unsigned long )priv->ule_skb != (unsigned long )((struct sk_buff *)0)) {
        consume_skb(priv->ule_skb);
        dev->stats.rx_errors = dev->stats.rx_errors + 1UL;
        dev->stats.rx_frame_errors = dev->stats.rx_frame_errors + 1UL;
      } else {
      }
      reset_ule(priv);
      priv->need_pusi = 1;
      ts = ts + 188UL;
      priv->ts_count = priv->ts_count + 1UL;
      goto ldv_45243;
    } else {
    }
    ts_remain = 184U;
    from_where = ts + 4UL;
  } else {
  }
  if (priv->need_pusi != 0) {
    if (((int )*(ts + 1UL) & 64) != 0) {
      priv->tscc = (unsigned int )((unsigned char )*(ts + 3UL)) & 15U;
      if ((int )((unsigned char )*(ts + 4UL)) > (int )ts_remain) {
        printk("\v%lu: Invalid ULE packet (pointer field %d)\n", priv->ts_count, (int )*(ts + 4UL));
        ts = ts + 188UL;
        priv->ts_count = priv->ts_count + 1UL;
        goto ldv_45243;
      } else {
      }
      from_where = ts + ((unsigned long )*(ts + 4UL) + 5UL);
      ts_remain = ~ ((int )((u8 )*(ts + 4UL))) + (int )ts_remain;
      skipped = 0UL;
    } else {
      skipped = skipped + 1UL;
      ts = ts + 188UL;
      priv->ts_count = priv->ts_count + 1UL;
      goto ldv_45243;
    }
  } else {
  }
  if ((unsigned int )new_ts != 0U) {
    if (((int )*(ts + 3UL) & 15) == (int )priv->tscc) {
      priv->tscc = ((unsigned int )priv->tscc + 1U) & 15U;
    } else {
      printk("\f%lu: TS discontinuity: got %#x, expected %#x.\n", priv->ts_count,
             (int )*(ts + 3UL) & 15, (int )priv->tscc);
      if ((unsigned long )priv->ule_skb != (unsigned long )((struct sk_buff *)0)) {
        consume_skb(priv->ule_skb);
        dev->stats.rx_errors = dev->stats.rx_errors + 1UL;
        dev->stats.rx_frame_errors = dev->stats.rx_frame_errors + 1UL;
      } else {
      }
      reset_ule(priv);
      priv->need_pusi = 1;
      goto ldv_45243;
    }
    if (((int )*(ts + 1UL) & 64) != 0) {
      if (priv->need_pusi == 0) {
        if ((int )*from_where >= (int )ts_remain + -1 || (int )*from_where != priv->ule_sndu_remain) {
          printk("\f%lu: Invalid pointer field: %u.\n", priv->ts_count, (int )*from_where);
          if ((unsigned long )priv->ule_skb != (unsigned long )((struct sk_buff *)0)) {
            error = 1;
            consume_skb(priv->ule_skb);
          } else {
          }
          if ((int )error || priv->ule_sndu_remain != 0) {
            dev->stats.rx_errors = dev->stats.rx_errors + 1UL;
            dev->stats.rx_frame_errors = dev->stats.rx_frame_errors + 1UL;
            error = 0;
          } else {
          }
          reset_ule(priv);
          priv->need_pusi = 1;
          goto ldv_45243;
        } else {
        }
        from_where = from_where + 1UL;
        ts_remain = (unsigned int )ts_remain + 255U;
      } else {
        priv->need_pusi = 0;
      }
      if (priv->ule_sndu_remain > 183) {
        dev->stats.rx_errors = dev->stats.rx_errors + 1UL;
        dev->stats.rx_length_errors = dev->stats.rx_length_errors + 1UL;
        printk("\f%lu: Expected %d more SNDU bytes, but got PUSI (pf %d, ts_remain %d).  Flushing incomplete payload.\n",
               priv->ts_count, priv->ule_sndu_remain, (int )*(ts + 4UL), (int )ts_remain);
        consume_skb(priv->ule_skb);
        reset_ule(priv);
        from_where = from_where + (unsigned long )*(ts + 4UL);
        ts_remain = (int )ts_remain - (int )((u8 )*(ts + 4UL));
      } else {
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )priv->ule_skb == (unsigned long )((struct sk_buff *)0)) {
    if ((unsigned int )ts_remain <= 1U) {
      printk("\fInvalid payload packing: only %d bytes left in TS.  Resyncing.\n",
             (int )ts_remain);
      priv->ule_sndu_len = 0U;
      priv->need_pusi = 1;
      ts = ts + 188UL;
      goto ldv_45243;
    } else {
    }
    if ((unsigned int )priv->ule_sndu_len == 0U) {
      priv->ule_sndu_len = (unsigned short )((int )((short )((int )*from_where << 8)) | (int )((short )*(from_where + 1UL)));
      if ((int )((short )priv->ule_sndu_len) < 0) {
        priv->ule_sndu_len = (unsigned int )priv->ule_sndu_len & 32767U;
        priv->ule_dbit = 1U;
      } else {
        priv->ule_dbit = 0U;
      }
      if ((unsigned int )priv->ule_sndu_len <= 4U) {
        printk("\f%lu: Invalid ULE SNDU length %u. Resyncing.\n", priv->ts_count,
               (int )priv->ule_sndu_len);
        dev->stats.rx_errors = dev->stats.rx_errors + 1UL;
        dev->stats.rx_length_errors = dev->stats.rx_length_errors + 1UL;
        priv->ule_sndu_len = 0U;
        priv->need_pusi = 1;
        new_ts = 1U;
        ts = ts + 188UL;
        priv->ts_count = priv->ts_count + 1UL;
        goto ldv_45243;
      } else {
      }
      ts_remain = (unsigned int )ts_remain + 254U;
      from_where = from_where + 2UL;
    } else {
    }
    priv->ule_sndu_remain = (int )priv->ule_sndu_len + 2;
    switch ((int )ts_remain) {
    case 1:
    priv->ule_sndu_remain = priv->ule_sndu_remain - 1;
    priv->ule_sndu_type = (int )((unsigned short )*from_where) << 8U;
    priv->ule_sndu_type_1 = 1U;
    ts_remain = (unsigned int )ts_remain + 255U;
    from_where = from_where + 1UL;
    case 0:
    new_ts = 1U;
    ts = ts + 188UL;
    priv->ts_count = priv->ts_count + 1UL;
    goto ldv_45243;
    default: ;
    if ((unsigned int )priv->ule_sndu_type_1 != 0U) {
      priv->ule_sndu_type_1 = 0U;
      priv->ule_sndu_type = (int )priv->ule_sndu_type | (int )((unsigned short )*from_where);
      from_where = from_where + 1UL;
      ts_remain = (unsigned int )ts_remain + 255U;
    } else {
      priv->ule_sndu_type = (unsigned short )((int )((short )((int )*from_where << 8)) | (int )((short )*(from_where + 1UL)));
      from_where = from_where + 2UL;
      ts_remain = (unsigned int )ts_remain + 254U;
    }
    goto ldv_45247;
    }
    ldv_45247:
    priv->ule_skb = dev_alloc_skb((unsigned int )((int )priv->ule_sndu_len + 20));
    if ((unsigned long )priv->ule_skb == (unsigned long )((struct sk_buff *)0)) {
      printk("\r%s: Memory squeeze, dropping packet.\n", (char *)(& dev->name));
      dev->stats.rx_dropped = dev->stats.rx_dropped + 1UL;
      return;
    } else {
    }
    priv->ule_sndu_remain = (int )priv->ule_sndu_len;
    (priv->ule_skb)->dev = dev;
    skb_reserve(priv->ule_skb, 20);
  } else {
  }
  _min1 = priv->ule_sndu_remain;
  _min2 = (int )ts_remain;
  how_much = (u8 )(_min1 < _min2 ? _min1 : _min2);
  tmp___0 = skb_put(priv->ule_skb, (unsigned int )how_much);
  memcpy((void *)tmp___0, (void const *)from_where, (size_t )how_much);
  priv->ule_sndu_remain = priv->ule_sndu_remain - (int )how_much;
  ts_remain = (int )ts_remain - (int )how_much;
  from_where = from_where + (unsigned long )how_much;
  if (priv->ule_sndu_remain <= 0) {
    tmp___1 = __fswab16((int )priv->ule_sndu_len);
    ulen = tmp___1;
    tmp___2 = __fswab16((int )priv->ule_sndu_type);
    utype = tmp___2;
    iov[0].iov_base = (void *)(& ulen);
    iov[0].iov_len = 2UL;
    iov[1].iov_base = (void *)(& utype);
    iov[1].iov_len = 2UL;
    iov[2].iov_base = (void *)(priv->ule_skb)->data;
    iov[2].iov_len = (unsigned long )((priv->ule_skb)->len - 4U);
    ule_crc = 4294967295U;
    if ((unsigned int )priv->ule_dbit != 0U) {
      ulen = (__be16 )((unsigned int )ulen | 128U);
    } else {
    }
    ule_crc = iov_crc32(ule_crc, (struct kvec *)(& iov), 3U);
    tmp___3 = skb_tail_pointer((struct sk_buff const *)priv->ule_skb);
    tail = (u8 const *)tmp___3;
    expected_crc = (u32 )(((((int )*(tail + 0xfffffffffffffffcUL) << 24) | ((int )*(tail + 0xfffffffffffffffdUL) << 16)) | ((int )*(tail + 0xfffffffffffffffeUL) << 8)) | (int )*(tail + 0xffffffffffffffffUL));
    if (ule_crc != expected_crc) {
      printk("\f%lu: CRC32 check FAILED: %08x / %08x, SNDU len %d type %#x, ts_remain %d, next 2: %x.\n",
             priv->ts_count, ule_crc, expected_crc, (int )priv->ule_sndu_len, (int )priv->ule_sndu_type,
             (int )ts_remain, (unsigned int )ts_remain > 2U ? (int )*((unsigned short *)from_where) : 0);
      dev->stats.rx_errors = dev->stats.rx_errors + 1UL;
      dev->stats.rx_crc_errors = dev->stats.rx_crc_errors + 1UL;
      consume_skb(priv->ule_skb);
    } else {
      bc_addr[0] = 255U;
      bc_addr[1] = 255U;
      bc_addr[2] = 255U;
      bc_addr[3] = 255U;
      bc_addr[4] = 255U;
      bc_addr[5] = 255U;
      (priv->ule_skb)->tail = (priv->ule_skb)->tail - 4U;
      (priv->ule_skb)->len = (priv->ule_skb)->len - 4U;
      if ((unsigned int )priv->ule_dbit == 0U) {
        drop = 0;
        if (priv->rx_mode != 3) {
          if ((int )*((priv->ule_skb)->data) & 1) {
            tmp___6 = ether_addr_equal((u8 const *)(priv->ule_skb)->data, (u8 const *)(& bc_addr));
            if (tmp___6) {
              tmp___7 = 0;
            } else {
              tmp___7 = 1;
            }
            if (tmp___7) {
              if (priv->rx_mode == 1) {
                i = 0;
                goto ldv_45262;
                ldv_45261:
                i = i + 1;
                ldv_45262: ;
                if (priv->multi_num > i) {
                  tmp___4 = ether_addr_equal((u8 const *)(priv->ule_skb)->data,
                                             (u8 const *)(& priv->multi_macs) + (unsigned long )i);
                  if (tmp___4) {
                    tmp___5 = 0;
                  } else {
                    tmp___5 = 1;
                  }
                  if (tmp___5) {
                    goto ldv_45261;
                  } else {
                    goto ldv_45263;
                  }
                } else {
                }
                ldv_45263: ;
                if (priv->multi_num == i) {
                  drop = 1;
                } else {
                }
              } else
              if (priv->rx_mode != 2) {
                drop = 1;
              } else {
              }
            } else {
            }
          } else {
            tmp___8 = ether_addr_equal((u8 const *)(priv->ule_skb)->data, (u8 const *)dev->dev_addr);
            if (tmp___8) {
              tmp___9 = 0;
            } else {
              tmp___9 = 1;
            }
            if (tmp___9) {
              drop = 1;
            } else {
            }
          }
        } else {
        }
        if (drop != 0) {
          consume_skb(priv->ule_skb);
          goto sndu_done;
        } else {
          skb_copy_from_linear_data((struct sk_buff const *)priv->ule_skb, (void *)(& dest_addr),
                                    6U);
          skb_pull(priv->ule_skb, 6U);
        }
      } else {
      }
      if ((unsigned int )priv->ule_sndu_type <= 1535U) {
        tmp___10 = handle_ule_extensions(priv);
        l = tmp___10;
        if (l < 0) {
          consume_skb(priv->ule_skb);
          goto sndu_done;
        } else {
        }
        skb_pull(priv->ule_skb, (unsigned int )l);
      } else {
      }
      if ((unsigned int )priv->ule_bridged == 0U) {
        skb_push(priv->ule_skb, 14U);
        ethh = (struct ethhdr *)(priv->ule_skb)->data;
        if ((unsigned int )priv->ule_dbit == 0U) {
          memcpy((void *)(& ethh->h_dest), (void const *)(& dest_addr), 6UL);
          memset((void *)(& ethh->h_source), 0, 6UL);
        } else {
          memset((void *)ethh, 0, 12UL);
        }
        tmp___11 = __fswab16((int )priv->ule_sndu_type);
        ethh->h_proto = tmp___11;
      } else {
      }
      priv->ule_bridged = 0U;
      (priv->ule_skb)->protocol = dvb_net_eth_type_trans(priv->ule_skb, dev);
      dev->stats.rx_packets = dev->stats.rx_packets + 1UL;
      dev->stats.rx_bytes = dev->stats.rx_bytes + (unsigned long )(priv->ule_skb)->len;
      netif_rx(priv->ule_skb);
    }
    sndu_done:
    reset_ule(priv);
  } else {
  }
  if ((unsigned int )ts_remain > 1U && (unsigned int )*((unsigned short *)from_where) != 65535U) {
    new_ts = 0U;
    priv->ule_skb = (struct sk_buff *)0;
    priv->ule_sndu_type_1 = 0U;
    priv->ule_sndu_len = 0U;
  } else {
    new_ts = 1U;
    ts = ts + 188UL;
    priv->ts_count = priv->ts_count + 1UL;
    if ((unsigned long )priv->ule_skb == (unsigned long )((struct sk_buff *)0)) {
      priv->need_pusi = 1;
      priv->ule_sndu_type_1 = 0U;
      priv->ule_sndu_len = 0U;
    } else {
    }
  }
  ldv_45243: ;
  if ((unsigned long )ts < (unsigned long )ts_end) {
    goto ldv_45266;
  } else {
  }
  return;
}
}
static int dvb_net_ts_callback(u8 const *buffer1 , size_t buffer1_len , u8 const *buffer2 ,
                               size_t buffer2_len , struct dmx_ts_feed *feed , enum dmx_success success )
{
  struct net_device *dev ;
  {
  dev = (struct net_device *)feed->priv;
  if ((unsigned long )buffer2 != (unsigned long )((u8 const *)0U)) {
    printk("\fbuffer2 not NULL: %p.\n", buffer2);
  } else {
  }
  if (buffer1_len > 32768UL) {
    printk("\flength > 32k: %zu.\n", buffer1_len);
  } else {
  }
  dvb_net_ule(dev, buffer1, buffer1_len);
  return (0);
}
}
static void dvb_net_sec(struct net_device *dev , u8 const *pkt , int pkt_len )
{
  u8 *eth ;
  struct sk_buff *skb ;
  struct net_device_stats *stats ;
  int snap ;
  int tmp ;
  unsigned char *tmp___0 ;
  u8 tmp___1 ;
  u8 tmp___2 ;
  u8 tmp___3 ;
  u8 tmp___4 ;
  u8 tmp___5 ;
  {
  stats = & dev->stats;
  snap = 0;
  if (pkt_len <= 15) {
    printk("%s: IP/MPE packet length = %d too small.\n", (char *)(& dev->name), pkt_len);
    stats->rx_errors = stats->rx_errors + 1UL;
    stats->rx_length_errors = stats->rx_length_errors + 1UL;
    return;
  } else {
  }
  if (((int )*(pkt + 5UL) & 60) != 0) {
    stats->rx_errors = stats->rx_errors + 1UL;
    stats->rx_crc_errors = stats->rx_crc_errors + 1UL;
    return;
  } else {
  }
  if (((int )*(pkt + 5UL) & 2) != 0) {
    if (pkt_len <= 23) {
      stats->rx_dropped = stats->rx_dropped + 1UL;
      return;
    } else {
      tmp = memcmp((void const *)pkt + 12U, (void const *)"\252\252\003", 6UL);
      if (tmp != 0) {
        stats->rx_dropped = stats->rx_dropped + 1UL;
        return;
      } else {
      }
    }
    snap = 8;
  } else {
  }
  if ((unsigned int )((unsigned char )*(pkt + 7UL)) != 0U) {
    stats->rx_errors = stats->rx_errors + 1UL;
    stats->rx_frame_errors = stats->rx_frame_errors + 1UL;
    return;
  } else {
  }
  skb = dev_alloc_skb((unsigned int )(pkt_len - snap));
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    stats->rx_dropped = stats->rx_dropped + 1UL;
    return;
  } else {
  }
  skb_reserve(skb, 2);
  skb->dev = dev;
  tmp___0 = skb_put(skb, (unsigned int )((pkt_len + -2) - snap));
  eth = tmp___0;
  memcpy((void *)eth + 14U, (void const *)(pkt + ((unsigned long )snap + 12UL)),
           (size_t )((pkt_len + -16) - snap));
  *eth = *(pkt + 11UL);
  *(eth + 1UL) = *(pkt + 10UL);
  *(eth + 2UL) = *(pkt + 9UL);
  *(eth + 3UL) = *(pkt + 8UL);
  *(eth + 4UL) = *(pkt + 4UL);
  *(eth + 5UL) = *(pkt + 3UL);
  tmp___5 = 0U;
  *(eth + 11UL) = tmp___5;
  tmp___4 = tmp___5;
  *(eth + 10UL) = tmp___4;
  tmp___3 = tmp___4;
  *(eth + 9UL) = tmp___3;
  tmp___2 = tmp___3;
  *(eth + 8UL) = tmp___2;
  tmp___1 = tmp___2;
  *(eth + 7UL) = tmp___1;
  *(eth + 6UL) = tmp___1;
  if (snap != 0) {
    *(eth + 12UL) = *(pkt + 18UL);
    *(eth + 13UL) = *(pkt + 19UL);
  } else
  if ((unsigned int )((int )((unsigned char )*(pkt + 12UL)) >> 4) == 6U) {
    *(eth + 12UL) = 134U;
    *(eth + 13UL) = 221U;
  } else {
    *(eth + 12UL) = 8U;
    *(eth + 13UL) = 0U;
  }
  skb->protocol = dvb_net_eth_type_trans(skb, dev);
  stats->rx_packets = stats->rx_packets + 1UL;
  stats->rx_bytes = stats->rx_bytes + (unsigned long )skb->len;
  netif_rx(skb);
  return;
}
}
static int dvb_net_sec_callback(u8 const *buffer1 , size_t buffer1_len , u8 const *buffer2 ,
                                size_t buffer2_len , struct dmx_section_filter *filter ,
                                enum dmx_success success )
{
  struct net_device *dev ;
  {
  dev = (struct net_device *)filter->priv;
  dvb_net_sec(dev, buffer1, (int )buffer1_len);
  return (0);
}
}
static int dvb_net_tx(struct sk_buff *skb , struct net_device *dev )
{
  {
  consume_skb(skb);
  return (0);
}
}
static u8 mask_normal[6U] = { 255U, 255U, 255U, 255U,
        255U, 255U};
static u8 mask_allmulti[6U] = { 255U, 255U, 255U, 0U,
        0U, 0U};
static u8 mac_allmulti[6U] = { 1U, 0U, 94U, 0U,
        0U, 0U};
static u8 mask_promisc[6U] = { 0U, 0U, 0U, 0U,
        0U, 0U};
static int dvb_net_filter_sec_set(struct net_device *dev , struct dmx_section_filter **secfilter ,
                                  u8 *mac , u8 *mac_mask )
{
  struct dvb_net_priv *priv ;
  void *tmp ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct dvb_net_priv *)tmp;
  *secfilter = (struct dmx_section_filter *)0;
  ret = (*((priv->secfeed)->allocate_filter))(priv->secfeed, secfilter);
  if (ret < 0) {
    printk("%s: could not get filter\n", (char *)(& dev->name));
    return (ret);
  } else {
  }
  (*secfilter)->priv = (void *)dev;
  memset((void *)(& (*secfilter)->filter_value), 0, 18UL);
  memset((void *)(& (*secfilter)->filter_mask), 0, 18UL);
  memset((void *)(& (*secfilter)->filter_mode), 255, 18UL);
  (*secfilter)->filter_value[0] = 62U;
  (*secfilter)->filter_value[3] = *(mac + 5UL);
  (*secfilter)->filter_value[4] = *(mac + 4UL);
  (*secfilter)->filter_value[8] = *(mac + 3UL);
  (*secfilter)->filter_value[9] = *(mac + 2UL);
  (*secfilter)->filter_value[10] = *(mac + 1UL);
  (*secfilter)->filter_value[11] = *mac;
  (*secfilter)->filter_mask[0] = 255U;
  (*secfilter)->filter_mask[3] = *(mac_mask + 5UL);
  (*secfilter)->filter_mask[4] = *(mac_mask + 4UL);
  (*secfilter)->filter_mask[8] = *(mac_mask + 3UL);
  (*secfilter)->filter_mask[9] = *(mac_mask + 2UL);
  (*secfilter)->filter_mask[10] = *(mac_mask + 1UL);
  (*secfilter)->filter_mask[11] = *mac_mask;
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_net_filter_sec_set";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_net.c";
  descriptor.format = "filter mac=%pM mask=%pM\n";
  descriptor.lineno = 933U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, "filter mac=%pM mask=%pM\n",
                         mac, mac_mask);
  } else {
  }
  return (0);
}
}
static int dvb_net_feed_start(struct net_device *dev )
{
  int ret ;
  int i ;
  struct dvb_net_priv *priv ;
  void *tmp ;
  struct dmx_demux *demux ;
  unsigned char *mac ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___5 ;
  long tmp___6 ;
  struct timespec timeout ;
  struct _ddebug descriptor___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___7 ;
  long tmp___8 ;
  {
  ret = 0;
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct dvb_net_priv *)tmp;
  demux = priv->demux;
  mac = dev->dev_addr;
  descriptor.modname = "dvb_core";
  descriptor.function = "dvb_net_feed_start";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_net.c";
  descriptor.format = "rx_mode %i\n";
  descriptor.lineno = 945U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, "rx_mode %i\n",
                         priv->rx_mode);
  } else {
  }
  mutex_lock_nested(& priv->mutex, 0U);
  if ((((unsigned long )priv->tsfeed != (unsigned long )((struct dmx_ts_feed *)0) || (unsigned long )priv->secfeed != (unsigned long )((struct dmx_section_feed *)0)) || (unsigned long )priv->secfilter != (unsigned long )((struct dmx_section_filter *)0)) || (unsigned long )priv->multi_secfilter[0] != (unsigned long )((struct dmx_section_filter *)0)) {
    printk("%s: BUG %d\n", "dvb_net_feed_start", 948);
  } else {
  }
  priv->secfeed = (struct dmx_section_feed *)0;
  priv->secfilter = (struct dmx_section_filter *)0;
  priv->tsfeed = (struct dmx_ts_feed *)0;
  if ((unsigned int )priv->feedtype == 0U) {
    descriptor___0.modname = "dvb_core";
    descriptor___0.function = "dvb_net_feed_start";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_net.c";
    descriptor___0.format = "alloc secfeed\n";
    descriptor___0.lineno = 955U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev, "alloc secfeed\n");
    } else {
    }
    ret = (*(demux->allocate_section_feed))(demux, & priv->secfeed, & dvb_net_sec_callback);
    if (ret < 0) {
      printk("%s: could not allocate section feed\n", (char *)(& dev->name));
      goto error;
    } else {
    }
    ret = (*((priv->secfeed)->set))(priv->secfeed, (int )priv->pid, 32768UL, 1);
    if (ret < 0) {
      printk("%s: could not set section feed\n", (char *)(& dev->name));
      (*((priv->demux)->release_section_feed))(priv->demux, priv->secfeed);
      priv->secfeed = (struct dmx_section_feed *)0;
      goto error;
    } else {
    }
    if (priv->rx_mode != 3) {
      descriptor___1.modname = "dvb_core";
      descriptor___1.function = "dvb_net_feed_start";
      descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_net.c";
      descriptor___1.format = "set secfilter\n";
      descriptor___1.lineno = 973U;
      descriptor___1.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___2 != 0L) {
        __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)dev, "set secfilter\n");
      } else {
      }
      dvb_net_filter_sec_set(dev, & priv->secfilter, mac, (u8 *)(& mask_normal));
    } else {
    }
    switch (priv->rx_mode) {
    case 1:
    i = 0;
    goto ldv_45329;
    ldv_45328:
    descriptor___2.modname = "dvb_core";
    descriptor___2.function = "dvb_net_feed_start";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_net.c";
    descriptor___2.format = "set multi_secfilter[%d]\n";
    descriptor___2.lineno = 980U;
    descriptor___2.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_netdev_dbg(& descriptor___2, (struct net_device const *)dev, "set multi_secfilter[%d]\n",
                           i);
    } else {
    }
    dvb_net_filter_sec_set(dev, (struct dmx_section_filter **)(& priv->multi_secfilter) + (unsigned long )i,
                           (u8 *)(& priv->multi_macs) + (unsigned long )i, (u8 *)(& mask_normal));
    i = i + 1;
    ldv_45329: ;
    if (priv->multi_num > i) {
      goto ldv_45328;
    } else {
    }
    goto ldv_45331;
    case 2:
    priv->multi_num = 1;
    descriptor___3.modname = "dvb_core";
    descriptor___3.function = "dvb_net_feed_start";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_net.c";
    descriptor___3.format = "set multi_secfilter[0]\n";
    descriptor___3.lineno = 987U;
    descriptor___3.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_netdev_dbg(& descriptor___3, (struct net_device const *)dev, "set multi_secfilter[0]\n");
    } else {
    }
    dvb_net_filter_sec_set(dev, (struct dmx_section_filter **)(& priv->multi_secfilter),
                           (u8 *)(& mac_allmulti), (u8 *)(& mask_allmulti));
    goto ldv_45331;
    case 3:
    priv->multi_num = 0;
    descriptor___4.modname = "dvb_core";
    descriptor___4.function = "dvb_net_feed_start";
    descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_net.c";
    descriptor___4.format = "set secfilter\n";
    descriptor___4.lineno = 993U;
    descriptor___4.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      __dynamic_netdev_dbg(& descriptor___4, (struct net_device const *)dev, "set secfilter\n");
    } else {
    }
    dvb_net_filter_sec_set(dev, & priv->secfilter, mac, (u8 *)(& mask_promisc));
    goto ldv_45331;
    }
    ldv_45331:
    descriptor___5.modname = "dvb_core";
    descriptor___5.function = "dvb_net_feed_start";
    descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_net.c";
    descriptor___5.format = "start filtering\n";
    descriptor___5.lineno = 998U;
    descriptor___5.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_netdev_dbg(& descriptor___5, (struct net_device const *)dev, "start filtering\n");
    } else {
    }
    (*((priv->secfeed)->start_filtering))(priv->secfeed);
  } else
  if ((unsigned int )priv->feedtype == 1U) {
    timeout.tv_sec = 0L;
    timeout.tv_nsec = 10000000L;
    descriptor___6.modname = "dvb_core";
    descriptor___6.function = "dvb_net_feed_start";
    descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_net.c";
    descriptor___6.format = "alloc tsfeed\n";
    descriptor___6.lineno = 1004U;
    descriptor___6.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      __dynamic_netdev_dbg(& descriptor___6, (struct net_device const *)dev, "alloc tsfeed\n");
    } else {
    }
    ret = (*(demux->allocate_ts_feed))(demux, & priv->tsfeed, & dvb_net_ts_callback);
    if (ret < 0) {
      printk("%s: could not allocate ts feed\n", (char *)(& dev->name));
      goto error;
    } else {
    }
    (priv->tsfeed)->priv = (void *)dev;
    ret = (*((priv->tsfeed)->set))(priv->tsfeed, (int )priv->pid, 1, 20, 32768UL,
                                   timeout);
    if (ret < 0) {
      printk("%s: could not set ts feed\n", (char *)(& dev->name));
      (*((priv->demux)->release_ts_feed))(priv->demux, priv->tsfeed);
      priv->tsfeed = (struct dmx_ts_feed *)0;
      goto error;
    } else {
    }
    descriptor___7.modname = "dvb_core";
    descriptor___7.function = "dvb_net_feed_start";
    descriptor___7.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_net.c";
    descriptor___7.format = "start filtering\n";
    descriptor___7.lineno = 1028U;
    descriptor___7.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      __dynamic_netdev_dbg(& descriptor___7, (struct net_device const *)dev, "start filtering\n");
    } else {
    }
    (*((priv->tsfeed)->start_filtering))(priv->tsfeed);
  } else {
    ret = -22;
  }
  error:
  mutex_unlock(& priv->mutex);
  return (ret);
}
}
static int dvb_net_feed_stop(struct net_device *dev )
{
  struct dvb_net_priv *priv ;
  void *tmp ;
  int i ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct dvb_net_priv *)tmp;
  ret = 0;
  mutex_lock_nested(& priv->mutex, 0U);
  if ((unsigned int )priv->feedtype == 0U) {
    if ((unsigned long )priv->secfeed != (unsigned long )((struct dmx_section_feed *)0)) {
      if ((priv->secfeed)->is_filtering != 0) {
        descriptor.modname = "dvb_core";
        descriptor.function = "dvb_net_feed_stop";
        descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_net.c";
        descriptor.format = "stop secfeed\n";
        descriptor.lineno = 1047U;
        descriptor.flags = 0U;
        tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
        if (tmp___0 != 0L) {
          __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, "stop secfeed\n");
        } else {
        }
        (*((priv->secfeed)->stop_filtering))(priv->secfeed);
      } else {
      }
      if ((unsigned long )priv->secfilter != (unsigned long )((struct dmx_section_filter *)0)) {
        descriptor___0.modname = "dvb_core";
        descriptor___0.function = "dvb_net_feed_stop";
        descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_net.c";
        descriptor___0.format = "release secfilter\n";
        descriptor___0.lineno = 1052U;
        descriptor___0.flags = 0U;
        tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
        if (tmp___1 != 0L) {
          __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev,
                               "release secfilter\n");
        } else {
        }
        (*((priv->secfeed)->release_filter))(priv->secfeed, priv->secfilter);
        priv->secfilter = (struct dmx_section_filter *)0;
      } else {
      }
      i = 0;
      goto ldv_45351;
      ldv_45350: ;
      if ((unsigned long )priv->multi_secfilter[i] != (unsigned long )((struct dmx_section_filter *)0)) {
        descriptor___1.modname = "dvb_core";
        descriptor___1.function = "dvb_net_feed_stop";
        descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_net.c";
        descriptor___1.format = "release multi_filter[%d]\n";
        descriptor___1.lineno = 1061U;
        descriptor___1.flags = 0U;
        tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
        if (tmp___2 != 0L) {
          __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)dev,
                               "release multi_filter[%d]\n", i);
        } else {
        }
        (*((priv->secfeed)->release_filter))(priv->secfeed, priv->multi_secfilter[i]);
        priv->multi_secfilter[i] = (struct dmx_section_filter *)0;
      } else {
      }
      i = i + 1;
      ldv_45351: ;
      if (priv->multi_num > i) {
        goto ldv_45350;
      } else {
      }
      (*((priv->demux)->release_section_feed))(priv->demux, priv->secfeed);
      priv->secfeed = (struct dmx_section_feed *)0;
    } else {
      printk("%s: no feed to stop\n", (char *)(& dev->name));
    }
  } else
  if ((unsigned int )priv->feedtype == 1U) {
    if ((unsigned long )priv->tsfeed != (unsigned long )((struct dmx_ts_feed *)0)) {
      if ((priv->tsfeed)->is_filtering != 0) {
        descriptor___2.modname = "dvb_core";
        descriptor___2.function = "dvb_net_feed_stop";
        descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_net.c";
        descriptor___2.format = "stop tsfeed\n";
        descriptor___2.lineno = 1075U;
        descriptor___2.flags = 0U;
        tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
        if (tmp___3 != 0L) {
          __dynamic_netdev_dbg(& descriptor___2, (struct net_device const *)dev,
                               "stop tsfeed\n");
        } else {
        }
        (*((priv->tsfeed)->stop_filtering))(priv->tsfeed);
      } else {
      }
      (*((priv->demux)->release_ts_feed))(priv->demux, priv->tsfeed);
      priv->tsfeed = (struct dmx_ts_feed *)0;
    } else {
      printk("%s: no ts feed to stop\n", (char *)(& dev->name));
    }
  } else {
    ret = -22;
  }
  mutex_unlock(& priv->mutex);
  return (ret);
}
}
static int dvb_set_mc_filter(struct net_device *dev , unsigned char *addr )
{
  struct dvb_net_priv *priv ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct dvb_net_priv *)tmp;
  if (priv->multi_num == 10) {
    return (-12);
  } else {
  }
  memcpy((void *)(& priv->multi_macs) + (unsigned long )priv->multi_num, (void const *)addr,
           6UL);
  priv->multi_num = priv->multi_num + 1;
  return (0);
}
}
static void wq_set_multicast_list(struct work_struct *work )
{
  struct dvb_net_priv *priv ;
  struct work_struct const *__mptr ;
  struct net_device *dev ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct netdev_hw_addr *ha ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct work_struct const *)work;
  priv = (struct dvb_net_priv *)__mptr + 0xffffffffffffff30UL;
  dev = priv->net;
  dvb_net_feed_stop(dev);
  priv->rx_mode = 0;
  netif_addr_lock_bh(dev);
  if ((dev->flags & 256U) != 0U) {
    descriptor.modname = "dvb_core";
    descriptor.function = "wq_set_multicast_list";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_net.c";
    descriptor.format = "promiscuous mode\n";
    descriptor.lineno = 1115U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, "promiscuous mode\n");
    } else {
    }
    priv->rx_mode = 3;
  } else
  if ((dev->flags & 512U) != 0U) {
    descriptor___0.modname = "dvb_core";
    descriptor___0.function = "wq_set_multicast_list";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_net.c";
    descriptor___0.format = "allmulti mode\n";
    descriptor___0.lineno = 1118U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev, "allmulti mode\n");
    } else {
    }
    priv->rx_mode = 2;
  } else
  if (dev->mc.count != 0) {
    descriptor___1.modname = "dvb_core";
    descriptor___1.function = "wq_set_multicast_list";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_net.c";
    descriptor___1.format = "set_mc_list, %d entries\n";
    descriptor___1.lineno = 1124U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)dev, "set_mc_list, %d entries\n",
                           dev->mc.count);
    } else {
    }
    priv->rx_mode = 1;
    priv->multi_num = 0;
    __mptr___0 = (struct list_head const *)dev->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    goto ldv_45376;
    ldv_45375:
    dvb_set_mc_filter(dev, (unsigned char *)(& ha->addr));
    __mptr___1 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___1;
    ldv_45376: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& dev->mc.list)) {
      goto ldv_45375;
    } else {
    }
  } else {
  }
  netif_addr_unlock_bh(dev);
  dvb_net_feed_start(dev);
  return;
}
}
static void dvb_net_set_multicast_list(struct net_device *dev )
{
  struct dvb_net_priv *priv ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct dvb_net_priv *)tmp;
  schedule_work(& priv->set_multicast_list_wq);
  return;
}
}
static void wq_restart_net_feed(struct work_struct *work )
{
  struct dvb_net_priv *priv ;
  struct work_struct const *__mptr ;
  struct net_device *dev ;
  bool tmp ;
  {
  __mptr = (struct work_struct const *)work;
  priv = (struct dvb_net_priv *)__mptr + 0xfffffffffffffee0UL;
  dev = priv->net;
  tmp = netif_running((struct net_device const *)dev);
  if ((int )tmp) {
    dvb_net_feed_stop(dev);
    dvb_net_feed_start(dev);
  } else {
  }
  return;
}
}
static int dvb_net_set_mac(struct net_device *dev , void *p )
{
  struct dvb_net_priv *priv ;
  void *tmp ;
  struct sockaddr *addr ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct dvb_net_priv *)tmp;
  addr = (struct sockaddr *)p;
  memcpy((void *)dev->dev_addr, (void const *)(& addr->sa_data), (size_t )dev->addr_len);
  tmp___0 = netif_running((struct net_device const *)dev);
  if ((int )tmp___0) {
    schedule_work(& priv->restart_net_feed_wq);
  } else {
  }
  return (0);
}
}
static int dvb_net_open(struct net_device *dev )
{
  struct dvb_net_priv *priv ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct dvb_net_priv *)tmp;
  priv->in_use = priv->in_use + 1;
  dvb_net_feed_start(dev);
  return (0);
}
}
static int dvb_net_stop(struct net_device *dev )
{
  struct dvb_net_priv *priv ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  priv = (struct dvb_net_priv *)tmp;
  priv->in_use = priv->in_use - 1;
  tmp___0 = dvb_net_feed_stop(dev);
  return (tmp___0);
}
}
static struct header_ops const dvb_header_ops = {& eth_header, & eth_header_parse, 0, 0};
static struct net_device_ops const dvb_netdev_ops =
     {0, 0, & dvb_net_open, & dvb_net_stop, (netdev_tx_t (*)(struct sk_buff * , struct net_device * ))(& dvb_net_tx),
    0, 0, & dvb_net_set_multicast_list, & dvb_net_set_mac, & eth_validate_addr, 0,
    0, & eth_change_mtu, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0};
static void dvb_net_setup(struct net_device *dev )
{
  {
  ether_setup(dev);
  dev->header_ops = & dvb_header_ops;
  dev->netdev_ops = & dvb_netdev_ops;
  dev->mtu = 4096U;
  dev->flags = dev->flags | 128U;
  return;
}
}
static int get_if(struct dvb_net *dvbnet )
{
  int i ;
  {
  i = 0;
  goto ldv_45414;
  ldv_45413: ;
  if (dvbnet->state[i] == 0) {
    goto ldv_45412;
  } else {
  }
  i = i + 1;
  ldv_45414: ;
  if (i <= 9) {
    goto ldv_45413;
  } else {
  }
  ldv_45412: ;
  if (i == 10) {
    return (-1);
  } else {
  }
  dvbnet->state[i] = 1;
  return (i);
}
}
static int dvb_net_add_if(struct dvb_net *dvbnet , u16 pid , u8 feedtype )
{
  struct net_device *net ;
  struct dvb_net_priv *priv ;
  int result ;
  int if_num ;
  void *tmp ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___1 ;
  {
  if ((unsigned int )feedtype != 0U && (unsigned int )feedtype != 1U) {
    return (-22);
  } else {
  }
  if_num = get_if(dvbnet);
  if (if_num < 0) {
    return (-22);
  } else {
  }
  net = alloc_netdev_mqs(584, "dvb", 0, & dvb_net_setup, 1U, 1U);
  if ((unsigned long )net == (unsigned long )((struct net_device *)0)) {
    return (-12);
  } else {
  }
  if ((dvbnet->dvbdev)->id != 0U) {
    snprintf((char *)(& net->name), 16UL, "dvb%d%u%d", ((dvbnet->dvbdev)->adapter)->num,
             (dvbnet->dvbdev)->id, if_num);
  } else {
    snprintf((char *)(& net->name), 16UL, "dvb%d_%d", ((dvbnet->dvbdev)->adapter)->num,
             if_num);
  }
  net->addr_len = 6U;
  memcpy((void *)net->dev_addr, (void const *)(& ((dvbnet->dvbdev)->adapter)->proposed_mac),
           6UL);
  dvbnet->device[if_num] = net;
  tmp = netdev_priv((struct net_device const *)net);
  priv = (struct dvb_net_priv *)tmp;
  priv->net = net;
  priv->demux = dvbnet->demux;
  priv->pid = pid;
  priv->rx_mode = 0;
  priv->need_pusi = 1;
  priv->tscc = 0U;
  priv->feedtype = feedtype;
  reset_ule(priv);
  __init_work(& priv->set_multicast_list_wq, 0);
  __constr_expr_0.counter = 137438953408L;
  priv->set_multicast_list_wq.data = __constr_expr_0;
  lockdep_init_map(& priv->set_multicast_list_wq.lockdep_map, "(&priv->set_multicast_list_wq)",
                   & __key, 0);
  INIT_LIST_HEAD(& priv->set_multicast_list_wq.entry);
  priv->set_multicast_list_wq.func = & wq_set_multicast_list;
  __init_work(& priv->restart_net_feed_wq, 0);
  __constr_expr_1.counter = 137438953408L;
  priv->restart_net_feed_wq.data = __constr_expr_1;
  lockdep_init_map(& priv->restart_net_feed_wq.lockdep_map, "(&priv->restart_net_feed_wq)",
                   & __key___0, 0);
  INIT_LIST_HEAD(& priv->restart_net_feed_wq.entry);
  priv->restart_net_feed_wq.func = & wq_restart_net_feed;
  __mutex_init(& priv->mutex, "&priv->mutex", & __key___1);
  net->base_addr = (unsigned long )pid;
  result = ldv_register_netdev_111(net);
  if (result < 0) {
    dvbnet->device[if_num] = (struct net_device *)0;
    ldv_free_netdev_112(net);
    return (result);
  } else {
  }
  printk("dvb_net: created network interface %s\n", (char *)(& net->name));
  return (if_num);
}
}
static int dvb_net_remove_if(struct dvb_net *dvbnet , unsigned long num )
{
  struct net_device *net ;
  struct dvb_net_priv *priv ;
  void *tmp ;
  {
  net = dvbnet->device[num];
  if (dvbnet->state[num] == 0) {
    return (-22);
  } else {
  }
  tmp = netdev_priv((struct net_device const *)net);
  priv = (struct dvb_net_priv *)tmp;
  if (priv->in_use != 0) {
    return (-16);
  } else {
  }
  dvb_net_stop(net);
  ldv_flush_work_113(& priv->set_multicast_list_wq);
  ldv_flush_work_114(& priv->restart_net_feed_wq);
  printk("dvb_net: removed network interface %s\n", (char *)(& net->name));
  ldv_unregister_netdev_115(net);
  dvbnet->state[num] = 0;
  dvbnet->device[num] = (struct net_device *)0;
  ldv_free_netdev_116(net);
  return (0);
}
}
static int dvb_net_do_ioctl(struct file *file , unsigned int cmd , void *parg )
{
  struct dvb_device *dvbdev ;
  struct dvb_net *dvbnet ;
  int ret ;
  int tmp ;
  struct dvb_net_if *dvbnetif ;
  int result ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  struct net_device *netdev ;
  struct dvb_net_priv *priv_data ;
  struct dvb_net_if *dvbnetif___0 ;
  void *tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  struct __dvb_net_if_old *dvbnetif___1 ;
  int result___0 ;
  bool tmp___7 ;
  int tmp___8 ;
  bool tmp___9 ;
  int tmp___10 ;
  struct net_device *netdev___0 ;
  struct dvb_net_priv *priv_data___0 ;
  struct __dvb_net_if_old *dvbnetif___2 ;
  void *tmp___11 ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  dvbnet = (struct dvb_net *)dvbdev->priv;
  ret = 0;
  if ((file->f_flags & 3U) == 0U) {
    return (-1);
  } else {
  }
  tmp = mutex_lock_interruptible_nested(& dvbnet->ioctl_mutex, 0U);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  switch (cmd) {
  case 3221647156U:
  dvbnetif = (struct dvb_net_if *)parg;
  tmp___0 = capable(21);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    ret = -1;
    goto ioctl_error;
  } else {
  }
  tmp___2 = ldv_try_module_get_117((dvbdev->adapter)->module);
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    ret = -1;
    goto ioctl_error;
  } else {
  }
  result = dvb_net_add_if(dvbnet, (int )dvbnetif->pid, (int )dvbnetif->feedtype);
  if (result < 0) {
    ldv_module_put_118((dvbdev->adapter)->module);
    ret = result;
    goto ioctl_error;
  } else {
  }
  dvbnetif->if_num = (__u16 )result;
  goto ldv_45447;
  case 3221647158U:
  dvbnetif___0 = (struct dvb_net_if *)parg;
  if ((unsigned int )dvbnetif___0->if_num > 9U || dvbnet->state[(int )dvbnetif___0->if_num] == 0) {
    ret = -22;
    goto ioctl_error;
  } else {
  }
  netdev = dvbnet->device[(int )dvbnetif___0->if_num];
  tmp___4 = netdev_priv((struct net_device const *)netdev);
  priv_data = (struct dvb_net_priv *)tmp___4;
  dvbnetif___0->pid = priv_data->pid;
  dvbnetif___0->feedtype = priv_data->feedtype;
  goto ldv_45447;
  case 28469U:
  tmp___5 = capable(21);
  if (tmp___5) {
    tmp___6 = 0;
  } else {
    tmp___6 = 1;
  }
  if (tmp___6) {
    ret = -1;
    goto ioctl_error;
  } else {
  }
  if ((unsigned long )parg > 9UL) {
    ret = -22;
    goto ioctl_error;
  } else {
  }
  ret = dvb_net_remove_if(dvbnet, (unsigned long )parg);
  if (ret == 0) {
    ldv_module_put_119((dvbdev->adapter)->module);
  } else {
  }
  goto ldv_45447;
  case 3221516084U:
  dvbnetif___1 = (struct __dvb_net_if_old *)parg;
  tmp___7 = capable(21);
  if (tmp___7) {
    tmp___8 = 0;
  } else {
    tmp___8 = 1;
  }
  if (tmp___8) {
    ret = -1;
    goto ioctl_error;
  } else {
  }
  tmp___9 = ldv_try_module_get_120((dvbdev->adapter)->module);
  if (tmp___9) {
    tmp___10 = 0;
  } else {
    tmp___10 = 1;
  }
  if (tmp___10) {
    ret = -1;
    goto ioctl_error;
  } else {
  }
  result___0 = dvb_net_add_if(dvbnet, (int )dvbnetif___1->pid, 0);
  if (result___0 < 0) {
    ldv_module_put_121((dvbdev->adapter)->module);
    ret = result___0;
    goto ioctl_error;
  } else {
  }
  dvbnetif___1->if_num = (__u16 )result___0;
  goto ldv_45447;
  case 3221516086U:
  dvbnetif___2 = (struct __dvb_net_if_old *)parg;
  if ((unsigned int )dvbnetif___2->if_num > 9U || dvbnet->state[(int )dvbnetif___2->if_num] == 0) {
    ret = -22;
    goto ioctl_error;
  } else {
  }
  netdev___0 = dvbnet->device[(int )dvbnetif___2->if_num];
  tmp___11 = netdev_priv((struct net_device const *)netdev___0);
  priv_data___0 = (struct dvb_net_priv *)tmp___11;
  dvbnetif___2->pid = priv_data___0->pid;
  goto ldv_45447;
  default:
  ret = -25;
  goto ldv_45447;
  }
  ldv_45447: ;
  ioctl_error:
  mutex_unlock(& dvbnet->ioctl_mutex);
  return (ret);
}
}
static long dvb_net_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  int tmp ;
  {
  tmp = dvb_usercopy(file, cmd, arg, & dvb_net_do_ioctl);
  return ((long )tmp);
}
}
static int dvb_net_close(struct inode *inode , struct file *file )
{
  struct dvb_device *dvbdev ;
  struct dvb_net *dvbnet ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  dvbnet = (struct dvb_net *)dvbdev->priv;
  dvb_generic_release(inode, file);
  if (dvbdev->users == 1 && (unsigned int )*((unsigned char *)dvbnet + 128UL) != 0U) {
    __wake_up(& dvbdev->wait_queue, 3U, 1, (void *)0);
  } else {
  }
  return (0);
}
}
static struct file_operations const dvb_net_fops =
     {& __this_module, & noop_llseek, 0, 0, 0, 0, 0, 0, & dvb_net_ioctl, 0, 0, 0, & dvb_generic_open,
    0, & dvb_net_close, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct dvb_device const dvbdev_net =
     {{0, 0}, & dvb_net_fops, 0, 0, 0, 0U, 0, 1, 1, {{{{{{0}}, 0U, 0U, 0, {0, {0, 0},
                                                                         0, 0, 0UL}}}},
                                                   {0, 0}}, 0, (void *)0};
void dvb_net_release(struct dvb_net *dvbnet )
{
  int i ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp ;
  {
  dvbnet->exit = 1U;
  if ((dvbnet->dvbdev)->users <= 0) {
    __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_net.c",
                  1481, 0);
    if ((dvbnet->dvbdev)->users == 1) {
      goto ldv_45478;
    } else {
    }
    __ret = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_45484:
    tmp = prepare_to_wait_event(& (dvbnet->dvbdev)->wait_queue, & __wait, 2);
    __int = tmp;
    if ((dvbnet->dvbdev)->users == 1) {
      goto ldv_45483;
    } else {
    }
    schedule();
    goto ldv_45484;
    ldv_45483:
    finish_wait(& (dvbnet->dvbdev)->wait_queue, & __wait);
    ldv_45478: ;
  } else {
  }
  dvb_unregister_device(dvbnet->dvbdev);
  i = 0;
  goto ldv_45488;
  ldv_45487: ;
  if (dvbnet->state[i] == 0) {
    goto ldv_45486;
  } else {
  }
  dvb_net_remove_if(dvbnet, (unsigned long )i);
  ldv_45486:
  i = i + 1;
  ldv_45488: ;
  if (i <= 9) {
    goto ldv_45487;
  } else {
  }
  return;
}
}
static char const __kstrtab_dvb_net_release[16U] =
  { 'd', 'v', 'b', '_',
        'n', 'e', 't', '_',
        'r', 'e', 'l', 'e',
        'a', 's', 'e', '\000'};
struct kernel_symbol const __ksymtab_dvb_net_release ;
struct kernel_symbol const __ksymtab_dvb_net_release = {(unsigned long )(& dvb_net_release), (char const *)(& __kstrtab_dvb_net_release)};
int dvb_net_init(struct dvb_adapter *adap , struct dvb_net *dvbnet , struct dmx_demux *dmx )
{
  int i ;
  struct lock_class_key __key ;
  int tmp ;
  {
  __mutex_init(& dvbnet->ioctl_mutex, "&dvbnet->ioctl_mutex", & __key);
  dvbnet->demux = dmx;
  i = 0;
  goto ldv_45505;
  ldv_45504:
  dvbnet->state[i] = 0;
  i = i + 1;
  ldv_45505: ;
  if (i <= 9) {
    goto ldv_45504;
  } else {
  }
  tmp = dvb_register_device(adap, & dvbnet->dvbdev, & dvbdev_net, (void *)dvbnet,
                            7);
  return (tmp);
}
}
static char const __kstrtab_dvb_net_init[13U] =
  { 'd', 'v', 'b', '_',
        'n', 'e', 't', '_',
        'i', 'n', 'i', 't',
        '\000'};
struct kernel_symbol const __ksymtab_dvb_net_init ;
struct kernel_symbol const __ksymtab_dvb_net_init = {(unsigned long )(& dvb_net_init), (char const *)(& __kstrtab_dvb_net_init)};
int ldv_retval_4 ;
extern int ldv_ndo_init_5(void) ;
int ldv_retval_8 ;
extern int ldv_ndo_uninit_5(void) ;
int ldv_retval_7 ;
void call_and_disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 2 || ldv_work_1_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_0) {
    wq_set_multicast_list(work);
    ldv_work_1_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_1 == 2 || ldv_work_1_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_1) {
    wq_set_multicast_list(work);
    ldv_work_1_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_2 == 2 || ldv_work_1_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_2) {
    wq_set_multicast_list(work);
    ldv_work_1_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_3 == 2 || ldv_work_1_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_3) {
    wq_set_multicast_list(work);
    ldv_work_1_3 = 1;
    return;
  } else {
  }
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
void ldv_net_device_ops_5(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(3008UL);
  dvb_netdev_ops_group1 = (struct net_device *)tmp;
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
    wq_set_multicast_list(ldv_work_struct_1_0);
    ldv_work_1_0 = 1;
  } else {
  }
  goto ldv_45563;
  case 1: ;
  if (ldv_work_1_1 == 2 || ldv_work_1_1 == 3) {
    ldv_work_1_1 = 4;
    wq_set_multicast_list(ldv_work_struct_1_0);
    ldv_work_1_1 = 1;
  } else {
  }
  goto ldv_45563;
  case 2: ;
  if (ldv_work_1_2 == 2 || ldv_work_1_2 == 3) {
    ldv_work_1_2 = 4;
    wq_set_multicast_list(ldv_work_struct_1_0);
    ldv_work_1_2 = 1;
  } else {
  }
  goto ldv_45563;
  case 3: ;
  if (ldv_work_1_3 == 2 || ldv_work_1_3 == 3) {
    ldv_work_1_3 = 4;
    wq_set_multicast_list(ldv_work_struct_1_0);
    ldv_work_1_3 = 1;
  } else {
  }
  goto ldv_45563;
  default:
  ldv_stop();
  }
  ldv_45563: ;
  return;
}
}
void call_and_disable_work_2(struct work_struct *work )
{
  {
  if ((ldv_work_2_0 == 2 || ldv_work_2_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_0) {
    wq_restart_net_feed(work);
    ldv_work_2_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_1 == 2 || ldv_work_2_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_1) {
    wq_restart_net_feed(work);
    ldv_work_2_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_2 == 2 || ldv_work_2_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_2) {
    wq_restart_net_feed(work);
    ldv_work_2_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_3 == 2 || ldv_work_2_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_3) {
    wq_restart_net_feed(work);
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
    wq_restart_net_feed(ldv_work_struct_2_0);
    ldv_work_2_0 = 1;
  } else {
  }
  goto ldv_45579;
  case 1: ;
  if (ldv_work_2_1 == 2 || ldv_work_2_1 == 3) {
    ldv_work_2_1 = 4;
    wq_restart_net_feed(ldv_work_struct_2_0);
    ldv_work_2_1 = 1;
  } else {
  }
  goto ldv_45579;
  case 2: ;
  if (ldv_work_2_2 == 2 || ldv_work_2_2 == 3) {
    ldv_work_2_2 = 4;
    wq_restart_net_feed(ldv_work_struct_2_0);
    ldv_work_2_2 = 1;
  } else {
  }
  goto ldv_45579;
  case 3: ;
  if (ldv_work_2_3 == 2 || ldv_work_2_3 == 3) {
    ldv_work_2_3 = 4;
    wq_restart_net_feed(ldv_work_struct_2_0);
    ldv_work_2_3 = 1;
  } else {
  }
  goto ldv_45579;
  default:
  ldv_stop();
  }
  ldv_45579: ;
  return;
}
}
void ldv_file_operations_4(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  dvb_net_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  dvb_net_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_main_exported_6(void)
{
  struct sk_buff *ldvarg2 ;
  void *tmp ;
  struct net_device *ldvarg4 ;
  void *tmp___0 ;
  void *ldvarg1 ;
  void *tmp___1 ;
  struct sk_buff *ldvarg6 ;
  void *tmp___2 ;
  void *ldvarg5 ;
  void *tmp___3 ;
  unsigned int ldvarg0 ;
  unsigned short ldvarg3 ;
  unsigned char *ldvarg7 ;
  void *tmp___4 ;
  int tmp___5 ;
  {
  tmp = ldv_init_zalloc(232UL);
  ldvarg2 = (struct sk_buff *)tmp;
  tmp___0 = ldv_init_zalloc(3008UL);
  ldvarg4 = (struct net_device *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg1 = tmp___1;
  tmp___2 = ldv_init_zalloc(232UL);
  ldvarg6 = (struct sk_buff *)tmp___2;
  tmp___3 = ldv_init_zalloc(1UL);
  ldvarg5 = tmp___3;
  tmp___4 = ldv_init_zalloc(1UL);
  ldvarg7 = (unsigned char *)tmp___4;
  ldv_memset((void *)(& ldvarg0), 0, 4UL);
  ldv_memset((void *)(& ldvarg3), 0, 2UL);
  tmp___5 = __VERIFIER_nondet_int();
  switch (tmp___5) {
  case 0: ;
  if (ldv_state_variable_6 == 1) {
    eth_header_parse((struct sk_buff const *)ldvarg6, ldvarg7);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_45599;
  case 1: ;
  if (ldv_state_variable_6 == 1) {
    eth_header(ldvarg2, ldvarg4, (int )ldvarg3, (void const *)ldvarg1, (void const *)ldvarg5,
               ldvarg0);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_45599;
  default:
  ldv_stop();
  }
  ldv_45599: ;
  return;
}
}
void ldv_main_exported_4(void)
{
  unsigned int ldvarg38 ;
  loff_t ldvarg40 ;
  unsigned long ldvarg37 ;
  int ldvarg39 ;
  int tmp ;
  {
  ldv_memset((void *)(& ldvarg38), 0, 4UL);
  ldv_memset((void *)(& ldvarg40), 0, 8UL);
  ldv_memset((void *)(& ldvarg37), 0, 8UL);
  ldv_memset((void *)(& ldvarg39), 0, 4UL);
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_4 == 2) {
    dvb_net_close(dvb_net_fops_group1, dvb_net_fops_group2);
    ldv_state_variable_4 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_45610;
  case 1: ;
  if (ldv_state_variable_4 == 2) {
    noop_llseek(dvb_net_fops_group2, ldvarg40, ldvarg39);
    ldv_state_variable_4 = 2;
  } else {
  }
  goto ldv_45610;
  case 2: ;
  if (ldv_state_variable_4 == 1) {
    ldv_retval_4 = dvb_generic_open(dvb_net_fops_group1, dvb_net_fops_group2);
    if (ldv_retval_4 == 0) {
      ldv_state_variable_4 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_45610;
  case 3: ;
  if (ldv_state_variable_4 == 2) {
    dvb_net_ioctl(dvb_net_fops_group2, ldvarg38, ldvarg37);
    ldv_state_variable_4 = 2;
  } else {
  }
  goto ldv_45610;
  default:
  ldv_stop();
  }
  ldv_45610: ;
  return;
}
}
void ldv_main_exported_5(void)
{
  struct sk_buff *ldvarg50 ;
  void *tmp ;
  void *ldvarg49 ;
  void *tmp___0 ;
  int ldvarg51 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(232UL);
  ldvarg50 = (struct sk_buff *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg49 = tmp___0;
  ldv_memset((void *)(& ldvarg51), 0, 4UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_5 == 1) {
    eth_validate_addr(dvb_netdev_ops_group1);
    ldv_state_variable_5 = 1;
  } else {
  }
  if (ldv_state_variable_5 == 3) {
    eth_validate_addr(dvb_netdev_ops_group1);
    ldv_state_variable_5 = 3;
  } else {
  }
  if (ldv_state_variable_5 == 2) {
    eth_validate_addr(dvb_netdev_ops_group1);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_45622;
  case 1: ;
  if (ldv_state_variable_5 == 1) {
    dvb_net_set_multicast_list(dvb_netdev_ops_group1);
    ldv_state_variable_5 = 1;
  } else {
  }
  if (ldv_state_variable_5 == 3) {
    dvb_net_set_multicast_list(dvb_netdev_ops_group1);
    ldv_state_variable_5 = 3;
  } else {
  }
  if (ldv_state_variable_5 == 2) {
    dvb_net_set_multicast_list(dvb_netdev_ops_group1);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_45622;
  case 2: ;
  if (ldv_state_variable_5 == 3) {
    dvb_net_stop(dvb_netdev_ops_group1);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_45622;
  case 3: ;
  if (ldv_state_variable_5 == 3) {
    eth_change_mtu(dvb_netdev_ops_group1, ldvarg51);
    ldv_state_variable_5 = 3;
  } else {
  }
  if (ldv_state_variable_5 == 2) {
    eth_change_mtu(dvb_netdev_ops_group1, ldvarg51);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_45622;
  case 4: ;
  if (ldv_state_variable_5 == 2) {
    ldv_retval_8 = dvb_net_open(dvb_netdev_ops_group1);
    if (ldv_retval_8 == 0) {
      ldv_state_variable_5 = 3;
    } else {
    }
  } else {
  }
  goto ldv_45622;
  case 5: ;
  if (ldv_state_variable_5 == 3) {
    dvb_net_tx(ldvarg50, dvb_netdev_ops_group1);
    ldv_state_variable_5 = 3;
  } else {
  }
  goto ldv_45622;
  case 6: ;
  if (ldv_state_variable_5 == 1) {
    dvb_net_set_mac(dvb_netdev_ops_group1, ldvarg49);
    ldv_state_variable_5 = 1;
  } else {
  }
  if (ldv_state_variable_5 == 3) {
    dvb_net_set_mac(dvb_netdev_ops_group1, ldvarg49);
    ldv_state_variable_5 = 3;
  } else {
  }
  if (ldv_state_variable_5 == 2) {
    dvb_net_set_mac(dvb_netdev_ops_group1, ldvarg49);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_45622;
  case 7: ;
  if (ldv_state_variable_5 == 1) {
    ldv_retval_7 = ldv_ndo_init_5();
    if (ldv_retval_7 == 0) {
      ldv_state_variable_5 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_45622;
  case 8: ;
  if (ldv_state_variable_5 == 2) {
    ldv_ndo_uninit_5();
    ldv_state_variable_5 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_45622;
  default:
  ldv_stop();
  }
  ldv_45622: ;
  return;
}
}
bool ldv_queue_work_on_106(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_107(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_108(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_109(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_110(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
int ldv_register_netdev_111(struct net_device *dev )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = register_netdev(dev);
  ldv_func_res = tmp;
  ldv_state_variable_5 = 1;
  ldv_net_device_ops_5();
  return (ldv_func_res);
}
}
void ldv_free_netdev_112(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_5 = 0;
  return;
}
}
bool ldv_flush_work_113(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  bool tmp ;
  {
  tmp = flush_work(ldv_func_arg1);
  ldv_func_res = tmp;
  call_and_disable_work_2(ldv_func_arg1);
  return (ldv_func_res);
}
}
bool ldv_flush_work_114(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  bool tmp ;
  {
  tmp = flush_work(ldv_func_arg1);
  ldv_func_res = tmp;
  call_and_disable_work_2(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_unregister_netdev_115(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_5 = 0;
  return;
}
}
void ldv_free_netdev_116(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_5 = 0;
  return;
}
}
bool ldv_try_module_get_117(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_118(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_module_put_119(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
bool ldv_try_module_get_120(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_121(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
bool ldv_queue_work_on_137(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_139(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_138(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_141(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_140(struct workqueue_struct *ldv_func_arg1 ) ;
void dvb_ringbuffer_flush_spinlock_wakeup(struct dvb_ringbuffer *rbuf ) ;
void dvb_ringbuffer_read(struct dvb_ringbuffer *rbuf , u8 *buf , size_t len ) ;
ssize_t dvb_ringbuffer_write_user(struct dvb_ringbuffer *rbuf , u8 const *buf ,
                                  size_t len ) ;
void dvb_ringbuffer_init(struct dvb_ringbuffer *rbuf , void *data , size_t len )
{
  ssize_t tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  tmp = 0L;
  rbuf->pwrite = tmp;
  rbuf->pread = tmp;
  rbuf->data = (u8 *)data;
  rbuf->size = (ssize_t )len;
  rbuf->error = 0;
  __init_waitqueue_head(& rbuf->queue, "&rbuf->queue", & __key);
  spinlock_check(& rbuf->lock);
  __raw_spin_lock_init(& rbuf->lock.__annonCompField18.rlock, "&(&(rbuf->lock))->rlock",
                       & __key___0);
  return;
}
}
int dvb_ringbuffer_empty(struct dvb_ringbuffer *rbuf )
{
  {
  return (rbuf->pread == rbuf->pwrite);
}
}
ssize_t dvb_ringbuffer_free(struct dvb_ringbuffer *rbuf )
{
  ssize_t free ;
  {
  free = rbuf->pread - rbuf->pwrite;
  if (free <= 0L) {
    free = rbuf->size + free;
  } else {
  }
  return (free + -1L);
}
}
ssize_t dvb_ringbuffer_avail(struct dvb_ringbuffer *rbuf )
{
  ssize_t avail ;
  {
  avail = rbuf->pwrite - rbuf->pread;
  if (avail < 0L) {
    avail = rbuf->size + avail;
  } else {
  }
  return (avail);
}
}
void dvb_ringbuffer_flush(struct dvb_ringbuffer *rbuf )
{
  {
  rbuf->pread = rbuf->pwrite;
  rbuf->error = 0;
  return;
}
}
static char const __kstrtab_dvb_ringbuffer_flush[21U] =
  { 'd', 'v', 'b', '_',
        'r', 'i', 'n', 'g',
        'b', 'u', 'f', 'f',
        'e', 'r', '_', 'f',
        'l', 'u', 's', 'h',
        '\000'};
struct kernel_symbol const __ksymtab_dvb_ringbuffer_flush ;
struct kernel_symbol const __ksymtab_dvb_ringbuffer_flush = {(unsigned long )(& dvb_ringbuffer_flush), (char const *)(& __kstrtab_dvb_ringbuffer_flush)};
void dvb_ringbuffer_reset(struct dvb_ringbuffer *rbuf )
{
  ssize_t tmp ;
  {
  tmp = 0L;
  rbuf->pwrite = tmp;
  rbuf->pread = tmp;
  rbuf->error = 0;
  return;
}
}
void dvb_ringbuffer_flush_spinlock_wakeup(struct dvb_ringbuffer *rbuf )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(& rbuf->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  dvb_ringbuffer_flush(rbuf);
  spin_unlock_irqrestore(& rbuf->lock, flags);
  __wake_up(& rbuf->queue, 3U, 1, (void *)0);
  return;
}
}
ssize_t dvb_ringbuffer_read_user(struct dvb_ringbuffer *rbuf , u8 *buf , size_t len )
{
  size_t todo ;
  size_t split ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  todo = len;
  split = (unsigned long )rbuf->pread + len > (unsigned long )rbuf->size ? (size_t )(rbuf->size - rbuf->pread) : 0UL;
  if (split != 0UL) {
    tmp = copy_to_user((void *)buf, (void const *)rbuf->data + (unsigned long )rbuf->pread,
                       split);
    if (tmp != 0UL) {
      return (-14L);
    } else {
    }
    buf = buf + split;
    todo = todo - split;
    rbuf->pread = 0L;
  } else {
  }
  tmp___0 = copy_to_user((void *)buf, (void const *)rbuf->data + (unsigned long )rbuf->pread,
                         todo);
  if (tmp___0 != 0UL) {
    return (-14L);
  } else {
  }
  rbuf->pread = (ssize_t )(((unsigned long )rbuf->pread + todo) % (unsigned long )rbuf->size);
  return ((ssize_t )len);
}
}
void dvb_ringbuffer_read(struct dvb_ringbuffer *rbuf , u8 *buf , size_t len )
{
  size_t todo ;
  size_t split ;
  {
  todo = len;
  split = (unsigned long )rbuf->pread + len > (unsigned long )rbuf->size ? (size_t )(rbuf->size - rbuf->pread) : 0UL;
  if (split != 0UL) {
    memcpy((void *)buf, (void const *)rbuf->data + (unsigned long )rbuf->pread,
             split);
    buf = buf + split;
    todo = todo - split;
    rbuf->pread = 0L;
  } else {
  }
  memcpy((void *)buf, (void const *)rbuf->data + (unsigned long )rbuf->pread,
           todo);
  rbuf->pread = (ssize_t )(((unsigned long )rbuf->pread + todo) % (unsigned long )rbuf->size);
  return;
}
}
ssize_t dvb_ringbuffer_write(struct dvb_ringbuffer *rbuf , u8 const *buf , size_t len )
{
  size_t todo ;
  size_t split ;
  {
  todo = len;
  split = (unsigned long )rbuf->pwrite + len > (unsigned long )rbuf->size ? (size_t )(rbuf->size - rbuf->pwrite) : 0UL;
  if (split != 0UL) {
    memcpy((void *)rbuf->data + (unsigned long )rbuf->pwrite, (void const *)buf,
             split);
    buf = buf + split;
    todo = todo - split;
    rbuf->pwrite = 0L;
  } else {
  }
  memcpy((void *)rbuf->data + (unsigned long )rbuf->pwrite, (void const *)buf,
           todo);
  rbuf->pwrite = (ssize_t )(((unsigned long )rbuf->pwrite + todo) % (unsigned long )rbuf->size);
  return ((ssize_t )len);
}
}
ssize_t dvb_ringbuffer_write_user(struct dvb_ringbuffer *rbuf , u8 const *buf ,
                                  size_t len )
{
  int status ;
  size_t todo ;
  size_t split ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  todo = len;
  split = (unsigned long )rbuf->pwrite + len > (unsigned long )rbuf->size ? (size_t )(rbuf->size - rbuf->pwrite) : 0UL;
  if (split != 0UL) {
    tmp = copy_from_user((void *)rbuf->data + (unsigned long )rbuf->pwrite, (void const *)buf,
                         split);
    status = (int )tmp;
    if (status != 0) {
      return ((ssize_t )(len - todo));
    } else {
    }
    buf = buf + split;
    todo = todo - split;
    rbuf->pwrite = 0L;
  } else {
  }
  tmp___0 = copy_from_user((void *)rbuf->data + (unsigned long )rbuf->pwrite, (void const *)buf,
                           todo);
  status = (int )tmp___0;
  if (status != 0) {
    return ((ssize_t )(len - todo));
  } else {
  }
  rbuf->pwrite = (ssize_t )(((unsigned long )rbuf->pwrite + todo) % (unsigned long )rbuf->size);
  return ((ssize_t )len);
}
}
ssize_t dvb_ringbuffer_pkt_write(struct dvb_ringbuffer *rbuf , u8 *buf , size_t len )
{
  int status ;
  ssize_t oldpwrite ;
  ssize_t tmp ;
  {
  oldpwrite = rbuf->pwrite;
  *(rbuf->data + (unsigned long )rbuf->pwrite) = (u8 )(len >> 8);
  rbuf->pwrite = (rbuf->pwrite + 1L) % rbuf->size;
  *(rbuf->data + (unsigned long )rbuf->pwrite) = (u8 )len;
  rbuf->pwrite = (rbuf->pwrite + 1L) % rbuf->size;
  *(rbuf->data + (unsigned long )rbuf->pwrite) = 0U;
  rbuf->pwrite = (rbuf->pwrite + 1L) % rbuf->size;
  tmp = dvb_ringbuffer_write(rbuf, (u8 const *)buf, len);
  status = (int )tmp;
  if (status < 0) {
    rbuf->pwrite = oldpwrite;
  } else {
  }
  return ((ssize_t )status);
}
}
ssize_t dvb_ringbuffer_pkt_read_user(struct dvb_ringbuffer *rbuf , size_t idx , int offset ,
                                     u8 *buf , size_t len )
{
  size_t todo ;
  size_t split ;
  size_t pktlen ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  pktlen = (size_t )((int )*(rbuf->data + idx) << 8);
  pktlen = (size_t )*(rbuf->data + (idx + 1UL) % (unsigned long )rbuf->size) | pktlen;
  if ((size_t )offset > pktlen) {
    return (-22L);
  } else {
  }
  if ((size_t )offset + len > pktlen) {
    len = pktlen - (size_t )offset;
  } else {
  }
  idx = (((size_t )offset + idx) + 3UL) % (unsigned long )rbuf->size;
  todo = len;
  split = idx + len > (unsigned long )rbuf->size ? (unsigned long )rbuf->size - idx : 0UL;
  if (split != 0UL) {
    tmp = copy_to_user((void *)buf, (void const *)(rbuf->data + idx), split);
    if (tmp != 0UL) {
      return (-14L);
    } else {
    }
    buf = buf + split;
    todo = todo - split;
    idx = 0UL;
  } else {
  }
  tmp___0 = copy_to_user((void *)buf, (void const *)(rbuf->data + idx), todo);
  if (tmp___0 != 0UL) {
    return (-14L);
  } else {
  }
  return ((ssize_t )len);
}
}
ssize_t dvb_ringbuffer_pkt_read(struct dvb_ringbuffer *rbuf , size_t idx , int offset ,
                                u8 *buf , size_t len )
{
  size_t todo ;
  size_t split ;
  size_t pktlen ;
  {
  pktlen = (size_t )((int )*(rbuf->data + idx) << 8);
  pktlen = (size_t )*(rbuf->data + (idx + 1UL) % (unsigned long )rbuf->size) | pktlen;
  if ((size_t )offset > pktlen) {
    return (-22L);
  } else {
  }
  if ((size_t )offset + len > pktlen) {
    len = pktlen - (size_t )offset;
  } else {
  }
  idx = (((size_t )offset + idx) + 3UL) % (unsigned long )rbuf->size;
  todo = len;
  split = idx + len > (unsigned long )rbuf->size ? (unsigned long )rbuf->size - idx : 0UL;
  if (split != 0UL) {
    memcpy((void *)buf, (void const *)(rbuf->data + idx), split);
    buf = buf + split;
    todo = todo - split;
    idx = 0UL;
  } else {
  }
  memcpy((void *)buf, (void const *)(rbuf->data + idx), todo);
  return ((ssize_t )len);
}
}
void dvb_ringbuffer_pkt_dispose(struct dvb_ringbuffer *rbuf , size_t idx )
{
  size_t pktlen ;
  ssize_t tmp ;
  {
  *(rbuf->data + (idx + 2UL) % (unsigned long )rbuf->size) = 1U;
  goto ldv_20338;
  ldv_20337: ;
  if ((unsigned int )*(rbuf->data + (unsigned long )((rbuf->pread + 2L) % rbuf->size)) == 1U) {
    pktlen = (size_t )((int )*(rbuf->data + (unsigned long )(rbuf->pread % rbuf->size)) << 8);
    pktlen = (size_t )*(rbuf->data + (unsigned long )((rbuf->pread + 1L) % rbuf->size)) | pktlen;
    rbuf->pread = (ssize_t )((((unsigned long )rbuf->pread + pktlen) + 3UL) % (unsigned long )rbuf->size);
  } else {
    goto ldv_20336;
  }
  ldv_20338:
  tmp = dvb_ringbuffer_avail(rbuf);
  if (tmp > 3L) {
    goto ldv_20337;
  } else {
  }
  ldv_20336: ;
  return;
}
}
ssize_t dvb_ringbuffer_pkt_next(struct dvb_ringbuffer *rbuf , size_t idx , size_t *pktlen )
{
  int consumed ;
  int curpktlen ;
  int curpktstatus ;
  ssize_t tmp ;
  {
  if (idx == 0xffffffffffffffffUL) {
    idx = (size_t )rbuf->pread;
  } else {
    curpktlen = (int )*(rbuf->data + idx) << 8;
    curpktlen = (int )*(rbuf->data + (idx + 1UL) % (unsigned long )rbuf->size) | curpktlen;
    idx = (((size_t )curpktlen + idx) + 3UL) % (unsigned long )rbuf->size;
  }
  consumed = (int )((idx - (unsigned long )rbuf->pread) % (unsigned long )rbuf->size);
  goto ldv_20348;
  ldv_20347:
  curpktlen = (int )*(rbuf->data + idx) << 8;
  curpktlen = (int )*(rbuf->data + (idx + 1UL) % (unsigned long )rbuf->size) | curpktlen;
  curpktstatus = (int )*(rbuf->data + (idx + 2UL) % (unsigned long )rbuf->size);
  if (curpktstatus == 0) {
    *pktlen = (size_t )curpktlen;
    return ((ssize_t )idx);
  } else {
  }
  consumed = (curpktlen + 3) + consumed;
  idx = (((size_t )curpktlen + idx) + 3UL) % (unsigned long )rbuf->size;
  ldv_20348:
  tmp = dvb_ringbuffer_avail(rbuf);
  if (tmp - (ssize_t )consumed > 3L) {
    goto ldv_20347;
  } else {
  }
  return (-1L);
}
}
static char const __kstrtab_dvb_ringbuffer_init[20U] =
  { 'd', 'v', 'b', '_',
        'r', 'i', 'n', 'g',
        'b', 'u', 'f', 'f',
        'e', 'r', '_', 'i',
        'n', 'i', 't', '\000'};
struct kernel_symbol const __ksymtab_dvb_ringbuffer_init ;
struct kernel_symbol const __ksymtab_dvb_ringbuffer_init = {(unsigned long )(& dvb_ringbuffer_init), (char const *)(& __kstrtab_dvb_ringbuffer_init)};
static char const __kstrtab_dvb_ringbuffer_empty[21U] =
  { 'd', 'v', 'b', '_',
        'r', 'i', 'n', 'g',
        'b', 'u', 'f', 'f',
        'e', 'r', '_', 'e',
        'm', 'p', 't', 'y',
        '\000'};
struct kernel_symbol const __ksymtab_dvb_ringbuffer_empty ;
struct kernel_symbol const __ksymtab_dvb_ringbuffer_empty = {(unsigned long )(& dvb_ringbuffer_empty), (char const *)(& __kstrtab_dvb_ringbuffer_empty)};
static char const __kstrtab_dvb_ringbuffer_free[20U] =
  { 'd', 'v', 'b', '_',
        'r', 'i', 'n', 'g',
        'b', 'u', 'f', 'f',
        'e', 'r', '_', 'f',
        'r', 'e', 'e', '\000'};
struct kernel_symbol const __ksymtab_dvb_ringbuffer_free ;
struct kernel_symbol const __ksymtab_dvb_ringbuffer_free = {(unsigned long )(& dvb_ringbuffer_free), (char const *)(& __kstrtab_dvb_ringbuffer_free)};
static char const __kstrtab_dvb_ringbuffer_avail[21U] =
  { 'd', 'v', 'b', '_',
        'r', 'i', 'n', 'g',
        'b', 'u', 'f', 'f',
        'e', 'r', '_', 'a',
        'v', 'a', 'i', 'l',
        '\000'};
struct kernel_symbol const __ksymtab_dvb_ringbuffer_avail ;
struct kernel_symbol const __ksymtab_dvb_ringbuffer_avail = {(unsigned long )(& dvb_ringbuffer_avail), (char const *)(& __kstrtab_dvb_ringbuffer_avail)};
static char const __kstrtab_dvb_ringbuffer_flush_spinlock_wakeup[37U] =
  { 'd', 'v', 'b', '_',
        'r', 'i', 'n', 'g',
        'b', 'u', 'f', 'f',
        'e', 'r', '_', 'f',
        'l', 'u', 's', 'h',
        '_', 's', 'p', 'i',
        'n', 'l', 'o', 'c',
        'k', '_', 'w', 'a',
        'k', 'e', 'u', 'p',
        '\000'};
struct kernel_symbol const __ksymtab_dvb_ringbuffer_flush_spinlock_wakeup ;
struct kernel_symbol const __ksymtab_dvb_ringbuffer_flush_spinlock_wakeup = {(unsigned long )(& dvb_ringbuffer_flush_spinlock_wakeup), (char const *)(& __kstrtab_dvb_ringbuffer_flush_spinlock_wakeup)};
static char const __kstrtab_dvb_ringbuffer_read_user[25U] =
  { 'd', 'v', 'b', '_',
        'r', 'i', 'n', 'g',
        'b', 'u', 'f', 'f',
        'e', 'r', '_', 'r',
        'e', 'a', 'd', '_',
        'u', 's', 'e', 'r',
        '\000'};
struct kernel_symbol const __ksymtab_dvb_ringbuffer_read_user ;
struct kernel_symbol const __ksymtab_dvb_ringbuffer_read_user = {(unsigned long )(& dvb_ringbuffer_read_user), (char const *)(& __kstrtab_dvb_ringbuffer_read_user)};
static char const __kstrtab_dvb_ringbuffer_read[20U] =
  { 'd', 'v', 'b', '_',
        'r', 'i', 'n', 'g',
        'b', 'u', 'f', 'f',
        'e', 'r', '_', 'r',
        'e', 'a', 'd', '\000'};
struct kernel_symbol const __ksymtab_dvb_ringbuffer_read ;
struct kernel_symbol const __ksymtab_dvb_ringbuffer_read = {(unsigned long )(& dvb_ringbuffer_read), (char const *)(& __kstrtab_dvb_ringbuffer_read)};
static char const __kstrtab_dvb_ringbuffer_write[21U] =
  { 'd', 'v', 'b', '_',
        'r', 'i', 'n', 'g',
        'b', 'u', 'f', 'f',
        'e', 'r', '_', 'w',
        'r', 'i', 't', 'e',
        '\000'};
struct kernel_symbol const __ksymtab_dvb_ringbuffer_write ;
struct kernel_symbol const __ksymtab_dvb_ringbuffer_write = {(unsigned long )(& dvb_ringbuffer_write), (char const *)(& __kstrtab_dvb_ringbuffer_write)};
static char const __kstrtab_dvb_ringbuffer_write_user[26U] =
  { 'd', 'v', 'b', '_',
        'r', 'i', 'n', 'g',
        'b', 'u', 'f', 'f',
        'e', 'r', '_', 'w',
        'r', 'i', 't', 'e',
        '_', 'u', 's', 'e',
        'r', '\000'};
struct kernel_symbol const __ksymtab_dvb_ringbuffer_write_user ;
struct kernel_symbol const __ksymtab_dvb_ringbuffer_write_user = {(unsigned long )(& dvb_ringbuffer_write_user), (char const *)(& __kstrtab_dvb_ringbuffer_write_user)};
bool ldv_queue_work_on_137(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_138(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_139(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_140(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_141(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static int fls(int x )
{
  int r ;
  {
  __asm__ ("bsrl %1,%0": "=r" (r): "rm" (x), "0" (-1));
  return (r + 1);
}
}
bool ldv_queue_work_on_151(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_153(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_152(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_155(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_154(struct workqueue_struct *ldv_func_arg1 ) ;
unsigned int intlog2(u32 value ) ;
unsigned int intlog10(u32 value ) ;
static unsigned short const logtable[256U] =
  { 0U, 369U, 736U, 1102U,
        1466U, 1829U, 2190U, 2551U,
        2909U, 3267U, 3623U, 3978U,
        4331U, 4683U, 5034U, 5384U,
        5732U, 6079U, 6425U, 6769U,
        7112U, 7454U, 7795U, 8134U,
        8473U, 8810U, 9146U, 9480U,
        9814U, 10146U, 10477U, 10807U,
        11136U, 11464U, 11791U, 12116U,
        12440U, 12764U, 13086U, 13407U,
        13727U, 14046U, 14363U, 14680U,
        14996U, 15310U, 15624U, 15937U,
        16248U, 16559U, 16868U, 17177U,
        17484U, 17791U, 18096U, 18401U,
        18704U, 19007U, 19308U, 19609U,
        19909U, 20207U, 20505U, 20802U,
        21098U, 21393U, 21687U, 21980U,
        22272U, 22564U, 22854U, 23144U,
        23433U, 23720U, 24007U, 24293U,
        24579U, 24863U, 25146U, 25429U,
        25711U, 25992U, 26272U, 26551U,
        26830U, 27108U, 27384U, 27660U,
        27936U, 28210U, 28484U, 28757U,
        29029U, 29300U, 29571U, 29840U,
        30109U, 30378U, 30645U, 30912U,
        31178U, 31443U, 31707U, 31971U,
        32234U, 32496U, 32758U, 33019U,
        33279U, 33538U, 33797U, 34055U,
        34312U, 34569U, 34825U, 35080U,
        35334U, 35588U, 35841U, 36094U,
        36346U, 36597U, 36847U, 37097U,
        37346U, 37595U, 37842U, 38090U,
        38336U, 38582U, 38827U, 39072U,
        39316U, 39559U, 39802U, 40044U,
        40286U, 40527U, 40767U, 41006U,
        41246U, 41484U, 41722U, 41959U,
        42196U, 42432U, 42667U, 42902U,
        43137U, 43370U, 43603U, 43836U,
        44068U, 44300U, 44530U, 44761U,
        44990U, 45220U, 45448U, 45676U,
        45904U, 46131U, 46357U, 46583U,
        46809U, 47034U, 47258U, 47482U,
        47705U, 47928U, 48150U, 48372U,
        48593U, 48813U, 49034U, 49253U,
        49472U, 49691U, 49909U, 50127U,
        50344U, 50560U, 50776U, 50992U,
        51207U, 51422U, 51636U, 51850U,
        52063U, 52276U, 52488U, 52700U,
        52911U, 53122U, 53332U, 53542U,
        53751U, 53960U, 54169U, 54377U,
        54584U, 54791U, 54998U, 55204U,
        55410U, 55615U, 55820U, 56025U,
        56229U, 56432U, 56635U, 56838U,
        57040U, 57242U, 57443U, 57644U,
        57845U, 58045U, 58245U, 58444U,
        58643U, 58841U, 59039U, 59237U,
        59434U, 59631U, 59827U, 60023U,
        60219U, 60414U, 60609U, 60803U,
        60997U, 61190U, 61384U, 61576U,
        61769U, 61961U, 62152U, 62343U,
        62534U, 62725U, 62915U, 63104U,
        63294U, 63483U, 63671U, 63859U,
        64047U, 64234U, 64421U, 64608U,
        64794U, 64980U, 65166U, 65351U};
unsigned int intlog2(u32 value )
{
  unsigned int msb ;
  unsigned int logentry ;
  unsigned int significand ;
  unsigned int interpolation ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  tmp___0 = ldv__builtin_expect(value == 0U, 0L);
  if (tmp___0 != 0L) {
    __ret_warn_on = 1;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_math.c",
                         75);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return (0U);
  } else {
  }
  tmp___1 = fls((int )value);
  msb = (unsigned int )(tmp___1 + -1);
  significand = value << (int )(31U - msb);
  logentry = (significand >> 23) & 255U;
  interpolation = (significand & 8388607U) * ((unsigned int )((int )logtable[(logentry + 1U) & 255U] - (int )logtable[logentry]) & 65535U) >> 15;
  return (((msb << 24) + (unsigned int )((int )logtable[logentry] << 8)) + interpolation);
}
}
static char const __kstrtab_intlog2[8U] =
  { 'i', 'n', 't', 'l',
        'o', 'g', '2', '\000'};
struct kernel_symbol const __ksymtab_intlog2 ;
struct kernel_symbol const __ksymtab_intlog2 = {(unsigned long )(& intlog2), (char const *)(& __kstrtab_intlog2)};
unsigned int intlog10(u32 value )
{
  u64 log ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  unsigned int tmp___1 ;
  {
  tmp___0 = ldv__builtin_expect(value == 0U, 0L);
  if (tmp___0 != 0L) {
    __ret_warn_on = 1;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/2927/dscv_tempdir/dscv/ri/08_1a/drivers/media/dvb-core/dvb_math.c",
                         132);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return (0U);
  } else {
  }
  tmp___1 = intlog2(value);
  log = (u64 )tmp___1;
  return ((unsigned int )(log * 646456993ULL >> 31));
}
}
static char const __kstrtab_intlog10[9U] =
  { 'i', 'n', 't', 'l',
        'o', 'g', '1', '0',
        '\000'};
struct kernel_symbol const __ksymtab_intlog10 ;
struct kernel_symbol const __ksymtab_intlog10 = {(unsigned long )(& intlog10), (char const *)(& __kstrtab_intlog10)};
bool ldv_queue_work_on_151(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_delayed_work_on_152(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
bool ldv_queue_work_on_153(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
void ldv_flush_workqueue_154(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_155(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
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
int ___ratelimit(struct ratelimit_state *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
struct class *__class_create(struct module *arg0, const char *arg1, struct lock_class_key *arg2) {
  return ldv_malloc(sizeof(struct class));
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
void __dynamic_netdev_dbg(struct _ddebug *arg0, const struct net_device *arg1, const char *arg2, ...) {
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
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return ldv_malloc(sizeof(struct sk_buff));
}
int __VERIFIER_nondet_int(void);
int __printk_ratelimit(const char *arg0) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool __refrigerator(bool arg0) {
  return __VERIFIER_nondet_bool();
}
void __udelay(unsigned long arg0) {
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
void _raw_spin_unlock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_timer(struct timer_list *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int add_uevent_var(struct kobj_uevent_env *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
struct net_device *alloc_netdev_mqs(int arg0, const char *arg1, unsigned char arg2, void (*arg3)(struct net_device *), unsigned int arg4, unsigned int arg5) {
  return ldv_malloc(sizeof(struct net_device));
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int cdev_add(struct cdev *arg0, dev_t arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
void cdev_del(struct cdev *arg0) {
  return;
}
void cdev_init(struct cdev *arg0, const struct file_operations *arg1) {
  return;
}
void class_destroy(struct class *arg0) {
  return;
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
u32 crc32_be(u32 arg0, const unsigned char *arg1, size_t arg2) {
  return __VERIFIER_nondet_uint();
}
struct timespec current_kernel_time() {
  return *(struct timespec *)ldv_xmalloc(sizeof(struct timespec));
}
void debug_check_no_locks_held() {
  return;
}
long __VERIFIER_nondet_long(void);
loff_t default_llseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
struct device *device_create(struct class *arg0, struct device *arg1, dev_t arg2, void *arg3, const char *arg4, ...) {
  return ldv_malloc(sizeof(struct device));
}
void device_destroy(struct class *arg0, dev_t arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int down_interruptible(struct semaphore *arg0) {
  return __VERIFIER_nondet_int();
}
void down_read(struct rw_semaphore *arg0) {
  return;
}
void down_write(struct rw_semaphore *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int eth_change_mtu(struct net_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int eth_header(struct sk_buff *arg0, struct net_device *arg1, unsigned short arg2, const void *arg3, const void *arg4, unsigned int arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int eth_header_parse(const struct sk_buff *arg0, unsigned char *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int eth_validate_addr(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void ether_setup(struct net_device *arg0) {
  return;
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool flush_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool freezing_slow_path(struct task_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
char *kasprintf(gfp_t arg0, const char *arg1, ...) {
  return ldv_malloc(sizeof(char));
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
ktime_t ktime_get_with_offset(enum tk_offsets arg0) {
  return *(union ktime *)ldv_xmalloc(sizeof(union ktime));
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_init_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_uninit_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_11() {
  return __VERIFIER_nondet_int();
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void *memdup_user(const void *arg0, size_t arg1) {
  return ldv_malloc(0UL);
}
void msleep(unsigned int arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msleep_interruptible(unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
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
int netif_rx(struct sk_buff *arg0) {
  return __VERIFIER_nondet_int();
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
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_chrdev_region(dev_t arg0, unsigned int arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
bool __VERIFIER_nondet_bool(void);
bool set_freezable() {
  return __VERIFIER_nondet_bool();
}
void set_normalized_timespec(struct timespec *arg0, time_t arg1, s64 arg2) {
  return;
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
void symbol_put_addr(void *arg0) {
  return;
}
void unregister_chrdev_region(dev_t arg0, unsigned int arg1) {
  return;
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
void up(struct semaphore *arg0) {
  return;
}
void up_read(struct rw_semaphore *arg0) {
  return;
}
void up_write(struct rw_semaphore *arg0) {
  return;
}
void vfree(const void *arg0) {
  return;
}
void *vmalloc(unsigned long arg0) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int wake_up_process(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
