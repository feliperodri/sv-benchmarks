extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef short s16;
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
struct module;
typedef void (*ctor_fn_t)(void);
struct file_operations;
struct device;
struct completion;
struct pt_regs;
struct pid;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_2024_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_2024_8 ldv_2024 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_ldv_2031_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct_ldv_2031_10 ldv_2031 ;
};
typedef union __anonunion_arch_rwlock_t_9 arch_rwlock_t;
struct task_struct;
struct lockdep_map;
struct mm_struct;
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
struct __anonstruct_ldv_2096_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2111_13 {
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
union __anonunion_ldv_2112_11 {
   struct __anonstruct_ldv_2096_12 ldv_2096 ;
   struct __anonstruct_ldv_2111_13 ldv_2111 ;
};
struct desc_struct {
   union __anonunion_ldv_2112_11 ldv_2112 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_15 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_15 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct cpumask;
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
union __anonunion_ldv_2767_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2767_18 ldv_2767 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
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
struct __anonstruct_ldv_5125_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5131_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5132_22 {
   struct __anonstruct_ldv_5125_23 ldv_5125 ;
   struct __anonstruct_ldv_5131_24 ldv_5131 ;
};
union __anonunion_ldv_5141_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5132_22 ldv_5132 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5141_25 ldv_5141 ;
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
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
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
} __attribute__((__packed__)) ;
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
   unsigned char check : 2 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 11 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_5960_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_5961_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_5960_29 ldv_5960 ;
};
struct spinlock {
   union __anonunion_ldv_5961_28 ldv_5961 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_30 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_30 rwlock_t;
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
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct inode;
struct dentry;
struct user_namespace;
struct timespec;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct __anonstruct_nodemask_t_37 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_37 nodemask_t;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
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
struct vm_area_struct;
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
   int cpu ;
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
struct uprobe;
struct uprobe_task {
   enum uprobe_task_state state ;
   struct arch_uprobe_task autask ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   unsigned long vaddr ;
};
struct xol_area {
   wait_queue_head_t wq ;
   atomic_t slot_count ;
   unsigned long *bitmap ;
   struct page *page ;
   unsigned long vaddr ;
};
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct __anonstruct_mm_context_t_38 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_38 mm_context_t;
struct address_space;
union __anonunion_ldv_8513_40 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_8523_44 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_8525_43 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_8523_44 ldv_8523 ;
   int units ;
};
struct __anonstruct_ldv_8527_42 {
   union __anonunion_ldv_8525_43 ldv_8525 ;
   atomic_t _count ;
};
union __anonunion_ldv_8528_41 {
   unsigned long counters ;
   struct __anonstruct_ldv_8527_42 ldv_8527 ;
};
struct __anonstruct_ldv_8529_39 {
   union __anonunion_ldv_8513_40 ldv_8513 ;
   union __anonunion_ldv_8528_41 ldv_8528 ;
};
struct __anonstruct_ldv_8536_46 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_8540_45 {
   struct list_head lru ;
   struct __anonstruct_ldv_8536_46 ldv_8536 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_8545_47 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_8529_39 ldv_8529 ;
   union __anonunion_ldv_8540_45 ldv_8540 ;
   union __anonunion_ldv_8545_47 ldv_8545 ;
   unsigned long debug_flags ;
   int _last_nid ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_49 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_48 {
   struct __anonstruct_linear_49 linear ;
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
   union __anonunion_shared_48 shared ;
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
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   void (*unmap_area)(struct mm_struct * , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long task_size ;
   unsigned long cached_hole_size ;
   unsigned long free_area_cache ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
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
   unsigned long nr_ptes ;
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
   unsigned long saved_auxv[44U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   pgtable_t pmd_huge_pte ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_next_reset ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   int first_nid ;
   struct uprobes_state uprobes_state ;
};
typedef unsigned long cputime_t;
struct call_single_data {
   struct list_head list ;
   void (*func)(void * ) ;
   void *info ;
   u16 flags ;
   u16 priv ;
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
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool ignore_children ;
   bool early_init ;
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
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct bio_vec;
typedef uid_t kuid_t;
typedef gid_t kgid_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_140 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_140 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_142 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_143 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_144 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_145 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_146 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_147 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_148 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_141 {
   int _pad[28U] ;
   struct __anonstruct__kill_142 _kill ;
   struct __anonstruct__timer_143 _timer ;
   struct __anonstruct__rt_144 _rt ;
   struct __anonstruct__sigchld_145 _sigchld ;
   struct __anonstruct__sigfault_146 _sigfault ;
   struct __anonstruct__sigpoll_147 _sigpoll ;
   struct __anonstruct__sigsys_148 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_141 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
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
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct rt_mutex_waiter;
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
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
   struct hrtimer_clock_base clock_base[3U] ;
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
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct cred;
struct key_type;
struct keyring_list;
union __anonunion_ldv_14497_153 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_14506_154 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_155 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_156 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_14497_153 ldv_14497 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_14506_154 ldv_14506 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_155 type_data ;
   union __anonunion_payload_156 payload ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct thread_group_cred;
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
   struct thread_group_cred *tgcred ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
struct io_event {
   __u64 data ;
   __u64 obj ;
   __s64 res ;
   __s64 res2 ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kioctx;
union __anonunion_ki_obj_157 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct list_head ki_run_list ;
   unsigned long ki_flags ;
   int ki_users ;
   unsigned int ki_key ;
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   int (*ki_cancel)(struct kiocb * , struct io_event * ) ;
   ssize_t (*ki_retry)(struct kiocb * ) ;
   void (*ki_dtor)(struct kiocb * ) ;
   union __anonunion_ki_obj_157 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   void *private ;
   unsigned short ki_opcode ;
   size_t ki_nbytes ;
   char *ki_buf ;
   size_t ki_left ;
   struct iovec ki_inline_vec ;
   struct iovec *ki_iovec ;
   unsigned long ki_nr_segs ;
   unsigned long ki_cur_seg ;
   struct list_head ki_list ;
   struct list_head ki_batch ;
   struct eventfd_ctx *ki_eventfd ;
};
struct aio_ring_info {
   unsigned long mmap_base ;
   unsigned long mmap_size ;
   struct page **ring_pages ;
   spinlock_t ring_lock ;
   long nr_pages ;
   unsigned int nr ;
   unsigned int tail ;
   struct page *internal_pages[8U] ;
};
struct kioctx {
   atomic_t users ;
   int dead ;
   struct mm_struct *mm ;
   unsigned long user_id ;
   struct hlist_node list ;
   wait_queue_head_t wait ;
   spinlock_t ctx_lock ;
   int reqs_active ;
   struct list_head active_reqs ;
   struct list_head run_list ;
   unsigned int max_reqs ;
   struct aio_ring_info ring_info ;
   struct delayed_work wq ;
   struct callback_head callback_head ;
};
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
   atomic_t files ;
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
struct pipe_inode_info;
struct rq;
struct sched_class {
   struct sched_class const *next ;
   void (*enqueue_task)(struct rq * , struct task_struct * , int ) ;
   void (*dequeue_task)(struct rq * , struct task_struct * , int ) ;
   void (*yield_task)(struct rq * ) ;
   bool (*yield_to_task)(struct rq * , struct task_struct * , bool ) ;
   void (*check_preempt_curr)(struct rq * , struct task_struct * , int ) ;
   struct task_struct *(*pick_next_task)(struct rq * ) ;
   void (*put_prev_task)(struct rq * , struct task_struct * ) ;
   int (*select_task_rq)(struct task_struct * , int , int ) ;
   void (*migrate_task_rq)(struct task_struct * , int ) ;
   void (*pre_schedule)(struct rq * , struct task_struct * ) ;
   void (*post_schedule)(struct rq * ) ;
   void (*task_waking)(struct task_struct * ) ;
   void (*task_woken)(struct rq * , struct task_struct * ) ;
   void (*set_cpus_allowed)(struct task_struct * , struct cpumask const * ) ;
   void (*rq_online)(struct rq * ) ;
   void (*rq_offline)(struct rq * ) ;
   void (*set_curr_task)(struct rq * ) ;
   void (*task_tick)(struct rq * , struct task_struct * , int ) ;
   void (*task_fork)(struct task_struct * ) ;
   void (*switched_from)(struct rq * , struct task_struct * ) ;
   void (*switched_to)(struct rq * , struct task_struct * ) ;
   void (*prio_changed)(struct rq * , struct task_struct * , int ) ;
   unsigned int (*get_rr_interval)(struct rq * , struct task_struct * ) ;
   void (*task_move_group)(struct task_struct * , int ) ;
};
struct load_weight {
   unsigned long weight ;
   unsigned long inv_weight ;
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
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct files_struct;
struct css_set;
struct compat_robust_list_head;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct hlist_head preempt_notifiers ;
   unsigned char fpu_counter ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char did_exec : 1 ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   unsigned long stack_canary ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
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
   struct plist_head pi_waiters ;
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
   int numa_migrate_seq ;
   unsigned int numa_scan_period ;
   u64 node_stamp ;
   struct callback_head numa_work ;
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
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   atomic_t ptrace_bp_refcnt ;
   struct uprobe_task *utask ;
};
struct __anonstruct_ldv_16592_160 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_16593_159 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_16592_160 ldv_16592 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_16593_159 ldv_16593 ;
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
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
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
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
};
struct sysfs_dirent;
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
   struct sysfs_dirent *sd ;
   struct kref kref ;
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
struct kmem_cache_node {
   spinlock_t list_lock ;
   unsigned long nr_partial ;
   struct list_head partial ;
   atomic_long_t nr_slabs ;
   atomic_long_t total_objects ;
   struct list_head full ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
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
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct device_type;
struct class;
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
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
struct iommu_ops;
struct iommu_group;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type * , char * ) ;
   ssize_t (*store)(struct bus_type * , char const * , size_t ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct bus_attribute *bus_attrs ;
   struct device_attribute *dev_attrs ;
   struct driver_attribute *drv_attrs ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
};
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
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver * , char * ) ;
   ssize_t (*store)(struct device_driver * , char const * , size_t ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
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
   void const *(*namespace)(struct class * , struct class_attribute const * ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
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
struct acpi_dev_node {
   void *handle ;
};
struct dma_coherent_mem;
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
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct nameidata;
struct path;
struct vfsmount;
struct __anonstruct_ldv_18140_162 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_18142_161 {
   struct __anonstruct_ldv_18140_162 ldv_18140 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_18142_161 ldv_18142 ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_163 {
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
   unsigned int d_count ;
   spinlock_t d_lock ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_163 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct inode const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct inode const * , struct dentry const * ,
                    struct inode const * , unsigned int , char const * , struct qstr const * ) ;
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
struct radix_tree_node;
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
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
};
struct shrinker {
   int (*shrink)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   struct list_head list ;
   atomic_long_t nr_in_batch ;
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
struct cgroup_subsys_state;
typedef void bio_end_io_t(struct bio * , int );
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct bio {
   sector_t bi_sector ;
   struct bio *bi_next ;
   struct block_device *bi_bdev ;
   unsigned long bi_flags ;
   unsigned long bi_rw ;
   unsigned short bi_vcnt ;
   unsigned short bi_idx ;
   unsigned int bi_phys_segments ;
   unsigned int bi_size ;
   unsigned int bi_seg_front_size ;
   unsigned int bi_seg_back_size ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct io_context *bi_ioc ;
   struct cgroup_subsys_state *bi_css ;
   struct bio_integrity_payload *bi_integrity ;
   unsigned int bi_max_vecs ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct export_operations;
struct hd_geometry;
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
struct dquot;
typedef __kernel_uid32_t projid_t;
typedef projid_t kprojid_t;
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
union __anonunion_ldv_18936_164 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_18936_164 ldv_18936 ;
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
struct writeback_control;
union __anonunion_arg_166 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_165 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_166 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_165 read_descriptor_t;
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
   void (*invalidatepage)(struct page * , unsigned long ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
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
union __anonunion_ldv_19370_167 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_19390_168 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_19406_169 {
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
   union __anonunion_ldv_19370_167 ldv_19370 ;
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
   union __anonunion_ldv_19390_168 ldv_19390 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_19406_169 ldv_19406 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   atomic_t i_readcount ;
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
union __anonunion_f_u_170 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_170 f_u ;
   struct path f_path ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   int f_sb_list_cpu ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
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
   unsigned long f_mnt_write_state ;
};
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
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
struct fasync_struct;
struct __anonstruct_afs_172 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_171 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_172 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
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
   union __anonunion_fl_u_171 fl_u ;
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
struct file_system_type;
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
   struct list_head *s_files ;
   struct list_head s_mounts ;
   struct list_head s_dentry_lru ;
   int s_nr_dentry_unused ;
   spinlock_t s_inode_lru_lock ;
   struct list_head s_inode_lru ;
   int s_nr_inodes_unused ;
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
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct block_device_operations;
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   int (*readdir)(struct file * , void * , int (*)(void * , char const * , int ,
                                                   loff_t , u64 , unsigned int ) ) ;
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
   int (*nr_cached_objects)(struct super_block * ) ;
   void (*free_cached_objects)(struct super_block * , int ) ;
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
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct fprop_local_percpu {
   struct percpu_counter events ;
   unsigned int period ;
   raw_spinlock_t lock ;
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
};
struct bdi_writeback;
typedef int congested_fn(void * , int );
struct bdi_writeback {
   struct backing_dev_info *bdi ;
   unsigned int nr ;
   unsigned long last_old_flush ;
   unsigned long last_active ;
   struct task_struct *task ;
   struct timer_list wakeup_timer ;
   struct list_head b_dirty ;
   struct list_head b_io ;
   struct list_head b_more_io ;
   spinlock_t list_lock ;
};
struct backing_dev_info {
   struct list_head bdi_list ;
   unsigned long ra_pages ;
   unsigned long state ;
   unsigned int capabilities ;
   congested_fn *congested_fn ;
   void *congested_data ;
   char *name ;
   struct percpu_counter bdi_stat[4U] ;
   unsigned long bw_time_stamp ;
   unsigned long dirtied_stamp ;
   unsigned long written_stamp ;
   unsigned long write_bandwidth ;
   unsigned long avg_write_bandwidth ;
   unsigned long dirty_ratelimit ;
   unsigned long balanced_dirty_ratelimit ;
   struct fprop_local_percpu completions ;
   int dirty_exceeded ;
   unsigned int min_ratio ;
   unsigned int max_ratio ;
   unsigned int max_prop_frac ;
   struct bdi_writeback wb ;
   spinlock_t wb_lock ;
   struct list_head work_list ;
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
union __anonunion_ldv_26553_174 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion_ldv_26557_175 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion_ldv_26553_174 ldv_26553 ;
   union __anonunion_ldv_26557_175 ldv_26557 ;
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
   sector_t bip_sector ;
   void *bip_buf ;
   bio_end_io_t *bip_end_io ;
   unsigned int bip_size ;
   unsigned short bip_slab ;
   unsigned short bip_vcnt ;
   unsigned short bip_idx ;
   struct work_struct bip_work ;
   struct bio_vec bip_vec[0U] ;
};
struct bio_set {
   struct kmem_cache *bio_slab ;
   unsigned int front_pad ;
   mempool_t *bio_pool ;
   mempool_t *bio_integrity_pool ;
   mempool_t *bvec_pool ;
};
struct bio_list {
   struct bio *head ;
   struct bio *tail ;
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
struct request;
struct bsg_job;
struct blkcg_gq;
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
enum rq_cmd_type_bits {
    REQ_TYPE_FS = 1,
    REQ_TYPE_BLOCK_PC = 2,
    REQ_TYPE_SENSE = 3,
    REQ_TYPE_PM_SUSPEND = 4,
    REQ_TYPE_PM_RESUME = 5,
    REQ_TYPE_PM_SHUTDOWN = 6,
    REQ_TYPE_SPECIAL = 7,
    REQ_TYPE_ATA_TASKFILE = 8,
    REQ_TYPE_ATA_PC = 9
} ;
union __anonunion_ldv_27011_176 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_178 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_179 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion_ldv_27022_177 {
   struct __anonstruct_elv_178 elv ;
   struct __anonstruct_flush_179 flush ;
};
struct request {
   struct list_head queuelist ;
   struct call_single_data csd ;
   struct request_queue *q ;
   unsigned int cmd_flags ;
   enum rq_cmd_type_bits cmd_type ;
   unsigned long atomic_flags ;
   int cpu ;
   unsigned int __data_len ;
   sector_t __sector ;
   struct bio *bio ;
   struct bio *biotail ;
   struct hlist_node hash ;
   union __anonunion_ldv_27011_176 ldv_27011 ;
   union __anonunion_ldv_27022_177 ldv_27022 ;
   struct gendisk *rq_disk ;
   struct hd_struct *part ;
   unsigned long start_time ;
   struct request_list *rl ;
   unsigned long long start_time_ns ;
   unsigned long long io_start_time_ns ;
   unsigned short nr_phys_segments ;
   unsigned short nr_integrity_segments ;
   unsigned short ioprio ;
   int ref_count ;
   void *special ;
   char *buffer ;
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
typedef int elevator_init_fn(struct request_queue * );
typedef void elevator_exit_fn(struct elevator_queue * );
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
   struct hlist_head *hash ;
   unsigned char registered : 1 ;
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
};
struct queue_limits {
   unsigned long bounce_pfn ;
   unsigned long seg_boundary_mask ;
   unsigned int max_hw_sectors ;
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
};
struct throtl_data;
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
   unsigned char flush_queue_delayed : 1 ;
   unsigned char flush_pending_idx : 1 ;
   unsigned char flush_running_idx : 1 ;
   unsigned long flush_pending_since ;
   struct list_head flush_queue[2U] ;
   struct list_head flush_data_in_flight ;
   struct request flush_rq ;
   struct mutex sysfs_lock ;
   int bypass_depth ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
   struct list_head all_q_node ;
   struct throtl_data *td ;
};
struct blk_plug {
   unsigned long magic ;
   struct list_head list ;
   struct list_head cb_list ;
   unsigned int should_sort ;
};
struct blk_integrity_exchg {
   void *prot_buf ;
   void *data_buf ;
   sector_t sector ;
   unsigned int data_size ;
   unsigned short sector_size ;
   char const *disk_name ;
};
typedef void integrity_gen_fn(struct blk_integrity_exchg * );
typedef int integrity_vrfy_fn(struct blk_integrity_exchg * );
typedef void integrity_set_tag_fn(void * , void * , unsigned int );
typedef void integrity_get_tag_fn(void * , void * , unsigned int );
struct blk_integrity {
   integrity_gen_fn *generate_fn ;
   integrity_vrfy_fn *verify_fn ;
   integrity_set_tag_fn *set_tag_fn ;
   integrity_get_tag_fn *get_tag_fn ;
   unsigned short flags ;
   unsigned short tuple_size ;
   unsigned short sector_size ;
   unsigned short tag_size ;
   char const *name ;
   struct kobject kobj ;
};
struct block_device_operations {
   int (*open)(struct block_device * , fmode_t ) ;
   int (*release)(struct gendisk * , fmode_t ) ;
   int (*ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*direct_access)(struct block_device * , sector_t , void ** , unsigned long * ) ;
   unsigned int (*check_events)(struct gendisk * , unsigned int ) ;
   int (*media_changed)(struct gendisk * ) ;
   void (*unlock_native_capacity)(struct gendisk * ) ;
   int (*revalidate_disk)(struct gendisk * ) ;
   int (*getgeo)(struct block_device * , struct hd_geometry * ) ;
   void (*swap_slot_free_notify)(struct block_device * , unsigned long ) ;
   struct module *owner ;
};
struct dm_dev;
struct dm_target;
struct dm_table;
enum ldv_22431 {
    STATUSTYPE_INFO = 0,
    STATUSTYPE_TABLE = 1
} ;
typedef enum ldv_22431 status_type_t;
union map_info {
   void *ptr ;
   unsigned long long ll ;
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
   int (*end_io)(struct dm_target * , struct bio * , int ) ;
   int (*rq_end_io)(struct dm_target * , struct request * , int , union map_info * ) ;
   void (*presuspend)(struct dm_target * ) ;
   void (*postsuspend)(struct dm_target * ) ;
   int (*preresume)(struct dm_target * ) ;
   void (*resume)(struct dm_target * ) ;
   int (*status)(struct dm_target * , status_type_t , unsigned int , char * , unsigned int ) ;
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
   unsigned int num_flush_requests ;
   unsigned int num_discard_requests ;
   unsigned int num_write_same_requests ;
   unsigned int per_bio_data_size ;
   void *private ;
   char *error ;
   bool flush_supported ;
   bool discards_supported ;
   bool split_discard_requests ;
   bool discard_zeroes_data_unsupported ;
};
struct dm_io;
struct dm_target_io {
   struct dm_io *io ;
   struct dm_target *ti ;
   union map_info info ;
   unsigned int target_request_nr ;
   struct bio clone ;
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
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_28855_185 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_28855_185 ldv_28855 ;
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
struct static_key {
   atomic_t enabled ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
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
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
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
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct dm_io_region {
   struct block_device *bdev ;
   sector_t sector ;
   sector_t count ;
};
struct dm_kcopyd_client;
typedef sector_t chunk_t;
struct dm_exception {
   struct list_head hash_list ;
   chunk_t old_chunk ;
   chunk_t new_chunk ;
};
struct dm_exception_store;
struct dm_exception_store_type {
   char const *name ;
   struct module *module ;
   int (*ctr)(struct dm_exception_store * , unsigned int , char ** ) ;
   void (*dtr)(struct dm_exception_store * ) ;
   int (*read_metadata)(struct dm_exception_store * , int (*)(void * , chunk_t ,
                                                              chunk_t ) , void * ) ;
   int (*prepare_exception)(struct dm_exception_store * , struct dm_exception * ) ;
   void (*commit_exception)(struct dm_exception_store * , struct dm_exception * ,
                            void (*)(void * , int ) , void * ) ;
   int (*prepare_merge)(struct dm_exception_store * , chunk_t * , chunk_t * ) ;
   int (*commit_merge)(struct dm_exception_store * , int ) ;
   void (*drop_snapshot)(struct dm_exception_store * ) ;
   unsigned int (*status)(struct dm_exception_store * , status_type_t , char * ,
                          unsigned int ) ;
   void (*usage)(struct dm_exception_store * , sector_t * , sector_t * , sector_t * ) ;
   struct list_head list ;
};
struct dm_snapshot;
struct dm_exception_store {
   struct dm_exception_store_type *type ;
   struct dm_snapshot *snap ;
   unsigned int chunk_size ;
   unsigned int chunk_mask ;
   unsigned int chunk_shift ;
   void *context ;
};
struct dm_exception_table {
   uint32_t hash_mask ;
   unsigned int hash_shift ;
   struct list_head *table ;
};
struct dm_snapshot {
   struct rw_semaphore lock ;
   struct dm_dev *origin ;
   struct dm_dev *cow ;
   struct dm_target *ti ;
   struct list_head list ;
   int valid ;
   int active ;
   atomic_t pending_exceptions_count ;
   mempool_t *pending_pool ;
   struct dm_exception_table pending ;
   struct dm_exception_table complete ;
   spinlock_t pe_lock ;
   spinlock_t tracked_chunk_lock ;
   struct hlist_head tracked_chunk_hash[16U] ;
   struct dm_exception_store *store ;
   struct dm_kcopyd_client *kcopyd_client ;
   unsigned long state_bits ;
   chunk_t first_merging_chunk ;
   int num_merging_chunks ;
   int merge_failed ;
   struct bio_list bios_queued_during_merge ;
};
struct dm_snap_pending_exception {
   struct dm_exception e ;
   struct bio_list origin_bios ;
   struct bio_list snapshot_bios ;
   struct dm_snapshot *snap ;
   int started ;
   struct bio *full_bio ;
   bio_end_io_t *full_bio_end_io ;
   void *full_bio_private ;
};
struct dm_snap_tracked_chunk {
   struct hlist_node node ;
   chunk_t chunk ;
};
struct origin {
   struct block_device *bdev ;
   struct list_head hash_list ;
   struct list_head snapshots ;
};
union __anonunion_u_188 {
   struct dm_exception_table table_swap ;
   struct dm_exception_store *store_swap ;
};
typedef int ldv_func_ret_type___4;
enum hrtimer_restart;
enum hrtimer_restart;
struct transient_c {
   sector_t next_free ;
};
typedef __u32 __le32;
typedef __u64 __le64;
enum hrtimer_restart;
struct workqueue_struct;
struct page_list {
   struct page_list *next ;
   struct page *page ;
};
enum dm_io_mem_type {
    DM_IO_PAGE_LIST = 0,
    DM_IO_BVEC = 1,
    DM_IO_VMA = 2,
    DM_IO_KMEM = 3
} ;
union __anonunion_ptr_181 {
   struct page_list *pl ;
   struct bio_vec *bvec ;
   void *vma ;
   void *addr ;
};
struct dm_io_memory {
   enum dm_io_mem_type type ;
   unsigned int offset ;
   union __anonunion_ptr_181 ptr ;
};
struct dm_io_notify {
   void (*fn)(unsigned long , void * ) ;
   void *context ;
};
struct dm_io_client;
struct dm_io_request {
   int bi_rw ;
   struct dm_io_memory mem ;
   struct dm_io_notify notify ;
   struct dm_io_client *client ;
};
struct disk_header {
   __le32 magic ;
   __le32 valid ;
   __le32 version ;
   __le32 chunk_size ;
};
struct disk_exception {
   __le64 old_chunk ;
   __le64 new_chunk ;
};
struct core_exception {
   uint64_t old_chunk ;
   uint64_t new_chunk ;
};
struct commit_callback {
   void (*callback)(void * , int ) ;
   void *context ;
};
struct pstore {
   struct dm_exception_store *store ;
   int version ;
   int valid ;
   uint32_t exceptions_per_area ;
   void *area ;
   void *zero_area ;
   void *header_area ;
   chunk_t current_area ;
   chunk_t next_free ;
   uint32_t current_committed ;
   atomic_t pending_count ;
   uint32_t callback_count ;
   struct commit_callback *callbacks ;
   struct dm_io_client *io_client ;
   struct workqueue_struct *metadata_wq ;
};
struct mdata_req {
   struct dm_io_region *where ;
   struct dm_io_request *io_req ;
   struct work_struct work ;
   int result ;
};
long ldv__builtin_expect(long exp , long c ) ;
__inline static void set_bit(unsigned int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static void clear_bit_unlock(unsigned int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("": : : "memory");
  clear_bit((int )nr, addr);
  return;
}
}
__inline static int test_and_set_bit(int nr , unsigned long volatile *addr )
{ int oldbit ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
__inline static int constant_test_bit(unsigned int nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr / 64U)) >> ((int )nr & 63)) & 1);
}
}
__inline static int variable_test_bit(int nr , unsigned long const volatile *addr )
{ int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
__inline static int fls64(__u64 x )
{ int bitpos ;
  {
  bitpos = -1;
  __asm__ ("bsrq %1,%q0": "+r" (bitpos): "rm" (x));
  return (bitpos + 1);
}
}
__inline static unsigned int fls_long(unsigned long l )
{ int tmp___0 ;
  {
  tmp___0 = fls64((__u64 )l);
  return ((unsigned int )tmp___0);
}
}
__inline static unsigned long __rounddown_pow_of_two(unsigned long n )
{ unsigned int tmp ;
  {
  tmp = fls_long(n);
  return (1UL << (int )(tmp - 1U));
}
}
extern int printk(char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern int scnprintf(char * , size_t , char const * , ...) ;
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
extern void list_del(struct list_head * ) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
__inline static void INIT_HLIST_NODE(struct hlist_node *h )
{
  {
  h->next = 0;
  h->pprev = 0;
  return;
}
}
__inline static int hlist_unhashed(struct hlist_node const *h )
{
  {
  return ((unsigned long )h->pprev == (unsigned long )((struct hlist_node ** )0));
}
}
__inline static int hlist_empty(struct hlist_head const *h )
{
  {
  return ((unsigned long )h->first == (unsigned long )((struct hlist_node * )0));
}
}
__inline static void __hlist_del(struct hlist_node *n )
{ struct hlist_node *next ;
  struct hlist_node **pprev ;
  {
  next = n->next;
  pprev = n->pprev;
  *pprev = next;
  if ((unsigned long )next != (unsigned long )((struct hlist_node *)0)) {
    next->pprev = pprev;
  } else {
  }
  return;
}
}
__inline static void hlist_del(struct hlist_node *n )
{
  {
  __hlist_del(n);
  n->next = 0xdead000000100100UL;
  n->pprev = 0xdead000000200200UL;
  return;
}
}
__inline static void hlist_add_head(struct hlist_node *n , struct hlist_head *h )
{ struct hlist_node *first ;
  {
  first = h->first;
  n->next = first;
  if ((unsigned long )first != (unsigned long )((struct hlist_node *)0)) {
    first->pprev = & n->next;
  } else {
  }
  h->first = n;
  n->pprev = & h->first;
  return;
}
}
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{ struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  default:
  __bad_percpu_size();
  }
  ldv_2861: ;
  return (pfo_ret__);
}
}
__inline static long PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
}
}
__inline static long IS_ERR(void const *ptr )
{ long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp);
}
}
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
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
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_6(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_4(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cred_guard_mutex_of_signal_struct(struct mutex *lock ) ;
void ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
int ldv_state_variable_3 ;
int ldv_state_variable_2 ;
int ref_cnt ;
extern int __VERIFIER_nondet_int(void) ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_state_variable_4 ;
int ldv_state_variable_6 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_5961.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_5961.rlock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->ldv_5961.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_5961.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->ldv_5961.rlock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_5961.rlock, flags);
  return;
}
}
extern void __init_rwsem(struct rw_semaphore * , char const * , struct lock_class_key * ) ;
extern void down_read(struct rw_semaphore * ) ;
extern void down_write(struct rw_semaphore * ) ;
extern void up_read(struct rw_semaphore * ) ;
extern void up_write(struct rw_semaphore * ) ;
extern void down_write_nested(struct rw_semaphore * , int ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void wake_up_bit(void * , int ) ;
extern int out_of_line_wait_on_bit(void * , int , int (*)(void * ) , unsigned int ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
__inline static int wait_on_bit(void *word , int bit , int (*action)(void * ) , unsigned int mode )
{ int tmp ;
  int tmp___0 ;
  {
  tmp = variable_test_bit(bit, (unsigned long const volatile *)word);
  if (tmp == 0) {
    return (0);
  } else {
  }
  tmp___0 = out_of_line_wait_on_bit(word, bit, action, mode);
  return (tmp___0);
}
}
extern void vfree(void const * ) ;
extern void schedule(void) ;
extern struct kmem_cache *kmem_cache_create(char const * , size_t , size_t , unsigned long ,
                                            void (*)(void * ) ) ;
extern void kmem_cache_destroy(struct kmem_cache * ) ;
extern void kmem_cache_free(struct kmem_cache * , void * ) ;
extern void kfree(void const * ) ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
extern int __VERIFIER_nondet_int(void);
extern void __VERIFIER_assume(int);
extern void *malloc(size_t size);
long ldv_is_err(const void *ptr)
{
  return ((unsigned long)ptr > ((unsigned long)-4095));
}
void *ldv_malloc(size_t size)
{
 if (__VERIFIER_nondet_int()) {
  void *res = malloc(size);
  __VERIFIER_assume(!ldv_is_err(res));
  return res;
 } else {
  return ((void *)0);
 }
}
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
void *ldv_malloc(size_t size ) ;
__inline static void *kmalloc(size_t size , gfp_t flags )
{ void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
__inline static loff_t i_size_read(struct inode const *inode )
{
  {
  return ((loff_t )inode->i_size);
}
}
extern mempool_t *mempool_create(int , mempool_alloc_t * , mempool_free_t * , void * ) ;
extern void mempool_destroy(mempool_t * ) ;
extern void *mempool_alloc(mempool_t * , gfp_t ) ;
extern void mempool_free(void * , mempool_t * ) ;
extern void *mempool_alloc_slab(gfp_t , void * ) ;
extern void mempool_free_slab(void * , void * ) ;
__inline static mempool_t *mempool_create_slab_pool(int min_nr , struct kmem_cache *kc )
{ mempool_t *tmp ;
  {
  tmp = mempool_create(min_nr, & mempool_alloc_slab, & mempool_free_slab, (void *)kc);
  return (tmp);
}
}
extern void bio_endio(struct bio * , int ) ;
__inline static void bio_list_init(struct bio_list *bl )
{ struct bio *tmp ;
  {
  tmp = 0;
  bl->tail = tmp;
  bl->head = tmp;
  return;
}
}
__inline static void bio_list_add(struct bio_list *bl , struct bio *bio )
{
  {
  bio->bi_next = 0;
  if ((unsigned long )bl->tail != (unsigned long )((struct bio *)0)) {
    (bl->tail)->bi_next = bio;
  } else {
    bl->head = bio;
  }
  bl->tail = bio;
  return;
}
}
__inline static struct bio *bio_list_get(struct bio_list *bl )
{ struct bio *bio ;
  struct bio *tmp ;
  {
  bio = bl->head;
  tmp = 0;
  bl->tail = tmp;
  bl->head = tmp;
  return (bio);
}
}
extern void generic_make_request(struct bio * ) ;
__inline static struct request_queue *bdev_get_queue(struct block_device *bdev )
{
  {
  return ((bdev->bd_disk)->queue);
}
}
extern int dm_get_device(struct dm_target * , char const * , fmode_t , struct dm_dev ** ) ;
extern void dm_put_device(struct dm_target * , struct dm_dev * ) ;
__inline static void *dm_per_bio_data(struct bio *bio , size_t data_size )
{
  {
  return ((void *)bio + (0xffffffffffffffe0UL - data_size));
}
}
__inline static unsigned int dm_bio_get_target_request_nr(struct bio const *bio )
{ struct bio const *__mptr ;
  {
  __mptr = bio;
  return (((struct dm_target_io *)__mptr + 0xffffffffffffffe0UL)->target_request_nr);
}
}
extern int dm_register_target(struct target_type * ) ;
extern void dm_unregister_target(struct target_type * ) ;
extern int dm_suspended(struct dm_target * ) ;
extern int dm_set_target_max_io_len(struct dm_target * , sector_t ) ;
extern sector_t dm_table_get_size(struct dm_table * ) ;
extern fmode_t dm_table_get_mode(struct dm_table * ) ;
extern void dm_table_event(struct dm_table * ) ;
extern void *dm_vcalloc(unsigned long , unsigned long ) ;
extern void msleep(unsigned int ) ;
extern struct module __this_module ;
extern struct dm_kcopyd_client *dm_kcopyd_client_create(void) ;
extern void dm_kcopyd_client_destroy(struct dm_kcopyd_client * ) ;
extern int dm_kcopyd_copy(struct dm_kcopyd_client * , struct dm_io_region * , unsigned int ,
                          struct dm_io_region * , unsigned int , void (*)(int ,
                                                                           unsigned long ,
                                                                           void * ) ,
                          void * ) ;
extern void *dm_kcopyd_prepare_callback(struct dm_kcopyd_client * , void (*)(int ,
                                                                             unsigned long ,
                                                                             void * ) ,
                                        void * ) ;
extern void dm_kcopyd_do_callback(void * , int , unsigned long ) ;
struct dm_dev *dm_snap_origin(struct dm_snapshot *s ) ;
struct dm_dev *dm_snap_cow(struct dm_snapshot *s ) ;
__inline static chunk_t dm_chunk_number(chunk_t chunk )
{
  {
  return (chunk & 72057594037927935UL);
}
}
__inline static unsigned int dm_consecutive_chunk_count(struct dm_exception *e )
{
  {
  return ((unsigned int )(e->new_chunk >> 56));
}
}
__inline static void dm_consecutive_chunk_count_inc(struct dm_exception *e )
{ unsigned int tmp ;
  long tmp___0 ;
  {
  e->new_chunk = (chunk_t )((unsigned long long )e->new_chunk + 72057594037927936ULL);
  tmp = dm_consecutive_chunk_count(e);
  tmp___0 = ldv__builtin_expect(tmp == 0U, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/zakharov/workspace/benchmarks/bench_1/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/drivers/md/dm-exception-store.h"),
                         "i" (155), "i" (12UL));
    ldv_29480: ;
    goto ldv_29480;
  } else {
  }
  return;
}
}
__inline static void dm_consecutive_chunk_count_dec(struct dm_exception *e )
{ unsigned int tmp ;
  long tmp___0 ;
  {
  tmp = dm_consecutive_chunk_count(e);
  tmp___0 = ldv__builtin_expect(tmp == 0U, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/zakharov/workspace/benchmarks/bench_1/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/drivers/md/dm-exception-store.h"),
                         "i" (160), "i" (12UL));
    ldv_29484: ;
    goto ldv_29484;
  } else {
  }
  e->new_chunk = (chunk_t )((unsigned long long )e->new_chunk - 72057594037927936ULL);
  return;
}
}
__inline static sector_t get_dev_size(struct block_device *bdev )
{ loff_t tmp ;
  {
  tmp = i_size_read((struct inode const *)bdev->bd_inode);
  return ((sector_t )(tmp >> 9));
}
}
__inline static chunk_t sector_to_chunk(struct dm_exception_store *store , sector_t sector )
{
  {
  return (sector >> (int )store->chunk_shift);
}
}
int dm_exception_store_create(struct dm_target *ti , int argc , char **argv , struct dm_snapshot *snap ,
                              unsigned int *args_used , struct dm_exception_store **store ) ;
void dm_exception_store_destroy(struct dm_exception_store *store ) ;
int dm_exception_store_init(void) ;
void dm_exception_store_exit(void) ;
static char const dm_snapshot_merge_target_name[15U] =
  { 's', 'n', 'a', 'p',
        's', 'h', 'o', 't',
        '-', 'm', 'e', 'r',
        'g', 'e', '\000'};
struct dm_dev *dm_snap_origin(struct dm_snapshot *s )
{
  {
  return (s->origin);
}
}
struct dm_dev *dm_snap_cow(struct dm_snapshot *s )
{
  {
  return (s->cow);
}
}
static sector_t chunk_to_sector(struct dm_exception_store *store , chunk_t chunk )
{
  {
  return (chunk << (int )store->chunk_shift);
}
}
static int bdev_equal(struct block_device *lhs , struct block_device *rhs )
{
  {
  return ((unsigned long )lhs == (unsigned long )rhs);
}
}
static struct kmem_cache *exception_cache ;
static struct kmem_cache *pending_cache ;
static void init_tracked_chunk(struct bio *bio )
{ struct dm_snap_tracked_chunk *c ;
  void *tmp ;
  {
  tmp = dm_per_bio_data(bio, 24UL);
  c = (struct dm_snap_tracked_chunk *)tmp;
  INIT_HLIST_NODE(& c->node);
  return;
}
}
static bool is_bio_tracked(struct bio *bio )
{ struct dm_snap_tracked_chunk *c ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dm_per_bio_data(bio, 24UL);
  c = (struct dm_snap_tracked_chunk *)tmp;
  tmp___0 = hlist_unhashed((struct hlist_node const *)(& c->node));
  return (tmp___0 == 0);
}
}
static void track_chunk(struct dm_snapshot *s , struct bio *bio , chunk_t chunk )
{ struct dm_snap_tracked_chunk *c ;
  void *tmp ;
  {
  tmp = dm_per_bio_data(bio, 24UL);
  c = (struct dm_snap_tracked_chunk *)tmp;
  c->chunk = chunk;
  spin_lock_irq(& s->tracked_chunk_lock);
  hlist_add_head(& c->node, (struct hlist_head *)(& s->tracked_chunk_hash) + (chunk & 15UL));
  spin_unlock_irq(& s->tracked_chunk_lock);
  return;
}
}
static void stop_tracking_chunk(struct dm_snapshot *s , struct bio *bio )
{ struct dm_snap_tracked_chunk *c ;
  void *tmp ;
  unsigned long flags ;
  raw_spinlock_t *tmp___0 ;
  {
  tmp = dm_per_bio_data(bio, 24UL);
  c = (struct dm_snap_tracked_chunk *)tmp;
  tmp___0 = spinlock_check(& s->tracked_chunk_lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  hlist_del(& c->node);
  spin_unlock_irqrestore(& s->tracked_chunk_lock, flags);
  return;
}
}
static int __chunk_is_tracked(struct dm_snapshot *s , chunk_t chunk )
{ struct dm_snap_tracked_chunk *c ;
  struct hlist_node *hn ;
  int found ;
  struct hlist_node const *__mptr ;
  {
  found = 0;
  spin_lock_irq(& s->tracked_chunk_lock);
  hn = ((struct hlist_head *)(& s->tracked_chunk_hash) + (chunk & 15UL))->first;
  goto ldv_29622;
  ldv_29621: ;
  if (c->chunk == chunk) {
    found = 1;
    goto ldv_29620;
  } else {
  }
  hn = hn->next;
  ldv_29622: ;
  if ((unsigned long )hn != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)hn;
    c = (struct dm_snap_tracked_chunk *)__mptr;
    goto ldv_29621;
  } else {
    goto ldv_29620;
  }
  ldv_29620:
  spin_unlock_irq(& s->tracked_chunk_lock);
  return (found);
}
}
static void __check_for_conflicting_io(struct dm_snapshot *s , chunk_t chunk )
{ int tmp ;
  {
  goto ldv_29628;
  ldv_29627:
  msleep(1U);
  ldv_29628:
  tmp = __chunk_is_tracked(s, chunk);
  if (tmp != 0) {
    goto ldv_29627;
  } else {
    goto ldv_29629;
  }
  ldv_29629: ;
  return;
}
}
static struct list_head *_origins ;
static struct rw_semaphore _origins_lock ;
static wait_queue_head_t _pending_exceptions_done = {{{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "_pending_exceptions_done.lock",
                                                                0, 0UL}}}}, {& _pending_exceptions_done.task_list,
                                                                             & _pending_exceptions_done.task_list}};
