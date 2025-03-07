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
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
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
struct rcu_head {
   struct rcu_head *next ;
   void (*func)(struct rcu_head * ) ;
};
struct module;
struct module;
typedef void (*ctor_fn_t)(void);
struct completion;
struct completion;
struct pt_regs;
struct pt_regs;
struct pid;
struct pid;
struct timespec;
struct timespec;
struct page;
struct page;
struct task_struct;
struct task_struct;
struct mm_struct;
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
struct __anonstruct_ldv_2180_13 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2195_14 {
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
union __anonunion_ldv_2196_12 {
   struct __anonstruct_ldv_2180_13 ldv_2180 ;
   struct __anonstruct_ldv_2195_14 ldv_2195 ;
};
struct desc_struct {
   union __anonunion_ldv_2196_12 ldv_2196 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_16 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_16 pgd_t;
typedef struct page *pgtable_t;
struct file;
struct file;
struct seq_file;
struct seq_file;
struct thread_struct;
struct thread_struct;
struct cpumask;
struct cpumask;
struct arch_spinlock;
struct arch_spinlock;
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
union __anonunion_ldv_2824_19 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2824_19 ldv_2824 ;
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
struct static_key;
struct seq_operations;
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
struct __anonstruct_ldv_5180_24 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5186_25 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5187_23 {
   struct __anonstruct_ldv_5180_24 ldv_5180 ;
   struct __anonstruct_ldv_5186_25 ldv_5186 ;
};
union __anonunion_ldv_5196_26 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5187_23 ldv_5187 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5196_26 ldv_5196 ;
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
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_5907_29 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_5907_29 ldv_5907 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_ldv_5914_31 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_30 {
   s64 lock ;
   struct __anonstruct_ldv_5914_31 ldv_5914 ;
};
typedef union __anonunion_arch_rwlock_t_30 arch_rwlock_t;
struct lockdep_map;
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
struct __anonstruct_ldv_6122_33 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6123_32 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6122_33 ldv_6122 ;
};
struct spinlock {
   union __anonunion_ldv_6123_32 ldv_6123 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_34 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_34 rwlock_t;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   uid_t uid ;
   gid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
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
struct rw_semaphore;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
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
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
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
struct hrtimer;
enum hrtimer_restart;
struct work_struct;
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
};
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct vm_area_struct;
struct vm_area_struct;
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct nsproxy;
struct nsproxy;
struct cred;
struct cred;
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
struct sock;
struct sock;
struct kobject;
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
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
};
struct sysfs_dirent;
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
struct kernel_param;
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_13363_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_13363_134 ldv_13363 ;
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
struct exception_table_entry;
struct exception_table_entry;
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
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
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
   int objsize ;
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
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct block_device;
struct block_device;
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct nameidata;
struct nameidata;
struct path;
struct path;
struct vfsmount;
struct vfsmount;
struct qstr {
   unsigned int hash ;
   unsigned int len ;
   unsigned char const *name ;
};
struct inode;
struct dentry_operations;
struct super_block;
union __anonunion_d_u_135 {
   struct list_head d_child ;
   struct rcu_head d_rcu ;
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
   union __anonunion_d_u_135 d_u ;
   struct list_head d_subdirs ;
   struct list_head d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , struct nameidata * ) ;
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
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct prio_tree_node;
struct raw_prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
};
struct prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
   unsigned long start ;
   unsigned long last ;
};
struct prio_tree_root {
   struct prio_tree_node *prio_tree_node ;
   unsigned short index_bits ;
   unsigned short raw ;
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
   struct rcu_head rcu ;
   struct upid numbers[1U] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct user_namespace;
struct user_namespace;
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
struct export_operations;
struct export_operations;
struct iovec;
struct iovec;
struct kiocb;
struct kiocb;
struct pipe_inode_info;
struct pipe_inode_info;
struct poll_table_struct;
struct poll_table_struct;
struct kstatfs;
struct kstatfs;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   uid_t ia_uid ;
   gid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
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
struct dquot;
typedef __kernel_uid32_t qid_t;
typedef long long qsize_t;
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
   unsigned int dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   short dq_type ;
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
   int (*quota_sync)(struct super_block * , int , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , int , qid_t , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , int , qid_t , struct fs_disk_quota * ) ;
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
struct address_space;
struct address_space;
struct writeback_control;
struct writeback_control;
union __anonunion_arg_138 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_137 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_138 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_137 read_descriptor_t;
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
};
struct backing_dev_info;
struct backing_dev_info;
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct prio_tree_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   struct address_space *assoc_mapping ;
};
struct request_queue;
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
struct posix_acl;
struct inode_operations;
union __anonunion_ldv_15786_139 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_15805_140 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_operations;
struct file_lock;
struct cdev;
union __anonunion_ldv_15823_141 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   uid_t i_uid ;
   gid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion_ldv_15786_139 ldv_15786 ;
   dev_t i_rdev ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   blkcnt_t i_blocks ;
   loff_t i_size ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion_ldv_15805_140 ldv_15805 ;
   atomic_t i_count ;
   unsigned int i_blkbits ;
   u64 i_version ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_15823_141 ldv_15823 ;
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
   uid_t uid ;
   uid_t euid ;
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
union __anonunion_f_u_142 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_142 f_u ;
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
struct files_struct;
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_release_private)(struct file_lock * ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct nlm_lockowner;
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_144 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_143 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_144 afs ;
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
   union __anonunion_fl_u_143 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct rcu_head fa_rcu ;
};
struct file_system_type;
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_dirt ;
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
   struct mutex s_lock ;
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
   int s_frozen ;
   wait_queue_head_t s_wait_unfrozen ;
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
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , struct nameidata * ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , struct nameidata * ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   void (*truncate)(struct inode * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   void (*truncate_range)(struct inode * , loff_t , loff_t ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   void (*write_super)(struct super_block * ) ;
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
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct debugfs_blob_wrapper {
   void *data ;
   unsigned long size ;
};
union __anonunion_ldv_17990_146 {
   unsigned long index ;
   void *freelist ;
};
struct __anonstruct_ldv_18000_150 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_18001_149 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_18000_150 ldv_18000 ;
};
struct __anonstruct_ldv_18003_148 {
   union __anonunion_ldv_18001_149 ldv_18001 ;
   atomic_t _count ;
};
union __anonunion_ldv_18004_147 {
   unsigned long counters ;
   struct __anonstruct_ldv_18003_148 ldv_18003 ;
};
struct __anonstruct_ldv_18005_145 {
   union __anonunion_ldv_17990_146 ldv_17990 ;
   union __anonunion_ldv_18004_147 ldv_18004 ;
};
struct __anonstruct_ldv_18012_152 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
union __anonunion_ldv_18013_151 {
   struct list_head lru ;
   struct __anonstruct_ldv_18012_152 ldv_18012 ;
};
union __anonunion_ldv_18018_153 {
   unsigned long private ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_18005_145 ldv_18005 ;
   union __anonunion_ldv_18013_151 ldv_18013 ;
   union __anonunion_ldv_18018_153 ldv_18018 ;
   unsigned long debug_flags ;
};
struct __anonstruct_vm_set_155 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_154 {
   struct __anonstruct_vm_set_155 vm_set ;
   struct raw_prio_tree_node prio_tree_node ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   struct mm_struct *vm_mm ;
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   struct rb_node vm_rb ;
   union __anonunion_shared_154 shared ;
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
   unsigned long reserved_vm ;
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
   unsigned int faultstamp ;
   unsigned int token_priority ;
   unsigned int last_interval ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   unsigned long num_exe_file_vmas ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   pgtable_t pmd_huge_pte ;
   struct cpumask cpumask_allocation ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct siginfo;
struct siginfo;
struct __anonstruct_sigset_t_156 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_156 sigset_t;
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
struct __anonstruct__kill_158 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_159 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_160 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_161 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_162 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_163 {
   long _band ;
   int _fd ;
};
union __anonunion__sifields_157 {
   int _pad[28U] ;
   struct __anonstruct__kill_158 _kill ;
   struct __anonstruct__timer_159 _timer ;
   struct __anonstruct__rt_160 _rt ;
   struct __anonstruct__sigchld_161 _sigchld ;
   struct __anonstruct__sigfault_162 _sigfault ;
   struct __anonstruct__sigpoll_163 _sigpoll ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_157 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct __anonstruct_seccomp_t_166 {
   int mode ;
};
typedef struct __anonstruct_seccomp_t_166 seccomp_t;
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct rt_mutex_waiter;
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
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
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
   unsigned long active_bases ;
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
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct key;
struct signal_struct;
struct signal_struct;
struct key_type;
struct key_type;
struct keyring_list;
struct keyring_list;
struct key_user;
union __anonunion_ldv_19057_167 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_168 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_169 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   struct rb_node serial_node ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_19057_167 ldv_19057 ;
   uid_t uid ;
   gid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_168 type_data ;
   union __anonunion_payload_169 payload ;
};
struct audit_context;
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   gid_t small_block[32U] ;
   gid_t *blocks[0U] ;
};
struct thread_group_cred {
   atomic_t usage ;
   pid_t tgid ;
   spinlock_t lock ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct rcu_head rcu ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   uid_t uid ;
   gid_t gid ;
   uid_t suid ;
   gid_t sgid ;
   uid_t euid ;
   gid_t egid ;
   uid_t fsuid ;
   gid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   struct thread_group_cred *tgcred ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct rcu_head rcu ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct futex_pi_state;
struct futex_pi_state;
struct robust_list_head;
struct robust_list_head;
struct bio_list;
struct bio_list;
struct fs_struct;
struct fs_struct;
struct perf_event_context;
struct perf_event_context;
struct blk_plug;
struct blk_plug;
struct cfs_rq;
struct cfs_rq;
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
struct kioctx;
union __anonunion_ki_obj_170 {
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
   union __anonunion_ki_obj_170 ki_obj ;
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
   struct rcu_head rcu_head ;
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
   cputime_t prev_utime ;
   cputime_t prev_stime ;
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
   int oom_adj ;
   int oom_score_adj ;
   int oom_score_adj_min ;
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
   uid_t uid ;
   struct user_namespace *user_ns ;
   atomic_long_t locked_vm ;
};
struct reclaim_state;
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
struct io_context;
struct rq;
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
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned int time_slice ;
   int nr_cpus_allowed ;
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
   struct hlist_head preempt_notifiers ;
   unsigned char fpu_counter ;
   unsigned int policy ;
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
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   unsigned char irq_thread : 1 ;
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
   cputime_t prev_utime ;
   cputime_t prev_stime ;
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
   struct cred *replacement_session_keyring ;
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
   struct audit_context *audit_context ;
   uid_t loginuid ;
   unsigned int sessionid ;
   seccomp_t seccomp ;
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
   struct rcu_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   struct list_head *scm_work_list ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   atomic_t ptrace_bp_refcnt ;
};
typedef u64 acpi_size;
typedef u64 acpi_physical_address;
typedef u32 acpi_status;
typedef char *acpi_string;
struct acpi_table_header {
   char signature[4U] ;
   u32 length ;
   u8 revision ;
   u8 checksum ;
   char oem_id[6U] ;
   char oem_table_id[8U] ;
   u32 oem_revision ;
   char asl_compiler_id[4U] ;
   u32 asl_compiler_revision ;
};
struct acpi_generic_address {
   u8 space_id ;
   u8 bit_width ;
   u8 bit_offset ;
   u8 access_width ;
   u64 address ;
};
struct acpi_whea_header {
   u8 action ;
   u8 instruction ;
   u8 flags ;
   u8 reserved ;
   struct acpi_generic_address register_region ;
   u64 value ;
   u64 mask ;
};
struct acpi_table_einj {
   struct acpi_table_header header ;
   u32 header_length ;
   u8 flags ;
   u8 reserved[3U] ;
   u32 entries ;
};
struct acpi_einj_trigger {
   u32 header_size ;
   u32 revision ;
   u32 table_size ;
   u32 entry_count ;
};
struct apei_exec_context;
struct apei_exec_context;
struct apei_exec_ins_type {
   u32 flags ;
   int (*run)(struct apei_exec_context * , struct acpi_whea_header * ) ;
};
struct apei_exec_context {
   u32 ip ;
   u64 value ;
   u64 var1 ;
   u64 var2 ;
   u64 src_base ;
   u64 dst_base ;
   struct apei_exec_ins_type *ins_table ;
   u32 instructions ;
   struct acpi_whea_header *action_table ;
   u32 entries ;
};
struct apei_resources {
   struct list_head iomem ;
   struct list_head ioport ;
};
struct set_error_type_with_address {
   u32 type ;
   u32 vendor_extension ;
   u32 flags ;
   u32 apicid ;
   u64 memory_address ;
   u64 memory_address_range ;
   u32 pcie_sbdf ;
};
struct vendor_error_type_extension {
   u32 length ;
   u32 pcie_sbdf ;
   u16 vendor_id ;
   u16 device_id ;
   u8 rev_id ;
   u8 reserved[3U] ;
};
struct einj_parameter {
   u64 type ;
   u64 reserved1 ;
   u64 reserved2 ;
   u64 param1 ;
   u64 param2 ;
};
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
int ldv_spin_trylock(void) ;
extern int printk(char const * , ...) ;
extern int sprintf(char * , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  {
  *((struct list_head **)list) = list;
  __cil_tmp2 = (unsigned long )list;
  __cil_tmp3 = __cil_tmp2 + 8;
  *((struct list_head **)__cil_tmp3) = list;
  return;
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern struct resource iomem_resource ;
extern struct resource *__request_region(struct resource * , resource_size_t , resource_size_t ,
                                         char const * , int ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
extern void *ioremap_cache(resource_size_t , unsigned long ) ;
extern void iounmap(void volatile * ) ;
extern int acpi_disabled ;
extern struct module __this_module ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags ) ;
extern loff_t generic_file_llseek(struct file * , loff_t , int ) ;
__inline static void __simple_attr_check_format(char const *fmt , ...)
{
  {
  return;
}
}
extern int simple_attr_open(struct inode * , struct file * , int (*)(void * , u64 * ) ,
                            int (*)(void * , u64 ) , char const * ) ;
extern int simple_attr_release(struct inode * , struct file * ) ;
extern ssize_t simple_attr_read(struct file * , char * , size_t , loff_t * ) ;
extern ssize_t simple_attr_write(struct file * , char const * , size_t , loff_t * ) ;
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int single_open(struct file * , int (*)(struct seq_file * , void * ) , void * ) ;
extern int single_release(struct inode * , struct file * ) ;
extern struct dentry *debugfs_create_file(char const * , umode_t , struct dentry * ,
                                          void * , struct file_operations const * ) ;
extern struct dentry *debugfs_create_dir(char const * , struct dentry * ) ;
extern void debugfs_remove_recursive(struct dentry * ) ;
extern struct dentry *debugfs_create_x32(char const * , umode_t , struct dentry * ,
                                         u32 * ) ;
extern struct dentry *debugfs_create_x64(char const * , umode_t , struct dentry * ,
                                         u64 * ) ;
extern struct dentry *debugfs_create_blob(char const * , umode_t , struct dentry * ,
                                          struct debugfs_blob_wrapper * ) ;
extern void touch_nmi_watchdog(void) ;
extern void __const_udelay(unsigned long ) ;
extern void *acpi_os_map_memory(acpi_physical_address , acpi_size ) ;
extern void acpi_os_unmap_memory(void * , acpi_size ) ;
extern char const *acpi_format_exception(acpi_status ) ;
extern acpi_status acpi_get_table(acpi_string , u32 , struct acpi_table_header ** ) ;
extern void apei_exec_ctx_init(struct apei_exec_context * , struct apei_exec_ins_type * ,
                               u32 , struct acpi_whea_header * , u32 ) ;
__inline static void apei_exec_ctx_set_input(struct apei_exec_context *ctx , u64 input )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  {
  __cil_tmp3 = (unsigned long )ctx;
  __cil_tmp4 = __cil_tmp3 + 8;
  *((u64 *)__cil_tmp4) = input;
  return;
}
}
__inline static u64 apei_exec_ctx_get_output(struct apei_exec_context *ctx )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  {
  {
  __cil_tmp2 = (unsigned long )ctx;
  __cil_tmp3 = __cil_tmp2 + 8;
  return (*((u64 *)__cil_tmp3));
  }
}
}
extern int __apei_exec_run(struct apei_exec_context * , u8 , bool ) ;
__inline static int apei_exec_run(struct apei_exec_context *ctx , u8 action )
{ int tmp ;
  int __cil_tmp4 ;
  u8 __cil_tmp5 ;
  bool __cil_tmp6 ;
  {
  {
  __cil_tmp4 = (int )action;
  __cil_tmp5 = (u8 )__cil_tmp4;
  __cil_tmp6 = (bool )0;
  tmp = __apei_exec_run(ctx, __cil_tmp5, __cil_tmp6);
  }
  return (tmp);
}
}
__inline static int apei_exec_run_optional(struct apei_exec_context *ctx , u8 action )
{ int tmp ;
  int __cil_tmp4 ;
  u8 __cil_tmp5 ;
  bool __cil_tmp6 ;
  {
  {
  __cil_tmp4 = (int )action;
  __cil_tmp5 = (u8 )__cil_tmp4;
  __cil_tmp6 = (bool )1;
  tmp = __apei_exec_run(ctx, __cil_tmp5, __cil_tmp6);
  }
  return (tmp);
}
}
extern int apei_exec_read_register(struct apei_exec_context * , struct acpi_whea_header * ) ;
extern int apei_exec_read_register_value(struct apei_exec_context * , struct acpi_whea_header * ) ;
extern int apei_exec_write_register(struct apei_exec_context * , struct acpi_whea_header * ) ;
extern int apei_exec_write_register_value(struct apei_exec_context * , struct acpi_whea_header * ) ;
extern int apei_exec_noop(struct apei_exec_context * , struct acpi_whea_header * ) ;
extern int apei_exec_pre_map_gars(struct apei_exec_context * ) ;
extern int apei_exec_post_unmap_gars(struct apei_exec_context * ) ;
__inline static void apei_resources_init(struct apei_resources *resources )
{ struct list_head *__cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct list_head *__cil_tmp5 ;
  {
  {
  __cil_tmp2 = (struct list_head *)resources;
  INIT_LIST_HEAD(__cil_tmp2);
  __cil_tmp3 = (unsigned long )resources;
  __cil_tmp4 = __cil_tmp3 + 16;
  __cil_tmp5 = (struct list_head *)__cil_tmp4;
  INIT_LIST_HEAD(__cil_tmp5);
  }
  return;
}
}
extern void apei_resources_fini(struct apei_resources * ) ;
extern int apei_resources_add(struct apei_resources * , unsigned long , unsigned long ,
                              bool ) ;
extern int apei_resources_sub(struct apei_resources * , struct apei_resources * ) ;
extern int apei_resources_request(struct apei_resources * , char const * ) ;
extern void apei_resources_release(struct apei_resources * ) ;
extern int apei_exec_collect_resources(struct apei_exec_context * , struct apei_resources * ) ;
extern struct dentry *apei_get_debugfs_dir(void) ;
static int acpi5 ;
static u32 notrigger ;
static u32 vendor_flags ;
static struct debugfs_blob_wrapper vendor_blob ;
static char vendor_dev[64U] ;
static bool param_extension ;
static struct acpi_table_einj *einj_tab ;
static struct apei_resources einj_resources ;
static struct apei_exec_ins_type einj_ins_type[5U] = { {1U, & apei_exec_read_register},
        {1U, & apei_exec_read_register_value},
        {1U, & apei_exec_write_register},
        {1U, & apei_exec_write_register_value},
        {0U, & apei_exec_noop}};
static struct mutex einj_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)0xffffffffffffffffUL, {(struct lock_class_key *)0,
                                                                             {(struct lock_class *)0,
                                                                              (struct lock_class *)0},
                                                                             "einj_mutex.wait_lock",
                                                                             0, 0UL}}}},
    {& einj_mutex.wait_list, & einj_mutex.wait_list}, (struct task_struct *)0, (char const *)0,
    (void *)(& einj_mutex), {(struct lock_class_key *)0, {(struct lock_class *)0,
                                                          (struct lock_class *)0},
                             "einj_mutex", 0, 0UL}};
