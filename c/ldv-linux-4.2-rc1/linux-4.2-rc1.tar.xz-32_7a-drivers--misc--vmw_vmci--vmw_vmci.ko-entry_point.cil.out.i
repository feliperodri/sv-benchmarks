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
typedef unsigned long uintptr_t;
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
typedef int pao_T__;
typedef int pao_T_____0;
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
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
struct vm_area_struct;
struct __anonstruct_nodemask_t_48 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_48 nodemask_t;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
   struct lockdep_map dep_map ;
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
struct vmci_handle {
   u32 context ;
   u32 resource ;
};
struct vmci_datagram {
   struct vmci_handle dst ;
   struct vmci_handle src ;
   u64 payload_size ;
};
struct vmci_event_data {
   u32 event ;
   u32 _pad ;
};
struct vmci_event_payld_ctx {
   u32 context_id ;
   u32 _pad ;
};
struct vmci_event_msg {
   struct vmci_datagram hdr ;
   struct vmci_event_data event_data ;
};
struct vmci_event_ctx {
   struct vmci_event_msg msg ;
   struct vmci_event_payld_ctx payload ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_209 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_208 {
   struct __anonstruct____missing_field_name_209 __annonCompField56 ;
};
struct lockref {
   union __anonunion____missing_field_name_208 __annonCompField57 ;
};
struct path;
struct vfsmount;
struct __anonstruct____missing_field_name_211 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_210 {
   struct __anonstruct____missing_field_name_211 __annonCompField58 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_210 __annonCompField59 ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_212 {
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
   union __anonunion_d_u_212 d_u ;
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
struct __anonstruct____missing_field_name_216 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_215 {
   struct __anonstruct____missing_field_name_216 __annonCompField60 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_215 __annonCompField61 ;
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
struct kobject;
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
struct __anonstruct_kprojid_t_220 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_220 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_221 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_221 __annonCompField63 ;
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
union __anonunion____missing_field_name_224 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_225 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_226 {
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
   union __anonunion____missing_field_name_224 __annonCompField64 ;
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
   union __anonunion____missing_field_name_225 __annonCompField65 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_226 __annonCompField66 ;
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
union __anonunion_f_u_227 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_227 f_u ;
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
struct __anonstruct_afs_229 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_228 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_229 afs ;
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
   union __anonunion_fl_u_228 fl_u ;
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
union __anonunion____missing_field_name_242 {
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
   union __anonunion____missing_field_name_242 __annonCompField74 ;
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
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
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
union __anonunion____missing_field_name_243 {
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
   union __anonunion____missing_field_name_243 __annonCompField75 ;
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
struct vmci_handle_arr {
   size_t capacity ;
   size_t size ;
   struct vmci_handle entries[] ;
};
struct vmci_datagram_queue_entry {
   struct list_head list_item ;
   size_t dg_size ;
   struct vmci_datagram *dg ;
};
struct vmci_host {
   wait_queue_head_t wait_queue ;
};
struct vmci_handle_list {
   struct list_head node ;
   struct vmci_handle handle ;
};
struct vmci_ctx {
   struct list_head list_item ;
   u32 cid ;
   struct kref kref ;
   struct list_head datagram_queue ;
   u32 pending_datagrams ;
   size_t datagram_queue_size ;
   int user_version ;
   spinlock_t lock ;
   struct vmci_handle_arr *queue_pair_array ;
   struct vmci_handle_arr *doorbell_array ;
   struct vmci_handle_arr *pending_doorbell_array ;
   struct list_head notifier_list ;
   unsigned int n_notifiers ;
   struct vmci_host host_context ;
   u32 priv_flags ;
   struct cred const *cred ;
   bool *notify ;
   struct page *notify_page ;
};
struct dbell_cpt_state {
   struct vmci_handle handle ;
   u64 bitmap_idx ;
};
struct __anonstruct_ctx_list_250 {
   struct list_head head ;
   spinlock_t lock ;
};
union __anonunion___u_252 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_254 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_256 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_258 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_260 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_262 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_264 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_266 {
   struct list_head *__val ;
   char __c[1U] ;
};
typedef bool ldv_func_ret_type;
typedef bool ldv_func_ret_type___0;
typedef bool ldv_func_ret_type___1;
typedef bool ldv_func_ret_type___2;
enum hrtimer_restart;
enum vmci_resource_type {
    VMCI_RESOURCE_TYPE_ANY = 0,
    VMCI_RESOURCE_TYPE_API = 1,
    VMCI_RESOURCE_TYPE_GROUP = 2,
    VMCI_RESOURCE_TYPE_DATAGRAM = 3,
    VMCI_RESOURCE_TYPE_DOORBELL = 4,
    VMCI_RESOURCE_TYPE_QPAIR_GUEST = 5,
    VMCI_RESOURCE_TYPE_QPAIR_HOST = 6
} ;
struct vmci_resource {
   struct vmci_handle handle ;
   enum vmci_resource_type type ;
   struct hlist_node node ;
   struct kref kref ;
   struct completion done ;
};
enum vmci_route {
    VMCI_ROUTE_NONE = 0,
    VMCI_ROUTE_AS_HOST = 1,
    VMCI_ROUTE_AS_GUEST = 2
} ;
struct datagram_entry {
   struct vmci_resource resource ;
   u32 flags ;
   bool run_delayed ;
   int (*recv_cb)(void * , struct vmci_datagram * ) ;
   void *client_data ;
   u32 priv_flags ;
};
struct delayed_datagram_info {
   struct datagram_entry *entry ;
   struct work_struct work ;
   bool in_dg_host_queue ;
   struct vmci_datagram msg ;
   u8 msg_payload[] ;
};
enum hrtimer_restart;
struct vmci_notify_bm_set_msg {
   struct vmci_datagram hdr ;
   u32 bitmap_ppn ;
   u32 _pad ;
};
struct vmci_doorbell_link_msg {
   struct vmci_datagram hdr ;
   struct vmci_handle handle ;
   u64 notify_idx ;
};
struct vmci_doorbell_unlink_msg {
   struct vmci_datagram hdr ;
   struct vmci_handle handle ;
};
struct vmci_doorbell_notify_msg {
   struct vmci_datagram hdr ;
   struct vmci_handle handle ;
};
struct dbell_entry {
   struct vmci_resource resource ;
   struct hlist_node node ;
   struct work_struct work ;
   void (*notify_cb)(void * ) ;
   void *client_data ;
   u32 idx ;
   u32 priv_flags ;
   bool run_delayed ;
   atomic_t active ;
};
struct dbell_index_table {
   spinlock_t lock ;
   struct hlist_head entries[64U] ;
};
enum hrtimer_restart;
struct pci_dev;
enum hrtimer_restart;
struct vmci_subscription {
   u32 id ;
   u32 event ;
   void (*callback)(u32 , struct vmci_event_data const * , void * ) ;
   void *callback_data ;
   struct list_head node ;
};
union __anonunion___u_219 {
   struct list_head *__val ;
   char __c[1U] ;
};
union __anonunion___u_221 {
   struct list_head *__val ;
   char __c[1U] ;
};
typedef u64 dma_addr_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
struct device;
struct seq_operations;
enum hrtimer_restart;
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
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
struct pci_bus;
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct vmci_resource_query_msg {
   u32 num_resources ;
   u32 _padding ;
   u32 resources[1U] ;
};
struct proc_dir_entry;
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct bin_attribute;
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
struct pci_driver;
union __anonunion____missing_field_name_253 {
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
   union __anonunion____missing_field_name_253 __annonCompField76 ;
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
struct vmci_guest_device {
   struct device *dev ;
   void *iobase ;
   unsigned int irq ;
   unsigned int intr_type ;
   bool exclusive_vectors ;
   struct msix_entry msix_entries[2U] ;
   struct tasklet_struct datagram_tasklet ;
   struct tasklet_struct bm_tasklet ;
   void *data_buffer ;
   void *notification_bitmap ;
   dma_addr_t notification_base ;
};
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
struct tss_struct;
struct x86_hw_tss {
   u32 reserved1 ;
   u64 sp0 ;
   u64 sp1 ;
   u64 sp2 ;
   u64 reserved2 ;
   u64 ist[7U] ;
   u32 reserved3 ;
   u32 reserved4 ;
   u16 reserved5 ;
   u16 io_bitmap_base ;
};
struct tss_struct {
   struct x86_hw_tss x86_tss ;
   unsigned long io_bitmap[1025U] ;
   unsigned long SYSENTER_stack[64U] ;
};
struct __anonstruct_mm_segment_t_29 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_29 mm_segment_t;
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
struct vmci_datagram_snd_rcv_info {
   u64 addr ;
   u32 len ;
   s32 result ;
};
struct vmci_ctx_info {
   u32 remote_cid ;
   int result ;
};
struct vmci_ctx_chkpt_buf_info {
   u64 cpt_buf ;
   u32 cpt_type ;
   u32 buf_size ;
   s32 result ;
   u32 _pad ;
};
struct vmci_ctx_notify_recv_info {
   u64 db_handle_buf_uva ;
   u64 db_handle_buf_size ;
   u64 qp_handle_buf_uva ;
   u64 qp_handle_buf_size ;
   s32 result ;
   u32 _pad ;
};
struct vmci_qp_alloc_info {
   struct vmci_handle handle ;
   u32 peer ;
   u32 flags ;
   u64 produce_size ;
   u64 consume_size ;
   u64 ppn_va ;
   u64 num_ppns ;
   s32 result ;
   u32 version ;
};
struct vmci_qp_set_va_info {
   struct vmci_handle handle ;
   u64 va ;
   u64 num_ppns ;
   u32 version ;
   s32 result ;
};
struct vmci_qp_page_file_info {
   struct vmci_handle handle ;
   u64 produce_page_file ;
   u64 consume_page_file ;
   u64 produce_page_file_size ;
   u64 consume_page_file_size ;
   s32 result ;
   u32 version ;
   u64 produce_va ;
   u64 consume_va ;
};
struct vmci_qp_dtch_info {
   struct vmci_handle handle ;
   s32 result ;
   u32 _pad ;
};
struct vmci_qp_page_store {
   u64 pages ;
   u32 len ;
};
enum vmci_obj_type {
    VMCIOBJ_VMX_VM = 10,
    VMCIOBJ_CONTEXT = 11,
    VMCIOBJ_SOCKET = 12,
    VMCIOBJ_NOT_SET = 13
} ;
struct vmci_dbell_notify_resource_info {
   struct vmci_handle handle ;
   u16 resource ;
   u16 action ;
   s32 result ;
};
struct vmci_init_blk {
   u32 cid ;
   u32 flags ;
};
struct vmci_qp_alloc_info_vmvm {
   struct vmci_handle handle ;
   u32 peer ;
   u32 flags ;
   u64 produce_size ;
   u64 consume_size ;
   u64 produce_page_file ;
   u64 consume_page_file ;
   u64 produce_page_file_size ;
   u64 consume_page_file_size ;
   s32 result ;
   u32 _pad ;
};
struct vmci_set_notify_info {
   u64 notify_uva ;
   s32 result ;
   u32 _pad ;
};
struct vmci_host_dev {
   struct vmci_ctx *context ;
   int user_version ;
   enum vmci_obj_type ct_type ;
   struct mutex lock ;
};
enum hrtimer_restart;
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
struct bio_vec;
struct vmci_queue_header {
   struct vmci_handle handle ;
   atomic64_t producer_tail ;
   atomic64_t consumer_head ;
};
struct vmci_event_payld_qp {
   struct vmci_handle handle ;
   u32 peer_id ;
   u32 _pad ;
};
struct vmci_event_qp {
   struct vmci_event_msg msg ;
   struct vmci_event_payld_qp payload ;
};
struct vmci_qp_alloc_msg {
   struct vmci_datagram hdr ;
   struct vmci_handle handle ;
   u32 peer ;
   u32 flags ;
   u64 produce_size ;
   u64 consume_size ;
   u64 num_ppns ;
};
struct vmci_qp_detach_msg {
   struct vmci_datagram hdr ;
   struct vmci_handle handle ;
};
struct vmci_qp;
struct msghdr;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct iovec;
struct kvec;
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_254 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_254 __annonCompField77 ;
   unsigned long nr_segs ;
};
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iov_iter msg_iter ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
   struct kiocb *msg_iocb ;
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
struct ppn_set {
   u64 num_produce_pages ;
   u64 num_consume_pages ;
   u32 *produce_ppns ;
   u32 *consume_ppns ;
   bool initialized ;
};
struct vmci_queue_kern_if;
struct vmci_queue {
   struct vmci_queue_header *q_header ;
   struct vmci_queue_header *saved_header ;
   struct vmci_queue_kern_if *kernel_if ;
};
typedef int vmci_memcpy_to_queue_func(struct vmci_queue * , u64 , void const * ,
                                      size_t , size_t );
typedef int vmci_memcpy_from_queue_func(void * , size_t , struct vmci_queue const * ,
                                        u64 , size_t );
struct __anonstruct_g_274 {
   dma_addr_t *pas ;
   void **vas ;
};
struct __anonstruct_h_275 {
   struct page **page ;
   struct page **header_page ;
};
union __anonunion_u_273 {
   struct __anonstruct_g_274 g ;
   struct __anonstruct_h_275 h ;
};
struct vmci_queue_kern_if {
   struct mutex __mutex ;
   struct mutex *mutex ;
   size_t num_pages ;
   bool host ;
   union __anonunion_u_273 u ;
};
struct vmci_qp {
   struct vmci_handle handle ;
   struct vmci_queue *produce_q ;
   struct vmci_queue *consume_q ;
   u64 produce_q_size ;
   u64 consume_q_size ;
   u32 peer ;
   u32 flags ;
   u32 priv_flags ;
   bool guest_endpoint ;
   unsigned int blocked ;
   unsigned int generation ;
   wait_queue_head_t event ;
};
enum qp_broker_state {
    VMCIQPB_NEW = 0,
    VMCIQPB_CREATED_NO_MEM = 1,
    VMCIQPB_CREATED_MEM = 2,
    VMCIQPB_ATTACHED_NO_MEM = 3,
    VMCIQPB_ATTACHED_MEM = 4,
    VMCIQPB_SHUTDOWN_NO_MEM = 5,
    VMCIQPB_SHUTDOWN_MEM = 6,
    VMCIQPB_GONE = 7
} ;
struct qp_entry {
   struct list_head list_item ;
   struct vmci_handle handle ;
   u32 peer ;
   u32 flags ;
   u64 produce_size ;
   u64 consume_size ;
   u32 ref_count ;
};
struct qp_broker_entry {
   struct vmci_resource resource ;
   struct qp_entry qp ;
   u32 create_id ;
   u32 attach_id ;
   enum qp_broker_state state ;
   bool require_trusted_attach ;
   bool created_by_trusted ;
   bool vmci_page_files ;
   struct vmci_queue *produce_q ;
   struct vmci_queue *consume_q ;
   struct vmci_queue_header saved_produce_q ;
   struct vmci_queue_header saved_consume_q ;
   int (*wakeup_cb)(void * ) ;
   void *client_data ;
   void *local_mem ;
};
struct qp_guest_endpoint {
   struct vmci_resource resource ;
   struct qp_entry qp ;
   u64 num_ppns ;
   void *produce_q ;
   void *consume_q ;
   struct ppn_set ppn_set ;
};
struct qp_list {
   struct list_head head ;
   struct mutex mutex ;
};
enum hrtimer_restart;
struct vmci_hash_table {
   spinlock_t lock ;
   struct hlist_head entries[128U] ;
};
union __anonunion___u_207 {
   struct hlist_node *__val ;
   char __c[1U] ;
};
union __anonunion___u_209 {
   struct hlist_node *__val ;
   char __c[1U] ;
};
enum hrtimer_restart;
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static void __read_once_size(void const volatile *p , void *res , int size )
{
  {
  switch (size) {
  case 1:
  *((__u8 *)res) = *((__u8 volatile *)p);
  goto ldv_880;
  case 2:
  *((__u16 *)res) = *((__u16 volatile *)p);
  goto ldv_880;
  case 4:
  *((__u32 *)res) = *((__u32 volatile *)p);
  goto ldv_880;
  case 8:
  *((__u64 *)res) = *((__u64 volatile *)p);
  goto ldv_880;
  default:
  __asm__ volatile ("": : : "memory");
  memcpy(res, (void const *)p, (unsigned long )size);
  __asm__ volatile ("": : : "memory");
  }
  ldv_880: ;
  return;
}
}
__inline static int no_printk(char const *fmt , ...)
{
  {
  return (0);
}
}
extern int printk(char const * , ...) ;
void *ldv_err_ptr(long error ) ;
extern void __bad_percpu_size(void) ;
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
extern void __list_del_entry(struct list_head * ) ;
extern void list_del(struct list_head * ) ;
extern void *memset(void * , int , size_t ) ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static void *ERR_PTR(long error ) ;
extern void __xadd_wrong_size(void) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static int atomic_sub_and_test(int i , atomic_t *v )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; subl %2, %0; sete %1": "+m" (v->counter),
                       "=qm" (c): "er" (i): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
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
  goto ldv_5596;
  case 2UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5596;
  case 4UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5596;
  case 8UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5596;
  default:
  __xadd_wrong_size();
  }
  ldv_5596: ;
  return (__ret + i);
}
}
extern void lock_acquire(struct lockdep_map * , unsigned int , int , int , int ,
                         struct lockdep_map * , unsigned long ) ;
extern void lock_release(struct lockdep_map * , int , unsigned long ) ;
extern void lockdep_rcu_suspicious(char const * , int const , char const * ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 ) ;
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
__inline static long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
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
  goto ldv_6623;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6623;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6623;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_6623;
  default:
  __bad_percpu_size();
  }
  ldv_6623: ;
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
  goto ldv_6635;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6635;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6635;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6635;
  default:
  __bad_percpu_size();
  }
  ldv_6635: ;
  return;
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField17.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->__annonCompField17.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->__annonCompField17.rlock);
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void synchronize_sched(void) ;
__inline static void __rcu_read_lock(void)
{
  {
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void __rcu_read_unlock(void)
{
  {
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  return;
}
}
__inline static void synchronize_rcu(void)
{
  {
  synchronize_sched();
  return;
}
}
extern bool rcu_is_watching(void) ;
__inline static void rcu_lock_acquire(struct lockdep_map *map )
{
  {
  lock_acquire(map, 0U, 0, 2, 0, (struct lockdep_map *)0, 0UL);
  return;
}
}
__inline static void rcu_lock_release(struct lockdep_map *map )
{
  {
  lock_release(map, 1, 0UL);
  return;
}
}
extern struct lockdep_map rcu_lock_map ;
extern int debug_lockdep_rcu_enabled(void) ;
__inline static void rcu_read_lock(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  __rcu_read_lock();
  rcu_lock_acquire(& rcu_lock_map);
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_watching();
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 849, "rcu_read_lock() used illegally while idle");
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void rcu_read_unlock(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_watching();
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 900, "rcu_read_unlock() used illegally while idle");
    } else {
    }
  } else {
  }
  __rcu_read_unlock();
  rcu_lock_release(& rcu_lock_map);
  return;
}
}
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
__inline static uid_t __kuid_val(kuid_t uid )
{
  {
  return (uid.val);
}
}
__inline static bool uid_eq(kuid_t left , kuid_t right )
{
  uid_t tmp ;
  uid_t tmp___0 ;
  {
  tmp = __kuid_val(left);
  tmp___0 = __kuid_val(right);
  return (tmp == tmp___0);
}
}
extern void __list_add_rcu(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail_rcu(struct list_head *new , struct list_head *head )
{
  {
  __list_add_rcu(new, head->prev, head);
  return;
}
}
__inline static void list_del_rcu(struct list_head *entry )
{
  {
  __list_del_entry(entry);
  entry->prev = (struct list_head *)-2401263026316508672L;
  return;
}
}
extern void __put_cred(struct cred * ) ;
extern void __invalid_creds(struct cred const * , char const * , unsigned int ) ;
extern bool creds_are_invalid(struct cred const * ) ;
__inline static void __validate_creds(struct cred const *cred , char const *file ,
                                      unsigned int line )
{
  bool tmp ;
  long tmp___0 ;
  {
  tmp = creds_are_invalid(cred);
  tmp___0 = ldv__builtin_expect((long )tmp, 0L);
  if (tmp___0 != 0L) {
    __invalid_creds(cred, file, line);
  } else {
  }
  return;
}
}
__inline static struct cred *get_new_cred(struct cred *cred )
{
  {
  atomic_inc(& cred->usage);
  return (cred);
}
}
__inline static struct cred const *get_cred(struct cred const *cred )
{
  struct cred *nonconst_cred ;
  struct cred *tmp ;
  {
  nonconst_cred = (struct cred *)cred;
  __validate_creds(cred, "include/linux/cred.h", 244U);
  tmp = get_new_cred(nonconst_cred);
  return ((struct cred const *)tmp);
}
}
__inline static void put_cred(struct cred const *_cred )
{
  struct cred *cred ;
  int tmp ;
  {
  cred = (struct cred *)_cred;
  __validate_creds((struct cred const *)cred, "include/linux/cred.h", 263U);
  tmp = atomic_dec_and_test(& cred->usage);
  if (tmp != 0) {
    __put_cred(cred);
  } else {
  }
  return;
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
int ldv_irq_2_0 = 0;
int ldv_irq_2_2 = 0;
int ldv_irq_2_1 = 0;
int ldv_irq_1_3 = 0;
int ldv_irq_1_0 = 0;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_1 = 0;
int ldv_irq_2_3 = 0;
void activate_work_3(struct work_struct *work , int state ) ;
void call_and_disable_all_3(int state ) ;
__inline static bool vmci_handle_is_equal(struct vmci_handle h1 , struct vmci_handle h2 )
{
  {
  return ((bool )(h1.context == h2.context && h1.resource == h2.resource));
}
}
static struct vmci_handle const VMCI_INVALID_HANDLE = {4294967295U, 4294967295U};
__inline static bool vmci_handle_is_invalid(struct vmci_handle h )
{
  bool tmp ;
  {
  tmp = vmci_handle_is_equal(h, VMCI_INVALID_HANDLE);
  return (tmp);
}
}
bool vmci_is_context_owner(u32 context_id , kuid_t uid ) ;
u32 vmci_context_get_priv_flags(u32 context_id ) ;
extern void put_page(struct page * ) ;
__inline static void kunmap(struct page *page )
{
  {
  return;
}
}
__inline static void kref_init(struct kref *kref )
{
  {
  atomic_set(& kref->refcount, 1);
  return;
}
}
__inline static void kref_get(struct kref *kref )
{
  bool __warned ;
  int __ret_warn_once ;
  int tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = atomic_add_return(1, & kref->refcount);
  __ret_warn_once = tmp <= 1;
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("include/linux/kref.h", 47);
    } else {
    }
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  return;
}
}
__inline static int kref_sub(struct kref *kref , unsigned int count , void (*release)(struct kref * ) )
{
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  {
  __ret_warn_on = (unsigned long )release == (unsigned long )((void (*)(struct kref * ))0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("include/linux/kref.h", 71);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___0 = atomic_sub_and_test((int )count, & kref->refcount);
  if (tmp___0 != 0) {
    (*release)(kref);
    return (1);
  } else {
  }
  return (0);
}
}
__inline static int kref_put(struct kref *kref , void (*release)(struct kref * ) )
{
  int tmp ;
  {
  tmp = kref_sub(kref, 1U, release);
  return (tmp);
}
}
struct vmci_handle_arr *vmci_handle_arr_create(size_t capacity ) ;
void vmci_handle_arr_destroy(struct vmci_handle_arr *array ) ;
void vmci_handle_arr_append_entry(struct vmci_handle_arr **array_ptr , struct vmci_handle handle ) ;
struct vmci_handle vmci_handle_arr_remove_entry(struct vmci_handle_arr *array , struct vmci_handle entry_handle ) ;
struct vmci_handle vmci_handle_arr_remove_tail(struct vmci_handle_arr *array ) ;
struct vmci_handle vmci_handle_arr_get_entry(struct vmci_handle_arr const *array ,
                                             size_t index ) ;
bool vmci_handle_arr_has_entry(struct vmci_handle_arr const *array , struct vmci_handle entry_handle ) ;
__inline static size_t vmci_handle_arr_get_size(struct vmci_handle_arr const *array )
{
  {
  return ((size_t )array->size);
}
}
int vmci_datagram_dispatch(u32 context_id , struct vmci_datagram *dg , bool from_guest ) ;
__inline static bool vmci_deny_interaction(u32 part_one , u32 part_two )
{
  {
  return ((bool )(((int )part_one & 1 && (part_two & 2U) == 0U) || ((int )part_two & 1 && (part_one & 2U) == 0U)));
}
}
struct vmci_ctx *vmci_ctx_create(u32 cid , u32 priv_flags , uintptr_t event_hnd ,
                                 int user_version , struct cred const *cred ) ;
void vmci_ctx_destroy(struct vmci_ctx *context ) ;
bool vmci_ctx_supports_host_qp(struct vmci_ctx *context ) ;
int vmci_ctx_enqueue_datagram(u32 cid , struct vmci_datagram *dg ) ;
int vmci_ctx_dequeue_datagram(struct vmci_ctx *context , size_t *max_size , struct vmci_datagram **dg ) ;
int vmci_ctx_pending_datagrams(u32 cid , u32 *pending ) ;
struct vmci_ctx *vmci_ctx_get(u32 cid ) ;
void vmci_ctx_put(struct vmci_ctx *context ) ;
bool vmci_ctx_exists(u32 cid ) ;
int vmci_ctx_add_notification(u32 context_id , u32 remote_cid ) ;
int vmci_ctx_remove_notification(u32 context_id , u32 remote_cid ) ;
int vmci_ctx_get_chkpt_state(u32 context_id , u32 cpt_type , u32 *buf_size , void **pbuf ) ;
int vmci_ctx_set_chkpt_state(u32 context_id , u32 cpt_type , u32 buf_size , void *cpt_buf ) ;
int vmci_ctx_qp_create(struct vmci_ctx *context , struct vmci_handle handle ) ;
int vmci_ctx_qp_destroy(struct vmci_ctx *context , struct vmci_handle handle ) ;
bool vmci_ctx_qp_exists(struct vmci_ctx *context , struct vmci_handle handle ) ;
void vmci_ctx_check_signal_notify(struct vmci_ctx *context ) ;
void vmci_ctx_unset_notify(struct vmci_ctx *context ) ;
int vmci_ctx_dbell_create(u32 context_id , struct vmci_handle handle ) ;
int vmci_ctx_dbell_destroy(u32 context_id , struct vmci_handle handle ) ;
int vmci_ctx_dbell_destroy_all(u32 context_id ) ;
int vmci_ctx_notify_dbell(u32 src_cid , struct vmci_handle handle , u32 src_priv_flags ) ;
int vmci_ctx_rcv_notifications_get(u32 context_id , struct vmci_handle_arr **db_handle_array ,
                                   struct vmci_handle_arr **qp_handle_array ) ;
void vmci_ctx_rcv_notifications_release(u32 context_id , struct vmci_handle_arr *db_handle_array ,
                                        struct vmci_handle_arr *qp_handle_array ,
                                        bool success ) ;
int vmci_qp_broker_detach(struct vmci_handle handle , struct vmci_ctx *context ) ;
bool vmci_host_code_active(void) ;
int vmci_dbell_host_context_notify(u32 src_cid , struct vmci_handle handle ) ;
int vmci_dbell_get_priv_flags(struct vmci_handle handle , u32 *priv_flags ) ;
static struct __anonstruct_ctx_list_250 ctx_list = {{& ctx_list.head, & ctx_list.head}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1,
                                           {0, {0, 0}, "ctx_list.lock", 0, 0UL}}}}};
static bool ctx_dummy_notify ;
static void ctx_signal_notify(struct vmci_ctx *context )
{
  {
  *(context->notify) = 1;
  return;
}
}
static void ctx_clear_notify(struct vmci_ctx *context )
{
  {
  *(context->notify) = 0;
  return;
}
}
static void ctx_clear_notify_call(struct vmci_ctx *context )
{
  size_t tmp ;
  {
  if (context->pending_datagrams == 0U) {
    tmp = vmci_handle_arr_get_size((struct vmci_handle_arr const *)context->pending_doorbell_array);
    if (tmp == 0UL) {
      ctx_clear_notify(context);
    } else {
    }
  } else {
  }
  return;
}
}
void vmci_ctx_check_signal_notify(struct vmci_ctx *context )
{
  {
  spin_lock(& context->lock);
  if (context->pending_datagrams != 0U) {
    ctx_signal_notify(context);
  } else {
  }
  spin_unlock(& context->lock);
  return;
}
}
struct vmci_ctx *vmci_ctx_create(u32 cid , u32 priv_flags , uintptr_t event_hnd ,
                                 int user_version , struct cred const *cred )
{
  struct vmci_ctx *context ;
  int error ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  u32 _max1 ;
  unsigned int _max2 ;
  bool tmp___0 ;
  void *tmp___1 ;
  {
  if (cid == 4294967295U) {
    no_printk("\017Invalid context ID for VMCI context\n");
    error = -22;
    goto err_out;
  } else {
  }
  if ((priv_flags & 4294967292U) != 0U) {
    no_printk("\017Invalid flag (flags=0x%x) for VMCI context\n", priv_flags);
    error = -22;
    goto err_out;
  } else {
  }
  if (user_version == 0) {
    no_printk("\017Invalid suer_version %d\n", user_version);
    error = -22;
    goto err_out;
  } else {
  }
  tmp = kzalloc(304UL, 208U);
  context = (struct vmci_ctx *)tmp;
  if ((unsigned long )context == (unsigned long )((struct vmci_ctx *)0)) {
    printk("\fFailed to allocate memory for VMCI context\n");
    error = -22;
    goto err_out;
  } else {
  }
  kref_init(& context->kref);
  spinlock_check(& context->lock);
  __raw_spin_lock_init(& context->lock.__annonCompField17.rlock, "&(&context->lock)->rlock",
                       & __key);
  INIT_LIST_HEAD(& context->list_item);
  INIT_LIST_HEAD(& context->datagram_queue);
  INIT_LIST_HEAD(& context->notifier_list);
  __init_waitqueue_head(& context->host_context.wait_queue, "&context->host_context.wait_queue",
                        & __key___0);
  context->queue_pair_array = vmci_handle_arr_create(0UL);
  if ((unsigned long )context->queue_pair_array == (unsigned long )((struct vmci_handle_arr *)0)) {
    error = -12;
    goto err_free_ctx;
  } else {
  }
  context->doorbell_array = vmci_handle_arr_create(0UL);
  if ((unsigned long )context->doorbell_array == (unsigned long )((struct vmci_handle_arr *)0)) {
    error = -12;
    goto err_free_qp_array;
  } else {
  }
  context->pending_doorbell_array = vmci_handle_arr_create(0UL);
  if ((unsigned long )context->pending_doorbell_array == (unsigned long )((struct vmci_handle_arr *)0)) {
    error = -12;
    goto err_free_db_array;
  } else {
  }
  context->user_version = user_version;
  context->priv_flags = priv_flags;
  if ((unsigned long )cred != (unsigned long )((struct cred const *)0)) {
    context->cred = get_cred(cred);
  } else {
  }
  context->notify = & ctx_dummy_notify;
  context->notify_page = (struct page *)0;
  spin_lock(& ctx_list.lock);
  goto ldv_29244;
  ldv_29243:
  _max1 = cid;
  _max2 = 15U;
  cid = (_max1 > _max2 ? _max1 : _max2) + 1U;
  if (cid == 4294967295U) {
    cid = 16U;
  } else {
  }
  ldv_29244:
  tmp___0 = vmci_ctx_exists(cid);
  if ((int )tmp___0) {
    goto ldv_29243;
  } else {
  }
  context->cid = cid;
  list_add_tail_rcu(& context->list_item, & ctx_list.head);
  spin_unlock(& ctx_list.lock);
  return (context);
  err_free_db_array:
  vmci_handle_arr_destroy(context->doorbell_array);
  err_free_qp_array:
  vmci_handle_arr_destroy(context->queue_pair_array);
  err_free_ctx:
  kfree((void const *)context);
  err_out:
  tmp___1 = ERR_PTR((long )error);
  return ((struct vmci_ctx *)tmp___1);
}
}
void vmci_ctx_destroy(struct vmci_ctx *context )
{
  {
  spin_lock(& ctx_list.lock);
  list_del_rcu(& context->list_item);
  spin_unlock(& ctx_list.lock);
  synchronize_rcu();
  vmci_ctx_put(context);
  return;
}
}
static int ctx_fire_notification(u32 context_id , u32 priv_flags )
{
  u32 i ;
  u32 array_size ;
  struct vmci_ctx *sub_ctx ;
  struct vmci_handle_arr *subscriber_array___0 ;
  struct vmci_handle context_handle ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_252 __u ;
  int tmp ;
  struct vmci_handle_list *node ;
  bool tmp___0 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_254 __u___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  struct vmci_handle __constr_expr_0 ;
  struct list_head *__ptr___1 ;
  struct list_head const *__mptr___1 ;
  struct list_head *________p1___1 ;
  struct list_head *_________p1___1 ;
  union __anonunion___u_256 __u___1 ;
  int tmp___4 ;
  struct list_head *__ptr___2 ;
  struct list_head const *__mptr___2 ;
  struct list_head *________p1___2 ;
  struct list_head *_________p1___2 ;
  union __anonunion___u_258 __u___2 ;
  int tmp___5 ;
  size_t tmp___6 ;
  int result ;
  struct vmci_event_ctx ev ;
  struct vmci_handle __constr_expr_1 ;
  {
  context_handle.context = context_id;
  context_handle.resource = 0U;
  subscriber_array___0 = vmci_handle_arr_create(0UL);
  if ((unsigned long )subscriber_array___0 == (unsigned long )((struct vmci_handle_arr *)0)) {
    return (-3);
  } else {
  }
  rcu_read_lock();
  __ptr = ctx_list.head.next;
  __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  __mptr = (struct list_head const *)________p1;
  sub_ctx = (struct vmci_ctx *)__mptr;
  goto ldv_29323;
  ldv_29322:
  tmp___0 = vmci_deny_interaction(priv_flags, sub_ctx->priv_flags);
  if ((int )tmp___0) {
    goto ldv_29288;
  } else {
  }
  __ptr___0 = sub_ctx->notifier_list.next;
  __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___1 = debug_lockdep_rcu_enabled();
  __mptr___0 = (struct list_head const *)________p1___0;
  node = (struct vmci_handle_list *)__mptr___0;
  goto ldv_29320;
  ldv_29319:
  tmp___2 = vmci_handle_is_equal(node->handle, context_handle);
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    goto ldv_29317;
  } else {
  }
  __constr_expr_0.context = sub_ctx->cid;
  __constr_expr_0.resource = 0U;
  vmci_handle_arr_append_entry(& subscriber_array___0, __constr_expr_0);
  ldv_29317:
  __ptr___1 = node->node.next;
  __read_once_size((void const volatile *)(& __ptr___1), (void *)(& __u___1.__c),
                   8);
  _________p1___1 = __u___1.__val;
  ________p1___1 = _________p1___1;
  tmp___4 = debug_lockdep_rcu_enabled();
  __mptr___1 = (struct list_head const *)________p1___1;
  node = (struct vmci_handle_list *)__mptr___1;
  ldv_29320: ;
  if ((unsigned long )(& node->node) != (unsigned long )(& sub_ctx->notifier_list)) {
    goto ldv_29319;
  } else {
  }
  ldv_29288:
  __ptr___2 = sub_ctx->list_item.next;
  __read_once_size((void const volatile *)(& __ptr___2), (void *)(& __u___2.__c),
                   8);
  _________p1___2 = __u___2.__val;
  ________p1___2 = _________p1___2;
  tmp___5 = debug_lockdep_rcu_enabled();
  __mptr___2 = (struct list_head const *)________p1___2;
  sub_ctx = (struct vmci_ctx *)__mptr___2;
  ldv_29323: ;
  if ((unsigned long )sub_ctx != (unsigned long )(& ctx_list)) {
    goto ldv_29322;
  } else {
  }
  rcu_read_unlock();
  tmp___6 = vmci_handle_arr_get_size((struct vmci_handle_arr const *)subscriber_array___0);
  array_size = (u32 )tmp___6;
  i = 0U;
  goto ldv_29329;
  ldv_29328:
  ev.msg.hdr.dst = vmci_handle_arr_get_entry((struct vmci_handle_arr const *)subscriber_array___0,
                                             (size_t )i);
  __constr_expr_1.context = 0U;
  __constr_expr_1.resource = 0U;
  ev.msg.hdr.src = __constr_expr_1;
  ev.msg.hdr.payload_size = 16ULL;
  ev.msg.event_data.event = 1U;
  ev.payload.context_id = context_id;
  result = vmci_datagram_dispatch(0U, & ev.msg.hdr, 0);
  if (result < 0) {
    no_printk("\017Failed to enqueue event datagram (type=%d) for context (ID=0x%x)\n",
              ev.msg.event_data.event, ev.msg.hdr.dst.context);
  } else {
  }
  i = i + 1U;
  ldv_29329: ;
  if (i < array_size) {
    goto ldv_29328;
  } else {
  }
  vmci_handle_arr_destroy(subscriber_array___0);
  return (0);
}
}
int vmci_ctx_pending_datagrams(u32 cid , u32 *pending )
{
  struct vmci_ctx *context ;
  {
  context = vmci_ctx_get(cid);
  if ((unsigned long )context == (unsigned long )((struct vmci_ctx *)0)) {
    return (-2);
  } else {
  }
  spin_lock(& context->lock);
  if ((unsigned long )pending != (unsigned long )((u32 *)0U)) {
    *pending = context->pending_datagrams;
  } else {
  }
  spin_unlock(& context->lock);
  vmci_ctx_put(context);
  return (0);
}
}
int vmci_ctx_enqueue_datagram(u32 cid , struct vmci_datagram *dg )
{
  struct vmci_datagram_queue_entry *dq_entry ;
  struct vmci_ctx *context ;
  struct vmci_handle dg_src ;
  size_t vmci_dg_size ;
  void *tmp ;
  struct vmci_handle __constr_expr_0 ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  vmci_dg_size = (unsigned long )dg->payload_size + 24UL;
  if (vmci_dg_size > 69632UL) {
    no_printk("\017Datagram too large (bytes=%Zu)\n", vmci_dg_size);
    return (-2);
  } else {
  }
  context = vmci_ctx_get(cid);
  if ((unsigned long )context == (unsigned long )((struct vmci_ctx *)0)) {
    no_printk("\017Invalid context (ID=0x%x)\n", cid);
    return (-2);
  } else {
  }
  tmp = kmalloc(32UL, 208U);
  dq_entry = (struct vmci_datagram_queue_entry *)tmp;
  if ((unsigned long )dq_entry == (unsigned long )((struct vmci_datagram_queue_entry *)0)) {
    printk("\fFailed to allocate memory for datagram\n");
    vmci_ctx_put(context);
    return (-3);
  } else {
  }
  dq_entry->dg = dg;
  dq_entry->dg_size = vmci_dg_size;
  dg_src = dg->src;
  INIT_LIST_HEAD(& dq_entry->list_item);
  spin_lock(& context->lock);
  if (context->datagram_queue_size + vmci_dg_size > 139263UL) {
    __constr_expr_0.context = 0U;
    __constr_expr_0.resource = 0U;
    tmp___0 = vmci_handle_is_equal(dg_src, __constr_expr_0);
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1 || context->datagram_queue_size + vmci_dg_size > 188415UL) {
      spin_unlock(& context->lock);
      vmci_ctx_put(context);
      kfree((void const *)dq_entry);
      no_printk("\017Context (ID=0x%x) receive queue is full\n", cid);
      return (-19);
    } else {
    }
  } else {
  }
  list_add(& dq_entry->list_item, & context->datagram_queue);
  context->pending_datagrams = context->pending_datagrams + 1U;
  context->datagram_queue_size = context->datagram_queue_size + vmci_dg_size;
  ctx_signal_notify(context);
  __wake_up(& context->host_context.wait_queue, 3U, 1, (void *)0);
  spin_unlock(& context->lock);
  vmci_ctx_put(context);
  return ((int )vmci_dg_size);
}
}
bool vmci_ctx_exists(u32 cid )
{
  struct vmci_ctx *context ;
  bool exists ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_260 __u ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_262 __u___0 ;
  int tmp___0 ;
  {
  exists = 0;
  rcu_read_lock();
  __ptr = ctx_list.head.next;
  __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  __mptr = (struct list_head const *)________p1;
  context = (struct vmci_ctx *)__mptr;
  goto ldv_29380;
  ldv_29379: ;
  if (context->cid == cid) {
    exists = 1;
    goto ldv_29378;
  } else {
  }
  __ptr___0 = context->list_item.next;
  __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___0 = debug_lockdep_rcu_enabled();
  __mptr___0 = (struct list_head const *)________p1___0;
  context = (struct vmci_ctx *)__mptr___0;
  ldv_29380: ;
  if ((unsigned long )context != (unsigned long )(& ctx_list)) {
    goto ldv_29379;
  } else {
  }
  ldv_29378:
  rcu_read_unlock();
  return (exists);
}
}
struct vmci_ctx *vmci_ctx_get(u32 cid )
{
  struct vmci_ctx *c ;
  struct vmci_ctx *context ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_264 __u ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_266 __u___0 ;
  int tmp___0 ;
  {
  context = (struct vmci_ctx *)0;
  if (cid == 4294967295U) {
    return ((struct vmci_ctx *)0);
  } else {
  }
  rcu_read_lock();
  __ptr = ctx_list.head.next;
  __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  __mptr = (struct list_head const *)________p1;
  c = (struct vmci_ctx *)__mptr;
  goto ldv_29416;
  ldv_29415: ;
  if (c->cid == cid) {
    context = c;
    kref_get(& context->kref);
    goto ldv_29414;
  } else {
  }
  __ptr___0 = c->list_item.next;
  __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___0 = debug_lockdep_rcu_enabled();
  __mptr___0 = (struct list_head const *)________p1___0;
  c = (struct vmci_ctx *)__mptr___0;
  ldv_29416: ;
  if ((unsigned long )c != (unsigned long )(& ctx_list)) {
    goto ldv_29415;
  } else {
  }
  ldv_29414:
  rcu_read_unlock();
  return (context);
}
}
static void ctx_free_ctx(struct kref *kref )
{
  struct vmci_ctx *context ;
  struct kref const *__mptr ;
  struct vmci_datagram_queue_entry *dq_entry ;
  struct vmci_datagram_queue_entry *dq_entry_tmp ;
  struct vmci_handle temp_handle ;
  struct vmci_handle_list *notifier ;
  struct vmci_handle_list *tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int __ret_warn_on ;
  long tmp___3 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  struct list_head const *__mptr___5 ;
  {
  __mptr = (struct kref const *)kref;
  context = (struct vmci_ctx *)__mptr + 0xffffffffffffffecUL;
  ctx_fire_notification(context->cid, context->priv_flags);
  temp_handle = vmci_handle_arr_get_entry((struct vmci_handle_arr const *)context->queue_pair_array,
                                          0UL);
  goto ldv_29429;
  ldv_29428:
  tmp___0 = vmci_qp_broker_detach(temp_handle, context);
  if (tmp___0 < 0) {
    vmci_handle_arr_remove_entry(context->queue_pair_array, temp_handle);
  } else {
  }
  temp_handle = vmci_handle_arr_get_entry((struct vmci_handle_arr const *)context->queue_pair_array,
                                          0UL);
  ldv_29429:
  tmp___1 = vmci_handle_is_equal(temp_handle, VMCI_INVALID_HANDLE);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    goto ldv_29428;
  } else {
  }
  __mptr___0 = (struct list_head const *)context->datagram_queue.next;
  dq_entry = (struct vmci_datagram_queue_entry *)__mptr___0;
  __mptr___1 = (struct list_head const *)dq_entry->list_item.next;
  dq_entry_tmp = (struct vmci_datagram_queue_entry *)__mptr___1;
  goto ldv_29440;
  ldv_29439:
  __ret_warn_on = dq_entry->dg_size != (unsigned long )(dq_entry->dg)->payload_size + 24UL;
  tmp___3 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___3 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_context.c",
                       466);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  list_del(& dq_entry->list_item);
  kfree((void const *)dq_entry->dg);
  kfree((void const *)dq_entry);
  dq_entry = dq_entry_tmp;
  __mptr___2 = (struct list_head const *)dq_entry_tmp->list_item.next;
  dq_entry_tmp = (struct vmci_datagram_queue_entry *)__mptr___2;
  ldv_29440: ;
  if ((unsigned long )(& dq_entry->list_item) != (unsigned long )(& context->datagram_queue)) {
    goto ldv_29439;
  } else {
  }
  __mptr___3 = (struct list_head const *)context->notifier_list.next;
  notifier = (struct vmci_handle_list *)__mptr___3;
  __mptr___4 = (struct list_head const *)notifier->node.next;
  tmp = (struct vmci_handle_list *)__mptr___4;
  goto ldv_29449;
  ldv_29448:
  list_del(& notifier->node);
  kfree((void const *)notifier);
  notifier = tmp;
  __mptr___5 = (struct list_head const *)tmp->node.next;
  tmp = (struct vmci_handle_list *)__mptr___5;
  ldv_29449: ;
  if ((unsigned long )(& notifier->node) != (unsigned long )(& context->notifier_list)) {
    goto ldv_29448;
  } else {
  }
  vmci_handle_arr_destroy(context->queue_pair_array);
  vmci_handle_arr_destroy(context->doorbell_array);
  vmci_handle_arr_destroy(context->pending_doorbell_array);
  vmci_ctx_unset_notify(context);
  if ((unsigned long )context->cred != (unsigned long )((struct cred const *)0)) {
    put_cred(context->cred);
  } else {
  }
  kfree((void const *)context);
  return;
}
}
void vmci_ctx_put(struct vmci_ctx *context )
{
  {
  kref_put(& context->kref, & ctx_free_ctx);
  return;
}
}
int vmci_ctx_dequeue_datagram(struct vmci_ctx *context , size_t *max_size , struct vmci_datagram **dg )
{
  struct vmci_datagram_queue_entry *dq_entry ;
  struct list_head *list_item ;
  int rv ;
  struct list_head const *__mptr ;
  struct vmci_datagram_queue_entry *next_entry ;
  struct list_head const *__mptr___0 ;
  {
  spin_lock(& context->lock);
  if (context->pending_datagrams == 0U) {
    ctx_clear_notify_call(context);
    spin_unlock(& context->lock);
    no_printk("\017No datagrams pending\n");
    return (-6);
  } else {
  }
  list_item = context->datagram_queue.next;
  __mptr = (struct list_head const *)list_item;
  dq_entry = (struct vmci_datagram_queue_entry *)__mptr;
  if (*max_size < dq_entry->dg_size) {
    *max_size = dq_entry->dg_size;
    spin_unlock(& context->lock);
    no_printk("\017Caller\'s buffer should be at least (size=%u bytes)\n", (unsigned int )*max_size);
    return (-3);
  } else {
  }
  list_del(list_item);
  context->pending_datagrams = context->pending_datagrams - 1U;
  context->datagram_queue_size = context->datagram_queue_size - dq_entry->dg_size;
  if (context->pending_datagrams == 0U) {
    ctx_clear_notify_call(context);
    rv = 0;
  } else {
    list_item = context->datagram_queue.next;
    __mptr___0 = (struct list_head const *)list_item;
    next_entry = (struct vmci_datagram_queue_entry *)__mptr___0;
    rv = (int )next_entry->dg_size;
  }
  spin_unlock(& context->lock);
  *dg = dq_entry->dg;
  dq_entry->dg = (struct vmci_datagram *)0;
  kfree((void const *)dq_entry);
  return (rv);
}
}
void vmci_ctx_unset_notify(struct vmci_ctx *context )
{
  struct page *notify_page ;
  {
  spin_lock(& context->lock);
  notify_page = context->notify_page;
  context->notify = & ctx_dummy_notify;
  context->notify_page = (struct page *)0;
  spin_unlock(& context->lock);
  if ((unsigned long )notify_page != (unsigned long )((struct page *)0)) {
    kunmap(notify_page);
    put_page(notify_page);
  } else {
  }
  return;
}
}
int vmci_ctx_add_notification(u32 context_id , u32 remote_cid )
{
  struct vmci_ctx *context ;
  struct vmci_handle_list *notifier ;
  struct vmci_handle_list *n ;
  int result ;
  bool exists ;
  void *tmp ;
  struct vmci_handle __constr_expr_0 ;
  struct list_head const *__mptr ;
  bool tmp___0 ;
  struct list_head const *__mptr___0 ;
  {
  exists = 0;
  context = vmci_ctx_get(context_id);
  if ((unsigned long )context == (unsigned long )((struct vmci_ctx *)0)) {
    return (-21);
  } else {
  }
  if ((context_id != 4294967295U && context_id > 2U) && (remote_cid != 4294967295U && remote_cid > 2U)) {
    no_printk("\017Context removed notifications for other VMs not supported (src=0x%x, remote=0x%x)\n",
              context_id, remote_cid);
    result = -10;
    goto out;
  } else {
  }
  if ((int )context->priv_flags & 1) {
    result = -7;
    goto out;
  } else {
  }
  tmp = kmalloc(24UL, 208U);
  notifier = (struct vmci_handle_list *)tmp;
  if ((unsigned long )notifier == (unsigned long )((struct vmci_handle_list *)0)) {
    result = -3;
    goto out;
  } else {
  }
  INIT_LIST_HEAD(& notifier->node);
  __constr_expr_0.context = remote_cid;
  __constr_expr_0.resource = 0U;
  notifier->handle = __constr_expr_0;
  spin_lock(& context->lock);
  __mptr = (struct list_head const *)context->notifier_list.next;
  n = (struct vmci_handle_list *)__mptr;
  goto ldv_29488;
  ldv_29487:
  tmp___0 = vmci_handle_is_equal(n->handle, notifier->handle);
  if ((int )tmp___0) {
    exists = 1;
    goto ldv_29486;
  } else {
  }
  __mptr___0 = (struct list_head const *)n->node.next;
  n = (struct vmci_handle_list *)__mptr___0;
  ldv_29488: ;
  if ((unsigned long )(& n->node) != (unsigned long )(& context->notifier_list)) {
    goto ldv_29487;
  } else {
  }
  ldv_29486: ;
  if ((int )exists) {
    kfree((void const *)notifier);
    result = -22;
  } else {
    list_add_tail_rcu(& notifier->node, & context->notifier_list);
    context->n_notifiers = context->n_notifiers + 1U;
    result = 0;
  }
  spin_unlock(& context->lock);
  out:
  vmci_ctx_put(context);
  return (result);
}
}
int vmci_ctx_remove_notification(u32 context_id , u32 remote_cid )
{
  struct vmci_ctx *context ;
  struct vmci_handle_list *notifier ;
  struct vmci_handle_list *tmp ;
  struct vmci_handle handle ;
  bool found ;
  struct vmci_handle __constr_expr_0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  bool tmp___0 ;
  struct list_head const *__mptr___1 ;
  {
  found = 0;
  context = vmci_ctx_get(context_id);
  if ((unsigned long )context == (unsigned long )((struct vmci_ctx *)0)) {
    return (-21);
  } else {
  }
  __constr_expr_0.context = remote_cid;
  __constr_expr_0.resource = 0U;
  handle = __constr_expr_0;
  spin_lock(& context->lock);
  __mptr = (struct list_head const *)context->notifier_list.next;
  notifier = (struct vmci_handle_list *)__mptr;
  __mptr___0 = (struct list_head const *)notifier->node.next;
  tmp = (struct vmci_handle_list *)__mptr___0;
  goto ldv_29507;
  ldv_29506:
  tmp___0 = vmci_handle_is_equal(notifier->handle, handle);
  if ((int )tmp___0) {
    list_del_rcu(& notifier->node);
    context->n_notifiers = context->n_notifiers - 1U;
    found = 1;
    goto ldv_29505;
  } else {
  }
  notifier = tmp;
  __mptr___1 = (struct list_head const *)tmp->node.next;
  tmp = (struct vmci_handle_list *)__mptr___1;
  ldv_29507: ;
  if ((unsigned long )(& notifier->node) != (unsigned long )(& context->notifier_list)) {
    goto ldv_29506;
  } else {
  }
  ldv_29505:
  spin_unlock(& context->lock);
  if ((int )found) {
    synchronize_rcu();
    kfree((void const *)notifier);
  } else {
  }
  vmci_ctx_put(context);
  return ((int )found ? 0 : -21);
}
}
static int vmci_ctx_get_chkpt_notifiers(struct vmci_ctx *context , u32 *buf_size ,
                                        void **pbuf )
{
  u32 *notifiers ;
  size_t data_size ;
  struct vmci_handle_list *entry ;
  int i ;
  void *tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  {
  i = 0;
  if (context->n_notifiers == 0U) {
    *buf_size = 0U;
    *pbuf = (void *)0;
    return (0);
  } else {
  }
  data_size = (unsigned long )context->n_notifiers * 4UL;
  if ((size_t )*buf_size < data_size) {
    *buf_size = (u32 )data_size;
    return (-5);
  } else {
  }
  tmp = kmalloc(data_size, 32U);
  notifiers = (u32 *)tmp;
  if ((unsigned long )notifiers == (unsigned long )((u32 *)0U)) {
    return (-3);
  } else {
  }
  __mptr = (struct list_head const *)context->notifier_list.next;
  entry = (struct vmci_handle_list *)__mptr;
  goto ldv_29522;
  ldv_29521:
  tmp___0 = i;
  i = i + 1;
  *(notifiers + (unsigned long )tmp___0) = entry->handle.context;
  __mptr___0 = (struct list_head const *)entry->node.next;
  entry = (struct vmci_handle_list *)__mptr___0;
  ldv_29522: ;
  if ((unsigned long )(& entry->node) != (unsigned long )(& context->notifier_list)) {
    goto ldv_29521;
  } else {
  }
  *buf_size = (u32 )data_size;
  *pbuf = (void *)notifiers;
  return (0);
}
}
static int vmci_ctx_get_chkpt_doorbells(struct vmci_ctx *context , u32 *buf_size ,
                                        void **pbuf )
{
  struct dbell_cpt_state *dbells ;
  size_t n_doorbells ;
  int i ;
  size_t data_size ;
  void *tmp ;
  {
  n_doorbells = vmci_handle_arr_get_size((struct vmci_handle_arr const *)context->doorbell_array);
  if (n_doorbells != 0UL) {
    data_size = n_doorbells * 16UL;
    if ((size_t )*buf_size < data_size) {
      *buf_size = (u32 )data_size;
      return (-5);
    } else {
    }
    tmp = kmalloc(data_size, 32U);
    dbells = (struct dbell_cpt_state *)tmp;
    if ((unsigned long )dbells == (unsigned long )((struct dbell_cpt_state *)0)) {
      return (-3);
    } else {
    }
    i = 0;
    goto ldv_29534;
    ldv_29533:
    (dbells + (unsigned long )i)->handle = vmci_handle_arr_get_entry((struct vmci_handle_arr const *)context->doorbell_array,
                                                                     (size_t )i);
    i = i + 1;
    ldv_29534: ;
    if ((size_t )i < n_doorbells) {
      goto ldv_29533;
    } else {
    }
    *buf_size = (u32 )data_size;
    *pbuf = (void *)dbells;
  } else {
    *buf_size = 0U;
    *pbuf = (void *)0;
  }
  return (0);
}
}
int vmci_ctx_get_chkpt_state(u32 context_id , u32 cpt_type , u32 *buf_size , void **pbuf )
{
  struct vmci_ctx *context ;
  int result ;
  {
  context = vmci_ctx_get(context_id);
  if ((unsigned long )context == (unsigned long )((struct vmci_ctx *)0)) {
    return (-21);
  } else {
  }
  spin_lock(& context->lock);
  switch (cpt_type) {
  case 1U:
  result = vmci_ctx_get_chkpt_notifiers(context, buf_size, pbuf);
  goto ldv_29545;
  case 2U:
  *buf_size = 0U;
  *pbuf = (void *)0;
  result = 0;
  goto ldv_29545;
  case 6U:
  result = vmci_ctx_get_chkpt_doorbells(context, buf_size, pbuf);
  goto ldv_29545;
  default:
  no_printk("\017Invalid cpt state (type=%d)\n", cpt_type);
  result = -2;
  goto ldv_29545;
  }
  ldv_29545:
  spin_unlock(& context->lock);
  vmci_ctx_put(context);
  return (result);
}
}
int vmci_ctx_set_chkpt_state(u32 context_id , u32 cpt_type , u32 buf_size , void *cpt_buf )
{
  u32 i ;
  u32 current_id ;
  int result ;
  u32 num_ids ;
  {
  result = 0;
  num_ids = buf_size / 4U;
  if (cpt_type == 2U && num_ids != 0U) {
    printk("\fAttempt to restore checkpoint with obsolete wellknown handles\n");
    return (-30);
  } else {
  }
  if (cpt_type != 1U) {
    no_printk("\017Invalid cpt state (type=%d)\n", cpt_type);
    return (-2);
  } else {
  }
  i = 0U;
  goto ldv_29561;
  ldv_29560:
  current_id = *((u32 *)cpt_buf + (unsigned long )i);
  result = vmci_ctx_add_notification(context_id, current_id);
  if (result != 0) {
    goto ldv_29559;
  } else {
  }
  i = i + 1U;
  ldv_29561: ;
  if (i < num_ids && result == 0) {
    goto ldv_29560;
  } else {
  }
  ldv_29559: ;
  if (result != 0) {
    no_printk("\017Failed to set cpt state (type=%d) (error=%d)\n", cpt_type, result);
  } else {
  }
  return (result);
}
}
int vmci_ctx_rcv_notifications_get(u32 context_id , struct vmci_handle_arr **db_handle_array ,
                                   struct vmci_handle_arr **qp_handle_array )
{
  struct vmci_ctx *context ;
  int result ;
  {
  result = 0;
  context = vmci_ctx_get(context_id);
  if ((unsigned long )context == (unsigned long )((struct vmci_ctx *)0)) {
    return (-21);
  } else {
  }
  spin_lock(& context->lock);
  *db_handle_array = context->pending_doorbell_array;
  context->pending_doorbell_array = vmci_handle_arr_create(0UL);
  if ((unsigned long )context->pending_doorbell_array == (unsigned long )((struct vmci_handle_arr *)0)) {
    context->pending_doorbell_array = *db_handle_array;
    *db_handle_array = (struct vmci_handle_arr *)0;
    result = -3;
  } else {
  }
  *qp_handle_array = (struct vmci_handle_arr *)0;
  spin_unlock(& context->lock);
  vmci_ctx_put(context);
  return (result);
}
}
void vmci_ctx_rcv_notifications_release(u32 context_id , struct vmci_handle_arr *db_handle_array ,
                                        struct vmci_handle_arr *qp_handle_array ,
                                        bool success )
{
  struct vmci_ctx *context ;
  struct vmci_ctx *tmp ;
  struct vmci_handle handle ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  tmp = vmci_ctx_get(context_id);
  context = tmp;
  spin_lock(& context->lock);
  if (! success) {
    handle = vmci_handle_arr_remove_tail(context->pending_doorbell_array);
    goto ldv_29578;
    ldv_29577:
    tmp___0 = vmci_handle_arr_has_entry((struct vmci_handle_arr const *)db_handle_array,
                                        handle);
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      vmci_handle_arr_append_entry(& db_handle_array, handle);
    } else {
    }
    handle = vmci_handle_arr_remove_tail(context->pending_doorbell_array);
    ldv_29578:
    tmp___2 = vmci_handle_is_invalid(handle);
    if (tmp___2) {
      tmp___3 = 0;
    } else {
      tmp___3 = 1;
    }
    if (tmp___3) {
      goto ldv_29577;
    } else {
    }
    vmci_handle_arr_destroy(context->pending_doorbell_array);
    context->pending_doorbell_array = db_handle_array;
    db_handle_array = (struct vmci_handle_arr *)0;
  } else {
    ctx_clear_notify_call(context);
  }
  spin_unlock(& context->lock);
  vmci_ctx_put(context);
  if ((unsigned long )db_handle_array != (unsigned long )((struct vmci_handle_arr *)0)) {
    vmci_handle_arr_destroy(db_handle_array);
  } else {
  }
  if ((unsigned long )qp_handle_array != (unsigned long )((struct vmci_handle_arr *)0)) {
    vmci_handle_arr_destroy(qp_handle_array);
  } else {
  }
  return;
}
}
int vmci_ctx_dbell_create(u32 context_id , struct vmci_handle handle )
{
  struct vmci_ctx *context ;
  int result ;
  bool tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  if (context_id == 4294967295U) {
    return (-2);
  } else {
    tmp = vmci_handle_is_invalid(handle);
    if ((int )tmp) {
      return (-2);
    } else {
    }
  }
  context = vmci_ctx_get(context_id);
  if ((unsigned long )context == (unsigned long )((struct vmci_ctx *)0)) {
    return (-21);
  } else {
  }
  spin_lock(& context->lock);
  tmp___0 = vmci_handle_arr_has_entry((struct vmci_handle_arr const *)context->doorbell_array,
                                      handle);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    vmci_handle_arr_append_entry(& context->doorbell_array, handle);
    result = 0;
  } else {
    result = -9;
  }
  spin_unlock(& context->lock);
  vmci_ctx_put(context);
  return (result);
}
}
int vmci_ctx_dbell_destroy(u32 context_id , struct vmci_handle handle )
{
  struct vmci_ctx *context ;
  struct vmci_handle removed_handle ;
  bool tmp ;
  bool tmp___0 ;
  {
  if (context_id == 4294967295U) {
    return (-2);
  } else {
    tmp = vmci_handle_is_invalid(handle);
    if ((int )tmp) {
      return (-2);
    } else {
    }
  }
  context = vmci_ctx_get(context_id);
  if ((unsigned long )context == (unsigned long )((struct vmci_ctx *)0)) {
    return (-21);
  } else {
  }
  spin_lock(& context->lock);
  removed_handle = vmci_handle_arr_remove_entry(context->doorbell_array, handle);
  vmci_handle_arr_remove_entry(context->pending_doorbell_array, handle);
  spin_unlock(& context->lock);
  vmci_ctx_put(context);
  tmp___0 = vmci_handle_is_invalid(removed_handle);
  return ((int )tmp___0 ? -21 : 0);
}
}
int vmci_ctx_dbell_destroy_all(u32 context_id )
{
  struct vmci_ctx *context ;
  struct vmci_handle handle ;
  struct vmci_handle_arr *arr ;
  bool tmp ;
  int tmp___0 ;
  struct vmci_handle_arr *arr___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  if (context_id == 4294967295U) {
    return (-2);
  } else {
  }
  context = vmci_ctx_get(context_id);
  if ((unsigned long )context == (unsigned long )((struct vmci_ctx *)0)) {
    return (-21);
  } else {
  }
  spin_lock(& context->lock);
  ldv_29598:
  arr = context->doorbell_array;
  handle = vmci_handle_arr_remove_tail(arr);
  tmp = vmci_handle_is_invalid(handle);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    goto ldv_29598;
  } else {
  }
  ldv_29601:
  arr___0 = context->pending_doorbell_array;
  handle = vmci_handle_arr_remove_tail(arr___0);
  tmp___1 = vmci_handle_is_invalid(handle);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    goto ldv_29601;
  } else {
  }
  spin_unlock(& context->lock);
  vmci_ctx_put(context);
  return (0);
}
}
int vmci_ctx_notify_dbell(u32 src_cid , struct vmci_handle handle , u32 src_priv_flags )
{
  struct vmci_ctx *dst_context ;
  int result ;
  bool tmp ;
  u32 dst_priv_flags ;
  bool tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  {
  tmp = vmci_handle_is_invalid(handle);
  if ((int )tmp) {
    return (-2);
  } else {
  }
  dst_context = vmci_ctx_get(handle.context);
  if ((unsigned long )dst_context == (unsigned long )((struct vmci_ctx *)0)) {
    no_printk("\017Invalid context (ID=0x%x)\n", handle.context);
    return (-21);
  } else {
  }
  if (handle.context != src_cid) {
    if ((src_cid != 4294967295U && src_cid > 2U) && (handle.context != 4294967295U && handle.context > 2U)) {
      no_printk("\017Doorbell notification from VM to VM not supported (src=0x%x, dst=0x%x)\n",
                src_cid, handle.context);
      result = -10;
      goto out;
    } else {
    }
    result = vmci_dbell_get_priv_flags(handle, & dst_priv_flags);
    if (result < 0) {
      printk("\fFailed to get privilege flags for destination (handle=0x%x:0x%x)\n",
             handle.context, handle.resource);
      goto out;
    } else {
    }
    if (src_cid != 2U || src_priv_flags == 0U) {
      src_priv_flags = vmci_context_get_priv_flags(src_cid);
    } else {
    }
    tmp___0 = vmci_deny_interaction(src_priv_flags, dst_priv_flags);
    if ((int )tmp___0) {
      result = -7;
      goto out;
    } else {
    }
  } else {
  }
  if (handle.context == 2U) {
    result = vmci_dbell_host_context_notify(src_cid, handle);
  } else {
    spin_lock(& dst_context->lock);
    tmp___3 = vmci_handle_arr_has_entry((struct vmci_handle_arr const *)dst_context->doorbell_array,
                                        handle);
    if (tmp___3) {
      tmp___4 = 0;
    } else {
      tmp___4 = 1;
    }
    if (tmp___4) {
      result = -21;
    } else {
      tmp___1 = vmci_handle_arr_has_entry((struct vmci_handle_arr const *)dst_context->pending_doorbell_array,
                                          handle);
      if (tmp___1) {
        tmp___2 = 0;
      } else {
        tmp___2 = 1;
      }
      if (tmp___2) {
        vmci_handle_arr_append_entry(& dst_context->pending_doorbell_array, handle);
        ctx_signal_notify(dst_context);
        __wake_up(& dst_context->host_context.wait_queue, 3U, 1, (void *)0);
      } else {
      }
      result = 0;
    }
    spin_unlock(& dst_context->lock);
  }
  out:
  vmci_ctx_put(dst_context);
  return (result);
}
}
bool vmci_ctx_supports_host_qp(struct vmci_ctx *context )
{
  {
  return ((bool )((unsigned long )context != (unsigned long )((struct vmci_ctx *)0) && context->user_version > 589823));
}
}
int vmci_ctx_qp_create(struct vmci_ctx *context , struct vmci_handle handle )
{
  int result ;
  bool tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned long )context == (unsigned long )((struct vmci_ctx *)0)) {
    return (-2);
  } else {
    tmp = vmci_handle_is_invalid(handle);
    if ((int )tmp) {
      return (-2);
    } else {
    }
  }
  tmp___0 = vmci_handle_arr_has_entry((struct vmci_handle_arr const *)context->queue_pair_array,
                                      handle);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    vmci_handle_arr_append_entry(& context->queue_pair_array, handle);
    result = 0;
  } else {
    result = -9;
  }
  return (result);
}
}
int vmci_ctx_qp_destroy(struct vmci_ctx *context , struct vmci_handle handle )
{
  struct vmci_handle hndl ;
  bool tmp ;
  bool tmp___0 ;
  {
  if ((unsigned long )context == (unsigned long )((struct vmci_ctx *)0)) {
    return (-2);
  } else {
    tmp = vmci_handle_is_invalid(handle);
    if ((int )tmp) {
      return (-2);
    } else {
    }
  }
  hndl = vmci_handle_arr_remove_entry(context->queue_pair_array, handle);
  tmp___0 = vmci_handle_is_invalid(hndl);
  return ((int )tmp___0 ? -21 : 0);
}
}
bool vmci_ctx_qp_exists(struct vmci_ctx *context , struct vmci_handle handle )
{
  bool tmp ;
  bool tmp___0 ;
  {
  if ((unsigned long )context == (unsigned long )((struct vmci_ctx *)0)) {
    return (0);
  } else {
    tmp = vmci_handle_is_invalid(handle);
    if ((int )tmp) {
      return (0);
    } else {
    }
  }
  tmp___0 = vmci_handle_arr_has_entry((struct vmci_handle_arr const *)context->queue_pair_array,
                                      handle);
  return (tmp___0);
}
}
u32 vmci_context_get_priv_flags(u32 context_id )
{
  u32 flags ;
  struct vmci_ctx *context ;
  bool tmp ;
  {
  tmp = vmci_host_code_active();
  if ((int )tmp) {
    context = vmci_ctx_get(context_id);
    if ((unsigned long )context == (unsigned long )((struct vmci_ctx *)0)) {
      return (1U);
    } else {
    }
    flags = context->priv_flags;
    vmci_ctx_put(context);
    return (flags);
  } else {
  }
  return (0U);
}
}
static char const __kstrtab_vmci_context_get_priv_flags[28U] =
  { 'v', 'm', 'c', 'i',
        '_', 'c', 'o', 'n',
        't', 'e', 'x', 't',
        '_', 'g', 'e', 't',
        '_', 'p', 'r', 'i',
        'v', '_', 'f', 'l',
        'a', 'g', 's', '\000'};
struct kernel_symbol const __ksymtab_vmci_context_get_priv_flags ;
struct kernel_symbol const __ksymtab_vmci_context_get_priv_flags = {(unsigned long )(& vmci_context_get_priv_flags), (char const *)(& __kstrtab_vmci_context_get_priv_flags)};
bool vmci_is_context_owner(u32 context_id , kuid_t uid )
{
  bool is_owner ;
  struct vmci_ctx *context ;
  struct vmci_ctx *tmp ;
  bool tmp___0 ;
  {
  is_owner = 0;
  tmp___0 = vmci_host_code_active();
  if ((int )tmp___0) {
    tmp = vmci_ctx_get(context_id);
    context = tmp;
    if ((unsigned long )context != (unsigned long )((struct vmci_ctx *)0)) {
      if ((unsigned long )context->cred != (unsigned long )((struct cred const *)0)) {
        is_owner = uid_eq((context->cred)->uid, uid);
      } else {
      }
      vmci_ctx_put(context);
    } else {
    }
  } else {
  }
  return (is_owner);
}
}
static char const __kstrtab_vmci_is_context_owner[22U] =
  { 'v', 'm', 'c', 'i',
        '_', 'i', 's', '_',
        'c', 'o', 'n', 't',
        'e', 'x', 't', '_',
        'o', 'w', 'n', 'e',
        'r', '\000'};
struct kernel_symbol const __ksymtab_vmci_is_context_owner ;
struct kernel_symbol const __ksymtab_vmci_is_context_owner = {(unsigned long )(& vmci_is_context_owner), (char const *)(& __kstrtab_vmci_is_context_owner)};
__inline static void *ERR_PTR(long error )
{
  void *tmp ;
  {
  tmp = ldv_err_ptr(error);
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
  activate_work_3(ldv_func_arg3, 2);
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
  activate_work_3(& ldv_func_arg3->work, 2);
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
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_8(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
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
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
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
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern void *memcpy(void * , void const * , size_t ) ;
__inline static void atomic_dec(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0": "+m" (v->counter));
  return;
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 ) ;
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
bool ldv_queue_work_on_27(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_29(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_28(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_31(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_30(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_27(8192, wq, work);
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
struct work_struct *ldv_work_struct_3_1 ;
int ldv_work_3_2 ;
int ldv_work_3_0 ;
struct work_struct *ldv_work_struct_4_3 ;
int ldv_work_3_3 ;
struct work_struct *ldv_work_struct_4_0 ;
struct work_struct *ldv_work_struct_3_3 ;
int ldv_work_4_0 ;
struct work_struct *ldv_work_struct_3_2 ;
int ldv_work_4_1 ;
int ldv_work_4_3 ;
int ldv_work_3_1 ;
struct work_struct *ldv_work_struct_4_2 ;
struct work_struct *ldv_work_struct_3_0 ;
int ldv_work_4_2 ;
struct work_struct *ldv_work_struct_4_1 ;
void work_init_3(void) ;
void activate_work_4(struct work_struct *work , int state ) ;
void call_and_disable_all_4(int state ) ;
void call_and_disable_work_3(struct work_struct *work ) ;
void disable_work_3(struct work_struct *work ) ;
void disable_work_4(struct work_struct *work ) ;
void work_init_4(void) ;
void invoke_work_3(void) ;
void invoke_work_4(void) ;
void call_and_disable_work_4(struct work_struct *work ) ;
int vmci_datagram_create_handle(u32 resource_id , u32 flags , int (*recv_cb)(void * ,
                                                                             struct vmci_datagram * ) ,
                                void *client_data , struct vmci_handle *out_handle ) ;
int vmci_datagram_create_handle_priv(u32 resource_id , u32 flags , u32 priv_flags ,
                                     int (*recv_cb)(void * , struct vmci_datagram * ) ,
                                     void *client_data , struct vmci_handle *out_handle ) ;
int vmci_datagram_destroy_handle(struct vmci_handle handle ) ;
int vmci_datagram_send(struct vmci_datagram *msg ) ;
u32 vmci_get_context_id(void) ;
int vmci_datagram_invoke_guest_handler(struct vmci_datagram *dg ) ;
int vmci_resource_add(struct vmci_resource *resource , enum vmci_resource_type resource_type___0 ,
                      struct vmci_handle handle ) ;
void vmci_resource_remove(struct vmci_resource *resource ) ;
struct vmci_resource *vmci_resource_by_handle(struct vmci_handle resource_handle ,
                                              enum vmci_resource_type resource_type___0 ) ;
int vmci_resource_put(struct vmci_resource *resource ) ;
struct vmci_handle vmci_resource_handle(struct vmci_resource *resource ) ;
int vmci_send_datagram(struct vmci_datagram *dg ) ;
int vmci_event_dispatch(struct vmci_datagram *msg ) ;
int vmci_route(struct vmci_handle *src , struct vmci_handle const *dst , bool from_guest ,
               enum vmci_route *route ) ;
static atomic_t delayed_dg_host_queue_size = {0};
static int dg_create_handle(u32 resource_id , u32 flags , u32 priv_flags , int (*recv_cb)(void * ,
                                                                                          struct vmci_datagram * ) ,
                            void *client_data , struct vmci_handle *out_handle )
{
  int result ;
  u32 context_id ;
  struct vmci_handle handle ;
  struct datagram_entry *entry ;
  struct vmci_handle __constr_expr_0 ;
  void *tmp ;
  {
  if ((int )flags & 1) {
    return (-2);
  } else {
  }
  if ((flags & 2U) != 0U) {
    context_id = 4294967295U;
  } else {
    context_id = vmci_get_context_id();
    if (context_id == 4294967295U) {
      return (-19);
    } else {
    }
  }
  __constr_expr_0.context = context_id;
  __constr_expr_0.resource = resource_id;
  handle = __constr_expr_0;
  tmp = kmalloc(168UL, 208U);
  entry = (struct datagram_entry *)tmp;
  if ((unsigned long )entry == (unsigned long )((struct datagram_entry *)0)) {
    printk("\fFailed allocating memory for datagram entry\n");
    return (-3);
  } else {
  }
  entry->run_delayed = (flags & 4U) != 0U;
  entry->flags = flags;
  entry->recv_cb = recv_cb;
  entry->client_data = client_data;
  entry->priv_flags = priv_flags;
  result = vmci_resource_add(& entry->resource, 3, handle);
  if (result != 0) {
    printk("\fFailed to add new resource (handle=0x%x:0x%x), error: %d\n", handle.context,
           handle.resource, result);
    kfree((void const *)entry);
    return (result);
  } else {
  }
  *out_handle = vmci_resource_handle(& entry->resource);
  return (0);
}
}
static int vmci_datagram_get_priv_flags(u32 context_id , struct vmci_handle handle ,
                                        u32 *priv_flags )
{
  struct datagram_entry *src_entry ;
  struct vmci_resource *resource ;
  struct vmci_resource const *__mptr ;
  {
  if (context_id == 4294967295U) {
    return (-2);
  } else {
  }
  if (context_id == 2U) {
    resource = vmci_resource_by_handle(handle, 3);
    if ((unsigned long )resource == (unsigned long )((struct vmci_resource *)0)) {
      return (-2);
    } else {
    }
    __mptr = (struct vmci_resource const *)resource;
    src_entry = (struct datagram_entry *)__mptr;
    *priv_flags = src_entry->priv_flags;
    vmci_resource_put(resource);
  } else
  if (context_id == 0U) {
    *priv_flags = 2U;
  } else {
    *priv_flags = vmci_context_get_priv_flags(context_id);
  }
  return (0);
}
}
static void dg_delayed_dispatch(struct work_struct *work )
{
  struct delayed_datagram_info *dg_info ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  dg_info = (struct delayed_datagram_info *)__mptr + 0xfffffffffffffff8UL;
  (*((dg_info->entry)->recv_cb))((dg_info->entry)->client_data, & dg_info->msg);
  vmci_resource_put(& (dg_info->entry)->resource);
  if ((int )dg_info->in_dg_host_queue) {
    atomic_dec(& delayed_dg_host_queue_size);
  } else {
  }
  kfree((void const *)dg_info);
  return;
}
}
static int dg_dispatch_as_host(u32 context_id , struct vmci_datagram *dg )
{
  int retval ;
  size_t dg_size ;
  u32 src_priv_flags ;
  struct datagram_entry *dst_entry ;
  struct vmci_resource *resource ;
  int tmp ;
  struct vmci_resource const *__mptr ;
  bool tmp___0 ;
  struct delayed_datagram_info *dg_info ;
  int tmp___1 ;
  void *tmp___2 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct vmci_datagram *new_dg ;
  u32 tmp___3 ;
  bool tmp___4 ;
  void *tmp___5 ;
  {
  dg_size = (unsigned long )dg->payload_size + 24UL;
  if (dg->dst.context == 0U) {
    return (-10);
  } else {
  }
  if (dg->src.context != context_id) {
    no_printk("\017Sender context (ID=0x%x) is not owner of src datagram entry (handle=0x%x:0x%x)\n",
              context_id, dg->src.context, dg->src.resource);
    return (-7);
  } else {
  }
  retval = vmci_datagram_get_priv_flags(context_id, dg->src, & src_priv_flags);
  if (retval != 0) {
    printk("\fCouldn\'t get privileges (handle=0x%x:0x%x)\n", dg->src.context, dg->src.resource);
    return (retval);
  } else {
  }
  if (dg->dst.context == 2U) {
    if (dg->src.context == 0U && dg->dst.resource == 0U) {
      tmp = vmci_event_dispatch(dg);
      return (tmp);
    } else {
    }
    resource = vmci_resource_by_handle(dg->dst, 3);
    if ((unsigned long )resource == (unsigned long )((struct vmci_resource *)0)) {
      no_printk("\017Sending to invalid destination (handle=0x%x:0x%x)\n", dg->dst.context,
                dg->dst.resource);
      return (-1);
    } else {
    }
    __mptr = (struct vmci_resource const *)resource;
    dst_entry = (struct datagram_entry *)__mptr;
    tmp___0 = vmci_deny_interaction(src_priv_flags, dst_entry->priv_flags);
    if ((int )tmp___0) {
      vmci_resource_put(resource);
      return (-7);
    } else {
    }
    if ((int )dst_entry->run_delayed || dg->src.context == 2U) {
      tmp___1 = atomic_add_return(1, & delayed_dg_host_queue_size);
      if (tmp___1 == 256) {
        atomic_dec(& delayed_dg_host_queue_size);
        vmci_resource_put(resource);
        return (-3);
      } else {
      }
      tmp___2 = kmalloc((unsigned long )dg->payload_size + 120UL, 32U);
      dg_info = (struct delayed_datagram_info *)tmp___2;
      if ((unsigned long )dg_info == (unsigned long )((struct delayed_datagram_info *)0)) {
        atomic_dec(& delayed_dg_host_queue_size);
        vmci_resource_put(resource);
        return (-3);
      } else {
      }
      dg_info->in_dg_host_queue = 1;
      dg_info->entry = dst_entry;
      memcpy((void *)(& dg_info->msg), (void const *)dg, dg_size);
      __init_work(& dg_info->work, 0);
      __constr_expr_0.counter = 137438953408L;
      dg_info->work.data = __constr_expr_0;
      lockdep_init_map(& dg_info->work.lockdep_map, "(&dg_info->work)", & __key, 0);
      INIT_LIST_HEAD(& dg_info->work.entry);
      dg_info->work.func = & dg_delayed_dispatch;
      schedule_work(& dg_info->work);
      retval = 0;
    } else {
      retval = (*(dst_entry->recv_cb))(dst_entry->client_data, dg);
      vmci_resource_put(resource);
      if (retval < 0) {
        return (retval);
      } else {
      }
    }
  } else {
    if (dg->dst.context != context_id) {
      tmp___3 = vmci_context_get_priv_flags(dg->dst.context);
      tmp___4 = vmci_deny_interaction(src_priv_flags, tmp___3);
      if ((int )tmp___4) {
        return (-7);
      } else
      if (context_id != 4294967295U && context_id > 2U) {
        no_printk("\017Datagram communication between VMs not supported (src=0x%x, dst=0x%x)\n",
                  context_id, dg->dst.context);
        return (-10);
      } else {
      }
    } else {
    }
    tmp___5 = kmalloc(dg_size, 208U);
    new_dg = (struct vmci_datagram *)tmp___5;
    if ((unsigned long )new_dg == (unsigned long )((struct vmci_datagram *)0)) {
      return (-3);
    } else {
    }
    memcpy((void *)new_dg, (void const *)dg, dg_size);
    retval = vmci_ctx_enqueue_datagram(dg->dst.context, new_dg);
    if (retval < 0) {
      kfree((void const *)new_dg);
      return (retval);
    } else {
    }
  }
  return ((int )dg_size);
}
}
static int dg_dispatch_as_guest(struct vmci_datagram *dg )
{
  int retval ;
  struct vmci_resource *resource ;
  {
  resource = vmci_resource_by_handle(dg->src, 3);
  if ((unsigned long )resource == (unsigned long )((struct vmci_resource *)0)) {
    return (-8);
  } else {
  }
  retval = vmci_send_datagram(dg);
  vmci_resource_put(resource);
  return (retval);
}
}
int vmci_datagram_dispatch(u32 context_id , struct vmci_datagram *dg , bool from_guest )
{
  int retval ;
  enum vmci_route route ;
  int tmp ;
  int tmp___0 ;
  {
  if (dg->payload_size > 69632ULL || (unsigned long )dg->payload_size + 24UL > 69632UL) {
    no_printk("\017Payload (size=%llu bytes) too big to send\n", dg->payload_size);
    return (-2);
  } else {
  }
  retval = vmci_route(& dg->src, (struct vmci_handle const *)(& dg->dst), (int )from_guest,
                      & route);
  if (retval < 0) {
    no_printk("\017Failed to route datagram (src=0x%x, dst=0x%x, err=%d)\n", dg->src.context,
              dg->dst.context, retval);
    return (retval);
  } else {
  }
  if ((unsigned int )route == 1U) {
    if (context_id == 4294967295U) {
      context_id = 2U;
    } else {
    }
    tmp = dg_dispatch_as_host(context_id, dg);
    return (tmp);
  } else {
  }
  if ((unsigned int )route == 2U) {
    tmp___0 = dg_dispatch_as_guest(dg);
    return (tmp___0);
  } else {
  }
  printk("\fUnknown route (%d) for datagram\n", (unsigned int )route);
  return (-10);
}
}
int vmci_datagram_invoke_guest_handler(struct vmci_datagram *dg )
{
  struct vmci_resource *resource ;
  struct datagram_entry *dst_entry ;
  struct vmci_resource const *__mptr ;
  struct delayed_datagram_info *dg_info ;
  void *tmp ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  resource = vmci_resource_by_handle(dg->dst, 3);
  if ((unsigned long )resource == (unsigned long )((struct vmci_resource *)0)) {
    no_printk("\017destination (handle=0x%x:0x%x) doesn\'t exist\n", dg->dst.context,
              dg->dst.resource);
    return (-8);
  } else {
  }
  __mptr = (struct vmci_resource const *)resource;
  dst_entry = (struct datagram_entry *)__mptr;
  if ((int )dst_entry->run_delayed) {
    tmp = kmalloc((unsigned long )dg->payload_size + 120UL, 32U);
    dg_info = (struct delayed_datagram_info *)tmp;
    if ((unsigned long )dg_info == (unsigned long )((struct delayed_datagram_info *)0)) {
      vmci_resource_put(resource);
      return (-3);
    } else {
    }
    dg_info->in_dg_host_queue = 0;
    dg_info->entry = dst_entry;
    memcpy((void *)(& dg_info->msg), (void const *)dg, (unsigned long )dg->payload_size + 24UL);
    __init_work(& dg_info->work, 0);
    __constr_expr_0.counter = 137438953408L;
    dg_info->work.data = __constr_expr_0;
    lockdep_init_map(& dg_info->work.lockdep_map, "(&dg_info->work)", & __key, 0);
    INIT_LIST_HEAD(& dg_info->work.entry);
    dg_info->work.func = & dg_delayed_dispatch;
    schedule_work(& dg_info->work);
  } else {
    (*(dst_entry->recv_cb))(dst_entry->client_data, dg);
    vmci_resource_put(resource);
  }
  return (0);
}
}
int vmci_datagram_create_handle_priv(u32 resource_id , u32 flags , u32 priv_flags ,
                                     int (*recv_cb)(void * , struct vmci_datagram * ) ,
                                     void *client_data , struct vmci_handle *out_handle )
{
  int tmp ;
  {
  if ((unsigned long )out_handle == (unsigned long )((struct vmci_handle *)0)) {
    return (-2);
  } else {
  }
  if ((unsigned long )recv_cb == (unsigned long )((int (*)(void * , struct vmci_datagram * ))0)) {
    no_printk("\017Client callback needed when creating datagram\n");
    return (-2);
  } else {
  }
  if ((priv_flags & 4294967292U) != 0U) {
    return (-2);
  } else {
  }
  tmp = dg_create_handle(resource_id, flags, priv_flags, recv_cb, client_data, out_handle);
  return (tmp);
}
}
static char const __kstrtab_vmci_datagram_create_handle_priv[33U] =
  { 'v', 'm', 'c', 'i',
        '_', 'd', 'a', 't',
        'a', 'g', 'r', 'a',
        'm', '_', 'c', 'r',
        'e', 'a', 't', 'e',
        '_', 'h', 'a', 'n',
        'd', 'l', 'e', '_',
        'p', 'r', 'i', 'v',
        '\000'};
struct kernel_symbol const __ksymtab_vmci_datagram_create_handle_priv ;
struct kernel_symbol const __ksymtab_vmci_datagram_create_handle_priv = {(unsigned long )(& vmci_datagram_create_handle_priv), (char const *)(& __kstrtab_vmci_datagram_create_handle_priv)};
int vmci_datagram_create_handle(u32 resource_id , u32 flags , int (*recv_cb)(void * ,
                                                                             struct vmci_datagram * ) ,
                                void *client_data , struct vmci_handle *out_handle )
{
  int tmp ;
  {
  tmp = vmci_datagram_create_handle_priv(resource_id, flags, 0U, recv_cb, client_data,
                                         out_handle);
  return (tmp);
}
}
static char const __kstrtab_vmci_datagram_create_handle[28U] =
  { 'v', 'm', 'c', 'i',
        '_', 'd', 'a', 't',
        'a', 'g', 'r', 'a',
        'm', '_', 'c', 'r',
        'e', 'a', 't', 'e',
        '_', 'h', 'a', 'n',
        'd', 'l', 'e', '\000'};
struct kernel_symbol const __ksymtab_vmci_datagram_create_handle ;
struct kernel_symbol const __ksymtab_vmci_datagram_create_handle = {(unsigned long )(& vmci_datagram_create_handle), (char const *)(& __kstrtab_vmci_datagram_create_handle)};
int vmci_datagram_destroy_handle(struct vmci_handle handle )
{
  struct datagram_entry *entry ;
  struct vmci_resource *resource ;
  struct vmci_resource const *__mptr ;
  {
  resource = vmci_resource_by_handle(handle, 3);
  if ((unsigned long )resource == (unsigned long )((struct vmci_resource *)0)) {
    no_printk("\017Failed to destroy datagram (handle=0x%x:0x%x)\n", handle.context,
              handle.resource);
    return (-21);
  } else {
  }
  __mptr = (struct vmci_resource const *)resource;
  entry = (struct datagram_entry *)__mptr;
  vmci_resource_put(& entry->resource);
  vmci_resource_remove(& entry->resource);
  kfree((void const *)entry);
  return (0);
}
}
static char const __kstrtab_vmci_datagram_destroy_handle[29U] =
  { 'v', 'm', 'c', 'i',
        '_', 'd', 'a', 't',
        'a', 'g', 'r', 'a',
        'm', '_', 'd', 'e',
        's', 't', 'r', 'o',
        'y', '_', 'h', 'a',
        'n', 'd', 'l', 'e',
        '\000'};
struct kernel_symbol const __ksymtab_vmci_datagram_destroy_handle ;
struct kernel_symbol const __ksymtab_vmci_datagram_destroy_handle = {(unsigned long )(& vmci_datagram_destroy_handle), (char const *)(& __kstrtab_vmci_datagram_destroy_handle)};
int vmci_datagram_send(struct vmci_datagram *msg )
{
  int tmp ;
  {
  if ((unsigned long )msg == (unsigned long )((struct vmci_datagram *)0)) {
    return (-2);
  } else {
  }
  tmp = vmci_datagram_dispatch(4294967295U, msg, 0);
  return (tmp);
}
}
static char const __kstrtab_vmci_datagram_send[19U] =
  { 'v', 'm', 'c', 'i',
        '_', 'd', 'a', 't',
        'a', 'g', 'r', 'a',
        'm', '_', 's', 'e',
        'n', 'd', '\000'};
struct kernel_symbol const __ksymtab_vmci_datagram_send ;
struct kernel_symbol const __ksymtab_vmci_datagram_send = {(unsigned long )(& vmci_datagram_send), (char const *)(& __kstrtab_vmci_datagram_send)};
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
void call_and_disable_work_3(struct work_struct *work )
{
  {
  if ((ldv_work_3_0 == 2 || ldv_work_3_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_0) {
    dg_delayed_dispatch(work);
    ldv_work_3_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_1 == 2 || ldv_work_3_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_1) {
    dg_delayed_dispatch(work);
    ldv_work_3_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_2 == 2 || ldv_work_3_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_2) {
    dg_delayed_dispatch(work);
    ldv_work_3_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_3 == 2 || ldv_work_3_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_3) {
    dg_delayed_dispatch(work);
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
void invoke_work_3(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_3_0 == 2 || ldv_work_3_0 == 3) {
    ldv_work_3_0 = 4;
    dg_delayed_dispatch(ldv_work_struct_3_0);
    ldv_work_3_0 = 1;
  } else {
  }
  goto ldv_21067;
  case 1: ;
  if (ldv_work_3_1 == 2 || ldv_work_3_1 == 3) {
    ldv_work_3_1 = 4;
    dg_delayed_dispatch(ldv_work_struct_3_0);
    ldv_work_3_1 = 1;
  } else {
  }
  goto ldv_21067;
  case 2: ;
  if (ldv_work_3_2 == 2 || ldv_work_3_2 == 3) {
    ldv_work_3_2 = 4;
    dg_delayed_dispatch(ldv_work_struct_3_0);
    ldv_work_3_2 = 1;
  } else {
  }
  goto ldv_21067;
  case 3: ;
  if (ldv_work_3_3 == 2 || ldv_work_3_3 == 3) {
    ldv_work_3_3 = 4;
    dg_delayed_dispatch(ldv_work_struct_3_0);
    ldv_work_3_3 = 1;
  } else {
  }
  goto ldv_21067;
  default:
  ldv_stop();
  }
  ldv_21067: ;
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
    dg_delayed_dispatch(ldv_work_struct_4_0);
    ldv_work_4_0 = 1;
  } else {
  }
  goto ldv_21078;
  case 1: ;
  if (ldv_work_4_1 == 2 || ldv_work_4_1 == 3) {
    ldv_work_4_1 = 4;
    dg_delayed_dispatch(ldv_work_struct_4_0);
    ldv_work_4_1 = 1;
  } else {
  }
  goto ldv_21078;
  case 2: ;
  if (ldv_work_4_2 == 2 || ldv_work_4_2 == 3) {
    ldv_work_4_2 = 4;
    dg_delayed_dispatch(ldv_work_struct_4_0);
    ldv_work_4_2 = 1;
  } else {
  }
  goto ldv_21078;
  case 3: ;
  if (ldv_work_4_3 == 2 || ldv_work_4_3 == 3) {
    ldv_work_4_3 = 4;
    dg_delayed_dispatch(ldv_work_struct_4_0);
    ldv_work_4_3 = 1;
  } else {
  }
  goto ldv_21078;
  default:
  ldv_stop();
  }
  ldv_21078: ;
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
void call_and_disable_work_4(struct work_struct *work )
{
  {
  if ((ldv_work_4_0 == 2 || ldv_work_4_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_0) {
    dg_delayed_dispatch(work);
    ldv_work_4_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_1 == 2 || ldv_work_4_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_1) {
    dg_delayed_dispatch(work);
    ldv_work_4_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_2 == 2 || ldv_work_4_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_2) {
    dg_delayed_dispatch(work);
    ldv_work_4_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_3 == 2 || ldv_work_4_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_3) {
    dg_delayed_dispatch(work);
    ldv_work_4_3 = 1;
    return;
  } else {
  }
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
  activate_work_3(ldv_func_arg3, 2);
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
  activate_work_3(& ldv_func_arg3->work, 2);
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
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_30(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
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
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void INIT_HLIST_NODE(struct hlist_node *h )
{
  {
  h->next = (struct hlist_node *)0;
  h->pprev = (struct hlist_node **)0;
  return;
}
}
__inline static int hlist_unhashed(struct hlist_node const *h )
{
  {
  return ((unsigned long )h->pprev == (unsigned long )((struct hlist_node ** )0));
}
}
__inline static void __hlist_del(struct hlist_node *n )
{
  struct hlist_node *next ;
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
__inline static void hlist_del_init(struct hlist_node *n )
{
  int tmp ;
  {
  tmp = hlist_unhashed((struct hlist_node const *)n);
  if (tmp == 0) {
    __hlist_del(n);
    INIT_HLIST_NODE(n);
  } else {
  }
  return;
}
}
__inline static void hlist_add_head(struct hlist_node *n , struct hlist_head *h )
{
  struct hlist_node *first ;
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
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
}
}
void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_50(struct mutex *ldv_func_arg1 ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  _raw_spin_lock_bh(& lock->__annonCompField17.rlock);
  return;
}
}
__inline static void spin_unlock_bh(spinlock_t *lock )
{
  {
  _raw_spin_unlock_bh(& lock->__annonCompField17.rlock);
  return;
}
}
bool ldv_queue_work_on_45(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_47(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_46(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_49(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_48(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static bool queue_work___0(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_45(8192, wq, work);
  return (tmp);
}
}
__inline static bool schedule_work___0(struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work___0(system_wq, work);
  return (tmp);
}
}
struct work_struct *ldv_work_struct_5_2 ;
struct work_struct *ldv_work_struct_5_3 ;
int ldv_work_5_3 ;
int ldv_work_5_0 ;
int ldv_work_5_1 ;
struct work_struct *ldv_work_struct_5_0 ;
struct work_struct *ldv_work_struct_5_1 ;
int ldv_work_5_2 ;
void activate_work_5(struct work_struct *work , int state ) ;
void call_and_disable_all_5(int state ) ;
void work_init_5(void) ;
void invoke_work_5(void) ;
void disable_work_5(struct work_struct *work ) ;
void call_and_disable_work_5(struct work_struct *work ) ;
static struct vmci_handle const VMCI_INVALID_HANDLE___0 = {4294967295U, 4294967295U};
__inline static bool vmci_handle_is_invalid___0(struct vmci_handle h )
{
  bool tmp ;
  {
  tmp = vmci_handle_is_equal(h, VMCI_INVALID_HANDLE___0);
  return (tmp);
}
}
static struct vmci_handle const VMCI_ANON_SRC_HANDLE = {4294967295U, 4294967295U};
int vmci_doorbell_create(struct vmci_handle *handle , u32 flags , u32 priv_flags ,
                         void (*notify_cb)(void * ) , void *client_data ) ;
int vmci_doorbell_destroy(struct vmci_handle handle ) ;
int vmci_doorbell_notify(struct vmci_handle dst , u32 priv_flags ) ;
__inline static u32 hash_32(u32 val , unsigned int bits )
{
  u32 hash ;
  {
  hash = val * 2654404609U;
  return (hash >> (int )(32U - bits));
}
}
bool vmci_guest_code_active(void) ;
bool vmci_dbell_register_notification_bitmap(u32 bitmap_ppn ) ;
void vmci_dbell_scan_notification_entries(u8 *bitmap ) ;
struct vmci_resource *vmci_resource_get(struct vmci_resource *resource ) ;
static struct dbell_index_table vmci_doorbell_it = {{{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "vmci_doorbell_it.lock",
                                                     0, 0UL}}}}, {{0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0}}};
static u32 max_notify_idx ;
static u32 notify_idx_count ;
static u32 last_notify_idx_reserved ;
static u32 last_notify_idx_released = 4096U;
int vmci_dbell_get_priv_flags(struct vmci_handle handle , u32 *priv_flags )
{
  struct dbell_entry *entry ;
  struct vmci_resource *resource ;
  struct vmci_resource const *__mptr ;
  {
  if ((unsigned long )priv_flags == (unsigned long )((u32 *)0U) || handle.context == 4294967295U) {
    return (-2);
  } else {
  }
  if (handle.context == 2U) {
    resource = vmci_resource_by_handle(handle, 4);
    if ((unsigned long )resource == (unsigned long )((struct vmci_resource *)0)) {
      return (-21);
    } else {
    }
    __mptr = (struct vmci_resource const *)resource;
    entry = (struct dbell_entry *)__mptr;
    *priv_flags = entry->priv_flags;
    vmci_resource_put(resource);
  } else
  if (handle.context == 0U) {
    return (-2);
  } else {
    *priv_flags = vmci_context_get_priv_flags(handle.context);
  }
  return (0);
}
}
static struct dbell_entry *dbell_index_table_find(u32 idx )
{
  u32 bucket ;
  u32 tmp ;
  struct dbell_entry *dbell ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct dbell_entry *tmp___0 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct dbell_entry *tmp___1 ;
  {
  tmp = hash_32(idx, 6U);
  bucket = tmp;
  ____ptr = ((struct hlist_head *)(& vmci_doorbell_it.entries) + (unsigned long )bucket)->first;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp___0 = (struct dbell_entry *)__mptr + 0xffffffffffffff78UL;
  } else {
    tmp___0 = (struct dbell_entry *)0;
  }
  dbell = tmp___0;
  goto ldv_20963;
  ldv_20962: ;
  if (dbell->idx == idx) {
    return (dbell);
  } else {
  }
  ____ptr___0 = dbell->node.next;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___1 = (struct dbell_entry *)__mptr___0 + 0xffffffffffffff78UL;
  } else {
    tmp___1 = (struct dbell_entry *)0;
  }
  dbell = tmp___1;
  ldv_20963: ;
  if ((unsigned long )dbell != (unsigned long )((struct dbell_entry *)0)) {
    goto ldv_20962;
  } else {
  }
  return ((struct dbell_entry *)0);
}
}
static void dbell_index_table_add(struct dbell_entry *entry )
{
  u32 bucket ;
  u32 new_notify_idx ;
  bool reused ;
  struct dbell_entry *tmp ;
  struct dbell_entry *tmp___0 ;
  {
  vmci_resource_get(& entry->resource);
  spin_lock_bh(& vmci_doorbell_it.lock);
  if (max_notify_idx <= 4095U || notify_idx_count <= 4095U) {
    if (last_notify_idx_released < max_notify_idx) {
      tmp___0 = dbell_index_table_find(last_notify_idx_released);
      if ((unsigned long )tmp___0 == (unsigned long )((struct dbell_entry *)0)) {
        new_notify_idx = last_notify_idx_released;
        last_notify_idx_released = 4096U;
      } else {
        goto _L;
      }
    } else {
      _L:
      reused = 0;
      new_notify_idx = last_notify_idx_reserved;
      if (notify_idx_count + 1U < max_notify_idx) {
        ldv_20972:
        tmp = dbell_index_table_find(new_notify_idx);
        if ((unsigned long )tmp == (unsigned long )((struct dbell_entry *)0)) {
          reused = 1;
          goto ldv_20971;
        } else {
        }
        new_notify_idx = (new_notify_idx + 1U) % max_notify_idx;
        if (new_notify_idx != last_notify_idx_released) {
          goto ldv_20972;
        } else {
        }
        ldv_20971: ;
      } else {
      }
      if (! reused) {
        new_notify_idx = max_notify_idx;
        max_notify_idx = max_notify_idx + 1U;
      } else {
      }
    }
  } else {
    new_notify_idx = (last_notify_idx_reserved + 1U) & 4095U;
  }
  last_notify_idx_reserved = new_notify_idx;
  notify_idx_count = notify_idx_count + 1U;
  entry->idx = new_notify_idx;
  bucket = hash_32(entry->idx, 6U);
  hlist_add_head(& entry->node, (struct hlist_head *)(& vmci_doorbell_it.entries) + (unsigned long )bucket);
  spin_unlock_bh(& vmci_doorbell_it.lock);
  return;
}
}
static void dbell_index_table_remove(struct dbell_entry *entry )
{
  struct dbell_entry *tmp ;
  {
  spin_lock_bh(& vmci_doorbell_it.lock);
  hlist_del_init(& entry->node);
  notify_idx_count = notify_idx_count - 1U;
  if (entry->idx == max_notify_idx - 1U) {
    goto ldv_20977;
    ldv_20976:
    max_notify_idx = max_notify_idx - 1U;
    ldv_20977: ;
    if (max_notify_idx != 0U) {
      tmp = dbell_index_table_find(max_notify_idx - 1U);
      if ((unsigned long )tmp == (unsigned long )((struct dbell_entry *)0)) {
        goto ldv_20976;
      } else {
        goto ldv_20978;
      }
    } else {
    }
    ldv_20978: ;
  } else {
  }
  last_notify_idx_released = entry->idx;
  spin_unlock_bh(& vmci_doorbell_it.lock);
  vmci_resource_put(& entry->resource);
  return;
}
}
static int dbell_link(struct vmci_handle handle , u32 notify_idx )
{
  struct vmci_doorbell_link_msg link_msg ;
  struct vmci_handle __constr_expr_0 ;
  int tmp ;
  {
  __constr_expr_0.context = 0U;
  __constr_expr_0.resource = 3U;
  link_msg.hdr.dst = __constr_expr_0;
  link_msg.hdr.src = VMCI_ANON_SRC_HANDLE;
  link_msg.hdr.payload_size = 16ULL;
  link_msg.handle = handle;
  link_msg.notify_idx = (u64 )notify_idx;
  tmp = vmci_send_datagram(& link_msg.hdr);
  return (tmp);
}
}
static int dbell_unlink(struct vmci_handle handle )
{
  struct vmci_doorbell_unlink_msg unlink_msg ;
  struct vmci_handle __constr_expr_0 ;
  int tmp ;
  {
  __constr_expr_0.context = 0U;
  __constr_expr_0.resource = 4U;
  unlink_msg.hdr.dst = __constr_expr_0;
  unlink_msg.hdr.src = VMCI_ANON_SRC_HANDLE;
  unlink_msg.hdr.payload_size = 8ULL;
  unlink_msg.handle = handle;
  tmp = vmci_send_datagram(& unlink_msg.hdr);
  return (tmp);
}
}
static int dbell_notify_as_guest(struct vmci_handle handle , u32 priv_flags )
{
  struct vmci_doorbell_notify_msg notify_msg ;
  struct vmci_handle __constr_expr_0 ;
  int tmp ;
  {
  __constr_expr_0.context = 0U;
  __constr_expr_0.resource = 5U;
  notify_msg.hdr.dst = __constr_expr_0;
  notify_msg.hdr.src = VMCI_ANON_SRC_HANDLE;
  notify_msg.hdr.payload_size = 8ULL;
  notify_msg.handle = handle;
  tmp = vmci_send_datagram(& notify_msg.hdr);
  return (tmp);
}
}
static void dbell_delayed_dispatch(struct work_struct *work )
{
  struct dbell_entry *entry ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  entry = (struct dbell_entry *)__mptr + 0xffffffffffffff68UL;
  (*(entry->notify_cb))(entry->client_data);
  vmci_resource_put(& entry->resource);
  return;
}
}
int vmci_dbell_host_context_notify(u32 src_cid , struct vmci_handle handle )
{
  struct dbell_entry *entry ;
  struct vmci_resource *resource ;
  bool tmp ;
  struct vmci_resource const *__mptr ;
  {
  tmp = vmci_handle_is_invalid___0(handle);
  if ((int )tmp) {
    no_printk("\017Notifying an invalid doorbell (handle=0x%x:0x%x)\n", handle.context,
              handle.resource);
    return (-2);
  } else {
  }
  resource = vmci_resource_by_handle(handle, 4);
  if ((unsigned long )resource == (unsigned long )((struct vmci_resource *)0)) {
    no_printk("\017Notifying an unknown doorbell (handle=0x%x:0x%x)\n", handle.context,
              handle.resource);
    return (-21);
  } else {
  }
  __mptr = (struct vmci_resource const *)resource;
  entry = (struct dbell_entry *)__mptr;
  if ((int )entry->run_delayed) {
    schedule_work___0(& entry->work);
  } else {
    (*(entry->notify_cb))(entry->client_data);
    vmci_resource_put(resource);
  }
  return (0);
}
}
bool vmci_dbell_register_notification_bitmap(u32 bitmap_ppn )
{
  int result ;
  struct vmci_notify_bm_set_msg bitmap_set_msg ;
  struct vmci_handle __constr_expr_0 ;
  {
  __constr_expr_0.context = 0U;
  __constr_expr_0.resource = 2U;
  bitmap_set_msg.hdr.dst = __constr_expr_0;
  bitmap_set_msg.hdr.src = VMCI_ANON_SRC_HANDLE;
  bitmap_set_msg.hdr.payload_size = 8ULL;
  bitmap_set_msg.bitmap_ppn = bitmap_ppn;
  result = vmci_send_datagram(& bitmap_set_msg.hdr);
  if (result != 0) {
    no_printk("\017Failed to register (PPN=%u) as notification bitmap (error=%d)\n",
              bitmap_ppn, result);
    return (0);
  } else {
  }
  return (1);
}
}
static void dbell_fire_entries(u32 notify_idx )
{
  u32 bucket ;
  u32 tmp ;
  struct dbell_entry *dbell ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct dbell_entry *tmp___0 ;
  int tmp___1 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct dbell_entry *tmp___2 ;
  {
  tmp = hash_32(notify_idx, 6U);
  bucket = tmp;
  spin_lock_bh(& vmci_doorbell_it.lock);
  ____ptr = ((struct hlist_head *)(& vmci_doorbell_it.entries) + (unsigned long )bucket)->first;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp___0 = (struct dbell_entry *)__mptr + 0xffffffffffffff78UL;
  } else {
    tmp___0 = (struct dbell_entry *)0;
  }
  dbell = tmp___0;
  goto ldv_21030;
  ldv_21029: ;
  if (dbell->idx == notify_idx) {
    tmp___1 = atomic_read((atomic_t const *)(& dbell->active));
    if (tmp___1 == 1) {
      if ((int )dbell->run_delayed) {
        vmci_resource_get(& dbell->resource);
        schedule_work___0(& dbell->work);
      } else {
        (*(dbell->notify_cb))(dbell->client_data);
      }
    } else {
    }
  } else {
  }
  ____ptr___0 = dbell->node.next;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___2 = (struct dbell_entry *)__mptr___0 + 0xffffffffffffff78UL;
  } else {
    tmp___2 = (struct dbell_entry *)0;
  }
  dbell = tmp___2;
  ldv_21030: ;
  if ((unsigned long )dbell != (unsigned long )((struct dbell_entry *)0)) {
    goto ldv_21029;
  } else {
  }
  spin_unlock_bh(& vmci_doorbell_it.lock);
  return;
}
}
void vmci_dbell_scan_notification_entries(u8 *bitmap )
{
  u32 idx ;
  {
  idx = 0U;
  goto ldv_21037;
  ldv_21036: ;
  if ((int )*(bitmap + (unsigned long )idx) & 1) {
    *(bitmap + (unsigned long )idx) = (unsigned int )*(bitmap + (unsigned long )idx) & 254U;
    dbell_fire_entries(idx);
  } else {
  }
  idx = idx + 1U;
  ldv_21037: ;
  if (idx < max_notify_idx) {
    goto ldv_21036;
  } else {
  }
  return;
}
}
int vmci_doorbell_create(struct vmci_handle *handle , u32 flags , u32 priv_flags ,
                         void (*notify_cb)(void * ) , void *client_data )
{
  struct dbell_entry *entry ;
  struct vmci_handle new_handle ;
  int result ;
  void *tmp ;
  u32 context_id ;
  u32 tmp___0 ;
  struct vmci_handle __constr_expr_0 ;
  bool valid_context ;
  bool tmp___1 ;
  u32 tmp___2 ;
  bool tmp___3 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_1 ;
  bool tmp___4 ;
  {
  if ((((unsigned long )handle == (unsigned long )((struct vmci_handle *)0) || (unsigned long )notify_cb == (unsigned long )((void (*)(void * ))0)) || (flags & 4294967294U) != 0U) || (priv_flags & 4294967292U) != 0U) {
    return (-2);
  } else {
  }
  tmp = kmalloc(264UL, 208U);
  entry = (struct dbell_entry *)tmp;
  if ((unsigned long )entry == (unsigned long )((struct dbell_entry *)0)) {
    printk("\fFailed allocating memory for datagram entry\n");
    return (-3);
  } else {
  }
  tmp___3 = vmci_handle_is_invalid___0(*handle);
  if ((int )tmp___3) {
    tmp___0 = vmci_get_context_id();
    context_id = tmp___0;
    __constr_expr_0.context = context_id;
    __constr_expr_0.resource = 4294967295U;
    new_handle = __constr_expr_0;
  } else {
    valid_context = 0;
    if (handle->context == 2U) {
      valid_context = 1;
    } else {
      tmp___1 = vmci_guest_code_active();
      if ((int )tmp___1) {
        tmp___2 = vmci_get_context_id();
        if (tmp___2 == handle->context) {
          valid_context = 1;
        } else {
        }
      } else {
      }
    }
    if (! valid_context || handle->resource == 4294967295U) {
      no_printk("\017Invalid argument (handle=0x%x:0x%x)\n", handle->context, handle->resource);
      result = -2;
      goto free_mem;
    } else {
    }
    new_handle = *handle;
  }
  entry->idx = 0U;
  INIT_HLIST_NODE(& entry->node);
  entry->priv_flags = priv_flags;
  __init_work(& entry->work, 0);
  __constr_expr_1.counter = 137438953408L;
  entry->work.data = __constr_expr_1;
  lockdep_init_map(& entry->work.lockdep_map, "(&entry->work)", & __key, 0);
  INIT_LIST_HEAD(& entry->work.entry);
  entry->work.func = & dbell_delayed_dispatch;
  entry->run_delayed = (flags & 1U) != 0U;
  entry->notify_cb = notify_cb;
  entry->client_data = client_data;
  atomic_set(& entry->active, 0);
  result = vmci_resource_add(& entry->resource, 4, new_handle);
  if (result != 0) {
    printk("\fFailed to add new resource (handle=0x%x:0x%x), error: %d\n", new_handle.context,
           new_handle.resource, result);
    goto free_mem;
  } else {
  }
  new_handle = vmci_resource_handle(& entry->resource);
  tmp___4 = vmci_guest_code_active();
  if ((int )tmp___4) {
    dbell_index_table_add(entry);
    result = dbell_link(new_handle, entry->idx);
    if (result != 0) {
      goto destroy_resource;
    } else {
    }
    atomic_set(& entry->active, 1);
  } else {
  }
  *handle = new_handle;
  return (result);
  destroy_resource:
  dbell_index_table_remove(entry);
  vmci_resource_remove(& entry->resource);
  free_mem:
  kfree((void const *)entry);
  return (result);
}
}
static char const __kstrtab_vmci_doorbell_create[21U] =
  { 'v', 'm', 'c', 'i',
        '_', 'd', 'o', 'o',
        'r', 'b', 'e', 'l',
        'l', '_', 'c', 'r',
        'e', 'a', 't', 'e',
        '\000'};
struct kernel_symbol const __ksymtab_vmci_doorbell_create ;
struct kernel_symbol const __ksymtab_vmci_doorbell_create = {(unsigned long )(& vmci_doorbell_create), (char const *)(& __kstrtab_vmci_doorbell_create)};
int vmci_doorbell_destroy(struct vmci_handle handle )
{
  struct dbell_entry *entry ;
  struct vmci_resource *resource ;
  bool tmp ;
  struct vmci_resource const *__mptr ;
  int result ;
  bool tmp___0 ;
  {
  tmp = vmci_handle_is_invalid___0(handle);
  if ((int )tmp) {
    return (-2);
  } else {
  }
  resource = vmci_resource_by_handle(handle, 4);
  if ((unsigned long )resource == (unsigned long )((struct vmci_resource *)0)) {
    no_printk("\017Failed to destroy doorbell (handle=0x%x:0x%x)\n", handle.context,
              handle.resource);
    return (-21);
  } else {
  }
  __mptr = (struct vmci_resource const *)resource;
  entry = (struct dbell_entry *)__mptr;
  tmp___0 = vmci_guest_code_active();
  if ((int )tmp___0) {
    dbell_index_table_remove(entry);
    result = dbell_unlink(handle);
    if (result != 0) {
      no_printk("\017Unlink of doorbell (handle=0x%x:0x%x) unknown by hypervisor (error=%d)\n",
                handle.context, handle.resource, result);
    } else {
    }
  } else {
  }
  vmci_resource_put(& entry->resource);
  vmci_resource_remove(& entry->resource);
  kfree((void const *)entry);
  return (0);
}
}
static char const __kstrtab_vmci_doorbell_destroy[22U] =
  { 'v', 'm', 'c', 'i',
        '_', 'd', 'o', 'o',
        'r', 'b', 'e', 'l',
        'l', '_', 'd', 'e',
        's', 't', 'r', 'o',
        'y', '\000'};
struct kernel_symbol const __ksymtab_vmci_doorbell_destroy ;
struct kernel_symbol const __ksymtab_vmci_doorbell_destroy = {(unsigned long )(& vmci_doorbell_destroy), (char const *)(& __kstrtab_vmci_doorbell_destroy)};
int vmci_doorbell_notify(struct vmci_handle dst , u32 priv_flags )
{
  int retval ;
  enum vmci_route route ;
  struct vmci_handle src ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = vmci_handle_is_invalid___0(dst);
  if ((int )tmp || (priv_flags & 4294967292U) != 0U) {
    return (-2);
  } else {
  }
  src = VMCI_INVALID_HANDLE___0;
  retval = vmci_route(& src, (struct vmci_handle const *)(& dst), 0, & route);
  if (retval < 0) {
    return (retval);
  } else {
  }
  if ((unsigned int )route == 1U) {
    tmp___0 = vmci_ctx_notify_dbell(2U, dst, priv_flags);
    return (tmp___0);
  } else {
  }
  if ((unsigned int )route == 2U) {
    tmp___1 = dbell_notify_as_guest(dst, priv_flags);
    return (tmp___1);
  } else {
  }
  printk("\fUnknown route (%d) for doorbell\n", (unsigned int )route);
  return (-10);
}
}
static char const __kstrtab_vmci_doorbell_notify[21U] =
  { 'v', 'm', 'c', 'i',
        '_', 'd', 'o', 'o',
        'r', 'b', 'e', 'l',
        'l', '_', 'n', 'o',
        't', 'i', 'f', 'y',
        '\000'};
struct kernel_symbol const __ksymtab_vmci_doorbell_notify ;
struct kernel_symbol const __ksymtab_vmci_doorbell_notify = {(unsigned long )(& vmci_doorbell_notify), (char const *)(& __kstrtab_vmci_doorbell_notify)};
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
    dbell_delayed_dispatch(ldv_work_struct_5_0);
    ldv_work_5_0 = 1;
  } else {
  }
  goto ldv_21113;
  case 1: ;
  if (ldv_work_5_1 == 2 || ldv_work_5_1 == 3) {
    ldv_work_5_1 = 4;
    dbell_delayed_dispatch(ldv_work_struct_5_0);
    ldv_work_5_1 = 1;
  } else {
  }
  goto ldv_21113;
  case 2: ;
  if (ldv_work_5_2 == 2 || ldv_work_5_2 == 3) {
    ldv_work_5_2 = 4;
    dbell_delayed_dispatch(ldv_work_struct_5_0);
    ldv_work_5_2 = 1;
  } else {
  }
  goto ldv_21113;
  case 3: ;
  if (ldv_work_5_3 == 2 || ldv_work_5_3 == 3) {
    ldv_work_5_3 = 4;
    dbell_delayed_dispatch(ldv_work_struct_5_0);
    ldv_work_5_3 = 1;
  } else {
  }
  goto ldv_21113;
  default:
  ldv_stop();
  }
  ldv_21113: ;
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
    dbell_delayed_dispatch(work);
    ldv_work_5_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_5_1 == 2 || ldv_work_5_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_5_1) {
    dbell_delayed_dispatch(work);
    ldv_work_5_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_5_2 == 2 || ldv_work_5_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_5_2) {
    dbell_delayed_dispatch(work);
    ldv_work_5_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_5_3 == 2 || ldv_work_5_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_5_3) {
    dbell_delayed_dispatch(work);
    ldv_work_5_3 = 1;
    return;
  } else {
  }
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
  activate_work_3(ldv_func_arg3, 2);
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
  activate_work_3(& ldv_func_arg3->work, 2);
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
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_48(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
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
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_50(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_69(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_68(struct mutex *ldv_func_arg1 ) ;
bool ldv_queue_work_on_63(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_65(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_64(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_67(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_66(struct workqueue_struct *ldv_func_arg1 ) ;
int pci_counter ;
struct work_struct *ldv_work_struct_3_1 ;
struct work_struct *ldv_work_struct_5_2 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
struct work_struct *ldv_work_struct_5_3 ;
struct file *vmuser_fops_group2 ;
int ldv_work_3_2 ;
int ldv_work_3_0 ;
void *ldv_irq_data_2_3 ;
struct work_struct *ldv_work_struct_4_3 ;
int ldv_irq_line_2_0 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
void *ldv_irq_data_2_2 ;
int ldv_work_3_3 ;
struct work_struct *ldv_work_struct_4_0 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_work_5_3 ;
int ldv_irq_line_1_2 ;
struct work_struct *ldv_work_struct_3_3 ;
struct inode *vmuser_fops_group1 ;
int ldv_irq_line_2_3 ;
void *ldv_irq_data_2_1 ;
void *ldv_irq_data_1_1 ;
int ldv_irq_line_2_2 ;
int ldv_work_4_0 ;
struct work_struct *ldv_work_struct_3_2 ;
int ldv_state_variable_6 ;
void *ldv_irq_data_1_0 ;
int ldv_work_4_1 ;
int ldv_work_4_3 ;
int ldv_work_3_1 ;
int ldv_irq_line_2_1 ;
int ldv_work_5_0 ;
void *ldv_irq_data_1_3 ;
int ldv_state_variable_2 ;
int ldv_work_5_1 ;
struct work_struct *ldv_work_struct_4_2 ;
void *ldv_irq_data_1_2 ;
void *ldv_irq_data_2_0 ;
struct pci_dev *vmci_guest_driver_group1 ;
struct work_struct *ldv_work_struct_3_0 ;
int ldv_work_4_2 ;
struct work_struct *ldv_work_struct_5_0 ;
struct work_struct *ldv_work_struct_5_1 ;
int ldv_irq_line_1_3 ;
int ldv_work_5_2 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
struct work_struct *ldv_work_struct_4_1 ;
int ldv_state_variable_4 ;
int vmci_host_init(void) ;
void vmci_host_exit(void) ;
int vmci_guest_init(void) ;
void vmci_guest_exit(void) ;
u32 vmci_get_vm_context_id(void) ;
int vmci_event_init(void) ;
void vmci_event_exit(void) ;
static bool vmci_disable_host ;
static bool vmci_disable_guest ;
static bool vmci_guest_personality_initialized ;
static bool vmci_host_personality_initialized ;
u32 vmci_get_context_id(void)
{
  u32 tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = vmci_guest_code_active();
  if ((int )tmp___1) {
    tmp = vmci_get_vm_context_id();
    return (tmp);
  } else {
    tmp___0 = vmci_host_code_active();
    if ((int )tmp___0) {
      return (2U);
    } else {
    }
  }
  return (4294967295U);
}
}
static char const __kstrtab_vmci_get_context_id[20U] =
  { 'v', 'm', 'c', 'i',
        '_', 'g', 'e', 't',
        '_', 'c', 'o', 'n',
        't', 'e', 'x', 't',
        '_', 'i', 'd', '\000'};
struct kernel_symbol const __ksymtab_vmci_get_context_id ;
struct kernel_symbol const __ksymtab_vmci_get_context_id = {(unsigned long )(& vmci_get_context_id), (char const *)(& __kstrtab_vmci_get_context_id)};
static int vmci_drv_init(void)
{
  int vmci_err ;
  int error ;
  bool tmp ;
  {
  vmci_err = vmci_event_init();
  if (vmci_err < 0) {
    printk("\vFailed to initialize VMCIEvent (result=%d)\n", vmci_err);
    return (-22);
  } else {
  }
  if (! vmci_disable_guest) {
    error = vmci_guest_init();
    if (error != 0) {
      printk("\fFailed to initialize guest personality (err=%d)\n", error);
    } else {
      vmci_guest_personality_initialized = 1;
      tmp = vmci_guest_code_active();
      printk("\016Guest personality initialized and is %s\n", (int )tmp ? (char *)"active" : (char *)"inactive");
    }
  } else {
  }
  if (! vmci_disable_host) {
    error = vmci_host_init();
    if (error != 0) {
      printk("\fUnable to initialize host personality (err=%d)\n", error);
    } else {
      vmci_host_personality_initialized = 1;
      printk("\016Initialized host personality\n");
    }
  } else {
  }
  if (! vmci_guest_personality_initialized && ! vmci_host_personality_initialized) {
    vmci_event_exit();
    return (-19);
  } else {
  }
  return (0);
}
}
static void vmci_drv_exit(void)
{
  {
  if ((int )vmci_guest_personality_initialized) {
    vmci_guest_exit();
  } else {
  }
  if ((int )vmci_host_personality_initialized) {
    vmci_host_exit();
  } else {
  }
  vmci_event_exit();
  return;
}
}
extern void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
int ldv_retval_2 ;
void ldv_main_exported_6(void) ;
void ldv_main_exported_7(void) ;
int main(void)
{
  int tmp ;
  int tmp___0 ;
  {
  ldv_initialize();
  ldv_state_variable_6 = 0;
  work_init_3();
  ldv_state_variable_3 = 1;
  ldv_state_variable_7 = 0;
  ldv_state_variable_2 = 1;
  ldv_state_variable_1 = 1;
  work_init_4();
  ldv_state_variable_4 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  work_init_5();
  ldv_state_variable_5 = 1;
  ldv_20960:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    ldv_main_exported_6();
  } else {
  }
  goto ldv_20946;
  case 1: ;
  goto ldv_20946;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    ldv_main_exported_7();
  } else {
  }
  goto ldv_20946;
  case 3: ;
  goto ldv_20946;
  case 4: ;
  goto ldv_20946;
  case 5: ;
  goto ldv_20946;
  case 6: ;
  if (ldv_state_variable_0 != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      vmci_drv_exit();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_20955;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_2 = vmci_drv_init();
      if (ldv_retval_2 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_2 == 0) {
        ldv_state_variable_0 = 2;
      } else {
      }
    } else {
    }
    goto ldv_20955;
    default:
    ldv_stop();
    }
    ldv_20955: ;
  } else {
  }
  goto ldv_20946;
  case 7: ;
  goto ldv_20946;
  default:
  ldv_stop();
  }
  ldv_20946: ;
  goto ldv_20960;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
bool ldv_queue_work_on_63(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_64(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_65(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_66(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_67(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_68(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_69(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_87(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_89(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_91(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_86(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_88(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_90(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_subscriber_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_subscriber_mutex(struct mutex *lock ) ;
__inline static void __preempt_count_add___0(int val )
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
  goto ldv_6631;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6631;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6631;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_6631;
  default:
  __bad_percpu_size();
  }
  ldv_6631: ;
  return;
}
}
__inline static void __preempt_count_sub___0(int val )
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
  goto ldv_6643;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6643;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6643;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6643;
  default:
  __bad_percpu_size();
  }
  ldv_6643: ;
  return;
}
}
__inline static void __rcu_read_lock___0(void)
{
  {
  __preempt_count_add___0(1);
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void __rcu_read_unlock___0(void)
{
  {
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub___0(1);
  return;
}
}
__inline static void rcu_read_lock___0(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  __rcu_read_lock___0();
  rcu_lock_acquire(& rcu_lock_map);
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_watching();
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 849, "rcu_read_lock() used illegally while idle");
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void rcu_read_unlock___0(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_watching();
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 900, "rcu_read_unlock() used illegally while idle");
    } else {
    }
  } else {
  }
  __rcu_read_unlock___0();
  rcu_lock_release(& rcu_lock_map);
  return;
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
__inline static void list_add_rcu(struct list_head *new , struct list_head *head )
{
  {
  __list_add_rcu(new, head, head->next);
  return;
}
}
int vmci_event_subscribe(u32 event , void (*callback)(u32 , struct vmci_event_data const * ,
                                                      void * ) , void *callback_data ,
                         u32 *new_subscription_id ) ;
int vmci_event_unsubscribe(u32 sub_id ) ;
static struct list_head subscriber_array[7U] ;
static struct mutex subscriber_mutex = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "subscriber_mutex.wait_lock",
                                                          0, 0UL}}}}, {& subscriber_mutex.wait_list,
                                                                       & subscriber_mutex.wait_list},
    0, (void *)(& subscriber_mutex), {0, {0, 0}, "subscriber_mutex", 0, 0UL}};
int vmci_event_init(void)
{
  int i ;
  {
  i = 0;
  goto ldv_20884;
  ldv_20883:
  INIT_LIST_HEAD((struct list_head *)(& subscriber_array) + (unsigned long )i);
  i = i + 1;
  ldv_20884: ;
  if (i <= 6) {
    goto ldv_20883;
  } else {
  }
  return (0);
}
}
void vmci_event_exit(void)
{
  int e ;
  struct vmci_subscription *cur ;
  struct vmci_subscription *p2 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  e = 0;
  goto ldv_20902;
  ldv_20901:
  __mptr = (struct list_head const *)((struct list_head *)(& subscriber_array) + (unsigned long )e)->next;
  cur = (struct vmci_subscription *)__mptr + 0xffffffffffffffe8UL;
  __mptr___0 = (struct list_head const *)cur->node.next;
  p2 = (struct vmci_subscription *)__mptr___0 + 0xffffffffffffffe8UL;
  goto ldv_20899;
  ldv_20898:
  printk("\fUnexpected free events occurring\n");
  list_del(& cur->node);
  kfree((void const *)cur);
  cur = p2;
  __mptr___1 = (struct list_head const *)p2->node.next;
  p2 = (struct vmci_subscription *)__mptr___1 + 0xffffffffffffffe8UL;
  ldv_20899: ;
  if ((unsigned long )(& cur->node) != (unsigned long )((struct list_head *)(& subscriber_array) + (unsigned long )e)) {
    goto ldv_20898;
  } else {
  }
  e = e + 1;
  ldv_20902: ;
  if (e <= 6) {
    goto ldv_20901;
  } else {
  }
  return;
}
}
static struct vmci_subscription *event_find(u32 sub_id )
{
  int e ;
  struct vmci_subscription *cur ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  e = 0;
  goto ldv_20917;
  ldv_20916:
  __mptr = (struct list_head const *)((struct list_head *)(& subscriber_array) + (unsigned long )e)->next;
  cur = (struct vmci_subscription *)__mptr + 0xffffffffffffffe8UL;
  goto ldv_20914;
  ldv_20913: ;
  if (cur->id == sub_id) {
    return (cur);
  } else {
  }
  __mptr___0 = (struct list_head const *)cur->node.next;
  cur = (struct vmci_subscription *)__mptr___0 + 0xffffffffffffffe8UL;
  ldv_20914: ;
  if ((unsigned long )(& cur->node) != (unsigned long )((struct list_head *)(& subscriber_array) + (unsigned long )e)) {
    goto ldv_20913;
  } else {
  }
  e = e + 1;
  ldv_20917: ;
  if (e <= 6) {
    goto ldv_20916;
  } else {
  }
  return ((struct vmci_subscription *)0);
}
}
static void event_deliver(struct vmci_event_msg *event_msg )
{
  struct vmci_subscription *cur ;
  struct list_head *subscriber_list ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  union __anonunion___u_219 __u ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  union __anonunion___u_221 __u___0 ;
  int tmp___0 ;
  {
  rcu_read_lock___0();
  subscriber_list = (struct list_head *)(& subscriber_array) + (unsigned long )event_msg->event_data.event;
  __ptr = subscriber_list->next;
  __read_once_size((void const volatile *)(& __ptr), (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  __mptr = (struct list_head const *)________p1;
  cur = (struct vmci_subscription *)__mptr + 0xffffffffffffffe8UL;
  goto ldv_20953;
  ldv_20952:
  (*(cur->callback))(cur->id, (struct vmci_event_data const *)(& event_msg->event_data),
                     cur->callback_data);
  __ptr___0 = cur->node.next;
  __read_once_size((void const volatile *)(& __ptr___0), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___0 = debug_lockdep_rcu_enabled();
  __mptr___0 = (struct list_head const *)________p1___0;
  cur = (struct vmci_subscription *)__mptr___0 + 0xffffffffffffffe8UL;
  ldv_20953: ;
  if ((unsigned long )(& cur->node) != (unsigned long )subscriber_list) {
    goto ldv_20952;
  } else {
  }
  rcu_read_unlock___0();
  return;
}
}
int vmci_event_dispatch(struct vmci_datagram *msg )
{
  struct vmci_event_msg *event_msg ;
  {
  event_msg = (struct vmci_event_msg *)msg;
  if (msg->payload_size <= 3ULL || msg->payload_size > 24ULL) {
    return (-2);
  } else {
  }
  if (event_msg->event_data.event > 6U || (event_msg->event_data.event == 5U || event_msg->event_data.event == 6U)) {
    return (-29);
  } else {
  }
  event_deliver(event_msg);
  return (0);
}
}
int vmci_event_subscribe(u32 event , void (*callback)(u32 , struct vmci_event_data const * ,
                                                      void * ) , void *callback_data ,
                         u32 *new_subscription_id )
{
  struct vmci_subscription *sub ;
  int attempts ;
  int retval ;
  bool have_new_id ;
  void *tmp ;
  u32 subscription_id ;
  struct vmci_subscription *tmp___0 ;
  {
  have_new_id = 0;
  if ((unsigned long )new_subscription_id == (unsigned long )((u32 *)0U)) {
    no_printk("\017%s: Invalid subscription (NULL)\n", "vmci_event_subscribe");
    return (-2);
  } else {
  }
  if ((event > 6U || (event == 5U || event == 6U)) || (unsigned long )callback == (unsigned long )((void (*)(u32 ,
                                                                                                             struct vmci_event_data const * ,
                                                                                                             void * ))0)) {
    no_printk("\017%s: Failed to subscribe to event (type=%d) (callback=%p) (data=%p)\n",
              "vmci_event_subscribe", event, callback, callback_data);
    return (-2);
  } else {
  }
  tmp = kzalloc(40UL, 208U);
  sub = (struct vmci_subscription *)tmp;
  if ((unsigned long )sub == (unsigned long )((struct vmci_subscription *)0)) {
    return (-3);
  } else {
  }
  sub->id = 7U;
  sub->event = event;
  sub->callback = callback;
  sub->callback_data = callback_data;
  INIT_LIST_HEAD(& sub->node);
  ldv_mutex_lock_88(& subscriber_mutex);
  attempts = 0;
  goto ldv_20973;
  ldv_20972:
  subscription_id = subscription_id + 1U;
  tmp___0 = event_find(subscription_id);
  if ((unsigned long )tmp___0 == (unsigned long )((struct vmci_subscription *)0)) {
    sub->id = subscription_id;
    have_new_id = 1;
    goto ldv_20971;
  } else {
  }
  attempts = attempts + 1;
  ldv_20973: ;
  if (attempts <= 9) {
    goto ldv_20972;
  } else {
  }
  ldv_20971: ;
  if ((int )have_new_id) {
    list_add_rcu(& sub->node, (struct list_head *)(& subscriber_array) + (unsigned long )event);
    retval = 0;
  } else {
    retval = -19;
  }
  ldv_mutex_unlock_89(& subscriber_mutex);
  *new_subscription_id = sub->id;
  return (retval);
}
}
static char const __kstrtab_vmci_event_subscribe[21U] =
  { 'v', 'm', 'c', 'i',
        '_', 'e', 'v', 'e',
        'n', 't', '_', 's',
        'u', 'b', 's', 'c',
        'r', 'i', 'b', 'e',
        '\000'};
struct kernel_symbol const __ksymtab_vmci_event_subscribe ;
struct kernel_symbol const __ksymtab_vmci_event_subscribe = {(unsigned long )(& vmci_event_subscribe), (char const *)(& __kstrtab_vmci_event_subscribe)};
int vmci_event_unsubscribe(u32 sub_id )
{
  struct vmci_subscription *s ;
  {
  ldv_mutex_lock_90(& subscriber_mutex);
  s = event_find(sub_id);
  if ((unsigned long )s != (unsigned long )((struct vmci_subscription *)0)) {
    list_del_rcu(& s->node);
  } else {
  }
  ldv_mutex_unlock_91(& subscriber_mutex);
  if ((unsigned long )s == (unsigned long )((struct vmci_subscription *)0)) {
    return (-21);
  } else {
  }
  synchronize_rcu();
  kfree((void const *)s);
  return (0);
}
}
static char const __kstrtab_vmci_event_unsubscribe[23U] =
  { 'v', 'm', 'c', 'i',
        '_', 'e', 'v', 'e',
        'n', 't', '_', 'u',
        'n', 's', 'u', 'b',
        's', 'c', 'r', 'i',
        'b', 'e', '\000'};
struct kernel_symbol const __ksymtab_vmci_event_unsubscribe ;
struct kernel_symbol const __ksymtab_vmci_event_unsubscribe = {(unsigned long )(& vmci_event_unsubscribe), (char const *)(& __kstrtab_vmci_event_unsubscribe)};
bool ldv_queue_work_on_81(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
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
  activate_work_3(& ldv_func_arg3->work, 2);
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
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_84(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
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
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_86(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_87(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_88(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_subscriber_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_89(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_subscriber_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_90(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_subscriber_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_91(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_subscriber_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
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
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern void *memmove(void * , void const * , size_t ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_117(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_114(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_118(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_112(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_115(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_116(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->__annonCompField17.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->__annonCompField17.rlock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField17.rlock, flags);
  return;
}
}
bool ldv_queue_work_on_107(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_109(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_108(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_111(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_110(struct workqueue_struct *ldv_func_arg1 ) ;
extern unsigned int ioread32(void * ) ;
extern void iowrite32(u32 , void * ) ;
extern void ioread8_rep(void * , void * , unsigned long ) ;
extern void iowrite8_rep(void * , void const * , unsigned long ) ;
void choose_interrupt_2(void) ;
void disable_suitable_irq_2(int line , void *data ) ;
void activate_suitable_irq_2(int line , void *data ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void choose_interrupt_1(void) ;
int reg_check_2(irqreturn_t (*handler)(int , void * ) ) ;
void disable_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void activate_suitable_irq_1(int line , void *data ) ;
int ldv_irq_2(int state , int line , void *data ) ;
void ldv_pci_driver_7(void) ;
static struct vmci_handle const VMCI_ANON_SRC_HANDLE___0 = {4294967295U, 4294967295U};
__inline static void const *vmci_event_data_const_payload(struct vmci_event_data const *ev_data )
{
  {
  return ((void const *)ev_data + 8U);
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
__inline static int ldv_request_irq_119(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev ) ;
__inline static int ldv_request_irq_120(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_121(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_122(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_123(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
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
extern void *devm_kmalloc(struct device * , size_t , gfp_t ) ;
__inline static void *devm_kzalloc(struct device *dev , size_t size , gfp_t gfp )
{
  void *tmp ;
  {
  tmp = devm_kmalloc(dev, size, gfp | 32768U);
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
extern void dev_warn(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
extern int pcim_enable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
int ldv___pci_register_driver_124(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                  char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
void ldv_pci_unregister_driver_125(struct pci_driver *ldv_func_arg1 ) ;
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
__inline static int pci_enable_msix_exact(struct pci_dev *dev , struct msix_entry *entries ,
                                          int nvec )
{
  int rc ;
  int tmp ;
  {
  tmp = pci_enable_msix_range(dev, entries, nvec, nvec);
  rc = tmp;
  if (rc < 0) {
    return (rc);
  } else {
  }
  return (0);
}
}
extern void *dma_alloc_attrs(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
extern void dma_free_attrs(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
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
extern void * const *pcim_iomap_table(struct pci_dev * ) ;
extern int pcim_iomap_regions(struct pci_dev * , int , char const * ) ;
extern void *vmalloc(unsigned long ) ;
extern void vfree(void const * ) ;
void vmci_qp_guest_endpoints_exit(void) ;
struct pci_dev *vmci_pdev ;
static bool vmci_disable_msi ;
static bool vmci_disable_msix ;
static u32 ctx_update_sub_id = 4294967295U;
static u32 vm_context_id = 4294967295U;
static struct vmci_guest_device *vmci_dev_g ;
static spinlock_t vmci_dev_spinlock = {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "vmci_dev_spinlock",
                                                    0, 0UL}}}};
static atomic_t vmci_num_guest_devices = {0};
bool vmci_guest_code_active(void)
{
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& vmci_num_guest_devices));
  return (tmp != 0);
}
}
u32 vmci_get_vm_context_id(void)
{
  struct vmci_datagram get_cid_msg ;
  struct vmci_handle __constr_expr_0 ;
  int tmp ;
  {
  if (vm_context_id == 4294967295U) {
    __constr_expr_0.context = 0U;
    __constr_expr_0.resource = 1U;
    get_cid_msg.dst = __constr_expr_0;
    get_cid_msg.src = VMCI_ANON_SRC_HANDLE___0;
    get_cid_msg.payload_size = 0ULL;
    tmp = vmci_send_datagram(& get_cid_msg);
    vm_context_id = (u32 )tmp;
  } else {
  }
  return (vm_context_id);
}
}
int vmci_send_datagram(struct vmci_datagram *dg )
{
  unsigned long flags ;
  int result ;
  raw_spinlock_t *tmp ;
  unsigned int tmp___0 ;
  {
  if ((unsigned long )dg == (unsigned long )((struct vmci_datagram *)0)) {
    return (-2);
  } else {
  }
  tmp = spinlock_check(& vmci_dev_spinlock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned long )vmci_dev_g != (unsigned long )((struct vmci_guest_device *)0)) {
    iowrite8_rep(vmci_dev_g->iobase + 16UL, (void const *)dg, (unsigned long )dg->payload_size + 24UL);
    tmp___0 = ioread32(vmci_dev_g->iobase + 28UL);
    result = (int )tmp___0;
  } else {
    result = -20;
  }
  spin_unlock_irqrestore(& vmci_dev_spinlock, flags);
  return (result);
}
}
static char const __kstrtab_vmci_send_datagram[19U] =
  { 'v', 'm', 'c', 'i',
        '_', 's', 'e', 'n',
        'd', '_', 'd', 'a',
        't', 'a', 'g', 'r',
        'a', 'm', '\000'};
struct kernel_symbol const __ksymtab_vmci_send_datagram ;
struct kernel_symbol const __ksymtab_vmci_send_datagram = {(unsigned long )(& vmci_send_datagram), (char const *)(& __kstrtab_vmci_send_datagram)};
static void vmci_guest_cid_update(u32 sub_id , struct vmci_event_data const *event_data ,
                                  void *client_data )
{
  struct vmci_event_payld_ctx const *ev_payload ;
  void const *tmp ;
  {
  tmp = vmci_event_data_const_payload(event_data);
  ev_payload = (struct vmci_event_payld_ctx const *)tmp;
  if (sub_id != ctx_update_sub_id) {
    no_printk("\017Invalid subscriber (ID=0x%x)\n", sub_id);
    return;
  } else {
  }
  if ((unsigned long )event_data == (unsigned long )((struct vmci_event_data const *)0) || (unsigned int )ev_payload->context_id == 4294967295U) {
    no_printk("\017Invalid event data\n");
    return;
  } else {
  }
  no_printk("\017Updating context from (ID=0x%x) to (ID=0x%x) on event (type=%d)\n",
            vm_context_id, ev_payload->context_id, event_data->event);
  vm_context_id = ev_payload->context_id;
  return;
}
}
static int vmci_check_host_caps(struct pci_dev *pdev )
{
  bool result ;
  struct vmci_resource_query_msg *msg ;
  u32 msg_size ;
  struct vmci_datagram *check_msg ;
  void *tmp ;
  struct vmci_handle __constr_expr_0 ;
  int tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  msg_size = 36U;
  tmp = kmalloc((size_t )msg_size, 208U);
  check_msg = (struct vmci_datagram *)tmp;
  if ((unsigned long )check_msg == (unsigned long )((struct vmci_datagram *)0)) {
    dev_err((struct device const *)(& pdev->dev), "%s: Insufficient memory\n", "vmci_check_host_caps");
    return (-12);
  } else {
  }
  __constr_expr_0.context = 0U;
  __constr_expr_0.resource = 0U;
  check_msg->dst = __constr_expr_0;
  check_msg->src = VMCI_ANON_SRC_HANDLE___0;
  check_msg->payload_size = (u64 )((unsigned long )msg_size - 24UL);
  msg = (struct vmci_resource_query_msg *)check_msg + 24U;
  msg->num_resources = 1U;
  msg->resources[0] = 1U;
  tmp___0 = vmci_send_datagram(check_msg);
  result = tmp___0 == 1;
  kfree((void const *)check_msg);
  descriptor.modname = "vmw_vmci";
  descriptor.function = "vmci_check_host_caps";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_guest.c";
  descriptor.format = "%s: Host capability check: %s\n";
  descriptor.lineno = 195U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& pdev->dev), "%s: Host capability check: %s\n",
                      "vmci_check_host_caps", (int )result ? (char *)"PASSED" : (char *)"FAILED");
  } else {
  }
  return ((int )result ? 0 : -6);
}
}
static void vmci_dispatch_dgs(unsigned long data )
{
  struct vmci_guest_device *vmci_dev ;
  u8 *dg_in_buffer ;
  struct vmci_datagram *dg ;
  size_t dg_in_buffer_size ;
  size_t current_dg_in_buffer_size ;
  size_t remaining_bytes ;
  unsigned int dg_in_size ;
  unsigned long __y ;
  int result ;
  struct _ddebug descriptor ;
  long tmp ;
  size_t bytes_to_skip ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  vmci_dev = (struct vmci_guest_device *)data;
  dg_in_buffer = (u8 *)vmci_dev->data_buffer;
  dg_in_buffer_size = 69632UL;
  current_dg_in_buffer_size = 4096UL;
  ioread8_rep(vmci_dev->iobase + 20UL, vmci_dev->data_buffer, current_dg_in_buffer_size);
  dg = (struct vmci_datagram *)dg_in_buffer;
  remaining_bytes = current_dg_in_buffer_size;
  goto ldv_33896;
  ldv_33904: ;
  if (dg->dst.resource == 4294967295U) {
    __y = 4096UL;
    dg = (struct vmci_datagram *)((((unsigned long )dg + __y) / __y) * __y);
    remaining_bytes = (unsigned long )((long )(dg_in_buffer + current_dg_in_buffer_size) - (long )dg);
    goto ldv_33896;
  } else {
  }
  dg_in_size = ((unsigned int )dg->payload_size + 31U) & 4294967288U;
  if ((size_t )dg_in_size <= dg_in_buffer_size) {
    if ((size_t )dg_in_size > remaining_bytes) {
      if (remaining_bytes != current_dg_in_buffer_size) {
        memmove((void *)dg_in_buffer, (void const *)(dg_in_buffer + (current_dg_in_buffer_size - remaining_bytes)),
                  remaining_bytes);
        dg = (struct vmci_datagram *)dg_in_buffer;
      } else {
      }
      if (current_dg_in_buffer_size != dg_in_buffer_size) {
        current_dg_in_buffer_size = dg_in_buffer_size;
      } else {
      }
      ioread8_rep(vmci_dev->iobase + 20UL, vmci_dev->data_buffer + remaining_bytes,
                  current_dg_in_buffer_size - remaining_bytes);
    } else {
    }
    if (dg->src.context == 0U && dg->dst.resource == 0U) {
      result = vmci_event_dispatch(dg);
    } else {
      result = vmci_datagram_invoke_guest_handler(dg);
    }
    if (result < 0) {
      descriptor.modname = "vmw_vmci";
      descriptor.function = "vmci_dispatch_dgs";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_guest.c";
      descriptor.format = "Datagram with resource (ID=0x%x) failed (err=%d)\n";
      descriptor.lineno = 305U;
      descriptor.flags = 0U;
      tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)vmci_dev->dev, "Datagram with resource (ID=0x%x) failed (err=%d)\n",
                          dg->dst.resource, result);
      } else {
      }
    } else {
    }
    dg = dg + (unsigned long )dg_in_size;
  } else {
    descriptor___0.modname = "vmw_vmci";
    descriptor___0.function = "vmci_dispatch_dgs";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_guest.c";
    descriptor___0.format = "Failed to receive datagram (size=%u bytes)\n";
    descriptor___0.lineno = 319U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)vmci_dev->dev,
                        "Failed to receive datagram (size=%u bytes)\n", dg_in_size);
    } else {
    }
    bytes_to_skip = (size_t )dg_in_size - remaining_bytes;
    if (current_dg_in_buffer_size != dg_in_buffer_size) {
      current_dg_in_buffer_size = dg_in_buffer_size;
    } else {
    }
    ldv_33903:
    ioread8_rep(vmci_dev->iobase + 20UL, vmci_dev->data_buffer, current_dg_in_buffer_size);
    if (bytes_to_skip <= current_dg_in_buffer_size) {
      goto ldv_33902;
    } else {
    }
    bytes_to_skip = bytes_to_skip - current_dg_in_buffer_size;
    goto ldv_33903;
    ldv_33902:
    dg = (struct vmci_datagram *)(dg_in_buffer + bytes_to_skip);
  }
  remaining_bytes = (unsigned long )((long )(dg_in_buffer + current_dg_in_buffer_size) - (long )dg);
  if (remaining_bytes <= 23UL) {
    ioread8_rep(vmci_dev->iobase + 20UL, vmci_dev->data_buffer, current_dg_in_buffer_size);
    dg = (struct vmci_datagram *)dg_in_buffer;
    remaining_bytes = current_dg_in_buffer_size;
  } else {
  }
  ldv_33896: ;
  if (dg->dst.resource != 4294967295U || remaining_bytes > 4096UL) {
    goto ldv_33904;
  } else {
  }
  return;
}
}
static void vmci_process_bitmap(unsigned long data )
{
  struct vmci_guest_device *dev ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  dev = (struct vmci_guest_device *)data;
  if ((unsigned long )dev->notification_bitmap == (unsigned long )((void *)0)) {
    descriptor.modname = "vmw_vmci";
    descriptor.function = "vmci_process_bitmap";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_guest.c";
    descriptor.format = "No bitmap present in %s\n";
    descriptor.lineno = 364U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev->dev, "No bitmap present in %s\n",
                        "vmci_process_bitmap");
    } else {
    }
    return;
  } else {
  }
  vmci_dbell_scan_notification_entries((u8 *)dev->notification_bitmap);
  return;
}
}
static int vmci_enable_msix(struct pci_dev *pdev , struct vmci_guest_device *vmci_dev )
{
  int i ;
  int result ;
  {
  i = 0;
  goto ldv_33919;
  ldv_33918:
  vmci_dev->msix_entries[i].entry = (u16 )i;
  vmci_dev->msix_entries[i].vector = (u32 )i;
  i = i + 1;
  ldv_33919: ;
  if (i <= 1) {
    goto ldv_33918;
  } else {
  }
  result = pci_enable_msix_exact(pdev, (struct msix_entry *)(& vmci_dev->msix_entries),
                                 2);
  if (result == 0) {
    vmci_dev->exclusive_vectors = 1;
  } else
  if (result == -28) {
    result = pci_enable_msix_exact(pdev, (struct msix_entry *)(& vmci_dev->msix_entries),
                                   1);
  } else {
  }
  return (result);
}
}
static irqreturn_t vmci_interrupt(int irq , void *_dev )
{
  struct vmci_guest_device *dev ;
  unsigned int icr ;
  {
  dev = (struct vmci_guest_device *)_dev;
  if (dev->intr_type == 2U && (int )dev->exclusive_vectors) {
    tasklet_schedule(& dev->datagram_tasklet);
  } else {
    icr = ioread32(dev->iobase + 8UL);
    if (icr == 0U || icr == 4294967295U) {
      return (0);
    } else {
    }
    if ((int )icr & 1) {
      tasklet_schedule(& dev->datagram_tasklet);
      icr = icr & 4294967294U;
    } else {
    }
    if ((icr & 2U) != 0U) {
      tasklet_schedule(& dev->bm_tasklet);
      icr = icr & 4294967293U;
    } else {
    }
    if (icr != 0U) {
      dev_warn((struct device const *)dev->dev, "Ignoring unknown interrupt cause (%d)\n",
               icr);
    } else {
    }
  }
  return (1);
}
}
static irqreturn_t vmci_interrupt_bm(int irq , void *_dev )
{
  struct vmci_guest_device *dev ;
  {
  dev = (struct vmci_guest_device *)_dev;
  tasklet_schedule(& dev->bm_tasklet);
  return (1);
}
}
static int vmci_guest_probe_device(struct pci_dev *pdev , struct pci_device_id const *id )
{
  struct vmci_guest_device *vmci_dev ;
  void *iobase ;
  unsigned int capabilities ;
  unsigned long cmd ;
  int vmci_err ;
  int error ;
  struct _ddebug descriptor ;
  long tmp ;
  void * const *tmp___0 ;
  void *tmp___1 ;
  unsigned long bitmap_ppn ;
  bool tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  struct _ddebug descriptor___0 ;
  long tmp___6 ;
  {
  descriptor.modname = "vmw_vmci";
  descriptor.function = "vmci_guest_probe_device";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_guest.c";
  descriptor.format = "Probing for vmci/PCI guest device\n";
  descriptor.lineno = 466U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& pdev->dev), "Probing for vmci/PCI guest device\n");
  } else {
  }
  error = pcim_enable_device(pdev);
  if (error != 0) {
    dev_err((struct device const *)(& pdev->dev), "Failed to enable VMCI device: %d\n",
            error);
    return (error);
  } else {
  }
  error = pcim_iomap_regions(pdev, 1, "vmw_vmci");
  if (error != 0) {
    dev_err((struct device const *)(& pdev->dev), "Failed to reserve/map IO regions\n");
    return (error);
  } else {
  }
  tmp___0 = pcim_iomap_table(pdev);
  iobase = *tmp___0;
  _dev_info((struct device const *)(& pdev->dev), "Found VMCI PCI device at %#lx, irq %u\n",
            (unsigned long )iobase, pdev->irq);
  tmp___1 = devm_kzalloc(& pdev->dev, 152UL, 208U);
  vmci_dev = (struct vmci_guest_device *)tmp___1;
  if ((unsigned long )vmci_dev == (unsigned long )((struct vmci_guest_device *)0)) {
    dev_err((struct device const *)(& pdev->dev), "Can\'t allocate memory for VMCI device\n");
    return (-12);
  } else {
  }
  vmci_dev->dev = & pdev->dev;
  vmci_dev->intr_type = 0U;
  vmci_dev->exclusive_vectors = 0;
  vmci_dev->iobase = iobase;
  tasklet_init(& vmci_dev->datagram_tasklet, & vmci_dispatch_dgs, (unsigned long )vmci_dev);
  tasklet_init(& vmci_dev->bm_tasklet, & vmci_process_bitmap, (unsigned long )vmci_dev);
  vmci_dev->data_buffer = vmalloc(69632UL);
  if ((unsigned long )vmci_dev->data_buffer == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& pdev->dev), "Can\'t allocate memory for datagram buffer\n");
    return (-12);
  } else {
  }
  pci_set_master(pdev);
  capabilities = ioread32(vmci_dev->iobase + 24UL);
  if ((capabilities & 4U) == 0U) {
    dev_err((struct device const *)(& pdev->dev), "Device does not support datagrams\n");
    error = -6;
    goto err_free_data_buffer;
  } else {
  }
  if ((capabilities & 8U) != 0U) {
    vmci_dev->notification_bitmap = dma_alloc_attrs(& pdev->dev, 4096UL, & vmci_dev->notification_base,
                                                    208U, (struct dma_attrs *)0);
    if ((unsigned long )vmci_dev->notification_bitmap == (unsigned long )((void *)0)) {
      dev_warn((struct device const *)(& pdev->dev), "Unable to allocate notification bitmap\n");
    } else {
      memset(vmci_dev->notification_bitmap, 0, 4096UL);
      capabilities = capabilities | 8U;
    }
  } else {
  }
  _dev_info((struct device const *)(& pdev->dev), "Using capabilities 0x%x\n", capabilities);
  iowrite32(capabilities, vmci_dev->iobase + 24UL);
  spin_lock_irq(& vmci_dev_spinlock);
  vmci_dev_g = vmci_dev;
  vmci_pdev = pdev;
  spin_unlock_irq(& vmci_dev_spinlock);
  if ((capabilities & 8U) != 0U) {
    bitmap_ppn = (unsigned long )(vmci_dev->notification_base >> 12);
    tmp___2 = vmci_dbell_register_notification_bitmap((u32 )bitmap_ppn);
    if (tmp___2) {
      tmp___3 = 0;
    } else {
      tmp___3 = 1;
    }
    if (tmp___3) {
      dev_warn((struct device const *)(& pdev->dev), "VMCI device unable to register notification bitmap with PPN 0x%x\n",
               (unsigned int )bitmap_ppn);
      error = -6;
      goto err_remove_vmci_dev_g;
    } else {
    }
  } else {
  }
  error = vmci_check_host_caps(pdev);
  if (error != 0) {
    goto err_remove_bitmap;
  } else {
  }
  vmci_err = vmci_event_subscribe(0U, & vmci_guest_cid_update, (void *)0, & ctx_update_sub_id);
  if (vmci_err < 0) {
    dev_warn((struct device const *)(& pdev->dev), "Failed to subscribe to event (type=%d): %d\n",
             0, vmci_err);
  } else {
  }
  if (! vmci_disable_msix) {
    tmp___5 = vmci_enable_msix(pdev, vmci_dev);
    if (tmp___5 == 0) {
      vmci_dev->intr_type = 2U;
      vmci_dev->irq = vmci_dev->msix_entries[0].vector;
    } else {
      goto _L;
    }
  } else
  _L:
  if (! vmci_disable_msi) {
    tmp___4 = pci_enable_msi_exact(pdev, 1);
    if (tmp___4 == 0) {
      vmci_dev->intr_type = 1U;
      vmci_dev->irq = pdev->irq;
    } else {
      vmci_dev->intr_type = 0U;
      vmci_dev->irq = pdev->irq;
    }
  } else {
    vmci_dev->intr_type = 0U;
    vmci_dev->irq = pdev->irq;
  }
  error = ldv_request_irq_119(vmci_dev->irq, & vmci_interrupt, 128UL, "vmw_vmci",
                              (void *)vmci_dev);
  if (error != 0) {
    dev_err((struct device const *)(& pdev->dev), "Irq %u in use: %d\n", vmci_dev->irq,
            error);
    goto err_disable_msi;
  } else {
  }
  if ((int )vmci_dev->exclusive_vectors) {
    error = ldv_request_irq_120(vmci_dev->msix_entries[1].vector, & vmci_interrupt_bm,
                                0UL, "vmw_vmci", (void *)vmci_dev);
    if (error != 0) {
      dev_err((struct device const *)(& pdev->dev), "Failed to allocate irq %u: %d\n",
              vmci_dev->msix_entries[1].vector, error);
      goto err_free_irq;
    } else {
    }
  } else {
  }
  descriptor___0.modname = "vmw_vmci";
  descriptor___0.function = "vmci_guest_probe_device";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_guest.c";
  descriptor___0.format = "Registered device\n";
  descriptor___0.lineno = 636U;
  descriptor___0.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& pdev->dev), "Registered device\n");
  } else {
  }
  atomic_inc(& vmci_num_guest_devices);
  cmd = 1UL;
  if ((capabilities & 8U) != 0U) {
    cmd = cmd | 2UL;
  } else {
  }
  iowrite32((u32 )cmd, vmci_dev->iobase + 12UL);
  iowrite32(2U, vmci_dev->iobase + 4UL);
  pci_set_drvdata(pdev, (void *)vmci_dev);
  return (0);
  err_free_irq:
  ldv_free_irq_121(vmci_dev->irq, (void *)vmci_dev);
  tasklet_kill(& vmci_dev->datagram_tasklet);
  tasklet_kill(& vmci_dev->bm_tasklet);
  err_disable_msi: ;
  if (vmci_dev->intr_type == 2U) {
    pci_disable_msix(pdev);
  } else
  if (vmci_dev->intr_type == 1U) {
    pci_disable_msi(pdev);
  } else {
  }
  vmci_err = vmci_event_unsubscribe(ctx_update_sub_id);
  if (vmci_err < 0) {
    dev_warn((struct device const *)(& pdev->dev), "Failed to unsubscribe from event (type=%d) with subscriber (ID=0x%x): %d\n",
             0, ctx_update_sub_id, vmci_err);
  } else {
  }
  err_remove_bitmap: ;
  if ((unsigned long )vmci_dev->notification_bitmap != (unsigned long )((void *)0)) {
    iowrite32(1U, vmci_dev->iobase + 4UL);
    dma_free_attrs(& pdev->dev, 4096UL, vmci_dev->notification_bitmap, vmci_dev->notification_base,
                   (struct dma_attrs *)0);
  } else {
  }
  err_remove_vmci_dev_g:
  spin_lock_irq(& vmci_dev_spinlock);
  vmci_pdev = (struct pci_dev *)0;
  vmci_dev_g = (struct vmci_guest_device *)0;
  spin_unlock_irq(& vmci_dev_spinlock);
  err_free_data_buffer:
  vfree((void const *)vmci_dev->data_buffer);
  return (error);
}
}
static void vmci_guest_remove_device(struct pci_dev *pdev )
{
  struct vmci_guest_device *vmci_dev ;
  void *tmp ;
  int vmci_err ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  {
  tmp = pci_get_drvdata(pdev);
  vmci_dev = (struct vmci_guest_device *)tmp;
  descriptor.modname = "vmw_vmci";
  descriptor.function = "vmci_guest_remove_device";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_guest.c";
  descriptor.format = "Removing device\n";
  descriptor.lineno = 697U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& pdev->dev), "Removing device\n");
  } else {
  }
  atomic_dec(& vmci_num_guest_devices);
  vmci_qp_guest_endpoints_exit();
  vmci_err = vmci_event_unsubscribe(ctx_update_sub_id);
  if (vmci_err < 0) {
    dev_warn((struct device const *)(& pdev->dev), "Failed to unsubscribe from event (type=%d) with subscriber (ID=0x%x): %d\n",
             0, ctx_update_sub_id, vmci_err);
  } else {
  }
  spin_lock_irq(& vmci_dev_spinlock);
  vmci_dev_g = (struct vmci_guest_device *)0;
  vmci_pdev = (struct pci_dev *)0;
  spin_unlock_irq(& vmci_dev_spinlock);
  descriptor___0.modname = "vmw_vmci";
  descriptor___0.function = "vmci_guest_remove_device";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_guest.c";
  descriptor___0.format = "Resetting vmci device\n";
  descriptor___0.lineno = 714U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& pdev->dev), "Resetting vmci device\n");
  } else {
  }
  iowrite32(1U, vmci_dev->iobase + 4UL);
  ldv_free_irq_122(vmci_dev->irq, (void *)vmci_dev);
  if (vmci_dev->intr_type == 2U) {
    if ((int )vmci_dev->exclusive_vectors) {
      ldv_free_irq_123(vmci_dev->msix_entries[1].vector, (void *)vmci_dev);
    } else {
    }
    pci_disable_msix(pdev);
  } else
  if (vmci_dev->intr_type == 1U) {
    pci_disable_msi(pdev);
  } else {
  }
  tasklet_kill(& vmci_dev->datagram_tasklet);
  tasklet_kill(& vmci_dev->bm_tasklet);
  if ((unsigned long )vmci_dev->notification_bitmap != (unsigned long )((void *)0)) {
    dma_free_attrs(& pdev->dev, 4096UL, vmci_dev->notification_bitmap, vmci_dev->notification_base,
                   (struct dma_attrs *)0);
  } else {
  }
  vfree((void const *)vmci_dev->data_buffer);
  return;
}
}
static struct pci_device_id const vmci_ids[2U] = { {5549U, 1856U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__vmci_ids_device_table[2U] ;
static struct pci_driver vmci_guest_driver =
     {{0, 0}, "vmw_vmci", (struct pci_device_id const *)(& vmci_ids), & vmci_guest_probe_device,
    & vmci_guest_remove_device, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0,
                                                      0, 0, 0, 0, 0, 0, 0, 0, 0},
    {{{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}};
int vmci_guest_init(void)
{
  int tmp ;
  {
  tmp = ldv___pci_register_driver_124(& vmci_guest_driver, & __this_module, "vmw_vmci");
  return (tmp);
}
}
void vmci_guest_exit(void)
{
  {
  ldv_pci_unregister_driver_125(& vmci_guest_driver);
  return;
}
}
int ldv_retval_1 ;
extern int ldv_shutdown_7(void) ;
void choose_interrupt_2(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_0, ldv_irq_line_2_0, ldv_irq_data_2_0);
  goto ldv_33975;
  case 1:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_1, ldv_irq_line_2_1, ldv_irq_data_2_1);
  goto ldv_33975;
  case 2:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_2, ldv_irq_line_2_2, ldv_irq_data_2_2);
  goto ldv_33975;
  case 3:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_3, ldv_irq_line_2_3, ldv_irq_data_2_3);
  goto ldv_33975;
  default:
  ldv_stop();
  }
  ldv_33975: ;
  return;
}
}
void disable_suitable_irq_2(int line , void *data )
{
  {
  if (ldv_irq_2_0 != 0 && line == ldv_irq_line_2_0) {
    ldv_irq_2_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_2_1 != 0 && line == ldv_irq_line_2_1) {
    ldv_irq_2_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_2_2 != 0 && line == ldv_irq_line_2_2) {
    ldv_irq_2_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_2_3 != 0 && line == ldv_irq_line_2_3) {
    ldv_irq_2_3 = 0;
    return;
  } else {
  }
  return;
}
}
void activate_suitable_irq_2(int line , void *data )
{
  {
  if (ldv_irq_2_0 == 0) {
    ldv_irq_line_2_0 = line;
    ldv_irq_data_2_0 = data;
    ldv_irq_2_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_1 == 0) {
    ldv_irq_line_2_1 = line;
    ldv_irq_data_2_1 = data;
    ldv_irq_2_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_2 == 0) {
    ldv_irq_line_2_2 = line;
    ldv_irq_data_2_2 = data;
    ldv_irq_2_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_3 == 0) {
    ldv_irq_line_2_3 = line;
    ldv_irq_data_2_3 = data;
    ldv_irq_2_3 = 1;
    return;
  } else {
  }
  return;
}
}
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& vmci_interrupt)) {
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
  goto ldv_33997;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_33997;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_33997;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_33997;
  default:
  ldv_stop();
  }
  ldv_33997: ;
  return;
}
}
int reg_check_2(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& vmci_interrupt_bm)) {
    return (1);
  } else {
  }
  return (0);
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
      irq_retval = vmci_interrupt(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_34018;
    default:
    ldv_stop();
    }
    ldv_34018: ;
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
      irq_retval = vmci_interrupt_bm(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_34031;
    default:
    ldv_stop();
    }
    ldv_34031: ;
  } else {
  }
  return (state);
}
}
void ldv_pci_driver_7(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(2976UL);
  vmci_guest_driver_group1 = (struct pci_dev *)tmp;
  return;
}
}
void ldv_main_exported_7(void)
{
  struct pci_device_id *ldvarg5 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_init_zalloc(32UL);
  ldvarg5 = (struct pci_device_id *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_7 == 1) {
    ldv_retval_1 = vmci_guest_probe_device(vmci_guest_driver_group1, (struct pci_device_id const *)ldvarg5);
    if (ldv_retval_1 == 0) {
      ldv_state_variable_7 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_34041;
  case 1: ;
  if (ldv_state_variable_7 == 2) {
    vmci_guest_remove_device(vmci_guest_driver_group1);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_34041;
  case 2: ;
  if (ldv_state_variable_7 == 2) {
    ldv_shutdown_7();
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_34041;
  default:
  ldv_stop();
  }
  ldv_34041: ;
  return;
}
}
bool ldv_queue_work_on_107(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_108(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_109(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_110(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_111(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_112(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_114(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_115(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_116(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_117(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
void ldv_mutex_unlock_118(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static int ldv_request_irq_119(unsigned int irq , irqreturn_t (*handler)(int ,
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
  tmp___0 = reg_check_2(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_2((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_120(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_2((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_free_irq_121(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
void ldv_free_irq_122(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
void ldv_free_irq_123(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
int ldv___pci_register_driver_124(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                  char const *ldv_func_arg3 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_7 = 1;
  ldv_pci_driver_7();
  return (ldv_func_res);
}
}
void ldv_pci_unregister_driver_125(struct pci_driver *ldv_func_arg1 )
{
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_state_variable_7 = 0;
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
bool ldv_queue_work_on_149(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_151(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_150(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_153(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_152(struct workqueue_struct *ldv_func_arg1 ) ;
extern void *krealloc(void const * , size_t , gfp_t ) ;
static struct vmci_handle const VMCI_INVALID_HANDLE___1 = {4294967295U, 4294967295U};
struct vmci_handle *vmci_handle_arr_get_handles(struct vmci_handle_arr *array ) ;
static size_t handle_arr_calc_size(size_t capacity )
{
  {
  return ((capacity + 2UL) * 8UL);
}
}
struct vmci_handle_arr *vmci_handle_arr_create(size_t capacity )
{
  struct vmci_handle_arr *array ;
  size_t tmp ;
  void *tmp___0 ;
  {
  if (capacity == 0UL) {
    capacity = 4UL;
  } else {
  }
  tmp = handle_arr_calc_size(capacity);
  tmp___0 = kmalloc(tmp, 32U);
  array = (struct vmci_handle_arr *)tmp___0;
  if ((unsigned long )array == (unsigned long )((struct vmci_handle_arr *)0)) {
    return ((struct vmci_handle_arr *)0);
  } else {
  }
  array->capacity = capacity;
  array->size = 0UL;
  return (array);
}
}
void vmci_handle_arr_destroy(struct vmci_handle_arr *array )
{
  {
  kfree((void const *)array);
  return;
}
}
void vmci_handle_arr_append_entry(struct vmci_handle_arr **array_ptr , struct vmci_handle handle )
{
  struct vmci_handle_arr *array ;
  struct vmci_handle_arr *new_array ;
  size_t new_capacity ;
  size_t new_size ;
  size_t tmp ;
  void *tmp___0 ;
  long tmp___1 ;
  {
  array = *array_ptr;
  tmp___1 = ldv__builtin_expect(array->size >= array->capacity, 0L);
  if (tmp___1 != 0L) {
    new_capacity = array->capacity * 2UL;
    tmp = handle_arr_calc_size(new_capacity);
    new_size = tmp;
    tmp___0 = krealloc((void const *)array, new_size, 32U);
    new_array = (struct vmci_handle_arr *)tmp___0;
    if ((unsigned long )new_array == (unsigned long )((struct vmci_handle_arr *)0)) {
      return;
    } else {
    }
    new_array->capacity = new_capacity;
    array = new_array;
    *array_ptr = array;
  } else {
  }
  array->entries[array->size] = handle;
  array->size = array->size + 1UL;
  return;
}
}
struct vmci_handle vmci_handle_arr_remove_entry(struct vmci_handle_arr *array , struct vmci_handle entry_handle )
{
  struct vmci_handle handle ;
  size_t i ;
  bool tmp ;
  {
  handle = VMCI_INVALID_HANDLE___1;
  i = 0UL;
  goto ldv_18846;
  ldv_18845:
  tmp = vmci_handle_is_equal(array->entries[i], entry_handle);
  if ((int )tmp) {
    handle = array->entries[i];
    array->size = array->size - 1UL;
    array->entries[i] = array->entries[array->size];
    array->entries[array->size] = VMCI_INVALID_HANDLE___1;
    goto ldv_18844;
  } else {
  }
  i = i + 1UL;
  ldv_18846: ;
  if (array->size > i) {
    goto ldv_18845;
  } else {
  }
  ldv_18844: ;
  return (handle);
}
}
struct vmci_handle vmci_handle_arr_remove_tail(struct vmci_handle_arr *array )
{
  struct vmci_handle handle ;
  {
  handle = VMCI_INVALID_HANDLE___1;
  if (array->size != 0UL) {
    array->size = array->size - 1UL;
    handle = array->entries[array->size];
    array->entries[array->size] = VMCI_INVALID_HANDLE___1;
  } else {
  }
  return (handle);
}
}
struct vmci_handle vmci_handle_arr_get_entry(struct vmci_handle_arr const *array ,
                                             size_t index )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )array->size <= index, 0L);
  if (tmp != 0L) {
    return ((struct vmci_handle )VMCI_INVALID_HANDLE___1);
  } else {
  }
  return (array->entries[index]);
}
}
bool vmci_handle_arr_has_entry(struct vmci_handle_arr const *array , struct vmci_handle entry_handle )
{
  size_t i ;
  bool tmp ;
  {
  i = 0UL;
  goto ldv_18861;
  ldv_18860:
  tmp = vmci_handle_is_equal(array->entries[i], entry_handle);
  if ((int )tmp) {
    return (1);
  } else {
  }
  i = i + 1UL;
  ldv_18861: ;
  if ((unsigned long )array->size > i) {
    goto ldv_18860;
  } else {
  }
  return (0);
}
}
struct vmci_handle *vmci_handle_arr_get_handles(struct vmci_handle_arr *array )
{
  {
  if (array->size != 0UL) {
    return ((struct vmci_handle *)(& array->entries));
  } else {
  }
  return ((struct vmci_handle *)0);
}
}
bool ldv_queue_work_on_149(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_150(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_151(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_152(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_153(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern void __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern void __might_fault(char const * , int ) ;
bool ldv_is_err(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_2696;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2696;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2696;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2696;
  default:
  __bad_percpu_size();
  }
  ldv_2696: ;
  return (pfo_ret__);
}
}
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern struct tss_struct cpu_tss ;
__inline static unsigned long current_top_of_stack(void)
{
  u64 pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& cpu_tss.x86_tss.sp0));
  goto ldv_5374;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& cpu_tss.x86_tss.sp0));
  goto ldv_5374;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& cpu_tss.x86_tss.sp0));
  goto ldv_5374;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& cpu_tss.x86_tss.sp0));
  goto ldv_5374;
  default:
  __bad_percpu_size();
  }
  ldv_5374: ;
  return ((unsigned long )pfo_ret__);
}
}
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
int ldv_mutex_trylock_173(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_169(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_170(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_174(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_176(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_168(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_171(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_172(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_175(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_lock_of_vmci_host_dev(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_vmci_host_dev(struct mutex *lock ) ;
__inline static struct thread_info *current_thread_info(void)
{
  unsigned long tmp ;
  {
  tmp = current_top_of_stack();
  return ((struct thread_info *)(tmp - 32768UL));
}
}
bool ldv_queue_work_on_163(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_165(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_164(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_167(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_166(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_file_operations_6(void) ;
extern int misc_register(struct miscdevice * ) ;
int ldv_misc_register_177(struct miscdevice *misc ) ;
extern int misc_deregister(struct miscdevice * ) ;
int ldv_misc_deregister_178(struct miscdevice *misc ) ;
__inline static bool __chk_range_not_ok(unsigned long addr , unsigned long size ,
                                        unsigned long limit )
{
  {
  addr = addr + size;
  if (addr < size) {
    return (1);
  } else {
  }
  return (addr > limit);
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
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
extern int get_user_pages_fast(unsigned long , int , int , struct page ** ) ;
__inline static void *kmap(struct page *page )
{
  void *tmp ;
  {
  __might_sleep("include/linux/highmem.h", 58, 0);
  tmp = lowmem_page_address((struct page const *)page);
  return (tmp);
}
}
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
__inline static u32 vmci_ctx_get_id(struct vmci_ctx *context )
{
  {
  if ((unsigned long )context == (unsigned long )((struct vmci_ctx *)0)) {
    return (4294967295U);
  } else {
  }
  return (context->cid);
}
}
void vmci_qp_broker_exit(void) ;
int vmci_qp_broker_alloc(struct vmci_handle handle , u32 peer , u32 flags , u32 priv_flags ,
                         u64 produce_size , u64 consume_size , struct vmci_qp_page_store *page_store ,
                         struct vmci_ctx *context ) ;
int vmci_qp_broker_set_page_store(struct vmci_handle handle , u64 produce_uva , u64 consume_uva ,
                                  struct vmci_ctx *context ) ;
int vmci_qp_broker_map(struct vmci_handle handle , struct vmci_ctx *context , u64 guest_mem ) ;
int vmci_qp_broker_unmap(struct vmci_handle handle , struct vmci_ctx *context , u32 gid ) ;
static struct vmci_ctx *host_context ;
static bool vmci_host_device_initialized ;
static atomic_t vmci_host_active_users = {0};
bool vmci_host_code_active(void)
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  if ((int )vmci_host_device_initialized) {
    tmp = vmci_guest_code_active();
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      tmp___2 = 1;
    } else {
      tmp___1 = atomic_read((atomic_t const *)(& vmci_host_active_users));
      if (tmp___1 > 0) {
        tmp___2 = 1;
      } else {
        tmp___2 = 0;
      }
    }
  } else {
    tmp___2 = 0;
  }
  return ((bool )tmp___2);
}
}
static int vmci_host_open(struct inode *inode , struct file *filp )
{
  struct vmci_host_dev *vmci_host_dev ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  tmp = kzalloc(176UL, 208U);
  vmci_host_dev = (struct vmci_host_dev *)tmp;
  if ((unsigned long )vmci_host_dev == (unsigned long )((struct vmci_host_dev *)0)) {
    return (-12);
  } else {
  }
  vmci_host_dev->ct_type = 13;
  __mutex_init(& vmci_host_dev->lock, "&vmci_host_dev->lock", & __key);
  filp->private_data = (void *)vmci_host_dev;
  return (0);
}
}
static int vmci_host_close(struct inode *inode , struct file *filp )
{
  struct vmci_host_dev *vmci_host_dev ;
  {
  vmci_host_dev = (struct vmci_host_dev *)filp->private_data;
  if ((unsigned int )vmci_host_dev->ct_type == 11U) {
    vmci_ctx_destroy(vmci_host_dev->context);
    vmci_host_dev->context = (struct vmci_ctx *)0;
    atomic_dec(& vmci_host_active_users);
  } else {
  }
  vmci_host_dev->ct_type = 13;
  kfree((void const *)vmci_host_dev);
  filp->private_data = (void *)0;
  return (0);
}
}
static unsigned int vmci_host_poll(struct file *filp , poll_table *wait )
{
  struct vmci_host_dev *vmci_host_dev ;
  struct vmci_ctx *context ;
  unsigned int mask ;
  size_t tmp ;
  {
  vmci_host_dev = (struct vmci_host_dev *)filp->private_data;
  context = vmci_host_dev->context;
  mask = 0U;
  if ((unsigned int )vmci_host_dev->ct_type == 11U) {
    if ((unsigned long )wait != (unsigned long )((poll_table *)0)) {
      poll_wait(filp, & context->host_context.wait_queue, wait);
    } else {
    }
    spin_lock(& context->lock);
    if (context->pending_datagrams != 0U) {
      mask = 1U;
    } else {
      tmp = vmci_handle_arr_get_size((struct vmci_handle_arr const *)context->pending_doorbell_array);
      if (tmp != 0UL) {
        mask = 1U;
      } else {
      }
    }
    spin_unlock(& context->lock);
  } else {
  }
  return (mask);
}
}
static int drv_cp_harray_to_user(void *user_buf_uva , u64 *user_buf_size , struct vmci_handle_arr *handle_array ,
                                 int *retval )
{
  u32 array_size ;
  size_t tmp ;
  struct vmci_handle *tmp___0 ;
  unsigned long tmp___1 ;
  {
  array_size = 0U;
  if ((unsigned long )handle_array != (unsigned long )((struct vmci_handle_arr *)0)) {
    tmp = vmci_handle_arr_get_size((struct vmci_handle_arr const *)handle_array);
    array_size = (u32 )tmp;
  } else {
  }
  if ((unsigned long long )((unsigned long )array_size * 8UL) > *user_buf_size) {
    return (-5);
  } else {
  }
  *user_buf_size = (u64 )((unsigned long )array_size * 8UL);
  if (*user_buf_size != 0ULL) {
    tmp___0 = vmci_handle_arr_get_handles(handle_array);
    tmp___1 = copy_to_user(user_buf_uva, (void const *)tmp___0, (unsigned long )*user_buf_size);
    *retval = (int )tmp___1;
  } else {
  }
  return (0);
}
}
static int vmci_host_setup_notify(struct vmci_ctx *context , unsigned long uva )
{
  int retval ;
  struct thread_info *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  void *tmp___3 ;
  {
  if ((unsigned long )context->notify_page != (unsigned long )((struct page *)0)) {
    no_printk("\017%s: Notify mechanism is already set up\n", "vmci_host_setup_notify");
    return (-9);
  } else {
  }
  tmp = current_thread_info();
  tmp___0 = __chk_range_not_ok(uva, 1UL, tmp->addr_limit.seg);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  tmp___2 = ldv__builtin_expect((long )tmp___1, 1L);
  if (tmp___2 == 0L) {
    return (-13);
  } else {
  }
  retval = get_user_pages_fast(uva, 1, 1, & context->notify_page);
  if (retval != 1) {
    context->notify_page = (struct page *)0;
    return (-13);
  } else {
  }
  tmp___3 = kmap(context->notify_page);
  context->notify = (bool *)(tmp___3 + (uva & 4095UL));
  vmci_ctx_check_signal_notify(context);
  return (0);
}
}
static int vmci_host_get_version(struct vmci_host_dev *vmci_host_dev , unsigned int cmd ,
                                 void *uptr )
{
  int *vptr ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  {
  if (cmd == 1959U) {
    vptr = (int *)uptr;
    __might_fault("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_host.c",
                  265);
    __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" (vptr),
                         "i" (4UL));
    vmci_host_dev->user_version = (int )__val_gu;
    if (__ret_gu != 0) {
      return (-14);
    } else {
    }
  } else {
  }
  if (vmci_host_dev->user_version > 0 && vmci_host_dev->user_version <= 589823) {
    return (vmci_host_dev->user_version);
  } else {
  }
  return (720896);
}
}
static int vmci_host_do_init_context(struct vmci_host_dev *vmci_host_dev , char const *ioctl_name ,
                                     void *uptr )
{
  struct vmci_init_blk init_block ;
  struct cred const *cred ;
  int retval ;
  unsigned long tmp ;
  int tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  unsigned long tmp___4 ;
  {
  tmp = copy_from_user((void *)(& init_block), (void const *)uptr, 8UL);
  if (tmp != 0UL) {
    no_printk("\017%s: error reading init block\n", ioctl_name);
    return (-14);
  } else {
  }
  ldv_mutex_lock_175(& vmci_host_dev->lock);
  if ((unsigned int )vmci_host_dev->ct_type != 13U) {
    no_printk("\017%s: received VMCI init on initialized handle\n", ioctl_name);
    retval = -22;
    goto out;
  } else {
  }
  if ((init_block.flags & 4294967294U) != 0U) {
    no_printk("\017%s: unsupported VMCI restriction flag\n", ioctl_name);
    retval = -22;
    goto out;
  } else {
  }
  tmp___0 = debug_lockdep_rcu_enabled();
  tmp___1 = get_current();
  cred = get_cred(tmp___1->cred);
  vmci_host_dev->context = vmci_ctx_create(init_block.cid, init_block.flags, 0UL,
                                           vmci_host_dev->user_version, cred);
  put_cred(cred);
  tmp___3 = IS_ERR((void const *)vmci_host_dev->context);
  if ((int )tmp___3) {
    tmp___2 = PTR_ERR((void const *)vmci_host_dev->context);
    retval = (int )tmp___2;
    no_printk("\017%s: error initializing context\n", ioctl_name);
    goto out;
  } else {
  }
  init_block.cid = vmci_ctx_get_id(vmci_host_dev->context);
  tmp___4 = copy_to_user(uptr, (void const *)(& init_block), 8UL);
  if (tmp___4 != 0UL) {
    vmci_ctx_destroy(vmci_host_dev->context);
    vmci_host_dev->context = (struct vmci_ctx *)0;
    no_printk("\017%s: error writing init block\n", ioctl_name);
    retval = -14;
    goto out;
  } else {
  }
  vmci_host_dev->ct_type = 11;
  atomic_inc(& vmci_host_active_users);
  retval = 0;
  out:
  ldv_mutex_unlock_176(& vmci_host_dev->lock);
  return (retval);
}
}
static int vmci_host_do_send_datagram(struct vmci_host_dev *vmci_host_dev , char const *ioctl_name ,
                                      void *uptr )
{
  struct vmci_datagram_snd_rcv_info send_info ;
  struct vmci_datagram *dg ;
  u32 cid ;
  unsigned long tmp ;
  void *tmp___0 ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  {
  dg = (struct vmci_datagram *)0;
  if ((unsigned int )vmci_host_dev->ct_type != 11U) {
    no_printk("\017%s: only valid for contexts\n", ioctl_name);
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& send_info), (void const *)uptr, 16UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  if (send_info.len > 69632U) {
    no_printk("\017%s: datagram is too big (size=%d)\n", ioctl_name, send_info.len);
    return (-22);
  } else {
  }
  if (send_info.len <= 23U) {
    no_printk("\017%s: datagram is too small (size=%d)\n", ioctl_name, send_info.len);
    return (-22);
  } else {
  }
  tmp___0 = kmalloc((size_t )send_info.len, 208U);
  dg = (struct vmci_datagram *)tmp___0;
  if ((unsigned long )dg == (unsigned long )((struct vmci_datagram *)0)) {
    no_printk("\017%s: cannot allocate memory to dispatch datagram\n", ioctl_name);
    return (-12);
  } else {
  }
  tmp___1 = copy_from_user((void *)dg, (void const *)send_info.addr, (unsigned long )send_info.len);
  if (tmp___1 != 0UL) {
    no_printk("\017%s: error getting datagram\n", ioctl_name);
    kfree((void const *)dg);
    return (-14);
  } else {
  }
  if ((unsigned long )dg->payload_size + 24UL != (unsigned long )send_info.len) {
    no_printk("\017%s: datagram size mismatch\n", ioctl_name);
    kfree((void const *)dg);
    return (-22);
  } else {
  }
  no_printk("\017Datagram dst (handle=0x%x:0x%x) src (handle=0x%x:0x%x), payload (size=%llu bytes)\n",
            dg->dst.context, dg->dst.resource, dg->src.context, dg->src.resource,
            dg->payload_size);
  cid = vmci_ctx_get_id(vmci_host_dev->context);
  send_info.result = vmci_datagram_dispatch(cid, dg, 1);
  kfree((void const *)dg);
  tmp___2 = copy_to_user(uptr, (void const *)(& send_info), 16UL);
  return (tmp___2 != 0UL ? -14 : 0);
}
}
static int vmci_host_do_receive_datagram(struct vmci_host_dev *vmci_host_dev , char const *ioctl_name ,
                                         void *uptr )
{
  struct vmci_datagram_snd_rcv_info recv_info ;
  struct vmci_datagram *dg ;
  int retval ;
  size_t size ;
  unsigned long tmp ;
  void *ubuf ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  {
  dg = (struct vmci_datagram *)0;
  if ((unsigned int )vmci_host_dev->ct_type != 11U) {
    no_printk("\017%s: only valid for contexts\n", ioctl_name);
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& recv_info), (void const *)uptr, 16UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  size = (size_t )recv_info.len;
  recv_info.result = vmci_ctx_dequeue_datagram(vmci_host_dev->context, & size, & dg);
  if (recv_info.result >= 0) {
    ubuf = (void *)recv_info.addr;
    tmp___0 = copy_to_user(ubuf, (void const *)dg, (unsigned long )dg->payload_size + 24UL);
    retval = (int )tmp___0;
    kfree((void const *)dg);
    if (retval != 0) {
      return (-14);
    } else {
    }
  } else {
  }
  tmp___1 = copy_to_user(uptr, (void const *)(& recv_info), 16UL);
  return (tmp___1 != 0UL ? -14 : 0);
}
}
static int vmci_host_do_alloc_queuepair(struct vmci_host_dev *vmci_host_dev , char const *ioctl_name ,
                                        void *uptr )
{
  struct vmci_handle handle ;
  int vmci_status ;
  int *retptr ;
  u32 cid ;
  struct vmci_qp_alloc_info_vmvm alloc_info ;
  struct vmci_qp_alloc_info_vmvm *info ;
  unsigned long tmp ;
  struct vmci_qp_alloc_info alloc_info___0 ;
  struct vmci_qp_alloc_info *info___0 ;
  struct vmci_qp_page_store page_store ;
  unsigned long tmp___0 ;
  int __ret_pu ;
  int __pu_val ;
  {
  if ((unsigned int )vmci_host_dev->ct_type != 11U) {
    no_printk("\017%s: only valid for contexts\n", ioctl_name);
    return (-22);
  } else {
  }
  cid = vmci_ctx_get_id(vmci_host_dev->context);
  if (vmci_host_dev->user_version <= 720895) {
    info = (struct vmci_qp_alloc_info_vmvm *)uptr;
    tmp = copy_from_user((void *)(& alloc_info), (void const *)uptr, 72UL);
    if (tmp != 0UL) {
      return (-14);
    } else {
    }
    handle = alloc_info.handle;
    retptr = & info->result;
    vmci_status = vmci_qp_broker_alloc(alloc_info.handle, alloc_info.peer, alloc_info.flags,
                                       0U, alloc_info.produce_size, alloc_info.consume_size,
                                       (struct vmci_qp_page_store *)0, vmci_host_dev->context);
    if (vmci_status == 0) {
      vmci_status = 4;
    } else {
    }
  } else {
    info___0 = (struct vmci_qp_alloc_info *)uptr;
    tmp___0 = copy_from_user((void *)(& alloc_info___0), (void const *)uptr, 56UL);
    if (tmp___0 != 0UL) {
      return (-14);
    } else {
    }
    handle = alloc_info___0.handle;
    retptr = & info___0->result;
    page_store.pages = alloc_info___0.ppn_va;
    page_store.len = (u32 )alloc_info___0.num_ppns;
    vmci_status = vmci_qp_broker_alloc(alloc_info___0.handle, alloc_info___0.peer,
                                       alloc_info___0.flags, 0U, alloc_info___0.produce_size,
                                       alloc_info___0.consume_size, & page_store,
                                       vmci_host_dev->context);
  }
  __might_fault("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_host.c",
                510);
  __pu_val = vmci_status;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" (retptr): "ebx");
  goto ldv_33902;
  case 2UL:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" (retptr): "ebx");
  goto ldv_33902;
  case 4UL:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" (retptr): "ebx");
  goto ldv_33902;
  case 8UL:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" (retptr): "ebx");
  goto ldv_33902;
  default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" (retptr): "ebx");
  goto ldv_33902;
  }
  ldv_33902: ;
  if (__ret_pu != 0) {
    if (vmci_status >= 0) {
      vmci_status = vmci_qp_broker_detach(handle, vmci_host_dev->context);
    } else {
    }
    return (-14);
  } else {
  }
  return (0);
}
}
static int vmci_host_do_queuepair_setva(struct vmci_host_dev *vmci_host_dev , char const *ioctl_name ,
                                        void *uptr )
{
  struct vmci_qp_set_va_info set_va_info ;
  struct vmci_qp_set_va_info *info ;
  s32 result ;
  unsigned long tmp ;
  int __ret_pu ;
  s32 __pu_val ;
  {
  info = (struct vmci_qp_set_va_info *)uptr;
  if ((unsigned int )vmci_host_dev->ct_type != 11U) {
    no_printk("\017%s: only valid for contexts\n", ioctl_name);
    return (-22);
  } else {
  }
  if (vmci_host_dev->user_version <= 720895) {
    no_printk("\017%s: is not allowed\n", ioctl_name);
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& set_va_info), (void const *)uptr, 32UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  if (set_va_info.va != 0ULL) {
    result = vmci_qp_broker_map(set_va_info.handle, vmci_host_dev->context, set_va_info.va);
  } else {
    result = vmci_qp_broker_unmap(set_va_info.handle, vmci_host_dev->context, 0U);
  }
  __might_fault("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_host.c",
                559);
  __pu_val = result;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33919;
  case 2UL:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33919;
  case 4UL:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33919;
  case 8UL:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33919;
  default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33919;
  }
  ldv_33919: ;
  return (__ret_pu != 0 ? -14 : 0);
}
}
static int vmci_host_do_queuepair_setpf(struct vmci_host_dev *vmci_host_dev , char const *ioctl_name ,
                                        void *uptr )
{
  struct vmci_qp_page_file_info page_file_info ;
  struct vmci_qp_page_file_info *info ;
  s32 result ;
  unsigned long tmp ;
  int __ret_pu ;
  s32 __pu_val ;
  int __ret_pu___0 ;
  s32 __pu_val___0 ;
  {
  info = (struct vmci_qp_page_file_info *)uptr;
  if (vmci_host_dev->user_version <= 589823 || vmci_host_dev->user_version > 720895) {
    no_printk("\017%s: not supported on this VMX (version=%d)\n", ioctl_name, vmci_host_dev->user_version);
    return (-22);
  } else {
  }
  if ((unsigned int )vmci_host_dev->ct_type != 11U) {
    no_printk("\017%s: only valid for contexts\n", ioctl_name);
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& page_file_info), (void const *)uptr, 64UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  __might_fault("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_host.c",
                601);
  __pu_val = 0;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33936;
  case 2UL:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33936;
  case 4UL:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33936;
  case 8UL:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33936;
  default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33936;
  }
  ldv_33936: ;
  if (__ret_pu != 0) {
    return (-14);
  } else {
  }
  result = vmci_qp_broker_set_page_store(page_file_info.handle, page_file_info.produce_va,
                                         page_file_info.consume_va, vmci_host_dev->context);
  if (result < 0) {
    __might_fault("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_host.c",
                  615);
    __pu_val___0 = result;
    switch (4UL) {
    case 1UL:
    __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___0): "0" (__pu_val___0),
                         "c" (& info->result): "ebx");
    goto ldv_33945;
    case 2UL:
    __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___0): "0" (__pu_val___0),
                         "c" (& info->result): "ebx");
    goto ldv_33945;
    case 4UL:
    __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___0): "0" (__pu_val___0),
                         "c" (& info->result): "ebx");
    goto ldv_33945;
    case 8UL:
    __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___0): "0" (__pu_val___0),
                         "c" (& info->result): "ebx");
    goto ldv_33945;
    default:
    __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___0): "0" (__pu_val___0),
                         "c" (& info->result): "ebx");
    goto ldv_33945;
    }
    ldv_33945: ;
    if (__ret_pu___0 != 0) {
      return (-14);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int vmci_host_do_qp_detach(struct vmci_host_dev *vmci_host_dev , char const *ioctl_name ,
                                  void *uptr )
{
  struct vmci_qp_dtch_info detach_info ;
  struct vmci_qp_dtch_info *info ;
  s32 result ;
  unsigned long tmp ;
  int __ret_pu ;
  s32 __pu_val ;
  {
  info = (struct vmci_qp_dtch_info *)uptr;
  if ((unsigned int )vmci_host_dev->ct_type != 11U) {
    no_printk("\017%s: only valid for contexts\n", ioctl_name);
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& detach_info), (void const *)uptr, 16UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  result = vmci_qp_broker_detach(detach_info.handle, vmci_host_dev->context);
  if (result == 0 && vmci_host_dev->user_version <= 720895) {
    result = 3;
  } else {
  }
  __might_fault("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_host.c",
                663);
  __pu_val = result;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33962;
  case 2UL:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33962;
  case 4UL:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33962;
  case 8UL:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33962;
  default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33962;
  }
  ldv_33962: ;
  return (__ret_pu != 0 ? -14 : 0);
}
}
static int vmci_host_do_ctx_add_notify(struct vmci_host_dev *vmci_host_dev , char const *ioctl_name ,
                                       void *uptr )
{
  struct vmci_ctx_info ar_info ;
  struct vmci_ctx_info *info ;
  s32 result ;
  u32 cid ;
  unsigned long tmp ;
  int __ret_pu ;
  int __pu_val ;
  {
  info = (struct vmci_ctx_info *)uptr;
  if ((unsigned int )vmci_host_dev->ct_type != 11U) {
    no_printk("\017%s: only valid for contexts\n", ioctl_name);
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& ar_info), (void const *)uptr, 8UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  cid = vmci_ctx_get_id(vmci_host_dev->context);
  result = vmci_ctx_add_notification(cid, ar_info.remote_cid);
  __might_fault("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_host.c",
                686);
  __pu_val = result;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33980;
  case 2UL:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33980;
  case 4UL:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33980;
  case 8UL:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33980;
  default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33980;
  }
  ldv_33980: ;
  return (__ret_pu != 0 ? -14 : 0);
}
}
static int vmci_host_do_ctx_remove_notify(struct vmci_host_dev *vmci_host_dev , char const *ioctl_name ,
                                          void *uptr )
{
  struct vmci_ctx_info ar_info ;
  struct vmci_ctx_info *info ;
  u32 cid ;
  int result ;
  unsigned long tmp ;
  int __ret_pu ;
  int __pu_val ;
  {
  info = (struct vmci_ctx_info *)uptr;
  if ((unsigned int )vmci_host_dev->ct_type != 11U) {
    no_printk("\017%s: only valid for contexts\n", ioctl_name);
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& ar_info), (void const *)uptr, 8UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  cid = vmci_ctx_get_id(vmci_host_dev->context);
  result = vmci_ctx_remove_notification(cid, ar_info.remote_cid);
  __might_fault("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_host.c",
                710);
  __pu_val = result;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33998;
  case 2UL:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33998;
  case 4UL:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33998;
  case 8UL:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33998;
  default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" (& info->result): "ebx");
  goto ldv_33998;
  }
  ldv_33998: ;
  return (__ret_pu != 0 ? -14 : 0);
}
}
static int vmci_host_do_ctx_get_cpt_state(struct vmci_host_dev *vmci_host_dev , char const *ioctl_name ,
                                          void *uptr )
{
  struct vmci_ctx_chkpt_buf_info get_info ;
  u32 cid ;
  void *cpt_buf ;
  int retval ;
  unsigned long tmp ;
  void *ubuf ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  {
  if ((unsigned int )vmci_host_dev->ct_type != 11U) {
    no_printk("\017%s: only valid for contexts\n", ioctl_name);
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& get_info), (void const *)uptr, 24UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  cid = vmci_ctx_get_id(vmci_host_dev->context);
  get_info.result = vmci_ctx_get_chkpt_state(cid, get_info.cpt_type, & get_info.buf_size,
                                             & cpt_buf);
  if (get_info.result == 0 && get_info.buf_size != 0U) {
    ubuf = (void *)get_info.cpt_buf;
    tmp___0 = copy_to_user(ubuf, (void const *)cpt_buf, (unsigned long )get_info.buf_size);
    retval = (int )tmp___0;
    kfree((void const *)cpt_buf);
    if (retval != 0) {
      return (-14);
    } else {
    }
  } else {
  }
  tmp___1 = copy_to_user(uptr, (void const *)(& get_info), 24UL);
  return (tmp___1 != 0UL ? -14 : 0);
}
}
static int vmci_host_do_ctx_set_cpt_state(struct vmci_host_dev *vmci_host_dev , char const *ioctl_name ,
                                          void *uptr )
{
  struct vmci_ctx_chkpt_buf_info set_info ;
  u32 cid ;
  void *cpt_buf ;
  int retval ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  {
  if ((unsigned int )vmci_host_dev->ct_type != 11U) {
    no_printk("\017%s: only valid for contexts\n", ioctl_name);
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& set_info), (void const *)uptr, 24UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  cpt_buf = kmalloc((size_t )set_info.buf_size, 208U);
  if ((unsigned long )cpt_buf == (unsigned long )((void *)0)) {
    no_printk("\017%s: cannot allocate memory to set cpt state (type=%d)\n", ioctl_name,
              set_info.cpt_type);
    return (-12);
  } else {
  }
  tmp___0 = copy_from_user(cpt_buf, (void const *)set_info.cpt_buf, (unsigned long )set_info.buf_size);
  if (tmp___0 != 0UL) {
    retval = -14;
    goto out;
  } else {
  }
  cid = vmci_ctx_get_id(vmci_host_dev->context);
  set_info.result = vmci_ctx_set_chkpt_state(cid, set_info.cpt_type, set_info.buf_size,
                                             cpt_buf);
  tmp___1 = copy_to_user(uptr, (void const *)(& set_info), 24UL);
  retval = tmp___1 != 0UL ? -14 : 0;
  out:
  kfree((void const *)cpt_buf);
  return (retval);
}
}
static int vmci_host_do_get_context_id(struct vmci_host_dev *vmci_host_dev , char const *ioctl_name ,
                                       void *uptr )
{
  u32 *u32ptr ;
  int __ret_pu ;
  u32 __pu_val ;
  {
  u32ptr = (u32 *)uptr;
  __might_fault("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_host.c",
                793);
  __pu_val = 2U;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" (u32ptr): "ebx");
  goto ldv_34033;
  case 2UL:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" (u32ptr): "ebx");
  goto ldv_34033;
  case 4UL:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" (u32ptr): "ebx");
  goto ldv_34033;
  case 8UL:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" (u32ptr): "ebx");
  goto ldv_34033;
  default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" (u32ptr): "ebx");
  goto ldv_34033;
  }
  ldv_34033: ;
  return (__ret_pu != 0 ? -14 : 0);
}
}
static int vmci_host_do_set_notify(struct vmci_host_dev *vmci_host_dev , char const *ioctl_name ,
                                   void *uptr )
{
  struct vmci_set_notify_info notify_info ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  if ((unsigned int )vmci_host_dev->ct_type != 11U) {
    no_printk("\017%s: only valid for contexts\n", ioctl_name);
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& notify_info), (void const *)uptr, 16UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  if (notify_info.notify_uva != 0ULL) {
    notify_info.result = vmci_host_setup_notify(vmci_host_dev->context, (unsigned long )notify_info.notify_uva);
  } else {
    vmci_ctx_unset_notify(vmci_host_dev->context);
    notify_info.result = 0;
  }
  tmp___0 = copy_to_user(uptr, (void const *)(& notify_info), 16UL);
  return (tmp___0 != 0UL ? -14 : 0);
}
}
static int vmci_host_do_notify_resource(struct vmci_host_dev *vmci_host_dev , char const *ioctl_name ,
                                        void *uptr )
{
  struct vmci_dbell_notify_resource_info info ;
  u32 cid ;
  unsigned long tmp ;
  u32 flags ;
  unsigned long tmp___0 ;
  {
  if (vmci_host_dev->user_version <= 655359) {
    no_printk("\017%s: invalid for current VMX versions\n", ioctl_name);
    return (-22);
  } else {
  }
  if ((unsigned int )vmci_host_dev->ct_type != 11U) {
    no_printk("\017%s: only valid for contexts\n", ioctl_name);
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& info), (void const *)uptr, 16UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  cid = vmci_ctx_get_id(vmci_host_dev->context);
  switch ((int )info.action) {
  case 0: ;
  if ((unsigned int )info.resource == 1U) {
    flags = 0U;
    info.result = vmci_ctx_notify_dbell(cid, info.handle, flags);
  } else {
    info.result = -20;
  }
  goto ldv_34054;
  case 1:
  info.result = vmci_ctx_dbell_create(cid, info.handle);
  goto ldv_34054;
  case 2:
  info.result = vmci_ctx_dbell_destroy(cid, info.handle);
  goto ldv_34054;
  default:
  no_printk("\017%s: got unknown action (action=%d)\n", ioctl_name, (int )info.action);
  info.result = -2;
  }
  ldv_34054:
  tmp___0 = copy_to_user(uptr, (void const *)(& info), 16UL);
  return (tmp___0 != 0UL ? -14 : 0);
}
}
static int vmci_host_do_recv_notifications(struct vmci_host_dev *vmci_host_dev , char const *ioctl_name ,
                                           void *uptr )
{
  struct vmci_ctx_notify_recv_info info ;
  struct vmci_handle_arr *db_handle_array ;
  struct vmci_handle_arr *qp_handle_array ;
  void *ubuf ;
  u32 cid ;
  int retval ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  {
  retval = 0;
  if ((unsigned int )vmci_host_dev->ct_type != 11U) {
    no_printk("\017%s: only valid for contexts\n", ioctl_name);
    return (-22);
  } else {
  }
  if (vmci_host_dev->user_version <= 655359) {
    no_printk("\017%s: not supported for the current vmx version\n", ioctl_name);
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& info), (void const *)uptr, 40UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  if ((info.db_handle_buf_size != 0ULL && info.db_handle_buf_uva == 0ULL) || (info.qp_handle_buf_size != 0ULL && info.qp_handle_buf_uva == 0ULL)) {
    return (-22);
  } else {
  }
  cid = vmci_ctx_get_id(vmci_host_dev->context);
  info.result = vmci_ctx_rcv_notifications_get(cid, & db_handle_array, & qp_handle_array);
  if (info.result != 0) {
    tmp___0 = copy_to_user(uptr, (void const *)(& info), 40UL);
    return (tmp___0 != 0UL ? -14 : 0);
  } else {
  }
  ubuf = (void *)info.db_handle_buf_uva;
  info.result = drv_cp_harray_to_user(ubuf, & info.db_handle_buf_size, db_handle_array,
                                      & retval);
  if (info.result == 0 && retval == 0) {
    ubuf = (void *)info.qp_handle_buf_uva;
    info.result = drv_cp_harray_to_user(ubuf, & info.qp_handle_buf_size, qp_handle_array,
                                        & retval);
  } else {
  }
  if (retval == 0) {
    tmp___1 = copy_to_user(uptr, (void const *)(& info), 40UL);
    if (tmp___1 != 0UL) {
      retval = -14;
    } else {
    }
  } else {
  }
  vmci_ctx_rcv_notifications_release(cid, db_handle_array, qp_handle_array, (int )((bool )(info.result == 0 && retval == 0)));
  return (retval);
}
}
static long vmci_host_unlocked_ioctl(struct file *filp , unsigned int iocmd , unsigned long ioarg )
{
  struct vmci_host_dev *vmci_host_dev ;
  void *uptr ;
  char *name ;
  int tmp ;
  char *name___0 ;
  int tmp___0 ;
  char *name___1 ;
  int tmp___1 ;
  char *name___2 ;
  int tmp___2 ;
  char *name___3 ;
  int tmp___3 ;
  char *name___4 ;
  int tmp___4 ;
  char *name___5 ;
  int tmp___5 ;
  char *name___6 ;
  int tmp___6 ;
  char *name___7 ;
  int tmp___7 ;
  char *name___8 ;
  int tmp___8 ;
  char *name___9 ;
  int tmp___9 ;
  char *name___10 ;
  int tmp___10 ;
  char *name___11 ;
  int tmp___11 ;
  char *name___12 ;
  int tmp___12 ;
  char *name___13 ;
  int tmp___13 ;
  int tmp___14 ;
  {
  vmci_host_dev = (struct vmci_host_dev *)filp->private_data;
  uptr = (void *)ioarg;
  switch (iocmd) {
  case 1952U:
  name = (char *)"(((0U) << (((0+8)+8)+14)) | (((7)) << (0+8)) | (((0xa0)) << 0) | ((0) << ((0+8)+8)))";
  tmp = vmci_host_do_init_context(vmci_host_dev, (char const *)name, uptr);
  return ((long )tmp);
  case 1963U:
  name___0 = (char *)"(((0U) << (((0+8)+8)+14)) | (((7)) << (0+8)) | (((0xab)) << 0) | ((0) << ((0+8)+8)))";
  tmp___0 = vmci_host_do_send_datagram(vmci_host_dev, (char const *)name___0, uptr);
  return ((long )tmp___0);
  case 1964U:
  name___1 = (char *)"(((0U) << (((0+8)+8)+14)) | (((7)) << (0+8)) | (((0xac)) << 0) | ((0) << ((0+8)+8)))";
  tmp___1 = vmci_host_do_receive_datagram(vmci_host_dev, (char const *)name___1,
                                          uptr);
  return ((long )tmp___1);
  case 1960U:
  name___2 = (char *)"(((0U) << (((0+8)+8)+14)) | (((7)) << (0+8)) | (((0xa8)) << 0) | ((0) << ((0+8)+8)))";
  tmp___2 = vmci_host_do_alloc_queuepair(vmci_host_dev, (char const *)name___2,
                                         uptr);
  return ((long )tmp___2);
  case 1956U:
  name___3 = (char *)"(((0U) << (((0+8)+8)+14)) | (((7)) << (0+8)) | (((0xa4)) << 0) | ((0) << ((0+8)+8)))";
  tmp___3 = vmci_host_do_queuepair_setva(vmci_host_dev, (char const *)name___3,
                                         uptr);
  return ((long )tmp___3);
  case 1961U:
  name___4 = (char *)"(((0U) << (((0+8)+8)+14)) | (((7)) << (0+8)) | (((0xa9)) << 0) | ((0) << ((0+8)+8)))";
  tmp___4 = vmci_host_do_queuepair_setpf(vmci_host_dev, (char const *)name___4,
                                         uptr);
  return ((long )tmp___4);
  case 1962U:
  name___5 = (char *)"(((0U) << (((0+8)+8)+14)) | (((7)) << (0+8)) | (((0xaa)) << 0) | ((0) << ((0+8)+8)))";
  tmp___5 = vmci_host_do_qp_detach(vmci_host_dev, (char const *)name___5, uptr);
  return ((long )tmp___5);
  case 1967U:
  name___6 = (char *)"(((0U) << (((0+8)+8)+14)) | (((7)) << (0+8)) | (((0xaf)) << 0) | ((0) << ((0+8)+8)))";
  tmp___6 = vmci_host_do_ctx_add_notify(vmci_host_dev, (char const *)name___6, uptr);
  return ((long )tmp___6);
  case 1968U:
  name___7 = (char *)"(((0U) << (((0+8)+8)+14)) | (((7)) << (0+8)) | (((0xb0)) << 0) | ((0) << ((0+8)+8)))";
  tmp___7 = vmci_host_do_ctx_remove_notify(vmci_host_dev, (char const *)name___7,
                                           uptr);
  return ((long )tmp___7);
  case 1969U:
  name___8 = (char *)"(((0U) << (((0+8)+8)+14)) | (((7)) << (0+8)) | (((0xb1)) << 0) | ((0) << ((0+8)+8)))";
  tmp___8 = vmci_host_do_ctx_get_cpt_state(vmci_host_dev, (char const *)name___8,
                                           uptr);
  return ((long )tmp___8);
  case 1970U:
  name___9 = (char *)"(((0U) << (((0+8)+8)+14)) | (((7)) << (0+8)) | (((0xb2)) << 0) | ((0) << ((0+8)+8)))";
  tmp___9 = vmci_host_do_ctx_set_cpt_state(vmci_host_dev, (char const *)name___9,
                                           uptr);
  return ((long )tmp___9);
  case 1971U:
  name___10 = (char *)"(((0U) << (((0+8)+8)+14)) | (((7)) << (0+8)) | (((0xb3)) << 0) | ((0) << ((0+8)+8)))";
  tmp___10 = vmci_host_do_get_context_id(vmci_host_dev, (char const *)name___10,
                                         uptr);
  return ((long )tmp___10);
  case 1995U:
  name___11 = (char *)"(((0U) << (((0+8)+8)+14)) | (((7)) << (0+8)) | (((0xcb)) << 0) | ((0) << ((0+8)+8)))";
  tmp___11 = vmci_host_do_set_notify(vmci_host_dev, (char const *)name___11, uptr);
  return ((long )tmp___11);
  case 1957U:
  name___12 = (char *)"(((0U) << (((0+8)+8)+14)) | (((7)) << (0+8)) | (((0xa5)) << 0) | ((0) << ((0+8)+8)))";
  tmp___12 = vmci_host_do_notify_resource(vmci_host_dev, (char const *)name___12,
                                          uptr);
  return ((long )tmp___12);
  case 1958U:
  name___13 = (char *)"(((0U) << (((0+8)+8)+14)) | (((7)) << (0+8)) | (((0xa6)) << 0) | ((0) << ((0+8)+8)))";
  tmp___13 = vmci_host_do_recv_notifications(vmci_host_dev, (char const *)name___13,
                                             uptr);
  return ((long )tmp___13);
  case 1951U: ;
  case 1959U:
  tmp___14 = vmci_host_get_version(vmci_host_dev, iocmd, uptr);
  return ((long )tmp___14);
  default:
  no_printk("\017%s: Unknown ioctl (iocmd=%d)\n", "vmci_host_unlocked_ioctl", iocmd);
  return (-22L);
  }
}
}
static struct file_operations const vmuser_fops =
     {& __this_module, 0, 0, 0, 0, 0, 0, & vmci_host_poll, & vmci_host_unlocked_ioctl,
    & vmci_host_unlocked_ioctl, 0, 0, & vmci_host_open, 0, & vmci_host_close, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct miscdevice vmci_host_miscdev =
     {255, "vmci", & vmuser_fops, {0, 0}, 0, 0, 0, 0, (unsigned short)0};
int vmci_host_init(void)
{
  int error ;
  long tmp ;
  bool tmp___0 ;
  {
  host_context = vmci_ctx_create(2U, 0U, 0xffffffffffffffffUL, 720896, (struct cred const *)0);
  tmp___0 = IS_ERR((void const *)host_context);
  if ((int )tmp___0) {
    tmp = PTR_ERR((void const *)host_context);
    error = (int )tmp;
    printk("\fFailed to initialize VMCIContext (error%d)\n", error);
    return (error);
  } else {
  }
  error = ldv_misc_register_177(& vmci_host_miscdev);
  if (error != 0) {
    printk("\fModule registration error (name=%s, major=%d, minor=%d, err=%d)\n",
           vmci_host_miscdev.name, 10, vmci_host_miscdev.minor, error);
    printk("\fUnable to initialize host personality\n");
    vmci_ctx_destroy(host_context);
    return (error);
  } else {
  }
  printk("\016VMCI host device registered (name=%s, major=%d, minor=%d)\n", vmci_host_miscdev.name,
         10, vmci_host_miscdev.minor);
  vmci_host_device_initialized = 1;
  return (0);
}
}
void vmci_host_exit(void)
{
  int error ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  vmci_host_device_initialized = 0;
  error = ldv_misc_deregister_178(& vmci_host_miscdev);
  if (error != 0) {
    printk("\fError unregistering character device: %d\n", error);
  } else {
  }
  vmci_ctx_destroy(host_context);
  vmci_qp_broker_exit();
  descriptor.modname = "vmw_vmci";
  descriptor.function = "vmci_host_exit";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_host.c";
  descriptor.format = "VMCI host driver module unloaded\n";
  descriptor.lineno = 1045U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "VMCI host driver module unloaded\n");
  } else {
  }
  return;
}
}
int ldv_retval_0 ;
void ldv_file_operations_6(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  vmuser_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  vmuser_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_main_exported_6(void)
{
  struct poll_table_struct *ldvarg2 ;
  void *tmp ;
  unsigned long ldvarg0 ;
  unsigned long ldvarg3 ;
  unsigned int ldvarg4 ;
  unsigned int ldvarg1 ;
  int tmp___0 ;
  {
  tmp = ldv_init_zalloc(16UL);
  ldvarg2 = (struct poll_table_struct *)tmp;
  ldv_memset((void *)(& ldvarg0), 0, 8UL);
  ldv_memset((void *)(& ldvarg3), 0, 8UL);
  ldv_memset((void *)(& ldvarg4), 0, 4UL);
  ldv_memset((void *)(& ldvarg1), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_6 == 2) {
    vmci_host_close(vmuser_fops_group1, vmuser_fops_group2);
    ldv_state_variable_6 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_34135;
  case 1: ;
  if (ldv_state_variable_6 == 2) {
    vmci_host_unlocked_ioctl(vmuser_fops_group2, ldvarg4, ldvarg3);
    ldv_state_variable_6 = 2;
  } else {
  }
  goto ldv_34135;
  case 2: ;
  if (ldv_state_variable_6 == 1) {
    vmci_host_poll(vmuser_fops_group2, ldvarg2);
    ldv_state_variable_6 = 1;
  } else {
  }
  if (ldv_state_variable_6 == 2) {
    vmci_host_poll(vmuser_fops_group2, ldvarg2);
    ldv_state_variable_6 = 2;
  } else {
  }
  goto ldv_34135;
  case 3: ;
  if (ldv_state_variable_6 == 1) {
    ldv_retval_0 = vmci_host_open(vmuser_fops_group1, vmuser_fops_group2);
    if (ldv_retval_0 == 0) {
      ldv_state_variable_6 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_34135;
  case 4: ;
  if (ldv_state_variable_6 == 2) {
    vmci_host_unlocked_ioctl(vmuser_fops_group2, ldvarg1, ldvarg0);
    ldv_state_variable_6 = 2;
  } else {
  }
  goto ldv_34135;
  default:
  ldv_stop();
  }
  ldv_34135: ;
  return;
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
bool ldv_queue_work_on_163(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_164(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_165(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_166(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_167(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_168(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_169(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_170(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_171(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_172(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_173(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
void ldv_mutex_unlock_174(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_175(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_vmci_host_dev(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_176(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_vmci_host_dev(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_misc_register_177(struct miscdevice *misc )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = misc_register(misc);
  ldv_func_res = tmp;
  ldv_state_variable_6 = 1;
  ldv_file_operations_6();
  return (ldv_func_res);
}
}
int ldv_misc_deregister_178(struct miscdevice *misc )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = misc_deregister(misc);
  ldv_func_res = tmp;
  ldv_state_variable_6 = 0;
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
__inline static long atomic64_read(atomic64_t const *v )
{
  long __var ;
  {
  __var = 0L;
  return ((long )*((long const volatile *)(& v->counter)));
}
}
__inline static void atomic64_set(atomic64_t *v , long i )
{
  {
  v->counter = i;
  return;
}
}
int ldv_mutex_trylock_209(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_204(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_207(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_210(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_212(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_214(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_215(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_216(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_218(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_219(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_220(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_222(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_223(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_225(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_227(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_229(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_231(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_233(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_235(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_205(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_206(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_208(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_211(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_213(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_217(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_221(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_224(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_226(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_228(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_230(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_232(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_234(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_mutex_of_qp_list(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_qp_list(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_vmci_queue_kern_if(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_vmci_queue_kern_if(struct mutex *lock ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
bool ldv_queue_work_on_199(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_201(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_200(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_203(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_202(struct workqueue_struct *ldv_func_arg1 ) ;
extern void schedule(void) ;
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
static struct vmci_handle const VMCI_INVALID_HANDLE___2 = {4294967295U, 4294967295U};
__inline static bool vmci_handle_is_invalid___1(struct vmci_handle h )
{
  bool tmp ;
  {
  tmp = vmci_handle_is_equal(h, VMCI_INVALID_HANDLE___2);
  return (tmp);
}
}
static struct vmci_handle const VMCI_ANON_SRC_HANDLE___1 = {4294967295U, 4294967295U};
__inline static void vmci_qp_add_pointer(atomic64_t *var , size_t add , u64 size )
{
  u64 new_val ;
  long tmp ;
  {
  tmp = atomic64_read((atomic64_t const *)var);
  new_val = (u64 )tmp;
  if (size - (unsigned long long )add <= new_val) {
    new_val = new_val - size;
  } else {
  }
  new_val = new_val + (unsigned long long )add;
  atomic64_set(var, (long )new_val);
  return;
}
}
__inline static u64 vmci_q_header_producer_tail(struct vmci_queue_header const *q_header )
{
  struct vmci_queue_header *qh ;
  long tmp ;
  {
  qh = (struct vmci_queue_header *)q_header;
  tmp = atomic64_read((atomic64_t const *)(& qh->producer_tail));
  return ((u64 )tmp);
}
}
__inline static u64 vmci_q_header_consumer_head(struct vmci_queue_header const *q_header )
{
  struct vmci_queue_header *qh ;
  long tmp ;
  {
  qh = (struct vmci_queue_header *)q_header;
  tmp = atomic64_read((atomic64_t const *)(& qh->consumer_head));
  return ((u64 )tmp);
}
}
__inline static void vmci_q_header_add_producer_tail(struct vmci_queue_header *q_header ,
                                                     size_t add , u64 queue_size )
{
  {
  vmci_qp_add_pointer(& q_header->producer_tail, add, queue_size);
  return;
}
}
__inline static void vmci_q_header_add_consumer_head(struct vmci_queue_header *q_header ,
                                                     size_t add , u64 queue_size )
{
  {
  vmci_qp_add_pointer(& q_header->consumer_head, add, queue_size);
  return;
}
}
__inline static void vmci_q_header_get_pointers(struct vmci_queue_header const *produce_q_header ,
                                                struct vmci_queue_header const *consume_q_header ,
                                                u64 *producer_tail , u64 *consumer_head )
{
  {
  if ((unsigned long )producer_tail != (unsigned long )((u64 *)0ULL)) {
    *producer_tail = vmci_q_header_producer_tail(produce_q_header);
  } else {
  }
  if ((unsigned long )consumer_head != (unsigned long )((u64 *)0ULL)) {
    *consumer_head = vmci_q_header_consumer_head(consume_q_header);
  } else {
  }
  return;
}
}
__inline static void vmci_q_header_init(struct vmci_queue_header *q_header , struct vmci_handle const handle )
{
  {
  q_header->handle = handle;
  atomic64_set(& q_header->producer_tail, 0L);
  atomic64_set(& q_header->consumer_head, 0L);
  return;
}
}
static s64 vmci_q_header_free_space(struct vmci_queue_header const *produce_q_header ,
                                    struct vmci_queue_header const *consume_q_header ,
                                    u64 const produce_q_size )
{
  u64 tail ;
  u64 head ;
  u64 free_space ;
  {
  tail = vmci_q_header_producer_tail(produce_q_header);
  head = vmci_q_header_consumer_head(consume_q_header);
  if (tail >= (unsigned long long )produce_q_size || head >= (unsigned long long )produce_q_size) {
    return (-24LL);
  } else {
  }
  if (tail >= head) {
    free_space = ((head - tail) + (unsigned long long )produce_q_size) - 1ULL;
  } else {
    free_space = (head - tail) - 1ULL;
  }
  return ((s64 )free_space);
}
}
__inline static s64 vmci_q_header_buf_ready(struct vmci_queue_header const *consume_q_header ,
                                            struct vmci_queue_header const *produce_q_header ,
                                            u64 const consume_q_size )
{
  s64 free_space ;
  {
  free_space = vmci_q_header_free_space(consume_q_header, produce_q_header, consume_q_size);
  if (free_space < 0LL) {
    return (free_space);
  } else {
  }
  return ((s64 )(((unsigned long long )consume_q_size - (unsigned long long )free_space) - 1ULL));
}
}
int vmci_qpair_alloc(struct vmci_qp **qpair , struct vmci_handle *handle , u64 produce_qsize ,
                     u64 consume_qsize , u32 peer , u32 flags , u32 priv_flags ) ;
int vmci_qpair_detach(struct vmci_qp **qpair ) ;
int vmci_qpair_get_produce_indexes(struct vmci_qp const *qpair , u64 *producer_tail ,
                                   u64 *consumer_head ) ;
int vmci_qpair_get_consume_indexes(struct vmci_qp const *qpair , u64 *consumer_tail ,
                                   u64 *producer_head ) ;
s64 vmci_qpair_produce_free_space(struct vmci_qp const *qpair ) ;
s64 vmci_qpair_produce_buf_ready(struct vmci_qp const *qpair ) ;
s64 vmci_qpair_consume_free_space(struct vmci_qp const *qpair ) ;
s64 vmci_qpair_consume_buf_ready(struct vmci_qp const *qpair ) ;
ssize_t vmci_qpair_enqueue(struct vmci_qp *qpair , void const *buf , size_t buf_size ,
                           int buf_type ) ;
ssize_t vmci_qpair_dequeue(struct vmci_qp *qpair , void *buf , size_t buf_size , int buf_type ) ;
ssize_t vmci_qpair_peek(struct vmci_qp *qpair , void *buf , size_t buf_size , int buf_type ) ;
ssize_t vmci_qpair_enquev(struct vmci_qp *qpair , struct msghdr *msg , size_t iov_size ,
                          int buf_type ) ;
ssize_t vmci_qpair_dequev(struct vmci_qp *qpair , struct msghdr *msg , size_t iov_size ,
                          int buf_type ) ;
ssize_t vmci_qpair_peekv(struct vmci_qp *qpair , struct msghdr *msg , size_t iov_size ,
                         int buf_type ) ;
extern int set_page_dirty(struct page * ) ;
extern size_t copy_to_iter(void * , size_t , struct iov_iter * ) ;
extern size_t copy_from_iter(void * , size_t , struct iov_iter * ) ;
extern void *vmap(struct page ** , unsigned int , unsigned long , pgprot_t ) ;
extern void vunmap(void const * ) ;
__inline static int memcpy_from_msg(void *data , struct msghdr *msg , int len )
{
  size_t tmp ;
  {
  tmp = copy_from_iter(data, (size_t )len, & msg->msg_iter);
  return (tmp == (size_t )len ? 0 : -14);
}
}
__inline static int memcpy_to_msg(struct msghdr *msg , void *data , int len )
{
  size_t tmp ;
  {
  tmp = copy_to_iter(data, (size_t )len, & msg->msg_iter);
  return (tmp == (size_t )len ? 0 : -14);
}
}
__inline static bool VMCI_QP_PAGESTORE_IS_WELLFORMED(struct vmci_qp_page_store *page_store )
{
  {
  return (page_store->len > 1U);
}
}
int vmci_qp_alloc(struct vmci_handle *handle , struct vmci_queue **produce_q , u64 produce_size ,
                  struct vmci_queue **consume_q , u64 consume_size , u32 peer , u32 flags ,
                  u32 priv_flags , bool guest_endpoint , int (*wakeup_cb)(void * ) ,
                  void *client_data ) ;
static struct qp_list qp_broker_list = {{& qp_broker_list.head, & qp_broker_list.head}, {{1}, {{{{{0}}, 3735899821U, 4294967295U,
                                                             (void *)-1, {0, {0, 0},
                                                                          "qp_broker_list.mutex.wait_lock",
                                                                          0, 0UL}}}},
                                                     {& qp_broker_list.mutex.wait_list,
                                                      & qp_broker_list.mutex.wait_list},
                                                     0, (void *)(& qp_broker_list.mutex),
                                                     {0, {0, 0}, "qp_broker_list.mutex",
                                                      0, 0UL}}};
static struct qp_list qp_guest_endpoints = {{& qp_guest_endpoints.head, & qp_guest_endpoints.head}, {{1}, {{{{{0}}, 3735899821U,
                                                                     4294967295U,
                                                                     (void *)-1, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  "qp_guest_endpoints.mutex.wait_lock",
                                                                                  0,
                                                                                  0UL}}}},
                                                             {& qp_guest_endpoints.mutex.wait_list,
                                                              & qp_guest_endpoints.mutex.wait_list},
                                                             0, (void *)(& qp_guest_endpoints.mutex),
                                                             {0, {0, 0}, "qp_guest_endpoints.mutex",
                                                              0, 0UL}}};
static void qp_free_queue(void *q , u64 size )
{
  struct vmci_queue *queue ;
  u64 i ;
  {
  queue = (struct vmci_queue *)q;
  if ((unsigned long )queue != (unsigned long )((struct vmci_queue *)0)) {
    i = 0ULL;
    goto ldv_36594;
    ldv_36593:
    dma_free_attrs(& vmci_pdev->dev, 4096UL, *((queue->kernel_if)->u.g.vas + i), *((queue->kernel_if)->u.g.pas + i),
                   (struct dma_attrs *)0);
    i = i + 1ULL;
    ldv_36594: ;
    if ((size + 4095ULL) / 4096ULL + 1ULL > i) {
      goto ldv_36593;
    } else {
    }
    vfree((void const *)queue);
  } else {
  }
  return;
}
}
static void *qp_alloc_queue(u64 size , u32 flags )
{
  u64 i ;
  struct vmci_queue *queue ;
  size_t pas_size ;
  size_t vas_size ;
  size_t queue_size ;
  u64 num_pages ;
  void *tmp ;
  {
  queue_size = 224UL;
  num_pages = (size + 4095ULL) / 4096ULL + 1ULL;
  if ((unsigned long long )(~ queue_size / 16UL) < num_pages) {
    return ((void *)0);
  } else {
  }
  pas_size = (size_t )(num_pages * 8ULL);
  vas_size = (size_t )(num_pages * 8ULL);
  queue_size = (pas_size + vas_size) + queue_size;
  tmp = vmalloc(queue_size);
  queue = (struct vmci_queue *)tmp;
  if ((unsigned long )queue == (unsigned long )((struct vmci_queue *)0)) {
    return ((void *)0);
  } else {
  }
  queue->q_header = (struct vmci_queue_header *)0;
  queue->saved_header = (struct vmci_queue_header *)0;
  queue->kernel_if = (struct vmci_queue_kern_if *)queue + 1U;
  (queue->kernel_if)->mutex = (struct mutex *)0;
  (queue->kernel_if)->num_pages = (size_t )num_pages;
  (queue->kernel_if)->u.g.pas = (dma_addr_t *)queue->kernel_if + 1U;
  (queue->kernel_if)->u.g.vas = (void **)(queue->kernel_if)->u.g.pas + pas_size;
  (queue->kernel_if)->host = 0;
  i = 0ULL;
  goto ldv_36607;
  ldv_36606:
  *((queue->kernel_if)->u.g.vas + i) = dma_alloc_attrs(& vmci_pdev->dev, 4096UL, (queue->kernel_if)->u.g.pas + i,
                                                       208U, (struct dma_attrs *)0);
  if ((unsigned long )*((queue->kernel_if)->u.g.vas + i) == (unsigned long )((void *)0)) {
    qp_free_queue((void *)queue, i * 4096ULL);
    return ((void *)0);
  } else {
  }
  i = i + 1ULL;
  ldv_36607: ;
  if (i < num_pages) {
    goto ldv_36606;
  } else {
  }
  queue->q_header = (struct vmci_queue_header *)*((queue->kernel_if)->u.g.vas);
  return ((void *)queue);
}
}
static int __qp_memcpy_to_queue(struct vmci_queue *queue , u64 queue_offset , void const *src ,
                                size_t size , bool is_iovec )
{
  struct vmci_queue_kern_if *kernel_if ;
  size_t bytes_copied ;
  u64 page_index___0 ;
  size_t page_offset___0 ;
  void *va ;
  size_t to_copy ;
  struct msghdr *msg ;
  int err ;
  {
  kernel_if = queue->kernel_if;
  bytes_copied = 0UL;
  goto ldv_36625;
  ldv_36624:
  page_index___0 = (queue_offset + (unsigned long long )bytes_copied) / 4096ULL;
  page_offset___0 = (size_t const )(queue_offset + (unsigned long long )bytes_copied) & 4095UL;
  if ((int )kernel_if->host) {
    va = kmap(*(kernel_if->u.h.page + page_index___0));
  } else {
    va = *(kernel_if->u.g.vas + ((unsigned long )page_index___0 + 1UL));
  }
  if (size - bytes_copied > 4096UL - page_offset___0) {
    to_copy = 4096UL - page_offset___0;
  } else {
    to_copy = size - bytes_copied;
  }
  if ((int )is_iovec) {
    msg = (struct msghdr *)src;
    err = memcpy_from_msg(va + page_offset___0, msg, (int )to_copy);
    if (err != 0) {
      if ((int )kernel_if->host) {
        kunmap(*(kernel_if->u.h.page + page_index___0));
      } else {
      }
      return (-2);
    } else {
    }
  } else {
    memcpy(va + page_offset___0, src + bytes_copied, to_copy);
  }
  bytes_copied = bytes_copied + to_copy;
  if ((int )kernel_if->host) {
    kunmap(*(kernel_if->u.h.page + page_index___0));
  } else {
  }
  ldv_36625: ;
  if (bytes_copied < size) {
    goto ldv_36624;
  } else {
  }
  return (0);
}
}
static int __qp_memcpy_from_queue(void *dest , struct vmci_queue const *queue ,
                                  u64 queue_offset , size_t size , bool is_iovec )
{
  struct vmci_queue_kern_if *kernel_if ;
  size_t bytes_copied ;
  u64 page_index___0 ;
  size_t page_offset___0 ;
  void *va ;
  size_t to_copy ;
  struct msghdr *msg ;
  int err ;
  {
  kernel_if = queue->kernel_if;
  bytes_copied = 0UL;
  goto ldv_36643;
  ldv_36642:
  page_index___0 = (queue_offset + (unsigned long long )bytes_copied) / 4096ULL;
  page_offset___0 = (size_t const )(queue_offset + (unsigned long long )bytes_copied) & 4095UL;
  if ((int )kernel_if->host) {
    va = kmap(*(kernel_if->u.h.page + page_index___0));
  } else {
    va = *(kernel_if->u.g.vas + ((unsigned long )page_index___0 + 1UL));
  }
  if (size - bytes_copied > 4096UL - page_offset___0) {
    to_copy = 4096UL - page_offset___0;
  } else {
    to_copy = size - bytes_copied;
  }
  if ((int )is_iovec) {
    msg = (struct msghdr *)dest;
    err = memcpy_to_msg(msg, va + page_offset___0, (int )to_copy);
    if (err != 0) {
      if ((int )kernel_if->host) {
        kunmap(*(kernel_if->u.h.page + page_index___0));
      } else {
      }
      return (-2);
    } else {
    }
  } else {
    memcpy(dest + bytes_copied, (void const *)va + page_offset___0, to_copy);
  }
  bytes_copied = bytes_copied + to_copy;
  if ((int )kernel_if->host) {
    kunmap(*(kernel_if->u.h.page + page_index___0));
  } else {
  }
  ldv_36643: ;
  if (bytes_copied < size) {
    goto ldv_36642;
  } else {
  }
  return (0);
}
}
static int qp_alloc_ppn_set(void *prod_q , u64 num_produce_pages , void *cons_q ,
                            u64 num_consume_pages , struct ppn_set *ppn_set )
{
  u32 *produce_ppns ;
  u32 *consume_ppns ;
  struct vmci_queue *produce_q ;
  struct vmci_queue *consume_q ;
  u64 i ;
  void *tmp ;
  void *tmp___0 ;
  unsigned long pfn ;
  unsigned long pfn___0 ;
  {
  produce_q = (struct vmci_queue *)prod_q;
  consume_q = (struct vmci_queue *)cons_q;
  if (((((unsigned long )produce_q == (unsigned long )((struct vmci_queue *)0) || num_produce_pages == 0ULL) || (unsigned long )consume_q == (unsigned long )((struct vmci_queue *)0)) || num_consume_pages == 0ULL) || (unsigned long )ppn_set == (unsigned long )((struct ppn_set *)0)) {
    return (-2);
  } else {
  }
  if ((int )ppn_set->initialized) {
    return (-22);
  } else {
  }
  tmp = kmalloc((size_t )(num_produce_pages * 4ULL), 208U);
  produce_ppns = (u32 *)tmp;
  if ((unsigned long )produce_ppns == (unsigned long )((u32 *)0U)) {
    return (-3);
  } else {
  }
  tmp___0 = kmalloc((size_t )(num_consume_pages * 4ULL), 208U);
  consume_ppns = (u32 *)tmp___0;
  if ((unsigned long )consume_ppns == (unsigned long )((u32 *)0U)) {
    kfree((void const *)produce_ppns);
    return (-3);
  } else {
  }
  i = 0ULL;
  goto ldv_36660;
  ldv_36659:
  *(produce_ppns + i) = (u32 )(*((produce_q->kernel_if)->u.g.pas + i) >> 12);
  pfn = (unsigned long )*(produce_ppns + i);
  if ((unsigned long )*(produce_ppns + i) != pfn) {
    goto ppn_error;
  } else {
  }
  i = i + 1ULL;
  ldv_36660: ;
  if (i < num_produce_pages) {
    goto ldv_36659;
  } else {
  }
  i = 0ULL;
  goto ldv_36664;
  ldv_36663:
  *(consume_ppns + i) = (u32 )(*((consume_q->kernel_if)->u.g.pas + i) >> 12);
  pfn___0 = (unsigned long )*(consume_ppns + i);
  if ((unsigned long )*(consume_ppns + i) != pfn___0) {
    goto ppn_error;
  } else {
  }
  i = i + 1ULL;
  ldv_36664: ;
  if (i < num_consume_pages) {
    goto ldv_36663;
  } else {
  }
  ppn_set->num_produce_pages = num_produce_pages;
  ppn_set->num_consume_pages = num_consume_pages;
  ppn_set->produce_ppns = produce_ppns;
  ppn_set->consume_ppns = consume_ppns;
  ppn_set->initialized = 1;
  return (0);
  ppn_error:
  kfree((void const *)produce_ppns);
  kfree((void const *)consume_ppns);
  return (-2);
}
}
static void qp_free_ppn_set(struct ppn_set *ppn_set )
{
  {
  if ((int )ppn_set->initialized) {
    kfree((void const *)ppn_set->produce_ppns);
    kfree((void const *)ppn_set->consume_ppns);
  } else {
  }
  memset((void *)ppn_set, 0, 40UL);
  return;
}
}
static int qp_populate_ppn_set(u8 *call_buf , struct ppn_set const *ppn_set )
{
  {
  memcpy((void *)call_buf, (void const *)ppn_set->produce_ppns, (size_t )((unsigned long long )ppn_set->num_produce_pages * 4ULL));
  memcpy((void *)(call_buf + (unsigned long long )ppn_set->num_produce_pages * 4ULL),
           (void const *)ppn_set->consume_ppns, (size_t )((unsigned long long )ppn_set->num_consume_pages * 4ULL));
  return (0);
}
}
static int qp_memcpy_to_queue(struct vmci_queue *queue , u64 queue_offset , void const *src ,
                              size_t src_offset , size_t size )
{
  int tmp ;
  {
  tmp = __qp_memcpy_to_queue(queue, queue_offset, src + src_offset, size, 0);
  return (tmp);
}
}
static int qp_memcpy_from_queue(void *dest , size_t dest_offset , struct vmci_queue const *queue ,
                                u64 queue_offset , size_t size )
{
  int tmp ;
  {
  tmp = __qp_memcpy_from_queue(dest + dest_offset, queue, queue_offset, size, 0);
  return (tmp);
}
}
static int qp_memcpy_to_queue_iov(struct vmci_queue *queue , u64 queue_offset , void const *msg ,
                                  size_t src_offset , size_t size )
{
  int tmp ;
  {
  tmp = __qp_memcpy_to_queue(queue, queue_offset, msg, size, 1);
  return (tmp);
}
}
static int qp_memcpy_from_queue_iov(void *dest , size_t dest_offset , struct vmci_queue const *queue ,
                                    u64 queue_offset , size_t size )
{
  int tmp ;
  {
  tmp = __qp_memcpy_from_queue(dest, queue, queue_offset, size, 1);
  return (tmp);
}
}
static struct vmci_queue *qp_host_alloc_queue(u64 size )
{
  struct vmci_queue *queue ;
  size_t queue_page_size ;
  u64 num_pages ;
  size_t queue_size ;
  void *tmp ;
  {
  num_pages = (size + 4095ULL) / 4096ULL + 1ULL;
  queue_size = 224UL;
  if ((unsigned long long )(~ queue_size / 8UL) < num_pages) {
    return ((struct vmci_queue *)0);
  } else {
  }
  queue_page_size = (size_t )(num_pages * 8ULL);
  tmp = kzalloc(queue_size + queue_page_size, 208U);
  queue = (struct vmci_queue *)tmp;
  if ((unsigned long )queue != (unsigned long )((struct vmci_queue *)0)) {
    queue->q_header = (struct vmci_queue_header *)0;
    queue->saved_header = (struct vmci_queue_header *)0;
    queue->kernel_if = (struct vmci_queue_kern_if *)queue + 1U;
    (queue->kernel_if)->host = 1;
    (queue->kernel_if)->mutex = (struct mutex *)0;
    (queue->kernel_if)->num_pages = (size_t )num_pages;
    (queue->kernel_if)->u.h.header_page = (struct page **)queue + queue_size;
    (queue->kernel_if)->u.h.page = (queue->kernel_if)->u.h.header_page + 1UL;
  } else {
  }
  return (queue);
}
}
static void qp_host_free_queue(struct vmci_queue *queue , u64 queue_size )
{
  {
  kfree((void const *)queue);
  return;
}
}
static void qp_init_queue_mutex(struct vmci_queue *produce_q , struct vmci_queue *consume_q )
{
  struct lock_class_key __key ;
  {
  if ((int )(produce_q->kernel_if)->host) {
    (produce_q->kernel_if)->mutex = & (produce_q->kernel_if)->__mutex;
    (consume_q->kernel_if)->mutex = & (produce_q->kernel_if)->__mutex;
    __mutex_init((produce_q->kernel_if)->mutex, "produce_q->kernel_if->mutex", & __key);
  } else {
  }
  return;
}
}
static void qp_cleanup_queue_mutex(struct vmci_queue *produce_q , struct vmci_queue *consume_q )
{
  {
  if ((int )(produce_q->kernel_if)->host) {
    (produce_q->kernel_if)->mutex = (struct mutex *)0;
    (consume_q->kernel_if)->mutex = (struct mutex *)0;
  } else {
  }
  return;
}
}
static void qp_acquire_queue_mutex(struct vmci_queue *queue )
{
  {
  if ((int )(queue->kernel_if)->host) {
    ldv_mutex_lock_211((queue->kernel_if)->mutex);
  } else {
  }
  return;
}
}
static void qp_release_queue_mutex(struct vmci_queue *queue )
{
  {
  if ((int )(queue->kernel_if)->host) {
    ldv_mutex_unlock_212((queue->kernel_if)->mutex);
  } else {
  }
  return;
}
}
static void qp_release_pages(struct page **pages , u64 num_pages , bool dirty )
{
  int i ;
  {
  i = 0;
  goto ldv_36734;
  ldv_36733: ;
  if ((int )dirty) {
    set_page_dirty(*(pages + (unsigned long )i));
  } else {
  }
  put_page(*(pages + (unsigned long )i));
  *(pages + (unsigned long )i) = (struct page *)0;
  i = i + 1;
  ldv_36734: ;
  if ((u64 )i < num_pages) {
    goto ldv_36733;
  } else {
  }
  return;
}
}
static int qp_host_get_user_memory(u64 produce_uva , u64 consume_uva , struct vmci_queue *produce_q ,
                                   struct vmci_queue *consume_q )
{
  int retval ;
  int err ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  err = 0;
  retval = get_user_pages_fast((unsigned long )produce_uva, (int )(produce_q->kernel_if)->num_pages,
                               1, (produce_q->kernel_if)->u.h.header_page);
  if ((size_t )retval < (produce_q->kernel_if)->num_pages) {
    descriptor.modname = "vmw_vmci";
    descriptor.function = "qp_host_get_user_memory";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_queue_pair.c";
    descriptor.format = "get_user_pages_fast(produce) failed (retval=%d)";
    descriptor.lineno = 754U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "get_user_pages_fast(produce) failed (retval=%d)",
                         retval);
    } else {
    }
    qp_release_pages((produce_q->kernel_if)->u.h.header_page, (u64 )retval, 0);
    err = -3;
    goto out;
  } else {
  }
  retval = get_user_pages_fast((unsigned long )consume_uva, (int )(consume_q->kernel_if)->num_pages,
                               1, (consume_q->kernel_if)->u.h.header_page);
  if ((size_t )retval < (consume_q->kernel_if)->num_pages) {
    descriptor___0.modname = "vmw_vmci";
    descriptor___0.function = "qp_host_get_user_memory";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_queue_pair.c";
    descriptor___0.format = "get_user_pages_fast(consume) failed (retval=%d)";
    descriptor___0.lineno = 766U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "get_user_pages_fast(consume) failed (retval=%d)",
                         retval);
    } else {
    }
    qp_release_pages((consume_q->kernel_if)->u.h.header_page, (u64 )retval, 0);
    qp_release_pages((produce_q->kernel_if)->u.h.header_page, (u64 )(produce_q->kernel_if)->num_pages,
                     0);
    err = -3;
  } else {
  }
  out: ;
  return (err);
}
}
static int qp_host_register_user_memory(struct vmci_qp_page_store *page_store , struct vmci_queue *produce_q ,
                                        struct vmci_queue *consume_q )
{
  u64 produce_uva ;
  u64 consume_uva ;
  int tmp ;
  {
  produce_uva = page_store->pages;
  consume_uva = page_store->pages + (unsigned long long )((produce_q->kernel_if)->num_pages * 4096UL);
  tmp = qp_host_get_user_memory(produce_uva, consume_uva, produce_q, consume_q);
  return (tmp);
}
}
static void qp_host_unregister_user_memory(struct vmci_queue *produce_q , struct vmci_queue *consume_q )
{
  {
  qp_release_pages((produce_q->kernel_if)->u.h.header_page, (u64 )(produce_q->kernel_if)->num_pages,
                   1);
  memset((void *)(produce_q->kernel_if)->u.h.header_page, 0, (produce_q->kernel_if)->num_pages * 8UL);
  qp_release_pages((consume_q->kernel_if)->u.h.header_page, (u64 )(consume_q->kernel_if)->num_pages,
                   1);
  memset((void *)(consume_q->kernel_if)->u.h.header_page, 0, (consume_q->kernel_if)->num_pages * 8UL);
  return;
}
}
static int qp_host_map_queues(struct vmci_queue *produce_q , struct vmci_queue *consume_q )
{
  int result ;
  struct page *headers[2U] ;
  pgprot_t __constr_expr_0 ;
  void *tmp ;
  {
  if ((unsigned long )produce_q->q_header == (unsigned long )((struct vmci_queue_header *)0) || (unsigned long )consume_q->q_header == (unsigned long )((struct vmci_queue_header *)0)) {
    if ((unsigned long )produce_q->q_header != (unsigned long )consume_q->q_header) {
      return (-31);
    } else {
    }
    if ((unsigned long )(produce_q->kernel_if)->u.h.header_page == (unsigned long )((struct page **)0) || (unsigned long )*((produce_q->kernel_if)->u.h.header_page) == (unsigned long )((struct page *)0)) {
      return (-20);
    } else {
    }
    headers[0] = *((produce_q->kernel_if)->u.h.header_page);
    headers[1] = *((consume_q->kernel_if)->u.h.header_page);
    __constr_expr_0.pgprot = 0x8000000000000163UL;
    tmp = vmap((struct page **)(& headers), 2U, 4UL, __constr_expr_0);
    produce_q->q_header = (struct vmci_queue_header *)tmp;
    if ((unsigned long )produce_q->q_header != (unsigned long )((struct vmci_queue_header *)0)) {
      consume_q->q_header = produce_q->q_header + 4096U;
      result = 0;
    } else {
      printk("\fvmap failed\n");
      result = -3;
    }
  } else {
    result = 0;
  }
  return (result);
}
}
static int qp_host_unmap_queues(u32 gid , struct vmci_queue *produce_q , struct vmci_queue *consume_q )
{
  {
  if ((unsigned long )produce_q->q_header != (unsigned long )((struct vmci_queue_header *)0)) {
    if ((unsigned long )produce_q->q_header < (unsigned long )consume_q->q_header) {
      vunmap((void const *)produce_q->q_header);
    } else {
      vunmap((void const *)consume_q->q_header);
    }
    produce_q->q_header = (struct vmci_queue_header *)0;
    consume_q->q_header = (struct vmci_queue_header *)0;
  } else {
  }
  return (0);
}
}
static struct qp_entry *qp_list_find(struct qp_list *qp_list , struct vmci_handle handle )
{
  struct qp_entry *entry ;
  bool tmp ;
  struct list_head const *__mptr ;
  bool tmp___0 ;
  struct list_head const *__mptr___0 ;
  {
  tmp = vmci_handle_is_invalid___1(handle);
  if ((int )tmp) {
    return ((struct qp_entry *)0);
  } else {
  }
  __mptr = (struct list_head const *)qp_list->head.next;
  entry = (struct qp_entry *)__mptr;
  goto ldv_36781;
  ldv_36780:
  tmp___0 = vmci_handle_is_equal(entry->handle, handle);
  if ((int )tmp___0) {
    return (entry);
  } else {
  }
  __mptr___0 = (struct list_head const *)entry->list_item.next;
  entry = (struct qp_entry *)__mptr___0;
  ldv_36781: ;
  if ((unsigned long )entry != (unsigned long )qp_list) {
    goto ldv_36780;
  } else {
  }
  return ((struct qp_entry *)0);
}
}
static struct qp_guest_endpoint *qp_guest_handle_to_entry(struct vmci_handle handle )
{
  struct qp_guest_endpoint *entry ;
  struct qp_entry *qp ;
  struct qp_entry *tmp ;
  struct qp_entry const *__mptr ;
  {
  tmp = qp_list_find(& qp_guest_endpoints, handle);
  qp = tmp;
  if ((unsigned long )qp != (unsigned long )((struct qp_entry *)0)) {
    __mptr = (struct qp_entry const *)qp;
    entry = (struct qp_guest_endpoint *)__mptr + 0xffffffffffffff78UL;
  } else {
    entry = (struct qp_guest_endpoint *)0;
  }
  return (entry);
}
}
static struct qp_broker_entry *qp_broker_handle_to_entry(struct vmci_handle handle )
{
  struct qp_broker_entry *entry ;
  struct qp_entry *qp ;
  struct qp_entry *tmp ;
  struct qp_entry const *__mptr ;
  {
  tmp = qp_list_find(& qp_broker_list, handle);
  qp = tmp;
  if ((unsigned long )qp != (unsigned long )((struct qp_entry *)0)) {
    __mptr = (struct qp_entry const *)qp;
    entry = (struct qp_broker_entry *)__mptr + 0xffffffffffffff78UL;
  } else {
    entry = (struct qp_broker_entry *)0;
  }
  return (entry);
}
}
static int qp_notify_peer_local(bool attach , struct vmci_handle handle )
{
  u32 context_id ;
  u32 tmp ;
  struct vmci_event_qp ev ;
  struct vmci_handle __constr_expr_0 ;
  struct vmci_handle __constr_expr_1 ;
  int tmp___0 ;
  {
  tmp = vmci_get_context_id();
  context_id = tmp;
  __constr_expr_0.context = context_id;
  __constr_expr_0.resource = 0U;
  ev.msg.hdr.dst = __constr_expr_0;
  __constr_expr_1.context = 0U;
  __constr_expr_1.resource = 0U;
  ev.msg.hdr.src = __constr_expr_1;
  ev.msg.hdr.payload_size = 24ULL;
  ev.msg.event_data.event = (int )attach ? 3U : 4U;
  ev.payload.peer_id = context_id;
  ev.payload.handle = handle;
  tmp___0 = vmci_event_dispatch(& ev.msg.hdr);
  return (tmp___0);
}
}
static struct qp_guest_endpoint *qp_guest_endpoint_create(struct vmci_handle handle ,
                                                          u32 peer , u32 flags , u64 produce_size ,
                                                          u64 consume_size , void *produce_q ,
                                                          void *consume_q )
{
  int result ;
  struct qp_guest_endpoint *entry ;
  u64 num_ppns ;
  u32 context_id ;
  u32 tmp ;
  struct vmci_handle __constr_expr_0 ;
  bool tmp___0 ;
  void *tmp___1 ;
  struct qp_entry *tmp___2 ;
  {
  num_ppns = ((produce_size + 4095ULL) / 4096ULL + (consume_size + 4095ULL) / 4096ULL) + 2ULL;
  tmp___0 = vmci_handle_is_invalid___1(handle);
  if ((int )tmp___0) {
    tmp = vmci_get_context_id();
    context_id = tmp;
    __constr_expr_0.context = context_id;
    __constr_expr_0.resource = 4294967295U;
    handle = __constr_expr_0;
  } else {
  }
  tmp___1 = kzalloc(256UL, 208U);
  entry = (struct qp_guest_endpoint *)tmp___1;
  if ((unsigned long )entry != (unsigned long )((struct qp_guest_endpoint *)0)) {
    entry->qp.peer = peer;
    entry->qp.flags = flags;
    entry->qp.produce_size = produce_size;
    entry->qp.consume_size = consume_size;
    entry->qp.ref_count = 0U;
    entry->num_ppns = num_ppns;
    entry->produce_q = produce_q;
    entry->consume_q = consume_q;
    INIT_LIST_HEAD(& entry->qp.list_item);
    result = vmci_resource_add(& entry->resource, 5, handle);
    entry->qp.handle = vmci_resource_handle(& entry->resource);
    if (result != 0) {
      printk("\fFailed to add new resource (handle=0x%x:0x%x), error: %d", handle.context,
             handle.resource, result);
      kfree((void const *)entry);
      entry = (struct qp_guest_endpoint *)0;
    } else {
      tmp___2 = qp_list_find(& qp_guest_endpoints, entry->qp.handle);
      if ((unsigned long )tmp___2 != (unsigned long )((struct qp_entry *)0)) {
        printk("\fFailed to add new resource (handle=0x%x:0x%x), error: %d", handle.context,
               handle.resource, result);
        kfree((void const *)entry);
        entry = (struct qp_guest_endpoint *)0;
      } else {
      }
    }
  } else {
  }
  return (entry);
}
}
static void qp_guest_endpoint_destroy(struct qp_guest_endpoint *entry )
{
  {
  qp_free_ppn_set(& entry->ppn_set);
  qp_cleanup_queue_mutex((struct vmci_queue *)entry->produce_q, (struct vmci_queue *)entry->consume_q);
  qp_free_queue(entry->produce_q, entry->qp.produce_size);
  qp_free_queue(entry->consume_q, entry->qp.consume_size);
  vmci_resource_remove(& entry->resource);
  kfree((void const *)entry);
  return;
}
}
static int qp_alloc_hypercall(struct qp_guest_endpoint const *entry )
{
  struct vmci_qp_alloc_msg *alloc_msg ;
  size_t msg_size ;
  int result ;
  void *tmp ;
  struct vmci_handle __constr_expr_0 ;
  {
  if ((unsigned long )entry == (unsigned long )((struct qp_guest_endpoint const *)0) || (unsigned long long )entry->num_ppns <= 2ULL) {
    return (-2);
  } else {
  }
  msg_size = ((unsigned long )entry->num_ppns + 16UL) * 4UL;
  tmp = kmalloc(msg_size, 208U);
  alloc_msg = (struct vmci_qp_alloc_msg *)tmp;
  if ((unsigned long )alloc_msg == (unsigned long )((struct vmci_qp_alloc_msg *)0)) {
    return (-3);
  } else {
  }
  __constr_expr_0.context = 0U;
  __constr_expr_0.resource = 10U;
  alloc_msg->hdr.dst = __constr_expr_0;
  alloc_msg->hdr.src = VMCI_ANON_SRC_HANDLE___1;
  alloc_msg->hdr.payload_size = (u64 )(msg_size - 24UL);
  alloc_msg->handle = entry->qp.handle;
  alloc_msg->peer = entry->qp.peer;
  alloc_msg->flags = entry->qp.flags;
  alloc_msg->produce_size = entry->qp.produce_size;
  alloc_msg->consume_size = entry->qp.consume_size;
  alloc_msg->num_ppns = entry->num_ppns;
  result = qp_populate_ppn_set((u8 *)alloc_msg + 64UL, & entry->ppn_set);
  if (result == 0) {
    result = vmci_send_datagram(& alloc_msg->hdr);
  } else {
  }
  kfree((void const *)alloc_msg);
  return (result);
}
}
static int qp_detatch_hypercall(struct vmci_handle handle )
{
  struct vmci_qp_detach_msg detach_msg ;
  struct vmci_handle __constr_expr_0 ;
  int tmp ;
  {
  __constr_expr_0.context = 0U;
  __constr_expr_0.resource = 11U;
  detach_msg.hdr.dst = __constr_expr_0;
  detach_msg.hdr.src = VMCI_ANON_SRC_HANDLE___1;
  detach_msg.hdr.payload_size = 8ULL;
  detach_msg.handle = handle;
  tmp = vmci_send_datagram(& detach_msg.hdr);
  return (tmp);
}
}
static void qp_list_add_entry(struct qp_list *qp_list , struct qp_entry *entry )
{
  {
  if ((unsigned long )entry != (unsigned long )((struct qp_entry *)0)) {
    list_add(& entry->list_item, & qp_list->head);
  } else {
  }
  return;
}
}
static void qp_list_remove_entry(struct qp_list *qp_list , struct qp_entry *entry )
{
  {
  if ((unsigned long )entry != (unsigned long )((struct qp_entry *)0)) {
    list_del(& entry->list_item);
  } else {
  }
  return;
}
}
static int qp_detatch_guest_work(struct vmci_handle handle )
{
  int result ;
  struct qp_guest_endpoint *entry ;
  u32 ref_count ;
  {
  ref_count = 4294967295U;
  ldv_mutex_lock_213(& qp_guest_endpoints.mutex);
  entry = qp_guest_handle_to_entry(handle);
  if ((unsigned long )entry == (unsigned long )((struct qp_guest_endpoint *)0)) {
    ldv_mutex_unlock_214(& qp_guest_endpoints.mutex);
    return (-21);
  } else {
  }
  if ((entry->qp.flags & 2U) != 0U) {
    result = 0;
    if (entry->qp.ref_count > 1U) {
      result = qp_notify_peer_local(0, handle);
    } else {
    }
  } else {
    result = qp_detatch_hypercall(handle);
    if (result < 0) {
      ldv_mutex_unlock_215(& qp_guest_endpoints.mutex);
      return (result);
    } else {
    }
  }
  entry->qp.ref_count = entry->qp.ref_count - 1U;
  if (entry->qp.ref_count == 0U) {
    qp_list_remove_entry(& qp_guest_endpoints, & entry->qp);
  } else {
  }
  if ((unsigned long )entry != (unsigned long )((struct qp_guest_endpoint *)0)) {
    ref_count = entry->qp.ref_count;
  } else {
  }
  ldv_mutex_unlock_216(& qp_guest_endpoints.mutex);
  if (ref_count == 0U) {
    qp_guest_endpoint_destroy(entry);
  } else {
  }
  return (result);
}
}
static int qp_alloc_guest_work(struct vmci_handle *handle , struct vmci_queue **produce_q ,
                               u64 produce_size , struct vmci_queue **consume_q ,
                               u64 consume_size , u32 peer , u32 flags , u32 priv_flags )
{
  u64 num_produce_pages ;
  u64 num_consume_pages ;
  void *my_produce_q ;
  void *my_consume_q ;
  int result ;
  struct qp_guest_endpoint *queue_pair_entry ;
  u32 context_id ;
  u32 tmp ;
  {
  num_produce_pages = (produce_size + 4095ULL) / 4096ULL + 1ULL;
  num_consume_pages = (consume_size + 4095ULL) / 4096ULL + 1ULL;
  my_produce_q = (void *)0;
  my_consume_q = (void *)0;
  queue_pair_entry = (struct qp_guest_endpoint *)0;
  if (priv_flags != 0U) {
    return (-7);
  } else {
  }
  ldv_mutex_lock_217(& qp_guest_endpoints.mutex);
  queue_pair_entry = qp_guest_handle_to_entry(*handle);
  if ((unsigned long )queue_pair_entry != (unsigned long )((struct qp_guest_endpoint *)0)) {
    if ((queue_pair_entry->qp.flags & 2U) != 0U) {
      if (queue_pair_entry->qp.ref_count > 1U) {
        no_printk("\017Error attempting to attach more than once\n");
        result = -20;
        goto error_keep_entry;
      } else {
      }
      if ((queue_pair_entry->qp.produce_size != consume_size || queue_pair_entry->qp.consume_size != produce_size) || queue_pair_entry->qp.flags != (flags & 4294967294U)) {
        no_printk("\017Error mismatched queue pair in local attach\n");
        result = -31;
        goto error_keep_entry;
      } else {
      }
      result = qp_notify_peer_local(1, *handle);
      if (result < 0) {
        goto error_keep_entry;
      } else {
      }
      my_produce_q = queue_pair_entry->consume_q;
      my_consume_q = queue_pair_entry->produce_q;
      goto out;
    } else {
    }
    result = -22;
    goto error_keep_entry;
  } else {
  }
  my_produce_q = qp_alloc_queue(produce_size, flags);
  if ((unsigned long )my_produce_q == (unsigned long )((void *)0)) {
    printk("\fError allocating pages for produce queue\n");
    result = -3;
    goto error;
  } else {
  }
  my_consume_q = qp_alloc_queue(consume_size, flags);
  if ((unsigned long )my_consume_q == (unsigned long )((void *)0)) {
    printk("\fError allocating pages for consume queue\n");
    result = -3;
    goto error;
  } else {
  }
  queue_pair_entry = qp_guest_endpoint_create(*handle, peer, flags, produce_size,
                                              consume_size, my_produce_q, my_consume_q);
  if ((unsigned long )queue_pair_entry == (unsigned long )((struct qp_guest_endpoint *)0)) {
    printk("\fError allocating memory in %s\n", "qp_alloc_guest_work");
    result = -3;
    goto error;
  } else {
  }
  result = qp_alloc_ppn_set(my_produce_q, num_produce_pages, my_consume_q, num_consume_pages,
                            & queue_pair_entry->ppn_set);
  if (result < 0) {
    printk("\fqp_alloc_ppn_set failed\n");
    goto error;
  } else {
  }
  if ((queue_pair_entry->qp.flags & 2U) != 0U) {
    tmp = vmci_get_context_id();
    context_id = tmp;
    if (queue_pair_entry->qp.handle.context != context_id || (queue_pair_entry->qp.peer != 4294967295U && queue_pair_entry->qp.peer != context_id)) {
      result = -7;
      goto error;
    } else {
    }
    if ((int )queue_pair_entry->qp.flags & 1) {
      result = -21;
      goto error;
    } else {
    }
  } else {
    result = qp_alloc_hypercall((struct qp_guest_endpoint const *)queue_pair_entry);
    if (result < 0) {
      printk("\fqp_alloc_hypercall result = %d\n", result);
      goto error;
    } else {
    }
  }
  qp_init_queue_mutex((struct vmci_queue *)my_produce_q, (struct vmci_queue *)my_consume_q);
  qp_list_add_entry(& qp_guest_endpoints, & queue_pair_entry->qp);
  out:
  queue_pair_entry->qp.ref_count = queue_pair_entry->qp.ref_count + 1U;
  *handle = queue_pair_entry->qp.handle;
  *produce_q = (struct vmci_queue *)my_produce_q;
  *consume_q = (struct vmci_queue *)my_consume_q;
  if ((queue_pair_entry->qp.flags & 2U) != 0U && queue_pair_entry->qp.ref_count == 1U) {
    vmci_q_header_init((*produce_q)->q_header, *handle);
    vmci_q_header_init((*consume_q)->q_header, *handle);
  } else {
  }
  ldv_mutex_unlock_218(& qp_guest_endpoints.mutex);
  return (0);
  error:
  ldv_mutex_unlock_219(& qp_guest_endpoints.mutex);
  if ((unsigned long )queue_pair_entry != (unsigned long )((struct qp_guest_endpoint *)0)) {
    qp_guest_endpoint_destroy(queue_pair_entry);
  } else {
    qp_free_queue(my_produce_q, produce_size);
    qp_free_queue(my_consume_q, consume_size);
  }
  return (result);
  error_keep_entry:
  ldv_mutex_unlock_220(& qp_guest_endpoints.mutex);
  return (result);
}
}
static int qp_broker_create(struct vmci_handle handle , u32 peer , u32 flags , u32 priv_flags ,
                            u64 produce_size , u64 consume_size , struct vmci_qp_page_store *page_store ,
                            struct vmci_ctx *context , int (*wakeup_cb)(void * ) ,
                            void *client_data , struct qp_broker_entry **ent )
{
  struct qp_broker_entry *entry ;
  u32 context_id ;
  u32 tmp ;
  bool is_local ;
  int result ;
  u64 guest_produce_size ;
  u64 guest_consume_size ;
  void *tmp___0 ;
  u32 tmp___1 ;
  u8 *tmp___2 ;
  {
  entry = (struct qp_broker_entry *)0;
  tmp = vmci_ctx_get_id(context);
  context_id = tmp;
  is_local = (flags & 2U) != 0U;
  if ((int )flags & 1) {
    return (-21);
  } else {
  }
  if (handle.context != context_id && handle.context != peer) {
    return (-7);
  } else {
  }
  if ((context_id != 4294967295U && context_id > 2U) && (peer != 4294967295U && peer > 2U)) {
    return (-10);
  } else {
  }
  if (((int )is_local && peer != 4294967295U) && context_id != peer) {
    return (-7);
  } else {
  }
  tmp___0 = kzalloc(296UL, 32U);
  entry = (struct qp_broker_entry *)tmp___0;
  if ((unsigned long )entry == (unsigned long )((struct qp_broker_entry *)0)) {
    return (-3);
  } else {
  }
  tmp___1 = vmci_ctx_get_id(context);
  if (tmp___1 == 2U && ! is_local) {
    guest_produce_size = consume_size;
    guest_consume_size = produce_size;
  } else {
    guest_produce_size = produce_size;
    guest_consume_size = consume_size;
  }
  entry->qp.handle = handle;
  entry->qp.peer = peer;
  entry->qp.flags = flags;
  entry->qp.produce_size = guest_produce_size;
  entry->qp.consume_size = guest_consume_size;
  entry->qp.ref_count = 1U;
  entry->create_id = context_id;
  entry->attach_id = 4294967295U;
  entry->state = 0;
  entry->require_trusted_attach = ((int )context->priv_flags & 1) != 0;
  entry->created_by_trusted = (priv_flags & 2U) != 0U;
  entry->vmci_page_files = 0;
  entry->wakeup_cb = wakeup_cb;
  entry->client_data = client_data;
  entry->produce_q = qp_host_alloc_queue(guest_produce_size);
  if ((unsigned long )entry->produce_q == (unsigned long )((struct vmci_queue *)0)) {
    result = -3;
    goto error;
  } else {
  }
  entry->consume_q = qp_host_alloc_queue(guest_consume_size);
  if ((unsigned long )entry->consume_q == (unsigned long )((struct vmci_queue *)0)) {
    result = -3;
    goto error;
  } else {
  }
  qp_init_queue_mutex(entry->produce_q, entry->consume_q);
  INIT_LIST_HEAD(& entry->qp.list_item);
  if ((int )is_local) {
    entry->local_mem = kcalloc((size_t )(((unsigned int )((entry->qp.produce_size + 4095ULL) / 4096ULL) + (unsigned int )((entry->qp.consume_size + 4095ULL) / 4096ULL)) + 2U),
                               4096UL, 208U);
    if ((unsigned long )entry->local_mem == (unsigned long )((void *)0)) {
      result = -3;
      goto error;
    } else {
    }
    entry->state = 2;
    (entry->produce_q)->q_header = (struct vmci_queue_header *)entry->local_mem;
    tmp___2 = (u8 *)entry->local_mem + ((entry->qp.produce_size + 4095ULL) / 4096ULL + 1ULL) * 4096ULL;
    (entry->consume_q)->q_header = (struct vmci_queue_header *)tmp___2;
  } else
  if ((unsigned long )page_store != (unsigned long )((struct vmci_qp_page_store *)0)) {
    result = qp_host_register_user_memory(page_store, entry->produce_q, entry->consume_q);
    if (result < 0) {
      goto error;
    } else {
    }
    entry->state = 2;
  } else {
    entry->state = 1;
  }
  qp_list_add_entry(& qp_broker_list, & entry->qp);
  if ((unsigned long )ent != (unsigned long )((struct qp_broker_entry **)0)) {
    *ent = entry;
  } else {
  }
  result = vmci_resource_add(& entry->resource, 6, handle);
  if (result != 0) {
    printk("\fFailed to add new resource (handle=0x%x:0x%x), error: %d", handle.context,
           handle.resource, result);
    goto error;
  } else {
  }
  entry->qp.handle = vmci_resource_handle(& entry->resource);
  if ((int )is_local) {
    vmci_q_header_init((entry->produce_q)->q_header, entry->qp.handle);
    vmci_q_header_init((entry->consume_q)->q_header, entry->qp.handle);
  } else {
  }
  vmci_ctx_qp_create(context, entry->qp.handle);
  return (0);
  error: ;
  if ((unsigned long )entry != (unsigned long )((struct qp_broker_entry *)0)) {
    qp_host_free_queue(entry->produce_q, guest_produce_size);
    qp_host_free_queue(entry->consume_q, guest_consume_size);
    kfree((void const *)entry);
  } else {
  }
  return (result);
}
}
static int qp_notify_peer(bool attach , struct vmci_handle handle , u32 my_id , u32 peer_id )
{
  int rv ;
  struct vmci_event_qp ev ;
  bool tmp ;
  struct vmci_handle __constr_expr_0 ;
  struct vmci_handle __constr_expr_1 ;
  {
  tmp = vmci_handle_is_invalid___1(handle);
  if (((int )tmp || my_id == 4294967295U) || peer_id == 4294967295U) {
    return (-2);
  } else {
  }
  __constr_expr_0.context = peer_id;
  __constr_expr_0.resource = 0U;
  ev.msg.hdr.dst = __constr_expr_0;
  __constr_expr_1.context = 0U;
  __constr_expr_1.resource = 0U;
  ev.msg.hdr.src = __constr_expr_1;
  ev.msg.hdr.payload_size = 24ULL;
  ev.msg.event_data.event = (int )attach ? 3U : 4U;
  ev.payload.handle = handle;
  ev.payload.peer_id = my_id;
  rv = vmci_datagram_dispatch(0U, & ev.msg.hdr, 0);
  if (rv < 0) {
    printk("\fFailed to enqueue queue_pair %s event datagram for context (ID=0x%x)\n",
           (int )attach ? (char *)"ATTACH" : (char *)"DETACH", peer_id);
  } else {
  }
  return (rv);
}
}
static int qp_broker_attach(struct qp_broker_entry *entry , u32 peer , u32 flags ,
                            u32 priv_flags , u64 produce_size , u64 consume_size ,
                            struct vmci_qp_page_store *page_store , struct vmci_ctx *context ,
                            int (*wakeup_cb)(void * ) , void *client_data , struct qp_broker_entry **ent )
{
  u32 context_id ;
  u32 tmp ;
  bool is_local ;
  int result ;
  bool tmp___0 ;
  int tmp___1 ;
  struct vmci_ctx *create_context ;
  bool supports_host_qp ;
  {
  tmp = vmci_ctx_get_id(context);
  context_id = tmp;
  is_local = (flags & 2U) != 0U;
  if ((unsigned int )entry->state != 1U && (unsigned int )entry->state != 2U) {
    return (-20);
  } else {
  }
  if ((int )is_local) {
    if ((entry->qp.flags & 2U) == 0U || entry->create_id != context_id) {
      return (-2);
    } else {
    }
  } else
  if (entry->create_id == context_id || entry->attach_id == context_id) {
    return (-22);
  } else {
  }
  if ((context_id != 4294967295U && context_id > 2U) && (entry->create_id != 4294967295U && entry->create_id > 2U)) {
    return (-10);
  } else {
  }
  if ((int )context->priv_flags & 1 && ! entry->created_by_trusted) {
    return (-7);
  } else {
  }
  if ((int )entry->require_trusted_attach && (priv_flags & 2U) == 0U) {
    return (-7);
  } else {
  }
  if (entry->qp.peer != 4294967295U && entry->qp.peer != context_id) {
    return (-7);
  } else {
  }
  if (entry->create_id == 2U) {
    tmp___0 = vmci_ctx_supports_host_qp(context);
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      return (-1);
    } else {
    }
  } else
  if (context_id == 2U) {
    create_context = vmci_ctx_get(entry->create_id);
    supports_host_qp = vmci_ctx_supports_host_qp(create_context);
    vmci_ctx_put(create_context);
    if (! supports_host_qp) {
      return (-1);
    } else {
    }
  } else {
  }
  if ((entry->qp.flags & 4294967283U) != (flags & 4294967282U)) {
    return (-31);
  } else {
  }
  if (context_id != 2U) {
    if (entry->qp.produce_size != produce_size || entry->qp.consume_size != consume_size) {
      return (-31);
    } else {
    }
  } else
  if (entry->qp.produce_size != consume_size || entry->qp.consume_size != produce_size) {
    return (-31);
  } else {
  }
  if (context_id != 2U) {
    if ((unsigned int )entry->state != 1U) {
      return (-2);
    } else {
    }
    if ((unsigned long )page_store != (unsigned long )((struct vmci_qp_page_store *)0)) {
      result = qp_host_register_user_memory(page_store, entry->produce_q, entry->consume_q);
      if (result < 0) {
        return (result);
      } else {
      }
      entry->state = 4;
    } else {
      entry->state = 3;
    }
  } else
  if ((unsigned int )entry->state == 1U) {
    return (-20);
  } else {
    entry->state = 4;
  }
  if ((unsigned int )entry->state == 4U) {
    result = qp_notify_peer(1, entry->qp.handle, context_id, entry->create_id);
    if (result < 0) {
      printk("\fFailed to notify peer (ID=0x%x) of attach to queue pair (handle=0x%x:0x%x)\n",
             entry->create_id, entry->qp.handle.context, entry->qp.handle.resource);
    } else {
    }
  } else {
  }
  entry->attach_id = context_id;
  entry->qp.ref_count = entry->qp.ref_count + 1U;
  if ((unsigned long )wakeup_cb != (unsigned long )((int (*)(void * ))0)) {
    entry->wakeup_cb = wakeup_cb;
    entry->client_data = client_data;
  } else {
  }
  if (! is_local) {
    vmci_ctx_qp_create(context, entry->qp.handle);
  } else {
  }
  if ((unsigned long )ent != (unsigned long )((struct qp_broker_entry **)0)) {
    *ent = entry;
  } else {
  }
  return (0);
}
}
static int qp_broker_alloc(struct vmci_handle handle , u32 peer , u32 flags , u32 priv_flags ,
                           u64 produce_size , u64 consume_size , struct vmci_qp_page_store *page_store ,
                           struct vmci_ctx *context , int (*wakeup_cb)(void * ) ,
                           void *client_data , struct qp_broker_entry **ent , bool *swap )
{
  u32 context_id ;
  u32 tmp ;
  bool create ;
  struct qp_broker_entry *entry ;
  bool is_local ;
  int result ;
  bool tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  {
  tmp = vmci_ctx_get_id(context);
  context_id = tmp;
  entry = (struct qp_broker_entry *)0;
  is_local = (flags & 2U) != 0U;
  tmp___0 = vmci_handle_is_invalid___1(handle);
  if (((((((int )tmp___0 || (flags & 4294967280U) != 0U) || (int )is_local) || (produce_size == 0ULL && consume_size == 0ULL)) || (unsigned long )context == (unsigned long )((struct vmci_ctx *)0)) || context_id == 4294967295U) || handle.context == 4294967295U) {
    return (-2);
  } else {
  }
  if ((unsigned long )page_store != (unsigned long )((struct vmci_qp_page_store *)0)) {
    tmp___1 = VMCI_QP_PAGESTORE_IS_WELLFORMED(page_store);
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      return (-2);
    } else {
    }
  } else {
  }
  ldv_mutex_lock_221(& qp_broker_list.mutex);
  if (! is_local) {
    tmp___3 = vmci_ctx_qp_exists(context, handle);
    if ((int )tmp___3) {
      no_printk("\017Context (ID=0x%x) already attached to queue pair (handle=0x%x:0x%x)\n",
                context_id, handle.context, handle.resource);
      ldv_mutex_unlock_222(& qp_broker_list.mutex);
      return (-22);
    } else {
    }
  } else {
  }
  if (handle.resource != 4294967295U) {
    entry = qp_broker_handle_to_entry(handle);
  } else {
  }
  if ((unsigned long )entry == (unsigned long )((struct qp_broker_entry *)0)) {
    create = 1;
    result = qp_broker_create(handle, peer, flags, priv_flags, produce_size, consume_size,
                              page_store, context, wakeup_cb, client_data, ent);
  } else {
    create = 0;
    result = qp_broker_attach(entry, peer, flags, priv_flags, produce_size, consume_size,
                              page_store, context, wakeup_cb, client_data, ent);
  }
  ldv_mutex_unlock_223(& qp_broker_list.mutex);
  if ((unsigned long )swap != (unsigned long )((bool *)0)) {
    *swap = (bool )(context_id == 2U && (! create || ! is_local));
  } else {
  }
  return (result);
}
}
static int qp_alloc_host_work(struct vmci_handle *handle , struct vmci_queue **produce_q ,
                              u64 produce_size , struct vmci_queue **consume_q , u64 consume_size ,
                              u32 peer , u32 flags , u32 priv_flags , int (*wakeup_cb)(void * ) ,
                              void *client_data )
{
  struct vmci_handle new_handle ;
  struct vmci_ctx *context ;
  struct qp_broker_entry *entry ;
  int result ;
  bool swap ;
  struct vmci_handle __constr_expr_0 ;
  bool tmp ;
  {
  tmp = vmci_handle_is_invalid___1(*handle);
  if ((int )tmp) {
    __constr_expr_0.context = 2U;
    __constr_expr_0.resource = 4294967295U;
    new_handle = __constr_expr_0;
  } else {
    new_handle = *handle;
  }
  context = vmci_ctx_get(2U);
  entry = (struct qp_broker_entry *)0;
  result = qp_broker_alloc(new_handle, peer, flags, priv_flags, produce_size, consume_size,
                           (struct vmci_qp_page_store *)0, context, wakeup_cb, client_data,
                           & entry, & swap);
  if (result == 0) {
    if ((int )swap) {
      *produce_q = entry->consume_q;
      *consume_q = entry->produce_q;
    } else {
      *produce_q = entry->produce_q;
      *consume_q = entry->consume_q;
    }
    *handle = vmci_resource_handle(& entry->resource);
  } else {
    *handle = VMCI_INVALID_HANDLE___2;
    no_printk("\017queue pair broker failed to alloc (result=%d)\n", result);
  }
  vmci_ctx_put(context);
  return (result);
}
}
int vmci_qp_alloc(struct vmci_handle *handle , struct vmci_queue **produce_q , u64 produce_size ,
                  struct vmci_queue **consume_q , u64 consume_size , u32 peer , u32 flags ,
                  u32 priv_flags , bool guest_endpoint , int (*wakeup_cb)(void * ) ,
                  void *client_data )
{
  int tmp ;
  int tmp___0 ;
  {
  if (((((unsigned long )handle == (unsigned long )((struct vmci_handle *)0) || (unsigned long )produce_q == (unsigned long )((struct vmci_queue **)0)) || (unsigned long )consume_q == (unsigned long )((struct vmci_queue **)0)) || (produce_size == 0ULL && consume_size == 0ULL)) || (flags & 4294967280U) != 0U) {
    return (-2);
  } else {
  }
  if ((int )guest_endpoint) {
    tmp = qp_alloc_guest_work(handle, produce_q, produce_size, consume_q, consume_size,
                              peer, flags, priv_flags);
    return (tmp);
  } else {
    tmp___0 = qp_alloc_host_work(handle, produce_q, produce_size, consume_q, consume_size,
                                 peer, flags, priv_flags, wakeup_cb, client_data);
    return (tmp___0);
  }
}
}
static int qp_detatch_host_work(struct vmci_handle handle )
{
  int result ;
  struct vmci_ctx *context ;
  {
  context = vmci_ctx_get(2U);
  result = vmci_qp_broker_detach(handle, context);
  vmci_ctx_put(context);
  return (result);
}
}
static int qp_detatch(struct vmci_handle handle , bool guest_endpoint )
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = vmci_handle_is_invalid___1(handle);
  if ((int )tmp) {
    return (-2);
  } else {
  }
  if ((int )guest_endpoint) {
    tmp___0 = qp_detatch_guest_work(handle);
    return (tmp___0);
  } else {
    tmp___1 = qp_detatch_host_work(handle);
    return (tmp___1);
  }
}
}
static struct qp_entry *qp_list_get_head(struct qp_list *qp_list )
{
  struct qp_entry *entry ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  tmp = list_empty((struct list_head const *)(& qp_list->head));
  if (tmp == 0) {
    __mptr = (struct list_head const *)qp_list->head.next;
    entry = (struct qp_entry *)__mptr;
    return (entry);
  } else {
  }
  return ((struct qp_entry *)0);
}
}
void vmci_qp_broker_exit(void)
{
  struct qp_entry *entry ;
  struct qp_broker_entry *be ;
  {
  ldv_mutex_lock_224(& qp_broker_list.mutex);
  goto ldv_36989;
  ldv_36988:
  be = (struct qp_broker_entry *)entry;
  qp_list_remove_entry(& qp_broker_list, entry);
  kfree((void const *)be);
  ldv_36989:
  entry = qp_list_get_head(& qp_broker_list);
  if ((unsigned long )entry != (unsigned long )((struct qp_entry *)0)) {
    goto ldv_36988;
  } else {
  }
  ldv_mutex_unlock_225(& qp_broker_list.mutex);
  return;
}
}
int vmci_qp_broker_alloc(struct vmci_handle handle , u32 peer , u32 flags , u32 priv_flags ,
                         u64 produce_size , u64 consume_size , struct vmci_qp_page_store *page_store ,
                         struct vmci_ctx *context )
{
  int tmp ;
  {
  tmp = qp_broker_alloc(handle, peer, flags, priv_flags, produce_size, consume_size,
                        page_store, context, (int (*)(void * ))0, (void *)0, (struct qp_broker_entry **)0,
                        (bool *)0);
  return (tmp);
}
}
int vmci_qp_broker_set_page_store(struct vmci_handle handle , u64 produce_uva , u64 consume_uva ,
                                  struct vmci_ctx *context )
{
  struct qp_broker_entry *entry ;
  int result ;
  u32 context_id ;
  u32 tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tmp = vmci_ctx_get_id(context);
  context_id = tmp;
  tmp___0 = vmci_handle_is_invalid___1(handle);
  if (((int )tmp___0 || (unsigned long )context == (unsigned long )((struct vmci_ctx *)0)) || context_id == 4294967295U) {
    return (-2);
  } else {
  }
  if (produce_uva == 0ULL || consume_uva == 0ULL) {
    return (-2);
  } else {
  }
  ldv_mutex_lock_226(& qp_broker_list.mutex);
  tmp___1 = vmci_ctx_qp_exists(context, handle);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    printk("\fContext (ID=0x%x) not attached to queue pair (handle=0x%x:0x%x)\n",
           context_id, handle.context, handle.resource);
    result = -21;
    goto out;
  } else {
  }
  entry = qp_broker_handle_to_entry(handle);
  if ((unsigned long )entry == (unsigned long )((struct qp_broker_entry *)0)) {
    result = -21;
    goto out;
  } else {
  }
  if (entry->create_id != context_id && (entry->create_id != 2U || entry->attach_id != context_id)) {
    result = -33;
    goto out;
  } else {
  }
  if ((unsigned int )entry->state != 1U && (unsigned int )entry->state != 3U) {
    result = -20;
    goto out;
  } else {
  }
  result = qp_host_get_user_memory(produce_uva, consume_uva, entry->produce_q, entry->consume_q);
  if (result < 0) {
    goto out;
  } else {
  }
  result = qp_host_map_queues(entry->produce_q, entry->consume_q);
  if (result < 0) {
    qp_host_unregister_user_memory(entry->produce_q, entry->consume_q);
    goto out;
  } else {
  }
  if ((unsigned int )entry->state == 1U) {
    entry->state = 2;
  } else {
    entry->state = 4;
  }
  entry->vmci_page_files = 1;
  if ((unsigned int )entry->state == 4U) {
    result = qp_notify_peer(1, handle, context_id, entry->create_id);
    if (result < 0) {
      printk("\fFailed to notify peer (ID=0x%x) of attach to queue pair (handle=0x%x:0x%x)\n",
             entry->create_id, entry->qp.handle.context, entry->qp.handle.resource);
    } else {
    }
  } else {
  }
  result = 0;
  out:
  ldv_mutex_unlock_227(& qp_broker_list.mutex);
  return (result);
}
}
static void qp_reset_saved_headers(struct qp_broker_entry *entry )
{
  {
  (entry->produce_q)->saved_header = (struct vmci_queue_header *)0;
  (entry->consume_q)->saved_header = (struct vmci_queue_header *)0;
  return;
}
}
int vmci_qp_broker_detach(struct vmci_handle handle , struct vmci_ctx *context )
{
  struct qp_broker_entry *entry ;
  u32 context_id ;
  u32 tmp ;
  u32 peer_id ;
  bool is_local ;
  int result ;
  bool tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool headers_mapped ;
  {
  tmp = vmci_ctx_get_id(context);
  context_id = tmp;
  is_local = 0;
  tmp___0 = vmci_handle_is_invalid___1(handle);
  if (((int )tmp___0 || (unsigned long )context == (unsigned long )((struct vmci_ctx *)0)) || context_id == 4294967295U) {
    return (-2);
  } else {
  }
  ldv_mutex_lock_228(& qp_broker_list.mutex);
  tmp___1 = vmci_ctx_qp_exists(context, handle);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    no_printk("\017Context (ID=0x%x) not attached to queue pair (handle=0x%x:0x%x)\n",
              context_id, handle.context, handle.resource);
    result = -21;
    goto out;
  } else {
  }
  entry = qp_broker_handle_to_entry(handle);
  if ((unsigned long )entry == (unsigned long )((struct qp_broker_entry *)0)) {
    no_printk("\017Context (ID=0x%x) reports being attached to queue pair(handle=0x%x:0x%x) that isn\'t present in broker\n",
              context_id, handle.context, handle.resource);
    result = -21;
    goto out;
  } else {
  }
  if (entry->create_id != context_id && entry->attach_id != context_id) {
    result = -34;
    goto out;
  } else {
  }
  if (entry->create_id == context_id) {
    peer_id = entry->attach_id;
    entry->create_id = 4294967295U;
  } else {
    peer_id = entry->create_id;
    entry->attach_id = 4294967295U;
  }
  entry->qp.ref_count = entry->qp.ref_count - 1U;
  is_local = (entry->qp.flags & 2U) != 0U;
  if (context_id != 2U) {
    qp_acquire_queue_mutex(entry->produce_q);
    headers_mapped = (bool )((unsigned long )(entry->produce_q)->q_header != (unsigned long )((struct vmci_queue_header *)0) || (unsigned long )(entry->consume_q)->q_header != (unsigned long )((struct vmci_queue_header *)0));
    if (((unsigned int )entry->state == 2U || (unsigned int )entry->state == 4U) || (unsigned int )entry->state == 6U) {
      result = qp_host_unmap_queues(0U, entry->produce_q, entry->consume_q);
      if (result < 0) {
        printk("\fFailed to unmap queue headers for queue pair (handle=0x%x:0x%x,result=%d)\n",
               handle.context, handle.resource, result);
      } else {
      }
      if ((int )entry->vmci_page_files) {
        qp_host_unregister_user_memory(entry->produce_q, entry->consume_q);
      } else {
        qp_host_unregister_user_memory(entry->produce_q, entry->consume_q);
      }
    } else {
    }
    if (! headers_mapped) {
      qp_reset_saved_headers(entry);
    } else {
    }
    qp_release_queue_mutex(entry->produce_q);
    if (! headers_mapped && (unsigned long )entry->wakeup_cb != (unsigned long )((int (*)(void * ))0)) {
      (*(entry->wakeup_cb))(entry->client_data);
    } else {
    }
  } else
  if ((unsigned long )entry->wakeup_cb != (unsigned long )((int (*)(void * ))0)) {
    entry->wakeup_cb = (int (*)(void * ))0;
    entry->client_data = (void *)0;
  } else {
  }
  if (entry->qp.ref_count == 0U) {
    qp_list_remove_entry(& qp_broker_list, & entry->qp);
    if ((int )is_local) {
      kfree((void const *)entry->local_mem);
    } else {
    }
    qp_cleanup_queue_mutex(entry->produce_q, entry->consume_q);
    qp_host_free_queue(entry->produce_q, entry->qp.produce_size);
    qp_host_free_queue(entry->consume_q, entry->qp.consume_size);
    vmci_resource_remove(& entry->resource);
    kfree((void const *)entry);
    vmci_ctx_qp_destroy(context, handle);
  } else {
    qp_notify_peer(0, handle, context_id, peer_id);
    if (context_id == 2U && (((unsigned int )entry->state == 2U || (unsigned int )entry->state == 4U) || (unsigned int )entry->state == 6U)) {
      entry->state = 6;
    } else {
      entry->state = 5;
    }
    if (! is_local) {
      vmci_ctx_qp_destroy(context, handle);
    } else {
    }
  }
  result = 0;
  out:
  ldv_mutex_unlock_229(& qp_broker_list.mutex);
  return (result);
}
}
int vmci_qp_broker_map(struct vmci_handle handle , struct vmci_ctx *context , u64 guest_mem )
{
  struct qp_broker_entry *entry ;
  u32 context_id ;
  u32 tmp ;
  bool is_local ;
  int result ;
  bool tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  struct vmci_qp_page_store page_store ;
  {
  tmp = vmci_ctx_get_id(context);
  context_id = tmp;
  is_local = 0;
  tmp___0 = vmci_handle_is_invalid___1(handle);
  if (((int )tmp___0 || (unsigned long )context == (unsigned long )((struct vmci_ctx *)0)) || context_id == 4294967295U) {
    return (-2);
  } else {
  }
  ldv_mutex_lock_230(& qp_broker_list.mutex);
  tmp___1 = vmci_ctx_qp_exists(context, handle);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    no_printk("\017Context (ID=0x%x) not attached to queue pair (handle=0x%x:0x%x)\n",
              context_id, handle.context, handle.resource);
    result = -21;
    goto out;
  } else {
  }
  entry = qp_broker_handle_to_entry(handle);
  if ((unsigned long )entry == (unsigned long )((struct qp_broker_entry *)0)) {
    no_printk("\017Context (ID=0x%x) reports being attached to queue pair (handle=0x%x:0x%x) that isn\'t present in broker\n",
              context_id, handle.context, handle.resource);
    result = -21;
    goto out;
  } else {
  }
  if (entry->create_id != context_id && entry->attach_id != context_id) {
    result = -34;
    goto out;
  } else {
  }
  is_local = (entry->qp.flags & 2U) != 0U;
  result = 0;
  if (context_id != 2U) {
    page_store.pages = guest_mem;
    page_store.len = ((unsigned int )((entry->qp.produce_size + 4095ULL) / 4096ULL) + (unsigned int )((entry->qp.consume_size + 4095ULL) / 4096ULL)) + 2U;
    qp_acquire_queue_mutex(entry->produce_q);
    qp_reset_saved_headers(entry);
    result = qp_host_register_user_memory(& page_store, entry->produce_q, entry->consume_q);
    qp_release_queue_mutex(entry->produce_q);
    if (result == 0) {
      entry->state = (enum qp_broker_state )((unsigned int )entry->state + 1U);
      if ((unsigned long )entry->wakeup_cb != (unsigned long )((int (*)(void * ))0)) {
        (*(entry->wakeup_cb))(entry->client_data);
      } else {
      }
    } else {
    }
  } else {
  }
  out:
  ldv_mutex_unlock_231(& qp_broker_list.mutex);
  return (result);
}
}
static int qp_save_headers(struct qp_broker_entry *entry )
{
  int result ;
  {
  if ((unsigned long )(entry->produce_q)->saved_header != (unsigned long )((struct vmci_queue_header *)0) && (unsigned long )(entry->consume_q)->saved_header != (unsigned long )((struct vmci_queue_header *)0)) {
    return (0);
  } else {
  }
  if ((unsigned long )(entry->produce_q)->q_header == (unsigned long )((struct vmci_queue_header *)0) || (unsigned long )(entry->consume_q)->q_header == (unsigned long )((struct vmci_queue_header *)0)) {
    result = qp_host_map_queues(entry->produce_q, entry->consume_q);
    if (result < 0) {
      return (result);
    } else {
    }
  } else {
  }
  memcpy((void *)(& entry->saved_produce_q), (void const *)(entry->produce_q)->q_header,
           24UL);
  (entry->produce_q)->saved_header = & entry->saved_produce_q;
  memcpy((void *)(& entry->saved_consume_q), (void const *)(entry->consume_q)->q_header,
           24UL);
  (entry->consume_q)->saved_header = & entry->saved_consume_q;
  return (0);
}
}
int vmci_qp_broker_unmap(struct vmci_handle handle , struct vmci_ctx *context , u32 gid )
{
  struct qp_broker_entry *entry ;
  u32 context_id ;
  u32 tmp ;
  bool is_local ;
  int result ;
  bool tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tmp = vmci_ctx_get_id(context);
  context_id = tmp;
  is_local = 0;
  tmp___0 = vmci_handle_is_invalid___1(handle);
  if (((int )tmp___0 || (unsigned long )context == (unsigned long )((struct vmci_ctx *)0)) || context_id == 4294967295U) {
    return (-2);
  } else {
  }
  ldv_mutex_lock_232(& qp_broker_list.mutex);
  tmp___1 = vmci_ctx_qp_exists(context, handle);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    no_printk("\017Context (ID=0x%x) not attached to queue pair (handle=0x%x:0x%x)\n",
              context_id, handle.context, handle.resource);
    result = -21;
    goto out;
  } else {
  }
  entry = qp_broker_handle_to_entry(handle);
  if ((unsigned long )entry == (unsigned long )((struct qp_broker_entry *)0)) {
    no_printk("\017Context (ID=0x%x) reports being attached to queue pair (handle=0x%x:0x%x) that isn\'t present in broker\n",
              context_id, handle.context, handle.resource);
    result = -21;
    goto out;
  } else {
  }
  if (entry->create_id != context_id && entry->attach_id != context_id) {
    result = -34;
    goto out;
  } else {
  }
  is_local = (entry->qp.flags & 2U) != 0U;
  if (context_id != 2U) {
    qp_acquire_queue_mutex(entry->produce_q);
    result = qp_save_headers(entry);
    if (result < 0) {
      printk("\fFailed to save queue headers for queue pair (handle=0x%x:0x%x,result=%d)\n",
             handle.context, handle.resource, result);
    } else {
    }
    qp_host_unmap_queues(gid, entry->produce_q, entry->consume_q);
    qp_host_unregister_user_memory(entry->produce_q, entry->consume_q);
    entry->state = (enum qp_broker_state )((unsigned int )entry->state - 1U);
    qp_release_queue_mutex(entry->produce_q);
  } else {
  }
  result = 0;
  out:
  ldv_mutex_unlock_233(& qp_broker_list.mutex);
  return (result);
}
}
void vmci_qp_guest_endpoints_exit(void)
{
  struct qp_entry *entry ;
  struct qp_guest_endpoint *ep ;
  {
  ldv_mutex_lock_234(& qp_guest_endpoints.mutex);
  goto ldv_37056;
  ldv_37055:
  ep = (struct qp_guest_endpoint *)entry;
  if ((entry->flags & 2U) == 0U) {
    qp_detatch_hypercall(entry->handle);
  } else {
  }
  entry->ref_count = 0U;
  qp_list_remove_entry(& qp_guest_endpoints, entry);
  qp_guest_endpoint_destroy(ep);
  ldv_37056:
  entry = qp_list_get_head(& qp_guest_endpoints);
  if ((unsigned long )entry != (unsigned long )((struct qp_entry *)0)) {
    goto ldv_37055;
  } else {
  }
  ldv_mutex_unlock_235(& qp_guest_endpoints.mutex);
  return;
}
}
static void qp_lock(struct vmci_qp const *qpair )
{
  {
  qp_acquire_queue_mutex(qpair->produce_q);
  return;
}
}
static void qp_unlock(struct vmci_qp const *qpair )
{
  {
  qp_release_queue_mutex(qpair->produce_q);
  return;
}
}
static int qp_map_queue_headers(struct vmci_queue *produce_q , struct vmci_queue *consume_q )
{
  int result ;
  {
  if ((unsigned long )produce_q->q_header == (unsigned long )((struct vmci_queue_header *)0) || (unsigned long )consume_q->q_header == (unsigned long )((struct vmci_queue_header *)0)) {
    result = qp_host_map_queues(produce_q, consume_q);
    if (result < 0) {
      return ((unsigned long )produce_q->saved_header != (unsigned long )((struct vmci_queue_header *)0) && (unsigned long )consume_q->saved_header != (unsigned long )((struct vmci_queue_header *)0) ? -40 : -34);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int qp_get_queue_headers(struct vmci_qp const *qpair , struct vmci_queue_header **produce_q_header ,
                                struct vmci_queue_header **consume_q_header )
{
  int result ;
  {
  result = qp_map_queue_headers(qpair->produce_q, qpair->consume_q);
  if (result == 0) {
    *produce_q_header = (qpair->produce_q)->q_header;
    *consume_q_header = (qpair->consume_q)->q_header;
  } else
  if ((unsigned long )(qpair->produce_q)->saved_header != (unsigned long )((struct vmci_queue_header *)0) && (unsigned long )(qpair->consume_q)->saved_header != (unsigned long )((struct vmci_queue_header *)0)) {
    *produce_q_header = (qpair->produce_q)->saved_header;
    *consume_q_header = (qpair->consume_q)->saved_header;
    result = 0;
  } else {
  }
  return (result);
}
}
static int qp_wakeup_cb(void *client_data )
{
  struct vmci_qp *qpair ;
  {
  qpair = (struct vmci_qp *)client_data;
  qp_lock((struct vmci_qp const *)qpair);
  goto ldv_37080;
  ldv_37079:
  qpair->blocked = qpair->blocked - 1U;
  qpair->generation = qpair->generation + 1U;
  __wake_up(& qpair->event, 3U, 1, (void *)0);
  ldv_37080: ;
  if (qpair->blocked != 0U) {
    goto ldv_37079;
  } else {
  }
  qp_unlock((struct vmci_qp const *)qpair);
  return (0);
}
}
static bool qp_wait_for_ready_queue(struct vmci_qp *qpair )
{
  unsigned int generation ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp ;
  {
  qpair->blocked = qpair->blocked + 1U;
  generation = qpair->generation;
  qp_unlock((struct vmci_qp const *)qpair);
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_queue_pair.c",
                2611, 0);
  if (qpair->generation != generation) {
    goto ldv_37086;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_37092:
  tmp = prepare_to_wait_event(& qpair->event, & __wait, 2);
  __int = tmp;
  if (qpair->generation != generation) {
    goto ldv_37091;
  } else {
  }
  schedule();
  goto ldv_37092;
  ldv_37091:
  finish_wait(& qpair->event, & __wait);
  ldv_37086:
  qp_lock((struct vmci_qp const *)qpair);
  return (1);
}
}
static ssize_t qp_enqueue_locked(struct vmci_queue *produce_q , struct vmci_queue *consume_q ,
                                 u64 const produce_q_size , void const *buf ,
                                 size_t buf_size , vmci_memcpy_to_queue_func *memcpy_to_queue )
{
  s64 free_space ;
  u64 tail ;
  size_t written ;
  ssize_t result ;
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  size_t tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  {
  tmp = qp_map_queue_headers(produce_q, consume_q);
  result = (ssize_t )tmp;
  tmp___0 = ldv__builtin_expect(result != 0L, 0L);
  if (tmp___0 != 0L) {
    return (result);
  } else {
  }
  free_space = vmci_q_header_free_space((struct vmci_queue_header const *)produce_q->q_header,
                                        (struct vmci_queue_header const *)consume_q->q_header,
                                        produce_q_size);
  if (free_space == 0LL) {
    return (-35L);
  } else {
  }
  if (free_space < 0LL) {
    return ((ssize_t )free_space);
  } else {
  }
  written = (unsigned long )((unsigned long long )buf_size < (unsigned long long )free_space ? (unsigned long long )buf_size : (unsigned long long )free_space);
  tail = vmci_q_header_producer_tail((struct vmci_queue_header const *)produce_q->q_header);
  tmp___5 = ldv__builtin_expect(tail + (unsigned long long )written < (unsigned long long )produce_q_size,
                             1L);
  if (tmp___5 != 0L) {
    tmp___1 = (*memcpy_to_queue)(produce_q, tail, buf, 0UL, written);
    result = (ssize_t )tmp___1;
  } else {
    tmp___2 = (unsigned long )((unsigned long long )produce_q_size - tail);
    tmp___3 = (*memcpy_to_queue)(produce_q, tail, buf, 0UL, tmp___2);
    result = (ssize_t )tmp___3;
    if (result >= 0L) {
      tmp___4 = (*memcpy_to_queue)(produce_q, 0ULL, buf, tmp___2, written - tmp___2);
      result = (ssize_t )tmp___4;
    } else {
    }
  }
  if (result < 0L) {
    return (result);
  } else {
  }
  vmci_q_header_add_producer_tail(produce_q->q_header, written, produce_q_size);
  return ((ssize_t )written);
}
}
static ssize_t qp_dequeue_locked(struct vmci_queue *produce_q , struct vmci_queue *consume_q ,
                                 u64 const consume_q_size , void *buf , size_t buf_size ,
                                 vmci_memcpy_from_queue_func *memcpy_from_queue ,
                                 bool update_consumer )
{
  s64 buf_ready ;
  u64 head ;
  size_t read ;
  ssize_t result ;
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  size_t tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  {
  tmp = qp_map_queue_headers(produce_q, consume_q);
  result = (ssize_t )tmp;
  tmp___0 = ldv__builtin_expect(result != 0L, 0L);
  if (tmp___0 != 0L) {
    return (result);
  } else {
  }
  buf_ready = vmci_q_header_buf_ready((struct vmci_queue_header const *)consume_q->q_header,
                                      (struct vmci_queue_header const *)produce_q->q_header,
                                      consume_q_size);
  if (buf_ready == 0LL) {
    return (-36L);
  } else {
  }
  if (buf_ready < 0LL) {
    return ((ssize_t )buf_ready);
  } else {
  }
  read = (unsigned long )((unsigned long long )buf_size < (unsigned long long )buf_ready ? (unsigned long long )buf_size : (unsigned long long )buf_ready);
  head = vmci_q_header_consumer_head((struct vmci_queue_header const *)produce_q->q_header);
  tmp___5 = ldv__builtin_expect(head + (unsigned long long )read < (unsigned long long )consume_q_size,
                             1L);
  if (tmp___5 != 0L) {
    tmp___1 = (*memcpy_from_queue)(buf, 0UL, (struct vmci_queue const *)consume_q,
                                   head, read);
    result = (ssize_t )tmp___1;
  } else {
    tmp___2 = (unsigned long )((unsigned long long )consume_q_size - head);
    tmp___3 = (*memcpy_from_queue)(buf, 0UL, (struct vmci_queue const *)consume_q,
                                   head, tmp___2);
    result = (ssize_t )tmp___3;
    if (result >= 0L) {
      tmp___4 = (*memcpy_from_queue)(buf, tmp___2, (struct vmci_queue const *)consume_q,
                                     0ULL, read - tmp___2);
      result = (ssize_t )tmp___4;
    } else {
    }
  }
  if (result < 0L) {
    return (result);
  } else {
  }
  if ((int )update_consumer) {
    vmci_q_header_add_consumer_head(produce_q->q_header, read, consume_q_size);
  } else {
  }
  return ((ssize_t )read);
}
}
int vmci_qpair_alloc(struct vmci_qp **qpair , struct vmci_handle *handle , u64 produce_qsize ,
                     u64 consume_qsize , u32 peer , u32 flags , u32 priv_flags )
{
  struct vmci_qp *my_qpair ;
  int retval ;
  struct vmci_handle src ;
  struct vmci_handle dst ;
  enum vmci_route route ;
  int (*wakeup_cb)(void * ) ;
  void *client_data ;
  u64 _max1 ;
  u64 _max2 ;
  bool tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  {
  src = VMCI_INVALID_HANDLE___2;
  dst.context = peer;
  dst.resource = 4294967295U;
  _max1 = produce_qsize;
  _max2 = consume_qsize;
  if (produce_qsize + consume_qsize < (_max1 > _max2 ? _max1 : _max2) || produce_qsize + consume_qsize > 134217728ULL) {
    return (-19);
  } else {
  }
  retval = vmci_route(& src, (struct vmci_handle const *)(& dst), 0, & route);
  if (retval < 0) {
    tmp = vmci_guest_code_active();
    route = (int )tmp ? 2 : 1;
  } else {
  }
  if ((flags & 12U) != 0U) {
    no_printk("\017NONBLOCK OR PINNED set");
    return (-2);
  } else {
  }
  tmp___0 = kzalloc(152UL, 208U);
  my_qpair = (struct vmci_qp *)tmp___0;
  if ((unsigned long )my_qpair == (unsigned long )((struct vmci_qp *)0)) {
    return (-3);
  } else {
  }
  my_qpair->produce_q_size = produce_qsize;
  my_qpair->consume_q_size = consume_qsize;
  my_qpair->peer = peer;
  my_qpair->flags = flags;
  my_qpair->priv_flags = priv_flags;
  wakeup_cb = (int (*)(void * ))0;
  client_data = (void *)0;
  if ((unsigned int )route == 1U) {
    my_qpair->guest_endpoint = 0;
    if ((flags & 2U) == 0U) {
      my_qpair->blocked = 0U;
      my_qpair->generation = 0U;
      __init_waitqueue_head(& my_qpair->event, "&my_qpair->event", & __key);
      wakeup_cb = & qp_wakeup_cb;
      client_data = (void *)my_qpair;
    } else {
    }
  } else {
    my_qpair->guest_endpoint = 1;
  }
  retval = vmci_qp_alloc(handle, & my_qpair->produce_q, my_qpair->produce_q_size,
                         & my_qpair->consume_q, my_qpair->consume_q_size, my_qpair->peer,
                         my_qpair->flags, my_qpair->priv_flags, (int )my_qpair->guest_endpoint,
                         wakeup_cb, client_data);
  if (retval < 0) {
    kfree((void const *)my_qpair);
    return (retval);
  } else {
  }
  *qpair = my_qpair;
  my_qpair->handle = *handle;
  return (retval);
}
}
static char const __kstrtab_vmci_qpair_alloc[17U] =
  { 'v', 'm', 'c', 'i',
        '_', 'q', 'p', 'a',
        'i', 'r', '_', 'a',
        'l', 'l', 'o', 'c',
        '\000'};
struct kernel_symbol const __ksymtab_vmci_qpair_alloc ;
struct kernel_symbol const __ksymtab_vmci_qpair_alloc = {(unsigned long )(& vmci_qpair_alloc), (char const *)(& __kstrtab_vmci_qpair_alloc)};
int vmci_qpair_detach(struct vmci_qp **qpair )
{
  int result ;
  struct vmci_qp *old_qpair ;
  {
  if ((unsigned long )qpair == (unsigned long )((struct vmci_qp **)0) || (unsigned long )*qpair == (unsigned long )((struct vmci_qp *)0)) {
    return (-2);
  } else {
  }
  old_qpair = *qpair;
  result = qp_detatch(old_qpair->handle, (int )old_qpair->guest_endpoint);
  memset((void *)old_qpair, 0, 152UL);
  old_qpair->handle = VMCI_INVALID_HANDLE___2;
  old_qpair->peer = 4294967295U;
  kfree((void const *)old_qpair);
  *qpair = (struct vmci_qp *)0;
  return (result);
}
}
static char const __kstrtab_vmci_qpair_detach[18U] =
  { 'v', 'm', 'c', 'i',
        '_', 'q', 'p', 'a',
        'i', 'r', '_', 'd',
        'e', 't', 'a', 'c',
        'h', '\000'};
struct kernel_symbol const __ksymtab_vmci_qpair_detach ;
struct kernel_symbol const __ksymtab_vmci_qpair_detach = {(unsigned long )(& vmci_qpair_detach), (char const *)(& __kstrtab_vmci_qpair_detach)};
int vmci_qpair_get_produce_indexes(struct vmci_qp const *qpair , u64 *producer_tail ,
                                   u64 *consumer_head )
{
  struct vmci_queue_header *produce_q_header ;
  struct vmci_queue_header *consume_q_header ;
  int result ;
  {
  if ((unsigned long )qpair == (unsigned long )((struct vmci_qp const *)0)) {
    return (-2);
  } else {
  }
  qp_lock(qpair);
  result = qp_get_queue_headers(qpair, & produce_q_header, & consume_q_header);
  if (result == 0) {
    vmci_q_header_get_pointers((struct vmci_queue_header const *)produce_q_header,
                               (struct vmci_queue_header const *)consume_q_header,
                               producer_tail, consumer_head);
  } else {
  }
  qp_unlock(qpair);
  if (result == 0 && (((unsigned long )producer_tail != (unsigned long )((u64 *)0ULL) && *producer_tail >= (unsigned long long )qpair->produce_q_size) || ((unsigned long )consumer_head != (unsigned long )((u64 *)0ULL) && *consumer_head >= (unsigned long long )qpair->produce_q_size))) {
    return (-24);
  } else {
  }
  return (result);
}
}
static char const __kstrtab_vmci_qpair_get_produce_indexes[31U] =
  { 'v', 'm', 'c', 'i',
        '_', 'q', 'p', 'a',
        'i', 'r', '_', 'g',
        'e', 't', '_', 'p',
        'r', 'o', 'd', 'u',
        'c', 'e', '_', 'i',
        'n', 'd', 'e', 'x',
        'e', 's', '\000'};
struct kernel_symbol const __ksymtab_vmci_qpair_get_produce_indexes ;
struct kernel_symbol const __ksymtab_vmci_qpair_get_produce_indexes = {(unsigned long )(& vmci_qpair_get_produce_indexes), (char const *)(& __kstrtab_vmci_qpair_get_produce_indexes)};
int vmci_qpair_get_consume_indexes(struct vmci_qp const *qpair , u64 *consumer_tail ,
                                   u64 *producer_head )
{
  struct vmci_queue_header *produce_q_header ;
  struct vmci_queue_header *consume_q_header ;
  int result ;
  {
  if ((unsigned long )qpair == (unsigned long )((struct vmci_qp const *)0)) {
    return (-2);
  } else {
  }
  qp_lock(qpair);
  result = qp_get_queue_headers(qpair, & produce_q_header, & consume_q_header);
  if (result == 0) {
    vmci_q_header_get_pointers((struct vmci_queue_header const *)consume_q_header,
                               (struct vmci_queue_header const *)produce_q_header,
                               consumer_tail, producer_head);
  } else {
  }
  qp_unlock(qpair);
  if (result == 0 && (((unsigned long )consumer_tail != (unsigned long )((u64 *)0ULL) && *consumer_tail >= (unsigned long long )qpair->consume_q_size) || ((unsigned long )producer_head != (unsigned long )((u64 *)0ULL) && *producer_head >= (unsigned long long )qpair->consume_q_size))) {
    return (-24);
  } else {
  }
  return (result);
}
}
static char const __kstrtab_vmci_qpair_get_consume_indexes[31U] =
  { 'v', 'm', 'c', 'i',
        '_', 'q', 'p', 'a',
        'i', 'r', '_', 'g',
        'e', 't', '_', 'c',
        'o', 'n', 's', 'u',
        'm', 'e', '_', 'i',
        'n', 'd', 'e', 'x',
        'e', 's', '\000'};
struct kernel_symbol const __ksymtab_vmci_qpair_get_consume_indexes ;
struct kernel_symbol const __ksymtab_vmci_qpair_get_consume_indexes = {(unsigned long )(& vmci_qpair_get_consume_indexes), (char const *)(& __kstrtab_vmci_qpair_get_consume_indexes)};
s64 vmci_qpair_produce_free_space(struct vmci_qp const *qpair )
{
  struct vmci_queue_header *produce_q_header ;
  struct vmci_queue_header *consume_q_header ;
  s64 result ;
  int tmp ;
  {
  if ((unsigned long )qpair == (unsigned long )((struct vmci_qp const *)0)) {
    return (-2LL);
  } else {
  }
  qp_lock(qpair);
  tmp = qp_get_queue_headers(qpair, & produce_q_header, & consume_q_header);
  result = (s64 )tmp;
  if (result == 0LL) {
    result = vmci_q_header_free_space((struct vmci_queue_header const *)produce_q_header,
                                      (struct vmci_queue_header const *)consume_q_header,
                                      qpair->produce_q_size);
  } else {
    result = 0LL;
  }
  qp_unlock(qpair);
  return (result);
}
}
static char const __kstrtab_vmci_qpair_produce_free_space[30U] =
  { 'v', 'm', 'c', 'i',
        '_', 'q', 'p', 'a',
        'i', 'r', '_', 'p',
        'r', 'o', 'd', 'u',
        'c', 'e', '_', 'f',
        'r', 'e', 'e', '_',
        's', 'p', 'a', 'c',
        'e', '\000'};
struct kernel_symbol const __ksymtab_vmci_qpair_produce_free_space ;
struct kernel_symbol const __ksymtab_vmci_qpair_produce_free_space = {(unsigned long )(& vmci_qpair_produce_free_space), (char const *)(& __kstrtab_vmci_qpair_produce_free_space)};
s64 vmci_qpair_consume_free_space(struct vmci_qp const *qpair )
{
  struct vmci_queue_header *produce_q_header ;
  struct vmci_queue_header *consume_q_header ;
  s64 result ;
  int tmp ;
  {
  if ((unsigned long )qpair == (unsigned long )((struct vmci_qp const *)0)) {
    return (-2LL);
  } else {
  }
  qp_lock(qpair);
  tmp = qp_get_queue_headers(qpair, & produce_q_header, & consume_q_header);
  result = (s64 )tmp;
  if (result == 0LL) {
    result = vmci_q_header_free_space((struct vmci_queue_header const *)consume_q_header,
                                      (struct vmci_queue_header const *)produce_q_header,
                                      qpair->consume_q_size);
  } else {
    result = 0LL;
  }
  qp_unlock(qpair);
  return (result);
}
}
static char const __kstrtab_vmci_qpair_consume_free_space[30U] =
  { 'v', 'm', 'c', 'i',
        '_', 'q', 'p', 'a',
        'i', 'r', '_', 'c',
        'o', 'n', 's', 'u',
        'm', 'e', '_', 'f',
        'r', 'e', 'e', '_',
        's', 'p', 'a', 'c',
        'e', '\000'};
struct kernel_symbol const __ksymtab_vmci_qpair_consume_free_space ;
struct kernel_symbol const __ksymtab_vmci_qpair_consume_free_space = {(unsigned long )(& vmci_qpair_consume_free_space), (char const *)(& __kstrtab_vmci_qpair_consume_free_space)};
s64 vmci_qpair_produce_buf_ready(struct vmci_qp const *qpair )
{
  struct vmci_queue_header *produce_q_header ;
  struct vmci_queue_header *consume_q_header ;
  s64 result ;
  int tmp ;
  {
  if ((unsigned long )qpair == (unsigned long )((struct vmci_qp const *)0)) {
    return (-2LL);
  } else {
  }
  qp_lock(qpair);
  tmp = qp_get_queue_headers(qpair, & produce_q_header, & consume_q_header);
  result = (s64 )tmp;
  if (result == 0LL) {
    result = vmci_q_header_buf_ready((struct vmci_queue_header const *)produce_q_header,
                                     (struct vmci_queue_header const *)consume_q_header,
                                     qpair->produce_q_size);
  } else {
    result = 0LL;
  }
  qp_unlock(qpair);
  return (result);
}
}
static char const __kstrtab_vmci_qpair_produce_buf_ready[29U] =
  { 'v', 'm', 'c', 'i',
        '_', 'q', 'p', 'a',
        'i', 'r', '_', 'p',
        'r', 'o', 'd', 'u',
        'c', 'e', '_', 'b',
        'u', 'f', '_', 'r',
        'e', 'a', 'd', 'y',
        '\000'};
struct kernel_symbol const __ksymtab_vmci_qpair_produce_buf_ready ;
struct kernel_symbol const __ksymtab_vmci_qpair_produce_buf_ready = {(unsigned long )(& vmci_qpair_produce_buf_ready), (char const *)(& __kstrtab_vmci_qpair_produce_buf_ready)};
s64 vmci_qpair_consume_buf_ready(struct vmci_qp const *qpair )
{
  struct vmci_queue_header *produce_q_header ;
  struct vmci_queue_header *consume_q_header ;
  s64 result ;
  int tmp ;
  {
  if ((unsigned long )qpair == (unsigned long )((struct vmci_qp const *)0)) {
    return (-2LL);
  } else {
  }
  qp_lock(qpair);
  tmp = qp_get_queue_headers(qpair, & produce_q_header, & consume_q_header);
  result = (s64 )tmp;
  if (result == 0LL) {
    result = vmci_q_header_buf_ready((struct vmci_queue_header const *)consume_q_header,
                                     (struct vmci_queue_header const *)produce_q_header,
                                     qpair->consume_q_size);
  } else {
    result = 0LL;
  }
  qp_unlock(qpair);
  return (result);
}
}
static char const __kstrtab_vmci_qpair_consume_buf_ready[29U] =
  { 'v', 'm', 'c', 'i',
        '_', 'q', 'p', 'a',
        'i', 'r', '_', 'c',
        'o', 'n', 's', 'u',
        'm', 'e', '_', 'b',
        'u', 'f', '_', 'r',
        'e', 'a', 'd', 'y',
        '\000'};
struct kernel_symbol const __ksymtab_vmci_qpair_consume_buf_ready ;
struct kernel_symbol const __ksymtab_vmci_qpair_consume_buf_ready = {(unsigned long )(& vmci_qpair_consume_buf_ready), (char const *)(& __kstrtab_vmci_qpair_consume_buf_ready)};
ssize_t vmci_qpair_enqueue(struct vmci_qp *qpair , void const *buf , size_t buf_size ,
                           int buf_type )
{
  ssize_t result ;
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )qpair == (unsigned long )((struct vmci_qp *)0) || (unsigned long )buf == (unsigned long )((void const *)0)) {
    return (-2L);
  } else {
  }
  qp_lock((struct vmci_qp const *)qpair);
  ldv_37260:
  result = qp_enqueue_locked(qpair->produce_q, qpair->consume_q, qpair->produce_q_size,
                             buf, buf_size, & qp_memcpy_to_queue);
  if (result == -40L) {
    tmp = qp_wait_for_ready_queue(qpair);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      result = -41L;
    } else {
    }
  } else {
  }
  if (result == -40L) {
    goto ldv_37260;
  } else {
  }
  qp_unlock((struct vmci_qp const *)qpair);
  return (result);
}
}
static char const __kstrtab_vmci_qpair_enqueue[19U] =
  { 'v', 'm', 'c', 'i',
        '_', 'q', 'p', 'a',
        'i', 'r', '_', 'e',
        'n', 'q', 'u', 'e',
        'u', 'e', '\000'};
struct kernel_symbol const __ksymtab_vmci_qpair_enqueue ;
struct kernel_symbol const __ksymtab_vmci_qpair_enqueue = {(unsigned long )(& vmci_qpair_enqueue), (char const *)(& __kstrtab_vmci_qpair_enqueue)};
ssize_t vmci_qpair_dequeue(struct vmci_qp *qpair , void *buf , size_t buf_size , int buf_type )
{
  ssize_t result ;
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )qpair == (unsigned long )((struct vmci_qp *)0) || (unsigned long )buf == (unsigned long )((void *)0)) {
    return (-2L);
  } else {
  }
  qp_lock((struct vmci_qp const *)qpair);
  ldv_37279:
  result = qp_dequeue_locked(qpair->produce_q, qpair->consume_q, qpair->consume_q_size,
                             buf, buf_size, & qp_memcpy_from_queue, 1);
  if (result == -40L) {
    tmp = qp_wait_for_ready_queue(qpair);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      result = -41L;
    } else {
    }
  } else {
  }
  if (result == -40L) {
    goto ldv_37279;
  } else {
  }
  qp_unlock((struct vmci_qp const *)qpair);
  return (result);
}
}
static char const __kstrtab_vmci_qpair_dequeue[19U] =
  { 'v', 'm', 'c', 'i',
        '_', 'q', 'p', 'a',
        'i', 'r', '_', 'd',
        'e', 'q', 'u', 'e',
        'u', 'e', '\000'};
struct kernel_symbol const __ksymtab_vmci_qpair_dequeue ;
struct kernel_symbol const __ksymtab_vmci_qpair_dequeue = {(unsigned long )(& vmci_qpair_dequeue), (char const *)(& __kstrtab_vmci_qpair_dequeue)};
ssize_t vmci_qpair_peek(struct vmci_qp *qpair , void *buf , size_t buf_size , int buf_type )
{
  ssize_t result ;
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )qpair == (unsigned long )((struct vmci_qp *)0) || (unsigned long )buf == (unsigned long )((void *)0)) {
    return (-2L);
  } else {
  }
  qp_lock((struct vmci_qp const *)qpair);
  ldv_37298:
  result = qp_dequeue_locked(qpair->produce_q, qpair->consume_q, qpair->consume_q_size,
                             buf, buf_size, & qp_memcpy_from_queue, 0);
  if (result == -40L) {
    tmp = qp_wait_for_ready_queue(qpair);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      result = -41L;
    } else {
    }
  } else {
  }
  if (result == -40L) {
    goto ldv_37298;
  } else {
  }
  qp_unlock((struct vmci_qp const *)qpair);
  return (result);
}
}
static char const __kstrtab_vmci_qpair_peek[16U] =
  { 'v', 'm', 'c', 'i',
        '_', 'q', 'p', 'a',
        'i', 'r', '_', 'p',
        'e', 'e', 'k', '\000'};
struct kernel_symbol const __ksymtab_vmci_qpair_peek ;
struct kernel_symbol const __ksymtab_vmci_qpair_peek = {(unsigned long )(& vmci_qpair_peek), (char const *)(& __kstrtab_vmci_qpair_peek)};
ssize_t vmci_qpair_enquev(struct vmci_qp *qpair , struct msghdr *msg , size_t iov_size ,
                          int buf_type )
{
  ssize_t result ;
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )qpair == (unsigned long )((struct vmci_qp *)0)) {
    return (-2L);
  } else {
  }
  qp_lock((struct vmci_qp const *)qpair);
  ldv_37317:
  result = qp_enqueue_locked(qpair->produce_q, qpair->consume_q, qpair->produce_q_size,
                             (void const *)msg, iov_size, & qp_memcpy_to_queue_iov);
  if (result == -40L) {
    tmp = qp_wait_for_ready_queue(qpair);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      result = -41L;
    } else {
    }
  } else {
  }
  if (result == -40L) {
    goto ldv_37317;
  } else {
  }
  qp_unlock((struct vmci_qp const *)qpair);
  return (result);
}
}
static char const __kstrtab_vmci_qpair_enquev[18U] =
  { 'v', 'm', 'c', 'i',
        '_', 'q', 'p', 'a',
        'i', 'r', '_', 'e',
        'n', 'q', 'u', 'e',
        'v', '\000'};
struct kernel_symbol const __ksymtab_vmci_qpair_enquev ;
struct kernel_symbol const __ksymtab_vmci_qpair_enquev = {(unsigned long )(& vmci_qpair_enquev), (char const *)(& __kstrtab_vmci_qpair_enquev)};
ssize_t vmci_qpair_dequev(struct vmci_qp *qpair , struct msghdr *msg , size_t iov_size ,
                          int buf_type )
{
  ssize_t result ;
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )qpair == (unsigned long )((struct vmci_qp *)0)) {
    return (-2L);
  } else {
  }
  qp_lock((struct vmci_qp const *)qpair);
  ldv_37336:
  result = qp_dequeue_locked(qpair->produce_q, qpair->consume_q, qpair->consume_q_size,
                             (void *)msg, iov_size, & qp_memcpy_from_queue_iov, 1);
  if (result == -40L) {
    tmp = qp_wait_for_ready_queue(qpair);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      result = -41L;
    } else {
    }
  } else {
  }
  if (result == -40L) {
    goto ldv_37336;
  } else {
  }
  qp_unlock((struct vmci_qp const *)qpair);
  return (result);
}
}
static char const __kstrtab_vmci_qpair_dequev[18U] =
  { 'v', 'm', 'c', 'i',
        '_', 'q', 'p', 'a',
        'i', 'r', '_', 'd',
        'e', 'q', 'u', 'e',
        'v', '\000'};
struct kernel_symbol const __ksymtab_vmci_qpair_dequev ;
struct kernel_symbol const __ksymtab_vmci_qpair_dequev = {(unsigned long )(& vmci_qpair_dequev), (char const *)(& __kstrtab_vmci_qpair_dequev)};
ssize_t vmci_qpair_peekv(struct vmci_qp *qpair , struct msghdr *msg , size_t iov_size ,
                         int buf_type )
{
  ssize_t result ;
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )qpair == (unsigned long )((struct vmci_qp *)0)) {
    return (-2L);
  } else {
  }
  qp_lock((struct vmci_qp const *)qpair);
  ldv_37355:
  result = qp_dequeue_locked(qpair->produce_q, qpair->consume_q, qpair->consume_q_size,
                             (void *)msg, iov_size, & qp_memcpy_from_queue_iov, 0);
  if (result == -40L) {
    tmp = qp_wait_for_ready_queue(qpair);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      result = -41L;
    } else {
    }
  } else {
  }
  if (result == -40L) {
    goto ldv_37355;
  } else {
  }
  qp_unlock((struct vmci_qp const *)qpair);
  return (result);
}
}
static char const __kstrtab_vmci_qpair_peekv[17U] =
  { 'v', 'm', 'c', 'i',
        '_', 'q', 'p', 'a',
        'i', 'r', '_', 'p',
        'e', 'e', 'k', 'v',
        '\000'};
struct kernel_symbol const __ksymtab_vmci_qpair_peekv ;
struct kernel_symbol const __ksymtab_vmci_qpair_peekv = {(unsigned long )(& vmci_qpair_peekv), (char const *)(& __kstrtab_vmci_qpair_peekv)};
bool ldv_queue_work_on_199(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_200(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_201(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_202(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_203(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_204(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_205(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_206(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_207(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_208(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_209(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
void ldv_mutex_unlock_210(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_211(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_vmci_queue_kern_if(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_212(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_vmci_queue_kern_if(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_213(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_qp_list(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_214(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_qp_list(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_215(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_qp_list(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_216(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_qp_list(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_217(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_qp_list(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_218(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_qp_list(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_219(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_qp_list(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_220(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_qp_list(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_221(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_qp_list(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_222(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_qp_list(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_223(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_qp_list(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_224(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_qp_list(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_225(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_qp_list(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_226(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_qp_list(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_227(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_qp_list(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_228(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_qp_list(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_229(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_qp_list(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_230(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_qp_list(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_231(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_qp_list(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_232(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_qp_list(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_233(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_qp_list(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_234(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_qp_list(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_235(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_qp_list(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
void ldv_mutex_unlock_283(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_282(struct mutex *ldv_func_arg1 ) ;
__inline static void __preempt_count_add___1(int val )
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
  goto ldv_6615;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6615;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6615;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_6615;
  default:
  __bad_percpu_size();
  }
  ldv_6615: ;
  return;
}
}
__inline static void __preempt_count_sub___1(int val )
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
  goto ldv_6627;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6627;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6627;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6627;
  default:
  __bad_percpu_size();
  }
  ldv_6627: ;
  return;
}
}
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
extern void complete(struct completion * ) ;
__inline static void __rcu_read_lock___1(void)
{
  {
  __preempt_count_add___1(1);
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void __rcu_read_unlock___1(void)
{
  {
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub___1(1);
  return;
}
}
__inline static void rcu_read_lock___1(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  __rcu_read_lock___1();
  rcu_lock_acquire(& rcu_lock_map);
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_watching();
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 849, "rcu_read_lock() used illegally while idle");
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void rcu_read_unlock___1(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_watching();
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 900, "rcu_read_unlock() used illegally while idle");
    } else {
    }
  } else {
  }
  __rcu_read_unlock___1();
  rcu_lock_release(& rcu_lock_map);
  return;
}
}
bool ldv_queue_work_on_277(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_279(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_278(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_281(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_280(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static void hlist_del_init_rcu(struct hlist_node *n )
{
  int tmp ;
  {
  tmp = hlist_unhashed((struct hlist_node const *)n);
  if (tmp == 0) {
    __hlist_del(n);
    n->pprev = (struct hlist_node **)0;
  } else {
  }
  return;
}
}
extern void __compiletime_assert_402(void) ;
__inline static void hlist_add_head_rcu(struct hlist_node *n , struct hlist_head *h )
{
  struct hlist_node *first ;
  bool __cond ;
  struct hlist_node *__var ;
  {
  first = h->first;
  n->next = first;
  n->pprev = & h->first;
  __cond = 0;
  if ((int )__cond) {
    __compiletime_assert_402();
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __var = (struct hlist_node *)0;
  *((struct hlist_node * volatile *)(& h->first)) = n;
  if ((unsigned long )first != (unsigned long )((struct hlist_node *)0)) {
    first->pprev = & n->next;
  } else {
  }
  return;
}
}
static struct vmci_hash_table vmci_resource_table = {{{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "vmci_resource_table.lock",
                                                     0, 0UL}}}}, {{0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0},
                                                                  {0}, {0}, {0}, {0}}};
static unsigned int vmci_resource_hash(struct vmci_handle handle )
{
  u32 tmp ;
  {
  tmp = hash_32(handle.resource, 7U);
  return (tmp);
}
}
static struct vmci_resource *vmci_resource_lookup(struct vmci_handle handle , enum vmci_resource_type type )
{
  struct vmci_resource *r ;
  struct vmci_resource *resource ;
  unsigned int idx ;
  unsigned int tmp ;
  struct hlist_node *____ptr ;
  struct hlist_node *________p1 ;
  struct hlist_node *_________p1 ;
  union __anonunion___u_207 __u ;
  int tmp___0 ;
  struct hlist_node const *__mptr ;
  struct vmci_resource *tmp___1 ;
  u32 cid ;
  u32 rid ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node *________p1___0 ;
  struct hlist_node *_________p1___0 ;
  union __anonunion___u_209 __u___0 ;
  int tmp___2 ;
  struct hlist_node const *__mptr___0 ;
  struct vmci_resource *tmp___3 ;
  {
  resource = (struct vmci_resource *)0;
  tmp = vmci_resource_hash(handle);
  idx = tmp;
  rcu_read_lock___1();
  __read_once_size((void const volatile *)(& ((struct hlist_head *)(& vmci_resource_table.entries) + (unsigned long )idx)->first),
                   (void *)(& __u.__c), 8);
  _________p1 = __u.__val;
  ________p1 = _________p1;
  tmp___0 = debug_lockdep_rcu_enabled();
  ____ptr = ________p1;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp___1 = (struct vmci_resource *)__mptr + 0xfffffffffffffff0UL;
  } else {
    tmp___1 = (struct vmci_resource *)0;
  }
  r = tmp___1;
  goto ldv_19262;
  ldv_19261:
  cid = r->handle.context;
  rid = r->handle.resource;
  if (((unsigned int )r->type == (unsigned int )type && handle.resource == rid) && (handle.context == cid || cid == 4294967295U)) {
    resource = r;
    goto ldv_19260;
  } else {
  }
  __read_once_size((void const volatile *)(& r->node.next), (void *)(& __u___0.__c),
                   8);
  _________p1___0 = __u___0.__val;
  ________p1___0 = _________p1___0;
  tmp___2 = debug_lockdep_rcu_enabled();
  ____ptr___0 = ________p1___0;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___3 = (struct vmci_resource *)__mptr___0 + 0xfffffffffffffff0UL;
  } else {
    tmp___3 = (struct vmci_resource *)0;
  }
  r = tmp___3;
  ldv_19262: ;
  if ((unsigned long )r != (unsigned long )((struct vmci_resource *)0)) {
    goto ldv_19261;
  } else {
  }
  ldv_19260:
  rcu_read_unlock___1();
  return (resource);
}
}
static u32 vmci_resource_find_id(u32 context_id , enum vmci_resource_type resource_type___0 )
{
  u32 resource_id ;
  u32 old_rid ;
  u32 current_rid ;
  struct vmci_handle handle ;
  long tmp ;
  struct vmci_handle __constr_expr_0 ;
  struct vmci_resource *tmp___0 ;
  {
  resource_id = 1024U;
  old_rid = resource_id;
  ldv_19272:
  current_rid = resource_id;
  resource_id = resource_id + 1U;
  tmp = ldv__builtin_expect(resource_id == 4294967295U, 0L);
  if (tmp != 0L) {
    resource_id = 1024U;
  } else {
  }
  __constr_expr_0.context = context_id;
  __constr_expr_0.resource = current_rid;
  handle = __constr_expr_0;
  tmp___0 = vmci_resource_lookup(handle, resource_type___0);
  if ((unsigned long )tmp___0 == (unsigned long )((struct vmci_resource *)0)) {
    return (current_rid);
  } else {
  }
  if (resource_id != old_rid) {
    goto ldv_19272;
  } else {
  }
  return (4294967295U);
}
}
int vmci_resource_add(struct vmci_resource *resource , enum vmci_resource_type resource_type___0 ,
                      struct vmci_handle handle )
{
  unsigned int idx ;
  int result ;
  struct vmci_resource *tmp ;
  {
  spin_lock(& vmci_resource_table.lock);
  if (handle.resource == 4294967295U) {
    handle.resource = vmci_resource_find_id(handle.context, resource_type___0);
    if (handle.resource == 4294967295U) {
      result = -8;
      goto out;
    } else {
    }
  } else {
    tmp = vmci_resource_lookup(handle, resource_type___0);
    if ((unsigned long )tmp != (unsigned long )((struct vmci_resource *)0)) {
      result = -22;
      goto out;
    } else {
    }
  }
  resource->handle = handle;
  resource->type = resource_type___0;
  INIT_HLIST_NODE(& resource->node);
  kref_init(& resource->kref);
  init_completion(& resource->done);
  idx = vmci_resource_hash(resource->handle);
  hlist_add_head_rcu(& resource->node, (struct hlist_head *)(& vmci_resource_table.entries) + (unsigned long )idx);
  result = 0;
  out:
  spin_unlock(& vmci_resource_table.lock);
  return (result);
}
}
void vmci_resource_remove(struct vmci_resource *resource )
{
  struct vmci_handle handle ;
  unsigned int idx ;
  unsigned int tmp ;
  struct vmci_resource *r ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct vmci_resource *tmp___0 ;
  bool tmp___1 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct vmci_resource *tmp___2 ;
  {
  handle = resource->handle;
  tmp = vmci_resource_hash(handle);
  idx = tmp;
  spin_lock(& vmci_resource_table.lock);
  ____ptr = ((struct hlist_head *)(& vmci_resource_table.entries) + (unsigned long )idx)->first;
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp___0 = (struct vmci_resource *)__mptr + 0xfffffffffffffff0UL;
  } else {
    tmp___0 = (struct vmci_resource *)0;
  }
  r = tmp___0;
  goto ldv_19298;
  ldv_19297:
  tmp___1 = vmci_handle_is_equal(r->handle, resource->handle);
  if ((int )tmp___1) {
    hlist_del_init_rcu(& r->node);
    goto ldv_19296;
  } else {
  }
  ____ptr___0 = r->node.next;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___2 = (struct vmci_resource *)__mptr___0 + 0xfffffffffffffff0UL;
  } else {
    tmp___2 = (struct vmci_resource *)0;
  }
  r = tmp___2;
  ldv_19298: ;
  if ((unsigned long )r != (unsigned long )((struct vmci_resource *)0)) {
    goto ldv_19297;
  } else {
  }
  ldv_19296:
  spin_unlock(& vmci_resource_table.lock);
  synchronize_rcu();
  vmci_resource_put(resource);
  wait_for_completion(& resource->done);
  return;
}
}
struct vmci_resource *vmci_resource_by_handle(struct vmci_handle resource_handle ,
                                              enum vmci_resource_type resource_type___0 )
{
  struct vmci_resource *r ;
  struct vmci_resource *resource ;
  {
  resource = (struct vmci_resource *)0;
  rcu_read_lock___1();
  r = vmci_resource_lookup(resource_handle, resource_type___0);
  if ((unsigned long )r != (unsigned long )((struct vmci_resource *)0) && ((unsigned int )r->type == (unsigned int )resource_type___0 || (unsigned int )resource_type___0 == 0U)) {
    resource = vmci_resource_get(r);
  } else {
  }
  rcu_read_unlock___1();
  return (resource);
}
}
struct vmci_resource *vmci_resource_get(struct vmci_resource *resource )
{
  {
  kref_get(& resource->kref);
  return (resource);
}
}
static void vmci_release_resource(struct kref *kref )
{
  struct vmci_resource *resource ;
  struct kref const *__mptr ;
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  {
  __mptr = (struct kref const *)kref;
  resource = (struct vmci_resource *)__mptr + 0xffffffffffffffe0UL;
  tmp = hlist_unhashed((struct hlist_node const *)(& resource->node));
  __ret_warn_on = tmp == 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/1577/dscv_tempdir/dscv/ri/32_7a/drivers/misc/vmw_vmci/vmci_resource.c",
                       202);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  complete(& resource->done);
  return;
}
}
int vmci_resource_put(struct vmci_resource *resource )
{
  int tmp ;
  {
  tmp = kref_put(& resource->kref, & vmci_release_resource);
  return (tmp != 0);
}
}
struct vmci_handle vmci_resource_handle(struct vmci_resource *resource )
{
  {
  return (resource->handle);
}
}
bool ldv_queue_work_on_277(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_278(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_279(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_280(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_281(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_282(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_283(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_301(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_300(struct mutex *ldv_func_arg1 ) ;
bool ldv_queue_work_on_295(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_297(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_296(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_299(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_298(struct workqueue_struct *ldv_func_arg1 ) ;
int vmci_route(struct vmci_handle *src , struct vmci_handle const *dst , bool from_guest ,
               enum vmci_route *route )
{
  bool has_host_device ;
  bool tmp ;
  bool has_guest_device ;
  bool tmp___0 ;
  bool tmp___1 ;
  {
  tmp = vmci_host_code_active();
  has_host_device = tmp;
  tmp___0 = vmci_guest_code_active();
  has_guest_device = tmp___0;
  *route = 0;
  if ((unsigned int )dst->context == 4294967295U) {
    return (-2);
  } else {
  }
  if ((unsigned int )dst->context == 0U) {
    if ((int )from_guest) {
      return (-10);
    } else {
    }
    if (! has_guest_device) {
      return (-39);
    } else {
    }
    if (src->context == 2U) {
      return (-2);
    } else {
    }
    if (src->context == 4294967295U && src->resource != 4294967295U) {
      src->context = vmci_get_context_id();
    } else {
    }
    *route = 2;
    return (0);
  } else {
  }
  if ((unsigned int )dst->context == 2U) {
    if (src->context == 0U) {
      if ((int )has_host_device) {
        *route = 1;
        return (0);
      } else {
        return (-39);
      }
    } else {
    }
    if (! from_guest && (int )has_guest_device) {
      if (src->context == 4294967295U) {
        src->context = vmci_get_context_id();
      } else {
      }
      *route = 2;
      return (0);
    } else {
    }
    if (! has_host_device) {
      return (-39);
    } else {
    }
    if (src->context == 4294967295U) {
      if ((int )from_guest) {
        return (-2);
      } else {
      }
      src->context = 2U;
    } else {
    }
    *route = 1;
    return (0);
  } else {
  }
  if ((int )has_host_device) {
    tmp___1 = vmci_ctx_exists(dst->context);
    if ((int )tmp___1) {
      if (src->context == 4294967295U) {
        if ((int )from_guest) {
          return (-2);
        } else {
        }
        src->context = 2U;
      } else
      if ((src->context != 4294967295U && src->context > 2U) && src->context != (u32 )dst->context) {
        return (-10);
      } else {
      }
      *route = 1;
      return (0);
    } else
    if (! has_guest_device) {
      return (-10);
    } else {
    }
  } else {
  }
  if (! has_guest_device) {
    return (-39);
  } else {
  }
  if (src->context == 4294967295U) {
    src->context = vmci_get_context_id();
  } else {
  }
  *route = 2;
  return (0);
}
}
bool ldv_queue_work_on_295(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_296(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_297(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_298(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_299(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_300(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_301(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
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
static int ldv_mutex_lock_of_vmci_host_dev = 1;
int ldv_mutex_lock_interruptible_lock_of_vmci_host_dev(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_vmci_host_dev != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_lock_of_vmci_host_dev = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock_of_vmci_host_dev(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_vmci_host_dev != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_lock_of_vmci_host_dev = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock_of_vmci_host_dev(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_vmci_host_dev != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock_of_vmci_host_dev = 2;
  return;
}
}
int ldv_mutex_trylock_lock_of_vmci_host_dev(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock_of_vmci_host_dev != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_lock_of_vmci_host_dev = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_vmci_host_dev(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock_of_vmci_host_dev != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock_of_vmci_host_dev = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock_of_vmci_host_dev(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_vmci_host_dev == 1) {
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
void ldv_mutex_unlock_lock_of_vmci_host_dev(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_vmci_host_dev != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock_of_vmci_host_dev = 1;
  return;
}
}
void ldv_usb_lock_device_lock_of_vmci_host_dev(void)
{
  {
  ldv_mutex_lock_lock_of_vmci_host_dev((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_lock_of_vmci_host_dev(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_lock_of_vmci_host_dev((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_lock_of_vmci_host_dev(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_lock_of_vmci_host_dev((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_lock_of_vmci_host_dev(void)
{
  {
  ldv_mutex_unlock_lock_of_vmci_host_dev((struct mutex *)0);
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
static int ldv_mutex_mutex_of_qp_list = 1;
int ldv_mutex_lock_interruptible_mutex_of_qp_list(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_qp_list != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_mutex_of_qp_list = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_qp_list(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_qp_list != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_mutex_of_qp_list = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_qp_list(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_qp_list != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_mutex_of_qp_list = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_qp_list(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_qp_list != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_mutex_of_qp_list = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_qp_list(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_qp_list != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_qp_list = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_qp_list(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_qp_list == 1) {
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
void ldv_mutex_unlock_mutex_of_qp_list(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_qp_list != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_mutex_of_qp_list = 1;
  return;
}
}
void ldv_usb_lock_device_mutex_of_qp_list(void)
{
  {
  ldv_mutex_lock_mutex_of_qp_list((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_mutex_of_qp_list(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_mutex_of_qp_list((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_mutex_of_qp_list(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_mutex_of_qp_list((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_mutex_of_qp_list(void)
{
  {
  ldv_mutex_unlock_mutex_of_qp_list((struct mutex *)0);
  return;
}
}
static int ldv_mutex_mutex_of_vmci_queue_kern_if = 1;
int ldv_mutex_lock_interruptible_mutex_of_vmci_queue_kern_if(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_vmci_queue_kern_if != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_mutex_of_vmci_queue_kern_if = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_vmci_queue_kern_if(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_vmci_queue_kern_if != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_mutex_of_vmci_queue_kern_if = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_vmci_queue_kern_if(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_vmci_queue_kern_if != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_mutex_of_vmci_queue_kern_if = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_vmci_queue_kern_if(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_vmci_queue_kern_if != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_mutex_of_vmci_queue_kern_if = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_vmci_queue_kern_if(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_vmci_queue_kern_if != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_vmci_queue_kern_if = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_vmci_queue_kern_if(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_vmci_queue_kern_if == 1) {
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
void ldv_mutex_unlock_mutex_of_vmci_queue_kern_if(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_vmci_queue_kern_if != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_mutex_of_vmci_queue_kern_if = 1;
  return;
}
}
void ldv_usb_lock_device_mutex_of_vmci_queue_kern_if(void)
{
  {
  ldv_mutex_lock_mutex_of_vmci_queue_kern_if((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_mutex_of_vmci_queue_kern_if(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_mutex_of_vmci_queue_kern_if((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_mutex_of_vmci_queue_kern_if(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_mutex_of_vmci_queue_kern_if((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_mutex_of_vmci_queue_kern_if(void)
{
  {
  ldv_mutex_unlock_mutex_of_vmci_queue_kern_if((struct mutex *)0);
  return;
}
}
static int ldv_mutex_subscriber_mutex = 1;
int ldv_mutex_lock_interruptible_subscriber_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_subscriber_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_subscriber_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_subscriber_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_subscriber_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_subscriber_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_subscriber_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_subscriber_mutex != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_subscriber_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_subscriber_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_subscriber_mutex != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_subscriber_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_subscriber_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_subscriber_mutex != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_subscriber_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_subscriber_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_subscriber_mutex == 1) {
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
void ldv_mutex_unlock_subscriber_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_subscriber_mutex != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_subscriber_mutex = 1;
  return;
}
}
void ldv_usb_lock_device_subscriber_mutex(void)
{
  {
  ldv_mutex_lock_subscriber_mutex((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_subscriber_mutex(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_subscriber_mutex((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_subscriber_mutex(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_subscriber_mutex((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_subscriber_mutex(void)
{
  {
  ldv_mutex_unlock_subscriber_mutex((struct mutex *)0);
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_lock_of_vmci_host_dev != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_mutex_of_qp_list != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_mutex_of_vmci_queue_kern_if != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_subscriber_mutex != 1) {
    ldv_error();
  } else {
  }
  return;
}
}
void __compiletime_assert_402() {
  return;
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
void __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __invalid_creds(const struct cred *arg0, const char *arg1, unsigned int arg2) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_add_rcu(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
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
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void __put_cred(struct cred *arg0) {
  return;
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
void complete(struct completion *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t copy_from_iter(void *arg0, size_t arg1, struct iov_iter *arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t copy_to_iter(void *arg0, size_t arg1, struct iov_iter *arg2) {
  return __VERIFIER_nondet_ulong();
}
bool __VERIFIER_nondet_bool(void);
bool creds_are_invalid(const struct cred *arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
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
void *dma_alloc_attrs(struct device *arg0, size_t arg1, dma_addr_t *arg2, gfp_t arg3, struct dma_attrs *arg4) {
  return ldv_malloc(0UL);
}
void dma_free_attrs(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3, struct dma_attrs *arg4) {
  return;
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
int __VERIFIER_nondet_int(void);
int get_user_pages_fast(unsigned long arg0, int arg1, int arg2, struct page **arg3) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread32(void *arg0) {
  return __VERIFIER_nondet_uint();
}
void ioread8_rep(void *arg0, void *arg1, unsigned long arg2) {
  return;
}
void iowrite32(u32 arg0, void *arg1) {
  return;
}
void iowrite8_rep(void *arg0, const void *arg1, unsigned long arg2) {
  return;
}
void *krealloc(const void *arg0, size_t arg1, gfp_t arg2) {
  return ldv_malloc(0UL);
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_shutdown_7() {
  return __VERIFIER_nondet_int();
}
void list_del(struct list_head *arg0) {
  return;
}
void lock_acquire(struct lockdep_map *arg0, unsigned int arg1, int arg2, int arg3, int arg4, struct lockdep_map *arg5, unsigned long arg6) {
  return;
}
void lock_release(struct lockdep_map *arg0, int arg1, unsigned long arg2) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void lockdep_rcu_suspicious(const char *arg0, const int arg1, const char *arg2) {
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
void pci_disable_msi(struct pci_dev *arg0) {
  return;
}
void pci_disable_msix(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_msi_range(struct pci_dev *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msix_range(struct pci_dev *arg0, struct msix_entry *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pcim_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pcim_iomap_regions(struct pci_dev *arg0, int arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void * const *pcim_iomap_table(struct pci_dev *arg0) {
  return ldv_malloc(sizeof(void *));
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void put_page(struct page *arg0) {
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
bool __VERIFIER_nondet_bool(void);
bool rcu_is_watching() {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
int __VERIFIER_nondet_int(void);
int set_page_dirty(struct page *arg0) {
  return __VERIFIER_nondet_int();
}
void synchronize_sched() {
  return;
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
  return;
}
void vfree(const void *arg0) {
  return;
}
void *vmalloc(unsigned long arg0) {
  return ldv_malloc(0UL);
}
void *vmap(struct page **arg0, unsigned int arg1, unsigned long arg2, pgprot_t arg3) {
  return ldv_malloc(0UL);
}
void vunmap(const void *arg0) {
  return;
}
void wait_for_completion(struct completion *arg0) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