static spinlock_t _pending_exceptions_done_spinlock = {{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "_pending_exceptions_done_spinlock",
                                                               0, 0UL}}}};
static uint64_t _pending_exceptions_done_count ;
static int init_origin_hash(void)
{ int i ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  tmp = kmalloc(4096UL, 208U);
  _origins = (struct list_head *)tmp;
  if ((unsigned long )_origins == (unsigned long )((struct list_head *)0)) {
    printk("\vdevice-mapper: snapshots: unable to allocate memory\n");
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_29646;
  ldv_29645:
  INIT_LIST_HEAD(_origins + (unsigned long )i);
  i = i + 1;
  ldv_29646: ;
  if (i <= 255) {
    goto ldv_29645;
  } else {
    goto ldv_29647;
  }
  ldv_29647:
  __init_rwsem(& _origins_lock, "&_origins_lock", & __key);
  return (0);
}
}
static void exit_origin_hash(void)
{
  {
  kfree((void const *)_origins);
  return;
}
}
static unsigned int origin_hash(struct block_device *bdev )
{
  {
  return (bdev->bd_dev & 255U);
}
}
static struct origin *__lookup_origin(struct block_device *origin )
{ struct list_head *ol ;
  struct origin *o ;
  unsigned int tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  {
  tmp = origin_hash(origin);
  ol = _origins + (unsigned long )tmp;
  __mptr = (struct list_head const *)ol->next;
  o = (struct origin *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_29665;
  ldv_29664:
  tmp___0 = bdev_equal(o->bdev, origin);
  if (tmp___0 != 0) {
    return (o);
  } else {
  }
  __mptr___0 = (struct list_head const *)o->hash_list.next;
  o = (struct origin *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_29665: ;
  if ((unsigned long )(& o->hash_list) != (unsigned long )ol) {
    goto ldv_29664;
  } else {
    goto ldv_29666;
  }
  ldv_29666: ;
  return (0);
}
}
static void __insert_origin(struct origin *o )
{ struct list_head *sl ;
  unsigned int tmp ;
  {
  tmp = origin_hash(o->bdev);
  sl = _origins + (unsigned long )tmp;
  list_add_tail(& o->hash_list, sl);
  return;
}
}
static int __find_snapshots_sharing_cow(struct dm_snapshot *snap , struct dm_snapshot **snap_src ,
                                        struct dm_snapshot **snap_dest , struct dm_snapshot **snap_merge )
{ struct dm_snapshot *s ;
  struct origin *o ;
  int count ;
  int active ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  count = 0;
  o = __lookup_origin((snap->origin)->bdev);
  if ((unsigned long )o == (unsigned long )((struct origin *)0)) {
    goto out;
  } else {
  }
  __mptr = (struct list_head const *)o->snapshots.next;
  s = (struct dm_snapshot *)__mptr + 0xffffffffffffff58UL;
  goto ldv_29688;
  ldv_29687: ;
  if ((unsigned long )((s->ti)->type)->name == (unsigned long )((char const *)(& dm_snapshot_merge_target_name)) && (unsigned long )snap_merge != (unsigned long )((struct dm_snapshot **)0)) {
    *snap_merge = s;
  } else {
  }
  tmp = bdev_equal((s->cow)->bdev, (snap->cow)->bdev);
  if (tmp == 0) {
    goto ldv_29686;
  } else {
  }
  down_read(& s->lock);
  active = s->active;
  up_read(& s->lock);
  if (active != 0) {
    if ((unsigned long )snap_src != (unsigned long )((struct dm_snapshot **)0)) {
      *snap_src = s;
    } else {
    }
  } else
  if ((unsigned long )snap_dest != (unsigned long )((struct dm_snapshot **)0)) {
    *snap_dest = s;
  } else {
  }
  count = count + 1;
  ldv_29686:
  __mptr___0 = (struct list_head const *)s->list.next;
  s = (struct dm_snapshot *)__mptr___0 + 0xffffffffffffff58UL;
  ldv_29688: ;
  if ((unsigned long )(& s->list) != (unsigned long )(& o->snapshots)) {
    goto ldv_29687;
  } else {
    goto ldv_29689;
  }
  ldv_29689: ;
  out: ;
  return (count);
}
}
static int __validate_exception_handover(struct dm_snapshot *snap )
{ struct dm_snapshot *snap_src ;
  struct dm_snapshot *snap_dest ;
  struct dm_snapshot *snap_merge ;
  int tmp ;
  {
  snap_src = 0;
  snap_dest = 0;
  snap_merge = 0;
  tmp = __find_snapshots_sharing_cow(snap, & snap_src, & snap_dest, & snap_merge);
  if (tmp == 2 || (unsigned long )snap_dest != (unsigned long )((struct dm_snapshot *)0)) {
    (snap->ti)->error = (char *)"Snapshot cow pairing for exception table handover failed";
    return (-22);
  } else {
  }
  if ((unsigned long )snap_src == (unsigned long )((struct dm_snapshot *)0)) {
    return (0);
  } else {
  }
  if ((unsigned long )((snap->ti)->type)->name != (unsigned long )((char const *)(& dm_snapshot_merge_target_name))) {
    return (1);
  } else {
  }
  if ((unsigned long )snap_merge != (unsigned long )((struct dm_snapshot *)0)) {
    (snap->ti)->error = (char *)"A snapshot is already merging.";
    return (-22);
  } else {
  }
  if ((unsigned long )((snap_src->store)->type)->prepare_merge == (unsigned long )((int (*)(struct dm_exception_store * ,
                                                                                            chunk_t * ,
                                                                                            chunk_t * ))0) || (unsigned long )((snap_src->store)->type)->commit_merge == (unsigned long )((int (*)(struct dm_exception_store * ,
                                                                                                                                                                                                   int ))0)) {
    (snap->ti)->error = (char *)"Snapshot exception store does not support snapshot-merge.";
    return (-22);
  } else {
  }
  return (1);
}
}
static void __insert_snapshot(struct origin *o , struct dm_snapshot *s )
{ struct dm_snapshot *l ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)o->snapshots.next;
  l = (struct dm_snapshot *)__mptr + 0xffffffffffffff58UL;
  goto ldv_29707;
  ldv_29706: ;
  if ((l->store)->chunk_size < (s->store)->chunk_size) {
    goto ldv_29705;
  } else {
  }
  __mptr___0 = (struct list_head const *)l->list.next;
  l = (struct dm_snapshot *)__mptr___0 + 0xffffffffffffff58UL;
  ldv_29707: ;
  if ((unsigned long )(& l->list) != (unsigned long )(& o->snapshots)) {
    goto ldv_29706;
  } else {
    goto ldv_29705;
  }
  ldv_29705:
  list_add_tail(& s->list, & l->list);
  return;
}
}
static int register_snapshot(struct dm_snapshot *snap )
{ struct origin *o ;
  struct origin *new_o ;
  struct block_device *bdev ;
  int r ;
  void *tmp ;
  {
  new_o = 0;
  bdev = (snap->origin)->bdev;
  r = 0;
  tmp = kmalloc(40UL, 208U);
  new_o = (struct origin *)tmp;
  if ((unsigned long )new_o == (unsigned long )((struct origin *)0)) {
    return (-12);
  } else {
  }
  down_write(& _origins_lock);
  r = __validate_exception_handover(snap);
  if (r < 0) {
    kfree((void const *)new_o);
    goto out;
  } else {
  }
  o = __lookup_origin(bdev);
  if ((unsigned long )o != (unsigned long )((struct origin *)0)) {
    kfree((void const *)new_o);
  } else {
    o = new_o;
    INIT_LIST_HEAD(& o->snapshots);
    o->bdev = bdev;
    __insert_origin(o);
  }
  __insert_snapshot(o, snap);
  out:
  up_write(& _origins_lock);
  return (r);
}
}
static void reregister_snapshot(struct dm_snapshot *s )
{ struct block_device *bdev ;
  struct origin *tmp ;
  {
  bdev = (s->origin)->bdev;
  down_write(& _origins_lock);
  list_del(& s->list);
  tmp = __lookup_origin(bdev);
  __insert_snapshot(tmp, s);
  up_write(& _origins_lock);
  return;
}
}
static void unregister_snapshot(struct dm_snapshot *s )
{ struct origin *o ;
  int tmp ;
  {
  down_write(& _origins_lock);
  o = __lookup_origin((s->origin)->bdev);
  list_del(& s->list);
  if ((unsigned long )o != (unsigned long )((struct origin *)0)) {
    tmp = list_empty((struct list_head const *)(& o->snapshots));
    if (tmp != 0) {
      list_del(& o->hash_list);
      kfree((void const *)o);
    } else {
    }
  } else {
  }
  up_write(& _origins_lock);
  return;
}
}
static int dm_exception_table_init(struct dm_exception_table *et , uint32_t size ,
                                   unsigned int hash_shift )
{ unsigned int i ;
  void *tmp ;
  {
  et->hash_shift = hash_shift;
  et->hash_mask = size - 1U;
  tmp = dm_vcalloc((unsigned long )size, 16UL);
  et->table = (struct list_head *)tmp;
  if ((unsigned long )et->table == (unsigned long )((struct list_head *)0)) {
    return (-12);
  } else {
  }
  i = 0U;
  goto ldv_29731;
  ldv_29730:
  INIT_LIST_HEAD(et->table + (unsigned long )i);
  i = i + 1U;
  ldv_29731: ;
  if (i < size) {
    goto ldv_29730;
  } else {
    goto ldv_29732;
  }
  ldv_29732: ;
  return (0);
}
}
static void dm_exception_table_exit(struct dm_exception_table *et , struct kmem_cache *mem )
{ struct list_head *slot ;
  struct dm_exception *ex ;
  struct dm_exception *next ;
  int i ;
  int size ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  size = (int )(et->hash_mask + 1U);
  i = 0;
  goto ldv_29752;
  ldv_29751:
  slot = et->table + (unsigned long )i;
  __mptr = (struct list_head const *)slot->next;
  ex = (struct dm_exception *)__mptr;
  __mptr___0 = (struct list_head const *)ex->hash_list.next;
  next = (struct dm_exception *)__mptr___0;
  goto ldv_29749;
  ldv_29748:
  kmem_cache_free(mem, (void *)ex);
  ex = next;
  __mptr___1 = (struct list_head const *)next->hash_list.next;
  next = (struct dm_exception *)__mptr___1;
  ldv_29749: ;
  if ((unsigned long )(& ex->hash_list) != (unsigned long )slot) {
    goto ldv_29748;
  } else {
    goto ldv_29750;
  }
  ldv_29750:
  i = i + 1;
  ldv_29752: ;
  if (i < size) {
    goto ldv_29751;
  } else {
    goto ldv_29753;
  }
  ldv_29753:
  vfree((void const *)et->table);
  return;
}
}
static uint32_t exception_hash(struct dm_exception_table *et , chunk_t chunk )
{
  {
  return ((uint32_t )(chunk >> (int )et->hash_shift) & et->hash_mask);
}
}
static void dm_remove_exception(struct dm_exception *e )
{
  {
  list_del(& e->hash_list);
  return;
}
}
static struct dm_exception *dm_lookup_exception(struct dm_exception_table *et , chunk_t chunk )
{ struct list_head *slot ;
  struct dm_exception *e ;
  uint32_t tmp ;
  struct list_head const *__mptr ;
  unsigned int tmp___0 ;
  struct list_head const *__mptr___0 ;
  {
  tmp = exception_hash(et, chunk);
  slot = et->table + (unsigned long )tmp;
  __mptr = (struct list_head const *)slot->next;
  e = (struct dm_exception *)__mptr;
  goto ldv_29772;
  ldv_29771: ;
  if (e->old_chunk <= chunk) {
    tmp___0 = dm_consecutive_chunk_count(e);
    if (e->old_chunk + (chunk_t )tmp___0 >= chunk) {
      return (e);
    } else {
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)e->hash_list.next;
  e = (struct dm_exception *)__mptr___0;
  ldv_29772: ;
  if ((unsigned long )(& e->hash_list) != (unsigned long )slot) {
    goto ldv_29771;
  } else {
    goto ldv_29773;
  }
  ldv_29773: ;
  return (0);
}
}
static struct dm_exception *alloc_completed_exception(void)
{ struct dm_exception *e ;
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = kmem_cache_alloc(exception_cache, 16U);
  e = (struct dm_exception *)tmp;
  if ((unsigned long )e == (unsigned long )((struct dm_exception *)0)) {
    tmp___0 = kmem_cache_alloc(exception_cache, 32U);
    e = (struct dm_exception *)tmp___0;
  } else {
  }
  return (e);
}
}
static void free_completed_exception(struct dm_exception *e )
{
  {
  kmem_cache_free(exception_cache, (void *)e);
  return;
}
}
static struct dm_snap_pending_exception *alloc_pending_exception(struct dm_snapshot *s )
{ struct dm_snap_pending_exception *pe ;
  void *tmp ;
  {
  tmp = mempool_alloc(s->pending_pool, 16U);
  pe = (struct dm_snap_pending_exception *)tmp;
  atomic_inc(& s->pending_exceptions_count);
  pe->snap = s;
  return (pe);
}
}
static void free_pending_exception(struct dm_snap_pending_exception *pe )
{ struct dm_snapshot *s ;
  {
  s = pe->snap;
  mempool_free((void *)pe, s->pending_pool);
  __asm__ volatile ("": : : "memory");
  atomic_dec(& s->pending_exceptions_count);
  return;
}
}
static void dm_insert_exception(struct dm_exception_table *eh , struct dm_exception *new_e )
{ struct list_head *l ;
  struct dm_exception *e ;
  uint32_t tmp ;
  struct list_head const *__mptr ;
  unsigned int tmp___0 ;
  chunk_t tmp___1 ;
  unsigned int tmp___2 ;
  chunk_t tmp___3 ;
  struct list_head const *__mptr___0 ;
  struct list_head *tmp___4 ;
  {
  e = 0;
  tmp = exception_hash(eh, new_e->old_chunk);
  l = eh->table + (unsigned long )tmp;
  if (eh->hash_shift == 0U) {
    goto out;
  } else {
  }
  __mptr = (struct list_head const *)l->prev;
  e = (struct dm_exception *)__mptr;
  goto ldv_29802;
  ldv_29801:
  tmp___0 = dm_consecutive_chunk_count(e);
  if (new_e->old_chunk == (e->old_chunk + (chunk_t )tmp___0) + 1UL) {
    tmp___1 = dm_chunk_number(e->new_chunk);
    tmp___2 = dm_consecutive_chunk_count(e);
    if (new_e->new_chunk == (tmp___1 + (chunk_t )tmp___2) + 1UL) {
      dm_consecutive_chunk_count_inc(e);
      free_completed_exception(new_e);
      return;
    } else {
    }
  } else {
  }
  if (new_e->old_chunk == e->old_chunk - 1UL) {
    tmp___3 = dm_chunk_number(e->new_chunk);
    if (new_e->new_chunk == tmp___3 - 1UL) {
      dm_consecutive_chunk_count_inc(e);
      e->old_chunk = e->old_chunk - 1UL;
      e->new_chunk = e->new_chunk - 1UL;
      free_completed_exception(new_e);
      return;
    } else {
    }
  } else {
  }
  if (new_e->old_chunk > e->old_chunk) {
    goto ldv_29800;
  } else {
  }
  __mptr___0 = (struct list_head const *)e->hash_list.prev;
  e = (struct dm_exception *)__mptr___0;
  ldv_29802: ;
  if ((unsigned long )(& e->hash_list) != (unsigned long )l) {
    goto ldv_29801;
  } else {
    goto ldv_29800;
  }
  ldv_29800: ;
  out: ;
  if ((unsigned long )e != (unsigned long )((struct dm_exception *)0)) {
    tmp___4 = & e->hash_list;
  } else {
    tmp___4 = l;
  }
  list_add(& new_e->hash_list, tmp___4);
  return;
}
}
static int dm_add_exception(void *context , chunk_t old , chunk_t new )
{ struct dm_snapshot *s ;
  struct dm_exception *e ;
  {
  s = (struct dm_snapshot *)context;
  e = alloc_completed_exception();
  if ((unsigned long )e == (unsigned long )((struct dm_exception *)0)) {
    return (-12);
  } else {
  }
  e->old_chunk = old;
  e->new_chunk = new;
  dm_insert_exception(& s->complete, e);
  return (0);
}
}
static uint32_t __minimum_chunk_size(struct origin *o )
{ struct dm_snapshot *snap ;
  unsigned int chunk_size ;
  struct list_head const *__mptr ;
  unsigned int __x ;
  unsigned int __y ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  struct list_head const *__mptr___0 ;
  {
  chunk_size = 0U;
  if ((unsigned long )o != (unsigned long )((struct origin *)0)) {
    __mptr = (struct list_head const *)o->snapshots.next;
    snap = (struct dm_snapshot *)__mptr + 0xffffffffffffff58UL;
    goto ldv_29826;
    ldv_29825:
    __x = chunk_size;
    __y = (snap->store)->chunk_size;
    if (__x != 0U) {
      if (__y != 0U) {
        _min1 = __x;
        _min2 = __y;
        if (_min1 < _min2) {
          tmp = _min1;
        } else {
          tmp = _min2;
        }
        tmp___0 = tmp;
      } else {
        tmp___0 = __x;
      }
      tmp___1 = tmp___0;
    } else {
      tmp___1 = __y;
    }
    chunk_size = tmp___1;
    __mptr___0 = (struct list_head const *)snap->list.next;
    snap = (struct dm_snapshot *)__mptr___0 + 0xffffffffffffff58UL;
    ldv_29826: ;
    if ((unsigned long )(& snap->list) != (unsigned long )(& o->snapshots)) {
      goto ldv_29825;
    } else {
      goto ldv_29827;
    }
    ldv_29827: ;
  } else {
  }
  return (chunk_size);
}
}
static int calc_max_buckets(void)
{ unsigned long mem ;
  {
  mem = 2097152UL;
  mem = mem / 16UL;
  return ((int )mem);
}
}
static int init_hash_tables(struct dm_snapshot *s )
{ sector_t hash_size ;
  sector_t cow_dev_size ;
  sector_t origin_dev_size ;
  sector_t max_buckets ;
  int tmp ;
  sector_t _min1 ;
  sector_t _min2 ;
  sector_t tmp___0 ;
  sector_t _min1___0 ;
  sector_t _min2___0 ;
  sector_t tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  cow_dev_size = get_dev_size((s->cow)->bdev);
  origin_dev_size = get_dev_size((s->origin)->bdev);
  tmp = calc_max_buckets();
  max_buckets = (sector_t )tmp;
  _min1 = origin_dev_size;
  _min2 = cow_dev_size;
  if (_min1 < _min2) {
    tmp___0 = _min1;
  } else {
    tmp___0 = _min2;
  }
  hash_size = tmp___0 >> (int )(s->store)->chunk_shift;
  _min1___0 = hash_size;
  _min2___0 = max_buckets;
  if (_min1___0 < _min2___0) {
    tmp___1 = _min1___0;
  } else {
    tmp___1 = _min2___0;
  }
  hash_size = tmp___1;
  if (hash_size <= 63UL) {
    hash_size = 64UL;
  } else {
  }
  hash_size = __rounddown_pow_of_two(hash_size);
  tmp___2 = dm_exception_table_init(& s->complete, (uint32_t )hash_size, 8U);
  if (tmp___2 != 0) {
    return (-12);
  } else {
  }
  hash_size = hash_size >> 3;
  if (hash_size <= 63UL) {
    hash_size = 64UL;
  } else {
  }
  tmp___3 = dm_exception_table_init(& s->pending, (uint32_t )hash_size, 0U);
  if (tmp___3 != 0) {
    dm_exception_table_exit(& s->complete, exception_cache);
    return (-12);
  } else {
  }
  return (0);
}
}
static void merge_shutdown(struct dm_snapshot *s )
{
  {
  clear_bit_unlock(0U, (unsigned long volatile *)(& s->state_bits));
  __asm__ volatile ("": : : "memory");
  wake_up_bit((void *)(& s->state_bits), 0);
  return;
}
}
static struct bio *__release_queued_bios_after_merge(struct dm_snapshot *s )
{ struct bio *tmp ;
  {
  s->first_merging_chunk = 0UL;
  s->num_merging_chunks = 0;
  tmp = bio_list_get(& s->bios_queued_during_merge);
  return (tmp);
}
}
static int __remove_single_exception_chunk(struct dm_snapshot *s , chunk_t old_chunk )
{ struct dm_exception *e ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  e = dm_lookup_exception(& s->complete, old_chunk);
  if ((unsigned long )e == (unsigned long )((struct dm_exception *)0)) {
    printk("\vdevice-mapper: snapshots: Corruption detected: exception for block %llu is on disk but not in memory\n",
           (unsigned long long )old_chunk);
    return (-22);
  } else {
  }
  tmp = dm_consecutive_chunk_count(e);
  if (tmp == 0U) {
    dm_remove_exception(e);
    free_completed_exception(e);
    return (0);
  } else {
  }
  if (e->old_chunk == old_chunk) {
    e->old_chunk = e->old_chunk + 1UL;
    e->new_chunk = e->new_chunk + 1UL;
  } else {
    tmp___1 = dm_consecutive_chunk_count(e);
    if (e->old_chunk + (chunk_t )tmp___1 != old_chunk) {
      tmp___0 = dm_consecutive_chunk_count(e);
      printk("\vdevice-mapper: snapshots: Attempt to merge block %llu from the middle of a chunk range [%llu - %llu]\n",
             (unsigned long long )old_chunk, (unsigned long long )e->old_chunk, (unsigned long long )e->old_chunk + (unsigned long long )tmp___0);
      return (-22);
    } else {
    }
  }
  dm_consecutive_chunk_count_dec(e);
  return (0);
}
}
static void flush_bios(struct bio *bio ) ;
static int remove_single_exception_chunk(struct dm_snapshot *s )
{ struct bio *b ;
  int r ;
  chunk_t old_chunk ;
  chunk_t tmp ;
  {
  b = 0;
  old_chunk = (s->first_merging_chunk + (chunk_t )s->num_merging_chunks) - 1UL;
  down_write(& s->lock);
  ldv_29865:
  r = __remove_single_exception_chunk(s, old_chunk);
  if (r != 0) {
    goto out;
  } else {
  }
  tmp = old_chunk;
  old_chunk = old_chunk - 1UL;
  if (tmp > s->first_merging_chunk) {
    goto ldv_29865;
  } else {
    goto ldv_29866;
  }
  ldv_29866:
  b = __release_queued_bios_after_merge(s);
  out:
  up_write(& s->lock);
  if ((unsigned long )b != (unsigned long )((struct bio *)0)) {
    flush_bios(b);
  } else {
  }
  return (r);
}
}
static int origin_write_extent(struct dm_snapshot *merging_snap , sector_t sector ,
                               unsigned int size ) ;