static void *einj_param ;
static void einj_exec_ctx_init(struct apei_exec_context *ctx )
{ struct apei_exec_ins_type *__cil_tmp2 ;
  struct acpi_table_einj **__cil_tmp3 ;
  struct acpi_table_einj *__cil_tmp4 ;
  struct acpi_whea_header *__cil_tmp5 ;
  struct acpi_whea_header *__cil_tmp6 ;
  struct acpi_table_einj **__cil_tmp7 ;
  struct acpi_table_einj *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  u32 __cil_tmp11 ;
  {
  {
  __cil_tmp2 = (struct apei_exec_ins_type *)(& einj_ins_type);
  __cil_tmp3 = & einj_tab;
  __cil_tmp4 = *__cil_tmp3;
  __cil_tmp5 = (struct acpi_whea_header *)__cil_tmp4;
  __cil_tmp6 = __cil_tmp5 + 48U;
  __cil_tmp7 = & einj_tab;
  __cil_tmp8 = *__cil_tmp7;
  __cil_tmp9 = (unsigned long )__cil_tmp8;
  __cil_tmp10 = __cil_tmp9 + 44;
  __cil_tmp11 = *((u32 *)__cil_tmp10);
  apei_exec_ctx_init(ctx, __cil_tmp2, 5U, __cil_tmp6, __cil_tmp11);
  }
  return;
}
}
static int __einj_get_available_error_type(u32 *type )
{ struct apei_exec_context ctx ;
  int rc ;
  u64 tmp ;
  u8 __cil_tmp5 ;
  {
  {
  einj_exec_ctx_init(& ctx);
  __cil_tmp5 = (u8 )3;
  rc = apei_exec_run(& ctx, __cil_tmp5);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  tmp = apei_exec_ctx_get_output(& ctx);
  *type = (u32 )tmp;
  }
  return (0);
}
}
static int einj_get_available_error_type(u32 *type )
{ int rc ;
  {
  {
  mutex_lock_nested(& einj_mutex, 0U);
  rc = __einj_get_available_error_type(type);
  mutex_unlock(& einj_mutex);
  }
  return (rc);
}
}
static int einj_timedout(u64 *t )
{ u64 __cil_tmp2 ;
  long long __cil_tmp3 ;
  u64 __cil_tmp4 ;
  {
  {
  __cil_tmp2 = *t;
  __cil_tmp3 = (long long )__cil_tmp2;
  if (__cil_tmp3 <= 99LL) {
    {
    printk("<4>[Firmware Warn]: EINJ: Firmware does not respond in time\n");
    }
    return (1);
  } else {
  }
  }
  {
  __cil_tmp4 = *t;
  *t = __cil_tmp4 - 100ULL;
  __const_udelay(500UL);
  touch_nmi_watchdog();
  }
  return (0);
}
}
static void check_vendor_extension(u64 paddr , struct set_error_type_with_address *v5param )
{ int offset ;
  struct vendor_error_type_extension *v ;
  u32 sbdf ;
  void *tmp ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  u32 __cil_tmp9 ;
  u64 __cil_tmp10 ;
  u64 __cil_tmp11 ;
  struct vendor_error_type_extension *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  char *__cil_tmp17 ;
  u32 __cil_tmp18 ;
  u32 __cil_tmp19 ;
  unsigned int __cil_tmp20 ;
  u32 __cil_tmp21 ;
  unsigned int __cil_tmp22 ;
  u32 __cil_tmp23 ;
  unsigned int __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  u16 __cil_tmp27 ;
  int __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  u16 __cil_tmp31 ;
  int __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  u8 __cil_tmp35 ;
  int __cil_tmp36 ;
  void *__cil_tmp37 ;
  {
  __cil_tmp7 = (unsigned long )v5param;
  __cil_tmp8 = __cil_tmp7 + 4;
  __cil_tmp9 = *((u32 *)__cil_tmp8);
  offset = (int )__cil_tmp9;
  if (offset == 0) {
    return;
  } else {
  }
  {
  __cil_tmp10 = (u64 )offset;
  __cil_tmp11 = __cil_tmp10 + paddr;
  tmp = acpi_os_map_memory(__cil_tmp11, 16ULL);
  v = (struct vendor_error_type_extension *)tmp;
  }
  {
  __cil_tmp12 = (struct vendor_error_type_extension *)0;
  __cil_tmp13 = (unsigned long )__cil_tmp12;
  __cil_tmp14 = (unsigned long )v;
  if (__cil_tmp14 == __cil_tmp13) {
    return;
  } else {
  }
  }
  {
  __cil_tmp15 = (unsigned long )v;
  __cil_tmp16 = __cil_tmp15 + 4;
  sbdf = *((u32 *)__cil_tmp16);
  __cil_tmp17 = (char *)(& vendor_dev);
  __cil_tmp18 = sbdf >> 24;
  __cil_tmp19 = sbdf >> 16;
  __cil_tmp20 = __cil_tmp19 & 255U;
  __cil_tmp21 = sbdf >> 11;
  __cil_tmp22 = __cil_tmp21 & 31U;
  __cil_tmp23 = sbdf >> 8;
  __cil_tmp24 = __cil_tmp23 & 7U;
  __cil_tmp25 = (unsigned long )v;
  __cil_tmp26 = __cil_tmp25 + 8;
  __cil_tmp27 = *((u16 *)__cil_tmp26);
  __cil_tmp28 = (int )__cil_tmp27;
  __cil_tmp29 = (unsigned long )v;
  __cil_tmp30 = __cil_tmp29 + 10;
  __cil_tmp31 = *((u16 *)__cil_tmp30);
  __cil_tmp32 = (int )__cil_tmp31;
  __cil_tmp33 = (unsigned long )v;
  __cil_tmp34 = __cil_tmp33 + 12;
  __cil_tmp35 = *((u8 *)__cil_tmp34);
  __cil_tmp36 = (int )__cil_tmp35;
  sprintf(__cil_tmp17, "%x:%x:%x.%x vendor_id=%x device_id=%x rev_id=%x\n", __cil_tmp18,
          __cil_tmp20, __cil_tmp22, __cil_tmp24, __cil_tmp28, __cil_tmp32, __cil_tmp36);
  __cil_tmp37 = (void *)v;
  acpi_os_unmap_memory(__cil_tmp37, 16ULL);
  }
  return;
}
}
static void *einj_get_parameter_address(void)
{ int i ;
  u64 paddrv4 ;
  u64 paddrv5 ;
  struct acpi_whea_header *entry ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  struct set_error_type_with_address *v5param ;
  void *tmp ;
  struct einj_parameter *v4param ;
  void *tmp___0 ;
  u64 *__cil_tmp13 ;
  u64 *__cil_tmp14 ;
  struct acpi_table_einj **__cil_tmp15 ;
  struct acpi_table_einj *__cil_tmp16 ;
  struct acpi_whea_header *__cil_tmp17 ;
  u8 __cil_tmp18 ;
  unsigned int __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  u8 __cil_tmp22 ;
  unsigned int __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  u8 __cil_tmp26 ;
  unsigned int __cil_tmp27 ;
  void *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  u64 *__cil_tmp32 ;
  void const *__cil_tmp33 ;
  void *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  u64 *__cil_tmp38 ;
  void const *__cil_tmp39 ;
  u8 __cil_tmp40 ;
  unsigned int __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  u8 __cil_tmp44 ;
  unsigned int __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  u8 __cil_tmp48 ;
  unsigned int __cil_tmp49 ;
  void *__cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  u64 *__cil_tmp54 ;
  void const *__cil_tmp55 ;
  void *__cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  u64 *__cil_tmp60 ;
  void const *__cil_tmp61 ;
  struct acpi_table_einj **__cil_tmp62 ;
  struct acpi_table_einj *__cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  u32 __cil_tmp66 ;
  u32 __cil_tmp67 ;
  u64 *__cil_tmp68 ;
  u64 __cil_tmp69 ;
  u64 *__cil_tmp70 ;
  u64 __cil_tmp71 ;
  struct set_error_type_with_address *__cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  u64 *__cil_tmp75 ;
  u64 __cil_tmp76 ;
  bool *__cil_tmp77 ;
  bool __cil_tmp78 ;
  u64 *__cil_tmp79 ;
  u64 __cil_tmp80 ;
  u64 *__cil_tmp81 ;
  u64 __cil_tmp82 ;
  struct einj_parameter *__cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  u64 __cil_tmp88 ;
  void *__cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  u64 __cil_tmp92 ;
  void *__cil_tmp93 ;
  {
  __cil_tmp13 = & paddrv4;
  *__cil_tmp13 = 0ULL;
  __cil_tmp14 = & paddrv5;
  *__cil_tmp14 = 0ULL;
  __cil_tmp15 = & einj_tab;
  __cil_tmp16 = *__cil_tmp15;
  __cil_tmp17 = (struct acpi_whea_header *)__cil_tmp16;
  entry = __cil_tmp17 + 48U;
  i = 0;
  goto ldv_23507;
  ldv_23506: ;
  {
  __cil_tmp18 = *((u8 *)entry);
  __cil_tmp19 = (unsigned int )__cil_tmp18;
  if (__cil_tmp19 == 2U) {
    {
    __cil_tmp20 = (unsigned long )entry;
    __cil_tmp21 = __cil_tmp20 + 1;
    __cil_tmp22 = *((u8 *)__cil_tmp21);
    __cil_tmp23 = (unsigned int )__cil_tmp22;
    if (__cil_tmp23 == 2U) {
      {
      __cil_tmp24 = (unsigned long )entry;
      __cil_tmp25 = __cil_tmp24 + 8;
      __cil_tmp26 = *((u8 *)__cil_tmp25);
      __cil_tmp27 = (unsigned int )__cil_tmp26;
      if (__cil_tmp27 == 0U) {
        __len = 8UL;
        if (__len > 63UL) {
          {
          __cil_tmp28 = (void *)(& paddrv4);
          __cil_tmp29 = 8 + 8;
          __cil_tmp30 = (unsigned long )entry;
          __cil_tmp31 = __cil_tmp30 + __cil_tmp29;
          __cil_tmp32 = (u64 *)__cil_tmp31;
          __cil_tmp33 = (void const *)__cil_tmp32;
          __ret = memcpy(__cil_tmp28, __cil_tmp33, __len);
          }
        } else {
          {
          __cil_tmp34 = (void *)(& paddrv4);
          __cil_tmp35 = 8 + 8;
          __cil_tmp36 = (unsigned long )entry;
          __cil_tmp37 = __cil_tmp36 + __cil_tmp35;
          __cil_tmp38 = (u64 *)__cil_tmp37;
          __cil_tmp39 = (void const *)__cil_tmp38;
          __ret = memcpy(__cil_tmp34, __cil_tmp39, __len);
          }
        }
      } else {
      }
      }
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp40 = *((u8 *)entry);
  __cil_tmp41 = (unsigned int )__cil_tmp40;
  if (__cil_tmp41 == 8U) {
    {
    __cil_tmp42 = (unsigned long )entry;
    __cil_tmp43 = __cil_tmp42 + 1;
    __cil_tmp44 = *((u8 *)__cil_tmp43);
    __cil_tmp45 = (unsigned int )__cil_tmp44;
    if (__cil_tmp45 == 2U) {
      {
      __cil_tmp46 = (unsigned long )entry;
      __cil_tmp47 = __cil_tmp46 + 8;
      __cil_tmp48 = *((u8 *)__cil_tmp47);
      __cil_tmp49 = (unsigned int )__cil_tmp48;
      if (__cil_tmp49 == 0U) {
        __len___0 = 8UL;
        if (__len___0 > 63UL) {
          {
          __cil_tmp50 = (void *)(& paddrv5);
          __cil_tmp51 = 8 + 8;
          __cil_tmp52 = (unsigned long )entry;
          __cil_tmp53 = __cil_tmp52 + __cil_tmp51;
          __cil_tmp54 = (u64 *)__cil_tmp53;
          __cil_tmp55 = (void const *)__cil_tmp54;
          __ret___0 = memcpy(__cil_tmp50, __cil_tmp55, __len___0);
          }
        } else {
          {
          __cil_tmp56 = (void *)(& paddrv5);
          __cil_tmp57 = 8 + 8;
          __cil_tmp58 = (unsigned long )entry;
          __cil_tmp59 = __cil_tmp58 + __cil_tmp57;
          __cil_tmp60 = (u64 *)__cil_tmp59;
          __cil_tmp61 = (void const *)__cil_tmp60;
          __ret___0 = memcpy(__cil_tmp56, __cil_tmp61, __len___0);
          }
        }
      } else {
      }
      }
    } else {
    }
    }
  } else {
  }
  }
  entry = entry + 1;
  i = i + 1;
  ldv_23507: ;
  {
  __cil_tmp62 = & einj_tab;
  __cil_tmp63 = *__cil_tmp62;
  __cil_tmp64 = (unsigned long )__cil_tmp63;
  __cil_tmp65 = __cil_tmp64 + 44;
  __cil_tmp66 = *((u32 *)__cil_tmp65);
  __cil_tmp67 = (u32 )i;
  if (__cil_tmp67 < __cil_tmp66) {
    goto ldv_23506;
  } else {
    goto ldv_23508;
  }
  }
  ldv_23508: ;
  {
  __cil_tmp68 = & paddrv5;
  __cil_tmp69 = *__cil_tmp68;
  if (__cil_tmp69 != 0ULL) {
    {
    __cil_tmp70 = & paddrv5;
    __cil_tmp71 = *__cil_tmp70;
    tmp = acpi_os_map_memory(__cil_tmp71, 40ULL);
    v5param = (struct set_error_type_with_address *)tmp;
    }
    {
    __cil_tmp72 = (struct set_error_type_with_address *)0;
    __cil_tmp73 = (unsigned long )__cil_tmp72;
    __cil_tmp74 = (unsigned long )v5param;
    if (__cil_tmp74 != __cil_tmp73) {
      {
      acpi5 = 1;
      __cil_tmp75 = & paddrv5;
      __cil_tmp76 = *__cil_tmp75;
      check_vendor_extension(__cil_tmp76, v5param);
      }
      return ((void *)v5param);
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp77 = & param_extension;
  __cil_tmp78 = *__cil_tmp77;
  if ((int )__cil_tmp78) {
    {
    __cil_tmp79 = & paddrv4;
    __cil_tmp80 = *__cil_tmp79;
    if (__cil_tmp80 != 0ULL) {
      {
      __cil_tmp81 = & paddrv4;
      __cil_tmp82 = *__cil_tmp81;
      tmp___0 = acpi_os_map_memory(__cil_tmp82, 40ULL);
      v4param = (struct einj_parameter *)tmp___0;
      }
      {
      __cil_tmp83 = (struct einj_parameter *)0;
      __cil_tmp84 = (unsigned long )__cil_tmp83;
      __cil_tmp85 = (unsigned long )v4param;
      if (__cil_tmp85 == __cil_tmp84) {
        return ((void *)0);
      } else {
      }
      }
      {
      __cil_tmp86 = (unsigned long )v4param;
      __cil_tmp87 = __cil_tmp86 + 8;
      __cil_tmp88 = *((u64 *)__cil_tmp87);
      if (__cil_tmp88 != 0ULL) {
        {
        __cil_tmp89 = (void *)v4param;
        acpi_os_unmap_memory(__cil_tmp89, 40ULL);
        }
        return ((void *)0);
      } else {
        {
        __cil_tmp90 = (unsigned long )v4param;
        __cil_tmp91 = __cil_tmp90 + 16;
        __cil_tmp92 = *((u64 *)__cil_tmp91);
        if (__cil_tmp92 != 0ULL) {
          {
          __cil_tmp93 = (void *)v4param;
          acpi_os_unmap_memory(__cil_tmp93, 40ULL);
          }
          return ((void *)0);
        } else {
        }
        }
      }
      }
      return ((void *)v4param);
    } else {
    }
    }
  } else {
  }
  }
  return ((void *)0);
}
}
static int einj_check_trigger_header(struct acpi_einj_trigger *trigger_tab )
{ u32 __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  u32 __cil_tmp5 ;
  u32 __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  u32 __cil_tmp9 ;
  u32 __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  u32 __cil_tmp13 ;
  u32 __cil_tmp14 ;
  unsigned int __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  u32 __cil_tmp18 ;
  {
  {
  __cil_tmp2 = *((u32 *)trigger_tab);
  if (__cil_tmp2 != 16U) {
    return (-22);
  } else {
  }
  }
  {
  __cil_tmp3 = (unsigned long )trigger_tab;
  __cil_tmp4 = __cil_tmp3 + 8;
  __cil_tmp5 = *((u32 *)__cil_tmp4);
  if (__cil_tmp5 > 4096U) {
    return (-22);
  } else {
    {
    __cil_tmp6 = *((u32 *)trigger_tab);
    __cil_tmp7 = (unsigned long )trigger_tab;
    __cil_tmp8 = __cil_tmp7 + 8;
    __cil_tmp9 = *((u32 *)__cil_tmp8);
    if (__cil_tmp9 < __cil_tmp6) {
      return (-22);
    } else {
    }
    }
  }
  }
  {
  __cil_tmp10 = *((u32 *)trigger_tab);
  __cil_tmp11 = (unsigned long )trigger_tab;
  __cil_tmp12 = __cil_tmp11 + 8;
  __cil_tmp13 = *((u32 *)__cil_tmp12);
  __cil_tmp14 = __cil_tmp13 - __cil_tmp10;
  __cil_tmp15 = __cil_tmp14 / 32U;
  __cil_tmp16 = (unsigned long )trigger_tab;
  __cil_tmp17 = __cil_tmp16 + 12;
  __cil_tmp18 = *((u32 *)__cil_tmp17);
  if (__cil_tmp18 != __cil_tmp15) {
    return (-22);
  } else {
  }
  }
  return (0);
}
}
static struct acpi_generic_address *einj_get_trigger_parameter_region(struct acpi_einj_trigger *trigger_tab ,
                                                                      u64 param1 ,
                                                                      u64 param2 )
{ int i ;
  struct acpi_whea_header *entry ;
  struct acpi_whea_header *__cil_tmp6 ;
  u8 __cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  u8 __cil_tmp11 ;
  unsigned int __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  u8 __cil_tmp15 ;
  unsigned int __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  u64 __cil_tmp20 ;
  unsigned long long __cil_tmp21 ;
  unsigned long long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  u32 __cil_tmp27 ;
  u32 __cil_tmp28 ;
  {
  __cil_tmp6 = (struct acpi_whea_header *)trigger_tab;
  entry = __cil_tmp6 + 16U;
  i = 0;
  goto ldv_23522;
  ldv_23521: ;
  {
  __cil_tmp7 = *((u8 *)entry);
  __cil_tmp8 = (unsigned int )__cil_tmp7;
  if (__cil_tmp8 == 255U) {
    {
    __cil_tmp9 = (unsigned long )entry;
    __cil_tmp10 = __cil_tmp9 + 1;
    __cil_tmp11 = *((u8 *)__cil_tmp10);
    __cil_tmp12 = (unsigned int )__cil_tmp11;
    if (__cil_tmp12 == 3U) {
      {
      __cil_tmp13 = (unsigned long )entry;
      __cil_tmp14 = __cil_tmp13 + 8;
      __cil_tmp15 = *((u8 *)__cil_tmp14);
      __cil_tmp16 = (unsigned int )__cil_tmp15;
      if (__cil_tmp16 == 0U) {
        {
        __cil_tmp17 = 8 + 8;
        __cil_tmp18 = (unsigned long )entry;
        __cil_tmp19 = __cil_tmp18 + __cil_tmp17;
        __cil_tmp20 = *((u64 *)__cil_tmp19);
        __cil_tmp21 = __cil_tmp20 ^ param1;
        __cil_tmp22 = __cil_tmp21 & param2;
        if (__cil_tmp22 == 0ULL) {
          {
          __cil_tmp23 = (unsigned long )entry;
          __cil_tmp24 = __cil_tmp23 + 8;
          return ((struct acpi_generic_address *)__cil_tmp24);
          }
        } else {
        }
        }
      } else {
      }
      }
    } else {
    }
    }
  } else {
  }
  }
  entry = entry + 1;
  i = i + 1;
  ldv_23522: ;
  {
  __cil_tmp25 = (unsigned long )trigger_tab;
  __cil_tmp26 = __cil_tmp25 + 12;
  __cil_tmp27 = *((u32 *)__cil_tmp26);
  __cil_tmp28 = (u32 )i;
  if (__cil_tmp28 < __cil_tmp27) {
    goto ldv_23521;
  } else {
    goto ldv_23523;
  }
  }
  ldv_23523: ;
  return ((struct acpi_generic_address *)0);
}
}
static int __einj_error_trigger(u64 trigger_paddr , u32 type , u64 param1 , u64 param2 )
{ struct acpi_einj_trigger *trigger_tab ;
  struct apei_exec_context trigger_ctx ;
  struct apei_resources trigger_resources ;
  struct acpi_whea_header *trigger_entry ;
  struct resource *r ;
  u32 table_size ;
  int rc ;
  struct acpi_generic_address *trigger_param_region ;
  void *tmp ;
  void *tmp___0 ;
  struct apei_resources addr_resources ;
  struct resource *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long long __cil_tmp19 ;
  struct acpi_einj_trigger *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  u32 __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  resource_size_t __cil_tmp31 ;
  struct resource *__cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long long __cil_tmp35 ;
  u64 __cil_tmp36 ;
  u64 __cil_tmp37 ;
  u64 __cil_tmp38 ;
  void volatile *__cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  struct acpi_einj_trigger *__cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  struct acpi_whea_header *__cil_tmp44 ;
  struct apei_exec_ins_type *__cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  u32 __cil_tmp48 ;
  bool *__cil_tmp49 ;
  bool __cil_tmp50 ;
  unsigned int __cil_tmp51 ;
  struct acpi_generic_address *__cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  u64 __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  u8 __cil_tmp61 ;
  unsigned int __cil_tmp62 ;
  unsigned int __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  bool __cil_tmp65 ;
  u8 __cil_tmp66 ;
  unsigned long long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  resource_size_t __cil_tmp70 ;
  struct acpi_einj_trigger *__cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  void volatile *__cil_tmp74 ;
  {
  {
  trigger_tab = (struct acpi_einj_trigger *)0;
  rc = -5;
  trigger_param_region = (struct acpi_generic_address *)0;
  r = __request_region(& iomem_resource, trigger_paddr, 16ULL, "APEI EINJ Trigger Table",
                       0);
  }
  {
  __cil_tmp16 = (struct resource *)0;
  __cil_tmp17 = (unsigned long )__cil_tmp16;
  __cil_tmp18 = (unsigned long )r;
  if (__cil_tmp18 == __cil_tmp17) {
    {
    __cil_tmp19 = trigger_paddr + 15ULL;
    printk("<3>EINJ: Can not request [mem %#010llx-%#010llx] for Trigger table\n",
           trigger_paddr, __cil_tmp19);
    }
    goto out;
  } else {
  }
  }
  {
  tmp = ioremap_cache(trigger_paddr, 16UL);
  trigger_tab = (struct acpi_einj_trigger *)tmp;
  }
  {
  __cil_tmp20 = (struct acpi_einj_trigger *)0;
  __cil_tmp21 = (unsigned long )__cil_tmp20;
  __cil_tmp22 = (unsigned long )trigger_tab;
  if (__cil_tmp22 == __cil_tmp21) {
    {
    printk("<3>EINJ: Failed to map trigger table!\n");
    }
    goto out_rel_header;
  } else {
  }
  }
  {
  rc = einj_check_trigger_header(trigger_tab);
  }
  if (rc != 0) {
    {
    printk("<4>[Firmware Bug]: EINJ: The trigger error action table is invalid\n");
    }
    goto out_rel_header;
  } else {
  }
  {
  __cil_tmp23 = (unsigned long )trigger_tab;
  __cil_tmp24 = __cil_tmp23 + 12;
  __cil_tmp25 = *((u32 *)__cil_tmp24);
  if (__cil_tmp25 == 0U) {
    goto out_rel_header;
  } else {
  }
  }
  {
  rc = -5;
  __cil_tmp26 = (unsigned long )trigger_tab;
  __cil_tmp27 = __cil_tmp26 + 8;
  table_size = *((u32 *)__cil_tmp27);
  __cil_tmp28 = trigger_paddr + 16ULL;
  __cil_tmp29 = (unsigned long )table_size;
  __cil_tmp30 = __cil_tmp29 - 16UL;
  __cil_tmp31 = (resource_size_t )__cil_tmp30;
  r = __request_region(& iomem_resource, __cil_tmp28, __cil_tmp31, "APEI EINJ Trigger Table",
                       0);
  }
  {
  __cil_tmp32 = (struct resource *)0;
  __cil_tmp33 = (unsigned long )__cil_tmp32;
  __cil_tmp34 = (unsigned long )r;
  if (__cil_tmp34 == __cil_tmp33) {
    {
    __cil_tmp35 = trigger_paddr + 16ULL;
    __cil_tmp36 = (u64 )table_size;
    __cil_tmp37 = __cil_tmp36 + trigger_paddr;
    __cil_tmp38 = __cil_tmp37 - 1ULL;
    printk("<3>EINJ: Can not request [mem %#010llx-%#010llx] for Trigger Table Entry\n",
           __cil_tmp35, __cil_tmp38);
    }
    goto out_rel_header;
  } else {
  }
  }
  {
  __cil_tmp39 = (void volatile *)trigger_tab;
  iounmap(__cil_tmp39);
  __cil_tmp40 = (unsigned long )table_size;
  tmp___0 = ioremap_cache(trigger_paddr, __cil_tmp40);
  trigger_tab = (struct acpi_einj_trigger *)tmp___0;
  }
  {
  __cil_tmp41 = (struct acpi_einj_trigger *)0;
  __cil_tmp42 = (unsigned long )__cil_tmp41;
  __cil_tmp43 = (unsigned long )trigger_tab;
  if (__cil_tmp43 == __cil_tmp42) {
    {
    printk("<3>EINJ: Failed to map trigger table!\n");
    }
    goto out_rel_entry;
  } else {
  }
  }
  {
  __cil_tmp44 = (struct acpi_whea_header *)trigger_tab;
  trigger_entry = __cil_tmp44 + 16U;
  apei_resources_init(& trigger_resources);
  __cil_tmp45 = (struct apei_exec_ins_type *)(& einj_ins_type);
  __cil_tmp46 = (unsigned long )trigger_tab;
  __cil_tmp47 = __cil_tmp46 + 12;
  __cil_tmp48 = *((u32 *)__cil_tmp47);
  apei_exec_ctx_init(& trigger_ctx, __cil_tmp45, 5U, trigger_entry, __cil_tmp48);
  rc = apei_exec_collect_resources(& trigger_ctx, & trigger_resources);
  }
  if (rc != 0) {
    goto out_fini;
  } else {
  }
  {
  rc = apei_resources_sub(& trigger_resources, & einj_resources);
  }
  if (rc != 0) {
    goto out_fini;
  } else {
  }
  {
  __cil_tmp49 = & param_extension;
  __cil_tmp50 = *__cil_tmp49;
  if ((int )__cil_tmp50) {
    {
    __cil_tmp51 = type & 56U;
    if (__cil_tmp51 != 0U) {
      if (param2 != 0ULL) {
        {
        apei_resources_init(& addr_resources);
        trigger_param_region = einj_get_trigger_parameter_region(trigger_tab, param1,
                                                                 param2);
        }
        {
        __cil_tmp52 = (struct acpi_generic_address *)0;
        __cil_tmp53 = (unsigned long )__cil_tmp52;
        __cil_tmp54 = (unsigned long )trigger_param_region;
        if (__cil_tmp54 != __cil_tmp53) {
          {
          __cil_tmp55 = (unsigned long )trigger_param_region;
          __cil_tmp56 = __cil_tmp55 + 8;
          __cil_tmp57 = *((u64 *)__cil_tmp56);
          __cil_tmp58 = (unsigned long )__cil_tmp57;
          __cil_tmp59 = (unsigned long )trigger_param_region;
          __cil_tmp60 = __cil_tmp59 + 1;
          __cil_tmp61 = *((u8 *)__cil_tmp60);
          __cil_tmp62 = (unsigned int )__cil_tmp61;
          __cil_tmp63 = __cil_tmp62 / 8U;
          __cil_tmp64 = (unsigned long )__cil_tmp63;
          __cil_tmp65 = (bool )1;
          rc = apei_resources_add(& addr_resources, __cil_tmp58, __cil_tmp64, __cil_tmp65);
          }
          if (rc != 0) {
            goto out_fini;
          } else {
          }
          {
          rc = apei_resources_sub(& trigger_resources, & addr_resources);
          }
        } else {
        }
        }
        {
        apei_resources_fini(& addr_resources);
        }
        if (rc != 0) {
          goto out_fini;
        } else {
        }
      } else {
      }
    } else {
    }
    }
  } else {
  }
  }
  {
  rc = apei_resources_request(& trigger_resources, "APEI EINJ Trigger");
  }
  if (rc != 0) {
    goto out_fini;
  } else {
  }
  {
  rc = apei_exec_pre_map_gars(& trigger_ctx);
  }
  if (rc != 0) {
    goto out_release;
  } else {
  }
  {
  __cil_tmp66 = (u8 )255;
  rc = apei_exec_run(& trigger_ctx, __cil_tmp66);
  apei_exec_post_unmap_gars(& trigger_ctx);
  }
  out_release:
  {
  apei_resources_release(& trigger_resources);
  }
  out_fini:
  {
  apei_resources_fini(& trigger_resources);
  }
  out_rel_entry:
  {
  __cil_tmp67 = trigger_paddr + 16ULL;
  __cil_tmp68 = (unsigned long )table_size;
  __cil_tmp69 = __cil_tmp68 - 16UL;
  __cil_tmp70 = (resource_size_t )__cil_tmp69;
  __release_region(& iomem_resource, __cil_tmp67, __cil_tmp70);
  }
  out_rel_header:
  {
  __release_region(& iomem_resource, trigger_paddr, 16ULL);
  }
  out: ;
  {
  __cil_tmp71 = (struct acpi_einj_trigger *)0;
  __cil_tmp72 = (unsigned long )__cil_tmp71;
  __cil_tmp73 = (unsigned long )trigger_tab;
  if (__cil_tmp73 != __cil_tmp72) {
    {
    __cil_tmp74 = (void volatile *)trigger_tab;
    iounmap(__cil_tmp74);
    }
  } else {
  }
  }
  return (rc);
}
}
static int __einj_error_inject(u32 type , u64 param1 , u64 param2 )
{ struct apei_exec_context ctx ;
  u64 val ;
  u64 trigger_paddr ;
  u64 timeout ;
  int rc ;
  struct set_error_type_with_address *v5param ;
  struct einj_parameter *v4param ;
  int tmp ;
  u64 *__cil_tmp12 ;
  u8 __cil_tmp13 ;
  u64 __cil_tmp14 ;
  int __cil_tmp15 ;
  u32 *__cil_tmp16 ;
  u32 __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  u32 *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  u8 __cil_tmp43 ;
  void *__cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  u8 __cil_tmp51 ;
  u8 __cil_tmp52 ;
  unsigned long long __cil_tmp53 ;
  u8 __cil_tmp54 ;
  u8 __cil_tmp55 ;
  u32 *__cil_tmp56 ;
  u32 __cil_tmp57 ;
  u8 __cil_tmp58 ;
  {
  {
  __cil_tmp12 = & timeout;
  *__cil_tmp12 = 1000000ULL;
  einj_exec_ctx_init(& ctx);
  __cil_tmp13 = (u8 )0;
  rc = apei_exec_run_optional(& ctx, __cil_tmp13);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  __cil_tmp14 = (u64 )type;
  apei_exec_ctx_set_input(& ctx, __cil_tmp14);
  }
  if (acpi5 != 0) {
    v5param = (struct set_error_type_with_address *)einj_param;
    *((u32 *)v5param) = type;
    {
    __cil_tmp15 = (int )type;
    if (__cil_tmp15 < 0) {
      {
      __cil_tmp16 = & vendor_flags;
      __cil_tmp17 = *__cil_tmp16;
      if ((int )__cil_tmp17 == 1) {
        goto case_1;
      } else
      if ((int )__cil_tmp17 == 2) {
        goto case_2;
      } else
      if ((int )__cil_tmp17 == 4) {
        goto case_4;
      } else
      if (0) {
        case_1:
        __cil_tmp18 = (unsigned long )v5param;
        __cil_tmp19 = __cil_tmp18 + 12;
        *((u32 *)__cil_tmp19) = (u32 )param1;
        goto ldv_23558;
        case_2:
        __cil_tmp20 = (unsigned long )v5param;
        __cil_tmp21 = __cil_tmp20 + 16;
        *((u64 *)__cil_tmp21) = param1;
        __cil_tmp22 = (unsigned long )v5param;
        __cil_tmp23 = __cil_tmp22 + 24;
        *((u64 *)__cil_tmp23) = param2;
        goto ldv_23558;
        case_4:
        __cil_tmp24 = (unsigned long )v5param;
        __cil_tmp25 = __cil_tmp24 + 32;
        *((u32 *)__cil_tmp25) = (u32 )param1;
        goto ldv_23558;
      } else {
        switch_break: ;
      }
      }
      ldv_23558:
      __cil_tmp26 = (unsigned long )v5param;
      __cil_tmp27 = __cil_tmp26 + 8;
      __cil_tmp28 = & vendor_flags;
      *((u32 *)__cil_tmp27) = *__cil_tmp28;
    } else {
      if ((int )type == 1) {
        goto case_1___0;
      } else
      if ((int )type == 2) {
        goto case_2___0;
      } else
      if ((int )type == 4) {
        goto case_4___0;
      } else
      if ((int )type == 8) {
        goto case_8;
      } else
      if ((int )type == 16) {
        goto case_16;
      } else
      if ((int )type == 32) {
        goto case_32;
      } else
      if ((int )type == 64) {
        goto case_64;
      } else
      if ((int )type == 128) {
        goto case_128;
      } else
      if ((int )type == 256) {
        goto case_256;
      } else
      if (0) {
        case_1___0: ;
        case_2___0: ;
        case_4___0:
        __cil_tmp29 = (unsigned long )v5param;
        __cil_tmp30 = __cil_tmp29 + 12;
        *((u32 *)__cil_tmp30) = (u32 )param1;
        __cil_tmp31 = (unsigned long )v5param;
        __cil_tmp32 = __cil_tmp31 + 8;
        *((u32 *)__cil_tmp32) = 1U;
        goto ldv_23564;
        case_8: ;
        case_16: ;
        case_32:
        __cil_tmp33 = (unsigned long )v5param;
        __cil_tmp34 = __cil_tmp33 + 16;
        *((u64 *)__cil_tmp34) = param1;
        __cil_tmp35 = (unsigned long )v5param;
        __cil_tmp36 = __cil_tmp35 + 24;
        *((u64 *)__cil_tmp36) = param2;
        __cil_tmp37 = (unsigned long )v5param;
        __cil_tmp38 = __cil_tmp37 + 8;
        *((u32 *)__cil_tmp38) = 2U;
        goto ldv_23564;
        case_64: ;
        case_128: ;
        case_256:
        __cil_tmp39 = (unsigned long )v5param;
        __cil_tmp40 = __cil_tmp39 + 32;
        *((u32 *)__cil_tmp40) = (u32 )param1;
        __cil_tmp41 = (unsigned long )v5param;
        __cil_tmp42 = __cil_tmp41 + 8;
        *((u32 *)__cil_tmp42) = 4U;
        goto ldv_23564;
      } else {
        switch_break___0: ;
      }
      ldv_23564: ;
    }
    }
  } else {
    {
    __cil_tmp43 = (u8 )2;
    rc = apei_exec_run(& ctx, __cil_tmp43);
    }
    if (rc != 0) {
      return (rc);
    } else {
    }
    {
    __cil_tmp44 = (void *)0;
    __cil_tmp45 = (unsigned long )__cil_tmp44;
    __cil_tmp46 = (unsigned long )einj_param;
    if (__cil_tmp46 != __cil_tmp45) {
      v4param = (struct einj_parameter *)einj_param;
      __cil_tmp47 = (unsigned long )v4param;
      __cil_tmp48 = __cil_tmp47 + 24;
      *((u64 *)__cil_tmp48) = param1;
      __cil_tmp49 = (unsigned long )v4param;
      __cil_tmp50 = __cil_tmp49 + 32;
      *((u64 *)__cil_tmp50) = param2;
    } else {
    }
    }
  }
  {
  __cil_tmp51 = (u8 )5;
  rc = apei_exec_run(& ctx, __cil_tmp51);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  ldv_23573:
  {
  __cil_tmp52 = (u8 )6;
  rc = apei_exec_run(& ctx, __cil_tmp52);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  val = apei_exec_ctx_get_output(& ctx);
  }
  {
  __cil_tmp53 = val & 1ULL;
  if (__cil_tmp53 == 0ULL) {
    goto ldv_23572;
  } else {
  }
  }
  {
  tmp = einj_timedout(& timeout);
  }
  if (tmp != 0) {
    return (-5);
  } else {
  }
  goto ldv_23573;
  ldv_23572:
  {
  __cil_tmp54 = (u8 )7;
  rc = apei_exec_run(& ctx, __cil_tmp54);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  val = apei_exec_ctx_get_output(& ctx);
  }
  if (val != 0ULL) {
    return (-16);
  } else {
  }
  {
  __cil_tmp55 = (u8 )1;
  rc = apei_exec_run(& ctx, __cil_tmp55);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  trigger_paddr = apei_exec_ctx_get_output(& ctx);
  }
  {
  __cil_tmp56 = & notrigger;
  __cil_tmp57 = *__cil_tmp56;
  if (__cil_tmp57 == 0U) {
    {
    rc = __einj_error_trigger(trigger_paddr, type, param1, param2);
    }
    if (rc != 0) {
      return (rc);
    } else {
    }
  } else {
  }
  }
  {
  __cil_tmp58 = (u8 )4;
  rc = apei_exec_run_optional(& ctx, __cil_tmp58);
  }
  return (rc);
}
}
static int einj_error_inject(u32 type , u64 param1 , u64 param2 )
{ int rc ;
  {
  {
  mutex_lock_nested(& einj_mutex, 0U);
  rc = __einj_error_inject(type, param1, param2);
  mutex_unlock(& einj_mutex);
  }
  return (rc);
}
}
static u32 error_type ;
static u64 error_param1 ;
static u64 error_param2 ;
static struct dentry *einj_debug_dir ;
static int available_error_type_show(struct seq_file *m , void *v )
{ int rc ;
  u32 available_error_type ;
  u32 *__cil_tmp5 ;
  u32 *__cil_tmp6 ;
  u32 __cil_tmp7 ;
  int __cil_tmp8 ;
  u32 *__cil_tmp9 ;
  u32 __cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  u32 *__cil_tmp12 ;
  u32 __cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  u32 *__cil_tmp15 ;
  u32 __cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  u32 *__cil_tmp18 ;
  u32 __cil_tmp19 ;
  unsigned int __cil_tmp20 ;
  u32 *__cil_tmp21 ;
  u32 __cil_tmp22 ;
  unsigned int __cil_tmp23 ;
  u32 *__cil_tmp24 ;
  u32 __cil_tmp25 ;
  unsigned int __cil_tmp26 ;
  u32 *__cil_tmp27 ;
  u32 __cil_tmp28 ;
  unsigned int __cil_tmp29 ;
  u32 *__cil_tmp30 ;
  u32 __cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  u32 *__cil_tmp33 ;
  u32 __cil_tmp34 ;
  unsigned int __cil_tmp35 ;
  u32 *__cil_tmp36 ;
  u32 __cil_tmp37 ;
  unsigned int __cil_tmp38 ;
  u32 *__cil_tmp39 ;
  u32 __cil_tmp40 ;
  unsigned int __cil_tmp41 ;
  {
  {
  __cil_tmp5 = & available_error_type;
  *__cil_tmp5 = 0U;
  rc = einj_get_available_error_type(& available_error_type);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  __cil_tmp6 = & available_error_type;
  __cil_tmp7 = *__cil_tmp6;
  __cil_tmp8 = (int )__cil_tmp7;
  if (__cil_tmp8 & 1) {
    {
    seq_printf(m, "0x00000001\tProcessor Correctable\n");
    }
  } else {
  }
  }
  {
  __cil_tmp9 = & available_error_type;
  __cil_tmp10 = *__cil_tmp9;
  __cil_tmp11 = __cil_tmp10 & 2U;
  if (__cil_tmp11 != 0U) {
    {
    seq_printf(m, "0x00000002\tProcessor Uncorrectable non-fatal\n");
    }
  } else {
  }
  }
  {
  __cil_tmp12 = & available_error_type;
  __cil_tmp13 = *__cil_tmp12;
  __cil_tmp14 = __cil_tmp13 & 4U;
  if (__cil_tmp14 != 0U) {
    {
    seq_printf(m, "0x00000004\tProcessor Uncorrectable fatal\n");
    }
  } else {
  }
  }
  {
  __cil_tmp15 = & available_error_type;
  __cil_tmp16 = *__cil_tmp15;
  __cil_tmp17 = __cil_tmp16 & 8U;
  if (__cil_tmp17 != 0U) {
    {
    seq_printf(m, "0x00000008\tMemory Correctable\n");
    }
  } else {
  }
  }
  {
  __cil_tmp18 = & available_error_type;
  __cil_tmp19 = *__cil_tmp18;
  __cil_tmp20 = __cil_tmp19 & 16U;
  if (__cil_tmp20 != 0U) {
    {
    seq_printf(m, "0x00000010\tMemory Uncorrectable non-fatal\n");
    }
  } else {
  }
  }
  {
  __cil_tmp21 = & available_error_type;
  __cil_tmp22 = *__cil_tmp21;
  __cil_tmp23 = __cil_tmp22 & 32U;
  if (__cil_tmp23 != 0U) {
    {
    seq_printf(m, "0x00000020\tMemory Uncorrectable fatal\n");
    }
  } else {
  }
  }
  {
  __cil_tmp24 = & available_error_type;
  __cil_tmp25 = *__cil_tmp24;
  __cil_tmp26 = __cil_tmp25 & 64U;
  if (__cil_tmp26 != 0U) {
    {
    seq_printf(m, "0x00000040\tPCI Express Correctable\n");
    }
  } else {
  }
  }
  {
  __cil_tmp27 = & available_error_type;
  __cil_tmp28 = *__cil_tmp27;
  __cil_tmp29 = __cil_tmp28 & 128U;
  if (__cil_tmp29 != 0U) {
    {
    seq_printf(m, "0x00000080\tPCI Express Uncorrectable non-fatal\n");
    }
  } else {
  }
  }
  {
  __cil_tmp30 = & available_error_type;
  __cil_tmp31 = *__cil_tmp30;
  __cil_tmp32 = __cil_tmp31 & 256U;
  if (__cil_tmp32 != 0U) {
    {
    seq_printf(m, "0x00000100\tPCI Express Uncorrectable fatal\n");
    }
  } else {
  }
  }
  {
  __cil_tmp33 = & available_error_type;
  __cil_tmp34 = *__cil_tmp33;
  __cil_tmp35 = __cil_tmp34 & 512U;
  if (__cil_tmp35 != 0U) {
    {
    seq_printf(m, "0x00000200\tPlatform Correctable\n");
    }
  } else {
  }
  }
  {
  __cil_tmp36 = & available_error_type;
  __cil_tmp37 = *__cil_tmp36;
  __cil_tmp38 = __cil_tmp37 & 1024U;
  if (__cil_tmp38 != 0U) {
    {
    seq_printf(m, "0x00000400\tPlatform Uncorrectable non-fatal\n");
    }
  } else {
  }
  }
  {
  __cil_tmp39 = & available_error_type;
  __cil_tmp40 = *__cil_tmp39;
  __cil_tmp41 = __cil_tmp40 & 2048U;
  if (__cil_tmp41 != 0U) {
    {
    seq_printf(m, "0x00000800\tPlatform Uncorrectable fatal\n");
    }
  } else {
  }
  }
  return (0);
}
}
static int available_error_type_open(struct inode *inode , struct file *file )
{ int tmp ;
  void *__cil_tmp4 ;
  {
  {
  __cil_tmp4 = (void *)0;
  tmp = single_open(file, & available_error_type_show, __cil_tmp4);
  }
  return (tmp);
}
}
static struct file_operations const available_error_type_fops =
     {(struct module *)0, & seq_lseek, & seq_read, (ssize_t (*)(struct file * , char const * ,
                                                              size_t , loff_t * ))0,
    (ssize_t (*)(struct kiocb * , struct iovec const * , unsigned long , loff_t ))0,
    (ssize_t (*)(struct kiocb * , struct iovec const * , unsigned long , loff_t ))0,
    (int (*)(struct file * , void * , int (*)(void * , char const * , int , loff_t ,
                                              u64 , unsigned int ) ))0, (unsigned int (*)(struct file * ,
                                                                                            struct poll_table_struct * ))0,
    (long (*)(struct file * , unsigned int , unsigned long ))0, (long (*)(struct file * ,
                                                                            unsigned int ,
                                                                            unsigned long ))0,
    (int (*)(struct file * , struct vm_area_struct * ))0, & available_error_type_open,
    (int (*)(struct file * , fl_owner_t ))0, & single_release, (int (*)(struct file * ,
                                                                         loff_t ,
                                                                         loff_t ,
                                                                         int ))0,
    (int (*)(struct kiocb * , int ))0, (int (*)(int , struct file * , int ))0,
    (int (*)(struct file * , int , struct file_lock * ))0, (ssize_t (*)(struct file * ,
                                                                         struct page * ,
                                                                         int , size_t ,
                                                                         loff_t * ,
                                                                         int ))0,
    (unsigned long (*)(struct file * , unsigned long , unsigned long , unsigned long ,
                       unsigned long ))0, (int (*)(int ))0, (int (*)(struct file * ,
                                                                       int , struct file_lock * ))0,
    (ssize_t (*)(struct pipe_inode_info * , struct file * , loff_t * , size_t , unsigned int ))0,
    (ssize_t (*)(struct file * , loff_t * , struct pipe_inode_info * , size_t , unsigned int ))0,
    (int (*)(struct file * , long , struct file_lock ** ))0, (long (*)(struct file * ,
                                                                        int , loff_t ,
                                                                        loff_t ))0};
static int error_type_get(void *data , u64 *val )
{
  {
  *val = (u64 )error_type;
  return (0);
}
}
static int error_type_set(void *data , u64 val )
{ int rc ;
  u32 available_error_type ;
  u32 tval ;
  u32 vendor ;
  u32 *__cil_tmp7 ;
  u32 __cil_tmp8 ;
  u32 __cil_tmp9 ;
  u32 __cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  u32 *__cil_tmp12 ;
  u32 __cil_tmp13 ;
  u64 __cil_tmp14 ;
  unsigned long long __cil_tmp15 ;
  {
  __cil_tmp7 = & available_error_type;
  *__cil_tmp7 = 0U;
  __cil_tmp8 = (u32 )val;
  vendor = __cil_tmp8 & 2147483648U;
  __cil_tmp9 = (u32 )val;
  tval = __cil_tmp9 & 2147483647U;
  {
  __cil_tmp10 = tval - 1U;
  __cil_tmp11 = __cil_tmp10 & tval;
  if (__cil_tmp11 != 0U) {
    return (-22);
  } else {
  }
  }
  if (vendor == 0U) {
    {
    rc = einj_get_available_error_type(& available_error_type);
    }
    if (rc != 0) {
      return (rc);
    } else {
    }
    {
    __cil_tmp12 = & available_error_type;
    __cil_tmp13 = *__cil_tmp12;
    __cil_tmp14 = (u64 )__cil_tmp13;
    __cil_tmp15 = __cil_tmp14 & val;
    if (__cil_tmp15 == 0ULL) {
      return (-22);
    } else {
    }
    }
  } else {
  }
  error_type = (u32 )val;
  return (0);
}
}
static int error_type_fops_open(struct inode *inode , struct file *file )
{ int tmp ;
  {
  {
  __simple_attr_check_format("0x%llx\n", 0ULL);
  tmp = simple_attr_open(inode, file, & error_type_get, & error_type_set, "0x%llx\n");
  }
  return (tmp);
}
}
static struct file_operations const error_type_fops =
     {& __this_module, & generic_file_llseek, & simple_attr_read, & simple_attr_write,
    (ssize_t (*)(struct kiocb * , struct iovec const * , unsigned long , loff_t ))0,
    (ssize_t (*)(struct kiocb * , struct iovec const * , unsigned long , loff_t ))0,
    (int (*)(struct file * , void * , int (*)(void * , char const * , int , loff_t ,
                                              u64 , unsigned int ) ))0, (unsigned int (*)(struct file * ,
                                                                                            struct poll_table_struct * ))0,
    (long (*)(struct file * , unsigned int , unsigned long ))0, (long (*)(struct file * ,
                                                                            unsigned int ,
                                                                            unsigned long ))0,
    (int (*)(struct file * , struct vm_area_struct * ))0, & error_type_fops_open,
    (int (*)(struct file * , fl_owner_t ))0, & simple_attr_release, (int (*)(struct file * ,
                                                                              loff_t ,
                                                                              loff_t ,
                                                                              int ))0,
    (int (*)(struct kiocb * , int ))0, (int (*)(int , struct file * , int ))0,
    (int (*)(struct file * , int , struct file_lock * ))0, (ssize_t (*)(struct file * ,
                                                                         struct page * ,
                                                                         int , size_t ,
                                                                         loff_t * ,
                                                                         int ))0,
    (unsigned long (*)(struct file * , unsigned long , unsigned long , unsigned long ,
                       unsigned long ))0, (int (*)(int ))0, (int (*)(struct file * ,
                                                                       int , struct file_lock * ))0,
    (ssize_t (*)(struct pipe_inode_info * , struct file * , loff_t * , size_t , unsigned int ))0,
    (ssize_t (*)(struct file * , loff_t * , struct pipe_inode_info * , size_t , unsigned int ))0,
    (int (*)(struct file * , long , struct file_lock ** ))0, (long (*)(struct file * ,
                                                                        int , loff_t ,
                                                                        loff_t ))0};
static int error_inject_set(void *data , u64 val )
{ int tmp ;
  u64 *__cil_tmp4 ;
  u64 __cil_tmp5 ;
  u64 *__cil_tmp6 ;
  u64 __cil_tmp7 ;
  {
  if (error_type == 0U) {
    return (-22);
  } else {
  }
  {
  __cil_tmp4 = & error_param1;
  __cil_tmp5 = *__cil_tmp4;
  __cil_tmp6 = & error_param2;
  __cil_tmp7 = *__cil_tmp6;
  tmp = einj_error_inject(error_type, __cil_tmp5, __cil_tmp7);
  }
  return (tmp);
}
}
static int error_inject_fops_open(struct inode *inode , struct file *file )
{ int tmp ;
  int (*__cil_tmp4)(void * , u64 * ) ;
  {
  {
  __simple_attr_check_format("%llu\n", 0ULL);
  __cil_tmp4 = (int (*)(void * , u64 * ))0;
  tmp = simple_attr_open(inode, file, __cil_tmp4, & error_inject_set, "%llu\n");
  }
  return (tmp);
}
}
static struct file_operations const error_inject_fops =
     {& __this_module, & generic_file_llseek, & simple_attr_read, & simple_attr_write,
    (ssize_t (*)(struct kiocb * , struct iovec const * , unsigned long , loff_t ))0,
    (ssize_t (*)(struct kiocb * , struct iovec const * , unsigned long , loff_t ))0,
    (int (*)(struct file * , void * , int (*)(void * , char const * , int , loff_t ,
                                              u64 , unsigned int ) ))0, (unsigned int (*)(struct file * ,
                                                                                            struct poll_table_struct * ))0,
    (long (*)(struct file * , unsigned int , unsigned long ))0, (long (*)(struct file * ,
                                                                            unsigned int ,
                                                                            unsigned long ))0,
    (int (*)(struct file * , struct vm_area_struct * ))0, & error_inject_fops_open,
    (int (*)(struct file * , fl_owner_t ))0, & simple_attr_release, (int (*)(struct file * ,
                                                                              loff_t ,
                                                                              loff_t ,
                                                                              int ))0,
    (int (*)(struct kiocb * , int ))0, (int (*)(int , struct file * , int ))0,
    (int (*)(struct file * , int , struct file_lock * ))0, (ssize_t (*)(struct file * ,
                                                                         struct page * ,
                                                                         int , size_t ,
                                                                         loff_t * ,
                                                                         int ))0,
    (unsigned long (*)(struct file * , unsigned long , unsigned long , unsigned long ,
                       unsigned long ))0, (int (*)(int ))0, (int (*)(struct file * ,
                                                                       int , struct file_lock * ))0,
    (ssize_t (*)(struct pipe_inode_info * , struct file * , loff_t * , size_t , unsigned int ))0,
    (ssize_t (*)(struct file * , loff_t * , struct pipe_inode_info * , size_t , unsigned int ))0,
    (int (*)(struct file * , long , struct file_lock ** ))0, (long (*)(struct file * ,
                                                                        int , loff_t ,
                                                                        loff_t ))0};
static int einj_check_table(struct acpi_table_einj *einj_tab___0 )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  u32 __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  u32 __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  u32 __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  u32 __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  u32 __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  {
  {
  __cil_tmp2 = (unsigned long )einj_tab___0;
  __cil_tmp3 = __cil_tmp2 + 36;
  __cil_tmp4 = *((u32 *)__cil_tmp3);
  if (__cil_tmp4 != 12U) {
    {
    __cil_tmp5 = (unsigned long )einj_tab___0;
    __cil_tmp6 = __cil_tmp5 + 36;
    __cil_tmp7 = *((u32 *)__cil_tmp6);
    if (__cil_tmp7 != 48U) {
      return (-22);
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp8 = 0 + 4;
  __cil_tmp9 = (unsigned long )einj_tab___0;
  __cil_tmp10 = __cil_tmp9 + __cil_tmp8;
  __cil_tmp11 = *((u32 *)__cil_tmp10);
  if (__cil_tmp11 <= 47U) {
    return (-22);
  } else {
  }
  }
  {
  __cil_tmp12 = 0 + 4;
  __cil_tmp13 = (unsigned long )einj_tab___0;
  __cil_tmp14 = __cil_tmp13 + __cil_tmp12;
  __cil_tmp15 = *((u32 *)__cil_tmp14);
  __cil_tmp16 = (unsigned long )__cil_tmp15;
  __cil_tmp17 = __cil_tmp16 - 48UL;
  __cil_tmp18 = __cil_tmp17 / 32UL;
  __cil_tmp19 = (unsigned long )einj_tab___0;
  __cil_tmp20 = __cil_tmp19 + 44;
  __cil_tmp21 = *((u32 *)__cil_tmp20);
  __cil_tmp22 = (unsigned long )__cil_tmp21;
  if (__cil_tmp22 != __cil_tmp18) {
    return (-22);
  } else {
  }
  }
  return (0);
}
}
static int einj_init(void)
{ int rc ;
  acpi_status status ;
  struct dentry *fentry ;
  struct apei_exec_context ctx ;
  char const *msg ;
  char const *tmp ;
  struct dentry *tmp___0 ;
  acpi_size size ;
  char *__cil_tmp9 ;
  struct acpi_table_header **__cil_tmp10 ;
  struct acpi_table_einj **__cil_tmp11 ;
  struct acpi_table_einj *__cil_tmp12 ;
  struct dentry *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  umode_t __cil_tmp16 ;
  void *__cil_tmp17 ;
  struct dentry *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  umode_t __cil_tmp21 ;
  void *__cil_tmp22 ;
  struct dentry *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  umode_t __cil_tmp26 ;
  void *__cil_tmp27 ;
  struct dentry *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  bool *__cil_tmp31 ;
  bool __cil_tmp32 ;
  void *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  umode_t __cil_tmp36 ;
  struct dentry *__cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  umode_t __cil_tmp40 ;
  struct dentry *__cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  umode_t __cil_tmp44 ;
  struct dentry *__cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  char __cil_tmp50 ;
  signed char __cil_tmp51 ;
  int __cil_tmp52 ;
  struct debugfs_blob_wrapper *__cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  char const *__cil_tmp55 ;
  umode_t __cil_tmp56 ;
  struct dentry *__cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  umode_t __cil_tmp60 ;
  struct dentry *__cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  void *__cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  {
  if (acpi_disabled != 0) {
    return (-19);
  } else {
  }
  {
  __cil_tmp9 = (char *)"EINJ";
  __cil_tmp10 = (struct acpi_table_header **)(& einj_tab);
  status = acpi_get_table(__cil_tmp9, 0U, __cil_tmp10);
  }
  if (status == 5U) {
    return (-19);
  } else
  if (status != 0U) {
    {
    tmp = acpi_format_exception(status);
    msg = tmp;
    printk("<3>EINJ: Failed to get table, %s\n", msg);
    }
    return (-22);
  } else {
  }
  {
  __cil_tmp11 = & einj_tab;
  __cil_tmp12 = *__cil_tmp11;
  rc = einj_check_table(__cil_tmp12);
  }
  if (rc != 0) {
    {
    printk("<4>[Firmware Bug]: EINJ: EINJ table is invalid\n");
    }
    return (-22);
  } else {
  }
  {
  rc = -12;
  tmp___0 = apei_get_debugfs_dir();
  einj_debug_dir = debugfs_create_dir("einj", tmp___0);
  }
  {
  __cil_tmp13 = (struct dentry *)0;
  __cil_tmp14 = (unsigned long )__cil_tmp13;
  __cil_tmp15 = (unsigned long )einj_debug_dir;
  if (__cil_tmp15 == __cil_tmp14) {
    goto err_cleanup;
  } else {
  }
  }
  {
  __cil_tmp16 = (umode_t )256;
  __cil_tmp17 = (void *)0;
  fentry = debugfs_create_file("available_error_type", __cil_tmp16, einj_debug_dir,
                               __cil_tmp17, & available_error_type_fops);
  }
  {
  __cil_tmp18 = (struct dentry *)0;
  __cil_tmp19 = (unsigned long )__cil_tmp18;
  __cil_tmp20 = (unsigned long )fentry;
  if (__cil_tmp20 == __cil_tmp19) {
    goto err_cleanup;
  } else {
  }
  }
  {
  __cil_tmp21 = (umode_t )384;
  __cil_tmp22 = (void *)0;
  fentry = debugfs_create_file("error_type", __cil_tmp21, einj_debug_dir, __cil_tmp22,
                               & error_type_fops);
  }
  {
  __cil_tmp23 = (struct dentry *)0;
  __cil_tmp24 = (unsigned long )__cil_tmp23;
  __cil_tmp25 = (unsigned long )fentry;
  if (__cil_tmp25 == __cil_tmp24) {
    goto err_cleanup;
  } else {
  }
  }
  {
  __cil_tmp26 = (umode_t )128;
  __cil_tmp27 = (void *)0;
  fentry = debugfs_create_file("error_inject", __cil_tmp26, einj_debug_dir, __cil_tmp27,
                               & error_inject_fops);
  }
  {
  __cil_tmp28 = (struct dentry *)0;
  __cil_tmp29 = (unsigned long )__cil_tmp28;
  __cil_tmp30 = (unsigned long )fentry;
  if (__cil_tmp30 == __cil_tmp29) {
    goto err_cleanup;
  } else {
  }
  }
  {
  apei_resources_init(& einj_resources);
  einj_exec_ctx_init(& ctx);
  rc = apei_exec_collect_resources(& ctx, & einj_resources);
  }
  if (rc != 0) {
    goto err_fini;
  } else {
  }
  {
  rc = apei_resources_request(& einj_resources, "APEI EINJ");
  }
  if (rc != 0) {
    goto err_fini;
  } else {
  }
  {
  rc = apei_exec_pre_map_gars(& ctx);
  }
  if (rc != 0) {
    goto err_release;
  } else {
  }
  {
  einj_param = einj_get_parameter_address();
  }
  {
  __cil_tmp31 = & param_extension;
  __cil_tmp32 = *__cil_tmp31;
  if ((int )__cil_tmp32) {
    goto _L;
  } else
  if (acpi5 != 0) {
    _L:
    {
    __cil_tmp33 = (void *)0;
    __cil_tmp34 = (unsigned long )__cil_tmp33;
    __cil_tmp35 = (unsigned long )einj_param;
    if (__cil_tmp35 != __cil_tmp34) {
      {
      __cil_tmp36 = (umode_t )384;
      fentry = debugfs_create_x64("param1", __cil_tmp36, einj_debug_dir, & error_param1);
      }
      {
      __cil_tmp37 = (struct dentry *)0;
      __cil_tmp38 = (unsigned long )__cil_tmp37;
      __cil_tmp39 = (unsigned long )fentry;
      if (__cil_tmp39 == __cil_tmp38) {
        goto err_unmap;
      } else {
      }
      }
      {
      __cil_tmp40 = (umode_t )384;
      fentry = debugfs_create_x64("param2", __cil_tmp40, einj_debug_dir, & error_param2);
      }
      {
      __cil_tmp41 = (struct dentry *)0;
      __cil_tmp42 = (unsigned long )__cil_tmp41;
      __cil_tmp43 = (unsigned long )fentry;
      if (__cil_tmp43 == __cil_tmp42) {
        goto err_unmap;
      } else {
      }
      }
      {
      __cil_tmp44 = (umode_t )384;
      fentry = debugfs_create_x32("notrigger", __cil_tmp44, einj_debug_dir, & notrigger);
      }
      {
      __cil_tmp45 = (struct dentry *)0;
      __cil_tmp46 = (unsigned long )__cil_tmp45;
      __cil_tmp47 = (unsigned long )fentry;
      if (__cil_tmp47 == __cil_tmp46) {
        goto err_unmap;
      } else {
      }
      }
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp48 = 0 * 1UL;
  __cil_tmp49 = (unsigned long )(vendor_dev) + __cil_tmp48;
  __cil_tmp50 = *((char *)__cil_tmp49);
  __cil_tmp51 = (signed char )__cil_tmp50;
  __cil_tmp52 = (int )__cil_tmp51;
  if (__cil_tmp52 != 0) {
    {
    __cil_tmp53 = & vendor_blob;
    *((void **)__cil_tmp53) = (void *)(& vendor_dev);
    __cil_tmp54 = (unsigned long )(& vendor_blob) + 8;
    __cil_tmp55 = (char const *)(& vendor_dev);
    *((unsigned long *)__cil_tmp54) = strlen(__cil_tmp55);
    __cil_tmp56 = (umode_t )256;
    fentry = debugfs_create_blob("vendor", __cil_tmp56, einj_debug_dir, & vendor_blob);
    }
    {
    __cil_tmp57 = (struct dentry *)0;
    __cil_tmp58 = (unsigned long )__cil_tmp57;
    __cil_tmp59 = (unsigned long )fentry;
    if (__cil_tmp59 == __cil_tmp58) {
      goto err_unmap;
    } else {
    }
    }
    {
    __cil_tmp60 = (umode_t )384;
    fentry = debugfs_create_x32("vendor_flags", __cil_tmp60, einj_debug_dir, & vendor_flags);
    }
    {
    __cil_tmp61 = (struct dentry *)0;
    __cil_tmp62 = (unsigned long )__cil_tmp61;
    __cil_tmp63 = (unsigned long )fentry;
    if (__cil_tmp63 == __cil_tmp62) {
      goto err_unmap;
    } else {
    }
    }
  } else {
  }
  }
  {
  printk("<6>EINJ: Error INJection is initialized.\n");
  }
  return (0);
  err_unmap: ;
  {
  __cil_tmp64 = (void *)0;
  __cil_tmp65 = (unsigned long )__cil_tmp64;
  __cil_tmp66 = (unsigned long )einj_param;
  if (__cil_tmp66 != __cil_tmp65) {
    {
    size = 40ULL;
    acpi_os_unmap_memory(einj_param, size);
    }
  } else {
  }
  }
  {
  apei_exec_post_unmap_gars(& ctx);
  }
  err_release:
  {
  apei_resources_release(& einj_resources);
  }
  err_fini:
  {
  apei_resources_fini(& einj_resources);
  }
  err_cleanup:
  {
  debugfs_remove_recursive(einj_debug_dir);
  }
  return (rc);
}
}
static void einj_exit(void)
{ struct apei_exec_context ctx ;
  acpi_size size ;
  void *__cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  {
  {
  __cil_tmp3 = (void *)0;
  __cil_tmp4 = (unsigned long )__cil_tmp3;
  __cil_tmp5 = (unsigned long )einj_param;
  if (__cil_tmp5 != __cil_tmp4) {
    {
    size = 40ULL;
    acpi_os_unmap_memory(einj_param, size);
    }
  } else {
  }
  }
  {
  einj_exec_ctx_init(& ctx);
  apei_exec_post_unmap_gars(& ctx);
  apei_resources_release(& einj_resources);
  apei_resources_fini(& einj_resources);
  debugfs_remove_recursive(einj_debug_dir);
  }
  return;
}
}
extern void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ struct inode *var_group1 ;
  struct file *var_group2 ;
  int res_available_error_type_open_12 ;
  int ldv_s_available_error_type_fops_file_operations ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  ldv_s_available_error_type_fops_file_operations = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = einj_init();
  }
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_23677;
  ldv_23676:
  {
  tmp___0 = __VERIFIER_nondet_int();
  }
  if (tmp___0 == 0) {
    goto case_0;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0: ;
      if (ldv_s_available_error_type_fops_file_operations == 0) {
        {
        res_available_error_type_open_12 = available_error_type_open(var_group1, var_group2);
        ldv_check_return_value(res_available_error_type_open_12);
        }
        if (res_available_error_type_open_12 != 0) {
          goto ldv_module_exit;
        } else {
        }
        ldv_s_available_error_type_fops_file_operations = 0;
      } else {
      }
      goto ldv_23674;
      switch_default: ;
      goto ldv_23674;
    } else {
      switch_break: ;
    }
    }
  }
  ldv_23674: ;
  ldv_23677:
  {
  tmp___1 = __VERIFIER_nondet_int();
  }
  if (tmp___1 != 0) {
    goto ldv_23676;
  } else
  if (ldv_s_available_error_type_fops_file_operations != 0) {
    goto ldv_23676;
  } else {
    goto ldv_23678;
  }
  ldv_23678: ;
  ldv_module_exit:
  {
  einj_exit();
  }
  ldv_final:
  {
  ldv_check_final_state();
  }
  return;
}
}
void ldv_blast_assert(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin != 0) {
    if (flags != 32U) {
      {
      ldv_blast_assert();
      }
    } else {
    }
  } else {
  }
  return;
}
}
extern struct page *ldv_some_page(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{ struct page *tmp ;
  {
  if (ldv_spin != 0) {
    if (flags != 32U) {
      {
      ldv_blast_assert();
      }
    } else {
    }
  } else {
  }
  {
  tmp = ldv_some_page();
  }
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin != 0) {
    {
    ldv_blast_assert();
    }
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
{ int is_lock ;
  {
  {
  is_lock = __VERIFIER_nondet_int();
  }
  if (is_lock != 0) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  {
  {
  ldv_check_alloc_flags(ldv_func_arg2);
  kmem_cache_alloc(ldv_func_arg1, ldv_func_arg2);
  }
  return ((void *)0);
}
}
int __VERIFIER_nondet_int(void);
int __apei_exec_run(struct apei_exec_context *arg0, u8 arg1, bool arg2) {
  return __VERIFIER_nondet_int();
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
struct resource *__request_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2, const char *arg3, int arg4) {
  return ldv_malloc(sizeof(struct resource));
}
const char *acpi_format_exception(acpi_status arg0) {
  return ldv_malloc(sizeof(char));
}
unsigned int __VERIFIER_nondet_uint(void);
acpi_status acpi_get_table(acpi_string arg0, u32 arg1, struct acpi_table_header **arg2) {
  return __VERIFIER_nondet_uint();
}
void *acpi_os_map_memory(acpi_physical_address arg0, acpi_size arg1) {
  return ldv_malloc(0UL);
}
void acpi_os_unmap_memory(void *arg0, acpi_size arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int apei_exec_collect_resources(struct apei_exec_context *arg0, struct apei_resources *arg1) {
  return __VERIFIER_nondet_int();
}
void apei_exec_ctx_init(struct apei_exec_context *arg0, struct apei_exec_ins_type *arg1, u32 arg2, struct acpi_whea_header *arg3, u32 arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int apei_exec_post_unmap_gars(struct apei_exec_context *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int apei_exec_pre_map_gars(struct apei_exec_context *arg0) {
  return __VERIFIER_nondet_int();
}
struct dentry *apei_get_debugfs_dir() {
  return ldv_malloc(sizeof(struct dentry));
}
int __VERIFIER_nondet_int(void);
int apei_resources_add(struct apei_resources *arg0, unsigned long arg1, unsigned long arg2, bool arg3) {
  return __VERIFIER_nondet_int();
}
void apei_resources_fini(struct apei_resources *arg0) {
  return;
}
void apei_resources_release(struct apei_resources *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int apei_resources_request(struct apei_resources *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int apei_resources_sub(struct apei_resources *arg0, struct apei_resources *arg1) {
  return __VERIFIER_nondet_int();
}
struct dentry *debugfs_create_blob(const char *arg0, umode_t arg1, struct dentry *arg2, struct debugfs_blob_wrapper *arg3) {
  return ldv_malloc(sizeof(struct dentry));
}
struct dentry *debugfs_create_dir(const char *arg0, struct dentry *arg1) {
  return ldv_malloc(sizeof(struct dentry));
}
struct dentry *debugfs_create_file(const char *arg0, umode_t arg1, struct dentry *arg2, void *arg3, const struct file_operations *arg4) {
  return ldv_malloc(sizeof(struct dentry));
}
struct dentry *debugfs_create_x32(const char *arg0, umode_t arg1, struct dentry *arg2, u32 *arg3) {
  return ldv_malloc(sizeof(struct dentry));
}
struct dentry *debugfs_create_x64(const char *arg0, umode_t arg1, struct dentry *arg2, u64 *arg3) {
  return ldv_malloc(sizeof(struct dentry));
}
void debugfs_remove_recursive(struct dentry *arg0) {
  return;
}
void *ioremap_cache(resource_size_t arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void iounmap(volatile void *arg0) {
  return;
}
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return ldv_malloc(0UL);
}
void ldv_check_final_state() {
  return;
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_initialize() {
  return;
}
struct page *ldv_some_page() {
  return ldv_malloc(sizeof(struct page));
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
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int simple_attr_open(struct inode *arg0, struct file *arg1, int (*arg2)(void *, u64 *), int (*arg3)(void *, u64 ), const char *arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int single_open(struct file *arg0, int (*arg1)(struct seq_file *, void *), void *arg2) {
  return __VERIFIER_nondet_int();
}
void touch_nmi_watchdog() {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
