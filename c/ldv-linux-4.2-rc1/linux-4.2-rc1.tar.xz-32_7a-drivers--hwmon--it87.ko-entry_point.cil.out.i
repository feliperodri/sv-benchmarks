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
struct gate_struct64 {
   u16 offset_low ;
   u16 segment ;
   unsigned char ist : 3 ;
   unsigned char zero0 : 5 ;
   unsigned char type : 5 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   u16 offset_middle ;
   u32 offset_high ;
   u32 zero1 ;
};
typedef struct gate_struct64 gate_desc;
struct desc_ptr {
   unsigned short size ;
   unsigned long address ;
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
struct tss_struct;
struct mm_struct;
struct task_struct;
struct cpumask;
struct pv_cpu_ops {
   unsigned long (*get_debugreg)(int ) ;
   void (*set_debugreg)(int , unsigned long ) ;
   void (*clts)(void) ;
   unsigned long (*read_cr0)(void) ;
   void (*write_cr0)(unsigned long ) ;
   unsigned long (*read_cr4_safe)(void) ;
   unsigned long (*read_cr4)(void) ;
   void (*write_cr4)(unsigned long ) ;
   unsigned long (*read_cr8)(void) ;
   void (*write_cr8)(unsigned long ) ;
   void (*load_tr_desc)(void) ;
   void (*load_gdt)(struct desc_ptr const * ) ;
   void (*load_idt)(struct desc_ptr const * ) ;
   void (*store_idt)(struct desc_ptr * ) ;
   void (*set_ldt)(void const * , unsigned int ) ;
   unsigned long (*store_tr)(void) ;
   void (*load_tls)(struct thread_struct * , unsigned int ) ;
   void (*load_gs_index)(unsigned int ) ;
   void (*write_ldt_entry)(struct desc_struct * , int , void const * ) ;
   void (*write_gdt_entry)(struct desc_struct * , int , void const * , int ) ;
   void (*write_idt_entry)(gate_desc * , int , gate_desc const * ) ;
   void (*alloc_ldt)(struct desc_struct * , unsigned int ) ;
   void (*free_ldt)(struct desc_struct * , unsigned int ) ;
   void (*load_sp0)(struct tss_struct * , struct thread_struct * ) ;
   void (*set_iopl_mask)(unsigned int ) ;
   void (*wbinvd)(void) ;
   void (*io_delay)(void) ;
   void (*cpuid)(unsigned int * , unsigned int * , unsigned int * , unsigned int * ) ;
   u64 (*read_msr)(unsigned int , int * ) ;
   int (*write_msr)(unsigned int , unsigned int , unsigned int ) ;
   u64 (*read_tsc)(void) ;
   u64 (*read_pmc)(int ) ;
   unsigned long long (*read_tscp)(unsigned int * ) ;
   void (*usergs_sysret64)(void) ;
   void (*usergs_sysret32)(void) ;
   void (*iret)(void) ;
   void (*swapgs)(void) ;
   void (*start_context_switch)(struct task_struct * ) ;
   void (*end_context_switch)(struct task_struct * ) ;
};
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
struct device_attribute;
struct platform_device;
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
union __anonunion____missing_field_name_209 {
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
   union __anonunion____missing_field_name_209 __annonCompField56 ;
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
union __anonunion____missing_field_name_210 {
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
   union __anonunion____missing_field_name_210 __annonCompField57 ;
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
   bool klp_alive ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
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
struct pdev_archdata {
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
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   bool id_auto ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   char *driver_override ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct platform_driver {
   int (*probe)(struct platform_device * ) ;
   int (*remove)(struct platform_device * ) ;
   void (*shutdown)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * , pm_message_t ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
   bool prevent_deferred_probe ;
};
struct sensor_device_attribute {
   struct device_attribute dev_attr ;
   int index ;
};
struct sensor_device_attribute_2 {
   struct device_attribute dev_attr ;
   u8 index ;
   u8 nr ;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_231 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_230 {
   struct __anonstruct____missing_field_name_231 __annonCompField58 ;
};
struct lockref {
   union __anonunion____missing_field_name_230 __annonCompField59 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_233 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_232 {
   struct __anonstruct____missing_field_name_233 __annonCompField60 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_232 __annonCompField61 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_234 {
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
   union __anonunion_d_u_234 d_u ;
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
struct __anonstruct____missing_field_name_238 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_237 {
   struct __anonstruct____missing_field_name_238 __annonCompField62 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_237 __annonCompField63 ;
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
struct __anonstruct_kprojid_t_242 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_242 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_243 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_243 __annonCompField65 ;
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
union __anonunion____missing_field_name_246 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_247 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_248 {
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
   union __anonunion____missing_field_name_246 __annonCompField66 ;
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
   union __anonunion____missing_field_name_247 __annonCompField67 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_248 __annonCompField68 ;
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
union __anonunion_f_u_249 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_249 f_u ;
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
struct __anonstruct_afs_251 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_250 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_251 afs ;
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
   union __anonunion_fl_u_250 fl_u ;
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
enum chips {
    it87 = 0,
    it8712 = 1,
    it8716 = 2,
    it8718 = 3,
    it8720 = 4,
    it8721 = 5,
    it8728 = 6,
    it8771 = 7,
    it8772 = 8,
    it8781 = 9,
    it8782 = 10,
    it8783 = 11,
    it8786 = 12,
    it8790 = 13,
    it8603 = 14,
    it8620 = 15
} ;
struct it87_devices {
   char const *name ;
   char const * const suffix ;
   u16 features ;
   u8 peci_mask ;
   u8 old_peci_mask ;
};
struct it87_sio_data {
   enum chips type ;
   u8 revision ;
   u8 vid_value ;
   u8 beep_pin ;
   u8 internal ;
   u16 skip_in ;
   u8 skip_vid ;
   u8 skip_fan ;
   u8 skip_pwm ;
   u8 skip_temp ;
};
struct it87_data {
   struct device *hwmon_dev ;
   enum chips type ;
   u16 features ;
   u8 peci_mask ;
   u8 old_peci_mask ;
   unsigned short addr ;
   char const *name ;
   struct mutex update_lock ;
   char valid ;
   unsigned long last_updated ;
   u16 in_scaled ;
   u8 in[10U][3U] ;
   u8 has_fan ;
   u16 fan[6U][2U] ;
   u8 has_temp ;
   s8 temp[3U][4U] ;
   u8 sensor ;
   u8 extra ;
   u8 fan_div[3U] ;
   u8 vid ;
   u8 vrm ;
   u32 alarms ;
   u8 beeps ;
   u8 fan_main_ctrl ;
   u8 fan_ctl ;
   u8 pwm_ctrl[3U] ;
   u8 pwm_duty[3U] ;
   u8 pwm_temp_map[3U] ;
   u8 auto_pwm[3U][4U] ;
   s8 auto_temp[3U][5U] ;
};
typedef int ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
extern struct pv_cpu_ops pv_cpu_ops ;
extern int printk(char const * , ...) ;
extern void __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern int kstrtoull(char const * , unsigned int , unsigned long long * ) ;
extern int kstrtoll(char const * , unsigned int , long long * ) ;
__inline static int kstrtoul(char const *s , unsigned int base , unsigned long *res )
{
  int tmp ;
  {
  tmp = kstrtoull(s, base, (unsigned long long *)res);
  return (tmp);
}
}
__inline static int kstrtol(char const *s , unsigned int base , long *res )
{
  int tmp ;
  {
  tmp = kstrtoll(s, base, (long long *)res);
  return (tmp);
}
}
extern int sprintf(char * , char const * , ...) ;
bool ldv_is_err(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
extern void *memset(void * , int , size_t ) ;
extern int strcmp(char const * , char const * ) ;
__inline static void slow_down_io(void)
{
  {
  (*(pv_cpu_ops.io_delay))();
  return;
}
}
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_8(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_26(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_28(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_34(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_38(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 ) ;
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
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_7(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_24(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_27(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_33(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_35(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_37(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_39(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_lock_update_lock_of_it87_data(struct mutex *lock ) ;
void ldv_mutex_unlock_update_lock_of_it87_data(struct mutex *lock ) ;
extern unsigned long volatile jiffies ;
extern struct resource ioport_resource ;
extern struct resource *__request_region(struct resource * , resource_size_t , resource_size_t ,
                                         char const * , int ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
extern struct resource *__devm_request_region(struct device * , struct resource * ,
                                              resource_size_t , resource_size_t ,
                                              char const * ) ;
__inline static void outb(unsigned char value , int port )
{
  {
  __asm__ volatile ("outb %b0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned char inb(int port )
{
  unsigned char value ;
  {
  __asm__ volatile ("inb %w1, %b0": "=a" (value): "Nd" (port));
  return (value);
}
}
__inline static void outb_p(unsigned char value , int port )
{
  {
  outb((int )value, port);
  slow_down_io();
  return;
}
}
__inline static unsigned char inb_p(int port )
{
  unsigned char value ;
  unsigned char tmp ;
  {
  tmp = inb(port);
  value = tmp;
  slow_down_io();
  return (value);
}
}
struct device_attribute *sensor_dev_attr_in3_min_group0 ;
struct platform_device *it87_driver_group1 ;
int ldv_state_variable_99 ;
int ldv_state_variable_47 ;
int ldv_state_variable_20 ;
struct device_attribute *sensor_dev_attr_in7_max_group0 ;
struct device_attribute *sensor_dev_attr_in2_min_group0 ;
int ldv_state_variable_106 ;
struct device_attribute *sensor_dev_attr_fan3_div_group0 ;
struct device *sensor_dev_attr_pwm1_enable_group1 ;
int ldv_state_variable_125 ;
struct device_attribute *sensor_dev_attr_in4_min_group0 ;
struct device_attribute *sensor_dev_attr_fan6_beep_group0 ;
int ldv_state_variable_111 ;
struct device *sensor_dev_attr_fan6_min_group1 ;
struct device_attribute *sensor_dev_attr_in0_min_group0 ;
struct device *sensor_dev_attr_fan5_min_group1 ;
struct device_attribute *sensor_dev_attr_pwm3_group0 ;
struct device *sensor_dev_attr_fan1_beep_group1 ;
int ldv_state_variable_109 ;
int ldv_state_variable_54 ;
int ldv_state_variable_14 ;
struct device_attribute *sensor_dev_attr_pwm1_auto_point1_temp_hyst_group0 ;
struct device_attribute *sensor_dev_attr_pwm2_auto_point1_pwm_group0 ;
struct device_attribute *sensor_dev_attr_pwm1_auto_point3_pwm_group0 ;
struct device_attribute *sensor_dev_attr_pwm2_auto_point2_pwm_group0 ;
struct device_attribute *sensor_dev_attr_in0_beep_group0 ;
int ldv_state_variable_37 ;
int ldv_state_variable_17 ;
int ldv_state_variable_51 ;
struct device_attribute *sensor_dev_attr_pwm1_group0 ;
int ldv_state_variable_66 ;
int ldv_state_variable_19 ;
int ldv_state_variable_27 ;
int ldv_state_variable_9 ;
int ldv_state_variable_100 ;
struct device_attribute *sensor_dev_attr_fan2_beep_group0 ;
struct device *sensor_dev_attr_pwm2_auto_point1_temp_group1 ;
int ldv_state_variable_42 ;
int ldv_state_variable_83 ;
struct device *sensor_dev_attr_in3_max_group1 ;
int ldv_state_variable_7 ;
struct device_attribute *sensor_dev_attr_pwm1_auto_point1_pwm_group0 ;
struct device *sensor_dev_attr_fan3_min_group1 ;
struct device_attribute *sensor_dev_attr_pwm2_auto_point4_temp_group0 ;
int ldv_state_variable_119 ;
int ldv_state_variable_55 ;
struct device_attribute *sensor_dev_attr_fan4_beep_group0 ;
struct device_attribute *sensor_dev_attr_pwm3_auto_point1_temp_hyst_group0 ;
struct device_attribute *sensor_dev_attr_intrusion0_alarm_group0 ;
struct device_attribute *sensor_dev_attr_in1_min_group0 ;
struct device *sensor_dev_attr_pwm2_auto_point4_temp_group1 ;
struct device_attribute *sensor_dev_attr_temp1_beep_group0 ;
struct device *sensor_dev_attr_pwm3_auto_point2_pwm_group1 ;
int ldv_state_variable_80 ;
struct device_attribute *sensor_dev_attr_pwm2_enable_group0 ;
int ldv_state_variable_64 ;
struct device_attribute *sensor_dev_attr_temp1_offset_group0 ;
int ldv_state_variable_26 ;
int ldv_state_variable_28 ;
struct device_attribute *sensor_dev_attr_temp3_min_group0 ;
struct device *sensor_dev_attr_temp2_max_group1 ;
int LDV_IN_INTERRUPT = 1;
struct device *sensor_dev_attr_pwm3_auto_point2_temp_group1 ;
struct device *sensor_dev_attr_temp2_min_group1 ;
int ldv_state_variable_58 ;
struct device *sensor_dev_attr_pwm2_auto_point1_temp_hyst_group1 ;
struct device *sensor_dev_attr_fan2_beep_group1 ;
struct device_attribute *sensor_dev_attr_pwm3_enable_group0 ;
struct device_attribute *sensor_dev_attr_fan1_div_group0 ;
int ldv_state_variable_93 ;
struct device *sensor_dev_attr_pwm2_enable_group1 ;
int ldv_state_variable_78 ;
int ldv_state_variable_76 ;
int ldv_state_variable_31 ;
int ldv_state_variable_96 ;
int ldv_state_variable_137 ;
struct device *sensor_dev_attr_pwm1_group1 ;
int ldv_state_variable_89 ;
struct device_attribute *sensor_dev_attr_in5_min_group0 ;
struct device *sensor_dev_attr_temp3_offset_group1 ;
struct device *sensor_dev_attr_pwm2_auto_point1_pwm_group1 ;
int ldv_state_variable_68 ;
struct device *sensor_dev_attr_temp1_min_group1 ;
struct device *sensor_dev_attr_in5_max_group1 ;
int ldv_state_variable_124 ;
int ldv_state_variable_8 ;
int ldv_state_variable_46 ;
int ldv_state_variable_15 ;
struct device *sensor_dev_attr_pwm3_auto_point3_temp_group1 ;
struct device_attribute *sensor_dev_attr_pwm1_auto_point2_temp_group0 ;
int ldv_state_variable_75 ;
int ldv_state_variable_74 ;
int ldv_state_variable_21 ;
int ldv_state_variable_33 ;
int ldv_state_variable_123 ;
int ldv_state_variable_69 ;
struct device *sensor_dev_attr_temp1_offset_group1 ;
struct device *sensor_dev_attr_in4_min_group1 ;
struct device_attribute *sensor_dev_attr_pwm1_auto_point3_temp_group0 ;
int ldv_state_variable_88 ;
int ldv_state_variable_65 ;
struct device_attribute *sensor_dev_attr_fan3_min_group0 ;
struct device *sensor_dev_attr_pwm1_auto_point1_temp_hyst_group1 ;
int ldv_state_variable_98 ;
struct device_attribute *sensor_dev_attr_fan2_min_group0 ;
int ldv_state_variable_139 ;
int ldv_state_variable_94 ;
int ldv_state_variable_110 ;
struct device *sensor_dev_attr_pwm3_auto_point1_temp_group1 ;
struct device_attribute *sensor_dev_attr_pwm1_auto_channels_temp_group0 ;
int ldv_state_variable_70 ;
int ldv_state_variable_41 ;
int ldv_state_variable_62 ;
struct device *sensor_dev_attr_pwm1_auto_point3_temp_group1 ;
int ldv_state_variable_40 ;
struct device *sensor_dev_attr_pwm3_group1 ;
struct device_attribute *sensor_dev_attr_in4_max_group0 ;
int ldv_state_variable_10 ;
struct device *sensor_dev_attr_fan6_beep_group1 ;
int ldv_state_variable_133 ;
struct device_attribute *sensor_dev_attr_pwm3_auto_point3_temp_group0 ;
struct device *sensor_dev_attr_temp3_type_group1 ;
int ldv_state_variable_63 ;
struct device *sensor_dev_attr_in5_min_group1 ;
int ldv_state_variable_105 ;
int ldv_state_variable_2 ;
int ldv_state_variable_25 ;
struct device *sensor_dev_attr_intrusion0_alarm_group1 ;
struct device_attribute *sensor_dev_attr_pwm2_auto_point3_pwm_group0 ;
struct device_attribute *sensor_dev_attr_pwm3_auto_point2_pwm_group0 ;
struct device *dev_attr_vrm_group1 ;
struct device_attribute *sensor_dev_attr_temp2_min_group0 ;
struct device *sensor_dev_attr_pwm3_enable_group1 ;
int ldv_state_variable_11 ;
int ldv_state_variable_113 ;
struct device *sensor_dev_attr_in0_max_group1 ;
int ldv_state_variable_79 ;
int ldv_state_variable_127 ;
int ldv_state_variable_18 ;
struct device_attribute *sensor_dev_attr_pwm3_auto_point1_pwm_group0 ;
struct device_attribute *sensor_dev_attr_fan5_min_group0 ;
struct device *sensor_dev_attr_in1_min_group1 ;
struct device_attribute *sensor_dev_attr_temp1_min_group0 ;
struct device *sensor_dev_attr_in3_min_group1 ;
int ldv_state_variable_108 ;
struct device *sensor_dev_attr_fan1_div_group1 ;
int ldv_state_variable_32 ;
struct device *sensor_dev_attr_pwm1_auto_channels_temp_group1 ;
struct device *sensor_dev_attr_fan2_div_group1 ;
struct device_attribute *sensor_dev_attr_temp3_offset_group0 ;
struct device_attribute *sensor_dev_attr_pwm3_auto_channels_temp_group0 ;
struct device *sensor_dev_attr_temp1_beep_group1 ;
int ldv_state_variable_90 ;
struct device *sensor_dev_attr_in7_min_group1 ;
int ldv_state_variable_97 ;
struct device_attribute *sensor_dev_attr_in6_max_group0 ;
struct device_attribute *sensor_dev_attr_pwm2_auto_point3_temp_group0 ;
struct device *sensor_dev_attr_pwm3_auto_point4_temp_group1 ;
int ldv_state_variable_30 ;
struct device_attribute *dev_attr_pwm1_freq_group0 ;
struct device_attribute *sensor_dev_attr_temp1_max_group0 ;
struct device_attribute *sensor_dev_attr_fan3_beep_group0 ;
int ldv_state_variable_0 ;
struct device_attribute *sensor_dev_attr_pwm1_auto_point4_temp_group0 ;
int ldv_state_variable_81 ;
struct device *sensor_dev_attr_pwm1_auto_point4_temp_group1 ;
int ldv_state_variable_45 ;
struct device *sensor_dev_attr_pwm1_auto_point1_pwm_group1 ;
struct device_attribute *sensor_dev_attr_pwm3_auto_point1_temp_group0 ;
struct device_attribute *sensor_dev_attr_temp1_type_group0 ;
struct device_attribute *dev_attr_vrm_group0 ;
struct device_attribute *sensor_dev_attr_pwm2_group0 ;
int ldv_state_variable_12 ;
int ldv_state_variable_102 ;
int ldv_state_variable_87 ;
int ldv_state_variable_95 ;
int ldv_state_variable_122 ;
struct device *sensor_dev_attr_pwm3_auto_channels_temp_group1 ;
int ldv_state_variable_136 ;
int ldv_state_variable_22 ;
struct device *sensor_dev_attr_in7_max_group1 ;
struct device *sensor_dev_attr_pwm1_auto_point3_pwm_group1 ;
struct device_attribute *sensor_dev_attr_in3_max_group0 ;
int ldv_state_variable_73 ;
struct device *sensor_dev_attr_fan5_beep_group1 ;
int ldv_state_variable_29 ;
struct device_attribute *sensor_dev_attr_temp2_offset_group0 ;
int ldv_state_variable_115 ;
struct device_attribute *sensor_dev_attr_pwm1_auto_point1_temp_group0 ;
int ldv_state_variable_61 ;
struct device *sensor_dev_attr_pwm1_auto_point2_pwm_group1 ;
int ldv_state_variable_91 ;
struct device *sensor_dev_attr_pwm3_auto_point1_temp_hyst_group1 ;
int ref_cnt ;
struct device *sensor_dev_attr_fan2_min_group1 ;
struct device_attribute *sensor_dev_attr_pwm2_auto_channels_temp_group0 ;
int ldv_state_variable_23 ;
struct device_attribute *sensor_dev_attr_pwm2_auto_point2_temp_group0 ;
struct device *sensor_dev_attr_temp3_min_group1 ;
int ldv_state_variable_72 ;
struct device_attribute *sensor_dev_attr_fan4_min_group0 ;
struct device *sensor_dev_attr_pwm1_auto_point2_temp_group1 ;
int ldv_state_variable_59 ;
int ldv_state_variable_6 ;
int ldv_state_variable_132 ;
int ldv_state_variable_120 ;
struct device *sensor_dev_attr_temp2_offset_group1 ;
int ldv_state_variable_50 ;
struct device *sensor_dev_attr_in6_min_group1 ;
struct device_attribute *sensor_dev_attr_in2_max_group0 ;
int ldv_state_variable_84 ;
struct device *sensor_dev_attr_in4_max_group1 ;
struct device *sensor_dev_attr_in0_min_group1 ;
int ldv_state_variable_86 ;
int ldv_state_variable_44 ;
int ldv_state_variable_38 ;
struct device *sensor_dev_attr_pwm3_auto_point3_pwm_group1 ;
int ldv_state_variable_116 ;
int ldv_state_variable_128 ;
int ldv_state_variable_39 ;
int ldv_state_variable_101 ;
struct device_attribute *sensor_dev_attr_fan6_min_group0 ;
struct device_attribute *sensor_dev_attr_temp2_max_group0 ;
int ldv_state_variable_56 ;
int ldv_state_variable_104 ;
int ldv_state_variable_112 ;
int ldv_state_variable_126 ;
int ldv_state_variable_3 ;
struct device *sensor_dev_attr_in2_max_group1 ;
struct device *sensor_dev_attr_in1_max_group1 ;
struct device_attribute *sensor_dev_attr_fan2_div_group0 ;
int ldv_state_variable_52 ;
int ldv_state_variable_135 ;
int ldv_state_variable_4 ;
int ldv_state_variable_60 ;
int ldv_state_variable_36 ;
int ldv_state_variable_103 ;
int ldv_state_variable_118 ;
struct device_attribute *sensor_dev_attr_temp3_max_group0 ;
struct device *sensor_dev_attr_pwm2_auto_point2_pwm_group1 ;
int ldv_state_variable_117 ;
struct device *sensor_dev_attr_pwm2_auto_channels_temp_group1 ;
int ldv_state_variable_48 ;
int ldv_state_variable_107 ;
struct device_attribute *sensor_dev_attr_pwm3_auto_point2_temp_group0 ;
struct device *sensor_dev_attr_pwm1_auto_point1_temp_group1 ;
int ldv_state_variable_5 ;
struct device *sensor_dev_attr_fan1_min_group1 ;
int ldv_state_variable_13 ;
struct device *sensor_dev_attr_temp2_type_group1 ;
struct device_attribute *sensor_dev_attr_in0_max_group0 ;
struct device_attribute *sensor_dev_attr_pwm3_auto_point4_temp_group0 ;
struct device_attribute *sensor_dev_attr_fan1_beep_group0 ;
int ldv_state_variable_138 ;
struct device *sensor_dev_attr_pwm2_auto_point2_temp_group1 ;
int ldv_state_variable_82 ;
struct device_attribute *sensor_dev_attr_pwm3_auto_point3_pwm_group0 ;
struct device_attribute *sensor_dev_attr_pwm1_enable_group0 ;
int ldv_state_variable_49 ;
int ldv_state_variable_24 ;
struct device_attribute *sensor_dev_attr_pwm2_auto_point1_temp_hyst_group0 ;
struct device *sensor_dev_attr_fan3_div_group1 ;
struct device *sensor_dev_attr_fan3_beep_group1 ;
struct device *sensor_dev_attr_pwm2_auto_point3_pwm_group1 ;
struct device *dev_attr_pwm1_freq_group1 ;
struct device_attribute *sensor_dev_attr_in7_min_group0 ;
int ldv_state_variable_1 ;
struct device_attribute *sensor_dev_attr_pwm1_auto_point2_pwm_group0 ;
struct device_attribute *sensor_dev_attr_fan5_beep_group0 ;
struct device *sensor_dev_attr_temp1_max_group1 ;
int ldv_state_variable_85 ;
struct device *sensor_dev_attr_temp1_type_group1 ;
int ldv_state_variable_114 ;
int ldv_state_variable_71 ;
struct device *sensor_dev_attr_pwm2_auto_point3_temp_group1 ;
int ldv_state_variable_77 ;
struct device_attribute *sensor_dev_attr_in5_max_group0 ;
int ldv_state_variable_16 ;
struct device_attribute *sensor_dev_attr_in6_min_group0 ;
int ldv_state_variable_43 ;
int ldv_state_variable_121 ;
struct device_attribute *sensor_dev_attr_temp2_type_group0 ;
int ldv_state_variable_57 ;
struct device_attribute *sensor_dev_attr_temp3_type_group0 ;
struct device *sensor_dev_attr_in2_min_group1 ;
struct device_attribute *sensor_dev_attr_fan1_min_group0 ;
struct device *sensor_dev_attr_fan4_beep_group1 ;
int ldv_state_variable_67 ;
int ldv_state_variable_53 ;
int ldv_state_variable_131 ;
struct device *sensor_dev_attr_fan4_min_group1 ;
int ldv_state_variable_134 ;
struct device_attribute *sensor_dev_attr_pwm2_auto_point1_temp_group0 ;
int ldv_state_variable_129 ;
int ldv_state_variable_34 ;
int ldv_state_variable_92 ;
struct device_attribute *sensor_dev_attr_in1_max_group0 ;
struct device *sensor_dev_attr_pwm3_auto_point1_pwm_group1 ;
int probed_139 = 0;
struct device *sensor_dev_attr_in0_beep_group1 ;
int ldv_state_variable_130 ;
struct device *sensor_dev_attr_temp3_max_group1 ;
struct device *sensor_dev_attr_in6_max_group1 ;
int ldv_state_variable_35 ;
struct device *sensor_dev_attr_pwm2_group1 ;
void ldv_initialize_sensor_device_attribute_2_64(void) ;
void ldv_initialize_sensor_device_attribute_2_122(void) ;
void ldv_initialize_sensor_device_attribute_79(void) ;
void ldv_initialize_sensor_device_attribute_81(void) ;
void ldv_initialize_sensor_device_attribute_2_60(void) ;
void ldv_initialize_sensor_device_attribute_99(void) ;
void ldv_initialize_sensor_device_attribute_2_47(void) ;
void ldv_initialize_sensor_device_attribute_56(void) ;
void ldv_initialize_sensor_device_attribute_2_51(void) ;
void ldv_initialize_sensor_device_attribute_2_74(void) ;
void ldv_initialize_sensor_device_attribute_2_71(void) ;
void ldv_initialize_sensor_device_attribute_2_87(void) ;
void ldv_initialize_sensor_device_attribute_2_110(void) ;
void ldv_initialize_sensor_device_attribute_2_73(void) ;
void ldv_initialize_device_attribute_80(void) ;
void ldv_initialize_sensor_device_attribute_2_128(void) ;
void ldv_initialize_sensor_device_attribute_2_125(void) ;
void ldv_initialize_sensor_device_attribute_2_63(void) ;
void ldv_initialize_sensor_device_attribute_2_133(void) ;
void ldv_initialize_sensor_device_attribute_12(void) ;
void ldv_initialize_sensor_device_attribute_2_58(void) ;
void ldv_initialize_sensor_device_attribute_55(void) ;
void ldv_initialize_sensor_device_attribute_2_78(void) ;
void ldv_initialize_sensor_device_attribute_2_50(void) ;
void ldv_initialize_sensor_device_attribute_2_136(void) ;
void ldv_initialize_sensor_device_attribute_2_65(void) ;
void ldv_initialize_sensor_device_attribute_2_46(void) ;
void ldv_initialize_sensor_device_attribute_82(void) ;
void ldv_initialize_sensor_device_attribute_2_48(void) ;
void ldv_initialize_sensor_device_attribute_2_61(void) ;
void ldv_initialize_sensor_device_attribute_2_59(void) ;
void ldv_initialize_sensor_device_attribute_2_119(void) ;
void ldv_initialize_sensor_device_attribute_24(void) ;
void ldv_initialize_sensor_device_attribute_2_109(void) ;
void ldv_initialize_sensor_device_attribute_98(void) ;
void ldv_initialize_sensor_device_attribute_2_130(void) ;
void ldv_initialize_sensor_device_attribute_10(void) ;
void ldv_initialize_sensor_device_attribute_2_134(void) ;
void ldv_initialize_sensor_device_attribute_2_90(void) ;
void ldv_initialize_sensor_device_attribute_13(void) ;
void ldv_platform_probe_139(int (*probe)(struct platform_device * ) ) ;
void ldv_initialize_sensor_device_attribute_2_111(void) ;
void ldv_initialize_sensor_device_attribute_2_105(void) ;
void ldv_initialize_sensor_device_attribute_2_45(void) ;
void ldv_initialize_sensor_device_attribute_66(void) ;
void ldv_initialize_sensor_device_attribute_95(void) ;
void ldv_initialize_sensor_device_attribute_25(void) ;
void ldv_initialize_sensor_device_attribute_14(void) ;
void ldv_initialize_sensor_device_attribute_2_103(void) ;
void ldv_initialize_sensor_device_attribute_89(void) ;
void ldv_initialize_sensor_device_attribute_2_118(void) ;
void ldv_initialize_sensor_device_attribute_2_137(void) ;
void ldv_initialize_sensor_device_attribute_2_83(void) ;
void ldv_initialize_sensor_device_attribute_2_96(void) ;
void ldv_initialize_sensor_device_attribute_2_101(void) ;
void ldv_initialize_sensor_device_attribute_68(void) ;
void ldv_initialize_sensor_device_attribute_2_70(void) ;
void ldv_initialize_sensor_device_attribute_2_106(void) ;
void ldv_initialize_sensor_device_attribute_2_115(void) ;
void ldv_initialize_sensor_device_attribute_92(void) ;
void ldv_initialize_sensor_device_attribute_2_131(void) ;
void ldv_platform_driver_init_139(void) ;
void ldv_initialize_sensor_device_attribute_2_76(void) ;
void ldv_initialize_sensor_device_attribute_11(void) ;
void ldv_initialize_sensor_device_attribute_16(void) ;
void ldv_initialize_sensor_device_attribute_53(void) ;
void ldv_initialize_sensor_device_attribute_2_72(void) ;
void ldv_initialize_sensor_device_attribute_2_44(void) ;
void ldv_initialize_sensor_device_attribute_2_124(void) ;
void ldv_initialize_sensor_device_attribute_2_93(void) ;
void ldv_initialize_sensor_device_attribute_2_121(void) ;
void ldv_initialize_sensor_device_attribute_2_102(void) ;
void ldv_initialize_sensor_device_attribute_2_52(void) ;
void ldv_initialize_sensor_device_attribute_2_77(void) ;
void ldv_initialize_sensor_device_attribute_2_57(void) ;
void ldv_initialize_sensor_device_attribute_2_116(void) ;
void ldv_initialize_sensor_device_attribute_2_107(void) ;
void ldv_initialize_sensor_device_attribute_15(void) ;
void ldv_initialize_device_attribute_7(void) ;
void ldv_initialize_sensor_device_attribute_100(void) ;
void ldv_initialize_sensor_device_attribute_69(void) ;
void ldv_initialize_sensor_device_attribute_2_85(void) ;
void ldv_initialize_sensor_device_attribute_2_127(void) ;
extern int sysfs_create_file_ns(struct kobject * , struct attribute const * , void const * ) ;
extern int sysfs_chmod_file(struct kobject * , struct attribute const * , umode_t ) ;
extern void sysfs_remove_file_ns(struct kobject * , struct attribute const * , void const * ) ;
extern int sysfs_create_group(struct kobject * , struct attribute_group const * ) ;
extern void sysfs_remove_group(struct kobject * , struct attribute_group const * ) ;
__inline static int sysfs_create_file(struct kobject *kobj , struct attribute const *attr )
{
  int tmp ;
  {
  tmp = sysfs_create_file_ns(kobj, attr, (void const *)0);
  return (tmp);
}
}
__inline static void sysfs_remove_file(struct kobject *kobj , struct attribute const *attr )
{
  {
  sysfs_remove_file_ns(kobj, attr, (void const *)0);
  return;
}
}
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
__inline static void *dev_get_platdata(struct device const *dev )
{
  {
  return ((void *)dev->platform_data);
}
}
extern void dev_err(struct device const * , char const * , ...) ;
extern void dev_warn(struct device const * , char const * , ...) ;
extern void dev_notice(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
extern void platform_device_unregister(struct platform_device * ) ;
extern struct resource *platform_get_resource(struct platform_device * , unsigned int ,
                                              unsigned int ) ;
extern struct platform_device *platform_device_alloc(char const * , int ) ;
extern int platform_device_add_resources(struct platform_device * , struct resource const * ,
                                         unsigned int ) ;
extern int platform_device_add_data(struct platform_device * , void const * , size_t ) ;
extern int platform_device_add(struct platform_device * ) ;
extern void platform_device_put(struct platform_device * ) ;
extern int __platform_driver_register(struct platform_driver * , struct module * ) ;
int ldv___platform_driver_register_41(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
void ldv_platform_driver_unregister_42(struct platform_driver *ldv_func_arg1 ) ;
void ldv_platform_driver_unregister_43(struct platform_driver *ldv_func_arg1 ) ;
__inline static void *platform_get_drvdata(struct platform_device const *pdev___0 )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata(& pdev___0->dev);
  return (tmp);
}
}
__inline static void platform_set_drvdata(struct platform_device *pdev___0 , void *data )
{
  {
  dev_set_drvdata(& pdev___0->dev, data);
  return;
}
}
extern struct device *hwmon_device_register(struct device * ) ;
extern void hwmon_device_unregister(struct device * ) ;
extern int vid_from_reg(int , u8 ) ;
extern u8 vid_which_vrm(void) ;
extern char const *dmi_get_system_info(int ) ;
extern int acpi_check_resource_conflict(struct resource const * ) ;
static unsigned short force_id ;
static struct platform_device *pdev ;
__inline static int superio_inb(int reg )
{
  unsigned char tmp ;
  {
  outb((int )((unsigned char )reg), 46);
  tmp = inb(47);
  return ((int )tmp);
}
}
__inline static void superio_outb(int reg , int val )
{
  {
  outb((int )((unsigned char )reg), 46);
  outb((int )((unsigned char )val), 47);
  return;
}
}
static int superio_inw(int reg )
{
  int val ;
  int tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  {
  tmp = reg;
  reg = reg + 1;
  outb((int )((unsigned char )tmp), 46);
  tmp___0 = inb(47);
  val = (int )tmp___0 << 8;
  outb((int )((unsigned char )reg), 46);
  tmp___1 = inb(47);
  val = (int )tmp___1 | val;
  return (val);
}
}
__inline static void superio_select(int ldn )
{
  {
  outb(7, 46);
  outb((int )((unsigned char )ldn), 47);
  return;
}
}
__inline static int superio_enter(void)
{
  struct resource *tmp ;
  {
  tmp = __request_region(& ioport_resource, 46ULL, 2ULL, "it87", 4194304);
  if ((unsigned long )tmp == (unsigned long )((struct resource *)0)) {
    return (-16);
  } else {
  }
  outb(135, 46);
  outb(1, 46);
  outb(85, 46);
  outb(85, 46);
  return (0);
}
}
__inline static void superio_exit(void)
{
  {
  outb(2, 46);
  outb(2, 47);
  __release_region(& ioport_resource, 46ULL, 2ULL);
  return;
}
}
static bool update_vbat ;
static bool fix_pwm_polarity ;
static u8 const IT87_REG_FAN[6U] = { 13U, 14U, 15U, 128U,
        130U, 76U};
static u8 const IT87_REG_FAN_MIN[6U] = { 16U, 17U, 18U, 132U,
        134U, 78U};
static u8 const IT87_REG_FANX[6U] = { 24U, 25U, 26U, 129U,
        131U, 77U};
static u8 const IT87_REG_FANX_MIN[6U] = { 27U, 28U, 29U, 133U,
        135U, 79U};
static u8 const IT87_REG_TEMP_OFFSET[3U] = { 86U, 87U, 89U};
static struct it87_devices const it87_devices[16U] =
  { {"it87", "F", 4U, (unsigned char)0, (unsigned char)0},
        {"it8712", "F", 516U, (unsigned char)0, (unsigned char)0},
        {"it8716", "F", 920U, (unsigned char)0, (unsigned char)0},
        {"it8718", "F", 984U, (unsigned char)0, 4U},
        {"it8720", "F", 984U, (unsigned char)0, 4U},
        {"it8721", "F", 1531U, 5U, 2U},
        {"it8728", "F", 1339U, 7U, (unsigned char)0},
        {"it8771", "E", 1083U, 7U, (unsigned char)0},
        {"it8772", "E", 1083U, 7U, (unsigned char)0},
        {"it8781", "F", 216U, (unsigned char)0, 4U},
        {"it8782", "F", 216U, (unsigned char)0, 4U},
        {"it8783", "E/F", 216U, (unsigned char)0, 4U},
        {"it8786", "E", 1083U, 7U, (unsigned char)0},
        {"it8790", "E", 1083U, 7U, (unsigned char)0},
        {"it8603", "E", 1083U, 7U, (unsigned char)0},
        {"it8620", "E", 3131U, 7U, (unsigned char)0}};
static int adc_lsb(struct it87_data const *data , int nr )
{
  int lsb ;
  {
  lsb = (int )data->features & 1 ? 12 : 16;
  if (((int )data->in_scaled >> nr) & 1) {
    lsb = lsb << 1;
  } else {
  }
  return (lsb);
}
}
static u8 in_to_reg(struct it87_data const *data , int nr , long val )
{
  long __x ;
  int __d ;
  int tmp ;
  long __min1 ;
  long __max1 ;
  long __max2 ;
  long __min2 ;
  {
  __x = val;
  tmp = adc_lsb(data, nr);
  __d = tmp;
  val = __x > 0L ? ((long )(__d / 2) + __x) / (long )__d : (__x - (long )(__d / 2)) / (long )__d;
  __max1 = val;
  __max2 = 0L;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 255L;
  return ((u8 )(__min1 < __min2 ? __min1 : __min2));
}
}
static int in_from_reg(struct it87_data const *data , int nr , int val )
{
  int tmp ;
  {
  tmp = adc_lsb(data, nr);
  return (tmp * val);
}
}
__inline static u8 FAN_TO_REG(long rpm , int div )
{
  long __min1 ;
  long __max1 ;
  long __max2 ;
  long __min2 ;
  long __min1___0 ;
  long __max1___0 ;
  long __max2___0 ;
  long __min2___0 ;
  {
  if (rpm == 0L) {
    return (255U);
  } else {
  }
  __max1 = rpm;
  __max2 = 1L;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 1000000L;
  rpm = __min1 < __min2 ? __min1 : __min2;
  __max1___0 = (((long )div * rpm) / 2L + 1350000L) / ((long )div * rpm);
  __max2___0 = 1L;
  __min1___0 = __max1___0 > __max2___0 ? __max1___0 : __max2___0;
  __min2___0 = 254L;
  return ((u8 )(__min1___0 < __min2___0 ? __min1___0 : __min2___0));
}
}
__inline static u16 FAN16_TO_REG(long rpm )
{
  long __min1 ;
  long __max1 ;
  long __max2 ;
  long __min2 ;
  {
  if (rpm == 0L) {
    return (65535U);
  } else {
  }
  __max1 = (rpm + 1350000L) / (rpm * 2L);
  __max2 = 1L;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 65534L;
  return ((u16 )(__min1 < __min2 ? __min1 : __min2));
}
}
static u8 pwm_to_reg(struct it87_data const *data , long val )
{
  {
  if (((int )data->features & 2) != 0) {
    return ((u8 )val);
  } else {
    return ((u8 )(val >> 1));
  }
}
}
static int pwm_from_reg(struct it87_data const *data , u8 reg )
{
  {
  if (((int )data->features & 2) != 0) {
    return ((int )reg);
  } else {
    return (((int )reg << 1) & 255);
  }
}
}
static int DIV_TO_REG(int val )
{
  int answer ;
  {
  answer = 0;
  goto ldv_30262;
  ldv_30261:
  answer = answer + 1;
  ldv_30262: ;
  if (answer <= 6) {
    val = val >> 1;
    if (val != 0) {
      goto ldv_30261;
    } else {
      goto ldv_30263;
    }
  } else {
  }
  ldv_30263: ;
  return (answer);
}
}
static unsigned int const pwm_freq[8U] =
  { 48000000U, 24000000U, 12000000U, 8000000U,
        6000000U, 3000000U, 1500000U, 750000U};
static int it87_probe(struct platform_device *pdev___0 ) ;
static int it87_remove(struct platform_device *pdev___0 ) ;
static int it87_read_value(struct it87_data *data , u8 reg ) ;
static void it87_write_value(struct it87_data *data , u8 reg , u8 value ) ;
static struct it87_data *it87_update_device(struct device *dev ) ;
static int it87_check_pwm(struct device *dev ) ;
static void it87_init_device(struct platform_device *pdev___0 ) ;
static struct platform_driver it87_driver =
     {& it87_probe, & it87_remove, 0, 0, 0, {"it87", 0, 0, 0, (_Bool)0, 0, 0, 0, 0,
                                           0, 0, 0, 0, 0, 0, 0}, 0, (_Bool)0};
static ssize_t show_in(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  struct it87_data *data ;
  struct it87_data *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sattr->nr;
  index = (int )sattr->index;
  tmp = it87_update_device(dev);
  data = tmp;
  tmp___0 = in_from_reg((struct it87_data const *)data, nr, (int )data->in[nr][index]);
  tmp___1 = sprintf(buf, "%d\n", tmp___0);
  return ((ssize_t )tmp___1);
}
}
static ssize_t set_in(struct device *dev , struct device_attribute *attr , char const *buf ,
                      size_t count )
{
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  struct it87_data *data ;
  void *tmp ;
  unsigned long val ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sattr->nr;
  index = (int )sattr->index;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct it87_data *)tmp;
  tmp___0 = kstrtoul(buf, 10U, & val);
  if (tmp___0 < 0) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_12(& data->update_lock);
  data->in[nr][index] = in_to_reg((struct it87_data const *)data, nr, (long )val);
  it87_write_value(data, (int )(index == 1 ? (unsigned int )((u8 )nr) * 2U + 49U : (unsigned int )((u8 )(nr + 24)) * 2U),
                   (int )data->in[nr][index]);
  ldv_mutex_unlock_13(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute_2 sensor_dev_attr_in0_input = {{{"in0_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0}, 0U, 0U};
static struct sensor_device_attribute_2 sensor_dev_attr_in0_min = {{{"in0_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, & set_in}, 1U, 0U};
static struct sensor_device_attribute_2 sensor_dev_attr_in0_max = {{{"in0_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, & set_in}, 2U, 0U};
static struct sensor_device_attribute_2 sensor_dev_attr_in1_input = {{{"in1_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0}, 0U, 1U};
static struct sensor_device_attribute_2 sensor_dev_attr_in1_min = {{{"in1_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, & set_in}, 1U, 1U};
static struct sensor_device_attribute_2 sensor_dev_attr_in1_max = {{{"in1_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, & set_in}, 2U, 1U};
static struct sensor_device_attribute_2 sensor_dev_attr_in2_input = {{{"in2_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0}, 0U, 2U};
static struct sensor_device_attribute_2 sensor_dev_attr_in2_min = {{{"in2_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, & set_in}, 1U, 2U};
static struct sensor_device_attribute_2 sensor_dev_attr_in2_max = {{{"in2_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, & set_in}, 2U, 2U};
static struct sensor_device_attribute_2 sensor_dev_attr_in3_input = {{{"in3_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0}, 0U, 3U};
static struct sensor_device_attribute_2 sensor_dev_attr_in3_min = {{{"in3_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, & set_in}, 1U, 3U};
static struct sensor_device_attribute_2 sensor_dev_attr_in3_max = {{{"in3_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, & set_in}, 2U, 3U};
static struct sensor_device_attribute_2 sensor_dev_attr_in4_input = {{{"in4_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0}, 0U, 4U};
static struct sensor_device_attribute_2 sensor_dev_attr_in4_min = {{{"in4_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, & set_in}, 1U, 4U};
static struct sensor_device_attribute_2 sensor_dev_attr_in4_max = {{{"in4_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, & set_in}, 2U, 4U};
static struct sensor_device_attribute_2 sensor_dev_attr_in5_input = {{{"in5_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0}, 0U, 5U};
static struct sensor_device_attribute_2 sensor_dev_attr_in5_min = {{{"in5_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, & set_in}, 1U, 5U};
static struct sensor_device_attribute_2 sensor_dev_attr_in5_max = {{{"in5_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, & set_in}, 2U, 5U};
static struct sensor_device_attribute_2 sensor_dev_attr_in6_input = {{{"in6_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0}, 0U, 6U};
static struct sensor_device_attribute_2 sensor_dev_attr_in6_min = {{{"in6_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, & set_in}, 1U, 6U};
static struct sensor_device_attribute_2 sensor_dev_attr_in6_max = {{{"in6_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, & set_in}, 2U, 6U};
static struct sensor_device_attribute_2 sensor_dev_attr_in7_input = {{{"in7_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0}, 0U, 7U};
static struct sensor_device_attribute_2 sensor_dev_attr_in7_min = {{{"in7_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, & set_in}, 1U, 7U};
static struct sensor_device_attribute_2 sensor_dev_attr_in7_max = {{{"in7_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, & set_in}, 2U, 7U};
static struct sensor_device_attribute_2 sensor_dev_attr_in8_input = {{{"in8_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0}, 0U, 8U};
static struct sensor_device_attribute_2 sensor_dev_attr_in9_input = {{{"in9_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_in, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                             size_t ))0}, 0U, 9U};
static ssize_t show_temp(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  struct it87_data *data ;
  struct it87_data *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sattr->nr;
  index = (int )sattr->index;
  tmp = it87_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%d\n", (int )data->temp[nr][index] * 1000);
  return ((ssize_t )tmp___0);
}
}
static ssize_t set_temp(struct device *dev , struct device_attribute *attr , char const *buf ,
                        size_t count )
{
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  struct it87_data *data ;
  void *tmp ;
  long val ;
  u8 reg ;
  u8 regval ;
  int tmp___0 ;
  int tmp___1 ;
  long __min1 ;
  long __max1 ;
  long __max2 ;
  long __min2 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sattr->nr;
  index = (int )sattr->index;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct it87_data *)tmp;
  tmp___0 = kstrtol(buf, 10U, & val);
  if (tmp___0 < 0) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_14(& data->update_lock);
  switch (index) {
  default: ;
  case 1:
  reg = (unsigned int )((u8 )nr) * 2U + 65U;
  goto ldv_30673;
  case 2:
  reg = (unsigned int )((u8 )(nr + 32)) * 2U;
  goto ldv_30673;
  case 3:
  tmp___1 = it87_read_value(data, 92);
  regval = (u8 )tmp___1;
  if ((int )((signed char )regval) >= 0) {
    regval = (u8 )((unsigned int )regval | 128U);
    it87_write_value(data, 92, (int )regval);
  } else {
  }
  data->valid = 0;
  reg = IT87_REG_TEMP_OFFSET[nr];
  goto ldv_30673;
  }
  ldv_30673:
  __max1 = val < 0L ? (val + -500L) / 1000L : (val + 500L) / 1000L;
  __max2 = -128L;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 127L;
  data->temp[nr][index] = (s8 )(__min1 < __min2 ? __min1 : __min2);
  it87_write_value(data, (int )reg, (int )((u8 )data->temp[nr][index]));
  ldv_mutex_unlock_15(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute_2 sensor_dev_attr_temp1_input = {{{"temp1_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                               size_t ))0}, 0U, 0U};
static struct sensor_device_attribute_2 sensor_dev_attr_temp1_min = {{{"temp1_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp, & set_temp}, 1U, 0U};
static struct sensor_device_attribute_2 sensor_dev_attr_temp1_max = {{{"temp1_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp, & set_temp}, 2U, 0U};
static struct sensor_device_attribute_2 sensor_dev_attr_temp1_offset = {{{"temp1_offset", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp, & set_temp}, 3U, 0U};
static struct sensor_device_attribute_2 sensor_dev_attr_temp2_input = {{{"temp2_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                               size_t ))0}, 0U, 1U};
static struct sensor_device_attribute_2 sensor_dev_attr_temp2_min = {{{"temp2_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp, & set_temp}, 1U, 1U};
static struct sensor_device_attribute_2 sensor_dev_attr_temp2_max = {{{"temp2_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp, & set_temp}, 2U, 1U};
static struct sensor_device_attribute_2 sensor_dev_attr_temp2_offset = {{{"temp2_offset", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp, & set_temp}, 3U, 1U};
static struct sensor_device_attribute_2 sensor_dev_attr_temp3_input = {{{"temp3_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                               size_t ))0}, 0U, 2U};
static struct sensor_device_attribute_2 sensor_dev_attr_temp3_min = {{{"temp3_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp, & set_temp}, 1U, 2U};
static struct sensor_device_attribute_2 sensor_dev_attr_temp3_max = {{{"temp3_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp, & set_temp}, 2U, 2U};
static struct sensor_device_attribute_2 sensor_dev_attr_temp3_offset = {{{"temp3_offset", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp, & set_temp}, 3U, 2U};
static ssize_t show_temp_type(struct device *dev , struct device_attribute *attr ,
                              char *buf )
{
  struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  struct it87_data *data ;
  struct it87_data *tmp ;
  u8 reg ;
  u8 extra ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  nr = sensor_attr->index;
  tmp = it87_update_device(dev);
  data = tmp;
  reg = data->sensor;
  extra = data->extra;
  if (((((int )data->features & 32) != 0 && ((int )data->peci_mask >> nr) & 1) && (int )reg >> 6 == nr + 1) || ((((int )data->features & 64) != 0 && ((int )data->old_peci_mask >> nr) & 1) && (int )((signed char )extra) < 0)) {
    tmp___0 = sprintf(buf, "6\n");
    return ((ssize_t )tmp___0);
  } else {
  }
  if (((int )reg >> nr) & 1) {
    tmp___1 = sprintf(buf, "3\n");
    return ((ssize_t )tmp___1);
  } else {
  }
  if (((int )reg & (8 << nr)) != 0) {
    tmp___2 = sprintf(buf, "4\n");
    return ((ssize_t )tmp___2);
  } else {
  }
  tmp___3 = sprintf(buf, "0\n");
  return ((ssize_t )tmp___3);
}
}
static ssize_t set_temp_type(struct device *dev , struct device_attribute *attr ,
                             char const *buf , size_t count )
{
  struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  struct it87_data *data ;
  void *tmp ;
  long val ;
  u8 reg ;
  u8 extra ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  nr = sensor_attr->index;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct it87_data *)tmp;
  tmp___0 = kstrtol(buf, 10U, & val);
  if (tmp___0 < 0) {
    return (-22L);
  } else {
  }
  tmp___1 = it87_read_value(data, 81);
  reg = (u8 )tmp___1;
  reg = (u8 )(~ ((int )((signed char )(1 << nr))) & (int )((signed char )reg));
  reg = (u8 )(~ ((int )((signed char )(8 << nr))) & (int )((signed char )reg));
  if ((((int )data->features & 32) != 0 && ((int )data->peci_mask >> nr) & 1) && ((int )reg >> 6 == nr + 1 || val == 6L)) {
    reg = (unsigned int )reg & 63U;
  } else {
  }
  tmp___2 = it87_read_value(data, 85);
  extra = (u8 )tmp___2;
  if ((((int )data->features & 64) != 0 && ((int )data->old_peci_mask >> nr) & 1) && ((int )((signed char )extra) < 0 || val == 6L)) {
    extra = (unsigned int )extra & 127U;
  } else {
  }
  if (val == 2L) {
    dev_warn((struct device const *)dev, "Sensor type 2 is deprecated, please use 4 instead\n");
    val = 4L;
  } else {
  }
  if (val == 3L) {
    reg = (u8 )((int )((signed char )(1 << nr)) | (int )((signed char )reg));
  } else
  if (val == 4L) {
    reg = (u8 )((int )((signed char )(8 << nr)) | (int )((signed char )reg));
  } else
  if ((((int )data->features & 32) != 0 && ((int )data->peci_mask >> nr) & 1) && val == 6L) {
    reg = (u8 )((int )((signed char )((nr + 1) << 6)) | (int )((signed char )reg));
  } else
  if ((((int )data->features & 64) != 0 && ((int )data->old_peci_mask >> nr) & 1) && val == 6L) {
    extra = (u8 )((unsigned int )extra | 128U);
  } else
  if (val != 0L) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_16(& data->update_lock);
  data->sensor = reg;
  data->extra = extra;
  it87_write_value(data, 81, (int )data->sensor);
  if (((int )data->features & 64) != 0 && ((int )data->old_peci_mask >> nr) & 1) {
    it87_write_value(data, 85, (int )data->extra);
  } else {
  }
  data->valid = 0;
  ldv_mutex_unlock_17(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute sensor_dev_attr_temp1_type = {{{"temp1_type", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp_type, & set_temp_type}, 0};
static struct sensor_device_attribute sensor_dev_attr_temp2_type = {{{"temp2_type", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp_type, & set_temp_type}, 1};
static struct sensor_device_attribute sensor_dev_attr_temp3_type = {{{"temp3_type", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_temp_type, & set_temp_type}, 2};
static int pwm_mode(struct it87_data const *data , int nr )
{
  int ctrl ;
  {
  ctrl = (int )data->fan_main_ctrl & (1 << nr);
  if (ctrl == 0 && (unsigned int )data->type != 14U) {
    return (0);
  } else {
  }
  if ((int )((signed char )data->pwm_ctrl[nr]) < 0) {
    return (2);
  } else {
    return (1);
  }
}
}
static ssize_t show_fan(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  int speed ;
  struct it87_data *data ;
  struct it87_data *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sattr->nr;
  index = (int )sattr->index;
  tmp = it87_update_device(dev);
  data = tmp;
  speed = ((int )data->features & 8) != 0 ? ((unsigned int )data->fan[nr][index] != 0U ? ((unsigned int )data->fan[nr][index] != 65535U ? 1350000 / ((int )data->fan[nr][index] * 2) : 0) : -1) : ((unsigned int )data->fan[nr][index] != 0U ? ((unsigned int )data->fan[nr][index] != 255U ? 1350000 / ((int )data->fan[nr][index] << (int )data->fan_div[nr]) : 0) : -1);
  tmp___0 = sprintf(buf, "%d\n", speed);
  return ((ssize_t )tmp___0);
}
}
static ssize_t show_fan_div(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  struct it87_data *data ;
  struct it87_data *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  nr = sensor_attr->index;
  tmp = it87_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%d\n", 1 << (int )data->fan_div[nr]);
  return ((ssize_t )tmp___0);
}
}
static ssize_t show_pwm_enable(struct device *dev , struct device_attribute *attr ,
                               char *buf )
{
  struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  struct it87_data *data ;
  struct it87_data *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  nr = sensor_attr->index;
  tmp = it87_update_device(dev);
  data = tmp;
  tmp___0 = pwm_mode((struct it87_data const *)data, nr);
  tmp___1 = sprintf(buf, "%d\n", tmp___0);
  return ((ssize_t )tmp___1);
}
}
static ssize_t show_pwm(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  struct it87_data *data ;
  struct it87_data *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  nr = sensor_attr->index;
  tmp = it87_update_device(dev);
  data = tmp;
  tmp___0 = pwm_from_reg((struct it87_data const *)data, (int )data->pwm_duty[nr]);
  tmp___1 = sprintf(buf, "%d\n", tmp___0);
  return ((ssize_t )tmp___1);
}
}
static ssize_t show_pwm_freq(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{
  struct it87_data *data ;
  struct it87_data *tmp ;
  int index ;
  unsigned int freq ;
  int tmp___0 ;
  {
  tmp = it87_update_device(dev);
  data = tmp;
  index = ((int )data->fan_ctl >> 4) & 7;
  freq = (unsigned int )pwm_freq[index] / (((int )data->features & 2) != 0 ? 256U : 128U);
  tmp___0 = sprintf(buf, "%u\n", freq);
  return ((ssize_t )tmp___0);
}
}
static ssize_t set_fan(struct device *dev , struct device_attribute *attr , char const *buf ,
                       size_t count )
{
  struct sensor_device_attribute_2 *sattr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int index ;
  struct it87_data *data ;
  void *tmp ;
  long val ;
  u8 reg ;
  int tmp___0 ;
  int tmp___1 ;
  u8 tmp___2 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sattr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sattr->nr;
  index = (int )sattr->index;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct it87_data *)tmp;
  tmp___0 = kstrtol(buf, 10U, & val);
  if (tmp___0 < 0) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_18(& data->update_lock);
  if (((int )data->features & 8) != 0) {
    data->fan[nr][index] = FAN16_TO_REG(val);
    it87_write_value(data, (int )IT87_REG_FAN_MIN[nr], (int )((u8 )data->fan[nr][index]));
    it87_write_value(data, (int )IT87_REG_FANX_MIN[nr], (int )((u8 )((int )data->fan[nr][index] >> 8)));
  } else {
    tmp___1 = it87_read_value(data, 11);
    reg = (u8 )tmp___1;
    switch (nr) {
    case 0:
    data->fan_div[nr] = (unsigned int )reg & 7U;
    goto ldv_30973;
    case 1:
    data->fan_div[nr] = (unsigned int )((u8 )((int )reg >> 3)) & 7U;
    goto ldv_30973;
    case 2:
    data->fan_div[nr] = ((int )reg & 64) != 0 ? 3U : 1U;
    goto ldv_30973;
    }
    ldv_30973:
    tmp___2 = FAN_TO_REG(val, 1 << (int )data->fan_div[nr]);
    data->fan[nr][index] = (u16 )tmp___2;
    it87_write_value(data, (int )IT87_REG_FAN_MIN[nr], (int )((u8 )data->fan[nr][index]));
  }
  ldv_mutex_unlock_19(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t set_fan_div(struct device *dev , struct device_attribute *attr , char const *buf ,
                           size_t count )
{
  struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  struct it87_data *data ;
  void *tmp ;
  unsigned long val ;
  int min ;
  u8 old ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  u8 tmp___3 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  nr = sensor_attr->index;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct it87_data *)tmp;
  tmp___0 = kstrtoul(buf, 10U, & val);
  if (tmp___0 < 0) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_20(& data->update_lock);
  tmp___1 = it87_read_value(data, 11);
  old = (u8 )tmp___1;
  min = (unsigned int )data->fan[nr][1] != 0U ? ((unsigned int )data->fan[nr][1] != 255U ? 1350000 / ((int )data->fan[nr][1] << (int )data->fan_div[nr]) : 0) : -1;
  switch (nr) {
  case 0: ;
  case 1:
  tmp___2 = DIV_TO_REG((int )val);
  data->fan_div[nr] = (u8 )tmp___2;
  goto ldv_30992;
  case 2: ;
  if (val <= 7UL) {
    data->fan_div[nr] = 1U;
  } else {
    data->fan_div[nr] = 3U;
  }
  }
  ldv_30992:
  val = (unsigned long )old & 128UL;
  val = ((unsigned long )data->fan_div[0] & 7UL) | val;
  val = (unsigned long )(((int )data->fan_div[1] & 7) << 3) | val;
  if ((unsigned int )data->fan_div[2] == 3U) {
    val = val | 64UL;
  } else {
  }
  it87_write_value(data, 11, (int )((u8 )val));
  tmp___3 = FAN_TO_REG((long )min, 1 << (int )data->fan_div[nr]);
  data->fan[nr][1] = (u16 )tmp___3;
  it87_write_value(data, (int )IT87_REG_FAN_MIN[nr], (int )((u8 )data->fan[nr][1]));
  ldv_mutex_unlock_21(& data->update_lock);
  return ((ssize_t )count);
}
}
static int check_trip_points(struct device *dev , int nr )
{
  struct it87_data const *data ;
  void *tmp ;
  int i ;
  int err ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct it87_data const *)tmp;
  err = 0;
  if (((int )data->features & 4) != 0) {
    i = 0;
    goto ldv_31002;
    ldv_31001: ;
    if ((int )data->auto_temp[nr][i] > (int )data->auto_temp[nr][i + 1]) {
      err = -22;
    } else {
    }
    i = i + 1;
    ldv_31002: ;
    if (i <= 2) {
      goto ldv_31001;
    } else {
    }
    i = 0;
    goto ldv_31005;
    ldv_31004: ;
    if ((int )data->auto_pwm[nr][i] > (int )data->auto_pwm[nr][i + 1]) {
      err = -22;
    } else {
    }
    i = i + 1;
    ldv_31005: ;
    if (i <= 1) {
      goto ldv_31004;
    } else {
    }
  } else {
  }
  if (err != 0) {
    dev_err((struct device const *)dev, "Inconsistent trip points, not switching to automatic mode\n");
    dev_err((struct device const *)dev, "Adjust the trip points and try again\n");
  } else {
  }
  return (err);
}
}
static ssize_t set_pwm_enable(struct device *dev , struct device_attribute *attr ,
                              char const *buf , size_t count )
{
  struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  struct it87_data *data ;
  void *tmp ;
  long val ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  nr = sensor_attr->index;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct it87_data *)tmp;
  tmp___0 = kstrtol(buf, 10U, & val);
  if ((tmp___0 < 0 || val < 0L) || val > 2L) {
    return (-22L);
  } else {
  }
  if (val == 2L) {
    tmp___1 = check_trip_points(dev, nr);
    if (tmp___1 < 0) {
      return (-22L);
    } else {
    }
  } else {
  }
  if (val == 0L && (unsigned int )data->type == 14U) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_22(& data->update_lock);
  if (val == 0L) {
    tmp___2 = it87_read_value(data, 20);
    it87_write_value(data, 20, (int )((u8 )((int )((signed char )(1 << nr)) | (int )((signed char )tmp___2))));
    data->fan_main_ctrl = (u8 )((int )((signed char )data->fan_main_ctrl) & ~ ((int )((signed char )(1 << nr))));
    it87_write_value(data, 19, (int )data->fan_main_ctrl);
  } else {
    if (val == 1L) {
      data->pwm_ctrl[nr] = ((int )data->features & 2) != 0 ? data->pwm_temp_map[nr] : data->pwm_duty[nr];
    } else {
      data->pwm_ctrl[nr] = (u8 )((unsigned int )data->pwm_temp_map[nr] | 128U);
    }
    it87_write_value(data, (int )((unsigned int )((u8 )nr) + 21U), (int )data->pwm_ctrl[nr]);
    if ((unsigned int )data->type != 14U) {
      data->fan_main_ctrl = (u8 )((int )((signed char )data->fan_main_ctrl) | (int )((signed char )(1 << nr)));
      it87_write_value(data, 19, (int )data->fan_main_ctrl);
    } else {
    }
  }
  ldv_mutex_unlock_23(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t set_pwm(struct device *dev , struct device_attribute *attr , char const *buf ,
                       size_t count )
{
  struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  struct it87_data *data ;
  void *tmp ;
  long val ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  nr = sensor_attr->index;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct it87_data *)tmp;
  tmp___0 = kstrtol(buf, 10U, & val);
  if ((tmp___0 < 0 || val < 0L) || val > 255L) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_24(& data->update_lock);
  if (((int )data->features & 2) != 0) {
    if ((int )((signed char )data->pwm_ctrl[nr]) < 0) {
      ldv_mutex_unlock_25(& data->update_lock);
      return (-16L);
    } else {
    }
    data->pwm_duty[nr] = pwm_to_reg((struct it87_data const *)data, val);
    it87_write_value(data, (int )((unsigned int )((u8 )nr) * 8U + 99U), (int )data->pwm_duty[nr]);
  } else {
    data->pwm_duty[nr] = pwm_to_reg((struct it87_data const *)data, val);
    if ((int )((signed char )data->pwm_ctrl[nr]) >= 0) {
      data->pwm_ctrl[nr] = data->pwm_duty[nr];
      it87_write_value(data, (int )((unsigned int )((u8 )nr) + 21U), (int )data->pwm_ctrl[nr]);
    } else {
    }
  }
  ldv_mutex_unlock_26(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t set_pwm_freq(struct device *dev , struct device_attribute *attr , char const *buf ,
                            size_t count )
{
  struct it87_data *data ;
  void *tmp ;
  unsigned long val ;
  int i ;
  int tmp___0 ;
  unsigned long __min1 ;
  unsigned long __max1 ;
  unsigned long __max2 ;
  unsigned long __min2 ;
  int tmp___1 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct it87_data *)tmp;
  tmp___0 = kstrtoul(buf, 10U, & val);
  if (tmp___0 < 0) {
    return (-22L);
  } else {
  }
  __max1 = val;
  __max2 = 0UL;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 1000000UL;
  val = __min1 < __min2 ? __min1 : __min2;
  val = (((int )data->features & 2) != 0 ? 256UL : 128UL) * val;
  i = 0;
  goto ldv_31049;
  ldv_31048: ;
  if ((unsigned long )(((unsigned int )pwm_freq[i] + (unsigned int )pwm_freq[i + 1]) / 2U) < val) {
    goto ldv_31047;
  } else {
  }
  i = i + 1;
  ldv_31049: ;
  if (i <= 6) {
    goto ldv_31048;
  } else {
  }
  ldv_31047:
  ldv_mutex_lock_27(& data->update_lock);
  tmp___1 = it87_read_value(data, 20);
  data->fan_ctl = (unsigned int )((u8 )tmp___1) & 143U;
  data->fan_ctl = (u8 )((int )((signed char )data->fan_ctl) | (int )((signed char )(i << 4)));
  it87_write_value(data, 20, (int )data->fan_ctl);
  ldv_mutex_unlock_28(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t show_pwm_temp_map(struct device *dev , struct device_attribute *attr ,
                                 char *buf )
{
  struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  struct it87_data *data ;
  struct it87_data *tmp ;
  int map ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  nr = sensor_attr->index;
  tmp = it87_update_device(dev);
  data = tmp;
  if ((unsigned int )data->pwm_temp_map[nr] <= 2U) {
    map = 1 << (int )data->pwm_temp_map[nr];
  } else {
    map = 0;
  }
  tmp___0 = sprintf(buf, "%d\n", map);
  return ((ssize_t )tmp___0);
}
}
static ssize_t set_pwm_temp_map(struct device *dev , struct device_attribute *attr ,
                                char const *buf , size_t count )
{
  struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  struct it87_data *data ;
  void *tmp ;
  long val ;
  u8 reg ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  nr = sensor_attr->index;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct it87_data *)tmp;
  if (((int )data->features & 4) == 0) {
    dev_notice((struct device const *)dev, "Mapping change disabled for safety reasons\n");
    return (-22L);
  } else {
  }
  tmp___0 = kstrtol(buf, 10U, & val);
  if (tmp___0 < 0) {
    return (-22L);
  } else {
  }
  switch (val) {
  case 1L:
  reg = 0U;
  goto ldv_31075;
  case 2L:
  reg = 1U;
  goto ldv_31075;
  case 4L:
  reg = 2U;
  goto ldv_31075;
  default: ;
  return (-22L);
  }
  ldv_31075:
  ldv_mutex_lock_29(& data->update_lock);
  data->pwm_temp_map[nr] = reg;
  if ((int )((signed char )data->pwm_ctrl[nr]) < 0) {
    data->pwm_ctrl[nr] = (u8 )((unsigned int )data->pwm_temp_map[nr] | 128U);
    it87_write_value(data, (int )((unsigned int )((u8 )nr) + 21U), (int )data->pwm_ctrl[nr]);
  } else {
  }
  ldv_mutex_unlock_30(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t show_auto_pwm(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{
  struct it87_data *data ;
  struct it87_data *tmp ;
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int point ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = it87_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sensor_attr->nr;
  point = (int )sensor_attr->index;
  tmp___0 = pwm_from_reg((struct it87_data const *)data, (int )data->auto_pwm[nr][point]);
  tmp___1 = sprintf(buf, "%d\n", tmp___0);
  return ((ssize_t )tmp___1);
}
}
static ssize_t set_auto_pwm(struct device *dev , struct device_attribute *attr , char const *buf ,
                            size_t count )
{
  struct it87_data *data ;
  void *tmp ;
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int point ;
  long val ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct it87_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sensor_attr->nr;
  point = (int )sensor_attr->index;
  tmp___0 = kstrtol(buf, 10U, & val);
  if ((tmp___0 < 0 || val < 0L) || val > 255L) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_31(& data->update_lock);
  data->auto_pwm[nr][point] = pwm_to_reg((struct it87_data const *)data, val);
  it87_write_value(data, (int )(((unsigned int )((u8 )nr) * 8U + (unsigned int )((u8 )point)) + 101U),
                   (int )data->auto_pwm[nr][point]);
  ldv_mutex_unlock_32(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t show_auto_temp(struct device *dev , struct device_attribute *attr ,
                              char *buf )
{
  struct it87_data *data ;
  struct it87_data *tmp ;
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int point ;
  int tmp___0 ;
  {
  tmp = it87_update_device(dev);
  data = tmp;
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sensor_attr->nr;
  point = (int )sensor_attr->index;
  tmp___0 = sprintf(buf, "%d\n", (int )data->auto_temp[nr][point] * 1000);
  return ((ssize_t )tmp___0);
}
}
static ssize_t set_auto_temp(struct device *dev , struct device_attribute *attr ,
                             char const *buf , size_t count )
{
  struct it87_data *data ;
  void *tmp ;
  struct sensor_device_attribute_2 *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  int point ;
  long val ;
  int tmp___0 ;
  long __min1 ;
  long __max1 ;
  long __max2 ;
  long __min2 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct it87_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute_2 *)__mptr;
  nr = (int )sensor_attr->nr;
  point = (int )sensor_attr->index;
  tmp___0 = kstrtol(buf, 10U, & val);
  if ((tmp___0 < 0 || val < -128000L) || val > 127000L) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_33(& data->update_lock);
  __max1 = val < 0L ? (val + -500L) / 1000L : (val + 500L) / 1000L;
  __max2 = -128L;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 127L;
  data->auto_temp[nr][point] = (s8 )(__min1 < __min2 ? __min1 : __min2);
  it87_write_value(data, (int )((unsigned int )((u8 )(nr + 12)) * 8U + (unsigned int )((u8 )point)),
                   (int )((u8 )data->auto_temp[nr][point]));
  ldv_mutex_unlock_34(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute_2 sensor_dev_attr_fan1_input = {{{"fan1_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                              size_t ))0}, 0U, 0U};
static struct sensor_device_attribute_2 sensor_dev_attr_fan1_min = {{{"fan1_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan, & set_fan}, 1U, 0U};
static struct sensor_device_attribute sensor_dev_attr_fan1_div = {{{"fan1_div", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan_div, & set_fan_div}, 0};
static struct sensor_device_attribute_2 sensor_dev_attr_fan2_input = {{{"fan2_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                              size_t ))0}, 0U, 1U};
static struct sensor_device_attribute_2 sensor_dev_attr_fan2_min = {{{"fan2_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan, & set_fan}, 1U, 1U};
static struct sensor_device_attribute sensor_dev_attr_fan2_div = {{{"fan2_div", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan_div, & set_fan_div}, 1};
static struct sensor_device_attribute_2 sensor_dev_attr_fan3_input = {{{"fan3_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                              size_t ))0}, 0U, 2U};
static struct sensor_device_attribute_2 sensor_dev_attr_fan3_min = {{{"fan3_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan, & set_fan}, 1U, 2U};
static struct sensor_device_attribute sensor_dev_attr_fan3_div = {{{"fan3_div", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan_div, & set_fan_div}, 2};
static struct sensor_device_attribute_2 sensor_dev_attr_fan4_input = {{{"fan4_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                              size_t ))0}, 0U, 3U};
static struct sensor_device_attribute_2 sensor_dev_attr_fan4_min = {{{"fan4_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan, & set_fan}, 1U, 3U};
static struct sensor_device_attribute_2 sensor_dev_attr_fan5_input = {{{"fan5_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                              size_t ))0}, 0U, 4U};
static struct sensor_device_attribute_2 sensor_dev_attr_fan5_min = {{{"fan5_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan, & set_fan}, 1U, 4U};
static struct sensor_device_attribute_2 sensor_dev_attr_fan6_input = {{{"fan6_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                              size_t ))0}, 0U, 5U};
static struct sensor_device_attribute_2 sensor_dev_attr_fan6_min = {{{"fan6_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_fan, & set_fan}, 1U, 5U};
static struct sensor_device_attribute sensor_dev_attr_pwm1_enable = {{{"pwm1_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_pwm_enable, & set_pwm_enable}, 0};
static struct sensor_device_attribute sensor_dev_attr_pwm1 = {{{"pwm1", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
     & set_pwm}, 0};
static struct device_attribute dev_attr_pwm1_freq = {{"pwm1_freq", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_pwm_freq, & set_pwm_freq};
static struct sensor_device_attribute sensor_dev_attr_pwm1_auto_channels_temp = {{{"pwm1_auto_channels_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm_temp_map,
     & set_pwm_temp_map}, 0};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm1_auto_point1_pwm = {{{"pwm1_auto_point1_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & show_auto_pwm,
     & set_auto_pwm}, 0U, 0U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm1_auto_point2_pwm = {{{"pwm1_auto_point2_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & show_auto_pwm,
     & set_auto_pwm}, 1U, 0U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm1_auto_point3_pwm = {{{"pwm1_auto_point3_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & show_auto_pwm,
     & set_auto_pwm}, 2U, 0U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm1_auto_point4_pwm = {{{"pwm1_auto_point4_pwm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & show_auto_pwm,
     (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0},
    3U, 0U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm1_auto_point1_temp = {{{"pwm1_auto_point1_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & set_auto_temp},
    1U, 0U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm1_auto_point1_temp_hyst = {{{"pwm1_auto_point1_temp_hyst",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & set_auto_temp},
    0U, 0U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm1_auto_point2_temp = {{{"pwm1_auto_point2_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & set_auto_temp},
    2U, 0U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm1_auto_point3_temp = {{{"pwm1_auto_point3_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & set_auto_temp},
    3U, 0U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm1_auto_point4_temp = {{{"pwm1_auto_point4_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & set_auto_temp},
    4U, 0U};
static struct sensor_device_attribute sensor_dev_attr_pwm2_enable = {{{"pwm2_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_pwm_enable, & set_pwm_enable}, 1};
static struct sensor_device_attribute sensor_dev_attr_pwm2 = {{{"pwm2", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
     & set_pwm}, 1};
static struct device_attribute dev_attr_pwm2_freq = {{"pwm2_freq", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_pwm_freq, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                  size_t ))0};
static struct sensor_device_attribute sensor_dev_attr_pwm2_auto_channels_temp = {{{"pwm2_auto_channels_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm_temp_map,
     & set_pwm_temp_map}, 1};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm2_auto_point1_pwm = {{{"pwm2_auto_point1_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & show_auto_pwm,
     & set_auto_pwm}, 0U, 1U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm2_auto_point2_pwm = {{{"pwm2_auto_point2_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & show_auto_pwm,
     & set_auto_pwm}, 1U, 1U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm2_auto_point3_pwm = {{{"pwm2_auto_point3_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & show_auto_pwm,
     & set_auto_pwm}, 2U, 1U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm2_auto_point4_pwm = {{{"pwm2_auto_point4_pwm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & show_auto_pwm,
     (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0},
    3U, 1U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm2_auto_point1_temp = {{{"pwm2_auto_point1_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & set_auto_temp},
    1U, 1U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm2_auto_point1_temp_hyst = {{{"pwm2_auto_point1_temp_hyst",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & set_auto_temp},
    0U, 1U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm2_auto_point2_temp = {{{"pwm2_auto_point2_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & set_auto_temp},
    2U, 1U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm2_auto_point3_temp = {{{"pwm2_auto_point3_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & set_auto_temp},
    3U, 1U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm2_auto_point4_temp = {{{"pwm2_auto_point4_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & set_auto_temp},
    4U, 1U};
static struct sensor_device_attribute sensor_dev_attr_pwm3_enable = {{{"pwm3_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_pwm_enable, & set_pwm_enable}, 2};
static struct sensor_device_attribute sensor_dev_attr_pwm3 = {{{"pwm3", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
     & set_pwm}, 2};
static struct device_attribute dev_attr_pwm3_freq = {{"pwm3_freq", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_pwm_freq, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                  size_t ))0};
static struct sensor_device_attribute sensor_dev_attr_pwm3_auto_channels_temp = {{{"pwm3_auto_channels_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm_temp_map,
     & set_pwm_temp_map}, 2};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm3_auto_point1_pwm = {{{"pwm3_auto_point1_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & show_auto_pwm,
     & set_auto_pwm}, 0U, 2U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm3_auto_point2_pwm = {{{"pwm3_auto_point2_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & show_auto_pwm,
     & set_auto_pwm}, 1U, 2U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm3_auto_point3_pwm = {{{"pwm3_auto_point3_pwm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & show_auto_pwm,
     & set_auto_pwm}, 2U, 2U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm3_auto_point4_pwm = {{{"pwm3_auto_point4_pwm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & show_auto_pwm,
     (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0},
    3U, 2U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm3_auto_point1_temp = {{{"pwm3_auto_point1_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & set_auto_temp},
    1U, 2U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm3_auto_point1_temp_hyst = {{{"pwm3_auto_point1_temp_hyst",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & set_auto_temp},
    0U, 2U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm3_auto_point2_temp = {{{"pwm3_auto_point2_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & set_auto_temp},
    2U, 2U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm3_auto_point3_temp = {{{"pwm3_auto_point3_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & set_auto_temp},
    3U, 2U};
static struct sensor_device_attribute_2 sensor_dev_attr_pwm3_auto_point4_temp = {{{"pwm3_auto_point4_temp",
      420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                           {(char)0}, {(char)0}, {(char)0}}}}, & show_auto_temp, & set_auto_temp},
    4U, 2U};
static ssize_t show_alarms(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct it87_data *data ;
  struct it87_data *tmp ;
  int tmp___0 ;
  {
  tmp = it87_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%u\n", data->alarms);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_alarms = {{"alarms", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & show_alarms,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t show_alarm(struct device *dev , struct device_attribute *attr , char *buf )
{
  int bitnr ;
  struct device_attribute const *__mptr ;
  struct it87_data *data ;
  struct it87_data *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  bitnr = ((struct sensor_device_attribute *)__mptr)->index;
  tmp = it87_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%u\n", (data->alarms >> bitnr) & 1U);
  return ((ssize_t )tmp___0);
}
}
static ssize_t clear_intrusion(struct device *dev , struct device_attribute *attr ,
                               char const *buf , size_t count )
{
  struct it87_data *data ;
  void *tmp ;
  long val ;
  int config ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct it87_data *)tmp;
  tmp___0 = kstrtol(buf, 10U, & val);
  if (tmp___0 < 0 || val != 0L) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_35(& data->update_lock);
  config = it87_read_value(data, 0);
  if (config < 0) {
    count = (size_t )config;
  } else {
    config = config | 32;
    it87_write_value(data, 0, (int )((u8 )config));
    data->valid = 0;
  }
  ldv_mutex_unlock_36(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute sensor_dev_attr_in0_alarm = {{{"in0_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 8};
static struct sensor_device_attribute sensor_dev_attr_in1_alarm = {{{"in1_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 9};
static struct sensor_device_attribute sensor_dev_attr_in2_alarm = {{{"in2_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 10};
static struct sensor_device_attribute sensor_dev_attr_in3_alarm = {{{"in3_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 11};
static struct sensor_device_attribute sensor_dev_attr_in4_alarm = {{{"in4_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 12};
static struct sensor_device_attribute sensor_dev_attr_in5_alarm = {{{"in5_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 13};
static struct sensor_device_attribute sensor_dev_attr_in6_alarm = {{{"in6_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 14};
static struct sensor_device_attribute sensor_dev_attr_in7_alarm = {{{"in7_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 15};
static struct sensor_device_attribute sensor_dev_attr_fan1_alarm = {{{"fan1_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 0};
static struct sensor_device_attribute sensor_dev_attr_fan2_alarm = {{{"fan2_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 1};
static struct sensor_device_attribute sensor_dev_attr_fan3_alarm = {{{"fan3_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 2};
static struct sensor_device_attribute sensor_dev_attr_fan4_alarm = {{{"fan4_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 3};
static struct sensor_device_attribute sensor_dev_attr_fan5_alarm = {{{"fan5_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 6};
static struct sensor_device_attribute sensor_dev_attr_fan6_alarm = {{{"fan6_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 7};
static struct sensor_device_attribute sensor_dev_attr_temp1_alarm = {{{"temp1_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 16};
static struct sensor_device_attribute sensor_dev_attr_temp2_alarm = {{{"temp2_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 17};
static struct sensor_device_attribute sensor_dev_attr_temp3_alarm = {{{"temp3_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 18};
static struct sensor_device_attribute sensor_dev_attr_intrusion0_alarm = {{{"intrusion0_alarm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_alarm, & clear_intrusion}, 4};
static ssize_t show_beep(struct device *dev , struct device_attribute *attr , char *buf )
{
  int bitnr ;
  struct device_attribute const *__mptr ;
  struct it87_data *data ;
  struct it87_data *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  bitnr = ((struct sensor_device_attribute *)__mptr)->index;
  tmp = it87_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%u\n", ((int )data->beeps >> bitnr) & 1);
  return ((ssize_t )tmp___0);
}
}
static ssize_t set_beep(struct device *dev , struct device_attribute *attr , char const *buf ,
                        size_t count )
{
  int bitnr ;
  struct device_attribute const *__mptr ;
  struct it87_data *data ;
  void *tmp ;
  long val ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device_attribute const *)attr;
  bitnr = ((struct sensor_device_attribute *)__mptr)->index;
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct it87_data *)tmp;
  tmp___0 = kstrtol(buf, 10U, & val);
  if (tmp___0 < 0 || (val != 0L && val != 1L)) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_37(& data->update_lock);
  tmp___1 = it87_read_value(data, 92);
  data->beeps = (u8 )tmp___1;
  if (val != 0L) {
    data->beeps = (u8 )((int )((signed char )data->beeps) | (int )((signed char )(1 << bitnr)));
  } else {
    data->beeps = (u8 )((int )((signed char )data->beeps) & ~ ((int )((signed char )(1 << bitnr))));
  }
  it87_write_value(data, 92, (int )data->beeps);
  ldv_mutex_unlock_38(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute sensor_dev_attr_in0_beep = {{{"in0_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & set_beep}, 1};
static struct sensor_device_attribute sensor_dev_attr_in1_beep = {{{"in1_beep", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                               size_t ))0}, 1};
static struct sensor_device_attribute sensor_dev_attr_in2_beep = {{{"in2_beep", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                               size_t ))0}, 1};
static struct sensor_device_attribute sensor_dev_attr_in3_beep = {{{"in3_beep", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                               size_t ))0}, 1};
static struct sensor_device_attribute sensor_dev_attr_in4_beep = {{{"in4_beep", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                               size_t ))0}, 1};
static struct sensor_device_attribute sensor_dev_attr_in5_beep = {{{"in5_beep", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                               size_t ))0}, 1};
static struct sensor_device_attribute sensor_dev_attr_in6_beep = {{{"in6_beep", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                               size_t ))0}, 1};
static struct sensor_device_attribute sensor_dev_attr_in7_beep = {{{"in7_beep", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                               size_t ))0}, 1};
static struct sensor_device_attribute sensor_dev_attr_fan1_beep = {{{"fan1_beep", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & set_beep}, 0};
static struct sensor_device_attribute sensor_dev_attr_fan2_beep = {{{"fan2_beep", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & set_beep}, 0};
static struct sensor_device_attribute sensor_dev_attr_fan3_beep = {{{"fan3_beep", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & set_beep}, 0};
static struct sensor_device_attribute sensor_dev_attr_fan4_beep = {{{"fan4_beep", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & set_beep}, 0};
static struct sensor_device_attribute sensor_dev_attr_fan5_beep = {{{"fan5_beep", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & set_beep}, 0};
static struct sensor_device_attribute sensor_dev_attr_fan6_beep = {{{"fan6_beep", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & set_beep}, 0};
static struct sensor_device_attribute sensor_dev_attr_temp1_beep = {{{"temp1_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, & set_beep}, 2};
static struct sensor_device_attribute sensor_dev_attr_temp2_beep = {{{"temp2_beep", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                               size_t ))0}, 2};
static struct sensor_device_attribute sensor_dev_attr_temp3_beep = {{{"temp3_beep", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_beep, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                               size_t ))0}, 2};
static ssize_t show_vrm_reg(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct it87_data *data ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct it87_data *)tmp;
  tmp___0 = sprintf(buf, "%u\n", (int )data->vrm);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_vrm_reg(struct device *dev , struct device_attribute *attr ,
                             char const *buf , size_t count )
{
  struct it87_data *data ;
  void *tmp ;
  unsigned long val ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct it87_data *)tmp;
  tmp___0 = kstrtoul(buf, 10U, & val);
  if (tmp___0 < 0) {
    return (-22L);
  } else {
  }
  data->vrm = (u8 )val;
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_vrm = {{"vrm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                 {(char)0}, {(char)0}, {(char)0}}}}, & show_vrm_reg,
    & store_vrm_reg};
static ssize_t show_vid_reg(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct it87_data *data ;
  struct it87_data *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = it87_update_device(dev);
  data = tmp;
  tmp___0 = vid_from_reg((int )data->vid, (int )data->vrm);
  tmp___1 = sprintf(buf, "%ld\n", (long )tmp___0);
  return ((ssize_t )tmp___1);
}
}
static struct device_attribute dev_attr_cpu0_vid = {{"cpu0_vid", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_vid_reg, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                 size_t ))0};
static ssize_t show_label(struct device *dev , struct device_attribute *attr , char *buf )
{
  char const *labels[3U] ;
  char const *labels_it8721[3U] ;
  struct it87_data *data ;
  void *tmp ;
  int nr ;
  struct device_attribute const *__mptr ;
  int tmp___0 ;
  {
  labels[0] = "+5V";
  labels[1] = "5VSB";
  labels[2] = "Vbat";
  labels_it8721[0] = "+3.3V";
  labels_it8721[1] = "3VSB";
  labels_it8721[2] = "Vbat";
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct it87_data *)tmp;
  __mptr = (struct device_attribute const *)attr;
  nr = ((struct sensor_device_attribute *)__mptr)->index;
  tmp___0 = sprintf(buf, "%s\n", (int )data->features & 1 ? labels_it8721[nr] : labels[nr]);
  return ((ssize_t )tmp___0);
}
}
static struct sensor_device_attribute sensor_dev_attr_in3_label = {{{"in3_label", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_label, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 0};
static struct sensor_device_attribute sensor_dev_attr_in7_label = {{{"in7_label", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_label, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 1};
static struct sensor_device_attribute sensor_dev_attr_in8_label = {{{"in8_label", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_label, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 2};
static struct sensor_device_attribute sensor_dev_attr_in9_label = {{{"in9_label", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & show_label, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0}, 0};
static ssize_t show_name(struct device *dev , struct device_attribute *devattr , char *buf )
{
  struct it87_data *data ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct it87_data *)tmp;
  tmp___0 = sprintf(buf, "%s\n", data->name);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_name = {{"name", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, & show_name,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct attribute *it87_attributes_in[10U][5U] =
  { { & sensor_dev_attr_in0_input.dev_attr.attr, & sensor_dev_attr_in0_min.dev_attr.attr, & sensor_dev_attr_in0_max.dev_attr.attr, & sensor_dev_attr_in0_alarm.dev_attr.attr,
            (struct attribute *)0},
   { & sensor_dev_attr_in1_input.dev_attr.attr, & sensor_dev_attr_in1_min.dev_attr.attr, & sensor_dev_attr_in1_max.dev_attr.attr, & sensor_dev_attr_in1_alarm.dev_attr.attr,
            (struct attribute *)0},
   { & sensor_dev_attr_in2_input.dev_attr.attr, & sensor_dev_attr_in2_min.dev_attr.attr, & sensor_dev_attr_in2_max.dev_attr.attr, & sensor_dev_attr_in2_alarm.dev_attr.attr,
            (struct attribute *)0},
   { & sensor_dev_attr_in3_input.dev_attr.attr, & sensor_dev_attr_in3_min.dev_attr.attr, & sensor_dev_attr_in3_max.dev_attr.attr, & sensor_dev_attr_in3_alarm.dev_attr.attr,
            (struct attribute *)0},
   { & sensor_dev_attr_in4_input.dev_attr.attr, & sensor_dev_attr_in4_min.dev_attr.attr, & sensor_dev_attr_in4_max.dev_attr.attr, & sensor_dev_attr_in4_alarm.dev_attr.attr,
            (struct attribute *)0},
   { & sensor_dev_attr_in5_input.dev_attr.attr, & sensor_dev_attr_in5_min.dev_attr.attr, & sensor_dev_attr_in5_max.dev_attr.attr, & sensor_dev_attr_in5_alarm.dev_attr.attr,
            (struct attribute *)0},
   { & sensor_dev_attr_in6_input.dev_attr.attr, & sensor_dev_attr_in6_min.dev_attr.attr, & sensor_dev_attr_in6_max.dev_attr.attr, & sensor_dev_attr_in6_alarm.dev_attr.attr,
            (struct attribute *)0},
   { & sensor_dev_attr_in7_input.dev_attr.attr, & sensor_dev_attr_in7_min.dev_attr.attr, & sensor_dev_attr_in7_max.dev_attr.attr, & sensor_dev_attr_in7_alarm.dev_attr.attr,
            (struct attribute *)0},
   { & sensor_dev_attr_in8_input.dev_attr.attr, (struct attribute *)0},
   { & sensor_dev_attr_in9_input.dev_attr.attr, (struct attribute *)0}};
static struct attribute_group const it87_group_in[10U] =
  { {0, 0, (struct attribute **)(& it87_attributes_in), 0},
        {0, 0, (struct attribute **)(& it87_attributes_in) + 1U, 0},
        {0, 0, (struct attribute **)(& it87_attributes_in) + 2U, 0},
        {0, 0, (struct attribute **)(& it87_attributes_in) + 3U, 0},
        {0, 0, (struct attribute **)(& it87_attributes_in) + 4U, 0},
        {0, 0, (struct attribute **)(& it87_attributes_in) + 5U, 0},
        {0, 0, (struct attribute **)(& it87_attributes_in) + 6U, 0},
        {0, 0, (struct attribute **)(& it87_attributes_in) + 7U, 0},
        {0, 0, (struct attribute **)(& it87_attributes_in) + 8U, 0},
        {0, 0, (struct attribute **)(& it87_attributes_in) + 9U, 0}};
static struct attribute *it87_attributes_temp[3U][6U] = { { & sensor_dev_attr_temp1_input.dev_attr.attr, & sensor_dev_attr_temp1_max.dev_attr.attr, & sensor_dev_attr_temp1_min.dev_attr.attr, & sensor_dev_attr_temp1_type.dev_attr.attr,
            & sensor_dev_attr_temp1_alarm.dev_attr.attr, (struct attribute *)0},
   { & sensor_dev_attr_temp2_input.dev_attr.attr, & sensor_dev_attr_temp2_max.dev_attr.attr, & sensor_dev_attr_temp2_min.dev_attr.attr, & sensor_dev_attr_temp2_type.dev_attr.attr,
            & sensor_dev_attr_temp2_alarm.dev_attr.attr, (struct attribute *)0},
   { & sensor_dev_attr_temp3_input.dev_attr.attr, & sensor_dev_attr_temp3_max.dev_attr.attr, & sensor_dev_attr_temp3_min.dev_attr.attr, & sensor_dev_attr_temp3_type.dev_attr.attr,
            & sensor_dev_attr_temp3_alarm.dev_attr.attr, (struct attribute *)0}};
static struct attribute_group const it87_group_temp[3U] = { {0, 0, (struct attribute **)(& it87_attributes_temp), 0},
        {0, 0, (struct attribute **)(& it87_attributes_temp) + 1U, 0},
        {0, 0, (struct attribute **)(& it87_attributes_temp) + 2U, 0}};
static struct attribute *it87_attributes_temp_offset[3U] = { & sensor_dev_attr_temp1_offset.dev_attr.attr, & sensor_dev_attr_temp2_offset.dev_attr.attr, & sensor_dev_attr_temp3_offset.dev_attr.attr};
static struct attribute *it87_attributes[4U] = { & dev_attr_alarms.attr, & sensor_dev_attr_intrusion0_alarm.dev_attr.attr, & dev_attr_name.attr, (struct attribute *)0};
static struct attribute_group const it87_group = {0, 0, (struct attribute **)(& it87_attributes), 0};
static struct attribute *it87_attributes_in_beep[10U] =
  { & sensor_dev_attr_in0_beep.dev_attr.attr, & sensor_dev_attr_in1_beep.dev_attr.attr, & sensor_dev_attr_in2_beep.dev_attr.attr, & sensor_dev_attr_in3_beep.dev_attr.attr,
        & sensor_dev_attr_in4_beep.dev_attr.attr, & sensor_dev_attr_in5_beep.dev_attr.attr, & sensor_dev_attr_in6_beep.dev_attr.attr, & sensor_dev_attr_in7_beep.dev_attr.attr,
        (struct attribute *)0, (struct attribute *)0};
static struct attribute *it87_attributes_temp_beep[3U] = { & sensor_dev_attr_temp1_beep.dev_attr.attr, & sensor_dev_attr_temp2_beep.dev_attr.attr, & sensor_dev_attr_temp3_beep.dev_attr.attr};
static struct attribute *it87_attributes_fan[6U][4U] = { { & sensor_dev_attr_fan1_input.dev_attr.attr, & sensor_dev_attr_fan1_min.dev_attr.attr, & sensor_dev_attr_fan1_alarm.dev_attr.attr, (struct attribute *)0},
   { & sensor_dev_attr_fan2_input.dev_attr.attr, & sensor_dev_attr_fan2_min.dev_attr.attr, & sensor_dev_attr_fan2_alarm.dev_attr.attr, (struct attribute *)0},
   { & sensor_dev_attr_fan3_input.dev_attr.attr, & sensor_dev_attr_fan3_min.dev_attr.attr, & sensor_dev_attr_fan3_alarm.dev_attr.attr, (struct attribute *)0},
   { & sensor_dev_attr_fan4_input.dev_attr.attr, & sensor_dev_attr_fan4_min.dev_attr.attr, & sensor_dev_attr_fan4_alarm.dev_attr.attr, (struct attribute *)0},
   { & sensor_dev_attr_fan5_input.dev_attr.attr, & sensor_dev_attr_fan5_min.dev_attr.attr, & sensor_dev_attr_fan5_alarm.dev_attr.attr, (struct attribute *)0},
   { & sensor_dev_attr_fan6_input.dev_attr.attr, & sensor_dev_attr_fan6_min.dev_attr.attr, & sensor_dev_attr_fan6_alarm.dev_attr.attr, (struct attribute *)0}};
static struct attribute_group const it87_group_fan[6U] = { {0, 0, (struct attribute **)(& it87_attributes_fan), 0},
        {0, 0, (struct attribute **)(& it87_attributes_fan) + 1U, 0},
        {0, 0, (struct attribute **)(& it87_attributes_fan) + 2U, 0},
        {0, 0, (struct attribute **)(& it87_attributes_fan) + 3U, 0},
        {0, 0, (struct attribute **)(& it87_attributes_fan) + 4U, 0},
        {0, 0, (struct attribute **)(& it87_attributes_fan) + 5U, 0}};
static struct attribute const *it87_attributes_fan_div[3U] = { (struct attribute const *)(& sensor_dev_attr_fan1_div.dev_attr.attr), (struct attribute const *)(& sensor_dev_attr_fan2_div.dev_attr.attr), (struct attribute const *)(& sensor_dev_attr_fan3_div.dev_attr.attr)};
static struct attribute *it87_attributes_pwm[3U][5U] = { { & sensor_dev_attr_pwm1_enable.dev_attr.attr, & sensor_dev_attr_pwm1.dev_attr.attr, & dev_attr_pwm1_freq.attr, & sensor_dev_attr_pwm1_auto_channels_temp.dev_attr.attr,
            (struct attribute *)0},
   { & sensor_dev_attr_pwm2_enable.dev_attr.attr, & sensor_dev_attr_pwm2.dev_attr.attr, & dev_attr_pwm2_freq.attr, & sensor_dev_attr_pwm2_auto_channels_temp.dev_attr.attr,
            (struct attribute *)0},
   { & sensor_dev_attr_pwm3_enable.dev_attr.attr, & sensor_dev_attr_pwm3.dev_attr.attr, & dev_attr_pwm3_freq.attr, & sensor_dev_attr_pwm3_auto_channels_temp.dev_attr.attr,
            (struct attribute *)0}};
static struct attribute_group const it87_group_pwm[3U] = { {0, 0, (struct attribute **)(& it87_attributes_pwm), 0},
        {0, 0, (struct attribute **)(& it87_attributes_pwm) + 1U, 0},
        {0, 0, (struct attribute **)(& it87_attributes_pwm) + 2U, 0}};
static struct attribute *it87_attributes_autopwm[3U][10U] = { { & sensor_dev_attr_pwm1_auto_point1_pwm.dev_attr.attr, & sensor_dev_attr_pwm1_auto_point2_pwm.dev_attr.attr, & sensor_dev_attr_pwm1_auto_point3_pwm.dev_attr.attr, & sensor_dev_attr_pwm1_auto_point4_pwm.dev_attr.attr,
            & sensor_dev_attr_pwm1_auto_point1_temp.dev_attr.attr, & sensor_dev_attr_pwm1_auto_point1_temp_hyst.dev_attr.attr, & sensor_dev_attr_pwm1_auto_point2_temp.dev_attr.attr, & sensor_dev_attr_pwm1_auto_point3_temp.dev_attr.attr,
            & sensor_dev_attr_pwm1_auto_point4_temp.dev_attr.attr, (struct attribute *)0},
   { & sensor_dev_attr_pwm2_auto_point1_pwm.dev_attr.attr, & sensor_dev_attr_pwm2_auto_point2_pwm.dev_attr.attr, & sensor_dev_attr_pwm2_auto_point3_pwm.dev_attr.attr, & sensor_dev_attr_pwm2_auto_point4_pwm.dev_attr.attr,
            & sensor_dev_attr_pwm2_auto_point1_temp.dev_attr.attr, & sensor_dev_attr_pwm2_auto_point1_temp_hyst.dev_attr.attr, & sensor_dev_attr_pwm2_auto_point2_temp.dev_attr.attr, & sensor_dev_attr_pwm2_auto_point3_temp.dev_attr.attr,
            & sensor_dev_attr_pwm2_auto_point4_temp.dev_attr.attr, (struct attribute *)0},
   { & sensor_dev_attr_pwm3_auto_point1_pwm.dev_attr.attr, & sensor_dev_attr_pwm3_auto_point2_pwm.dev_attr.attr, & sensor_dev_attr_pwm3_auto_point3_pwm.dev_attr.attr, & sensor_dev_attr_pwm3_auto_point4_pwm.dev_attr.attr,
            & sensor_dev_attr_pwm3_auto_point1_temp.dev_attr.attr, & sensor_dev_attr_pwm3_auto_point1_temp_hyst.dev_attr.attr, & sensor_dev_attr_pwm3_auto_point2_temp.dev_attr.attr, & sensor_dev_attr_pwm3_auto_point3_temp.dev_attr.attr,
            & sensor_dev_attr_pwm3_auto_point4_temp.dev_attr.attr, (struct attribute *)0}};
static struct attribute_group const it87_group_autopwm[3U] = { {0, 0, (struct attribute **)(& it87_attributes_autopwm), 0},
        {0, 0, (struct attribute **)(& it87_attributes_autopwm) + 1U, 0},
        {0, 0, (struct attribute **)(& it87_attributes_autopwm) + 2U, 0}};
static struct attribute *it87_attributes_fan_beep[6U] = { & sensor_dev_attr_fan1_beep.dev_attr.attr, & sensor_dev_attr_fan2_beep.dev_attr.attr, & sensor_dev_attr_fan3_beep.dev_attr.attr, & sensor_dev_attr_fan4_beep.dev_attr.attr,
        & sensor_dev_attr_fan5_beep.dev_attr.attr, & sensor_dev_attr_fan6_beep.dev_attr.attr};
static struct attribute *it87_attributes_vid[3U] = { & dev_attr_vrm.attr, & dev_attr_cpu0_vid.attr, (struct attribute *)0};
static struct attribute_group const it87_group_vid = {0, 0, (struct attribute **)(& it87_attributes_vid), 0};
static struct attribute *it87_attributes_label[5U] = { & sensor_dev_attr_in3_label.dev_attr.attr, & sensor_dev_attr_in7_label.dev_attr.attr, & sensor_dev_attr_in8_label.dev_attr.attr, & sensor_dev_attr_in9_label.dev_attr.attr,
        (struct attribute *)0};
static struct attribute_group const it87_group_label = {0, 0, (struct attribute **)(& it87_attributes_label), 0};
static int it87_find(unsigned short *address , struct it87_sio_data *sio_data )
{
  int err ;
  u16 chip_type ;
  char const *board_vendor ;
  char const *board_name ;
  struct it87_devices const *config ;
  int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int reg25 ;
  int reg27 ;
  int reg2a ;
  int reg2c ;
  int regef ;
  int tmp___5 ;
  int reg27___0 ;
  int reg29 ;
  int tmp___6 ;
  int reg ;
  int tmp___7 ;
  int reg___0 ;
  bool uart6 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  {
  err = superio_enter();
  if (err != 0) {
    return (err);
  } else {
  }
  err = -19;
  if ((unsigned int )force_id == 0U) {
    tmp = superio_inw(32);
    chip_type = (u16 )tmp;
  } else {
    chip_type = force_id;
  }
  switch ((int )chip_type) {
  case 34565:
  sio_data->type = 0;
  goto ldv_32506;
  case 34578:
  sio_data->type = 1;
  goto ldv_32506;
  case 34582: ;
  case 34598:
  sio_data->type = 2;
  goto ldv_32506;
  case 34584:
  sio_data->type = 3;
  goto ldv_32506;
  case 34592:
  sio_data->type = 4;
  goto ldv_32506;
  case 34593:
  sio_data->type = 5;
  goto ldv_32506;
  case 34600:
  sio_data->type = 6;
  goto ldv_32506;
  case 34673:
  sio_data->type = 7;
  goto ldv_32506;
  case 34674:
  sio_data->type = 8;
  goto ldv_32506;
  case 34689:
  sio_data->type = 9;
  goto ldv_32506;
  case 34690:
  sio_data->type = 10;
  goto ldv_32506;
  case 34691:
  sio_data->type = 11;
  goto ldv_32506;
  case 34694:
  sio_data->type = 12;
  goto ldv_32506;
  case 34704:
  sio_data->type = 13;
  goto ldv_32506;
  case 34307: ;
  case 34339:
  sio_data->type = 14;
  goto ldv_32506;
  case 34336:
  sio_data->type = 15;
  goto ldv_32506;
  case 65535: ;
  goto exit;
  default:
  descriptor.modname = "it87";
  descriptor.function = "it87_find";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8160/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/it87.c";
  descriptor.format = "Unsupported chip (DEVID=0x%x)\n";
  descriptor.lineno = 1887U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "it87: Unsupported chip (DEVID=0x%x)\n", (int )chip_type);
  } else {
  }
  goto exit;
  }
  ldv_32506:
  superio_select(4);
  tmp___1 = superio_inb(48);
  if ((tmp___1 & 1) == 0) {
    printk("\016it87: Device not activated, skipping\n");
    goto exit;
  } else {
  }
  tmp___2 = superio_inw(96);
  *address = (unsigned int )((unsigned short )tmp___2) & 65528U;
  if ((unsigned int )*address == 0U) {
    printk("\016it87: Base address not set, skipping\n");
    goto exit;
  } else {
  }
  err = 0;
  tmp___3 = superio_inb(34);
  sio_data->revision = (unsigned int )((u8 )tmp___3) & 15U;
  printk("\016it87: Found IT%04x%s chip at 0x%x, revision %d\n", (int )chip_type,
         it87_devices[(unsigned int )sio_data->type].suffix, (int )*address, (int )sio_data->revision);
  config = (struct it87_devices const *)(& it87_devices) + (unsigned long )sio_data->type;
  if (((int )config->features & 1024) != 0) {
    sio_data->internal = (u8 )((unsigned int )sio_data->internal | 2U);
  } else {
  }
  sio_data->internal = (u8 )((unsigned int )sio_data->internal | 4U);
  if ((unsigned int )sio_data->type != 14U) {
    sio_data->skip_in = (u16 )((unsigned int )sio_data->skip_in | 512U);
  } else {
  }
  if (((int )config->features & 512) == 0) {
    sio_data->skip_vid = 1U;
  } else {
  }
  if ((unsigned int )sio_data->type == 0U) {
    superio_select(5);
    tmp___4 = superio_inb(246);
    sio_data->beep_pin = (unsigned int )((u8 )tmp___4) & 63U;
  } else
  if ((unsigned int )sio_data->type == 11U) {
    superio_select(7);
    reg25 = superio_inb(37);
    reg27 = superio_inb(39);
    reg2a = superio_inb(42);
    reg2c = superio_inb(44);
    regef = superio_inb(239);
    if (reg27 & 1 || (reg2c & 4) == 0) {
      sio_data->skip_fan = (u8 )((unsigned int )sio_data->skip_fan | 4U);
    } else {
    }
    if ((reg25 & 16) != 0 || ((reg2a & 2) == 0 && regef & 1)) {
      sio_data->skip_pwm = (u8 )((unsigned int )sio_data->skip_pwm | 4U);
    } else {
    }
    if ((reg27 & 128) != 0) {
      sio_data->skip_fan = (u8 )((unsigned int )sio_data->skip_fan | 2U);
    } else {
    }
    if ((reg27 & 8) != 0) {
      sio_data->skip_pwm = (u8 )((unsigned int )sio_data->skip_pwm | 2U);
    } else {
    }
    if (reg27 & 1 || (reg2c & 4) != 0) {
      sio_data->skip_in = (u16 )((unsigned int )sio_data->skip_in | 32U);
    } else {
    }
    if ((reg27 & 2) != 0) {
      sio_data->skip_in = (u16 )((unsigned int )sio_data->skip_in | 64U);
    } else {
    }
    if ((reg27 & 4) != 0) {
      if ((reg2c & 2) == 0) {
        reg2c = reg2c | 2;
        superio_outb(44, reg2c);
        printk("\rit87: Routing internal VCCH5V to in7.\n");
      } else {
      }
      printk("\rit87: in7 routed to internal voltage divider, with external pin disabled.\n");
      printk("\rit87: Please report if it displays a reasonable voltage.\n");
    } else {
    }
    if (reg2c & 1) {
      sio_data->internal = (u8 )((unsigned int )sio_data->internal | 1U);
    } else {
    }
    if ((reg2c & 2) != 0) {
      sio_data->internal = (u8 )((unsigned int )sio_data->internal | 2U);
    } else {
    }
    tmp___5 = superio_inb(246);
    sio_data->beep_pin = (unsigned int )((u8 )tmp___5) & 63U;
  } else
  if ((unsigned int )sio_data->type == 14U) {
    superio_select(7);
    reg27___0 = superio_inb(39);
    if ((reg27___0 & 64) != 0) {
      sio_data->skip_pwm = (u8 )((unsigned int )sio_data->skip_pwm | 4U);
    } else {
    }
    if ((reg27___0 & 128) != 0) {
      sio_data->skip_fan = (u8 )((unsigned int )sio_data->skip_fan | 4U);
    } else {
    }
    reg29 = superio_inb(41);
    if ((reg29 & 2) != 0) {
      sio_data->skip_pwm = (u8 )((unsigned int )sio_data->skip_pwm | 2U);
    } else {
    }
    if ((reg29 & 4) != 0) {
      sio_data->skip_fan = (u8 )((unsigned int )sio_data->skip_fan | 2U);
    } else {
    }
    sio_data->skip_in = (u16 )((unsigned int )sio_data->skip_in | 32U);
    sio_data->skip_in = (u16 )((unsigned int )sio_data->skip_in | 64U);
    sio_data->internal = (u8 )((unsigned int )sio_data->internal | 8U);
    tmp___6 = superio_inb(246);
    sio_data->beep_pin = (unsigned int )((u8 )tmp___6) & 63U;
  } else
  if ((unsigned int )sio_data->type == 15U) {
    superio_select(7);
    reg = superio_inb(38);
    if ((reg & 32) == 0) {
      sio_data->skip_fan = (u8 )((unsigned int )sio_data->skip_fan | 8U);
    } else {
    }
    if ((reg & 16) == 0) {
      sio_data->skip_fan = (u8 )((unsigned int )sio_data->skip_fan | 16U);
    } else {
    }
    reg = superio_inb(39);
    if ((reg & 64) != 0) {
      sio_data->skip_pwm = (u8 )((unsigned int )sio_data->skip_pwm | 4U);
    } else {
    }
    if ((reg & 128) != 0) {
      sio_data->skip_fan = (u8 )((unsigned int )sio_data->skip_fan | 4U);
    } else {
    }
    reg = superio_inb(41);
    if ((reg & 2) != 0) {
      sio_data->skip_pwm = (u8 )((unsigned int )sio_data->skip_pwm | 2U);
    } else {
    }
    if ((reg & 4) != 0) {
      sio_data->skip_fan = (u8 )((unsigned int )sio_data->skip_fan | 2U);
    } else {
    }
    tmp___7 = superio_inb(246);
    sio_data->beep_pin = (unsigned int )((u8 )tmp___7) & 63U;
  } else {
    superio_select(7);
    reg___0 = superio_inb(39);
    if ((unsigned int )sio_data->skip_vid == 0U) {
      if ((reg___0 & 15) != 0) {
        printk("\016it87: VID is disabled (pins used for GPIO)\n");
        sio_data->skip_vid = 1U;
      } else {
      }
    } else {
    }
    if ((reg___0 & 64) != 0) {
      sio_data->skip_pwm = (u8 )((unsigned int )sio_data->skip_pwm | 4U);
    } else {
    }
    if ((reg___0 & 128) != 0) {
      sio_data->skip_fan = (u8 )((unsigned int )sio_data->skip_fan | 4U);
    } else {
    }
    reg___0 = superio_inb(41);
    if ((reg___0 & 2) != 0) {
      sio_data->skip_pwm = (u8 )((unsigned int )sio_data->skip_pwm | 2U);
    } else {
    }
    if ((reg___0 & 4) != 0) {
      sio_data->skip_fan = (u8 )((unsigned int )sio_data->skip_fan | 2U);
    } else {
    }
    if (((unsigned int )sio_data->type == 3U || (unsigned int )sio_data->type == 4U) && (unsigned int )sio_data->skip_vid == 0U) {
      tmp___8 = superio_inb(252);
      sio_data->vid_value = (u8 )tmp___8;
    } else {
    }
    reg___0 = superio_inb(44);
    uart6 = (bool )((unsigned int )sio_data->type == 10U && (reg___0 & 4) != 0);
    if (((unsigned int )sio_data->type == 4U || (int )uart6) && (reg___0 & 2) == 0) {
      reg___0 = reg___0 | 2;
      superio_outb(44, reg___0);
      printk("\rit87: Routing internal VCCH to in7\n");
    } else {
    }
    if (reg___0 & 1) {
      sio_data->internal = (u8 )((unsigned int )sio_data->internal | 1U);
    } else {
    }
    if ((reg___0 & 2) != 0) {
      sio_data->internal = (u8 )((unsigned int )sio_data->internal | 2U);
    } else {
    }
    if ((int )uart6) {
      sio_data->skip_in = (u16 )((unsigned int )sio_data->skip_in | 96U);
      sio_data->skip_temp = (u8 )((unsigned int )sio_data->skip_temp | 4U);
    } else {
    }
    tmp___9 = superio_inb(246);
    sio_data->beep_pin = (unsigned int )((u8 )tmp___9) & 63U;
  }
  if ((unsigned int )sio_data->beep_pin != 0U) {
    printk("\016it87: Beeping is supported\n");
  } else {
  }
  board_vendor = dmi_get_system_info(9);
  board_name = dmi_get_system_info(10);
  if ((unsigned long )board_vendor != (unsigned long )((char const *)0) && (unsigned long )board_name != (unsigned long )((char const *)0)) {
    tmp___10 = strcmp(board_vendor, "nVIDIA");
    if (tmp___10 == 0) {
      tmp___11 = strcmp(board_name, "FN68PT");
      if (tmp___11 == 0) {
        printk("\016it87: Disabling pwm2 due to hardware constraints\n");
        sio_data->skip_pwm = 2U;
      } else {
      }
    } else {
    }
  } else {
  }
  exit:
  superio_exit();
  return (err);
}
}
static void it87_remove_files(struct device *dev )
{
  struct it87_data *data ;
  void *tmp ;
  struct it87_sio_data *sio_data ;
  void *tmp___0 ;
  int i ;
  {
  tmp = platform_get_drvdata((struct platform_device const *)pdev);
  data = (struct it87_data *)tmp;
  tmp___0 = dev_get_platdata((struct device const *)dev);
  sio_data = (struct it87_sio_data *)tmp___0;
  sysfs_remove_group(& dev->kobj, & it87_group);
  i = 0;
  goto ldv_32547;
  ldv_32546: ;
  if (((int )sio_data->skip_in >> i) & 1) {
    goto ldv_32545;
  } else {
  }
  sysfs_remove_group(& dev->kobj, (struct attribute_group const *)(& it87_group_in) + (unsigned long )i);
  if ((unsigned long )it87_attributes_in_beep[i] != (unsigned long )((struct attribute *)0)) {
    sysfs_remove_file(& dev->kobj, (struct attribute const *)it87_attributes_in_beep[i]);
  } else {
  }
  ldv_32545:
  i = i + 1;
  ldv_32547: ;
  if (i <= 9) {
    goto ldv_32546;
  } else {
  }
  i = 0;
  goto ldv_32551;
  ldv_32550: ;
  if ((((int )data->has_temp >> i) & 1) == 0) {
    goto ldv_32549;
  } else {
  }
  sysfs_remove_group(& dev->kobj, (struct attribute_group const *)(& it87_group_temp) + (unsigned long )i);
  if (((int )data->features & 16) != 0) {
    sysfs_remove_file(& dev->kobj, (struct attribute const *)it87_attributes_temp_offset[i]);
  } else {
  }
  if ((unsigned int )sio_data->beep_pin != 0U) {
    sysfs_remove_file(& dev->kobj, (struct attribute const *)it87_attributes_temp_beep[i]);
  } else {
  }
  ldv_32549:
  i = i + 1;
  ldv_32551: ;
  if (i <= 2) {
    goto ldv_32550;
  } else {
  }
  i = 0;
  goto ldv_32555;
  ldv_32554: ;
  if ((((int )data->has_fan >> i) & 1) == 0) {
    goto ldv_32553;
  } else {
  }
  sysfs_remove_group(& dev->kobj, (struct attribute_group const *)(& it87_group_fan) + (unsigned long )i);
  if ((unsigned int )sio_data->beep_pin != 0U) {
    sysfs_remove_file(& dev->kobj, (struct attribute const *)it87_attributes_fan_beep[i]);
  } else {
  }
  if (i <= 2 && ((int )data->features & 8) == 0) {
    sysfs_remove_file(& dev->kobj, it87_attributes_fan_div[i]);
  } else {
  }
  ldv_32553:
  i = i + 1;
  ldv_32555: ;
  if (i <= 5) {
    goto ldv_32554;
  } else {
  }
  i = 0;
  goto ldv_32559;
  ldv_32558: ;
  if (((int )sio_data->skip_pwm >> i) & 1) {
    goto ldv_32557;
  } else {
  }
  sysfs_remove_group(& dev->kobj, (struct attribute_group const *)(& it87_group_pwm) + (unsigned long )i);
  if (((int )data->features & 4) != 0) {
    sysfs_remove_group(& dev->kobj, (struct attribute_group const *)(& it87_group_autopwm) + (unsigned long )i);
  } else {
  }
  ldv_32557:
  i = i + 1;
  ldv_32559: ;
  if (i <= 2) {
    goto ldv_32558;
  } else {
  }
  if ((unsigned int )sio_data->skip_vid == 0U) {
    sysfs_remove_group(& dev->kobj, & it87_group_vid);
  } else {
  }
  sysfs_remove_group(& dev->kobj, & it87_group_label);
  return;
}
}
static int it87_probe(struct platform_device *pdev___0 )
{
  struct it87_data *data ;
  struct resource *res ;
  struct device *dev ;
  struct it87_sio_data *sio_data ;
  void *tmp ;
  int err ;
  int i ;
  int enable_pwm_interface ;
  int fan_beep_need_rw ;
  struct resource *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  struct lock_class_key __key ;
  int tmp___4 ;
  struct _ddebug descriptor ;
  long tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  bool tmp___8 ;
  {
  dev = & pdev___0->dev;
  tmp = dev_get_platdata((struct device const *)dev);
  sio_data = (struct it87_sio_data *)tmp;
  err = 0;
  res = platform_get_resource(pdev___0, 256U, 0U);
  tmp___0 = __devm_request_region(& pdev___0->dev, & ioport_resource, res->start,
                                  2ULL, "it87");
  if ((unsigned long )tmp___0 == (unsigned long )((struct resource *)0)) {
    dev_err((struct device const *)dev, "Failed to request region 0x%lx-0x%lx\n",
            (unsigned long )res->start, (unsigned long )(res->start + 1ULL));
    return (-16);
  } else {
  }
  tmp___1 = devm_kzalloc(& pdev___0->dev, 336UL, 208U);
  data = (struct it87_data *)tmp___1;
  if ((unsigned long )data == (unsigned long )((struct it87_data *)0)) {
    return (-12);
  } else {
  }
  data->addr = (unsigned short )res->start;
  data->type = sio_data->type;
  data->features = it87_devices[(unsigned int )sio_data->type].features;
  data->peci_mask = it87_devices[(unsigned int )sio_data->type].peci_mask;
  data->old_peci_mask = it87_devices[(unsigned int )sio_data->type].old_peci_mask;
  data->name = it87_devices[(unsigned int )sio_data->type].name;
  switch ((unsigned int )data->type) {
  case 0U: ;
  if ((unsigned int )sio_data->revision > 2U) {
    data->features = (unsigned int )data->features & 65531U;
    data->features = (u16 )((unsigned int )data->features | 136U);
  } else {
  }
  goto ldv_32573;
  case 1U: ;
  if ((unsigned int )sio_data->revision > 7U) {
    data->features = (unsigned int )data->features & 65531U;
    data->features = (u16 )((unsigned int )data->features | 392U);
  } else {
  }
  goto ldv_32573;
  default: ;
  goto ldv_32573;
  }
  ldv_32573:
  tmp___2 = it87_read_value(data, 0);
  if ((tmp___2 & 128) != 0) {
    return (-19);
  } else {
    tmp___3 = it87_read_value(data, 88);
    if (tmp___3 != 144) {
      return (-19);
    } else {
    }
  }
  platform_set_drvdata(pdev___0, (void *)data);
  __mutex_init(& data->update_lock, "&data->update_lock", & __key);
  enable_pwm_interface = it87_check_pwm(dev);
  if ((int )data->features & 1) {
    if ((int )sio_data->internal & 1) {
      data->in_scaled = (u16 )((unsigned int )data->in_scaled | 8U);
    } else {
    }
    if (((int )sio_data->internal & 2) != 0) {
      data->in_scaled = (u16 )((unsigned int )data->in_scaled | 128U);
    } else {
    }
    if (((int )sio_data->internal & 4) != 0) {
      data->in_scaled = (u16 )((unsigned int )data->in_scaled | 256U);
    } else {
    }
    if (((int )sio_data->internal & 8) != 0) {
      data->in_scaled = (u16 )((unsigned int )data->in_scaled | 512U);
    } else {
    }
  } else
  if (((unsigned int )sio_data->type == 9U || (unsigned int )sio_data->type == 10U) || (unsigned int )sio_data->type == 11U) {
    if ((int )sio_data->internal & 1) {
      data->in_scaled = (u16 )((unsigned int )data->in_scaled | 8U);
    } else {
    }
    if (((int )sio_data->internal & 2) != 0) {
      data->in_scaled = (u16 )((unsigned int )data->in_scaled | 128U);
    } else {
    }
  } else {
  }
  data->has_temp = 7U;
  if (((int )sio_data->skip_temp & 4) != 0) {
    if ((unsigned int )sio_data->type == 10U) {
      tmp___4 = it87_read_value(data, 85);
      if ((tmp___4 & 128) == 0) {
        data->has_temp = (unsigned int )data->has_temp & 251U;
      } else {
      }
    } else {
    }
  } else {
  }
  it87_init_device(pdev___0);
  err = sysfs_create_group(& dev->kobj, & it87_group);
  if (err != 0) {
    return (err);
  } else {
  }
  i = 0;
  goto ldv_32580;
  ldv_32579: ;
  if (((int )sio_data->skip_in >> i) & 1) {
    goto ldv_32577;
  } else {
  }
  err = sysfs_create_group(& dev->kobj, (struct attribute_group const *)(& it87_group_in) + (unsigned long )i);
  if (err != 0) {
    goto error;
  } else {
  }
  if ((unsigned int )sio_data->beep_pin != 0U && (unsigned long )it87_attributes_in_beep[i] != (unsigned long )((struct attribute *)0)) {
    err = sysfs_create_file(& dev->kobj, (struct attribute const *)it87_attributes_in_beep[i]);
    if (err != 0) {
      goto error;
    } else {
    }
  } else {
  }
  ldv_32577:
  i = i + 1;
  ldv_32580: ;
  if (i <= 9) {
    goto ldv_32579;
  } else {
  }
  i = 0;
  goto ldv_32584;
  ldv_32583: ;
  if ((((int )data->has_temp >> i) & 1) == 0) {
    goto ldv_32582;
  } else {
  }
  err = sysfs_create_group(& dev->kobj, (struct attribute_group const *)(& it87_group_temp) + (unsigned long )i);
  if (err != 0) {
    goto error;
  } else {
  }
  if (((int )data->features & 16) != 0) {
    err = sysfs_create_file(& dev->kobj, (struct attribute const *)it87_attributes_temp_offset[i]);
    if (err != 0) {
      goto error;
    } else {
    }
  } else {
  }
  if ((unsigned int )sio_data->beep_pin != 0U) {
    err = sysfs_create_file(& dev->kobj, (struct attribute const *)it87_attributes_temp_beep[i]);
    if (err != 0) {
      goto error;
    } else {
    }
  } else {
  }
  ldv_32582:
  i = i + 1;
  ldv_32584: ;
  if (i <= 2) {
    goto ldv_32583;
  } else {
  }
  fan_beep_need_rw = 1;
  i = 0;
  goto ldv_32590;
  ldv_32589: ;
  if ((((int )data->has_fan >> i) & 1) == 0) {
    goto ldv_32586;
  } else {
  }
  err = sysfs_create_group(& dev->kobj, (struct attribute_group const *)(& it87_group_fan) + (unsigned long )i);
  if (err != 0) {
    goto error;
  } else {
  }
  if (i <= 2 && ((int )data->features & 8) == 0) {
    err = sysfs_create_file(& dev->kobj, it87_attributes_fan_div[i]);
    if (err != 0) {
      goto error;
    } else {
    }
  } else {
  }
  if ((unsigned int )sio_data->beep_pin != 0U) {
    err = sysfs_create_file(& dev->kobj, (struct attribute const *)it87_attributes_fan_beep[i]);
    if (err != 0) {
      goto error;
    } else {
    }
    if (fan_beep_need_rw == 0) {
      goto ldv_32586;
    } else {
    }
    tmp___6 = sysfs_chmod_file(& dev->kobj, (struct attribute const *)it87_attributes_fan_beep[i],
                               420);
    if (tmp___6 != 0) {
      descriptor.modname = "it87";
      descriptor.function = "it87_probe";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8160/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/it87.c";
      descriptor.format = "chmod +w fan%d_beep failed\n";
      descriptor.lineno = 2365U;
      descriptor.flags = 1U;
      tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___5 != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "chmod +w fan%d_beep failed\n",
                          i + 1);
      } else {
      }
    } else {
    }
    fan_beep_need_rw = 0;
  } else {
  }
  ldv_32586:
  i = i + 1;
  ldv_32590: ;
  if (i <= 5) {
    goto ldv_32589;
  } else {
  }
  if (enable_pwm_interface != 0) {
    i = 0;
    goto ldv_32594;
    ldv_32593: ;
    if (((int )sio_data->skip_pwm >> i) & 1) {
      goto ldv_32592;
    } else {
    }
    err = sysfs_create_group(& dev->kobj, (struct attribute_group const *)(& it87_group_pwm) + (unsigned long )i);
    if (err != 0) {
      goto error;
    } else {
    }
    if (((int )data->features & 4) == 0) {
      goto ldv_32592;
    } else {
    }
    err = sysfs_create_group(& dev->kobj, (struct attribute_group const *)(& it87_group_autopwm) + (unsigned long )i);
    if (err != 0) {
      goto error;
    } else {
    }
    ldv_32592:
    i = i + 1;
    ldv_32594: ;
    if (i <= 2) {
      goto ldv_32593;
    } else {
    }
  } else {
  }
  if ((unsigned int )sio_data->skip_vid == 0U) {
    data->vrm = vid_which_vrm();
    data->vid = sio_data->vid_value;
    err = sysfs_create_group(& dev->kobj, & it87_group_vid);
    if (err != 0) {
      goto error;
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_32598;
  ldv_32597: ;
  if ((((int )sio_data->internal >> i) & 1) == 0) {
    goto ldv_32596;
  } else {
  }
  err = sysfs_create_file(& dev->kobj, (struct attribute const *)it87_attributes_label[i]);
  if (err != 0) {
    goto error;
  } else {
  }
  ldv_32596:
  i = i + 1;
  ldv_32598: ;
  if (i <= 3) {
    goto ldv_32597;
  } else {
  }
  data->hwmon_dev = hwmon_device_register(dev);
  tmp___8 = IS_ERR((void const *)data->hwmon_dev);
  if ((int )tmp___8) {
    tmp___7 = PTR_ERR((void const *)data->hwmon_dev);
    err = (int )tmp___7;
    goto error;
  } else {
  }
  return (0);
  error:
  it87_remove_files(dev);
  return (err);
}
}
static int it87_remove(struct platform_device *pdev___0 )
{
  struct it87_data *data ;
  void *tmp ;
  {
  tmp = platform_get_drvdata((struct platform_device const *)pdev___0);
  data = (struct it87_data *)tmp;
  hwmon_device_unregister(data->hwmon_dev);
  it87_remove_files(& pdev___0->dev);
  return (0);
}
}
static int it87_read_value(struct it87_data *data , u8 reg )
{
  unsigned char tmp ;
  {
  outb_p((int )reg, (int )data->addr);
  tmp = inb_p((int )data->addr + 1);
  return ((int )tmp);
}
}
static void it87_write_value(struct it87_data *data , u8 reg , u8 value )
{
  {
  outb_p((int )reg, (int )data->addr);
  outb_p((int )value, (int )data->addr + 1);
  return;
}
}
static int it87_check_pwm(struct device *dev )
{
  struct it87_data *data ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int i ;
  u8 pwm[3U] ;
  int tmp___2 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct it87_data *)tmp;
  tmp___1 = it87_read_value(data, 20);
  tmp___0 = tmp___1;
  if ((tmp___0 & 135) == 0) {
    if ((int )fix_pwm_polarity) {
      i = 0;
      goto ldv_32621;
      ldv_32620:
      tmp___2 = it87_read_value(data, (int )((unsigned int )((u8 )i) + 21U));
      pwm[i] = (u8 )tmp___2;
      i = i + 1;
      ldv_32621: ;
      if (i <= 2) {
        goto ldv_32620;
      } else {
      }
      if ((int )((signed char )(((int )pwm[0] | (int )pwm[1]) | (int )pwm[2])) >= 0) {
        _dev_info((struct device const *)dev, "Reconfiguring PWM to active high polarity\n");
        it87_write_value(data, 20, (int )((u8 )((int )((signed char )tmp___0) | -121)));
        i = 0;
        goto ldv_32624;
        ldv_32623:
        it87_write_value(data, (int )((unsigned int )((u8 )i) + 21U), ~ ((int )pwm[i]) & 127);
        i = i + 1;
        ldv_32624: ;
        if (i <= 2) {
          goto ldv_32623;
        } else {
        }
        return (1);
      } else {
      }
      _dev_info((struct device const *)dev, "PWM configuration is too broken to be fixed\n");
    } else {
    }
    _dev_info((struct device const *)dev, "Detected broken BIOS defaults, disabling PWM interface\n");
    return (0);
  } else
  if ((int )fix_pwm_polarity) {
    _dev_info((struct device const *)dev, "PWM configuration looks sane, won\'t touch\n");
  } else {
  }
  return (1);
}
}
static void it87_init_device(struct platform_device *pdev___0 )
{
  struct it87_sio_data *sio_data ;
  void *tmp ;
  struct it87_data *data ;
  void *tmp___0 ;
  int tmp___1 ;
  int i ;
  u8 mask ;
  int tmp___2 ;
  struct _ddebug descriptor ;
  long tmp___3 ;
  int tmp___4 ;
  {
  tmp = dev_get_platdata((struct device const *)(& pdev___0->dev));
  sio_data = (struct it87_sio_data *)tmp;
  tmp___0 = platform_get_drvdata((struct platform_device const *)pdev___0);
  data = (struct it87_data *)tmp___0;
  i = 0;
  goto ldv_32635;
  ldv_32634:
  data->pwm_temp_map[i] = (u8 )i;
  data->pwm_duty[i] = 127U;
  data->auto_pwm[i][3] = 127U;
  i = i + 1;
  ldv_32635: ;
  if (i <= 2) {
    goto ldv_32634;
  } else {
  }
  i = 0;
  goto ldv_32638;
  ldv_32637:
  tmp___1 = it87_read_value(data, (int )((unsigned int )((u8 )i) * 2U + 49U));
  if (tmp___1 == 255) {
    it87_write_value(data, (int )((unsigned int )((u8 )i) * 2U + 49U), 0);
  } else {
  }
  i = i + 1;
  ldv_32638: ;
  if (i <= 7) {
    goto ldv_32637;
  } else {
  }
  i = 0;
  goto ldv_32641;
  ldv_32640:
  tmp___1 = it87_read_value(data, (int )((unsigned int )((u8 )(i + 32)) * 2U));
  if (tmp___1 == 255) {
    it87_write_value(data, (int )((unsigned int )((u8 )(i + 32)) * 2U), 127);
  } else {
  }
  i = i + 1;
  ldv_32641: ;
  if (i <= 2) {
    goto ldv_32640;
  } else {
  }
  tmp___1 = it87_read_value(data, 80);
  if ((tmp___1 & 255) == 0) {
    it87_write_value(data, 80, 255);
  } else {
  }
  mask = (unsigned int )((u8 )(~ ((int )sio_data->skip_fan << 4U))) & 112U;
  tmp___2 = it87_read_value(data, 19);
  data->fan_main_ctrl = (u8 )tmp___2;
  if ((unsigned int )((int )data->fan_main_ctrl & (int )mask) == 0U) {
    data->fan_main_ctrl = (u8 )((int )data->fan_main_ctrl | (int )mask);
    it87_write_value(data, 19, (int )data->fan_main_ctrl);
  } else {
  }
  data->has_fan = (unsigned int )((u8 )((int )data->fan_main_ctrl >> 4)) & 7U;
  tmp___1 = it87_read_value(data, 12);
  if (((int )data->features & 128) != 0) {
    if (((~ tmp___1 & 7) & (int )data->has_fan) != 0) {
      descriptor.modname = "it87";
      descriptor.function = "it87_init_device";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8160/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/it87.c";
      descriptor.format = "Setting fan1-3 to 16-bit mode\n";
      descriptor.lineno = 2585U;
      descriptor.flags = 1U;
      tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& pdev___0->dev),
                          "Setting fan1-3 to 16-bit mode\n");
      } else {
      }
      it87_write_value(data, 12, (int )((u8 )((int )((signed char )tmp___1) | 7)));
    } else {
    }
  } else {
  }
  if (((int )data->features & 2304) != 0) {
    if ((tmp___1 & 16) != 0) {
      data->has_fan = (u8 )((unsigned int )data->has_fan | 8U);
    } else {
    }
    if ((tmp___1 & 32) != 0) {
      data->has_fan = (u8 )((unsigned int )data->has_fan | 16U);
    } else {
    }
    if (((int )data->features & 2048) != 0 && (tmp___1 & 4) != 0) {
      data->has_fan = (u8 )((unsigned int )data->has_fan | 32U);
    } else {
    }
  } else {
  }
  data->has_fan = (u8 )((int )((signed char )data->has_fan) & ~ ((int )((signed char )sio_data->skip_fan)));
  tmp___4 = it87_read_value(data, 0);
  it87_write_value(data, 0, (int )((u8 )(((int )((signed char )tmp___4) & 62) | ((int )update_vbat ? 65 : 1))));
  return;
}
}
static void it87_update_pwm_ctrl(struct it87_data *data , int nr )
{
  int tmp ;
  int tmp___0 ;
  int i ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = it87_read_value(data, (int )((unsigned int )((u8 )nr) + 21U));
  data->pwm_ctrl[nr] = (u8 )tmp;
  if (((int )data->features & 2) != 0) {
    data->pwm_temp_map[nr] = (unsigned int )data->pwm_ctrl[nr] & 3U;
    tmp___0 = it87_read_value(data, (int )((unsigned int )((u8 )nr) * 8U + 99U));
    data->pwm_duty[nr] = (u8 )tmp___0;
  } else
  if ((int )((signed char )data->pwm_ctrl[nr]) < 0) {
    data->pwm_temp_map[nr] = (unsigned int )data->pwm_ctrl[nr] & 3U;
  } else {
    data->pwm_duty[nr] = (unsigned int )data->pwm_ctrl[nr] & 127U;
  }
  if (((int )data->features & 4) != 0) {
    i = 0;
    goto ldv_32651;
    ldv_32650:
    tmp___1 = it87_read_value(data, (int )((unsigned int )((u8 )(nr + 12)) * 8U + (unsigned int )((u8 )i)));
    data->auto_temp[nr][i] = (s8 )tmp___1;
    i = i + 1;
    ldv_32651: ;
    if (i <= 4) {
      goto ldv_32650;
    } else {
    }
    i = 0;
    goto ldv_32654;
    ldv_32653:
    tmp___2 = it87_read_value(data, (int )(((unsigned int )((u8 )nr) * 8U + (unsigned int )((u8 )i)) + 101U));
    data->auto_pwm[nr][i] = (u8 )tmp___2;
    i = i + 1;
    ldv_32654: ;
    if (i <= 2) {
      goto ldv_32653;
    } else {
    }
  } else {
  }
  return;
}
}
static struct it87_data *it87_update_device(struct device *dev )
{
  struct it87_data *data ;
  void *tmp ;
  int i ;
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
  int tmp___10 ;
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
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct it87_data *)tmp;
  ldv_mutex_lock_39(& data->update_lock);
  if ((long )((data->last_updated - (unsigned long )jiffies) + 375UL) < 0L || (int )((signed char )data->valid) == 0) {
    if ((int )update_vbat) {
      tmp___0 = it87_read_value(data, 0);
      it87_write_value(data, 0, (int )((u8 )((int )((signed char )tmp___0) | 64)));
    } else {
    }
    i = 0;
    goto ldv_32668;
    ldv_32667:
    tmp___1 = it87_read_value(data, (int )((unsigned int )((u8 )i) + 32U));
    data->in[i][0] = (u8 )tmp___1;
    tmp___2 = it87_read_value(data, (int )((unsigned int )((u8 )i) * 2U + 49U));
    data->in[i][1] = (u8 )tmp___2;
    tmp___3 = it87_read_value(data, (int )((unsigned int )((u8 )(i + 24)) * 2U));
    data->in[i][2] = (u8 )tmp___3;
    i = i + 1;
    ldv_32668: ;
    if (i <= 7) {
      goto ldv_32667;
    } else {
    }
    tmp___4 = it87_read_value(data, 40);
    data->in[8][0] = (u8 )tmp___4;
    if ((unsigned int )data->type == 14U) {
      tmp___5 = it87_read_value(data, 47);
      data->in[9][0] = (u8 )tmp___5;
    } else {
    }
    i = 0;
    goto ldv_32672;
    ldv_32671: ;
    if ((((int )data->has_fan >> i) & 1) == 0) {
      goto ldv_32670;
    } else {
    }
    tmp___6 = it87_read_value(data, (int )IT87_REG_FAN_MIN[i]);
    data->fan[i][1] = (u16 )tmp___6;
    tmp___7 = it87_read_value(data, (int )IT87_REG_FAN[i]);
    data->fan[i][0] = (u16 )tmp___7;
    if (((int )data->features & 8) != 0) {
      tmp___8 = it87_read_value(data, (int )IT87_REG_FANX[i]);
      data->fan[i][0] = (u16 )((int )((short )data->fan[i][0]) | (int )((short )(tmp___8 << 8)));
      tmp___9 = it87_read_value(data, (int )IT87_REG_FANX_MIN[i]);
      data->fan[i][1] = (u16 )((int )((short )data->fan[i][1]) | (int )((short )(tmp___9 << 8)));
    } else {
    }
    ldv_32670:
    i = i + 1;
    ldv_32672: ;
    if (i <= 5) {
      goto ldv_32671;
    } else {
    }
    i = 0;
    goto ldv_32676;
    ldv_32675: ;
    if ((((int )data->has_temp >> i) & 1) == 0) {
      goto ldv_32674;
    } else {
    }
    tmp___10 = it87_read_value(data, (int )((unsigned int )((u8 )i) + 41U));
    data->temp[i][0] = (s8 )tmp___10;
    tmp___11 = it87_read_value(data, (int )((unsigned int )((u8 )i) * 2U + 65U));
    data->temp[i][1] = (s8 )tmp___11;
    tmp___12 = it87_read_value(data, (int )((unsigned int )((u8 )(i + 32)) * 2U));
    data->temp[i][2] = (s8 )tmp___12;
    if (((int )data->features & 16) != 0) {
      tmp___13 = it87_read_value(data, (int )IT87_REG_TEMP_OFFSET[i]);
      data->temp[i][3] = (s8 )tmp___13;
    } else {
    }
    ldv_32674:
    i = i + 1;
    ldv_32676: ;
    if (i <= 2) {
      goto ldv_32675;
    } else {
    }
    if (((int )data->has_fan & 7) != 0 && ((int )data->features & 8) == 0) {
      i = it87_read_value(data, 11);
      data->fan_div[0] = (unsigned int )((u8 )i) & 7U;
      data->fan_div[1] = (unsigned int )((u8 )(i >> 3)) & 7U;
      data->fan_div[2] = (i & 64) != 0 ? 3U : 1U;
    } else {
    }
    tmp___14 = it87_read_value(data, 1);
    tmp___15 = it87_read_value(data, 2);
    tmp___16 = it87_read_value(data, 3);
    data->alarms = (u32 )((tmp___14 | (tmp___15 << 8)) | (tmp___16 << 16));
    tmp___17 = it87_read_value(data, 92);
    data->beeps = (u8 )tmp___17;
    tmp___18 = it87_read_value(data, 19);
    data->fan_main_ctrl = (u8 )tmp___18;
    tmp___19 = it87_read_value(data, 20);
    data->fan_ctl = (u8 )tmp___19;
    i = 0;
    goto ldv_32679;
    ldv_32678:
    it87_update_pwm_ctrl(data, i);
    i = i + 1;
    ldv_32679: ;
    if (i <= 2) {
      goto ldv_32678;
    } else {
    }
    tmp___20 = it87_read_value(data, 81);
    data->sensor = (u8 )tmp___20;
    tmp___21 = it87_read_value(data, 85);
    data->extra = (u8 )tmp___21;
    if ((unsigned int )data->type == 1U || (unsigned int )data->type == 2U) {
      tmp___22 = it87_read_value(data, 10);
      data->vid = (u8 )tmp___22;
      data->vid = (unsigned int )data->vid & 63U;
    } else {
    }
    data->last_updated = jiffies;
    data->valid = 1;
  } else {
  }
  ldv_mutex_unlock_40(& data->update_lock);
  return (data);
}
}
static int it87_device_add(unsigned short address , struct it87_sio_data const *sio_data )
{
  struct resource res ;
  int err ;
  {
  res.start = (unsigned long long )((int )address + 5);
  res.end = (unsigned long long )((int )address + 6);
  res.name = "it87";
  res.flags = 256UL;
  res.parent = 0;
  res.sibling = 0;
  res.child = 0;
  err = acpi_check_resource_conflict((struct resource const *)(& res));
  if (err != 0) {
    goto exit;
  } else {
  }
  pdev = platform_device_alloc("it87", (int )address);
  if ((unsigned long )pdev == (unsigned long )((struct platform_device *)0)) {
    err = -12;
    printk("\vit87: Device allocation failed\n");
    goto exit;
  } else {
  }
  err = platform_device_add_resources(pdev, (struct resource const *)(& res), 1U);
  if (err != 0) {
    printk("\vit87: Device resource addition failed (%d)\n", err);
    goto exit_device_put;
  } else {
  }
  err = platform_device_add_data(pdev, (void const *)sio_data, 16UL);
  if (err != 0) {
    printk("\vit87: Platform data allocation failed\n");
    goto exit_device_put;
  } else {
  }
  err = platform_device_add(pdev);
  if (err != 0) {
    printk("\vit87: Device addition failed (%d)\n", err);
    goto exit_device_put;
  } else {
  }
  return (0);
  exit_device_put:
  platform_device_put(pdev);
  exit: ;
  return (err);
}
}
static int sm_it87_init(void)
{
  int err ;
  unsigned short isa_address ;
  struct it87_sio_data sio_data ;
  {
  isa_address = 0U;
  memset((void *)(& sio_data), 0, 16UL);
  err = it87_find(& isa_address, & sio_data);
  if (err != 0) {
    return (err);
  } else {
  }
  err = ldv___platform_driver_register_41(& it87_driver, & __this_module);
  if (err != 0) {
    return (err);
  } else {
  }
  err = it87_device_add((int )isa_address, (struct it87_sio_data const *)(& sio_data));
  if (err != 0) {
    ldv_platform_driver_unregister_42(& it87_driver);
    return (err);
  } else {
  }
  return (0);
}
}
static void sm_it87_exit(void)
{
  {
  platform_device_unregister(pdev);
  ldv_platform_driver_unregister_43(& it87_driver);
  return;
}
}
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
int ldv_retval_2 ;
void ldv_initialize_sensor_device_attribute_2_64(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm2_auto_point2_pwm_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm2_auto_point2_pwm_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_122(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in5_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in5_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_79(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm1_auto_channels_temp_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm1_auto_channels_temp_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_81(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm1_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm1_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_60(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm2_auto_point1_temp_hyst_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm2_auto_point1_temp_hyst_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_99(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp2_type_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp2_type_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_47(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm3_auto_point1_temp_hyst_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm3_auto_point1_temp_hyst_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_56(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm3_enable_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm3_enable_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_51(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm3_auto_point2_pwm_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm3_auto_point2_pwm_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_74(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm1_auto_point1_temp_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm1_auto_point1_temp_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_71(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm1_auto_point3_temp_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm1_auto_point3_temp_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_87(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan4_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan4_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_110(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp1_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp1_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_73(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm1_auto_point1_temp_hyst_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm1_auto_point1_temp_hyst_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_80(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_pwm1_freq_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_pwm1_freq_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_128(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in3_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in3_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_125(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in4_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in4_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_63(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm2_auto_point3_pwm_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm2_auto_point3_pwm_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_133(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in1_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in1_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_12(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan5_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan5_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_58(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm2_auto_point3_temp_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm2_auto_point3_temp_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_55(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm3_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm3_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_78(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm1_auto_point1_pwm_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm1_auto_point1_pwm_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_50(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm3_auto_point3_pwm_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm3_auto_point3_pwm_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_136(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in0_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in0_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_65(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm2_auto_point1_pwm_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm2_auto_point1_pwm_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_46(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm3_auto_point2_temp_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm3_auto_point2_temp_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_82(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm1_enable_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm1_enable_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_48(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm3_auto_point1_temp_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm3_auto_point1_temp_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_61(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm2_auto_point1_temp_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm2_auto_point1_temp_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_59(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm2_auto_point2_temp_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm2_auto_point2_temp_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_119(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in6_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in6_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_24(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in0_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in0_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_109(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp1_offset_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp1_offset_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_98(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp3_type_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp3_type_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_130(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in2_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in2_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_10(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp1_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp1_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_134(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in1_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in1_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_90(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan3_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan3_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_13(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan4_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan4_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_platform_probe_139(int (*probe)(struct platform_device * ) )
{
  int err ;
  {
  err = (*probe)(it87_driver_group1);
  if (err == 0) {
    probed_139 = 1;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_111(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp1_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp1_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_105(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp2_offset_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp2_offset_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_45(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm3_auto_point3_temp_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm3_auto_point3_temp_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_66(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm2_auto_channels_temp_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm2_auto_channels_temp_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_95(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan1_div_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan1_div_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_25(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_intrusion0_alarm_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_intrusion0_alarm_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_14(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan3_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan3_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_103(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp3_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp3_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_89(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan3_div_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan3_div_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_118(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in6_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in6_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_137(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in0_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in0_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_83(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan6_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan6_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_96(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan1_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan1_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_101(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp3_offset_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp3_offset_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_68(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm2_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm2_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_70(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm1_auto_point4_temp_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm1_auto_point4_temp_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_106(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp2_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp2_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_115(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in7_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in7_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_92(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan2_div_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan2_div_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_131(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in2_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in2_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_platform_driver_init_139(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1472UL);
  it87_driver_group1 = (struct platform_device *)tmp;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_76(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm1_auto_point3_pwm_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm1_auto_point3_pwm_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_11(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan6_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan6_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_16(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan1_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan1_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_53(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm3_auto_channels_temp_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm3_auto_channels_temp_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_72(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm1_auto_point2_temp_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm1_auto_point2_temp_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_44(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm3_auto_point4_temp_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm3_auto_point4_temp_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_124(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in4_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in4_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_93(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan2_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan2_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_121(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in5_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in5_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_102(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp3_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp3_max_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_52(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm3_auto_point1_pwm_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm3_auto_point1_pwm_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_77(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm1_auto_point2_pwm_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm1_auto_point2_pwm_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_57(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm2_auto_point4_temp_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm2_auto_point4_temp_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_116(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in7_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in7_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_107(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp2_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp2_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_15(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan2_beep_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan2_beep_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_7(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_vrm_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_vrm_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_100(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_temp1_type_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_temp1_type_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_69(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_pwm2_enable_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_pwm2_enable_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_85(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_fan5_min_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_fan5_min_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_sensor_device_attribute_2_127(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  sensor_dev_attr_in3_max_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  sensor_dev_attr_in3_max_group1 = (struct device *)tmp___0;
  return;
}
}
int main(void)
{
  size_t ldvarg1 ;
  char *ldvarg0 ;
  void *tmp ;
  char *ldvarg2 ;
  void *tmp___0 ;
  char *ldvarg4 ;
  void *tmp___1 ;
  struct device *ldvarg3 ;
  void *tmp___2 ;
  struct device_attribute *ldvarg5 ;
  void *tmp___3 ;
  char *ldvarg8 ;
  void *tmp___4 ;
  size_t ldvarg7 ;
  char *ldvarg6 ;
  void *tmp___5 ;
  char *ldvarg11 ;
  void *tmp___6 ;
  size_t ldvarg10 ;
  char *ldvarg9 ;
  void *tmp___7 ;
  char *ldvarg14 ;
  void *tmp___8 ;
  size_t ldvarg13 ;
  char *ldvarg12 ;
  void *tmp___9 ;
  char *ldvarg17 ;
  void *tmp___10 ;
  size_t ldvarg16 ;
  char *ldvarg15 ;
  void *tmp___11 ;
  struct device *ldvarg18 ;
  void *tmp___12 ;
  struct device_attribute *ldvarg20 ;
  void *tmp___13 ;
  char *ldvarg19 ;
  void *tmp___14 ;
  char *ldvarg21 ;
  void *tmp___15 ;
  char *ldvarg23 ;
  void *tmp___16 ;
  size_t ldvarg22 ;
  char *ldvarg24 ;
  void *tmp___17 ;
  char *ldvarg26 ;
  void *tmp___18 ;
  size_t ldvarg25 ;
  char *ldvarg27 ;
  void *tmp___19 ;
  char *ldvarg29 ;
  void *tmp___20 ;
  size_t ldvarg28 ;
  char *ldvarg32 ;
  void *tmp___21 ;
  size_t ldvarg31 ;
  char *ldvarg30 ;
  void *tmp___22 ;
  struct device_attribute *ldvarg35 ;
  void *tmp___23 ;
  char *ldvarg34 ;
  void *tmp___24 ;
  struct device *ldvarg33 ;
  void *tmp___25 ;
  char *ldvarg37 ;
  void *tmp___26 ;
  struct device *ldvarg36 ;
  void *tmp___27 ;
  struct device_attribute *ldvarg38 ;
  void *tmp___28 ;
  char *ldvarg39 ;
  void *tmp___29 ;
  char *ldvarg41 ;
  void *tmp___30 ;
  size_t ldvarg40 ;
  size_t ldvarg43 ;
  char *ldvarg42 ;
  void *tmp___31 ;
  char *ldvarg44 ;
  void *tmp___32 ;
  struct device *ldvarg45 ;
  void *tmp___33 ;
  struct device_attribute *ldvarg47 ;
  void *tmp___34 ;
  char *ldvarg46 ;
  void *tmp___35 ;
  char *ldvarg48 ;
  void *tmp___36 ;
  size_t ldvarg49 ;
  char *ldvarg50 ;
  void *tmp___37 ;
  char *ldvarg51 ;
  void *tmp___38 ;
  char *ldvarg53 ;
  void *tmp___39 ;
  size_t ldvarg52 ;
  struct device *ldvarg54 ;
  void *tmp___40 ;
  char *ldvarg55 ;
  void *tmp___41 ;
  struct device_attribute *ldvarg56 ;
  void *tmp___42 ;
  struct device *ldvarg57 ;
  void *tmp___43 ;
  char *ldvarg58 ;
  void *tmp___44 ;
  struct device_attribute *ldvarg59 ;
  void *tmp___45 ;
  size_t ldvarg61 ;
  char *ldvarg60 ;
  void *tmp___46 ;
  char *ldvarg62 ;
  void *tmp___47 ;
  char *ldvarg65 ;
  void *tmp___48 ;
  char *ldvarg63 ;
  void *tmp___49 ;
  size_t ldvarg64 ;
  size_t ldvarg67 ;
  char *ldvarg66 ;
  void *tmp___50 ;
  char *ldvarg68 ;
  void *tmp___51 ;
  size_t ldvarg70 ;
  char *ldvarg71 ;
  void *tmp___52 ;
  char *ldvarg69 ;
  void *tmp___53 ;
  size_t ldvarg73 ;
  char *ldvarg74 ;
  void *tmp___54 ;
  char *ldvarg72 ;
  void *tmp___55 ;
  struct device_attribute *ldvarg77 ;
  void *tmp___56 ;
  char *ldvarg76 ;
  void *tmp___57 ;
  struct device *ldvarg75 ;
  void *tmp___58 ;
  char *ldvarg79 ;
  void *tmp___59 ;
  struct device_attribute *ldvarg80 ;
  void *tmp___60 ;
  struct device *ldvarg78 ;
  void *tmp___61 ;
  struct device *ldvarg81 ;
  void *tmp___62 ;
  char *ldvarg82 ;
  void *tmp___63 ;
  struct device_attribute *ldvarg83 ;
  void *tmp___64 ;
  size_t ldvarg85 ;
  char *ldvarg84 ;
  void *tmp___65 ;
  char *ldvarg86 ;
  void *tmp___66 ;
  size_t ldvarg88 ;
  char *ldvarg89 ;
  void *tmp___67 ;
  char *ldvarg87 ;
  void *tmp___68 ;
  size_t ldvarg91 ;
  char *ldvarg92 ;
  void *tmp___69 ;
  char *ldvarg90 ;
  void *tmp___70 ;
  char *ldvarg93 ;
  void *tmp___71 ;
  char *ldvarg95 ;
  void *tmp___72 ;
  size_t ldvarg94 ;
  char *ldvarg98 ;
  void *tmp___73 ;
  size_t ldvarg97 ;
  char *ldvarg96 ;
  void *tmp___74 ;
  char *ldvarg101 ;
  void *tmp___75 ;
  size_t ldvarg100 ;
  char *ldvarg99 ;
  void *tmp___76 ;
  char *ldvarg104 ;
  void *tmp___77 ;
  char *ldvarg102 ;
  void *tmp___78 ;
  size_t ldvarg103 ;
  char *ldvarg106 ;
  void *tmp___79 ;
  struct device *ldvarg105 ;
  void *tmp___80 ;
  struct device_attribute *ldvarg107 ;
  void *tmp___81 ;
  char *ldvarg110 ;
  void *tmp___82 ;
  char *ldvarg108 ;
  void *tmp___83 ;
  size_t ldvarg109 ;
  struct device *ldvarg111 ;
  void *tmp___84 ;
  char *ldvarg112 ;
  void *tmp___85 ;
  struct device_attribute *ldvarg113 ;
  void *tmp___86 ;
  struct device_attribute *ldvarg116 ;
  void *tmp___87 ;
  struct device *ldvarg114 ;
  void *tmp___88 ;
  char *ldvarg115 ;
  void *tmp___89 ;
  struct device_attribute *ldvarg119 ;
  void *tmp___90 ;
  struct device *ldvarg117 ;
  void *tmp___91 ;
  char *ldvarg118 ;
  void *tmp___92 ;
  char *ldvarg121 ;
  void *tmp___93 ;
  struct device_attribute *ldvarg122 ;
  void *tmp___94 ;
  struct device *ldvarg120 ;
  void *tmp___95 ;
  struct device *ldvarg123 ;
  void *tmp___96 ;
  char *ldvarg124 ;
  void *tmp___97 ;
  struct device_attribute *ldvarg125 ;
  void *tmp___98 ;
  size_t ldvarg127 ;
  char *ldvarg128 ;
  void *tmp___99 ;
  char *ldvarg126 ;
  void *tmp___100 ;
  char *ldvarg131 ;
  void *tmp___101 ;
  char *ldvarg129 ;
  void *tmp___102 ;
  size_t ldvarg130 ;
  struct device_attribute *ldvarg134 ;
  void *tmp___103 ;
  char *ldvarg133 ;
  void *tmp___104 ;
  struct device *ldvarg132 ;
  void *tmp___105 ;
  size_t ldvarg136 ;
  char *ldvarg137 ;
  void *tmp___106 ;
  char *ldvarg135 ;
  void *tmp___107 ;
  struct device *ldvarg138 ;
  void *tmp___108 ;
  struct device_attribute *ldvarg140 ;
  void *tmp___109 ;
  char *ldvarg139 ;
  void *tmp___110 ;
  char *ldvarg143 ;
  void *tmp___111 ;
  size_t ldvarg142 ;
  char *ldvarg141 ;
  void *tmp___112 ;
  char *ldvarg145 ;
  void *tmp___113 ;
  struct device_attribute *ldvarg146 ;
  void *tmp___114 ;
  struct device *ldvarg144 ;
  void *tmp___115 ;
  char *ldvarg147 ;
  void *tmp___116 ;
  char *ldvarg149 ;
  void *tmp___117 ;
  size_t ldvarg148 ;
  char *ldvarg150 ;
  void *tmp___118 ;
  size_t ldvarg151 ;
  char *ldvarg152 ;
  void *tmp___119 ;
  char *ldvarg154 ;
  void *tmp___120 ;
  struct device *ldvarg153 ;
  void *tmp___121 ;
  struct device_attribute *ldvarg155 ;
  void *tmp___122 ;
  char *ldvarg156 ;
  void *tmp___123 ;
  size_t ldvarg157 ;
  char *ldvarg158 ;
  void *tmp___124 ;
  char *ldvarg159 ;
  void *tmp___125 ;
  char *ldvarg161 ;
  void *tmp___126 ;
  size_t ldvarg160 ;
  char *ldvarg164 ;
  void *tmp___127 ;
  size_t ldvarg163 ;
  char *ldvarg162 ;
  void *tmp___128 ;
  struct device_attribute *ldvarg167 ;
  void *tmp___129 ;
  struct device *ldvarg165 ;
  void *tmp___130 ;
  char *ldvarg166 ;
  void *tmp___131 ;
  char *ldvarg170 ;
  void *tmp___132 ;
  char *ldvarg168 ;
  void *tmp___133 ;
  size_t ldvarg169 ;
  struct device *ldvarg171 ;
  void *tmp___134 ;
  struct device_attribute *ldvarg173 ;
  void *tmp___135 ;
  char *ldvarg172 ;
  void *tmp___136 ;
  size_t ldvarg175 ;
  char *ldvarg174 ;
  void *tmp___137 ;
  char *ldvarg176 ;
  void *tmp___138 ;
  struct device *ldvarg177 ;
  void *tmp___139 ;
  char *ldvarg178 ;
  void *tmp___140 ;
  struct device_attribute *ldvarg179 ;
  void *tmp___141 ;
  size_t ldvarg181 ;
  char *ldvarg180 ;
  void *tmp___142 ;
  char *ldvarg182 ;
  void *tmp___143 ;
  struct device *ldvarg183 ;
  void *tmp___144 ;
  struct device_attribute *ldvarg185 ;
  void *tmp___145 ;
  char *ldvarg184 ;
  void *tmp___146 ;
  char *ldvarg187 ;
  void *tmp___147 ;
  struct device_attribute *ldvarg188 ;
  void *tmp___148 ;
  struct device *ldvarg186 ;
  void *tmp___149 ;
  struct device_attribute *ldvarg191 ;
  void *tmp___150 ;
  char *ldvarg190 ;
  void *tmp___151 ;
  struct device *ldvarg189 ;
  void *tmp___152 ;
  char *ldvarg193 ;
  void *tmp___153 ;
  struct device *ldvarg192 ;
  void *tmp___154 ;
  struct device_attribute *ldvarg194 ;
  void *tmp___155 ;
  struct device_attribute *ldvarg197 ;
  void *tmp___156 ;
  struct device *ldvarg195 ;
  void *tmp___157 ;
  char *ldvarg196 ;
  void *tmp___158 ;
  struct device_attribute *ldvarg200 ;
  void *tmp___159 ;
  struct device *ldvarg198 ;
  void *tmp___160 ;
  char *ldvarg199 ;
  void *tmp___161 ;
  char *ldvarg203 ;
  void *tmp___162 ;
  char *ldvarg201 ;
  void *tmp___163 ;
  size_t ldvarg202 ;
  char *ldvarg204 ;
  void *tmp___164 ;
  size_t ldvarg205 ;
  char *ldvarg206 ;
  void *tmp___165 ;
  struct device_attribute *ldvarg209 ;
  void *tmp___166 ;
  char *ldvarg208 ;
  void *tmp___167 ;
  struct device *ldvarg207 ;
  void *tmp___168 ;
  size_t ldvarg211 ;
  char *ldvarg212 ;
  void *tmp___169 ;
  char *ldvarg210 ;
  void *tmp___170 ;
  char *ldvarg213 ;
  void *tmp___171 ;
  char *ldvarg215 ;
  void *tmp___172 ;
  size_t ldvarg214 ;
  char *ldvarg218 ;
  void *tmp___173 ;
  size_t ldvarg217 ;
  char *ldvarg216 ;
  void *tmp___174 ;
  size_t ldvarg220 ;
  char *ldvarg221 ;
  void *tmp___175 ;
  char *ldvarg219 ;
  void *tmp___176 ;
  char *ldvarg224 ;
  void *tmp___177 ;
  char *ldvarg222 ;
  void *tmp___178 ;
  size_t ldvarg223 ;
  char *ldvarg225 ;
  void *tmp___179 ;
  char *ldvarg227 ;
  void *tmp___180 ;
  size_t ldvarg226 ;
  struct device_attribute *ldvarg230 ;
  void *tmp___181 ;
  char *ldvarg229 ;
  void *tmp___182 ;
  struct device *ldvarg228 ;
  void *tmp___183 ;
  char *ldvarg233 ;
  void *tmp___184 ;
  char *ldvarg231 ;
  void *tmp___185 ;
  size_t ldvarg232 ;
  char *ldvarg234 ;
  void *tmp___186 ;
  char *ldvarg236 ;
  void *tmp___187 ;
  size_t ldvarg235 ;
  size_t ldvarg238 ;
  char *ldvarg237 ;
  void *tmp___188 ;
  char *ldvarg239 ;
  void *tmp___189 ;
  char *ldvarg242 ;
  void *tmp___190 ;
  char *ldvarg240 ;
  void *tmp___191 ;
  size_t ldvarg241 ;
  char *ldvarg244 ;
  void *tmp___192 ;
  struct device *ldvarg243 ;
  void *tmp___193 ;
  struct device_attribute *ldvarg245 ;
  void *tmp___194 ;
  struct device *ldvarg246 ;
  void *tmp___195 ;
  char *ldvarg247 ;
  void *tmp___196 ;
  struct device_attribute *ldvarg248 ;
  void *tmp___197 ;
  size_t ldvarg250 ;
  char *ldvarg249 ;
  void *tmp___198 ;
  char *ldvarg251 ;
  void *tmp___199 ;
  char *ldvarg252 ;
  void *tmp___200 ;
  char *ldvarg254 ;
  void *tmp___201 ;
  size_t ldvarg253 ;
  size_t ldvarg256 ;
  char *ldvarg257 ;
  void *tmp___202 ;
  char *ldvarg255 ;
  void *tmp___203 ;
  size_t ldvarg259 ;
  char *ldvarg258 ;
  void *tmp___204 ;
  char *ldvarg260 ;
  void *tmp___205 ;
  char *ldvarg263 ;
  void *tmp___206 ;
  size_t ldvarg262 ;
  char *ldvarg261 ;
  void *tmp___207 ;
  struct device_attribute *ldvarg266 ;
  void *tmp___208 ;
  struct device *ldvarg264 ;
  void *tmp___209 ;
  char *ldvarg265 ;
  void *tmp___210 ;
  char *ldvarg269 ;
  void *tmp___211 ;
  char *ldvarg267 ;
  void *tmp___212 ;
  size_t ldvarg268 ;
  struct device_attribute *ldvarg272 ;
  void *tmp___213 ;
  char *ldvarg271 ;
  void *tmp___214 ;
  struct device *ldvarg270 ;
  void *tmp___215 ;
  char *ldvarg275 ;
  void *tmp___216 ;
  char *ldvarg273 ;
  void *tmp___217 ;
  size_t ldvarg274 ;
  struct device_attribute *ldvarg278 ;
  void *tmp___218 ;
  char *ldvarg277 ;
  void *tmp___219 ;
  struct device *ldvarg276 ;
  void *tmp___220 ;
  size_t ldvarg280 ;
  char *ldvarg279 ;
  void *tmp___221 ;
  char *ldvarg281 ;
  void *tmp___222 ;
  struct device_attribute *ldvarg284 ;
  void *tmp___223 ;
  struct device *ldvarg282 ;
  void *tmp___224 ;
  char *ldvarg283 ;
  void *tmp___225 ;
  char *ldvarg285 ;
  void *tmp___226 ;
  char *ldvarg287 ;
  void *tmp___227 ;
  size_t ldvarg286 ;
  char *ldvarg290 ;
  void *tmp___228 ;
  char *ldvarg288 ;
  void *tmp___229 ;
  size_t ldvarg289 ;
  char *ldvarg293 ;
  void *tmp___230 ;
  size_t ldvarg292 ;
  char *ldvarg291 ;
  void *tmp___231 ;
  size_t ldvarg295 ;
  char *ldvarg296 ;
  void *tmp___232 ;
  char *ldvarg294 ;
  void *tmp___233 ;
  struct device_attribute *ldvarg299 ;
  void *tmp___234 ;
  struct device *ldvarg297 ;
  void *tmp___235 ;
  char *ldvarg298 ;
  void *tmp___236 ;
  struct device *ldvarg300 ;
  void *tmp___237 ;
  struct device_attribute *ldvarg302 ;
  void *tmp___238 ;
  char *ldvarg301 ;
  void *tmp___239 ;
  char *ldvarg303 ;
  void *tmp___240 ;
  char *ldvarg305 ;
  void *tmp___241 ;
  size_t ldvarg304 ;
  size_t ldvarg307 ;
  char *ldvarg308 ;
  void *tmp___242 ;
  char *ldvarg306 ;
  void *tmp___243 ;
  char *ldvarg310 ;
  void *tmp___244 ;
  struct device_attribute *ldvarg311 ;
  void *tmp___245 ;
  struct device *ldvarg309 ;
  void *tmp___246 ;
  char *ldvarg314 ;
  void *tmp___247 ;
  size_t ldvarg313 ;
  char *ldvarg312 ;
  void *tmp___248 ;
  struct device *ldvarg315 ;
  void *tmp___249 ;
  struct device_attribute *ldvarg317 ;
  void *tmp___250 ;
  char *ldvarg316 ;
  void *tmp___251 ;
  char *ldvarg320 ;
  void *tmp___252 ;
  size_t ldvarg319 ;
  char *ldvarg318 ;
  void *tmp___253 ;
  char *ldvarg322 ;
  void *tmp___254 ;
  struct device_attribute *ldvarg323 ;
  void *tmp___255 ;
  struct device *ldvarg321 ;
  void *tmp___256 ;
  size_t ldvarg325 ;
  char *ldvarg324 ;
  void *tmp___257 ;
  char *ldvarg326 ;
  void *tmp___258 ;
  char *ldvarg329 ;
  void *tmp___259 ;
  size_t ldvarg328 ;
  char *ldvarg327 ;
  void *tmp___260 ;
  size_t ldvarg331 ;
  char *ldvarg330 ;
  void *tmp___261 ;
  char *ldvarg332 ;
  void *tmp___262 ;
  char *ldvarg334 ;
  void *tmp___263 ;
  struct device *ldvarg333 ;
  void *tmp___264 ;
  struct device_attribute *ldvarg335 ;
  void *tmp___265 ;
  struct device_attribute *ldvarg338 ;
  void *tmp___266 ;
  char *ldvarg337 ;
  void *tmp___267 ;
  struct device *ldvarg336 ;
  void *tmp___268 ;
  char *ldvarg341 ;
  void *tmp___269 ;
  size_t ldvarg340 ;
  char *ldvarg339 ;
  void *tmp___270 ;
  char *ldvarg343 ;
  void *tmp___271 ;
  struct device_attribute *ldvarg344 ;
  void *tmp___272 ;
  struct device *ldvarg342 ;
  void *tmp___273 ;
  char *ldvarg346 ;
  void *tmp___274 ;
  struct device *ldvarg345 ;
  void *tmp___275 ;
  struct device_attribute *ldvarg347 ;
  void *tmp___276 ;
  size_t ldvarg349 ;
  char *ldvarg348 ;
  void *tmp___277 ;
  char *ldvarg350 ;
  void *tmp___278 ;
  size_t ldvarg352 ;
  char *ldvarg351 ;
  void *tmp___279 ;
  char *ldvarg353 ;
  void *tmp___280 ;
  char *ldvarg354 ;
  void *tmp___281 ;
  size_t ldvarg355 ;
  char *ldvarg356 ;
  void *tmp___282 ;
  size_t ldvarg358 ;
  char *ldvarg359 ;
  void *tmp___283 ;
  char *ldvarg357 ;
  void *tmp___284 ;
  char *ldvarg360 ;
  void *tmp___285 ;
  char *ldvarg362 ;
  void *tmp___286 ;
  size_t ldvarg361 ;
  char *ldvarg364 ;
  void *tmp___287 ;
  struct device *ldvarg363 ;
  void *tmp___288 ;
  struct device_attribute *ldvarg365 ;
  void *tmp___289 ;
  struct device *ldvarg366 ;
  void *tmp___290 ;
  struct device_attribute *ldvarg368 ;
  void *tmp___291 ;
  char *ldvarg367 ;
  void *tmp___292 ;
  char *ldvarg371 ;
  void *tmp___293 ;
  char *ldvarg369 ;
  void *tmp___294 ;
  size_t ldvarg370 ;
  char *ldvarg372 ;
  void *tmp___295 ;
  char *ldvarg374 ;
  void *tmp___296 ;
  size_t ldvarg373 ;
  size_t ldvarg376 ;
  char *ldvarg375 ;
  void *tmp___297 ;
  char *ldvarg377 ;
  void *tmp___298 ;
  char *ldvarg379 ;
  void *tmp___299 ;
  struct device_attribute *ldvarg380 ;
  void *tmp___300 ;
  struct device *ldvarg378 ;
  void *tmp___301 ;
  size_t ldvarg382 ;
  char *ldvarg383 ;
  void *tmp___302 ;
  char *ldvarg381 ;
  void *tmp___303 ;
  char *ldvarg385 ;
  void *tmp___304 ;
  struct device *ldvarg384 ;
  void *tmp___305 ;
  struct device_attribute *ldvarg386 ;
  void *tmp___306 ;
  char *ldvarg388 ;
  void *tmp___307 ;
  struct device_attribute *ldvarg389 ;
  void *tmp___308 ;
  struct device *ldvarg387 ;
  void *tmp___309 ;
  struct device *ldvarg390 ;
  void *tmp___310 ;
  struct device_attribute *ldvarg392 ;
  void *tmp___311 ;
  char *ldvarg391 ;
  void *tmp___312 ;
  char *ldvarg393 ;
  void *tmp___313 ;
  char *ldvarg395 ;
  void *tmp___314 ;
  size_t ldvarg394 ;
  char *ldvarg397 ;
  void *tmp___315 ;
  struct device_attribute *ldvarg398 ;
  void *tmp___316 ;
  struct device *ldvarg396 ;
  void *tmp___317 ;
  char *ldvarg401 ;
  void *tmp___318 ;
  char *ldvarg399 ;
  void *tmp___319 ;
  size_t ldvarg400 ;
  char *ldvarg403 ;
  void *tmp___320 ;
  struct device_attribute *ldvarg404 ;
  void *tmp___321 ;
  struct device *ldvarg402 ;
  void *tmp___322 ;
  char *ldvarg406 ;
  void *tmp___323 ;
  struct device_attribute *ldvarg407 ;
  void *tmp___324 ;
  struct device *ldvarg405 ;
  void *tmp___325 ;
  struct device *ldvarg408 ;
  void *tmp___326 ;
  struct device_attribute *ldvarg410 ;
  void *tmp___327 ;
  char *ldvarg409 ;
  void *tmp___328 ;
  struct device_attribute *ldvarg413 ;
  void *tmp___329 ;
  char *ldvarg412 ;
  void *tmp___330 ;
  struct device *ldvarg411 ;
  void *tmp___331 ;
  int tmp___332 ;
  int tmp___333 ;
  int tmp___334 ;
  int tmp___335 ;
  int tmp___336 ;
  int tmp___337 ;
  int tmp___338 ;
  int tmp___339 ;
  int tmp___340 ;
  int tmp___341 ;
  int tmp___342 ;
  int tmp___343 ;
  int tmp___344 ;
  int tmp___345 ;
  int tmp___346 ;
  int tmp___347 ;
  int tmp___348 ;
  int tmp___349 ;
  int tmp___350 ;
  int tmp___351 ;
  int tmp___352 ;
  int tmp___353 ;
  int tmp___354 ;
  int tmp___355 ;
  int tmp___356 ;
  int tmp___357 ;
  int tmp___358 ;
  int tmp___359 ;
  int tmp___360 ;
  int tmp___361 ;
  int tmp___362 ;
  int tmp___363 ;
  int tmp___364 ;
  int tmp___365 ;
  int tmp___366 ;
  int tmp___367 ;
  int tmp___368 ;
  int tmp___369 ;
  int tmp___370 ;
  int tmp___371 ;
  int tmp___372 ;
  int tmp___373 ;
  int tmp___374 ;
  int tmp___375 ;
  int tmp___376 ;
  int tmp___377 ;
  int tmp___378 ;
  int tmp___379 ;
  int tmp___380 ;
  int tmp___381 ;
  int tmp___382 ;
  int tmp___383 ;
  int tmp___384 ;
  int tmp___385 ;
  int tmp___386 ;
  int tmp___387 ;
  int tmp___388 ;
  int tmp___389 ;
  int tmp___390 ;
  int tmp___391 ;
  int tmp___392 ;
  int tmp___393 ;
  int tmp___394 ;
  int tmp___395 ;
  int tmp___396 ;
  int tmp___397 ;
  int tmp___398 ;
  int tmp___399 ;
  int tmp___400 ;
  int tmp___401 ;
  int tmp___402 ;
  int tmp___403 ;
  int tmp___404 ;
  int tmp___405 ;
  int tmp___406 ;
  int tmp___407 ;
  int tmp___408 ;
  int tmp___409 ;
  int tmp___410 ;
  int tmp___411 ;
  int tmp___412 ;
  int tmp___413 ;
  int tmp___414 ;
  int tmp___415 ;
  int tmp___416 ;
  int tmp___417 ;
  int tmp___418 ;
  int tmp___419 ;
  int tmp___420 ;
  int tmp___421 ;
  int tmp___422 ;
  int tmp___423 ;
  int tmp___424 ;
  int tmp___425 ;
  int tmp___426 ;
  int tmp___427 ;
  int tmp___428 ;
  int tmp___429 ;
  int tmp___430 ;
  int tmp___431 ;
  int tmp___432 ;
  int tmp___433 ;
  int tmp___434 ;
  int tmp___435 ;
  int tmp___436 ;
  int tmp___437 ;
  int tmp___438 ;
  int tmp___439 ;
  int tmp___440 ;
  int tmp___441 ;
  int tmp___442 ;
  int tmp___443 ;
  int tmp___444 ;
  int tmp___445 ;
  int tmp___446 ;
  int tmp___447 ;
  int tmp___448 ;
  int tmp___449 ;
  int tmp___450 ;
  int tmp___451 ;
  int tmp___452 ;
  int tmp___453 ;
  int tmp___454 ;
  int tmp___455 ;
  int tmp___456 ;
  int tmp___457 ;
  int tmp___458 ;
  int tmp___459 ;
  int tmp___460 ;
  int tmp___461 ;
  int tmp___462 ;
  int tmp___463 ;
  int tmp___464 ;
  int tmp___465 ;
  int tmp___466 ;
  int tmp___467 ;
  int tmp___468 ;
  int tmp___469 ;
  int tmp___470 ;
  int tmp___471 ;
  int tmp___472 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg0 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg2 = (char *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg4 = (char *)tmp___1;
  tmp___2 = ldv_init_zalloc(1416UL);
  ldvarg3 = (struct device *)tmp___2;
  tmp___3 = ldv_init_zalloc(48UL);
  ldvarg5 = (struct device_attribute *)tmp___3;
  tmp___4 = ldv_init_zalloc(1UL);
  ldvarg8 = (char *)tmp___4;
  tmp___5 = ldv_init_zalloc(1UL);
  ldvarg6 = (char *)tmp___5;
  tmp___6 = ldv_init_zalloc(1UL);
  ldvarg11 = (char *)tmp___6;
  tmp___7 = ldv_init_zalloc(1UL);
  ldvarg9 = (char *)tmp___7;
  tmp___8 = ldv_init_zalloc(1UL);
  ldvarg14 = (char *)tmp___8;
  tmp___9 = ldv_init_zalloc(1UL);
  ldvarg12 = (char *)tmp___9;
  tmp___10 = ldv_init_zalloc(1UL);
  ldvarg17 = (char *)tmp___10;
  tmp___11 = ldv_init_zalloc(1UL);
  ldvarg15 = (char *)tmp___11;
  tmp___12 = ldv_init_zalloc(1416UL);
  ldvarg18 = (struct device *)tmp___12;
  tmp___13 = ldv_init_zalloc(48UL);
  ldvarg20 = (struct device_attribute *)tmp___13;
  tmp___14 = ldv_init_zalloc(1UL);
  ldvarg19 = (char *)tmp___14;
  tmp___15 = ldv_init_zalloc(1UL);
  ldvarg21 = (char *)tmp___15;
  tmp___16 = ldv_init_zalloc(1UL);
  ldvarg23 = (char *)tmp___16;
  tmp___17 = ldv_init_zalloc(1UL);
  ldvarg24 = (char *)tmp___17;
  tmp___18 = ldv_init_zalloc(1UL);
  ldvarg26 = (char *)tmp___18;
  tmp___19 = ldv_init_zalloc(1UL);
  ldvarg27 = (char *)tmp___19;
  tmp___20 = ldv_init_zalloc(1UL);
  ldvarg29 = (char *)tmp___20;
  tmp___21 = ldv_init_zalloc(1UL);
  ldvarg32 = (char *)tmp___21;
  tmp___22 = ldv_init_zalloc(1UL);
  ldvarg30 = (char *)tmp___22;
  tmp___23 = ldv_init_zalloc(48UL);
  ldvarg35 = (struct device_attribute *)tmp___23;
  tmp___24 = ldv_init_zalloc(1UL);
  ldvarg34 = (char *)tmp___24;
  tmp___25 = ldv_init_zalloc(1416UL);
  ldvarg33 = (struct device *)tmp___25;
  tmp___26 = ldv_init_zalloc(1UL);
  ldvarg37 = (char *)tmp___26;
  tmp___27 = ldv_init_zalloc(1416UL);
  ldvarg36 = (struct device *)tmp___27;
  tmp___28 = ldv_init_zalloc(48UL);
  ldvarg38 = (struct device_attribute *)tmp___28;
  tmp___29 = ldv_init_zalloc(1UL);
  ldvarg39 = (char *)tmp___29;
  tmp___30 = ldv_init_zalloc(1UL);
  ldvarg41 = (char *)tmp___30;
  tmp___31 = ldv_init_zalloc(1UL);
  ldvarg42 = (char *)tmp___31;
  tmp___32 = ldv_init_zalloc(1UL);
  ldvarg44 = (char *)tmp___32;
  tmp___33 = ldv_init_zalloc(1416UL);
  ldvarg45 = (struct device *)tmp___33;
  tmp___34 = ldv_init_zalloc(48UL);
  ldvarg47 = (struct device_attribute *)tmp___34;
  tmp___35 = ldv_init_zalloc(1UL);
  ldvarg46 = (char *)tmp___35;
  tmp___36 = ldv_init_zalloc(1UL);
  ldvarg48 = (char *)tmp___36;
  tmp___37 = ldv_init_zalloc(1UL);
  ldvarg50 = (char *)tmp___37;
  tmp___38 = ldv_init_zalloc(1UL);
  ldvarg51 = (char *)tmp___38;
  tmp___39 = ldv_init_zalloc(1UL);
  ldvarg53 = (char *)tmp___39;
  tmp___40 = ldv_init_zalloc(1416UL);
  ldvarg54 = (struct device *)tmp___40;
  tmp___41 = ldv_init_zalloc(1UL);
  ldvarg55 = (char *)tmp___41;
  tmp___42 = ldv_init_zalloc(48UL);
  ldvarg56 = (struct device_attribute *)tmp___42;
  tmp___43 = ldv_init_zalloc(1416UL);
  ldvarg57 = (struct device *)tmp___43;
  tmp___44 = ldv_init_zalloc(1UL);
  ldvarg58 = (char *)tmp___44;
  tmp___45 = ldv_init_zalloc(48UL);
  ldvarg59 = (struct device_attribute *)tmp___45;
  tmp___46 = ldv_init_zalloc(1UL);
  ldvarg60 = (char *)tmp___46;
  tmp___47 = ldv_init_zalloc(1UL);
  ldvarg62 = (char *)tmp___47;
  tmp___48 = ldv_init_zalloc(1UL);
  ldvarg65 = (char *)tmp___48;
  tmp___49 = ldv_init_zalloc(1UL);
  ldvarg63 = (char *)tmp___49;
  tmp___50 = ldv_init_zalloc(1UL);
  ldvarg66 = (char *)tmp___50;
  tmp___51 = ldv_init_zalloc(1UL);
  ldvarg68 = (char *)tmp___51;
  tmp___52 = ldv_init_zalloc(1UL);
  ldvarg71 = (char *)tmp___52;
  tmp___53 = ldv_init_zalloc(1UL);
  ldvarg69 = (char *)tmp___53;
  tmp___54 = ldv_init_zalloc(1UL);
  ldvarg74 = (char *)tmp___54;
  tmp___55 = ldv_init_zalloc(1UL);
  ldvarg72 = (char *)tmp___55;
  tmp___56 = ldv_init_zalloc(48UL);
  ldvarg77 = (struct device_attribute *)tmp___56;
  tmp___57 = ldv_init_zalloc(1UL);
  ldvarg76 = (char *)tmp___57;
  tmp___58 = ldv_init_zalloc(1416UL);
  ldvarg75 = (struct device *)tmp___58;
  tmp___59 = ldv_init_zalloc(1UL);
  ldvarg79 = (char *)tmp___59;
  tmp___60 = ldv_init_zalloc(48UL);
  ldvarg80 = (struct device_attribute *)tmp___60;
  tmp___61 = ldv_init_zalloc(1416UL);
  ldvarg78 = (struct device *)tmp___61;
  tmp___62 = ldv_init_zalloc(1416UL);
  ldvarg81 = (struct device *)tmp___62;
  tmp___63 = ldv_init_zalloc(1UL);
  ldvarg82 = (char *)tmp___63;
  tmp___64 = ldv_init_zalloc(48UL);
  ldvarg83 = (struct device_attribute *)tmp___64;
  tmp___65 = ldv_init_zalloc(1UL);
  ldvarg84 = (char *)tmp___65;
  tmp___66 = ldv_init_zalloc(1UL);
  ldvarg86 = (char *)tmp___66;
  tmp___67 = ldv_init_zalloc(1UL);
  ldvarg89 = (char *)tmp___67;
  tmp___68 = ldv_init_zalloc(1UL);
  ldvarg87 = (char *)tmp___68;
  tmp___69 = ldv_init_zalloc(1UL);
  ldvarg92 = (char *)tmp___69;
  tmp___70 = ldv_init_zalloc(1UL);
  ldvarg90 = (char *)tmp___70;
  tmp___71 = ldv_init_zalloc(1UL);
  ldvarg93 = (char *)tmp___71;
  tmp___72 = ldv_init_zalloc(1UL);
  ldvarg95 = (char *)tmp___72;
  tmp___73 = ldv_init_zalloc(1UL);
  ldvarg98 = (char *)tmp___73;
  tmp___74 = ldv_init_zalloc(1UL);
  ldvarg96 = (char *)tmp___74;
  tmp___75 = ldv_init_zalloc(1UL);
  ldvarg101 = (char *)tmp___75;
  tmp___76 = ldv_init_zalloc(1UL);
  ldvarg99 = (char *)tmp___76;
  tmp___77 = ldv_init_zalloc(1UL);
  ldvarg104 = (char *)tmp___77;
  tmp___78 = ldv_init_zalloc(1UL);
  ldvarg102 = (char *)tmp___78;
  tmp___79 = ldv_init_zalloc(1UL);
  ldvarg106 = (char *)tmp___79;
  tmp___80 = ldv_init_zalloc(1416UL);
  ldvarg105 = (struct device *)tmp___80;
  tmp___81 = ldv_init_zalloc(48UL);
  ldvarg107 = (struct device_attribute *)tmp___81;
  tmp___82 = ldv_init_zalloc(1UL);
  ldvarg110 = (char *)tmp___82;
  tmp___83 = ldv_init_zalloc(1UL);
  ldvarg108 = (char *)tmp___83;
  tmp___84 = ldv_init_zalloc(1416UL);
  ldvarg111 = (struct device *)tmp___84;
  tmp___85 = ldv_init_zalloc(1UL);
  ldvarg112 = (char *)tmp___85;
  tmp___86 = ldv_init_zalloc(48UL);
  ldvarg113 = (struct device_attribute *)tmp___86;
  tmp___87 = ldv_init_zalloc(48UL);
  ldvarg116 = (struct device_attribute *)tmp___87;
  tmp___88 = ldv_init_zalloc(1416UL);
  ldvarg114 = (struct device *)tmp___88;
  tmp___89 = ldv_init_zalloc(1UL);
  ldvarg115 = (char *)tmp___89;
  tmp___90 = ldv_init_zalloc(48UL);
  ldvarg119 = (struct device_attribute *)tmp___90;
  tmp___91 = ldv_init_zalloc(1416UL);
  ldvarg117 = (struct device *)tmp___91;
  tmp___92 = ldv_init_zalloc(1UL);
  ldvarg118 = (char *)tmp___92;
  tmp___93 = ldv_init_zalloc(1UL);
  ldvarg121 = (char *)tmp___93;
  tmp___94 = ldv_init_zalloc(48UL);
  ldvarg122 = (struct device_attribute *)tmp___94;
  tmp___95 = ldv_init_zalloc(1416UL);
  ldvarg120 = (struct device *)tmp___95;
  tmp___96 = ldv_init_zalloc(1416UL);
  ldvarg123 = (struct device *)tmp___96;
  tmp___97 = ldv_init_zalloc(1UL);
  ldvarg124 = (char *)tmp___97;
  tmp___98 = ldv_init_zalloc(48UL);
  ldvarg125 = (struct device_attribute *)tmp___98;
  tmp___99 = ldv_init_zalloc(1UL);
  ldvarg128 = (char *)tmp___99;
  tmp___100 = ldv_init_zalloc(1UL);
  ldvarg126 = (char *)tmp___100;
  tmp___101 = ldv_init_zalloc(1UL);
  ldvarg131 = (char *)tmp___101;
  tmp___102 = ldv_init_zalloc(1UL);
  ldvarg129 = (char *)tmp___102;
  tmp___103 = ldv_init_zalloc(48UL);
  ldvarg134 = (struct device_attribute *)tmp___103;
  tmp___104 = ldv_init_zalloc(1UL);
  ldvarg133 = (char *)tmp___104;
  tmp___105 = ldv_init_zalloc(1416UL);
  ldvarg132 = (struct device *)tmp___105;
  tmp___106 = ldv_init_zalloc(1UL);
  ldvarg137 = (char *)tmp___106;
  tmp___107 = ldv_init_zalloc(1UL);
  ldvarg135 = (char *)tmp___107;
  tmp___108 = ldv_init_zalloc(1416UL);
  ldvarg138 = (struct device *)tmp___108;
  tmp___109 = ldv_init_zalloc(48UL);
  ldvarg140 = (struct device_attribute *)tmp___109;
  tmp___110 = ldv_init_zalloc(1UL);
  ldvarg139 = (char *)tmp___110;
  tmp___111 = ldv_init_zalloc(1UL);
  ldvarg143 = (char *)tmp___111;
  tmp___112 = ldv_init_zalloc(1UL);
  ldvarg141 = (char *)tmp___112;
  tmp___113 = ldv_init_zalloc(1UL);
  ldvarg145 = (char *)tmp___113;
  tmp___114 = ldv_init_zalloc(48UL);
  ldvarg146 = (struct device_attribute *)tmp___114;
  tmp___115 = ldv_init_zalloc(1416UL);
  ldvarg144 = (struct device *)tmp___115;
  tmp___116 = ldv_init_zalloc(1UL);
  ldvarg147 = (char *)tmp___116;
  tmp___117 = ldv_init_zalloc(1UL);
  ldvarg149 = (char *)tmp___117;
  tmp___118 = ldv_init_zalloc(1UL);
  ldvarg150 = (char *)tmp___118;
  tmp___119 = ldv_init_zalloc(1UL);
  ldvarg152 = (char *)tmp___119;
  tmp___120 = ldv_init_zalloc(1UL);
  ldvarg154 = (char *)tmp___120;
  tmp___121 = ldv_init_zalloc(1416UL);
  ldvarg153 = (struct device *)tmp___121;
  tmp___122 = ldv_init_zalloc(48UL);
  ldvarg155 = (struct device_attribute *)tmp___122;
  tmp___123 = ldv_init_zalloc(1UL);
  ldvarg156 = (char *)tmp___123;
  tmp___124 = ldv_init_zalloc(1UL);
  ldvarg158 = (char *)tmp___124;
  tmp___125 = ldv_init_zalloc(1UL);
  ldvarg159 = (char *)tmp___125;
  tmp___126 = ldv_init_zalloc(1UL);
  ldvarg161 = (char *)tmp___126;
  tmp___127 = ldv_init_zalloc(1UL);
  ldvarg164 = (char *)tmp___127;
  tmp___128 = ldv_init_zalloc(1UL);
  ldvarg162 = (char *)tmp___128;
  tmp___129 = ldv_init_zalloc(48UL);
  ldvarg167 = (struct device_attribute *)tmp___129;
  tmp___130 = ldv_init_zalloc(1416UL);
  ldvarg165 = (struct device *)tmp___130;
  tmp___131 = ldv_init_zalloc(1UL);
  ldvarg166 = (char *)tmp___131;
  tmp___132 = ldv_init_zalloc(1UL);
  ldvarg170 = (char *)tmp___132;
  tmp___133 = ldv_init_zalloc(1UL);
  ldvarg168 = (char *)tmp___133;
  tmp___134 = ldv_init_zalloc(1416UL);
  ldvarg171 = (struct device *)tmp___134;
  tmp___135 = ldv_init_zalloc(48UL);
  ldvarg173 = (struct device_attribute *)tmp___135;
  tmp___136 = ldv_init_zalloc(1UL);
  ldvarg172 = (char *)tmp___136;
  tmp___137 = ldv_init_zalloc(1UL);
  ldvarg174 = (char *)tmp___137;
  tmp___138 = ldv_init_zalloc(1UL);
  ldvarg176 = (char *)tmp___138;
  tmp___139 = ldv_init_zalloc(1416UL);
  ldvarg177 = (struct device *)tmp___139;
  tmp___140 = ldv_init_zalloc(1UL);
  ldvarg178 = (char *)tmp___140;
  tmp___141 = ldv_init_zalloc(48UL);
  ldvarg179 = (struct device_attribute *)tmp___141;
  tmp___142 = ldv_init_zalloc(1UL);
  ldvarg180 = (char *)tmp___142;
  tmp___143 = ldv_init_zalloc(1UL);
  ldvarg182 = (char *)tmp___143;
  tmp___144 = ldv_init_zalloc(1416UL);
  ldvarg183 = (struct device *)tmp___144;
  tmp___145 = ldv_init_zalloc(48UL);
  ldvarg185 = (struct device_attribute *)tmp___145;
  tmp___146 = ldv_init_zalloc(1UL);
  ldvarg184 = (char *)tmp___146;
  tmp___147 = ldv_init_zalloc(1UL);
  ldvarg187 = (char *)tmp___147;
  tmp___148 = ldv_init_zalloc(48UL);
  ldvarg188 = (struct device_attribute *)tmp___148;
  tmp___149 = ldv_init_zalloc(1416UL);
  ldvarg186 = (struct device *)tmp___149;
  tmp___150 = ldv_init_zalloc(48UL);
  ldvarg191 = (struct device_attribute *)tmp___150;
  tmp___151 = ldv_init_zalloc(1UL);
  ldvarg190 = (char *)tmp___151;
  tmp___152 = ldv_init_zalloc(1416UL);
  ldvarg189 = (struct device *)tmp___152;
  tmp___153 = ldv_init_zalloc(1UL);
  ldvarg193 = (char *)tmp___153;
  tmp___154 = ldv_init_zalloc(1416UL);
  ldvarg192 = (struct device *)tmp___154;
  tmp___155 = ldv_init_zalloc(48UL);
  ldvarg194 = (struct device_attribute *)tmp___155;
  tmp___156 = ldv_init_zalloc(48UL);
  ldvarg197 = (struct device_attribute *)tmp___156;
  tmp___157 = ldv_init_zalloc(1416UL);
  ldvarg195 = (struct device *)tmp___157;
  tmp___158 = ldv_init_zalloc(1UL);
  ldvarg196 = (char *)tmp___158;
  tmp___159 = ldv_init_zalloc(48UL);
  ldvarg200 = (struct device_attribute *)tmp___159;
  tmp___160 = ldv_init_zalloc(1416UL);
  ldvarg198 = (struct device *)tmp___160;
  tmp___161 = ldv_init_zalloc(1UL);
  ldvarg199 = (char *)tmp___161;
  tmp___162 = ldv_init_zalloc(1UL);
  ldvarg203 = (char *)tmp___162;
  tmp___163 = ldv_init_zalloc(1UL);
  ldvarg201 = (char *)tmp___163;
  tmp___164 = ldv_init_zalloc(1UL);
  ldvarg204 = (char *)tmp___164;
  tmp___165 = ldv_init_zalloc(1UL);
  ldvarg206 = (char *)tmp___165;
  tmp___166 = ldv_init_zalloc(48UL);
  ldvarg209 = (struct device_attribute *)tmp___166;
  tmp___167 = ldv_init_zalloc(1UL);
  ldvarg208 = (char *)tmp___167;
  tmp___168 = ldv_init_zalloc(1416UL);
  ldvarg207 = (struct device *)tmp___168;
  tmp___169 = ldv_init_zalloc(1UL);
  ldvarg212 = (char *)tmp___169;
  tmp___170 = ldv_init_zalloc(1UL);
  ldvarg210 = (char *)tmp___170;
  tmp___171 = ldv_init_zalloc(1UL);
  ldvarg213 = (char *)tmp___171;
  tmp___172 = ldv_init_zalloc(1UL);
  ldvarg215 = (char *)tmp___172;
  tmp___173 = ldv_init_zalloc(1UL);
  ldvarg218 = (char *)tmp___173;
  tmp___174 = ldv_init_zalloc(1UL);
  ldvarg216 = (char *)tmp___174;
  tmp___175 = ldv_init_zalloc(1UL);
  ldvarg221 = (char *)tmp___175;
  tmp___176 = ldv_init_zalloc(1UL);
  ldvarg219 = (char *)tmp___176;
  tmp___177 = ldv_init_zalloc(1UL);
  ldvarg224 = (char *)tmp___177;
  tmp___178 = ldv_init_zalloc(1UL);
  ldvarg222 = (char *)tmp___178;
  tmp___179 = ldv_init_zalloc(1UL);
  ldvarg225 = (char *)tmp___179;
  tmp___180 = ldv_init_zalloc(1UL);
  ldvarg227 = (char *)tmp___180;
  tmp___181 = ldv_init_zalloc(48UL);
  ldvarg230 = (struct device_attribute *)tmp___181;
  tmp___182 = ldv_init_zalloc(1UL);
  ldvarg229 = (char *)tmp___182;
  tmp___183 = ldv_init_zalloc(1416UL);
  ldvarg228 = (struct device *)tmp___183;
  tmp___184 = ldv_init_zalloc(1UL);
  ldvarg233 = (char *)tmp___184;
  tmp___185 = ldv_init_zalloc(1UL);
  ldvarg231 = (char *)tmp___185;
  tmp___186 = ldv_init_zalloc(1UL);
  ldvarg234 = (char *)tmp___186;
  tmp___187 = ldv_init_zalloc(1UL);
  ldvarg236 = (char *)tmp___187;
  tmp___188 = ldv_init_zalloc(1UL);
  ldvarg237 = (char *)tmp___188;
  tmp___189 = ldv_init_zalloc(1UL);
  ldvarg239 = (char *)tmp___189;
  tmp___190 = ldv_init_zalloc(1UL);
  ldvarg242 = (char *)tmp___190;
  tmp___191 = ldv_init_zalloc(1UL);
  ldvarg240 = (char *)tmp___191;
  tmp___192 = ldv_init_zalloc(1UL);
  ldvarg244 = (char *)tmp___192;
  tmp___193 = ldv_init_zalloc(1416UL);
  ldvarg243 = (struct device *)tmp___193;
  tmp___194 = ldv_init_zalloc(48UL);
  ldvarg245 = (struct device_attribute *)tmp___194;
  tmp___195 = ldv_init_zalloc(1416UL);
  ldvarg246 = (struct device *)tmp___195;
  tmp___196 = ldv_init_zalloc(1UL);
  ldvarg247 = (char *)tmp___196;
  tmp___197 = ldv_init_zalloc(48UL);
  ldvarg248 = (struct device_attribute *)tmp___197;
  tmp___198 = ldv_init_zalloc(1UL);
  ldvarg249 = (char *)tmp___198;
  tmp___199 = ldv_init_zalloc(1UL);
  ldvarg251 = (char *)tmp___199;
  tmp___200 = ldv_init_zalloc(1UL);
  ldvarg252 = (char *)tmp___200;
  tmp___201 = ldv_init_zalloc(1UL);
  ldvarg254 = (char *)tmp___201;
  tmp___202 = ldv_init_zalloc(1UL);
  ldvarg257 = (char *)tmp___202;
  tmp___203 = ldv_init_zalloc(1UL);
  ldvarg255 = (char *)tmp___203;
  tmp___204 = ldv_init_zalloc(1UL);
  ldvarg258 = (char *)tmp___204;
  tmp___205 = ldv_init_zalloc(1UL);
  ldvarg260 = (char *)tmp___205;
  tmp___206 = ldv_init_zalloc(1UL);
  ldvarg263 = (char *)tmp___206;
  tmp___207 = ldv_init_zalloc(1UL);
  ldvarg261 = (char *)tmp___207;
  tmp___208 = ldv_init_zalloc(48UL);
  ldvarg266 = (struct device_attribute *)tmp___208;
  tmp___209 = ldv_init_zalloc(1416UL);
  ldvarg264 = (struct device *)tmp___209;
  tmp___210 = ldv_init_zalloc(1UL);
  ldvarg265 = (char *)tmp___210;
  tmp___211 = ldv_init_zalloc(1UL);
  ldvarg269 = (char *)tmp___211;
  tmp___212 = ldv_init_zalloc(1UL);
  ldvarg267 = (char *)tmp___212;
  tmp___213 = ldv_init_zalloc(48UL);
  ldvarg272 = (struct device_attribute *)tmp___213;
  tmp___214 = ldv_init_zalloc(1UL);
  ldvarg271 = (char *)tmp___214;
  tmp___215 = ldv_init_zalloc(1416UL);
  ldvarg270 = (struct device *)tmp___215;
  tmp___216 = ldv_init_zalloc(1UL);
  ldvarg275 = (char *)tmp___216;
  tmp___217 = ldv_init_zalloc(1UL);
  ldvarg273 = (char *)tmp___217;
  tmp___218 = ldv_init_zalloc(48UL);
  ldvarg278 = (struct device_attribute *)tmp___218;
  tmp___219 = ldv_init_zalloc(1UL);
  ldvarg277 = (char *)tmp___219;
  tmp___220 = ldv_init_zalloc(1416UL);
  ldvarg276 = (struct device *)tmp___220;
  tmp___221 = ldv_init_zalloc(1UL);
  ldvarg279 = (char *)tmp___221;
  tmp___222 = ldv_init_zalloc(1UL);
  ldvarg281 = (char *)tmp___222;
  tmp___223 = ldv_init_zalloc(48UL);
  ldvarg284 = (struct device_attribute *)tmp___223;
  tmp___224 = ldv_init_zalloc(1416UL);
  ldvarg282 = (struct device *)tmp___224;
  tmp___225 = ldv_init_zalloc(1UL);
  ldvarg283 = (char *)tmp___225;
  tmp___226 = ldv_init_zalloc(1UL);
  ldvarg285 = (char *)tmp___226;
  tmp___227 = ldv_init_zalloc(1UL);
  ldvarg287 = (char *)tmp___227;
  tmp___228 = ldv_init_zalloc(1UL);
  ldvarg290 = (char *)tmp___228;
  tmp___229 = ldv_init_zalloc(1UL);
  ldvarg288 = (char *)tmp___229;
  tmp___230 = ldv_init_zalloc(1UL);
  ldvarg293 = (char *)tmp___230;
  tmp___231 = ldv_init_zalloc(1UL);
  ldvarg291 = (char *)tmp___231;
  tmp___232 = ldv_init_zalloc(1UL);
  ldvarg296 = (char *)tmp___232;
  tmp___233 = ldv_init_zalloc(1UL);
  ldvarg294 = (char *)tmp___233;
  tmp___234 = ldv_init_zalloc(48UL);
  ldvarg299 = (struct device_attribute *)tmp___234;
  tmp___235 = ldv_init_zalloc(1416UL);
  ldvarg297 = (struct device *)tmp___235;
  tmp___236 = ldv_init_zalloc(1UL);
  ldvarg298 = (char *)tmp___236;
  tmp___237 = ldv_init_zalloc(1416UL);
  ldvarg300 = (struct device *)tmp___237;
  tmp___238 = ldv_init_zalloc(48UL);
  ldvarg302 = (struct device_attribute *)tmp___238;
  tmp___239 = ldv_init_zalloc(1UL);
  ldvarg301 = (char *)tmp___239;
  tmp___240 = ldv_init_zalloc(1UL);
  ldvarg303 = (char *)tmp___240;
  tmp___241 = ldv_init_zalloc(1UL);
  ldvarg305 = (char *)tmp___241;
  tmp___242 = ldv_init_zalloc(1UL);
  ldvarg308 = (char *)tmp___242;
  tmp___243 = ldv_init_zalloc(1UL);
  ldvarg306 = (char *)tmp___243;
  tmp___244 = ldv_init_zalloc(1UL);
  ldvarg310 = (char *)tmp___244;
  tmp___245 = ldv_init_zalloc(48UL);
  ldvarg311 = (struct device_attribute *)tmp___245;
  tmp___246 = ldv_init_zalloc(1416UL);
  ldvarg309 = (struct device *)tmp___246;
  tmp___247 = ldv_init_zalloc(1UL);
  ldvarg314 = (char *)tmp___247;
  tmp___248 = ldv_init_zalloc(1UL);
  ldvarg312 = (char *)tmp___248;
  tmp___249 = ldv_init_zalloc(1416UL);
  ldvarg315 = (struct device *)tmp___249;
  tmp___250 = ldv_init_zalloc(48UL);
  ldvarg317 = (struct device_attribute *)tmp___250;
  tmp___251 = ldv_init_zalloc(1UL);
  ldvarg316 = (char *)tmp___251;
  tmp___252 = ldv_init_zalloc(1UL);
  ldvarg320 = (char *)tmp___252;
  tmp___253 = ldv_init_zalloc(1UL);
  ldvarg318 = (char *)tmp___253;
  tmp___254 = ldv_init_zalloc(1UL);
  ldvarg322 = (char *)tmp___254;
  tmp___255 = ldv_init_zalloc(48UL);
  ldvarg323 = (struct device_attribute *)tmp___255;
  tmp___256 = ldv_init_zalloc(1416UL);
  ldvarg321 = (struct device *)tmp___256;
  tmp___257 = ldv_init_zalloc(1UL);
  ldvarg324 = (char *)tmp___257;
  tmp___258 = ldv_init_zalloc(1UL);
  ldvarg326 = (char *)tmp___258;
  tmp___259 = ldv_init_zalloc(1UL);
  ldvarg329 = (char *)tmp___259;
  tmp___260 = ldv_init_zalloc(1UL);
  ldvarg327 = (char *)tmp___260;
  tmp___261 = ldv_init_zalloc(1UL);
  ldvarg330 = (char *)tmp___261;
  tmp___262 = ldv_init_zalloc(1UL);
  ldvarg332 = (char *)tmp___262;
  tmp___263 = ldv_init_zalloc(1UL);
  ldvarg334 = (char *)tmp___263;
  tmp___264 = ldv_init_zalloc(1416UL);
  ldvarg333 = (struct device *)tmp___264;
  tmp___265 = ldv_init_zalloc(48UL);
  ldvarg335 = (struct device_attribute *)tmp___265;
  tmp___266 = ldv_init_zalloc(48UL);
  ldvarg338 = (struct device_attribute *)tmp___266;
  tmp___267 = ldv_init_zalloc(1UL);
  ldvarg337 = (char *)tmp___267;
  tmp___268 = ldv_init_zalloc(1416UL);
  ldvarg336 = (struct device *)tmp___268;
  tmp___269 = ldv_init_zalloc(1UL);
  ldvarg341 = (char *)tmp___269;
  tmp___270 = ldv_init_zalloc(1UL);
  ldvarg339 = (char *)tmp___270;
  tmp___271 = ldv_init_zalloc(1UL);
  ldvarg343 = (char *)tmp___271;
  tmp___272 = ldv_init_zalloc(48UL);
  ldvarg344 = (struct device_attribute *)tmp___272;
  tmp___273 = ldv_init_zalloc(1416UL);
  ldvarg342 = (struct device *)tmp___273;
  tmp___274 = ldv_init_zalloc(1UL);
  ldvarg346 = (char *)tmp___274;
  tmp___275 = ldv_init_zalloc(1416UL);
  ldvarg345 = (struct device *)tmp___275;
  tmp___276 = ldv_init_zalloc(48UL);
  ldvarg347 = (struct device_attribute *)tmp___276;
  tmp___277 = ldv_init_zalloc(1UL);
  ldvarg348 = (char *)tmp___277;
  tmp___278 = ldv_init_zalloc(1UL);
  ldvarg350 = (char *)tmp___278;
  tmp___279 = ldv_init_zalloc(1UL);
  ldvarg351 = (char *)tmp___279;
  tmp___280 = ldv_init_zalloc(1UL);
  ldvarg353 = (char *)tmp___280;
  tmp___281 = ldv_init_zalloc(1UL);
  ldvarg354 = (char *)tmp___281;
  tmp___282 = ldv_init_zalloc(1UL);
  ldvarg356 = (char *)tmp___282;
  tmp___283 = ldv_init_zalloc(1UL);
  ldvarg359 = (char *)tmp___283;
  tmp___284 = ldv_init_zalloc(1UL);
  ldvarg357 = (char *)tmp___284;
  tmp___285 = ldv_init_zalloc(1UL);
  ldvarg360 = (char *)tmp___285;
  tmp___286 = ldv_init_zalloc(1UL);
  ldvarg362 = (char *)tmp___286;
  tmp___287 = ldv_init_zalloc(1UL);
  ldvarg364 = (char *)tmp___287;
  tmp___288 = ldv_init_zalloc(1416UL);
  ldvarg363 = (struct device *)tmp___288;
  tmp___289 = ldv_init_zalloc(48UL);
  ldvarg365 = (struct device_attribute *)tmp___289;
  tmp___290 = ldv_init_zalloc(1416UL);
  ldvarg366 = (struct device *)tmp___290;
  tmp___291 = ldv_init_zalloc(48UL);
  ldvarg368 = (struct device_attribute *)tmp___291;
  tmp___292 = ldv_init_zalloc(1UL);
  ldvarg367 = (char *)tmp___292;
  tmp___293 = ldv_init_zalloc(1UL);
  ldvarg371 = (char *)tmp___293;
  tmp___294 = ldv_init_zalloc(1UL);
  ldvarg369 = (char *)tmp___294;
  tmp___295 = ldv_init_zalloc(1UL);
  ldvarg372 = (char *)tmp___295;
  tmp___296 = ldv_init_zalloc(1UL);
  ldvarg374 = (char *)tmp___296;
  tmp___297 = ldv_init_zalloc(1UL);
  ldvarg375 = (char *)tmp___297;
  tmp___298 = ldv_init_zalloc(1UL);
  ldvarg377 = (char *)tmp___298;
  tmp___299 = ldv_init_zalloc(1UL);
  ldvarg379 = (char *)tmp___299;
  tmp___300 = ldv_init_zalloc(48UL);
  ldvarg380 = (struct device_attribute *)tmp___300;
  tmp___301 = ldv_init_zalloc(1416UL);
  ldvarg378 = (struct device *)tmp___301;
  tmp___302 = ldv_init_zalloc(1UL);
  ldvarg383 = (char *)tmp___302;
  tmp___303 = ldv_init_zalloc(1UL);
  ldvarg381 = (char *)tmp___303;
  tmp___304 = ldv_init_zalloc(1UL);
  ldvarg385 = (char *)tmp___304;
  tmp___305 = ldv_init_zalloc(1416UL);
  ldvarg384 = (struct device *)tmp___305;
  tmp___306 = ldv_init_zalloc(48UL);
  ldvarg386 = (struct device_attribute *)tmp___306;
  tmp___307 = ldv_init_zalloc(1UL);
  ldvarg388 = (char *)tmp___307;
  tmp___308 = ldv_init_zalloc(48UL);
  ldvarg389 = (struct device_attribute *)tmp___308;
  tmp___309 = ldv_init_zalloc(1416UL);
  ldvarg387 = (struct device *)tmp___309;
  tmp___310 = ldv_init_zalloc(1416UL);
  ldvarg390 = (struct device *)tmp___310;
  tmp___311 = ldv_init_zalloc(48UL);
  ldvarg392 = (struct device_attribute *)tmp___311;
  tmp___312 = ldv_init_zalloc(1UL);
  ldvarg391 = (char *)tmp___312;
  tmp___313 = ldv_init_zalloc(1UL);
  ldvarg393 = (char *)tmp___313;
  tmp___314 = ldv_init_zalloc(1UL);
  ldvarg395 = (char *)tmp___314;
  tmp___315 = ldv_init_zalloc(1UL);
  ldvarg397 = (char *)tmp___315;
  tmp___316 = ldv_init_zalloc(48UL);
  ldvarg398 = (struct device_attribute *)tmp___316;
  tmp___317 = ldv_init_zalloc(1416UL);
  ldvarg396 = (struct device *)tmp___317;
  tmp___318 = ldv_init_zalloc(1UL);
  ldvarg401 = (char *)tmp___318;
  tmp___319 = ldv_init_zalloc(1UL);
  ldvarg399 = (char *)tmp___319;
  tmp___320 = ldv_init_zalloc(1UL);
  ldvarg403 = (char *)tmp___320;
  tmp___321 = ldv_init_zalloc(48UL);
  ldvarg404 = (struct device_attribute *)tmp___321;
  tmp___322 = ldv_init_zalloc(1416UL);
  ldvarg402 = (struct device *)tmp___322;
  tmp___323 = ldv_init_zalloc(1UL);
  ldvarg406 = (char *)tmp___323;
  tmp___324 = ldv_init_zalloc(48UL);
  ldvarg407 = (struct device_attribute *)tmp___324;
  tmp___325 = ldv_init_zalloc(1416UL);
  ldvarg405 = (struct device *)tmp___325;
  tmp___326 = ldv_init_zalloc(1416UL);
  ldvarg408 = (struct device *)tmp___326;
  tmp___327 = ldv_init_zalloc(48UL);
  ldvarg410 = (struct device_attribute *)tmp___327;
  tmp___328 = ldv_init_zalloc(1UL);
  ldvarg409 = (char *)tmp___328;
  tmp___329 = ldv_init_zalloc(48UL);
  ldvarg413 = (struct device_attribute *)tmp___329;
  tmp___330 = ldv_init_zalloc(1UL);
  ldvarg412 = (char *)tmp___330;
  tmp___331 = ldv_init_zalloc(1416UL);
  ldvarg411 = (struct device *)tmp___331;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg1), 0, 8UL);
  ldv_memset((void *)(& ldvarg7), 0, 8UL);
  ldv_memset((void *)(& ldvarg10), 0, 8UL);
  ldv_memset((void *)(& ldvarg13), 0, 8UL);
  ldv_memset((void *)(& ldvarg16), 0, 8UL);
  ldv_memset((void *)(& ldvarg22), 0, 8UL);
  ldv_memset((void *)(& ldvarg25), 0, 8UL);
  ldv_memset((void *)(& ldvarg28), 0, 8UL);
  ldv_memset((void *)(& ldvarg31), 0, 8UL);
  ldv_memset((void *)(& ldvarg40), 0, 8UL);
  ldv_memset((void *)(& ldvarg43), 0, 8UL);
  ldv_memset((void *)(& ldvarg49), 0, 8UL);
  ldv_memset((void *)(& ldvarg52), 0, 8UL);
  ldv_memset((void *)(& ldvarg61), 0, 8UL);
  ldv_memset((void *)(& ldvarg64), 0, 8UL);
  ldv_memset((void *)(& ldvarg67), 0, 8UL);
  ldv_memset((void *)(& ldvarg70), 0, 8UL);
  ldv_memset((void *)(& ldvarg73), 0, 8UL);
  ldv_memset((void *)(& ldvarg85), 0, 8UL);
  ldv_memset((void *)(& ldvarg88), 0, 8UL);
  ldv_memset((void *)(& ldvarg91), 0, 8UL);
  ldv_memset((void *)(& ldvarg94), 0, 8UL);
  ldv_memset((void *)(& ldvarg97), 0, 8UL);
  ldv_memset((void *)(& ldvarg100), 0, 8UL);
  ldv_memset((void *)(& ldvarg103), 0, 8UL);
  ldv_memset((void *)(& ldvarg109), 0, 8UL);
  ldv_memset((void *)(& ldvarg127), 0, 8UL);
  ldv_memset((void *)(& ldvarg130), 0, 8UL);
  ldv_memset((void *)(& ldvarg136), 0, 8UL);
  ldv_memset((void *)(& ldvarg142), 0, 8UL);
  ldv_memset((void *)(& ldvarg148), 0, 8UL);
  ldv_memset((void *)(& ldvarg151), 0, 8UL);
  ldv_memset((void *)(& ldvarg157), 0, 8UL);
  ldv_memset((void *)(& ldvarg160), 0, 8UL);
  ldv_memset((void *)(& ldvarg163), 0, 8UL);
  ldv_memset((void *)(& ldvarg169), 0, 8UL);
  ldv_memset((void *)(& ldvarg175), 0, 8UL);
  ldv_memset((void *)(& ldvarg181), 0, 8UL);
  ldv_memset((void *)(& ldvarg202), 0, 8UL);
  ldv_memset((void *)(& ldvarg205), 0, 8UL);
  ldv_memset((void *)(& ldvarg211), 0, 8UL);
  ldv_memset((void *)(& ldvarg214), 0, 8UL);
  ldv_memset((void *)(& ldvarg217), 0, 8UL);
  ldv_memset((void *)(& ldvarg220), 0, 8UL);
  ldv_memset((void *)(& ldvarg223), 0, 8UL);
  ldv_memset((void *)(& ldvarg226), 0, 8UL);
  ldv_memset((void *)(& ldvarg232), 0, 8UL);
  ldv_memset((void *)(& ldvarg235), 0, 8UL);
  ldv_memset((void *)(& ldvarg238), 0, 8UL);
  ldv_memset((void *)(& ldvarg241), 0, 8UL);
  ldv_memset((void *)(& ldvarg250), 0, 8UL);
  ldv_memset((void *)(& ldvarg253), 0, 8UL);
  ldv_memset((void *)(& ldvarg256), 0, 8UL);
  ldv_memset((void *)(& ldvarg259), 0, 8UL);
  ldv_memset((void *)(& ldvarg262), 0, 8UL);
  ldv_memset((void *)(& ldvarg268), 0, 8UL);
  ldv_memset((void *)(& ldvarg274), 0, 8UL);
  ldv_memset((void *)(& ldvarg280), 0, 8UL);
  ldv_memset((void *)(& ldvarg286), 0, 8UL);
  ldv_memset((void *)(& ldvarg289), 0, 8UL);
  ldv_memset((void *)(& ldvarg292), 0, 8UL);
  ldv_memset((void *)(& ldvarg295), 0, 8UL);
  ldv_memset((void *)(& ldvarg304), 0, 8UL);
  ldv_memset((void *)(& ldvarg307), 0, 8UL);
  ldv_memset((void *)(& ldvarg313), 0, 8UL);
  ldv_memset((void *)(& ldvarg319), 0, 8UL);
  ldv_memset((void *)(& ldvarg325), 0, 8UL);
  ldv_memset((void *)(& ldvarg328), 0, 8UL);
  ldv_memset((void *)(& ldvarg331), 0, 8UL);
  ldv_memset((void *)(& ldvarg340), 0, 8UL);
  ldv_memset((void *)(& ldvarg349), 0, 8UL);
  ldv_memset((void *)(& ldvarg352), 0, 8UL);
  ldv_memset((void *)(& ldvarg355), 0, 8UL);
  ldv_memset((void *)(& ldvarg358), 0, 8UL);
  ldv_memset((void *)(& ldvarg361), 0, 8UL);
  ldv_memset((void *)(& ldvarg370), 0, 8UL);
  ldv_memset((void *)(& ldvarg373), 0, 8UL);
  ldv_memset((void *)(& ldvarg376), 0, 8UL);
  ldv_memset((void *)(& ldvarg382), 0, 8UL);
  ldv_memset((void *)(& ldvarg394), 0, 8UL);
  ldv_memset((void *)(& ldvarg400), 0, 8UL);
  ldv_state_variable_127 = 0;
  ldv_state_variable_32 = 0;
  ldv_state_variable_90 = 0;
  ldv_state_variable_118 = 0;
  ldv_state_variable_71 = 0;
  ldv_state_variable_102 = 0;
  ldv_state_variable_18 = 0;
  ldv_state_variable_125 = 0;
  ldv_state_variable_16 = 0;
  ldv_state_variable_44 = 0;
  ldv_state_variable_55 = 0;
  ldv_state_variable_84 = 0;
  ldv_state_variable_27 = 0;
  ldv_state_variable_95 = 0;
  ldv_state_variable_57 = 0;
  ldv_state_variable_20 = 0;
  ldv_state_variable_109 = 0;
  ldv_state_variable_89 = 0;
  ldv_state_variable_31 = 0;
  ldv_state_variable_35 = 0;
  ldv_state_variable_11 = 0;
  ldv_state_variable_78 = 0;
  ldv_state_variable_93 = 0;
  ldv_state_variable_106 = 0;
  ldv_state_variable_65 = 0;
  ldv_state_variable_29 = 0;
  ldv_state_variable_138 = 0;
  ldv_state_variable_114 = 0;
  ldv_state_variable_58 = 0;
  ldv_state_variable_15 = 0;
  ldv_state_variable_137 = 0;
  ldv_state_variable_81 = 0;
  ldv_state_variable_60 = 0;
  ldv_state_variable_101 = 0;
  ldv_state_variable_73 = 0;
  ldv_state_variable_86 = 0;
  ldv_state_variable_76 = 0;
  ldv_state_variable_62 = 0;
  ldv_state_variable_67 = 0;
  ldv_state_variable_139 = 0;
  ldv_state_variable_129 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_17 = 0;
  ldv_state_variable_110 = 0;
  ldv_state_variable_82 = 0;
  ldv_state_variable_135 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_112 = 0;
  ldv_state_variable_69 = 0;
  ldv_state_variable_49 = 0;
  ldv_state_variable_24 = 0;
  ldv_state_variable_124 = 0;
  ldv_state_variable_104 = 0;
  ldv_state_variable_131 = 0;
  ldv_state_variable_121 = 0;
  ldv_state_variable_79 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_23 = 0;
  ldv_state_variable_96 = 0;
  ldv_state_variable_126 = 0;
  ldv_state_variable_47 = 0;
  ldv_state_variable_8 = 0;
  ldv_state_variable_98 = 0;
  ldv_state_variable_37 = 0;
  ldv_state_variable_117 = 0;
  ldv_state_variable_43 = 0;
  ldv_state_variable_5 = 0;
  ldv_state_variable_33 = 0;
  ldv_state_variable_21 = 0;
  ldv_state_variable_63 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_26 = 0;
  ldv_state_variable_80 = 0;
  ldv_state_variable_119 = 0;
  ldv_state_variable_99 = 0;
  ldv_state_variable_72 = 0;
  ldv_state_variable_74 = 0;
  ldv_state_variable_61 = 0;
  ldv_state_variable_108 = 0;
  ldv_state_variable_115 = 0;
  ldv_state_variable_92 = 0;
  ldv_state_variable_103 = 0;
  ldv_state_variable_10 = 0;
  ldv_state_variable_113 = 0;
  ldv_state_variable_91 = 0;
  ldv_state_variable_48 = 0;
  ldv_state_variable_107 = 0;
  ldv_state_variable_87 = 0;
  ldv_state_variable_77 = 0;
  ldv_state_variable_133 = 0;
  ldv_state_variable_123 = 0;
  ldv_state_variable_50 = 0;
  ldv_state_variable_39 = 0;
  ldv_state_variable_64 = 0;
  ldv_state_variable_97 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_41 = 0;
  ldv_state_variable_52 = 0;
  ldv_state_variable_56 = 0;
  ldv_state_variable_45 = 0;
  ldv_state_variable_66 = 0;
  ldv_state_variable_19 = 0;
  ldv_state_variable_54 = 0;
  ldv_state_variable_70 = 0;
  ldv_state_variable_68 = 0;
  ldv_state_variable_1 = 0;
  ldv_state_variable_136 = 0;
  ldv_state_variable_88 = 0;
  ldv_state_variable_116 = 0;
  ldv_state_variable_30 = 0;
  ldv_state_variable_100 = 0;
  ldv_state_variable_25 = 0;
  ldv_state_variable_128 = 0;
  ldv_state_variable_28 = 0;
  ldv_state_variable_120 = 0;
  ldv_state_variable_134 = 0;
  ldv_state_variable_40 = 0;
  ldv_state_variable_75 = 0;
  ldv_state_variable_83 = 0;
  ldv_state_variable_59 = 0;
  ldv_state_variable_130 = 0;
  ldv_state_variable_53 = 0;
  ldv_state_variable_122 = 0;
  ldv_state_variable_42 = 0;
  ldv_state_variable_22 = 0;
  ldv_state_variable_46 = 0;
  ldv_state_variable_13 = 0;
  ldv_state_variable_105 = 0;
  ldv_state_variable_6 = 0;
  ldv_state_variable_85 = 0;
  ldv_state_variable_36 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_94 = 0;
  ldv_state_variable_51 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_111 = 0;
  ldv_state_variable_38 = 0;
  ldv_state_variable_4 = 0;
  ldv_state_variable_34 = 0;
  ldv_state_variable_132 = 0;
  ldv_34352:
  tmp___332 = __VERIFIER_nondet_int();
  switch (tmp___332) {
  case 0: ;
  if (ldv_state_variable_127 != 0) {
    tmp___333 = __VERIFIER_nondet_int();
    switch (tmp___333) {
    case 0: ;
    if (ldv_state_variable_127 == 1) {
      set_in(sensor_dev_attr_in3_max_group1, sensor_dev_attr_in3_max_group0, (char const *)ldvarg2,
             ldvarg1);
      ldv_state_variable_127 = 1;
    } else {
    }
    goto ldv_33708;
    case 1: ;
    if (ldv_state_variable_127 == 1) {
      show_in(sensor_dev_attr_in3_max_group1, sensor_dev_attr_in3_max_group0, ldvarg0);
      ldv_state_variable_127 = 1;
    } else {
    }
    goto ldv_33708;
    default:
    ldv_stop();
    }
    ldv_33708: ;
  } else {
  }
  goto ldv_33711;
  case 1: ;
  if (ldv_state_variable_32 != 0) {
    tmp___334 = __VERIFIER_nondet_int();
    switch (tmp___334) {
    case 0: ;
    if (ldv_state_variable_32 == 1) {
      show_alarm(ldvarg3, ldvarg5, ldvarg4);
      ldv_state_variable_32 = 1;
    } else {
    }
    goto ldv_33714;
    default:
    ldv_stop();
    }
    ldv_33714: ;
  } else {
  }
  goto ldv_33711;
  case 2: ;
  if (ldv_state_variable_90 != 0) {
    tmp___335 = __VERIFIER_nondet_int();
    switch (tmp___335) {
    case 0: ;
    if (ldv_state_variable_90 == 1) {
      set_fan(sensor_dev_attr_fan3_min_group1, sensor_dev_attr_fan3_min_group0, (char const *)ldvarg8,
              ldvarg7);
      ldv_state_variable_90 = 1;
    } else {
    }
    goto ldv_33718;
    case 1: ;
    if (ldv_state_variable_90 == 1) {
      show_fan(sensor_dev_attr_fan3_min_group1, sensor_dev_attr_fan3_min_group0, ldvarg6);
      ldv_state_variable_90 = 1;
    } else {
    }
    goto ldv_33718;
    default:
    ldv_stop();
    }
    ldv_33718: ;
  } else {
  }
  goto ldv_33711;
  case 3: ;
  if (ldv_state_variable_118 != 0) {
    tmp___336 = __VERIFIER_nondet_int();
    switch (tmp___336) {
    case 0: ;
    if (ldv_state_variable_118 == 1) {
      set_in(sensor_dev_attr_in6_max_group1, sensor_dev_attr_in6_max_group0, (char const *)ldvarg11,
             ldvarg10);
      ldv_state_variable_118 = 1;
    } else {
    }
    goto ldv_33723;
    case 1: ;
    if (ldv_state_variable_118 == 1) {
      show_in(sensor_dev_attr_in6_max_group1, sensor_dev_attr_in6_max_group0, ldvarg9);
      ldv_state_variable_118 = 1;
    } else {
    }
    goto ldv_33723;
    default:
    ldv_stop();
    }
    ldv_33723: ;
  } else {
  }
  goto ldv_33711;
  case 4: ;
  if (ldv_state_variable_71 != 0) {
    tmp___337 = __VERIFIER_nondet_int();
    switch (tmp___337) {
    case 0: ;
    if (ldv_state_variable_71 == 1) {
      set_auto_temp(sensor_dev_attr_pwm1_auto_point3_temp_group1, sensor_dev_attr_pwm1_auto_point3_temp_group0,
                    (char const *)ldvarg14, ldvarg13);
      ldv_state_variable_71 = 1;
    } else {
    }
    goto ldv_33728;
    case 1: ;
    if (ldv_state_variable_71 == 1) {
      show_auto_temp(sensor_dev_attr_pwm1_auto_point3_temp_group1, sensor_dev_attr_pwm1_auto_point3_temp_group0,
                     ldvarg12);
      ldv_state_variable_71 = 1;
    } else {
    }
    goto ldv_33728;
    default:
    ldv_stop();
    }
    ldv_33728: ;
  } else {
  }
  goto ldv_33711;
  case 5: ;
  if (ldv_state_variable_102 != 0) {
    tmp___338 = __VERIFIER_nondet_int();
    switch (tmp___338) {
    case 0: ;
    if (ldv_state_variable_102 == 1) {
      set_temp(sensor_dev_attr_temp3_max_group1, sensor_dev_attr_temp3_max_group0,
               (char const *)ldvarg17, ldvarg16);
      ldv_state_variable_102 = 1;
    } else {
    }
    goto ldv_33733;
    case 1: ;
    if (ldv_state_variable_102 == 1) {
      show_temp(sensor_dev_attr_temp3_max_group1, sensor_dev_attr_temp3_max_group0,
                ldvarg15);
      ldv_state_variable_102 = 1;
    } else {
    }
    goto ldv_33733;
    default:
    ldv_stop();
    }
    ldv_33733: ;
  } else {
  }
  goto ldv_33711;
  case 6: ;
  if (ldv_state_variable_18 != 0) {
    tmp___339 = __VERIFIER_nondet_int();
    switch (tmp___339) {
    case 0: ;
    if (ldv_state_variable_18 == 1) {
      show_beep(ldvarg18, ldvarg20, ldvarg19);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_33738;
    default:
    ldv_stop();
    }
    ldv_33738: ;
  } else {
  }
  goto ldv_33711;
  case 7: ;
  if (ldv_state_variable_125 != 0) {
    tmp___340 = __VERIFIER_nondet_int();
    switch (tmp___340) {
    case 0: ;
    if (ldv_state_variable_125 == 1) {
      set_in(sensor_dev_attr_in4_min_group1, sensor_dev_attr_in4_min_group0, (char const *)ldvarg23,
             ldvarg22);
      ldv_state_variable_125 = 1;
    } else {
    }
    goto ldv_33742;
    case 1: ;
    if (ldv_state_variable_125 == 1) {
      show_in(sensor_dev_attr_in4_min_group1, sensor_dev_attr_in4_min_group0, ldvarg21);
      ldv_state_variable_125 = 1;
    } else {
    }
    goto ldv_33742;
    default:
    ldv_stop();
    }
    ldv_33742: ;
  } else {
  }
  goto ldv_33711;
  case 8: ;
  if (ldv_state_variable_16 != 0) {
    tmp___341 = __VERIFIER_nondet_int();
    switch (tmp___341) {
    case 0: ;
    if (ldv_state_variable_16 == 1) {
      set_beep(sensor_dev_attr_fan1_beep_group1, sensor_dev_attr_fan1_beep_group0,
               (char const *)ldvarg26, ldvarg25);
      ldv_state_variable_16 = 1;
    } else {
    }
    goto ldv_33747;
    case 1: ;
    if (ldv_state_variable_16 == 1) {
      show_beep(sensor_dev_attr_fan1_beep_group1, sensor_dev_attr_fan1_beep_group0,
                ldvarg24);
      ldv_state_variable_16 = 1;
    } else {
    }
    goto ldv_33747;
    default:
    ldv_stop();
    }
    ldv_33747: ;
  } else {
  }
  goto ldv_33711;
  case 9: ;
  if (ldv_state_variable_44 != 0) {
    tmp___342 = __VERIFIER_nondet_int();
    switch (tmp___342) {
    case 0: ;
    if (ldv_state_variable_44 == 1) {
      set_auto_temp(sensor_dev_attr_pwm3_auto_point4_temp_group1, sensor_dev_attr_pwm3_auto_point4_temp_group0,
                    (char const *)ldvarg29, ldvarg28);
      ldv_state_variable_44 = 1;
    } else {
    }
    goto ldv_33752;
    case 1: ;
    if (ldv_state_variable_44 == 1) {
      show_auto_temp(sensor_dev_attr_pwm3_auto_point4_temp_group1, sensor_dev_attr_pwm3_auto_point4_temp_group0,
                     ldvarg27);
      ldv_state_variable_44 = 1;
    } else {
    }
    goto ldv_33752;
    default:
    ldv_stop();
    }
    ldv_33752: ;
  } else {
  }
  goto ldv_33711;
  case 10: ;
  if (ldv_state_variable_55 != 0) {
    tmp___343 = __VERIFIER_nondet_int();
    switch (tmp___343) {
    case 0: ;
    if (ldv_state_variable_55 == 1) {
      set_pwm(sensor_dev_attr_pwm3_group1, sensor_dev_attr_pwm3_group0, (char const *)ldvarg32,
              ldvarg31);
      ldv_state_variable_55 = 1;
    } else {
    }
    goto ldv_33757;
    case 1: ;
    if (ldv_state_variable_55 == 1) {
      show_pwm(sensor_dev_attr_pwm3_group1, sensor_dev_attr_pwm3_group0, ldvarg30);
      ldv_state_variable_55 = 1;
    } else {
    }
    goto ldv_33757;
    default:
    ldv_stop();
    }
    ldv_33757: ;
  } else {
  }
  goto ldv_33711;
  case 11: ;
  if (ldv_state_variable_84 != 0) {
    tmp___344 = __VERIFIER_nondet_int();
    switch (tmp___344) {
    case 0: ;
    if (ldv_state_variable_84 == 1) {
      show_fan(ldvarg33, ldvarg35, ldvarg34);
      ldv_state_variable_84 = 1;
    } else {
    }
    goto ldv_33762;
    default:
    ldv_stop();
    }
    ldv_33762: ;
  } else {
  }
  goto ldv_33711;
  case 12: ;
  if (ldv_state_variable_27 != 0) {
    tmp___345 = __VERIFIER_nondet_int();
    switch (tmp___345) {
    case 0: ;
    if (ldv_state_variable_27 == 1) {
      show_alarm(ldvarg36, ldvarg38, ldvarg37);
      ldv_state_variable_27 = 1;
    } else {
    }
    goto ldv_33766;
    default:
    ldv_stop();
    }
    ldv_33766: ;
  } else {
  }
  goto ldv_33711;
  case 13: ;
  if (ldv_state_variable_95 != 0) {
    tmp___346 = __VERIFIER_nondet_int();
    switch (tmp___346) {
    case 0: ;
    if (ldv_state_variable_95 == 1) {
      set_fan_div(sensor_dev_attr_fan1_div_group1, sensor_dev_attr_fan1_div_group0,
                  (char const *)ldvarg41, ldvarg40);
      ldv_state_variable_95 = 1;
    } else {
    }
    goto ldv_33770;
    case 1: ;
    if (ldv_state_variable_95 == 1) {
      show_fan_div(sensor_dev_attr_fan1_div_group1, sensor_dev_attr_fan1_div_group0,
                   ldvarg39);
      ldv_state_variable_95 = 1;
    } else {
    }
    goto ldv_33770;
    default:
    ldv_stop();
    }
    ldv_33770: ;
  } else {
  }
  goto ldv_33711;
  case 14: ;
  if (ldv_state_variable_57 != 0) {
    tmp___347 = __VERIFIER_nondet_int();
    switch (tmp___347) {
    case 0: ;
    if (ldv_state_variable_57 == 1) {
      set_auto_temp(sensor_dev_attr_pwm2_auto_point4_temp_group1, sensor_dev_attr_pwm2_auto_point4_temp_group0,
                    (char const *)ldvarg44, ldvarg43);
      ldv_state_variable_57 = 1;
    } else {
    }
    goto ldv_33775;
    case 1: ;
    if (ldv_state_variable_57 == 1) {
      show_auto_temp(sensor_dev_attr_pwm2_auto_point4_temp_group1, sensor_dev_attr_pwm2_auto_point4_temp_group0,
                     ldvarg42);
      ldv_state_variable_57 = 1;
    } else {
    }
    goto ldv_33775;
    default:
    ldv_stop();
    }
    ldv_33775: ;
  } else {
  }
  goto ldv_33711;
  case 15: ;
  if (ldv_state_variable_20 != 0) {
    tmp___348 = __VERIFIER_nondet_int();
    switch (tmp___348) {
    case 0: ;
    if (ldv_state_variable_20 == 1) {
      show_beep(ldvarg45, ldvarg47, ldvarg46);
      ldv_state_variable_20 = 1;
    } else {
    }
    goto ldv_33780;
    default:
    ldv_stop();
    }
    ldv_33780: ;
  } else {
  }
  goto ldv_33711;
  case 16: ;
  if (ldv_state_variable_109 != 0) {
    tmp___349 = __VERIFIER_nondet_int();
    switch (tmp___349) {
    case 0: ;
    if (ldv_state_variable_109 == 1) {
      set_temp(sensor_dev_attr_temp1_offset_group1, sensor_dev_attr_temp1_offset_group0,
               (char const *)ldvarg50, ldvarg49);
      ldv_state_variable_109 = 1;
    } else {
    }
    goto ldv_33784;
    case 1: ;
    if (ldv_state_variable_109 == 1) {
      show_temp(sensor_dev_attr_temp1_offset_group1, sensor_dev_attr_temp1_offset_group0,
                ldvarg48);
      ldv_state_variable_109 = 1;
    } else {
    }
    goto ldv_33784;
    default:
    ldv_stop();
    }
    ldv_33784: ;
  } else {
  }
  goto ldv_33711;
  case 17: ;
  if (ldv_state_variable_89 != 0) {
    tmp___350 = __VERIFIER_nondet_int();
    switch (tmp___350) {
    case 0: ;
    if (ldv_state_variable_89 == 1) {
      set_fan_div(sensor_dev_attr_fan3_div_group1, sensor_dev_attr_fan3_div_group0,
                  (char const *)ldvarg53, ldvarg52);
      ldv_state_variable_89 = 1;
    } else {
    }
    goto ldv_33789;
    case 1: ;
    if (ldv_state_variable_89 == 1) {
      show_fan_div(sensor_dev_attr_fan3_div_group1, sensor_dev_attr_fan3_div_group0,
                   ldvarg51);
      ldv_state_variable_89 = 1;
    } else {
    }
    goto ldv_33789;
    default:
    ldv_stop();
    }
    ldv_33789: ;
  } else {
  }
  goto ldv_33711;
  case 18: ;
  if (ldv_state_variable_31 != 0) {
    tmp___351 = __VERIFIER_nondet_int();
    switch (tmp___351) {
    case 0: ;
    if (ldv_state_variable_31 == 1) {
      show_alarm(ldvarg54, ldvarg56, ldvarg55);
      ldv_state_variable_31 = 1;
    } else {
    }
    goto ldv_33794;
    default:
    ldv_stop();
    }
    ldv_33794: ;
  } else {
  }
  goto ldv_33711;
  case 19: ;
  if (ldv_state_variable_35 != 0) {
    tmp___352 = __VERIFIER_nondet_int();
    switch (tmp___352) {
    case 0: ;
    if (ldv_state_variable_35 == 1) {
      show_alarm(ldvarg57, ldvarg59, ldvarg58);
      ldv_state_variable_35 = 1;
    } else {
    }
    goto ldv_33798;
    default:
    ldv_stop();
    }
    ldv_33798: ;
  } else {
  }
  goto ldv_33711;
  case 20: ;
  if (ldv_state_variable_11 != 0) {
    tmp___353 = __VERIFIER_nondet_int();
    switch (tmp___353) {
    case 0: ;
    if (ldv_state_variable_11 == 1) {
      set_beep(sensor_dev_attr_fan6_beep_group1, sensor_dev_attr_fan6_beep_group0,
               (char const *)ldvarg62, ldvarg61);
      ldv_state_variable_11 = 1;
    } else {
    }
    goto ldv_33802;
    case 1: ;
    if (ldv_state_variable_11 == 1) {
      show_beep(sensor_dev_attr_fan6_beep_group1, sensor_dev_attr_fan6_beep_group0,
                ldvarg60);
      ldv_state_variable_11 = 1;
    } else {
    }
    goto ldv_33802;
    default:
    ldv_stop();
    }
    ldv_33802: ;
  } else {
  }
  goto ldv_33711;
  case 21: ;
  if (ldv_state_variable_78 != 0) {
    tmp___354 = __VERIFIER_nondet_int();
    switch (tmp___354) {
    case 0: ;
    if (ldv_state_variable_78 == 1) {
      set_auto_pwm(sensor_dev_attr_pwm1_auto_point1_pwm_group1, sensor_dev_attr_pwm1_auto_point1_pwm_group0,
                   (char const *)ldvarg65, ldvarg64);
      ldv_state_variable_78 = 1;
    } else {
    }
    goto ldv_33807;
    case 1: ;
    if (ldv_state_variable_78 == 1) {
      show_auto_pwm(sensor_dev_attr_pwm1_auto_point1_pwm_group1, sensor_dev_attr_pwm1_auto_point1_pwm_group0,
                    ldvarg63);
      ldv_state_variable_78 = 1;
    } else {
    }
    goto ldv_33807;
    default:
    ldv_stop();
    }
    ldv_33807: ;
  } else {
  }
  goto ldv_33711;
  case 22: ;
  if (ldv_state_variable_93 != 0) {
    tmp___355 = __VERIFIER_nondet_int();
    switch (tmp___355) {
    case 0: ;
    if (ldv_state_variable_93 == 1) {
      set_fan(sensor_dev_attr_fan2_min_group1, sensor_dev_attr_fan2_min_group0, (char const *)ldvarg68,
              ldvarg67);
      ldv_state_variable_93 = 1;
    } else {
    }
    goto ldv_33812;
    case 1: ;
    if (ldv_state_variable_93 == 1) {
      show_fan(sensor_dev_attr_fan2_min_group1, sensor_dev_attr_fan2_min_group0, ldvarg66);
      ldv_state_variable_93 = 1;
    } else {
    }
    goto ldv_33812;
    default:
    ldv_stop();
    }
    ldv_33812: ;
  } else {
  }
  goto ldv_33711;
  case 23: ;
  if (ldv_state_variable_106 != 0) {
    tmp___356 = __VERIFIER_nondet_int();
    switch (tmp___356) {
    case 0: ;
    if (ldv_state_variable_106 == 1) {
      set_temp(sensor_dev_attr_temp2_max_group1, sensor_dev_attr_temp2_max_group0,
               (char const *)ldvarg71, ldvarg70);
      ldv_state_variable_106 = 1;
    } else {
    }
    goto ldv_33817;
    case 1: ;
    if (ldv_state_variable_106 == 1) {
      show_temp(sensor_dev_attr_temp2_max_group1, sensor_dev_attr_temp2_max_group0,
                ldvarg69);
      ldv_state_variable_106 = 1;
    } else {
    }
    goto ldv_33817;
    default:
    ldv_stop();
    }
    ldv_33817: ;
  } else {
  }
  goto ldv_33711;
  case 24: ;
  if (ldv_state_variable_65 != 0) {
    tmp___357 = __VERIFIER_nondet_int();
    switch (tmp___357) {
    case 0: ;
    if (ldv_state_variable_65 == 1) {
      set_auto_pwm(sensor_dev_attr_pwm2_auto_point1_pwm_group1, sensor_dev_attr_pwm2_auto_point1_pwm_group0,
                   (char const *)ldvarg74, ldvarg73);
      ldv_state_variable_65 = 1;
    } else {
    }
    goto ldv_33822;
    case 1: ;
    if (ldv_state_variable_65 == 1) {
      show_auto_pwm(sensor_dev_attr_pwm2_auto_point1_pwm_group1, sensor_dev_attr_pwm2_auto_point1_pwm_group0,
                    ldvarg72);
      ldv_state_variable_65 = 1;
    } else {
    }
    goto ldv_33822;
    default:
    ldv_stop();
    }
    ldv_33822: ;
  } else {
  }
  goto ldv_33711;
  case 25: ;
  if (ldv_state_variable_29 != 0) {
    tmp___358 = __VERIFIER_nondet_int();
    switch (tmp___358) {
    case 0: ;
    if (ldv_state_variable_29 == 1) {
      show_alarm(ldvarg75, ldvarg77, ldvarg76);
      ldv_state_variable_29 = 1;
    } else {
    }
    goto ldv_33827;
    default:
    ldv_stop();
    }
    ldv_33827: ;
  } else {
  }
  goto ldv_33711;
  case 26: ;
  if (ldv_state_variable_138 != 0) {
    tmp___359 = __VERIFIER_nondet_int();
    switch (tmp___359) {
    case 0: ;
    if (ldv_state_variable_138 == 1) {
      show_in(ldvarg78, ldvarg80, ldvarg79);
      ldv_state_variable_138 = 1;
    } else {
    }
    goto ldv_33831;
    default:
    ldv_stop();
    }
    ldv_33831: ;
  } else {
  }
  goto ldv_33711;
  case 27: ;
  if (ldv_state_variable_114 != 0) {
    tmp___360 = __VERIFIER_nondet_int();
    switch (tmp___360) {
    case 0: ;
    if (ldv_state_variable_114 == 1) {
      show_in(ldvarg81, ldvarg83, ldvarg82);
      ldv_state_variable_114 = 1;
    } else {
    }
    goto ldv_33835;
    default:
    ldv_stop();
    }
    ldv_33835: ;
  } else {
  }
  goto ldv_33711;
  case 28: ;
  if (ldv_state_variable_58 != 0) {
    tmp___361 = __VERIFIER_nondet_int();
    switch (tmp___361) {
    case 0: ;
    if (ldv_state_variable_58 == 1) {
      set_auto_temp(sensor_dev_attr_pwm2_auto_point3_temp_group1, sensor_dev_attr_pwm2_auto_point3_temp_group0,
                    (char const *)ldvarg86, ldvarg85);
      ldv_state_variable_58 = 1;
    } else {
    }
    goto ldv_33839;
    case 1: ;
    if (ldv_state_variable_58 == 1) {
      show_auto_temp(sensor_dev_attr_pwm2_auto_point3_temp_group1, sensor_dev_attr_pwm2_auto_point3_temp_group0,
                     ldvarg84);
      ldv_state_variable_58 = 1;
    } else {
    }
    goto ldv_33839;
    default:
    ldv_stop();
    }
    ldv_33839: ;
  } else {
  }
  goto ldv_33711;
  case 29: ;
  if (ldv_state_variable_15 != 0) {
    tmp___362 = __VERIFIER_nondet_int();
    switch (tmp___362) {
    case 0: ;
    if (ldv_state_variable_15 == 1) {
      set_beep(sensor_dev_attr_fan2_beep_group1, sensor_dev_attr_fan2_beep_group0,
               (char const *)ldvarg89, ldvarg88);
      ldv_state_variable_15 = 1;
    } else {
    }
    goto ldv_33844;
    case 1: ;
    if (ldv_state_variable_15 == 1) {
      show_beep(sensor_dev_attr_fan2_beep_group1, sensor_dev_attr_fan2_beep_group0,
                ldvarg87);
      ldv_state_variable_15 = 1;
    } else {
    }
    goto ldv_33844;
    default:
    ldv_stop();
    }
    ldv_33844: ;
  } else {
  }
  goto ldv_33711;
  case 30: ;
  if (ldv_state_variable_137 != 0) {
    tmp___363 = __VERIFIER_nondet_int();
    switch (tmp___363) {
    case 0: ;
    if (ldv_state_variable_137 == 1) {
      set_in(sensor_dev_attr_in0_min_group1, sensor_dev_attr_in0_min_group0, (char const *)ldvarg92,
             ldvarg91);
      ldv_state_variable_137 = 1;
    } else {
    }
    goto ldv_33849;
    case 1: ;
    if (ldv_state_variable_137 == 1) {
      show_in(sensor_dev_attr_in0_min_group1, sensor_dev_attr_in0_min_group0, ldvarg90);
      ldv_state_variable_137 = 1;
    } else {
    }
    goto ldv_33849;
    default:
    ldv_stop();
    }
    ldv_33849: ;
  } else {
  }
  goto ldv_33711;
  case 31: ;
  if (ldv_state_variable_81 != 0) {
    tmp___364 = __VERIFIER_nondet_int();
    switch (tmp___364) {
    case 0: ;
    if (ldv_state_variable_81 == 1) {
      set_pwm(sensor_dev_attr_pwm1_group1, sensor_dev_attr_pwm1_group0, (char const *)ldvarg95,
              ldvarg94);
      ldv_state_variable_81 = 1;
    } else {
    }
    goto ldv_33854;
    case 1: ;
    if (ldv_state_variable_81 == 1) {
      show_pwm(sensor_dev_attr_pwm1_group1, sensor_dev_attr_pwm1_group0, ldvarg93);
      ldv_state_variable_81 = 1;
    } else {
    }
    goto ldv_33854;
    default:
    ldv_stop();
    }
    ldv_33854: ;
  } else {
  }
  goto ldv_33711;
  case 32: ;
  if (ldv_state_variable_60 != 0) {
    tmp___365 = __VERIFIER_nondet_int();
    switch (tmp___365) {
    case 0: ;
    if (ldv_state_variable_60 == 1) {
      set_auto_temp(sensor_dev_attr_pwm2_auto_point1_temp_hyst_group1, sensor_dev_attr_pwm2_auto_point1_temp_hyst_group0,
                    (char const *)ldvarg98, ldvarg97);
      ldv_state_variable_60 = 1;
    } else {
    }
    goto ldv_33859;
    case 1: ;
    if (ldv_state_variable_60 == 1) {
      show_auto_temp(sensor_dev_attr_pwm2_auto_point1_temp_hyst_group1, sensor_dev_attr_pwm2_auto_point1_temp_hyst_group0,
                     ldvarg96);
      ldv_state_variable_60 = 1;
    } else {
    }
    goto ldv_33859;
    default:
    ldv_stop();
    }
    ldv_33859: ;
  } else {
  }
  goto ldv_33711;
  case 33: ;
  if (ldv_state_variable_101 != 0) {
    tmp___366 = __VERIFIER_nondet_int();
    switch (tmp___366) {
    case 0: ;
    if (ldv_state_variable_101 == 1) {
      set_temp(sensor_dev_attr_temp3_offset_group1, sensor_dev_attr_temp3_offset_group0,
               (char const *)ldvarg101, ldvarg100);
      ldv_state_variable_101 = 1;
    } else {
    }
    goto ldv_33864;
    case 1: ;
    if (ldv_state_variable_101 == 1) {
      show_temp(sensor_dev_attr_temp3_offset_group1, sensor_dev_attr_temp3_offset_group0,
                ldvarg99);
      ldv_state_variable_101 = 1;
    } else {
    }
    goto ldv_33864;
    default:
    ldv_stop();
    }
    ldv_33864: ;
  } else {
  }
  goto ldv_33711;
  case 34: ;
  if (ldv_state_variable_73 != 0) {
    tmp___367 = __VERIFIER_nondet_int();
    switch (tmp___367) {
    case 0: ;
    if (ldv_state_variable_73 == 1) {
      set_auto_temp(sensor_dev_attr_pwm1_auto_point1_temp_hyst_group1, sensor_dev_attr_pwm1_auto_point1_temp_hyst_group0,
                    (char const *)ldvarg104, ldvarg103);
      ldv_state_variable_73 = 1;
    } else {
    }
    goto ldv_33869;
    case 1: ;
    if (ldv_state_variable_73 == 1) {
      show_auto_temp(sensor_dev_attr_pwm1_auto_point1_temp_hyst_group1, sensor_dev_attr_pwm1_auto_point1_temp_hyst_group0,
                     ldvarg102);
      ldv_state_variable_73 = 1;
    } else {
    }
    goto ldv_33869;
    default:
    ldv_stop();
    }
    ldv_33869: ;
  } else {
  }
  goto ldv_33711;
  case 35: ;
  if (ldv_state_variable_86 != 0) {
    tmp___368 = __VERIFIER_nondet_int();
    switch (tmp___368) {
    case 0: ;
    if (ldv_state_variable_86 == 1) {
      show_fan(ldvarg105, ldvarg107, ldvarg106);
      ldv_state_variable_86 = 1;
    } else {
    }
    goto ldv_33874;
    default:
    ldv_stop();
    }
    ldv_33874: ;
  } else {
  }
  goto ldv_33711;
  case 36: ;
  if (ldv_state_variable_76 != 0) {
    tmp___369 = __VERIFIER_nondet_int();
    switch (tmp___369) {
    case 0: ;
    if (ldv_state_variable_76 == 1) {
      set_auto_pwm(sensor_dev_attr_pwm1_auto_point3_pwm_group1, sensor_dev_attr_pwm1_auto_point3_pwm_group0,
                   (char const *)ldvarg110, ldvarg109);
      ldv_state_variable_76 = 1;
    } else {
    }
    goto ldv_33878;
    case 1: ;
    if (ldv_state_variable_76 == 1) {
      show_auto_pwm(sensor_dev_attr_pwm1_auto_point3_pwm_group1, sensor_dev_attr_pwm1_auto_point3_pwm_group0,
                    ldvarg108);
      ldv_state_variable_76 = 1;
    } else {
    }
    goto ldv_33878;
    default:
    ldv_stop();
    }
    ldv_33878: ;
  } else {
  }
  goto ldv_33711;
  case 37: ;
  if (ldv_state_variable_62 != 0) {
    tmp___370 = __VERIFIER_nondet_int();
    switch (tmp___370) {
    case 0: ;
    if (ldv_state_variable_62 == 1) {
      show_auto_pwm(ldvarg111, ldvarg113, ldvarg112);
      ldv_state_variable_62 = 1;
    } else {
    }
    goto ldv_33883;
    default:
    ldv_stop();
    }
    ldv_33883: ;
  } else {
  }
  goto ldv_33711;
  case 38: ;
  if (ldv_state_variable_67 != 0) {
    tmp___371 = __VERIFIER_nondet_int();
    switch (tmp___371) {
    case 0: ;
    if (ldv_state_variable_67 == 1) {
      show_pwm_freq(ldvarg114, ldvarg116, ldvarg115);
      ldv_state_variable_67 = 1;
    } else {
    }
    goto ldv_33887;
    default:
    ldv_stop();
    }
    ldv_33887: ;
  } else {
  }
  goto ldv_33711;
  case 39: ;
  if (ldv_state_variable_139 != 0) {
    tmp___372 = __VERIFIER_nondet_int();
    switch (tmp___372) {
    case 0: ;
    if (ldv_state_variable_139 == 1) {
      ldv_retval_1 = it87_probe(it87_driver_group1);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_139 = 2;
        ref_cnt = ref_cnt + 1;
        probed_139 = 1;
      } else {
      }
    } else {
    }
    goto ldv_33891;
    case 1: ;
    if (ldv_state_variable_139 == 1 && probed_139 == 1) {
      ldv_retval_0 = it87_remove(it87_driver_group1);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_139 = 1;
        ref_cnt = ref_cnt - 1;
        probed_139 = 0;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_139 == 2 && probed_139 == 1) {
      ldv_retval_0 = it87_remove(it87_driver_group1);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_139 = 1;
        ref_cnt = ref_cnt - 1;
        probed_139 = 0;
      } else {
      }
    } else {
    }
    goto ldv_33891;
    default:
    ldv_stop();
    }
    ldv_33891: ;
  } else {
  }
  goto ldv_33711;
  case 40: ;
  if (ldv_state_variable_129 != 0) {
    tmp___373 = __VERIFIER_nondet_int();
    switch (tmp___373) {
    case 0: ;
    if (ldv_state_variable_129 == 1) {
      show_in(ldvarg117, ldvarg119, ldvarg118);
      ldv_state_variable_129 = 1;
    } else {
    }
    goto ldv_33896;
    default:
    ldv_stop();
    }
    ldv_33896: ;
  } else {
  }
  goto ldv_33711;
  case 41: ;
  if (ldv_state_variable_2 != 0) {
    tmp___374 = __VERIFIER_nondet_int();
    switch (tmp___374) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      show_label(ldvarg120, ldvarg122, ldvarg121);
      ldv_state_variable_2 = 1;
    } else {
    }
    goto ldv_33900;
    default:
    ldv_stop();
    }
    ldv_33900: ;
  } else {
  }
  goto ldv_33711;
  case 42: ;
  if (ldv_state_variable_17 != 0) {
    tmp___375 = __VERIFIER_nondet_int();
    switch (tmp___375) {
    case 0: ;
    if (ldv_state_variable_17 == 1) {
      show_beep(ldvarg123, ldvarg125, ldvarg124);
      ldv_state_variable_17 = 1;
    } else {
    }
    goto ldv_33904;
    default:
    ldv_stop();
    }
    ldv_33904: ;
  } else {
  }
  goto ldv_33711;
  case 43: ;
  if (ldv_state_variable_110 != 0) {
    tmp___376 = __VERIFIER_nondet_int();
    switch (tmp___376) {
    case 0: ;
    if (ldv_state_variable_110 == 1) {
      set_temp(sensor_dev_attr_temp1_max_group1, sensor_dev_attr_temp1_max_group0,
               (char const *)ldvarg128, ldvarg127);
      ldv_state_variable_110 = 1;
    } else {
    }
    goto ldv_33908;
    case 1: ;
    if (ldv_state_variable_110 == 1) {
      show_temp(sensor_dev_attr_temp1_max_group1, sensor_dev_attr_temp1_max_group0,
                ldvarg126);
      ldv_state_variable_110 = 1;
    } else {
    }
    goto ldv_33908;
    default:
    ldv_stop();
    }
    ldv_33908: ;
  } else {
  }
  goto ldv_33711;
  case 44: ;
  if (ldv_state_variable_82 != 0) {
    tmp___377 = __VERIFIER_nondet_int();
    switch (tmp___377) {
    case 0: ;
    if (ldv_state_variable_82 == 1) {
      set_pwm_enable(sensor_dev_attr_pwm1_enable_group1, sensor_dev_attr_pwm1_enable_group0,
                     (char const *)ldvarg131, ldvarg130);
      ldv_state_variable_82 = 1;
    } else {
    }
    goto ldv_33913;
    case 1: ;
    if (ldv_state_variable_82 == 1) {
      show_pwm_enable(sensor_dev_attr_pwm1_enable_group1, sensor_dev_attr_pwm1_enable_group0,
                      ldvarg129);
      ldv_state_variable_82 = 1;
    } else {
    }
    goto ldv_33913;
    default:
    ldv_stop();
    }
    ldv_33913: ;
  } else {
  }
  goto ldv_33711;
  case 45: ;
  if (ldv_state_variable_135 != 0) {
    tmp___378 = __VERIFIER_nondet_int();
    switch (tmp___378) {
    case 0: ;
    if (ldv_state_variable_135 == 1) {
      show_in(ldvarg132, ldvarg134, ldvarg133);
      ldv_state_variable_135 = 1;
    } else {
    }
    goto ldv_33918;
    default:
    ldv_stop();
    }
    ldv_33918: ;
  } else {
  }
  goto ldv_33711;
  case 46: ;
  if (ldv_state_variable_14 != 0) {
    tmp___379 = __VERIFIER_nondet_int();
    switch (tmp___379) {
    case 0: ;
    if (ldv_state_variable_14 == 1) {
      set_beep(sensor_dev_attr_fan3_beep_group1, sensor_dev_attr_fan3_beep_group0,
               (char const *)ldvarg137, ldvarg136);
      ldv_state_variable_14 = 1;
    } else {
    }
    goto ldv_33922;
    case 1: ;
    if (ldv_state_variable_14 == 1) {
      show_beep(sensor_dev_attr_fan3_beep_group1, sensor_dev_attr_fan3_beep_group0,
                ldvarg135);
      ldv_state_variable_14 = 1;
    } else {
    }
    goto ldv_33922;
    default:
    ldv_stop();
    }
    ldv_33922: ;
  } else {
  }
  goto ldv_33711;
  case 47: ;
  if (ldv_state_variable_112 != 0) {
    tmp___380 = __VERIFIER_nondet_int();
    switch (tmp___380) {
    case 0: ;
    if (ldv_state_variable_112 == 1) {
      show_temp(ldvarg138, ldvarg140, ldvarg139);
      ldv_state_variable_112 = 1;
    } else {
    }
    goto ldv_33927;
    default:
    ldv_stop();
    }
    ldv_33927: ;
  } else {
  }
  goto ldv_33711;
  case 48: ;
  if (ldv_state_variable_69 != 0) {
    tmp___381 = __VERIFIER_nondet_int();
    switch (tmp___381) {
    case 0: ;
    if (ldv_state_variable_69 == 1) {
      set_pwm_enable(sensor_dev_attr_pwm2_enable_group1, sensor_dev_attr_pwm2_enable_group0,
                     (char const *)ldvarg143, ldvarg142);
      ldv_state_variable_69 = 1;
    } else {
    }
    goto ldv_33931;
    case 1: ;
    if (ldv_state_variable_69 == 1) {
      show_pwm_enable(sensor_dev_attr_pwm2_enable_group1, sensor_dev_attr_pwm2_enable_group0,
                      ldvarg141);
      ldv_state_variable_69 = 1;
    } else {
    }
    goto ldv_33931;
    default:
    ldv_stop();
    }
    ldv_33931: ;
  } else {
  }
  goto ldv_33711;
  case 49: ;
  if (ldv_state_variable_49 != 0) {
    tmp___382 = __VERIFIER_nondet_int();
    switch (tmp___382) {
    case 0: ;
    if (ldv_state_variable_49 == 1) {
      show_auto_pwm(ldvarg144, ldvarg146, ldvarg145);
      ldv_state_variable_49 = 1;
    } else {
    }
    goto ldv_33936;
    default:
    ldv_stop();
    }
    ldv_33936: ;
  } else {
  }
  goto ldv_33711;
  case 50: ;
  if (ldv_state_variable_24 != 0) {
    tmp___383 = __VERIFIER_nondet_int();
    switch (tmp___383) {
    case 0: ;
    if (ldv_state_variable_24 == 1) {
      set_beep(sensor_dev_attr_in0_beep_group1, sensor_dev_attr_in0_beep_group0, (char const *)ldvarg149,
               ldvarg148);
      ldv_state_variable_24 = 1;
    } else {
    }
    goto ldv_33940;
    case 1: ;
    if (ldv_state_variable_24 == 1) {
      show_beep(sensor_dev_attr_in0_beep_group1, sensor_dev_attr_in0_beep_group0,
                ldvarg147);
      ldv_state_variable_24 = 1;
    } else {
    }
    goto ldv_33940;
    default:
    ldv_stop();
    }
    ldv_33940: ;
  } else {
  }
  goto ldv_33711;
  case 51: ;
  if (ldv_state_variable_124 != 0) {
    tmp___384 = __VERIFIER_nondet_int();
    switch (tmp___384) {
    case 0: ;
    if (ldv_state_variable_124 == 1) {
      set_in(sensor_dev_attr_in4_max_group1, sensor_dev_attr_in4_max_group0, (char const *)ldvarg152,
             ldvarg151);
      ldv_state_variable_124 = 1;
    } else {
    }
    goto ldv_33945;
    case 1: ;
    if (ldv_state_variable_124 == 1) {
      show_in(sensor_dev_attr_in4_max_group1, sensor_dev_attr_in4_max_group0, ldvarg150);
      ldv_state_variable_124 = 1;
    } else {
    }
    goto ldv_33945;
    default:
    ldv_stop();
    }
    ldv_33945: ;
  } else {
  }
  goto ldv_33711;
  case 52: ;
  if (ldv_state_variable_104 != 0) {
    tmp___385 = __VERIFIER_nondet_int();
    switch (tmp___385) {
    case 0: ;
    if (ldv_state_variable_104 == 1) {
      show_temp(ldvarg153, ldvarg155, ldvarg154);
      ldv_state_variable_104 = 1;
    } else {
    }
    goto ldv_33950;
    default:
    ldv_stop();
    }
    ldv_33950: ;
  } else {
  }
  goto ldv_33711;
  case 53: ;
  if (ldv_state_variable_131 != 0) {
    tmp___386 = __VERIFIER_nondet_int();
    switch (tmp___386) {
    case 0: ;
    if (ldv_state_variable_131 == 1) {
      set_in(sensor_dev_attr_in2_min_group1, sensor_dev_attr_in2_min_group0, (char const *)ldvarg158,
             ldvarg157);
      ldv_state_variable_131 = 1;
    } else {
    }
    goto ldv_33954;
    case 1: ;
    if (ldv_state_variable_131 == 1) {
      show_in(sensor_dev_attr_in2_min_group1, sensor_dev_attr_in2_min_group0, ldvarg156);
      ldv_state_variable_131 = 1;
    } else {
    }
    goto ldv_33954;
    default:
    ldv_stop();
    }
    ldv_33954: ;
  } else {
  }
  goto ldv_33711;
  case 54: ;
  if (ldv_state_variable_121 != 0) {
    tmp___387 = __VERIFIER_nondet_int();
    switch (tmp___387) {
    case 0: ;
    if (ldv_state_variable_121 == 1) {
      set_in(sensor_dev_attr_in5_max_group1, sensor_dev_attr_in5_max_group0, (char const *)ldvarg161,
             ldvarg160);
      ldv_state_variable_121 = 1;
    } else {
    }
    goto ldv_33959;
    case 1: ;
    if (ldv_state_variable_121 == 1) {
      show_in(sensor_dev_attr_in5_max_group1, sensor_dev_attr_in5_max_group0, ldvarg159);
      ldv_state_variable_121 = 1;
    } else {
    }
    goto ldv_33959;
    default:
    ldv_stop();
    }
    ldv_33959: ;
  } else {
  }
  goto ldv_33711;
  case 55: ;
  if (ldv_state_variable_79 != 0) {
    tmp___388 = __VERIFIER_nondet_int();
    switch (tmp___388) {
    case 0: ;
    if (ldv_state_variable_79 == 1) {
      set_pwm_temp_map(sensor_dev_attr_pwm1_auto_channels_temp_group1, sensor_dev_attr_pwm1_auto_channels_temp_group0,
                       (char const *)ldvarg164, ldvarg163);
      ldv_state_variable_79 = 1;
    } else {
    }
    goto ldv_33964;
    case 1: ;
    if (ldv_state_variable_79 == 1) {
      show_pwm_temp_map(sensor_dev_attr_pwm1_auto_channels_temp_group1, sensor_dev_attr_pwm1_auto_channels_temp_group0,
                        ldvarg162);
      ldv_state_variable_79 = 1;
    } else {
    }
    goto ldv_33964;
    default:
    ldv_stop();
    }
    ldv_33964: ;
  } else {
  }
  goto ldv_33711;
  case 56: ;
  if (ldv_state_variable_0 != 0) {
    tmp___389 = __VERIFIER_nondet_int();
    switch (tmp___389) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      sm_it87_exit();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_33970;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_2 = sm_it87_init();
      if (ldv_retval_2 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_2 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_132 = 1;
        ldv_state_variable_34 = 1;
        ldv_state_variable_4 = 1;
        ldv_state_variable_38 = 1;
        ldv_state_variable_111 = 1;
        ldv_initialize_sensor_device_attribute_2_111();
        ldv_state_variable_9 = 1;
        ldv_state_variable_51 = 1;
        ldv_initialize_sensor_device_attribute_2_51();
        ldv_state_variable_94 = 1;
        ldv_state_variable_3 = 1;
        ldv_state_variable_36 = 1;
        ldv_state_variable_85 = 1;
        ldv_initialize_sensor_device_attribute_2_85();
        ldv_state_variable_6 = 1;
        ldv_state_variable_105 = 1;
        ldv_initialize_sensor_device_attribute_2_105();
        ldv_state_variable_13 = 1;
        ldv_initialize_sensor_device_attribute_13();
        ldv_state_variable_46 = 1;
        ldv_initialize_sensor_device_attribute_2_46();
        ldv_state_variable_22 = 1;
        ldv_state_variable_42 = 1;
        ldv_state_variable_122 = 1;
        ldv_initialize_sensor_device_attribute_2_122();
        ldv_state_variable_53 = 1;
        ldv_initialize_sensor_device_attribute_53();
        ldv_state_variable_130 = 1;
        ldv_initialize_sensor_device_attribute_2_130();
        ldv_state_variable_59 = 1;
        ldv_initialize_sensor_device_attribute_2_59();
        ldv_state_variable_83 = 1;
        ldv_initialize_sensor_device_attribute_2_83();
        ldv_state_variable_75 = 1;
        ldv_state_variable_40 = 1;
        ldv_state_variable_134 = 1;
        ldv_initialize_sensor_device_attribute_2_134();
        ldv_state_variable_120 = 1;
        ldv_state_variable_28 = 1;
        ldv_state_variable_128 = 1;
        ldv_initialize_sensor_device_attribute_2_128();
        ldv_state_variable_25 = 1;
        ldv_initialize_sensor_device_attribute_25();
        ldv_state_variable_100 = 1;
        ldv_initialize_sensor_device_attribute_100();
        ldv_state_variable_30 = 1;
        ldv_state_variable_116 = 1;
        ldv_initialize_sensor_device_attribute_2_116();
        ldv_state_variable_88 = 1;
        ldv_state_variable_136 = 1;
        ldv_initialize_sensor_device_attribute_2_136();
        ldv_state_variable_1 = 1;
        ldv_state_variable_68 = 1;
        ldv_initialize_sensor_device_attribute_68();
        ldv_state_variable_70 = 1;
        ldv_initialize_sensor_device_attribute_2_70();
        ldv_state_variable_54 = 1;
        ldv_state_variable_19 = 1;
        ldv_state_variable_66 = 1;
        ldv_initialize_sensor_device_attribute_66();
        ldv_state_variable_45 = 1;
        ldv_initialize_sensor_device_attribute_2_45();
        ldv_state_variable_56 = 1;
        ldv_initialize_sensor_device_attribute_56();
        ldv_state_variable_52 = 1;
        ldv_initialize_sensor_device_attribute_2_52();
        ldv_state_variable_41 = 1;
        ldv_state_variable_12 = 1;
        ldv_initialize_sensor_device_attribute_12();
        ldv_state_variable_97 = 1;
        ldv_state_variable_64 = 1;
        ldv_initialize_sensor_device_attribute_2_64();
        ldv_state_variable_39 = 1;
        ldv_state_variable_50 = 1;
        ldv_initialize_sensor_device_attribute_2_50();
        ldv_state_variable_123 = 1;
        ldv_state_variable_133 = 1;
        ldv_initialize_sensor_device_attribute_2_133();
        ldv_state_variable_77 = 1;
        ldv_initialize_sensor_device_attribute_2_77();
        ldv_state_variable_87 = 1;
        ldv_initialize_sensor_device_attribute_2_87();
        ldv_state_variable_107 = 1;
        ldv_initialize_sensor_device_attribute_2_107();
        ldv_state_variable_48 = 1;
        ldv_initialize_sensor_device_attribute_2_48();
        ldv_state_variable_91 = 1;
        ldv_state_variable_113 = 1;
        ldv_state_variable_10 = 1;
        ldv_initialize_sensor_device_attribute_10();
        ldv_state_variable_103 = 1;
        ldv_initialize_sensor_device_attribute_2_103();
        ldv_state_variable_92 = 1;
        ldv_initialize_sensor_device_attribute_92();
        ldv_state_variable_115 = 1;
        ldv_initialize_sensor_device_attribute_2_115();
        ldv_state_variable_108 = 1;
        ldv_state_variable_61 = 1;
        ldv_initialize_sensor_device_attribute_2_61();
        ldv_state_variable_74 = 1;
        ldv_initialize_sensor_device_attribute_2_74();
        ldv_state_variable_72 = 1;
        ldv_initialize_sensor_device_attribute_2_72();
        ldv_state_variable_99 = 1;
        ldv_initialize_sensor_device_attribute_99();
        ldv_state_variable_119 = 1;
        ldv_initialize_sensor_device_attribute_2_119();
        ldv_state_variable_80 = 1;
        ldv_initialize_device_attribute_80();
        ldv_state_variable_26 = 1;
        ldv_state_variable_7 = 1;
        ldv_initialize_device_attribute_7();
        ldv_state_variable_63 = 1;
        ldv_initialize_sensor_device_attribute_2_63();
        ldv_state_variable_21 = 1;
        ldv_state_variable_33 = 1;
        ldv_state_variable_5 = 1;
        ldv_state_variable_43 = 1;
        ldv_state_variable_117 = 1;
        ldv_state_variable_37 = 1;
        ldv_state_variable_98 = 1;
        ldv_initialize_sensor_device_attribute_98();
        ldv_state_variable_8 = 1;
        ldv_state_variable_47 = 1;
        ldv_initialize_sensor_device_attribute_2_47();
        ldv_state_variable_126 = 1;
        ldv_state_variable_96 = 1;
        ldv_initialize_sensor_device_attribute_2_96();
        ldv_state_variable_23 = 1;
        ldv_state_variable_79 = 1;
        ldv_initialize_sensor_device_attribute_79();
        ldv_state_variable_121 = 1;
        ldv_initialize_sensor_device_attribute_2_121();
        ldv_state_variable_131 = 1;
        ldv_initialize_sensor_device_attribute_2_131();
        ldv_state_variable_104 = 1;
        ldv_state_variable_124 = 1;
        ldv_initialize_sensor_device_attribute_2_124();
        ldv_state_variable_24 = 1;
        ldv_initialize_sensor_device_attribute_24();
        ldv_state_variable_49 = 1;
        ldv_state_variable_69 = 1;
        ldv_initialize_sensor_device_attribute_69();
        ldv_state_variable_112 = 1;
        ldv_state_variable_14 = 1;
        ldv_initialize_sensor_device_attribute_14();
        ldv_state_variable_135 = 1;
        ldv_state_variable_82 = 1;
        ldv_initialize_sensor_device_attribute_82();
        ldv_state_variable_110 = 1;
        ldv_initialize_sensor_device_attribute_2_110();
        ldv_state_variable_17 = 1;
        ldv_state_variable_2 = 1;
        ldv_state_variable_129 = 1;
        ldv_state_variable_67 = 1;
        ldv_state_variable_62 = 1;
        ldv_state_variable_76 = 1;
        ldv_initialize_sensor_device_attribute_2_76();
        ldv_state_variable_86 = 1;
        ldv_state_variable_73 = 1;
        ldv_initialize_sensor_device_attribute_2_73();
        ldv_state_variable_101 = 1;
        ldv_initialize_sensor_device_attribute_2_101();
        ldv_state_variable_60 = 1;
        ldv_initialize_sensor_device_attribute_2_60();
        ldv_state_variable_81 = 1;
        ldv_initialize_sensor_device_attribute_81();
        ldv_state_variable_137 = 1;
        ldv_initialize_sensor_device_attribute_2_137();
        ldv_state_variable_15 = 1;
        ldv_initialize_sensor_device_attribute_15();
        ldv_state_variable_58 = 1;
        ldv_initialize_sensor_device_attribute_2_58();
        ldv_state_variable_114 = 1;
        ldv_state_variable_138 = 1;
        ldv_state_variable_29 = 1;
        ldv_state_variable_65 = 1;
        ldv_initialize_sensor_device_attribute_2_65();
        ldv_state_variable_106 = 1;
        ldv_initialize_sensor_device_attribute_2_106();
        ldv_state_variable_93 = 1;
        ldv_initialize_sensor_device_attribute_2_93();
        ldv_state_variable_78 = 1;
        ldv_initialize_sensor_device_attribute_2_78();
        ldv_state_variable_11 = 1;
        ldv_initialize_sensor_device_attribute_11();
        ldv_state_variable_35 = 1;
        ldv_state_variable_31 = 1;
        ldv_state_variable_89 = 1;
        ldv_initialize_sensor_device_attribute_89();
        ldv_state_variable_109 = 1;
        ldv_initialize_sensor_device_attribute_2_109();
        ldv_state_variable_20 = 1;
        ldv_state_variable_57 = 1;
        ldv_initialize_sensor_device_attribute_2_57();
        ldv_state_variable_95 = 1;
        ldv_initialize_sensor_device_attribute_95();
        ldv_state_variable_27 = 1;
        ldv_state_variable_84 = 1;
        ldv_state_variable_55 = 1;
        ldv_initialize_sensor_device_attribute_55();
        ldv_state_variable_44 = 1;
        ldv_initialize_sensor_device_attribute_2_44();
        ldv_state_variable_16 = 1;
        ldv_initialize_sensor_device_attribute_16();
        ldv_state_variable_125 = 1;
        ldv_initialize_sensor_device_attribute_2_125();
        ldv_state_variable_18 = 1;
        ldv_state_variable_102 = 1;
        ldv_initialize_sensor_device_attribute_2_102();
        ldv_state_variable_71 = 1;
        ldv_initialize_sensor_device_attribute_2_71();
        ldv_state_variable_118 = 1;
        ldv_initialize_sensor_device_attribute_2_118();
        ldv_state_variable_90 = 1;
        ldv_initialize_sensor_device_attribute_2_90();
        ldv_state_variable_32 = 1;
        ldv_state_variable_127 = 1;
        ldv_initialize_sensor_device_attribute_2_127();
      } else {
      }
    } else {
    }
    goto ldv_33970;
    default:
    ldv_stop();
    }
    ldv_33970: ;
  } else {
  }
  goto ldv_33711;
  case 57: ;
  if (ldv_state_variable_23 != 0) {
    tmp___390 = __VERIFIER_nondet_int();
    switch (tmp___390) {
    case 0: ;
    if (ldv_state_variable_23 == 1) {
      show_beep(ldvarg165, ldvarg167, ldvarg166);
      ldv_state_variable_23 = 1;
    } else {
    }
    goto ldv_33975;
    default:
    ldv_stop();
    }
    ldv_33975: ;
  } else {
  }
  goto ldv_33711;
  case 58: ;
  if (ldv_state_variable_96 != 0) {
    tmp___391 = __VERIFIER_nondet_int();
    switch (tmp___391) {
    case 0: ;
    if (ldv_state_variable_96 == 1) {
      set_fan(sensor_dev_attr_fan1_min_group1, sensor_dev_attr_fan1_min_group0, (char const *)ldvarg170,
              ldvarg169);
      ldv_state_variable_96 = 1;
    } else {
    }
    goto ldv_33979;
    case 1: ;
    if (ldv_state_variable_96 == 1) {
      show_fan(sensor_dev_attr_fan1_min_group1, sensor_dev_attr_fan1_min_group0, ldvarg168);
      ldv_state_variable_96 = 1;
    } else {
    }
    goto ldv_33979;
    default:
    ldv_stop();
    }
    ldv_33979: ;
  } else {
  }
  goto ldv_33711;
  case 59: ;
  if (ldv_state_variable_126 != 0) {
    tmp___392 = __VERIFIER_nondet_int();
    switch (tmp___392) {
    case 0: ;
    if (ldv_state_variable_126 == 1) {
      show_in(ldvarg171, ldvarg173, ldvarg172);
      ldv_state_variable_126 = 1;
    } else {
    }
    goto ldv_33984;
    default:
    ldv_stop();
    }
    ldv_33984: ;
  } else {
  }
  goto ldv_33711;
  case 60: ;
  if (ldv_state_variable_47 != 0) {
    tmp___393 = __VERIFIER_nondet_int();
    switch (tmp___393) {
    case 0: ;
    if (ldv_state_variable_47 == 1) {
      set_auto_temp(sensor_dev_attr_pwm3_auto_point1_temp_hyst_group1, sensor_dev_attr_pwm3_auto_point1_temp_hyst_group0,
                    (char const *)ldvarg176, ldvarg175);
      ldv_state_variable_47 = 1;
    } else {
    }
    goto ldv_33988;
    case 1: ;
    if (ldv_state_variable_47 == 1) {
      show_auto_temp(sensor_dev_attr_pwm3_auto_point1_temp_hyst_group1, sensor_dev_attr_pwm3_auto_point1_temp_hyst_group0,
                     ldvarg174);
      ldv_state_variable_47 = 1;
    } else {
    }
    goto ldv_33988;
    default:
    ldv_stop();
    }
    ldv_33988: ;
  } else {
  }
  goto ldv_33711;
  case 61: ;
  if (ldv_state_variable_8 != 0) {
    tmp___394 = __VERIFIER_nondet_int();
    switch (tmp___394) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      show_beep(ldvarg177, ldvarg179, ldvarg178);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_33993;
    default:
    ldv_stop();
    }
    ldv_33993: ;
  } else {
  }
  goto ldv_33711;
  case 62: ;
  if (ldv_state_variable_98 != 0) {
    tmp___395 = __VERIFIER_nondet_int();
    switch (tmp___395) {
    case 0: ;
    if (ldv_state_variable_98 == 1) {
      set_temp_type(sensor_dev_attr_temp3_type_group1, sensor_dev_attr_temp3_type_group0,
                    (char const *)ldvarg182, ldvarg181);
      ldv_state_variable_98 = 1;
    } else {
    }
    goto ldv_33997;
    case 1: ;
    if (ldv_state_variable_98 == 1) {
      show_temp_type(sensor_dev_attr_temp3_type_group1, sensor_dev_attr_temp3_type_group0,
                     ldvarg180);
      ldv_state_variable_98 = 1;
    } else {
    }
    goto ldv_33997;
    default:
    ldv_stop();
    }
    ldv_33997: ;
  } else {
  }
  goto ldv_33711;
  case 63: ;
  if (ldv_state_variable_37 != 0) {
    tmp___396 = __VERIFIER_nondet_int();
    switch (tmp___396) {
    case 0: ;
    if (ldv_state_variable_37 == 1) {
      show_alarm(ldvarg183, ldvarg185, ldvarg184);
      ldv_state_variable_37 = 1;
    } else {
    }
    goto ldv_34002;
    default:
    ldv_stop();
    }
    ldv_34002: ;
  } else {
  }
  goto ldv_33711;
  case 64: ;
  if (ldv_state_variable_117 != 0) {
    tmp___397 = __VERIFIER_nondet_int();
    switch (tmp___397) {
    case 0: ;
    if (ldv_state_variable_117 == 1) {
      show_in(ldvarg186, ldvarg188, ldvarg187);
      ldv_state_variable_117 = 1;
    } else {
    }
    goto ldv_34006;
    default:
    ldv_stop();
    }
    ldv_34006: ;
  } else {
  }
  goto ldv_33711;
  case 65: ;
  if (ldv_state_variable_43 != 0) {
    tmp___398 = __VERIFIER_nondet_int();
    switch (tmp___398) {
    case 0: ;
    if (ldv_state_variable_43 == 1) {
      show_alarms(ldvarg189, ldvarg191, ldvarg190);
      ldv_state_variable_43 = 1;
    } else {
    }
    goto ldv_34010;
    default:
    ldv_stop();
    }
    ldv_34010: ;
  } else {
  }
  goto ldv_33711;
  case 66: ;
  if (ldv_state_variable_5 != 0) {
    tmp___399 = __VERIFIER_nondet_int();
    switch (tmp___399) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      show_label(ldvarg192, ldvarg194, ldvarg193);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_34014;
    default:
    ldv_stop();
    }
    ldv_34014: ;
  } else {
  }
  goto ldv_33711;
  case 67: ;
  if (ldv_state_variable_33 != 0) {
    tmp___400 = __VERIFIER_nondet_int();
    switch (tmp___400) {
    case 0: ;
    if (ldv_state_variable_33 == 1) {
      show_alarm(ldvarg195, ldvarg197, ldvarg196);
      ldv_state_variable_33 = 1;
    } else {
    }
    goto ldv_34018;
    default:
    ldv_stop();
    }
    ldv_34018: ;
  } else {
  }
  goto ldv_33711;
  case 68: ;
  if (ldv_state_variable_21 != 0) {
    tmp___401 = __VERIFIER_nondet_int();
    switch (tmp___401) {
    case 0: ;
    if (ldv_state_variable_21 == 1) {
      show_beep(ldvarg198, ldvarg200, ldvarg199);
      ldv_state_variable_21 = 1;
    } else {
    }
    goto ldv_34022;
    default:
    ldv_stop();
    }
    ldv_34022: ;
  } else {
  }
  goto ldv_33711;
  case 69: ;
  if (ldv_state_variable_63 != 0) {
    tmp___402 = __VERIFIER_nondet_int();
    switch (tmp___402) {
    case 0: ;
    if (ldv_state_variable_63 == 1) {
      set_auto_pwm(sensor_dev_attr_pwm2_auto_point3_pwm_group1, sensor_dev_attr_pwm2_auto_point3_pwm_group0,
                   (char const *)ldvarg203, ldvarg202);
      ldv_state_variable_63 = 1;
    } else {
    }
    goto ldv_34026;
    case 1: ;
    if (ldv_state_variable_63 == 1) {
      show_auto_pwm(sensor_dev_attr_pwm2_auto_point3_pwm_group1, sensor_dev_attr_pwm2_auto_point3_pwm_group0,
                    ldvarg201);
      ldv_state_variable_63 = 1;
    } else {
    }
    goto ldv_34026;
    default:
    ldv_stop();
    }
    ldv_34026: ;
  } else {
  }
  goto ldv_33711;
  case 70: ;
  if (ldv_state_variable_7 != 0) {
    tmp___403 = __VERIFIER_nondet_int();
    switch (tmp___403) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      store_vrm_reg(dev_attr_vrm_group1, dev_attr_vrm_group0, (char const *)ldvarg206,
                    ldvarg205);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_34031;
    case 1: ;
    if (ldv_state_variable_7 == 1) {
      show_vrm_reg(dev_attr_vrm_group1, dev_attr_vrm_group0, ldvarg204);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_34031;
    default:
    ldv_stop();
    }
    ldv_34031: ;
  } else {
  }
  goto ldv_33711;
  case 71: ;
  if (ldv_state_variable_26 != 0) {
    tmp___404 = __VERIFIER_nondet_int();
    switch (tmp___404) {
    case 0: ;
    if (ldv_state_variable_26 == 1) {
      show_alarm(ldvarg207, ldvarg209, ldvarg208);
      ldv_state_variable_26 = 1;
    } else {
    }
    goto ldv_34036;
    default:
    ldv_stop();
    }
    ldv_34036: ;
  } else {
  }
  goto ldv_33711;
  case 72: ;
  if (ldv_state_variable_80 != 0) {
    tmp___405 = __VERIFIER_nondet_int();
    switch (tmp___405) {
    case 0: ;
    if (ldv_state_variable_80 == 1) {
      set_pwm_freq(dev_attr_pwm1_freq_group1, dev_attr_pwm1_freq_group0, (char const *)ldvarg212,
                   ldvarg211);
      ldv_state_variable_80 = 1;
    } else {
    }
    goto ldv_34040;
    case 1: ;
    if (ldv_state_variable_80 == 1) {
      show_pwm_freq(dev_attr_pwm1_freq_group1, dev_attr_pwm1_freq_group0, ldvarg210);
      ldv_state_variable_80 = 1;
    } else {
    }
    goto ldv_34040;
    default:
    ldv_stop();
    }
    ldv_34040: ;
  } else {
  }
  goto ldv_33711;
  case 73: ;
  if (ldv_state_variable_119 != 0) {
    tmp___406 = __VERIFIER_nondet_int();
    switch (tmp___406) {
    case 0: ;
    if (ldv_state_variable_119 == 1) {
      set_in(sensor_dev_attr_in6_min_group1, sensor_dev_attr_in6_min_group0, (char const *)ldvarg215,
             ldvarg214);
      ldv_state_variable_119 = 1;
    } else {
    }
    goto ldv_34045;
    case 1: ;
    if (ldv_state_variable_119 == 1) {
      show_in(sensor_dev_attr_in6_min_group1, sensor_dev_attr_in6_min_group0, ldvarg213);
      ldv_state_variable_119 = 1;
    } else {
    }
    goto ldv_34045;
    default:
    ldv_stop();
    }
    ldv_34045: ;
  } else {
  }
  goto ldv_33711;
  case 74: ;
  if (ldv_state_variable_99 != 0) {
    tmp___407 = __VERIFIER_nondet_int();
    switch (tmp___407) {
    case 0: ;
    if (ldv_state_variable_99 == 1) {
      set_temp_type(sensor_dev_attr_temp2_type_group1, sensor_dev_attr_temp2_type_group0,
                    (char const *)ldvarg218, ldvarg217);
      ldv_state_variable_99 = 1;
    } else {
    }
    goto ldv_34050;
    case 1: ;
    if (ldv_state_variable_99 == 1) {
      show_temp_type(sensor_dev_attr_temp2_type_group1, sensor_dev_attr_temp2_type_group0,
                     ldvarg216);
      ldv_state_variable_99 = 1;
    } else {
    }
    goto ldv_34050;
    default:
    ldv_stop();
    }
    ldv_34050: ;
  } else {
  }
  goto ldv_33711;
  case 75: ;
  if (ldv_state_variable_72 != 0) {
    tmp___408 = __VERIFIER_nondet_int();
    switch (tmp___408) {
    case 0: ;
    if (ldv_state_variable_72 == 1) {
      set_auto_temp(sensor_dev_attr_pwm1_auto_point2_temp_group1, sensor_dev_attr_pwm1_auto_point2_temp_group0,
                    (char const *)ldvarg221, ldvarg220);
      ldv_state_variable_72 = 1;
    } else {
    }
    goto ldv_34055;
    case 1: ;
    if (ldv_state_variable_72 == 1) {
      show_auto_temp(sensor_dev_attr_pwm1_auto_point2_temp_group1, sensor_dev_attr_pwm1_auto_point2_temp_group0,
                     ldvarg219);
      ldv_state_variable_72 = 1;
    } else {
    }
    goto ldv_34055;
    default:
    ldv_stop();
    }
    ldv_34055: ;
  } else {
  }
  goto ldv_33711;
  case 76: ;
  if (ldv_state_variable_74 != 0) {
    tmp___409 = __VERIFIER_nondet_int();
    switch (tmp___409) {
    case 0: ;
    if (ldv_state_variable_74 == 1) {
      set_auto_temp(sensor_dev_attr_pwm1_auto_point1_temp_group1, sensor_dev_attr_pwm1_auto_point1_temp_group0,
                    (char const *)ldvarg224, ldvarg223);
      ldv_state_variable_74 = 1;
    } else {
    }
    goto ldv_34060;
    case 1: ;
    if (ldv_state_variable_74 == 1) {
      show_auto_temp(sensor_dev_attr_pwm1_auto_point1_temp_group1, sensor_dev_attr_pwm1_auto_point1_temp_group0,
                     ldvarg222);
      ldv_state_variable_74 = 1;
    } else {
    }
    goto ldv_34060;
    default:
    ldv_stop();
    }
    ldv_34060: ;
  } else {
  }
  goto ldv_33711;
  case 77: ;
  if (ldv_state_variable_61 != 0) {
    tmp___410 = __VERIFIER_nondet_int();
    switch (tmp___410) {
    case 0: ;
    if (ldv_state_variable_61 == 1) {
      set_auto_temp(sensor_dev_attr_pwm2_auto_point1_temp_group1, sensor_dev_attr_pwm2_auto_point1_temp_group0,
                    (char const *)ldvarg227, ldvarg226);
      ldv_state_variable_61 = 1;
    } else {
    }
    goto ldv_34065;
    case 1: ;
    if (ldv_state_variable_61 == 1) {
      show_auto_temp(sensor_dev_attr_pwm2_auto_point1_temp_group1, sensor_dev_attr_pwm2_auto_point1_temp_group0,
                     ldvarg225);
      ldv_state_variable_61 = 1;
    } else {
    }
    goto ldv_34065;
    default:
    ldv_stop();
    }
    ldv_34065: ;
  } else {
  }
  goto ldv_33711;
  case 78: ;
  if (ldv_state_variable_108 != 0) {
    tmp___411 = __VERIFIER_nondet_int();
    switch (tmp___411) {
    case 0: ;
    if (ldv_state_variable_108 == 1) {
      show_temp(ldvarg228, ldvarg230, ldvarg229);
      ldv_state_variable_108 = 1;
    } else {
    }
    goto ldv_34070;
    default:
    ldv_stop();
    }
    ldv_34070: ;
  } else {
  }
  goto ldv_33711;
  case 79: ;
  if (ldv_state_variable_115 != 0) {
    tmp___412 = __VERIFIER_nondet_int();
    switch (tmp___412) {
    case 0: ;
    if (ldv_state_variable_115 == 1) {
      set_in(sensor_dev_attr_in7_max_group1, sensor_dev_attr_in7_max_group0, (char const *)ldvarg233,
             ldvarg232);
      ldv_state_variable_115 = 1;
    } else {
    }
    goto ldv_34074;
    case 1: ;
    if (ldv_state_variable_115 == 1) {
      show_in(sensor_dev_attr_in7_max_group1, sensor_dev_attr_in7_max_group0, ldvarg231);
      ldv_state_variable_115 = 1;
    } else {
    }
    goto ldv_34074;
    default:
    ldv_stop();
    }
    ldv_34074: ;
  } else {
  }
  goto ldv_33711;
  case 80: ;
  if (ldv_state_variable_92 != 0) {
    tmp___413 = __VERIFIER_nondet_int();
    switch (tmp___413) {
    case 0: ;
    if (ldv_state_variable_92 == 1) {
      set_fan_div(sensor_dev_attr_fan2_div_group1, sensor_dev_attr_fan2_div_group0,
                  (char const *)ldvarg236, ldvarg235);
      ldv_state_variable_92 = 1;
    } else {
    }
    goto ldv_34079;
    case 1: ;
    if (ldv_state_variable_92 == 1) {
      show_fan_div(sensor_dev_attr_fan2_div_group1, sensor_dev_attr_fan2_div_group0,
                   ldvarg234);
      ldv_state_variable_92 = 1;
    } else {
    }
    goto ldv_34079;
    default:
    ldv_stop();
    }
    ldv_34079: ;
  } else {
  }
  goto ldv_33711;
  case 81: ;
  if (ldv_state_variable_103 != 0) {
    tmp___414 = __VERIFIER_nondet_int();
    switch (tmp___414) {
    case 0: ;
    if (ldv_state_variable_103 == 1) {
      set_temp(sensor_dev_attr_temp3_min_group1, sensor_dev_attr_temp3_min_group0,
               (char const *)ldvarg239, ldvarg238);
      ldv_state_variable_103 = 1;
    } else {
    }
    goto ldv_34084;
    case 1: ;
    if (ldv_state_variable_103 == 1) {
      show_temp(sensor_dev_attr_temp3_min_group1, sensor_dev_attr_temp3_min_group0,
                ldvarg237);
      ldv_state_variable_103 = 1;
    } else {
    }
    goto ldv_34084;
    default:
    ldv_stop();
    }
    ldv_34084: ;
  } else {
  }
  goto ldv_33711;
  case 82: ;
  if (ldv_state_variable_10 != 0) {
    tmp___415 = __VERIFIER_nondet_int();
    switch (tmp___415) {
    case 0: ;
    if (ldv_state_variable_10 == 1) {
      set_beep(sensor_dev_attr_temp1_beep_group1, sensor_dev_attr_temp1_beep_group0,
               (char const *)ldvarg242, ldvarg241);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_34089;
    case 1: ;
    if (ldv_state_variable_10 == 1) {
      show_beep(sensor_dev_attr_temp1_beep_group1, sensor_dev_attr_temp1_beep_group0,
                ldvarg240);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_34089;
    default:
    ldv_stop();
    }
    ldv_34089: ;
  } else {
  }
  goto ldv_33711;
  case 83: ;
  if (ldv_state_variable_113 != 0) {
    tmp___416 = __VERIFIER_nondet_int();
    switch (tmp___416) {
    case 0: ;
    if (ldv_state_variable_113 == 1) {
      show_in(ldvarg243, ldvarg245, ldvarg244);
      ldv_state_variable_113 = 1;
    } else {
    }
    goto ldv_34094;
    default:
    ldv_stop();
    }
    ldv_34094: ;
  } else {
  }
  goto ldv_33711;
  case 84: ;
  if (ldv_state_variable_91 != 0) {
    tmp___417 = __VERIFIER_nondet_int();
    switch (tmp___417) {
    case 0: ;
    if (ldv_state_variable_91 == 1) {
      show_fan(ldvarg246, ldvarg248, ldvarg247);
      ldv_state_variable_91 = 1;
    } else {
    }
    goto ldv_34098;
    default:
    ldv_stop();
    }
    ldv_34098: ;
  } else {
  }
  goto ldv_33711;
  case 85: ;
  if (ldv_state_variable_48 != 0) {
    tmp___418 = __VERIFIER_nondet_int();
    switch (tmp___418) {
    case 0: ;
    if (ldv_state_variable_48 == 1) {
      set_auto_temp(sensor_dev_attr_pwm3_auto_point1_temp_group1, sensor_dev_attr_pwm3_auto_point1_temp_group0,
                    (char const *)ldvarg251, ldvarg250);
      ldv_state_variable_48 = 1;
    } else {
    }
    goto ldv_34102;
    case 1: ;
    if (ldv_state_variable_48 == 1) {
      show_auto_temp(sensor_dev_attr_pwm3_auto_point1_temp_group1, sensor_dev_attr_pwm3_auto_point1_temp_group0,
                     ldvarg249);
      ldv_state_variable_48 = 1;
    } else {
    }
    goto ldv_34102;
    default:
    ldv_stop();
    }
    ldv_34102: ;
  } else {
  }
  goto ldv_33711;
  case 86: ;
  if (ldv_state_variable_107 != 0) {
    tmp___419 = __VERIFIER_nondet_int();
    switch (tmp___419) {
    case 0: ;
    if (ldv_state_variable_107 == 1) {
      set_temp(sensor_dev_attr_temp2_min_group1, sensor_dev_attr_temp2_min_group0,
               (char const *)ldvarg254, ldvarg253);
      ldv_state_variable_107 = 1;
    } else {
    }
    goto ldv_34107;
    case 1: ;
    if (ldv_state_variable_107 == 1) {
      show_temp(sensor_dev_attr_temp2_min_group1, sensor_dev_attr_temp2_min_group0,
                ldvarg252);
      ldv_state_variable_107 = 1;
    } else {
    }
    goto ldv_34107;
    default:
    ldv_stop();
    }
    ldv_34107: ;
  } else {
  }
  goto ldv_33711;
  case 87: ;
  if (ldv_state_variable_87 != 0) {
    tmp___420 = __VERIFIER_nondet_int();
    switch (tmp___420) {
    case 0: ;
    if (ldv_state_variable_87 == 1) {
      set_fan(sensor_dev_attr_fan4_min_group1, sensor_dev_attr_fan4_min_group0, (char const *)ldvarg257,
              ldvarg256);
      ldv_state_variable_87 = 1;
    } else {
    }
    goto ldv_34112;
    case 1: ;
    if (ldv_state_variable_87 == 1) {
      show_fan(sensor_dev_attr_fan4_min_group1, sensor_dev_attr_fan4_min_group0, ldvarg255);
      ldv_state_variable_87 = 1;
    } else {
    }
    goto ldv_34112;
    default:
    ldv_stop();
    }
    ldv_34112: ;
  } else {
  }
  goto ldv_33711;
  case 88: ;
  if (ldv_state_variable_77 != 0) {
    tmp___421 = __VERIFIER_nondet_int();
    switch (tmp___421) {
    case 0: ;
    if (ldv_state_variable_77 == 1) {
      set_auto_pwm(sensor_dev_attr_pwm1_auto_point2_pwm_group1, sensor_dev_attr_pwm1_auto_point2_pwm_group0,
                   (char const *)ldvarg260, ldvarg259);
      ldv_state_variable_77 = 1;
    } else {
    }
    goto ldv_34117;
    case 1: ;
    if (ldv_state_variable_77 == 1) {
      show_auto_pwm(sensor_dev_attr_pwm1_auto_point2_pwm_group1, sensor_dev_attr_pwm1_auto_point2_pwm_group0,
                    ldvarg258);
      ldv_state_variable_77 = 1;
    } else {
    }
    goto ldv_34117;
    default:
    ldv_stop();
    }
    ldv_34117: ;
  } else {
  }
  goto ldv_33711;
  case 89: ;
  if (ldv_state_variable_133 != 0) {
    tmp___422 = __VERIFIER_nondet_int();
    switch (tmp___422) {
    case 0: ;
    if (ldv_state_variable_133 == 1) {
      set_in(sensor_dev_attr_in1_max_group1, sensor_dev_attr_in1_max_group0, (char const *)ldvarg263,
             ldvarg262);
      ldv_state_variable_133 = 1;
    } else {
    }
    goto ldv_34122;
    case 1: ;
    if (ldv_state_variable_133 == 1) {
      show_in(sensor_dev_attr_in1_max_group1, sensor_dev_attr_in1_max_group0, ldvarg261);
      ldv_state_variable_133 = 1;
    } else {
    }
    goto ldv_34122;
    default:
    ldv_stop();
    }
    ldv_34122: ;
  } else {
  }
  goto ldv_33711;
  case 90: ;
  if (ldv_state_variable_123 != 0) {
    tmp___423 = __VERIFIER_nondet_int();
    switch (tmp___423) {
    case 0: ;
    if (ldv_state_variable_123 == 1) {
      show_in(ldvarg264, ldvarg266, ldvarg265);
      ldv_state_variable_123 = 1;
    } else {
    }
    goto ldv_34127;
    default:
    ldv_stop();
    }
    ldv_34127: ;
  } else {
  }
  goto ldv_33711;
  case 91: ;
  if (ldv_state_variable_50 != 0) {
    tmp___424 = __VERIFIER_nondet_int();
    switch (tmp___424) {
    case 0: ;
    if (ldv_state_variable_50 == 1) {
      set_auto_pwm(sensor_dev_attr_pwm3_auto_point3_pwm_group1, sensor_dev_attr_pwm3_auto_point3_pwm_group0,
                   (char const *)ldvarg269, ldvarg268);
      ldv_state_variable_50 = 1;
    } else {
    }
    goto ldv_34131;
    case 1: ;
    if (ldv_state_variable_50 == 1) {
      show_auto_pwm(sensor_dev_attr_pwm3_auto_point3_pwm_group1, sensor_dev_attr_pwm3_auto_point3_pwm_group0,
                    ldvarg267);
      ldv_state_variable_50 = 1;
    } else {
    }
    goto ldv_34131;
    default:
    ldv_stop();
    }
    ldv_34131: ;
  } else {
  }
  goto ldv_33711;
  case 92: ;
  if (ldv_state_variable_39 != 0) {
    tmp___425 = __VERIFIER_nondet_int();
    switch (tmp___425) {
    case 0: ;
    if (ldv_state_variable_39 == 1) {
      show_alarm(ldvarg270, ldvarg272, ldvarg271);
      ldv_state_variable_39 = 1;
    } else {
    }
    goto ldv_34136;
    default:
    ldv_stop();
    }
    ldv_34136: ;
  } else {
  }
  goto ldv_33711;
  case 93: ;
  if (ldv_state_variable_64 != 0) {
    tmp___426 = __VERIFIER_nondet_int();
    switch (tmp___426) {
    case 0: ;
    if (ldv_state_variable_64 == 1) {
      set_auto_pwm(sensor_dev_attr_pwm2_auto_point2_pwm_group1, sensor_dev_attr_pwm2_auto_point2_pwm_group0,
                   (char const *)ldvarg275, ldvarg274);
      ldv_state_variable_64 = 1;
    } else {
    }
    goto ldv_34140;
    case 1: ;
    if (ldv_state_variable_64 == 1) {
      show_auto_pwm(sensor_dev_attr_pwm2_auto_point2_pwm_group1, sensor_dev_attr_pwm2_auto_point2_pwm_group0,
                    ldvarg273);
      ldv_state_variable_64 = 1;
    } else {
    }
    goto ldv_34140;
    default:
    ldv_stop();
    }
    ldv_34140: ;
  } else {
  }
  goto ldv_33711;
  case 94: ;
  if (ldv_state_variable_97 != 0) {
    tmp___427 = __VERIFIER_nondet_int();
    switch (tmp___427) {
    case 0: ;
    if (ldv_state_variable_97 == 1) {
      show_fan(ldvarg276, ldvarg278, ldvarg277);
      ldv_state_variable_97 = 1;
    } else {
    }
    goto ldv_34145;
    default:
    ldv_stop();
    }
    ldv_34145: ;
  } else {
  }
  goto ldv_33711;
  case 95: ;
  if (ldv_state_variable_12 != 0) {
    tmp___428 = __VERIFIER_nondet_int();
    switch (tmp___428) {
    case 0: ;
    if (ldv_state_variable_12 == 1) {
      set_beep(sensor_dev_attr_fan5_beep_group1, sensor_dev_attr_fan5_beep_group0,
               (char const *)ldvarg281, ldvarg280);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_34149;
    case 1: ;
    if (ldv_state_variable_12 == 1) {
      show_beep(sensor_dev_attr_fan5_beep_group1, sensor_dev_attr_fan5_beep_group0,
                ldvarg279);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_34149;
    default:
    ldv_stop();
    }
    ldv_34149: ;
  } else {
  }
  goto ldv_33711;
  case 96: ;
  if (ldv_state_variable_41 != 0) {
    tmp___429 = __VERIFIER_nondet_int();
    switch (tmp___429) {
    case 0: ;
    if (ldv_state_variable_41 == 1) {
      show_alarm(ldvarg282, ldvarg284, ldvarg283);
      ldv_state_variable_41 = 1;
    } else {
    }
    goto ldv_34154;
    default:
    ldv_stop();
    }
    ldv_34154: ;
  } else {
  }
  goto ldv_33711;
  case 97: ;
  if (ldv_state_variable_52 != 0) {
    tmp___430 = __VERIFIER_nondet_int();
    switch (tmp___430) {
    case 0: ;
    if (ldv_state_variable_52 == 1) {
      set_auto_pwm(sensor_dev_attr_pwm3_auto_point1_pwm_group1, sensor_dev_attr_pwm3_auto_point1_pwm_group0,
                   (char const *)ldvarg287, ldvarg286);
      ldv_state_variable_52 = 1;
    } else {
    }
    goto ldv_34158;
    case 1: ;
    if (ldv_state_variable_52 == 1) {
      show_auto_pwm(sensor_dev_attr_pwm3_auto_point1_pwm_group1, sensor_dev_attr_pwm3_auto_point1_pwm_group0,
                    ldvarg285);
      ldv_state_variable_52 = 1;
    } else {
    }
    goto ldv_34158;
    default:
    ldv_stop();
    }
    ldv_34158: ;
  } else {
  }
  goto ldv_33711;
  case 98: ;
  if (ldv_state_variable_56 != 0) {
    tmp___431 = __VERIFIER_nondet_int();
    switch (tmp___431) {
    case 0: ;
    if (ldv_state_variable_56 == 1) {
      set_pwm_enable(sensor_dev_attr_pwm3_enable_group1, sensor_dev_attr_pwm3_enable_group0,
                     (char const *)ldvarg290, ldvarg289);
      ldv_state_variable_56 = 1;
    } else {
    }
    goto ldv_34163;
    case 1: ;
    if (ldv_state_variable_56 == 1) {
      show_pwm_enable(sensor_dev_attr_pwm3_enable_group1, sensor_dev_attr_pwm3_enable_group0,
                      ldvarg288);
      ldv_state_variable_56 = 1;
    } else {
    }
    goto ldv_34163;
    default:
    ldv_stop();
    }
    ldv_34163: ;
  } else {
  }
  goto ldv_33711;
  case 99: ;
  if (ldv_state_variable_45 != 0) {
    tmp___432 = __VERIFIER_nondet_int();
    switch (tmp___432) {
    case 0: ;
    if (ldv_state_variable_45 == 1) {
      set_auto_temp(sensor_dev_attr_pwm3_auto_point3_temp_group1, sensor_dev_attr_pwm3_auto_point3_temp_group0,
                    (char const *)ldvarg293, ldvarg292);
      ldv_state_variable_45 = 1;
    } else {
    }
    goto ldv_34168;
    case 1: ;
    if (ldv_state_variable_45 == 1) {
      show_auto_temp(sensor_dev_attr_pwm3_auto_point3_temp_group1, sensor_dev_attr_pwm3_auto_point3_temp_group0,
                     ldvarg291);
      ldv_state_variable_45 = 1;
    } else {
    }
    goto ldv_34168;
    default:
    ldv_stop();
    }
    ldv_34168: ;
  } else {
  }
  goto ldv_33711;
  case 100: ;
  if (ldv_state_variable_66 != 0) {
    tmp___433 = __VERIFIER_nondet_int();
    switch (tmp___433) {
    case 0: ;
    if (ldv_state_variable_66 == 1) {
      set_pwm_temp_map(sensor_dev_attr_pwm2_auto_channels_temp_group1, sensor_dev_attr_pwm2_auto_channels_temp_group0,
                       (char const *)ldvarg296, ldvarg295);
      ldv_state_variable_66 = 1;
    } else {
    }
    goto ldv_34173;
    case 1: ;
    if (ldv_state_variable_66 == 1) {
      show_pwm_temp_map(sensor_dev_attr_pwm2_auto_channels_temp_group1, sensor_dev_attr_pwm2_auto_channels_temp_group0,
                        ldvarg294);
      ldv_state_variable_66 = 1;
    } else {
    }
    goto ldv_34173;
    default:
    ldv_stop();
    }
    ldv_34173: ;
  } else {
  }
  goto ldv_33711;
  case 101: ;
  if (ldv_state_variable_19 != 0) {
    tmp___434 = __VERIFIER_nondet_int();
    switch (tmp___434) {
    case 0: ;
    if (ldv_state_variable_19 == 1) {
      show_beep(ldvarg297, ldvarg299, ldvarg298);
      ldv_state_variable_19 = 1;
    } else {
    }
    goto ldv_34178;
    default:
    ldv_stop();
    }
    ldv_34178: ;
  } else {
  }
  goto ldv_33711;
  case 102: ;
  if (ldv_state_variable_54 != 0) {
    tmp___435 = __VERIFIER_nondet_int();
    switch (tmp___435) {
    case 0: ;
    if (ldv_state_variable_54 == 1) {
      show_pwm_freq(ldvarg300, ldvarg302, ldvarg301);
      ldv_state_variable_54 = 1;
    } else {
    }
    goto ldv_34182;
    default:
    ldv_stop();
    }
    ldv_34182: ;
  } else {
  }
  goto ldv_33711;
  case 103: ;
  if (ldv_state_variable_70 != 0) {
    tmp___436 = __VERIFIER_nondet_int();
    switch (tmp___436) {
    case 0: ;
    if (ldv_state_variable_70 == 1) {
      set_auto_temp(sensor_dev_attr_pwm1_auto_point4_temp_group1, sensor_dev_attr_pwm1_auto_point4_temp_group0,
                    (char const *)ldvarg305, ldvarg304);
      ldv_state_variable_70 = 1;
    } else {
    }
    goto ldv_34186;
    case 1: ;
    if (ldv_state_variable_70 == 1) {
      show_auto_temp(sensor_dev_attr_pwm1_auto_point4_temp_group1, sensor_dev_attr_pwm1_auto_point4_temp_group0,
                     ldvarg303);
      ldv_state_variable_70 = 1;
    } else {
    }
    goto ldv_34186;
    default:
    ldv_stop();
    }
    ldv_34186: ;
  } else {
  }
  goto ldv_33711;
  case 104: ;
  if (ldv_state_variable_68 != 0) {
    tmp___437 = __VERIFIER_nondet_int();
    switch (tmp___437) {
    case 0: ;
    if (ldv_state_variable_68 == 1) {
      set_pwm(sensor_dev_attr_pwm2_group1, sensor_dev_attr_pwm2_group0, (char const *)ldvarg308,
              ldvarg307);
      ldv_state_variable_68 = 1;
    } else {
    }
    goto ldv_34191;
    case 1: ;
    if (ldv_state_variable_68 == 1) {
      show_pwm(sensor_dev_attr_pwm2_group1, sensor_dev_attr_pwm2_group0, ldvarg306);
      ldv_state_variable_68 = 1;
    } else {
    }
    goto ldv_34191;
    default:
    ldv_stop();
    }
    ldv_34191: ;
  } else {
  }
  goto ldv_33711;
  case 105: ;
  if (ldv_state_variable_1 != 0) {
    tmp___438 = __VERIFIER_nondet_int();
    switch (tmp___438) {
    case 0: ;
    if (ldv_state_variable_1 == 1) {
      show_name(ldvarg309, ldvarg311, ldvarg310);
      ldv_state_variable_1 = 1;
    } else {
    }
    goto ldv_34196;
    default:
    ldv_stop();
    }
    ldv_34196: ;
  } else {
  }
  goto ldv_33711;
  case 106: ;
  if (ldv_state_variable_136 != 0) {
    tmp___439 = __VERIFIER_nondet_int();
    switch (tmp___439) {
    case 0: ;
    if (ldv_state_variable_136 == 1) {
      set_in(sensor_dev_attr_in0_max_group1, sensor_dev_attr_in0_max_group0, (char const *)ldvarg314,
             ldvarg313);
      ldv_state_variable_136 = 1;
    } else {
    }
    goto ldv_34200;
    case 1: ;
    if (ldv_state_variable_136 == 1) {
      show_in(sensor_dev_attr_in0_max_group1, sensor_dev_attr_in0_max_group0, ldvarg312);
      ldv_state_variable_136 = 1;
    } else {
    }
    goto ldv_34200;
    default:
    ldv_stop();
    }
    ldv_34200: ;
  } else {
  }
  goto ldv_33711;
  case 107: ;
  if (ldv_state_variable_88 != 0) {
    tmp___440 = __VERIFIER_nondet_int();
    switch (tmp___440) {
    case 0: ;
    if (ldv_state_variable_88 == 1) {
      show_fan(ldvarg315, ldvarg317, ldvarg316);
      ldv_state_variable_88 = 1;
    } else {
    }
    goto ldv_34205;
    default:
    ldv_stop();
    }
    ldv_34205: ;
  } else {
  }
  goto ldv_33711;
  case 108: ;
  if (ldv_state_variable_116 != 0) {
    tmp___441 = __VERIFIER_nondet_int();
    switch (tmp___441) {
    case 0: ;
    if (ldv_state_variable_116 == 1) {
      set_in(sensor_dev_attr_in7_min_group1, sensor_dev_attr_in7_min_group0, (char const *)ldvarg320,
             ldvarg319);
      ldv_state_variable_116 = 1;
    } else {
    }
    goto ldv_34209;
    case 1: ;
    if (ldv_state_variable_116 == 1) {
      show_in(sensor_dev_attr_in7_min_group1, sensor_dev_attr_in7_min_group0, ldvarg318);
      ldv_state_variable_116 = 1;
    } else {
    }
    goto ldv_34209;
    default:
    ldv_stop();
    }
    ldv_34209: ;
  } else {
  }
  goto ldv_33711;
  case 109: ;
  if (ldv_state_variable_30 != 0) {
    tmp___442 = __VERIFIER_nondet_int();
    switch (tmp___442) {
    case 0: ;
    if (ldv_state_variable_30 == 1) {
      show_alarm(ldvarg321, ldvarg323, ldvarg322);
      ldv_state_variable_30 = 1;
    } else {
    }
    goto ldv_34214;
    default:
    ldv_stop();
    }
    ldv_34214: ;
  } else {
  }
  goto ldv_33711;
  case 110: ;
  if (ldv_state_variable_100 != 0) {
    tmp___443 = __VERIFIER_nondet_int();
    switch (tmp___443) {
    case 0: ;
    if (ldv_state_variable_100 == 1) {
      set_temp_type(sensor_dev_attr_temp1_type_group1, sensor_dev_attr_temp1_type_group0,
                    (char const *)ldvarg326, ldvarg325);
      ldv_state_variable_100 = 1;
    } else {
    }
    goto ldv_34218;
    case 1: ;
    if (ldv_state_variable_100 == 1) {
      show_temp_type(sensor_dev_attr_temp1_type_group1, sensor_dev_attr_temp1_type_group0,
                     ldvarg324);
      ldv_state_variable_100 = 1;
    } else {
    }
    goto ldv_34218;
    default:
    ldv_stop();
    }
    ldv_34218: ;
  } else {
  }
  goto ldv_33711;
  case 111: ;
  if (ldv_state_variable_25 != 0) {
    tmp___444 = __VERIFIER_nondet_int();
    switch (tmp___444) {
    case 0: ;
    if (ldv_state_variable_25 == 1) {
      clear_intrusion(sensor_dev_attr_intrusion0_alarm_group1, sensor_dev_attr_intrusion0_alarm_group0,
                      (char const *)ldvarg329, ldvarg328);
      ldv_state_variable_25 = 1;
    } else {
    }
    goto ldv_34223;
    case 1: ;
    if (ldv_state_variable_25 == 1) {
      show_alarm(sensor_dev_attr_intrusion0_alarm_group1, sensor_dev_attr_intrusion0_alarm_group0,
                 ldvarg327);
      ldv_state_variable_25 = 1;
    } else {
    }
    goto ldv_34223;
    default:
    ldv_stop();
    }
    ldv_34223: ;
  } else {
  }
  goto ldv_33711;
  case 112: ;
  if (ldv_state_variable_128 != 0) {
    tmp___445 = __VERIFIER_nondet_int();
    switch (tmp___445) {
    case 0: ;
    if (ldv_state_variable_128 == 1) {
      set_in(sensor_dev_attr_in3_min_group1, sensor_dev_attr_in3_min_group0, (char const *)ldvarg332,
             ldvarg331);
      ldv_state_variable_128 = 1;
    } else {
    }
    goto ldv_34228;
    case 1: ;
    if (ldv_state_variable_128 == 1) {
      show_in(sensor_dev_attr_in3_min_group1, sensor_dev_attr_in3_min_group0, ldvarg330);
      ldv_state_variable_128 = 1;
    } else {
    }
    goto ldv_34228;
    default:
    ldv_stop();
    }
    ldv_34228: ;
  } else {
  }
  goto ldv_33711;
  case 113: ;
  if (ldv_state_variable_28 != 0) {
    tmp___446 = __VERIFIER_nondet_int();
    switch (tmp___446) {
    case 0: ;
    if (ldv_state_variable_28 == 1) {
      show_alarm(ldvarg333, ldvarg335, ldvarg334);
      ldv_state_variable_28 = 1;
    } else {
    }
    goto ldv_34233;
    default:
    ldv_stop();
    }
    ldv_34233: ;
  } else {
  }
  goto ldv_33711;
  case 114: ;
  if (ldv_state_variable_120 != 0) {
    tmp___447 = __VERIFIER_nondet_int();
    switch (tmp___447) {
    case 0: ;
    if (ldv_state_variable_120 == 1) {
      show_in(ldvarg336, ldvarg338, ldvarg337);
      ldv_state_variable_120 = 1;
    } else {
    }
    goto ldv_34237;
    default:
    ldv_stop();
    }
    ldv_34237: ;
  } else {
  }
  goto ldv_33711;
  case 115: ;
  if (ldv_state_variable_134 != 0) {
    tmp___448 = __VERIFIER_nondet_int();
    switch (tmp___448) {
    case 0: ;
    if (ldv_state_variable_134 == 1) {
      set_in(sensor_dev_attr_in1_min_group1, sensor_dev_attr_in1_min_group0, (char const *)ldvarg341,
             ldvarg340);
      ldv_state_variable_134 = 1;
    } else {
    }
    goto ldv_34241;
    case 1: ;
    if (ldv_state_variable_134 == 1) {
      show_in(sensor_dev_attr_in1_min_group1, sensor_dev_attr_in1_min_group0, ldvarg339);
      ldv_state_variable_134 = 1;
    } else {
    }
    goto ldv_34241;
    default:
    ldv_stop();
    }
    ldv_34241: ;
  } else {
  }
  goto ldv_33711;
  case 116: ;
  if (ldv_state_variable_40 != 0) {
    tmp___449 = __VERIFIER_nondet_int();
    switch (tmp___449) {
    case 0: ;
    if (ldv_state_variable_40 == 1) {
      show_alarm(ldvarg342, ldvarg344, ldvarg343);
      ldv_state_variable_40 = 1;
    } else {
    }
    goto ldv_34246;
    default:
    ldv_stop();
    }
    ldv_34246: ;
  } else {
  }
  goto ldv_33711;
  case 117: ;
  if (ldv_state_variable_75 != 0) {
    tmp___450 = __VERIFIER_nondet_int();
    switch (tmp___450) {
    case 0: ;
    if (ldv_state_variable_75 == 1) {
      show_auto_pwm(ldvarg345, ldvarg347, ldvarg346);
      ldv_state_variable_75 = 1;
    } else {
    }
    goto ldv_34250;
    default:
    ldv_stop();
    }
    ldv_34250: ;
  } else {
  }
  goto ldv_33711;
  case 118: ;
  if (ldv_state_variable_83 != 0) {
    tmp___451 = __VERIFIER_nondet_int();
    switch (tmp___451) {
    case 0: ;
    if (ldv_state_variable_83 == 1) {
      set_fan(sensor_dev_attr_fan6_min_group1, sensor_dev_attr_fan6_min_group0, (char const *)ldvarg350,
              ldvarg349);
      ldv_state_variable_83 = 1;
    } else {
    }
    goto ldv_34254;
    case 1: ;
    if (ldv_state_variable_83 == 1) {
      show_fan(sensor_dev_attr_fan6_min_group1, sensor_dev_attr_fan6_min_group0, ldvarg348);
      ldv_state_variable_83 = 1;
    } else {
    }
    goto ldv_34254;
    default:
    ldv_stop();
    }
    ldv_34254: ;
  } else {
  }
  goto ldv_33711;
  case 119: ;
  if (ldv_state_variable_59 != 0) {
    tmp___452 = __VERIFIER_nondet_int();
    switch (tmp___452) {
    case 0: ;
    if (ldv_state_variable_59 == 1) {
      set_auto_temp(sensor_dev_attr_pwm2_auto_point2_temp_group1, sensor_dev_attr_pwm2_auto_point2_temp_group0,
                    (char const *)ldvarg353, ldvarg352);
      ldv_state_variable_59 = 1;
    } else {
    }
    goto ldv_34259;
    case 1: ;
    if (ldv_state_variable_59 == 1) {
      show_auto_temp(sensor_dev_attr_pwm2_auto_point2_temp_group1, sensor_dev_attr_pwm2_auto_point2_temp_group0,
                     ldvarg351);
      ldv_state_variable_59 = 1;
    } else {
    }
    goto ldv_34259;
    default:
    ldv_stop();
    }
    ldv_34259: ;
  } else {
  }
  goto ldv_33711;
  case 120: ;
  if (ldv_state_variable_130 != 0) {
    tmp___453 = __VERIFIER_nondet_int();
    switch (tmp___453) {
    case 0: ;
    if (ldv_state_variable_130 == 1) {
      set_in(sensor_dev_attr_in2_max_group1, sensor_dev_attr_in2_max_group0, (char const *)ldvarg356,
             ldvarg355);
      ldv_state_variable_130 = 1;
    } else {
    }
    goto ldv_34264;
    case 1: ;
    if (ldv_state_variable_130 == 1) {
      show_in(sensor_dev_attr_in2_max_group1, sensor_dev_attr_in2_max_group0, ldvarg354);
      ldv_state_variable_130 = 1;
    } else {
    }
    goto ldv_34264;
    default:
    ldv_stop();
    }
    ldv_34264: ;
  } else {
  }
  goto ldv_33711;
  case 121: ;
  if (ldv_state_variable_53 != 0) {
    tmp___454 = __VERIFIER_nondet_int();
    switch (tmp___454) {
    case 0: ;
    if (ldv_state_variable_53 == 1) {
      set_pwm_temp_map(sensor_dev_attr_pwm3_auto_channels_temp_group1, sensor_dev_attr_pwm3_auto_channels_temp_group0,
                       (char const *)ldvarg359, ldvarg358);
      ldv_state_variable_53 = 1;
    } else {
    }
    goto ldv_34269;
    case 1: ;
    if (ldv_state_variable_53 == 1) {
      show_pwm_temp_map(sensor_dev_attr_pwm3_auto_channels_temp_group1, sensor_dev_attr_pwm3_auto_channels_temp_group0,
                        ldvarg357);
      ldv_state_variable_53 = 1;
    } else {
    }
    goto ldv_34269;
    default:
    ldv_stop();
    }
    ldv_34269: ;
  } else {
  }
  goto ldv_33711;
  case 122: ;
  if (ldv_state_variable_122 != 0) {
    tmp___455 = __VERIFIER_nondet_int();
    switch (tmp___455) {
    case 0: ;
    if (ldv_state_variable_122 == 1) {
      set_in(sensor_dev_attr_in5_min_group1, sensor_dev_attr_in5_min_group0, (char const *)ldvarg362,
             ldvarg361);
      ldv_state_variable_122 = 1;
    } else {
    }
    goto ldv_34274;
    case 1: ;
    if (ldv_state_variable_122 == 1) {
      show_in(sensor_dev_attr_in5_min_group1, sensor_dev_attr_in5_min_group0, ldvarg360);
      ldv_state_variable_122 = 1;
    } else {
    }
    goto ldv_34274;
    default:
    ldv_stop();
    }
    ldv_34274: ;
  } else {
  }
  goto ldv_33711;
  case 123: ;
  if (ldv_state_variable_42 != 0) {
    tmp___456 = __VERIFIER_nondet_int();
    switch (tmp___456) {
    case 0: ;
    if (ldv_state_variable_42 == 1) {
      show_alarm(ldvarg363, ldvarg365, ldvarg364);
      ldv_state_variable_42 = 1;
    } else {
    }
    goto ldv_34279;
    default:
    ldv_stop();
    }
    ldv_34279: ;
  } else {
  }
  goto ldv_33711;
  case 124: ;
  if (ldv_state_variable_22 != 0) {
    tmp___457 = __VERIFIER_nondet_int();
    switch (tmp___457) {
    case 0: ;
    if (ldv_state_variable_22 == 1) {
      show_beep(ldvarg366, ldvarg368, ldvarg367);
      ldv_state_variable_22 = 1;
    } else {
    }
    goto ldv_34283;
    default:
    ldv_stop();
    }
    ldv_34283: ;
  } else {
  }
  goto ldv_33711;
  case 125: ;
  if (ldv_state_variable_46 != 0) {
    tmp___458 = __VERIFIER_nondet_int();
    switch (tmp___458) {
    case 0: ;
    if (ldv_state_variable_46 == 1) {
      set_auto_temp(sensor_dev_attr_pwm3_auto_point2_temp_group1, sensor_dev_attr_pwm3_auto_point2_temp_group0,
                    (char const *)ldvarg371, ldvarg370);
      ldv_state_variable_46 = 1;
    } else {
    }
    goto ldv_34287;
    case 1: ;
    if (ldv_state_variable_46 == 1) {
      show_auto_temp(sensor_dev_attr_pwm3_auto_point2_temp_group1, sensor_dev_attr_pwm3_auto_point2_temp_group0,
                     ldvarg369);
      ldv_state_variable_46 = 1;
    } else {
    }
    goto ldv_34287;
    default:
    ldv_stop();
    }
    ldv_34287: ;
  } else {
  }
  goto ldv_33711;
  case 126: ;
  if (ldv_state_variable_13 != 0) {
    tmp___459 = __VERIFIER_nondet_int();
    switch (tmp___459) {
    case 0: ;
    if (ldv_state_variable_13 == 1) {
      set_beep(sensor_dev_attr_fan4_beep_group1, sensor_dev_attr_fan4_beep_group0,
               (char const *)ldvarg374, ldvarg373);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_34292;
    case 1: ;
    if (ldv_state_variable_13 == 1) {
      show_beep(sensor_dev_attr_fan4_beep_group1, sensor_dev_attr_fan4_beep_group0,
                ldvarg372);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_34292;
    default:
    ldv_stop();
    }
    ldv_34292: ;
  } else {
  }
  goto ldv_33711;
  case 127: ;
  if (ldv_state_variable_105 != 0) {
    tmp___460 = __VERIFIER_nondet_int();
    switch (tmp___460) {
    case 0: ;
    if (ldv_state_variable_105 == 1) {
      set_temp(sensor_dev_attr_temp2_offset_group1, sensor_dev_attr_temp2_offset_group0,
               (char const *)ldvarg377, ldvarg376);
      ldv_state_variable_105 = 1;
    } else {
    }
    goto ldv_34297;
    case 1: ;
    if (ldv_state_variable_105 == 1) {
      show_temp(sensor_dev_attr_temp2_offset_group1, sensor_dev_attr_temp2_offset_group0,
                ldvarg375);
      ldv_state_variable_105 = 1;
    } else {
    }
    goto ldv_34297;
    default:
    ldv_stop();
    }
    ldv_34297: ;
  } else {
  }
  goto ldv_33711;
  case 128: ;
  if (ldv_state_variable_6 != 0) {
    tmp___461 = __VERIFIER_nondet_int();
    switch (tmp___461) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      show_vid_reg(ldvarg378, ldvarg380, ldvarg379);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_34302;
    default:
    ldv_stop();
    }
    ldv_34302: ;
  } else {
  }
  goto ldv_33711;
  case 129: ;
  if (ldv_state_variable_85 != 0) {
    tmp___462 = __VERIFIER_nondet_int();
    switch (tmp___462) {
    case 0: ;
    if (ldv_state_variable_85 == 1) {
      set_fan(sensor_dev_attr_fan5_min_group1, sensor_dev_attr_fan5_min_group0, (char const *)ldvarg383,
              ldvarg382);
      ldv_state_variable_85 = 1;
    } else {
    }
    goto ldv_34306;
    case 1: ;
    if (ldv_state_variable_85 == 1) {
      show_fan(sensor_dev_attr_fan5_min_group1, sensor_dev_attr_fan5_min_group0, ldvarg381);
      ldv_state_variable_85 = 1;
    } else {
    }
    goto ldv_34306;
    default:
    ldv_stop();
    }
    ldv_34306: ;
  } else {
  }
  goto ldv_33711;
  case 130: ;
  if (ldv_state_variable_36 != 0) {
    tmp___463 = __VERIFIER_nondet_int();
    switch (tmp___463) {
    case 0: ;
    if (ldv_state_variable_36 == 1) {
      show_alarm(ldvarg384, ldvarg386, ldvarg385);
      ldv_state_variable_36 = 1;
    } else {
    }
    goto ldv_34311;
    default:
    ldv_stop();
    }
    ldv_34311: ;
  } else {
  }
  goto ldv_33711;
  case 131: ;
  if (ldv_state_variable_3 != 0) {
    tmp___464 = __VERIFIER_nondet_int();
    switch (tmp___464) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      show_label(ldvarg387, ldvarg389, ldvarg388);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_34315;
    default:
    ldv_stop();
    }
    ldv_34315: ;
  } else {
  }
  goto ldv_33711;
  case 132: ;
  if (ldv_state_variable_94 != 0) {
    tmp___465 = __VERIFIER_nondet_int();
    switch (tmp___465) {
    case 0: ;
    if (ldv_state_variable_94 == 1) {
      show_fan(ldvarg390, ldvarg392, ldvarg391);
      ldv_state_variable_94 = 1;
    } else {
    }
    goto ldv_34319;
    default:
    ldv_stop();
    }
    ldv_34319: ;
  } else {
  }
  goto ldv_33711;
  case 133: ;
  if (ldv_state_variable_51 != 0) {
    tmp___466 = __VERIFIER_nondet_int();
    switch (tmp___466) {
    case 0: ;
    if (ldv_state_variable_51 == 1) {
      set_auto_pwm(sensor_dev_attr_pwm3_auto_point2_pwm_group1, sensor_dev_attr_pwm3_auto_point2_pwm_group0,
                   (char const *)ldvarg395, ldvarg394);
      ldv_state_variable_51 = 1;
    } else {
    }
    goto ldv_34323;
    case 1: ;
    if (ldv_state_variable_51 == 1) {
      show_auto_pwm(sensor_dev_attr_pwm3_auto_point2_pwm_group1, sensor_dev_attr_pwm3_auto_point2_pwm_group0,
                    ldvarg393);
      ldv_state_variable_51 = 1;
    } else {
    }
    goto ldv_34323;
    default:
    ldv_stop();
    }
    ldv_34323: ;
  } else {
  }
  goto ldv_33711;
  case 134: ;
  if (ldv_state_variable_9 != 0) {
    tmp___467 = __VERIFIER_nondet_int();
    switch (tmp___467) {
    case 0: ;
    if (ldv_state_variable_9 == 1) {
      show_beep(ldvarg396, ldvarg398, ldvarg397);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_34328;
    default:
    ldv_stop();
    }
    ldv_34328: ;
  } else {
  }
  goto ldv_33711;
  case 135: ;
  if (ldv_state_variable_111 != 0) {
    tmp___468 = __VERIFIER_nondet_int();
    switch (tmp___468) {
    case 0: ;
    if (ldv_state_variable_111 == 1) {
      set_temp(sensor_dev_attr_temp1_min_group1, sensor_dev_attr_temp1_min_group0,
               (char const *)ldvarg401, ldvarg400);
      ldv_state_variable_111 = 1;
    } else {
    }
    goto ldv_34332;
    case 1: ;
    if (ldv_state_variable_111 == 1) {
      show_temp(sensor_dev_attr_temp1_min_group1, sensor_dev_attr_temp1_min_group0,
                ldvarg399);
      ldv_state_variable_111 = 1;
    } else {
    }
    goto ldv_34332;
    default:
    ldv_stop();
    }
    ldv_34332: ;
  } else {
  }
  goto ldv_33711;
  case 136: ;
  if (ldv_state_variable_38 != 0) {
    tmp___469 = __VERIFIER_nondet_int();
    switch (tmp___469) {
    case 0: ;
    if (ldv_state_variable_38 == 1) {
      show_alarm(ldvarg402, ldvarg404, ldvarg403);
      ldv_state_variable_38 = 1;
    } else {
    }
    goto ldv_34337;
    default:
    ldv_stop();
    }
    ldv_34337: ;
  } else {
  }
  goto ldv_33711;
  case 137: ;
  if (ldv_state_variable_4 != 0) {
    tmp___470 = __VERIFIER_nondet_int();
    switch (tmp___470) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      show_label(ldvarg405, ldvarg407, ldvarg406);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_34341;
    default:
    ldv_stop();
    }
    ldv_34341: ;
  } else {
  }
  goto ldv_33711;
  case 138: ;
  if (ldv_state_variable_34 != 0) {
    tmp___471 = __VERIFIER_nondet_int();
    switch (tmp___471) {
    case 0: ;
    if (ldv_state_variable_34 == 1) {
      show_alarm(ldvarg408, ldvarg410, ldvarg409);
      ldv_state_variable_34 = 1;
    } else {
    }
    goto ldv_34345;
    default:
    ldv_stop();
    }
    ldv_34345: ;
  } else {
  }
  goto ldv_33711;
  case 139: ;
  if (ldv_state_variable_132 != 0) {
    tmp___472 = __VERIFIER_nondet_int();
    switch (tmp___472) {
    case 0: ;
    if (ldv_state_variable_132 == 1) {
      show_in(ldvarg411, ldvarg413, ldvarg412);
      ldv_state_variable_132 = 1;
    } else {
    }
    goto ldv_34349;
    default:
    ldv_stop();
    }
    ldv_34349: ;
  } else {
  }
  goto ldv_33711;
  default:
  ldv_stop();
  }
  ldv_33711: ;
  goto ldv_34352;
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
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_24(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_26(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_27(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_28(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_29(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_33(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_34(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_35(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_37(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_38(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_39(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_it87_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv___platform_driver_register_41(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  ldv_state_variable_139 = 1;
  ldv_platform_driver_init_139();
  return (ldv_func_res);
}
}
void ldv_platform_driver_unregister_42(struct platform_driver *ldv_func_arg1 )
{
  {
  platform_driver_unregister(ldv_func_arg1);
  ldv_state_variable_139 = 0;
  return;
}
}
void ldv_platform_driver_unregister_43(struct platform_driver *ldv_func_arg1 )
{
  {
  platform_driver_unregister(ldv_func_arg1);
  ldv_state_variable_139 = 0;
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
static int ldv_mutex_update_lock_of_it87_data = 1;
int ldv_mutex_lock_interruptible_update_lock_of_it87_data(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_update_lock_of_it87_data != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_update_lock_of_it87_data = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_update_lock_of_it87_data(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_update_lock_of_it87_data != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_update_lock_of_it87_data = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_update_lock_of_it87_data(struct mutex *lock )
{
  {
  if (ldv_mutex_update_lock_of_it87_data != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_update_lock_of_it87_data = 2;
  return;
}
}
int ldv_mutex_trylock_update_lock_of_it87_data(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_update_lock_of_it87_data != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_update_lock_of_it87_data = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_update_lock_of_it87_data(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_update_lock_of_it87_data != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_update_lock_of_it87_data = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_update_lock_of_it87_data(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_update_lock_of_it87_data == 1) {
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
void ldv_mutex_unlock_update_lock_of_it87_data(struct mutex *lock )
{
  {
  if (ldv_mutex_update_lock_of_it87_data != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_update_lock_of_it87_data = 1;
  return;
}
}
void ldv_usb_lock_device_update_lock_of_it87_data(void)
{
  {
  ldv_mutex_lock_update_lock_of_it87_data((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_update_lock_of_it87_data(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_update_lock_of_it87_data((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_update_lock_of_it87_data(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_update_lock_of_it87_data((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_update_lock_of_it87_data(void)
{
  {
  ldv_mutex_unlock_update_lock_of_it87_data((struct mutex *)0);
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
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_update_lock_of_it87_data != 1) {
    ldv_error();
  } else {
  }
  return;
}
}
struct resource *__devm_request_region(struct device *arg0, struct resource *arg1, resource_size_t arg2, resource_size_t arg3, const char *arg4) {
  return ldv_malloc(sizeof(struct resource));
}
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
}
void __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __platform_driver_register(struct platform_driver *arg0, struct module *arg1) {
  return __VERIFIER_nondet_int();
}
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
struct resource *__request_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2, const char *arg3, int arg4) {
  return ldv_malloc(sizeof(struct resource));
}
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int acpi_check_resource_conflict(const struct resource *arg0) {
  return __VERIFIER_nondet_int();
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_notice(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
void *devm_kmalloc(struct device *arg0, size_t arg1, gfp_t arg2) {
  return ldv_malloc(0UL);
}
const char *dmi_get_system_info(int arg0) {
  return ldv_malloc(sizeof(char));
}
struct device *hwmon_device_register(struct device *arg0) {
  return ldv_malloc(sizeof(struct device));
}
void hwmon_device_unregister(struct device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int kstrtoll(const char *arg0, unsigned int arg1, long long *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int kstrtoull(const char *arg0, unsigned int arg1, unsigned long long *arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
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
int platform_device_add(struct platform_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int platform_device_add_data(struct platform_device *arg0, const void *arg1, size_t arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int platform_device_add_resources(struct platform_device *arg0, const struct resource *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
struct platform_device *platform_device_alloc(const char *arg0, int arg1) {
  return ldv_malloc(sizeof(struct platform_device));
}
void platform_device_put(struct platform_device *arg0) {
  return;
}
void platform_device_unregister(struct platform_device *arg0) {
  return;
}
void platform_driver_unregister(struct platform_driver *arg0) {
  return;
}
struct resource *platform_get_resource(struct platform_device *arg0, unsigned int arg1, unsigned int arg2) {
  return ldv_malloc(sizeof(struct resource));
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sysfs_chmod_file(struct kobject *arg0, const struct attribute *arg1, umode_t arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sysfs_create_file_ns(struct kobject *arg0, const struct attribute *arg1, const void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sysfs_create_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_file_ns(struct kobject *arg0, const struct attribute *arg1, const void *arg2) {
  return;
}
void sysfs_remove_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int vid_from_reg(int arg0, u8 arg1) {
  return __VERIFIER_nondet_int();
}
unsigned char __VERIFIER_nondet_uchar(void);
u8 vid_which_vrm() {
  return __VERIFIER_nondet_uchar();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