static void merge_callback(int read_err , unsigned long write_err , void *context ) ;
static uint64_t read_pending_exceptions_done_count(void)
{ uint64_t pending_exceptions_done ;
  {
  spin_lock(& _pending_exceptions_done_spinlock);
  pending_exceptions_done = _pending_exceptions_done_count;
  spin_unlock(& _pending_exceptions_done_spinlock);
  return (pending_exceptions_done);
}
}
static void increment_pending_exceptions_done_count(void)
{
  {
  spin_lock(& _pending_exceptions_done_spinlock);
  _pending_exceptions_done_count = _pending_exceptions_done_count + 1ULL;
  spin_unlock(& _pending_exceptions_done_spinlock);
  __wake_up(& _pending_exceptions_done, 3U, 0, 0);
  return;
}
}
static void snapshot_merge_next_chunks(struct dm_snapshot *s )
{ int i ;
  int linear_chunks ;
  chunk_t old_chunk ;
  chunk_t new_chunk ;
  struct dm_io_region src ;
  struct dm_io_region dest ;
  sector_t io_size ;
  uint64_t previous_count ;
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  sector_t _min1 ;
  sector_t _min2 ;
  sector_t tmp___3 ;
  sector_t tmp___4 ;
  uint64_t tmp___5 ;
  wait_queue_t __wait ;
  struct task_struct *tmp___6 ;
  uint64_t tmp___7 ;
  int tmp___8 ;
  {
  tmp = constant_test_bit(0U, (unsigned long const volatile *)(& s->state_bits));
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/zakharov/workspace/benchmarks/bench_1/work/current--X--drivers/md/dm-snapshot.ko--X--deg2_cpalinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/35/dscv_tempdir/dscv/ri/32_7a/drivers/md/dm-snap.c.prepared"),
                         "i" (936), "i" (12UL));
    ldv_29893: ;
    goto ldv_29893;
  } else {
  }
  tmp___1 = constant_test_bit(1U, (unsigned long const volatile *)(& s->state_bits));
  tmp___2 = ldv__builtin_expect(tmp___1 != 0, 0L);
  if (tmp___2 != 0L) {
    goto shut;
  } else {
  }
  if (s->valid == 0) {
    printk("\vdevice-mapper: snapshots: Snapshot is invalid: can\'t merge\n");
    goto shut;
  } else {
  }
  linear_chunks = (*(((s->store)->type)->prepare_merge))(s->store, & old_chunk, & new_chunk);
  if (linear_chunks <= 0) {
    if (linear_chunks < 0) {
      printk("\vdevice-mapper: snapshots: Read error in exception store: shutting down merge\n");
      down_write(& s->lock);
      s->merge_failed = 1;
      up_write(& s->lock);
    } else {
    }
    goto shut;
  } else {
  }
  old_chunk = (old_chunk - (chunk_t )linear_chunks) + 1UL;
  new_chunk = (new_chunk - (chunk_t )linear_chunks) + 1UL;
  io_size = (sector_t )((s->store)->chunk_size * (unsigned int )linear_chunks);
  dest.bdev = (s->origin)->bdev;
  dest.sector = chunk_to_sector(s->store, old_chunk);
  _min1 = io_size;
  tmp___3 = get_dev_size(dest.bdev);
  _min2 = tmp___3 - dest.sector;
  if (_min1 < _min2) {
    tmp___4 = _min1;
  } else {
    tmp___4 = _min2;
  }
  dest.count = tmp___4;
  src.bdev = (s->cow)->bdev;
  src.sector = chunk_to_sector(s->store, new_chunk);
  src.count = dest.count;
  previous_count = read_pending_exceptions_done_count();
  goto ldv_29903;
  ldv_29902:
  tmp___5 = read_pending_exceptions_done_count();
  if (tmp___5 != previous_count) {
    goto ldv_29898;
  } else {
  }
  tmp___6 = get_current();
  __wait.flags = 0U;
  __wait.private = (void *)tmp___6;
  __wait.func = & autoremove_wake_function;
  __wait.task_list.next = & __wait.task_list;
  __wait.task_list.prev = & __wait.task_list;
  ldv_29901:
  prepare_to_wait(& _pending_exceptions_done, & __wait, 2);
  tmp___7 = read_pending_exceptions_done_count();
  if (tmp___7 != previous_count) {
    goto ldv_29900;
  } else {
  }
  schedule();
  goto ldv_29901;
  ldv_29900:
  finish_wait(& _pending_exceptions_done, & __wait);
  ldv_29898:
  previous_count = read_pending_exceptions_done_count();
  ldv_29903:
  tmp___8 = origin_write_extent(s, dest.sector, (unsigned int )io_size);
  if (tmp___8 != 0) {
    goto ldv_29902;
  } else {
    goto ldv_29904;
  }
  ldv_29904:
  down_write(& s->lock);
  s->first_merging_chunk = old_chunk;
  s->num_merging_chunks = linear_chunks;
  up_write(& s->lock);
  i = 0;
  goto ldv_29906;
  ldv_29905:
  __check_for_conflicting_io(s, (chunk_t )i + old_chunk);
  i = i + 1;
  ldv_29906: ;
  if (i < linear_chunks) {
    goto ldv_29905;
  } else {
    goto ldv_29907;
  }
  ldv_29907:
  dm_kcopyd_copy(s->kcopyd_client, & src, 1U, & dest, 0U, & merge_callback, (void *)s);
  return;
  shut:
  merge_shutdown(s);
  return;
}
}
static void error_bios(struct bio *bio ) ;
static void merge_callback(int read_err , unsigned long write_err , void *context )
{ struct dm_snapshot *s ;
  struct bio *b ;
  int tmp ;
  int tmp___0 ;
  {
  s = (struct dm_snapshot *)context;
  b = 0;
  if (read_err != 0 || write_err != 0UL) {
    if (read_err != 0) {
      printk("\vdevice-mapper: snapshots: Read error: shutting down merge.\n");
    } else {
      printk("\vdevice-mapper: snapshots: Write error: shutting down merge.\n");
    }
    goto shut;
  } else {
  }
  tmp = (*(((s->store)->type)->commit_merge))(s->store, s->num_merging_chunks);
  if (tmp < 0) {
    printk("\vdevice-mapper: snapshots: Write error in exception store: shutting down merge\n");
    goto shut;
  } else {
  }
  tmp___0 = remove_single_exception_chunk(s);
  if (tmp___0 < 0) {
    goto shut;
  } else {
  }
  snapshot_merge_next_chunks(s);
  return;
  shut:
  down_write(& s->lock);
  s->merge_failed = 1;
  b = __release_queued_bios_after_merge(s);
  up_write(& s->lock);
  error_bios(b);
  merge_shutdown(s);
  return;
}
}
static void start_merge(struct dm_snapshot *s )
{ int tmp ;
  {
  tmp = test_and_set_bit(0, (unsigned long volatile *)(& s->state_bits));
  if (tmp == 0) {
    snapshot_merge_next_chunks(s);
  } else {
  }
  return;
}
}
static int wait_schedule(void *ptr )
{
  {
  schedule();
  return (0);
}
}
static void stop_merge(struct dm_snapshot *s )
{
  {
  set_bit(1U, (unsigned long volatile *)(& s->state_bits));
  wait_on_bit((void *)(& s->state_bits), 0, & wait_schedule, 2U);
  clear_bit(1, (unsigned long volatile *)(& s->state_bits));
  return;
}
}
static int snapshot_ctr(struct dm_target *ti , unsigned int argc , char **argv )
{ struct dm_snapshot *s ;
  int i ;
  int r ;
  char *origin_path ;
  char *cow_path ;
  unsigned int args_used ;
  unsigned int num_flush_requests ;
  fmode_t origin_mode ;
  void *tmp ;
  fmode_t tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  struct lock_class_key __key___1 ;
  {
  r = -22;
  num_flush_requests = 1U;
  origin_mode = 1U;
  if (argc != 4U) {
    ti->error = (char *)"requires exactly 4 arguments";
    r = -22;
    goto bad;
  } else {
  }
  if ((unsigned long )(ti->type)->name == (unsigned long )((char const *)(& dm_snapshot_merge_target_name))) {
    num_flush_requests = 2U;
    origin_mode = 2U;
  } else {
  }
  tmp = kmalloc(568UL, 208U);
  s = (struct dm_snapshot *)tmp;
  if ((unsigned long )s == (unsigned long )((struct dm_snapshot *)0)) {
    ti->error = (char *)"Cannot allocate private snapshot structure";
    r = -12;
    goto bad;
  } else {
  }
  origin_path = *argv;
  argv = argv + 1;
  argc = argc - 1U;
  r = dm_get_device(ti, (char const *)origin_path, origin_mode, & s->origin);
  if (r != 0) {
    ti->error = (char *)"Cannot get origin device";
    goto bad_origin;
  } else {
  }
  cow_path = *argv;
  argv = argv + 1;
  argc = argc - 1U;
  tmp___0 = dm_table_get_mode(ti->table);
  r = dm_get_device(ti, (char const *)cow_path, tmp___0, & s->cow);
  if (r != 0) {
    ti->error = (char *)"Cannot get COW device";
    goto bad_cow;
  } else {
  }
  r = dm_exception_store_create(ti, (int )argc, argv, s, & args_used, & s->store);
  if (r != 0) {
    ti->error = (char *)"Couldn\'t create exception store";
    r = -22;
    goto bad_store;
  } else {
  }
  argv = argv + (unsigned long )args_used;
  argc = argc - args_used;
  s->ti = ti;
  s->valid = 1;
  s->active = 0;
  atomic_set(& s->pending_exceptions_count, 0);
  __init_rwsem(& s->lock, "&s->lock", & __key);
  INIT_LIST_HEAD(& s->list);
  spinlock_check(& s->pe_lock);
  __raw_spin_lock_init(& s->pe_lock.ldv_5961.rlock, "&(&s->pe_lock)->rlock", & __key___0);
  s->state_bits = 0UL;
  s->merge_failed = 0;
  s->first_merging_chunk = 0UL;
  s->num_merging_chunks = 0;
  bio_list_init(& s->bios_queued_during_merge);
  tmp___1 = init_hash_tables(s);
  if (tmp___1 != 0) {
    ti->error = (char *)"Unable to allocate hash table space";
    r = -12;
    goto bad_hash_tables;
  } else {
  }
  s->kcopyd_client = dm_kcopyd_client_create();
  tmp___3 = IS_ERR((void const *)s->kcopyd_client);
  if (tmp___3 != 0L) {
    tmp___2 = PTR_ERR((void const *)s->kcopyd_client);
    r = (int )tmp___2;
    ti->error = (char *)"Could not create kcopyd client";
    goto bad_kcopyd;
  } else {
  }
  s->pending_pool = mempool_create_slab_pool(256, pending_cache);
  if ((unsigned long )s->pending_pool == (unsigned long )((mempool_t *)0)) {
    ti->error = (char *)"Could not allocate mempool for pending exceptions";
    goto bad_pending_pool;
  } else {
  }
  i = 0;
  goto ldv_29950;
  ldv_29949:
  ((struct hlist_head *)(& s->tracked_chunk_hash) + (unsigned long )i)->first = 0;
  i = i + 1;
  ldv_29950: ;
  if (i <= 15) {
    goto ldv_29949;
  } else {
    goto ldv_29951;
  }
  ldv_29951:
  spinlock_check(& s->tracked_chunk_lock);
  __raw_spin_lock_init(& s->tracked_chunk_lock.ldv_5961.rlock, "&(&s->tracked_chunk_lock)->rlock",
                       & __key___1);
  ti->private = (void *)s;
  ti->num_flush_requests = num_flush_requests;
  ti->per_bio_data_size = 24U;
  r = register_snapshot(s);
  if (r == -12) {
    ti->error = (char *)"Snapshot origin struct allocation failed";
    goto bad_load_and_register;
  } else
  if (r < 0) {
    goto bad_load_and_register;
  } else {
  }
  if (r > 0) {
    (s->store)->chunk_size = 0U;
    return (0);
  } else {
  }
  r = (*(((s->store)->type)->read_metadata))(s->store, & dm_add_exception, (void *)s);
  if (r < 0) {
    ti->error = (char *)"Failed to read snapshot metadata";
    goto bad_read_metadata;
  } else
  if (r > 0) {
    s->valid = 0;
    printk("\fdevice-mapper: snapshots: Snapshot is marked invalid.\n");
  } else {
  }
  if ((s->store)->chunk_size == 0U) {
    ti->error = (char *)"Chunk size not set";
    goto bad_read_metadata;
  } else {
  }
  r = dm_set_target_max_io_len(ti, (sector_t )(s->store)->chunk_size);
  if (r != 0) {
    goto bad_read_metadata;
  } else {
  }
  return (0);
  bad_read_metadata:
  unregister_snapshot(s);
  bad_load_and_register:
  mempool_destroy(s->pending_pool);
  bad_pending_pool:
  dm_kcopyd_client_destroy(s->kcopyd_client);
  bad_kcopyd:
  dm_exception_table_exit(& s->pending, pending_cache);
  dm_exception_table_exit(& s->complete, exception_cache);
  bad_hash_tables:
  dm_exception_store_destroy(s->store);
  bad_store:
  dm_put_device(ti, s->cow);
  bad_cow:
  dm_put_device(ti, s->origin);
  bad_origin:
  kfree((void const *)s);
  bad: ;
  return (r);
}
}
static void __free_exceptions(struct dm_snapshot *s )
{
  {
  dm_kcopyd_client_destroy(s->kcopyd_client);
  s->kcopyd_client = 0;
  dm_exception_table_exit(& s->pending, pending_cache);
  dm_exception_table_exit(& s->complete, exception_cache);
  return;
}
}
static void __handover_exceptions(struct dm_snapshot *snap_src , struct dm_snapshot *snap_dest )
{ union __anonunion_u_188 u ;
  {
  u.table_swap = snap_dest->complete;
  snap_dest->complete = snap_src->complete;
  snap_src->complete = u.table_swap;
  u.store_swap = snap_dest->store;
  snap_dest->store = snap_src->store;
  snap_src->store = u.store_swap;
  (snap_dest->store)->snap = snap_dest;
  (snap_src->store)->snap = snap_src;
  (snap_dest->ti)->max_io_len = (snap_dest->store)->chunk_size;
  snap_dest->valid = snap_src->valid;
  snap_src->valid = 0;
  return;
}
}
static void snapshot_dtr(struct dm_target *ti )
{ int i ;
  struct dm_snapshot *s ;
  struct dm_snapshot *snap_src ;
  struct dm_snapshot *snap_dest ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  s = (struct dm_snapshot *)ti->private;
  snap_src = 0;
  snap_dest = 0;
  down_read(& _origins_lock);
  __find_snapshots_sharing_cow(s, & snap_src, & snap_dest, 0);
  if (((unsigned long )snap_src != (unsigned long )((struct dm_snapshot *)0) && (unsigned long )snap_dest != (unsigned long )((struct dm_snapshot *)0)) && (unsigned long )s == (unsigned long )snap_src) {
    down_write(& snap_dest->lock);
    snap_dest->valid = 0;
    up_write(& snap_dest->lock);
    printk("\vdevice-mapper: snapshots: Cancelling snapshot handover.\n");
  } else {
  }
  up_read(& _origins_lock);
  if ((unsigned long )(ti->type)->name == (unsigned long )((char const *)(& dm_snapshot_merge_target_name))) {
    stop_merge(s);
  } else {
  }
  unregister_snapshot(s);
  goto ldv_29974;
  ldv_29973:
  msleep(1U);
  ldv_29974:
  tmp = atomic_read((atomic_t const *)(& s->pending_exceptions_count));
  if (tmp != 0) {
    goto ldv_29973;
  } else {
    goto ldv_29975;
  }
  ldv_29975:
  __asm__ volatile ("mfence": : : "memory");
  i = 0;
  goto ldv_29978;
  ldv_29977:
  tmp___0 = hlist_empty((struct hlist_head const *)(& s->tracked_chunk_hash) + (unsigned long )i);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/zakharov/workspace/benchmarks/bench_1/work/current--X--drivers/md/dm-snapshot.ko--X--deg2_cpalinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/35/dscv_tempdir/dscv/ri/32_7a/drivers/md/dm-snap.c.prepared"),
                         "i" (1325), "i" (12UL));
    ldv_29976: ;
    goto ldv_29976;
  } else {
  }
  i = i + 1;
  ldv_29978: ;
  if (i <= 15) {
    goto ldv_29977;
  } else {
    goto ldv_29979;
  }
  ldv_29979:
  __free_exceptions(s);
  mempool_destroy(s->pending_pool);
  dm_exception_store_destroy(s->store);
  dm_put_device(ti, s->cow);
  dm_put_device(ti, s->origin);
  kfree((void const *)s);
  return;
}
}
static void flush_bios(struct bio *bio )
{ struct bio *n ;
  {
  goto ldv_29985;
  ldv_29984:
  n = bio->bi_next;
  bio->bi_next = 0;
  generic_make_request(bio);
  bio = n;
  ldv_29985: ;
  if ((unsigned long )bio != (unsigned long )((struct bio *)0)) {
    goto ldv_29984;
  } else {
    goto ldv_29986;
  }
  ldv_29986: ;
  return;
}
}
static int do_origin(struct dm_dev *origin , struct bio *bio ) ;
static void retry_origin_bios(struct dm_snapshot *s , struct bio *bio )
{ struct bio *n ;
  int r ;
  {
  goto ldv_29997;
  ldv_29996:
  n = bio->bi_next;
  bio->bi_next = 0;
  r = do_origin(s->origin, bio);
  if (r == 1) {
    generic_make_request(bio);
  } else {
  }
  bio = n;
  ldv_29997: ;
  if ((unsigned long )bio != (unsigned long )((struct bio *)0)) {
    goto ldv_29996;
  } else {
    goto ldv_29998;
  }
  ldv_29998: ;
  return;
}
}
static void error_bios(struct bio *bio )
{ struct bio *n ;
  {
  goto ldv_30004;
  ldv_30003:
  n = bio->bi_next;
  bio->bi_next = 0;
  bio_endio(bio, -5);
  bio = n;
  ldv_30004: ;
  if ((unsigned long )bio != (unsigned long )((struct bio *)0)) {
    goto ldv_30003;
  } else {
    goto ldv_30005;
  }
  ldv_30005: ;
  return;
}
}
static void __invalidate_snapshot(struct dm_snapshot *s , int err )
{
  {
  if (s->valid == 0) {
    return;
  } else {
  }
  if (err == -5) {
    printk("\vdevice-mapper: snapshots: Invalidating snapshot: Error reading/writing.\n");
  } else
  if (err == -12) {
    printk("\vdevice-mapper: snapshots: Invalidating snapshot: Unable to allocate exception.\n");
  } else {
  }
  if ((unsigned long )((s->store)->type)->drop_snapshot != (unsigned long )((void (*)(struct dm_exception_store * ))0)) {
    (*(((s->store)->type)->drop_snapshot))(s->store);
  } else {
  }
  s->valid = 0;
  dm_table_event((s->ti)->table);
  return;
}
}
static void pending_complete(struct dm_snap_pending_exception *pe , int success )
{ struct dm_exception *e ;
  struct dm_snapshot *s ;
  struct bio *origin_bios ;
  struct bio *snapshot_bios ;
  struct bio *full_bio ;
  int error ;
  {
  s = pe->snap;
  origin_bios = 0;
  snapshot_bios = 0;
  full_bio = 0;
  error = 0;
  if (success == 0) {
    down_write(& s->lock);
    __invalidate_snapshot(s, -5);
    error = 1;
    goto out;
  } else {
  }
  e = alloc_completed_exception();
  if ((unsigned long )e == (unsigned long )((struct dm_exception *)0)) {
    down_write(& s->lock);
    __invalidate_snapshot(s, -12);
    error = 1;
    goto out;
  } else {
  }
  *e = pe->e;
  down_write(& s->lock);
  if (s->valid == 0) {
    free_completed_exception(e);
    error = 1;
    goto out;
  } else {
  }
  __check_for_conflicting_io(s, pe->e.old_chunk);
  dm_insert_exception(& s->complete, e);
  out:
  dm_remove_exception(& pe->e);
  snapshot_bios = bio_list_get(& pe->snapshot_bios);
  origin_bios = bio_list_get(& pe->origin_bios);
  full_bio = pe->full_bio;
  if ((unsigned long )full_bio != (unsigned long )((struct bio *)0)) {
    full_bio->bi_end_io = pe->full_bio_end_io;
    full_bio->bi_private = pe->full_bio_private;
  } else {
  }
  free_pending_exception(pe);
  increment_pending_exceptions_done_count();
  up_write(& s->lock);
  if (error != 0) {
    if ((unsigned long )full_bio != (unsigned long )((struct bio *)0)) {
      bio_endio(full_bio, -5);
    } else {
    }
    error_bios(snapshot_bios);
  } else {
    if ((unsigned long )full_bio != (unsigned long )((struct bio *)0)) {
      bio_endio(full_bio, 0);
    } else {
    }
    flush_bios(snapshot_bios);
  }
  retry_origin_bios(s, origin_bios);
  return;
}
}
static void commit_callback(void *context , int success )
{ struct dm_snap_pending_exception *pe ;
  {
  pe = (struct dm_snap_pending_exception *)context;
  pending_complete(pe, success);
  return;
}
}
static void copy_callback(int read_err , unsigned long write_err , void *context )
{ struct dm_snap_pending_exception *pe ;
  struct dm_snapshot *s ;
  {
  pe = (struct dm_snap_pending_exception *)context;
  s = pe->snap;
  if (read_err != 0 || write_err != 0UL) {
    pending_complete(pe, 0);
  } else {
    (*(((s->store)->type)->commit_exception))(s->store, & pe->e, & commit_callback,
                                              (void *)pe);
  }
  return;
}
}
static void start_copy(struct dm_snap_pending_exception *pe )
{ struct dm_snapshot *s ;
  struct dm_io_region src ;
  struct dm_io_region dest ;
  struct block_device *bdev ;
  sector_t dev_size ;
  unsigned long _min1 ;
  sector_t _min2 ;
  unsigned long tmp ;
  {
  s = pe->snap;
  bdev = (s->origin)->bdev;
  dev_size = get_dev_size(bdev);
  src.bdev = bdev;
  src.sector = chunk_to_sector(s->store, pe->e.old_chunk);
  _min1 = (unsigned long )(s->store)->chunk_size;
  _min2 = dev_size - src.sector;
  if (_min1 < _min2) {
    tmp = _min1;
  } else {
    tmp = _min2;
  }
  src.count = tmp;
  dest.bdev = (s->cow)->bdev;
  dest.sector = chunk_to_sector(s->store, pe->e.new_chunk);
  dest.count = src.count;
  dm_kcopyd_copy(s->kcopyd_client, & src, 1U, & dest, 0U, & copy_callback, (void *)pe);
  return;
}
}
static void full_bio_end_io(struct bio *bio , int error )
{ void *callback_data ;
  {
  callback_data = bio->bi_private;
  dm_kcopyd_do_callback(callback_data, 0, error != 0);
  return;
}
}
static void start_full_bio(struct dm_snap_pending_exception *pe , struct bio *bio )
{ struct dm_snapshot *s ;
  void *callback_data ;
  {
  s = pe->snap;
  pe->full_bio = bio;
  pe->full_bio_end_io = bio->bi_end_io;
  pe->full_bio_private = bio->bi_private;
  callback_data = dm_kcopyd_prepare_callback(s->kcopyd_client, & copy_callback, (void *)pe);
  bio->bi_end_io = & full_bio_end_io;
  bio->bi_private = callback_data;
  generic_make_request(bio);
  return;
}
}
static struct dm_snap_pending_exception *__lookup_pending_exception(struct dm_snapshot *s ,
                                                                    chunk_t chunk )
{ struct dm_exception *e ;
  struct dm_exception *tmp ;
  struct dm_exception const *__mptr ;
  {
  tmp = dm_lookup_exception(& s->pending, chunk);
  e = tmp;
  if ((unsigned long )e == (unsigned long )((struct dm_exception *)0)) {
    return (0);
  } else {
  }
  __mptr = (struct dm_exception const *)e;
  return ((struct dm_snap_pending_exception *)__mptr);
}
}
static struct dm_snap_pending_exception *__find_pending_exception(struct dm_snapshot *s ,
                                                                  struct dm_snap_pending_exception *pe ,
                                                                  chunk_t chunk )
{ struct dm_snap_pending_exception *pe2 ;
  int tmp ;
  {
  pe2 = __lookup_pending_exception(s, chunk);
  if ((unsigned long )pe2 != (unsigned long )((struct dm_snap_pending_exception *)0)) {
    free_pending_exception(pe);
    return (pe2);
  } else {
  }
  pe->e.old_chunk = chunk;
  bio_list_init(& pe->origin_bios);
  bio_list_init(& pe->snapshot_bios);
  pe->started = 0;
  pe->full_bio = 0;
  tmp = (*(((s->store)->type)->prepare_exception))(s->store, & pe->e);
  if (tmp != 0) {
    free_pending_exception(pe);
    return (0);
  } else {
  }
  dm_insert_exception(& s->pending, & pe->e);
  return (pe);
}
}
static void remap_exception(struct dm_snapshot *s , struct dm_exception *e , struct bio *bio ,
                            chunk_t chunk )
{ chunk_t tmp ;
  sector_t tmp___0 ;
  {
  bio->bi_bdev = (s->cow)->bdev;
  tmp = dm_chunk_number(e->new_chunk);
  tmp___0 = chunk_to_sector(s->store, tmp + (chunk - e->old_chunk));
  bio->bi_sector = tmp___0 + (bio->bi_sector & (sector_t )(s->store)->chunk_mask);
  return;
}
}
static int snapshot_map(struct dm_target *ti , struct bio *bio )
{ struct dm_exception *e ;
  struct dm_snapshot *s ;
  int r ;
  chunk_t chunk ;
  struct dm_snap_pending_exception *pe ;
  {
  s = (struct dm_snapshot *)ti->private;
  r = 1;
  pe = 0;
  init_tracked_chunk(bio);
  if ((bio->bi_rw & 4096UL) != 0UL) {
    bio->bi_bdev = (s->cow)->bdev;
    return (1);
  } else {
  }
  chunk = sector_to_chunk(s->store, bio->bi_sector);
  if (s->valid == 0) {
    return (-5);
  } else {
  }
  down_write(& s->lock);
  if (s->valid == 0) {
    r = -5;
    goto out_unlock;
  } else {
  }
  e = dm_lookup_exception(& s->complete, chunk);
  if ((unsigned long )e != (unsigned long )((struct dm_exception *)0)) {
    remap_exception(s, e, bio, chunk);
    goto out_unlock;
  } else {
  }
  if ((bio->bi_rw & 8193UL) == 1UL) {
    pe = __lookup_pending_exception(s, chunk);
    if ((unsigned long )pe == (unsigned long )((struct dm_snap_pending_exception *)0)) {
      up_write(& s->lock);
      pe = alloc_pending_exception(s);
      down_write(& s->lock);
      if (s->valid == 0) {
        free_pending_exception(pe);
        r = -5;
        goto out_unlock;
      } else {
      }
      e = dm_lookup_exception(& s->complete, chunk);
      if ((unsigned long )e != (unsigned long )((struct dm_exception *)0)) {
        free_pending_exception(pe);
        remap_exception(s, e, bio, chunk);
        goto out_unlock;
      } else {
      }
      pe = __find_pending_exception(s, pe, chunk);
      if ((unsigned long )pe == (unsigned long )((struct dm_snap_pending_exception *)0)) {
        __invalidate_snapshot(s, -12);
        r = -5;
        goto out_unlock;
      } else {
      }
    } else {
    }
    remap_exception(s, & pe->e, bio, chunk);
    r = 0;
    if (pe->started == 0 && bio->bi_size == (s->store)->chunk_size << 9) {
      pe->started = 1;
      up_write(& s->lock);
      start_full_bio(pe, bio);
      goto out;
    } else {
    }
    bio_list_add(& pe->snapshot_bios, bio);
    if (pe->started == 0) {
      pe->started = 1;
      up_write(& s->lock);
      start_copy(pe);
      goto out;
    } else {
    }
  } else {
    bio->bi_bdev = (s->origin)->bdev;
    track_chunk(s, bio, chunk);
  }
  out_unlock:
  up_write(& s->lock);
  out: ;
  return (r);
}
}
static int snapshot_merge_map(struct dm_target *ti , struct bio *bio )
{ struct dm_exception *e ;
  struct dm_snapshot *s ;
  int r ;
  chunk_t chunk ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  s = (struct dm_snapshot *)ti->private;
  r = 1;
  init_tracked_chunk(bio);
  if ((bio->bi_rw & 4096UL) != 0UL) {
    tmp = dm_bio_get_target_request_nr((struct bio const *)bio);
    if (tmp == 0U) {
      bio->bi_bdev = (s->origin)->bdev;
    } else {
      bio->bi_bdev = (s->cow)->bdev;
    }
    return (1);
  } else {
  }
  chunk = sector_to_chunk(s->store, bio->bi_sector);
  down_write(& s->lock);
  if (s->valid == 0) {
    goto redirect_to_origin;
  } else {
  }
  e = dm_lookup_exception(& s->complete, chunk);
  if ((unsigned long )e != (unsigned long )((struct dm_exception *)0)) {
    if (((bio->bi_rw & 8193UL) == 1UL && s->first_merging_chunk <= chunk) && s->first_merging_chunk + (chunk_t )s->num_merging_chunks > chunk) {
      bio->bi_bdev = (s->origin)->bdev;
      bio_list_add(& s->bios_queued_during_merge, bio);
      r = 0;
      goto out_unlock;
    } else {
    }
    remap_exception(s, e, bio, chunk);
    if ((bio->bi_rw & 8193UL) == 1UL) {
      track_chunk(s, bio, chunk);
    } else {
    }
    goto out_unlock;
  } else {
  }
  redirect_to_origin:
  bio->bi_bdev = (s->origin)->bdev;
  if ((bio->bi_rw & 8193UL) == 1UL) {
    up_write(& s->lock);
    tmp___0 = do_origin(s->origin, bio);
    return (tmp___0);
  } else {
  }
  out_unlock:
  up_write(& s->lock);
  return (r);
}
}
static int snapshot_end_io(struct dm_target *ti , struct bio *bio , int error )
{ struct dm_snapshot *s ;
  bool tmp ;
  {
  s = (struct dm_snapshot *)ti->private;
  tmp = is_bio_tracked(bio);
  if ((int )tmp) {
    stop_tracking_chunk(s, bio);
  } else {
  }
  return (0);
}
}
static void snapshot_merge_presuspend(struct dm_target *ti )
{ struct dm_snapshot *s ;
  {
  s = (struct dm_snapshot *)ti->private;
  stop_merge(s);
  return;
}
}
static int snapshot_preresume(struct dm_target *ti )
{ int r ;
  struct dm_snapshot *s ;
  struct dm_snapshot *snap_src ;
  struct dm_snapshot *snap_dest ;
  int tmp ;
  {
  r = 0;
  s = (struct dm_snapshot *)ti->private;
  snap_src = 0;
  snap_dest = 0;
  down_read(& _origins_lock);
  __find_snapshots_sharing_cow(s, & snap_src, & snap_dest, 0);
  if ((unsigned long )snap_src != (unsigned long )((struct dm_snapshot *)0) && (unsigned long )snap_dest != (unsigned long )((struct dm_snapshot *)0)) {
    down_read(& snap_src->lock);
    if ((unsigned long )s == (unsigned long )snap_src) {
      printk("\vdevice-mapper: snapshots: Unable to resume snapshot source until handover completes.\n");
      r = -22;
    } else {
      tmp = dm_suspended(snap_src->ti);
      if (tmp == 0) {
        printk("\vdevice-mapper: snapshots: Unable to perform snapshot handover until source is suspended.\n");
        r = -22;
      } else {
      }
    }
    up_read(& snap_src->lock);
  } else {
  }
  up_read(& _origins_lock);
  return (r);
}
}
static void snapshot_resume(struct dm_target *ti )
{ struct dm_snapshot *s ;
  struct dm_snapshot *snap_src ;
  struct dm_snapshot *snap_dest ;
  {
  s = (struct dm_snapshot *)ti->private;
  snap_src = 0;
  snap_dest = 0;
  down_read(& _origins_lock);
  __find_snapshots_sharing_cow(s, & snap_src, & snap_dest, 0);
  if ((unsigned long )snap_src != (unsigned long )((struct dm_snapshot *)0) && (unsigned long )snap_dest != (unsigned long )((struct dm_snapshot *)0)) {
    down_write(& snap_src->lock);
    down_write_nested(& snap_dest->lock, 1);
    __handover_exceptions(snap_src, snap_dest);
    up_write(& snap_dest->lock);
    up_write(& snap_src->lock);
  } else {
  }
  up_read(& _origins_lock);
  reregister_snapshot(s);
  down_write(& s->lock);
  s->active = 1;
  up_write(& s->lock);
  return;
}
}
static uint32_t get_origin_minimum_chunksize(struct block_device *bdev )
{ uint32_t min_chunksize ;
  struct origin *tmp ;
  {
  down_read(& _origins_lock);
  tmp = __lookup_origin(bdev);
  min_chunksize = __minimum_chunk_size(tmp);
  up_read(& _origins_lock);
  return (min_chunksize);
}
}
static void snapshot_merge_resume(struct dm_target *ti )
{ struct dm_snapshot *s ;
  {
  s = (struct dm_snapshot *)ti->private;
  snapshot_resume(ti);
  ti->max_io_len = get_origin_minimum_chunksize((s->origin)->bdev);
  start_merge(s);
  return;
}
}
static int snapshot_status(struct dm_target *ti , status_type_t type , unsigned int status_flags ,
                           char *result , unsigned int maxlen )
{ unsigned int sz ;
  struct dm_snapshot *snap ;
  int tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  sector_t total_sectors ;
  sector_t sectors_allocated ;
  sector_t metadata_sectors ;
  int tmp___3 ;
  unsigned int tmp___4 ;
  int tmp___5 ;
  unsigned int tmp___6 ;
  int tmp___7 ;
  unsigned int tmp___8 ;
  {
  sz = 0U;
  snap = (struct dm_snapshot *)ti->private;
  switch ((unsigned int )type) {
  case 0:
  down_write(& snap->lock);
  if (snap->valid == 0) {
    if (sz < maxlen) {
      tmp = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), "Invalid");
      tmp___0 = (unsigned int )tmp;
    } else {
      tmp___0 = 0U;
    }
    sz = tmp___0 + sz;
  } else
  if (snap->merge_failed != 0) {
    if (sz < maxlen) {
      tmp___1 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), "Merge failed");
      tmp___2 = (unsigned int )tmp___1;
    } else {
      tmp___2 = 0U;
    }
    sz = tmp___2 + sz;
  } else
  if ((unsigned long )((snap->store)->type)->usage != (unsigned long )((void (*)(struct dm_exception_store * ,
                                                                                 sector_t * ,
                                                                                 sector_t * ,
                                                                                 sector_t * ))0)) {
    (*(((snap->store)->type)->usage))(snap->store, & total_sectors, & sectors_allocated,
                                      & metadata_sectors);
    if (sz < maxlen) {
      tmp___3 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), "%llu/%llu %llu",
                          (unsigned long long )sectors_allocated, (unsigned long long )total_sectors,
                          (unsigned long long )metadata_sectors);
      tmp___4 = (unsigned int )tmp___3;
    } else {
      tmp___4 = 0U;
    }
    sz = tmp___4 + sz;
  } else {
    if (sz < maxlen) {
      tmp___5 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), "Unknown");
      tmp___6 = (unsigned int )tmp___5;
    } else {
      tmp___6 = 0U;
    }
    sz = tmp___6 + sz;
  }
  up_write(& snap->lock);
  goto ldv_30139;
  case 1: ;
  if (sz < maxlen) {
    tmp___7 = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), "%s %s",
                        (char *)(& (snap->origin)->name), (char *)(& (snap->cow)->name));
    tmp___8 = (unsigned int )tmp___7;
  } else {
    tmp___8 = 0U;
  }
  sz = tmp___8 + sz;
  (*(((snap->store)->type)->status))(snap->store, type, result + (unsigned long )sz,
                                     maxlen - sz);
  goto ldv_30139;
  }
  ldv_30139: ;
  return (0);
}
}
static int snapshot_iterate_devices(struct dm_target *ti , int (*fn)(struct dm_target * ,
                                                                     struct dm_dev * ,
                                                                     sector_t , sector_t ,
                                                                     void * ) , void *data )
{ struct dm_snapshot *snap ;
  int r ;
  sector_t tmp ;
  {
  snap = (struct dm_snapshot *)ti->private;
  r = (*fn)(ti, snap->origin, 0UL, ti->len, data);
  if (r == 0) {
    tmp = get_dev_size((snap->cow)->bdev);
    r = (*fn)(ti, snap->cow, 0UL, tmp, data);
  } else {
  }
  return (r);
}
}
static int __origin_write(struct list_head *snapshots , sector_t sector , struct bio *bio )
{ int r ;
  struct dm_snapshot *snap ;
  struct dm_exception *e ;
  struct dm_snap_pending_exception *pe ;
  struct dm_snap_pending_exception *pe_to_start_now ;
  struct dm_snap_pending_exception *pe_to_start_last ;
  chunk_t chunk ;
  struct list_head const *__mptr ;
  sector_t tmp ;
  struct list_head const *__mptr___0 ;
  {
  r = 1;
  pe_to_start_now = 0;
  pe_to_start_last = 0;
  __mptr = (struct list_head const *)snapshots->next;
  snap = (struct dm_snapshot *)__mptr + 0xffffffffffffff58UL;
  goto ldv_30167;
  ldv_30166: ;
  if ((unsigned long )((snap->ti)->type)->name == (unsigned long )((char const *)(& dm_snapshot_merge_target_name))) {
    goto ldv_30164;
  } else {
  }
  down_write(& snap->lock);
  if (snap->valid == 0 || snap->active == 0) {
    goto next_snapshot;
  } else {
  }
  tmp = dm_table_get_size((snap->ti)->table);
  if (tmp <= sector) {
    goto next_snapshot;
  } else {
  }
  chunk = sector_to_chunk(snap->store, sector);
  e = dm_lookup_exception(& snap->complete, chunk);
  if ((unsigned long )e != (unsigned long )((struct dm_exception *)0)) {
    goto next_snapshot;
  } else {
  }
  pe = __lookup_pending_exception(snap, chunk);
  if ((unsigned long )pe == (unsigned long )((struct dm_snap_pending_exception *)0)) {
    up_write(& snap->lock);
    pe = alloc_pending_exception(snap);
    down_write(& snap->lock);
    if (snap->valid == 0) {
      free_pending_exception(pe);
      goto next_snapshot;
    } else {
    }
    e = dm_lookup_exception(& snap->complete, chunk);
    if ((unsigned long )e != (unsigned long )((struct dm_exception *)0)) {
      free_pending_exception(pe);
      goto next_snapshot;
    } else {
    }
    pe = __find_pending_exception(snap, pe, chunk);
    if ((unsigned long )pe == (unsigned long )((struct dm_snap_pending_exception *)0)) {
      __invalidate_snapshot(snap, -12);
      goto next_snapshot;
    } else {
    }
  } else {
  }
  r = 0;
  if ((unsigned long )bio != (unsigned long )((struct bio *)0)) {
    bio_list_add(& pe->origin_bios, bio);
    bio = 0;
    if (pe->started == 0) {
      pe->started = 1;
      pe_to_start_last = pe;
    } else {
    }
  } else {
  }
  if (pe->started == 0) {
    pe->started = 1;
    pe_to_start_now = pe;
  } else {
  }
  next_snapshot:
  up_write(& snap->lock);
  if ((unsigned long )pe_to_start_now != (unsigned long )((struct dm_snap_pending_exception *)0)) {
    start_copy(pe_to_start_now);
    pe_to_start_now = 0;
  } else {
  }
  ldv_30164:
  __mptr___0 = (struct list_head const *)snap->list.next;
  snap = (struct dm_snapshot *)__mptr___0 + 0xffffffffffffff58UL;
  ldv_30167: ;
  if ((unsigned long )(& snap->list) != (unsigned long )snapshots) {
    goto ldv_30166;
  } else {
    goto ldv_30168;
  }
  ldv_30168: ;
  if ((unsigned long )pe_to_start_last != (unsigned long )((struct dm_snap_pending_exception *)0)) {
    start_copy(pe_to_start_last);
  } else {
  }
  return (r);
}
}
static int do_origin(struct dm_dev *origin , struct bio *bio )
{ struct origin *o ;
  int r ;
  {
  r = 1;
  down_read(& _origins_lock);
  o = __lookup_origin(origin->bdev);
  if ((unsigned long )o != (unsigned long )((struct origin *)0)) {
    r = __origin_write(& o->snapshots, bio->bi_sector, bio);
  } else {
  }
  up_read(& _origins_lock);
  return (r);
}
}
static int origin_write_extent(struct dm_snapshot *merging_snap , sector_t sector ,
                               unsigned int size )
{ int must_wait ;
  sector_t n ;
  struct origin *o ;
  int tmp ;
  {
  must_wait = 0;
  down_read(& _origins_lock);
  o = __lookup_origin((merging_snap->origin)->bdev);
  n = 0UL;
  goto ldv_30184;
  ldv_30183:
  tmp = __origin_write(& o->snapshots, sector + n, 0);
  if (tmp == 0) {
    must_wait = 1;
  } else {
  }
  n = (sector_t )(merging_snap->ti)->max_io_len + n;
  ldv_30184: ;
  if ((sector_t )size > n) {
    goto ldv_30183;
  } else {
    goto ldv_30185;
  }
  ldv_30185:
  up_read(& _origins_lock);
  return (must_wait);
}
}
static int origin_ctr(struct dm_target *ti , unsigned int argc , char **argv )
{ int r ;
  struct dm_dev *dev ;
  fmode_t tmp ;
  {
  if (argc != 1U) {
    ti->error = (char *)"origin: incorrect number of arguments";
    return (-22);
  } else {
  }
  tmp = dm_table_get_mode(ti->table);
  r = dm_get_device(ti, (char const *)*argv, tmp, & dev);
  if (r != 0) {
    ti->error = (char *)"Cannot get target device";
    return (r);
  } else {
  }
  ti->private = (void *)dev;
  ti->num_flush_requests = 1U;
  return (0);
}
}
static void origin_dtr(struct dm_target *ti )
{ struct dm_dev *dev ;
  {
  dev = (struct dm_dev *)ti->private;
  dm_put_device(ti, dev);
  return;
}
}
static int origin_map(struct dm_target *ti , struct bio *bio )
{ struct dm_dev *dev ;
  int tmp ;
  int tmp___0 ;
  {
  dev = (struct dm_dev *)ti->private;
  bio->bi_bdev = dev->bdev;
  if ((bio->bi_rw & 4096UL) != 0UL) {
    return (1);
  } else {
  }
  if ((bio->bi_rw & 8193UL) == 1UL) {
    tmp = do_origin(dev, bio);
    tmp___0 = tmp;
  } else {
    tmp___0 = 1;
  }
  return (tmp___0);
}
}
static void origin_resume(struct dm_target *ti )
{ struct dm_dev *dev ;
  {
  dev = (struct dm_dev *)ti->private;
  ti->max_io_len = get_origin_minimum_chunksize(dev->bdev);
  return;
}
}
static int origin_status(struct dm_target *ti , status_type_t type , unsigned int status_flags ,
                         char *result , unsigned int maxlen )
{ struct dm_dev *dev ;
  {
  dev = (struct dm_dev *)ti->private;
  switch ((unsigned int )type) {
  case 0:
  *result = 0;
  goto ldv_30215;
  case 1:
  snprintf(result, (size_t )maxlen, "%s", (char *)(& dev->name));
  goto ldv_30215;
  }
  ldv_30215: ;
  return (0);
}
}
static int origin_merge(struct dm_target *ti , struct bvec_merge_data *bvm , struct bio_vec *biovec ,
                        int max_size )
{ struct dm_dev *dev ;
  struct request_queue *q ;
  struct request_queue *tmp ;
  int _min1 ;
  int _min2 ;
  int tmp___0 ;
  int tmp___1 ;
  {
  dev = (struct dm_dev *)ti->private;
  tmp = bdev_get_queue(dev->bdev);
  q = tmp;
  if ((unsigned long )q->merge_bvec_fn == (unsigned long )((merge_bvec_fn *)0)) {
    return (max_size);
  } else {
  }
  bvm->bi_bdev = dev->bdev;
  _min1 = max_size;
  tmp___0 = (*(q->merge_bvec_fn))(q, bvm, biovec);
  _min2 = tmp___0;
  if (_min1 < _min2) {
    tmp___1 = _min1;
  } else {
    tmp___1 = _min2;
  }
  return (tmp___1);
}
}
static int origin_iterate_devices(struct dm_target *ti , int (*fn)(struct dm_target * ,
                                                                   struct dm_dev * ,
                                                                   sector_t , sector_t ,
                                                                   void * ) , void *data )
{ struct dm_dev *dev ;
  int tmp ;
  {
  dev = (struct dm_dev *)ti->private;
  tmp = (*fn)(ti, dev, 0UL, ti->len, data);
  return (tmp);
}
}
static struct target_type origin_target =
     {0ULL, "snapshot-origin", & __this_module, {1U, 8U, 0U}, & origin_ctr, & origin_dtr,
    & origin_map, 0, 0, 0, 0, 0, 0, & origin_resume, & origin_status, 0, 0, & origin_merge,
    0, & origin_iterate_devices, 0, {0, 0}};
static struct target_type snapshot_target =
     {0ULL, "snapshot", & __this_module, {1U, 11U, 0U}, & snapshot_ctr, & snapshot_dtr,
    & snapshot_map, 0, & snapshot_end_io, 0, 0, 0, & snapshot_preresume, & snapshot_resume,
    & snapshot_status, 0, 0, 0, 0, & snapshot_iterate_devices, 0, {0, 0}};
static struct target_type merge_target =
     {0ULL, (char const *)(& dm_snapshot_merge_target_name), & __this_module, {1U,
                                                                               2U,
                                                                               0U},
    & snapshot_ctr, & snapshot_dtr, & snapshot_merge_map, 0, & snapshot_end_io, 0,
    & snapshot_merge_presuspend, 0, & snapshot_preresume, & snapshot_merge_resume,
    & snapshot_status, 0, 0, 0, 0, & snapshot_iterate_devices, 0, {0, 0}};
static int dm_snapshot_init(void)
{ int r ;
  {
  r = dm_exception_store_init();
  if (r != 0) {
    printk("\vdevice-mapper: snapshots: Failed to initialize exception stores\n");
    return (r);
  } else {
  }
  r = dm_register_target(& snapshot_target);
  if (r < 0) {
    printk("\vdevice-mapper: snapshots: snapshot target register failed %d\n", r);
    goto bad_register_snapshot_target;
  } else {
  }
  r = dm_register_target(& origin_target);
  if (r < 0) {
    printk("\vdevice-mapper: snapshots: Origin target register failed %d\n", r);
    goto bad_register_origin_target;
  } else {
  }
  r = dm_register_target(& merge_target);
  if (r < 0) {
    printk("\vdevice-mapper: snapshots: Merge target register failed %d\n", r);
    goto bad_register_merge_target;
  } else {
  }
  r = init_origin_hash();
  if (r != 0) {
    printk("\vdevice-mapper: snapshots: init_origin_hash failed.\n");
    goto bad_origin_hash;
  } else {
  }
  exception_cache = kmem_cache_create("dm_exception", 32UL, 8UL, 0UL, 0);
  if ((unsigned long )exception_cache == (unsigned long )((struct kmem_cache *)0)) {
    printk("\vdevice-mapper: snapshots: Couldn\'t create exception cache.\n");
    r = -12;
    goto bad_exception_cache;
  } else {
  }
  pending_cache = kmem_cache_create("dm_snap_pending_exception", 104UL, 8UL, 0UL,
                                    0);
  if ((unsigned long )pending_cache == (unsigned long )((struct kmem_cache *)0)) {
    printk("\vdevice-mapper: snapshots: Couldn\'t create pending cache.\n");
    r = -12;
    goto bad_pending_cache;
  } else {
  }
  return (0);
  bad_pending_cache:
  kmem_cache_destroy(exception_cache);
  bad_exception_cache:
  exit_origin_hash();
  bad_origin_hash:
  dm_unregister_target(& merge_target);
  bad_register_merge_target:
  dm_unregister_target(& origin_target);
  bad_register_origin_target:
  dm_unregister_target(& snapshot_target);
  bad_register_snapshot_target:
  dm_exception_store_exit();
  return (r);
}
}
static void dm_snapshot_exit(void)
{
  {
  dm_unregister_target(& snapshot_target);
  dm_unregister_target(& origin_target);
  dm_unregister_target(& merge_target);
  exit_origin_hash();
  kmem_cache_destroy(pending_cache);
  kmem_cache_destroy(exception_cache);
  dm_exception_store_exit();
  return;
}
}
char *ldvarg18 ;
int (*ldvarg51)(struct dm_target * , struct dm_dev * , sector_t , sector_t , void * ) ;
struct dm_target *ldvarg23 ;
struct bio *ldvarg43 ;
int ldvarg42 ;
char **ldvarg12 ;
struct dm_target *ldvarg56 ;
extern int ldv_origin_target_presuspend(void) ;
void *ldvarg50 ;
unsigned int ldvarg46 ;
status_type_t ldvarg58 ;
unsigned int ldvarg53 ;
struct dm_target *ldvarg64 ;
char *ldvarg44 ;
struct dm_target *merge_target_group1 ;
int ldv_retval_origin_ctr ;
void *ldvarg24 ;
extern int ldv_origin_target_postsuspend(void) ;
char **ldvarg38 ;
extern int ldv_merge_target_postsuspend(void) ;
int ldvarg16 ;
unsigned int ldvarg48 ;
struct bio *ldvarg14 ;
int ldv_retval_snapshot_preresume ;
void ldv_check_final_state(void) ;
extern int ldv_snapshot_target_postsuspend(void) ;
status_type_t ldvarg47 ;
unsigned int ldvarg39 ;
unsigned int ldvarg20 ;
int ldvarg60 ;
struct dm_target *ldvarg41 ;
unsigned int ldvarg59 ;
struct dm_target *ldvarg49 ;
struct bio_vec *ldvarg62 ;
void *ldvarg65 ;
unsigned int ldvarg57 ;
void ldv_initialize(void) ;
unsigned int ldvarg13 ;
int (*ldvarg66)(struct dm_target * , struct dm_dev * , sector_t , sector_t , void * ) ;
char *ldvarg55 ;
struct bio *ldvarg40 ;
struct dm_target *origin_target_group1 ;
struct dm_target *ldvarg45 ;
struct bvec_merge_data *ldvarg63 ;
struct dm_target *snapshot_target_group1 ;
int ldv_retval_snapshot_ctr ;
int ldv_retval_dm_snapshot_init ;
int ldv_retval_ldv_origin_target_preresume ;
struct dm_target *ldvarg15 ;
status_type_t ldvarg21 ;
struct bio *ldvarg54 ;
struct dm_target *ldvarg61 ;
struct bio *ldvarg17 ;
int (*ldvarg25)(struct dm_target * , struct dm_dev * , sector_t , sector_t , void * ) ;
extern int ldv_origin_target_preresume(void) ;
unsigned int ldvarg22 ;
extern int ldv_snapshot_target_presuspend(void) ;
struct dm_target *ldvarg19 ;
char **ldvarg52 ;
void ldv_main_exported_4(void) ;
void ldv_main_exported_5(void) ;
void ldv_main_exported_6(void) ;
void ldv_main_exported_7(void) ;
int main(void)
{ int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  ldv_initialize();
  ldv_state_variable_6 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_1 = 0;
  ldv_state_variable_4 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_5 = 0;
  ldv_30392:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    ldv_main_exported_6();
  } else {
  }
  goto ldv_30342;
  case 1: ;
  if (ldv_state_variable_3 != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (ldv_state_variable_3 == 4) {
      snapshot_iterate_devices(ldvarg23, ldvarg25, ldvarg24);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 1) {
      snapshot_iterate_devices(ldvarg23, ldvarg25, ldvarg24);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      snapshot_iterate_devices(ldvarg23, ldvarg25, ldvarg24);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      snapshot_iterate_devices(ldvarg23, ldvarg25, ldvarg24);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      snapshot_iterate_devices(ldvarg23, ldvarg25, ldvarg24);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_30345;
    case 1: ;
    if (ldv_state_variable_3 == 4) {
      snapshot_status(ldvarg19, ldvarg21, ldvarg20, ldvarg18, ldvarg22);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 1) {
      snapshot_status(ldvarg19, ldvarg21, ldvarg20, ldvarg18, ldvarg22);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      snapshot_status(ldvarg19, ldvarg21, ldvarg20, ldvarg18, ldvarg22);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      snapshot_status(ldvarg19, ldvarg21, ldvarg20, ldvarg18, ldvarg22);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      snapshot_status(ldvarg19, ldvarg21, ldvarg20, ldvarg18, ldvarg22);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_30345;
    case 2: ;
    if (ldv_state_variable_3 == 5) {
      snapshot_merge_resume(merge_target_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_30345;
    case 3: ;
    if (ldv_state_variable_3 == 4) {
      ldv_retval_snapshot_preresume = snapshot_preresume(merge_target_group1);
      if (ldv_retval_snapshot_preresume == 0) {
        ldv_state_variable_3 = 5;
      } else {
      }
    } else {
    }
    goto ldv_30345;
    case 4: ;
    if (ldv_state_variable_3 == 2) {
      snapshot_merge_presuspend(merge_target_group1);
      ldv_state_variable_3 = 3;
    } else {
    }
    goto ldv_30345;
    case 5: ;
    if (ldv_state_variable_3 == 4) {
      snapshot_end_io(ldvarg15, ldvarg17, ldvarg16);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 1) {
      snapshot_end_io(ldvarg15, ldvarg17, ldvarg16);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      snapshot_end_io(ldvarg15, ldvarg17, ldvarg16);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      snapshot_end_io(ldvarg15, ldvarg17, ldvarg16);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      snapshot_end_io(ldvarg15, ldvarg17, ldvarg16);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_30345;
    case 6: ;
    if (ldv_state_variable_3 == 4) {
      snapshot_merge_map(merge_target_group1, ldvarg14);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      snapshot_merge_map(merge_target_group1, ldvarg14);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      snapshot_merge_map(merge_target_group1, ldvarg14);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      snapshot_merge_map(merge_target_group1, ldvarg14);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_30345;
    case 7: ;
    if (ldv_state_variable_3 == 4) {
      snapshot_dtr(merge_target_group1);
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      snapshot_dtr(merge_target_group1);
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      snapshot_dtr(merge_target_group1);
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      snapshot_dtr(merge_target_group1);
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30345;
    case 8: ;
    if (ldv_state_variable_3 == 1) {
      ldv_retval_snapshot_ctr = snapshot_ctr(merge_target_group1, ldvarg13, ldvarg12);
      if (ldv_retval_snapshot_ctr == 0) {
        ldv_state_variable_3 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_30345;
    case 9: ;
    if (ldv_state_variable_3 == 3) {
      ldv_merge_target_postsuspend();
      ldv_state_variable_3 = 4;
    } else {
    }
    goto ldv_30345;
    default: ;
    goto ldv_30345;
    }
    ldv_30345: ;
  } else {
  }
  goto ldv_30342;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    ldv_main_exported_7();
  } else {
  }
  goto ldv_30342;
  case 3: ;
  if (ldv_state_variable_2 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_2 == 4) {
      snapshot_iterate_devices(ldvarg49, ldvarg51, ldvarg50);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      snapshot_iterate_devices(ldvarg49, ldvarg51, ldvarg50);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      snapshot_iterate_devices(ldvarg49, ldvarg51, ldvarg50);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      snapshot_iterate_devices(ldvarg49, ldvarg51, ldvarg50);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      snapshot_iterate_devices(ldvarg49, ldvarg51, ldvarg50);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_30359;
    case 1: ;
    if (ldv_state_variable_2 == 4) {
      snapshot_status(ldvarg45, ldvarg47, ldvarg46, ldvarg44, ldvarg48);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      snapshot_status(ldvarg45, ldvarg47, ldvarg46, ldvarg44, ldvarg48);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      snapshot_status(ldvarg45, ldvarg47, ldvarg46, ldvarg44, ldvarg48);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      snapshot_status(ldvarg45, ldvarg47, ldvarg46, ldvarg44, ldvarg48);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      snapshot_status(ldvarg45, ldvarg47, ldvarg46, ldvarg44, ldvarg48);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_30359;
    case 2: ;
    if (ldv_state_variable_2 == 5) {
      snapshot_resume(snapshot_target_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_30359;
    case 3: ;
    if (ldv_state_variable_2 == 4) {
      ldv_retval_snapshot_preresume = snapshot_preresume(snapshot_target_group1);
      if (ldv_retval_snapshot_preresume == 0) {
        ldv_state_variable_2 = 5;
      } else {
      }
    } else {
    }
    goto ldv_30359;
    case 4: ;
    if (ldv_state_variable_2 == 4) {
      snapshot_end_io(ldvarg41, ldvarg43, ldvarg42);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      snapshot_end_io(ldvarg41, ldvarg43, ldvarg42);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      snapshot_end_io(ldvarg41, ldvarg43, ldvarg42);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      snapshot_end_io(ldvarg41, ldvarg43, ldvarg42);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      snapshot_end_io(ldvarg41, ldvarg43, ldvarg42);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_30359;
    case 5: ;
    if (ldv_state_variable_2 == 4) {
      snapshot_map(snapshot_target_group1, ldvarg40);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      snapshot_map(snapshot_target_group1, ldvarg40);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      snapshot_map(snapshot_target_group1, ldvarg40);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      snapshot_map(snapshot_target_group1, ldvarg40);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_30359;
    case 6: ;
    if (ldv_state_variable_2 == 4) {
      snapshot_dtr(snapshot_target_group1);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      snapshot_dtr(snapshot_target_group1);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      snapshot_dtr(snapshot_target_group1);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      snapshot_dtr(snapshot_target_group1);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30359;
    case 7: ;
    if (ldv_state_variable_2 == 1) {
      ldv_retval_snapshot_ctr = snapshot_ctr(snapshot_target_group1, ldvarg39, ldvarg38);
      if (ldv_retval_snapshot_ctr == 0) {
        ldv_state_variable_2 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_30359;
    case 8: ;
    if (ldv_state_variable_2 == 2) {
      ldv_snapshot_target_presuspend();
      ldv_state_variable_2 = 3;
    } else {
    }
    goto ldv_30359;
    case 9: ;
    if (ldv_state_variable_2 == 3) {
      ldv_snapshot_target_postsuspend();
      ldv_state_variable_2 = 4;
    } else {
    }
    goto ldv_30359;
    default: ;
    goto ldv_30359;
    }
    ldv_30359: ;
  } else {
  }
  goto ldv_30342;
  case 4: ;
  if (ldv_state_variable_1 != 0) {
    tmp___2 = __VERIFIER_nondet_int();
    switch (tmp___2) {
    case 0: ;
    if (ldv_state_variable_1 == 4) {
      origin_iterate_devices(ldvarg64, ldvarg66, ldvarg65);
      ldv_state_variable_1 = 4;
    } else {
    }
    if (ldv_state_variable_1 == 1) {
      origin_iterate_devices(ldvarg64, ldvarg66, ldvarg65);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 3) {
      origin_iterate_devices(ldvarg64, ldvarg66, ldvarg65);
      ldv_state_variable_1 = 3;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      origin_iterate_devices(ldvarg64, ldvarg66, ldvarg65);
      ldv_state_variable_1 = 2;
    } else {
    }
    if (ldv_state_variable_1 == 5) {
      origin_iterate_devices(ldvarg64, ldvarg66, ldvarg65);
      ldv_state_variable_1 = 5;
    } else {
    }
    goto ldv_30372;
    case 1: ;
    if (ldv_state_variable_1 == 4) {
      origin_merge(ldvarg61, ldvarg63, ldvarg62, ldvarg60);
      ldv_state_variable_1 = 4;
    } else {
    }
    if (ldv_state_variable_1 == 1) {
      origin_merge(ldvarg61, ldvarg63, ldvarg62, ldvarg60);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 3) {
      origin_merge(ldvarg61, ldvarg63, ldvarg62, ldvarg60);
      ldv_state_variable_1 = 3;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      origin_merge(ldvarg61, ldvarg63, ldvarg62, ldvarg60);
      ldv_state_variable_1 = 2;
    } else {
    }
    if (ldv_state_variable_1 == 5) {
      origin_merge(ldvarg61, ldvarg63, ldvarg62, ldvarg60);
      ldv_state_variable_1 = 5;
    } else {
    }
    goto ldv_30372;
    case 2: ;
    if (ldv_state_variable_1 == 4) {
      origin_status(ldvarg56, ldvarg58, ldvarg57, ldvarg55, ldvarg59);
      ldv_state_variable_1 = 4;
    } else {
    }
    if (ldv_state_variable_1 == 1) {
      origin_status(ldvarg56, ldvarg58, ldvarg57, ldvarg55, ldvarg59);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 3) {
      origin_status(ldvarg56, ldvarg58, ldvarg57, ldvarg55, ldvarg59);
      ldv_state_variable_1 = 3;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      origin_status(ldvarg56, ldvarg58, ldvarg57, ldvarg55, ldvarg59);
      ldv_state_variable_1 = 2;
    } else {
    }
    if (ldv_state_variable_1 == 5) {
      origin_status(ldvarg56, ldvarg58, ldvarg57, ldvarg55, ldvarg59);
      ldv_state_variable_1 = 5;
    } else {
    }
    goto ldv_30372;
    case 3: ;
    if (ldv_state_variable_1 == 5) {
      origin_resume(origin_target_group1);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_30372;
    case 4: ;
    if (ldv_state_variable_1 == 4) {
      origin_map(origin_target_group1, ldvarg54);
      ldv_state_variable_1 = 4;
    } else {
    }
    if (ldv_state_variable_1 == 3) {
      origin_map(origin_target_group1, ldvarg54);
      ldv_state_variable_1 = 3;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      origin_map(origin_target_group1, ldvarg54);
      ldv_state_variable_1 = 2;
    } else {
    }
    if (ldv_state_variable_1 == 5) {
      origin_map(origin_target_group1, ldvarg54);
      ldv_state_variable_1 = 5;
    } else {
    }
    goto ldv_30372;
    case 5: ;
    if (ldv_state_variable_1 == 4) {
      origin_dtr(origin_target_group1);
      ldv_state_variable_1 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_1 == 3) {
      origin_dtr(origin_target_group1);
      ldv_state_variable_1 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      origin_dtr(origin_target_group1);
      ldv_state_variable_1 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_1 == 5) {
      origin_dtr(origin_target_group1);
      ldv_state_variable_1 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_30372;
    case 6: ;
    if (ldv_state_variable_1 == 1) {
      ldv_retval_origin_ctr = origin_ctr(origin_target_group1, ldvarg53, ldvarg52);
      if (ldv_retval_origin_ctr == 0) {
        ldv_state_variable_1 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_30372;
    case 7: ;
    if (ldv_state_variable_1 == 2) {
      ldv_origin_target_presuspend();
      ldv_state_variable_1 = 3;
    } else {
    }
    goto ldv_30372;
    case 8: ;
    if (ldv_state_variable_1 == 3) {
      ldv_origin_target_postsuspend();
      ldv_state_variable_1 = 4;
    } else {
    }
    goto ldv_30372;
    case 9: ;
    if (ldv_state_variable_1 == 4) {
      ldv_retval_ldv_origin_target_preresume = ldv_origin_target_preresume();
      if (ldv_retval_ldv_origin_target_preresume == 0) {
        ldv_state_variable_1 = 5;
      } else {
      }
    } else {
    }
    goto ldv_30372;
    default: ;
    goto ldv_30372;
    }
    ldv_30372: ;
  } else {
  }
  goto ldv_30342;
  case 5: ;
  if (ldv_state_variable_4 != 0) {
    ldv_main_exported_4();
  } else {
  }
  goto ldv_30342;
  case 6: ;
  if (ldv_state_variable_0 != 0) {
    tmp___3 = __VERIFIER_nondet_int();
    switch (tmp___3) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      dm_snapshot_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_30387;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_dm_snapshot_init = dm_snapshot_init();
      if (ldv_retval_dm_snapshot_init == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_state_variable_2 = 1;
        ldv_state_variable_7 = 1;
        ldv_state_variable_3 = 1;
        ldv_state_variable_1 = 1;
        ldv_state_variable_4 = 1;
        ldv_state_variable_6 = 1;
      } else {
      }
      if (ldv_retval_dm_snapshot_init != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_30387;
    default: ;
    goto ldv_30387;
    }
    ldv_30387: ;
  } else {
  }
  goto ldv_30342;
  case 7: ;
  if (ldv_state_variable_5 != 0) {
    ldv_main_exported_5();
  } else {
  }
  goto ldv_30342;
  default: ;
  goto ldv_30342;
  }
  ldv_30342: ;
  goto ldv_30392;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_4(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_6(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___4 ldv_func_res ;
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
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static int ffs(int x )
{ int r ;
  {
  __asm__ ("bsfl %1,%0": "=r" (r): "rm" (x), "0" (-1));
  return (r + 1);
}
}
__inline static bool is_power_of_2(unsigned long n )
{
  {
  return ((bool )(n != 0UL && ((n - 1UL) & n) == 0UL));
}
}
extern int kstrtouint(char const * , unsigned int , unsigned int * ) ;
extern int strcmp(char const * , char const * ) ;
extern char *strrchr(char const * , int ) ;
extern char *kstrdup(char const * , gfp_t ) ;
int ldv_mutex_trylock_20(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_19(struct mutex *ldv_func_arg1 ) ;
__inline static unsigned short queue_logical_block_size(struct request_queue *q )
{ int retval ;
  {
  retval = 512;
  if ((unsigned long )q != (unsigned long )((struct request_queue *)0) && (unsigned int )q->limits.logical_block_size != 0U) {
    retval = (int )q->limits.logical_block_size;
  } else {
  }
  return ((unsigned short )retval);
}
}
__inline static unsigned short bdev_logical_block_size(struct block_device *bdev )
{ struct request_queue *tmp ;
  unsigned short tmp___0 ;
  {
  tmp = bdev_get_queue(bdev);
  tmp___0 = queue_logical_block_size(tmp);
  return (tmp___0);
}
}
int dm_exception_store_type_register(struct dm_exception_store_type *type ) ;
int dm_exception_store_type_unregister(struct dm_exception_store_type *type ) ;
int dm_exception_store_set_chunk_size(struct dm_exception_store *store , unsigned int chunk_size ,
                                      char **error ) ;
int dm_persistent_snapshot_init(void) ;
void dm_persistent_snapshot_exit(void) ;
int dm_transient_snapshot_init(void) ;
void dm_transient_snapshot_exit(void) ;
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
extern int __request_module(bool , char const * , ...) ;
extern bool try_module_get(struct module * ) ;
extern void module_put(struct module * ) ;
static struct list_head _exception_store_types = {& _exception_store_types, & _exception_store_types};
static spinlock_t _lock = {{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "_lock",
                                                               0, 0UL}}}};
static struct dm_exception_store_type *__find_exception_store_type(char const *name )
{ struct dm_exception_store_type *type ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)_exception_store_types.next;
  type = (struct dm_exception_store_type *)__mptr + 0xffffffffffffffa0UL;
  goto ldv_29441;
  ldv_29440:
  tmp = strcmp(name, type->name);
  if (tmp == 0) {
    return (type);
  } else {
  }
  __mptr___0 = (struct list_head const *)type->list.next;
  type = (struct dm_exception_store_type *)__mptr___0 + 0xffffffffffffffa0UL;
  ldv_29441: ;
  if ((unsigned long )(& type->list) != (unsigned long )(& _exception_store_types)) {
    goto ldv_29440;
  } else {
    goto ldv_29442;
  }
  ldv_29442: ;
  return (0);
}
}
static struct dm_exception_store_type *_get_exception_store_type(char const *name )
{ struct dm_exception_store_type *type ;
  bool tmp ;
  int tmp___0 ;
  {
  spin_lock(& _lock);
  type = __find_exception_store_type(name);
  if ((unsigned long )type != (unsigned long )((struct dm_exception_store_type *)0)) {
    tmp = try_module_get(type->module);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      type = 0;
    } else {
    }
  } else {
  }
  spin_unlock(& _lock);
  return (type);
}
}
static struct dm_exception_store_type *get_type(char const *type_name )
{ char *p ;
  char *type_name_dup ;
  struct dm_exception_store_type *type ;
  int tmp ;
  {
  type = _get_exception_store_type(type_name);
  if ((unsigned long )type != (unsigned long )((struct dm_exception_store_type *)0)) {
    return (type);
  } else {
  }
  type_name_dup = kstrdup(type_name, 208U);
  if ((unsigned long )type_name_dup == (unsigned long )((char *)0)) {
    printk("\vdevice-mapper: snapshot exception stores: No memory left to attempt load for \"%s\"\n",
           type_name);
    return (0);
  } else {
  }
  goto ldv_29455;
  ldv_29454:
  p = strrchr((char const *)type_name_dup, 45);
  if ((unsigned long )p == (unsigned long )((char *)0)) {
    goto ldv_29453;
  } else {
  }
  *p = 0;
  ldv_29455:
  tmp = __request_module(1, "dm-exstore-%s", type_name_dup);
  if (tmp != 0) {
    goto ldv_29454;
  } else {
    type = _get_exception_store_type(type_name);
    if ((unsigned long )type == (unsigned long )((struct dm_exception_store_type *)0)) {
      goto ldv_29454;
    } else {
      goto ldv_29453;
    }
  }
  ldv_29453: ;
  if ((unsigned long )type == (unsigned long )((struct dm_exception_store_type *)0)) {
    printk("\fdevice-mapper: snapshot exception stores: Module for exstore type \"%s\" not found.\n",
           type_name);
  } else {
  }
  kfree((void const *)type_name_dup);
  return (type);
}
}
static void put_type(struct dm_exception_store_type *type )
{
  {
  spin_lock(& _lock);
  module_put(type->module);
  spin_unlock(& _lock);
  return;
}
}
int dm_exception_store_type_register(struct dm_exception_store_type *type )
{ int r ;
  struct dm_exception_store_type *tmp ;
  {
  r = 0;
  spin_lock(& _lock);
  tmp = __find_exception_store_type(type->name);
  if ((unsigned long )tmp == (unsigned long )((struct dm_exception_store_type *)0)) {
    list_add(& type->list, & _exception_store_types);
  } else {
    r = -17;
  }
  spin_unlock(& _lock);
  return (r);
}
}
int dm_exception_store_type_unregister(struct dm_exception_store_type *type )
{ struct dm_exception_store_type *tmp ;
  {
  spin_lock(& _lock);
  tmp = __find_exception_store_type(type->name);
  if ((unsigned long )tmp == (unsigned long )((struct dm_exception_store_type *)0)) {
    spin_unlock(& _lock);
    return (-22);
  } else {
  }
  list_del(& type->list);
  spin_unlock(& _lock);
  return (0);
}
}
static int set_chunk_size(struct dm_exception_store *store , char const *chunk_size_arg ,
                          char **error )
{ unsigned int chunk_size ;
  int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  {
  tmp = kstrtouint(chunk_size_arg, 10U, & chunk_size);
  if (tmp != 0) {
    *error = (char *)"Invalid chunk size";
    return (-22);
  } else {
  }
  if (chunk_size == 0U) {
    tmp___1 = 0U;
    store->chunk_shift = tmp___1;
    tmp___0 = tmp___1;
    store->chunk_mask = tmp___0;
    store->chunk_size = tmp___0;
    return (0);
  } else {
  }
  tmp___2 = dm_exception_store_set_chunk_size(store, chunk_size, error);
  return (tmp___2);
}
}
int dm_exception_store_set_chunk_size(struct dm_exception_store *store , unsigned int chunk_size ,
                                      char **error )
{ bool tmp ;
  int tmp___0 ;
  struct dm_dev *tmp___1 ;
  unsigned short tmp___2 ;
  struct dm_dev *tmp___3 ;
  unsigned short tmp___4 ;
  int tmp___5 ;
  {
  tmp = is_power_of_2((unsigned long )chunk_size);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    *error = (char *)"Chunk size is not a power of 2";
    return (-22);
  } else {
  }
  tmp___1 = dm_snap_cow(store->snap);
  tmp___2 = bdev_logical_block_size(tmp___1->bdev);
  if (chunk_size % (unsigned int )((int )tmp___2 >> 9) != 0U) {
    *error = (char *)"Chunk size is not a multiple of device blocksize";
    return (-22);
  } else {
    tmp___3 = dm_snap_origin(store->snap);
    tmp___4 = bdev_logical_block_size(tmp___3->bdev);
    if (chunk_size % (unsigned int )((int )tmp___4 >> 9) != 0U) {
      *error = (char *)"Chunk size is not a multiple of device blocksize";
      return (-22);
    } else {
    }
  }
  if (chunk_size > 4194303U) {
    *error = (char *)"Chunk size is too high";
    return (-22);
  } else {
  }
  store->chunk_size = chunk_size;
  store->chunk_mask = chunk_size - 1U;
  tmp___5 = ffs((int )chunk_size);
  store->chunk_shift = (unsigned int )(tmp___5 + -1);
  return (0);
}
}
int dm_exception_store_create(struct dm_target *ti , int argc , char **argv , struct dm_snapshot *snap ,
                              unsigned int *args_used , struct dm_exception_store **store )
{ int r ;
  struct dm_exception_store_type *type ;
  struct dm_exception_store *tmp_store ;
  char persistent ;
  void *tmp ;
  unsigned char tmp___0 ;
  {
  r = 0;
  type = 0;
  if (argc <= 1) {
    ti->error = (char *)"Insufficient exception store arguments";
    return (-22);
  } else {
  }
  tmp = kmalloc(40UL, 208U);
  tmp_store = (struct dm_exception_store *)tmp;
  if ((unsigned long )tmp_store == (unsigned long )((struct dm_exception_store *)0)) {
    ti->error = (char *)"Exception store allocation failed";
    return (-12);
  } else {
  }
  tmp___0 = __toupper((int )((unsigned char )*(*argv)));
  persistent = (char )tmp___0;
  if ((int )((signed char )persistent) == 80) {
    type = get_type("P");
  } else
  if ((int )((signed char )persistent) == 78) {
    type = get_type("N");
  } else {
    ti->error = (char *)"Persistent flag is not P or N";
    r = -22;
    goto bad_type;
  }
  if ((unsigned long )type == (unsigned long )((struct dm_exception_store_type *)0)) {
    ti->error = (char *)"Exception store type not recognised";
    r = -22;
    goto bad_type;
  } else {
  }
  tmp_store->type = type;
  tmp_store->snap = snap;
  r = set_chunk_size(tmp_store, (char const *)*(argv + 1UL), & ti->error);
  if (r != 0) {
    goto bad;
  } else {
  }
  r = (*(type->ctr))(tmp_store, 0U, 0);
  if (r != 0) {
    ti->error = (char *)"Exception store type constructor failed";
    goto bad;
  } else {
  }
  *args_used = 2U;
  *store = tmp_store;
  return (0);
  bad:
  put_type(type);
  bad_type:
  kfree((void const *)tmp_store);
  return (r);
}
}
void dm_exception_store_destroy(struct dm_exception_store *store )
{
  {
  (*((store->type)->dtr))(store);
  put_type(store->type);
  kfree((void const *)store);
  return;
}
}
int dm_exception_store_init(void)
{ int r ;
  {
  r = dm_transient_snapshot_init();
  if (r != 0) {
    printk("\vdevice-mapper: snapshot exception stores: Unable to register transient exception store type.\n");
    goto transient_fail;
  } else {
  }
  r = dm_persistent_snapshot_init();
  if (r != 0) {
    printk("\vdevice-mapper: snapshot exception stores: Unable to register persistent exception store type\n");
    goto persistent_fail;
  } else {
  }
  return (0);
  persistent_fail:
  dm_transient_snapshot_exit();
  transient_fail: ;
  return (r);
}
}
void dm_exception_store_exit(void)
{
  {
  dm_persistent_snapshot_exit();
  dm_transient_snapshot_exit();
  return;
}
}
void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_20(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___4 ldv_func_res ;
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
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_34(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_33(struct mutex *ldv_func_arg1 ) ;
static void transient_dtr(struct dm_exception_store *store )
{
  {
  kfree((void const *)store->context);
  return;
}
}
static int transient_read_metadata(struct dm_exception_store *store , int (*callback)(void * ,
                                                                                      chunk_t ,
                                                                                      chunk_t ) ,
                                   void *callback_context )
{
  {
  return (0);
}
}
static int transient_prepare_exception(struct dm_exception_store *store , struct dm_exception *e )
{ struct transient_c *tc ;
  sector_t size ;
  struct dm_dev *tmp ;
  sector_t tmp___0 ;
  {
  tc = (struct transient_c *)store->context;
  tmp = dm_snap_cow(store->snap);
  tmp___0 = get_dev_size(tmp->bdev);
  size = tmp___0;
  if (tc->next_free + (sector_t )store->chunk_size > size) {
    return (-1);
  } else {
  }
  e->new_chunk = sector_to_chunk(store, tc->next_free);
  tc->next_free = tc->next_free + (sector_t )store->chunk_size;
  return (0);
}
}
static void transient_commit_exception(struct dm_exception_store *store , struct dm_exception *e ,
                                       void (*callback)(void * , int ) , void *callback_context )
{
  {
  (*callback)(callback_context, 1);
  return;
}
}
static void transient_usage(struct dm_exception_store *store , sector_t *total_sectors ,
                            sector_t *sectors_allocated , sector_t *metadata_sectors )
{ struct dm_dev *tmp ;
  {
  *sectors_allocated = ((struct transient_c *)store->context)->next_free;
  tmp = dm_snap_cow(store->snap);
  *total_sectors = get_dev_size(tmp->bdev);
  *metadata_sectors = 0UL;
  return;
}
}
static int transient_ctr(struct dm_exception_store *store , unsigned int argc , char **argv )
{ struct transient_c *tc ;
  void *tmp ;
  {
  tmp = kmalloc(8UL, 208U);
  tc = (struct transient_c *)tmp;
  if ((unsigned long )tc == (unsigned long )((struct transient_c *)0)) {
    return (-12);
  } else {
  }
  tc->next_free = 0UL;
  store->context = (void *)tc;
  return (0);
}
}
static unsigned int transient_status(struct dm_exception_store *store , status_type_t status ,
                                     char *result , unsigned int maxlen )
{ unsigned int sz ;
  int tmp ;
  unsigned int tmp___0 ;
  {
  sz = 0U;
  switch ((unsigned int )status) {
  case 0: ;
  goto ldv_28676;
  case 1: ;
  if (sz < maxlen) {
    tmp = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " N %llu",
                    (unsigned long long )store->chunk_size);
    tmp___0 = (unsigned int )tmp;
  } else {
    tmp___0 = 0U;
  }
  sz = tmp___0 + sz;
  }
  ldv_28676: ;
  return (sz);
}
}
static struct dm_exception_store_type _transient_type =
     {"transient", & __this_module, & transient_ctr, & transient_dtr, & transient_read_metadata,
    & transient_prepare_exception, & transient_commit_exception, 0, 0, 0, & transient_status,
    & transient_usage, {0, 0}};
static struct dm_exception_store_type _transient_compat_type =
     {"N", & __this_module, & transient_ctr, & transient_dtr, & transient_read_metadata,
    & transient_prepare_exception, & transient_commit_exception, 0, 0, 0, & transient_status,
    & transient_usage, {0, 0}};
int dm_transient_snapshot_init(void)
{ int r ;
  {
  r = dm_exception_store_type_register(& _transient_type);
  if (r != 0) {
    printk("\fdevice-mapper: transient snapshot: Unable to register transient exception store type\n");
    return (r);
  } else {
  }
  r = dm_exception_store_type_register(& _transient_compat_type);
  if (r != 0) {
    printk("\fdevice-mapper: transient snapshot: Unable to register old-style transient exception store type\n");
    dm_exception_store_type_unregister(& _transient_type);
    return (r);
  } else {
  }
  return (r);
}
}
void dm_transient_snapshot_exit(void)
{
  {
  dm_exception_store_type_unregister(& _transient_type);
  dm_exception_store_type_unregister(& _transient_compat_type);
  return;
}
}
unsigned int ldvarg77 ;
status_type_t ldvarg84 ;
char **ldvarg67 ;
sector_t *ldvarg80 ;
sector_t *ldvarg71 ;
sector_t *ldvarg72 ;
sector_t *ldvarg79 ;
char *ldvarg83 ;
sector_t *ldvarg81 ;
unsigned int ldvarg73 ;
struct dm_exception_store *_transient_type_group0 ;
sector_t *ldvarg70 ;
struct dm_exception_store *_transient_compat_type_group0 ;
struct dm_exception *ldvarg78 ;
unsigned int ldvarg68 ;
struct dm_exception *ldvarg69 ;
unsigned int ldvarg82 ;
char *ldvarg74 ;
char **ldvarg76 ;
status_type_t ldvarg75 ;
void ldv_main_exported_4(void)
{ int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_4 == 1) {
    transient_status(_transient_type_group0, ldvarg75, ldvarg74, ldvarg73);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_28711;
  case 1: ;
  if (ldv_state_variable_4 == 1) {
    transient_usage(_transient_type_group0, ldvarg72, ldvarg71, ldvarg70);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_28711;
  case 2: ;
  if (ldv_state_variable_4 == 1) {
    transient_prepare_exception(_transient_type_group0, ldvarg69);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_28711;
  case 3: ;
  if (ldv_state_variable_4 == 1) {
    transient_dtr(_transient_type_group0);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_28711;
  case 4: ;
  if (ldv_state_variable_4 == 1) {
    transient_ctr(_transient_type_group0, ldvarg68, ldvarg67);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_28711;
  default: ;
  goto ldv_28711;
  }
  ldv_28711: ;
  return;
}
}
void ldv_main_exported_5(void)
{ int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_5 == 1) {
    transient_status(_transient_compat_type_group0, ldvarg84, ldvarg83, ldvarg82);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_28721;
  case 1: ;
  if (ldv_state_variable_5 == 1) {
    transient_usage(_transient_compat_type_group0, ldvarg81, ldvarg80, ldvarg79);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_28721;
  case 2: ;
  if (ldv_state_variable_5 == 1) {
    transient_prepare_exception(_transient_compat_type_group0, ldvarg78);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_28721;
  case 3: ;
  if (ldv_state_variable_5 == 1) {
    transient_dtr(_transient_compat_type_group0);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_28721;
  case 4: ;
  if (ldv_state_variable_5 == 1) {
    transient_ctr(_transient_compat_type_group0, ldvarg77, ldvarg76);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_28721;
  default: ;
  goto ldv_28721;
  }
  ldv_28721: ;
  return;
}
}
void ldv_mutex_lock_29(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_33(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_34(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___4 ldv_func_res ;
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
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern void *memset(void * , int , size_t ) ;
__inline static int atomic_dec_and_test(atomic_t *v )
{ unsigned char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0; sete %1": "+m" (v->counter),
                       "=qm" (c): : "memory");
  return ((unsigned int )c != 0U);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
int ldv_mutex_trylock_48(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_44(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_46(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_43(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_47(struct mutex *ldv_func_arg1 ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
extern bool queue_work(struct workqueue_struct * , struct work_struct * ) ;
extern bool flush_work(struct work_struct * ) ;
extern void *vmalloc(unsigned long ) ;
extern void *vzalloc(unsigned long ) ;
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{ void *tmp ;
  {
  tmp = kmalloc(size, flags | 32768U);
  return (tmp);
}
}
extern struct dm_io_client *dm_io_client_create(void) ;
extern void dm_io_client_destroy(struct dm_io_client * ) ;
extern int dm_io(struct dm_io_request * , unsigned int , struct dm_io_region * ,
                 unsigned long * ) ;
static int alloc_area(struct pstore *ps )
{ int r ;
  size_t len ;
  {
  r = -12;
  len = (size_t )((ps->store)->chunk_size << 9);
  ps->area = vmalloc(len);
  if ((unsigned long )ps->area == (unsigned long )((void *)0)) {
    goto err_area;
  } else {
  }
  ps->zero_area = vzalloc(len);
  if ((unsigned long )ps->zero_area == (unsigned long )((void *)0)) {
    goto err_zero_area;
  } else {
  }
  ps->header_area = vmalloc(len);
  if ((unsigned long )ps->header_area == (unsigned long )((void *)0)) {
    goto err_header_area;
  } else {
  }
  return (0);
  err_header_area:
  vfree((void const *)ps->zero_area);
  err_zero_area:
  vfree((void const *)ps->area);
  err_area: ;
  return (r);
}
}
static void free_area(struct pstore *ps )
{
  {
  if ((unsigned long )ps->area != (unsigned long )((void *)0)) {
    vfree((void const *)ps->area);
  } else {
  }
  ps->area = 0;
  if ((unsigned long )ps->zero_area != (unsigned long )((void *)0)) {
    vfree((void const *)ps->zero_area);
  } else {
  }
  ps->zero_area = 0;
  if ((unsigned long )ps->header_area != (unsigned long )((void *)0)) {
    vfree((void const *)ps->header_area);
  } else {
  }
  ps->header_area = 0;
  return;
}
}
static void do_metadata(struct work_struct *work )
{ struct mdata_req *req ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  req = (struct mdata_req *)__mptr + 0xfffffffffffffff0UL;
  req->result = dm_io(req->io_req, 1U, req->where, 0);
  return;
}
}
static int chunk_io(struct pstore *ps , void *area , chunk_t chunk , int rw , int metadata )
{ struct dm_io_region where ;
  struct dm_dev *tmp ;
  struct dm_io_request io_req ;
  struct mdata_req req ;
  int tmp___0 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  tmp = dm_snap_cow((ps->store)->snap);
  where.bdev = tmp->bdev;
  where.sector = (chunk_t )(ps->store)->chunk_size * chunk;
  where.count = (unsigned long )(ps->store)->chunk_size;
  io_req.bi_rw = rw;
  io_req.mem.type = 2;
  io_req.mem.offset = 0U;
  io_req.mem.ptr.vma = area;
  io_req.notify.fn = 0;
  io_req.notify.context = 0;
  io_req.client = ps->io_client;
  if (metadata == 0) {
    tmp___0 = dm_io(& io_req, 1U, & where, 0);
    return (tmp___0);
  } else {
  }
  req.where = & where;
  req.io_req = & io_req;
  __init_work(& req.work, 1);
  __constr_expr_0.counter = 4195328L;
  req.work.data = __constr_expr_0;
  lockdep_init_map(& req.work.lockdep_map, "(&req.work)", & __key, 0);
  INIT_LIST_HEAD(& req.work.entry);
  req.work.func = & do_metadata;
  queue_work(ps->metadata_wq, & req.work);
  flush_work(& req.work);
  return (req.result);
}
}
static chunk_t area_location(struct pstore *ps , chunk_t area )
{
  {
  return ((chunk_t )(ps->exceptions_per_area + 1U) * area + 1UL);
}
}
static int area_io(struct pstore *ps , int rw )
{ int r ;
  chunk_t chunk ;
  {
  chunk = area_location(ps, ps->current_area);
  r = chunk_io(ps, ps->area, chunk, rw, 0);
  if (r != 0) {
    return (r);
  } else {
  }
  return (0);
}
}
static void zero_memory_area(struct pstore *ps )
{
  {
  memset(ps->area, 0, (size_t )((ps->store)->chunk_size << 9));
  return;
}
}
static int zero_disk_area(struct pstore *ps , chunk_t area )
{ chunk_t tmp ;
  int tmp___0 ;
  {
  tmp = area_location(ps, area);
  tmp___0 = chunk_io(ps, ps->zero_area, tmp, 1, 0);
  return (tmp___0);
}
}
static int read_header(struct pstore *ps , int *new_snapshot )
{ int r ;
  struct disk_header *dh ;
  unsigned int chunk_size ;
  int chunk_size_supplied ;
  char *chunk_err ;
  int _max1 ;
  int _max2 ;
  struct dm_dev *tmp ;
  unsigned short tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  {
  chunk_size_supplied = 1;
  if ((ps->store)->chunk_size == 0U) {
    _max1 = 32;
    tmp = dm_snap_cow((ps->store)->snap);
    tmp___0 = bdev_logical_block_size(tmp->bdev);
    _max2 = (int )tmp___0 >> 9;
    if (_max1 > _max2) {
      tmp___1 = _max1;
    } else {
      tmp___1 = _max2;
    }
    (ps->store)->chunk_size = (unsigned int )tmp___1;
    (ps->store)->chunk_mask = (ps->store)->chunk_size - 1U;
    tmp___2 = ffs((int )(ps->store)->chunk_size);
    (ps->store)->chunk_shift = (unsigned int )(tmp___2 + -1);
    chunk_size_supplied = 0;
  } else {
  }
  ps->io_client = dm_io_client_create();
  tmp___4 = IS_ERR((void const *)ps->io_client);
  if (tmp___4 != 0L) {
    tmp___3 = PTR_ERR((void const *)ps->io_client);
    return ((int )tmp___3);
  } else {
  }
  r = alloc_area(ps);
  if (r != 0) {
    return (r);
  } else {
  }
  r = chunk_io(ps, ps->header_area, 0UL, 0, 1);
  if (r != 0) {
    goto bad;
  } else {
  }
  dh = (struct disk_header *)ps->header_area;
  if (dh->magic == 0U) {
    *new_snapshot = 1;
    return (0);
  } else {
  }
  if (dh->magic != 1883336275U) {
    printk("\fdevice-mapper: persistent snapshot: Invalid or corrupt snapshot\n");
    r = -6;
    goto bad;
  } else {
  }
  *new_snapshot = 0;
  ps->valid = (int )dh->valid;
  ps->version = (int )dh->version;
  chunk_size = dh->chunk_size;
  if ((ps->store)->chunk_size == chunk_size) {
    return (0);
  } else {
  }
  if (chunk_size_supplied != 0) {
    printk("\fdevice-mapper: persistent snapshot: chunk size %u in device metadata overrides table chunk size of %u.\n",
           chunk_size, (ps->store)->chunk_size);
  } else {
  }
  free_area(ps);
  r = dm_exception_store_set_chunk_size(ps->store, chunk_size, & chunk_err);
  if (r != 0) {
    printk("\vdevice-mapper: persistent snapshot: invalid on-disk chunk size %u: %s.\n",
           chunk_size, chunk_err);
    return (r);
  } else {
  }
  r = alloc_area(ps);
  return (r);
  bad:
  free_area(ps);
  return (r);
}
}
static int write_header(struct pstore *ps )
{ struct disk_header *dh ;
  int tmp ;
  {
  memset(ps->header_area, 0, (size_t )((ps->store)->chunk_size << 9));
  dh = (struct disk_header *)ps->header_area;
  dh->magic = 1883336275U;
  dh->valid = (unsigned int )ps->valid;
  dh->version = (unsigned int )ps->version;
  dh->chunk_size = (ps->store)->chunk_size;
  tmp = chunk_io(ps, ps->header_area, 0UL, 1, 1);
  return (tmp);
}
}
static struct disk_exception *get_exception(struct pstore *ps , uint32_t index )
{ long tmp ;
  {
  tmp = ldv__builtin_expect(ps->exceptions_per_area <= index, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/zakharov/workspace/benchmarks/bench_1/work/current--X--drivers/md/dm-snapshot.ko--X--deg2_cpalinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/35/dscv_tempdir/dscv/ri/32_7a/drivers/md/dm-snap-persistent.c.prepared"),
                         "i" (441), "i" (12UL));
    ldv_28733: ;
    goto ldv_28733;
  } else {
  }
  return ((struct disk_exception *)ps->area + (unsigned long )index);
}
}
static void read_exception(struct pstore *ps , uint32_t index , struct core_exception *result )
{ struct disk_exception *de ;
  struct disk_exception *tmp ;
  {
  tmp = get_exception(ps, index);
  de = tmp;
  result->old_chunk = de->old_chunk;
  result->new_chunk = de->new_chunk;
  return;
}
}
static void write_exception(struct pstore *ps , uint32_t index , struct core_exception *e )
{ struct disk_exception *de ;
  struct disk_exception *tmp ;
  {
  tmp = get_exception(ps, index);
  de = tmp;
  de->old_chunk = e->old_chunk;
  de->new_chunk = e->new_chunk;
  return;
}
}
static void clear_exception(struct pstore *ps , uint32_t index )
{ struct disk_exception *de ;
  struct disk_exception *tmp ;
  {
  tmp = get_exception(ps, index);
  de = tmp;
  de->old_chunk = 0ULL;
  de->new_chunk = 0ULL;
  return;
}
}
static int insert_exceptions(struct pstore *ps , int (*callback)(void * , chunk_t ,
                                                                 chunk_t ) , void *callback_context ,
                             int *full )
{ int r ;
  unsigned int i ;
  struct core_exception e ;
  {
  *full = 1;
  i = 0U;
  goto ldv_28765;
  ldv_28764:
  read_exception(ps, i, & e);
  if (e.new_chunk == 0ULL) {
    ps->current_committed = i;
    *full = 0;
    goto ldv_28763;
  } else {
  }
  if ((unsigned long long )ps->next_free <= e.new_chunk) {
    ps->next_free = (chunk_t )(e.new_chunk + 1ULL);
  } else {
  }
  r = (*callback)(callback_context, (chunk_t )e.old_chunk, (chunk_t )e.new_chunk);
  if (r != 0) {
    return (r);
  } else {
  }
  i = i + 1U;
  ldv_28765: ;
  if (ps->exceptions_per_area > i) {
    goto ldv_28764;
  } else {
    goto ldv_28763;
  }
  ldv_28763: ;
  return (0);
}
}
static int read_exceptions(struct pstore *ps , int (*callback)(void * , chunk_t ,
                                                               chunk_t ) , void *callback_context )
{ int r ;
  int full ;
  {
  full = 1;
  ps->current_area = 0UL;
  goto ldv_28777;
  ldv_28776:
  r = area_io(ps, 0);
  if (r != 0) {
    return (r);
  } else {
  }
  r = insert_exceptions(ps, callback, callback_context, & full);
  if (r != 0) {
    return (r);
  } else {
  }
  ps->current_area = ps->current_area + 1UL;
  ldv_28777: ;
  if (full != 0) {
    goto ldv_28776;
  } else {
    goto ldv_28778;
  }
  ldv_28778:
  ps->current_area = ps->current_area - 1UL;
  return (0);
}
}
static struct pstore *get_info(struct dm_exception_store *store )
{
  {
  return ((struct pstore *)store->context);
}
}
static void persistent_usage(struct dm_exception_store *store , sector_t *total_sectors ,
                             sector_t *sectors_allocated , sector_t *metadata_sectors )
{ struct pstore *ps ;
  struct pstore *tmp ;
  struct dm_dev *tmp___0 ;
  {
  tmp = get_info(store);
  ps = tmp;
  *sectors_allocated = ps->next_free * (chunk_t )store->chunk_size;
  tmp___0 = dm_snap_cow(store->snap);
  *total_sectors = get_dev_size(tmp___0->bdev);
  *metadata_sectors = (ps->current_area + 2UL) * (chunk_t )store->chunk_size;
  return;
}
}
static void persistent_dtr(struct dm_exception_store *store )
{ struct pstore *ps ;
  struct pstore *tmp ;
  {
  tmp = get_info(store);
  ps = tmp;
  destroy_workqueue(ps->metadata_wq);
  if ((unsigned long )ps->io_client != (unsigned long )((struct dm_io_client *)0)) {
    dm_io_client_destroy(ps->io_client);
  } else {
  }
  free_area(ps);
  if ((unsigned long )ps->callbacks != (unsigned long )((struct commit_callback *)0)) {
    vfree((void const *)ps->callbacks);
  } else {
  }
  kfree((void const *)ps);
  return;
}
}
static int persistent_read_metadata(struct dm_exception_store *store , int (*callback)(void * ,
                                                                                       chunk_t ,
                                                                                       chunk_t ) ,
                                    void *callback_context )
{ int r ;
  int new_snapshot ;
  struct pstore *ps ;
  struct pstore *tmp ;
  void *tmp___0 ;
  {
  new_snapshot = new_snapshot;
  tmp = get_info(store);
  ps = tmp;
  r = read_header(ps, & new_snapshot);
  if (r != 0) {
    return (r);
  } else {
  }
  ps->exceptions_per_area = ((ps->store)->chunk_size << 9) / 16U;
  tmp___0 = dm_vcalloc((unsigned long )ps->exceptions_per_area, 16UL);
  ps->callbacks = (struct commit_callback *)tmp___0;
  if ((unsigned long )ps->callbacks == (unsigned long )((struct commit_callback *)0)) {
    return (-12);
  } else {
  }
  if (new_snapshot != 0) {
    r = write_header(ps);
    if (r != 0) {
      printk("\fdevice-mapper: persistent snapshot: write_header failed\n");
      return (r);
    } else {
    }
    ps->current_area = 0UL;
    zero_memory_area(ps);
    r = zero_disk_area(ps, 0UL);
    if (r != 0) {
      printk("\fdevice-mapper: persistent snapshot: zero_disk_area(0) failed\n");
    } else {
    }
    return (r);
  } else {
  }
  if (ps->version != 1) {
    printk("\fdevice-mapper: persistent snapshot: unable to handle snapshot disk version %d\n",
           ps->version);
    return (-22);
  } else {
  }
  if (ps->valid == 0) {
    return (1);
  } else {
  }
  r = read_exceptions(ps, callback, callback_context);
  return (r);
}
}
static int persistent_prepare_exception(struct dm_exception_store *store , struct dm_exception *e )
{ struct pstore *ps ;
  struct pstore *tmp ;
  uint32_t stride ;
  chunk_t next_free ;
  sector_t size ;
  struct dm_dev *tmp___0 ;
  sector_t tmp___1 ;
  int _res ;
  {
  tmp = get_info(store);
  ps = tmp;
  tmp___0 = dm_snap_cow(store->snap);
  tmp___1 = get_dev_size(tmp___0->bdev);
  size = tmp___1;
  if ((ps->next_free + 1UL) * (chunk_t )store->chunk_size > size) {
    return (-28);
  } else {
  }
  e->new_chunk = ps->next_free;
  stride = ps->exceptions_per_area + 1U;
  ps->next_free = ps->next_free + 1UL;
  next_free = ps->next_free;
  _res = (int )(next_free % (chunk_t )stride);
  next_free = next_free / (chunk_t )stride;
  if (_res == 1) {
    ps->next_free = ps->next_free + 1UL;
  } else {
  }
  atomic_inc(& ps->pending_count);
  return (0);
}
}
static void persistent_commit_exception(struct dm_exception_store *store , struct dm_exception *e ,
                                        void (*callback)(void * , int ) , void *callback_context )
{ unsigned int i ;
  struct pstore *ps ;
  struct pstore *tmp ;
  struct core_exception ce ;
  struct commit_callback *cb ;
  uint32_t tmp___0 ;
  uint32_t tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp = get_info(store);
  ps = tmp;
  ce.old_chunk = (uint64_t )e->old_chunk;
  ce.new_chunk = (uint64_t )e->new_chunk;
  tmp___0 = ps->current_committed;
  ps->current_committed = ps->current_committed + 1U;
  write_exception(ps, tmp___0, & ce);
  tmp___1 = ps->callback_count;
  ps->callback_count = ps->callback_count + 1U;
  cb = ps->callbacks + (unsigned long )tmp___1;
  cb->callback = callback;
  cb->context = callback_context;
  tmp___2 = atomic_dec_and_test(& ps->pending_count);
  if (tmp___2 == 0 && ps->current_committed != ps->exceptions_per_area) {
    return;
  } else {
  }
  if (ps->current_committed == ps->exceptions_per_area) {
    tmp___3 = zero_disk_area(ps, ps->current_area + 1UL);
    if (tmp___3 != 0) {
      ps->valid = 0;
    } else {
    }
  } else {
  }
  if (ps->valid != 0) {
    tmp___4 = area_io(ps, 7185);
    if (tmp___4 != 0) {
      ps->valid = 0;
    } else {
    }
  } else {
  }
  if (ps->current_committed == ps->exceptions_per_area) {
    ps->current_committed = 0U;
    ps->current_area = ps->current_area + 1UL;
    zero_memory_area(ps);
  } else {
  }
  i = 0U;
  goto ldv_28827;
  ldv_28826:
  cb = ps->callbacks + (unsigned long )i;
  (*(cb->callback))(cb->context, ps->valid);
  i = i + 1U;
  ldv_28827: ;
  if (ps->callback_count > i) {
    goto ldv_28826;
  } else {
    goto ldv_28828;
  }
  ldv_28828:
  ps->callback_count = 0U;
  return;
}
}
static int persistent_prepare_merge(struct dm_exception_store *store , chunk_t *last_old_chunk ,
                                    chunk_t *last_new_chunk )
{ struct pstore *ps ;
  struct pstore *tmp ;
  struct core_exception ce ;
  int nr_consecutive ;
  int r ;
  {
  tmp = get_info(store);
  ps = tmp;
  if (ps->current_committed == 0U) {
    if (ps->current_area == 0UL) {
      return (0);
    } else {
    }
    ps->current_area = ps->current_area - 1UL;
    r = area_io(ps, 0);
    if (r < 0) {
      return (r);
    } else {
    }
    ps->current_committed = ps->exceptions_per_area;
  } else {
  }
  read_exception(ps, ps->current_committed - 1U, & ce);
  *last_old_chunk = (chunk_t )ce.old_chunk;
  *last_new_chunk = (chunk_t )ce.new_chunk;
  nr_consecutive = 1;
  goto ldv_28840;
  ldv_28839:
  read_exception(ps, (ps->current_committed - (uint32_t )nr_consecutive) - 1U, & ce);
  if (ce.old_chunk != (unsigned long long )(*last_old_chunk - (chunk_t )nr_consecutive) || ce.new_chunk != (unsigned long long )(*last_new_chunk - (chunk_t )nr_consecutive)) {
    goto ldv_28838;
  } else {
  }
  nr_consecutive = nr_consecutive + 1;
  ldv_28840: ;
  if ((uint32_t )nr_consecutive < ps->current_committed) {
    goto ldv_28839;
  } else {
    goto ldv_28838;
  }
  ldv_28838: ;
  return (nr_consecutive);
}
}
static int persistent_commit_merge(struct dm_exception_store *store , int nr_merged )
{ int r ;
  int i ;
  struct pstore *ps ;
  struct pstore *tmp ;
  long tmp___0 ;
  chunk_t tmp___1 ;
  {
  tmp = get_info(store);
  ps = tmp;
  tmp___0 = ldv__builtin_expect((uint32_t )nr_merged > ps->current_committed, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/zakharov/workspace/benchmarks/bench_1/work/current--X--drivers/md/dm-snapshot.ko--X--deg2_cpalinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/35/dscv_tempdir/dscv/ri/32_7a/drivers/md/dm-snap-persistent.c.prepared"),
                         "i" (799), "i" (12UL));
    ldv_28848: ;
    goto ldv_28848;
  } else {
  }
  i = 0;
  goto ldv_28850;
  ldv_28849:
  clear_exception(ps, (ps->current_committed - (uint32_t )i) - 1U);
  i = i + 1;
  ldv_28850: ;
  if (i < nr_merged) {
    goto ldv_28849;
  } else {
    goto ldv_28851;
  }
  ldv_28851:
  r = area_io(ps, 7185);
  if (r < 0) {
    return (r);
  } else {
  }
  ps->current_committed = ps->current_committed - (uint32_t )nr_merged;
  tmp___1 = area_location(ps, ps->current_area);
  ps->next_free = (tmp___1 + (chunk_t )ps->current_committed) + 1UL;
  return (0);
}
}
static void persistent_drop_snapshot(struct dm_exception_store *store )
{ struct pstore *ps ;
  struct pstore *tmp ;
  int tmp___0 ;
  {
  tmp = get_info(store);
  ps = tmp;
  ps->valid = 0;
  tmp___0 = write_header(ps);
  if (tmp___0 != 0) {
    printk("\fdevice-mapper: persistent snapshot: write header failed\n");
  } else {
  }
  return;
}
}
static int persistent_ctr(struct dm_exception_store *store , unsigned int argc , char **argv )
{ struct pstore *ps ;
  void *tmp ;
  struct lock_class_key __key ;
  char const *__lock_name ;
  struct workqueue_struct *tmp___0 ;
  {
  tmp = kzalloc(104UL, 208U);
  ps = (struct pstore *)tmp;
  if ((unsigned long )ps == (unsigned long )((struct pstore *)0)) {
    return (-12);
  } else {
  }
  ps->store = store;
  ps->valid = 1;
  ps->version = 1;
  ps->area = 0;
  ps->zero_area = 0;
  ps->header_area = 0;
  ps->next_free = 2UL;
  ps->current_committed = 0U;
  ps->callback_count = 0U;
  atomic_set(& ps->pending_count, 0);
  ps->callbacks = 0;
  __lock_name = "ksnaphd";
  tmp___0 = __alloc_workqueue_key("ksnaphd", 8U, 0, & __key, __lock_name);
  ps->metadata_wq = tmp___0;
  if ((unsigned long )ps->metadata_wq == (unsigned long )((struct workqueue_struct *)0)) {
    kfree((void const *)ps);
    printk("\vdevice-mapper: persistent snapshot: couldn\'t start header metadata update thread\n");
    return (-12);
  } else {
  }
  store->context = (void *)ps;
  return (0);
}
}
static unsigned int persistent_status(struct dm_exception_store *store , status_type_t status ,
                                      char *result , unsigned int maxlen )
{ unsigned int sz ;
  int tmp ;
  unsigned int tmp___0 ;
  {
  sz = 0U;
  switch ((unsigned int )status) {
  case 0: ;
  goto ldv_28873;
  case 1: ;
  if (sz < maxlen) {
    tmp = scnprintf(result + (unsigned long )sz, (size_t )(maxlen - sz), " P %llu",
                    (unsigned long long )store->chunk_size);
    tmp___0 = (unsigned int )tmp;
  } else {
    tmp___0 = 0U;
  }
  sz = tmp___0 + sz;
  }
  ldv_28873: ;
  return (sz);
}
}
static struct dm_exception_store_type _persistent_type =
     {"persistent", & __this_module, & persistent_ctr, & persistent_dtr, & persistent_read_metadata,
    & persistent_prepare_exception, & persistent_commit_exception, & persistent_prepare_merge,
    & persistent_commit_merge, & persistent_drop_snapshot, & persistent_status, & persistent_usage,
    {0, 0}};
static struct dm_exception_store_type _persistent_compat_type =
     {"P", & __this_module, & persistent_ctr, & persistent_dtr, & persistent_read_metadata,
    & persistent_prepare_exception, & persistent_commit_exception, & persistent_prepare_merge,
    & persistent_commit_merge, & persistent_drop_snapshot, & persistent_status, & persistent_usage,
    {0, 0}};
int dm_persistent_snapshot_init(void)
{ int r ;
  {
  r = dm_exception_store_type_register(& _persistent_type);
  if (r != 0) {
    printk("\vdevice-mapper: persistent snapshot: Unable to register persistent exception store type\n");
    return (r);
  } else {
  }
  r = dm_exception_store_type_register(& _persistent_compat_type);
  if (r != 0) {
    printk("\vdevice-mapper: persistent snapshot: Unable to register old-style persistent exception store type\n");
    dm_exception_store_type_unregister(& _persistent_type);
    return (r);
  } else {
  }
  return (r);
}
}
void dm_persistent_snapshot_exit(void)
{
  {
  dm_exception_store_type_unregister(& _persistent_type);
  dm_exception_store_type_unregister(& _persistent_compat_type);
  return;
}
}
status_type_t ldvarg11 ;
sector_t *ldvarg32 ;
int ldvarg31 ;
sector_t *ldvarg7 ;
struct dm_exception_store *_persistent_type_group0 ;
chunk_t *ldvarg3 ;
struct dm_exception_store *_persistent_compat_type_group0 ;
sector_t *ldvarg8 ;
unsigned int ldvarg1 ;
status_type_t ldvarg37 ;
char *ldvarg36 ;
chunk_t *ldvarg29 ;
char *ldvarg10 ;
unsigned int ldvarg9 ;
char **ldvarg26 ;
unsigned int ldvarg27 ;
unsigned int ldvarg35 ;
char **ldvarg0 ;
int ldvarg5 ;
sector_t *ldvarg33 ;
chunk_t *ldvarg30 ;
sector_t *ldvarg6 ;
chunk_t *ldvarg4 ;
sector_t *ldvarg34 ;
struct dm_exception *ldvarg28 ;
struct dm_exception *ldvarg2 ;
void ldv_main_exported_6(void)
{ int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_6 == 1) {
    persistent_status(_persistent_type_group0, ldvarg11, ldvarg10, ldvarg9);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_28914;
  case 1: ;
  if (ldv_state_variable_6 == 1) {
    persistent_usage(_persistent_type_group0, ldvarg8, ldvarg7, ldvarg6);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_28914;
  case 2: ;
  if (ldv_state_variable_6 == 1) {
    persistent_drop_snapshot(_persistent_type_group0);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_28914;
  case 3: ;
  if (ldv_state_variable_6 == 1) {
    persistent_commit_merge(_persistent_type_group0, ldvarg5);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_28914;
  case 4: ;
  if (ldv_state_variable_6 == 1) {
    persistent_prepare_merge(_persistent_type_group0, ldvarg4, ldvarg3);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_28914;
  case 5: ;
  if (ldv_state_variable_6 == 1) {
    persistent_prepare_exception(_persistent_type_group0, ldvarg2);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_28914;
  case 6: ;
  if (ldv_state_variable_6 == 1) {
    persistent_dtr(_persistent_type_group0);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_28914;
  case 7: ;
  if (ldv_state_variable_6 == 1) {
    persistent_ctr(_persistent_type_group0, ldvarg1, ldvarg0);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_28914;
  default: ;
  goto ldv_28914;
  }
  ldv_28914: ;
  return;
}
}
void ldv_main_exported_7(void)
{ int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_7 == 1) {
    persistent_status(_persistent_compat_type_group0, ldvarg37, ldvarg36, ldvarg35);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_28927;
  case 1: ;
  if (ldv_state_variable_7 == 1) {
    persistent_usage(_persistent_compat_type_group0, ldvarg34, ldvarg33, ldvarg32);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_28927;
  case 2: ;
  if (ldv_state_variable_7 == 1) {
    persistent_drop_snapshot(_persistent_compat_type_group0);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_28927;
  case 3: ;
  if (ldv_state_variable_7 == 1) {
    persistent_commit_merge(_persistent_compat_type_group0, ldvarg31);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_28927;
  case 4: ;
  if (ldv_state_variable_7 == 1) {
    persistent_prepare_merge(_persistent_compat_type_group0, ldvarg30, ldvarg29);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_28927;
  case 5: ;
  if (ldv_state_variable_7 == 1) {
    persistent_prepare_exception(_persistent_compat_type_group0, ldvarg28);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_28927;
  case 6: ;
  if (ldv_state_variable_7 == 1) {
    persistent_dtr(_persistent_compat_type_group0);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_28927;
  case 7: ;
  if (ldv_state_variable_7 == 1) {
    persistent_ctr(_persistent_compat_type_group0, ldvarg27, ldvarg26);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_28927;
  default: ;
  goto ldv_28927;
  }
  ldv_28927: ;
  return;
}
}
void ldv_mutex_lock_43(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_44(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_46(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_47(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_48(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___4 ldv_func_res ;
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
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void ldv_error(void) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_error(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
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
static int ldv_mutex_cred_guard_mutex_of_signal_struct ;
int ldv_mutex_lock_interruptible_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
  return;
}
}
int ldv_mutex_trylock_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_cred_guard_mutex_of_signal_struct(atomic_t *cnt ,
                                                                    struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex_of_signal_struct = 1;
  return;
}
}
static int ldv_mutex_lock ;
int ldv_mutex_lock_interruptible_lock(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
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
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock = 2;
  return;
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_lock = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
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
  if (ldv_mutex_lock == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock = 1;
  return;
}
}
static int ldv_mutex_mutex_of_device ;
int ldv_mutex_lock_interruptible_mutex_of_device(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_device(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
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
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_device = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex_of_device = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_device(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
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
  if (ldv_mutex_mutex_of_device == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_device = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_cred_guard_mutex_of_signal_struct = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_mutex_of_device = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
void __init_rwsem(struct rw_semaphore *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __request_module(bool arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
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
void bio_endio(struct bio *arg0, int arg1) {
  return;
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dm_get_device(struct dm_target *arg0, const char *arg1, fmode_t arg2, struct dm_dev **arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dm_io(struct dm_io_request *arg0, unsigned int arg1, struct dm_io_region *arg2, unsigned long *arg3) {
  return __VERIFIER_nondet_int();
}
struct dm_io_client *dm_io_client_create() {
  return ldv_malloc(0UL);
}
void dm_io_client_destroy(struct dm_io_client *arg0) {
  return;
}
struct dm_kcopyd_client *dm_kcopyd_client_create() {
  return ldv_malloc(0UL);
}
void dm_kcopyd_client_destroy(struct dm_kcopyd_client *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dm_kcopyd_copy(struct dm_kcopyd_client *arg0, struct dm_io_region *arg1, unsigned int arg2, struct dm_io_region *arg3, unsigned int arg4, void (*arg5)(int, unsigned long, void *), void *arg6) {
  return __VERIFIER_nondet_int();
}
void dm_kcopyd_do_callback(void *arg0, int arg1, unsigned long arg2) {
  return;
}
void *dm_kcopyd_prepare_callback(struct dm_kcopyd_client *arg0, void (*arg1)(int, unsigned long, void *), void *arg2) {
  return ldv_malloc(0UL);
}
void dm_put_device(struct dm_target *arg0, struct dm_dev *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int dm_register_target(struct target_type *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dm_set_target_max_io_len(struct dm_target *arg0, sector_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dm_suspended(struct dm_target *arg0) {
  return __VERIFIER_nondet_int();
}
void dm_table_event(struct dm_table *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
fmode_t dm_table_get_mode(struct dm_table *arg0) {
  return __VERIFIER_nondet_uint();
}
unsigned long __VERIFIER_nondet_ulong(void);
sector_t dm_table_get_size(struct dm_table *arg0) {
  return __VERIFIER_nondet_ulong();
}
void dm_unregister_target(struct target_type *arg0) {
  return;
}
void *dm_vcalloc(unsigned long arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void down_read(struct rw_semaphore *arg0) {
  return;
}
void down_write(struct rw_semaphore *arg0) {
  return;
}
void down_write_nested(struct rw_semaphore *arg0, int arg1) {
  return;
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool flush_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void generic_make_request(struct bio *arg0) {
  return;
}
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return ldv_malloc(0UL);
}
struct kmem_cache *kmem_cache_create(const char *arg0, size_t arg1, size_t arg2, unsigned long arg3, void (*arg4)(void *)) {
  return ldv_malloc(sizeof(struct kmem_cache));
}
void kmem_cache_destroy(struct kmem_cache *arg0) {
  return;
}
void kmem_cache_free(struct kmem_cache *arg0, void *arg1) {
  return;
}
char *kstrdup(const char *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(char));
}
int __VERIFIER_nondet_int(void);
int kstrtouint(const char *arg0, unsigned int arg1, unsigned int *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_merge_target_postsuspend() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_origin_target_postsuspend() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_origin_target_preresume() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_origin_target_presuspend() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_snapshot_target_postsuspend() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_snapshot_target_presuspend() {
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
void module_put(struct module *arg0) {
  return;
}
void msleep(unsigned int arg0) {
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
int out_of_line_wait_on_bit(void *arg0, int arg1, int (*arg2)(void *), unsigned int arg3) {
  return __VERIFIER_nondet_int();
}
void prepare_to_wait(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work(struct workqueue_struct *arg0, struct work_struct *arg1) {
  return __VERIFIER_nondet_bool();
}
void schedule() {
  return;
}
int __VERIFIER_nondet_int(void);
int scnprintf(char *arg0, size_t arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool try_module_get(struct module *arg0) {
  return __VERIFIER_nondet_bool();
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
void *vzalloc(unsigned long arg0) {
  return ldv_malloc(0UL);
}
void wake_up_bit(void *arg0, int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
